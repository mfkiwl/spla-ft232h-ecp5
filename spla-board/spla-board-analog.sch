EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 6 7
Title ""
Date "2020-03-07"
Rev "5"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Analog_ADC:AD9280ARS U4
U 1 1 5E52AA65
P 4050 5450
F 0 "U4" H 3500 6450 50  0000 L CNN
F 1 "AD9280ARS" H 4050 5450 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 4050 5450 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD9280.pdf" H 4050 5450 50  0001 C CNN
	1    4050 5450
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:AD9280ARS U6
U 1 1 5E52B6B8
P 13050 5450
F 0 "U6" H 12500 6450 50  0000 L CNN
F 1 "AD9280ARS" H 13050 5450 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 13050 5450 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD9280.pdf" H 13050 5450 50  0001 C CNN
	1    13050 5450
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:AD9280ARS U5
U 1 1 5E52C2F0
P 8550 5450
F 0 "U5" H 8000 6450 50  0000 L CNN
F 1 "AD9280ARS" H 8550 5450 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 8550 5450 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD9280.pdf" H 8550 5450 50  0001 C CNN
	1    8550 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR022
U 1 1 5E547040
P 4250 4150
F 0 "#PWR022" H 4250 4000 50  0001 C CNN
F 1 "+3V3" H 4265 4323 50  0000 C CNN
F 2 "" H 4250 4150 50  0001 C CNN
F 3 "" H 4250 4150 50  0001 C CNN
	1    4250 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 5E54CCC4
P 3850 4150
F 0 "#PWR020" H 3850 4000 50  0001 C CNN
F 1 "+5V" H 3865 4323 50  0000 C CNN
F 2 "" H 3850 4150 50  0001 C CNN
F 3 "" H 3850 4150 50  0001 C CNN
	1    3850 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5E56262E
P 8550 6550
F 0 "#PWR024" H 8550 6300 50  0001 C CNN
F 1 "GND" H 8555 6377 50  0000 C CNN
F 2 "" H 8550 6550 50  0001 C CNN
F 3 "" H 8550 6550 50  0001 C CNN
	1    8550 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5E569227
P 4050 6550
F 0 "#PWR021" H 4050 6300 50  0001 C CNN
F 1 "GND" H 4055 6377 50  0000 C CNN
F 2 "" H 4050 6550 50  0001 C CNN
F 3 "" H 4050 6550 50  0001 C CNN
	1    4050 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6550 4050 6550
Connection ~ 4050 6550
Wire Wire Line
	4050 6550 4150 6550
Wire Wire Line
	8450 6550 8550 6550
Connection ~ 8550 6550
Wire Wire Line
	8550 6550 8650 6550
Text GLabel 1850 3400 0    50   Input ~ 0
ANALOG_R
Text GLabel 1850 3300 0    50   Input ~ 0
ANALOG_G
Text GLabel 1850 3200 0    50   Input ~ 0
ANALOG_B
Text GLabel 4750 5350 2    50   Output ~ 0
ANALOG_R0
Text GLabel 4750 5450 2    50   Output ~ 0
ANALOG_R1
Text GLabel 4750 5550 2    50   Output ~ 0
ANALOG_R2
Text GLabel 4750 5650 2    50   Output ~ 0
ANALOG_R3
Text GLabel 4750 5750 2    50   Output ~ 0
ANALOG_R4
Text GLabel 4750 5850 2    50   Output ~ 0
ANALOG_R5
Text GLabel 4750 5950 2    50   Output ~ 0
ANALOG_R6
Text GLabel 4750 6050 2    50   Output ~ 0
ANALOG_R7
Text GLabel 9250 6250 2    50   Input ~ 0
ANALOG_CLK
Text GLabel 13750 6250 2    50   Input ~ 0
ANALOG_CLK
Text GLabel 4750 6250 2    50   Input ~ 0
ANALOG_CLK
Text GLabel 9250 5350 2    50   Output ~ 0
ANALOG_G0
Text GLabel 9250 5450 2    50   Output ~ 0
ANALOG_G1
Text GLabel 9250 5550 2    50   Output ~ 0
ANALOG_G2
Text GLabel 9250 5650 2    50   Output ~ 0
ANALOG_G3
Text GLabel 9250 5750 2    50   Output ~ 0
ANALOG_G4
Text GLabel 9250 5850 2    50   Output ~ 0
ANALOG_G5
Text GLabel 9250 5950 2    50   Output ~ 0
ANALOG_G6
Text GLabel 9250 6050 2    50   Output ~ 0
ANALOG_G7
Text GLabel 13750 5350 2    50   Output ~ 0
ANALOG_B0
Text GLabel 13750 5450 2    50   Output ~ 0
ANALOG_B1
Text GLabel 13750 5550 2    50   Output ~ 0
ANALOG_B2
Text GLabel 13750 5650 2    50   Output ~ 0
ANALOG_B3
Text GLabel 13750 5750 2    50   Output ~ 0
ANALOG_B4
Text GLabel 13750 5850 2    50   Output ~ 0
ANALOG_B5
Text GLabel 13750 5950 2    50   Output ~ 0
ANALOG_B6
Text GLabel 13750 6050 2    50   Output ~ 0
ANALOG_B7
NoConn ~ 7850 5850
NoConn ~ 7850 4850
Text GLabel 7950 2050 2    50   UnSpc ~ 0
ANALOG_REF_LO
Wire Wire Line
	6100 2050 5700 2050
