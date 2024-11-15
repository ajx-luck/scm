

INDF		 EQU 		 H'000'
TMR0		 EQU 		 H'001'
PCL		 EQU 		 H'002'
STATUS		 EQU 		 H'003'
FSR		 EQU 		 H'004'
PORTA		 EQU 		 H'005'
PORTB		 EQU 		 H'006'
WPUA		 EQU 		 H'007'
WPUB		 EQU 		 H'008'
PCLATH		 EQU 		 H'00A'
INTCON		 EQU 		 H'00B'
IOCB		 EQU 		 H'00D'
PWMD23H		 EQU 		 H'00E'
PWM01DT		 EQU 		 H'00F'
PWM23DT		 EQU 		 H'010'
TMR2		 EQU 		 H'011'
T2CON		 EQU 		 H'012'
PWMCON0		 EQU 		 H'013'
PWMCON1		 EQU 		 H'014'
PWMTL		 EQU 		 H'015'
PWMTH		 EQU 		 H'016'
PWMD0L		 EQU 		 H'017'
PWMD1L		 EQU 		 H'018'
PWMD2L		 EQU 		 H'019'
PWMD3L		 EQU 		 H'01A'
PWMD4L		 EQU 		 H'01B'
PWMD01H		 EQU 		 H'01C'
PWMCON2		 EQU 		 H'01D'
PWM4TL		 EQU 		 H'01E'
OPTION_REG		 EQU 		 H'081'
TRISA		 EQU 		 H'085'
TRISB		 EQU 		 H'086'
WPDB		 EQU 		 H'087'
OSCCON		 EQU 		 H'088'
WDTCON		 EQU 		 H'089'
EECON1		 EQU 		 H'08C'
EECON2		 EQU 		 H'08D'
EEDAT		 EQU 		 H'08E'
EEDATH		 EQU 		 H'08F'
EEADR		 EQU 		 H'090'
PR2		 EQU 		 H'091'
PORTC		 EQU 		 H'092'
TRISC		 EQU 		 H'093'
TABLE_DATAH		 EQU 		 H'094'
IOCA		 EQU 		 H'095'
EEADRH		 EQU 		 H'096'
WPDA		 EQU 		 H'097'
WPDC		 EQU 		 H'098'
WPUC		 EQU 		 H'099'
TABLE_SPH		 EQU 		 H'09A'
TABLE_SPL		 EQU 		 H'09B'
ADCON1		 EQU 		 H'09C'
ADCON0		 EQU 		 H'09D'
ADRESH		 EQU 		 H'09E'
ADRESL		 EQU 		 H'09F'
PIR1		 EQU 		 H'0105'
PIE1		 EQU 		 H'0106'
PIR2		 EQU 		 H'0107'
PIE2		 EQU 		 H'0108'
TMR1L		 EQU 		 H'010C'
TMR1H		 EQU 		 H'010D'
T1CON		 EQU 		 H'010E'
ANSEL0		 EQU 		 H'0110'
ANSEL1		 EQU 		 H'0111'
ANSEL2		 EQU 		 H'0112'
PAHEN		 EQU 		 H'0113'
PALEN		 EQU 		 H'0114'
PBHEN		 EQU 		 H'0115'
PBLEN		 EQU 		 H'0116'
TXSTA		 EQU 		 H'0117'
RCSTA		 EQU 		 H'0118'
SPBRG		 EQU 		 H'0119'
TXREG		 EQU 		 H'011A'
RCREG		 EQU 		 H'011B'
SEGCUR		 EQU 		 H'011C'
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

;------------------------ WPUA  Bits------------------------
WPUA7		 EQU 		H'07'
WPUA6		 EQU 		H'06'
WPUA5		 EQU 		H'05'
WPUA4		 EQU 		H'04'
WPUA3		 EQU 		H'03'
WPUA2		 EQU 		H'02'
WPUA1		 EQU 		H'01'
WPUA0		 EQU 		H'00'

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

;------------------------ IOCB  Bits------------------------
IOCB7		 EQU 		H'07'
IOCB6		 EQU 		H'06'
IOCB5		 EQU 		H'05'
IOCB4		 EQU 		H'04'
IOCB3		 EQU 		H'03'
IOCB2		 EQU 		H'02'
IOCB1		 EQU 		H'01'
IOCB0		 EQU 		H'00'

