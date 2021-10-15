EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1250 1400 0    50   ~ 0
REF
Text Notes 1250 1500 0    50   ~ 0
VCC
Text Notes 1250 1600 0    50   ~ 0
GND
Text Notes 1250 1700 0    50   ~ 0
DAT
Text Notes 1250 1800 0    50   ~ 0
CLK
Text Notes 1250 1900 0    50   ~ 0
FNC
Text Notes 1250 2000 0    50   ~ 0
OUT
$Comp
L Connector:Conn_01x07_Female J2
U 1 1 6147A184
P 1450 1650
F 0 "J2" H 1342 1125 50  0000 C CNN
F 1 "AD9833" H 1342 1216 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 1450 1650 50  0001 C CNN
F 3 "~" H 1450 1650 50  0001 C CNN
	1    1450 1650
	-1   0    0    1   
$EndComp
Text GLabel 1650 1950 2    50   Input ~ 0
sigout
Text GLabel 1650 1850 2    50   Input ~ 0
CS1
Text GLabel 1650 1650 2    50   Input ~ 0
MOSI1
$Comp
L power:GND #PWR08
U 1 1 6147B5CE
P 1650 1550
F 0 "#PWR08" H 1650 1300 50  0001 C CNN
F 1 "GND" V 1655 1422 50  0000 R CNN
F 2 "" H 1650 1550 50  0001 C CNN
F 3 "" H 1650 1550 50  0001 C CNN
	1    1650 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VD #PWR07
U 1 1 6147C11D
P 1650 1450
F 0 "#PWR07" H 1650 1300 50  0001 C CNN
F 1 "+5VD" V 1665 1578 50  0000 L CNN
F 2 "" H 1650 1450 50  0001 C CNN
F 3 "" H 1650 1450 50  0001 C CNN
	1    1650 1450
	0    1    1    0   
$EndComp
NoConn ~ 1650 1350
Wire Notes Line
	800  950  800  2250
Wire Notes Line
	800  2250 2300 2250
Wire Notes Line
	2300 2250 2300 950 
Wire Notes Line
	2300 950  800  950 
$Comp
L Amplifier_Operational:LM358 U3
U 1 1 6148BB40
P 2600 3900
F 0 "U3" H 2600 3533 50  0000 C CNN
F 1 "LM358" H 2600 3624 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2600 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 2600 3900 50  0001 C CNN
	1    2600 3900
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM358 U3
U 2 1 6148CCF1
P 4300 3850
F 0 "U3" H 4300 4217 50  0000 C CNN
F 1 "LM358" H 4300 4126 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4300 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 4300 3850 50  0001 C CNN
	2    4300 3850
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U2
U 3 1 6148ECD8
P 2650 1700
F 0 "U2" H 2608 1746 50  0000 L CNN
F 1 "LM358" H 2608 1655 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2650 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 2650 1700 50  0001 C CNN
	3    2650 1700
	1    0    0    -1  
$EndComp
Text GLabel 1250 4450 0    50   Input ~ 0
sigout
$Comp
L Diode:1N4148 D4
U 1 1 614A0A90
P 3250 3900
F 0 "D4" H 3250 3683 50  0000 C CNN
F 1 "1N4148" H 3250 3774 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3250 3725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3250 3900 50  0001 C CNN
	1    3250 3900
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 614A5423
P 2550 3350
F 0 "D2" H 2550 3133 50  0000 C CNN
F 1 "1N4148" H 2550 3224 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2550 3175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2550 3350 50  0001 C CNN
	1    2550 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 3900 3000 3900
Wire Wire Line
	2700 3350 3000 3350
Wire Wire Line
	3000 3350 3000 3900
Connection ~ 3000 3900
Wire Wire Line
	3000 3900 3100 3900
Wire Wire Line
	2400 3350 2100 3350
Wire Wire Line
	2100 3350 2100 3800
Wire Wire Line
	2100 3800 2300 3800
$Comp
L Device:R_Small R4
U 1 1 614A72B0
P 2550 3000
F 0 "R4" V 2354 3000 50  0000 C CNN
F 1 "10k" V 2445 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2550 3000 50  0001 C CNN
F 3 "~" H 2550 3000 50  0001 C CNN
	1    2550 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 614A7E40
P 1900 3800
F 0 "R2" V 2096 3800 50  0000 C CNN
F 1 "10k" V 2005 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1900 3800 50  0001 C CNN
F 3 "~" H 1900 3800 50  0001 C CNN
	1    1900 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 3800 2100 3800
Connection ~ 2100 3800
$Comp
L Device:C_Small Cs1
U 1 1 614B0386
P 1500 4450
F 0 "Cs1" V 1271 4450 50  0000 C CNN
F 1 "100n" V 1362 4450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1500 4450 50  0001 C CNN
F 3 "~" H 1500 4450 50  0001 C CNN
	1    1500 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 4450 1400 4450
