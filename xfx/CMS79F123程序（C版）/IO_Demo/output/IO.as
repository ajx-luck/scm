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
	FNROOT	_main
	global	_PORTB
psect	maintext,global,class=CODE,delta=2,split=1
global __pmaintext
__pmaintext:
_PORTB	set	6
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_WPUB
_WPUB	set	149
	global	_OSCCON
_OSCCON	set	143
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_WPUA
_WPUA	set	398
; #config settings
	file	"IO.as"
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
?_main:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
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
;!    COMMON           14      0       0
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
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
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
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      0       0       1        0.0%
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
;;		line 18 in file "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\IO\IO.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
psect	maintext
	file	"E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\IO\IO.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	20
	
l1100:	
# 20 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\IO\IO.c"
nop ;# 
	line	21
# 21 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\IO\IO.c"
clrwdt ;# 
psect	maintext
	line	23
	
l1102:	
;IO.c: 23: OPTION_REG =0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	24
	
l1104:	
;IO.c: 24: OSCCON = 0X71;
	movlw	low(071h)
	movwf	(143)^080h	;volatile
	line	26
	
l1106:	
;IO.c: 26: WPUA = 0B00000001;
	movlw	low(01h)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	27
;IO.c: 27: WPUB = 0B00000000;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	29
	
l1108:	
;IO.c: 29: TRISA = 0B00000011;
	movlw	low(03h)
	movwf	(133)^080h	;volatile
	line	30
	
l1110:	
;IO.c: 30: TRISB = 0B00000000;
	clrf	(134)^080h	;volatile
	line	32
;IO.c: 32: while(1)
	
l717:	
	line	34
# 34 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\IO\IO.c"
clrwdt ;# 
psect	maintext
	line	36
	
l1112:	
;IO.c: 36: if(RA0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l1116
u10:
	line	37
	
l1114:	
;IO.c: 37: PORTB ^= 0xff;
	movlw	low(0FFh)
	xorwf	(6),f	;volatile
	goto	l1118
	line	39
	
l1116:	
;IO.c: 38: else
;IO.c: 39: PORTB =0;
	clrf	(6)	;volatile
	line	41
	
l1118:	
;IO.c: 41: if(RA1)
	btfss	(41/8),(41)&7	;volatile
	goto	u21
	goto	u20
u21:
	goto	l720
u20:
	line	42
	
l1120:	
;IO.c: 42: RA2 =1;
	bsf	(42/8),(42)&7	;volatile
	goto	l717
	line	43
	
l720:	
	line	44
;IO.c: 43: else
;IO.c: 44: RA2 =0;
	bcf	(42/8),(42)&7	;volatile
	goto	l717
	global	start
	ljmp	start
	opt stack 0
	line	46
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
