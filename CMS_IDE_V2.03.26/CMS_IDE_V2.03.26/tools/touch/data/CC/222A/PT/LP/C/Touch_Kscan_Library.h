#ifndef	_CHECKTOUCHKEY_H_
#define	_CHECKTOUCHKEY_H_

#include "TouchKeyConst.h"
#pragma warning disable 752,759
//�ӿں�������
extern void CheckTouchKey(void);		//����ɨ�������̺���,������2.5ms~5ms�ڵ���
extern volatile bit b_kerr;				//��λ������־
extern volatile bit KeyOnceOver,KeyOnceHave,KeySleepStr;//���߻�����
//KeyOnceHave = 1˵���а�����оƬ����
//������ʱKeySleepStr = 1�����Ѻ�KeySleepStr = 0;Ϊ1ʱִ��CheckTouchKey������оƬִ�д������ʱ��

//ÿ��������Ӧ�ڼĴ�����1��λ,�ɸ�����һһ��Ӧ
//KeyFlag[0]��Ӧ��Key8,...,Key2,Key1
//KeyFlag[1]��Ӧ��Key12,...,Key10,Key9
//������Чʱ��ӦλΪ1,��ЧʱΪ0
extern volatile unsigned char KeyFlag[2];

//��ˮģʽѡ��,��������Ϊ��ϼ�ģʽ
#define 	WaterMode

//ͬʱ���������Ч������,������ֵ����Ϊ�Ǹ���,��Χ1~12
#define		C_VALID_KEY		3

//�������������Чʱ��,��ɨ��ʱ�䣨����4ms��Ϊ��׼����,Ϊ0ʱ������,��Χ0~65535
#define		C_VALID_TIME	(1000/4)*20

//����������������
#define		C_KEY_SHAKE		2//2~8

//����ⰴ������,����
#define 	C_KEY_TOTAL		2//����������,��Χ1~12

//�ڲ��Ƚ����ο���ѹ�趨,������ֵ��ѡȡ
//C_KVREF_04	=>	0.4VDD
//C_KVREF_05	=>	0.5VDD
//C_KVREF_06	=>	0.6VDD
//C_KVREF_07	=>	0.7VDD
#define		C_KVREF			C_KVREF_05

//ת��ʱ���趨,������ֵ��ѡȡ
//C_KCLK_SYS2	=>	ϵͳʱ�ӵ�2��Ƶ
//C_KCLK_SYS4	=>	ϵͳʱ�ӵ�4��Ƶ
#define		C_KCLK			C_KCLK_SYS4

//������ֵ
#define		VOL_VALUE		25//�޸����µ����������ֵ*2��25~127

//������׼ֵ������������
#define		CM_BASE			4//����ʱ��ԼΪ��������4ms��������ʱ������4ms��*��������*CM_BASE,��Χ5~255

//��Ƶʹ�ܣ�ʹ�ܺ���ѡC_KCLK_SYS2
//0���ر�
//1������
#define		C_TP_EN			0//3.5V���¹�������λ��Ϊ0

//ʹ��ʱ����ʵ��Ӳ�������޸��������������������
//ע������Ĵ�С����С�ڼ��İ�������

//���ͨ���趨,ΪC_KCHS1��C_KCHS12����֮һ
const unsigned char Table_KeyChannel[] = {

};

//�ڲ���������ѡ���������������ߣ��������Ϊ0���ʵ�������ߵ�ֵ����Χ:C_KCAP0��C_KCAP7
const unsigned char Table_KeyCap[] = {

};

//�½���Ч����ѡ��,���������ߺ�����������������Ȳ���,�趨ֵ���ɵ���6,���ܴ���255
//��������ֵ
const unsigned char Table_KeyDown[] = {

};

/***********************************************************
���������һ������²����޸�
***********************************************************/
//����������ʹ��
//0��ʹ��
//1ʹ��
#define		HIGHSENSITIVE	1

//���������˲�����
#define		CM_LVBO			5			//0~7

#define		LV_MODE			1			//0\1
#define		TK_MODE			2			//1\2\3




/***********************************************************
��������������޸�
***********************************************************/
unsigned int  KeyResSum[C_KEY_TOTAL];
unsigned int  KeyOldValue0[C_KEY_TOTAL];
unsigned int  KeyOldValue1[C_KEY_TOTAL];
unsigned int  KeyOldValue2[C_KEY_TOTAL];
unsigned int  KeyReference[C_KEY_TOTAL];
unsigned char KeyUpShake[C_KEY_TOTAL];

const unsigned int  KeyValidTime = C_VALID_TIME;
const unsigned char KeyTotalNumber = C_KEY_TOTAL;
const unsigned char KeyShakeCounter = C_KEY_SHAKE;
const unsigned char KeyValidNumber = C_VALID_KEY;
const unsigned char C_Tp_En = C_TP_EN;

const unsigned char VolValue = VOL_VALUE;
const unsigned char CmBase = CM_BASE;
const unsigned char HighSensitive = HIGHSENSITIVE;
const unsigned char CMLvbo = CM_LVBO;
const unsigned char LVMode = LV_MODE;
const unsigned char TKMode = TK_MODE;

#ifdef	WaterMode
const unsigned char WaterModeSel = 1;
#else
const unsigned char WaterModeSel = 0;
#endif

unsigned int FactorRawDat[C_KEY_TOTAL];
unsigned int Disp_KeyDown[C_KEY_TOTAL];
unsigned int NoiseDat[C_KEY_TOTAL];

#endif





