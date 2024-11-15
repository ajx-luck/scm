#INCLUDE		SC8F2811B.H

GPR0		EQU 		0EH	        ;�ж��ֳ������Ĵ���������BANK1,BANK0���üĴ���
GPR1		EQU 		0FH         ;�ж��ֳ������Ĵ���������BANK1,BANK0���üĴ���
TCOUNT		EQU 		?			;ϵͳ��ʱ��125US��1
LOOPFLAG	EQU			?
INTCOUNT	EQU			?
KEY00COUNT	EQU			?
KEY01COUNT	EQU			?
KEY06COUNT	EQU			?

R2A             EQU			?
R2B             EQU			?
R2C             EQU			?
;--------------------------------------------
;����RAM
;**************************************

;;********************************************************
;*********************************************************
		ORG 		00H
   		JP  		START
		ORG 		01H
		JP  		INT_SERVICE
;--------------------------------------------
INT_SERVICE:
		LD  		GPR0,A			;�ж��ֳ�����
		SWAPR		GPR0
		SWAPA		FLAGS
		LD  		GPR1,A		
;--------------------------------------------
		CLRB        FLAGS,4		    ;BANK0
		CLR 		INT_FLAG
		LDIA  		06H 
		LD  		TMR1,A
		INCR		TCOUNT
		INCR		INTCOUNT		
		JP          INT_BACK	
   		        
;--------------------------------------------							
INT_BACK:
		SWAPA		GPR1
		LD  		FLAGS,A
		SWAPA		GPR0			;�жϷ���
		RETI
;********************************************

;********************************************
;********************************************

;********************************************
START:
		NOP
		NOP
		CLRWDT								;�ϵ���WDT����Ҫ��
;-----------��ʼ��I/O-----------------------;����IO�ڵĳ�ʼ״̬
		NOP
		NOP
		NOP
		LDIA		018H				;P0.3 P0.4�����
		LD  		P0,A 
		LDIA		00H
		LD			A,P0
		CLR			P1
		CLR			P2
		
		LDIA		B'10010110'     ;P0.7�����P0,6����;P0,4���,P0,5����
		LD  		P0CH,A	
		
		LDIA		B'10010101'		;P0.0  ����  P0.1  ����  P0.2  ƽʱΪ�� P0.3  ����LED��
		LD  		P0CL,A	  
		     
		LDIA		B'10000010'    ;P1,6�����P1,5����������,P1,4-OUT
		LD  		P1CH,A
		LDIA  		B'10101010'
		LD  		P1CL,A

		LDIA		B'10010010'		;P2.0�������
		LD  		P2C,A			;P2.2 Ϊ��ˮ/������ѡ��
		
		LDIA		018H				;P0.3 P0.4�����
		LD  		P0,A 
		
;-----------��Ĵ��� BANK0--------------------------
CLR_RAM:								;���Ѱַ�������RAM
		CLRB        FLAGS,4             ;BANK0
		LDIA		0FH
		LD  		MP,A
CLR_LOOP:
		INCR		MP
		CLR 		IAR
		LDIA		07FH
		SUBA		MP
		SNZB		FLAGS,C
		JP  		CLR_LOOP
;***************��Ĵ��� BANK1************************
CLR_RAM_1:
        SETB        FLAGS,4             ;BANK1
		LDIA		02FH
		LD  		MP,A
CLR_LOOP_1:
		INCR		MP
		CLR 		IAR
		LDIA		07FH
		SUBA		MP
		SNZB		FLAGS,C
		JP  		CLR_LOOP_1
		
		CLR         08H
		CLR         0EH
		CLR         0FH
		CLR         25H
		CLR         26H
		CLR         27H
		CLR         2AH
		CLR         2BH
;-------------�ϵ���ʱ-----------------------
INIT_DELAY:
        CLRB        FLAGS,4
		LDIA		.0
		LD  		TCOUNT,A
INIT_LOOP:								;�ϵ���ʱ3*256*256*5/2=500MS
		CLRWDT
		SZDECR	    TCOUNT
		JP  		INIT_LOOP
;---------------------------------------------

;-----------��ʼ��RAM-------------------------
INIT_RAM:
        CLRB         FLAGS,4            ;BANK0
 		CLR			 PWM8DATA
		CLR			 PWM10DATA
		CLR			 TABLE_SPL	        ;
		CLR			 BUZCON
		CLR			 INT_EXT		    ;
		CLR			 TABLE_SPH	        ;

		CLRB  TMR1C,TON  ;��ֹ TMR1 ��ʱ������
		CLRB  INT_EN,EN_T1  ;��ֹ TMR1 �ж�
		CLRB  INT_FLAG,F_T1  ;���� TMR1 �ж������־λ
		LDIA  B'10000000' 
		LD  TMR1C,A  ;���� TMR1 Ϊ��ʱ��ģʽ����Ƶ�� 1:1
		LDIA  06H 
		LD  TMR1,A  ;���� TMR1 ��ֵ
		CLRB  INT_FLAG,F_T1  ;���� TMR1 �ж������־λ
		SETB  INT_EN,EN_T1  ;ʹ�� TMR1 �ж�
		SETB  SYS_GEN,INT_GEN  ;ʹ�� INT_GEN
		SETB  TMR1C,TON  ;ʹ�� TMR1 ��ʱ��
		


		
MAIN_LOOP:
		
		CALL         DELAY5MS           ;5MS
		
		
		


		JP			MAIN_LOOP
		
DELAY5MS:  
        CLRWDT
		LDIA         .40  ;40          ;40*0.125=5MS  
		XORA         TCOUNT
		SNZB         FLAGS,Z
		JP           DELAY5MS
		CLR 		 TCOUNT         ; 
		
KEYSCAN:
		SZB		P0,0			;Ϊ1��Ϊ������
		INCR	KEY00COUNT
		SZR		KEY00COUNT
		JP		KEY_INLOCK
		SZB		P0,1
		INCR	KEY01COUNT
		SZR		KEY01COUNT
		JP		KEY_INUNLOCK
		SZB		P0,6
		INCR	KEY06COUNT
		SZR		KEY06COUNT
		JP		KEY_OUTUNLOCK
		RET
KEY_INLOCK:							;�ڲ�����
		SZB		P0,0
		RET							;���ڰ���״̬��ֱ�ӷ���
		CLR		KEY00COUNT			;�ɿ�״̬��
		LDIA    40H				;����������P1.6
		ORR		P1
		LDIA	0F7H			;�ر��ⲿ������
		ANDR	P0
		

KEY_INUNLOCK:						;�ڲ�����

KEY_OUTUNLOCK:						;�ⲿ����
			
		
		RET		    00H

DELAY_50_MS:
		LDIA        40           ;20MS
		LD          R2A,A
L0b:
		LDIA        230          ;
		LD          R2C,A
L0a:                   
		CLRWDT
		SZDECR      R2C
		JP          L0a
		SZDECR      R2A
		JP          L0b
		RET		    00H