/*

*/
#ifndef	_CHECKTOUCHKEY_H_
#define	_CHECKTOUCHKEY_H_

#include "TouchKeyConst.h"
#pragma warning disable 752,759
//�ӿں�������������ɨ�������̺���,������2.5ms~5ms�ڵ���,���ü������С��1ms
extern void __CMS_CheckTouchKey(void);

//�˺����õ������жϣ��ⲿ����Ҫ���������ж�ʹ��λ��ע����Ҫ��PIR2��6λ��ע���ж����ȼ�����
extern void __CMS_TouchKeyValue(void);

extern volatile bit gf_kerr;				//��λ������־
//ÿ��������Ӧ�ڼĴ�����1��λ,�ɸ�����һһ��Ӧ
//g_KeyFlag[0]��Ӧ��Key8,...,Key2,Key1
//g_KeyFlag[1]��Ӧ��Key16,...,Key10,Key9
//������Чʱ��ӦλΪ1,��ЧʱΪ0
extern volatile unsigned char g_KeyFlag[2];
//-------------------------------------------------------
//ʹ��ʱ����ʵ��Ӳ�������޸��������������������
//ע������Ĵ�С����С�ڼ��İ�������

//���ͨ���趨,ΪC_KCHS0��C_KCHS25����֮һ
const unsigned char gc_Table_KeyChannel[] = {

};

//��������ֵ,�趨ֵ������VOL_VALUEֵ,���ܴ���1023
//������Ӧ��������Ϊ��ǰֵ���׼ֵ�Ĳ�ֵ����gc_Table_KeyDownֵ
const unsigned int gc_Table_KeyDown[] = {

};


//-------------------------------------------------------
//-------------------------------------------------------
//-------------------------------------------------------
/*
���津��Ч����������
*/
//����ⰴ������,����
#define 	C_KEY_TOTAL		4//1~16

//����������������
#define		C_KEY_SHAKE		3//2~6

//�����ſ���������
#define		C_KEY_OFFSHAKE	3//2~6

//������ֵ
//���ٴ������������ֵ*2
#define		VOL_VALUE		50//25~127

//����ֵ
//��ָ���ºͷſ��л�������ֵ,��ֵ��С�ڵ���VOL_VALUE/2
#define		SLU_VALUE		10//1~63

//������׼ֵ������������
//����ʱ��ԼΪ(���������ʱ��4ms + ��������*1.5) * CM_BASE * CM_TIME
#define		CM_BASE			6//4~127

//������׼ֵ���¼��ʱ��
#define		CM_TIME			3//1~127

//ͬʱ���������Ч������,������ֵ����Ϊ�Ǹ���
#define		C_VALID_KEY		2//1~16

//�������������Чʱ��,��ɨ��ʱ�䣨����4ms��Ϊ��׼����,Ϊ0ʱ������,(1000/4)*20=20S
#define		C_VALID_TIME	(1000/4)*20//0~65535



/*-------------------------------------------------------
��������ͨ������²����޸�
-------------------------------------------------------*/
//�����˲�ϵ��
//ԽС�����Ƶ�����˳�Խ�á���ӦԽ��,������������8ʱ,�������4
//Ϊ0�����˲�����
#define 	KEY_VOLLV		4//0~8

//�����ȵ�λ
//Խ��Խ����,Ϊ2ʱע������ֵ�Լ�������׼ֵ
#define 	LMDVALUE		1//1~2

//CSʹ��
//0����ʹ��
//1:��߶�̬���ܣ�����̬���ܿ��ܻή�ͣ�Ĭ�ϼ���
#define 	CS_FUN			0

//����ѹ
#define 	KEY_LDOSEL		3//0~7

//���Ƶ��
//0:���Ƶ�ʸߣ��ⲿ�����轨�鲻����1k
//1:���Ƶ�ʵͣ��ⲿ�����轨�鲻����2k
#define 	KEY_FRESEL		1//0~1

//���������˲�ϵ����0Ϊ��ʹ���˳�����
#define 	NOI_VALUE		2//0~2
/***********************************************************
��������������޸�
***********************************************************/
const unsigned char gc_KeyTNumber = C_KEY_TOTAL;
const unsigned char gc_KeyShakeC = C_KEY_SHAKE;
const unsigned char gc_KeyOffC = C_KEY_OFFSHAKE;
const unsigned char gc_VolValue = VOL_VALUE;
const unsigned char gc_SluValue = SLU_VALUE;
const unsigned char gc_CmBase = CM_BASE;
const unsigned char gc_CmTime = CM_TIME;
const unsigned char gc_KeyValidC = C_VALID_KEY;
const unsigned int  gc_KeyValidT = C_VALID_TIME;
//-------------------------------------------------------
const unsigned char gc_Key_VolLV = KEY_VOLLV;
const unsigned char gc_LMDValue = LMDVALUE;
const unsigned char gc_CSFun = CS_FUN;
const unsigned char gc_KeyLDOSel = KEY_LDOSEL;
const unsigned char gc_KeyFreSel = KEY_FRESEL;
const unsigned char gc_NoiValue = NOI_VALUE;

unsigned int g_DispKeyDown[C_KEY_TOTAL];
unsigned int g_NoiseDat[C_KEY_TOTAL];
unsigned int g_FactorRawDat[C_KEY_TOTAL];
//--------------------------------------------------
#endif





