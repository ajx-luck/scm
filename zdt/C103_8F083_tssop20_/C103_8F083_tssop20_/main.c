#include <sc.h>
#include "number.h"

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 8000000			//8MHz,使用内置延时函数必须定义主频，
									//如用16M需改此参数为16000000
#endif
#define     POWER_RATIO  	(4096UL*1.2*1000)




volatile unsigned char MainTime;
volatile bit	B_MainLoop,B_OnOff;
u16t	count1s = 0;
u8t	workStep = 0;
u8t	firstTime = 0;

u8t			intFlag = 0;
u16t			wait30s = 0;
u8t			count10ms = 0;
u8t			keyCount2 = 0;
u8t			keyCount = 0;
u8t			longPressFlag = 0;
u8t			longPressFlag2 = 0;
u8t			startTime = 0;
u8t			chrgFlag = 0;
u8t			chrgFullFlag = 0;
u8t			chrgFullTime = 0;
u16t		batValue = 0;
u16t		R_AIN2_DATA = 0;
u16t		R_AIN6_DATA = 0;
u16t			sleepTime = 0;
u8t			refreshFlag = 0;
u8t			keyNum = 0;
u8t			preKeyNum = 0;
u8t			pwmFlag = 0;
u16t			count10s = 0;
u8t			pwmDuty = 0;
u8t			showBatValue = 0;
u8t			showFlag = 0;
u8t			addPowerTime = 0;
u8t			subPowerTime = 0;
u8t			count10 = 0;
u8t			keyTime = 0;
u8t			count2s = 0;
u8t			chrgStep = 0;
u8t			count900s = 0;
u8t			lowBatFlag = 0;
u16t		batAddCount = 0;
u16t		batSubCount = 0;
u16t		batSubMaxTime = 3000;
u16t		count30s = 0;
u16t		chrgMaxData = 0;
u8t			overTime = 0;
u8t			showBatValueAddTime = 0;
u8t			chrgTime = 0;
u8t			lowBatTime = 0;
const static unsigned char numArray[]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x00,0x71};

volatile unsigned int adresult;
volatile unsigned int result;
volatile unsigned char test_adc;
volatile unsigned int power_ad;

void chrgCtr();
void Sleep_Mode();
void pwmStop();
void pwmInit();
void updateLed();
unsigned char ADC_Sample(unsigned char adch, unsigned char adldo);

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
	TRISA = 0x8D;
	PORTA = 0x10;
	TRISB = 0x00;
	PORTB = 0;
	WPUB = 0x00;
	TRISC = 0x02;
	PORTC = 0;

	PIE1 = 2;
	PR2 = 250;				//8M下将TMR2设置为125us中断
	T2CON = 4;				//使能定时器2

	INTCON = 0XC0;			//使能中断
	ADCON0 = 0X41;
	ADON = 1;
	ADCON1 = 0x00;
}


/**********************************************************
函数名称：Refurbish_Sfr
函数功能：刷新一些特殊功能寄存器
入口参数：无
出口参数：无
备    注：每隔一定时间刷新一次SFR可增强抗干扰能力
**********************************************************/
void Refurbish_Sfr() 
{
	//刷新中断相关控制寄存器
	PIE1 = 2;
	PR2 = 250;
	INTCON = 0XC0;
	if (4 != T2CON)
		T2CON = 4;
}


/***********************************************************
中断服务函数
***********************************************************/
void interrupt Isr_Timer()
{
	if(TMR2IF)				//若只使能了一个中断源,可以略去判断
	{
		TMR2IF = 0;
		updateLed();
		if(++MainTime >= 158)	//需根据你选择的触摸路数和触摸电容选择扫描一次按键的时间
		{						//一般103电容，8路触摸，8M主频检测时间约4ms，故扫描一次的时间可选5ms
			MainTime = 0;
			B_MainLoop = 1;
			if(++count1s >= 3000)
			{
				count1s = 0;
				wait30s = 1;
			}
		}
	}
	else
	{
		PIR1 = 0;
	}
	
}

