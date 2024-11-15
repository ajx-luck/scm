;**************************************************************************
;-----BANK0Register-----------------------------------------------------

INDF					EQU		H'0000'
TMR0					EQU		H'0001'
PCL						EQU		H'0002'
STATUS					EQU		H'0003'
FLAGS					EQU		H'0003'
FSR						EQU		H'0004'
OPTION_REG				EQU		H'0005'
OPTION					EQU		H'0005'
PORTB					EQU		H'0006'
TRISB					EQU		H'0007'
WPUB					EQU		H'0008'
IOCB					EQU		H'0009'
INTCON					EQU		H'000A'
OSCCON					EQU		H'000B'

TMR2					EQU		H'0010'
T2CON					EQU		H'0011'
PR2						EQU		H'0012'
CCPR1L					EQU		H'0013'
CCPCON					EQU		H'0014'
CCPR2L					EQU		H'0015'



;**************************************************************************
;-----STATUS	Bits--------------------------------------------------------

TO						EQU		H'0004'
PD						EQU		H'0003'
Z						EQU		H'0002'
DC						EQU		H'0001'
C						EQU		H'0000'


;-----OPTION_REG	Bits----------------------------------------------------

T0CS					EQU		H'0005'
T0SE					EQU		H'0004'
PSA						EQU		H'0003'
PS2						EQU		H'0002'
PS1						EQU		H'0001'
PS0						EQU		H'0000'

;-----WPUBBits----------------------------------------------------------

WPUB5					EQU		H'0005'
WPUB4					EQU		H'0004'
WPUB3					EQU		H'0003'
WPUB2					EQU		H'0002'
WPUB1					EQU		H'0001'
WPUB0					EQU		H'0000'

;-----IOCBBits----------------------------------------------------------

IOCB5					EQU		H'0005'
IOCB4					EQU		H'0004'
IOCB3					EQU		H'0003'
IOCB2					EQU		H'0002'
IOCB1					EQU		H'0001'
IOCB0					EQU		H'0000'

;-----INTCONBits--------------------------------------------------------

GIE						EQU		H'0007'
T0IE					EQU		H'0005'
INTE					EQU		H'0004'
RBIE					EQU		H'0003'
T0IF					EQU		H'0002'
INTF					EQU		H'0001'
RBIF					EQU		H'0000'

;-----OSCCONBits--------------------------------------------------------

IRCF2					EQU		H'0006'
IRCF1					EQU		H'0005'
IRCF0					EQU		H'0004'


;-----T2CONBits---------------------------------------------------------

TMR2ON					EQU		H'0002'
T2CKPS1					EQU		H'0001'
T2CKPS0					EQU		H'0000'

;-----CCPCONBits-------------------------------------------------------

PWM2EN					EQU		H'0006'
PWM2B1					EQU		H'0005'
PWM2B0					EQU		H'0004'
PWM1EN					EQU		H'0002'
PWM1B1					EQU		H'0001'
PWM1B0					EQU		H'0000'

