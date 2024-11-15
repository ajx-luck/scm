

INDF		 EQU 		 H'000'
TMR0		 EQU 		 H'001'
PCL		 EQU 		 H'002'
STATUS		 EQU 		 H'003'
FSR		 EQU 		 H'004'
PORTA		 EQU 		 H'005'
PORTB		 EQU 		 H'006'
WPUA		 EQU 		 H'007'
WPDA		 EQU 		 H'008'
IOCA		 EQU 		 H'009'
PCLATH		 EQU 		 H'00A'
INTCON		 EQU 		 H'00B'
PIR1		 EQU 		 H'00C'
PWM0CON0		 EQU 		 H'00D'
PWM0CON1		 EQU 		 H'00E'
PWMD0		 EQU 		 H'00F'
PWMT0		 EQU 		 H'010'
PWM1CON0		 EQU 		 H'011'
PWM1CON1		 EQU 		 H'012'
PWMD1		 EQU 		 H'013'
PWMT1		 EQU 		 H'014'
PWMCON0		 EQU 		 H'015'
PWMCON1		 EQU 		 H'016'
PWMTL		 EQU 		 H'017'
PWMTH		 EQU 		 H'018'
PWMD2L		 EQU 		 H'019'
PWMD3L		 EQU 		 H'01A'
PWMD4L		 EQU 		 H'01B'
PWMD23H		 EQU 		 H'01C'
ANSEL0		 EQU 		 H'01D'
ANSEL1		 EQU 		 H'01E'
WDTCON		 EQU 		 H'01F'
OPTION_REG		 EQU 		 H'081'
TRISA		 EQU 		 H'085'
TRISB		 EQU 		 H'086'
WPUB		 EQU 		 H'087'
WPDB		 EQU 		 H'088'
IOCB		 EQU 		 H'089'
PIE1		 EQU 		 H'08C'
TMR2		 EQU 		 H'08D'
T2CON		 EQU 		 H'08E'
PR2		 EQU 		 H'08F'
OSCCON		 EQU 		 H'090'
CM0CON0		 EQU 		 H'091'
CM0CON1		 EQU 		 H'092'
CM0DAC		 EQU 		 H'093'
CM1CON0		 EQU 		 H'094'
CM1CON1		 EQU 		 H'095'
ADCON2		 EQU 		 H'096'
ADCSUM0		 EQU 		 H'097'
ADCSUM1		 EQU 		 H'098'
ADCSUM2		 EQU 		 H'099'
ADCCNTL		 EQU 		 H'09A'
ADCCNTH		 EQU 		 H'09B'
ADRESL		 EQU 		 H'09C'
ADRESH		 EQU 		 H'09D'
ADCON0		 EQU 		 H'09E'
ADCON1		 EQU 		 H'09F'
TABLE_SPH		 EQU 		 H'0105'
TABLE_SPL		 EQU 		 H'0106'
TABLE_DATAH		 EQU 		 H'0107'
ADCON3		 EQU 		 H'0108'
ADCON4		 EQU 		 H'0109'
EECON1		 EQU 		 H'010C'
EECON2		 EQU 		 H'010D'
EEDAT		 EQU 		 H'010E'
EEDATH		 EQU 		 H'010F'
EEADR		 EQU 		 H'0110'
EEADRH		 EQU 		 H'0111'

;------------------------ STATUS  Bits------------------------
RP1		 EQU 		H'06'
RP0		 EQU 		H'05'
TO		 EQU 		H'04'
PD		 EQU 		H'03'
Z		 EQU 		H'02'
DC		 EQU 		H'01'
C		 EQU 		H'00'

;------------------------ PORTA  Bits------------------------
RA6		 EQU 		H'06'
RA5		 EQU 		H'05'
RA4		 EQU 		H'04'
RA3		 EQU 		H'03'
RA2		 EQU 		H'02'
RA1		 EQU 		H'01'
RA0		 EQU 		H'00'

;------------------------ PORTB  Bits------------------------
RB6		 EQU 		H'06'
RB5		 EQU 		H'05'
RB4		 EQU 		H'04'
RB3		 EQU 		H'03'
RB2		 EQU 		H'02'
RB1		 EQU 		H'01'
RB0		 EQU 		H'00'

;------------------------ WPUA  Bits------------------------
WPUA6		 EQU 		H'06'
WPUA5		 EQU 		H'05'
WPUA4		 EQU 		H'04'
WPUA3		 EQU 		H'03'
WPUA2		 EQU 		H'02'
WPUA1		 EQU 		H'01'
WPUA0		 EQU 		H'00'

;------------------------ WPDA  Bits------------------------
WPDA6		 EQU 		H'06'
WPDA5		 EQU 		H'05'
WPDA4		 EQU 		H'04'
WPDA3		 EQU 		H'03'
WPDA2		 EQU 		H'02'
WPDA1		 EQU 		H'01'
WPDA0		 EQU 		H'00'

