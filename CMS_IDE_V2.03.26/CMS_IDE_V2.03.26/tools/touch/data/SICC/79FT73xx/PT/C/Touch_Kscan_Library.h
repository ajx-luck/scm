/*

*/
#ifndef	_CHECKTOUCHKEY_H_
#define	_CHECKTOUCHKEY_H_

#include "TouchKeyConst.h"
#pragma warning disable 752,759
//�ӿں�������
extern void __CMS_CheckTouchKey(void);		//����ɨ�������̺���,������2.5ms~5ms�ڵ���
extern void __CMS_GetTouchKeyValue(void);//�˺��������жϣ������ж�ɨ��ʱ��125us
extern volatile bit _CMS_b_kerr;				//��λ������־
//ÿ��������Ӧ�ڼĴ�����1��λ,�ɸ�����һһ��Ӧ
//_CMS_KeyFlag[0]��Ӧ��Key8,...,Key2,Key1
//_CMS_KeyFlag[1]��Ӧ��Key16,...,Key10,Key9
//_CMS_KeyFlag[2]��Ӧ��Key20,Key19,Key18,Key17
//������Чʱ��ӦλΪ1,��ЧʱΪ0
extern volatile unsigned char _CMS_KeyFlag[3];
//-------------------------------------------------------
//ʹ��ʱ����ʵ��Ӳ�������޸��������������������
//ע������Ĵ�С����С�ڼ��İ�������

//���ͨ���趨,ΪC_KCHS0��C_KCHS25����֮һ
const unsigned char _CMS_Table_KeyChannel[] = {

};

//��������ֵ,�趨ֵ���ɵ���20,���ܴ���1023
//��������ֵ�趨�������������ֵVOL_VALUE
const unsigned int _CMS_Table_KeyDown[] = {

};

//-------------------------------------------------------
//-------------------------------------------------------
//-------------------------------------------------------
/*
���津��Ч����������
*/
//����ⰴ������,����
#define 	C_KEY_TOTAL		4//���֧��16ͨ��

//����������������
#define		C_KEY_SHAKE		2//2~8

//�����ſ���������
#define		C_KEY_OFFSHAKE	2//2~8

//������ֵ
#define		VOL_VALUE		25			//�޸����µ����������ֵ*2,��Χ20~127

//����ֵ
#define		SLU_VALUE		12			//��ָ���ºͷſ��л�������ֵ,��ֵ��С�ڵ���VOL_VALUE/2,��Χ1~127

//������׼ֵ������������
#define		CM_BASE			10			//����ʱ��ԼΪ(���������ʱ��4ms + ��������*1.5) * CM_BASE,��Χ6~127

//ͬʱ���������Ч������,������ֵ����Ϊ�Ǹ���,��Χ1~16
#define		C_VALID_KEY		2

//�������������Чʱ��,��ɨ��ʱ�䣨����4ms��Ϊ��׼����,Ϊ0ʱ������,��Χ0~65535
#define		C_VALID_TIME	(1000/4)*20//20S

//�����ȵ�λ
#define 	LMDVALUE		1//0~1,Խ��Խ����,Ϊ1ʱע������ֵ�Լ�������׼ֵ

//�ڲ�������
#define		KEY_EN1KRES		0//0~1






/*-------------------------------------------------------
��������ͨ������²����޸�
-------------------------------------------------------*/
//�쳣�ж�ʹ�ܣ���TKֵ�쳣���½�������Ӧ
#define		UNNOL_CHECK		1//0~1
//�쳣�ж��Իָ��������������ٽ����Իָ�
#define		UNNOL_TIMES		100//1~100

//����ѹ
#define 	KEY_LDOSEL		4//0~7

/***********************************************************
��������������޸�
***********************************************************/
const unsigned char _CMS_KeyTNumber = C_KEY_TOTAL;
const unsigned char _CMS_KeyShakeC = C_KEY_SHAKE;
const unsigned char _CMS_KeyOffC = C_KEY_OFFSHAKE;
const unsigned char _CMS_VolValue = VOL_VALUE;
const unsigned char _CMS_SluValue = SLU_VALUE;
const unsigned char _CMS_CmBase = CM_BASE;
const unsigned char _CMS_KeyValidC = C_VALID_KEY;
const unsigned int  _CMS_KeyValidT = C_VALID_TIME;
//-------------------------------------------------------
const unsigned char _CMS_UnNolCheck = UNNOL_CHECK;
const unsigned char _CMS_UnNolTimes = UNNOL_TIMES;
const unsigned char _CMS_LMDValue = LMDVALUE;
const unsigned char _CMS_KeyLDOSel = KEY_LDOSEL;
const unsigned char _CMS_KeyEn1kres = KEY_EN1KRES;

unsigned int _CMS_DispKeyDown[C_KEY_TOTAL];
unsigned int _CMS_NoiseDat[C_KEY_TOTAL];
unsigned int _CMS_FactorRawDat[C_KEY_TOTAL];
//--------------------------------------------------
#endif





