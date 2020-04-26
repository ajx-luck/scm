/**
	*
	*
	*右Led灯旋转
	*/
#include <CMS/CMS8S5880.H>


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
static unsigned char startFlag = 0;

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
void Timer0_INT();								//toggle watch IO
	
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
  
  P0TRIS |= 0X10;  //右边灯P05设为输入
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
unsigned char delay_ms(unsigned int ms) //16MHZ
{ 
   
	unsigned int ti;
   while(ms--) 
    { 
			clrwdt();
      for(ti=0;ti<947;ti++){}  //
				if(startFlag == 0)
			{
				
					return 1;
			}
     
		} 
		return 0;
}

#pragma OT(0)
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
   //闪灯中
	uFlg.sflg.Flg_key = 1;
	
	 R3 = R2 = G1 = 0;
                    if(delay_ms(speed)){ return; } 
   R1 = R2 = 1;G1 = G2 = R3= 0;         if(delay_ms(speed)){ return; } 
   R1 = R2 = R3 = 1;  G1 = G2 = G3 = 0; if(delay_ms(speed)){ return; } 
   G1 = 1; G2 = B1 = G3 = 0;            if(delay_ms(speed)){ return; } 
   G1 = G2 = 1; B1 = B2 = G3 = 0 ;      if(delay_ms(speed)){ return; } 
   G1 = G2 = G3 = 1; B1 = B2 = B3 = 0;  if(delay_ms(speed)){ return; } 
   B1 = 1; R1 = B2 = B3 = 0;            if(delay_ms(speed)){ return; } 
   B1 = B2 = 1; R1 = R2 = B3 = 0;       if(delay_ms(speed)){ return; } 
   B1 = B2 = B3 = 1; R1 = B2 = R3 = 0;  
	if(delay_ms(speed))
		{ 
			R1 = B2 = R3 = 1;
			return; 
		}  
	uFlg.sflg.Flg_key == 0;
}
/*----------------------R??----------------------------------------------*/
void LED_LOOP_R(unsigned int on, unsigned int off)    //LED????
{
 
  R3 = R2 = R1 = 0; 
  Delay(on); 
  R3 = R2 = R1 = 1; 
  Delay(off); 
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
 
  G3 = G2 = G1 = 0; 
  Delay(on); 
  G3 = G2 = G1 = 1; 
  Delay(off); 
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
 
  B3 = B2 = B1 = 0; 
  Delay(on); 
  B3 = B2 = B1 = 1; 
  Delay(off); 
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
 
  G3 = G2 = G1 = R3 = R2 = R1 = 0;  
  Delay(on); 
  G3 = G2 = G1 = R3 = R2 = R1 = 1;  
  Delay(off); 
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
 
  G3 = G2 = G1 = B3 = B2 = B1 = 0;  
  Delay(on); 
  G3 = G2 = G1 = B3 = B2 = B1 = 1;  
  Delay(off); 
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
 
  R1 = R2 = R3 = G3 = G2 = G1 = B3 = B2 = B1 = 0;  
  Delay(on); 
  R1 = R2 = R3 = G3 = G2 = G1 = B3 = B2 = B1 = 1;  
  Delay(off); 
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
 
  R1 = R2 = R3 = B3 = B2 = B1 = 0;  
  Delay(on); 
  R1 = R2 = R3 = B3 = B2 = B1 = 1;  
  Delay(off); 
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




void main()
{
	clrwdt();
	GPIO_Init();
	Timer0_init();								
	INT_init();									

	
//	ledStart:
//		R1 = R2 = R3 = 0;G1 = G2 = G3 = B1 = B2 = B3 = 1;
	while(1)									
	{
		
		
		clrwdt();
		
		if(startFlag)
		{
			disp();
		}
		
		
	}
	//goto ledStart;
	
}


/*************************************************
function name: Timer0_init()
function work: initial the timer0 overflow time
input data   : the constant define the fsys and the overflow time
output data  : null
note		 : setting the timer0 
*************************************************/
void Timer0_init()		
{

	TMOD		|=	0x01;

	
	CKCON		|=	0x08;
	

	
	TH0			=	TM_value/256;
	TL0			=	TM_value;
	
	TCON		=	0x10;

	
}
/*************************************************
function name: INT_init()
function work: initial the INT function
input data   : null
output data  : null
note		 : setting the interrupt function
*************************************************/
void INT_init()									
{
	IE		=	0x02;
	

	IP		=	0x00;
	

	EA		=	1;		
	
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
	
	
	if(SCL == 1)
  {
			startFlag = 0;
      //停止工作
		//B1 = 0;
		//G1 = 1;
  }
  else
  {
      startFlag = 1;	
		//B1 = 1;
		//G1 = 0;
      
  }
	
}

