;-------------------------------------------

;�������ƣ�INT�ⲿ�жϳ���
;���ڰ汾��2021/1/20 <V1.0>

;��ע��

;*��˾��ַ www.mcu.com.cn
;					WWW.SCMCU.COM
;-------------------------------------------

#INCLUDE	SC8P1712E.H


GPR0		EQU			?				;�����жϷ����б���ACC
GPR1		EQU			?				;�����жϷ����б���STATUS

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
		
;-------------------	
		CLRB		OPTION_REG,INTEDG	;INT�����½��ش���,��1Ϊ�����ش���
		LDIA		090H				;��������δ�����ε��жϡ���ֹ�����жϣ�ʹ��INT�ⲿ�ж�
		LD			INTCON,A
;-------------------
MAIN:									;������
		CLRWDT
		
		JP			MAIN
;-------------------------------------------

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
INT_INT:
		CLRB		INTCON,INTF			;���жϱ�־
		
INT_BACK:
		SWAPA		GPR1
		LD  		STATUS,A
		SWAPA		GPR0   				;�жϷ���
		RETI 				