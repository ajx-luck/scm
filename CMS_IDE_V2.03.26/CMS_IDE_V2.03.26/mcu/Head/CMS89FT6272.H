;**************************************************************************
;----- BANK0 Register -----------------------------------------------------
INDF						EQU		H'0000'
TMR0						EQU		H'0001'
PCL							EQU		H'0002'
STATUS						EQU		H'0003'
FLAGS						EQU		H'0003'
FSR							EQU		H'0004'
PORTA						EQU		H'0005'
PORTB						EQU		H'0006'
PORTC						EQU		H'0007'
PORTD						EQU		H'0008'
WPUC						EQU		H'0009'
PCLATH						EQU		H'000A'
INTCON						EQU		H'000B'
PIR1						EQU		H'000C'
PIR2						EQU		H'000D'

TMR2						EQU		H'0011'
T2CON						EQU		H'0012'
TKM016DL					EQU		H'0013'
TKM016DH					EQU		H'0014'
TKM0ROL						EQU		H'0015'
TKM0ROH						EQU		H'0016'
TKM0C1						EQU		H'0017'
TKM0C0						EQU		H'0018'

ADRESH						EQU		H'001E'
ADCON0						EQU		H'001F'

;----- BANK1 Register -----------------------------------------------------
;INDF						EQU		H'0080'
OPTION_REG					EQU		H'0081'
;PCL						EQU		H'0082'
;STATUS						EQU		H'0083'
;FSR						EQU		H'0084'
TRISA						EQU		H'0085'
TRISB						EQU		H'0086'
TRISC						EQU		H'0087'
TRISD						EQU		H'0088'
WPUD						EQU		H'0089'
;PCLATH						EQU		H'008A'
;INTCON						EQU		H'008B'
PIE1						EQU		H'008C'
PIE2						EQU		H'008D'

OSCCON						EQU		H'008F'
OSCTUNE						EQU		H'0090'
SSPCON2						EQU		H'0091'
PR2							EQU		H'0092'
SSPADD						EQU		H'0093'
SSPMSK						EQU		H'0093'
SSPSTAT						EQU		H'0094'
SSPCON						EQU		H'0095'
SSPBUF						EQU		H'0096'

TKM116DL					EQU		H'0098'
TKM116DH					EQU		H'0099'
TKM1ROL						EQU		H'009A'
TKM1ROH						EQU		H'009B'
TKM1C1						EQU		H'009C'
TKM1C0						EQU		H'009D'
ADRESL						EQU		H'009E'
ADCON1						EQU		H'009F'

;----- BANK2 Register -----------------------------------------------------
;INDF						EQU		H'0100'
;TMR0						EQU		H'0101'
;PCL						EQU		H'0102'
;STATUS						EQU		H'0103'
;FSR						EQU		H'0104'
WDTCON						EQU		H'0105'
;PORTB						EQU		H'0106'
WPUB						EQU		H'0107'
WPUA						EQU		H'0108'

;PCLATH						EQU		H'010A'
;INTCON						EQU		H'010B'
EEDATA						EQU		H'010C'
EEADR						EQU		H'010D'
EEDATH						EQU		H'010E'

TABLE_SPH					EQU		H'0110'
TABLE_SPL					EQU		H'0111'
TABLE_DATAH					EQU		H'0112'
TK16DL						EQU		H'0113'
TK16DH						EQU		H'0114'
TKTMR						EQU		H'0115'
TKC0						EQU		H'0116'
TKC1						EQU		H'0117'

LEDCON0						EQU		H'0118'
LEDCON1						EQU		H'0119'
LEDADD						EQU		H'011A'
LEDDATA						EQU		H'011B'

LCDCON0						EQU		H'0118'
LCDCON1						EQU		H'0119'
LCDADD						EQU		H'011A'
LCDDATA						EQU		H'011B'
SEGEN2						EQU		H'011C'
SEGEN1						EQU		H'011D'
SEGEN0						EQU		H'011E'
COMEN						EQU		H'011F'
;----- BANK3 Register -----------------------------------------------------
;INDF						EQU		H'0180'
;OPTION_REG					EQU		H'0181'
;PCL						EQU		H'0182'
;STATUS						EQU		H'0183'
;FSR						EQU		H'0184'

;TRISB						EQU		H'0186'

;PCLATH						EQU		H'018A'
;INTCON						EQU		H'018B'
EECON1						EQU		H'018C'
EECON2						EQU		H'018D'
TKM216DL					EQU		H'018E'
TKM216DH					EQU		H'018F'
TKM2ROL						EQU		H'0190'
TKM2ROH						EQU		H'0191'
TKM2C1						EQU		H'0192'
TKM2C0						EQU		H'0193'




