;***************************************** 
MODE_0: ;1��һֱ�����������ر�      	
		CLRB        PORTB,3             ;LED��ָʾ
		CLRB        F_ONOFF             ;����ʱ
		SETB        S1_VAL,7            ;BI 1��
		CLR         CNT0
		CLR         CNT1				
XD_QL_01:		
		CALL        DELAY5MS           ;5MS
		SZB         KEY_VAL,1          ;�а���
		JP          WORK_OFF		   ;bibibi��ػ�	
		LDIA        B'00000110' 
		ANDA        PORTB
		XORIA       B'00000110'        ;PB1,PB2ȫ�Ǹ�
		SZB         STATUS,Z		
		JP          XD_01a             ;ȫ�Ǹ�
		JP          XD_01b             ;��ͬ
XD_01a:
        SNZB        PORTB,0
		SETB        S1_VAL,0           ;BI 2��
        SETB        PORTB,0            ;��������OFF
		INCR        CNT0
		LDIA        .25                ;60*6=300MS
		XORA        CNT0
		SNZB        STATUS,Z
		JP          XD_QL_01
		LDIA        B'00001000'        ;PORTB,3   ��
		XORR        PORTB
		CLR         CNT0
		JP          XD_QL_01
			
XD_01b:
        SZB         PORTB,0
		CLR         CNT0
	;	SETB        S1_VAL,7           ;BI 1��
        CLRB        PORTB,0            ;��������ON
		SETB        PORTB,3            ;��������
		JP          XD_QL_01		
;**********************************		
MODE_1: ;2����ʱ10����      	
		CLRB        PORTB,3             ;���������Ӧ����
		SETB        F_ONOFF             ;��ʱ
		SETB        S1_VAL,7            ;BI 1��
		CLR         CNT0
		CLR         CNT1		

XD_QL_02:		
		CALL        DELAY5MS           ;5MS
		SZB         KEY_VAL,1          ;�а���
		JP          WORK_OFF		   ;bibibi��ػ�	
		SZB         S1_VAL,2
		JP          WORK_OFF
		INCR        CNT0
		LDIA        .25                ;30*5=150MS
		XORA        CNT0
		SNZB        STATUS,Z
		JP          XD_02c
		LDIA        B'00001000'        ;PORTB,3   ��
		XORR        PORTB
		CLR         CNT0
XD_02c:		
		LDIA        B'00000110' 
		ANDA        PORTB
		XORIA       B'00000110'        ;PB1,PB2ȫ�Ǹ�
		SZB         STATUS,Z		
		JP          XD_02a             ;ȫ�Ǹ�
		JP          XD_02b             ;��ͬ
XD_02a:
        SNZB        PORTB,0
		SETB        S1_VAL,0           ;BI 2��
        SETB        PORTB,0            ;��������OFF
		JP          XD_QL_02
			
XD_02b:
        SZB         PORTB,0
		CLR         CNT0
	;	SETB        S1_VAL,7           ;BI 1��
        CLRB        PORTB,0            ;��������ON
		CLRB        PORTB,3            ;��������
		JP          XD_QL_02		
;***************************************
WORK_OFF:	
        SETB        PORTB,3
        CLR         WORK	
        SETB        S1_VAL,2           ;BIBIBI
		CALL        DELAY500MS
		CALL        DELAY500MS
		JP          WORK_SLEPP	
;*****************************************       		