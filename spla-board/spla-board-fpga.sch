EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 3 8
Title "SPLA Board - FPGA"
Date "2020-02-26"
Rev "4"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SPLA:LFE5U-45F-BG256 U1
U 2 1 5FE7A859
P 4000 2850
F 0 "U1" H 4000 4641 39  0000 C CNN
F 1 "LFE5U-45F-BG256" H 4000 4566 39  0000 C CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 3050 4850 39  0001 C CNN
F 3 "" H 3050 4850 39  0001 C CNN
	2    4000 2850
	1    0    0    -1  
$EndComp
$Comp
L SPLA:LFE5U-45F-BG256 U1
U 3 1 5FE7C96F
P 6500 2850
F 0 "U1" H 6500 4641 39  0000 C CNN
F 1 "LFE5U-45F-BG256" H 6500 4566 39  0000 C CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 5550 4850 39  0001 C CNN
F 3 "" H 5550 4850 39  0001 C CNN
	3    6500 2850
	1    0    0    -1  
$EndComp
$Comp
L SPLA:LFE5U-45F-BG256 U1
U 4 1 5FE801DD
P 9000 2850
F 0 "U1" H 9000 4641 39  0000 C CNN
F 1 "LFE5U-45F-BG256" H 9000 4566 39  0000 C CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 8050 4850 39  0001 C CNN
F 3 "" H 8050 4850 39  0001 C CNN
	4    9000 2850
	1    0    0    -1  
$EndComp
$Comp
L SPLA:LFE5U-45F-BG256 U1
U 6 1 5FE8A82C
P 14000 2850
F 0 "U1" H 14000 4641 39  0000 C CNN
F 1 "LFE5U-45F-BG256" H 14000 4566 39  0000 C CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 13050 4850 39  0001 C CNN
F 3 "" H 13050 4850 39  0001 C CNN
	6    14000 2850
	1    0    0    -1  
$EndComp
$Comp
L SPLA:LFE5U-45F-BG256 U1
U 8 1 5FE9BDBE
P 1850 10100
F 0 "U1" H 1933 10491 39  0000 C CNN
F 1 "LFE5U-45F-BG256" H 1933 10416 39  0000 C CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 900 12100 39  0001 C CNN
F 3 "" H 900 12100 39  0001 C CNN
	8    1850 10100
	1    0    0    -1  
$EndComp
$Comp
L SPLA:LFE5U-45F-BG256 U1
U 9 1 5FEA1A1C
P 8850 10050
F 0 "U1" H 8850 10500 39  0000 C CNN
F 1 "LFE5U-45F-BG256" H 8850 10400 39  0000 C CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 7900 12050 39  0001 C CNN
F 3 "" H 7900 12050 39  0001 C CNN
	9    8850 10050
	1    0    0    -1  
$EndComp
$Comp
L SPLA:LFE5U-45F-BG256 U1
U 5 1 5FE85A63
P 11500 2850
F 0 "U1" H 11500 4641 39  0000 C CNN
F 1 "LFE5U-45F-BG256" H 11500 4566 39  0000 C CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 10550 4850 39  0001 C CNN
F 3 "" H 10550 4850 39  0001 C CNN
	5    11500 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 6001AFBA
P 2800 9650
F 0 "J2" V 2600 9650 50  0000 R CNN
F 1 "Conn_01x04_Male" V 2700 9950 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2800 9650 50  0001 C CNN
F 3 "~" H 2800 9650 50  0001 C CNN
	1    2800 9650
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 10050 3400 10050
Wire Wire Line
	2250 10150 2700 10150
Wire Wire Line
	3800 10250 2600 10250
Wire Wire Line
	8350 9600 8250 9600
Connection ~ 7850 9600
Wire Wire Line
	7850 9600 7750 9600
Connection ~ 7950 9600
Wire Wire Line
	7950 9600 7850 9600
Connection ~ 8050 9600
Wire Wire Line
	8050 9600 7950 9600
Connection ~ 8150 9600
Wire Wire Line
	8150 9600 8050 9600
Connection ~ 8250 9600
Wire Wire Line
	8250 9600 8150 9600
