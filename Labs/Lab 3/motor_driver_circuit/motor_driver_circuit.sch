EESchema Schematic File Version 4
EELAYER 30 0
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
L Driver_Motor:DRV8871DDA U1
U 1 1 5FB5F349
P 3000 3650
F 0 "U1" H 3300 3900 50  0000 R CNN
F 1 "DRV8871DDA" H 2850 3300 50  0000 R CNN
F 2 "Package_SO:Texas_HTSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.95x4.9mm_Mask2.4x3.1mm_ThermalVias" H 3250 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/drv8871.pdf" H 3250 3600 50  0001 C CNN
	1    3000 3650
	-1   0    0    -1  
$EndComp
$Comp
L motor_driver_circuit:SDLM-051-095-01-01 M1
U 1 1 5FB616E8
P 1700 3450
F 0 "M1" H 1700 3600 50  0000 C CNN
F 1 "SDLM-051-095-01-01" H 1650 3500 50  0000 C CNN
F 2 "" H 1750 2750 50  0001 C CNN
F 3 "" H 1750 2750 50  0001 C CNN
	1    1700 3450
	1    0    0    -1  
$EndComp
Text Notes 800  5150 0    50   ~ 0
M- and M+ are connected to the motor.\nV is the optical encoder power pin.\nA+, A-, B+, B- are the optical encoder outputs.\nHOME is active high when piston is in home position.\nT is connected to a thermistor.\nG is ground for all sensors.\n\n
$Comp
L Device:R R1
U 1 1 5FB74764
P 2600 4100
F 0 "R1" H 2670 4146 50  0000 L CNN
F 1 "30k" H 2670 4055 50  0000 L CNN
F 2 "" V 2530 4100 50  0001 C CNN
F 3 "~" H 2600 4100 50  0001 C CNN
	1    2600 4100
	-1   0    0    1   
$EndComp
Text Notes 2400 4300 0    50   ~ 0
30K = 2A current limit
$Comp
L power:+9V #PWR07
U 1 1 5FB79CC9
P 5250 2850
F 0 "#PWR07" H 5250 2700 50  0001 C CNN
F 1 "+9V" H 5265 3023 50  0000 C CNN
F 2 "" H 5250 2850 50  0001 C CNN
F 3 "" H 5250 2850 50  0001 C CNN
	1    5250 2850
	1    0    0    -1  
$EndComp
Text Notes 4700 2700 0    50   ~ 0
DC Input 9V
$Comp
L power:+5V #PWR09
U 1 1 5FB81848
P 5550 2850
F 0 "#PWR09" H 5550 2700 50  0001 C CNN
F 1 "+5V" H 5565 3023 50  0000 C CNN
F 2 "" H 5550 2850 50  0001 C CNN
F 3 "" H 5550 2850 50  0001 C CNN
	1    5550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2850 5250 3000
Wire Wire Line
	5550 2850 5550 3000
$Comp
L power:+9V #PWR02
U 1 1 5FB85CBC
P 3000 3350
F 0 "#PWR02" H 3000 3200 50  0001 C CNN
F 1 "+9V" H 3015 3523 50  0000 C CNN
F 2 "" H 3000 3350 50  0001 C CNN
F 3 "" H 3000 3350 50  0001 C CNN
	1    3000 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FB86E85
P 3000 4300
F 0 "#PWR03" H 3000 4050 50  0001 C CNN
F 1 "GND" V 3005 4172 50  0000 R CNN
F 2 "" H 3000 4300 50  0001 C CNN
F 3 "" H 3000 4300 50  0001 C CNN
	1    3000 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5FB88D42
P 5250 5200
F 0 "#PWR08" H 5250 4950 50  0001 C CNN
F 1 "GND" H 5255 5027 50  0000 C CNN
F 2 "" H 5250 5200 50  0001 C CNN
F 3 "" H 5250 5200 50  0001 C CNN
	1    5250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5100 5250 5200
Wire Wire Line
	5350 5100 5350 5200
Wire Wire Line
	5350 5200 5250 5200
Connection ~ 5250 5200
Wire Wire Line
	5450 5100 5450 5200
Wire Wire Line
	5450 5200 5350 5200
Connection ~ 5350 5200
$Comp
L power:GND #PWR01
U 1 1 5FB8CB57
P 2450 4500
F 0 "#PWR01" H 2450 4250 50  0001 C CNN
F 1 "GND" H 2455 4327 50  0000 C CNN
F 2 "" H 2450 4500 50  0001 C CNN
F 3 "" H 2450 4500 50  0001 C CNN
	1    2450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4450 2450 4450
Wire Wire Line
	2450 4450 2450 4500
