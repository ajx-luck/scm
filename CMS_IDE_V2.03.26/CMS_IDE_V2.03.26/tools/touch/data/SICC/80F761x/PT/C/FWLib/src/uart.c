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
/** \file uart.c
**
**  
**
**	History:
**	
*****************************************************************************/
/****************************************************************************/
/*	include files
*****************************************************************************/
#include "uart.h"
/****************************************************************************/
/*	Local pre-processor symbols/macros('#define')
****************************************************************************/

/****************************************************************************/
/*	Global variable definitions(declared in header file with 'extern')
****************************************************************************/

/****************************************************************************/
/*	Local type definitions('typedef')
****************************************************************************/

/****************************************************************************/
/*	Local variable  definitions('static')
****************************************************************************/

/****************************************************************************/
/*	Local function prototypes('static')
****************************************************************************/
/******************************************************************************
 ** \brief UART_ConfigRunMode
 **			����UART����ģʽ
 ** \param [in]     UARTn: 			(1)UART0
 **									(2)UART1
 **						 			(3)UART2
 **					UARTMode:		(1)UART_MOD_SYN : ͬ��ģʽ
 **									(2)UART_MOD_ASY_8BIT: 8λ�첽ģʽ
 **									(3)UART_MOD_ASY_9BIT��9λ�첽ģʽ
 **									(4)UART_MOD_ASY_9BIT_STATIC��9λ�����ʹ̶��첽ģʽ
 **					UARTBaudTimer:  (1)UART_BAUD_TMR1 :	Timer1����������
 **									(2)UART_BAUD_TMR4 :	Timer4����������
 **									(3)UART_BAUD_TMR2 : Timer2����������
 **									(4)UART_BAUD_BRT : BRT����������
 ** \return none
******************************************************************************/
void UART_ConfigRunMode(uint8_t UARTn, uint8_t UARTMode, uint8_t UARTBaudTimer)
{	
	if(UARTn == UART0)
	{
		SCON0 &= ~(UART_SCON0_U0SMn_Msk);
		SCON0 |= (UARTMode<< UART_SCON0_U0SMn_Pos);
		FUNCCR &= ~(SYS_FUNCCR_UART0_CKS_Msk);
		FUNCCR |= UARTBaudTimer;
	}
	if(UARTn == UART1)
	{
		SCON1 &= ~(UART_SCON1_U1SMn_Msk);
		SCON1 |= (UARTMode<< UART_SCON1_U1SMn_Pos);		
		FUNCCR &= ~(SYS_FUNCCR_UART1_CKS_Msk);		
		FUNCCR |= UARTBaudTimer <<SYS_FUNCCR_UART1_CKS_Pos;					
	}	
	if(UARTn == UART2)
	{
		SFRS = 0x1;		/*ѡ��BANK1*/
		SCON2 &= ~(UART_SCON2_U2SMn_Msk);
		SCON2 |= (UARTMode<< UART_SCON2_U2SMn_Pos);
		FUNCCR1 &= ~(SYS_FUNCCR1_UART2_CKS_Msk);
		FUNCCR1 |= UARTBaudTimer;
		SFRS = 0x0;		/*ѡ��BANK0*/		
	}
	
}
/******************************************************************************
 ** \brief UART_EnableDoubleFrequency
 **			ʹ��UART�����ʱ�Ƶģʽ
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 ** \return none
******************************************************************************/
void UART_EnableDoubleFrequency(uint8_t UARTn)
{
	if(UARTn == UART0)
	{
		PCON |= SYS_PCON_SMOD0_Msk;
	}
	if(UARTn == UART1)
	{
		PCON |= SYS_PCON_SMOD1_Msk;
	}
	if(UARTn == UART2)
	{
		SFRS = 0x1;		/*ѡ��BANK1*/
		PCON1 |= SYS_PCON1_SMOD2_Msk;
		SFRS = 0x0;		/*ѡ��BANK0*/		
	}
}
/******************************************************************************
 ** \brief UART_DisableDoubleFrequency
 **			�ر�UART�����ʱ�Ƶģʽ
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 ** \return none
******************************************************************************/
void UART_DisableDoubleFrequency(uint8_t UARTn)
{
	if(UARTn == UART0)
	{
		PCON &= ~(SYS_PCON_SMOD0_Msk);
	}
	if(UARTn == UART1)
	{
		PCON &= ~(SYS_PCON_SMOD1_Msk);
	}
	if(UARTn == UART2)
	{
		SFRS = 0x1;		/*ѡ��BANK1*/
		PCON1 &= ~(SYS_PCON1_SMOD2_Msk);
		SFRS = 0x0;		/*ѡ��BANK0*/		
	}	
}

