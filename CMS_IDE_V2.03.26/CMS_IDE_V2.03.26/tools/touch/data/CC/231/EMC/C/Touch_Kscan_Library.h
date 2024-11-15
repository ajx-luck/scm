/*
������������TMR0��������OPTION_REG�����TMR0
*/
#ifndef	_CHECKTOUCHKEY_H_
#define	_CHECKTOUCHKEY_H_

#include "TouchKeyConst.h"
#pragma warning disable 752,759
//�ӿں�������
extern void CheckTouchKey(void);		//����ɨ�������̺���,������2.5ms~5ms�ڵ���
extern volatile bit b_kerr;				//��λ������־
extern volatile bit KeyOnceHave,KeyOnceOver;//���߻�����
//ÿ��������Ӧ�ڼĴ�����1��λ,�ɸ�����һһ��Ӧ
//KeyFlag[0]��Ӧ��Key7,...,Key1,Key0
//KeyFlag[1]��Ӧ��Key15,...,Key9,Key8
//������Чʱ��ӦλΪ1,��ЧʱΪ0
extern volatile unsigned char KeyFlag[2];

//ͬʱ���������Ч������,������ֵ����Ϊ�Ǹ���
#define		C_VALID_KEY		2

//�������������Чʱ��,��ɨ��ʱ�䣨����5ms��Ϊ��׼����,Ϊ0ʱ������
#define		C_VALID_TIME	(1000/5)*20

//����������������C_KEY_SHAKE
#define		C_KEY_SHAKE		2

//����ⰴ������,����
#define 	C_KEY_TOTAL		1

//��Ƶʹ��
//0���ر�
//1������
#define		C_TP_EN			1

//�ڲ��Ƚ����ο���ѹ�趨,������ֵ��ѡȡ
//C_KVREF_04	=>	0.4VDD
//C_KVREF_05	=>	0.5VDD
//C_KVREF_06	=>	0.6VDD
//C_KVREF_07	=>	0.7VDD
#define		C_KVREF			C_KVREF_04

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

//������ֵ
#define		VOL_VALUE		5			//�޸����µ����������ֵ*2,ȡֵ��Χ5~128

//����ֵ
#define		SLU_VALUE		1			//��ָ���ºͷſ��л�������ֵ,��ֵ��С��VOL_VALUE



//������׼ֵ������������
#define		CM_BASE			6			//����ʱ��ԼΪ��������4ms��������ʱ������4ms��*��������*CM_BASE
/***********************************************************
��������������޸�
***********************************************************/
//
#define		C_OFF_SHAKE		2

unsigned int  KeySum0[C_KEY_TOTAL];
unsigned int  KeySum1[C_KEY_TOTAL];

//unsigned int  KeyOldValue0[C_KEY_TOTAL];
//unsigned int  KeyOldValue1[C_KEY_TOTAL];
unsigned int  KeyOldValue[C_KEY_TOTAL];
unsigned int  KeyReference[C_KEY_TOTAL];
unsigned char KeyUpShake[C_KEY_TOTAL];
unsigned char KeyBaseCnt[C_KEY_TOTAL];
unsigned char KeyHaveCnt[C_KEY_TOTAL];

const unsigned int  KeyValidTime = C_VALID_TIME;
const unsigned char KeyTotalNumber = C_KEY_TOTAL;
const unsigned char KeyShakeCounter = C_KEY_SHAKE;
const unsigned char OffShakeCounter = C_OFF_SHAKE;
const unsigned char KeyValidNumber = C_VALID_KEY;

const unsigned char VolValue = VOL_VALUE;
const unsigned char SluValue = SLU_VALUE;
const unsigned char CmBase = CM_BASE;
const unsigned char C_Tp_En = C_TP_EN;

#endif





