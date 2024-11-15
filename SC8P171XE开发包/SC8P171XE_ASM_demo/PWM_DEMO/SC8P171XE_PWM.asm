;-------------------------------------------

;�������ƣ�PWMģʽ����
;���ڰ汾��2021/1/15 <V1.1>

;��ע����PWM��Ϊʾ��

;*��˾��ַ www.mcu.com.cn
;					WWW.SCMCU.COM
;-------------------------------------------
;PWM���� = [(PWMT)+1]*(1/Fosc)*(CLKD/V��Ƶֵ)
;������ = (PWMDX(9:0)+1)*(1/Fosc)*(CLKD/V��Ƶֵ)
;���������ʾ�������� = [(511)+1]*(1/8)*(1) 
;					  = 64us
;				 ������ = (128*(1/8)*(1)
;						  = 16us

#INCLUDE	SC8P1712E.H

GPR0		EQU			?				;�����жϷ����б���ACC
GPR1		EQU			?				;�����жϷ����б���STATUS
WORK		EQU			?				;
	B_MainLoop	EQU	WORK,0	;���붨ʱ�жϱ�־λ
DELAYCNT	EQU		?				;��ʱ������
PWMBUF		EQU		?

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
		
		LDIA		.250				;����ֵ
		LD			PR2,A
		
		CLRB		PIR1,TMR2IF			;���жϱ�־λ
		
		LDIA		04H					;����Timer2��Ԥ��ƵֵΪ1�����Ƶ��Ϊ1:1
		LD			T2CON,A
		
		SETB		PIE1,TMR2IE			;����Timer2�ж�
		LDIA		0C0H				;��������δ�����ε��жϡ������ж�
		LD			INTCON,A
		
		LDIA		B'00000011'			;ѡ����ΪPWM��PB1,PB0����Ϊ����
		LD			TRISB,A
		
		LDIA		B'00000100'			;PWMѡ��ʱ��ԴΪFosc/1,PWM0����
		LD			PWMCON,A
		LDIA		0FFH
		LD			PWMTL,A				;
		LDIA		01H
		LD			PWMTH,A				;����ѡ��Ϊ01FF��������Ϊ��511+1��*1/8M=64uS�����ڵ�ʱ�ӷ�Ƶ��PWMCONѡ��
								
		LDIA		01FH
		LD			PWMD0L,A			;ѡ��PWM0����Ϊ��31+1��*1/8M=4uS,��ռ�ձ�Ϊ1/16
		LDIA		07FH
		LD			PWMD1L,A			;ѡ��PWM1����Ϊ��127+1��*1/8M=16uS,��ռ�ձ�Ϊ1/4
		LDIA		00H					;����PWM�����λ
		LD			PWMD01H,A			;����PWM1,PWM2��ռ�ձȣ���ֵ���ܳ������ڣ�����Ϊ100%���
    
		CLRB		PIR1,PWMIF          ;����PWMIF�жϱ�־λ
		LDIA		B'00000111'
		LD			PWMCON,A			;PWMѡ��ʱ��ԴΪFosc/1,PWM0��������PWM0,PWM1ʹ��
		LDIA		00H
		LD			TRISB,A				;ѡ���PB1,PB0����Ϊ���
MAIN:									;������
		SNZB		B_MainLoop
		JP			MAIN
		CLRB		B_MainLoop
		CLRWDT
		INCR		DELAYCNT
		LDIA		.128				;16mS��PWM0ռ�ձȼ�һ
		SUBA		DELAYCNT
		SNZB		STATUS,C
		JP			MAIN
		CLR			DELAYCNT
		INCR		PWMBUF
		LD			A,PWMBUF
		LD			PWMD0L,A
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
INT_TMR2:
		CLRB		PIR1,TMR2IF			;���жϱ�־
		SETB		B_MainLoop
		
INT_BACK:
		SWAPA		GPR1
		LD  		STATUS,A
		SWAPA		GPR0   				;�жϷ���
		RETI 		