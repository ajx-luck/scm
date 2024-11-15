; Special function register definitions


;BANK0
INDF		EQU     H'000'
TMR0		EQU     H'001'
PCL		    EQU     H'002'
STATUS		EQU     H'003'
FSR		    EQU     H'004'
PORTA		EQU     H'005'
PORTB		EQU     H'006'
PORTC		EQU     H'007'

PORTE		EQU     H'009'
PCLATH		EQU     H'00A'
INTCON		EQU     H'00B'
PIR1		EQU     H'00C'
PIR2		EQU     H'00D'
TMR1L		EQU     H'00E'
TMR1H		EQU     H'00F'
T1CON		EQU     H'010'
TMR2		EQU     H'011'
T2CON		EQU     H'012'
SSPBUF		EQU     H'013'
SSPCON		EQU     H'014'
CCPR1L		EQU     H'015'
CCPR1H		EQU     H'016'
CCP1CON		EQU     H'017'
RCSTA		EQU     H'018'
TXREG		EQU     H'019'
RCREG		EQU     H'01A'
CCPR2L		EQU     H'01B'
CCPR2H		EQU     H'01C'
CCP2CON		EQU     H'01D'
ADRESH		EQU     H'01E'
ADCON0		EQU     H'01F'
;**************************************************************



;BANK1
;INDF		EQU     H'080'
OPTION_REG	EQU     H'081'
;PCL		    EQU     H'082'
;STATUS		EQU     H'083'
;FSR		    EQU     H'084'
TRISA		EQU     H'085'
TRISB		EQU     H'086'
TRISC		EQU     H'087'

TRISE		EQU     H'089'
;PCLATH		EQU     H'08A'
;INTCON		EQU     H'08B'
PIE1		EQU     H'08C'
PIE2		EQU     H'08D'
 
OSCCON		EQU     H'08F'
OSCTUNE		EQU     H'090'
SSPCON2		EQU     H'091'
PR2		    EQU     H'092'
SSPADD		EQU     H'093'
SSPMSK		EQU     H'093'
SSPSTAT		EQU     H'094'
WPUB		EQU     H'095'
IOCB		EQU     H'096'
 
TXSTA		EQU     H'098'
SPBREG		EQU     H'099'
SPBREGH		EQU     H'09A'
PWMCON		EQU     H'09B'
PWM1CYC		EQU     H'09C'
PWM2CYC		EQU     H'09D'
ADRESL		EQU     H'09E'
ADCON1		EQU     H'09F'
;***************************************************************


;BANK2
;INDF		EQU     H'100'
;TMR0		EQU     H'101'
;PCL		    EQU     H'102'
;STATUS		EQU     H'103'
;FSR		    EQU     H'104'
WDTCON		EQU     H'105'
;PORTB		EQU     H'106'



;PCLATH		EQU     H'10A'
;INTCON		EQU     H'10B'
EEDAT		EQU     H'10C'
EEADR		EQU     H'10D'
EEDATH		EQU     H'10E'
EEADRH		EQU     H'10F'
TABLE_SPH	EQU     H'110'
TABLE_SPL	EQU     H'111'
TABLE_DATAH	EQU     H'112'
KEYCON0		EQU     H'113'
KEYCON1		EQU     H'114'
KEYDATAL	EQU     H'115'
KEYDATAH	EQU     H'116'
KEYCON2		EQU     H'117'
KEYCON3		EQU     H'118'

WPUE		EQU     H'11A'

OPA0CON		EQU     H'11C'
OPA0ADJ		EQU     H'11D'
;***********************************************************


;BANK3
;INDF		EQU     H'180'
;OPTION_REG		EQU     H'181'
;PCL		    EQU     H'182'
;STATUS		EQU     H'183'
;FSR		    EQU     H'184'

;TRISB		EQU     H'186'
BAUDCTL		EQU     H'187'


;PCLATH		EQU     H'18A'
;INTCON		EQU     H'18B'
EECON1		EQU     H'18C'
EECON2		EQU     H'18D'
WPUA		EQU     H'18E'
WPUC		EQU     H'18F'
LEDCON0		EQU     H'190'
LEDCON1		EQU     H'191'
LEDADD		EQU     H'192'
LEDDATA		EQU     H'193'
SEGEN2		EQU     H'194'
SEGEN1		EQU     H'195'
SEGEN0		EQU     H'196'
COMEN		EQU     H'197'
;***************************************************************