$Comp
L power:+1V1 #PWR06
U 1 1 5E57DE98
P 7750 9500
F 0 "#PWR06" H 7750 9350 50  0001 C CNN
F 1 "+1V1" H 7765 9673 50  0000 C CNN
F 2 "" H 7750 9500 50  0001 C CNN
F 3 "" H 7750 9500 50  0001 C CNN
	1    7750 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 9600 7750 9500
$Comp
L power:+2V5 #PWR08
U 1 1 5E57F036
P 9450 9500
F 0 "#PWR08" H 9450 9350 50  0001 C CNN
F 1 "+2V5" H 9465 9673 50  0000 C CNN
F 2 "" H 9450 9500 50  0001 C CNN
F 3 "" H 9450 9500 50  0001 C CNN
	1    9450 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 9600 9550 9600
Wire Wire Line
	9450 9600 9450 9500
Connection ~ 9550 9600
Wire Wire Line
	9550 9600 9450 9600
$Comp
L power:GND #PWR05
U 1 1 5E5915FB
P 7450 10600
F 0 "#PWR05" H 7450 10350 50  0001 C CNN
F 1 "GND" H 7455 10427 50  0000 C CNN
F 2 "" H 7450 10600 50  0001 C CNN
F 3 "" H 7450 10600 50  0001 C CNN
	1    7450 10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 10500 10050 10500
Wire Wire Line
	7450 10500 7450 10600
Connection ~ 7550 10500
Wire Wire Line
	7550 10500 7450 10500
Connection ~ 7650 10500
Wire Wire Line
	7650 10500 7550 10500
Connection ~ 7750 10500
Wire Wire Line
	7750 10500 7650 10500
Connection ~ 7850 10500
Wire Wire Line
	7850 10500 7750 10500
Connection ~ 7950 10500
Wire Wire Line
	7950 10500 7850 10500
Connection ~ 8050 10500
Wire Wire Line
	8050 10500 7950 10500
Connection ~ 8150 10500
Wire Wire Line
	8150 10500 8050 10500
Connection ~ 8250 10500
Wire Wire Line
	8250 10500 8150 10500
Connection ~ 8350 10500
Wire Wire Line
	8350 10500 8250 10500
Connection ~ 8450 10500
Wire Wire Line
	8450 10500 8350 10500
Connection ~ 8550 10500
Wire Wire Line
	8550 10500 8450 10500
Connection ~ 8650 10500
Wire Wire Line
	8650 10500 8550 10500
Connection ~ 8750 10500
Wire Wire Line
	8750 10500 8650 10500
Connection ~ 8850 10500
Wire Wire Line
	8850 10500 8750 10500
Connection ~ 8950 10500
Wire Wire Line
	8950 10500 8850 10500
Connection ~ 9050 10500
Wire Wire Line
	9050 10500 8950 10500
Connection ~ 9150 10500
Wire Wire Line
	9150 10500 9050 10500
Connection ~ 9250 10500
Wire Wire Line
	9250 10500 9150 10500
Connection ~ 9350 10500
Wire Wire Line
	9350 10500 9250 10500
Connection ~ 9450 10500
Wire Wire Line
	9450 10500 9350 10500
Connection ~ 9550 10500
Wire Wire Line
	9550 10500 9450 10500
Connection ~ 9650 10500
Wire Wire Line
	9650 10500 9550 10500
Connection ~ 9750 10500
Wire Wire Line
	9750 10500 9650 10500
Connection ~ 9850 10500
Wire Wire Line
	9850 10500 9750 10500
Connection ~ 9950 10500
Wire Wire Line
	9950 10500 9850 10500
Connection ~ 10050 10500
Wire Wire Line
	10050 10500 9950 10500
$Comp
L power:+3V3 #PWR02
U 1 1 5E716C18
P 1800 7050
F 0 "#PWR02" H 1800 6900 50  0001 C CNN
F 1 "+3V3" H 1815 7223 50  0000 C CNN
F 2 "" H 1800 7050 50  0001 C CNN
F 3 "" H 1800 7050 50  0001 C CNN
	1    1800 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01
