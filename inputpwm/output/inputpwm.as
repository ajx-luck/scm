opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1152A
opt include "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\include\sc8p1152a.cgen.inc"
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
	FNCALL	_main,___lbmod
	FNCALL	_main,_checkPB
	FNCALL	_main,_setPWM
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_nub
	global	_pb3max
	global	_pb3h
	global	_pb4max
	global	_pb4h
	global	_pb5max
	global	_pb5h
	global	_timeoutFlag
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

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_timeoutFlag:
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
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
?___lbmod:	; 1 bytes @ 0x2
	global	checkPB@pbCountmax
checkPB@pbCountmax:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
	ds	1
??___lbmod:	; 1 bytes @ 0x3
	global	checkPB@bitNub
checkPB@bitNub:	; 1 bytes @ 0x3
	ds	1
??_checkPB:	; 1 bytes @ 0x4
	ds	1
??_main:	; 1 bytes @ 0x5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	checkPB@pbCount
checkPB@pbCount:	; 1 bytes @ 0x0
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x0
	ds	1
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x1
	ds	1
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x2
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
;!    COMMON           14      5      12
;!    BANK0            32      3       4

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
;!    _main->___lbmod
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
;! (0) _main                                                 0     0      0     994
;!                        _Init_System
;!                            ___lbmod
;!                            _checkPB
;!                             _setPWM
;! ---------------------------------------------------------------------------------
;! (1) _setPWM                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkPB                                              4     2      2     697
;!                                              2 COMMON     3     1      2
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) ___lbmod                                              5     4      1     297
;!                                              2 COMMON     2     1      1
;!                                              0 BANK0      3     3      0
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
;!   ___lbmod
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
;!COMMON               E      5       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               20      3       4       3       12.5%
;!ABS                  0      0      10       4        0.0%
;!BITBANK0            20      0       0       5        0.0%
;!DATA                 0      0      10       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
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
;;		___lbmod
;;		_checkPB
;;		_setPWM
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	15
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	18
	
l1037:	
;inputpwm.c: 18: Init_System();
	fcall	_Init_System
	line	22
	