;------------------------ IOCA  Bits------------------------
IOCA6		 EQU 		H'06'
IOCA5		 EQU 		H'05'
IOCA4		 EQU 		H'04'
IOCA3		 EQU 		H'03'
IOCA2		 EQU 		H'02'
IOCA1		 EQU 		H'01'
IOCA0		 EQU 		H'00'

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
ADIF		 EQU 		H'07'
CM1IF		 EQU 		H'06'
CM0IF		 EQU 		H'05'
PWMIF		 EQU 		H'04'
EEIF		 EQU 		H'03'
RAIF		 EQU 		H'02'
TMR2IF		 EQU 		H'01'

;------------------------ PWM0CON0  Bits------------------------
PWM0_CKSEL2		 EQU 		H'07'
PWM0_CKSEL1		 EQU 		H'06'
PWM0_CKSEL0		 EQU 		H'05'
PWM0_IOS2		 EQU 		H'04'
PWM0_IOS1		 EQU 		H'03'
PWM0_IOS0		 EQU 		H'02'
PWM0_DSEL		 EQU 		H'01'
PWN0EN		 EQU 		H'00'

;------------------------ PWM0CON1  Bits------------------------
PWM0_TRI1		 EQU 		H'07'
PWM0_TRI0		 EQU 		H'06'
PWM0_DIR		 EQU 		H'04'
PWM0K3		 EQU 		H'03'
PWM0K2		 EQU 		H'02'
PWM0K1		 EQU 		H'01'
PWM0K0		 EQU 		H'00'

;------------------------ PWM1CON0  Bits------------------------
PWM1_CKSEL2		 EQU 		H'07'
PWM1_CKSEL1		 EQU 		H'06'
PWM1_CKSEL0		 EQU 		H'05'
PWM1_IOS2		 EQU 		H'04'
PWM1_IOS1		 EQU 		H'03'
PWM1_IOS0		 EQU 		H'02'
PWM1_DSEL		 EQU 		H'01'
PWN1EN		 EQU 		H'00'

;------------------------ PWM1CON1  Bits------------------------
PWM1_TRI1		 EQU 		H'07'
PWM1_TRI0		 EQU 		H'06'
PWM1_DIR		 EQU 		H'04'
PWM1K3		 EQU 		H'03'
PWM1K2		 EQU 		H'02'
PWM1K1		 EQU 		H'01'
PWM1K0		 EQU 		H'00'

;------------------------ PWMCON0  Bits------------------------
CLKDIV2		 EQU 		H'07'
CLKDIV1		 EQU 		H'06'
CLKDIV0		 EQU 		H'05'
PWM4EN		 EQU 		H'04'
PWM3EN		 EQU 		H'03'
PWM2EN		 EQU 		H'02'

;------------------------ PWMCON1  Bits------------------------
PWM4DIR		 EQU 		H'04'
PWM3DIR		 EQU 		H'03'
PWM2DIR		 EQU 		H'02'

;------------------------ PWMTH  Bits------------------------
PWMD49		 EQU 		H'05'
PWMD48		 EQU 		H'04'
PWMT9		 EQU 		H'01'
PWMT8		 EQU 		H'00'

;------------------------ PWMD23H  Bits------------------------
PWMD39		 EQU 		H'05'
PWMD38		 EQU 		H'04'
PWMD29		 EQU 		H'01'
PWMD28		 EQU 		H'00'

;------------------------ ANSEL0  Bits------------------------
ANS6		 EQU 		H'06'
ANS5		 EQU 		H'05'
ANS4		 EQU 		H'04'
ANS3		 EQU 		H'03'
ANS2		 EQU 		H'02'
ANS1		 EQU 		H'01'
ANS0		 EQU 		H'00'

;------------------------ ANSEL1  Bits------------------------
ANS14		 EQU 		H'06'
ANS13		 EQU 		H'05'
ANS12		 EQU 		H'04'
ANS11		 EQU 		H'03'
ANS10		 EQU 		H'02'
ANS9		 EQU 		H'01'
ANS8		 EQU 		H'00'

;------------------------ WDTCON  Bits------------------------
SWDTEN		 EQU 		H'00'

;------------------------ OPTION_REG  Bits------------------------
INTEDG		 EQU 		H'06'
T0CS		 EQU 		H'05'
T0SE		 EQU 		H'04'
PSA		 EQU 		H'03'
PS2		 EQU 		H'02'
PS1		 EQU 		H'01'
PS0		 EQU 		H'00'

;------------------------ TRISA  Bits------------------------
TRISA6		 EQU 		H'06'
TRISA5		 EQU 		H'05'
TRISA4		 EQU 		H'04'
TRISA3		 EQU 		H'03'
TRISA2		 EQU 		H'02'
TRISA1		 EQU 		H'01'
TRISA0		 EQU 		H'00'

;------------------------ TRISB  Bits------------------------
TRISB6		 EQU 		H'06'
TRISB5		 EQU 		H'05'
TRISB4		 EQU 		H'04'
TRISB3		 EQU 		H'03'
TRISB2		 EQU 		H'02'
TRISB1		 EQU 		H'01'
TRISB0		 EQU 		H'00'

