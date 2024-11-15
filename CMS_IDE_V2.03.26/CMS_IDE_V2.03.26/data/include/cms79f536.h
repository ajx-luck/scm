#ifndef _HTC_H_
#warning Header file cms79f536.h included directly. Use #include <cms.h> instead.
#endif

/* header file for the cms microcontroller. Base On Datasheet V1.2
    CMS79F533
    CMS79F536
*/

#ifndef __CMS79F536_H
#define __CMS79F536_H

volatile 	unsigned char 	INDF		@	0x00;
volatile 	unsigned char 	TMR0		@	0x01;
volatile 	unsigned char 	PCL			@	0x02;
volatile 	unsigned char 	STATUS		@	0x03;
volatile 	unsigned char 	FSR			@	0x04;
volatile 	unsigned char 	PORTA		@	0x05;
volatile 	unsigned char 	PORTB		@	0x06;
volatile 	unsigned char 	PORTC		@	0x07;
volatile 	unsigned char 	WPUB		@	0x09;
volatile 	unsigned char 	PCLATH		@	0x0A;
volatile 	unsigned char 	INTCON		@	0x0B;
volatile 	unsigned char 	PIR1		@	0x0C;
volatile 	unsigned char 	PIR2		@	0x0D;
volatile 	unsigned char 	TMR1L		@	0x0E;
volatile 	unsigned char 	TMR1H		@	0x0F;
volatile 	unsigned char 	T1CON		@	0x10;
volatile 	unsigned char 	TMR2		@	0x11;
volatile 	unsigned char 	T2CON		@	0x12;
volatile 	unsigned char 	PIE1		@	0x13;
volatile 	unsigned char 	PIE2		@	0x14;
volatile 	unsigned char 	PIE3		@	0x15;
volatile 	unsigned char 	PIR3		@	0x16;
volatile 	unsigned char 	PWMCON0		@	0x17;
volatile 	unsigned char 	PWMCON1		@	0x18;
volatile 	unsigned char 	PWMTL		@	0x19;
volatile 	unsigned char 	PWMTH		@	0x1A;
volatile 	unsigned char 	PWMD0L		@	0x1B;
volatile 	unsigned char 	PWMD1L		@	0x1C;
volatile 	unsigned char 	PWMD2L		@	0x1D;
volatile 	unsigned char 	PWMDH		@	0x1E;
volatile 	unsigned char 	PWM2TL		@	0x1F;
volatile 	unsigned char 	OPTION_REG	@	0x81;
volatile 	unsigned char 	TRISA		@	0x85;
volatile 	unsigned char 	TRISB		@	0x86;
volatile 	unsigned char 	TRISC		@	0x87;
volatile 	unsigned char 	IOCB		@	0x88;
volatile 	unsigned char 	ADCON2		@	0x89;
volatile 	unsigned char 	CRCIN		@	0x8C;
volatile 	unsigned char 	CRCDL		@	0x8D;
volatile 	unsigned char 	CRCDH		@	0x8E;
volatile 	unsigned char 	OSCCON		@	0x8F;
volatile 	unsigned char 	WDTCON		@	0x90;
volatile 	unsigned char 	SPBRG		@	0x91;
volatile 	unsigned char 	PR2			@	0x92;
volatile 	unsigned char 	IICADD		@	0x93;
volatile 	unsigned char 	IICSTAT		@	0x94;
volatile 	unsigned char 	IICCON		@	0x95;
volatile 	unsigned char 	IICCON2		@	0x96;
volatile 	unsigned char 	IICBUF		@	0x97;
volatile 	unsigned char 	TXSTA		@	0x98;
volatile 	unsigned char 	TXREG		@	0x99;
volatile 	unsigned char 	RCSTA		@	0x9A;
volatile 	unsigned char 	RCREG		@	0x9B;
volatile 	unsigned char 	ADRESL		@	0x9C;
volatile 	unsigned char 	ADRESH		@	0x9D;
volatile 	unsigned char 	ADCON0		@	0x9E;
volatile 	unsigned char 	ADCON1		@	0x9F;
volatile 	unsigned char 	CM0CNT		@	0x105;
volatile 	unsigned char 	CMOUTEN		@	0x106;
volatile 	unsigned char 	WPUA		@	0x107;
volatile 	unsigned char 	WPUC		@	0x108;
volatile 	unsigned char 	CM1CNT		@	0x109;
volatile 	unsigned char 	OPAADJ		@	0x10C;
volatile 	unsigned char 	OPACON		@	0x10D;
volatile 	unsigned char 	PGAADJ		@	0x10E;
volatile 	unsigned char 	PGACON		@	0x10F;
volatile 	unsigned char 	TABLE_SPL	@	0x110;
volatile 	unsigned char 	TABLE_SPH	@	0x111;
volatile 	unsigned char 	TABLE_DATAH	@	0x112;
volatile 	unsigned char 	CMPOUT		@	0x113;
volatile 	unsigned char 	CM0ADJ		@	0x114;
volatile 	unsigned char 	CM0CON		@	0x115;
volatile 	unsigned char 	CM1CON		@	0x116;
volatile 	unsigned char 	CM1CON1		@	0x117;
volatile 	unsigned char 	CM2CON		@	0x118;
volatile 	unsigned char 	CM3CON		@	0x119;
volatile 	unsigned char 	CM4CON		@	0x11A;
volatile 	unsigned char 	CM4CON1		@	0x11B;
volatile 	unsigned char 	CM5CON		@	0x11C;
volatile 	unsigned char 	CM6CON		@	0x11D;
volatile 	unsigned char 	CM7CON		@	0x11E;
volatile 	unsigned char 	CM67CON		@	0x11F;
volatile 	unsigned char 	CM1DAC		@	0x185;
volatile 	unsigned char 	CM3DAC		@	0x186;
volatile 	unsigned char 	CM5DAC		@	0x187;
volatile 	unsigned char 	EECON1		@	0x188;
volatile 	unsigned char 	EECON2		@	0x189;
volatile 	unsigned char 	EEDAT		@	0x18C;
volatile 	unsigned char 	EEDATH		@	0x18D;
volatile 	unsigned char 	EEADR		@	0x18E;
volatile 	unsigned char 	EEADRH		@	0x18F;
volatile 	unsigned char 	PPGTMRL		@	0x190;
volatile 	unsigned char 	PPGTMRH		@	0x191;
volatile 	unsigned char 	PPGCON0		@	0x192;
volatile 	unsigned char 	PPGCON1		@	0x193;
volatile 	unsigned char 	PPGCON2		@	0x194;
volatile 	unsigned char 	PPGCON3		@	0x195;
volatile 	unsigned char 	ADCCNTL		@	0x196;
volatile 	unsigned char 	ADCCNTH		@	0x197;
volatile 	unsigned char 	ADCSUM0		@	0x198;
volatile 	unsigned char 	ADCSUM1		@	0x199;
volatile 	unsigned char 	ADCSUM2		@	0x19A;
volatile 	unsigned char 	CCPRL		@	0x19B;
volatile 	unsigned char 	CCPRH		@	0x19C;
volatile 	unsigned char 	CCPCON		@	0x19D;
volatile 	unsigned char 	CMPVEN		@	0x19E;
/* Definitions for STATUS  register */
volatile 	 bit 	 IRP	 @ ((unsigned)&STATUS*8)+7;
volatile 	 bit 	 RP1	 @ ((unsigned)&STATUS*8)+6;
volatile 	 bit 	 RP0	 @ ((unsigned)&STATUS*8)+5;
volatile 	 bit 	 TO	 @ ((unsigned)&STATUS*8)+4;
volatile 	 bit 	 PD	 @ ((unsigned)&STATUS*8)+3;
volatile 	 bit 	 Z	 @ ((unsigned)&STATUS*8)+2;
volatile 	 bit 	 DC	 @ ((unsigned)&STATUS*8)+1;
volatile 	 bit 	 C	 @ ((unsigned)&STATUS*8)+0;

