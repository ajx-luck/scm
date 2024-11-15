opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F5772
opt include "E:\CMS_WORK\TOOLS\SCMCU_IDE_V2.00.07\data\include\sc8f5772.cgen.inc"
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
;! (0) _main                                                 0     0      0     337
;!                           _DelayXms
;!                        _Init_System
;!                           _Read_IIC
;!                          _Write_IIC
;! ---------------------------------------------------------------------------------
;! (1) _Write_IIC                                            2     1      1     130
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
;;		line 105 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
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
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
	line	105
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
	line	105
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	107
	
l1359:	
;main.c: 107: Init_System();
	fcall	_Init_System
	line	108
	
l1361:	
;main.c: 108: TRISA |= 0b00000011;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	109
	
l1363:	
;main.c: 109: IICCON = 0B00100000;
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(268)^0100h	;volatile
	line	110
	
l1365:	
;main.c: 110: IICADD = 159;
	movlw	low(09Fh)
	movwf	(265)^0100h	;volatile
	line	113
	
l1367:	
;main.c: 113: Write_IIC(0xa0,5);
	movlw	low(05h)
	movwf	(Write_IIC@data)
	movlw	low(0A0h)
	fcall	_Write_IIC
	line	117
	
l1369:	
;main.c: 116: {
;main.c: 117: DelayXms(200);
	movlw	low(0C8h)
	fcall	_DelayXms
	line	118
	
l1371:	
;main.c: 118: Write_IIC(0xa0,0x80);
	movlw	low(080h)
	movwf	(Write_IIC@data)
	movlw	low(0A0h)
	fcall	_Write_IIC
	line	120
	
l1373:	
;main.c: 120: IICReadData = Read_IIC(0xa0,0x80);
	movlw	low(080h)
	movwf	(Read_IIC@data)
	movlw	low(0A0h)
	fcall	_Read_IIC
	movwf	(_IICReadData)	;volatile
	goto	l1369
	global	start
	ljmp	start
	opt stack 0
	line	122
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Write_IIC

;; *************** function _Write_IIC *****************
;; Defined at:
;;		line 45 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
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
	line	45
global __ptext1
__ptext1:	;psect for function _Write_IIC
psect	text1
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
	line	45
	global	__size_of_Write_IIC
	__size_of_Write_IIC	equ	__end_of_Write_IIC-_Write_IIC
	
_Write_IIC:	
;incstack = 0
	opt	stack 6
; Regs used in _Write_IIC: [wreg]
;Write_IIC@Adress stored from wreg
	movwf	(Write_IIC@Adress)
	line	47
	
l1337:	
;main.c: 47: SEN =1;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(2152/8)^0100h,(2152)&7	;volatile
	line	48
;main.c: 48: while(IICIF==0);
	
l824:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u151
	goto	u150
u151:
	goto	l824
u150:
	
l826:	
	line	49
;main.c: 49: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	50
	
l1339:	
;main.c: 50: IICBUF = Adress;
	movf	(Write_IIC@Adress),w
	movwf	(270)^0100h	;volatile
	line	51
;main.c: 51: while(IICIF==0);
	
l827:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u161
	goto	u160
u161:
	goto	l827
u160:
	
l829:	
	line	52
;main.c: 52: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	53
	
l1341:	
;main.c: 53: IICBUF = data;
	movf	(Write_IIC@data),w
	movwf	(270)^0100h	;volatile
	line	54
;main.c: 54: while(IICIF==0);
	
l830:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u171
	goto	u170
u171:
	goto	l830
u170:
	
l832:	
	line	55
;main.c: 55: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	56
;main.c: 56: PEN =1;
	bsf	(2154/8)^0100h,(2154)&7	;volatile
	line	57
;main.c: 57: while(IICIF==0);
	
l833:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u181
	goto	u180
u181:
	goto	l833
u180:
	
l835:	
	line	58
;main.c: 58: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	60
	
l836:	
	return
	opt stack 0
GLOBAL	__end_of_Write_IIC
	__end_of_Write_IIC:
	signat	_Write_IIC,8313
	global	_Read_IIC

;; *************** function _Read_IIC *****************
;; Defined at:
;;		line 68 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
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
	line	68
global __ptext2
__ptext2:	;psect for function _Read_IIC
psect	text2
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
	line	68
	global	__size_of_Read_IIC
	__size_of_Read_IIC	equ	__end_of_Read_IIC-_Read_IIC
	
_Read_IIC:	
;incstack = 0
	opt	stack 6
; Regs used in _Read_IIC: [wreg+status,2+status,0]
;Read_IIC@Adress stored from wreg
	movwf	(Read_IIC@Adress)
	line	72
	
l1343:	
;main.c: 70: unsigned char ReadData;
;main.c: 72: SEN =1;
	bsf	(2152/8)^0100h,(2152)&7	;volatile
	line	73
;main.c: 73: while(IICIF==0);
	
l839:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u191
	goto	u190
u191:
	goto	l839
u190:
	
l841:	
	line	74
;main.c: 74: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	75
	
l1345:	
;main.c: 75: IICBUF = Adress;
	movf	(Read_IIC@Adress),w
	movwf	(270)^0100h	;volatile
	line	76
;main.c: 76: while(IICIF==0);
	
l842:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u201
	goto	u200
u201:
	goto	l842
u200:
	
l844:	
	line	78
;main.c: 78: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	79
	
l1347:	
;main.c: 79: IICBUF = data;
	movf	(Read_IIC@data),w
	movwf	(270)^0100h	;volatile
	line	80
;main.c: 80: while(IICIF==0);
	
l845:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u211
	goto	u210
u211:
	goto	l845
u210:
	
l847:	
	line	81
;main.c: 81: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	83
;main.c: 83: RSEN =1;
	bsf	(2153/8)^0100h,(2153)&7	;volatile
	line	84
;main.c: 84: while(IICIF==0);
	
l848:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u221
	goto	u220
u221:
	goto	l848
u220:
	
l850:	
	line	86
;main.c: 86: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	88
	
l1349:	
;main.c: 88: IICBUF = Adress+1;
	movf	(Read_IIC@Adress),w
	addlw	01h
	movwf	(270)^0100h	;volatile
	line	89
;main.c: 89: while(IICIF==0);
	
l851:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u231
	goto	u230
u231:
	goto	l851
u230:
	
l853:	
	line	90
;main.c: 90: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	91
;main.c: 91: RCEN = 1;
	bsf	(2155/8)^0100h,(2155)&7	;volatile
	line	92
;main.c: 92: while(IICIF==0);
	
l854:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u241
	goto	u240
u241:
	goto	l854
u240:
	
l856:	
	line	93
;main.c: 93: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	94
	
l1351:	
;main.c: 94: ReadData = IICBUF;
	movf	(270)^0100h,w	;volatile
	movwf	(Read_IIC@ReadData)
	line	96
	
l1353:	
;main.c: 96: PEN =1;
	bsf	(2154/8)^0100h,(2154)&7	;volatile
	line	97
;main.c: 97: while(IICIF==0);
	
l857:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u251
	goto	u250
u251:
	goto	l857
u250:
	
l859:	
	line	98
;main.c: 98: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	100
	
l1355:	
;main.c: 100: return ReadData;
	movf	(Read_IIC@ReadData),w
	line	103
	
l860:	
	return
	opt stack 0
GLOBAL	__end_of_Read_IIC
	__end_of_Read_IIC:
	signat	_Read_IIC,8313
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 133 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
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
	line	133
global __ptext3
__ptext3:	;psect for function _Init_System
psect	text3
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
	line	133
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	135
	
l1297:	
# 135 "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
nop ;# 
	line	136
# 136 "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
clrwdt ;# 
psect	text3
	line	137
	
l1299:	
;main.c: 137: INTCON = 0;
	clrf	(11)	;volatile
	line	138
	
l1301:	
;main.c: 138: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	139
	
l1303:	
;main.c: 139: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	141
	
l1305:	
;main.c: 141: WPUA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	142
	
l1307:	
;main.c: 142: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	145
;main.c: 145: TRISA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	146
	
l1309:	
;main.c: 146: TRISB = 0B00001000;
	movlw	low(08h)
	movwf	(134)^080h	;volatile
	line	148
	
l1311:	
;main.c: 148: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	149
	
l1313:	
;main.c: 149: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	151
	
l873:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 22 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
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
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
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
	
l1255:	
;main.c: 24: unsigned char i,j;
;main.c: 25: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l1257:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l1261
u10:
	goto	l821
	line	26
	
l1261:	
;main.c: 26: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l1267:	
	decf	(DelayXms@j),f
	
l1269:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l1267
u20:
	line	25
	
l1271:	
	decf	(DelayXms@i),f
	goto	l1257
	line	27
	
l821:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_PB_Isr

;; *************** function _PB_Isr *****************
;; Defined at:
;;		line 160 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
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
	line	160
global __ptext5
__ptext5:	;psect for function _PB_Isr
psect	text5
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_IIC_Master_Demo\main.c"
	line	160
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
	line	162
	
i1l1331:	
;main.c: 162: if(RBIF)
	btfss	(88/8),(88)&7	;volatile
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l879
u14_20:
	line	164
	
i1l1333:	
;main.c: 163: {
;main.c: 164: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	165
	
i1l1335:	
;main.c: 165: RB6 = ~RB6;
	movlw	1<<((54)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((54)/8),f
	line	168
	
i1l879:	
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
