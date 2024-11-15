/***********************************************************************
方案说明：
***********************************************************************/
/**********************************************************************/
/*修改说明*/

/**********************************************************************/
/**********************************************************************/
/**********************************************************************/
/*头文件*/
#include <cms.h>
#include "main.h"
#include "delay.h"
#include "mytype.h"
#include "WHQ_TP_ZPGS.h"
#include "WHQ_Sender.h"
/*********************************************************************
1、WHQ_SENDER_ENABLE定义为1时为调试模式，可观察雾化器的主要数据；
2、正常使用时请把WHQ_SENDER_ENABLE定义为0；

注：WHQ_SENDER_ENABLE 已定义在WHQ_Sender.h中，默认为0
**********************************************************************/
typedef unsigned int u16t;
typedef unsigned char u8t;

volatile unsigned char tcount;
volatile bit errf;
volatile bit errff;
volatile bit onoff;
volatile unsigned int AD_Result;
volatile unsigned char currDuty;
volatile unsigned char addTime;
volatile unsigned char subTime;
unsigned char keyCount;
u8t		whFlag = 0;
unsigned char Recebuffer[4];
u8t	rececount = 0;
u8t	revFlagTime = 0;
u8t	processFlag = 0;
u8t		led1Step = 0;
u8t		led2Step = 0;
u8t		chrgStep = 0;	//充电状态
u8t	redDuty = 0;
u8t	greenDuty = 0;
u8t	blueDuty = 0;
u8t	curLedCnt = 0;
u8t	cRedDuty = 0;
u8t	cGreenDuty = 0;
u8t	cBlueDuty = 0;
u8t		revTime = 0;
u8t	startTime = 0;
u8t	count2s = 0;
u8t	colorStep = 0;
u8t	count2 = 0;
u8t	lastRed = 0;
u8t		lastGreen = 0;
u8t		lastBlue = 0;
u8t		delayTime = 0;
u8t		mClorStep = 0;
u8t		ganshaoFlag = 0;
u8t		clastRed = 0;
u8t		clastGreen = 0;
u8t		clastBlue = 0;
u8t		cdelayTime = 0;
u8t		cClorStep = 0;
u8t		ganshaoTime = 0;
u8t		ganshaoCheckTime = 0;
u8t		tm2Flag = 0;
u8t		count125us = 0;

void AD_Testing(unsigned char ad_fd,unsigned char ad_ch,unsigned char ad_lr);
void Set_CCP_PWM();
void keyCtr();
void checkVoll();
void closePWM();
void Set_Usart_Async();
void breathAddLed(u8t* ledDuty);
void breathSubLed(u8t* ledDuty);
void rgbShow();
void colorCtr();
void uartRevCtr();
void checkLed();
void rainbow();
void rainbow2();
/**********************************************************************/
/**********************************************************************/
/***********************************************************************
子函数功能：上电初始化系统寄存器
入口参数：
返回数据：
备注：
***********************************************************************/
void Init_ic (void)
{
	PORTA = 0;
	PORTB = 0;
	INTCON = 0xC0;
	PIR1 = 0;
	PIR2 = 0;
	WDTCON = 0x01;
	TRISA = 0x06;
	TRISB = 0x11;
	OPTION_REG = 0;
	OSCCON = 0x71;
	PIE1 = 0;
	PIE2 = 0;
	IOCB = 0;
	WPUA = 0x20;
	WPUB = 0;
}
/***********************************************************************
函数功能：初始上电RAM赋值
入口参数：
返回数据：
备注：
***********************************************************************/
void Init_ram (void)
{
	PIE2 = 0;
	PIE1 = 0B00000010;
	PR2 = 50;				//16M下将TMR2设置为125us中断
	T2CON = 5;				//使能定时器2
	INTCON = 0XC0;			//使能中断
	onoff = 1;
}
/***********************************************************************
函数功能：系统寄存器刷新
入口参数：
返回数据：
备注：
***********************************************************************/
void Sys_set (void)
{
	asm("clrwdt");
	WDTCON = 0x01;
	TRISA = 0x06;
	TRISB = 0x11;
	OPTION_REG = 0;
	PIE1 = 0B00000010;
	PR2 = 50;
	INTCON = 0XC0;
	if(5 != T2CON)
		T2CON = 5;
}

