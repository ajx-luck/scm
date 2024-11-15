;**********************************************************
;**********************************************************
;�� �� ��:Touch_Kscan_Library.H
;���������ļ����������������������á�ÿ���������������á�ÿ�������ڲ������������á�����ͨ������
;�� TK_FLAG,B_KERR=1 ��������ȫ������
;**********************************************************
;**********************************************************
#INCLUDE	"Touch_Kscan_Const.h"

;#define		C_KWATER		1		;��ˮ/��ϼ�ģʽѡ��,������Ϊ��ϼ�ģʽ
#define		C_KCOUNT		4		;1~16��������

#define		C_VALID_KEY		2		;1~16
#define		C_VALID_TIME	(1000/4)*60 ;0~65535
;----------------------------------------------------------
C_KEYC			DEF			2		;2~16������������
;----------------------------------------------------------
;----------------------------------------------------------
;#define		C_HSENSITIVE		1		;����������ʹ��,������Ϊ��ͨ������
;----------------------------------------------------------
;�ڲ��Ƚ����ο���ѹ�趨,������ֵ��ѡȡ
;C_KVREF_04	=>	0.4VDD
;C_KVREF_05	=>	0.5VDD
;C_KVREF_06	=>	0.6VDD
;C_KVREF_07	=>	0.7VDD
C_KVREF			DEF		C_KVREF_05

;----------------------------------------------------------
;��������ʱ���趨,������ֵ��ѡȡ
;ע�⣺	1��5V����ʱ����INTRC_SEL��Ƶѡ��16M�����鴥��ת��ʱ��ѡ��8��Ƶ������ѡ��2��Ƶ
;		2��5V����ʱ����INTRC_SEL��Ƶѡ��8M�����鴥��ת��ʱ��ѡ��4��Ƶ/8��Ƶ
;		3��3V�����¹���ʱ������ת��ʱ����ѡ��8��Ƶ
;C_KCLK_SYS2	=>	ϵͳʱ�ӵ�2��Ƶ
;C_KCLK_SYS4	=>	ϵͳʱ�ӵ�4��Ƶ
;C_KCLK_SYS8	=>	ϵͳʱ�ӵ�8��Ƶ
C_KCLK			DEF		C_KCLK_SYS8

;----------------------------------------------------------
;�½���Ч����ѡ��,���������ߺ�����������������Ȳ���
;��������ʱ�趨ֵ���ɵ���6
;��������ʱ�趨ֵ���ɵ���20

C_KEY1_LMD		DEF		.20		;KEY1������
C_KEY2_LMD		DEF		.20		;KEY2������
C_KEY3_LMD		DEF		.20		;KEY3������
C_KEY4_LMD		DEF		.20		;KEY4������
C_KEY5_LMD		DEF		.20		;KEY5������
C_KEY6_LMD		DEF		.20		;KEY6������
C_KEY7_LMD		DEF		.20		;KEY7������
C_KEY8_LMD		DEF		.20		;KEY8������
C_KEY9_LMD		DEF		.20		;KEY9������
C_KEY10_LMD		DEF		.20		;KEY10������
C_KEY11_LMD		DEF		.20		;KEY11������
C_KEY12_LMD		DEF		.20		;KEY12������
C_KEY13_LMD		DEF		.20		;KEY13������
C_KEY14_LMD		DEF		.20		;KEY14������
C_KEY15_LMD		DEF		.20		;KEY15������
C_KEY16_LMD		DEF		.20		;KEY16������
;----------------------------------------------------------
;����ͨ���ڵ���
C_KEY1_ADJ		DEF		C_KCAP_0		;KEY1���ߵ���
C_KEY2_ADJ		DEF		C_KCAP_0		;KEY2���ߵ���
C_KEY3_ADJ		DEF		C_KCAP_0		;KEY3���ߵ���
C_KEY4_ADJ		DEF		C_KCAP_0		;KEY4���ߵ���
C_KEY5_ADJ		DEF		C_KCAP_0		;KEY5���ߵ���
C_KEY6_ADJ		DEF		C_KCAP_0		;KEY6���ߵ���
C_KEY7_ADJ		DEF		C_KCAP_0		;KEY7���ߵ���
C_KEY8_ADJ		DEF		C_KCAP_0		;KEY8���ߵ���
C_KEY9_ADJ		DEF		C_KCAP_0		;KEY9���ߵ���
C_KEY10_ADJ		DEF		C_KCAP_0		;KEY10���ߵ���
C_KEY11_ADJ		DEF		C_KCAP_0		;KEY11���ߵ���
C_KEY12_ADJ		DEF		C_KCAP_0		;KEY12���ߵ���
C_KEY13_ADJ		DEF		C_KCAP_0		;KEY13���ߵ���
C_KEY14_ADJ		DEF		C_KCAP_0		;KEY14���ߵ���
C_KEY15_ADJ		DEF		C_KCAP_0		;KEY15���ߵ���
C_KEY16_ADJ		DEF		C_KCAP_0		;KEY16���ߵ���
;----------------------------------------------------------
;�������ͨ������
;���õİ�����δ���õİ���Ĭ������ΪKCHS0
C_KEY1_CH		DEF		C_KCHS0		;KEY1ͨ��
C_KEY2_CH		DEF		C_KCHS0		;KEY2ͨ��
C_KEY3_CH		DEF		C_KCHS0		;KEY3ͨ��
C_KEY4_CH		DEF		C_KCHS0		;KEY4ͨ��
C_KEY5_CH		DEF		C_KCHS0		;KEY5ͨ��
C_KEY6_CH		DEF		C_KCHS0		;KEY6ͨ��
C_KEY7_CH		DEF		C_KCHS0		;KEY7ͨ��
C_KEY8_CH		DEF		C_KCHS0		;KEY8ͨ��
C_KEY9_CH		DEF		C_KCHS0		;KEY9ͨ��
C_KEY10_CH		DEF		C_KCHS0		;KEY10ͨ��
C_KEY11_CH		DEF		C_KCHS0		;KEY11ͨ��
C_KEY12_CH		DEF		C_KCHS0		;KEY12ͨ��
C_KEY13_CH		DEF		C_KCHS0		;KEY13ͨ��
C_KEY14_CH		DEF		C_KCHS0		;KEY14ͨ��
C_KEY15_CH		DEF		C_KCHS0		;KEY15ͨ��
C_KEY16_CH		DEF		C_KCHS0		;KEY16ͨ��
;----------------------------------------------------------
