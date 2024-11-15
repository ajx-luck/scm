/**********************************************************

**********************************************************/

#include <sc.h>




void DelayXms(unsigned char x);

void Init_System();

	
void main(void)            		//主函数,单片机开机后就是从这个函数开始运行
{
	unsigned int delaycnt = 0;
	unsigned char pwmbuf = 0X1F;

	Init_System();
	
							
		PWMCON1 = 0B01100000;	//PWM选择C组，死区1禁止，死区2使能，死区时钟源为Fosc/4

		PWMTL = 200;
		PWM4TL = 200;
		PWMTH = 0;		//周期选择为0FF，则周期为（255+1）*1/8M，周期的时钟分频在PWMCON0选择
		PWMD0L = 25;
		PWMD1L = 50;	
		PWMD2L = 50;   //互补模式，PWM2的占空比与PWM3互补
		PWMD3L = 0;
		PWMD4L = 200;
		
		PWMD01H = 0;
		PWMD23H = 0;					//配置PWM2,PWM3的占空比，该值不能超过周期，否者为100%输出
		PWM23DT = 0X03;				//死区设为2uS，计算为（3+1）*1/8M*4
		PWMCON0 = 0X1F;				//选择PWM0,PWM1,分频比为1
		TRISB= 0;						//对应的口线设为输出
		
		
    while(1)					//死循环,单片机初始化后,将一直运行这个死循环
    {
		delaycnt++;
		if(delaycnt >2000)
		{
		   delaycnt =0;
		    PWMD2L++;
		    if( PWMD2L >=250)
		    PWMD2L = 10;
			
		
		}
		
    }
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
	OSCCON = 0X70;				//配置振荡为8M,不开WDT
	OPTION_REG = 0;
	
	TRISA = 0B00000000;			//初始化IO状态
	TRISB = 0B00000000;

//	PORTA = 0B00000000;
	PORTB = 0B00000000;			//初始化输出

}