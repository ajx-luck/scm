
#ifndef	_HTC_H_
#warning Header file cms89f23a5b.h included directly. Use #include <htc.h> instead.
#endif


#ifndef	__CMS89F23A5B_H												
#define	__CMS89F23A5B_H

// Special function register definitions

//bank 0
volatile		unsigned char	INDF	@ 0x000;
volatile		unsigned char	TMR0	@ 0x001;
volatile		unsigned char	PCL		@ 0x002;
volatile		unsigned char	STATUS	@ 0x003;
volatile		unsigned char	FSR		@ 0x004;
volatile		unsigned char	PORTA	@ 0x005;
volatile		unsigned char	PORTB	@ 0x006;
volatile		unsigned char	PORTC	@ 0x007;
volatile		unsigned char	PORTD	@ 0x008;					 

volatile		unsigned char	PCLATH	@ 0x00A;
volatile		unsigned char	INTCON	@ 0x00B;
volatile		unsigned char	PIR1	@ 0x00C;

volatile		unsigned char	TMR1L	@ 0x00E;
volatile		unsigned char	TMR1H	@ 0x00F;
volatile		unsigned char	T1CON	@ 0x010;
volatile		unsigned char	TMR2	@ 0x011;
volatile		unsigned char	T2CON	@ 0x012;

volatile		unsigned char	BAUDCTL1	@ 0x015;												
volatile		unsigned char	RCREG1		@ 0x016;												
volatile		unsigned char	RCSTA1		@ 0x017;												
volatile		unsigned char	RCSTA0		@ 0x018;												
volatile		unsigned char	TXREG0		@ 0x019;												
volatile		unsigned char	RCREG0		@ 0x01A;												
volatile		unsigned char	CCPR0L		@ 0x01B;												
volatile		unsigned char	CCPR1L		@ 0x01C;												
volatile		unsigned char	PWMCON		@ 0x01D;												
volatile		unsigned char	ADRESH		@ 0x01E;												
volatile		unsigned char	ADCON0		@ 0x01F;												


//bank1
volatile		unsigned char	OPTION_REG	@ 0x081;
volatile		unsigned char	TRISA		@ 0x085;
volatile		unsigned char	TRISB		@ 0x086;
volatile		unsigned char	TRISC		@ 0x087;
volatile		unsigned char	TRISD		@ 0x088;
volatile		unsigned char	WPDA		@ 0x089;
volatile		unsigned char	PIE1		@ 0x08C;

volatile		unsigned char	OSCCON		@ 0x08F;
volatile		unsigned char	OSCTUNE		@ 0x090;

volatile		unsigned char	PR2			@ 0x092;

volatile		unsigned char	WPUB		@ 0x095;
volatile		unsigned char	IOCB		@ 0x096;
volatile		unsigned char	TXSTA1		@ 0x097;
volatile		unsigned char	TXSTA0		@ 0x098;
volatile		unsigned char	SPBRG0		@ 0x099;
volatile		unsigned char	SPBRGH0		@ 0x09A;
volatile		unsigned char	SPBRG1		@ 0x09B;
volatile		unsigned char	SPBRGH1		@ 0x09C;
volatile		unsigned char	TXREG1		@ 0x09D;
volatile		unsigned char	ADRESL		@ 0x09E;
volatile		unsigned char	ADCON1		@ 0x09F;


//bank2 

volatile		unsigned char	WDTCON		@ 0x105;
volatile		unsigned char	WPDB		@ 0x107;
volatile		unsigned char	WPDC		@ 0x108;
volatile		unsigned char	WPDD		@ 0x109;
volatile		unsigned char	EEDATA		@ 0x10C;
volatile		unsigned char	EEADR		@ 0x10D;
volatile		unsigned char	EEDATH		@ 0x10E;
volatile		unsigned char	EEADRH		@ 0x10F;
volatile		unsigned char	TABLE_SPH	@ 0x110;
volatile		unsigned char	TABLE_SPL	@ 0x111;
volatile		unsigned char	TABLE_DATAH	@ 0x112;
volatile		unsigned char	LCDCON3		@ 0x113;
volatile		unsigned char	LCDCON		@ 0x114;

volatile		unsigned char	LEDCON3		@ 0x113;
volatile		unsigned char	LEDCON		@ 0x114;