/***********************************************
函数名称：Sleep_Mode
函数功能：进入休眠模式
入口参数：无
出口参数：无
备注：
************************************************/
void Sleep_Mode()
{
	INTCON = 0;		
	
	OPTION_REG = 0;

	TRISA = 0B10001101; 		//关闭所有输出，RA0口做唤醒输入
	PORTA = 0B00010000;
	WPUA  = 0B00000000;			//RA0 开上拉电阻
	
	TRISB = 0B00000000;			//关闭所有输出，RB3口做唤醒输入
	PORTB = 0B00000000;
	WPUB  = 0B00000000;			//RB3 开上拉电阻
   		
	TRISC = 0B00000010;
	PORTC = 0B00000000;	
			
   	ADCON0 = 0;					//关闭所有模块
	ADCON1 = 0;
	
	PWMCON0 = 0;
		
	OSCCON = 0X70;				//配置振荡为8M,关闭WDT，需注意芯片工程选项里WDT必须选为DISABLE,否则无法软件关掉WDT
	T2CON = 0;					//关闭定时器2
	IOCA = 0B10000001;			//允许RA0的IO电平变化中断
	IOCB = 0B00000000;			//允许RB3的IO口电平变化中断
	
	RAIE = 1;					//允许PORTA的IO电平变化中断
	PEIE = 1;					//要用RORTA中断唤醒，则PEIE必须设为1
	//RBIE = 1;					//允许PORTB电平变化中断
	GIE = 0;					//唤醒后执行SLEEP后程序;
	

	PORTA;						//读PORTA值并锁存,用电平变化中断必须执行这一步
	RAIF = 0;					//清PORTA中断标志位
	PORTB;						//读PORTB值并锁存	
	//RBIF = 0;					//清PORTB中断标志位		
	asm("clrwdt");

	asm("sleep");				//进入休眠模式
	
	asm("nop");
	asm("clrwdt");
	if(RAIF)  RAIF = 0;			//清中断标志
	//if(RBIF)  RBIF = 0;			//清中断标志
	Init_System();
}



/**********************************************************
函数名称：AD_Sample
函数功能：AD检测
入口参数：adch - 检测通道
出口参数：无
备    注：采样通道需自行设置为输入口
	      采样10次,取中间八次的平均值为采样结果存于adresult中

	      adch 为输入AD通道 0-15，31
             31  检测内部1.2V
	
 		  adldo =5,开启内部LDO 2V 作为ADC 参考
 		  adldo =6,开启内部LDO 2.4V 作为ADC 参考
		  adldo =7,开启内部LDO 3V 作为ADC 参考
 		  adldo =0,VDD 作为ADC 参考
 		  AD转换结果左对齐
 		  ADC参考电压从VDD切换到LDO时需要延时100us以上，才能进行AD转换
**********************************************************/
unsigned char ADC_Sample(unsigned char adch, unsigned char adldo) 
{
	volatile unsigned long adsum = 0;
	volatile unsigned int admin = 0, admax = 0;
	volatile unsigned int ad_temp = 0;

	if ((!LDO_EN) && (adldo & 0x04) ) 
	{
								//如果AD参考从VDD换到内部LDO，需要延时100US以上
		ADCON1 = adldo;			//左对齐,AD值取12位
		__delay_us(100);		//IDE内置延时函数，延时100us
	} 
	else
		ADCON1 = adldo;			//如果ADCON1.7(ADFM)=1为右对齐，,AD值取10位

	if(adch & 0x10) 
	{
		CHS4 = 1;
		adch &= 0x0f;
	}
	unsigned char i = 0;
	for (i = 0; i < 10; i++) 
	{
		ADCON0 = (unsigned char)(0X41 | (adch << 2));	//16分频，如果主频为16M，则必须选16分频或以上
		asm("nop");
		asm("nop");
		asm("nop");
		asm("nop");				//选择通道后需延时1uS以上
		GODONE = 1;				//开始转换

		unsigned char j = 0;
		while (GODONE) 
		{
			__delay_us(2);		//延时2us(编译器内置函数)
			
			if (0 == (--j))		//延时0.5ms仍没有AD转换结束，跳出程序
			return 0;
		}

		ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));	//计算12位AD值

		if (0 == admax) 
		{
			admax = ad_temp;
			admin = ad_temp;
		} 
		else if (ad_temp > admax)
			admax = ad_temp;				//AD采样最大值
		else if (ad_temp < admin)
			admin = ad_temp;				//AD采样最小值

		adsum += ad_temp;
	}
		adsum -= admax;
		if (adsum >= admin)
			adsum -= admin;
		else
			adsum = 0;

		adresult = adsum >> 3;		//8次平均值作为最终结果

		adsum = 0;
		admin = 0;
		admax = 0;
		return 0xA5;
		
}



