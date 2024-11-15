#ifndef __DRIVE_H__
#define	__DRIVE_H__

#include 	<cms.h>
#include 	"main.h"
#include 	"delay.h"
#include 	"mytype.h"
#include 	"WHQ_TP_ZPGS.h"
#include 	"WHQ_Sender.h"
/*****************************************
 * ����������    ��
*****************************************/
void drive_data_init(void);//����������ʼ��
void register_init(void);  //�Ĵ�����ʼ��
void Sys_set(void);//�Ĵ���ˢ��
void led_drive(void);//led����
/*****************************************
 * ��������    ��
*****************************************/

//��ʱ���
extern u8  time_10ms_flg;
extern u8  fog_time_5ms_flg;

//LED����
extern u8  led_drive_cnt;
extern u8  ledr_pecent;
extern u8  ledg_pecent;
extern u8  ledb_pecent;

//������
extern u8  fog_drive_mod;

/*****************************************/

#endif	/* __DRIVE_H__ */