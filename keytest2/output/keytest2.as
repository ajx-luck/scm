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
	FNCALL	_main,_initPWM
	FNCALL	_main,_startPWM
	FNCALL	_startPWM,_procKey1
	FNCALL	_startPWM,_procKey2
	FNCALL	_KeyServer,_procKey1
	FNCALL	_KeyServer,_procKey2
	FNCALL	_procKey2,_mode1_a
	FNCALL	_procKey2,_mode1_b
	FNCALL	_procKey2,_mode1_c
	FNCALL	_procKey2,_mode1_d
	FNCALL	_procKey2,_mode1_e
	FNCALL	_procKey1,_mode2_a
	FNCALL	_procKey1,_mode3_a
	FNCALL	_procKey1,_mode4_a
	FNCALL	_procKey1,_mode5_a
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
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	11

;initializer for _pwm1Step
	retlw	01h
	line	10

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
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\Touch_Kscan_Library.h"
	line	71
_Table_KeyDown:
	retlw	0Ah
	retlw	0Ah
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyCap
psect	strings
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\Touch_Kscan_Library.h"
	line	65
_Table_KeyCap:
	retlw	02h
	retlw	02h
	global __end_of_Table_KeyCap
__end_of_Table_KeyCap:
	global	_Table_KeyChannel
psect	strings
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\Touch_Kscan_Library.h"
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
	global	KeyServer@KeyOldFlag
	global	_KeyUpShake
	global	_KeyFlag
	global	TurnKeyFlags@KeyNoTimes
	global	TurnKeyFlags@KeyHaveTimes
	global	CheckKeyOldValue@counter
	global	_KeyMaxSub
	global	_KeyCounter
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

KeyServer@KeyOldFlag:
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

_irStep:
       ds      1

_MainTime:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	11
_pwm1Step:
       ds      1

psect	dataBANK0
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	10
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
	movlw	low((__pbssBANK0)+027h)
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
?_mode2_a:	; 1 bytes @ 0x0
?_mode3_a:	; 1 bytes @ 0x0
?_mode4_a:	; 1 bytes @ 0x0
?_mode5_a:	; 1 bytes @ 0x0
?_mode1_a:	; 1 bytes @ 0x0
?_mode1_b:	; 1 bytes @ 0x0
?_mode1_c:	; 1 bytes @ 0x0
?_mode1_d:	; 1 bytes @ 0x0
?_mode1_e:	; 1 bytes @ 0x0
?_initPWM:	; 1 bytes @ 0x0
?_CheckTouchKey:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Refurbish_Sfr:	; 1 bytes @ 0x0
?_procKey1:	; 1 bytes @ 0x0
?_procKey2:	; 1 bytes @ 0x0
?_startPWM:	; 1 bytes @ 0x0
?_KeyServer:	; 1 bytes @ 0x0
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
??_mode2_a:	; 1 bytes @ 0x2
??_mode3_a:	; 1 bytes @ 0x2
??_mode4_a:	; 1 bytes @ 0x2
??_mode5_a:	; 1 bytes @ 0x2
??_mode1_a:	; 1 bytes @ 0x2
??_mode1_b:	; 1 bytes @ 0x2
??_mode1_c:	; 1 bytes @ 0x2
??_mode1_d:	; 1 bytes @ 0x2
??_mode1_e:	; 1 bytes @ 0x2
??_initPWM:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_Refurbish_Sfr:	; 1 bytes @ 0x2
??_procKey1:	; 1 bytes @ 0x2
??_procKey2:	; 1 bytes @ 0x2
??_startPWM:	; 1 bytes @ 0x2
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
;!    BSS         40
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80     13      54
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
;! (0) _main                                                 0     0      0    3191
;!                      _CheckTouchKey
;!                        _Init_System
;!                          _KeyServer
;!                      _Refurbish_Sfr
;!                            _initPWM
;!                           _startPWM
;! ---------------------------------------------------------------------------------
;! (1) _startPWM                                             0     0      0       0
;!                           _procKey1
;!                           _procKey2
;! ---------------------------------------------------------------------------------
;! (1) _initPWM                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Refurbish_Sfr                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _KeyServer                                            2     2      0      89
;!                                              2 COMMON     2     2      0
;!                           _procKey1
;!                           _procKey2
;! ---------------------------------------------------------------------------------
;! (2) _procKey2                                             0     0      0       0
;!                            _mode1_a
;!                            _mode1_b
;!                            _mode1_c
;!                            _mode1_d
;!                            _mode1_e
;! ---------------------------------------------------------------------------------
;! (3) _mode1_e                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _mode1_d                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _mode1_c                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _mode1_b                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _mode1_a                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _procKey1                                             0     0      0       0
;!                            _mode2_a
;!                            _mode3_a
;!                            _mode4_a
;!                            _mode5_a
;! ---------------------------------------------------------------------------------
;! (3) _mode5_a                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _mode4_a                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _mode3_a                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _mode2_a                                              0     0      0       0
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
;!       _mode2_a
;!       _mode3_a
;!       _mode4_a
;!       _mode5_a
;!     _procKey2
;!       _mode1_a
;!       _mode1_b
;!       _mode1_c
;!       _mode1_d
;!       _mode1_e
;!   _Refurbish_Sfr
;!   _initPWM
;!   _startPWM
;!     _procKey1
;!       _mode2_a
;!       _mode3_a
;!       _mode4_a
;!       _mode5_a
;!     _procKey2
;!       _mode1_a
;!       _mode1_b
;!       _mode1_c
;!       _mode1_d
;!       _mode1_e
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
;!BANK0               50      D      36       3       67.5%
;!BITBANK0            50      0       0       5        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITCOMMON            E      0       3       0       21.4%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      40      10        0.0%
;!ABS                  0      0      40       4        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 288 in file "C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
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
;;		_initPWM
;;		_startPWM
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	288
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	288
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	290
	
l2740:	
;main.c: 290: Init_System();
	fcall	_Init_System
	line	291
	
l2742:	
;main.c: 291: sendFlag = 1;
	bsf	(_sendFlag/8),(_sendFlag)&7	;volatile
	line	292
;main.c: 292: initPWM();
	fcall	_initPWM
	line	296
	