void pwmInit()
{

	PWMTH = 0x00;
	PWMTL = 200;
	PWMD01H = 0x00;
	PWMD1L = 32;
	PWMCON1 = 0xC0;
	PWMCON2 = 0x00;
	PWMCON0 |= 0x62;
}

void pwmStop()
{
	PWMD1L = 0;
	PWMCON0 &= 0xFD;
	PORTA &= 0xFD;
}


char keyRead(char keyStatus)	
{ 
	
	if(keyStatus)
	{
		keyCount++;
		if(keyStatus == 0x03)
		{
			keyNum = 3;
		}
		else if(keyStatus == 0x01)
		{
			keyNum = 2;
		}
		else if(keyStatus == 0x02)
		{
			keyNum = 1;
		}
		if(keyNum != preKeyNum)
		{
			preKeyNum = keyNum;
			keyCount = 0;
		}
//		checkKeyAD();
		if(keyCount >= 150)
		{
			keyCount = 150;
			if(keyNum == 2)
			{
				if(!longPressFlag)
				{
					longPressFlag = 1;
					return 2;
				}
			}
		}
        if(keyCount > 25 && (++keyTime) > 15)
        {
			keyTime = 0;
            return 3;
        }
	}
	else
	{
		if(keyNum == 2 && keyCount >= 100)
		{
			keyCount = 0;
			longPressFlag = 0;
			return	0;
		}
		else if(keyCount >= 4)
		{
			keyCount = 0;
			return	1;
		}
		longPressFlag = 0;
		keyCount = 0;
		keyNum = 0;
	}
	return 0;
}


void keyCtr()
{
	u8t keyStatus = (0x01 & PORTA) | (0x02 & PORTC);
    u8t keyClick = keyRead(keyStatus);
	
	if(keyNum == 1)
	{
		if(keyClick == 1)
		{
			if(modeStep == 2 || modeStep == 3)
            {
				if(++workStep > 3)
				{
					workStep = 3;
				}
            }
            else if(modeStep == 1)
            {
				if(++workStep > 99)
				{
					workStep = 99;
				}
            }
		}
        else if(keyClick == 3 && modeStep == 1)
        {
			if(++workStep > 99)
			{
				workStep = 99;
			}
        }
	}
	else if(keyNum == 2)
	{
	
        if(keyClick == 2)
		{
			if(modeStep > 0)
			{
				modeStep = 0;
				workStep = 0;
                count900s = 0;
			}
			else if(lowBatFlag == 0)
			{
				modeStep = 1;
				workStep = 50;
                count900s = 0;
			}
		}
        else if(keyClick == 1 && workStep > 0)
        {
			if(++modeStep > 3)
            {
				modeStep = 1;
                workStep = 50;
            }
            else
            {
				workStep = 1;
                pwmDuty = 69;
            }
           
        }
	}
	else if(keyNum == 3)
	{
		if((keyClick == 1 || keyClick == 3) && workStep > 1)
		{
			workStep--;
		}
	
	}
	
}

void updateLed()
{
	if(showFlag)
	{
		refreshLed();
	}
	else
	{
        TRISB |= 0xFF;
		TRISA |= 0x60;
		PORTB &= 0x00;
		PORTA &= 0x9F;
	}

}


