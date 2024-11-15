#include <sc.h>

typedef unsigned char u8t;
typedef unsigned short u16t;

u8t IntFlag = 0;
u8t intCount = 0;
u8t colorStep = 0;
u8t red = 0;
u8t lastRed = 0;
u8t green = 0;
u8t lastGreen = 0;
u8t blue = 0;
u8t lastBlue = 0;
u8t delayTime = 0;
u8t workStep = 0;	//0停止 1工作  2暂停
u8t waitTime = 0;
u8t workTime = 0;
u8t count1s = 0;
u8t ledCount = 0;
u8t keyCount = 0;
u8t chrgFlag = 0;
u8t chrgFullCount = 0;
u8t sleepTime = 0;


void InitSys();
void workCtr();
void showRGB();
void keyCtr();
char keyRead(char KeyStatus);
void rainbow();
void chrgCtr();
void gotoSleep();

void main()
{
	InitSys();
	while(1)
	{
		asm("clrwdt");
		if(workStep == 1)
		{
			showRGB();
		}
		if(!IntFlag)
			continue;			//10ms执行一次
		IntFlag = 0;
		chrgCtr();
		if(chrgFlag == 0)
			keyCtr();
		workCtr();
		if((0x10 & PORTB) == 0 && keyCount == 0 && workStep == 0)
		{
			if(++sleepTime > 200)
			{
				sleepTime = 0;
				gotoSleep();
			}
		}
	}
}


void gotoSleep()
{
	sleepTime = 0;
	RBIE = 1;                    //允许PORTB电平变化中断
    GIE = 0;                    //GIE = 0时，唤醒后执行SLEEP后程序;GIE = 1时，唤醒后跳至中断服务

	IOCB = 0x18;
	OSCCON = 0X71;                //配置振荡为16M,关闭WDT
	PORTA;
    PORTB;                        //读PORTB值并锁存	
			
    asm("clrwdt");

    asm("sleep");                //进入休眠模式

    asm("nop");
	OSCCON = 0X81;                //配置振荡为8M,开 WDT
	PORTA;
    PORTB;  
	IOCB = 0x00;
	RBIE = 0; 
}


void chrgCtr()
{
	if(0x10 & PORTB)
	{
		//充电中
		workStep = 0;
		waitTime = 0;
		workTime = 0;
		chrgFlag = 1;
		if(0x20 & PORTB)
		{
			//充满了
			if(++chrgFullCount > 200)
			{
				chrgFullCount = 200;
				//PORTA |= 01;			//灭红灯
				PORTA &= 0xFE;
				PORTB &= 0xFB;
				//PORTB &= 0x7F;			//亮绿灯
				PORTB |= 0x82;	
			}
		}
		else
		{
			chrgFullCount = 0;
			//红灯闪烁
			PORTB &= 0x79;
			if(count1s < 50)
			{
				PORTA |= 0x01;
				PORTB |= 0x04;			//8脚输出高
			}
			else
			{
				PORTA &= 0xFE;
				PORTB &= 0xFB;
			}
		}
	}
	else
	{
		chrgFlag = 0;
	}
}


void workCtr()
{
	if(workStep == 1)
	{
		PORTA |= 0x06;
		rainbow();
		if(workTime == 0)
		{
			workStep = 2;
		}
	}
	else if(workStep == 0)
	{
		if(chrgFlag)
		{
			PORTA &= 0x01;
			//PORTB |= 0x7F;
			PORTB &= 0xFE;
		}
		else
		{
			PORTA = 0x00;
			PORTB = 0x00;
		}
	}
	else if(workStep == 2)
	{
		PORTB &= 0xF9;
		PORTA = 0x00;	
		//PORTB = 0xBE;
		//PORTA = 0x01;			//亮蓝灯
		//PORTB &= 0xBE;
		PORTB |= 0x41;	
		if(waitTime == 0)
		{
			workStep = 0;
		}
	}
}

