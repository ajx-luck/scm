opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P8122AD
opt include "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\include\sc8p8122ad.cgen.inc"
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
	FNCALL	_main,_pwm13Stop
	FNCALL	_WorkSleep,_Refurbish_Sfr
	FNCALL	_WorkSleep,_SystemEnterSleep
	FNCALL	_SystemEnterSleep,_ClearResSum
	FNCALL	_SystemEnterSleep,_GetTouchKeyValue
	FNCALL	_SystemEnterSleep,_JudgeKeyOldData
	FNCALL	_SystemEnterSleep,_RKeyOldData
	FNCALL	_KeyServer,___lwmod
	FNCALL	_KeyServer,_pwm13Init
	FNCALL	_KeyServer,_pwm13Stop
	FNCALL	_KeyServer,_pwm1Init
	FNCALL	_KeyServer,_pwm1Stop
	FNCALL	_KeyServer,_pwm3Init
	FNCALL	_KeyServer,_pwm3Stop
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
	FNCALL	_CheckKeyOldValue,_JudgeKeyOldData
	FNCALL	_CheckKeyOldValue,_KeyIsIn
	FNCALL	_CheckKeyOldValue,_RKeyOldData
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_ledDuty
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	13

;initializer for _ledDuty
	retlw	032h
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
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
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
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\Touch_Kscan_Library.h"
	line	69
_Table_KeyDown:
	retlw	0Ah
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyChannel
psect	strings
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\Touch_Kscan_Library.h"
	line	63
_Table_KeyChannel:
	retlw	040h
	global __end_of_Table_KeyChannel
__end_of_Table_KeyChannel:
	global	_Table_KeyFalg
	global	_Table_KeyDown
	global	_Table_KeyChannel
	global	_workStep
	global	_KeyFlag
	global	_b_ksleep
	global	_b_kerr
	global	_b_kclr
	global	_b_kover1
	global	_b_kover
	global	_B_OnOff
	global	_B_MainLoop
	global	CheckValidTime@F419
	global	_KeyData
	global	_KeyOldData
	global	_keyCount
	global	_KeyReference
	global	_KeyOldValue2
	global	_KeyOldValue1
	global	_KeyOldValue0
	global	_KeyResSum
	global	TurnKeyFlags@F416
	global	TurnKeyFlags@F415
	global	CheckKeyOldValue@F410
	global	_KeyMaxSub
	global	_KeyCounter
	global	WorkSleep@time
	global	_modeStep
	global	_MainTime
	global	_KeyUpShake
	global	_PWM01DT
_PWM01DT	set	31
	global	_PWMD01H
_PWMD01H	set	30
	global	_PWMCON2
_PWMCON2	set	29
	global	_PWMD1L
_PWMD1L	set	26
	global	_PWMTH
_PWMTH	set	24
	global	_PWMTL
_PWMTL	set	23
	global	_PWMCON1
_PWMCON1	set	22
	global	_PWMCON0
_PWMCON0	set	21
	global	_OSCCON
_OSCCON	set	20
	global	_T2CON
_T2CON	set	19
	global	_PR2
_PR2	set	17
	global	_PIE1
_PIE1	set	14
	global	_PIR1
_PIR1	set	13
	global	_INTCON
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_TRISB
_TRISB	set	5
	global	_OPTION_REG
_OPTION_REG	set	1
	global	_TMR2IF
_TMR2IF	set	105
	global	_RBIF
_RBIF	set	88
	global	_INTF
_INTF	set	89
	global	_RB1
_RB1	set	49
	global	_RB4
_RB4	set	52
	global	_RB6
_RB6	set	54
	global	_TRISB6
_TRISB6	set	46
	global	_PWMD23H
_PWMD23H	set	158
	global	_PWM23DT
_PWM23DT	set	157
	global	_PWMD3L
_PWMD3L	set	156
	global	_TMR0
_TMR0	set	129
	global	_KEYDATAH
_KEYDATAH	set	279
	global	_KEYDATAL
_KEYDATAL	set	278
	global	_KEYCON2
_KEYCON2	set	275
	global	_KEYCON1
_KEYCON1	set	274
	global	_KEYCON0
_KEYCON0	set	273
	global	_PIE2
_PIE2	set	272
	global	_PIR2
_PIR2	set	271
; #config settings
	file	"SU003_SC8P8122_sop8_.as"
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
_workStep:
       ds      1

_KeyFlag:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	13
_ledDuty:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
CheckValidTime@F419:
       ds      2

_KeyData:
       ds      2

_KeyOldData:
       ds      2

_keyCount:
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

TurnKeyFlags@F416:
       ds      1

TurnKeyFlags@F415:
       ds      1

CheckKeyOldValue@F410:
       ds      1

_KeyMaxSub:
       ds      1

_KeyCounter:
       ds      1

WorkSleep@time:
       ds      1

_modeStep:
       ds      1

_MainTime:
       ds      1

_KeyUpShake:
       ds      1

	file	"SU003_SC8P8122_sop8_.as"
	line	#
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
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
	movlw	low((__pbssBANK0)+01Bh)
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
?_pwm13Stop:	; 1 bytes @ 0x0
?_pwm1Init:	; 1 bytes @ 0x0
?_pwm3Stop:	; 1 bytes @ 0x0
?_pwm3Init:	; 1 bytes @ 0x0
?_pwm1Stop:	; 1 bytes @ 0x0
?_pwm13Init:	; 1 bytes @ 0x0
?_SystemEnterSleep:	; 1 bytes @ 0x0
?_CheckTouchKey:	; 1 bytes @ 0x0
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
?_KeyHave:	; 1 bytes @ 0x0
?_GetTouchKeyValue:	; 1 bytes @ 0x0
?_CheckOnceResult:	; 1 bytes @ 0x0
?_CheckKeyOldValue:	; 1 bytes @ 0x0
?_TurnKeyFlags:	; 1 bytes @ 0x0
?_CheckValidTime:	; 1 bytes @ 0x0
	ds	2
??_pwm13Stop:	; 1 bytes @ 0x2
??_pwm1Init:	; 1 bytes @ 0x2
??_pwm3Stop:	; 1 bytes @ 0x2
??_pwm3Init:	; 1 bytes @ 0x2
??_pwm1Stop:	; 1 bytes @ 0x2
??_pwm13Init:	; 1 bytes @ 0x2
?_JudgeKeyOldData:	; 1 bytes @ 0x2
?_RKeyOldData:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_Refurbish_Sfr:	; 1 bytes @ 0x2
??_KeyIsIn:	; 1 bytes @ 0x2
??_KeyClearOne:	; 1 bytes @ 0x2
??_ClearResSum:	; 1 bytes @ 0x2
??_KeyHave:	; 1 bytes @ 0x2
??_CheckValidTime:	; 1 bytes @ 0x2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x2
	global	KeyIsIn@377
KeyIsIn@377:	; 1 bytes @ 0x2
	global	KeyClearOne@381
KeyClearOne@381:	; 1 bytes @ 0x2
	global	ClearResSum@388
ClearResSum@388:	; 1 bytes @ 0x2
	global	KeyHave@390
KeyHave@390:	; 1 bytes @ 0x2
	global	JudgeKeyOldData@428
JudgeKeyOldData@428:	; 2 bytes @ 0x2
	global	RKeyOldData@431
RKeyOldData@431:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	ds	1
??_KeyStopClear:	; 1 bytes @ 0x3
??_GetTouchKeyValue:	; 1 bytes @ 0x3
	global	KeyIsIn@378
KeyIsIn@378:	; 1 bytes @ 0x3
	global	KeyStopClear@385
KeyStopClear@385:	; 1 bytes @ 0x3
	global	GetTouchKeyValue@395
GetTouchKeyValue@395:	; 2 bytes @ 0x3
	ds	1
??_JudgeKeyOldData:	; 1 bytes @ 0x4
??_RKeyOldData:	; 1 bytes @ 0x4
??_KeyClearIn:	; 1 bytes @ 0x4
??_CheckOnceResult:	; 1 bytes @ 0x4
	global	KeyClearIn@383
KeyClearIn@383:	; 1 bytes @ 0x4
	global	JudgeKeyOldData@427
JudgeKeyOldData@427:	; 1 bytes @ 0x4
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x4
	ds	1
??_TurnKeyFlags:	; 1 bytes @ 0x5
	global	GetTouchKeyValue@394
GetTouchKeyValue@394:	; 1 bytes @ 0x5
	global	JudgeKeyOldData@429
JudgeKeyOldData@429:	; 2 bytes @ 0x5
	ds	1
??___lwmod:	; 1 bytes @ 0x6
	global	GetTouchKeyValue@393
