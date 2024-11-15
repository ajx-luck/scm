
#ifndef	_HTC_H_
#warning Header file cms8h8901l.h included directly. Use #include <cms.h> instead.
#endif

 /* header file for the cms microcontroller
	CMS8H8901L
 */

#ifndef	__CMS8H8901L_H
#define	__CMS8H8901L_H

// Special function register definitions

volatile       unsigned char	INDF		@ 0x000;
volatile       unsigned char	TMR0		@ 0x001;
volatile       unsigned char	PCL		    @ 0x002;
volatile       unsigned char	STATUS		@ 0x003;
volatile	   unsigned char	FSR		    @ 0x004;
volatile       unsigned char	PORTA		@ 0x005;
volatile       unsigned char	PORTB		@ 0x006;
volatile       unsigned char	PORTC		@ 0x007;
volatile       unsigned char	PORTD		@ 0x008;
volatile       unsigned char	PORTE		@ 0x009;
volatile       unsigned char	PCLATH		@ 0x00A;
volatile       unsigned char	INTCON		@ 0x00B;
volatile       unsigned char	PIR1		@ 0x00C;
volatile       unsigned char	PIR2		@ 0x00D;

volatile       unsigned char	TMR1L		@ 0x00E;
volatile       unsigned char	TMR1H		@ 0x00F;

volatile	   unsigned char	T1CON		@ 0x010;
volatile       unsigned char	TMR2		@ 0x011;
volatile	   unsigned char	T2CON		@ 0x012;
volatile       unsigned char	SSPBUF		@ 0x013;
volatile       unsigned char	SSPCON		@ 0x014;

volatile       unsigned char	CCPR1L		@ 0x015;
volatile       unsigned char	CCPR1H		@ 0x016;

volatile       unsigned char	CCP1CON		@ 0x017;
volatile       unsigned char	RCSTA0		@ 0x018;
volatile       unsigned char	TXREG0		@ 0x019;
volatile       unsigned char	RCREG0		@ 0x01A;

volatile       unsigned char	CCPR2L		@ 0x01B;
volatile       unsigned char	CCPR2H		@ 0x01C;

volatile       unsigned char	CCP2CON		@ 0x01D;
volatile       unsigned char	ADRESH		@ 0x01E;
volatile       unsigned char	ADCON0		@ 0x01F;






volatile	   unsigned char	OPTION_REG	@ 0x081;
volatile       unsigned char	TRISA		@ 0x085;
volatile       unsigned char	TRISB		@ 0x086;
volatile       unsigned char	TRISC		@ 0x087;
volatile       unsigned char	TRISD		@ 0x088;
volatile       unsigned char	TRISE		@ 0x089;
volatile       unsigned char	PIE1		@ 0x08C;
volatile	   unsigned char	PIE2		@ 0x08D;
volatile       unsigned char	SEGEN3		@ 0x08E;
volatile       unsigned char	OSCCON		@ 0x08F;
volatile	   unsigned char	OSCTUNE		@ 0x090;
volatile       unsigned char	SSPCON2		@ 0x091;
volatile	   unsigned char	PR2		    @ 0x092;
volatile	   unsigned char	SSPADD		@ 0x093;
volatile	   unsigned char	SSPMSK		@ 0x093;
volatile       unsigned char	SSPSTAT		@ 0x094;
volatile	   unsigned char	WPUB		@ 0x095;
volatile	   unsigned char	IOCB		@ 0x096;
volatile       unsigned char	TXSTA0		@ 0x098;
volatile	   unsigned char	SPBRG0		@ 0x099;
volatile	   unsigned char	SPBRGH0		@ 0x09A;
volatile       unsigned char	PWMCON		@ 0x09B;
volatile       unsigned char	PWM1CYC		@ 0x09C;
volatile       unsigned char	PWM2CYC		@ 0x09D;
volatile       unsigned char	ADRESL		@ 0x09E;
volatile	   unsigned char	ADCON1		@ 0x09F;






volatile       unsigned char	WDTCON		@ 0x105;
volatile       unsigned char	RCSTA1		@ 0x107;
volatile       unsigned char	TXSTA1		@ 0x108;
volatile       unsigned char	BAUDCTL1	@ 0x109;
volatile       unsigned char	EEDAT		@ 0x10C;
volatile       unsigned char	EEADR		@ 0x10D;

volatile       unsigned char	EEDATH		@ 0x10E;
volatile       unsigned char	EEADRH		@ 0x10F;

volatile       unsigned char	TABLE_SPH	@ 0x110;
volatile       unsigned char	TABLE_SPL	@ 0x111;
volatile       unsigned char	TABLE_DATAH	@ 0x112;
volatile       unsigned char	KEYCON0		@ 0x113;
volatile       unsigned char	KEYCON1		@ 0x114;

volatile       unsigned char	KEYDATAL	@ 0x115;
volatile       unsigned char	KEYDATAH	@ 0x116;

volatile       unsigned char	KEYCON2		@ 0x117;
volatile       unsigned char	KEYCON3		@ 0x118;
volatile       unsigned char	WPUD		@ 0x119;
volatile       unsigned char	WPUE		@ 0x11A;
volatile       unsigned char	OPA0CON		@ 0x11C;
volatile       unsigned char	OPA0ADJ		@ 0x11D;
volatile       unsigned char	SPBRG1		@ 0x11E;
volatile       unsigned char	SPBRGH1		@ 0x11F;






volatile       unsigned char	BAUDCTL0		@ 0x187;
volatile	   unsigned char	RCREG1		@ 0x11B;
volatile	   unsigned char	TXREG1		@ 0x189;
volatile	   unsigned char	EECON1		@ 0x18C;
volatile	   unsigned char	EECON2		@ 0x18D;
volatile	   unsigned char	WPUA		@ 0x18E;
volatile	   unsigned char	WPUC		@ 0x18F;