/***********************************************************************
子函数功能：调用追频
入口参数：
返回数据：
备注：
***********************************************************************/
void	Pwm_Test(void)
{
	uchar	templ;
	templ = Test_Pwm();
	
	if(0x55 == templ)
		errf = 1;
	else if(0xff == templ)
		errf = 1;
}

/***********************************************************************
函数功能：工作处理
入口参数：
返回数据：
备注：
***********************************************************************/
void	Set_Work(void)
{
	if(errf)
	{
		errf = 0;
		onoff = 0;
		ganshaoFlag = 1;
	}

}

/***********************************************************************
函数功能：中断入口函数
***********************************************************************/
void interrupt time0(void)
{
	if(RCIF)
	{	
		
		revTime = 0;
		Recebuffer[rececount] = RCREG;  	//将接收缓冲区内容读出
		rececount++;
			
		if(rececount >= 4)					//接收完一帧数据，处理数据
		{
			rececount = 0;
		}
			
		if(OERR)							//如果有溢出错误
		{
			CREN = 0;						//清零CREN位可将OERR位清零
			CREN = 1;						//再次将CREN置一，以允许继续接收
		}
		
	}
	
	if(TMR2IF)
	{
		TMR2IF = 0;
		tm2Flag = 1;
		if(++count125us > 4)
		{
			count125us = 0;
			tcount ++;
			if(onoff)
			{
				Set_Pwm_Onoff(20);
			}
			else
			{
				Set_Pwm_Onoff(0);
			}
		}
	}
	else
	{
		PIR1 = 0;
		PIR2 = 0;
	}
	
	
}



/***********************************************************************
main主函数
***********************************************************************/
void main(void)
{
	static uint sec;
	/******************************************************************/
	asm("clrwdt");
	Init_ic();
	Delay_nms(200);													//上电延时200ms
	Init_ram();														//上电给初值
	Set_Usart_Async();
	whFlag = 1;
	led1Step = 3;
	led2Step = 3;
	startTime = 200;
	while(1)
	{
		if(whFlag || startTime > 0)
		{
			if(tm2Flag)
			{
				tm2Flag = 0;
				rgbShow();
			}
		}
		if(tcount >= 40)
		{
			tcount = 0;												//主程序循环5ms
			Sys_set();
			#if (WHQ_SENDER_ENABLE == 1)//调试宏定义是否为1
				WHQ_SenderLoop();//发码子程序
			#endif
			if(whFlag)
			{
				startTime = 0;
				Set_Work();
				onoff=1;
				AD_Testing(1,13,1);
				Set_CCP_PWM();
				checkVoll();
				if(led1Step != 1)
				{
					PORTA &= 0xF7;	//关闭白灯
				}
				if(++count2 > 1)
				{
					count2 = 0;
					colorCtr();
				}
			}		
			else if(startTime == 0)
			{
				closePWM();
				onoff=0;
				//PORTA &= 0xF7;
				PORTA = 0x00;
				PORTB = 0x00;
			}		
			Pwm_Test();		
			uartRevCtr();
			checkLed();
			if(ganshaoFlag)
			{
				PORTB &= 0xDF;
			}
			else
			{
				PORTB |= 0x20;
			}
			
		}
	}
}

void checkLed()
{
	if(startTime > 0)
	{
		if(startTime > 150)
		{
			redDuty = 64;
			greenDuty = 0;
			blueDuty = 0;
			cRedDuty = 64;
			cGreenDuty = 0;
			cBlueDuty = 0;
			
		}
		else if(startTime > 100)
		{
			redDuty = 0;
			greenDuty = 64;
			blueDuty = 0;
			cRedDuty = 0;
			cGreenDuty = 64;
			cBlueDuty = 0;
		}
		else if(startTime > 50)
		{
			redDuty = 0;
			greenDuty = 0;
			blueDuty = 64;
			cRedDuty = 0;
			cGreenDuty = 0;
			cBlueDuty = 64;
		}
		else
		{
			PORTA |= 0x08;	//打开白灯
		}
		startTime--;
	}
}

