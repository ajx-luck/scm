
#ifndef	_HTC_H_
#warning Header file cms89f5231.h included directly. Use #include <htc.h> instead.
#endif

 /* header file for the cms microcontroller
	89F5231
	89F5232
	89F5233
	89F526
 */

#ifndef	__CMS89F5231_H
#define	__CMS89F5231_H

// Special function register definitions

volatile       unsigned char	INDF		@ 0x000;
volatile       unsigned char	TMR0		@ 0x001;
volatile       unsigned char	PCL		    @ 0x002;
volatile       unsigned char	STATUS		@ 0x003;
volatile	   unsigned char	FSR		    @ 0x004;
volatile       unsigned char	PORTA		@ 0x005;
volatile       unsigned char	PORTB		@ 0x006;
//volatile       unsigned char	PORTC		@ 0x007;

volatile       unsigned char	PORTE		@ 0x009;
volatile       unsigned char	PCLATH		@ 0x00A;
volatile       unsigned char	INTCON		@ 0x00B;
volatile       unsigned char	PIR1		@ 0x00C;
volatile       unsigned char	PIR2		@ 0x00D;

volatile       unsigned int		TMR1		@ 0x00E;
volatile       unsigned char	TMR1L		@ 0x00E;
volatile       unsigned char	TMR1H		@ 0x00F;

volatile	   unsigned char	T1CON		@ 0x010;
volatile       unsigned char	TMR2		@ 0x011;
volatile	   unsigned char	T2CON		@ 0x012;
//volatile       unsigned char	SSPBUF		@ 0x013;

volatile       unsigned int		PPGTMR		@ 0x014;
volatile       unsigned char	PPGTMRL		@ 0x014;
volatile       unsigned char	PPGTMRH		@ 0x015;

volatile       unsigned char	PPGDLY		@ 0x016;
volatile       unsigned char	PPGCON		@ 0x017;
volatile       unsigned char	PWM0DR		@ 0x018;
volatile       unsigned char	PWM0PR		@ 0x019;
volatile       unsigned char	PWM0CR		@ 0x01A;

volatile       unsigned char	PWM1DR		@ 0x01B;
volatile       unsigned char	PWM1PR		@ 0x01C;
volatile       unsigned char	PWM1CR		@ 0x01D;
//volatile       unsigned char	ADRESH		@ 0x01E;
volatile       unsigned char	ADCON0		@ 0x01F;

volatile	   unsigned char	OPTION_REG	@ 0x081;
volatile       unsigned char	TRISA		@ 0x085;
volatile       unsigned char	TRISB		@ 0x086;
//volatile       unsigned char	TRISC		@ 0x087;
volatile       unsigned char	TRISE		@ 0x089;
volatile       unsigned char	PIE1		@ 0x08C;
volatile	   unsigned char	PIE2		@ 0x08D;
volatile       unsigned char	OSCCON		@ 0x08F;
volatile	   unsigned char	OSCTUNE		@ 0x090;
volatile	   unsigned char	PR2		    @ 0x092;
volatile       unsigned char	CM1CNT		@ 0x093;

volatile       unsigned char	WPUA		@ 0x094;
volatile	   unsigned char	WPUB		@ 0x095;
volatile	   unsigned char	WPUE		@ 0x096;
volatile	   unsigned char	CM1CON		@ 0x097;
volatile	   unsigned char	CM2CON		@ 0x098;
volatile	   unsigned char	CM2CON1		@ 0x099;
volatile	   unsigned char	CM3CON		@ 0x09A;

volatile       unsigned char	CM3CON1		@ 0x09B;
volatile       unsigned char	CM4CON		@ 0x09C;
volatile       unsigned char	CM5CON		@ 0x09D;

volatile       unsigned int		ADRES		@ 0x09E;
volatile       unsigned char	ADRESL		@ 0x09E;
volatile	   unsigned char	ADRESH		@ 0x09F;

