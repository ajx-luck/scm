
#ifndef	_HTC_H_
#warning Header file cms89ft628.h included directly. Use #include <cms.h> instead.
#endif

 /* header file for the cms microcontroller
	CMS89FT626
	CMS89FT627
	CMS89FT628
 */

#ifndef	__CMS89FT628_H
#define	__CMS89FT628_H

// Special function register definitions
//----- BANK0 Register -----------------------------------------------------
volatile	unsigned char	INDF		@	0x000;
volatile	unsigned char	TMR0		@	0x001;
volatile	unsigned char	PCL			@	0x002;
volatile	unsigned char	STATUS		@	0x003;
volatile	unsigned char	FLAGS		@	0x003;
volatile	unsigned char	FSR			@	0x004;
volatile	unsigned char	PORTA		@	0x005;
volatile	unsigned char	PORTB		@	0x006;
volatile	unsigned char	PORTC		@	0x007;
volatile	unsigned char	PORTD		@	0x008;
volatile	unsigned char	WPUC		@	0x009;
volatile	unsigned char	PCLATH		@	0x00A;
volatile	unsigned char	INTCON		@	0x00B;
volatile	unsigned char	PIR1		@	0x00C;
volatile	unsigned char	PIR2		@	0x00D;

volatile	unsigned char	TMR2		@	0x011;
volatile	unsigned char	T2CON		@	0x012;

volatile	unsigned int	TKM016D		@ 0x013;
volatile	unsigned char	TKM016DL	@	0x013;
volatile	unsigned char	TKM016DH	@	0x014;

volatile	unsigned int	TKM0RO		@ 0x015;
volatile	unsigned char	TKM0ROL		@	0x015;
volatile	unsigned char	TKM0ROH		@	0x016;

volatile	unsigned char	TKM0C1		@	0x017;
volatile	unsigned char	TKM0C0		@	0x018;

volatile	unsigned char	ADRESH		@	0x01E;
volatile	unsigned char	ADCON0		@	0x01F;
	
//----- BANK1 Register -----------------------------------------------------
//volatile	unsigned char	INDF		@	0x080;
volatile	unsigned char	OPTION_REG	@	0x081;
//volatile	unsigned char	PCL			@	0x082;
//volatile	unsigned char	STATUS		@	0x083;
//volatile	unsigned char	FSR			@	0x084;
volatile	unsigned char	TRISA		@	0x085;
volatile	unsigned char	TRISB		@	0x086;
volatile	unsigned char	TRISC		@	0x087;
volatile	unsigned char	TRISD		@	0x088;
volatile	unsigned char	WPUD		@	0x089;
//volatile	unsigned char	PCLATH		@	0x08A;
//volatile	unsigned char	INTCON		@	0x08B;
volatile	unsigned char	PIE1		@	0x08C;
volatile	unsigned char	PIE2		@	0x08D;

volatile	unsigned char	OSCCON		@	0x08F;
volatile	unsigned char	OSCTUNE		@	0x090;
volatile	unsigned char	SSPCON2		@	0x091;
volatile	unsigned char	PR2			@	0x092;
volatile	unsigned char	SSPADD		@	0x093;
volatile	unsigned char	SSPMSK		@	0x093;
volatile	unsigned char	SSPSTAT		@	0x094;
volatile	unsigned char	SSPCON		@	0x095;
volatile	unsigned char	SSPBUF		@	0x096;

volatile	unsigned int	TKM116D		@ 0x098;
volatile	unsigned char	TKM116DL	@	0x098;
volatile	unsigned char	TKM116DH	@	0x099;

volatile	unsigned int	TKM1RO		@ 0x09A;
volatile	unsigned char	TKM1ROL		@	0x09A;
volatile	unsigned char	TKM1ROH		@	0x09B;

volatile	unsigned char	TKM1C1		@	0x09C;
volatile	unsigned char	TKM1C0		@	0x09D;
volatile	unsigned char	ADRESL		@	0x09E;
volatile	unsigned char	ADCON1		@	0x09F;