void uartRevCtr()
{
	if(++revTime > 10)
	{
		revTime = 10;
		if(whFlag != Recebuffer[0])
		{
			ganshaoFlag = 0;//干烧标记清除
		}
		whFlag = Recebuffer[0];
		if(Recebuffer[1] == 3 && led1Step != 3)
		{
			redDuty = 64;
			greenDuty = 64;
			blueDuty = 64;
			count2s = 0;
		}
		led1Step = Recebuffer[1];
		if(Recebuffer[2] == 3 && led2Step != 3)
		{
			cRedDuty = 64;
			cGreenDuty = 64;
			cBlueDuty = 64;
			count2s = 0;
		}
		led2Step = Recebuffer[2];
		chrgStep = Recebuffer[3];
		rececount = 0;
	}
}
/**********************************************************************/

/************************************************************
函数名称：AD_Testing()
函数功能：AD采样函数
入口参数：ad_fd - 分频 00Fosc/8; 01Fosc/16; 10Fosc/32; 11FRC
		  ad_ch - AD通道选择（格式：0B00000000~0B00001111或其对应的其他进制数值）
		  ad_lr - 左/右对齐，输入0或1，0为左对齐，1为右对齐
		  
出口参数：AdResult - AD结果
备    注：采样AD值,采样10次,去掉最大及最小求算术平均值
************************************************************/
void AD_Testing(unsigned char ad_fd,unsigned char ad_ch,unsigned char ad_lr)
{
	static volatile unsigned char adtimes;	
	static volatile unsigned int admin,admax,adsum;
	volatile unsigned int data;
	volatile unsigned char i = 0;
	
	
	if(!ad_lr)
		ADCON1 = 0;						//左对齐,出12位
	else
		ADCON1 = 0x80;					//右对齐,出10位
	
	ADCON0 = 0;
	ADCON0 |= (unsigned char)(ad_fd << 6);//设置分频
	ADCON0 |= (unsigned char)(ad_ch << 2);//设置通道
	ADCON0 |= 0x01;						//使能ADC		
	
	asm("nop");
	asm("nop");
	GODONE = 1;							//开始转换
	
	while(GODONE)
	{
		asm("nop");
		asm("nop");
		if(0 == (--i))					//ad等待限时，防止拔插电后出现死循环
			return;
	}
 
	if(!ad_lr)							//左对齐
	{
		data = (unsigned int)(ADRESH<<4);
		data |= (unsigned int)(ADRESL>>4);
	}
	else								//右对齐
	{
		data = (unsigned int)(ADRESH<<8);
		data |= (unsigned int)ADRESL;			
	}         

	if(0 == adtimes)
	{
		admax = data;
		admin = data;	
	}
	else if(data > admax)
	{
		admax = data;  				//AD采样最大值
	}
	else if(data < admin)
	{
		admin = data;  				//AD采样最小值
	}
	
	adsum += data;
	if(++adtimes >= 10)
	{
		adsum -= admax;
		adsum -= admin;			
					
		AD_Result = adsum >> 3;		//8次平均值作为最终结果
			
		adsum = 0;
		admin = 0;
		admax = 0;
		adtimes = 0;		  
	}
}

/***********************************************
函数名称：Set_CCP_PWM
函数功能：CCP PWM模式初始化
入口参数：无
出口参数：无
备注：	//PWM周期 = [PWMTH<1:0>:PWMTL + 1]*Tosc*(CLKDIV分频)
		//脉冲宽度 = (PWMDx[9:0]+1)*TOSC*(CLKDIV分频值)
		//占空比 = (PWMDx[9:0]+1)/(PWMT[9:0]+1)
************************************************/
void Set_CCP_PWM()
{
	PWMTL = 108;//频率
	PWMTH = 0x00;					//周期T = 400*(1/8)us*2 = 100us
	PWMT4L = 0x00;
	
	
	//PWM1 占空比设置为40%
	PWMD1L = currDuty;					//(159+1)/(399+1) = 40%
	PWMD01H = 0x00;
	
	
	PWM01DT = 0;
	PWM23DT = 0;
	
	PWMCON2 = 0B00000000;			//正常输出
	PWMCON1 = 0B00000000;			//禁止死区
	PWMCON0 = 0B00000010;			//PWM分频Fosc/2，使能PWM0、PWM1、PWM2、PWM3、PWM4

}

