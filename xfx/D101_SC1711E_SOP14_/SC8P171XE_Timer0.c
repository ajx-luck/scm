/*-------------------------------------------
功能：TMR0演示
版本：V1.0
日期：2021.01.04 

*本程序由 中微半导体 &应用支持部& 编写整理
*公司网址 www.mcu.com.cn

-------------------------------------------*/


#include <sc.h>

void main(void)
{
	asm("nop");
	asm("clrwdt");
	OSCCON = 0X70;				//内部振荡器8M，指令时钟为8M/4=2M
	
	TRISA = 0;					//PORTA口作输出口
	TRISB = 0;					//PORTB口作输出口
	
	OPTION_REG = 0B00000000;	//Timer0使用内部时钟，预分频为1:2，每个值0.125uS*4*2=1uS
	
	TMR0 = 6;					//设定Timer初始值，计时时间为（256-6）*4*2/8M=250uS
	T0IF = 0;
	T0IE = 1;					//使能Timer0溢出中断
	
	GIE = 1;					//开启总中断
	
	while(1)
	{
		asm("clrwdt");
	}
}

void interrupt Timer0_Isr(void)
{
	if(T0IF)
	{
		TMR0 += 6;			//TMR0不能自动赋值，操作TIM0的时候,TIME是不计数的，一般为两个周期，所以加（6+2）=8
		T0IF = 0;
		
		PORTB ^= 0XFF;
	}
}
