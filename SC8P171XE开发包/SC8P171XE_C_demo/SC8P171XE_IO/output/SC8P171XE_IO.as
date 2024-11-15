opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1712E
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.09_Beta3\SCMCU_IDE_V2.00.09_Beta3\data\include\sc8p1712e.cgen.inc"
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
	global	_WPUA
psect	maintext,global,class=CODE,delta=2,split=1
global __pmaintext
__pmaintext:
_WPUA	set	7
	global	_PORTB
_PORTB	set	6
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_WPUB
_WPUB	set	149
	global	_ANSELH
_ANSELH	set	148
	global	_ANSEL
_ANSEL	set	147
	global	_OSCCON
_OSCCON	set	143
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
; #config settings
	file	"SC8P171XE_IO.as"
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
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0       0       7        0.0%
;!DATA                 0      0       0       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_IO\SC8P171XE_IO.c"
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
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_IO\SC8P171XE_IO.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	19
	
l848:	
# 19 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_IO\SC8P171XE_IO.c"
nop ;# 
	line	20
# 20 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_IO\SC8P171XE_IO.c"
clrwdt ;# 
psect	maintext
	line	22
	
l850:	
;SC8P171XE_IO.c: 22: OPTION_REG =0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	23
	
l852:	
;SC8P171XE_IO.c: 23: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(143)^080h	;volatile
	line	25
	
l854:	
;SC8P171XE_IO.c: 25: WPUA = 0B00000011;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(7)	;volatile
	line	26
;SC8P171XE_IO.c: 26: WPUB = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	28
	
l856:	
;SC8P171XE_IO.c: 28: TRISA = 0B00000011;
	movlw	low(03h)
	movwf	(133)^080h	;volatile
	line	29
	
l858:	
;SC8P171XE_IO.c: 29: TRISB = 0B00000000;
	clrf	(134)^080h	;volatile
	line	31
	
l860:	
;SC8P171XE_IO.c: 31: ANSEL = 0B00000000;
	clrf	(147)^080h	;volatile
	line	32
	
l862:	
;SC8P171XE_IO.c: 32: ANSELH = 0B00000000;
	clrf	(148)^080h	;volatile
	line	34
;SC8P171XE_IO.c: 34: while(1)
	
l465:	
	line	36
# 36 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_IO\SC8P171XE_IO.c"
clrwdt ;# 
psect	maintext
	line	38
	
l864:	
;SC8P171XE_IO.c: 38: if(RA0)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(40/8),(40)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l868
u10:
	line	39
	
l866:	
;SC8P171XE_IO.c: 39: PORTB ^= 0xff;
	movlw	low(0FFh)
	xorwf	(6),f	;volatile
	goto	l870
	line	41
	
l868:	
;SC8P171XE_IO.c: 40: else
;SC8P171XE_IO.c: 41: PORTB =0;
	clrf	(6)	;volatile
	line	43
	
l870:	
;SC8P171XE_IO.c: 43: if(RA1)
	btfss	(41/8),(41)&7	;volatile
	goto	u21
	goto	u20
u21:
	goto	l468
u20:
	line	44
	
l872:	
;SC8P171XE_IO.c: 44: RA2 =1;
	bsf	(42/8),(42)&7	;volatile
	goto	l465
	line	45
	
l468:	
	line	46
;SC8P171XE_IO.c: 45: else
;SC8P171XE_IO.c: 46: RA2 =0;
	bcf	(42/8),(42)&7	;volatile
	goto	l465
	global	start
	ljmp	start
	opt stack 0
	line	48
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