GetTouchKeyValue@393:	; 1 bytes @ 0x6
	global	RKeyOldData@430
RKeyOldData@430:	; 1 bytes @ 0x6
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	ds	1
??_KeyServer:	; 1 bytes @ 0x7
??_WorkSleep:	; 1 bytes @ 0x7
??_CheckKeyOldValue:	; 1 bytes @ 0x7
	ds	1
??_CheckTouchKey:	; 1 bytes @ 0x8
??_main:	; 1 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_SystemEnterSleep:	; 1 bytes @ 0x0
	global	CheckOnceResult@406
CheckOnceResult@406:	; 2 bytes @ 0x0
	global	CheckKeyOldValue@412
CheckKeyOldValue@412:	; 2 bytes @ 0x0
	ds	2
	global	CheckOnceResult@403
CheckOnceResult@403:	; 1 bytes @ 0x2
	global	CheckKeyOldValue@411
CheckKeyOldValue@411:	; 1 bytes @ 0x2
	global	SystemEnterSleep@424
SystemEnterSleep@424:	; 2 bytes @ 0x2
	ds	1
	global	CheckOnceResult@405
CheckOnceResult@405:	; 2 bytes @ 0x3
	ds	1
	global	SystemEnterSleep@426
SystemEnterSleep@426:	; 2 bytes @ 0x4
	ds	1
	global	CheckOnceResult@402
CheckOnceResult@402:	; 1 bytes @ 0x5
	ds	1
	global	CheckOnceResult@404
CheckOnceResult@404:	; 2 bytes @ 0x6
	global	SystemEnterSleep@425
SystemEnterSleep@425:	; 2 bytes @ 0x6
	ds	2
	global	CheckOnceResult@401
CheckOnceResult@401:	; 1 bytes @ 0x8
	global	SystemEnterSleep@423
