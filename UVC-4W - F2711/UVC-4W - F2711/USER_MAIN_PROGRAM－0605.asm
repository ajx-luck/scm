
		#INCLUDE		SC8F2711B.H

	;	#INCLUDE		"Touch_Kscan_Library.h"


;ע������
;�Ĵ�����KEYF��KEYF1��
;��־λ��B_KEY_EN��B_KEY_LONG��B_KEY_UP��B_KEY_SLP��B_KEY_WAKE	
;ΪBANK0�Ŀռ䣬ʹ��ʱ��Ҫע��ҳ���л�

;**********************************************
;**********************************************

GPR0		EQU 		0EH	        ;�ж��ֳ������Ĵ���������BANK1,BANK0���üĴ���
GPR1		EQU 		0FH         ;�ж��ֳ������Ĵ���������BANK1,BANK0���üĴ���
TCOUNT		EQU 		?			;ϵͳ��ʱ��125US��1

TIME		EQU			?
WORK		EQU			?
F_ONOFF		EQU			WORK,0
F_W_EN      EQU         WORK,1      ;��������״̬
F_L_EN      EQU         WORK,2      ;�ֵ繤����־
F_Y_EN      EQU         WORK,3      ;�͵�ѹ��־

KEY_VAL     EQU         ?
S1_VAL      EQU         ?
;����RAM
TEMP            EQU			?           ;   
;C18             EQU		?
;S14             EQU		?
;R15             EQU		?
;B16             EQU		?
S_STATUS        EQU		    ?
G17             EQU			?
COUNT       	EQU         ?
MODE_V          EQU         ?
;KEYF_OLD		EQU			?

;TIME1			EQU			?			;���߶�ʱ
;TIME2			EQU			?
M1_VAL          EQU			?           ;ģʽֵ
L1_VAL          EQU			?           ;����ֵ

;R14             EQU	    ?
R16             EQU			?
R17             EQU			?
;R1A             EQU		?

CNT0            EQU			?
CNT1            EQU			?
CNT2            EQU			?
CNT3            EQU			?
CNT_L           EQU			?
CNT_H           EQU			?
CNT_a           EQU			?         ;BZ
CNT_b           EQU			?         ;BZ
CNT_c           EQU			?
R2A             EQU			?
R2B             EQU			?
R2C             EQU			?
;R2D             EQU			?

;PWML			EQU			?			;�������TG2��PULSE
;TEMP_H			EQU			?			;��ʱ�Ĵ���
;TEMP_L			EQU			?
;SEC0		    EQU			?			;LED��ģʽ
;COLOR           EQU			?       ;�Ƶ�ɫֵ
R20             EQU			?
R21             EQU			?
R22             EQU			?
MM1             EQU			?
MM2             EQU			?
B               EQU			?
DEL_10MS_L      EQU			?
DEL_10MS_H      EQU			?
MM1_SAVE        EQU			?
;KEY_TIME        EQU			?
;KEY_OPT         EQU			?
;KEY_PRE         EQU			?
TIME_L          EQU			?
TIME_H          EQU			?    
RECNT           EQU			?
RDATAL          EQU			?
RDATAH          EQU			?
RUSERL          EQU			?
RUSERH          EQU			?
RKEY            EQU			?
OUT_            EQU			2
IR              EQU         1
;--------------------------------------------
;����RAM
;**************************************

;;********************************************************
;*********************************************************
		ORG 		000H
   		JP  		START

		ORG 		001H
		JP  		INT_SERVICE
		
		ORG         0010H
		JP  		START
;--------------------------------------------
INT_SERVICE:
		LD  		GPR0,A			;�ж��ֳ�����
		SWAPR		GPR0
		SWAPA		FLAGS
		LD  		GPR1,A		
;--------------------------------------------
		CLRB        FLAGS,4		    ;BANK0
		CLR 		INT_FLAG
		INCR		TCOUNT		
		SZB         P0,0    	
		JP          KEY_BACK_0
		SZB         S1_VAL,0        ;�Ƿ񳤰�û�ſ�
		JP          INT_BACK
		SZDECR      CNT0            ;255*0.125=32MS
		JP          INT_BACK
		INCR        CNT1
		LDIA        .140;.25        ;156*32=5S
		SUBA        CNT1
		SNZB        FLAGS,C
		JP          INT_BACK
		SETB        KEY_VAL,7
		SETB        S1_VAL,0        ;�г���һ�α�־
		CLR         CNT_L
		JP          INT_BACK	
KEY_BACK_0:
        CLR         CNT0
		CLR         CNT1
		CLR         S1_VAL		     ;�����ٳ�����      		        
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
		CLR 		P0
		CLR			P1
		LDIA		07H
		LD			P2,A
		
		LDIA		B'10100010'     ;P0,6;P0,4���,P0,5��������
		LD  		P0CH,A	
		
		LDIA		B'11101000'		;P0,0Ϊ����,P0,1=SW,P02-OUT,P0,3=AD
		LD  		P0CL,A	  
		     
		LDIA		B'10000010'     ;P1,6�����P1,5����������,P1,4-OUT
		LD  		P1CH,A
		LDIA  		B'10101010'
		LD  		P1CL,A

		LDIA		B'10010010'		;P2.0�������
		LD  		P2C,A			;P2.2 Ϊ��ˮ/������ѡ��
		CLRB        P2,2
		CLR         SYS_GEN
		CLR         INT_EN
		LDIA        00H
		OPTION
