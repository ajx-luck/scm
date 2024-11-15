/**********************************************************
延时函数使用范例
**********************************************************/

#include <sc.h>

#ifndef _XTAL_FREQ
 #define _XTAL_FREQ 8000000			//8Mhz,使用内置延时函数必须定义主频
#endif

//微秒级非精准延时函数
void DelayXus(unsigned char x)
{
	while(--x);
}

//毫秒级非精准延时函数
void DelayXms(unsigned char x)
{
	unsigned char i = 0;;
	
	while(--x)
	{
		asm("clrwdt"); 
		while(--i)
		{
			asm("nop");
			asm("nop");
			asm("nop");
			asm("nop");
		}
	}
}

void main(void)
{
	OSCCON = 0X72;			//选择主频为8M
	TRISA = 0;
	PORTA = 1;
	DelayXms(50);
	CLRWDT();
	TRISA = 0;
	PORTA = 1;
	DelayXus(50);
	TRISA = 0;
	PORTA = 0;
	while(1)
	{
		NOP();
		_delay(1000);		//延时1000指令周期(编译器内置函数)
		CLRWDT();
		PORTA ^= 0XFF;
		__delay_us(400);	//延时400us(编译器内置函数)
		CLRWDT();
		PORTA ^= 0XFF;
		__delay_ms(2);		//延时2ms(编译器内置函数)
							//注意编译器内置延时函数没有清看门狗的指令，故延时时间必须小于
							//程序设置的WDT溢出时间，WDT的溢出时间一般会有+-50%的区别，推荐
							//WDT溢出时间/2以内清WDT
		CLRWDT();
		PORTA ^= 0XFF;
	}
}

