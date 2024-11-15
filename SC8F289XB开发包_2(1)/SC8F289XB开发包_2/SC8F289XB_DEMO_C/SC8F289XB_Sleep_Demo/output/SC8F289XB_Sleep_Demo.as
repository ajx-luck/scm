opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F2892B
opt include "F:\中微资料\SCMCU_IDE_V2.00.11_Beta4\SCMCU_IDE_V2.00.11_Beta4\data\include\sc8f2892b.cgen.inc"
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
	global	_PWMCON0
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_PWMCON0	set	19
	global	_INTCON
_INTCON	set	11
	global	_IOCB
_IOCB	set	9
	global	_WPUB
_WPUB	set	8
	global	_WPUA
_WPUA	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_RBIF
_RBIF	set	88
	global	_RBIE
_RBIE	set	91
	global	_PEIE
_PEIE	set	94
	global	_GIE
_GIE	set	95
	global	_ADCON0
_ADCON0	set	157
	global	_ADCON1
_ADCON1	set	156
	global	_OPA1CON
_OPA1CON	set	154
	global	_OPA0CON
_OPA0CON	set	152
	global	_KEYCON2
_KEYCON2	set	151
	global	_KEYCON0
_KEYCON0	set	146
	global	_OSCCON
_OSCCON	set	136
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_RACIE
_RACIE	set	2113
	global	_RACIF
_RACIF	set	2105
	global	_IOCA
_IOCA	set	392
; #config settings
	file	"SC8F289XB_Sleep_Demo.as"
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
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0       0       8        0.0%
;!DATA                 0      0       0       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 18 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
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
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
	line	18
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l1210:	
;SC8F289XB_Sleep_Demo.c: 20: Init_System();
	fcall	_Init_System
	line	21
;SC8F289XB_Sleep_Demo.c: 21: while(1)
	
l751:	
	line	23
;SC8F289XB_Sleep_Demo.c: 22: {
;SC8F289XB_Sleep_Demo.c: 23: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l751
	global	start
	ljmp	start
	opt stack 0
	line	25
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 35 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
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
	line	35
global __ptext1
__ptext1:	;psect for function _Sleep_Mode
psect	text1
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
	line	35
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	37
	
l1154:	
;SC8F289XB_Sleep_Demo.c: 37: INTCON = 0;
	clrf	(11)	;volatile
	line	39
;SC8F289XB_Sleep_Demo.c: 39: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	41
	
l1156:	
;SC8F289XB_Sleep_Demo.c: 41: TRISA = 0B00000001;
	movlw	low(01h)
	movwf	(133)^080h	;volatile
	line	42
	
l1158:	
;SC8F289XB_Sleep_Demo.c: 42: WPUA = 0B00000001;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(7)	;volatile
	line	44
	
l1160:	
;SC8F289XB_Sleep_Demo.c: 44: TRISB = 0B00001000;
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	45
	
l1162:	
;SC8F289XB_Sleep_Demo.c: 45: PORTB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	46
;SC8F289XB_Sleep_Demo.c: 46: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	48
	
l1164:	
;SC8F289XB_Sleep_Demo.c: 48: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(157)^080h	;volatile
	line	49
	
l1166:	
;SC8F289XB_Sleep_Demo.c: 49: ADCON1 = 0;
	clrf	(156)^080h	;volatile
	line	50
	
l1168:	
;SC8F289XB_Sleep_Demo.c: 50: KEYCON0 = 0;
	clrf	(146)^080h	;volatile
	line	51
	
l1170:	
;SC8F289XB_Sleep_Demo.c: 51: KEYCON2 = 0;
	clrf	(151)^080h	;volatile
	line	52
	
l1172:	
;SC8F289XB_Sleep_Demo.c: 52: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(19)	;volatile
	line	54
	
l1174:	
;SC8F289XB_Sleep_Demo.c: 54: OPA0CON = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(152)^080h	;volatile
	line	55
	
l1176:	
;SC8F289XB_Sleep_Demo.c: 55: OPA1CON = 0;
	clrf	(154)^080h	;volatile
	line	56
	
l1178:	
;SC8F289XB_Sleep_Demo.c: 56: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(136)^080h	;volatile
	line	58
	
l1180:	
;SC8F289XB_Sleep_Demo.c: 58: IOCA = 0B00000001;
	movlw	low(01h)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	59
	
l1182:	
;SC8F289XB_Sleep_Demo.c: 59: IOCB = 0B00001000;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(9)	;volatile
	line	61
	
l1184:	
;SC8F289XB_Sleep_Demo.c: 61: RACIE = 1;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(2113/8)^0100h,(2113)&7	;volatile
	line	62
	
l1186:	
;SC8F289XB_Sleep_Demo.c: 62: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	63
	
l1188:	
;SC8F289XB_Sleep_Demo.c: 63: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	64
	
l1190:	
;SC8F289XB_Sleep_Demo.c: 64: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	67
	
l1192:	
;SC8F289XB_Sleep_Demo.c: 67: PORTA;
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	line	68
	
l1194:	
;SC8F289XB_Sleep_Demo.c: 68: RACIF = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2105/8)^0100h,(2105)&7	;volatile
	line	69
	
