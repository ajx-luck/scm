		
INDF	    EQU	     H'0000'
TMR0	    EQU	     H'0001'
PCL	    EQU	     H'0002'
STATUS	    EQU	     H'0003'
FSR	    EQU	     H'0004'
PORTA	    EQU	     H'0005'
PORTB	    EQU	     H'0006'
PORTC	    EQU	     H'0007'
PORTD	    EQU	     H'0008'
ANSEL0	    EQU	     H'0009'
PCLATH	    EQU	     H'000A'
INTCON	    EQU	     H'000B'
PIR1	    EQU	     H'000C'
PIR2	    EQU	     H'000D'
TMR1L	    EQU	     H'000E'
TMR1H	    EQU	     H'000F'
T1CON	    EQU	     H'0010'
TMR2	    EQU	     H'0011'
T2CON	    EQU	     H'0012'
SSPBUF	    EQU	     H'0013'
SSPCON	    EQU	     H'0014'
CCPR1L	    EQU	     H'0015'
CCPR1H	    EQU	     H'0016'
CCP1CON	    EQU	     H'0017'
RCSTA0	    EQU	     H'0018'
TXREG0	    EQU	     H'0019'
RCREG0	    EQU	     H'001A'
CCPR2L	    EQU	     H'001B'
CCPR2H	    EQU	     H'001C'
CCP2CON	    EQU	     H'001D'
TXSTA0	    EQU	     H'001E'
SPBRG0	    EQU	     H'001F'
OPTION_REG	    EQU	     H'0081'
TRISA	    EQU	     H'0085'
TRISB	    EQU	     H'0086'
TRISC	    EQU	     H'0087'
TRISD	    EQU	     H'0088'
ANSEL1	    EQU	     H'0089'
PIE1	    EQU	     H'008C'
PIE2	    EQU	     H'008D'
WPUD	    EQU	     H'008E'
OSCCON	    EQU	     H'008F'
WDTCON	    EQU	     H'0090'
SSPCON2	    EQU	     H'0091'
PR2	    EQU	     H'0092'
SSPADD	    EQU	     H'0093'
SSPMSK	    EQU	     H'0093'
SSPSTAT	    EQU	     H'0094'
WPUB	    EQU	     H'0095'
IOCB	    EQU	     H'0096'
WPDB	    EQU	     H'0097'
SPBRG1	    EQU	     H'0098'
PWMCON	    EQU	     H'0099'
PWM1CYC	    EQU	     H'009A'
PWM2CYC	    EQU	     H'009B'
ADRESL	    EQU	     H'009C'
ADRESH	    EQU	     H'009D'
ADCON0	    EQU	     H'009E'
ADCON1	    EQU	     H'009F'
RCSTA1	    EQU	     H'0105'
WPUA	    EQU	     H'0107'
WPUC	    EQU	     H'0108'
ANSEL2	    EQU	     H'0109'
EEDAT	    EQU	     H'010C'
EEADR	    EQU	     H'010D'
EEDATH	    EQU	     H'010E'
EEADRH	    EQU	     H'010F'
TABLE_SPH	    EQU	     H'0110'
TABLE_SPL	    EQU	     H'0111'
TABLE_DATAH	    EQU	     H'0112'
LEDCON0	    EQU	     H'0113'
LEDCON1	    EQU	     H'0114'
LEDADD	    EQU	     H'0115'
LEDDATA	    EQU	     H'0116'
SEGEN2	    EQU	     H'0117'
SEGEN1	    EQU	     H'0118'
SEGEN0	    EQU	     H'0119'
COMEN	    EQU	     H'011A'
EECON1	    EQU	     H'011B'
EECON2	    EQU	     H'011C'
TXREG1	    EQU	     H'011D'
RCREG1	    EQU	     H'011E'
TXSTA1	    EQU	     H'011F'
LVDCON	    EQU	     H'0185'
DIVS1	    EQU	     H'0187'
DIVS0	    EQU	     H'0188'
DIVCON	    EQU	     H'0189'
DIVE3	    EQU	     H'018C'
DIVE2	    EQU	     H'018D'
DIVE1	    EQU	     H'018E'
DIVE0	    EQU	     H'018F'
DIVQ3	    EQU	     H'018C'		
DIVQ2	    EQU	     H'018D'		
DIVQ1	    EQU	     H'018E'		
DIVQ0	    EQU	     H'018F'		
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
RA6	   EQU	    H'06'
RA5	   EQU	    H'05'
RA4	   EQU	    H'04'
RA3	   EQU	    H'03'
RA2	   EQU	    H'02'
RA1	   EQU	    H'01'
RA0	   EQU	    H'00'
		
		
;------------------------PORTB  Bits-------------------------------		
RB6	   EQU	    H'06'
RB5	   EQU	    H'05'
RB4	   EQU	    H'04'
RB3	   EQU	    H'03'
RB2	   EQU	    H'02'
RB1	   EQU	    H'01'
RB0	   EQU	    H'00'
		
		
;------------------------PORTC  Bits-------------------------------		
RC7	   EQU	    H'07'
RC6	   EQU	    H'06'
RC5	   EQU	    H'05'
RC4	   EQU	    H'04'
RC3	   EQU	    H'03'
RC2	   EQU	    H'02'
RC1	   EQU	    H'01'
RC0	   EQU	    H'00'
		
		
;------------------------PORTD  Bits-------------------------------		
RD2	   EQU	    H'02'
RD1	   EQU	    H'01'
RD0	   EQU	    H'00'
		
		
;------------------------INTCON  Bits-------------------------------		
GIE	   EQU	    H'07'
PEIE	   EQU	    H'06'
T0IE	   EQU	    H'05'
INTE	   EQU	    H'04'
RBIE	   EQU	    H'03'
T0IF	   EQU	    H'02'
INTF	   EQU	    H'01'
RBIF	   EQU	    H'00'
		
		
;------------------------PIR1  Bits-------------------------------		
ADIF	   EQU	    H'06'
RC0IF	   EQU	    H'05'
TX0IF	   EQU	    H'04'
SSPIF	   EQU	    H'03'
CCP1IF	   EQU	    H'02'
TMR2IF	   EQU	    H'01'
TMR1IF	   EQU	    H'00'
		
		
;------------------------PIR2  Bits-------------------------------		
LVDIF	   EQU	    H'07'
EEIF	   EQU	    H'04'
BCLIF	   EQU	    H'03'
TX1IF	   EQU	    H'02'
RC1IF	   EQU	    H'01'
CCP2IF	   EQU	    H'00'
		
		
;------------------------T1CON  Bits-------------------------------		
T1GINV	   EQU	    H'07'
TMR1GE	   EQU	    H'06'
T1CKPS1	   EQU	    H'05'
T1CKPS0	   EQU	    H'04'
T1OSCEN	   EQU	    H'03'
T1SYNC	   EQU	    H'02'
TMR1CS	   EQU	    H'01'
TMR1ON	   EQU	    H'00'
		
		
;------------------------T2CON  Bits-------------------------------		
TOUTPS3	   EQU	    H'06'
TOUTPS2	   EQU	    H'05'
TOUTPS1	   EQU	    H'04'
TOUTPS0	   EQU	    H'03'
TMR2ON	   EQU	    H'02'
T2CKPS1	   EQU	    H'01'
T2CKPS0	   EQU	    H'00'
		
		
;------------------------SSPCON  Bits-------------------------------		
WCOL	   EQU	    H'07'
SSPOV	   EQU	    H'06'
SSPEN	   EQU	    H'05'
CKP	   EQU	    H'04'
SSPM3	   EQU	    H'03'
SSPM2	   EQU	    H'02'
SSPM1	   EQU	    H'01'
SSPM0	   EQU	    H'00'
		
		
;------------------------CCP1CON  Bits-------------------------------		
DC1B1	   EQU	    H'05'
DC1B0	   EQU	    H'04'
CCP1M3	   EQU	    H'03'
CCP1M2	   EQU	    H'02'
CCP1M1	   EQU	    H'01'
CCP1M0	   EQU	    H'00'
		
		
;------------------------RCSTA0  Bits-------------------------------		
SPEN0	   EQU	    H'07'
RX9EN0	   EQU	    H'06'
SREN0	   EQU	    H'05'
CREN0	   EQU	    H'04'
RCIDL0	   EQU	    H'03'
FERR0	   EQU	    H'02'
OERR0	   EQU	    H'01'
RX9D0	   EQU	    H'00'
		
		
;------------------------CCP2CON  Bits-------------------------------		
DC2B1	   EQU	    H'05'
DC2B0	   EQU	    H'04'
CCP2M3	   EQU	    H'03'
CCP2M2	   EQU	    H'02'
CCP2M1	   EQU	    H'01'
CCP2M0	   EQU	    H'00'
		
		
;------------------------TXSTA0  Bits-------------------------------		
CSRC0	   EQU	    H'07'
TX9EN0	   EQU	    H'06'
TXEN0	   EQU	    H'05'
SYNC0	   EQU	    H'04'
SCKP0	   EQU	    H'03'
TRMT0	   EQU	    H'01'
TX9D0	   EQU	    H'00'
		
		
;------------------------SPBRG0  Bits-------------------------------		
BRG07	   EQU	    H'07'
BRG06	   EQU	    H'06'
BRG05	   EQU	    H'05'
BRG04	   EQU	    H'04'
BRG03	   EQU	    H'03'
BRG02	   EQU	    H'02'
BRG01	   EQU	    H'01'
BRG00	   EQU	    H'00'
		
		
;------------------------OPTION_REG  Bits-------------------------------		
RBPU	   EQU	    H'07'
INTEDG	   EQU	    H'06'
T0CS	   EQU	    H'05'
T0SE	   EQU	    H'04'
PSA	   EQU	    H'03'
PS2	   EQU	    H'02'
PS1	   EQU	    H'01'
PS0	   EQU	    H'00'
		
		
;------------------------TRISA  Bits-------------------------------		
TRISA7	   EQU	    H'07'
TRISA6	   EQU	    H'06'
TRISA5	   EQU	    H'05'
TRISA4	   EQU	    H'04'
TRISA3	   EQU	    H'03'
TRISA2	   EQU	    H'02'
TRISA1	   EQU	    H'01'
TRISA0	   EQU	    H'00'
		
		
;------------------------TRISB  Bits-------------------------------		
TRISB6	   EQU	    H'06'
TRISB5	   EQU	    H'05'
TRISB4	   EQU	    H'04'
TRISB3	   EQU	    H'03'
TRISB2	   EQU	    H'02'
TRISB1	   EQU	    H'01'
TRISB0	   EQU	    H'00'
		
		
;------------------------TRISC  Bits-------------------------------		
TRISC7	   EQU	    H'07'
TRISC6	   EQU	    H'06'
TRISC5	   EQU	    H'05'
TRISC4	   EQU	    H'04'
TRISC3	   EQU	    H'03'
TRISC2	   EQU	    H'02'
TRISC1	   EQU	    H'01'
TRISC0	   EQU	    H'00'
		
		
;------------------------TRISD  Bits-------------------------------		
TRISD2	   EQU	    H'02'
TRISD1	   EQU	    H'01'
TRISD0	   EQU	    H'00'
		
		
;------------------------PIE1  Bits-------------------------------		
ADIE	   EQU	    H'06'
RC0IE	   EQU	    H'05'
TX0IE	   EQU	    H'04'
SSPIE	   EQU	    H'03'
CCP1IE	   EQU	    H'02'
TMR2IE	   EQU	    H'01'
TMR1IE	   EQU	    H'00'
		
		
;------------------------PIE2  Bits-------------------------------		
LVDIE	   EQU	    H'07'
EEIE	   EQU	    H'04'
BCLIE	   EQU	    H'03'
TX1IE	   EQU	    H'02'
RC1IE	   EQU	    H'01'
CCP2IE	   EQU	    H'00'
		
		
;------------------------WPUD  Bits-------------------------------		
WPUD2	   EQU	    H'02'
WPUD1	   EQU	    H'01'
WPUD0	   EQU	    H'00'
		
		
;------------------------OSCCON  Bits-------------------------------		
IRCF2	   EQU	    H'06'
IRCF1	   EQU	    H'05'
IRCF0	   EQU	    H'04'
SCS	   EQU	    H'00'
		
		
;------------------------WDTCON  Bits-------------------------------		
SWDTEN	   EQU	    H'00'
		
		
;------------------------SSPCON2  Bits-------------------------------		
GCEN	   EQU	    H'07'
ACKSTAT	   EQU	    H'06'
ACKDT	   EQU	    H'05'
ACKEN	   EQU	    H'04'
RCEN	   EQU	    H'03'
PEN	   EQU	    H'02'
RSEN	   EQU	    H'01'
SEN	   EQU	    H'00'
		
		
;------------------------SSPMSK  Bits-------------------------------		
MSK7	   EQU	    H'07'
MSK6	   EQU	    H'06'
MSK5	   EQU	    H'05'
MSK4	   EQU	    H'04'
MSK3	   EQU	    H'03'
MSK2	   EQU	    H'02'
MSK1	   EQU	    H'01'
MSK0	   EQU	    H'00'
		
		
;------------------------SSPSTAT  Bits-------------------------------		
SMP	   EQU	    H'07'
CKE	   EQU	    H'06'
DA	   EQU	    H'05'
P	   EQU	    H'04'
S	   EQU	    H'03'
RW	   EQU	    H'02'
UA	   EQU	    H'01'
BF	   EQU	    H'00'
		
		
;------------------------WPUB  Bits-------------------------------		
WPUB6	   EQU	    H'06'
WPUB5	   EQU	    H'05'
WPUB4	   EQU	    H'04'
WPUB3	   EQU	    H'03'
WPUB2	   EQU	    H'02'
WPUB1	   EQU	    H'01'
WPUB0	   EQU	    H'00'
		
		
;------------------------IOCB  Bits-------------------------------		
IOCB6	   EQU	    H'06'
IOCB5	   EQU	    H'05'
IOCB4	   EQU	    H'04'
IOCB3	   EQU	    H'03'
IOCB2	   EQU	    H'02'
IOCB1	   EQU	    H'01'
IOCB0	   EQU	    H'00'
		
		
;------------------------WPDB  Bits-------------------------------		
WPDB6	   EQU	    H'06'
WPDB5	   EQU	    H'05'
WPDB4	   EQU	    H'04'
WPDB3	   EQU	    H'03'
WPDB2	   EQU	    H'02'
WPDB1	   EQU	    H'01'
WPDB0	   EQU	    H'00'
		
		
;------------------------SPBRG1  Bits-------------------------------		
BRG17	   EQU	    H'07'
BRG16	   EQU	    H'06'
BRG15	   EQU	    H'05'
BRG14	   EQU	    H'04'
BRG13	   EQU	    H'03'
BRG12	   EQU	    H'02'
BRG11	   EQU	    H'01'
BRG10	   EQU	    H'00'
		
		
;------------------------PWMCON  Bits-------------------------------		
CYC2EN	   EQU	    H'06'
CK21	   EQU	    H'05'
CK20	   EQU	    H'04'
CYC1EN	   EQU	    H'02'
CK11	   EQU	    H'01'
CK10	   EQU	    H'00'
		
		
;------------------------ADCON0  Bits-------------------------------		
ADCS1	   EQU	    H'07'
ADCS0	   EQU	    H'06'
CHS3	   EQU	    H'05'
CHS2	   EQU	    H'04'
CHS1	   EQU	    H'03'
CHS0	   EQU	    H'02'
GODONE	   EQU	    H'01'
ADON	   EQU	    H'00'
		
		
;------------------------ADCON1  Bits-------------------------------		
ADFM	   EQU	    H'07'
CHS4	   EQU	    H'06'
		
		
;------------------------RCSTA1  Bits-------------------------------		
SPEN1	   EQU	    H'07'
RX9EN1	   EQU	    H'06'
SREN1	   EQU	    H'05'
CREN1	   EQU	    H'04'
RCIDL1	   EQU	    H'03'
FERR1	   EQU	    H'02'
OERR1	   EQU	    H'01'
RX9D1	   EQU	    H'00'
		
		
;------------------------WPUA  Bits-------------------------------		
WPUA7	   EQU	    H'07'
WPUA6	   EQU	    H'06'
WPUA5	   EQU	    H'05'
WPUA4	   EQU	    H'04'
WPUA3	   EQU	    H'03'
WPUA2	   EQU	    H'02'
WPUA1	   EQU	    H'01'
WPUA0	   EQU	    H'00'
		
		
;------------------------WPUC  Bits-------------------------------		
WPUC7	   EQU	    H'07'
WPUC6	   EQU	    H'06'
WPUC5	   EQU	    H'05'
WPUC4	   EQU	    H'04'
WPUC3	   EQU	    H'03'
WPUC2	   EQU	    H'02'
WPUC1	   EQU	    H'01'
WPUC0	   EQU	    H'00'
		
		
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
		
		
;------------------------EEDATH  Bits-------------------------------		
EEDATH7	   EQU	    H'07'
EEDATH6	   EQU	    H'06'
EEDATH5	   EQU	    H'05'
EEDATH4	   EQU	    H'04'
EEDATH3	   EQU	    H'03'
EEDATH2	   EQU	    H'02'
EEDATH1	   EQU	    H'01'
EEDATH0	   EQU	    H'00'
		
		
;------------------------EEADRH  Bits-------------------------------		
EEADRH4	   EQU	    H'04'
EEADRH3	   EQU	    H'03'
EEADRH2	   EQU	    H'02'
EEADRH1	   EQU	    H'01'
EEADRH0	   EQU	    H'00'
		
		
;------------------------LEDCON0  Bits-------------------------------		
LCDEN	   EQU	    H'07'
LEDEN	   EQU	    H'06'
COMSEL1	   EQU	    H'05'
COMSEL0	   EQU	    H'04'
LCDCLK3	   EQU	    H'03'
LCDCLK2	   EQU	    H'02'
LCDCLK1	   EQU	    H'01'
LCDCLK0	   EQU	    H'00'
LEDCLK3	   EQU	    H'03'
LEDCLK2	   EQU	    H'02'
LEDCLK1	   EQU	    H'01'
LEDCLK0	   EQU	    H'00'
		
		
;------------------------LEDCON1  Bits-------------------------------		
LCDF	   EQU	    H'06'
LEDF	   EQU	    H'06'
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
LEDADD4	   EQU	    H'04'
LEDADD3	   EQU	    H'03'
LEDADD2	   EQU	    H'02'
LEDADD1	   EQU	    H'01'
LEDADD0	   EQU	    H'00'
		
		
;------------------------EECON1  Bits-------------------------------		
EEPGD	   EQU	    H'07'
WRERR	   EQU	    H'03'
WREN	   EQU	    H'02'
WR	   EQU	    H'01'
RD	   EQU	    H'00'
		
		
;------------------------TXSTA1  Bits-------------------------------		
CSRC1	   EQU	    H'07'
TX9EN1	   EQU	    H'06'
TXEN1	   EQU	    H'05'
SYNC1	   EQU	    H'04'
SCKP1	   EQU	    H'03'
TRMT1	   EQU	    H'01'
TX9D1	   EQU	    H'00'
		
		
;------------------------LVDCON  Bits-------------------------------		
LVD_RES	   EQU	    H'07'
LVD_SEL2	   EQU	    H'03'
LVD_SEL1	   EQU	    H'02'
LVD_SEL0	   EQU	    H'01'
LVDEN	   EQU	    H'00'
		
		
;------------------------DIVCON  Bits-------------------------------		
DIVEN	   EQU	    H'07'
CAL_END	   EQU	    H'06'
DIV_CLK	   EQU	    H'00'