SystemEnterSleep@423:	; 1 bytes @ 0x8
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    10
;!    Data        1
;!    BSS         29
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      12
;!    BANK0            80      9      36
;!    BANK1            32      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _SystemEnterSleep->_GetTouchKeyValue
;!    _SystemEnterSleep->_JudgeKeyOldData
;!    _SystemEnterSleep->_RKeyOldData
;!    _KeyServer->___lwmod
;!    _CheckTouchKey->_CheckOnceResult
;!    _TurnKeyFlags->_KeyClearIn
;!    _KeyClearIn->_KeyIsIn
;!    _KeyStopClear->_KeyClearOne
;!    _GetTouchKeyValue->_ClearResSum
;!    _CheckOnceResult->_KeyIsIn
;!    _CheckKeyOldValue->_JudgeKeyOldData
;!    _CheckKeyOldValue->_RKeyOldData
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
;! (0) _main                                                 0     0      0    4982
;!                      _CheckTouchKey
;!                        _Init_System
;!                          _KeyServer
;!                      _Refurbish_Sfr
;!                          _WorkSleep
;!                          _pwm13Stop
;! ---------------------------------------------------------------------------------
;! (1) _WorkSleep                                            0     0      0    1417
;!                      _Refurbish_Sfr
;!                   _SystemEnterSleep
;! ---------------------------------------------------------------------------------
;! (2) _SystemEnterSleep                                     9     9      0    1417
;!                                              0 BANK0      9     9      0
;!                        _ClearResSum
;!                   _GetTouchKeyValue
;!                    _JudgeKeyOldData
;!                        _RKeyOldData
;! ---------------------------------------------------------------------------------
;! (2) _Refurbish_Sfr                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _KeyServer                                            0     0      0     245
;!                            ___lwmod
;!                          _pwm13Init
;!                          _pwm13Stop
;!                           _pwm1Init
;!                           _pwm1Stop
;!                           _pwm3Init
;!                           _pwm3Stop
;! ---------------------------------------------------------------------------------
;! (2) _pwm3Stop                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwm3Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwm1Stop                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwm1Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _pwm13Stop                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwm13Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     245
;!                                              2 COMMON     5     1      4
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _CheckTouchKey                                        0     0      0    3320
;!                   _CheckKeyOldValue
;!                    _CheckOnceResult
;!                     _CheckValidTime
;!                        _ClearResSum
;!                   _GetTouchKeyValue
;!                       _KeyStopClear
;!                       _TurnKeyFlags
;! ---------------------------------------------------------------------------------
;! (2) _TurnKeyFlags                                         0     0      0     286
;!                         _KeyClearIn
;! ---------------------------------------------------------------------------------
;! (3) _KeyClearIn                                           1     1      0     286
;!                                              4 COMMON     1     1      0
;!                        _KeyClearOne
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (2) _KeyStopClear                                         1     1      0     178
;!                                              3 COMMON     1     1      0
;!                        _KeyClearOne
;! ---------------------------------------------------------------------------------
;! (3) _GetTouchKeyValue                                     4     4      0     159
;!                                              3 COMMON     4     4      0
;!                        _ClearResSum
;! ---------------------------------------------------------------------------------
;! (4) _ClearResSum                                          1     1      0      45
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _CheckValidTime                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _CheckOnceResult                                     13    13      0    1507
;!                                              4 COMMON     4     4      0
;!                                              0 BANK0      9     9      0
;!                        _KeyClearOne
;!                            _KeyHave
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (3) _KeyHave                                              1     1      0      44
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _KeyClearOne                                          1     1      0      88
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _CheckKeyOldValue                                     3     3      0    1145
;!                                              0 BANK0      3     3      0
;!                    _JudgeKeyOldData
;!                            _KeyIsIn
;!                        _RKeyOldData
;! ---------------------------------------------------------------------------------
;! (3) _RKeyOldData                                          5     3      2     294
;!                                              2 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! (5) _KeyIsIn                                              2     2      0      68
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _JudgeKeyOldData                                      5     3      2     560
;!                                              2 COMMON     5     3      2
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
;!       _JudgeKeyOldData
;!       _KeyIsIn
;!       _RKeyOldData
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
;!     ___lwmod
;!     _pwm13Init
;!     _pwm13Stop
;!     _pwm1Init
;!     _pwm1Stop
;!     _pwm3Init
;!     _pwm3Stop
;!   _Refurbish_Sfr
;!   _WorkSleep
;!     _Refurbish_Sfr
;!     _SystemEnterSleep
;!       _ClearResSum
;!       _GetTouchKeyValue
;!         _ClearResSum
;!       _JudgeKeyOldData
;!       _RKeyOldData
;!   _pwm13Stop
;!
;! _Isr_Timer (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               20      0       0       7        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      9      24       5       45.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      8       C       1       85.7%
;!BITCOMMON            E      0       1       0        7.1%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      30       8        0.0%
;!ABS                  0      0      30       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 289 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;;		_pwm13Stop
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	289
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	289
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	291
	
l2967:	
;main.c: 291: Init_System();
	fcall	_Init_System
	line	292
	
l2969:	
;main.c: 292: ledDuty = 50;
	movlw	low(032h)
	movwf	(_ledDuty)
	line	295
	
l2971:	
;main.c: 294: {
;main.c: 295: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u2001
	goto	u2000
u2001:
	goto	l2971
u2000:
	line	297
	
l2973:	
;main.c: 296: {
;main.c: 297: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	298
# 298 "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
clrwdt ;# 
psect	maintext
	line	300
	
l2975:	
;main.c: 300: CheckTouchKey();
	fcall	_CheckTouchKey
	line	302
	
l2977:	
;main.c: 302: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	303
	
l2979:	
;main.c: 303: KeyServer();
	fcall	_KeyServer
	line	305
	
l2981:	
;main.c: 305: if(workStep == 0 && keyCount == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u2011
	goto	u2010
u2011:
	goto	l2971
u2010:
	
l2983:	
	movf	((_keyCount)),w
iorwf	((_keyCount+1)),w
	btfss	status,2
	goto	u2021
	goto	u2020
u2021:
	goto	l2971
u2020:
	line	308
	
l2985:	
;main.c: 306: {
;main.c: 308: pwm13Stop();
	fcall	_pwm13Stop
	line	309
	
l2987:	
;main.c: 309: WorkSleep();
	fcall	_WorkSleep
	goto	l2971
	global	start
	ljmp	start
	opt stack 0
	line	315
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_WorkSleep

;; *************** function _WorkSleep *****************
;; Defined at:
;;		line 241 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	241
global __ptext1
__ptext1:	;psect for function _WorkSleep
psect	text1
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	241
	global	__size_of_WorkSleep
	__size_of_WorkSleep	equ	__end_of_WorkSleep-_WorkSleep
	
_WorkSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _WorkSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	248
	
l2917:	
;main.c: 244: static unsigned char time;
;main.c: 248: if(++time >= 125)
	movlw	low(07Dh)
	incf	(WorkSleep@time),f
	subwf	((WorkSleep@time)),w
	skipc
	goto	u1931
	goto	u1930
u1931:
	goto	l501
u1930:
	line	250
	
l2919:	
;main.c: 249: {
;main.c: 250: time = 0;
	clrf	(WorkSleep@time)
	line	251
;main.c: 251: INTCON = 0;
	clrf	(11)	;volatile
	line	252
;main.c: 252: PIE1 = 0;
	clrf	(14)	;volatile
	line	253
;main.c: 253: PIE2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(272)^0100h	;volatile
	line	254
;main.c: 254: PIR1 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(13)	;volatile
	line	255
;main.c: 255: PIR2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(271)^0100h	;volatile
	line	256
;main.c: 256: T2CON = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	260
;main.c: 260: TRISB = 0x00;
	clrf	(5)	;volatile
	line	261
;main.c: 261: PORTB = 0;
	clrf	(6)	;volatile
	line	274
	
l2921:	
;main.c: 274: SystemEnterSleep();
	fcall	_SystemEnterSleep
	line	275
	
l2923:	
;main.c: 275: if(RBIF)
	btfss	(88/8),(88)&7	;volatile
	goto	u1941
	goto	u1940
u1941:
	goto	l2929
u1940:
	line	277
	
l2925:	
;main.c: 276: {
;main.c: 277: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	278
	
l2927:	
;main.c: 278: PORTB;
	movf	(6),w	;volatile
	line	281
	
l2929:	
;main.c: 279: }
;main.c: 281: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	284
	
l501:	
	return
	opt stack 0
GLOBAL	__end_of_WorkSleep
	__end_of_WorkSleep:
	signat	_WorkSleep,89
	global	_SystemEnterSleep

;; *************** function _SystemEnterSleep *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  425             2    6[BANK0 ] unsigned int 
;;  426             2    4[BANK0 ] unsigned int 
;;  424             2    2[BANK0 ] unsigned int 
;;  423             1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       7       0
;;      Temps:          0       2       0
;;      Totals:         0       9       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ClearResSum
;;		_GetTouchKeyValue
;;		_JudgeKeyOldData
;;		_RKeyOldData
;; This function is called by:
;;		_WorkSleep
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
global __ptext2
__ptext2:	;psect for function _SystemEnterSleep
psect	text2
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_SystemEnterSleep
	__size_of_SystemEnterSleep	equ	__end_of_SystemEnterSleep-_SystemEnterSleep
	
_SystemEnterSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _SystemEnterSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l2723:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text2
	
l1056:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
clrwdt ;# 
psect	text2
	
l2725:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	
l2727:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(1),f	;volatile
	
l2729:	
	bsf	(1)+(3/8),(3)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
clrwdt ;# 
psect	text2
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\TouchKeyConst.h"
	line	5
	
l2731:	
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
clrwdt ;# 
psect	text2
	
l2733:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	
l2735:	
	clrf	(275)^0100h	;volatile
	
l2737:	
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	
l2739:	
	bcf	(54/8),(54)&7	;volatile
	
l2741:	
	movlw	low(072h)
	movwf	(20)	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
sleep ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
clrwdt ;# 
psect	text2
	
l2743:	
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\Touch_Kscan_Library.h"
	line	95
	
l2745:	
	movlw	low(079h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(275)^0100h	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	
l2747:	
	fcall	_ClearResSum
	
l2749:	
	bsf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	
l2751:	
	fcall	_GetTouchKeyValue
	
l2753:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SystemEnterSleep@423)
	
l2755:	
	clrf	(SystemEnterSleep@424)
	incf	(SystemEnterSleep@424),f
	clrf	(SystemEnterSleep@424+1)
	
l2757:	
	btfsc	(88/8),(88)&7	;volatile
	goto	u1661
	goto	u1660
u1661:
	goto	l2761
u1660:
	
l2759:	
	btfss	(89/8),(89)&7	;volatile
	goto	u1671
	goto	u1670
u1671:
	goto	l1062
u1670:
	
l2761:	
	fcall	_ClearResSum
	
l2763:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	
l2765:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l2767:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	l1060
	
l1062:	
	btfss	(SystemEnterSleep@424),(0)&7
	goto	u1681
	goto	u1680
u1681:
	goto	l2793
u1680:
	
l2773:	
	clrc
	rlf	(SystemEnterSleep@423),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(SystemEnterSleep@425)
	incf	fsr0,f
	movf	indf,w
	movwf	(SystemEnterSleep@425+1)
	movf	((SystemEnterSleep@425+1)),w
	movwf	(SystemEnterSleep@426+1)
	movf	((SystemEnterSleep@425)),w
	movwf	(SystemEnterSleep@426)
	
l2775:	
	movf	((SystemEnterSleep@425)),w
iorwf	((SystemEnterSleep@425+1)),w
	btfsc	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l2793
u1690:
	
l2777:	
	movf	(SystemEnterSleep@423),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addwf	(SystemEnterSleep@426),f
	skipnc
	incf	(SystemEnterSleep@426+1),f
	
l2779:	
	clrc
	rlf	(SystemEnterSleep@423),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+1
	movf	(SystemEnterSleep@426+1),w
	subwf	1+(??_SystemEnterSleep+0)+0,w
	skipz
	goto	u1705
	movf	(SystemEnterSleep@426),w
	subwf	0+(??_SystemEnterSleep+0)+0,w
u1705:
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l2791
u1700:
	goto	l2761
	
l2791:	
	movf	(SystemEnterSleep@425+1),w
	movwf	(JudgeKeyOldData@428+1)
	movf	(SystemEnterSleep@425),w
	movwf	(JudgeKeyOldData@428)
	movf	(SystemEnterSleep@423),w
	fcall	_JudgeKeyOldData
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SystemEnterSleep@425+1),w
	movwf	(RKeyOldData@431+1)
	movf	(SystemEnterSleep@425),w
	movwf	(RKeyOldData@431)
	movf	(SystemEnterSleep@423),w
	fcall	_RKeyOldData
	
l2793:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(SystemEnterSleep@424),f
	rlf	(SystemEnterSleep@424+1),f
	
l2795:	
	incf	(SystemEnterSleep@423),f
	btfsc	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l1062
u1710:
	goto	l1056
	
l1060:	
	return
	opt stack 0
GLOBAL	__end_of_SystemEnterSleep
	__end_of_SystemEnterSleep:
	signat	_SystemEnterSleep,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 54 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	54
global __ptext3
__ptext3:	;psect for function _Refurbish_Sfr
psect	text3
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	54
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 5
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	57
	
l2187:	
;main.c: 57: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	58
;main.c: 58: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	59
;main.c: 59: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	60
	
l2189:	
;main.c: 60: if (4 != T2CON)
		movlw	4
	xorwf	((19)),w	;volatile
	btfsc	status,2
	goto	u921
	goto	u920
u921:
	goto	l445
u920:
	line	61
	
l2191:	
;main.c: 61: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	62
	
l445:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 68 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwmod
;;		_pwm13Init
;;		_pwm13Stop
;;		_pwm1Init
;;		_pwm1Stop
;;		_pwm3Init
;;		_pwm3Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	68
global __ptext4
__ptext4:	;psect for function _KeyServer
psect	text4
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	68
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 5
; Regs used in _KeyServer: [wreg+status,2+status,0+pclath+cstack]
	line	71
	
l2507:	
;main.c: 70: static unsigned char KeyOldFlag = 0;
;main.c: 71: if (KeyFlag[0])
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u1271
	goto	u1270
u1271:
	goto	l2541
u1270:
	line	73
	
l2509:	
;main.c: 72: {
;main.c: 73: if ((KeyFlag[0] & 0x1))
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u1281
	goto	u1280
u1281:
	goto	l468
u1280:
	line	75
	
l2511:	
;main.c: 74: {
;main.c: 75: keyCount++;
	incf	(_keyCount),f
	skipnz
	incf	(_keyCount+1),f
	line	77
	
l2513:	
;main.c: 77: if(keyCount > 250 && keyCount % 10 == 0 && workStep > 0)
	movlw	0
	subwf	(_keyCount+1),w
	movlw	0FBh
	skipnz
	subwf	(_keyCount),w
	skipc
	goto	u1291
	goto	u1290
u1291:
	goto	l2539
u1290:
	
l2515:	
	movlw	0Ah
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_keyCount+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_keyCount),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	((0+(?___lwmod))),w
iorwf	((1+(?___lwmod))),w
	btfss	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l2539
u1300:
	
l2517:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l2539
u1310:
	line	79
	
l2519:	
;main.c: 78: {
;main.c: 79: if(modeStep == 0 && ledDuty < 90)
	movf	((_modeStep)),w
	btfss	status,2
	goto	u1321
	goto	u1320
u1321:
	goto	l2525
u1320:
	
l2521:	
	movlw	low(05Ah)
	subwf	(_ledDuty),w
	skipnc
	goto	u1331
	goto	u1330
u1331:
	goto	l2525
u1330:
	line	81
	
l2523:	
;main.c: 80: {
;main.c: 81: ledDuty++;
	incf	(_ledDuty),f
	line	83
	
l2525:	
;main.c: 82: }
;main.c: 83: if(modeStep == 1 && ledDuty > 10)
		decf	((_modeStep)),w
	btfss	status,2
	goto	u1341
	goto	u1340
u1341:
	goto	l2531
u1340:
	
l2527:	
	movlw	low(0Bh)
	subwf	(_ledDuty),w
	skipc
	goto	u1351
	goto	u1350
u1351:
	goto	l2531
u1350:
	line	85
	
l2529:	
;main.c: 84: {
;main.c: 85: ledDuty--;
	decf	(_ledDuty),f
	line	87
	
l2531:	
;main.c: 86: }
;main.c: 87: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	88
	
l2533:	
;main.c: 88: PWMD3L = ledDuty;
	movf	(_ledDuty),w
	movwf	(156)^080h	;volatile
	line	89
	
l2535:	
;main.c: 89: PWMD01H = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(30)	;volatile
	line	90
	
l2537:	
;main.c: 90: PWMD1L = ledDuty;
	movf	(_ledDuty),w
	movwf	(26)	;volatile
	line	92
	
l2539:	
;main.c: 91: }
;main.c: 92: B_OnOff = !B_OnOff;
	movlw	1<<((_B_OnOff)&7)
	xorwf	((_B_OnOff)/8),f
	goto	l468
	line	98
	
l2541:	
;main.c: 98: if(keyCount > 0 && keyCount < 250)
	movf	((_keyCount)),w
iorwf	((_keyCount+1)),w
	btfsc	status,2
	goto	u1361
	goto	u1360
u1361:
	goto	l2569
u1360:
	
l2543:	
	movlw	0
	subwf	(_keyCount+1),w
	movlw	0FAh
	skipnz
	subwf	(_keyCount),w
	skipnc
	goto	u1371
	goto	u1370
u1371:
	goto	l2569
u1370:
	line	100
	
l2545:	
;main.c: 99: {
;main.c: 100: if(++workStep > 3)
	movlw	low(04h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u1381
	goto	u1380
u1381:
	goto	l2549
u1380:
	line	102
	
l2547:	
;main.c: 101: {
;main.c: 102: workStep = 0;
	clrf	(_workStep)
	line	104
	
l2549:	
;main.c: 103: }
;main.c: 104: if(workStep == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l2553
u1390:
	line	106
	
l2551:	
;main.c: 105: {
;main.c: 106: pwm13Stop();
	fcall	_pwm13Stop
	line	107
;main.c: 107: }
	goto	l2569
	line	108
	
l2553:	
;main.c: 108: else if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u1401
	goto	u1400
u1401:
	goto	l2559
u1400:
	line	110
	
l2555:	
;main.c: 109: {
;main.c: 110: pwm1Init();
	fcall	_pwm1Init
	line	111
	
l2557:	
;main.c: 111: pwm3Stop();
	fcall	_pwm3Stop
	line	112
;main.c: 112: }
	goto	l2569
	line	113
	
l2559:	
;main.c: 113: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u1411
	goto	u1410
u1411:
	goto	l2565
u1410:
	line	115
	
l2561:	
;main.c: 114: {
;main.c: 115: pwm3Init();
	fcall	_pwm3Init
	line	116
	
l2563:	
;main.c: 116: pwm1Stop();
	fcall	_pwm1Stop
	line	117
;main.c: 117: }
	goto	l2569
	line	118
	
l2565:	
;main.c: 118: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u1421
	goto	u1420
u1421:
	goto	l459
u1420:
	line	120
	
l2567:	
;main.c: 119: {
;main.c: 120: pwm13Init();
	fcall	_pwm13Init
	goto	l2569
	line	122
	
l459:	
	line	123
	
l2569:	
;main.c: 121: }
;main.c: 122: }
;main.c: 123: if(keyCount > 250 && workStep > 0)
	movlw	0
	subwf	(_keyCount+1),w
	movlw	0FBh
	skipnz
	subwf	(_keyCount),w
	skipc
	goto	u1431
	goto	u1430
u1431:
	goto	l2577
u1430:
	
l2571:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1441
	goto	u1440
u1441:
	goto	l2577
u1440:
	line	125
	
l2573:	
;main.c: 124: {
;main.c: 125: if(modeStep > 0)
	movf	((_modeStep)),w
	btfsc	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l466
u1450:
	line	127
	
l2575:	
;main.c: 126: {
;main.c: 127: modeStep = 0;
	clrf	(_modeStep)
	line	128
;main.c: 128: }
	goto	l2577
	line	129
	
l466:	
	line	131
;main.c: 129: else
;main.c: 130: {
;main.c: 131: modeStep = 1;
	clrf	(_modeStep)
	incf	(_modeStep),f
	line	134
	
l2577:	
;main.c: 132: }
;main.c: 133: }
;main.c: 134: keyCount = 0;
	clrf	(_keyCount)
	clrf	(_keyCount+1)
	line	136
	
l468:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_pwm3Stop

;; *************** function _pwm3Stop *****************
;; Defined at:
;;		line 156 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	156
global __ptext5
__ptext5:	;psect for function _pwm3Stop
psect	text5
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	156
	global	__size_of_pwm3Stop
	__size_of_pwm3Stop	equ	__end_of_pwm3Stop-_pwm3Stop
	
_pwm3Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm3Stop: []
	line	158
	
l2209:	
;main.c: 158: PWMCON0 &= 0XF7;
	bcf	(21)+(3/8),(3)&7	;volatile
	line	159
;main.c: 159: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	162
	
l474:	
	return
	opt stack 0
GLOBAL	__end_of_pwm3Stop
	__end_of_pwm3Stop:
	signat	_pwm3Stop,89
	global	_pwm3Init

;; *************** function _pwm3Init *****************
;; Defined at:
;;		line 138 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	138
global __ptext6
__ptext6:	;psect for function _pwm3Init
psect	text6
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	138
	global	__size_of_pwm3Init
	__size_of_pwm3Init	equ	__end_of_pwm3Init-_pwm3Init
	
_pwm3Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm3Init: [wreg+status,2]
	line	141
	
l2211:	
;main.c: 141: TRISB |= 0x10;
	bsf	(5)+(4/8),(4)&7	;volatile
	line	142
	
l2213:	
;main.c: 142: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	143
;main.c: 143: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	145
	
l2215:	
;main.c: 145: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	146
	
l2217:	
;main.c: 146: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	147
;main.c: 147: PWMD3L = ledDuty;
	movf	(_ledDuty),w
	movwf	(156)^080h	;volatile
	line	148
	
l2219:	
;main.c: 148: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	150
	
l2221:	
;main.c: 150: PWMCON0 = 0X68;
	movlw	low(068h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	151
;main.c: 151: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	152
	
l2223:	
;main.c: 152: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	154
	
l471:	
	return
	opt stack 0
GLOBAL	__end_of_pwm3Init
	__end_of_pwm3Init:
	signat	_pwm3Init,89
	global	_pwm1Stop

;; *************** function _pwm1Stop *****************
;; Defined at:
;;		line 182 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	182
global __ptext7
__ptext7:	;psect for function _pwm1Stop
psect	text7
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	182
	global	__size_of_pwm1Stop
	__size_of_pwm1Stop	equ	__end_of_pwm1Stop-_pwm1Stop
	
_pwm1Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm1Stop: []
	line	184
	
l2225:	
;main.c: 184: PWMCON0 &= 0XFD;
	bcf	(21)+(1/8),(1)&7	;volatile
	line	185
;main.c: 185: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	187
	
l480:	
	return
	opt stack 0
GLOBAL	__end_of_pwm1Stop
	__end_of_pwm1Stop:
	signat	_pwm1Stop,89
	global	_pwm1Init

;; *************** function _pwm1Init *****************
;; Defined at:
;;		line 164 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	164
global __ptext8
__ptext8:	;psect for function _pwm1Init
psect	text8
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	164
	global	__size_of_pwm1Init
	__size_of_pwm1Init	equ	__end_of_pwm1Init-_pwm1Init
	
_pwm1Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm1Init: [wreg+status,2]
	line	166
	
l2195:	
;main.c: 166: TRISB |= 0x02;
	bsf	(5)+(1/8),(1)&7	;volatile
	line	167
	
l2197:	
;main.c: 167: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	168
;main.c: 168: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	169
	
l2199:	
;main.c: 169: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	172
	
l2201:	
;main.c: 172: PWMD01H = 0;
	clrf	(30)	;volatile
	line	173
;main.c: 173: PWMD1L = ledDuty;
	movf	(_ledDuty),w
	movwf	(26)	;volatile
	line	174
	
l2203:	
;main.c: 174: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	176
	
l2205:	
;main.c: 176: PWMCON0 = 0X62;
	movlw	low(062h)
	movwf	(21)	;volatile
	line	177
;main.c: 177: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	178
	
l2207:	
;main.c: 178: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	180
	
l477:	
	return
	opt stack 0
GLOBAL	__end_of_pwm1Init
	__end_of_pwm1Init:
	signat	_pwm1Init,89
	global	_pwm13Stop

;; *************** function _pwm13Stop *****************
;; Defined at:
;;		line 211 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;;		_KeyServer
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	211
global __ptext9
__ptext9:	;psect for function _pwm13Stop
psect	text9
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	211
	global	__size_of_pwm13Stop
	__size_of_pwm13Stop	equ	__end_of_pwm13Stop-_pwm13Stop
	
_pwm13Stop:	
;incstack = 0
	opt	stack 6
; Regs used in _pwm13Stop: [wreg+status,2+status,0]
	line	213
	
l2193:	
;main.c: 213: PWMCON0 &= 0XF5;
	movlw	low(0F5h)
	andwf	(21),f	;volatile
	line	214
;main.c: 214: PORTB &= 0xED;
	movlw	low(0EDh)
	andwf	(6),f	;volatile
	line	216
	
l486:	
	return
	opt stack 0
GLOBAL	__end_of_pwm13Stop
	__end_of_pwm13Stop:
	signat	_pwm13Stop,89
	global	_pwm13Init

;; *************** function _pwm13Init *****************
;; Defined at:
;;		line 189 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	189
global __ptext10
__ptext10:	;psect for function _pwm13Init
psect	text10
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	189
	global	__size_of_pwm13Init
	__size_of_pwm13Init	equ	__end_of_pwm13Init-_pwm13Init
	
_pwm13Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm13Init: [wreg+status,2+status,0]
	line	191
	
l2227:	
;main.c: 191: TRISB |= 0x05;
	movlw	low(05h)
	iorwf	(5),f	;volatile
	line	192
	
l2229:	
;main.c: 192: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	193
	
l2231:	
;main.c: 193: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	194
	
l2233:	
;main.c: 194: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	197
	
l2235:	
;main.c: 197: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	198
	
l2237:	
;main.c: 198: PWMD3L = ledDuty;
	movf	(_ledDuty),w
	movwf	(156)^080h	;volatile
	line	199
	
l2239:	
;main.c: 199: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	201
	
l2241:	
;main.c: 201: PWMD01H = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(30)	;volatile
	line	202
	
l2243:	
;main.c: 202: PWMD1L = ledDuty;
	movf	(_ledDuty),w
	movwf	(26)	;volatile
	line	203
	
l2245:	
;main.c: 203: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	205
	
l2247:	
;main.c: 205: PWMCON0 = 0X6A;
	movlw	low(06Ah)
	movwf	(21)	;volatile
	line	206
	
l2249:	
;main.c: 206: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	207
	
l2251:	
;main.c: 207: TRISB &= 0xFA;
	movlw	low(0FAh)
	andwf	(5),f	;volatile
	line	209
	
l483:	
	return
	opt stack 0
GLOBAL	__end_of_pwm13Init
	__end_of_pwm13Init:
	signat	_pwm13Init,89
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
global __ptext11
__ptext11:	;psect for function ___lwmod
psect	text11
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l2475:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u1231
	goto	u1230
u1231:
	goto	l2491
u1230:
	line	14
	
l2477:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l2481
	line	16
	
l2479:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l2481:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1241
	goto	u1240
u1241:
	goto	l2479
u1240:
	line	20
	
l2483:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1255
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1255:
	skipc
	goto	u1251
	goto	u1250
u1251:
	goto	l2487
u1250:
	line	21
	
l2485:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l2487:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l2489:	
	decfsz	(___lwmod@counter),f
	goto	u1261
	goto	u1260
u1261:
	goto	l2483
u1260:
	line	25
	
l2491:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1436:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 25 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	25
global __ptext12
__ptext12:	;psect for function _Init_System
psect	text12
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	25
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	27
	
l2495:	
# 27 "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
nop ;# 
	line	28
# 28 "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
clrwdt ;# 
psect	text12
	line	29
	
l2497:	
;main.c: 29: INTCON = 0;
	clrf	(11)	;volatile
	line	30
	
l2499:	
;main.c: 30: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	31
	
l2501:	
;main.c: 31: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	36
	
l2503:	
;main.c: 36: TRISB = 0x00;
	clrf	(5)	;volatile
	line	37
	
l2505:	
;main.c: 37: PORTB = 0;
	clrf	(6)	;volatile
	line	39
;main.c: 39: PIE1 = 2;
	movlw	low(02h)
	movwf	(14)	;volatile
	line	40
;main.c: 40: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	41
;main.c: 41: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	43
;main.c: 43: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	44
	
l441:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_CheckTouchKey

;; *************** function _CheckTouchKey *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
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
;;		On exit  : 0/0
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
psect	text13,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
global __ptext13
__ptext13:	;psect for function _CheckTouchKey
psect	text13
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 2
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l2931:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text13
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u1951
	goto	u1950
u1951:
	goto	l1044
u1950:
	
l2933:	
	fcall	_GetTouchKeyValue
	
l2935:	
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l2965
u1960:
	
l2937:	
	clrf	(_KeyCounter)
	
l2939:	
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l2965
	
l1044:	
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u1971
	goto	u1970
u1971:
	goto	l2959
u1970:
	
l2941:	
	fcall	_CheckOnceResult
	fcall	_TurnKeyFlags
	
l2943:	
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l2945:	
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u1981
	goto	u1980
u1981:
	goto	l2949
u1980:
	
l2947:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u1991
	goto	u1990
u1991:
	goto	l2957
u1990:
	
l2949:	
	fcall	_KeyStopClear
	
l2951:	
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l2953:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l2955:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l2957:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	goto	l2965
	
l2959:	
	fcall	_CheckKeyOldValue
	fcall	_ClearResSum
	
l2961:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l2963:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l2965:	
	fcall	_CheckValidTime
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text13
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_CheckTouchKey
	__end_of_CheckTouchKey:
	signat	_CheckTouchKey,89
	global	_TurnKeyFlags

;; *************** function _TurnKeyFlags *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
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
psect	text14,local,class=CODE,delta=2,merge=1,group=1
global __ptext14
__ptext14:	;psect for function _TurnKeyFlags
psect	text14
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_TurnKeyFlags
	__size_of_TurnKeyFlags	equ	__end_of_TurnKeyFlags-_TurnKeyFlags
	
_TurnKeyFlags:	
;incstack = 0
	opt	stack 2
; Regs used in _TurnKeyFlags: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2885:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text14
	
l2887:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_KeyData)),w	;volatile
	btfsc	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l2909
u1880:
	
l2889:	
	clrf	(TurnKeyFlags@F416)
	
l2891:	
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u1891
	goto	u1890
u1891:
	goto	l1025
u1890:
	
l2893:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F415),f
	subwf	((TurnKeyFlags@F415)),w
	skipc
	goto	u1901
	goto	u1900
u1901:
	goto	l1030
u1900:
	
l2895:	
	clrf	(TurnKeyFlags@F415)
	
l2897:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	
l2899:	
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u1911
	goto	u1910
u1911:
	goto	l1026
u1910:
	
l2901:	
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l2903:	
	fcall	_KeyClearIn
	goto	l1030
	
l1026:	
	goto	l1030
	
l1025:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l2905:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	
l2907:	
	clrf	(TurnKeyFlags@F415)
	goto	l1030
	
l2909:	
	clrf	(TurnKeyFlags@F415)
	clrf	(_KeyOldData)	;volatile
	
l2911:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F416),f
	subwf	((TurnKeyFlags@F416)),w
	skipc
	goto	u1921
	goto	u1920
u1921:
	goto	l1030
u1920:
	
l2913:	
	clrf	(TurnKeyFlags@F416)
	clrf	(_KeyFlag)	;volatile
	
l2915:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l1030:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text14
	
l1032:	
	return
	opt stack 0
GLOBAL	__end_of_TurnKeyFlags
	__end_of_TurnKeyFlags:
	signat	_TurnKeyFlags,89
	global	_KeyClearIn

;; *************** function _KeyClearIn *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  383             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
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
psect	text15,local,class=CODE,delta=2,merge=1,group=1
global __ptext15
__ptext15:	;psect for function _KeyClearIn
psect	text15
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyClearIn
	__size_of_KeyClearIn	equ	__end_of_KeyClearIn-_KeyClearIn
	
_KeyClearIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyClearIn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2675:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text15
	
l2677:	
	clrf	(KeyClearIn@383)
	
l2683:	
	movf	(KeyClearIn@383),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1581
	goto	u1580
u1581:
	goto	l2687
u1580:
	
l2685:	
	movf	(KeyClearIn@383),w
	fcall	_KeyClearOne
	
l2687:	
	incf	(KeyClearIn@383),f
	
l2689:	
	movf	((KeyClearIn@383)),w
	btfsc	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l2683
u1590:
	
l951:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text15
	
l953:	
	return
	opt stack 0
GLOBAL	__end_of_KeyClearIn
	__end_of_KeyClearIn:
	signat	_KeyClearIn,89
	global	_KeyStopClear

;; *************** function _KeyStopClear *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  385             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
psect	text16,local,class=CODE,delta=2,merge=1,group=1
global __ptext16
__ptext16:	;psect for function _KeyStopClear
psect	text16
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyStopClear
	__size_of_KeyStopClear	equ	__end_of_KeyStopClear-_KeyStopClear
	
_KeyStopClear:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2327:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text16
	
l2329:	
	clrf	(_KeyFlag)	;volatile
	clrf	(KeyStopClear@385)
	
l2335:	
	clrc
	rlf	(KeyStopClear@385),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l2337:	
	movf	(KeyStopClear@385),w
	fcall	_KeyClearOne
	
l2339:	
	incf	(KeyStopClear@385),f
	
l2341:	
	movf	((KeyStopClear@385)),w
	btfsc	status,2
	goto	u991
	goto	u990
u991:
	goto	l2335
u990:
	
l957:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text16
	
l958:	
	return
	opt stack 0
GLOBAL	__end_of_KeyStopClear
	__end_of_KeyStopClear:
	signat	_KeyStopClear,89
	global	_GetTouchKeyValue

;; *************** function _GetTouchKeyValue *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  395             2    3[COMMON] unsigned int 
;;  393             1    6[COMMON] unsigned char 
;;  394             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/200
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
;;		_SystemEnterSleep
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
global __ptext17
__ptext17:	;psect for function _GetTouchKeyValue
psect	text17
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_GetTouchKeyValue
	__size_of_GetTouchKeyValue	equ	__end_of_GetTouchKeyValue-_GetTouchKeyValue
	
_GetTouchKeyValue:	
;incstack = 0
	opt	stack 3
; Regs used in _GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l2109:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text17
	
l2111:	
	clrf	(GetTouchKeyValue@393)
	
l2113:	
	clrf	(GetTouchKeyValue@394)
	incf	(GetTouchKeyValue@394),f
	
l2115:	
	btfss	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	goto	u811
	goto	u810
u811:
	goto	l2119
u810:
	
l2117:	
	btfss	(GetTouchKeyValue@394),(0)&7
	goto	u821
	goto	u820
u821:
	goto	l2151
u820:
	
l2119:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	clrf	(274)^0100h	;volatile
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\Touch_Kscan_Library.h"
	line	95
	
l2121:	
	movlw	low(079h)
	movwf	(275)^0100h	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	
l2123:	
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	
l2125:	
	bcf	(54/8),(54)&7	;volatile
	
l2127:	
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	
l2129:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7	;volatile
	
l2131:	
	movlw	low(02h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(273)^0100h	;volatile
	
l2133:	
	movf	(GetTouchKeyValue@393),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(274)^0100h	;volatile
	
l2135:	
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	
l2137:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(273)^0100h+(0/8),(0)&7	;volatile
	
l2139:	
	movlw	040h
	movwf	(GetTouchKeyValue@395)
	movlw	01Fh
	movwf	((GetTouchKeyValue@395))+1
	goto	l975
	
l2141:	
	movlw	01h
	subwf	(GetTouchKeyValue@395),f
	movlw	0
	skipc
	decf	(GetTouchKeyValue@395+1),f
	subwf	(GetTouchKeyValue@395+1),f
	movf	(((GetTouchKeyValue@395))),w
iorwf	(((GetTouchKeyValue@395+1))),w
	btfss	status,2
	goto	u831
	goto	u830
u831:
	goto	l975
u830:
	
l2143:	
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_KeyCounter)
	
l2145:	
	fcall	_ClearResSum
	goto	l978
	
l975:	
	btfss	(273)^0100h,(7)&7	;volatile
	goto	u841
	goto	u840
u841:
	goto	l2141
u840:
	
l2149:	
	clrc
	rlf	(GetTouchKeyValue@393),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(278)^0100h,w	;volatile
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movf	(279)^0100h,w	;volatile
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	
l2151:	
	clrc
	rlf	(GetTouchKeyValue@394),f
	
l2153:	
	incf	(GetTouchKeyValue@393),f
	btfsc	status,2
	goto	u851
	goto	u850
u851:
	goto	l2115
u850:
	
l980:	
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text17
	
l978:	
	return
	opt stack 0
GLOBAL	__end_of_GetTouchKeyValue
	__end_of_GetTouchKeyValue:
	signat	_GetTouchKeyValue,89
	global	_ClearResSum

;; *************** function _ClearResSum *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  388             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/200
;;		On exit  : 0/0
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
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
global __ptext18
__ptext18:	;psect for function _ClearResSum
psect	text18
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_ClearResSum
	__size_of_ClearResSum	equ	__end_of_ClearResSum-_ClearResSum
	
_ClearResSum:	
;incstack = 0
	opt	stack 3
; Regs used in _ClearResSum: [wreg-fsr0h+status,2+status,0]
	
l2077:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text18
	
l2079:	
	clrf	(ClearResSum@388)
	
l2081:	
	clrc
	rlf	(ClearResSum@388),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l2083:	
	incf	(ClearResSum@388),f
	btfsc	status,2
	goto	u781
	goto	u780
u781:
	goto	l2081
u780:
	
l962:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text18
	
l963:	
	return
	opt stack 0
GLOBAL	__end_of_ClearResSum
	__end_of_ClearResSum:
	signat	_ClearResSum,89
	global	_CheckValidTime

;; *************** function _CheckValidTime *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
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
;;		On exit  : 0/0
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
psect	text19,local,class=CODE,delta=2,merge=1,group=1
global __ptext19
__ptext19:	;psect for function _CheckValidTime
psect	text19
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckValidTime
	__size_of_CheckValidTime	equ	__end_of_CheckValidTime-_CheckValidTime
	
_CheckValidTime:	
;incstack = 0
	opt	stack 5
; Regs used in _CheckValidTime: [wreg+status,2+status,0]
	
l2463:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text19
	
l2465:	
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l2471
u1210:
	
l2467:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckValidTime@F419),f
	skipnz
	incf	(CheckValidTime@F419+1),f
	movlw	03Ah
	subwf	((CheckValidTime@F419+1)),w
	movlw	098h
	skipnz
	subwf	((CheckValidTime@F419)),w
	skipc
	goto	u1221
	goto	u1220
u1221:
	goto	l1037
u1220:
	
l2469:	
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l2471:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckValidTime@F419)
	clrf	(CheckValidTime@F419+1)
	
l1037:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text19
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_CheckValidTime
	__end_of_CheckValidTime:
	signat	_CheckValidTime,89
	global	_CheckOnceResult

;; *************** function _CheckOnceResult *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  404             2    6[BANK0 ] unsigned int 
;;  405             2    3[BANK0 ] unsigned int 
;;  406             2    0[BANK0 ] unsigned int 
;;  401             1    8[BANK0 ] unsigned char 
;;  402             1    5[BANK0 ] unsigned char 
;;  403             1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
psect	text20,local,class=CODE,delta=2,merge=1,group=1
global __ptext20
__ptext20:	;psect for function _CheckOnceResult
psect	text20
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckOnceResult
	__size_of_CheckOnceResult	equ	__end_of_CheckOnceResult-_CheckOnceResult
	
_CheckOnceResult:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2797:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text20
	
l2799:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckOnceResult@401)
	clrf	(_KeyData)	;volatile
	clrf	(_KeyMaxSub)
	
l2801:	
	movf	(CheckOnceResult@401),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@403)
	
l2803:	
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u1725:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank0
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u1720:
	addlw	-1
	skipz
	goto	u1725
	
l2805:	
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@404)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@404+1)
	
