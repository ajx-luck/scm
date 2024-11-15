#ifndef __DRIVE_H__
#define	__DRIVE_H__

#include 	<cms.h>
#include 	"main.h"
#include 	"delay.h"
#include 	"mytype.h"
#include 	"WHQ_TP_ZPGS.h"
#include 	"WHQ_Sender.h"
/*****************************************
 * 函数定义区    ：
*****************************************/
void drive_data_init(void);//驱动变量初始化
void register_init(void);  //寄存器初始化
void Sys_set(void);//寄存器刷新
void led_drive(void);//led驱动
/*****************************************
 * 变量定义    ：
*****************************************/

//定时相关
extern u8  time_10ms_flg;
extern u8  fog_time_5ms_flg;

//LED驱动
extern u8  led_drive_cnt;
extern u8  ledr_pecent;
extern u8  ledg_pecent;
extern u8  ledb_pecent;

//雾化驱动
extern u8  fog_drive_mod;

/*****************************************/

#endif	/* __DRIVE_H__ */