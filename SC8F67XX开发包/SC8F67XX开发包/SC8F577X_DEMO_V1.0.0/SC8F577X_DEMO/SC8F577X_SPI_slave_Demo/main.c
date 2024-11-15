/**********************************************************

**********************************************************/

#include <sc.h>



volatile unsigned int   result,result1,result2;
volatile unsigned char ReceBuffer;	//接收到的数据
volatile unsigned char SendBuffer;	//待发送的数据


void DelayXms(unsigned char x);


/***********************************************************
函数名称：DelayXms
函数功能：毫秒级非精准延时
入口参数：x - 延时时间
出口参数：
备    注：
***********************************************************/
void DelayXms(unsigned char x)
{
	unsigned char i,j;
	for(i=x;i>0;i--)
		for(j=153;j>0;j--);
}

/***********************************************************
main主函数
***********************************************************/

void Init_System();

volatile unsigned char IICReadData;
void main()
{
	Init_System();
	
	TRISA |=   0b00000011;  //RA0 RA1输入态，做IIC 引脚
	SPICON =   0B00100100;  // SPI  使能 从动模式
	SPICON2 =  0B00000000;  // SPI  4线  从动模式
    
	 SPIIF =0;
	 SPIIE=1;
	 PEIE =1;
	 GIE =1;  

	while(1)
	{
         DelayXms(200);

	}
}



/***********************************************
函数名称：Init_System
函数功能：系统初始化
入口参数：无
出口参数：无
备注：
************************************************/
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;					//系统初始化
	OSCCON = 0X70;				//配置振荡为8M,关WDT
	OPTION_REG = 0;
	
    WPUA  = 0B00000000;			//初始化上拉
    WPUB  = 0B00001000;			
  
 
	TRISA = 0B00000000;			//初始化IO状态
	TRISB = 0B00110100;

	PORTA = 0B00000000;
	PORTB = 0B00000000;			//初始化输出

}

/***********************************************
函数名称：PB_Isr
函数功能：PB电平变化中断服务
入口参数：无
出口参数：无
备注：
************************************************/
void interrupt PB_Isr()
{
	if(RBIF)
	{
		RBIF = 0;			//清中断标志
		
		//Init_System();
	}
	
	if(SPIIF==1)
	{
	   SPIIF = 0;
	   
	   ReceBuffer = SPIBUF;
	   
	   
	   SPIBUF =0x11;	
	
	}
}