INDF		 EQU 		 H'000'
TMR0		 EQU 		 H'001'
PCL		 EQU 		 H'002'
STATUS		 EQU 		 H'003'
FSR		 EQU 		 H'004'
PORTA		 EQU 		 H'005'
PORTB		 EQU 		 H'006'
PORTC		 EQU 		 H'007'
WPUB		 EQU 		 H'009'
PCLATH		 EQU 		 H'00A'
INTCON		 EQU 		 H'00B'
PIR1		 EQU 		 H'00C'
PIR2		 EQU 		 H'00D'
TMR1L		 EQU 		 H'00E'
TMR1H		 EQU 		 H'00F'
T1CON		 EQU 		 H'010'
TMR2		 EQU 		 H'011'
T2CON		 EQU 		 H'012'
PIE1		 EQU 		 H'013'
PIE2		 EQU 		 H'014'
PIE3		 EQU 		 H'015'
PIR3		 EQU 		 H'016'
PWMCON0		 EQU 		 H'017'
PWMCON1		 EQU 		 H'018'
PWMTL		 EQU 		 H'019'
PWMTH		 EQU 		 H'01A'
PWMD0L		 EQU 		 H'01B'
PWMD1L		 EQU 		 H'01C'
PWMD2L		 EQU 		 H'01D'
PWMDH		 EQU 		 H'01E'
PWM2TL		 EQU 		 H'01F'
OPTION_REG		 EQU 		 H'081'
TRISA		 EQU 		 H'085'
TRISB		 EQU 		 H'086'
TRISC		 EQU 		 H'087'
IOCB		 EQU 		 H'088'
ADCON2		 EQU 		 H'089'
CRCIN		 EQU 		 H'08C'
CRCDL		 EQU 		 H'08D'
CRCDH		 EQU 		 H'08E'
OSCCON		 EQU 		 H'08F'
WDTCON		 EQU 		 H'090'
SPBRG		 EQU 		 H'091'
PR2		 EQU 		 H'092'
IICADD		 EQU 		 H'093'
IICSTAT		 EQU 		 H'094'
IICCON		 EQU 		 H'095'
IICCON2		 EQU 		 H'096'
IICBUF		 EQU 		 H'097'
TXSTA		 EQU 		 H'098'
TXREG		 EQU 		 H'099'
RCSTA		 EQU 		 H'09A'
RCREG		 EQU 		 H'09B'
ADRESL		 EQU 		 H'09C'
ADRESH		 EQU 		 H'09D'
ADCON0		 EQU 		 H'09E'
ADCON1		 EQU 		 H'09F'
CM0CNT		 EQU 		 H'0105'
CMOUTEN		 EQU 		 H'0106'
WPUA		 EQU 		 H'0107'
WPUC		 EQU 		 H'0108'
CM1CNT		 EQU 		 H'0109'
OPAADJ		 EQU 		 H'010C'
OPACON		 EQU 		 H'010D'
PGAADJ		 EQU 		 H'010E'
PGACON		 EQU 		 H'010F'
TABLE_SPL		 EQU 		 H'0110'
TABLE_SPH		 EQU 		 H'0111'
TABLE_DATAH		 EQU 		 H'0112'
CMPOUT		 EQU 		 H'0113'
CM0ADJ		 EQU 		 H'0114'
CM0CON		 EQU 		 H'0115'
CM1CON		 EQU 		 H'0116'
CM1CON1		 EQU 		 H'0117'
CM2CON		 EQU 		 H'0118'
CM3CON		 EQU 		 H'0119'
CM4CON		 EQU 		 H'011A'
CM4CON1		 EQU 		 H'011B'
CM5CON		 EQU 		 H'011C'
CM6CON		 EQU 		 H'011D'
CM7CON		 EQU 		 H'011E'
CM67CON		 EQU 		 H'011F'
CM1DAC		 EQU 		 H'0185'
CM3DAC		 EQU 		 H'0186'
CM5DAC		 EQU 		 H'0187'
EECON1		 EQU 		 H'0188'
EECON2		 EQU 		 H'0189'
EEDAT		 EQU 		 H'018C'
EEDATH		 EQU 		 H'018D'
EEADR		 EQU 		 H'018E'
EEADRH		 EQU 		 H'018F'
PPGTMRL		 EQU 		 H'0190'
PPGTMRH		 EQU 		 H'0191'
PPGCON0		 EQU 		 H'0192'
PPGCON1		 EQU 		 H'0193'
PPGCON2		 EQU 		 H'0194'
PPGCON3		 EQU 		 H'0195'
ADCCNTL		 EQU 		 H'0196'
ADCCNTH		 EQU 		 H'0197'
ADCSUM0		 EQU 		 H'0198'
ADCSUM1		 EQU 		 H'0199'
ADCSUM2		 EQU 		 H'019A'
CCPRL		 EQU 		 H'019B'
CCPRH		 EQU 		 H'019C'
CCPCON		 EQU 		 H'019D'
CMPVEN		 EQU 		 H'019E'
;------------------------ STATUS  Bits------------------------
IRP		 EQU 		H'07'
RP1		 EQU 		H'06'
RP0		 EQU 		H'05'
TO		 EQU 		H'04'
PD		 EQU 		H'03'
Z		 EQU 		H'02'
DC		 EQU 		H'01'
C		 EQU 		H'00'

