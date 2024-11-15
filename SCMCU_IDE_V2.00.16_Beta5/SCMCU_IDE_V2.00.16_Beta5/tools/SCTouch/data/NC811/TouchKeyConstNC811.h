#ifndef _TOUCHKEY_CONST_H_
#define _TOUCHKEY_CONST_H_

//��������ʱ�䶨��
const unsigned char C_OPTION_REG_ = 0x0A;		//���64msWDT����һ�μ�ⰴ��
const unsigned int  KeyWakeUpEn = 0;
												//=0x0B��Ϊ128ms���Ѽ��


//�����Ǵ����ڲ�һЩ����λ�ĺ궨��,�������
//���������ڲ��Ƚ������˵�ѹѡ��
//#define		C_KVREF_04		0x00		//0.4VDD
#define		C_KVREF_05		0x40		//0.5VDD
#define		C_KVREF_06		0x80		//0.6VDD
#define		C_KVREF_07		0xC0		//0.7VDD


//��������ʱ��ѡ��
#define		C_KCLK_SYS2		0x00		//fsys/2
#define		C_KCLK_SYS4		0x10		//fsys/4
#define		C_KCLK_SYS8		0x20		//fsys/8
#define		C_KCLK_SYS16	0x30		//fsys/16

//�������ͨ��ѡ��
#define		C_KCHS0			C_KVREF|C_KCLK|0x00
#define		C_KCHS1			C_KVREF|C_KCLK|0x01
#define		C_KCHS2			C_KVREF|C_KCLK|0x02
#define		C_KCHS3			C_KVREF|C_KCLK|0x03
#define		C_KCHS4			C_KVREF|C_KCLK|0x04
#define		C_KCHS5			C_KVREF|C_KCLK|0x05
#define		C_KCHS7			C_KVREF|C_KCLK|0x07


//���߲�������ѡ��,ʹ�ܵ��ݿ�
#define		C_KCAP0 		0x00 | 0x2
#define		C_KCAP1 		0x08 | 0x2
#define		C_KCAP2 		0x10 | 0x2
#define		C_KCAP3 		0x18 | 0x2
#define		C_KCAP4 		0x20 | 0x2
#define		C_KCAP5 		0x28 | 0x2
#define		C_KCAP6 		0x30 | 0x2
#define		C_KCAP7 		0x38 | 0x2

//������Ƶѡ��
#define		TP_EN			0X10		//ʹ����Ƶ����CE�����ף�������ʱ��ԼΪ��ʹ�ܵ�3~4��
										//��ʹ��Ϊ00��
//�����˲�ѡ��
#define		CAP_LVBO		0X60		//Ĭ��4���˲����Դ�������û��Ӱ��

//������׼Դʹ��
#define		TKLDOEN			0X08		//ʹ�ܴ�����׼�����ӿ��Ʋ�����

//������׼ѡ��
#define		TKLDO_SEL		0X00		//ѡ��2V���ο���2.4VΪ0x02

#define		C_TP_LDO		CAP_LVBO|TP_EN|TKLDOEN|TKLDO_SEL|0X01

const unsigned char	KeyTPLDO = C_TP_LDO;

#endif