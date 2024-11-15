/*-------------------------------------------

程序名称：休眠模式及唤醒程序
日期版本：2018/6/15 <V1.1>

备注：WDT已在CONFIG中禁止，休眠模式下利用PORTB电平变化唤醒

*本程序由 中微半导体有限公司 &应用支持部& 编写整理
*公司网址 www.mcu.com.cn
*技术支持QQ 3001082102  罗工
            3001085706	陈工
-------------------------------------------*/


#include <cms.h>
/*************************************************************************/
volatile unsigned char KEYRAM0 @ 0x113;
volatile unsigned char KEYRAM1 @ 0x114;
volatile unsigned char KEYRAM2 @ 0x117;
volatile unsigned char KEYRAM3 @ 0x118;

volatile unsigned char PFGRAM0 @ 0x11B;
volatile unsigned char PFGRAM1 @ 0x11E;
/*************************************************************************/

void Init_System();
void Sleep_Mode();

void main()
{
	Init_System();
	while(1)
	{
		asm("clrwdt");
		
		Sleep_Mode();
	}
}


/***********************************************
函数名称：Sleep_Mode
函数功能：进入休眠模式
入口参数：无
出口参数：无
备注：
************************************************/
void Sleep_Mode()
{
	INTCON = 0;		
	
	OPTION_REG = 0;

	KEYRAM0 = 0;
	KEYRAM1 = 0;
	KEYRAM2 = 0;
	KEYRAM3 = 0;
	PFGRAM0 = 0;
	PFGRAM1 = 0;   //休眠需要关掉这几个寄存器
	
	
	ANSEL = 0;					//都为数字通道
	ANSELH = 0;
	 
	TRISA = 0B00000000; 		//关闭所有输出
	PORTA = 0B00000000;
	WPUA  = 0B00000000;
	
	TRISB = 0B00000100;	
	PORTB = 0B00000000;
	WPUB  = 0B00000100;		

	IOCA = 0B00000000;
	IOCB = 0B00000100;			//允许RB1的IO口电平变化中断
	RBIE = 1;					//允许PORTB电平变化中断
	GIE = 1;					//
	
	ADCON0 = 0;					//关闭所有模块
	PWMCON0 = 0;
	EECON1 = 0;					//清此寄存器,有好处(测试组建议)
	OPA0CON = 0;
	WDTCON = 0;					//关闭看门狗
	
	PORTB;						//读PORTB值并锁存			
	asm("clrwdt");

	asm("sleep");				//进入休眠模式
	
	asm("nop");
	asm("nop");
	asm("clrwdt");
	
	WDTCON = 0x01;				//重新开启看门狗
	Init_System();				//唤醒产生中断后返回此处
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
	OSCCON = 0X71;				//配置振荡为8M
	OPTION_REG = 0;
	
    WPUA  = 0B00000011;			//初始化上拉
    WPUB  = 0B00000100;				
 
	TRISA = 0B00000011;			//初始化IO状态
	TRISB = 0B00000100;
 
	PORTA = 0B00000000;
	PORTB = 0B00000000;			//初始化输出
	
	ANSEL = 0;
	ANSELH = 0;
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
		PORTB;				//读PORTB值
		RBIF = 0;			//清中断标志
		
	}
}