;-------------------------------------------

;�������ƣ�Timer0��ʱ�жϳ���
;���ڰ汾��2021/1/20 <V1.0>

;��ע����ʱʱ����㷽��
;         ��ʱʱ��T = {1/[(Fosc/4)*Ԥ��Ƶ��]}*(256-TMR0)
;         ���������ʾ����
;         T = {1/[(8/4)*1/2]}*(256-131)
;		    = 125 us 

;*��˾��ַ www.mcu.com.cn
;					WWW.SCMCU.COM
;-------------------------------------------


#INCLUDE	SC8P1712E.H



GPR0		EQU			?				;�����жϷ����б���ACC
GPR1		EQU			?				;�����жϷ����б���FLAGS

ORG			0000H						
JP			START						
ORG			0004H
JP			INT_SERVICE

;-------------------------------------------
START:
		NOP
		CLRWDT
		LDIA		00H
		OPTION							;Ԥ��Ƶ�������TMR0
		CLR			TMR0				;��ʼ��TMR0
		CLRWDT
		
		LDIA		070H				;8M�ڲ�ʱ��
		LD			OSCCON,A
		
		CLR			TRISB
		
		CALL		INIT_TMR0
MAIN:									;������
		CLRWDT
		
		JP			MAIN
;-------------------------------------------

;-------------------------------------------
;�������ƣ�INIT_TMR0
;�������ܣ���ʼ��TMR0
;��ڲ�������
;���ڲ�������
;		   
;��	   ע��
;-------------------------------------------
INIT_TMR0��
		LDIA		00H				;Timer0ʹ���ڲ�ʱ��Focs/4��Ԥ��Ƶ��Ϊ1:2
		LD			OPTION_REG,A
		
		LDIA		.131				;�����ʼֵ
		LD			TMR0,A
		LDIA		0A0H				;��������δ�����ε��жϡ���ֹ�����жϣ�ʹ��Timer0
		LD			INTCON,A
INIT_TMR0_BACK:
		RET
;-------------------------------------------
;�������ƣ�INT_SERVICE
;�������ܣ��жϷ���
;��ڲ�������
;���ڲ�������
;		   
;��	   ע��
;-------------------------------------------
INT_SERVICE��
INT_IN:
		LD  		GPR0,A				;�ж��ֳ�����
		SWAPR		GPR0
		SWAPA		STATUS
		LD  		GPR1,A					
INT_TMR0:
		CLRB		INTCON,T0IF			;���жϱ�־
		
		LDIA		.131				;���¸����ʼֵ
		ADDR		TMR0
		
		LDIA		0FFH
		XORR		PORTB
INT_BACK:
		SWAPA		GPR1
		LD  		STATUS,A
		SWAPA		GPR0   				;�жϷ���
		RETI 				