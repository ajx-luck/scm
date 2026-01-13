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

/*****************************************************************************/
/** \file buzzer.h
**
** 
**
** History:
** 
*****************************************************************************/
#ifndef __BUZZER_H__
#define __BUZZER_H__
/*****************************************************************************/
/* Include files */
/*****************************************************************************/
#include "cms8m3510.h"
/*****************************************************************************/
/* Global pre-processor symbols/macros ('#define') */
/*****************************************************************************/
/*----------------------------------------------------------------------------
 **Buzzer 时钟固定分频比
/*---------------------------------------------------------------------------*/
#define		BUZ_CKS_8			(0x00)		
#define		BUZ_CKS_16			(0x01)
#define		BUZ_CKS_32			(0x02)
#define		BUZ_CKS_64			(0x03)


/****************************************************************************
 ** \brief	 BUZ_SET_DIV
 **			 选择频率
 ** \param [in] none
 ** \return  none
 ** \note	 
*****************************************************************************/
#define  BUZ_SET_DIV(CLKDiv)		((BUZDIV = CLKDiv))

/*****************************************************************************/
/* Global type definitions ('typedef') */
/*****************************************************************************/


/*****************************************************************************/
/* Global variable declarations ('extern', definition in C source) */
/*****************************************************************************/


/*****************************************************************************/
/* Global function prototypes ('extern', definition in C source) */
/*****************************************************************************/
/*****************************************************************************
 ** \brief	 BUZ_EnableBuzzer
 **			 开启蜂鸣器
 ** \param [in] none
 ** \return  none
 ** \note	 
*****************************************************************************/
void BUZ_EnableBuzzer(void);
/*****************************************************************************
 ** \brief	 BUZ_DisableBuzzer
 **			 关闭蜂鸣器
 ** \param [in] none
 ** \return  none
 ** \note	 
*****************************************************************************/
void BUZ_DisableBuzzer(void);

/*****************************************************************************
 ** \brief	 BUZ_ConfigBuzzer
 **			 配置蜂鸣器
 ** \param [in] BuzCKS：(1)BUZ_CKS_8
 **							  (2)BUZ_CKS_16
 **							  (3)BUZ_CKS_32
 **							  (4)BUZ_CKS_64
 **				CLKDiv: (1) 0x00   : Buzzer输出低电平
 **							   (2) 0x1~0xff 
 ** \return  none
 ** \note	 频率计算公式： Fbuz = Fsys/(2 * BuzCKS*CLKDiv)
*****************************************************************************/
void BUZ_ConfigBuzzer(uint8_t BuzCKS, uint8_t CLKDiv);








#endif /* __BUZZER_H__ */