void workCtr()
{
	if(firstTime > 0)
    {
		firstTime--;
        showFlag = 1;
		lowBatFlag = 0;
        if(firstTime < 150 && showBatValue < batValue)
        {
			showBatValue++;
        }
        showNumAShi = 0x7F;
		showNumAge = 0x7F;
		showNumBShi = 0x7F;
		showNumBge = 0x7F;
    }
	else if(chrgFlag == 0  && workStep == 0 && keyCount == 0 && firstTime == 0)
    {
		showFlag = 0;
        PORTA |= 0x10;
        count900s = 0;
        pwmStop();
        if(++sleepTime > 200)
        {
            sleepTime = 0;
			Sleep_Mode();
		}
	}
    else
    {
        sleepTime = 0;
        if(modeStep == 1)
        {
			showFlag = 1;
            RA4 = 0;
            pwmInit();
			PWMD1L= 99 + workStep;		
        }
        else if(modeStep == 2)
        {
			showFlag = 1;
            RA4 = 0;
            if(++count10s >= 600)
            {
				count10s = 0;
            }
            if(count10s % 3 == 0)
            {
				if(count10s < 400)
				{
					if(pwmDuty < (169 + (workStep*10)))
                    {
						pwmDuty++;
                    }
				}
				else
				{
					if(pwmDuty > 69)
                    {
						pwmDuty--;
                    }
				}
            }
            pwmInit();
            PWMD1L = pwmDuty;		
        }
        else if(modeStep == 3)
        {
			showFlag = 1;
            RA4 = 0;
            if(++count10s > 125)
            {
				count10s = 0;
            }
            if(count10s < 100)
            {
				pwmInit();
				PWMD1L= 139 + (workStep*20);	
            }
            else if(count10s < 125)
            {
				pwmStop();
            }
            
        }
        else
        {
			pwmStop();
            RA4 = 1;
            if(chrgFlag)
			{
				showFlag = 1;
			}
			else 
			{
				showFlag = 0;
			}
        }
	}
	
	
}


void chrgCtr()
{
    if(PORTA & 0X80)
    {
			//充电中
       workStep = 0;
       modeStep = 0;
       lowBatFlag = 0;
       if(chrgFlag == 0)
       {
			chrgFlag = 1;

       }
       if(showBatValue >= 99)
       {
			chrgFullFlag = 1;
       }
		if(R_AIN2_DATA > 1565)
		{
			if(chrgMaxData >= R_AIN2_DATA)
			{
				if(++count30s > 3000)
				{
					count30s = 0;
                    if(showBatValue < 99)
                    {
						showBatValue++;
                    }
				}
			}
			else
			{
				chrgMaxData = R_AIN2_DATA;
				count30s = 0;
			}
		} 
	}
    else
    {
        chrgMaxData = 0;
        count30s = 0;
        chrgFullFlag = 0;
        chrgFlag = 0;
        /*
        if(chrgFlag)
        {
			chrgFlag = 0;
            tm1650PowerCtr(0);
        }
        */
	}
}

void showCtr()
{
	//显示电量
	if(showBatValue >= 99)
	{
		showNumAShi = 0x6F;
		showNumAge = 0x6F;
	}
	else
	{
		showNumAShi = numArray[(showBatValue / 10)];
		showNumAge = numArray[(showBatValue % 10)];
	}
    if(chrgFlag)
    {
		if(showBatValue >= 99)
        {
            showNumBShi = 0x39;
			showNumBge = 0x0F;
        }
        else
        {
			if(++count2s >= 50)
            {
				count2s = 0;
                if(++chrgStep >= 8)
                {
					chrgStep = 0;
                }
            }
            switch(chrgStep)
            {
				case 0:
                showNumBShi = 0x01;
				showNumBge = 0x00;
                break;
                case 1:
                showNumBShi = 0x01;
				showNumBge = 0x01;
                break;
                  case 2:
                showNumBShi = 0x01;
				showNumBge = 0x03;
                break;
                  case 3:
                showNumBShi = 0x01;
				showNumBge = 0x07;
                break;
                  case 4:
                showNumBShi = 0x01;
				showNumBge = 0x0F;
                break;
                  case 5:
                showNumBShi = 0x09;
				showNumBge = 0x0F;
                break;
                  case 6:
                showNumBShi = 0x19;
				showNumBge = 0x0F;
                break;
                  case 7:
                showNumBShi = 0x39;
				showNumBge = 0x0F;
                break;
                      case 8:
                showNumBShi = 0x79;
				showNumBge = 0x0F;
                break;
                    case 9:
                showNumBShi = 0x79;
				showNumBge = 0x4F;
                break;
                default:
                break;
            }
            
        }
        
    }
    else
    {
		showNumBShi = numArray[workStep/10];
		showNumBge = numArray[workStep%10];
    }
}

