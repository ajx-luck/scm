/*-------------------------------------------

程序名称：休眠模式及唤醒程序
日期版本：2021/01/10 <V1.0>

备注：WDT已被禁止，休眠模式下利用PORTA,PORTB电平变化唤醒 

*本程序由 &应用支持部& 编写整理
-------------------------------------------*/


#include <sc.h>


void Init_System();
void Sleep_Mode();

void main()
{
	Init_System();
	while(1)
	{
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
	ADCON0 = 0;					//关闭所有模块
	PWMCON = 0;
	PWMCON1 = 0;
	
	OSCCON = 0X70;				//配置振荡为8M,

	TRISA = 0B00000001; 		//悬空的管脚设为输出脚
//	PORTA = 0B00000001;			//设置RA0口为输入
	WPUA  = 0B00000001;			//设置RA0口开上拉电阻
	TRISB = 0B0001000;	
	PORTB = 0B00000000;
	WPUB  = 0B00001000;		
   			
	IOCA = 0B00000001;			//允许RA0的IO口电平变化中断
	RAIE = 1;					//允许PORTA电平变化中断
	PEIE = 1;					//PORTA电平变化中断是外设中断，所以必须打开PEIE
   
   	IOCB = 0B00001000;			//允许RB3的IO口电平变化中断
	RBIE = 1;					//允许PORTB电平变化中断
	GIE = 1;					//GIE = 0时，唤醒后执行SLEEP后程序;GIE = 1时，唤醒后跳至中断服务
	
	
	SWDTEN = 0;					//关闭WDT,此处在仿真器配置里面必须设置WDT为DISABLE，否则软件无法关闭WDT
	
	RAIF = 0;					//清中断标志
	PORTA;						//读PORTA值并锁存,必须在打开电平中断允许后读取
	RBIF = 0;					//清中断标志
	PORTB;						//读PORTB值并锁存,必须在打开电平中断允许后读取			
	asm("clrwdt");

	asm("sleep");				//进入休眠模式
	
	asm("nop");
	Init_System();
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
	OSCCON = 0X70;				//配置振荡为8M
	SWDTEN = 1;					//开 WDT
	OPTION_REG = 0;
	
    WPUA  = 0B00000001;			//初始化上拉
    WPUB  = 0B00001000;			
  
 
	TRISA = 0B00000001;			//初始化IO状态，PORTA.0设为上拉输入
	TRISB = 0B00001000;			//PORTB.3设为上拉输入

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
	if(RAIF)
	{
		RAIF = 0;			//清中断标志
		PORTA;				//读PORTB值并锁存
		PORTA ^= 0X04;
		//Init_System();
	}
	if(RBIF)
	{
		RBIF = 0;			//清中断标志
		PORTB;				//读PORTB值并锁存
		PORTA ^= 0X02;
		//Init_System();
	}
}