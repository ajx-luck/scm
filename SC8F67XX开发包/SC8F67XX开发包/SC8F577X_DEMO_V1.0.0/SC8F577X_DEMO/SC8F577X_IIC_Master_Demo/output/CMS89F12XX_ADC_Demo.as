opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	89F1232
opt include "G:\MYDOWN~1\IDE\CMS_ID~1.03\data\include\89f1232.cgen.inc"
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
	FNCALL	_ADC_Sample,_DelayXms
	FNROOT	_main
	global	ADC_Sample@admin
	global	ADC_Sample@adtimes
	global	ADC_Sample@adsum
	global	ADC_Sample@admax
	global	_result
	global	_adresult
	global	_INTCON
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_INTCON	set	11
	global	_ADRESH
_ADRESH	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_ADCON0
_ADCON0	set	157
	global	_ADCON1
_ADCON1	set	156
	global	_OSCCON
_OSCCON	set	136
	global	_GODONE
_GODONE	set	1257
	global	_TRISB7
_TRISB7	set	1079
; #config settings
	file	"CMS89F12XX_ADC_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
ADC_Sample@admin:
       ds      2

ADC_Sample@adtimes:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
ADC_Sample@adsum:
       ds      4

ADC_Sample@admax:
       ds      2

_result:
       ds      2

_adresult:
       ds      2

	file	"CMS89F12XX_ADC_Demo.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
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
?_DelayXms:	; 1 bytes @ 0x0
??_DelayXms:	; 1 bytes @ 0x0
?_ADC_Sample:	; 1 bytes @ 0x0
?_ADC_Result:	; 1 bytes @ 0x0
??_ADC_Result:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x0
	ds	1
	global	ADC_Result@adch
ADC_Result@adch:	; 1 bytes @ 0x1
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x1
	ds	1
	global	ADC_Result@i
ADC_Result@i:	; 1 bytes @ 0x2
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x2
	ds	1
??_ADC_Sample:	; 1 bytes @ 0x3
	ds	4
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x7
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x8
	ds	1
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0x9
	ds	2
??_main:	; 1 bytes @ 0xB
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         13
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     11      14
;!    BANK0            80      0      10
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_ADC_Sample
;!    _ADC_Sample->_DelayXms
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
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
;! (0) _main                                                 0     0      0     475
;!                         _ADC_Result
;!                         _ADC_Sample
;!                           _DelayXms
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Sample                                           8     8      0     316
;!                                              3 COMMON     8     8      0
;!                           _DelayXms
;! ---------------------------------------------------------------------------------
;! (1) _DelayXms                                             3     3      0     114
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Result                                           3     3      0      45
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_Result
;!   _ADC_Sample
;!     _DelayXms
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
;!BANK0               50      0       A       3       12.5%
;!ABS                  0      0      18       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!BANK2               50      0       0       9        0.0%
;!DATA                 0      0      18      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 109 in file "E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Result
;;		_ADC_Sample
;;		_DelayXms
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
	line	109
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
	line	109
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	112
	
l1151:	
# 112 "E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
nop ;# 
	line	113
# 113 "E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
clrwdt ;# 
psect	maintext
	line	114
	
l1153:	
;CMS89F12XX_ADC.c: 114: INTCON = 0;
	clrf	(11)	;volatile
	line	115
	
l1155:	
;CMS89F12XX_ADC.c: 115: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	117
;CMS89F12XX_ADC.c: 117: while(1)
	
l588:	
	line	119
# 119 "E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
clrwdt ;# 
psect	maintext
	line	120
	
l1157:	
;CMS89F12XX_ADC.c: 120: DelayXms(1);
	movlw	low(01h)
	fcall	_DelayXms
	line	123
	
l1159:	
;CMS89F12XX_ADC.c: 123: TRISB7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1079/8)^080h,(1079)&7	;volatile
	line	125
	
l1161:	
;CMS89F12XX_ADC.c: 125: ADC_Result(15);
	movlw	low(0Fh)
	fcall	_ADC_Result
	line	128
	
