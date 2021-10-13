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
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 61260F51
P 3200 3100
F 0 "U1" H 3200 2050 50  0000 C CNN
F 1 "ATmega328P-AU" H 3200 1950 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 3200 3100 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 3200 3100 50  0001 C CNN
	1    3200 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 61264253
P 9650 1850
F 0 "#PWR0101" H 9650 1700 50  0001 C CNN
F 1 "+5V" H 9665 2023 50  0000 C CNN
F 2 "" H 9650 1850 50  0001 C CNN
F 3 "" H 9650 1850 50  0001 C CNN
	1    9650 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 61265A45
P 4600 2450
F 0 "C1" V 4440 2450 50  0000 C CNN
F 1 "C" V 4439 2450 50  0001 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4638 2300 50  0001 C CNN
F 3 "~" H 4600 2450 50  0001 C CNN
	1    4600 2450
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 6126698C
P 4250 2600
F 0 "Y1" V 4250 2731 50  0000 L CNN
F 1 "Crystal" V 4295 2731 50  0001 L CNN
F 2 "Footy:Crystal_16MHz_SMD" H 4250 2600 50  0001 C CNN
F 3 "~" H 4250 2600 50  0001 C CNN
	1    4250 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 2450 4100 2450
Wire Wire Line
	4100 2450 4100 2500
Wire Wire Line
	4100 2500 3800 2500
Wire Wire Line
	3800 2600 4100 2600
Wire Wire Line
	4100 2600 4100 2750
Wire Wire Line
	4100 2750 4250 2750
$Comp
L Device:C C2
U 1 1 612696A1
P 4600 2750
F 0 "C2" V 4440 2750 50  0000 C CNN
F 1 "C" V 4439 2750 50  0001 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4638 2600 50  0001 C CNN
F 3 "~" H 4600 2750 50  0001 C CNN
	1    4600 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 2450 4250 2450
Connection ~ 4250 2450
Wire Wire Line
	4450 2750 4250 2750
Connection ~ 4250 2750
Wire Wire Line
	4750 2450 4950 2450
Wire Wire Line
	4950 2450 4950 2750
Wire Wire Line
	4950 2750 4750 2750
Wire Wire Line
	4950 2750 4950 2900
Connection ~ 4950 2750
$Comp
L power:GND #PWR0102
U 1 1 6126D6AC
P 4950 2900
F 0 "#PWR0102" H 4950 2650 50  0001 C CNN
F 1 "GND" H 4955 2727 50  0000 C CNN
F 2 "" H 4950 2900 50  0001 C CNN
F 3 "" H 4950 2900 50  0001 C CNN
	1    4950 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6126DBB7
P 9650 2050
F 0 "#PWR0103" H 9650 1800 50  0001 C CNN
F 1 "GND" H 9655 1877 50  0000 C CNN
F 2 "" H 9650 2050 50  0001 C CNN
F 3 "" H 9650 2050 50  0001 C CNN
	1    9650 2050
	1    0    0    -1  
$EndComp
Text GLabel 3800 3600 2    50   Input ~ 0
RXD
Text GLabel 3800 3700 2    50   Output ~ 0
TXD
Text GLabel 3800 3800 2    50   BiDi ~ 0
D2
Text GLabel 3800 3900 2    50   BiDi ~ 0
D3
Text GLabel 3800 4000 2    50   BiDi ~ 0
D4
Text GLabel 3800 4100 2    50   BiDi ~ 0
D5
Text GLabel 3800 4200 2    50   BiDi ~ 0
D6
Text GLabel 3800 4300 2    50   BiDi ~ 0
D7
Text GLabel 4100 3400 2    50   Input ~ 0
RESET
Text GLabel 3800 2800 2    50   Input ~ 0
A0
Text GLabel 3800 2900 2    50   Input ~ 0
A1
Text GLabel 3800 3000 2    50   Input ~ 0
A2
Text GLabel 3800 3100 2    50   Input ~ 0
A3
Text GLabel 4100 3200 2    50   Input ~ 0
A4
Text GLabel 4100 3300 2    50   Input ~ 0
A5
Text GLabel 3800 1900 2    50   BiDi ~ 0
D8
Text GLabel 3800 2000 2    50   BiDi ~ 0
D9
Text GLabel 3800 2100 2    50   BiDi ~ 0
D10
Text GLabel 3800 2200 2    50   BiDi ~ 0
D11\MOSI
Text GLabel 3800 2300 2    50   BiDi ~ 0
D12\MISO
Text GLabel 3800 2400 2    50   BiDi ~ 0
D13\SCK
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 6126CADD
P 6250 4350
F 0 "J3" H 6300 4575 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 6300 4576 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 6250 4350 50  0001 C CNN
F 3 "~" H 6250 4350 50  0001 C CNN
	1    6250 4350
	1    0    0    -1  
