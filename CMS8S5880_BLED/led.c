/**
	*
	*
	*左Led灯呼吸
	*/
#include <CMS/CMS8S5880.H>
#include "time.h"

//***********define constant*********//

#define		MAIN_CLOCK_FREQ		16000000uL		//unit:Hz
#define		TM0_OF_us			1000			//timer0 overflow times unit:us
#define		divider				4
#define		TM_value			(65535-(TM0_OF_us*(MAIN_CLOCK_FREQ/(4*1000000))))

#define G1 P2_5
#define B1 P2_4
#define R1 P2_3
#define G2 P2_2
#define B2 P1_7
#define R2 P1_6
#define G3 P1_5
#define B3 P1_4
#define R3 P1_3

#define SCL P0_5
#define SDA P0_4

#define MAX_TIME (29127)
#define MIN_TIME (0)
#define SPEEDS (80)         

#define speed 60

//*******************variable*********************//

static unsigned char vlee=0;

unsigned int times = 0;

volatile unsigned int temp = 0X00;

unsigned int km = 0;
 static unsigned int num=0;

/*-------这样定义OK 之后,你在程序中就可以使用,比如Flg_RFSleep=0;-----*/
union
  {
    unsigned char Flg;
    struct
      {unsigned char          Flg_key:1;
                    unsigned char          Flg_RxChanle:1;
                     unsigned char         Flg_RxTimeCoutEn:1;
                      unsigned char        Flg_DcIn:1;
                      unsigned char        Flg_RFSleep:1;
                      unsigned char        Flg_Wor:1;
                       unsigned char       Flg_Pre:1;
                       unsigned char       Flg_Sync:1;
			}sflg;
  }uFlg;
	
	
/*--------------------------------------------------------------------*/

//*******************initial*********************//

void Timer0_init();								//
void INT_init();								//interrupt initial
void Timer0_INT();
	//toggle watch IO
	
	
void GPIO_Init(void)
{
  P2TRIS |= 0X3C;    /*output*/
	P2UP = 0x3C;
	P2RD = 0x00;
  
  P1TRIS |= 0XF8;    /*output*/
  P1UP  = 0XF8;    /* */
  P1RD  = 0X00;    /*output speed up to 2mhz */
  
  P2TRIS &= 0XBF;
  P2UP |= 0X40;    /*???????*/
  P2RD &= 0XBF;    /*PD6  KEY ????  */
  
  P0TRIS |= 0X30;
  P0UP  = 0X30;
  P0RD  = 0X00;     /*PB5    */
  P05CFG = 0;
  R1 = R2 = R3 = G1 = G2 = G3 = B1 = B2 = B3 = 1;
  
  SCL=1;
  SDA = 1;
 uFlg.sflg.Flg_key = 0;
}

#pragma OT(0)  
void delay_us(unsigned int a)
{
         //16M 1.02us
         while(a--);
}

#pragma OT(0) 
void delay_ms(unsigned int ms) //16MHZ
{ 
   unsigned int ti; 
	clrwdt();
   while(ms--) 
    { 
      for(ti=0;ti<947;ti++){}  //
     } 
}

void Delay(unsigned int nCount)
{
  for(; nCount != 0; nCount--);
} 
/*------------------------------------------------------------------*/
void KEY_Scan(void)
{
  if(P2_6 == 0)
  {
  
    num++;
    if((P2_6 == 0) &&(num >= 300))   //3s
    {       
               
          num = 0; 
          uFlg.sflg.Flg_key = 1; 
         // SCL = ~SCL; 

    }
    else
    {
      num = 0;
    }
    
  }
  else
  {
     num = 0;
  }
}

