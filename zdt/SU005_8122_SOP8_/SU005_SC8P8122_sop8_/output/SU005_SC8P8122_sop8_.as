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
	FNCALL	_main,_checkLvd
	FNCALL	_main,_keyCtr
	FNCALL	_main,_pwm13Stop
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,_pwm13Init
	FNCALL	_workCtr,_pwm13Stop
	FNCALL	_workCtr,_pwm1Init
	FNCALL	_workCtr,_pwm1Stop
	FNCALL	_workCtr,_pwm3Init
	FNCALL	_workCtr,_pwm3Stop
	FNCALL	_WorkSleep,_Refurbish_Sfr
	FNCALL	_WorkSleep,_SystemEnterSleep
	FNCALL	_WorkSleep,_checkLvd
	FNCALL	_SystemEnterSleep,_ClearResSum
	FNCALL	_SystemEnterSleep,_GetTouchKeyValue
	FNCALL	_SystemEnterSleep,_JudgeKeyOldData
	FNCALL	_SystemEnterSleep,_RKeyOldData
	FNCALL	_KeyServer,___lwmod
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
	global	_led3Duty
	global	_led2Duty
	global	_led1Duty
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	13

;initializer for _ledDuty
	retlw	032h
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	line	16

;initializer for _led3Duty
	retlw	032h
	line	15

;initializer for _led2Duty
	retlw	032h
	line	14

;initializer for _led1Duty
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
	global	_count300s
	global	_count1s
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
	global	_doubleKeyTime
	global	_lvdTime
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
	global	_CMPCON1
_CMPCON1	set	16
	global	_CMPCON0
_CMPCON0	set	15
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
	global	_RB2
_RB2	set	50
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
	file	"SU005_SC8P8122_sop8_.as"
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

_count300s:
       ds      2

_count1s:
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

_doubleKeyTime:
       ds      1

_lvdTime:
       ds      1

_modeStep:
       ds      1

_MainTime:
       ds      1

_KeyUpShake:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	16
_led3Duty:
       ds      1

psect	dataBANK0
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	15
_led2Duty:
       ds      1

psect	dataBANK0
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	14
_led1Duty:
       ds      1

	file	"SU005_SC8P8122_sop8_.as"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
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
	movlw	low((__pbssBANK0)+021h)
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
?_Init_System:	; 1 bytes @ 0x0
?_Refurbish_Sfr:	; 1 bytes @ 0x0
?_KeyServer:	; 1 bytes @ 0x0
?_pwm3Init:	; 1 bytes @ 0x0
?_pwm3Stop:	; 1 bytes @ 0x0
?_pwm1Init:	; 1 bytes @ 0x0
?_pwm1Stop:	; 1 bytes @ 0x0
?_pwm13Init:	; 1 bytes @ 0x0
?_pwm13Stop:	; 1 bytes @ 0x0
?_checkLvd:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_WorkSleep:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
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
?_JudgeKeyOldData:	; 1 bytes @ 0x2
?_RKeyOldData:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_Refurbish_Sfr:	; 1 bytes @ 0x2
??_pwm3Init:	; 1 bytes @ 0x2
??_pwm3Stop:	; 1 bytes @ 0x2
??_pwm1Init:	; 1 bytes @ 0x2
??_pwm1Stop:	; 1 bytes @ 0x2
??_pwm13Init:	; 1 bytes @ 0x2
??_pwm13Stop:	; 1 bytes @ 0x2
??_checkLvd:	; 1 bytes @ 0x2
??_keyCtr:	; 1 bytes @ 0x2
??_workCtr:	; 1 bytes @ 0x2
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
;!    Data        4
;!    BSS         35
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      12
;!    BANK0            80      9      45
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
;!                           _checkLvd
;!                             _keyCtr
;!                          _pwm13Stop
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              0     0      0       0
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
;! (2) _pwm13Stop                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwm13Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _WorkSleep                                            0     0      0    1417
;!                      _Refurbish_Sfr
;!                   _SystemEnterSleep
;!                           _checkLvd
;! ---------------------------------------------------------------------------------
;! (1) _checkLvd                                             0     0      0       0
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
;!   _Refurbish_Sfr
;!   _WorkSleep
;!     _Refurbish_Sfr
;!     _SystemEnterSleep
;!       _ClearResSum
;!       _GetTouchKeyValue
;!         _ClearResSum
;!       _JudgeKeyOldData
;!       _RKeyOldData
;!     _checkLvd
;!   _checkLvd
;!   _keyCtr
;!   _pwm13Stop
;!   _workCtr
;!     _pwm13Init
;!     _pwm13Stop
;!     _pwm1Init
;!     _pwm1Stop
;!     _pwm3Init
;!     _pwm3Stop
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
;!BANK0               50      9      2D       5       56.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      8       C       1       85.7%
;!BITCOMMON            E      0       1       0        7.1%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      39       8        0.0%
;!ABS                  0      0      39       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 373 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;;		_checkLvd
;;		_keyCtr
;;		_pwm13Stop
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	373
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	373
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	375
	
l3120:	
;main.c: 375: Init_System();
	fcall	_Init_System
	line	376
	
l3122:	
;main.c: 376: ledDuty = 50;
	movlw	low(032h)
	movwf	(_ledDuty)
	line	377
	
l3124:	
;main.c: 377: checkLvd();
	fcall	_checkLvd
	line	380
	
