;**************************************************************************
;----- BANK0 Register -----------------------------------------------------

INDF                         EQU     H'0000'
TMR0                         EQU     H'0001'
PCL                          EQU     H'0002'
STATUS                       EQU     H'0003'
FSR                          EQU     H'0004'
PORTA                        EQU     H'0005'
PORTB                        EQU     H'0006'
;PORTC                        EQU     H'0007'
;PORTD                        EQU     H'0008'
PORTE                        EQU     H'0009'
PCLATH                       EQU     H'000A'
INTCON                       EQU     H'000B'
PIR1                         EQU     H'000C'
PIR2                         EQU     H'000D'
TMR1L                        EQU     H'000E'
TMR1H                        EQU     H'000F'
T1CON                        EQU     H'0010'
TMR2                         EQU     H'0011'
T2CON                        EQU     H'0012'
;SSPBUF                       EQU     H'0013'
PPGTMRL                       EQU     H'0014'
PPGTMRH                       EQU     H'0015'
PPGDLY                       EQU     H'0016'
PPGCON                      EQU     H'0017'
PWM0DR                        EQU     H'0018'
PWM0PR                        EQU     H'0019'
PWM0CR                        EQU     H'001A'
PWM1DR                       EQU     H'001B'
PWM1PR                       EQU     H'001C'
PWM1CR                      EQU     H'001D'
;ADRESH                       EQU     H'001E'
ADCON0                       EQU     H'001F'

;----- BANK1 Register -----------------------------------------------------

;INDF                         EQU     H'0080'
OPTION_REG                   EQU     H'0081'
;PCL                          EQU     H'0082'   
;STATUS                       EQU     H'0083'
;FSR                          EQU     H'0084'    
TRISA                        EQU     H'0085'
TRISB                        EQU     H'0086'
;TRISC                        EQU     H'0087'
;TRISD                        EQU     H'0088'
TRISE                        EQU     H'0089'
;PCLATH                       EQU     H'008A'    
;INTCON                       EQU     H'008B'    
PIE1                         EQU     H'008C'
PIE2                         EQU     H'008D'
;PCON                         EQU     H'008E'
OSCCON                       EQU     H'008F'
OSCTUNE                      EQU     H'0090'
;SSPCON2                      EQU     H'0091'
PR2                          EQU     H'0092'
CM1CNT                       EQU     H'0093' 
WPUA	                      EQU     H'0094'
WPUB                         EQU     H'0095'
WPUE                         EQU     H'0096'
CM1CON                        EQU     H'0097'
CM2CON                        EQU     H'0098'
CM2CON1                        EQU     H'0099'
CM3CON                       EQU     H'009A'
CM3CON1                      EQU     H'009B'
CM4CON                       EQU     H'009C'
CM5CON                      EQU     H'009D'
ADRESL                       EQU     H'009E'
ADRESH                       EQU     H'009F'

;----- BANK2 Register -----------------------------------------------------

;INDF                         EQU     H'0100'
;TMR0                         EQU     H'0101'
;PCL                          EQU     H'0102'
;STATUS                       EQU     H'0103'
;FSR                          EQU     H'0104'
WDTCON                       EQU     H'0105'
;PORTB                        EQU     H'0106'
OPAADJ                      EQU     H'0107'
OPACON                     EQU     H'0108'
OPACON1                      EQU     H'0109'
;PCLATH                       EQU     H'010A'
;INTCON                       EQU     H'010B'
EEDATA                       EQU     H'010C'
EEADR                        EQU     H'010D'
EEDATH                       EQU     H'010E'
;EEADRH                       EQU     H'010F'
TABLE_SPH                    EQU     H'0110'
TABLE_SPL                    EQU     H'0111'
TABLE_DATAH                  EQU     H'0112'
C1ADJ                      EQU     H'0113'
C2ADJ                     EQU     H'0114'
C3ADJ                     EQU     H'0115'
C4ADJ                     EQU     H'0116'
C5ADJ                    EQU     H'0117'


