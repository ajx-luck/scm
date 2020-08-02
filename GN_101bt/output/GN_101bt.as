opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F2852
opt include "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\include\sc8f2852.cgen.inc"
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
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
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
	global	_Table_KeyChannel
psect	strings
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\Touch_Kscan_Library.h"
	line	63
_Table_KeyChannel:
	retlw	052h
	retlw	053h
	global __end_of_Table_KeyChannel
__end_of_Table_KeyChannel:
	global	_Table_C_LVBO
psect	strings
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\Touch_Kscan_Library.h"
	line	78
_Table_C_LVBO:
	retlw	080h
	global __end_of_Table_C_LVBO
__end_of_Table_C_LVBO:
	global	_Table_KeyDown
psect	strings
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\Touch_Kscan_Library.h"
	line	73
_Table_KeyDown:
	retlw	0Ah
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyCap
psect	strings
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\Touch_Kscan_Library.h"
	line	68
_Table_KeyCap:
	retlw	02h
	global __end_of_Table_KeyCap
__end_of_Table_KeyCap:
	global	_Table_KeyFalg
	global	_Table_KeyChannel
	global	_Table_C_LVBO
	global	_Table_KeyDown
	global	_Table_KeyCap
	global	_KeyData
	global	_b_ksleep
	global	_b_kerr
	global	_b_kclr
	global	_b_kover1
	global	_b_kover
	global	_B_OnOff
	global	_B_MainLoop
	global	CheckValidTime@validtime
	global	_KeyOldData
	global	_KeyReference
	global	_KeyOldValue2
	global	_KeyOldValue1
	global	_KeyOldValue0
	global	_KeyResSum
	global	_KeyFlag
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

	global	_KEYCON2
_KEYCON2	set	22
	global	_T2CON
_T2CON	set	18
	global	_PIE1
_PIE1	set	13
	global	_PIR1
_PIR1	set	12
	global	_INTCON
_INTCON	set	11
	global	_WPUB
_WPUB	set	8
	global	_PORTB
_PORTB	set	6
	global	_TMR0
_TMR0	set	1
	global	_RBIF
_RBIF	set	88
	global	_T0IF
_T0IF	set	90
	global	_RB5
_RB5	set	53
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
	global	_WPDB
_WPDB	set	135
	global	_TRISB
_TRISB	set	134
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISB5
_TRISB5	set	1077
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
_KeyData:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
CheckValidTime@validtime:
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

_KeyFlag:
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
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
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
	global	CheckOnceResult@KeyValue
CheckOnceResult@KeyValue:	; 2 bytes @ 0x2
	global	CheckKeyOldValue@KeyOldTemp
CheckKeyOldValue@KeyOldTemp:	; 2 bytes @ 0x2
	ds	2
	global	CheckOnceResult@flag
CheckOnceResult@flag:	; 1 bytes @ 0x4
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
;!    Constant    13
;!    Data        1
;!    BSS         28
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      12
;!    BANK0            80     13      42
;!    BANK1            80      0       0
;!    BANK2            80      0       0

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
;! (0) _main                                                 0     0      0    4061
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
;! (1) _KeyServer                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _CheckTouchKey                                        0     0      0    2719
;!                   _CheckKeyOldValue
;!                    _CheckOnceResult
;!                     _CheckValidTime
;!                        _ClearResSum
;!                   _GetTouchKeyValue
;!                       _KeyStopClear
;!                       _TurnKeyFlags
;! ---------------------------------------------------------------------------------
;! (2) _TurnKeyFlags                                         0     0      0     247
;!                         _KeyClearIn
;! ---------------------------------------------------------------------------------
;! (3) _KeyClearIn                                           1     1      0     247
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
;! (2) _CheckOnceResult                                     13    13      0    1463
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
;! (2) _CheckKeyOldValue                                     7     7      0     583
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      5     5      0
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (5) _KeyIsIn                                              2     2      0      69
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
;!BANK2               50      0       0       9        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      D      2A       3       52.5%
;!BITBANK0            50      0       0       5        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      9       C       1       85.7%
;!BITCOMMON            E      0       1       0        7.1%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      36      10        0.0%
;!ABS                  0      0      36       4        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 164 in file "C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
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
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
	line	164
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
	line	164
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	166
	
l2578:	
;main.c: 166: Init_System();
	fcall	_Init_System
	line	169
	