/*       ????      */
void disp(void)
{
   SCL = 0;
	 R3 = R2 = G1 = 0;                    delay_ms(speed);  
   R1 = R2 = 1;G1 = G2 = R3= 0;         delay_ms(speed); 
   R1 = R2 = R3 = 1;  G1 = G2 = G3 = 0; delay_ms(speed);  
   G1 = 1; G2 = B1 = G3 = 0;            delay_ms(speed); 
   G1 = G2 = 1; B1 = B2 = G3 = 0 ;      delay_ms(speed);  
   G1 = G2 = G3 = 1; B1 = B2 = B3 = 0;  delay_ms(speed);  
   B1 = 1; R1 = B2 = B3 = 0;            delay_ms(speed);  
   B1 = B2 = 1; R1 = R2 = B3 = 0;       delay_ms(speed);  
   B1 = B2 = B3 = 1; R1 = B2 = R3 = 0; 
	delay_ms(speed); 
	SCL = 1;
	delay_ms(1);
}
/*----------------------R??----------------------------------------------*/
void LED_LOOP_R(unsigned int on, unsigned int off)    //LED????
{
	int totalTime = on + off;
	int Z = (on + off) /400;
	int h;
	for(h=1;h<Z;h++)
	{
			R3 = R2 = R1 = 0; 
			Delay(on/400);
			R3 = R2 = R1 = 1; 
			Delay(off/400);
	}
	
}
/*-------------LED????------------------------------------*/
void LED_BREATH_R(void)
{
    /*??*/
  times = MAX_TIME;
  while(1)
  {
     if(uFlg.sflg.Flg_key == 1) {  break;  }
    times -= SPEEDS;
    LED_LOOP_R(MAX_TIME-times,times);
    if(times < SPEEDS)
      break;
  }
   /*??*/
  times = MAX_TIME;
  while(1)
  {
     if(uFlg.sflg.Flg_key== 1) {  break;  }
    times -= SPEEDS;
    LED_LOOP_R(times,MAX_TIME-times);
    if(times < SPEEDS)
      break;
  }
  
}
/*------------------------------------------------------------*/

