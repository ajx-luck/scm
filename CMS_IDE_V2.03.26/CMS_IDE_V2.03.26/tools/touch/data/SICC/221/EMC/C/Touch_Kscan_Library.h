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
//ÿ��������Ӧ�ڼĴ�����1��λ,�ɸ�����һһ��Ӧ
//KeyFlag[0]��Ӧ��Key8,...,Key2,Key1
//KeyFlag[1]��Ӧ��Key16,...,Key10,Key9
//������Чʱ��ӦλΪ1,��ЧʱΪ0
extern volatile unsigned char KeyFlag[2];
//-------------------------------------------------------
//ʹ��ʱ����ʵ��Ӳ�������޸��������������������
//ע������Ĵ�С����С�ڼ��İ�������

//���ͨ���趨,ΪC_KCHS0��C_KCHS15����֮һ
const unsigned char Table_KeyChannel[] = {

};

//��������ֵ1,,�趨ֵ���ɵ���20,���ܴ���1023
const unsigned int Table_KeyDown[] = {

};

//��������ֵ2,һ�����������ֵ1��𲻴�,,�趨ֵ���ɵ���20,���ܴ���1023
const unsigned int Table_KeyDown_Pro[] = {

};
//-------------------------------------------------------
//-------------------------------------------------------
//-------------------------------------------------------
/*
���津��Ч����������
*/
//����ⰴ������,����
#define 	C_KEY_TOTAL		4//���֧��16ͨ��

//����������������C_KEY_SHAKE
#define		C_KEY_SHAKE		2//1~8

//������ֵ
#define		VOL_VALUE		10			//�޸����µ����������ֵ*2,ȡֵ��Χ10~128

//����ֵ
#define		SLU_VALUE		10			//��ָ���ºͷſ��л�������ֵ,��ֵ��С�ڵ���VOL_VALUE

//������׼ֵ������������
#define		CM_BASE			10			//����ʱ��ԼΪ(���������ʱ��4ms*2 + ��������*1.5) * CM_BASE

//ͬʱ���������Ч������,������ֵ����Ϊ�Ǹ���
#define		C_VALID_KEY		2

//�������������Чʱ��,��ɨ��ʱ�䣨����5ms��Ϊ��׼����,Ϊ0ʱ������
#define		C_VALID_TIME	(1000/5)*20//20S

/*-------------------------------------------------------
��������ͨ������²����޸�
-------------------------------------------------------*/
//�쳣�ж�ʹ�ܣ���TKֵ�쳣���½�������Ӧ
#define		UNNOL_CHECK		1
//�쳣�ж��Իָ��������������ٽ����Իָ�
#define		UNNOL_TIMES		100

//��Ƶʹ��
//0���ر�
//1�����������Ͷ���ɧ��
#define		C_TP_EN			1

//������λ��
#define 	TK_TIME			TK_TIME3//0~7 (TK_TIME+8)λ

//����ѹ
#define 	KEY_LDOSEL		11//0~15
/***********************************************************
��������������޸�
***********************************************************/
unsigned char __CMS_CurStep[C_KEY_TOTAL];

const unsigned char KeyTotalNumber = C_KEY_TOTAL;
const unsigned char KeyShakeCounter = C_KEY_SHAKE;
const unsigned char VolValue = VOL_VALUE;
const unsigned char SluValue = SLU_VALUE;
const unsigned char CmBase = CM_BASE;
const unsigned char KeyValidNumber = C_VALID_KEY;
const unsigned int  KeyValidTime = C_VALID_TIME;
//-------------------------------------------------------
const unsigned char UnNol_Check = UNNOL_CHECK;
const unsigned char UnNol_Times = UNNOL_TIMES;
const unsigned char C_Tp_En = C_TP_EN;
const unsigned char TK_Time = TK_TIME;
const unsigned char Key_LDOSel = KEY_LDOSEL;

unsigned int Disp_KeyDown[C_KEY_TOTAL];//����������
unsigned int Disp_KeyDownPro[C_KEY_TOTAL];//����������
unsigned int NoiseDat[C_KEY_TOTAL];//����������
unsigned int FactorRawDat[C_KEY_TOTAL];//����������
//--------------------------------------------------
#endif





