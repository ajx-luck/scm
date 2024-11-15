
#ifndef	_HTC_H_
#warning Header file cms69f326.h included directly. Use #include <htc.h> instead.
#endif

 /* header file for the cms microcontroller
	69F326
	69F326B
 */

#ifndef	__CMS69F326_H
#define	__CMS69F326_H

// Special function register definitions

volatile       unsigned char	INDF		@ 0x000;
volatile       unsigned char	TMR0		@ 0x001;
volatile       unsigned char	PCL		    @ 0x002;
volatile       unsigned char	STATUS		@ 0x003;
volatile	   unsigned char	FSR		    @ 0x004;
volatile       unsigned char	PORTA		@ 0x005;
volatile       unsigned char	PORTB		@ 0x006;
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

volatile       unsigned char	ADRESH		@ 0x01E;
volatile       unsigned char	ADCON0		@ 0x01F;

volatile	   unsigned char	OPTION_REG	@ 0x081;
volatile       unsigned char	TRISA		@ 0x085;
volatile       unsigned char	TRISB		@ 0x086;

volatile       unsigned char	TRISD		@ 0x088;
volatile       unsigned char	TRISE		@ 0x089;
volatile       unsigned char	PIE1		@ 0x08C;
volatile	   unsigned char	PIE2		@ 0x08D;
volatile       unsigned char	OSCCON		@ 0x08F;
volatile	   unsigned char	OSCTUNE		@ 0x090;
volatile	   unsigned char	PR2		    @ 0x092;
volatile	   unsigned char	WPUB		@ 0x095;
volatile	   unsigned char	IOCB		@ 0x096;
volatile       unsigned char	ADRESL		@ 0x09E;
volatile	   unsigned char	ADCON1		@ 0x09F;

volatile       unsigned char	WDTCON		@ 0x105;
volatile       unsigned char	CM1CON0		@ 0x107;
volatile       unsigned char	CM2CON0		@ 0x108;
volatile       unsigned char	CM2CON1		@ 0x109;

volatile       unsigned char	TABLE_SPH	@ 0x110;
volatile       unsigned char	TABLE_SPL	@ 0x111;
volatile       unsigned char	TABLE_DATAH	@ 0x112;

volatile       unsigned char	C1ADJ		@ 0x117;
volatile       unsigned char	C2ADJ		@ 0x118;
volatile       unsigned char	C3ADJ		@ 0x119;
volatile       unsigned char	C4ADJ		@ 0x11A;
volatile       unsigned char	OPA1ADJ		@ 0x11B;

volatile       unsigned char	OPA1CON0	@ 0x11E;
volatile       unsigned char	OPA1CON1	@ 0x11F;

/*乘法器相关寄存器*/
volatile	   unsigned char	MULDAT1H	@ 0x120;	//16位被乘数高8位
volatile	   unsigned char	MULDAT1L	@ 0x121;	//16位被乘数低8位
volatile	   unsigned char	MULDAT2		@ 0x122;	//8位乘数
volatile	   unsigned char	MULOUT2		@ 0x123;	//24位乘法结果高8位
volatile	   unsigned char	MULOUT1		@ 0x124;	//24位乘法结果中8位
volatile	   unsigned char	MULOUT0		@ 0x125;	//24位乘法结果低8位
volatile	   unsigned char	PWM1DLY		@ 0x126;	//PWM1延时输出
			   unsigned char	PWMPLO		@ 0x127;	//PWM锁存,为05AH时允许修改周期、占空比、死区延时

volatile	   unsigned char	SRCON		@ 0x185;
volatile	   unsigned char	ANSEL		@ 0x188;
volatile	   unsigned char	ANSELH		@ 0x189;

volatile       unsigned char	PIE3		@ 0x18E;
volatile       unsigned char	PIR3		@ 0x18F;



