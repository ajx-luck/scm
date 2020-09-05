opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1152A
opt include "C:\¹¤¾ß\µ¥Æ¬»úÑ§Ï°×ÊÁÏ\SC8P\SCMCU_IDE_V2.00.07\data\include\sc8p1152a.cgen.inc"
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
	FNCALL	_main,_Init_System
	FNCALL	_main,_checkIRKey
	FNCALL	_main,_procesWork
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_waitTimeCount
	global	_MainTime
	global	_pwmTime
	global	_lowDealy
	global	_revLeftZeroCount
	global	_revRightCount
	global	_revLeftCount
	global	_irRightStep
	global	_irLeftStep
	global	_B_MainLoop
	global	_workStep
	global	_checkCount
	global	_revRightZeroCount
	global	_WPUB
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_WPUB	set	13
	global	_INTCON
_INTCON	set	9
	global	_OSCCON
_OSCCON	set	8
	global	_OPTION_REG
_OPTION_REG	set	7
	global	_TRISB
_TRISB	set	6
	global	_PORTB
_PORTB	set	5
	global	_TMR0
_TMR0	set	1
	global	_T0IF
_T0IF	set	74
; #config settings
	file	"ðÐðÄÖ¸»Ó°ô.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_B_MainLoop:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_waitTimeCount:
       ds      2

_MainTime:
       ds      1

_pwmTime:
       ds      1

_lowDealy:
       ds      1

_revLeftZeroCount:
       ds      1

_revRightCount:
       ds      1

_revLeftCount:
       ds      1

_irRightStep:
       ds      1

_irLeftStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_workStep:
       ds      1

_checkCount:
       ds      1

_revRightZeroCount:
       ds      1

	file	"ðÐðÄÖ¸»Ó°ô.as"
	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
	clrf	((__pbssCOMMON)+6)&07Fh
	clrf	((__pbssCOMMON)+7)&07Fh
	clrf	((__pbssCOMMON)+8)&07Fh
	clrf	((__pbssCOMMON)+9)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
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
?_Init_System:	; 1 bytes @ 0x0
?_checkIRKey:	; 1 bytes @ 0x0
?_procesWork:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Init_System:	; 1 bytes @ 0x0
??_checkIRKey:	; 1 bytes @ 0x0
??_procesWork:	; 1 bytes @ 0x0
	ds	1
