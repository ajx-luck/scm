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
	FNCALL	_main,_pwm02Stop
	FNCALL	_WorkSleep,_Refurbish_Sfr
	FNCALL	_WorkSleep,_SystemEnterSleep
	FNCALL	_SystemEnterSleep,_ClearResSum
	FNCALL	_SystemEnterSleep,_GetTouchKeyValue
	FNCALL	_SystemEnterSleep,_JudgeKeyOldData
	FNCALL	_SystemEnterSleep,_RKeyOldData
	FNCALL	_KeyServer,_pwm02Init
	FNCALL	_KeyServer,_pwm02Stop
	FNCALL	_KeyServer,_pwm0Init
	FNCALL	_KeyServer,_pwm0Stop
	FNCALL	_KeyServer,_pwm2Init
	FNCALL	_KeyServer,_pwm2Stop
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
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\Touch_Kscan_Library.h"
	line	69
_Table_KeyDown:
	retlw	0Ah
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyChannel
psect	strings
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\Touch_Kscan_Library.h"
	line	63
_Table_KeyChannel:
	retlw	044h
	global __end_of_Table_KeyChannel
__end_of_Table_KeyChannel:
	global	_Table_KeyFalg
	global	_Table_KeyDown
	global	_Table_KeyChannel
	global	_KeyResSum
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
	global	_KeyReference
	global	_KeyOldValue2
	global	_KeyOldValue1
	global	_KeyOldValue0
	global	TurnKeyFlags@F416
	global	TurnKeyFlags@F415
	global	CheckKeyOldValue@F410
	global	_KeyMaxSub
	global	_KeyCounter
	global	WorkSleep@time
	global	KeyServer@KeyOldFlag
	global	_closeTime
	global	_workStep
	global	_MainTime
	global	_KeyUpShake
	global	_PWM01DT
_PWM01DT	set	31
	global	_PWMD01H
_PWMD01H	set	30
	global	_PWMCON2
_PWMCON2	set	29
	global	_PWMT4L
_PWMT4L	set	28
	global	_PWMD4L
_PWMD4L	set	27
	global	_PWMD0L
_PWMD0L	set	25
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
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB6
_RB6	set	54
	global	_TRISB6
_TRISB6	set	46
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
	file	"E003_SC8P8122_sop8_.as"
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
_KeyResSum:
       ds      2

_KeyFlag:
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

_KeyReference:
       ds      2

_KeyOldValue2:
       ds      2

_KeyOldValue1:
       ds      2

_KeyOldValue0:
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

KeyServer@KeyOldFlag:
       ds      1

_closeTime:
       ds      1

_workStep:
       ds      1

_MainTime:
       ds      1

_KeyUpShake:
       ds      1

	file	"E003_SC8P8122_sop8_.as"
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
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+019h)
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
?_pwm02Stop:	; 1 bytes @ 0x0
?_pwm2Init:	; 1 bytes @ 0x0
?_pwm0Stop:	; 1 bytes @ 0x0
?_pwm0Init:	; 1 bytes @ 0x0
?_pwm2Stop:	; 1 bytes @ 0x0
?_pwm02Init:	; 1 bytes @ 0x0
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
??_pwm02Stop:	; 1 bytes @ 0x2
??_pwm2Init:	; 1 bytes @ 0x2
??_pwm0Stop:	; 1 bytes @ 0x2
??_pwm0Init:	; 1 bytes @ 0x2
??_pwm2Stop:	; 1 bytes @ 0x2
??_pwm02Init:	; 1 bytes @ 0x2
?_JudgeKeyOldData:	; 1 bytes @ 0x2
?_RKeyOldData:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_Refurbish_Sfr:	; 1 bytes @ 0x2
??_KeyServer:	; 1 bytes @ 0x2
??_KeyIsIn:	; 1 bytes @ 0x2
??_KeyClearOne:	; 1 bytes @ 0x2
??_ClearResSum:	; 1 bytes @ 0x2
??_KeyHave:	; 1 bytes @ 0x2
??_CheckValidTime:	; 1 bytes @ 0x2
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
	ds	1
??_TurnKeyFlags:	; 1 bytes @ 0x5
	global	GetTouchKeyValue@394
GetTouchKeyValue@394:	; 1 bytes @ 0x5
	global	JudgeKeyOldData@429
JudgeKeyOldData@429:	; 2 bytes @ 0x5
	ds	1
	global	GetTouchKeyValue@393
GetTouchKeyValue@393:	; 1 bytes @ 0x6
	global	RKeyOldData@430
