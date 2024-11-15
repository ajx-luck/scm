/**********************************************************
   波特率9600
   8位数据格式，无校验
   接收10个字节数字，然后发送出来
**********************************************************/

#include <sc.h>



volatile unsigned int   result,result1,result2;


unsigned int  Read_ADC(unsigned char  ADCchannel,unsigned char  ADCLDORef);
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

#include <sc.h>


void Init_System();

unsigned char RxTable[10],rxDADA;
bit RXOK_f;

void main()
{
	unsigned char i =0 ;
	Init_System();
	
	TXREG =0x55;

	while(TRMT==0);
	TXREG =0xaa;

	while(TRMT==0);
	
	while(1)
	{
 
		
		if(RXOK_f==1)
		{
			for(i=0;i<10;i++)
			{
					
				TXREG =RxTable[i];

				while(TRMT==0);
			}

			RXOK_f = 0;
		}

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
	TRISB = 0B00011000;

	PORTA = 0B00000000;
	PORTB = 0B00000000;			//初始化输出
	
	TXSTA =   0b10100000;
	RCSTA =   0b10010000;
	SPBRG =   103;         //波特率9600
	
	PEIE =1;
	RCIE =1;
	GIE =1;

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
	static unsigned char RxNum=0,TEMP;
	if(RBIF)
	{
		RBIF = 0;			//清中断标志
		RB6 = ~RB6;
	
	}
	
	if(RCIF==1)
	{
		RCIF = 0;
	    
		if(RXOK_f==0)	
		{
			RxTable[RxNum] = RCREG;
			RxNum++;
			if(RxNum > 9)
			{
				RxNum =0;
				RXOK_f =1;
			}
		}
		else
		TEMP =  RCREG;
		
	}
}