l2807:	
	movf	(CheckOnceResult@401),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@402)
	
l2809:	
	movf	(CheckOnceResult@402),w
	movwf	(CheckOnceResult@405)
	clrf	(CheckOnceResult@405+1)
	
l2811:	
	movf	(CheckOnceResult@404),w
	addwf	(CheckOnceResult@405),f
	skipnc
	incf	(CheckOnceResult@405+1),f
	movf	(CheckOnceResult@404+1),w
	addwf	(CheckOnceResult@405+1),f
	
l2813:	
	movf	(CheckOnceResult@401),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1731
	goto	u1730
u1731:
	goto	l2843
u1730:
	
l2815:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(CheckOnceResult@406)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@406+1)
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	1+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@405+1),w
	skipz
	goto	u1745
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@405),w
u1745:
	skipnc
	goto	u1741
	goto	u1740
u1741:
	goto	l2819
u1740:
	
l2817:	
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	(CheckOnceResult@404),w
	subwf	0+(??_CheckOnceResult+0)+0,w
	movwf	(CheckOnceResult@404)
	movf	(CheckOnceResult@404+1),w
	skipc
	incf	(CheckOnceResult@404+1),w
	subwf	1+(??_CheckOnceResult+0)+0,w
	movwf	1+(CheckOnceResult@404)
	goto	l2827
	
