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
	global	_revLeftCount
	global	_irRightStep
	global	_irLeftStep
	global	_workStep
	global	_B_MainLoop
	global	_checkCount
	global	_revRightZeroCount
	global	_revLeftZeroCount
	global	_revRightCount
	global	_WPUB
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_WPUB	set	13
	global	_PDCONB
_PDCONB	set	11
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

_revLeftCount:
       ds      1

_irRightStep:
       ds      1

_irLeftStep:
       ds      1

_workStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_checkCount:
       ds      1

_revRightZeroCount:
       ds      1

_revLeftZeroCount:
       ds      1

_revRightCount:
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
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
??_Init_System:	; 1 bytes @ 0x2
??_main:	; 1 bytes @ 0x2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_checkIRKey:	; 1 bytes @ 0x0
??_procesWork:	; 1 bytes @ 0x0
	ds	1
	global	procesWork@tempC
procesWork@tempC:	; 1 bytes @ 0x1
	ds	1
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
;!    COMMON           14      2      12
;!    BANK0            32      2       6

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
;! (0) _main                                                 0     0      0      67
;!                        _Init_System
;!                         _checkIRKey
;!                         _procesWork
;! ---------------------------------------------------------------------------------
;! (1) _procesWork                                           2     2      0      67
;!                                              0 BANK0      2     2      0
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
;!COMMON               E      2       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               20      2       6       3       18.8%
;!ABS                  0      0      12       4        0.0%
;!BITBANK0            20      0       0       5        0.0%
;!DATA                 0      0      12       6        0.0%

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
	
l1018:	
;main.c: 30: PORTB = 0x00;
	clrf	(5)	;volatile
	line	31
	
l1020:	
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
	
l1022:	
;main.c: 35: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u601
	goto	u600
u601:
	goto	l315
u600:
	line	37
	