$EndComp
Text GLabel 9750 1850 2    50   Output ~ 0
VCC
Text GLabel 9750 2050 2    50   Output ~ 0
GND
Text GLabel 3200 1600 1    50   Input ~ 0
VCC
Wire Wire Line
	3300 1600 3200 1600
Text GLabel 6050 4250 0    50   Input ~ 0
D12\MISO
Text GLabel 6050 4350 0    50   Input ~ 0
D13\SCK
Text GLabel 6050 4450 0    50   Input ~ 0
RESET
Text GLabel 6550 4250 2    50   Input ~ 0
VCC
Text GLabel 6550 4350 2    50   Input ~ 0
D11\MOSI
Text GLabel 6550 4450 2    50   Input ~ 0
GND
$Comp
L Device:R_Small R1
U 1 1 6126F3D6
P 1750 3250
F 0 "R1" H 1809 3296 50  0000 L CNN
F 1 "10K" H 1809 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1750 3250 50  0001 C CNN
F 3 "~" H 1750 3250 50  0001 C CNN
	1    1750 3250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 612700C5
P 1400 3450
F 0 "SW1" H 1400 3643 50  0000 C CNN
F 1 "SW_Push" H 1400 3644 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1400 3650 50  0001 C CNN
F 3 "~" H 1400 3650 50  0001 C CNN
	1    1400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3350 1750 3450
Wire Wire Line
	1750 3450 1600 3450
Text Label 1750 3450 2    50   ~ 0
RESET
Text Label 4100 3400 2    50   ~ 0
RESET
Wire Wire Line
	3800 3400 4100 3400
Text GLabel 1750 3000 1    50   Input ~ 0
VCC
Wire Wire Line
	1750 3000 1750 3150
Text GLabel 1000 3650 3    50   Input ~ 0
GND
Wire Wire Line
	1200 3450 1000 3450
Wire Wire Line
	1000 3450 1000 3650
Text Notes 6700 4050 2    50   ~ 0
Złącze ICSP do programowania
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 612794D5
P 6300 3600
F 0 "J2" H 6380 3642 50  0000 L CNN
F 1 "Złącze DS18B20" H 6380 3551 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 6300 3600 50  0001 C CNN
F 3 "~" H 6300 3600 50  0001 C CNN
	1    6300 3600
	1    0    0    -1  
$EndComp
Text GLabel 5550 3450 0    50   Input ~ 0
VCC
Text GLabel 6100 3700 0    50   Input ~ 0
GND
$Comp
L Device:R_Small R2
U 1 1 6127A232
P 5750 3550
F 0 "R2" H 5600 3600 50  0000 L CNN
F 1 "4,7K" H 5550 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5750 3550 50  0001 C CNN
F 3 "~" H 5750 3550 50  0001 C CNN
	1    5750 3550
	1    0    0    -1  
$EndComp
Text GLabel 5550 3650 0    50   Input ~ 0
D8
Wire Wire Line
	5550 3450 5750 3450
Wire Wire Line
	5750 3450 6100 3450
Wire Wire Line
	6100 3450 6100 3500
Connection ~ 5750 3450
Wire Wire Line
	5750 3650 5550 3650
Wire Wire Line
	5750 3650 5900 3650
Wire Wire Line
	5900 3650 5900 3600
Wire Wire Line
	5900 3600 6100 3600
