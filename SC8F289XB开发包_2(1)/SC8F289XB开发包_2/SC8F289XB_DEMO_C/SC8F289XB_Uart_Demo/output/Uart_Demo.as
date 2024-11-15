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
	FNCALL	_main,_DelayXms
	FNCALL	_main,_Init_System
	FNROOT	_main
	FNCALL	intlevel1,_UART_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_result1
	global	_result
	global	UART_Isr@RxNum
	global	_RXOK_f
	global	_RxTable
	global	_result2
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
	global	_PEIE
_PEIE	set	94
	global	_GIE
_GIE	set	95
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
	file	"Uart_Demo.as"
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
_result1:
       ds      2

_result:
       ds      2

UART_Isr@RxNum:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_RxTable:
       ds      10

_result2:
       ds      2

	file	"Uart_Demo.as"
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
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
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
?_DelayXms:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_UART_Isr:	; 1 bytes @ 0x0
??_UART_Isr:	; 1 bytes @ 0x0
	ds	3
??_Init_System:	; 1 bytes @ 0x3
??_DelayXms:	; 1 bytes @ 0x3
??_main:	; 1 bytes @ 0x3
	global	main@i
main@i:	; 1 bytes @ 0x3
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x0
	ds	1
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x1
	ds	1
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x2
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
;!    COMMON           14      4      10
;!    BANK0            80      3      15
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
;!Critical Paths under _UART_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_DelayXms
;!
;!Critical Paths under _UART_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _UART_Isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _UART_Isr in BANK2
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
;! (0) _main                                                 1     1      0     269
;!                                              3 COMMON     1     1      0
;!                           _DelayXms
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _DelayXms                                             3     3      0     167
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _UART_Isr                                             3     3      0       0
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _DelayXms
;!   _Init_System
;!
;! _UART_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      4       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      3       F       4       18.8%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0      19       8        0.0%
;!DATA                 0      0      19       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 34 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Uart_Demo\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayXms
;;		_Init_System
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Uart_Demo\main.c"
	line	34
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Uart_Demo\main.c"
	line	34
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	36
	
l1369:	
;main.c: 36: DelayXms(2);
	movlw	low(02h)
	fcall	_DelayXms
	line	37
	
l1371:	
	line	38
	
l1373:	
;main.c: 38: Init_System();
	fcall	_Init_System
	line	40
	