Text GLabel 7950 1950 2    50   UnSpc ~ 0
ANALOG_REF_HI
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J14
U 1 1 5E5B71A2
P 6300 1950
F 0 "J14" H 6350 2267 50  0000 C CNN
F 1 "J_AREF" H 6350 2176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 6300 1950 50  0001 C CNN
F 3 "~" H 6300 1950 50  0001 C CNN
	1    6300 1950
	1    0    0    -1  
$EndComp
Text Notes 5350 1900 0    50   ~ 0
2.702V Reference
Wire Wire Line
	5700 2050 5700 2350
Wire Wire Line
	6600 2150 6600 2350
Wire Wire Line
	6600 2350 6100 2350
Wire Wire Line
	6100 2350 6100 2150
Wire Wire Line
	6600 1850 6600 1550
Wire Wire Line
	6600 1550 6100 1550
Wire Wire Line
	6100 1550 6100 1850
$Comp
L power:+5V #PWR053
U 1 1 5E5BCF35
P 6100 1550
F 0 "#PWR053" H 6100 1400 50  0001 C CNN
F 1 "+5V" H 6115 1723 50  0000 C CNN
F 2 "" H 6100 1550 50  0001 C CNN
F 3 "" H 6100 1550 50  0001 C CNN
	1    6100 1550
	1    0    0    -1  
$EndComp
Connection ~ 6100 1550
$Comp
L power:GND #PWR054
U 1 1 5E5BD33A
P 6100 2450
F 0 "#PWR054" H 6100 2200 50  0001 C CNN
F 1 "GND" H 6105 2277 50  0000 C CNN
F 2 "" H 6100 2450 50  0001 C CNN
F 3 "" H 6100 2450 50  0001 C CNN
	1    6100 2450
	1    0    0    -1  
$EndComp
Connection ~ 6100 2350
Wire Wire Line
	4950 2350 4950 2450
Connection ~ 4950 2350
Wire Wire Line
	5700 2350 4950 2350
Wire Wire Line
	4950 2250 4950 2350
Wire Wire Line
	4950 1550 4950 1650
$Comp
L power:GND #PWR050
U 1 1 5E5BA597
P 4950 2450
F 0 "#PWR050" H 4950 2200 50  0001 C CNN
F 1 "GND" H 4955 2277 50  0000 C CNN
F 2 "" H 4950 2450 50  0001 C CNN
F 3 "" H 4950 2450 50  0001 C CNN
	1    4950 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR049
U 1 1 5E5BA1B9
P 4950 1550
F 0 "#PWR049" H 4950 1400 50  0001 C CNN
F 1 "+5V" H 4965 1723 50  0000 C CNN
F 2 "" H 4950 1550 50  0001 C CNN
F 3 "" H 4950 1550 50  0001 C CNN
	1    4950 1550
	1    0    0    -1  
