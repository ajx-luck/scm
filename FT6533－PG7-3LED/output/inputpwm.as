opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1152A
opt include "E:\cms\SCMCU_IDE_V2.00.07\data\include\sc8p1152a.cgen.inc"
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
	FNCALL	_main,_checkPB
	FNCALL	_main,_setPWM
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_timeoutFlag
	global	_nub
	global	_pb3max
	global	_pb3h
	global	_pb4max
	global	_pb4h
	global	_pb5max
	global	_pb5h
	global	_PWM_PRD
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_PWM_PRD	set	20
	global	_PWMR
_PWMR	set	19
	global	_TMR0PRD
_TMR0PRD	set	15
	global	_IOCB
_IOCB	set	14
	global	_WPUB
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
	global	_PWMS0
_PWMS0	set	144
	global	_PWMS1
_PWMS1	set	145
	global	_PWMS2
_PWMS2	set	146
	global	_PWMCK0
_PWMCK0	set	148
	global	_PWMCK1
_PWMCK1	set	149
	global	_PWMPRD8
_PWMPRD8	set	150
	global	_PWMPRD9
_PWMPRD9	set	151
	global	_PWMR08
_PWMR08	set	136
	global	_PWMR09
_PWMR09	set	137
	global	_PWMEN0
_PWMEN0	set	128
	global	_PWMEN1
_PWMEN1	set	129
	global	_PWMEN2
_PWMEN2	set	130
	global	_T0IF
_T0IF	set	74
; #config settings
	file	"inputpwm.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_timeoutFlag:
       ds      1

_nub:
       ds      1

_pb3max:
       ds      1

_pb3h:
       ds      1

_pb4max:
       ds      1

_pb4h:
       ds      1

_pb5max:
       ds      1

_pb5h:
       ds      1

	file	"inputpwm.as"
	line	#
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
?_setPWM:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
??_Timer0_Isr:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
?_checkPB:	; 1 bytes @ 0x2
??_setPWM:	; 1 bytes @ 0x2
	global	checkPB@pbCountmax
checkPB@pbCountmax:	; 1 bytes @ 0x2
	ds	1
	global	checkPB@bitNub
checkPB@bitNub:	; 1 bytes @ 0x3
	ds	1
??_main:	; 1 bytes @ 0x4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_checkPB:	; 1 bytes @ 0x0
	ds	1
	global	checkPB@pbCount
checkPB@pbCount:	; 1 bytes @ 0x1
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         8
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      4      12
;!    BANK0            32      2       2

