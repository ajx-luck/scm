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
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_MainTime
	global	_pwmTime
	global	_checkCount
	global	_revRightZeroCount
	global	_revLeftZeroCount
	global	_revRightCount
	global	_revLeftCount
	global	_irRightStep
	global	_irLeftStep
	global	_B_MainLoop
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
_MainTime:
       ds      1

_pwmTime:
       ds      1

_checkCount:
       ds      1

_revRightZeroCount:
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
?_main:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_checkIRKey:	; 1 bytes @ 0x2
	ds	1
??_main:	; 1 bytes @ 0x3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         9
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      3      13
;!    BANK0            32      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_checkIRKey
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
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
;! ---------------------------------------------------------------------------------
;! (1) _checkIRKey                                           1     1      0       0
;!                                              2 COMMON     1     1      0
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
;!
;! _Isr_Timer (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      3       D       1       92.9%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               20      0       0       3        0.0%
;!ABS                  0      0       D       4        0.0%
;!BITBANK0            20      0       0       5        0.0%
;!DATA                 0      0       D       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 22 in file "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
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
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
	line	22
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l768:	
;main.c: 24: PORTB = 0x00;
	clrf	(5)	;volatile
	line	25
	
l770:	
;main.c: 25: Init_System();
	fcall	_Init_System
	line	26
;main.c: 26: while(1)
	
l307:	
	line	28
# 28 "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
clrwdt ;# 
psect	maintext
	line	29
	
l772:	
;main.c: 29: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u111
	goto	u110
u111:
	goto	l307
u110:
	line	31
	
l774:	
;main.c: 30: {
;main.c: 31: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	32
	
l776:	
;main.c: 32: checkIRKey();
	fcall	_checkIRKey
	goto	l307
	global	start
	ljmp	start
	opt stack 0
	line	35
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_checkIRKey

;; *************** function _checkIRKey *****************
;; Defined at:
;;		line 56 in file "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
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
;;      Temps:          1       0
;;      Totals:         1       0
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
	line	56
global __ptext1
__ptext1:	;psect for function _checkIRKey
psect	text1
	file	"C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
	line	56
	global	__size_of_checkIRKey
	__size_of_checkIRKey	equ	__end_of_checkIRKey-_checkIRKey
	
_checkIRKey:	
;incstack = 0
	opt	stack 6
; Regs used in _checkIRKey: [wreg+status,2+status,0]
	line	58
	
l730:	
;main.c: 58: if(((PORTB) >> (4)&1))
	movf	(5),w	;volatile
	movwf	(??_checkIRKey+0)+0
	movlw	04h
u15:
	clrc
	rrf	(??_checkIRKey+0)+0,f
	addlw	-1
	skipz
	goto	u15
	btfss	0+(??_checkIRKey+0)+0,(0)&7
	goto	u21
	goto	u20
u21:
	goto	l734
u20:
	line	60
	
l732:	
;main.c: 59: {
;main.c: 60: revLeftCount++;
	incf	(_revLeftCount),f
	line	63
	
l734:	
;main.c: 61: }
;main.c: 63: if(((PORTB) >> (3)&1))
	movf	(5),w	;volatile
	movwf	(??_checkIRKey+0)+0
	clrc
	rrf	(??_checkIRKey+0)+0,f
	clrc
	rrf	(??_checkIRKey+0)+0,f
	clrc
	rrf	(??_checkIRKey+0)+0,f
	btfss	0+(??_checkIRKey+0)+0,(0)&7
	goto	u31
	goto	u30
u31:
	goto	l738
u30:
	line	65
	
l736:	
;main.c: 64: {
;main.c: 65: revRightCount++;
	incf	(_revRightCount),f
	line	68
	
l738:	
;main.c: 66: }
;main.c: 68: if(++checkCount >= 20)
	movlw	low(014h)
	incf	(_checkCount),f
	subwf	((_checkCount)),w
	skipc
	goto	u41
	goto	u40
u41:
	goto	l328
u40:
	line	70
	
l740:	
;main.c: 69: {
;main.c: 70: if(revLeftCount > 2)
	movlw	low(03h)
	subwf	(_revLeftCount),w
	skipc
	goto	u51
	goto	u50
u51:
	goto	l748
u50:
	line	72
	
l742:	
;main.c: 71: {
;main.c: 72: if(irLeftStep == 0)
	movf	((_irLeftStep)),w	;volatile
	btfss	status,2
	goto	u61
	goto	u60
u61:
	goto	l746
u60:
	line	74
	
l744:	
;main.c: 73: {
;main.c: 74: irLeftStep = 1;
	movlw	low(01h)
	movwf	(_irLeftStep)	;volatile
	line	77
	
l746:	
;main.c: 76: }
;main.c: 77: revLeftZeroCount = 0;
	clrf	(_revLeftZeroCount)
	line	78
;main.c: 78: }
	goto	l754
	line	81
	
l748:	
;main.c: 79: else
;main.c: 80: {
;main.c: 81: if(++revLeftZeroCount > 1)
	movlw	low(02h)
	incf	(_revLeftZeroCount),f
	subwf	((_revLeftZeroCount)),w
	skipc
	goto	u71
	goto	u70
u71:
	goto	l754
u70:
	line	83
	
l750:	
;main.c: 82: {
;main.c: 83: revLeftZeroCount = 1;
	clrf	(_revLeftZeroCount)
	incf	(_revLeftZeroCount),f
	line	84
	
l752:	
;main.c: 84: irLeftStep = 0;
	clrf	(_irLeftStep)	;volatile
	line	88
	
l754:	
;main.c: 85: }
;main.c: 86: }
;main.c: 88: if(revRightCount > 2)
	movlw	low(03h)
	subwf	(_revRightCount),w
	skipc
	goto	u81
	goto	u80
u81:
	goto	l762
u80:
	line	90
	
l756:	
;main.c: 89: {
;main.c: 90: if(irRightStep == 0)
	movf	((_irRightStep)),w	;volatile
	btfss	status,2
	goto	u91
	goto	u90
u91:
	goto	l760
u90:
	line	92
	
l758:	
;main.c: 91: {
;main.c: 92: irRightStep = 1;
	movlw	low(01h)
	movwf	(_irRightStep)	;volatile
	line	95
	
l760:	
;main.c: 94: }
;main.c: 95: revRightZeroCount = 0;
	clrf	(_revRightZeroCount)
	line	96
;main.c: 96: }
	goto	l326
	line	99
	
l762:	
;main.c: 97: else
;main.c: 98: {
;main.c: 99: if(++revRightZeroCount > 1)
	movlw	low(02h)
	incf	(_revRightZeroCount),f
	subwf	((_revRightZeroCount)),w
	skipc
	goto	u101
	goto	u100
u101:
	goto	l326
u100:
	line	101
	
l764:	
;main.c: 100: {
;main.c: 101: revRightZeroCount = 1;
	clrf	(_revRightZeroCount)
	incf	(_revRightZeroCount),f
	line	102
	
l766:	
;main.c: 102: irRightStep = 0;
	clrf	(_irRightStep)	;volatile
	line	104
	
l326:	
	line	108
;main.c: 103: }
;main.c: 104: }
;main.c: 108: checkCount = 0;
	clrf	(_checkCount)
	line	109
;main.c: 109: revLeftCount = 0;
	clrf	(_revLeftCount)
	line	110
;main.c: 110: revRightCount = 0;
	clrf	(_revRightCount)
	line	113
	
l328:	
	return
	opt stack 0
GLOBAL	__end_of_checkIRKey
	__end_of_checkIRKey:
	signat	_checkIRKey,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 38 in file "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	38
global __ptext2
__ptext2:	;psect for function _Init_System
psect	text2
	file	"C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
	line	38
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	40
	
l714:	
# 40 "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
nop ;# 
	line	41
# 41 "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
clrwdt ;# 
psect	text2
	line	42
	
l716:	
;main.c: 42: INTCON = 0;
	clrf	(9)	;volatile
	line	43
	
l718:	
;main.c: 43: OSCCON = 0X71;
	movlw	low(071h)
	movwf	(8)	;volatile
	line	44
	
l720:	
;main.c: 44: OPTION_REG = 0;
	clrf	(7)	;volatile
	line	48
	
l722:	
;main.c: 48: WPUB = 0x00;
	clrf	(13)	;volatile
	line	49
	
l724:	
;main.c: 49: TMR0 = 5;
	movlw	low(05h)
	movwf	(1)	;volatile
	line	50
	
l726:	
;main.c: 50: TRISB = 0x18;
	movlw	low(018h)
	movwf	(6)	;volatile
	line	51
	
l728:	
;main.c: 51: PORTB = 0x00;
	clrf	(5)	;volatile
	line	52
;main.c: 52: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(9)	;volatile
	line	53
	
l314:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 118 in file "C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	118
global __ptext3
__ptext3:	;psect for function _Isr_Timer
psect	text3
	file	"C:\mcuproject\scm\ðÐðÄÖ¸»Ó°ô\main.c"
	line	118
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
psect	text3
	line	120
	
i1l778:	
;main.c: 120: if(T0IF)
	btfss	(74/8),(74)&7	;volatile
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l338
u12_20:
	line	122
	
i1l780:	
;main.c: 121: {
;main.c: 122: T0IF = 0;
	bcf	(74/8),(74)&7	;volatile
	line	123
	
i1l782:	
;main.c: 123: TMR0 += 5;
	movlw	low(05h)
	addwf	(1),f	;volatile
	line	124
;main.c: 124: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l788
u13_20:
	line	126
	
i1l784:	
;main.c: 125: {
;main.c: 126: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	127
	
i1l786:	
;main.c: 127: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	130
	
i1l788:	
;main.c: 128: }
;main.c: 130: if(pwmTime < 12)
	movlw	low(0Ch)
	subwf	(_pwmTime),w	;volatile
	skipnc
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l335
u14_20:
	line	131
	
i1l790:	
;main.c: 131: PORTB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	goto	i1l792
	line	132
	
i1l335:	
	line	133
;main.c: 132: else
;main.c: 133: PORTB |= 0x20;
	bsf	(5)+(5/8),(5)&7	;volatile
	line	134
	
i1l792:	
;main.c: 134: if(++pwmTime >= 44)
	movlw	low(02Ch)
	incf	(_pwmTime),f	;volatile
	subwf	((_pwmTime)),w	;volatile
	skipc
	goto	u15_21
	goto	u15_20
u15_21:
	goto	i1l338
u15_20:
	line	136
	
i1l794:	
;main.c: 135: {
;main.c: 136: pwmTime = 0;
	clrf	(_pwmTime)	;volatile
	line	140
	
i1l338:	
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