/* Definitions for PORTA  register */
volatile 	 bit 	 RA7	 @ ((unsigned)&PORTA*8)+7;
volatile 	 bit 	 RA6	 @ ((unsigned)&PORTA*8)+6;
volatile 	 bit 	 RA5	 @ ((unsigned)&PORTA*8)+5;
volatile 	 bit 	 RA4	 @ ((unsigned)&PORTA*8)+4;
volatile 	 bit 	 RA3	 @ ((unsigned)&PORTA*8)+3;
volatile 	 bit 	 RA2	 @ ((unsigned)&PORTA*8)+2;
volatile 	 bit 	 RA1	 @ ((unsigned)&PORTA*8)+1;
volatile 	 bit 	 RA0	 @ ((unsigned)&PORTA*8)+0;

/* Definitions for PORTB  register */
volatile 	 bit 	 RB7	 @ ((unsigned)&PORTB*8)+7;
volatile 	 bit 	 RB6	 @ ((unsigned)&PORTB*8)+6;
volatile 	 bit 	 RB5	 @ ((unsigned)&PORTB*8)+5;
volatile 	 bit 	 RB4	 @ ((unsigned)&PORTB*8)+4;
volatile 	 bit 	 RB3	 @ ((unsigned)&PORTB*8)+3;
volatile 	 bit 	 RB2	 @ ((unsigned)&PORTB*8)+2;
volatile 	 bit 	 RB1	 @ ((unsigned)&PORTB*8)+1;
volatile 	 bit 	 RB0	 @ ((unsigned)&PORTB*8)+0;

/* Definitions for PORTC  register */
volatile 	 bit 	 RC2	 @ ((unsigned)&PORTC*8)+2;
volatile 	 bit 	 RC1	 @ ((unsigned)&PORTC*8)+1;
volatile 	 bit 	 RC0	 @ ((unsigned)&PORTC*8)+0;

/* Definitions for WPUB  register */
volatile 	 bit 	 WPUB7	 @ ((unsigned)&WPUB*8)+7;
volatile 	 bit 	 WPUB6	 @ ((unsigned)&WPUB*8)+6;
volatile 	 bit 	 WPUB5	 @ ((unsigned)&WPUB*8)+5;
volatile 	 bit 	 WPUB4	 @ ((unsigned)&WPUB*8)+4;
volatile 	 bit 	 WPUB3	 @ ((unsigned)&WPUB*8)+3;
volatile 	 bit 	 WPUB2	 @ ((unsigned)&WPUB*8)+2;
volatile 	 bit 	 WPUB1	 @ ((unsigned)&WPUB*8)+1;
volatile 	 bit 	 WPUB0	 @ ((unsigned)&WPUB*8)+0;

/* Definitions for INTCON  register */
volatile 	 bit 	 GIE	 @ ((unsigned)&INTCON*8)+7;
volatile 	 bit 	 PEIE	 @ ((unsigned)&INTCON*8)+6;
volatile 	 bit 	 T0IE	 @ ((unsigned)&INTCON*8)+5;
volatile 	 bit 	 INTE	 @ ((unsigned)&INTCON*8)+4;
volatile 	 bit 	 RBIE	 @ ((unsigned)&INTCON*8)+3;
volatile 	 bit 	 T0IF	 @ ((unsigned)&INTCON*8)+2;
volatile 	 bit 	 INTF	 @ ((unsigned)&INTCON*8)+1;
volatile 	 bit 	 RBIF	 @ ((unsigned)&INTCON*8)+0;

/* Definitions for PIR1  register */
volatile 	 bit 	 ADIF	 @ ((unsigned)&PIR1*8)+6;
volatile 	 bit 	 RCIF	 @ ((unsigned)&PIR1*8)+5;
volatile 	 bit 	 TXIF	 @ ((unsigned)&PIR1*8)+4;
volatile 	 bit 	 PWMIF	 @ ((unsigned)&PIR1*8)+2;
volatile 	 bit 	 TMR2IF	 @ ((unsigned)&PIR1*8)+1;
volatile 	 bit 	 TMR1IF	 @ ((unsigned)&PIR1*8)+0;

/* Definitions for PIR2  register */
volatile 	 bit 	 PPGIF	 @ ((unsigned)&PIR2*8)+5;
volatile 	 bit 	 EEIF	 @ ((unsigned)&PIR2*8)+4;
volatile 	 bit 	 BCLIF	 @ ((unsigned)&PIR2*8)+3;
volatile 	 bit 	 IICIF	 @ ((unsigned)&PIR2*8)+2;
volatile 	 bit 	 PPGWDTIF	 @ ((unsigned)&PIR2*8)+1;
volatile 	 bit 	 CCPIF	 @ ((unsigned)&PIR2*8)+0;

/* Definitions for T1CON  register */
volatile 	 bit 	 T1GINV	 @ ((unsigned)&T1CON*8)+7;
volatile 	 bit 	 TMR1GE	 @ ((unsigned)&T1CON*8)+6;
volatile 	 bit 	 T1CKPS1	 @ ((unsigned)&T1CON*8)+5;
volatile 	 bit 	 T1CKPS0	 @ ((unsigned)&T1CON*8)+4;
volatile 	 bit 	 T1SYNC	 @ ((unsigned)&T1CON*8)+2;
volatile 	 bit 	 TMR1CS	 @ ((unsigned)&T1CON*8)+1;
volatile 	 bit 	 TMR1ON	 @ ((unsigned)&T1CON*8)+0;

/* Definitions for T2CON  register */
volatile 	 bit 	 TOUTPS3	 @ ((unsigned)&T2CON*8)+6;
volatile 	 bit 	 TOUTPS2	 @ ((unsigned)&T2CON*8)+5;
volatile 	 bit 	 TOUTPS1	 @ ((unsigned)&T2CON*8)+4;
volatile 	 bit 	 TOUTPS0	 @ ((unsigned)&T2CON*8)+3;
volatile 	 bit 	 TMR2ON	 @ ((unsigned)&T2CON*8)+2;
volatile 	 bit 	 T2CKPS1	 @ ((unsigned)&T2CON*8)+1;
volatile 	 bit 	 T2CKPS0	 @ ((unsigned)&T2CON*8)+0;

