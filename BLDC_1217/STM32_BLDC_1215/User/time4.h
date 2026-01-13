
#ifndef _TIMER4_H
#define _TIMER4_H
#include "system.h"
#include "key.h"
void TIM4_ENABLE_10uS(void);
void TIM4_ENABLE_1MS(void);
extern u16 MotorRun_num;
extern u8 sys_1ms;
#include "motorrun.h"        //包含需要的头文件
#endif