//bank3
volatile		unsigned char	WPUD		@ 0x185;
volatile		unsigned char	BAUDCTL0		@ 0x187;

volatile		unsigned char	EECON1		@ 0x18C;
volatile		unsigned char	EECON2		@ 0x18D;
volatile		unsigned char	WPUA		@ 0x18E;
volatile		unsigned char	WPUC		@ 0x18F;
volatile		unsigned char	LCDCON0		@ 0x190;
volatile		unsigned char	LCDCON1		@ 0x191;
volatile		unsigned char	LCDADD		@ 0x192;
volatile		unsigned char	LCDDATA		@ 0x193;

volatile		unsigned char	LEDCON0		@ 0x190;
volatile		unsigned char	LEDCON1		@ 0x191;
volatile		unsigned char	LEDADD		@ 0x192;
volatile		unsigned char	LEDDATA		@ 0x193;

volatile		unsigned char	SEGEN2		@ 0x194;
volatile		unsigned char	SEGEN1		@ 0x195;
volatile		unsigned char	SEGEN0		@ 0x196;
volatile		unsigned char	LCDCON2		@ 0x197;

volatile		unsigned char	LEDCON2		@ 0x197;




/* Definitions for STATUS register */
volatile		bit	IRP		@ ((unsigned)&STATUS*8)+7;
volatile		bit	RP1		@ ((unsigned)&STATUS*8)+6;
volatile		bit	RP0		@ ((unsigned)&STATUS*8)+5;
volatile		bit	TO		@ ((unsigned)&STATUS*8)+4;
volatile		bit	PD		@ ((unsigned)&STATUS*8)+3;
volatile		bit	ZERO	@ ((unsigned)&STATUS*8)+2;
volatile		bit	DC		@ ((unsigned)&STATUS*8)+1;
volatile		bit	CARRY	@ ((unsigned)&STATUS*8)+0;

/* Definitions for PORTA register */
volatile		bit	RA7		@ ((unsigned)&PORTA*8)+7;
volatile		bit	RA6		@ ((unsigned)&PORTA*8)+6;
volatile		bit	RA5		@ ((unsigned)&PORTA*8)+5;
volatile		bit	RA4		@ ((unsigned)&PORTA*8)+4;
volatile		bit	RA3		@ ((unsigned)&PORTA*8)+3;
volatile		bit	RA2		@ ((unsigned)&PORTA*8)+2;
volatile		bit	RA1		@ ((unsigned)&PORTA*8)+1;
volatile		bit	RA0		@ ((unsigned)&PORTA*8)+0;

/* Definitions for PORTB register */
volatile		bit	RB7		@ ((unsigned)&PORTB*8)+7;
volatile		bit	RB6		@ ((unsigned)&PORTB*8)+6;
volatile		bit	RB5		@ ((unsigned)&PORTB*8)+5;
volatile		bit	RB4		@ ((unsigned)&PORTB*8)+4;
volatile		bit	RB3		@ ((unsigned)&PORTB*8)+3;
volatile		bit	RB2		@ ((unsigned)&PORTB*8)+2;
volatile		bit	RB1		@ ((unsigned)&PORTB*8)+1;
volatile		bit	RB0		@ ((unsigned)&PORTB*8)+0;

/* Definitions for PORTC register */
volatile		bit	RC7		@ ((unsigned)&PORTC*8)+7;
volatile		bit	RC6		@ ((unsigned)&PORTC*8)+6;
volatile		bit	RC5		@ ((unsigned)&PORTC*8)+5;
volatile		bit	RC4		@ ((unsigned)&PORTC*8)+4;
volatile		bit	RC3		@ ((unsigned)&PORTC*8)+3;
volatile		bit	RC2		@ ((unsigned)&PORTC*8)+2;
volatile		bit	RC1		@ ((unsigned)&PORTC*8)+1;
volatile		bit	RC0		@ ((unsigned)&PORTC*8)+0;

/* Definitions for PORTD register */
volatile		bit	RD7		@ ((unsigned)&PORTD*8)+7;
volatile		bit	RD6		@ ((unsigned)&PORTD*8)+6;
volatile		bit	RD5		@ ((unsigned)&PORTD*8)+5;
volatile		bit	RD4		@ ((unsigned)&PORTD*8)+4;
volatile		bit	RD3		@ ((unsigned)&PORTD*8)+3;
volatile		bit	RD2		@ ((unsigned)&PORTD*8)+2;
volatile		bit	RD1		@ ((unsigned)&PORTD*8)+1;
volatile		bit	RD0		@ ((unsigned)&PORTD*8)+0;