volatile	   unsigned char	LCDCON0		@ 0x190;
volatile	   unsigned char	LCDCON1		@ 0x191;
volatile	   unsigned char	LCDADD		@ 0x192;
volatile	   unsigned char	LCDDATA		@ 0x193;

volatile	   unsigned char	LEDCON0		@ 0x190;
volatile	   unsigned char	LEDCON1		@ 0x191;
volatile	   unsigned char	LEDADD		@ 0x192;
volatile	   unsigned char	LEDDATA		@ 0x193;

volatile	   unsigned char	SEGEN2		@ 0x194;
volatile	   unsigned char	SEGEN1		@ 0x195;
volatile	   unsigned char	SEGEN0		@ 0x196;
volatile	   unsigned char	COMEN		@ 0x197;




/* Definitions for STATUS register */
volatile       bit	C	@ ((unsigned)&STATUS*8)+0;
volatile       bit	DC		@ ((unsigned)&STATUS*8)+1;
volatile       bit	Z	@ ((unsigned)&STATUS*8)+2;
volatile       bit	PD		@ ((unsigned)&STATUS*8)+3;
volatile       bit	TO		@ ((unsigned)&STATUS*8)+4;
volatile       bit	RP0		@ ((unsigned)&STATUS*8)+5;
volatile	   bit	RP1		@ ((unsigned)&STATUS*8)+6;
volatile	   bit	IRP		@ ((unsigned)&STATUS*8)+7;

/* Definitions for PORTA register */
volatile	   bit	RA0		@ ((unsigned)&PORTA*8)+0;
volatile       bit	RA1		@ ((unsigned)&PORTA*8)+1;
volatile       bit	RA2		@ ((unsigned)&PORTA*8)+2;
volatile       bit	RA3		@ ((unsigned)&PORTA*8)+3;
volatile       bit	RA4		@ ((unsigned)&PORTA*8)+4;
volatile       bit	RA5		@ ((unsigned)&PORTA*8)+5;
volatile       bit	RA6		@ ((unsigned)&PORTA*8)+6;
volatile       bit	RA7		@ ((unsigned)&PORTA*8)+7;

/* Definitions for PORTB register */
volatile       bit	RB0		@ ((unsigned)&PORTB*8)+0;
volatile       bit	RB1		@ ((unsigned)&PORTB*8)+1;
volatile       bit	RB2		@ ((unsigned)&PORTB*8)+2;
volatile       bit	RB3		@ ((unsigned)&PORTB*8)+3;
volatile       bit	RB4		@ ((unsigned)&PORTB*8)+4;
volatile       bit	RB5		@ ((unsigned)&PORTB*8)+5;
volatile       bit	RB6		@ ((unsigned)&PORTB*8)+6;
volatile       bit	RB7		@ ((unsigned)&PORTB*8)+7;

/* Definitions for PORTC register */
volatile       bit	RC0		@ ((unsigned)&PORTC*8)+0;
volatile       bit	RC1		@ ((unsigned)&PORTC*8)+1;
volatile       bit	RC2		@ ((unsigned)&PORTC*8)+2;
volatile       bit	RC3		@ ((unsigned)&PORTC*8)+3;
volatile       bit	RC4		@ ((unsigned)&PORTC*8)+4;
volatile       bit	RC5		@ ((unsigned)&PORTC*8)+5;
volatile       bit	RC6		@ ((unsigned)&PORTC*8)+6;
volatile       bit	RC7		@ ((unsigned)&PORTC*8)+7;

/* Definitions for PORTD register */
volatile       bit	RD0		@ ((unsigned)&PORTD*8)+0;
volatile       bit	RD1		@ ((unsigned)&PORTD*8)+1;
volatile       bit	RD2		@ ((unsigned)&PORTD*8)+2;
volatile       bit	RD3		@ ((unsigned)&PORTD*8)+3;
volatile       bit	RD4		@ ((unsigned)&PORTD*8)+4;
volatile       bit	RD5		@ ((unsigned)&PORTD*8)+5;
volatile       bit	RD6		@ ((unsigned)&PORTD*8)+6;
volatile       bit	RD7		@ ((unsigned)&PORTD*8)+7;

/* Definitions for PORTE register */
volatile       bit	RE0		@ ((unsigned)&PORTE*8)+0;
volatile       bit	RE1		@ ((unsigned)&PORTE*8)+1;
volatile       bit	RE2		@ ((unsigned)&PORTE*8)+2;
volatile       bit	RE3		@ ((unsigned)&PORTE*8)+3;
volatile       bit	RE4		@ ((unsigned)&PORTE*8)+4;
volatile       bit	RE5		@ ((unsigned)&PORTE*8)+5;
volatile       bit	RE6		@ ((unsigned)&PORTE*8)+6;
volatile       bit	RE7		@ ((unsigned)&PORTE*8)+7;

/* Definitions for INTCON register */
volatile       bit	RBIF	@ ((unsigned)&INTCON*8)+0;
volatile       bit	INTF	@ ((unsigned)&INTCON*8)+1;
volatile       bit	T0IF	@ ((unsigned)&INTCON*8)+2;
volatile	   bit	RBIE	@ ((unsigned)&INTCON*8)+3;
volatile	   bit	INTE	@ ((unsigned)&INTCON*8)+4;
volatile	   bit	T0IE	@ ((unsigned)&INTCON*8)+5;
volatile	   bit	PEIE	@ ((unsigned)&INTCON*8)+6;
volatile       bit	GIE		@ ((unsigned)&INTCON*8)+7;