/*PWM模块相关控制寄存器*/
volatile	   unsigned char	PWMCON0		@ 0x198;	//PWM控制寄存器
volatile	   unsigned char	PWMCON1		@ 0x199;	//PWM控制寄存器
volatile	   unsigned char	PWMDATL		@ 0x19A;	//PWM周期低8位
volatile	   unsigned char	PWMDATH		@ 0x19B;	//PWM周期高4位
volatile	   unsigned char	PWM0DCL		@ 0x19C;	//PWM0占空比
volatile	   unsigned char	PWM0DCH		@ 0x19D;
volatile	   unsigned char	PWM0DTL		@ 0x19E;	//PWM0死区延时
volatile	   unsigned char	PWM0DTH		@ 0x19F;
volatile	   unsigned char	PWM1DCL		@ 0x1A0;	//PWM1占空比
volatile	   unsigned char	PWM1DCH		@ 0x1A1;
volatile	   unsigned char	PWM1DTL		@ 0x1A2;	//PWM1死区延时
volatile	   unsigned char	PWM1DTH		@ 0x1A3;
volatile	   unsigned char	PWM2DCL		@ 0x1A4;	//PWM2占空比
volatile	   unsigned char	PWM2DCH		@ 0x1A5;
volatile	   unsigned char	PWM2DTL		@ 0x1A6;	//PWM2死区延时
volatile	   unsigned char	PWM2DTH		@ 0x1A7;


/* Definitions for STATUS register */
volatile       bit	CARRY	@ ((unsigned)&STATUS*8)+0;
volatile       bit	DC		@ ((unsigned)&STATUS*8)+1;
volatile       bit	ZERO	@ ((unsigned)&STATUS*8)+2;
volatile       bit	PD		@ ((unsigned)&STATUS*8)+3;
volatile       bit	TO		@ ((unsigned)&STATUS*8)+4;
volatile	   bit	IRP		@ ((unsigned)&STATUS*8)+7;

/* Definitions for PORTA register */
volatile       bit	RA1		@ ((unsigned)&PORTA*8)+1;
volatile       bit	RA2		@ ((unsigned)&PORTA*8)+2;
volatile       bit	RA3		@ ((unsigned)&PORTA*8)+3;

/* Definitions for PORTB register */
volatile       bit	RB0		@ ((unsigned)&PORTB*8)+0;
volatile       bit	RB1		@ ((unsigned)&PORTB*8)+1;
volatile       bit	RB2		@ ((unsigned)&PORTB*8)+2;
volatile       bit	RB3		@ ((unsigned)&PORTB*8)+3;
volatile       bit	RB4		@ ((unsigned)&PORTB*8)+4;
volatile       bit	RB5		@ ((unsigned)&PORTB*8)+5;
volatile       bit	RB6		@ ((unsigned)&PORTB*8)+6;
volatile       bit	RB7		@ ((unsigned)&PORTB*8)+7;


/* Definitions for PORTD register */
volatile       bit	RD2		@ ((unsigned)&PORTD*8)+2;
volatile       bit	RD3		@ ((unsigned)&PORTD*8)+3;
volatile       bit	RD4		@ ((unsigned)&PORTD*8)+4;
volatile       bit	RD5		@ ((unsigned)&PORTD*8)+5;
volatile       bit	RD6		@ ((unsigned)&PORTD*8)+6;
volatile       bit	RD7		@ ((unsigned)&PORTD*8)+7;


/* Definitions for PORTE register */
volatile       bit	RE3		@ ((unsigned)&PORTE*8)+3;

/* Definitions for INTCON register */
volatile       bit	RBIF	@ ((unsigned)&INTCON*8)+0;
// Alternate definition for backward compatibility
volatile       bit	RABIF	@ ((unsigned)&INTCON*8)+0;
volatile       bit	INTF	@ ((unsigned)&INTCON*8)+1;
volatile       bit	T0IF	@ ((unsigned)&INTCON*8)+2;
volatile	   bit	RBIE	@ ((unsigned)&INTCON*8)+3;
// Alternate definition for backward compatibility
volatile	   bit	RABIE	@ ((unsigned)&INTCON*8)+3;
volatile	   bit	INTE	@ ((unsigned)&INTCON*8)+4;
volatile	   bit	T0IE	@ ((unsigned)&INTCON*8)+5;
volatile	   bit	PEIE	@ ((unsigned)&INTCON*8)+6;
volatile       bit	GIE		@ ((unsigned)&INTCON*8)+7;

/* Definitions for PIR1 register */
volatile       bit	TMR1IF	@ ((unsigned)&PIR1*8)+0;
volatile       bit	TMR2IF	@ ((unsigned)&PIR1*8)+1;
volatile       bit	ADIF	@ ((unsigned)&PIR1*8)+6;

/* Definitions for PIR2 register */
volatile       bit	C4IF	@ ((unsigned)&PIR2*8)+1;
volatile       bit	C1IF	@ ((unsigned)&PIR2*8)+5;
volatile       bit	C2IF	@ ((unsigned)&PIR2*8)+6;
volatile       bit	C3IF	@ ((unsigned)&PIR2*8)+7;

