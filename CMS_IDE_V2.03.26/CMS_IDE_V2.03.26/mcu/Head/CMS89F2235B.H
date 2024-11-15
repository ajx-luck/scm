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
PCLATH						EQU		H'000A'
INTCON						EQU		H'000B'
PIR1						EQU		H'000C'
PIE1						EQU		H'000D'
TMR1L						EQU		H'000E'
TMR1H						EQU		H'000F'
T1CON						EQU		H'0010'
TMR2						EQU		H'0011'
T2CON						EQU		H'0012'
PR2							EQU		H'0013'
CCPR0L						EQU		H'0014'
CCPR1L						EQU		H'0015'
PWMCON						EQU		H'0016'
OSCTUNE						EQU		H'0017'

ADRESH						EQU		H'001C'
ADRESL						EQU		H'001D'
ADCON1						EQU		H'001E'
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
IOCB						EQU		H'0088'
WDTCON						EQU		H'0089'	
;PCLATH						EQU		H'008A'	
;INTCON						EQU		H'008B'
OSCCON						EQU		H'008C'
EEDATA						EQU		H'008D'
EEDATH						EQU		H'008E'
EEADR						EQU		H'008F'
EEADRH						EQU		H'0090'
EECON1						EQU		H'0091'
EECON2						EQU		H'0092'
TABLE_SPH					EQU		H'0093'
TABLE_SPL					EQU		H'0094'
TABLE_DATAH					EQU		H'0095'
WPUA						EQU		H'0096'
WPUB						EQU		H'0097'
WPUC						EQU		H'0098'
WPDA						EQU		H'0099'
WPDB						EQU		H'009A'
WPDC						EQU		H'009B'
LCDCON						EQU		H'009C'
LCDCON3						EQU		H'009D'
LCDCON0						EQU		H'009E'
LCDCON2						EQU		H'009F'

LEDCON						EQU		H'009C'
LEDCON3						EQU		H'009D'
LEDCON0						EQU		H'009E'
LEDCON2						EQU		H'009F'


;**************************************************************************
;----- STATUS Bits --------------------------------------------------------

IRP							EQU		H'07'
RP1							EQU		H'06'
RP0							EQU		H'05'	
NOT_TO						EQU		H'04'
NOT_PD						EQU		H'03'
TO							EQU		H'04'	
PD							EQU		H'03'
Z							EQU		H'02'
DC							EQU		H'01'
C							EQU		H'00'

;----- INTCON Bits ------------------------------------------------------

GIE							EQU		H'07'
PEIE						EQU		H'06'
T0IE						EQU		H'05'
INTE						EQU		H'04'	
RBIE						EQU		H'03'
T0IF						EQU		H'02'
INTF						EQU		H'01'
RBIF						EQU		H'00'

;----- PIR1 Bits --------------------------------------------------------

EEIF						EQU		H'03'		
ADIF						EQU		H'02'
TMR2IF						EQU		H'01'
TMR1IF						EQU		H'00'


;----- T1CON Bits -------------------------------------------------------

T1GIV						EQU		H'07'
T1GINV						EQU		H'07'	
TMR1GE						EQU		H'06'
T1CKPS1						EQU		H'05'
T1CKPS0						EQU		H'04'
T1OSCEN						EQU		H'03'	
T1SYNC						EQU		H'02'
TMR1CS						EQU		H'01'
TMR1ON						EQU		H'00'

;----- T2CON Bits -------------------------------------------------------

TOUTPS3						EQU		H'06'
TOUTPS2						EQU		H'05'
TOUTPS1						EQU		H'04'
TOUTPS0						EQU		H'03'
TMR2ON						EQU		H'02'
T2CKPS1						EQU		H'01'
T2CKPS0						EQU		H'00'


;----- ADCON0 Bits ------------------------------------------------------

ADCS1						EQU		H'07'
ADCS0						EQU		H'06'
CHS3						EQU		H'05'
CHS2						EQU		H'04'
CHS1						EQU		H'03'
CHS0						EQU		H'02'
GO							EQU		H'01'
NOT_DONE					EQU		H'01'
ADON						EQU		H'00'

;----- OPTION_REG Bits --------------------------------------------------

INTEDG						EQU		H'06'
T0CS						EQU		H'05'
T0SE						EQU		H'04'
PSA							EQU		H'03'
PS2							EQU		H'02'
PS1							EQU		H'01'
PS0							EQU		H'00'

;----- ADCON1 Bits ------------------------------------------------------

ADFM						EQU		H'07'
CHS4						EQU		H'06'			


;----- PIE1 Bits --------------------------------------------------------

EEIE						EQU		H'03'			
ADIE						EQU		H'02'
TMR2IE						EQU		H'01'
TMR1IE						EQU		H'00'





;----- OSCCON Bits ------------------------------------------------------

IRCF2						EQU		H'06'
IRCF1						EQU		H'05'
IRCF0						EQU		H'04'
SCS							EQU		H'00'

;----- OSCTUNE Bits -----------------------------------------------------
TUN6						EQU		H'06'			
TUN5						EQU		H'05'
TUN4						EQU		H'04'
TUN3						EQU		H'03'
TUN2						EQU		H'02'
TUN1						EQU		H'01'
TUN0						EQU		H'00'

;----- WPUB Bits --------------------------------------------------------

WPUB7						EQU		H'07'
WPUB6						EQU		H'06'
WPUB5						EQU		H'05'
WPUB4						EQU		H'04'
WPUB3						EQU		H'03'
WPUB2						EQU		H'02'
WPUB1						EQU		H'01'
WPUB0						EQU		H'00'				
 
