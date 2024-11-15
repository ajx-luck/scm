INDF         EQU         H'000'
TMR0         EQU         H'001'
PCL      EQU         H'002'
STATUS       EQU         H'003'
FSR      EQU         H'004'
PORTA        EQU         H'005'
PORTB        EQU         H'006'
PCLATH       EQU         H'00A'
INTCON       EQU         H'00B'
PIR1         EQU         H'00C'
PIR2         EQU         H'00D'
TMR2         EQU         H'011'
T2CON        EQU         H'012'
AFECON1      EQU         H'015'
AFECON2      EQU         H'016'
AFECON3      EQU         H'017'
AFECON4      EQU         H'018'
AFERES0      EQU         H'019'
AFERES1      EQU         H'01A'
AFERES2      EQU         H'01B'
OPTION_REG       EQU         H'081'
TRISA        EQU         H'085'
TRISB        EQU         H'086'
WPDA         EQU         H'089'
PIE1         EQU         H'08C'
PIE2         EQU         H'08D'
IOCA         EQU         H'08E'
OSCCON       EQU         H'08F'
OSCTUNE      EQU         H'090'
PR2      EQU         H'092'
WPUB         EQU         H'095'
IOCB         EQU         H'096'
RCSTA0       EQU         H'097'
TXSTA0       EQU         H'098'
SPBRG0       EQU         H'099'
TXREG0       EQU         H'09A'
RCREG0       EQU         H'09B'
ADCON0       EQU         H'09C'
ADCON1       EQU         H'09D'
ADRESL       EQU         H'09E'
ADRESH       EQU         H'09F'
WDTCON       EQU         H'0105'
WPDB         EQU         H'0107'
EEDAT        EQU         H'010C'
EEADR        EQU         H'010D'
EEDATH       EQU         H'010E'
EEADRH       EQU         H'010F'
TABLE_SPH        EQU         H'0110'
TABLE_SPL        EQU         H'0111'
TABLE_DATAH      EQU         H'0112'
ANSEL        EQU         H'0113'
LVDCON       EQU         H'0114'
LCDCON0      EQU         H'0115'
LCDCON1      EQU         H'0116'
LCDADD       EQU         H'0117'
LCDDATA      EQU         H'0118'
COMEN        EQU         H'0119'
SEGEN0       EQU         H'011A'
SEGEN1       EQU         H'011B'
SEGEN2       EQU         H'011C'
BUZCON0      EQU         H'011D'
BUZCON1      EQU         H'011E'
EECON1       EQU         H'018C'
EECON2       EQU         H'018D'
WPUA         EQU         H'018E'
;------------------------ STATUS  Bits------------------------
IRP      EQU        H'07'
RP1      EQU        H'06'
RP0      EQU        H'05'
TO       EQU        H'04'
PD       EQU        H'03'
Z        EQU        H'02'
DC       EQU        H'01'
C        EQU        H'00'

;------------------------ PORTA  Bits------------------------
RA3      EQU        H'03'
RA2      EQU        H'02'
RA1      EQU        H'01'
RA0      EQU        H'00'

;------------------------ PORTB  Bits------------------------
RB7      EQU        H'07'
RB6      EQU        H'06'
RB5      EQU        H'05'
RB4      EQU        H'04'
RB3      EQU        H'03'
RB2      EQU        H'02'
RB1      EQU        H'01'
RB0      EQU        H'00'

;------------------------ INTCON  Bits------------------------
GIE      EQU        H'07'
PEIE         EQU        H'06'
T0IE         EQU        H'05'
INTE         EQU        H'04'
RBIE         EQU        H'03'
T0IF         EQU        H'02'
INTF         EQU        H'01'
RBIF         EQU        H'00'

;------------------------ PIR1  Bits------------------------
RC0IF        EQU        H'05'
TX0IF        EQU        H'04'
EEIF         EQU        H'03'
ADIF         EQU        H'02'
TMR2IF       EQU        H'01'

;------------------------ PIR2  Bits------------------------
RACIF        EQU        H'05'
AFEIF        EQU        H'02'
LVDIF        EQU        H'00'

;------------------------ T2CON  Bits------------------------
CLK_SEL      EQU        H'07'
TOUTPS3      EQU        H'06'
TOUTPS2      EQU        H'05'
TOUTPS1      EQU        H'04'
TOUTPS0      EQU        H'03'
TMR2ON       EQU        H'02'
T2CKPS1      EQU        H'01'
T2CKPS0      EQU        H'00'

;------------------------ AFECON1  Bits------------------------
BYPASSLDO        EQU        H'07'
ENBLDO       EQU        H'06'
SET_LDO1         EQU        H'05'
SET_LDO0         EQU        H'04'
OCP_DIS_LDO      EQU        H'03'
ADC_ST       EQU        H'02'
CLK_DIV      EQU        H'01'
RDY      EQU        H'00'

;------------------------ AFECON2  Bits------------------------
ENBAFE       EQU        H'07'
LPWRPGA      EQU        H'06'
PGA_SEL2         EQU        H'05'
PGA_SEL1         EQU        H'04'
PGA_SEL0         EQU        H'03'
ENSAR1       EQU        H'02'
ENSAR0       EQU        H'01'
ENCHOPB      EQU        H'00'