l3126:	
;main.c: 379: {
;main.c: 380: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u2281
	goto	u2280
u2281:
	goto	l3126
u2280:
	line	382
	
l3128:	
;main.c: 381: {
;main.c: 382: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	383
# 383 "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
clrwdt ;# 
psect	maintext
	line	385
	
l3130:	
;main.c: 385: CheckTouchKey();
	fcall	_CheckTouchKey
	line	387
	
l3132:	
;main.c: 387: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	388
	
l3134:	
;main.c: 388: KeyServer();
	fcall	_KeyServer
	line	389
	
l3136:	
;main.c: 389: keyCtr();
	fcall	_keyCtr
	line	390
	
l3138:	
;main.c: 390: workCtr();
	fcall	_workCtr
	line	391
	
l3140:	
;main.c: 391: if(workStep == 0 && keyCount == 0 && count300s == 0 && doubleKeyTime == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l535
u2290:
	
l3142:	
	movf	((_keyCount)),w
iorwf	((_keyCount+1)),w
	btfss	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l535
u2300:
	
l3144:	
	movf	((_count300s)),w
iorwf	((_count300s+1)),w
	btfss	status,2
	goto	u2311
	goto	u2310
u2311:
	goto	l535
u2310:
	
l3146:	
	movf	((_doubleKeyTime)),w
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l535
u2320:
	line	394
	
l3148:	
;main.c: 392: {
;main.c: 394: pwm13Stop();
	fcall	_pwm13Stop
	line	395
	
l3150:	
;main.c: 395: WorkSleep();
	fcall	_WorkSleep
	line	396
;main.c: 396: }
	goto	l3126
	line	397
	
l535:	
	line	399
;main.c: 397: else
;main.c: 398: {
;main.c: 399: if(CMPCON0 & 0x02)
	btfss	(15),(1)&7	;volatile
	goto	u2331
	goto	u2330
u2331:
	goto	l3154
u2330:
	line	401
	
l3152:	
;main.c: 400: {
;main.c: 401: lvdTime = 0;
	clrf	(_lvdTime)
	line	402
;main.c: 402: }
	goto	l3126
	line	405
	
l3154:	
;main.c: 403: else
;main.c: 404: {
;main.c: 405: if(++lvdTime > 200)
	movlw	low(0C9h)
	incf	(_lvdTime),f
	subwf	((_lvdTime)),w
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l534
u2340:
	line	407
	
l3156:	
;main.c: 406: {
;main.c: 407: lvdTime = 0;
	clrf	(_lvdTime)
	line	408
;main.c: 408: workStep = 0;
	clrf	(_workStep)
	goto	l3126
	line	413
	
l534:	
	goto	l3126
	global	start
	ljmp	start
	opt stack 0
	line	415
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 327 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	327
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	327
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	329
	
l2694:	
;main.c: 329: if(++count1s >= 500)
	incf	(_count1s),f
	skipnz
	incf	(_count1s+1),f
	movlw	01h
	subwf	((_count1s+1)),w
	movlw	0F4h
	skipnz
	subwf	((_count1s)),w
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l2702
u1650:
	line	331
	
l2696:	
;main.c: 330: {
;main.c: 331: count1s = 0;
	clrf	(_count1s)
	clrf	(_count1s+1)
	line	332
	
l2698:	
;main.c: 332: if(count300s > 0)
	movf	((_count300s)),w
iorwf	((_count300s+1)),w
	btfsc	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l2702
u1660:
	line	334
	
l2700:	
;main.c: 333: {
;main.c: 334: count300s--;
	movlw	01h
	subwf	(_count300s),f
	movlw	0
	skipc
	decf	(_count300s+1),f
	subwf	(_count300s+1),f
	line	337
	
l2702:	
;main.c: 335: }
;main.c: 336: }
;main.c: 337: if(count300s > 0)
	movf	((_count300s)),w
iorwf	((_count300s+1)),w
	btfsc	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l519
u1670:
	line	339
	
l2704:	
;main.c: 338: {
;main.c: 339: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	340
;main.c: 340: }
	goto	l2706
	line	341
	
l519:	
	line	343
;main.c: 341: else
;main.c: 342: {
;main.c: 343: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	346
	
l2706:	
;main.c: 344: }
;main.c: 346: if(workStep == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l2710
u1680:
	line	348
	
l2708:	
;main.c: 347: {
;main.c: 348: pwm13Stop();
	fcall	_pwm13Stop
	line	349
;main.c: 349: }
	goto	l528
	line	350
	
l2710:	
;main.c: 350: else if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l2716
u1690:
	line	352
	
l2712:	
;main.c: 351: {
;main.c: 352: pwm1Init();
	fcall	_pwm1Init
	line	353
	
l2714:	
;main.c: 353: pwm3Stop();
	fcall	_pwm3Stop
	line	354
;main.c: 354: led1Duty = ledDuty;
	movf	(_ledDuty),w
	movwf	(_led1Duty)
	line	355
;main.c: 355: }
	goto	l528
	line	356
	
l2716:	
;main.c: 356: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l2722
u1700:
	line	358
	
l2718:	
;main.c: 357: {
;main.c: 358: pwm3Init();
	fcall	_pwm3Init
	line	359
	
l2720:	
;main.c: 359: pwm1Stop();
	fcall	_pwm1Stop
	line	360
;main.c: 360: led2Duty = ledDuty;
	movf	(_ledDuty),w
	movwf	(_led2Duty)
	line	361
;main.c: 361: }
	goto	l528
	line	362
	
l2722:	
;main.c: 362: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l524
u1710:
	line	364
	
l2724:	
;main.c: 363: {
;main.c: 364: pwm13Init();
	fcall	_pwm13Init
	line	365
	
l2726:	
;main.c: 365: led3Duty = ledDuty;
	movf	(_ledDuty),w
	movwf	(_led3Duty)
	goto	l528
	line	368
	
l524:	
	
l528:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwm3Stop

;; *************** function _pwm3Stop *****************
;; Defined at:
;;		line 163 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	163
global __ptext2
__ptext2:	;psect for function _pwm3Stop
psect	text2
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	163
	global	__size_of_pwm3Stop
	__size_of_pwm3Stop	equ	__end_of_pwm3Stop-_pwm3Stop
	
_pwm3Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm3Stop: []
	line	165
	
l2298:	
;main.c: 165: PWMCON0 &= 0XF7;
	bcf	(21)+(3/8),(3)&7	;volatile
	line	166
;main.c: 166: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	169
	
l473:	
	return
	opt stack 0
GLOBAL	__end_of_pwm3Stop
	__end_of_pwm3Stop:
	signat	_pwm3Stop,89
	global	_pwm3Init

;; *************** function _pwm3Init *****************
;; Defined at:
;;		line 145 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	145
global __ptext3
__ptext3:	;psect for function _pwm3Init
psect	text3
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	145
	global	__size_of_pwm3Init
	__size_of_pwm3Init	equ	__end_of_pwm3Init-_pwm3Init
	
_pwm3Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm3Init: [wreg+status,2]
	line	148
	
l2284:	
;main.c: 148: TRISB |= 0x10;
	bsf	(5)+(4/8),(4)&7	;volatile
	line	149
	
l2286:	
;main.c: 149: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	150
;main.c: 150: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	152
	
l2288:	
;main.c: 152: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	153
	
l2290:	
;main.c: 153: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	154
;main.c: 154: PWMD3L = ledDuty;
	movf	(_ledDuty),w
	movwf	(156)^080h	;volatile
	line	155
	
l2292:	
;main.c: 155: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	157
	
l2294:	
;main.c: 157: PWMCON0 = 0X68;
	movlw	low(068h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	158
;main.c: 158: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	159
	
l2296:	
;main.c: 159: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	161
	
l470:	
	return
	opt stack 0
GLOBAL	__end_of_pwm3Init
	__end_of_pwm3Init:
	signat	_pwm3Init,89
	global	_pwm1Stop

;; *************** function _pwm1Stop *****************
;; Defined at:
;;		line 189 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	189
global __ptext4
__ptext4:	;psect for function _pwm1Stop
psect	text4
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	189
	global	__size_of_pwm1Stop
	__size_of_pwm1Stop	equ	__end_of_pwm1Stop-_pwm1Stop
	
_pwm1Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm1Stop: []
	line	191
	
l2314:	
;main.c: 191: PWMCON0 &= 0XFD;
	bcf	(21)+(1/8),(1)&7	;volatile
	line	192
;main.c: 192: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	194
	
l479:	
	return
	opt stack 0
GLOBAL	__end_of_pwm1Stop
	__end_of_pwm1Stop:
	signat	_pwm1Stop,89
	global	_pwm1Init

;; *************** function _pwm1Init *****************
;; Defined at:
;;		line 171 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	171
global __ptext5
__ptext5:	;psect for function _pwm1Init
psect	text5
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	171
	global	__size_of_pwm1Init
	__size_of_pwm1Init	equ	__end_of_pwm1Init-_pwm1Init
	
_pwm1Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm1Init: [wreg+status,2]
	line	173
	
l2300:	
;main.c: 173: TRISB |= 0x02;
	bsf	(5)+(1/8),(1)&7	;volatile
	line	174
	
l2302:	
;main.c: 174: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	175
;main.c: 175: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	176
	
l2304:	
;main.c: 176: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	179
	
l2306:	
;main.c: 179: PWMD01H = 0;
	clrf	(30)	;volatile
	line	180
;main.c: 180: PWMD1L = ledDuty;
	movf	(_ledDuty),w
	movwf	(26)	;volatile
	line	181
	
l2308:	
;main.c: 181: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	183
	
l2310:	
;main.c: 183: PWMCON0 = 0X62;
	movlw	low(062h)
	movwf	(21)	;volatile
	line	184
;main.c: 184: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	185
	
l2312:	
;main.c: 185: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	187
	
l476:	
	return
	opt stack 0
GLOBAL	__end_of_pwm1Init
	__end_of_pwm1Init:
	signat	_pwm1Init,89
	global	_pwm13Stop

;; *************** function _pwm13Stop *****************
;; Defined at:
;;		line 218 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;;		_workCtr
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	218
global __ptext6
__ptext6:	;psect for function _pwm13Stop
psect	text6
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	218
	global	__size_of_pwm13Stop
	__size_of_pwm13Stop	equ	__end_of_pwm13Stop-_pwm13Stop
	
_pwm13Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm13Stop: [wreg+status,2+status,0]
	line	220
	
l2342:	
;main.c: 220: PWMCON0 &= 0XF5;
	movlw	low(0F5h)
	andwf	(21),f	;volatile
	line	221
;main.c: 221: PORTB &= 0xED;
	movlw	low(0EDh)
	andwf	(6),f	;volatile
	line	223
	
l485:	
	return
	opt stack 0
GLOBAL	__end_of_pwm13Stop
	__end_of_pwm13Stop:
	signat	_pwm13Stop,89
	global	_pwm13Init

;; *************** function _pwm13Init *****************
;; Defined at:
;;		line 196 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	196
global __ptext7
__ptext7:	;psect for function _pwm13Init
psect	text7
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	196
	global	__size_of_pwm13Init
	__size_of_pwm13Init	equ	__end_of_pwm13Init-_pwm13Init
	
_pwm13Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm13Init: [wreg+status,2+status,0]
	line	198
	
l2316:	
;main.c: 198: TRISB |= 0x05;
	movlw	low(05h)
	iorwf	(5),f	;volatile
	line	199
	
l2318:	
;main.c: 199: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	200
	
l2320:	
;main.c: 200: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	201
	
l2322:	
;main.c: 201: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	204
	
l2324:	
;main.c: 204: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	205
	
l2326:	
;main.c: 205: PWMD3L = ledDuty;
	movf	(_ledDuty),w
	movwf	(156)^080h	;volatile
	line	206
	
l2328:	
;main.c: 206: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	208
	
l2330:	
;main.c: 208: PWMD01H = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(30)	;volatile
	line	209
	
l2332:	
;main.c: 209: PWMD1L = ledDuty;
	movf	(_ledDuty),w
	movwf	(26)	;volatile
	line	210
	
l2334:	
;main.c: 210: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	212
	
l2336:	
;main.c: 212: PWMCON0 = 0X6A;
	movlw	low(06Ah)
	movwf	(21)	;volatile
	line	213
	
l2338:	
;main.c: 213: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	214
	
l2340:	
;main.c: 214: TRISB &= 0xFA;
	movlw	low(0FAh)
	andwf	(5),f	;volatile
	line	216
	
l482:	
	return
	opt stack 0
GLOBAL	__end_of_pwm13Init
	__end_of_pwm13Init:
	signat	_pwm13Init,89
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 301 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	301
global __ptext8
__ptext8:	;psect for function _keyCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	301
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 6
; Regs used in _keyCtr: [wreg+status,2+status,0]
	line	303
	
l2674:	
;main.c: 303: if(doubleKeyTime > 0)
	movf	((_doubleKeyTime)),w
	btfsc	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l514
u1590:
	line	305
	
l2676:	
;main.c: 304: {
;main.c: 305: if(--doubleKeyTime == 0)
	decfsz	(_doubleKeyTime),f
	goto	u1601
	goto	u1600
u1601:
	goto	l514
u1600:
	line	307
	
l2678:	
;main.c: 306: {
;main.c: 307: if(++workStep > 3)
	movlw	low(04h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u1611
	goto	u1610
u1611:
	goto	l2682
u1610:
	line	309
	
l2680:	
;main.c: 308: {
;main.c: 309: workStep = 0;
	clrf	(_workStep)
	line	311
	
l2682:	
;main.c: 310: }
;main.c: 311: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l2686
u1620:
	line	313
	
l2684:	
;main.c: 312: {
;main.c: 313: ledDuty = led1Duty;
	movf	(_led1Duty),w
	movwf	(_ledDuty)
	line	314
;main.c: 314: }
	goto	l514
	line	315
	
l2686:	
;main.c: 315: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l2690
u1630:
	line	317
	
l2688:	
;main.c: 316: {
;main.c: 317: ledDuty = led2Duty;
	movf	(_led2Duty),w
	movwf	(_ledDuty)
	line	318
;main.c: 318: }
	goto	l514
	line	319
	
l2690:	
;main.c: 319: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l507
u1640:
	line	321
	
l2692:	
;main.c: 320: {
;main.c: 321: ledDuty = led3Duty;
	movf	(_led3Duty),w
	movwf	(_ledDuty)
	goto	l514
	line	323
	
l507:	
	line	325
	
l514:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_WorkSleep

;; *************** function _WorkSleep *****************
;; Defined at:
;;		line 254 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;;		_checkLvd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	254
global __ptext9
__ptext9:	;psect for function _WorkSleep
psect	text9
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	254
	global	__size_of_WorkSleep
	__size_of_WorkSleep	equ	__end_of_WorkSleep-_WorkSleep
	
_WorkSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _WorkSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	261
	
l3068:	
;main.c: 257: static unsigned char time;
;main.c: 261: if(++time >= 125)
	movlw	low(07Dh)
	incf	(WorkSleep@time),f
	subwf	((WorkSleep@time)),w
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l503
u2210:
	line	263
	
l3070:	
;main.c: 262: {
;main.c: 263: time = 0;
	clrf	(WorkSleep@time)
	line	264
;main.c: 264: INTCON = 0;
	clrf	(11)	;volatile
	line	265
;main.c: 265: PIE1 = 0;
	clrf	(14)	;volatile
	line	266
;main.c: 266: PIE2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(272)^0100h	;volatile
	line	267
;main.c: 267: PIR1 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(13)	;volatile
	line	268
;main.c: 268: PIR2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(271)^0100h	;volatile
	line	269
;main.c: 269: T2CON = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	273
;main.c: 273: TRISB = 0x00;
	clrf	(5)	;volatile
	line	274
;main.c: 274: PORTB = 0;
	clrf	(6)	;volatile
	line	275
;main.c: 275: CMPCON1 = 0x00;
	clrf	(16)	;volatile
	line	276
;main.c: 276: CMPCON0 = 0x00;
	clrf	(15)	;volatile
	line	288
	
l3072:	
;main.c: 288: SystemEnterSleep();
	fcall	_SystemEnterSleep
	line	289
	
l3074:	
;main.c: 289: if(RBIF)
	btfss	(88/8),(88)&7	;volatile
	goto	u2221
	goto	u2220
u2221:
	goto	l3080
u2220:
	line	291
	
l3076:	
;main.c: 290: {
;main.c: 291: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	292
	
l3078:	
;main.c: 292: PORTB;
	movf	(6),w	;volatile
	line	295
	
l3080:	
;main.c: 293: }
;main.c: 295: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	296
	
l3082:	
;main.c: 296: checkLvd();
	fcall	_checkLvd
	line	299
	
l503:	
	return
	opt stack 0
GLOBAL	__end_of_WorkSleep
	__end_of_WorkSleep:
	signat	_WorkSleep,89
	global	_checkLvd

;; *************** function _checkLvd *****************
;; Defined at:
;;		line 225 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	225
global __ptext10
__ptext10:	;psect for function _checkLvd
psect	text10
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	225
	global	__size_of_checkLvd
	__size_of_checkLvd	equ	__end_of_checkLvd-_checkLvd
	
_checkLvd:	
;incstack = 0
	opt	stack 6
; Regs used in _checkLvd: [wreg]
	line	227
	
l2344:	
;main.c: 227: CMPCON1 = 0x28;
	movlw	low(028h)
	movwf	(16)	;volatile
	line	228
;main.c: 228: CMPCON0 = 0xA8;
	movlw	low(0A8h)
	movwf	(15)	;volatile
	line	230
	
l488:	
	return
	opt stack 0
GLOBAL	__end_of_checkLvd
	__end_of_checkLvd:
	signat	_checkLvd,89
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
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
global __ptext11
__ptext11:	;psect for function _SystemEnterSleep
psect	text11
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_SystemEnterSleep
	__size_of_SystemEnterSleep	equ	__end_of_SystemEnterSleep-_SystemEnterSleep
	
_SystemEnterSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _SystemEnterSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l2874:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text11
	
l1087:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
clrwdt ;# 
psect	text11
	
l2876:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	
l2878:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(1),f	;volatile
	
l2880:	
	bsf	(1)+(3/8),(3)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
clrwdt ;# 
psect	text11
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\TouchKeyConst.h"
	line	5
	
l2882:	
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
clrwdt ;# 
psect	text11
	
l2884:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	
l2886:	
	clrf	(275)^0100h	;volatile
	
l2888:	
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	
l2890:	
	bcf	(54/8),(54)&7	;volatile
	
l2892:	
	movlw	low(072h)
	movwf	(20)	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
sleep ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
clrwdt ;# 
psect	text11
	
l2894:	
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\Touch_Kscan_Library.h"
	line	95
	
l2896:	
	movlw	low(079h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(275)^0100h	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	
l2898:	
	fcall	_ClearResSum
	
l2900:	
	bsf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	
l2902:	
	fcall	_GetTouchKeyValue
	
l2904:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SystemEnterSleep@423)
	
l2906:	
	clrf	(SystemEnterSleep@424)
	incf	(SystemEnterSleep@424),f
	clrf	(SystemEnterSleep@424+1)
	
l2908:	
	btfsc	(88/8),(88)&7	;volatile
	goto	u1941
	goto	u1940
u1941:
	goto	l2912
u1940:
	
l2910:	
	btfss	(89/8),(89)&7	;volatile
	goto	u1951
	goto	u1950
u1951:
	goto	l1093
u1950:
	
l2912:	
	fcall	_ClearResSum
	
l2914:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	
l2916:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l2918:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	l1091
	
l1093:	
	btfss	(SystemEnterSleep@424),(0)&7
	goto	u1961
	goto	u1960
u1961:
	goto	l2944
u1960:
	
l2924:	
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
	
l2926:	
	movf	((SystemEnterSleep@425)),w
iorwf	((SystemEnterSleep@425+1)),w
	btfsc	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l2944
u1970:
	
l2928:	
	movf	(SystemEnterSleep@423),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addwf	(SystemEnterSleep@426),f
	skipnc
	incf	(SystemEnterSleep@426+1),f
	
l2930:	
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
	goto	u1985
	movf	(SystemEnterSleep@426),w
	subwf	0+(??_SystemEnterSleep+0)+0,w
u1985:
	skipc
	goto	u1981
	goto	u1980
u1981:
	goto	l2942
u1980:
	goto	l2912
	
l2942:	
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
	
l2944:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(SystemEnterSleep@424),f
	rlf	(SystemEnterSleep@424+1),f
	
l2946:	
	incf	(SystemEnterSleep@423),f
	btfsc	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l1093
u1990:
	goto	l1087
	
l1091:	
	return
	opt stack 0
GLOBAL	__end_of_SystemEnterSleep
	__end_of_SystemEnterSleep:
	signat	_SystemEnterSleep,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 62 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	62
global __ptext12
__ptext12:	;psect for function _Refurbish_Sfr
psect	text12
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	62
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 5
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	65
	
l2278:	
;main.c: 65: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	66
;main.c: 66: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	67
;main.c: 67: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	68
	
l2280:	
;main.c: 68: if (4 != T2CON)
		movlw	4
	xorwf	((19)),w	;volatile
	btfsc	status,2
	goto	u1061
	goto	u1060
u1061:
	goto	l447
u1060:
	line	69
	
l2282:	
;main.c: 69: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	70
	
l447:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 76 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	76
global __ptext13
__ptext13:	;psect for function _KeyServer
psect	text13
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	76
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 5
; Regs used in _KeyServer: [wreg+status,2+status,0+pclath+cstack]
	line	79
	
l2600:	
;main.c: 78: static unsigned char KeyOldFlag = 0;
;main.c: 79: if (KeyFlag[0])
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u1411
	goto	u1410
u1411:
	goto	l2634
u1410:
	line	81
	
l2602:	
;main.c: 80: {
;main.c: 81: if ((KeyFlag[0] & 0x1))
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u1421
	goto	u1420
u1421:
	goto	l467
u1420:
	line	83
	
l2604:	
;main.c: 82: {
;main.c: 83: keyCount++;
	incf	(_keyCount),f
	skipnz
	incf	(_keyCount+1),f
	line	85
	
l2606:	
;main.c: 85: if(keyCount >= 250 && keyCount % 10 == 0 && workStep > 0)
	movlw	0
	subwf	(_keyCount+1),w
	movlw	0FAh
	skipnz
	subwf	(_keyCount),w
	skipc
	goto	u1431
	goto	u1430
u1431:
	goto	l2632
u1430:
	
l2608:	
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
	goto	u1441
	goto	u1440
u1441:
	goto	l2632
u1440:
	
l2610:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l2632
u1450:
	line	87
	
l2612:	
;main.c: 86: {
;main.c: 87: if(modeStep == 0 && ledDuty < 90)
	movf	((_modeStep)),w
	btfss	status,2
	goto	u1461
	goto	u1460
u1461:
	goto	l2618
u1460:
	
l2614:	
	movlw	low(05Ah)
	subwf	(_ledDuty),w
	skipnc
	goto	u1471
	goto	u1470
u1471:
	goto	l2618
u1470:
	line	89
	
l2616:	
;main.c: 88: {
;main.c: 89: ledDuty++;
	incf	(_ledDuty),f
	line	91
	
l2618:	
;main.c: 90: }
;main.c: 91: if(modeStep == 1 && ledDuty > 10)
		decf	((_modeStep)),w
	btfss	status,2
	goto	u1481
	goto	u1480
u1481:
	goto	l2624
u1480:
	
l2620:	
	movlw	low(0Bh)
	subwf	(_ledDuty),w
	skipc
	goto	u1491
	goto	u1490
u1491:
	goto	l2624
u1490:
	line	93
	
l2622:	
;main.c: 92: {
;main.c: 93: ledDuty--;
	decf	(_ledDuty),f
	line	95
	
l2624:	
;main.c: 94: }
;main.c: 95: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	96
	
l2626:	
;main.c: 96: PWMD3L = ledDuty;
	movf	(_ledDuty),w
	movwf	(156)^080h	;volatile
	line	97
	
l2628:	
;main.c: 97: PWMD01H = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(30)	;volatile
	line	98
	
l2630:	
;main.c: 98: PWMD1L = ledDuty;
	movf	(_ledDuty),w
	movwf	(26)	;volatile
	line	100
	
l2632:	
;main.c: 99: }
;main.c: 100: B_OnOff = !B_OnOff;
	movlw	1<<((_B_OnOff)&7)
	xorwf	((_B_OnOff)/8),f
	goto	l467
	line	106
	
l2634:	
;main.c: 106: if(keyCount > 0 && keyCount < 250)
	movf	((_keyCount)),w
iorwf	((_keyCount+1)),w
	btfsc	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l458
u1500:
	
l2636:	
	movlw	0
	subwf	(_keyCount+1),w
	movlw	0FAh
	skipnz
	subwf	(_keyCount),w
	skipnc
	goto	u1511
	goto	u1510
u1511:
	goto	l458
u1510:
	line	108
	
l2638:	
;main.c: 107: {
;main.c: 108: if(doubleKeyTime > 0)
	movf	((_doubleKeyTime)),w
	btfsc	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l2648
u1520:
	line	110
	
l2640:	
;main.c: 109: {
;main.c: 110: if(count300s > 0)
	movf	((_count300s)),w
iorwf	((_count300s+1)),w
	btfsc	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l2644
u1530:
	line	112
	
l2642:	
;main.c: 111: {
;main.c: 112: count300s = 0;
	clrf	(_count300s)
	clrf	(_count300s+1)
	line	113
;main.c: 113: }
	goto	l2646
	line	116
	
l2644:	
;main.c: 114: else
;main.c: 115: {
;main.c: 116: count300s = 200;
	movlw	0C8h
	movwf	(_count300s)
	clrf	(_count300s+1)
	line	118
	
l2646:	
;main.c: 117: }
;main.c: 118: doubleKeyTime = 0;
	clrf	(_doubleKeyTime)
	line	119
;main.c: 119: }
	goto	l458
	line	122
	
l2648:	
;main.c: 120: else
;main.c: 121: {
;main.c: 122: doubleKeyTime = 250;
	movlw	low(0FAh)
	movwf	(_doubleKeyTime)
	line	126
	
l458:	
	line	127
;main.c: 123: }
;main.c: 126: }
;main.c: 127: if(keyCount > 250)
	movlw	0
	subwf	(_keyCount+1),w
	movlw	0FBh
	skipnz
	subwf	(_keyCount),w
	skipc
	goto	u1541
	goto	u1540
u1541:
	goto	l2656
u1540:
	line	129
	
l2650:	
;main.c: 128: {
;main.c: 129: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l2656
u1550:
	line	131
	
l2652:	
;main.c: 130: {
;main.c: 131: if(modeStep > 0)
	movf	((_modeStep)),w
	btfsc	status,2
	goto	u1561
	goto	u1560
u1561:
	goto	l465
u1560:
	line	133
	
l2654:	
;main.c: 132: {
;main.c: 133: modeStep = 0;
	clrf	(_modeStep)
	line	134
;main.c: 134: }
	goto	l2656
	line	135
	
l465:	
	line	137
;main.c: 135: else
;main.c: 136: {
;main.c: 137: modeStep = 1;
	clrf	(_modeStep)
	incf	(_modeStep),f
	line	141
	
l2656:	
;main.c: 138: }
;main.c: 139: }
;main.c: 140: }
;main.c: 141: keyCount = 0;
	clrf	(_keyCount)
	clrf	(_keyCount+1)
	line	143
	
l467:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
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
psect	text14,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
global __ptext14
__ptext14:	;psect for function ___lwmod
psect	text14
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l2568:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u1371
	goto	u1370
u1371:
	goto	l2584
u1370:
	line	14
	
l2570:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l2574
	line	16
	
l2572:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l2574:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1381
	goto	u1380
u1381:
	goto	l2572
u1380:
	line	20
	
l2576:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1395
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1395:
	skipc
	goto	u1391
	goto	u1390
u1391:
	goto	l2580
u1390:
	line	21
	
l2578:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l2580:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l2582:	
	decfsz	(___lwmod@counter),f
	goto	u1401
	goto	u1400
u1401:
	goto	l2576
u1400:
	line	25
	
l2584:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1467:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 33 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	33
global __ptext15
__ptext15:	;psect for function _Init_System
psect	text15
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	33
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	35
	
l2588:	
# 35 "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
nop ;# 
	line	36
# 36 "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
clrwdt ;# 
psect	text15
	line	37
	
l2590:	
;main.c: 37: INTCON = 0;
	clrf	(11)	;volatile
	line	38
	
l2592:	
;main.c: 38: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	39
	
l2594:	
;main.c: 39: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	44
	
l2596:	
;main.c: 44: TRISB = 0x00;
	clrf	(5)	;volatile
	line	45
	
l2598:	
;main.c: 45: PORTB = 0;
	clrf	(6)	;volatile
	line	47
;main.c: 47: PIE1 = 2;
	movlw	low(02h)
	movwf	(14)	;volatile
	line	48
;main.c: 48: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	49
;main.c: 49: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	51
;main.c: 51: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	52
	
l443:	
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
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
global __ptext16
__ptext16:	;psect for function _CheckTouchKey
psect	text16
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 2
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l3084:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text16
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u2231
	goto	u2230
u2231:
	goto	l1075
u2230:
	
l3086:	
	fcall	_GetTouchKeyValue
	
l3088:	
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l3118
u2240:
	
l3090:	
	clrf	(_KeyCounter)
	
l3092:	
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l3118
	
l1075:	
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u2251
	goto	u2250
u2251:
	goto	l3112
u2250:
	
l3094:	
	fcall	_CheckOnceResult
	fcall	_TurnKeyFlags
	
l3096:	
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l3098:	
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u2261
	goto	u2260
u2261:
	goto	l3102
u2260:
	
l3100:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l3110
u2270:
	
l3102:	
	fcall	_KeyStopClear
	
l3104:	
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l3106:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l3108:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l3110:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	goto	l3118
	
l3112:	
	fcall	_CheckKeyOldValue
	fcall	_ClearResSum
	
l3114:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l3116:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l3118:	
	fcall	_CheckValidTime
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text16
	
l1083:	
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
psect	text17,local,class=CODE,delta=2,merge=1,group=1
global __ptext17
__ptext17:	;psect for function _TurnKeyFlags
psect	text17
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_TurnKeyFlags
	__size_of_TurnKeyFlags	equ	__end_of_TurnKeyFlags-_TurnKeyFlags
	
_TurnKeyFlags:	
;incstack = 0
	opt	stack 2
; Regs used in _TurnKeyFlags: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3036:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text17
	
l3038:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_KeyData)),w	;volatile
	btfsc	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l3060
u2160:
	
l3040:	
	clrf	(TurnKeyFlags@F416)
	
l3042:	
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u2171
	goto	u2170
u2171:
	goto	l1056
u2170:
	
l3044:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F415),f
	subwf	((TurnKeyFlags@F415)),w
	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l1061
u2180:
	
l3046:	
	clrf	(TurnKeyFlags@F415)
	
l3048:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	
l3050:	
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u2191
	goto	u2190
u2191:
	goto	l1057
u2190:
	
l3052:	
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3054:	
	fcall	_KeyClearIn
	goto	l1061
	
l1057:	
	goto	l1061
	
l1056:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3056:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	
l3058:	
	clrf	(TurnKeyFlags@F415)
	goto	l1061
	
l3060:	
	clrf	(TurnKeyFlags@F415)
	clrf	(_KeyOldData)	;volatile
	
l3062:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F416),f
	subwf	((TurnKeyFlags@F416)),w
	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l1061
u2200:
	
l3064:	
	clrf	(TurnKeyFlags@F416)
	clrf	(_KeyFlag)	;volatile
	
l3066:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l1061:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text17
	
l1063:	
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
psect	text18,local,class=CODE,delta=2,merge=1,group=1
global __ptext18
__ptext18:	;psect for function _KeyClearIn
psect	text18
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyClearIn
	__size_of_KeyClearIn	equ	__end_of_KeyClearIn-_KeyClearIn
	
_KeyClearIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyClearIn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2826:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text18
	
l2828:	
	clrf	(KeyClearIn@383)
	
l2834:	
	movf	(KeyClearIn@383),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1861
	goto	u1860
u1861:
	goto	l2838
u1860:
	
l2836:	
	movf	(KeyClearIn@383),w
	fcall	_KeyClearOne
	
l2838:	
	incf	(KeyClearIn@383),f
	
l2840:	
	movf	((KeyClearIn@383)),w
	btfsc	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l2834
u1870:
	
l982:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text18
	
l984:	
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
psect	text19,local,class=CODE,delta=2,merge=1,group=1
global __ptext19
__ptext19:	;psect for function _KeyStopClear
psect	text19
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyStopClear
	__size_of_KeyStopClear	equ	__end_of_KeyStopClear-_KeyStopClear
	
_KeyStopClear:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2420:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text19
	
l2422:	
	clrf	(_KeyFlag)	;volatile
	clrf	(KeyStopClear@385)
	
l2428:	
	clrc
	rlf	(KeyStopClear@385),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l2430:	
	movf	(KeyStopClear@385),w
	fcall	_KeyClearOne
	
l2432:	
	incf	(KeyStopClear@385),f
	
l2434:	
	movf	((KeyStopClear@385)),w
	btfsc	status,2
	goto	u1131
	goto	u1130
u1131:
	goto	l2428
u1130:
	
l988:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text19
	
l989:	
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
psect	text20,local,class=CODE,delta=2,merge=1,group=1
global __ptext20
__ptext20:	;psect for function _GetTouchKeyValue
psect	text20
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_GetTouchKeyValue
	__size_of_GetTouchKeyValue	equ	__end_of_GetTouchKeyValue-_GetTouchKeyValue
	
_GetTouchKeyValue:	
;incstack = 0
	opt	stack 3
; Regs used in _GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l2200:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text20
	
l2202:	
	clrf	(GetTouchKeyValue@393)
	
l2204:	
	clrf	(GetTouchKeyValue@394)
	incf	(GetTouchKeyValue@394),f
	
l2206:	
	btfss	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	goto	u951
	goto	u950
u951:
	goto	l2210
u950:
	
l2208:	
	btfss	(GetTouchKeyValue@394),(0)&7
	goto	u961
	goto	u960
u961:
	goto	l2242
u960:
	
l2210:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	clrf	(274)^0100h	;volatile
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\Touch_Kscan_Library.h"
	line	95
	
l2212:	
	movlw	low(079h)
	movwf	(275)^0100h	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	
l2214:	
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	
l2216:	
	bcf	(54/8),(54)&7	;volatile
	
l2218:	
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	
l2220:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7	;volatile
	
l2222:	
	movlw	low(02h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(273)^0100h	;volatile
	
l2224:	
	movf	(GetTouchKeyValue@393),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(274)^0100h	;volatile
	
l2226:	
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	
l2228:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(273)^0100h+(0/8),(0)&7	;volatile
	
l2230:	
	movlw	040h
	movwf	(GetTouchKeyValue@395)
	movlw	01Fh
	movwf	((GetTouchKeyValue@395))+1
	goto	l1006
	
l2232:	
	movlw	01h
	subwf	(GetTouchKeyValue@395),f
	movlw	0
	skipc
	decf	(GetTouchKeyValue@395+1),f
	subwf	(GetTouchKeyValue@395+1),f
	movf	(((GetTouchKeyValue@395))),w
iorwf	(((GetTouchKeyValue@395+1))),w
	btfss	status,2
	goto	u971
	goto	u970
u971:
	goto	l1006
u970:
	
l2234:	
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_KeyCounter)
	
l2236:	
	fcall	_ClearResSum
	goto	l1009
	
l1006:	
	btfss	(273)^0100h,(7)&7	;volatile
	goto	u981
	goto	u980
u981:
	goto	l2232
u980:
	
l2240:	
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
	
l2242:	
	clrc
	rlf	(GetTouchKeyValue@394),f
	
l2244:	
	incf	(GetTouchKeyValue@393),f
	btfsc	status,2
	goto	u991
	goto	u990
u991:
	goto	l2206
u990:
	
l1011:	
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text20
	
l1009:	
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
psect	text21,local,class=CODE,delta=2,merge=1,group=1
global __ptext21
__ptext21:	;psect for function _ClearResSum
psect	text21
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_ClearResSum
	__size_of_ClearResSum	equ	__end_of_ClearResSum-_ClearResSum
	
_ClearResSum:	
;incstack = 0
	opt	stack 3
; Regs used in _ClearResSum: [wreg-fsr0h+status,2+status,0]
	
l2168:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text21
	
l2170:	
	clrf	(ClearResSum@388)
	
l2172:	
	clrc
	rlf	(ClearResSum@388),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l2174:	
	incf	(ClearResSum@388),f
	btfsc	status,2
	goto	u921
	goto	u920
u921:
	goto	l2172
u920:
	
l993:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text21
	
l994:	
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
psect	text22,local,class=CODE,delta=2,merge=1,group=1
global __ptext22
__ptext22:	;psect for function _CheckValidTime
psect	text22
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckValidTime
	__size_of_CheckValidTime	equ	__end_of_CheckValidTime-_CheckValidTime
	
_CheckValidTime:	
;incstack = 0
	opt	stack 5
; Regs used in _CheckValidTime: [wreg+status,2+status,0]
	
l2556:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text22
	
l2558:	
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l2564
u1350:
	
l2560:	
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
	goto	u1361
	goto	u1360
u1361:
	goto	l1068
u1360:
	
l2562:	
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l2564:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckValidTime@F419)
	clrf	(CheckValidTime@F419+1)
	
l1068:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text22
	
l1072:	
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
psect	text23,local,class=CODE,delta=2,merge=1,group=1
global __ptext23
__ptext23:	;psect for function _CheckOnceResult
psect	text23
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckOnceResult
	__size_of_CheckOnceResult	equ	__end_of_CheckOnceResult-_CheckOnceResult
	
_CheckOnceResult:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2948:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text23
	
l2950:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckOnceResult@401)
	clrf	(_KeyData)	;volatile
	clrf	(_KeyMaxSub)
	
l2952:	
	movf	(CheckOnceResult@401),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@403)
	
l2954:	
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u2005:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank0
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u2000:
	addlw	-1
	skipz
	goto	u2005
	
l2956:	
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@404)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@404+1)
	
l2958:	
	movf	(CheckOnceResult@401),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@402)
	
l2960:	
	movf	(CheckOnceResult@402),w
	movwf	(CheckOnceResult@405)
	clrf	(CheckOnceResult@405+1)
	
l2962:	
	movf	(CheckOnceResult@404),w
	addwf	(CheckOnceResult@405),f
	skipnc
	incf	(CheckOnceResult@405+1),f
	movf	(CheckOnceResult@404+1),w
	addwf	(CheckOnceResult@405+1),f
	
l2964:	
	movf	(CheckOnceResult@401),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2011
	goto	u2010
u2011:
	goto	l2994
u2010:
	
l2966:	
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
	goto	u2025
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@405),w
u2025:
	skipnc
	goto	u2021
	goto	u2020
u2021:
	goto	l2970
u2020:
	
l2968:	
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
	goto	l2978
	
l2970:	
	movf	(CheckOnceResult@406+1),w
	subwf	(CheckOnceResult@405+1),w
	skipz
	goto	u2035
	movf	(CheckOnceResult@406),w
	subwf	(CheckOnceResult@405),w
u2035:
	skipnc
	goto	u2031
	goto	u2030
u2031:
	goto	l3016
u2030:
	
l2972:	
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
	goto	u2045
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@405),w
u2045:
	skipnc
	goto	u2041
	goto	u2040
u2041:
	goto	l3016
u2040:
	
l2974:	
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@406),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@406+1),w
	movwf	indf
	
l2976:	
	movf	(CheckOnceResult@404),w
	subwf	(CheckOnceResult@406),w
	movwf	(CheckOnceResult@404)
	movf	(CheckOnceResult@404+1),w
	skipc
	incf	(CheckOnceResult@404+1),w
	subwf	(CheckOnceResult@406+1),w
	movwf	1+(CheckOnceResult@404)
	
l2978:	
	movf	(CheckOnceResult@401),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	
l2980:	
	movf	(0+(CheckOnceResult@404)+01h),w
	btfsc	status,2
	goto	u2051
	goto	u2050
u2051:
	goto	l2984
u2050:
	
l2982:	
	movlw	low(0FFh)
	movwf	(CheckOnceResult@402)
	goto	l1023
	
l2984:	
	movf	(CheckOnceResult@404),w
	movwf	(CheckOnceResult@402)
	
l1023:	
	movf	(CheckOnceResult@402),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u2061
	goto	u2060
u2061:
	goto	l2990
u2060:
	
l2986:	
	movf	(CheckOnceResult@402),w
	movwf	(_KeyMaxSub)
	
l2988:	
	movf	(CheckOnceResult@403),w
	fcall	_KeyHave
	goto	l3016
	
l2990:	
	incf	(_KeyCounter),f
	goto	l3016
	
l2994:	
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
	goto	u2075
	movf	(CheckOnceResult@405),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u2075:
	skipnc
	goto	u2071
	goto	u2070
u2071:
	goto	l3000
u2070:
	goto	l3016
	
l3000:	
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
	goto	u2085
	movf	(CheckOnceResult@404),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u2085:
	skipc
	goto	u2081
	goto	u2080
u2081:
	goto	l3004
u2080:
	
l3002:	
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
	goto	u2095
	movf	(CheckOnceResult@404),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u2095:
	skipnc
	goto	u2091
	goto	u2090
u2091:
	goto	l3008
u2090:
	
l3004:	
	movf	(CheckOnceResult@401),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u2101
	goto	u2100
u2101:
	goto	l1029
u2100:
	
l3006:	
	movf	(CheckOnceResult@401),w
	fcall	_KeyClearOne
	goto	l3016
	
l3008:	
	movf	(CheckOnceResult@401),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l3012
	
l1029:	
	
l3012:	
	movf	((_KeyData)),w	;volatile
	btfss	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l3016
u2110:
	
l3014:	
	movf	(CheckOnceResult@403),w
	fcall	_KeyHave
	
l3016:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@401),f
	btfsc	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l2952
u2120:
	
l1038:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text23
	
l1039:	
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
psect	text24,local,class=CODE,delta=2,merge=1,group=1
global __ptext24
__ptext24:	;psect for function _KeyHave
psect	text24
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
	
l2192:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text24
	
l2194:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	
l2196:	
	movf	(KeyHave@390),w
	movwf	(_KeyData)	;volatile
	
l998:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text24
	
l999:	
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
psect	text25,local,class=CODE,delta=2,merge=1,group=1
global __ptext25
__ptext25:	;psect for function _KeyClearOne
psect	text25
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
	
l2164:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text25
	
l2166:	
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
psect	text25
	
l978:	
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
psect	text26,local,class=CODE,delta=2,merge=1,group=1
global __ptext26
__ptext26:	;psect for function _CheckKeyOldValue
psect	text26
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckKeyOldValue
	__size_of_CheckKeyOldValue	equ	__end_of_CheckKeyOldValue-_CheckKeyOldValue
	
_CheckKeyOldValue:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3018:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text26
	
l3020:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@411)
	