/* Definitions for PIE1  register */
volatile 	 bit 	 ADIE	 @ ((unsigned)&PIE1*8)+6;
volatile 	 bit 	 RCIE	 @ ((unsigned)&PIE1*8)+5;
volatile 	 bit 	 TXIE	 @ ((unsigned)&PIE1*8)+4;
volatile 	 bit 	 PWMIE	 @ ((unsigned)&PIE1*8)+2;
volatile 	 bit 	 TMR2IE	 @ ((unsigned)&PIE1*8)+1;
volatile 	 bit 	 TMR1IE	 @ ((unsigned)&PIE1*8)+0;

/* Definitions for PIE2  register */
volatile 	 bit 	 PPGIE	 @ ((unsigned)&PIE2*8)+5;
volatile 	 bit 	 EEIE	 @ ((unsigned)&PIE2*8)+4;
volatile 	 bit 	 BCLIE	 @ ((unsigned)&PIE2*8)+3;
volatile 	 bit 	 IICIE	 @ ((unsigned)&PIE2*8)+2;
volatile 	 bit 	 PPGWDTIE	 @ ((unsigned)&PIE2*8)+1;
volatile 	 bit 	 CCPIE	 @ ((unsigned)&PIE2*8)+0;

/* Definitions for PIE3  register */
volatile 	 bit 	 CM7IE	 @ ((unsigned)&PIE3*8)+7;
volatile 	 bit 	 CM6IE	 @ ((unsigned)&PIE3*8)+6;
volatile 	 bit 	 CM5IE	 @ ((unsigned)&PIE3*8)+5;
volatile 	 bit 	 CM4IE	 @ ((unsigned)&PIE3*8)+4;
volatile 	 bit 	 CM3IE	 @ ((unsigned)&PIE3*8)+3;
volatile 	 bit 	 CM2IE	 @ ((unsigned)&PIE3*8)+2;
volatile 	 bit 	 CM1IE	 @ ((unsigned)&PIE3*8)+1;
volatile 	 bit 	 CM0IE	 @ ((unsigned)&PIE3*8)+0;

/* Definitions for PIR3  register */
volatile 	 bit 	 CM7IF	 @ ((unsigned)&PIR3*8)+7;
volatile 	 bit 	 CM6IF	 @ ((unsigned)&PIR3*8)+6;
volatile 	 bit 	 CM5IF	 @ ((unsigned)&PIR3*8)+5;
volatile 	 bit 	 CM4IF	 @ ((unsigned)&PIR3*8)+4;
volatile 	 bit 	 CM3IF	 @ ((unsigned)&PIR3*8)+3;
volatile 	 bit 	 CM2IF	 @ ((unsigned)&PIR3*8)+2;
volatile 	 bit 	 CM1IF	 @ ((unsigned)&PIR3*8)+1;
volatile 	 bit 	 CM0IF	 @ ((unsigned)&PIR3*8)+0;

/* Definitions for PWMCON0  register */
volatile 	 bit 	 CLKDIV2	 @ ((unsigned)&PWMCON0*8)+7;
volatile 	 bit 	 CLKDIV1	 @ ((unsigned)&PWMCON0*8)+6;
volatile 	 bit 	 CLKDIV0	 @ ((unsigned)&PWMCON0*8)+5;
volatile 	 bit 	 PWM2EN	 @ ((unsigned)&PWMCON0*8)+2;
volatile 	 bit 	 PWM1EN	 @ ((unsigned)&PWMCON0*8)+1;
volatile 	 bit 	 PWM0EN	 @ ((unsigned)&PWMCON0*8)+0;

/* Definitions for PWMCON1  register */
volatile 	 bit 	 PWM2IOS1	 @ ((unsigned)&PWMCON1*8)+5;
volatile 	 bit 	 PWM2IOS0	 @ ((unsigned)&PWMCON1*8)+4;
volatile 	 bit 	 PWM1IOS1	 @ ((unsigned)&PWMCON1*8)+3;
volatile 	 bit 	 PWM1IOS0	 @ ((unsigned)&PWMCON1*8)+2;
volatile 	 bit 	 PWM0IOS1	 @ ((unsigned)&PWMCON1*8)+1;
volatile 	 bit 	 PWM0IOS0	 @ ((unsigned)&PWMCON1*8)+0;

/* Definitions for PWMTL  register */
volatile 	 bit 	 PWMT7	 @ ((unsigned)&PWMTL*8)+7;
volatile 	 bit 	 PWMT6	 @ ((unsigned)&PWMTL*8)+6;
volatile 	 bit 	 PWMT5	 @ ((unsigned)&PWMTL*8)+5;
volatile 	 bit 	 PWMT4	 @ ((unsigned)&PWMTL*8)+4;
volatile 	 bit 	 PWMT3	 @ ((unsigned)&PWMTL*8)+3;
volatile 	 bit 	 PWMT2	 @ ((unsigned)&PWMTL*8)+2;
volatile 	 bit 	 PWMT1	 @ ((unsigned)&PWMTL*8)+1;
volatile 	 bit 	 PWMT0	 @ ((unsigned)&PWMTL*8)+0;

/* Definitions for PWMTH  register */
volatile 	 bit 	 PWM2T9	 @ ((unsigned)&PWMTH*8)+3;
volatile 	 bit 	 PWM2T8	 @ ((unsigned)&PWMTH*8)+2;
volatile 	 bit 	 PWMT9	 @ ((unsigned)&PWMTH*8)+1;
volatile 	 bit 	 PWMT8	 @ ((unsigned)&PWMTH*8)+0;

/* Definitions for PWMDH  register */
volatile 	 bit 	 PWMD29	 @ ((unsigned)&PWMDH*8)+5;
volatile 	 bit 	 PWMD28	 @ ((unsigned)&PWMDH*8)+4;
volatile 	 bit 	 PWMD19	 @ ((unsigned)&PWMDH*8)+3;
volatile 	 bit 	 PWMD18	 @ ((unsigned)&PWMDH*8)+2;
volatile 	 bit 	 PWMD09	 @ ((unsigned)&PWMDH*8)+1;
volatile 	 bit 	 PWMD08	 @ ((unsigned)&PWMDH*8)+0;

/* Definitions for OPTION_REG  register */
volatile 	 bit 	 INTEDG	 @ ((unsigned)&OPTION_REG*8)+6;
volatile 	 bit 	 T0CS	 @ ((unsigned)&OPTION_REG*8)+5;
volatile 	 bit 	 T0SE	 @ ((unsigned)&OPTION_REG*8)+4;
volatile 	 bit 	 PSA	 @ ((unsigned)&OPTION_REG*8)+3;
volatile 	 bit 	 PS2	 @ ((unsigned)&OPTION_REG*8)+2;
volatile 	 bit 	 PS1	 @ ((unsigned)&OPTION_REG*8)+1;
volatile 	 bit 	 PS0	 @ ((unsigned)&OPTION_REG*8)+0;

