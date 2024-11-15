/*-------------------------------------------

程序名称：IO设置示例程序
日期版本：2019/12/27 <V1.1>

备注：RA0做上拉输入,RA1做输入口, RB口全做输出，其余口全为输出
      RA2根据RA1状态输出，为高：输出高，为低：输出低
      RB口根据RA0口状态，为高：高低50%占空比输出 为低：输出低

*本程序由 中微半导体有限公司 &应用支持部& 编写整理
*公司网址 www.mcu.com.cn
*技术支持QQ 3001082102  罗工
            3001085706	陈工
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
	OSCCON = 0X71;					//内部振荡器8M
	
	WPUA = 0B00000001;				//配置上拉情况
	WPUB = 0B00000000;
	
	TRISA = 0B00000011;				//配置IO状态
	TRISB = 0B00000000;
	
	while(1)
	{
		asm("clrwdt");
		
		if(Pin0)
			PORTB ^= 0xff;
		else
			PORTB =0;
			
		if(Pin1)
			Pout =1;
		else
			Pout =0;			
	}
}

