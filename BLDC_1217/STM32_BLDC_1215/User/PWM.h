#ifndef __PWM_H
#define __PWM_H

#include "system.h"
void GPIO_Configuration(void);
void TIM3_PWM_Configuration(void);
void HS_Init(void);
void PWM_Set(u16 Compare);
void TIM2_DownCounting_Configuration(void) ;
void TIM1_SetDutyCycle(uint8_t channel, uint16_t duty);
void TIM1_PWM_Configuration(void);
void TIM1_DisableAllOutputs(void);






#endif