;------------------------ WPUB  Bits------------------------
WPUB6		 EQU 		H'06'
WPUB5		 EQU 		H'05'
WPUB4		 EQU 		H'04'
WPUB3		 EQU 		H'03'
WPUB2		 EQU 		H'02'
WPUB1		 EQU 		H'01'
WPUB0		 EQU 		H'00'

;------------------------ WPDB  Bits------------------------
WPDB6		 EQU 		H'06'
WPDB5		 EQU 		H'05'
WPDB4		 EQU 		H'04'
WPDB3		 EQU 		H'03'
WPDB2		 EQU 		H'02'
WPDB1		 EQU 		H'01'
WPDB0		 EQU 		H'00'

;------------------------ IOCB  Bits------------------------
IOCB6		 EQU 		H'06'
IOCB5		 EQU 		H'05'
IOCB4		 EQU 		H'04'
IOCB3		 EQU 		H'03'
IOCB2		 EQU 		H'02'
IOCB1		 EQU 		H'01'
IOCB0		 EQU 		H'00'

;------------------------ PIE1  Bits------------------------
ADIE		 EQU 		H'07'
CM1IE		 EQU 		H'06'
CM0IE		 EQU 		H'05'
PWMIE		 EQU 		H'04'
EEIA		 EQU 		H'03'
RAIE		 EQU 		H'02'
TMR2IE		 EQU 		H'01'

;------------------------ T2CON  Bits------------------------
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

;------------------------ CM0CON0  Bits------------------------
CM0EN		 EQU 		H'07'
CM0DBSEL		 EQU 		H'06'
CM0DIR		 EQU 		H'05'
CM0INTES		 EQU 		H'04'
CM0PS		 EQU 		H'03'
CM0OUT		 EQU 		H'02'
CM0VEN		 EQU 		H'01'

;------------------------ CM0CON1  Bits------------------------
CM0VSEL1		 EQU 		H'07'
CM0VSEL0		 EQU 		H'06'
ADAUTODLY2		 EQU 		H'05'
ADAUTODLY1		 EQU 		H'04'
ADAUTODLY0		 EQU 		H'03'
DACEN		 EQU 		H'02'
CM0OS1		 EQU 		H'01'
CM0OS0		 EQU 		H'00'

;------------------------ CM1CON0  Bits------------------------
CM1EN		 EQU 		H'07'
CM1DBSEL1		 EQU 		H'06'
CM1DBSEL0		 EQU 		H'05'
CM1PVSL2		 EQU 		H'04'
CM1PVSL1		 EQU 		H'03'
CM1PVSL0		 EQU 		H'02'
CM1OUT		 EQU 		H'01'
CM1VEN		 EQU 		H'00'

;------------------------ CM1CON1  Bits------------------------
CM1PSEL		 EQU 		H'00'

;------------------------ ADCON2  Bits------------------------
ADAUTO_CNT2		 EQU 		H'06'
ADAUTO_CNT1		 EQU 		H'05'
ADAUTO_CNT0		 EQU 		H'04'
AUTO_GO		 EQU 		H'03'
ADCSUM_OV		 EQU 		H'02'
ADCSUM_CLR		 EQU 		H'01'
TSM		 EQU 		H'00'

;------------------------ ADCON0  Bits------------------------
ADCS1		 EQU 		H'07'
ADCS0		 EQU 		H'06'
CHS3		 EQU 		H'05'
CHS2		 EQU 		H'04'
CHS1		 EQU 		H'03'
CHS0		 EQU 		H'02'
GODONE		 EQU 		H'01'
ADON		 EQU 		H'00'

;------------------------ ADCON1  Bits------------------------
ADFM		 EQU 		H'07'
ADAUTO_SUM		 EQU 		H'06'
ADCS2		 EQU 		H'05'
ADAUTO_SEL1		 EQU 		H'04'
ADAUTO_SEL0		 EQU 		H'03'
LDO_EN		 EQU 		H'02'
LDO_SEL0		 EQU 		H'00'

;------------------------ ADCON3  Bits------------------------
AD2EN3		 EQU 		H'07'
AD2EN2		 EQU 		H'06'
AD2EN1		 EQU 		H'05'
AD2EN0		 EQU 		H'04'
CHS4		 EQU 		H'03'
AD_INTVSEL2		 EQU 		H'02'
AD_INTVSEL1		 EQU 		H'01'
AD_INTVSEL0		 EQU 		H'00'

;------------------------ ADCON4  Bits------------------------
LDO_TRIM4		 EQU 		H'04'
LDO_TRIM3		 EQU 		H'03'
LDO_TRIM2		 EQU 		H'02'
LDO_TRIM1		 EQU 		H'01'
LDO_TRIM0		 EQU 		H'00'

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
EEADRH2		 EQU 		H'02'
EEADRH1		 EQU 		H'01'
EEADRH0		 EQU 		H'00'