/* Definitions for PIR3 register */
volatile       bit	RB3IF	@ ((unsigned)&PIR3*8)+0;
volatile       bit	RB4IF	@ ((unsigned)&PIR3*8)+1;
volatile       bit	RB5IF	@ ((unsigned)&PIR3*8)+2;
volatile       bit	PWMPIF	@ ((unsigned)&PIR3*8)+3;
volatile       bit	PWM0DIF	@ ((unsigned)&PIR3*8)+4;
volatile       bit	PWM1DIF	@ ((unsigned)&PIR3*8)+5;
volatile       bit	PWM2DIF	@ ((unsigned)&PIR3*8)+6;

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
// Alternate definition for backward compatibility
volatile	   bit	RABPU	@ ((unsigned)&OPTION_REG*8)+7;

/* Definitions for TRISA register */
volatile	   bit	TRISA1	@ ((unsigned)&TRISA*8)+1;
volatile	   bit	TRISA2	@ ((unsigned)&TRISA*8)+2;
volatile	   bit	TRISA3	@ ((unsigned)&TRISA*8)+3;

/* Definitions for TRISB register */
volatile       bit	TRISB0	@ ((unsigned)&TRISB*8)+0;
volatile       bit	TRISB1	@ ((unsigned)&TRISB*8)+1;
volatile       bit	TRISB2	@ ((unsigned)&TRISB*8)+2;
volatile       bit	TRISB3	@ ((unsigned)&TRISB*8)+3;
volatile       bit	TRISB4	@ ((unsigned)&TRISB*8)+4;
volatile       bit	TRISB5	@ ((unsigned)&TRISB*8)+5;
volatile       bit	TRISB6	@ ((unsigned)&TRISB*8)+6;
volatile       bit	TRISB7	@ ((unsigned)&TRISB*8)+7;


/* Definitions for TRISD register */
volatile       bit	TRISD2	@ ((unsigned)&TRISD*8)+2;
volatile       bit	TRISD3	@ ((unsigned)&TRISD*8)+3;
volatile       bit	TRISD4	@ ((unsigned)&TRISD*8)+4;
volatile       bit	TRISD5	@ ((unsigned)&TRISD*8)+5;
volatile       bit	TRISD6	@ ((unsigned)&TRISD*8)+6;
volatile       bit	TRISD7	@ ((unsigned)&TRISD*8)+7;

/* Definitions for TRISE register */
volatile       bit	TRISE3	@ ((unsigned)&TRISE*8)+3;


/* Definitions for PIE1 register */
volatile	   bit	TMR1IE	@ ((unsigned)&PIE1*8)+0;
volatile	   bit	TMR2IE	@ ((unsigned)&PIE1*8)+1;
volatile	   bit	ADIE	@ ((unsigned)&PIE1*8)+6;

/* Definitions for PIE2 register */
volatile	   bit	C4IE	@ ((unsigned)&PIE2*8)+0;
volatile	   bit	C1IE	@ ((unsigned)&PIE2*8)+5;
volatile	   bit	C2IE	@ ((unsigned)&PIE2*8)+6;
volatile	   bit	C3IE	@ ((unsigned)&PIE2*8)+7;

/* Definitions for PIE3 register */
volatile	   bit	RB3IE	@ ((unsigned)&PIE3*8)+0;
volatile	   bit	RB4IE	@ ((unsigned)&PIE3*8)+1;
volatile	   bit	RB5IE	@ ((unsigned)&PIE3*8)+2;
volatile	   bit	PWMPIE	@ ((unsigned)&PIE3*8)+3;
volatile	   bit	PWM0DIE	@ ((unsigned)&PIE3*8)+4;
volatile	   bit	PWM1DIE	@ ((unsigned)&PIE3*8)+5;
volatile	   bit	PWM2DIE	@ ((unsigned)&PIE3*8)+6;


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


/* Definitions for ADCON1 register */
volatile	   bit	ADFM	@ ((unsigned)&ADCON1*8)+7;

/* Definitions for WDTCON register */
volatile	   bit	WDTPS0	@ ((unsigned)&WDTCON*8)+1;
volatile	   bit	WDTPS1	@ ((unsigned)&WDTCON*8)+2;
volatile	   bit	WDTPS2	@ ((unsigned)&WDTCON*8)+3;
volatile	   bit	WDTPS3	@ ((unsigned)&WDTCON*8)+4;

