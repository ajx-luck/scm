#ifndef __KEY_H
#define __KEY_H

#include "system.h"

#define KEY1   	PCin(0)
#define KEY2	PCin(1)
#define KEY3	PCin(2)
#define KEY4	PCin(3)

void KEY_INIT(void);
u8 KEY_VAL(void);
void VSP_PRO(void);

extern u16 key_cont;

#endif