U 1 1 5E72C255
P 850 2400
F 0 "#PWR01" H 850 2250 50  0001 C CNN
F 1 "+3V3" H 865 2573 50  0000 C CNN
F 2 "" H 850 2400 50  0001 C CNN
F 3 "" H 850 2400 50  0001 C CNN
	1    850  2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR03
U 1 1 5E73C391
P 3350 2000
F 0 "#PWR03" H 3350 1850 50  0001 C CNN
F 1 "+3V3" H 3365 2173 50  0000 C CNN
F 2 "" H 3350 2000 50  0001 C CNN
F 3 "" H 3350 2000 50  0001 C CNN
	1    3350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2000 3350 2100
Connection ~ 3350 2100
Wire Wire Line
	3350 2100 3350 2200
$Comp
L power:+3V3 #PWR04
U 1 1 5E751C41
P 5850 2000
F 0 "#PWR04" H 5850 1850 50  0001 C CNN
F 1 "+3V3" H 5865 2173 50  0000 C CNN
F 2 "" H 5850 2000 50  0001 C CNN
F 3 "" H 5850 2000 50  0001 C CNN
	1    5850 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2000 5850 2100
Connection ~ 5850 2100
Wire Wire Line
	5850 2100 5850 2200
$Comp
L power:+3V3 #PWR07
U 1 1 5E775978
P 8350 2000
F 0 "#PWR07" H 8350 1850 50  0001 C CNN
F 1 "+3V3" H 8365 2173 50  0000 C CNN
F 2 "" H 8350 2000 50  0001 C CNN
F 3 "" H 8350 2000 50  0001 C CNN
	1    8350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2000 8350 2100
Connection ~ 8350 2100
Wire Wire Line
	8350 2100 8350 2200
$Comp
L power:+3V3 #PWR09
U 1 1 5E785304
P 10850 2000
F 0 "#PWR09" H 10850 1850 50  0001 C CNN
F 1 "+3V3" H 10865 2173 50  0000 C CNN
F 2 "" H 10850 2000 50  0001 C CNN
F 3 "" H 10850 2000 50  0001 C CNN
	1    10850 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 2000 10850 2100
Connection ~ 10850 2100
Wire Wire Line
	10850 2100 10850 2200
$Comp
L power:+3V3 #PWR010
U 1 1 5E79AC7A
P 13350 2000
F 0 "#PWR010" H 13350 1850 50  0001 C CNN
F 1 "+3V3" H 13365 2173 50  0000 C CNN
F 2 "" H 13350 2000 50  0001 C CNN
F 3 "" H 13350 2000 50  0001 C CNN
	1    13350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 2000 13350 2100
Connection ~ 13350 2100
Wire Wire Line
	13350 2100 13350 2200
Wire Wire Line
	1800 7050 1800 7150
$Comp
L SPLA:LFE5U-45F-BG256 U1
U 7 1 5FE95AA6
P 2450 7850
F 0 "U1" H 2387 9041 39  0000 C CNN
F 1 "LFE5U-45F-BG256" H 2387 8966 39  0000 C CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 1500 9850 39  0001 C CNN
F 3 "" H 1500 9850 39  0001 C CNN
	7    2450 7850
	1    0    0    -1  
