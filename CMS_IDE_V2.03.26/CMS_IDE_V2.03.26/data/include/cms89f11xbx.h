
#ifndef	_HTC_H_
#warning Header file cms89f11xbx.h included directly. Use #include <cms.h> instead.
#endif

 /* header file for the cms microcontroller。 Base On Datasheet V1.1
	CMS89F111B1
	CMS89F112B
	CMS89F113B
    CMS89F113B1
 */

#ifndef	__CMS89F11XBX_H__
#define	__CMS89F11XBX_H__

// Special function register definitions

volatile	unsigned char	INDF			@0x000;
volatile	unsigned char	IAR				@0x000;
volatile	unsigned char	TMR0			@0x001;
volatile	unsigned char	PCL				@0x002;
volatile	unsigned char	STATUS			@0x003;//
volatile	unsigned char	FLAGS			@0x003;
volatile	unsigned char	FSR				@0x004;
volatile	unsigned char	MP				@0x004;
volatile	unsigned char	P0				@0x005;//
volatile	unsigned char	P1				@0x006;//
volatile	unsigned char	P2				@0x007;//


volatile	unsigned char	P0CL			@0x009;
volatile	unsigned char	PCLATH			@0x00A;
volatile	unsigned char	P1CL			@0x00B;
volatile	unsigned char	P1CH			@0x00C;
volatile	unsigned char	P2C				@0x00D;
volatile	unsigned char	P0CH			@0x00E;
volatile	unsigned char	OPTION			@0x00F;
volatile	unsigned char	OPTION_REG		@0x00F;//

volatile	unsigned char	SYS_GEN			@0x010;//
volatile	unsigned char	INT_EN			@0x011;//
volatile	unsigned char	INT_FLAG		@0x012;//
volatile	unsigned char	INT_EXT			@0x013;
volatile	unsigned char	ADDATAH			@0x014;//
volatile	unsigned char	ADCON			@0x015;//
volatile	unsigned char	TMR1			@0x016;
volatile	unsigned char	TMR1C			@0x017;//
volatile	unsigned char	T2CNT			@0x018;//
volatile	unsigned char	T2CON			@0x019;//
volatile	unsigned char	T2DATA			@0x01A;
volatile	unsigned char	ADDATAL			@0x01B;
volatile	unsigned char	PWM8DATA		@0x01C;
volatile	unsigned char	PWM8CON			@0x01D;//
volatile	unsigned char	PWM10CON		@0x01E;//
volatile	unsigned char	PWM10DATA		@0x01F;

volatile	unsigned char	COMPCON			@0x020;//
volatile	unsigned char	BUZCON			@0x021;
volatile	unsigned char	TABLE_SPH		@0x022;
volatile	unsigned char	TABLE_SPL		@0x023;
volatile	unsigned char	TABLE_DATAH		@0x024;

volatile	unsigned char	LCDCON			@0x028;//
volatile	unsigned char	IOCA			@0x029;



/*Definitions for STATUS register*/
volatile	bit	C			@((unsigned)&STATUS*8)+0;
volatile	bit	CARRY		@((unsigned)&STATUS*8)+0;
volatile	bit	DC			@((unsigned)&STATUS*8)+1;
volatile	bit	Z			@((unsigned)&STATUS*8)+2;
volatile	bit	ZERO		@((unsigned)&STATUS*8)+2;
volatile	bit	PD			@((unsigned)&STATUS*8)+3;
volatile	bit	TO			@((unsigned)&STATUS*8)+4;
volatile	bit	RP			@((unsigned)&STATUS*8)+5;


/*Definitions for P0 register*/
volatile	bit	P00			@((unsigned)&P0*8)+0;
volatile	bit	P01			@((unsigned)&P0*8)+1;
volatile	bit	P02			@((unsigned)&P0*8)+2;
volatile	bit	P03			@((unsigned)&P0*8)+3;
volatile	bit	P04			@((unsigned)&P0*8)+4;
volatile	bit	P05			@((unsigned)&P0*8)+5;
volatile	bit	P06			@((unsigned)&P0*8)+6;
volatile	bit	P07			@((unsigned)&P0*8)+7;



/*Definitions for P1 register*/
volatile	bit	P10			@((unsigned)&P1*8)+0;
volatile	bit	P11			@((unsigned)&P1*8)+1;
volatile	bit	P12			@((unsigned)&P1*8)+2;
volatile	bit	P13			@((unsigned)&P1*8)+3;
volatile	bit	P14			@((unsigned)&P1*8)+4;
volatile	bit	P15			@((unsigned)&P1*8)+5;
volatile	bit	P16			@((unsigned)&P1*8)+6;


/*Definitions for P2 register*/
volatile	bit	P20			@((unsigned)&P2*8)+0;
volatile	bit	P21			@((unsigned)&P2*8)+1;
volatile	bit	P22			@((unsigned)&P2*8)+2;



