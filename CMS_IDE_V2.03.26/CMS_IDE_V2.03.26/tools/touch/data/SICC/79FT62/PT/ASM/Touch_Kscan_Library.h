;**********************************************************
;**********************************************************
;�� �� ��:Touch_Kscan_Library.H
;���������ļ����������������������á�ÿ���������������á�ÿ�������ڲ������������á�����ͨ������
;**********************************************************
;ÿ��������Ӧ�ڼĴ���KEYF��1��λ,�ɸ�����һһ��Ӧ
;KEYF��Ӧ��Key8,...,Key2,Key1
;KEYF1��Ӧ��Key12,Key11,Key10,Key9
;������Чʱ��ӦλΪ1,��ЧʱΪ0
;**********************************************************
;����ģʽʹ��,��������ʱ�轫����ģʽ�ر�
;0:��ʹ��
;1:ʹ��
#define		CMS_DEBUG_MODE	0



;#define		C_KWATER					;��ˮ/��ϼ�ģʽѡ��,������Ϊ��ϼ�ģʽ
#define		C_KCOUNT		4				;��Χ1~12,��������
#define		C_KEY_CHANNEL	0x0F00			;ͨ��ʹ��,����ʵ��Ӧ�ñ�������,оƬ�ܽ��ϵ�TK0~TK11�ֱ��Ӧbit0~bit11

#define		C_VALID_KEY		2				;��Χ1~255,ͬʱ���������Ч������,������ֵ����Ϊ�Ǹ���
#define		C_VALID_TIME	(1000/4)*60		;��Χ0~65535,�������������Чʱ��,��4msΪ��׼����,Ϊ0ʱ������
;----------------------------------------------------------
C_KEYC		DEF		.2		;������������
;----------------------------------------------------------
;�������������ó���10~255
C_KEY1_LMD	DEF		.50		;KEY1������
C_KEY2_LMD	DEF		.50		;KEY2������
C_KEY3_LMD	DEF		.50		;KEY3������
C_KEY4_LMD	DEF		.50		;KEY4������
C_KEY5_LMD	DEF		.50		;KEY5������
C_KEY6_LMD	DEF		.50		;KEY6������
C_KEY7_LMD	DEF		.50		;KEY7������
C_KEY8_LMD	DEF		.50		;KEY8������
C_KEY9_LMD	DEF		.50		;KEY9������
C_KEY10_LMD	DEF		.50		;KEY10������
C_KEY11_LMD	DEF		.50		;KEY11������
C_KEY12_LMD	DEF		.50		;KEY12������
;----------------------------------------------------------
;----------------------------------------------------------
;���������ͨ����Ӧ�İ������0x00~0x0B
;δʹ�õ�ͨ������Ϊ0x80
C_KEY1_CH	DEF		0x80	
C_KEY2_CH	DEF		0x80	
C_KEY3_CH	DEF		0x80	
C_KEY4_CH	DEF		0x80	
C_KEY5_CH	DEF		0x80	
C_KEY6_CH	DEF		0x80	
C_KEY7_CH	DEF		0x80	
C_KEY8_CH	DEF		0x80	
C_KEY9_CH	DEF		0x80	
C_KEY10_CH	DEF		0x80	
C_KEY11_CH	DEF		0x80	
C_KEY12_CH	DEF		0x80	
;----------------------------------------------------------






;***********************************************************
;���������һ����������޸�
;***********************************************************
;----------------------------------------------------------
;���������ͨ�����ʱ��ѡ�� 160~240��ֵԽ�󣬼��ʱ��Խ�̣������仯��ԽС
C_KEY1_TMR	DEF		.215		;KEY1���ʱ��
C_KEY2_TMR	DEF		.215		;KEY2���ʱ��
C_KEY3_TMR	DEF		.215		;KEY3���ʱ��
C_KEY4_TMR	DEF		.215		;KEY4���ʱ��
C_KEY5_TMR	DEF		.215		;KEY5���ʱ��
C_KEY6_TMR	DEF		.215		;KEY6���ʱ��
C_KEY7_TMR	DEF		.215		;KEY7���ʱ��
C_KEY8_TMR	DEF		.215		;KEY8���ʱ��
C_KEY9_TMR	DEF		.215		;KEY9���ʱ��
C_KEY10_TMR	DEF		.215		;KEY10���ʱ��
C_KEY11_TMR	DEF		.215		;KEY11���ʱ��
C_KEY12_TMR	DEF		.215		;KEY12���ʱ��
;�������Ƶ��ѡ��0~2
#define		KEY_FRESET		2;0~2

;�������Ƶ��ģʽѡ��0~3
#define		KEY_FREMODE		3;0~3

;��Ƶ
;0����ʹ��
;1��ʹ��
#define		KEY_FREDFEN		1;0~1

