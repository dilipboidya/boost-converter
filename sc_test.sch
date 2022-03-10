EESchema Schematic File Version 2
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
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
L adc_bridge_1 U3
U 1 1 6229C133
P 4150 2650
F 0 "U3" H 4150 2650 60  0000 C CNN
F 1 "adc_bridge_1" H 4150 2800 60  0000 C CNN
F 2 "" H 4150 2650 60  0000 C CNN
F 3 "" H 4150 2650 60  0000 C CNN
	1    4150 2650
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_1 U4
U 1 1 6229C162
P 6700 2650
F 0 "U4" H 6700 2650 60  0000 C CNN
F 1 "dac_bridge_1" H 6700 2800 60  0000 C CNN
F 2 "" H 6700 2650 60  0000 C CNN
F 3 "" H 6700 2650 60  0000 C CNN
	1    6700 2650
	1    0    0    -1  
$EndComp
$Comp
L pulse v1
U 1 1 6229C197
P 2750 3100
F 0 "v1" H 2550 3200 60  0000 C CNN
F 1 "pulse" H 2550 3050 60  0000 C CNN
F 2 "R1" H 2450 3100 60  0000 C CNN
F 3 "" H 2750 3100 60  0000 C CNN
	1    2750 3100
	1    0    0    -1  
$EndComp
$Comp
L DC v2
U 1 1 6229C1E8
P 7700 2850
F 0 "v2" H 7500 2950 60  0000 C CNN
F 1 "DC" H 7500 2800 60  0000 C CNN
F 2 "R1" H 7400 2850 60  0000 C CNN
F 3 "" H 7700 2850 60  0000 C CNN
	1    7700 2850
	1    0    0    -1  
$EndComp
$Comp
L inductor L1
U 1 1 6229C21B
P 6250 2850
F 0 "L1" H 8200 3350 50  0000 C CNN
F 1 "100u" H 8200 3500 50  0000 C CNN
F 2 "" V 8200 3400 60  0000 C CNN
F 3 "" V 8200 3400 60  0000 C CNN
	1    6250 2850
	1    0    0    -1  
$EndComp
$Comp
L eSim_NPN Q1
U 1 1 6229C28A
P 8600 2800
F 0 "Q1" H 8500 2850 50  0000 R CNN
F 1 "eSim_NPN" H 8550 2950 50  0000 R CNN
F 2 "" H 8800 2900 29  0000 C CNN
F 3 "" H 8600 2800 60  0000 C CNN
	1    8600 2800
	1    0    0    -1  
$EndComp
$Comp
L capacitor C1
U 1 1 6229C2B1
P 9100 2750
F 0 "C1" H 9125 2850 50  0000 L CNN
F 1 "100u" H 9125 2650 50  0000 L CNN
F 2 "" H 9138 2600 30  0000 C CNN
F 3 "" H 9100 2750 60  0000 C CNN
	1    9100 2750
	1    0    0    -1  
$EndComp
$Comp
L resistor R1
U 1 1 6229C2DA
P 9650 2700
F 0 "R1" H 9700 2830 50  0000 C CNN
F 1 "100" H 9700 2650 50  0000 C CNN
F 2 "" H 9700 2680 30  0000 C CNN
F 3 "" V 9700 2750 30  0000 C CNN
	1    9650 2700
	0    1    1    0   
$EndComp
$Comp
L plot_v1 U7
U 1 1 6229C307
P 9700 2300
F 0 "U7" H 9700 2800 60  0000 C CNN
F 1 "plot_v1" H 9900 2650 60  0000 C CNN
F 2 "" H 9700 2300 60  0000 C CNN
F 3 "" H 9700 2300 60  0000 C CNN
	1    9700 2300
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U5
U 1 1 6229C342
P 7450 2300
F 0 "U5" H 7450 2800 60  0000 C CNN
F 1 "plot_v1" H 7650 2650 60  0000 C CNN
F 2 "" H 7450 2300 60  0000 C CNN
F 3 "" H 7450 2300 60  0000 C CNN
	1    7450 2300
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U2
U 1 1 6229C379
P 2750 2300
F 0 "U2" H 2750 2800 60  0000 C CNN
F 1 "plot_v1" H 2950 2650 60  0000 C CNN
F 2 "" H 2750 2300 60  0000 C CNN
F 3 "" H 2750 2300 60  0000 C CNN
	1    2750 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 6229C3BC