/* Definitions for PIR1 register */
volatile       bit	TMR1IF	@ ((unsigned)&PIR1*8)+0;
volatile       bit	TMR2IF	@ ((unsigned)&PIR1*8)+1;
volatile       bit	CCP1IF	@ ((unsigned)&PIR1*8)+2;
volatile       bit	SSPIF	@ ((unsigned)&PIR1*8)+3;
volatile       bit	TX0IF	@ ((unsigned)&PIR1*8)+4;
volatile       bit	RC0IF	@ ((unsigned)&PIR1*8)+5;
volatile       bit	ADIF	@ ((unsigned)&PIR1*8)+6;

/* Definitions for PIR2 register */
volatile       bit	CCP2IF	@ ((unsigned)&PIR2*8)+0;
volatile       bit	RC1IF	@ ((unsigned)&PIR2*8)+1;
volatile       bit	TX1IF	@ ((unsigned)&PIR2*8)+2;
volatile       bit	BCLIF	@ ((unsigned)&PIR2*8)+3;
volatile       bit	EEIF	@ ((unsigned)&PIR2*8)+4;


/* Definitions for T1CON register */
volatile	   bit	TMR1ON	@ ((unsigned)&T1CON*8)+0;
volatile	   bit	TMR1CS	@ ((unsigned)&T1CON*8)+1;
volatile	   bit	T1SYNC	@ ((unsigned)&T1CON*8)+2;
volatile	   bit	T1OSCEN	@ ((unsigned)&T1CON*8)+3;
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

/* Definitions for SSPCON register */
volatile	   bit	SSPM0	@ ((unsigned)&SSPCON*8)+0;
volatile	   bit	SSPM1	@ ((unsigned)&SSPCON*8)+1;
volatile	   bit	SSPM2	@ ((unsigned)&SSPCON*8)+2;
volatile	   bit	SSPM3	@ ((unsigned)&SSPCON*8)+3;
volatile	   bit	CKP		@ ((unsigned)&SSPCON*8)+4;
volatile	   bit	SSPEN	@ ((unsigned)&SSPCON*8)+5;
volatile       bit	SSPOV	@ ((unsigned)&SSPCON*8)+6;
volatile       bit	WCOL	@ ((unsigned)&SSPCON*8)+7;

/* Definitions for CCP1CON register */
volatile	   bit	CCP1M0	@ ((unsigned)&CCP1CON*8)+0;
volatile	   bit	CCP1M1	@ ((unsigned)&CCP1CON*8)+1;
volatile	   bit	CCP1M2	@ ((unsigned)&CCP1CON*8)+2;
volatile	   bit	CCP1M3	@ ((unsigned)&CCP1CON*8)+3;
volatile	   bit	DC1B0	@ ((unsigned)&CCP1CON*8)+4;
volatile	   bit	DC1B1	@ ((unsigned)&CCP1CON*8)+5;

/* Definitions for RCSTA0 register */
volatile       bit	RX9D	@ ((unsigned)&RCSTA0*8)+0;
volatile       bit	OERR	@ ((unsigned)&RCSTA0*8)+1;
volatile       bit	FERR	@ ((unsigned)&RCSTA0*8)+2;
volatile	   bit	CREN	@ ((unsigned)&RCSTA0*8)+4;
volatile	   bit	SREN	@ ((unsigned)&RCSTA0*8)+5;
volatile	   bit	RX9EN0		@ ((unsigned)&RCSTA0*8)+6;
volatile	   bit	SPEN	@ ((unsigned)&RCSTA0*8)+7;

/* Definitions for CCP2CON register */
volatile	   bit	CCP2M0	@ ((unsigned)&CCP2CON*8)+0;
volatile	   bit	CCP2M1	@ ((unsigned)&CCP2CON*8)+1;
volatile	   bit	CCP2M2	@ ((unsigned)&CCP2CON*8)+2;
volatile	   bit	CCP2M3	@ ((unsigned)&CCP2CON*8)+3;
volatile       bit	DC2B0	@ ((unsigned)&CCP2CON*8)+4;
volatile       bit	DC2B1	@ ((unsigned)&CCP2CON*8)+5;


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
volatile	   bit	RBPU	@ ((unsigned)&OPTION_REG*8)+7;

/* Definitions for TRISA register */
volatile	   bit	TRISA0	@ ((unsigned)&TRISA*8)+0;
volatile	   bit	TRISA1	@ ((unsigned)&TRISA*8)+1;
volatile	   bit	TRISA2	@ ((unsigned)&TRISA*8)+2;
volatile	   bit	TRISA3	@ ((unsigned)&TRISA*8)+3;
volatile	   bit	TRISA4	@ ((unsigned)&TRISA*8)+4;
volatile	   bit	TRISA5	@ ((unsigned)&TRISA*8)+5;
volatile	   bit	TRISA6	@ ((unsigned)&TRISA*8)+6;
volatile	   bit	TRISA7	@ ((unsigned)&TRISA*8)+7;

/* Definitions for TRISB register */
volatile       bit	TRISB0	@ ((unsigned)&TRISB*8)+0;
volatile       bit	TRISB1	@ ((unsigned)&TRISB*8)+1;
volatile       bit	TRISB2	@ ((unsigned)&TRISB*8)+2;
volatile       bit	TRISB3	@ ((unsigned)&TRISB*8)+3;
volatile       bit	TRISB4	@ ((unsigned)&TRISB*8)+4;
volatile       bit	TRISB5	@ ((unsigned)&TRISB*8)+5;
volatile       bit	TRISB6	@ ((unsigned)&TRISB*8)+6;
volatile       bit	TRISB7	@ ((unsigned)&TRISB*8)+7;

