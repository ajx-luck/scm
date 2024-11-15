
		#INCLUDE		CMS79FT616.H

		#INCLUDE		"Touch_Kscan_Library.h"
		#include		"SendTouchKey_79FT61x.h"
;**********************************************
;**********************************************


GPR0		EQU 		?	       
GPR1		EQU 		?        
TCOUNT		EQU 		��	
TEMP        EQU         ?
COUNT       EQU         ?

KEYF_OLD	EQU			?

SleepTimecL	EQU			?
SleepTimecH	EQU			?



COM0	EQU		PORTA,1
COM1	EQU		PORTB,7

SEG0	EQU		PORTB,0
SEG1	EQU		PORTB,1
SEG2	EQU		PORTB,2
SEG3	EQU		PORTB,3
SEG4	EQU		PORTB,4
SEG5	EQU		PORTB,5
SEG6	EQU		PORTB,6

SEG7	EQU		PORTA,0
SEG8	EQU		PORTA,6
;--------------------------------------------
;����RAM
;**************************************
;*********************************************************
		ORG 		00H

   		JP  		START
		ORG 		04H
;***************************************************

        LD  		GPR0,A			;�ж��ֳ���9��
		SWAPR		GPR0
		SWAPA		STATUS
		LD  		GPR1,A
;********************************************
INT_TMR2:
		CLR 		PIR1			;���ж���Ӧ��־λ
		INCR		TCOUNT
;********************************************
INT_EXIT:
		SWAPA		GPR1
		LD  		STATUS,A
		SWAPA		GPR0
		RETI
;********************************************

;********************************************
;********************************************
		
;********************************************
START:
		NOP
		CLRWDT
;-----------��ʼ��I/O------------------------
		LDIA		071H
		LD			OSCCON,A
		
		LDIA		00H
		LD  		PORTA,A		
		LDIA		00H
		LD  		TRISA,A
	    LDIA		00H
		LD  		PORTA,A	
		
		LDIA		00H		
		LD  		PORTB,A
		LDIA		00H	
		LD  		TRISB,A
		LDIA		00H		
		LD  		PORTB,A	
		
		LDIA		00H
		LD  		PORTC,A
		LDIA		00H		
		LD  		TRISC,A			
	    LDIA		00H
		LD  		PORTC,A

		CLR			INTCON
;-----------��Ĵ���----------------------------
		CLRB		STATUS,IRP
CLR_RAM��
		LDIA		1FH					;��20H��ʼ
		LD  		FSR,A
CLR_RAM_LOOP
		INCR		FSR
		CLR 		INDF
		LDIA		07FH
		ANDA		FSR
		SUBIA		07FH				;20-7F,A0-FF,120-17F
		SNZB 		STATUS,Z
		JP  		CLR_RAM_LOOP
		SZB 		FSR,7
		JP  		CLR_RAM_H
		LDIA		20H
		SZB 		STATUS,IRP
		JP			CLR_RAM_BACK		;��4ҳ������
		ADDR		FSR
		JP  		CLR_RAM_LOOP
CLR_RAM_H:						
		SZB 		STATUS,IRP			;�ж��Ƿ��Ѿ��ǵ�3-4BANK
		JP  		CLR_RAM_BACK		;�Ѿ��ǵ�3-4BANK,��RAM����
		SETB		STATUS,IRP			;����3-4BANK,����BANK��־λ����ʼ��3-4BANK��RAM
		JP  		CLR_RAM
CLR_RAM_BACK:
		CLRB		STATUS,IRP
;----------------------------------------------
INIT_LOOP:						;�ϵ���ʱ9*256*256/2=300MS
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		SZDECR		COUNT
		JP  		INIT_LOOP
		CLRWDT
	
		SZDECR		TEMP
		JP  		INIT_LOOP
;************************************************
;-----------------------------------------------
INIT_RAM:
		LDIA		.250			;8M��125US
		LD  		PR2,A
		LDIA		B'00000100'
		LD  		T2CON,A
		LDIA		02H
		LD			PIE1,A
		LDIA		0C0H
		LD  		INTCON,A		;��ʱ2�ж�ʹ��
		LDIA		0X01
		LD			WDTCON,A
		;CLR			OPTION_REG
		CLRWDT
		LDIA		0X07
		ORR			OPTION_REG
		CLR			TMR0
		LDIA		0X08
		ORR			OPTION_REG
		CLRWDT
		LDIA		B'00001011'
		LD			OPTION_REG,A
		CLRWDT
		
		SETB		COM0
		CLRB		COM1
		
		SETB		SEG0
		SETB		SEG1
		SETB		SEG6
		SETB		SEG7
;********************************************
;********************************************
;********************************************
MAIN:
		LDIA		.20					;125us*20=2.5msһ����ѭ��
		SUBA		TCOUNT
		SNZB		STATUS,C
		JP  		MAIN
;********************************************
		CLR 		TCOUNT
		;CLRWDT
