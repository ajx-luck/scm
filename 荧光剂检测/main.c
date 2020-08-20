#include "adc.h"

typedef unsigned char uint8;
typedef unsigned int uint16;

//---------定义全局变量--------------
uint8	intCount = 0;
uint8	intFlag = 0;
char numArray[10] = {0x3F, 0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67};

//---------定义方法------------------
void initConfig();
void Sleep_Mode();

void interrupt Timer0_Isr() {
    if (T0IF) 
	{
        
		//---------------------------------------
        TMR0 += 155;        //重新赋初值，在赋值前Timer0已有计数，故在该基础上加初值
        //---------------------------------------
		if(++intCount >= 100)
		{
			intFlag = 1;
		}	
        
		T0IF = 0;            //清中断标志位	
    }

    if (RBIF) {
        RBIF = 0;            //清中断标志
    }
}


void main()
{
	initConfig();
	for(;;)
	{
		asm("clrwdt");
		if(intFlag == 0)
			continue;
		intFlag = 0;
		TRISA = 0x02;
		ANSEL = 0x02;
		uint16 res = ADC_Result(0x0F);
		uint16 av = 6000/res;		//1.2*10000/2 = 6000放大一万倍，再除以2获得某一个刻度的电压值
		uint16 res2 = 0;
		DelayXms(50);
		res2 = ADC_Result(0x01);
		res = res2 * av;
		if(res > 29000)
		{
			res2 = 0;
		}
	}
}


void initConfig()
{
	PORTA = 0x00;
    PORTB = 0x00;
    PORTC = 0x00;
	TRISA = 0;
    TRISB = 0;
    TRISC = 0;
    WPUA = 0x00;
    WPUB = 0x00;
    WPUC = 0x00;
	WPUE = 0x00;
    PORTA = 0x00;
    PORTB = 0x00;
    PORTC = 0x00;
    IOCB = 0x00;

	
	asm("nop");
    asm("clrwdt");
    INTCON = 0;                    //系统初始化
    OSCCON = 0X71;                //配置振荡为8M,开 WDT
    OPTION_REG = 0x00;        //Timer0使用内部时钟Focs/4，预分频比为1:2
	
    TMR0 = 0;                //赋予初始值
    INTCON = 0xE0;            //允许所有未被屏蔽的中断、禁止外设中断，使能Timer0
}


void Sleep_Mode() {
    INTCON = 0;

    OPTION_REG = 0;

    TRISA = 0B00000000;        //关闭所有输出
    PORTA = 0B01000001;
    WPUA = 0B00000000;

    TRISB = 0B00100100;
    PORTB = 0B01000000;

	TRISC = 0B00000000;
    PORTC = 0B00000011;
    WPUB = 0B00100000;         //RB5 上拉
	

    IOCB = 0B00100100;            //允许RB5 RB2的IO口电平变化中断
    RBIE = 1;                    //允许PORTB电平变化中断
    GIE = 0;                    //GIE = 0时，唤醒后执行SLEEP后程序;GIE = 1时，唤醒后跳至中断服务

    ADCON0 = 0;                    //关闭所有模块

    OSCCON = 0X70;                //配置振荡为16M,关闭WDT
	
    PORTB;                        //读PORTB值并锁存	
			
    asm("clrwdt");

    asm("sleep");                //进入休眠模式

    asm("nop");
	
	


}