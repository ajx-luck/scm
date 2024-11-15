;只用到1个中断，TMR1中断每125US进一次				        														
INT_TMR1:		
		CLRB         FLAGS,4		;BANK0
		CLR 		 INT_FLAG
		INCR		 TCOUNT
	;	LDIA         01H            ;测量中断时间
	;	XORR         PORTA		
	    SZB          F_L_EN         ;手电开的情况
		JP           OUT_1
		SZB          F_ON           ;消毒打开的情况下
		JP           OUT_1
		SZDECR       CNT_a          ;255*0.125＝32MS
		JP           END_TMR1		
		INCR         CNT_b           	
		LDIA         200            ;172*0.032=5.5S  如果没有开机,是误触摸
		XORA         CNT_b
		SNZB         FLAGS,Z
		JP           END_TMR1
OUT_0:
        CLR          CNT_b
		CLR          KEY_VAL
        CLRB         F_ONOFF
		JP           END_TMR1		
		
OUT_1:		         
	    SNZB         KEY_VAL,1      ;按了一次，计时500MS
		JP           END_TMR1
		SZDECR       R16            ;255*0.125=32MS
		JP           END_TMR1
		INCR         R17
		LDIA         32             ;1S如果没有关机,是误触摸
		XORA         R17
		SNZB         FLAGS,Z
		JP           END_TMR1
		CLRB         KEY_VAL,1      ;1S,清第一次键标志	
		CLR          R17		        			  	 
END_TMR1:	
    ;   SZDECR       R20		   ;255*128us=32.768MS
    ;	JP           END_TMR1a	
	;	SZDECR       R21           ;32.768*255=8.388S
	;	JP           END_TMR1a
	;	SZDECR       R22           ;8.388*72=603S,10分钟
	;	JP           END_TMR1a
	;	SETB         S1_VAL,2      ;关机特殊标志
			
END_TMR1a：		
    ;   LDIA		 .6		       ;TMR1重新赋值
	;	ADDR	     TMR0																	
		RET					       ;从中断返回		