void closePWM()
{
	PWMD1L = 0;					//(159+1)/(399+1) = 40%
	PWMD01H = 0x00;
	PWMCON2 = 0B00000000;			//正常输出
	PWMCON1 = 0B00000000;			//禁止死区
	PWMCON0 = 0B00000000;			//PWM分频Fosc/2，使能PWM0、PWM1、PWM2、PWM3、PWM4
}


char keyRead(char keyStatus)	
{ 
	if(keyStatus)
	{
		keyCount++;
		if(keyCount >= 100)
		{
			keyCount = 100;
		}
	}
	else
	{
		if(keyCount >= 4)
		{
			keyCount = 0;
			return	1;
		}
		keyCount = 0;
	}
	return 0;
}


void keyCtr()
{
	char kclick = keyRead(0x20 & (~PORTA));
	if(kclick == 1)
	{
		if(whFlag)
		{
			whFlag = 0;
		}
		else
		{
			whFlag = 1;
		}

	}

}

void checkVoll()
{
	if(AD_Result > MAXV)
	{
		if(++addTime > 5)
		{
			addTime = 0;
			if(currDuty > 1)
			{
				currDuty--;
			}
		}
		subTime = 0;
	}
	else if(AD_Result < MINV)
	{
		if(++subTime > 5)
		{
			if(currDuty < 74)
			{
				currDuty++;
			}
		}
		addTime = 0;
	}
}

void colorCtr()
{

	if(++count2s > 3)
	{
		count2s = 0;
		if(led2Step == 3)
		{
			rainbow2();
		}
		if(led1Step == 3)
		{
			rainbow();
		}
	}
	
	
	//副灯控制
	if(count2s < 125)
	{
		if(led2Step == 1)
		{
			cRedDuty = 0;
			cBlueDuty = 0;
			breathAddLed(&cGreenDuty);
		}
		else if(led2Step == 2)
		{
			cRedDuty = 0;
			cGreenDuty = 0;
			breathAddLed(&cBlueDuty);
		}	
		
	}
	else
	{
		if(led2Step == 1)
		{
			cRedDuty = 0;
			cBlueDuty = 0;
			breathSubLed(&cGreenDuty);
		}
		else if(led2Step == 2)
		{
			cRedDuty = 0;
			cGreenDuty = 0;
			breathSubLed(&cBlueDuty);
		}
		
	}	

	
	//主灯控制
	if(led1Step == 1)
	{
		redDuty = 0;
		greenDuty = 0;
		blueDuty = 0;
		PORTA |= 0x08;	//开白灯
	}
	else if(led1Step == 2)
	{
		redDuty = 46;
		greenDuty = 51;
		blueDuty = 62;
	}
}

void rainbow2()
{
	//lastRed = lastGreen = lastBlue = 0;
	if(cRedDuty > clastRed)
		cRedDuty--;
	if(cGreenDuty > clastGreen)
		cGreenDuty--;
	if(cBlueDuty > clastBlue)
		cBlueDuty--;
	if(cRedDuty < clastRed)
		cRedDuty++;
	if(cGreenDuty < clastGreen)
		cGreenDuty++;
	if(cBlueDuty < clastBlue)
		cBlueDuty++;
	if(cdelayTime > 0)
	{
		cdelayTime--;
		return;
	}
	if(cClorStep == 1)
	{
		clastRed = 64;
		clastGreen = 0;
		clastBlue = 0;
		
	}
	else if(cClorStep == 2)
	{
		clastRed = 0;
		clastGreen = 0;
		clastBlue = 64;
	}
	else if(cClorStep == 3)
	{
		clastRed = 0;
		clastGreen = 64;
		clastBlue = 0;
	}
	

		
	if(cRedDuty == clastRed && cBlueDuty == cBlueDuty && cGreenDuty == clastGreen)
	{
		if(++cClorStep > 3)
		{
			cClorStep = 0;
		}
		if(cdelayTime == 0)
			cdelayTime = 5;
	}
}