$EndComp
Text GLabel 9650 2800 2    50   BiDi ~ 0
FPGA_D0
Text GLabel 12150 1500 2    50   Output ~ 0
FPGA_PD_OE
Text GLabel 9650 2700 2    50   BiDi ~ 0
FPGA_D1
Text GLabel 9650 2600 2    50   BiDi ~ 0
FPGA_D2
Text GLabel 9650 2500 2    50   BiDi ~ 0
FPGA_D3
Text GLabel 9650 2400 2    50   BiDi ~ 0
FPGA_D4
Text GLabel 9650 2300 2    50   BiDi ~ 0
FPGA_D5
Text GLabel 9650 2200 2    50   BiDi ~ 0
FPGA_D6
Text GLabel 9650 2100 2    50   BiDi ~ 0
FPGA_D7
Text GLabel 9650 2000 2    50   Output ~ 0
FPGA_PA0
Text GLabel 12150 1400 2    50   Output ~ 0
FPGA_PA_OE
Text GLabel 9650 1900 2    50   Output ~ 0
FPGA_PA1
Text GLabel 9650 1800 2    50   Output ~ 0
FPGA_PA2
Text GLabel 9650 1700 2    50   Output ~ 0
FPGA_PA3
Text GLabel 9650 1600 2    50   Output ~ 0
FPGA_PA4
Text GLabel 9650 1500 2    50   Output ~ 0
FPGA_PA5
Text GLabel 9650 1400 2    50   Output ~ 0
FPGA_PA6
Text GLabel 9650 1300 2    50   Output ~ 0
FPGA_PA7
Text GLabel 9650 3600 2    50   BiDi ~ 0
FPGA_VAB0
Text GLabel 9650 3500 2    50   BiDi ~ 0
FPGA_VAB1
Text GLabel 9650 3400 2    50   BiDi ~ 0
FPGA_VAB2
Text GLabel 9650 3300 2    50   BiDi ~ 0
FPGA_VAB3
Text GLabel 9650 3200 2    50   BiDi ~ 0
FPGA_VAB4
Text GLabel 9650 3100 2    50   BiDi ~ 0
FPGA_VAB5
Text GLabel 9650 3000 2    50   BiDi ~ 0
FPGA_VAB6
Text GLabel 9650 2900 2    50   BiDi ~ 0
FPGA_VAB7
Text GLabel 9650 4400 2    50   BiDi ~ 0
FPGA_VAA0
Text GLabel 9650 4300 2    50   BiDi ~ 0
FPGA_VAA1
Text GLabel 9650 4200 2    50   BiDi ~ 0
FPGA_VAA2
Text GLabel 9650 4100 2    50   BiDi ~ 0
FPGA_VAA3
Text GLabel 9650 4000 2    50   BiDi ~ 0
FPGA_VAA4
Text GLabel 9650 3900 2    50   BiDi ~ 0
FPGA_VAA5
Text GLabel 9650 3800 2    50   BiDi ~ 0
FPGA_VAA6
Text GLabel 9650 3700 2    50   BiDi ~ 0
FPGA_VAA7
Text GLabel 7150 4400 2    50   BiDi ~ 0
FPGA_VAA8
Text GLabel 7150 4300 2    50   BiDi ~ 0
FPGA_VAA9
Text GLabel 7150 4200 2    50   BiDi ~ 0
FPGA_VAA10
Text GLabel 7150 4100 2    50   BiDi ~ 0
FPGA_VAA11
Text GLabel 7150 4000 2    50   BiDi ~ 0
FPGA_VAA12
Text GLabel 7150 3900 2    50   BiDi ~ 0
FPGA_VAA13
Text GLabel 7150 3800 2    50   BiDi ~ 0
FPGA_VA14
Text GLabel 12150 1300 2    50   Output ~ 0
FPGA_VA_OE
Text GLabel 7150 3400 2    50   BiDi ~ 0
FPGA_VAB8
Text GLabel 7150 3300 2    50   BiDi ~ 0
FPGA_VAB9
Text GLabel 7150 3200 2    50   BiDi ~ 0
FPGA_VAB10
Text GLabel 7150 3100 2    50   BiDi ~ 0
FPGA_VAB11
Text GLabel 7150 3000 2    50   BiDi ~ 0
FPGA_VAB12
Text GLabel 7150 2900 2    50   BiDi ~ 0
FPGA_VAB13
Text GLabel 7150 3700 2    39   BiDi ~ 0
FGPA_~VRD~
Text GLabel 7150 3600 2    39   BiDi ~ 0
FPGA_~VAWR~
Text GLabel 7150 3500 2    39   BiDi ~ 0
FPGA_~VBWR~
Text GLabel 4650 2000 2    50   BiDi ~ 0
FPGA_VDB0
Text GLabel 4650 1900 2    50   BiDi ~ 0
FPGA_VDB1
Text GLabel 4650 1800 2    50   BiDi ~ 0
FPGA_VDB2
Text GLabel 4650 1700 2    50   BiDi ~ 0
FPGA_VDB3
Text GLabel 4650 1600 2    50   BiDi ~ 0
FPGA_VDB4
Text GLabel 4650 1500 2    50   BiDi ~ 0
FPGA_VDB5
Text GLabel 4650 1400 2    50   BiDi ~ 0
FPGA_VDB6
Text GLabel 4650 1300 2    50   BiDi ~ 0
FPGA_VDB7
Text GLabel 4650 2800 2    50   BiDi ~ 0
FPGA_VDA0
Text GLabel 4650 2700 2    50   BiDi ~ 0
FPGA_VDA1
Text GLabel 4650 2600 2    50   BiDi ~ 0
FPGA_VDA2
Text GLabel 4650 2500 2    50   BiDi ~ 0
FPGA_VDA3
Text GLabel 4650 2400 2    50   BiDi ~ 0
FPGA_VDA4
Text GLabel 4650 2300 2    50   BiDi ~ 0
FPGA_VDA5
Text GLabel 4650 2200 2    50   BiDi ~ 0
FPGA_VDA6
Text GLabel 4650 2100 2    50   BiDi ~ 0
FPGA_VDA7
Text GLabel 12150 1600 2    50   Output ~ 0
FPGA_VD_OE
Text GLabel 7150 2800 2    50   Input ~ 0
FPGA_CHR3
Text GLabel 7150 2700 2    50   Input ~ 0
FPGA_CHR2
Text GLabel 7150 2600 2    50   Input ~ 0
FPGA_CHR1
Text GLabel 7150 2500 2    50   Input ~ 0
FPGA_CHR0
Text GLabel 7150 2200 2    50   Input ~ 0
FPGA_COLOR2
Text GLabel 7150 2100 2    50   Input ~ 0
FPGA_COLOR1
Text GLabel 7150 2000 2    50   Input ~ 0
FPGA_COLOR0
Text GLabel 7150 2400 2    50   Input ~ 0
FPGA_PRIO1
Text GLabel 7150 2300 2    50   Input ~ 0
FPGA_PRIO0
Text GLabel 12150 2400 2    50   Output ~ 0
FPGA_PPUBUS_OE
Text GLabel 4650 4300 2    39   Output ~ 0
FPGA_~VCLD~
Text GLabel 4650 4200 2    39   Output ~ 0
FPGA_~HCLD
Text GLabel 4650 4100 2    50   Output ~ 0
FPGA_FIELD
Text GLabel 4650 4000 2    39   Output ~ 0
FPGA_~OVER~
Text GLabel 4650 4400 2    39   Output ~ 0
FPGA_~5M~
Text GLabel 7150 1900 2    39   Input ~ 0
FPGA_~BURST~
Text GLabel 7150 1800 2    39   Input ~ 0
FPGA_~CSYNC~
Text GLabel 7150 1700 2    39   Output ~ 0
FPGA_~PARD~
Text GLabel 12150 2100 2    50   Output ~ 0
FPGA_CTL_OE
Text GLabel 7150 1600 2    39   Output ~ 0
FPGA_~PAWR~
Text GLabel 7150 1500 2    50   Input ~ 0
FPGA_PPU2_HBLANK
Text GLabel 7150 1400 2    50   Input ~ 0
FPGA_PPU2_VBLANK
Text GLabel 12150 3800 2    39   Output ~ 0
FPGA_PPU2_~RESET~
Text GLabel 12150 3900 2    39   Output ~ 0
FPGA_PPU1_~RESET~
Text GLabel 12150 3700 2    39   Input ~ 0
FPGA_PPU2_~RESOUT0~
Text GLabel 12150 3600 2    39   Input ~ 0
FPGA_PPU2_~RESOUT1~
Text GLabel 12150 2300 2    50   Output ~ 0
FPGA_EXTRA_OE
Text GLabel 4650 3900 2    39   BiDi ~ 0
FGPA_PPU1_~EXTSYNC~
Text GLabel 4650 3500 2    50   BiDi ~ 0
FPGA_PPU2_HVCMODE
Text GLabel 4650 3800 2    50   BiDi ~ 0
FGPA_PPU1_HVCMODE
Text GLabel 4650 3700 2    39   BiDi ~ 0
FPGA_PPU1_~MASTER~
Text GLabel 4650 3600 2    50   BiDi ~ 0
FPGA_PPU1_PALMODE
Text GLabel 4650 3400 2    50   BiDi ~ 0
FPGA_PPU2_EXTLATCH
Text GLabel 4650 3300 2    50   BiDi ~ 0
FPGA_PPU2_PALMODE
Text GLabel 4650 3100 2    50   Input ~ 0
FPGA_PPU2_3.58M
Text GLabel 12150 4200 2    39   BiDi ~ 0
FPGA_PPU2_~TOUMEI~
Text GLabel 7150 1300 2    50   Output ~ 0
FPGA_XIN
Text GLabel 12150 2200 2    50   Output ~ 0
FPGA_MISC_OE
Text GLabel 4650 3200 2    39   Input ~ 0
FPGA_PPU2_~5MOUT~
Text GLabel 4650 3000 2    39   BiDi ~ 0
FPGA_PPU2_~PED~
Text GLabel 14650 1800 2    50   BiDi ~ 0
FPGA_5VBODGE1
Text GLabel 14650 1700 2    50   BiDi ~ 0
FPGA_5VBODGE2
Text GLabel 14650 1600 2    50   BiDi ~ 0
FPGA_5VBODGE3
Text GLabel 14650 1500 2    50   BiDi ~ 0
FPGA_5VBODGE4
Text GLabel 3100 6900 2    50   Output ~ 0
SPI_CLK
Text GLabel 3100 7600 2    50   Output ~ 0
SPI_MOSI
Text GLabel 3100 7500 2    50   Input ~ 0
SPI_MISO
Text GLabel 3100 7700 2    39   Input ~ 0
SPI_~CS~
Text GLabel 14650 3200 2    39   Input ~ 0
FIFO_~RXF~
Text GLabel 14650 3300 2    39   Input ~ 0
FIFO_~TXE~
Text GLabel 14650 3400 2    39   Output ~ 0
FIFO_~RD~
Text GLabel 14650 3500 2    39   Output ~ 0
FIFO_~WR~
Text GLabel 14650 3700 2    50   Input ~ 0
FIFO_CLKOUT
Text GLabel 14650 3800 2    39   Output ~ 0
FIFO_~OE~
Text GLabel 14650 3600 2    50   Output ~ 0
FIFO_SIWU
Text GLabel 14650 3000 2    50   BiDi ~ 0
FIFO_D7
Text GLabel 14650 2900 2    50   BiDi ~ 0
FIFO_D6
Text GLabel 14650 2800 2    50   BiDi ~ 0
FIFO_D5
Text GLabel 14650 2700 2    50   BiDi ~ 0
FIFO_D4
Text GLabel 14650 2600 2    50   BiDi ~ 0
FIFO_D3
Text GLabel 14650 2500 2    50   BiDi ~ 0
FIFO_D2
Text GLabel 14650 2400 2    50   BiDi ~ 0
FIFO_D1
Text GLabel 14650 2300 2    50   BiDi ~ 0
FIFO_D0
Text Notes 3900 7100 0    50   ~ 0
CFG[2..0] = 001 (Slave SPI mode)
$Comp
L power:GND #PWR046
U 1 1 5EBE02C8
P 3750 7300
F 0 "#PWR046" H 3750 7050 50  0001 C CNN
F 1 "GND" H 3755 7127 50  0000 C CNN
F 2 "" H 3750 7300 50  0001 C CNN
F 3 "" H 3750 7300 50  0001 C CNN
	1    3750 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR045