/*----------------------G??----------------------------------------------*/
void LED_LOOP_G(unsigned int on, unsigned int off)    //LED????
{
	int totalTime = on + off;
	int Z = (on + off) /400;
	int h;
	for(h=1;h<Z;h++)
	{
			G3 = G2 = G1 = 0; 
			Delay(on/400);
			G3 = G2 = G1 = 1;  
			Delay(off/400);
	}
 
}
/*-------------LED????------------------------------------*/
void LED_BREATH_G(void)
{
    /*??*/
  times = MAX_TIME;
  while(1)
  {
     if(uFlg.sflg.Flg_key == 1) {  break;  }
    times -= SPEEDS;
    LED_LOOP_G(MAX_TIME-times,times);
    if(times < SPEEDS)
      break;
  }
  
   /*??*/
  times = MAX_TIME;
  while(1)
  {
     if(uFlg.sflg.Flg_key == 1) {  break;  }
    times -= SPEEDS;
    LED_LOOP_G(times,MAX_TIME-times);
    if(times < SPEEDS)
      break;
  }
  
}
/*------------------------------------------------------------*/
/*----------------------B??----------------------------------------------*/
void LED_LOOP_B(unsigned int on, unsigned int off)    //LED????
{
 
  int totalTime = on + off;
	int Z = (on + off) /400;
	int h;
	for(h=1;h<Z;h++)
	{
			B3 = B2 = B1 = 0;  
			Delay(on/400);
			B3 = B2 = B1 = 1;  
			Delay(off/400);
	}
 
}
/*-------------LED????------------------------------------*/
void LED_BREATH_B(void)
{
    /*??*/
  times = MAX_TIME;
  while(1)
  {
     if(uFlg.sflg.Flg_key == 1) {  break;  }
    times -= SPEEDS;
    LED_LOOP_B(MAX_TIME-times,times);
    if(times < SPEEDS)
      break;
  }
  
   /*??*/
  times = MAX_TIME;
  while(1)
  {
     if(uFlg.sflg.Flg_key == 1) {  break;  }
    times -= SPEEDS;
    LED_LOOP_B(times,MAX_TIME-times);
    if(times < SPEEDS)
      break;
  }
  
}
/*----------------------RG??----------------------------------------------*/
void LED_LOOP_RG(unsigned int on, unsigned int off)    //LED????
{
 
  int totalTime = on + off;
	int Z = (on + off) /400;
	int h;
	for(h=1;h<Z;h++)
	{
			G3 = G2 = G1 = R3 = R2 = R1 = 0;
			Delay(on/400);
			G3 = G2 = G1 = R3 = R2 = R1 = 1;  
			Delay(off/400);
	}
	 
}
/*-------------LED????------------------------------------*/
void LED_BREATH_RG(void)
{
    /*??*/
  times = MAX_TIME;
  while(1)
  {
     if(uFlg.sflg.Flg_key == 1) {  break;  }
    times -= SPEEDS;
    LED_LOOP_RG(MAX_TIME-times,times);
    if(times < SPEEDS)
      break;
  }
  
   /*??*/
  times = MAX_TIME;
  while(1)
  {
     if(uFlg.sflg.Flg_key == 1) {  break;  }
    times -= SPEEDS;
    LED_LOOP_RG(times,MAX_TIME-times);
    if(times < SPEEDS)
      break;
  }
  
}
/*------------------------------------------------------------*/
/*----------------------GB??----------------------------------------------*/
void LED_LOOP_GB(unsigned int on, unsigned int off)    //LED????
{
	
	int totalTime = on + off;
	int Z = (on + off) /400;
	int h;
	for(h=1;h<Z;h++)
	{
			 G3 = G2 = G1 = B3 = B2 = B1 = 0;
			Delay(on/400);
			G3 = G2 = G1 = B3 = B2 = B1 = 1;  
			Delay(off/400);
	}
  
}
/*-------------LED????------------------------------------*/
void LED_BREATH_GB(void)
{
    /*??*/
  times = MAX_TIME;
  while(1)
  {
     if(uFlg.sflg.Flg_key == 1) {  break;  }
    times -= SPEEDS;
    LED_LOOP_GB(MAX_TIME-times,times);
    if(times < SPEEDS)
      break;
  }
  
   /*??*/
  times = MAX_TIME;
  while(1)
  {
     if(uFlg.sflg.Flg_key == 1) {  break;  }
    times -= SPEEDS;
    LED_LOOP_GB(times,MAX_TIME-times);
    if(times < SPEEDS)
      break;
  }
  
}
/*------------------------------------------------------------*/
/*----------------------RGB??----------------------------------------------*/
void LED_LOOP_RGB(unsigned int on, unsigned int off)    //LED????
{
 
  int totalTime = on + off;
	int Z = (on + off) /400;
	int h;
	for(h=1;h<Z;h++)
	{
			R1 = R2 = R3 = G3 = G2 = G1 = B3 = B2 = B1 = 0; 
			Delay(on/400);
			R1 = R2 = R3 = G3 = G2 = G1 = B3 = B2 = B1 = 1;   
			Delay(off/400);
	}
	
}
/*-------------LED????------------------------------------*/
void LED_BREATH_RGB(void)
{
    /*??*/
  times = MAX_TIME;
  while(1)
  {
     if(uFlg.sflg.Flg_key == 1) {  break;  }
    times -= SPEEDS;
    LED_LOOP_RGB(MAX_TIME-times,times);
    if(times < SPEEDS)
      break;
  }
  
   /*??*/
  times = MAX_TIME;
  while(1)
  {
     if(uFlg.sflg.Flg_key == 1) {  break;  }
    times -= SPEEDS;
    LED_LOOP_RGB(times,MAX_TIME-times);
    if(times < SPEEDS)
      break;
  }
  
}
/*------------------------------------------------------------*/
/*----------------------RGB??----------------------------------------------*/
void LED_LOOP_RB(unsigned int on, unsigned int off)    //LED????
{
 
  int totalTime = on + off;
	int Z = (on + off) /400;
	int h;
	for(h=1;h<Z;h++)
	{
			R1 = R2 = R3 = B3 = B2 = B1 = 0;
			Delay(on/400);
			R1 = R2 = R3 = B3 = B2 = B1 = 1; 
			Delay(off/400);
	}
	
}
/*-------------LED????------------------------------------*/
void LED_BREATH_RB(void)
{
    /*??*/
  times = MAX_TIME;
  while(1)
  {
     if(uFlg.sflg.Flg_key == 1) {  break;  }
    times -= SPEEDS;
    LED_LOOP_RB(MAX_TIME-times,times);
    if(times < SPEEDS)
      break;
  }
  
   /*??*/
  times = MAX_TIME;
  while(1)
  {
    if(uFlg.sflg.Flg_key == 1) {  break;  }
    times -= SPEEDS;
    LED_LOOP_RB(times,MAX_TIME-times);
    if(times < SPEEDS)
      break;
  }
  
}


//*******************MAIN*********************//

