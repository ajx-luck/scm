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
	FNCALL	_main,_resetTimeCount
	FNCALL	_main,_setPWM1
	FNCALL	_main,_setPWM2
	FNCALL	_setPWM2,___lwdiv
	FNCALL	_setPWM1,___lwdiv
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_count1
	global	_timeout1MSFlag
	global	_count3
	global	_count2
	global	_timeoutFlag
	global	_FirstFlag
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_FirstFlag:
       ds      1

	global	_PWM_PRD
_PWM_PRD	set	20
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
	global	_T0IF
_T0IF	set	74
; #config settings
	file	"LED_COLOR.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_count1:
       ds      2

_timeout1MSFlag:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_count3:
       ds      2

_count2:
       ds      2

_timeoutFlag:
       ds      1

	file	"LED_COLOR.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
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
?_resetTimeCount:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
??_Timer0_Isr:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_resetTimeCount:	; 1 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	ds	2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	ds	2
??___lwdiv:	; 1 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x8
	ds	1
??_setPWM1:	; 1 bytes @ 0x9
??_setPWM2:	; 1 bytes @ 0x9
??_main:	; 1 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_setPWM1:	; 1 bytes @ 0x0
?_setPWM2:	; 1 bytes @ 0x0
	global	setPWM1@width
setPWM1@width:	; 2 bytes @ 0x0
	global	setPWM2@width
setPWM2@width:	; 2 bytes @ 0x0
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         8
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      12
;!    BANK0            32      2       8

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _setPWM2->___lwdiv
;!    _setPWM1->___lwdiv
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_setPWM1
;!    _main->_setPWM2
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
;! (0) _main                                                 0     0      0    1194
;!                        _Init_System
;!                     _resetTimeCount
;!                            _setPWM1
;!                            _setPWM2
;! ---------------------------------------------------------------------------------
;! (1) _setPWM2                                              2     0      2     597
;!                                              0 BANK0      2     0      2
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (1) _setPWM1                                              2     0      2     597
;!                                              0 BANK0      2     0      2
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     334
;!                                              2 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _resetTimeCount                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _Timer0_Isr                                           2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_System
;!   _resetTimeCount
;!   _setPWM1
;!     ___lwdiv
;!   _setPWM2
;!     ___lwdiv
;!
;! _Timer0_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               20      2       8       3       25.0%
;!ABS                  0      0      14       4        0.0%
;!BITBANK0            20      0       0       5        0.0%
;!DATA                 0      0      14       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 108 in file "C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Init_System
;;		_resetTimeCount
;;		_setPWM1
;;		_setPWM2
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
	line	108
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
	line	108
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	110
	
l1005:	
;led.c: 110: Init_System();
	fcall	_Init_System
	line	111
	
l1007:	
;led.c: 111: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(9)	;volatile
	line	114
	
