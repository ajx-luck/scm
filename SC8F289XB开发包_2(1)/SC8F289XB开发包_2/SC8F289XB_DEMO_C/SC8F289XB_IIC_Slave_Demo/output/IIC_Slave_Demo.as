opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F2892B
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\include\sc8f2892b.cgen.inc"
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
	FNCALL	intlevel1,_IIC_Isr
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
	global	_IICBUF
_IICBUF	set	270
	global	_IICCON
_IICCON	set	268
	global	_IICADD
_IICADD	set	265
	global	_RW
_RW	set	2170
	global	_DA
_DA	set	2173
	global	_IICCKP
_IICCKP	set	2148
	global	_IICIE
_IICIE	set	2116
	global	_IICIF
_IICIF	set	2108
; #config settings
	file	"IIC_Slave_Demo.as"
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

	file	"IIC_Slave_Demo.as"
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
?_main:	; 1 bytes @ 0x0
?_IIC_Isr:	; 1 bytes @ 0x0
??_IIC_Isr:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_main:	; 1 bytes @ 0x2
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
;!    COMMON           14      2       9
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
;!Critical Paths under _IIC_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _IIC_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _IIC_Isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _IIC_Isr in BANK2
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
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _IIC_Isr                                              2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_System
;!
;! _IIC_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      2       9       1       64.3%
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
;!ABS                  0      0       9       8        0.0%
;!DATA                 0      0       9       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 37 in file "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Slave_Demo\main.c"
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
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Init_System
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Slave_Demo\main.c"
	line	37
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Slave_Demo\main.c"
	line	37
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l1174:	
;main.c: 39: Init_System();
	fcall	_Init_System
	line	40
	
l1176:	
;main.c: 40: TRISA |= 0b00000011;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	73
	
l1178:	
;main.c: 73: IICCON = 0B00100001;
	movlw	low(021h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(268)^0100h	;volatile
	line	75
	
l1180:	
;main.c: 75: IICADD = 0xa0;
	movlw	low(0A0h)
	movwf	(265)^0100h	;volatile
	line	76
	
l1182:	
;main.c: 76: IICIE =1;
	bsf	(2116/8)^0100h,(2116)&7	;volatile
	line	77
	
l1184:	
;main.c: 77: PEIE =1;
	bsf	(94/8),(94)&7	;volatile
	line	78
	
l1186:	
;main.c: 78: GIE =1;
	bsf	(95/8),(95)&7	;volatile
	line	81
;main.c: 81: while(1)
	
l764:	
	line	84
;main.c: 82: {
	
l765:	
	line	81
	goto	l764
	global	start
	ljmp	start
	opt stack 0
	line	85
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 96 in file "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Slave_Demo\main.c"
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
	line	96
global __ptext1
__ptext1:	;psect for function _Init_System
psect	text1
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Slave_Demo\main.c"
	line	96
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	98
	
l1156:	
# 98 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Slave_Demo\main.c"
nop ;# 
	line	99
# 99 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Slave_Demo\main.c"
clrwdt ;# 
psect	text1
	line	100
	
l1158:	
;main.c: 100: INTCON = 0;
	clrf	(11)	;volatile
	line	101
	
l1160:	
;main.c: 101: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	102
	
l1162:	
;main.c: 102: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	104
	
l1164:	
;main.c: 104: WPUA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	105
	
l1166:	
;main.c: 105: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	108
;main.c: 108: TRISA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	109
	
l1168:	
;main.c: 109: TRISB = 0B00001000;
	movlw	low(08h)
	movwf	(134)^080h	;volatile
	line	111
	
l1170:	
;main.c: 111: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	112
	
l1172:	
;main.c: 112: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	114
	
l770:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_IIC_Isr

;; *************** function _IIC_Isr *****************
;; Defined at:
;;		line 123 in file "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Slave_Demo\main.c"
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
;;		On exit  : 300/200
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	123
global __ptext2
__ptext2:	;psect for function _IIC_Isr
psect	text2
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Slave_Demo\main.c"
	line	123
	global	__size_of_IIC_Isr
	__size_of_IIC_Isr	equ	__end_of_IIC_Isr-_IIC_Isr
	
_IIC_Isr:	
;incstack = 0
	opt	stack 6
; Regs used in _IIC_Isr: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_IIC_Isr+0)
	movf	pclath,w
	movwf	(??_IIC_Isr+1)
	ljmp	_IIC_Isr
psect	text2
	line	126
	
i1l1188:	
;main.c: 126: if(IICIF==1)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2108/8)^0100h,(2108)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l780
u1_20:
	line	128
	
i1l1190:	
;main.c: 127: {
;main.c: 128: IICIF =0;
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	line	131
;main.c: 131: if(RW==1)
	btfss	(2170/8)^0100h,(2170)&7	;volatile
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l776
u2_20:
	line	133
	
i1l1192:	
;main.c: 132: {
;main.c: 133: IICBUF = 0x55;
	movlw	low(055h)
	movwf	(270)^0100h	;volatile
	line	134
;main.c: 134: }
	goto	i1l1198
	line	135
	
i1l776:	
	line	137
;main.c: 135: else
;main.c: 136: {
;main.c: 137: if(DA==0)
	btfsc	(2173/8)^0100h,(2173)&7	;volatile
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l1196
u3_20:
	line	139
	
i1l1194:	
;main.c: 138: {
;main.c: 139: IICBUF;
	movf	(270)^0100h,w	;volatile
	line	141
;main.c: 141: }
	goto	i1l1198
	line	145
	
i1l1196:	
;main.c: 142: else
;main.c: 143: {
;main.c: 145: IICReadData = IICBUF;
	movf	(270)^0100h,w	;volatile
	movwf	(_IICReadData)	;volatile
	line	151
	
i1l1198:	
;main.c: 146: }
;main.c: 147: }
;main.c: 151: IICCKP =1;
	bsf	(2148/8)^0100h,(2148)&7	;volatile
	line	154
	
i1l780:	
	movf	(??_IIC_Isr+1),w
	movwf	pclath
	swapf	(??_IIC_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_IIC_Isr
	__end_of_IIC_Isr:
	signat	_IIC_Isr,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
