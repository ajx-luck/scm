

INDF		 EQU 		 H'000'
OPTION_REG		 EQU 		 H'001'
PCL		 EQU 		 H'002'
STATUS		 EQU 		 H'003'
FSR		 EQU 		 H'004'
TRISB		 EQU 		 H'005'
PORTB		 EQU 		 H'006'
WPDB		 EQU 		 H'007'
WPUB		 EQU 		 H'008'
IOCB		 EQU 		 H'009'
PCLATH		 EQU 		 H'00A'
INTCON		 EQU 		 H'00B'
ODCONB		 EQU 		 H'00C'
PIR1		 EQU 		 H'00D'
PIE1		 EQU 		 H'00E'
CMPCON0		 EQU 		 H'00F'
CMPCON1		 EQU 		 H'010'
PR2		 EQU 		 H'011'
TMR2		 EQU 		 H'012'
T2CON		 EQU 		 H'013'
OSCCON		 EQU 		 H'014'
PWMCON0		 EQU 		 H'015'
PWMCON1		 EQU 		 H'016'
PWMTL		 EQU 		 H'017'
PWMTH		 EQU 		 H'018'
PWMD0L		 EQU 		 H'019'
PWMD1L		 EQU 		 H'01A'
PWMD4L		 EQU 		 H'01B'
PWMT4L		 EQU 		 H'01C'
PWMCON2		 EQU 		 H'01D'
PWMD01H		 EQU 		 H'01E'
PWM01DT		 EQU 		 H'01F'
TMR0		 EQU 		 H'081'
TRISA		 EQU 		 H'085'
PORTA		 EQU 		 H'086'
WPDA		 EQU 		 H'087'
WPUA		 EQU 		 H'088'
IOCA		 EQU 		 H'089'
ODCONA		 EQU 		 H'08C'
PWMD2L		 EQU 		 H'09B'
PWMD3L		 EQU 		 H'09C'
PWM23DT		 EQU 		 H'09D'
PWMD23H		 EQU 		 H'09E'
;------------------------ OPTION_REG  Bits------------------------
INTEDG		 EQU 		H'06'
T0CS		 EQU 		H'05'
T0SE		 EQU 		H'04'
PSA		 EQU 		H'03'
PS2		 EQU 		H'02'
PS1		 EQU 		H'01'
PS0		 EQU 		H'00'

;------------------------ STATUS  Bits------------------------
IRP		 EQU 		H'07'
RP1		 EQU 		H'06'
RP0		 EQU 		H'05'
TO		 EQU 		H'04'
PD		 EQU 		H'03'
Z		 EQU 		H'02'
DC		 EQU 		H'01'
C		 EQU 		H'00'

;------------------------ TRISB  Bits------------------------
TRISB7		 EQU 		H'07'
TRISB6		 EQU 		H'06'
TRISB5		 EQU 		H'05'
TRISB4		 EQU 		H'04'
TRISB3		 EQU 		H'03'
TRISB2		 EQU 		H'02'
TRISB1		 EQU 		H'01'
TRISB0		 EQU 		H'00'

;------------------------ PORTB  Bits------------------------
RB7		 EQU 		H'07'
RB6		 EQU 		H'06'
RB5		 EQU 		H'05'
RB4		 EQU 		H'04'
RB3		 EQU 		H'03'
RB2		 EQU 		H'02'
RB1		 EQU 		H'01'
RB0		 EQU 		H'00'

;------------------------ WPDB  Bits------------------------
WPDB7		 EQU 		H'07'
WPDB6		 EQU 		H'06'
WPDB5		 EQU 		H'05'
WPDB4		 EQU 		H'04'
WPDB2		 EQU 		H'02'
WPDB1		 EQU 		H'01'
WPDB0		 EQU 		H'00'

;------------------------ WPUB  Bits------------------------
 WPUB7		 EQU 		H'07'
WPUB6		 EQU 		H'06'
WPUB5		 EQU 		H'05'
WPUB4		 EQU 		H'04'
WPUB3		 EQU 		H'03'
WPUB2		 EQU 		H'02'
WPUB1		 EQU 		H'01'
WPUB0		 EQU 		H'00'

;------------------------ IOCB  Bits------------------------
IOCB7		 EQU 		H'07'
IOCB6		 EQU 		H'06'
IOCB5		 EQU 		H'05'
IOCB4		 EQU 		H'04'
IOCB3		 EQU 		H'03'
IOCB2		 EQU 		H'02'
IOCB1		 EQU 		H'01'
IOCB0		 EQU 		H'00'

;------------------------ INTCON  Bits------------------------
GIE		 EQU 		H'07'
PEIE		 EQU 		H'06'
T0IE		 EQU 		H'05'
INTE		 EQU 		H'04'
RBIE		 EQU 		H'03'
T0IF		 EQU 		H'02'
INTF		 EQU 		H'01'
RBIF		 EQU 		H'00'

;------------------------ ODCONB  Bits------------------------
ODCONB7		 EQU 		H'07'
ODCONB6		 EQU 		H'06'
ODCONB5		 EQU 		H'05'
ODCONB4		 EQU 		H'04'
ODCONB2		 EQU 		H'02'
ODCONB1		 EQU 		H'01'
ODCONB0		 EQU 		H'00'

;------------------------ PIR1  Bits------------------------
CMPIF		 EQU 		H'05'
PWMIF		 EQU 		H'04'
RAIF		 EQU 		H'03'
TMR2IF		 EQU 		H'01'

