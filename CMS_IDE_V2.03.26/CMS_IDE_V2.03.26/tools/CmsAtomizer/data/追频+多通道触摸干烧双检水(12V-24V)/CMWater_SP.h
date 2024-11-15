#ifndef  _CMWATER_H_
#define  _CMWATER_H_
/*************************************************************************/
/*******************************************************
ע��EEPROM��WAT_ADRL��WAT_ADRH��BASE_ADRL��BASE_ADRH��ַ�洢��ʼ����ֵ�������������ط��������д����
	EEPROM��CHECKL_ADR��CHECKL_ADRΪУ���룬�Ա㱣֤����ֵ����ȷ��
	
����ʱ����WAT_NUM��BASE_NUM = 1��255���۲�wat_ramΪ��ǰ��ˮ����ֵ���۲�wat_baseΪ��ǰ��׼����ֵ
********************************************************/
//�����Ǵ����ڲ�һЩ����λ�ĺ궨��,�������
//���������ڲ��Ƚ������˵�ѹѡ��
#define		CM_KVREF_04		0x00		//0.4VDD
#define		CM_KVREF_05		0x40		//0.5VDD
#define		CM_KVREF_06		0x80		//0.6VDD
#define		CM_KVREF_07		0xC0		//0.7VDD

//�������ͨ��ѡ��
#define		CM_KCHSN			CM_KVREF|0x20
#define		CM_KCHS0			CM_KVREF|0x20
#define		CM_KCHS1			CM_KVREF|0x21
#define		CM_KCHS2			CM_KVREF|0x22
#define		CM_KCHS3			CM_KVREF|0x23
#define		CM_KCHS4			CM_KVREF|0x24
#define		CM_KCHS5			CM_KVREF|0x25
#define		CM_KCHS6			CM_KVREF|0x26
#define		CM_KCHS7			CM_KVREF|0x27
#define		CM_KCHS8			CM_KVREF|0x28
#define		CM_KCHS9			CM_KVREF|0x29
#define		CM_KCHS10			CM_KVREF|0x2A
#define		CM_KCHS11			CM_KVREF|0x2B
#define		CM_KCHS12			CM_KVREF|0x2C
#define		CM_KCHS13			CM_KVREF|0x2D
#define		CM_KCHS14			CM_KVREF|0x2E
#define		CM_KCHS15			CM_KVREF|0x2F

//���߲�������ѡ��,ʹ�ܵ��ݿ�
#define		CM_KCAP0 		0x00 | 0x2
#define		CM_KCAP1 		0x08 | 0x2
#define		CM_KCAP2 		0x10 | 0x2
#define		CM_KCAP3 		0x18 | 0x2
#define		CM_KCAP4 		0x20 | 0x2
#define		CM_KCAP5 		0x28 | 0x2
#define		CM_KCAP6 		0x30 | 0x2
#define		CM_KCAP7 		0x38 | 0x2
/********************************************************/





extern volatile bit cmfstf;//�˱�־λ��0�������¶�ȡEE����������׼�ж�ֵ����������׼�ж�ֵ�Ѿ����㣬����봥����ˮ����
//CMWatFlag��Ӧ��Key16,...,Key2,Key1
//������ˮ��Ч��־λ����ˮΪ1��ȱˮΪ0
extern volatile unsigned int CMWatFlag;	//ÿ��������Ӧ�ڼĴ�����1��λ,�ɸ�����һһ��Ӧ
							
/*******************************************************
					��������				  
********************************************************/
unsigned char Water_test(void);//ˮλ���ģ��,���������ѭ��2.5ms-5ms���ã�Ϊ�˱�֤�������ȶ��ԣ��ϵ�ʱ������ʱ0.5S��ȥ���
/*
�������ܣ�ˮλ���ģ��
��ڲ�����
�������ݣ�
		  0x55	EEû�д���������׼ֵ
		  0xaa	EE�д���������׼ֵ
		  0xfe	����������
		  0xff	����
��ע��	���δд������׼ֵ����ֱ������д����ֵ
*/

unsigned char	Wee_cm_clr(void);//����ģʽʱ�崥����ش���ֵ
/*
�������ܣ�����ģʽ��CM��������
		���ʧ���򷵻�0
		�ɹ��򷵻�1
*/


/*******************************************************
					����ˮ�津��ֵ
0����ˮ�津��ֵ
1����ˮ�津��ֵ
********************************************************/
#define W_NON		1//����ʵ�����������Ե���

