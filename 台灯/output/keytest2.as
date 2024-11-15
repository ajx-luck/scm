opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F2852
opt include "C:\mcuproject\scm\SC8P171XE开发包\SCMCU_IDE_V2.00.09_Beta4\data\include\sc8f2852.cgen.inc"
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
	FNCALL	_main,_checkIRKey
	FNCALL	_main,_startPWM
	FNCALL	_startPWM,_initPWM
	FNCALL	_startPWM,_procKey1
	FNCALL	_startPWM,_procKey2
	FNCALL	_KeyServer,_procKey1
	FNCALL	_KeyServer,_procKey2
	FNCALL	_procKey2,_modea
	FNCALL	_procKey2,_modeb
	FNCALL	_procKey2,_modec
	FNCALL	_procKey2,_moded
	FNCALL	_procKey2,_modee
	FNCALL	_procKey1,_mode1
	FNCALL	_procKey1,_mode2
	FNCALL	_procKey1,_mode3
	FNCALL	_procKey1,_mode4
	FNCALL	_procKey1,_mode5
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
	global	_pwm1Step
	global	_pwm0Step
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\mcuproject\scm\台灯\main.c"
	line	12

;initializer for _pwm1Step
	retlw	01h
	line	11

;initializer for _pwm0Step
	retlw	01h
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
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	48
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
	global	_Table_KeyDown
psect	strings
	file	"C:\mcuproject\scm\台灯\Touch_Kscan_Library.h"
	line	71
_Table_KeyDown:
	retlw	0Ah
	retlw	0Ah
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyCap
psect	strings
	file	"C:\mcuproject\scm\台灯\Touch_Kscan_Library.h"
	line	65
_Table_KeyCap:
	retlw	02h
	retlw	02h
	global __end_of_Table_KeyCap
__end_of_Table_KeyCap:
	global	_Table_KeyChannel
psect	strings
	file	"C:\mcuproject\scm\台灯\Touch_Kscan_Library.h"
	line	59
_Table_KeyChannel:
	retlw	060h
	retlw	061h
	global __end_of_Table_KeyChannel
__end_of_Table_KeyChannel:
	global	_Table_KeyFalg
	global	_Table_KeyDown
	global	_Table_KeyCap
	global	_Table_KeyChannel
	global	_pwmTime
	global	_b_kerr
	global	_b_kclr
	global	_b_kover1
	global	_b_kover
	global	_doubleTouchFlag
	global	_keyLockFlag
	global	_pwmFlag
	global	_ONFlag
	global	_doublePressFlag
	global	_sendStartFlag
	global	_B_MainLoop
	global	_KeyReference
	global	_KeyOldValue2
	global	_KeyOldValue1
	global	_KeyOldValue0
	global	_KeyResSum
	global	CheckValidTime@validtime
	global	_KeyData
	global	_KeyOldData
	global	_keyCount1
	global	_keyCount0
	global	_keyNub
	global	_KeyUpShake
	global	_KeyFlag
	global	TurnKeyFlags@KeyNoTimes
	global	TurnKeyFlags@KeyHaveTimes
	global	CheckKeyOldValue@counter
	global	_KeyMaxSub
	global	_KeyCounter
	global	_checkCount
	global	_revZeroCount
	global	_revCount
	global	_irStep
	global	_MainTime
	global	_sendFlag
psect	bitnvCOMMON,class=COMMON,bit,space=1,noexec
global __pbitnvCOMMON
__pbitnvCOMMON:
_sendFlag:
       ds      1

	global	_PWMCON2
_PWMCON2	set	29
	global	_PWMD01H
_PWMD01H	set	28
	global	_PWMD1L
_PWMD1L	set	24
	global	_PWMD0L
_PWMD0L	set	23
	global	_PWMTH
_PWMTH	set	22
	global	_PWMTL
_PWMTL	set	21
	global	_PWMCON1
_PWMCON1	set	20
	global	_PWMCON0
_PWMCON0	set	19
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
	global	_WPUA
_WPUA	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_TMR2IF
_TMR2IF	set	97
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
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
; #config settings
	file	"keytest2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_b_kerr:
       ds      1

_b_kclr:
       ds      1

_b_kover1:
       ds      1

_b_kover:
       ds      1

_doubleTouchFlag:
       ds      1

_keyLockFlag:
       ds      1

_pwmFlag:
       ds      1

_ONFlag:
       ds      1

_doublePressFlag:
       ds      1

_sendStartFlag:
       ds      1

_B_MainLoop:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_pwmTime:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_KeyReference:
       ds      4

_KeyOldValue2:
       ds      4

_KeyOldValue1:
       ds      4

_KeyOldValue0:
       ds      4

_KeyResSum:
       ds      4

CheckValidTime@validtime:
       ds      2

_KeyData:
       ds      2

_KeyOldData:
       ds      2

_keyCount1:
       ds      2

_keyCount0:
       ds      2

_keyNub:
       ds      2

_KeyUpShake:
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

_checkCount:
       ds      1

_revZeroCount:
       ds      1

_revCount:
       ds      1

_irStep:
       ds      1

_MainTime:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\mcuproject\scm\台灯\main.c"
	line	12
_pwm1Step:
       ds      1

psect	dataBANK0
	file	"C:\mcuproject\scm\台灯\main.c"
	line	11
_pwm0Step:
       ds      1

	file	"keytest2.as"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
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
	movlw	low((__pbssBANK0)+02Eh)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
	clrf	((__pbitbssCOMMON/8)+1)&07Fh
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
?_mode1:	; 1 bytes @ 0x0
?_mode2:	; 1 bytes @ 0x0
?_mode3:	; 1 bytes @ 0x0
?_mode4:	; 1 bytes @ 0x0
?_mode5:	; 1 bytes @ 0x0
?_modea:	; 1 bytes @ 0x0
?_modeb:	; 1 bytes @ 0x0
?_modec:	; 1 bytes @ 0x0
?_moded:	; 1 bytes @ 0x0
?_modee:	; 1 bytes @ 0x0
?_initPWM:	; 1 bytes @ 0x0
?_CheckTouchKey:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_procKey1:	; 1 bytes @ 0x0
?_procKey2:	; 1 bytes @ 0x0
?_startPWM:	; 1 bytes @ 0x0
?_KeyServer:	; 1 bytes @ 0x0
?_checkIRKey:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
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
??_mode1:	; 1 bytes @ 0x2
??_mode2:	; 1 bytes @ 0x2
??_mode3:	; 1 bytes @ 0x2
??_mode4:	; 1 bytes @ 0x2
??_mode5:	; 1 bytes @ 0x2
??_modea:	; 1 bytes @ 0x2
??_modeb:	; 1 bytes @ 0x2
??_modec:	; 1 bytes @ 0x2
??_moded:	; 1 bytes @ 0x2
??_modee:	; 1 bytes @ 0x2
??_initPWM:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_procKey1:	; 1 bytes @ 0x2
??_procKey2:	; 1 bytes @ 0x2
??_startPWM:	; 1 bytes @ 0x2
??_KeyServer:	; 1 bytes @ 0x2
??_checkIRKey:	; 1 bytes @ 0x2
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
	global	KeyServer@i
KeyServer@i:	; 2 bytes @ 0x2
	global	KeyHave@flag
KeyHave@flag:	; 2 bytes @ 0x2
	ds	1
??_KeyStopClear:	; 1 bytes @ 0x3
??_GetTouchKeyValue:	; 1 bytes @ 0x3
	global	KeyIsIn@cnt
KeyIsIn@cnt:	; 1 bytes @ 0x3
	global	KeyStopClear@i
KeyStopClear@i:	; 1 bytes @ 0x3
	global	GetTouchKeyValue@temp
GetTouchKeyValue@temp:	; 1 bytes @ 0x3
	ds	1
??_KeyClearIn:	; 1 bytes @ 0x4
??_KeyHave:	; 1 bytes @ 0x4
??_CheckKeyOldValue:	; 1 bytes @ 0x4
	global	KeyClearIn@cnt
KeyClearIn@cnt:	; 1 bytes @ 0x4
	global	KeyHave@cnt
KeyHave@cnt:	; 1 bytes @ 0x4
	global	GetTouchKeyValue@cnt
GetTouchKeyValue@cnt:	; 1 bytes @ 0x4
	ds	1
??_TurnKeyFlags:	; 1 bytes @ 0x5
	ds	1
??_CheckTouchKey:	; 1 bytes @ 0x6
??_main:	; 1 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_CheckOnceResult:	; 1 bytes @ 0x0
	global	CheckKeyOldValue@KeyResTemp
CheckKeyOldValue@KeyResTemp:	; 2 bytes @ 0x0
	ds	2
	global	CheckKeyOldValue@KeyOldTemp
CheckKeyOldValue@KeyOldTemp:	; 2 bytes @ 0x2
	ds	2
	global	CheckKeyOldValue@cnt
CheckKeyOldValue@cnt:	; 1 bytes @ 0x4
	global	CheckOnceResult@OldValue
CheckOnceResult@OldValue:	; 2 bytes @ 0x4
	ds	2
	global	CheckOnceResult@flag
CheckOnceResult@flag:	; 1 bytes @ 0x6
	ds	1
	global	CheckOnceResult@KeyValue
CheckOnceResult@KeyValue:	; 2 bytes @ 0x7
	ds	2
	global	CheckOnceResult@KeyDown
CheckOnceResult@KeyDown:	; 1 bytes @ 0x9
	ds	1
	global	CheckOnceResult@KeyResTemp
CheckOnceResult@KeyResTemp:	; 2 bytes @ 0xA
	ds	2
	global	CheckOnceResult@cnt