Wire Wire Line
	1600 4450 1700 4450
Wire Wire Line
	1700 3800 1800 3800
Wire Wire Line
	2450 3000 2100 3000
Wire Wire Line
	2100 3000 2100 3350
Connection ~ 2100 3350
Wire Wire Line
	2650 3000 3500 3000
Wire Wire Line
	3500 3000 3500 3750
Wire Wire Line
	3500 3900 3400 3900
$Comp
L power:GND #PWR09
U 1 1 614B4298
P 2300 4450
F 0 "#PWR09" H 2300 4200 50  0001 C CNN
F 1 "GND" H 2305 4277 50  0000 C CNN
F 2 "" H 2300 4450 50  0001 C CNN
F 3 "" H 2300 4450 50  0001 C CNN
	1    2300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4000 2300 4450
Wire Wire Line
	3500 3750 4000 3750
$Comp
L power:GND #PWR015
U 1 1 614B674F
P 3850 4450
F 0 "#PWR015" H 3850 4200 50  0001 C CNN
F 1 "GND" H 3855 4277 50  0000 C CNN
F 2 "" H 3850 4450 50  0001 C CNN
F 3 "" H 3850 4450 50  0001 C CNN
	1    3850 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 614B6E1C
P 3850 4300
F 0 "R8" H 3909 4346 50  0000 L CNN
F 1 "10k" H 3909 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3850 4300 50  0001 C CNN
F 3 "~" H 3850 4300 50  0001 C CNN
	1    3850 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3950 3850 3950
$Comp
L Device:R_POT_Small RV2
U 1 1 614B8E5D
P 4350 4150
F 0 "RV2" V 4700 4150 50  0000 C CNN
F 1 "10k" V 4600 4150 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 4350 4150 50  0001 C CNN
F 3 "~" H 4350 4150 50  0001 C CNN
	1    4350 4150
	0    1    1    0   
$EndComp
Connection ~ 3500 3750
Wire Wire Line
	3500 3750 3500 3900
Wire Wire Line
	3850 3950 3850 4150
Wire Wire Line
	3850 4400 3850 4450
Wire Wire Line
	3850 4150 4250 4150
Connection ~ 3850 4150
Wire Wire Line
	3850 4150 3850 4200
Wire Wire Line
	4350 4250 4650 4250
Wire Wire Line
	4650 4250 4650 4150
$Comp
L power:+5VA #PWR010
U 1 1 614C5D27
P 2550 1400
F 0 "#PWR010" H 2550 1250 50  0001 C CNN
F 1 "+5VA" H 2565 1573 50  0000 C CNN
F 2 "" H 2550 1400 50  0001 C CNN
F 3 "" H 2550 1400 50  0001 C CNN
	1    2550 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 614C67A5
P 2550 2000
F 0 "#PWR011" H 2550 1750 50  0001 C CNN
F 1 "GND" H 2555 1827 50  0000 C CNN
F 2 "" H 2550 2000 50  0001 C CNN
F 3 "" H 2550 2000 50  0001 C CNN
	1    2550 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 614C9CAA
P 4800 4100
F 0 "R9" H 4859 4146 50  0000 L CNN
F 1 "100" H 4859 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4800 4100 50  0001 C CNN
F 3 "~" H 4800 4100 50  0001 C CNN
	1    4800 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 614C9CB0
P 4800 4400
F 0 "#PWR016" H 4800 4150 50  0001 C CNN
F 1 "GND" H 4805 4227 50  0000 C CNN
F 2 "" H 4800 4400 50  0001 C CNN
F 3 "" H 4800 4400 50  0001 C CNN
	1    4800 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4200 4800 4400
Wire Wire Line
	4800 4000 4800 3850
Wire Wire Line
	4650 3850 4600 3850
$Comp
L Amplifier_Operational:LM358 U2
U 1 1 614CB372
P 2550 5200
F 0 "U2" H 2550 5567 50  0000 C CNN
F 1 "LM358" H 2550 5476 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2550 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 2550 5200 50  0001 C CNN
	1    2550 5200
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 614D315E
P 3000 5200
F 0 "D3" H 3000 4983 50  0000 C CNN
F 1 "1N4148" H 3000 5074 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3000 5025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3000 5200 50  0001 C CNN
	1    3000 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 5300 2050 5300
Wire Wire Line
	2050 5300 2050 5500
Wire Wire Line
	2050 5500 3200 5500
Wire Wire Line
	3200 5500 3200 5200
Wire Wire Line
	3200 5200 3150 5200
$Comp
L Device:R_Small R3
U 1 1 614D4D50
P 1950 5100
F 0 "R3" V 2146 5100 50  0000 C CNN
F 1 "10k" V 2055 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1950 5100 50  0001 C CNN
F 3 "~" H 1950 5100 50  0001 C CNN
	1    1950 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 5100 2050 5100
