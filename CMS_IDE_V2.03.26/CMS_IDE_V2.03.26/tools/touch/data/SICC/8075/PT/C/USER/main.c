/*******************************************************************************
* Copyright (C) 2019 China Micro Semiconductor Limited Company. All Rights Reserved.
*
* This software is owned and published by:
* CMS LLC, No 2609-10, Taurus Plaza, TaoyuanRoad, NanshanDistrict, Shenzhen, China.
*
* BY DOWNLOADING, INSTALLING OR USING THIS SOFTWARE, YOU AGREE TO BE BOUND
* BY ALL THE TERMS AND CONDITIONS OF THIS AGREEMENT.
*
* This software contains source code for use with CMS
* components. This software is licensed by CMS to be adapted only
* for use in systems utilizing CMS components. CMS shall not be
* responsible for misuse or illegal use of this software for devices not
* supported herein. CMS is providing this software "AS IS" and will
* not be responsible for issues arising from incorrect user implementation
* of the software.
*
* This software may be replicated in part or whole for the licensed use,
* with the restriction that this Disclaimer and Copyright notice must be
* included with each copy of this software, whether used in part or whole,
* at all times.
*/

/****************************************************************************/
/** \file main.c
**
** 
**
**	History:
**	
*****************************************************************************/
/****************************************************************************/
/*	include files
*****************************************************************************/
#include "cms80fx51x.h"
#include "delay.h"
#include "main.h"
#include "time.h"
#include "CheckTouchKey_80F75xx.h"
#include "CheckTouchKey_Set.h"
#include "REL_Protocol.h"
/****************************************************************************/
/*	Local pre-processor symbols('#define')
*****************************************************************************/

/****************************************************************************/
/*	Global variable definitions(declared in header file with 'extern')
*****************************************************************************/

/****************************************************************************/
/*	Local type definitions('typedef')
*****************************************************************************/

/****************************************************************************/
/*	Local variable  definitions('static')
*****************************************************************************/

/****************************************************************************/
/*	Local function prototypes('static')
*****************************************************************************/


/****************************************************************************/
/*	Function implementation - global ('extern') and local('static')
*****************************************************************************/



/*****************************************************************************
 ** \brief	 GPIO_Init
 **
 ** \param [in]  none   
 **
 ** \return 0
 *****************************************************************************/
void GPIO_Init(void)
{
	P0 = 0;
	P1 = 0;
	P2 = 0;
	P5 = 0;
	
	P0TRIS = 0xFF;	//0:input mode	1:output mode
	P1TRIS = 0xFF;
	P2TRIS = 0xFF;
	P5TRIS = 0xFF;
	/*
	P0OD = 0x00;		//0:normal output	1:opendrain output
	P1OD = 0x00;
	P2OD = 0x00;
	P5OD = 0X00;
	
	P0UP = 0x00;		//0:disable	pull high	1:enable pull high
	P1UP = 0x00;
	P2UP = 0x00;
	P5UP = 0X00;
	
	P0RD = 0x00;		//0:disbale pull low	1:enable pull low
	P1RD = 0x00;
	P2RD = 0x00;
	P5RD = 0X00;

	P0SR = 0x00;		//0:Fast slope	1:Slow slope
	P1SR = 0x00;
	P2SR = 0x00;
	P5SR = 0X00;
	*/
	P00CFG = 0x00;
	P01CFG = 0x00;
	P02CFG = 0x00;
	P03CFG = 0x00;
	P04CFG = 0x00;
	P05CFG = 0x00;
	P06CFG = 0x00;
	P07CFG = 0x00;
	
	P10CFG = 0x00;
	P11CFG = 0x00;
	P12CFG = 0x00;
	P13CFG = 0x00;
	P14CFG = 0x00;
	P15CFG = 0x00;
	P16CFG = 0x00;
	P17CFG = 0x00;
	
	P20CFG = 0x00;
	P21CFG = 0x00;
	P22CFG = 0x00;
	P23CFG = 0x00;
	
	P50CFG = 0x00;
	P51CFG = 0x00;
	P52CFG = 0x00;
	P53CFG = 0x00;
	P54CFG = 0x00;
	P55CFG = 0x00;
	
	P53CFG = 0X00;
	P54CFG = 0X00;
	
	//���������0
	P0 = 0x00;
	P1 = 0x00;
	P2 = 0x00;
	P5 = 0X00;

	//�����ڲ���һֱˢ��,�ϵ縳ֵһ�μ���,������ڲ�����ݴ���ͷ�ļ�����CMS_TOUCH_IO�л������������
}

/*****************************************************************************
 ** \brief	 Kscan
 **
 ** \param [in]  none   
 **
 ** \return 0
 *****************************************************************************/
void Kscan(void)
{
	static unsigned long int KeyOldFlag = 0;
	unsigned long int KeyOnOutput = KeyFlag;
	if(KeyOnOutput)
	{
		if(KeyOnOutput != KeyOldFlag)
		{
			KeyOldFlag = KeyOnOutput;			//�м�⵽����
			if(0x1 == KeyOnOutput){}
			else if(0x2 == KeyOnOutput){}
			else if(0x4 == KeyOnOutput){}
			else if(0x8 == KeyOnOutput){}
		}
	}
	else
	{
		KeyOldFlag = 0;
	}
}

/*****************************************************************************
 ** \brief	 main
 **
 ** \param [in]  none   
 **
 ** \return 0
 *****************************************************************************/
int main(void)
{
	//-----------------------------------
	clrwdt();//�˺궨���忴�Ź���ؼ���ָ��ʱ�����жϣ�ʹ��ʱ��ע��
	Delay_ms(100);
	clrwdt();//�˺궨���忴�Ź���ؼ���ָ��ʱ�����жϣ�ʹ��ʱ��ע��
	GPIO_Init();
	TMR0_Config();//Fosc/1��Fhsi/1,TMR0�ж�����Ϊ125us
	#ifdef	CMS_TOUCH_DEBUG//���Ժ궨���Ƿ�Ϊ1
	UART0_Config();
	#endif
	clrwdt();
	EA = 1;//�������ж�

	while(1)
	{
		if(g_mainTime >= 20)//2.5ms
		{
			g_mainTime = 0;
			clrwdt();//�˺궨���忴�Ź���ؼ���ָ��ʱ�����жϣ�ʹ��ʱ��ע��
			__CMS_CheckTouchKey();
			Kscan();			//��������
			
			#ifdef	CMS_TOUCH_DEBUG//���Ժ궨���Ƿ�Ϊ1
			REL_SenderLoop0();
			#endif
		}
	}
}