;----- IOCB Bits --------------------------------------------------------

IOCB7						EQU		H'07'
IOCB6						EQU		H'06'
IOCB5						EQU		H'05'
IOCB4						EQU		H'04'
IOCB3						EQU		H'03'
IOCB2						EQU		H'02'
IOCB1						EQU		H'01'
IOCB0						EQU		H'00'




;----- WDTCON Bits ------------------------------------------------------

SWDTEN						EQU		H'00'




;----- EECON1 Bits ------------------------------------------------------

EEPGD						EQU		H'07'
WRERR						EQU		H'03'
WREN						EQU		H'02'
WR							EQU		H'01'
RD							EQU		H'00'

			

;----- LCDCON Bits -----------------------------------------------------

LCDEN						EQU		H'07'
LCDF						EQU		H'04'

;----- LCDCON3 Bits -----------------------------------------------------

COM17EN						EQU		H'07'
COM16EN						EQU		H'06'
COM15EN						EQU		H'05'
COM14EN						EQU		H'04'
COM13EN						EQU		H'03'
COM12EN						EQU		H'02'
COM11EN						EQU		H'01'
COM10EN						EQU		H'00'				

;----- LCDCON0 Bits -----------------------------------------------------

COM7EN						EQU		H'07'
COM6EN						EQU		H'06'
COM5EN						EQU		H'05'
COM4EN						EQU		H'04'
COM3EN						EQU		H'03'
COM2EN						EQU		H'02'
COM1EN						EQU		H'01'
COM0EN						EQU		H'00'	

;----- LCDCON2 Bits -----------------------------------------------------

LCDISEL1					EQU		H'07'
LCDISEL0					EQU		H'06'
COM9EN						EQU		H'01'
COM8EN						EQU		H'00'	



;----- PORTA Bits -----------------------------------------------------

RA7							EQU		H'07'
RA6							EQU		H'06'
RA5							EQU		H'05'
RA4							EQU		H'04'
RA3							EQU		H'03'
RA2							EQU		H'02'
RA1							EQU		H'01'
RA0							EQU		H'00'

;----- PORTB Bits -----------------------------------------------------

RB7							EQU		H'07'
RB6							EQU		H'06'
RB5							EQU		H'05'
RB4							EQU		H'04'
RB3							EQU		H'03'
RB2							EQU		H'02'
RB1							EQU		H'01'
RB0							EQU		H'00'

;----- PORTC Bits -----------------------------------------------------

RC7							EQU		H'07'
RC6							EQU		H'06'
RC5							EQU		H'05'
RC4							EQU		H'04'
RC3							EQU		H'03'
RC2							EQU		H'02'
RC1							EQU		H'01'
RC0							EQU		H'00'


;----- TRISA Bits -----------------------------------------------------

TRISA7						EQU		H'07'
TRISA6						EQU		H'06'
TRISA5						EQU		H'05'
TRISA4						EQU		H'04'
TRISA3						EQU		H'03'
TRISA2						EQU		H'02'
TRISA1						EQU		H'01'
TRISA0						EQU		H'00'


;----- TRISB Bits -----------------------------------------------------

TRISB7						EQU		H'07'
TRISB6						EQU		H'06'
TRISB5						EQU		H'05'
TRISB4						EQU		H'04'
TRISB3						EQU		H'03'
TRISB2						EQU		H'02'
TRISB1						EQU		H'01'
TRISB0						EQU		H'00'

;----- TRISC Bits -----------------------------------------------------

TRISC7						EQU		H'07'
TRISC6						EQU		H'06'
TRISC5						EQU		H'05'
TRISC4						EQU		H'04'
TRISC3						EQU		H'03'
TRISC2						EQU		H'02'
TRISC1						EQU		H'01'
TRISC0						EQU		H'00'

;----- WPUA Bits -----------------------------------------------------

WPUA7						EQU		H'07'
WPUA6						EQU		H'06'
WPUA5						EQU		H'05'
WPUA4						EQU		H'04'
WPUA3						EQU		H'03'
WPUA2						EQU		H'02'
WPUA1						EQU		H'01'
WPUA0						EQU		H'00'



;----- WPUC Bits -----------------------------------------------------

WPUC7						EQU		H'07'
WPUC6						EQU		H'06'
WPUC5						EQU		H'05'
WPUC4						EQU		H'04'
WPUC3						EQU		H'03'
WPUC2						EQU		H'02'
WPUC1						EQU		H'01'
WPUC0						EQU		H'00'


;----- WPDA Bits -----------------------------------------------------

WPDA7						EQU		H'07'
WPDA6						EQU		H'06'
WPDA5						EQU		H'05'
WPDA4						EQU		H'04'
WPDA3						EQU		H'03'
WPDA2						EQU		H'02'
WPDA1						EQU		H'01'
WPDA0						EQU		H'00'


;----- WPDB Bits -----------------------------------------------------

WPDB7						EQU		H'07'
WPDB6						EQU		H'06'
WPDB5						EQU		H'05'
WPDB4						EQU		H'04'
WPDB3						EQU		H'03'
WPDB2						EQU		H'02'
WPDB1						EQU		H'01'
WPDB0						EQU		H'00'


;----- WPDC Bits -----------------------------------------------------

WPDC7						EQU		H'07'
WPDC6						EQU		H'06'
WPDC5						EQU		H'05'
WPDC4						EQU		H'04'
WPDC3						EQU		H'03'
WPDC2						EQU		H'02'
WPDC1						EQU		H'01'
WPDC0						EQU		H'00'


;----- PWMCON Bits -----------------------------------------------------

PWM0EN						EQU		H'00'
PWM1EN						EQU		H'01'