volatile       unsigned char	WDTCON		@ 0x105;
volatile       unsigned char	OPAADJ		@ 0x107;
volatile       unsigned char	OPACON		@ 0x108;
volatile       unsigned char	OPACON1		@ 0x109;

volatile       unsigned char	EEDAT		@ 0x10C;
volatile       unsigned char	EEDATA		@ 0x10C;
volatile       unsigned char	EEADR		@ 0x10D;
volatile       unsigned char	EEADRL		@ 0x10D;
volatile       unsigned char	EEDATH		@ 0x10E;
//volatile       unsigned char	EEADRH		@ 0x10F;

volatile        unsigned char	TABLE_SPH	@ 0x110;
volatile        unsigned char	TABLE_SPL	@ 0x111;
volatile        unsigned char	TABLE_DATAH	@ 0x112;
volatile        unsigned char	C1ADJ		@ 0x113;
volatile        unsigned char	C2ADJ		@ 0x114;
volatile        unsigned char	C3ADJ		@ 0x115;
volatile        unsigned char	C4ADJ		@ 0x116;
volatile        unsigned char	C5ADJ		@ 0x117;

//volatile		unsigned char	SRCON		@ 0x185;
volatile	    unsigned char	PAANSEL		@ 0x187;
volatile	    unsigned char	PBANSEL		@ 0x188;
volatile	    unsigned char	PEANSEL		@ 0x189;

volatile		unsigned char	EECON1		@ 0x18C;
volatile		unsigned char	EECON2		@ 0x18D;

volatile        unsigned int	CCPR		@ 0x18E;
volatile        unsigned char	CCPRL		@ 0x18E;
volatile        unsigned char	CCPRH		@ 0x18F;

volatile        unsigned char	CCPCON		@ 0x190;
volatile        unsigned char	SSPADD		@ 0x191;
volatile        unsigned char	SSPMSK		@ 0x191;
volatile        unsigned char	SSPBUF		@ 0x192;
volatile        unsigned char	SSPSTAT		@ 0x193;
volatile        unsigned char	SSPCON		@ 0x194;
volatile        unsigned char	SSPCON2		@ 0x195;


/* Definitions for STATUS register */
volatile       bit	CARRY	@ ((unsigned)&STATUS*8)+0;
volatile       bit	DC		@ ((unsigned)&STATUS*8)+1;
volatile       bit	ZERO	@ ((unsigned)&STATUS*8)+2;
volatile       bit	PD		@ ((unsigned)&STATUS*8)+3;
volatile       bit	TO		@ ((unsigned)&STATUS*8)+4;
volatile	   bit	IRP		@ ((unsigned)&STATUS*8)+7;

/* Definitions for PORTA register */
volatile	   bit	RA0		@ ((unsigned)&PORTA*8)+0;
volatile       bit	RA1		@ ((unsigned)&PORTA*8)+1;
volatile       bit	RA2		@ ((unsigned)&PORTA*8)+2;
volatile       bit	RA3		@ ((unsigned)&PORTA*8)+3;
volatile       bit	RA4		@ ((unsigned)&PORTA*8)+4;
volatile       bit	RA5		@ ((unsigned)&PORTA*8)+5;
volatile       bit	RA6		@ ((unsigned)&PORTA*8)+6;
//volatile       bit	RA7		@ ((unsigned)&PORTA*8)+7;

/* Definitions for PORTB register */
volatile       bit	RB0		@ ((unsigned)&PORTB*8)+0;
volatile       bit	RB1		@ ((unsigned)&PORTB*8)+1;
volatile       bit	RB2		@ ((unsigned)&PORTB*8)+2;
volatile       bit	RB3		@ ((unsigned)&PORTB*8)+3;
volatile       bit	RB4		@ ((unsigned)&PORTB*8)+4;
volatile       bit	RB5		@ ((unsigned)&PORTB*8)+5;
volatile       bit	RB6		@ ((unsigned)&PORTB*8)+6;
volatile       bit	RB7		@ ((unsigned)&PORTB*8)+7;