/* Definitions for TRISC register */
volatile       bit	TRISC0	@ ((unsigned)&TRISC*8)+0;
volatile       bit	TRISC1	@ ((unsigned)&TRISC*8)+1;
volatile       bit	TRISC2	@ ((unsigned)&TRISC*8)+2;
volatile       bit	TRISC3	@ ((unsigned)&TRISC*8)+3;
volatile       bit	TRISC4	@ ((unsigned)&TRISC*8)+4;
volatile       bit	TRISC5	@ ((unsigned)&TRISC*8)+5;
volatile       bit	TRISC6	@ ((unsigned)&TRISC*8)+6;
volatile       bit	TRISC7	@ ((unsigned)&TRISC*8)+7;

/* Definitions for TRISD register */
volatile       bit	TRISD0	@ ((unsigned)&TRISD*8)+0;
volatile       bit	TRISD1	@ ((unsigned)&TRISD*8)+1;
volatile       bit	TRISD2	@ ((unsigned)&TRISD*8)+2;
volatile       bit	TRISD3	@ ((unsigned)&TRISD*8)+3;
volatile       bit	TRISD4	@ ((unsigned)&TRISD*8)+4;
volatile       bit	TRISD5	@ ((unsigned)&TRISD*8)+5;
volatile       bit	TRISD6	@ ((unsigned)&TRISD*8)+6;
volatile       bit	TRISD7	@ ((unsigned)&TRISD*8)+7;

/* Definitions for TRISE register */
volatile       bit	TRISE0	@ ((unsigned)&TRISE*8)+0;
volatile       bit	TRISE1	@ ((unsigned)&TRISE*8)+1;
volatile       bit	TRISE2	@ ((unsigned)&TRISE*8)+2;
volatile       bit	TRISE3	@ ((unsigned)&TRISE*8)+3;
volatile       bit	TRISE4	@ ((unsigned)&TRISE*8)+4;
volatile       bit	TRISE5	@ ((unsigned)&TRISE*8)+5;
volatile       bit	TRISE6	@ ((unsigned)&TRISE*8)+6;
volatile       bit	TRISE7	@ ((unsigned)&TRISE*8)+7;

/* Definitions for PIE1 register */
volatile	   bit	TMR1IE	@ ((unsigned)&PIE1*8)+0;
volatile	   bit	TMR2IE	@ ((unsigned)&PIE1*8)+1;
volatile	   bit	CCP1IE	@ ((unsigned)&PIE1*8)+2;
volatile	   bit	SSPIE	@ ((unsigned)&PIE1*8)+3;
volatile	   bit	TX0IE	@ ((unsigned)&PIE1*8)+4;
volatile	   bit	RC0IE	@ ((unsigned)&PIE1*8)+5;
volatile	   bit	ADIE	@ ((unsigned)&PIE1*8)+6;

/* Definitions for PIE2 register */
volatile	   bit	CCP2IE	@ ((unsigned)&PIE2*8)+0;
volatile	   bit	RC1IE	@ ((unsigned)&PIE2*8)+1;
volatile	   bit	TX1IE	@ ((unsigned)&PIE2*8)+2;
volatile	   bit	BCLIE	@ ((unsigned)&PIE2*8)+3;
volatile	   bit	EEIE	@ ((unsigned)&PIE2*8)+4;

/* Definitions for SEGEN3 register */
volatile	   bit	SEG19EN	@ ((unsigned)&SEGEN3*8)+0;
volatile	   bit	SEG20EN	@ ((unsigned)&SEGEN3*8)+1;
volatile	   bit	SEG21EN	@ ((unsigned)&SEGEN3*8)+2;
volatile	   bit	SEG22EN	@ ((unsigned)&SEGEN3*8)+3;
volatile	   bit	SEG23EN	@ ((unsigned)&SEGEN3*8)+4;

/* Definitions for OSCCON register */
volatile	   bit	SCS		@ ((unsigned)&OSCCON*8)+0;
volatile	   bit	IRCF0	@ ((unsigned)&OSCCON*8)+4;
volatile	   bit	IRCF1	@ ((unsigned)&OSCCON*8)+5;
volatile	   bit	IRCF2	@ ((unsigned)&OSCCON*8)+6;

/* Definitions for OSCTUNE register */
volatile	   bit	TUN0	@ ((unsigned)&OSCTUNE*8)+0;
volatile	   bit	TUN1	@ ((unsigned)&OSCTUNE*8)+1;
volatile	   bit	TUN2	@ ((unsigned)&OSCTUNE*8)+2;
volatile	   bit	TUN3	@ ((unsigned)&OSCTUNE*8)+3;
volatile	   bit	TUN4	@ ((unsigned)&OSCTUNE*8)+4;

/* Definitions for SSPCON2 register */
volatile	   bit	SEN		@ ((unsigned)&SSPCON2*8)+0;
volatile       bit	RSEN	@ ((unsigned)&SSPCON2*8)+1;
volatile       bit	PEN		@ ((unsigned)&SSPCON2*8)+2;
volatile       bit	RCEN	@ ((unsigned)&SSPCON2*8)+3;
volatile       bit	ACKEN	@ ((unsigned)&SSPCON2*8)+4;
volatile       bit	ACKDT	@ ((unsigned)&SSPCON2*8)+5;
volatile       bit	ACKSTAT	@ ((unsigned)&SSPCON2*8)+6;
volatile	   bit	GCEN	@ ((unsigned)&SSPCON2*8)+7;