l2819:	
	movf	(CheckOnceResult@406+1),w
	subwf	(CheckOnceResult@405+1),w
	skipz
	goto	u1755
	movf	(CheckOnceResult@406),w
	subwf	(CheckOnceResult@405),w
u1755:
	skipnc
	goto	u1751
	goto	u1750
u1751:
	goto	l2865
u1750:
	
l2821:	
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	1+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@405+1),w
	skipz
	goto	u1765
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@405),w
u1765:
	skipnc
	goto	u1761
	goto	u1760
u1761:
	goto	l2865
u1760:
	
l2823:	
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@406),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@406+1),w
	movwf	indf
	
l2825:	
	movf	(CheckOnceResult@404),w
	subwf	(CheckOnceResult@406),w
	movwf	(CheckOnceResult@404)
	movf	(CheckOnceResult@404+1),w
	skipc
	incf	(CheckOnceResult@404+1),w
	subwf	(CheckOnceResult@406+1),w
	movwf	1+(CheckOnceResult@404)
	
l2827:	
	movf	(CheckOnceResult@401),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	
l2829:	
	movf	(0+(CheckOnceResult@404)+01h),w
	btfsc	status,2
	goto	u1771
	goto	u1770
u1771:
	goto	l2833
u1770:
	
l2831:	
	movlw	low(0FFh)
	movwf	(CheckOnceResult@402)
	goto	l992
	
