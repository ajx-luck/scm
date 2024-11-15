opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F123
opt include "C:\Users\ASUS\Desktop\CMS_IDE_V2.03.21\CMS_IDE_V2.03.21\data\include\79f123.cgen.inc"
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
	FNCALL	_main,_Memory_Read
	FNCALL	_main,_Memory_Write
	FNROOT	_main
	global	_t
	global	_templ
psect	nvCOMMON,class=COMMON,space=1,noexec
global __pnvCOMMON
__pnvCOMMON:
_templ:
       ds      2

	global	_GIE
_GIE	set	95
	global	_EEADR
_EEADR	set	269
	global	_EEDAT
_EEDAT	set	268
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	global	_WRERR
_WRERR	set	3171
	global	_EEPGD
_EEPGD	set	3175
; #config settings
	file	"EEPRom_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_t:
       ds      2

	file	"EEPRom_Demo.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
?_Memory_Write:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?_Memory_Read
?_Memory_Read:	; 2 bytes @ 0x0
	global	Memory_Write@Addr
Memory_Write@Addr:	; 2 bytes @ 0x0
	global	Memory_Read@Addr
Memory_Read@Addr:	; 2 bytes @ 0x0
	ds	2
??_Memory_Read:	; 1 bytes @ 0x2
	global	Memory_Write@Value
Memory_Write@Value:	; 1 bytes @ 0x2
	ds	1
??_Memory_Write:	; 1 bytes @ 0x3
	global	Memory_Write@i
Memory_Write@i:	; 1 bytes @ 0x3
	ds	1
??_main:	; 1 bytes @ 0x4
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         2
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      4       8
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
;!    _main->_Memory_Write
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
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
;! (0) _main                                                 0     0      0     218
;!                        _Memory_Read
;!                       _Memory_Write
;! ---------------------------------------------------------------------------------
;! (1) _Memory_Write                                         4     1      3     153
;!                                              0 COMMON     4     1      3
;! ---------------------------------------------------------------------------------
;! (1) _Memory_Read                                          2     0      2      65
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Memory_Read
;!   _Memory_Write
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      4       8       1       57.1%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       8       3        0.0%
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
;!DATA                 0      0       8      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 27 in file "E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Memory_Read
;;		_Memory_Write
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
	line	27
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	29
	
l1230:	
# 29 "E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
nop ;# 
	line	30
# 30 "E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
clrwdt ;# 
psect	maintext
	line	33
	
l1232:	
;EEPRom_Demo.c: 33: templ = 10;
	movlw	0Ah
	movwf	(_templ)	;volatile
	clrf	(_templ+1)	;volatile
	line	34
;EEPRom_Demo.c: 34: do{
	
l725:	
	line	35
# 35 "E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
clrwdt ;# 
	line	36
# 36 "E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
clrwdt ;# 
psect	maintext
	line	37
	
l1234:	
;EEPRom_Demo.c: 37: }while((0 == Memory_Write(0x0000,0x5a)) && (templ--));
	clrf	(Memory_Write@Addr)
	clrf	(Memory_Write@Addr+1)
	movlw	low(05Ah)
	movwf	(Memory_Write@Value)
	fcall	_Memory_Write
	xorlw	0
	skipz
	goto	u91
	goto	u90
u91:
	goto	l729
u90:
	
l1236:	
	movlw	01h
	subwf	(_templ),f	;volatile
	movlw	0
	skipc
	decf	(_templ+1),f	;volatile
	subwf	(_templ+1),f	;volatile
		incf	(((_templ))),w	;volatile
	skipz
	goto	u101
	incf	(((_templ+1))),w	;volatile
	btfss	status,2
	goto	u101
	goto	u100
u101:
	goto	l725
u100:
	line	40
;EEPRom_Demo.c: 40: while(1)
	
l729:	
	line	42
# 42 "E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
clrwdt ;# 
psect	maintext
	line	43
	
l1238:	
;EEPRom_Demo.c: 43: t = Memory_Read(0x0000);
	clrf	(Memory_Read@Addr)
	clrf	(Memory_Read@Addr+1)
	fcall	_Memory_Read
	movf	(1+(?_Memory_Read)),w
	movwf	(_t+1)	;volatile
	movf	(0+(?_Memory_Read)),w
	movwf	(_t)	;volatile
	goto	l729
	global	start
	ljmp	start
	opt stack 0
	line	45
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Memory_Write

;; *************** function _Memory_Write *****************
;; Defined at:
;;		line 58 in file "E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
;; Parameters:    Size  Location     Type
;;  Addr            2    0[COMMON] unsigned int 
;;  Value           1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1    3[COMMON] volatile unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	58
global __ptext1
__ptext1:	;psect for function _Memory_Write
psect	text1
	file	"E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
	line	58
	global	__size_of_Memory_Write
	__size_of_Memory_Write	equ	__end_of_Memory_Write-_Memory_Write
	
_Memory_Write:	
;incstack = 0
	opt	stack 7
; Regs used in _Memory_Write: [wreg+status,2]
	line	60
	
