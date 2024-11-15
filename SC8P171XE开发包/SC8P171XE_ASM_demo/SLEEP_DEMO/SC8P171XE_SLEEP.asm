;-------------------------------------------

;�������ƣ�����ģʽ�����ѳ���
;���ڰ汾��2021/1/20 <V1.0>

;��ע����CONFIG������WDT�ѱ���ֹ������ģʽ������PORTB��ƽ�仯���� 

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
		
MAIN:									;������
		CLRWDT
		
		CALL		SLEEP_MODE
		
		JP			MAIN
;-------------------------------------------

;-------------------------------------------
;�������ƣ�SLEEP_MODE
;�������ܣ���������ģʽ
;��ڲ�������
;���ڲ�������
;		   
;��	   ע��
;-------------------------------------------
SLEEP_MODE:
		CLR			INTCON
		CLR			OPTION_REG
		
		CLR			ANSEL				;��Ϊ����ͨ��
		CLR			ANSELH
		
		CLR			TRISA
		LDIA		B'00000100'			
		LD			TRISB,A
				
		CLR			WPUA
		LDIA		B'00000100'			;PORTB2��������
		LD			WPUB,A
				
		CLR			PORTA				;�ر��������
		CLR			PORTB
			
		LDIA		B'00000100'			;����RB2��IO�ڵ�ƽ�仯�ж�
		LD			IOCB,A
		SETB		INTCON,RBIE			;����PORTB��ƽ�仯�ж�
		SETB		INTCON,GIE			;GIE = 0ʱ�����Ѻ�ִ��SLEEP�����;GIE = 1ʱ�����Ѻ������жϷ���
		
		CLR			ADCON0				;�ر�����ģ��
		CLR			ADCON1
		CLR			PWMCON
		CLR			PWMCON1
		CLR			WDTCON				;�رտ��Ź�
		
		LD			A,PORTB				;��PORTBֵ������
		
		CLRWDT
		STOP							;��������ģʽ
		
		NOP
		NOP								;���߻��Ѻ���Ӧ���жϺ�Ӵ˴���ʼ����
		CLRWDT
		
		SETB		WDTCON,0			;����ʹ�ܿ��Ź�
SLEEP_MODE_BACK:
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
INT_PB:
		CLRB		INTCON,RBIF			;���жϱ�־
		LD			A,PORTB				;��PB�ڼĴ���״̬
		LDIA		0FFH
		XORR		PORTA
		
INT_BACK:
		SWAPA		GPR1
		LD  		STATUS,A
		SWAPA		GPR0   				;�жϷ���
		RETI 				