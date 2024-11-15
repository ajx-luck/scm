;-------------------------------------------

;�������ƣ�PORTB�жϳ���
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
JP			PB_INT_SERVICE

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
		SETB		WPUB,2				;ʹ��������ʹRB2Ϊ��
		SETB		TRISB,2				;����RB2��IO��Ϊ����
		SETB		IOCB,2				;����RB2��IO�ڵ�ƽ�仯�ж�
		LDIA		088H				;��������δ�����ε��жϡ���ֹ�����жϣ�ʹ��PORTB��ƽ�仯�ж�
		LD			INTCON,A
		LD			A,PORTB				;��ȡPORTB������
;-------------------		
MAIN:									;������
		CLRWDT
		
		JP			MAIN
;-------------------------------------------


;-------------------------------------------
;�������ƣ�PB_INT_SERVICE
;�������ܣ��жϷ���
;��ڲ�������
;���ڲ�������
;		   
;��	   ע��
;-------------------------------------------
PB_INT_SERVICE��
INT_IN:
		LD  		GPR0,A				;�ж��ֳ�����
		SWAPR		GPR0
		SWAPA		STATUS
		LD  		GPR1,A					
INT_PB:
		CLRB		INTCON,RBIF			;���жϱ�־
		LD			A,PORTB
INT_BACK:
		SWAPA		GPR1
		LD  		STATUS,A
		SWAPA		GPR0   				;�жϷ���
		RETI 				