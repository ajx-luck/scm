		
INDF	    EQU	     H'0000'
TMR0	    EQU	     H'0001'
PCL	    EQU	     H'0002'
STATUS	    EQU	     H'0003'
FSR	    EQU	     H'0004'
PORTA	    EQU	     H'0005'
PORTB	    EQU	     H'0006'
PORTC	    EQU	     H'0007'
PORTD	    EQU	     H'0008'
WPUC	    EQU	     H'0009'
PCLATH	    EQU	     H'000A'
INTCON	    EQU	     H'000B'
PIR1	    EQU	     H'000C'
PIR2	    EQU	     H'000D'
ANSEL0	    EQU	     H'000E'
ANSEL1	    EQU	     H'000F'
ANSEL2	    EQU	     H'0010'
TMR2	    EQU	     H'0011'
T2CON	    EQU	     H'0012'
PWMCON0	    EQU	     H'0013'
PWMCON1	    EQU	     H'0014'
PWMTL	    EQU	     H'0015'
PWMTH	    EQU	     H'0016'
PWMD0L	    EQU	     H'0017'
PWMD1L	    EQU	     H'0018'
PWMD2L	    EQU	     H'0019'
PWMD3L	    EQU	     H'001A'
PWMD4L	    EQU	     H'001B'
PWMD01H	    EQU	     H'001C'
PWMD23H	    EQU	     H'001D'
OPTION_REG	    EQU	     H'0081'
TRISA	    EQU	     H'0085'
TRISB	    EQU	     H'0086'
TRISC	    EQU	     H'0087'
TRISD	    EQU	     H'0088'
WPUD	    EQU	     H'0089'
PIE1	    EQU	     H'008C'
PIE2	    EQU	     H'008D'
IOCA	    EQU	     H'008E'
OSCCON	    EQU	     H'008F'
SSPCON2	    EQU	     H'0091'
PR2	    EQU	     H'0092'
SSPADD	    EQU	     H'0093'
SSPSTAT	    EQU	     H'0094'
SSPCON	    EQU	     H'0095'
SSPBUF	    EQU	     H'0096'
ADCON1	    EQU	     H'009C'
ADCON0	    EQU	     H'009D'
ADRESH	    EQU	     H'009E'
ADRESL	    EQU	     H'009F'
WDTCON	    EQU	     H'0105'
WPUB	    EQU	     H'0107'
EEADRH	    EQU	     H'0108'
EEDATH	    EQU	     H'0109'
EEDAT	    EQU	     H'010C'
EEADR	    EQU	     H'010D'
EECON1	    EQU	     H'010E'
EECON2	    EQU	     H'010F'
TABLE_SPH	    EQU	     H'0110'
TABLE_SPL	    EQU	     H'0111'
TABLE_DATAH	    EQU	     H'0112'
TXSTA	    EQU	     H'0113'
RCSTA	    EQU	     H'0114'
SPBRG	    EQU	     H'0115'
TXREG	    EQU	     H'0116'
RCREG	    EQU	     H'0117'
LEDCON0	    EQU	     H'0118'
LEDCON1	    EQU	     H'0119'
LEDADD	    EQU	     H'011A'
LEDDATA	    EQU	     H'011B'
SEGEN2	    EQU	     H'011C'
SEGEN1	    EQU	     H'011D'
SEGEN0	    EQU	     H'011E'
COMEN	    EQU	     H'011F'
LVDCON	    EQU	     H'0185'
WPUA	    EQU	     H'0187'
		
		
		
		
;------------------------STATUS  Bits-------------------------------		
IRP	   EQU	    H'07'
RP1	   EQU	    H'06'
RP0	   EQU	    H'05'
TO	   EQU	    H'04'
PD	   EQU	    H'03'
Z	   EQU	    H'02'
DC	   EQU	    H'01'
C	   EQU	    H'00'
		
		
;------------------------PORTA  Bits-------------------------------		
RA7	   EQU	    H'07'
RA4	   EQU	    H'04'
RA3	   EQU	    H'03'
RA2	   EQU	    H'02'
RA1	   EQU	    H'01'
RA0	   EQU	    H'00'
		
		
;------------------------PORTB  Bits-------------------------------		
RB7	   EQU	    H'07'
RB6	   EQU	    H'06'
RB5	   EQU	    H'05'
RB4	   EQU	    H'04'
RB3	   EQU	    H'03'
RB2	   EQU	    H'02'
RB1	   EQU	    H'01'
RB0	   EQU	    H'00'
		
		
;------------------------PORTC  Bits-------------------------------		
RC3	   EQU	    H'03'
RC2	   EQU	    H'02'
RC1	   EQU	    H'01'
RC0	   EQU	    H'00'
		
		
;------------------------PORTD  Bits-------------------------------		
RD7	   EQU	    H'07'
RD6	   EQU	    H'06'
RD5	   EQU	    H'05'
RD4	   EQU	    H'04'
RD3	   EQU	    H'03'
RD2	   EQU	    H'02'
RD1	   EQU	    H'01'
RD0	   EQU	    H'00'
		
		
;------------------------WPUC  Bits-------------------------------		
WPUC3	   EQU	    H'03'
WPUC2	   EQU	    H'02'
WPUC1	   EQU	    H'01'
WPUC0	   EQU	    H'00'
		
		
;------------------------INTCON  Bits-------------------------------		
GIE	   EQU	    H'07'
PEIE	   EQU	    H'06'
T0IE	   EQU	    H'05'
INTE	   EQU	    H'04'
T0IF	   EQU	    H'02'
INTF	   EQU	    H'01'
		
		
;------------------------PIR1  Bits-------------------------------		
ADIF	   EQU	    H'06'
TKIF	   EQU	    H'05'
PWMIF	   EQU	    H'03'
BCLIF	   EQU	    H'02'
TMR2IF	   EQU	    H'01'
		
		
;------------------------PIR2  Bits-------------------------------		
LVDIF	   EQU	    H'07'
RACIF	   EQU	    H'05'
EEIF	   EQU	    H'04'
TXIF 	   EQU	    H'02'
RCIF	   EQU	    H'01'
SSPIF	   EQU	    H'00'
		
		
;------------------------ANSEL0  Bits-------------------------------		
ANS7	   EQU	    H'07'
ANS6	   EQU	    H'06'
ANS5	   EQU	    H'05'
ANS4	   EQU	    H'04'
ANS3	   EQU	    H'03'
ANS2	   EQU	    H'02'
ANS1	   EQU	    H'01'
ANS0	   EQU	    H'00'
		
		
;------------------------ANSEL1  Bits-------------------------------		
ANS15	   EQU	    H'07'
ANS14	   EQU	    H'06'
ANS13	   EQU	    H'05'
ANS12	   EQU	    H'04'
ANS11	   EQU	    H'03'
ANS10	   EQU	    H'02'
ANS9	   EQU	    H'01'
ANS8	   EQU	    H'00'
		
		
;------------------------ANSEL2  Bits-------------------------------		
ANS23	   EQU	    H'07'
ANS22	   EQU	    H'06'
ANS21	   EQU	    H'05'
ANS20	   EQU	    H'04'
ANS19	   EQU	    H'03'
ANS18	   EQU	    H'02'
ANS17	   EQU	    H'01'
ANS16	   EQU	    H'00'
		
		
;------------------------T2CON  Bits-------------------------------		
TOUTPS3	   EQU	    H'06'
TOUTPS2	   EQU	    H'05'
TOUTPS1	   EQU	    H'04'
TOUTPS0	   EQU	    H'03'
TMR2ON	   EQU	    H'02'
T2CKPS1	   EQU	    H'01'
T2CKPS0	   EQU	    H'00'
		
		
;------------------------PWMCON0  Bits-------------------------------		
CLKDIV2	   EQU	    H'07'
CLKDIV1	   EQU	    H'06'
CLKDIV0	   EQU	    H'05'
PWM4EN	   EQU	    H'04'
PWM3EN	   EQU	    H'03'
PWM2EN	   EQU	    H'02'
PWM1EN	   EQU	    H'01'
PWM0EN	   EQU	    H'00'
		
		
;------------------------PWMCON1  Bits-------------------------------		
PWMIO_SEL	   EQU	    H'06'
		
		
;------------------------PWMTH  Bits-------------------------------		
PWMD49	   EQU	    H'05'
PWMD48	   EQU	    H'04'
PWMT9	   EQU	    H'01'
PWMT8	   EQU	    H'00'
		
		
;------------------------PWMD01H  Bits-------------------------------		
PWMD19	   EQU	    H'05'
PWMD18	   EQU	    H'04'
PWMD09	   EQU	    H'01'
PWMD08	   EQU	    H'00'
		
		
;------------------------PWMD23H  Bits-------------------------------		
PWMD39	   EQU	    H'05'
PWMD38	   EQU	    H'04'
PWMD29	   EQU	    H'01'
PWMD28	   EQU	    H'00'
		
		
;------------------------OPTION_REG  Bits-------------------------------		
INTEDG	   EQU	    H'06'
T0CS	   EQU	    H'05'
T0SE	   EQU	    H'04'
PSA	   EQU	    H'03'
PS2	   EQU	    H'02'
PS1	   EQU	    H'01'
PS0	   EQU	    H'00'
		
		
;------------------------TRISA  Bits-------------------------------		
TRISA7	   EQU	    H'07'
TRISA4	   EQU	    H'04'
TRISA3	   EQU	    H'03'
TRISA2	   EQU	    H'02'
TRISA1	   EQU	    H'01'
TRISA0	   EQU	    H'00'
		
		
;------------------------TRISB  Bits-------------------------------		
TRISB7	   EQU	    H'07'
TRISB6	   EQU	    H'06'
TRISB5	   EQU	    H'05'
TRISB4	   EQU	    H'04'
TRISB3	   EQU	    H'03'
TRISB2	   EQU	    H'02'
TRISB1	   EQU	    H'01'
TRISB0	   EQU	    H'00'
		
		
;------------------------TRISC  Bits-------------------------------		
TRISC3	   EQU	    H'03'
TRISC2	   EQU	    H'02'
TRISC1	   EQU	    H'01'
TRISC0	   EQU	    H'00'
		
		
;------------------------TRISD  Bits-------------------------------		
TRISD7	   EQU	    H'07'
TRISD6	   EQU	    H'06'
TRISD5	   EQU	    H'05'
TRISD4	   EQU	    H'04'
TRISD3	   EQU	    H'03'
TRISD2	   EQU	    H'02'
TRISD1	   EQU	    H'01'
TRISD0	   EQU	    H'00'
		
		
;------------------------WPUD  Bits-------------------------------		
WPUD7	   EQU	    H'07'
WPUD6	   EQU	    H'06'
WPUD5	   EQU	    H'05'
WPUD4	   EQU	    H'04'
WPUD3	   EQU	    H'03'
WPUD2	   EQU	    H'02'
WPUD1	   EQU	    H'01'
WPUD0	   EQU	    H'00'
		
		
;------------------------PIE1  Bits-------------------------------		
ADIE	   EQU	    H'06'
TKIE	   EQU	    H'05'
PWMIE	   EQU	    H'03'
BCLIE	   EQU	    H'02'
TMR2IE	   EQU	    H'01'
		
		
;------------------------PIE2  Bits-------------------------------		
LVDIE	   EQU	    H'07'
RACIE	   EQU	    H'05'
EEIE	   EQU	    H'04'
TXIE	   EQU	    H'02'
RCIE	   EQU	    H'01'
SSPIE	   EQU	    H'00'
		
		
;------------------------IOCA  Bits-------------------------------		
IOCA7	   EQU	    H'07'
IOCA4	   EQU	    H'04'
IOCA3	   EQU	    H'03'
IOCA2	   EQU	    H'02'
IOCA1	   EQU	    H'01'
IOCA0	   EQU	    H'00'
		
		
;------------------------OSCCON  Bits-------------------------------		
IRCF2	   EQU	    H'06'
IRCF1	   EQU	    H'05'
IRCF0	   EQU	    H'04'
		
		
;------------------------SSPCON2  Bits-------------------------------		
GCEN	   EQU	    H'07'
ACKSTAT	   EQU	    H'06'
ACKDT	   EQU	    H'05'
ACKEN	   EQU	    H'04'
RCEN	   EQU	    H'03'
PEN	   EQU	    H'02'
RSEN	   EQU	    H'01'
SEN	   EQU	    H'00'
		
		
;------------------------SSPSTAT  Bits-------------------------------		
SMP	   EQU	    H'07'
CKE	   EQU	    H'06'
DA	   EQU	    H'05'
P	   EQU	    H'04'
S	   EQU	    H'03'
RW	   EQU	    H'02'
UA	   EQU	    H'01'
BF	   EQU	    H'00'
		
		
;------------------------SSPCON  Bits-------------------------------		
WCOL	   EQU	    H'07'
SSPOV	   EQU	    H'06'
SSPEN	   EQU	    H'05'
CKP	   EQU	    H'04'
SSPM3	   EQU	    H'03'
SSPM2	   EQU	    H'02'
SSPM1	   EQU	    H'01'
SSPM0	   EQU	    H'00'
		
		
;------------------------ADCON1  Bits-------------------------------		
ADFM	   EQU	    H'07'
CHS4	   EQU	    H'06'
		
		
;------------------------ADCON0  Bits-------------------------------		
ADCS1	   EQU	    H'07'
ADCS0	   EQU	    H'06'
CHS3	   EQU	    H'05'
CHS2	   EQU	    H'04'
CHS1	   EQU	    H'03'
CHS0	   EQU	    H'02'
GODONE	   EQU	    H'01'
ADON	   EQU	    H'00'
		
		
;------------------------WDTCON  Bits-------------------------------		
SWDTEN	   EQU	    H'00'
		
		
;------------------------WPUB  Bits-------------------------------		
WPUB7	   EQU	    H'07'
WPUB6	   EQU	    H'06'
WPUB5	   EQU	    H'05'
WPUB4	   EQU	    H'04'
WPUB3	   EQU	    H'03'
WPUB2	   EQU	    H'02'
WPUB1	   EQU	    H'01'
WPUB0	   EQU	    H'00'
		
		
;------------------------EEADRH  Bits-------------------------------		
EEADRH3	   EQU	    H'03'
EEADRH2	   EQU	    H'02'
EEADRH1	   EQU	    H'01'
EEADRH0	   EQU	    H'00'
		
		
;------------------------EEDATH  Bits-------------------------------		
EEDATH7	   EQU	    H'07'
EEDATH6	   EQU	    H'06'
EEDATH5	   EQU	    H'05'
EEDATH4	   EQU	    H'04'
EEDATH3	   EQU	    H'03'
EEDATH2	   EQU	    H'02'
EEDATH1	   EQU	    H'01'
EEDATH0	   EQU	    H'00'
		
		
;------------------------EEDAT  Bits-------------------------------		
EEDAT7	   EQU	    H'07'
EEDAT6	   EQU	    H'06'
EEDAT5	   EQU	    H'05'
EEDAT4	   EQU	    H'04'
EEDAT3	   EQU	    H'03'
EEDAT2	   EQU	    H'02'
EEDAT1	   EQU	    H'01'
EEDAT0	   EQU	    H'00'
		
		
;------------------------EEADR  Bits-------------------------------		
EEADR7	   EQU	    H'07'
EEADR6	   EQU	    H'06'
EEADR5	   EQU	    H'05'
EEADR4	   EQU	    H'04'
EEADR3	   EQU	    H'03'
EEADR2	   EQU	    H'02'
EEADR1	   EQU	    H'01'
EEADR0	   EQU	    H'00'
		
		
;------------------------EECON1  Bits-------------------------------		
EEPGD	   EQU	    H'07'
EETIME1	   EQU	    H'05'
EETIME0	   EQU	    H'04'
WRERR	   EQU	    H'03'
WREN	   EQU	    H'02'
WR	   EQU	    H'01'
RD	   EQU	    H'00'
		
		
;------------------------TXSTA  Bits-------------------------------		
CSRC	   EQU	    H'07'
TX9EN	   EQU	    H'06'
TXEN	   EQU	    H'05'
SYNC	   EQU	    H'04'
SCKP	   EQU	    H'03'
TRMT	   EQU	    H'01'
TX9D	   EQU	    H'00'
		
		
;------------------------RCSTA  Bits-------------------------------		
SPEN	   EQU	    H'07'
RX9EN	   EQU	    H'06'
SREN	   EQU	    H'05'
CREN	   EQU	    H'04'
RCIDL	   EQU	    H'03'
FERR	   EQU	    H'02'
OERR	   EQU	    H'01'
RX9D	   EQU	    H'00'
		
		
;------------------------LEDCON0  Bits-------------------------------		
LEDEN	   EQU	    H'06'
COMSEL1	   EQU	    H'05'
COMSEL0	   EQU	    H'04'
LCDCLK3	   EQU	    H'03'
LCDCLK2	   EQU	    H'02'
LCDCLK1	   EQU	    H'01'
LCDCLK0	   EQU	    H'00'
		
		
;------------------------LEDCON1  Bits-------------------------------		
SEGOUT1	   EQU	    H'05'
SEGOUT0	   EQU	    H'04'
		
		
;------------------------LEDADD  Bits-------------------------------		
LEDCS	   EQU	    H'07'
COMSEL2	   EQU	    H'05'
LCDADD4	   EQU	    H'04'
LCDADD3	   EQU	    H'03'
LCDADD2	   EQU	    H'02'
LCDADD1	   EQU	    H'01'
LCDADD0	   EQU	    H'00'
		
		
;------------------------SEGEN2  Bits-------------------------------		
SEGDRI3	   EQU	    H'07'
SEGDRI2	   EQU	    H'06'
SEGDRI1	   EQU	    H'05'
SEGDRI0	   EQU	    H'04'
		
		
;------------------------SEGEN1  Bits-------------------------------		
SEG10EN	   EQU	    H'02'
SEG9EN	   EQU	    H'01'
SEG8EN	   EQU	    H'00'
		
		
;------------------------SEGEN0  Bits-------------------------------		
SEG7EN	   EQU	    H'07'
SEG6EN	   EQU	    H'06'
SEG5EN	   EQU	    H'05'
SEG4EN	   EQU	    H'04'
SEG3EN	   EQU	    H'03'
SEG2EN	   EQU	    H'02'
SEG1EN	   EQU	    H'01'
SEG0EN	   EQU	    H'00'
		
		
;------------------------COMEN  Bits-------------------------------		
COM6EN	   EQU	    H'06'
COM5EN	   EQU	    H'05'
COM4EN	   EQU	    H'04'
COM3EN	   EQU	    H'03'
COM2EN	   EQU	    H'02'
COM1EN	   EQU	    H'01'
COM0EN	   EQU	    H'00'
		
		
;------------------------LVDCON  Bits-------------------------------		
LVD_RES	   EQU	    H'07'
LVD_SEL2	   EQU	    H'03'
LVD_SEL1	   EQU	    H'02'
LVD_SEL0	   EQU	    H'01'
LVDEN	   EQU	    H'00'
		
		
;------------------------WPUA  Bits-------------------------------		
WPUA7	   EQU	    H'07'
WPUA4	   EQU	    H'04'
WPUA3	   EQU	    H'03'
WPUA2	   EQU	    H'02'
WPUA1	   EQU	    H'01'
WPUA0	   EQU	    H'00'