;------------------------ PORTA  Bits------------------------
RA7		 EQU 		H'07'
RA6		 EQU 		H'06'
RA5		 EQU 		H'05'
RA4		 EQU 		H'04'
RA3		 EQU 		H'03'
RA2		 EQU 		H'02'
RA1		 EQU 		H'01'
RA0		 EQU 		H'00'

;------------------------ PORTB  Bits------------------------
RB7		 EQU 		H'07'
RB6		 EQU 		H'06'
RB5		 EQU 		H'05'
RB4		 EQU 		H'04'
RB3		 EQU 		H'03'
RB2		 EQU 		H'02'
RB1		 EQU 		H'01'
RB0		 EQU 		H'00'

;------------------------ PORTC  Bits------------------------
RC2		 EQU 		H'02'
RC1		 EQU 		H'01'
RC0		 EQU 		H'00'

;------------------------ WPUB  Bits------------------------
WPUB7		 EQU 		H'07'
WPUB6		 EQU 		H'06'
WPUB5		 EQU 		H'05'
WPUB4		 EQU 		H'04'
WPUB3		 EQU 		H'03'
WPUB2		 EQU 		H'02'
WPUB1		 EQU 		H'01'
WPUB0		 EQU 		H'00'

;------------------------ INTCON  Bits------------------------
GIE		 EQU 		H'07'
PEIE		 EQU 		H'06'
T0IE		 EQU 		H'05'
INTE		 EQU 		H'04'
RBIE		 EQU 		H'03'
T0IF		 EQU 		H'02'
INTF		 EQU 		H'01'
RBIF		 EQU 		H'00'

;------------------------ PIR1  Bits------------------------
ADIF		 EQU 		H'06'
RCIF		 EQU 		H'05'
TXIF		 EQU 		H'04'
PWMIF		 EQU 		H'02'
TMR2IF		 EQU 		H'01'
TMR1IF		 EQU 		H'00'

;------------------------ PIR2  Bits------------------------
PPGIF		 EQU 		H'05'
EEIF		 EQU 		H'04'
BCLIF		 EQU 		H'03'
IICIF		 EQU 		H'02'
PPGWDTIF		 EQU 		H'01'
CCPIF		 EQU 		H'00'

;------------------------ T1CON  Bits------------------------
T1GINV		 EQU 		H'07'
TMR1GE		 EQU 		H'06'
T1CKPS1		 EQU 		H'05'
T1CKPS0		 EQU 		H'04'
T1SYNC		 EQU 		H'02'
TMR1CS		 EQU 		H'01'
TMR1ON		 EQU 		H'00'

;------------------------ T2CON  Bits------------------------
TOUTPS3		 EQU 		H'06'
TOUTPS2		 EQU 		H'05'
TOUTPS1		 EQU 		H'04'
TOUTPS0		 EQU 		H'03'
TMR2ON		 EQU 		H'02'
T2CKPS1		 EQU 		H'01'
T2CKPS0		 EQU 		H'00'