/******************************************************************************
 ** \brief UART_ConfigBaudRate
 **			����UART������
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 **					BaudRateValue:  ������ֵ
 ** \return Timer1/4: 8λ�Զ���װģʽ��THxֵ
 **			Timer2: 16 λ�Զ���װģʽ�� RLDH:RLDL ֵ
 **			BRT: 16 λ��ʱģʽ BRTH:BRTL ֵ
******************************************************************************/
uint16_t UART_ConfigBaudRate(uint8_t UARTn, uint32_t  BaudRateValue)
{
#ifdef  USE_FORMULA
	float  BaudRateTemp =0;	
	float  BaudRate = 0.55;
	uint16_t PeriodValue =0;
	uint8_t  SMOD_Flag =0;
	uint8_t  T_Flag =0;	
	uint8_t  BaudRateTimer =0;
	
	SMOD_Flag = 1;		
	if(UARTn == UART0)
	{	
		if(PCON & SYS_PCON_SMOD0_Msk)
		{
			SMOD_Flag = 2;						/*��ȡSMODλ*/
		}	
		BaudRateTimer = FUNCCR & SYS_FUNCCR_UART0_CKS_Msk;			
	}
	if(UARTn == UART1)
	{	
		if(PCON & SYS_PCON_SMOD1_Msk)
		{
			SMOD_Flag = 2;						/*��ȡSMODλ*/
		}	
		BaudRateTimer = (FUNCCR & SYS_FUNCCR_UART1_CKS_Msk) >> SYS_FUNCCR_UART1_CKS_Pos;
	}
		
	if(UARTn == UART2)
	{	
		SFRS = 0x1;		/*ѡ��BANK1*/	
		if(PCON1 & SYS_PCON1_SMOD2_Msk)
		{
			SMOD_Flag = 2;						/*��ȡSMODλ*/
		}	
		BaudRateTimer = FUNCCR1 & SYS_FUNCCR1_UART2_CKS_Msk;
		SFRS = 0x0;		/*ѡ��BANK0*/		
	}	
	
	switch(BaudRateTimer)
	{
		case UART_BAUD_TMR1:	// Timer1
			T_Flag = ((CKCON & TMR_CKCON_T1M_Msk)? 1:3);		/*��ȡT1Mλ*/
			BaudRateTemp = 256 - SystemClock *SMOD_Flag/ 32 / 4 /T_Flag/BaudRateValue;					
			break;
		case UART_BAUD_TMR4:	// Timer4
			T_Flag = ((T34MOD & TMR_T34MOD_T4M_Msk)? 1:3);		/*��ȡT4Mλ*/
			BaudRateTemp = 256 - SystemClock *SMOD_Flag/ 32 / 4 /T_Flag/BaudRateValue;			
			break;
		case UART_BAUD_TMR2:	// Timer2
			T_Flag = (( T2CON & TMR_T2CON_T2PS_Msk)? 2:1);			/*��ȡT2PSλ*/
			BaudRateTemp = 65536 - SystemClock *SMOD_Flag/ 32 / 12 /T_Flag/BaudRateValue; 		
			break;			
		case UART_BAUD_BRT:	// BRT
			T_Flag = BRTCON & UART_BRTCON_BRTCKDIV_Msk;		/*��ȡBRTCLKVIVλ*/
			BaudRateTemp = 65536 - SystemClock *SMOD_Flag/ 32 / (1<< T_Flag)/BaudRateValue;	
			break;				
		default:
			break;
	}				
	if((BaudRateTemp - (uint16_t) BaudRateTemp) > BaudRate)
	{
		PeriodValue = (uint16_t)BaudRateTemp + 1;
	}
	else
	{
		PeriodValue = BaudRateTemp;
	}	
	return (PeriodValue);
#else	
	UARTn =0;
	BaudRateValue =0;
	return 0;
#endif 
}

