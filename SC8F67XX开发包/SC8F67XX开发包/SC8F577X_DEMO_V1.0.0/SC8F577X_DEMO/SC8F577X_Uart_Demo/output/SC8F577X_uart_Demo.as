opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F5773
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.09_Beta4\SCMCU_IDE_V2.00.09_Beta4\data\include\sc8f5773.cgen.inc"
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
	FNROOT	_main
	FNCALL	intlevel1,_PB_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_result2
	global	_result1
	global	_result
	global	PB_Isr@RxNum
	global	_RXOK_f
	global	_RxTable
	global	_INTCON
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_INTCON	set	11
	global	_WPUB
_WPUB	set	8
	global	_WPUA
_WPUA	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_RCIE
_RCIE	set	109
	global	_RCIF
_RCIF	set	101
	global	_RBIF
_RBIF	set	88
	global	_PEIE
_PEIE	set	94
	global	_GIE
_GIE	set	95
	global	_RB6
_RB6	set	54
	global	_OSCCON
_OSCCON	set	136
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_RCREG
_RCREG	set	283
	global	_TXREG
_TXREG	set	282
	global	_SPBRG
_SPBRG	set	281
	global	_RCSTA
_RCSTA	set	280
	global	_TXSTA
_TXSTA	set	279
	global	_TRMT
_TRMT	set	2233
; #config settings
	file	"SC8F577X_uart_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_RXOK_f:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_result2:
       ds      2

_result1:
       ds      2

_result:
       ds      2

PB_Isr@RxNum:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_RxTable:
       ds      10

	file	"SC8F577X_uart_Demo.as"
	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
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
?_main:	; 1 bytes @ 0x0
?_PB_Isr:	; 1 bytes @ 0x0
??_PB_Isr:	; 1 bytes @ 0x0
	ds	3
??_Init_System:	; 1 bytes @ 0x3
??_main:	; 1 bytes @ 0x3
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	main@i
main@i:	; 1 bytes @ 0x0
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         17
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      3      11
;!    BANK0            80      1      11
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
;! (0) _main                                                 1     1      0     102
;!                                              0 BANK0      1     1      0
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _PB_Isr                                               3     3      0       0
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_System
;!
;! _PB_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      3       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      1       B       4       13.8%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0      16       8        0.0%
;!DATA                 0      0      16       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 44 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_Uart_Demo\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Init_System
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_Uart_Demo\main.c"
	line	44
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_Uart_Demo\main.c"
	line	44
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	46
	
l1472:	
	line	47
	
l1474:	
;main.c: 47: Init_System();
	fcall	_Init_System
	line	49
	