/* Definitions for SSPMSK register */
volatile       bit	MSK0		@ ((unsigned)&SSPMSK*8)+0;
volatile       bit	MSK1		@ ((unsigned)&SSPMSK*8)+1;
volatile       bit	MSK2		@ ((unsigned)&SSPMSK*8)+2;
volatile       bit	MSK3	@ ((unsigned)&SSPMSK*8)+3;
volatile       bit	MSK4	@ ((unsigned)&SSPMSK*8)+4;
volatile       bit	MSK5		@ ((unsigned)&SSPMSK*8)+5;
volatile	   bit	MSK6		@ ((unsigned)&SSPMSK*8)+6;
volatile	   bit	MSK7		@ ((unsigned)&SSPMSK*8)+7;

/* Definitions for SSPSTAT register */
volatile       bit	BF		@ ((unsigned)&SSPSTAT*8)+0;
volatile       bit	UA		@ ((unsigned)&SSPSTAT*8)+1;
volatile       bit	RW		@ ((unsigned)&SSPSTAT*8)+2;
volatile       bit	S	@ ((unsigned)&SSPSTAT*8)+3;
volatile       bit	P	@ ((unsigned)&SSPSTAT*8)+4;
volatile       bit	DA		@ ((unsigned)&SSPSTAT*8)+5;
volatile	   bit	CKE		@ ((unsigned)&SSPSTAT*8)+6;
volatile	   bit	SMP		@ ((unsigned)&SSPSTAT*8)+7;

/* Definitions for WPUB register */
volatile	   bit	WPUB0	@ ((unsigned)&WPUB*8)+0;
volatile	   bit	WPUB1	@ ((unsigned)&WPUB*8)+1;
volatile	   bit	WPUB2	@ ((unsigned)&WPUB*8)+2;
volatile	   bit	WPUB3	@ ((unsigned)&WPUB*8)+3;
volatile	   bit	WPUB4	@ ((unsigned)&WPUB*8)+4;
volatile	   bit	WPUB5	@ ((unsigned)&WPUB*8)+5;
volatile	   bit	WPUB6	@ ((unsigned)&WPUB*8)+6;
volatile	   bit	WPUB7	@ ((unsigned)&WPUB*8)+7;

/* Definitions for IOCB register */
volatile	   bit	IOCB0	@ ((unsigned)&IOCB*8)+0;
volatile	   bit	IOCB1	@ ((unsigned)&IOCB*8)+1;
volatile	   bit	IOCB2	@ ((unsigned)&IOCB*8)+2;
volatile	   bit	IOCB3	@ ((unsigned)&IOCB*8)+3;
volatile	   bit	IOCB4	@ ((unsigned)&IOCB*8)+4;
volatile	   bit	IOCB5	@ ((unsigned)&IOCB*8)+5;
volatile	   bit	IOCB6	@ ((unsigned)&IOCB*8)+6;
volatile	   bit	IOCB7	@ ((unsigned)&IOCB*8)+7;

/* Definitions for TXSTA0 register */
volatile       bit	TX9D	@ ((unsigned)&TXSTA0*8)+0;
volatile       bit	TRMT	@ ((unsigned)&TXSTA0*8)+1;
volatile	   bit	BRGHEN0	@ ((unsigned)&TXSTA0*8)+2;
volatile	   bit	SYNC	@ ((unsigned)&TXSTA0*8)+4;
volatile	   bit	TXEN	@ ((unsigned)&TXSTA0*8)+5;
volatile	   bit	TX9EN0		@ ((unsigned)&TXSTA0*8)+6;
volatile	   bit	CSRC	@ ((unsigned)&TXSTA0*8)+7;


/* Definitions for PWMCON register */
volatile       bit	CK10	@ ((unsigned)&PWMCON*8)+0;
volatile       bit	CK11	@ ((unsigned)&PWMCON*8)+1;
volatile       bit	CYC1EN	@ ((unsigned)&PWMCON*8)+2;
volatile       bit	CK20	@ ((unsigned)&PWMCON*8)+4;
volatile       bit	CK21	@ ((unsigned)&PWMCON*8)+5;
volatile       bit	CYC2EN	@ ((unsigned)&PWMCON*8)+6;

/* Definitions for ADCON1 register */
volatile	   bit	ADFM	@ ((unsigned)&ADCON1*8)+7;




/* Definitions for WDTCON register */
volatile	   bit	SWDTEN	@ ((unsigned)&WDTCON*8)+0;
/*
volatile	   bit	WDTPS0	@ ((unsigned)&WDTCON*8)+1;
volatile	   bit	WDTPS1	@ ((unsigned)&WDTCON*8)+2;
volatile	   bit	WDTPS2	@ ((unsigned)&WDTCON*8)+3;
volatile	   bit	WDTPS3	@ ((unsigned)&WDTCON*8)+4;
*/

/* Definitions for RCSTA1 register */
volatile	   bit	RX9D1	@ ((unsigned)&RCSTA1*8)+0;
volatile	   bit	OERR1	@ ((unsigned)&RCSTA1*8)+1;
volatile	   bit	FERR1		@ ((unsigned)&RCSTA1*8)+2;
volatile	   bit	CREN1	@ ((unsigned)&RCSTA1*8)+4;
volatile	   bit	SREN1	@ ((unsigned)&RCSTA1*8)+5;
volatile       bit	RX9EN1	@ ((unsigned)&RCSTA1*8)+6;
volatile	   bit	SPEN1	@ ((unsigned)&RCSTA1*8)+7;

/* Definitions for TXSTA1 register */
volatile	   bit	TX9D1	@ ((unsigned)&TXSTA1*8)+0;
volatile	   bit	TRMT1	@ ((unsigned)&TXSTA1*8)+1;
volatile	   bit	BRGHEN1	@ ((unsigned)&TXSTA1*8)+2;
volatile	   bit	SYNC1	@ ((unsigned)&TXSTA1*8)+4;
volatile	   bit	TXEN1	@ ((unsigned)&TXSTA1*8)+5;
volatile       bit	TX9EN1	@ ((unsigned)&TXSTA1*8)+6;
volatile	   bit	CSRC1	@ ((unsigned)&TXSTA1*8)+7;