;----- BANK3 Register -----------------------------------------------------

;INDF                         EQU     H'0180'
;OPTION_REG                   EQU     H'0181'
;PCL                          EQU     H'0182'   
;STATUS                       EQU     H'0183'
;FSR                          EQU     H'0184' 
;SRCON                        EQU     H'0185'
;TRISB                        EQU     H'0186'
PAANSEL                      EQU     H'0187'
PBANSEL                        EQU     H'0188'
PEANSEL                       EQU     H'0189'
;PCLATH                       EQU     H'018A'
;INTCON                       EQU     H'018B'  
EECON1                       EQU     H'018C'  
EECON2                       EQU     H'018D'  
CCPRL                         EQU     H'018E'  
CCPRH                         EQU     H'018F'          
CCPCON                     EQU     H'0190'
SSPADD                     EQU     H'0191'
SSPMSK                     EQU     H'0191'
SSPBUF                     EQU     H'0192'
SSPSTAT                    EQU     H'0193'
SSPCON                     EQU     H'0194'
SSPCON2                      EQU     H'0195'


;**************************************************************************
;----- STATUS Bits --------------------------------------------------------

IRP                          EQU     H'0007'
RP1                          EQU     H'0006' 
RP0                          EQU     H'0005'  
NOT_TO                       EQU     H'0004' 
NOT_PD                       EQU     H'0003'  
Z                            EQU     H'0002'
DC                           EQU     H'0001'
C                            EQU     H'0000'

;----- INTCON Bits --------------------------------------------------------

GIE                          EQU     H'0007'
PEIE                         EQU     H'0006'
T0IE                         EQU     H'0005' 
INTE                         EQU     H'0004'  
RBIE                         EQU     H'0003'
T0IF                         EQU     H'0002'
INTF                         EQU     H'0001'
RBIF                         EQU     H'0000'

;----- PIR1 Bits ----------------------------------------------------------

EEIF                         EQU     H'0007'
ADIF                         EQU     H'0006'
SSPIF                        EQU     H'0005'
BCLIF                        EQU     H'0004'
CCPIF                        EQU     H'0003'
;BCLIF                       EQU     H'0002'
TMR2IF                       EQU     H'0001'
TMR1IF                       EQU     H'0000'

;----- PIR2 Bits ----------------------------------------------------------

C5IF                          EQU     H'0005'
C4IF                          EQU     H'0004'
C3IF                          EQU     H'0003'
C2IF                      	  EQU     H'0002'
C1IF                       	  EQU     H'0001'
PPGIF                         EQU     H'0000'

;----- T1CON Bits ---------------------------------------------------------

T1GIV                        EQU     H'0007'
TMR1GE                       EQU     H'0006'
T1CKPS1                      EQU     H'0005'
T1CKPS0                      EQU     H'0004'
T1OSCEN                      EQU     H'0003'     
T1SYNC                       EQU     H'0002'
TMR1CS                       EQU     H'0001'
TMR1ON                       EQU     H'0000'

;----- T2CON Bits ---------------------------------------------------------

TOUTPS3                      EQU     H'0006'
TOUTPS2                      EQU     H'0005'
TOUTPS1                      EQU     H'0004'
TOUTPS0                      EQU     H'0003'
TMR2ON                       EQU     H'0002'
T2CKPS1                      EQU     H'0001'
T2CKPS0                      EQU     H'0000'

;----- PWM0CR Bits --------------------------------------------------------

PWM0EN                       EQU     H'0007'
PWM0MOD                      EQU     H'0006'
PWM0POL                      EQU     H'0004'
PWM0CKS3                     EQU     H'0003'
PWM0CKS2                     EQU     H'0002'
PWM0CKS1                     EQU     H'0001'
PWM0CKS0                     EQU     H'0000'

;----- PWM1CR Bits --------------------------------------------------------