U 1 1 5EBE3AA8
P 3750 6900
F 0 "#PWR045" H 3750 6750 50  0001 C CNN
F 1 "+3.3V" H 3765 7073 50  0000 C CNN
F 2 "" H 3750 6900 50  0001 C CNN
F 3 "" H 3750 6900 50  0001 C CNN
	1    3750 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 7000 3750 6900
Text GLabel 3100 7400 2    39   BiDi ~ 0
~INIT
Text GLabel 3100 8800 2    39   Input ~ 0
~PROGRAM
Text GLabel 3100 7300 2    50   BiDi ~ 0
DONE
Text Notes 6350 5550 0    101  ~ 0
TODO: FPGA pins are in semi-arbitrary order; still need proper layout pin mapping.
NoConn ~ 3100 7800
NoConn ~ 3100 8000
NoConn ~ 3100 8100
NoConn ~ 3100 8200
NoConn ~ 3100 8300
NoConn ~ 3100 8400
NoConn ~ 3100 8500
NoConn ~ 3100 8600
NoConn ~ 3100 8700
NoConn ~ 12150 3400
NoConn ~ 12150 3500
NoConn ~ 12150 4000
NoConn ~ 12150 4100
NoConn ~ 14650 3900
NoConn ~ 14650 4000
NoConn ~ 14650 4100
NoConn ~ 14650 4200
NoConn ~ 14650 4300
NoConn ~ 14650 4400
Text Notes 14950 2050 0    50   ~ 0
FTDI signals on left side.
Text Notes 12300 2550 0    50   ~ 0
"Slow" signals on left side.
Text Notes 7000 800  0    50   ~ 0
SNES signals on top and right side.
NoConn ~ 12150 3300
NoConn ~ 12150 3000
NoConn ~ 12150 2900
NoConn ~ 12150 2800
NoConn ~ 12150 2700
NoConn ~ 12150 2600
NoConn ~ 12150 2500
NoConn ~ 12150 2400
NoConn ~ 14650 1300
NoConn ~ 14650 1400
NoConn ~ 14650 1900
NoConn ~ 14650 2000
NoConn ~ 14650 2100
NoConn ~ 14650 2200
Text Notes 8300 9000 0    50   ~ 0
TODO: Add decoupling capacitors
Wire Wire Line
	3100 7100 3750 7100
