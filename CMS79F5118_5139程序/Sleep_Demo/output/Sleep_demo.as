opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F5139
opt include "C:\EDWARD~1\WORK_F~1\开发文件\中微开~1\CMS_ID~1.18_\data\include\79f5139.cgen.inc"
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
	FNCALL	intlevel1,_PB_Isr
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
	global	_RBIF
_RBIF	set	88
	global	_RBIE
_RBIE	set	91
	global	_GIE
_GIE	set	95
	global	_OPA0CON
_OPA0CON	set	154
	global	_IOCB
_IOCB	set	150
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
	global	_PFGRAM1
_PFGRAM1	set	286
	global	_PFGRAM0
_PFGRAM0	set	283
	global	_KEYRAM3
_KEYRAM3	set	280
	global	_KEYRAM2
_KEYRAM2	set	279
	global	_KEYRAM1
_KEYRAM1	set	276
	global	_KEYRAM0
_KEYRAM0	set	275
	global	_PWMCON0
_PWMCON0	set	263
	global	_WDTCON
_WDTCON	set	261
	global	_WPUA
_WPUA	set	398
	global	_EECON1
_EECON1	set	396
	global	_ANSELH
_ANSELH	set	393
	global	_ANSEL
_ANSEL	set	392
; #config settings
	file	"Sleep_demo.as"
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
?_PB_Isr:	; 1 bytes @ 0x0
??_PB_Isr:	; 1 bytes @ 0x0
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
;!Critical Paths under _PB_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _PB_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _PB_Isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _PB_Isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _PB_Isr in BANK2
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
;! (3) _PB_Isr                                               2     2      0       0
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
;! _PB_Isr (ROOT)
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
;;		line 29 in file "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
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
;;		On exit  : 300/300
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
	file	"C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
	line	29
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
	line	29
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	31
	
l1160:	
;Sleep_Demo.c: 31: Init_System();
	fcall	_Init_System
	line	32
;Sleep_Demo.c: 32: while(1)
	
l733:	
	line	34
# 34 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
clrwdt ;# 
psect	maintext
	line	36
;Sleep_Demo.c: 36: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l733
	global	start
	ljmp	start
	opt stack 0
	line	38
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 48 in file "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/300
;;		On exit  : 300/300
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
	line	48
global __ptext1
__ptext1:	;psect for function _Sleep_Mode
psect	text1
	file	"C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
	line	48
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	50
	
l1140:	
;Sleep_Demo.c: 50: INTCON = 0;
	clrf	(11)	;volatile
	line	52
;Sleep_Demo.c: 52: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	54
;Sleep_Demo.c: 54: KEYRAM0 = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(275)^0100h	;volatile
	line	55
;Sleep_Demo.c: 55: KEYRAM1 = 0;
	clrf	(276)^0100h	;volatile
	line	56
;Sleep_Demo.c: 56: KEYRAM2 = 0;
	clrf	(279)^0100h	;volatile
	line	57
;Sleep_Demo.c: 57: KEYRAM3 = 0;
	clrf	(280)^0100h	;volatile
	line	58
;Sleep_Demo.c: 58: PFGRAM0 = 0;
	clrf	(283)^0100h	;volatile
	line	59
;Sleep_Demo.c: 59: PFGRAM1 = 0;
	clrf	(286)^0100h	;volatile
	line	61
;Sleep_Demo.c: 61: ANSEL = 0;
	bsf	status, 5	;RP0=1, select bank3
	clrf	(392)^0180h	;volatile
	line	62
;Sleep_Demo.c: 62: ANSELH = 0;
	clrf	(393)^0180h	;volatile
	line	64
;Sleep_Demo.c: 64: TRISA = 0B00000000;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	65
;Sleep_Demo.c: 65: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	66
;Sleep_Demo.c: 66: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(398)^0180h	;volatile
	line	68
	
