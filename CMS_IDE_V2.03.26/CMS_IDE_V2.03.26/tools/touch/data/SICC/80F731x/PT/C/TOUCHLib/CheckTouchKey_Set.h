#ifndef	_CHECKTOUCHKEY_SET_H_
#define	_CHECKTOUCHKEY_SET_H_
/****************************************************************************/
/** \file CheckTouchKey_Set_80F73xx.h
**	History:
*****************************************************************************/
/****************************************************************************/
/*	include files
*****************************************************************************/
#include "CheckTouchKeyConst_80F73xx.h"
/****************************************************************************
*****************************************************************************/
//debug��أ�����debug��Ҫע�͵���Lib�ļ�����CheckTouchKey_80F73xx,ʡ�ռ�
//#define CMS_TOUCH_DEBUG


//ʹ��ʱ����ʵ��Ӳ�������޸��������������������
//�������ͨ������,��ֵΪC_KCHS0��C_KCHS19,C_KCHS39��C_KCHS44
//ֻѡǰC_KEY_TOTAL������ͨ��
#define C_KEY1_CH		C_KCHS16
#define C_KEY2_CH		C_KCHS15
#define C_KEY3_CH		C_KCHS18
#define C_KEY4_CH		C_KCHS17
#define C_KEY5_CH		C_KCHS4
#define C_KEY6_CH		C_KCHS5
#define C_KEY7_CH		C_KCHS6
#define C_KEY8_CH		C_KCHS7
#define C_KEY9_CH		C_KCHS8
#define C_KEY10_CH	C_KCHS9
#define C_KEY11_CH	C_KCHS10
#define C_KEY12_CH	C_KCHS11
#define C_KEY13_CH	C_KCHS12
#define C_KEY14_CH	C_KCHS13
#define C_KEY15_CH	C_KCHS14
#define C_KEY16_CH	C_KCHS15
#define C_KEY17_CH	C_KCHS16
#define C_KEY18_CH	C_KCHS17
#define C_KEY19_CH	C_KCHS18
#define C_KEY20_CH	C_KCHS19
#define C_KEY21_CH	C_KCHS39
#define C_KEY22_CH	C_KCHS40
#define C_KEY23_CH	C_KCHS41
#define C_KEY24_CH	C_KCHS42
#define C_KEY25_CH	C_KCHS43
#define C_KEY26_CH	C_KCHS44

//�������������ó���20~2047
#define	C_KEY1_THRESHOLD	100
#define	C_KEY2_THRESHOLD	100
#define	C_KEY3_THRESHOLD	100
#define	C_KEY4_THRESHOLD	100
#define	C_KEY5_THRESHOLD	100
#define	C_KEY6_THRESHOLD	100
#define	C_KEY7_THRESHOLD	100
#define	C_KEY8_THRESHOLD	100
#define	C_KEY9_THRESHOLD	100
#define	C_KEY10_THRESHOLD	100
#define	C_KEY11_THRESHOLD	100
#define	C_KEY12_THRESHOLD	100
#define	C_KEY13_THRESHOLD	100
#define	C_KEY14_THRESHOLD	100
#define	C_KEY15_THRESHOLD	100
#define	C_KEY16_THRESHOLD	100
#define	C_KEY17_THRESHOLD	100
#define	C_KEY18_THRESHOLD	100
#define	C_KEY19_THRESHOLD	100
#define	C_KEY20_THRESHOLD	100
#define	C_KEY21_THRESHOLD	100
#define	C_KEY22_THRESHOLD	100
#define	C_KEY23_THRESHOLD	100
#define	C_KEY24_THRESHOLD	100
#define	C_KEY25_THRESHOLD	100
#define	C_KEY26_THRESHOLD	100

//�ڲ���������ѡ���������������ߣ��������Ϊ0���ʵ�������ߵ�ֵ����Χ:C_KCAP0��C_KCAP7
#define	C_KEY1_CAP	C_KCAP0
#define	C_KEY2_CAP	C_KCAP0
#define	C_KEY3_CAP	C_KCAP0
#define	C_KEY4_CAP	C_KCAP0
#define	C_KEY5_CAP	C_KCAP0
#define	C_KEY6_CAP	C_KCAP0
#define	C_KEY7_CAP	C_KCAP0
#define	C_KEY8_CAP	C_KCAP0
#define	C_KEY9_CAP	C_KCAP0
#define	C_KEY10_CAP	C_KCAP0
#define	C_KEY11_CAP	C_KCAP0
#define	C_KEY12_CAP	C_KCAP0
#define	C_KEY13_CAP	C_KCAP0
#define	C_KEY14_CAP	C_KCAP0
#define	C_KEY15_CAP	C_KCAP0
#define	C_KEY16_CAP	C_KCAP0
#define	C_KEY17_CAP	C_KCAP0
#define	C_KEY18_CAP	C_KCAP0
#define	C_KEY19_CAP	C_KCAP0
#define	C_KEY20_CAP	C_KCAP0
#define	C_KEY21_CAP	C_KCAP0
#define	C_KEY22_CAP	C_KCAP0
#define	C_KEY23_CAP	C_KCAP0
#define	C_KEY24_CAP	C_KCAP0
#define	C_KEY25_CAP	C_KCAP0
#define	C_KEY26_CAP	C_KCAP0