void checkOutA()
{

	test_adc = ADC_Sample(3, 5);
	if (0xA5 == test_adc)
	{
		R_AIN6_DATA = adresult;
		if(R_AIN6_DATA > 1200)
		{
			if(++overTime > 10)
			{
				overTime = 0;
				workStep = 0;
			}
		}
		else
		{
			overTime = 0;
		}
	}
}


void checkBatValue()
{

	test_adc = ADC_Sample(2, 5);
	if (0xA5 == test_adc)
	{
		R_AIN2_DATA = adresult;
		if(R_AIN2_DATA < 1220)
		{
			batValue = 0;
			if(R_AIN2_DATA < 1130 && ++lowBatTime > 200)
			{
				lowBatTime = 0;
				count900s = 0;
				modeStep = 0;
				workStep = 0;
				count900s = 0;
				lowBatFlag = 1;
				showBatValue = 0;
			}
		}
		else if(R_AIN2_DATA < 1330)
		{
			batValue = (R_AIN2_DATA  - 1220)/11;
			lowBatTime = 0;
		}
		else if(R_AIN2_DATA < 1390)
		{
			batValue = 10 + ((R_AIN2_DATA - 1330)/3);
		}
		else 
		{
			batValue = 30 + ((R_AIN2_DATA - 1390)/2);
			if(batValue >= 100)
			{
				batValue = 100;
			}
		}

	}
	
}


void taskSecond()
{
     if(wait30s == 1)
	{
		wait30s = 0;
        if(modeStep > 0)
        {
			if(++count900s > 30)
			{
				count900s = 0;
                modeStep = 0;
				workStep = 0;
                count900s = 0;
			}
        }
        else
        {
			count900s = 0;
        }
        
		if(chrgFlag)
		{
			if(++showBatValueAddTime > 8 && showBatValue < 99)
			{
				showBatValueAddTime = 0;
                showBatValue++;
			}
            if(showBatValue < batValue)
            {
				if(++chrgTime > 3)
                {
					chrgTime = 0;
                    showBatValueAddTime = 0;
                    showBatValue++;
     
                }
            }
            else
            {
				chrgTime = 0;
            }
		}
	}
}


void batCtr()
{
	if(chrgFlag == 0)
	{
		if(batValue > 40)
        {
			batSubMaxTime = 4500;
        }
        else if(batValue > 25)
        {
			batSubMaxTime = 2500;
        }
        else
        {
			batSubMaxTime = 1000;
        }
        if(showBatValue > batValue)
		{
			if(++batSubCount > batSubMaxTime)
            {
				batSubCount = 0;
                showBatValue--;
            }
            
		}
        else
        {
			batSubCount = 0;
        }
		if(showBatValue == 0)
		{
			count900s = 0;
			modeStep = 0;
			workStep = 0;
			count900s = 0;
			lowBatFlag = 1;
		}
	}

}



/***********************************************************
主循环
***********************************************************/
void main()
{
	Init_System();

	firstTime = 200;
	while(1)
	{
		//updateLed();
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			CLRWDT();
			if(chrgFlag == 0)
			{
				keyCtr();
			}
			checkBatValue();
			workCtr();
			chrgCtr();
			batCtr();
			taskSecond();
			if(firstTime == 0)
			{
				showCtr();
			}
			checkOutA();
			
			
		}
	}
}