Connection ~ 5750 3650
Text GLabel 3200 4600 3    50   Input ~ 0
GND
Text Notes 5500 3300 0    50   ~ 0
Terminal dla czujnika temperatury
$Comp
L Converter_ACDC:HLK-PM01 PS1
U 1 1 61284E14
P 8900 1950
F 0 "PS1" H 8900 2275 50  0000 C CNN
F 1 "HLK-PM01" H 8900 2184 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_HiLink_HLK-PMxx" H 8900 1650 50  0001 C CNN
F 3 "http://www.hlktech.net/product_detail.php?ProId=54" H 9300 1600 50  0001 C CNN
	1    8900 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 61286505
P 8150 1900
F 0 "F1" V 7953 1900 50  0000 C CNN
F 1 "1A" V 8044 1900 50  0000 C CNN
F 2 "Footy:FuseHolder PTF-78" V 8080 1900 50  0001 C CNN
F 3 "~" H 8150 1900 50  0001 C CNN
	1    8150 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 1900 8400 1900
Wire Wire Line
	8400 1900 8400 1850
Wire Wire Line
	8400 1850 8450 1850
Wire Wire Line
	8400 2000 8400 2050
Wire Wire Line
	8400 2050 8500 2050
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 6128E5BF
P 7600 2000
F 0 "J1" H 7600 1750 50  0000 C CNN
F 1 "Zasilanie 230VAC" H 7600 1800 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 7600 2000 50  0001 C CNN
F 3 "~" H 7600 2000 50  0001 C CNN
	1    7600 2000
	-1   0    0    1   
$EndComp
Text Label 7900 1900 2    50   ~ 0
L
Text Label 7900 2000 2    50   ~ 0
N
Wire Wire Line
	9300 1850 9400 1850
Wire Wire Line
	9300 2050 9400 2050
Wire Wire Line
	9750 1850 9650 1850
Connection ~ 9650 1850
Wire Wire Line
	9750 2050 9650 2050
Connection ~ 9650 2050
$Comp
L Connector:Screw_Terminal_01x03 J4
U 1 1 612963FF
P 7600 3300
F 0 "J4" H 7600 3050 50  0000 C CNN
F 1 "Złącze pompy" H 7600 3100 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 7600 3300 50  0001 C CNN
F 3 "~" H 7600 3300 50  0001 C CNN
	1    7600 3300
	-1   0    0    1   
$EndComp
Text Label 7900 2100 2    50   ~ 0
PE
$Comp
L Device:CP_Small C3
U 1 1 612992A1
P 9400 1950
F 0 "C3" H 9488 1996 50  0000 L CNN
F 1 "220uF" H 9488 1905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 9400 1950 50  0001 C CNN
F 3 "~" H 9400 1950 50  0001 C CNN
	1    9400 1950
	1    0    0    -1  
$EndComp
Connection ~ 9400 1850
Wire Wire Line
	9400 1850 9650 1850
Connection ~ 9400 2050
Wire Wire Line
	9400 2050 9650 2050
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 6129A165
P 6300 2750
F 0 "J5" H 6380 2742 50  0000 L CNN
F 1 "Wyświetlacz LCD" H 6380 2651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6300 2750 50  0001 C CNN
F 3 "~" H 6300 2750 50  0001 C CNN
	1    6300 2750
	1    0    0    -1  
$EndComp
Text GLabel 6100 2650 0    50   Input ~ 0
VCC
Text GLabel 6100 2950 0    50   Input ~ 0
GND
Text GLabel 5750 2850 0    50   Input ~ 0
A5
Text GLabel 5750 2750 0    50   Input ~ 0
A4
Wire Wire Line
	6100 2750 5750 2750
Wire Wire Line
	5750 2850 6100 2850
Text Label 5900 2750 2    50   ~ 0
SDA
Text Label 5900 2850 2    50   ~ 0
SCL
Text Notes 6700 2500 2    50   ~ 0
Złącze wyświetlacza LCD 16x2 
$Comp
L Connector_Generic:Conn_01x05 J6
U 1 1 612A8254
P 6300 2050
F 0 "J6" H 6380 2092 50  0000 L CNN
F 1 "Enkoder obrotowy" H 6380 2001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 6300 2050 50  0001 C CNN
F 3 "~" H 6300 2050 50  0001 C CNN
	1    6300 2050
	1    0    0    -1  