l1142:	
;Sleep_Demo.c: 68: TRISB = 0B00000100;
	movlw	low(04h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	69
	
l1144:	
;Sleep_Demo.c: 69: PORTB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	70
;Sleep_Demo.c: 70: WPUB = 0B00000100;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	72
	
l1146:	
;Sleep_Demo.c: 72: IOCA = 0B00000000;
	clrf	(135)^080h	;volatile
	line	73
	
l1148:	
;Sleep_Demo.c: 73: IOCB = 0B00000100;
	movlw	low(04h)
	movwf	(150)^080h	;volatile
	line	74
	
l1150:	
;Sleep_Demo.c: 74: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	75
	
l1152:	
;Sleep_Demo.c: 75: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	77
;Sleep_Demo.c: 77: ADCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(31)	;volatile
	line	78
;Sleep_Demo.c: 78: PWMCON0 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(263)^0100h	;volatile
	line	79
;Sleep_Demo.c: 79: EECON1 = 0;
	bsf	status, 5	;RP0=1, select bank3
	clrf	(396)^0180h	;volsfr
	line	80
;Sleep_Demo.c: 80: OPA0CON = 0;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(154)^080h	;volatile
	line	81
;Sleep_Demo.c: 81: WDTCON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	83
	
l1154:	
;Sleep_Demo.c: 83: PORTB;
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	line	84
# 84 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
clrwdt ;# 
	line	86
# 86 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
sleep ;# 
	line	88
# 88 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
nop ;# 
	line	89
# 89 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
nop ;# 
	line	90
# 90 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
clrwdt ;# 
psect	text1
	line	92
	
l1156:	
;Sleep_Demo.c: 92: WDTCON = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(261)^0100h	;volatile
	line	93
	
l1158:	
;Sleep_Demo.c: 93: Init_System();
	fcall	_Init_System
	line	94
	
l739:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 103 in file "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
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
;;		On exit  : 300/300
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
	line	103
global __ptext2
__ptext2:	;psect for function _Init_System
psect	text2
	file	"C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
	line	103
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	105
	
l1124:	
# 105 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
nop ;# 
	line	106
# 106 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
clrwdt ;# 
psect	text2
	line	107
	
l1126:	
;Sleep_Demo.c: 107: INTCON = 0;
	clrf	(11)	;volatile
	line	108
	
l1128:	
;Sleep_Demo.c: 108: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	109
	
l1130:	
;Sleep_Demo.c: 109: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	111
;Sleep_Demo.c: 111: WPUA = 0B00000011;
	movlw	low(03h)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	112
;Sleep_Demo.c: 112: WPUB = 0B00000100;
	movlw	low(04h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	114
;Sleep_Demo.c: 114: TRISA = 0B00000011;
	movlw	low(03h)
	movwf	(133)^080h	;volatile
	line	115
;Sleep_Demo.c: 115: TRISB = 0B00000100;
	movlw	low(04h)
	movwf	(134)^080h	;volatile
	line	117
	
l1132:	
;Sleep_Demo.c: 117: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	118
	
l1134:	
;Sleep_Demo.c: 118: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	120
	
l1136:	
;Sleep_Demo.c: 120: ANSEL = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	121
	
l1138:	
;Sleep_Demo.c: 121: ANSELH = 0;
	clrf	(393)^0180h	;volatile
	line	122
	
l742:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_PB_Isr

;; *************** function _PB_Isr *****************
;; Defined at:
;;		line 132 in file "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
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
;;		On exit  : 0/0
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
	line	132
global __ptext3
__ptext3:	;psect for function _PB_Isr
psect	text3
	file	"C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\Sleep_Demo\Sleep_Demo.c"
	line	132
	global	__size_of_PB_Isr
	__size_of_PB_Isr	equ	__end_of_PB_Isr-_PB_Isr
	
_PB_Isr:	
;incstack = 0
	opt	stack 5
; Regs used in _PB_Isr: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_PB_Isr+0)
	movf	pclath,w
	movwf	(??_PB_Isr+1)
	ljmp	_PB_Isr
psect	text3
	line	134
	
i1l1162:	
;Sleep_Demo.c: 134: if(RBIF)
	btfss	(88/8),(88)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l748
u1_20:
	line	136
	
i1l1164:	
;Sleep_Demo.c: 135: {
;Sleep_Demo.c: 136: PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	line	137
	
i1l1166:	
;Sleep_Demo.c: 137: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	140
	
i1l748:	
	movf	(??_PB_Isr+1),w
	movwf	pclath
	swapf	(??_PB_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_PB_Isr
	__end_of_PB_Isr:
	signat	_PB_Isr,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
