;**********************************************************
;**********************************************************
;�� �� ��:GlobalKeySet.H
;���������ļ����������������������á�ÿ���������������á�ÿ�������ڲ������������á�����ͨ������
;**********************************************************
;**********************************************************
#INCLUDE	"Touch_Kscan_Const.h"

#define		C_KCOUNT		1			;��������

#define		C_VALID_KEY		3			;���������Ч������
#define		C_VALID_TIME	(1000/4)*60	;�������Ӧʱ��


;������ֵ
#define		VOL_VALUE		5			;�޸����µ����������ֵ*2,ȡֵ��Χ5~128

;����ֵ
#define		SLU_VALUE		1			;��ָ���ºͷſ��л�������ֵ

;������׼ֵ������������
#define		CM_BASE			6		;����ʱ��ԼΪ��������4ms��������ʱ������4ms��*��������*CM_BASE
;----------------------------------------------------------
C_KEYC			DEF		.2		;������������
;----------------------------------------------------------
C_OFF_KEYC		DEF		.2		;�����ſ���������
;----------------------------------------------------------
;�������������ó���
C_KEY1_LMD		DEF		.10		;KEY1������
C_KEY2_LMD		DEF		.10		;KEY2������
C_KEY3_LMD		DEF		.10		;KEY3������
C_KEY4_LMD		DEF		.10		;KEY4������
C_KEY5_LMD		DEF		.10		;KEY5������
C_KEY6_LMD		DEF		.10		;KEY6������
C_KEY7_LMD		DEF		.10		;KEY7������
C_KEY8_LMD		DEF		.10		;KEY8������
C_KEY9_LMD		DEF		.10		;KEY9������
C_KEY10_LMD		DEF		.10		;KEY10������
C_KEY11_LMD		DEF		.10		;KEY11������
C_KEY12_LMD		DEF		.10		;KEY12������
C_KEY13_LMD		DEF		.10		;KEY10������
C_KEY14_LMD		DEF		.10		;KEY11������
C_KEY15_LMD		DEF		.10		;KEY12������
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
;----------------------------------------------------------