Wire Wire Line
	1850 5100 1700 5100
Wire Wire Line
	1700 5100 1700 4450
Connection ~ 1700 4450
Connection ~ 3500 3900
Wire Wire Line
	3500 4050 3500 3900
Wire Wire Line
	3500 4250 3500 4450
$Comp
L power:GND #PWR013
U 1 1 614B268B
P 3500 4450
F 0 "#PWR013" H 3500 4200 50  0001 C CNN
F 1 "GND" H 3505 4277 50  0000 C CNN
F 2 "" H 3500 4450 50  0001 C CNN
F 3 "" H 3500 4450 50  0001 C CNN
	1    3500 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 614A8D3A
P 3500 4150
F 0 "R6" H 3559 4196 50  0000 L CNN
F 1 "100" H 3559 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3500 4150 50  0001 C CNN
F 3 "~" H 3500 4150 50  0001 C CNN
	1    3500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5350 3400 5200
Wire Wire Line
	3400 5550 3400 5750
$Comp
L power:GND #PWR012
U 1 1 614D8CFC
P 3400 5750
F 0 "#PWR012" H 3400 5500 50  0001 C CNN
F 1 "GND" H 3405 5577 50  0000 C CNN
F 2 "" H 3400 5750 50  0001 C CNN
F 3 "" H 3400 5750 50  0001 C CNN
	1    3400 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 614D8D02
P 3400 5450
F 0 "R5" H 3459 5496 50  0000 L CNN
F 1 "100" H 3459 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3400 5450 50  0001 C CNN
F 3 "~" H 3400 5450 50  0001 C CNN
	1    3400 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5200 3400 5200
Connection ~ 3200 5200
$Comp
L Amplifier_Operational:LM358 U2
U 2 1 614CD5EF
P 4100 5150
F 0 "U2" H 4100 5517 50  0000 C CNN
F 1 "LM358" H 4100 5426 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4100 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 4100 5150 50  0001 C CNN
	2    4100 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 614DCC68
P 3800 5750
F 0 "#PWR014" H 3800 5500 50  0001 C CNN
F 1 "GND" H 3805 5577 50  0000 C CNN
F 2 "" H 3800 5750 50  0001 C CNN
F 3 "" H 3800 5750 50  0001 C CNN
	1    3800 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 614DCC6E
P 3800 5600
F 0 "R7" H 3859 5646 50  0000 L CNN
F 1 "10k" H 3859 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3800 5600 50  0001 C CNN
F 3 "~" H 3800 5600 50  0001 C CNN
	1    3800 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_Small RV1
U 1 1 614DCC74
P 4300 5450
F 0 "RV1" V 4650 5450 50  0000 C CNN
F 1 "20k" V 4550 5450 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 4300 5450 50  0001 C CNN
F 3 "~" H 4300 5450 50  0001 C CNN
	1    4300 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 5250 3800 5450
Wire Wire Line
	3800 5700 3800 5750
Wire Wire Line
	3800 5450 4200 5450
Connection ~ 3800 5450
Wire Wire Line
	3800 5450 3800 5500
Wire Wire Line
	4300 5550 4600 5550
Wire Wire Line
	4600 5550 4600 5450
Wire Wire Line
	4400 5150 4600 5150
Wire Wire Line
	3400 5200 3400 5050
Wire Wire Line
	3400 5050 3800 5050
Connection ~ 3400 5200
$Comp
L Device:R_Small R10
U 1 1 614EC9E8
P 4850 5400
F 0 "R10" H 4909 5446 50  0000 L CNN
F 1 "100" H 4909 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4850 5400 50  0001 C CNN
F 3 "~" H 4850 5400 50  0001 C CNN
	1    4850 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 614EC9EE
P 4850 5700
F 0 "#PWR017" H 4850 5450 50  0001 C CNN
F 1 "GND" H 4855 5527 50  0000 C CNN
F 2 "" H 4850 5700 50  0001 C CNN
F 3 "" H 4850 5700 50  0001 C CNN
	1    4850 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5500 4850 5700
Wire Wire Line
	4850 5300 4850 5150
Wire Wire Line
	4600 5150 4850 5150
Connection ~ 4600 5150
$Comp
L Amplifier_Operational:LM358 U4
U 2 1 614F0D30
P 5800 3750
F 0 "U4" H 5800 4117 50  0000 C CNN
F 1 "LM358" H 5800 4026 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5800 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 5800 3750 50  0001 C CNN
	2    5800 3750
	1    0    0    -1  
