/*-------------------------------------------

程序名称：Usart同步主控接收程序
版本：V1.0
日期：2020.06.20 

备注：

*本程序由 中微半导体 &应用支持部& 编写整理
*公司网址 www.mcu.com.cn
*技术支持QQ 3001082102  罗工
            3001030138	莫工
-------------------------------------------*/


#include "cms.h"

unsigned char Recebuffer[4];

unsigned char rececount = 0;
void Set_Usart_Sync_Master();
		
			
void main()
{
	asm("clrwdt");

	TRISA = 0B00000000;

	Set_Usart_Sync_Master();
	
	INTCON = 0XC0;

	while(1)
	{
		asm("clrwdt");
			
		PORTA = Recebuffer[0];	
	}
	
}

//--------------------------------------
//125us定时中断，在中断服务中进行收发操作
void interrupt Usart_Isr()
{
	
	if(RCIF)
	{
		
		
		//RX9D;
		Recebuffer[rececount]=RCREG;
			
		rececount++;
		if(rececount >= 4)
		{
			rececount = 0;
		}
		
					
		if(OERR==1)
		{
			CREN=0;
			CREN=1;
		}

		CREN=0;
		SREN=0;
		SREN=1;
	}
}

void Set_Usart_Sync_Master()
{
	SPBRG = 51;				//波特率=FSYS/[4(n+1)]
	
	SCKP = 0;   				//发送数据是否取反
	
	SYNC = 1;    				//同步模式
	CSRC = 1;   				//主控模式
	RCIE = 1;
	SPEN = 1;    				//使能异步串口	
	RX9EN = 0;     			//接收9为数据	
	CREN = 0;
	SREN = 1;
	
}