l1039:	
;inputpwm.c: 20: {
;inputpwm.c: 22: if(timeoutFlag)
	movf	((_timeoutFlag)),w
	btfsc	status,2
	goto	u271
	goto	u270
u271:
	goto	l1039
u270:
	line	24
	
l1041:	
;inputpwm.c: 23: {
;inputpwm.c: 24: nub++;
	incf	(_nub),f
	line	25
	
l1043:	
;inputpwm.c: 25: checkPB(&pb3h,&pb3max,3);
	movlw	(low(_pb3max|((0x00)<<8)))&0ffh
	movwf	(checkPB@pbCountmax)
	movlw	low(03h)
	movwf	(checkPB@bitNub)
	movlw	(low(_pb3h|((0x00)<<8)))&0ffh
	fcall	_checkPB
	line	26
	
l1045:	
;inputpwm.c: 26: checkPB(&pb4h,&pb4max,4);
	movlw	(low(_pb4max|((0x00)<<8)))&0ffh
	movwf	(checkPB@pbCountmax)
	movlw	low(04h)
	movwf	(checkPB@bitNub)
	movlw	(low(_pb4h|((0x00)<<8)))&0ffh
	fcall	_checkPB
	line	27
	
l1047:	
;inputpwm.c: 27: checkPB(&pb5h,&pb5max,5);
	movlw	(low(_pb5max|((0x00)<<8)))&0ffh
	movwf	(checkPB@pbCountmax)
	movlw	low(05h)
	movwf	(checkPB@bitNub)
	movlw	(low(_pb5h|((0x00)<<8)))&0ffh
	fcall	_checkPB
	line	28
	
l1049:	
;inputpwm.c: 28: timeoutFlag = 0;
	clrf	(_timeoutFlag)
	line	29
	
l1051:	
;inputpwm.c: 29: if(nub >=201)
	movlw	low(0C9h)
	subwf	(_nub),w
	skipc
	goto	u281
	goto	u280
u281:
	goto	l1055
u280:
	line	31
	
l1053:	
;inputpwm.c: 30: {
;inputpwm.c: 31: nub = 0;
	clrf	(_nub)
	line	34
	
l1055:	
;inputpwm.c: 32: }
;inputpwm.c: 34: if(nub % 100 ==0)
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	(_nub),w
	fcall	___lbmod
	xorlw	0
	skipz
	goto	u291
	goto	u290
u291:
	goto	l1039
u290:
	line	36
	
l1057:	
;inputpwm.c: 35: {
;inputpwm.c: 36: setPWM();
	fcall	_setPWM
	goto	l1039
	global	start
	ljmp	start
	opt stack 0
	line	42
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_setPWM

;; *************** function _setPWM *****************
;; Defined at:
;;		line 44 in file "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
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
__ptext1:	;psect for function _setPWM
psect	text1
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	44
	global	__size_of_setPWM
	__size_of_setPWM	equ	__end_of_setPWM-_setPWM
	
_setPWM:	
;incstack = 0
	opt	stack 6
; Regs used in _setPWM: [wreg+status,2+status,0]
	line	47
	
l931:	
;inputpwm.c: 47: PWMS0 = 0;
	bcf	(144/8),(144)&7	;volatile
	line	48
;inputpwm.c: 48: PWMS1 = 0;
	bcf	(145/8),(145)&7	;volatile
	line	49
;inputpwm.c: 49: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	52
;inputpwm.c: 52: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	53
;inputpwm.c: 53: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	54
	
l933:	
;inputpwm.c: 54: PWMR = pb5max * 2;
	clrc
	rlf	(_pb5max),w
	movwf	(19)	;volatile
	line	55
	
l935:	
;inputpwm.c: 55: PWMEN0 = 1;
	bsf	(128/8),(128)&7	;volatile
	line	58
	
l937:	
;inputpwm.c: 58: PWMS0 = 1;
	bsf	(144/8),(144)&7	;volatile
	line	59
	
l939:	
;inputpwm.c: 59: PWMS1 = 0;
	bcf	(145/8),(145)&7	;volatile
	line	60
	
l941:	
;inputpwm.c: 60: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	63
	
l943:	
;inputpwm.c: 63: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	64
	
l945:	
;inputpwm.c: 64: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	65
;inputpwm.c: 65: PWMR = pb4max * 2;
	clrc
	rlf	(_pb4max),w
	movwf	(19)	;volatile
	line	66
	
l947:	
;inputpwm.c: 66: PWMEN1 = 1;
	bsf	(129/8),(129)&7	;volatile
	line	69
	
l949:	
;inputpwm.c: 69: PWMS0 = 0;
	bcf	(144/8),(144)&7	;volatile
	line	70
	
l951:	
;inputpwm.c: 70: PWMS1 = 1;
	bsf	(145/8),(145)&7	;volatile
	line	71
	
l953:	
;inputpwm.c: 71: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	74
	
l955:	
;inputpwm.c: 74: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	75
	
l957:	
;inputpwm.c: 75: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	76
;inputpwm.c: 76: PWMR = pb3max * 2;
	clrc
	rlf	(_pb3max),w
	movwf	(19)	;volatile
	line	77
	
l959:	
;inputpwm.c: 77: PWMEN2 = 1;
	bsf	(130/8),(130)&7	;volatile
	line	79
	
l314:	
	return
	opt stack 0
GLOBAL	__end_of_setPWM
	__end_of_setPWM:
	signat	_setPWM,89
	global	_checkPB

;; *************** function _checkPB *****************
;; Defined at:
;;		line 81 in file "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
;; Parameters:    Size  Location     Type
;;  pbCount         1    wreg     PTR unsigned char 
;;		 -> pb5h(1), pb4h(1), pb3h(1), 
;;  pbCountmax      1    2[COMMON] PTR unsigned char 
;;		 -> pb5max(1), pb4max(1), pb3max(1), 
;;  bitNub          1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pbCount         1    0[BANK0 ] PTR unsigned char 
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
;;      Temps:          1       0
;;      Totals:         3       1
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
	line	81
global __ptext2
__ptext2:	;psect for function _checkPB
psect	text2
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	81
	global	__size_of_checkPB
	__size_of_checkPB	equ	__end_of_checkPB-_checkPB
	
_checkPB:	
;incstack = 0
	opt	stack 6
; Regs used in _checkPB: [wreg-fsr0h+status,2+status,0]
;checkPB@pbCount stored from wreg
	movwf	(checkPB@pbCount)
	line	83
	
l1009:	
;inputpwm.c: 83: if(((PORTB) >> (bitNub)&1) == 1)
	movf	(5),w	;volatile
	movwf	(??_checkPB+0)+0
	incf	(checkPB@bitNub),w
	goto	u214
u215:
	clrc
	rrf	(??_checkPB+0)+0,f
u214:
	addlw	-1
	skipz
	goto	u215
	btfss	0+(??_checkPB+0)+0,(0)&7
	goto	u221
	goto	u220
u221:
	goto	l1013
u220:
	line	85
	
l1011:	
;inputpwm.c: 84: {
;inputpwm.c: 85: *pbCount = *pbCount + 1;
	movf	(checkPB@pbCount),w
	movwf	fsr0
	movf	indf,w
	addlw	01h
	movwf	(??_checkPB+0)+0
	movf	(checkPB@pbCount),w
	movwf	fsr0
	movf	(??_checkPB+0)+0,w
	movwf	indf
	line	86
;inputpwm.c: 86: }
	goto	l320
	line	89
	
l1013:	
;inputpwm.c: 87: else
;inputpwm.c: 88: {
;inputpwm.c: 89: if(*pbCount !=0)
	movf	(checkPB@pbCount),w
	movwf	fsr0
	movf	(indf),w
	btfsc	status,2
	goto	u231
	goto	u230
u231:
	goto	l1017
u230:
	line	91
	
l1015:	
;inputpwm.c: 90: {
;inputpwm.c: 91: *pbCountmax = *pbCount;
	movf	(checkPB@pbCount),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_checkPB+0)+0
	movf	(checkPB@pbCountmax),w
	movwf	fsr0
	movf	(??_checkPB+0)+0,w
	movwf	indf
	line	93
	
l1017:	
;inputpwm.c: 92: }
;inputpwm.c: 93: *pbCount = 0;
	movf	(checkPB@pbCount),w
	movwf	fsr0
	clrf	indf
	line	95
	
l320:	
	return
	opt stack 0
GLOBAL	__end_of_checkPB
	__end_of_checkPB:
	signat	_checkPB,12409
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 4 in file "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    0[BANK0 ] unsigned char 
;;  rem             1    2[BANK0 ] unsigned char 
;;  counter         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         1       0
;;      Locals:         0       3
;;      Temps:          1       0
;;      Totals:         2       3
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lbmod.c"
	line	4
global __ptext3
__ptext3:	;psect for function ___lbmod
psect	text3
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lbmod.c"
	line	4
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	movwf	(___lbmod@dividend)
	line	9
	
l1019:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l1021:	
	clrf	(___lbmod@rem)
	line	12
	
l1023:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u245:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u245
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l1025:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l1027:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u251
	goto	u250
u251:
	goto	l1031
u250:
	line	15
	
l1029:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l1031:	
	decfsz	(___lbmod@counter),f
	goto	u261
	goto	u260
u261:
	goto	l1023
u260:
	line	17
	
l1033:	
	movf	(___lbmod@rem),w
	line	18
	
l604:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 105 in file "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	105
global __ptext4
__ptext4:	;psect for function _Init_System
psect	text4
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	105
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	107
	
l859:	
# 107 "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
nop ;# 
	line	108
# 108 "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
clrwdt ;# 
psect	text4
	line	109
	
l861:	
;inputpwm.c: 109: INTCON = 0;
	clrf	(9)	;volatile
	line	110
	
l863:	
;inputpwm.c: 110: OSCCON = 0X71;
	movlw	low(071h)
	movwf	(8)	;volatile
	line	111
	
l865:	
;inputpwm.c: 111: WPUB = 0xFF;
	movlw	low(0FFh)
	movwf	(13)	;volatile
	line	112
	
l867:	
;inputpwm.c: 112: OPTION_REG = 0xD0;
	movlw	low(0D0h)
	movwf	(7)	;volatile
	line	113
	
l869:	
;inputpwm.c: 113: TMR0 = 0;
	clrf	(1)	;volatile
	line	114
;inputpwm.c: 114: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(9)	;volatile
	line	115
;inputpwm.c: 115: TMR0PRD = 100;
	movlw	low(064h)
	movwf	(15)	;volatile
	line	118
;inputpwm.c: 118: TRISB = 0B00111000;
	movlw	low(038h)
	movwf	(6)	;volatile
	line	119
;inputpwm.c: 119: PORTB = 0B00111000;
	movlw	low(038h)
	movwf	(5)	;volatile
	line	120
;inputpwm.c: 120: IOCB = 0xFF;
	movlw	low(0FFh)
	movwf	(14)	;volatile
	line	123
	
l871:	
;inputpwm.c: 123: PWMCK0 = 0;
	bcf	(148/8),(148)&7	;volatile
	line	124
	
l873:	
;inputpwm.c: 124: PWMCK1 = 1;
	bsf	(149/8),(149)&7	;volatile
	line	125
	
l875:	
;inputpwm.c: 125: PWMPRD8 = 0;
	bcf	(150/8),(150)&7	;volatile
	line	126
	
l877:	
;inputpwm.c: 126: PWMPRD9 = 0;
	bcf	(151/8),(151)&7	;volatile
	line	127
;inputpwm.c: 127: PWM_PRD = 199;
	movlw	low(0C7h)
	movwf	(20)	;volatile
	line	130
	
l879:	
;inputpwm.c: 130: PWMS0 = 0;
	bcf	(144/8),(144)&7	;volatile
	line	131
	
l881:	
;inputpwm.c: 131: PWMS1 = 0;
	bcf	(145/8),(145)&7	;volatile
	line	132
	
l883:	
;inputpwm.c: 132: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	135
	
l885:	
;inputpwm.c: 135: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	136
	
l887:	
;inputpwm.c: 136: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	137
	
l889:	
;inputpwm.c: 137: PWMR = 0;
	clrf	(19)	;volatile
	line	138
	
l891:	
;inputpwm.c: 138: PWMEN0 = 1;
	bsf	(128/8),(128)&7	;volatile
	line	140
	
l893:	
;inputpwm.c: 140: PWMS0 = 1;
	bsf	(144/8),(144)&7	;volatile
	line	141
	
l895:	
;inputpwm.c: 141: PWMS1 = 0;
	bcf	(145/8),(145)&7	;volatile
	line	142
	
l897:	
;inputpwm.c: 142: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	143
	
l899:	
;inputpwm.c: 143: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	144
	
l901:	
;inputpwm.c: 144: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	145
	
l903:	
;inputpwm.c: 145: PWMR = 0;
	clrf	(19)	;volatile
	line	146
	
l905:	
;inputpwm.c: 146: PWMEN1 = 1;
	bsf	(129/8),(129)&7	;volatile
	line	149
	
l907:	
;inputpwm.c: 149: PWMS0 = 0;
	bcf	(144/8),(144)&7	;volatile
	line	150
	
l909:	
;inputpwm.c: 150: PWMS1 = 1;
	bsf	(145/8),(145)&7	;volatile
	line	151
	
l911:	
;inputpwm.c: 151: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	152
	
l913:	
;inputpwm.c: 152: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	153
	
l915:	
;inputpwm.c: 153: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	154
	
l917:	
;inputpwm.c: 154: PWMR = 0;
	clrf	(19)	;volatile
	line	155
	
l919:	
;inputpwm.c: 155: PWMEN2 = 1;
	bsf	(130/8),(130)&7	;volatile
	line	156
	
l323:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 165 in file "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	165
global __ptext5
__ptext5:	;psect for function _Timer0_Isr
psect	text5
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	165
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 6
; Regs used in _Timer0_Isr: [wreg+status,2+status,0]
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
psect	text5
	line	167
	
i1l1001:	
;inputpwm.c: 167: if(T0IF)
	btfss	(74/8),(74)&7	;volatile
	goto	u20_21
	goto	u20_20
u20_21:
	goto	i1l329
u20_20:
	line	170
	
i1l1003:	
;inputpwm.c: 168: {
;inputpwm.c: 170: TMR0 += 50;
	movlw	low(032h)
	addwf	(1),f	;volatile
	line	173
	
i1l1005:	
;inputpwm.c: 173: T0IF = 0;
	bcf	(74/8),(74)&7	;volatile
	line	174
	
i1l1007:	
;inputpwm.c: 174: timeoutFlag = 1;
	clrf	(_timeoutFlag)
	incf	(_timeoutFlag),f
	line	176
	
i1l329:	
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
