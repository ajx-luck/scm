opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F123
opt include "E:\ZWPROJ~1\2020PR~1\推广工作\产品推广\79FT61~1\02仿真~1\CMS_ID~1.18_\data\include\79f123.cgen.inc"
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
	FNCALL	_main,_Sleep_Mode
	FNCALL	_Sleep_Mode,_Init_System
	FNROOT	_main
	FNCALL	intlevel1,_PA_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_ADCON0
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_ADCON0	set	31
	global	_INTCON
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_RAIF
_RAIF	set	103
	global	_PEIE
_PEIE	set	94
	global	_GIE
_GIE	set	95
	global	_WPUB
_WPUB	set	149
	global	_OSCCON
_OSCCON	set	143
	global	_IOCA
_IOCA	set	135
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_RAIE
_RAIE	set	1127
	global	_WDTCON
_WDTCON	set	261
	global	_WPUA
_WPUA	set	398
	global	_EECON1
_EECON1	set	396
; #config settings
	file	"Sleep_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
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
?_Sleep_Mode:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_PA_Isr:	; 1 bytes @ 0x0
??_PA_Isr:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_Sleep_Mode:	; 1 bytes @ 0x2
??_main:	; 1 bytes @ 0x2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      2       2
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            88      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _PA_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _PA_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _PA_Isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _PA_Isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _PA_Isr in BANK2
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
;!                         _Sleep_Mode
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Mode                                           0     0      0       0
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (2) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _PA_Isr                                               2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_System
;!   _Sleep_Mode
;!     _Init_System
;!
;! _PA_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      2       2       1       14.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            58      0       0       8        0.0%
;!BANK3               58      0       0       9        0.0%
;!BITBANK2            50      0       0      10        0.0%
;!BANK2               50      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 23 in file "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Init_System
;;		_Sleep_Mode
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
	line	23
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
	line	23
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	25
	
l1152:	
;Sleep_Demo.c: 25: Init_System();
	fcall	_Init_System
	line	26
;Sleep_Demo.c: 26: while(1)
	
l721:	
	line	28
# 28 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
clrwdt ;# 
psect	maintext
	line	30
;Sleep_Demo.c: 30: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l721
	global	start
	ljmp	start
	opt stack 0
	line	32
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 42 in file "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Init_System
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	42
global __ptext1
__ptext1:	;psect for function _Sleep_Mode
psect	text1
	file	"E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
	line	42
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l1124:	
;Sleep_Demo.c: 44: INTCON = 0;
	clrf	(11)	;volatile
	line	46
;Sleep_Demo.c: 46: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	48
	
l1126:	
;Sleep_Demo.c: 48: TRISA = 0B00000001;
	movlw	low(01h)
	movwf	(133)^080h	;volatile
	line	49
	
l1128:	
;Sleep_Demo.c: 49: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	50
;Sleep_Demo.c: 50: WPUA = 0B00000001;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	52
	
l1130:	
;Sleep_Demo.c: 52: TRISB = 0B00000000;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	53
	
l1132:	
;Sleep_Demo.c: 53: PORTB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	54
	
l1134:	
;Sleep_Demo.c: 54: WPUB = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	58
	
l1136:	
;Sleep_Demo.c: 58: IOCA = 0B00000001;
	movlw	low(01h)
	movwf	(135)^080h	;volatile
	line	59
	
l1138:	
;Sleep_Demo.c: 59: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(103/8),(103)&7	;volatile
	line	60
	
l1140:	
;Sleep_Demo.c: 60: RAIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1127/8)^080h,(1127)&7	;volatile
	line	61
	
l1142:	
;Sleep_Demo.c: 61: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	62
	
l1144:	
;Sleep_Demo.c: 62: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	63
;Sleep_Demo.c: 63: ADCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(31)	;volatile
	line	64
;Sleep_Demo.c: 64: EECON1 = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(396)^0180h	;volsfr
	line	65
;Sleep_Demo.c: 65: WDTCON = 0;
	bcf	status, 5	;RP0=0, select bank2
	clrf	(261)^0100h	;volatile
	line	67
	
l1146:	
;Sleep_Demo.c: 67: PORTA;
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	line	68
# 68 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
clrwdt ;# 
	line	69
# 69 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
sleep ;# 
	line	71
# 71 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
nop ;# 
	line	72
# 72 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
nop ;# 
	line	73
# 73 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
clrwdt ;# 
psect	text1
	line	75
	
l1148:	
;Sleep_Demo.c: 75: WDTCON = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(261)^0100h	;volatile
	line	76
	
l1150:	
;Sleep_Demo.c: 76: Init_System();
	fcall	_Init_System
	line	77
	
l727:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 86 in file "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Sleep_Mode
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	86
global __ptext2
__ptext2:	;psect for function _Init_System
psect	text2
	file	"E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
	line	86
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	88
	
l1112:	
# 88 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
nop ;# 
	line	89
# 89 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
clrwdt ;# 
psect	text2
	line	90
	
l1114:	
;Sleep_Demo.c: 90: INTCON = 0;
	clrf	(11)	;volatile
	line	91
	
l1116:	
;Sleep_Demo.c: 91: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	92
	
l1118:	
;Sleep_Demo.c: 92: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	94
;Sleep_Demo.c: 94: WPUA = 0B00000001;
	movlw	low(01h)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	95
	
l1120:	
;Sleep_Demo.c: 95: WPUB = 0B00000000;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	97
	
l1122:	
;Sleep_Demo.c: 97: TRISA = 0B00000001;
	movlw	low(01h)
	movwf	(133)^080h	;volatile
	line	98
;Sleep_Demo.c: 98: TRISB = 0B00000000;
	clrf	(134)^080h	;volatile
	line	100
;Sleep_Demo.c: 100: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	101
;Sleep_Demo.c: 101: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	102
	
l730:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_PA_Isr

;; *************** function _PA_Isr *****************
;; Defined at:
;;		line 111 in file "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	111
global __ptext3
__ptext3:	;psect for function _PA_Isr
psect	text3
	file	"E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\Sleep_Demo\Sleep_Demo.c"
	line	111
	global	__size_of_PA_Isr
	__size_of_PA_Isr	equ	__end_of_PA_Isr-_PA_Isr
	
_PA_Isr:	
;incstack = 0
	opt	stack 5
; Regs used in _PA_Isr: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_PA_Isr+0)
	movf	pclath,w
	movwf	(??_PA_Isr+1)
	ljmp	_PA_Isr
psect	text3
	line	113
	
i1l1154:	
;Sleep_Demo.c: 113: if(RAIF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(103/8),(103)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l736
u1_20:
	line	115
	
i1l1156:	
;Sleep_Demo.c: 114: {
;Sleep_Demo.c: 115: PORTA;
	movf	(5),w	;volatile
	line	116
	
i1l1158:	
;Sleep_Demo.c: 116: RAIF = 0;
	bcf	(103/8),(103)&7	;volatile
	line	119
	
i1l736:	
	movf	(??_PA_Isr+1),w
	movwf	pclath
	swapf	(??_PA_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_PA_Isr
	__end_of_PA_Isr:
	signat	_PA_Isr,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