/* Definitions for INTCON register */
volatile		bit	GIE		@ ((unsigned)&INTCON*8)+7;
volatile		bit	PEIE	@ ((unsigned)&INTCON*8)+6;
volatile		bit	T0IE	@ ((unsigned)&INTCON*8)+5;
volatile		bit	INTE	@ ((unsigned)&INTCON*8)+4;
volatile		bit	RBIE	@ ((unsigned)&INTCON*8)+3;
// Alternate definition for backward compatibility
volatile		bit	RABIE	@ ((unsigned)&INTCON*8)+3;
volatile		bit	T0IF	@ ((unsigned)&INTCON*8)+2;
volatile		bit	INTF	@ ((unsigned)&INTCON*8)+1;
volatile		bit	RBIF	@ ((unsigned)&INTCON*8)+0;
// Alternate definition for backward compatibility
volatile		bit	RABIF	@ ((unsigned)&INTCON*8)+0;


/* Definitions for PIR1 register */
volatile		bit	RC1IF	@ ((unsigned)&PIR1*8)+7;
volatile		bit	TX1IF	@ ((unsigned)&PIR1*8)+6;
volatile		bit	RC0IF	@ ((unsigned)&PIR1*8)+5;
volatile		bit	TX0IF	@ ((unsigned)&PIR1*8)+4;
volatile		bit	EEIF	@ ((unsigned)&PIR1*8)+3;
volatile		bit	ADIF	@ ((unsigned)&PIR1*8)+2;
volatile		bit	TMR2IF	@ ((unsigned)&PIR1*8)+1;
volatile		bit	TMR1IF	@ ((unsigned)&PIR1*8)+0;


/* Definitions for T1CON register */
volatile		bit	T1GINV	@ ((unsigned)&T1CON*8)+7;
volatile		bit	TMR1GE	@ ((unsigned)&T1CON*8)+6;
volatile		bit	T1CKPS1	@ ((unsigned)&T1CON*8)+5;
volatile		bit	T1CKPS0	@ ((unsigned)&T1CON*8)+4;
volatile		bit	T1OSCEN	@ ((unsigned)&T1CON*8)+3;
volatile		bit	T1SYNC	@ ((unsigned)&T1CON*8)+2;
volatile		bit	TMR1CS	@ ((unsigned)&T1CON*8)+1;
volatile		bit	TMR1ON	@ ((unsigned)&T1CON*8)+0;


/* Definitions for T2CON register */
volatile		bit	TOUTPS3	@ ((unsigned)&T2CON*8)+6;
volatile		bit	TOUTPS2	@ ((unsigned)&T2CON*8)+5;
volatile		bit	TOUTPS1	@ ((unsigned)&T2CON*8)+4;
volatile		bit	TOUTPS0	@ ((unsigned)&T2CON*8)+3;
volatile		bit	TMR2ON	@ ((unsigned)&T2CON*8)+2;
volatile		bit	T2CKPS1	@ ((unsigned)&T2CON*8)+1;
volatile		bit	T2CKPS0	@ ((unsigned)&T2CON*8)+0;

/* Definitions for BAUDCTL1 register */
volatile		bit	RCIDL1	@ ((unsigned)&BAUDCTL1*8)+6;
volatile		bit	SCKP1	@ ((unsigned)&BAUDCTL1*8)+4;
volatile		bit	BRG16EN1	@ ((unsigned)&BAUDCTL1*8)+3;

/* Definitions for BAUDCTL0 register */
volatile		bit	RCIDL	@ ((unsigned)&BAUDCTL0*8)+6;
volatile		bit	SCKP	@ ((unsigned)&BAUDCTL0*8)+4;
volatile		bit	BRG16EN0	@ ((unsigned)&BAUDCTL0*8)+3;


/* Definitions for RCSTA0 register */
volatile		bit	SPEN	@ ((unsigned)&RCSTA0*8)+7;
volatile		bit	RX9EN0		@ ((unsigned)&RCSTA0*8)+6;
volatile		bit	SREN	@ ((unsigned)&RCSTA0*8)+5;
volatile		bit	CREN	@ ((unsigned)&RCSTA0*8)+4;
volatile		bit	FERR	@ ((unsigned)&RCSTA0*8)+2;
volatile		bit	OERR	@ ((unsigned)&RCSTA0*8)+1;
volatile		bit	RX9D	@ ((unsigned)&RCSTA0*8)+0;