$EndComp
Connection ~ 4950 1950
Wire Wire Line
	4950 1850 4950 1950
Wire Wire Line
	4950 1950 4950 2050
Wire Wire Line
	6100 1950 4950 1950
$Comp
L Device:R_Small R15
U 1 1 5E5B6C48
P 4950 1750
F 0 "R15" H 5009 1796 50  0000 L CNN
F 1 "85,1%" H 5009 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 1750 50  0001 C CNN
F 3 "~" H 4950 1750 50  0001 C CNN
	1    4950 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R16
U 1 1 5E5B6727
P 4950 2150
F 0 "R16" H 5009 2196 50  0000 L CNN
F 1 "100,1%" H 5009 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 2150 50  0001 C CNN
F 3 "~" H 4950 2150 50  0001 C CNN
	1    4950 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2350 6100 2450
$Comp
L Device:C_Small C15
U 1 1 5E5C1610
P 4500 2150
F 0 "C15" H 4592 2196 50  0000 L CNN
F 1 "0.1uF" H 4592 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4500 2150 50  0001 C CNN
F 3 "~" H 4500 2150 50  0001 C CNN
	1    4500 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5E5C1A17
P 4100 2150
F 0 "C14" H 4192 2196 50  0000 L CNN
F 1 "10uF" H 4192 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4100 2150 50  0001 C CNN
F 3 "~" H 4100 2150 50  0001 C CNN
	1    4100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1950 4500 1950
Wire Wire Line
	4100 1950 4100 2050
Wire Wire Line
	4100 2350 4500 2350
Wire Wire Line
	4100 2350 4100 2250
Wire Wire Line
	4500 2250 4500 2350
Connection ~ 4500 2350
Wire Wire Line
	4500 2350 4950 2350
Wire Wire Line
	4500 2050 4500 1950
Connection ~ 4500 1950
Wire Wire Line
	4500 1950 4100 1950
NoConn ~ 3350 5850
NoConn ~ 3350 4850
Text GLabel 4750 5150 2    50   Output ~ 0
ANALOG_R_OTR
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J13
U 1 1 5E5CB713
P 2050 3300
F 0 "J13" H 2100 3617 50  0000 C CNN
F 1 "J_ANALOG" H 2100 3526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 2050 3300 50  0001 C CNN
F 3 "~" H 2050 3300 50  0001 C CNN
	1    2050 3300
	1    0    0    -1  
$EndComp
Text GLabel 3350 5550 0    50   UnSpc ~ 0
ANALOG_REF_LO
Text GLabel 3350 5350 0    50   UnSpc ~ 0
ANALOG_REF_HI
Wire Wire Line
	3350 5650 2400 5650
$Comp
L Device:C_Small C19
U 1 1 5E5E9ED6
P 2400 5450
F 0 "C19" H 2492 5496 50  0000 L CNN
F 1 "0.1uF" H 2492 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2400 5450 50  0001 C CNN
F 3 "~" H 2400 5450 50  0001 C CNN
	1    2400 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5E5EA7DD
P 1950 5450
F 0 "C17" H 2042 5496 50  0000 L CNN
F 1 "10uF" H 2042 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1950 5450 50  0001 C CNN
F 3 "~" H 1950 5450 50  0001 C CNN
	1    1950 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5E5EC564
P 1500 5850
F 0 "C16" H 1592 5896 50  0000 L CNN
F 1 "0.1uF" H 1592 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1500 5850 50  0001 C CNN
F 3 "~" H 1500 5850 50  0001 C CNN
	1    1500 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 5E5EE849
P 1950 5850
F 0 "C18" H 2042 5896 50  0000 L CNN
F 1 "0.1uF" H 2042 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1950 5850 50  0001 C CNN
F 3 "~" H 1950 5850 50  0001 C CNN
	1    1950 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 5E5F0530
P 1950 6050
F 0 "#PWR052" H 1950 5800 50  0001 C CNN
F 1 "GND" H 1955 5877 50  0000 C CNN
F 2 "" H 1950 6050 50  0001 C CNN
F 3 "" H 1950 6050 50  0001 C CNN
	1    1950 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5350 1950 5250