/* Definitions for PORTE register */
volatile       bit	RE0		@ ((unsigned)&PORTE*8)+0;
volatile       bit	RE1		@ ((unsigned)&PORTE*8)+1;
//volatile       bit	RE2		@ ((unsigned)&PORTE*8)+2;
//volatile       bit	RE3		@ ((unsigned)&PORTE*8)+3;

/* Definitions for INTCON register */
volatile       bit	INTF	@ ((unsigned)&INTCON*8)+1;
volatile       bit	T0IF	@ ((unsigned)&INTCON*8)+2;
volatile	   bit	INTE	@ ((unsigned)&INTCON*8)+4;
volatile	   bit	T0IE	@ ((unsigned)&INTCON*8)+5;
volatile	   bit	PEIE	@ ((unsigned)&INTCON*8)+6;
volatile       bit	GIE		@ ((unsigned)&INTCON*8)+7;

/* Definitions for PIR1 register */
volatile       bit	TMR1IF	@ ((unsigned)&PIR1*8)+0;
volatile       bit	TMR2IF	@ ((unsigned)&PIR1*8)+1;
//volatile     bit	CCP1IF	@ ((unsigned)&PIR1*8)+2;
volatile       bit	CCPIF	@ ((unsigned)&PIR1*8)+3;
volatile       bit	BCLIF	@ ((unsigned)&PIR1*8)+4;
volatile       bit	SSPIF	@ ((unsigned)&PIR1*8)+5;
volatile       bit	ADIF	@ ((unsigned)&PIR1*8)+6;
volatile       bit	EEIF	@ ((unsigned)&PIR1*8)+7;

/* Definitions for PIR2 register */
volatile       bit	PPGWDTIF	@ ((unsigned)&PIR2*8)+0;
volatile       bit	C1IF	@ ((unsigned)&PIR2*8)+1;
volatile       bit	C2IF	@ ((unsigned)&PIR2*8)+2;
volatile       bit	C3IF	@ ((unsigned)&PIR2*8)+3;
volatile       bit	C4IF	@ ((unsigned)&PIR2*8)+4;
volatile       bit	C5IF	@ ((unsigned)&PIR2*8)+5;

/* Definitions for T1CON register */
volatile	   bit	TMR1ON	@ ((unsigned)&T1CON*8)+0;
volatile	   bit	TMR1CS	@ ((unsigned)&T1CON*8)+1;
//volatile	   bit	T1SYNC	@ ((unsigned)&T1CON*8)+2;
//volatile	   bit	T1OSCEN	@ ((unsigned)&T1CON*8)+3;
volatile	   bit	T1CKPS0	@ ((unsigned)&T1CON*8)+4;
volatile	   bit	T1CKPS1	@ ((unsigned)&T1CON*8)+5;
volatile	   bit	TMR1GE	@ ((unsigned)&T1CON*8)+6;
volatile	   bit	T1GINV	@ ((unsigned)&T1CON*8)+7;

/* Definitions for T2CON register */
volatile	   bit	T2CKPS0	@ ((unsigned)&T2CON*8)+0;
volatile	   bit	T2CKPS1	@ ((unsigned)&T2CON*8)+1;
volatile	   bit	TMR2ON	@ ((unsigned)&T2CON*8)+2;
volatile	   bit	TOUTPS0	@ ((unsigned)&T2CON*8)+3;
volatile	   bit	TOUTPS1	@ ((unsigned)&T2CON*8)+4;
volatile	   bit	TOUTPS2	@ ((unsigned)&T2CON*8)+5;
volatile	   bit	TOUTPS3	@ ((unsigned)&T2CON*8)+6;


