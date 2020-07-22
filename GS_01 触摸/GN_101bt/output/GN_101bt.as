opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F8122
opt include "E:\SCMCU_IDE_V2.00.08_Beta9\data\include\sc8f8122.cgen.inc"
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
	FNCALL	_main,_KeyServer
	FNCALL	_main,_Refurbish_Sfr
	FNCALL	_main,_WorkSleep
	FNCALL	_main,_processPress
	FNCALL	_WorkSleep,_Refurbish_Sfr
	FNCALL	_WorkSleep,_SystemEnterSleep
	FNCALL	_SystemEnterSleep,_ClearResSum
	FNCALL	_SystemEnterSleep,_GetTouchKeyValue_Sleep
	FNCALL	_SystemEnterSleep,_KeyClearOne
	FNCALL	_GetTouchKeyValue_Sleep,_ClearResSum
	FNCALL	_CheckTouchKey,_CheckKeyOldValue
	FNCALL	_CheckTouchKey,_CheckOnceResult
	FNCALL	_CheckTouchKey,_CheckValidTime
	FNCALL	_CheckTouchKey,_ClearResSum
	FNCALL	_CheckTouchKey,_GetTouchKeyValue
	FNCALL	_CheckTouchKey,_KeyStopClear
	FNCALL	_CheckTouchKey,_TurnKeyFlags
	FNCALL	_TurnKeyFlags,_KeyClearIn
	FNCALL	_KeyClearIn,_KeyClearOne
	FNCALL	_KeyClearIn,_KeyIsIn
	FNCALL	_KeyStopClear,_KeyClearOne
	FNCALL	_GetTouchKeyValue,_ClearResSum
	FNCALL	_CheckOnceResult,_KeyClearOne
	FNCALL	_CheckOnceResult,_KeyHave
	FNCALL	_CheckOnceResult,_KeyIsIn
	FNCALL	_CheckKeyOldValue,_KeyIsIn
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_lowCount
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
	line	13

;initializer for _lowCount
	retlw	01Ah
	global	_Table_KeyFalg
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
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	57
_Table_KeyFalg:
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	08h
	retlw	010h
	retlw	020h
	retlw	040h
	retlw	080h
	global __end_of_Table_KeyFalg
__end_of_Table_KeyFalg:
	global	_Table_C_LVBO
psect	strings
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\Touch_Kscan_Library.h"
	line	78
_Table_C_LVBO:
	retlw	080h
	global __end_of_Table_C_LVBO
__end_of_Table_C_LVBO:
	global	_Table_KeyDown
psect	strings
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\Touch_Kscan_Library.h"
	line	73
_Table_KeyDown:
	retlw	0Ah
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyCap
psect	strings
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\Touch_Kscan_Library.h"
	line	68
_Table_KeyCap:
	retlw	02h
	global __end_of_Table_KeyCap
__end_of_Table_KeyCap:
	global	_Table_KeyChannel
psect	strings
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\Touch_Kscan_Library.h"
	line	63
_Table_KeyChannel:
	retlw	050h
	global __end_of_Table_KeyChannel
__end_of_Table_KeyChannel:
	global	_Table_KeyFalg
	global	_Table_C_LVBO
	global	_Table_KeyDown
	global	_Table_KeyCap
	global	_Table_KeyChannel
	global	_KeyFlag
	global	_b_ksleep
	global	_b_kerr
	global	_b_kclr
	global	_b_kover1
	global	_b_kover
	global	_B_OnOff
	global	_B_MainLoop
	global	CheckValidTime@validtime
	global	_KeyData
	global	_KeyOldData
	global	_KeyReference
	global	_KeyOldValue2
	global	_KeyOldValue1
	global	_KeyOldValue0
	global	_KeyResSum
	global	TurnKeyFlags@KeyNoTimes
	global	TurnKeyFlags@KeyHaveTimes
	global	CheckKeyOldValue@counter
	global	_KeyMaxSub
	global	_KeyCounter
	global	WorkSleep@time
	global	KeyServer@KeyOldFlag
	global	_pressKey
	global	_MainTime
	global	_KeyUpShake
	global	_PwmData
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_PwmData:
       ds      2

	global	_PIE1
_PIE1	set	30
	global	_PIR1
_PIR1	set	29
	global	_WPDB
_WPDB	set	24
	global	_OSCCON
_OSCCON	set	23
	global	_KEYCON2
_KEYCON2	set	22
	global	_CCPR2L
_CCPR2L	set	21
	global	_CCPCON
_CCPCON	set	20
	global	_PR2
_PR2	set	18
	global	_T2CON
_T2CON	set	17
	global	_KEYDATAH
_KEYDATAH	set	15
	global	_KEYDATAL
_KEYDATAL	set	14
	global	_KEYCON1
_KEYCON1	set	13
	global	_KEYCON0
_KEYCON0	set	12
	global	_INTCON
_INTCON	set	11
	global	_WPUB
_WPUB	set	8
	global	_TRISB
_TRISB	set	7
	global	_PORTB
_PORTB	set	6
	global	_OPTION_REG
_OPTION_REG	set	5
	global	_TMR0
_TMR0	set	1
	global	_TMR2ON
_TMR2ON	set	138
	global	_RBIF
_RBIF	set	88
	global	_TMR2IF
_TMR2IF	set	89
	global	_T0IF
_T0IF	set	90
	global	_TRISB4
_TRISB4	set	60
	global	_TRISB5
_TRISB5	set	61
	global	_RB5
_RB5	set	53
; #config settings
	file	"GN_101bt.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_b_ksleep:
       ds      1

_b_kerr:
       ds      1

_b_kclr:
       ds      1

_b_kover1:
       ds      1

_b_kover:
       ds      1

_B_OnOff:
       ds      1

_B_MainLoop:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_KeyFlag:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
CheckValidTime@validtime:
       ds      2

_KeyData:
       ds      2

_KeyOldData:
       ds      2

_KeyReference:
       ds      2

_KeyOldValue2:
       ds      2

_KeyOldValue1:
       ds      2

_KeyOldValue0:
       ds      2

_KeyResSum:
       ds      2

TurnKeyFlags@KeyNoTimes:
       ds      1

TurnKeyFlags@KeyHaveTimes:
       ds      1

CheckKeyOldValue@counter:
       ds      1

_KeyMaxSub:
       ds      1

_KeyCounter:
       ds      1

WorkSleep@time:
       ds      1

KeyServer@KeyOldFlag:
       ds      1

_pressKey:
       ds      1

_MainTime:
       ds      1

_KeyUpShake:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
	line	13
_lowCount:
       ds      1

	file	"GN_101bt.as"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
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

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+01Ah)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
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
?_SystemEnterSleep:	; 1 bytes @ 0x0
?_CheckTouchKey:	; 1 bytes @ 0x0
?_processPress:	; 1 bytes @ 0x0
?_GetTouchKeyValue_Sleep:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Refurbish_Sfr:	; 1 bytes @ 0x0
?_KeyServer:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_WorkSleep:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_KeyIsIn:	; 1 bytes @ 0x0
?_KeyClearOne:	; 1 bytes @ 0x0
?_KeyClearIn:	; 1 bytes @ 0x0
?_KeyStopClear:	; 1 bytes @ 0x0
?_ClearResSum:	; 1 bytes @ 0x0
?_GetTouchKeyValue:	; 1 bytes @ 0x0
?_CheckOnceResult:	; 1 bytes @ 0x0
?_CheckKeyOldValue:	; 1 bytes @ 0x0
?_TurnKeyFlags:	; 1 bytes @ 0x0
?_CheckValidTime:	; 1 bytes @ 0x0
	ds	2
??_processPress:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_Refurbish_Sfr:	; 1 bytes @ 0x2
??_KeyServer:	; 1 bytes @ 0x2
??_KeyIsIn:	; 1 bytes @ 0x2
??_KeyClearOne:	; 1 bytes @ 0x2
??_ClearResSum:	; 1 bytes @ 0x2
?_KeyHave:	; 1 bytes @ 0x2
??_CheckValidTime:	; 1 bytes @ 0x2
	global	KeyIsIn@i
KeyIsIn@i:	; 1 bytes @ 0x2
	global	KeyClearOne@cnt
KeyClearOne@cnt:	; 1 bytes @ 0x2
	global	ClearResSum@cnt
ClearResSum@cnt:	; 1 bytes @ 0x2
	global	KeyHave@flag
KeyHave@flag:	; 2 bytes @ 0x2
	ds	1
??_GetTouchKeyValue_Sleep:	; 1 bytes @ 0x3
??_KeyStopClear:	; 1 bytes @ 0x3
??_GetTouchKeyValue:	; 1 bytes @ 0x3
	global	KeyIsIn@cnt
KeyIsIn@cnt:	; 1 bytes @ 0x3
	global	KeyStopClear@i
KeyStopClear@i:	; 1 bytes @ 0x3
	global	GetTouchKeyValue@wake
GetTouchKeyValue@wake:	; 2 bytes @ 0x3
	global	GetTouchKeyValue_Sleep@wake
GetTouchKeyValue_Sleep@wake:	; 2 bytes @ 0x3
	ds	1
??_KeyClearIn:	; 1 bytes @ 0x4
??_KeyHave:	; 1 bytes @ 0x4
??_CheckKeyOldValue:	; 1 bytes @ 0x4
	global	KeyServer@Temp
KeyServer@Temp:	; 1 bytes @ 0x4
	global	KeyClearIn@cnt
KeyClearIn@cnt:	; 1 bytes @ 0x4
	global	KeyHave@cnt
KeyHave@cnt:	; 1 bytes @ 0x4
	ds	1
??_CheckOnceResult:	; 1 bytes @ 0x5
??_TurnKeyFlags:	; 1 bytes @ 0x5
	global	GetTouchKeyValue@temp
GetTouchKeyValue@temp:	; 1 bytes @ 0x5
	global	GetTouchKeyValue_Sleep@temp
GetTouchKeyValue_Sleep@temp:	; 1 bytes @ 0x5
	ds	1
	global	GetTouchKeyValue@cnt
GetTouchKeyValue@cnt:	; 1 bytes @ 0x6
	global	GetTouchKeyValue_Sleep@cnt
GetTouchKeyValue_Sleep@cnt:	; 1 bytes @ 0x6
	ds	1
??_WorkSleep:	; 1 bytes @ 0x7
	ds	2
??_CheckTouchKey:	; 1 bytes @ 0x9
??_main:	; 1 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_SystemEnterSleep:	; 1 bytes @ 0x0
	global	CheckOnceResult@OldValue
CheckOnceResult@OldValue:	; 2 bytes @ 0x0
	global	CheckKeyOldValue@KeyResTemp
CheckKeyOldValue@KeyResTemp:	; 2 bytes @ 0x0
	ds	2
	global	CheckOnceResult@flag
CheckOnceResult@flag:	; 1 bytes @ 0x2
	global	CheckKeyOldValue@KeyOldTemp
CheckKeyOldValue@KeyOldTemp:	; 2 bytes @ 0x2
	ds	1
	global	CheckOnceResult@KeyValue
CheckOnceResult@KeyValue:	; 2 bytes @ 0x3
	ds	1
	global	CheckKeyOldValue@cnt
CheckKeyOldValue@cnt:	; 1 bytes @ 0x4
	global	SystemEnterSleep@KeyValue
SystemEnterSleep@KeyValue:	; 2 bytes @ 0x4
	ds	1
	global	CheckOnceResult@KeyDown
CheckOnceResult@KeyDown:	; 1 bytes @ 0x5
	ds	1
	global	CheckOnceResult@KeyResTemp
CheckOnceResult@KeyResTemp:	; 2 bytes @ 0x6
	global	SystemEnterSleep@wake