l3022:	
	movlw	low(04h)
	incf	(CheckKeyOldValue@F410),f
	subwf	((CheckKeyOldValue@F410)),w
	skipnc
	goto	u2131
	goto	u2130
u2131:
	goto	l3026
u2130:
	goto	l1045
	
l3026:	
	clrf	(CheckKeyOldValue@F410)
	
l3028:	
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
	
l3030:	
	movf	(CheckKeyOldValue@411),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2141
	goto	u2140
u2141:
	goto	l1047
u2140:
	
l3032:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(CheckKeyOldValue@412+1),w
	movwf	(JudgeKeyOldData@428+1)
	movf	(CheckKeyOldValue@412),w
	movwf	(JudgeKeyOldData@428)
	movf	(CheckKeyOldValue@411),w
	fcall	_JudgeKeyOldData
	
l1047:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(CheckKeyOldValue@412+1),w
	movwf	(RKeyOldData@431+1)
	movf	(CheckKeyOldValue@412),w
	movwf	(RKeyOldData@431)
	movf	(CheckKeyOldValue@411),w
	fcall	_RKeyOldData
	
l3034:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckKeyOldValue@411),f
	btfsc	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l3028
u2150:
	
l1048:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text26
	
l1045:	
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
psect	text27,local,class=CODE,delta=2,merge=1,group=1
global __ptext27
__ptext27:	;psect for function _RKeyOldData
psect	text27
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
	
