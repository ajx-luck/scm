#ifndef _led_H
#define _led_H

#include "system.h"
void ns_delay(u16 ns);
/*  LED时钟端口、引脚定义 */
#define   	DIN	        PAout(1) 					
#define   	LED1	        PBout(0) 

#define send_low  		DIN = 1;__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();DIN = 0;ns_delay(2);
#define send_high   	DIN = 1;ns_delay(2);__nop();__nop();__nop();__nop();DIN = 0;__nop();__nop();__nop();__nop();__nop();__nop();__nop();
#define send_rst		DIN = 0;
void LED_Init(void);
void led_rgb_pro(void);
void SEND_LED(void);
#endif
