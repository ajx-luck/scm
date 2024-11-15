;**************************************************************************
;----- BANK0 Register -----------------------------------------------------
INDF                         EQU     H'0000'
TMR0                         EQU     H'0001'
PCL                          EQU     H'0002'
STATUS                       EQU     H'0003'
FLAGS                        EQU     H'0003'
FSR                          EQU     H'0004'
PORTA                        EQU     H'0005'
PORTB                        EQU     H'0006'
TRISA                        EQU     H'0007'
TRISB                        EQU     H'0008'
OPTION_REG                   EQU     H'0009'
PCLATH                       EQU     H'000A'
INTCON                       EQU     H'000B'
OSCCON                       EQU     H'000C'
WDTCON                       EQU     H'000D'
WPUA                         EQU     H'000E'
WPUB                         EQU     H'000F'
WPDA                         EQU     H'0010'
WPDB                         EQU     H'0011'
IOCB                         EQU     H'0012'
PWMCON                       EQU     H'0013'
PWMT                         EQU     H'0014'
PWMDATA                      EQU     H'0015'
SCANCON                      EQU     H'0016'
TABLE_SPH                    EQU     H'0017'
TABLE_SPL                    EQU     H'0018'
TABLE_DATAH                  EQU     H'0019'
SCANPA                       EQU     H'001A'
SCANPB                       EQU     H'001B'


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
 


;----- OPTION_REG Bits ----------------------------------------------------
INTEDG                       EQU     H'0006'
T0CS                         EQU     H'0005'
PSA                          EQU     H'0003'
PS2                          EQU     H'0002'
PS1                          EQU     H'0001'
PS0                          EQU     H'0000'

;----- OSCCON Bits --------------------------------------------------------
IRCF2                        EQU     H'0006'
IRCF1                        EQU     H'0005'
IRCF0                        EQU     H'0004'
;OSTS                         EQU     H'0003'
;HTS                          EQU     H'0002'
;LTS                          EQU     H'0001'
SCS                          EQU     H'0000'


;----- WPUB Bits ----------------------------------------------------------
WPUB5                        EQU     H'0005'
WPUB4                        EQU     H'0004'
WPUB3                        EQU     H'0003'
WPUB2                        EQU     H'0002'
WPUB1                        EQU     H'0001'
WPUB0                        EQU     H'0000'

;----- IOCB Bits ----------------------------------------------------------
IOCB5                        EQU     H'0005'
IOCB4                        EQU     H'0004'
IOCB3                        EQU     H'0003'
IOCB2                        EQU     H'0002'
IOCB1                        EQU     H'0001'
IOCB0                        EQU     H'0000'





;----- WDTCON Bits --------------------------------------------------------
WDTPS3                       EQU     H'0004'
WDTPS2                       EQU     H'0003'
WDTPS1                       EQU     H'0002'
WDTPS0                       EQU     H'0001'
;SWDTEN                       EQU     H'0000'

;----- PWMCON Bits --------------------------------------------------------
PWM_EN                  EQU     H'0007'
PWM_DIV1                EQU     H'0006'
PWM_DIV0                EQU     H'0005'
IR_OUT                  EQU     H'0000'

;----- SCANCON Bits -------------------------------------------------------
WAKEUP                  EQU     H'0007'
SACNDLY2                EQU     H'0003'
SACNDLY1                EQU     H'0002'
SACNDLY0                EQU     H'0001'
SCANEN                  EQU     H'0000'

;----- SCANPA Bits -------------------------------------------------------
SCANPA6                EQU     H'0006'
SCANPA5                EQU     H'0005'
SCANPA4                EQU     H'0004'
SCANPA3                EQU     H'0003'
SCANPA2                EQU     H'0002'
SCANPA1                EQU     H'0001'

;----- SCANPB Bits -------------------------------------------------------
SCANPB6                EQU     H'0006'
SCANPB5                EQU     H'0005'
SCANPB4                EQU     H'0004'
SCANPB3                EQU     H'0003'
SCANPB2                EQU     H'0002'
SCANPB1                EQU     H'0001'
SCANPB0                EQU     H'0000'