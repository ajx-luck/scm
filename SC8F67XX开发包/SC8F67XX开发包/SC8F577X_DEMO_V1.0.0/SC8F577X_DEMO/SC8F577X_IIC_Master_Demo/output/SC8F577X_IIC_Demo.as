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
	FNCALL	_main,_Read_IIC
	FNCALL	_main,_Write_IIC
	FNROOT	_main
	FNCALL	intlevel1,_PB_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_result2
	global	_result1
	global	_result
	global	_IICReadData
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
	global	_RBIF
_RBIF	set	88
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
	global	_IICBUF
_IICBUF	set	270
	global	_IICCON
_IICCON	set	268
	global	_IICADD
_IICADD	set	265
	global	_SEN
_SEN	set	2152
	global	_RSEN
_RSEN	set	2153
	global	_PEN
_PEN	set	2154
	global	_RCEN
_RCEN	set	2155
	global	_IICIF
_IICIF	set	2108
; #config settings
	file	"SC8F577X_IIC_Demo.as"
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

	file	"SC8F577X_IIC_Demo.as"
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
?_Write_IIC:	; 1 bytes @ 0x2
?_Read_IIC:	; 1 bytes @ 0x2
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x2
	global	Write_IIC@data
Write_IIC@data:	; 1 bytes @ 0x2
	global	Read_IIC@data
Read_IIC@data:	; 1 bytes @ 0x2
	ds	1
??_Write_IIC:	; 1 bytes @ 0x3
??_Read_IIC:	; 1 bytes @ 0x3
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x3
	global	Write_IIC@Adress
Write_IIC@Adress:	; 1 bytes @ 0x3
	global	Read_IIC@ReadData
Read_IIC@ReadData:	; 1 bytes @ 0x3
	ds	1
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x4
	global	Read_IIC@Adress
Read_IIC@Adress:	; 1 bytes @ 0x4
	ds	1
??_main:	; 1 bytes @ 0x5
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         7
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      12
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
;!    _main->_Read_IIC
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
;! (0) _main                                                 0     0      0     380
;!                           _DelayXms
;!                        _Init_System
;!                           _Read_IIC
;!                          _Write_IIC
;! ---------------------------------------------------------------------------------
;! (1) _Write_IIC                                            2     1      1     173
;!                                              2 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _Read_IIC                                             3     2      1     132
;!                                              2 COMMON     3     2      1
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
;!   _Read_IIC
;!   _Write_IIC
;!
;! _PB_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       C       1       85.7%
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
;!ABS                  0      0       C       8        0.0%
;!DATA                 0      0       C       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 102 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
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
;;		On exit  : 300/200
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
;;		_Read_IIC
;;		_Write_IIC
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
	line	102
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
	line	102
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	104
	
l1419:	
;main.c: 104: Init_System();
	fcall	_Init_System
	line	105
	
l1421:	
;main.c: 105: TRISA |= 0b00000011;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	106
	
l1423:	
;main.c: 106: IICCON = 0B00100000;
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(268)^0100h	;volatile
	line	107
	
l1425:	
;main.c: 107: IICADD = 159;
	movlw	low(09Fh)
	movwf	(265)^0100h	;volatile
	line	110
	
l1427:	
;main.c: 110: Write_IIC(0xa0,5);
	movlw	low(05h)
	movwf	(Write_IIC@data)
	movlw	low(0A0h)
	fcall	_Write_IIC
	line	111
	
l1429:	
;main.c: 111: Write_IIC(0xa0,5);
	movlw	low(05h)
	movwf	(Write_IIC@data)
	movlw	low(0A0h)
	fcall	_Write_IIC
	line	114
	