void rainbow()
{
	//lastRed = lastGreen = lastBlue = 0;
	if(redDuty > lastRed)
		redDuty--;
	if(greenDuty > lastGreen)
		greenDuty--;
	if(blueDuty > lastBlue)
		blueDuty--;
	if(redDuty < lastRed)
		redDuty++;
	if(greenDuty < lastGreen)
		greenDuty++;
	if(blueDuty < lastBlue)
		blueDuty++;
	if(delayTime > 0)
	{
		delayTime--;
		return;
	}
	if(mClorStep == 1)
	{
		lastRed = 64;
		lastGreen = 0;
		lastBlue = 0;
		
	}
	else if(mClorStep == 2)
	{
		lastRed = 0;
		lastGreen = 0;
		lastBlue = 64;
	}
	else if(mClorStep == 3)
	{
		lastRed = 0;
		lastGreen = 64;
		lastBlue = 0;
	}

		
	if(redDuty == lastRed && blueDuty == lastBlue && greenDuty == lastGreen)
	{
		if(++mClorStep > 3)
		{
			mClorStep = 0;
		}
		if(delayTime == 0)
			delayTime = 5;
	}
}


void breathAddLed(u8t* ledDuty)
{
	if((*ledDuty) < 64)
	{
		(*ledDuty)++;
	}
}

void breathSubLed(u8t* ledDuty)
{
	if((*ledDuty) > 0)
	{
		(*ledDuty)--;
	}
}

void rgbShow()
{
	if(++curLedCnt > 64)
	{
		curLedCnt = 0;
	}
	if(redDuty <= curLedCnt)
	{
		PORTA &= 0xEF;
	}
	else
	{
		PORTA |= 0x10;
	}
	PORTA = PORTA;
	if(greenDuty <= curLedCnt)
	{
		PORTA &= 0xBF;
	}
	else
	{
		PORTA |= 0x40;
	}
	PORTA = PORTA;
	if(blueDuty <= curLedCnt)
	{
		PORTA &= 0xDF;
	}
	else
	{
		PORTA |= 0x20;
	}
	PORTA = PORTA;
	if(cRedDuty <= curLedCnt)
	{
		PORTA &= 0x7F;
	}
	else
	{
		PORTA |= 0x80;
	}
	PORTA = PORTA;
	if(cGreenDuty <= curLedCnt)
	{
		PORTB &= 0xF7;
	}
	else
	{
		PORTB |= 0x08;
	}
	PORTB = PORTB;
	if(cBlueDuty <= curLedCnt)
	{
		PORTB &= 0xFB;
	}
	else
	{
		PORTB |= 0x04;
	}
	PORTB = PORTB;
}


/***********************************************
函数名称：Set_Usart_Async
函数功能：Usart状态设置（异步）
入口参数：无
出口参数：无
备注：
1、串口通讯，设置波特率寄存器时，应控制在19200及以下，实际应用时应考虑到芯片内振的电压及温度特性。
2、SYNC = 0;目标波特率 = Fosc/(16*(SPBRG+1))
************************************************/
void Set_Usart_Async()
{
	SPBRG = 95;			//设置波特率为10417 bps，误差0%	
	
	SYNC = 0;				//0为异步模式，1为同步模式
	SCKP = 0;
	
    SPEN = 1;				//允许串口操作
	RCIE = 1;				//接收中断  
	TXIE = 0;				//发送中断
    RX9EN = 0;				//0为8位接收，1为9位接收
	TX9EN = 0;				//0为8位发送，1为9位发送
	CREN = 1;				//0为禁止接收，1为使能接收
    TXEN = 1;				//0为禁止发送，1为使能发送
}





