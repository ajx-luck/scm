#ifndef	__NUMBER__
#define __NUMBER__
#define		uchar		unsigned char
#define		u8t		unsigned char
#define		uint			unsigned int
#define		u16t			unsigned int
#define		ulong		unsigned long


#define		A_LED6						 RB6
#define		A_LED5						 RB5
#define		A_LED4						 RB4
#define		A_LED3						 RB3
#define		A_LED2						 RB2
#define		A_LED1						 RB1


#define		A_LED6_OUT					 TRISB	&= 0xBF
#define		A_LED5_OUT					 TRISB	&= 0xDF
#define		A_LED4_OUT					 TRISB	&= 0xEF
#define		A_LED3_OUT					 TRISB	&= 0xF7
#define		A_LED2_OUT					 TRISB	&= 0xFB
#define		A_LED1_OUT					 TRISB	&= 0xFD









void refreshLed();
void DelayUs(uchar Time);
void DelayMs(uchar Time);
 void DelayS(uchar Time);

#endif