opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F5139
opt include "C:\Edward_work_FILE\work_file\开发文件\中微开发工具\CMS_IDE_V2.03.18_Beta3\data\include\79f5139.cgen.inc"
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
	global	Memory_Write@i
	global	Memory_Write@B_GIE_On
	global	_GIE
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_GIE	set	95
	global	_EEDATH
_EEDATH	set	270
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
	global	_EEPGD
_EEPGD	set	3175
; #config settings
	file	"EEPROM.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
Memory_Write@B_GIE_On:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_t:
       ds      2

Memory_Write@i:
       ds      1

	file	"EEPROM.as"
	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
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
Memory_Write@Value:	; 2 bytes @ 0x2
	ds	2
??_Memory_Write:	; 1 bytes @ 0x4
??_main:	; 1 bytes @ 0x4
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         3
;!    Persistent  0
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
;! (1) _Memory_Write                                         4     0      4     153
;!                                              0 COMMON     4     0      4
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
;!BITCOMMON            E      0       1       0        7.1%
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
;;		line 30 in file "C:\Users\edwar\Desktop\CMS79F5118_5139程序\EEPRom_Demo\EEPRom_Demo.c"
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
	file	"C:\Users\edwar\Desktop\CMS79F5118_5139程序\EEPRom_Demo\EEPRom_Demo.c"
	line	30
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\edwar\Desktop\CMS79F5118_5139程序\EEPRom_Demo\EEPRom_Demo.c"
	line	30
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l1192:	
# 32 "C:\Users\edwar\Desktop\CMS79F5118_5139程序\EEPRom_Demo\EEPRom_Demo.c"
nop ;# 
	line	33
# 33 "C:\Users\edwar\Desktop\CMS79F5118_5139程序\EEPRom_Demo\EEPRom_Demo.c"
clrwdt ;# 
psect	maintext
	line	36
	
l1194:	
;EEPRom_Demo.c: 36: Memory_Write(0x0000,0x5a);
	clrf	(Memory_Write@Addr)
	clrf	(Memory_Write@Addr+1)
	movlw	05Ah
	movwf	(Memory_Write@Value)
	clrf	(Memory_Write@Value+1)
	fcall	_Memory_Write
	line	37
;EEPRom_Demo.c: 37: while(1)
	
l723:	
	line	39
# 39 "C:\Users\edwar\Desktop\CMS79F5118_5139程序\EEPRom_Demo\EEPRom_Demo.c"
clrwdt ;# 
psect	maintext
	line	41
	
l1196:	
;EEPRom_Demo.c: 41: if(!WR)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7	;volsfr
	goto	u121
	goto	u120
u121:
	goto	l723
u120:
	line	42
	
l1198:	
;EEPRom_Demo.c: 42: t = Memory_Read(0x0000);
	clrf	(Memory_Read@Addr)
	clrf	(Memory_Read@Addr+1)
	fcall	_Memory_Read
	movf	(1+(?_Memory_Read)),w
	movwf	(_t+1)	;volatile
	movf	(0+(?_Memory_Read)),w
	movwf	(_t)	;volatile
	goto	l723
	global	start
	ljmp	start
	opt stack 0
	line	44
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Memory_Write

;; *************** function _Memory_Write *****************
;; Defined at:
;;		line 55 in file "C:\Users\edwar\Desktop\CMS79F5118_5139程序\EEPRom_Demo\EEPRom_Demo.c"
;; Parameters:    Size  Location     Type
;;  Addr            2    0[COMMON] unsigned int 
;;  Value           2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
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
	line	55
global __ptext1
__ptext1:	;psect for function _Memory_Write
psect	text1
	file	"C:\Users\edwar\Desktop\CMS79F5118_5139程序\EEPRom_Demo\EEPRom_Demo.c"
	line	55
	global	__size_of_Memory_Write
	__size_of_Memory_Write	equ	__end_of_Memory_Write-_Memory_Write
	
_Memory_Write:	
;incstack = 0
	opt	stack 7
; Regs used in _Memory_Write: [wreg]
	line	60
	
l1160:	
;EEPRom_Demo.c: 57: static volatile bit B_GIE_On;
;EEPRom_Demo.c: 58: static volatile unsigned char i = 0;
;EEPRom_Demo.c: 60: if(WR)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfss	(3169/8)^0180h,(3169)&7	;volsfr
	goto	u71
	goto	u70
u71:
	goto	l734
u70:
	goto	l735
	line	61
	
l734:	
	line	63
;EEPRom_Demo.c: 63: B_GIE_On = 0;
	bcf	(Memory_Write@B_GIE_On/8),(Memory_Write@B_GIE_On)&7	;volatile
	line	64
;EEPRom_Demo.c: 64: if(GIE)
	btfss	(95/8),(95)&7	;volatile
	goto	u81
	goto	u80
u81:
	goto	l1166
u80:
	line	65
	
l1164:	
;EEPRom_Demo.c: 65: B_GIE_On = 1;
	bsf	(Memory_Write@B_GIE_On/8),(Memory_Write@B_GIE_On)&7	;volatile
	line	68
	
