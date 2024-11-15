
		#INCLUDE		CMS79F726.H

		#INCLUDE		"Touch_Kscan_Library.h"
		#INCLUDE 		"SendTouchKey_79F72x.h"
;**********************************************
;**********************************************
Led1		EQU			PORTA,0
Led2		EQU			PORTA,5
Led3		EQU			PORTA,7
Led4		EQU			PORTA,6
GPR0		EQU 		?	       
GPR1		EQU 		?        
TCOUNT		EQU 		��	
TEMP        EQU         ?
TEMP1		EQU 		?
COUNT       EQU         ?

KFLAG		EQU 		?

KEYF_OLD	EQU			?
KEYF1_OLD	EQU			?

DispData	EQU			?

TABLE_SPL_BUF		EQU		?
TABLE_SPH_BUF		EQU		?
TABLE_DATAH_BUF		EQU		?
FSR_BUF		EQU				?
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
		
		LD			A,TABLE_SPL
		LD			TABLE_SPL_BUF,A
		LD			A,TABLE_SPH
		LD			TABLE_SPH_BUF,A
		LD			A,TABLE_DATAH
		LD			TABLE_DATAH_BUF,A
		LD			A,FSR
		LD			FSR_BUF,A
;********************************************
INT_TMR2:
		CLR 		PIR1			;���ж���Ӧ��־λ
		INCR		TCOUNT
		CALL		KEY_CHECK
;********************************************
INT_EXIT:
		LD			A,TABLE_SPL_BUF
		LD			TABLE_SPL,A
		LD			A,TABLE_SPH_BUF
		LD			TABLE_SPH,A
		LD			A,TABLE_DATAH_BUF
		LD			TABLE_DATAH,A
		LD			A,FSR_BUF
		LD			FSR,A
		
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
		CLR			INTCON
		CLR			PIR1
		CLR			PIR2
		LDIA		01H
		LD			WDTCON,A
		CLR			OPTION_REG
		CLR			PIE1
		CLR			PIE2
		CLR			IOCB
		CLR			WPUA
		CLR			WPUB
		CLR			WPUC
		
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
		LDIA		20H					;��ǰ��7FH������20H����ʼ��A0-FF
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
INIT_LOOP:						;�ϵ���ʱ9*256*256/4=150mS��16M��
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
		LDIA		.125			;16M��125uS
		LD  		PR2,A			;TMR2���ó�125uS
		LDIA		B'00000101'
		LD  		T2CON,A
		LDIA		02H
		LD			PIE1,A
		LDIA		0C0H
		LD  		INTCON,A		;��ʱ2�ж�ʹ��
		CLR			PIE2
		LDIA		071H
		LD			OSCCON,A
		LDIA		01H
		LD			WDTCON,A
		CLRWDT
		CLR			OPTION_REG
;********************************************
;********************************************
;********************************************
MAIN:
		LDIA		.32					;125us*32=4msһ����ѭ��
		SUBA		TCOUNT
		SNZB		STATUS,C
		JP  		MAIN
;********************************************
		CLR 		TCOUNT
		CLRWDT
;********************************************
;********************************************
MAIN_SUB:
		CALL		Display
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
 	    LDIA		00H
		LD  		TRISA,A
		LD  		TRISB,A
		LD  		TRISC,A			
		LDIA		01H
		LD			WDTCON,A
		CLRWDT
		CLR			OPTION_REG
		LDIA		.125			;16M��125US
		LD  		PR2,A			;TMR2���ó�125US
		LDIA		02H
		LD			PIE1,A
		LDIA		B'00000101'
		XORA		T2CON
		SZB			STATUS,Z
		RET
		LDIA		B'00000101'
		LD  		T2CON,A
		RET
;********************************************
;��ʾ����
;********************************************
Display:
		LDIA		B'11100001'
		LD			PAHEN,A
		LDIA		B'00000010'
		LD			SEGCUR,A
		
		SZB			DispData,0
		SETB		Led1
		SNZB		DispData,0
		CLRB		Led1
		
		SZB			DispData,1
		SETB		Led2
		SNZB		DispData,1
		CLRB		Led2
		
		SZB			DispData,2
		SETB		Led3
		SNZB		DispData,2
		CLRB		Led3
		
		SZB			DispData,3
		SETB		Led4
		SNZB		DispData,3
		CLRB		Led4
Display_Back:
		RET
;*****************************************
;����KEYF��KEYF1�ж���û�а���
;"TK_FLAG,B_KERR" ��1����λ����������
;*****************************************
MAINK:
		LD			A,KEYF
		SZB			STATUS,Z
		JP			MAINK_NO
		
		LD			A,KEYF
		XORA		KEYF_OLD		;��ͬ
		SZB			STATUS,Z
		JP			MAINK_BACK
		
		LD			A,KEYF
		LD			KEYF_OLD,A
		
		SNZB		KEYF_OLD,0
		JP			$+3
		LDIA		01H
		XORR		DispData
		
		SNZB		KEYF_OLD,1
		JP			$+3
		LDIA		02H
		XORR		DispData
		
		SNZB		KEYF_OLD,2
		JP			$+3
		LDIA		04H
		XORR		DispData
		
		SNZB		KEYF_OLD,3
		JP			$+3
		LDIA		08H
		XORR		DispData
		JP			MAINK_BACK
MAINK_NO:
		CLR			KEYF_OLD
		CLR			KEYF1_OLD
MAINK_BACK:
        RET
;********************************************
;���ð����жϿ��ļ�
;********************************************
KSCAN:
        #INCLUDE	"CMS_CheckTouch_79F72x_V1.01.lib"
;********************************************
;���ð��������ļ�
;********************************************
KEY_CHECK:
        #INCLUDE	"CMS_CheckTouch_79F72x_Check_V1.01.lib"
;********************************************
#if (CMS_DEBUG_MODE == 1)
		#INCLUDE 	"SendTouchKey_79F72x.asm"
#endif
		END

