#ifndef	_TOUCH_KSCAN_LIBRARY_H_
#define	_TOUCH_KSCAN_LIBRARY_H_


#pragma warning disable 752,759

//�ӿں�������
extern void CheckTouchKey(void);	//����ɨ�������̺���,������2.5ms~5ms�ڵ���
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

//������������
#define		C_KEY_SHAKE		2

//����ⰴ������
#define		C_KEY_TOTAL		1

//ʹ�ܵİ���ͨ��
#define		C_KEY_CHANNEL	0x00

//���������ͨ����Ӧ�İ������,δʹ�õ�ͨ������Ϊ0x80
const unsigned char Table_KeyEnable[3][4] = {
	0x80,			//����ͨ��1����ⰴ��
	0x80,			//����ͨ��2����ⰴ��
	0x80,			//����ͨ��3����ⰴ��
	0x80,			//����ͨ��4����ⰴ��
	0x80,			//����ͨ��5����ⰴ��
	0x80,			//����ͨ��6����ⰴ��
	0x80,			//����ͨ��7����ⰴ��
	0x80,			//����ͨ��8����ⰴ��
	0x80,			//����ͨ��9����ⰴ��
	0x80,			//����ͨ��10����ⰴ��
	0x80,			//����ͨ��11����ⰴ��
	0x80			//����ͨ��12����ⰴ��
};

//������ѡ��,���������ߺ�����������������Ȳ���,�趨ֵ���ɵ���5
const unsigned char Table_KeyDown[] = {

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

const unsigned char KeyTimerWidth = 230;
const unsigned int KeyChannelSel = C_KEY_CHANNEL;
const unsigned int KeyValidTime = C_VALID_TIME;
const unsigned char KeyTotalNumber = C_KEY_TOTAL;
const unsigned char KeyShakeCounter = C_KEY_SHAKE;
const unsigned char KeyValidNumber = C_VALID_KEY;

#ifdef WaterMode
const unsigned char WaterModeSel = 1;
#else
const unsigned char WaterModeSel = 0;
#endif

#endif