;------------------------ PWMD23H  Bits------------------------
PWMD39		 EQU 		H'05'
PWMD38		 EQU 		H'04'
PWMD29		 EQU 		H'01'
PWMD28		 EQU 		H'00'

;------------------------ T2CON  Bits------------------------
TOUTPS3		 EQU 		H'06'
TOUTPS2		 EQU 		H'05'
TOUTPS1		 EQU 		H'04'
TOUTPS0		 EQU 		H'03'
TMR2ON		 EQU 		H'02'
T2CKPS1		 EQU 		H'01'
T2CKPS0		 EQU 		H'00'

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
PWMIO_SEL1		 EQU 		H'07'
PWMIO_SEL0		 EQU 		H'06'
PWM2DTEN		 EQU 		H'05'
PWM0DTEN		 EQU 		H'04'
DT_DIV1		 EQU 		H'01'
DT_DIV0		 EQU 		H'00'

;------------------------ PWMTH  Bits------------------------
PWMD49		 EQU 		H'05'
PWMD48		 EQU 		H'04'
PWM4T9		 EQU 		H'03'
PWM4T8		 EQU 		H'02'
PWMT9		 EQU 		H'01'
PWMT8		 EQU 		H'00'

;------------------------ PWMD01H  Bits------------------------
PWMD19		 EQU 		H'05'
PWMD18		 EQU 		H'04'
PWMD09		 EQU 		H'01'
PWMD08		 EQU 		H'00'

;------------------------ PWMCON2  Bits------------------------
PWM4DIR		 EQU 		H'04'
PWM3DIR		 EQU 		H'03'
PWM2DIR		 EQU 		H'02'
PWM1DIR		 EQU 		H'01'
PWM0DIR		 EQU 		H'00'

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

;------------------------ WPDB  Bits------------------------
WPDB7		 EQU 		H'07'
WPDB6		 EQU 		H'06'
WPDB5		 EQU 		H'05'
WPDB4		 EQU 		H'04'
WPDB3		 EQU 		H'03'
WPDB2		 EQU 		H'02'
WPDB1		 EQU 		H'01'
WPDB0		 EQU 		H'00'

;------------------------ OSCCON  Bits------------------------
IRCF2		 EQU 		H'06'
IRCF1		 EQU 		H'05'
IRCF0		 EQU 		H'04'

;------------------------ WDTCON  Bits------------------------
SWDTEN		 EQU 		H'00'

;------------------------ EECON1  Bits------------------------
EEPGD		 EQU 		H'07'
EETIME1		 EQU 		H'05'
EETIME0		 EQU 		H'04'
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

;------------------------ PORTC  Bits------------------------
RC1		 EQU 		H'01'
RC0		 EQU 		H'00'

;------------------------ TRISC  Bits------------------------
TRISC1		 EQU 		H'01'
TRISC0		 EQU 		H'00'

;------------------------ IOCA  Bits------------------------
IOCA7		 EQU 		H'07'
IOCA6		 EQU 		H'06'
IOCA5		 EQU 		H'05'
IOCA4		 EQU 		H'04'
IOCA3		 EQU 		H'03'
IOCA2		 EQU 		H'02'
IOCA1		 EQU 		H'01'
IOCA0		 EQU 		H'00'

;------------------------ EEADRH  Bits------------------------
EEADRH2		 EQU 		H'02'
EEADRH1		 EQU 		H'01'
EEADRH0		 EQU 		H'00'

;------------------------ WPDA  Bits------------------------
WPDA7		 EQU 		H'07'
WPDA6		 EQU 		H'06'
WPDA5		 EQU 		H'05'
WPDA4		 EQU 		H'04'
WPDA3		 EQU 		H'03'
WPDA2		 EQU 		H'02'
WPDA1		 EQU 		H'01'
WPDA0		 EQU 		H'00'

;------------------------ WPDC  Bits------------------------
WPDC1		 EQU 		H'01'
WPDC0		 EQU 		H'00'

;------------------------ WPUC  Bits------------------------
WPUC1		 EQU 		H'01'
WPUC0		 EQU 		H'00'

;------------------------ ADCON1  Bits------------------------
ADFM		 EQU 		H'07'
CHS4		 EQU 		H'06'
LDO_EN		 EQU 		H'02'
LDO_SEL1		 EQU 		H'01'
LDO_SEL0		 EQU 		H'00'

