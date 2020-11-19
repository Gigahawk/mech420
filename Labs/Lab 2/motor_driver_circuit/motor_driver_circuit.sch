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
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5FB5DDC6
P 5550 4750
F 0 "A1" H 6000 5650 50  0000 L CNN
F 1 "Arduino_UNO_R3" H 6000 5550 50  0000 L CNN
F 2 "Module:Arduino_UNO_R3" H 5550 4750 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5550 4750 50  0001 C CNN
	1    5550 4750
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:DRV8871DDA U1
U 1 1 5FB5F349
P 3500 4300
F 0 "U1" V 3050 4200 50  0000 R CNN
F 1 "DRV8871DDA" V 3150 4200 50  0000 R CNN
F 2 "Package_SO:Texas_HTSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.95x4.9mm_Mask2.4x3.1mm_ThermalVias" H 3750 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/drv8871.pdf" H 3750 4250 50  0001 C CNN
	1    3500 4300
	0    -1   1    0   
$EndComp
$Comp
L motor_driver_circuit:DG01D-E M1
U 1 1 5FB616E8
P 2850 4750
F 0 "M1" H 2908 4915 50  0000 C CNN
F 1 "DG01D-E" H 2908 4824 50  0000 C CNN
F 2 "" H 2900 4050 50  0001 C CNN
F 3 "" H 2900 4050 50  0001 C CNN
	1    2850 4750
	1    0    0    -1  
$EndComp
Text Notes 1600 5850 0    50   ~ 0
M- and M+ are connected to the motor.\nV and G are the hall sensor supply pins.\nH1 and H2 are the hall sensor outputs.\nOutput high is based on supply voltage V,\noutput low is based on supply ground G.\n
Wire Wire Line
	3250 4850 3400 4850
Wire Wire Line
	3400 4850 3400 4700
Wire Wire Line
	3250 4950 3500 4950
Wire Wire Line
	3500 4950 3500 4700
$Comp
L Device:R R1
U 1 1 5FB74764
P 3900 4550
F 0 "R1" H 3970 4596 50  0000 L CNN
F 1 "30k" H 3970 4505 50  0000 L CNN
F 2 "" V 3830 4550 50  0001 C CNN
F 3 "~" H 3900 4550 50  0001 C CNN
	1    3900 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4700 3900 4700
Wire Wire Line
	3900 4400 3900 4300
Text Notes 3750 4800 0    50   ~ 0
30K = 2A current limit
$Comp
L power:+9V #PWR05
U 1 1 5FB79CC9
P 5450 3600
F 0 "#PWR05" H 5450 3450 50  0001 C CNN
F 1 "+9V" H 5465 3773 50  0000 C CNN
F 2 "" H 5450 3600 50  0001 C CNN
F 3 "" H 5450 3600 50  0001 C CNN
	1    5450 3600
	1    0    0    -1  
$EndComp
Text Notes 4900 3450 0    50   ~ 0
DC Input 9V
$Comp
L power:+5V #PWR07
U 1 1 5FB81848
P 5750 3600
F 0 "#PWR07" H 5750 3450 50  0001 C CNN
F 1 "+5V" H 5765 3773 50  0000 C CNN
F 2 "" H 5750 3600 50  0001 C CNN
F 3 "" H 5750 3600 50  0001 C CNN
	1    5750 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3600 5450 3750
Wire Wire Line
	5750 3600 5750 3750
Text Notes 5850 3450 0    50   ~ 0
Arduino provides regulated 5V
$Comp
L power:+9V #PWR01
U 1 1 5FB85CBC
P 3100 4200
F 0 "#PWR01" H 3100 4050 50  0001 C CNN
F 1 "+9V" H 3115 4373 50  0000 C CNN
F 2 "" H 3100 4200 50  0001 C CNN
F 3 "" H 3100 4200 50  0001 C CNN
	1    3100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4300 3100 4300
Wire Wire Line
	3100 4300 3100 4200
$Comp
L power:GND #PWR04
U 1 1 5FB86E85
P 4000 4300
F 0 "#PWR04" H 4000 4050 50  0001 C CNN
F 1 "GND" V 4005 4172 50  0000 R CNN
F 2 "" H 4000 4300 50  0001 C CNN
F 3 "" H 4000 4300 50  0001 C CNN
	1    4000 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 4300 3900 4300
Connection ~ 3900 4300
$Comp
L power:GND #PWR06
U 1 1 5FB88D42
P 5450 5950
F 0 "#PWR06" H 5450 5700 50  0001 C CNN
F 1 "GND" H 5455 5777 50  0000 C CNN
F 2 "" H 5450 5950 50  0001 C CNN
F 3 "" H 5450 5950 50  0001 C CNN
	1    5450 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5850 5450 5950
Wire Wire Line
	5550 5850 5550 5950
Wire Wire Line
	5550 5950 5450 5950
Connection ~ 5450 5950
Wire Wire Line
	5650 5850 5650 5950
Wire Wire Line
	5650 5950 5550 5950
Connection ~ 5550 5950
$Comp
L power:+5V #PWR02
U 1 1 5FB8C018
P 3600 5000
F 0 "#PWR02" H 3600 4850 50  0001 C CNN
F 1 "+5V" H 3615 5173 50  0000 C CNN
F 2 "" H 3600 5000 50  0001 C CNN
F 3 "" H 3600 5000 50  0001 C CNN
	1    3600 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5050 3600 5050
Wire Wire Line
	3600 5050 3600 5000
$Comp
L power:GND #PWR03
U 1 1 5FB8CB57
P 3600 5400
F 0 "#PWR03" H 3600 5150 50  0001 C CNN
F 1 "GND" H 3605 5227 50  0000 C CNN
F 2 "" H 3600 5400 50  0001 C CNN
F 3 "" H 3600 5400 50  0001 C CNN
	1    3600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5350 3600 5350
Wire Wire Line
	3600 5350 3600 5400
Wire Wire Line
	3250 5150 4700 5150
Wire Wire Line
	4700 5150 4700 4350
Wire Wire Line
	4700 4350 5050 4350
Wire Wire Line
	3250 5250 4800 5250
Wire Wire Line
	4800 5250 4800 4450
Wire Wire Line
	4800 4450 5050 4450
Text Notes 3750 5500 0    50   ~ 0
D2 and D3 are the only \ninterrupt capable pins \non an UNO
Wire Wire Line
	3500 3900 3500 3800
Wire Wire Line
	3500 3800 4850 3800
Wire Wire Line
	4850 3800 4850 4750
Wire Wire Line
	4850 4750 5050 4750
Wire Wire Line
	3400 3900 3400 3700
Wire Wire Line
	3400 3700 4950 3700
Wire Wire Line
	4950 3700 4950 4650
Wire Wire Line
	4950 4650 5050 4650
Text Notes 3500 3650 0    50   ~ 0
Connect DRV8871 inputs to \nPWM capable pins on UNO
$EndSCHEMATC