/* Definitions for CM1CON0 register */
volatile	   bit	C1CH0	@ ((unsigned)&CM1CON0*8)+0;
volatile	   bit	C1CH1	@ ((unsigned)&CM1CON0*8)+1;
volatile	   bit	C1R		@ ((unsigned)&CM1CON0*8)+2;
volatile	   bit	C1POL	@ ((unsigned)&CM1CON0*8)+4;
volatile	   bit	C1OE	@ ((unsigned)&CM1CON0*8)+5;
volatile       bit	C1OUT	@ ((unsigned)&CM1CON0*8)+6;
volatile	   bit	C1ON	@ ((unsigned)&CM1CON0*8)+7;

/* Definitions for CM2CON0 register */
volatile	   bit	C2CH0	@ ((unsigned)&CM2CON0*8)+0;
volatile	   bit	C2CH1	@ ((unsigned)&CM2CON0*8)+1;
volatile	   bit	C2R		@ ((unsigned)&CM2CON0*8)+2;
volatile	   bit	C2POL	@ ((unsigned)&CM2CON0*8)+4;
volatile	   bit	C2OE	@ ((unsigned)&CM2CON0*8)+5;
volatile       bit	C2OUT	@ ((unsigned)&CM2CON0*8)+6;
volatile	   bit	C2ON	@ ((unsigned)&CM2CON0*8)+7;

/* Definitions for CM2CON1 register */
volatile	   bit	C2SYNC	@ ((unsigned)&CM2CON1*8)+0;
volatile	   bit	T1GSS	@ ((unsigned)&CM2CON1*8)+1;
volatile	   bit	C2RSEL	@ ((unsigned)&CM2CON1*8)+4;
volatile	   bit	C1RSEL	@ ((unsigned)&CM2CON1*8)+5;
volatile       bit	MC2OUT	@ ((unsigned)&CM2CON1*8)+6;
volatile       bit	MC1OUT	@ ((unsigned)&CM2CON1*8)+7;

/* Definitions for SRCON register */
volatile	   bit	FVREN	@ ((unsigned)&SRCON*8)+0;


/* Definitions for ANSEL register */
volatile	   bit	ANS1	@ ((unsigned)&ANSEL*8)+1;
volatile	   bit	ANS2	@ ((unsigned)&ANSEL*8)+2;
volatile	   bit	ANS3	@ ((unsigned)&ANSEL*8)+3;

/* Definitions for ANSELH register */
volatile	   bit	ANS8	@ ((unsigned)&ANSELH*8)+0;
volatile	   bit	ANS9	@ ((unsigned)&ANSELH*8)+1;
volatile	   bit	ANS10	@ ((unsigned)&ANSELH*8)+2;
volatile	   bit	ANS11	@ ((unsigned)&ANSELH*8)+3;
volatile	   bit	ANS12	@ ((unsigned)&ANSELH*8)+4;
volatile	   bit	ANS13	@ ((unsigned)&ANSELH*8)+5;

/* Definitions for PWMCON0 register */
volatile	   bit	PWM0EN	@   ((unsigned)&PWMCON0*8)+0;	//PWM0使能位:1-使能,0-禁止
volatile	   bit	PWM1EN	@	((unsigned)&PWMCON0*8)+1;	//PWM1使能位:1-使能,0-禁止
volatile	   bit	PWM2EN	@	((unsigned)&PWMCON0*8)+2;	//PWM2使能位:1-使能,0-禁止
volatile	   bit	PWM0BEN	@	((unsigned)&PWMCON0*8)+3;	//PWM0B使能位:1-使能,0-禁止
volatile	   bit	PWM1BEN	@	((unsigned)&PWMCON0*8)+4;	//PWM1B使能位:1-使能,0-禁止
volatile	   bit	PWM2BEN	@	((unsigned)&PWMCON0*8)+5;	//PWM2B使能位:1-使能,0-禁止
volatile	   bit	PWMMOD	@	((unsigned)&PWMCON0*8)+6;	//PWM对齐模式:1-中心对齐,0-边沿对齐
volatile	   bit	PWMEN	@	((unsigned)&PWMCON0*8)+7;	//