/* Definitions for ADCON0 register */
volatile	   bit	ADON	@ ((unsigned)&ADCON0*8)+0;
volatile       bit	GODONE	@ ((unsigned)&ADCON0*8)+1;
volatile	   bit	CHS0	@ ((unsigned)&ADCON0*8)+2;
volatile	   bit	CHS1	@ ((unsigned)&ADCON0*8)+3;
volatile	   bit	CHS2	@ ((unsigned)&ADCON0*8)+4;
volatile	   bit	CHS3	@ ((unsigned)&ADCON0*8)+5;
volatile	   bit	ADCS0	@ ((unsigned)&ADCON0*8)+6;
volatile	   bit	ADCS1	@ ((unsigned)&ADCON0*8)+7;

/* Definitions for OPTION_REG register */
volatile	   bit	PS0		@ ((unsigned)&OPTION_REG*8)+0;
volatile	   bit	PS1		@ ((unsigned)&OPTION_REG*8)+1;
volatile	   bit	PS2		@ ((unsigned)&OPTION_REG*8)+2;
volatile	   bit	PSA		@ ((unsigned)&OPTION_REG*8)+3;
volatile	   bit	T0SE	@ ((unsigned)&OPTION_REG*8)+4;
volatile	   bit	T0CS	@ ((unsigned)&OPTION_REG*8)+5;
volatile	   bit	INTEDG	@ ((unsigned)&OPTION_REG*8)+6;

/* Definitions for TRISA register */
volatile	   bit	TRISA0	@ ((unsigned)&TRISA*8)+0;
volatile	   bit	TRISA1	@ ((unsigned)&TRISA*8)+1;
volatile	   bit	TRISA2	@ ((unsigned)&TRISA*8)+2;
volatile	   bit	TRISA3	@ ((unsigned)&TRISA*8)+3;
volatile	   bit	TRISA4	@ ((unsigned)&TRISA*8)+4;
volatile	   bit	TRISA5	@ ((unsigned)&TRISA*8)+5;
volatile	   bit	TRISA6	@ ((unsigned)&TRISA*8)+6;
//volatile	   bit	TRISA7	@ ((unsigned)&TRISA*8)+7;

/* Definitions for TRISB register */
volatile       bit	TRISB0	@ ((unsigned)&TRISB*8)+0;
volatile       bit	TRISB1	@ ((unsigned)&TRISB*8)+1;
volatile       bit	TRISB2	@ ((unsigned)&TRISB*8)+2;
volatile       bit	TRISB3	@ ((unsigned)&TRISB*8)+3;
volatile       bit	TRISB4	@ ((unsigned)&TRISB*8)+4;
volatile       bit	TRISB5	@ ((unsigned)&TRISB*8)+5;
volatile       bit	TRISB6	@ ((unsigned)&TRISB*8)+6;
volatile       bit	TRISB7	@ ((unsigned)&TRISB*8)+7;


/* Definitions for TRISE register */
volatile       bit	TRISE0	@ ((unsigned)&TRISE*8)+0;
volatile       bit	TRISE1	@ ((unsigned)&TRISE*8)+1;
//volatile       bit	TRISE2	@ ((unsigned)&TRISE*8)+2;
//volatile       bit	TRISE3	@ ((unsigned)&TRISE*8)+3;

/* Definitions for PIE1 register */
volatile	   bit	TMR1IE	@ ((unsigned)&PIE1*8)+0;
volatile	   bit	TMR2IE	@ ((unsigned)&PIE1*8)+1;
//volatile	   bit	CCP1IE	@ ((unsigned)&PIE1*8)+2;
volatile	   bit	CCPIE	@ ((unsigned)&PIE1*8)+3;
volatile	   bit	BCLIE	@ ((unsigned)&PIE1*8)+4;
volatile	   bit	SSPIE	@ ((unsigned)&PIE1*8)+5;
volatile	   bit	ADIE	@ ((unsigned)&PIE1*8)+6;
volatile	   bit	EEIE	@ ((unsigned)&PIE1*8)+7;