$EndComp
Text GLabel 5500 3650 0    50   Input ~ 0
340mV
$Comp
L Device:R_Small R11
U 1 1 61531657
P 5050 3850
F 0 "R11" V 4854 3850 50  0000 C CNN
F 1 "1k" V 4945 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5050 3850 50  0001 C CNN
F 3 "~" H 5050 3850 50  0001 C CNN
	1    5050 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 3850 4950 3850
Wire Wire Line
	5150 3850 5250 3850
$Comp
L Device:R_Small R13
U 1 1 61536C5F
P 5700 4200
F 0 "R13" V 5504 4200 50  0000 C CNN
F 1 "1k" V 5595 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5700 4200 50  0001 C CNN
F 3 "~" H 5700 4200 50  0001 C CNN
	1    5700 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3850 5250 4200
Wire Wire Line
	5250 4200 5600 4200
Connection ~ 5250 3850
Wire Wire Line
	5250 3850 5500 3850
Wire Wire Line
	5800 4200 6200 4200
Wire Wire Line
	6200 4200 6200 3750
Wire Wire Line
	6200 3750 6100 3750
$Comp
L Device:R_Small R16
U 1 1 6153BD9A
P 6400 3750
F 0 "R16" V 6204 3750 50  0000 C CNN
F 1 "10k" V 6295 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6400 3750 50  0001 C CNN
F 3 "~" H 6400 3750 50  0001 C CNN
	1    6400 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R12
U 1 1 6153C7F5
P 5050 5150
F 0 "R12" V 4854 5150 50  0000 C CNN
F 1 "10k" V 4945 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5050 5150 50  0001 C CNN
F 3 "~" H 5050 5150 50  0001 C CNN
	1    5050 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 5150 4950 5150
Connection ~ 4850 5150
Connection ~ 6200 3750
Wire Wire Line
	6200 3750 6300 3750
Wire Wire Line
	4650 3850 4800 3850
Connection ~ 4650 3850
Connection ~ 4800 3850
$Comp
L Amplifier_Operational:LM358 U4
U 1 1 6154CC50
P 6050 4950
F 0 "U4" H 6050 5317 50  0000 C CNN
F 1 "LM358" H 6050 5226 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6050 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 6050 4950 50  0001 C CNN
	1    6050 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R15
U 1 1 6156E4AF
P 6100 5300
F 0 "R15" V 5904 5300 50  0000 C CNN
F 1 "10k" V 5995 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6100 5300 50  0001 C CNN
F 3 "~" H 6100 5300 50  0001 C CNN
	1    6100 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R14
U 1 1 6156E82E
P 5750 5450
F 0 "R14" H 5691 5404 50  0000 R CNN
F 1 "10k" H 5691 5495 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5750 5450 50  0001 C CNN
F 3 "~" H 5750 5450 50  0001 C CNN
	1    5750 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 5050 5750 5300
Wire Wire Line
	5750 5300 6000 5300
Connection ~ 5750 5300
Wire Wire Line
	5750 5300 5750 5350
$Comp
L power:GND #PWR018
U 1 1 61574B4C
P 5750 5700
F 0 "#PWR018" H 5750 5450 50  0001 C CNN
F 1 "GND" H 5755 5527 50  0000 C CNN
F 2 "" H 5750 5700 50  0001 C CNN
F 3 "" H 5750 5700 50  0001 C CNN
	1    5750 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5550 5750 5700
Text GLabel 5150 5150 2    50   Input ~ 0
com_1
Text GLabel 6500 3750 2    50   Input ~ 0
com_1
Text GLabel 5750 4850 0    50   Input ~ 0
com_1
Wire Wire Line
	6350 4950 6500 4950
Wire Wire Line
	6500 4950 6500 5300
Wire Wire Line
	6500 5300 6200 5300
Wire Wire Line
	1700 3800 1700 4450
$Comp
L Device:R_Small R18
U 1 1 615BF287
P 6650 4950
F 0 "R18" V 6454 4950 50  0000 C CNN
F 1 "10k" V 6545 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6650 4950 50  0001 C CNN
F 3 "~" H 6650 4950 50  0001 C CNN
	1    6650 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 4950 6550 4950
Connection ~ 6500 4950
$Comp
L Device:R_Small R24
U 1 1 616036B4
P 8500 3200
F 0 "R24" H 8441 3154 50  0000 R CNN
F 1 "10k" H 8441 3245 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8500 3200 50  0001 C CNN
F 3 "~" H 8500 3200 50  0001 C CNN
	1    8500 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 2850 8500 3050
Wire Wire Line
	8900 3050 8500 3050
Connection ~ 8500 3050
Wire Wire Line
	8500 3050 8500 3100
$Comp
L power:GND #PWR023
U 1 1 616148CA
P 8500 3400
F 0 "#PWR023" H 8500 3150 50  0001 C CNN
F 1 "GND" H 8505 3227 50  0000 C CNN
F 2 "" H 8500 3400 50  0001 C CNN
F 3 "" H 8500 3400 50  0001 C CNN
	1    8500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3300 8500 3400
