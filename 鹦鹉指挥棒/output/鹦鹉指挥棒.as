opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1152A
opt include "F:\飞盛微电子\安装软件\中微单片机\SCMCU_IDE_V2.00.07\data\include\sc8p1152a.cgen.inc"
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
	file	"鹦鹉指挥棒.as"
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

	file	"鹦鹉指挥棒.as"
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
;! (1) _procesWork                                           0     0      0       0
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
;;		line 28 in file "C:\Users\mxy\Desktop\新建文件夹\scm\鹦鹉指挥棒\main.c"
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
	file	"C:\Users\mxy\Desktop\新建文件夹\scm\鹦鹉指挥棒\main.c"
	line	28
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\mxy\Desktop\新建文件夹\scm\鹦鹉指挥棒\main.c"
	line	28
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l1040:	
;main.c: 30: PORTB = 0x00;
	clrf	(5)	;volatile
	line	31
	
l1042:	
;main.c: 31: Init_System();
	fcall	_Init_System
	line	32
;main.c: 32: while(1)
	
l315:	
	line	34
# 34 "C:\Users\mxy\Desktop\新建文件夹\scm\鹦鹉指挥棒\main.c"
clrwdt ;# 
psect	maintext
	line	35
	
l1044:	
;main.c: 35: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u611
	goto	u610
u611:
	goto	l315
u610:
	line	37
	
