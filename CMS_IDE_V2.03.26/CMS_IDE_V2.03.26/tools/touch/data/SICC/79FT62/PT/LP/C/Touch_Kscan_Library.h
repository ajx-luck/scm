/*

*/
#ifndef	_CHECKTOUCHKEY_H_
#define	_CHECKTOUCHKEY_H_

#pragma warning disable 752,759
//�ӿں�������
extern void __CMS_CheckTouchKey(void);//����ɨ�������̺���,������2.5ms~5ms�ڵ���

extern volatile bit b_kerr;//��λ������־
extern volatile bit KeyOnceOver,KeyOnceHave,KeySleepStr;//���߻�����
//KeyOnceHave = 1˵���а�����оƬ����
//������ʱKeySleepStr = 1�����Ѻ�KeySleepStr = 0;Ϊ1ʱִ��__CMS_CheckTouchKey������оƬִ�д������ʱ��

//ÿ��������Ӧ�ڼĴ�����1��λ,�ɸ�����һһ��Ӧ
//KeyFlag[0]��Ӧ��Key8,...,Key2,Key1
//KeyFlag[1]��Ӧ��Key12,Key11,Key2,Key1
//������Чʱ��ӦλΪ1,��ЧʱΪ0
extern volatile unsigned char KeyFlag[2];
//-------------------------------------------------------
//ʹ��ʱ����ʵ��Ӳ�������޸��������������������

//���������ͨ����Ӧ�İ������(0x00~0x0B)��δʹ�õ�ͨ������Ϊ0x80
const unsigned char Table_KeyEnable[3][4] = {
	0x80,		//����ͨ��TK0,δʹ��
	0x80,		//����ͨ��TK1,δʹ��
	0x80,		//����ͨ��TK2,δʹ��
	0x80,		//����ͨ��TK3,δʹ��
	0x80,		//����ͨ��TK4,δʹ��
	0x80,		//����ͨ��TK5,δʹ��
	0x80,		//����ͨ��TK6,δʹ��
	0x80,		//����ͨ��TK7,δʹ��
	0x80,		//����ͨ��TK8,δʹ��
	0x80,		//����ͨ��TK9,δʹ��
	0x80,		//����ͨ��TK10,δʹ��
	0x80,		//����ͨ��TK11,δʹ��
};//�����鳤�Ȳ��ܸ�

//ÿ�������½���Ч����ѡ��,���������ߺ�����������������Ȳ���,�趨ֵ���ɵ���10,��Χ10~255
const unsigned char Table_KeyDown[] = {

};//�����鳤������ڵ���C_KEY_TOTAL��������
//-------------------------------------------------------
//-------------------------------------------------------
//-------------------------------------------------------
/*
���津��Ч����������
*/
//����ⰴ������,����
#define 	C_KEY_TOTAL		4//���12��������1~12

//ʹ�ܵİ���ͨ��
#define 	C_KEY_CHANNEL	0x0F00//ͨ��ʹ��,����ʵ��Ӧ�ñ�������,оƬ�ܽ��ϵ�TK0~TK11�ֱ��Ӧbit0~bit11

//��ˮģʽѡ��,��������Ϊ��ϼ�ģʽ
#define 	WaterMode

//ͬʱ���������Ч������,������ֵ����Ϊ�Ǹ���
#define		C_VALID_KEY		2//1~255

//�������������Чʱ��,��4msΪ��׼����,Ϊ0ʱ������
#define		C_VALID_TIME	(1000/4)*60//1~65535

//������������
#define		C_KEY_SHAKE		2//1~8



/***********************************************************
���������һ����������޸�
***********************************************************/
//���������ͨ�����ʱ��ѡ�� 160~240��ֵ��󣬼��ʱ��Խ�̣������仯��ԽС
const unsigned char Table_KeyTime[3][4] = {
	{215,215,215,215},
	{215,215,215,215},
	{215,215,215,215},
	//����ͨ��Key1���ʱ��ѡ��215
	//����ͨ��Key2���ʱ��ѡ��215
	//����ͨ��Key3���ʱ��ѡ��215
	//����ͨ��Key4���ʱ��ѡ��215
};//�����鳤�Ȳ��ܸ�


//�������Ƶ��ѡ��0~2,ԽС���ʱ��Խ������Ӧ�ٶ�Խ��������ɧ��ԽС
//����ѡ��1����2
#define		KEY_FRESET		2//0~2

//�������Ƶ��ģʽѡ��0~3
//Ĭ��3
#define		KEY_FREMODE		3//0~3

//��Ƶ
//0����ʹ��
//1��ʹ��
#define		KEY_FREDFEN		1//0~1
/***********************************************************
��������������޸�
***********************************************************/
unsigned int  KeyResSum[C_KEY_TOTAL];
unsigned int  KeyOldValue0[C_KEY_TOTAL];
unsigned int  KeyOldValue1[C_KEY_TOTAL];
unsigned int  KeyOldValue2[C_KEY_TOTAL];
unsigned int  KeyReference[C_KEY_TOTAL];
unsigned char KeyUpShake[C_KEY_TOTAL];

const unsigned int KeyChannelSel = C_KEY_CHANNEL;
const unsigned int KeyValidTime = C_VALID_TIME;
const unsigned char KeyTotalNumber = C_KEY_TOTAL;
const unsigned char KeyShakeCounter = C_KEY_SHAKE;
const unsigned char KeyValidNumber = C_VALID_KEY;
const unsigned char KeyFreSet = KEY_FRESET;
const unsigned char KeyFreMode = KEY_FREMODE;
const unsigned char KeyFreDFEN = KEY_FREDFEN;
#ifdef	WaterMode
const unsigned char WaterModeSel = 1;
#else
const unsigned char WaterModeSel = 0;
#endif


unsigned int Disp_KeyDown[C_KEY_TOTAL];
unsigned int NoiseDat[C_KEY_TOTAL];
unsigned int FactorRawDat[C_KEY_TOTAL];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
#endif