//----- BANK2 Register -----------------------------------------------------
//volatile	unsigned char	INDF		@	0x100;
//volatile	unsigned char	TMR0		@	0x101;
//volatile	unsigned char	PCL			@	0x102;
//volatile	unsigned char	STATUS		@	0x103;
//volatile	unsigned char	FSR			@	0x104;
volatile	unsigned char	WDTCON		@	0x105;
//volatile	unsigned char	PORTB		@	0x106;
volatile	unsigned char	WPUB		@	0x107;
volatile	unsigned char	WPUA		@	0x108;

//volatile	unsigned char	PCLATH		@	0x10A;
//volatile	unsigned char	INTCON		@	0x10B;
volatile	unsigned char	EEDAT		@	0x10C;
volatile	unsigned char	EEDATA		@	0x10C;
volatile	unsigned char	EEADR		@	0x10D;
volatile    unsigned char	EEADRL		@	0x10D;
volatile	unsigned char	EEDATH		@	0x10E;

volatile	unsigned char	TABLE_SPH	@	0x110;
volatile	unsigned char	TABLE_SPL	@	0x111;
volatile	unsigned char	TABLE_DATAH	@	0x112;

volatile    unsigned int	TK16D		@ 0x113;
volatile	unsigned char	TK16DL		@	0x113;
volatile	unsigned char	TK16DH		@	0x114;

volatile	unsigned char	TKTMR		@	0x115;
volatile	unsigned char	TKC0		@	0x116;
volatile	unsigned char	TKC1		@	0x117;

volatile	unsigned char	LEDCON0		@	0x118;
volatile	unsigned char	LEDCON1		@	0x119;
volatile	unsigned char	LEDADD		@	0x11A;
volatile	unsigned char	LEDDATA		@	0x11B;

volatile	unsigned char	LCDCON0		@	0x118;
volatile	unsigned char	LCDCON1		@	0x119;
volatile	unsigned char	LCDADD		@	0x11A;
volatile	unsigned char	LCDDATA		@	0x11B;
volatile	unsigned char	SEGEN2		@	0x11C;
volatile	unsigned char	SEGEN1		@	0x11D;
volatile	unsigned char	SEGEN0		@	0x11E;
volatile	unsigned char	COMEN		@	0x11F;
//----- BANK3 Register -----------------------------------------------------
//volatile	unsigned char	INDF		@	0x180;
//volatile	unsigned char	OPTION_REG	@	0x181;
//volatile	unsigned char	PCL			@	0x182;
//volatile	unsigned char	STATUS		@	0x183;
//volatile	unsigned char	FSR			@	0x184;

//volatile	unsigned char	TRISB		@	0x186;

//volatile	unsigned char	PCLATH		@	0x18A;
//volatile	unsigned char	INTCON		@	0x18B;
volatile	unsigned char	EECON1		@	0x18C;
volatile	unsigned char	EECON2		@	0x18D;

volatile	unsigned int	TKM216D		@ 0x18E;
volatile	unsigned char	TKM216DL	@	0x18E;
volatile	unsigned char	TKM216DH	@	0x18F;

volatile    unsigned int	TKM2RO		@ 0x190;
volatile	unsigned char	TKM2ROL		@	0x190;
volatile	unsigned char	TKM2ROH		@	0x191;

volatile	unsigned char	TKM2C1		@	0x192;
volatile	unsigned char	TKM2C0		@	0x193;



//**************************************************************************
//----- BANK0 Register -----------------------------------------------------
/* Definitions for STATUS register */
volatile		bit	IRP		@ ((unsigned)&STATUS*8)+7;
volatile		bit	TO		@ ((unsigned)&STATUS*8)+4;
volatile		bit	PD		@ ((unsigned)&STATUS*8)+3;
volatile		bit	ZERO	@ ((unsigned)&STATUS*8)+2;
volatile		bit	DC		@ ((unsigned)&STATUS*8)+1;
volatile		bit	CARRY	@ ((unsigned)&STATUS*8)+0;