/*Definitions for OPTION_REG register*/
volatile	bit	PS0			@((unsigned)&OPTION_REG*8)+0;
volatile	bit	PS1			@((unsigned)&OPTION_REG*8)+1;
volatile	bit	PS2			@((unsigned)&OPTION_REG*8)+2;
volatile	bit	PSA			@((unsigned)&OPTION_REG*8)+3;
volatile	bit	T0SE		@((unsigned)&OPTION_REG*8)+4;
volatile	bit	T0CS		@((unsigned)&OPTION_REG*8)+5;



/*Definitions for SYS_GEN register*/
volatile	bit INT_GEN		@((unsigned)&SYS_GEN*8)+0;
volatile	bit	ADC_EN		@((unsigned)&SYS_GEN*8)+1;



/*Definitions for INT_EN register*/
volatile	bit	EN_EXT0		@((unsigned)&INT_EN*8)+0;
volatile	bit	EN_EXT1		@((unsigned)&INT_EN*8)+1;
volatile	bit	EN_T2		@((unsigned)&INT_EN*8)+2;
volatile	bit	EN_T1		@((unsigned)&INT_EN*8)+3;
volatile	bit	EN_KEY		@((unsigned)&INT_EN*8)+4;
volatile	bit	EN_AD		@((unsigned)&INT_EN*8)+5;
volatile	bit	EN_EXT2		@((unsigned)&INT_EN*8)+6;
volatile	bit	EN_IOCA		@((unsigned)&INT_EN*8)+7;



/*Definitions for INT_FLAG register*/
volatile	bit	F_EXT0		@((unsigned)&INT_FLAG*8)+0;
volatile	bit	F_EXT1		@((unsigned)&INT_FLAG*8)+1;
volatile	bit	F_T2		@((unsigned)&INT_FLAG*8)+2;
volatile	bit	F_T1		@((unsigned)&INT_FLAG*8)+3;
volatile	bit	F_KEY		@((unsigned)&INT_FLAG*8)+4;
volatile	bit	F_AD		@((unsigned)&INT_FLAG*8)+5;
volatile	bit	F_EXT2		@((unsigned)&INT_FLAG*8)+6;
volatile	bit	F_IOCA		@((unsigned)&INT_FLAG*8)+7;



/*Definitions for ADCON register*/
volatile	bit	CONV		@((unsigned)&ADCON*8)+0;
volatile	bit	EOC			@((unsigned)&ADCON*8)+3;


/*Definitions for TMR1C register*/
volatile	bit	PSC0		@((unsigned)&TMR1C*8)+0;
volatile	bit	PSC1		@((unsigned)&TMR1C*8)+1;
volatile	bit	PSC2		@((unsigned)&TMR1C*8)+2;
volatile	bit	TE			@((unsigned)&TMR1C*8)+3;
volatile	bit	TON			@((unsigned)&TMR1C*8)+4;
volatile	bit	TM0			@((unsigned)&TMR1C*8)+6;
volatile	bit	TM1			@((unsigned)&TMR1C*8)+7;



/*Definitions for T2CON register*/
volatile	bit	T2_CLR		@((unsigned)&T2CON*8)+0;
volatile	bit	T2C0		@((unsigned)&T2CON*8)+4;
volatile	bit	T2C1		@((unsigned)&T2CON*8)+5;



/*Definitions for PWM8CON register*/
volatile	bit	PWM8_EN		@((unsigned)&PWM8CON*8)+0;



/*Definitions for PWM10CON register*/
volatile	bit	PWM10_EN	@((unsigned)&PWM10CON*8)+0;



/*Definitions for COMPCON register*/
volatile	bit	COMP0_EN	@((unsigned)&COMPCON*8)+0;
volatile	bit	APLUS0		@((unsigned)&COMPCON*8)+1;
volatile	bit	APLUS1		@((unsigned)&COMPCON*8)+2;
volatile	bit	APLUS2		@((unsigned)&COMPCON*8)+3;
volatile	bit	COMP1_EN	@((unsigned)&COMPCON*8)+4;
volatile	bit	BPLUS0		@((unsigned)&COMPCON*8)+5;
volatile	bit	BPLUS1		@((unsigned)&COMPCON*8)+6;
volatile	bit	BPLUS2		@((unsigned)&COMPCON*8)+7;


/*Definitions for LCDCON register*/
volatile	bit	LCDEN		@((unsigned)&LCDCON*8)+0;
volatile	bit	COM0EN		@((unsigned)&LCDCON*8)+4;
volatile	bit	COM1EN		@((unsigned)&LCDCON*8)+5;
volatile	bit	COM2EN		@((unsigned)&LCDCON*8)+6;
volatile	bit	COM3EN		@((unsigned)&LCDCON*8)+7;


#endif