l1476:	
;main.c: 49: TXREG =0x55;
	movlw	low(055h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(282)^0100h	;volatile
	line	51
;main.c: 51: while(TRMT==0);
	
l890:	
	btfss	(2233/8)^0100h,(2233)&7	;volatile
	goto	u191
	goto	u190
u191:
	goto	l890
u190:
	line	52
	
l1478:	
;main.c: 52: TXREG =0xaa;
	movlw	low(0AAh)
	movwf	(282)^0100h	;volatile
	line	54
;main.c: 54: while(TRMT==0);
	
l893:	
	btfss	(2233/8)^0100h,(2233)&7	;volatile
	goto	u201
	goto	u200
u201:
	goto	l893
u200:
	line	56
;main.c: 56: while(1)
	
l896:	
	line	60
;main.c: 57: {
;main.c: 60: if(RXOK_f==1)
	btfss	(_RXOK_f/8),(_RXOK_f)&7
	goto	u211
	goto	u210
u211:
	goto	l896
u210:
	line	62
	
l1480:	
;main.c: 61: {
;main.c: 62: for(i=0;i<10;i++)
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	line	65
	
l1486:	
;main.c: 63: {
;main.c: 65: TXREG =RxTable[i];
	movf	(main@i),w
	addlw	low(_RxTable|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(282)^0100h	;volatile
	line	67
;main.c: 67: while(TRMT==0);
	
l900:	
	btfss	(2233/8)^0100h,(2233)&7	;volatile
	goto	u221
	goto	u220
u221:
	goto	l900
u220:
	line	62
	
l1488:	
	bcf	status, 6	;RP1=0, select bank0
	incf	(main@i),f
	
l1490:	
	movlw	low(0Ah)
	subwf	(main@i),w
	skipc
	goto	u231
	goto	u230
u231:
	goto	l1486
u230:
	
l899:	
	line	70
;main.c: 68: }
;main.c: 70: RXOK_f = 0;
	bcf	(_RXOK_f/8),(_RXOK_f)&7
	goto	l896
	global	start
	ljmp	start
	opt stack 0
	line	74
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 84 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_Uart_Demo\main.c"
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
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	84
global __ptext1
__ptext1:	;psect for function _Init_System
psect	text1
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_Uart_Demo\main.c"
	line	84
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	86
	
l1442:	
# 86 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_Uart_Demo\main.c"
nop ;# 
	line	87
# 87 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_Uart_Demo\main.c"
clrwdt ;# 
psect	text1
	line	88
	
l1444:	
;main.c: 88: INTCON = 0;
	clrf	(11)	;volatile
	line	89
	
l1446:	
;main.c: 89: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	90
	
l1448:	
;main.c: 90: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	92
	
l1450:	
;main.c: 92: WPUA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	93
	
l1452:	
;main.c: 93: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	96
;main.c: 96: TRISA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	97
	
l1454:	
;main.c: 97: TRISB = 0B00011000;
	movlw	low(018h)
	movwf	(134)^080h	;volatile
	line	99
	
l1456:	
;main.c: 99: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	100
	
l1458:	
;main.c: 100: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	102
	
l1460:	
;main.c: 102: TXSTA = 0b10100000;
	movlw	low(0A0h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(279)^0100h	;volatile
	line	103
	
l1462:	
;main.c: 103: RCSTA = 0b10010000;
	movlw	low(090h)
	movwf	(280)^0100h	;volatile
	line	104
	
l1464:	
;main.c: 104: SPBRG = 103;
	movlw	low(067h)
	movwf	(281)^0100h	;volatile
	line	106
	
l1466:	
;main.c: 106: PEIE =1;
	bsf	(94/8),(94)&7	;volatile
	line	107
	
l1468:	
;main.c: 107: RCIE =1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(109/8),(109)&7	;volatile
	line	108
	
l1470:	
;main.c: 108: GIE =1;
	bsf	(95/8),(95)&7	;volatile
	line	110
	
l908:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_PB_Isr

;; *************** function _PB_Isr *****************
;; Defined at:
;;		line 119 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_Uart_Demo\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	119
global __ptext2
__ptext2:	;psect for function _PB_Isr
psect	text2
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_Uart_Demo\main.c"
	line	119
	global	__size_of_PB_Isr
	__size_of_PB_Isr	equ	__end_of_PB_Isr-_PB_Isr
	
_PB_Isr:	
;incstack = 0
	opt	stack 6
; Regs used in _PB_Isr: [wreg-fsr0h+status,2+status,0]
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
	movf	fsr0,w
	movwf	(??_PB_Isr+1)
	movf	pclath,w
	movwf	(??_PB_Isr+2)
	ljmp	_PB_Isr
psect	text2
	line	122
	
i1l1420:	
;main.c: 121: static unsigned char RxNum=0,TEMP;
;main.c: 122: if(RBIF)
	btfss	(88/8),(88)&7	;volatile
	goto	u15_21
	goto	u15_20
u15_21:
	goto	i1l1426
u15_20:
	line	124
	
i1l1422:	
;main.c: 123: {
;main.c: 124: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	125
	
i1l1424:	
;main.c: 125: RB6 = ~RB6;
	movlw	1<<((54)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((54)/8),f
	line	129
	
i1l1426:	
;main.c: 127: }
;main.c: 129: if(RCIF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l922
u16_20:
	line	131
	
i1l1428:	
;main.c: 130: {
;main.c: 131: RCIF = 0;
	bcf	(101/8),(101)&7	;volatile
	line	133
;main.c: 133: if(RXOK_f==0)
	btfsc	(_RXOK_f/8),(_RXOK_f)&7
	goto	u17_21
	goto	u17_20
u17_21:
	goto	i1l1440
u17_20:
	line	135
	
i1l1430:	
;main.c: 134: {
;main.c: 135: RxTable[RxNum] = RCREG;
	movf	(PB_Isr@RxNum),w
	addlw	low(_RxTable|((0x0)<<8))&0ffh
	movwf	fsr0
	bsf	status, 6	;RP1=1, select bank2
	movf	(283)^0100h,w	;volatile
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	136
	
i1l1432:	
;main.c: 136: RxNum++;
	incf	(PB_Isr@RxNum),f
	line	137
	
i1l1434:	
;main.c: 137: if(RxNum > 9)
	movlw	low(0Ah)
	subwf	(PB_Isr@RxNum),w
	skipc
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l922
u18_20:
	line	139
	
i1l1436:	
;main.c: 138: {
;main.c: 139: RxNum =0;
	clrf	(PB_Isr@RxNum)
	line	140
	
i1l1438:	
;main.c: 140: RXOK_f =1;
	bsf	(_RXOK_f/8),(_RXOK_f)&7
	goto	i1l922
	line	144
	
i1l1440:	
;main.c: 143: else
;main.c: 144: TEMP = RCREG;
	bsf	status, 6	;RP1=1, select bank2
	movf	(283)^0100h,w	;volatile
	line	147
	
i1l922:	
	movf	(??_PB_Isr+2),w
	movwf	pclath
	movf	(??_PB_Isr+1),w
	movwf	fsr0
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
