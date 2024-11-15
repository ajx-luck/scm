opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F2892B
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11\data\include\sc8f2892b.cgen.inc"
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
	global	_RB5
_RB5	set	53
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
	file	"IIC_Master_Demo.as"
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

	file	"IIC_Master_Demo.as"
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
??_Init_System:	; 1 bytes @ 0x0
?_DelayXms:	; 1 bytes @ 0x0
??_DelayXms:	; 1 bytes @ 0x0
?_Write_IIC:	; 1 bytes @ 0x0
?_Read_IIC:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x0
	global	Write_IIC@data
Write_IIC@data:	; 1 bytes @ 0x0
	global	Read_IIC@data
Read_IIC@data:	; 1 bytes @ 0x0
	ds	1
??_Write_IIC:	; 1 bytes @ 0x1
??_Read_IIC:	; 1 bytes @ 0x1
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x1
	global	Write_IIC@Adress
Write_IIC@Adress:	; 1 bytes @ 0x1
	global	Read_IIC@ReadData
Read_IIC@ReadData:	; 1 bytes @ 0x1
	ds	1
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x2
	global	Read_IIC@Adress
Read_IIC@Adress:	; 1 bytes @ 0x2
	ds	1
??_main:	; 1 bytes @ 0x3
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
;!    COMMON           14      3      10
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
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
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
;! (0) _main                                                 0     0      0     294
;!                           _DelayXms
;!                        _Init_System
;!                           _Read_IIC
;!                          _Write_IIC
;! ---------------------------------------------------------------------------------
;! (1) _Write_IIC                                            2     1      1      87
;!                                              0 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _Read_IIC                                             3     2      1     132
;!                                              0 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _DelayXms                                             3     3      0      75
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
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

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      3       A       1       71.4%
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
;!ABS                  0      0       A       8        0.0%
;!DATA                 0      0       A       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 135 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB开发包_2\SC8F289XB_DEMO_C\SC8F289XB_IIC_Master_Demo\main.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
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
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB开发包_2\SC8F289XB_DEMO_C\SC8F289XB_IIC_Master_Demo\main.c"
	line	135
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB开发包_2\SC8F289XB_DEMO_C\SC8F289XB_IIC_Master_Demo\main.c"
	line	135
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	137
	
l1285:	
;main.c: 137: Init_System();
	fcall	_Init_System
	line	138
	
l1287:	
;main.c: 138: TRISA |= 0b00000011;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	171
	
l1289:	
;main.c: 171: IICCON = 0B00100000;
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(268)^0100h	;volatile
	line	172
	
l1291:	
;main.c: 172: IICADD = 36;
	movlw	low(024h)
	movwf	(265)^0100h	;volatile
	line	176
	