/* Definitions for BAUDCTL1 register */
volatile	   bit	BRG16EN1	@ ((unsigned)&BAUDCTL1*8)+3;
volatile       bit	SCKP1	@ ((unsigned)&BAUDCTL1*8)+4;
volatile       bit	RCIDL1	@ ((unsigned)&BAUDCTL1*8)+6;

/* Definitions for EEDAT register */
volatile	   bit	EEDAT0	@ ((unsigned)&EEDAT*8)+0;
volatile	   bit	EEDAT1	@ ((unsigned)&EEDAT*8)+1;
volatile	   bit	EEDAT2	@ ((unsigned)&EEDAT*8)+2;
volatile	   bit	EEDAT3	@ ((unsigned)&EEDAT*8)+3;
volatile	   bit	EEDAT4	@ ((unsigned)&EEDAT*8)+4;
volatile	   bit	EEDAT5	@ ((unsigned)&EEDAT*8)+5;
volatile	   bit	EEDAT6	@ ((unsigned)&EEDAT*8)+6;
volatile	   bit	EEDAT7	@ ((unsigned)&EEDAT*8)+7;

/* Definitions for EEADR register */
volatile	   bit	EEADR0	@ ((unsigned)&EEADR*8)+0;
volatile	   bit	EEADR1	@ ((unsigned)&EEADR*8)+1;
volatile	   bit	EEADR2	@ ((unsigned)&EEADR*8)+2;
volatile	   bit	EEADR3	@ ((unsigned)&EEADR*8)+3;
volatile	   bit	EEADR4	@ ((unsigned)&EEADR*8)+4;
volatile	   bit	EEADR5	@ ((unsigned)&EEADR*8)+5;
volatile	   bit	EEADR6	@ ((unsigned)&EEADR*8)+6;
volatile	   bit	EEADR7	@ ((unsigned)&EEADR*8)+7;

/* Definitions for EEDATH register */
volatile	   bit	EEDATH0	@ ((unsigned)&EEDATH*8)+0;
volatile	   bit	EEDATH1	@ ((unsigned)&EEDATH*8)+1;
volatile	   bit	EEDATH2	@ ((unsigned)&EEDATH*8)+2;
volatile	   bit	EEDATH3	@ ((unsigned)&EEDATH*8)+3;
volatile	   bit	EEDATH4	@ ((unsigned)&EEDATH*8)+4;
volatile	   bit	EEDATH5	@ ((unsigned)&EEDATH*8)+5;
volatile	   bit	EEDATH6	@ ((unsigned)&EEDATH*8)+6;
volatile	   bit	EEDATH7	@ ((unsigned)&EEDATH*8)+7;

/* Definitions for EEADRH register */
volatile	   bit	EEADRH0	@ ((unsigned)&EEADRH*8)+0;
volatile	   bit	EEADRH1	@ ((unsigned)&EEADRH*8)+1;
volatile	   bit	EEADRH2	@ ((unsigned)&EEADRH*8)+2;
volatile	   bit	EEADRH3	@ ((unsigned)&EEADRH*8)+3;
volatile	   bit	EEADRH4	@ ((unsigned)&EEADRH*8)+4;

/* Definitions for KEYCON0 register */
volatile	   bit	KEN		@ ((unsigned)&KEYCON0*8)+0;
volatile	   bit	KCAP	@ ((unsigned)&KEYCON0*8)+1;
volatile	   bit	KTOUT	@ ((unsigned)&KEYCON0*8)+2;
volatile	   bit	CAPK0	@ ((unsigned)&KEYCON0*8)+3;
volatile	   bit	CAPK1	@ ((unsigned)&KEYCON0*8)+4;
volatile	   bit	CAPK2	@ ((unsigned)&KEYCON0*8)+5;
volatile	   bit	KDONE	@ ((unsigned)&KEYCON0*8)+7;

/* Definitions for KEYCON1 register */
volatile	   bit	KCHS0	@ ((unsigned)&KEYCON1*8)+0;
volatile	   bit	KCHS1	@ ((unsigned)&KEYCON1*8)+1;
volatile	   bit	KCHS2	@ ((unsigned)&KEYCON1*8)+2;
volatile	   bit	KCHS3	@ ((unsigned)&KEYCON1*8)+3;
volatile	   bit	KCLK0	@ ((unsigned)&KEYCON1*8)+4;
volatile	   bit	KCLK1	@ ((unsigned)&KEYCON1*8)+5;
volatile	   bit	KVREF0	@ ((unsigned)&KEYCON1*8)+6;
volatile	   bit	KVREF1	@ ((unsigned)&KEYCON1*8)+7;

/* Definitions for KEYCON2 register */
volatile	   bit	TKEN	@ ((unsigned)&KEYCON2*8)+0;
volatile	   bit	TK_AUTO	@ ((unsigned)&KEYCON2*8)+1;
volatile	   bit	TP_EN	@ ((unsigned)&KEYCON2*8)+2;
volatile	   bit	TK_DRI	@ ((unsigned)&KEYCON2*8)+3;
volatile	   bit	OVER_H	@ ((unsigned)&KEYCON2*8)+4;
volatile	   bit	CAP_LVBO0	@ ((unsigned)&KEYCON2*8)+5;
volatile	   bit	CAP_LVBO1	@ ((unsigned)&KEYCON2*8)+6;
volatile	   bit	CAP_LVBO2	@ ((unsigned)&KEYCON2*8)+7;

