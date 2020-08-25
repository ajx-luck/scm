#include "adc.h"
#include "number.h"

#define LEDCTR()		PORTB ^= 0x20
#define BLUEON()	PORTE |= 0x01
#define BLUEOFF()	PORTE &= 0xFE

typedef unsigned char uint8;
typedef unsigned int uint16;

//---------定义全局变量--------------
uint8	intCount = 0;
uint8	intFlag = 0;
uint8	nubStep = 0;	//0为无 ----3为强
uint8	tempbaiweiNum = 0;	//百位
uint8	tempshiweiNum = 0;	//十位
uint8	tempgeweiNum = 0;	//个位
uint8 refreshCount = 0;	//刷新计时
uint16	ygNub;			//荧光剂数量
uint8	count500ms = 0;
uint16	timeCount = 0;
uint8	nubShowTime = 20;
uint8	keyClick = 0;
uint8 keyNub = 0;
uint8	keyCount = 0;//消抖计数
char numArray[10] = {0x3F, 0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67};

//---------定义方法------------------
void initConfig();
void Sleep_Mode();
void refreshNub();
void keyCtr();
char keyRead(char KeyStatus);
unsigned int ADC_AVG(unsigned char adch,unsigned char adtime);

void interrupt Timer0_Isr() {
    if (T0IF) 
	{
        
		//---------------------------------------
        TMR0 = 150;        //重新赋初值，在赋值前Timer0已有计数，故在该基础上加初值
        //---------------------------------------
		if(++intCount >= 100)
		{
			intFlag = 1;
			if(++count500ms >= 100)
			{	
				count500ms = 0;
				timeCount++;
				if(nubShowTime > 0)
				{
					--nubShowTime;
				}
			}
		}	
        
		T0IF = 0;            //清中断标志位	
    }

    if (RBIF) {
        RBIF = 0;            //清中断标志
    }
}


void main()
{
	initConfig();
	for(;;)
	{
		asm("clrwdt");
		refreshNub();
		if(intFlag == 0)
			continue;
		intFlag = 0;
		
		keyCtr();
		
		TRISB |= 0x04;
		ANSEL = 0x00;
		ANSELH = 0x01;
	
		uint16 res = ADC_AVG(0x0F,8);
		uint16 av = 6000/res;		//1.2*10000/2 = 6000放大一万倍，再除以2获得某一个刻度的电压值
		uint16 res2 = 0;
		for(int i=0;i<10;i++)
		{
			refreshNub();
		}
		/**
		if(nubShowTime == 20)
		{
			res2 = ADC_AVG(0x08,8);
			res = res2 * av;
			ygNub = res/100;
			//ygNub = res;
		}
		else
		{
			BLUEOFF();
		}
		**/
		
		res2 = ADC_AVG(0x08,8);
		if(res2)
		{
			//res2 = ADC_AVG(0x08,8);
			res = res2 * av;
			//ygNub = res/10;
			nubShowTime = 20;
		}
		nubShowTime = 20;
		//ygNub = 500;
	}
}


void keyCtr()
{
	keyClick = keyRead(0x18&(~PORTB));
	if(keyClick > 0)
	{
		if(keyNub & 0x08)
		{
			//K1按下了,控制LED灯
			LEDCTR();
		}
		else
		{
			//K2按下了
			BLUEON();
			nubShowTime = 20;
			count500ms = 0;
		}
	
	
	}
}

//刷新数码管
void refreshNub()
{
	if(nubShowTime == 0)
	{
		setInput();
		return;
	}
	if(++refreshCount >= 10)
	{
		refreshCount = 0;
		tempbaiweiNum = ygNub/100;
		tempshiweiNum = (ygNub%100)/10;
		tempgeweiNum = ygNub%10;
	}
	low1(numArray[tempbaiweiNum],numArray[tempshiweiNum],numArray[tempgeweiNum],1,1);
	low2(numArray[tempbaiweiNum],numArray[tempshiweiNum],numArray[tempgeweiNum],1);
	low3(numArray[tempbaiweiNum],numArray[tempshiweiNum],numArray[tempgeweiNum],1);
	low4(numArray[tempbaiweiNum],numArray[tempshiweiNum],numArray[tempgeweiNum],1,1);
	/**
	DP();
	TITLE();
	showNubBaiwei(numArray[tempbaiweiNum]);
	setInput();
	showNubShiwei(numArray[tempshiweiNum]);
	setInput();
	showNubGewei(numArray[tempgeweiNum]);
	**/
	DelayXms(1);
	switch(nubStep)
	{
		case 0:
		WU();
		break;
		case 1:
		RUO();
		break;
		case 2:
		ZHONG();
		break;
		case 3:
		QIANG();
		break;
	}
	DelayXms(3);
}

unsigned int ADC_AVG(unsigned char adch,unsigned char adtime)
{
	unsigned int adsum = 0;
	for(char i = 0; i< adtime;i++)
	{
		adsum+=ADC_Sample(adch);
		refreshNub();
	}
	return adsum/adtime;
}


void initConfig()
{
	COMEN = 0x00;
	PORTA = 0x00;
    PORTB = 0x00;
    PORTC = 0x00;
	TRISA = 0;
    TRISB = 0x18;
    TRISC = 0;
    WPUA = 0x00;
    WPUB = 0x18;
    WPUC = 0x00;
	WPUE = 0x00;
    PORTA = 0x00;
    PORTB = 0x00;
    PORTC = 0x00;
    IOCB = 0x00;

	
	asm("nop");
    asm("clrwdt");
    INTCON = 0;                    //系统初始化
    OSCCON = 0X71;                //配置振荡为8M,开 WDT
    OPTION_REG = 0x06;        //Timer0使用内部时钟Focs/4，预分频比为1:128
	
    TMR0 = 0;                //赋予初始值
    INTCON = 0xE0;            //允许所有未被屏蔽的中断、禁止外设中断，使能Timer0
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
	OSCCON = 0X71;                //配置振荡为16M,开WDT
	IOCB = 0x00;
}

char keyRead(char KeyStatus)	
{ 
	if (KeyStatus)
	{
		keyNub = KeyStatus;
		keyCount++;
	}
	else
	{
		if(keyCount >= 8)
		{
			keyCount = 0;
			return	1;
		}
		keyCount = 0;
		keyNub = 0;
	}
	return 0;
}