l2833:	
	movf	(CheckOnceResult@404),w
	movwf	(CheckOnceResult@402)
	
l992:	
	movf	(CheckOnceResult@402),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u1781
	goto	u1780
u1781:
	goto	l2839
u1780:
	
l2835:	
	movf	(CheckOnceResult@402),w
	movwf	(_KeyMaxSub)
	
l2837:	
	movf	(CheckOnceResult@403),w
	fcall	_KeyHave
	goto	l2865
	
l2839:	
	incf	(_KeyCounter),f
	goto	l2865
	
l2843:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(CheckOnceResult@401),w
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
	movf	(CheckOnceResult@405+1),w
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u1795
	movf	(CheckOnceResult@405),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1795:
	skipnc
	goto	u1791
	goto	u1790
u1791:
	goto	l2849
u1790:
	goto	l2865
	
l2849:	
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	(CheckOnceResult@402),w
	addwf	0+(??_CheckOnceResult+0)+0,w
	movwf	(??_CheckOnceResult+2)+0
	movf	1+(??_CheckOnceResult+0)+0,w
	skipnc
	incf	1+(??_CheckOnceResult+0)+0,w
	movwf	((??_CheckOnceResult+2)+0)+1
	movf	(CheckOnceResult@404+1),w
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u1805
	movf	(CheckOnceResult@404),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1805:
	skipc
	goto	u1801
	goto	u1800