Connection ~ 2550 2000
Wire Wire Line
	5450 2000 5800 2000
Connection ~ 5450 2000
Wire Wire Line
	5450 1800 5450 2000
Connection ~ 5100 2000
Wire Wire Line
	5800 2000 5800 1800
Wire Wire Line
	5100 2000 5450 2000
Wire Wire Line
	5450 1400 5800 1400
Connection ~ 5450 1400
Wire Wire Line
	5450 1400 5450 1600
Connection ~ 5100 1400
Wire Wire Line
	5800 1400 5800 1600
Wire Wire Line
	5100 1400 5450 1400
$Comp
L Device:C_Small C8
U 1 1 615E9BDE
P 5800 1700
F 0 "C8" H 5708 1654 50  0000 R CNN
F 1 "100n" H 5708 1745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5800 1700 50  0001 C CNN
F 3 "~" H 5800 1700 50  0001 C CNN
	1    5800 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 615E97AF
P 5450 1700
F 0 "C7" H 5358 1654 50  0000 R CNN
F 1 "100n" H 5358 1745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5450 1700 50  0001 C CNN
F 3 "~" H 5450 1700 50  0001 C CNN
	1    5450 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 2000 4500 2000
Connection ~ 4050 2000
Connection ~ 3700 2000
Wire Wire Line
	3700 2000 4050 2000
Wire Wire Line
	4050 1400 4500 1400
Connection ~ 4050 1400
Connection ~ 3700 1400
Wire Wire Line
	3700 1400 4050 1400
$Comp
L Amplifier_Operational:LM358 U6
U 3 1 615DF32F
P 4150 1700
F 0 "U6" H 4108 1746 50  0000 L CNN
F 1 "LM358" H 4108 1655 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4150 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 4150 1700 50  0001 C CNN
	3    4150 1700
	1    0    0    -1  
$EndComp
Connection ~ 10350 1700
Wire Wire Line
	10350 2000 10350 1700
Wire Wire Line
	9650 2000 10350 2000
$Comp
L Device:R_Small R21
U 1 1 615CB636
P 8150 2550
F 0 "R21" V 7954 2550 50  0000 C CNN
F 1 "10k" V 8045 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8150 2550 50  0001 C CNN
F 3 "~" H 8150 2550 50  0001 C CNN
	1    8150 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 1800 9650 2000
Wire Wire Line
	9750 1800 9650 1800
Wire Wire Line
	9250 1600 9750 1600
Wire Wire Line
	9150 1500 9150 1400
Wire Wire Line
	9150 1750 9150 1700
Wire Wire Line
	9150 2000 9150 1950
$Comp
L Device:R_Small R27
U 1 1 6158CDDE
P 9150 1850
F 0 "R27" H 9209 1896 50  0000 L CNN
F 1 "1k" H 9209 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9150 1850 50  0001 C CNN
F 3 "~" H 9150 1850 50  0001 C CNN
	1    9150 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_Small RV4
U 1 1 6158CDD8
P 9150 1600
F 0 "RV4" H 9090 1646 50  0000 R CNN
F 1 "10k" H 9090 1555 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 9150 1600 50  0001 C CNN
F 3 "~" H 9150 1600 50  0001 C CNN
	1    9150 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 6158CDD2
P 9150 2000
F 0 "#PWR025" H 9150 1750 50  0001 C CNN
F 1 "GND" H 9155 1827 50  0000 C CNN
F 2 "" H 9150 2000 50  0001 C CNN
F 3 "" H 9150 2000 50  0001 C CNN
	1    9150 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR024
U 1 1 6158CDCC
P 9150 1400
F 0 "#PWR024" H 9150 1250 50  0001 C CNN
F 1 "+5VA" H 9165 1573 50  0000 C CNN
F 2 "" H 9150 1400 50  0001 C CNN
F 3 "" H 9150 1400 50  0001 C CNN
	1    9150 1400
	1    0    0    -1  
$EndComp
Connection ~ 3350 2000
Wire Wire Line
	3350 2000 3700 2000
Connection ~ 3350 1400
Wire Wire Line
	3350 1400 3700 1400
$Comp
L Amplifier_Operational:LM358 U5
U 3 1 61552141
P 3800 1700
F 0 "U5" H 3758 1746 50  0000 L CNN
F 1 "LM358" H 3758 1655 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3800 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 3800 1700 50  0001 C CNN
	3    3800 1700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U5
U 2 1 6154EFC4
P 10050 1700
F 0 "U5" H 10050 2067 50  0000 C CNN
F 1 "LM358" H 10050 1976 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 10050 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 10050 1700 50  0001 C CNN
	2    10050 1700
	1    0    0    -1  