l1293:	
;main.c: 175: {
;main.c: 176: DelayXms(200);
	movlw	low(0C8h)
	fcall	_DelayXms
	line	177
	
l1295:	
;main.c: 177: Write_IIC(0xa0,0x80);
	movlw	low(080h)
	movwf	(Write_IIC@data)
	movlw	low(0A0h)
	fcall	_Write_IIC
	line	179
	
l1297:	
;main.c: 179: IICReadData = Read_IIC(0xa0,0x80);
	movlw	low(080h)
	movwf	(Read_IIC@data)
	movlw	low(0A0h)
	fcall	_Read_IIC
	movwf	(_IICReadData)	;volatile
	line	180
	
l1299:	
;main.c: 180: RB5 = ~RB5;
	movlw	1<<((53)&7)
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((53)/8),f
	goto	l1293
	global	start
	ljmp	start
	opt stack 0
	line	182
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Write_IIC

;; *************** function _Write_IIC *****************
;; Defined at:
;;		line 42 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB开发包_2\SC8F289XB_DEMO_C\SC8F289XB_IIC_Master_Demo\main.c"
;; Parameters:    Size  Location     Type
;;  Adress          1    wreg     unsigned char 
;;  data            1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Adress          1    1[COMMON] unsigned char 
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
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB开发包_2\SC8F289XB_DEMO_C\SC8F289XB_IIC_Master_Demo\main.c"
	line	42
	global	__size_of_Write_IIC
	__size_of_Write_IIC	equ	__end_of_Write_IIC-_Write_IIC
	
_Write_IIC:	
;incstack = 0
	opt	stack 7
; Regs used in _Write_IIC: [wreg]
;Write_IIC@Adress stored from wreg
	movwf	(Write_IIC@Adress)
	line	77
	
l1263:	
;main.c: 77: SEN =1;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(2152/8)^0100h,(2152)&7	;volatile
	line	78
;main.c: 78: while(IICIF==0);
	
l760:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u141
	goto	u140
u141:
	goto	l760
u140:
	
l762:	
	line	79
;main.c: 79: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	80
	
l1265:	
;main.c: 80: IICBUF = Adress;
	movf	(Write_IIC@Adress),w
	movwf	(270)^0100h	;volatile
	line	81
;main.c: 81: while(IICIF==0);
	
l763:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u151
	goto	u150
u151:
	goto	l763
u150:
	
l765:	
	line	82
;main.c: 82: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	83
	
l1267:	
;main.c: 83: IICBUF = data;
	movf	(Write_IIC@data),w
	movwf	(270)^0100h	;volatile
	line	84
;main.c: 84: while(IICIF==0);
	
l766:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u161
	goto	u160
u161:
	goto	l766
u160:
	
l768:	
	line	85
;main.c: 85: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	86
;main.c: 86: PEN =1;
	bsf	(2154/8)^0100h,(2154)&7	;volatile
	line	87
;main.c: 87: while(IICIF==0);
	
l769:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u171
	goto	u170
u171:
	goto	l769
u170:
	
l771:	
	line	88
;main.c: 88: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	90
	
l772:	
	return
	opt stack 0
GLOBAL	__end_of_Write_IIC
	__end_of_Write_IIC:
	signat	_Write_IIC,8313
	global	_Read_IIC

;; *************** function _Read_IIC *****************
;; Defined at:
;;		line 98 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB开发包_2\SC8F289XB_DEMO_C\SC8F289XB_IIC_Master_Demo\main.c"
;; Parameters:    Size  Location     Type
;;  Adress          1    wreg     unsigned char 
;;  data            1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Adress          1    2[COMMON] unsigned char 
;;  ReadData        1    1[COMMON] unsigned char 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	98
global __ptext2
__ptext2:	;psect for function _Read_IIC
psect	text2
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB开发包_2\SC8F289XB_DEMO_C\SC8F289XB_IIC_Master_Demo\main.c"
	line	98
	global	__size_of_Read_IIC
	__size_of_Read_IIC	equ	__end_of_Read_IIC-_Read_IIC
	
_Read_IIC:	
;incstack = 0
	opt	stack 7
; Regs used in _Read_IIC: [wreg+status,2+status,0]
;Read_IIC@Adress stored from wreg
	movwf	(Read_IIC@Adress)
	line	102
	
l1269:	
;main.c: 100: unsigned char ReadData;
;main.c: 102: SEN =1;
	bsf	(2152/8)^0100h,(2152)&7	;volatile
	line	103
;main.c: 103: while(IICIF==0);
	
l775:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u181
	goto	u180
u181:
	goto	l775
u180:
	
l777:	
	line	104
;main.c: 104: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	105
	
l1271:	
;main.c: 105: IICBUF = Adress;
	movf	(Read_IIC@Adress),w
	movwf	(270)^0100h	;volatile
	line	106
;main.c: 106: while(IICIF==0);
	
l778:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u191
	goto	u190
u191:
	goto	l778
u190:
	
l780:	
	line	108
;main.c: 108: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	109
	
l1273:	
;main.c: 109: IICBUF = data;
	movf	(Read_IIC@data),w
	movwf	(270)^0100h	;volatile
	line	110
;main.c: 110: while(IICIF==0);
	
l781:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u201
	goto	u200
u201:
	goto	l781
u200:
	
l783:	
	line	111
;main.c: 111: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	113
;main.c: 113: RSEN =1;
	bsf	(2153/8)^0100h,(2153)&7	;volatile
	line	114
;main.c: 114: while(IICIF==0);
	
l784:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u211
	goto	u210
u211:
	goto	l784
u210:
	
l786:	
	line	116
;main.c: 116: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	118
	
l1275:	
;main.c: 118: IICBUF = Adress+1;
	movf	(Read_IIC@Adress),w
	addlw	01h
	movwf	(270)^0100h	;volatile
	line	119
;main.c: 119: while(IICIF==0);
	
l787:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u221
	goto	u220
u221:
	goto	l787
u220:
	
l789:	
	line	120
;main.c: 120: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	121
;main.c: 121: RCEN = 1;
	bsf	(2155/8)^0100h,(2155)&7	;volatile
	line	122
;main.c: 122: while(IICIF==0);
	
l790:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u231
	goto	u230
u231:
	goto	l790
u230:
	
l792:	
	line	123
;main.c: 123: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	124
	
l1277:	
;main.c: 124: ReadData = IICBUF;
	movf	(270)^0100h,w	;volatile
	movwf	(Read_IIC@ReadData)
	line	126
	
l1279:	
;main.c: 126: PEN =1;
	bsf	(2154/8)^0100h,(2154)&7	;volatile
	line	127
;main.c: 127: while(IICIF==0);
	
l793:	
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u241
	goto	u240
u241:
	goto	l793
u240:
	
l795:	
	line	128
;main.c: 128: IICIF = 0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	130
	
l1281:	
;main.c: 130: return ReadData;
	movf	(Read_IIC@ReadData),w
	line	133
	
l796:	
	return
	opt stack 0
GLOBAL	__end_of_Read_IIC
	__end_of_Read_IIC:
	signat	_Read_IIC,8313
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 193 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB开发包_2\SC8F289XB_DEMO_C\SC8F289XB_IIC_Master_Demo\main.c"
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	193
global __ptext3
__ptext3:	;psect for function _Init_System
psect	text3
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB开发包_2\SC8F289XB_DEMO_C\SC8F289XB_IIC_Master_Demo\main.c"
	line	193
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 7
; Regs used in _Init_System: [wreg+status,2]
	line	195
	
l1227:	
# 195 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB开发包_2\SC8F289XB_DEMO_C\SC8F289XB_IIC_Master_Demo\main.c"
nop ;# 
	line	196
# 196 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB开发包_2\SC8F289XB_DEMO_C\SC8F289XB_IIC_Master_Demo\main.c"
clrwdt ;# 
psect	text3
	line	197
	
l1229:	
;main.c: 197: INTCON = 0;
	clrf	(11)	;volatile
	line	198
	
l1231:	
;main.c: 198: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	199
	
l1233:	
;main.c: 199: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	201
	
l1235:	
;main.c: 201: WPUA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	202
	
l1237:	
;main.c: 202: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	205
	
l1239:	
;main.c: 205: TRISA = 0B00000011;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	206
	
l1241:	
;main.c: 206: TRISB = 0B00001000;
	movlw	low(08h)
	movwf	(134)^080h	;volatile
	line	208
	
l1243:	
;main.c: 208: PORTA = 0B00000011;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	209
	
l1245:	
;main.c: 209: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	211
	
l809:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 22 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB开发包_2\SC8F289XB_DEMO_C\SC8F289XB_IIC_Master_Demo\main.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    0[COMMON] unsigned char 
;;  j               1    2[COMMON] unsigned char 
;;  i               1    1[COMMON] unsigned char 
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
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB开发包_2\SC8F289XB_DEMO_C\SC8F289XB_IIC_Master_Demo\main.c"
	line	22
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 7
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	25
	
l1185:	
;main.c: 24: unsigned char i,j;
;main.c: 25: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l1187:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l1191
u10:
	goto	l757
	line	26
	
l1191:	
;main.c: 26: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l1197:	
	decf	(DelayXms@j),f
	
l1199:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l1197
u20:
	line	25
	
l1201:	
	decf	(DelayXms@i),f
	goto	l1187
	line	27
	
l757:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