;------------------------ ADCON0  Bits------------------------
ADCS1		 EQU 		H'07'
ADCS0		 EQU 		H'06'
CHS3		 EQU 		H'05'
CHS2		 EQU 		H'04'
CHS1		 EQU 		H'03'
CHS0		 EQU 		H'02'
GODONE		 EQU 		H'01'
ADON		 EQU 		H'00'

;------------------------ PIR1  Bits------------------------
ADIF		 EQU 		H'06'
RCIF		 EQU 		H'05'
TXIF		 EQU 		H'04'
PWMIF		 EQU 		H'02'
TMR2IF		 EQU 		H'01'
TMR1IF		 EQU 		H'00'

;------------------------ PIE1  Bits------------------------
ADIE		 EQU 		H'06'
RCIE		 EQU 		H'05'
TXIE		 EQU 		H'04'
PWMIE		 EQU 		H'02'
TMR2IE		 EQU 		H'01'
TMR1IE		 EQU 		H'00'

;------------------------ PIR2  Bits------------------------
TKM1IF		 EQU 		H'07'
TKM0IF		 EQU 		H'06'
EEIF		 EQU 		H'04'
RACIF		 EQU 		H'01'

;------------------------ PIE2  Bits------------------------
TKM1IE		 EQU 		H'07'
TKM0IE		 EQU 		H'06'
EEIE		 EQU 		H'04'
RACIE		 EQU 		H'01'

;------------------------ T1CON  Bits------------------------
T1GINV		 EQU 		H'07'
TMR1GE		 EQU 		H'06'
T1CKPS1		 EQU 		H'05'
T1CKPS0		 EQU 		H'04'
T1SYNC		 EQU 		H'02'
TMR1CS		 EQU 		H'01'
TMR1ON		 EQU 		H'00'

;------------------------ ANSEL0  Bits------------------------
ANS7		 EQU 		H'07'
ANS6		 EQU 		H'06'
ANS5		 EQU 		H'05'
ANS4		 EQU 		H'04'
ANS3		 EQU 		H'03'
ANS2		 EQU 		H'02'
ANS1		 EQU 		H'01'
ANS0		 EQU 		H'00'

;------------------------ ANSEL1  Bits------------------------
ANS15		 EQU 		H'07'
ANS14		 EQU 		H'06'
ANS13		 EQU 		H'05'
ANS12		 EQU 		H'04'
ANS11		 EQU 		H'03'
ANS10		 EQU 		H'02'
ANS9		 EQU 		H'01'
ANS8		 EQU 		H'00'

;------------------------ ANSEL2  Bits------------------------
ANS17		 EQU 		H'01'
ANS16		 EQU 		H'00'

;------------------------ PAHEN  Bits------------------------
PAHEN7		 EQU 		H'07'
PAHEN6		 EQU 		H'06'
PAHEN5		 EQU 		H'05'
PAHEN4		 EQU 		H'04'
PAHEN3		 EQU 		H'03'
PAHEN2		 EQU 		H'02'
PAHEN1		 EQU 		H'01'
PAHEN0		 EQU 		H'00'

;------------------------ PALEN  Bits------------------------
PALEN7		 EQU 		H'07'
PALEN6		 EQU 		H'06'
PALEN5		 EQU 		H'05'
PALEN4		 EQU 		H'04'
PALEN3		 EQU 		H'03'
PALEN2		 EQU 		H'02'
PALEN1		 EQU 		H'01'
PALEN0		 EQU 		H'00'

;------------------------ PBHEN  Bits------------------------
PBHEN7		 EQU 		H'07'
PBHEN6		 EQU 		H'06'
PBHEN5		 EQU 		H'05'
PBHEN4		 EQU 		H'04'
PBHEN3		 EQU 		H'03'
PBHEN2		 EQU 		H'02'
PBHEN1		 EQU 		H'01'
PBHEN0		 EQU 		H'00'

;------------------------ PBLEN  Bits------------------------
PBLEN7		 EQU 		H'07'
PBLEN6		 EQU 		H'06'
PBLEN5		 EQU 		H'05'
PBLEN4		 EQU 		H'04'
PBLEN3		 EQU 		H'03'
PBLEN2		 EQU 		H'02'
PBLEN1		 EQU 		H'01'
PBLEN0		 EQU 		H'00'

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

;------------------------ SEGCUR  Bits------------------------
SEG_ISEL2		 EQU 		H'02'
SEG_ISEL1		 EQU 		H'01'
SEG_ISEL0		 EQU 		H'00'

