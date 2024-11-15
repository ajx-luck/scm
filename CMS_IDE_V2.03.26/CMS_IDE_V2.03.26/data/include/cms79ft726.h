
#ifndef _HTC_H_
#warning Header file cms79ft726.h included directly. Use #include <cms.h> instead.
#endif

 /* header file for the cms microcontroller. Base On Datasheet V1.0
    CMS79FT726
 */


#ifndef __CMS79FT726_H_
#define __CMS79FT726_H_
		
volatile unsigned char	    INDF	     @   0x0000;
volatile unsigned char	    TMR0	     @   0x0001;
volatile unsigned char	    PCL	     @   0x0002;
volatile unsigned char	    STATUS	     @   0x0003;
volatile unsigned char	    FSR	     @   0x0004;
volatile unsigned char	    PORTA	     @   0x0005;
volatile unsigned char	    PORTB	     @   0x0006;
volatile unsigned char	    PORTC	     @   0x0007;
volatile unsigned char	    ANSEL0	     @   0x0009;
volatile unsigned char	    PCLATH	     @   0x000A;
volatile unsigned char	    INTCON	     @   0x000B;
volatile unsigned char	    PIR1	     @   0x000C;
volatile unsigned char	    PIR2	     @   0x000D;
volatile unsigned char	    TMR1L	     @   0x000E;
volatile unsigned char	    TMR1H	     @   0x000F;
volatile unsigned char	    T1CON	     @   0x0010;
volatile unsigned char	    TMR2	     @   0x0011;
volatile unsigned char	    T2CON	     @   0x0012;
volatile unsigned char	    CCPR1L	     @   0x0015;
volatile unsigned char	    CCPR1H	     @   0x0016;
volatile unsigned char	    CCP1CON	     @   0x0017;
volatile unsigned char	    RCSTA	     @   0x0018;
volatile unsigned char	    TXREG	     @   0x0019;
volatile unsigned char	    RCREG	     @   0x001A;
volatile unsigned char	    CCPR2L	     @   0x001B;
volatile unsigned char	    CCPR2H	     @   0x001C;
volatile unsigned char	    CCP2CON	     @   0x001D;
volatile unsigned char	    TXSTA	     @   0x001E;
volatile unsigned char	    SPBRG	     @   0x001F;
volatile unsigned char	    OPTION_REG	     @   0x0081;
volatile unsigned char	    TRISA	     @   0x0085;
volatile unsigned char	    TRISB	     @   0x0086;
volatile unsigned char	    TRISC	     @   0x0087;
volatile unsigned char	    ANSEL1	     @   0x0089;
volatile unsigned char	    PIE1	     @   0x008C;
volatile unsigned char	    PIE2	     @   0x008D;
volatile unsigned char	    OSCCON	     @   0x008F;
volatile unsigned char	    WDTCON	     @   0x0090;
volatile unsigned char	    IOCA	     @   0x0091;
volatile unsigned char	    PR2	     @   0x0092;
volatile unsigned char	    WPUB	     @   0x0095;
volatile unsigned char	    IOCB	     @   0x0096;
volatile unsigned char	    WPDB	     @   0x0097;
volatile unsigned char	    PWMCON	     @   0x0099;
volatile unsigned char	    PWM1CYC	     @   0x009A;
volatile unsigned char	    PWM2CYC	     @   0x009B;
volatile unsigned char	    ADRESL	     @   0x009C;
volatile unsigned char	    ADRESH	     @   0x009D;
volatile unsigned char	    ADCON0	     @   0x009E;
volatile unsigned char	    ADCON1	     @   0x009F;
volatile unsigned char	    WPUA	     @   0x0107;
volatile unsigned char	    WPUC	     @   0x0108;
volatile unsigned char	    ANSEL2	     @   0x0109;
volatile unsigned char	    EEDAT	     @   0x010C;
volatile unsigned char	    EEADR	     @   0x010D;
volatile unsigned char	    EEDATH	     @   0x010E;
volatile unsigned char	    EEADRH	     @   0x010F;
volatile unsigned char	    TABLE_SPH	     @   0x0110;
volatile unsigned char	    TABLE_SPL	     @   0x0111;
volatile unsigned char	    TABLE_DATAH	     @   0x0112;
volatile unsigned char	    SEGCUR	     @   0x0113;
volatile unsigned char	    PALEN	     @   0x0114;
volatile unsigned char	    PBLEN	     @   0x0115;
volatile unsigned char	    PAHEN	     @   0x0116;
volatile unsigned char	    PBHEN	     @   0x0117;
volatile unsigned char	    EECON1	     @   0x011B;
volatile unsigned char	    EECON2	     @   0x011C;
		
		
		
		
/* Definitions for STATUS register */		
volatile       bit  	IRP	   @ ((unsigned)&STATUS*8)+7;
volatile       bit  	RP1	   @ ((unsigned)&STATUS*8)+6;
volatile       bit  	RP0	   @ ((unsigned)&STATUS*8)+5;
volatile       bit  	TO	   @ ((unsigned)&STATUS*8)+4;
volatile       bit  	PD	   @ ((unsigned)&STATUS*8)+3;
volatile       bit  	Z	   @ ((unsigned)&STATUS*8)+2;
volatile       bit  	DC	   @ ((unsigned)&STATUS*8)+1;
volatile       bit  	C	   @ ((unsigned)&STATUS*8)+0;
		
		
/* Definitions for PORTA register */		
volatile       bit  	RA7	   @ ((unsigned)&PORTA*8)+7;
volatile       bit  	RA6	   @ ((unsigned)&PORTA*8)+6;
volatile       bit  	RA5	   @ ((unsigned)&PORTA*8)+5;
volatile       bit  	RA4	   @ ((unsigned)&PORTA*8)+4;
volatile       bit  	RA3	   @ ((unsigned)&PORTA*8)+3;
volatile       bit  	RA2	   @ ((unsigned)&PORTA*8)+2;
volatile       bit  	RA1	   @ ((unsigned)&PORTA*8)+1;
volatile       bit  	RA0	   @ ((unsigned)&PORTA*8)+0;
		
		
/* Definitions for PORTB register */		
volatile       bit  	RB7	   @ ((unsigned)&PORTB*8)+7;
volatile       bit  	RB6	   @ ((unsigned)&PORTB*8)+6;
volatile       bit  	RB5	   @ ((unsigned)&PORTB*8)+5;
volatile       bit  	RB4	   @ ((unsigned)&PORTB*8)+4;
volatile       bit  	RB3	   @ ((unsigned)&PORTB*8)+3;
volatile       bit  	RB2	   @ ((unsigned)&PORTB*8)+2;
volatile       bit  	RB1	   @ ((unsigned)&PORTB*8)+1;
volatile       bit  	RB0	   @ ((unsigned)&PORTB*8)+0;
		
		
/* Definitions for PORTC register */		
volatile       bit  	RC1	   @ ((unsigned)&PORTC*8)+1;
volatile       bit  	RC0	   @ ((unsigned)&PORTC*8)+0;
		
		
/* Definitions for ANSEL0 register */		
volatile       bit  	ANS7	   @ ((unsigned)&ANSEL0*8)+7;
volatile       bit  	ANS6	   @ ((unsigned)&ANSEL0*8)+6;
volatile       bit  	ANS5	   @ ((unsigned)&ANSEL0*8)+5;
volatile       bit  	ANS4	   @ ((unsigned)&ANSEL0*8)+4;
volatile       bit  	ANS3	   @ ((unsigned)&ANSEL0*8)+3;
volatile       bit  	ANS2	   @ ((unsigned)&ANSEL0*8)+2;
volatile       bit  	ANS1	   @ ((unsigned)&ANSEL0*8)+1;
volatile       bit  	ANS0	   @ ((unsigned)&ANSEL0*8)+0;
		
		
/* Definitions for INTCON register */		
volatile       bit  	GIE	   @ ((unsigned)&INTCON*8)+7;
volatile       bit  	PEIE	   @ ((unsigned)&INTCON*8)+6;
volatile       bit  	T0IE	   @ ((unsigned)&INTCON*8)+5;
volatile       bit  	INTE	   @ ((unsigned)&INTCON*8)+4;
volatile       bit  	RBIE	   @ ((unsigned)&INTCON*8)+3;
volatile       bit  	T0IF	   @ ((unsigned)&INTCON*8)+2;
volatile       bit  	INTF	   @ ((unsigned)&INTCON*8)+1;
volatile       bit  	RBIF	   @ ((unsigned)&INTCON*8)+0;
		
		
/* Definitions for PIR1 register */		
volatile       bit  	ADIF	   @ ((unsigned)&PIR1*8)+6;
volatile       bit  	RCIF	   @ ((unsigned)&PIR1*8)+5;
volatile       bit  	TXIF	   @ ((unsigned)&PIR1*8)+4;
volatile       bit  	CCP1IF	   @ ((unsigned)&PIR1*8)+2;
volatile       bit  	TMR2IF	   @ ((unsigned)&PIR1*8)+1;
volatile       bit  	TMR1IF	   @ ((unsigned)&PIR1*8)+0;
		
		
/* Definitions for PIR2 register */		
volatile       bit  	TKIF	   @ ((unsigned)&PIR2*8)+6;
volatile       bit  	RACIF	   @ ((unsigned)&PIR2*8)+5;
volatile       bit  	EEIF	   @ ((unsigned)&PIR2*8)+4;
volatile       bit  	CCP2IF	   @ ((unsigned)&PIR2*8)+0;
		
		
/* Definitions for T1CON register */		
volatile       bit  	T1GINV	   @ ((unsigned)&T1CON*8)+7;
volatile       bit  	TMR1GE	   @ ((unsigned)&T1CON*8)+6;
volatile       bit  	T1CKPS1	   @ ((unsigned)&T1CON*8)+5;
volatile       bit  	T1CKPS0	   @ ((unsigned)&T1CON*8)+4;
volatile       bit  	T1SYNC	   @ ((unsigned)&T1CON*8)+2;
volatile       bit  	TMR1CS	   @ ((unsigned)&T1CON*8)+1;
volatile       bit  	TMR1ON	   @ ((unsigned)&T1CON*8)+0;
		
		
/* Definitions for T2CON register */		
volatile       bit  	TOUTPS3	   @ ((unsigned)&T2CON*8)+6;
volatile       bit  	TOUTPS2	   @ ((unsigned)&T2CON*8)+5;
volatile       bit  	TOUTPS1	   @ ((unsigned)&T2CON*8)+4;
volatile       bit  	TOUTPS0	   @ ((unsigned)&T2CON*8)+3;
volatile       bit  	TMR2ON	   @ ((unsigned)&T2CON*8)+2;
volatile       bit  	T2CKPS1	   @ ((unsigned)&T2CON*8)+1;
volatile       bit  	T2CKPS0	   @ ((unsigned)&T2CON*8)+0;
		
		
/* Definitions for CCP1CON register */		
volatile       bit  	DC1B1	   @ ((unsigned)&CCP1CON*8)+5;
volatile       bit  	DC1B0	   @ ((unsigned)&CCP1CON*8)+4;
volatile       bit  	CCP1M3	   @ ((unsigned)&CCP1CON*8)+3;
volatile       bit  	CCP1M2	   @ ((unsigned)&CCP1CON*8)+2;
volatile       bit  	CCP1M1	   @ ((unsigned)&CCP1CON*8)+1;
volatile       bit  	CCP1M0	   @ ((unsigned)&CCP1CON*8)+0;
		
		
/* Definitions for RCSTA register */		
volatile       bit  	SPEN	   @ ((unsigned)&RCSTA*8)+7;
volatile       bit  	RX9EN	   @ ((unsigned)&RCSTA*8)+6;
volatile       bit  	SREN	   @ ((unsigned)&RCSTA*8)+5;
volatile       bit  	CREN	   @ ((unsigned)&RCSTA*8)+4;
volatile       bit  	RCIDL	   @ ((unsigned)&RCSTA*8)+3;
volatile       bit  	FERR	   @ ((unsigned)&RCSTA*8)+2;
volatile       bit  	OERR	   @ ((unsigned)&RCSTA*8)+1;
volatile       bit  	RX9D	   @ ((unsigned)&RCSTA*8)+0;
		
		
/* Definitions for CCP2CON register */		
volatile       bit  	DC2B1	   @ ((unsigned)&CCP2CON*8)+5;
volatile       bit  	DC2B0	   @ ((unsigned)&CCP2CON*8)+4;
volatile       bit  	CCP2M3	   @ ((unsigned)&CCP2CON*8)+3;
volatile       bit  	CCP2M2	   @ ((unsigned)&CCP2CON*8)+2;
volatile       bit  	CCP2M1	   @ ((unsigned)&CCP2CON*8)+1;
volatile       bit  	CCP2M0	   @ ((unsigned)&CCP2CON*8)+0;
		
		
/* Definitions for TXSTA register */		
volatile       bit  	CSRC	   @ ((unsigned)&TXSTA*8)+7;
volatile       bit  	TX9EN	   @ ((unsigned)&TXSTA*8)+6;
volatile       bit  	TXEN	   @ ((unsigned)&TXSTA*8)+5;
volatile       bit  	SYNC	   @ ((unsigned)&TXSTA*8)+4;
volatile       bit  	SCKP	   @ ((unsigned)&TXSTA*8)+3;
volatile       bit  	TRMT	   @ ((unsigned)&TXSTA*8)+1;
volatile       bit  	TX9D	   @ ((unsigned)&TXSTA*8)+0;
		
		
/* Definitions for SPBRG register */		
volatile       bit  	BRG7	   @ ((unsigned)&SPBRG*8)+7;
volatile       bit  	BRG6	   @ ((unsigned)&SPBRG*8)+6;
volatile       bit  	BRG5	   @ ((unsigned)&SPBRG*8)+5;
volatile       bit  	BRG4	   @ ((unsigned)&SPBRG*8)+4;
volatile       bit  	BRG3	   @ ((unsigned)&SPBRG*8)+3;
volatile       bit  	BRG2	   @ ((unsigned)&SPBRG*8)+2;
volatile       bit  	BRG1	   @ ((unsigned)&SPBRG*8)+1;
volatile       bit  	BRG0	   @ ((unsigned)&SPBRG*8)+0;
		
		
/* Definitions for OPTION_REG register */		
volatile       bit  	RBPU	   @ ((unsigned)&OPTION_REG*8)+7;
volatile       bit  	INTEDG	   @ ((unsigned)&OPTION_REG*8)+6;
volatile       bit  	T0CS	   @ ((unsigned)&OPTION_REG*8)+5;
volatile       bit  	T0SE	   @ ((unsigned)&OPTION_REG*8)+4;
volatile       bit  	PSA	   @ ((unsigned)&OPTION_REG*8)+3;
volatile       bit  	PS2	   @ ((unsigned)&OPTION_REG*8)+2;
volatile       bit  	PS1	   @ ((unsigned)&OPTION_REG*8)+1;
volatile       bit  	PS0	   @ ((unsigned)&OPTION_REG*8)+0;
		
		
/* Definitions for TRISA register */		
volatile       bit  	TRISA7	   @ ((unsigned)&TRISA*8)+7;
volatile       bit  	TRISA6	   @ ((unsigned)&TRISA*8)+6;
volatile       bit  	TRISA5	   @ ((unsigned)&TRISA*8)+5;
volatile       bit  	TRISA4	   @ ((unsigned)&TRISA*8)+4;
volatile       bit  	TRISA3	   @ ((unsigned)&TRISA*8)+3;
volatile       bit  	TRISA2	   @ ((unsigned)&TRISA*8)+2;
volatile       bit  	TRISA1	   @ ((unsigned)&TRISA*8)+1;
volatile       bit  	TRISA0	   @ ((unsigned)&TRISA*8)+0;
		
		
/* Definitions for TRISB register */		
volatile       bit  	TRISB7	   @ ((unsigned)&TRISB*8)+7;
volatile       bit  	TRISB6	   @ ((unsigned)&TRISB*8)+6;
volatile       bit  	TRISB5	   @ ((unsigned)&TRISB*8)+5;
volatile       bit  	TRISB4	   @ ((unsigned)&TRISB*8)+4;
volatile       bit  	TRISB3	   @ ((unsigned)&TRISB*8)+3;
volatile       bit  	TRISB2	   @ ((unsigned)&TRISB*8)+2;
volatile       bit  	TRISB1	   @ ((unsigned)&TRISB*8)+1;
volatile       bit  	TRISB0	   @ ((unsigned)&TRISB*8)+0;
		
		
/* Definitions for TRISC register */		
volatile       bit  	TRISC1	   @ ((unsigned)&TRISC*8)+1;
volatile       bit  	TRISC0	   @ ((unsigned)&TRISC*8)+0;
		
		
/* Definitions for ANSEL1 register */		
volatile       bit  	ANS15	   @ ((unsigned)&ANSEL1*8)+7;
volatile       bit  	ANS14	   @ ((unsigned)&ANSEL1*8)+6;
volatile       bit  	ANS13	   @ ((unsigned)&ANSEL1*8)+5;
volatile       bit  	ANS12	   @ ((unsigned)&ANSEL1*8)+4;
volatile       bit  	ANS11	   @ ((unsigned)&ANSEL1*8)+3;
volatile       bit  	ANS10	   @ ((unsigned)&ANSEL1*8)+2;
volatile       bit  	ANS9	   @ ((unsigned)&ANSEL1*8)+1;
volatile       bit  	ANS8	   @ ((unsigned)&ANSEL1*8)+0;
		
		
/* Definitions for PIE1 register */		
volatile       bit  	ADIE	   @ ((unsigned)&PIE1*8)+6;
volatile       bit  	RCIE	   @ ((unsigned)&PIE1*8)+5;
volatile       bit  	TXIE	   @ ((unsigned)&PIE1*8)+4;
volatile       bit  	CCP1IE	   @ ((unsigned)&PIE1*8)+2;
volatile       bit  	TMR2IE	   @ ((unsigned)&PIE1*8)+1;
volatile       bit  	TMR1IE	   @ ((unsigned)&PIE1*8)+0;
		
		
/* Definitions for PIE2 register */		
volatile       bit  	TKIE	   @ ((unsigned)&PIE2*8)+6;
volatile       bit  	RACIE	   @ ((unsigned)&PIE2*8)+5;
volatile       bit  	EEIE	   @ ((unsigned)&PIE2*8)+4;
volatile       bit  	CCP2IE	   @ ((unsigned)&PIE2*8)+0;
		
		
/* Definitions for OSCCON register */		
volatile       bit  	IRCF2	   @ ((unsigned)&OSCCON*8)+6;
volatile       bit  	IRCF1	   @ ((unsigned)&OSCCON*8)+5;
volatile       bit  	IRCF0	   @ ((unsigned)&OSCCON*8)+4;
		
		
/* Definitions for WDTCON register */		
volatile       bit  	SWDTEN	   @ ((unsigned)&WDTCON*8)+0;
		
		
/* Definitions for IOCA register */		
volatile       bit  	IOCA7	   @ ((unsigned)&IOCA*8)+7;
volatile       bit  	IOCA6	   @ ((unsigned)&IOCA*8)+6;
volatile       bit  	IOCA5	   @ ((unsigned)&IOCA*8)+5;
volatile       bit  	IOCA4	   @ ((unsigned)&IOCA*8)+4;
volatile       bit  	IOCA3	   @ ((unsigned)&IOCA*8)+3;
volatile       bit  	IOCA2	   @ ((unsigned)&IOCA*8)+2;
volatile       bit  	IOCA1	   @ ((unsigned)&IOCA*8)+1;
volatile       bit  	IOCA0	   @ ((unsigned)&IOCA*8)+0;
		
		
/* Definitions for WPUB register */		
volatile       bit  	WPUB7	   @ ((unsigned)&WPUB*8)+7;
volatile       bit  	WPUB6	   @ ((unsigned)&WPUB*8)+6;
volatile       bit  	WPUB5	   @ ((unsigned)&WPUB*8)+5;
volatile       bit  	WPUB4	   @ ((unsigned)&WPUB*8)+4;
volatile       bit  	WPUB3	   @ ((unsigned)&WPUB*8)+3;
volatile       bit  	WPUB2	   @ ((unsigned)&WPUB*8)+2;
volatile       bit  	WPUB1	   @ ((unsigned)&WPUB*8)+1;
volatile       bit  	WPUB0	   @ ((unsigned)&WPUB*8)+0;
		
		
/* Definitions for IOCB register */		
volatile       bit  	IOCB7	   @ ((unsigned)&IOCB*8)+7;
volatile       bit  	IOCB6	   @ ((unsigned)&IOCB*8)+6;
volatile       bit  	IOCB5	   @ ((unsigned)&IOCB*8)+5;
volatile       bit  	IOCB4	   @ ((unsigned)&IOCB*8)+4;
volatile       bit  	IOCB3	   @ ((unsigned)&IOCB*8)+3;
volatile       bit  	IOCB2	   @ ((unsigned)&IOCB*8)+2;
volatile       bit  	IOCB1	   @ ((unsigned)&IOCB*8)+1;
volatile       bit  	IOCB0	   @ ((unsigned)&IOCB*8)+0;
		
		
/* Definitions for WPDB register */		
volatile       bit  	WPDB7	   @ ((unsigned)&WPDB*8)+7;
volatile       bit  	WPDB6	   @ ((unsigned)&WPDB*8)+6;
volatile       bit  	WPDB5	   @ ((unsigned)&WPDB*8)+5;
volatile       bit  	WPDB4	   @ ((unsigned)&WPDB*8)+4;
volatile       bit  	WPDB3	   @ ((unsigned)&WPDB*8)+3;
volatile       bit  	WPDB2	   @ ((unsigned)&WPDB*8)+2;
volatile       bit  	WPDB1	   @ ((unsigned)&WPDB*8)+1;
volatile       bit  	WPDB0	   @ ((unsigned)&WPDB*8)+0;
		
		
/* Definitions for PWMCON register */		
volatile       bit  	CYC2EN	   @ ((unsigned)&PWMCON*8)+6;
volatile       bit  	CK21	   @ ((unsigned)&PWMCON*8)+5;
volatile       bit  	CK20	   @ ((unsigned)&PWMCON*8)+4;
volatile       bit  	CYC1EN	   @ ((unsigned)&PWMCON*8)+2;
volatile       bit  	CK11	   @ ((unsigned)&PWMCON*8)+1;
volatile       bit  	CK10	   @ ((unsigned)&PWMCON*8)+0;
		
		
/* Definitions for ADCON0 register */		
volatile       bit  	ADCS1	   @ ((unsigned)&ADCON0*8)+7;
volatile       bit  	ADCS0	   @ ((unsigned)&ADCON0*8)+6;
volatile       bit  	CHS3	   @ ((unsigned)&ADCON0*8)+5;
volatile       bit  	CHS2	   @ ((unsigned)&ADCON0*8)+4;
volatile       bit  	CHS1	   @ ((unsigned)&ADCON0*8)+3;
volatile       bit  	CHS0	   @ ((unsigned)&ADCON0*8)+2;
volatile       bit  	GODONE	   @ ((unsigned)&ADCON0*8)+1;
volatile       bit  	ADON	   @ ((unsigned)&ADCON0*8)+0;
		
		
/* Definitions for ADCON1 register */		
volatile       bit  	ADFM	   @ ((unsigned)&ADCON1*8)+7;
volatile       bit  	CHS4	   @ ((unsigned)&ADCON1*8)+6;
		
		
/* Definitions for WPUA register */		
volatile       bit  	WPUA7	   @ ((unsigned)&WPUA*8)+7;
volatile       bit  	WPUA6	   @ ((unsigned)&WPUA*8)+6;
volatile       bit  	WPUA5	   @ ((unsigned)&WPUA*8)+5;
volatile       bit  	WPUA4	   @ ((unsigned)&WPUA*8)+4;
volatile       bit  	WPUA3	   @ ((unsigned)&WPUA*8)+3;
volatile       bit  	WPUA2	   @ ((unsigned)&WPUA*8)+2;
volatile       bit  	WPUA1	   @ ((unsigned)&WPUA*8)+1;
volatile       bit  	WPUA0	   @ ((unsigned)&WPUA*8)+0;
		
		
/* Definitions for WPUC register */		
volatile       bit  	WPUC1	   @ ((unsigned)&WPUC*8)+1;
volatile       bit  	WPUC0	   @ ((unsigned)&WPUC*8)+0;
		
		
/* Definitions for ANSEL2 register */		
volatile       bit  	ANS17	   @ ((unsigned)&ANSEL2*8)+1;
volatile       bit  	ANS16	   @ ((unsigned)&ANSEL2*8)+0;
		
		
/* Definitions for EEDAT register */		
volatile       bit  	EEDAT7	   @ ((unsigned)&EEDAT*8)+7;
volatile       bit  	EEDAT6	   @ ((unsigned)&EEDAT*8)+6;
volatile       bit  	EEDAT5	   @ ((unsigned)&EEDAT*8)+5;
volatile       bit  	EEDAT4	   @ ((unsigned)&EEDAT*8)+4;
volatile       bit  	EEDAT3	   @ ((unsigned)&EEDAT*8)+3;
volatile       bit  	EEDAT2	   @ ((unsigned)&EEDAT*8)+2;
volatile       bit  	EEDAT1	   @ ((unsigned)&EEDAT*8)+1;
volatile       bit  	EEDAT0	   @ ((unsigned)&EEDAT*8)+0;
		
		
/* Definitions for EEADR register */		
volatile       bit  	EEADR7	   @ ((unsigned)&EEADR*8)+7;
volatile       bit  	EEADR6	   @ ((unsigned)&EEADR*8)+6;
volatile       bit  	EEADR5	   @ ((unsigned)&EEADR*8)+5;
volatile       bit  	EEADR4	   @ ((unsigned)&EEADR*8)+4;
volatile       bit  	EEADR3	   @ ((unsigned)&EEADR*8)+3;
volatile       bit  	EEADR2	   @ ((unsigned)&EEADR*8)+2;
volatile       bit  	EEADR1	   @ ((unsigned)&EEADR*8)+1;
volatile       bit  	EEADR0	   @ ((unsigned)&EEADR*8)+0;
		
		
/* Definitions for EEDATH register */		
volatile       bit  	EEDATH7	   @ ((unsigned)&EEDATH*8)+7;
volatile       bit  	EEDATH6	   @ ((unsigned)&EEDATH*8)+6;
volatile       bit  	EEDATH5	   @ ((unsigned)&EEDATH*8)+5;
volatile       bit  	EEDATH4	   @ ((unsigned)&EEDATH*8)+4;
volatile       bit  	EEDATH3	   @ ((unsigned)&EEDATH*8)+3;
volatile       bit  	EEDATH2	   @ ((unsigned)&EEDATH*8)+2;
volatile       bit  	EEDATH1	   @ ((unsigned)&EEDATH*8)+1;
volatile       bit  	EEDATH0	   @ ((unsigned)&EEDATH*8)+0;
		
		
/* Definitions for EEADRH register */		
volatile       bit  	EEADRH4	   @ ((unsigned)&EEADRH*8)+4;
volatile       bit  	EEADRH3	   @ ((unsigned)&EEADRH*8)+3;
volatile       bit  	EEADRH2	   @ ((unsigned)&EEADRH*8)+2;
volatile       bit  	EEADRH1	   @ ((unsigned)&EEADRH*8)+1;
volatile       bit  	EEADRH0	   @ ((unsigned)&EEADRH*8)+0;
		
		
/* Definitions for SEGCUR register */		
volatile       bit  	SEG_ISEL3	   @ ((unsigned)&SEGCUR*8)+3;
volatile       bit  	SEG_ISEL2	   @ ((unsigned)&SEGCUR*8)+2;
volatile       bit  	SEG_ISEL1	   @ ((unsigned)&SEGCUR*8)+1;
volatile       bit  	SEG_ISEL0	   @ ((unsigned)&SEGCUR*8)+0;
		
		
/* Definitions for PALEN register */		
volatile       bit  	PALEN7	   @ ((unsigned)&PALEN*8)+7;
volatile       bit  	PALEN6	   @ ((unsigned)&PALEN*8)+6;
volatile       bit  	PALEN5	   @ ((unsigned)&PALEN*8)+5;
volatile       bit  	PALEN4	   @ ((unsigned)&PALEN*8)+4;
volatile       bit  	PALEN3	   @ ((unsigned)&PALEN*8)+3;
volatile       bit  	PALEN2	   @ ((unsigned)&PALEN*8)+2;
volatile       bit  	PALEN1	   @ ((unsigned)&PALEN*8)+1;
volatile       bit  	PALEN0	   @ ((unsigned)&PALEN*8)+0;
		
		
/* Definitions for PBLEN register */		
volatile       bit  	PBLEN7	   @ ((unsigned)&PBLEN*8)+7;
volatile       bit  	PBLEN6	   @ ((unsigned)&PBLEN*8)+6;
volatile       bit  	PBLEN5	   @ ((unsigned)&PBLEN*8)+5;
volatile       bit  	PBLEN4	   @ ((unsigned)&PBLEN*8)+4;
volatile       bit  	PBLEN3	   @ ((unsigned)&PBLEN*8)+3;
volatile       bit  	PBLEN2	   @ ((unsigned)&PBLEN*8)+2;
volatile       bit  	PBLEN1	   @ ((unsigned)&PBLEN*8)+1;
volatile       bit  	PBLEN0	   @ ((unsigned)&PBLEN*8)+0;
		
		
/* Definitions for PAHEN register */		
volatile       bit  	PAHEN7	   @ ((unsigned)&PAHEN*8)+7;
volatile       bit  	PAHEN6	   @ ((unsigned)&PAHEN*8)+6;
volatile       bit  	PAHEN5	   @ ((unsigned)&PAHEN*8)+5;
volatile       bit  	PAHEN4	   @ ((unsigned)&PAHEN*8)+4;
volatile       bit  	PAHEN3	   @ ((unsigned)&PAHEN*8)+3;
volatile       bit  	PAHEN2	   @ ((unsigned)&PAHEN*8)+2;
volatile       bit  	PAHEN1	   @ ((unsigned)&PAHEN*8)+1;
volatile       bit  	PAHEN0	   @ ((unsigned)&PAHEN*8)+0;
		
		
/* Definitions for PBHEN register */		
volatile       bit  	PBHEN7	   @ ((unsigned)&PBHEN*8)+7;
volatile       bit  	PBHEN6	   @ ((unsigned)&PBHEN*8)+6;
volatile       bit  	PBHEN5	   @ ((unsigned)&PBHEN*8)+5;
volatile       bit  	PBHEN4	   @ ((unsigned)&PBHEN*8)+4;
volatile       bit  	PBHEN3	   @ ((unsigned)&PBHEN*8)+3;
volatile       bit  	PBHEN2	   @ ((unsigned)&PBHEN*8)+2;
volatile       bit  	PBHEN1	   @ ((unsigned)&PBHEN*8)+1;
volatile       bit  	PBHEN0	   @ ((unsigned)&PBHEN*8)+0;
		
		
/* Definitions for EECON1 register */		
volatile       bit  	EEPGD	   @ ((unsigned)&EECON1*8)+7;
volatile       bit  	EETIME1	   @ ((unsigned)&EECON1*8)+5;
volatile       bit  	EETIME0	   @ ((unsigned)&EECON1*8)+4;
volatile       bit  	WRERR	   @ ((unsigned)&EECON1*8)+3;
volatile       bit  	WREN	   @ ((unsigned)&EECON1*8)+2;
volatile       bit  	WR	   @ ((unsigned)&EECON1*8)+1;
volatile       bit  	RD	   @ ((unsigned)&EECON1*8)+0;

#endif