PWM1EN                       EQU     H'0007'
PWM1MOD                      EQU     H'0006'
PWM1POL                      EQU     H'0004'
PWM1CKS3                     EQU     H'0003'
PWM1CKS2                     EQU     H'0002'
PWM1CKS1                     EQU     H'0001'
PWM1CKS0                     EQU     H'0000'

;----- ADCON0 Bits --------------------------------------------------------

ADCS1                        EQU     H'0007'
ADCS0                        EQU     H'0006'
CHS3                         EQU     H'0005'
CHS2                         EQU     H'0004'
CHS1                         EQU     H'0003'
CHS0                         EQU     H'0002'
GO                           EQU     H'0001'
NOT_DONE                     EQU     H'0001'
ADON                         EQU     H'0000'

;----- OPTION_REG Bits ----------------------------------------------------

NOT_RBPU                     EQU     H'0007'
INTEDG                       EQU     H'0006'
T0CS                         EQU     H'0005'
T0SE                         EQU     H'0004'
PSA                          EQU     H'0003'
PS2                          EQU     H'0002'
PS1                          EQU     H'0001'
PS0                          EQU     H'0000'

;----- ADCON1 Bits --------------------------------------------------------

ADFM                         EQU      H'0007'
VCFG1                        EQU      H'0005'
VCFG0                        EQU      H'0004'

;----- PIE1 Bits ----------------------------------------------------------

EEIE                         EQU     H'0007'
ADIE                         EQU     H'0006'
SSPIE                        EQU     H'0005'
BCLIE                        EQU     H'0004'
CCPIE                        EQU     H'0003'
TMR2IE                       EQU     H'0001'
TMR1IE                       EQU     H'0000'

;----- PIE2 Bits ----------------------------------------------------------

C5IE                        EQU     H'0005'
C4IE                        EQU     H'0004'
C3IE                        EQU     H'0003'
C2IE                        EQU     H'0002'
C1IE                        EQU     H'0001'
PPGIE                       EQU     H'0000'

;----- OSCCON Bits --------------------------------------------------------

IRCF2                        EQU     H'0006'
IRCF1                        EQU     H'0005'
IRCF0                        EQU     H'0004'
;OSTS                         EQU     H'0003'
;HTS                          EQU     H'0002'
;LTS                          EQU     H'0001'
SCS                          EQU     H'0000'

;----- OSCTUNE Bits -------------------------------------------------------

TUN4                         EQU     H'0004'
TUN3                         EQU     H'0003'
TUN2                         EQU     H'0002'
TUN1                         EQU     H'0001'
TUN0                         EQU     H'0000'

;----- WPUB Bits ----------------------------------------------------------

WPUB7                        EQU     H'0007'
WPUB6                        EQU     H'0006'
WPUB5                        EQU     H'0005'
WPUB4                        EQU     H'0004'
WPUB3                        EQU     H'0003'
WPUB2                        EQU     H'0002'
WPUB1                        EQU     H'0001'
;WPUB0                        EQU     H'0000'

;----- IOCB Bits ----------------------------------------------------------

IOCB7                        EQU     H'0007'
IOCB6                        EQU     H'0006'
IOCB5                        EQU     H'0005'
IOCB4                        EQU     H'0004'
IOCB3                        EQU     H'0003'
IOCB2                        EQU     H'0002'
IOCB1                        EQU     H'0001'
;IOCB0                        EQU     H'0000'

;----- VRCON Bits ---------------------------------------------------------

VREN                         EQU     H'0007'
VROE                         EQU     H'0006'
VRR                          EQU     H'0005'
VRSS                         EQU     H'0004'
VR3                          EQU     H'0003'
VR2                          EQU     H'0002'
VR1                          EQU     H'0001'
VR0                          EQU     H'0000'

;----- WDTCON Bits --------------------------------------------------------

WDTPS3                       EQU     H'0004'
WDTPS2                       EQU     H'0003'
WDTPS1                       EQU     H'0002'
WDTPS0                       EQU     H'0001'
;SWDTEN                       EQU     H'0000'