l2744:	
;main.c: 295: {
;main.c: 296: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u1391
	goto	u1390
u1391:
	goto	l2744
u1390:
	line	298
	
l2746:	
;main.c: 297: {
;main.c: 298: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	299
# 299 "C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
clrwdt ;# 
psect	maintext
	line	300
	
l2748:	
;main.c: 300: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	301
	
l2750:	
;main.c: 301: CheckTouchKey();
	fcall	_CheckTouchKey
	line	302
	
l2752:	
;main.c: 302: KeyServer();
	fcall	_KeyServer
	line	304
	
l2754:	
;main.c: 304: if(ONFlag && pwmFlag == 0)
	btfss	(_ONFlag/8),(_ONFlag)&7	;volatile
	goto	u1401
	goto	u1400
u1401:
	goto	l562
u1400:
	
l2756:	
	btfsc	(_pwmFlag/8),(_pwmFlag)&7	;volatile
	goto	u1411
	goto	u1410
u1411:
	goto	l562
u1410:
	line	306
	
l2758:	
;main.c: 305: {
;main.c: 306: startPWM();
	fcall	_startPWM
	line	307
;main.c: 307: }
	goto	l2744
	line	308
	
l562:	
;main.c: 308: else if(ONFlag == 0 && pwmFlag == 1)
	btfsc	(_ONFlag/8),(_ONFlag)&7	;volatile
	goto	u1421
	goto	u1420
u1421:
	goto	l561
u1420:
	
l2760:	
	btfss	(_pwmFlag/8),(_pwmFlag)&7	;volatile
	goto	u1431
	goto	u1430
u1431:
	goto	l561
u1430:
	line	310
	
l2762:	
;main.c: 309: {
;main.c: 310: PWMCON0 = 0;
	clrf	(19)	;volatile
	line	311
	
l2764:	
;main.c: 311: pwmFlag = 0;
	bcf	(_pwmFlag/8),(_pwmFlag)&7	;volatile
	goto	l2744
	line	313
	
l561:	
	goto	l2744
	global	start
	ljmp	start
	opt stack 0
	line	315
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_startPWM

;; *************** function _startPWM *****************
;; Defined at:
;;		line 150 in file "C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
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
;;		_procKey1
;;		_procKey2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	150
global __ptext1
__ptext1:	;psect for function _startPWM
psect	text1
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	150
	global	__size_of_startPWM
	__size_of_startPWM	equ	__end_of_startPWM-_startPWM
	
_startPWM:	
;incstack = 0
	opt	stack 4
; Regs used in _startPWM: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	152
	
l2466:	
;main.c: 152: pwm0Step--;
	decf	(_pwm0Step),f
	line	153
;main.c: 153: pwm1Step--;
	decf	(_pwm1Step),f
	line	154
	
l2468:	
;main.c: 154: procKey1();
	fcall	_procKey1
	line	155
	
l2470:	
;main.c: 155: procKey2();
	fcall	_procKey2
	line	156
	
l515:	
	return
	opt stack 0
GLOBAL	__end_of_startPWM
	__end_of_startPWM:
	signat	_startPWM,89
	global	_initPWM

;; *************** function _initPWM *****************
;; Defined at:
;;		line 4 in file "C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/100
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
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
	line	4
global __ptext2
__ptext2:	;psect for function _initPWM
psect	text2
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
	line	4
	global	__size_of_initPWM
	__size_of_initPWM	equ	__end_of_initPWM-_initPWM
	
_initPWM:	
;incstack = 0
	opt	stack 6
; Regs used in _initPWM: [wreg+status,2]
	line	6
	
l1982:	
;pwm.c: 6: PWMCON1 = 0x40;
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	7
;pwm.c: 7: PWMCON0 = 0x21;
	movlw	low(021h)
	movwf	(19)	;volatile
	line	8
	
l1984:	
;pwm.c: 8: PWMCON2 = 0;
	clrf	(29)	;volatile
	line	9
	
l1986:	
;pwm.c: 9: PWMTH = 0;
	clrf	(22)	;volatile
	line	10
;pwm.c: 10: PWMTL = 126;
	movlw	low(07Eh)
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
	
l1988:	
;pwm.c: 13: PWMD01H = 0;
	clrf	(28)	;volatile
	line	14
	
l972:	
	return
	opt stack 0
GLOBAL	__end_of_initPWM
	__end_of_initPWM:
	signat	_initPWM,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 49 in file "C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	49
global __ptext3
__ptext3:	;psect for function _Refurbish_Sfr
psect	text3
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	49
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 6
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	87
	
l1926:	
;main.c: 87: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	91
	
l1928:	
;main.c: 91: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(13)	;volatile
	line	92
	
l1930:	
;main.c: 92: PR2 = 250;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	93
	
l1932:	
;main.c: 93: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	94
	
l1934:	
;main.c: 94: if(4 != T2CON)
		movlw	4
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((18)),w	;volatile
	btfsc	status,2
	goto	u411
	goto	u410
u411:
	goto	l491
u410:
	line	95
	
l1936:	
;main.c: 95: T2CON = 4;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	96
	
l491:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 163 in file "C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
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
	line	163
global __ptext4
__ptext4:	;psect for function _KeyServer
psect	text4
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	163
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyServer: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	166
	
l2472:	
;main.c: 165: static unsigned int KeyOldFlag = 0;
;main.c: 166: unsigned int i = (unsigned int)((KeyFlag[1]<<8) | KeyFlag[0]);
	movf	0+(_KeyFlag)+01h,w	;volatile
	movwf	(KeyServer@i+1)
	movf	(_KeyFlag),w	;volatile
	movwf	(KeyServer@i)
	line	167
	
l2474:	
;main.c: 167: if(i)
	movf	((KeyServer@i)),w
iorwf	((KeyServer@i+1)),w
	btfsc	status,2
	goto	u1021
	goto	u1020
u1021:
	goto	l2496
u1020:
	line	170
	
l2476:	
;main.c: 168: {
;main.c: 170: if(i != KeyOldFlag)
	movf	(KeyServer@KeyOldFlag+1),w
	xorwf	(KeyServer@i+1),w
	skipz
	goto	u1035
	movf	(KeyServer@KeyOldFlag),w
	xorwf	(KeyServer@i),w
u1035:

	skipnz
	goto	u1031
	goto	u1030
u1031:
	goto	l521
u1030:
	line	172
	
l2478:	
;main.c: 171: {
;main.c: 172: if(keyLockFlag)
	btfss	(_keyLockFlag/8),(_keyLockFlag)&7	;volatile
	goto	u1041
	goto	u1040
u1041:
	goto	l2482
u1040:
	line	174
	
l2480:	
;main.c: 173: {
;main.c: 174: doubleTouchFlag = 1;
	bsf	(_doubleTouchFlag/8),(_doubleTouchFlag)&7	;volatile
	line	175
;main.c: 175: return;
	goto	l523
	line	177
	
l2482:	
;main.c: 176: }
;main.c: 177: KeyOldFlag = i;
	movf	(KeyServer@i+1),w
	movwf	(KeyServer@KeyOldFlag+1)
	movf	(KeyServer@i),w
	movwf	(KeyServer@KeyOldFlag)
	line	178
;main.c: 178: switch(i)
	goto	l2494
	line	181
	
l2484:	
;main.c: 181: procKey1();
	fcall	_procKey1
	line	182
;main.c: 182: break;
	goto	l521
	line	184
	
l2486:	
;main.c: 184: procKey2();
	fcall	_procKey2
	line	185
;main.c: 185: break;
	goto	l521
	line	186
;main.c: 186: case 3:
	
l528:	
	line	187
;main.c: 187: doublePressFlag = 1;
	bsf	(_doublePressFlag/8),(_doublePressFlag)&7	;volatile
	line	188
;main.c: 188: break;
	goto	l521
	line	178
	
l2494:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            7     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (KeyServer@i+1),w
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2806
	goto	l521
	opt asmopt_pop
	
l2806:	
; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 8
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           17     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (KeyServer@i),w
	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2484
	xorlw	2^1	; case 2
	skipnz
	goto	l2486
	xorlw	3^2	; case 3
	skipnz
	goto	l528
	xorlw	4^3	; case 4
	skipnz
	goto	l2484
	xorlw	8^4	; case 8
	skipnz
	goto	l2486
	goto	l521
	opt asmopt_pop

	line	198
	
l521:	
	line	199
;main.c: 198: }
;main.c: 199: keyLockFlag = 1;
	bsf	(_keyLockFlag/8),(_keyLockFlag)&7	;volatile
	line	200
;main.c: 200: }
	goto	l523
	line	203
	
l2496:	
;main.c: 201: else
;main.c: 202: {
;main.c: 203: KeyOldFlag = 0;
	clrf	(KeyServer@KeyOldFlag)
	clrf	(KeyServer@KeyOldFlag+1)
	line	204
	
l2498:	
;main.c: 204: keyLockFlag = 0;
	bcf	(_keyLockFlag/8),(_keyLockFlag)&7	;volatile
	line	205
	
l2500:	
;main.c: 205: if(doubleTouchFlag)
	btfss	(_doubleTouchFlag/8),(_doubleTouchFlag)&7	;volatile
	goto	u1051
	goto	u1050
u1051:
	goto	l2504
u1050:
	line	208
	
l2502:	
;main.c: 206: {
;main.c: 208: ONFlag = !ONFlag;
	movlw	1<<((_ONFlag)&7)
	xorwf	((_ONFlag)/8),f
	line	210
	
l2504:	
;main.c: 209: }
;main.c: 210: doubleTouchFlag = 0;
	bcf	(_doubleTouchFlag/8),(_doubleTouchFlag)&7	;volatile
	line	212
	
l523:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_procKey2

;; *************** function _procKey2 *****************
;; Defined at:
;;		line 123 in file "C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
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
;;		_mode1_a
;;		_mode1_b
;;		_mode1_c
;;		_mode1_d
;;		_mode1_e
;; This function is called by:
;;		_startPWM
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	123
global __ptext5
__ptext5:	;psect for function _procKey2
psect	text5
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	123
	global	__size_of_procKey2
	__size_of_procKey2	equ	__end_of_procKey2-_procKey2
	
_procKey2:	
;incstack = 0
	opt	stack 4
; Regs used in _procKey2: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	125
	
l2258:	
;main.c: 125: pwmFlag = 1;
	bsf	(_pwmFlag/8),(_pwmFlag)&7	;volatile
	line	126
;main.c: 126: ONFlag = 1;
	bsf	(_ONFlag/8),(_ONFlag)&7	;volatile
	line	127
	
l2260:	
;main.c: 127: if(++pwm1Step > 5)
	movlw	low(06h)
	incf	(_pwm1Step),f
	subwf	((_pwm1Step)),w
	skipc
	goto	u671
	goto	u670
u671:
	goto	l2276
u670:
	line	128
	
l2262:	
;main.c: 128: pwm1Step = 1;
	clrf	(_pwm1Step)
	incf	(_pwm1Step),f
	goto	l2276
	line	132
	
l2264:	
;main.c: 132: mode1_a();
	fcall	_mode1_a
	line	133
;main.c: 133: break;
	goto	l512
	line	135
	
l2266:	
;main.c: 135: mode1_b();
	fcall	_mode1_b
	line	136
;main.c: 136: break;
	goto	l512
	line	138
	
l2268:	
;main.c: 138: mode1_c();
	fcall	_mode1_c
	line	139
;main.c: 139: break;
	goto	l512
	line	141
	
l2270:	
;main.c: 141: mode1_d();
	fcall	_mode1_d
	line	142
;main.c: 142: break;
	goto	l512
	line	144
	
l2272:	
;main.c: 144: mode1_e();
	fcall	_mode1_e
	line	145
;main.c: 145: break;
	goto	l512
	line	129
	
l2276:	
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
goto l512
	movwf fsr
	movlw	5
	subwf	fsr,w
skipnc
goto l512
movlw high(S2808)
movwf pclath
	movlw low(S2808)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S2808:
	ljmp	l2264
	ljmp	l2266
	ljmp	l2268
	ljmp	l2270
	ljmp	l2272
psect	text5

	line	147
	
l512:	
	return
	opt stack 0
GLOBAL	__end_of_procKey2
	__end_of_procKey2:
	signat	_procKey2,89
	global	_mode1_e

;; *************** function _mode1_e *****************
;; Defined at:
;;		line 54 in file "C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
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
;;		_procKey2
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
	line	54
global __ptext6
__ptext6:	;psect for function _mode1_e
psect	text6
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
	line	54
	global	__size_of_mode1_e
	__size_of_mode1_e	equ	__end_of_mode1_e-_mode1_e
	
_mode1_e:	
;incstack = 0
	opt	stack 4
; Regs used in _mode1_e: [wreg+status,2+status,0]
	line	56
	
l2198:	
;pwm.c: 56: PWMD0L = 1;
	movlw	low(01h)
	movwf	(23)	;volatile
	line	57
;pwm.c: 57: PWMD1L = 95;
	movlw	low(05Fh)
	movwf	(24)	;volatile
	line	58
	
l2200:	
;pwm.c: 58: PWMTH = 0;
	clrf	(22)	;volatile
	line	59
	
l2202:	
;pwm.c: 59: PWMCON0 |= 0x03;
	movlw	low(03h)
	iorwf	(19),f	;volatile
	line	61
	
l987:	
	return
	opt stack 0
GLOBAL	__end_of_mode1_e
	__end_of_mode1_e:
	signat	_mode1_e,89
	global	_mode1_d

;; *************** function _mode1_d *****************
;; Defined at:
;;		line 45 in file "C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
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
;;		_procKey2
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	45
global __ptext7
__ptext7:	;psect for function _mode1_d
psect	text7
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
	line	45
	global	__size_of_mode1_d
	__size_of_mode1_d	equ	__end_of_mode1_d-_mode1_d
	
_mode1_d:	
;incstack = 0
	opt	stack 4
; Regs used in _mode1_d: [wreg+status,2+status,0]
	line	47
	
l2192:	
;pwm.c: 47: PWMD0L = 1;
	movlw	low(01h)
	movwf	(23)	;volatile
	line	48
;pwm.c: 48: PWMD1L = 63;
	movlw	low(03Fh)
	movwf	(24)	;volatile
	line	49
	
l2194:	
;pwm.c: 49: PWMTH = 0;
	clrf	(22)	;volatile
	line	50
	
l2196:	
;pwm.c: 50: PWMCON0 |= 0x03;
	movlw	low(03h)
	iorwf	(19),f	;volatile
	line	52
	
l984:	
	return
	opt stack 0
GLOBAL	__end_of_mode1_d
	__end_of_mode1_d:
	signat	_mode1_d,89
	global	_mode1_c

;; *************** function _mode1_c *****************
;; Defined at:
;;		line 36 in file "C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
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
;;		_procKey2
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	36
global __ptext8
__ptext8:	;psect for function _mode1_c
psect	text8
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
	line	36
	global	__size_of_mode1_c
	__size_of_mode1_c	equ	__end_of_mode1_c-_mode1_c
	
_mode1_c:	
;incstack = 0
	opt	stack 4
; Regs used in _mode1_c: [wreg+status,2+status,0]
	line	38
	
l2186:	
;pwm.c: 38: PWMD0L = 1;
	movlw	low(01h)
	movwf	(23)	;volatile
	line	39
;pwm.c: 39: PWMD1L = 32;
	movlw	low(020h)
	movwf	(24)	;volatile
	line	40
	
l2188:	
;pwm.c: 40: PWMTH = 0;
	clrf	(22)	;volatile
	line	41
	
l2190:	
;pwm.c: 41: PWMCON0 |= 0x03;
	movlw	low(03h)
	iorwf	(19),f	;volatile
	line	43
	
l981:	
	return
	opt stack 0
GLOBAL	__end_of_mode1_c
	__end_of_mode1_c:
	signat	_mode1_c,89
	global	_mode1_b

;; *************** function _mode1_b *****************
;; Defined at:
;;		line 26 in file "C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	26
global __ptext9
__ptext9:	;psect for function _mode1_b
psect	text9
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
	line	26
	global	__size_of_mode1_b
	__size_of_mode1_b	equ	__end_of_mode1_b-_mode1_b
	
_mode1_b:	
;incstack = 0
	opt	stack 4
; Regs used in _mode1_b: [wreg+status,2]
	line	28
	
l2176:	
;pwm.c: 28: PWMD0L = 1;
	movlw	low(01h)
	movwf	(23)	;volatile
	line	29
	
l2178:	
;pwm.c: 29: PWMD1L = 0;
	clrf	(24)	;volatile
	line	30
	
l2180:	
;pwm.c: 30: PWMTH = 0;
	clrf	(22)	;volatile
	line	31
	
l2182:	
;pwm.c: 31: PWMCON0 |= 0x01;
	bsf	(19)+(0/8),(0)&7	;volatile
	line	32
	
l2184:	
;pwm.c: 32: PORTB&=~(1<<7);
	bcf	(6)+(7/8),(7)&7	;volatile
	line	34
	
l978:	
	return
	opt stack 0
GLOBAL	__end_of_mode1_b
	__end_of_mode1_b:
	signat	_mode1_b,89
	global	_mode1_a

;; *************** function _mode1_a *****************
;; Defined at:
;;		line 16 in file "C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
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
	line	16
global __ptext10
__ptext10:	;psect for function _mode1_a
psect	text10
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
	line	16
	global	__size_of_mode1_a
	__size_of_mode1_a	equ	__end_of_mode1_a-_mode1_a
	
_mode1_a:	
;incstack = 0
	opt	stack 4
; Regs used in _mode1_a: [wreg+status,2]
	line	18
	
l2166:	
;pwm.c: 18: PWMD0L = 1;
	movlw	low(01h)
	movwf	(23)	;volatile
	line	19
	
l2168:	
;pwm.c: 19: PWMD1L = 0;
	clrf	(24)	;volatile
	line	20
	
l2170:	
;pwm.c: 20: PWMTH = 0;
	clrf	(22)	;volatile
	line	21
	
l2172:	
;pwm.c: 21: PWMCON0 |= 0x01;
	bsf	(19)+(0/8),(0)&7	;volatile
	line	22
	
l2174:	
;pwm.c: 22: PORTB|=(1<<7);
	bsf	(6)+(7/8),(7)&7	;volatile
	line	24
	
l975:	
	return
	opt stack 0
GLOBAL	__end_of_mode1_a
	__end_of_mode1_a:
	signat	_mode1_a,89
	global	_procKey1

;; *************** function _procKey1 *****************
;; Defined at:
;;		line 98 in file "C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
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
;;		_mode2_a
;;		_mode3_a
;;		_mode4_a
;;		_mode5_a
;; This function is called by:
;;		_startPWM
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	98
global __ptext11
__ptext11:	;psect for function _procKey1
psect	text11
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	98
	global	__size_of_procKey1
	__size_of_procKey1	equ	__end_of_procKey1-_procKey1
	
_procKey1:	
;incstack = 0
	opt	stack 4
; Regs used in _procKey1: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	100
	
l2240:	
;main.c: 100: pwmFlag = 1;
	bsf	(_pwmFlag/8),(_pwmFlag)&7	;volatile
	line	101
;main.c: 101: ONFlag = 1;
	bsf	(_ONFlag/8),(_ONFlag)&7	;volatile
	line	102
	
l2242:	
;main.c: 102: if(++pwm0Step > 4)
	movlw	low(05h)
	incf	(_pwm0Step),f
	subwf	((_pwm0Step)),w
	skipc
	goto	u661
	goto	u660
u661:
	goto	l2256
u660:
	line	103
	
l2244:	
;main.c: 103: pwm0Step = 1;
	clrf	(_pwm0Step)
	incf	(_pwm0Step),f
	goto	l2256
	line	107
	
l2246:	
;main.c: 107: mode2_a();
	fcall	_mode2_a
	line	108
;main.c: 108: break;
	goto	l501
	line	110
	
l2248:	
;main.c: 110: mode3_a();
	fcall	_mode3_a
	line	111
;main.c: 111: break;
	goto	l501
	line	113
	
l2250:	
;main.c: 113: mode4_a();
	fcall	_mode4_a
	line	114
;main.c: 114: break;
	goto	l501
	line	116
	
l2252:	
;main.c: 116: mode5_a();
	fcall	_mode5_a
	line	117
;main.c: 117: break;
	goto	l501
	line	104
	
l2256:	
	movf	(_pwm0Step),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           13     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2246
	xorlw	2^1	; case 2
	skipnz
	goto	l2248
	xorlw	3^2	; case 3
	skipnz
	goto	l2250
	xorlw	4^3	; case 4
	skipnz
	goto	l2252
	goto	l501
	opt asmopt_pop

	line	120
	
l501:	
	return
	opt stack 0
GLOBAL	__end_of_procKey1
	__end_of_procKey1:
	signat	_procKey1,89
	global	_mode5_a

;; *************** function _mode5_a *****************
;; Defined at:
;;		line 93 in file "C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
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
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
	line	93
global __ptext12
__ptext12:	;psect for function _mode5_a
psect	text12
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
	line	93
	global	__size_of_mode5_a
	__size_of_mode5_a	equ	__end_of_mode5_a-_mode5_a
	
_mode5_a:	
;incstack = 0
	opt	stack 4
; Regs used in _mode5_a: [wreg+status,2]
	line	95
	
l2158:	
;pwm.c: 95: PWMD0L = 0;
	clrf	(23)	;volatile
	line	96
;pwm.c: 96: PWMD1L = 0;
	clrf	(24)	;volatile
	line	97
;pwm.c: 97: PWMTH = 0;
	clrf	(22)	;volatile
	line	98
	
l2160:	
;pwm.c: 98: PWMCON0 = 0x60;
	movlw	low(060h)
	movwf	(19)	;volatile
	line	99
	
l2162:	
;pwm.c: 99: PORTB|=(1<<7);
	bsf	(6)+(7/8),(7)&7	;volatile
	line	100
	
l2164:	
;pwm.c: 100: PORTA|=(1<<5);
	bsf	(5)+(5/8),(5)&7	;volatile
	line	101
	
l999:	
	return
	opt stack 0
GLOBAL	__end_of_mode5_a
	__end_of_mode5_a:
	signat	_mode5_a,89
	global	_mode4_a

;; *************** function _mode4_a *****************
;; Defined at:
;;		line 83 in file "C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
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
	line	83
global __ptext13
__ptext13:	;psect for function _mode4_a
psect	text13
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
	line	83
	global	__size_of_mode4_a
	__size_of_mode4_a	equ	__end_of_mode4_a-_mode4_a
	
_mode4_a:	
;incstack = 0
	opt	stack 4
; Regs used in _mode4_a: [wreg+status,2]
	line	85
	
l2148:	
;pwm.c: 85: PWMD0L = 72;
	movlw	low(048h)
	movwf	(23)	;volatile
	line	86
	
l2150:	
;pwm.c: 86: PWMD1L = 0;
	clrf	(24)	;volatile
	line	87
	
l2152:	
;pwm.c: 87: PWMTH = 0;
	clrf	(22)	;volatile
	line	88
	
l2154:	
;pwm.c: 88: PWMCON0 |= 0x01;
	bsf	(19)+(0/8),(0)&7	;volatile
	line	89
	
l2156:	
;pwm.c: 89: PORTB|=(1<<7);
	bsf	(6)+(7/8),(7)&7	;volatile
	line	91
	
l996:	
	return
	opt stack 0
GLOBAL	__end_of_mode4_a
	__end_of_mode4_a:
	signat	_mode4_a,89
	global	_mode3_a

;; *************** function _mode3_a *****************
;; Defined at:
;;		line 73 in file "C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
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
	line	73
global __ptext14
__ptext14:	;psect for function _mode3_a
psect	text14
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
	line	73
	global	__size_of_mode3_a
	__size_of_mode3_a	equ	__end_of_mode3_a-_mode3_a
	
_mode3_a:	
;incstack = 0
	opt	stack 4
; Regs used in _mode3_a: [wreg+status,2]
	line	75
	
l2138:	
;pwm.c: 75: PWMD0L = 20;
	movlw	low(014h)
	movwf	(23)	;volatile
	line	76
	
l2140:	
;pwm.c: 76: PWMD1L = 0;
	clrf	(24)	;volatile
	line	77
	
l2142:	
;pwm.c: 77: PWMTH = 0;
	clrf	(22)	;volatile
	line	78
	
l2144:	
;pwm.c: 78: PWMCON0 |= 0x01;
	bsf	(19)+(0/8),(0)&7	;volatile
	line	79
	
l2146:	
;pwm.c: 79: PORTB|=(1<<7);
	bsf	(6)+(7/8),(7)&7	;volatile
	line	81
	
l993:	
	return
	opt stack 0
GLOBAL	__end_of_mode3_a
	__end_of_mode3_a:
	signat	_mode3_a,89
	global	_mode2_a

;; *************** function _mode2_a *****************
;; Defined at:
;;		line 63 in file "C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
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
	line	63
global __ptext15
__ptext15:	;psect for function _mode2_a
psect	text15
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\pwm.c"
	line	63
	global	__size_of_mode2_a
	__size_of_mode2_a	equ	__end_of_mode2_a-_mode2_a
	
_mode2_a:	
;incstack = 0
	opt	stack 4
; Regs used in _mode2_a: [wreg+status,2]
	line	65
	
l2128:	
;pwm.c: 65: PWMD0L = 12;
	movlw	low(0Ch)
	movwf	(23)	;volatile
	line	66
	
l2130:	
;pwm.c: 66: PWMD1L = 0;
	clrf	(24)	;volatile
	line	67
	
l2132:	
;pwm.c: 67: PWMTH = 0;
	clrf	(22)	;volatile
	line	68
	
l2134:	
;pwm.c: 68: PWMCON0 |= 0x01;
	bsf	(19)+(0/8),(0)&7	;volatile
	line	69
	
l2136:	
;pwm.c: 69: PORTB|=(1<<7);
	bsf	(6)+(7/8),(7)&7	;volatile
	line	71
	
l990:	
	return
	opt stack 0
GLOBAL	__end_of_mode2_a
	__end_of_mode2_a:
	signat	_mode2_a,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 23 in file "C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	23
global __ptext16
__ptext16:	;psect for function _Init_System
psect	text16
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	23
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	25
	
l1912:	
# 25 "C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
nop ;# 
	line	26
# 26 "C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
clrwdt ;# 
psect	text16
	line	27
	
l1914:	
;main.c: 27: INTCON = 0;
	clrf	(11)	;volatile
	line	28
	
l1916:	
;main.c: 28: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	29
	
l1918:	
;main.c: 29: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	36
;main.c: 36: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(13)	;volatile
	line	37
;main.c: 37: PR2 = 250;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	38
;main.c: 38: T2CON = 4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	39
	
l1920:	
;main.c: 39: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	40
	
l1922:	
;main.c: 40: TRISB = 0x04;
	movlw	low(04h)
	movwf	(134)^080h	;volatile
	line	42
	
l1924:	
;main.c: 42: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	43
	
l487:	
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
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	495
global __ptext17
__ptext17:	;psect for function _CheckTouchKey
psect	text17
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	495
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 2
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	497
	
l2704:	
;CheckTouchKey.c: 497: if(!b_kover)
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u1341
	goto	u1340
u1341:
	goto	l1170
u1340:
	line	500
	
l2706:	
;CheckTouchKey.c: 498: {
;CheckTouchKey.c: 500: GetTouchKeyValue();
	fcall	_GetTouchKeyValue
	line	501
	
l2708:	
;CheckTouchKey.c: 501: if(++KeyCounter >= 8)
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u1351
	goto	u1350
u1351:
	goto	l2738
u1350:
	line	503
	
l2710:	
;CheckTouchKey.c: 502: {
;CheckTouchKey.c: 503: KeyCounter = 0;
	clrf	(_KeyCounter)
	line	504
	
l2712:	
;CheckTouchKey.c: 504: b_kover = 1;
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l2738
	line	507
	
l1170:	
;CheckTouchKey.c: 507: else if(!b_kover1)
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u1361
	goto	u1360
u1361:
	goto	l2732
u1360:
	line	510
	
l2714:	
;CheckTouchKey.c: 508: {
;CheckTouchKey.c: 510: CheckOnceResult();
	fcall	_CheckOnceResult
	line	513
;CheckTouchKey.c: 513: TurnKeyFlags();
	fcall	_TurnKeyFlags
	line	514
	
l2716:	
;CheckTouchKey.c: 514: b_kover1 = 1;
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	520
	
l2718:	
;CheckTouchKey.c: 520: if(b_kerr || KeyCounter > KeyValidNumber)
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u1371
	goto	u1370
u1371:
	goto	l2722
u1370:
	
l2720:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u1381
	goto	u1380
u1381:
	goto	l2730
u1380:
	line	522
	
l2722:	
;CheckTouchKey.c: 521: {
;CheckTouchKey.c: 522: KeyStopClear();
	fcall	_KeyStopClear
	line	523
	
l2724:	
;CheckTouchKey.c: 523: b_kerr = 0;
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	524
	
l2726:	
;CheckTouchKey.c: 524: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	525
	
l2728:	
;CheckTouchKey.c: 525: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	527
	
l2730:	
;CheckTouchKey.c: 526: }
;CheckTouchKey.c: 527: KeyCounter = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	line	528
;CheckTouchKey.c: 528: }
	goto	l2738
	line	532
	
l2732:	
;CheckTouchKey.c: 529: else
;CheckTouchKey.c: 530: {
;CheckTouchKey.c: 532: CheckKeyOldValue();
	fcall	_CheckKeyOldValue
	line	534
;CheckTouchKey.c: 534: ClearResSum();
	fcall	_ClearResSum
	line	536
	
l2734:	
;CheckTouchKey.c: 536: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	537
	
l2736:	
;CheckTouchKey.c: 537: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	540
	
l2738:	
;CheckTouchKey.c: 538: }
;CheckTouchKey.c: 540: CheckValidTime();
	fcall	_CheckValidTime
	line	541
	
l1178:	
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
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	line	382
global __ptext18
__ptext18:	;psect for function _TurnKeyFlags
psect	text18
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	382
	global	__size_of_TurnKeyFlags
	__size_of_TurnKeyFlags	equ	__end_of_TurnKeyFlags-_TurnKeyFlags
	
_TurnKeyFlags:	
;incstack = 0
	opt	stack 2
; Regs used in _TurnKeyFlags: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	387
	
l2422:	
;CheckTouchKey.c: 384: static unsigned char KeyHaveTimes = 0;
;CheckTouchKey.c: 385: static unsigned char KeyNoTimes = 0;
;CheckTouchKey.c: 387: if(KeyData[0] | KeyData[1])
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u941
	goto	u940
u941:
	goto	l2448
u940:
	line	389
	
l2424:	
;CheckTouchKey.c: 388: {
;CheckTouchKey.c: 389: KeyNoTimes = 0;
	clrf	(TurnKeyFlags@KeyNoTimes)
	line	391
	
l2426:	
;CheckTouchKey.c: 391: if(KeyData[0] == KeyOldData[0] && KeyData[1] == KeyOldData[1])
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u951
	goto	u950
u951:
	goto	l1151
u950:
	
l2428:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u961
	goto	u960
u961:
	goto	l1151
u960:
	line	393
	
l2430:	
	movlw	low(02h)
	incf	(TurnKeyFlags@KeyHaveTimes),f
	subwf	((TurnKeyFlags@KeyHaveTimes)),w
	skipc
	goto	u971
	goto	u970
u971:
	goto	l1158
u970:
	line	395
	
l2432:	
;CheckTouchKey.c: 394: {
;CheckTouchKey.c: 395: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	line	396
	
l2434:	
;CheckTouchKey.c: 396: KeyFlag[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	line	397
	
l2436:	
;CheckTouchKey.c: 397: KeyFlag[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	line	401
	
l2438:	
;CheckTouchKey.c: 400: {
;CheckTouchKey.c: 401: if(!b_kclr)
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u981
	goto	u980
u981:
	goto	l1155
u980:
	line	403
	
l2440:	
;CheckTouchKey.c: 402: {
;CheckTouchKey.c: 403: b_kclr = 1;
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	404
	
l2442:	
;CheckTouchKey.c: 404: KeyClearIn();
	fcall	_KeyClearIn
	goto	l1158
	line	409
	
l1151:	
	line	411
;CheckTouchKey.c: 409: else
;CheckTouchKey.c: 410: {
;CheckTouchKey.c: 411: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	412
	
l2444:	
;CheckTouchKey.c: 412: KeyOldData[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	line	413
;CheckTouchKey.c: 413: KeyOldData[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	line	414
	
l2446:	
;CheckTouchKey.c: 414: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	goto	l1158
	line	415
	
l1155:	
	line	416
;CheckTouchKey.c: 415: }
;CheckTouchKey.c: 416: }
	goto	l1158
	line	419
	
l2448:	
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
	
l2450:	
;CheckTouchKey.c: 423: if(++KeyNoTimes >=2)
	movlw	low(02h)
	incf	(TurnKeyFlags@KeyNoTimes),f
	subwf	((TurnKeyFlags@KeyNoTimes)),w
	skipc
	goto	u991
	goto	u990
u991:
	goto	l1158
u990:
	line	425
	
l2452:	
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
	
l2454:	
;CheckTouchKey.c: 429: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	432
	
l1158:	
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
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	line	88
global __ptext19
__ptext19:	;psect for function _KeyClearIn
psect	text19
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	88
	global	__size_of_KeyClearIn
	__size_of_KeyClearIn	equ	__end_of_KeyClearIn-_KeyClearIn
	
_KeyClearIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyClearIn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	91
	
l2204:	
;CheckTouchKey.c: 90: unsigned char cnt;
;CheckTouchKey.c: 91: for(cnt=0;cnt < KeyTotalNumber;cnt++)
	clrf	(KeyClearIn@cnt)
	line	93
	
l2210:	
;CheckTouchKey.c: 92: {
;CheckTouchKey.c: 93: if(!KeyIsIn(cnt))
	movf	(KeyClearIn@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u621
	goto	u620
u621:
	goto	l2214
u620:
	line	95
	
l2212:	
;CheckTouchKey.c: 94: {
;CheckTouchKey.c: 95: KeyClearOne(cnt);
	movf	(KeyClearIn@cnt),w
	fcall	_KeyClearOne
	line	91
	
l2214:	
	incf	(KeyClearIn@cnt),f
	
l2216:	
	movlw	low(02h)
	subwf	(KeyClearIn@cnt),w
	skipc
	goto	u631
	goto	u630
u631:
	goto	l2210
u630:
	line	98
	
l1069:	
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
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	line	107
global __ptext20
__ptext20:	;psect for function _KeyStopClear
psect	text20
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	107
	global	__size_of_KeyStopClear
	__size_of_KeyStopClear	equ	__end_of_KeyStopClear-_KeyStopClear
	
_KeyStopClear:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	110
	
l2282:	
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
	
l2288:	
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
	
l2290:	
;CheckTouchKey.c: 115: KeyClearOne(i);
	movf	(KeyStopClear@i),w
	fcall	_KeyClearOne
	line	112
	
l2292:	
	incf	(KeyStopClear@i),f
	
l2294:	
	movlw	low(02h)
	subwf	(KeyStopClear@i),w
	skipc
	goto	u681
	goto	u680
u681:
	goto	l2288
u680:
	line	117
	
l1074:	
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
;;		On entry : 300/0
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
psect	text21,local,class=CODE,delta=2,merge=1,group=1
	line	180
global __ptext21
__ptext21:	;psect for function _GetTouchKeyValue
psect	text21
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	180
	global	__size_of_GetTouchKeyValue
	__size_of_GetTouchKeyValue	equ	__end_of_GetTouchKeyValue-_GetTouchKeyValue
	
_GetTouchKeyValue:	
;incstack = 0
	opt	stack 4
; Regs used in _GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	182
	
l2296:	
;CheckTouchKey.c: 182: unsigned char cnt = 0,temp;
	clrf	(GetTouchKeyValue@cnt)
	line	184
;CheckTouchKey.c: 184: do
	
l1091:	
	line	186
;CheckTouchKey.c: 185: {
;CheckTouchKey.c: 186: KEYCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(146)^080h	;volatile
	line	187
;CheckTouchKey.c: 187: KEYCON1 = 0;
	clrf	(147)^080h	;volatile
	line	194
	
l2298:	
;CheckTouchKey.c: 194: KEYCON0 = Table_KeyCap[cnt];
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(146)^080h	;volatile
	line	195
	
l2300:	
;CheckTouchKey.c: 195: KEYCON1 = Table_KeyChannel[cnt];
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(147)^080h	;volatile
	line	196
	
l2302:	
;CheckTouchKey.c: 196: KEYCON0 |= 0x1;
	bsf	(146)^080h+(0/8),(0)&7	;volatile
	line	198
;CheckTouchKey.c: 198: temp = 0;
	clrf	(GetTouchKeyValue@temp)
	line	199
;CheckTouchKey.c: 199: while(!(KEYCON0&0x80))
	goto	l1092
	
l1093:	
	line	201
;CheckTouchKey.c: 200: {
;CheckTouchKey.c: 201: if(0 == (--temp))
	decfsz	(GetTouchKeyValue@temp),f
	goto	u691
	goto	u690
u691:
	goto	l1092
u690:
	line	203
	
l2304:	
;CheckTouchKey.c: 202: {
;CheckTouchKey.c: 203: KeyCounter = 255;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_KeyCounter)
	line	204
	
l2306:	
;CheckTouchKey.c: 204: ClearResSum();
	fcall	_ClearResSum
	goto	l1095
	line	207
	
l1092:	
	line	199
	btfss	(146)^080h,(7)&7	;volatile
	goto	u701
	goto	u700
u701:
	goto	l1093
u700:
	line	209
	
l2310:	
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
	
l2312:	
	movlw	low(02h)
	incf	(GetTouchKeyValue@cnt),f
	subwf	((GetTouchKeyValue@cnt)),w
	skipc
	goto	u711
	goto	u710
u711:
	goto	l1091
u710:
	line	211
	
l1095:	
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
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	line	126
global __ptext22
__ptext22:	;psect for function _ClearResSum
psect	text22
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	126
	global	__size_of_ClearResSum
	__size_of_ClearResSum	equ	__end_of_ClearResSum-_ClearResSum
	
_ClearResSum:	
;incstack = 0
	opt	stack 4
; Regs used in _ClearResSum: [wreg-fsr0h+status,2+status,0]
	line	128
	
l2218:	
;CheckTouchKey.c: 128: unsigned char cnt = 0;
	clrf	(ClearResSum@cnt)
	line	131
	
l2220:	
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
	
l2222:	
	movlw	low(02h)
	incf	(ClearResSum@cnt),f
	subwf	((ClearResSum@cnt)),w
	skipc
	goto	u641
	goto	u640
u641:
	goto	l2220
u640:
	line	133
	
l1079:	
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
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	line	467
global __ptext23
__ptext23:	;psect for function _CheckValidTime
psect	text23
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	467
	global	__size_of_CheckValidTime
	__size_of_CheckValidTime	equ	__end_of_CheckValidTime-_CheckValidTime
	
_CheckValidTime:	
;incstack = 0
	opt	stack 5
; Regs used in _CheckValidTime: [wreg+status,2+status,0]
	line	473
	
l2456:	
;CheckTouchKey.c: 472: {
;CheckTouchKey.c: 473: if(KeyFlag[0] | KeyFlag[1])
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u1001
	goto	u1000
u1001:
	goto	l2462
u1000:
	line	475
	
l2458:	
	incf	(CheckValidTime@validtime),f
	skipnz
	incf	(CheckValidTime@validtime+1),f
	movlw	03Ah
	subwf	((CheckValidTime@validtime+1)),w
	movlw	098h
	skipnz
	subwf	((CheckValidTime@validtime)),w
	skipc
	goto	u1011
	goto	u1010
u1011:
	goto	l1167
u1010:
	line	477
	
l2460:	
;CheckTouchKey.c: 476: {
;CheckTouchKey.c: 477: b_kerr = 1;
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	478
	
l2462:	
;CheckTouchKey.c: 478: validtime = 0;
	clrf	(CheckValidTime@validtime)
	clrf	(CheckValidTime@validtime+1)
	line	486
	
l1167:	
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
;;		_KeyClearOne
;;		_KeyHave
;;		_KeyIsIn
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	line	221
global __ptext24
__ptext24:	;psect for function _CheckOnceResult
psect	text24
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	221
	global	__size_of_CheckOnceResult
	__size_of_CheckOnceResult	equ	__end_of_CheckOnceResult-_CheckOnceResult
	
_CheckOnceResult:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	223
	
l2636:	
;CheckTouchKey.c: 223: unsigned char cnt = 0;
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
	
l2638:	
;CheckTouchKey.c: 237: {
;CheckTouchKey.c: 238: flag = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(CheckOnceResult@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@flag)
	line	240
	
l2640:	
;CheckTouchKey.c: 240: KeyResSum[cnt] >>= 3;
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u1215:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank0
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u1210:
	addlw	-1
	skipz
	goto	u1215
	line	241
	
l2642:	
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
	
l2644:	
;CheckTouchKey.c: 242: KeyDown = Table_KeyDown[cnt];
	movf	(CheckOnceResult@cnt),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@KeyDown)
	line	244
	
l2646:	
;CheckTouchKey.c: 244: KeyValue = KeyResTemp + KeyDown;
	movf	(CheckOnceResult@KeyDown),w
	movwf	(CheckOnceResult@KeyValue)
	clrf	(CheckOnceResult@KeyValue+1)
	
l2648:	
	movf	(CheckOnceResult@KeyResTemp),w
	addwf	(CheckOnceResult@KeyValue),f
	skipnc
	incf	(CheckOnceResult@KeyValue+1),f
	movf	(CheckOnceResult@KeyResTemp+1),w
	addwf	(CheckOnceResult@KeyValue+1),f
	line	246
	
l2650:	
;CheckTouchKey.c: 246: if(!KeyIsIn(cnt))
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1221
	goto	u1220
u1221:
	goto	l2680
u1220:
	line	249
	
l2652:	
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
	goto	u1235
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue),w
u1235:
	skipnc
	goto	u1231
	goto	u1230
u1231:
	goto	l2656
u1230:
	line	253
	
l2654:	
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
	goto	l2664
	line	255
	
l2656:	
;CheckTouchKey.c: 255: else if ((OldValue > KeyValue) && (KeyOldValue1[cnt] > KeyValue))
	movf	(CheckOnceResult@OldValue+1),w
	subwf	(CheckOnceResult@KeyValue+1),w
	skipz
	goto	u1245
	movf	(CheckOnceResult@OldValue),w
	subwf	(CheckOnceResult@KeyValue),w
u1245:
	skipnc
	goto	u1241
	goto	u1240
u1241:
	goto	l2702
u1240:
	
l2658:	
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
	goto	u1255
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue),w
u1255:
	skipnc
	goto	u1251
	goto	u1250
u1251:
	goto	l2702
u1250:
	line	257
	
l2660:	
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
	
l2662:	
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
	
l2664:	
;CheckTouchKey.c: 263: }
;CheckTouchKey.c: 265: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	269
	
l2666:	
;CheckTouchKey.c: 268: {
;CheckTouchKey.c: 269: if(KeyResTemp >> 8)
	movf	(0+(CheckOnceResult@KeyResTemp)+01h),w
	btfsc	status,2
	goto	u1261
	goto	u1260
u1261:
	goto	l2670
u1260:
	line	271
	
l2668:	
;CheckTouchKey.c: 270: {
;CheckTouchKey.c: 271: KeyDown = 0xFF;
	movlw	low(0FFh)
	movwf	(CheckOnceResult@KeyDown)
	line	272
;CheckTouchKey.c: 272: }
	goto	l1109
	line	275
	
l2670:	
;CheckTouchKey.c: 273: else
;CheckTouchKey.c: 274: {
;CheckTouchKey.c: 275: KeyDown = KeyResTemp & 0xFF;
	movf	(CheckOnceResult@KeyResTemp),w
	movwf	(CheckOnceResult@KeyDown)
	line	276
	
l1109:	
	line	278
;CheckTouchKey.c: 276: }
;CheckTouchKey.c: 278: if(KeyMaxSub < KeyDown)
	movf	(CheckOnceResult@KeyDown),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u1271
	goto	u1270
u1271:
	goto	l2676
u1270:
	line	280
	
l2672:	
;CheckTouchKey.c: 279: {
;CheckTouchKey.c: 280: KeyMaxSub = KeyDown;
	movf	(CheckOnceResult@KeyDown),w
	movwf	(_KeyMaxSub)
	line	281
	
l2674:	
;CheckTouchKey.c: 281: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag),w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyHave
	line	282
;CheckTouchKey.c: 282: }
	goto	l2702
	line	285
	
l2676:	
;CheckTouchKey.c: 283: else
;CheckTouchKey.c: 284: {
;CheckTouchKey.c: 285: KeyCounter++;
	incf	(_KeyCounter),f
	goto	l2702
	line	298
	
l2680:	
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
	goto	u1285
	movf	(CheckOnceResult@KeyValue),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1285:
	skipnc
	goto	u1281
	goto	u1280
u1281:
	goto	l2686
u1280:
	goto	l2702
	line	302
	
l2686:	
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
	goto	u1295
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1295:
	skipc
	goto	u1291
	goto	u1290
u1291:
	goto	l2690
u1290:
	
l2688:	
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
	goto	u1305
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1305:
	skipnc
	goto	u1301
	goto	u1300
u1301:
	goto	l2694
u1300:
	line	304
	
l2690:	
;CheckTouchKey.c: 303: {
;CheckTouchKey.c: 304: if(++KeyUpShake[cnt] > 8)
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u1311
	goto	u1310
u1311:
	goto	l1115
u1310:
	line	306
	
l2692:	
;CheckTouchKey.c: 305: {
;CheckTouchKey.c: 306: KeyClearOne(cnt);
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyClearOne
	line	307
;CheckTouchKey.c: 307: continue;
	goto	l2702
	line	312
	
l2694:	
;CheckTouchKey.c: 310: else
;CheckTouchKey.c: 311: {
;CheckTouchKey.c: 312: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l2698
	line	313
	
l1115:	
	line	319
	
l2698:	
;CheckTouchKey.c: 319: else if(!(KeyData[0] | KeyData[1]))
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfss	status,2
	goto	u1321
	goto	u1320
u1321:
	goto	l2702
u1320:
	line	321
	
l2700:	
;CheckTouchKey.c: 320: {
;CheckTouchKey.c: 321: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag),w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyHave
	line	324
	
l2702:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@cnt),f
	subwf	((CheckOnceResult@cnt)),w
	skipc
	goto	u1331
	goto	u1330
u1331:
	goto	l2638
u1330:
	line	325
	
l1125:	
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
psect	text25,local,class=CODE,delta=2,merge=1,group=1
	line	142
global __ptext25
__ptext25:	;psect for function _KeyHave
psect	text25
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
	
l2224:	
;CheckTouchKey.c: 144: KeyCounter++;
	incf	(_KeyCounter),f
	line	148
	
l2226:	
;CheckTouchKey.c: 147: {
;CheckTouchKey.c: 148: KeyData[0] = 0;
	clrf	(_KeyData)	;volatile
	line	149
	
l2228:	
;CheckTouchKey.c: 149: KeyData[1] = 0;
	clrf	0+(_KeyData)+01h	;volatile
	line	150
	
l2230:	
;CheckTouchKey.c: 150: if(cnt&0x8)
	btfss	(KeyHave@cnt),(3)&7
	goto	u651
	goto	u650
u651:
	goto	l2234
u650:
	line	152
	
l2232:	
;CheckTouchKey.c: 151: {
;CheckTouchKey.c: 152: KeyData[1] = flag;
	movf	(KeyHave@flag),w
	movwf	0+(_KeyData)+01h	;volatile
	line	153
;CheckTouchKey.c: 153: }
	goto	l1088
	line	156
	
l2234:	
;CheckTouchKey.c: 154: else
;CheckTouchKey.c: 155: {
;CheckTouchKey.c: 156: KeyData[0] = flag;
	movf	(KeyHave@flag),w
	movwf	(_KeyData)	;volatile
	line	170
	
l1088:	
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
psect	text26,local,class=CODE,delta=2,merge=1,group=1
	line	80
global __ptext26
__ptext26:	;psect for function _KeyClearOne
psect	text26
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
	
l2126:	
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
	
l1063:	
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
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	line	335
global __ptext27
__ptext27:	;psect for function _CheckKeyOldValue
psect	text27
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	335
	global	__size_of_CheckKeyOldValue
	__size_of_CheckKeyOldValue	equ	__end_of_CheckKeyOldValue-_CheckKeyOldValue
	
_CheckKeyOldValue:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	338
	
l2382:	
;CheckTouchKey.c: 337: static unsigned char counter = 0;
;CheckTouchKey.c: 338: unsigned char cnt = 0;
	clrf	(CheckKeyOldValue@cnt)
	line	342
	
l2384:	
;CheckTouchKey.c: 339: unsigned int KeyResTemp;
;CheckTouchKey.c: 340: unsigned int KeyOldTemp;
;CheckTouchKey.c: 342: if(++counter < 4)
	movlw	low(04h)
	incf	(CheckKeyOldValue@counter),f
	subwf	((CheckKeyOldValue@counter)),w
	skipnc
	goto	u851
	goto	u850
u851:
	goto	l2388
u850:
	goto	l1131
	line	344
	
l2388:	
;CheckTouchKey.c: 344: counter = 0;
	clrf	(CheckKeyOldValue@counter)
	line	348
	
l2390:	
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
	
l2392:	
;CheckTouchKey.c: 349: if(!KeyIsIn(cnt))
	movf	(CheckKeyOldValue@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u861
	goto	u860
u861:
	goto	l1133
u860:
	line	352
	
l2394:	
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
	
l2396:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	353
	
l2398:	
;CheckTouchKey.c: 353: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u871
	goto	u870
u871:
	goto	l2402
u870:
	
l2400:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u881
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u881
	goto	u880
u881:
	goto	l1133
u880:
	line	355
	
l2402:	
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
	
l2404:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	356
	
l2406:	
;CheckTouchKey.c: 356: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u891
	goto	u890
u891:
	goto	l2410
u890:
	
l2408:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u901
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u901
	goto	u900
u901:
	goto	l1133
u900:
	line	358
	
l2410:	
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
	
l2412:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	359
	
l2414:	
;CheckTouchKey.c: 359: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u911
	goto	u910
u911:
	goto	l2418
u910:
	
l2416:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u921
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u921
	goto	u920
u921:
	goto	l1133
u920:
	line	361
	
l2418:	
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
	
l1133:	
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
	
l2420:	
	movlw	low(02h)
	incf	(CheckKeyOldValue@cnt),f
	subwf	((CheckKeyOldValue@cnt)),w
	skipc
	goto	u931
	goto	u930
u931:
	goto	l2390
u930:
	line	372
	
l1131:	
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
psect	text28,local,class=CODE,delta=2,merge=1,group=1
	line	58
global __ptext28
__ptext28:	;psect for function _KeyIsIn
psect	text28
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
	
l2114:	
;CheckTouchKey.c: 60: unsigned char i = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(KeyIsIn@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@i)
	line	62
	
l2116:	
;CheckTouchKey.c: 62: if(cnt&0x8)
	btfss	(KeyIsIn@cnt),(3)&7
	goto	u611
	goto	u610
u611:
	goto	l2120
u610:
	line	64
	
l2118:	
;CheckTouchKey.c: 63: {
;CheckTouchKey.c: 64: i &= KeyFlag[1];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@i),f
	line	65
;CheckTouchKey.c: 65: }
	goto	l2122
	line	68
	
l2120:	
;CheckTouchKey.c: 66: else
;CheckTouchKey.c: 67: {
;CheckTouchKey.c: 68: i &= KeyFlag[0];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@i),f
	line	70
	
l2122:	
;CheckTouchKey.c: 69: }
;CheckTouchKey.c: 70: return i;
	movf	(KeyIsIn@i),w
	line	71
	
l1060:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 257 in file "C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
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
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	257
global __ptext29
__ptext29:	;psect for function _Isr_Timer
psect	text29
	file	"C:\Users\hhmm6\Desktop\scm\keytest2\main.c"
	line	257
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
psect	text29
	line	259
	
i1l2548:	
;main.c: 259: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u111_21
	goto	u111_20
u111_21:
	goto	i1l2568
u111_20:
	line	261
	
i1l2550:	
;main.c: 260: {
;main.c: 261: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	263
	
i1l2552:	
;main.c: 263: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u112_21
	goto	u112_20
u112_21:
	goto	i1l2558
u112_20:
	line	265
	
i1l2554:	
;main.c: 264: {
;main.c: 265: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	266
	
i1l2556:	
;main.c: 266: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	269
	
i1l2558:	
;main.c: 267: }
;main.c: 269: if(pwmTime < 12 && sendFlag)
	movlw	low(0Ch)
	subwf	(_pwmTime),w	;volatile
	skipnc
	goto	u113_21
	goto	u113_20
u113_21:
	goto	i1l551
u113_20:
	
i1l2560:	
	btfss	(_sendFlag/8),(_sendFlag)&7	;volatile
	goto	u114_21
	goto	u114_20
u114_21:
	goto	i1l551
u114_20:
	line	270
	
i1l2562:	
;main.c: 270: PORTA&=~(1<<3);
	bcf	(5)+(3/8),(3)&7	;volatile
	goto	i1l2564
	line	271
	
i1l551:	
	line	272
;main.c: 271: else
;main.c: 272: PORTA|=(1<<3);
	bsf	(5)+(3/8),(3)&7	;volatile
	line	273
	
i1l2564:	
;main.c: 273: if(++pwmTime >= 44)
	movlw	low(02Ch)
	incf	(_pwmTime),f	;volatile
	subwf	((_pwmTime)),w	;volatile
	skipc
	goto	u115_21
	goto	u115_20
u115_21:
	goto	i1l555
u115_20:
	line	275
	
i1l2566:	
;main.c: 274: {
;main.c: 275: pwmTime = 0;
	clrf	(_pwmTime)	;volatile
	goto	i1l555
	line	280
	
i1l2568:	
;main.c: 278: else
;main.c: 279: {
;main.c: 280: PIR1 = 0;
	clrf	(12)	;volatile
	line	283
	
i1l555:	
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