/* Definitions for PIE2 register */
volatile	   bit	PPGWDTIE	@ ((unsigned)&PIE2*8)+0;
volatile	   bit	C1IE	@ ((unsigned)&PIE2*8)+1;
volatile	   bit	C2IE	@ ((unsigned)&PIE2*8)+2;
volatile	   bit	C3IE	@ ((unsigned)&PIE2*8)+3;
volatile	   bit	C4IE	@ ((unsigned)&PIE2*8)+4;
volatile	   bit	C5IE	@ ((unsigned)&PIE2*8)+5;


/* Definitions for OSCCON register */
//olatile	   bit	SCS		@ ((unsigned)&OSCCON*8)+0;
volatile	   bit	IRCF0	@ ((unsigned)&OSCCON*8)+4;
volatile	   bit	IRCF1	@ ((unsigned)&OSCCON*8)+5;
volatile	   bit	IRCF2	@ ((unsigned)&OSCCON*8)+6;

/* Definitions for OSCTUNE register */
volatile	   bit	TUN0	@ ((unsigned)&OSCTUNE*8)+0;
volatile	   bit	TUN1	@ ((unsigned)&OSCTUNE*8)+1;
volatile	   bit	TUN2	@ ((unsigned)&OSCTUNE*8)+2;
volatile	   bit	TUN3	@ ((unsigned)&OSCTUNE*8)+3;
volatile	   bit	TUN4	@ ((unsigned)&OSCTUNE*8)+4;

/* Definitions for WPUA register */
volatile	   bit	WPUA0	@ ((unsigned)&WPUA*8)+0;
volatile	   bit	WPUA1	@ ((unsigned)&WPUA*8)+1;
volatile	   bit	WPUA2	@ ((unsigned)&WPUA*8)+2;
volatile	   bit	WPUA3	@ ((unsigned)&WPUA*8)+3;
volatile	   bit	WPUA4	@ ((unsigned)&WPUA*8)+4;
volatile	   bit	WPUA5	@ ((unsigned)&WPUA*8)+5;
volatile	   bit	WPUA6	@ ((unsigned)&WPUA*8)+6;

/* Definitions for WPUB register */
volatile	   bit	WPUB0	@ ((unsigned)&WPUB*8)+0;
volatile	   bit	WPUB1	@ ((unsigned)&WPUB*8)+1;
volatile	   bit	WPUB2	@ ((unsigned)&WPUB*8)+2;
volatile	   bit	WPUB3	@ ((unsigned)&WPUB*8)+3;
volatile	   bit	WPUB4	@ ((unsigned)&WPUB*8)+4;
volatile	   bit	WPUB5	@ ((unsigned)&WPUB*8)+5;
volatile	   bit	WPUB6	@ ((unsigned)&WPUB*8)+6;
volatile	   bit	WPUB7	@ ((unsigned)&WPUB*8)+7;

/* Definitions for WPUE register */
volatile	   bit	WPUE0	@ ((unsigned)&WPUE*8)+0;
volatile	   bit	WPUE1	@ ((unsigned)&WPUE*8)+1;

/* Definitions for ADCON1 register */
//volatile	   bit	ADFM	@ ((unsigned)&ADCON1*8)+7;

/* Definitions for WDTCON register */
volatile	   bit	SWDTEN	@ ((unsigned)&WDTCON*8)+0;
/*volatile	   bit	WDTPS0	@ ((unsigned)&WDTCON*8)+1;
volatile	   bit	WDTPS1	@ ((unsigned)&WDTCON*8)+2;
volatile	   bit	WDTPS2	@ ((unsigned)&WDTCON*8)+3;
volatile	   bit	WDTPS3	@ ((unsigned)&WDTCON*8)+4;*/

/* Definitions for SRCON register */
//volatile	   bit	FVREN	@ ((unsigned)&SRCON*8)+0;