; Definitions for STATUS register 
C		EQU     H'00'
DC		EQU     H'01'
Z		EQU     H'02'
PD		EQU     H'03'
TO		EQU     H'04'
RP0		EQU     H'05'
RP1		EQU     H'06'
IRP		EQU     H'07'

; Definitions for PORTA register 
RA0		EQU     H'00'
RA1		EQU     H'01'
RA2		EQU     H'02'
RA3		EQU     H'03'
RA4		EQU     H'04'
RA5		EQU     H'05'
RA6		EQU     H'06'
RA7		EQU     H'07'

; Definitions for PORTB register 
RB1		EQU     H'01'
RB2		EQU     H'02'
RB3		EQU     H'03'
RB4		EQU     H'04'
RB5		EQU     H'05'
RB6		EQU     H'06'
RB7		EQU     H'07'

; Definitions for PORTC register 
RC0		EQU     H'00'
RC1		EQU     H'01'
RC2		EQU     H'02'
RC3		EQU     H'03'
RC4		EQU     H'04'
RC5		EQU     H'05'
RC6		EQU     H'06'

; Definitions for PORTE register 
RE0		EQU     H'00'
RE1		EQU     H'01'
RE2		EQU     H'02'
RE3		EQU     H'03'

; Definitions for INTCON register 
RBIF	EQU     H'00'
; Alternate definition for backward compatibility
INTF	EQU     H'01'
T0IF	EQU     H'02'
RBIE	EQU     H'03'
; Alternate definition for backward compatibility
INTE	EQU     H'04'
T0IE	EQU     H'05'
PEIE	EQU     H'06'
GIE		EQU     H'07'

; Definitions for PIR1 register 
TMR1IF	EQU     H'00'
TMR2IF	EQU     H'01'
CCP1IF	EQU     H'02'
SSPIF	EQU     H'03'
TXIF	EQU     H'04'
RCIF	EQU     H'05'
ADIF	EQU     H'06'

; Definitions for PIR2 register 
CCP2IF	EQU     H'00'
BCLIF	EQU     H'03'
EEIF	EQU     H'04'
C1IF	EQU     H'05'
C2IF	EQU     H'06'

; Definitions for T1CON register 
TMR1ON	EQU     H'00'
TMR1CS	EQU     H'01'
T1SYNC	EQU     H'02'
T1OSCEN	EQU     H'03'
T1CKPS0	EQU     H'04'
T1CKPS1	EQU     H'05'
TMR1GE	EQU     H'06'
T1GINV	EQU     H'07'

; Definitions for T2CON register 
T2CKPS0	EQU     H'00'
T2CKPS1	EQU     H'01'
TMR2ON	EQU     H'02'
TOUTPS0	EQU     H'03'
TOUTPS1	EQU     H'04'
TOUTPS2	EQU     H'05'
TOUTPS3	EQU     H'06'

; Definitions for SSPCON register 
SSPM0	EQU     H'00'
SSPM1	EQU     H'01'
SSPM2	EQU     H'02'
SSPM3	EQU     H'03'
CKP		EQU     H'04'
SSPEN	EQU     H'05'
SSPOV	EQU     H'06'
WCOL	EQU     H'07'

; Definitions for CCP1CON register 
CCP1M0	EQU     H'00'
CCP1M1	EQU     H'01'
CCP1M2	EQU     H'02'
CCP1M3	EQU     H'03'
DC1B0	EQU     H'04'
DC1B1	EQU     H'05'
P1M0	EQU     H'06'
P1M1	EQU     H'07'

; Definitions for RCSTA register 
RX9D	EQU     H'00'
OERR	EQU     H'01'
FERR	EQU     H'02'
CREN	EQU     H'04'
SREN	EQU     H'05'
RX9		EQU     H'06'
SPEN	EQU     H'07'