$EndComp
Connection ~ 8050 1600
Wire Wire Line
	8050 1600 8250 1600
Wire Wire Line
	8050 1600 8050 1700
Wire Wire Line
	7950 1600 8050 1600
$Comp
L power:GND #PWR022
U 1 1 61529D3B
P 8050 1900
F 0 "#PWR022" H 8050 1650 50  0001 C CNN
F 1 "GND" H 8055 1727 50  0000 C CNN
F 2 "" H 8050 1900 50  0001 C CNN
F 3 "" H 8050 1900 50  0001 C CNN
	1    8050 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R20
U 1 1 61529925
P 8050 1800
F 0 "R20" H 7991 1754 50  0000 R CNN
F 1 "1k" H 7991 1845 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8050 1800 50  0001 C CNN
F 3 "~" H 8050 1800 50  0001 C CNN
	1    8050 1800
	-1   0    0    1   
$EndComp
Connection ~ 7750 1600
$Comp
L Device:R_Small R19
U 1 1 615292B2
P 7850 1600
F 0 "R19" V 7654 1600 50  0000 C CNN
F 1 "1k" V 7745 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7850 1600 50  0001 C CNN
F 3 "~" H 7850 1600 50  0001 C CNN
	1    7850 1600
	0    1    1    0   
$EndComp
Text GLabel 8250 1600 2    50   Input ~ 0
340mV
Wire Wire Line
	7750 1600 7700 1600
Wire Wire Line
	7750 1900 7750 1600
Wire Wire Line
	7000 1900 7750 1900
Wire Wire Line
	7000 1700 7000 1900
Wire Wire Line
	7100 1700 7000 1700
Wire Wire Line
	6600 1500 7100 1500
Wire Wire Line
	6500 1400 6500 1300
Wire Wire Line
	6500 1650 6500 1600
Wire Wire Line
	6500 1900 6500 1850
$Comp
L Device:R_Small R17
U 1 1 6151AE3D
P 6500 1750
F 0 "R17" H 6559 1796 50  0000 L CNN
F 1 "1k" H 6559 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6500 1750 50  0001 C CNN
F 3 "~" H 6500 1750 50  0001 C CNN
	1    6500 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_Small RV3
U 1 1 615197A2
P 6500 1500
F 0 "RV3" H 6440 1546 50  0000 R CNN
F 1 "20k" H 6440 1455 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 6500 1500 50  0001 C CNN
F 3 "~" H 6500 1500 50  0001 C CNN
	1    6500 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 61514B10
P 6500 1900
F 0 "#PWR020" H 6500 1650 50  0001 C CNN
F 1 "GND" H 6505 1727 50  0000 C CNN
F 2 "" H 6500 1900 50  0001 C CNN
F 3 "" H 6500 1900 50  0001 C CNN
	1    6500 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR019
U 1 1 615135E6
P 6500 1300
F 0 "#PWR019" H 6500 1150 50  0001 C CNN
F 1 "+5VA" H 6515 1473 50  0000 C CNN
F 2 "" H 6500 1300 50  0001 C CNN
F 3 "" H 6500 1300 50  0001 C CNN
	1    6500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2000 4800 2000
Connection ~ 4500 2000
Wire Wire Line
	4500 1800 4500 2000
Wire Wire Line
	4800 2000 5100 2000
Connection ~ 4800 2000
Wire Wire Line
	4800 1800 4800 2000
Wire Wire Line
	5100 2000 5100 1800
Wire Wire Line
	4500 1400 4800 1400
Connection ~ 4500 1400
Wire Wire Line
	4500 1600 4500 1400
Wire Wire Line
	4800 1400 5100 1400
Connection ~ 4800 1400
Wire Wire Line
	4800 1600 4800 1400
Wire Wire Line
	5100 1400 5100 1600
$Comp
L Device:C_Small C6
U 1 1 614FDE75
P 5100 1700
F 0 "C6" H 5008 1654 50  0000 R CNN
F 1 "100n" H 5008 1745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5100 1700 50  0001 C CNN
F 3 "~" H 5100 1700 50  0001 C CNN
	1    5100 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 614FDC1C
P 4800 1700
F 0 "C5" H 4708 1654 50  0000 R CNN
F 1 "100n" H 4708 1745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4800 1700 50  0001 C CNN
F 3 "~" H 4800 1700 50  0001 C CNN
	1    4800 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 2000 2550 2000
Connection ~ 2950 2000
Wire Wire Line
	3350 2000 2950 2000
Wire Wire Line
	2950 1400 2550 1400
Connection ~ 2950 1400
Wire Wire Line
	3350 1400 2950 1400