l1163:	
;CMS89F12XX_ADC.c: 128: ADCON1 = 0B00000100;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	129
	
l1165:	
;CMS89F12XX_ADC.c: 129: DelayXms(1);
	movlw	low(01h)
	fcall	_DelayXms
	line	131
	
l1167:	
;CMS89F12XX_ADC.c: 131: ADC_Sample(6);
	movlw	low(06h)
	fcall	_ADC_Sample
	line	132
	
l1169:	
;CMS89F12XX_ADC.c: 132: ADCON1 = 0B00000010;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(156)^080h	;volatile
	goto	l588
	global	start
	ljmp	start
	opt stack 0
	line	136
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 25 in file "E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    7[COMMON] unsigned char 
;;  ad_temp         2    9[COMMON] volatile unsigned int 
;;  i               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayXms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	25
global __ptext1
__ptext1:	;psect for function _ADC_Sample
psect	text1
	file	"E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
	line	25
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 6
; Regs used in _ADC_Sample: [wreg+status,2+status,0+pclath+cstack]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	31
	
l1091:	
;CMS89F12XX_ADC.c: 27: static unsigned long adsum = 0;
;CMS89F12XX_ADC.c: 28: static unsigned int admin = 0,admax = 0;
;CMS89F12XX_ADC.c: 29: static unsigned char adtimes = 0;
;CMS89F12XX_ADC.c: 30: volatile unsigned int ad_temp;
;CMS89F12XX_ADC.c: 31: ADCON1 = 0B00000100;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(156)^080h	;volatile
	line	32
	
l1093:	
;CMS89F12XX_ADC.c: 32: ADCON0 = 0XC1 | (adch << 2);
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u205:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u205
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	0C1h
	movwf	(157)^080h	;volatile
	line	33
# 33 "E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
nop ;# 
	line	34
# 34 "E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
nop ;# 
psect	text1
	line	35
	
l1095:	
;CMS89F12XX_ADC.c: 35: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	37
	
l1097:	
;CMS89F12XX_ADC.c: 37: unsigned char i = 0;
	clrf	(ADC_Sample@i)
	line	38
;CMS89F12XX_ADC.c: 38: while(GODONE)
	goto	l557
	line	40
	
l1099:	
;CMS89F12XX_ADC.c: 39: {
;CMS89F12XX_ADC.c: 40: DelayXms(3);
	movlw	low(03h)
	fcall	_DelayXms
	line	41
	
l1101:	
;CMS89F12XX_ADC.c: 41: if(0 == (--i))
	decfsz	(ADC_Sample@i),f
	goto	u211
	goto	u210
u211:
	goto	l557
u210:
	goto	l560
	line	43
	
l557:	
	line	38
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1257/8)^080h,(1257)&7	;volatile
	goto	u221
	goto	u220
u221:
	goto	l1099
u220:
	line	45
	
l1105:	
;CMS89F12XX_ADC.c: 43: }
;CMS89F12XX_ADC.c: 45: ad_temp=(ADRESH<<4)+(ADRESL>>4);
	movf	(159)^080h,w	;volatile
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
	
l1107:	
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	47
	
l1109:	
;CMS89F12XX_ADC.c: 47: if(0 == admax)
	bcf	status, 5	;RP0=0, select bank0
	movf	((ADC_Sample@admax)),w
iorwf	((ADC_Sample@admax+1)),w
	btfss	status,2
	goto	u231
	goto	u230
u231:
	goto	l1113
u230:
	line	49
	
l1111:	
;CMS89F12XX_ADC.c: 48: {
;CMS89F12XX_ADC.c: 49: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)
	line	50
;CMS89F12XX_ADC.c: 50: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)
	line	51
;CMS89F12XX_ADC.c: 51: }
	goto	l563
	line	52
	
l1113:	
;CMS89F12XX_ADC.c: 52: else if(ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w
	skipz
	goto	u245
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w
u245:
	skipnc
	goto	u241
	goto	u240
u241:
	goto	l1117
u240:
	line	53
	
l1115:	
;CMS89F12XX_ADC.c: 53: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)
	goto	l563
	line	54
	