Wire Wire Line
	3750 7100 3750 7200
Wire Wire Line
	3100 7200 3750 7200
Connection ~ 3750 7200
Wire Wire Line
	3750 7200 3750 7300
Wire Wire Line
	3100 7000 3750 7000
Text GLabel 3800 9950 2    50   Input ~ 0
JTAG_TMS
Text GLabel 3800 10050 2    50   Input ~ 0
JTAG_TCK
Text GLabel 3800 10150 2    50   Input ~ 0
JTAG_TDI
Text GLabel 3800 10250 2    50   Input ~ 0
JTAG_TDO
Wire Wire Line
	2900 9850 2900 9950
Connection ~ 2900 9950
Wire Wire Line
	2900 9950 3400 9950
Wire Wire Line
	2800 9850 2800 10050
Connection ~ 2800 10050
Wire Wire Line
	2800 10050 2250 10050
Wire Wire Line
	2700 9850 2700 10150
Connection ~ 2700 10150
Wire Wire Line
	2700 10150 3800 10150
Connection ~ 2600 10250
Wire Wire Line
	2600 10250 2250 10250
Wire Wire Line
	2600 9850 2600 10250
Wire Wire Line
	2250 9950 2900 9950
NoConn ~ 3100 7900
NoConn ~ 14650 3100
Text GLabel 2150 2100 2    50   Input ~ 0
ANALOG_R0
Text GLabel 2150 2200 2    50   Input ~ 0
ANALOG_R1
Text GLabel 2150 2300 2    50   Input ~ 0
ANALOG_R2
Text GLabel 2150 2400 2    50   Input ~ 0
ANALOG_R3
Text GLabel 2150 2500 2    50   Input ~ 0
ANALOG_R4
Text GLabel 2150 2600 2    50   Input ~ 0
ANALOG_R5
Text GLabel 2150 2700 2    50   Input ~ 0
ANALOG_R6
Text GLabel 2150 2800 2    50   Input ~ 0
ANALOG_R7
Text GLabel 2150 3300 2    50   Output ~ 0
ANALOG_CLK
Text GLabel 2150 2900 2    50   Input ~ 0
ANALOG_G0
Text GLabel 2150 3000 2    50   Input ~ 0
ANALOG_G1
Text GLabel 2150 3100 2    50   Input ~ 0
ANALOG_G2
Text GLabel 2150 3200 2    50   Input ~ 0
ANALOG_G3
Text GLabel 2150 3400 2    50   Input ~ 0
ANALOG_G4
Text GLabel 2150 3500 2    50   Input ~ 0
ANALOG_G5
Text GLabel 2150 3600 2    50   Input ~ 0
ANALOG_G6
Text GLabel 2150 3700 2    50   Input ~ 0
ANALOG_G7
Text GLabel 2150 3800 2    50   Input ~ 0
ANALOG_B0
Text GLabel 2150 3900 2    50   Input ~ 0
ANALOG_B1
Text GLabel 2150 4000 2    50   Input ~ 0
ANALOG_B2
Text GLabel 2150 4100 2    50   Input ~ 0
ANALOG_B3
Text GLabel 2150 4200 2    50   Input ~ 0
ANALOG_B4
Text GLabel 2150 4300 2    50   Input ~ 0
ANALOG_B5
Text GLabel 2150 4400 2    50   Input ~ 0
ANALOG_B6
Text GLabel 4650 2900 2    50   Output ~ 0
ANALOG_B7
Wire Wire Line
	850  2400 850  2500