; Definitions for CCP2CON register 
CCP2M0	EQU     H'00'
CCP2M1	EQU     H'01'
CCP2M2	EQU     H'02'
CCP2M3	EQU     H'03'
DC2B0	EQU     H'04'
DC2B1	EQU     H'05'
CCP2IN0	EQU     H'06'
CCP2IN1	EQU     H'07'

; Definitions for ADCON0 register 
ADON	EQU     H'00'
GODONE	EQU     H'01'
CHS0	EQU     H'02'
CHS1	EQU     H'03'
CHS2	EQU     H'04'
CHS3	EQU     H'05'
ADCS0	EQU     H'06'
ADCS1	EQU     H'07'

; Definitions for OPTION_REG register 
PS0		EQU     H'00'
PS1		EQU     H'01'
PS2		EQU     H'02'
PSA		EQU     H'03'
T0SE	EQU     H'04'
T0CS	EQU     H'05'
INTEDG	EQU     H'06'
RBPU	EQU     H'07'

; Definitions for TRISA register 
TRISA0	EQU     H'00'
TRISA1	EQU     H'01'
TRISA2	EQU     H'02'
TRISA3	EQU     H'03'
TRISA4	EQU     H'04'
TRISA5	EQU     H'05'
TRISA6	EQU     H'06'
TRISA7	EQU     H'07'

; Definitions for TRISB register 
TRISB1	EQU     H'01'
TRISB2	EQU     H'02'
TRISB3	EQU     H'03'
TRISB4	EQU     H'04'
TRISB5	EQU     H'05'
TRISB6	EQU     H'06'
TRISB7	EQU     H'07'

; Definitions for TRISC register 
TRISC0	EQU     H'00'
TRISC1	EQU     H'01'
TRISC2	EQU     H'02'
TRISC3	EQU     H'03'
TRISC4	EQU     H'04'
TRISC5	EQU     H'05'
TRISC6	EQU     H'06'


; Definitions for TRISE register 
TRISE0	EQU     H'00'
TRISE1	EQU     H'01'
TRISE2	EQU     H'02'
TRISE3	EQU     H'03'

; Definitions for PIE1 register 
TMR1IE	EQU     H'00'
TMR2IE	EQU     H'01'
CCP1IE	EQU     H'02'
SSPIE	EQU     H'03'
TXIE	EQU     H'04'
RCIE	EQU     H'05'
ADIE	EQU     H'06'

; Definitions for PIE2 register 
CCP2IE	EQU     H'00'
BCLIE	EQU     H'03'
EEIE	EQU     H'04'
C1IE	EQU     H'05'
C2IE	EQU     H'06'


; Definitions for OSCCON register 
SCS		EQU     H'00'
IRCF0	EQU     H'04'
IRCF1	EQU     H'05'
IRCF2	EQU     H'06'

; Definitions for OSCTUNE register 
TUN0	EQU     H'00'
TUN1	EQU     H'01'
TUN2	EQU     H'02'
TUN3	EQU     H'03'
TUN4	EQU     H'04'

; Definitions for SSPCON2 register 
SEN		EQU     H'00'
RSEN	EQU     H'01'
PEN		EQU     H'02'
RCEN	EQU     H'03'
ACKEN	EQU     H'04'
ACKDT	EQU     H'05'
ACKSTAT	EQU     H'06'
GCEN	EQU     H'07'

; Definitions for SSPMSK register 
MSK0		EQU     H'00'
MSK1		EQU     H'01'
MSK2		EQU     H'02'
MSK3		EQU     H'03'
MSK4		EQU     H'04'
MSK5		EQU     H'05'
MSK6		EQU     H'06'
MSK7		EQU     H'07'

; Definitions for SSPSTAT register 
BF		EQU     H'00'
UA		EQU     H'01'
RW		EQU     H'02'
S		EQU     H'03'
P		EQU     H'04'
DA		EQU     H'05'
CKE		EQU     H'06'
SMP		EQU     H'07'


; Definitions for WPUB register 
WPUB1	EQU     H'01'
WPUB2	EQU     H'02'
WPUB3	EQU     H'03'
WPUB4	EQU     H'04'
WPUB5	EQU     H'05'
WPUB6	EQU     H'06'
WPUB7	EQU     H'07'

