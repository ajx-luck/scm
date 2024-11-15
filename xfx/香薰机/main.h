#ifndef  _MAIN_H_
#define  _MAIN_H_
#include <cms.h>

/*******************************************************
					IO定义				  
********************************************************/
//*************IO定义**********************
#define        	PIN_FOG_PWM		RA0
#define        	PIN_AD_FOG_CUR	RA1
#define        	PIN_LED_G		RA2
#define        	PIN_LED_R		RA3
#define        	PIN_LED_B		RA4
#define        	PIN_BEEP		RA5
#define        	PIN_FAN			RA6
#define        	PIN_LED_SCAN_2	RA7

#define        	PIN_BTN_LED		RB0
#define        	PIN_BTN_FOG		RB1
#define        	PIN_BTN_WORK	RB2
#define        	PIN_IRR_DATA	RB3
#define        	PIN_LED_SCAN_3	RB4
#define        	PIN_LED_SCAN_1	RB5

//复用

//*************宏定义**********************
typedef 		unsigned char	u8;	    		 
typedef 		unsigned int	u16;    		
typedef 		unsigned long	u32;	


//风扇相关
#define			FAN_ON()		{PIN_FAN=1;}
#define			FAN_OFF()		{PIN_FAN=0;}

//蜂鸣器相关
#define			BEEP_ON()		{PWMD4L=62;PWM4EN=1;}
#define			BEEP_OFF()		{PWM4EN=0;PIN_BEEP=0;}

//led相关
#define			LEDR_PWM_ON()	{PWM2EN=1;}
#define			LEDR_PWM_OFF()	{PWM2EN=0;}
#define			LED_R_ON()		{PIN_LED_R=1;}
#define			LED_R_OFF()		{PIN_LED_R=0;}
#define			LEDR_DUTY		PWMD2L

#define			LEDG_PWM_ON()	{PWM1EN=1;}
#define			LEDG_PWM_OFF()	{PWM1EN=0;}
#define			LED_G_ON()		{PIN_LED_G=1;}
#define			LED_G_OFF()		{PIN_LED_G=0;}
#define			LEDG_DUTY		PWMD1L

#define			LEDB_PWM_ON()	{PWM3EN=1;}
#define			LEDB_PWM_OFF()	{PWM3EN=0;}
#define			LED_B_ON()		{PIN_LED_B=1;}
#define			LED_B_OFF()		{PIN_LED_B=0;}
#define			LEDB_DUTY		PWMD3L

#define			LED_DUTY_MAX	100

//工作灯
#define			LED_SCAN1_WAY	TRISB5
#define			LED_SCAN2_WAY	TRISA7
#define			LED_SCAN3_WAY	TRISB4

#define			LED_ALL_OFF()	{LED_SCAN1_WAY=1;LED_SCAN2_WAY=1;LED_SCAN3_WAY=1;}
#define			LED_IO_OFF()	{PIN_LED_SCAN_1=0;PIN_LED_SCAN_2=0;PIN_LED_SCAN_3=0;}

#define			LED_MOD1_ON()	{LED_SCAN1_WAY=0;PIN_LED_SCAN_1=1;LED_SCAN2_WAY=0;PIN_LED_SCAN_2=0;}
#define			LED_MOD2_ON()	{LED_SCAN2_WAY=0;PIN_LED_SCAN_2=1;LED_SCAN1_WAY=0;PIN_LED_SCAN_1=0;}
#define			LED_MOD3_ON()	{LED_SCAN1_WAY=0;PIN_LED_SCAN_1=1;LED_SCAN3_WAY=0;PIN_LED_SCAN_3=0;}
#define			LED_MOD4_ON()	{LED_SCAN3_WAY=0;PIN_LED_SCAN_3=1;LED_SCAN1_WAY=0;PIN_LED_SCAN_1=0;}

//AD相关
/*
#define			AD_CH_BOT_VOL() {ANSEL=0b00000000;ANSELH=0b00000001;ADCON0=0b01100001;ADCON1=0b00000101;}//AN8   2V基准
#define			AD_CH_FOG_VOL()	{ANSEL=0b00010000;ANSELH=0b00000000;ADCON0=0b01010001;ADCON1=0b00000101;}//AN4   2V基准
#define			AD_CH_CLOSE()	{ANSEL=0x00;ANSELH=0x00;ADCON0=0x00;ADCON1=0x00;}
*/
//启动转换
#define			AD_START()		{GODONE = 1;}
#define			AD_RESULT_GET()	(ADRESH<<4)+(ADRESL>>4)

//定时
#define			TIME_1MIN_NUM	6000 //X*10MS
#define			BEEP_DOUBLE_NUM	26 //X*10MS
#define			BEEP_SINGLE_NUM	8 //X*10MS

/*******************************************************
					全局变量定义				  
********************************************************/
/*******************位定义******************************/
/*******************************************************/
/*******************************************************/
/*******************************************************/
#endif