l1166:	
;EEPRom_Demo.c: 68: EEADR = Addr;
	movf	(Memory_Write@Addr),w
	bcf	status, 5	;RP0=0, select bank2
	movwf	(269)^0100h	;volatile
	line	69
	
l1168:	
;EEPRom_Demo.c: 69: EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7	;volsfr
	line	76
;EEPRom_Demo.c: 76: EEDATH=(Value >> 8);
	movf	0+(Memory_Write@Value)+01h,w
	bcf	status, 5	;RP0=0, select bank2
	movwf	(270)^0100h	;volatile
	line	77
;EEPRom_Demo.c: 77: EEDAT=(Value & 0xff);
	movf	(Memory_Write@Value),w
	movwf	(268)^0100h	;volatile
	line	79
	
l1170:	
;EEPRom_Demo.c: 79: WREN = 1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	(3170/8)^0180h,(3170)&7	;volsfr
	line	80
	
l1172:	
;EEPRom_Demo.c: 80: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	82
;EEPRom_Demo.c: 82: while(GIE)
	goto	l737
	
l738:	
	line	84
;EEPRom_Demo.c: 83: {
;EEPRom_Demo.c: 84: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	85
;EEPRom_Demo.c: 85: if(0 == --i)
	decfsz	(Memory_Write@i),f	;volatile
	goto	u91
	goto	u90
u91:
	goto	l737
u90:
	goto	l735
	line	87
	
l737:	
	line	82
	btfsc	(95/8),(95)&7	;volatile
	goto	u101
	goto	u100
u101:
	goto	l738
u100:
	line	89
	
l1176:	
;EEPRom_Demo.c: 87: }
;EEPRom_Demo.c: 89: EECON2 = 0x55;
	movlw	low(055h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(397)^0180h	;volsfr
	line	90
;EEPRom_Demo.c: 90: EECON2 = 0xaa;
	movlw	low(0AAh)
	movwf	(397)^0180h	;volsfr
	line	91
	
l1178:	
;EEPRom_Demo.c: 91: WR = 1;
	bsf	(3169/8)^0180h,(3169)&7	;volsfr
	line	92
# 92 "C:\Users\edwar\Desktop\CMS79F5118_5139程序\EEPRom_Demo\EEPRom_Demo.c"
nop ;# 
	line	93
# 93 "C:\Users\edwar\Desktop\CMS79F5118_5139程序\EEPRom_Demo\EEPRom_Demo.c"
nop ;# 
psect	text1
	line	95
	
l1180:	
;EEPRom_Demo.c: 95: if(B_GIE_On)
	btfss	(Memory_Write@B_GIE_On/8),(Memory_Write@B_GIE_On)&7	;volatile
	goto	u111
	goto	u110
u111:
	goto	l741
u110:
	line	96
	
l1182:	
;EEPRom_Demo.c: 96: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	
l741:	
	line	98
;EEPRom_Demo.c: 98: WREN = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3170/8)^0180h,(3170)&7	;volsfr
	line	100
;EEPRom_Demo.c: 99: return 1;
;	Return value of _Memory_Write is never used
	
l735:	
	return
	opt stack 0
GLOBAL	__end_of_Memory_Write
	__end_of_Memory_Write:
	signat	_Memory_Write,8313
	global	_Memory_Read

;; *************** function _Memory_Read *****************
;; Defined at:
;;		line 110 in file "C:\Users\edwar\Desktop\CMS79F5118_5139程序\EEPRom_Demo\EEPRom_Demo.c"
;; Parameters:    Size  Location     Type
;;  Addr            2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/300
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
	line	110
global __ptext2
__ptext2:	;psect for function _Memory_Read
psect	text2
	file	"C:\Users\edwar\Desktop\CMS79F5118_5139程序\EEPRom_Demo\EEPRom_Demo.c"
	line	110
	global	__size_of_Memory_Read
	__size_of_Memory_Read	equ	__end_of_Memory_Read-_Memory_Read
	
_Memory_Read:	
;incstack = 0
	opt	stack 7
; Regs used in _Memory_Read: [wreg]
	line	113
	
l1184:	
;EEPRom_Demo.c: 113: EEADR = Addr;
	movf	(Memory_Read@Addr),w
	bcf	status, 5	;RP0=0, select bank2
	movwf	(269)^0100h	;volatile
	line	114
	
l1186:	
;EEPRom_Demo.c: 114: EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7	;volsfr
	line	121
	
l1188:	
;EEPRom_Demo.c: 121: RD=1;
	bsf	(3168/8)^0180h,(3168)&7	;volsfr
	line	122
# 122 "C:\Users\edwar\Desktop\CMS79F5118_5139程序\EEPRom_Demo\EEPRom_Demo.c"
nop ;# 
	line	123
# 123 "C:\Users\edwar\Desktop\CMS79F5118_5139程序\EEPRom_Demo\EEPRom_Demo.c"
nop ;# 
psect	text2
	line	125
;EEPRom_Demo.c: 125: return ((EEDATH << 8) | EEDAT);
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(270)^0100h,w	;volatile
	movwf	(?_Memory_Read+1)
	clrf	(?_Memory_Read)
	movf	(268)^0100h,w	;volatile
	iorwf	(?_Memory_Read),f
	line	126
	
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
