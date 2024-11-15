/*-------------------------------------------

程序名称：Usart同步主控发送程序演示
版本：V1.0
日期：2020.06.20 

备注：

*本程序由 中微半导体 &应用支持部& 编写整理
*公司网址 www.mcu.com.cn
*技术支持QQ 3001082102  罗工
            3001030138	莫工
-------------------------------------------*/

#include <cms.h>


unsigned char Sendbuffer[4];	//发送数据缓存	
//--------------------------------------
//函数声明部分
void Set_Usart_Sync_Master();					//同步USART主控模式初始化设置函数
//--------------------------------------



bit B_MainLoop;
unsigned char sendcount = 0;

void main()
{
	asm("nop");
	asm("clrwdt");
	
	OSCCON = 0x71;								//内部振荡器用作系统时钟
	INTCON = 0;
	
	/*初始化USART通信模块*/
	Set_Usart_Sync_Master();					//初始化Usart（同步主控模式）
	
	/*初始化定时器2, 125us中断*/
	PR2 = 250;
	T2CON = 4;
	TMR2IE = 1;
	
	INTCON = 0XC0;
	
	TRISA = 0;
	
	while(1)
	{	
		asm("clrwdt");
		
		PORTA = Sendbuffer[0];	
		
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			
			if(TRMT)					//发送空闲就发送
			{
				//TX9D = 1;
				
				TXREG = Sendbuffer[sendcount];
				
				Sendbuffer[sendcount]++;
				
				sendcount++;
				if(sendcount >= 4)
				{
					sendcount = 0;
				}
			}
		}

		
	}
}

//--------------------------------------
//125us定时中断
void interrupt Timer_Isr()
{
	static unsigned char tcount = 0;
	
	if(TMR2IF)
	{
		TMR2IF = 0;
		if(++tcount >= 40)
		{
			tcount = 0;
			B_MainLoop = 1;
		}
		
	}
}
		
/***********************************************
函数名称：Set_Usart_Sync_Master
函数功能：Usart状态设置（同步主控模式）
入口参数：无
出口参数：无
备注：
1、SYNC = 1;目标波特率 = Fosc/(4*(SPBRG+1))
************************************************/
void Set_Usart_Sync_Master()
{
	SPBRG = 51;			//波特率=FSYS/[4(n+1)]
	
	SCKP=0;    				//发送数据是否取反
	SYNC = 1;				//0为异步模式，1为同步模式
    SPEN = 1;				//允许串口操作
	CSRC = 1;				//主控模式
	RCIE = 0;				//禁止接收中断 
	TXIE = 0;				//禁止发送中断
    RX9EN = 0;				//0为8位接收，1为9位接收
	TX9EN = 0;				//0为8位发送，1为9位发送
	SREN = 0;				//禁止接收模式
	CREN = 0;
	TXEN = 1;				//使能发送
}