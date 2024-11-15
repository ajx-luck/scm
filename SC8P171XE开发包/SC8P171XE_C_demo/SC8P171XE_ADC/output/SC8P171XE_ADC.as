opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1712E
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.09_Beta3\SCMCU_IDE_V2.00.09_Beta3\data\include\sc8p1712e.cgen.inc"
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
	FNCALL	_main,_ADC_Result
	FNCALL	_main,_ADC_Sample
	FNCALL	_main,_DelayXms
	FNROOT	_main
	global	_admin
	global	_adtimes
	global	_adsum
	global	_admax
	global	_adresult
	global	_ADCON0
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_INTCON
_INTCON	set	11
	global	_GODONE
_GODONE	set	249
	global	_RB4
_RB4	set	52
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_OSCCON
_OSCCON	set	143
	global	_LDOEN
_LDOEN	set	1274
	global	_ANS13
_ANS13	set	1189
	global	_TRISB5
_TRISB5	set	1077
; #config settings
	file	"SC8P171XE_ADC.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_admin:
       ds      2

_adtimes:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_adsum:
       ds      4

_admax:
       ds      2

_adresult:
       ds      2

	file	"SC8P171XE_ADC.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_ADC_Sample:	; 1 bytes @ 0x0
?_DelayXms:	; 1 bytes @ 0x0
??_DelayXms:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?_ADC_Result
?_ADC_Result:	; 2 bytes @ 0x0
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x0
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x0
	ds	1
??_ADC_Sample:	; 1 bytes @ 0x1
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x1
	ds	1
??_ADC_Result:	; 1 bytes @ 0x2
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x2
	ds	1
	global	ADC_Result@adch
ADC_Result@adch:	; 1 bytes @ 0x3
	ds	1
	global	ADC_Result@i
ADC_Result@i:	; 1 bytes @ 0x4
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x5
	global	ADC_Result@ad_result
ADC_Result@ad_result:	; 2 bytes @ 0x5
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x6
	ds	1
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0x7
	ds	2
??_main:	; 1 bytes @ 0x9
	global	main@result
main@result:	; 2 bytes @ 0x9
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         11
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     11      14
;!    BANK0            80      0       8
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_ADC_Sample
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0     599
;!                                              9 COMMON     2     2      0
;!                         _ADC_Result
;!                         _ADC_Sample
;!                           _DelayXms
;! ---------------------------------------------------------------------------------
;! (1) _DelayXms                                             3     3      0      75
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Sample                                           9     8      1     431
;!                                              0 COMMON     9     8      1
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Result                                           7     5      2      70
;!                                              0 COMMON     7     5      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_Result
;!   _ADC_Sample
;!   _DelayXms
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      B       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      0       8       4       10.0%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      16       7        0.0%
;!DATA                 0      0      16       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 145 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          2    9[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ADC_Result
;;		_ADC_Sample
;;		_DelayXms
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
	line	145
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
	line	145
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	147
	
l1095:	
# 147 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
nop ;# 
	line	148
# 148 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
clrwdt ;# 
psect	maintext
	line	149
	
l1097:	
;SC8P171XE_ADC.c: 149: INTCON = 0;
	clrf	(11)	;volatile
	line	150
	
l1099:	
;SC8P171XE_ADC.c: 150: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	151
	
l1101:	
;SC8P171XE_ADC.c: 151: DelayXms(2);
	movlw	low(02h)
	fcall	_DelayXms
	line	152
;SC8P171XE_ADC.c: 152: while(1)
	
l514:	
	line	154
# 154 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
clrwdt ;# 
psect	maintext
	line	159
	
l1103:	
;SC8P171XE_ADC.c: 157: unsigned int result;
;SC8P171XE_ADC.c: 159: result = ADC_Result(15);
	movlw	low(0Fh)
	fcall	_ADC_Result
	movf	(1+(?_ADC_Result)),w
	movwf	(main@result+1)
	movf	(0+(?_ADC_Result)),w
	movwf	(main@result)
	line	160
	
l1105:	
;SC8P171XE_ADC.c: 160: if (result > 666) RB4 = 0;
	movlw	02h
	subwf	(main@result+1),w
	movlw	09Bh
	skipnz
	subwf	(main@result),w
	skipc
	goto	u461
	goto	u460
u461:
	goto	l515
u460:
	
l1107:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	goto	l516
	line	161
	
l515:	
;SC8P171XE_ADC.c: 161: else RB4 =1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	
l516:	
	line	166
;SC8P171XE_ADC.c: 166: ANS13 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1189/8)^080h,(1189)&7	;volatile
	line	167