u1801:
	goto	l2853
u1800:
	
l2851:	
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	(CheckOnceResult@402),w
	addwf	0+(??_CheckOnceResult+0)+0,w
	movwf	(??_CheckOnceResult+2)+0
	movf	1+(??_CheckOnceResult+0)+0,w
	skipnc
	incf	1+(??_CheckOnceResult+0)+0,w
	movwf	((??_CheckOnceResult+2)+0)+1
	movf	(CheckOnceResult@404+1),w
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u1815
	movf	(CheckOnceResult@404),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1815:
	skipnc
	goto	u1811
	goto	u1810
u1811:
	goto	l2857
u1810:
	
l2853:	
	movf	(CheckOnceResult@401),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u1821
	goto	u1820
u1821:
	goto	l998
u1820:
	
l2855:	
	movf	(CheckOnceResult@401),w
	fcall	_KeyClearOne
	goto	l2865
	
l2857:	
	movf	(CheckOnceResult@401),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l2861
	
l998:	
	
l2861:	
	movf	((_KeyData)),w	;volatile
	btfss	status,2
	goto	u1831
	goto	u1830
u1831:
	goto	l2865
u1830:
	
l2863:	
	movf	(CheckOnceResult@403),w
	fcall	_KeyHave
	
l2865:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@401),f
	btfsc	status,2
	goto	u1841
	goto	u1840
u1841:
	goto	l2801
u1840:
	
l1007:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text20
	
l1008:	
	return
	opt stack 0
GLOBAL	__end_of_CheckOnceResult
	__end_of_CheckOnceResult:
	signat	_CheckOnceResult,89
	global	_KeyHave

;; *************** function _KeyHave *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  390             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  390             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
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
;;		_CheckOnceResult
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=1
global __ptext21
__ptext21:	;psect for function _KeyHave
psect	text21
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyHave
	__size_of_KeyHave	equ	__end_of_KeyHave-_KeyHave
	
_KeyHave:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyHave: [wreg+status,2+status,0]
;KeyHave@390 stored from wreg
	movwf	(KeyHave@390)
	
l2101:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text21
	
l2103:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	
l2105:	
	movf	(KeyHave@390),w
	movwf	(_KeyData)	;volatile
	
l967:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text21
	
l968:	
	return
	opt stack 0
GLOBAL	__end_of_KeyHave
	__end_of_KeyHave:
	signat	_KeyHave,4217
	global	_KeyClearOne

;; *************** function _KeyClearOne *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  381             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  381             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=1
global __ptext22
__ptext22:	;psect for function _KeyClearOne
psect	text22
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyClearOne
	__size_of_KeyClearOne	equ	__end_of_KeyClearOne-_KeyClearOne
	
_KeyClearOne:	
;incstack = 0
	opt	stack 3
; Regs used in _KeyClearOne: [wreg-fsr0h+status,2+status,0]
;KeyClearOne@381 stored from wreg
	movwf	(KeyClearOne@381)
	
l2073:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text22
	
l2075:	
	clrc
	rlf	(KeyClearOne@381),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	clrc
	rlf	(KeyClearOne@381),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	clrc
	rlf	(KeyClearOne@381),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	clrc
	rlf	(KeyClearOne@381),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text22
	
l947:	
	return
	opt stack 0
GLOBAL	__end_of_KeyClearOne
	__end_of_KeyClearOne:
	signat	_KeyClearOne,4217
	global	_CheckKeyOldValue

;; *************** function _CheckKeyOldValue *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  412             2    0[BANK0 ] unsigned int 
;;  411             1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       3       0
;;      Temps:          0       0       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_JudgeKeyOldData
;;		_KeyIsIn
;;		_RKeyOldData
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=1
global __ptext23
__ptext23:	;psect for function _CheckKeyOldValue
psect	text23
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckKeyOldValue
	__size_of_CheckKeyOldValue	equ	__end_of_CheckKeyOldValue-_CheckKeyOldValue
	
_CheckKeyOldValue:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2867:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text23
	
l2869:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@411)
	
l2871:	
	movlw	low(04h)
	incf	(CheckKeyOldValue@F410),f
	subwf	((CheckKeyOldValue@F410)),w
	skipnc
	goto	u1851
	goto	u1850
u1851:
	goto	l2875