/* Definitions for TRISA  register */
volatile 	 bit 	 TRISA7	 @ ((unsigned)&TRISA*8)+7;
volatile 	 bit 	 TRISA6	 @ ((unsigned)&TRISA*8)+6;
volatile 	 bit 	 TRISA5	 @ ((unsigned)&TRISA*8)+5;
volatile 	 bit 	 TRISA4	 @ ((unsigned)&TRISA*8)+4;
volatile 	 bit 	 TRISA3	 @ ((unsigned)&TRISA*8)+3;
volatile 	 bit 	 TRISA2	 @ ((unsigned)&TRISA*8)+2;
volatile 	 bit 	 TRISA1	 @ ((unsigned)&TRISA*8)+1;
volatile 	 bit 	 TRISA0	 @ ((unsigned)&TRISA*8)+0;

/* Definitions for TRISB  register */
volatile 	 bit 	 TRISB7	 @ ((unsigned)&TRISB*8)+7;
volatile 	 bit 	 TRISB6	 @ ((unsigned)&TRISB*8)+6;
volatile 	 bit 	 TRISB5	 @ ((unsigned)&TRISB*8)+5;
volatile 	 bit 	 TRISB4	 @ ((unsigned)&TRISB*8)+4;
volatile 	 bit 	 TRISB3	 @ ((unsigned)&TRISB*8)+3;
volatile 	 bit 	 TRISB2	 @ ((unsigned)&TRISB*8)+2;
volatile 	 bit 	 TRISB1	 @ ((unsigned)&TRISB*8)+1;
volatile 	 bit 	 TRISB0	 @ ((unsigned)&TRISB*8)+0;

/* Definitions for TRISC  register */
volatile 	 bit 	 TRISC2	 @ ((unsigned)&TRISC*8)+2;
volatile 	 bit 	 TRISC1	 @ ((unsigned)&TRISC*8)+1;
volatile 	 bit 	 TRISC0	 @ ((unsigned)&TRISC*8)+0;

/* Definitions for IOCB  register */
volatile 	 bit 	 IOCB7	 @ ((unsigned)&IOCB*8)+7;
volatile 	 bit 	 IOCB6	 @ ((unsigned)&IOCB*8)+6;
volatile 	 bit 	 IOCB5	 @ ((unsigned)&IOCB*8)+5;
volatile 	 bit 	 IOCB4	 @ ((unsigned)&IOCB*8)+4;
volatile 	 bit 	 IOCB3	 @ ((unsigned)&IOCB*8)+3;
volatile 	 bit 	 IOCB2	 @ ((unsigned)&IOCB*8)+2;
volatile 	 bit 	 IOCB1	 @ ((unsigned)&IOCB*8)+1;
volatile 	 bit 	 IOCB0	 @ ((unsigned)&IOCB*8)+0;

/* Definitions for ADCON2  register */
volatile 	 bit 	 ADAUTO_PPG	 @ ((unsigned)&ADCON2*8)+7;
volatile 	 bit 	 ADAUTO_SUM	 @ ((unsigned)&ADCON2*8)+6;
volatile 	 bit 	 PPG_SET1	 @ ((unsigned)&ADCON2*8)+5;
volatile 	 bit 	 PPG_SET0	 @ ((unsigned)&ADCON2*8)+4;
volatile 	 bit 	 ADAUTODLY3	 @ ((unsigned)&ADCON2*8)+3;
volatile 	 bit 	 ADAUTODLY2	 @ ((unsigned)&ADCON2*8)+2;
volatile 	 bit 	 ADAUTODLY1	 @ ((unsigned)&ADCON2*8)+1;
volatile 	 bit 	 ADAUTODLY0	 @ ((unsigned)&ADCON2*8)+0;

/* Definitions for OSCCON  register */
volatile 	 bit 	 IRCF2	 @ ((unsigned)&OSCCON*8)+6;
volatile 	 bit 	 IRCF1	 @ ((unsigned)&OSCCON*8)+5;
volatile 	 bit 	 IRCF0	 @ ((unsigned)&OSCCON*8)+4;

/* Definitions for WDTCON  register */
volatile 	 bit 	 SWDTEN	 @ ((unsigned)&WDTCON*8)+0;

/* Definitions for SPBRG  register */
volatile 	 bit 	 BRG7	 @ ((unsigned)&SPBRG*8)+7;
volatile 	 bit 	 BRG6	 @ ((unsigned)&SPBRG*8)+6;
volatile 	 bit 	 BRG5	 @ ((unsigned)&SPBRG*8)+5;
volatile 	 bit 	 BRG4	 @ ((unsigned)&SPBRG*8)+4;
volatile 	 bit 	 BRG3	 @ ((unsigned)&SPBRG*8)+3;
volatile 	 bit 	 BRG2	 @ ((unsigned)&SPBRG*8)+2;
volatile 	 bit 	 BRG1	 @ ((unsigned)&SPBRG*8)+1;
volatile 	 bit 	 BRG0	 @ ((unsigned)&SPBRG*8)+0;

/* Definitions for IICSTAT  register */
volatile 	 bit 	 IDLE	 @ ((unsigned)&IICSTAT*8)+6;
volatile 	 bit 	 DA	 @ ((unsigned)&IICSTAT*8)+5;
volatile 	 bit 	 P	 @ ((unsigned)&IICSTAT*8)+4;
volatile 	 bit 	 S	 @ ((unsigned)&IICSTAT*8)+3;
volatile 	 bit 	 RW	 @ ((unsigned)&IICSTAT*8)+2;
volatile 	 bit 	 BF	 @ ((unsigned)&IICSTAT*8)+0;

/* Definitions for IICCON  register */
volatile 	 bit 	 IICWCOL	 @ ((unsigned)&IICCON*8)+7;
volatile 	 bit 	 SSPOV	 @ ((unsigned)&IICCON*8)+6;
volatile 	 bit 	 IICEN	 @ ((unsigned)&IICCON*8)+5;
volatile 	 bit 	 IICCKP	 @ ((unsigned)&IICCON*8)+4;
volatile 	 bit 	 IICTOS1	 @ ((unsigned)&IICCON*8)+3;
volatile 	 bit 	 IICTOS0	 @ ((unsigned)&IICCON*8)+2;
volatile 	 bit 	 IICM1	 @ ((unsigned)&IICCON*8)+1;
volatile 	 bit 	 IICM0	 @ ((unsigned)&IICCON*8)+0;

/* Definitions for IICCON2  register */
volatile 	 bit 	 GCEN	 @ ((unsigned)&IICCON2*8)+7;
volatile 	 bit 	 ACKSTAT	 @ ((unsigned)&IICCON2*8)+6;
volatile 	 bit 	 ACKDT	 @ ((unsigned)&IICCON2*8)+5;
volatile 	 bit 	 ACKEN	 @ ((unsigned)&IICCON2*8)+4;
volatile 	 bit 	 RCEN	 @ ((unsigned)&IICCON2*8)+3;
volatile 	 bit 	 PEN	 @ ((unsigned)&IICCON2*8)+2;
volatile 	 bit 	 RSEN	 @ ((unsigned)&IICCON2*8)+1;
volatile 	 bit 	 SEN	 @ ((unsigned)&IICCON2*8)+0;