;------------------------ AFECON3  Bits------------------------
CH_SEL3      EQU        H'07'
CH_SEL2      EQU        H'06'
CH_SEL1      EQU        H'05'
CH_SEL0      EQU        H'04'
RB01_SEL         EQU        H'01'
EN_ADTESTGN      EQU        H'00'

;------------------------ AFECON4  Bits------------------------
OSR2         EQU        H'07'
OSR1         EQU        H'06'
OSR0         EQU        H'05'
FCHOP_ADC        EQU        H'04'
FADC         EQU        H'03'
LPWR         EQU        H'02'

;------------------------ OPTION_REG  Bits------------------------
INTEDG       EQU        H'06'
T0CS         EQU        H'05'
T0SE         EQU        H'04'
PSA      EQU        H'03'
PS2      EQU        H'02'
PS1      EQU        H'01'
PS0      EQU        H'00'

;------------------------ TRISA  Bits------------------------
TRISA3       EQU        H'03'
TRISA2       EQU        H'02'
TRISA1       EQU        H'01'
TRISA0       EQU        H'00'

;------------------------ TRISB  Bits------------------------
TRISB7       EQU        H'07'
TRISB6       EQU        H'06'
TRISB5       EQU        H'05'
TRISB4       EQU        H'04'
TRISB3       EQU        H'03'
TRISB2       EQU        H'02'
TRISB1       EQU        H'01'
TRISB0       EQU        H'00'

;------------------------ WPDA  Bits------------------------
WPDA3        EQU        H'03'
WPDA2        EQU        H'02'
WPDA1        EQU        H'01'
WPDA0        EQU        H'00'

;------------------------ PIE1  Bits------------------------
RC0IE        EQU        H'05'
TX0IE        EQU        H'04'
EEIE         EQU        H'03'
ADIE         EQU        H'02'
TMR2IE       EQU        H'01'

;------------------------ PIE2  Bits------------------------
RACIE        EQU        H'05'
AFEIE        EQU        H'02'
LVDIE        EQU        H'00'

;------------------------ IOCA  Bits------------------------
IOCA3        EQU        H'03'
IOCA2        EQU        H'02'
IOCA1        EQU        H'01'
IOCA0        EQU        H'00'

;------------------------ OSCCON  Bits------------------------
IRCF2        EQU        H'06'
IRCF1        EQU        H'05'
IRCF0        EQU        H'04'
SCS      EQU        H'00'

;------------------------ OSCTUNE  Bits------------------------
TUN6         EQU        H'06'
TUN5         EQU        H'05'
TUN4         EQU        H'04'
TUN3         EQU        H'03'
TUN2         EQU        H'02'
TUN1         EQU        H'01'
TUN0         EQU        H'00'

;------------------------ WPUB  Bits------------------------
WPUB7        EQU        H'07'
WPUB6        EQU        H'06'
WPUB5        EQU        H'05'
WPUB4        EQU        H'04'
WPUB3        EQU        H'03'
WPUB2        EQU        H'02'
WPUB1        EQU        H'01'
WPUB0        EQU        H'00'

;------------------------ IOCB  Bits------------------------
IOCB7        EQU        H'07'
IOCB6        EQU        H'06'
IOCB5        EQU        H'05'
IOCB4        EQU        H'04'
IOCB3        EQU        H'03'
IOCB2        EQU        H'02'
IOCB1        EQU        H'01'
IOCB0        EQU        H'00'

;------------------------ RCSTA0  Bits------------------------
SPEN         EQU        H'07'
RX9EN        EQU        H'06'
SREN         EQU        H'05'
CREN         EQU        H'04'
RCIDL        EQU        H'03'
FERR         EQU        H'02'
OERR         EQU        H'01'
RX9D         EQU        H'00'

;------------------------ TXSTA0  Bits------------------------
CSRC         EQU        H'07'
TX9EN        EQU        H'06'
TXEN         EQU        H'05'
SYNC         EQU        H'04'
SCKP         EQU        H'03'
STOPBIT      EQU        H'02'
TRMT0        EQU        H'01'
TX9D0        EQU        H'00'

;------------------------ ADCON0  Bits------------------------
ADCS1        EQU        H'07'
ADCS0        EQU        H'06'
CHS3         EQU        H'05'
CHS2         EQU        H'04'
CHS1         EQU        H'03'
CHS0         EQU        H'02'
GODONE       EQU        H'01'
ADON         EQU        H'00'

;------------------------ ADCON1  Bits------------------------
ADFM         EQU        H'07'
ADCS2        EQU        H'05'

;------------------------ WDTCON  Bits------------------------
SWDTEN       EQU        H'00'

;------------------------ WPDB  Bits------------------------
WPDB7        EQU        H'07'
WPDB6        EQU        H'06'
WPDB5        EQU        H'05'
WPDB4        EQU        H'04'
WPDB3        EQU        H'03'
WPDB2        EQU        H'02'
WPDB1        EQU        H'01'
WPDB0        EQU        H'00'