; Definitions for IOCB register 
IOCB1	EQU     H'01'
IOCB2	EQU     H'02'
IOCB3	EQU     H'03'
IOCB4	EQU     H'04'
IOCB5	EQU     H'05'
IOCB6	EQU     H'06'
IOCB7	EQU     H'07'

; Definitions for TXSTA register 
TX9D	EQU     H'00'
TRMT	EQU     H'01'
BRGH	EQU     H'02'
SYNC	EQU     H'04'
TXEN	EQU     H'05'
TX9		EQU     H'06'
CSRC	EQU     H'07'

; Definitions for SPBRG register 
BRG0	EQU     H'00'
BRG1	EQU     H'01'
BRG2	EQU     H'02'
BRG3	EQU     H'03'
BRG4	EQU     H'04'
BRG5	EQU     H'05'
BRG6	EQU     H'06'
BRG7	EQU     H'07'

; Definitions for SPBRGH register 
BRG8	EQU     H'00'
BRG9	EQU     H'01'
BRG10	EQU     H'02'
BRG11	EQU     H'03'
BRG12	EQU     H'04'
BRG13	EQU     H'05'
BRG14	EQU     H'06'
BRG15	EQU     H'07'

; Definitions for PWMCON register 
CK10	EQU     H'00'
CK11	EQU     H'01'
CYC1EN	EQU     H'02'
CK20	EQU     H'04'
CK21	EQU     H'05'
CYC2EN	EQU     H'06'

; Definitions for ADCON1 register 
ADFM	EQU     H'07'

; Definitions for WDTCON register 
SWDTEN	EQU     H'00'

; Definitions for EEDAT register 
EEDAT0	EQU     H'00'
EEDAT1	EQU     H'01'
EEDAT2	EQU     H'02'
EEDAT3	EQU     H'03'
EEDAT4	EQU     H'04'
EEDAT5	EQU     H'05'
EEDAT6	EQU     H'06'
EEDAT7	EQU     H'07'

; Definitions for EEADR register 
EEADR0	EQU     H'00'
EEADR1	EQU     H'01'
EEADR2	EQU     H'02'
EEADR3	EQU     H'03'
EEADR4	EQU     H'04'
EEADR5	EQU     H'05'
EEADR6	EQU     H'06'
EEADR7	EQU     H'07'

; Definitions for EEDATH register 
EEDATH0	EQU     H'00'
EEDATH1	EQU     H'01'
EEDATH2	EQU     H'02'
EEDATH3	EQU     H'03'
EEDATH4	EQU     H'04'
EEDATH5	EQU     H'05'
EEDATH6	EQU     H'06'
EEDATH7	EQU     H'07'

; Definitions for EEADRH register 
EEADRH0	EQU     H'00'
EEADRH1	EQU     H'01'
EEADRH2	EQU     H'02'
EEADRH3	EQU     H'03'

; Definitions for KEYCON0 register 
KEN		EQU     H'00'
KCAP	EQU     H'01'
KTOUT	EQU     H'02'
CAPK0	EQU     H'03'
CAPK1	EQU     H'04'
CAPK2	EQU     H'05'
KDONE	EQU     H'07'

; Definitions for KEYCON1 register 
KCHS0	EQU     H'00'
KCHS1	EQU     H'01'
KCHS2	EQU     H'02'
KCHS3	EQU     H'03'
KCLK0	EQU     H'04'
KCLK1	EQU     H'05'
KVREF0	EQU     H'06'
KVREF1	EQU     H'07'

; Definitions for KEYCON2 register 
TKEN	EQU     H'00'
TK_AUTO	EQU     H'01'
TP_EN	EQU     H'02'
TK_DRI	EQU     H'03'
OVER_H	EQU     H'04'
CAP_LVBO0	EQU     H'05'
CAP_LVBO1	EQU     H'06'
CAP_LVBO2	EQU     H'07'

; Definitions for KEYCON3 register 
TKOSC_SLE0	EQU     H'00'
TKOSC_SLE1	EQU     H'01'
TKOSC_SLE2	EQU     H'02'
TKOSC_SLE3	EQU     H'03'
TKOSC_SLE4	EQU     H'04'
TKOSC_SLE5	EQU     H'05'
TKOSC_SLE6	EQU     H'06'
KCLK_SLE	EQU     H'07'