;------------------------ PIE1  Bits------------------------
ADIE		 EQU 		H'06'
RCIE		 EQU 		H'05'
TXIE		 EQU 		H'04'
PWMIE		 EQU 		H'02'
TMR2IE		 EQU 		H'01'
TMR1IE		 EQU 		H'00'

;------------------------ PIE2  Bits------------------------
PPGIE		 EQU 		H'05'
EEIE		 EQU 		H'04'
BCLIE		 EQU 		H'03'
IICIE		 EQU 		H'02'
PPGWDTIE		 EQU 		H'01'
CCPIE		 EQU 		H'00'

;------------------------ PIE3  Bits------------------------
CM7IE		 EQU 		H'07'
CM6IE		 EQU 		H'06'
CM5IE		 EQU 		H'05'
CM4IE		 EQU 		H'04'
CM3IE		 EQU 		H'03'
CM2IE		 EQU 		H'02'
CM1IE		 EQU 		H'01'
CM0IE		 EQU 		H'00'

;------------------------ PIR3  Bits------------------------
CM7IF		 EQU 		H'07'
CM6IF		 EQU 		H'06'
CM5IF		 EQU 		H'05'
CM4IF		 EQU 		H'04'
CM3IF		 EQU 		H'03'
CM2IF		 EQU 		H'02'
CM1IF		 EQU 		H'01'
CM0IF		 EQU 		H'00'

;------------------------ PWMCON0  Bits------------------------
CLKDIV2		 EQU 		H'07'
CLKDIV1		 EQU 		H'06'
CLKDIV0		 EQU 		H'05'
PWM2EN		 EQU 		H'02'
PWM1EN		 EQU 		H'01'
PWM0EN		 EQU 		H'00'

;------------------------ PWMCON1  Bits------------------------
PWM2IOS1		 EQU 		H'05'
PWM2IOS0		 EQU 		H'04'
PWM1IOS1		 EQU 		H'03'
PWM1IOS0		 EQU 		H'02'
PWM0IOS1		 EQU 		H'01'
PWM0IOS0		 EQU 		H'00'

;------------------------ PWMTL  Bits------------------------
PWMT7		 EQU 		H'07'
PWMT6		 EQU 		H'06'
PWMT5		 EQU 		H'05'
PWMT4		 EQU 		H'04'
PWMT3		 EQU 		H'03'
PWMT2		 EQU 		H'02'
PWMT1		 EQU 		H'01'
PWMT0		 EQU 		H'00'

;------------------------ PWMTH  Bits------------------------
PWM2T9		 EQU 		H'03'
PWM2T8		 EQU 		H'02'
PWMT9		 EQU 		H'01'
PWMT8		 EQU 		H'00'

;------------------------ PWMDH  Bits------------------------
PWMD29		 EQU 		H'05'
PWMD28		 EQU 		H'04'
PWMD19		 EQU 		H'03'
PWMD18		 EQU 		H'02'
PWMD09		 EQU 		H'01'
PWMD08		 EQU 		H'00'

;------------------------ OPTION_REG  Bits------------------------
INTEDG		 EQU 		H'06'
T0CS		 EQU 		H'05'
T0SE		 EQU 		H'04'
PSA		 EQU 		H'03'
PS2		 EQU 		H'02'
PS1		 EQU 		H'01'
PS0		 EQU 		H'00'

;------------------------ TRISA  Bits------------------------
TRISA7		 EQU 		H'07'
TRISA6		 EQU 		H'06'
TRISA5		 EQU 		H'05'
TRISA4		 EQU 		H'04'
TRISA3		 EQU 		H'03'
TRISA2		 EQU 		H'02'
TRISA1		 EQU 		H'01'
TRISA0		 EQU 		H'00'

;------------------------ TRISB  Bits------------------------
TRISB7		 EQU 		H'07'
TRISB6		 EQU 		H'06'
TRISB5		 EQU 		H'05'
TRISB4		 EQU 		H'04'
TRISB3		 EQU 		H'03'
TRISB2		 EQU 		H'02'
TRISB1		 EQU 		H'01'
TRISB0		 EQU 		H'00'