/* Definitions for PWMCON1 register */
volatile	   bit	PWM0S	@	((unsigned)&PWMCON1*8)+0;	//PWM0极性选择:1-低有效,0-高有效
volatile	   bit	PWM1S	@	((unsigned)&PWMCON1*8)+1;	//PWM1极性选择:1-低有效,0-高有效
volatile	   bit	PWM2S	@	((unsigned)&PWMCON1*8)+2;	//PWM2极性选择:1-低有效,0-高有效
volatile	   bit	PWM0BS	@	((unsigned)&PWMCON1*8)+3;	//PWM0B极性选择:1-高有效,0-低有效
volatile	   bit	PWM1BS	@	((unsigned)&PWMCON1*8)+4;	//PWM1B极性选择:1-高有效,0-低有效
volatile	   bit	PWM2BS	@	((unsigned)&PWMCON1*8)+5;	//PWM2B极性选择:1-高有效,0-低有效
volatile	   bit	PWMCLK0	@	((unsigned)&PWMCON1*8)+6;	//PWM时钟:00-Fcpu,01-Fcpu/2
volatile	   bit	PWMCLK1	@	((unsigned)&PWMCON1*8)+7;	//PWM时钟:10-Fcpu/4,11-Fosc

/* Definitions for C1ADJ register */
volatile	   bit	C1ADJ0	@	((unsigned)&C1ADJ*8)+0;
volatile	   bit	C1ADJ1	@	((unsigned)&C1ADJ*8)+1;
volatile	   bit	C1ADJ2	@	((unsigned)&C1ADJ*8)+2;
volatile	   bit	C1ADJ3	@	((unsigned)&C1ADJ*8)+3;
volatile	   bit	C1CRS	@	((unsigned)&C1ADJ*8)+5;
volatile	   bit	C1COFM	@	((unsigned)&C1ADJ*8)+6;
volatile	   bit	C1OUT1	@	((unsigned)&C1ADJ*8)+7;

/* Definitions for C2ADJ register */
volatile	   bit	C2ADJ0	@	((unsigned)&C2ADJ*8)+0;
volatile	   bit	C2ADJ1	@	((unsigned)&C2ADJ*8)+1;
volatile	   bit	C2ADJ2	@	((unsigned)&C2ADJ*8)+2;
volatile	   bit	C2ADJ3	@	((unsigned)&C2ADJ*8)+3;
volatile	   bit	C2CRS	@	((unsigned)&C2ADJ*8)+5;
volatile	   bit	C2COFM	@	((unsigned)&C2ADJ*8)+6;
volatile	   bit	C2OUT1	@	((unsigned)&C2ADJ*8)+7;

/* Definitions for C3ADJ register */
volatile	   bit	C3ADJ0	@	((unsigned)&C3ADJ*8)+0;
volatile	   bit	C3ADJ1	@	((unsigned)&C3ADJ*8)+1;
volatile	   bit	C3ADJ2	@	((unsigned)&C3ADJ*8)+2;
volatile	   bit	C3ADJ3	@	((unsigned)&C3ADJ*8)+3;
volatile	   bit	C3CRS	@	((unsigned)&C3ADJ*8)+5;
volatile	   bit	C3COFM	@	((unsigned)&C3ADJ*8)+6;
volatile	   bit	C3OUT	@	((unsigned)&C3ADJ*8)+7;

/* Definitions for C4ADJ register */
volatile	   bit	C4ADJ0	@	((unsigned)&C4ADJ*8)+0;
volatile	   bit	C4ADJ1	@	((unsigned)&C4ADJ*8)+1;
volatile	   bit	C4ADJ2	@	((unsigned)&C4ADJ*8)+2;
volatile	   bit	C4ADJ3	@	((unsigned)&C4ADJ*8)+3;
volatile	   bit	C4CRS	@	((unsigned)&C4ADJ*8)+5;
volatile	   bit	C4COFM	@	((unsigned)&C4ADJ*8)+6;
volatile	   bit	C4OUT	@	((unsigned)&C4ADJ*8)+7;

/* Definitions for OPA1ADJ register */
volatile	   bit	OPA1ADJ0	@	((unsigned)&OPA1ADJ*8)+0;
volatile	   bit	OPA1ADJ1	@	((unsigned)&OPA1ADJ*8)+1;
volatile	   bit	OPA1ADJ2	@	((unsigned)&OPA1ADJ*8)+2;
volatile	   bit	OPA1ADJ3	@	((unsigned)&OPA1ADJ*8)+3;
volatile	   bit	OPA1ADJ4	@	((unsigned)&OPA1ADJ*8)+4;
volatile	   bit	OPA1CRS	    @	((unsigned)&OPA1ADJ*8)+5;
volatile	   bit	OPA1M	    @	((unsigned)&OPA1ADJ*8)+6;
volatile	   bit	OPA1OUT	    @	((unsigned)&OPA1ADJ*8)+7;
#endif