Connection ~ 1950 5250
Wire Wire Line
	1950 5250 2400 5250
Wire Wire Line
	2400 5350 2400 5250
Connection ~ 2400 5250
Wire Wire Line
	2400 5250 3350 5250
Wire Wire Line
	2400 5550 2400 5650
Connection ~ 2400 5650
Wire Wire Line
	2400 5650 1950 5650
Wire Wire Line
	1950 5550 1950 5650
Connection ~ 1950 5650
Wire Wire Line
	1950 5950 1950 6050
Wire Wire Line
	1500 5250 1950 5250
Wire Wire Line
	1500 5950 1500 6050
Wire Wire Line
	1950 5750 1950 5650
$Comp
L power:GND #PWR051
U 1 1 5E604997
P 1500 6050
F 0 "#PWR051" H 1500 5800 50  0001 C CNN
F 1 "GND" H 1505 5877 50  0000 C CNN
F 2 "" H 1500 6050 50  0001 C CNN
F 3 "" H 1500 6050 50  0001 C CNN
	1    1500 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5250 1500 5750
Wire Wire Line
	3350 5050 3250 5050
Wire Wire Line
	3250 5050 3250 4250
Wire Wire Line
	3250 4250 3850 4250
Wire Wire Line
	3850 4250 3850 4150
Wire Wire Line
	3850 4350 3850 4250
Connection ~ 3850 4250
Text Notes 3200 5050 2    50   ~ 0
Mode: External Reference
Wire Wire Line
	4750 4650 4850 4650
Wire Wire Line
	4850 4650 4850 4250
Wire Wire Line
	4850 4250 4250 4250
Wire Wire Line
	4250 4250 4250 4350
Wire Wire Line
	4250 4250 4250 4150
Connection ~ 4250 4250
Text Notes 4900 4650 0    50   ~ 0
Clamp: Disabled
$Comp
L power:+5V #PWR055
U 1 1 5E60CDF2
P 3200 5950
F 0 "#PWR055" H 3200 5800 50  0001 C CNN
F 1 "+5V" H 3215 6123 50  0000 C CNN
F 2 "" H 3200 5950 50  0001 C CNN
F 3 "" H 3200 5950 50  0001 C CNN
	1    3200 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6050 3200 5950
Wire Wire Line
	3200 6050 3350 6050
$Comp
L power:GND #PWR056
U 1 1 5E6118FB
P 5050 4850
F 0 "#PWR056" H 5050 4600 50  0001 C CNN
F 1 "GND" H 5055 4677 50  0000 C CNN
F 2 "" H 5050 4850 50  0001 C CNN
F 3 "" H 5050 4850 50  0001 C CNN
	1    5050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4950 4850 4950
Wire Wire Line
	4850 4950 4850 4850
Wire Wire Line
	4850 4850 5050 4850
Wire Wire Line
	4750 4850 4850 4850
Connection ~ 4850 4850
Text Notes 5200 4850 0    50   ~ 0
No Standby
Text Notes 5200 4950 0    50   ~ 0
No Tristate
Wire Wire Line
	2350 3400 3000 3400
Wire Wire Line
	3000 3400 3000 4650
Wire Wire Line
	3000 4650 3350 4650
Wire Wire Line
	2350 3300 7500 3300
Wire Wire Line
	7500 3300 7500 4650
Wire Wire Line
	7500 4650 7850 4650
Wire Wire Line
	2350 3200 12000 3200
Wire Wire Line
	12000 4650 12350 4650
Text GLabel 7850 5550 0    50   UnSpc ~ 0
ANALOG_REF_LO
Text GLabel 7850 5350 0    50   UnSpc ~ 0
ANALOG_REF_HI
Wire Wire Line
	7850 5650 6900 5650
$Comp
L Device:C_Small C23
U 1 1 5E5E0446
P 6900 5450
F 0 "C23" H 6992 5496 50  0000 L CNN
F 1 "0.1uF" H 6992 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6900 5450 50  0001 C CNN
F 3 "~" H 6900 5450 50  0001 C CNN
	1    6900 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C21
