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
	FNCALL	intlevel1,_LVD_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_INTCON
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_INTCON	set	11
	global	_LVDIF
_LVDIF	set	104
	global	_RA2
_RA2	set	42
	global	_LVDCON
_LVDCON	set	145
	global	_OSCCON
_OSCCON	set	143
	global	_PIE2
_PIE2	set	141
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_LVD_RES
_LVD_RES	set	1167
; #config settings
	file	"SC8P171XE_LVD.as"
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
?_LVD_Isr:	; 1 bytes @ 0x0
??_LVD_Isr:	; 1 bytes @ 0x0
	ds	2
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

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _LVD_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _LVD_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _LVD_Isr in BANK1
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
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (1) _LVD_Isr                                              2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _LVD_Isr (ROOT)
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
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0       0       7        0.0%
;!DATA                 0      0       0       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_LVD\SC8P171XE_LVD.c"
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
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_LVD\SC8P171XE_LVD.c"
	line	13
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_LVD\SC8P171XE_LVD.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2]
	line	15
	
l852:	
# 15 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_LVD\SC8P171XE_LVD.c"
nop ;# 
	line	16
# 16 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_LVD\SC8P171XE_LVD.c"
clrwdt ;# 
psect	maintext
	line	18
	
l854:	
;SC8P171XE_LVD.c: 18: OSCCON = 0x70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	19
	
l856:	
;SC8P171XE_LVD.c: 19: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	21
	
l858:	
;SC8P171XE_LVD.c: 21: LVDCON = 0x07;
	movlw	low(07h)
	movwf	(145)^080h	;volatile
	line	23
	
l860:	
;SC8P171XE_LVD.c: 23: INTCON = 0xC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	24
	
l862:	
;SC8P171XE_LVD.c: 24: PIE2 = 0x01;
	movlw	low(01h)
	movwf	(141)^080h	;volatile
	line	27
;SC8P171XE_LVD.c: 27: while(1)
	
l465:	
	line	29
# 29 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_LVD\SC8P171XE_LVD.c"
clrwdt ;# 
psect	maintext
	line	30
	
l864:	
;SC8P171XE_LVD.c: 30: if (LVD_RES)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1167/8)^080h,(1167)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l466
u10:
	line	31
	
l866:	
;SC8P171XE_LVD.c: 31: RA2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7	;volatile
	goto	l465
	line	32
	
l466:	
	line	33
;SC8P171XE_LVD.c: 32: else
;SC8P171XE_LVD.c: 33: RA2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(42/8),(42)&7	;volatile
	goto	l465
	global	start
	ljmp	start
	opt stack 0
	line	35
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_LVD_Isr

;; *************** function _LVD_Isr *****************
;; Defined at:
;;		line 44 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_LVD\SC8P171XE_LVD.c"
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
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          2       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	44
global __ptext1
__ptext1:	;psect for function _LVD_Isr
psect	text1
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_LVD\SC8P171XE_LVD.c"
	line	44
	global	__size_of_LVD_Isr
	__size_of_LVD_Isr	equ	__end_of_LVD_Isr-_LVD_Isr
	
_LVD_Isr:	
;incstack = 0
	opt	stack 7
; Regs used in _LVD_Isr: []
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_LVD_Isr+0)
	movf	pclath,w
	movwf	(??_LVD_Isr+1)
	ljmp	_LVD_Isr
psect	text1
	line	46
	
i1l868:	
;SC8P171XE_LVD.c: 46: if(LVDIF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(104/8),(104)&7	;volatile
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l476
u2_20:
	line	48
	
i1l870:	
;SC8P171XE_LVD.c: 47: {
;SC8P171XE_LVD.c: 48: LVDIF = 0;
	bcf	(104/8),(104)&7	;volatile
	line	50
	
i1l476:	
	movf	(??_LVD_Isr+1),w
	movwf	pclath
	swapf	(??_LVD_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_LVD_Isr
	__end_of_LVD_Isr:
	signat	_LVD_Isr,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
