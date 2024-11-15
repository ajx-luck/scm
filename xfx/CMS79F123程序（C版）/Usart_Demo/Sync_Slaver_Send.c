/*-------------------------------------------

程序名称：Usart同步从动发送程序
版本：V1.0
日期：2020.06.20 

备注：

*本程序由 中微半导体 &应用支持部& 编写整理
*公司网址 www.mcu.com.cn
*技术支持QQ 3001082102  罗工
            3001030138	莫工
-------------------------------------------*/

#include "cms.h"


unsigned char Sendbuffer[4];
unsigned char sendcount;


void Set_Usart_Sync_Slaver();
			
void main()
{
	asm("clrwdt");
	TRISA = 0B00000000;
	
	INTCON = 0XC0;
	
	Set_Usart_Sync_Slaver();
	
	while(1)
	{
		asm("clrwdt");
		
		PORTA = Sendbuffer[0];	
	}
	
}

//--------------------------------------
//在中断服务中进行发送操作
void interrupt Usart_Isr()
{
	
	if(TXIF)
	{
		//TX9D=1;   //第9位数据位1
		
		TXREG=Sendbuffer[sendcount];
		
		Sendbuffer[sendcount]++;
		
		sendcount++;
		if(sendcount >= 4)
		{
			sendcount = 0;
		}
	}
}

void Set_Usart_Sync_Slaver()
{
	SCKP = 0;    //发送数据是否取反
	
	SYNC = 1;    //同步步模式
	CSRC = 0;   //从动模式
	
	SPEN = 1;    //时能异步串口
	
	CREN = 0;
	SREN = 0;
	TXIE = 1;
	TX9EN = 0;     //发送9为数据
	TXEN = 1;    //使能发送
}