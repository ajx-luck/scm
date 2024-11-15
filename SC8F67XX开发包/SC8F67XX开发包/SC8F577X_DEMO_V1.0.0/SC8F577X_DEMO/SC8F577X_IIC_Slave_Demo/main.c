/**********************************************************

**********************************************************/

#include <sc.h>



volatile unsigned int   result,result1,result2;



/***********************************************************
main主函数
***********************************************************/

#include <sc.h>


#define  SLAVE_ADRSS   0xa0

 
void Init_System();

volatile unsigned char IICReadData;

void main()
{
	Init_System();
	TRISA |=  0b00000011;  //RA0 RA1输入态，做IIC 引脚
	
	IICCON =  0B00100001;  // IIC 使能  从机模式
	
    IICADD = 0xa0;          // 
	IICIE =1;
	PEIE =1;
    GIE =1;	


	while(1)
	{

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
	OSCCON = 0X70;				//配置振荡为16M,关 WDT
	OPTION_REG = 0;
	
    WPUA  = 0B00000000;			//初始化上拉
    WPUB  = 0B00001000;			
  
 
	TRISA = 0B00000000;			//初始化IO状态
	TRISB = 0B00001000;

	PORTA = 0B00000000;
	PORTB = 0B00000000;			//初始化输出

}

/***********************************************
函数名称：IIC_Isr
函数功能：IIC中断服务
入口参数：无
出口参数：无
备注：
************************************************/
void interrupt IIC_Isr()
{
	
	if(IICIF==1)
	{
		IICIF =0;
	
		
		if(RW==1)   //发送数据
		{
			IICBUF = 0x55;
		}
		else
		{
			if(DA==0)  //地址匹配
			{
				IICBUF;
				
			}
			else
			{
				
			  IICReadData = IICBUF;  //接收数据
			}
		}
			
		
		
		IICCKP =1;
	
	}
}