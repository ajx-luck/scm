;������û��ӿ�:
;����ɨ��������ڼĴ���KEYF��KEYF1��
;ÿ��������Ӧ�ڼĴ�����1��λ,�ɸ�����һһ��Ӧ
;KEYF��Ӧ��Key8,...,Key2,Key1
;KEYF1��Ӧ��Key16,...,Key10,Key9
;������Чʱ��ӦλΪ1,��ЧʱΪ0

;��TK_FLAG,B_KERR=1 ��������ȫ������

;������Ӧ��ϵ��:
;		BIT7	BIT6	BIT5	BIT4	BIT3	BIT2	BIT1	BIT0
;KEYF	KEY8	KEY7	KEY6	KEY5	KEY4	KEY3	KEY2	KEY1
;KEYF1	----	KEY15	KEY14	KEY13	KEY12	KEY11	KEY10	KEY9
;********************************************************************
;********************************************************************
#ifndef	_TOUCH_KSCAN_LIBRARY_H_
#define	_TOUCH_KSCAN_LIBRARY_H_

#INCLUDE	"Touch_Kscan_Const.h"

;--------------------------------------------------------------------
;��ˮģʽѡ��,��������Ϊ��ϼ�ģʽ
#define		C_KWATER
#define		C_KCOUNT	1			;��������
#define		C_KEYC		2			;������������
#define		C_VALID_KEY	1			;ͬʱ���������Ч������,������ֵ����Ϊ�Ǹ���
;--------------------------------------------------------------------
;�������������ó���
C_KEY1_LMD		DEF		10			;KEY1������
C_KEY2_LMD		DEF		10			;KEY2������
C_KEY3_LMD		DEF		10			;KEY3������
C_KEY4_LMD		DEF		10			;KEY4������
C_KEY5_LMD		DEF		10			;KEY5������
C_KEY6_LMD		DEF		10			;KEY6������
C_KEY7_LMD		DEF		10			;KEY7������
C_KEY8_LMD		DEF		10			;KEY8������
C_KEY9_LMD		DEF		10			;KEY9������
C_KEY10_LMD		DEF		10			;KEY10������
C_KEY11_LMD		DEF		10			;KEY11������
C_KEY12_LMD		DEF		10			;KEY12������
C_KEY13_LMD		DEF		10			;KEY13������
C_KEY14_LMD		DEF		10			;KEY14������
C_KEY15_LMD		DEF		10			;KEY15������
;--------------------------------------------------------------------
;����ͨ���ڵ���,��ֵΪC_KCAP_0��C_KCAP_7֮һ
C_KEY1_ADJ		DEF		C_KCAP_0	;KEY1���ߵ���
C_KEY2_ADJ		DEF		C_KCAP_0	;KEY2���ߵ���
C_KEY3_ADJ		DEF		C_KCAP_0	;KEY3���ߵ���
C_KEY4_ADJ		DEF		C_KCAP_0	;KEY4���ߵ���
C_KEY5_ADJ		DEF		C_KCAP_0	;KEY5���ߵ���
C_KEY6_ADJ		DEF		C_KCAP_0	;KEY6���ߵ���
C_KEY7_ADJ		DEF		C_KCAP_0	;KEY7���ߵ���
C_KEY8_ADJ		DEF		C_KCAP_0	;KEY8���ߵ���
C_KEY9_ADJ		DEF		C_KCAP_0	;KEY9���ߵ���
C_KEY10_ADJ		DEF		C_KCAP_0	;KEY10���ߵ���
C_KEY11_ADJ		DEF		C_KCAP_0	;KEY11���ߵ���
C_KEY12_ADJ		DEF		C_KCAP_0	;KEY12���ߵ���
C_KEY13_ADJ		DEF		C_KCAP_0	;KEY13���ߵ���
C_KEY14_ADJ		DEF		C_KCAP_0	;KEY14���ߵ���
C_KEY15_ADJ		DEF		C_KCAP_0	;KEY15���ߵ���
;--------------------------------------------------------------------
;�������ͨ������,��ֵΪC_KCHS0��C_KCHS15֮һ
;δʹ�õ��İ���Ĭ������ΪC_KCHS0
C_KEY1_CH		DEF		C_KCHS0		;KEY1ɨ��ͨ��
C_KEY2_CH		DEF		C_KCHS0		;KEY2ɨ��ͨ��
C_KEY3_CH		DEF		C_KCHS0		;KEY3ɨ��ͨ��
C_KEY4_CH		DEF		C_KCHS0		;KEY4ɨ��ͨ��
C_KEY5_CH		DEF		C_KCHS0		;KEY5ɨ��ͨ��
C_KEY6_CH		DEF		C_KCHS0		;KEY6ɨ��ͨ��
C_KEY7_CH		DEF		C_KCHS0		;KEY7ɨ��ͨ��
C_KEY8_CH		DEF		C_KCHS0		;KEY8ɨ��ͨ��
C_KEY9_CH		DEF		C_KCHS0		;KEY9ɨ��ͨ��
C_KEY10_CH		DEF		C_KCHS0		;KEY10ɨ��ͨ��
C_KEY11_CH		DEF		C_KCHS0		;KEY11ɨ��ͨ��
C_KEY12_CH		DEF		C_KCHS0		;KEY12ɨ��ͨ��
C_KEY13_CH		DEF		C_KCHS0		;KEY13ɨ��ͨ��
C_KEY14_CH		DEF		C_KCHS0		;KEY14ɨ��ͨ��
C_KEY15_CH		DEF		C_KCHS0		;KEY15ɨ��ͨ��
;--------------------------------------------------------------------
#define		C_VALID_TIME	60*(1000/4)			;�������������Чʱ��(��λ��ms),��4ms���û�׼����,Ϊ0ʱ������
;--------------------------------------------------------------------
#endif
