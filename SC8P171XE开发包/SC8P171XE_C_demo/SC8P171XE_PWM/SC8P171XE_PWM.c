/*-------------------------------------------
功能：PWM演示
版本：V1.0
日期：2021.01.06 

*本程序由 中微半导体 &应用支持部& 编写整理
*公司网址 www.mcu.com.cn

-------------------------------------------*/
#include <sc.h>           		//调用单片机的头文件

void main(void)            		//主函数,单片机开机后就是从这个函数开始运行
{
	unsigned int delaycnt = 0;
	unsigned char pwmbuf = 0;

	asm("nop");
	asm("clrwdt");
	OSCCON = 0X70;				//8M
	
	TRISA = 0B00111110;			//选择PWM0~1的PA1,PA2口设为输入
								//对应PWM3~5的RA3~RA5设为输入 
								//以下是对PWM功能初始化
	PWMCON = 0B00000100;		//PWM选择时钟源为Fosc/1,PWM0反向
	
	PWMTH = 0B00000001;			//PWM0~3周期选择为01FF，则周期为（511+1）*1/8M=64uS，周期的时钟分频在PWMCON选择
								//PWM4周期选择为0FF，则周期为（255+1）*1/8M=32uS
	PWMTL = 0XFF;				//PWM2~3必须先写高位再写低位
	PWM4TL = 0XFF;				//PWM4必须先写高位再写低位
	
	PWMD01H = 0X00;				//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出							
    PWMD0L = 0X1F;				//脉宽为（31+1）*1/8M=4uS,则占空比为1/16
	PWMD1L = 0X7F;				//脉宽为（127+1）*1/8M=16uS,则占空比为1/4
								//PWM0~1可以选择先写高位也可以先写低位
	PWMD23H = 0X00;				//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出							
    PWMD2L = 0X3F;				//脉宽为（63+1）*1/8M=8uS,则占空比为1/8
	PWMD3L = 0XFF;				//脉宽为（255+1）*1/8M=32uS,则占空比为1/2
								//PWM2~3必须先写高位再写低位 
    
    PWMD4L = 0X3F;				//脉宽为（63+1）*1/8M=8uS,则占空比为1/4
    							//PWM4占空比高位在PWMTH的4,5位 
    
    PWMIF = 0;              	//清零PWMIF中断标志位
    PWMCON = 0B00000111;		//PWM选择时钟源为Fosc/1,PWM0反向，允许PWM0,PWM1使能
    PWMCON1 = 0B00100111;		//允许PWM2,PWM3,PWM4使能，PWM4反向
	TRISA = 0B00000000;			//选择的PA1,PA2口设为输出

    while(1)					//死循环,单片机初始化后,将一直运行这个死循环
    {
		asm("clrwdt");
		if(++delaycnt >5000)	//延时5000个软件周期，非精确定时
   		{
   			delaycnt = 0;        //清零以备下次重新计数
			
			pwmbuf++;			//占空比加一
			PWMD0L = pwmbuf;	//写入占空比,注意写0仍会有波形输出，如要输出低电平需关掉PWM，口线输出低
			PWMD23H = 0X00;	
			PWMD2L = pwmbuf;
		
   		}
	
    }
}