;**************************************************************************
;----- BANK0 Register -----------------------------------------------------
;----- STATUS Bits --------------------------------------------------------
IRP							EQU		H'0007'
RP1							EQU		H'0006'
RP0							EQU		H'0005'
NOT_TO						EQU		H'0004'
NOT_PD						EQU		H'0003'
Z							EQU		H'0002'
DC							EQU		H'0001'
C							EQU		H'0000'

;----- INTCON Bits --------------------------------------------------------
GIE							EQU		H'0007'
PEIE						EQU		H'0006'
T0IE						EQU		H'0005'
INTE						EQU		H'0004'
RBIE						EQU		H'0003'
T0IF						EQU		H'0002'
INTF						EQU		H'0001'
RBIF						EQU		H'0000'

;----- PIR1 Bits ----------------------------------------------------------
ADIF						EQU		H'0006'
TKIF						EQU		H'0005'
;TXIF						EQU		H'0004'
;SSPIF						EQU		H'0003'
BCLIF						EQU		H'0002'
TMR2IF						EQU		H'0001'
;TMR1IF						EQU		H'0000'

;----- PIR2 Bits ----------------------------------------------------------
;OSFIF						EQU		H'0007'
;C2IF						EQU		H'0006'
;C1IF						EQU		H'0005'
EEIF						EQU		H'0004'
;BCLIF						EQU		H'0003'
;ULPWUIF					EQU		H'0002'
SSPIF						EQU		H'0000'

;----- T2CON Bits ---------------------------------------------------------
TOUTPS3						EQU		H'0006'
TOUTPS2						EQU		H'0005'
TOUTPS1						EQU		H'0004'
TOUTPS0						EQU		H'0003'
TMR2ON						EQU		H'0002'
T2CKPS1						EQU		H'0001'
T2CKPS0						EQU		H'0000'

;----- TKM0C1 Bits --------------------------------------------------------
M0TSS						EQU		H'0007'
M0ROEN						EQU		H'0005'
M0KOEN						EQU		H'0004'
M0K4IO						EQU		H'0003'
M0K3IO						EQU		H'0002'
M0K2IO						EQU		H'0001'
M0K1IO						EQU		H'0000'

;----- TKM0C0 Bits --------------------------------------------------------
M0MXS1						EQU		H'0007'
M0MXS0						EQU		H'0006'
M0DFEN						EQU		H'0005'
M0FILEN					 	EQU		H'0004'
M0SOFC						EQU		H'0003'
M0SOF2						EQU		H'0002'
M0SOF1						EQU		H'0001'
M0SOF0						EQU		H'0000'

;----- ADCON0 Bits --------------------------------------------------------
ADCS1						EQU		H'0007'
ADCS0						EQU		H'0006'
CHS3						EQU		H'0005'
CHS2						EQU		H'0004'
CHS1						EQU		H'0003'
CHS0						EQU		H'0002'
GO							EQU		H'0001'
NOT_DONE					EQU		H'0001'
ADON						EQU		H'0000'


;**************************************************************************
;----- BANK1 Register -----------------------------------------------------
;----- OPTION_REG Bits ----------------------------------------------------
NOT_RBPU					EQU		H'0007'
INTEDG						EQU		H'0006'
T0CS						EQU		H'0005'
T0SE						EQU		H'0004'
PSA							EQU		H'0003'
PS2							EQU		H'0002'
PS1							EQU		H'0001'
PS0							EQU		H'0000'

;----- PIE1 Bits ----------------------------------------------------------
ADIE						EQU		H'0006'
TKIE						EQU		H'0005'
;TXIE						EQU		H'0004'
;SSPIE						EQU		H'0003'
BCLIE						EQU		H'0002'
TMR2IE						EQU		H'0001'
;TMR1IE						EQU		H'0000'

;----- PIE2 Bits ----------------------------------------------------------
;OSFIE						EQU		H'0007'
;C2IE						EQU		H'0006'
;C1IE						EQU		H'0005'
EEIE						EQU		H'0004'
;BCLIE						EQU		H'0003'
;ULPWUIE					EQU		H'0002'
SSPIE						EQU		H'0000'

;----- OSCCON Bits --------------------------------------------------------
IRCF2						EQU		H'0006'
IRCF1						EQU		H'0005'
IRCF0						EQU		H'0004'
SCS							EQU		H'0000'

;----- OSCTUNE Bits -------------------------------------------------------
TUN4						EQU		H'0004'
TUN3						EQU		H'0003'
TUN2						EQU		H'0002'
TUN1						EQU		H'0001'
TUN0						EQU		H'0000'

;----- SSPCON2 Bits -------------------------------------------------------
GCEN						EQU		H'0007'
ACKSTAT						EQU		H'0006'
ACKDT						EQU		H'0005'
ACKEN						EQU		H'0004'
RCEN						EQU		H'0003'
PEN							EQU		H'0002'
RSEN						EQU		H'0001'
SEN							EQU		H'0000'