$EndComp
Text GLabel 6100 2250 0    50   Input ~ 0
GND
Text GLabel 6100 2150 0    50   Input ~ 0
VCC
Text GLabel 5900 2050 0    50   Input ~ 0
D4
Text GLabel 5900 1950 0    50   Input ~ 0
D3
Text GLabel 5900 1850 0    50   Input ~ 0
D2
Wire Wire Line
	6100 1850 5900 1850
Wire Wire Line
	5900 1950 6100 1950
Wire Wire Line
	5900 2050 6100 2050
Text Label 6100 1850 2    50   ~ 0
CLK
Text Label 6050 1950 2    50   ~ 0
DT
Text Label 6050 2050 2    50   ~ 0
SW
Text Notes 6600 1700 2    50   ~ 0
Złącze enkodera obrotowego
$Comp
L Relay:RM50-xx21 K1
U 1 1 612B2312
P 8600 3300
F 0 "K1" H 8650 3200 50  0000 R CNN
F 1 "Załączenie pompy" H 9700 3300 50  0001 R CNN
F 2 "Relay_THT:Relay_SPST_Finder_32.21-x300" H 9870 3270 50  0001 C CNN
F 3 "http://www.relpol.pl/en/content/download/13683/165953/file/e_RM50.pdf" H 8600 3300 50  0001 C CNN
	1    8600 3300
	-1   0    0    1   
$EndComp
$Comp
L Relay:RM50-xx21 K2
U 1 1 612B5B0A
P 8600 4400
F 0 "K2" H 8650 4300 50  0000 R CNN
F 1 "Załączenie sygnalizatora alarmu" H 10250 4450 50  0001 R CNN
F 2 "Relay_THT:Relay_SPST_Finder_32.21-x300" H 9870 4370 50  0001 C CNN
F 3 "http://www.relpol.pl/en/content/download/13683/165953/file/e_RM50.pdf" H 8600 4400 50  0001 C CNN
	1    8600 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 1850 8450 2850
Wire Wire Line
	8450 2850 8400 2850
Wire Wire Line
	8400 2850 8400 3000
Wire Wire Line
	8400 2850 8050 2850
Wire Wire Line
	8050 2850 8050 4100
Wire Wire Line
	8050 4100 8400 4100
Connection ~ 8400 2850
Text GLabel 9750 3350 0    50   Input ~ 0
D7
Text GLabel 9750 4450 0    50   Input ~ 0
D9
Text GLabel 10250 4650 3    50   Input ~ 0
GND
Text GLabel 10250 3550 3    50   Input ~ 0
GND
$Comp
L Device:D D1
U 1 1 612C1285
P 9150 3300
F 0 "D1" V 9196 3220 50  0000 R CNN
F 1 "1N4007" V 9105 3220 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_KathodeUp" H 9150 3300 50  0001 C CNN
F 3 "~" H 9150 3300 50  0001 C CNN
	1    9150 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D2
U 1 1 612C1CEB
P 9150 4400
F 0 "D2" V 9196 4320 50  0000 R CNN
F 1 "1N4007" V 9105 4320 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_KathodeUp" H 9150 4400 50  0001 C CNN
F 3 "~" H 9150 4400 50  0001 C CNN
	1    9150 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8800 3000 9150 3000
Wire Wire Line
	9150 3000 9150 3150
Wire Wire Line
	9150 3450 9150 3600
Wire Wire Line
	9150 3600 8800 3600
Wire Wire Line
	8800 3600 8800 3650
Connection ~ 8800 3600
Wire Wire Line
	8800 2950 8800 3000
Connection ~ 8800 3000
Wire Wire Line
	8800 4050 8800 4100
Wire Wire Line
	8800 4100 9150 4100
Wire Wire Line
	9150 4100 9150 4250
Connection ~ 8800 4100
Wire Wire Line
	9150 4550 9150 4700
Wire Wire Line
	9150 4700 8800 4700
Wire Wire Line
	8800 4750 8800 4700
Connection ~ 8800 4700
Connection ~ 8450 1850
Wire Wire Line
	8450 1850 8500 1850