CheckOnceResult@cnt:	; 1 bytes @ 0xC
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    14
;!    Data        2
;!    BSS         47
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80     13      61
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _CheckTouchKey->_CheckKeyOldValue
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
;! (0) _main                                                 0     0      0    3147
;!                      _CheckTouchKey
;!                        _Init_System
;!                          _KeyServer
;!                         _checkIRKey
;!                           _startPWM
;! ---------------------------------------------------------------------------------
;! (1) _startPWM                                             0     0      0       0
;!                            _initPWM
;!                           _procKey1
;!                           _procKey2
;! ---------------------------------------------------------------------------------
;! (2) _initPWM                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkIRKey                                           1     1      0       0
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _KeyServer                                            2     2      0      45
;!                                              2 COMMON     2     2      0
;!                           _procKey1
;!                           _procKey2
;! ---------------------------------------------------------------------------------
;! (2) _procKey2                                             0     0      0       0
;!                              _modea
;!                              _modeb
;!                              _modec
;!                              _moded
;!                              _modee
;! ---------------------------------------------------------------------------------
;! (3) _modee                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _moded                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _modec                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _modeb                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _modea                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _procKey1                                             0     0      0       0
;!                              _mode1
;!                              _mode2
;!                              _mode3
;!                              _mode4
;!                              _mode5
;! ---------------------------------------------------------------------------------
;! (3) _mode5                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _mode4                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _mode3                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _mode2                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _mode1                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _CheckTouchKey                                        0     0      0    3102
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
;! (2) _GetTouchKeyValue                                     2     2      0     157
;!                                              3 COMMON     2     2      0
;!                        _ClearResSum
;! ---------------------------------------------------------------------------------
;! (3) _ClearResSum                                          1     1      0      45
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _CheckValidTime                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _CheckOnceResult                                     13    13      0    1892
;!                                              0 BANK0     13    13      0
;!                        _KeyClearOne
;!                            _KeyHave
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (3) _KeyHave                                              3     1      2     304
;!                                              2 COMMON     3     1      2
;! ---------------------------------------------------------------------------------
;! (4) _KeyClearOne                                          1     1      0      88
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
;!     _procKey1
;!       _mode1
;!       _mode2
;!       _mode3
;!       _mode4
;!       _mode5
;!     _procKey2
;!       _modea
;!       _modeb
;!       _modec
;!       _moded
;!       _modee
;!   _checkIRKey
;!   _startPWM
;!     _initPWM
;!     _procKey1
;!       _mode1
;!       _mode2
;!       _mode3
;!       _mode4
;!       _mode5
;!     _procKey2
;!       _modea
;!       _modeb
;!       _modec
;!       _moded
;!       _modee
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
;!BANK0               50      D      3D       3       76.3%
;!BITBANK0            50      0       0       5        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITCOMMON            E      0       3       0       21.4%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      47      10        0.0%
;!ABS                  0      0      47       4        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 305 in file "C:\mcuproject\scm\台灯\main.c"
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
;;		_checkIRKey
;;		_startPWM
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\台灯\main.c"
	line	305
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\台灯\main.c"
	line	305
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	307
	
l2792:	
;main.c: 307: PORTB = 0x00;
	clrf	(6)	;volatile
	line	308
;main.c: 308: PORTA = 0x00;
	clrf	(5)	;volatile
	line	309
	
l2794:	
;main.c: 309: Init_System();
	fcall	_Init_System
	line	310
	
l2796:	
;main.c: 310: sendFlag = 1;
	bsf	(_sendFlag/8),(_sendFlag)&7	;volatile
	line	312
;main.c: 312: while(1)
	
l578:	
	line	314
# 314 "C:\mcuproject\scm\台灯\main.c"
clrwdt ;# 
psect	maintext
	line	315
	
l2798:	
;main.c: 315: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u1661
	goto	u1660
u1661:
	goto	l578
u1660:
	line	317
	