/* Definitions for RCSTA1 register */
volatile		bit	SPEN1	@ ((unsigned)&RCSTA1*8)+7;
volatile		bit	RX9EN1	@ ((unsigned)&RCSTA1*8)+6;
volatile		bit	SREN1	@ ((unsigned)&RCSTA1*8)+5;
volatile		bit	CREN1	@ ((unsigned)&RCSTA1*8)+4;
volatile		bit	FERR1	@ ((unsigned)&RCSTA1*8)+2;
volatile		bit	OERR1	@ ((unsigned)&RCSTA1*8)+1;
volatile		bit	RX9D1	@ ((unsigned)&RCSTA1*8)+0;

/* Definitions for PWMCON register */
volatile		bit	PWMSEL	@ ((unsigned)&PWMCON*8)+2;
volatile		bit	PWM1EN	@ ((unsigned)&PWMCON*8)+1;
volatile		bit	PWM0EN	@ ((unsigned)&PWMCON*8)+0;


/* Definitions for ADCON0 register */
volatile		bit	ADCS1	@ ((unsigned)&ADCON0*8)+7;
volatile		bit	ADCS0	@ ((unsigned)&ADCON0*8)+6;
volatile		bit	CHS3	@ ((unsigned)&ADCON0*8)+5;
volatile		bit	CHS2	@ ((unsigned)&ADCON0*8)+4;
volatile		bit	CHS1	@ ((unsigned)&ADCON0*8)+3;
volatile		bit	CHS0	@ ((unsigned)&ADCON0*8)+2;
volatile		bit	GODONE	@ ((unsigned)&ADCON0*8)+1;
volatile		bit	ADON	@ ((unsigned)&ADCON0*8)+0;

/* Definitions for OPTION_REG register */
volatile		bit	INTEDG	@ ((unsigned)&OPTION_REG*8)+6;
volatile		bit	T0CS	@ ((unsigned)&OPTION_REG*8)+5;
volatile		bit	T0SE	@ ((unsigned)&OPTION_REG*8)+4;
volatile		bit	PSA		@ ((unsigned)&OPTION_REG*8)+3;
volatile		bit	PS2		@ ((unsigned)&OPTION_REG*8)+2;
volatile		bit	PS1		@ ((unsigned)&OPTION_REG*8)+1;
volatile		bit	PS0		@ ((unsigned)&OPTION_REG*8)+0;

/* Definitions for TRISA register */
volatile		bit	TRISA7	@ ((unsigned)&TRISA*8)+7;
volatile		bit	TRISA6	@ ((unsigned)&TRISA*8)+6;
volatile		bit	TRISA5	@ ((unsigned)&TRISA*8)+5;
volatile		bit	TRISA4	@ ((unsigned)&TRISA*8)+4;
volatile		bit	TRISA3	@ ((unsigned)&TRISA*8)+3;
volatile		bit	TRISA2	@ ((unsigned)&TRISA*8)+2;
volatile		bit	TRISA1	@ ((unsigned)&TRISA*8)+1;
volatile		bit	TRISA0	@ ((unsigned)&TRISA*8)+0;

/* Definitions for TRISB register */
volatile		bit	TRISB7	@ ((unsigned)&TRISB*8)+7;
volatile		bit	TRISB6	@ ((unsigned)&TRISB*8)+6;
volatile		bit	TRISB5	@ ((unsigned)&TRISB*8)+5;
volatile		bit	TRISB4	@ ((unsigned)&TRISB*8)+4;
volatile		bit	TRISB3	@ ((unsigned)&TRISB*8)+3;
volatile		bit	TRISB2	@ ((unsigned)&TRISB*8)+2;
volatile		bit	TRISB1	@ ((unsigned)&TRISB*8)+1;
volatile		bit	TRISB0	@ ((unsigned)&TRISB*8)+0;