$Comp
L SPLA:LFE5U-45F-BG256 U1
U 1 1 5FE74FBD
P 1500 3250
F 0 "U1" H 1500 4641 39  0000 C CNN
F 1 "LFE5U-45F-BG256" H 1500 4566 39  0000 C CNN
F 2 "Package_BGA:BGA-256_14.0x14.0mm_Layout16x16_P0.8mm_Ball0.45mm_Pad0.32mm_NSMD" H 550 5250 39  0001 C CNN
F 3 "" H 550 5250 39  0001 C CNN
	1    1500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2500 850  2600
Connection ~ 850  2500
Text GLabel 12150 3100 2    50   Output ~ 0
PWR_5V_EN
Text GLabel 12150 3200 2    50   Input ~ 0
PWR_OVERFLAG
$Comp
L Device:R_Small R13
U 1 1 5E5D3141
P 3400 9750
F 0 "R13" H 3459 9796 50  0000 L CNN
F 1 "4.7k" H 3459 9705 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3400 9750 50  0001 C CNN
F 3 "~" H 3400 9750 50  0001 C CNN
	1    3400 9750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5E5E7554
P 3400 10450
F 0 "R14" H 3459 10496 50  0000 L CNN
F 1 "4.7k" H 3459 10405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3400 10450 50  0001 C CNN
F 3 "~" H 3400 10450 50  0001 C CNN
	1    3400 10450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR047