U 1 1 5E5E0450
P 6450 5450
F 0 "C21" H 6542 5496 50  0000 L CNN
F 1 "10uF" H 6542 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6450 5450 50  0001 C CNN
F 3 "~" H 6450 5450 50  0001 C CNN
	1    6450 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C20
U 1 1 5E5E045A
P 6000 5850
F 0 "C20" H 6092 5896 50  0000 L CNN
F 1 "0.1uF" H 6092 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6000 5850 50  0001 C CNN
F 3 "~" H 6000 5850 50  0001 C CNN
	1    6000 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C22
U 1 1 5E5E0464
P 6450 5850
F 0 "C22" H 6542 5896 50  0000 L CNN
F 1 "0.1uF" H 6542 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6450 5850 50  0001 C CNN
F 3 "~" H 6450 5850 50  0001 C CNN
	1    6450 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5E5E046E
P 6450 6050
F 0 "#PWR025" H 6450 5800 50  0001 C CNN
F 1 "GND" H 6455 5877 50  0000 C CNN
F 2 "" H 6450 6050 50  0001 C CNN
F 3 "" H 6450 6050 50  0001 C CNN
	1    6450 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5350 6450 5250
Connection ~ 6450 5250
Wire Wire Line
	6450 5250 6900 5250
Wire Wire Line
	6900 5350 6900 5250
Connection ~ 6900 5250
Wire Wire Line
	6900 5250 7850 5250
Wire Wire Line
	6900 5550 6900 5650
Connection ~ 6900 5650
Wire Wire Line
	6900 5650 6450 5650
Wire Wire Line
	6450 5550 6450 5650
Connection ~ 6450 5650
Wire Wire Line
	6450 5950 6450 6050
Wire Wire Line
	6000 5250 6450 5250
Wire Wire Line
	6000 5950 6000 6050
Wire Wire Line
	6450 5750 6450 5650
$Comp
L power:GND #PWR023
U 1 1 5E5E0487
P 6000 6050
F 0 "#PWR023" H 6000 5800 50  0001 C CNN
F 1 "GND" H 6005 5877 50  0000 C CNN
F 2 "" H 6000 6050 50  0001 C CNN
F 3 "" H 6000 6050 50  0001 C CNN
	1    6000 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5250 6000 5750
Wire Wire Line
	7850 5050 7750 5050
Wire Wire Line
	7750 5050 7750 4250
Text Notes 7700 5050 2    50   ~ 0
Mode: External Reference
$Comp
L power:+5V #PWR026
U 1 1 5E5E0495
P 7700 5950
F 0 "#PWR026" H 7700 5800 50  0001 C CNN
F 1 "+5V" H 7715 6123 50  0000 C CNN
F 2 "" H 7700 5950 50  0001 C CNN
F 3 "" H 7700 5950 50  0001 C CNN
	1    7700 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 6050 7700 5950
Wire Wire Line
	7700 6050 7850 6050
$Comp
L power:+3V3 #PWR028
U 1 1 5E61521D
P 8750 4150
F 0 "#PWR028" H 8750 4000 50  0001 C CNN
F 1 "+3V3" H 8765 4323 50  0000 C CNN
F 2 "" H 8750 4150 50  0001 C CNN
F 3 "" H 8750 4150 50  0001 C CNN
	1    8750 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 5E615227
P 8350 4150
F 0 "#PWR027" H 8350 4000 50  0001 C CNN
F 1 "+5V" H 8365 4323 50  0000 C CNN
F 2 "" H 8350 4150 50  0001 C CNN
F 3 "" H 8350 4150 50  0001 C CNN
	1    8350 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4250 8350 4250
Wire Wire Line
	8350 4250 8350 4150
Wire Wire Line
	8350 4350 8350 4250
Connection ~ 8350 4250
Wire Wire Line
	9350 4650 9350 4250
Wire Wire Line
	9350 4250 8750 4250
Wire Wire Line
	8750 4250 8750 4350
Wire Wire Line
	8750 4250 8750 4150
Connection ~ 8750 4250
Wire Wire Line
	9250 4650 9350 4650