/* Definitions for TRISC register */
volatile		bit	TRISC7	@ ((unsigned)&TRISC*8)+7;
volatile		bit	TRISC6	@ ((unsigned)&TRISC*8)+6;
volatile		bit	TRISC5	@ ((unsigned)&TRISC*8)+5;
volatile		bit	TRISC4	@ ((unsigned)&TRISC*8)+4;
volatile		bit	TRISC3	@ ((unsigned)&TRISC*8)+3;
volatile		bit	TRISC2	@ ((unsigned)&TRISC*8)+2;
volatile		bit	TRISC1	@ ((unsigned)&TRISC*8)+1;
volatile		bit	TRISC0	@ ((unsigned)&TRISC*8)+0;

/* Definitions for TRISD register */
volatile		bit	TRISD7	@ ((unsigned)&TRISD*8)+7;
volatile		bit	TRISD6	@ ((unsigned)&TRISD*8)+6;
volatile		bit	TRISD5	@ ((unsigned)&TRISD*8)+5;
volatile		bit	TRISD4	@ ((unsigned)&TRISD*8)+4;
volatile		bit	TRISD3	@ ((unsigned)&TRISD*8)+3;
volatile		bit	TRISD2	@ ((unsigned)&TRISD*8)+2;
volatile		bit	TRISD1	@ ((unsigned)&TRISD*8)+1;
volatile		bit	TRISD0	@ ((unsigned)&TRISD*8)+0;

/* Definitions for WPUA register */
volatile		bit	WPUA7	@ ((unsigned)&WPUA*8)+7;
volatile		bit	WPUA6	@ ((unsigned)&WPUA*8)+6;
volatile		bit	WPUA5	@ ((unsigned)&WPUA*8)+5;
volatile		bit	WPUA4	@ ((unsigned)&WPUA*8)+4;
volatile		bit	WPUA3	@ ((unsigned)&WPUA*8)+3;
volatile		bit	WPUA2	@ ((unsigned)&WPUA*8)+2;
volatile		bit	WPUA1	@ ((unsigned)&WPUA*8)+1;
volatile		bit	WPUA0	@ ((unsigned)&WPUA*8)+0;

/* Definitions for WPUB register */
volatile		bit	WPUB7	@ ((unsigned)&WPUB*8)+7;
volatile		bit	WPUB6	@ ((unsigned)&WPUB*8)+6;
volatile		bit	WPUB5	@ ((unsigned)&WPUB*8)+5;
volatile		bit	WPUB4	@ ((unsigned)&WPUB*8)+4;
volatile		bit	WPUB3	@ ((unsigned)&WPUB*8)+3;
volatile		bit	WPUB2	@ ((unsigned)&WPUB*8)+2;
volatile		bit	WPUB1	@ ((unsigned)&WPUB*8)+1;
volatile		bit	WPUB0	@ ((unsigned)&WPUB*8)+0;

/* Definitions for WPUC register */
volatile		bit	WPUC7	@ ((unsigned)&WPUC*8)+7;
volatile		bit	WPUC6	@ ((unsigned)&WPUC*8)+6;
volatile		bit	WPUC5	@ ((unsigned)&WPUC*8)+5;
volatile		bit	WPUC4	@ ((unsigned)&WPUC*8)+4;
volatile		bit	WPUC3	@ ((unsigned)&WPUC*8)+3;
volatile		bit	WPUC2	@ ((unsigned)&WPUC*8)+2;
volatile		bit	WPUC1	@ ((unsigned)&WPUC*8)+1;
volatile		bit	WPUC0	@ ((unsigned)&WPUC*8)+0;


/* Definitions for WPUD register */
volatile		bit	WPUD7	@ ((unsigned)&WPUD*8)+7;
volatile		bit	WPUD6	@ ((unsigned)&WPUD*8)+6;
volatile		bit	WPUD5	@ ((unsigned)&WPUD*8)+5;
volatile		bit	WPUD4	@ ((unsigned)&WPUD*8)+4;
volatile		bit	WPUD3	@ ((unsigned)&WPUD*8)+3;
volatile		bit	WPUD2	@ ((unsigned)&WPUD*8)+2;
volatile		bit	WPUD1	@ ((unsigned)&WPUD*8)+1;
volatile		bit	WPUD0	@ ((unsigned)&WPUD*8)+0;

