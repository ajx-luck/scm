#include "drive.h"
//**************************宏定义区*****************************
//*************************全局定义区*****************************
//定时相关
u8	time_125us_cnt;
u8	time_10ms_flg;
u8  fog_time_125us_cnt;
u8	fog_time_5ms_flg;

//LED驱动
u8  led_drive_cnt;
u8  ledr_pecent;
u8  ledg_pecent;
u8  ledb_pecent;

//雾化驱动
u8  fog_drive_mod;

//读IO相关
u8  io_read_buff;

//*************************全局定义区*****************************
/********************************************************************
*功  能：中断函数

*说  明：主要用于定时
********************************************************************/
void interrupt time0(void)
{
	if(TMR2IF)
	{
		TMR2IF = 0;
	
//		led_drive();
		if(!fog_drive_mod)
		{
			Set_Pwm_Onoff(0);
		}
		else if(fog_drive_mod == 1)
		{
			Set_Pwm_Onoff(20);
		}
		else
		{
			Set_Pwm_Onoff(30);
		}
				
		fog_time_125us_cnt++;
		if(fog_time_125us_cnt >= 40)
		{
			fog_time_125us_cnt=0;
			fog_time_5ms_flg=1;
		}
		
		time_125us_cnt++;
		if(time_125us_cnt >= 80)
		{
			time_125us_cnt=0;
			time_10ms_flg=1;
		}
	}
	else
	{
		PIR1 = 0;
		PIR2 = 0;
	}
}
/********************************************************************
*功  能：寄存器初始化

*说  明：上电复位调用一次
********************************************************************/
void register_init(void)
{
	GIE=0;
	asm("clrwdt");
//*****************************IO口初始化: 0输入  1输出
	PORTA=0b00000000;
	PORTB=0b00000000;
	
	TRISA=0b10000010;//OUT:0	IN:1	
	TRISB=0b11111111;//OUT:0	IN:1
	
	WPUA= 0b00000000;//EN:1		DIS:0
	WPUB= 0b00001111;//EN:1		DIS:0
	
	WPDA= 0b00000000;//EN:1		DIS:0
	WPDB= 0b00000000;//EN:1		DIS:0

	IOCA=0b00000000;//EN:1		DIS:0
	IOCB=0b00000000;//EN:1		DIS:0
	
	ANSEL= 0b00000000;//EN:1		DIS:0
	ANSELH=0b00000000;//EN:1		DIS:0

	Delay_nms(200);//上电延时200ms
//*****************************************************

//*****************************ADC初始化
	ADCON0=0b00000000;//8/16 
	ADCON1=0b00000000;//左对齐	选2V参考				
//*****************************************************

//*****************************T2初始化
	OSCCON = 0x71;				//配置振荡为16M
	OPTION_REG=0B00000000;	//Timer0使用内部时钟，预分频为FCPU:2  FCPU=8M/4
	TMR0=6; // 250*2us=500us
	SWDTEN = 1;					//开 WDT
	
	PR2 = 125;//16M下将TMR2设置为125us中断
	T2CON = 0b00000101;//16M/4/4  fsys=16M/4

//*****************************PWM0
	PWMCON0=0b10100000;//16M/64
	PWMCON1=0b00000000;
	PWMCON2=0b00000000;
	PWMTH=0;//用不到高两位
	PWMTL=100;//2us*(100+1)=200US  5K
	
	PWMD01H=0;//用不到高两位
	PWMD1L = 0;
	PWMD0L = 0;
	PWMD23H=0;//用不到高两位
	PWMD3L = 0;
	
	PWMT4L = 124;//2us*(124+1)=250US  4K  高位在PWMTH上
	PWMD4L = 62;
	
//*****************************************************
	INTCON=0;
	PIE1=0;
	PIE2=0;
	PIR1=0;
	PIR2=0;//清标志位允许位
	T0IE=0;
	TMR2IE=1;
	PEIE=1;//time2要用
	RBIE=0;
	GIE=1;//开全局中断

//*****************************************************
}
/********************************************************************
*功  能：数据初始化

*说  明：
********************************************************************/
void drive_data_init(void)
{
//定时相关
	time_125us_cnt=0;
	time_10ms_flg=0;
	fog_time_125us_cnt=0;
	fog_time_5ms_flg=0;
	
//LED驱动
	led_drive_cnt=0;
	ledr_pecent=0;
	ledg_pecent=0;
	ledb_pecent=0;
	
//雾化驱动
	fog_drive_mod=0;
	
//读IO相关
	io_read_buff=0;
}
/***********************************************************************
函数功能：系统寄存器刷新
入口参数：
返回数据：
备注：
***********************************************************************/
void Sys_set(void)
{
//	asm("clrwdt");
	WDTCON = 0x01;
//	TRISA=0b10000000;//OUT:0	IN:1	
//	TRISB=0b11111111;//OUT:0	IN:1
	OPTION_REG = 0;
	PIE1 = 0B00000010;
	PR2 = 125;
	INTCON = 0XC0;
	if(5 != T2CON)
	{
		T2CON = 5;
	}
}
/********************************************************************
*功  能：LED驱动

*说  明：125us
********************************************************************/
void led_drive(void)
{
	if(led_drive_cnt < ledr_pecent)
	{
		LED_R_ON();
	}
	else
	{
		LED_R_OFF();
	}
	if(led_drive_cnt < ledg_pecent)
	{
		LED_G_ON();
	}
	else
	{
		LED_G_OFF();
	}
	if(led_drive_cnt < ledb_pecent)
	{
		LED_B_ON();
	}
	else
	{
		LED_B_OFF();
	}
	led_drive_cnt++;
	if(led_drive_cnt >= LED_DUTY_MAX)
	{
		led_drive_cnt=0;
	}
}