;------------------------ PIE1  Bits------------------------
CMPIE		 EQU 		H'05'
PWMIE		 EQU 		H'04'
RAIE		 EQU 		H'03'
TMR2IE		 EQU 		H'01'

;------------------------ CMPCON0  Bits------------------------
CMPEN		 EQU 		H'07'
CMPPS		 EQU 		H'06'
CMPNS2		 EQU 		H'05'
CMPNS1		 EQU 		H'04'
CMPNS0		 EQU 		H'03'
CMPNV		 EQU 		H'02'
CMPOUT		 EQU 		H'01'
CMPOEN		 EQU 		H'00'

;------------------------ CMPCON1  Bits------------------------
CMPIM		 EQU 		H'07'
AN_EN		 EQU 		H'06'
RBIAS_H		 EQU 		H'05'
RBIAS_L		 EQU 		H'04'
LVDS3		 EQU 		H'03'
LVDS2		 EQU 		H'02'
LVDS1		 EQU 		H'01'
LVDS0		 EQU 		H'00'

;------------------------ T2CON  Bits------------------------
CLK_SEL		 EQU 		H'07'
TOUTPS3		 EQU 		H'06'
TOUTPS2		 EQU 		H'05'
TOUTPS1		 EQU 		H'04'
TOUTPS0		 EQU 		H'03'
TMR2ON		 EQU 		H'02'
T2CKPS1		 EQU 		H'01'
T2CKPS0		 EQU 		H'00'

;------------------------ OSCCON  Bits------------------------
IRCF2		 EQU 		H'06'
IRCF1		 EQU 		H'05'
IRCF0		 EQU 		H'04'
SWDTEN		 EQU 		H'01'

;------------------------ PWMCON0  Bits------------------------
CLKDIV2		 EQU 		H'07'
CLKDIV1		 EQU 		H'06'
CLKDIV0		 EQU 		H'05'
PWM4EN		 EQU 		H'04'
PWM3EN		 EQU 		H'03'
PWM2EN		 EQU 		H'02'
PWM1EN		 EQU 		H'01'
PWM0EN		 EQU 		H'00'

;------------------------ PWMCON1  Bits------------------------
PWM_IOSEL		 EQU 		H'06'
PWM2DTEN		 EQU 		H'05'
PWM0DTEN		 EQU 		H'04'
DT_DIV1		 EQU 		H'01'
DT_DIV0		 EQU 		H'00'

;------------------------ PWMTH  Bits------------------------
PWM4D9		 EQU 		H'05'
PWM4D8		 EQU 		H'04'
PWM4T9		 EQU 		H'03'
PWM4T8		 EQU 		H'02'
PWMT9		 EQU 		H'01'
PWMT8		 EQU 		H'00'

;------------------------ PWMCON2  Bits------------------------
PWM4DIR		 EQU 		H'04'
PWM3DIR		 EQU 		H'03'
PWM2DIR		 EQU 		H'02'
PWM1DIR		 EQU 		H'01'
PWM0DIR		 EQU 		H'00'

;------------------------ PWMD01H  Bits------------------------
PWMD19		 EQU 		H'05'
PWMD18		 EQU 		H'04'
PWMD09		 EQU 		H'01'
PWMD08		 EQU 		H'00'

;------------------------ PWM01DT  Bits------------------------
PWM01DT5		 EQU 		H'05'
PWM01DT4		 EQU 		H'04'
PWM01DT3		 EQU 		H'03'
PWM01DT2		 EQU 		H'02'
PWM01DT1		 EQU 		H'01'
PWM01DT0		 EQU 		H'00'

;------------------------ TRISA  Bits------------------------
TRISA5		 EQU 		H'05'
TRISA4		 EQU 		H'04'
TRISA3		 EQU 		H'03'
TRISA2		 EQU 		H'02'
TRISA1		 EQU 		H'01'
TRISA0		 EQU 		H'00'

;------------------------ PORTA  Bits------------------------
RA5		 EQU 		H'05'
RA4		 EQU 		H'04'
RA3		 EQU 		H'03'
RA2		 EQU 		H'02'
RA1		 EQU 		H'01'
RA0		 EQU 		H'00'

;------------------------ WPDA  Bits------------------------
WPDA5		 EQU 		H'05'
WPDA4		 EQU 		H'04'
WPDA3		 EQU 		H'03'
WPDA2		 EQU 		H'02'
WPDA1		 EQU 		H'01'
WPDA0		 EQU 		H'00'

;------------------------ WPUA  Bits------------------------
WPUA5		 EQU 		H'05'
WPUA4		 EQU 		H'04'
WPUA3		 EQU 		H'03'
WPUA2		 EQU 		H'02'
WPUA1		 EQU 		H'01'
WPUA0		 EQU 		H'00'

;------------------------ IOCA  Bits------------------------
IOCA5		 EQU 		H'05'
IOCA4		 EQU 		H'04'
IOCA3		 EQU 		H'03'
IOCA2		 EQU 		H'02'
IOCA1		 EQU 		H'01'
IOCA0		 EQU 		H'00'

;------------------------ ODCONA  Bits------------------------
ODCONA5		 EQU 		H'05'
ODCONA4		 EQU 		H'04'
ODCONA3		 EQU 		H'03'
ODCONA2		 EQU 		H'02'
ODCONA1		 EQU 		H'01'
ODCONA0		 EQU 		H'00'

;------------------------ PWMD23H  Bits------------------------
PWMD39		 EQU 		H'05'
PWMD38		 EQU 		H'04'
PWMD29		 EQU 		H'01'
PWMD28		 EQU 		H'00'