RKeyOldData@430:	; 1 bytes @ 0x6
	ds	1
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
;!    Data        0
;!    BSS         28
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      12
;!    BANK0            80      9      34
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
;! (0) _main                                                 0     0      0    4737
;!                      _CheckTouchKey
;!                        _Init_System
;!                          _KeyServer
;!                      _Refurbish_Sfr
;!                          _WorkSleep
;!                          _pwm02Stop
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
;! (1) _KeyServer                                            0     0      0       0
;!                          _pwm02Init
;!                          _pwm02Stop
;!                           _pwm0Init
;!                           _pwm0Stop
;!                           _pwm2Init
;!                           _pwm2Stop
;! ---------------------------------------------------------------------------------
;! (2) _pwm2Stop                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwm2Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwm0Stop                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwm0Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _pwm02Stop                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwm02Init                                            0     0      0       0
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
;!     _pwm02Init
;!     _pwm02Stop
;!     _pwm0Init
;!     _pwm0Stop
;!     _pwm2Init
;!     _pwm2Stop
;!   _Refurbish_Sfr
;!   _WorkSleep
;!     _Refurbish_Sfr
;!     _SystemEnterSleep
;!       _ClearResSum
;!       _GetTouchKeyValue
;!         _ClearResSum
;!       _JudgeKeyOldData
;!       _RKeyOldData
;!   _pwm02Stop
;!
;! _Isr_Timer (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      8       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      2E       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      9      22       5       42.5%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!BANK1               20      0       0       7        0.0%
;!DATA                 0      0      2E       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 262 in file "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
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
;;		_pwm02Stop
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	262
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	262
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	264
	
l2894:	
;main.c: 264: Init_System();
	fcall	_Init_System
	line	267
	
l2896:	
;main.c: 266: {
;main.c: 267: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u1761
	goto	u1760
u1761:
	goto	l2896
u1760:
	line	269
	
l2898:	
;main.c: 268: {
;main.c: 269: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	270
# 270 "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
clrwdt ;# 
psect	maintext
	line	272
	
l2900:	
;main.c: 272: CheckTouchKey();
	fcall	_CheckTouchKey
	line	274
	
l2902:	
;main.c: 274: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	275
	
l2904:	
;main.c: 275: KeyServer();
	fcall	_KeyServer
	line	277
	
l2906:	
;main.c: 277: if(workStep == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u1771
	goto	u1770
u1771:
	goto	l497
u1770:
	line	279
	
l2908:	
;main.c: 278: {
;main.c: 279: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	280
	
l2910:	
;main.c: 280: pwm02Stop();
	fcall	_pwm02Stop
	line	281
	
l2912:	
;main.c: 281: WorkSleep();
	fcall	_WorkSleep
	line	282
;main.c: 282: }
	goto	l2896
	line	283
	
l497:	
	line	285
;main.c: 283: else
;main.c: 284: {
;main.c: 285: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	286
;main.c: 286: if(PORTB & 0x08)
	btfss	(6),(3)&7	;volatile
	goto	u1781
	goto	u1780
u1781:
	goto	l2916
u1780:
	line	288
	
l2914:	
;main.c: 287: {
;main.c: 288: closeTime = 0;
	clrf	(_closeTime)
	line	289
;main.c: 289: }
	goto	l2896
	line	292
	
l2916:	
;main.c: 290: else
;main.c: 291: {
;main.c: 292: if(++closeTime > 50)
	movlw	low(033h)
	incf	(_closeTime),f
	subwf	((_closeTime)),w
	skipc
	goto	u1791
	goto	u1790
u1791:
	goto	l496
u1790:
	line	294
	
l2918:	
;main.c: 293: {
;main.c: 294: closeTime = 0;
	clrf	(_closeTime)
	line	295
;main.c: 295: workStep = 0;
	clrf	(_workStep)
	goto	l2896
	line	300
	
l496:	
	goto	l2896
	global	start
	ljmp	start
	opt stack 0
	line	302
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_WorkSleep

;; *************** function _WorkSleep *****************
;; Defined at:
;;		line 214 in file "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
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
	line	214
global __ptext1
__ptext1:	;psect for function _WorkSleep
psect	text1
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	214
	global	__size_of_WorkSleep
	__size_of_WorkSleep	equ	__end_of_WorkSleep-_WorkSleep
	
_WorkSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _WorkSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	219
	
l2836:	
;main.c: 217: static unsigned char time;
;main.c: 219: if(B_OnOff)time = 0;
	btfss	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	goto	u1681
	goto	u1680
u1681:
	goto	l2840
u1680:
	
l2838:	
	clrf	(WorkSleep@time)
	line	221
	
l2840:	
;main.c: 221: if(++time >= 125)
	movlw	low(07Dh)
	incf	(WorkSleep@time),f
	subwf	((WorkSleep@time)),w
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l490
u1690:
	line	223
	
l2842:	
;main.c: 222: {
;main.c: 223: time = 0;
	clrf	(WorkSleep@time)
	line	224
;main.c: 224: INTCON = 0;
	clrf	(11)	;volatile
	line	225
;main.c: 225: PIE1 = 0;
	clrf	(14)	;volatile
	line	226
;main.c: 226: PIE2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(272)^0100h	;volatile
	line	227
;main.c: 227: PIR1 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(13)	;volatile
	line	228
;main.c: 228: PIR2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(271)^0100h	;volatile
	line	229
;main.c: 229: T2CON = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	233
	
l2844:	
;main.c: 233: TRISB = 0x08;
	movlw	low(08h)
	movwf	(5)	;volatile
	line	234
	
l2846:	
;main.c: 234: PORTB = 0;
	clrf	(6)	;volatile
	line	247
	
l2848:	
;main.c: 247: SystemEnterSleep();
	fcall	_SystemEnterSleep
	line	248
	
l2850:	
;main.c: 248: if(RBIF)
	btfss	(88/8),(88)&7	;volatile
	goto	u1701
	goto	u1700
u1701:
	goto	l2856
u1700:
	line	250
	
l2852:	
;main.c: 249: {
;main.c: 250: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	251
	
l2854:	
;main.c: 251: PORTB;
	movf	(6),w	;volatile
	line	254
	
l2856:	
;main.c: 252: }
;main.c: 254: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	257
	
l490:	
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
	
l2642:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text2
	
l1049:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
clrwdt ;# 
psect	text2
	
l2644:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	
l2646:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(1),f	;volatile
	
l2648:	
	bsf	(1)+(3/8),(3)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
clrwdt ;# 
psect	text2
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\TouchKeyConst.h"
	line	5
	
l2650:	
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
clrwdt ;# 
psect	text2
	
l2652:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	
l2654:	
	clrf	(275)^0100h	;volatile
	
l2656:	
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	
l2658:	
	bcf	(54/8),(54)&7	;volatile
	
l2660:	
	movlw	low(072h)
	movwf	(20)	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
sleep ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
clrwdt ;# 
psect	text2
	
l2662:	
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\Touch_Kscan_Library.h"
	line	95
	
l2664:	
	movlw	low(079h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(275)^0100h	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	
l2666:	
	fcall	_ClearResSum
	
l2668:	
	bsf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	
l2670:	
	fcall	_GetTouchKeyValue
	
l2672:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SystemEnterSleep@423)
	
l2674:	
	clrf	(SystemEnterSleep@424)
	incf	(SystemEnterSleep@424),f
	clrf	(SystemEnterSleep@424+1)
	
l2676:	
	btfsc	(88/8),(88)&7	;volatile
	goto	u1411
	goto	u1410
u1411:
	goto	l2680
u1410:
	
l2678:	
	btfss	(89/8),(89)&7	;volatile
	goto	u1421
	goto	u1420
u1421:
	goto	l1055
u1420:
	
l2680:	
	fcall	_ClearResSum
	
l2682:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	
l2684:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l2686:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	l1053
	
l1055:	
	btfss	(SystemEnterSleep@424),(0)&7
	goto	u1431
	goto	u1430
u1431:
	goto	l2712
u1430:
	
l2692:	
	clrc
	rlf	(SystemEnterSleep@423),w
	addlw	low(_KeyResSum|((0x00)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(SystemEnterSleep@425)
	incf	fsr0,f
	movf	indf,w
	movwf	(SystemEnterSleep@425+1)
	movf	((SystemEnterSleep@425+1)),w
	movwf	(SystemEnterSleep@426+1)
	movf	((SystemEnterSleep@425)),w
	movwf	(SystemEnterSleep@426)
	
l2694:	
	movf	((SystemEnterSleep@425)),w
iorwf	((SystemEnterSleep@425+1)),w
	btfsc	status,2
	goto	u1441
	goto	u1440
u1441:
	goto	l2712
u1440:
	
l2696:	
	movf	(SystemEnterSleep@423),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addwf	(SystemEnterSleep@426),f
	skipnc
	incf	(SystemEnterSleep@426+1),f
	
l2698:	
	clrc
	rlf	(SystemEnterSleep@423),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+1
	movf	(SystemEnterSleep@426+1),w
	subwf	1+(??_SystemEnterSleep+0)+0,w
	skipz
	goto	u1455
	movf	(SystemEnterSleep@426),w
	subwf	0+(??_SystemEnterSleep+0)+0,w
u1455:
	skipc
	goto	u1451
	goto	u1450
u1451:
	goto	l2710
u1450:
	goto	l2680
	
l2710:	
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
	
l2712:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(SystemEnterSleep@424),f
	rlf	(SystemEnterSleep@424+1),f
	
l2714:	
	incf	(SystemEnterSleep@423),f
	btfsc	status,2
	goto	u1461
	goto	u1460
u1461:
	goto	l1055
u1460:
	goto	l1049
	
l1053:	
	return
	opt stack 0
GLOBAL	__end_of_SystemEnterSleep
	__end_of_SystemEnterSleep:
	signat	_SystemEnterSleep,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 51 in file "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
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
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	51
global __ptext3
__ptext3:	;psect for function _Refurbish_Sfr
psect	text3
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	51
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 5
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	54
	
l2142:	
;main.c: 54: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	55
;main.c: 55: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	56
;main.c: 56: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	57
	
l2144:	
;main.c: 57: if (4 != T2CON)
		movlw	4
	xorwf	((19)),w	;volatile
	btfsc	status,2
	goto	u791
	goto	u790
u791:
	goto	l439
u790:
	line	58
	
l2146:	
;main.c: 58: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	59
	
l439:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 65 in file "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
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
;;		_pwm02Init
;;		_pwm02Stop
;;		_pwm0Init
;;		_pwm0Stop
;;		_pwm2Init
;;		_pwm2Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	65
global __ptext4
__ptext4:	;psect for function _KeyServer
psect	text4
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	65
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 5
; Regs used in _KeyServer: [wreg+status,2+status,0+pclath+cstack]
	line	68
	
l2446:	
;main.c: 67: static unsigned char KeyOldFlag = 0;
;main.c: 68: if (KeyFlag[0])
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l2484
u1100:
	line	70
	
l2448:	
;main.c: 69: {
;main.c: 70: if (KeyFlag[0] != KeyOldFlag)
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),w
	skipnz
	goto	u1111
	goto	u1110
u1111:
	goto	l456
u1110:
	line	73
	
l2450:	
;main.c: 71: {
;main.c: 73: KeyOldFlag ^= KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),f
	line	74
	
l2452:	
;main.c: 74: if ((KeyOldFlag & 0x1) && (KeyFlag[0] & 0x1))
	btfss	(KeyServer@KeyOldFlag),(0)&7
	goto	u1121
	goto	u1120
u1121:
	goto	l2482
u1120:
	
l2454:	
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u1131
	goto	u1130
u1131:
	goto	l2482
u1130:
	line	77
	
l2456:	
;main.c: 75: {
;main.c: 77: if(++workStep > 3)
	movlw	low(04h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u1141
	goto	u1140
u1141:
	goto	l2460
u1140:
	line	79
	
l2458:	
;main.c: 78: {
;main.c: 79: workStep = 0;
	clrf	(_workStep)
	line	81
	
l2460:	
;main.c: 80: }
;main.c: 81: if(workStep == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u1151
	goto	u1150
u1151:
	goto	l2464
u1150:
	line	83
	
l2462:	
;main.c: 82: {
;main.c: 83: pwm02Stop();
	fcall	_pwm02Stop
	line	84
;main.c: 84: }
	goto	l2480
	line	85
	
l2464:	
;main.c: 85: else if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u1161
	goto	u1160
u1161:
	goto	l2470
u1160:
	line	87
	
l2466:	
;main.c: 86: {
;main.c: 87: pwm2Init();
	fcall	_pwm2Init
	line	88
	
l2468:	
;main.c: 88: pwm0Stop();
	fcall	_pwm0Stop
	line	89
;main.c: 89: }
	goto	l2480
	line	90
	
l2470:	
;main.c: 90: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u1171
	goto	u1170
u1171:
	goto	l2476
u1170:
	line	92
	
l2472:	
;main.c: 91: {
;main.c: 92: pwm0Init();
	fcall	_pwm0Init
	line	93
	
l2474:	
;main.c: 93: pwm2Stop();
	fcall	_pwm2Stop
	line	94
;main.c: 94: }
	goto	l2480
	line	95
	
l2476:	
;main.c: 95: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u1181
	goto	u1180
u1181:
	goto	l451
u1180:
	line	97
	
l2478:	
;main.c: 96: {
;main.c: 97: pwm02Init();
	fcall	_pwm02Init
	goto	l2480
	line	99
	
l451:	
	
l2480:	
;main.c: 98: }
;main.c: 99: B_OnOff = !B_OnOff;
	movlw	1<<((_B_OnOff)&7)
	xorwf	((_B_OnOff)/8),f
	line	102
	
l2482:	
;main.c: 100: }
;main.c: 102: KeyOldFlag = KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	movwf	(KeyServer@KeyOldFlag)
	goto	l456
	line	107
	
l2484:	
;main.c: 105: else
;main.c: 106: {
;main.c: 107: KeyOldFlag = 0;
	clrf	(KeyServer@KeyOldFlag)
	line	109
	
l456:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_pwm2Stop

;; *************** function _pwm2Stop *****************
;; Defined at:
;;		line 129 in file "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
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
	line	129
global __ptext5
__ptext5:	;psect for function _pwm2Stop
psect	text5
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	129
	global	__size_of_pwm2Stop
	__size_of_pwm2Stop	equ	__end_of_pwm2Stop-_pwm2Stop
	
_pwm2Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm2Stop: []
	line	131
	
l2180:	
;main.c: 131: PWMCON0 &= 0XEF;
	bcf	(21)+(4/8),(4)&7	;volatile
	line	132
;main.c: 132: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	135
	
l462:	
	return
	opt stack 0
GLOBAL	__end_of_pwm2Stop
	__end_of_pwm2Stop:
	signat	_pwm2Stop,89
	global	_pwm2Init

;; *************** function _pwm2Init *****************
;; Defined at:
;;		line 111 in file "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
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
	line	111
global __ptext6
__ptext6:	;psect for function _pwm2Init
psect	text6
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	111
	global	__size_of_pwm2Init
	__size_of_pwm2Init	equ	__end_of_pwm2Init-_pwm2Init
	
_pwm2Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm2Init: [wreg+status,2]
	line	114
	
l2150:	
;main.c: 114: TRISB |= 0x04;
	bsf	(5)+(2/8),(2)&7	;volatile
	line	115
	
l2152:	
;main.c: 115: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	116
;main.c: 116: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	117
	
l2154:	
;main.c: 117: PWMT4L = 100;
	movlw	low(064h)
	movwf	(28)	;volatile
	line	120
	
l2156:	
;main.c: 120: PWMD4L = 80;
	movlw	low(050h)
	movwf	(27)	;volatile
	line	123
	
l2158:	
;main.c: 123: PWMCON0 = 0X70;
	movlw	low(070h)
	movwf	(21)	;volatile
	line	124
	
l2160:	
;main.c: 124: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	125
	
l2162:	
;main.c: 125: TRISB &= 0xFB;
	bcf	(5)+(2/8),(2)&7	;volatile
	line	127
	
l459:	
	return
	opt stack 0
GLOBAL	__end_of_pwm2Init
	__end_of_pwm2Init:
	signat	_pwm2Init,89
	global	_pwm0Stop

;; *************** function _pwm0Stop *****************
;; Defined at:
;;		line 155 in file "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
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
	line	155
global __ptext7
__ptext7:	;psect for function _pwm0Stop
psect	text7
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	155
	global	__size_of_pwm0Stop
	__size_of_pwm0Stop	equ	__end_of_pwm0Stop-_pwm0Stop
	
_pwm0Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm0Stop: []
	line	157
	
l2164:	
;main.c: 157: PWMCON0 &= 0XFE;
	bcf	(21)+(0/8),(0)&7	;volatile
	line	158
;main.c: 158: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	160
	
l468:	
	return
	opt stack 0
GLOBAL	__end_of_pwm0Stop
	__end_of_pwm0Stop:
	signat	_pwm0Stop,89
	global	_pwm0Init

;; *************** function _pwm0Init *****************
;; Defined at:
;;		line 137 in file "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
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
	line	137
global __ptext8
__ptext8:	;psect for function _pwm0Init
psect	text8
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	137
	global	__size_of_pwm0Init
	__size_of_pwm0Init	equ	__end_of_pwm0Init-_pwm0Init
	
_pwm0Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm0Init: [wreg+status,2]
	line	139
	
l2166:	
;main.c: 139: TRISB |= 0x01;
	bsf	(5)+(0/8),(0)&7	;volatile
	line	140
	
l2168:	
;main.c: 140: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	141
;main.c: 141: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	142
	
l2170:	
;main.c: 142: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	145
	
l2172:	
;main.c: 145: PWMD01H = 0;
	clrf	(30)	;volatile
	line	146
;main.c: 146: PWMD0L = 80;
	movlw	low(050h)
	movwf	(25)	;volatile
	line	147
	
l2174:	
;main.c: 147: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	149
	
l2176:	
;main.c: 149: PWMCON0 = 0X61;
	movlw	low(061h)
	movwf	(21)	;volatile
	line	150
;main.c: 150: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	151
	
l2178:	
;main.c: 151: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	153
	
l465:	
	return
	opt stack 0
GLOBAL	__end_of_pwm0Init
	__end_of_pwm0Init:
	signat	_pwm0Init,89
	global	_pwm02Stop

;; *************** function _pwm02Stop *****************
;; Defined at:
;;		line 184 in file "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
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
	line	184
global __ptext9
__ptext9:	;psect for function _pwm02Stop
psect	text9
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	184
	global	__size_of_pwm02Stop
	__size_of_pwm02Stop	equ	__end_of_pwm02Stop-_pwm02Stop
	
_pwm02Stop:	
;incstack = 0
	opt	stack 6
; Regs used in _pwm02Stop: [wreg+status,2+status,0]
	line	186
	
l2148:	
;main.c: 186: PWMCON0 &= 0XEE;
	movlw	low(0EEh)
	andwf	(21),f	;volatile
	line	187
;main.c: 187: PORTB &= 0xFA;
	movlw	low(0FAh)
	andwf	(6),f	;volatile
	line	189
	
l474:	
	return
	opt stack 0
GLOBAL	__end_of_pwm02Stop
	__end_of_pwm02Stop:
	signat	_pwm02Stop,89
	global	_pwm02Init

;; *************** function _pwm02Init *****************
;; Defined at:
;;		line 162 in file "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
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
	line	162
global __ptext10
__ptext10:	;psect for function _pwm02Init
psect	text10
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	162
	global	__size_of_pwm02Init
	__size_of_pwm02Init	equ	__end_of_pwm02Init-_pwm02Init
	
_pwm02Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm02Init: [wreg+status,2+status,0]
	line	164
	
l2182:	
;main.c: 164: TRISB |= 0x05;
	movlw	low(05h)
	iorwf	(5),f	;volatile
	line	165
	
l2184:	
;main.c: 165: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	166
	
l2186:	
;main.c: 166: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	167
	
l2188:	
;main.c: 167: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	168
	
l2190:	
;main.c: 168: PWMT4L = 100;
	movlw	low(064h)
	movwf	(28)	;volatile
	line	171
	
l2192:	
;main.c: 171: PWMD4L = 94;
	movlw	low(05Eh)
	movwf	(27)	;volatile
	line	174
	
l2194:	
;main.c: 174: PWMD01H = 0;
	clrf	(30)	;volatile
	line	175
	
l2196:	
;main.c: 175: PWMD0L = 94;
	movlw	low(05Eh)
	movwf	(25)	;volatile
	line	176
	
l2198:	
;main.c: 176: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	178
	
l2200:	
;main.c: 178: PWMCON0 = 0X71;
	movlw	low(071h)
	movwf	(21)	;volatile
	line	179
	
l2202:	
;main.c: 179: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	180
	
l2204:	
;main.c: 180: TRISB &= 0xFA;
	movlw	low(0FAh)
	andwf	(5),f	;volatile
	line	182
	
l471:	
	return
	opt stack 0
GLOBAL	__end_of_pwm02Init
	__end_of_pwm02Init:
	signat	_pwm02Init,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 22 in file "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	22
global __ptext11
__ptext11:	;psect for function _Init_System
psect	text11
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	22
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	24
	
l2428:	
# 24 "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
nop ;# 
	line	25
# 25 "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
clrwdt ;# 
psect	text11
	line	26
	
l2430:	
;main.c: 26: INTCON = 0;
	clrf	(11)	;volatile
	line	27
	
l2432:	
;main.c: 27: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	28
	
l2434:	
;main.c: 28: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	33
;main.c: 33: TRISB = 0x08;
	movlw	low(08h)
	movwf	(5)	;volatile
	line	34
	
l2436:	
;main.c: 34: PORTB = 0;
	clrf	(6)	;volatile
	line	36
	
l2438:	
;main.c: 36: PIE1 = 2;
	movlw	low(02h)
	movwf	(14)	;volatile
	line	37
	
l2440:	
;main.c: 37: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	38
	
l2442:	
;main.c: 38: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	40
	
l2444:	
;main.c: 40: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	41
	
l435:	
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
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
global __ptext12
__ptext12:	;psect for function _CheckTouchKey
psect	text12
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 2
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l2858:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text12
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u1711
	goto	u1710
u1711:
	goto	l1037
u1710:
	
l2860:	
	fcall	_GetTouchKeyValue
	
l2862:	
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l2892
u1720:
	
l2864:	
	clrf	(_KeyCounter)
	
l2866:	
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l2892
	
l1037:	
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u1731
	goto	u1730
u1731:
	goto	l2886
u1730:
	
l2868:	
	fcall	_CheckOnceResult
	fcall	_TurnKeyFlags
	
l2870:	
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l2872:	
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u1741
	goto	u1740
u1741:
	goto	l2876
u1740:
	
l2874:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u1751
	goto	u1750
u1751:
	goto	l2884
u1750:
	
l2876:	
	fcall	_KeyStopClear
	
l2878:	
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l2880:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l2882:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l2884:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	goto	l2892
	
l2886:	
	fcall	_CheckKeyOldValue
	fcall	_ClearResSum
	
l2888:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l2890:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l2892:	
	fcall	_CheckValidTime
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text12
	
l1045:	
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
psect	text13,local,class=CODE,delta=2,merge=1,group=1
global __ptext13
__ptext13:	;psect for function _TurnKeyFlags
psect	text13
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_TurnKeyFlags
	__size_of_TurnKeyFlags	equ	__end_of_TurnKeyFlags-_TurnKeyFlags
	
_TurnKeyFlags:	
;incstack = 0
	opt	stack 2
; Regs used in _TurnKeyFlags: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2804:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text13
	
l2806:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_KeyData)),w	;volatile
	btfsc	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l2828
u1630:
	
l2808:	
	clrf	(TurnKeyFlags@F416)
	
l2810:	
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u1641
	goto	u1640
u1641:
	goto	l1018
u1640:
	
l2812:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F415),f
	subwf	((TurnKeyFlags@F415)),w
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l1023
u1650:
	
l2814:	
	clrf	(TurnKeyFlags@F415)
	
l2816:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	
l2818:	
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u1661
	goto	u1660
u1661:
	goto	l1019
u1660:
	
l2820:	
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l2822:	
	fcall	_KeyClearIn
	goto	l1023
	
l1019:	
	goto	l1023
	
l1018:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l2824:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	
l2826:	
	clrf	(TurnKeyFlags@F415)
	goto	l1023
	
l2828:	
	clrf	(TurnKeyFlags@F415)
	clrf	(_KeyOldData)	;volatile
	
l2830:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F416),f
	subwf	((TurnKeyFlags@F416)),w
	skipc
	goto	u1671
	goto	u1670
u1671:
	goto	l1023
u1670:
	
l2832:	
	clrf	(TurnKeyFlags@F416)
	clrf	(_KeyFlag)	;volatile
	
l2834:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l1023:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text13
	
l1025:	
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
psect	text14,local,class=CODE,delta=2,merge=1,group=1
global __ptext14
__ptext14:	;psect for function _KeyClearIn
psect	text14
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyClearIn
	__size_of_KeyClearIn	equ	__end_of_KeyClearIn-_KeyClearIn
	
_KeyClearIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyClearIn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2594:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text14
	
l2596:	
	clrf	(KeyClearIn@383)
	
l2602:	
	movf	(KeyClearIn@383),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1331
	goto	u1330
u1331:
	goto	l2606
u1330:
	
l2604:	
	movf	(KeyClearIn@383),w
	fcall	_KeyClearOne
	
l2606:	
	incf	(KeyClearIn@383),f
	
l2608:	
	movf	((KeyClearIn@383)),w
	btfsc	status,2
	goto	u1341
	goto	u1340
u1341:
	goto	l2602
u1340:
	
l944:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text14
	
l946:	
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
psect	text15,local,class=CODE,delta=2,merge=1,group=1
global __ptext15
__ptext15:	;psect for function _KeyStopClear
psect	text15
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyStopClear
	__size_of_KeyStopClear	equ	__end_of_KeyStopClear-_KeyStopClear
	
_KeyStopClear:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2280:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text15
	
l2282:	
	clrf	(_KeyFlag)	;volatile
	clrf	(KeyStopClear@385)
	
l2288:	
	clrc
	rlf	(KeyStopClear@385),w
	addlw	low(_KeyResSum|((0x00)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l2290:	
	movf	(KeyStopClear@385),w
	fcall	_KeyClearOne
	
l2292:	
	incf	(KeyStopClear@385),f
	
l2294:	
	movf	((KeyStopClear@385)),w
	btfsc	status,2
	goto	u861
	goto	u860
u861:
	goto	l2288
u860:
	
l950:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text15
	
l951:	
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
psect	text16,local,class=CODE,delta=2,merge=1,group=1
global __ptext16
__ptext16:	;psect for function _GetTouchKeyValue
psect	text16
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_GetTouchKeyValue
	__size_of_GetTouchKeyValue	equ	__end_of_GetTouchKeyValue-_GetTouchKeyValue
	
_GetTouchKeyValue:	
;incstack = 0
	opt	stack 3
; Regs used in _GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l2064:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text16
	
l2066:	
	clrf	(GetTouchKeyValue@393)
	
l2068:	
	clrf	(GetTouchKeyValue@394)
	incf	(GetTouchKeyValue@394),f
	
l2070:	
	btfss	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	goto	u681
	goto	u680
u681:
	goto	l2074
u680:
	
l2072:	
	btfss	(GetTouchKeyValue@394),(0)&7
	goto	u691
	goto	u690
u691:
	goto	l2106
u690:
	
l2074:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	clrf	(274)^0100h	;volatile
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\Touch_Kscan_Library.h"
	line	95
	
l2076:	
	movlw	low(079h)
	movwf	(275)^0100h	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	
l2078:	
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	
l2080:	
	bcf	(54/8),(54)&7	;volatile
	
l2082:	
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	
l2084:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7	;volatile
	
l2086:	
	movlw	low(02h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(273)^0100h	;volatile
	
l2088:	
	movf	(GetTouchKeyValue@393),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(274)^0100h	;volatile
	
l2090:	
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	
l2092:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(273)^0100h+(0/8),(0)&7	;volatile
	
l2094:	
	movlw	040h
	movwf	(GetTouchKeyValue@395)
	movlw	01Fh
	movwf	((GetTouchKeyValue@395))+1
	goto	l968
	
l2096:	
	movlw	01h
	subwf	(GetTouchKeyValue@395),f
	movlw	0
	skipc
	decf	(GetTouchKeyValue@395+1),f
	subwf	(GetTouchKeyValue@395+1),f
	movf	(((GetTouchKeyValue@395))),w
iorwf	(((GetTouchKeyValue@395+1))),w
	btfss	status,2
	goto	u701
	goto	u700
u701:
	goto	l968
u700:
	
l2098:	
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_KeyCounter)
	
l2100:	
	fcall	_ClearResSum
	goto	l971
	
l968:	
	btfss	(273)^0100h,(7)&7	;volatile
	goto	u711
	goto	u710
u711:
	goto	l2096
u710:
	
l2104:	
	clrc
	rlf	(GetTouchKeyValue@393),w
	addlw	low(_KeyResSum|((0x00)<<8))&0ffh
	movwf	fsr0
	movf	(278)^0100h,w	;volatile
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
	
l2106:	
	clrc
	rlf	(GetTouchKeyValue@394),f
	
l2108:	
	incf	(GetTouchKeyValue@393),f
	btfsc	status,2
	goto	u721
	goto	u720
u721:
	goto	l2070
u720:
	
l973:	
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text16
	
l971:	
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
psect	text17,local,class=CODE,delta=2,merge=1,group=1
global __ptext17
__ptext17:	;psect for function _ClearResSum
psect	text17
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_ClearResSum
	__size_of_ClearResSum	equ	__end_of_ClearResSum-_ClearResSum
	
_ClearResSum:	
;incstack = 0
	opt	stack 3
; Regs used in _ClearResSum: [wreg-fsr0h+status,2+status,0]
	
l2032:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text17
	
l2034:	
	clrf	(ClearResSum@388)
	
l2036:	
	clrc
	rlf	(ClearResSum@388),w
	addlw	low(_KeyResSum|((0x00)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l2038:	
	incf	(ClearResSum@388),f
	btfsc	status,2
	goto	u651
	goto	u650
u651:
	goto	l2036
u650:
	
l955:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text17
	
l956:	
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
psect	text18,local,class=CODE,delta=2,merge=1,group=1
global __ptext18
__ptext18:	;psect for function _CheckValidTime
psect	text18
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckValidTime
	__size_of_CheckValidTime	equ	__end_of_CheckValidTime-_CheckValidTime
	
_CheckValidTime:	
;incstack = 0
	opt	stack 5
; Regs used in _CheckValidTime: [wreg+status,2+status,0]
	
l2416:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text18
	
l2418:	
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l2424
u1080:
	
l2420:	
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
	goto	u1091
	goto	u1090
u1091:
	goto	l1030
u1090:
	
l2422:	
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l2424:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckValidTime@F419)
	clrf	(CheckValidTime@F419+1)
	
l1030:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text18
	
l1034:	
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
psect	text19,local,class=CODE,delta=2,merge=1,group=1
global __ptext19
__ptext19:	;psect for function _CheckOnceResult
psect	text19
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckOnceResult
	__size_of_CheckOnceResult	equ	__end_of_CheckOnceResult-_CheckOnceResult
	
_CheckOnceResult:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2716:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text19
	
l2718:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckOnceResult@401)
	clrf	(_KeyData)	;volatile
	clrf	(_KeyMaxSub)
	
l2720:	
	movf	(CheckOnceResult@401),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@403)
	
l2722:	
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyResSum|((0x00)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u1475:
	incf	fsr0,f
	clrc
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u1470:
	addlw	-1
	skipz
	goto	u1475
	
l2724:	
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyResSum|((0x00)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@404)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@404+1)
	
l2726:	
	movf	(CheckOnceResult@401),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@402)
	
l2728:	
	movf	(CheckOnceResult@402),w
	movwf	(CheckOnceResult@405)
	clrf	(CheckOnceResult@405+1)
	
l2730:	
	movf	(CheckOnceResult@404),w
	addwf	(CheckOnceResult@405),f
	skipnc
	incf	(CheckOnceResult@405+1),f
	movf	(CheckOnceResult@404+1),w
	addwf	(CheckOnceResult@405+1),f
	
l2732:	
	movf	(CheckOnceResult@401),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1481
	goto	u1480
u1481:
	goto	l2762
u1480:
	
l2734:	
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
	goto	u1495
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@405),w
u1495:
	skipnc
	goto	u1491
	goto	u1490
u1491:
	goto	l2738
u1490:
	
l2736:	
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
	goto	l2746
	
l2738:	
	movf	(CheckOnceResult@406+1),w
	subwf	(CheckOnceResult@405+1),w
	skipz
	goto	u1505
	movf	(CheckOnceResult@406),w
	subwf	(CheckOnceResult@405),w
u1505:
	skipnc
	goto	u1501
	goto	u1500
u1501:
	goto	l2784
u1500:
	
l2740:	
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
	goto	u1515
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@405),w
u1515:
	skipnc
	goto	u1511
	goto	u1510
u1511:
	goto	l2784
u1510:
	
l2742:	
	clrc
	rlf	(CheckOnceResult@401),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@406),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@406+1),w
	movwf	indf
	
l2744:	
	movf	(CheckOnceResult@404),w
	subwf	(CheckOnceResult@406),w
	movwf	(CheckOnceResult@404)
	movf	(CheckOnceResult@404+1),w
	skipc
	incf	(CheckOnceResult@404+1),w
	subwf	(CheckOnceResult@406+1),w
	movwf	1+(CheckOnceResult@404)
	
l2746:	
	movf	(CheckOnceResult@401),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	
l2748:	
	movf	(0+(CheckOnceResult@404)+01h),w
	btfsc	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l2752
u1520:
	
l2750:	
	movlw	low(0FFh)
	movwf	(CheckOnceResult@402)
	goto	l985
	
l2752:	
	movf	(CheckOnceResult@404),w
	movwf	(CheckOnceResult@402)
	
l985:	
	movf	(CheckOnceResult@402),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u1531
	goto	u1530
u1531:
	goto	l2758
u1530:
	
l2754:	
	movf	(CheckOnceResult@402),w
	movwf	(_KeyMaxSub)
	
l2756:	
	movf	(CheckOnceResult@403),w
	fcall	_KeyHave
	goto	l2784
	
l2758:	
	incf	(_KeyCounter),f
	goto	l2784
	
l2762:	
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
	goto	u1545
	movf	(CheckOnceResult@405),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1545:
	skipnc
	goto	u1541
	goto	u1540
u1541:
	goto	l2768
u1540:
	goto	l2784
	
l2768:	
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
	goto	u1555
	movf	(CheckOnceResult@404),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1555:
	skipc
	goto	u1551
	goto	u1550
u1551:
	goto	l2772
u1550:
	
l2770:	
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
	goto	u1565
	movf	(CheckOnceResult@404),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1565:
	skipnc
	goto	u1561
	goto	u1560
u1561:
	goto	l2776
u1560:
	
l2772:	
	movf	(CheckOnceResult@401),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u1571
	goto	u1570
u1571:
	goto	l991
u1570:
	
l2774:	
	movf	(CheckOnceResult@401),w
	fcall	_KeyClearOne
	goto	l2784
	
l2776:	
	movf	(CheckOnceResult@401),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l2780
	
l991:	
	
l2780:	
	movf	((_KeyData)),w	;volatile
	btfss	status,2
	goto	u1581
	goto	u1580
u1581:
	goto	l2784
u1580:
	
l2782:	
	movf	(CheckOnceResult@403),w
	fcall	_KeyHave
	
l2784:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@401),f
	btfsc	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l2720
u1590:
	
l1000:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text19
	
l1001:	
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
psect	text20,local,class=CODE,delta=2,merge=1,group=1
global __ptext20
__ptext20:	;psect for function _KeyHave
psect	text20
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
	
l2056:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text20
	
l2058:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	
l2060:	
	movf	(KeyHave@390),w
	movwf	(_KeyData)	;volatile
	
l960:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text20
	
l961:	
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
psect	text21,local,class=CODE,delta=2,merge=1,group=1
global __ptext21
__ptext21:	;psect for function _KeyClearOne
psect	text21
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
	
l2028:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text21
	
l2030:	
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
psect	text21
	
l940:	
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
psect	text22,local,class=CODE,delta=2,merge=1,group=1
global __ptext22
__ptext22:	;psect for function _CheckKeyOldValue
psect	text22
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckKeyOldValue
	__size_of_CheckKeyOldValue	equ	__end_of_CheckKeyOldValue-_CheckKeyOldValue
	
_CheckKeyOldValue:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2786:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text22
	
l2788:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@411)
	
l2790:	
	movlw	low(04h)
	incf	(CheckKeyOldValue@F410),f
	subwf	((CheckKeyOldValue@F410)),w
	skipnc
	goto	u1601
	goto	u1600
u1601:
	goto	l2794
u1600:
	goto	l1007
	
l2794:	
	clrf	(CheckKeyOldValue@F410)
	
l2796:	
	clrc
	rlf	(CheckKeyOldValue@411),w
	addlw	low(_KeyResSum|((0x00)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@412)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@412+1)
	
l2798:	
	movf	(CheckKeyOldValue@411),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1611
	goto	u1610
u1611:
	goto	l1009
u1610:
	
l2800:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(CheckKeyOldValue@412+1),w
	movwf	(JudgeKeyOldData@428+1)
	movf	(CheckKeyOldValue@412),w
	movwf	(JudgeKeyOldData@428)
	movf	(CheckKeyOldValue@411),w
	fcall	_JudgeKeyOldData
	
l1009:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(CheckKeyOldValue@412+1),w
	movwf	(RKeyOldData@431+1)
	movf	(CheckKeyOldValue@412),w
	movwf	(RKeyOldData@431)
	movf	(CheckKeyOldValue@411),w
	fcall	_RKeyOldData
	
l2802:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckKeyOldValue@411),f
	btfsc	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l2796
u1620:
	
l1010:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text22
	
l1007:	
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
psect	text23,local,class=CODE,delta=2,merge=1,group=1
global __ptext23
__ptext23:	;psect for function _RKeyOldData
psect	text23
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
	
l2638:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text23
	
l2640:	
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
psect	text23
	
l1076:	
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
psect	text24,local,class=CODE,delta=2,merge=1,group=1
global __ptext24
__ptext24:	;psect for function _KeyIsIn
psect	text24
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
	
l2582:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text24
	
l2584:	
	movf	(KeyIsIn@377),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@378)
	
l2586:	
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@378),f
	