l2800:	
;main.c: 316: {
;main.c: 317: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	319
	
l2802:	
;main.c: 319: CheckTouchKey();
	fcall	_CheckTouchKey
	line	320
	
l2804:	
;main.c: 320: KeyServer();
	fcall	_KeyServer
	line	321
	
l2806:	
;main.c: 321: checkIRKey();
	fcall	_checkIRKey
	line	322
	
l2808:	
;main.c: 322: if(ONFlag)
	btfss	(_ONFlag/8),(_ONFlag)&7	;volatile
	goto	u1671
	goto	u1670
u1671:
	goto	l2812
u1670:
	line	324
	
l2810:	
;main.c: 323: {
;main.c: 324: startPWM();
	fcall	_startPWM
	line	325
;main.c: 325: }
	goto	l578
	line	328
	
l2812:	
;main.c: 326: else
;main.c: 327: {
;main.c: 328: PWMCON0 = 0;
	clrf	(19)	;volatile
	line	329
	
l2814:	
;main.c: 329: PORTB &= 0x7F;
	bcf	(6)+(7/8),(7)&7	;volatile
	line	330
	
l2816:	
;main.c: 330: PORTA &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	goto	l578
	global	start
	ljmp	start
	opt stack 0
	line	348
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_startPWM

;; *************** function _startPWM *****************
;; Defined at:
;;		line 161 in file "C:\mcuproject\scm\台灯\main.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_initPWM
;;		_procKey1
;;		_procKey2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	161
global __ptext1
__ptext1:	;psect for function _startPWM
psect	text1
	file	"C:\mcuproject\scm\台灯\main.c"
	line	161
	global	__size_of_startPWM
	__size_of_startPWM	equ	__end_of_startPWM-_startPWM
	
_startPWM:	
;incstack = 0
	opt	stack 4
; Regs used in _startPWM: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	163
	
l2482:	
;main.c: 163: --pwm0Step;
	decf	(_pwm0Step),f
	line	164
;main.c: 164: --pwm1Step;
	decf	(_pwm1Step),f
	line	165
	
l2484:	
;main.c: 165: initPWM();
	fcall	_initPWM
	line	166
	
l2486:	
;main.c: 166: procKey1();
	fcall	_procKey1
	line	167
	
l2488:	
;main.c: 167: procKey2();
	fcall	_procKey2
	line	168
	
l530:	
	return
	opt stack 0
GLOBAL	__end_of_startPWM
	__end_of_startPWM:
	signat	_startPWM,89
	global	_initPWM

;; *************** function _initPWM *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\台灯\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
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
;;		_startPWM
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\台灯\pwm.c"
	line	4
global __ptext2
__ptext2:	;psect for function _initPWM
psect	text2
	file	"C:\mcuproject\scm\台灯\pwm.c"
	line	4
	global	__size_of_initPWM
	__size_of_initPWM	equ	__end_of_initPWM-_initPWM
	
_initPWM:	
;incstack = 0
	opt	stack 5
; Regs used in _initPWM: [wreg+status,2]
	line	6
	
l2290:	
;pwm.c: 6: PWMCON1 = 0x40;
	movlw	low(040h)
	movwf	(20)	;volatile
	line	7
;pwm.c: 7: PWMCON0 = 0x23;
	movlw	low(023h)
	movwf	(19)	;volatile
	line	8
	
l2292:	
;pwm.c: 8: PWMCON2 = 0;
	clrf	(29)	;volatile
	line	9
	
l2294:	
;pwm.c: 9: PWMTH = 0;
	clrf	(22)	;volatile
	line	10
;pwm.c: 10: PWMTL = 125;
	movlw	low(07Dh)
	movwf	(21)	;volatile
	line	11
;pwm.c: 11: PWMD0L = 1;
	movlw	low(01h)
	movwf	(23)	;volatile
	line	12
;pwm.c: 12: PWMD1L = 1;
	movlw	low(01h)
	movwf	(24)	;volatile
	line	13
	
l2296:	
;pwm.c: 13: PWMD01H = 0;
	clrf	(28)	;volatile
	line	14
	
l989:	
	return
	opt stack 0
GLOBAL	__end_of_initPWM
	__end_of_initPWM:
	signat	_initPWM,89
	global	_checkIRKey

;; *************** function _checkIRKey *****************
;; Defined at:
;;		line 219 in file "C:\mcuproject\scm\台灯\main.c"
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
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\台灯\main.c"
	line	219
global __ptext3
__ptext3:	;psect for function _checkIRKey
psect	text3
	file	"C:\mcuproject\scm\台灯\main.c"
	line	219
	global	__size_of_checkIRKey
	__size_of_checkIRKey	equ	__end_of_checkIRKey-_checkIRKey
	
_checkIRKey:	
;incstack = 0
	opt	stack 6
; Regs used in _checkIRKey: [wreg+status,2+status,0]
	line	221
	
l2532:	
;main.c: 221: if(((PORTB) >> (2)&1))
	movf	(6),w	;volatile
	movwf	(??_checkIRKey+0)+0
	clrc
	rrf	(??_checkIRKey+0)+0,f
	clrc
	rrf	(??_checkIRKey+0)+0,f
	btfss	0+(??_checkIRKey+0)+0,(0)&7
	goto	u1281
	goto	u1280
u1281:
	goto	l2536
u1280:
	line	223
	
l2534:	
;main.c: 222: {
;main.c: 223: revCount++;
	incf	(_revCount),f
	line	226
	
l2536:	
;main.c: 224: }
;main.c: 226: if(checkCount > 10 && irStep)
	movlw	low(0Bh)
	subwf	(_checkCount),w
	skipc
	goto	u1291
	goto	u1290
u1291:
	goto	l553
u1290:
	
l2538:	
	movf	((_irStep)),w	;volatile
	btfsc	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l553
u1300:
	line	228
	
l2540:	
;main.c: 227: {
;main.c: 228: sendFlag = 0;
	bcf	(_sendFlag/8),(_sendFlag)&7	;volatile
	line	229
;main.c: 229: }
	goto	l2542
	line	230
	
l553:	
	line	232
;main.c: 230: else
;main.c: 231: {
;main.c: 232: sendFlag = 1;
	bsf	(_sendFlag/8),(_sendFlag)&7	;volatile
	line	235
	
l2542:	
;main.c: 233: }
;main.c: 235: if(++checkCount >= 20)
	movlw	low(014h)
	incf	(_checkCount),f
	subwf	((_checkCount)),w
	skipc
	goto	u1311
	goto	u1310
u1311:
	goto	l562
u1310:
	line	237
	
l2544:	
;main.c: 236: {
;main.c: 237: if(revCount > 2)
	movlw	low(03h)
	subwf	(_revCount),w
	skipc
	goto	u1321
	goto	u1320
u1321:
	goto	l2556
u1320:
	line	239
	
l2546:	
;main.c: 238: {
;main.c: 239: if(irStep == 0)
	movf	((_irStep)),w	;volatile
	btfss	status,2
	goto	u1331
	goto	u1330
u1331:
	goto	l2554
u1330:
	line	241
	
l2548:	
;main.c: 240: {
;main.c: 241: irStep = 1;
	movlw	low(01h)
	movwf	(_irStep)	;volatile
	line	242
	
l2550:	
;main.c: 242: if(ONFlag == 1)
	btfss	(_ONFlag/8),(_ONFlag)&7	;volatile
	goto	u1341
	goto	u1340
u1341:
	goto	l558
u1340:
	line	244
	
l2552:	
;main.c: 243: {
;main.c: 244: ONFlag = 0;
	bcf	(_ONFlag/8),(_ONFlag)&7	;volatile
	line	245
;main.c: 245: }
	goto	l2554
	line	246
	
l558:	
	line	248
;main.c: 246: else
;main.c: 247: {
;main.c: 248: ONFlag = 1;
	bsf	(_ONFlag/8),(_ONFlag)&7	;volatile
	line	251
	
l2554:	
;main.c: 249: }
;main.c: 250: }
;main.c: 251: revZeroCount = 0;
	clrf	(_revZeroCount)
	line	252
;main.c: 252: }
	goto	l2562
	line	255
	
l2556:	
;main.c: 253: else
;main.c: 254: {
;main.c: 255: if(++revZeroCount > 1)
	movlw	low(02h)
	incf	(_revZeroCount),f
	subwf	((_revZeroCount)),w
	skipc
	goto	u1351
	goto	u1350
u1351:
	goto	l2562
u1350:
	line	257
	
l2558:	
;main.c: 256: {
;main.c: 257: revZeroCount = 1;
	clrf	(_revZeroCount)
	incf	(_revZeroCount),f
	line	258
	
l2560:	
;main.c: 258: irStep = 0;
	clrf	(_irStep)	;volatile
	line	263
	
l2562:	
;main.c: 259: }
;main.c: 260: }
;main.c: 263: sendFlag = 1;
	bsf	(_sendFlag/8),(_sendFlag)&7	;volatile
	line	264
;main.c: 264: checkCount = 0;
	clrf	(_checkCount)
	line	265
;main.c: 265: revCount = 0;
	clrf	(_revCount)
	line	268
	
l562:	
	return
	opt stack 0
GLOBAL	__end_of_checkIRKey
	__end_of_checkIRKey:
	signat	_checkIRKey,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 175 in file "C:\mcuproject\scm\台灯\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] unsigned int 
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
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_procKey1
;;		_procKey2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	175
global __ptext4
__ptext4:	;psect for function _KeyServer
psect	text4
	file	"C:\mcuproject\scm\台灯\main.c"
	line	175
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyServer: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	178
	
l2490:	
;main.c: 177: static unsigned int KeyOldFlag = 0;
;main.c: 178: unsigned int i = (unsigned int)((KeyFlag[1]<<8) | KeyFlag[0]);
	movf	0+(_KeyFlag)+01h,w	;volatile
	movwf	(KeyServer@i+1)
	movf	(_KeyFlag),w	;volatile
	movwf	(KeyServer@i)
	line	179
	
l2492:	
;main.c: 179: if(i)
	movf	((KeyServer@i)),w
iorwf	((KeyServer@i+1)),w
	btfsc	status,2
	goto	u1171
	goto	u1170
u1171:
	goto	l2508
u1170:
	line	181
	
l2494:	
;main.c: 180: {
;main.c: 181: keyNub = i;
	movf	(KeyServer@i+1),w
	movwf	(_keyNub+1)
	movf	(KeyServer@i),w
	movwf	(_keyNub)
	line	182
	
l2496:	
;main.c: 182: if(keyNub & 0x01){
	btfss	(_keyNub),(0)&7
	goto	u1181
	goto	u1180
u1181:
	goto	l2502
u1180:
	line	183
	
l2498:	
;main.c: 183: if(++keyCount0 > 200)
	incf	(_keyCount0),f
	skipnz
	incf	(_keyCount0+1),f
	movlw	0
	subwf	((_keyCount0+1)),w
	movlw	0C9h
	skipnz
	subwf	((_keyCount0)),w
	skipc
	goto	u1191
	goto	u1190
u1191:
	goto	l2502
u1190:
	line	184
	
l2500:	
;main.c: 184: keyCount0 = 200;
	movlw	0C8h
	movwf	(_keyCount0)
	clrf	(_keyCount0+1)
	line	186
	
l2502:	
;main.c: 185: }
;main.c: 186: if(keyNub & 0x02){
	btfss	(_keyNub),(1)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l549
u1200:
	line	187
	
l2504:	
;main.c: 187: if(++keyCount1 > 200)
	incf	(_keyCount1),f
	skipnz
	incf	(_keyCount1+1),f
	movlw	0
	subwf	((_keyCount1+1)),w
	movlw	0C9h
	skipnz
	subwf	((_keyCount1)),w
	skipc
	goto	u1211
	goto	u1210
u1211:
	goto	l549
u1210:
	line	188
	
l2506:	
;main.c: 188: keyCount1 = 200;
	movlw	0C8h
	movwf	(_keyCount1)
	clrf	(_keyCount1+1)
	goto	l549
	line	193
	
l2508:	
;main.c: 191: else
;main.c: 192: {
;main.c: 193: if(keyCount0 > 3 && keyCount1 > 3)
	movlw	0
	subwf	(_keyCount0+1),w
	movlw	04h
	skipnz
	subwf	(_keyCount0),w
	skipc
	goto	u1221
	goto	u1220
u1221:
	goto	l2514
u1220:
	
l2510:	
	movlw	0
	subwf	(_keyCount1+1),w
	movlw	04h
	skipnz
	subwf	(_keyCount1),w
	skipc
	goto	u1231
	goto	u1230
u1231:
	goto	l2514
u1230:
	line	196
	
l2512:	
;main.c: 194: {
;main.c: 196: ONFlag = !ONFlag;
	movlw	1<<((_ONFlag)&7)
	xorwf	((_ONFlag)/8),f
	line	197
;main.c: 197: }
	goto	l2526
	line	198
	
l2514:	
;main.c: 198: else if(keyCount0 > 3 || keyCount1 > 3)
	movlw	0
	subwf	(_keyCount0+1),w
	movlw	04h
	skipnz
	subwf	(_keyCount0),w
	skipnc
	goto	u1241
	goto	u1240
u1241:
	goto	l545
u1240:
	
l2516:	
	movlw	0
	subwf	(_keyCount1+1),w
	movlw	04h
	skipnz
	subwf	(_keyCount1),w
	skipc
	goto	u1251
	goto	u1250
u1251:
	goto	l2526
u1250:
	
l545:	
	line	201
;main.c: 199: {
;main.c: 201: if(keyNub & 0x01)
	btfss	(_keyNub),(0)&7
	goto	u1261
	goto	u1260
u1261:
	goto	l546
u1260:
	line	203
	
l2518:	
;main.c: 202: {
;main.c: 203: ONFlag = 1;
	bsf	(_ONFlag/8),(_ONFlag)&7	;volatile
	line	204
	
l2520:	
;main.c: 204: procKey1();
	fcall	_procKey1
	line	205
;main.c: 205: }
	goto	l2526
	line	206
	
l546:	
;main.c: 206: else if(keyNub &0x02)
	btfss	(_keyNub),(1)&7
	goto	u1271
	goto	u1270
u1271:
	goto	l543
u1270:
	line	208
	
l2522:	
;main.c: 207: {
;main.c: 208: ONFlag = 1;
	bsf	(_ONFlag/8),(_ONFlag)&7	;volatile
	line	209
	
l2524:	
;main.c: 209: procKey2();
	fcall	_procKey2
	goto	l2526
	line	212
	
l543:	
	line	213
	
l2526:	
;main.c: 210: }
;main.c: 212: }
;main.c: 213: keyCount0 = 0;
	clrf	(_keyCount0)
	clrf	(_keyCount0+1)
	line	214
	
l2528:	
;main.c: 214: keyCount1 = 0;
	clrf	(_keyCount1)
	clrf	(_keyCount1+1)
	line	215
	
l2530:	
;main.c: 215: keyNub = 0;
	clrf	(_keyNub)
	clrf	(_keyNub+1)
	line	217
	
l549:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_procKey2

;; *************** function _procKey2 *****************
;; Defined at:
;;		line 133 in file "C:\mcuproject\scm\台灯\main.c"
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
;;		On exit  : 300/0
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
;;		_modea
;;		_modeb
;;		_modec
;;		_moded
;;		_modee
;; This function is called by:
;;		_startPWM
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	133
global __ptext5
__ptext5:	;psect for function _procKey2
psect	text5
	file	"C:\mcuproject\scm\台灯\main.c"
	line	133
	global	__size_of_procKey2
	__size_of_procKey2	equ	__end_of_procKey2-_procKey2
	
_procKey2:	
;incstack = 0
	opt	stack 4
; Regs used in _procKey2: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	135
	
l2264:	
;main.c: 135: if(ONFlag == 0)
	btfsc	(_ONFlag/8),(_ONFlag)&7	;volatile
	goto	u811
	goto	u810
u811:
	goto	l518
u810:
	goto	l519
	line	136
	
l518:	
	line	137
;main.c: 137: pwmFlag = 1;
	bsf	(_pwmFlag/8),(_pwmFlag)&7	;volatile
	line	138
	
l2268:	
;main.c: 138: if(++pwm1Step > 5)
	movlw	low(06h)
	incf	(_pwm1Step),f
	subwf	((_pwm1Step)),w
	skipc
	goto	u821
	goto	u820
u821:
	goto	l2284
u820:
	line	139
	
l2270:	
;main.c: 139: pwm1Step = 1;
	clrf	(_pwm1Step)
	incf	(_pwm1Step),f
	goto	l2284
	line	143
	
l2272:	
;main.c: 143: modea();
	fcall	_modea
	line	144
;main.c: 144: break;
	goto	l519
	line	146
	
l2274:	
;main.c: 146: modeb();
	fcall	_modeb
	line	147
;main.c: 147: break;
	goto	l519
	line	149
	
l2276:	
;main.c: 149: modec();
	fcall	_modec
	line	150
;main.c: 150: break;
	goto	l519
	line	152
	
l2278:	
;main.c: 152: moded();
	fcall	_moded
	line	153
;main.c: 153: break;
	goto	l519
	line	155
	
l2280:	
;main.c: 155: modee();
	fcall	_modee
	line	156
;main.c: 156: break;
	goto	l519
	line	140
	
l2284:	
	movf	(_pwm1Step),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           14     9 (fixed)
; simple_byte           16     9 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is direct_byte

	addlw	-1
	skipc
goto l519
	movwf fsr
	movlw	5
	subwf	fsr,w
skipnc
goto l519
movlw high(S2858)
movwf pclath
	movlw low(S2858)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S2858:
	ljmp	l2272
	ljmp	l2274
	ljmp	l2276
	ljmp	l2278
	ljmp	l2280
psect	text5

	line	158
	
l519:	
	return
	opt stack 0
GLOBAL	__end_of_procKey2
	__end_of_procKey2:
	signat	_procKey2,89
	global	_modee

;; *************** function _modee *****************
;; Defined at:
;;		line 71 in file "C:\mcuproject\scm\台灯\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
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
;;		_procKey2
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\台灯\pwm.c"
	line	71
global __ptext6
__ptext6:	;psect for function _modee
psect	text6
	file	"C:\mcuproject\scm\台灯\pwm.c"
	line	71
	global	__size_of_modee
	__size_of_modee	equ	__end_of_modee-_modee
	
_modee:	
;incstack = 0
	opt	stack 4
; Regs used in _modee: [wreg+status,2]
	line	73
	
l2198:	
;pwm.c: 73: PWMD1L = 94;
	movlw	low(05Eh)
	movwf	(24)	;volatile
	line	74
	
l2200:	
;pwm.c: 74: PWMD01H = 0;
	clrf	(28)	;volatile
	line	75
	
l1019:	
	return
	opt stack 0
GLOBAL	__end_of_modee
	__end_of_modee:
	signat	_modee,89
	global	_moded

;; *************** function _moded *****************
;; Defined at:
;;		line 65 in file "C:\mcuproject\scm\台灯\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
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
;;		_procKey2
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	65
global __ptext7
__ptext7:	;psect for function _moded
psect	text7
	file	"C:\mcuproject\scm\台灯\pwm.c"
	line	65
	global	__size_of_moded
	__size_of_moded	equ	__end_of_moded-_moded
	
_moded:	
;incstack = 0
	opt	stack 4
; Regs used in _moded: [wreg+status,2]
	line	67
	
l2194:	
;pwm.c: 67: PWMD1L = 62;
	movlw	low(03Eh)
	movwf	(24)	;volatile
	line	68
	
l2196:	
;pwm.c: 68: PWMD01H = 0;
	clrf	(28)	;volatile
	line	69
	
l1016:	
	return
	opt stack 0
GLOBAL	__end_of_moded
	__end_of_moded:
	signat	_moded,89
	global	_modec

;; *************** function _modec *****************
;; Defined at:
;;		line 58 in file "C:\mcuproject\scm\台灯\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
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
;;		_procKey2
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	58
global __ptext8
__ptext8:	;psect for function _modec
psect	text8
	file	"C:\mcuproject\scm\台灯\pwm.c"
	line	58
	global	__size_of_modec
	__size_of_modec	equ	__end_of_modec-_modec
	
_modec:	
;incstack = 0
	opt	stack 4
; Regs used in _modec: [wreg+status,2]
	line	60
	
l2190:	
;pwm.c: 60: PWMD1L = 31;
	movlw	low(01Fh)
	movwf	(24)	;volatile
	line	61
;pwm.c: 61: PWMCON0 = 0x23;
	movlw	low(023h)
	movwf	(19)	;volatile
	line	62
	
l2192:	
;pwm.c: 62: PWMD01H = 0;
	clrf	(28)	;volatile
	line	63
	
l1013:	
	return
	opt stack 0
GLOBAL	__end_of_modec
	__end_of_modec:
	signat	_modec,89
	global	_modeb

;; *************** function _modeb *****************
;; Defined at:
;;		line 52 in file "C:\mcuproject\scm\台灯\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;;		_procKey2
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	52
global __ptext9
__ptext9:	;psect for function _modeb
psect	text9
	file	"C:\mcuproject\scm\台灯\pwm.c"
	line	52
	global	__size_of_modeb
	__size_of_modeb	equ	__end_of_modeb-_modeb
	
_modeb:	
;incstack = 0
	opt	stack 4
; Regs used in _modeb: [wreg]
	line	54
	
l2186:	
;pwm.c: 54: PWMCON0 = 0x21;
	movlw	low(021h)
	movwf	(19)	;volatile
	line	55
	
l2188:	
;pwm.c: 55: PORTB&=~(1<<7);
	bcf	(6)+(7/8),(7)&7	;volatile
	line	56
	
l1010:	
	return
	opt stack 0
GLOBAL	__end_of_modeb
	__end_of_modeb:
	signat	_modeb,89
	global	_modea

;; *************** function _modea *****************
;; Defined at:
;;		line 46 in file "C:\mcuproject\scm\台灯\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
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
;;		_procKey2
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	46
global __ptext10
__ptext10:	;psect for function _modea
psect	text10
	file	"C:\mcuproject\scm\台灯\pwm.c"
	line	46
	global	__size_of_modea
	__size_of_modea	equ	__end_of_modea-_modea
	
_modea:	
;incstack = 0
	opt	stack 4
; Regs used in _modea: [wreg+status,2]
	line	48
	
l2182:	
;pwm.c: 48: PWMD1L = 125;
	movlw	low(07Dh)
	movwf	(24)	;volatile
	line	49
	
l2184:	
;pwm.c: 49: PWMD01H = 0;
	clrf	(28)	;volatile
	line	50
	
l1007:	
	return
	opt stack 0
GLOBAL	__end_of_modea
	__end_of_modea:
	signat	_modea,89
	global	_procKey1

;; *************** function _procKey1 *****************
;; Defined at:
;;		line 104 in file "C:\mcuproject\scm\台灯\main.c"
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
;;		On exit  : 300/0
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
;;		_mode1
;;		_mode2
;;		_mode3
;;		_mode4
;;		_mode5
;; This function is called by:
;;		_startPWM
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\台灯\main.c"
	line	104
global __ptext11
__ptext11:	;psect for function _procKey1
psect	text11
	file	"C:\mcuproject\scm\台灯\main.c"
	line	104
	global	__size_of_procKey1
	__size_of_procKey1	equ	__end_of_procKey1-_procKey1
	
_procKey1:	
;incstack = 0
	opt	stack 4
; Regs used in _procKey1: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	106
	
l2238:	
;main.c: 106: if(ONFlag == 0)
	btfsc	(_ONFlag/8),(_ONFlag)&7	;volatile
	goto	u791
	goto	u790
u791:
	goto	l506
u790:
	goto	l507
	line	107
	
l506:	
	line	108
;main.c: 108: pwmFlag = 1;
	bsf	(_pwmFlag/8),(_pwmFlag)&7	;volatile
	line	109
	
l2242:	
;main.c: 109: if(++pwm0Step > 5)
	movlw	low(06h)
	incf	(_pwm0Step),f
	subwf	((_pwm0Step)),w
	skipc
	goto	u801
	goto	u800
u801:
	goto	l2258
u800:
	line	110
	
l2244:	
;main.c: 110: pwm0Step = 1;
	clrf	(_pwm0Step)
	incf	(_pwm0Step),f
	goto	l2258
	line	114
	
l2246:	
;main.c: 114: mode1();
	fcall	_mode1
	line	115
;main.c: 115: break;
	goto	l507
	line	117
	
l2248:	
;main.c: 117: mode2();
	fcall	_mode2
	line	118
;main.c: 118: break;
	goto	l507
	line	120
	
l2250:	
;main.c: 120: mode3();
	fcall	_mode3
	line	121
;main.c: 121: break;
	goto	l507
	line	123
	
l2252:	
;main.c: 123: mode4();
	fcall	_mode4
	line	124
;main.c: 124: break;
	goto	l507
	line	126
	
l2254:	
;main.c: 126: mode5();
	fcall	_mode5
	line	127
;main.c: 127: break;
	goto	l507
	line	111
	
l2258:	
	movf	(_pwm0Step),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           14     9 (fixed)
; simple_byte           16     9 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is direct_byte

	addlw	-1
	skipc
goto l507
	movwf fsr
	movlw	5
	subwf	fsr,w
skipnc
goto l507
movlw high(S2860)
movwf pclath
	movlw low(S2860)
	addwf fsr,w
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
S2860:
	ljmp	l2246
	ljmp	l2248
	ljmp	l2250
	ljmp	l2252
	ljmp	l2254
psect	text11

	line	130
	
l507:	
	return
	opt stack 0
GLOBAL	__end_of_procKey1
	__end_of_procKey1:
	signat	_procKey1,89
	global	_mode5

;; *************** function _mode5 *****************
;; Defined at:
;;		line 40 in file "C:\mcuproject\scm\台灯\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
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
;;		_procKey1
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\台灯\pwm.c"
	line	40
global __ptext12
__ptext12:	;psect for function _mode5
psect	text12
	file	"C:\mcuproject\scm\台灯\pwm.c"
	line	40
	global	__size_of_mode5
	__size_of_mode5	equ	__end_of_mode5-_mode5
	
_mode5:	
;incstack = 0
	opt	stack 4
; Regs used in _mode5: [wreg+status,2]
	line	42
	
l2178:	
;pwm.c: 42: PWMD0L = 125;
	movlw	low(07Dh)
	movwf	(23)	;volatile
	line	43
	
l2180:	
;pwm.c: 43: PWMD01H = 0;
	clrf	(28)	;volatile
	line	44
	
l1004:	
	return
	opt stack 0
GLOBAL	__end_of_mode5
	__end_of_mode5:
	signat	_mode5,89
	global	_mode4

;; *************** function _mode4 *****************
;; Defined at:
;;		line 34 in file "C:\mcuproject\scm\台灯\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
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
;;		_procKey1
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	34
global __ptext13
__ptext13:	;psect for function _mode4
psect	text13
	file	"C:\mcuproject\scm\台灯\pwm.c"
	line	34
	global	__size_of_mode4
	__size_of_mode4	equ	__end_of_mode4-_mode4
	
_mode4:	
;incstack = 0
	opt	stack 4
; Regs used in _mode4: [wreg+status,2]
	line	36
	
l2174:	
;pwm.c: 36: PWMD0L = 71;
	movlw	low(047h)
	movwf	(23)	;volatile
	line	37
	
l2176:	
;pwm.c: 37: PWMD01H = 0;
	clrf	(28)	;volatile
	line	38
	
l1001:	
	return
	opt stack 0
GLOBAL	__end_of_mode4
	__end_of_mode4:
	signat	_mode4,89
	global	_mode3

;; *************** function _mode3 *****************
;; Defined at:
;;		line 28 in file "C:\mcuproject\scm\台灯\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
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
;;		_procKey1
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	28
global __ptext14
__ptext14:	;psect for function _mode3
psect	text14
	file	"C:\mcuproject\scm\台灯\pwm.c"
	line	28
	global	__size_of_mode3
	__size_of_mode3	equ	__end_of_mode3-_mode3
	
_mode3:	
;incstack = 0
	opt	stack 4
; Regs used in _mode3: [wreg+status,2]
	line	30
	
l2170:	
;pwm.c: 30: PWMD0L = 20;
	movlw	low(014h)
	movwf	(23)	;volatile
	line	31
	
l2172:	
;pwm.c: 31: PWMD01H = 0;
	clrf	(28)	;volatile
	line	32
	
l998:	
	return
	opt stack 0
GLOBAL	__end_of_mode3
	__end_of_mode3:
	signat	_mode3,89
	global	_mode2

;; *************** function _mode2 *****************
;; Defined at:
;;		line 22 in file "C:\mcuproject\scm\台灯\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
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
;;		_procKey1
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	22
global __ptext15
__ptext15:	;psect for function _mode2
psect	text15
	file	"C:\mcuproject\scm\台灯\pwm.c"
	line	22
	global	__size_of_mode2
	__size_of_mode2	equ	__end_of_mode2-_mode2
	
_mode2:	
;incstack = 0
	opt	stack 4
; Regs used in _mode2: [wreg+status,2]
	line	24
	
l2166:	
;pwm.c: 24: PWMD0L = 12;
	movlw	low(0Ch)
	movwf	(23)	;volatile
	line	25
	
l2168:	
;pwm.c: 25: PWMD01H = 0;
	clrf	(28)	;volatile
	line	26
	
l995:	
	return
	opt stack 0
GLOBAL	__end_of_mode2
	__end_of_mode2:
	signat	_mode2,89
	global	_mode1

;; *************** function _mode1 *****************
;; Defined at:
;;		line 16 in file "C:\mcuproject\scm\台灯\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
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
;;		_procKey1
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	16
global __ptext16
__ptext16:	;psect for function _mode1
psect	text16
	file	"C:\mcuproject\scm\台灯\pwm.c"
	line	16
	global	__size_of_mode1
	__size_of_mode1	equ	__end_of_mode1-_mode1
	
_mode1:	
;incstack = 0
	opt	stack 4
; Regs used in _mode1: [wreg+status,2]
	line	18
	
l2162:	
;pwm.c: 18: PWMD0L = 1;
	movlw	low(01h)
	movwf	(23)	;volatile
	line	19
	
l2164:	
;pwm.c: 19: PWMD01H = 0;
	clrf	(28)	;volatile
	line	20
	
l992:	
	return
	opt stack 0
GLOBAL	__end_of_mode1
	__end_of_mode1:
	signat	_mode1,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 27 in file "C:\mcuproject\scm\台灯\main.c"
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\台灯\main.c"
	line	27
global __ptext17
__ptext17:	;psect for function _Init_System
psect	text17
	file	"C:\mcuproject\scm\台灯\main.c"
	line	27
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	29
	
l1914:	
# 29 "C:\mcuproject\scm\台灯\main.c"
nop ;# 
	line	30
# 30 "C:\mcuproject\scm\台灯\main.c"
clrwdt ;# 
psect	text17
	line	31
	
l1916:	
;main.c: 31: INTCON = 0;
	clrf	(11)	;volatile
	line	32
	
l1918:	
;main.c: 32: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	33
	
l1920:	
;main.c: 33: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	37
	
l1922:	
;main.c: 37: WPUB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(8)	;volatile
	line	38
	
l1924:	
;main.c: 38: WPDB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	39
	
l1926:	
;main.c: 39: WPUA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	41
	
l1928:	
;main.c: 41: PIE1 = 2;
	movlw	low(02h)
	movwf	(13)	;volatile
	line	42
	
l1930:	
;main.c: 42: PR2 = 250;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	43
	
l1932:	
;main.c: 43: T2CON = 4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	44
;main.c: 44: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	45
	
l1934:	
;main.c: 45: TRISB = 0x07;
	movlw	low(07h)
	movwf	(134)^080h	;volatile
	line	46
	
l1936:	
;main.c: 46: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	47
	
l1938:	
;main.c: 47: PORTA = 0x00;
	clrf	(5)	;volatile
	line	48
	
l1940:	
;main.c: 48: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	49
	
l499:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_CheckTouchKey

;; *************** function _CheckTouchKey *****************
;; Defined at:
;;		line 495 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	495
global __ptext18
__ptext18:	;psect for function _CheckTouchKey
psect	text18
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	495
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 2
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	497
	
l2756:	
;CheckTouchKey.c: 497: if(!b_kover)
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u1611
	goto	u1610
u1611:
	goto	l1190
u1610:
	line	500
	
l2758:	
;CheckTouchKey.c: 498: {
;CheckTouchKey.c: 500: GetTouchKeyValue();
	fcall	_GetTouchKeyValue
	line	501
	
l2760:	
;CheckTouchKey.c: 501: if(++KeyCounter >= 8)
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u1621
	goto	u1620
u1621:
	goto	l2790
u1620:
	line	503
	
l2762:	
;CheckTouchKey.c: 502: {
;CheckTouchKey.c: 503: KeyCounter = 0;
	clrf	(_KeyCounter)
	line	504
	
l2764:	
;CheckTouchKey.c: 504: b_kover = 1;
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l2790
	line	507
	
l1190:	
;CheckTouchKey.c: 507: else if(!b_kover1)
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u1631
	goto	u1630
u1631:
	goto	l2784
u1630:
	line	510
	
l2766:	
;CheckTouchKey.c: 508: {
;CheckTouchKey.c: 510: CheckOnceResult();
	fcall	_CheckOnceResult
	line	513
;CheckTouchKey.c: 513: TurnKeyFlags();
	fcall	_TurnKeyFlags
	line	514
	
l2768:	
;CheckTouchKey.c: 514: b_kover1 = 1;
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	520
	
l2770:	
;CheckTouchKey.c: 520: if(b_kerr || KeyCounter > KeyValidNumber)
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u1641
	goto	u1640
u1641:
	goto	l2774
u1640:
	
l2772:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l2782
u1650:
	line	522
	
l2774:	
;CheckTouchKey.c: 521: {
;CheckTouchKey.c: 522: KeyStopClear();
	fcall	_KeyStopClear
	line	523
	
l2776:	
;CheckTouchKey.c: 523: b_kerr = 0;
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	524
	
l2778:	
;CheckTouchKey.c: 524: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	525
	
l2780:	
;CheckTouchKey.c: 525: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	527
	
l2782:	
;CheckTouchKey.c: 526: }
;CheckTouchKey.c: 527: KeyCounter = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	line	528
;CheckTouchKey.c: 528: }
	goto	l2790
	line	532
	
l2784:	
;CheckTouchKey.c: 529: else
;CheckTouchKey.c: 530: {
;CheckTouchKey.c: 532: CheckKeyOldValue();
	fcall	_CheckKeyOldValue
	line	534
;CheckTouchKey.c: 534: ClearResSum();
	fcall	_ClearResSum
	line	536
	
l2786:	
;CheckTouchKey.c: 536: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	537
	
l2788:	
;CheckTouchKey.c: 537: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	540
	
l2790:	
;CheckTouchKey.c: 538: }
;CheckTouchKey.c: 540: CheckValidTime();
	fcall	_CheckValidTime
	line	541
	
l1198:	
	return
	opt stack 0
GLOBAL	__end_of_CheckTouchKey
	__end_of_CheckTouchKey:
	signat	_CheckTouchKey,89
	global	_TurnKeyFlags

;; *************** function _TurnKeyFlags *****************
;; Defined at:
;;		line 382 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	line	382
global __ptext19
__ptext19:	;psect for function _TurnKeyFlags
psect	text19
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	382
	global	__size_of_TurnKeyFlags
	__size_of_TurnKeyFlags	equ	__end_of_TurnKeyFlags-_TurnKeyFlags
	
_TurnKeyFlags:	
;incstack = 0
	opt	stack 2
; Regs used in _TurnKeyFlags: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	387
	
l2438:	
;CheckTouchKey.c: 384: static unsigned char KeyHaveTimes = 0;
;CheckTouchKey.c: 385: static unsigned char KeyNoTimes = 0;
;CheckTouchKey.c: 387: if(KeyData[0] | KeyData[1])
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u1091
	goto	u1090
u1091:
	goto	l2464
u1090:
	line	389
	
l2440:	
;CheckTouchKey.c: 388: {
;CheckTouchKey.c: 389: KeyNoTimes = 0;
	clrf	(TurnKeyFlags@KeyNoTimes)
	line	391
	
l2442:	
;CheckTouchKey.c: 391: if(KeyData[0] == KeyOldData[0] && KeyData[1] == KeyOldData[1])
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u1101
	goto	u1100
u1101:
	goto	l1171
u1100:
	
l2444:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u1111
	goto	u1110
u1111:
	goto	l1171
u1110:
	line	393
	
l2446:	
	movlw	low(02h)
	incf	(TurnKeyFlags@KeyHaveTimes),f
	subwf	((TurnKeyFlags@KeyHaveTimes)),w
	skipc
	goto	u1121
	goto	u1120
u1121:
	goto	l1178
u1120:
	line	395
	
l2448:	
;CheckTouchKey.c: 394: {
;CheckTouchKey.c: 395: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	line	396
	
l2450:	
;CheckTouchKey.c: 396: KeyFlag[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	line	397
	
l2452:	
;CheckTouchKey.c: 397: KeyFlag[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	line	401
	
l2454:	
;CheckTouchKey.c: 400: {
;CheckTouchKey.c: 401: if(!b_kclr)
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u1131
	goto	u1130
u1131:
	goto	l1175
u1130:
	line	403
	
l2456:	
;CheckTouchKey.c: 402: {
;CheckTouchKey.c: 403: b_kclr = 1;
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	404
	
l2458:	
;CheckTouchKey.c: 404: KeyClearIn();
	fcall	_KeyClearIn
	goto	l1178
	line	409
	
l1171:	
	line	411
;CheckTouchKey.c: 409: else
;CheckTouchKey.c: 410: {
;CheckTouchKey.c: 411: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	412
	
l2460:	
;CheckTouchKey.c: 412: KeyOldData[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	line	413
;CheckTouchKey.c: 413: KeyOldData[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	line	414
	
l2462:	
;CheckTouchKey.c: 414: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	goto	l1178
	line	415
	
l1175:	
	line	416
;CheckTouchKey.c: 415: }
;CheckTouchKey.c: 416: }
	goto	l1178
	line	419
	
l2464:	
;CheckTouchKey.c: 417: else
;CheckTouchKey.c: 418: {
;CheckTouchKey.c: 419: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	line	420
;CheckTouchKey.c: 420: KeyOldData[0] = 0;
	clrf	(_KeyOldData)	;volatile
	line	421
;CheckTouchKey.c: 421: KeyOldData[1] = 0;
	clrf	0+(_KeyOldData)+01h	;volatile
	line	423
	
l2466:	
;CheckTouchKey.c: 423: if(++KeyNoTimes >=2)
	movlw	low(02h)
	incf	(TurnKeyFlags@KeyNoTimes),f
	subwf	((TurnKeyFlags@KeyNoTimes)),w
	skipc
	goto	u1141
	goto	u1140
u1141:
	goto	l1178
u1140:
	line	425
	
l2468:	
;CheckTouchKey.c: 424: {
;CheckTouchKey.c: 425: KeyNoTimes = 0;
	clrf	(TurnKeyFlags@KeyNoTimes)
	line	426
;CheckTouchKey.c: 426: KeyFlag[0] = 0;
	clrf	(_KeyFlag)	;volatile
	line	427
;CheckTouchKey.c: 427: KeyFlag[1] = 0;
	clrf	0+(_KeyFlag)+01h	;volatile
	line	429
	
l2470:	
;CheckTouchKey.c: 429: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	432
	
l1178:	
	return
	opt stack 0
GLOBAL	__end_of_TurnKeyFlags
	__end_of_TurnKeyFlags:
	signat	_TurnKeyFlags,89
	global	_KeyClearIn

;; *************** function _KeyClearIn *****************
;; Defined at:
;;		line 88 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	line	88
global __ptext20
__ptext20:	;psect for function _KeyClearIn
psect	text20
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	88
	global	__size_of_KeyClearIn
	__size_of_KeyClearIn	equ	__end_of_KeyClearIn-_KeyClearIn
	
_KeyClearIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyClearIn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	91
	
l2202:	
;CheckTouchKey.c: 90: unsigned char cnt;
;CheckTouchKey.c: 91: for(cnt=0;cnt < KeyTotalNumber;cnt++)
	clrf	(KeyClearIn@cnt)
	line	93
	
l2208:	
;CheckTouchKey.c: 92: {
;CheckTouchKey.c: 93: if(!KeyIsIn(cnt))
	movf	(KeyClearIn@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u751
	goto	u750
u751:
	goto	l2212
u750:
	line	95
	
l2210:	
;CheckTouchKey.c: 94: {
;CheckTouchKey.c: 95: KeyClearOne(cnt);
	movf	(KeyClearIn@cnt),w
	fcall	_KeyClearOne
	line	91
	
l2212:	
	incf	(KeyClearIn@cnt),f
	
l2214:	
	movlw	low(02h)
	subwf	(KeyClearIn@cnt),w
	skipc
	goto	u761
	goto	u760
u761:
	goto	l2208
u760:
	line	98
	
l1089:	
	return
	opt stack 0
GLOBAL	__end_of_KeyClearIn
	__end_of_KeyClearIn:
	signat	_KeyClearIn,89
	global	_KeyStopClear

;; *************** function _KeyStopClear *****************
;; Defined at:
;;		line 107 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=1
	line	107
global __ptext21
__ptext21:	;psect for function _KeyStopClear
psect	text21
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	107
	global	__size_of_KeyStopClear
	__size_of_KeyStopClear	equ	__end_of_KeyStopClear-_KeyStopClear
	
_KeyStopClear:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	110
	
l2298:	
;CheckTouchKey.c: 109: unsigned char i;
;CheckTouchKey.c: 110: KeyFlag[0] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyFlag)	;volatile
	line	111
;CheckTouchKey.c: 111: KeyFlag[1] = 0;
	clrf	0+(_KeyFlag)+01h	;volatile
	line	112
;CheckTouchKey.c: 112: for(i = 0; i < KeyTotalNumber; i++)
	clrf	(KeyStopClear@i)
	line	114
	
l2304:	
;CheckTouchKey.c: 113: {
;CheckTouchKey.c: 114: KeyResSum[i] = 0;
	clrc
	rlf	(KeyStopClear@i),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	115
	
l2306:	
;CheckTouchKey.c: 115: KeyClearOne(i);
	movf	(KeyStopClear@i),w
	fcall	_KeyClearOne
	line	112
	
l2308:	
	incf	(KeyStopClear@i),f
	
l2310:	
	movlw	low(02h)
	subwf	(KeyStopClear@i),w
	skipc
	goto	u831
	goto	u830
u831:
	goto	l2304
u830:
	line	117
	
l1094:	
	return
	opt stack 0
GLOBAL	__end_of_KeyStopClear
	__end_of_KeyStopClear:
	signat	_KeyStopClear,89
	global	_GetTouchKeyValue

;; *************** function _GetTouchKeyValue *****************
;; Defined at:
;;		line 180 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             1    4[COMMON] unsigned char 
;;  temp            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : A00/0
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
;;		_ClearResSum
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	line	180
global __ptext22
__ptext22:	;psect for function _GetTouchKeyValue
psect	text22
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	180
	global	__size_of_GetTouchKeyValue
	__size_of_GetTouchKeyValue	equ	__end_of_GetTouchKeyValue-_GetTouchKeyValue
	
_GetTouchKeyValue:	
;incstack = 0
	opt	stack 4
; Regs used in _GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	182
	
l2312:	
;CheckTouchKey.c: 182: unsigned char cnt = 0,temp;
	clrf	(GetTouchKeyValue@cnt)
	line	184
;CheckTouchKey.c: 184: do
	
l1111:	
	line	186
;CheckTouchKey.c: 185: {
;CheckTouchKey.c: 186: KEYCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(146)^080h	;volatile
	line	187
;CheckTouchKey.c: 187: KEYCON1 = 0;
	clrf	(147)^080h	;volatile
	line	194
	
l2314:	
;CheckTouchKey.c: 194: KEYCON0 = Table_KeyCap[cnt];
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(146)^080h	;volatile
	line	195
	
l2316:	
;CheckTouchKey.c: 195: KEYCON1 = Table_KeyChannel[cnt];
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(147)^080h	;volatile
	line	196
	
l2318:	
;CheckTouchKey.c: 196: KEYCON0 |= 0x1;
	bsf	(146)^080h+(0/8),(0)&7	;volatile
	line	198
;CheckTouchKey.c: 198: temp = 0;
	clrf	(GetTouchKeyValue@temp)
	line	199
;CheckTouchKey.c: 199: while(!(KEYCON0&0x80))
	goto	l1112
	
l1113:	
	line	201
;CheckTouchKey.c: 200: {
;CheckTouchKey.c: 201: if(0 == (--temp))
	decfsz	(GetTouchKeyValue@temp),f
	goto	u841
	goto	u840
u841:
	goto	l1112
u840:
	line	203
	
l2320:	
;CheckTouchKey.c: 202: {
;CheckTouchKey.c: 203: KeyCounter = 255;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_KeyCounter)
	line	204
	
l2322:	
;CheckTouchKey.c: 204: ClearResSum();
	fcall	_ClearResSum
	goto	l1115
	line	207
	
l1112:	
	line	199
	btfss	(146)^080h,(7)&7	;volatile
	goto	u851
	goto	u850
u851:
	goto	l1113
u850:
	line	209
	
l2326:	
;CheckTouchKey.c: 206: }
;CheckTouchKey.c: 207: }
;CheckTouchKey.c: 209: KeyResSum[cnt] += (unsigned int)((KEYDATAH<<8) | KEYDATAL);
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
	line	210
	
l2328:	
	movlw	low(02h)
	incf	(GetTouchKeyValue@cnt),f
	subwf	((GetTouchKeyValue@cnt)),w
	skipc
	goto	u861
	goto	u860
u861:
	goto	l1111
u860:
	line	211
	
l1115:	
	return
	opt stack 0
GLOBAL	__end_of_GetTouchKeyValue
	__end_of_GetTouchKeyValue:
	signat	_GetTouchKeyValue,89
	global	_ClearResSum

;; *************** function _ClearResSum *****************
;; Defined at:
;;		line 126 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 300/0
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
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	line	126
global __ptext23
__ptext23:	;psect for function _ClearResSum
psect	text23
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	126
	global	__size_of_ClearResSum
	__size_of_ClearResSum	equ	__end_of_ClearResSum-_ClearResSum
	
_ClearResSum:	
;incstack = 0
	opt	stack 4
; Regs used in _ClearResSum: [wreg-fsr0h+status,2+status,0]
	line	128
	
l2216:	
;CheckTouchKey.c: 128: unsigned char cnt = 0;
	clrf	(ClearResSum@cnt)
	line	131
	
l2218:	
;CheckTouchKey.c: 130: {
;CheckTouchKey.c: 131: KeyResSum[cnt] = 0;
	clrc
	rlf	(ClearResSum@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	132
	
l2220:	
	movlw	low(02h)
	incf	(ClearResSum@cnt),f
	subwf	((ClearResSum@cnt)),w
	skipc
	goto	u771
	goto	u770
u771:
	goto	l2218
u770:
	line	133
	
l1099:	
	return
	opt stack 0
GLOBAL	__end_of_ClearResSum
	__end_of_ClearResSum:
	signat	_ClearResSum,89
	global	_CheckValidTime

;; *************** function _CheckValidTime *****************
;; Defined at:
;;		line 467 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	line	467
global __ptext24
__ptext24:	;psect for function _CheckValidTime
psect	text24
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	467
	global	__size_of_CheckValidTime
	__size_of_CheckValidTime	equ	__end_of_CheckValidTime-_CheckValidTime
	
_CheckValidTime:	
;incstack = 0
	opt	stack 5
; Regs used in _CheckValidTime: [wreg+status,2+status,0]
	line	473
	
l2472:	
;CheckTouchKey.c: 472: {
;CheckTouchKey.c: 473: if(KeyFlag[0] | KeyFlag[1])
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u1151
	goto	u1150
u1151:
	goto	l2478
u1150:
	line	475
	
l2474:	
	incf	(CheckValidTime@validtime),f
	skipnz
	incf	(CheckValidTime@validtime+1),f
	movlw	03Ah
	subwf	((CheckValidTime@validtime+1)),w
	movlw	098h
	skipnz
	subwf	((CheckValidTime@validtime)),w
	skipc
	goto	u1161
	goto	u1160
u1161:
	goto	l1187
u1160:
	line	477
	
l2476:	
;CheckTouchKey.c: 476: {
;CheckTouchKey.c: 477: b_kerr = 1;
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	478
	
l2478:	
;CheckTouchKey.c: 478: validtime = 0;
	clrf	(CheckValidTime@validtime)
	clrf	(CheckValidTime@validtime+1)
	line	486
	
l1187:	
	return
	opt stack 0
GLOBAL	__end_of_CheckValidTime
	__end_of_CheckValidTime:
	signat	_CheckValidTime,89
	global	_CheckOnceResult

;; *************** function _CheckOnceResult *****************
;; Defined at:
;;		line 221 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  KeyResTemp      2   10[BANK0 ] unsigned int 
;;  KeyValue        2    7[BANK0 ] unsigned int 
;;  OldValue        2    4[BANK0 ] unsigned int 
;;  cnt             1   12[BANK0 ] unsigned char 
;;  KeyDown         1    9[BANK0 ] unsigned char 
;;  flag            1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
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
;;		_KeyClearOne
;;		_KeyHave
;;		_KeyIsIn
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=1
	line	221
global __ptext25
__ptext25:	;psect for function _CheckOnceResult
psect	text25
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	221
	global	__size_of_CheckOnceResult
	__size_of_CheckOnceResult	equ	__end_of_CheckOnceResult-_CheckOnceResult
	
_CheckOnceResult:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	223
	
l2688:	
;CheckTouchKey.c: 223: unsigned char cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckOnceResult@cnt)
	line	231
;CheckTouchKey.c: 224: unsigned char KeyDown;
;CheckTouchKey.c: 225: unsigned char flag;
;CheckTouchKey.c: 227: unsigned int KeyResTemp;
;CheckTouchKey.c: 228: unsigned int KeyValue;
;CheckTouchKey.c: 229: unsigned int OldValue;
;CheckTouchKey.c: 231: KeyData[0] = 0;
	clrf	(_KeyData)	;volatile
	line	232
;CheckTouchKey.c: 232: KeyData[1] = 0;
	clrf	0+(_KeyData)+01h	;volatile
	line	233
;CheckTouchKey.c: 233: KeyMaxSub = 0;
	clrf	(_KeyMaxSub)
	line	238
	
l2690:	
;CheckTouchKey.c: 237: {
;CheckTouchKey.c: 238: flag = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(CheckOnceResult@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@flag)
	line	240
	
l2692:	
;CheckTouchKey.c: 240: KeyResSum[cnt] >>= 3;
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u1485:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank0
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u1480:
	addlw	-1
	skipz
	goto	u1485
	line	241
	
l2694:	
;CheckTouchKey.c: 241: KeyResTemp = KeyResSum[cnt];
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@KeyResTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@KeyResTemp+1)
	line	242
	
l2696:	
;CheckTouchKey.c: 242: KeyDown = Table_KeyDown[cnt];
	movf	(CheckOnceResult@cnt),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@KeyDown)
	line	244
	
l2698:	
;CheckTouchKey.c: 244: KeyValue = KeyResTemp + KeyDown;
	movf	(CheckOnceResult@KeyDown),w
	movwf	(CheckOnceResult@KeyValue)
	clrf	(CheckOnceResult@KeyValue+1)
	
l2700:	
	movf	(CheckOnceResult@KeyResTemp),w
	addwf	(CheckOnceResult@KeyValue),f
	skipnc
	incf	(CheckOnceResult@KeyValue+1),f
	movf	(CheckOnceResult@KeyResTemp+1),w
	addwf	(CheckOnceResult@KeyValue+1),f
	line	246
	
l2702:	
;CheckTouchKey.c: 246: if(!KeyIsIn(cnt))
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1491
	goto	u1490
u1491:
	goto	l2732
u1490:
	line	249
	
l2704:	
;CheckTouchKey.c: 247: {
;CheckTouchKey.c: 249: OldValue = KeyOldValue2[cnt];
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
	line	251
;CheckTouchKey.c: 251: if(KeyReference[cnt] > KeyValue)
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
	goto	u1505
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue),w
u1505:
	skipnc
	goto	u1501
	goto	u1500
u1501:
	goto	l2708
u1500:
	line	253
	
l2706:	
;CheckTouchKey.c: 252: {
;CheckTouchKey.c: 253: KeyResTemp = KeyReference[cnt] - KeyResTemp;
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
	line	254
;CheckTouchKey.c: 254: }
	goto	l2716
	line	255
	
l2708:	
;CheckTouchKey.c: 255: else if ((OldValue > KeyValue) && (KeyOldValue1[cnt] > KeyValue))
	movf	(CheckOnceResult@OldValue+1),w
	subwf	(CheckOnceResult@KeyValue+1),w
	skipz
	goto	u1515
	movf	(CheckOnceResult@OldValue),w
	subwf	(CheckOnceResult@KeyValue),w
u1515:
	skipnc
	goto	u1511
	goto	u1510
u1511:
	goto	l2754
u1510:
	
l2710:	
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
	goto	u1525
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue),w
u1525:
	skipnc
	goto	u1521
	goto	u1520
u1521:
	goto	l2754
u1520:
	line	257
	
l2712:	
;CheckTouchKey.c: 256: {
;CheckTouchKey.c: 257: KeyReference[cnt] = OldValue;
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@OldValue),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@OldValue+1),w
	movwf	indf
	line	258
	
l2714:	
;CheckTouchKey.c: 258: KeyResTemp = OldValue - KeyResTemp;
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	(CheckOnceResult@OldValue),w
	movwf	(CheckOnceResult@KeyResTemp)
	movf	(CheckOnceResult@KeyResTemp+1),w
	skipc
	incf	(CheckOnceResult@KeyResTemp+1),w
	subwf	(CheckOnceResult@OldValue+1),w
	movwf	1+(CheckOnceResult@KeyResTemp)
	line	265
;CheckTouchKey.c: 259: }
	
l2716:	
;CheckTouchKey.c: 263: }
;CheckTouchKey.c: 265: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	269
	
l2718:	
;CheckTouchKey.c: 268: {
;CheckTouchKey.c: 269: if(KeyResTemp >> 8)
	movf	(0+(CheckOnceResult@KeyResTemp)+01h),w
	btfsc	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l2722
u1530:
	line	271
	
l2720:	
;CheckTouchKey.c: 270: {
;CheckTouchKey.c: 271: KeyDown = 0xFF;
	movlw	low(0FFh)
	movwf	(CheckOnceResult@KeyDown)
	line	272
;CheckTouchKey.c: 272: }
	goto	l1129
	line	275
	
l2722:	
;CheckTouchKey.c: 273: else
;CheckTouchKey.c: 274: {
;CheckTouchKey.c: 275: KeyDown = KeyResTemp & 0xFF;
	movf	(CheckOnceResult@KeyResTemp),w
	movwf	(CheckOnceResult@KeyDown)
	line	276
	
l1129:	
	line	278
;CheckTouchKey.c: 276: }
;CheckTouchKey.c: 278: if(KeyMaxSub < KeyDown)
	movf	(CheckOnceResult@KeyDown),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u1541
	goto	u1540
u1541:
	goto	l2728
u1540:
	line	280
	
l2724:	
;CheckTouchKey.c: 279: {
;CheckTouchKey.c: 280: KeyMaxSub = KeyDown;
	movf	(CheckOnceResult@KeyDown),w
	movwf	(_KeyMaxSub)
	line	281
	
l2726:	
;CheckTouchKey.c: 281: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag),w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyHave
	line	282
;CheckTouchKey.c: 282: }
	goto	l2754
	line	285
	
l2728:	
;CheckTouchKey.c: 283: else
;CheckTouchKey.c: 284: {
;CheckTouchKey.c: 285: KeyCounter++;
	incf	(_KeyCounter),f
	goto	l2754
	line	298
	
l2732:	
;CheckTouchKey.c: 294: else
;CheckTouchKey.c: 295: {
;CheckTouchKey.c: 298: if(KeyReference[cnt]+1 < KeyValue)
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
	goto	u1555
	movf	(CheckOnceResult@KeyValue),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1555:
	skipnc
	goto	u1551
	goto	u1550
u1551:
	goto	l2738
u1550:
	goto	l2754
	line	302
	
l2738:	
;CheckTouchKey.c: 302: else if((KeyOldValue2[cnt]+KeyDown<KeyResTemp) || (KeyOldValue1[cnt]+KeyDown<KeyResTemp))
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
	goto	u1565
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1565:
	skipc
	goto	u1561
	goto	u1560
u1561:
	goto	l2742
u1560:
	
l2740:	
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
	goto	u1575
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1575:
	skipnc
	goto	u1571
	goto	u1570
u1571:
	goto	l2746
u1570:
	line	304
	
l2742:	
;CheckTouchKey.c: 303: {
;CheckTouchKey.c: 304: if(++KeyUpShake[cnt] > 8)
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u1581
	goto	u1580
u1581:
	goto	l1135
u1580:
	line	306
	
l2744:	
;CheckTouchKey.c: 305: {
;CheckTouchKey.c: 306: KeyClearOne(cnt);
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyClearOne
	line	307
;CheckTouchKey.c: 307: continue;
	goto	l2754
	line	312
	
l2746:	
;CheckTouchKey.c: 310: else
;CheckTouchKey.c: 311: {
;CheckTouchKey.c: 312: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l2750
	line	313
	
l1135:	
	line	319
	
l2750:	
;CheckTouchKey.c: 319: else if(!(KeyData[0] | KeyData[1]))
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfss	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l2754
u1590:
	line	321
	
l2752:	
;CheckTouchKey.c: 320: {
;CheckTouchKey.c: 321: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag),w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyHave
	line	324
	
l2754:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@cnt),f
	subwf	((CheckOnceResult@cnt)),w
	skipc
	goto	u1601
	goto	u1600
u1601:
	goto	l2690
u1600:
	line	325
	
l1145:	
	return
	opt stack 0
GLOBAL	__end_of_CheckOnceResult
	__end_of_CheckOnceResult:
	signat	_CheckOnceResult,89
	global	_KeyHave

;; *************** function _KeyHave *****************
;; Defined at:
;;		line 142 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
psect	text26,local,class=CODE,delta=2,merge=1,group=1
	line	142
global __ptext26
__ptext26:	;psect for function _KeyHave
psect	text26
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	142
	global	__size_of_KeyHave
	__size_of_KeyHave	equ	__end_of_KeyHave-_KeyHave
	
_KeyHave:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyHave: [wreg+status,2+status,0]
;KeyHave@cnt stored from wreg
	movwf	(KeyHave@cnt)
	line	144
	
l2222:	
;CheckTouchKey.c: 144: KeyCounter++;
	incf	(_KeyCounter),f
	line	148
	
l2224:	
;CheckTouchKey.c: 147: {
;CheckTouchKey.c: 148: KeyData[0] = 0;
	clrf	(_KeyData)	;volatile
	line	149
	
l2226:	
;CheckTouchKey.c: 149: KeyData[1] = 0;
	clrf	0+(_KeyData)+01h	;volatile
	line	150
	
l2228:	
;CheckTouchKey.c: 150: if(cnt&0x8)
	btfss	(KeyHave@cnt),(3)&7
	goto	u781
	goto	u780
u781:
	goto	l2232
u780:
	line	152
	
l2230:	
;CheckTouchKey.c: 151: {
;CheckTouchKey.c: 152: KeyData[1] = flag;
	movf	(KeyHave@flag),w
	movwf	0+(_KeyData)+01h	;volatile
	line	153
;CheckTouchKey.c: 153: }
	goto	l1108
	line	156
	
l2232:	
;CheckTouchKey.c: 154: else
;CheckTouchKey.c: 155: {
;CheckTouchKey.c: 156: KeyData[0] = flag;
	movf	(KeyHave@flag),w
	movwf	(_KeyData)	;volatile
	line	170
	
l1108:	
	return
	opt stack 0
GLOBAL	__end_of_KeyHave
	__end_of_KeyHave:
	signat	_KeyHave,8313
	global	_KeyClearOne

;; *************** function _KeyClearOne *****************
;; Defined at:
;;		line 80 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	line	80
global __ptext27
__ptext27:	;psect for function _KeyClearOne
psect	text27
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	80
	global	__size_of_KeyClearOne
	__size_of_KeyClearOne	equ	__end_of_KeyClearOne-_KeyClearOne
	
_KeyClearOne:	
;incstack = 0
	opt	stack 3
; Regs used in _KeyClearOne: [wreg-fsr0h+status,2+status,0]
;KeyClearOne@cnt stored from wreg
	movwf	(KeyClearOne@cnt)
	line	82
	
l2160:	
;CheckTouchKey.c: 82: KeyOldValue0[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	83
;CheckTouchKey.c: 83: KeyOldValue1[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	84
;CheckTouchKey.c: 84: KeyOldValue2[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	85
;CheckTouchKey.c: 85: KeyReference[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	86
	
l1083:	
	return
	opt stack 0
GLOBAL	__end_of_KeyClearOne
	__end_of_KeyClearOne:
	signat	_KeyClearOne,4217
	global	_CheckKeyOldValue

;; *************** function _CheckKeyOldValue *****************
;; Defined at:
;;		line 335 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
;;		On entry : 0/0
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
psect	text28,local,class=CODE,delta=2,merge=1,group=1
	line	335
global __ptext28
__ptext28:	;psect for function _CheckKeyOldValue
psect	text28
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	335
	global	__size_of_CheckKeyOldValue
	__size_of_CheckKeyOldValue	equ	__end_of_CheckKeyOldValue-_CheckKeyOldValue
	
_CheckKeyOldValue:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	338
	
l2398:	
;CheckTouchKey.c: 337: static unsigned char counter = 0;
;CheckTouchKey.c: 338: unsigned char cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@cnt)
	line	342
	
l2400:	
;CheckTouchKey.c: 339: unsigned int KeyResTemp;
;CheckTouchKey.c: 340: unsigned int KeyOldTemp;
;CheckTouchKey.c: 342: if(++counter < 4)
	movlw	low(04h)
	incf	(CheckKeyOldValue@counter),f
	subwf	((CheckKeyOldValue@counter)),w
	skipnc
	goto	u1001
	goto	u1000
u1001:
	goto	l2404
u1000:
	goto	l1151
	line	344
	
l2404:	
;CheckTouchKey.c: 344: counter = 0;
	clrf	(CheckKeyOldValue@counter)
	line	348
	
l2406:	
;CheckTouchKey.c: 347: {
;CheckTouchKey.c: 348: KeyResTemp = KeyResSum[cnt];
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
	line	349
	
l2408:	
;CheckTouchKey.c: 349: if(!KeyIsIn(cnt))
	movf	(CheckKeyOldValue@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1011
	goto	u1010
u1011:
	goto	l1153
u1010:
	line	352
	
l2410:	
;CheckTouchKey.c: 350: {
;CheckTouchKey.c: 352: KeyOldTemp = KeyOldValue0[cnt] - KeyResTemp;
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
	
l2412:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	353
	
l2414:	
;CheckTouchKey.c: 353: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u1021
	goto	u1020
u1021:
	goto	l2418
u1020:
	
l2416:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u1031
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u1031
	goto	u1030
u1031:
	goto	l1153
u1030:
	line	355
	
l2418:	
;CheckTouchKey.c: 354: {
;CheckTouchKey.c: 355: KeyOldTemp = KeyOldValue1[cnt] - KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp+1)
	
l2420:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	356
	
l2422:	
;CheckTouchKey.c: 356: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u1041
	goto	u1040
u1041:
	goto	l2426
u1040:
	
l2424:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u1051
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u1051
	goto	u1050
u1051:
	goto	l1153
u1050:
	line	358
	
l2426:	
;CheckTouchKey.c: 357: {
;CheckTouchKey.c: 358: KeyOldTemp = KeyOldValue2[cnt] - KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp+1)
	
l2428:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	359
	
l2430:	
;CheckTouchKey.c: 359: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u1061
	goto	u1060
u1061:
	goto	l2434
u1060:
	
l2432:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u1071
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u1071
	goto	u1070
u1071:
	goto	l1153
u1070:
	line	361
	
l2434:	
;CheckTouchKey.c: 360: {
;CheckTouchKey.c: 361: KeyReference[cnt] = KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@KeyResTemp),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	movwf	indf
	line	365
	
l1153:	
	line	368
;CheckTouchKey.c: 362: }
;CheckTouchKey.c: 363: }
;CheckTouchKey.c: 364: }
;CheckTouchKey.c: 365: }
;CheckTouchKey.c: 368: KeyOldValue2[cnt] = KeyOldValue1[cnt];
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
	line	369
;CheckTouchKey.c: 369: KeyOldValue1[cnt] = KeyOldValue0[cnt];
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
	line	370
;CheckTouchKey.c: 370: KeyOldValue0[cnt] = KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@KeyResTemp),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	movwf	indf
	line	371
	
l2436:	
	movlw	low(02h)
	incf	(CheckKeyOldValue@cnt),f
	subwf	((CheckKeyOldValue@cnt)),w
	skipc
	goto	u1081
	goto	u1080
u1081:
	goto	l2406
u1080:
	line	372
	
l1151:	
	return
	opt stack 0
GLOBAL	__end_of_CheckKeyOldValue
	__end_of_CheckKeyOldValue:
	signat	_CheckKeyOldValue,89
	global	_KeyIsIn

;; *************** function _KeyIsIn *****************
;; Defined at:
;;		line 58 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
psect	text29,local,class=CODE,delta=2,merge=1,group=1
	line	58
global __ptext29
__ptext29:	;psect for function _KeyIsIn
psect	text29
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	58
	global	__size_of_KeyIsIn
	__size_of_KeyIsIn	equ	__end_of_KeyIsIn-_KeyIsIn
	
_KeyIsIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyIsIn: [wreg-fsr0h+status,2+status,0+pclath]
;KeyIsIn@cnt stored from wreg
	movwf	(KeyIsIn@cnt)
	line	60
	
l2148:	
;CheckTouchKey.c: 60: unsigned char i = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(KeyIsIn@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@i)
	line	62
	
l2150:	
;CheckTouchKey.c: 62: if(cnt&0x8)
	btfss	(KeyIsIn@cnt),(3)&7
	goto	u741
	goto	u740
u741:
	goto	l2154
u740:
	line	64
	
l2152:	
;CheckTouchKey.c: 63: {
;CheckTouchKey.c: 64: i &= KeyFlag[1];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@i),f
	line	65
;CheckTouchKey.c: 65: }
	goto	l2156
	line	68
	
l2154:	
;CheckTouchKey.c: 66: else
;CheckTouchKey.c: 67: {
;CheckTouchKey.c: 68: i &= KeyFlag[0];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@i),f
	line	70
	
l2156:	
;CheckTouchKey.c: 69: }
;CheckTouchKey.c: 70: return i;
	movf	(KeyIsIn@i),w
	line	71
	
l1080:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 274 in file "C:\mcuproject\scm\台灯\main.c"
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
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\台灯\main.c"
	line	274
global __ptext30
__ptext30:	;psect for function _Isr_Timer
psect	text30
	file	"C:\mcuproject\scm\台灯\main.c"
	line	274
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
psect	text30
	line	276
	
i1l2600:	
;main.c: 276: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u141_21
	goto	u141_20
u141_21:
	goto	i1l2620
u141_20:
	line	278
	
i1l2602:	
;main.c: 277: {
;main.c: 278: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	280
	
i1l2604:	
;main.c: 280: if(++MainTime >= 16)
	movlw	low(010h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u142_21
	goto	u142_20
u142_21:
	goto	i1l2610
u142_20:
	line	282
	
i1l2606:	
;main.c: 281: {
;main.c: 282: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	283
	
i1l2608:	
;main.c: 283: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	286
	
i1l2610:	
;main.c: 284: }
;main.c: 286: if(pwmTime < 12 && sendFlag)
	movlw	low(0Ch)
	subwf	(_pwmTime),w	;volatile
	skipnc
	goto	u143_21
	goto	u143_20
u143_21:
	goto	i1l569
u143_20:
	
i1l2612:	
	btfss	(_sendFlag/8),(_sendFlag)&7	;volatile
	goto	u144_21
	goto	u144_20
u144_21:
	goto	i1l569
u144_20:
	line	287
	
i1l2614:	
;main.c: 287: PORTA&=~(1<<3);
	bcf	(5)+(3/8),(3)&7	;volatile
	goto	i1l2616
	line	288
	
i1l569:	
	line	289
;main.c: 288: else
;main.c: 289: PORTA|=(1<<3);
	bsf	(5)+(3/8),(3)&7	;volatile
	line	290
	
i1l2616:	
;main.c: 290: if(++pwmTime >= 44)
	movlw	low(02Ch)
	incf	(_pwmTime),f	;volatile
	subwf	((_pwmTime)),w	;volatile
	skipc
	goto	u145_21
	goto	u145_20
u145_21:
	goto	i1l573
u145_20:
	line	292
	
i1l2618:	
;main.c: 291: {
;main.c: 292: pwmTime = 0;
	clrf	(_pwmTime)	;volatile
	goto	i1l573
	line	297
	
i1l2620:	
;main.c: 295: else
;main.c: 296: {
;main.c: 297: PIR1 = 0;
	clrf	(12)	;volatile
	line	300
	
i1l573:	
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
