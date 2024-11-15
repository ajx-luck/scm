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
//KeyFlag��Ӧ��Key8,...,Key2,Key1
//������Чʱ��ӦλΪ1,��ЧʱΪ0
extern volatile unsigned char KeyFlag;
//-------------------------------------------------------
//ʹ��ʱ����ʵ��Ӳ�������޸��������������������

//���������ͨ����Ӧ�İ������(0x00~0x07)��δʹ�õ�ͨ������Ϊ0x80
const unsigned char Table_KeyEnable[2][4] = {
	0x80,
	0x80,
	0x80,
	0x80,
	0x80,
	0x80,
	0x80,
	0x80
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
#define 	C_KEY_TOTAL		4//���8��������1~8

//ʹ�ܵİ���ͨ��
#define 	C_KEY_CHANNEL	0x3c//ͨ��ʹ��,����ʵ��Ӧ�ñ�������,оƬ�ܽ��ϵ�TK0~TK7�ֱ��Ӧbit0~bit7

//��ˮģʽѡ��,��������Ϊ��ϼ�ģʽ
#define 	WaterMode

//ͬʱ���������Ч������,������ֵ����Ϊ�Ǹ���
#define		C_VALID_KEY		4//1~255

//�������������Чʱ��,��4msΪ��׼����,Ϊ0ʱ������
#define		C_VALID_TIME	(1000/4)*60//1~65535

//������������
#define		C_KEY_SHAKE		2//1~8



/***********************************************************
���������һ����������޸�
***********************************************************/
//���������ͨ�����ʱ��ѡ�� 160~240��ֵ��󣬼��ʱ��Խ�̣������仯��ԽС
const unsigned char Table_KeyTime[2][4] = {
	{220,220,220,220},
	{220,220,220,220},
	
	//����ͨ��Key0���ʱ��ѡ��220
	//����ͨ��Key1���ʱ��ѡ��220
	//����ͨ��Key2���ʱ��ѡ��220
	//����ͨ��Key3���ʱ��ѡ��220
};//�����鳤�Ȳ��ܸ�


//�������Ƶ��ѡ��0~3,ԽС���ʱ��Խ������Ӧ�ٶ�Խ��������ɧ��ԽС
//����ѡ��2����3
#define		KEY_FRESET		3//0~3

//�������Ƶ��ģʽѡ��0~3
//Ĭ��3
#define		KEY_FREMODE		3//0~3

//��Ƶ
//0����ʹ��
//1��ʹ��
#define		KEY_FREDFEN		1//0~1

//�˲�
//0����ʹ��
//1��ʹ��
#define		KEY_FRELB		0//0~1
/***********************************************************
��������������޸�
***********************************************************/
unsigned int  KeyResSum[C_KEY_TOTAL];
unsigned int  KeyOldValue0[C_KEY_TOTAL];
unsigned int  KeyOldValue1[C_KEY_TOTAL];
unsigned int  KeyOldValue2[C_KEY_TOTAL];
unsigned int  KeyReference[C_KEY_TOTAL];
unsigned char KeyUpShake[C_KEY_TOTAL];

const unsigned char KeyChannelSel = C_KEY_CHANNEL;
const unsigned int  KeyValidTime = C_VALID_TIME;
const unsigned char KeyTotalNumber = C_KEY_TOTAL;
const unsigned char KeyShakeCounter = C_KEY_SHAKE;
const unsigned char KeyValidNumber = C_VALID_KEY;
const unsigned char KeyFreSet = KEY_FRESET;
const unsigned char KeyFreMode = KEY_FREMODE;
const unsigned char KeyFreDFEN = KEY_FREDFEN;
const unsigned char KeyFreLB = KEY_FRELB;
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





