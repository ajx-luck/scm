#ifndef	__NUMBER__
#define __NUMBER__
#define		uchar		unsigned char
#define		u8t		unsigned char
#define		uint			unsigned int
#define		u16t			unsigned int
#define		ulong		unsigned long


#define		A_LED5						 RB5
#define		A_LED4						 RB4
#define		A_LED3						 RB3
#define		A_LED2						 RB2
#define		A_LED1						 RB1

#define		B_LED5						 RA5
#define		B_LED4						 RA6
#define		B_LED3						 RB0
#define		B_LED2						 RB7
#define		B_LED1						 RB6


#define		A_LED5_OUT()					 TRISB5	= 0
#define		A_LED4_OUT()					 TRISB4	= 0
#define		A_LED3_OUT()					 TRISB3	= 0
#define		A_LED2_OUT()					 TRISB2	= 0
#define		A_LED1_OUT()					 TRISB1	= 0

#define		B_LED5_OUT()					 TRISA5	= 0
#define		B_LED4_OUT()					 TRISA6	= 0
#define		B_LED3_OUT()					 TRISB0	= 0
#define		B_LED2_OUT()					 TRISB7	= 0
#define		B_LED1_OUT()					 TRISB6	= 0

u8t		ledCnt = 0;
u8t		showNumAShi = 0x7F;
u8t		showNumAge = 0x7F;
u8t		showNumBShi = 0x7F;
u8t		showNumBge = 0x7F;

u8t		modeStep = 0;


void A1();
void A2();
void A3();
void A4();
void A5();
void A6();
void A7();

void B1();
void B2();
void B3();
void B4();
void B5();
void B6();
void B7();

void C1();
void C2();
void C3();
void C4();
void C5();
void C6();
void C7();

void D1();
void D2();
void D3();
void D4();
void D5();
void D6();
void D7();

void led1();
void led2();
void led3();
void led4();
void led5();
void led6();
void led7();
void led8();
void led9();
void led10();
void led11();
void led12();

void refreshLed();
void DelayUs(uchar Time);
void DelayMs(uchar Time);
 void DelayS(uchar Time);

#endif