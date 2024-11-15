/*

*/
#ifndef	_CHECKTOUCHKEY_H_
#define	_CHECKTOUCHKEY_H_

#include "TouchKeyConst.h"
#pragma warning disable 752,759
//�ӿں�������
extern void __CMS_CheckTouchKey(void);		//����ɨ�������̺���,������2.5ms~5ms�ڵ���
extern void __CMS_GetTouchKeyValue(void);//�˺��������жϣ������ж�ɨ��ʱ��125us
extern volatile bit b_kerr;				//��λ������־
extern volatile bit KeyOnceHave,KeyOnceOver;//���߻�����
//ÿ��������Ӧ�ڼĴ�����1��λ,�ɸ�����һһ��Ӧ
//KeyFlag[0]��Ӧ��Key8,...,Key2,Key1
//KeyFlag[1]��Ӧ��Key16,...,Key10,Key9
//������Чʱ��ӦλΪ1,��ЧʱΪ0
extern volatile unsigned char KeyFlag[2];

//ͬʱ���������Ч������,������ֵ����Ϊ�Ǹ���
#define		C_VALID_KEY		2

//�������������Чʱ��,��ɨ��ʱ�䣨����5ms��Ϊ��׼����,Ϊ0ʱ������
#define		C_VALID_TIME	(1000/5)*20

//����������������C_KEY_SHAKE
#define		C_KEY_SHAKE		2

//�����ſ���������C_OFF_SHAKE
#define		C_OFF_SHAKE		2

//����ⰴ������,����
#define 	C_KEY_TOTAL		4//����������

//�ڲ��Ƚ����ο���ѹ�趨,������ֵ��ѡȡ
//C_KVREF_04	=>	0.4VDD
//C_KVREF_05	=>	0.5VDD
//C_KVREF_06	=>	0.6VDD
//C_KVREF_07	=>	0.7VDD
#define		C_KVREF			C_KVREF_05

//������ֵ
#define		VOL_VALUE		20			//�޸����µ����������ֵ*2,ȡֵ��Χ20~128

//����ֵ
#define		SLU_VALUE		8			//��ָ���ºͷſ��л�������ֵ,��ֵ��С�ڵ���VOL_VALUE

//������׼ֵ������������
#define		CM_BASE			6			//����ʱ��ԼΪ(���������ʱ��4ms + (��������+1)*1.5) * 2 * CM_BASE

//ʹ��ʱ����ʵ��Ӳ�������޸��������������������
//ע������Ĵ�С����С�ڼ��İ�������

//���ͨ���趨,ΪC_KCHS0��C_KCHS15����֮һ
const unsigned char Table_KeyChannel[] = {

};

//�ڲ���������ѡ���������������ߣ��������Ϊ0���ʵ�������ߵ�ֵ����Χ:C_KCAP0��C_KCAP7
const unsigned char Table_KeyCap[] = {

};

//�½���Ч����ѡ��,���������ߺ�����������������Ȳ���,�趨ֵ���ɵ���6
const unsigned char Table_KeyDown[] = {

};

/***********************************************************
���������һ�������Ĭ�ϼ���
***********************************************************/
//����������ʹ��
#define		HIGHSENSITIVE	1

//����λ��
#define		C_FACTOR		1024		//1024/2048

////���������˲�����
#define		CM_LVBO			5			//0~7

#define		LV_MODE			1			//0\1
#define		LV_TIME			0			//0\1

#define 	Real_TOTAL		C_KEY_TOTAL + 1

const unsigned int  KeyValidTime = C_VALID_TIME;
const unsigned char KeyTotalNumber = Real_TOTAL;
const unsigned char KeyShakeCounter = C_KEY_SHAKE;
const unsigned char OffShakeCounter = C_OFF_SHAKE;
const unsigned char KeyValidNumber = C_VALID_KEY;
const unsigned char VolValue = VOL_VALUE;
const unsigned char SluValue = SLU_VALUE;
const unsigned char CmBase = CM_BASE;

const unsigned char HighSensitive = HIGHSENSITIVE;
const unsigned int CFactor = C_FACTOR;
const unsigned char CMLvbo = CM_LVBO;
const unsigned char LVMode = LV_MODE;
const unsigned char LVTime = LV_TIME;

unsigned int NoiseDat[C_KEY_TOTAL];
unsigned int FactorRawDat[C_KEY_TOTAL];
unsigned int KeyBase[C_KEY_TOTAL];


#endif