;SC8P171XE_ADC.c: 167: TRISB5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	168
	
l1109:	
;SC8P171XE_ADC.c: 168: ADC_Sample(13,5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0Dh)
	fcall	_ADC_Sample
	goto	l514
	global	start
	ljmp	start
	opt stack 0
	line	172
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 135 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    0[COMMON] unsigned char 
;;  j               1    2[COMMON] unsigned char 
;;  i               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/100
;;		On exit  : 100/100
;;		Unchanged: 100/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	135
global __ptext1
__ptext1:	;psect for function _DelayXms
psect	text1
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
	line	135
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 7
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	138
	
l979:	
;SC8P171XE_ADC.c: 137: unsigned char i,j;
;SC8P171XE_ADC.c: 138: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l981:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u221
	goto	u220
u221:
	goto	l985
u220:
	goto	l509
	line	139
	
l985:	
;SC8P171XE_ADC.c: 139: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l991:	
	decf	(DelayXms@j),f
	
l993:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u231
	goto	u230
u231:
	goto	l991
u230:
	line	138
	
l995:	
	decf	(DelayXms@i),f
	goto	l981
	line	140
	
l509:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 30 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;;  adldo           1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    5[COMMON] unsigned char 
;;  ad_temp         2    7[COMMON] volatile unsigned int 
;;  i               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/100
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         4       0       0
;;      Temps:          4       0       0
;;      Totals:         9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	30
global __ptext2
__ptext2:	;psect for function _ADC_Sample
psect	text2
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
	line	30
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 7
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	34
	
l1015:	
;SC8P171XE_ADC.c: 32: volatile unsigned int ad_temp;
;SC8P171XE_ADC.c: 34: if(adldo!=0)
	movf	((ADC_Sample@adldo)),w
	btfsc	status,2
	goto	u251
	goto	u250
u251:
	goto	l475
u250:
	line	36
	
