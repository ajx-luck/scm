#ifndef		_CONFIG_H_
#define		_CONFIG_H_

#include "cms8s6990.h"
#include "init.h"
#include "adc.h"
#include "button.h"
#include "vsp.h"
#include "bat.h"
#include "buzzer.h"
#include "motor.h"
#include "main.h"
#include "flash.h"
#include "uart.h"
#include <stdarg.h>
#include <string.h>
//#include "gpio.h"

#define		_nop_x		{_nop_();_nop_();_nop_();}
extern bit FRFlags  ;
extern bit F_HFlags  ;
extern bit F_V_ONoffFlags;
extern bit FRFlagslast  ;

#endif