l1180:	
;EEPRom_Demo.c: 60: volatile unsigned char i = 0;
	clrf	(Memory_Write@i)	;volatile
	line	62
	
l1182:	
;EEPRom_Demo.c: 62: EEADR = Addr;
	movf	(Memory_Write@Addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	63
	
l1184:	
;EEPRom_Demo.c: 63: EEDAT= Value;
	movf	(Memory_Write@Value),w
	movwf	(268)^0100h	;volatile
	line	64
	
l1186:	
;EEPRom_Demo.c: 64: EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7	;volsfr
	line	66
# 66 "E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
clrwdt ;# 
psect	text1
	line	68
	
l1188:	
;EEPRom_Demo.c: 68: WREN = 1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3170/8)^0180h,(3170)&7	;volsfr
	line	70
	
l1190:	
;EEPRom_Demo.c: 70: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	71
	
l1192:	
;EEPRom_Demo.c: 71: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	72
	
l1194:	
;EEPRom_Demo.c: 72: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	73
;EEPRom_Demo.c: 73: while(GIE)
	goto	l735
	
l736:	
	line	75
;EEPRom_Demo.c: 74: {
;EEPRom_Demo.c: 75: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	76
;EEPRom_Demo.c: 76: if(0 == --i)
	decfsz	(Memory_Write@i),f	;volatile
	goto	u61
	goto	u60
u61:
	goto	l735
u60:
	line	79
	
l1196:	
;EEPRom_Demo.c: 77: {
;EEPRom_Demo.c: 79: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	80
	
l1198:	
;EEPRom_Demo.c: 80: return 0;
	movlw	low(0)
	goto	l738
	line	82
	
l735:	
	line	73
	btfsc	(95/8),(95)&7	;volatile
	goto	u71
	goto	u70
u71:
	goto	l736
u70:
	line	84
	
l1202:	
;EEPRom_Demo.c: 81: }
;EEPRom_Demo.c: 82: }
;EEPRom_Demo.c: 84: EECON2 = 0x55;
	movlw	low(055h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(397)^0180h	;volsfr
	line	85
;EEPRom_Demo.c: 85: EECON2 = 0xaa;
	movlw	low(0AAh)
	movwf	(397)^0180h	;volsfr
	line	86
	
l1204:	
;EEPRom_Demo.c: 86: WR = 1;
	bsf	(3169/8)^0180h,(3169)&7	;volsfr
	line	87
# 87 "E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
nop ;# 
	line	88
# 88 "E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
nop ;# 
	line	89
# 89 "E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
clrwdt ;# 
psect	text1
	line	90
	
l1206:	
;EEPRom_Demo.c: 90: WREN = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3170/8)^0180h,(3170)&7	;volsfr
	line	92
	
l1208:	
;EEPRom_Demo.c: 92: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	94
	
l1210:	
;EEPRom_Demo.c: 94: if(WRERR) return 0;
	btfss	(3171/8)^0180h,(3171)&7	;volsfr
	goto	u81
	goto	u80
u81:
	goto	l1218
u80:
	goto	l1198
	line	95
	
l1218:	
;EEPRom_Demo.c: 95: else return 1;
	movlw	low(01h)
	line	96
	
l738:	
	return
	opt stack 0
GLOBAL	__end_of_Memory_Write
	__end_of_Memory_Write:
	signat	_Memory_Write,8313
	global	_Memory_Read

;; *************** function _Memory_Read *****************
;; Defined at:
;;		line 107 in file "E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
;; Parameters:    Size  Location     Type
;;  Addr            2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	107
global __ptext2
__ptext2:	;psect for function _Memory_Read
psect	text2
	file	"E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
	line	107
	global	__size_of_Memory_Read
	__size_of_Memory_Read	equ	__end_of_Memory_Read-_Memory_Read
	
_Memory_Read:	
;incstack = 0
	opt	stack 7
; Regs used in _Memory_Read: [wreg]
	line	110
	
l1222:	
;EEPRom_Demo.c: 110: EEADR = Addr;
	movf	(Memory_Read@Addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	111
	
l1224:	
;EEPRom_Demo.c: 111: EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7	;volsfr
	line	118
	
l1226:	
;EEPRom_Demo.c: 118: RD=1;
	bsf	(3168/8)^0180h,(3168)&7	;volsfr
	line	119
# 119 "E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
nop ;# 
	line	120
# 120 "E:\CMS_MCU相关资料(共享)\3.RISC系列资源\Demo程序（仅供参考）\C语言\CMS79F123程序（C版）\CMS79F123程序（C版）\CMS79F123程序（C版）\EEPRom_Demo\EEPRom_Demo.c"
nop ;# 
psect	text2
	line	123
;EEPRom_Demo.c: 123: return (EEDAT);
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	movwf	(?_Memory_Read)
	clrf	(?_Memory_Read+1)
	line	127
	
l744:	
	return
	opt stack 0
GLOBAL	__end_of_Memory_Read
	__end_of_Memory_Read:
	signat	_Memory_Read,4218
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