l1375:	
;main.c: 40: TXREG =0x55;
	movlw	low(055h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(282)^0100h	;volatile
	line	42
;main.c: 42: while(TRMT==0);
	
l766:	
	btfss	(2233/8)^0100h,(2233)&7	;volatile
	goto	u231
	goto	u230
u231:
	goto	l766
u230:
	line	43
	
l1377:	
;main.c: 43: TXREG =0xaa;
	movlw	low(0AAh)
	movwf	(282)^0100h	;volatile
	line	45
;main.c: 45: while(TRMT==0);
	
l769:	
	btfss	(2233/8)^0100h,(2233)&7	;volatile
	goto	u241
	goto	u240
u241:
	goto	l769
u240:
	line	47
;main.c: 47: while(1)
	
l772:	
	line	51
;main.c: 48: {
;main.c: 51: if(RXOK_f==1)
	btfss	(_RXOK_f/8),(_RXOK_f)&7
	goto	u251
	goto	u250
u251:
	goto	l772
u250:
	line	53
	
l1379:	
;main.c: 52: {
;main.c: 53: for(i=0;i<10;i++)
	clrf	(main@i)
	line	56
	
l1385:	
;main.c: 54: {
;main.c: 56: TXREG =RxTable[i];
	movf	(main@i),w
	addlw	low(_RxTable|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(282)^0100h	;volatile
	line	58
;main.c: 58: while(TRMT==0);
	
l776:	
	btfss	(2233/8)^0100h,(2233)&7	;volatile
	goto	u261
	goto	u260
u261:
	goto	l776
u260:
	line	53
	
l1387:	
	incf	(main@i),f
	
l1389:	
	movlw	low(0Ah)
	subwf	(main@i),w
	skipc
	goto	u271
	goto	u270
u271:
	goto	l1385
u270:
	
l775:	
	line	61
;main.c: 59: }
;main.c: 61: RXOK_f = 0;
	bcf	(_RXOK_f/8),(_RXOK_f)&7
	goto	l772
	global	start
	ljmp	start
	opt stack 0
	line	65
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 75 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Uart_Demo\main.c"
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
	line	75
global __ptext1
__ptext1:	;psect for function _Init_System
psect	text1
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Uart_Demo\main.c"
	line	75
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	77
	
l1281:	
# 77 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Uart_Demo\main.c"
nop ;# 
	line	78
# 78 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Uart_Demo\main.c"
clrwdt ;# 
psect	text1
	line	79
	
l1283:	
;main.c: 79: INTCON = 0;
	clrf	(11)	;volatile
	line	80
	
l1285:	
;main.c: 80: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	81
	
l1287:	
;main.c: 81: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	83
	
l1289:	
;main.c: 83: WPUA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	84
	
l1291:	
;main.c: 84: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	87
;main.c: 87: TRISA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	88
	
l1293:	
;main.c: 88: TRISB = 0B00011000;
	movlw	low(018h)
	movwf	(134)^080h	;volatile
	line	90
	
l1295:	
;main.c: 90: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	91
	
l1297:	
;main.c: 91: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	121
	
l1299:	
;main.c: 121: TXSTA = 0B10100000;
	movlw	low(0A0h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(279)^0100h	;volatile
	line	157
	
l1301:	
;main.c: 157: RCSTA = 0B10010000;
	movlw	low(090h)
	movwf	(280)^0100h	;volatile
	line	158
	
l1303:	
;main.c: 158: SPBRG = 51;
	movlw	low(033h)
	movwf	(281)^0100h	;volatile
	line	160
	
l1305:	
;main.c: 160: PEIE =1;
	bsf	(94/8),(94)&7	;volatile
	line	161
	
l1307:	
;main.c: 161: RCIE =1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(109/8),(109)&7	;volatile
	line	162
	
l1309:	
;main.c: 162: GIE =1;
	bsf	(95/8),(95)&7	;volatile
	line	164
	
l784:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 24 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Uart_Demo\main.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    0[BANK0 ] unsigned char 
;;  j               1    2[BANK0 ] unsigned char 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	24
global __ptext2
__ptext2:	;psect for function _DelayXms
psect	text2
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Uart_Demo\main.c"
	line	24
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 6
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	27
	
l1349:	
;main.c: 26: unsigned char i,j;
;main.c: 27: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l1351:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u211
	goto	u210
u211:
	goto	l1355
u210:
	goto	l761
	line	28
	
l1355:	
;main.c: 28: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l1361:	
	decf	(DelayXms@j),f
	
l1363:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u221
	goto	u220
u221:
	goto	l1361
u220:
	line	27
	
l1365:	
	decf	(DelayXms@i),f
	goto	l1351
	line	29
	
l761:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_UART_Isr

;; *************** function _UART_Isr *****************
;; Defined at:
;;		line 173 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Uart_Demo\main.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	173
global __ptext3
__ptext3:	;psect for function _UART_Isr
psect	text3
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Uart_Demo\main.c"
	line	173
	global	__size_of_UART_Isr
	__size_of_UART_Isr	equ	__end_of_UART_Isr-_UART_Isr
	
_UART_Isr:	
;incstack = 0
	opt	stack 6
; Regs used in _UART_Isr: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_UART_Isr+0)
	movf	fsr0,w
	movwf	(??_UART_Isr+1)
	movf	pclath,w
	movwf	(??_UART_Isr+2)
	ljmp	_UART_Isr
psect	text3
	line	177
	
i1l1333:	
;main.c: 175: static unsigned char RxNum=0,TEMP;
;main.c: 177: if(RCIF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l797
u18_20:
	line	179
	
i1l1335:	
;main.c: 178: {
;main.c: 179: RCIF = 0;
	bcf	(101/8),(101)&7	;volatile
	line	181
;main.c: 181: if(RXOK_f==0)
	btfsc	(_RXOK_f/8),(_RXOK_f)&7
	goto	u19_21
	goto	u19_20
u19_21:
	goto	i1l1347
u19_20:
	line	183
	
i1l1337:	
;main.c: 182: {
;main.c: 183: RxTable[RxNum] = RCREG;
	movf	(UART_Isr@RxNum),w
	addlw	low(_RxTable|((0x0)<<8))&0ffh
	movwf	fsr0
	bsf	status, 6	;RP1=1, select bank2
	movf	(283)^0100h,w	;volatile
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	184
	
i1l1339:	
;main.c: 184: RxNum++;
	incf	(UART_Isr@RxNum),f
	line	185
	
i1l1341:	
;main.c: 185: if(RxNum > 9)
	movlw	low(0Ah)
	subwf	(UART_Isr@RxNum),w
	skipc
	goto	u20_21
	goto	u20_20
u20_21:
	goto	i1l797
u20_20:
	line	187
	
i1l1343:	
;main.c: 186: {
;main.c: 187: RxNum =0;
	clrf	(UART_Isr@RxNum)
	line	188
	
i1l1345:	
;main.c: 188: RXOK_f =1;
	bsf	(_RXOK_f/8),(_RXOK_f)&7
	goto	i1l797
	line	192
	
i1l1347:	
;main.c: 191: else
;main.c: 192: TEMP = RCREG;
	bsf	status, 6	;RP1=1, select bank2
	movf	(283)^0100h,w	;volatile
	line	195
	
i1l797:	
	movf	(??_UART_Isr+2),w
	movwf	pclath
	movf	(??_UART_Isr+1),w
	movwf	fsr0
	swapf	(??_UART_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_UART_Isr
	__end_of_UART_Isr:
	signat	_UART_Isr,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