Text GLabel 9250 5150 2    50   Output ~ 0
ANALOG_G_OTR
Text Notes 9400 4650 0    50   ~ 0
Clamp: Disabled
$Comp
L power:GND #PWR057
U 1 1 5E6244DE
P 9550 4850
F 0 "#PWR057" H 9550 4600 50  0001 C CNN
F 1 "GND" H 9555 4677 50  0000 C CNN
F 2 "" H 9550 4850 50  0001 C CNN
F 3 "" H 9550 4850 50  0001 C CNN
	1    9550 4850
	1    0    0    -1  
$EndComp
Text Notes 9700 4850 0    50   ~ 0
No Standby
Text Notes 9700 4950 0    50   ~ 0
No Tristate
$Comp
L power:GND #PWR062
U 1 1 5E63338E
P 13050 6550
F 0 "#PWR062" H 13050 6300 50  0001 C CNN
F 1 "GND" H 13055 6377 50  0000 C CNN
F 2 "" H 13050 6550 50  0001 C CNN
F 3 "" H 13050 6550 50  0001 C CNN
	1    13050 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	12950 6550 13050 6550
Connection ~ 13050 6550
Wire Wire Line
	13050 6550 13150 6550
NoConn ~ 12350 5850
NoConn ~ 12350 4850
Text GLabel 12350 5550 0    50   UnSpc ~ 0
ANALOG_REF_LO
Text GLabel 12350 5350 0    50   UnSpc ~ 0
ANALOG_REF_HI
Wire Wire Line
	12350 5650 11400 5650
$Comp
L Device:C_Small C27
U 1 1 5E6333AB
P 11400 5450
F 0 "C27" H 11492 5496 50  0000 L CNN
F 1 "0.1uF" H 11492 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 11400 5450 50  0001 C CNN
F 3 "~" H 11400 5450 50  0001 C CNN
	1    11400 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C25
U 1 1 5E6333B5
P 10950 5450
F 0 "C25" H 11042 5496 50  0000 L CNN
F 1 "10uF" H 11042 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10950 5450 50  0001 C CNN
F 3 "~" H 10950 5450 50  0001 C CNN
	1    10950 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C24
U 1 1 5E6333BF
P 10500 5850
F 0 "C24" H 10592 5896 50  0000 L CNN
F 1 "0.1uF" H 10592 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10500 5850 50  0001 C CNN
F 3 "~" H 10500 5850 50  0001 C CNN
	1    10500 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C26
U 1 1 5E6333C9
P 10950 5850
F 0 "C26" H 11042 5896 50  0000 L CNN
F 1 "0.1uF" H 11042 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10950 5850 50  0001 C CNN
F 3 "~" H 10950 5850 50  0001 C CNN
	1    10950 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR059
U 1 1 5E6333D3
P 10950 6050
F 0 "#PWR059" H 10950 5800 50  0001 C CNN
F 1 "GND" H 10955 5877 50  0000 C CNN
F 2 "" H 10950 6050 50  0001 C CNN
F 3 "" H 10950 6050 50  0001 C CNN
	1    10950 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 5350 10950 5250
Connection ~ 10950 5250
Wire Wire Line
	10950 5250 11400 5250
Wire Wire Line
	11400 5350 11400 5250
Connection ~ 11400 5250
Wire Wire Line
	11400 5250 12350 5250
Wire Wire Line
	11400 5550 11400 5650
Connection ~ 11400 5650
Wire Wire Line
	11400 5650 10950 5650
Wire Wire Line
	10950 5550 10950 5650
Connection ~ 10950 5650
Wire Wire Line
	10950 5950 10950 6050
Wire Wire Line
	10500 5250 10950 5250
Wire Wire Line
	10500 5950 10500 6050
Wire Wire Line
	10950 5750 10950 5650
$Comp
L power:GND #PWR058
U 1 1 5E6333EC
P 10500 6050
F 0 "#PWR058" H 10500 5800 50  0001 C CNN
F 1 "GND" H 10505 5877 50  0000 C CNN
F 2 "" H 10500 6050 50  0001 C CNN
F 3 "" H 10500 6050 50  0001 C CNN
	1    10500 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 5250 10500 5750
Wire Wire Line
	12350 5050 12250 5050
Wire Wire Line
	12250 5050 12250 4250