;------------------------ EEDAT  Bits------------------------
EEDAT7       EQU        H'07'
EEDAT6       EQU        H'06'
EEDAT5       EQU        H'05'
EEDAT4       EQU        H'04'
EEDAT3       EQU        H'03'
EEDAT2       EQU        H'02'
EEDAT1       EQU        H'01'
EEDAT0       EQU        H'00'

;------------------------ EEADR  Bits------------------------
EEADR7       EQU        H'07'
EEADR6       EQU        H'06'
EEADR5       EQU        H'05'
EEADR4       EQU        H'04'
EEADR3       EQU        H'03'
EEADR2       EQU        H'02'
EEADR1       EQU        H'01'
EEADR0       EQU        H'00'

;------------------------ EEDATH  Bits------------------------
EEDATH7      EQU        H'07'
EEDATH6      EQU        H'06'
EEDATH5      EQU        H'05'
EEDATH4      EQU        H'04'
EEDATH3      EQU        H'03'
EEDATH2      EQU        H'02'
EEDATH1      EQU        H'01'
EEDATH0      EQU        H'00'

;------------------------ EEADRH  Bits------------------------
EEADRH4      EQU        H'04'
EEADRH3      EQU        H'03'
EEADRH2      EQU        H'02'
EEADRH1      EQU        H'01'
EEADRH0      EQU        H'00'

;------------------------ ANSEL  Bits------------------------
ANS5         EQU        H'05'
ANS4         EQU        H'04'
ANS3         EQU        H'03'
ANS2         EQU        H'02'
ANS1         EQU        H'01'
ANS0         EQU        H'00'

;------------------------ LVDCON  Bits------------------------
LVD_RES      EQU        H'07'
LVD_MODE1        EQU        H'06'
LVD_MODE0        EQU        H'05'
LVD_SEL3         EQU        H'04'
LVD_SEL2         EQU        H'03'
LVD_SEL1         EQU        H'02'
LVD_SEL0         EQU        H'01'
LVDEN        EQU        H'00'

;------------------------ LCDCON0  Bits------------------------
LCDEN        EQU        H'07'
BIAS         EQU        H'06'
COMSEL1      EQU        H'05'
COMSEL0      EQU        H'04'
LCDCLK3      EQU        H'03'
LCDCLK2      EQU        H'02'
LCDCLK1      EQU        H'01'
LCDCLK0      EQU        H'00'

;------------------------ LCDCON1  Bits------------------------
CPREN        EQU        H'07'
LCDF         EQU        H'06'
SEGOUT1      EQU        H'05'
SEGOUT0      EQU        H'04'
VLCDX1       EQU        H'01'
VLCDX0       EQU        H'00'

;------------------------ LCDADD  Bits------------------------
LCDCS        EQU        H'07'
B2RES        EQU        H'06'
LCDADD4      EQU        H'04'
LCDADD3      EQU        H'03'
LCDADD2      EQU        H'02'
LCDADD1      EQU        H'01'
LCDADD0      EQU        H'00'

;------------------------ LCDDATA  Bits------------------------
LCDDATA3         EQU        H'03'
LCDDATA2         EQU        H'02'
LCDDATA1         EQU        H'01'
LCDDATA0         EQU        H'00'

;------------------------ COMEN  Bits------------------------
COM3EN       EQU        H'03'
COM2EN       EQU        H'02'
COM1EN       EQU        H'01'
COM0EN       EQU        H'00'

;------------------------ SEGEN0  Bits------------------------
SEG7EN       EQU        H'07'
SEG6EN       EQU        H'06'
SEG5EN       EQU        H'05'
SEG4EN       EQU        H'04'
SEG3EN       EQU        H'03'
SEG2EN       EQU        H'02'
SEG1EN       EQU        H'01'
SEG0EN       EQU        H'00'

;------------------------ SEGEN1  Bits------------------------
SEG15EN      EQU        H'07'
SEG14EN      EQU        H'06'
SEG13EN      EQU        H'05'
SEG12EN      EQU        H'04'
SEG11EN      EQU        H'03'
SEG10EN      EQU        H'02'
SEG9EN       EQU        H'01'
SEG8EN       EQU        H'00'

;------------------------ SEGEN2  Bits------------------------
SEG19EN      EQU        H'03'
SEG18EN      EQU        H'02'
SEG17EN      EQU        H'01'
SEG16EN      EQU        H'00'

;------------------------ BUZCON1  Bits------------------------
BUZEN        EQU        H'07'
BUZDIV1      EQU        H'01'
BUZDIV0      EQU        H'00'

;------------------------ EECON1  Bits------------------------
EEPGD        EQU        H'07'
EETIME1      EQU        H'05'
EETIME0      EQU        H'04'
WRERR        EQU        H'03'
WREN         EQU        H'02'
WR       EQU        H'01'
RD       EQU        H'00'

;------------------------ WPUA  Bits------------------------
WPUA3        EQU        H'03'
WPUA2        EQU        H'02'
WPUA1        EQU        H'01'
WPUA0        EQU        H'00'