??_main:	; 1 bytes @ 0x1
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
;!    COMMON           14      2      13
;!    BANK0            32      1       4

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_checkIRKey
;!    _main->_procesWork
;!
;!Critical Paths under _Isr_Timer in BANK0
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
;! (0) _main                                                 0     0      0       0
;!                        _Init_System
;!                         _checkIRKey
;!                         _procesWork
;! ---------------------------------------------------------------------------------
;! (1) _procesWork                                           1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _checkIRKey                                           1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _Isr_Timer                                            2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_System
;!   _checkIRKey
;!   _procesWork
;!
;! _Isr_Timer (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      2       D       1       92.9%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               20      1       4       3       12.5%
;!ABS                  0      0      11       4        0.0%
;!BITBANK0            20      0       0       5        0.0%
;!DATA                 0      0      11       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 28 in file "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Init_System
;;		_checkIRKey
;;		_procesWork
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
	line	28
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
	line	28
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l1035:	
;main.c: 30: PORTB = 0x00;
	clrf	(5)	;volatile
	line	31
	
l1037:	
;main.c: 31: Init_System();
	fcall	_Init_System
	line	32
;main.c: 32: while(1)
	
l315:	
	line	34
# 34 "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
clrwdt ;# 
psect	maintext
	line	35
	
l1039:	
;main.c: 35: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u641
	goto	u640
u641:
	goto	l315
u640:
	line	37
	
l1041:	
;main.c: 36: {
;main.c: 37: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	38
	
l1043:	
;main.c: 38: checkIRKey();
	fcall	_checkIRKey
	line	39
;main.c: 39: procesWork();
	fcall	_procesWork
	goto	l315
	global	start
	ljmp	start
	opt stack 0
	line	42
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_procesWork

;; *************** function _procesWork *****************
;; Defined at:
;;		line 44 in file "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       1
;;      Totals:         0       1
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	44
global __ptext1
__ptext1:	;psect for function _procesWork
psect	text1
	file	"C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
	line	44
	global	__size_of_procesWork
	__size_of_procesWork	equ	__end_of_procesWork-_procesWork
	
_procesWork:	
;incstack = 0
	opt	stack 6
; Regs used in _procesWork: [wreg+status,2+status,0]
	line	46
	
l1025:	
;main.c: 46: if(lowDealy > 0)
	movf	((_lowDealy)),w
	btfsc	status,2
	goto	u611
	goto	u610
u611:
	goto	l324
u610:
	line	48
	
l1027:	
;main.c: 47: {
;main.c: 48: if(--lowDealy == 0)
	decfsz	(_lowDealy),f
	goto	u621
	goto	u620
u621:
	goto	l1033
u620:
	line	50
	
l1029:	
;main.c: 49: {
;main.c: 50: PORTB |= 0x07;
	movlw	low(07h)
	iorwf	(5),f	;volatile
	line	51
	
l1031:	
;main.c: 51: workStep = 0;
	clrf	(_workStep)
	line	53
	
l1033:	
;main.c: 52: }
;main.c: 53: PORTB &= (~(0x01<<(workStep-1)));
	movlw	low(01h)
	movwf	(??_procesWork+0)+0
	movf	(_workStep),w
	addlw	-1
	addlw	1
	goto	u634
u635:
	clrc
	rlf	(??_procesWork+0)+0,f
u634:
	addlw	-1
	skipz
	goto	u635
	movf	0+(??_procesWork+0)+0,w
	xorlw	0ffh
	andwf	(5),f	;volatile
	line	56
	
l324:	
	return
	opt stack 0
GLOBAL	__end_of_procesWork
	__end_of_procesWork:
	signat	_procesWork,89
	global	_checkIRKey

;; *************** function _checkIRKey *****************
;; Defined at:
;;		line 77 in file "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       1
;;      Totals:         0       1
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	77
global __ptext2
__ptext2:	;psect for function _checkIRKey
psect	text2
	file	"C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
	line	77
	global	__size_of_checkIRKey
	__size_of_checkIRKey	equ	__end_of_checkIRKey-_checkIRKey
	
_checkIRKey:	
;incstack = 0
	opt	stack 6
; Regs used in _checkIRKey: [wreg+status,2+status,0]
	line	79
	
l959:	
;main.c: 79: if(((PORTB) >> (4)&1))
	movf	(5),w	;volatile
	movwf	(??_checkIRKey+0)+0
	movlw	04h
u455:
	clrc
	rrf	(??_checkIRKey+0)+0,f
	addlw	-1
	skipz
	goto	u455
	btfss	0+(??_checkIRKey+0)+0,(0)&7
	goto	u461
	goto	u460
u461:
	goto	l963
u460:
	line	81
	
l961:	
;main.c: 80: {
;main.c: 81: revLeftCount++;
	incf	(_revLeftCount),f
	line	84
	
l963:	
;main.c: 82: }
;main.c: 84: if(((PORTB) >> (3)&1))
	movf	(5),w	;volatile
	movwf	(??_checkIRKey+0)+0
	clrc
	rrf	(??_checkIRKey+0)+0,f
	clrc
	rrf	(??_checkIRKey+0)+0,f
	clrc
	rrf	(??_checkIRKey+0)+0,f
	btfss	0+(??_checkIRKey+0)+0,(0)&7
	goto	u471
	goto	u470
u471:
	goto	l967
u470:
	line	86
	
l965:	
;main.c: 85: {
;main.c: 86: revRightCount++;
	incf	(_revRightCount),f
	line	89
	
l967:	
;main.c: 87: }
;main.c: 89: if(waitTimeCount > 0)
	movf	((_waitTimeCount)),w
iorwf	((_waitTimeCount+1)),w
	btfsc	status,2
	goto	u481
	goto	u480
u481:
	goto	l975
u480:
	line	91
	
l969:	
;main.c: 90: {
;main.c: 91: waitTimeCount++;
	incf	(_waitTimeCount),f
	skipnz
	incf	(_waitTimeCount+1),f
	line	92
	
l971:	
;main.c: 92: if(waitTimeCount > 20000)
	movlw	04Eh
	subwf	(_waitTimeCount+1),w
	movlw	021h
	skipnz
	subwf	(_waitTimeCount),w
	skipc
	goto	u491
	goto	u490
u491:
	goto	l975
u490:
	line	94
	
l973:	
;main.c: 93: {
;main.c: 94: waitTimeCount = 0;
	clrf	(_waitTimeCount)
	clrf	(_waitTimeCount+1)
	line	97
	
l975:	
;main.c: 95: }
;main.c: 96: }
;main.c: 97: if(++checkCount >= 20)
	movlw	low(014h)
	incf	(_checkCount),f
	subwf	((_checkCount)),w
	skipc
	goto	u501
	goto	u500
u501:
	goto	l351
u500:
	line	99
	
l977:	
;main.c: 98: {
;main.c: 99: if(revLeftCount > 2)
	movlw	low(03h)
	subwf	(_revLeftCount),w
	skipc
	goto	u511
	goto	u510
u511:
	goto	l995
u510:
	line	101
	
l979:	
;main.c: 100: {
;main.c: 101: if(irLeftStep == 0)
	movf	((_irLeftStep)),w	;volatile
	btfss	status,2
	goto	u521
	goto	u520
u521:
	goto	l993
u520:
	line	103
	
l981:	
;main.c: 102: {
;main.c: 103: irLeftStep = 1;
	movlw	low(01h)
	movwf	(_irLeftStep)	;volatile
	line	104
	
l983:	
;main.c: 104: if(waitTimeCount == 0)
	movf	((_waitTimeCount)),w
iorwf	((_waitTimeCount+1)),w
	btfss	status,2
	goto	u531
	goto	u530
u531:
	goto	l987
u530:
	line	106
	
l985:	
;main.c: 105: {
;main.c: 106: waitTimeCount = 1;
	clrf	(_waitTimeCount)
	incf	(_waitTimeCount),f
	clrf	(_waitTimeCount+1)
	line	107
;main.c: 107: }
	goto	l993
	line	110
	
l987:	
;main.c: 108: else
;main.c: 109: {
;main.c: 110: if(waitTimeCount > 30)
	movlw	0
	subwf	(_waitTimeCount+1),w
	movlw	01Fh
	skipnz
	subwf	(_waitTimeCount),w
	skipc
	goto	u541
	goto	u540
u541:
	goto	l991
u540:
	line	112
	
l989:	
;main.c: 111: {
;main.c: 112: workStep = 2;
	movlw	low(02h)
	movwf	(_workStep)
	line	113
;main.c: 113: }
	goto	l993
	line	116
	
l991:	
;main.c: 114: else
;main.c: 115: {
;main.c: 116: workStep = 3;
	movlw	low(03h)
	movwf	(_workStep)
	line	120
	
l993:	
;main.c: 117: }
;main.c: 118: }
;main.c: 119: }
;main.c: 120: revLeftZeroCount = 0;
	clrf	(_revLeftZeroCount)
	line	121
;main.c: 121: }
	goto	l1001
	line	124
	
l995:	
;main.c: 122: else
;main.c: 123: {
;main.c: 124: if(++revLeftZeroCount > 1)
	movlw	low(02h)
	incf	(_revLeftZeroCount),f
	subwf	((_revLeftZeroCount)),w
	skipc
	goto	u551
	goto	u550
u551:
	goto	l1001
u550:
	line	126
	
l997:	
;main.c: 125: {
;main.c: 126: revLeftZeroCount = 1;
	clrf	(_revLeftZeroCount)
	incf	(_revLeftZeroCount),f
	line	127
	
l999:	
;main.c: 127: irLeftStep = 0;
	clrf	(_irLeftStep)	;volatile
	line	131
	
l1001:	
;main.c: 128: }
;main.c: 129: }
;main.c: 131: if(revRightCount > 2)
	movlw	low(03h)
	subwf	(_revRightCount),w
	skipc
	goto	u561
	goto	u560
u561:
	goto	l1019
u560:
	line	133
	
l1003:	
;main.c: 132: {
;main.c: 133: if(irRightStep == 0)
	movf	((_irRightStep)),w	;volatile
	btfss	status,2
	goto	u571
	goto	u570
u571:
	goto	l1017
u570:
	line	135
	
l1005:	
;main.c: 134: {
;main.c: 135: irRightStep = 1;
	movlw	low(01h)
	movwf	(_irRightStep)	;volatile
	line	136
	
l1007:	
;main.c: 136: if(waitTimeCount == 0)
	movf	((_waitTimeCount)),w
iorwf	((_waitTimeCount+1)),w
	btfss	status,2
	goto	u581
	goto	u580
u581:
	goto	l1011
u580:
	line	138
	
l1009:	
;main.c: 137: {
;main.c: 138: waitTimeCount = 1;
	clrf	(_waitTimeCount)
	incf	(_waitTimeCount),f
	clrf	(_waitTimeCount+1)
	line	139
;main.c: 139: }
	goto	l1017
	line	142
	
l1011:	
;main.c: 140: else
;main.c: 141: {
;main.c: 142: if(waitTimeCount > 30)
	movlw	0
	subwf	(_waitTimeCount+1),w
	movlw	01Fh
	skipnz
	subwf	(_waitTimeCount),w
	skipc
	goto	u591
	goto	u590
u591:
	goto	l1015
u590:
	line	144
	
l1013:	
;main.c: 143: {
;main.c: 144: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	145
;main.c: 145: }
	goto	l1017
	line	148
	
l1015:	
;main.c: 146: else
;main.c: 147: {
;main.c: 148: workStep = 3;
	movlw	low(03h)
	movwf	(_workStep)
	line	153
	
l1017:	
;main.c: 149: }
;main.c: 150: }
;main.c: 152: }
;main.c: 153: revRightZeroCount = 0;
	clrf	(_revRightZeroCount)
	line	154
;main.c: 154: }
	goto	l349
	line	157
	
l1019:	
;main.c: 155: else
;main.c: 156: {
;main.c: 157: if(++revRightZeroCount > 1)
	movlw	low(02h)
	incf	(_revRightZeroCount),f
	subwf	((_revRightZeroCount)),w
	skipc
	goto	u601
	goto	u600
u601:
	goto	l349
u600:
	line	159
	
l1021:	
;main.c: 158: {
;main.c: 159: revRightZeroCount = 1;
	clrf	(_revRightZeroCount)
	incf	(_revRightZeroCount),f
	line	160
	
l1023:	
;main.c: 160: irRightStep = 0;
	clrf	(_irRightStep)	;volatile
	line	162
	
l349:	
	line	166
;main.c: 161: }
;main.c: 162: }
;main.c: 166: checkCount = 0;
	clrf	(_checkCount)
	line	167
;main.c: 167: revLeftCount = 0;
	clrf	(_revLeftCount)
	line	168
;main.c: 168: revRightCount = 0;
	clrf	(_revRightCount)
	line	171
	
l351:	
	return
	opt stack 0
GLOBAL	__end_of_checkIRKey
	__end_of_checkIRKey:
	signat	_checkIRKey,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 59 in file "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	59
global __ptext3
__ptext3:	;psect for function _Init_System
psect	text3
	file	"C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
	line	59
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	61
	
l943:	
# 61 "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
nop ;# 
	line	62
# 62 "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
clrwdt ;# 
psect	text3
	line	63
	
l945:	
;main.c: 63: INTCON = 0;
	clrf	(9)	;volatile
	line	64
	
l947:	
;main.c: 64: OSCCON = 0X71;
	movlw	low(071h)
	movwf	(8)	;volatile
	line	65
	
l949:	
;main.c: 65: OPTION_REG = 0;
	clrf	(7)	;volatile
	line	69
	
l951:	
;main.c: 69: WPUB = 0x00;
	clrf	(13)	;volatile
	line	70
	
l953:	
;main.c: 70: TMR0 = 5;
	movlw	low(05h)
	movwf	(1)	;volatile
	line	71
	
l955:	
;main.c: 71: TRISB = 0x18;
	movlw	low(018h)
	movwf	(6)	;volatile
	line	72
	
l957:	
;main.c: 72: PORTB = 0x00;
	clrf	(5)	;volatile
	line	73
;main.c: 73: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(9)	;volatile
	line	74
	
l327:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 176 in file "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          2       0
;;      Totals:         2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	176
global __ptext4
__ptext4:	;psect for function _Isr_Timer
psect	text4
	file	"C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
	line	176
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 6
; Regs used in _Isr_Timer: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Isr_Timer+0)
	movf	pclath,w
	movwf	(??_Isr_Timer+1)
	ljmp	_Isr_Timer
psect	text4
	line	178
	
i1l839:	
;main.c: 178: if(T0IF)
	btfss	(74/8),(74)&7	;volatile
	goto	u21_21
	goto	u21_20
u21_21:
	goto	i1l361
u21_20:
	line	180
	
i1l841:	
;main.c: 179: {
;main.c: 180: T0IF = 0;
	bcf	(74/8),(74)&7	;volatile
	line	181
	
i1l843:	
;main.c: 181: TMR0 += 5;
	movlw	low(05h)
	addwf	(1),f	;volatile
	line	182
;main.c: 182: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l849
u22_20:
	line	184
	
i1l845:	
;main.c: 183: {
;main.c: 184: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	185
	
i1l847:	
;main.c: 185: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	188
	
i1l849:	
;main.c: 186: }
;main.c: 188: if(pwmTime < 12)
	movlw	low(0Ch)
	subwf	(_pwmTime),w	;volatile
	skipnc
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l358
u23_20:
	line	189
	
i1l851:	
;main.c: 189: PORTB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	goto	i1l853
	line	190
	
i1l358:	
	line	191
;main.c: 190: else
;main.c: 191: PORTB |= 0x20;
	bsf	(5)+(5/8),(5)&7	;volatile
	line	192
	
i1l853:	
;main.c: 192: if(++pwmTime >= 44)
	movlw	low(02Ch)
	incf	(_pwmTime),f	;volatile
	subwf	((_pwmTime)),w	;volatile
	skipc
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l361
u24_20:
	line	194
	
i1l855:	
;main.c: 193: {
;main.c: 194: pwmTime = 0;
	clrf	(_pwmTime)	;volatile
	line	198
	
i1l361:	
	movf	(??_Isr_Timer+1),w
	movwf	pclath
	swapf	(??_Isr_Timer+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Isr_Timer
	__end_of_Isr_Timer:
	signat	_Isr_Timer,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 04Eh

	DABS	1,78,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