;------------------------ TRISC  Bits------------------------
TRISC2		 EQU 		H'02'
TRISC1		 EQU 		H'01'
TRISC0		 EQU 		H'00'

;------------------------ IOCB  Bits------------------------
IOCB7		 EQU 		H'07'
IOCB6		 EQU 		H'06'
IOCB5		 EQU 		H'05'
IOCB4		 EQU 		H'04'
IOCB3		 EQU 		H'03'
IOCB2		 EQU 		H'02'
IOCB1		 EQU 		H'01'
IOCB0		 EQU 		H'00'

;------------------------ ADCON2  Bits------------------------
ADAUTO_PPG		 EQU 		H'07'
ADAUTO_SUM		 EQU 		H'06'
PPG_SET1		 EQU 		H'05'
PPG_SET0		 EQU 		H'04'
ADAUTODLY3		 EQU 		H'03'
ADAUTODLY2		 EQU 		H'02'
ADAUTODLY1		 EQU 		H'01'
ADAUTODLY0		 EQU 		H'00'

;------------------------ OSCCON  Bits------------------------
IRCF2		 EQU 		H'06'
IRCF1		 EQU 		H'05'
IRCF0		 EQU 		H'04'

;------------------------ WDTCON  Bits------------------------
SWDTEN		 EQU 		H'00'

;------------------------ SPBRG  Bits------------------------
BRG7		 EQU 		H'07'
BRG6		 EQU 		H'06'
BRG5		 EQU 		H'05'
BRG4		 EQU 		H'04'
BRG3		 EQU 		H'03'
BRG2		 EQU 		H'02'
BRG1		 EQU 		H'01'
BRG0		 EQU 		H'00'

;------------------------ IICSTAT  Bits------------------------
IDLE		 EQU 		H'06'
DA		 EQU 		H'05'
P		 EQU 		H'04'
S		 EQU 		H'03'
RW		 EQU 		H'02'
BF		 EQU 		H'00'

;------------------------ IICCON  Bits------------------------
IICWCOL		 EQU 		H'07'
SSPOV		 EQU 		H'06'
IICEN		 EQU 		H'05'
IICCKP		 EQU 		H'04'
IICTOS1		 EQU 		H'03'
IICTOS0		 EQU 		H'02'
IICM1		 EQU 		H'01'
IICM0		 EQU 		H'00'

;------------------------ IICCON2  Bits------------------------
GCEN		 EQU 		H'07'
ACKSTAT		 EQU 		H'06'
ACKDT		 EQU 		H'05'
ACKEN		 EQU 		H'04'
RCEN		 EQU 		H'03'
PEN		 EQU 		H'02'
RSEN		 EQU 		H'01'
SEN		 EQU 		H'00'

;------------------------ TXSTA  Bits------------------------
CSRC		 EQU 		H'07'
TX9EN		 EQU 		H'06'
TXEN		 EQU 		H'05'
SYNC		 EQU 		H'04'
SCKP		 EQU 		H'03'
STOPBIT		 EQU 		H'02'
TRMT		 EQU 		H'01'
TX9D		 EQU 		H'00'

;------------------------ RCSTA  Bits------------------------
SPEN		 EQU 		H'07'
RX9EN		 EQU 		H'06'
SREN		 EQU 		H'05'
CREN		 EQU 		H'04'
RCIDL		 EQU 		H'03'
FERR		 EQU 		H'02'
OERR		 EQU 		H'01'
RX9D		 EQU 		H'00'

;------------------------ ADCON0  Bits------------------------
CHS4		 EQU 		H'06'
CHS3		 EQU 		H'05'
CHS2		 EQU 		H'04'
CHS1		 EQU 		H'03'
CHS0		 EQU 		H'02'
GODONE		 EQU 		H'01'
ADON		 EQU 		H'00'

;------------------------ ADCON1  Bits------------------------
ADFM		 EQU 		H'07'
ADCS2		 EQU 		H'06'
ADCS1		 EQU 		H'05'
ADCS0		 EQU 		H'04'
AUTO_GO		 EQU 		H'03'
ADCSUM_OV		 EQU 		H'02'
ADCSUM_CLR		 EQU 		H'01'
TSM		 EQU 		H'00'