/* Definitions for TXSTA  register */
volatile 	 bit 	 CSRC	 @ ((unsigned)&TXSTA*8)+7;
volatile 	 bit 	 TX9EN	 @ ((unsigned)&TXSTA*8)+6;
volatile 	 bit 	 TXEN	 @ ((unsigned)&TXSTA*8)+5;
volatile 	 bit 	 SYNC	 @ ((unsigned)&TXSTA*8)+4;
volatile 	 bit 	 SCKP	 @ ((unsigned)&TXSTA*8)+3;
volatile 	 bit 	 STOPBIT	 @ ((unsigned)&TXSTA*8)+2;
volatile 	 bit 	 TRMT	 @ ((unsigned)&TXSTA*8)+1;
volatile 	 bit 	 TX9D	 @ ((unsigned)&TXSTA*8)+0;

/* Definitions for RCSTA  register */
volatile 	 bit 	 SPEN	 @ ((unsigned)&RCSTA*8)+7;
volatile 	 bit 	 RX9EN	 @ ((unsigned)&RCSTA*8)+6;
volatile 	 bit 	 SREN	 @ ((unsigned)&RCSTA*8)+5;
volatile 	 bit 	 CREN	 @ ((unsigned)&RCSTA*8)+4;
volatile 	 bit 	 RCIDL	 @ ((unsigned)&RCSTA*8)+3;
volatile 	 bit 	 FERR	 @ ((unsigned)&RCSTA*8)+2;
volatile 	 bit 	 OERR	 @ ((unsigned)&RCSTA*8)+1;
volatile 	 bit 	 RX9D	 @ ((unsigned)&RCSTA*8)+0;

/* Definitions for ADCON0  register */
volatile 	 bit 	 CHS4	 @ ((unsigned)&ADCON0*8)+6;
volatile 	 bit 	 CHS3	 @ ((unsigned)&ADCON0*8)+5;
volatile 	 bit 	 CHS2	 @ ((unsigned)&ADCON0*8)+4;
volatile 	 bit 	 CHS1	 @ ((unsigned)&ADCON0*8)+3;
volatile 	 bit 	 CHS0	 @ ((unsigned)&ADCON0*8)+2;
volatile 	 bit 	 GODONE	 @ ((unsigned)&ADCON0*8)+1;
volatile 	 bit 	 ADON	 @ ((unsigned)&ADCON0*8)+0;

/* Definitions for ADCON1  register */
volatile 	 bit 	 ADFM	 @ ((unsigned)&ADCON1*8)+7;
volatile 	 bit 	 ADCS2	 @ ((unsigned)&ADCON1*8)+6;
volatile 	 bit 	 ADCS1	 @ ((unsigned)&ADCON1*8)+5;
volatile 	 bit 	 ADCS0	 @ ((unsigned)&ADCON1*8)+4;
volatile 	 bit 	 AUTO_GO	 @ ((unsigned)&ADCON1*8)+3;
volatile 	 bit 	 ADCSUM_OV	 @ ((unsigned)&ADCON1*8)+2;
volatile 	 bit 	 ADCSUM_CLR	 @ ((unsigned)&ADCON1*8)+1;
volatile 	 bit 	 TSM	 @ ((unsigned)&ADCON1*8)+0;

/* Definitions for CM0CNT  register */
volatile 	 bit 	 CM0OVF	 @ ((unsigned)&CM0CNT*8)+7;
volatile 	 bit 	 CM0COUNT6	 @ ((unsigned)&CM0CNT*8)+6;
volatile 	 bit 	 CM0COUNT5	 @ ((unsigned)&CM0CNT*8)+5;
volatile 	 bit 	 CM0COUNT4	 @ ((unsigned)&CM0CNT*8)+4;
volatile 	 bit 	 CM0COUNT3	 @ ((unsigned)&CM0CNT*8)+3;
volatile 	 bit 	 CM0COUNT2	 @ ((unsigned)&CM0CNT*8)+2;
volatile 	 bit 	 CM0COUNT1	 @ ((unsigned)&CM0CNT*8)+1;
volatile 	 bit 	 CM0COUNT0	 @ ((unsigned)&CM0CNT*8)+0;

/* Definitions for CMOUTEN  register */
volatile 	 bit 	 DACVREF	 @ ((unsigned)&CMOUTEN*8)+7;
volatile 	 bit 	 DACS2	 @ ((unsigned)&CMOUTEN*8)+6;
volatile 	 bit 	 DACS1	 @ ((unsigned)&CMOUTEN*8)+5;
volatile 	 bit 	 DACS0	 @ ((unsigned)&CMOUTEN*8)+4;
volatile 	 bit 	 OUTEN	 @ ((unsigned)&CMOUTEN*8)+3;
volatile 	 bit 	 CMOUTEN2	 @ ((unsigned)&CMOUTEN*8)+2;
volatile 	 bit 	 CMOUTEN1	 @ ((unsigned)&CMOUTEN*8)+1;
volatile 	 bit 	 CMOUTEN0	 @ ((unsigned)&CMOUTEN*8)+0;

/* Definitions for WPUA  register */
volatile 	 bit 	 WPUA7	 @ ((unsigned)&WPUA*8)+7;
volatile 	 bit 	 WPUA6	 @ ((unsigned)&WPUA*8)+6;
volatile 	 bit 	 WPUA5	 @ ((unsigned)&WPUA*8)+5;
volatile 	 bit 	 WPUA4	 @ ((unsigned)&WPUA*8)+4;
volatile 	 bit 	 WPUA3	 @ ((unsigned)&WPUA*8)+3;
volatile 	 bit 	 WPUA2	 @ ((unsigned)&WPUA*8)+2;
volatile 	 bit 	 WPUA1	 @ ((unsigned)&WPUA*8)+1;
volatile 	 bit 	 WPUA0	 @ ((unsigned)&WPUA*8)+0;

/* Definitions for WPUC  register */
volatile 	 bit 	 WPUC2	 @ ((unsigned)&WPUC*8)+2;
volatile 	 bit 	 WPUC1	 @ ((unsigned)&WPUC*8)+1;
volatile 	 bit 	 WPUC0	 @ ((unsigned)&WPUC*8)+0;

/* Definitions for OPAADJ  register */
volatile 	 bit 	 OPAM1	 @ ((unsigned)&OPAADJ*8)+7;
volatile 	 bit 	 OPAM0	 @ ((unsigned)&OPAADJ*8)+6;
volatile 	 bit 	 OPADOUT	 @ ((unsigned)&OPAADJ*8)+5;
volatile 	 bit 	 OPAADJ4	 @ ((unsigned)&OPAADJ*8)+4;
volatile 	 bit 	 OPAADJ3	 @ ((unsigned)&OPAADJ*8)+3;
volatile 	 bit 	 OPAADJ2	 @ ((unsigned)&OPAADJ*8)+2;
volatile 	 bit 	 OPAADJ1	 @ ((unsigned)&OPAADJ*8)+1;
volatile 	 bit 	 OPAADJ0	 @ ((unsigned)&OPAADJ*8)+0;

/* Definitions for OPACON  register */
volatile 	 bit 	 OPAEN	 @ ((unsigned)&OPACON*8)+7;
volatile 	 bit 	 OPAS1	 @ ((unsigned)&OPACON*8)+3;
volatile 	 bit 	 OPAS0	 @ ((unsigned)&OPACON*8)+2;
volatile 	 bit 	 ANRS1	 @ ((unsigned)&OPACON*8)+1;
volatile 	 bit 	 ANRS0	 @ ((unsigned)&OPACON*8)+0;

