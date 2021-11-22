EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L basic:LAUNCHXL-F280049C U9
U 1 1 619828C0
P 2750 3550
F 0 "U9" H 2700 4365 50  0000 C CNN
F 1 "LAUNCHXL-F280049C" H 2700 4274 50  0000 C CNN
F 2 "basic:LANCHXL-F280049C" H 2750 3050 50  0001 C CNN
F 3 "" H 2300 3650 50  0001 C CNN
	1    2750 3550
	1    0    0    -1  
$EndComp
$Comp
L basic:LAUNCHXL-F280049C U9
U 2 1 61985185
P 2750 5000
F 0 "U9" H 2700 5815 50  0000 C CNN
F 1 "LAUNCHXL-F280049C" H 2700 5724 50  0000 C CNN
F 2 "basic:LANCHXL-F280049C" H 2750 4500 50  0001 C CNN
F 3 "" H 2300 5100 50  0001 C CNN
	2    2750 5000
	1    0    0    -1  
$EndComp
$Comp
L basic:LAUNCHXL-F280049C U9
U 3 1 619880C0
P 7100 3550
F 0 "U9" H 7050 4365 50  0000 C CNN
F 1 "LAUNCHXL-F280049C" H 7050 4274 50  0000 C CNN
F 2 "basic:LANCHXL-F280049C" H 7100 3050 50  0001 C CNN
F 3 "" H 6650 3650 50  0001 C CNN
	3    7100 3550
	1    0    0    -1  
$EndComp
$Comp
L basic:LAUNCHXL-F280049C U9
U 4 1 6198A48A
P 7100 5000
F 0 "U9" H 7050 5815 50  0000 C CNN
F 1 "LAUNCHXL-F280049C" H 7050 5724 50  0000 C CNN
F 2 "basic:LANCHXL-F280049C" H 7100 4500 50  0001 C CNN
F 3 "" H 6650 5100 50  0001 C CNN
	4    7100 5000
	1    0    0    -1  
$EndComp
Text GLabel 3700 5350 2    50   Input ~ 0
bias_ctl
$Comp
L CVModule-rescue:+3.3V-power #PWR046
U 1 1 619A7671
P 1700 3000
F 0 "#PWR046" H 1700 2850 50  0001 C CNN
F 1 "+3.3V" V 1715 3128 50  0000 L CNN
F 2 "" H 1700 3000 50  0001 C CNN
F 3 "" H 1700 3000 50  0001 C CNN
	1    1700 3000
	0    -1   -1   0   
$EndComp
$Comp
L CVModule-rescue:+5V-power #PWR047
U 1 1 619A89F6
P 3700 3000
F 0 "#PWR047" H 3700 2850 50  0001 C CNN
F 1 "+5V" V 3715 3128 50  0000 L CNN
F 2 "" H 3700 3000 50  0001 C CNN
F 3 "" H 3700 3000 50  0001 C CNN
	1    3700 3000
	0    1    1    0   
$EndComp
$Comp
L CVModule-rescue:GND-power #PWR048
U 1 1 619A90C5
P 3700 3100
F 0 "#PWR048" H 3700 2850 50  0001 C CNN
F 1 "GND" V 3705 2972 50  0000 R CNN
F 2 "" H 3700 3100 50  0001 C CNN
F 3 "" H 3700 3100 50  0001 C CNN
	1    3700 3100
	0    -1   -1   0   
$EndComp
$Comp
L CVModule-rescue:GND-power #PWR050
U 1 1 619A9F4C
P 3700 4550
F 0 "#PWR050" H 3700 4300 50  0001 C CNN
F 1 "GND" V 3705 4422 50  0000 R CNN
F 2 "" H 3700 4550 50  0001 C CNN
F 3 "" H 3700 4550 50  0001 C CNN
	1    3700 4550
	0    -1   -1   0   
$EndComp
$Comp
L CVModule-rescue:+5V-power #PWR049
U 1 1 619AA61E
P 3700 4450
F 0 "#PWR049" H 3700 4300 50  0001 C CNN
F 1 "+5V" V 3715 4578 50  0000 L CNN
F 2 "" H 3700 4450 50  0001 C CNN
F 3 "" H 3700 4450 50  0001 C CNN
	1    3700 4450
	0    1    1    0   