;----- SSPSTAT Bits -------------------------------------------------------
SMP							EQU		H'0007'
CKE							EQU		H'0006'
D							EQU		H'0005'
NOT_A						EQU		H'0005'
P							EQU		H'0004'
S							EQU		H'0003'
R							EQU		H'0002'
NOT_W						EQU		H'0002'
UA							EQU		H'0001'
BF							EQU		H'0000'

;----- SSPCON Bits --------------------------------------------------------
WCOL						EQU		H'0007'
SSPOV						EQU		H'0006'
SSPEN						EQU		H'0005'
CKP							EQU		H'0004'
SSPM3						EQU		H'0003'
SSPM2						EQU		H'0002'
SSPM1						EQU		H'0001'
SSPM0						EQU		H'0000'

;----- TKM1C1 Bits --------------------------------------------------------
M1TSS						EQU		H'0007'
M1ROEN						EQU		H'0005'
M1KOEN						EQU		H'0004'
M1K4IO						EQU		H'0003'
M1K3IO						EQU		H'0002'
M1K2IO						EQU		H'0001'
M1K1IO						EQU		H'0000'


;----- TKM1C0 Bits --------------------------------------------------------
M1MXS1						EQU		H'0007'
M1MXS0						EQU		H'0006'
M1DFEN						EQU		H'0005'
M1FILEN						EQU		H'0004'
M1SOFC						EQU		H'0003'
M1SOF2						EQU		H'0002'
M1SOF1						EQU		H'0001'
M1SOF0						EQU		H'0000'

;----- ADCON1 Bits --------------------------------------------------------
ADFM						EQU		H'0007'

;**************************************************************************
;----- BANK2 Register -----------------------------------------------------
;----- WDTCON Bits --------------------------------------------------------
SWDTEN						EQU		H'0000'

;----- WPUB Bits ----------------------------------------------------------
WPUB7						EQU		H'0007'
WPUB6						EQU		H'0006'
WPUB5						EQU		H'0005'
WPUB4						EQU		H'0004'
WPUB3						EQU		H'0003'
WPUB2						EQU		H'0002'
WPUB1						EQU		H'0001'
WPUB0						EQU		H'0000'

;----- TKC0 Bits --------------------------------------------------------
TKRCOV						EQU		H'0006'
TKST						EQU		H'0005'
TKCFOV						EQU		H'0004'
TK16OV						EQU		H'0003'
TSCS						EQU		H'0002'
TK16S1						EQU		H'0001'
TK16S0						EQU		H'0000'

;----- TKC1 Bits --------------------------------------------------------
TKFS1						EQU		H'0001'
TKFS0						EQU		H'0000'

;----- LCDCON0 Bits -------------------------------------------------------
LCDEN						EQU		H'0007'
LEDEN						EQU		H'0006'
COMSEL1						EQU		H'0005'
COMSEL0						EQU		H'0004'
LCDCLK3						EQU		H'0003'
LCDCLK2						EQU		H'0002'
LCDCLK1						EQU		H'0001'
LCDCLK0						EQU		H'0000'

;----- LCDCON1 Bits -------------------------------------------------------
VLCDS						EQU		H'0007'
SEGOUT1						EQU		H'0005'
SEGOUT0						EQU		H'0004'
VSTEPS3						EQU		H'0003'
VSTEPS2						EQU		H'0002'
VSTEPS1						EQU		H'0001'
VSTEPS0						EQU		H'0000'

;----- LCDADD Bits --------------------------------------------------------
LCDCS						EQU		H'0007'
LCDADD6						EQU		H'0006'
LCDADD5						EQU		H'0005'
LCDADD4						EQU		H'0004'
LCDADD3						EQU		H'0003'
LCDADD2						EQU		H'0002'
LCDADD1						EQU		H'0001'
LCDADD0						EQU		H'0000'


;**************************************************************************
;----- BANK3 Register -----------------------------------------------------
;----- EECON1 Bits --------------------------------------------------------
EEPGD						EQU		H'0007'
WRERR						EQU		H'0003'
WREN						EQU		H'0002'
WR							EQU		H'0001'
RD							EQU		H'0000'

;----- TKM2C1 Bits --------------------------------------------------------
M2TSS						EQU		H'0007'
M2ROEN						EQU		H'0005'
M2KOEN						EQU		H'0004'
M2K4IO						EQU		H'0003'
M2K3IO						EQU		H'0002'
M2K2IO						EQU		H'0001'
M2K1IO						EQU		H'0000'

;----- TKM2C0 Bits --------------------------------------------------------
M2MXS1						EQU		H'0007'
M2MXS0						EQU		H'0006'
M2DFEN						EQU		H'0005'
M2FILEN						EQU		H'0004'
M2SOFC						EQU		H'0003'
M2SOF2						EQU		H'0002'
M2SOF1						EQU		H'0001'
M2SOF0						EQU		H'0000'