/* Definitions for PGAADJ  register */
volatile 	 bit 	 PGAM1	 @ ((unsigned)&PGAADJ*8)+7;
volatile 	 bit 	 PGAM0	 @ ((unsigned)&PGAADJ*8)+6;
volatile 	 bit 	 PGADOUT	 @ ((unsigned)&PGAADJ*8)+5;
volatile 	 bit 	 PGAADJ4	 @ ((unsigned)&PGAADJ*8)+4;
volatile 	 bit 	 PGAADJ3	 @ ((unsigned)&PGAADJ*8)+3;
volatile 	 bit 	 PGAADJ2	 @ ((unsigned)&PGAADJ*8)+2;
volatile 	 bit 	 PGAADJ1	 @ ((unsigned)&PGAADJ*8)+1;
volatile 	 bit 	 PGAADJ0	 @ ((unsigned)&PGAADJ*8)+0;

/* Definitions for PGACON  register */
volatile 	 bit 	 PGAEN	 @ ((unsigned)&PGACON*8)+7;
volatile 	 bit 	 PGAGS1	 @ ((unsigned)&PGACON*8)+6;
volatile 	 bit 	 PGAGS0	 @ ((unsigned)&PGACON*8)+5;
volatile 	 bit 	 PGAF	 @ ((unsigned)&PGACON*8)+3;
volatile 	 bit 	 PGAVCOM	 @ ((unsigned)&PGACON*8)+2;
volatile 	 bit 	 PGATEN	 @ ((unsigned)&PGACON*8)+1;

/* Definitions for CMPOUT  register */
volatile 	 bit 	 CM7OUT	 @ ((unsigned)&CMPOUT*8)+7;
volatile 	 bit 	 CM6OUT	 @ ((unsigned)&CMPOUT*8)+6;
volatile 	 bit 	 CM5OUT	 @ ((unsigned)&CMPOUT*8)+5;
volatile 	 bit 	 CM4OUT	 @ ((unsigned)&CMPOUT*8)+4;
volatile 	 bit 	 CM3OUT	 @ ((unsigned)&CMPOUT*8)+3;
volatile 	 bit 	 CM2OUT	 @ ((unsigned)&CMPOUT*8)+2;
volatile 	 bit 	 CM1OUT	 @ ((unsigned)&CMPOUT*8)+1;
volatile 	 bit 	 CM0OUT	 @ ((unsigned)&CMPOUT*8)+0;

/* Definitions for CM0ADJ  register */
volatile 	 bit 	 CM0COFM	 @ ((unsigned)&CM0ADJ*8)+7;
volatile 	 bit 	 CM0CRS1	 @ ((unsigned)&CM0ADJ*8)+6;
volatile 	 bit 	 CM0CRS0	 @ ((unsigned)&CM0ADJ*8)+5;
volatile 	 bit 	 CM0ADJ4	 @ ((unsigned)&CM0ADJ*8)+4;
volatile 	 bit 	 CM0ADJ3	 @ ((unsigned)&CM0ADJ*8)+3;
volatile 	 bit 	 CM0ADJ2	 @ ((unsigned)&CM0ADJ*8)+2;
volatile 	 bit 	 CM0ADJ1	 @ ((unsigned)&CM0ADJ*8)+1;
volatile 	 bit 	 CM0ADJ0	 @ ((unsigned)&CM0ADJ*8)+0;

/* Definitions for CM0CON  register */
volatile 	 bit 	 CM0EN	 @ ((unsigned)&CM0CON*8)+7;
volatile 	 bit 	 CM0DBSEL1	 @ ((unsigned)&CM0CON*8)+6;
volatile 	 bit 	 CM0DBSEL0	 @ ((unsigned)&CM0CON*8)+5;
volatile 	 bit 	 CM0CEN	 @ ((unsigned)&CM0CON*8)+4;
volatile 	 bit 	 CM0INTES	 @ ((unsigned)&CM0CON*8)+3;
volatile 	 bit 	 CM0CLR	 @ ((unsigned)&CM0CON*8)+2;

/* Definitions for CM1CON  register */
volatile 	 bit 	 CM1EN	 @ ((unsigned)&CM1CON*8)+7;
volatile 	 bit 	 CM1DBSEL1	 @ ((unsigned)&CM1CON*8)+6;
volatile 	 bit 	 CM1DBSEL0	 @ ((unsigned)&CM1CON*8)+5;
volatile 	 bit 	 CM1CPPG	 @ ((unsigned)&CM1CON*8)+4;
volatile 	 bit 	 ATPEN	 @ ((unsigned)&CM1CON*8)+3;
volatile 	 bit 	 CM1CLR	 @ ((unsigned)&CM1CON*8)+2;
volatile 	 bit 	 CM1CNTOV	 @ ((unsigned)&CM1CON*8)+1;
volatile 	 bit 	 CM1CH	 @ ((unsigned)&CM1CON*8)+0;

/* Definitions for CM1CON1  register */
volatile 	 bit 	 CM1SUB3	 @ ((unsigned)&CM1CON1*8)+7;
volatile 	 bit 	 CM1SUB2	 @ ((unsigned)&CM1CON1*8)+6;
volatile 	 bit 	 CM1SUB1	 @ ((unsigned)&CM1CON1*8)+5;
volatile 	 bit 	 CM1SUB0	 @ ((unsigned)&CM1CON1*8)+4;
volatile 	 bit 	 CM1COF	 @ ((unsigned)&CM1CON1*8)+3;
volatile 	 bit 	 CM1COS2	 @ ((unsigned)&CM1CON1*8)+2;
volatile 	 bit 	 CM1COS1	 @ ((unsigned)&CM1CON1*8)+1;
volatile 	 bit 	 CM1COS0	 @ ((unsigned)&CM1CON1*8)+0;

/* Definitions for CM2CON  register */
volatile 	 bit 	 CM2EN	 @ ((unsigned)&CM2CON*8)+7;
volatile 	 bit 	 CM2DBSEL1	 @ ((unsigned)&CM2CON*8)+6;
volatile 	 bit 	 CM2DBSEL0	 @ ((unsigned)&CM2CON*8)+5;
volatile 	 bit 	 CM2PVSL4	 @ ((unsigned)&CM2CON*8)+4;
volatile 	 bit 	 CM2PVSL3	 @ ((unsigned)&CM2CON*8)+3;
volatile 	 bit 	 CM2PVSL2	 @ ((unsigned)&CM2CON*8)+2;
volatile 	 bit 	 CM2PVSL1	 @ ((unsigned)&CM2CON*8)+1;
volatile 	 bit 	 CM2PVSL0	 @ ((unsigned)&CM2CON*8)+0;