$EndComp
$Comp
L CVModule-rescue:GND-power #PWR052
U 1 1 619AA7BF
P 8050 4450
F 0 "#PWR052" H 8050 4200 50  0001 C CNN
F 1 "GND" V 8055 4322 50  0000 R CNN
F 2 "" H 8050 4450 50  0001 C CNN
F 3 "" H 8050 4450 50  0001 C CNN
	1    8050 4450
	0    -1   -1   0   
$EndComp
$Comp
L CVModule-rescue:GND-power #PWR051
U 1 1 619AAFC9
P 8050 3000
F 0 "#PWR051" H 8050 2750 50  0001 C CNN
F 1 "GND" V 8055 2872 50  0000 R CNN
F 2 "" H 8050 3000 50  0001 C CNN
F 3 "" H 8050 3000 50  0001 C CNN
	1    8050 3000
	0    -1   -1   0   
$EndComp
NoConn ~ 6050 3800
Text GLabel 3700 3900 2    50   Input ~ 0
Vbat+
Text GLabel 3700 3500 2    50   Input ~ 0
Viout
NoConn ~ 3700 3200
NoConn ~ 3700 3300
NoConn ~ 3700 3400
NoConn ~ 3700 3600
NoConn ~ 3700 3700
NoConn ~ 3700 3800
NoConn ~ 3700 4650
NoConn ~ 3700 4750
NoConn ~ 3700 4850
NoConn ~ 3700 5050
NoConn ~ 3700 5150
NoConn ~ 3700 5250
NoConn ~ 1700 5350
NoConn ~ 1700 5250
NoConn ~ 1700 5150
NoConn ~ 1700 5050
NoConn ~ 1700 4850
NoConn ~ 1700 4950
NoConn ~ 1700 4450
NoConn ~ 1700 4550
Text GLabel 1700 3600 0    50   Input ~ 0
SCLK
NoConn ~ 1700 3100
NoConn ~ 1700 3400
NoConn ~ 1700 3500
NoConn ~ 1700 3700
NoConn ~ 1700 3800
NoConn ~ 1700 3900
NoConn ~ 6050 4450
NoConn ~ 6050 4550
NoConn ~ 6050 4650
NoConn ~ 6050 4750
NoConn ~ 6050 4850
NoConn ~ 6050 4950
NoConn ~ 6050 5050
NoConn ~ 6050 5150
NoConn ~ 6050 5250
NoConn ~ 6050 5350
NoConn ~ 8050 5350
NoConn ~ 8050 5250
NoConn ~ 8050 5150
NoConn ~ 8050 5050
NoConn ~ 8050 4950
NoConn ~ 8050 4850
NoConn ~ 8050 4750
NoConn ~ 8050 4650
NoConn ~ 8050 4550
NoConn ~ 8050 3900
NoConn ~ 8050 3800
NoConn ~ 8050 3700
NoConn ~ 8050 3600
NoConn ~ 8050 3400
NoConn ~ 8050 3300
NoConn ~ 8050 3200
Text GLabel 6050 3500 0    50   Input ~ 0
CC_g
Text GLabel 6050 3600 0    50   Input ~ 0
CV_g
NoConn ~ 6050 3000
NoConn ~ 6050 3100
NoConn ~ 6050 3200
NoConn ~ 6050 3300
NoConn ~ 6050 3400
Text GLabel 8050 3100 2    50   Input ~ 0
CS
Text GLabel 8050 3500 2    50   Input ~ 0
MOSI
NoConn ~ 6050 3700
Text GLabel 3700 4950 2    50   Input ~ 0
Vbat-
$Comp
L CVModule-rescue:+3.3V-power #PWR054
U 1 1 619F1F60
P 4000 1400
F 0 "#PWR054" H 4000 1250 50  0001 C CNN
F 1 "+3.3V" H 4015 1573 50  0000 C CNN
F 2 "" H 4000 1400 50  0001 C CNN
F 3 "" H 4000 1400 50  0001 C CNN
	1    4000 1400
	1    0    0    -1  
$EndComp
Text GLabel 3300 1750 0    50   Input ~ 0
Vbat+
$Comp
L CVModule-rescue:C_Small-Device C8
U 1 1 619F2F44
P 3500 2000
F 0 "C8" H 3592 2046 50  0000 L CNN
F 1 "100n" H 3592 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3500 2000 50  0001 C CNN
F 3 "~" H 3500 2000 50  0001 C CNN
	1    3500 2000
	1    0    0    -1  
