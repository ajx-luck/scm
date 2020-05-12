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

#define LED_1  1
#define LED_2  2
#define LED_3  3
#define LED_4  4
//1毫秒中断标志
static unsigned char time0Flag = 0;
static unsigned int countTime = 0;
static unsigned int count10Ms = 0;
unsigned char currentLevel = 3;
//风扇状态
unsigned char FAN_STATUS = FAN_STATUS_NONE;
//检测风扇次数
unsigned int fan_check_time = 0;
//按键结构体
struct Keys key1, key2, key3;
//显示风扇挡位
void setLedOn(unsigned char ledIndex);
//初始化配置
void Init_Config();
//睡眠模式
void Sleep_Mode();

void checkUsbStatus() {
    if (getbit(PORTB, 2) == 1) {
        if (getbit(PORTB, 1) == 1) {
            //充满了，Led常亮
            resetbit(PORTA, 0);
        } else if (countTime == 1000) {
            //充电中，一直闪		
            reversebit(PORTA, 0);
        }
    } else {
        //usb断开充电灯熄灭,PA0 = 1
        setbit(PORTA, 0);
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
    //T2CON = 0X04 //启动定时器2，溢出后启动PWM
}

//设置风扇转速
void setFanLevel(char level) {
	if(level == 0)
	{
		currentLevel = 3;
	}
    unsigned int levelWidth = (PR2 + 1) / MAX_FAN_LEVEL;
    char tempLevel = currentLevel + level;
    if (tempLevel > MAX_FAN_LEVEL) {
        tempLevel = MAX_FAN_LEVEL;
    }

    if (tempLevel < MIN_FAN_LEVEL) {
        tempLevel = MIN_FAN_LEVEL;
    }
	
    
    if (FAN_STATUS == FAN_STATUS_ON) {
		currentLevel = tempLevel;
		switch(currentLevel)
		{
			case 1:
			CCPR1L = 1;
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
        setLedOn(currentLevel);
    }

}

//关闭风扇
void closeFan() {
    Init_PWM();
    currentLevel = 2;
    setLedOn(5);
    setbit(PORTA, 0);
    //PWM输出脚设置为输入，关闭PWM
    setbit(TRISC, 2);
    fan_check_time = 0;
    FAN_STATUS = FAN_STATUS_OFF;
    //Sleep_Mode();
}


//检测风扇是否连接
void checkFan() {
	resetbit(TRISA, 1);
    setbit(PORTA, 1);
    //PC2设置为输出脚
    resetbit(TRISC, 2);
	setbit(PORTA, 2);
    T2CON = 0X04; //启动定时器2，溢出后启动PWM

    //EN IN输出高电位，D1点亮，检测FAN DET，FAN DET为低电位则风扇正常工作，高电位则未连接
    if (getbit(PORTB, 6) == 0) {
        FAN_STATUS = FAN_STATUS_ON;
    } else {
        FAN_STATUS = FAN_STATUS_NONE;
    }
	
	setFanLevel(0);

    //没有检测到风扇
    if (FAN_STATUS == FAN_STATUS_NONE) {
        fan_check_time++;
        if (fan_check_time == 3000) {
            closeFan();
            return;
        }
    }


}


//设置Led灯亮
void setLedOn(unsigned char ledIndex) {
    switch(ledIndex) {
        case 1:
            //PB7设置为输入脚,PC1和PC0设置为输出
			resetbit(TRISC, 1);
			setbit(PBTRISB, 7);
            resetbit(TRISC, 0);
            resetbit(PBPORTB, 7);
            setbit(PORTC, 0);
            resetbit(PORTC, 1);            
            break;
        case 2:
			resetbit(TRISC, 1);
			setbit(PBTRISB, 7);
            resetbit(TRISC, 0);
			resetbit(PBPORTB, 7);
            resetbit(PORTC, 0);
            setbit(PORTC, 1);
            break;
        case 3:
            //PC0设置为输入脚，PB7和PC1设置为输出
			setbit(TRISC, 0);
			resetbit(PBTRISB, 7);
            resetbit(TRISC, 1);
            setbit(PBPORTB, 7);
            resetbit(PORTC, 0);
            resetbit(PORTC, 1);
            break;
        case 4:
			setbit(TRISC, 0);
			resetbit(PBTRISB, 7);
            resetbit(TRISC, 1);
            resetbit(PBPORTB, 7);
            setbit(PORTC, 0);
            setbit(PORTC, 1);
            break;
        case 5:
            //全部设置为输入脚
			setbit(TRISC, 0);
			setbit(PBTRISB, 7);
            setbit(TRISC, 1);
			resetbit(PORTC, 0);
			resetbit(PBPORTB, 7);
            resetbit(PORTC, 1);
            break;
    }
}


//扫描按键
void scanKeys() {
    key1.key_addr_result = key2.key_addr_result = key3.key_addr_result = PORTB;
    sacnKeyInput(&key1);
    sacnKeyInput(&key2);
    sacnKeyInput(&key3);
    countTime++;
   
}

//检测按键状态并处理
void checkKeys() {
    if (key_driver(&key1) == key_click) {
        //检测到按键了，检测风扇是否存在

        if (FAN_STATUS == FAN_STATUS_ON) {
            //关闭风扇
            closeFan();
        } else {
            FAN_STATUS = FAN_STATUS_NONE;
            checkFan();
        }
        return;
    } else if (FAN_STATUS == FAN_STATUS_NONE) {
        checkFan();
    }

	unsigned char key2Status = key_driver(&key2);
    if (key2Status == key_click) {
        //加档
        setFanLevel(1);
        return;
    }
	unsigned char key3Status = key_driver(&key3);
    if (key3Status == key_click) {
        //减档
        setFanLevel(-1);
        return;
    }

}


void main(void) {
	Sleep_Mode();
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
            checkKeys();
            count10Ms = 0;
            //检测USB状态
            checkUsbStatus();
			//检测内部电压
			readVrefADC();
        }

        if (countTime == 1000) {
            countTime = 0;
        }
		
    }

}

void Init_Config() {

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
    //K2加档
    key2.key_index = 4;
    //K3减档
    key3.key_index = 3;
    resetKey(&key1);
    resetKey(&key2);
    resetKey(&key3);
    //设置IO方向
    TRISA = 0;
    TRISB = 0x7E;//1-6脚输入
    TRISC = 0;
}


void Sleep_Mode() {
    INTCON = 0;

    OPTION_REG = 0;

    TRISA = 0B00000000;        //关闭所有输出
    PORTA = 0B00000000;
    WPUA = 0B00000000;

    TRISB = 0B00100000;
    PORTB = 0B00000000;

    PORTB = 0;
    WPUB = 0B00100000;         //RB3 上拉

    IOCB = 0B00100000;            //允许RB3的IO口电平变化中断
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
void interrupt

Timer0_Isr() {
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