l2870:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text27
	
l2872:	
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
psect	text27
	
l1114:	
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
psect	text28,local,class=CODE,delta=2,merge=1,group=1
global __ptext28
__ptext28:	;psect for function _KeyIsIn
psect	text28
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
	
l2814:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text28
	
l2816:	
	movf	(KeyIsIn@377),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@378)
	
l2818:	
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@378),f
	
l2820:	
	movf	(KeyIsIn@378),w
	
l975:	
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
psect	text29,local,class=CODE,delta=2,merge=1,group=1
global __ptext29
__ptext29:	;psect for function _JudgeKeyOldData
psect	text29
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
	
l2842:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text29
	
l2844:	
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
	
l2846:	
	movf	(JudgeKeyOldData@428),w
	subwf	(JudgeKeyOldData@429),f
	movf	(JudgeKeyOldData@428+1),w
	skipc
	decf	(JudgeKeyOldData@429+1),f
	subwf	(JudgeKeyOldData@429+1),f
	
l2848:	
	movlw	0
	subwf	(JudgeKeyOldData@429+1),w
	movlw	03h
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1881
	goto	u1880
u1881:
	goto	l2852
u1880:
	
l2850:	
	movlw	0FFh
	subwf	(JudgeKeyOldData@429+1),w
	movlw	0FEh
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1891
	goto	u1890
