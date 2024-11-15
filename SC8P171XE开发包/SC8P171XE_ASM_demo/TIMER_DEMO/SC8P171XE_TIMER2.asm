;-------------------------------------------

;�������ƣ�Timer2��ʱ�жϳ���
;���ڰ汾��2021/1/20 <V1.0>

;��ע����ʱʱ����㷽��
;         ʱ������Ϊϵͳָ��ʱ�ӣ���ΪFosc/4��
;         ��ʱʱ��T = {1/[(Fosc/4)*Ԥ��Ƶ��*���Ƶ��]}*PR2
;         ���������ʾ����
;         T = {1/[(8/4)*1*1]}*250
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
		LDIA		00H
		OPTION							;Ԥ��Ƶ�������TMR0
		CLR			TMR0				;��ʼ��TMR0
		
		LDIA		070H				;8M�ڲ�ʱ��
		LD			OSCCON,A
		
		CLR			TRISB
		
		CALL		INIT_TMR2
MAIN:									;������
		CLRWDT
		
		JP			MAIN
;-------------------------------------------

;-------------------------------------------
;�������ƣ�INIT_TMR2
;�������ܣ���ʼ��TMR2
;��ڲ�������
;���ڲ�������
;		   
;��	   ע��
;-------------------------------------------
INIT_TMR2:
		LDIA		.250				;����ֵ����ʱ125US
		LD			PR2,A
		
		CLRB		PIR1,TMR2IF			;���жϱ�־λ
		
		LDIA		04H					;����Timer2��Ԥ��ƵֵΪ1�����Ƶ��Ϊ1:1
		LD			T2CON,A
		
		SETB		PIE1,TMR2IE			;����Timer2�ж�
		LDIA		0C0H				;��������δ�����ε��жϡ������ж�
		LD			INTCON,A
INIT_TMR2_BACK:
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
INT_TMR2:
		CLRB		PIR1,TMR2IF			;���жϱ�־
		
		LDIA		0FFH
		XORR		PORTB
INT_BACK:
		SWAPA		GPR1
		LD  		STATUS,A
		SWAPA		GPR0   				;�жϷ���
		RETI 				