$Comp
L Amplifier_Operational:LM358 U4
U 3 1 614F1CE5
P 3450 1700
F 0 "U4" H 3408 1746 50  0000 L CNN
F 1 "LM358" H 3408 1655 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3450 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 3450 1700 50  0001 C CNN
	3    3450 1700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U5
U 1 1 614EF7F2
P 7400 1600
F 0 "U5" H 7400 1967 50  0000 C CNN
F 1 "LM358" H 7400 1876 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7400 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 7400 1600 50  0001 C CNN
	1    7400 1600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U3
U 3 1 614CEBDE
P 3050 1700
F 0 "U3" H 3008 1746 50  0000 L CNN
F 1 "LM358" H 3008 1655 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3050 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 3050 1700 50  0001 C CNN
	3    3050 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 614C6C15
P 4500 1700
F 0 "C4" H 4408 1654 50  0000 R CNN
F 1 "100n" H 4408 1745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4500 1700 50  0001 C CNN
F 3 "~" H 4500 1700 50  0001 C CNN
	1    4500 1700
	-1   0    0    1   
$EndComp
Text GLabel 6950 4950 2    50   Input ~ 0
asymm
$Comp
L Connector:TestPoint TP1
U 1 1 6168C104
P 6850 4950
F 0 "TP1" V 6804 5138 50  0000 L CNN
F 1 "Asymm" V 6895 5138 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7050 4950 50  0001 C CNN
F 3 "~" H 7050 4950 50  0001 C CNN
	1    6850 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R22
U 1 1 616A1F62
P 8150 2850
F 0 "R22" V 7954 2850 50  0000 C CNN
F 1 "10k" V 8045 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8150 2850 50  0001 C CNN
F 3 "~" H 8150 2850 50  0001 C CNN
	1    8150 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 2550 8350 2550
Wire Wire Line
	8350 2550 8350 2650
Wire Wire Line
	8350 2850 8250 2850
Connection ~ 8350 2650
Wire Wire Line
	8350 2650 8350 2850
Text GLabel 10450 1700 2    50   Input ~ 0
dc_bias
Wire Wire Line
	10350 1700 10450 1700
Text GLabel 7950 2550 0    50   Input ~ 0
dc_bias
Wire Wire Line
	7950 2550 8050 2550
Text GLabel 7950 2850 0    50   Input ~ 0
sigRly
Wire Wire Line
	7950 2850 8050 2850
Text GLabel 9350 5400 2    50   Input ~ 0
asymm
Text GLabel 8300 5300 0    50   Input ~ 0
sigRly
Connection ~ 9450 4350
$Comp
L power:+5VD #PWR?
U 1 1 616E43ED
P 9450 4350
AR Path="/613448A2/616E43ED" Ref="#PWR?"  Part="1" 
AR Path="/6134453E/616E43ED" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 9450 4200 50  0001 C CNN
F 1 "+5VD" H 9465 4523 50  0000 C CNN
F 2 "" H 9450 4350 50  0001 C CNN
F 3 "" H 9450 4350 50  0001 C CNN
	1    9450 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 616E43F3
P 8300 4500
AR Path="/613448A2/616E43F3" Ref="R?"  Part="1" 
AR Path="/6134453E/616E43F3" Ref="R23"  Part="1" 
F 0 "R23" H 8359 4546 50  0000 L CNN
F 1 "1k" H 8359 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8300 4500 50  0001 C CNN
F 3 "~" H 8300 4500 50  0001 C CNN
	1    8300 4500
	1    0    0    -1  
$EndComp
Text GLabel 8300 4400 1    50   Input ~ 0
Rly3
Wire Wire Line
	8100 4900 8000 4900
$Comp
L power:GND #PWR?
U 1 1 616E43FB
P 8000 4900
AR Path="/613448A2/616E43FB" Ref="#PWR?"  Part="1" 
AR Path="/6134453E/616E43FB" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 8000 4650 50  0001 C CNN
F 1 "GND" V 8005 4772 50  0000 R CNN
F 2 "" H 8000 4900 50  0001 C CNN
F 3 "" H 8000 4900 50  0001 C CNN
	1    8000 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 4900 9350 4900
Wire Wire Line
	8650 4900 8750 4900
Connection ~ 8650 4900
Wire Wire Line
	8650 4350 8650 4900
Wire Wire Line
	8900 4350 8650 4350
Wire Wire Line
	9450 4350 9450 4900
Wire Wire Line
	9200 4350 9450 4350
Wire Wire Line
	8500 4900 8650 4900
$Comp
L Diode:1N4148 D?
U 1 1 616E440F
P 9050 4350
AR Path="/613448A2/616E440F" Ref="D?"  Part="1" 
AR Path="/6134453E/616E440F" Ref="D5"  Part="1" 
F 0 "D5" H 9050 4133 50  0000 C CNN
F 1 "1N4148" H 9050 4224 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 9050 4175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9050 4350 50  0001 C CNN
	1    9050 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 616E441B