;-----------��Ĵ��� BANK0--------------------------
CLR_RAM:								;���Ѱַ�������RAM
		CLRB        FLAGS,4             ;BANK0
		LDIA		0FH
		LD  		MP,A
		CLRWDT
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
		CLRWDT
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
		LD  		CNT0,A
INIT_LOOP:								;�ϵ���ʱ3*256*256*5/2=500MS
		CLRWDT
		SZDECR	    CNT0
		JP  		INIT_LOOP
;---------------------------------------------
        JP   		WORK_SLEPP
;-----------��ʼ��RAM-------------------------
INIT_RAM:
        CLRB         FLAGS,4            ;BANK0
 		CLR			 PWM8DATA
		CLR			 PWM10DATA
		CLR			 TABLE_SPL	        ;
		CLR			 BUZCON
		CLR			 INT_EXT		    ;
		CLR			 TABLE_SPH	        ;

		LDIA		 .6
		LD  		 TMR1,A				; TMR1��ֵ�趨
		LDIA		 80H				; TMR1�趨Ϊ��ʱ������Ƶ��1��1
		LD  		 TMR1C,A
		SETB		 TMR1C,4			; TMR1����
		
		LDIA		 01H
		LD  		 SYS_GEN,A			;�ж�ʹ�ܣ�ADʹ��
		LDIA		 08H				;TMR1�ж�ʹ�ܣ������жϹر�
		LD  		 INT_EN,A   
		JP           M_LOOP   				
;*****************************************
SD_QL:  ;���ֵ�
        CLRB         FLAGS,4            ;BANK0 
		CLRB         KEY_VAL,7
	    CLR          M1_VAL
		CLR          CNT_c
	    SETB         F_ONOFF
        CLRB         KEY_VAL,1
		LDIA         B'01000000'        ;P0,6
        XORR         P0                 ;�ֵ�
		JP           M_LOOP
;*****************************************
XD_QL:  ;������
        CLRB         FLAGS,4            ;BANK0 
		SETB         F_ONOFF
        CLRB         KEY_VAL,1
		CLRB         KEY_VAL,7 
		CLR          M1_VAL       
		LDIA         B'00000100'        ;P2,2
        XORR         P2                 ;���� 
		SNZB         P2,2
		SETB         F_W_EN             ;����ʹ��
		SZB          P2,2
		CLRB         F_W_EN 
		JP           M_LOOP    	
;*****************************************		
M_LOOP:		
        LDIA         .15               ;����а������Ͳ�ѯ7.5S
		LD           CNT_b,A		   ;15*0.5=7.5S
DJ_01:
  	    LDIA         100;              ;��ʱ500MS  ����1��
		LD           CNT_a,A
		LDIA         B'00000100'       ;P0,2��ѭ�����ڣ�500MS
		XORR         P0
DJ_02:;����	
        CLR 		 TCOUNT	
	;	LDIA         B'00000100'       ;P0,2��ѭ�����ڣ�500MS
	;	XORR         P0
		CALL         DELAY5MS	
		SZB          KEY_VAL,7          ;�г�����
		JP           XD_QL		
		SZB          KEY_VAL,1
		JP           SJ_02		
		SNZB         M1_VAL,0           ;�Ƿ���һ��								
	    JP           M_LOOP1
		SZDECR       CNT_c              ;255*5=1.275S
		JP           M_LOOP1
		CLR          M1_VAL             ;������ʱ�˳�
		JP           M_LOOP1
SJ_02: 
        CLRB         KEY_VAL,1	
		INCR         M1_VAL             ;˫������
		SZB          M1_VAL,1           ;��˫���̰���		
		JP           SD_QL	
		JP           M_LOOP1	
M_LOOP1:	
        INCR         CNT3
		SNZB         P0,1                ;б����
		JP           M_LOOP2
		LDIA         200;40             ;40*5=200MS��ѯһ��
		XORA         CNT3
		SNZB         FLAGS,Z
		JP           AD_TEST   	
		SZB          F_W_EN             ;��ѯ����״̬��ʲô��
		CLRB         P2,2
		CLR          CNT3
		JP           AD_TEST
M_LOOP2:				
		CLR          CNT3
		SETB         P2,2               ;����OFF
		JP           AD_TEST
AD_TEST:	       	
		CALL         Charge_0			
		INCR         CNT2
		LDIA         100                ;100*5MS=500MS
		XORA         CNT2
		SZB          FLAGS,Z
		JP           XD_ON_01
		SNZB         F_Y_EN
		SETB         P2,0               ;�����
		JP           XD_BACK
XD_ON_01:
		CLR          CNT2               ;���¼���
		LDIA         B'00000000'	
		SZB          F_Y_EN
		LDIA         B'00000001'        ;P2,0 ��� �Ƿ���
		XORR         P2
		JP           XD_BACK				 			