/******************************************************************************
 ** \brief UART_EnableReceive
 **			��������ģʽ
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 ** \return 
******************************************************************************/
void UART_EnableReceive(uint8_t UARTn)
{
	if(UARTn == UART0)
	{
		SCON0 |= UART_SCON0_U0REN_Msk;
	}
	if(UARTn == UART1)
	{
		SCON1 |= UART_SCON1_U1REN_Msk;
	}
	if(UARTn == UART2)
	{
		SFRS = 0x1;		/*ѡ��BANK1*/			
		SCON2 |= UART_SCON2_U2REN_Msk;
		SFRS = 0x0;		/*ѡ��BANK0*/			
	}	
}
/******************************************************************************
 ** \brief UART_DisableReceive
 **			�رս���ģʽ
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 ** \return 
******************************************************************************/
void UART_DisableReceive(uint8_t UARTn)
{
	if(UARTn == UART0)
	{
		SCON0 &= ~(UART_SCON0_U0REN_Msk);
	}
	if(UARTn == UART1)
	{
		SCON1 &= ~(UART_SCON1_U1REN_Msk);
	}	
	if(UARTn == UART2)
	{
		SFRS = 0x1;		/*ѡ��BANK1*/			
		SCON2 &= ~(UART_SCON2_U2REN_Msk);
		SFRS = 0x0;		/*ѡ��BANK0*/			
	}	
}

/******************************************************************************
 ** \brief UART_EnableInt
 **			�����ж�
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 ** \return 
******************************************************************************/
void UART_EnableInt(uint8_t UARTn)
{
	if(UARTn == UART0)
	{
		ES0 =1;
	}
	if(UARTn == UART1)
	{
		ES1 =1;
	}
	if(UARTn == UART2)
	{
		EIE3 |= IRQ_EIE3_ES2_Msk;
	}
}
/******************************************************************************
 ** \brief UART_DisableInt
 **			�ر��ж�
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 ** \return 
******************************************************************************/
void UART_DisableInt(uint8_t UARTn)
{
	if(UARTn == UART0)
	{
		ES0 =0;
	}
	if(UARTn == UART1)
	{
		ES1 =0;
	}
	if(UARTn == UART2)
	{
		EIE3 &= ~(IRQ_EIE3_ES2_Msk);
	}	
}
/******************************************************************************
 ** \brief UART_GetReceiveIntFlag
 **			��ȡ�����жϱ�־λ
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 ** \return 0�����жϣ�1�����ж�
******************************************************************************/
uint8_t  UART_GetReceiveIntFlag(uint8_t UARTn)
{
	uint8_t uartFlag;
	uartFlag =0;
	if(UART0 ==  UARTn)
	{
		uartFlag =((SCON0 & UART_SCON0_RI0_Msk)? 1:0);
	}
	if(UART1 == UARTn)
	{
		uartFlag =((SCON1 & UART_SCON1_RI1_Msk)? 1:0);
	}
	if(UARTn == UART2)
	{
		SFRS = 0x1;		/*ѡ��BANK1*/			
		uartFlag = ((SCON2 & UART_SCON2_RI2_Msk)? 1:0);
		SFRS = 0x0;		/*ѡ��BANK0*/			
	}
	
	return uartFlag ;
}

