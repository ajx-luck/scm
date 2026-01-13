#ifndef	__NUMBER__
#define __NUMBER__
#define		uchar		unsigned char
#define		u8t		unsigned char
#define		uint			unsigned int
#define		u16t			unsigned int
#define		ulong		unsigned long




#define		A_LED4						 RB1
#define		A_LED3						 RB0
#define		A_LED2						 RB5
#define		A_LED1						 RC0



#define		A_LED4_OUT					 TRISB	&= 0xFD
#define		A_LED3_OUT					 TRISB	&= 0xFE
#define		A_LED2_OUT					 TRISB	&= 0xDF
#define		A_LED1_OUT					 TRISC	&= 0xFE









void refreshLed();
void DelayUs(uchar Time);
void DelayMs(uchar Time);
 void DelayS(uchar Time);

#endif