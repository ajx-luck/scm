opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F2892B
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.10_2T\data\include\sc8f2892b.cgen.inc"
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
	FNCALL	_main,_CheckTouchKey
	FNCALL	_main,_Init_System
	FNCALL	_main,_Refurbish_Sfr
	FNCALL	_CheckTouchKey,_CheckTouchKey_F
	FNCALL	_CheckTouchKey_F,_I2C_Write1bYTE
	FNCALL	_CheckTouchKey_F,_I2C_WriteStart
	FNCALL	_CheckTouchKey_F,_I2C_WriteStop
	FNCALL	_CheckTouchKey_F,_Key_Test
	FNCALL	_I2C_WriteStop,_I2C_WaitMoment
	FNCALL	_I2C_WriteStart,_I2C_WaitMoment
	FNCALL	_I2C_Write1bYTE,_I2C_WaitMoment
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_Table_KeyCap
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.h"
	line	90
_Table_KeyCap:
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	02h
	global __end_of_Table_KeyCap
__end_of_Table_KeyCap:
	global	_Table_KeyChannel
psect	strings
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.h"
	line	79
_Table_KeyChannel:
	retlw	060h
	retlw	061h
	retlw	062h
	retlw	063h
	retlw	064h
	retlw	06Bh
	retlw	06Ch
	global __end_of_Table_KeyChannel
__end_of_Table_KeyChannel:
	global	_Table_KeyCap
	global	_Table_KeyChannel
	global	_MainTime
	global	_B_MainLoop
	global	_TKdata
	global	_T2CON
_T2CON	set	18
	global	_PIE1
_PIE1	set	13
	global	_PIR1
_PIR1	set	12
	global	_INTCON
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_TMR2IE
_TMR2IE	set	105
	global	_TMR2IF
_TMR2IF	set	97
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_KEYCON2
_KEYCON2	set	151
	global	_KEYDATAH
_KEYDATAH	set	149
	global	_KEYDATAL
_KEYDATAL	set	148
	global	_KEYCON1
_KEYCON1	set	147
	global	_KEYCON0
_KEYCON0	set	146
	global	_PR2
_PR2	set	145
	global	_OSCCON
_OSCCON	set	136
	global	_TRISB
_TRISB	set	134
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_I2C_SDA_IO
_I2C_SDA_IO	set	1072
	global	_I2C_SCL_IO
_I2C_SCL_IO	set	1073
	global	_PIE2
_PIE2	set	264
	global	_PIR2
_PIR2	set	263
; #config settings
	file	"289XB_SEND.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_B_MainLoop:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_MainTime:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_TKdata:
       ds      32

	file	"289XB_SEND.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+020h)
	fcall	clear_ram0
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
?_CheckTouchKey:	; 1 bytes @ 0x0
?_I2C_WriteStart:	; 1 bytes @ 0x0
?_I2C_Write1bYTE:	; 1 bytes @ 0x0
?_I2C_WriteStop:	; 1 bytes @ 0x0
?_I2C_WaitMoment:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Refurbish_Sfr:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_CheckTouchKey_F:	; 1 bytes @ 0x0
?_Key_Test:	; 2 bytes @ 0x0
	ds	2
??_I2C_WriteStart:	; 1 bytes @ 0x2
??_I2C_Write1bYTE:	; 1 bytes @ 0x2
??_I2C_WriteStop:	; 1 bytes @ 0x2
??_I2C_WaitMoment:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_Refurbish_Sfr:	; 1 bytes @ 0x2
??_Key_Test:	; 1 bytes @ 0x2
	global	Key_Test@cnt
Key_Test@cnt:	; 1 bytes @ 0x2
	global	I2C_Write1bYTE@data
I2C_Write1bYTE@data:	; 1 bytes @ 0x2
	ds	1
	global	I2C_Write1bYTE@i
I2C_Write1bYTE@i:	; 1 bytes @ 0x3
	ds	1
??_CheckTouchKey_F:	; 1 bytes @ 0x4
	global	CheckTouchKey_F@checksum
CheckTouchKey_F@checksum:	; 1 bytes @ 0x4
	ds	1
