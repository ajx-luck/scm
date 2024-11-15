
#ifndef	_CHECKTOUCHKEY_H_
#define	_CHECKTOUCHKEY_H_
#include "TouchKeyConst.h"

#pragma warning disable 752,759

//�ӿں�������
extern void __CMS_CheckTouchKey(void);		//����ɨ�������̺���,������2.5ms~5ms�ڵ���
extern volatile bit _CMS_b_kerr;				//��λ������־

//ÿ��������Ӧ�ڼĴ�����1��λ,�ɸ�����һһ��Ӧ
//_CMS_KeyFlag[0]��Ӧ��Key7,...,Key1,Key0
//_CMS_KeyFlag[1]��Ӧ��Key15,...,Key9,Key8
//������Чʱ��ӦλΪ1,��ЧʱΪ0
extern volatile unsigned char _CMS_KeyFlag[2];

//��ˮģʽѡ��,��������Ϊ��ϼ�ģʽ
//#define 	WaterMode

//ͬʱ���������Ч������,������ֵ����Ϊ�Ǹ���
#define		C_VALID_KEY		4//1~16

//�������������Чʱ��,��4msΪ��׼����,Ϊ0ʱ������
#define		C_VALID_TIME	(1000/4)*60 //0~65535

//������������
#define		C_KEY_SHAKE		2 //0~7

//����ⰴ������,����
#define 	C_KEY_TOTAL		4 //1~16

//�ڲ��Ƚ����ο���ѹ�趨,������ֵ��ѡȡ
//_CMS_KVREF_04	=>	0.4VDD
//_CMS_KVREF_05	=>	0.5VDD
//_CMS_KVREF_06	=>	0.6VDD
//_CMS_KVREF_07	=>	0.7VDD
#define		C_KVREF			C_KVREF_05

//ת��ʱ���趨,������ֵ��ѡȡ
//C_KCLK_SYS2	=>	ϵͳʱ�ӵ�2��Ƶ
//C_KCLK_SYS4	=>	ϵͳʱ�ӵ�4��Ƶ
//C_KCLK_SYS8	=>	ϵͳʱ�ӵ�8��Ƶ
//ע�⣺1��5V����ʱ����INTRC_SEL��Ƶѡ��16M�����鴥��ת��ʱ��ѡ��8��Ƶ������ѡ��2��Ƶ
//		2��5V����ʱ����INTRC_SEL��Ƶѡ��8M�����鴥��ת��ʱ��ѡ��4��Ƶ/8��Ƶ
//		3��3V�����¹���ʱ������ת��ʱ����ѡ��8��Ƶ
#define		C_KCLK			C_KCLK_SYS8


//ʹ��ʱ����ʵ��Ӳ�������޸��������������������
//ע������Ĵ�С����С�ڼ��İ�������

//���ͨ���趨,Ϊ_CMS_KCHS0��_CMS_KCHS15����֮һ
const unsigned char _CMS_Table_KeyChannel[] = {

};

//�ڲ���������ѡ���������������ߣ��������Ϊ0���ʵ�������ߵ�ֵ����Χ:C_KCAP0��C_KCAP7
const unsigned char _CMS_Table_KeyCap[] = {

};

//�½���Ч����ѡ��,���������ߺ�����������������Ȳ���
//��������ʱ�趨ֵ���ɵ���6
//��������ʱ�趨ֵ���ɵ���20
const unsigned char _CMS_Table_KeyDown[] = {

};

//����������ʹ��
//1:ʹ��
//0:��ʹ��
#define		HIGHSENSITIVE		0





/***********************************************************
���������һ�㲻���޸�
***********************************************************/
//���������˲�����
#define		CM_LVBO			0 //0~7

/***********************************************************
��������������޸�
***********************************************************/
unsigned int  _CMS_KeyResSum[C_KEY_TOTAL];
unsigned int  _CMS_KeyOldValue0[C_KEY_TOTAL];
unsigned int  _CMS_KeyOldValue1[C_KEY_TOTAL];
unsigned int  _CMS_KeyOldValue2[C_KEY_TOTAL];
unsigned int  _CMS_KeyReference[C_KEY_TOTAL];
unsigned char _CMS_KeyUpShake[C_KEY_TOTAL];

const unsigned int  _CMS_KeyValidT = C_VALID_TIME;
const unsigned char _CMS_KeyTNumber = C_KEY_TOTAL;
const unsigned char _CMS_KeyShakeC = C_KEY_SHAKE;
const unsigned char _CMS_KeyCLK = C_KCLK;
const unsigned char _CMS_KeyValidC = C_VALID_KEY;
const unsigned char _CMS_HSens = HIGHSENSITIVE;
const unsigned char _CMS_Lb = CM_LVBO;

#ifdef	WaterMode
const unsigned char _CMS_WModeSel = 1;
#else
const unsigned char _CMS_WModeSel = 0;
#endif
#endif





