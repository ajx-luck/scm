/*-------------------------------------------

程序名称：Usart同步从动接收程序
版本：V1.0
日期：2020.06.20 

备注：

*本程序由 中微半导体 &应用支持部& 编写整理
*公司网址 www.mcu.com.cn
*技术支持QQ 3001082102  罗工
            3001030138	莫工
-------------------------------------------*/

#include <cms.h>


unsigned char Recebuffer[4];	//接收数据缓存
	
//--------------------------------------
//函数声明部分
void Set_Usart_Sync_Slave();					//同步USART从动模式初始化设置函数
//--------------------------------------


//--------------------------------------
//测试示例
volatile unsigned char rececount = 0;

void main()
{
	asm("nop");
	asm("clrwdt");
	
	OSCCON = 0x71;								//内部振荡器用作系统时钟
	INTCON = 0;
	
	/*初始化USART通信模块*/
	Set_Usart_Sync_Slave();
	
	INTCON = 0XC0;								//全局中断使能
	
	TRISA = 0;
	
	while(1)
	{

		asm("clrwdt");	
		
		PORTA = Recebuffer[0];	
	}
}



	
//--------------------------------------
//125us定时中断
void interrupt Usart_Isr()
{
	static unsigned char sendcount = 0,rececount = 0;
	
	//-------------------------------------------
		
	//接收控制，如果接收标志位为1，说明有数据接收完毕
	//RCIF在寄存器被读出后自动清零
	if(RCIF)
	{
		
		
		//RX9D;
		Recebuffer[rececount] = RCREG;  //将接收缓冲区内容读出
		rececount++;
			
		if(rececount >= 4)				//接收完一帧数据，处理数据
		{
			rececount = 0;
		}
			
		if(OERR)						//如果有溢出错误
		{
			CREN = 0;					//清零CREN位可将OERR位清零
			CREN = 1;					//再次将CREN置一，以允许继续接收
		}
	}
}

/***********************************************
函数名称：Set_Usart_Sync_Slave
函数功能：Usart状态设置（同步从动模式）
入口参数：无
出口参数：无
备注：
************************************************/
void Set_Usart_Sync_Slave()
{
	SYNC = 1;				//0为异步模式，1为同步模式
	
	SCKP = 0;
    SPEN = 1;				//允许串口操作
	CSRC = 0;				//从动模式
	RCIE = 1;				//禁止接收中断(使用定时中断查询)  
	TXIE = 0;				//禁止发送中断(使用定时中断查询)
	RX9EN = 0;				//0为8位接收，1为9位接收
	TX9EN = 0;				//0为8位发送，1为9位发送
	SREN = 1;
	CREN = 1;				//0为禁止连续接收，1为使能连续接收
    TXEN = 0;				//0为禁止发送，1为使能发送
}
