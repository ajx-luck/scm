;ֻ�õ�1���жϣ�TMR1�ж�ÿ125US��һ��				        														
INT_TMR1:		
		CLRB         FLAGS,4		;BANK0
		CLR 		 INT_FLAG
		INCR		 TCOUNT
	;	LDIA         01H            ;�����ж�ʱ��
	;	XORR         PORTA		
	    SZB          F_L_EN         ;�ֵ翪�����
		JP           OUT_1
		SZB          F_ON           ;�����򿪵������
		JP           OUT_1
		SZDECR       CNT_a          ;255*0.125��32MS
		JP           END_TMR1		
		INCR         CNT_b           	
		LDIA         200            ;172*0.032=5.5S  ���û�п���,������
		XORA         CNT_b
		SNZB         FLAGS,Z
		JP           END_TMR1
OUT_0:
        CLR          CNT_b
		CLR          KEY_VAL
        CLRB         F_ONOFF
		JP           END_TMR1		
		
OUT_1:		         
	    SNZB         KEY_VAL,1      ;����һ�Σ���ʱ500MS
		JP           END_TMR1
		SZDECR       R16            ;255*0.125=32MS
		JP           END_TMR1
		INCR         R17
		LDIA         32             ;1S���û�йػ�,������
		XORA         R17
		SNZB         FLAGS,Z
		JP           END_TMR1
		CLRB         KEY_VAL,1      ;1S,���һ�μ���־	
		CLR          R17		        			  	 
END_TMR1:	
    ;   SZDECR       R20		   ;255*128us=32.768MS
    ;	JP           END_TMR1a	
	;	SZDECR       R21           ;32.768*255=8.388S
	;	JP           END_TMR1a
	;	SZDECR       R22           ;8.388*72=603S,10����
	;	JP           END_TMR1a
	;	SETB         S1_VAL,2      ;�ػ������־
			
END_TMR1a��		
    ;   LDIA		 .6		       ;TMR1���¸�ֵ
	;	ADDR	     TMR0																	
		RET					       ;���жϷ���		