/*******************************************************
					�������ƼĴ�������				  
********************************************************/
//�����ˮλ����ͨ����,����1~7
#define CM_KEY_NUM		3//ˮλ����ͨ����

//�ڲ��Ƚ����ο���ѹ�趨,������ֵ��ѡȡ
//C_KVREF_04	=>	0.4VDD
//C_KVREF_05	=>	0.5VDD
//C_KVREF_06	=>	0.6VDD
//C_KVREF_07	=>	0.7VDD
#define		CM_KVREF			CM_KVREF_04

//ˮλ����ͨ���趨,����ʵ�ʵ�����ΪCM_KCHS1��CM_KCHS12����֮һ
const unsigned char Table_CMKeyChannel[] = {

};

//�ڲ���������ѡ���������������ߣ��������Ϊ0���ʵ�������ߵ�ֵ����Χ:CM_KCAP0��CM_KCAP7
const unsigned char Table_CMKeyCap[] = {

};

//����ˮ��ֵѡ��,���������ߺ�����������������Ȳ���,�趨ֵ���ɵ���6,���ܴ���255
//��Ҫ����ʵ�ʷ�������������Ϊ�����½�ֵ��1/2+1
/*******************************************************
					����ˮ��ֵ
********************************************************/
const unsigned char Table_CM_Down[] = {

};
/*******************************************************
					ˮλ�������ͻ�׼�ı���			  
********************************************************/
#define		WAT_NUM			1//��Ҫʵ�ʲ���ȷ����������ֵ
#define		BASE_NUM		1//��Ҫʵ�ʲ���ȷ����������ֵ
/*******************************************************
					��������ֵEEPROM��ַ
********************************************************/
//����ֵEEPROM��ַʹ��CHECKL_ADR��CHECKH_ADR��WAT_ADRL~(WAT_ADRH+2*CM_KEY_NUM)
//ʹ��EEPROMʱ��Ҫע������ظ�ʹ��
//BASE_ADRL: WAT_ADRL+2*CM_KEY_NUM
//BASE_ADRH: WAT_ADRH+2*CM_KEY_NUM
#define		WAT_ADRL		0x02//һ��Ĭ��
#define		WAT_ADRH		0x03//һ��Ĭ��
		
#define		CHECKL_ADR		0x00//һ��Ĭ��
#define		CHECKH_ADR		0x01//һ��Ĭ��

/*************************************************************************/
/*************************************************************************/
/*************************************************************************/
/*�����������޸�*/
/**************************************************************************/
/**************************************************************************/
/**************************************************************************/
//�ߴ���������ʹ��
#define		H_SENS_EN	 1

#define 	Real_NUM		(CM_KEY_NUM + 1)

const unsigned char wnon = W_NON;
const unsigned char Wat_Num = WAT_NUM;
const unsigned char Base_Num = BASE_NUM;
const unsigned char Wat_Adrl = WAT_ADRL;
const unsigned char Wat_Adrh = WAT_ADRH;
const unsigned char Checkl_Adr = CHECKL_ADR;
const unsigned char Checkh_Adr = CHECKH_ADR;
const unsigned char H_Sens_EN = H_SENS_EN;
const unsigned char CM_KeyNum = CM_KEY_NUM;

unsigned char wnonc[CM_KEY_NUM];
unsigned char whavec[CM_KEY_NUM];
unsigned int CM_Water_SUMDat[Real_NUM];
unsigned int CMWater_ram[Real_NUM];//ˮλ�������ֵ+��׼���ֵ
unsigned int CMWatram[Real_NUM];//ˮλ������ʼֵ+��׼��ʼֵ
/*******************************************************
					λ����
********************************************************/
#define	Set(x,y)	((x) |= (1 << (y)))				//λ��1
#define	Clr(x,y)	((x) &= ~ (1 << (y)))			//λ��0

#define	b0(x,y)		(((x) & (1 << (y))) == 0)		//λ0�ж� if(b0(x,y)) �ж��Ƿ�Ϊ0
#define	b1(x,y)		((x) & (1 << (y)))				//λ1�ж� if(b1(x,y)) �ж��Ƿ�Ϊ1
/*******************************************************
					�궨��
********************************************************/
#define uchar	unsigned char
#define uint	unsigned int
#define ulong	unsigned long 
/*******************************************************/
#endif