;!
;!Pointer List with Targets:
;!
;!    checkPB@pbCountmax	PTR unsigned char  size(1) Largest target is 1
;!		 -> pb5max(COMMON[1]), pb4max(COMMON[1]), pb3max(COMMON[1]), 
;!
;!    checkPB@pbCount	PTR unsigned char  size(1) Largest target is 1
;!		 -> pb5h(COMMON[1]), pb4h(COMMON[1]), pb3h(COMMON[1]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_checkPB
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_checkPB
;!
;!Critical Paths under _Timer0_Isr in BANK0
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
;! (0) _main                                                 0     0      0     697
;!                        _Init_System
;!                            _checkPB
;!                             _setPWM
;! ---------------------------------------------------------------------------------
;! (1) _setPWM                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkPB                                              4     2      2     697
;!                                              2 COMMON     2     0      2
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _Timer0_Isr                                           2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_System
;!   _checkPB
;!   _setPWM
;!
;! _Timer0_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      4       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               20      2       2       3        6.3%
;!ABS                  0      0       E       4        0.0%
;!BITBANK0            20      0       0       5        0.0%
;!DATA                 0      0       E       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "E:\project\scm\inputpwm\inputpwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		_checkPB
;;		_setPWM
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\project\scm\inputpwm\inputpwm.c"
	line	14
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\project\scm\inputpwm\inputpwm.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	17
	
l874:	
;inputpwm.c: 17: Init_System();
	fcall	_Init_System
	line	21
	
l876:	
;inputpwm.c: 19: {
;inputpwm.c: 21: if(timeoutFlag)
	movf	((_timeoutFlag)),w
	btfsc	status,2
	goto	u151
	goto	u150
u151:
	goto	l876
u150:
	line	23
	
l878:	
;inputpwm.c: 22: {
;inputpwm.c: 23: nub++;
	incf	(_nub),f
	line	24
	
l880:	
;inputpwm.c: 24: checkPB(&pb3h,&pb3max,3);
	movlw	(low(_pb3max|((0x00)<<8)))&0ffh
	movwf	(checkPB@pbCountmax)
	movlw	low(03h)
	movwf	(checkPB@bitNub)
	movlw	(low(_pb3h|((0x00)<<8)))&0ffh
	fcall	_checkPB
	line	25
	
l882:	
;inputpwm.c: 25: checkPB(&pb4h,&pb4max,4);
	movlw	(low(_pb4max|((0x00)<<8)))&0ffh
	movwf	(checkPB@pbCountmax)
	movlw	low(04h)
	movwf	(checkPB@bitNub)
	movlw	(low(_pb4h|((0x00)<<8)))&0ffh
	fcall	_checkPB
	line	26
	
l884:	
;inputpwm.c: 26: checkPB(&pb5h,&pb5max,5);
	movlw	(low(_pb5max|((0x00)<<8)))&0ffh
	movwf	(checkPB@pbCountmax)
	movlw	low(05h)
	movwf	(checkPB@bitNub)
	movlw	(low(_pb5h|((0x00)<<8)))&0ffh
	fcall	_checkPB
	line	27
	
l886:	
;inputpwm.c: 27: timeoutFlag = 0;
	clrf	(_timeoutFlag)
	line	28
	
l888:	
;inputpwm.c: 28: if(nub == 100)
		movlw	100
	xorwf	((_nub)),w
	btfss	status,2
	goto	u161
	goto	u160
u161:
	goto	l876
u160:
	line	30
	
l890:	
;inputpwm.c: 29: {
;inputpwm.c: 30: setPWM();
	fcall	_setPWM
	line	31
	
l892:	
;inputpwm.c: 31: nub = 0;
	clrf	(_nub)
	goto	l876
	global	start
	ljmp	start
	opt stack 0
	line	37
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_setPWM

;; *************** function _setPWM *****************
;; Defined at:
;;		line 39 in file "E:\project\scm\inputpwm\inputpwm.c"
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
	line	39
global __ptext1
__ptext1:	;psect for function _setPWM
psect	text1
	file	"E:\project\scm\inputpwm\inputpwm.c"
	line	39
	global	__size_of_setPWM
	__size_of_setPWM	equ	__end_of_setPWM-_setPWM
	
_setPWM:	
;incstack = 0
	opt	stack 6
; Regs used in _setPWM: [wreg+status,2+status,0]
	line	42
	
l780:	
;inputpwm.c: 42: PWMS0 = 0;
	bcf	(144/8),(144)&7	;volatile
	line	43
;inputpwm.c: 43: PWMS1 = 0;
	bcf	(145/8),(145)&7	;volatile
	line	44
;inputpwm.c: 44: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	47
;inputpwm.c: 47: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	48
;inputpwm.c: 48: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	49
	
l782:	
;inputpwm.c: 49: PWMR = 0X64-pb5max;
	movf	(_pb5max),w
	sublw	064h
	movwf	(19)	;volatile
	line	50
	
l784:	
;inputpwm.c: 50: PWMEN0 = 1;
	bsf	(128/8),(128)&7	;volatile
	line	53
	
l786:	
;inputpwm.c: 53: PWMS0 = 1;
	bsf	(144/8),(144)&7	;volatile
	line	54
	
l788:	
;inputpwm.c: 54: PWMS1 = 0;
	bcf	(145/8),(145)&7	;volatile
	line	55
	
l790:	
;inputpwm.c: 55: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	58
	
l792:	
;inputpwm.c: 58: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	59
	
l794:	
;inputpwm.c: 59: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	60
;inputpwm.c: 60: PWMR = 0X64-pb4max;
	movf	(_pb4max),w
	sublw	064h
	movwf	(19)	;volatile
	line	61
	
l796:	
;inputpwm.c: 61: PWMEN1 = 1;
	bsf	(129/8),(129)&7	;volatile
	line	64
	
l798:	
;inputpwm.c: 64: PWMS0 = 0;
	bcf	(144/8),(144)&7	;volatile
	line	65
	
l800:	
;inputpwm.c: 65: PWMS1 = 1;
	bsf	(145/8),(145)&7	;volatile
	line	66
	
l802:	
;inputpwm.c: 66: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	69
	
l804:	
;inputpwm.c: 69: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	70
	
l806:	
;inputpwm.c: 70: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	71
;inputpwm.c: 71: PWMR = 0X64-pb3max;
	movf	(_pb3max),w
	sublw	064h
	movwf	(19)	;volatile
	line	72
	
l808:	
;inputpwm.c: 72: PWMEN2 = 1;
	bsf	(130/8),(130)&7	;volatile
	line	73
	
l313:	
	return
	opt stack 0
GLOBAL	__end_of_setPWM
	__end_of_setPWM:
	signat	_setPWM,89
	global	_checkPB

;; *************** function _checkPB *****************
;; Defined at:
;;		line 75 in file "E:\project\scm\inputpwm\inputpwm.c"
;; Parameters:    Size  Location     Type
;;  pbCount         1    wreg     PTR unsigned char 
;;		 -> pb5h(1), pb4h(1), pb3h(1), 
;;  pbCountmax      1    2[COMMON] PTR unsigned char 
;;		 -> pb5max(1), pb4max(1), pb3max(1), 
;;  bitNub          1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pbCount         1    1[BANK0 ] PTR unsigned char 
;;		 -> pb5h(1), pb4h(1), pb3h(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         2       0
;;      Locals:         0       1
;;      Temps:          0       1
;;      Totals:         2       2
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	75
global __ptext2
__ptext2:	;psect for function _checkPB
psect	text2
	file	"E:\project\scm\inputpwm\inputpwm.c"
	line	75
	global	__size_of_checkPB
	__size_of_checkPB	equ	__end_of_checkPB-_checkPB
	
_checkPB:	
;incstack = 0
	opt	stack 6
; Regs used in _checkPB: [wreg-fsr0h+status,2+status,0]
;checkPB@pbCount stored from wreg
	movwf	(checkPB@pbCount)
	line	77
	
l864:	
;inputpwm.c: 77: if(((PORTB) >> (bitNub)&1) == 1)
	movf	(5),w	;volatile
	movwf	(??_checkPB+0)+0
	incf	(checkPB@bitNub),w
	goto	u124
u125:
	clrc
	rrf	(??_checkPB+0)+0,f
u124:
	addlw	-1
	skipz
	goto	u125
	btfss	0+(??_checkPB+0)+0,(0)&7
	goto	u131
	goto	u130
u131:
	goto	l868
u130:
	line	79
	
l866:	
;inputpwm.c: 78: {
;inputpwm.c: 79: *pbCount = *pbCount + 1;
	movf	(checkPB@pbCount),w
	movwf	fsr0
	movf	indf,w
	addlw	01h
	movwf	(??_checkPB+0)+0
	movf	(checkPB@pbCount),w
	movwf	fsr0
	movf	(??_checkPB+0)+0,w
	movwf	indf
	line	80
;inputpwm.c: 80: }
	goto	l319
	line	83
	
l868:	
;inputpwm.c: 81: else
;inputpwm.c: 82: {
;inputpwm.c: 83: if(*pbCount !=0)
	movf	(checkPB@pbCount),w
	movwf	fsr0
	movf	(indf),w
	btfsc	status,2
	goto	u141
	goto	u140
u141:
	goto	l872
u140:
	line	85
	
l870:	
;inputpwm.c: 84: {
;inputpwm.c: 85: *pbCountmax = *pbCount;
	movf	(checkPB@pbCount),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_checkPB+0)+0
	movf	(checkPB@pbCountmax),w
	movwf	fsr0
	movf	(??_checkPB+0)+0,w
	movwf	indf
	line	87
	
l872:	
;inputpwm.c: 86: }
;inputpwm.c: 87: *pbCount = 0;
	movf	(checkPB@pbCount),w
	movwf	fsr0
	clrf	indf
	line	89
	
l319:	
	return
	opt stack 0
GLOBAL	__end_of_checkPB
	__end_of_checkPB:
	signat	_checkPB,12409
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 99 in file "E:\project\scm\inputpwm\inputpwm.c"
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
	line	99
global __ptext3
__ptext3:	;psect for function _Init_System
psect	text3
	file	"E:\project\scm\inputpwm\inputpwm.c"
	line	99
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	101
	
l708:	
# 101 "E:\project\scm\inputpwm\inputpwm.c"
nop ;# 
	line	102
# 102 "E:\project\scm\inputpwm\inputpwm.c"
clrwdt ;# 
psect	text3
	line	103
	
l710:	
;inputpwm.c: 103: INTCON = 0;
	clrf	(9)	;volatile
	line	104
	
l712:	
;inputpwm.c: 104: OSCCON = 0X71;
	movlw	low(071h)
	movwf	(8)	;volatile
	line	105
	
l714:	
;inputpwm.c: 105: WPUB = 0xFF;
	movlw	low(0FFh)
	movwf	(13)	;volatile
	line	106
	
l716:	
;inputpwm.c: 106: OPTION_REG = 0xD0;
	movlw	low(0D0h)
	movwf	(7)	;volatile
	line	107
	
l718:	
;inputpwm.c: 107: TMR0 = 0;
	clrf	(1)	;volatile
	line	108
;inputpwm.c: 108: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(9)	;volatile
	line	109
;inputpwm.c: 109: TMR0PRD = 100;
	movlw	low(064h)
	movwf	(15)	;volatile
	line	112
;inputpwm.c: 112: TRISB = 0B00111000;
	movlw	low(038h)
	movwf	(6)	;volatile
	line	113
;inputpwm.c: 113: PORTB = 0B00111000;
	movlw	low(038h)
	movwf	(5)	;volatile
	line	114
;inputpwm.c: 114: IOCB = 0xFF;
	movlw	low(0FFh)
	movwf	(14)	;volatile
	line	117
	
l720:	
;inputpwm.c: 117: PWMCK0 = 1;
	bsf	(148/8),(148)&7	;volatile
	line	118
	
l722:	
;inputpwm.c: 118: PWMCK1 = 0;
	bcf	(149/8),(149)&7	;volatile
	line	119
	
l724:	
;inputpwm.c: 119: PWMPRD8 = 0;
	bcf	(150/8),(150)&7	;volatile
	line	120
	
l726:	
;inputpwm.c: 120: PWMPRD9 = 0;
	bcf	(151/8),(151)&7	;volatile
	line	121
;inputpwm.c: 121: PWM_PRD = 99;
	movlw	low(063h)
	movwf	(20)	;volatile
	line	124
	
l728:	
;inputpwm.c: 124: PWMS0 = 0;
	bcf	(144/8),(144)&7	;volatile
	line	125
	
l730:	
;inputpwm.c: 125: PWMS1 = 0;
	bcf	(145/8),(145)&7	;volatile
	line	126
	
l732:	
;inputpwm.c: 126: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	129
	
l734:	
;inputpwm.c: 129: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	130
	
l736:	
;inputpwm.c: 130: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	131
	
l738:	
;inputpwm.c: 131: PWMR = 0;
	clrf	(19)	;volatile
	line	132
	
l740:	
;inputpwm.c: 132: PWMEN0 = 1;
	bsf	(128/8),(128)&7	;volatile
	line	134
	
l742:	
;inputpwm.c: 134: PWMS0 = 1;
	bsf	(144/8),(144)&7	;volatile
	line	135
	
l744:	
;inputpwm.c: 135: PWMS1 = 0;
	bcf	(145/8),(145)&7	;volatile
	line	136
	
l746:	
;inputpwm.c: 136: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	137
	
l748:	
;inputpwm.c: 137: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	138
	
l750:	
;inputpwm.c: 138: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	139
	
l752:	
;inputpwm.c: 139: PWMR = 0;
	clrf	(19)	;volatile
	line	140
	
l754:	
;inputpwm.c: 140: PWMEN1 = 1;
	bsf	(129/8),(129)&7	;volatile
	line	143
	
l756:	
;inputpwm.c: 143: PWMS0 = 0;
	bcf	(144/8),(144)&7	;volatile
	line	144
	
l758:	
;inputpwm.c: 144: PWMS1 = 1;
	bsf	(145/8),(145)&7	;volatile
	line	145
	
l760:	
;inputpwm.c: 145: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	146
	
l762:	
;inputpwm.c: 146: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	147
	
l764:	
;inputpwm.c: 147: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	148
	
l766:	
;inputpwm.c: 148: PWMR = 0;
	clrf	(19)	;volatile
	line	149
	
l768:	
;inputpwm.c: 149: PWMEN2 = 1;
	bsf	(130/8),(130)&7	;volatile
	line	150
	
l322:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 159 in file "E:\project\scm\inputpwm\inputpwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
	line	159
global __ptext4
__ptext4:	;psect for function _Timer0_Isr
psect	text4
	file	"E:\project\scm\inputpwm\inputpwm.c"
	line	159
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 6
; Regs used in _Timer0_Isr: []
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Timer0_Isr+0)
	movf	pclath,w
	movwf	(??_Timer0_Isr+1)
	ljmp	_Timer0_Isr
psect	text4
	line	161
	
i1l830:	
;inputpwm.c: 161: if(T0IF)
	btfss	(74/8),(74)&7	;volatile
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l328
u6_20:
	line	167
	
i1l832:	
;inputpwm.c: 162: {
;inputpwm.c: 167: T0IF = 0;
	bcf	(74/8),(74)&7	;volatile
	line	168
;inputpwm.c: 168: timeoutFlag = 1;
	clrf	(_timeoutFlag)
	incf	(_timeoutFlag),f
	line	170
	
i1l328:	
	movf	(??_Timer0_Isr+1),w
	movwf	pclath
	swapf	(??_Timer0_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Timer0_Isr
	__end_of_Timer0_Isr:
	signat	_Timer0_Isr,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 04Eh

	DABS	1,78,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