/* Definitions for PORTA register */
volatile		bit	RA7		@ ((unsigned)&PORTA*8)+7;
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

/* Definitions for WPUC register */
volatile		bit	WPUC3	@ ((unsigned)&WPUC*8)+3;
volatile		bit	WPUC2	@ ((unsigned)&WPUC*8)+2;
volatile		bit	WPUC1	@ ((unsigned)&WPUC*8)+1;
volatile		bit	WPUC0	@ ((unsigned)&WPUC*8)+0;

/* Definitions for INTCON register */
volatile		bit	GIE		@ ((unsigned)&INTCON*8)+7;
volatile		bit	PEIE	@ ((unsigned)&INTCON*8)+6;
volatile		bit	T0IE	@ ((unsigned)&INTCON*8)+5;
volatile		bit	INTE	@ ((unsigned)&INTCON*8)+4;
volatile		bit	T0IF	@ ((unsigned)&INTCON*8)+2;
volatile		bit	INTF	@ ((unsigned)&INTCON*8)+1;

/* Definitions for PIR1 register */
volatile		bit	ADIF	@ ((unsigned)&PIR1*8)+6;
volatile		bit	TKIF	@ ((unsigned)&PIR1*8)+5;
volatile		bit	BCLIF	@ ((unsigned)&PIR1*8)+2;
volatile		bit	TMR2IF	@ ((unsigned)&PIR1*8)+1;

/* Definitions for PIR2 register */
volatile		bit	EEIF	@ ((unsigned)&PIR2*8)+4;
volatile		bit	SSPIF	@ ((unsigned)&PIR2*8)+0;

/* Definitions for T2CON register */
volatile		bit	TOUTPS3	@ ((unsigned)&T2CON*8)+6;
volatile		bit	TOUTPS2	@ ((unsigned)&T2CON*8)+5;
volatile		bit	TOUTPS1	@ ((unsigned)&T2CON*8)+4;
volatile		bit	TOUTPS0	@ ((unsigned)&T2CON*8)+3;
volatile		bit	TMR2ON	@ ((unsigned)&T2CON*8)+2;
volatile		bit	T2CKPS1	@ ((unsigned)&T2CON*8)+1;
volatile		bit	T2CKPS0	@ ((unsigned)&T2CON*8)+0;

/* Definitions for ADCON0 register */
volatile		bit	ADCS1	@ ((unsigned)&ADCON0*8)+7;
volatile		bit	ADCS0	@ ((unsigned)&ADCON0*8)+6;
volatile		bit	CHS3	@ ((unsigned)&ADCON0*8)+5;
volatile		bit	CHS2	@ ((unsigned)&ADCON0*8)+4;
volatile		bit	CHS1	@ ((unsigned)&ADCON0*8)+3;
volatile		bit	CHS0	@ ((unsigned)&ADCON0*8)+2;
volatile		bit	GODONE	@ ((unsigned)&ADCON0*8)+1;
volatile		bit	GO		@ ((unsigned)&ADCON0*8)+1;
volatile		bit	NOT_DONE	@ ((unsigned)&ADCON0*8)+1;
volatile		bit	ADON	@ ((unsigned)&ADCON0*8)+0;

//**************************************************************************
//----- BANK1 Register -----------------------------------------------------
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

/* Definitions for WPUD register */
volatile		bit	WPUD7	@ ((unsigned)&WPUD*8)+7;
volatile		bit	WPUD6	@ ((unsigned)&WPUD*8)+6;
volatile		bit	WPUD5	@ ((unsigned)&WPUD*8)+5;
volatile		bit	WPUD4	@ ((unsigned)&WPUD*8)+4;
volatile		bit	WPUD3	@ ((unsigned)&WPUD*8)+3;
volatile		bit	WPUD2	@ ((unsigned)&WPUD*8)+2;
volatile		bit	WPUD1	@ ((unsigned)&WPUD*8)+1;
volatile		bit	WPUD0	@ ((unsigned)&WPUD*8)+0;