u1850:
	goto	l1014
	
l2875:	
	clrf	(CheckKeyOldValue@F410)
	
l2877:	
	clrc
	rlf	(CheckKeyOldValue@411),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(CheckKeyOldValue@412)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@412+1)
	
l2879:	
	movf	(CheckKeyOldValue@411),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1861
	goto	u1860
u1861:
	goto	l1016
u1860:
	
l2881:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(CheckKeyOldValue@412+1),w
	movwf	(JudgeKeyOldData@428+1)
	movf	(CheckKeyOldValue@412),w
	movwf	(JudgeKeyOldData@428)
	movf	(CheckKeyOldValue@411),w
	fcall	_JudgeKeyOldData
	
l1016:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(CheckKeyOldValue@412+1),w
	movwf	(RKeyOldData@431+1)
	movf	(CheckKeyOldValue@412),w
	movwf	(RKeyOldData@431)
	movf	(CheckKeyOldValue@411),w
	fcall	_RKeyOldData
	
l2883:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckKeyOldValue@411),f
	btfsc	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l2877
u1870:
	
l1017:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text23
	
l1014:	
	return
	opt stack 0
GLOBAL	__end_of_CheckKeyOldValue
	__end_of_CheckKeyOldValue:
	signat	_CheckKeyOldValue,89
	global	_RKeyOldData

;; *************** function _RKeyOldData *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  430             1    wreg     unsigned char 
;;  431             2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  430             1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         1       0       0
;;      Temps:          2       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CheckKeyOldValue
;;		_SystemEnterSleep
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=1
global __ptext24
__ptext24:	;psect for function _RKeyOldData
psect	text24
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_RKeyOldData
	__size_of_RKeyOldData	equ	__end_of_RKeyOldData-_RKeyOldData
	
_RKeyOldData:	
;incstack = 0
	opt	stack 4
; Regs used in _RKeyOldData: [wreg-fsr0h+status,2+status,0]
;RKeyOldData@430 stored from wreg
	movwf	(RKeyOldData@430)
	
l2719:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text24
	
l2721:	
	clrc
	rlf	(RKeyOldData@430),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_RKeyOldData+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_RKeyOldData+0)+0+1
	clrc
	rlf	(RKeyOldData@430),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_RKeyOldData+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_RKeyOldData+0)+0,w
	movwf	indf
	clrc
	rlf	(RKeyOldData@430),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_RKeyOldData+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_RKeyOldData+0)+0+1
	clrc
	rlf	(RKeyOldData@430),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_RKeyOldData+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_RKeyOldData+0)+0,w
	movwf	indf
	clrc
	rlf	(RKeyOldData@430),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(RKeyOldData@431),w
	movwf	indf
	incf	fsr0,f
	movf	(RKeyOldData@431+1),w
	movwf	indf
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text24
	
l1083:	
	return
	opt stack 0
GLOBAL	__end_of_RKeyOldData
	__end_of_RKeyOldData:
	signat	_RKeyOldData,8313
	global	_KeyIsIn

;; *************** function _KeyIsIn *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  377             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  377             1    2[COMMON] unsigned char 
;;  378             1    3[COMMON] unsigned char 
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
psect	text25,local,class=CODE,delta=2,merge=1,group=1
global __ptext25
__ptext25:	;psect for function _KeyIsIn
psect	text25
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyIsIn
	__size_of_KeyIsIn	equ	__end_of_KeyIsIn-_KeyIsIn
	
_KeyIsIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyIsIn: [wreg-fsr0h+status,2+status,0+pclath]
;KeyIsIn@377 stored from wreg
	movwf	(KeyIsIn@377)
	
l2663:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text25
	
l2665:	
	movf	(KeyIsIn@377),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@378)
	
l2667:	
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@378),f
	
l2669:	
	movf	(KeyIsIn@378),w
	
l944:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_JudgeKeyOldData

;; *************** function _JudgeKeyOldData *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  427             1    wreg     unsigned char 
;;  428             2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  427             1    4[COMMON] unsigned char 
;;  429             2    5[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CheckKeyOldValue
;;		_SystemEnterSleep
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=1
global __ptext26
__ptext26:	;psect for function _JudgeKeyOldData
psect	text26
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_JudgeKeyOldData
	__size_of_JudgeKeyOldData	equ	__end_of_JudgeKeyOldData-_JudgeKeyOldData
	
_JudgeKeyOldData:	
;incstack = 0
	opt	stack 4
; Regs used in _JudgeKeyOldData: [wreg-fsr0h+status,2+status,0]
;JudgeKeyOldData@427 stored from wreg
	movwf	(JudgeKeyOldData@427)
	
l2691:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text26
	
l2693:	
	clrc
	rlf	(JudgeKeyOldData@427),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(JudgeKeyOldData@429)
	incf	fsr0,f
	movf	indf,w
	movwf	(JudgeKeyOldData@429+1)
	
l2695:	
	movf	(JudgeKeyOldData@428),w
	subwf	(JudgeKeyOldData@429),f
	movf	(JudgeKeyOldData@428+1),w
	skipc
	decf	(JudgeKeyOldData@429+1),f
	subwf	(JudgeKeyOldData@429+1),f
	
l2697:	
	movlw	0
	subwf	(JudgeKeyOldData@429+1),w
	movlw	03h
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1601
	goto	u1600
u1601:
	goto	l2701
u1600:
	
l2699:	
	movlw	0FFh
	subwf	(JudgeKeyOldData@429+1),w
	movlw	0FEh
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1611
	goto	u1610
u1611:
	goto	l1071
u1610:
	
l2701:	
	clrc
	rlf	(JudgeKeyOldData@427),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(JudgeKeyOldData@429)
	incf	fsr0,f
	movf	indf,w
	movwf	(JudgeKeyOldData@429+1)
	
l2703:	
	movf	(JudgeKeyOldData@428),w
	subwf	(JudgeKeyOldData@429),f
	movf	(JudgeKeyOldData@428+1),w
	skipc
	decf	(JudgeKeyOldData@429+1),f
	subwf	(JudgeKeyOldData@429+1),f
	
l2705:	
	movlw	0
	subwf	(JudgeKeyOldData@429+1),w
	movlw	03h
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1621
	goto	u1620
u1621:
	goto	l2709
u1620:
	
l2707:	
	movlw	0FFh
	subwf	(JudgeKeyOldData@429+1),w
	movlw	0FEh
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1631
	goto	u1630
u1631:
	goto	l1071
u1630:
	
l2709:	
	clrc
	rlf	(JudgeKeyOldData@427),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(JudgeKeyOldData@429)
	incf	fsr0,f
	movf	indf,w
	movwf	(JudgeKeyOldData@429+1)
	
l2711:	
	movf	(JudgeKeyOldData@428),w
	subwf	(JudgeKeyOldData@429),f
	movf	(JudgeKeyOldData@428+1),w
	skipc
	decf	(JudgeKeyOldData@429+1),f
	subwf	(JudgeKeyOldData@429+1),f
	
l2713:	
	movlw	0
	subwf	(JudgeKeyOldData@429+1),w
	movlw	03h
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1641
	goto	u1640
u1641:
	goto	l2717
u1640:
	
l2715:	
	movlw	0FFh
	subwf	(JudgeKeyOldData@429+1),w
	movlw	0FEh
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l1071
u1650:
	
l2717:	
	clrc
	rlf	(JudgeKeyOldData@427),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(JudgeKeyOldData@428),w
	movwf	indf
	incf	fsr0,f
	movf	(JudgeKeyOldData@428+1),w
	movwf	indf
	
l1071:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text26
	
l1080:	
	return
	opt stack 0
GLOBAL	__end_of_JudgeKeyOldData
	__end_of_JudgeKeyOldData:
	signat	_JudgeKeyOldData,8313
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 223 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	223
global __ptext27
__ptext27:	;psect for function _Isr_Timer
psect	text27
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	223
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
psect	text27
	line	225
	
i1l2629:	
;main.c: 225: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u153_21
	goto	u153_20
u153_21:
	goto	i1l2639
u153_20:
	line	227
	
i1l2631:	
;main.c: 226: {
;main.c: 227: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	228
	
i1l2633:	
;main.c: 228: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u154_21
	goto	u154_20
u154_21:
	goto	i1l494
u154_20:
	line	230
	
i1l2635:	
;main.c: 229: {
;main.c: 230: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	231
	
i1l2637:	
;main.c: 231: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	i1l494
	line	236
	
i1l2639:	
;main.c: 234: else
;main.c: 235: {
;main.c: 236: PIR1 = 0;
	clrf	(13)	;volatile
	line	239
	
i1l494:	
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