l1431:	
;main.c: 113: {
;main.c: 114: DelayXms(200);
	movlw	low(0C8h)
	fcall	_DelayXms
	line	115
	
l1433:	
;main.c: 115: Write_IIC(0xa0,0x80);
	movlw	low(080h)
	movwf	(Write_IIC@data)
	movlw	low(0A0h)
	fcall	_Write_IIC
	line	117
	
l1435:	
;main.c: 117: IICReadData = Read_IIC(0xa0,0x80);
	movlw	low(080h)
	movwf	(Read_IIC@data)
	movlw	low(0A0h)
	fcall	_Read_IIC
	movwf	(_IICReadData)	;volatile
	goto	l1431
	global	start
	ljmp	start
	opt stack 0
	line	119
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Write_IIC

;; *************** function _Write_IIC *****************
;; Defined at:
;;		line 42 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
;; Parameters:    Size  Location     Type
;;  Adress          1    wreg     unsigned char 
;;  data            1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Adress          1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 100/200
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	42
global __ptext1
__ptext1:	;psect for function _Write_IIC
psect	text1
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
	line	42
	global	__size_of_Write_IIC
	__size_of_Write_IIC	equ	__end_of_Write_IIC-_Write_IIC
	
_Write_IIC:	
;incstack = 0
	opt	stack 6
; Regs used in _Write_IIC: [wreg]
;Write_IIC@Adress stored from wreg
	movwf	(Write_IIC@Adress)
	line	44
	
l1397:	
;main.c: 44: SEN =1;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(2152/8)^0100h,(2152)&7	;volatile
	line	45
;main.c: 45: while(IICIF==0);
	
l882:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u151
	goto	u150
u151:
	goto	l882
u150:
	
l884:	
	line	46
;main.c: 46: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	47
	
l1399:	
;main.c: 47: IICBUF = Adress;
	movf	(Write_IIC@Adress),w
	movwf	(270)^0100h	;volatile
	line	48
;main.c: 48: while(IICIF==0);
	
l885:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u161
	goto	u160
u161:
	goto	l885
u160:
	
l887:	
	line	49
;main.c: 49: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	50
	
l1401:	
;main.c: 50: IICBUF = data;
	movf	(Write_IIC@data),w
	movwf	(270)^0100h	;volatile
	line	51
;main.c: 51: while(IICIF==0);
	
l888:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u171
	goto	u170
u171:
	goto	l888
u170:
	
l890:	
	line	52
;main.c: 52: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	53
;main.c: 53: PEN =1;
	bsf	(2154/8)^0100h,(2154)&7	;volatile
	line	54
;main.c: 54: while(IICIF==0);
	
l891:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u181
	goto	u180
u181:
	goto	l891
u180:
	
l893:	
	line	55
;main.c: 55: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	57
	
l894:	
	return
	opt stack 0
GLOBAL	__end_of_Write_IIC
	__end_of_Write_IIC:
	signat	_Write_IIC,8313
	global	_Read_IIC

;; *************** function _Read_IIC *****************
;; Defined at:
;;		line 65 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
;; Parameters:    Size  Location     Type
;;  Adress          1    wreg     unsigned char 
;;  data            1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Adress          1    4[COMMON] unsigned char 
;;  ReadData        1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/200
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         2       0       0       0
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
	line	65
global __ptext2
__ptext2:	;psect for function _Read_IIC
psect	text2
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
	line	65
	global	__size_of_Read_IIC
	__size_of_Read_IIC	equ	__end_of_Read_IIC-_Read_IIC
	
_Read_IIC:	
;incstack = 0
	opt	stack 6
; Regs used in _Read_IIC: [wreg+status,2+status,0]
;Read_IIC@Adress stored from wreg
	movwf	(Read_IIC@Adress)
	line	69
	
l1403:	
;main.c: 67: unsigned char ReadData;
;main.c: 69: SEN =1;
	bsf	(2152/8)^0100h,(2152)&7	;volatile
	line	70
;main.c: 70: while(IICIF==0);
	
l897:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u191
	goto	u190
u191:
	goto	l897
u190:
	
l899:	
	line	71
;main.c: 71: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	72
	
l1405:	
;main.c: 72: IICBUF = Adress;
	movf	(Read_IIC@Adress),w
	movwf	(270)^0100h	;volatile
	line	73
;main.c: 73: while(IICIF==0);
	
l900:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u201
	goto	u200
u201:
	goto	l900
u200:
	
l902:	
	line	75
;main.c: 75: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	76
	
l1407:	
;main.c: 76: IICBUF = data;
	movf	(Read_IIC@data),w
	movwf	(270)^0100h	;volatile
	line	77
;main.c: 77: while(IICIF==0);
	
l903:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u211
	goto	u210
u211:
	goto	l903
u210:
	
l905:	
	line	78
;main.c: 78: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	80
;main.c: 80: RSEN =1;
	bsf	(2153/8)^0100h,(2153)&7	;volatile
	line	81
;main.c: 81: while(IICIF==0);
	
l906:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u221
	goto	u220
u221:
	goto	l906
u220:
	
l908:	
	line	83
;main.c: 83: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	85
	
l1409:	
;main.c: 85: IICBUF = Adress+1;
	movf	(Read_IIC@Adress),w
	addlw	01h
	movwf	(270)^0100h	;volatile
	line	86
;main.c: 86: while(IICIF==0);
	
l909:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u231
	goto	u230
u231:
	goto	l909
u230:
	
l911:	
	line	87
;main.c: 87: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	88
;main.c: 88: RCEN = 1;
	bsf	(2155/8)^0100h,(2155)&7	;volatile
	line	89
;main.c: 89: while(IICIF==0);
	
l912:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u241
	goto	u240
u241:
	goto	l912
u240:
	
l914:	
	line	90
;main.c: 90: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	91
	
l1411:	
;main.c: 91: ReadData = IICBUF;
	movf	(270)^0100h,w	;volatile
	movwf	(Read_IIC@ReadData)
	line	93
	
l1413:	
;main.c: 93: PEN =1;
	bsf	(2154/8)^0100h,(2154)&7	;volatile
	line	94
;main.c: 94: while(IICIF==0);
	
l915:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u251
	goto	u250
u251:
	goto	l915
u250:
	
l917:	
	line	95
;main.c: 95: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	97
	
l1415:	
;main.c: 97: return ReadData;
	movf	(Read_IIC@ReadData),w
	line	100
	
l918:	
	return
	opt stack 0
GLOBAL	__end_of_Read_IIC
	__end_of_Read_IIC:
	signat	_Read_IIC,8313
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 130 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	130
global __ptext3
__ptext3:	;psect for function _Init_System
psect	text3
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
	line	130
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	132
	
l1355:	
# 132 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
nop ;# 
	line	133
# 133 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
clrwdt ;# 
psect	text3
	line	134
	
l1357:	
;main.c: 134: INTCON = 0;
	clrf	(11)	;volatile
	line	135
	
l1359:	
;main.c: 135: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	136
	
l1361:	
;main.c: 136: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	138
	
l1363:	
;main.c: 138: WPUA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	139
	
l1365:	
;main.c: 139: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	142
;main.c: 142: TRISA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	143
	
l1367:	
;main.c: 143: TRISB = 0B00001000;
	movlw	low(08h)
	movwf	(134)^080h	;volatile
	line	145
	
l1369:	
;main.c: 145: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	146
	
l1371:	
;main.c: 146: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	148
	
l931:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 22 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
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
;;		On entry : 100/200
;;		On exit  : 100/0
;;		Unchanged: 100/0
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	22
global __ptext4
__ptext4:	;psect for function _DelayXms
psect	text4
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
	line	22
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 6
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	25
	
l1313:	
;main.c: 24: unsigned char i,j;
;main.c: 25: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l1315:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l1319
u10:
	goto	l879
	line	26
	
l1319:	
;main.c: 26: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l1325:	
	decf	(DelayXms@j),f
	
l1327:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l1325
u20:
	line	25
	
l1329:	
	decf	(DelayXms@i),f
	goto	l1315
	line	27
	
l879:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_PB_Isr

;; *************** function _PB_Isr *****************
;; Defined at:
;;		line 157 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	157
global __ptext5
__ptext5:	;psect for function _PB_Isr
psect	text5
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
	line	157
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
psect	text5
	line	159
	
i1l1391:	
;main.c: 159: if(RBIF)
	btfss	(88/8),(88)&7	;volatile
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l937
u14_20:
	line	161
	
i1l1393:	
;main.c: 160: {
;main.c: 161: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	162
	
i1l1395:	
;main.c: 162: RB6 = ~RB6;
	movlw	1<<((54)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((54)/8),f
	line	165
	
i1l937:	
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