XD_BACK:
        SZDECR       CNT_a
		JP           DJ_02              ;500MS
	;	CLRB         KEY_VAL,1          ;
		SZDECR       CNT_b
		JP           DJ_01              ;15*0.5=7.5S
		CLR          M1_VAL
        SZB          F_W_EN             ;�Ƿ��ڹ�����������	
        JP           M_LOOP	
		SZB          P0,6               ;�ֵ�����
		JP           M_LOOP
		CLRB         F_ONOFF
		JP           WORK_SLEPP			
;*****************************************
;*****************************************
Charge_0:        
        CLRB         FLAGS,4
		CLRWDT
		LDIA		 B'11100000'		 ;P0,3=AD
		LD  		 P0CL,A
		SETB         SYS_GEN,ADC_EN      ;
        CALL         Delay_125us
		LDIA         B'00110000'         ;ѡ��AN3Ϊadת��,P0,3
        LD           ADCON,A             
        nop
        nop
		
        SETB         ADCON,CONV          ;CONV�½��ؿ�ʼת��
        NOP
		NOP
		NOP
        CLRB         ADCON,CONV          ;��ʼת��
AD_WAIT:
        SNZB         ADCON,EOC
		JP           AD_WAIT
		NOP
		LD           A,ADDATAH
		SUBIA        .86;.148;                 ;Լ6.2V  ;256/3.3*/86 
		SZB          FLAGS,C
		JP           SET_F1				
SET_F0:
        CLRB         F_Y_EN              ;���6��ѹ��־
		JP           AD_BACK
SET_F1:	
        SETB		 F_Y_EN	             ;���õ�6��ѹ��־	
        JP           AD_BACK
AD_BACK:		
        CLRB         SYS_GEN,ADC_EN      ;��AD 
	    RET 		 00H 		
;*************************************		
Delay_125us:		
        LDIA        .20
		LD          COUNT,A
D2:									
		CLRWDT
		SZDECR		COUNT
		JP		    D2		
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
				
;********************************************
WORK_SLEPP:
		SZB			F_ONOFF
		CLR			TIME
		CLRWDT                          ;�ػ�500MSϵͳ��������
		INCR		TIME
		LDIA		5					;2.5MS*200=500MS
		SUBA		TIME
		SNZB		FLAGS,C
        JP          WORK_SLEPP
		CLR			TIME
		
		CLR         INT_EN
		CLR         SYS_GEN
        CLR         FLAGS
		CLR         KEY_VAL
		CLR         S1_VAL
		CLR         CNT_a
		CLR         CNT_b
		CLR         CNT_c
		CLR         CNT0
		CLR         CNT1
		CLR         R16
		CLR         R17
		CLRB        FLAGS,4            ;BANK0
 		CLR			PWM8DATA
		CLR			PWM10DATA
		CLR			TABLE_SPL	        ;
		CLR			BUZCON
		CLR			INT_EXT		    ;
		CLR			TABLE_SPH	        ;
	;	CLR         MM1

USER_ENTER_SLEEP:
		;��������ǰ�ص����й���ģ��,�Խ������ߵ���
		
		CLR         FLAGS
		CLR         CNT_a
		CLR         CNT_b
		CLR			ADCON
		CLR			COMPCON
		CLR			BUZCON
	;	CLR			KEY_C
	;	CLR			KEY_C1
		CLR			PWM8CON
		CLR			PWM10CON
	;	SNZB        P0,0
	;	JP          USER_ENTER_SLEEP
	;	CLR         WORK
		
		;��������ǰ,����̶����ߵ�ƽ
	;	CLRB 		P0,4
		CLRB		P0,6
		CLRB        P0,7
	;	SETB        P2,2
		LDIA		B'10101010'     ;P0,6;P0,4���,P0,5 AD
		LD  		P0CH,A	
		
		LDIA		B'11101000'		;P0,0Ϊ����,P0,1=SW OUT,P02-OUT,P0,3=AD
		LD  		P0CL,A	  
		     
		LDIA		B'10010010'    ;P1,6�����P1,5-����,P1,4-OUT
		LD  		P1CH,A
		LDIA  		B'10101010'
		LD  		P1CL,A

		LDIA		B'10010010'		;P2.0�������
		LD  		P2C,A			;P2.2 Ϊ��ˮ/������ѡ��
		CLR         P0
		CLR         P1	
		LDIA		0FH
		LD			P2,A
		LD          A,P0            ;˯��ǰ��һ��P0
		CLRWDT
		STOP
		CLRWDT
		CLR         FLAGS
		CLR         CNT0 
		CLR         CNT1		
		LDIA		B'11100000'		;P0,0Ϊ����,P0,1=SW OUT,P02-OUT,P0,3=AD
		LD  		P0CL,A   
KEY_START:	
        SZB         P0,0       
	    JP          USER_ENTER_SLEEP
		JP          INIT_RAM 
;********************************************
	;	#INCLUDE    "INT_TMR1.ASM"
		#INCLUDE    "KEY-01.ASM"
;********************************************
		END