/*
���津��Ч����������
*/
//����ⰴ������,����
#define 	C_KEY_TOTAL				4//��Χ1~26

//����������������
#define		C_KEY_SHAKE				2//2~7

//�����ſ���������
#define		C_KEY_OFFSHAKE		2//2~7

//������ֵ
#define		VOL_VALUE					30			//�޸����µ����������ֵ*2,��Χ20~127

//����ֵ
#define		SLU_VALUE					15			//��ָ���ºͷſ��л�������ֵ,��ֵ��С�ڵ���VOL_VALUE/2,��Χ1~127

//������׼ֵ������������
#define		CM_BASE						10			//����ʱ��ԼΪ(���������ʱ��2.5ms + ��������*1.5) * CM_BASE,��Χ6~127

//ͬʱ���������Ч������,������ֵ����Ϊ�Ǹ���
#define		C_VALID_KEY				2//��Χ1~25

//�������������Чʱ��,��ɨ��ʱ�䣨����5ms��Ϊ��׼����,Ϊ0ʱ������,0~65535
#define		C_VALID_TIME			(1000/5)*20//20S

//���������ж��쳣����ʱ��,��ɨ��ʱ�䣨����5ms��Ϊ��׼����,Ϊ0ʱ������,20~255
#define		C_UN_TIME					200/5		//200ms(�Դ���ɨ������5ms������)

//�����ȵ�λ
#define 	LMDVALUE					1//1~2,Խ��Խ����,Ϊ2ʱע������ֵ�����Ƿ����

//��ˮģʽ����
//0:��ʹ�ܣ���ϼ�ģʽ
//1:ʹ�ܣ���ˮģʽ
#define		WATER_MODE				0



/*-------------------------------------------------------
��������ͨ������²����޸�
-------------------------------------------------------*/
//�쳣�ж�ʹ�ܣ���TKֵ�쳣���½�������Ӧ
#define		UNNOL_CHECK		1//0~1
//�쳣�ж��Իָ��������������ٽ����Իָ������ó�255��Ϊ���޴�
#define		UNNOL_TIMES		100//1~100

//����ѹ
#define 	KEY_LDOSEL		3//0~7

//�ڲ�������
#define		KEY_EN1KRES		0//0~1

//Debug���
#ifdef	CMS_TOUCH_DEBUG
extern unsigned int xdata g_FactorRawDat[];
extern unsigned int xdata g_Disp_KeyDown[];
extern unsigned int xdata g_NoiseDat[];
#endif
/*-------------------------------------------------------
-------------------------------------------------------*/
extern unsigned char code Table_KeyChannel[];
extern unsigned int code Table_KeyDown[];
extern unsigned char code Table_KeyCap[];
//��startup.a51��û�ж�xdata�����ϵ���0�����ã���˲���xdata��Ҫ�ϵ������0
extern unsigned int xdata g_CMS_RAM0[];
extern unsigned int xdata g_CMS_RAM1[];
extern unsigned int xdata g_CMS_RAM2[];
extern unsigned char xdata g_CMS_RAM3[];
extern unsigned char xdata g_CMS_RAM4[];
extern unsigned char xdata g_CMS_RAM5[];
extern unsigned char xdata g_CMS_RAM6[];
extern unsigned char xdata g_CMS_RAM7[];
extern unsigned char xdata g_CMS_RAM8[];

extern unsigned char code g__KeyTotalNumber;
extern unsigned char code g__KeyShakeCounter;
extern unsigned char code g__KeyOffCounter;
extern unsigned char code g__VolValue;
extern unsigned char code g__SluValue;
extern unsigned char code g__CmBase;
extern unsigned char code g__KeyValidNumber;
extern unsigned long int  code g__KeyValidTime;
extern unsigned char code g__KeyUNTime;
extern unsigned char code g__UnNol_Check;
extern unsigned char code g__UnNol_Times;
extern unsigned char code g__LMDValue;
extern unsigned char code g__Key_LDOSel;
extern unsigned char code g__Key_En1kres;
extern unsigned char code g__WaterMode;





#endif//_CHECKTOUCHKEY_SET_H_