l1117:	
;CMS89F12XX_ADC.c: 54: else if(ad_temp < admin)
	movf	(ADC_Sample@admin+1),w
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u255
	movf	(ADC_Sample@admin),w
	subwf	(ADC_Sample@ad_temp),w	;volatile
u255:
	skipnc
	goto	u251
	goto	u250
u251:
	goto	l563
u250:
	line	55
	
l1119:	
;CMS89F12XX_ADC.c: 55: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)
	line	57
	
l563:	
;CMS89F12XX_ADC.c: 57: adsum += ad_temp;
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	addwf	(ADC_Sample@adsum),f
	movf	1+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u261
	addwf	(ADC_Sample@adsum+1),f
u261:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u262
	addwf	(ADC_Sample@adsum+2),f
u262:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u263
	addwf	(ADC_Sample@adsum+3),f
u263:

	line	58
	
l1121:	
;CMS89F12XX_ADC.c: 58: if(++adtimes >= 10)
	movlw	low(0Ah)
	incf	(ADC_Sample@adtimes),f
	subwf	((ADC_Sample@adtimes)),w
	skipc
	goto	u271
	goto	u270
u271:
	goto	l560
u270:
	line	60
	
l1123:	
;CMS89F12XX_ADC.c: 59: {
;CMS89F12XX_ADC.c: 60: adsum -= admax;
	movf	(ADC_Sample@admax),w
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admax+1),w
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),f
	movf	1+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	1+(??_ADC_Sample+0)+0,w
	goto	u285
	goto	u286
u285:
	subwf	(ADC_Sample@adsum+1),f
u286:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u287
	goto	u288
u287:
	subwf	(ADC_Sample@adsum+2),f
u288:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u289
	goto	u280
u289:
	subwf	(ADC_Sample@adsum+3),f
u280:

	line	61
;CMS89F12XX_ADC.c: 61: if(adsum >= admin) adsum -= admin;
	movf	(ADC_Sample@admin),w
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w
	skipz
	goto	u295
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w
	skipz
	goto	u295
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w
	skipz
	goto	u295
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w
u295:
	skipc
	goto	u291
	goto	u290
u291:
	goto	l568
u290:
	
l1125:	
	movf	(ADC_Sample@admin),w
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),f
	movf	1+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	1+(??_ADC_Sample+0)+0,w
	goto	u305
	goto	u306
u305:
	subwf	(ADC_Sample@adsum+1),f
u306:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u307
	goto	u308
u307:
	subwf	(ADC_Sample@adsum+2),f
u308:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u309
	goto	u300
u309:
	subwf	(ADC_Sample@adsum+3),f
u300:

	goto	l1127
	line	62
	
l568:	
;CMS89F12XX_ADC.c: 62: else adsum = 0;
	clrf	(ADC_Sample@adsum)
	clrf	(ADC_Sample@adsum+1)
	clrf	(ADC_Sample@adsum+2)
	clrf	(ADC_Sample@adsum+3)
	line	64
	
l1127:	
;CMS89F12XX_ADC.c: 64: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u315:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u310:
	addlw	-1
	skipz
	goto	u315
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	66
	
l1129:	
;CMS89F12XX_ADC.c: 66: adsum = 0;
	clrf	(ADC_Sample@adsum)
	clrf	(ADC_Sample@adsum+1)
	clrf	(ADC_Sample@adsum+2)
	clrf	(ADC_Sample@adsum+3)
	line	67
	
l1131:	
;CMS89F12XX_ADC.c: 67: admin = 0;
	clrf	(ADC_Sample@admin)
	clrf	(ADC_Sample@admin+1)
	line	68
	
l1133:	
;CMS89F12XX_ADC.c: 68: admax = 0;
	clrf	(ADC_Sample@admax)
	clrf	(ADC_Sample@admax+1)
	line	69
	
l1135:	
;CMS89F12XX_ADC.c: 69: adtimes = 0;
	clrf	(ADC_Sample@adtimes)
	line	71
	