/* Definitions for EECON1 register */
volatile       bit	RD		@ ((unsigned)&EECON1*8)+0;
volatile       bit	WR		@ ((unsigned)&EECON1*8)+1;
volatile       bit	WREN	@ ((unsigned)&EECON1*8)+2;
volatile       bit	WRERR	@ ((unsigned)&EECON1*8)+3;
volatile       bit	EEPGD	@ ((unsigned)&EECON1*8)+7;

/* Definitions for CCPCON register */
volatile	   bit	CCPM0	@ ((unsigned)&CCPCON*8)+0;
volatile	   bit	CCPM1	@ ((unsigned)&CCPCON*8)+1;
volatile	   bit	CCPM2	@ ((unsigned)&CCPCON*8)+2;
volatile	   bit	CCPES	@ ((unsigned)&CCPCON*8)+3;
volatile	   bit	CCPIS	@ ((unsigned)&CCPCON*8)+4;
volatile       bit	CCPEN	@ ((unsigned)&CCPCON*8)+7;


/* Definitions for SSPCON register */
volatile	   bit	SSPM0	@ ((unsigned)&SSPCON*8)+0;
volatile	   bit	SSPM1	@ ((unsigned)&SSPCON*8)+1;
volatile	   bit	SSPM2	@ ((unsigned)&SSPCON*8)+2;
volatile	   bit	SSPM3	@ ((unsigned)&SSPCON*8)+3;
volatile	   bit	CKP		@ ((unsigned)&SSPCON*8)+4;
volatile	   bit	SSPEN	@ ((unsigned)&SSPCON*8)+5;
volatile       bit	SSPOV	@ ((unsigned)&SSPCON*8)+6;
volatile       bit	WCOL	@ ((unsigned)&SSPCON*8)+7;

/* Definitions for SSPCON2 register */
volatile	   bit	SEN		@ ((unsigned)&SSPCON2*8)+0;
volatile       bit	RSEN	@ ((unsigned)&SSPCON2*8)+1;
volatile       bit	PEN		@ ((unsigned)&SSPCON2*8)+2;
volatile       bit	RCEN	@ ((unsigned)&SSPCON2*8)+3;
volatile       bit	ACKEN	@ ((unsigned)&SSPCON2*8)+4;
volatile       bit	ACKDT	@ ((unsigned)&SSPCON2*8)+5;
volatile       bit	ACKSTAT	@ ((unsigned)&SSPCON2*8)+6;
volatile	   bit	GCEN	@ ((unsigned)&SSPCON2*8)+7;

/* Definitions for SSPSTAT register */
volatile       bit	BF		@ ((unsigned)&SSPSTAT*8)+0;
volatile       bit	UA		@ ((unsigned)&SSPSTAT*8)+1;
volatile       bit	RW		@ ((unsigned)&SSPSTAT*8)+2;
volatile       bit	START	@ ((unsigned)&SSPSTAT*8)+3;
volatile       bit	STOP	@ ((unsigned)&SSPSTAT*8)+4;
volatile       bit	DA		@ ((unsigned)&SSPSTAT*8)+5;
volatile	   bit	CKE		@ ((unsigned)&SSPSTAT*8)+6;
volatile	   bit	SMP		@ ((unsigned)&SSPSTAT*8)+7;

/* Definitions for PPGCON register */
volatile       bit	PPG_ON	@ ((unsigned)&PPGCON*8)+0;
volatile       bit	PPGMD	@ ((unsigned)&PPGCON*8)+1;
volatile       bit	DETC4EN	@ ((unsigned)&PPGCON*8)+2;
volatile       bit	DETC5EN	@ ((unsigned)&PPGCON*8)+3;
volatile       bit	RELOAD_EN	@ ((unsigned)&PPGCON*8)+4;
volatile	   bit	DETC4F	@ ((unsigned)&PPGCON*8)+6;
volatile	   bit	DETC5F	@ ((unsigned)&PPGCON*8)+7;

#endif