l2580:	
;main.c: 168: {
;main.c: 169: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u1631
	goto	u1630
u1631:
	goto	l2580
u1630:
	line	171
	
l2582:	
;main.c: 170: {
;main.c: 171: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	172
# 172 "C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
clrwdt ;# 
psect	maintext
	line	174
	
l2584:	
;main.c: 174: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	175
	
l2586:	
;main.c: 175: CheckTouchKey();
	fcall	_CheckTouchKey
	line	176
	
l2588:	
;main.c: 176: KeyServer();
	fcall	_KeyServer
	line	177
;main.c: 177: WorkSleep();
	fcall	_WorkSleep
	line	178
	
l2590:	
;main.c: 178: processPress();
	fcall	_processPress
	goto	l2580
	global	start
	ljmp	start
	opt stack 0
	line	181
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_processPress

;; *************** function _processPress *****************
;; Defined at:
;;		line 184 in file "C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
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
	line	184
global __ptext1
__ptext1:	;psect for function _processPress
psect	text1
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
	line	184
	global	__size_of_processPress
	__size_of_processPress	equ	__end_of_processPress-_processPress
	
_processPress:	
;incstack = 0
	opt	stack 6
; Regs used in _processPress: [wreg+status,2+status,0]
	line	186
	
l2422:	
;main.c: 186: if(pressKey)
	movf	((_pressKey)),w
	btfsc	status,2
	goto	u1421
	goto	u1420
u1421:
	goto	l2426
u1420:
	line	188
	
l2424:	
;main.c: 187: {
;main.c: 188: lowCount = 0;
	clrf	(_lowCount)
	line	190
	
l2426:	
;main.c: 189: }
;main.c: 190: if(++lowCount > 25)
	movlw	low(01Ah)
	incf	(_lowCount),f
	subwf	((_lowCount)),w
	skipc
	goto	u1431
	goto	u1430
u1431:
	goto	l504
u1430:
	line	192
	
l2428:	
;main.c: 191: {
;main.c: 192: lowCount = 26;
	movlw	low(01Ah)
	movwf	(_lowCount)
	line	193
	
l2430:	
;main.c: 193: PORTB |= 0x10;
	bsf	(6)+(4/8),(4)&7	;volatile
	line	194
;main.c: 194: }
	goto	l506
	line	195
	
l504:	
	line	197
;main.c: 195: else
;main.c: 196: {
;main.c: 197: PORTB &= 0xEF;
	bcf	(6)+(4/8),(4)&7	;volatile
	line	199
	
l506:	
	return
	opt stack 0
GLOBAL	__end_of_processPress
	__end_of_processPress:
	signat	_processPress,89
	global	_WorkSleep

;; *************** function _WorkSleep *****************
;; Defined at:
;;		line 122 in file "C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
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
;;		_Refurbish_Sfr
;;		_SystemEnterSleep
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	122
global __ptext2
__ptext2:	;psect for function _WorkSleep
psect	text2
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
	line	122
	global	__size_of_WorkSleep
	__size_of_WorkSleep	equ	__end_of_WorkSleep-_WorkSleep
	
_WorkSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _WorkSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	127
	
l2562:	
;main.c: 125: static unsigned char time;
;main.c: 127: if(B_OnOff)
	btfss	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	goto	u1601
	goto	u1600
u1601:
	goto	l2566
u1600:
	line	128
	
l2564:	
;main.c: 128: time = 0;
	clrf	(WorkSleep@time)
	line	130
	
l2566:	
;main.c: 130: if(++time >= 250)
	movlw	low(0FAh)
	incf	(WorkSleep@time),f
	subwf	((WorkSleep@time)),w
	skipc
	goto	u1611
	goto	u1610
u1611:
	goto	l491
u1610:
	line	132
	
l2568:	
;main.c: 131: {
;main.c: 132: time = 0;
	clrf	(WorkSleep@time)
	line	133
;main.c: 133: INTCON = 0;
	clrf	(11)	;volatile
	line	134
;main.c: 134: PIE1 = 0;
	clrf	(13)	;volatile
	line	135
;main.c: 135: PIR1 = 0;
	clrf	(12)	;volatile
	line	136
;main.c: 136: T2CON = 0;
	clrf	(18)	;volatile
	line	137
;main.c: 137: KEYCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(146)^080h	;volatile
	line	139
;main.c: 139: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	140
;main.c: 140: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	141
;main.c: 141: WPUB = 0;
	clrf	(8)	;volatile
	line	153
	
l2570:	
;main.c: 153: SystemEnterSleep();
	fcall	_SystemEnterSleep
	line	154
	
l2572:	
;main.c: 154: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u1621
	goto	u1620
u1621:
	goto	l2576
u1620:
	
l2574:	
	bcf	(88/8),(88)&7	;volatile
	line	156
	
l2576:	
;main.c: 156: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	159
	
l491:	
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
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       9       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0      13       0       0
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
	
l942:	
	line	587
# 587 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
clrwdt ;# 
psect	text3
	line	588
	
l2460:	
;CheckTouchKey.c: 588: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	589
	
l2462:	
;CheckTouchKey.c: 589: OPTION_REG |= 0x07;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(129)^080h,f	;volatile
	line	591
	
l2464:	
;CheckTouchKey.c: 591: OPTION_REG |= 0x08;
	bsf	(129)^080h+(3/8),(3)&7	;volatile
	line	592
# 592 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
clrwdt ;# 
psect	text3
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\TouchKeyConst.h"
	line	5
	
l2466:	
	movlw	low(09h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
	line	595
# 595 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
clrwdt ;# 
psect	text3
	line	597
	
l2468:	
;CheckTouchKey.c: 597: KEYCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(146)^080h	;volatile
	line	598
	
l2470:	
;CheckTouchKey.c: 598: KEYCON2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(22)	;volatile
	line	599
	
l2472:	
;CheckTouchKey.c: 599: TRISB5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	600
	
l2474:	
;CheckTouchKey.c: 600: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	602
	
l2476:	
;CheckTouchKey.c: 602: OSCCON = 0x70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(136)^080h	;volatile
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
	
l2478:	
;CheckTouchKey.c: 610: ClearResSum();
	fcall	_ClearResSum
	line	611
	
l2480:	
;CheckTouchKey.c: 611: b_ksleep = 1;
	bsf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	line	612
	
l2482:	
;CheckTouchKey.c: 612: GetTouchKeyValue_Sleep();
	fcall	_GetTouchKeyValue_Sleep
	line	614
	
l2484:	
;CheckTouchKey.c: 614: cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SystemEnterSleep@cnt)
	line	615
	
l2486:	
;CheckTouchKey.c: 615: wake = 1;
	clrf	(SystemEnterSleep@wake)
	incf	(SystemEnterSleep@wake),f
	clrf	(SystemEnterSleep@wake+1)
	line	616
	
l2488:	
;CheckTouchKey.c: 616: if(INTCON & 0x01)
	btfss	(11),(0)&7	;volatile
	goto	u1471
	goto	u1470
u1471:
	goto	l946
u1470:
	line	618
	
l2490:	
;CheckTouchKey.c: 617: {
;CheckTouchKey.c: 618: ClearResSum();
	fcall	_ClearResSum
	line	619
	
l2492:	
;CheckTouchKey.c: 619: KeyCounter = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	line	620
	
l2494:	
;CheckTouchKey.c: 620: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	621
	
l2496:	
;CheckTouchKey.c: 621: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	l944
	line	625
;CheckTouchKey.c: 624: else
;CheckTouchKey.c: 625: do
	
l946:	
	line	627
	btfss	(SystemEnterSleep@wake),(0)&7
	goto	u1481
	goto	u1480
u1481:
	goto	l2558
u1480:
	line	630
	
l2502:	
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
	
l2504:	
;CheckTouchKey.c: 631: if(KeyResTemp)
	movf	((SystemEnterSleep@KeyResTemp)),w
iorwf	((SystemEnterSleep@KeyResTemp+1)),w
	btfsc	status,2
	goto	u1491
	goto	u1490
u1491:
	goto	l2558
u1490:
	line	633
	
l2506:	
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
	
l2508:	
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
	goto	u1505
	movf	(SystemEnterSleep@KeyValue),w
	subwf	0+(??_SystemEnterSleep+0)+0,w
u1505:
	skipc
	goto	u1501
	goto	u1500
u1501:
	goto	l2532
u1500:
	line	637
	
l2510:	
;CheckTouchKey.c: 636: {
;CheckTouchKey.c: 637: cnt = 0;
	clrf	(SystemEnterSleep@cnt)
	line	638
	
l2512:	
;CheckTouchKey.c: 638: wake = 1;
	clrf	(SystemEnterSleep@wake)
	incf	(SystemEnterSleep@wake),f
	clrf	(SystemEnterSleep@wake+1)
	line	641
	
l2514:	
	btfsc	(SystemEnterSleep@wake),(0)&7
	goto	u1511
	goto	u1510
u1511:
	goto	l2518
u1510:
	line	643
	
l2516:	
;CheckTouchKey.c: 642: {
;CheckTouchKey.c: 643: KeyClearOne(cnt);
	movf	(SystemEnterSleep@cnt),w
	fcall	_KeyClearOne
	line	645
	
l2518:	
;CheckTouchKey.c: 644: }
;CheckTouchKey.c: 645: wake <<= 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(SystemEnterSleep@wake),f
	rlf	(SystemEnterSleep@wake+1),f
	line	646
	
l2520:	
	incf	(SystemEnterSleep@cnt),f
	btfsc	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l2514
u1520:
	goto	l2490
	line	655
	
l2532:	
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
	
l2534:	
	movf	(SystemEnterSleep@KeyResTemp),w
	subwf	(SystemEnterSleep@KeyOldTemp),f
	movf	(SystemEnterSleep@KeyResTemp+1),w
	skipc
	decf	(SystemEnterSleep@KeyOldTemp+1),f
	subwf	(SystemEnterSleep@KeyOldTemp+1),f
	line	656
	
l2536:	
;CheckTouchKey.c: 656: if(KeyOldTemp <= 4 || KeyOldTemp >= -4)
	movlw	0
	subwf	(SystemEnterSleep@KeyOldTemp+1),w
	movlw	05h
	skipnz
	subwf	(SystemEnterSleep@KeyOldTemp),w
	skipc
	goto	u1531
	goto	u1530
u1531:
	goto	l2540
u1530:
	
l2538:	
	movlw	0FFh
	subwf	(SystemEnterSleep@KeyOldTemp+1),w
	movlw	0FCh
	skipnz
	subwf	(SystemEnterSleep@KeyOldTemp),w
	skipc
	goto	u1541
	goto	u1540
u1541:
	goto	l953
u1540:
	line	658
	
l2540:	
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
	
l2542:	
	movf	(SystemEnterSleep@KeyResTemp),w
	subwf	(SystemEnterSleep@KeyOldTemp),f
	movf	(SystemEnterSleep@KeyResTemp+1),w
	skipc
	decf	(SystemEnterSleep@KeyOldTemp+1),f
	subwf	(SystemEnterSleep@KeyOldTemp+1),f
	line	659
	
l2544:	
;CheckTouchKey.c: 659: if(KeyOldTemp <= 4 || KeyOldTemp >= -4)
	movlw	0
	subwf	(SystemEnterSleep@KeyOldTemp+1),w
	movlw	05h
	skipnz
	subwf	(SystemEnterSleep@KeyOldTemp),w
	skipc
	goto	u1551
	goto	u1550
u1551:
	goto	l2548
u1550:
	
l2546:	
	movlw	0FFh
	subwf	(SystemEnterSleep@KeyOldTemp+1),w
	movlw	0FCh
	skipnz
	subwf	(SystemEnterSleep@KeyOldTemp),w
	skipc
	goto	u1561
	goto	u1560
u1561:
	goto	l953
u1560:
	line	661
	
l2548:	
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
	
l2550:	
	movf	(SystemEnterSleep@KeyResTemp),w
	subwf	(SystemEnterSleep@KeyOldTemp),f
	movf	(SystemEnterSleep@KeyResTemp+1),w
	skipc
	decf	(SystemEnterSleep@KeyOldTemp+1),f
	subwf	(SystemEnterSleep@KeyOldTemp+1),f
	line	662
	
l2552:	
;CheckTouchKey.c: 662: if(KeyOldTemp <= 4 || KeyOldTemp >= -4)
	movlw	0
	subwf	(SystemEnterSleep@KeyOldTemp+1),w
	movlw	05h
	skipnz
	subwf	(SystemEnterSleep@KeyOldTemp),w
	skipc
	goto	u1571
	goto	u1570
u1571:
	goto	l2556
u1570:
	
l2554:	
	movlw	0FFh
	subwf	(SystemEnterSleep@KeyOldTemp+1),w
	movlw	0FCh
	skipnz
	subwf	(SystemEnterSleep@KeyOldTemp),w
	skipc
	goto	u1581
	goto	u1580
u1581:
	goto	l953
u1580:
	line	664
	
l2556:	
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
	
l953:	
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
	
l2558:	
;CheckTouchKey.c: 674: }
;CheckTouchKey.c: 675: }
;CheckTouchKey.c: 676: wake <<= 1;
	clrc
	rlf	(SystemEnterSleep@wake),f
	rlf	(SystemEnterSleep@wake+1),f
	line	677
	
l2560:	
	incf	(SystemEnterSleep@cnt),f
	btfsc	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l946
u1590:
	goto	l942
	line	680
	
l944:	
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       0       0       0
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
	
l1958:	
;CheckTouchKey.c: 690: unsigned char cnt = 0,temp;
	clrf	(GetTouchKeyValue_Sleep@cnt)
	line	691
	
l1960:	
;CheckTouchKey.c: 691: unsigned int wake = 1;
	clrf	(GetTouchKeyValue_Sleep@wake)
	incf	(GetTouchKeyValue_Sleep@wake),f
	clrf	(GetTouchKeyValue_Sleep@wake+1)
	line	694
	
l1962:	
;CheckTouchKey.c: 693: {
;CheckTouchKey.c: 694: if((wake && KeyWakeUpEn))
	movf	((GetTouchKeyValue_Sleep@wake)),w
iorwf	((GetTouchKeyValue_Sleep@wake+1)),w
	btfsc	status,2
	goto	u771
	goto	u770
u771:
	goto	l2000
u770:
	line	696
	
l1964:	
;CheckTouchKey.c: 695: {
;CheckTouchKey.c: 696: KEYCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(146)^080h	;volatile
	line	697
;CheckTouchKey.c: 697: KEYCON1 = 0;
	clrf	(147)^080h	;volatile
	line	698
	
l1966:	
;CheckTouchKey.c: 698: KEYCON2 = Table_C_LVBO[cnt] | 0x01;
	movf	(GetTouchKeyValue_Sleep@cnt),w
	addlw	low((((_Table_C_LVBO)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	iorlw	01h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(22)	;volatile
	line	700
	
l1968:	
;CheckTouchKey.c: 700: KEYCON0 = Table_KeyCap[cnt];
	movf	(GetTouchKeyValue_Sleep@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	701
	
l1970:	
;CheckTouchKey.c: 701: KEYCON1 = Table_KeyChannel[cnt];
	movf	(GetTouchKeyValue_Sleep@cnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(147)^080h	;volatile
	line	702
	
l1972:	
;CheckTouchKey.c: 702: INTCON = 0X40;
	movlw	low(040h)
	movwf	(11)	;volatile
	line	703
	
l1974:	
;CheckTouchKey.c: 703: PIE1 = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(13)	;volatile
	line	704
	
l1976:	
;CheckTouchKey.c: 704: PIR1 = 0;
	clrf	(12)	;volatile
	line	705
	
l1978:	
;CheckTouchKey.c: 705: TRISB5 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	706
# 706 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	707
# 707 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
psect	text4
	line	708
	
l1980:	
;CheckTouchKey.c: 708: KEYCON0 |= 0x1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(146)^080h+(0/8),(0)&7	;volatile
	line	709
# 709 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
sleep ;# 
	line	710
# 710 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
clrwdt ;# 
psect	text4
	line	711
	
l1982:	
;CheckTouchKey.c: 711: PIE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(13)	;volatile
	line	712
	
l1984:	
;CheckTouchKey.c: 712: PIR1 = 0;
	clrf	(12)	;volatile
	line	714
	
l1986:	
;CheckTouchKey.c: 714: temp = 0;
	clrf	(GetTouchKeyValue_Sleep@temp)
	line	715
;CheckTouchKey.c: 715: while(!(KEYCON0&0x80))
	goto	l969
	
l970:	
	line	717
;CheckTouchKey.c: 716: {
;CheckTouchKey.c: 717: if(0 == (--temp))
	decfsz	(GetTouchKeyValue_Sleep@temp),f
	goto	u781
	goto	u780
u781:
	goto	l969
u780:
	line	719
	
l1988:	
;CheckTouchKey.c: 718: {
;CheckTouchKey.c: 719: KeyCounter = 255;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_KeyCounter)
	line	720
	
l1990:	
;CheckTouchKey.c: 720: ClearResSum();
	fcall	_ClearResSum
	goto	l972
	line	723
	
l969:	
	line	715
	bsf	status, 5	;RP0=1, select bank1
	btfss	(146)^080h,(7)&7	;volatile
	goto	u791
	goto	u790
u791:
	goto	l970
u790:
	line	726
	
l1994:	
;CheckTouchKey.c: 722: }
;CheckTouchKey.c: 723: }
;CheckTouchKey.c: 726: KeyResSum[cnt] += (unsigned int)((KEYDATAH<<8) | KEYDATAL);
	clrc
	rlf	(GetTouchKeyValue_Sleep@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(148)^080h,w	;volatile
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movf	(149)^080h,w	;volatile
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	727
	
l1996:	
;CheckTouchKey.c: 727: TRISB5 =0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	728
	
l1998:	
;CheckTouchKey.c: 728: RB5 =0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	730
	
l2000:	
;CheckTouchKey.c: 729: }
;CheckTouchKey.c: 730: wake <<= 1;
	clrc
	rlf	(GetTouchKeyValue_Sleep@wake),f
	rlf	(GetTouchKeyValue_Sleep@wake+1),f
	line	731
	
l2002:	
	incf	(GetTouchKeyValue_Sleep@cnt),f
	btfsc	status,2
	goto	u801
	goto	u800
u801:
	goto	l1962
u800:
	line	732
	
l2004:	
;CheckTouchKey.c: 732: KEYCON2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(22)	;volatile
	line	733
	
l2006:	
;CheckTouchKey.c: 733: b_ksleep = 0;
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	line	734
	
l972:	
	return
	opt stack 0
GLOBAL	__end_of_GetTouchKeyValue_Sleep
	__end_of_GetTouchKeyValue_Sleep:
	signat	_GetTouchKeyValue_Sleep,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 55 in file "C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/100
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
;;		_WorkSleep
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
	line	55
global __ptext5
__ptext5:	;psect for function _Refurbish_Sfr
psect	text5
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
	line	55
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 5
; Regs used in _Refurbish_Sfr: [wreg+status,2]
	line	58
	
l2008:	
;main.c: 58: INTCON = 0XA0;
	movlw	low(0A0h)
	movwf	(11)	;volatile
	line	59
	
l2010:	
;main.c: 59: TRISB = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	60
	
l2012:	
;main.c: 60: WPUB = 0X10;
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	61
	
l466:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 67 in file "C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	67
global __ptext6
__ptext6:	;psect for function _KeyServer
psect	text6
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
	line	67
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 6
; Regs used in _KeyServer: [wreg+status,2+status,0]
	line	70
	
l2350:	
;main.c: 69: static unsigned char KeyOldFlag = 0;
;main.c: 70: if(KeyFlag[0])
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l2366
u1300:
	line	72
	
l2352:	
;main.c: 71: {
;main.c: 72: if(KeyFlag[0] != KeyOldFlag)
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),w
	skipnz
	goto	u1311
	goto	u1310
u1311:
	goto	l475
u1310:
	line	75
	
l2354:	
;main.c: 73: {
;main.c: 75: KeyOldFlag ^= KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),f
	line	76
	
l2356:	
;main.c: 76: if((KeyOldFlag&0x1) && (KeyFlag[0]&0x1))
	btfss	(KeyServer@KeyOldFlag),(0)&7
	goto	u1321
	goto	u1320
u1321:
	goto	l473
u1320:
	
l2358:	
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u1331
	goto	u1330
u1331:
	goto	l473
u1330:
	line	79
	
l2360:	
;main.c: 77: {
;main.c: 79: B_OnOff = !B_OnOff;
	movlw	1<<((_B_OnOff)&7)
	xorwf	((_B_OnOff)/8),f
	line	81
	
l2362:	
;main.c: 81: pressKey = 1;
	clrf	(_pressKey)
	incf	(_pressKey),f
	line	82
	
l2364:	
;main.c: 82: B_OnOff = 1;
	bsf	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	line	83
	
l473:	
	line	85
;main.c: 83: }
;main.c: 85: KeyOldFlag = KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	movwf	(KeyServer@KeyOldFlag)
	goto	l475
	line	90
	
l2366:	
;main.c: 88: else
;main.c: 89: {
;main.c: 90: KeyOldFlag = 0;
	clrf	(KeyServer@KeyOldFlag)
	line	91
;main.c: 91: pressKey = 0;
	clrf	(_pressKey)
	line	92
	
l2368:	
;main.c: 92: B_OnOff = 0;
	bcf	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	line	94
	
l475:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 16 in file "C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
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
;;		On exit  : 300/100
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
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	16
global __ptext7
__ptext7:	;psect for function _Init_System
psect	text7
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
	line	16
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2+status,0]
	line	18
	
l2320:	
# 18 "C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
nop ;# 
	line	19
# 19 "C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
clrwdt ;# 
psect	text7
	line	20
	
l2322:	
;main.c: 20: OPTION_REG |= 0x07;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(129)^080h,f	;volatile
	line	22
	
l2324:	
;main.c: 22: OPTION_REG |= 0x08;
	bsf	(129)^080h+(3/8),(3)&7	;volatile
	line	23
# 23 "C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
clrwdt ;# 
psect	text7
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\TouchKeyConst.h"
	line	5
	
l2326:	
	movlw	low(09h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
	line	26
# 26 "C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
clrwdt ;# 
psect	text7
	line	28
	
l2328:	
;main.c: 28: INTCON = 0;
	clrf	(11)	;volatile
	line	29
	
l2330:	
;main.c: 29: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	31
	
l2332:	
;main.c: 31: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	32
	
l2334:	
;main.c: 32: TRISB = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	33
	
l2336:	
;main.c: 33: PORTB = 0X10;
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	34
	
l2338:	
;main.c: 34: WPUB = 0X10;
	movlw	low(010h)
	movwf	(8)	;volatile
	line	36
	
l2340:	
;main.c: 36: WPDB = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	40
	
l2342:	
;main.c: 40: TMR0 = 6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	41
	
l2344:	
;main.c: 41: INTCON = 0XA0;
	movlw	low(0A0h)
	movwf	(11)	;volatile
	line	43
	
l2346:	
;main.c: 43: PwmData = 0xF0;
	movlw	0F0h
	movwf	(_PwmData)	;volatile
	clrf	(_PwmData+1)	;volatile
	line	44
	
l2348:	
;main.c: 44: PR2 =0XFF;
	movlw	low(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	45
	
l463:	
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
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
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
	
l2386:	
;CheckTouchKey.c: 525: if(!b_kover)
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u1371
	goto	u1370
u1371:
	goto	l930
u1370:
	line	528
	
l2388:	
;CheckTouchKey.c: 526: {
;CheckTouchKey.c: 528: GetTouchKeyValue();
	fcall	_GetTouchKeyValue
	line	529
	
l2390:	
;CheckTouchKey.c: 529: if(++KeyCounter >= 8)
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u1381
	goto	u1380
u1381:
	goto	l2420
u1380:
	line	531
	
l2392:	
;CheckTouchKey.c: 530: {
;CheckTouchKey.c: 531: KeyCounter = 0;
	clrf	(_KeyCounter)
	line	532
	
l2394:	
;CheckTouchKey.c: 532: b_kover = 1;
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l2420
	line	535
	
l930:	
;CheckTouchKey.c: 535: else if(!b_kover1)
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u1391
	goto	u1390
u1391:
	goto	l2414
u1390:
	line	538
	
l2396:	
;CheckTouchKey.c: 536: {
;CheckTouchKey.c: 538: CheckOnceResult();
	fcall	_CheckOnceResult
	line	541
;CheckTouchKey.c: 541: TurnKeyFlags();
	fcall	_TurnKeyFlags
	line	542
	
l2398:	
;CheckTouchKey.c: 542: b_kover1 = 1;
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	548
	
l2400:	
;CheckTouchKey.c: 548: if(b_kerr || KeyCounter > KeyValidNumber)
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u1401
	goto	u1400
u1401:
	goto	l2404
u1400:
	
l2402:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u1411
	goto	u1410
u1411:
	goto	l2412
u1410:
	line	550
	
l2404:	
;CheckTouchKey.c: 549: {
;CheckTouchKey.c: 550: KeyStopClear();
	fcall	_KeyStopClear
	line	551
	
l2406:	
;CheckTouchKey.c: 551: b_kerr = 0;
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	552
	
l2408:	
;CheckTouchKey.c: 552: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	553
	
l2410:	
;CheckTouchKey.c: 553: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	555
	
l2412:	
;CheckTouchKey.c: 554: }
;CheckTouchKey.c: 555: KeyCounter = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	line	556
;CheckTouchKey.c: 556: }
	goto	l2420
	line	560
	
l2414:	
;CheckTouchKey.c: 557: else
;CheckTouchKey.c: 558: {
;CheckTouchKey.c: 560: CheckKeyOldValue();
	fcall	_CheckKeyOldValue
	line	562
;CheckTouchKey.c: 562: ClearResSum();
	fcall	_ClearResSum
	line	564
	
l2416:	
;CheckTouchKey.c: 564: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	565
	
l2418:	
;CheckTouchKey.c: 565: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	568
	
l2420:	
;CheckTouchKey.c: 566: }
;CheckTouchKey.c: 568: CheckValidTime();
	fcall	_CheckValidTime
	line	569
	
l938:	
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
;;		On entry : B00/0
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
	
l2276:	
;CheckTouchKey.c: 412: static unsigned char KeyHaveTimes = 0;
;CheckTouchKey.c: 413: static unsigned char KeyNoTimes = 0;
;CheckTouchKey.c: 415: if(KeyData[0] | KeyData[1])
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u1221
	goto	u1220
u1221:
	goto	l2302
u1220:
	line	417
	
l2278:	
;CheckTouchKey.c: 416: {
;CheckTouchKey.c: 417: KeyNoTimes = 0;
	clrf	(TurnKeyFlags@KeyNoTimes)
	line	419
	
l2280:	
;CheckTouchKey.c: 419: if(KeyData[0] == KeyOldData[0] && KeyData[1] == KeyOldData[1])
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u1231
	goto	u1230
u1231:
	goto	l911
u1230:
	
l2282:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u1241
	goto	u1240
u1241:
	goto	l911
u1240:
	line	421
	
l2284:	
	movlw	low(02h)
	incf	(TurnKeyFlags@KeyHaveTimes),f
	subwf	((TurnKeyFlags@KeyHaveTimes)),w
	skipc
	goto	u1251
	goto	u1250
u1251:
	goto	l918
u1250:
	line	423
	
l2286:	
;CheckTouchKey.c: 422: {
;CheckTouchKey.c: 423: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	line	424
	
l2288:	
;CheckTouchKey.c: 424: KeyFlag[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	line	425
	
l2290:	
;CheckTouchKey.c: 425: KeyFlag[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	line	429
	
l2292:	
;CheckTouchKey.c: 428: {
;CheckTouchKey.c: 429: if(!b_kclr)
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u1261
	goto	u1260
u1261:
	goto	l915
u1260:
	line	431
	
l2294:	
;CheckTouchKey.c: 430: {
;CheckTouchKey.c: 431: b_kclr = 1;
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	432
	
l2296:	
;CheckTouchKey.c: 432: KeyClearIn();
	fcall	_KeyClearIn
	goto	l918
	line	437
	
l911:	
	line	439
;CheckTouchKey.c: 437: else
;CheckTouchKey.c: 438: {
;CheckTouchKey.c: 439: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	440
	
l2298:	
;CheckTouchKey.c: 440: KeyOldData[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	line	441
;CheckTouchKey.c: 441: KeyOldData[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	line	442
	
l2300:	
;CheckTouchKey.c: 442: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	goto	l918
	line	443
	
l915:	
	line	444
;CheckTouchKey.c: 443: }
;CheckTouchKey.c: 444: }
	goto	l918
	line	447
	
l2302:	
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
	
l2304:	
;CheckTouchKey.c: 451: if(++KeyNoTimes >=2)
	movlw	low(02h)
	incf	(TurnKeyFlags@KeyNoTimes),f
	subwf	((TurnKeyFlags@KeyNoTimes)),w
	skipc
	goto	u1271
	goto	u1270
u1271:
	goto	l918
u1270:
	line	453
	
l2306:	
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
	
l2308:	
;CheckTouchKey.c: 457: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	460
	
l918:	
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
;;		On entry : B00/0
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
	
l1928:	
;CheckTouchKey.c: 99: unsigned char cnt;
;CheckTouchKey.c: 100: for(cnt=0;cnt < KeyTotalNumber;cnt++)
	clrf	(KeyClearIn@cnt)
	line	102
	
l1934:	
;CheckTouchKey.c: 101: {
;CheckTouchKey.c: 102: if(!KeyIsIn(cnt))
	movf	(KeyClearIn@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u741
	goto	u740
u741:
	goto	l1938
u740:
	line	104
	
l1936:	
;CheckTouchKey.c: 103: {
;CheckTouchKey.c: 104: KeyClearOne(cnt);
	movf	(KeyClearIn@cnt),w
	fcall	_KeyClearOne
	line	100
	
l1938:	
	incf	(KeyClearIn@cnt),f
	
l1940:	
	movf	((KeyClearIn@cnt)),w
	btfsc	status,2
	goto	u751
	goto	u750
u751:
	goto	l1934
u750:
	line	107
	
l826:	
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
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
	
l2116:	
;CheckTouchKey.c: 118: unsigned char i;
;CheckTouchKey.c: 119: KeyFlag[0] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyFlag)	;volatile
	line	120
;CheckTouchKey.c: 120: KeyFlag[1] = 0;
	clrf	0+(_KeyFlag)+01h	;volatile
	line	121
;CheckTouchKey.c: 121: for(i = 0; i < KeyTotalNumber; i++)
	clrf	(KeyStopClear@i)
	line	123
	
l2122:	
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
	
l2124:	
;CheckTouchKey.c: 124: KeyClearOne(i);
	movf	(KeyStopClear@i),w
	fcall	_KeyClearOne
	line	121
	
l2126:	
	incf	(KeyStopClear@i),f
	
l2128:	
	movf	((KeyStopClear@i)),w
	btfsc	status,2
	goto	u941
	goto	u940
u941:
	goto	l2122
u940:
	line	126
	
l831:	
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
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       0       0       0
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
	
l2130:	
;CheckTouchKey.c: 191: unsigned char cnt = 0,temp;
	clrf	(GetTouchKeyValue@cnt)
	line	192
	
l2132:	
;CheckTouchKey.c: 192: unsigned int wake = 1;
	clrf	(GetTouchKeyValue@wake)
	incf	(GetTouchKeyValue@wake),f
	clrf	(GetTouchKeyValue@wake+1)
	line	195
	
l2134:	
	btfss	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	goto	u951
	goto	u950
u951:
	goto	l2138
u950:
	
l2136:	
	btfss	(GetTouchKeyValue@wake),(0)&7
	goto	u961
	goto	u960
u961:
	goto	l2164
u960:
	line	197
	
l2138:	
;CheckTouchKey.c: 196: {
;CheckTouchKey.c: 197: KEYCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(146)^080h	;volatile
	line	198
;CheckTouchKey.c: 198: KEYCON1 = 0;
	clrf	(147)^080h	;volatile
	line	199
	
l2140:	
;CheckTouchKey.c: 199: KEYCON2 = Table_C_LVBO[cnt] | 0x01;
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_C_LVBO)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	iorlw	01h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(22)	;volatile
	line	201
	
l2142:	
;CheckTouchKey.c: 201: TRISB5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	202
	
l2144:	
;CheckTouchKey.c: 202: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
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
	
l2146:	
;CheckTouchKey.c: 215: TRISB5 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	217
	
l2148:	
;CheckTouchKey.c: 217: KEYCON0 = Table_KeyCap[cnt];
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(146)^080h	;volatile
	line	218
	
l2150:	
;CheckTouchKey.c: 218: KEYCON1 = Table_KeyChannel[cnt];
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(147)^080h	;volatile
	line	219
# 219 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
	line	220
# 220 "D:\ToolsDesign\SCMCU\SCTouch_lib\Sleep\XC8\M1810\CheckTouchKey.c"
nop ;# 
psect	text12
	line	221
	
l2152:	
;CheckTouchKey.c: 221: KEYCON0 |= 0x1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(146)^080h+(0/8),(0)&7	;volatile
	line	223
	
l2154:	
;CheckTouchKey.c: 223: temp = 0;
	clrf	(GetTouchKeyValue@temp)
	line	224
;CheckTouchKey.c: 224: while(!(KEYCON0&0x80))
	goto	l852
	
l853:	
	line	226
;CheckTouchKey.c: 225: {
;CheckTouchKey.c: 226: if(0 == (--temp))
	decfsz	(GetTouchKeyValue@temp),f
	goto	u971
	goto	u970
u971:
	goto	l852
u970:
	line	228
	
l2156:	
;CheckTouchKey.c: 227: {
;CheckTouchKey.c: 228: KeyCounter = 255;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_KeyCounter)
	line	229
	
l2158:	
;CheckTouchKey.c: 229: ClearResSum();
	fcall	_ClearResSum
	goto	l855
	line	232
	
l852:	
	line	224
	btfss	(146)^080h,(7)&7	;volatile
	goto	u981
	goto	u980
u981:
	goto	l853
u980:
	line	234
	
l2162:	
;CheckTouchKey.c: 231: }
;CheckTouchKey.c: 232: }
;CheckTouchKey.c: 234: KeyResSum[cnt] += (unsigned int)((KEYDATAH<<8) | KEYDATAL);
	clrc
	rlf	(GetTouchKeyValue@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(148)^080h,w	;volatile
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movf	(149)^080h,w	;volatile
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	236
	
l2164:	
;CheckTouchKey.c: 235: }
;CheckTouchKey.c: 236: wake <<= 1;
	clrc
	rlf	(GetTouchKeyValue@wake),f
	rlf	(GetTouchKeyValue@wake+1),f
	line	237
	
l2166:	
	incf	(GetTouchKeyValue@cnt),f
	btfsc	status,2
	goto	u991
	goto	u990
u991:
	goto	l2134
u990:
	
l857:	
	line	238
;CheckTouchKey.c: 238: b_ksleep = 0;
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	line	239
	
l855:	
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
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
	
l1922:	
;CheckTouchKey.c: 137: unsigned char cnt = 0;
	clrf	(ClearResSum@cnt)
	line	140
	
l1924:	
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
	
l1926:	
	incf	(ClearResSum@cnt),f
	btfsc	status,2
	goto	u731
	goto	u730
u731:
	goto	l1924
u730:
	line	142
	
l836:	
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
	
l2310:	
;CheckTouchKey.c: 500: {
;CheckTouchKey.c: 501: if(KeyFlag[0] | KeyFlag[1])
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u1281
	goto	u1280
u1281:
	goto	l2316
u1280:
	line	503
	
l2312:	
	incf	(CheckValidTime@validtime),f
	skipnz
	incf	(CheckValidTime@validtime+1),f
	movlw	03Ah
	subwf	((CheckValidTime@validtime+1)),w
	movlw	098h
	skipnz
	subwf	((CheckValidTime@validtime)),w
	skipc
	goto	u1291
	goto	u1290
u1291:
	goto	l927
u1290:
	line	505
	
l2314:	
;CheckTouchKey.c: 504: {
;CheckTouchKey.c: 505: b_kerr = 1;
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	506
	
l2316:	
;CheckTouchKey.c: 506: validtime = 0;
	clrf	(CheckValidTime@validtime)
	clrf	(CheckValidTime@validtime+1)
	line	514
	
l927:	
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
;;  KeyValue        2    2[BANK0 ] unsigned int 
;;  OldValue        2    0[BANK0 ] unsigned int 
;;  cnt             1    8[BANK0 ] unsigned char 
;;  KeyDown         1    5[BANK0 ] unsigned char 
;;  flag            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       9       0       0
;;      Temps:          4       0       0       0
;;      Totals:         4       9       0       0
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
	
l2168:	
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
	
l2170:	
;CheckTouchKey.c: 265: {
;CheckTouchKey.c: 266: flag = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(CheckOnceResult@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@flag)
	line	268
	
l2172:	
;CheckTouchKey.c: 268: KeyResSum[cnt] >>= 3;
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u1005:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank0
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u1000:
	addlw	-1
	skipz
	goto	u1005
	line	269
	
l2174:	
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
	
l2176:	
;CheckTouchKey.c: 270: KeyDown = Table_KeyDown[cnt];
	movf	(CheckOnceResult@cnt),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@KeyDown)
	line	272
	
l2178:	
;CheckTouchKey.c: 272: KeyValue = KeyResTemp + KeyDown;
	movf	(CheckOnceResult@KeyDown),w
	movwf	(CheckOnceResult@KeyValue)
	clrf	(CheckOnceResult@KeyValue+1)
	
l2180:	
	movf	(CheckOnceResult@KeyResTemp),w
	addwf	(CheckOnceResult@KeyValue),f
	skipnc
	incf	(CheckOnceResult@KeyValue+1),f
	movf	(CheckOnceResult@KeyResTemp+1),w
	addwf	(CheckOnceResult@KeyValue+1),f
	line	274
	
l2182:	
;CheckTouchKey.c: 274: if(!KeyIsIn(cnt))
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1011
	goto	u1010
u1011:
	goto	l2212
u1010:
	line	277
	
l2184:	
;CheckTouchKey.c: 275: {
;CheckTouchKey.c: 277: OldValue = KeyOldValue2[cnt];
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
	goto	u1025
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue),w
u1025:
	skipnc
	goto	u1021
	goto	u1020
u1021:
	goto	l2188
u1020:
	line	281
	
l2186:	
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
	goto	l2196
	line	283
	
l2188:	
;CheckTouchKey.c: 283: else if ((OldValue > KeyValue) && (KeyOldValue1[cnt] > KeyValue))
	movf	(CheckOnceResult@OldValue+1),w
	subwf	(CheckOnceResult@KeyValue+1),w
	skipz
	goto	u1035
	movf	(CheckOnceResult@OldValue),w
	subwf	(CheckOnceResult@KeyValue),w
u1035:
	skipnc
	goto	u1031
	goto	u1030
u1031:
	goto	l2234
u1030:
	
l2190:	
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
	goto	u1045
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue),w
u1045:
	skipnc
	goto	u1041
	goto	u1040
u1041:
	goto	l2234
u1040:
	line	285
	
l2192:	
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
	
l2194:	
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
	
l2196:	
;CheckTouchKey.c: 291: }
;CheckTouchKey.c: 293: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	297
	
l2198:	
;CheckTouchKey.c: 296: {
;CheckTouchKey.c: 297: if(KeyResTemp >> 8)
	movf	(0+(CheckOnceResult@KeyResTemp)+01h),w
	btfsc	status,2
	goto	u1051
	goto	u1050
u1051:
	goto	l2202
u1050:
	line	299
	
l2200:	
;CheckTouchKey.c: 298: {
;CheckTouchKey.c: 299: KeyDown = 0xFF;
	movlw	low(0FFh)
	movwf	(CheckOnceResult@KeyDown)
	line	300
;CheckTouchKey.c: 300: }
	goto	l869
	line	303
	
l2202:	
;CheckTouchKey.c: 301: else
;CheckTouchKey.c: 302: {
;CheckTouchKey.c: 303: KeyDown = KeyResTemp & 0xFF;
	movf	(CheckOnceResult@KeyResTemp),w
	movwf	(CheckOnceResult@KeyDown)
	line	304
	
l869:	
	line	306
;CheckTouchKey.c: 304: }
;CheckTouchKey.c: 306: if(KeyMaxSub < KeyDown)
	movf	(CheckOnceResult@KeyDown),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u1061
	goto	u1060
u1061:
	goto	l2208
u1060:
	line	308
	
l2204:	
;CheckTouchKey.c: 307: {
;CheckTouchKey.c: 308: KeyMaxSub = KeyDown;
	movf	(CheckOnceResult@KeyDown),w
	movwf	(_KeyMaxSub)
	line	309
	
l2206:	
;CheckTouchKey.c: 309: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag),w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyHave
	line	310
;CheckTouchKey.c: 310: }
	goto	l2234
	line	313
	
l2208:	
;CheckTouchKey.c: 311: else
;CheckTouchKey.c: 312: {
;CheckTouchKey.c: 313: KeyCounter++;
	incf	(_KeyCounter),f
	goto	l2234
	line	326
	
l2212:	
;CheckTouchKey.c: 322: else
;CheckTouchKey.c: 323: {
;CheckTouchKey.c: 326: if(KeyReference[cnt]+1 < KeyValue)
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
	goto	u1075
	movf	(CheckOnceResult@KeyValue),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1075:
	skipnc
	goto	u1071
	goto	u1070
u1071:
	goto	l2218
u1070:
	goto	l2234
	line	330
	
l2218:	
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
	goto	u1085
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1085:
	skipc
	goto	u1081
	goto	u1080
u1081:
	goto	l2222
u1080:
	
l2220:	
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
	goto	u1095
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1095:
	skipnc
	goto	u1091
	goto	u1090
u1091:
	goto	l2226
u1090:
	line	332
	
l2222:	
;CheckTouchKey.c: 331: {
;CheckTouchKey.c: 332: if(++KeyUpShake[cnt] > 8)
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u1101
	goto	u1100
u1101:
	goto	l875
u1100:
	line	334
	
l2224:	
;CheckTouchKey.c: 333: {
;CheckTouchKey.c: 334: KeyClearOne(cnt);
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyClearOne
	line	335
;CheckTouchKey.c: 335: continue;
	goto	l2234
	line	340
	
l2226:	
;CheckTouchKey.c: 338: else
;CheckTouchKey.c: 339: {
;CheckTouchKey.c: 340: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l2230
	line	341
	
l875:	
	line	347
	
l2230:	
;CheckTouchKey.c: 347: else if(!(KeyData[0] | KeyData[1]))
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfss	status,2
	goto	u1111
	goto	u1110
u1111:
	goto	l2234
u1110:
	line	349
	
l2232:	
;CheckTouchKey.c: 348: {
;CheckTouchKey.c: 349: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag),w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyHave
	line	352
	
l2234:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@cnt),f
	btfsc	status,2
	goto	u1121
	goto	u1120
u1121:
	goto	l2170
u1120:
	line	353
	
l885:	
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
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
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
	
l1942:	
;CheckTouchKey.c: 153: KeyCounter++;
	incf	(_KeyCounter),f
	line	157
	
l1944:	
;CheckTouchKey.c: 156: {
;CheckTouchKey.c: 157: KeyData[0] = 0;
	clrf	(_KeyData)	;volatile
	line	158
	
l1946:	
;CheckTouchKey.c: 158: KeyData[1] = 0;
	clrf	0+(_KeyData)+01h	;volatile
	line	159
	
l1948:	
;CheckTouchKey.c: 159: if(cnt&0x8)
	btfss	(KeyHave@cnt),(3)&7
	goto	u761
	goto	u760
u761:
	goto	l1952
u760:
	line	161
	
l1950:	
;CheckTouchKey.c: 160: {
;CheckTouchKey.c: 161: KeyData[1] = flag;
	movf	(KeyHave@flag),w
	movwf	0+(_KeyData)+01h	;volatile
	line	162
;CheckTouchKey.c: 162: }
	goto	l845
	line	165
	
l1952:	
;CheckTouchKey.c: 163: else
;CheckTouchKey.c: 164: {
;CheckTouchKey.c: 165: KeyData[0] = flag;
	movf	(KeyHave@flag),w
	movwf	(_KeyData)	;volatile
	line	179
	
l845:	
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
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
	
l1920:	
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
	
l820:	
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
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       5       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       5       0       0
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
	
l2236:	
;CheckTouchKey.c: 365: static unsigned char counter = 0;
;CheckTouchKey.c: 366: unsigned char cnt = 0;
	clrf	(CheckKeyOldValue@cnt)
	line	370
	
l2238:	
;CheckTouchKey.c: 367: unsigned int KeyResTemp;
;CheckTouchKey.c: 368: unsigned int KeyOldTemp;
;CheckTouchKey.c: 370: if(++counter < 4)
	movlw	low(04h)
	incf	(CheckKeyOldValue@counter),f
	subwf	((CheckKeyOldValue@counter)),w
	skipnc
	goto	u1131
	goto	u1130
u1131:
	goto	l2242
u1130:
	goto	l891
	line	372
	
l2242:	
;CheckTouchKey.c: 372: counter = 0;
	clrf	(CheckKeyOldValue@counter)
	line	376
	
l2244:	
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
	
l2246:	
;CheckTouchKey.c: 377: if(!KeyIsIn(cnt))
	movf	(CheckKeyOldValue@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1141
	goto	u1140
u1141:
	goto	l893
u1140:
	line	380
	
l2248:	
;CheckTouchKey.c: 378: {
;CheckTouchKey.c: 380: KeyOldTemp = KeyOldValue0[cnt] - KeyResTemp;
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
	
l2250:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	381
	
l2252:	
;CheckTouchKey.c: 381: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u1151
	goto	u1150
u1151:
	goto	l2256
u1150:
	
l2254:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u1161
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u1161
	goto	u1160
u1161:
	goto	l893
u1160:
	line	383
	
l2256:	
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
	
l2258:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	384
	
l2260:	
;CheckTouchKey.c: 384: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u1171
	goto	u1170
u1171:
	goto	l2264
u1170:
	
l2262:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u1181
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u1181
	goto	u1180
u1181:
	goto	l893
u1180:
	line	386
	
l2264:	
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
	
l2266:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	387
	
l2268:	
;CheckTouchKey.c: 387: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u1191
	goto	u1190
u1191:
	goto	l2272
u1190:
	
l2270:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u1201
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u1201
	goto	u1200
u1201:
	goto	l893
u1200:
	line	389
	
l2272:	
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
	
l893:	
	line	396
;CheckTouchKey.c: 390: }
;CheckTouchKey.c: 391: }
;CheckTouchKey.c: 392: }
;CheckTouchKey.c: 393: }
;CheckTouchKey.c: 396: KeyOldValue2[cnt] = KeyOldValue1[cnt];
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
	
l2274:	
	incf	(CheckKeyOldValue@cnt),f
	btfsc	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l2244
u1210:
	line	400
	
l891:	
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
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
	
l1908:	
;CheckTouchKey.c: 69: unsigned char i = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(KeyIsIn@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@i)
	line	71
	
l1910:	
;CheckTouchKey.c: 71: if(cnt&0x8)
	btfss	(KeyIsIn@cnt),(3)&7
	goto	u721
	goto	u720
u721:
	goto	l1914
u720:
	line	73
	
l1912:	
;CheckTouchKey.c: 72: {
;CheckTouchKey.c: 73: i &= KeyFlag[1];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@i),f
	line	74
;CheckTouchKey.c: 74: }
	goto	l1916
	line	77
	
l1914:	
;CheckTouchKey.c: 75: else
;CheckTouchKey.c: 76: {
;CheckTouchKey.c: 77: i &= KeyFlag[0];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@i),f
	line	79
	
l1916:	
;CheckTouchKey.c: 78: }
;CheckTouchKey.c: 79: return i;
	movf	(KeyIsIn@i),w
	line	80
	
l817:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 99 in file "C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
	line	99
global __ptext20
__ptext20:	;psect for function _Isr_Timer
psect	text20
	file	"C:\Users\hhmm6\Desktop\scm\GN_101bt\main.c"
	line	99
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
	line	101
	
i1l2432:	
;main.c: 101: if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u144_21
	goto	u144_20
u144_21:
	goto	i1l2442
u144_20:
	line	103
	
i1l2434:	
;main.c: 102: {
;main.c: 103: TMR0 += 6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	104
	
i1l2436:	
;main.c: 104: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	105
;main.c: 105: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u145_21
	goto	u145_20
u145_21:
	goto	i1l483
u145_20:
	line	107
	
i1l2438:	
;main.c: 106: {
;main.c: 107: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	108
	
i1l2440:	
;main.c: 108: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	i1l483
	line	113
	
i1l2442:	
;main.c: 111: else
;main.c: 112: {
;main.c: 113: INTCON = 0XA0;
	movlw	low(0A0h)
	movwf	(11)	;volatile
	line	114
	
i1l2444:	
;main.c: 114: PIR1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(12)	;volatile
	line	117
	
i1l483:	
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
