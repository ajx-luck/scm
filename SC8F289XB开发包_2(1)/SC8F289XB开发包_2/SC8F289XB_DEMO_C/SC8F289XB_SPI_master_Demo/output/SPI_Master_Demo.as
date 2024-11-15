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
	global	_SPIIF
_SPIIF	set	99
	global	_PEIE
_PEIE	set	94
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
	file	"SPI_Master_Demo.as"
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

	file	"SPI_Master_Demo.as"
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
??_Init_System:	; 1 bytes @ 0x0
?_DelayXms:	; 1 bytes @ 0x0
??_DelayXms:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x0
	ds	1
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x1
	ds	1
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x2
	ds	1
??_main:	; 1 bytes @ 0x3
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
;!    COMMON           14      3      12
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
;! (0) _main                                                 0     0      0      75
;!                           _DelayXms
;!                        _Init_System
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
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      3       C       1       85.7%
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
;;		line 35 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_SPI_master_Demo\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayXms
;;		_Init_System
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_SPI_master_Demo\main.c"
	line	35
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_SPI_master_Demo\main.c"
	line	35
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	37
	
l1189:	
;main.c: 37: Init_System();
	fcall	_Init_System
	line	62
	
l1191:	
;main.c: 62: SPICON = 0B00100010;
	movlw	low(022h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(285)^0100h	;volatile
	line	76
	
l1193:	
;main.c: 76: SPICON2 = 0B00000000;
	clrf	(286)^0100h	;volatile
	line	78
	
l1195:	
;main.c: 78: SPIIF =0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7	;volatile
	line	79
	
l1197:	
;main.c: 79: PEIE =1;
	bsf	(94/8),(94)&7	;volatile
	line	83
	
l1199:	
;main.c: 82: {
;main.c: 83: DelayXms(200);
	movlw	low(0C8h)
	fcall	_DelayXms
	line	84
	
l1201:	
;main.c: 84: SPIBUF = 0x05;
	movlw	low(05h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(284)^0100h	;volatile
	line	85
;main.c: 85: while(SPIIF==0);
	
l769:	
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7	;volatile
	goto	u31
	goto	u30
u31:
	goto	l769
u30:
	
l771:	
	line	86
;main.c: 86: SPIIF = 0;
	bcf	(99/8),(99)&7	;volatile
	line	87
	
l1203:	
;main.c: 87: ReceBuffer = SPIBUF;
	bsf	status, 6	;RP1=1, select bank2
	movf	(284)^0100h,w	;volatile
	movwf	(_ReceBuffer)	;volatile
	goto	l1199
	global	start
	ljmp	start
	opt stack 0
	line	90
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 101 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_SPI_master_Demo\main.c"
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
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	101
global __ptext1
__ptext1:	;psect for function _Init_System
psect	text1
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_SPI_master_Demo\main.c"
	line	101
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 7
; Regs used in _Init_System: [wreg+status,2]
	line	103
	
l1173:	
# 103 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_SPI_master_Demo\main.c"
nop ;# 
	line	104
# 104 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_SPI_master_Demo\main.c"
clrwdt ;# 
psect	text1
	line	105
	
l1175:	
;main.c: 105: INTCON = 0;
	clrf	(11)	;volatile
	line	106
	
l1177:	
;main.c: 106: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	107
	
l1179:	
;main.c: 107: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	109
	
l1181:	
;main.c: 109: WPUA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	110
	
l1183:	
;main.c: 110: WPUB = 0B00000000;
	clrf	(8)	;volatile
	line	113
	
l1185:	
;main.c: 113: TRISA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	114
	
l1187:	
;main.c: 114: TRISB = 0B00100100;
	movlw	low(024h)
	movwf	(134)^080h	;volatile
	line	116
;main.c: 116: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	117
;main.c: 117: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	119
	
l777:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 24 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_SPI_master_Demo\main.c"
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
;;		On entry : 100/0
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	24
global __ptext2
__ptext2:	;psect for function _DelayXms
psect	text2
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_SPI_master_Demo\main.c"
	line	24
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 7
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	27
	
l1153:	
;main.c: 26: unsigned char i,j;
;main.c: 27: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l1155:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l1159
u10:
	goto	l763
	line	28
	
l1159:	
;main.c: 28: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l1165:	
	decf	(DelayXms@j),f
	
l1167:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l1165
u20:
	line	27
	
l1169:	
	decf	(DelayXms@i),f
	goto	l1155
	line	29
	
l763:	
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