SystemEnterSleep@wake:	; 2 bytes @ 0x6
	ds	2
	global	CheckOnceResult@cnt
CheckOnceResult@cnt:	; 1 bytes @ 0x8
	global	SystemEnterSleep@KeyResTemp
SystemEnterSleep@KeyResTemp:	; 2 bytes @ 0x8
	ds	2
	global	SystemEnterSleep@KeyOldTemp
SystemEnterSleep@KeyOldTemp:	; 2 bytes @ 0xA
	ds	2
	global	SystemEnterSleep@cnt
SystemEnterSleep@cnt:	; 1 bytes @ 0xC
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    12
;!    Data        1
;!    BSS         28
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      12
;!    BANK0            80     13      42
;!    BANK1            32      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _SystemEnterSleep->_GetTouchKeyValue_Sleep
;!    _GetTouchKeyValue_Sleep->_ClearResSum
;!    _CheckTouchKey->_CheckOnceResult
;!    _TurnKeyFlags->_KeyClearIn
;!    _KeyClearIn->_KeyIsIn
;!    _KeyStopClear->_KeyClearOne
;!    _GetTouchKeyValue->_ClearResSum
;!    _CheckOnceResult->_KeyHave
;!    _CheckKeyOldValue->_KeyIsIn
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _WorkSleep->_SystemEnterSleep
;!    _CheckTouchKey->_CheckOnceResult
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

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    4900
;!                      _CheckTouchKey
;!                        _Init_System
;!                          _KeyServer
;!                      _Refurbish_Sfr
;!                          _WorkSleep
;!                       _processPress
;! ---------------------------------------------------------------------------------
;! (1) _processPress                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _WorkSleep                                            0     0      0    1342
;!                      _Refurbish_Sfr
;!                   _SystemEnterSleep
;! ---------------------------------------------------------------------------------
;! (2) _SystemEnterSleep                                    13    13      0    1342
;!                                              0 BANK0     13    13      0
;!                        _ClearResSum
;!             _GetTouchKeyValue_Sleep
;!                        _KeyClearOne
;! ---------------------------------------------------------------------------------
;! (3) _GetTouchKeyValue_Sleep                               4     4      0     203
;!                                              3 COMMON     4     4      0
;!                        _ClearResSum
;! ---------------------------------------------------------------------------------
;! (2) _Refurbish_Sfr                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _KeyServer                                            3     3      0      48
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _CheckTouchKey                                        0     0      0    3510
;!                   _CheckKeyOldValue
;!                    _CheckOnceResult
;!                     _CheckValidTime
;!                        _ClearResSum
;!                   _GetTouchKeyValue
;!                       _KeyStopClear
;!                       _TurnKeyFlags
;! ---------------------------------------------------------------------------------
;! (2) _TurnKeyFlags                                         0     0      0     320
;!                         _KeyClearIn
;! ---------------------------------------------------------------------------------
;! (3) _KeyClearIn                                           1     1      0     320
;!                                              4 COMMON     1     1      0
;!                        _KeyClearOne
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (2) _KeyStopClear                                         1     1      0     178
;!                                              3 COMMON     1     1      0
;!                        _KeyClearOne
;! ---------------------------------------------------------------------------------
;! (2) _GetTouchKeyValue                                     4     4      0     203
;!                                              3 COMMON     4     4      0
;!                        _ClearResSum
;! ---------------------------------------------------------------------------------
;! (4) _ClearResSum                                          1     1      0      45
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _CheckValidTime                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _CheckOnceResult                                     13    13      0    1925
;!                                              5 COMMON     4     4      0
;!                                              0 BANK0      9     9      0
;!                        _KeyClearOne
;!                            _KeyHave
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (3) _KeyHave                                              3     1      2     304
;!                                              2 COMMON     3     1      2
;! ---------------------------------------------------------------------------------
;! (3) _KeyClearOne                                          1     1      0      88
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _CheckKeyOldValue                                     7     7      0     839
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      5     5      0
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (5) _KeyIsIn                                              2     2      0     102
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _Isr_Timer                                            2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _CheckTouchKey
;!     _CheckKeyOldValue
;!       _KeyIsIn
;!     _CheckOnceResult
;!       _KeyClearOne
;!       _KeyHave
;!       _KeyIsIn
;!     _CheckValidTime
;!     _ClearResSum
;!     _GetTouchKeyValue
;!       _ClearResSum
;!     _KeyStopClear
;!       _KeyClearOne
;!     _TurnKeyFlags
;!       _KeyClearIn
;!         _KeyClearOne
;!         _KeyIsIn
;!   _Init_System
;!   _KeyServer
;!   _Refurbish_Sfr
;!   _WorkSleep
;!     _Refurbish_Sfr
;!     _SystemEnterSleep
;!       _ClearResSum
;!       _GetTouchKeyValue_Sleep
;!         _ClearResSum
;!       _KeyClearOne
;!   _processPress
;!
;! _Isr_Timer (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK1               20      0       0       5        0.0%
;!BITBANK1            20      0       0       7        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      D      2A       4       52.5%
;!BITBANK0            50      0       0       3        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      9       C       1       85.7%
;!BITCOMMON            E      0       1       0        7.1%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      36       8        0.0%
;!ABS                  0      0      36       6        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 196 in file "D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CheckTouchKey
;;		_Init_System
;;		_KeyServer
;;		_Refurbish_Sfr
;;		_WorkSleep
;;		_processPress
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
	line	196
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
	line	196
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	198
	
l2711:	
;main.c: 198: Init_System();
	fcall	_Init_System
	line	201
	
l2713:	
;main.c: 200: {
;main.c: 201: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u2121
	goto	u2120
u2121:
	goto	l2713
u2120:
	line	203
	
l2715:	
;main.c: 202: {
;main.c: 203: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	204
# 204 "D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
clrwdt ;# 
psect	maintext
	line	206
	
l2717:	
;main.c: 206: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	207
	
l2719:	
;main.c: 207: CheckTouchKey();
	fcall	_CheckTouchKey
	line	208
	
l2721:	
;main.c: 208: KeyServer();
	fcall	_KeyServer
	line	209
;main.c: 209: WorkSleep();
	fcall	_WorkSleep
	line	210
	
l2723:	
;main.c: 210: processPress();
	fcall	_processPress
	goto	l2713
	global	start
	ljmp	start
	opt stack 0
	line	213
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_processPress

;; *************** function _processPress *****************
;; Defined at:
;;		line 216 in file "D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
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
	line	216
global __ptext1
__ptext1:	;psect for function _processPress
psect	text1
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
	line	216
	global	__size_of_processPress
	__size_of_processPress	equ	__end_of_processPress-_processPress
	
_processPress:	
;incstack = 0
	opt	stack 6
; Regs used in _processPress: [wreg+status,2+status,0]
	line	218
	
l2351:	
;main.c: 218: if(pressKey)
	movf	((_pressKey)),w
	btfsc	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l2355
u1550:
	line	220
	
l2353:	
;main.c: 219: {
;main.c: 220: lowCount = 0;
	clrf	(_lowCount)
	line	222
	
l2355:	
;main.c: 221: }
;main.c: 222: if(++lowCount > 25)
	movlw	low(01Ah)
	incf	(_lowCount),f
	subwf	((_lowCount)),w
	skipc
	goto	u1561
	goto	u1560
u1561:
	goto	l355
u1560:
	line	224
	
l2357:	
;main.c: 223: {
;main.c: 224: lowCount = 26;
	movlw	low(01Ah)
	movwf	(_lowCount)
	line	225
	
l2359:	
;main.c: 225: PORTB |= 0x10;
	bsf	(6)+(4/8),(4)&7	;volatile
	line	226
;main.c: 226: }
	goto	l357
	line	227
	
l355:	
	line	229
;main.c: 227: else
;main.c: 228: {
;main.c: 229: PORTB &= 0xEF;
	bcf	(6)+(4/8),(4)&7	;volatile
	line	231
	
l357:	
	return
	opt stack 0
GLOBAL	__end_of_processPress
	__end_of_processPress:
	signat	_processPress,89
	global	_WorkSleep

;; *************** function _WorkSleep *****************
;; Defined at:
;;		line 153 in file "D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Refurbish_Sfr
;;		_SystemEnterSleep
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	153
global __ptext2
__ptext2:	;psect for function _WorkSleep
psect	text2
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
	line	153
	global	__size_of_WorkSleep
	__size_of_WorkSleep	equ	__end_of_WorkSleep-_WorkSleep
	
_WorkSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _WorkSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	158
	
l2659:	
;main.c: 156: static unsigned char time;
;main.c: 158: if(B_OnOff)
	btfss	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	goto	u2041
	goto	u2040
u2041:
	goto	l2663
u2040:
	line	159
	
l2661:	
;main.c: 159: time = 0;
	clrf	(WorkSleep@time)
	line	161
	
l2663:	
;main.c: 161: if(++time >= 250)
	movlw	low(0FAh)
	incf	(WorkSleep@time),f
	subwf	((WorkSleep@time)),w
	skipc
	goto	u2051
	goto	u2050
u2051:
	goto	l342
u2050:
	line	163
	
l2665:	
;main.c: 162: {
;main.c: 163: time = 0;
	clrf	(WorkSleep@time)
	line	164
;main.c: 164: INTCON = 0;
	clrf	(11)	;volatile
	line	165
;main.c: 165: PIE1 = 0;
	clrf	(30)	;volatile
	line	166
;main.c: 166: PIR1 = 0;
	clrf	(29)	;volatile
	line	167
;main.c: 167: T2CON = 0;
	clrf	(17)	;volatile
	line	168
;main.c: 168: CCPCON = 0;
	clrf	(20)	;volatile
	line	169
;main.c: 169: KEYCON0 = 0;
	clrf	(12)	;volatile
	line	171
;main.c: 171: TRISB = 0;
	clrf	(7)	;volatile
	line	172
;main.c: 172: PORTB = 0;
	clrf	(6)	;volatile
	line	173
;main.c: 173: WPUB = 0;
	clrf	(8)	;volatile
	line	185
	
l2667:	
;main.c: 185: SystemEnterSleep();
	fcall	_SystemEnterSleep
	line	186
	
l2669:	
;main.c: 186: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2061
	goto	u2060
u2061:
	goto	l2673
u2060:
	
l2671:	
	bcf	(88/8),(88)&7	;volatile
	line	188
	
l2673:	
;main.c: 188: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	191
	
l342:	
	return
	opt stack 0
GLOBAL	__end_of_WorkSleep
	__end_of_WorkSleep:
	signat	_WorkSleep,89
	global	_SystemEnterSleep

;; *************** function _SystemEnterSleep *****************
;; Defined at:
;;		line 572 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  KeyOldTemp      2   10[BANK0 ] unsigned int 
;;  KeyResTemp      2    8[BANK0 ] unsigned int 
;;  wake            2    6[BANK0 ] unsigned int 
;;  KeyValue        2    4[BANK0 ] unsigned int 
;;  cnt             1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 900/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       9       0
;;      Temps:          0       4       0
;;      Totals:         0      13       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ClearResSum
;;		_GetTouchKeyValue_Sleep
;;		_KeyClearOne
;; This function is called by:
;;		_WorkSleep
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	572
global __ptext3
__ptext3:	;psect for function _SystemEnterSleep
psect	text3
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	572
	global	__size_of_SystemEnterSleep
	__size_of_SystemEnterSleep	equ	__end_of_SystemEnterSleep-_SystemEnterSleep
	
_SystemEnterSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _SystemEnterSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	583
;CheckTouchKey.c: 582: {
;CheckTouchKey.c: 583: while(1)
	
l793:	
	line	587
# 587 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
clrwdt ;# 
psect	text3
	line	588
	
l2415:	
;CheckTouchKey.c: 588: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	589
	
l2417:	
;CheckTouchKey.c: 589: OPTION_REG |= 0x07;
	movlw	low(07h)
	iorwf	(5),f	;volatile
	line	591
	
l2419:	
;CheckTouchKey.c: 591: OPTION_REG |= 0x08;
	bsf	(5)+(3/8),(3)&7	;volatile
	line	592
# 592 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
clrwdt ;# 
psect	text3
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\TouchKeyConst.h"
	line	5
	
l2421:	
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	595
# 595 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
clrwdt ;# 
psect	text3
	line	597
	
l2423:	
;CheckTouchKey.c: 597: KEYCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(12)	;volatile
	line	598
	
l2425:	
;CheckTouchKey.c: 598: KEYCON2 = 0;
	clrf	(22)	;volatile
	line	599
	
l2427:	
;CheckTouchKey.c: 599: TRISB5 = 0;
	bcf	(61/8),(61)&7	;volatile
	line	600
	
l2429:	
;CheckTouchKey.c: 600: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	602
	
l2431:	
;CheckTouchKey.c: 602: OSCCON = 0x70;
	movlw	low(070h)
	movwf	(23)	;volatile
	line	603
# 603 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
sleep ;# 
	line	604
# 604 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	605
# 605 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
clrwdt ;# 
psect	text3
	line	610
	
l2433:	
;CheckTouchKey.c: 610: ClearResSum();
	fcall	_ClearResSum
	line	611
	
l2435:	
;CheckTouchKey.c: 611: b_ksleep = 1;
	bsf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	line	612
	
l2437:	
;CheckTouchKey.c: 612: GetTouchKeyValue_Sleep();
	fcall	_GetTouchKeyValue_Sleep
	line	614
	
l2439:	
;CheckTouchKey.c: 614: cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(SystemEnterSleep@cnt)
	line	615
	
l2441:	
;CheckTouchKey.c: 615: wake = 1;
	clrf	(SystemEnterSleep@wake)
	incf	(SystemEnterSleep@wake),f
	clrf	(SystemEnterSleep@wake+1)
	line	616
	
l2443:	
;CheckTouchKey.c: 616: if(INTCON & 0x01)
	btfss	(11),(0)&7	;volatile
	goto	u1631
	goto	u1630
u1631:
	goto	l797
u1630:
	line	618
	
l2445:	
;CheckTouchKey.c: 617: {
;CheckTouchKey.c: 618: ClearResSum();
	fcall	_ClearResSum
	line	619
	
l2447:	
;CheckTouchKey.c: 619: KeyCounter = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_KeyCounter)
	line	620
	
l2449:	
;CheckTouchKey.c: 620: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	621
	
l2451:	
;CheckTouchKey.c: 621: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	l795
	line	625
;CheckTouchKey.c: 624: else
;CheckTouchKey.c: 625: do
	
l797:	
	line	627
	btfss	(SystemEnterSleep@wake),(0)&7
	goto	u1641
	goto	u1640
u1641:
	goto	l2513
u1640:
	line	630
	
l2457:	
;CheckTouchKey.c: 628: {
;CheckTouchKey.c: 630: KeyValue = KeyResTemp = KeyResSum[cnt];
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(SystemEnterSleep@KeyResTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(SystemEnterSleep@KeyResTemp+1)
	movf	((SystemEnterSleep@KeyResTemp+1)),w
	movwf	(SystemEnterSleep@KeyValue+1)
	movf	((SystemEnterSleep@KeyResTemp)),w
	movwf	(SystemEnterSleep@KeyValue)
	line	631
	
l2459:	
;CheckTouchKey.c: 631: if(KeyResTemp)
	movf	((SystemEnterSleep@KeyResTemp)),w
iorwf	((SystemEnterSleep@KeyResTemp+1)),w
	btfsc	status,2
	goto	u1651
	goto	u1650
u1651:
	goto	l2513
u1650:
	line	633
	
l2461:	
;CheckTouchKey.c: 632: {
;CheckTouchKey.c: 633: KeyValue += Table_KeyDown[cnt];
	movf	(SystemEnterSleep@cnt),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addwf	(SystemEnterSleep@KeyValue),f
	skipnc
	incf	(SystemEnterSleep@KeyValue+1),f
	line	635
	
l2463:	
;CheckTouchKey.c: 635: if(KeyReference[cnt] >= KeyValue)
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+1
	movf	(SystemEnterSleep@KeyValue+1),w
	subwf	1+(??_SystemEnterSleep+0)+0,w
	skipz
	goto	u1665
	movf	(SystemEnterSleep@KeyValue),w
	subwf	0+(??_SystemEnterSleep+0)+0,w
u1665:
	skipc
	goto	u1661
	goto	u1660
u1661:
	goto	l2487
u1660:
	line	637
	
l2465:	
;CheckTouchKey.c: 636: {
;CheckTouchKey.c: 637: cnt = 0;
	clrf	(SystemEnterSleep@cnt)
	line	638
	
l2467:	
;CheckTouchKey.c: 638: wake = 1;
	clrf	(SystemEnterSleep@wake)
	incf	(SystemEnterSleep@wake),f
	clrf	(SystemEnterSleep@wake+1)
	line	641
	
l2469:	
	btfsc	(SystemEnterSleep@wake),(0)&7
	goto	u1671
	goto	u1670
u1671:
	goto	l2473
u1670:
	line	643
	
l2471:	
;CheckTouchKey.c: 642: {
;CheckTouchKey.c: 643: KeyClearOne(cnt);
	movf	(SystemEnterSleep@cnt),w
	fcall	_KeyClearOne
	line	645
	
l2473:	
;CheckTouchKey.c: 644: }
;CheckTouchKey.c: 645: wake <<= 1;
	bcf	status, 5	;RP0=0, select bank0
	clrc
	rlf	(SystemEnterSleep@wake),f
	rlf	(SystemEnterSleep@wake+1),f
	line	646
	
l2475:	
	incf	(SystemEnterSleep@cnt),f
	btfsc	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l2469
u1680:
	goto	l2445
	line	655
	
l2487:	
;CheckTouchKey.c: 653: }
;CheckTouchKey.c: 655: KeyOldTemp = KeyOldValue0[cnt] - KeyResTemp;
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(SystemEnterSleep@KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(SystemEnterSleep@KeyOldTemp+1)
	
l2489:	
	movf	(SystemEnterSleep@KeyResTemp),w
	subwf	(SystemEnterSleep@KeyOldTemp),f
	movf	(SystemEnterSleep@KeyResTemp+1),w
	skipc
	decf	(SystemEnterSleep@KeyOldTemp+1),f
	subwf	(SystemEnterSleep@KeyOldTemp+1),f
	line	656
	
l2491:	
;CheckTouchKey.c: 656: if(KeyOldTemp <= 4 || KeyOldTemp >= -4)
	movlw	0
	subwf	(SystemEnterSleep@KeyOldTemp+1),w
	movlw	05h
	skipnz
	subwf	(SystemEnterSleep@KeyOldTemp),w
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l2495
u1690:
	
l2493:	
	movlw	0FFh
	subwf	(SystemEnterSleep@KeyOldTemp+1),w
	movlw	0FCh
	skipnz
	subwf	(SystemEnterSleep@KeyOldTemp),w
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l804
u1700:
	line	658
	
l2495:	
;CheckTouchKey.c: 657: {
;CheckTouchKey.c: 658: KeyOldTemp = KeyOldValue1[cnt] - KeyResTemp;
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(SystemEnterSleep@KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(SystemEnterSleep@KeyOldTemp+1)
	
l2497:	
	movf	(SystemEnterSleep@KeyResTemp),w
	subwf	(SystemEnterSleep@KeyOldTemp),f
	movf	(SystemEnterSleep@KeyResTemp+1),w
	skipc
	decf	(SystemEnterSleep@KeyOldTemp+1),f
	subwf	(SystemEnterSleep@KeyOldTemp+1),f
	line	659
	
l2499:	
;CheckTouchKey.c: 659: if(KeyOldTemp <= 4 || KeyOldTemp >= -4)
	movlw	0
	subwf	(SystemEnterSleep@KeyOldTemp+1),w
	movlw	05h
	skipnz
	subwf	(SystemEnterSleep@KeyOldTemp),w
	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l2503
u1710:
	
l2501:	
	movlw	0FFh
	subwf	(SystemEnterSleep@KeyOldTemp+1),w
	movlw	0FCh
	skipnz
	subwf	(SystemEnterSleep@KeyOldTemp),w
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l804
u1720:
	line	661
	
l2503:	
;CheckTouchKey.c: 660: {
;CheckTouchKey.c: 661: KeyOldTemp = KeyOldValue2[cnt] - KeyResTemp;
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(SystemEnterSleep@KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(SystemEnterSleep@KeyOldTemp+1)
	
l2505:	
	movf	(SystemEnterSleep@KeyResTemp),w
	subwf	(SystemEnterSleep@KeyOldTemp),f
	movf	(SystemEnterSleep@KeyResTemp+1),w
	skipc
	decf	(SystemEnterSleep@KeyOldTemp+1),f
	subwf	(SystemEnterSleep@KeyOldTemp+1),f
	line	662
	
l2507:	
;CheckTouchKey.c: 662: if(KeyOldTemp <= 4 || KeyOldTemp >= -4)
	movlw	0
	subwf	(SystemEnterSleep@KeyOldTemp+1),w
	movlw	05h
	skipnz
	subwf	(SystemEnterSleep@KeyOldTemp),w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l2511
u1730:
	
l2509:	
	movlw	0FFh
	subwf	(SystemEnterSleep@KeyOldTemp+1),w
	movlw	0FCh
	skipnz
	subwf	(SystemEnterSleep@KeyOldTemp),w
	skipc
	goto	u1741
	goto	u1740
u1741:
	goto	l804
u1740:
	line	664
	
l2511:	
;CheckTouchKey.c: 663: {
;CheckTouchKey.c: 664: KeyReference[cnt] = (KeyResTemp+KeyOldValue2[cnt])>>1;
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+1
	movf	(SystemEnterSleep@KeyResTemp),w
	addwf	0+(??_SystemEnterSleep+0)+0,w
	movwf	(??_SystemEnterSleep+2)+0
	movf	(SystemEnterSleep@KeyResTemp+1),w
	skipnc
	incf	(SystemEnterSleep@KeyResTemp+1),w
	addwf	1+(??_SystemEnterSleep+0)+0,w
	movwf	1+(??_SystemEnterSleep+2)+0
	clrc
	rrf	(??_SystemEnterSleep+2)+1,f
	rrf	(??_SystemEnterSleep+2)+0,f
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_SystemEnterSleep+2)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_SystemEnterSleep+2)+0,w
	movwf	indf
	line	667
	
l804:	
	line	671
;CheckTouchKey.c: 665: }
;CheckTouchKey.c: 666: }
;CheckTouchKey.c: 667: }
;CheckTouchKey.c: 671: KeyOldValue2[cnt] = KeyOldValue1[cnt];
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+1
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_SystemEnterSleep+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_SystemEnterSleep+0)+0,w
	movwf	indf
	line	672
;CheckTouchKey.c: 672: KeyOldValue1[cnt] = KeyOldValue0[cnt];
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+1
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_SystemEnterSleep+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_SystemEnterSleep+0)+0,w
	movwf	indf
	line	673
;CheckTouchKey.c: 673: KeyOldValue0[cnt] = KeyResTemp;
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(SystemEnterSleep@KeyResTemp),w
	movwf	indf
	incf	fsr0,f
	movf	(SystemEnterSleep@KeyResTemp+1),w
	movwf	indf
	line	676
	
l2513:	
;CheckTouchKey.c: 674: }
;CheckTouchKey.c: 675: }
;CheckTouchKey.c: 676: wake <<= 1;
	clrc
	rlf	(SystemEnterSleep@wake),f
	rlf	(SystemEnterSleep@wake+1),f
	line	677
	
l2515:	
	incf	(SystemEnterSleep@cnt),f
	btfsc	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l797
u1750:
	goto	l793
	line	680
	
l795:	
	return
	opt stack 0
GLOBAL	__end_of_SystemEnterSleep
	__end_of_SystemEnterSleep:
	signat	_SystemEnterSleep,89
	global	_GetTouchKeyValue_Sleep

;; *************** function _GetTouchKeyValue_Sleep *****************
;; Defined at:
;;		line 688 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wake            2    3[COMMON] unsigned int 
;;  cnt             1    6[COMMON] unsigned char 
;;  temp            1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 800/0
;;		On exit  : 800/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         4       0       0
;;      Temps:          0       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ClearResSum
;; This function is called by:
;;		_SystemEnterSleep
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	line	688
global __ptext4
__ptext4:	;psect for function _GetTouchKeyValue_Sleep
psect	text4
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	688
	global	__size_of_GetTouchKeyValue_Sleep
	__size_of_GetTouchKeyValue_Sleep	equ	__end_of_GetTouchKeyValue_Sleep-_GetTouchKeyValue_Sleep
	
_GetTouchKeyValue_Sleep:	
;incstack = 0
	opt	stack 3
; Regs used in _GetTouchKeyValue_Sleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	690
	
l1847:	
;CheckTouchKey.c: 690: unsigned char cnt = 0,temp;
	clrf	(GetTouchKeyValue_Sleep@cnt)
	line	691
	
l1849:	
;CheckTouchKey.c: 691: unsigned int wake = 1;
	clrf	(GetTouchKeyValue_Sleep@wake)
	incf	(GetTouchKeyValue_Sleep@wake),f
	clrf	(GetTouchKeyValue_Sleep@wake+1)
	line	694
	
l1851:	
;CheckTouchKey.c: 693: {
;CheckTouchKey.c: 694: if((wake && KeyWakeUpEn))
	movf	((GetTouchKeyValue_Sleep@wake)),w
iorwf	((GetTouchKeyValue_Sleep@wake+1)),w
	btfsc	status,2
	goto	u821
	goto	u820
u821:
	goto	l1889
u820:
	line	696
	
l1853:	
;CheckTouchKey.c: 695: {
;CheckTouchKey.c: 696: KEYCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(12)	;volatile
	line	697
;CheckTouchKey.c: 697: KEYCON1 = 0;
	clrf	(13)	;volatile
	line	698
	
l1855:	
;CheckTouchKey.c: 698: KEYCON2 = Table_C_LVBO[cnt] | 0x01;
	movf	(GetTouchKeyValue_Sleep@cnt),w
	addlw	low((((_Table_C_LVBO)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	iorlw	01h
	movwf	(22)	;volatile
	line	700
	
l1857:	
;CheckTouchKey.c: 700: KEYCON0 = Table_KeyCap[cnt];
	movf	(GetTouchKeyValue_Sleep@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(12)	;volatile
	line	701
	
l1859:	
;CheckTouchKey.c: 701: KEYCON1 = Table_KeyChannel[cnt];
	movf	(GetTouchKeyValue_Sleep@cnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(13)	;volatile
	line	702
	
l1861:	
;CheckTouchKey.c: 702: INTCON = 0X40;
	movlw	low(040h)
	movwf	(11)	;volatile
	line	703
	
l1863:	
;CheckTouchKey.c: 703: PIE1 = 1;
	movlw	low(01h)
	movwf	(30)	;volatile
	line	704
	
l1865:	
;CheckTouchKey.c: 704: PIR1 = 0;
	clrf	(29)	;volatile
	line	705
	
l1867:	
;CheckTouchKey.c: 705: TRISB5 = 1;
	bsf	(61/8),(61)&7	;volatile
	line	706
# 706 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	707
# 707 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
psect	text4
	line	708
	
l1869:	
;CheckTouchKey.c: 708: KEYCON0 |= 0x1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(12)+(0/8),(0)&7	;volatile
	line	709
# 709 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
sleep ;# 
	line	710
# 710 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
clrwdt ;# 
psect	text4
	line	711
	
l1871:	
;CheckTouchKey.c: 711: PIE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(30)	;volatile
	line	712
	
l1873:	
;CheckTouchKey.c: 712: PIR1 = 0;
	clrf	(29)	;volatile
	line	714
	
l1875:	
;CheckTouchKey.c: 714: temp = 0;
	clrf	(GetTouchKeyValue_Sleep@temp)
	line	715
;CheckTouchKey.c: 715: while(!(KEYCON0&0x80))
	goto	l820
	
l821:	
	line	717
;CheckTouchKey.c: 716: {
;CheckTouchKey.c: 717: if(0 == (--temp))
	decfsz	(GetTouchKeyValue_Sleep@temp),f
	goto	u831
	goto	u830
u831:
	goto	l820
u830:
	line	719
	
l1877:	
;CheckTouchKey.c: 718: {
;CheckTouchKey.c: 719: KeyCounter = 255;
	movlw	low(0FFh)
	movwf	(_KeyCounter)
	line	720
	
l1879:	
;CheckTouchKey.c: 720: ClearResSum();
	fcall	_ClearResSum
	goto	l823
	line	723
	
l820:	
	line	715
	btfss	(12),(7)&7	;volatile
	goto	u841
	goto	u840
u841:
	goto	l821
u840:
	line	726
	
l1883:	
;CheckTouchKey.c: 722: }
;CheckTouchKey.c: 723: }
;CheckTouchKey.c: 726: KeyResSum[cnt] += (unsigned int)((KEYDATAH<<8) | KEYDATAL);
	clrc
	rlf	(GetTouchKeyValue_Sleep@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(14),w	;volatile
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movf	(15),w	;volatile
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	727
	
l1885:	
;CheckTouchKey.c: 727: TRISB5 =0;
	bcf	(61/8),(61)&7	;volatile
	line	728
	
l1887:	
;CheckTouchKey.c: 728: RB5 =0;
	bcf	(53/8),(53)&7	;volatile
	line	730
	
l1889:	
;CheckTouchKey.c: 729: }
;CheckTouchKey.c: 730: wake <<= 1;
	clrc
	rlf	(GetTouchKeyValue_Sleep@wake),f
	rlf	(GetTouchKeyValue_Sleep@wake+1),f
	line	731
	
l1891:	
	incf	(GetTouchKeyValue_Sleep@cnt),f
	btfsc	status,2
	goto	u851
	goto	u850
u851:
	goto	l1851
u850:
	line	732
	
l1893:	
;CheckTouchKey.c: 732: KEYCON2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(22)	;volatile
	line	733
	
l1895:	
;CheckTouchKey.c: 733: b_ksleep = 0;
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	line	734
	
l823:	
	return
	opt stack 0
GLOBAL	__end_of_GetTouchKeyValue_Sleep
	__end_of_GetTouchKeyValue_Sleep:
	signat	_GetTouchKeyValue_Sleep,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 55 in file "D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WorkSleep
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
	line	55
global __ptext5
__ptext5:	;psect for function _Refurbish_Sfr
psect	text5
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
	line	55
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 5
; Regs used in _Refurbish_Sfr: [wreg+status,2]
	line	58
	
l1897:	
;main.c: 58: INTCON = 0XA0;
	movlw	low(0A0h)
	movwf	(11)	;volatile
	line	59
	
l1899:	
;main.c: 59: TRISB = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	60
	
l1901:	
;main.c: 60: WPUB = 0X10;
	movlw	low(010h)
	movwf	(8)	;volatile
	line	61
	
l312:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 67 in file "D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Temp            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          2       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	67
global __ptext6
__ptext6:	;psect for function _KeyServer
psect	text6
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
	line	67
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 6
; Regs used in _KeyServer: [wreg+status,2+status,0]
	line	70
	
l2239:	
;main.c: 69: static unsigned char KeyOldFlag = 0;
;main.c: 70: if(KeyFlag[0])
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l2297
u1350:
	line	72
	
l2241:	
;main.c: 71: {
;main.c: 72: if(KeyFlag[0] != KeyOldFlag)
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),w
	skipnz
	goto	u1361
	goto	u1360
u1361:
	goto	l326
u1360:
	line	75
	
l2243:	
;main.c: 73: {
;main.c: 75: KeyOldFlag ^= KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),f
	line	76
	
l2245:	
;main.c: 76: if((KeyOldFlag&0x1) && (KeyFlag[0]&0x1))
	btfss	(KeyServer@KeyOldFlag),(0)&7
	goto	u1371
	goto	u1370
u1371:
	goto	l2253
u1370:
	
l2247:	
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u1381
	goto	u1380
u1381:
	goto	l2253
u1380:
	line	79
	
l2249:	
;main.c: 77: {
;main.c: 79: B_OnOff = !B_OnOff;
	movlw	1<<((_B_OnOff)&7)
	xorwf	((_B_OnOff)/8),f
	line	81
	
l2251:	
;main.c: 81: pressKey = 1;
	clrf	(_pressKey)
	incf	(_pressKey),f
	line	83
	
l2253:	
;main.c: 82: }
;main.c: 83: if((KeyOldFlag&0x2) && (KeyFlag[0]&0x2))
	btfss	(KeyServer@KeyOldFlag),(1)&7
	goto	u1391
	goto	u1390
u1391:
	goto	l2261
u1390:
	
l2255:	
	btfss	(_KeyFlag),(1)&7	;volatile
	goto	u1401
	goto	u1400
u1401:
	goto	l2261
u1400:
	line	86
	
l2257:	
;main.c: 84: {
;main.c: 86: PORTB ^= 0X10;
	movlw	low(010h)
	xorwf	(6),f	;volatile
	line	87
	
l2259:	
;main.c: 87: B_OnOff = 1;
	bsf	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	line	89
	
l2261:	
;main.c: 88: }
;main.c: 89: if((KeyOldFlag&0x4) && (KeyFlag[0]&0x4))
	btfss	(KeyServer@KeyOldFlag),(2)&7
	goto	u1411
	goto	u1410
u1411:
	goto	l2287
u1410:
	
l2263:	
	btfss	(_KeyFlag),(2)&7	;volatile
	goto	u1421
	goto	u1420
u1421:
	goto	l2287
u1420:
	line	92
	
l2265:	
;main.c: 90: {
;main.c: 92: B_OnOff = 1;
	bsf	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	line	93
	
l2267:	
;main.c: 93: PwmData = PwmData+0X10;
	movlw	010h
	addwf	(_PwmData),f	;volatile
	skipnc
	incf	(_PwmData+1),f	;volatile
	line	94
;main.c: 94: PwmData &= 0x03ff;
	movlw	0FFh
	andwf	(_PwmData),f	;volatile
	movlw	03h
	andwf	(_PwmData+1),f	;volatile
	line	95
;main.c: 95: unsigned char Temp=0x40;
	movlw	low(040h)
	movwf	(KeyServer@Temp)
	line	97
	
l2269:	
;main.c: 97: if(PwmData&0x01)
	btfss	(_PwmData),(0)&7	;volatile
	goto	u1431
	goto	u1430
u1431:
	goto	l322
u1430:
	line	98
	
l2271:	
;main.c: 98: Temp |=0x10;
	bsf	(KeyServer@Temp)+(4/8),(4)&7
	
l322:	
	line	99
;main.c: 99: if(PwmData&0x02)
	btfss	(_PwmData),(1)&7	;volatile
	goto	u1441
	goto	u1440
u1441:
	goto	l2275
u1440:
	line	100
	
l2273:	
;main.c: 100: Temp |=0x20;
	bsf	(KeyServer@Temp)+(5/8),(5)&7
	line	101
	
l2275:	
;main.c: 101: CCPCON = Temp;
	movf	(KeyServer@Temp),w
	movwf	(20)	;volatile
	line	102
	
l2277:	
;main.c: 102: Temp = (PwmData>>2);
	movf	(_PwmData+1),w	;volatile
	movwf	(??_KeyServer+0)+0+1
	movf	(_PwmData),w	;volatile
	movwf	(??_KeyServer+0)+0
	clrc
	rrf	(??_KeyServer+0)+1,f
	rrf	(??_KeyServer+0)+0,f
	clrc
	rrf	(??_KeyServer+0)+1,f
	rrf	(??_KeyServer+0)+0,f
	movf	0+(??_KeyServer+0)+0,w
	movwf	(KeyServer@Temp)
	line	103
	
l2279:	
;main.c: 103: CCPR2L = Temp;
	movf	(KeyServer@Temp),w
	movwf	(21)	;volatile
	line	104
	
l2281:	
;main.c: 104: TMR2IF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	105
;main.c: 105: T2CON &= 0X04;
	movlw	low(04h)
	andwf	(17),f	;volatile
	line	106
	
l2283:	
;main.c: 106: TMR2ON = 1;
	bsf	(138/8),(138)&7	;volatile
	line	107
	
l2285:	
;main.c: 107: TRISB4 = 0;
	bcf	(60/8),(60)&7	;volatile
	line	110
	
l2287:	
;main.c: 109: }
;main.c: 110: if((KeyOldFlag&0x8) && (KeyFlag[0]&0x8))
	btfss	(KeyServer@KeyOldFlag),(3)&7
	goto	u1451
	goto	u1450
u1451:
	goto	l2295
u1450:
	
l2289:	
	btfss	(_KeyFlag),(3)&7	;volatile
	goto	u1461
	goto	u1460
u1461:
	goto	l2295
u1460:
	line	113
	
l2291:	
;main.c: 111: {
;main.c: 113: PORTB ^= 0X10;
	movlw	low(010h)
	xorwf	(6),f	;volatile
	line	114
	
l2293:	
;main.c: 114: B_OnOff = 1;
	bsf	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	line	117
	
l2295:	
;main.c: 115: }
;main.c: 117: KeyOldFlag = KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	movwf	(KeyServer@KeyOldFlag)
	goto	l326
	line	122
	
l2297:	
;main.c: 120: else
;main.c: 121: {
;main.c: 122: KeyOldFlag = 0;
	clrf	(KeyServer@KeyOldFlag)
	line	123
;main.c: 123: pressKey = 0;
	clrf	(_pressKey)
	line	125
	
l326:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 16 in file "D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	16
global __ptext7
__ptext7:	;psect for function _Init_System
psect	text7
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
	line	16
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2+status,0]
	line	18
	
l2209:	
# 18 "D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
nop ;# 
	line	19
# 19 "D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
clrwdt ;# 
psect	text7
	line	20
	
l2211:	
;main.c: 20: OPTION_REG |= 0x07;
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	line	22
	
l2213:	
;main.c: 22: OPTION_REG |= 0x08;
	bsf	(5)+(3/8),(3)&7	;volatile
	line	23
# 23 "D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
clrwdt ;# 
psect	text7
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\TouchKeyConst.h"
	line	5
	
l2215:	
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
	line	26
# 26 "D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
clrwdt ;# 
psect	text7
	line	28
	
l2217:	
;main.c: 28: INTCON = 0;
	clrf	(11)	;volatile
	line	29
	
l2219:	
;main.c: 29: OSCCON = 0X70;
	movlw	low(070h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	31
	
l2221:	
;main.c: 31: PORTB = 0;
	clrf	(6)	;volatile
	line	32
	
l2223:	
;main.c: 32: TRISB = 0;
	clrf	(7)	;volatile
	line	33
	
l2225:	
;main.c: 33: PORTB = 0X10;
	movlw	low(010h)
	movwf	(6)	;volatile
	line	34
	
l2227:	
;main.c: 34: WPUB = 0X10;
	movlw	low(010h)
	movwf	(8)	;volatile
	line	36
	
l2229:	
;main.c: 36: WPDB = 0;
	clrf	(24)	;volatile
	line	40
	
l2231:	
;main.c: 40: TMR0 = 6;
	movlw	low(06h)
	movwf	(1)	;volatile
	line	41
	
l2233:	
;main.c: 41: INTCON = 0XA0;
	movlw	low(0A0h)
	movwf	(11)	;volatile
	line	43
	
l2235:	
;main.c: 43: PwmData = 0xF0;
	movlw	0F0h
	movwf	(_PwmData)	;volatile
	clrf	(_PwmData+1)	;volatile
	line	44
	
l2237:	
;main.c: 44: PR2 =0XFF;
	movlw	low(0FFh)
	movwf	(18)	;volatile
	line	45
	
l309:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_CheckTouchKey

;; *************** function _CheckTouchKey *****************
;; Defined at:
;;		line 523 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_CheckKeyOldValue
;;		_CheckOnceResult
;;		_CheckValidTime
;;		_ClearResSum
;;		_GetTouchKeyValue
;;		_KeyStopClear
;;		_TurnKeyFlags
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	523
global __ptext8
__ptext8:	;psect for function _CheckTouchKey
psect	text8
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	523
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 2
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	525
	
l2675:	
;CheckTouchKey.c: 525: if(!b_kover)
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u2071
	goto	u2070
u2071:
	goto	l781
u2070:
	line	528
	
l2677:	
;CheckTouchKey.c: 526: {
;CheckTouchKey.c: 528: GetTouchKeyValue();
	fcall	_GetTouchKeyValue
	line	529
	
l2679:	
;CheckTouchKey.c: 529: if(++KeyCounter >= 8)
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u2081
	goto	u2080
u2081:
	goto	l2709
u2080:
	line	531
	
l2681:	
;CheckTouchKey.c: 530: {
;CheckTouchKey.c: 531: KeyCounter = 0;
	clrf	(_KeyCounter)
	line	532
	
l2683:	
;CheckTouchKey.c: 532: b_kover = 1;
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l2709
	line	535
	
l781:	
;CheckTouchKey.c: 535: else if(!b_kover1)
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u2091
	goto	u2090
u2091:
	goto	l2703
u2090:
	line	538
	
l2685:	
;CheckTouchKey.c: 536: {
;CheckTouchKey.c: 538: CheckOnceResult();
	fcall	_CheckOnceResult
	line	541
;CheckTouchKey.c: 541: TurnKeyFlags();
	fcall	_TurnKeyFlags
	line	542
	
l2687:	
;CheckTouchKey.c: 542: b_kover1 = 1;
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	548
	
l2689:	
;CheckTouchKey.c: 548: if(b_kerr || KeyCounter > KeyValidNumber)
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u2101
	goto	u2100
u2101:
	goto	l2693
u2100:
	
l2691:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u2111
	goto	u2110
u2111:
	goto	l2701
u2110:
	line	550
	
l2693:	
;CheckTouchKey.c: 549: {
;CheckTouchKey.c: 550: KeyStopClear();
	fcall	_KeyStopClear
	line	551
	
l2695:	
;CheckTouchKey.c: 551: b_kerr = 0;
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	552
	
l2697:	
;CheckTouchKey.c: 552: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	553
	
l2699:	
;CheckTouchKey.c: 553: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	555
	
l2701:	
;CheckTouchKey.c: 554: }
;CheckTouchKey.c: 555: KeyCounter = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_KeyCounter)
	line	556
;CheckTouchKey.c: 556: }
	goto	l2709
	line	560
	
l2703:	
;CheckTouchKey.c: 557: else
;CheckTouchKey.c: 558: {
;CheckTouchKey.c: 560: CheckKeyOldValue();
	fcall	_CheckKeyOldValue
	line	562
;CheckTouchKey.c: 562: ClearResSum();
	fcall	_ClearResSum
	line	564
	
l2705:	
;CheckTouchKey.c: 564: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	565
	
l2707:	
;CheckTouchKey.c: 565: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	568
	
l2709:	
;CheckTouchKey.c: 566: }
;CheckTouchKey.c: 568: CheckValidTime();
	fcall	_CheckValidTime
	line	569
	
l789:	
	return
	opt stack 0
GLOBAL	__end_of_CheckTouchKey
	__end_of_CheckTouchKey:
	signat	_CheckTouchKey,89
	global	_TurnKeyFlags

;; *************** function _TurnKeyFlags *****************
;; Defined at:
;;		line 410 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 900/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_KeyClearIn
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	line	410
global __ptext9
__ptext9:	;psect for function _TurnKeyFlags
psect	text9
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	410
	global	__size_of_TurnKeyFlags
	__size_of_TurnKeyFlags	equ	__end_of_TurnKeyFlags-_TurnKeyFlags
	
_TurnKeyFlags:	
;incstack = 0
	opt	stack 2
; Regs used in _TurnKeyFlags: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	415
	
l2625:	
;CheckTouchKey.c: 412: static unsigned char KeyHaveTimes = 0;
;CheckTouchKey.c: 413: static unsigned char KeyNoTimes = 0;
;CheckTouchKey.c: 415: if(KeyData[0] | KeyData[1])
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u1981
	goto	u1980
u1981:
	goto	l2651
u1980:
	line	417
	
l2627:	
;CheckTouchKey.c: 416: {
;CheckTouchKey.c: 417: KeyNoTimes = 0;
	clrf	(TurnKeyFlags@KeyNoTimes)
	line	419
	
l2629:	
;CheckTouchKey.c: 419: if(KeyData[0] == KeyOldData[0] && KeyData[1] == KeyOldData[1])
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u1991
	goto	u1990
u1991:
	goto	l762
u1990:
	
l2631:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u2001
	goto	u2000
u2001:
	goto	l762
u2000:
	line	421
	
l2633:	
	movlw	low(02h)
	incf	(TurnKeyFlags@KeyHaveTimes),f
	subwf	((TurnKeyFlags@KeyHaveTimes)),w
	skipc
	goto	u2011
	goto	u2010
u2011:
	goto	l769
u2010:
	line	423
	
l2635:	
;CheckTouchKey.c: 422: {
;CheckTouchKey.c: 423: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	line	424
	
l2637:	
;CheckTouchKey.c: 424: KeyFlag[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	line	425
	
l2639:	
;CheckTouchKey.c: 425: KeyFlag[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	line	429
	
l2641:	
;CheckTouchKey.c: 428: {
;CheckTouchKey.c: 429: if(!b_kclr)
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u2021
	goto	u2020
u2021:
	goto	l766
u2020:
	line	431
	
l2643:	
;CheckTouchKey.c: 430: {
;CheckTouchKey.c: 431: b_kclr = 1;
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	432
	
l2645:	
;CheckTouchKey.c: 432: KeyClearIn();
	fcall	_KeyClearIn
	goto	l769
	line	437
	
l762:	
	line	439
;CheckTouchKey.c: 437: else
;CheckTouchKey.c: 438: {
;CheckTouchKey.c: 439: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	440
	
l2647:	
;CheckTouchKey.c: 440: KeyOldData[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	line	441
;CheckTouchKey.c: 441: KeyOldData[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	line	442
	
l2649:	
;CheckTouchKey.c: 442: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	goto	l769
	line	443
	
l766:	
	line	444
;CheckTouchKey.c: 443: }
;CheckTouchKey.c: 444: }
	goto	l769
	line	447
	
l2651:	
;CheckTouchKey.c: 445: else
;CheckTouchKey.c: 446: {
;CheckTouchKey.c: 447: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	line	448
;CheckTouchKey.c: 448: KeyOldData[0] = 0;
	clrf	(_KeyOldData)	;volatile
	line	449
;CheckTouchKey.c: 449: KeyOldData[1] = 0;
	clrf	0+(_KeyOldData)+01h	;volatile
	line	451
	
l2653:	
;CheckTouchKey.c: 451: if(++KeyNoTimes >=2)
	movlw	low(02h)
	incf	(TurnKeyFlags@KeyNoTimes),f
	subwf	((TurnKeyFlags@KeyNoTimes)),w
	skipc
	goto	u2031
	goto	u2030
u2031:
	goto	l769
u2030:
	line	453
	
l2655:	
;CheckTouchKey.c: 452: {
;CheckTouchKey.c: 453: KeyNoTimes = 0;
	clrf	(TurnKeyFlags@KeyNoTimes)
	line	454
;CheckTouchKey.c: 454: KeyFlag[0] = 0;
	clrf	(_KeyFlag)	;volatile
	line	455
;CheckTouchKey.c: 455: KeyFlag[1] = 0;
	clrf	0+(_KeyFlag)+01h	;volatile
	line	457
	
l2657:	
;CheckTouchKey.c: 457: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	460
	
l769:	
	return
	opt stack 0
GLOBAL	__end_of_TurnKeyFlags
	__end_of_TurnKeyFlags:
	signat	_TurnKeyFlags,89
	global	_KeyClearIn

;; *************** function _KeyClearIn *****************
;; Defined at:
;;		line 97 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 900/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_KeyClearOne
;;		_KeyIsIn
;; This function is called by:
;;		_TurnKeyFlags
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	line	97
global __ptext10
__ptext10:	;psect for function _KeyClearIn
psect	text10
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	97
	global	__size_of_KeyClearIn
	__size_of_KeyClearIn	equ	__end_of_KeyClearIn-_KeyClearIn
	
_KeyClearIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyClearIn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	100
	
l2401:	
;CheckTouchKey.c: 99: unsigned char cnt;
;CheckTouchKey.c: 100: for(cnt=0;cnt < KeyTotalNumber;cnt++)
	clrf	(KeyClearIn@cnt)
	line	102
	
l2407:	
;CheckTouchKey.c: 101: {
;CheckTouchKey.c: 102: if(!KeyIsIn(cnt))
	movf	(KeyClearIn@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1611
	goto	u1610
u1611:
	goto	l2411
u1610:
	line	104
	
l2409:	
;CheckTouchKey.c: 103: {
;CheckTouchKey.c: 104: KeyClearOne(cnt);
	movf	(KeyClearIn@cnt),w
	fcall	_KeyClearOne
	line	100
	
l2411:	
	incf	(KeyClearIn@cnt),f
	
l2413:	
	movf	((KeyClearIn@cnt)),w
	btfsc	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l2407
u1620:
	line	107
	
l677:	
	return
	opt stack 0
GLOBAL	__end_of_KeyClearIn
	__end_of_KeyClearIn:
	signat	_KeyClearIn,89
	global	_KeyStopClear

;; *************** function _KeyStopClear *****************
;; Defined at:
;;		line 116 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 800/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_KeyClearOne
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	line	116
global __ptext11
__ptext11:	;psect for function _KeyStopClear
psect	text11
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	116
	global	__size_of_KeyStopClear
	__size_of_KeyStopClear	equ	__end_of_KeyStopClear-_KeyStopClear
	
_KeyStopClear:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	119
	
l2005:	
;CheckTouchKey.c: 118: unsigned char i;
;CheckTouchKey.c: 119: KeyFlag[0] = 0;
	clrf	(_KeyFlag)	;volatile
	line	120
;CheckTouchKey.c: 120: KeyFlag[1] = 0;
	clrf	0+(_KeyFlag)+01h	;volatile
	line	121
;CheckTouchKey.c: 121: for(i = 0; i < KeyTotalNumber; i++)
	clrf	(KeyStopClear@i)
	line	123
	
l2011:	
;CheckTouchKey.c: 122: {
;CheckTouchKey.c: 123: KeyResSum[i] = 0;
	clrc
	rlf	(KeyStopClear@i),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	124
	
l2013:	
;CheckTouchKey.c: 124: KeyClearOne(i);
	movf	(KeyStopClear@i),w
	fcall	_KeyClearOne
	line	121
	
l2015:	
	incf	(KeyStopClear@i),f
	
l2017:	
	movf	((KeyStopClear@i)),w
	btfsc	status,2
	goto	u991
	goto	u990
u991:
	goto	l2011
u990:
	line	126
	
l682:	
	return
	opt stack 0
GLOBAL	__end_of_KeyStopClear
	__end_of_KeyStopClear:
	signat	_KeyStopClear,89
	global	_GetTouchKeyValue

;; *************** function _GetTouchKeyValue *****************
;; Defined at:
;;		line 189 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wake            2    3[COMMON] unsigned int 
;;  cnt             1    6[COMMON] unsigned char 
;;  temp            1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         4       0       0
;;      Temps:          0       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ClearResSum
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	line	189
global __ptext12
__ptext12:	;psect for function _GetTouchKeyValue
psect	text12
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	189
	global	__size_of_GetTouchKeyValue
	__size_of_GetTouchKeyValue	equ	__end_of_GetTouchKeyValue-_GetTouchKeyValue
	
_GetTouchKeyValue:	
;incstack = 0
	opt	stack 4
; Regs used in _GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	191
	
l2019:	
;CheckTouchKey.c: 191: unsigned char cnt = 0,temp;
	clrf	(GetTouchKeyValue@cnt)
	line	192
	
l2021:	
;CheckTouchKey.c: 192: unsigned int wake = 1;
	clrf	(GetTouchKeyValue@wake)
	incf	(GetTouchKeyValue@wake),f
	clrf	(GetTouchKeyValue@wake+1)
	line	195
	
l2023:	
	btfss	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	goto	u1001
	goto	u1000
u1001:
	goto	l2027
u1000:
	
l2025:	
	btfss	(GetTouchKeyValue@wake),(0)&7
	goto	u1011
	goto	u1010
u1011:
	goto	l2053
u1010:
	line	197
	
l2027:	
;CheckTouchKey.c: 196: {
;CheckTouchKey.c: 197: KEYCON0 = 0;
	clrf	(12)	;volatile
	line	198
;CheckTouchKey.c: 198: KEYCON1 = 0;
	clrf	(13)	;volatile
	line	199
	
l2029:	
;CheckTouchKey.c: 199: KEYCON2 = Table_C_LVBO[cnt] | 0x01;
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_C_LVBO)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	iorlw	01h
	movwf	(22)	;volatile
	line	201
	
l2031:	
;CheckTouchKey.c: 201: TRISB5 = 0;
	bcf	(61/8),(61)&7	;volatile
	line	202
	
l2033:	
;CheckTouchKey.c: 202: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	204
# 204 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	205
# 205 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	206
# 206 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	207
# 207 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	208
# 208 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	209
# 209 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	210
# 210 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	211
# 211 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	212
# 212 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	213
# 213 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	214
# 214 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
psect	text12
	line	215
	
l2035:	
;CheckTouchKey.c: 215: TRISB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	217
	
l2037:	
;CheckTouchKey.c: 217: KEYCON0 = Table_KeyCap[cnt];
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(12)	;volatile
	line	218
	
l2039:	
;CheckTouchKey.c: 218: KEYCON1 = Table_KeyChannel[cnt];
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(13)	;volatile
	line	219
# 219 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	220
# 220 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
psect	text12
	line	221
	
l2041:	
;CheckTouchKey.c: 221: KEYCON0 |= 0x1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(12)+(0/8),(0)&7	;volatile
	line	223
	
l2043:	
;CheckTouchKey.c: 223: temp = 0;
	clrf	(GetTouchKeyValue@temp)
	line	224
;CheckTouchKey.c: 224: while(!(KEYCON0&0x80))
	goto	l703
	
l704:	
	line	226
;CheckTouchKey.c: 225: {
;CheckTouchKey.c: 226: if(0 == (--temp))
	decfsz	(GetTouchKeyValue@temp),f
	goto	u1021
	goto	u1020
u1021:
	goto	l703
u1020:
	line	228
	
l2045:	
;CheckTouchKey.c: 227: {
;CheckTouchKey.c: 228: KeyCounter = 255;
	movlw	low(0FFh)
	movwf	(_KeyCounter)
	line	229
	
l2047:	
;CheckTouchKey.c: 229: ClearResSum();
	fcall	_ClearResSum
	goto	l706
	line	232
	
l703:	
	line	224
	btfss	(12),(7)&7	;volatile
	goto	u1031
	goto	u1030
u1031:
	goto	l704
u1030:
	line	234
	
l2051:	
;CheckTouchKey.c: 231: }
;CheckTouchKey.c: 232: }
;CheckTouchKey.c: 234: KeyResSum[cnt] += (unsigned int)((KEYDATAH<<8) | KEYDATAL);
	clrc
	rlf	(GetTouchKeyValue@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(14),w	;volatile
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movf	(15),w	;volatile
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	236
	
l2053:	
;CheckTouchKey.c: 235: }
;CheckTouchKey.c: 236: wake <<= 1;
	clrc
	rlf	(GetTouchKeyValue@wake),f
	rlf	(GetTouchKeyValue@wake+1),f
	line	237
	
l2055:	
	incf	(GetTouchKeyValue@cnt),f
	btfsc	status,2
	goto	u1041
	goto	u1040
u1041:
	goto	l2023
u1040:
	
l708:	
	line	238
;CheckTouchKey.c: 238: b_ksleep = 0;
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	line	239
	
l706:	
	return
	opt stack 0
GLOBAL	__end_of_GetTouchKeyValue
	__end_of_GetTouchKeyValue:
	signat	_GetTouchKeyValue,89
	global	_ClearResSum

;; *************** function _ClearResSum *****************
;; Defined at:
;;		line 135 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 800/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_GetTouchKeyValue
;;		_CheckTouchKey
;;		_SystemEnterSleep
;;		_GetTouchKeyValue_Sleep
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=1
	line	135
global __ptext13
__ptext13:	;psect for function _ClearResSum
psect	text13
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	135
	global	__size_of_ClearResSum
	__size_of_ClearResSum	equ	__end_of_ClearResSum-_ClearResSum
	
_ClearResSum:	
;incstack = 0
	opt	stack 3
; Regs used in _ClearResSum: [wreg-fsr0h+status,2+status,0]
	line	137
	
l1811:	
;CheckTouchKey.c: 137: unsigned char cnt = 0;
	clrf	(ClearResSum@cnt)
	line	140
	
l1813:	
;CheckTouchKey.c: 139: {
;CheckTouchKey.c: 140: KeyResSum[cnt] = 0;
	clrc
	rlf	(ClearResSum@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	141
	
l1815:	
	incf	(ClearResSum@cnt),f
	btfsc	status,2
	goto	u781
	goto	u780
u781:
	goto	l1813
u780:
	line	142
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_ClearResSum
	__end_of_ClearResSum:
	signat	_ClearResSum,89
	global	_CheckValidTime

;; *************** function _CheckValidTime *****************
;; Defined at:
;;		line 495 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
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
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	line	495
global __ptext14
__ptext14:	;psect for function _CheckValidTime
psect	text14
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	495
	global	__size_of_CheckValidTime
	__size_of_CheckValidTime	equ	__end_of_CheckValidTime-_CheckValidTime
	
_CheckValidTime:	
;incstack = 0
	opt	stack 5
; Regs used in _CheckValidTime: [wreg+status,2+status,0]
	line	501
	
l2199:	
;CheckTouchKey.c: 500: {
;CheckTouchKey.c: 501: if(KeyFlag[0] | KeyFlag[1])
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u1331
	goto	u1330
u1331:
	goto	l2205
u1330:
	line	503
	
l2201:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(CheckValidTime@validtime),f
	skipnz
	incf	(CheckValidTime@validtime+1),f
	movlw	03Ah
	subwf	((CheckValidTime@validtime+1)),w
	movlw	098h
	skipnz
	subwf	((CheckValidTime@validtime)),w
	skipc
	goto	u1341
	goto	u1340
u1341:
	goto	l778
u1340:
	line	505
	
l2203:	
;CheckTouchKey.c: 504: {
;CheckTouchKey.c: 505: b_kerr = 1;
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	506
	
l2205:	
;CheckTouchKey.c: 506: validtime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(CheckValidTime@validtime)
	clrf	(CheckValidTime@validtime+1)
	line	514
	
l778:	
	return
	opt stack 0
GLOBAL	__end_of_CheckValidTime
	__end_of_CheckValidTime:
	signat	_CheckValidTime,89
	global	_CheckOnceResult

;; *************** function _CheckOnceResult *****************
;; Defined at:
;;		line 249 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  KeyResTemp      2    6[BANK0 ] unsigned int 
;;  KeyValue        2    3[BANK0 ] unsigned int 
;;  OldValue        2    0[BANK0 ] unsigned int 
;;  cnt             1    8[BANK0 ] unsigned char 
;;  KeyDown         1    5[BANK0 ] unsigned char 
;;  flag            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 900/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       9       0
;;      Temps:          4       0       0
;;      Totals:         4       9       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_KeyClearOne
;;		_KeyHave
;;		_KeyIsIn
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	line	249
global __ptext15
__ptext15:	;psect for function _CheckOnceResult
psect	text15
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	249
	global	__size_of_CheckOnceResult
	__size_of_CheckOnceResult	equ	__end_of_CheckOnceResult-_CheckOnceResult
	
_CheckOnceResult:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	251
	
l2517:	
;CheckTouchKey.c: 251: unsigned char cnt = 0;
	clrf	(CheckOnceResult@cnt)
	line	259
;CheckTouchKey.c: 252: unsigned char KeyDown;
;CheckTouchKey.c: 253: unsigned char flag;
;CheckTouchKey.c: 255: unsigned int KeyResTemp;
;CheckTouchKey.c: 256: unsigned int KeyValue;
;CheckTouchKey.c: 257: unsigned int OldValue;
;CheckTouchKey.c: 259: KeyData[0] = 0;
	clrf	(_KeyData)	;volatile
	line	260
;CheckTouchKey.c: 260: KeyData[1] = 0;
	clrf	0+(_KeyData)+01h	;volatile
	line	261
;CheckTouchKey.c: 261: KeyMaxSub = 0;
	clrf	(_KeyMaxSub)
	line	266
	
l2519:	
;CheckTouchKey.c: 265: {
;CheckTouchKey.c: 266: flag = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(CheckOnceResult@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@flag)
	line	268
	
l2521:	
;CheckTouchKey.c: 268: KeyResSum[cnt] >>= 3;
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u1765:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank0
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u1760:
	addlw	-1
	skipz
	goto	u1765
	line	269
	
l2523:	
;CheckTouchKey.c: 269: KeyResTemp = KeyResSum[cnt];
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@KeyResTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@KeyResTemp+1)
	line	270
	
l2525:	
;CheckTouchKey.c: 270: KeyDown = Table_KeyDown[cnt];
	movf	(CheckOnceResult@cnt),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@KeyDown)
	line	272
	
l2527:	
;CheckTouchKey.c: 272: KeyValue = KeyResTemp + KeyDown;
	movf	(CheckOnceResult@KeyDown),w
	movwf	(CheckOnceResult@KeyValue)
	clrf	(CheckOnceResult@KeyValue+1)
	
l2529:	
	movf	(CheckOnceResult@KeyResTemp),w
	addwf	(CheckOnceResult@KeyValue),f
	skipnc
	incf	(CheckOnceResult@KeyValue+1),f
	movf	(CheckOnceResult@KeyResTemp+1),w
	addwf	(CheckOnceResult@KeyValue+1),f
	line	274
	
l2531:	
;CheckTouchKey.c: 274: if(!KeyIsIn(cnt))
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l2561
u1770:
	line	277
	
l2533:	
;CheckTouchKey.c: 275: {
;CheckTouchKey.c: 277: OldValue = KeyOldValue2[cnt];
	bcf	status, 5	;RP0=0, select bank0
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(CheckOnceResult@OldValue)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@OldValue+1)
	line	279
;CheckTouchKey.c: 279: if(KeyReference[cnt] > KeyValue)
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	1+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue+1),w
	skipz
	goto	u1785
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue),w
u1785:
	skipnc
	goto	u1781
	goto	u1780
u1781:
	goto	l2537
u1780:
	line	281
	
l2535:	
;CheckTouchKey.c: 280: {
;CheckTouchKey.c: 281: KeyResTemp = KeyReference[cnt] - KeyResTemp;
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+0)+0,w
	movwf	(CheckOnceResult@KeyResTemp)
	movf	(CheckOnceResult@KeyResTemp+1),w
	skipc
	incf	(CheckOnceResult@KeyResTemp+1),w
	subwf	1+(??_CheckOnceResult+0)+0,w
	movwf	1+(CheckOnceResult@KeyResTemp)
	line	282
;CheckTouchKey.c: 282: }
	goto	l2545
	line	283
	
l2537:	
;CheckTouchKey.c: 283: else if ((OldValue > KeyValue) && (KeyOldValue1[cnt] > KeyValue))
	movf	(CheckOnceResult@OldValue+1),w
	subwf	(CheckOnceResult@KeyValue+1),w
	skipz
	goto	u1795
	movf	(CheckOnceResult@OldValue),w
	subwf	(CheckOnceResult@KeyValue),w
u1795:
	skipnc
	goto	u1791
	goto	u1790
u1791:
	goto	l2583
u1790:
	
l2539:	
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	1+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue+1),w
	skipz
	goto	u1805
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue),w
u1805:
	skipnc
	goto	u1801
	goto	u1800
u1801:
	goto	l2583
u1800:
	line	285
	
l2541:	
;CheckTouchKey.c: 284: {
;CheckTouchKey.c: 285: KeyReference[cnt] = OldValue;
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@OldValue),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@OldValue+1),w
	movwf	indf
	line	286
	
l2543:	
;CheckTouchKey.c: 286: KeyResTemp = OldValue - KeyResTemp;
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	(CheckOnceResult@OldValue),w
	movwf	(CheckOnceResult@KeyResTemp)
	movf	(CheckOnceResult@KeyResTemp+1),w
	skipc
	incf	(CheckOnceResult@KeyResTemp+1),w
	subwf	(CheckOnceResult@OldValue+1),w
	movwf	1+(CheckOnceResult@KeyResTemp)
	line	293
;CheckTouchKey.c: 287: }
	
l2545:	
;CheckTouchKey.c: 291: }
;CheckTouchKey.c: 293: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	297
	
l2547:	
;CheckTouchKey.c: 296: {
;CheckTouchKey.c: 297: if(KeyResTemp >> 8)
	movf	(0+(CheckOnceResult@KeyResTemp)+01h),w
	btfsc	status,2
	goto	u1811
	goto	u1810
u1811:
	goto	l2551
u1810:
	line	299
	
l2549:	
;CheckTouchKey.c: 298: {
;CheckTouchKey.c: 299: KeyDown = 0xFF;
	movlw	low(0FFh)
	movwf	(CheckOnceResult@KeyDown)
	line	300
;CheckTouchKey.c: 300: }
	goto	l720
	line	303
	
l2551:	
;CheckTouchKey.c: 301: else
;CheckTouchKey.c: 302: {
;CheckTouchKey.c: 303: KeyDown = KeyResTemp & 0xFF;
	movf	(CheckOnceResult@KeyResTemp),w
	movwf	(CheckOnceResult@KeyDown)
	line	304
	
l720:	
	line	306
;CheckTouchKey.c: 304: }
;CheckTouchKey.c: 306: if(KeyMaxSub < KeyDown)
	movf	(CheckOnceResult@KeyDown),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u1821
	goto	u1820
u1821:
	goto	l2557
u1820:
	line	308
	
l2553:	
;CheckTouchKey.c: 307: {
;CheckTouchKey.c: 308: KeyMaxSub = KeyDown;
	movf	(CheckOnceResult@KeyDown),w
	movwf	(_KeyMaxSub)
	line	309
	
l2555:	
;CheckTouchKey.c: 309: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag),w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyHave
	line	310
;CheckTouchKey.c: 310: }
	goto	l2583
	line	313
	
l2557:	
;CheckTouchKey.c: 311: else
;CheckTouchKey.c: 312: {
;CheckTouchKey.c: 313: KeyCounter++;
	incf	(_KeyCounter),f
	goto	l2583
	line	326
	
l2561:	
;CheckTouchKey.c: 322: else
;CheckTouchKey.c: 323: {
;CheckTouchKey.c: 326: if(KeyReference[cnt]+1 < KeyValue)
	bcf	status, 5	;RP0=0, select bank0
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	0+(??_CheckOnceResult+0)+0,w
	addlw	low(01h)
	movwf	(??_CheckOnceResult+2)+0
	movf	1+(??_CheckOnceResult+0)+0,w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(??_CheckOnceResult+2)+0
	movf	(CheckOnceResult@KeyValue+1),w
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u1835
	movf	(CheckOnceResult@KeyValue),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1835:
	skipnc
	goto	u1831
	goto	u1830
u1831:
	goto	l2567
u1830:
	goto	l2583
	line	330
	
l2567:	
;CheckTouchKey.c: 330: else if((KeyOldValue2[cnt]+KeyDown<KeyResTemp) || (KeyOldValue1[cnt]+KeyDown<KeyResTemp))
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	(CheckOnceResult@KeyDown),w
	addwf	0+(??_CheckOnceResult+0)+0,w
	movwf	(??_CheckOnceResult+2)+0
	movf	1+(??_CheckOnceResult+0)+0,w
	skipnc
	incf	1+(??_CheckOnceResult+0)+0,w
	movwf	((??_CheckOnceResult+2)+0)+1
	movf	(CheckOnceResult@KeyResTemp+1),w
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u1845
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1845:
	skipc
	goto	u1841
	goto	u1840
u1841:
	goto	l2571
u1840:
	
l2569:	
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	(CheckOnceResult@KeyDown),w
	addwf	0+(??_CheckOnceResult+0)+0,w
	movwf	(??_CheckOnceResult+2)+0
	movf	1+(??_CheckOnceResult+0)+0,w
	skipnc
	incf	1+(??_CheckOnceResult+0)+0,w
	movwf	((??_CheckOnceResult+2)+0)+1
	movf	(CheckOnceResult@KeyResTemp+1),w
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u1855
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1855:
	skipnc
	goto	u1851
	goto	u1850
u1851:
	goto	l2575
u1850:
	line	332
	
l2571:	
;CheckTouchKey.c: 331: {
;CheckTouchKey.c: 332: if(++KeyUpShake[cnt] > 8)
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l726
u1860:
	line	334
	
l2573:	
;CheckTouchKey.c: 333: {
;CheckTouchKey.c: 334: KeyClearOne(cnt);
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyClearOne
	line	335
;CheckTouchKey.c: 335: continue;
	goto	l2583
	line	340
	
l2575:	
;CheckTouchKey.c: 338: else
;CheckTouchKey.c: 339: {
;CheckTouchKey.c: 340: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l2579
	line	341
	
l726:	
	line	347
	
l2579:	
;CheckTouchKey.c: 347: else if(!(KeyData[0] | KeyData[1]))
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfss	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l2583
u1870:
	line	349
	
l2581:	
;CheckTouchKey.c: 348: {
;CheckTouchKey.c: 349: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag),w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyHave
	line	352
	
l2583:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(CheckOnceResult@cnt),f
	btfsc	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l2519
u1880:
	line	353
	
l736:	
	return
	opt stack 0
GLOBAL	__end_of_CheckOnceResult
	__end_of_CheckOnceResult:
	signat	_CheckOnceResult,89
	global	_KeyHave

;; *************** function _KeyHave *****************
;; Defined at:
;;		line 151 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;;  flag            2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  cnt             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 900/0
;;		On exit  : 900/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CheckOnceResult
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	line	151
global __ptext16
__ptext16:	;psect for function _KeyHave
psect	text16
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	151
	global	__size_of_KeyHave
	__size_of_KeyHave	equ	__end_of_KeyHave-_KeyHave
	
_KeyHave:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyHave: [wreg+status,2+status,0]
;KeyHave@cnt stored from wreg
	movwf	(KeyHave@cnt)
	line	153
	
l1831:	
;CheckTouchKey.c: 153: KeyCounter++;
	incf	(_KeyCounter),f
	line	157
	
l1833:	
;CheckTouchKey.c: 156: {
;CheckTouchKey.c: 157: KeyData[0] = 0;
	clrf	(_KeyData)	;volatile
	line	158
	
l1835:	
;CheckTouchKey.c: 158: KeyData[1] = 0;
	clrf	0+(_KeyData)+01h	;volatile
	line	159
	
l1837:	
;CheckTouchKey.c: 159: if(cnt&0x8)
	btfss	(KeyHave@cnt),(3)&7
	goto	u811
	goto	u810
u811:
	goto	l1841
u810:
	line	161
	
l1839:	
;CheckTouchKey.c: 160: {
;CheckTouchKey.c: 161: KeyData[1] = flag;
	movf	(KeyHave@flag),w
	movwf	0+(_KeyData)+01h	;volatile
	line	162
;CheckTouchKey.c: 162: }
	goto	l696
	line	165
	
l1841:	
;CheckTouchKey.c: 163: else
;CheckTouchKey.c: 164: {
;CheckTouchKey.c: 165: KeyData[0] = flag;
	movf	(KeyHave@flag),w
	movwf	(_KeyData)	;volatile
	line	179
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_KeyHave
	__end_of_KeyHave:
	signat	_KeyHave,8313
	global	_KeyClearOne

;; *************** function _KeyClearOne *****************
;; Defined at:
;;		line 89 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 800/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_KeyClearIn
;;		_KeyStopClear
;;		_CheckOnceResult
;;		_SystemEnterSleep
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	line	89
global __ptext17
__ptext17:	;psect for function _KeyClearOne
psect	text17
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	89
	global	__size_of_KeyClearOne
	__size_of_KeyClearOne	equ	__end_of_KeyClearOne-_KeyClearOne
	
_KeyClearOne:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyClearOne: [wreg-fsr0h+status,2+status,0]
;KeyClearOne@cnt stored from wreg
	movwf	(KeyClearOne@cnt)
	line	91
	
l1809:	
;CheckTouchKey.c: 91: KeyOldValue0[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	92
;CheckTouchKey.c: 92: KeyOldValue1[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	93
;CheckTouchKey.c: 93: KeyOldValue2[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	94
;CheckTouchKey.c: 94: KeyReference[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	95
	
l671:	
	return
	opt stack 0
GLOBAL	__end_of_KeyClearOne
	__end_of_KeyClearOne:
	signat	_KeyClearOne,4217
	global	_CheckKeyOldValue

;; *************** function _CheckKeyOldValue *****************
;; Defined at:
;;		line 363 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  KeyOldTemp      2    2[BANK0 ] unsigned int 
;;  KeyResTemp      2    0[BANK0 ] unsigned int 
;;  cnt             1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       5       0
;;      Temps:          2       0       0
;;      Totals:         2       5       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_KeyIsIn
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	line	363
global __ptext18
__ptext18:	;psect for function _CheckKeyOldValue
psect	text18
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	363
	global	__size_of_CheckKeyOldValue
	__size_of_CheckKeyOldValue	equ	__end_of_CheckKeyOldValue-_CheckKeyOldValue
	
_CheckKeyOldValue:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	366
	
l2585:	
;CheckTouchKey.c: 365: static unsigned char counter = 0;
;CheckTouchKey.c: 366: unsigned char cnt = 0;
	clrf	(CheckKeyOldValue@cnt)
	line	370
	
l2587:	
;CheckTouchKey.c: 367: unsigned int KeyResTemp;
;CheckTouchKey.c: 368: unsigned int KeyOldTemp;
;CheckTouchKey.c: 370: if(++counter < 4)
	movlw	low(04h)
	incf	(CheckKeyOldValue@counter),f
	subwf	((CheckKeyOldValue@counter)),w
	skipnc
	goto	u1891
	goto	u1890
u1891:
	goto	l2591
u1890:
	goto	l742
	line	372
	
l2591:	
;CheckTouchKey.c: 372: counter = 0;
	clrf	(CheckKeyOldValue@counter)
	line	376
	
l2593:	
;CheckTouchKey.c: 375: {
;CheckTouchKey.c: 376: KeyResTemp = KeyResSum[cnt];
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyResTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyResTemp+1)
	line	377
	
l2595:	
;CheckTouchKey.c: 377: if(!KeyIsIn(cnt))
	movf	(CheckKeyOldValue@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1901
	goto	u1900
u1901:
	goto	l744
u1900:
	line	380
	
l2597:	
;CheckTouchKey.c: 378: {
;CheckTouchKey.c: 380: KeyOldTemp = KeyOldValue0[cnt] - KeyResTemp;
	bcf	status, 5	;RP0=0, select bank0
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp+1)
	
l2599:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	381
	
l2601:	
;CheckTouchKey.c: 381: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u1911
	goto	u1910
u1911:
	goto	l2605
u1910:
	
l2603:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u1921
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u1921
	goto	u1920
u1921:
	goto	l744
u1920:
	line	383
	
l2605:	
;CheckTouchKey.c: 382: {
;CheckTouchKey.c: 383: KeyOldTemp = KeyOldValue1[cnt] - KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp+1)
	
l2607:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	384
	
l2609:	
;CheckTouchKey.c: 384: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u1931
	goto	u1930
u1931:
	goto	l2613
u1930:
	
l2611:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u1941
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u1941
	goto	u1940
u1941:
	goto	l744
u1940:
	line	386
	
l2613:	
;CheckTouchKey.c: 385: {
;CheckTouchKey.c: 386: KeyOldTemp = KeyOldValue2[cnt] - KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp+1)
	
l2615:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	387
	
l2617:	
;CheckTouchKey.c: 387: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u1951
	goto	u1950
u1951:
	goto	l2621
u1950:
	
l2619:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u1961
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u1961
	goto	u1960
u1961:
	goto	l744
u1960:
	line	389
	
l2621:	
;CheckTouchKey.c: 388: {
;CheckTouchKey.c: 389: KeyReference[cnt] = KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@KeyResTemp),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	movwf	indf
	line	393
	
l744:	
	line	396
;CheckTouchKey.c: 390: }
;CheckTouchKey.c: 391: }
;CheckTouchKey.c: 392: }
;CheckTouchKey.c: 393: }
;CheckTouchKey.c: 396: KeyOldValue2[cnt] = KeyOldValue1[cnt];
	bcf	status, 5	;RP0=0, select bank0
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_CheckKeyOldValue+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckKeyOldValue+0)+0+1
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_CheckKeyOldValue+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_CheckKeyOldValue+0)+0,w
	movwf	indf
	line	397
;CheckTouchKey.c: 397: KeyOldValue1[cnt] = KeyOldValue0[cnt];
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckKeyOldValue+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckKeyOldValue+0)+0+1
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_CheckKeyOldValue+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_CheckKeyOldValue+0)+0,w
	movwf	indf
	line	398
;CheckTouchKey.c: 398: KeyOldValue0[cnt] = KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@KeyResTemp),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	movwf	indf
	line	399
	
l2623:	
	incf	(CheckKeyOldValue@cnt),f
	btfsc	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l2593
u1970:
	line	400
	
l742:	
	return
	opt stack 0
GLOBAL	__end_of_CheckKeyOldValue
	__end_of_CheckKeyOldValue:
	signat	_CheckKeyOldValue,89
	global	_KeyIsIn

;; *************** function _KeyIsIn *****************
;; Defined at:
;;		line 67 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    3[COMMON] unsigned char 
;;  i               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    2
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_KeyClearIn
;;		_CheckOnceResult
;;		_CheckKeyOldValue
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	line	67
global __ptext19
__ptext19:	;psect for function _KeyIsIn
psect	text19
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	67
	global	__size_of_KeyIsIn
	__size_of_KeyIsIn	equ	__end_of_KeyIsIn-_KeyIsIn
	
_KeyIsIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyIsIn: [wreg-fsr0h+status,2+status,0+pclath]
;KeyIsIn@cnt stored from wreg
	movwf	(KeyIsIn@cnt)
	line	69
	
l2389:	
;CheckTouchKey.c: 69: unsigned char i = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(KeyIsIn@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@i)
	line	71
	
l2391:	
;CheckTouchKey.c: 71: if(cnt&0x8)
	btfss	(KeyIsIn@cnt),(3)&7
	goto	u1601
	goto	u1600
u1601:
	goto	l2395
u1600:
	line	73
	
l2393:	
;CheckTouchKey.c: 72: {
;CheckTouchKey.c: 73: i &= KeyFlag[1];
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@i),f
	line	74
;CheckTouchKey.c: 74: }
	goto	l2397
	line	77
	
l2395:	
;CheckTouchKey.c: 75: else
;CheckTouchKey.c: 76: {
;CheckTouchKey.c: 77: i &= KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@i),f
	line	79
	
l2397:	
;CheckTouchKey.c: 78: }
;CheckTouchKey.c: 79: return i;
	movf	(KeyIsIn@i),w
	line	80
	
l668:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 130 in file "D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
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
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          2       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
	line	130
global __ptext20
__ptext20:	;psect for function _Isr_Timer
psect	text20
	file	"D:\ÎÒµÄÎÄµµ\Documents\WeChat Files\hmm665544\FileStorage\File\2020-07\GS_01 ´¥Ãþ(1)\GS_01 ´¥Ãþ\GN_101bt\main.c"
	line	130
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 2
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
psect	text20
	line	132
	
i1l2361:	
;main.c: 132: if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u157_21
	goto	u157_20
u157_21:
	goto	i1l2371
u157_20:
	line	134
	
i1l2363:	
;main.c: 133: {
;main.c: 134: TMR0 += 6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	addwf	(1),f	;volatile
	line	135
	
i1l2365:	
;main.c: 135: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	136
;main.c: 136: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u158_21
	goto	u158_20
u158_21:
	goto	i1l334
u158_20:
	line	138
	
i1l2367:	
;main.c: 137: {
;main.c: 138: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	139
	
i1l2369:	
;main.c: 139: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	i1l334
	line	144
	
i1l2371:	
;main.c: 142: else
;main.c: 143: {
;main.c: 144: INTCON = 0XA0;
	movlw	low(0A0h)
	movwf	(11)	;volatile
	line	145
	
i1l2373:	
;main.c: 145: PIR1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(29)	;volatile
	line	148
	
i1l334:	
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
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