$EndComp
$Comp
L CVModule-rescue:1N4148-Diode D5
U 1 1 619F3B18
P 4000 1550
F 0 "D5" V 3954 1630 50  0000 L CNN
F 1 "1N4148" V 4045 1630 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 4000 1375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4000 1550 50  0001 C CNN
	1    4000 1550
	0    1    1    0   
$EndComp
$Comp
L CVModule-rescue:1N4148-Diode D6
U 1 1 619F4EA7
P 4000 2000
F 0 "D6" V 3954 2080 50  0000 L CNN
F 1 "1N4148" V 4045 2080 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 4000 1825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4000 2000 50  0001 C CNN
	1    4000 2000
	0    1    1    0   
$EndComp
$Comp
L CVModule-rescue:R_Small-Device R26
U 1 1 619F5B2A
P 3700 1750
F 0 "R26" V 3504 1750 50  0000 C CNN
F 1 "1k" V 3595 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3700 1750 50  0001 C CNN
F 3 "~" H 3700 1750 50  0001 C CNN
	1    3700 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 1750 3500 1750
Wire Wire Line
	3500 1900 3500 1750
Connection ~ 3500 1750
Wire Wire Line
	3500 1750 3600 1750
Wire Wire Line
	3800 1750 4000 1750
Wire Wire Line
	4000 1750 4000 1700
Connection ~ 4000 1750
$Comp
L CVModule-rescue:GND-power #PWR053
U 1 1 619F8B8D
P 3500 2200
F 0 "#PWR053" H 3500 1950 50  0001 C CNN
F 1 "GND" H 3505 2027 50  0000 C CNN
F 2 "" H 3500 2200 50  0001 C CNN
F 3 "" H 3500 2200 50  0001 C CNN
	1    3500 2200
	1    0    0    -1  
$EndComp
$Comp
L CVModule-rescue:GND-power #PWR055
U 1 1 619F9403
P 4000 2200
F 0 "#PWR055" H 4000 1950 50  0001 C CNN
F 1 "GND" H 4005 2027 50  0000 C CNN
F 2 "" H 4000 2200 50  0001 C CNN
F 3 "" H 4000 2200 50  0001 C CNN
	1    4000 2200
	1    0    0    -1  
$EndComp
$Comp
L CVModule-rescue:R_Small-Device R28
U 1 1 619FA3EA
P 4450 2000
F 0 "R28" H 4391 1954 50  0000 R CNN
F 1 "10k" H 4391 2045 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4450 2000 50  0001 C CNN
F 3 "~" H 4450 2000 50  0001 C CNN
	1    4450 2000
	-1   0    0    1   
$EndComp
$Comp
L CVModule-rescue:R_Small-Device R27
U 1 1 619FAB37
P 4450 1550
F 0 "R27" H 4391 1504 50  0000 R CNN
F 1 "4.7k" H 4391 1595 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4450 1550 50  0001 C CNN
F 3 "~" H 4450 1550 50  0001 C CNN
	1    4450 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 1750 4450 1750
Wire Wire Line
	4450 1750 4450 1650
$Comp
L CVModule-rescue:GND-power #PWR056
U 1 1 619FBC0A
P 4450 2200
F 0 "#PWR056" H 4450 1950 50  0001 C CNN
F 1 "GND" H 4455 2027 50  0000 C CNN
F 2 "" H 4450 2200 50  0001 C CNN
F 3 "" H 4450 2200 50  0001 C CNN
	1    4450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2100 3500 2200
Wire Wire Line
	4000 2200 4000 2150
Wire Wire Line
	4000 1850 4000 1750
Wire Wire Line
	4450 1750 4450 1900
Connection ~ 4450 1750
Wire Wire Line
	4450 2100 4450 2200
Text GLabel 4450 1450 1    50   Input ~ 0
bat+
$Comp
L CVModule-rescue:+3.3V-power #PWR058
U 1 1 61A05602
P 5800 1400
F 0 "#PWR058" H 5800 1250 50  0001 C CNN
F 1 "+3.3V" H 5815 1573 50  0000 C CNN
F 2 "" H 5800 1400 50  0001 C CNN
F 3 "" H 5800 1400 50  0001 C CNN
	1    5800 1400
	1    0    0    -1  
$EndComp
Text GLabel 5100 1750 0    50   Input ~ 0
Viout
$Comp
L CVModule-rescue:C_Small-Device C9
U 1 1 61A05609
P 5300 2000
F 0 "C9" H 5392 2046 50  0000 L CNN
F 1 "100n" H 5392 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5300 2000 50  0001 C CNN
F 3 "~" H 5300 2000 50  0001 C CNN
	1    5300 2000
	1    0    0    -1  