l1024:	
;main.c: 36: {
;main.c: 37: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	38
	
l1026:	
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
;;  tempC           1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       1
;;      Temps:          0       1
;;      Totals:         0       2
;;Total ram usage:        2 bytes
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
	line	47
	
l1004:	
;main.c: 47: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u561
	goto	u560
u561:
	goto	l1010
u560:
	line	49
	
l1006:	
;main.c: 48: {
;main.c: 49: unsigned char tempC = (~(0x01<<(workStep+2)));
	movlw	low(01h)
	movwf	(??_procesWork+0)+0
	movf	(_workStep),w
	addlw	02h
	addlw	1
	goto	u574
u575:
	clrc
	rlf	(??_procesWork+0)+0,f
u574:
	addlw	-1
	skipz
	goto	u575
	movf	0+(??_procesWork+0)+0,w
	xorlw	0ffh
	movwf	(procesWork@tempC)
	line	50
;main.c: 50: WPUB &= tempC;
	movf	(procesWork@tempC),w
	andwf	(13),f	;volatile
	line	51
;main.c: 51: TRISB &= tempC;
	movf	(procesWork@tempC),w
	andwf	(6),f	;volatile
	line	52
;main.c: 52: PORTB &= tempC;
	movf	(procesWork@tempC),w
	andwf	(5),f	;volatile
	line	53
	
l1008:	
;main.c: 53: workStep = 0;
	clrf	(_workStep)
	line	55
	
l1010:	
;main.c: 54: }
;main.c: 55: if(lowDealy > 0)
	movf	((_lowDealy)),w
	btfsc	status,2
	goto	u581
	goto	u580
u581:
	goto	l325
u580:
	line	58
	
l1012:	
;main.c: 56: {
;main.c: 58: if(--lowDealy == 0)
	decfsz	(_lowDealy),f
	goto	u591
	goto	u590
u591:
	goto	l325
u590:
	line	60
	
l1014:	
;main.c: 59: {
;main.c: 60: TRISB = 0x3E;
	movlw	low(03Eh)
	movwf	(6)	;volatile
	line	61
;main.c: 61: WPUB = 0x38;
	movlw	low(038h)
	movwf	(13)	;volatile
	line	62
	
l1016:	
;main.c: 62: workStep = 0;
	clrf	(_workStep)
	line	66
	
l325:	
	return
	opt stack 0
GLOBAL	__end_of_procesWork
	__end_of_procesWork:
	signat	_procesWork,89
	global	_checkIRKey

;; *************** function _checkIRKey *****************
;; Defined at:
;;		line 88 in file "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
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
	line	88
global __ptext2
__ptext2:	;psect for function _checkIRKey
psect	text2
	file	"C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
	line	88
	global	__size_of_checkIRKey
	__size_of_checkIRKey	equ	__end_of_checkIRKey-_checkIRKey
	
_checkIRKey:	
;incstack = 0
	opt	stack 6
; Regs used in _checkIRKey: [wreg+status,2+status,0]
	line	90
	
l938:	
;main.c: 90: if(((PORTB) >> (1)&1))
	movf	(5),w	;volatile
	movwf	(??_checkIRKey+0)+0
	clrc
	rrf	(??_checkIRKey+0)+0,f
	btfss	0+(??_checkIRKey+0)+0,(0)&7
	goto	u411
	goto	u410
u411:
	goto	l942
u410:
	line	92
	
l940:	
;main.c: 91: {
;main.c: 92: revLeftCount++;
	incf	(_revLeftCount),f
	line	95
	
l942:	
;main.c: 93: }
;main.c: 95: if(((PORTB) >> (2)&1))
	movf	(5),w	;volatile
	movwf	(??_checkIRKey+0)+0
	clrc
	rrf	(??_checkIRKey+0)+0,f
	clrc
	rrf	(??_checkIRKey+0)+0,f
	btfss	0+(??_checkIRKey+0)+0,(0)&7
	goto	u421
	goto	u420
u421:
	goto	l946
u420:
	line	97
	
l944:	
;main.c: 96: {
;main.c: 97: revRightCount++;
	incf	(_revRightCount),f
	line	100
	
l946:	
;main.c: 98: }
;main.c: 100: if(waitTimeCount > 0)
	movf	((_waitTimeCount)),w
iorwf	((_waitTimeCount+1)),w
	btfsc	status,2
	goto	u431
	goto	u430
u431:
	goto	l954
u430:
	line	102
	
l948:	
;main.c: 101: {
;main.c: 102: waitTimeCount++;
	incf	(_waitTimeCount),f
	skipnz
	incf	(_waitTimeCount+1),f
	line	103
	
l950:	
;main.c: 103: if(waitTimeCount > 375)
	movlw	01h
	subwf	(_waitTimeCount+1),w
	movlw	078h
	skipnz
	subwf	(_waitTimeCount),w
	skipc
	goto	u441
	goto	u440
u441:
	goto	l954
u440:
	line	105
	
l952:	
;main.c: 104: {
;main.c: 105: waitTimeCount = 0;
	clrf	(_waitTimeCount)
	clrf	(_waitTimeCount+1)
	line	108
	
l954:	
;main.c: 106: }
;main.c: 107: }
;main.c: 108: if(++checkCount >= 20)
	movlw	low(014h)
	incf	(_checkCount),f
	subwf	((_checkCount)),w
	skipc
	goto	u451
	goto	u450
u451:
	goto	l352
u450:
	line	110
	
l956:	
;main.c: 109: {
;main.c: 110: if(revLeftCount > 5)
	movlw	low(06h)
	subwf	(_revLeftCount),w
	skipc
	goto	u461
	goto	u460
u461:
	goto	l974
u460:
	line	112
	
l958:	
;main.c: 111: {
;main.c: 112: if(irLeftStep == 0)
	movf	((_irLeftStep)),w	;volatile
	btfss	status,2
	goto	u471
	goto	u470
u471:
	goto	l972
u470:
	line	114
	
l960:	
;main.c: 113: {
;main.c: 114: irLeftStep = 1;
	movlw	low(01h)
	movwf	(_irLeftStep)	;volatile
	line	115
	
l962:	
;main.c: 115: if(waitTimeCount == 0)
	movf	((_waitTimeCount)),w
iorwf	((_waitTimeCount+1)),w
	btfss	status,2
	goto	u481
	goto	u480
u481:
	goto	l966
u480:
	line	117
	
l964:	
;main.c: 116: {
;main.c: 117: waitTimeCount = 1;
	clrf	(_waitTimeCount)
	incf	(_waitTimeCount),f
	clrf	(_waitTimeCount+1)
	line	118
;main.c: 118: }
	goto	l972
	line	121
	
l966:	
;main.c: 119: else
;main.c: 120: {
;main.c: 121: lowDealy = 12;
	movlw	low(0Ch)
	movwf	(_lowDealy)
	line	122
;main.c: 122: if(waitTimeCount > 30)
	movlw	0
	subwf	(_waitTimeCount+1),w
	movlw	01Fh
	skipnz
	subwf	(_waitTimeCount),w
	skipc
	goto	u491
	goto	u490
u491:
	goto	l970
u490:
	line	124
	
l968:	
;main.c: 123: {
;main.c: 124: workStep = 2;
	movlw	low(02h)
	movwf	(_workStep)
	line	125
;main.c: 125: }
	goto	l972
	line	128
	
l970:	
;main.c: 126: else
;main.c: 127: {
;main.c: 128: workStep = 3;
	movlw	low(03h)
	movwf	(_workStep)
	line	132
	
l972:	
;main.c: 129: }
;main.c: 130: }
;main.c: 131: }
;main.c: 132: revLeftZeroCount = 0;
	clrf	(_revLeftZeroCount)
	line	133
;main.c: 133: }
	goto	l980
	line	136
	
l974:	
;main.c: 134: else
;main.c: 135: {
;main.c: 136: if(++revLeftZeroCount > 1)
	movlw	low(02h)
	incf	(_revLeftZeroCount),f
	subwf	((_revLeftZeroCount)),w
	skipc
	goto	u501
	goto	u500
u501:
	goto	l980
u500:
	line	138
	
l976:	
;main.c: 137: {
;main.c: 138: revLeftZeroCount = 1;
	clrf	(_revLeftZeroCount)
	incf	(_revLeftZeroCount),f
	line	139
	
l978:	
;main.c: 139: irLeftStep = 0;
	clrf	(_irLeftStep)	;volatile
	line	143
	
l980:	
;main.c: 140: }
;main.c: 141: }
;main.c: 143: if(revRightCount > 5)
	movlw	low(06h)
	subwf	(_revRightCount),w
	skipc
	goto	u511
	goto	u510
u511:
	goto	l998
u510:
	line	145
	
l982:	
;main.c: 144: {
;main.c: 145: if(irRightStep == 0)
	movf	((_irRightStep)),w	;volatile
	btfss	status,2
	goto	u521
	goto	u520
u521:
	goto	l996
u520:
	line	147
	
l984:	
;main.c: 146: {
;main.c: 147: irRightStep = 1;
	movlw	low(01h)
	movwf	(_irRightStep)	;volatile
	line	148
	
l986:	
;main.c: 148: if(waitTimeCount == 0)
	movf	((_waitTimeCount)),w
iorwf	((_waitTimeCount+1)),w
	btfss	status,2
	goto	u531
	goto	u530
u531:
	goto	l990
u530:
	line	150
	
l988:	
;main.c: 149: {
;main.c: 150: waitTimeCount = 1;
	clrf	(_waitTimeCount)
	incf	(_waitTimeCount),f
	clrf	(_waitTimeCount+1)
	line	151
;main.c: 151: }
	goto	l996
	line	154
	
l990:	
;main.c: 152: else
;main.c: 153: {
;main.c: 154: lowDealy = 12;
	movlw	low(0Ch)
	movwf	(_lowDealy)
	line	155
;main.c: 155: if(waitTimeCount > 30)
	movlw	0
	subwf	(_waitTimeCount+1),w
	movlw	01Fh
	skipnz
	subwf	(_waitTimeCount),w
	skipc
	goto	u541
	goto	u540
u541:
	goto	l994
u540:
	line	158
	
l992:	
;main.c: 156: {
;main.c: 158: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	159
;main.c: 159: }
	goto	l996
	line	162
	
l994:	
;main.c: 160: else
;main.c: 161: {
;main.c: 162: workStep = 3;
	movlw	low(03h)
	movwf	(_workStep)
	line	167
	
l996:	
;main.c: 163: }
;main.c: 164: }
;main.c: 166: }
;main.c: 167: revRightZeroCount = 0;
	clrf	(_revRightZeroCount)
	line	168
;main.c: 168: }
	goto	l350
	line	171
	
l998:	
;main.c: 169: else
;main.c: 170: {
;main.c: 171: if(++revRightZeroCount > 1)
	movlw	low(02h)
	incf	(_revRightZeroCount),f
	subwf	((_revRightZeroCount)),w
	skipc
	goto	u551
	goto	u550
u551:
	goto	l350
u550:
	line	173
	
l1000:	
;main.c: 172: {
;main.c: 173: revRightZeroCount = 1;
	clrf	(_revRightZeroCount)
	incf	(_revRightZeroCount),f
	line	174
	
l1002:	
;main.c: 174: irRightStep = 0;
	clrf	(_irRightStep)	;volatile
	line	176
	
l350:	
	line	180
;main.c: 175: }
;main.c: 176: }
;main.c: 180: checkCount = 0;
	clrf	(_checkCount)
	line	181
;main.c: 181: revLeftCount = 0;
	clrf	(_revLeftCount)
	line	182
;main.c: 182: revRightCount = 0;
	clrf	(_revRightCount)
	line	185
	
l352:	
	return
	opt stack 0
GLOBAL	__end_of_checkIRKey
	__end_of_checkIRKey:
	signat	_checkIRKey,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 69 in file "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
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
	line	69
global __ptext3
__ptext3:	;psect for function _Init_System
psect	text3
	file	"C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
	line	69
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	71
	
l742:	
# 71 "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
nop ;# 
	line	72
# 72 "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
clrwdt ;# 
psect	text3
	line	73
	
l744:	
;main.c: 73: INTCON = 0;
	clrf	(9)	;volatile
	line	74
	
l746:	
;main.c: 74: OSCCON = 0X71;
	movlw	low(071h)
	movwf	(8)	;volatile
	line	75
	
l748:	
;main.c: 75: OPTION_REG = 0;
	clrf	(7)	;volatile
	line	79
;main.c: 79: TMR0 = 5;
	movlw	low(05h)
	movwf	(1)	;volatile
	line	80
;main.c: 80: TRISB = 0x3E;
	movlw	low(03Eh)
	movwf	(6)	;volatile
	line	81
;main.c: 81: PDCONB = 0x06;
	movlw	low(06h)
	movwf	(11)	;volatile
	line	82
;main.c: 82: WPUB = 0x38;
	movlw	low(038h)
	movwf	(13)	;volatile
	line	83
	
l750:	
;main.c: 83: PORTB = 0x00;
	clrf	(5)	;volatile
	line	84
	
l752:	
;main.c: 84: INTCON = 0XA0;
	movlw	low(0A0h)
	movwf	(9)	;volatile
	line	85
	
l328:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 190 in file "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
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
	line	190
global __ptext4
__ptext4:	;psect for function _Isr_Timer
psect	text4
	file	"C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
	line	190
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
	line	192
	
i1l844:	
;main.c: 192: if(T0IF)
	btfss	(74/8),(74)&7	;volatile
	goto	u21_21
	goto	u21_20
u21_21:
	goto	i1l362
u21_20:
	line	194
	
i1l846:	
;main.c: 193: {
;main.c: 194: T0IF = 0;
	bcf	(74/8),(74)&7	;volatile
	line	195
	
i1l848:	
;main.c: 195: TMR0 += 5;
	movlw	low(05h)
	addwf	(1),f	;volatile
	line	196
;main.c: 196: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l854
u22_20:
	line	198
	
i1l850:	
;main.c: 197: {
;main.c: 198: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	199
	
i1l852:	
;main.c: 199: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	202
	
i1l854:	
;main.c: 200: }
;main.c: 202: if(pwmTime < 12)
	movlw	low(0Ch)
	subwf	(_pwmTime),w	;volatile
	skipnc
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l359
u23_20:
	line	203
	
i1l856:	
;main.c: 203: PORTB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	goto	i1l858
	line	204
	
i1l359:	
	line	205
;main.c: 204: else
;main.c: 205: PORTB |= 0x01;
	bsf	(5)+(0/8),(0)&7	;volatile
	line	206
	
i1l858:	
;main.c: 206: if(++pwmTime >= 44)
	movlw	low(02Ch)
	incf	(_pwmTime),f	;volatile
	subwf	((_pwmTime)),w	;volatile
	skipc
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l362
u24_20:
	line	208
	
i1l860:	
;main.c: 207: {
;main.c: 208: pwmTime = 0;
	clrf	(_pwmTime)	;volatile
	line	212
	
i1l362:	
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
