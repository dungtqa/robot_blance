EESchema Schematic File Version 2
LIBS:robot_blance-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:esp32dev
LIBS:pololu-drv8825
LIBS:mp1584
LIBS:mpu6050
LIBS:robot_blance-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Esp32Dev U1
U 1 1 5A58442C
P 5000 3700
F 0 "U1" H 5100 5600 60  0000 C CNN
F 1 "Esp32Dev" H 5100 5600 60  0000 C CNN
F 2 "footprint:Esp32Dev" H 5100 5600 60  0001 C CNN
F 3 "" H 5100 5600 60  0001 C CNN
	1    5000 3700
	1    0    0    -1  
$EndComp
$Comp
L POLOLU-DRV8825 DRV1
U 1 1 5A587D6B
P 4100 4450
F 0 "DRV1" H 4100 4900 60  0000 C CNN
F 1 "POLOLU-DRV8825" H 4100 4000 60  0000 C CNN
F 2 "footprint:POLOLU-DRV8825" H 4050 4050 60  0000 C CNN
F 3 "" H 4050 4050 60  0000 C CNN
	1    4100 4450
	1    0    0    -1  
$EndComp
$Comp
L POLOLU-DRV8825 DRV2
U 1 1 5A587DE2
P 6200 4450
F 0 "DRV2" H 6200 4900 60  0000 C CNN
F 1 "POLOLU-DRV8825" H 6200 4000 60  0000 C CNN
F 2 "footprint:POLOLU-DRV8825" H 6150 4050 60  0000 C CNN
F 3 "" H 6150 4050 60  0000 C CNN
	1    6200 4450
	1    0    0    -1  
$EndComp
$Comp
L MP1584 U2
U 1 1 5A588044
P 3300 2000
F 0 "U2" H 3300 2200 60  0000 C CNN
F 1 "MP1584" H 3300 2200 60  0000 C CNN
F 2 "footprint:MP1584_buck_module" H 3300 2200 60  0001 C CNN
F 3 "" H 3300 2200 60  0001 C CNN
	1    3300 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J1
U 1 1 5A58872D
P 2400 2000
F 0 "J1" H 2400 2150 50  0000 C CNN
F 1 "Bat" V 2500 2000 50  0000 C CNN
F 2 "Connectors:PINHEAD1-2" H 2400 2000 50  0001 C CNN
F 3 "" H 2400 2000 50  0001 C CNN
	1    2400 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 3050 4000 3050
Wire Wire Line
	4000 3050 4000 1750
Wire Wire Line
	4000 1750 3750 1750
Wire Wire Line
	4300 3550 3850 3550
$Comp
L MPU6050 U3
U 1 1 5A589877
P 6850 2600
F 0 "U3" H 7200 2650 60  0000 C CNN
F 1 "MPU6050" H 7200 2650 60  0000 C CNN
F 2 "footprint:MPU6050" H 7200 2650 60  0001 C CNN
F 3 "" H 7200 2650 60  0001 C CNN
	1    6850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2900 6350 2900
Wire Wire Line
	6350 2900 6350 3700
Wire Wire Line
	6600 2800 6300 2800
Wire Wire Line
	6300 2800 6300 1550
Wire Wire Line
	6300 1550 3750 1550
Wire Wire Line
	3750 1550 3750 1750
Wire Wire Line
	6350 3700 3750 3700
Wire Wire Line
	3750 3700 3750 2250
Wire Wire Line
	3850 3550 3850 2250
Wire Wire Line
	3850 2250 3750 2250
Wire Wire Line
	2800 2050 2800 2250
Wire Wire Line
	2800 2250 2900 2250
Wire Wire Line
	2600 1950 2800 1950
Wire Wire Line
	2800 1950 2800 1850
Wire Wire Line
	2800 1850 2900 1850
$Comp
L +12V #PWR?
U 1 1 5A58AA9D
P 2600 2250
F 0 "#PWR?" H 2600 2100 50  0001 C CNN
F 1 "+12V" H 2600 2390 50  0000 C CNN
F 2 "" H 2600 2250 50  0001 C CNN
F 3 "" H 2600 2250 50  0001 C CNN
	1    2600 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 2250 2600 2050
Wire Wire Line
	2600 2050 2800 2050
$Comp
L GND #PWR?
U 1 1 5A58AB89
P 2600 1700
F 0 "#PWR?" H 2600 1450 50  0001 C CNN
F 1 "GND" H 2600 1550 50  0000 C CNN
F 2 "" H 2600 1700 50  0001 C CNN
F 3 "" H 2600 1700 50  0001 C CNN
	1    2600 1700
	1    0    0    1   
$EndComp
Wire Wire Line
	2600 1950 2600 1700
$EndSCHEMATC