/* Definitions for WPDA register */
volatile		bit	WPDA7	@ ((unsigned)&WPDA*8)+7;
volatile		bit	WPDA6	@ ((unsigned)&WPDA*8)+6;
volatile		bit	WPDA5	@ ((unsigned)&WPDA*8)+5;
volatile		bit	WPDA4	@ ((unsigned)&WPDA*8)+4;
volatile		bit	WPDA3	@ ((unsigned)&WPDA*8)+3;
volatile		bit	WPDA2	@ ((unsigned)&WPDA*8)+2;
volatile		bit	WPDA1	@ ((unsigned)&WPDA*8)+1;
volatile		bit	WPDA0	@ ((unsigned)&WPDA*8)+0;

/* Definitions for WPDB register */
volatile		bit	WPDB7	@ ((unsigned)&WPDB*8)+7;
volatile		bit	WPDB6	@ ((unsigned)&WPDB*8)+6;
volatile		bit	WPDB5	@ ((unsigned)&WPDB*8)+5;
volatile		bit	WPDB4	@ ((unsigned)&WPDB*8)+4;
volatile		bit	WPDB3	@ ((unsigned)&WPDB*8)+3;
volatile		bit	WPDB2	@ ((unsigned)&WPDB*8)+2;
volatile		bit	WPDB1	@ ((unsigned)&WPDB*8)+1;
volatile		bit	WPDB0	@ ((unsigned)&WPDB*8)+0;

/* Definitions for WPDC register */
volatile		bit	WPDC7	@ ((unsigned)&WPDC*8)+7;
volatile		bit	WPDC6	@ ((unsigned)&WPDC*8)+6;
volatile		bit	WPDC5	@ ((unsigned)&WPDC*8)+5;
volatile		bit	WPDC4	@ ((unsigned)&WPDC*8)+4;
volatile		bit	WPDC3	@ ((unsigned)&WPDC*8)+3;
volatile		bit	WPDC2	@ ((unsigned)&WPDC*8)+2;
volatile		bit	WPDC1	@ ((unsigned)&WPDC*8)+1;
volatile		bit	WPDC0	@ ((unsigned)&WPDC*8)+0;

/* Definitions for WPDD register */
volatile		bit	WPDD7	@ ((unsigned)&WPDD*8)+7;
volatile		bit	WPDD6	@ ((unsigned)&WPDD*8)+6;
volatile		bit	WPDD5	@ ((unsigned)&WPDD*8)+5;
volatile		bit	WPDD4	@ ((unsigned)&WPDD*8)+4;
volatile		bit	WPDD3	@ ((unsigned)&WPDD*8)+3;
volatile		bit	WPDD2	@ ((unsigned)&WPDD*8)+2;
volatile		bit	WPDD1	@ ((unsigned)&WPDD*8)+1;
volatile		bit	WPDD0	@ ((unsigned)&WPDD*8)+0;

/* Definitions for PIE1 register */
volatile		bit	RC1IE	@ ((unsigned)&PIE1*8)+7;
volatile		bit	TX1IE	@ ((unsigned)&PIE1*8)+6;
volatile		bit	RC0IE	@ ((unsigned)&PIE1*8)+5;
volatile		bit	TX0IE	@ ((unsigned)&PIE1*8)+4;
volatile		bit	EEIE	@ ((unsigned)&PIE1*8)+3;
volatile		bit	ADIE	@ ((unsigned)&PIE1*8)+2;
volatile		bit	TMR2IE	@ ((unsigned)&PIE1*8)+1;
volatile		bit	TMR1IE	@ ((unsigned)&PIE1*8)+0;



/* Definitions for OSCCON register */
volatile		bit	IRCF2	@ ((unsigned)&OSCCON*8)+6;
volatile		bit	IRCF1	@ ((unsigned)&OSCCON*8)+5;
volatile		bit	IRCF0	@ ((unsigned)&OSCCON*8)+4;
volatile		bit	SCS		@ ((unsigned)&OSCCON*8)+0;


/* Definitions for OSCTUNE register */
volatile		bit	TUN6	@ ((unsigned)&OSCTUNE*8)+6;
volatile		bit	TUN5	@ ((unsigned)&OSCTUNE*8)+5;
volatile		bit	TUN4	@ ((unsigned)&OSCTUNE*8)+4;
volatile		bit	TUN3	@ ((unsigned)&OSCTUNE*8)+3;
volatile		bit	TUN2	@ ((unsigned)&OSCTUNE*8)+2;
volatile		bit	TUN1	@ ((unsigned)&OSCTUNE*8)+1;
volatile		bit	TUN0	@ ((unsigned)&OSCTUNE*8)+0;

