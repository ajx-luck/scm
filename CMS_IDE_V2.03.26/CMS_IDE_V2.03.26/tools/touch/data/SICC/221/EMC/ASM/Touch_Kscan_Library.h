;**********************************************************
;**********************************************************
;�� �� ��:Touch_Kscan_Const.H
;���������ļ����������������������á�ÿ���������������á�����ͨ������
;**********************************************************
;**********************************************************
#INCLUDE	"Touch_Kscan_Const.h"

;����ģʽʹ��
#define		CMS_DEBUG_MODE	0


;�� B_KERR=1 ��������ȫ������

#define		C_KCOUNT		4		;��������,���16������

#define		C_KEYC			2		;1~8 ����������������

;������ֵ
#define		VOL_VALUE		10		;�޸����µ����������ֵ*2,ȡֵ��Χ10~128

;����ֵ
#define		SLU_VALUE		10		;��ָ���ºͷſ��л�������ֵ

;������׼ֵ������������
#define		CM_BASE			10		;����ʱ��ԼΪ��������4ms��������ʱ������4ms��*��������*CM_BASE

#define		C_VALID_KEY		2			;���������Ч������

#define		C_VALID_TIME	(1000/4)*60	;�������Ӧʱ��
;----------------------------------------------------------
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
;��������ֵ1,�趨ֵ���ɵ���20,���ܴ���255
C_KEY1_LMD		DEF		.30		;KEY1������
C_KEY2_LMD		DEF		.30		;KEY2������
C_KEY3_LMD		DEF		.30		;KEY3������
C_KEY4_LMD		DEF		.30		;KEY4������
C_KEY5_LMD		DEF		.30		;KEY5������
C_KEY6_LMD		DEF		.30		;KEY6������
C_KEY7_LMD		DEF		.30		;KEY7������
C_KEY8_LMD		DEF		.30		;KEY8������
C_KEY9_LMD		DEF		.30		;KEY9������
C_KEY10_LMD		DEF		.30		;KEY10������
C_KEY11_LMD		DEF		.30		;KEY11������
C_KEY12_LMD		DEF		.30		;KEY12������
C_KEY13_LMD		DEF		.30		;KEY13������
C_KEY14_LMD		DEF		.30		;KEY14������
C_KEY15_LMD		DEF		.30		;KEY15������
C_KEY16_LMD		DEF		.30		;KEY16������
;----------------------------------------------------------
;��������ֵ2,�趨ֵ���ɵ���20,���ܴ���255
C_KEY1_LMD_Pro		DEF		.30		;KEY1������1
C_KEY2_LMD_Pro		DEF		.30		;KEY2������1
C_KEY3_LMD_Pro		DEF		.30		;KEY3������1
C_KEY4_LMD_Pro		DEF		.30		;KEY4������1
C_KEY5_LMD_Pro		DEF		.30		;KEY5������1
C_KEY6_LMD_Pro		DEF		.30		;KEY6������1
C_KEY7_LMD_Pro		DEF		.30		;KEY7������1
C_KEY8_LMD_Pro		DEF		.30		;KEY8������1
C_KEY9_LMD_Pro		DEF		.30		;KEY9������1
C_KEY10_LMD_Pro		DEF		.30		;KEY10������1
C_KEY11_LMD_Pro		DEF		.30		;KEY11������1
C_KEY12_LMD_Pro		DEF		.30		;KEY12������1
C_KEY13_LMD_Pro		DEF		.30		;KEY13������1
C_KEY14_LMD_Pro		DEF		.30		;KEY14������1
C_KEY15_LMD_Pro		DEF		.30		;KEY15������1
C_KEY16_LMD_Pro		DEF		.30		;KEY16������1
;----------------------------------------------------------
;----------------------------------------------------------
;��������ͨ������²����޸�
;----------------------------------------------------------
;----------------------------------------------------------
;�쳣�ж�ʹ�ܣ���TKֵ�쳣���½�������Ӧ
#define		UNNOL_CHECK		1

;�쳣�ж��Իָ��������������ٽ����Իָ�
#define		UNNOL_TIMES		100

;������λ��
TK_TIME		DEF			TK_TIME3;0~7 (TK_TIME+8)λ
;----------------------------------------------------------
;----------------------------------------------------------
;----------------------------------------------------------