		
INDF	    EQU	     H'0000'
TMR0	    EQU	     H'0001'
PCL	    EQU	     H'0002'
STATUS	    EQU	     H'0003'
FSR	    EQU	     H'0004'
PORTA	    EQU	     H'0005'
PORTB	    EQU	     H'0006'
PORTC	    EQU	     H'0007'
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
CCPR1L	    EQU	     H'0015'
CCPR1H	    EQU	     H'0016'
CCP1CON	    EQU	     H'0017'
RCSTA	    EQU	     H'0018'
TXREG	    EQU	     H'0019'
RCREG	    EQU	     H'001A'
CCPR2L	    EQU	     H'001B'
CCPR2H	    EQU	     H'001C'
CCP2CON	    EQU	     H'001D'
TXSTA	    EQU	     H'001E'
SPBRG	    EQU	     H'001F'
OPTION_REG	    EQU	     H'0081'
TRISA	    EQU	     H'0085'
TRISB	    EQU	     H'0086'
TRISC	    EQU	     H'0087'
ANSEL1	    EQU	     H'0089'
PIE1	    EQU	     H'008C'
PIE2	    EQU	     H'008D'
OSCCON	    EQU	     H'008F'
WDTCON	    EQU	     H'0090'
IOCA	    EQU	     H'0091'
PR2	    EQU	     H'0092'
WPUB	    EQU	     H'0095'
IOCB	    EQU	     H'0096'
WPDB	    EQU	     H'0097'
PWMCON	    EQU	     H'0099'
PWM1CYC	    EQU	     H'009A'
PWM2CYC	    EQU	     H'009B'
ADRESL	    EQU	     H'009C'
ADRESH	    EQU	     H'009D'
ADCON0	    EQU	     H'009E'
ADCON1	    EQU	     H'009F'
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
SEGCUR	    EQU	     H'0113'
PALEN	    EQU	     H'0114'
PBLEN	    EQU	     H'0115'
PAHEN	    EQU	     H'0116'
PBHEN	    EQU	     H'0117'
EECON1	    EQU	     H'011B'
EECON2	    EQU	     H'011C'
		
		
		
		
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
RB7	   EQU	    H'07'
RB6	   EQU	    H'06'
RB5	   EQU	    H'05'
RB4	   EQU	    H'04'
RB3	   EQU	    H'03'
RB2	   EQU	    H'02'
RB1	   EQU	    H'01'
RB0	   EQU	    H'00'
		
		
;------------------------PORTC  Bits-------------------------------		
RC1	   EQU	    H'01'
RC0	   EQU	    H'00'
		
		
;------------------------ANSEL0  Bits-------------------------------		
ANS7	   EQU	    H'07'
ANS6	   EQU	    H'06'
ANS5	   EQU	    H'05'
ANS4	   EQU	    H'04'
ANS3	   EQU	    H'03'
ANS2	   EQU	    H'02'
ANS1	   EQU	    H'01'
ANS0	   EQU	    H'00'
		
		
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
RCIF	   EQU	    H'05'
TXIF	   EQU	    H'04'
CCP1IF	   EQU	    H'02'
TMR2IF	   EQU	    H'01'
TMR1IF	   EQU	    H'00'
		
		
;------------------------PIR2  Bits-------------------------------		
TKIF	   EQU	    H'06'
RACIF	   EQU	    H'05'
EEIF	   EQU	    H'04'
CCP2IF	   EQU	    H'00'
		
		
;------------------------T1CON  Bits-------------------------------		
T1GINV	   EQU	    H'07'
TMR1GE	   EQU	    H'06'
T1CKPS1	   EQU	    H'05'
T1CKPS0	   EQU	    H'04'
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
		
		
;------------------------CCP1CON  Bits-------------------------------		
DC1B1	   EQU	    H'05'
DC1B0	   EQU	    H'04'
CCP1M3	   EQU	    H'03'
CCP1M2	   EQU	    H'02'
CCP1M1	   EQU	    H'01'
CCP1M0	   EQU	    H'00'
		
		
;------------------------RCSTA  Bits-------------------------------		
SPEN	   EQU	    H'07'
RX9EN	   EQU	    H'06'
SREN	   EQU	    H'05'
CREN	   EQU	    H'04'
RCIDL	   EQU	    H'03'
FERR	   EQU	    H'02'
OERR	   EQU	    H'01'
RX9D	   EQU	    H'00'
		
		
;------------------------CCP2CON  Bits-------------------------------		
DC2B1	   EQU	    H'05'
DC2B0	   EQU	    H'04'
CCP2M3	   EQU	    H'03'
CCP2M2	   EQU	    H'02'
CCP2M1	   EQU	    H'01'
CCP2M0	   EQU	    H'00'
		
		
;------------------------TXSTA  Bits-------------------------------		
CSRC	   EQU	    H'07'
TX9EN	   EQU	    H'06'
TXEN	   EQU	    H'05'
SYNC	   EQU	    H'04'
SCKP	   EQU	    H'03'
TRMT	   EQU	    H'01'
TX9D	   EQU	    H'00'
		
		
;------------------------SPBRG  Bits-------------------------------		
BRG7	   EQU	    H'07'
BRG6	   EQU	    H'06'
BRG5	   EQU	    H'05'
BRG4	   EQU	    H'04'
BRG3	   EQU	    H'03'
BRG2	   EQU	    H'02'
BRG1	   EQU	    H'01'
BRG0	   EQU	    H'00'
		
		
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
TRISB7	   EQU	    H'07'
TRISB6	   EQU	    H'06'
TRISB5	   EQU	    H'05'
TRISB4	   EQU	    H'04'
TRISB3	   EQU	    H'03'
TRISB2	   EQU	    H'02'
TRISB1	   EQU	    H'01'
TRISB0	   EQU	    H'00'
		
		
;------------------------TRISC  Bits-------------------------------		
TRISC1	   EQU	    H'01'
TRISC0	   EQU	    H'00'
		
		
;------------------------ANSEL1  Bits-------------------------------		
ANS15	   EQU	    H'07'
ANS14	   EQU	    H'06'
ANS13	   EQU	    H'05'
ANS12	   EQU	    H'04'
ANS11	   EQU	    H'03'
ANS10	   EQU	    H'02'
ANS9	   EQU	    H'01'
ANS8	   EQU	    H'00'
		
		
;------------------------PIE1  Bits-------------------------------		
ADIE	   EQU	    H'06'
RCIE	   EQU	    H'05'
TXIE	   EQU	    H'04'
CCP1IE	   EQU	    H'02'
TMR2IE	   EQU	    H'01'
TMR1IE	   EQU	    H'00'
		
		
;------------------------PIE2  Bits-------------------------------		
TKIE	   EQU	    H'06'
RACIE	   EQU	    H'05'
EEIE	   EQU	    H'04'
CCP2IE	   EQU	    H'00'
		
		
;------------------------OSCCON  Bits-------------------------------		
IRCF2	   EQU	    H'06'
IRCF1	   EQU	    H'05'
IRCF0	   EQU	    H'04'
		
		
;------------------------WDTCON  Bits-------------------------------		
SWDTEN	   EQU	    H'00'
		
		
;------------------------IOCA  Bits-------------------------------		
IOCA7	   EQU	    H'07'
IOCA6	   EQU	    H'06'
IOCA5	   EQU	    H'05'
IOCA4	   EQU	    H'04'
IOCA3	   EQU	    H'03'
IOCA2	   EQU	    H'02'
IOCA1	   EQU	    H'01'
IOCA0	   EQU	    H'00'
		
		
;------------------------WPUB  Bits-------------------------------		
WPUB7	   EQU	    H'07'
WPUB6	   EQU	    H'06'
WPUB5	   EQU	    H'05'
WPUB4	   EQU	    H'04'
WPUB3	   EQU	    H'03'
WPUB2	   EQU	    H'02'
WPUB1	   EQU	    H'01'
WPUB0	   EQU	    H'00'
		
		
;------------------------IOCB  Bits-------------------------------		
IOCB7	   EQU	    H'07'
IOCB6	   EQU	    H'06'
IOCB5	   EQU	    H'05'
IOCB4	   EQU	    H'04'
IOCB3	   EQU	    H'03'
IOCB2	   EQU	    H'02'
IOCB1	   EQU	    H'01'
IOCB0	   EQU	    H'00'
		
		
;------------------------WPDB  Bits-------------------------------		
WPDB7	   EQU	    H'07'
WPDB6	   EQU	    H'06'
WPDB5	   EQU	    H'05'
WPDB4	   EQU	    H'04'
WPDB3	   EQU	    H'03'
WPDB2	   EQU	    H'02'
WPDB1	   EQU	    H'01'
WPDB0	   EQU	    H'00'
		
		
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
WPUC1	   EQU	    H'01'
WPUC0	   EQU	    H'00'
		
		
;------------------------ANSEL2  Bits-------------------------------		
ANS17	   EQU	    H'01'
ANS16	   EQU	    H'00'
		
		
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
		
		
;------------------------SEGCUR  Bits-------------------------------		
SEG_ISEL3	   EQU	    H'03'
SEG_ISEL2	   EQU	    H'02'
SEG_ISEL1	   EQU	    H'01'
SEG_ISEL0	   EQU	    H'00'
		
		
;------------------------PALEN  Bits-------------------------------		
PALEN7	   EQU	    H'07'
PALEN6	   EQU	    H'06'
PALEN5	   EQU	    H'05'
PALEN4	   EQU	    H'04'
PALEN3	   EQU	    H'03'
PALEN2	   EQU	    H'02'
PALEN1	   EQU	    H'01'
PALEN0	   EQU	    H'00'
		
		
;------------------------PBLEN  Bits-------------------------------		
PBLEN7	   EQU	    H'07'
PBLEN6	   EQU	    H'06'
PBLEN5	   EQU	    H'05'
PBLEN4	   EQU	    H'04'
PBLEN3	   EQU	    H'03'
PBLEN2	   EQU	    H'02'
PBLEN1	   EQU	    H'01'
PBLEN0	   EQU	    H'00'
		
		
;------------------------PAHEN  Bits-------------------------------		
PAHEN7	   EQU	    H'07'
PAHEN6	   EQU	    H'06'
PAHEN5	   EQU	    H'05'
PAHEN4	   EQU	    H'04'
PAHEN3	   EQU	    H'03'
PAHEN2	   EQU	    H'02'
PAHEN1	   EQU	    H'01'
PAHEN0	   EQU	    H'00'
		
		
;------------------------PBHEN  Bits-------------------------------		
PBHEN7	   EQU	    H'07'
PBHEN6	   EQU	    H'06'
PBHEN5	   EQU	    H'05'
PBHEN4	   EQU	    H'04'
PBHEN3	   EQU	    H'03'
PBHEN2	   EQU	    H'02'
PBHEN1	   EQU	    H'01'
PBHEN0	   EQU	    H'00'
		
		
;------------------------EECON1  Bits-------------------------------		
EEPGD	   EQU	    H'07'
EETIME1	   EQU	    H'05'
EETIME0	   EQU	    H'04'
WRERR	   EQU	    H'03'
WREN	   EQU	    H'02'
WR	   EQU	    H'01'
RD	   EQU	    H'00'
