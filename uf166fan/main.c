#include<sc.h>
#include "scankey.h"
#include "init.h"

#define MAX_FAN_LEVEL 4
#define MIN_FAN_LEVEL 1

#define FAN_STATUS_OFF  0
#define FAN_STATUS_ON  1
#define FAN_STATUS_NONE 2

#define LED_1  1
#define LED_2  2
#define LED_3  3
#define LED_4  4

static unsigned char time0Flag = 0;
static unsigned int countTime = 0;
static unsigned int count10Ms = 0;
unsigned char currentLevel = 2;

unsigned char FAN_STATUS = FAN_STATUS_NONE;
//检测风扇次数
unsigned int fan_check_time = 0;

void setLedOn(int ledIndex);

void checkUsbStatus()
{
	if(getbit(PORTB,2) == 1){
		if(getbit(PORTB,1) == 1){
			//充满了，Led常亮
			resetbit(PORTA,0);
		}else if(countTime == 1000){
			//充电中，一直闪		
				reversebit(PORTA,0);
		}
	}else{
		//usb断开充电灯熄灭,PA0 = 1
		setbit(PORTA,0);
	}
}

void Init_PWM()
{
	CCP1CON = 0x0F;//设置PC2为PWM模式，4,5位为占空比的低2位
	T2CON = 0; //时钟分频 1:1 PWM周期为（PR2+1）*4/8,000,000
	PR2 = 199;
	
	CCPR1L = 0;//占空比高8位，低2位设置为0，结果就是 占空比 = CCPR1L*4/4*(PR2+1)
	TMR2IF = 0;
	T2CON = 0;
	//T2CON = 0X04 //启动定时器2，溢出后启动PWM
}

//设置风扇转速
void setFanLevel(char level)
{
	
	unsigned int levelWidth =  (PR2+1)/MAX_FAN_LEVEL;
	char tempLevel =  currentLevel + level;
	if(tempLevel > MAX_FAN_LEVEL)
	{
		tempLevel = MAX_FAN_LEVEL;
	}
	
	if(tempLevel < MIN_FAN_LEVEL)
	{
		tempLevel = MIN_FAN_LEVEL;
	}
	currentLevel = tempLevel;
	CCPR1L = tempLevel*currentLevel;
	if(FAN_STATUS == FAN_STATUS_ON)
	{
		setLedOn(currentLevel);
	}
	
}

//关闭风扇
void closeFan()
{
	Init_PWM();
	currentLevel = 2;
	setLedOn(5);
	setbit(PORTA,0);
	fan_check_time = 0;
	FAN_STATUS = FAN_STATUS_OFF;
	
}


//检测风扇是否连接
void checkFan()
{
	setbit(PORTA,1);
	setFanLevel(0);
	T2CON = 0X04; //启动定时器2，溢出后启动PWM
		
	if(FAN_STATUS == FAN_STATUS_ON)
	{
		closeFan();
		return;
	}
	//没有检测到风扇
	if(FAN_STATUS == FAN_STATUS_NONE)
	{
		fan_check_time++;
		if(fan_check_time == 3000)
		{
			closeFan();
			return;
		}
	}
	
	if(getbit(PORTB,6) == 0)
	{
		FAN_STATUS = FAN_STATUS_ON;
	}else
	{
		FAN_STATUS = FAN_STATUS_NONE;
	}
	//EN IN输出高电位，D1点亮，检测FAN DET，FAN DET为低电位则风扇正常工作，高电位则未连接
	
}





//设置Led灯亮
void setLedOn(int ledIndex)
{
	switch(ledIndex)
	{
		case 1:
		resetbit(PORTB,7); setbit(PORTC,0); resetbit(PORTC,1);
		break;
		case 2:
		setbit(PORTB,7); resetbit(PORTC,0); setbit(PORTC,1);
		break;
		setbit(PORTB,7); resetbit(PORTC,0); setbit(PORTC,1);
		case 3:
		setbit(PORTB,7); resetbit(PORTC,0); resetbit(PORTC,1);
		break;
		case 4:
		resetbit(PORTB,7); setbit(PORTC,0); setbit(PORTC,1);
		break;
		default:
		resetbit(PORTB,7); resetbit(PORTC,0); resetbit(PORTC,1);
		break;
	}
}


void main(void)
{
	Init_System();
	Init_GPIO();
	Init_Interupt();
	
	//设置唤醒
	IOCB = 0x04;
	TMR0 = 155;
	TO = 0;
	
	struct Keys key1,key2,key3;
	//K1开关
	key1.key_index = 5;
	//K2加档
	key2.key_index = 4;
	//K3减档
	key3.key_index = 3;
	resetKey(&key1);
	resetKey(&key2);
	resetKey(&key3);
	//设置IO方向
	TRISA = 0;
	TRISB = 0x0E;//1-6脚输入
	//TRISB = 0;
	//PORTB = 0;
	TRISC = 0;
	while(1)
	{
		//1毫秒检测一次
		if(time0Flag)
		{
			asm("clrwdt");
			time0Flag = 0;
			key1.key_addr_result = key2.key_addr_result = key3.key_addr_result = PORTB;
			sacnKeyInput(&key1);
			sacnKeyInput(&key2);
			sacnKeyInput(&key3);
			countTime++;
			count10Ms++;
		}
		
		//10毫秒检测一次
		if(count10Ms == 10)
		{
			if(key_read(&key1) != key_no)
			{
				//检测到按键了，检测风扇是否存在
				checkFan();
				
			}
			else if(FAN_STATUS == FAN_STATUS_NONE)
			{
				checkFan();
			}
			
			
			
			if(key_read(&key2) != key_no)
			{
				//加档
				setFanLevel(1);
			}
			
			if(key_read(&key3) != key_no)
			{
				//减档
				setFanLevel(-1);
			}
			
			
			
			
			count10Ms = 0;
			checkUsbStatus();
			
		}
		
		
		
		if(countTime == 1000)
		{
			countTime = 0;
		}
	}
	
}


/***********************************************
函数名称：Timer0_Isr
函数功能：中断服务
入口参数：无
出口参数：无
备注：
***********************************************/
void interrupt Timer0_Isr()
{
	if(T0IF)
	{
	//---------------------------------------
		TMR0 += 155;		//重新赋初值，在赋值前Timer0已有计数，故在该基础上加初值
	//---------------------------------------
			
		T0IF = 0;			//清中断标志位	
		time0Flag =1;
		
	}
	
}
