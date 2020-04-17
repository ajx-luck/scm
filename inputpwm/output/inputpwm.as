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
	FNCALL	_main,_checkPB3
	FNCALL	_main,_checkPB4
	FNCALL	_main,_checkPB5
	FNCALL	_main,_setPWM
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_pb3h
	global	_pb4max
	global	_pb4h
	global	_pb5max
	global	_pb5h
	global	_prenub
	global	_nub
	global	_pb3max
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

_prenub:
       ds      1

_nub:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_pb3max:
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
?_checkPB5:	; 1 bytes @ 0x0
?_checkPB4:	; 1 bytes @ 0x0
?_checkPB3:	; 1 bytes @ 0x0
?_setPWM:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
??_Timer0_Isr:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_checkPB5:	; 1 bytes @ 0x2
??_checkPB4:	; 1 bytes @ 0x2
??_checkPB3:	; 1 bytes @ 0x2
??_setPWM:	; 1 bytes @ 0x2
?___lbmod:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
	ds	1
??___lbmod:	; 1 bytes @ 0x3
	ds	1
??_main:	; 1 bytes @ 0x4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
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
;!    COMMON           14      4      11
;!    BANK0            32      3       4

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___lbmod
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
;! (0) _main                                                 0     0      0     286
;!                        _Init_System
;!                            ___lbmod
;!                           _checkPB3
;!                           _checkPB4
;!                           _checkPB5
;!                             _setPWM
;! ---------------------------------------------------------------------------------
;! (1) _setPWM                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkPB5                                             1     1      0       0
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _checkPB4                                             1     1      0       0
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _checkPB3                                             1     1      0       0
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) ___lbmod                                              5     4      1     286
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
;!   _checkPB3
;!   _checkPB4
;!   _checkPB5
;!   _setPWM
;!
;! _Timer0_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      4       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               20      3       4       3       12.5%
;!ABS                  0      0       F       4        0.0%
;!BITBANK0            20      0       0       5        0.0%
;!DATA                 0      0       F       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
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
;;		___lbmod
;;		_checkPB3
;;		_checkPB4
;;		_checkPB5
;;		_setPWM
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	17
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l985:	
;inputpwm.c: 20: Init_System();
	fcall	_Init_System
	line	24
	