/* Definitions for IOCB register */
volatile		bit	IOCB7	@ ((unsigned)&IOCB*8)+7;
volatile		bit	IOCB6	@ ((unsigned)&IOCB*8)+6;
volatile		bit	IOCB5	@ ((unsigned)&IOCB*8)+5;
volatile		bit	IOCB4	@ ((unsigned)&IOCB*8)+4;
volatile		bit	IOCB3	@ ((unsigned)&IOCB*8)+3;
volatile		bit	IOCB2	@ ((unsigned)&IOCB*8)+2;
volatile		bit	IOCB1	@ ((unsigned)&IOCB*8)+1;
volatile		bit	IOCB0	@ ((unsigned)&IOCB*8)+0;


/* Definitions for TXSTA1 register */
volatile		bit	CSRC1	@ ((unsigned)&TXSTA1*8)+7;
volatile		bit	TX9EN1	@ ((unsigned)&TXSTA1*8)+6;
volatile		bit	TXEN1	@ ((unsigned)&TXSTA1*8)+5;
volatile		bit	SYNC1	@ ((unsigned)&TXSTA1*8)+4;
volatile		bit	BRGHEN1	@ ((unsigned)&TXSTA1*8)+2;
volatile		bit	TRMT1	@ ((unsigned)&TXSTA1*8)+1;
volatile		bit	TX9D1	@ ((unsigned)&TXSTA1*8)+0;


/* Definitions for TXSTA0 register */
volatile		bit	CSRC 	@ ((unsigned)&TXSTA0*8)+7;
volatile		bit	TX9EN0 	@ ((unsigned)&TXSTA0*8)+6;
volatile		bit	TXEN	@ ((unsigned)&TXSTA0*8)+5;
volatile		bit	SYNC	@ ((unsigned)&TXSTA0*8)+4;
volatile		bit	BRGHEN0	@ ((unsigned)&TXSTA0*8)+2;
volatile		bit	TRMT	@ ((unsigned)&TXSTA0*8)+1;
volatile		bit	TX9D	@ ((unsigned)&TXSTA0*8)+0;


/* Definitions for ADCON1 register */
volatile		bit	ADFM	@ ((unsigned)&ADCON1*8)+7;
volatile		bit	CHS4	@ ((unsigned)&ADCON1*8)+6; 

/* Definitions for WDTCON register */
volatile		bit	SWDTEN	@ ((unsigned)&WDTCON*8)+0;

/* Definitions for LCDCON3 register */
volatile		bit	COM29EN	@ ((unsigned)&LCDCON3*8)+7;
volatile		bit	COM28EN	@ ((unsigned)&LCDCON3*8)+6;
volatile		bit	COM27EN	@ ((unsigned)&LCDCON3*8)+5;
volatile		bit	COM26EN	@ ((unsigned)&LCDCON3*8)+4;
volatile		bit	COM25EN	@ ((unsigned)&LCDCON3*8)+3;
volatile		bit	COM24EN	@ ((unsigned)&LCDCON3*8)+2;
volatile		bit	COM23EN	@ ((unsigned)&LCDCON3*8)+1;
volatile		bit	COM22EN	@ ((unsigned)&LCDCON3*8)+0;	 

/* Definitions for LCDCON register */	
volatile		bit	LCDEN	@ ((unsigned)&LCDCON*8)+7;
volatile		bit	LEDEN	@ ((unsigned)&LCDCON*8)+6;
volatile		bit	LCDF	@ ((unsigned)&LCDCON*8)+4;
volatile		bit	LEDCLK3	@ ((unsigned)&LCDCON*8)+3;
volatile		bit	LEDCLK2	@ ((unsigned)&LCDCON*8)+2;
volatile		bit	LEDCLK1	@ ((unsigned)&LCDCON*8)+1;
volatile		bit	LEDCLK0	@ ((unsigned)&LCDCON*8)+0;


/* Definitions for LCDCON0 register */
volatile		bit	COM7EN	@ ((unsigned)&LCDCON0*8)+7;
volatile		bit	COM6EN	@ ((unsigned)&LCDCON0*8)+6;
volatile		bit	COM5EN	@ ((unsigned)&LCDCON0*8)+5;
volatile		bit	COM4EN	@ ((unsigned)&LCDCON0*8)+4;
volatile		bit	COM3EN	@ ((unsigned)&LCDCON0*8)+3;
volatile		bit	COM2EN	@ ((unsigned)&LCDCON0*8)+2;
volatile		bit	COM1EN	@ ((unsigned)&LCDCON0*8)+1;
volatile		bit	COM0EN	@ ((unsigned)&LCDCON0*8)+0; 