/* Definitions for CM3CON  register */
volatile 	 bit 	 CM3EN	 @ ((unsigned)&CM3CON*8)+7;
volatile 	 bit 	 CM3DBSEL1	 @ ((unsigned)&CM3CON*8)+6;
volatile 	 bit 	 CM3DBSEL0	 @ ((unsigned)&CM3CON*8)+5;
volatile 	 bit 	 CM3OPS	 @ ((unsigned)&CM3CON*8)+3;
volatile 	 bit 	 CM3CH1	 @ ((unsigned)&CM3CON*8)+1;
volatile 	 bit 	 CM3CH0	 @ ((unsigned)&CM3CON*8)+0;

/* Definitions for CM4CON  register */
volatile 	 bit 	 CM4EN	 @ ((unsigned)&CM4CON*8)+7;
volatile 	 bit 	 CM4DBSEL1	 @ ((unsigned)&CM4CON*8)+6;
volatile 	 bit 	 CM4DBSEL0	 @ ((unsigned)&CM4CON*8)+5;
volatile 	 bit 	 CM4PVSL4	 @ ((unsigned)&CM4CON*8)+4;
volatile 	 bit 	 CM4PVSL3	 @ ((unsigned)&CM4CON*8)+3;
volatile 	 bit 	 CM4PVSL2	 @ ((unsigned)&CM4CON*8)+2;
volatile 	 bit 	 CM4PVSL1	 @ ((unsigned)&CM4CON*8)+1;
volatile 	 bit 	 CM4PVSL0	 @ ((unsigned)&CM4CON*8)+0;

/* Definitions for CM4CON1  register */
volatile 	 bit 	 CM4CPPG1	 @ ((unsigned)&CM4CON1*8)+7;
volatile 	 bit 	 CM4CPPG0	 @ ((unsigned)&CM4CON1*8)+6;
volatile 	 bit 	 CM4CH	 @ ((unsigned)&CM4CON1*8)+5;
volatile 	 bit 	 CM4SUB4	 @ ((unsigned)&CM4CON1*8)+4;
volatile 	 bit 	 CM4SUB3	 @ ((unsigned)&CM4CON1*8)+3;
volatile 	 bit 	 CM4SUB2	 @ ((unsigned)&CM4CON1*8)+2;
volatile 	 bit 	 CM4SUB1	 @ ((unsigned)&CM4CON1*8)+1;
volatile 	 bit 	 CM4SUB0	 @ ((unsigned)&CM4CON1*8)+0;

/* Definitions for CM5CON  register */
volatile 	 bit 	 CM5EN	 @ ((unsigned)&CM5CON*8)+7;
volatile 	 bit 	 CM5DBSEL1	 @ ((unsigned)&CM5CON*8)+6;
volatile 	 bit 	 CM5DBSEL0	 @ ((unsigned)&CM5CON*8)+5;
volatile 	 bit 	 CM5CPPG	 @ ((unsigned)&CM5CON*8)+4;
volatile 	 bit 	 CM5OPS	 @ ((unsigned)&CM5CON*8)+3;
volatile 	 bit 	 CM5CH	 @ ((unsigned)&CM5CON*8)+0;

/* Definitions for CM6CON  register */
volatile 	 bit 	 CM6EN	 @ ((unsigned)&CM6CON*8)+7;
volatile 	 bit 	 CM6DBSEL1	 @ ((unsigned)&CM6CON*8)+6;
volatile 	 bit 	 CM6DBSEL0	 @ ((unsigned)&CM6CON*8)+5;
volatile 	 bit 	 CM6PVSL4	 @ ((unsigned)&CM6CON*8)+4;
volatile 	 bit 	 CM6PVSL3	 @ ((unsigned)&CM6CON*8)+3;
volatile 	 bit 	 CM6PVSL2	 @ ((unsigned)&CM6CON*8)+2;
volatile 	 bit 	 CM6PVSL1	 @ ((unsigned)&CM6CON*8)+1;
volatile 	 bit 	 CM6PVSL0	 @ ((unsigned)&CM6CON*8)+0;

/* Definitions for CM7CON  register */
volatile 	 bit 	 CM7EN	 @ ((unsigned)&CM7CON*8)+7;
volatile 	 bit 	 CM7DBSEL1	 @ ((unsigned)&CM7CON*8)+6;
volatile 	 bit 	 CM7DBSEL0	 @ ((unsigned)&CM7CON*8)+5;
volatile 	 bit 	 CM7PVSL4	 @ ((unsigned)&CM7CON*8)+4;
volatile 	 bit 	 CM7PVSL3	 @ ((unsigned)&CM7CON*8)+3;
volatile 	 bit 	 CM7PVSL2	 @ ((unsigned)&CM7CON*8)+2;
volatile 	 bit 	 CM7PVSL1	 @ ((unsigned)&CM7CON*8)+1;
volatile 	 bit 	 CM7PVSL0	 @ ((unsigned)&CM7CON*8)+0;

/* Definitions for CM67CON  register */
volatile 	 bit 	 TEST_EN1	 @ ((unsigned)&CM67CON*8)+7;
volatile 	 bit 	 TEST_EN0	 @ ((unsigned)&CM67CON*8)+6;
volatile 	 bit 	 CM7CH1	 @ ((unsigned)&CM67CON*8)+3;
volatile 	 bit 	 CM7CH0	 @ ((unsigned)&CM67CON*8)+2;
volatile 	 bit 	 CM7INTES	 @ ((unsigned)&CM67CON*8)+1;
volatile 	 bit 	 CM6INTES	 @ ((unsigned)&CM67CON*8)+0;

/* Definitions for EECON1  register */
volatile 	 bit 	 EEPGD	 @ ((unsigned)&EECON1*8)+7;
volatile 	 bit 	 WRERR	 @ ((unsigned)&EECON1*8)+3;
volatile 	 bit 	 WREN	 @ ((unsigned)&EECON1*8)+2;
volatile 	 bit 	 WR	 @ ((unsigned)&EECON1*8)+1;
volatile 	 bit 	 RD	 @ ((unsigned)&EECON1*8)+0;

/* Definitions for EEDAT  register */
volatile 	 bit 	 EEDAT7	 @ ((unsigned)&EEDAT*8)+7;
volatile 	 bit 	 EEDAT6	 @ ((unsigned)&EEDAT*8)+6;
volatile 	 bit 	 EEDAT5	 @ ((unsigned)&EEDAT*8)+5;
volatile 	 bit 	 EEDAT4	 @ ((unsigned)&EEDAT*8)+4;
volatile 	 bit 	 EEDAT3	 @ ((unsigned)&EEDAT*8)+3;
volatile 	 bit 	 EEDAT2	 @ ((unsigned)&EEDAT*8)+2;
volatile 	 bit 	 EEDAT1	 @ ((unsigned)&EEDAT*8)+1;
volatile 	 bit 	 EEDAT0	 @ ((unsigned)&EEDAT*8)+0;

/* Definitions for EEDATH  register */
volatile 	 bit 	 EEDATH7	 @ ((unsigned)&EEDATH*8)+7;
volatile 	 bit 	 EEDATH6	 @ ((unsigned)&EEDATH*8)+6;
volatile 	 bit 	 EEDATH5	 @ ((unsigned)&EEDATH*8)+5;
volatile 	 bit 	 EEDATH4	 @ ((unsigned)&EEDATH*8)+4;
volatile 	 bit 	 EEDATH3	 @ ((unsigned)&EEDATH*8)+3;
volatile 	 bit 	 EEDATH2	 @ ((unsigned)&EEDATH*8)+2;
volatile 	 bit 	 EEDATH1	 @ ((unsigned)&EEDATH*8)+1;
volatile 	 bit 	 EEDATH0	 @ ((unsigned)&EEDATH*8)+0;

