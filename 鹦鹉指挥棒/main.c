#include <sc.h>

#define getbit(x, y)   ((x) >> (y)&1)
//间隔时间 30*8ms
#define		MAXTIME		30
volatile unsigned char irLeftStep = 0; //0为未遮挡 1遮挡  2消抖
volatile unsigned char irRightStep = 0; //0为未遮挡 1遮挡  2消抖
unsigned char	revLeftCount = 0;//收到的波形计数
unsigned char	revRightCount = 0;//收到的波形计数
unsigned char	revLeftZeroCount = 0;//未收到的波形计数
unsigned char	revRightZeroCount = 0;//未收到的波形计数
unsigned char	checkCount = 0;	//检测次数
unsigned int	waitTimeCount = 0;	//等待时间计数
unsigned char	lowDealy = 0;
unsigned char	workStep = 0;		//左到右 1	右到左2  上下同时 3
volatile unsigned char pwmTime;
volatile bit	B_MainLoop;
volatile unsigned char MainTime;


void Init_System();
void checkIRKey();
void procesWork();

/***********************************************************
主循环
***********************************************************/
void main()
{
	PORTB = 0x00;
	Init_System();
	while(1)
	{
		CLRWDT();
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			checkIRKey();
			procesWork();
		}
	}
}

void procesWork()
{
	
	if(workStep == 3)
	{
		workStep = 0;
	}
	if(lowDealy > 0)
	{
		//PORTB &= (~(0x01<<(workStep-1)));
		if(--lowDealy == 0)
		{
			//PORTB |= 0x07;
			workStep = 0;
		}
	}

}

//系统初始化
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//禁止中断
	OSCCON = 0X71;			//配置振荡为8M
	OPTION_REG = 0;
	
	//延时等待电源电压稳定
	//DelayXms(200);
	WPUB = 0x00;
	TMR0 = 5;				
	TRISB = 0x06;			//PB3、PB4为红外接收口
	PDCONB = 0x06;
	PORTB = 0x00;
	INTCON = 0XA0;			//使能中断
}

//检测红外遮挡
void checkIRKey()
{
	if(getbit(PORTB, 1))
	{
		revLeftCount++;		//检测到左边遮挡了
	}
	
	if(getbit(PORTB, 2))
	{
		revRightCount++;		//检测到右边遮挡了
	}
	
	if(waitTimeCount > 0)
	{
		waitTimeCount++;
		if(waitTimeCount > 375)
		{
			waitTimeCount = 0;//超时
		}
	}
	if(++checkCount >= 20)
	{
		if(revLeftCount > 5)
		{
			if(irLeftStep == 0)
			{
				irLeftStep = 1;		//检测到遮挡了
				if(waitTimeCount == 0)
				{
					waitTimeCount = 1;
				}
				else
				{
					lowDealy = 12;
					if(waitTimeCount > MAXTIME)
					{
						workStep = 2;
					}
					else
					{
						workStep = 3;
					}
				}
			}
			revLeftZeroCount = 0;		//重置
		}
		else
		{
			if(++revLeftZeroCount > 1)
			{
				revLeftZeroCount = 1;
				irLeftStep = 0;			//移开了
			}
		}
		
		if(revRightCount > 5)
		{
			if(irRightStep == 0)
			{
				irRightStep = 1;		//检测到遮挡了
				if(waitTimeCount == 0)
				{
					waitTimeCount = 1;
				}
				else
				{
					lowDealy = 12;
					if(waitTimeCount > MAXTIME)
					{

						workStep = 1;
					}
					else
					{
						workStep = 3;
					}
				}
				
			}
			revRightZeroCount = 0;		//重置
		}
		else
		{
			if(++revRightZeroCount > 1)
			{
				revRightZeroCount = 1;
				irRightStep = 0;			//移开了
			}
		}

		
		//重置检测条件
		checkCount = 0;
		revLeftCount = 0;
		revRightCount = 0;
	}
		
}

/***********************************************************
中断服务函数
***********************************************************/
void interrupt Isr_Timer()
{
	if(T0IF)				//若只使能了一个中断源,可以略去判断
	{
		T0IF = 0;
		TMR0 += 5;
		if(++MainTime >= 32)
		{
			MainTime = 0;
			B_MainLoop = 1;
		}
		//模拟pwm输出
		if(pwmTime < 12)
			PORTB &= 0xDF;
		else
			PORTB |= 0x20;
		if(++pwmTime >= 44)
		{
			pwmTime = 0;
		}
	}

}
