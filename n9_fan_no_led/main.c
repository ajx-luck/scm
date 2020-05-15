#include "scankey.h"
#include "init.h"
#include "adc.h"

#define MAX_FAN_LEVEL 4
#define MIN_FAN_LEVEL 1

#define FAN_STATUS_OFF  0
#define FAN_STATUS_ON  1
#define FAN_STATUS_NONE 2

#define PBPORTB PORTA
#define PBTRISB TRISA


//1毫秒中断标志
static unsigned char time0Flag = 0;
static unsigned int countTime = 0;
static unsigned int count10Ms = 0;
unsigned char currentLevel = 1;
//低电压检测次数
unsigned char lowVTime = 0;
unsigned char count500ms = 0;
//风扇状态
unsigned char FAN_STATUS = FAN_STATUS_OFF;
//检测风扇次数
unsigned int fan_check_time = 0;
//按键结构体
struct Keys key1;
//关闭风扇
void closeFan();
//初始化配置
void Init_Config();
//睡眠模式
void Sleep_Mode();

void checkUsbStatus() {
	
	//USB连接了
	if (getbit(PORTB, 2) == 1) {
		//重置低电压检测
		lowVTime = 0;
        if (getbit(PORTB, 1) == 0) {
            //充满了，PC1常亮,A0关闭
            resetbit(PORTC, 1);
			setbit(PORTA, 0);
        } else if (countTime < 15) {
			setbit(PORTC, 1);
            //充电中，红灯一直闪，	
			resetbit(PORTA, 0);
        }else{
			setbit(PORTA, 0);
		}
    } else {
        //usb断开充电红灯灯熄灭,PA0 = 1
		setbit(PORTC, 1);
		
		//检测内部电压值,电压低于3.1V
		if((adresult/8) > 0x63 && count500ms == 10)
		{
			if(lowVTime < 10)
			{
				lowVTime++;
				//闪红灯，
				reversebit(PORTA, 0);
			}else
			{
				//关闭风扇
				closeFan();
			}
		}
    }
}

void Init_PWM() {
    CCP1CON = 0x0F;//设置PC2为PWM模式，4,5位为占空比的低2位
    T2CON = 0; //时钟分频 1:1 PWM周期为（PR2+1）*4/8,000,000
    PR2 = 7;

    CCPR1L = 0;//占空比高8位，低2位设置为0，结果就是 占空比 = CCPR1L*4/4*(PR2+1)
    TMR2IF = 0;
    T2CON = 0;
    //PC2设置为输出脚
    resetbit(TRISC, 2);
    T2CON = 0X04; //启动定时器2，溢出后启动PWM
}

//设置风扇转速
void setFanLevel(char level) {
	Init_PWM();
	if(level == 0)
	{
		currentLevel = 2;
	}
    unsigned int levelWidth = (PR2 + 1) / MAX_FAN_LEVEL;
    char tempLevel = currentLevel + level;
    if (tempLevel > MAX_FAN_LEVEL) {
        tempLevel = MIN_FAN_LEVEL;
    }

    
    if (FAN_STATUS == FAN_STATUS_ON) {
		currentLevel = tempLevel;
		switch(currentLevel)
		{
			case 1:
			closeFan();
			break;
			case 2:
			CCPR1L = 2;
			break;
			case 3:
			CCPR1L = 3;
			break;
			case 4:
			CCPR1L = 5;
			break;
		}
    //设置占宽比
		//CCPR1L = levelWidth * currentLevel;
      
    }

}

//关闭风扇
void closeFan() {
	CCP1CON = 0x00;
	T2CON = 0X00;
    currentLevel = 1;
    setbit(PORTA, 0);
    //PWM输出脚设置为输入，关闭PWM
    resetbit(TRISC, 2);
	resetbit(PORTC, 2);
	resetbit(TRISA, 2);
	resetbit(PORTA, 2);
    fan_check_time = 0;
    FAN_STATUS = FAN_STATUS_OFF;
	//重置低电压检测
	lowVTime = 0;
	if (getbit(PORTB, 2) == 0) {
		Sleep_Mode();
	}
    
}