l2588:	
	movf	(KeyIsIn@378),w
	
l937:	
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
psect	text25,local,class=CODE,delta=2,merge=1,group=1
global __ptext25
__ptext25:	;psect for function _JudgeKeyOldData
psect	text25
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
	
l2610:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt nolist ;# 
psect	text25
	
l2612:	
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
	
l2614:	
	movf	(JudgeKeyOldData@428),w
	subwf	(JudgeKeyOldData@429),f
	movf	(JudgeKeyOldData@428+1),w
	skipc
	decf	(JudgeKeyOldData@429+1),f
	subwf	(JudgeKeyOldData@429+1),f
	
l2616:	
	movlw	0
	subwf	(JudgeKeyOldData@429+1),w
	movlw	03h
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1351
	goto	u1350
u1351:
	goto	l2620
u1350:
	
l2618:	
	movlw	0FFh
	subwf	(JudgeKeyOldData@429+1),w
	movlw	0FEh
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1361
	goto	u1360
u1361:
	goto	l1064
u1360:
	
l2620:	
	clrc
	rlf	(JudgeKeyOldData@427),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(JudgeKeyOldData@429)
	incf	fsr0,f
	movf	indf,w
	movwf	(JudgeKeyOldData@429+1)
	
l2622:	
	movf	(JudgeKeyOldData@428),w
	subwf	(JudgeKeyOldData@429),f
	movf	(JudgeKeyOldData@428+1),w
	skipc
	decf	(JudgeKeyOldData@429+1),f
	subwf	(JudgeKeyOldData@429+1),f
	