l1196:	
;SC8F289XB_Sleep_Demo.c: 69: PORTB;
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	line	70
	
l1198:	
;SC8F289XB_Sleep_Demo.c: 70: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	71
# 71 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
clrwdt ;# 
	line	73
# 73 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
sleep ;# 
	line	75
# 75 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
nop ;# 
	line	76
# 76 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
clrwdt ;# 
psect	text1
	line	77
	
l1200:	
;SC8F289XB_Sleep_Demo.c: 77: if(RACIF) RACIF = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2105/8)^0100h,(2105)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l757
u10:
	
l1202:	
	bcf	(2105/8)^0100h,(2105)&7	;volatile
	
l757:	
	line	78
;SC8F289XB_Sleep_Demo.c: 78: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u21
	goto	u20
u21:
	goto	l1206
u20:
	
l1204:	
	bcf	(88/8),(88)&7	;volatile
	line	79
	
l1206:	
;SC8F289XB_Sleep_Demo.c: 79: PORTA ^= 0X08;
	movlw	low(08h)
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(5),f	;volatile
	line	80
	
l1208:	
;SC8F289XB_Sleep_Demo.c: 80: Init_System();
	fcall	_Init_System
	line	81
	
l759:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 90 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
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
	line	90
global __ptext2
__ptext2:	;psect for function _Init_System
psect	text2
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
	line	90
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	92
	
l1144:	
# 92 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
nop ;# 
	line	93
# 93 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
clrwdt ;# 
psect	text2
	line	94
	
l1146:	
;SC8F289XB_Sleep_Demo.c: 94: INTCON = 0;
	clrf	(11)	;volatile
	line	95
	
l1148:	
;SC8F289XB_Sleep_Demo.c: 95: OSCCON = 0X72;
	movlw	low(072h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	96
	
l1150:	
;SC8F289XB_Sleep_Demo.c: 96: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	98
;SC8F289XB_Sleep_Demo.c: 98: WPUA = 0B00000001;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(7)	;volatile
	line	99
;SC8F289XB_Sleep_Demo.c: 99: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	102
;SC8F289XB_Sleep_Demo.c: 102: TRISA = 0B00000001;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	103
;SC8F289XB_Sleep_Demo.c: 103: TRISB = 0B00001000;
	movlw	low(08h)
	movwf	(134)^080h	;volatile
	line	106
	
l1152:	
;SC8F289XB_Sleep_Demo.c: 106: PORTB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	108
	
l762:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_PA_Isr

;; *************** function _PA_Isr *****************
;; Defined at:
;;		line 117 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
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
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	117
global __ptext3
__ptext3:	;psect for function _PA_Isr
psect	text3
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Sleep_Demo\SC8F289XB_Sleep_Demo.c"
	line	117
	global	__size_of_PA_Isr
	__size_of_PA_Isr	equ	__end_of_PA_Isr-_PA_Isr
	
_PA_Isr:	
;incstack = 0
	opt	stack 5
; Regs used in _PA_Isr: [wreg+status,2+status,0]
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
	line	119
	
i1l1212:	
;SC8F289XB_Sleep_Demo.c: 119: if(RACIF)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2105/8)^0100h,(2105)&7	;volatile
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l768
u3_20:
	line	121
	
i1l1214:	
;SC8F289XB_Sleep_Demo.c: 120: {
;SC8F289XB_Sleep_Demo.c: 121: RACIF = 0;
	bcf	(2105/8)^0100h,(2105)&7	;volatile
	line	122
	
i1l1216:	
;SC8F289XB_Sleep_Demo.c: 122: PORTA ^= 0X08;
	movlw	low(08h)
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(5),f	;volatile
	line	123
	
i1l1218:	
;SC8F289XB_Sleep_Demo.c: 123: PORTA;
	movf	(5),w	;volatile
	line	126
	
i1l768:	
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