/* Definitions for PIE1 register */
volatile		bit	ADIE	@ ((unsigned)&PIE1*8)+6;
volatile		bit	TKIE	@ ((unsigned)&PIE1*8)+5;
volatile		bit	BCLIE	@ ((unsigned)&PIE1*8)+2;
volatile		bit	TMR2IE	@ ((unsigned)&PIE1*8)+1;

/* Definitions for PIE2 register */
volatile		bit	EEIE	@ ((unsigned)&PIE2*8)+4;
volatile		bit	SSPIE	@ ((unsigned)&PIE2*8)+0;

/* Definitions for OSCCON register */
volatile		bit	IRCF2	@ ((unsigned)&OSCCON*8)+6;
volatile		bit	IRCF1	@ ((unsigned)&OSCCON*8)+5;
volatile		bit	IRCF0	@ ((unsigned)&OSCCON*8)+4;
volatile		bit	SCS		@ ((unsigned)&OSCCON*8)+0;

/* Definitions for OSCTUNE register */
volatile		bit	TUN4	@ ((unsigned)&OSCTUNE*8)+4;
volatile		bit	TUN3	@ ((unsigned)&OSCTUNE*8)+3;
volatile		bit	TUN2	@ ((unsigned)&OSCTUNE*8)+2;
volatile		bit	TUN1	@ ((unsigned)&OSCTUNE*8)+1;
volatile		bit	TUN0	@ ((unsigned)&OSCTUNE*8)+0;

/* Definitions for SSPCON2 register */
volatile		bit	GCEN	@ ((unsigned)&SSPCON2*8)+7;
volatile		bit	ACKSTAT	@ ((unsigned)&SSPCON2*8)+6;
volatile		bit	ACKDT	@ ((unsigned)&SSPCON2*8)+5;
volatile		bit	ACKEN	@ ((unsigned)&SSPCON2*8)+4;
volatile		bit	RCEN	@ ((unsigned)&SSPCON2*8)+3;
volatile		bit	PEN		@ ((unsigned)&SSPCON2*8)+2;
volatile		bit	RSEN	@ ((unsigned)&SSPCON2*8)+1;
volatile		bit	SEN		@ ((unsigned)&SSPCON2*8)+0;

/* Definitions for SSPSTAT register */
volatile		bit	SMP		@ ((unsigned)&SSPSTAT*8)+7;
volatile		bit	CKE		@ ((unsigned)&SSPSTAT*8)+6;
volatile		bit	DA		@ ((unsigned)&SSPSTAT*8)+5;
volatile		bit	P		@ ((unsigned)&SSPSTAT*8)+4;
volatile		bit	STOP	@ ((unsigned)&SSPSTAT*8)+4;
volatile		bit	S		@ ((unsigned)&SSPSTAT*8)+3;
volatile		bit	START	@ ((unsigned)&SSPSTAT*8)+3;
volatile		bit	RW		@ ((unsigned)&SSPSTAT*8)+2;
volatile		bit	UA		@ ((unsigned)&SSPSTAT*8)+1;
volatile		bit	BF		@ ((unsigned)&SSPSTAT*8)+0;

/* Definitions for SSPCON register */
volatile		bit	WCOL	@ ((unsigned)&SSPCON*8)+7;
volatile		bit	SSPOV	@ ((unsigned)&SSPCON*8)+6;
volatile		bit	SSPEN	@ ((unsigned)&SSPCON*8)+5;
volatile		bit	CKP		@ ((unsigned)&SSPCON*8)+4;
volatile		bit	SSPM3	@ ((unsigned)&SSPCON*8)+3;
volatile		bit	SSPM2	@ ((unsigned)&SSPCON*8)+2;
volatile		bit	SSPM1	@ ((unsigned)&SSPCON*8)+1;
volatile		bit	SSPM0	@ ((unsigned)&SSPCON*8)+0;

/* Definitions for ADCON1 register */
volatile		bit	ADFM	@ ((unsigned)&ADCON1*8)+7;

