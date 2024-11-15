opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F083
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.15_Beta8\data\include\sc8f083.cgen.inc"
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
	FNCALL	intlevel1,_CMP_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_OSCCON
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_OSCCON	set	20
	global	_CMP1CON1
_CMP1CON1	set	16
	global	_CMP1CON0
_CMP1CON0	set	15
	global	_PIE1
_PIE1	set	14
	global	_ODCONB
_ODCONB	set	12
	global	_INTCON
_INTCON	set	11
	global	_IOCB
_IOCB	set	9
	global	_WPUB
_WPUB	set	8
	global	_WPDB
_WPDB	set	7
	global	_PORTB
_PORTB	set	6
	global	_TRISB
_TRISB	set	5
	global	_OPTION_REG
_OPTION_REG	set	1
	global	_CMP1EN
_CMP1EN	set	127
	global	_CMP1IF
_CMP1IF	set	109
	global	_CMP2CON1
_CMP2CON1	set	159
	global	_CMP2CON0
_CMP2CON0	set	154
	global	_CMP2EN
_CMP2EN	set	1239
	global	_PIE2
_PIE2	set	272
	global	_CMP2IF
_CMP2IF	set	2173
; #config settings
	file	"SC8F083_CMP_C.as"
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
?_CMP_Isr:	; 1 bytes @ 0x0
??_CMP_Isr:	; 1 bytes @ 0x0
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
;!Critical Paths under _CMP_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _CMP_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _CMP_Isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _CMP_Isr in BANK2
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
;! (1) _CMP_Isr                                              2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _CMP_Isr (ROOT)
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
;;		line 14 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F083开发包\SC8F083_DEMO_C\SC8F083_CMP_C\SC8F083_CMP_C.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F083开发包\SC8F083_DEMO_C\SC8F083_CMP_C\SC8F083_CMP_C.c"
	line	14
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F083开发包\SC8F083_DEMO_C\SC8F083_CMP_C\SC8F083_CMP_C.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2]
	line	16
	
l1205:	
# 16 "H:\MyDownloads\说明书&测试报告\开发包\SC8F083开发包\SC8F083_DEMO_C\SC8F083_CMP_C\SC8F083_CMP_C.c"
nop ;# 
	line	17
# 17 "H:\MyDownloads\说明书&测试报告\开发包\SC8F083开发包\SC8F083_DEMO_C\SC8F083_CMP_C\SC8F083_CMP_C.c"
clrwdt ;# 
psect	maintext
	line	19
	
l1207:	
;SC8F083_CMP_C.c: 19: OSCCON = 0x72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	20
;SC8F083_CMP_C.c: 20: OPTION_REG = 0x09;
	movlw	low(09h)
	movwf	(1)	;volatile
	line	23
	
l1209:	
;SC8F083_CMP_C.c: 23: WPUB = 0B00000000;
	clrf	(8)	;volatile
	line	24
	
l1211:	
;SC8F083_CMP_C.c: 24: WPDB = 0B00000000;
	clrf	(7)	;volatile
	line	25
	
l1213:	
;SC8F083_CMP_C.c: 25: ODCONB = 0B00000000;
	clrf	(12)	;volatile
	line	26
	
l1215:	
;SC8F083_CMP_C.c: 26: IOCB = 0B00000000;
	clrf	(9)	;volatile
	line	28
	
l1217:	
;SC8F083_CMP_C.c: 28: TRISB = 0B00000000;
	clrf	(5)	;volatile
	line	54
	
l1219:	
;SC8F083_CMP_C.c: 54: CMP1CON0 = 0B00111001;
	movlw	low(039h)
	movwf	(15)	;volatile
	line	56
	