;------------------------ CM0CNT  Bits------------------------
CM0OVF		 EQU 		H'07'
CM0COUNT6		 EQU 		H'06'
CM0COUNT5		 EQU 		H'05'
CM0COUNT4		 EQU 		H'04'
CM0COUNT3		 EQU 		H'03'
CM0COUNT2		 EQU 		H'02'
CM0COUNT1		 EQU 		H'01'
CM0COUNT0		 EQU 		H'00'

;------------------------ CMOUTEN  Bits------------------------
DACVREF		 EQU 		H'07'
DACS2		 EQU 		H'06'
DACS1		 EQU 		H'05'
DACS0		 EQU 		H'04'
OUTEN		 EQU 		H'03'
CMOUTEN2		 EQU 		H'02'
CMOUTEN1		 EQU 		H'01'
CMOUTEN0		 EQU 		H'00'

;------------------------ WPUA  Bits------------------------
WPUA7		 EQU 		H'07'
WPUA6		 EQU 		H'06'
WPUA5		 EQU 		H'05'
WPUA4		 EQU 		H'04'
WPUA3		 EQU 		H'03'
WPUA2		 EQU 		H'02'
WPUA1		 EQU 		H'01'
WPUA0		 EQU 		H'00'

;------------------------ WPUC  Bits------------------------
WPUC2		 EQU 		H'02'
WPUC1		 EQU 		H'01'
WPUC0		 EQU 		H'00'

;------------------------ OPAADJ  Bits------------------------
OPAM1		 EQU 		H'07'
OPAM0		 EQU 		H'06'
OPADOUT		 EQU 		H'05'
OPAADJ4		 EQU 		H'04'
OPAADJ3		 EQU 		H'03'
OPAADJ2		 EQU 		H'02'
OPAADJ1		 EQU 		H'01'
OPAADJ0		 EQU 		H'00'

;------------------------ OPACON  Bits------------------------
OPAEN		 EQU 		H'07'
OPAS1		 EQU 		H'03'
OPAS0		 EQU 		H'02'
ANRS1		 EQU 		H'01'
ANRS0		 EQU 		H'00'

;------------------------ PGAADJ  Bits------------------------
PGAM1		 EQU 		H'07'
PGAM0		 EQU 		H'06'
PGADOUT		 EQU 		H'05'
PGAADJ4		 EQU 		H'04'
PGAADJ3		 EQU 		H'03'
PGAADJ2		 EQU 		H'02'
PGAADJ1		 EQU 		H'01'
PGAADJ0		 EQU 		H'00'

;------------------------ PGACON  Bits------------------------
PGAEN		 EQU 		H'07'
PGAGS1		 EQU 		H'06'
PGAGS0		 EQU 		H'05'
PGAF		 EQU 		H'03'
PGAVCOM		 EQU 		H'02'
PGATEN		 EQU 		H'01'

;------------------------ CMPOUT  Bits------------------------
CM7OUT		 EQU 		H'07'
CM6OUT		 EQU 		H'06'
CM5OUT		 EQU 		H'05'
CM4OUT		 EQU 		H'04'
CM3OUT		 EQU 		H'03'
CM2OUT		 EQU 		H'02'
CM1OUT		 EQU 		H'01'
CM0OUT		 EQU 		H'00'

;------------------------ CM0ADJ  Bits------------------------
CM0COFM		 EQU 		H'07'
CM0CRS1		 EQU 		H'06'
CM0CRS0		 EQU 		H'05'
CM0ADJ4		 EQU 		H'04'
CM0ADJ3		 EQU 		H'03'
CM0ADJ2		 EQU 		H'02'
CM0ADJ1		 EQU 		H'01'
CM0ADJ0		 EQU 		H'00'

;------------------------ CM0CON  Bits------------------------
CM0EN		 EQU 		H'07'
CM0DBSEL1		 EQU 		H'06'
CM0DBSEL0		 EQU 		H'05'
CM0CEN		 EQU 		H'04'
CM0INTES		 EQU 		H'03'
CM0CLR		 EQU 		H'02'