$EndComp
$Comp
L CVModule-rescue:1N4148-Diode D7
U 1 1 61A0560F
P 5800 1550
F 0 "D7" V 5754 1630 50  0000 L CNN
F 1 "1N4148" V 5845 1630 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 5800 1375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5800 1550 50  0001 C CNN
	1    5800 1550
	0    1    1    0   
$EndComp
$Comp
L CVModule-rescue:1N4148-Diode D8
U 1 1 61A05615
P 5800 2000
F 0 "D8" V 5754 2080 50  0000 L CNN
F 1 "1N4148" V 5845 2080 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 5800 1825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5800 2000 50  0001 C CNN
	1    5800 2000
	0    1    1    0   
$EndComp
$Comp
L CVModule-rescue:R_Small-Device R29
U 1 1 61A0561B
P 5500 1750
F 0 "R29" V 5304 1750 50  0000 C CNN
F 1 "1k" V 5395 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5500 1750 50  0001 C CNN
F 3 "~" H 5500 1750 50  0001 C CNN
	1    5500 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 1750 5300 1750
Wire Wire Line
	5300 1900 5300 1750
Connection ~ 5300 1750
Wire Wire Line
	5300 1750 5400 1750
Wire Wire Line
	5600 1750 5800 1750
Wire Wire Line
	5800 1750 5800 1700
Connection ~ 5800 1750
$Comp
L CVModule-rescue:GND-power #PWR057
U 1 1 61A05628
P 5300 2200
F 0 "#PWR057" H 5300 1950 50  0001 C CNN
F 1 "GND" H 5305 2027 50  0000 C CNN
F 2 "" H 5300 2200 50  0001 C CNN
F 3 "" H 5300 2200 50  0001 C CNN
	1    5300 2200
	1    0    0    -1  
$EndComp
$Comp
L CVModule-rescue:GND-power #PWR059
U 1 1 61A0562E
P 5800 2200
F 0 "#PWR059" H 5800 1950 50  0001 C CNN
F 1 "GND" H 5805 2027 50  0000 C CNN
F 2 "" H 5800 2200 50  0001 C CNN
F 3 "" H 5800 2200 50  0001 C CNN
	1    5800 2200
	1    0    0    -1  
$EndComp
$Comp
L CVModule-rescue:R_Small-Device R31
U 1 1 61A05634
P 6250 2000
F 0 "R31" H 6191 1954 50  0000 R CNN
F 1 "10k" H 6191 2045 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6250 2000 50  0001 C CNN
F 3 "~" H 6250 2000 50  0001 C CNN
	1    6250 2000
	-1   0    0    1   
$EndComp
$Comp
L CVModule-rescue:R_Small-Device R30
U 1 1 61A0563A
P 6250 1550
F 0 "R30" H 6191 1504 50  0000 R CNN
F 1 "4.7k" H 6191 1595 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6250 1550 50  0001 C CNN
F 3 "~" H 6250 1550 50  0001 C CNN
	1    6250 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 1750 6250 1750
Wire Wire Line
	6250 1750 6250 1650
$Comp
L CVModule-rescue:GND-power #PWR060
U 1 1 61A05642
P 6250 2200
F 0 "#PWR060" H 6250 1950 50  0001 C CNN
F 1 "GND" H 6255 2027 50  0000 C CNN
F 2 "" H 6250 2200 50  0001 C CNN
F 3 "" H 6250 2200 50  0001 C CNN
	1    6250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2100 5300 2200
Wire Wire Line
	5800 2200 5800 2150
Wire Wire Line
	5800 1850 5800 1750
Wire Wire Line
	6250 1750 6250 1900
Connection ~ 6250 1750
Wire Wire Line
	6250 2100 6250 2200
Text GLabel 6250 1450 1    50   Input ~ 0
Iout
NoConn ~ 6050 3900
NoConn ~ 1700 4650
NoConn ~ 1700 4750
NoConn ~ 1700 3200
NoConn ~ 1700 3300
$Comp
L CVModule-rescue:+3.3V-power #PWR041
U 1 1 618E90C0
P 2300 1400
F 0 "#PWR041" H 2300 1250 50  0001 C CNN
F 1 "+3.3V" H 2315 1573 50  0000 C CNN
F 2 "" H 2300 1400 50  0001 C CNN
F 3 "" H 2300 1400 50  0001 C CNN
	1    2300 1400
	1    0    0    -1  