l2624:	
	movlw	0
	subwf	(JudgeKeyOldData@429+1),w
	movlw	03h
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1371
	goto	u1370
u1371:
	goto	l2628
u1370:
	
l2626:	
	movlw	0FFh
	subwf	(JudgeKeyOldData@429+1),w
	movlw	0FEh
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1381
	goto	u1380
u1381:
	goto	l1064
u1380:
	
l2628:	
	clrc
	rlf	(JudgeKeyOldData@427),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(JudgeKeyOldData@429)
	incf	fsr0,f
	movf	indf,w
	movwf	(JudgeKeyOldData@429+1)
	
l2630:	
	movf	(JudgeKeyOldData@428),w
	subwf	(JudgeKeyOldData@429),f
	movf	(JudgeKeyOldData@428+1),w
	skipc
	decf	(JudgeKeyOldData@429+1),f
	subwf	(JudgeKeyOldData@429+1),f
	
l2632:	
	movlw	0
	subwf	(JudgeKeyOldData@429+1),w
	movlw	03h
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1391
	goto	u1390
u1391:
	goto	l2636
u1390:
	
l2634:	
	movlw	0FFh
	subwf	(JudgeKeyOldData@429+1),w
	movlw	0FEh
	skipnz
	subwf	(JudgeKeyOldData@429),w
	skipc
	goto	u1401
	goto	u1400