//**************************************************************************
//----- BANK2 Register -----------------------------------------------------
/* Definitions for WPUB register */
volatile		bit	WPUB7	@ ((unsigned)&WPUB*8)+7;
volatile		bit	WPUB6	@ ((unsigned)&WPUB*8)+6;
volatile		bit	WPUB5	@ ((unsigned)&WPUB*8)+5;
volatile		bit	WPUB4	@ ((unsigned)&WPUB*8)+4;
volatile		bit	WPUB3	@ ((unsigned)&WPUB*8)+3;
volatile		bit	WPUB2	@ ((unsigned)&WPUB*8)+2;
volatile		bit	WPUB1	@ ((unsigned)&WPUB*8)+1;
volatile		bit	WPUB0	@ ((unsigned)&WPUB*8)+0;

/* Definitions for WPUA register */
volatile		bit	WPUA7	@ ((unsigned)&WPUA*8)+7;
volatile		bit	WPUA4	@ ((unsigned)&WPUA*8)+4;
volatile		bit	WPUA3	@ ((unsigned)&WPUA*8)+3;
volatile		bit	WPUA2	@ ((unsigned)&WPUA*8)+2;
volatile		bit	WPUA1	@ ((unsigned)&WPUA*8)+1;
volatile		bit	WPUA0	@ ((unsigned)&WPUA*8)+0;

/* Definitions for LCDCON0 register */
volatile		bit	LCDEN	@ ((unsigned)&LCDCON0*8)+7;
volatile		bit	LEDEN	@ ((unsigned)&LCDCON0*8)+6;
volatile		bit	COMSEL1	@ ((unsigned)&LCDCON0*8)+5;
volatile		bit	COMSEL0	@ ((unsigned)&LCDCON0*8)+4;
volatile		bit	LCDCLK3	@ ((unsigned)&LCDCON0*8)+3;
volatile		bit	LCDCLK2	@ ((unsigned)&LCDCON0*8)+2;
volatile		bit	LCDCLK1	@ ((unsigned)&LCDCON0*8)+1;
volatile		bit	LCDCLK0	@ ((unsigned)&LCDCON0*8)+0;

/* Definitions for LCDCON1 register */
volatile		bit	VLCDS	@ ((unsigned)&LCDCON1*8)+7;
volatile		bit	SEGOUT1	@ ((unsigned)&LCDCON1*8)+5;
volatile		bit	SEGOUT0	@ ((unsigned)&LCDCON1*8)+4;
volatile		bit	VSTEPS3	@ ((unsigned)&LCDCON1*8)+3;
volatile		bit	VSTEPS2	@ ((unsigned)&LCDCON1*8)+2;
volatile		bit	VSTEPS1	@ ((unsigned)&LCDCON1*8)+1;
volatile		bit	VSTEPS0	@ ((unsigned)&LCDCON1*8)+0;

/* Definitions for LCDADD register */
volatile		bit	LCDCS	@ ((unsigned)&LCDADD*8)+7;
volatile		bit	LCDADD6	@ ((unsigned)&LCDADD*8)+6;
volatile		bit	LCDADD5	@ ((unsigned)&LCDADD*8)+5;
volatile		bit	LCDADD4	@ ((unsigned)&LCDADD*8)+4;
volatile		bit	LCDADD3	@ ((unsigned)&LCDADD*8)+3;
volatile		bit	LCDADD2	@ ((unsigned)&LCDADD*8)+2;
volatile		bit	LCDADD1	@ ((unsigned)&LCDADD*8)+1;
volatile		bit	LCDADD0	@ ((unsigned)&LCDADD*8)+0;

//**************************************************************************
//----- BANK3 Register -----------------------------------------------------
/* Definitions for EECON1 register */
volatile		bit	EEPGD	@ ((unsigned)&EECON1*8)+7;
volatile		bit	WRERR	@ ((unsigned)&EECON1*8)+3;
volatile		bit	WREN	@ ((unsigned)&EECON1*8)+2;
volatile		bit	WR		@ ((unsigned)&EECON1*8)+1;
volatile		bit	RD		@ ((unsigned)&EECON1*8)+0;



#endif