;------------------------ CM1CON  Bits------------------------
CM1EN		 EQU 		H'07'
CM1DBSEL1		 EQU 		H'06'
CM1DBSEL0		 EQU 		H'05'
CM1CPPG		 EQU 		H'04'
ATPEN		 EQU 		H'03'
CM1CLR		 EQU 		H'02'
CM1CNTOV		 EQU 		H'01'
CM1CH		 EQU 		H'00'

;------------------------ CM1CON1  Bits------------------------
CM1SUB3		 EQU 		H'07'
CM1SUB2		 EQU 		H'06'
CM1SUB1		 EQU 		H'05'
CM1SUB0		 EQU 		H'04'
CM1COF		 EQU 		H'03'
CM1COS2		 EQU 		H'02'
CM1COS1		 EQU 		H'01'
CM1COS0		 EQU 		H'00'

;------------------------ CM2CON  Bits------------------------
CM2EN		 EQU 		H'07'
CM2DBSEL1		 EQU 		H'06'
CM2DBSEL0		 EQU 		H'05'
CM2PVSL4		 EQU 		H'04'
CM2PVSL3		 EQU 		H'03'
CM2PVSL2		 EQU 		H'02'
CM2PVSL1		 EQU 		H'01'
CM2PVSL0		 EQU 		H'00'

;------------------------ CM3CON  Bits------------------------
CM3EN		 EQU 		H'07'
CM3DBSEL1		 EQU 		H'06'
CM3DBSEL0		 EQU 		H'05'
CM3OPS		 EQU 		H'03'
CM3CH1		 EQU 		H'01'
CM3CH0		 EQU 		H'00'

;------------------------ CM4CON  Bits------------------------
CM4EN		 EQU 		H'07'
CM4DBSEL1		 EQU 		H'06'
CM4DBSEL0		 EQU 		H'05'
CM4PVSL4		 EQU 		H'04'
CM4PVSL3		 EQU 		H'03'
CM4PVSL2		 EQU 		H'02'
CM4PVSL1		 EQU 		H'01'
CM4PVSL0		 EQU 		H'00'

;------------------------ CM4CON1  Bits------------------------
CM4CPPG1		 EQU 		H'07'
CM4CPPG0		 EQU 		H'06'
CM4CH		 EQU 		H'05'
CM4SUB4		 EQU 		H'04'
CM4SUB3		 EQU 		H'03'
CM4SUB2		 EQU 		H'02'
CM4SUB1		 EQU 		H'01'
CM4SUB0		 EQU 		H'00'

;------------------------ CM5CON  Bits------------------------
CM5EN		 EQU 		H'07'
CM5DBSEL1		 EQU 		H'06'
CM5DBSEL0		 EQU 		H'05'
CM5CPPG		 EQU 		H'04'
CM5OPS		 EQU 		H'03'
CM5CH		 EQU 		H'00'

;------------------------ CM6CON  Bits------------------------
CM6EN		 EQU 		H'07'
CM6DBSEL1		 EQU 		H'06'
CM6DBSEL0		 EQU 		H'05'
CM6PVSL4		 EQU 		H'04'
CM6PVSL3		 EQU 		H'03'
CM6PVSL2		 EQU 		H'02'
CM6PVSL1		 EQU 		H'01'
CM6PVSL0		 EQU 		H'00'

;------------------------ CM7CON  Bits------------------------
CM7EN		 EQU 		H'07'
CM7DBSEL1		 EQU 		H'06'
CM7DBSEL0		 EQU 		H'05'
CM7PVSL4		 EQU 		H'04'
CM7PVSL3		 EQU 		H'03'
CM7PVSL2		 EQU 		H'02'
CM7PVSL1		 EQU 		H'01'
CM7PVSL0		 EQU 		H'00'

;------------------------ CM67CON  Bits------------------------
TEST_EN1		 EQU 		H'07'
TEST_EN0		 EQU 		H'06'
CM7CH1		 EQU 		H'03'
CM7CH0		 EQU 		H'02'
CM7INTES		 EQU 		H'01'
CM6INTES		 EQU 		H'00'

;------------------------ EECON1  Bits------------------------
EEPGD		 EQU 		H'07'
WRERR		 EQU 		H'03'
WREN		 EQU 		H'02'
WR		 EQU 		H'01'
RD		 EQU 		H'00'