u1401:
	goto	l1064
u1400:
	
l2636:	
	clrc
	rlf	(JudgeKeyOldData@427),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(JudgeKeyOldData@428),w
	movwf	indf
	incf	fsr0,f
	movf	(JudgeKeyOldData@428+1),w
	movwf	indf
	
l1064:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\82A1\CheckTouchKey.c"
opt list ;# 
psect	text25
	
l1073:	
	return
	opt stack 0
GLOBAL	__end_of_JudgeKeyOldData
	__end_of_JudgeKeyOldData:
	signat	_JudgeKeyOldData,8313
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 196 in file "C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
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
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	196
global __ptext26
__ptext26:	;psect for function _Isr_Timer
psect	text26
	file	"C:\mcuproject\scm\zdt\E003_8122_SOP8_\E003_SC8P8122_sop8_\main.c"
	line	196
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
psect	text26
	line	198
	
i1l2544:	
;main.c: 198: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u127_21
	goto	u127_20
u127_21:
	goto	i1l2554
u127_20:
	line	200
	
i1l2546:	
;main.c: 199: {
;main.c: 200: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	201
	
i1l2548:	
;main.c: 201: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u128_21
	goto	u128_20
u128_21:
	goto	i1l482
u128_20:
	line	203
	
i1l2550:	
;main.c: 202: {
;main.c: 203: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	204
	
i1l2552:	
;main.c: 204: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	i1l482
	line	209
	
i1l2554:	
;main.c: 207: else
;main.c: 208: {
;main.c: 209: PIR1 = 0;
	clrf	(13)	;volatile
	line	212
	
i1l482:	
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
