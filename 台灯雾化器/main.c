//#include <sc.h>
#include "pwm.h"
#include "adc.h"
#include "Touch_Kscan_Library.h"

typedef unsigned char uint8;
typedef unsigned int uint16;

volatile unsigned char MainTime;
volatile unsigned char pwmTime;
volatile unsigned char irStep = 0; //0为未遮挡 1遮挡  2消抖
unsigned char	revCount = 0;//收到的波形计数
unsigned char	revZeroCount = 0;//未收到的波形计数
unsigned char	checkCount = 0;	//检测次数
unsigned char	pwm0Step = 1;	//	pwm0档位
unsigned char	pwm1Step = 1;	//	pwm1档位
unsigned int 	timeCount = 0;
unsigned int 	keyNub = 0;
unsigned char 	keyCount0 = 0;
unsigned char 	keyCount1 = 0;
unsigned char 	keyCount2 = 0;
unsigned char 	keyCount3 = 0;
unsigned char   fanStep = 0;
unsigned char   ledStep = 0;
unsigned char   lightStep = 0;

volatile bit	penwuFlag;	//发射标记
volatile bit	B_MainLoop;

unsigned int ADC_AVG(unsigned char adch,unsigned char adtime);
void Sleep_Mode();

//系统初始化
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//禁止中断
	OSCCON = 0X72;			//配置振荡为8M
	OPTION_REG = 0;
	
	//延时等待电源电压稳定
	//DelayXms(200);
	WPUB = 0x00;
	WPDB = 0x00;
	WPUA = 0x00;
	//PIE2 = 0;
	PIE1 = 2;
	PR2 = 250;				//8M下将TMR2设置为125us中断
	T2CON = 4;				//使能定时器2
	TRISA = 0x00;
	TRISB = 0x00;			//PB2为红外接收口
	PORTB = 0x00;
	PORTA = 0x00;
	INTCON = 0XC0;			//使能中断
}


/**********************************************************
刷新特殊功能寄存器
**********************************************************/
void Refurbish_Sfr()
{

	//刷新中断相关控制寄存器
	PIE1 = 2;
	PR2 = 250;
	INTCON = 0XC0;
	if(4 != T2CON)
		T2CON = 4;
}


void startPWM()
{	
	initPWM();
}



/***********************************************************
键处理函数
***********************************************************/
void KeyServer()
{
	static unsigned int KeyOldFlag = 0;
	unsigned int i = (unsigned int)((KeyFlag[1]<<8) | KeyFlag[0]);
	if(i)
	{
		keyNub = i;
		if(keyNub & 0x01){
			if(++keyCount0 > 200)
				keyCount0 = 200;
		}
		if(keyNub & 0x02){
			if(++keyCount1 > 200)
				keyCount1 = 200;
		}
		if(keyNub & 0x04){
			if(++keyCount2 > 200)
				keyCount2 = 200;
		}
		if(keyNub & 0x08){
			if(++keyCount3 > 200)
				keyCount3 = 200;
		}
	}
	else
	{
		if(keyCount0 > 5)
		{
			//喷雾开关
			penwuFlag =! penwuFlag;
			if(penwuFlag)
			{
				whOn();
			}
			else
			{
				wuhuaOff();
			}
		}
		if(keyCount1 > 5)
		{
			//风扇开关
			if(++fanStep > 3)
				fanStep = 0;
			if(fanStep == 0)
				fanOff();
			else if(fanStep == 1)
				fan1();
			else if(fanStep == 2)
				fan2();
			else if(fanStep == 3)
				fan3();
		}
		if(keyCount2 > 5)
		{
			//台灯开关
			if(++ledStep > 3)
				ledStep = 0;
			if(ledStep == 0)
			{
				ledOff();
				lightStep = 0;
			}
			else if(ledStep == 1)
				whiteOn();
			else if(ledStep == 2)
				yellowOn();
			else if(ledStep == 3)
				hunheOn();
		}
		if(keyCount2 > 5)
		{
			//亮度开关
			if(++lightStep > 4)
				lightStep = 1;
			if(lightStep == 1)
				light1();
			else if(lightStep == 2)
				light2();
			else if(lightStep == 3)
				light3();
			else if(lightStep == 4)
				light4();
		}
		keyCount0 = 0;
		keyCount1 = 0;
		keyCount2 = 0;
		keyCount3 = 0;
		keyNub = 0;
	}
}



/***********************************************************
中断服务函数
***********************************************************/
void interrupt Isr_Timer()
{
	if(TMR2IF)				//若只使能了一个中断源,可以略去判断
	{
		TMR2IF = 0;
		
		if(++MainTime >= 16)
		{
			MainTime = 0;
			B_MainLoop = 1;
		}
		//模拟pwm输出
	}
	else
	{
		PIR1 = 0;
	//	PIR2 = 0;
	}
}

/***********************************************************
主循环
***********************************************************/
void main()
{
	PORTB = 0x00;
	PORTA = 0x00;
	Init_System();
	initPWM();
	while(1)
	{
		CLRWDT();
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			//sRefurbish_Sfr();
			CheckTouchKey();
			KeyServer();
			uint16 res = ADC_AVG(0x0F,8);
			uint16 av = 6000/res;		//一刻度的电压
			if(res > 768)		//(0.6/3.2)*4096 
			{
				//电压低于3.2V
				penwuFlag = 0;
				wuhuaOff();
				fanOff();
				ledOff();
				ledStep = 0;
				fanStep = 0;
			}
			res = ADC_AVG(0x00,8);
			if(res > 2048)
			{
				//干烧了
				penwuFlag = 0;
				wuhuaOff();
			}
			
			if(penwuFlag == 0 && ledStep == 0 && fanStep == 0 && keyCount0 == 0 && keyCount1 == 0 && keyCount2 == 0 && keyCount3 == 0)
			{
				Sleep_Mode();
			}
		}
	}
}



unsigned int ADC_AVG(unsigned char adch,unsigned char adtime)
{
	unsigned int adsum = 0;
	for(char i = 0; i< adtime;i++)
	{
		adsum+=ADC_Sample(adch);
	}
	return adsum/adtime;
}


void Sleep_Mode() {
    INTCON = 0;

    OPTION_REG = 0;
	
    WPUB = 0x18;         //RB5 上拉
	

    IOCB = 0x18;            //允许RB3 RB4的IO口电平变化中断
    RBIE = 1;                    //允许PORTB电平变化中断
    GIE = 0;                    //GIE = 0时，唤醒后执行SLEEP后程序;GIE = 1时，唤醒后跳至中断服务

    ADCON0 = 0;                    //关闭所有模块

    OSCCON = 0X70;                //配置振荡为16M,关闭WDT
	
    PORTB;                        //读PORTB值并锁存	
			
    asm("clrwdt");

    asm("sleep");                //进入休眠模式

    asm("nop");
	OSCCON = 0X72;                //配置振荡为16M,开WDT
	IOCB = 0x00;
}