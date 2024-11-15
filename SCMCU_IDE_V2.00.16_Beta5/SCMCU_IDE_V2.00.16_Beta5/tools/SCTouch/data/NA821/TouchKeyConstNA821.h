;**********************************************************
;*********************�������������ļ�*********************
;**********************************************************
#ifndef	_TOUCH_KSCAN_CONST_H_
#define	_TOUCH_KSCAN_CONST_H_


;----------------------------------------------------------
;MCU���а���ͨ������
#define	C_KCHS_0	00H
#define	C_KCHS_1    01H
#define	C_KCHS_2    02H
#define	C_KCHS_4    04H

;���������ڲ��Ƚ������˵�ѹѡ��

#define	C_KVREF_05	0x40		;0.5VDD
#define	C_KVREF_06	0x80		;0.6VDD
#define	C_KVREF_07	0xC0		;0.7VDD
;--------------------------------------------------------------------
;��������ʱ��ѡ��(�Ƽ�fhsi/4�����ϣ�
#define	C_KCLK_SYS2	0x00		;fhsi/2
#define	C_KCLK_SYS4	0x10		;fhsi/4
#define	C_KCLK_SYS8	0x20		;fhsi/8
#define	C_KCLK_SYS16	0x30	;fhsi/16
;--------------------------------------------------------------------
#define	C_KVREF	C_KVREF_05
#define	C_KCLK	C_KCLK_SYS4

;--------------------------------------------------------------------
#define	C_KCHS0		C_KVREF|C_KCLK|C_KCHS_0
#define	C_KCHS1		C_KVREF|C_KCLK|C_KCHS_1
#define	C_KCHS2		C_KVREF|C_KCLK|C_KCHS_2
#define	C_KCHS4		C_KVREF|C_KCLK|C_KCHS_4
;--------------------------------------------------------------------
#define C_KCAP_0 0
#define C_KCAP_1 0
#define C_KCAP_2 0
#define C_KCAP_3 0
#define C_KCAP_4 0
#define C_KCAP_5 0
#define C_KCAP_6 0
#define C_KCAP_7 0
;----------------------------------------------------------
;������Ƶѡ��
#define	C_TP_EN	0X00		;10Ϊʹ����Ƶ����CE������,

;�����˲�ѡ��
#define	C_CAP_LVBO	0X60		;Ĭ��4���˲����Դ�������û��Ӱ��

;������׼Դʹ��
#define	C_TKLDOEN	0X08		;1Ϊʹ�ܴ�����׼�����ӿ��Ʋ�����

;������׼ѡ��
#define	C_TKLDO_SEL	0X00		;0ѡ��2V���ο���2.4VΪ0x02

#define	C_TP_LDO	C_CAP_LVBO|C_TP_EN|C_TKLDOEN|C_TKLDO_SEL|0X01

#define		OPTION_REG_S			B'00001001'		;Ԥ��Ƶ�����Ź�,����bit2-bit0(16ms*N)
#define		C_KEY_WAKEUP	0x0

;--------------------------------------------------------------------

;----------------------------------------------------------
#endif