;**************************************************************************
;----- BANK0 Register -----------------------------------------------------

INDF                         EQU     H'0000'
TMR0                         EQU     H'0001'
PCL                          EQU     H'0002'
STATUS                       EQU     H'0003'
FSR                          EQU     H'0004'
PORTA                        EQU     H'0005'
PORTB                        EQU     H'0006'
PORTC                        EQU     H'0007'
;PORTD                        EQU     H'0008'
;PORTE                        EQU     H'0009'
PCLATH                       EQU     H'000A'
INTCON                       EQU     H'000B'
PIR1                         EQU     H'000C'
PIR2                         EQU     H'000D'
TMR1L                        EQU     H'000E'
TMR1H                        EQU     H'000F'
T1CON                        EQU     H'0010'
TMR2                         EQU     H'0011'
T2CON                        EQU     H'0012'
PR2                      EQU     H'0013'
;SSPCON                       EQU     H'0014'
CCPR1L                       EQU     H'0015'
CCPR1H                       EQU     H'0016'
CCP1CON                      EQU     H'0017'
;RCSTA                        EQU     H'0018'
;TXREG                        EQU     H'0019'
;RCREG                        EQU     H'001A'
CCPR2L                       EQU     H'001B'
CCPR2H                       EQU     H'001C'
CCP2CON                      EQU     H'001D'
ADRESH                       EQU     H'001E'
ADCON0                       EQU     H'001F'

;----- BANK1 Register -----------------------------------------------------

;INDF                         EQU     H'0080'
OPTION_REG                   EQU     H'0081'
;PCL                          EQU     H'0082'   
;STATUS                       EQU     H'0083'
;FSR                          EQU     H'0084'    
TRISA                        EQU     H'0085'
TRISB                        EQU     H'0086'
TRISC                        EQU     H'0087'
;TRISD                        EQU     H'0088'
;TRISE                        EQU     H'0089'
;PCLATH                       EQU     H'008A'    
;INTCON                       EQU     H'008B'    
PIE1                         EQU     H'008C'
PIE2                         EQU     H'008D'
WDTCON                         EQU     H'008E'
OSCCON                       EQU     H'008F'
OSCTUNE                      EQU     H'0090'

KEYCON0                      EQU     H'0091'
KEYCON1                      EQU     H'0092'
KEYDATAL                     EQU     H'0093' 
KEYDATAH                     EQU     H'0094'
WPUA                         EQU     H'0095'
WPUB                         EQU     H'0096'
WPUC                        EQU     H'0097'
IOCA                       EQU     H'0098'
TABLE_SPH                       EQU     H'0099'
TABLE_SPL                      EQU     H'009A'
TABLE_DATAL                     EQU     H'009B'
LCDCON                      EQU     H'009C'

ADRESL                       EQU     H'009E'
ADCON1                       EQU     H'009F'


;**************************************************************************
;----- STATUS Bits --------------------------------------------------------

IRP                          EQU     H'0007'
;RP1                          EQU     H'0006' 
;RP0                          EQU     H'0005'  
NOT_TO                       EQU     H'0004' 
NOT_PD                       EQU     H'0003'  
Z                            EQU     H'0002'
DC                           EQU     H'0001'
C                            EQU     H'0000'