;----- EECON1 Bits --------------------------------------------------------

EEPGD                        EQU     H'0007'
WRERR                        EQU     H'0003'
WREN                         EQU     H'0002'
WR                           EQU     H'0001'
RD                           EQU     H'0000'        

;----- CM1CNT Bits ---------------------------------------------------------

CM1OF                        EQU     H'0007'

;----- CM1CON Bits ---------------------------------------------------------

CM1EN                        EQU     H'0007'
CM1COFM                      EQU     H'0006'
CM1CEN                       EQU     H'0005'
CM1CLR                       EQU     H'0004'
CM1NSL                       EQU     H'0003'

;----- CM2CON Bits ---------------------------------------------------------

CM2EN                        EQU     H'0007'
CM2COFM                      EQU     H'0006'
CM2DBSEL1                    EQU     H'0005'
CM2DBSEL0                    EQU     H'0004'
CM2PVSEL3                    EQU     H'0003'
CM2PVSEL2                    EQU     H'0002'
CM2PVSEL1                    EQU     H'0001'
CM2PVSEL0                    EQU     H'0000'

;----- CM2CON1 Bits ---------------------------------------------------------

ATPEN                        EQU     H'0007'
CM2COF	                     EQU     H'0003'
CM2COS2                      EQU     H'0002'
CM2COS1                      EQU     H'0001'
CM2COS0                      EQU     H'0000'

;----- CM3CON Bits ---------------------------------------------------------

CM3EN                        EQU     H'0007'
CM3COFM                      EQU     H'0006'
CM3DBSEL1                    EQU     H'0005'
CM3DBSEL0                    EQU     H'0004'
CM3PVSEL3                    EQU     H'0003'
CM3PVSEL2                    EQU     H'0002'
CM3PVSEL1                    EQU     H'0001'
CM3PVSEL0                    EQU     H'0000'

;----- CM3CON1 Bits ---------------------------------------------------------

CM3M1                        EQU     H'0007'
CM3M0                        EQU     H'0006'
CM3CIS                       EQU     H'0004'
CM3COF	                     EQU     H'0003'
CM3COS2                      EQU     H'0002'
CM3COS1                      EQU     H'0001'
CM3COS0                      EQU     H'0000'

;----- CM4CON Bits ---------------------------------------------------------

CM4EN                        EQU     H'0007'
CM4COFM                      EQU     H'0006'
CM4DBSEL1                    EQU     H'0005'
CM4DBSEL0                    EQU     H'0004'
CM4PVSEL3                    EQU     H'0003'
CM4PVSEL2                    EQU     H'0002'
CM4PVSEL1                    EQU     H'0001'
CM4PVSEL0                    EQU     H'0000'

;----- CM5CON Bits ---------------------------------------------------------

CM5EN                        EQU     H'0007'
CM5COFM                      EQU     H'0006'
CM5DBSEL1                    EQU     H'0005'
CM5DBSEL0                    EQU     H'0004'
CM5PVSEL3                    EQU     H'0003'
CM5PVSEL2                    EQU     H'0002'
CM5PVSEL1                    EQU     H'0001'
CM5PVSEL0                    EQU     H'0000'

;----- OPAADJ Bits ---------------------------------------------------------

OPAOUT                       EQU     H'0007'
OPARS                        EQU     H'0006'
OPAADJS4                     EQU     H'0004'
OPAADJS3                     EQU     H'0003'
OPAADJS2                     EQU     H'0002'
OPAADJS1                     EQU     H'0001'
OPAADJS0                     EQU     H'0000'

;----- OPACON Bits ---------------------------------------------------------

OPAEN                        EQU     H'0007'
OPAFM                        EQU     H'0006'
OPAFE                        EQU     H'0005'
OPAPS1                       EQU     H'0003'
OPAPS0                       EQU     H'0002'
OPSNS1                       EQU     H'0001'
OPANS0                       EQU     H'0000'

;----- OPACON1 Bits ---------------------------------------------------------