??_CheckTouchKey:	; 1 bytes @ 0x5
??_main:	; 1 bytes @ 0x5
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    14
;!    Data        0
;!    BSS         33
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5       7
;!    BANK0            80      0      32
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _CheckTouchKey->_CheckTouchKey_F
;!    _CheckTouchKey_F->_I2C_Write1bYTE
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _Isr_Timer in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _Isr_Timer in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _Isr_Timer in BANK2
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
;! (0) _main                                                 0     0      0     351
;!                      _CheckTouchKey
;!                        _Init_System
;!                      _Refurbish_Sfr
;! ---------------------------------------------------------------------------------
;! (1) _Refurbish_Sfr                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _CheckTouchKey                                        0     0      0     351
;!                    _CheckTouchKey_F
;! ---------------------------------------------------------------------------------
;! (2) _CheckTouchKey_F                                      1     1      0     351
;!                                              4 COMMON     1     1      0
;!                     _I2C_Write1bYTE
;!                     _I2C_WriteStart
;!                      _I2C_WriteStop
;!                           _Key_Test
;! ---------------------------------------------------------------------------------
;! (4) _Key_Test                                             1     1      0     227
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _I2C_WriteStop                                        0     0      0       0
;!                     _I2C_WaitMoment
;! ---------------------------------------------------------------------------------
;! (3) _I2C_WriteStart                                       0     0      0       0
;!                     _I2C_WaitMoment
;! ---------------------------------------------------------------------------------
;! (3) _I2C_Write1bYTE                                       2     2      0      35
;!                                              2 COMMON     2     2      0
;!                     _I2C_WaitMoment
;! ---------------------------------------------------------------------------------
;! (4) _I2C_WaitMoment                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _Isr_Timer                                            2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _CheckTouchKey
;!     _CheckTouchKey_F
;!       _I2C_Write1bYTE
;!         _I2C_WaitMoment
;!       _I2C_WriteStart
;!         _I2C_WaitMoment
;!       _I2C_WriteStop
;!         _I2C_WaitMoment
;!       _Key_Test
;!   _Init_System
;!   _Refurbish_Sfr
;!
;! _Isr_Timer (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       7       1       50.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      0      20       4       40.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0      27       8        0.0%
;!DATA                 0      0      27       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 74 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_CheckTouchKey
;;		_Init_System
;;		_Refurbish_Sfr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\main.c"
	line	74
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\main.c"
	line	74
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	76
	
l2402:	
;main.c: 76: Init_System();
	fcall	_Init_System
	line	77
;main.c: 77: while(1)
	
l758:	
	line	80
# 80 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\main.c"
clrwdt ;# 
psect	maintext
	line	81
;main.c: 81: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	82
	
l2404:	
;main.c: 82: CheckTouchKey();
	fcall	_CheckTouchKey
	goto	l758
	global	start
	ljmp	start
	opt stack 0
	line	85
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 37 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
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
	line	37
global __ptext1
__ptext1:	;psect for function _Refurbish_Sfr
psect	text1
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\main.c"
	line	37
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 6
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	40
	
l2194:	
;main.c: 40: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(13)	;volatile
	line	41
;main.c: 41: PR2 = 250;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	42
;main.c: 42: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	43
	
l2196:	
;main.c: 43: if(4 != T2CON)
		movlw	4
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((18)),w	;volatile
	btfsc	status,2
	goto	u91
	goto	u90
u91:
	goto	l745
u90:
	line	44
	
l2198:	
;main.c: 44: T2CON = 4;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	45
	
l745:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 8 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\main.c"
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	8
global __ptext2
__ptext2:	;psect for function _Init_System
psect	text2
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\main.c"
	line	8
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	10
	
l2164:	
# 10 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\main.c"
nop ;# 
	line	11
# 11 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\main.c"
clrwdt ;# 
psect	text2
	line	12
	
l2166:	
;main.c: 12: INTCON = 0;
	clrf	(11)	;volatile
	line	13
	
l2168:	
;main.c: 13: OSCCON = 0x72;
	movlw	low(072h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	14
	
l2170:	
;main.c: 14: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	16
	
l2172:	
;main.c: 16: INTCON = 0;
	clrf	(11)	;volatile
	line	17
	
l2174:	
;main.c: 17: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	18
	
l2176:	
;main.c: 18: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	20
	
l2178:	
;main.c: 20: PIR1 = 0;
	clrf	(12)	;volatile
	line	21
	
l2180:	
;main.c: 21: PIE1 = 0;
	clrf	(13)	;volatile
	line	22
	
l2182:	
;main.c: 22: PIR2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(263)^0100h	;volatile
	line	23
	
l2184:	
;main.c: 23: PIE2 = 0;
	clrf	(264)^0100h	;volatile
	line	26
	
l2186:	
;main.c: 26: PR2 = 250;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(145)^080h	;volatile
	line	27
	
l2188:	
;main.c: 27: T2CON = 4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	28
	
l2190:	
;main.c: 28: TMR2IE = 1;
	bsf	(105/8),(105)&7	;volatile
	line	30
	
l2192:	
;main.c: 30: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	31
	
l741:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_CheckTouchKey

;; *************** function _CheckTouchKey *****************
;; Defined at:
;;		line 290 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_CheckTouchKey_F
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
	line	290
global __ptext3
__ptext3:	;psect for function _CheckTouchKey
psect	text3
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
	line	290
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	292
	
l2400:	
;CheckTouchKey.c: 292: CheckTouchKey_F();
	fcall	_CheckTouchKey_F
	line	293
	
l1528:	
	return
	opt stack 0
GLOBAL	__end_of_CheckTouchKey
	__end_of_CheckTouchKey:
	signat	_CheckTouchKey,89
	global	_CheckTouchKey_F

;; *************** function _CheckTouchKey_F *****************
;; Defined at:
;;		line 167 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  checksum        1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_I2C_Write1bYTE
;;		_I2C_WriteStart
;;		_I2C_WriteStop
;;		_Key_Test
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	167
global __ptext4
__ptext4:	;psect for function _CheckTouchKey_F
psect	text4
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
	line	167
	global	__size_of_CheckTouchKey_F
	__size_of_CheckTouchKey_F	equ	__end_of_CheckTouchKey_F-_CheckTouchKey_F
	
_CheckTouchKey_F:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckTouchKey_F: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	170
	
l2310:	
;CheckTouchKey.c: 170: unsigned char checksum = 0;
	clrf	(CheckTouchKey_F@checksum)
	line	173
# 173 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
clrwdt ;# 
psect	text4
	line	184
	
l2312:	
;CheckTouchKey.c: 184: checksum += 1;
	incf	(CheckTouchKey_F@checksum),f
	line	188
	
l2314:	
;CheckTouchKey.c: 188: checksum += 1;
	incf	(CheckTouchKey_F@checksum),f
	line	192
	
l2316:	
;CheckTouchKey.c: 192: checksum += 1;
	incf	(CheckTouchKey_F@checksum),f
	line	196
	
l2318:	
;CheckTouchKey.c: 196: checksum += 1;
	incf	(CheckTouchKey_F@checksum),f
	line	200
	
l2320:	
;CheckTouchKey.c: 200: checksum += 1;
	incf	(CheckTouchKey_F@checksum),f
	line	204
	
l2322:	
;CheckTouchKey.c: 204: if (checksum)
	movf	((CheckTouchKey_F@checksum)),w
	btfsc	status,2
	goto	u171
	goto	u170
u171:
	goto	l1525
u170:
	line	207
	
l2324:	
;CheckTouchKey.c: 205: {
;CheckTouchKey.c: 207: Key_Test();
	fcall	_Key_Test
	line	210
	
l2326:	
;CheckTouchKey.c: 210: checksum *= 3;
	clrc
	rlf	(CheckTouchKey_F@checksum),w
	addwf	(CheckTouchKey_F@checksum),f
	line	211
	
l2328:	
;CheckTouchKey.c: 211: checksum += 2;
	incf	(CheckTouchKey_F@checksum),f
	incf	(CheckTouchKey_F@checksum),f
	line	213
	
l2330:	
;CheckTouchKey.c: 213: I2C_WriteStart();
	fcall	_I2C_WriteStart
	line	214
	
l2332:	
;CheckTouchKey.c: 214: I2C_Write1bYTE(0xa0);
	movlw	low(0A0h)
	fcall	_I2C_Write1bYTE
	line	215
	
l2334:	
;CheckTouchKey.c: 215: I2C_Write1bYTE(checksum);
	movf	(CheckTouchKey_F@checksum),w
	fcall	_I2C_Write1bYTE
	line	236
	
l2336:	
;CheckTouchKey.c: 236: I2C_Write1bYTE(3);
	movlw	low(03h)
	fcall	_I2C_Write1bYTE
	line	237
	
l2338:	
;CheckTouchKey.c: 237: I2C_Write1bYTE(TKdata[2] & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_TKdata)+04h,w
	fcall	_I2C_Write1bYTE
	line	238
	
l2340:	
;CheckTouchKey.c: 238: I2C_Write1bYTE((TKdata[2]>>8) & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(_TKdata)+04h,w
	fcall	_I2C_Write1bYTE
	line	239
	
l2342:	
;CheckTouchKey.c: 239: checksum += 3;
	movlw	low(03h)
	addwf	(CheckTouchKey_F@checksum),f
	line	240
	
l2344:	
;CheckTouchKey.c: 240: checksum += (TKdata[2] & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_TKdata)+04h,w
	addwf	(CheckTouchKey_F@checksum),f
	line	241
	
l2346:	
;CheckTouchKey.c: 241: checksum += ((TKdata[2]>>8) & 0xff);
	movf	1+(_TKdata)+04h,w
	addwf	(CheckTouchKey_F@checksum),f
	line	245
	
l2348:	
;CheckTouchKey.c: 245: I2C_Write1bYTE(4);
	movlw	low(04h)
	fcall	_I2C_Write1bYTE
	line	246
	
l2350:	
;CheckTouchKey.c: 246: I2C_Write1bYTE(TKdata[3] & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_TKdata)+06h,w
	fcall	_I2C_Write1bYTE
	line	247
	
l2352:	
;CheckTouchKey.c: 247: I2C_Write1bYTE((TKdata[3]>>8) & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(_TKdata)+06h,w
	fcall	_I2C_Write1bYTE
	line	248
	
l2354:	
;CheckTouchKey.c: 248: checksum += 4;
	movlw	low(04h)
	addwf	(CheckTouchKey_F@checksum),f
	line	249
	
l2356:	
;CheckTouchKey.c: 249: checksum += (TKdata[3] & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_TKdata)+06h,w
	addwf	(CheckTouchKey_F@checksum),f
	line	250
	
l2358:	
;CheckTouchKey.c: 250: checksum += ((TKdata[3]>>8) & 0xff);
	movf	1+(_TKdata)+06h,w
	addwf	(CheckTouchKey_F@checksum),f
	line	254
	
l2360:	
;CheckTouchKey.c: 254: I2C_Write1bYTE(5);
	movlw	low(05h)
	fcall	_I2C_Write1bYTE
	line	255
	
l2362:	
;CheckTouchKey.c: 255: I2C_Write1bYTE(TKdata[4] & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_TKdata)+08h,w
	fcall	_I2C_Write1bYTE
	line	256
	
l2364:	
;CheckTouchKey.c: 256: I2C_Write1bYTE((TKdata[4]>>8) & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(_TKdata)+08h,w
	fcall	_I2C_Write1bYTE
	line	257
	
l2366:	
;CheckTouchKey.c: 257: checksum += 5;
	movlw	low(05h)
	addwf	(CheckTouchKey_F@checksum),f
	line	258
	
l2368:	
;CheckTouchKey.c: 258: checksum += (TKdata[4] & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_TKdata)+08h,w
	addwf	(CheckTouchKey_F@checksum),f
	line	259
	
l2370:	
;CheckTouchKey.c: 259: checksum += ((TKdata[4]>>8) & 0xff);
	movf	1+(_TKdata)+08h,w
	addwf	(CheckTouchKey_F@checksum),f
	line	263
	
l2372:	
;CheckTouchKey.c: 263: I2C_Write1bYTE(6);
	movlw	low(06h)
	fcall	_I2C_Write1bYTE
	line	264
	
l2374:	
;CheckTouchKey.c: 264: I2C_Write1bYTE(TKdata[5] & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_TKdata)+0Ah,w
	fcall	_I2C_Write1bYTE
	line	265
	
l2376:	
;CheckTouchKey.c: 265: I2C_Write1bYTE((TKdata[5]>>8) & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(_TKdata)+0Ah,w
	fcall	_I2C_Write1bYTE
	line	266
	
l2378:	
;CheckTouchKey.c: 266: checksum += 6;
	movlw	low(06h)
	addwf	(CheckTouchKey_F@checksum),f
	line	267
	
l2380:	
;CheckTouchKey.c: 267: checksum += (TKdata[5] & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_TKdata)+0Ah,w
	addwf	(CheckTouchKey_F@checksum),f
	line	268
	
l2382:	
;CheckTouchKey.c: 268: checksum += ((TKdata[5]>>8) & 0xff);
	movf	1+(_TKdata)+0Ah,w
	addwf	(CheckTouchKey_F@checksum),f
	line	272
	
l2384:	
;CheckTouchKey.c: 272: I2C_Write1bYTE(7);
	movlw	low(07h)
	fcall	_I2C_Write1bYTE
	line	273
	
l2386:	
;CheckTouchKey.c: 273: I2C_Write1bYTE(TKdata[6] & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_TKdata)+0Ch,w
	fcall	_I2C_Write1bYTE
	line	274
	
l2388:	
;CheckTouchKey.c: 274: I2C_Write1bYTE((TKdata[6]>>8) & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(_TKdata)+0Ch,w
	fcall	_I2C_Write1bYTE
	line	275
	
l2390:	
;CheckTouchKey.c: 275: checksum += 7;
	movlw	low(07h)
	addwf	(CheckTouchKey_F@checksum),f
	line	276
	
l2392:	
;CheckTouchKey.c: 276: checksum += (TKdata[6] & 0xff);
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_TKdata)+0Ch,w
	addwf	(CheckTouchKey_F@checksum),f
	line	277
	
l2394:	
;CheckTouchKey.c: 277: checksum += ((TKdata[6]>>8) & 0xff);
	movf	1+(_TKdata)+0Ch,w
	addwf	(CheckTouchKey_F@checksum),f
	line	281
	
l2396:	
;CheckTouchKey.c: 281: I2C_Write1bYTE(checksum);
	movf	(CheckTouchKey_F@checksum),w
	fcall	_I2C_Write1bYTE
	line	282
	
l2398:	
;CheckTouchKey.c: 282: I2C_WriteStop();
	fcall	_I2C_WriteStop
	line	285
	
l1525:	
	return
	opt stack 0
GLOBAL	__end_of_CheckTouchKey_F
	__end_of_CheckTouchKey_F:
	signat	_CheckTouchKey_F,89
	global	_Key_Test

;; *************** function _Key_Test *****************
;; Defined at:
;;		line 34 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2  1505[None  ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    2
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CheckTouchKey_F
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	34
global __ptext5
__ptext5:	;psect for function _Key_Test
psect	text5
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
	line	34
	global	__size_of_Key_Test
	__size_of_Key_Test	equ	__end_of_Key_Test-_Key_Test
	
_Key_Test:	
;incstack = 0
	opt	stack 3
; Regs used in _Key_Test: [wreg-fsr0h+status,2+status,0+pclath]
	line	36
	
l2218:	
;CheckTouchKey.c: 36: unsigned char cnt=0;
	clrf	(Key_Test@cnt)
	line	53
	
l2220:	
;CheckTouchKey.c: 53: cnt++;
	incf	(Key_Test@cnt),f
	line	70
	
l2222:	
;CheckTouchKey.c: 70: cnt++;
	incf	(Key_Test@cnt),f
	line	72
;CheckTouchKey.c: 72: KEYCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(146)^080h	;volatile
	line	73
;CheckTouchKey.c: 73: KEYCON1 = 0;
	clrf	(147)^080h	;volatile
	line	74
	
l2224:	
;CheckTouchKey.c: 74: KEYCON2 = 1;
	movlw	low(01h)
	movwf	(151)^080h	;volatile
	line	75
	
l2226:	
;CheckTouchKey.c: 75: KEYCON0 = Table_KeyCap[cnt];
	movf	(Key_Test@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(146)^080h	;volatile
	line	76
	
l2228:	
;CheckTouchKey.c: 76: KEYCON1 = Table_KeyChannel[cnt];
	movf	(Key_Test@cnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(147)^080h	;volatile
	line	77
# 77 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	78
# 78 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	79
# 79 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	80
# 80 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
psect	text5
	line	81
	
l2230:	
;CheckTouchKey.c: 81: KEYCON0 |= 0x1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(146)^080h+(0/8),(0)&7	;volatile
	line	82
;CheckTouchKey.c: 82: while(!(KEYCON0&0x80));
	
l1506:	
	btfss	(146)^080h,(7)&7	;volatile
	goto	u121
	goto	u120
u121:
	goto	l1506
u120:
	line	83
	
l2232:	
;CheckTouchKey.c: 83: TKdata[2] = ((KEYDATAH<<8) + KEYDATAL);
	movf	(149)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(_TKdata)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(148)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(_TKdata)+04h
	line	84
	
l2234:	
;CheckTouchKey.c: 84: KEYCON0 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(146)^080h	;volatile
	line	87
	
l2236:	
;CheckTouchKey.c: 87: cnt++;
	incf	(Key_Test@cnt),f
	line	89
	
l2238:	
;CheckTouchKey.c: 89: KEYCON0 = 0;
	clrf	(146)^080h	;volatile
	line	90
	
l2240:	
;CheckTouchKey.c: 90: KEYCON1 = 0;
	clrf	(147)^080h	;volatile
	line	91
	
l2242:	
;CheckTouchKey.c: 91: KEYCON2 = 1;
	movlw	low(01h)
	movwf	(151)^080h	;volatile
	line	92
	
l2244:	
;CheckTouchKey.c: 92: KEYCON0 = Table_KeyCap[cnt];
	movf	(Key_Test@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(146)^080h	;volatile
	line	93
	
l2246:	
;CheckTouchKey.c: 93: KEYCON1 = Table_KeyChannel[cnt];
	movf	(Key_Test@cnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(147)^080h	;volatile
	line	94
# 94 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	95
# 95 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	96
# 96 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	97
# 97 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
psect	text5
	line	98
	
l2248:	
;CheckTouchKey.c: 98: KEYCON0 |= 0x1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(146)^080h+(0/8),(0)&7	;volatile
	line	99
;CheckTouchKey.c: 99: while(!(KEYCON0&0x80));
	
l1509:	
	btfss	(146)^080h,(7)&7	;volatile
	goto	u131
	goto	u130
u131:
	goto	l1509
u130:
	line	100
	
l2250:	
;CheckTouchKey.c: 100: TKdata[3] = ((KEYDATAH<<8) + KEYDATAL);
	movf	(149)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(_TKdata)+06h
	bsf	status, 5	;RP0=1, select bank1
	movf	(148)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(_TKdata)+06h
	line	101
	
l2252:	
;CheckTouchKey.c: 101: KEYCON0 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(146)^080h	;volatile
	line	104
	
l2254:	
;CheckTouchKey.c: 104: cnt++;
	incf	(Key_Test@cnt),f
	line	106
	
l2256:	
;CheckTouchKey.c: 106: KEYCON0 = 0;
	clrf	(146)^080h	;volatile
	line	107
	
l2258:	
;CheckTouchKey.c: 107: KEYCON1 = 0;
	clrf	(147)^080h	;volatile
	line	108
	
l2260:	
;CheckTouchKey.c: 108: KEYCON2 = 1;
	movlw	low(01h)
	movwf	(151)^080h	;volatile
	line	109
	
l2262:	
;CheckTouchKey.c: 109: KEYCON0 = Table_KeyCap[cnt];
	movf	(Key_Test@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(146)^080h	;volatile
	line	110
	
l2264:	
;CheckTouchKey.c: 110: KEYCON1 = Table_KeyChannel[cnt];
	movf	(Key_Test@cnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(147)^080h	;volatile
	line	111
# 111 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	112
# 112 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	113
# 113 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	114
# 114 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
psect	text5
	line	115
	
l2266:	
;CheckTouchKey.c: 115: KEYCON0 |= 0x1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(146)^080h+(0/8),(0)&7	;volatile
	line	116
;CheckTouchKey.c: 116: while(!(KEYCON0&0x80));
	
l1512:	
	btfss	(146)^080h,(7)&7	;volatile
	goto	u141
	goto	u140
u141:
	goto	l1512
u140:
	line	117
	
l2268:	
;CheckTouchKey.c: 117: TKdata[4] = ((KEYDATAH<<8) + KEYDATAL);
	movf	(149)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(_TKdata)+08h
	bsf	status, 5	;RP0=1, select bank1
	movf	(148)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(_TKdata)+08h
	line	118
	
l2270:	
;CheckTouchKey.c: 118: KEYCON0 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(146)^080h	;volatile
	line	121
	
l2272:	
;CheckTouchKey.c: 121: cnt++;
	incf	(Key_Test@cnt),f
	line	123
	
l2274:	
;CheckTouchKey.c: 123: KEYCON0 = 0;
	clrf	(146)^080h	;volatile
	line	124
	
l2276:	
;CheckTouchKey.c: 124: KEYCON1 = 0;
	clrf	(147)^080h	;volatile
	line	125
	
l2278:	
;CheckTouchKey.c: 125: KEYCON2 = 1;
	movlw	low(01h)
	movwf	(151)^080h	;volatile
	line	126
	
l2280:	
;CheckTouchKey.c: 126: KEYCON0 = Table_KeyCap[cnt];
	movf	(Key_Test@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(146)^080h	;volatile
	line	127
	
l2282:	
;CheckTouchKey.c: 127: KEYCON1 = Table_KeyChannel[cnt];
	movf	(Key_Test@cnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(147)^080h	;volatile
	line	128
# 128 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	129
# 129 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	130
# 130 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	131
# 131 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
psect	text5
	line	132
	
l2284:	
;CheckTouchKey.c: 132: KEYCON0 |= 0x1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(146)^080h+(0/8),(0)&7	;volatile
	line	133
;CheckTouchKey.c: 133: while(!(KEYCON0&0x80));
	
l1515:	
	btfss	(146)^080h,(7)&7	;volatile
	goto	u151
	goto	u150
u151:
	goto	l1515
u150:
	line	134
	
l2286:	
;CheckTouchKey.c: 134: TKdata[5] = ((KEYDATAH<<8) + KEYDATAL);
	movf	(149)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(_TKdata)+0Ah
	bsf	status, 5	;RP0=1, select bank1
	movf	(148)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(_TKdata)+0Ah
	line	135
	
l2288:	
;CheckTouchKey.c: 135: KEYCON0 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(146)^080h	;volatile
	line	138
	
l2290:	
;CheckTouchKey.c: 138: cnt++;
	incf	(Key_Test@cnt),f
	line	140
	
l2292:	
;CheckTouchKey.c: 140: KEYCON0 = 0;
	clrf	(146)^080h	;volatile
	line	141
	
l2294:	
;CheckTouchKey.c: 141: KEYCON1 = 0;
	clrf	(147)^080h	;volatile
	line	142
	
l2296:	
;CheckTouchKey.c: 142: KEYCON2 = 1;
	movlw	low(01h)
	movwf	(151)^080h	;volatile
	line	143
	
l2298:	
;CheckTouchKey.c: 143: KEYCON0 = Table_KeyCap[cnt];
	movf	(Key_Test@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(146)^080h	;volatile
	line	144
	
l2300:	
;CheckTouchKey.c: 144: KEYCON1 = Table_KeyChannel[cnt];
	movf	(Key_Test@cnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(147)^080h	;volatile
	line	145
# 145 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	146
# 146 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	147
# 147 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	148
# 148 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
psect	text5
	line	149
	
l2302:	
;CheckTouchKey.c: 149: KEYCON0 |= 0x1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(146)^080h+(0/8),(0)&7	;volatile
	line	150
;CheckTouchKey.c: 150: while(!(KEYCON0&0x80));
	
l1518:	
	btfss	(146)^080h,(7)&7	;volatile
	goto	u161
	goto	u160
u161:
	goto	l1518
u160:
	line	151
	
l2304:	
;CheckTouchKey.c: 151: TKdata[6] = ((KEYDATAH<<8) + KEYDATAL);
	movf	(149)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(_TKdata)+0Ch
	bsf	status, 5	;RP0=1, select bank1
	movf	(148)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(_TKdata)+0Ch
	line	152
	
l2306:	
;CheckTouchKey.c: 152: KEYCON0 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(146)^080h	;volatile
	line	158
	
l1521:	
	return
	opt stack 0
GLOBAL	__end_of_Key_Test
	__end_of_Key_Test:
	signat	_Key_Test,90
	global	_I2C_WriteStop

;; *************** function _I2C_WriteStop *****************
;; Defined at:
;;		line 325 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_WaitMoment
;; This function is called by:
;;		_CheckTouchKey_F
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	325
global __ptext6
__ptext6:	;psect for function _I2C_WriteStop
psect	text6
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
	line	325
	global	__size_of_I2C_WriteStop
	__size_of_I2C_WriteStop	equ	__end_of_I2C_WriteStop-_I2C_WriteStop
	
_I2C_WriteStop:	
;incstack = 0
	opt	stack 3
; Regs used in _I2C_WriteStop: [status,2+status,0+pclath+cstack]
	line	327
	
l2062:	
;CheckTouchKey.c: 327: I2C_SDA_IO = 0;
	bcf	(1072/8)^080h,(1072)&7	;volatile
	line	328
;CheckTouchKey.c: 328: I2C_SCL_IO = 0;
	bcf	(1073/8)^080h,(1073)&7	;volatile
	line	329
	
l2064:	
;CheckTouchKey.c: 329: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	331
	
l2066:	
;CheckTouchKey.c: 331: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	332
	
l2068:	
;CheckTouchKey.c: 332: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	333
;CheckTouchKey.c: 333: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	334
	
l2070:	
;CheckTouchKey.c: 334: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	336
;CheckTouchKey.c: 336: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	337
	
l2072:	
;CheckTouchKey.c: 337: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	338
;CheckTouchKey.c: 338: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	339
	
l1534:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_WriteStop
	__end_of_I2C_WriteStop:
	signat	_I2C_WriteStop,89
	global	_I2C_WriteStart

;; *************** function _I2C_WriteStart *****************
;; Defined at:
;;		line 308 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_WaitMoment
;; This function is called by:
;;		_CheckTouchKey_F
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	308
global __ptext7
__ptext7:	;psect for function _I2C_WriteStart
psect	text7
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
	line	308
	global	__size_of_I2C_WriteStart
	__size_of_I2C_WriteStart	equ	__end_of_I2C_WriteStart-_I2C_WriteStart
	
_I2C_WriteStart:	
;incstack = 0
	opt	stack 3
; Regs used in _I2C_WriteStart: [status,2+status,0+pclath+cstack]
	line	310
	
l2026:	
;CheckTouchKey.c: 310: I2C_SDA_IO = 0;
	bcf	(1072/8)^080h,(1072)&7	;volatile
	line	311
;CheckTouchKey.c: 311: I2C_SCL_IO = 0;
	bcf	(1073/8)^080h,(1073)&7	;volatile
	line	312
	
l2028:	
;CheckTouchKey.c: 312: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	314
	
l2030:	
;CheckTouchKey.c: 314: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	315
	
l2032:	
;CheckTouchKey.c: 315: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	316
;CheckTouchKey.c: 316: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	317
	
l2034:	
;CheckTouchKey.c: 317: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	319
;CheckTouchKey.c: 319: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	320
	
l2036:	
;CheckTouchKey.c: 320: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	321
;CheckTouchKey.c: 321: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	322
	
l1531:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_WriteStart
	__end_of_I2C_WriteStart:
	signat	_I2C_WriteStart,89
	global	_I2C_Write1bYTE

;; *************** function _I2C_Write1bYTE *****************
;; Defined at:
;;		line 347 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_WaitMoment
;; This function is called by:
;;		_CheckTouchKey_F
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	347
global __ptext8
__ptext8:	;psect for function _I2C_Write1bYTE
psect	text8
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
	line	347
	global	__size_of_I2C_Write1bYTE
	__size_of_I2C_Write1bYTE	equ	__end_of_I2C_Write1bYTE-_I2C_Write1bYTE
	
_I2C_Write1bYTE:	
;incstack = 0
	opt	stack 3
; Regs used in _I2C_Write1bYTE: [wreg+status,2+status,0+pclath+cstack]
;I2C_Write1bYTE@data stored from wreg
	movwf	(I2C_Write1bYTE@data)
	line	349
	
l2038:	
;CheckTouchKey.c: 349: unsigned char i = 8;
	movlw	low(08h)
	movwf	(I2C_Write1bYTE@i)
	line	350
	
l2040:	
;CheckTouchKey.c: 350: I2C_SDA_IO = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1072/8)^080h,(1072)&7	;volatile
	line	351
	
l2042:	
;CheckTouchKey.c: 351: I2C_SCL_IO = 0;
	bcf	(1073/8)^080h,(1073)&7	;volatile
	line	354
	
l2044:	
;CheckTouchKey.c: 353: {
;CheckTouchKey.c: 354: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	355
	
l2046:	
;CheckTouchKey.c: 355: if(data&0x80)
	btfss	(I2C_Write1bYTE@data),(7)&7
	goto	u61
	goto	u60
u61:
	goto	l1538
u60:
	line	356
	
l2048:	
;CheckTouchKey.c: 356: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	goto	l1539
	line	357
	
l1538:	
	line	358
;CheckTouchKey.c: 357: else
;CheckTouchKey.c: 358: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	
l1539:	
	line	360
;CheckTouchKey.c: 360: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	361
;CheckTouchKey.c: 361: data <<= 1;
	clrc
	rlf	(I2C_Write1bYTE@data),f
	line	363
;CheckTouchKey.c: 362: }
;CheckTouchKey.c: 363: while(--i);
	decfsz	(I2C_Write1bYTE@i),f
	goto	u71
	goto	u70
u71:
	goto	l2044
u70:
	
l1540:	
	line	364
;CheckTouchKey.c: 364: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	366
;CheckTouchKey.c: 366: I2C_SDA_IO = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1072/8)^080h,(1072)&7	;volatile
	line	368
	
l2050:	
;CheckTouchKey.c: 368: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	369
	
l2052:	
;CheckTouchKey.c: 369: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	370
;CheckTouchKey.c: 370: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	372
	
l2054:	
	line	373
	
l2056:	
;CheckTouchKey.c: 373: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	374
	
l2058:	
;CheckTouchKey.c: 374: I2C_SDA_IO = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1072/8)^080h,(1072)&7	;volatile
	line	376
	
l1541:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Write1bYTE
	__end_of_I2C_Write1bYTE:
	signat	_I2C_Write1bYTE,4217
	global	_I2C_WaitMoment

;; *************** function _I2C_WaitMoment *****************
;; Defined at:
;;		line 420 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 0/0
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
;;		_I2C_WriteStart
;;		_I2C_WriteStop
;;		_I2C_Write1bYTE
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	420
global __ptext9
__ptext9:	;psect for function _I2C_WaitMoment
psect	text9
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
	line	420
	global	__size_of_I2C_WaitMoment
	__size_of_I2C_WaitMoment	equ	__end_of_I2C_WaitMoment-_I2C_WaitMoment
	
_I2C_WaitMoment:	
;incstack = 0
	opt	stack 3
; Regs used in _I2C_WaitMoment: []
	line	422
	
l1932:	
# 422 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
	line	423
# 423 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\CheckTouchKey.c"
nop ;# 
psect	text9
	line	424
	
l1556:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_WaitMoment
	__end_of_I2C_WaitMoment:
	signat	_I2C_WaitMoment,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 53 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\main.c"
	line	53
global __ptext10
__ptext10:	;psect for function _Isr_Timer
psect	text10
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SCTOUCH-289XB\main.c"
	line	53
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 3
; Regs used in _Isr_Timer: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Isr_Timer+0)
	movf	pclath,w
	movwf	(??_Isr_Timer+1)
	ljmp	_Isr_Timer
psect	text10
	line	55
	
i1l2202:	
;main.c: 55: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l2212
u10_20:
	line	57
	
i1l2204:	
;main.c: 56: {
;main.c: 57: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	58
	
i1l2206:	
;main.c: 58: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l753
u11_20:
	line	60
	
i1l2208:	
;main.c: 59: {
;main.c: 60: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	61
	
i1l2210:	
;main.c: 61: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	i1l753
	line	66
	
i1l2212:	
;main.c: 64: else
;main.c: 65: {
;main.c: 66: PIR1 = 0;
	clrf	(12)	;volatile
	line	69
	
i1l753:	
	movf	(??_Isr_Timer+1),w
	movwf	pclath
	swapf	(??_Isr_Timer+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Isr_Timer
	__end_of_Isr_Timer:
	signat	_Isr_Timer,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