l560:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,4217
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 99 in file "E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
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
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_Sample
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	99
global __ptext2
__ptext2:	;psect for function _DelayXms
psect	text2
	file	"E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
	line	99
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 7
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	102
	
l1071:	
;CMS89F12XX_ADC.c: 101: unsigned char i,j;
;CMS89F12XX_ADC.c: 102: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l1073:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u181
	goto	u180
u181:
	goto	l1077
u180:
	goto	l583
	line	103
	
l1077:	
;CMS89F12XX_ADC.c: 103: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l1083:	
	decf	(DelayXms@j),f
	
l1085:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u191
	goto	u190
u191:
	goto	l1083
u190:
	line	102
	
l1087:	
	decf	(DelayXms@i),f
	goto	l1073
	line	104
	
l583:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_ADC_Result

;; *************** function _ADC_Result *****************
;; Defined at:
;;		line 75 in file "E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    1[COMMON] unsigned char 
;;  i               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	75
global __ptext3
__ptext3:	;psect for function _ADC_Result
psect	text3
	file	"E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
	line	75
	global	__size_of_ADC_Result
	__size_of_ADC_Result	equ	__end_of_ADC_Result-_ADC_Result
	
_ADC_Result:	
;incstack = 0
	opt	stack 7
; Regs used in _ADC_Result: [wreg+status,2+status,0]
;ADC_Result@adch stored from wreg
	movwf	(ADC_Result@adch)
	line	78
	
l1137:	
;CMS89F12XX_ADC.c: 78: ADCON1 = 0B00000010;
	movlw	low(02h)
	movwf	(156)^080h	;volatile
	line	79
	
l1139:	
;CMS89F12XX_ADC.c: 79: ADCON0 = 0X81 | (adch << 2);
	movf	(ADC_Result@adch),w
	movwf	(??_ADC_Result+0)+0
	movlw	(02h)-1
u325:
	clrc
	rlf	(??_ADC_Result+0)+0,f
	addlw	-1
	skipz
	goto	u325
	clrc
	rlf	(??_ADC_Result+0)+0,w
	iorlw	081h
	movwf	(157)^080h	;volatile
	line	80
# 80 "E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
nop ;# 
	line	81
# 81 "E:\TEST_CODE\CMS89F12XX\CMS89F12XX_DEMO_C\CMS89F12XX_ADC_Demo\CMS89F12XX_ADC.c"
nop ;# 
psect	text3
	line	82
	
l1141:	
;CMS89F12XX_ADC.c: 82: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	84
	
l1143:	
;CMS89F12XX_ADC.c: 84: unsigned char i = 0;
	clrf	(ADC_Result@i)
	line	85
;CMS89F12XX_ADC.c: 85: while(GODONE)
	goto	l572
	
l573:	
	line	87
;CMS89F12XX_ADC.c: 86: {
;CMS89F12XX_ADC.c: 87: if(0 == (--i))
	decfsz	(ADC_Result@i),f
	goto	u331
	goto	u330
u331:
	goto	l572
u330:
	goto	l575
	line	89
	
l572:	
	line	85
	btfsc	(1257/8)^080h,(1257)&7	;volatile
	goto	u341
	goto	u340
u341:
	goto	l573
u340:
	line	90
	
l1147:	
;CMS89F12XX_ADC.c: 89: }
;CMS89F12XX_ADC.c: 90: result=(ADRESH<<4)+(ADRESL>>4);
	movf	(159)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_result)	;volatile
	clrf	(_result+1)	;volatile
	swapf	(_result),f	;volatile
	swapf	(_result+1),f	;volatile
	movlw	0f0h
	andwf	(_result+1),f	;volatile
	movf	(_result),w	;volatile
	andlw	0fh
	iorwf	(_result+1),f	;volatile
	movlw	0f0h
	andwf	(_result),f	;volatile
	
l1149:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(_result),f	;volatile
	skipnc
	incf	(_result+1),f	;volatile
	line	91
	
l575:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Result
	__end_of_ADC_Result:
	signat	_ADC_Result,4217
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