//检测风扇是否连接
void checkFan() {
	resetbit(TRISA, 1);
    resetbit(PORTA, 1);
    //PC2设置为输出脚
    resetbit(TRISC, 2);
	setbit(PORTA, 2);
    T2CON = 0X04; //启动定时器2，溢出后启动PWM

    //EN IN输出高电位，D1点亮，检测FAN DET，FAN DET为低电位则风扇正常工作，高电位则未连接
  //  if (getbit(PORTB, 6) == 0) {
   //     FAN_STATUS = FAN_STATUS_ON;
   // } else {
    //    FAN_STATUS = FAN_STATUS_NONE;
   // }
	
	
    //没有检测到风扇
    //if (FAN_STATUS == FAN_STATUS_NONE) {
    //    fan_check_time++;
    //    if (fan_check_time == 3000) {
     //       closeFan();
      //      return;
     //   }
    //}


}




//扫描按键
void scanKeys() {
    key1.key_addr_result = PORTB;
    sacnKeyInput(&key1);
    
   
}

//检测按键状态并处理
void checkKeys() {
    if (key_driver(&key1) == key_click) {
        //检测到按键了，检测风扇是否存在

        if (FAN_STATUS == FAN_STATUS_ON) {
			//按一下，风扇加档
            setFanLevel(1);
            
        } else {
            FAN_STATUS = FAN_STATUS_ON;
			setFanLevel(0);
            checkFan();
        }
        return;
    } else if (FAN_STATUS == FAN_STATUS_NONE) {
        checkFan();
    }


}


void main(void) {
	if (getbit(PORTB, 2) == 0) {
		Sleep_Mode();
	}
	
    Init_Config();
    while (1) {
        //0.1毫秒检测一次
        if (time0Flag) {
            asm("clrwdt");
            time0Flag = 0;
			scanKeys();
            count10Ms++;
        }

        //10毫秒检测一次
        if (count10Ms == 100) {	
			countTime++;
			count500ms++;	
            checkKeys();
            count10Ms = 0;
            //检测USB状态
            checkUsbStatus();
			//检测内部电压
			readVrefADC();
        }
		
		if(count500ms == 50)
		{
			count500ms = 0;
		}

        if (countTime == 50) {
            countTime = 0;
        }
		
    }

}

void Init_Config() {
	if(FAN_STATUS == FAN_STATUS_ON)
	{
		return;
	}
    Init_System();
    Init_GPIO();
    Init_Interupt();
    Init_PWM();
    //设置唤醒
    IOCB = 0x04;
    TMR0 = 155;
    TO = 0;

    //K1开关
    key1.key_index = 5;
    
    resetKey(&key1);

    //设置IO方向
    TRISA = 0;
    TRISB = 0x7E;//1-6脚输入
    TRISC = 0;
	Init_PWM();
}


void Sleep_Mode() {
	FAN_STATUS = FAN_STATUS_OFF;
    INTCON = 0;

    OPTION_REG = 0;

    TRISA = 0B00000000;        //关闭所有输出
    PORTA = 0B00000001;
    WPUA = 0B00000000;

    TRISB = 0B00100100;
    PORTB = 0B00000000;

	TRISC = 0B00000000;
    PORTC = 0B00000010;
   
    WPUB = 0B00100000;         //RB5 上拉

    IOCB = 0B00100100;            //允许RB5 RB2的IO口电平变化中断
    RBIE = 1;                    //允许PORTB电平变化中断
    GIE = 1;                    //GIE = 0时，唤醒后执行SLEEP后程序;GIE = 1时，唤醒后跳至中断服务

    ADCON0 = 0;                    //关闭所有模块

    OSCCON = 0X70;                //配置振荡为16M,关闭WDT
	
    PORTB;                        //读PORTB值并锁存	
			
    asm("clrwdt");

    asm("sleep");                //进入休眠模式

    asm("nop");
	
	


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
        time0Flag = 1;

    }

    if (RBIF) {
        RBIF = 0;            //清中断标志
        Init_Config();
    }
}