u1891:
	goto	l1102
u1890:
	
l2852:	
	clrc
	rlf	(JudgeKeyOldData@427),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(JudgeKeyOldData@429)
	incf	fsr0,f
	movf	indf,w
	movwf	(JudgeKeyOldData@429+1)
	
l2854:	
	movf	(JudgeKeyOldData@428),w
	subwf	(JudgeKeyOldData@429),f
	movf	(JudgeKeyOldData@428+1),w
	skipc
	decf	(JudgeKeyOldData@429+1),f
	subwf	(JudgeKeyOldData@429+1),f
	
l2856:	
	movlw	0
	subwf	(JudgeKeyOldData@429+1),w
	movlw	03h
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1901
	goto	u1900
u1901:
	goto	l2860
u1900:
	
l2858:	
	movlw	0FFh
	subwf	(JudgeKeyOldData@429+1),w
	movlw	0FEh
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1911
	goto	u1910
u1911:
	goto	l1102
u1910:
	
l2860:	
	clrc
	rlf	(JudgeKeyOldData@427),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(JudgeKeyOldData@429)
	incf	fsr0,f
	movf	indf,w
	movwf	(JudgeKeyOldData@429+1)
	
l2862:	
	movf	(JudgeKeyOldData@428),w
	subwf	(JudgeKeyOldData@429),f
	movf	(JudgeKeyOldData@428+1),w
	skipc
	decf	(JudgeKeyOldData@429+1),f
	subwf	(JudgeKeyOldData@429+1),f
	