l987:	
;inputpwm.c: 22: {
;inputpwm.c: 24: if(prenub != nub)
	movf	(_prenub),w
	xorwf	(_nub),w
	skipnz
	goto	u261
	goto	u260
u261:
	goto	l997
u260:
	line	26
	
l989:	
;inputpwm.c: 25: {
;inputpwm.c: 26: prenub = nub;
	movf	(_nub),w
	movwf	(_prenub)
	line	27
	
l991:	
;inputpwm.c: 27: checkPB5();
	fcall	_checkPB5
	line	28
	
l993:	
;inputpwm.c: 28: checkPB4();
	fcall	_checkPB4
	line	29
	
l995:	
;inputpwm.c: 29: checkPB3();
	fcall	_checkPB3
	line	31
	
l997:	
;inputpwm.c: 30: }
;inputpwm.c: 31: if(nub >=201)
	movlw	low(0C9h)
	subwf	(_nub),w
	skipc
	goto	u271
	goto	u270
u271:
	goto	l1001
u270:
	line	33
	
l999:	
;inputpwm.c: 32: {
;inputpwm.c: 33: nub = 0;
	clrf	(_nub)
	line	36
	
l1001:	
;inputpwm.c: 34: }
;inputpwm.c: 36: if(nub % 100 ==0)
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	(_nub),w
	fcall	___lbmod
	xorlw	0
	skipz
	goto	u281
	goto	u280
u281:
	goto	l987
u280:
	line	38
	
l1003:	
;inputpwm.c: 37: {
;inputpwm.c: 38: setPWM();
	fcall	_setPWM
	goto	l987
	global	start
	ljmp	start
	opt stack 0
	line	41
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_setPWM

;; *************** function _setPWM *****************
;; Defined at:
;;		line 43 in file "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
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
	line	43
global __ptext1
__ptext1:	;psect for function _setPWM
psect	text1
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	43
	global	__size_of_setPWM
	__size_of_setPWM	equ	__end_of_setPWM-_setPWM
	
_setPWM:	
;incstack = 0
	opt	stack 6
; Regs used in _setPWM: [wreg+status,2+status,0]
	line	46
	
l899:	
;inputpwm.c: 46: PWMS0 = 0;
	bcf	(144/8),(144)&7	;volatile
	line	47
;inputpwm.c: 47: PWMS1 = 0;
	bcf	(145/8),(145)&7	;volatile
	line	48
;inputpwm.c: 48: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	51
;inputpwm.c: 51: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	52
;inputpwm.c: 52: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	53
	
l901:	
;inputpwm.c: 53: PWMR = pb5max * 2;
	clrc
	rlf	(_pb5max),w
	movwf	(19)	;volatile
	line	54
	
l903:	
;inputpwm.c: 54: PWMEN0 = 1;
	bsf	(128/8),(128)&7	;volatile
	line	57
	
l905:	
;inputpwm.c: 57: PWMS0 = 1;
	bsf	(144/8),(144)&7	;volatile
	line	58
	
l907:	
;inputpwm.c: 58: PWMS1 = 0;
	bcf	(145/8),(145)&7	;volatile
	line	59
	
l909:	
;inputpwm.c: 59: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	62
	
l911:	
;inputpwm.c: 62: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	63
	
l913:	
;inputpwm.c: 63: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	64
;inputpwm.c: 64: PWMR = pb4max * 2;
	clrc
	rlf	(_pb4max),w
	movwf	(19)	;volatile
	line	65
	
l915:	
;inputpwm.c: 65: PWMEN1 = 1;
	bsf	(129/8),(129)&7	;volatile
	line	68
	
l917:	
;inputpwm.c: 68: PWMS0 = 0;
	bcf	(144/8),(144)&7	;volatile
	line	69
	
l919:	
;inputpwm.c: 69: PWMS1 = 1;
	bsf	(145/8),(145)&7	;volatile
	line	70
	
l921:	
;inputpwm.c: 70: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	73
	
l923:	
;inputpwm.c: 73: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	74
	
l925:	
;inputpwm.c: 74: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	75
;inputpwm.c: 75: PWMR = pb3max * 2;
	clrc
	rlf	(_pb3max),w
	movwf	(19)	;volatile
	line	76
	
l927:	
;inputpwm.c: 76: PWMEN2 = 1;
	bsf	(130/8),(130)&7	;volatile
	line	78
	
l318:	
	return
	opt stack 0
GLOBAL	__end_of_setPWM
	__end_of_setPWM:
	signat	_setPWM,89
	global	_checkPB5

;; *************** function _checkPB5 *****************
;; Defined at:
;;		line 80 in file "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	80
global __ptext2
__ptext2:	;psect for function _checkPB5
psect	text2
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	80
	global	__size_of_checkPB5
	__size_of_checkPB5	equ	__end_of_checkPB5-_checkPB5
	
_checkPB5:	
;incstack = 0
	opt	stack 6
; Regs used in _checkPB5: [wreg+status,2+status,0]
	line	82
	
l783:	
;inputpwm.c: 82: if(((PORTB) >> (3)&1) == 1)
	movf	(5),w	;volatile
	movwf	(??_checkPB5+0)+0
	clrc
	rrf	(??_checkPB5+0)+0,f
	clrc
	rrf	(??_checkPB5+0)+0,f
	clrc
	rrf	(??_checkPB5+0)+0,f
	btfss	0+(??_checkPB5+0)+0,(0)&7
	goto	u11
	goto	u10
u11:
	goto	l787
u10:
	line	84
	
l785:	
;inputpwm.c: 83: {
;inputpwm.c: 84: pb5h++;
	incf	(_pb5h),f
	line	85
;inputpwm.c: 85: }
	goto	l324
	line	88
	
l787:	
;inputpwm.c: 86: else
;inputpwm.c: 87: {
;inputpwm.c: 88: if(pb5h !=0)
	movf	((_pb5h)),w
	btfsc	status,2
	goto	u21
	goto	u20
u21:
	goto	l791
u20:
	line	90
	
l789:	
;inputpwm.c: 89: {
;inputpwm.c: 90: pb5max = pb5h;
	movf	(_pb5h),w
	movwf	(_pb5max)
	line	92
	
l791:	
;inputpwm.c: 91: }
;inputpwm.c: 92: pb5h = 0;
	clrf	(_pb5h)
	line	94
	
l324:	
	return
	opt stack 0
GLOBAL	__end_of_checkPB5
	__end_of_checkPB5:
	signat	_checkPB5,89
	global	_checkPB4

;; *************** function _checkPB4 *****************
;; Defined at:
;;		line 96 in file "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	96
global __ptext3
__ptext3:	;psect for function _checkPB4
psect	text3
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	96
	global	__size_of_checkPB4
	__size_of_checkPB4	equ	__end_of_checkPB4-_checkPB4
	
_checkPB4:	
;incstack = 0
	opt	stack 6
; Regs used in _checkPB4: [wreg+status,2+status,0]
	line	98
	
l793:	
;inputpwm.c: 98: if(((PORTB) >> (4)&1) == 1)
	movf	(5),w	;volatile
	movwf	(??_checkPB4+0)+0
	movlw	04h
u35:
	clrc
	rrf	(??_checkPB4+0)+0,f
	addlw	-1
	skipz
	goto	u35
	btfss	0+(??_checkPB4+0)+0,(0)&7
	goto	u41
	goto	u40
u41:
	goto	l797
u40:
	line	100
	
l795:	
;inputpwm.c: 99: {
;inputpwm.c: 100: pb4h++;
	incf	(_pb4h),f
	line	101
;inputpwm.c: 101: }
	goto	l330
	line	104
	
l797:	
;inputpwm.c: 102: else
;inputpwm.c: 103: {
;inputpwm.c: 104: if(pb4h !=0)
	movf	((_pb4h)),w
	btfsc	status,2
	goto	u51
	goto	u50
u51:
	goto	l801
u50:
	line	106
	
l799:	
;inputpwm.c: 105: {
;inputpwm.c: 106: pb4max = pb4h;
	movf	(_pb4h),w
	movwf	(_pb4max)
	line	108
	
l801:	
;inputpwm.c: 107: }
;inputpwm.c: 108: pb4h = 0;
	clrf	(_pb4h)
	line	110
	
l330:	
	return
	opt stack 0
GLOBAL	__end_of_checkPB4
	__end_of_checkPB4:
	signat	_checkPB4,89
	global	_checkPB3

;; *************** function _checkPB3 *****************
;; Defined at:
;;		line 112 in file "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	112
global __ptext4
__ptext4:	;psect for function _checkPB3
psect	text4
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	112
	global	__size_of_checkPB3
	__size_of_checkPB3	equ	__end_of_checkPB3-_checkPB3
	
_checkPB3:	
;incstack = 0
	opt	stack 6
; Regs used in _checkPB3: [wreg+status,2+status,0]
	line	114
	
l889:	
;inputpwm.c: 114: if(((PORTB) >> (3)&1) == 1)
	movf	(5),w	;volatile
	movwf	(??_checkPB3+0)+0
	clrc
	rrf	(??_checkPB3+0)+0,f
	clrc
	rrf	(??_checkPB3+0)+0,f
	clrc
	rrf	(??_checkPB3+0)+0,f
	btfss	0+(??_checkPB3+0)+0,(0)&7
	goto	u151
	goto	u150
u151:
	goto	l893
u150:
	line	116
	
l891:	
;inputpwm.c: 115: {
;inputpwm.c: 116: pb3h++;
	incf	(_pb3h),f
	line	117
;inputpwm.c: 117: }
	goto	l336
	line	120
	
l893:	
;inputpwm.c: 118: else
;inputpwm.c: 119: {
;inputpwm.c: 120: if(pb3h !=0)
	movf	((_pb3h)),w
	btfsc	status,2
	goto	u161
	goto	u160
u161:
	goto	l897
u160:
	line	122
	
l895:	
;inputpwm.c: 121: {
;inputpwm.c: 122: pb3max = pb3h;
	movf	(_pb3h),w
	movwf	(_pb3max)
	line	124
	
l897:	
;inputpwm.c: 123: }
;inputpwm.c: 124: pb3h = 0;
	clrf	(_pb3h)
	line	126
	
l336:	
	return
	opt stack 0
GLOBAL	__end_of_checkPB3
	__end_of_checkPB3:
	signat	_checkPB3,89
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
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lbmod.c"
	line	4
global __ptext5
__ptext5:	;psect for function ___lbmod
psect	text5
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
	
l967:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l969:	
	clrf	(___lbmod@rem)
	line	12
	
l971:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u235:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u235
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l973:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l975:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u241
	goto	u240
u241:
	goto	l979
u240:
	line	15
	
l977:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l979:	
	decfsz	(___lbmod@counter),f
	goto	u251
	goto	u250
u251:
	goto	l971
u250:
	line	17
	
l981:	
	movf	(___lbmod@rem),w
	line	18
	
l620:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 135 in file "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	135
global __ptext6
__ptext6:	;psect for function _Init_System
psect	text6
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	135
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	137
	
l721:	
# 137 "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
nop ;# 
	line	138
# 138 "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
clrwdt ;# 
psect	text6
	line	139
	
l723:	
;inputpwm.c: 139: INTCON = 0;
	clrf	(9)	;volatile
	line	140
	
l725:	
;inputpwm.c: 140: OSCCON = 0X71;
	movlw	low(071h)
	movwf	(8)	;volatile
	line	141
	
l727:	
;inputpwm.c: 141: WPUB = 0xFF;
	movlw	low(0FFh)
	movwf	(13)	;volatile
	line	142
	
l729:	
;inputpwm.c: 142: OPTION_REG = 0xD0;
	movlw	low(0D0h)
	movwf	(7)	;volatile
	line	143
	
l731:	
;inputpwm.c: 143: TMR0 = 0;
	clrf	(1)	;volatile
	line	144
;inputpwm.c: 144: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(9)	;volatile
	line	145
;inputpwm.c: 145: TMR0PRD = 100;
	movlw	low(064h)
	movwf	(15)	;volatile
	line	148
;inputpwm.c: 148: TRISB = 0B00111000;
	movlw	low(038h)
	movwf	(6)	;volatile
	line	149
;inputpwm.c: 149: PORTB = 0B00111000;
	movlw	low(038h)
	movwf	(5)	;volatile
	line	150
;inputpwm.c: 150: IOCB = 0xFF;
	movlw	low(0FFh)
	movwf	(14)	;volatile
	line	153
	
l733:	
;inputpwm.c: 153: PWMCK0 = 0;
	bcf	(148/8),(148)&7	;volatile
	line	154
	
l735:	
;inputpwm.c: 154: PWMCK1 = 1;
	bsf	(149/8),(149)&7	;volatile
	line	155
	
l737:	
;inputpwm.c: 155: PWMPRD8 = 0;
	bcf	(150/8),(150)&7	;volatile
	line	156
	
l739:	
;inputpwm.c: 156: PWMPRD9 = 0;
	bcf	(151/8),(151)&7	;volatile
	line	157
;inputpwm.c: 157: PWM_PRD = 199;
	movlw	low(0C7h)
	movwf	(20)	;volatile
	line	160
	
l741:	
;inputpwm.c: 160: PWMS0 = 0;
	bcf	(144/8),(144)&7	;volatile
	line	161
	
l743:	
;inputpwm.c: 161: PWMS1 = 0;
	bcf	(145/8),(145)&7	;volatile
	line	162
	
l745:	
;inputpwm.c: 162: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	165
	
l747:	
;inputpwm.c: 165: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	166
	
l749:	
;inputpwm.c: 166: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	167
	
l751:	
;inputpwm.c: 167: PWMR = 0;
	clrf	(19)	;volatile
	line	168
	
l753:	
;inputpwm.c: 168: PWMEN0 = 1;
	bsf	(128/8),(128)&7	;volatile
	line	170
	
l755:	
;inputpwm.c: 170: PWMS0 = 1;
	bsf	(144/8),(144)&7	;volatile
	line	171
	
l757:	
;inputpwm.c: 171: PWMS1 = 0;
	bcf	(145/8),(145)&7	;volatile
	line	172
	
l759:	
;inputpwm.c: 172: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	173
	
l761:	
;inputpwm.c: 173: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	174
	
l763:	
;inputpwm.c: 174: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	175
	
l765:	
;inputpwm.c: 175: PWMR = 0;
	clrf	(19)	;volatile
	line	176
	
l767:	
;inputpwm.c: 176: PWMEN1 = 1;
	bsf	(129/8),(129)&7	;volatile
	line	179
	
l769:	
;inputpwm.c: 179: PWMS0 = 0;
	bcf	(144/8),(144)&7	;volatile
	line	180
	
l771:	
;inputpwm.c: 180: PWMS1 = 1;
	bsf	(145/8),(145)&7	;volatile
	line	181
	
l773:	
;inputpwm.c: 181: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	182
	
l775:	
;inputpwm.c: 182: PWMR08 = 0;
	bcf	(136/8),(136)&7	;volatile
	line	183
	
l777:	
;inputpwm.c: 183: PWMR09 = 0;
	bcf	(137/8),(137)&7	;volatile
	line	184
	
l779:	
;inputpwm.c: 184: PWMR = 0;
	clrf	(19)	;volatile
	line	185
	
l781:	
;inputpwm.c: 185: PWMEN2 = 1;
	bsf	(130/8),(130)&7	;volatile
	line	186
	
l339:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 195 in file "C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
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
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	195
global __ptext7
__ptext7:	;psect for function _Timer0_Isr
psect	text7
	file	"C:\SCMCU WorkSpace\inputpwm\inputpwm.c"
	line	195
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
psect	text7
	line	197
	
i1l881:	
;inputpwm.c: 197: if(T0IF)
	btfss	(74/8),(74)&7	;volatile
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l345
u14_20:
	line	200
	
i1l883:	
;inputpwm.c: 198: {
;inputpwm.c: 200: TMR0 += 50;
	movlw	low(032h)
	addwf	(1),f	;volatile
	line	203
	
i1l885:	
;inputpwm.c: 203: T0IF = 0;
	bcf	(74/8),(74)&7	;volatile
	line	204
	
i1l887:	
;inputpwm.c: 204: nub++;
	incf	(_nub),f
	line	206
	
i1l345:	
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