l1017:	
;SC8P171XE_ADC.c: 35: {
;SC8P171XE_ADC.c: 36: if(!LDOEN)
	btfsc	(1274/8)^080h,(1274)&7	;volatile
	goto	u261
	goto	u260
u261:
	goto	l1021
u260:
	line	38
	
l1019:	
;SC8P171XE_ADC.c: 37: {
;SC8P171XE_ADC.c: 38: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(159)^080h	;volatile
	line	39
;SC8P171XE_ADC.c: 39: _delay((unsigned long)((100)*(8000000UL/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
movwf	((??_ADC_Sample+0)+0),f
	u477:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u477
	nop
opt asmopt_pop

	line	40
;SC8P171XE_ADC.c: 40: }
	goto	l1027
	line	41
	
l1021:	
;SC8P171XE_ADC.c: 41: else ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(159)^080h	;volatile
	goto	l1027
	line	43
	
l475:	
	line	45
;SC8P171XE_ADC.c: 43: else
;SC8P171XE_ADC.c: 44: {
;SC8P171XE_ADC.c: 45: if(LDOEN)
	btfss	(1274/8)^080h,(1274)&7	;volatile
	goto	u271
	goto	u270
u271:
	goto	l1021
u270:
	goto	l1019
	line	54
	
l1027:	
;SC8P171XE_ADC.c: 51: }
;SC8P171XE_ADC.c: 54: if(LDOEN^(adldo!=0))
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1274/8)^080h,(1274)&7	;volatile
	goto	u281
	goto	u280
u281:
	movlw	1
	goto	u282
u280:
	movlw	0
u282:
	movwf	(??_ADC_Sample+0)+0
	movf	((ADC_Sample@adldo)),w
	btfss	status,2
	goto	u291
	goto	u290
u291:
	movlw	1
	goto	u292
u290:
	movlw	0
u292:
	xorwf	(??_ADC_Sample+0)+0,w
	skipnz
	goto	u301
	goto	u300
u301:
	goto	l1031
u300:
	line	56
	
l1029:	
;SC8P171XE_ADC.c: 55: {
;SC8P171XE_ADC.c: 56: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(159)^080h	;volatile
	line	57
;SC8P171XE_ADC.c: 57: _delay((unsigned long)((100)*(8000000UL/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
movwf	((??_ADC_Sample+0)+0),f
	u487:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u487
	nop
opt asmopt_pop

	line	58
;SC8P171XE_ADC.c: 58: }
	goto	l1033
	line	60
	
l1031:	
;SC8P171XE_ADC.c: 59: else
;SC8P171XE_ADC.c: 60: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(159)^080h	;volatile
	line	62
	
l1033:	
;SC8P171XE_ADC.c: 62: ADCON0 = 0X41 | (adch << 2);
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u315:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u315
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	63
# 63 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
nop ;# 
	line	64
# 64 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
nop ;# 
	line	65
# 65 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
nop ;# 
	line	66
# 66 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
nop ;# 
psect	text2
	line	67
	
l1035:	
;SC8P171XE_ADC.c: 67: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	69
	
l1037:	
;SC8P171XE_ADC.c: 69: unsigned char i = 0;
	clrf	(ADC_Sample@i)
	line	70
;SC8P171XE_ADC.c: 70: while(GODONE)
	goto	l483
	
l484:	
	line	72
;SC8P171XE_ADC.c: 71: {
;SC8P171XE_ADC.c: 72: if(0 == (--i))
	decfsz	(ADC_Sample@i),f
	goto	u321
	goto	u320
u321:
	goto	l483
u320:
	goto	l486
	line	74
	
l483:	
	line	70
	btfsc	(249/8),(249)&7	;volatile
	goto	u331
	goto	u330
u331:
	goto	l484
u330:
	line	76
	
l1041:	
;SC8P171XE_ADC.c: 74: }
;SC8P171XE_ADC.c: 76: ad_temp=(ADRESH<<4)+(ADRESL>>4);
	movf	(30),w	;volatile
	movwf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	swapf	(ADC_Sample@ad_temp),f	;volatile
	swapf	(ADC_Sample@ad_temp+1),f	;volatile
	movlw	0f0h
	andwf	(ADC_Sample@ad_temp+1),f	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	andlw	0fh
	iorwf	(ADC_Sample@ad_temp+1),f	;volatile
	movlw	0f0h
	andwf	(ADC_Sample@ad_temp),f	;volatile
	
l1043:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	78
	
l1045:	
;SC8P171XE_ADC.c: 78: if(0 == admax)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_admax)),w	;volatile
iorwf	((_admax+1)),w	;volatile
	btfss	status,2
	goto	u341
	goto	u340
u341:
	goto	l1049
u340:
	line	80
	
l1047:	
;SC8P171XE_ADC.c: 79: {
;SC8P171XE_ADC.c: 80: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(_admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(_admax)	;volatile
	line	81
;SC8P171XE_ADC.c: 81: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(_admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(_admin)	;volatile
	line	82
;SC8P171XE_ADC.c: 82: }
	goto	l489
	line	83
	
l1049:	
;SC8P171XE_ADC.c: 83: else if(ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(_admax+1),w	;volatile
	skipz
	goto	u355
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(_admax),w	;volatile
u355:
	skipnc
	goto	u351
	goto	u350
u351:
	goto	l1053
u350:
	line	84
	
l1051:	
;SC8P171XE_ADC.c: 84: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(_admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(_admax)	;volatile
	goto	l489
	line	85
	
l1053:	
;SC8P171XE_ADC.c: 85: else if(ad_temp < admin)
	movf	(_admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u365
	movf	(_admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u365:
	skipnc
	goto	u361
	goto	u360
u361:
	goto	l489
u360:
	line	86
	
l1055:	
;SC8P171XE_ADC.c: 86: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(_admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(_admin)	;volatile
	line	88
	
l489:	
;SC8P171XE_ADC.c: 88: adsum += ad_temp;
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	addwf	(_adsum),f	;volatile
	movf	1+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u371
	addwf	(_adsum+1),f	;volatile
u371:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u372
	addwf	(_adsum+2),f	;volatile
u372:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u373
	addwf	(_adsum+3),f	;volatile
u373:

	line	89
	
l1057:	
;SC8P171XE_ADC.c: 89: if(++adtimes >= 10)
	movlw	low(0Ah)
	incf	(_adtimes),f	;volatile
	subwf	((_adtimes)),w	;volatile
	skipc
	goto	u381
	goto	u380
u381:
	goto	l486
u380:
	line	91
	
l1059:	
;SC8P171XE_ADC.c: 90: {
;SC8P171XE_ADC.c: 91: adsum -= admax;
	movf	(_admax),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(_admax+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(_adsum),f	;volatile
	movf	1+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	1+(??_ADC_Sample+0)+0,w
	goto	u395
	goto	u396
u395:
	subwf	(_adsum+1),f	;volatile
u396:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u397
	goto	u398
u397:
	subwf	(_adsum+2),f	;volatile
u398:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u399
	goto	u390
u399:
	subwf	(_adsum+3),f	;volatile
u390:

	line	92
;SC8P171XE_ADC.c: 92: if(adsum >= admin) adsum -= admin;
	movf	(_admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(_admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(_adsum+3),w	;volatile
	skipz
	goto	u405
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(_adsum+2),w	;volatile
	skipz
	goto	u405
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(_adsum+1),w	;volatile
	skipz
	goto	u405
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(_adsum),w	;volatile
u405:
	skipc
	goto	u401
	goto	u400
u401:
	goto	l494
u400:
	
l1061:	
	movf	(_admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(_admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(_adsum),f	;volatile
	movf	1+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	1+(??_ADC_Sample+0)+0,w
	goto	u415
	goto	u416
u415:
	subwf	(_adsum+1),f	;volatile
u416:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u417
	goto	u418
u417:
	subwf	(_adsum+2),f	;volatile
u418:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u419
	goto	u410
u419:
	subwf	(_adsum+3),f	;volatile
u410:

	goto	l1063
	line	93
	
l494:	
;SC8P171XE_ADC.c: 93: else adsum = 0;
	clrf	(_adsum)	;volatile
	clrf	(_adsum+1)	;volatile
	clrf	(_adsum+2)	;volatile
	clrf	(_adsum+3)	;volatile
	line	95
	
l1063:	
;SC8P171XE_ADC.c: 95: adresult = (unsigned int)(adsum >> 3);
	movf	(_adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(_adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(_adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(_adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u425:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u420:
	addlw	-1
	skipz
	goto	u425
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	97
	
l1065:	
;SC8P171XE_ADC.c: 97: adsum = 0;
	clrf	(_adsum)	;volatile
	clrf	(_adsum+1)	;volatile
	clrf	(_adsum+2)	;volatile
	clrf	(_adsum+3)	;volatile
	line	98
	
l1067:	
;SC8P171XE_ADC.c: 98: admin = 0;
	clrf	(_admin)	;volatile
	clrf	(_admin+1)	;volatile
	line	99
	
l1069:	
;SC8P171XE_ADC.c: 99: admax = 0;
	clrf	(_admax)	;volatile
	clrf	(_admax+1)	;volatile
	line	100
	
l1071:	
;SC8P171XE_ADC.c: 100: adtimes = 0;
	clrf	(_adtimes)	;volatile
	line	102
	
l486:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_ADC_Result

;; *************** function _ADC_Result *****************
;; Defined at:
;;		line 106 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    3[COMMON] unsigned char 
;;  ad_result       2    5[COMMON] unsigned int 
;;  i               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         4       0       0
;;      Temps:          1       0       0
;;      Totals:         7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	106
global __ptext3
__ptext3:	;psect for function _ADC_Result
psect	text3
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
	line	106
	global	__size_of_ADC_Result
	__size_of_ADC_Result	equ	__end_of_ADC_Result-_ADC_Result
	
_ADC_Result:	
;incstack = 0
	opt	stack 7
; Regs used in _ADC_Result: [wreg+status,2+status,0]
;ADC_Result@adch stored from wreg
	movwf	(ADC_Result@adch)
	line	108
	
l1073:	
;SC8P171XE_ADC.c: 108: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	109
	
l1075:	
;SC8P171XE_ADC.c: 109: _delay((unsigned long)((20)*(8000000UL/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	13
movwf	((??_ADC_Result+0)+0),f
	u497:
decfsz	(??_ADC_Result+0)+0,f
	goto	u497
opt asmopt_pop

	line	110
	
l1077:	
;SC8P171XE_ADC.c: 110: ADCON0 = 0X41 | (adch << 2);
	movf	(ADC_Result@adch),w
	movwf	(??_ADC_Result+0)+0
	movlw	(02h)-1
u435:
	clrc
	rlf	(??_ADC_Result+0)+0,f
	addlw	-1
	skipz
	goto	u435
	clrc
	rlf	(??_ADC_Result+0)+0,w
	iorlw	041h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	111
# 111 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
nop ;# 
	line	112
# 112 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
nop ;# 
	line	113
# 113 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
nop ;# 
	line	114
# 114 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_ADC\SC8P171XE_ADC.c"
nop ;# 
psect	text3
	line	115
	
l1079:	
;SC8P171XE_ADC.c: 115: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	117
	
l1081:	
;SC8P171XE_ADC.c: 117: unsigned char i = 0;
	clrf	(ADC_Result@i)
	line	118
;SC8P171XE_ADC.c: 118: while(GODONE)
	goto	l498
	
l499:	
	line	120
;SC8P171XE_ADC.c: 119: {
;SC8P171XE_ADC.c: 120: if(0 == (--i))
	decfsz	(ADC_Result@i),f
	goto	u441
	goto	u440
u441:
	goto	l498
u440:
	line	121
	
l1083:	
;SC8P171XE_ADC.c: 121: return 0;
	clrf	(?_ADC_Result)
	clrf	(?_ADC_Result+1)
	goto	l501
	line	122
	
l498:	
	line	118
	btfsc	(249/8),(249)&7	;volatile
	goto	u451
	goto	u450
u451:
	goto	l499
u450:
	line	125
	
l1087:	
;SC8P171XE_ADC.c: 122: }
;SC8P171XE_ADC.c: 124: unsigned int ad_result ;
;SC8P171XE_ADC.c: 125: ad_result=(ADRESH<<4)+(ADRESL>>4);
	movf	(30),w	;volatile
	movwf	(ADC_Result@ad_result)
	clrf	(ADC_Result@ad_result+1)
	swapf	(ADC_Result@ad_result),f
	swapf	(ADC_Result@ad_result+1),f
	movlw	0f0h
	andwf	(ADC_Result@ad_result+1),f
	movf	(ADC_Result@ad_result),w
	andlw	0fh
	iorwf	(ADC_Result@ad_result+1),f
	movlw	0f0h
	andwf	(ADC_Result@ad_result),f
	
l1089:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	addwf	(ADC_Result@ad_result),f
	skipnc
	incf	(ADC_Result@ad_result+1),f
	line	126
	
l1091:	
;SC8P171XE_ADC.c: 126: return ad_result;
	movf	(ADC_Result@ad_result+1),w
	movwf	(?_ADC_Result+1)
	movf	(ADC_Result@ad_result),w
	movwf	(?_ADC_Result)
	line	127
	
l501:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Result
	__end_of_ADC_Result:
	signat	_ADC_Result,4218
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