/* Definitions for LCDCON1 register */
volatile		bit	COM15EN	@ ((unsigned)&LCDCON1*8)+7;
volatile		bit	COM14EN	@ ((unsigned)&LCDCON1*8)+6;
volatile		bit	COM13EN	@ ((unsigned)&LCDCON1*8)+5;
volatile		bit	COM12EN	@ ((unsigned)&LCDCON1*8)+4;
volatile		bit	COM11EN	@ ((unsigned)&LCDCON1*8)+3;
volatile		bit	COM10EN	@ ((unsigned)&LCDCON1*8)+2;
volatile		bit	COM9EN	@ ((unsigned)&LCDCON1*8)+1;
volatile		bit	COM8EN	@ ((unsigned)&LCDCON1*8)+0; 


/* Definitions for LCDCON2 register */
volatile		bit	LCDISEL1	@ ((unsigned)&LCDCON2*8)+7;
volatile		bit	LCDISEL0	@ ((unsigned)&LCDCON2*8)+6;
volatile		bit	COM21EN		@ ((unsigned)&LCDCON2*8)+5;
volatile		bit	COM20EN		@ ((unsigned)&LCDCON2*8)+4;
volatile		bit	COM19EN		@ ((unsigned)&LCDCON2*8)+3;
volatile		bit	COM18EN		@ ((unsigned)&LCDCON2*8)+2;
volatile		bit	COM17EN		@ ((unsigned)&LCDCON2*8)+1;
volatile		bit	COM16EN		@ ((unsigned)&LCDCON2*8)+0;


/* Definitions for SEGEN2 register */
volatile		bit	SEGDRI3	@ ((unsigned)&SEGEN2*8)+7;
volatile		bit	SEGDRI2	@ ((unsigned)&SEGEN2*8)+6;
volatile		bit	SEGDRI1	@ ((unsigned)&SEGEN2*8)+5;
volatile		bit	SEGDRI0	@ ((unsigned)&SEGEN2*8)+4;

/* Definitions for SEGEN1 register */	 
volatile		bit	SEG15EN	@ ((unsigned)&SEGEN1*8)+7;
volatile		bit	SEG14EN	@ ((unsigned)&SEGEN1*8)+6;
volatile		bit	SEG13EN	@ ((unsigned)&SEGEN1*8)+5;
volatile		bit	SEG12EN	@ ((unsigned)&SEGEN1*8)+4;
volatile		bit	SEG11EN	@ ((unsigned)&SEGEN1*8)+3;
volatile		bit	SEG10EN	@ ((unsigned)&SEGEN1*8)+2;
volatile		bit	SEG9EN	@ ((unsigned)&SEGEN1*8)+1;
volatile		bit	SEG8EN	@ ((unsigned)&SEGEN1*8)+0;

/* Definitions for SEGEN0 register */	
volatile		bit	SEG7EN	@ ((unsigned)&SEGEN0*8)+7;
volatile		bit	SEG6EN	@ ((unsigned)&SEGEN0*8)+6;
volatile		bit	SEG5EN	@ ((unsigned)&SEGEN0*8)+5;
volatile		bit	SEG4EN	@ ((unsigned)&SEGEN0*8)+4;
volatile		bit	SEG3EN	@ ((unsigned)&SEGEN0*8)+3;
volatile		bit	SEG2EN	@ ((unsigned)&SEGEN0*8)+2;
volatile		bit	SEG1EN	@ ((unsigned)&SEGEN0*8)+1;
volatile		bit	SEG0EN	@ ((unsigned)&SEGEN0*8)+0;



/* Definitions for EECON1 register */
volatile		bit	EEPGD	@ ((unsigned)&EECON1*8)+7;
volatile		bit	WRERR	@ ((unsigned)&EECON1*8)+3;
volatile		bit	WREN	@ ((unsigned)&EECON1*8)+2;
volatile		bit	WR		@ ((unsigned)&EECON1*8)+1;
volatile		bit	RD		@ ((unsigned)&EECON1*8)+0;



#endif
