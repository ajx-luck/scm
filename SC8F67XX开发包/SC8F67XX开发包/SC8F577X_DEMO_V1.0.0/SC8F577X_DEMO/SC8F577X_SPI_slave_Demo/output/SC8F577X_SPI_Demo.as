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
	FNCALL	_main,_DelayXms
	FNCALL	_main,_Init_System
	FNROOT	_main
	FNCALL	intlevel1,_PB_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_result2
	global	_result1
	global	_result
	global	_IICReadData
	global	_SendBuffer
	global	_ReceBuffer
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
	global	_SPIIE
_SPIIE	set	107
	global	_SPIIF
_SPIIF	set	99
	global	_RBIF
_RBIF	set	88
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
	global	_SPICON2
_SPICON2	set	286
	global	_SPICON
_SPICON	set	285
	global	_SPIBUF
_SPIBUF	set	284
; #config settings
	file	"SC8F577X_SPI_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_result2:
       ds      2

_result1:
       ds      2

_result:
       ds      2

_IICReadData:
       ds      1

_SendBuffer:
       ds      1

_ReceBuffer:
       ds      1

	file	"SC8F577X_SPI_Demo.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
	clrf	((__pbssCOMMON)+6)&07Fh
	clrf	((__pbssCOMMON)+7)&07Fh
	clrf	((__pbssCOMMON)+8)&07Fh
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
?_PB_Isr:	; 1 bytes @ 0x0
??_PB_Isr:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_DelayXms:	; 1 bytes @ 0x2
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x2
	ds	1
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x3
	ds	1
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x4
	ds	1
??_main:	; 1 bytes @ 0x5
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         9
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      14
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
;!    _main->_DelayXms
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
;! (0) _main                                                 0     0      0      75
;!                           _DelayXms
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _DelayXms                                             3     3      0      75
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _PB_Isr                                               2     2      0       0
;!                                              0 COMMON     2     2      0
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
;! _PB_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       E       1      100.0%
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
;!ABS                  0      0       E       8        0.0%
;!DATA                 0      0       E       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 38 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_SPI_slave_Demo\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayXms
;;		_Init_System
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_SPI_slave_Demo\main.c"
	line	38
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_SPI_slave_Demo\main.c"
	line	38
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l1317:	
;main.c: 40: Init_System();
	fcall	_Init_System
	line	42
	
l1319:	
;main.c: 42: TRISA |= 0b00000011;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	43
	
l1321:	
;main.c: 43: SPICON = 0B00100100;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(285)^0100h	;volatile
	line	44
	
l1323:	
;main.c: 44: SPICON2 = 0B00000000;
	clrf	(286)^0100h	;volatile
	line	46
	
l1325:	
;main.c: 46: SPIIF =0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7	;volatile
	line	47
	
l1327:	
;main.c: 47: SPIIE=1;
	bsf	(107/8),(107)&7	;volatile
	line	48
	
l1329:	
;main.c: 48: PEIE =1;
	bsf	(94/8),(94)&7	;volatile
	line	49
	
l1331:	
;main.c: 49: GIE =1;
	bsf	(95/8),(95)&7	;volatile
	line	53
	
l1333:	
;main.c: 52: {
;main.c: 53: DelayXms(200);
	movlw	low(0C8h)
	fcall	_DelayXms
	goto	l1333
	global	start
	ljmp	start
	opt stack 0
	line	56
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 67 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_SPI_slave_Demo\main.c"
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
	line	67
global __ptext1
__ptext1:	;psect for function _Init_System
psect	text1
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_SPI_slave_Demo\main.c"
	line	67
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	69
	
l1299:	
# 69 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_SPI_slave_Demo\main.c"
nop ;# 
	line	70
# 70 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_SPI_slave_Demo\main.c"
clrwdt ;# 
psect	text1
	line	71
	
l1301:	
;main.c: 71: INTCON = 0;
	clrf	(11)	;volatile
	line	72
	
l1303:	
;main.c: 72: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	73
	
l1305:	
;main.c: 73: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	75
	
l1307:	
;main.c: 75: WPUA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	76
	
l1309:	
;main.c: 76: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	79
;main.c: 79: TRISA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	80
	
l1311:	
;main.c: 80: TRISB = 0B00110100;
	movlw	low(034h)
	movwf	(134)^080h	;volatile
	line	82
	
l1313:	
;main.c: 82: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	83
	
l1315:	
;main.c: 83: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	85
	
l896:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 24 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_SPI_slave_Demo\main.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    2[COMMON] unsigned char 
;;  j               1    4[COMMON] unsigned char 
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
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
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_SPI_slave_Demo\main.c"
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
	
l1279:	
;main.c: 26: unsigned char i,j;
;main.c: 27: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l1281:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l1285
u10:
	goto	l883
	line	28
	
l1285:	
;main.c: 28: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l1291:	
	decf	(DelayXms@j),f
	
l1293:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l1291
u20:
	line	27
	
l1295:	
	decf	(DelayXms@i),f
	goto	l1281
	line	29
	
l883:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_PB_Isr

;; *************** function _PB_Isr *****************
;; Defined at:
;;		line 94 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_SPI_slave_Demo\main.c"
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
	line	94
global __ptext3
__ptext3:	;psect for function _PB_Isr
psect	text3
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_SPI_slave_Demo\main.c"
	line	94
	global	__size_of_PB_Isr
	__size_of_PB_Isr	equ	__end_of_PB_Isr-_PB_Isr
	
_PB_Isr:	
;incstack = 0
	opt	stack 6
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
	line	96
	
i1l1335:	
;main.c: 96: if(RBIF)
	btfss	(88/8),(88)&7	;volatile
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l901
u3_20:
	line	98
	
i1l1337:	
;main.c: 97: {
;main.c: 98: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	101
	
i1l901:	
	line	103
;main.c: 101: }
;main.c: 103: if(SPIIF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7	;volatile
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l903
u4_20:
	line	105
	
i1l1339:	
;main.c: 104: {
;main.c: 105: SPIIF = 0;
	bcf	(99/8),(99)&7	;volatile
	line	107
	
i1l1341:	
;main.c: 107: ReceBuffer = SPIBUF;
	bsf	status, 6	;RP1=1, select bank2
	movf	(284)^0100h,w	;volatile
	movwf	(_ReceBuffer)	;volatile
	line	110
;main.c: 110: SPIBUF =0x11;
	movlw	low(011h)
	movwf	(284)^0100h	;volatile
	line	113
	
i1l903:	
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