;********************************************
;********************************************
MAIN_SUB:
		CALL		SET_SYS
		CALL  		KSCAN           ;����ɨ�����	
		CALL        MAINK			;�����������
		CALL		SLEEPSET
		#IF (CMS_DEBUG_MODE == 1)
			CALL		SEND_TOUCHKEY
		#ENDIF
		JP  		MAIN
;********************************************
;ϵͳ�Ĵ�������
;********************************************
SET_SYS:		
 	    LDIA		00H
		LD  		TRISA,A
		LD  		TRISB,A
		LD  		TRISC,A
		LDIA		0X01
		LD			WDTCON,A
		CLRWDT
		LDIA		0X07
		ORR			OPTION_REG
		CLR			TMR0
		LDIA		0X08
		ORR			OPTION_REG
		CLRWDT
		LDIA		B'00001011'
		LD			OPTION_REG,A
		CLRWDT
		LDIA		.250			;8M��125US
		LD  		PR2,A
		LDIA		02H
		LD			PIE1,A
		LDIA		0C0H
		LD  		INTCON,A		;��ʱ2�ж�ʹ��
		LDIA		B'00000100'
		XORA		T2CON
		SZB			STATUS,Z
		RET
		LDIA		B'00000100'
		LD  		T2CON,A
		RET
;*****************************************
;����KEYF��KEYF1�ж���û�а���
;���ж��������ʱ�򽫴����־λ "TK_FLAG,B_KERR" ��1
;*****************************************
MAINK:
		LD			A,KEYF
		SZB			STATUS,Z
		JP			MAINK_NO
		
		LD			A,KEYF
		XORA		KEYF_OLD		;��ͬ
		SZB			STATUS,Z
		JP			MAINK_BACK
		LD			KEYF_OLD,A
		
		CLR			SleepTimecL
		CLR			SleepTimecH
		
		LDIA		01H
		SNZB		KEYF_OLD,0
		JP			$+3
		SZB			KEYF,0
		XORR		PORTB
		
		LDIA		02H
		SNZB		KEYF_OLD,1
		JP			$+3
		SZB			KEYF,1
		XORR		PORTB

		LDIA		04H
		SNZB		KEYF_OLD,2
		JP			$+3
		SZB			KEYF,2
		XORR		PORTB
		
		LDIA		08H
		SNZB		KEYF_OLD,3
		JP			$+3
		SZB			KEYF,3
		XORR		PORTB
		
		LD			A,KEYF
		LD			KEYF_OLD,A
		JP			MAINK_BACK
MAINK_NO:
		CLR			KEYF_OLD
MAINK_BACK:
        RET
;********************************************
;��������
;********************************************
SLEEPSET:
		INCR		SleepTimecL
		LDIA		.40				;100mS
		SUBA		SleepTimecL
		SNZB		STATUS,C
		JP			SLEEPSET_BACK
		CLR			SleepTimecL
		
		INCR		SleepTimecH
		LDIA		.20
		SUBA		SleepTimecH
		SNZB		STATUS,C
		JP			SLEEPSET_BACK
		CLR			SleepTimecH
SLEEP_LOOP:							;���߻��ѵȴ�
		CLRWDT
		LDIA		0X01
		LD			WDTCON,A
		CLR			TRISA
		CLR			TRISB
		CLR			TRISC
		CLR			PIE1
		CLR			INTCON
		CLR			INTCON
		CLR			T2CON
		SETB		KeySleepStr
		CALL		KSCAN;	ɨ�谴��
		SNZB		KeyOnceOver
		JP			SLEEP_LOOP
		CLRB		KeyOnceOver
		SZB			KeyOnceHave
		JP			SLEEP_WAKEUP
		CALL		SLEEPON
		JP			SLEEP_LOOP
SLEEP_WAKEUP:
		CALL		SET_SYS
		CLRB		KeySleepStr
SLEEPSET_BACK:
		RET
;********************************************
;���������ӳ���
;********************************************
SLEEPON:
		CLR			PIE2
		CLR			PIE1
		CLR			PIR1
		CLR			PIR2
		CLR			INTCON
		CLR			INTCON
		CLR			T2CON
		CLRWDT
		LDIA		0X07
		ORR			OPTION_REG
		CLR			TMR0
		LDIA		0X08
		ORR			OPTION_REG
		CLRWDT
		LDIA		B'00001011'
		LD			OPTION_REG,A
		CLRWDT
		LDIA		0X01
		LD			WDTCON,A
		CLR			PORTA
		CLR			PORTB
		CLR			PORTC
		CLR			TRISA
		CLR			TRISB
		CLR			TRISC
		CLRWDT
		STOP
		NOP
		NOP
SLEEPON_BACK:
		RET
;********************************************
;���ð������ļ�
;********************************************
KSCAN:
		#INCLUDE	"CMS_CheckTouch_79FT61x_LP_V1.00.Lib"
;********************************************
;********************************************
#if (CMS_DEBUG_MODE == 1)
		#INCLUDE 	"SendTouchKey_79FT61x.asm"
#endif
;********************************************
;********************************************
;********************************************
		END

