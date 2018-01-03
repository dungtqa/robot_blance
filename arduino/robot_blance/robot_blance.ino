
#include<Wire.h>
#include<PID_v1.h>

const int MPU_addr=0x68;

int16_t AcX,AcY,AcZ;

int minVal=265;
int maxVal=402;

double angle;

double Setpoint, Input, Output;

double Kp=2, Ki=5, Kd=1;

PID pid(&Input, &Output, &Setpoint, Kp, Ki, Kd, DIRECT);

void setup() {
  Wire.begin();
  Wire.beginTransmission(MPU_addr);
  Wire.write(0x6B);
  Wire.write(0);
  Wire.endTransmission(true);
  Serial.begin(9600);

  Setpoint = 0;

  pid.SetMode(AUTOMATIC);
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
      angle = -1*(360 - angle);
   }

   Serial.print("AngleY= ");
   Serial.println(angle);

   Serial.println("-----------------------------------------");

   Input = angle;
   pid.Compute();

   Serial.println(Output);

   Serial.println("-----------------------------------------");
   delay(400);
}