;------------------------ EEDAT  Bits------------------------
EEDAT7		 EQU 		H'07'
EEDAT6		 EQU 		H'06'
EEDAT5		 EQU 		H'05'
EEDAT4		 EQU 		H'04'
EEDAT3		 EQU 		H'03'
EEDAT2		 EQU 		H'02'
EEDAT1		 EQU 		H'01'
EEDAT0		 EQU 		H'00'

;------------------------ EEDATH  Bits------------------------
EEDATH7		 EQU 		H'07'
EEDATH6		 EQU 		H'06'
EEDATH5		 EQU 		H'05'
EEDATH4		 EQU 		H'04'
EEDATH3		 EQU 		H'03'
EEDATH2		 EQU 		H'02'
EEDATH1		 EQU 		H'01'
EEDATH0		 EQU 		H'00'

;------------------------ EEADR  Bits------------------------
EEADR7		 EQU 		H'07'
EEADR6		 EQU 		H'06'
EEADR5		 EQU 		H'05'
EEADR4		 EQU 		H'04'
EEADR3		 EQU 		H'03'
EEADR2		 EQU 		H'02'
EEADR1		 EQU 		H'01'
EEADR0		 EQU 		H'00'

;------------------------ EEADRH  Bits------------------------
EEADRH4		 EQU 		H'04'
EEADRH3		 EQU 		H'03'
EEADRH2		 EQU 		H'02'
EEADRH1		 EQU 		H'01'
EEADRH0		 EQU 		H'00'

;------------------------ PPGCON0  Bits------------------------
PPG_CM7		 EQU 		H'07'
PPG_AUTOUP		 EQU 		H'06'
PPG_AUTODOWN		 EQU 		H'05'
PPG_OFF_TIME		 EQU 		H'04'
PPG_OT		 EQU 		H'03'
PPG_EMC		 EQU 		H'02'
PPGMD		 EQU 		H'01'
PPGON		 EQU 		H'00'

;------------------------ PPGCON1  Bits------------------------
PPG_OT_SET3		 EQU 		H'07'
PPG_OT_SET2		 EQU 		H'06'
PPG_OT_SET1		 EQU 		H'05'
PPG_OT_SET0		 EQU 		H'04'
PPG_AT_STEP3		 EQU 		H'03'
PPG_AT_STEP2		 EQU 		H'02'
PPG_AT_STEP1		 EQU 		H'01'
PPG_AT_STEP0		 EQU 		H'00'

;------------------------ PPGCON2  Bits------------------------
CMX_DLY2		 EQU 		H'07'
CMX_DLY1		 EQU 		H'06'
CMX_DLY0		 EQU 		H'05'
PPG_STAT		 EQU 		H'04'
MAX_CNTEN		 EQU 		H'03'
MAX_CNTS2		 EQU 		H'02'
MAX_CNTS1		 EQU 		H'01'
MAX_CNTS0		 EQU 		H'00'

;------------------------ PPGCON3  Bits------------------------
CM3_DLY3		 EQU 		H'07'
CM3_DLY2		 EQU 		H'06'
CM3_DLY1		 EQU 		H'05'
CM3_DLY0		 EQU 		H'04'
PPGDLY3		 EQU 		H'03'
PPGDLY2		 EQU 		H'02'
PPGDLY1		 EQU 		H'01'
PPGDLY0		 EQU 		H'00'

;------------------------ CCPCON  Bits------------------------
CCPEN		 EQU 		H'07'
CCPMS1		 EQU 		H'06'
CCPMS0		 EQU 		H'05'
CCPIS		 EQU 		H'04'
CCPES1		 EQU 		H'03'
CCPES0		 EQU 		H'02'
CCPM1		 EQU 		H'01'
CCPM0		 EQU 		H'00'

;------------------------ CMPVEN  Bits------------------------
CMP7VEN		 EQU 		H'07'
CMP6VEN		 EQU 		H'06'
CMP5VEN		 EQU 		H'05'
CMP4VEN		 EQU 		H'04'
CMP3VEN		 EQU 		H'03'
CMP2VEN		 EQU 		H'02'
CMP1VEN		 EQU 		H'01'
CMP0VEN		 EQU 		H'00'