P 2750 3600
F 0 "#PWR01" H 2750 3350 50  0001 C CNN
F 1 "GND" H 2750 3450 50  0000 C CNN
F 2 "" H 2750 3600 50  0001 C CNN
F 3 "" H 2750 3600 50  0001 C CNN
	1    2750 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 6229C3E8
P 7700 3400
F 0 "#PWR02" H 7700 3150 50  0001 C CNN
F 1 "GND" H 7700 3250 50  0000 C CNN
F 2 "" H 7700 3400 50  0001 C CNN
F 3 "" H 7700 3400 50  0001 C CNN
	1    7700 3400
	1    0    0    -1  
$EndComp
Text GLabel 9950 2300 2    60   Output ~ 0
Vout
Text GLabel 7300 2300 0    60   Input ~ 0
pwm
Text GLabel 2400 2600 0    60   Input ~ 0
clk
Text GLabel 7750 2200 0    60   Input ~ 0
Vin
$Comp
L plot_v1 U6
U 1 1 6229C491
P 7850 2300
F 0 "U6" H 7850 2800 60  0000 C CNN
F 1 "plot_v1" H 8050 2650 60  0000 C CNN
F 2 "" H 7850 2300 60  0000 C CNN
F 3 "" H 7850 2300 60  0000 C CNN
	1    7850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2100 2750 2650
Wire Wire Line
	2400 2600 3550 2600
Connection ~ 2750 2600
Wire Wire Line
	7700 2400 7700 2300
Wire Wire Line
	7700 2300 7900 2300
Wire Wire Line
	9700 2100 9700 2600
Wire Wire Line
	7700 3300 7700 3400
Wire Wire Line
	7700 3350 9700 3350
Wire Wire Line
	9700 3350 9700 2900
Connection ~ 7700 3350
Wire Wire Line
	9100 2600 9100 2300
Connection ~ 9100 2300
Wire Wire Line
	9100 2900 9100 3350
Connection ~ 9100 3350
Wire Wire Line
	8700 3000 8700 3350
Connection ~ 8700 3350
Wire Wire Line
	8700 2600 8700 2300
Connection ~ 8700 2300
Wire Wire Line
	7850 2100 7850 2300
Connection ~ 7850 2300
Wire Wire Line
	7750 2200 7850 2200
Connection ~ 7850 2200
Wire Wire Line
	7450 2100 7450 2600
Wire Wire Line
	7450 2300 7300 2300
Wire Wire Line
	7250 2600 8150 2600
Wire Wire Line
	8150 2600 8150 2800
Wire Wire Line
	8150 2800 8400 2800
Connection ~ 7450 2600
Connection ~ 7450 2300
Wire Wire Line
	2750 3550 2750 3600
$Comp
L eSim_Diode D1
U 1 1 6229C97C
P 8900 2300
F 0 "D1" H 8900 2400 50  0000 C CNN
F 1 "eSim_Diode" H 8900 2200 50  0000 C CNN
F 2 "" H 8900 2300 60  0000 C CNN
F 3 "" H 8900 2300 60  0000 C CNN
	1    8900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2300 8750 2300
Wire Wire Line
	9050 2300 9950 2300
Connection ~ 9700 2300
$Comp
L yt_pwm U1
U 1 1 6229CC42
P 2550 4500
F 0 "U1" H 5400 6300 60  0000 C CNN
F 1 "yt_pwm" H 5400 6500 60  0000 C CNN
F 2 "" H 5400 6450 60  0000 C CNN
F 3 "" H 5400 6450 60  0000 C CNN
	1    2550 4500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
