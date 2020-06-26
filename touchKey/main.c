#include <sc.h>
#define getbit(x, y)   ((x) >> (y)&1)
#define setbit(x, y)  x|=(1<<y)
#define resetbit(x, y)  x&=~(1<<y)
#define reversebit(x, y)  x^=(1<<y)

char IntFlag = 0;
char tempKey0H = 0;
char tempKey0L = 0;
char key0Flag = 0;//1表示为有按键

char tempKey1H = 0;
char tempKey1L = 0;
char key1Flag = 0;//1表示为有按键
int timeCount = 0;
char pwmFlag = 0;

void initTimer0() ;
void initSys();
void checkKey0TouchKey();
void checkKey1TouchKey();
void initPWM();
void mode1_a();
void mode1_b();
void mode1_c();

void main()
{
	initSys();
	while(1)
	{
		asm("clrwdt");
		if(!IntFlag)			//10毫秒执行一次
			continue;
		IntFlag = 0;
		checkKey0TouchKey();
		checkKey1TouchKey();
		if(pwmFlag == 0)
		{
			pwmFlag = 1;
			mode1_c();
		}
	}
}

void initSys()
{
	initTimer0();
	initPWM();
}


void initPWM()
{
	PWMCON1 = 0x40;	//选择C组PWM
	PWMCON0 = 0x21;//分频比 1：4
	PWMCON2 = 0;
	PWMTH = 0;
	PWMTL = 126;		//约等于32K
	PWMD0L = 1;
	PWMD1L = 1;		//pwm1占空比
	PWMD01H = 0;
}

void mode1_a()
{
	PWMD0L = 1;
	PWMD1L = 0;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x01;		//分频比 1：4 ,开启PWM0
	setbit(PORTB, 7);
	
}

void mode1_b()
{
	PWMD0L = 1;
	PWMD1L = 0;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x01;		//分频比 1：4 ,开启PWM0
	resetbit(PORTB, 7);
	
}

void mode1_c()
{
	PWMD0L = 1;
	PWMD1L = 32;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x03;		//分频比 1：4 ,开启PWM0 PWM1
	
}

void mode1_d()
{
	PWMD0L = 1;
	PWMD1L = 63;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x03;		//分频比 1：4 ,开启PWM0 PWM1
	
}

void mode1_e()
{
	PWMD0L = 1;
	PWMD1L = 95;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x03;	//分频比 1：4 ,开启PWM0 PWM1
	
}

void mode2_a()
{
	PWMD0L = 12;
	PWMD1L = 0;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x01;		//分频比 1：4 ,开启PWM0
	setbit(PORTB, 7);
	
}

void mode3_a()
{
	PWMD0L = 20;
	PWMD1L = 0;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x01;		//分频比 1：4 ,开启PWM0
	setbit(PORTB, 7);
	
}

void mode4_a()
{
	PWMD0L = 72;
	PWMD1L = 0;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x01;		//分频比 1：4 ,开启PWM0
	setbit(PORTB, 7);
	
}

void mode5_a()
{
	PWMD0L = 0;
	PWMD1L = 0;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 = 0x60;		//分频比 1：4 ,开启PWM0
	setbit(PORTB, 7);
	setbit(PORTA, 5);
}

void checkKey0TouchKey()
{
	INTCON = 0x20;	//关闭中断
	TRISB |= 0x4F;	//PB0 PB1为输入口
	KEYCON1 = 0x50;	//Key0通道检测
	KEYCON0 = 0x02;
	KEYCON0 |= 0x01;
	while(!(KEYCON0, 7));
	key0Flag = 0;
	if(tempKey0L)
	{
		if(tempKey0L > (KEYDATAL + 10) && tempKey0H >= KEYDATAH)
		{
			key0Flag = 1;
		}
	}
	
	
	if(tempKey0H)
	{
		if(tempKey0H > KEYDATAH)
		{
			if(tempKey0H > (KEYDATAH+1))
			{
				key0Flag = 1;
			}
			else
			{
				//判断低位
				if(tempKey0L > KEYDATAL)
				{
					key0Flag = 1;
				}
				else if((255-tempKey0L)> (KEYDATAL + 10) )
				{
					key0Flag = 1;
				}
			}
		}
	}
	tempKey0H = KEYDATAH;
	tempKey0L = KEYDATAL;
	KEYCON0 &= 0xFE;
	INTCON = 0xA0;
}

void checkKey1TouchKey()
{
	INTCON = 0x20;	//关闭中断
	TRISB |= 0x4F;	//PB0 PB1为输入口
	KEYCON1 = 0x51;	//Key1通道检测
	KEYCON0 = 0x03;
	while(!(KEYCON0, 7));
	key1Flag = 0;
	if(tempKey1L)
	{
		if(tempKey1L > (KEYDATAL + 10) && tempKey1H >= KEYDATAH)
		{
			key1Flag = 1;
		}
	}
	
	
	if(tempKey1H)
	{
		if(tempKey1H > KEYDATAH)
		{
			if(tempKey1H > (KEYDATAH+1))
			{
				key1Flag = 1;
			}
			else
			{
				//判断低位
				if(tempKey1L > KEYDATAL)
				{
					key1Flag = 1;
				}
				else if((255-tempKey1L)> (KEYDATAL + 10) )
				{
					key1Flag = 1;
				}
			}
		}
	}
	tempKey1H = KEYDATAH;
	tempKey1L = KEYDATAL;
	KEYCON0 &= 0xFE;
	INTCON = 0xA0;
	
}



//初始化定时器0
void initTimer0()         
{	
		asm("nop");
		asm("clrwdt");
		INTCON = 0;
		TRISA = 0x00;
		TRISB = 0x04;			//PB2为红外接收口
		WPDB = 0x00;
		WPUB = 0xFF;
		PORTA = 0xFF;
		PORTB = 0xFF;					//系统初始化
		OSCCON = 0X52;				//配置振荡为8M,开 WDT
		OPTION_REG = 0x07;		//Timer0使用内部时钟Focs/4，预分频比为1:128
		TMR0 = 99;				//赋予初始值 4*128*156/8M = 0.01
		//INTCON = 0xE0;			//允许所有未被屏蔽的中断、禁止外设中断，使能Timer0
		
		//TMR0PRD = 128;			//4*4*128/8M = 0.256ms

		INTCON = 0xA0;			//TIME0 中断打开
}

void interrupt Timer0_Isr()
{
	if(T0IF)
	{
	//---------------------------------------
		TMR0 += 99;		//重新赋初值 4*128*156/8M
		if(++timeCount == 10)
		{
			timeCount = 0;
			IntFlag = 1;
		}
	//---------------------------------------
		T0IF = 0;			//清中断标志位	

	}
}