P 9800 4900
AR Path="/6134443B/616E441B" Ref="D?"  Part="1" 
AR Path="/613448A2/616E441B" Ref="D?"  Part="1" 
AR Path="/6134453E/616E441B" Ref="D6"  Part="1" 
F 0 "D6" V 9839 4782 50  0000 R CNN
F 1 "LED" V 9748 4782 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9800 4900 50  0001 C CNN
F 3 "~" H 9800 4900 50  0001 C CNN
	1    9800 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 616E4421
P 9800 5250
AR Path="/6134443B/616E4421" Ref="R?"  Part="1" 
AR Path="/613448A2/616E4421" Ref="R?"  Part="1" 
AR Path="/6134453E/616E4421" Ref="R28"  Part="1" 
F 0 "R28" H 9859 5296 50  0000 L CNN
F 1 "1k" H 9850 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9800 5250 50  0001 C CNN
F 3 "~" H 9800 5250 50  0001 C CNN
	1    9800 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5050 9800 5150
$Comp
L power:GND #PWR?
U 1 1 616E4428
P 9800 5450
AR Path="/6134443B/616E4428" Ref="#PWR?"  Part="1" 
AR Path="/613448A2/616E4428" Ref="#PWR?"  Part="1" 
AR Path="/6134453E/616E4428" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 9800 5200 50  0001 C CNN
F 1 "GND" H 9805 5277 50  0000 C CNN
F 2 "" H 9800 5450 50  0001 C CNN
F 3 "" H 9800 5450 50  0001 C CNN
	1    9800 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5350 9800 5450
Wire Wire Line
	9800 4700 9800 4750
Text GLabel 9800 4700 1    50   Input ~ 0
Rly3
Text GLabel 9600 2750 2    50   Input ~ 0
base
NoConn ~ 9350 5600
NoConn ~ 9350 5800
NoConn ~ 8750 5700
Connection ~ 2550 1400
Wire Wire Line
	9000 3150 9250 3150
Wire Wire Line
	8300 5300 8750 5300
$Comp
L Device:R_POT_Small RV6
U 1 1 61502F2B
P 9000 3050
F 0 "RV6" H 8940 3096 50  0000 R CNN
F 1 "100k" H 8940 3005 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 9000 3050 50  0001 C CNN
F 3 "~" H 9000 3050 50  0001 C CNN
	1    9000 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 2650 8350 2650
$Comp
L Amplifier_Operational:LM358 U6
U 1 1 615DDE5A
P 8800 2750
F 0 "U6" H 8800 3117 50  0000 C CNN
F 1 "LM358" H 8800 3026 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8800 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 8800 2750 50  0001 C CNN
	1    8800 2750
	1    0    0    -1  
$EndComp
Text GLabel 1650 1750 2    50   Input ~ 0
SCLK1
Wire Wire Line
	4450 4150 4650 4150
Connection ~ 4650 4150
Wire Wire Line
	4650 4150 4650 3850
Wire Wire Line
	4400 5450 4600 5450
Connection ~ 4600 5450
Wire Wire Line
	4600 5450 4600 5150
$Comp
L Transistor_BJT:MMBT3904 Q1
U 1 1 61690649
P 8300 4800
F 0 "Q1" V 8535 4800 50  0000 C CNN
F 1 "MMBT3904" V 8626 4800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8500 4725 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 8300 4800 50  0001 L CNN
	1    8300 4800
	0    1    1    0   
$EndComp
$Comp
L basic:RY5W-K RY3
U 1 1 616D6B56
P 9050 5300
F 0 "RY3" V 8283 5300 50  0000 C CNN
F 1 "RY5W-K" V 8374 5300 50  0000 C CNN
F 2 "basic:RY5W-K" H 9000 5250 50  0001 C CNN
F 3 "https://www.fcl.fujitsu.com/downloads/MICRO/fcai/relays/ry.pdf" H 9050 5300 50  0001 C CNN
	1    9050 5300
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 616E9483
P 9250 2750
F 0 "TP2" V 9204 2938 50  0000 L CNN
F 1 "base" V 9295 2938 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9450 2750 50  0001 C CNN
F 3 "~" H 9450 2750 50  0001 C CNN
	1    9250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3050 9250 3050
Connection ~ 9250 3050
Wire Wire Line
	9250 3050 9250 3150
Wire Wire Line
	9250 2750 9250 3050
Wire Wire Line
	9100 2750 9250 2750
Connection ~ 9250 2750
Text GLabel 9350 5200 2    50   Input ~ 0
sigout
Wire Wire Line
	6950 4950 6850 4950
Wire Wire Line
	9250 2750 9600 2750
Wire Wire Line
	6750 4950 6850 4950
Connection ~ 6850 4950
$EndSCHEMATC