; Definitions for WPUE register 
WPUE0	EQU     H'00'
WPUE1	EQU     H'01'
WPUE2	EQU     H'02'
WPUE3	EQU     H'03'

; Definitions for OPA0CON register 
OPA0FT	EQU     H'00'
OPA0N	EQU     H'02'
OPA0P0	EQU     H'03'
OPA0P1	EQU     H'04'
OPA0P2	EQU     H'05'
OPA0O	EQU     H'06'
OPA0EN	EQU     H'07'

; Definitions for OPA0ADJ register 
OPA0ADJ0	EQU     H'00'
OPA0ADJ1	EQU     H'01'
OPA0ADJ2	EQU     H'02'
OPA0ADJ3	EQU     H'03'
OPA0ADJ4	EQU     H'04'
OPA0CRS		EQU     H'05'
OPA0COFM	EQU     H'06'
OPA0OUT		EQU     H'07'



; Definitions for BAUDCTL register 
BRG16	EQU     H'03'
SCKP	EQU     H'04'
RCIDL	EQU     H'06'

; Definitions for EECON1 register 
RD	EQU     H'00'
WR	EQU     H'01'
WREN	EQU     H'02'
WRERR	EQU     H'03'
EEPGD		EQU     H'07'

; Definitions for WPUA register 
WPUA0	EQU     H'00'
WPUA1	EQU     H'01'
WPUA2	EQU     H'02'
WPUA3	EQU     H'03'
WPUA4	EQU     H'04'
WPUA5	EQU     H'05'
WPUA6	EQU     H'06'
WPUA7	EQU     H'07'

; Definitions for WPUC register 
WPUC0	EQU     H'00'
WPUC1	EQU     H'01'
WPUC2	EQU     H'02'
WPUC3	EQU     H'03'
WPUC4	EQU     H'04'
WPUC5	EQU     H'05'
WPUC6	EQU     H'06'

; Definitions for LEDCON0 register 
LEDCLK0	EQU     H'00'
LEDCLK1	EQU     H'01'
LEDCLK2	EQU     H'02'
LEDCLK3	EQU     H'03'
COMSEL0	EQU     H'04'
COMSEL1	EQU     H'05'
LEDEN	EQU     H'06'
LCDEN	EQU     H'07'

; Definitions for LEDCON1 register 
LCD_ISLE0	EQU     H'00'
LCD_ISLE1	EQU     H'01'
SEGOUT0	EQU     H'04'
SEGOUT1	EQU     H'05'
LEDF	EQU     H'06'

; Definitions for LEDADD register 
LEDADD0	EQU     H'00'
LEDADD1	EQU     H'01'
LEDADD2	EQU     H'02'
LEDADD3	EQU     H'03'
LEDADD4	EQU     H'04'
COMSEL2	EQU     H'05'
B2RES	EQU     H'06'
LEDCS	EQU     H'07'


; Definitions for SEGEN2 register 
SEG16EN	EQU     H'00'
SEG17EN	EQU     H'01'
SEG18EN	EQU     H'02'

; Definitions for SEGEN1 register 
SEG8EN	EQU     H'00'
SEG9EN	EQU     H'01'
SEG10EN	EQU     H'02'
SEG11EN	EQU     H'03'
SEG12EN	EQU     H'04'
SEG13EN	EQU     H'05'
SEG14EN	EQU     H'06'
SEG15EN	EQU     H'07'

; Definitions for SEGEN0 register 
SEG0EN	EQU     H'00'
SEG1EN	EQU     H'01'
SEG2EN	EQU     H'02'
SEG3EN	EQU     H'03'
SEG4EN	EQU     H'04'
SEG5EN	EQU     H'05'
SEG6EN	EQU     H'06'
SEG7EN	EQU     H'07'

; Definitions for COMEN register 
COM0EN	EQU     H'00'
COM1EN	EQU     H'01'
COM2EN	EQU     H'02'
COM3EN	EQU     H'03'
COM4EN	EQU     H'04'
COM5EN	EQU     H'05'
COM6EN	EQU     H'06'
COM7EN	EQU     H'07'