Wire Wire Line
	8300 3600 8150 3600
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 612D6E2F
P 7600 4450
F 0 "J7" H 7600 4200 50  0000 C CNN
F 1 "Złącze brzęczyka" H 7550 4250 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 7600 4450 50  0001 C CNN
F 3 "~" H 7600 4450 50  0001 C CNN
	1    7600 4450
	-1   0    0    1   
$EndComp
Text GLabel 8800 3650 3    50   Input ~ 0
VCC
Text GLabel 8800 4750 3    50   Input ~ 0
VCC
$Comp
L Device:R_Small R3
U 1 1 6128CB81
P 9850 3350
F 0 "R3" H 9700 3400 50  0000 L CNN
F 1 "4,7K" H 9600 3300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9850 3350 50  0001 C CNN
F 3 "~" H 9850 3350 50  0001 C CNN
	1    9850 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 61294148
P 9850 4450
F 0 "R4" H 9700 4500 50  0000 L CNN
F 1 "4,7K" H 9600 4400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9850 4450 50  0001 C CNN
F 3 "~" H 9850 4450 50  0001 C CNN
	1    9850 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 3600 8150 3400
Wire Wire Line
	8150 3400 7800 3400
Wire Wire Line
	8300 4700 8150 4700
Wire Wire Line
	8150 4700 8150 4450
Wire Wire Line
	8150 4450 7800 4450
Wire Wire Line
	7800 1900 8000 1900
Wire Wire Line
	7800 2000 7950 2000
Wire Wire Line
	7800 2100 7900 2100
Wire Wire Line
	7900 2100 7900 3200
Wire Wire Line
	7900 3200 7800 3200
Wire Wire Line
	7950 2000 7950 3300
Wire Wire Line
	7950 3300 7800 3300
Connection ~ 7950 2000
Wire Wire Line
	7950 2000 8400 2000
Wire Wire Line
	7950 3300 7950 4350
Wire Wire Line
	7950 4350 7800 4350
Connection ~ 7950 3300
Wire Wire Line
	10250 2950 8800 2950
Wire Wire Line
	10250 2950 10250 3150
Wire Wire Line
	10250 4050 8800 4050
Wire Wire Line
	10250 4050 10250 4250
Wire Wire Line
	3800 3200 4100 3200
Wire Wire Line
	3800 3300 4100 3300
Text Label 3950 3200 0    50   ~ 0
SDA
Text Label 3950 3300 0    50   ~ 0
SCL
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 613111FB
P 10850 800
F 0 "#LOGO1" H 10850 1075 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10850 575 50  0001 C CNN
F 2 "" H 10850 800 50  0001 C CNN
F 3 "~" H 10850 800 50  0001 C CNN
	1    10850 800 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q2
U 1 1 613BCDB9
P 10150 4450
F 0 "Q2" H 10341 4496 50  0000 L CNN
F 1 "BC182" H 10341 4405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10350 4375 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 10150 4450 50  0001 L CNN
	1    10150 4450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q1
U 1 1 613BD08D
P 10150 3350
F 0 "Q1" H 10341 3396 50  0000 L CNN
F 1 "BC182" H 10341 3305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10350 3275 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 10150 3350 50  0001 L CNN
	1    10150 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 613EBFEE
P 2100 2050
F 0 "C4" H 2215 2096 50  0000 L CNN
F 1 "100nF" H 2215 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2138 1900 50  0001 C CNN
F 3 "~" H 2100 2050 50  0001 C CNN
	1    2100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1900 2100 1900
Text GLabel 2100 2200 3    50   Input ~ 0
GND
Text Notes 600  600  0    50   ~ 0
Kondensatory C1, C2, C4 - 1206
Text Notes 600  750  0    50   ~ 0
Rezystory 0805
Text Notes 5550 4750 0    50   ~ 0
Przycisk kasowania alarmu
Text GLabel 6100 4900 0    50   Input ~ 0
D10
Text GLabel 6100 5000 0    50   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 61406930
P 6300 4900
F 0 "J8" H 6380 4892 50  0000 L CNN
F 1 "Złącze kasowania alarmu" H 6380 4801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6300 4900 50  0001 C CNN
F 3 "~" H 6300 4900 50  0001 C CNN
	1    6300 4900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