l1046:	
;main.c: 36: {
;main.c: 37: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	38
	
l1048:	
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
;;		line 44 in file "C:\Users\mxy\Desktop\新建文件夹\scm\鹦鹉指挥棒\main.c"
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
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	44
global __ptext1
__ptext1:	;psect for function _procesWork
psect	text1
	file	"C:\Users\mxy\Desktop\新建文件夹\scm\鹦鹉指挥棒\main.c"
	line	44
	global	__size_of_procesWork
	__size_of_procesWork	equ	__end_of_procesWork-_procesWork
	
_procesWork:	
;incstack = 0
	opt	stack 6
; Regs used in _procesWork: [wreg+status,2+status,0]
	line	47
	
l1030:	
;main.c: 47: if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u581
	goto	u580
u581:
	goto	l1034
u580:
	line	49
	
l1032:	
;main.c: 48: {
;main.c: 49: workStep = 0;
	clrf	(_workStep)
	line	51
	
l1034:	
;main.c: 50: }
;main.c: 51: if(lowDealy > 0)
	movf	((_lowDealy)),w
	btfsc	status,2
	goto	u591
	goto	u590
u591:
	goto	l325
u590:
	line	54
	
l1036:	
;main.c: 52: {
;main.c: 54: if(--lowDealy == 0)
	decfsz	(_lowDealy),f
	goto	u601
	goto	u600
u601:
	goto	l325
u600:
	line	57
	
l1038:	
;main.c: 55: {
;main.c: 57: workStep = 0;
	clrf	(_workStep)
	line	61
	
l325:	
	return
	opt stack 0
GLOBAL	__end_of_procesWork
	__end_of_procesWork:
	signat	_procesWork,89
	global	_checkIRKey

;; *************** function _checkIRKey *****************
;; Defined at:
;;		line 83 in file "C:\Users\mxy\Desktop\新建文件夹\scm\鹦鹉指挥棒\main.c"
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
	line	83
global __ptext2
__ptext2:	;psect for function _checkIRKey
psect	text2
	file	"C:\Users\mxy\Desktop\新建文件夹\scm\鹦鹉指挥棒\main.c"
	line	83
	global	__size_of_checkIRKey
	__size_of_checkIRKey	equ	__end_of_checkIRKey-_checkIRKey
	
_checkIRKey:	
;incstack = 0
	opt	stack 6
; Regs used in _checkIRKey: [wreg+status,2+status,0]
	line	85
	
l964:	
;main.c: 85: if(((PORTB) >> (1)&1))
	movf	(5),w	;volatile
	movwf	(??_checkIRKey+0)+0
	clrc
	rrf	(??_checkIRKey+0)+0,f
	btfss	0+(??_checkIRKey+0)+0,(0)&7
	goto	u431
	goto	u430
u431:
	goto	l968
u430:
	line	87
	
l966:	
;main.c: 86: {
;main.c: 87: revLeftCount++;
	incf	(_revLeftCount),f
	line	90
	
l968:	
;main.c: 88: }
;main.c: 90: if(((PORTB) >> (2)&1))
	movf	(5),w	;volatile
	movwf	(??_checkIRKey+0)+0
	clrc
	rrf	(??_checkIRKey+0)+0,f
	clrc
	rrf	(??_checkIRKey+0)+0,f
	btfss	0+(??_checkIRKey+0)+0,(0)&7
	goto	u441
	goto	u440
u441:
	goto	l972
u440:
	line	92
	
l970:	
;main.c: 91: {
;main.c: 92: revRightCount++;
	incf	(_revRightCount),f
	line	95
	
l972:	
;main.c: 93: }
;main.c: 95: if(waitTimeCount > 0)
	movf	((_waitTimeCount)),w
iorwf	((_waitTimeCount+1)),w
	btfsc	status,2
	goto	u451
	goto	u450
u451:
	goto	l980
u450:
	line	97
	
l974:	
;main.c: 96: {
;main.c: 97: waitTimeCount++;
	incf	(_waitTimeCount),f
	skipnz
	incf	(_waitTimeCount+1),f
	line	98
	
l976:	
;main.c: 98: if(waitTimeCount > 375)
	movlw	01h
	subwf	(_waitTimeCount+1),w
	movlw	078h
	skipnz
	subwf	(_waitTimeCount),w
	skipc
	goto	u461
	goto	u460
u461:
	goto	l980
u460:
	line	100
	
l978:	
;main.c: 99: {
;main.c: 100: waitTimeCount = 0;
	clrf	(_waitTimeCount)
	clrf	(_waitTimeCount+1)
	line	103
	
l980:	
;main.c: 101: }
;main.c: 102: }
;main.c: 103: if(++checkCount >= 20)
	movlw	low(014h)
	incf	(_checkCount),f
	subwf	((_checkCount)),w
	skipc
	goto	u471
	goto	u470
u471:
	goto	l352
u470:
	line	105
	
l982:	
;main.c: 104: {
;main.c: 105: if(revLeftCount > 5)
	movlw	low(06h)
	subwf	(_revLeftCount),w
	skipc
	goto	u481
	goto	u480
u481:
	goto	l1000
u480:
	line	107
	
l984:	
;main.c: 106: {
;main.c: 107: if(irLeftStep == 0)
	movf	((_irLeftStep)),w	;volatile
	btfss	status,2
	goto	u491
	goto	u490
u491:
	goto	l998
u490:
	line	109
	
l986:	
;main.c: 108: {
;main.c: 109: irLeftStep = 1;
	movlw	low(01h)
	movwf	(_irLeftStep)	;volatile
	line	110
	
l988:	
;main.c: 110: if(waitTimeCount == 0)
	movf	((_waitTimeCount)),w
iorwf	((_waitTimeCount+1)),w
	btfss	status,2
	goto	u501
	goto	u500
u501:
	goto	l992
u500:
	line	112
	
l990:	
;main.c: 111: {
;main.c: 112: waitTimeCount = 1;
	clrf	(_waitTimeCount)
	incf	(_waitTimeCount),f
	clrf	(_waitTimeCount+1)
	line	113
;main.c: 113: }
	goto	l998
	line	116
	
l992:	
;main.c: 114: else
;main.c: 115: {
;main.c: 116: lowDealy = 12;
	movlw	low(0Ch)
	movwf	(_lowDealy)
	line	117
;main.c: 117: if(waitTimeCount > 30)
	movlw	0
	subwf	(_waitTimeCount+1),w
	movlw	01Fh
	skipnz
	subwf	(_waitTimeCount),w
	skipc
	goto	u511
	goto	u510
u511:
	goto	l996
u510:
	line	119
	
l994:	
;main.c: 118: {
;main.c: 119: workStep = 2;
	movlw	low(02h)
	movwf	(_workStep)
	line	120
;main.c: 120: }
	goto	l998
	line	123
	
l996:	
;main.c: 121: else
;main.c: 122: {
;main.c: 123: workStep = 3;
	movlw	low(03h)
	movwf	(_workStep)
	line	127
	
l998:	
;main.c: 124: }
;main.c: 125: }
;main.c: 126: }
;main.c: 127: revLeftZeroCount = 0;
	clrf	(_revLeftZeroCount)
	line	128
;main.c: 128: }
	goto	l1006
	line	131
	
l1000:	
;main.c: 129: else
;main.c: 130: {
;main.c: 131: if(++revLeftZeroCount > 1)
	movlw	low(02h)
	incf	(_revLeftZeroCount),f
	subwf	((_revLeftZeroCount)),w
	skipc
	goto	u521
	goto	u520
u521:
	goto	l1006
u520:
	line	133
	
l1002:	
;main.c: 132: {
;main.c: 133: revLeftZeroCount = 1;
	clrf	(_revLeftZeroCount)
	incf	(_revLeftZeroCount),f
	line	134
	
l1004:	
;main.c: 134: irLeftStep = 0;
	clrf	(_irLeftStep)	;volatile
	line	138
	
l1006:	
;main.c: 135: }
;main.c: 136: }
;main.c: 138: if(revRightCount > 5)
	movlw	low(06h)
	subwf	(_revRightCount),w
	skipc
	goto	u531
	goto	u530
u531:
	goto	l1024
u530:
	line	140
	
l1008:	
;main.c: 139: {
;main.c: 140: if(irRightStep == 0)
	movf	((_irRightStep)),w	;volatile
	btfss	status,2
	goto	u541
	goto	u540
u541:
	goto	l1022
u540:
	line	142
	
l1010:	
;main.c: 141: {
;main.c: 142: irRightStep = 1;
	movlw	low(01h)
	movwf	(_irRightStep)	;volatile
	line	143
	
l1012:	
;main.c: 143: if(waitTimeCount == 0)
	movf	((_waitTimeCount)),w
iorwf	((_waitTimeCount+1)),w
	btfss	status,2
	goto	u551
	goto	u550
u551:
	goto	l1016
u550:
	line	145
	
l1014:	
;main.c: 144: {
;main.c: 145: waitTimeCount = 1;
	clrf	(_waitTimeCount)
	incf	(_waitTimeCount),f
	clrf	(_waitTimeCount+1)
	line	146
;main.c: 146: }
	goto	l1022
	line	149
	
l1016:	
;main.c: 147: else
;main.c: 148: {
;main.c: 149: lowDealy = 12;
	movlw	low(0Ch)
	movwf	(_lowDealy)
	line	150
;main.c: 150: if(waitTimeCount > 30)
	movlw	0
	subwf	(_waitTimeCount+1),w
	movlw	01Fh
	skipnz
	subwf	(_waitTimeCount),w
	skipc
	goto	u561
	goto	u560
u561:
	goto	l1020
u560:
	line	153
	
l1018:	
;main.c: 151: {
;main.c: 153: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	154
;main.c: 154: }
	goto	l1022
	line	157
	
l1020:	
;main.c: 155: else
;main.c: 156: {
;main.c: 157: workStep = 3;
	movlw	low(03h)
	movwf	(_workStep)
	line	162
	
l1022:	
;main.c: 158: }
;main.c: 159: }
;main.c: 161: }
;main.c: 162: revRightZeroCount = 0;
	clrf	(_revRightZeroCount)
	line	163
;main.c: 163: }
	goto	l350
	line	166
	
l1024:	
;main.c: 164: else
;main.c: 165: {
;main.c: 166: if(++revRightZeroCount > 1)
	movlw	low(02h)
	incf	(_revRightZeroCount),f
	subwf	((_revRightZeroCount)),w
	skipc
	goto	u571
	goto	u570
u571:
	goto	l350
u570:
	line	168
	
l1026:	
;main.c: 167: {
;main.c: 168: revRightZeroCount = 1;
	clrf	(_revRightZeroCount)
	incf	(_revRightZeroCount),f
	line	169
	
l1028:	
;main.c: 169: irRightStep = 0;
	clrf	(_irRightStep)	;volatile
	line	171
	
l350:	
	line	175
;main.c: 170: }
;main.c: 171: }
;main.c: 175: checkCount = 0;
	clrf	(_checkCount)
	line	176
;main.c: 176: revLeftCount = 0;
	clrf	(_revLeftCount)
	line	177
;main.c: 177: revRightCount = 0;
	clrf	(_revRightCount)
	line	180
	
l352:	
	return
	opt stack 0
GLOBAL	__end_of_checkIRKey
	__end_of_checkIRKey:
	signat	_checkIRKey,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 64 in file "C:\Users\mxy\Desktop\新建文件夹\scm\鹦鹉指挥棒\main.c"
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
	line	64
global __ptext3
__ptext3:	;psect for function _Init_System
psect	text3
	file	"C:\Users\mxy\Desktop\新建文件夹\scm\鹦鹉指挥棒\main.c"
	line	64
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	66
	
l946:	
# 66 "C:\Users\mxy\Desktop\新建文件夹\scm\鹦鹉指挥棒\main.c"
nop ;# 
	line	67
# 67 "C:\Users\mxy\Desktop\新建文件夹\scm\鹦鹉指挥棒\main.c"
clrwdt ;# 
psect	text3
	line	68
	
l948:	
;main.c: 68: INTCON = 0;
	clrf	(9)	;volatile
	line	69
	
l950:	
;main.c: 69: OSCCON = 0X71;
	movlw	low(071h)
	movwf	(8)	;volatile
	line	70
	
l952:	
;main.c: 70: OPTION_REG = 0;
	clrf	(7)	;volatile
	line	74
	
l954:	
;main.c: 74: WPUB = 0x00;
	clrf	(13)	;volatile
	line	75
	
l956:	
;main.c: 75: TMR0 = 5;
	movlw	low(05h)
	movwf	(1)	;volatile
	line	76
	
l958:	
;main.c: 76: TRISB = 0x06;
	movlw	low(06h)
	movwf	(6)	;volatile
	line	77
	
l960:	
;main.c: 77: PDCONB = 0x06;
	movlw	low(06h)
	movwf	(11)	;volatile
	line	78
;main.c: 78: PORTB = 0x00;
	clrf	(5)	;volatile
	line	79
	
l962:	
;main.c: 79: INTCON = 0XA0;
	movlw	low(0A0h)
	movwf	(9)	;volatile
	line	80
	
l328:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 185 in file "C:\Users\mxy\Desktop\新建文件夹\scm\鹦鹉指挥棒\main.c"
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
	line	185
global __ptext4
__ptext4:	;psect for function _Isr_Timer
psect	text4
	file	"C:\Users\mxy\Desktop\新建文件夹\scm\鹦鹉指挥棒\main.c"
	line	185
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
	line	187
	
i1l842:	
;main.c: 187: if(T0IF)
	btfss	(74/8),(74)&7	;volatile
	goto	u20_21
	goto	u20_20
u20_21:
	goto	i1l362
u20_20:
	line	189
	
i1l844:	
;main.c: 188: {
;main.c: 189: T0IF = 0;
	bcf	(74/8),(74)&7	;volatile
	line	190
	
i1l846:	
;main.c: 190: TMR0 += 5;
	movlw	low(05h)
	addwf	(1),f	;volatile
	line	191
;main.c: 191: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u21_21
	goto	u21_20
u21_21:
	goto	i1l852
u21_20:
	line	193
	
i1l848:	
;main.c: 192: {
;main.c: 193: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	194
	
i1l850:	
;main.c: 194: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	197
	
i1l852:	
;main.c: 195: }
;main.c: 197: if(pwmTime < 12)
	movlw	low(0Ch)
	subwf	(_pwmTime),w	;volatile
	skipnc
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l359
u22_20:
	line	198
	
i1l854:	
;main.c: 198: PORTB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	goto	i1l856
	line	199
	
i1l359:	
	line	200
;main.c: 199: else
;main.c: 200: PORTB |= 0x20;
	bsf	(5)+(5/8),(5)&7	;volatile
	line	201
	
i1l856:	
;main.c: 201: if(++pwmTime >= 44)
	movlw	low(02Ch)
	incf	(_pwmTime),f	;volatile
	subwf	((_pwmTime)),w	;volatile
	skipc
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l362
u23_20:
	line	203
	
i1l858:	
;main.c: 202: {
;main.c: 203: pwmTime = 0;
	clrf	(_pwmTime)	;volatile
	line	207
	
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
