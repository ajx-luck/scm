;**********************************************************
;**********************************************************
;�� �� ��:
;���������ļ����������������������á�ÿ���������������á�ÿ�������ڲ������������á�����ͨ������

;������������TMR0��������OPTION_REG�����TMR0
;���EMC��û����������У׼�㷨����һ�׼���ݽ����þ��ȡ�5%�ĵ��ڵ���
;���EMC��Ĭ�Ͽ���������
;**********************************************************
;**********************************************************
#INCLUDE	"Touch_Kscan_Const.h"

;�� TK_FLAG,B_KERR=1 ��������ȫ������

#define		OSC_CH			0 ;0 = 16M(��ƵĬ��); 1 = 8M

#define		C_KCOUNT		4 ;1~12��������

#define		C_VALID_KEY		2 ;1~12���������Ч������
#define		C_VALID_TIME	(1000/4)*60	;0~65535,�������Ӧʱ��,Ϊ0ʱ������


;������ֵ
#define		VOL_VALUE		15 ;15~127,�޸����µ����������ֵ*2

;����ֵ
#define		SLU_VALUE		5 ;��ָ���ºͷſ��л�������ֵ,��ֵ��С�ڵ���VOL_VALUE/2,��Χ1~127

;������׼ֵ������������
#define		CM_BASE			10 ;5~127,����ʱ��ԼΪ��������4ms��������ʱ������4ms��*��������*CM_BASE

;Ӳ����Ƶ�趨
#define		C_TP_EN			1 ;0���ر�; 1������
;----------------------------------------------------------
C_KEYC			DEF			.2 ;2~8����������������
;----------------------------------------------------------
C_OFF_KEYC		DEF			.2 ;2~8�����ſ���������
;----------------------------------------------------------
;�ڲ��Ƚ����ο���ѹ�趨,������ֵ��ѡȡ
;C_KVREF_04	=>	0.4VDD
;C_KVREF_05	=>	0.5VDD
;C_KVREF_06	=>	0.6VDD
;C_KVREF_07	=>	0.7VDD
C_KVREF			DEF		C_KVREF_05
;----------------------------------------------------------
;�������������ó���,��Ӧ����ֵΪC_KEY1_LMD + VOL_VALUE/2
;10~127
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
C_KEY13_LMD		DEF		.30		;KEY10������
C_KEY14_LMD		DEF		.30		;KEY11������
C_KEY15_LMD		DEF		.30		;KEY12������
;----------------------------------------------------------
;����ͨ���ڵ���
;C_KCAP_0 ~ C_KCAP_7
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
;----------------------------------------------------------
;�������ͨ������
;���õİ�����δ���õİ���Ĭ������ΪKCHS0
;KCHS0~KCHS12
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
;----------------------------------------------------------
