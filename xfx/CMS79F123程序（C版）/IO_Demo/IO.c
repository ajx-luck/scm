/*-------------------------------------------
功能：IO输入输出演示
版本：V1.0
日期：2020.06.20 

*本程序由 中微半导体 &应用支持部& 编写整理
*公司网址 www.mcu.com.cn
*技术支持QQ 3001082102  罗工
            3001030138	莫工
-------------------------------------------*/

#include <cms.h>					//芯片头文件，会根据工程选项自动寻找对应型号头文件

#define		Pout	RA2				//定义RA2口 取名Pout
#define 	Pin0	RA0				//定义RA0口 取名Pin0
#define 	Pin1	RA1				//定义RA1口 取名Pin1

void main(void)
{
	asm("nop");
	asm("clrwdt");
	
	OPTION_REG =0;					//预分频给TMR0  
	OSCCON = 0X71;					//内部振荡器Fosc/1
	
	WPUA = 0B00000001;				//配置上拉，1为使能上拉
	WPUB = 0B00000000;
	
	TRISA = 0B00000011;				//配置IO状态，0为输出，1为输入
	TRISB = 0B00000000;
			
	while(1)
	{
		asm("clrwdt");
		
		if(Pin0)
			PORTB ^= 0xff;			//B口整体翻转
		else
			PORTB =0;
			
		if(Pin1)					
			Pout =1;
		else
			Pout =0;			
	}
}