l2864:	
	movlw	0
	subwf	(JudgeKeyOldData@429+1),w
	movlw	03h
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1921
	goto	u1920
u1921:
	goto	l2868
u1920:
	
l2866:	
	movlw	0FFh
	subwf	(JudgeKeyOldData@429+1),w
	movlw	0FEh
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1931
	goto	u1930
u1931:
	goto	l1102
u1930:
	
l2868:	
	clrc
	rlf	(JudgeKeyOldData@427),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(JudgeKeyOldData@428),w
	movwf	indf
	incf	fsr0,f
	movf	(JudgeKeyOldData@428+1),w
	movwf	indf
	
l1102:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text29
	
l1111:	
	return
	opt stack 0
GLOBAL	__end_of_JudgeKeyOldData
	__end_of_JudgeKeyOldData:
	signat	_JudgeKeyOldData,8313
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 236 in file "C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
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
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	236
global __ptext30
__ptext30:	;psect for function _Isr_Timer
psect	text30
	file	"C:\mcuproject\scm\zdt\SU005_8122_SOP8_\SU005_SC8P8122_sop8_\main.c"
	line	236
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
	line	238
	
i1l2764:	
;main.c: 238: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u177_21
	goto	u177_20
u177_21:
	goto	i1l2774
u177_20:
	line	240
	
i1l2766:	
;main.c: 239: {
;main.c: 240: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	241
	
i1l2768:	
;main.c: 241: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u178_21
	goto	u178_20
u178_21:
	goto	i1l496
u178_20:
	line	243
	
i1l2770:	
;main.c: 242: {
;main.c: 243: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	244
	
i1l2772:	
;main.c: 244: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	i1l496
	line	249
	
i1l2774:	
;main.c: 247: else
;main.c: 248: {
;main.c: 249: PIR1 = 0;
	clrf	(13)	;volatile
	line	252
	
i1l496:	
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
