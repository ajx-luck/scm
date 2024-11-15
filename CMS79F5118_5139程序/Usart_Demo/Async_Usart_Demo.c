/*-------------------------------------------

程序名称：Usart异步收发程序
日期版本：2019/12/30 <V1.0>

备注：发送控制亦可选择使用发送中断（TXIE）来控制
      发送，有待发送数据时将TXIE置1，最后一个字符写入
	  TXREG后，将TXIE中断允许位清零。

*本程序由 中微半导体有限公司 &应用支持部& 编写整理
*公司网址 www.mcu.com.cn
*技术支持QQ 3001082102  罗工
            3001085706	陈工
-------------------------------------------*/


#include <cms.h>


//--------------------------------------
//发送/接收数组定义
unsigned char Recebuffer[4];	//接收数据缓存
unsigned char Sendbuffer[4];	//发送数据缓存

//--------------------------------------
//函数声明部分
void Set_Usart_Async();			//异步USART初始化设置函数

//--------------------------------------
unsigned char sendcount = 0,rececount = 0;

//--------------------------------------
//测试示例


void main()
{
	asm("nop");
	asm("clrwdt");
	
	OSCCON = 0x71;				//8M内部时钟
	INTCON = 0;
	
	PIR1 = 0;
	PIE1 = 0;
	PIR2 = 0;
	PIE2 = 0;
	
	TRISA = 0B00000000;
	PORTA = 0B00000000;

	/*初始化USART通信模块*/
	Set_Usart_Async();

	
	INTCON = 0XC0;				//全局中断使能
	
	
	while(1)
	{
		asm("clrwdt");	
		
		PORTA = Recebuffer[0];
		
		//-------------------------------------------
		//发送控制
		if(TRMT)
		{
			TXREG = Sendbuffer[sendcount];	                       
			
			Sendbuffer[sendcount] ++;
			
			sendcount++;
			if(sendcount >= 4)
			{
				sendcount = 0;
			}
		}
		
	}
}


//--------------------------------------
//中断服务
void interrupt Usart_Isr()
{
	static unsigned char tcount = 0;

	
	//-------------------------------------------
	//接收控制，如果接收标志位为1，说明有数据接收完毕
	//RCIF在寄存器被读出后自动清零
	if(RCIF)
	{	
		if(FERR)
		{
			RCREG;							//帧错误
			return;
		}
		
		Recebuffer[rececount] = RCREG;  	//将接收缓冲区内容读出
		rececount++;
			
		if(rececount >= 4)					//接收完一帧数据，处理数据
		{
			rececount = 0;
		}
			
		if(OERR)							//如果有溢出错误
		{
			CREN = 0;						//清零CREN位可将OERR位清零
			CREN = 1;						//再次将CREN置一，以允许继续接收
		}
		
	}
}

/***********************************************
函数名称：Set_Usart_Async
函数功能：Usart状态设置（异步）
入口参数：无
出口参数：无
备注：
************************************************/
/*
SYNC = 0,BRG16 = 0,BRGH = 0;目标波特率 = Fosc/(64*([SPBRGH:SPBRG]+1))

SYNC = 0,BRG16 = 0,BRGH = 1;
SYNC = 0,BRG16 = 1,BRGH = 0;目标波特率 = Fosc/(16*([SPBRGH:SPBRG]+1))

SYNC = 0,BRG16 = 1,BRGH = 1;目标波特率 = Fosc/(4*([SPBRGH:SPBRG]+1))
*/
void Set_Usart_Async()
{
	SPBRG = 47;			//设置波特率为10417 bps，误差0.16%	
	
	SYNC = 0;				//0为异步模式，1为同步模式
	SCKP = 0;
	
    SPEN = 1;				//允许串口操作
	RCIE = 1;				//接收中断  
	TXIE = 0;				//发送中断
    RX9EN = 0;				//0为8位接收，1为9位接收
	TX9EN = 0;				//0为8位发送，1为9位发送
	CREN = 1;				//0为禁止接收，1为使能接收
    TXEN = 1;				//0为禁止发送，1为使能发送
}