U 1 1 5E5EFF92
P 3400 9550
F 0 "#PWR047" H 3400 9400 50  0001 C CNN
F 1 "+3V3" H 3415 9723 50  0000 C CNN
F 2 "" H 3400 9550 50  0001 C CNN
F 3 "" H 3400 9550 50  0001 C CNN
	1    3400 9550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 5E5F54EF
P 3400 10650
F 0 "#PWR048" H 3400 10400 50  0001 C CNN
F 1 "GND" H 3405 10477 50  0000 C CNN
F 2 "" H 3400 10650 50  0001 C CNN
F 3 "" H 3400 10650 50  0001 C CNN
	1    3400 10650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 9550 3400 9650
Wire Wire Line
	3400 9850 3400 9950
Connection ~ 3400 9950
Wire Wire Line
	3400 9950 3800 9950
Wire Wire Line
	3400 10350 3400 10050
Connection ~ 3400 10050
Wire Wire Line
	3400 10050 2800 10050
Wire Wire Line
	3400 10550 3400 10650
Text GLabel 12150 1900 2    50   Input ~ 0
CLK_12MHZ
Text GLabel 12150 1700 2    50   Input ~ 0
CLK_12MHZ
NoConn ~ 12150 1800
NoConn ~ 12150 2000
NoConn ~ 12150 4300
NoConn ~ 12150 4400
$EndSCHEMATC