l1221:	
;SC8F083_CMP_C.c: 56: CMP2CON0 = 0B00111001;
	movlw	low(039h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	line	70
	
l1223:	
;SC8F083_CMP_C.c: 70: CMP1CON1 = 0B10010111;
	movlw	low(097h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(16)	;volatile
	line	72
	
l1225:	
;SC8F083_CMP_C.c: 72: CMP2CON1 = 0B10000000;
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	74
	
l1227:	
;SC8F083_CMP_C.c: 74: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	75
	
l1229:	
;SC8F083_CMP_C.c: 75: PIE1 = 0X20;
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(14)	;volatile
	line	76
	
l1231:	
;SC8F083_CMP_C.c: 76: PIE2 = 0X20;
	movlw	low(020h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(272)^0100h	;volatile
	line	78
	
l1233:	
;SC8F083_CMP_C.c: 78: CMP1EN = 1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(127/8),(127)&7	;volatile
	line	79
	
l1235:	
;SC8F083_CMP_C.c: 79: CMP1IF =0;
	bcf	(109/8),(109)&7	;volatile
	line	81
	
l1237:	
;SC8F083_CMP_C.c: 81: CMP2EN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1239/8)^080h,(1239)&7	;volatile
	line	82
	
l1239:	
;SC8F083_CMP_C.c: 82: CMP2IF =0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2173/8)^0100h,(2173)&7	;volatile
	line	83
;SC8F083_CMP_C.c: 83: while(1)
	
l819:	
	line	85
# 85 "H:\MyDownloads\说明书&测试报告\开发包\SC8F083开发包\SC8F083_DEMO_C\SC8F083_CMP_C\SC8F083_CMP_C.c"
clrwdt ;# 
psect	maintext
	goto	l819
	global	start
	ljmp	start
	opt stack 0
	line	89
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_CMP_Isr

;; *************** function _CMP_Isr *****************
;; Defined at:
;;		line 98 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F083开发包\SC8F083_DEMO_C\SC8F083_CMP_C\SC8F083_CMP_C.c"
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
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	98
global __ptext1
__ptext1:	;psect for function _CMP_Isr
psect	text1
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F083开发包\SC8F083_DEMO_C\SC8F083_CMP_C\SC8F083_CMP_C.c"
	line	98
	global	__size_of_CMP_Isr
	__size_of_CMP_Isr	equ	__end_of_CMP_Isr-_CMP_Isr
	
_CMP_Isr:	
;incstack = 0
	opt	stack 7
; Regs used in _CMP_Isr: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_CMP_Isr+0)
	movf	pclath,w
	movwf	(??_CMP_Isr+1)
	ljmp	_CMP_Isr
psect	text1
	line	100
	
i1l1241:	
;SC8F083_CMP_C.c: 100: if(CMP1IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(109/8),(109)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l1247
u1_20:
	line	102
	
i1l1243:	
;SC8F083_CMP_C.c: 101: {
;SC8F083_CMP_C.c: 102: CMP1IF = 0;
	bcf	(109/8),(109)&7	;volatile
	line	103
	
i1l1245:	
;SC8F083_CMP_C.c: 103: PORTB ^= 0X80;
	movlw	low(080h)
	xorwf	(6),f	;volatile
	line	106
	
i1l1247:	
;SC8F083_CMP_C.c: 105: }
;SC8F083_CMP_C.c: 106: if(CMP2IF)
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2173/8)^0100h,(2173)&7	;volatile
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l829
u2_20:
	line	108
	
i1l1249:	
;SC8F083_CMP_C.c: 107: {
;SC8F083_CMP_C.c: 108: CMP2IF = 0;
	bcf	(2173/8)^0100h,(2173)&7	;volatile
	line	109
	
i1l1251:	
;SC8F083_CMP_C.c: 109: PORTB ^= 0X40;
	movlw	low(040h)
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(6),f	;volatile
	line	112
	
i1l829:	
	movf	(??_CMP_Isr+1),w
	movwf	pclath
	swapf	(??_CMP_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_CMP_Isr
	__end_of_CMP_Isr:
	signat	_CMP_Isr,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