$EndComp
Text GLabel 1600 1750 0    50   Input ~ 0
Vbat-
$Comp
L CVModule-rescue:C_Small-Device C12
U 1 1 618E90C7
P 1800 2000
F 0 "C12" H 1892 2046 50  0000 L CNN
F 1 "100n" H 1892 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1800 2000 50  0001 C CNN
F 3 "~" H 1800 2000 50  0001 C CNN
	1    1800 2000
	1    0    0    -1  
$EndComp
$Comp
L CVModule-rescue:1N4148-Diode D9
U 1 1 618E90CD
P 2300 1550
F 0 "D9" V 2254 1630 50  0000 L CNN
F 1 "1N4148" V 2345 1630 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 2300 1375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2300 1550 50  0001 C CNN
	1    2300 1550
	0    1    1    0   
$EndComp
$Comp
L CVModule-rescue:1N4148-Diode D10
U 1 1 618E90D3
P 2300 2000
F 0 "D10" V 2254 2080 50  0000 L CNN
F 1 "1N4148" V 2345 2080 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 2300 1825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2300 2000 50  0001 C CNN
	1    2300 2000
	0    1    1    0   
$EndComp
$Comp
L CVModule-rescue:R_Small-Device R36
U 1 1 618E90D9
P 2000 1750
F 0 "R36" V 1804 1750 50  0000 C CNN
F 1 "1k" V 1895 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2000 1750 50  0001 C CNN
F 3 "~" H 2000 1750 50  0001 C CNN
	1    2000 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 1750 1800 1750
Wire Wire Line
	1800 1900 1800 1750
Connection ~ 1800 1750
Wire Wire Line
	1800 1750 1900 1750
Wire Wire Line
	2100 1750 2300 1750
Wire Wire Line
	2300 1750 2300 1700
Connection ~ 2300 1750
$Comp
L CVModule-rescue:GND-power #PWR039
U 1 1 618E90E6
P 1800 2200
F 0 "#PWR039" H 1800 1950 50  0001 C CNN
F 1 "GND" H 1805 2027 50  0000 C CNN
F 2 "" H 1800 2200 50  0001 C CNN
F 3 "" H 1800 2200 50  0001 C CNN
	1    1800 2200
	1    0    0    -1  
$EndComp
$Comp
L CVModule-rescue:GND-power #PWR043
U 1 1 618E90EC
P 2300 2200
F 0 "#PWR043" H 2300 1950 50  0001 C CNN
F 1 "GND" H 2305 2027 50  0000 C CNN
F 2 "" H 2300 2200 50  0001 C CNN
F 3 "" H 2300 2200 50  0001 C CNN
	1    2300 2200
	1    0    0    -1  
$EndComp
$Comp
L CVModule-rescue:R_Small-Device R38
U 1 1 618E90F2
P 2750 2000
F 0 "R38" H 2691 1954 50  0000 R CNN
F 1 "10k" H 2691 2045 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2750 2000 50  0001 C CNN
F 3 "~" H 2750 2000 50  0001 C CNN
	1    2750 2000
	-1   0    0    1   
$EndComp
$Comp
L CVModule-rescue:R_Small-Device R37
U 1 1 618E90F8
P 2750 1550
F 0 "R37" H 2691 1504 50  0000 R CNN
F 1 "4.7k" H 2691 1595 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2750 1550 50  0001 C CNN
F 3 "~" H 2750 1550 50  0001 C CNN
	1    2750 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 1750 2750 1750
Wire Wire Line
	2750 1750 2750 1650
$Comp
L CVModule-rescue:GND-power #PWR061
U 1 1 618E9100
P 2750 2200
F 0 "#PWR061" H 2750 1950 50  0001 C CNN
F 1 "GND" H 2755 2027 50  0000 C CNN
F 2 "" H 2750 2200 50  0001 C CNN
F 3 "" H 2750 2200 50  0001 C CNN
	1    2750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2100 1800 2200
Wire Wire Line
	2300 2200 2300 2150
Wire Wire Line
	2300 1850 2300 1750
Wire Wire Line
	2750 1750 2750 1900
Connection ~ 2750 1750
Wire Wire Line
	2750 2100 2750 2200
Text GLabel 2750 1450 1    50   Input ~ 0
bat-
$EndSCHEMATC