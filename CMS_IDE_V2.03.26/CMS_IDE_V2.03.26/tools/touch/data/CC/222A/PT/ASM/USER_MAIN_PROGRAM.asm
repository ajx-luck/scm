
		#INCLUDE		CMS79F623.H

		#INCLUDE		"Touch_Kscan_Library.h"
		#include		"SendTouchKey_79F623.h"
;**********************************************
;**********************************************
Buz			EQU		PORTB,4

GPR0		EQU 		?
GPR1		EQU 		?
TCOUNT		EQU 		?
TEMP        EQU         ?
TEMP1		EQU 		?
COUNT       EQU         ?

KFLAG		EQU 		?

KEYF_OLD	EQU			?
KEYF1_OLD	EQU			?

BUZTIMEH	EQU			?
BUZTIMEL	EQU			?
RBEEP		EQU			?
RBEEPF		EQU			RBEEP,0
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
BUZ_SET:
		SNZB		RBEEPF
		JP			BUZ_SET_BACK
		LDIA		0X10
		XORR		PORTB
		SZDECR		BUZTIMEL
		JP			BUZ_SET_BACK
		SZDECR		BUZTIMEH
		JP			BUZ_SET_BACK
		CLRB		Buz
		CLRB		RBEEPF
BUZ_SET_BACK:
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
		
		CLR			INTCON
		CLR			OPTION_REG
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
		LDIA		18H					;��ǰ��7FH������20H����ʼ��A0-FF
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
INIT_LOOP:						;�ϵ���ʱ9*256*256/4=150MS(16M)
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
		LDIA		.125			;16M��125US
		LD  		PR2,A			;TMR2���ó�125US
		LDIA		B'00000101'
		LD  		T2CON,A
		LDIA		02H
		LD			PIE1,A
		LDIA		0C0H
		LD  		INTCON,A		;��ʱ2�ж�ʹ��
		LDIA		.2
		LD			BUZTIMEH,A
		CLR			BUZTIMEL
		SETB		RBEEPF
;********************************************
;********************************************
;********************************************
MAIN:
		LDIA		.32					;125us*32=4.0msһ����ѭ��
		SUBA		TCOUNT
		SNZB		STATUS,C
		JP  		MAIN
;********************************************
		CLR 		TCOUNT
;********************************************
;********************************************
MAIN_SUB:
		CALL		SET_SYS
		CALL  		KSCAN           ;����ɨ�����
		CALL        MAINK			;�����������
		#IF (CMS_DEBUG_MODE == 1)
			CALL		SEND_TOUCHKEY
		#ENDIF
		JP  		MAIN
;********************************************
;ϵͳ�Ĵ�������
;********************************************
SET_SYS:
		CLRWDT
		LDIA		01H
		LD			WDTCON,A
 	    LDIA		00H
		LD  		TRISA,A
		LD  		TRISB,A
		LDIA		071H
		LD			OSCCON,A
		CLR			OPTION_REG
		LDIA		02H
		LD			PIE1,A
		LDIA		.125			;16M��125US
		LD  		PR2,A			;TMR2���ó�125US
		LDIA		0C0H
		LD  		INTCON,A		;��ʱ2�ж�ʹ��
		LDIA		B'00000101'
		SUBA		T2CON
		SZB			STATUS,Z
		JP			SET_SYS_BACK
		LDIA		B'00000101'
		LD  		T2CON,A
SET_SYS_BACK:
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
		
		LDIA		.2
		LD			BUZTIMEH,A
		CLR			BUZTIMEL
		SETB		RBEEPF
		
		SNZB		KEYF_OLD,0
		JP			MAINK_KEY2
		SNZB		KEYF,0
		JP			MAINK_KEY2
		LDIA		02H
		XORR		PORTA
MAINK_KEY2:
		SNZB		KEYF_OLD,1
		JP			MAINK_KEY3
		SNZB		KEYF,1
		JP			MAINK_KEY3
		LDIA		01H
		XORR		PORTA
MAINK_KEY3:
		SNZB		KEYF_OLD,2
		JP			MAINK_KEY4
		SNZB		KEYF,2
		JP			MAINK_KEY4
		LDIA		20H
		XORR		PORTB
MAINK_KEY4:
		SNZB		KEYF_OLD,3
		JP			MAINK_KEY_END0
		SNZB		KEYF,3
		JP			MAINK_KEY_END0
		LDIA		40H
		XORR		PORTA
MAINK_KEY_END0:
		LD			A,KEYF
		LD			KEYF_OLD,A
MAINK_HIGH:
		#if	C_KCOUNT > 8
		LD			A,KEYF1
		XORA		KEYF1_OLD
		SZB			STATUS,Z
		JP			MAINK_BACK
		LD			KEYF1_OLD,A
		
		LDIA		.2
		LD			BUZTIMEH,A
		CLR			BUZTIMEL
		SETB		RBEEPF
		
		;SNZB		KEYF1_OLD,0
		;JP			MAINK_KEY_END1
		;SNZB		KEYF1,0
		;JP			MAINK_KEY_END1
		;LDIA		20H;LED8
		;XORR		PORTD
		;LDIA		.2
		;LD			BUZTIMEH,A
		;CLR			BUZTIMEL
		;SETB		RBEEPF
MAINK_KEY_END1:
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
        #INCLUDE	"CMS_CheckTouch_79F623_V1.00.lib"
;********************************************
#if (CMS_DEBUG_MODE == 1)
		#INCLUDE 	"SendTouchKey_79F623.asm"
#endif
;********************************************
		END

