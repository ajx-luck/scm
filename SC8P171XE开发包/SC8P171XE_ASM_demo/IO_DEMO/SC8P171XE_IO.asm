;-------------------------------------------

;�������ƣ�IO����
;���ڰ汾��2021/1/20 <V1.0>

;��ע��

;*��˾��ַ www.mcu.com.cn
;					WWW.SCMCU.COM
;-------------------------------------------

#INCLUDE	SC8P1712E.H


POUT		EQU			PORTA,2			;����RA2�� ȡ��POUT
PIN0		EQU			PORTA,0			;����RA0�� ȡ��PIN0
PIN1		EQU			PORTA,1			;����RA1�� ȡ��PIN1

ORG			0000H						
JP			START						

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

		LDIA		B'00000011'			;�����������
		LD			WPUA,A
		LDIA		B'00000000'
		LD			WPUB,A
				
		LDIA		B'00000011'			;����IO״̬
		LD			TRISA,A
		LDIA		B'00000000'
		LD			TRISB,A
				
MAIN:									;������
		CLRWDT

PIN0_JUDGE:		
		SZB			PIN0
		JP			PIN0_1
		JP			PIN0_0
PIN0_1:
		LDIA		B'11111111'			;PIN0 = 1
		XORR		PORTB
		JP			PIN1_JUDGE
PIN0_0:									;PIN0 = 0
		CLR			PORTB

;----------
PIN1_JUDGE:		
		SZB			PIN1
		JP			PIN1_1
		JP			PIN1_0
PIN1_1:
		SETB		POUT				;PIN1 = 1
		JP			MAIN
PIN1_0:
		CLRB		POUT				;PIN1 = 0
		JP			MAIN
;-------------------------------------------
