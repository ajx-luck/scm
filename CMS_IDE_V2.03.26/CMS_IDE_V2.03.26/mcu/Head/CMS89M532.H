INDF                         EQU     H'0000'
TMR0                         EQU     H'0001'
PCL                          EQU     H'0002'
STATUS                       EQU     H'0003'
FLAGS                        EQU     H'0003'
FSR                          EQU     H'0004'

PORTB                        EQU     H'0006'

TRISB                        EQU     H'0008'
OPTION_REG                   EQU     H'0009'
PCLATH                       EQU     H'000A'

OSCCON                       EQU     H'000C'
WDTCON                       EQU     H'000D'

IN_CTR                       EQU     H'000F'

INA_CTR                      EQU     H'0010'
INB_CTR                      EQU     H'0011'
INC_CTR                      EQU     H'0012'
INAST_CTR                    EQU     H'0013'
INBST_CTR                    EQU     H'0014'
CP_CON0                      EQU     H'0015'
CP_CON1                      EQU     H'0016'
LED_CTR                      EQU     H'0017'


;**************************************************************************
;----- STATUS Bits --------------------------------------------------------
NOT_TO                       EQU     H'0004' 
NOT_PD                       EQU     H'0003'  
Z                            EQU     H'0002'
DC                           EQU     H'0001'
C                            EQU     H'0000'

;----- OPTION_REG Bits ----------------------------------------------------
NOT_RBPU                     EQU     H'0007'
INTEDG                       EQU     H'0006'
T0CS                         EQU     H'0005'
T0SE                         EQU     H'0004'
PSA                          EQU     H'0003'
PS2                          EQU     H'0002'
PS1                          EQU     H'0001'
PS0                          EQU     H'0000'

;----- OSCCON Bits --------------------------------------------------------

IRCF2                        EQU     H'0006'
IRCF1                        EQU     H'0005'
IRCF0                        EQU     H'0004'
;OSTS                        EQU     H'0003'
;HTS                         EQU     H'0002'
;LTS                         EQU     H'0001'
SCS                          EQU     H'0000'
