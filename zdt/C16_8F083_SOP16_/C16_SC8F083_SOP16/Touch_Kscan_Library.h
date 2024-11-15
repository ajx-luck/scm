//**********************************************************
//**********************************************************
//���ļ���SCTouch V1.15����
//�� �� ��:Touch_Kscan_Library.h
//����ʱ��:2024��10��31�� 14:52:49
//**********************************************************
//**********************************************************

#ifndef	_TOUCH_KSCAN_LIBRARY_H_
#define	_TOUCH_KSCAN_LIBRARY_H_

#pragma warning disable 752,759

#include	"TouchKeyConst.h"


//�ӿں�������
extern void CheckTouchKey(void);	//����ɨ�������̺���,������2.5ms~5ms�ڵ���
extern void SystemEnterSleep();			//���ú�ϵͳ��������״̬,�а�������ʱ������
extern volatile bit b_kerr;			//��λ������־,������1��������ȫ������

//ÿ��������Ӧ�ڼĴ�����1��λ,�ɸ�����һһ��Ӧ
//KeyFlag[0]��Ӧ��Key7,...,Key1,Key0
//KeyFlag[1]��Ӧ��Key15,...,Key9,Key8
//������Чʱ��ӦλΪ1,��ЧʱΪ0
extern volatile unsigned char KeyFlag[2];

//��ˮģʽѡ��,��������Ϊ��ϼ�ģʽ
#define		WaterMode

//ͬʱ���������Ч������,������ֵ����Ϊ�Ǹ���
#define		C_VALID_KEY		1

//�������������Чʱ��(��λ��ms),��4ms���û�׼����,Ϊ0ʱ������
#define		C_VALID_TIME	60*(1000/4)

//��������ʹ��(1��Ч),Bit0~Bit15�ֱ��ӦKEY1~KEY16
#define		C_KEY_WAKEUP	0x0003

//������������
#define		C_KEY_SHAKE		2

//����ⰴ������
#define		C_KEY_TOTAL		2

//�ڲ��Ƚ����ο���ѹ�趨,������ֵ��ѡȡ
//C_KVREF_04	=>	0.4VDD
//C_KVREF_05	=>	0.5VDD
//C_KVREF_06	=>	0.6VDD
//C_KVREF_07	=>	0.7VDD
#define		C_KVREF			C_KVREF_05

//ת��ʱ���趨,������ֵ��ѡȡ,����ѡ��4��Ƶ
//C_KCLK_SYS	=>	ϵͳʱ��
//C_KCLK_SYS2	=>	ϵͳʱ�ӵ�2��Ƶ
//C_KCLK_SYS4	=>	ϵͳʱ�ӵ�4��Ƶ
//C_KCLK_SYS8	=>	ϵͳʱ�ӵ�8��Ƶ
#define		C_KCLK			C_KCLK_SYS2


//���ͨ���趨,ΪC_KCHS0��C_KCHS15����֮һ
//δ�趨��ͨ��Ĭ��ΪC_KCHS0
const unsigned char Table_KeyChannel[] = {
	C_KCHS2,		//����1��Ӧ����ͨ��
	C_KCHS3			//����2��Ӧ����ͨ��
};

//�ڲ���������ѡ��,��������������,�������Ϊ0,�ʵ�������ߵ�ֵ,��Χ:C_KCAP0��C_KCAP7
const unsigned char Table_KeyCap[] = {
	C_KCAP0,		//����1�ڲ���������
	C_KCAP0			//����2�ڲ���������
};

//������ѡ��,���������ߺ�����������������Ȳ���,�趨ֵ���ɵ���5
const unsigned char Table_KeyDown[] = {
	10,				//����1�������趨ֵ
	10				//����2�������趨ֵ
};






/***********************************************************
��������������޸�
***********************************************************/
unsigned int KeyResSum[C_KEY_TOTAL];
unsigned int KeyOldValue0[C_KEY_TOTAL];
unsigned int KeyOldValue1[C_KEY_TOTAL];
unsigned int KeyOldValue2[C_KEY_TOTAL];
unsigned int KeyReference[C_KEY_TOTAL];
unsigned char KeyUpShake[C_KEY_TOTAL];

const unsigned int KeyValidTime = C_VALID_TIME;
const unsigned char KeyTotalNumber = C_KEY_TOTAL;
const unsigned char KeyShakeCounter = C_KEY_SHAKE;
const unsigned char KeyValidNumber = C_VALID_KEY;

const unsigned int  KeyWakeUpEn = C_KEY_WAKEUP;

#ifdef WaterMode
const unsigned char WaterModeSel = 1;
#else
const unsigned char WaterModeSel = 0;
#endif

#endif