/******************************************************************************
 ** \brief UART_ClearReceiveIntFlag
 **			��������жϱ�־λ
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 ** \return 
******************************************************************************/
void UART_ClearReceiveIntFlag(uint8_t UARTn)
{
	uint8_t temp;	
	if(UART0 ==  UARTn)
	{
		temp  = SCON0;
		temp &= ~(UART_SCON0_RI0_Msk);
		SCON0 = temp | UART_SCON0_TI0_Msk;
	}
	if(UART1 == UARTn)
	{
		temp  = SCON1;
		temp &= ~(UART_SCON1_RI1_Msk);
		SCON1 = temp | UART_SCON1_TI1_Msk;		
	}
	if(UARTn == UART2)
	{
		SFRS = 0x1;		/*ѡ��BANK1*/	
		temp  = SCON2;
		temp &= ~(UART_SCON2_RI2_Msk);
		SCON2 = temp | UART_SCON2_TI2_Msk;				
		SFRS = 0x0;		/*ѡ��BANK0*/			
	}	
}

/******************************************************************************
 ** \brief UART_GetSendIntFlag
 **			��ȡ�����жϱ�־λ
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 ** \return 0�����жϣ�1�����ж�
******************************************************************************/
uint8_t  UART_GetSendIntFlag(uint8_t UARTn)
{
	uint8_t uartFlag;
	uartFlag =0;
	if(UART0 ==  UARTn)
	{
		return((SCON0 & UART_SCON0_TI0_Msk)? 1:0);
	}
	if(UART1 ==  UARTn)
	{
		return((SCON1 & UART_SCON1_TI1_Msk)? 1:0);
	}	
	if(UARTn == UART2)
	{
		SFRS = 0x1;		/*ѡ��BANK1*/			
		uartFlag = ((SCON2 & UART_SCON2_TI2_Msk)? 1:0);
		SFRS = 0x0;		/*ѡ��BANK0*/			
	}	
	return uartFlag;
}

/******************************************************************************
 ** \brief UART_ClearSendIntFlag
 **			��������жϱ�־λ
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 ** \return 
******************************************************************************/
void UART_ClearSendIntFlag(uint8_t UARTn)
{
	uint8_t temp;
	
	if(UART0 ==  UARTn)
	{
		temp  = SCON0;
		temp &= ~(UART_SCON0_TI0_Msk);
		SCON0 = temp | UART_SCON0_RI0_Msk;		
	}
	if(UART1 == UARTn)
	{
		temp  = SCON1;
		temp &= ~(UART_SCON1_TI1_Msk) ;
		SCON1 = temp | UART_SCON1_RI1_Msk;		
	}	
	if(UARTn == UART2)
	{
		SFRS = 0x1;		/*ѡ��BANK1*/	
		temp  = SCON2;
		temp &= ~(UART_SCON2_TI2_Msk) ;
		SCON2 = temp | UART_SCON2_RI2_Msk;		
		SFRS = 0x0;		/*ѡ��BANK0*/			
	}	
}

/******************************************************************************
 ** \brief UART_GetBuff
 **			��ȡ����Buff��ֵ
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 ** \return 
******************************************************************************/
uint8_t UART_GetBuff(uint8_t UARTn)
{
	uint8_t  uartbuf;
	uartbuf =0;
	if(UART0 == UARTn)
	{
		uartbuf = SBUF0;
	}
	if(UART1 ==  UARTn)
	{
		uartbuf = SBUF1;
	}
	if(UARTn == UART2)
	{
		SFRS = 0x1;		/*ѡ��BANK1*/		
		uartbuf = SBUF2;	
		SFRS = 0x0;		/*ѡ��BANK0*/			
	}		
	return uartbuf;
}

/******************************************************************************
 ** \brief UART_SendBuff
 **			�������ݵ�����Buff
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 **				   UARTSendValue : ���͵�8λֵ
 ** \return 
******************************************************************************/
void UART_SendBuff(uint8_t UARTn, uint8_t UARTSendValue)
{
	if(UART0 == UARTn)
	{
		SBUF0 = UARTSendValue;
	}
	if(UART1 == UARTn)
	{
		SBUF1 = UARTSendValue;
	}	
	if(UARTn == UART2)
	{
		SFRS = 0x1;		/*ѡ��BANK1*/		
		SBUF2 = UARTSendValue;	
		SFRS = 0x0;		/*ѡ��BANK0*/			
	}	
}