void main()
{
	
	GPIO_Init();
	Timer0_init();								//timer0 initinal
	INT_init();									//
	delay_ms(2500);
	delay_ms(2500);
	delay_ms(2500);
	
	while(1)									//main loop
	{
		clrwdt();
		if(uFlg.sflg.Flg_key == 0)
    {
     
    //disp();
		SCL = 0;
    LED_BREATH_R();         
    LED_BREATH_RB();
    LED_BREATH_G();         
    LED_BREATH_B();         
    LED_BREATH_RG();
    LED_BREATH_GB();
    LED_BREATH_RGB();
		SCL = 1;
		delay_ms(10);
    
    }
    if(uFlg.sflg.Flg_key == 1)
    {
      R1 = R2 = R3 = G1 = G2 = G3 = B1 = B2 = B3 = 1;
      SCL = 0;
    }  
		
	}
	
}

/*************************************************
function name: Timer0_init()
function work: initial the timer0 overflow time
input data   : the constant define the fsys and the overflow time
output data  : null
note		 : setting the timer0 
*************************************************/
void Timer0_init()								//T_overflow unit:us 16 bit timer mode
{

	TMOD		|=	0x01;
	
	//timer1 for bit7~4
	//bit7 gatebit 1:enable 0:disable
	//bit6 timer/counter 0:timer 1:counter
	//bit5~4 00:mode0 13bit timer/counter 01:mode1 16bit timer/counter 
	//		 01:mode2 8bit aoto reload timer/counter mode3:stop counter
	
	//timer0 for bit3~0
	//bit3 gatebit 1:enable 0:disable
	//bit2 timer/counter 0:timer 1:counter
	//bit1~0 00:mode0 13bit timer/counter 01:mode1 16bit timer/counter 
	//		 10:mode2 8bit aoto reload timer/counter mode3:independent timer/counter
	
	CKCON		|=	0x08;
	
	//bit7~6 WDT overflow time 00:2^17*tsys 01:2^20*tsys 10:2^23*tsys 11:2^26*tsys
	//bit4:timer1 clocksource 0:fsys/12 1:fsys/4
	//bit3:timer0 clocksource 0:fsys/12 1:fsys/4


	//initial value for 16bit counter
	
	TH0			=	TM_value/256;
	TL0			=	TM_value;
	
	TCON		|=	0x10;
	
	//bit7 flag 0:timer1 not overflow 1:timer1 over flow 
	//bit6 0:timer1 disable 1:timer1 enable
	//bit5 flag 0:timer0 not overflow 1:timer0 over flow 
	//bit4 0:timer0 disable 1:timer0 enable
	//bit3~0 is for external pin interrupt
	
}
/*************************************************
function name: INT_init()
function work: initial the INT function
input data   : null
output data  : null
note		 : setting the interrupt function
*************************************************/
void INT_init()									//intterrupt initinal
{
	IE		=	0x02;
	
//Bit7	EA	Global interrupt enable bit 0:disable 1:enable
//Bit6	ES1	UART1 interrupt enable bit  0:disable 1:enable
//Bit5	ET2	Timer2 global interrupt enable bit  0:disable 1:enable
//Bit4	ES0	UART0 interrupt enable bit  0:disable 1:enable
//Bit3	ET1	Timer1 interrupt enable bit  0:disable 1:enable
//Bit2	EX1	INT1 interrupt enable bit  0:disable 1:enable
//Bit1	ET0	Timer0 interrupt enable bit  0:disable 1:enable
//Bit0	EX0	INT0 interrupt enable bit  0:disable 1:enable

	IP		=	0x00;
	
//Bit6	PS1		UART1 interrupt priority control bit 0:high priority 1:low priority
//Bit5	PT2		Timer2 interrupt priority control bit 0:high priority 1:low priority
//Bit4	PS0		UART0 interrupt priority control bit 0:high priority 1:low priority
//Bit3	PT1		Timer1 interrupt priority control bit 0:high priority 1:low priority
//Bit2	PX1		INT1 interrupt priority control bit 0:high priority 1:low priority
//Bit1	PT0		Timer0 interrupt priority control bit 0:high priority 1:low priority
//Bit0	PX0		INT0 interrupt priority control bit 0:high priority 1:low priority

	EA		=	1;		//Bit7	EA	Global interrupt enable bit 0:disable 1:enable
	
}

/*************************************************
function name: Timer0_INT()
function work: timer0 INT function
input data   : null
output data  : null
note		 : watch the P15 toggle and measure pulse is the overflow time
*************************************************/
void Timer0_INT()	interrupt	TIMER0_VECTOR
{

	TH0			=	TM_value/256;
	TL0			=	TM_value;
	
	
}

