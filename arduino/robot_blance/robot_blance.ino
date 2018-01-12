
#include<Wire.h>
#include<PID_v1.h>
#include "BasicStepperDriver.h"

const int MPU_addr=0x68;

int16_t AcX,AcY,AcZ;

int minVal=265;
int maxVal=402;

int dir=1;

double angle;

double Setpoint, Input, Output;

double Kp=2, Ki=1, Kd=1;

byte start;

PID pid(&Input, &Output, &Setpoint, Kp, Ki, Kd, DIRECT);

#define MOTOR_STEPS 200
#define RPM 120

#define MICROSTEPS 1

#define DIR_X 17
#define STEP_X 16
#define DIR_Y 8
#define STEP_Y 9

#define MS1 10
#define MS2 11
#define MS3 12

BasicStepperDriver stepper_x(MOTOR_STEPS, DIR_X, STEP_X);
BasicStepperDriver stepper_y(MOTOR_STEPS, DIR_Y, STEP_Y);

void setup() {
  Wire.begin();
  Wire.beginTransmission(MPU_addr);
  Wire.write(0x6B);
  Wire.write(0);
  Wire.endTransmission(true);
  Serial.begin(9600);

  Setpoint = 0;

  pid.SetMode(AUTOMATIC);

  stepper_x.begin(RPM, MICROSTEPS);
  stepper_y.begin(RPM, MICROSTEPS);
}

void loop() {
   Wire.beginTransmission(MPU_addr);
   Wire.write(0x3B);
   Wire.endTransmission(false);
   Wire.requestFrom(MPU_addr,14,true);
   AcX=Wire.read()<<8|Wire.read();
   AcY=Wire.read()<<8|Wire.read();
   AcZ=Wire.read()<<8|Wire.read();
   int xAng = map(AcX,minVal,maxVal,-90,90);
   int zAng = map(AcZ,minVal,maxVal,-90,90);

   angle = RAD_TO_DEG * (atan2(-xAng, -zAng)+PI);

   if (angle > 90) {
      angle = 360 - angle;
      dir = -1;
   } else {
      dir = 1;
   }

   if (angle < 5) {
     start = 0;
   } else {
     start = 1;
   }

//   Serial.print("AngleY= ");
//   Serial.println(angle);
//
//   Serial.println("-----------------------------------------");
//    delay(400);
   Input = angle;
   pid.Compute();

//   Serial.println(Output);
//
//   Serial.println("-----------------------------------------");
//   delay(400);
  if (start) {
     stepper_x.rotate(dir*Output);
     stepper_y.rotate(dir*Output);
  }
}