l1009:	
;led.c: 113: {
;led.c: 114: if(timeoutFlag)
	movf	((_timeoutFlag)),w
	btfsc	status,2
	goto	u591
	goto	u590
u591:
	goto	l1009
u590:
	line	116
	
l1011:	
;led.c: 115: {
;led.c: 116: timeoutFlag = 0;
	clrf	(_timeoutFlag)
	line	117
# 117 "C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
clrwdt ;# 
psect	maintext
	line	119
	
l1013:	
;led.c: 119: resetTimeCount();
	fcall	_resetTimeCount
	line	121
	
l1015:	
;led.c: 121: if(timeout1MSFlag == 0)
	movf	((_timeout1MSFlag)),w
	btfss	status,2
	goto	u601
	goto	u600
u601:
	goto	l1043
u600:
	line	124
	
l1017:	
;led.c: 122: {
;led.c: 124: if(count1 <275)
	movlw	01h
	subwf	(_count1+1),w
	movlw	013h
	skipnz
	subwf	(_count1),w
	skipnc
	goto	u611
	goto	u610
u611:
	goto	l1021
u610:
	line	126
	
l1019:	
;led.c: 125: {
;led.c: 126: setPWM1(count1);
	movf	(_count1+1),w
	movwf	(setPWM1@width+1)
	movf	(_count1),w
	movwf	(setPWM1@width)
	fcall	_setPWM1
	line	129
	
l1021:	
;led.c: 127: }
;led.c: 129: if(count1 >=275 && count1<=550)
	movlw	01h
	subwf	(_count1+1),w
	movlw	013h
	skipnz
	subwf	(_count1),w
	skipc
	goto	u621
	goto	u620
u621:
	goto	l1027
u620:
	
l1023:	
	movlw	02h
	subwf	(_count1+1),w
	movlw	027h
	skipnz
	subwf	(_count1),w
	skipnc
	goto	u631
	goto	u630
u631:
	goto	l1027
u630:
	line	131
	
l1025:	
;led.c: 130: {
;led.c: 131: setPWM1(550 - count1);
	movlw	026h
	movwf	(setPWM1@width)
	movlw	02h
	movwf	((setPWM1@width))+1
	movf	(_count1),w
	subwf	(setPWM1@width),f
	movf	(_count1+1),w
	skipc
	decf	(setPWM1@width+1),f
	subwf	(setPWM1@width+1),f
	fcall	_setPWM1
	line	135
	
l1027:	
;led.c: 132: }
;led.c: 135: if(FirstFlag)
	movf	((_FirstFlag)),w
	btfsc	status,2
	goto	u641
	goto	u640
u641:
	goto	l1033
u640:
	line	137
	
l1029:	
;led.c: 136: {
;led.c: 137: if(count2 >=450)
	movlw	01h
	subwf	(_count2+1),w
	movlw	0C2h
	skipnz
	subwf	(_count2),w
	skipc
	goto	u651
	goto	u650
u651:
	goto	l326
u650:
	line	139
	
l1031:	
;led.c: 138: {
;led.c: 139: count3 = count2-450;
	movf	(_count2),w
	addlw	low(0FE3Eh)
	movwf	(_count3)
	movf	(_count2+1),w
	skipnc
	addlw	1
	addlw	high(0FE3Eh)
	movwf	1+(_count3)
	goto	l326
	line	143
	
l1033:	
;led.c: 142: {
;led.c: 143: count3 = count2;
	movf	(_count2+1),w
	movwf	(_count3+1)
	movf	(_count2),w
	movwf	(_count3)
	line	144
	
l326:	
	line	146
;led.c: 144: }
;led.c: 146: if(count3 <275)
	movlw	01h
	subwf	(_count3+1),w
	movlw	013h
	skipnz
	subwf	(_count3),w
	skipnc
	goto	u661
	goto	u660
u661:
	goto	l1037
u660:
	line	148
	
l1035:	
;led.c: 147: {
;led.c: 148: setPWM2(count3);
	movf	(_count3+1),w
	movwf	(setPWM2@width+1)
	movf	(_count3),w
	movwf	(setPWM2@width)
	fcall	_setPWM2
	line	151
	
l1037:	
;led.c: 149: }
;led.c: 151: if(count3 >=275 && count3<=550)
	movlw	01h
	subwf	(_count3+1),w
	movlw	013h
	skipnz
	subwf	(_count3),w
	skipc
	goto	u671
	goto	u670
u671:
	goto	l1043
u670:
	
l1039:	
	movlw	02h
	subwf	(_count3+1),w
	movlw	027h
	skipnz
	subwf	(_count3),w
	skipnc
	goto	u681
	goto	u680
u681:
	goto	l1043
u680:
	line	153
	
l1041:	
;led.c: 152: {
;led.c: 153: setPWM2(550 - count3);
	movlw	026h
	movwf	(setPWM2@width)
	movlw	02h
	movwf	((setPWM2@width))+1
	movf	(_count3),w
	subwf	(setPWM2@width),f
	movf	(_count3+1),w
	skipc
	decf	(setPWM2@width+1),f
	subwf	(setPWM2@width+1),f
	fcall	_setPWM2
	line	160
	
l1043:	
;led.c: 154: }
;led.c: 156: }
;led.c: 160: timeout1MSFlag++;
	incf	(_timeout1MSFlag),f
	goto	l1009
	global	start
	ljmp	start
	opt stack 0
	line	164
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_setPWM2

;; *************** function _setPWM2 *****************
;; Defined at:
;;		line 64 in file "C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
;; Parameters:    Size  Location     Type
;;  width           2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       2
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	64
global __ptext1
__ptext1:	;psect for function _setPWM2
psect	text1
	file	"C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
	line	64
	global	__size_of_setPWM2
	__size_of_setPWM2	equ	__end_of_setPWM2-_setPWM2
	
_setPWM2:	
;incstack = 0
	opt	stack 5
; Regs used in _setPWM2: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l995:	
;led.c: 67: PWMS0 = 0;
	bcf	(144/8),(144)&7	;volatile
	line	68
;led.c: 68: PWMS1 = 1;
	bsf	(145/8),(145)&7	;volatile
	line	69
;led.c: 69: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	70
;led.c: 70: PWMPRD9 = 0;
	bcf	(151/8),(151)&7	;volatile
	line	71
	
l997:	
;led.c: 71: if(width > 255)
	movlw	01h
	subwf	(setPWM2@width+1),w
	movlw	0
	skipnz
	subwf	(setPWM2@width),w
	skipc
	goto	u561
	goto	u560
u561:
	goto	l305
u560:
	line	73
	
l999:	
;led.c: 72: {
;led.c: 73: PWMPRD8 = width/255;
	movlw	0FFh
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(setPWM2@width+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(setPWM2@width),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	btfsc	(0+(?___lwdiv)),0
	goto	u571
	goto	u570
	
u571:
	bsf	(150/8),(150)&7	;volatile
	goto	u584
u570:
	bcf	(150/8),(150)&7	;volatile
u584:
	line	74
	
l1001:	
;led.c: 74: PWM_PRD = width-255;
	movf	(setPWM2@width),w
	addlw	01h
	movwf	(20)	;volatile
	line	75
;led.c: 75: }else
	goto	l307
	
l305:	
	line	77
;led.c: 76: {
;led.c: 77: PWMPRD8 = 0;
	bcf	(150/8),(150)&7	;volatile
	line	78
	
l1003:	
;led.c: 78: PWM_PRD = width;
	movf	(setPWM2@width),w
	movwf	(20)	;volatile
	line	80
	
l307:	
	return
	opt stack 0
GLOBAL	__end_of_setPWM2
	__end_of_setPWM2:
	signat	_setPWM2,4217
	global	_setPWM1

;; *************** function _setPWM1 *****************
;; Defined at:
;;		line 46 in file "C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
;; Parameters:    Size  Location     Type
;;  width           2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       2
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	46
global __ptext2
__ptext2:	;psect for function _setPWM1
psect	text2
	file	"C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
	line	46
	global	__size_of_setPWM1
	__size_of_setPWM1	equ	__end_of_setPWM1-_setPWM1
	
_setPWM1:	
;incstack = 0
	opt	stack 5
; Regs used in _setPWM1: [wreg+status,2+status,0+pclath+cstack]
	line	49
	
l985:	
;led.c: 49: PWMS0 = 1;
	bsf	(144/8),(144)&7	;volatile
	line	50
;led.c: 50: PWMS1 = 0;
	bcf	(145/8),(145)&7	;volatile
	line	51
;led.c: 51: PWMS2 = 0;
	bcf	(146/8),(146)&7	;volatile
	line	52
;led.c: 52: PWMPRD9 = 0;
	bcf	(151/8),(151)&7	;volatile
	line	53
	
l987:	
;led.c: 53: if(width > 255)
	movlw	01h
	subwf	(setPWM1@width+1),w
	movlw	0
	skipnz
	subwf	(setPWM1@width),w
	skipc
	goto	u531
	goto	u530
u531:
	goto	l300
u530:
	line	55
	
l989:	
;led.c: 54: {
;led.c: 55: PWMPRD8 = width/255;
	movlw	0FFh
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(setPWM1@width+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(setPWM1@width),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	btfsc	(0+(?___lwdiv)),0
	goto	u541
	goto	u540
	
u541:
	bsf	(150/8),(150)&7	;volatile
	goto	u554
u540:
	bcf	(150/8),(150)&7	;volatile
u554:
	line	56
	
l991:	
;led.c: 56: PWM_PRD = width-255;
	movf	(setPWM1@width),w
	addlw	01h
	movwf	(20)	;volatile
	line	57
;led.c: 57: }else
	goto	l302
	
l300:	
	line	59
;led.c: 58: {
;led.c: 59: PWMPRD8 = 0;
	bcf	(150/8),(150)&7	;volatile
	line	60
	
l993:	
;led.c: 60: PWM_PRD = width;
	movf	(setPWM1@width),w
	movwf	(20)	;volatile
	line	62
	
l302:	
	return
	opt stack 0
GLOBAL	__end_of_setPWM1
	__end_of_setPWM1:
	signat	_setPWM1,4217
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] unsigned int 
;;  counter         1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         4       0
;;      Locals:         3       0
;;      Temps:          0       0
;;      Totals:         7       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setPWM1
;;		_setPWM2
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lwdiv.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___lwdiv
psect	text3
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l849:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l851:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u271
	goto	u270
u271:
	goto	l871
u270:
	line	16
	
l853:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l857
	line	18
	
l855:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l857:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u281
	goto	u280
u281:
	goto	l855
u280:
	line	22
	
l859:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l861:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u295
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u295:
	skipc
	goto	u291
	goto	u290
u291:
	goto	l867
u290:
	line	24
	
l863:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l865:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l867:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l869:	
	decfsz	(___lwdiv@counter),f
	goto	u301
	goto	u300
u301:
	goto	l859
u300:
	line	30
	
l871:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l680:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_resetTimeCount

;; *************** function _resetTimeCount *****************
;; Defined at:
;;		line 83 in file "C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
	line	83
global __ptext4
__ptext4:	;psect for function _resetTimeCount
psect	text4
	file	"C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
	line	83
	global	__size_of_resetTimeCount
	__size_of_resetTimeCount	equ	__end_of_resetTimeCount-_resetTimeCount
	
_resetTimeCount:	
;incstack = 0
	opt	stack 6
; Regs used in _resetTimeCount: [wreg+status,2+status,0]
	line	85
	
l919:	
;led.c: 85: if(count2 == 1350)
		movlw	70
	xorwf	((_count2)),w
	movlw	5
	skipnz
	xorwf	((_count2+1)),w
	btfss	status,2
	goto	u371
	goto	u370
u371:
	goto	l923
u370:
	line	87
	
l921:	
;led.c: 86: {
;led.c: 87: FirstFlag = 0;
	clrf	(_FirstFlag)
	line	90
	
l923:	
;led.c: 88: }
;led.c: 90: if(count1 == 950)
		movlw	182
	xorwf	((_count1)),w
	movlw	3
	skipnz
	xorwf	((_count1+1)),w
	btfss	status,2
	goto	u381
	goto	u380
u381:
	goto	l927
u380:
	line	92
	
l925:	
;led.c: 91: {
;led.c: 92: count1 = 0;
	clrf	(_count1)
	clrf	(_count1+1)
	line	94
	
l927:	
;led.c: 93: }
;led.c: 94: if(FirstFlag == 0 && count2 == 950)
	movf	((_FirstFlag)),w
	btfss	status,2
	goto	u391
	goto	u390
u391:
	goto	l933
u390:
	
l929:	
		movlw	182
	xorwf	((_count2)),w
	movlw	3
	skipnz
	xorwf	((_count2+1)),w
	btfss	status,2
	goto	u401
	goto	u400
u401:
	goto	l933
u400:
	line	96
	
l931:	
;led.c: 95: {
;led.c: 96: count2 = 0;
	clrf	(_count2)
	clrf	(_count2+1)
	line	98
	
l933:	
;led.c: 97: }
;led.c: 98: if(timeout1MSFlag == 100)
		movlw	100
	xorwf	((_timeout1MSFlag)),w
	btfss	status,2
	goto	u411
	goto	u410
u411:
	goto	l314
u410:
	line	100
	
l935:	
;led.c: 99: {
;led.c: 100: timeout1MSFlag = 0;
	clrf	(_timeout1MSFlag)
	line	101
	
l937:	
;led.c: 101: count1++;
	incf	(_count1),f
	skipnz
	incf	(_count1+1),f
	line	102
	
l939:	
;led.c: 102: count2++;
	incf	(_count2),f
	skipnz
	incf	(_count2+1),f
	line	104
	
l314:	
	return
	opt stack 0
GLOBAL	__end_of_resetTimeCount
	__end_of_resetTimeCount:
	signat	_resetTimeCount,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 17 in file "C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	17
global __ptext5
__ptext5:	;psect for function _Init_System
psect	text5
	file	"C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
	line	17
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	19
	
l875:	
# 19 "C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
nop ;# 
	line	20
# 20 "C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
clrwdt ;# 
psect	text5
	line	21
	
l877:	
;led.c: 21: INTCON = 0;
	clrf	(9)	;volatile
	line	22
	
l879:	
;led.c: 22: OSCCON = 0X71;
	movlw	low(071h)
	movwf	(8)	;volatile
	line	23
	
l881:	
;led.c: 23: WPUB = 0xFF;
	movlw	low(0FFh)
	movwf	(13)	;volatile
	line	24
	
l883:	
;led.c: 24: OPTION_REG = 0xD0;
	movlw	low(0D0h)
	movwf	(7)	;volatile
	line	25
	
l885:	
;led.c: 25: TMR0 = 0;
	clrf	(1)	;volatile
	line	26
;led.c: 26: TMR0PRD = 100;
	movlw	low(064h)
	movwf	(15)	;volatile
	line	29
;led.c: 29: TRISB = 0B00111001;
	movlw	low(039h)
	movwf	(6)	;volatile
	line	30
;led.c: 30: PORTB = 0B00111001;
	movlw	low(039h)
	movwf	(5)	;volatile
	line	31
;led.c: 31: IOCB = 0xFF;
	movlw	low(0FFh)
	movwf	(14)	;volatile
	line	34
	
l887:	
;led.c: 34: PWMCK0 = 1;
	bsf	(148/8),(148)&7	;volatile
	line	35
	
l889:	
;led.c: 35: PWMCK1 = 0;
	bcf	(149/8),(149)&7	;volatile
	line	36
	
l891:	
;led.c: 36: PWMPRD8 = 0;
	bcf	(150/8),(150)&7	;volatile
	line	37
	
l893:	
;led.c: 37: PWMPRD9 = 1;
	bsf	(151/8),(151)&7	;volatile
	line	38
;led.c: 38: PWM_PRD = 13;
	movlw	low(0Dh)
	movwf	(20)	;volatile
	line	40
	
l895:	
;led.c: 41: width1=width2=0;
	clrf	(_count3)
	clrf	(_count3+1)
	clrf	(_count2)
	clrf	(_count2+1)
	clrf	(_count1)
	clrf	(_count1+1)
	line	42
	
l897:	
;led.c: 42: FirstFlag = 1;
	clrf	(_FirstFlag)
	incf	(_FirstFlag),f
	line	43
	
l297:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 178 in file "C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	178
global __ptext6
__ptext6:	;psect for function _Timer0_Isr
psect	text6
	file	"C:\SCMCU WorkSpace\LED_COLOR_PWM1_PWM2\led.c"
	line	178
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 5
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
psect	text6
	line	180
	
i1l981:	
;led.c: 180: if(T0IF)
	btfss	(74/8),(74)&7	;volatile
	goto	u52_21
	goto	u52_20
u52_21:
	goto	i1l337
u52_20:
	line	186
	
i1l983:	
;led.c: 181: {
;led.c: 186: T0IF = 0;
	bcf	(74/8),(74)&7	;volatile
	line	187
;led.c: 187: timeoutFlag = 1;
	clrf	(_timeoutFlag)
	incf	(_timeoutFlag),f
	line	189
	
i1l337:	
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