Text Notes 12200 5050 2    50   ~ 0
Mode: External Reference
$Comp
L power:+5V #PWR060
U 1 1 5E6333FA
P 12200 5950
F 0 "#PWR060" H 12200 5800 50  0001 C CNN
F 1 "+5V" H 12215 6123 50  0000 C CNN
F 2 "" H 12200 5950 50  0001 C CNN
F 3 "" H 12200 5950 50  0001 C CNN
	1    12200 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12200 6050 12200 5950
Wire Wire Line
	12200 6050 12350 6050
$Comp
L power:+3V3 #PWR063
U 1 1 5E633406
P 13250 4150
F 0 "#PWR063" H 13250 4000 50  0001 C CNN
F 1 "+3V3" H 13265 4323 50  0000 C CNN
F 2 "" H 13250 4150 50  0001 C CNN
F 3 "" H 13250 4150 50  0001 C CNN
	1    13250 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR061
U 1 1 5E633410
P 12850 4150
F 0 "#PWR061" H 12850 4000 50  0001 C CNN
F 1 "+5V" H 12865 4323 50  0000 C CNN
F 2 "" H 12850 4150 50  0001 C CNN
F 3 "" H 12850 4150 50  0001 C CNN
	1    12850 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	12250 4250 12850 4250
Wire Wire Line
	12850 4250 12850 4150
Wire Wire Line
	12850 4350 12850 4250
Connection ~ 12850 4250
Wire Wire Line
	13850 4650 13850 4250
Wire Wire Line
	13850 4250 13250 4250
Wire Wire Line
	13250 4250 13250 4350
Wire Wire Line
	13250 4250 13250 4150
Connection ~ 13250 4250
Wire Wire Line
	13750 4650 13850 4650
Text Notes 13900 4650 0    50   ~ 0
Clamp: Disabled
$Comp
L power:GND #PWR064
U 1 1 5E633426
P 14050 4850
F 0 "#PWR064" H 14050 4600 50  0001 C CNN
F 1 "GND" H 14055 4677 50  0000 C CNN
F 2 "" H 14050 4850 50  0001 C CNN
F 3 "" H 14050 4850 50  0001 C CNN
	1    14050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	13850 4850 14050 4850
Text Notes 14200 4850 0    50   ~ 0
No Standby
Text Notes 14200 4950 0    50   ~ 0
No Tristate
Wire Wire Line
	12000 3200 12000 4650
Wire Wire Line
	9350 4950 9250 4950
Wire Wire Line
	9250 4850 9350 4850
Wire Wire Line
	9350 4850 9350 4950
Connection ~ 9350 4850
Wire Wire Line
	9350 4850 9550 4850
Wire Wire Line
	13850 4850 13850 4950
Wire Wire Line
	13850 4950 13750 4950
Wire Wire Line
	13750 4850 13850 4850
Connection ~ 13850 4850
Text GLabel 13750 5150 2    50   Output ~ 0
ANALOG_B_OTR
Text Notes 4200 1150 0    50   ~ 0
TODO: Make this voltage reference more easily tweakable.
$Comp
L Connector:TestPoint TP10
U 1 1 5E6C3881
P 6800 1850
F 0 "TP10" H 6858 1968 50  0000 L CNN
F 1 "TP_AREF_HI" H 6858 1877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7000 1850 50  0001 C CNN
F 3 "~" H 7000 1850 50  0001 C CNN
	1    6800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2050 7400 2050
Wire Wire Line
	6600 1950 6800 1950
Wire Wire Line
	6800 1850 6800 1950
Connection ~ 6800 1950
Wire Wire Line
	6800 1950 7950 1950
$Comp
L Connector:TestPoint TP11
U 1 1 5E6D90A7
P 7400 1850
F 0 "TP11" H 7458 1968 50  0000 L CNN
F 1 "TP_AREF_LO" H 7458 1877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7600 1850 50  0001 C CNN
F 3 "~" H 7600 1850 50  0001 C CNN
	1    7400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1850 7400 2050
Connection ~ 7400 2050
Wire Wire Line
	7400 2050 6600 2050
$EndSCHEMATC
