#include <sc.h>

void main(void)
{
	asm("nop");
	asm("clrwdt");
	OSCCON = 0X72;				//8M,打开WDT
	
	TRISB = 0;					//PORTB口作输出口
	
	OPTION_REG = 0B00000000;	//Timer0使用内部时钟，预分频为1:2
	
	TMR0 = 0;					//设定Timer初始值
	T0IF = 0;
	T0IE = 0;					//关闭Timer0溢出中断
	
	GIE = 0;					//关闭总中断
	
	while(1)
	{
		if(TMR0 >=125)			//定时125us
		{
			TMR0 -= 125;
			PORTB ^= 0XFF;
		}
		asm("clrwdt");
	}
}