/* Definitions for EEADR  register */
volatile 	 bit 	 EEADR7	 @ ((unsigned)&EEADR*8)+7;
volatile 	 bit 	 EEADR6	 @ ((unsigned)&EEADR*8)+6;
volatile 	 bit 	 EEADR5	 @ ((unsigned)&EEADR*8)+5;
volatile 	 bit 	 EEADR4	 @ ((unsigned)&EEADR*8)+4;
volatile 	 bit 	 EEADR3	 @ ((unsigned)&EEADR*8)+3;
volatile 	 bit 	 EEADR2	 @ ((unsigned)&EEADR*8)+2;
volatile 	 bit 	 EEADR1	 @ ((unsigned)&EEADR*8)+1;
volatile 	 bit 	 EEADR0	 @ ((unsigned)&EEADR*8)+0;

/* Definitions for EEADRH  register */
volatile 	 bit 	 EEADRH4	 @ ((unsigned)&EEADRH*8)+4;
volatile 	 bit 	 EEADRH3	 @ ((unsigned)&EEADRH*8)+3;
volatile 	 bit 	 EEADRH2	 @ ((unsigned)&EEADRH*8)+2;
volatile 	 bit 	 EEADRH1	 @ ((unsigned)&EEADRH*8)+1;
volatile 	 bit 	 EEADRH0	 @ ((unsigned)&EEADRH*8)+0;

/* Definitions for PPGCON0  register */
volatile 	 bit 	 PPG_CM7	 @ ((unsigned)&PPGCON0*8)+7;
volatile 	 bit 	 PPG_AUTOUP	 @ ((unsigned)&PPGCON0*8)+6;
volatile 	 bit 	 PPG_AUTODOWN	 @ ((unsigned)&PPGCON0*8)+5;
volatile 	 bit 	 PPG_OFF_TIME	 @ ((unsigned)&PPGCON0*8)+4;
volatile 	 bit 	 PPG_OT	 @ ((unsigned)&PPGCON0*8)+3;
volatile 	 bit 	 PPG_EMC	 @ ((unsigned)&PPGCON0*8)+2;
volatile 	 bit 	 PPGMD	 @ ((unsigned)&PPGCON0*8)+1;
volatile 	 bit 	 PPGON	 @ ((unsigned)&PPGCON0*8)+0;

/* Definitions for PPGCON1  register */
volatile 	 bit 	 PPG_OT_SET3	 @ ((unsigned)&PPGCON1*8)+7;
volatile 	 bit 	 PPG_OT_SET2	 @ ((unsigned)&PPGCON1*8)+6;
volatile 	 bit 	 PPG_OT_SET1	 @ ((unsigned)&PPGCON1*8)+5;
volatile 	 bit 	 PPG_OT_SET0	 @ ((unsigned)&PPGCON1*8)+4;
volatile 	 bit 	 PPG_AT_STEP3	 @ ((unsigned)&PPGCON1*8)+3;
volatile 	 bit 	 PPG_AT_STEP2	 @ ((unsigned)&PPGCON1*8)+2;
volatile 	 bit 	 PPG_AT_STEP1	 @ ((unsigned)&PPGCON1*8)+1;
volatile 	 bit 	 PPG_AT_STEP0	 @ ((unsigned)&PPGCON1*8)+0;

/* Definitions for PPGCON2  register */
volatile 	 bit 	 CMX_DLY2	 @ ((unsigned)&PPGCON2*8)+7;
volatile 	 bit 	 CMX_DLY1	 @ ((unsigned)&PPGCON2*8)+6;
volatile 	 bit 	 CMX_DLY0	 @ ((unsigned)&PPGCON2*8)+5;
volatile 	 bit 	 PPG_STAT	 @ ((unsigned)&PPGCON2*8)+4;
volatile 	 bit 	 MAX_CNTEN	 @ ((unsigned)&PPGCON2*8)+3;
volatile 	 bit 	 MAX_CNTS2	 @ ((unsigned)&PPGCON2*8)+2;
volatile 	 bit 	 MAX_CNTS1	 @ ((unsigned)&PPGCON2*8)+1;
volatile 	 bit 	 MAX_CNTS0	 @ ((unsigned)&PPGCON2*8)+0;

/* Definitions for PPGCON3  register */
volatile 	 bit 	 CM3_DLY3	 @ ((unsigned)&PPGCON3*8)+7;
volatile 	 bit 	 CM3_DLY2	 @ ((unsigned)&PPGCON3*8)+6;
volatile 	 bit 	 CM3_DLY1	 @ ((unsigned)&PPGCON3*8)+5;
volatile 	 bit 	 CM3_DLY0	 @ ((unsigned)&PPGCON3*8)+4;
volatile 	 bit 	 PPGDLY3	 @ ((unsigned)&PPGCON3*8)+3;
volatile 	 bit 	 PPGDLY2	 @ ((unsigned)&PPGCON3*8)+2;
volatile 	 bit 	 PPGDLY1	 @ ((unsigned)&PPGCON3*8)+1;
volatile 	 bit 	 PPGDLY0	 @ ((unsigned)&PPGCON3*8)+0;

/* Definitions for CCPCON  register */
volatile 	 bit 	 CCPEN	 @ ((unsigned)&CCPCON*8)+7;
volatile 	 bit 	 CCPMS1	 @ ((unsigned)&CCPCON*8)+6;
volatile 	 bit 	 CCPMS0	 @ ((unsigned)&CCPCON*8)+5;
volatile 	 bit 	 CCPIS	 @ ((unsigned)&CCPCON*8)+4;
volatile 	 bit 	 CCPES1	 @ ((unsigned)&CCPCON*8)+3;
volatile 	 bit 	 CCPES0	 @ ((unsigned)&CCPCON*8)+2;
volatile 	 bit 	 CCPM1	 @ ((unsigned)&CCPCON*8)+1;
volatile 	 bit 	 CCPM0	 @ ((unsigned)&CCPCON*8)+0;

/* Definitions for CMPVEN  register */
volatile 	 bit 	 CMP7VEN	 @ ((unsigned)&CMPVEN*8)+7;
volatile 	 bit 	 CMP6VEN	 @ ((unsigned)&CMPVEN*8)+6;
volatile 	 bit 	 CMP5VEN	 @ ((unsigned)&CMPVEN*8)+5;
volatile 	 bit 	 CMP4VEN	 @ ((unsigned)&CMPVEN*8)+4;
volatile 	 bit 	 CMP3VEN	 @ ((unsigned)&CMPVEN*8)+3;
volatile 	 bit 	 CMP2VEN	 @ ((unsigned)&CMPVEN*8)+2;
volatile 	 bit 	 CMP1VEN	 @ ((unsigned)&CMPVEN*8)+1;
volatile 	 bit 	 CMP0VEN	 @ ((unsigned)&CMPVEN*8)+0;

#endif