/******************************************************************************
 ** \brief UART_SendNinthBit
 **			�������ݵĵھ�λ
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 **				   UARTSendValue : ���͵ĵھ�λֵ
 ** \return 
******************************************************************************/
void UART_SendNinthBit(uint8_t UARTn, uint8_t UARTSendValue)
{
	if(UART0 == UARTn)
	{
		if(0 == UARTSendValue)
		{
			SCON0 &= ~(UART_SCON0_U0TB8_Msk);
		}
		else
		{
			SCON0 |= UART_SCON0_U0TB8_Msk;	
		}
	}
	if(UART1 == UARTn)
	{
		if(0 == UARTSendValue)
		{
			SCON1 &= ~(UART_SCON1_U1TB8_Msk);
		}
		else 
		{
			SCON1 |= UART_SCON1_U1TB8_Msk;	
		}
	}	
	if(UARTn == UART2)
	{
		SFRS = 0x1;		/*ѡ��BANK1*/		
		if(0 == UARTSendValue)
		{
			SCON2 &= ~(UART_SCON2_U2TB8_Msk);
		}
		else 
		{
			SCON2 |= UART_SCON2_U2TB8_Msk;	
		}		
		SFRS = 0x0;		/*ѡ��BANK0*/			
	}	
	
}
/******************************************************************************
 ** \brief UART_GetNinthBit
 **			��ȡ���ݵĵھ�λ
 ** \param [in]    UARTn: (1) UART0
 **						  (2) UART1
 **						  (3) UART2
 ** \return 0/1
******************************************************************************/
uint8_t UART_GetNinthBit(uint8_t UARTn)
{
	uint8_t ninthbit;
	ninthbit=0;
	if(UARTn == UART0)
	{
		ninthbit= ((SCON0 & UART_SCON0_U0RB8_Msk)? 1:0);
	}
	if(UARTn == UART1)
	{
		ninthbit= ((SCON1 & UART_SCON1_U1RB8_Msk)? 1:0);
	}
	if(UARTn == UART2)
	{
		SFRS = 0x1;		/*ѡ��BANK1*/		
		ninthbit= ((SCON2 & UART_SCON2_U2RB8_Msk)? 1:0);		
		SFRS = 0x0;		/*ѡ��BANK0*/			
	}	
	return ninthbit;
}

/******************************************************************************
 ** \brief UART_EnableBRT
 **		   ʹ��BRTʱ��ģ��
 ** \param [in]none
 ** \return none
******************************************************************************/
void UART_EnableBRT(void)
{
	BRTCON |= UART_BRTCON_BRTEN_Msk;	
}
/******************************************************************************
 ** \brief UART_ConfigBRTClk
 **		   ����BRTģ��ʱ��
 ** \param [in]BRTClkDiv : BRT_CLK_DIV_1 ~ BRT_CLK_DIV_128
 ** \return none
******************************************************************************/
void UART_ConfigBRTClk( uint8_t BRTClkDiv)
{
	BRTCON &= ~(UART_BRTCON_BRTCKDIV_Msk);	
	BRTCON |= BRTClkDiv;			
}

/******************************************************************************
 ** \brief UART_ConfigBRTPeriod
 **		   ����BRTģ��ʱ������
 ** \param [in] BRTPeriod: 16bit
 ** \return none
******************************************************************************/
void UART_ConfigBRTPeriod( uint16_t BRTPeriod)
{	
	BRTDL = BRTPeriod;
	BRTDH = BRTPeriod>>8;	
}
/******************************************************************************
 ** \brief UART_DisableBRT
 **		   �ر�BRTʱ��ģ��
 ** \param [in]none
 ** \return none
******************************************************************************/
void UART_DisableBRT(void)
{
	BRTCON &= ~(UART_BRTCON_BRTEN_Msk);
}