/* Definitions for KEYCON3 register */
volatile	   bit	TKOSC_SLE0	@ ((unsigned)&KEYCON3*8)+0;
volatile	   bit	TKOSC_SLE1	@ ((unsigned)&KEYCON3*8)+1;
volatile	   bit	TKOSC_SLE2	@ ((unsigned)&KEYCON3*8)+2;
volatile	   bit	TKOSC_SLE3	@ ((unsigned)&KEYCON3*8)+3;
volatile	   bit	TKOSC_SLE4	@ ((unsigned)&KEYCON3*8)+4;
volatile	   bit	TKOSC_SLE5	@ ((unsigned)&KEYCON3*8)+5;
volatile	   bit	TKOSC_SLE6	@ ((unsigned)&KEYCON3*8)+6;
volatile	   bit	KCLK_SLE	@ ((unsigned)&KEYCON3*8)+7;

/* Definitions for WPUD register */
volatile	   bit	WPUD0	@ ((unsigned)&WPUD*8)+0;
volatile	   bit	WPUD1	@ ((unsigned)&WPUD*8)+1;
volatile	   bit	WPUD2	@ ((unsigned)&WPUD*8)+2;
volatile	   bit	WPUD3	@ ((unsigned)&WPUD*8)+3;
volatile	   bit	WPUD4	@ ((unsigned)&WPUD*8)+4;
volatile	   bit	WPUD5	@ ((unsigned)&WPUD*8)+5;
volatile	   bit	WPUD6	@ ((unsigned)&WPUD*8)+6;
volatile	   bit	WPUD7	@ ((unsigned)&WPUD*8)+7;

/* Definitions for WPUE register */
volatile	   bit	WPUE0	@ ((unsigned)&WPUE*8)+0;
volatile	   bit	WPUE1	@ ((unsigned)&WPUE*8)+1;
volatile	   bit	WPUE2	@ ((unsigned)&WPUE*8)+2;
volatile	   bit	WPUE3	@ ((unsigned)&WPUE*8)+3;
volatile	   bit	WPUE4	@ ((unsigned)&WPUE*8)+4;
volatile	   bit	WPUE5	@ ((unsigned)&WPUE*8)+5;
volatile	   bit	WPUE6	@ ((unsigned)&WPUE*8)+6;
volatile	   bit	WPUE7	@ ((unsigned)&WPUE*8)+7;

/* Definitions for OPA0CON register */
volatile	   bit	OPA0FT	@ ((unsigned)&OPA0CON*8)+0;
volatile	   bit	OPA0N	@ ((unsigned)&OPA0CON*8)+2;
volatile	   bit	OPA0P0	@ ((unsigned)&OPA0CON*8)+3;
volatile	   bit	OPA0P1	@ ((unsigned)&OPA0CON*8)+4;
volatile	   bit	OPA0P2	@ ((unsigned)&OPA0CON*8)+5;
volatile	   bit	OPA0O	@ ((unsigned)&OPA0CON*8)+6;
volatile	   bit	OPA0EN	@ ((unsigned)&OPA0CON*8)+7;

/* Definitions for OPA0ADJ register */
volatile	   bit	OPA0ADJ0	@ ((unsigned)&OPA0ADJ*8)+0;
volatile	   bit	OPA0ADJ1	@ ((unsigned)&OPA0ADJ*8)+1;
volatile	   bit	OPA0ADJ2	@ ((unsigned)&OPA0ADJ*8)+2;
volatile	   bit	OPA0ADJ3	@ ((unsigned)&OPA0ADJ*8)+3;
volatile	   bit	OPA0ADJ4	@ ((unsigned)&OPA0ADJ*8)+4;
volatile	   bit	OPA0CRS		@ ((unsigned)&OPA0ADJ*8)+5;
volatile	   bit	OPA0COFM	@ ((unsigned)&OPA0ADJ*8)+6;
volatile	   bit	OPA0OUT		@ ((unsigned)&OPA0ADJ*8)+7;



/* Definitions for BAUDCTL0 register */
volatile	   bit	BRG16EN0	@ ((unsigned)&BAUDCTL0*8)+3;
volatile       bit	SCKP	@ ((unsigned)&BAUDCTL0*8)+4;
volatile       bit	RCIDL	@ ((unsigned)&BAUDCTL0*8)+6;

/* Definitions for EECON1 register */
volatile	   bit	RD	@ ((unsigned)&EECON1*8)+0;
volatile	   bit	WR	@ ((unsigned)&EECON1*8)+1;
volatile	   bit	WREN	@ ((unsigned)&EECON1*8)+2;
volatile	   bit	WRERR	@ ((unsigned)&EECON1*8)+3;
volatile	   bit	EEPGD	@ ((unsigned)&EECON1*8)+7;


/* Definitions for WPUA register */
volatile	   bit	WPUA0	@ ((unsigned)&WPUA*8)+0;
volatile	   bit	WPUA1	@ ((unsigned)&WPUA*8)+1;
volatile	   bit	WPUA2	@ ((unsigned)&WPUA*8)+2;
volatile	   bit	WPUA3	@ ((unsigned)&WPUA*8)+3;
volatile	   bit	WPUA4	@ ((unsigned)&WPUA*8)+4;
volatile	   bit	WPUA5	@ ((unsigned)&WPUA*8)+5;
volatile	   bit	WPUA6	@ ((unsigned)&WPUA*8)+6;
volatile	   bit	WPUA7	@ ((unsigned)&WPUA*8)+7;