Text Notes 3800 3850 0    50   ~ 0
Connect DRV8871 inputs \nto PWM capable pins on \nUNO
$Comp
L motor_driver_circuit:LVDT L1
U 1 1 5FBF91E9
P 4550 5750
F 0 "L1" H 4550 6331 50  0000 C CNN
F 1 "HR 500" H 4550 6240 50  0000 C CNN
F 2 "" H 4550 5750 50  0001 C CNN
F 3 "" H 4550 5750 50  0001 C CNN
	1    4550 5750
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_UNO_R3 A2
U 1 1 5FB5DDC6
P 5350 4000
F 0 "A2" H 5800 4900 50  0000 L CNN
F 1 "Arduino_UNO_R3" H 5800 4800 50  0000 L CNN
F 2 "Module:Arduino_UNO_R3" H 5350 4000 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5350 4000 50  0001 C CNN
	1    5350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3850 2600 3950
Wire Wire Line
	2600 4250 2600 4300
Wire Wire Line
	2600 4300 3000 4300
Wire Wire Line
	3000 4050 3000 4300
Connection ~ 3000 4300
Wire Wire Line
	2100 3550 2600 3550
Wire Wire Line
	2600 3650 2100 3650
$Comp
L motor_driver_circuit:LVM-110 A1
U 1 1 5FC0CDEA
P 3050 5350
F 0 "A1" H 3108 5515 50  0000 C CNN
F 1 "LVM-110" H 3108 5424 50  0000 C CNN
F 2 "" H 3050 5350 50  0001 C CNN
F 3 "" H 3050 5350 50  0001 C CNN
	1    3050 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5550 4150 5550
Wire Wire Line
	3450 5650 4050 5650
Wire Wire Line
	4050 5650 4050 5950
Wire Wire Line
	4050 5950 4150 5950
Wire Wire Line
	3450 5950 3950 5950
Wire Wire Line
	3950 5950 3950 6200
Wire Wire Line
	3950 6200 4950 6200
Wire Wire Line
	4950 6200 4950 6150
Wire Wire Line
	4950 5650 5000 5650
Wire Wire Line
	5000 5650 5000 5850
Wire Wire Line
	5000 5850 4950 5850
Wire Wire Line
	5000 5850 5000 6250
Wire Wire Line
	5000 6250 3850 6250
Wire Wire Line
	3850 6250 3850 6050
Wire Wire Line
	3850 6050 3450 6050
Connection ~ 5000 5850
Wire Wire Line
	4950 5350 5050 5350
Wire Wire Line
	5050 5350 5050 6300
Wire Wire Line
	5050 6300 3800 6300
Wire Wire Line
	3800 6300 3800 6150
Wire Wire Line
	3800 6150 3450 6150
$Comp
L power:+15V #PWR06
U 1 1 5FC124F1
P 3800 5300
F 0 "#PWR06" H 3800 5150 50  0001 C CNN
F 1 "+15V" H 3815 5473 50  0000 C CNN
F 2 "" H 3800 5300 50  0001 C CNN
F 3 "" H 3800 5300 50  0001 C CNN
	1    3800 5300
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR04
U 1 1 5FC12DFE
P 3550 5300
F 0 "#PWR04" H 3550 5400 50  0001 C CNN
F 1 "-15V" H 3565 5473 50  0000 C CNN
F 2 "" H 3550 5300 50  0001 C CNN
F 3 "" H 3550 5300 50  0001 C CNN
	1    3550 5300
	1    0    0    -1  
$EndComp
Text Notes 3100 5050 0    50   ~ 0
External ±15V required for LVDT operation
Wire Wire Line
	3450 5750 3550 5750
Wire Wire Line
	3550 5750 3550 5300
Wire Wire Line
	3450 5850 3800 5850
Wire Wire Line
	3800 5850 3800 5300
$Comp
L power:GND #PWR05
U 1 1 5FC16C39
P 3550 6250
F 0 "#PWR05" H 3550 6000 50  0001 C CNN
F 1 "GND" H 3555 6077 50  0000 C CNN
F 2 "" H 3550 6250 50  0001 C CNN
F 3 "" H 3550 6250 50  0001 C CNN
	1    3550 6250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 6250 3550 6250
Text GLabel 3550 6400 2    50   Input ~ 0
LVDT_OUT
Wire Wire Line
	3450 6350 3450 6400
Wire Wire Line
	3450 6400 3550 6400
Text Notes 2600 6650 0    50   ~ 0
Configure for 0 to +5VDC output\nwith DIP switches\n
Wire Wire Line
	5850 4000 5950 4000
Text GLabel 5950 4000 2    50   Input ~ 0
LVDT_OUT
Wire Wire Line
	3750 3550 3750 3900
Wire Wire Line
	3750 3900 4850 3900
Wire Wire Line
	3400 3550 3750 3550
Wire Wire Line
	3700 3650 3700 4000
Wire Wire Line
	3700 4000 4850 4000
Wire Wire Line
	3400 3650 3700 3650
$EndSCHEMATC
