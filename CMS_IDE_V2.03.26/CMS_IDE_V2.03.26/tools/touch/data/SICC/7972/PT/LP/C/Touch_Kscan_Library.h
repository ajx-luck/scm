/*

*/
#ifndef	_CHECKTOUCHKEY_H_
#define	_CHECKTOUCHKEY_H_

#include "TouchKeyConst.h"
#pragma warning disable 752,759
//�ӿں�������
extern void __CMS_CheckTouchKey(void);//����ɨ�������̺���,������2.5ms~5ms�ڵ���
extern void __CMS_CheckTouchKey_SL(void);//����ʱ���ü�ɨ�躯��
extern void __CMS_GetTouchKeyValue(void);//�˺��������жϣ������ж�ɨ��ʱ��125us
extern volatile bit _CMS_b_kerr;				//��λ������־
extern volatile bit _CMS_KeyOnceHave,_CMS_KeyOnceOver;
extern volatile bit _CMS_SleepTimeOnf;
//ÿ��������Ӧ�ڼĴ�����1��λ,�ɸ�����һһ��Ӧ
//_CMS_KeyFlag[0]��Ӧ��Key8,...,Key2,Key1
//_CMS_KeyFlag[1]��Ӧ��Key14,...,Key10,Key9
//������Чʱ��ӦλΪ1,��ЧʱΪ0
extern volatile unsigned char _CMS_KeyFlag[2];
//-------------------------------------------------------
//ʹ��ʱ����ʵ��Ӳ�������޸��������������������
//ע������Ĵ�С����С�ڼ��İ�������

//���ͨ���趨,ΪC_KCHS0��C_KCHS17����֮һ
const unsigned char _CMS_Table_KeyChannel[] = {

};

//��ͨ������������ֵ,�趨ֵ���ɵ���20,���ܴ���1023
const unsigned int _CMS_Table_KeyDown[] = {

};

//-------------------------------------------------------
//-------------------------------------------------------
//-------------------------------------------------------
/*
���津��Ч����������
*/
//����ⰴ������,����
#define 	C_KEY_TOTAL		6//1~14,���֧��14ͨ��

//����������������
#define		C_KEY_SHAKE		2//2~8

//�����ſ���������
#define		C_KEY_OFFSHAKE	2//2~8

//������ֵ
#define		VOL_VALUE		25//�޸����µ����������ֵ*2,��Χ25~127

//����ֵ
#define		SLU_VALUE		12//��ָ���ºͷſ��л�������ֵ,��ֵ��С�ڵ���VOL_VALUE/2,��Χ1~127

//������׼ֵ������������
#define		CM_BASE			10//����ʱ��ԼΪ(���������ʱ��4ms + ��������*1.5) * CM_BASE,��Χ6~127

//ͬʱ���������Ч������,������ֵ����Ϊ�Ǹ���
#define		C_VALID_KEY		2//��Χ1~16

//�������������Чʱ��,��ɨ��ʱ�䣨����5ms��Ϊ��׼����,Ϊ0ʱ������,��Χ0~65535
#define		C_VALID_TIME	((1000/5)*20)//20S

//�����ȵ�λ
#define 	LMDVALUE		1//0~1,Խ��Լ����,Ϊ1ʱע������ֵ�Լ�������׼ֵ

//�ڲ�������
#define		KEY_EN1KRES		0//0~1



//����ģʽʹ�ܰ���
#define		KEY_SLEN0		0x3c//������1,bit0~bit7�ֱ��ӦоƬ�ܽ���TK0~TK7��������Ӧλ��1ʹ��
#define		KEY_SLEN1		0x06//������2,bit0~bit7�ֱ��ӦоƬ�ܽ���TK8~TK15��������Ӧλ��1ʹ��

//����ʱ�䵲λ�趨0~3,��λԽ����ʱ��Խ��,��λԽ������Ӧ�����ٶ�Խ��
#define		KEY_UPTIME		1

//���߰�����������ֵ,�ܹ�����ͨ��,�趨ֵ���ɵ���20,���ܴ���1023
const unsigned int _CMS_Table_KeySLDown[] = {

};//�����鳤�Ȳ��ܸ���


/*-------------------------------------------------------
��������ͨ������²����޸�
-------------------------------------------------------*/
//�쳣�ж�ʹ�ܣ���TKֵ�쳣���½�������Ӧ
#define		UNNOL_CHECK		1//0~1
//�쳣�ж��Իָ��������������ٽ����Իָ�����Ϊ255��û�д�������
#define		UNNOL_TIMES		100//1~100

//��Ƶʹ��
//0���ر�
//1�����������Ͷ���ɧ��
#define		C_TP_EN			0//0��1

//����ѹ
#define 	KEY_LDOSEL		0//0~7

//�������Ƶ��
#define 	KEY_FRE			2//1~3
/***********************************************************
��������������޸�
***********************************************************/
#if KEY_SLEN0 != 0
	#define 	_CMS_KEY_SL_NUM0	1
#else
	#define 	_CMS_KEY_SL_NUM0	0
#endif

#if KEY_SLEN1 != 0
	#define 	_CMS_KEY_SL_NUM1	1
#else
	#define 	_CMS_KEY_SL_NUM1	0
#endif


#define		KEY_REALNUM		(C_KEY_TOTAL+_CMS_KEY_SL_NUM0+_CMS_KEY_SL_NUM1)

unsigned char _CMS_KeyNosieC[KEY_REALNUM];

const unsigned char _CMS_KeyNumber = C_KEY_TOTAL;
const unsigned char _CMS_KeyTNumber = KEY_REALNUM;
const unsigned char _CMS_KeyShakeC = C_KEY_SHAKE;
const unsigned char _CMS_KeyOffC = C_KEY_OFFSHAKE;
const unsigned char _CMS_VolValue = VOL_VALUE;
const unsigned char _CMS_SluValue = SLU_VALUE;
const unsigned char _CMS_CmBase = CM_BASE;
const unsigned char _CMS_KeyValidC = C_VALID_KEY;
const unsigned int  _CMS_KeyValidT  = C_VALID_TIME;
const unsigned char _CMS_KEYUPTime = KEY_UPTIME;
//-------------------------------------------------------
const unsigned char _CMS_UnNolCheck = UNNOL_CHECK;
const unsigned char _CMS_UnNolTimes = UNNOL_TIMES;
const unsigned char _CMS_TpEn = C_TP_EN;
const unsigned char _CMS_LMDValue = LMDVALUE;
const unsigned char _CMS_KeyLDOSel = KEY_LDOSEL;
const unsigned char _CMS_KeyFre = KEY_FRE;
const unsigned char _CMS_KeyEn1kres = KEY_EN1KRES;
#ifdef	KEY_SLEN0
const unsigned char _CMS_KeySLEn0 = KEY_SLEN0;
#else
const unsigned char _CMS_KeySLEn0 = 0;
#endif

#ifdef	KEY_SLEN1
const unsigned char _CMS_KeySLEn1 = KEY_SLEN1;
#else
const unsigned char _CMS_KeySLEn1 = 0;
#endif

unsigned int _CMS_DispKeyDown[KEY_REALNUM];//����������
unsigned int _CMS_NoiseDat[KEY_REALNUM];//����������
unsigned int _CMS_FactorRawDat[KEY_REALNUM];//����������
//--------------------------------------------------
#endif