/* Definitions for WPUC register */
volatile	   bit	WPUC0	@ ((unsigned)&WPUC*8)+0;
volatile	   bit	WPUC1	@ ((unsigned)&WPUC*8)+1;
volatile	   bit	WPUC2	@ ((unsigned)&WPUC*8)+2;
volatile	   bit	WPUC3	@ ((unsigned)&WPUC*8)+3;
volatile	   bit	WPUC4	@ ((unsigned)&WPUC*8)+4;
volatile	   bit	WPUC5	@ ((unsigned)&WPUC*8)+5;
volatile	   bit	WPUC6	@ ((unsigned)&WPUC*8)+6;
volatile	   bit	WPUC7	@ ((unsigned)&WPUC*8)+7;


/* Definitions for LCDCON0 register */
volatile	   bit	LCDCLK0	@ ((unsigned)&LCDCON0*8)+0;
volatile	   bit	LCDCLK1	@ ((unsigned)&LCDCON0*8)+1;
volatile	   bit	LCDCLK2	@ ((unsigned)&LCDCON0*8)+2;
volatile	   bit	LCDCLK3	@ ((unsigned)&LCDCON0*8)+3;
volatile	   bit	COMSEL0	@ ((unsigned)&LCDCON0*8)+4;
volatile	   bit	COMSEL1	@ ((unsigned)&LCDCON0*8)+5;
volatile	   bit	LEDEN	@ ((unsigned)&LCDCON0*8)+6;
volatile	   bit	LCDEN	@ ((unsigned)&LCDCON0*8)+7;

/* Definitions for LCDCON1 register */
volatile	   bit	VLCD0	@ ((unsigned)&LCDCON1*8)+0;
volatile	   bit	VLCD1	@ ((unsigned)&LCDCON1*8)+1;
volatile	   bit	VLCD2	@ ((unsigned)&LCDCON1*8)+2;
volatile	   bit	VLCD3	@ ((unsigned)&LCDCON1*8)+3;
volatile	   bit	SEGOUT0	@ ((unsigned)&LCDCON1*8)+4;
volatile	   bit	SEGOUT1	@ ((unsigned)&LCDCON1*8)+5;
volatile	   bit	LCDF	@ ((unsigned)&LCDCON1*8)+6;
volatile	   bit	VADJEN	@ ((unsigned)&LCDCON1*8)+7;

/* Definitions for LCDADD register */
volatile	   bit	LCDADD0	@ ((unsigned)&LCDADD*8)+0;
volatile	   bit	LCDADD1	@ ((unsigned)&LCDADD*8)+1;
volatile	   bit	LCDADD2	@ ((unsigned)&LCDADD*8)+2;
volatile	   bit	LCDADD3	@ ((unsigned)&LCDADD*8)+3;
volatile	   bit	LCDADD4	@ ((unsigned)&LCDADD*8)+4;
volatile	   bit	COMSEL2	@ ((unsigned)&LCDADD*8)+5;
volatile	   bit	B2RES	@ ((unsigned)&LCDADD*8)+6;
volatile	   bit	LEDCS	@ ((unsigned)&LCDADD*8)+7;

/* Definitions for SEGEN2 register */
volatile	   bit	SEG16EN	@ ((unsigned)&SEGEN2*8)+0;
volatile	   bit	SEG17EN	@ ((unsigned)&SEGEN2*8)+1;
volatile	   bit	SEG18EN	@ ((unsigned)&SEGEN2*8)+2;

/* Definitions for SEGEN1 register */
volatile	   bit	SEG8EN	@ ((unsigned)&SEGEN1*8)+0;
volatile	   bit	SEG9EN	@ ((unsigned)&SEGEN1*8)+1;
volatile	   bit	SEG10EN	@ ((unsigned)&SEGEN1*8)+2;
volatile	   bit	SEG11EN	@ ((unsigned)&SEGEN1*8)+3;
volatile	   bit	SEG12EN	@ ((unsigned)&SEGEN1*8)+4;
volatile	   bit	SEG13EN	@ ((unsigned)&SEGEN1*8)+5;
volatile	   bit	SEG14EN	@ ((unsigned)&SEGEN1*8)+6;
volatile	   bit	SEG15EN	@ ((unsigned)&SEGEN1*8)+7;

/* Definitions for SEGEN0 register */
volatile	   bit	SEG0EN	@ ((unsigned)&SEGEN0*8)+0;
volatile	   bit	SEG1EN	@ ((unsigned)&SEGEN0*8)+1;
volatile	   bit	SEG2EN	@ ((unsigned)&SEGEN0*8)+2;
volatile	   bit	SEG3EN	@ ((unsigned)&SEGEN0*8)+3;
volatile	   bit	SEG4EN	@ ((unsigned)&SEGEN0*8)+4;
volatile	   bit	SEG5EN	@ ((unsigned)&SEGEN0*8)+5;
volatile	   bit	SEG6EN	@ ((unsigned)&SEGEN0*8)+6;
volatile	   bit	SEG7EN	@ ((unsigned)&SEGEN0*8)+7;

/* Definitions for COMEN register */
volatile	   bit	COM0EN	@ ((unsigned)&COMEN*8)+0;
volatile	   bit	COM1EN	@ ((unsigned)&COMEN*8)+1;
volatile	   bit	COM2EN	@ ((unsigned)&COMEN*8)+2;
volatile	   bit	COM3EN	@ ((unsigned)&COMEN*8)+3;
volatile	   bit	COM4EN	@ ((unsigned)&COMEN*8)+4;
volatile	   bit	COM5EN	@ ((unsigned)&COMEN*8)+5;
volatile	   bit	COM6EN	@ ((unsigned)&COMEN*8)+6;
volatile	   bit	COM7EN	@ ((unsigned)&COMEN*8)+7;



#endif
