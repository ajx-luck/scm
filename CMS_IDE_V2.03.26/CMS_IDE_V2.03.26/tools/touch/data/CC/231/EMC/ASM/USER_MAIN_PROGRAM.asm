
		#INCLUDE		CMS89F6285B.H

		#INCLUDE		"Touch_Kscan_Library.h"
		#INCLUDE		"SendTouchKey_89F62x.h"
		
;**********************************************
;**********************************************


GPR0		EQU 		?	       
GPR1		EQU 		?        
TCOUNT		EQU 		��	
TEMP        EQU         ?
TEMP1		EQU 		?
COUNT       EQU         ?

KFLAG		EQU 		?

KEYF_OLD	EQU			?
KEYF1_OLD	EQU			?

;--------------------------------------------
;����RAM
;**************************************
;*********************************************************
		ORG 		00H

   		JP  		START
		ORG 		04H
;***************************************************

        LD  		GPR0,A			;�ж��ֳ�����
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
		
		LDIA		00H
		LD  		PORTE,A
		LDIA		00H	
		LD  		TRISE,A
		LDIA		00H
		LD  		PORTE,A

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
		SUBIA		07FH				;20-7F,A0-FF,120-17F,1A0-1FF
		SNZB 		STATUS,Z
		JP  		CLR_RAM_LOOP
		SZB 		FSR,7
		JP  		CLR_RAM_H
		LDIA		20H
		SZB 		STATUS,IRP
		LDIA		18H
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
		LD  		PR2,A			;TMR2���ó�250US
		LDIA		B'00000100'
		LD  		T2CON,A
		LDIA		02H
		LD			PIE1,A
		LDIA		0C0H
		LD  		INTCON,A		;��ʱ2�ж�ʹ��
		
;********************************************
;********************************************
;********************************************
MAIN:
		LDIA		.32					;125us*20=2.5msһ����ѭ��
		SUBA		TCOUNT
		SNZB		STATUS,C
		JP  		MAIN
;********************************************
		CLR 		TCOUNT
		CLRWDT
;********************************************
;********************************************
MAIN_SUB:
		CALL		SET_SYS
		CALL  		KSCAN           ;����ɨ�����
		
		#if (CMS_DEBUG_MODE == 1)
			CALL	SEND_TOUCHKEY	;����������	
		#endif	
		
		SNZB		TK_SLEEP_FLAG,KeyOnceOver
		JP			MAIN_SUB_NEXT
		SNZB		TK_SLEEP_FLAG,KeyOnceHave
		JP			MAIN_SUB_NEXT
		NOP;����
MAIN_SUB_NEXT:
		CALL        MAINK			;�����������
		JP  		MAIN
;********************************************
;ϵͳ�Ĵ�������
;********************************************
SET_SYS:		
 	    LDIA		00H
		LD  		TRISA,A
		LD  		TRISB,A
		LD  		TRISC,A			
		LD  		TRISE,A
		RET
;*****************************************
;����KEYF��KEYF1�ж���û�а���
;���ж��������ʱ�򽫴����־λ "TK_FLAG,B_KERR" ��1
;*****************************************
MAINK:
		LD			A,KEYF
		#if	C_KCOUNT > 8
		ORA			KEYF1
		#endif
		SZB			STATUS,Z
		JP			MAINK_NO
		
		LD			A,KEYF
		XORA		KEYF_OLD		;��ͬ
		SZB			STATUS,Z
		JP			MAINK_HIGH
		
		LD			KEYF_OLD,A
		
		LDIA		10H
		SNZB		KEYF_OLD,0
		JP			$+3
		SZB			KEYF,0
		XORR		PORTA
		
		LDIA		80H
		SNZB		KEYF_OLD,1
		JP			$+3
		SZB			KEYF,1
		XORR		PORTA
		
		LDIA		04H
		SNZB		KEYF_OLD,2
		JP			$+3
		SZB			KEYF,2
		XORR		PORTE
		
		LDIA		20H
		SNZB		KEYF_OLD,3
		JP			$+3
		SZB			KEYF,3
		XORR		PORTE
		
		LDIA		08H
		SNZB		KEYF_OLD,4
		JP			$+3
		SZB			KEYF,4
		XORR		PORTA
		
		LDIA		01H
		SNZB		KEYF_OLD,5
		JP			$+3
		SZB			KEYF,5
		XORR		PORTE
		
		LDIA		08H
		SNZB		KEYF_OLD,6
		JP			$+3
		SZB			KEYF,6
		XORR		PORTE
		
		LDIA		40H
		SNZB		KEYF_OLD,7
		JP			$+3
		SZB			KEYF,7
		XORR		PORTE

		LD			A,KEYF
		LD			KEYF_OLD,A
MAINK_HIGH:
		#if	C_KCOUNT > 8
		LD			A,KEYF1
		XORA		KEYF1_OLD
		SZB			STATUS,Z
		JP			MAINK_BACK
		
		LD			KEYF1_OLD,A
		
		LDIA		02H
		SNZB		KEYF1_OLD,0
		JP			$+3
		SZB			KEYF1,0
		XORR		PORTA
		
		;LDIA		02H
		;SNZB		KEYF1_OLD,1
		;JP			$+3
		;SZB			KEYF1,1
		;XORR		PORTD
		
		;LDIA		10H
		;SNZB		KEYF1_OLD,2
		;JP			$+3
		;SZB			KEYF1,2
		;XORR		PORTD
		
		;LDIA		80H
		;SNZB		KEYF1_OLD,3
		;JP			$+3
		;SZB			KEYF1,3
		;XORR		PORTD
		
		LD			A,KEYF1
		LD			KEYF1_OLD,A
		#endif
		JP			MAINK_BACK
MAINK_NO:
		CLR			KEYF_OLD
		CLR			KEYF1_OLD
MAINK_BACK:
        RET
;********************************************
;���ð������ļ�
;********************************************
KSCAN��
		#INCLUDE	"CheckTouchKey_EMC_6285B.lib"
;********************************************

#if (CMS_DEBUG_MODE == 1)
		#INCLUDE 	"SendTouchKey_89F62x.asm"
#endif

		END
