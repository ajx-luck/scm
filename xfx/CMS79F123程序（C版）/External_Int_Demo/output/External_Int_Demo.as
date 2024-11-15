opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F123
opt include "E:\ZWPROJ~1\工具软件\CMS_ID~1.18\data\include\79f123.cgen.inc"
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
	FNCALL	intlevel1,_INT_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_INTCON
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_INTCON	set	11
	global	_INTF
_INTF	set	89
	global	_OSCCON
_OSCCON	set	143
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_INTEDG
_INTEDG	set	1038
	global	_WPUA
_WPUA	set	398
; #config settings
	file	"External_Int_Demo.as"
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
?_INT_Isr:	; 1 bytes @ 0x0
??_INT_Isr:	; 1 bytes @ 0x0
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
;!Critical Paths under _INT_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _INT_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _INT_Isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _INT_Isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _INT_Isr in BANK2
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
;! (1) _INT_Isr                                              2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _INT_Isr (ROOT)
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
;;		line 15 in file "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\External_Int_Demo\INT_Interrupt_Demo.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\External_Int_Demo\INT_Interrupt_Demo.c"
	line	15
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\External_Int_Demo\INT_Interrupt_Demo.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2]
	line	17
	
l1102:	
# 17 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\External_Int_Demo\INT_Interrupt_Demo.c"
nop ;# 
	line	18
# 18 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\External_Int_Demo\INT_Interrupt_Demo.c"
clrwdt ;# 
psect	maintext
	line	20
	
l1104:	
;INT_Interrupt_Demo.c: 20: OSCCON = 0x71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	21
	
l1106:	
;INT_Interrupt_Demo.c: 21: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	24
	
l1108:	
;INT_Interrupt_Demo.c: 24: WPUA = 0B00100000;
	movlw	low(020h)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	25
	
l1110:	
;INT_Interrupt_Demo.c: 25: TRISA = 0B00100000;
	movlw	low(020h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	26
	
l1112:	
;INT_Interrupt_Demo.c: 26: INTEDG = 0;
	bcf	(1038/8)^080h,(1038)&7	;volatile
	line	27
	
l1114:	
;INT_Interrupt_Demo.c: 27: INTCON = 0x90;
	movlw	low(090h)
	movwf	(11)	;volatile
	line	30
;INT_Interrupt_Demo.c: 30: while(1)
	
l717:	
	line	32
# 32 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\External_Int_Demo\INT_Interrupt_Demo.c"
clrwdt ;# 
psect	maintext
	goto	l717
	global	start
	ljmp	start
	opt stack 0
	line	34
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_INT_Isr

;; *************** function _INT_Isr *****************
;; Defined at:
;;		line 44 in file "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\External_Int_Demo\INT_Interrupt_Demo.c"
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
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	44
global __ptext1
__ptext1:	;psect for function _INT_Isr
psect	text1
	file	"E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\External_Int_Demo\INT_Interrupt_Demo.c"
	line	44
	global	__size_of_INT_Isr
	__size_of_INT_Isr	equ	__end_of_INT_Isr-_INT_Isr
	
_INT_Isr:	
;incstack = 0
	opt	stack 7
; Regs used in _INT_Isr: []
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_INT_Isr+0)
	movf	pclath,w
	movwf	(??_INT_Isr+1)
	ljmp	_INT_Isr
psect	text1
	line	46
	
i1l1116:	
;INT_Interrupt_Demo.c: 46: if(INTF)
	btfss	(89/8),(89)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l726
u1_20:
	line	48
	
i1l1118:	
;INT_Interrupt_Demo.c: 47: {
;INT_Interrupt_Demo.c: 48: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	51
	
i1l726:	
	movf	(??_INT_Isr+1),w
	movwf	pclath
	swapf	(??_INT_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_INT_Isr
	__end_of_INT_Isr:
	signat	_INT_Isr,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