OPO2ADE                      EQU     H'0003'
ANRS1                        EQU     H'0001'
ANRS0                        EQU     H'0000'

;----- CM1ADJ Bits ---------------------------------------------------------

CM1OUT                       EQU     H'0007'
CM1CRS                       EQU     H'0006'
CM1ADJ5                      EQU     H'0005'
CM1ADJ4                      EQU     H'0004'
CM1ADJ3                      EQU     H'0003'
CM1ADJ2                      EQU     H'0002'
CM1ADJ1                      EQU     H'0001'
CM1ADJ0                      EQU     H'0000'

;----- CM2ADJ Bits ---------------------------------------------------------

CM2OUT                       EQU     H'0007'
CM2CRS                       EQU     H'0006'
CM2ADJ5                      EQU     H'0005'
CM2ADJ4                      EQU     H'0004'
CM2ADJ3                      EQU     H'0003'
CM2ADJ2                      EQU     H'0002'
CM2ADJ1                      EQU     H'0001'
CM2ADJ0                      EQU     H'0000'

;----- CM3ADJ Bits ---------------------------------------------------------

CM3OUT                       EQU     H'0007'
CM3CRS                       EQU     H'0006'
CM3ADJ5                      EQU     H'0005'
CM3ADJ4                      EQU     H'0004'
CM3ADJ3                      EQU     H'0003'
CM3ADJ2                      EQU     H'0002'
CM3ADJ1                      EQU     H'0001'
CM3ADJ0                      EQU     H'0000'

;----- CM4ADJ Bits ---------------------------------------------------------

CM4OUT                       EQU     H'0007'
CM4CRS                       EQU     H'0006'
CM4ADJ5                      EQU     H'0005'
CM4ADJ4                      EQU     H'0004'
CM4ADJ3                      EQU     H'0003'
CM4ADJ2                      EQU     H'0002'
CM4ADJ1                      EQU     H'0001'
CM4ADJ0                      EQU     H'0000'

;----- CM5ADJ Bits ---------------------------------------------------------

CM5OUT                       EQU     H'0007'
CM5CRS                       EQU     H'0006'
CM5ADJ5                      EQU     H'0005'
CM5ADJ4                      EQU     H'0004'
CM5ADJ3                      EQU     H'0003'
CM5ADJ2                      EQU     H'0002'
CM5ADJ1                      EQU     H'0001'
CM5ADJ0                      EQU     H'0000'

;----- CCPCON Bits ---------------------------------------------------------

CCPEN                       EQU     H'0007'
CCPIS                       EQU     H'0004'
CCPES                       EQU     H'0003'
CPTCS2                      EQU     H'0002'
CPTCS1                      EQU     H'0001'
CPTCS0                      EQU     H'0000'

;----- SSPCON Bits --------------------------------------------------------

WCOL                         EQU     H'0007'
SSPOV                        EQU     H'0006'
SSPEN                        EQU     H'0005'
CKP                          EQU     H'0004'
SSPM3                        EQU     H'0003'
SSPM2                        EQU     H'0002'
SSPM1                        EQU     H'0001'
SSPM0                        EQU     H'0000'

;----- SSPCON2 Bits -------------------------------------------------------

GCEN                         EQU     H'0007'
ACKSTAT                      EQU     H'0006'
ACKDT                        EQU     H'0005'
ACKEN                        EQU     H'0004'
RCEN                         EQU     H'0003'
PEN                          EQU     H'0002'
RSEN                         EQU     H'0001'   
SEN                          EQU     H'0000'  

;----- SSPSTAT Bits -------------------------------------------------------

SMP                          EQU     H'0007'
CKE                          EQU     H'0006'
D                            EQU     H'0005'
NOT_A                        EQU     H'0005'
P                            EQU     H'0004'
S                            EQU     H'0003'
R                            EQU     H'0002'
NOT_W                        EQU     H'0002'
UA                           EQU     H'0001'
BF                           EQU     H'0000'