//亮灯逻辑  PB1绿 PB2红 PB3蓝
void showRGB()
{
	
	if(blue > ledCount)
	{
		PORTB |= 0x41;			//3脚输出高， 10脚输出高
	}
	else
	{
		PORTB &= 0xBE;
	}
	
	if(red > ledCount)
	{
		PORTA |= 0x01;			//1脚输出高
		PORTB |= 0x04;			//8脚输出高
	}
	else
	{
		PORTA &= 0xFE;
		PORTB &= 0xFB;
	}
	
	if(green > ledCount)
	{
		PORTB |= 0x82;			//2脚输出高 9脚输出高
	}
	else
	{
		PORTB &= 0x7D;
	}
	if(++ledCount > 254)
		ledCount = 0;
}



void InitSys()
{
	asm("nop");
    asm("clrwdt");
	PORTA = 0x01;
	PORTB = 0xFF;
    INTCON = 0;                    //系统初始化
    OSCCON = 0X71;                //配置振荡为8M,开 WDT
    OPTION_REG = 0x00;        //Timer0使用内部时钟Focs/4，预分频比为1:2
    TMR0 = 155;                //赋予初始值
    INTCON = 0xE0;            //允许所有未被屏蔽的中断、禁止外设中断，使能Timer0
	TRISA = 0x00;
	TRISB = 0x38;
	PORTA = 0x01;
	PORTB = 0xFF;				
	PDCONB = 0x00;
	WPUB = 0x28;
	
	
}

void keyCtr()
{
	 PORTB;
	if(keyRead(0x08 & (~PORTB)))
	{
		if(workStep == 1)
		{
			workStep = 2;
			waitTime = 30;
		}
		else
		{
			workStep = 1;
			colorStep = 1;
			workTime = 120;
		}
	}
}

char keyRead(char KeyStatus)	
{ 
	if (KeyStatus)
	{
		if(++keyCount >= 150)
		{
			keyCount = 150;
		}
	}
	else
	{
		if(keyCount >= 5)
		{
			keyCount = 0;
			return	1;
		}
		keyCount = 0;
	}
	return 0;
}



void rainbow()
{
	//lastRed = lastGreen = lastBlue = 0;
	if(red > lastRed)
		red--;
	if(green > lastGreen)
		green--;
	if(blue > lastBlue)
		blue--;
	if(red < lastRed)
		red++;
	if(green < lastGreen)
		green++;
	if(blue < lastBlue)
		blue++;
	if(delayTime > 0)
	{
		delayTime--;
		return;
	}
	if(colorStep == 1)
	{
		lastRed = 255;
		lastGreen = 0;
		lastBlue = 0;
		
	}
	else if(colorStep == 2)
	{
		lastRed = 255;
		lastGreen = 255;
		lastBlue = 0;
	}
	else if(colorStep == 3)
	{
		lastRed = 0;
		lastGreen = 255;
		lastBlue = 0;
	}
	else if(colorStep == 4)
	{
		lastRed = 0;
		lastGreen = 0;
		lastBlue = 255;
	}
	else if(colorStep == 5)
	{
		lastRed = 255;
		lastGreen = 0;
		lastBlue = 255;
	}
	else if(colorStep == 6)
	{
		lastRed = 255;
		lastGreen = 0;
		lastBlue = 0;
	}
	else if(colorStep == 7)
	{
		lastRed = 255;
		lastGreen = 255;
		lastBlue = 0;
	}
	else if(colorStep == 8)
	{
		lastRed = 0;
		lastGreen = 255;
		lastBlue = 0;
	}

		
	if(red == lastRed && blue == lastBlue && green == lastGreen)
	{
		if(++colorStep > 8)
		{
			colorStep = 4;
		}
		if(delayTime == 0)
			delayTime = 90;
	}
}

/***********************************************
函数名称：Timer0_Isr
函数功能：中断服务
入口参数：无
出口参数：无
备注：
***********************************************/
void interrupt Timer0_Isr() {
    if (T0IF) {
        //---------------------------------------
        TMR0 += 155;        //重新赋初值，在赋值前Timer0已有计数，故在该基础上加初值
        //---------------------------------------

        T0IF = 0;            //清中断标志位	
        if(++intCount >= 100)
		{
			IntFlag = 1;
			intCount = 0;
			if(++count1s >= 100)
			{
				count1s = 0;
				if(workTime > 0)
					workTime--;
				if(waitTime > 0)
					waitTime--;
			}
		}

    }

    if (RBIF) {
        RBIF = 0;            //清中断标志
    }
}