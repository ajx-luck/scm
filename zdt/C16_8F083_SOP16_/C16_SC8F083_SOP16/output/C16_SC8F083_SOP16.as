opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F083
opt include "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\include\sc8f083.cgen.inc"
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
	FNCALL	_main,_chrgCtr
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,_ADC_Sample
	FNCALL	_workCtr,___ftdiv
	FNCALL	_workCtr,___fttol
	FNCALL	_workCtr,___lwtoft
	FNCALL	_workCtr,_fanCtr
	FNCALL	_workCtr,_keyLedCtr
	FNCALL	_workCtr,_wuhuaCtr
	FNCALL	_wuhuaCtr,_ADC_Sample
	FNCALL	_wuhuaCtr,___lmul
	FNCALL	_wuhuaCtr,_pwmInit
	FNCALL	_wuhuaCtr,_pwmStop
	FNCALL	_keyLedCtr,___lwmod
	FNCALL	_fanCtr,_ADC_Sample
	FNCALL	_fanCtr,___lmul
	FNCALL	_fanCtr,_fanInit
	FNCALL	_fanCtr,_fanStop
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_WorkSleep,_Refurbish_Sfr
	FNCALL	_WorkSleep,_SystemEnterSleep
	FNCALL	_SystemEnterSleep,_ClearResSum
	FNCALL	_SystemEnterSleep,_GetTouchKeyValue
	FNCALL	_SystemEnterSleep,_KeyClearOne
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
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
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
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\Touch_Kscan_Library.h"
	line	75
_Table_KeyDown:
	retlw	0Ah
	retlw	0Ah
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyCap
psect	strings
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\Touch_Kscan_Library.h"
	line	69
_Table_KeyCap:
	retlw	02h
	retlw	02h
	global __end_of_Table_KeyCap
__end_of_Table_KeyCap:
	global	_Table_KeyChannel
psect	strings
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\Touch_Kscan_Library.h"
	line	63
_Table_KeyChannel:
	retlw	042h
	retlw	043h
	global __end_of_Table_KeyChannel
__end_of_Table_KeyChannel:
	global	_Table_KeyFalg
	global	_Table_KeyDown
	global	_Table_KeyCap
	global	_Table_KeyChannel
	global	_KeyData
	global	_workStep
	global	_b_ksleep
	global	_b_kerr
	global	_b_kclr
	global	_b_kover1
	global	_b_kover
	global	_B_OnOff
	global	_B_MainLoop
	global	_KeyOldValue2
	global	_KeyOldValue1
	global	_KeyOldValue0
	global	_KeyResSum
	global	_KeyOldData
	global	_power_ad
	global	_shanshuoTime2
	global	_shanshuoTime
	global	_KeyFlag
	global	TurnKeyFlags@F84
	global	TurnKeyFlags@F83
	global	CheckKeyOldValue@F77
	global	_KeyMaxSub
	global	_KeyCounter
	global	KeyServer@KeyOldFlag
	global	_test_adc
	global	_lowBatLock
	global	_chrgFullTime
	global	_chrgFullFlag
	global	_chrgFlag
	global	_fanOverTime
	global	_count10s
	global	_fanDuty
	global	_wuhuaFlag
	global	_count1s
	global	_MainTime
	global	_adresult
	global	_KeyReference
	global	CheckValidTime@F87
	global	_time
	global	_result
	global	_lowFanTime
	global	_lowBatTime
	global	_wuhuaValue
	global	_fanValue
	global	_KeyUpShake
	global	_firstLock
psect	nvBANK1,class=BANK1,space=1,noexec
global __pnvBANK1
__pnvBANK1:
_firstLock:
       ds      1

	global	_firstTime
_firstTime:
       ds      1

	global	_PWMD01H
_PWMD01H	set	30
	global	_PWMCON2
_PWMCON2	set	29
	global	_PWMD1L
_PWMD1L	set	26
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
	global	_WPUB
_WPUB	set	8
	global	_PORTB
_PORTB	set	6
	global	_TRISB
_TRISB	set	5
	global	_OPTION_REG
_OPTION_REG	set	1
	global	_TMR2IF
_TMR2IF	set	105
	global	_RAIF
_RAIF	set	107
	global	_RBIF
_RBIF	set	88
	global	_INTF
_INTF	set	89
	global	_RBIE
_RBIE	set	91
	global	_IOCB0
_IOCB0	set	72
	global	_RB6
_RB6	set	54
	global	_TRISB0
_TRISB0	set	40
	global	_TRISB6
_TRISB6	set	46
	global	_ADRESH
_ADRESH	set	153
	global	_ADRESL
_ADRESL	set	152
	global	_ADCON1
_ADCON1	set	150
	global	_ADCON0
_ADCON0	set	149
	global	_PORTA
_PORTA	set	134
	global	_TRISA
_TRISA	set	133
	global	_TMR0
_TMR0	set	129
	global	_LDO_EN
_LDO_EN	set	1202
	global	_CHS4
_CHS4	set	1206
	global	_ADON
_ADON	set	1192
	global	_GODONE
_GODONE	set	1193
	global	_RA1
_RA1	set	1073
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
	global	_PORTC
_PORTC	set	262
	global	_TRISC
_TRISC	set	261
; #config settings
	file	"C16_SC8F083_SOP16.as"
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

_workStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_KeyOldValue2:
       ds      4

_KeyOldValue1:
       ds      4

_KeyOldValue0:
       ds      4

_KeyResSum:
       ds      4

_KeyOldData:
       ds      2

_power_ad:
       ds      2

_shanshuoTime2:
       ds      2

_shanshuoTime:
       ds      2

_KeyFlag:
       ds      2

TurnKeyFlags@F84:
       ds      1

TurnKeyFlags@F83:
       ds      1

CheckKeyOldValue@F77:
       ds      1

_KeyMaxSub:
       ds      1

_KeyCounter:
       ds      1

KeyServer@KeyOldFlag:
       ds      1

_test_adc:
       ds      1

_lowBatLock:
       ds      1

_chrgFullTime:
       ds      1

_chrgFullFlag:
       ds      1

_chrgFlag:
       ds      1

_fanOverTime:
       ds      1

_count10s:
       ds      1

_fanDuty:
       ds      1

_wuhuaFlag:
       ds      1

_count1s:
       ds      1

_MainTime:
       ds      1

_adresult:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_KeyReference:
       ds      4

CheckValidTime@F87:
       ds      2

_time:
       ds      2

_result:
       ds      2

_lowFanTime:
       ds      2

_lowBatTime:
       ds      2

_wuhuaValue:
       ds      2

_fanValue:
       ds      2

_KeyUpShake:
       ds      2

	file	"C16_SC8F083_SOP16.as"
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
	movlw	low((__pbssBANK0)+02Dh)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+014h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	workCtr@power_temp
workCtr@power_temp:	; 4 bytes @ 0x0
	ds	4
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_SystemEnterSleep:	; 1 bytes @ 0x0
?_CheckTouchKey:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Refurbish_Sfr:	; 1 bytes @ 0x0
?_KeyServer:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_WorkSleep:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_keyLedCtr:	; 1 bytes @ 0x0
?_pwmInit:	; 1 bytes @ 0x0
?_pwmStop:	; 1 bytes @ 0x0
?_fanInit:	; 1 bytes @ 0x0
?_fanStop:	; 1 bytes @ 0x0
?_fanCtr:	; 1 bytes @ 0x0
?_wuhuaCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
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
??_Init_System:	; 1 bytes @ 0x2
??_Refurbish_Sfr:	; 1 bytes @ 0x2
??_KeyServer:	; 1 bytes @ 0x2
?_ADC_Sample:	; 1 bytes @ 0x2
??_chrgCtr:	; 1 bytes @ 0x2
??_pwmInit:	; 1 bytes @ 0x2
??_pwmStop:	; 1 bytes @ 0x2
??_fanInit:	; 1 bytes @ 0x2
??_fanStop:	; 1 bytes @ 0x2
??_KeyIsIn:	; 1 bytes @ 0x2
??_KeyClearOne:	; 1 bytes @ 0x2
??_ClearResSum:	; 1 bytes @ 0x2
?_KeyHave:	; 1 bytes @ 0x2
??_CheckValidTime:	; 1 bytes @ 0x2
??___lmul:	; 1 bytes @ 0x2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x2
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x2
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x2
	global	KeyIsIn@46
KeyIsIn@46:	; 1 bytes @ 0x2
	global	KeyClearOne@49
KeyClearOne@49:	; 1 bytes @ 0x2
	global	ClearResSum@56
ClearResSum@56:	; 1 bytes @ 0x2
	global	KeyHave@59
KeyHave@59:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x2
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x2
	ds	1
??_ADC_Sample:	; 1 bytes @ 0x3
??_KeyStopClear:	; 1 bytes @ 0x3
??_GetTouchKeyValue:	; 1 bytes @ 0x3
	global	KeyIsIn@45
KeyIsIn@45:	; 1 bytes @ 0x3
	global	KeyStopClear@53
KeyStopClear@53:	; 1 bytes @ 0x3
	global	GetTouchKeyValue@64
GetTouchKeyValue@64:	; 2 bytes @ 0x3
	ds	1
??_KeyClearIn:	; 1 bytes @ 0x4
??_KeyHave:	; 1 bytes @ 0x4
??_CheckKeyOldValue:	; 1 bytes @ 0x4
	global	KeyClearIn@51
KeyClearIn@51:	; 1 bytes @ 0x4
	global	KeyHave@58
KeyHave@58:	; 1 bytes @ 0x4
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x4
	ds	1
??_TurnKeyFlags:	; 1 bytes @ 0x5
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x5
	global	GetTouchKeyValue@63
GetTouchKeyValue@63:	; 2 bytes @ 0x5
	ds	1
??___lwmod:	; 1 bytes @ 0x6
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x6
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	ds	1
??_keyLedCtr:	; 1 bytes @ 0x7
??_fanCtr:	; 1 bytes @ 0x7
??_wuhuaCtr:	; 1 bytes @ 0x7
??_workCtr:	; 1 bytes @ 0x7
??___lwtoft:	; 1 bytes @ 0x7
	global	GetTouchKeyValue@62
GetTouchKeyValue@62:	; 1 bytes @ 0x7
	ds	1
??_CheckTouchKey:	; 1 bytes @ 0x8
??_WorkSleep:	; 1 bytes @ 0x8
??_main:	; 1 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_SystemEnterSleep:	; 1 bytes @ 0x0
??___ftpack:	; 1 bytes @ 0x0
??_CheckOnceResult:	; 1 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x0
	global	CheckKeyOldValue@79
CheckKeyOldValue@79:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x1
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x2
	global	CheckKeyOldValue@80
CheckKeyOldValue@80:	; 2 bytes @ 0x2
	global	SystemEnterSleep@94
SystemEnterSleep@94:	; 2 bytes @ 0x2
	ds	1
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x3
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x3
	global	ADC_Sample@adsum
ADC_Sample@adsum:	; 4 bytes @ 0x3
	ds	1
	global	CheckKeyOldValue@78
CheckKeyOldValue@78:	; 1 bytes @ 0x4
	global	CheckOnceResult@73
CheckOnceResult@73:	; 2 bytes @ 0x4
	global	SystemEnterSleep@93
SystemEnterSleep@93:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	2
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x6
	global	CheckOnceResult@70
CheckOnceResult@70:	; 1 bytes @ 0x6
	global	SystemEnterSleep@92
SystemEnterSleep@92:	; 2 bytes @ 0x6
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x6
	ds	1
	global	ADC_Sample@admin
ADC_Sample@admin:	; 2 bytes @ 0x7
	global	CheckOnceResult@72
CheckOnceResult@72:	; 2 bytes @ 0x7
	ds	1
	global	SystemEnterSleep@91
SystemEnterSleep@91:	; 1 bytes @ 0x8
	ds	1
	global	CheckOnceResult@69
CheckOnceResult@69:	; 1 bytes @ 0x9
	global	ADC_Sample@admax
ADC_Sample@admax:	; 2 bytes @ 0x9
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x9
	ds	1
	global	CheckOnceResult@71
CheckOnceResult@71:	; 2 bytes @ 0xA
	ds	1
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0xB
	ds	1
??___ftdiv:	; 1 bytes @ 0xC
	global	CheckOnceResult@68
CheckOnceResult@68:	; 1 bytes @ 0xC
	ds	1
	global	fanCtr@maxFanValue
fanCtr@maxFanValue:	; 1 bytes @ 0xD
	global	wuhuaCtr@wuhua_temp
wuhuaCtr@wuhua_temp:	; 4 bytes @ 0xD
	ds	1
	global	fanCtr@fan_temp
fanCtr@fan_temp:	; 4 bytes @ 0xE
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xF
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x10
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x13
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x14
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x15
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x15
	ds	4
??___fttol:	; 1 bytes @ 0x19
	ds	3
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x1C
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1D
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x21
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    14
;!    Data        0
;!    BSS         68
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      12
;!    BANK0            80     34      79
;!    BANK1            80      4      26
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _workCtr->_ADC_Sample
;!    _wuhuaCtr->_ADC_Sample
;!    _keyLedCtr->___lwmod
;!    _fanCtr->_ADC_Sample
;!    ___lwtoft->___ftpack
;!    ___ftdiv->___ftpack
;!    _SystemEnterSleep->_GetTouchKeyValue
;!    _CheckTouchKey->_GetTouchKeyValue
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
;!    _workCtr->___fttol
;!    _wuhuaCtr->_ADC_Sample
;!    _fanCtr->_ADC_Sample
;!    ___lwtoft->___ftpack
;!    ___fttol->___ftdiv
;!    ___ftdiv->___lwtoft
;!    _WorkSleep->_SystemEnterSleep
;!    _CheckTouchKey->_CheckOnceResult
;!
;!Critical Paths under _Isr_Timer in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_workCtr
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
;! (0) _main                                                 0     0      0   13378
;!                      _CheckTouchKey
;!                        _Init_System
;!                          _KeyServer
;!                      _Refurbish_Sfr
;!                          _WorkSleep
;!                            _chrgCtr
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              4     4      0    9375
;!                                              0 BANK1      4     4      0
;!                         _ADC_Sample
;!                            ___ftdiv
;!                            ___fttol
;!                           ___lwtoft
;!                             _fanCtr
;!                          _keyLedCtr
;!                           _wuhuaCtr
;! ---------------------------------------------------------------------------------
;! (2) _wuhuaCtr                                             4     4      0    1410
;!                                             13 BANK0      4     4      0
;!                         _ADC_Sample
;!                             ___lmul
;!                            _pwmInit
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (3) _pwmStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _pwmInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _keyLedCtr                                            0     0      0     492
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              5     1      4     492
;!                                              2 COMMON     5     1      4
;! ---------------------------------------------------------------------------------
;! (2) _fanCtr                                               5     5      0    1478
;!                                             13 BANK0      5     5      0
;!                         _ADC_Sample
;!                             ___lmul
;!                            _fanInit
;!                            _fanStop
;! ---------------------------------------------------------------------------------
;! (3) _fanStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _fanInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) ___lmul                                              12     4      8     396
;!                                              2 COMMON     4     4      0
;!                                              0 BANK0      8     0      8
;! ---------------------------------------------------------------------------------
;! (3) _ADC_Sample                                          18    17      1     977
;!                                              2 COMMON     5     4      1
;!                                              0 BANK0     13    13      0
;! ---------------------------------------------------------------------------------
;! (2) ___lwtoft                                             3     0      3    2044
;!                                              3 BANK0      3     0      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             13     9      4     436
;!                                             21 BANK0     13     9      4
;!                            ___ftdiv (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             15     9      6    2504
;!                                              6 BANK0     15     9      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    1948
;!                                              2 COMMON     5     0      5
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _WorkSleep                                            0     0      0     837
;!                      _Refurbish_Sfr
;!                   _SystemEnterSleep
;! ---------------------------------------------------------------------------------
;! (2) _SystemEnterSleep                                     9     9      0     837
;!                                              0 BANK0      9     9      0
;!                        _ClearResSum
;!                   _GetTouchKeyValue
;!                        _KeyClearOne
;! ---------------------------------------------------------------------------------
;! (2) _Refurbish_Sfr                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _KeyServer                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _CheckTouchKey                                        0     0      0    3166
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
;! (3) _GetTouchKeyValue                                     5     5      0     181
;!                                              3 COMMON     5     5      0
;!                        _ClearResSum
;! ---------------------------------------------------------------------------------
;! (4) _ClearResSum                                          1     1      0      45
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _CheckValidTime                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _CheckOnceResult                                     13    13      0    1932
;!                                              0 BANK0     13    13      0
;!                        _KeyClearOne
;!                            _KeyHave
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (3) _KeyHave                                              3     1      2     344
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
;!       _GetTouchKeyValue
;!         _ClearResSum
;!       _KeyClearOne
;!   _chrgCtr
;!   _workCtr
;!     _ADC_Sample
;!     ___ftdiv
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___fttol
;!       ___ftdiv (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___lwtoft
;!       ___ftpack
;!     _fanCtr
;!       _ADC_Sample
;!       ___lmul
;!       _fanInit
;!       _fanStop
;!     _keyLedCtr
;!       ___lwmod
;!     _wuhuaCtr
;!       _ADC_Sample
;!       ___lmul
;!       _pwmInit
;!       _pwmStop
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
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50     22      4F       4       98.8%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      4      1A       6       32.5%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0      75       8        0.0%
;!DATA                 0      0      75       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 611 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
;;		On exit  : 300/100
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
;;		_chrgCtr
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	611
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	611
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	613
	
l4294:	
;main.c: 613: Init_System();
	fcall	_Init_System
	line	614
	
l4296:	
;main.c: 614: firstLock = 1;
	clrf	(_firstLock)^080h
	incf	(_firstLock)^080h,f
	line	615
	
l4298:	
;main.c: 615: firstTime = 200;
	movlw	low(0C8h)
	movwf	(_firstTime)^080h
	line	618
	
l4300:	
;main.c: 617: {
;main.c: 618: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u4271
	goto	u4270
u4271:
	goto	l4300
u4270:
	line	620
	
l4302:	
;main.c: 619: {
;main.c: 620: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	621
# 621 "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
clrwdt ;# 
psect	maintext
	line	623
	
l4304:	
;main.c: 623: CheckTouchKey();
	fcall	_CheckTouchKey
	line	624
	
l4306:	
;main.c: 624: chrgCtr();
	fcall	_chrgCtr
	line	625
	
l4308:	
;main.c: 625: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	626
	
l4310:	
;main.c: 626: KeyServer();
	fcall	_KeyServer
	line	627
	
l4312:	
;main.c: 627: workCtr();
	fcall	_workCtr
	line	628
	
l4314:	
;main.c: 628: if(firstTime == 0 && chrgFlag == 0 && workStep == 0 && wuhuaFlag == 0 && shanshuoTime == 0 && shanshuoTime2 == 0)
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstTime)^080h),w
	btfss	status,2
	goto	u4281
	goto	u4280
u4281:
	goto	l4328
u4280:
	
l4316:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u4291
	goto	u4290
u4291:
	goto	l4328
u4290:
	
l4318:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u4301
	goto	u4300
u4301:
	goto	l4328
u4300:
	
l4320:	
	movf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u4311
	goto	u4310
u4311:
	goto	l4328
u4310:
	
l4322:	
	movf	((_shanshuoTime)),w
iorwf	((_shanshuoTime+1)),w
	btfss	status,2
	goto	u4321
	goto	u4320
u4321:
	goto	l4328
u4320:
	
l4324:	
	movf	((_shanshuoTime2)),w
iorwf	((_shanshuoTime2+1)),w
	btfss	status,2
	goto	u4331
	goto	u4330
u4331:
	goto	l4328
u4330:
	line	630
	
l4326:	
;main.c: 629: {
;main.c: 630: WorkSleep();
	fcall	_WorkSleep
	line	631
;main.c: 631: }
	goto	l4300
	line	634
	
l4328:	
;main.c: 632: else
;main.c: 633: {
;main.c: 634: time = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_time)^080h
	clrf	(_time+1)^080h
	goto	l4300
	global	start
	ljmp	start
	opt stack 0
	line	638
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 557 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  power_temp      4    0[BANK1 ] volatile unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       4       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Sample
;;		___ftdiv
;;		___fttol
;;		___lwtoft
;;		_fanCtr
;;		_keyLedCtr
;;		_wuhuaCtr
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	557
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	557
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	559
	
l4218:	
;main.c: 559: test_adc = ADC_Sample(31, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(01Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	560
	
l4220:	
;main.c: 560: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u4151
	goto	u4150
u4151:
	goto	l4226
u4150:
	line	564
	
l4222:	
;main.c: 561: {
;main.c: 562: volatile unsigned long power_temp;
;main.c: 564: power_temp = (unsigned long)(((4096UL*1.2*1000))/adresult);
	movlw	0x0
	movwf	(___ftdiv@f1)
	movlw	0x96
	movwf	(___ftdiv@f1+1)
	movlw	0x4a
	movwf	(___ftdiv@f1+2)
	movf	(_adresult+1),w	;volatile
	movwf	(___lwtoft@c+1)
	movf	(_adresult),w	;volatile
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(workCtr@power_temp+3)^080h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(workCtr@power_temp+2)^080h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(workCtr@power_temp+1)^080h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(workCtr@power_temp)^080h	;volatile

	line	565
	
l4224:	
;main.c: 565: power_ad = (unsigned int)(power_temp);
	movf	(workCtr@power_temp+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_power_ad+1)	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movf	(workCtr@power_temp)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_power_ad)	;volatile
	line	567
	
l4226:	
;main.c: 566: }
;main.c: 567: if(workStep == 2 && power_ad < 3550)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u4161
	goto	u4160
u4161:
	goto	l4236
u4160:
	
l4228:	
	movlw	0Dh
	subwf	(_power_ad+1),w	;volatile
	movlw	0DEh
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u4171
	goto	u4170
u4171:
	goto	l4236
u4170:
	line	569
	
l4230:	
;main.c: 568: {
;main.c: 569: if(++lowFanTime > 1000)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_lowFanTime)^080h,f
	skipnz
	incf	(_lowFanTime+1)^080h,f
	movlw	03h
	subwf	((_lowFanTime+1)^080h),w
	movlw	0E9h
	skipnz
	subwf	((_lowFanTime)^080h),w
	skipc
	goto	u4181
	goto	u4180
u4181:
	goto	l4238
u4180:
	line	571
	
l4232:	
;main.c: 570: {
;main.c: 571: lowFanTime = 0;
	clrf	(_lowFanTime)^080h
	clrf	(_lowFanTime+1)^080h
	line	572
	
l4234:	
;main.c: 572: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l4238
	line	577
	
l4236:	
;main.c: 575: else
;main.c: 576: {
;main.c: 577: lowFanTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_lowFanTime)^080h
	clrf	(_lowFanTime+1)^080h
	line	579
	
l4238:	
;main.c: 578: }
;main.c: 579: if(power_ad < 2900)
	movlw	0Bh
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_power_ad+1),w	;volatile
	movlw	054h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u4191
	goto	u4190
u4191:
	goto	l4246
u4190:
	line	581
	
l4240:	
;main.c: 580: {
;main.c: 581: if(++lowBatTime > 1000)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_lowBatTime)^080h,f
	skipnz
	incf	(_lowBatTime+1)^080h,f
	movlw	03h
	subwf	((_lowBatTime+1)^080h),w
	movlw	0E9h
	skipnz
	subwf	((_lowBatTime)^080h),w
	skipc
	goto	u4201
	goto	u4200
u4201:
	goto	l4248
u4200:
	line	583
	
l4242:	
;main.c: 582: {
;main.c: 583: lowBatTime = 0;
	clrf	(_lowBatTime)^080h
	clrf	(_lowBatTime+1)^080h
	line	584
	
l4244:	
;main.c: 584: lowBatLock = 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowBatLock)
	incf	(_lowBatLock),f
	line	585
;main.c: 585: workStep = 0;
	clrf	(_workStep)
	line	586
;main.c: 586: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	goto	l4248
	line	591
	
l4246:	
;main.c: 589: else
;main.c: 590: {
;main.c: 591: lowBatTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_lowBatTime)^080h
	clrf	(_lowBatTime+1)^080h
	line	593
	
l4248:	
;main.c: 592: }
;main.c: 593: if(firstTime > 0)
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstTime)^080h),w
	btfsc	status,2
	goto	u4211
	goto	u4210
u4211:
	goto	l4256
u4210:
	line	595
	
l4250:	
;main.c: 594: {
;main.c: 595: firstTime--;
	decf	(_firstTime)^080h,f
	line	596
	
l4252:	
;main.c: 596: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	597
	
l4254:	
;main.c: 597: PORTA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	598
;main.c: 598: }
	goto	l1060
	line	601
	
l4256:	
;main.c: 599: else
;main.c: 600: {
;main.c: 601: keyLedCtr();
	fcall	_keyLedCtr
	line	602
;main.c: 602: fanCtr();
	fcall	_fanCtr
	line	603
;main.c: 603: wuhuaCtr();
	fcall	_wuhuaCtr
	line	606
	
l1060:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_wuhuaCtr

;; *************** function _wuhuaCtr *****************
;; Defined at:
;;		line 510 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wuhua_temp      4   13[BANK0 ] volatile unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       4       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Sample
;;		___lmul
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	510
global __ptext2
__ptext2:	;psect for function _wuhuaCtr
psect	text2
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	510
	global	__size_of_wuhuaCtr
	__size_of_wuhuaCtr	equ	__end_of_wuhuaCtr-_wuhuaCtr
	
_wuhuaCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _wuhuaCtr: [wreg+status,2+status,0+pclath+cstack]
	line	512
	
l3996:	
;main.c: 512: if(count1s == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_count1s)),w
	btfss	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l4002
u3790:
	line	514
	
l3998:	
;main.c: 513: {
;main.c: 514: if(++count10s >= 10)
	movlw	low(0Ah)
	incf	(_count10s),f
	subwf	((_count10s)),w
	skipc
	goto	u3801
	goto	u3800
u3801:
	goto	l4002
u3800:
	line	516
	
l4000:	
;main.c: 515: {
;main.c: 516: count10s = 0;
	clrf	(_count10s)
	line	519
	
l4002:	
;main.c: 517: }
;main.c: 518: }
;main.c: 519: if(wuhuaFlag == 1 || (wuhuaFlag == 2 && count10s < 5))
		decf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l4008
u3810:
	
l4004:	
		movlw	2
	xorwf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l4022
u3820:
	
l4006:	
	movlw	low(05h)
	subwf	(_count10s),w
	skipnc
	goto	u3831
	goto	u3830
u3831:
	goto	l4022
u3830:
	line	521
	
l4008:	
;main.c: 520: {
;main.c: 521: pwmInit();
	fcall	_pwmInit
	line	535
;main.c: 535: test_adc = ADC_Sample(3, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(03h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	536
	
l4010:	
;main.c: 536: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3841
	goto	u3840
u3841:
	goto	l1048
u3840:
	line	539
	
l4012:	
;main.c: 537: {
;main.c: 538: volatile unsigned long wuhua_temp;
;main.c: 539: if(power_ad > 0)
	movf	((_power_ad)),w	;volatile
iorwf	((_power_ad+1)),w	;volatile
	btfsc	status,2
	goto	u3851
	goto	u3850
u3851:
	goto	l1046
u3850:
	line	541
	
l4014:	
;main.c: 540: {
;main.c: 541: wuhua_temp = (unsigned long)(1UL*adresult * power_ad)/4096;
	movf	(_adresult),w	;volatile
	movwf	(___lmul@multiplier)
	movf	(_adresult+1),w	;volatile
	movwf	((___lmul@multiplier))+1
	clrf	2+((___lmul@multiplier))
	clrf	3+((___lmul@multiplier))
	movf	(_power_ad),w	;volatile
	movwf	(___lmul@multiplicand)
	movf	(_power_ad+1),w	;volatile
	movwf	((___lmul@multiplicand))+1
	clrf	2+((___lmul@multiplicand))
	clrf	3+((___lmul@multiplicand))
	fcall	___lmul
	movf	(3+(?___lmul)),w
	movwf	(wuhuaCtr@wuhua_temp+3)	;volatile
	movf	(2+(?___lmul)),w
	movwf	(wuhuaCtr@wuhua_temp+2)	;volatile
	movf	(1+(?___lmul)),w
	movwf	(wuhuaCtr@wuhua_temp+1)	;volatile
	movf	(0+(?___lmul)),w
	movwf	(wuhuaCtr@wuhua_temp)	;volatile

	
l4016:	
	movlw	0Ch
u3865:
	clrc
	rrf	(wuhuaCtr@wuhua_temp+3),f	;volatile
	rrf	(wuhuaCtr@wuhua_temp+2),f	;volatile
	rrf	(wuhuaCtr@wuhua_temp+1),f	;volatile
	rrf	(wuhuaCtr@wuhua_temp),f	;volatile
	addlw	-1
	skipz
	goto	u3865

	line	542
	
l4018:	
;main.c: 542: wuhuaValue = (unsigned int)(wuhua_temp);
	movf	(wuhuaCtr@wuhua_temp+1),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_wuhuaValue+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(wuhuaCtr@wuhua_temp),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_wuhuaValue)^080h
	goto	l1048
	line	548
	
l1046:	
	line	549
;main.c: 548: }
;main.c: 549: }
	goto	l1048
	line	552
	
l4022:	
;main.c: 550: else
;main.c: 551: {
;main.c: 552: pwmStop();
	fcall	_pwmStop
	line	554
	
l1048:	
	return
	opt stack 0
GLOBAL	__end_of_wuhuaCtr
	__end_of_wuhuaCtr:
	signat	_wuhuaCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 433 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 300/0
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
;;		_wuhuaCtr
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	433
global __ptext3
__ptext3:	;psect for function _pwmStop
psect	text3
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	433
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [status,2]
	line	435
	
l3758:	
;main.c: 435: PWMD0L = 0;
	clrf	(25)	;volatile
	line	436
	
l3760:	
;main.c: 436: PWMCON0 &= 0xFE;
	bcf	(21)+(0/8),(0)&7	;volatile
	line	437
	
l3762:	
;main.c: 437: PORTA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(5/8),(5)&7	;volatile
	line	438
	
l1014:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 421 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
;;		_wuhuaCtr
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	421
global __ptext4
__ptext4:	;psect for function _pwmInit
psect	text4
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	421
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2+status,0]
	line	424
	
l3748:	
;main.c: 424: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	425
	
l3750:	
;main.c: 425: PWMTL = 73;
	movlw	low(049h)
	movwf	(23)	;volatile
	line	426
	
l3752:	
;main.c: 426: PWMD01H = 0x00;
	clrf	(30)	;volatile
	line	427
;main.c: 427: PWMD0L = 32;
	movlw	low(020h)
	movwf	(25)	;volatile
	line	428
;main.c: 428: PWMCON1 = 0x40;
	movlw	low(040h)
	movwf	(22)	;volatile
	line	429
	
l3754:	
;main.c: 429: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	430
	
l3756:	
;main.c: 430: PWMCON0 |= 0x21;
	movlw	low(021h)
	iorwf	(21),f	;volatile
	line	431
	
l1011:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_keyLedCtr

;; *************** function _keyLedCtr *****************
;; Defined at:
;;		line 375 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
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
;;		___lwmod
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	375
global __ptext5
__ptext5:	;psect for function _keyLedCtr
psect	text5
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	375
	global	__size_of_keyLedCtr
	__size_of_keyLedCtr	equ	__end_of_keyLedCtr-_keyLedCtr
	
_keyLedCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyLedCtr: [wreg+status,2+status,0+pclath+cstack]
	line	377
	
l3922:	
;main.c: 377: if(shanshuoTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_shanshuoTime)),w
iorwf	((_shanshuoTime+1)),w
	btfsc	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l3930
u3630:
	line	379
	
l3924:	
;main.c: 378: {
;main.c: 379: shanshuoTime--;
	movlw	01h
	subwf	(_shanshuoTime),f
	movlw	0
	skipc
	decf	(_shanshuoTime+1),f
	subwf	(_shanshuoTime+1),f
	line	380
	
l3926:	
;main.c: 380: if((shanshuoTime % 150) < 75)
	movlw	096h
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_shanshuoTime+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_shanshuoTime),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movlw	0
	subwf	(1+(?___lwmod)),w
	movlw	04Bh
	skipnz
	subwf	(0+(?___lwmod)),w
	skipnc
	goto	u3641
	goto	u3640
u3641:
	goto	l997
u3640:
	line	382
	
l3928:	
;main.c: 381: {
;main.c: 382: PORTA |= 0x01;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(0/8),(0)&7	;volatile
	line	383
;main.c: 383: }
	goto	l3934
	line	384
	
l997:	
	line	386
;main.c: 384: else
;main.c: 385: {
;main.c: 386: PORTA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(0/8),(0)&7	;volatile
	goto	l3934
	line	389
	
l3930:	
;main.c: 389: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3651
	goto	u3650
u3651:
	goto	l3928
u3650:
	goto	l997
	line	398
	
l3934:	
;main.c: 396: }
;main.c: 398: if(shanshuoTime2 > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_shanshuoTime2)),w
iorwf	((_shanshuoTime2+1)),w
	btfsc	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l3942
u3660:
	line	400
	
l3936:	
;main.c: 399: {
;main.c: 400: shanshuoTime2--;
	movlw	01h
	subwf	(_shanshuoTime2),f
	movlw	0
	skipc
	decf	(_shanshuoTime2+1),f
	subwf	(_shanshuoTime2+1),f
	line	401
	
l3938:	
;main.c: 401: if((shanshuoTime2 % 150) < 75)
	movlw	096h
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_shanshuoTime2+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_shanshuoTime2),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movlw	0
	subwf	(1+(?___lwmod)),w
	movlw	04Bh
	skipnz
	subwf	(0+(?___lwmod)),w
	skipnc
	goto	u3671
	goto	u3670
u3671:
	goto	l1003
u3670:
	line	403
	
l3940:	
;main.c: 402: {
;main.c: 403: PORTA |= 0x10;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(4/8),(4)&7	;volatile
	line	404
;main.c: 404: }
	goto	l1008
	line	405
	
l1003:	
	line	407
;main.c: 405: else
;main.c: 406: {
;main.c: 407: PORTA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(4/8),(4)&7	;volatile
	goto	l1008
	line	410
	
l3942:	
;main.c: 410: else if(wuhuaFlag > 0)
	movf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l3940
u3680:
	goto	l1003
	line	419
	
l1008:	
	return
	opt stack 0
GLOBAL	__end_of_keyLedCtr
	__end_of_keyLedCtr:
	signat	_keyLedCtr,89
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyLedCtr
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___lwmod
psect	text6
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l3816:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l3832
u3500:
	line	14
	
l3818:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l3822
	line	16
	
l3820:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l3822:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l3820
u3510:
	line	20
	
l3824:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3525
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3525:
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l3828
u3520:
	line	21
	
l3826:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l3828:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l3830:	
	decfsz	(___lwmod@counter),f
	goto	u3531
	goto	u3530
u3531:
	goto	l3824
u3530:
	line	25
	
l3832:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1649:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_fanCtr

;; *************** function _fanCtr *****************
;; Defined at:
;;		line 459 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  fan_temp        4   14[BANK0 ] volatile unsigned long 
;;  maxFanValue     1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       5       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Sample
;;		___lmul
;;		_fanInit
;;		_fanStop
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	459
global __ptext7
__ptext7:	;psect for function _fanCtr
psect	text7
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	459
	global	__size_of_fanCtr
	__size_of_fanCtr	equ	__end_of_fanCtr-_fanCtr
	
_fanCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _fanCtr: [wreg+status,2+status,0+pclath+cstack]
	line	461
	
l3946:	
;main.c: 461: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l3990
u3690:
	line	463
	
l3948:	
;main.c: 462: {
;main.c: 463: PORTA |= 0x04;
	bsf	(134)^080h+(2/8),(2)&7	;volatile
	line	464
	
l3950:	
;main.c: 464: unsigned char maxFanValue = 48;
	movlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fanCtr@maxFanValue)
	line	465
	
l3952:	
;main.c: 465: if(workStep == 1 || power_ad < 3350)
		decf	((_workStep)),w
	btfsc	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l3956
u3700:
	
l3954:	
	movlw	0Dh
	subwf	(_power_ad+1),w	;volatile
	movlw	016h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u3711
	goto	u3710
u3711:
	goto	l3958
u3710:
	line	467
	
l3956:	
;main.c: 466: {
;main.c: 467: maxFanValue = 32;
	movlw	low(020h)
	movwf	(fanCtr@maxFanValue)
	line	469
	
l3958:	
;main.c: 468: }
;main.c: 469: test_adc = ADC_Sample(13, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(0Dh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	470
	
l3960:	
;main.c: 470: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3721
	goto	u3720
u3721:
	goto	l3970
u3720:
	line	473
	
l3962:	
;main.c: 471: {
;main.c: 472: volatile unsigned long fan_temp;
;main.c: 473: if(power_ad > 0)
	movf	((_power_ad)),w	;volatile
iorwf	((_power_ad+1)),w	;volatile
	btfsc	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l3970
u3730:
	line	475
	
l3964:	
;main.c: 474: {
;main.c: 475: fan_temp = ((unsigned long)1UL*adresult * power_ad)/4096;
	movf	(_adresult),w	;volatile
	movwf	(___lmul@multiplier)
	movf	(_adresult+1),w	;volatile
	movwf	((___lmul@multiplier))+1
	clrf	2+((___lmul@multiplier))
	clrf	3+((___lmul@multiplier))
	movf	(_power_ad),w	;volatile
	movwf	(___lmul@multiplicand)
	movf	(_power_ad+1),w	;volatile
	movwf	((___lmul@multiplicand))+1
	clrf	2+((___lmul@multiplicand))
	clrf	3+((___lmul@multiplicand))
	fcall	___lmul
	movf	(3+(?___lmul)),w
	movwf	(fanCtr@fan_temp+3)	;volatile
	movf	(2+(?___lmul)),w
	movwf	(fanCtr@fan_temp+2)	;volatile
	movf	(1+(?___lmul)),w
	movwf	(fanCtr@fan_temp+1)	;volatile
	movf	(0+(?___lmul)),w
	movwf	(fanCtr@fan_temp)	;volatile

	
l3966:	
	movlw	0Ch
u3745:
	clrc
	rrf	(fanCtr@fan_temp+3),f	;volatile
	rrf	(fanCtr@fan_temp+2),f	;volatile
	rrf	(fanCtr@fan_temp+1),f	;volatile
	rrf	(fanCtr@fan_temp),f	;volatile
	addlw	-1
	skipz
	goto	u3745

	line	476
	
l3968:	
;main.c: 476: fanValue = (unsigned int)(fan_temp);
	movf	(fanCtr@fan_temp+1),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fanValue+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(fanCtr@fan_temp),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fanValue)^080h
	line	479
	
l3970:	
;main.c: 477: }
;main.c: 478: }
;main.c: 479: if(fanValue > 1300)
	movlw	05h
	bsf	status, 5	;RP0=1, select bank1
	subwf	(_fanValue+1)^080h,w
	movlw	015h
	skipnz
	subwf	(_fanValue)^080h,w
	skipc
	goto	u3751
	goto	u3750
u3751:
	goto	l3978
u3750:
	line	481
	
l3972:	
;main.c: 480: {
;main.c: 481: if(++fanOverTime > 50)
	movlw	low(033h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_fanOverTime),f
	subwf	((_fanOverTime)),w
	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l3980
u3760:
	line	483
	
l3974:	
;main.c: 482: {
;main.c: 483: fanOverTime = 0;
	clrf	(_fanOverTime)
	line	484
;main.c: 484: workStep = 0;
	clrf	(_workStep)
	line	485
	
l3976:	
;main.c: 485: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	goto	l3980
	line	490
	
l3978:	
;main.c: 488: else
;main.c: 489: {
;main.c: 490: fanOverTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_fanOverTime)
	line	492
	
l3980:	
;main.c: 491: }
;main.c: 492: if(fanDuty < maxFanValue)
	movf	(fanCtr@maxFanValue),w
	subwf	(_fanDuty),w
	skipnc
	goto	u3771
	goto	u3770
u3771:
	goto	l3984
u3770:
	line	494
	
l3982:	
;main.c: 493: {
;main.c: 494: fanDuty++;
	incf	(_fanDuty),f
	line	495
;main.c: 495: }
	goto	l3988
	line	496
	
l3984:	
;main.c: 496: else if(fanDuty > maxFanValue)
	movf	(_fanDuty),w
	subwf	(fanCtr@maxFanValue),w
	skipnc
	goto	u3781
	goto	u3780
u3781:
	goto	l3988
u3780:
	line	498
	
l3986:	
;main.c: 497: {
;main.c: 498: fanDuty--;
	decf	(_fanDuty),f
	line	500
	
l3988:	
;main.c: 499: }
;main.c: 500: fanInit();
	fcall	_fanInit
	line	501
;main.c: 501: }
	goto	l1036
	line	504
	
l3990:	
;main.c: 502: else
;main.c: 503: {
;main.c: 504: fanStop();
	fcall	_fanStop
	line	505
	
l3992:	
;main.c: 505: fanDuty = 0;
	clrf	(_fanDuty)
	line	506
	
l3994:	
;main.c: 506: PORTA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(2/8),(2)&7	;volatile
	line	508
	
l1036:	
	return
	opt stack 0
GLOBAL	__end_of_fanCtr
	__end_of_fanCtr:
	signat	_fanCtr,89
	global	_fanStop

;; *************** function _fanStop *****************
;; Defined at:
;;		line 452 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
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
;;		_fanCtr
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	452
global __ptext8
__ptext8:	;psect for function _fanStop
psect	text8
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	452
	global	__size_of_fanStop
	__size_of_fanStop	equ	__end_of_fanStop-_fanStop
	
_fanStop:	
;incstack = 0
	opt	stack 4
; Regs used in _fanStop: [status,2]
	line	454
	
l3774:	
;main.c: 454: PWMD1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(26)	;volatile
	line	455
	
l3776:	
;main.c: 455: PWMCON0 &= 0xFD;
	bcf	(21)+(1/8),(1)&7	;volatile
	line	456
	
l3778:	
;main.c: 456: PORTB &= 0x7F;
	bcf	(6)+(7/8),(7)&7	;volatile
	line	457
	
l1020:	
	return
	opt stack 0
GLOBAL	__end_of_fanStop
	__end_of_fanStop:
	signat	_fanStop,89
	global	_fanInit

;; *************** function _fanInit *****************
;; Defined at:
;;		line 440 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
;;		_fanCtr
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	440
global __ptext9
__ptext9:	;psect for function _fanInit
psect	text9
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	440
	global	__size_of_fanInit
	__size_of_fanInit	equ	__end_of_fanInit-_fanInit
	
_fanInit:	
;incstack = 0
	opt	stack 4
; Regs used in _fanInit: [wreg+status,2+status,0]
	line	443
	
l3764:	
;main.c: 443: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	444
	
l3766:	
;main.c: 444: PWMTL = 73;
	movlw	low(049h)
	movwf	(23)	;volatile
	line	445
	
l3768:	
;main.c: 445: PWMD01H = 0x00;
	clrf	(30)	;volatile
	line	446
;main.c: 446: PWMD1L = fanDuty;
	movf	(_fanDuty),w
	movwf	(26)	;volatile
	line	447
;main.c: 447: PWMCON1 = 0x40;
	movlw	low(040h)
	movwf	(22)	;volatile
	line	448
	
l3770:	
;main.c: 448: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	449
	
l3772:	
;main.c: 449: PWMCON0 |= 0x22;
	movlw	low(022h)
	iorwf	(21),f	;volatile
	line	450
	
l1017:	
	return
	opt stack 0
GLOBAL	__end_of_fanInit
	__end_of_fanInit:
	signat	_fanInit,89
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[BANK0 ] unsigned long 
;;  multiplicand    4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    2[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       8       0       0
;;      Locals:         4       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       8       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fanCtr
;;		_wuhuaCtr
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul32.c"
	line	15
global __ptext10
__ptext10:	;psect for function ___lmul
psect	text10
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	119
	
l3780:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	120
	
l1311:	
	line	121
	btfss	(___lmul@multiplier),(0)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l3784
u3390:
	line	122
	
l3782:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3401
	addwf	(___lmul@product+1),f
u3401:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3402
	addwf	(___lmul@product+2),f
u3402:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3403
	addwf	(___lmul@product+3),f
u3403:

	line	123
	
l3784:	
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	124
	
l3786:	
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	line	125
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l1311
u3410:
	line	128
	
l3788:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	129
	
l1314:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 268 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;;  adldo           1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    1[BANK0 ] unsigned char 
;;  j               1    0[BANK0 ] unsigned char 
;;  adsum           4    3[BANK0 ] volatile unsigned long 
;;  ad_temp         2   11[BANK0 ] volatile unsigned int 
;;  admax           2    9[BANK0 ] volatile unsigned int 
;;  admin           2    7[BANK0 ] volatile unsigned int 
;;  i               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         0      13       0       0
;;      Temps:          4       0       0       0
;;      Totals:         5      13       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fanCtr
;;		_wuhuaCtr
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	268
global __ptext11
__ptext11:	;psect for function _ADC_Sample
psect	text11
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	268
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	270
	
l3676:	
;main.c: 270: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	271
	
l3678:	
;main.c: 271: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	272
;main.c: 272: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	274
	
l3680:	
;main.c: 274: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u3241
	goto	u3240
u3241:
	goto	l3686
u3240:
	
l3682:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l3686
u3250:
	line	277
	
l3684:	
;main.c: 275: {
;main.c: 277: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	278
;main.c: 278: _delay((unsigned long)((100)*(8000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
movwf	((??_ADC_Sample+0)+0),f
	u4347:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u4347
	nop
opt asmopt_pop

	line	279
;main.c: 279: }
	goto	l3688
	line	281
	
l3686:	
;main.c: 280: else
;main.c: 281: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	283
	
l3688:	
;main.c: 283: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l3694
u3260:
	line	285
	
l3690:	
;main.c: 284: {
;main.c: 285: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	286
	
l3692:	
;main.c: 286: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	288
	
l3694:	
	line	289
	
l3696:	
;main.c: 289: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	291
	
l3702:	
;main.c: 290: {
;main.c: 291: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u3275:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u3275
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	292
# 292 "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
nop ;# 
	line	293
# 293 "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
nop ;# 
	line	294
# 294 "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
nop ;# 
	line	295
# 295 "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
nop ;# 
psect	text11
	line	296
	
l3704:	
;main.c: 296: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	298
	
l3706:	
;main.c: 298: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	299
;main.c: 299: while (GODONE)
	goto	l969
	
l970:	
	line	301
;main.c: 300: {
;main.c: 301: _delay((unsigned long)((2)*(8000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	303
;main.c: 303: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u3281
	goto	u3280
u3281:
	goto	l969
u3280:
	line	304
	
l3708:	
;main.c: 304: return 0;
	movlw	low(0)
	goto	l972
	line	305
	
l969:	
	line	299
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3291
	goto	u3290
u3291:
	goto	l970
u3290:
	line	307
	
l3712:	
;main.c: 305: }
;main.c: 307: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
	movf	(153)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	swapf	(ADC_Sample@ad_temp),f	;volatile
	swapf	(ADC_Sample@ad_temp+1),f	;volatile
	movlw	0f0h
	andwf	(ADC_Sample@ad_temp+1),f	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	andlw	0fh
	iorwf	(ADC_Sample@ad_temp+1),f	;volatile
	movlw	0f0h
	andwf	(ADC_Sample@ad_temp),f	;volatile
	
l3714:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	309
	
l3716:	
;main.c: 309: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l3720
u3300:
	line	311
	
l3718:	
;main.c: 310: {
;main.c: 311: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	312
;main.c: 312: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	313
;main.c: 313: }
	goto	l975
	line	314
	
l3720:	
;main.c: 314: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u3315
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u3315:
	skipnc
	goto	u3311
	goto	u3310
u3311:
	goto	l3724
u3310:
	line	315
	
l3722:	
;main.c: 315: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l975
	line	316
	
l3724:	
;main.c: 316: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u3325
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u3325:
	skipnc
	goto	u3321
	goto	u3320
u3321:
	goto	l975
u3320:
	line	317
	
l3726:	
;main.c: 317: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	319
	
l975:	
;main.c: 319: adsum += ad_temp;
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	addwf	(ADC_Sample@adsum),f	;volatile
	movf	1+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3331
	addwf	(ADC_Sample@adsum+1),f	;volatile
u3331:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3332
	addwf	(ADC_Sample@adsum+2),f	;volatile
u3332:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3333
	addwf	(ADC_Sample@adsum+3),f	;volatile
u3333:

	line	289
	
l3728:	
	incf	(ADC_Sample@i),f
	
l3730:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3341
	goto	u3340
u3341:
	goto	l3702
u3340:
	line	321
	
l3732:	
;main.c: 320: }
;main.c: 321: adsum -= admax;
	movf	(ADC_Sample@admax),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admax+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),f	;volatile
	movf	1+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	1+(??_ADC_Sample+0)+0,w
	goto	u3355
	goto	u3356
u3355:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3356:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3357
	goto	u3358
u3357:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3358:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3359
	goto	u3350
u3359:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3350:

	line	322
;main.c: 322: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u3365
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u3365
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u3365
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u3365:
	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l979
u3360:
	line	323
	
l3734:	
;main.c: 323: adsum -= admin;
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),f	;volatile
	movf	1+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	1+(??_ADC_Sample+0)+0,w
	goto	u3375
	goto	u3376
u3375:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3376:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3377
	goto	u3378
u3377:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3378:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3379
	goto	u3370
u3379:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3370:

	goto	l3736
	line	324
	
l979:	
	line	325
;main.c: 324: else
;main.c: 325: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	327
	
l3736:	
;main.c: 327: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u3385:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u3380:
	addlw	-1
	skipz
	goto	u3385
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	329
	
l3738:	
;main.c: 329: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	330
	
l3740:	
;main.c: 330: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	331
	
l3742:	
;main.c: 331: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	332
	
l3744:	
;main.c: 332: return 0xA5;
	movlw	low(0A5h)
	line	334
	
l972:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    3[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       3       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
	line	28
global __ptext12
__ptext12:	;psect for function ___lwtoft
psect	text12
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l4174:	
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	low(08Eh)
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	line	31
	
l1654:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   21[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   29[BANK0 ] unsigned long 
;;  exp1            1   33[BANK0 ] unsigned char 
;;  sign1           1   28[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   21[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       6       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0      13       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
	line	44
global __ptext13
__ptext13:	;psect for function ___fttol
psect	text13
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l4134:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(___fttol@exp1)
	movf	(((___fttol@exp1))),w
	btfss	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l4138
u4040:
	line	50
	
l4136:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l1545
	line	51
	
l4138:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u4055:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u4050:
	addlw	-1
	skipz
	goto	u4055
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l4140:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l4142:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l4144:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l4146:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l4148:	
	btfss	(___fttol@exp1),7
	goto	u4061
	goto	u4060
u4061:
	goto	l4158
u4060:
	line	57
	
l4150:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4071
	goto	u4070
u4071:
	goto	l4154
u4070:
	goto	l4136
	line	60
	
l4154:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l4156:	
	incfsz	(___fttol@exp1),f
	goto	u4081
	goto	u4080
u4081:
	goto	l4154
u4080:
	goto	l4166
	line	63
	
l4158:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u4091
	goto	u4090
u4091:
	goto	l4164
u4090:
	goto	l4136
	line	66
	
l4162:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	65
	
l4164:	
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u4101
	goto	u4100
u4101:
	goto	l4162
u4100:
	line	70
	
l4166:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u4111
	goto	u4110
u4111:
	goto	l4170
u4110:
	line	71
	
l4168:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	line	72
	
l4170:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l1545:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 56 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    6[BANK0 ] float 
;;  f1              3    9[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   16[BANK0 ] float 
;;  sign            1   20[BANK0 ] unsigned char 
;;  exp             1   19[BANK0 ] unsigned char 
;;  cntr            1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    6[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       6       0       0
;;      Locals:         0       6       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0      15       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
	line	56
global __ptext14
__ptext14:	;psect for function ___ftdiv
psect	text14
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
	line	56
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l4094:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@exp)
	movf	(((___ftdiv@exp))),w
	btfss	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l4098
u4000:
	line	64
	
l4096:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1509
	line	65
	
l4098:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@sign)
	movf	(((___ftdiv@sign))),w
	btfss	status,2
	goto	u4011
	goto	u4010
u4011:
	goto	l1510
u4010:
	line	66
	
l4100:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1509
	
l1510:	
	line	67
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	68
	
l4102:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l4104:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l4106:	
	movf	0+(___ftdiv@f2)+02h,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l4108:	
	movlw	low(080h)
	andwf	(___ftdiv@sign),f
	line	72
	
l4110:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l4112:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l4114:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l4116:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l4118:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l4120:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4025
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4025
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4025:
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l4126
u4020:
	line	80
	
l4122:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	81
	
l4124:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l4126:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	84
	
l4128:	
	decfsz	(___ftdiv@cntr),f
	goto	u4031
	goto	u4030
u4031:
	goto	l4120
u4030:
	line	85
	
l4130:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	line	86
	
l1509:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    2[COMMON] unsigned um
;;  exp             1    5[COMMON] unsigned char 
;;  sign            1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    2[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         5       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       3       0       0
;;      Totals:         5       3       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
	line	62
global __ptext15
__ptext15:	;psect for function ___ftpack
psect	text15
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l3792:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l1456
u3420:
	
l3794:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3431
	goto	u3430
u3431:
	goto	l3798
u3430:
	
l1456:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l1457
	line	67
	
l3796:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l3798:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l3796
u3440:
	goto	l3802
	line	71
	
l3800:	
	incf	(___ftpack@exp),f
	line	72
	incf	(___ftpack@arg),f
	skipnz
	incf	(___ftpack@arg+1),f
	skipnz
	incf	(___ftpack@arg+2),f
	line	73
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	70
	
l3802:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l3800
u3450:
	goto	l3806
	line	76
	
l3804:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l3806:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l1468
u3460:
	
l3808:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u3471
	goto	u3470
u3471:
	goto	l3804
u3470:
	
l1468:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l1469
u3480:
	line	80
	
l3810:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l1469:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l3812:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0+2)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+0)
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	movf	((___ftpack@sign)),w
	btfsc	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l1470
u3490:
	line	84
	
l3814:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1470:	
	line	85
	line	86
	
l1457:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 337 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/100
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
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	337
global __ptext16
__ptext16:	;psect for function _chrgCtr
psect	text16
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	337
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 6
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	339
	
l3522:	
;main.c: 339: if(PORTB & 0x01)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),(0)&7	;volatile
	goto	u2961
	goto	u2960
u2961:
	goto	l3542
u2960:
	line	341
	
l3524:	
;main.c: 340: {
;main.c: 341: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	342
	
l3526:	
;main.c: 342: firstLock = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_firstLock)^080h
	line	343
;main.c: 343: lowBatLock = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowBatLock)
	line	344
	
l3528:	
;main.c: 344: if(PORTB & 0x10)
	btfss	(6),(4)&7	;volatile
	goto	u2971
	goto	u2970
u2971:
	goto	l3536
u2970:
	line	346
	
l3530:	
;main.c: 345: {
;main.c: 346: if(++chrgFullTime > 200)
	movlw	low(0C9h)
	incf	(_chrgFullTime),f
	subwf	((_chrgFullTime)),w
	skipc
	goto	u2981
	goto	u2980
u2981:
	goto	l3538
u2980:
	line	348
	
l3532:	
;main.c: 347: {
;main.c: 348: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	349
	
l3534:	
;main.c: 349: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l3538
	line	354
	
l3536:	
;main.c: 352: else
;main.c: 353: {
;main.c: 354: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	356
	
l3538:	
;main.c: 355: }
;main.c: 356: if(chrgFullFlag || count1s < 125)
	movf	((_chrgFullFlag)),w
	btfss	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l989
u2990:
	
l3540:	
	movlw	low(07Dh)
	subwf	(_count1s),w
	skipnc
	goto	u3001
	goto	u3000
u3001:
	goto	l987
u3000:
	
l989:	
	line	358
;main.c: 357: {
;main.c: 358: RA1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1073/8)^080h,(1073)&7	;volatile
	line	359
;main.c: 359: }
	goto	l993
	line	360
	
l987:	
	line	362
;main.c: 360: else
;main.c: 361: {
;main.c: 362: RA1 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1073/8)^080h,(1073)&7	;volatile
	goto	l993
	line	367
	
l3542:	
;main.c: 365: else
;main.c: 366: {
;main.c: 367: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	368
;main.c: 368: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	369
;main.c: 369: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	370
	
l3544:	
;main.c: 370: if(firstTime == 0)
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstTime)^080h),w
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l993
u3010:
	goto	l987
	line	373
	
l993:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_WorkSleep

;; *************** function _WorkSleep *****************
;; Defined at:
;;		line 191 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
;;		On exit  : 300/100
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	191
global __ptext17
__ptext17:	;psect for function _WorkSleep
psect	text17
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	191
	global	__size_of_WorkSleep
	__size_of_WorkSleep	equ	__end_of_WorkSleep-_WorkSleep
	
_WorkSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _WorkSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	195
	
l4178:	
;main.c: 195: if(B_OnOff)time = 0;
	btfss	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	goto	u4121
	goto	u4120
u4121:
	goto	l4182
u4120:
	
l4180:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_time)^080h
	clrf	(_time+1)^080h
	line	197
	
l4182:	
;main.c: 197: if(++time >= 2000)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_time)^080h,f
	skipnz
	incf	(_time+1)^080h,f
	movlw	07h
	subwf	((_time+1)^080h),w
	movlw	0D0h
	skipnz
	subwf	((_time)^080h),w
	skipc
	goto	u4131
	goto	u4130
u4131:
	goto	l961
u4130:
	line	199
	
l4184:	
;main.c: 198: {
;main.c: 199: time = 0;
	clrf	(_time)^080h
	clrf	(_time+1)^080h
	line	200
;main.c: 200: INTCON = 0;
	clrf	(11)	;volatile
	line	201
;main.c: 201: PIE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(14)	;volatile
	line	202
;main.c: 202: PIE2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(272)^0100h	;volatile
	line	203
;main.c: 203: PIR1 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(13)	;volatile
	line	204
;main.c: 204: PIR2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(271)^0100h	;volatile
	line	205
;main.c: 205: T2CON = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	206
;main.c: 206: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	209
;main.c: 209: ADCON0 = 0;
	clrf	(149)^080h	;volatile
	line	212
	
l4186:	
;main.c: 212: PORTA = 0x13;
	movlw	low(013h)
	movwf	(134)^080h	;volatile
	line	213
	
l4188:	
;main.c: 213: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	214
	
l4190:	
;main.c: 214: TRISC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	215
	
l4192:	
;main.c: 215: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	217
	
l4194:	
;main.c: 217: TRISB0 =1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	219
	
l4196:	
;main.c: 219: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	220
	
l4198:	
;main.c: 220: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	221
	
l4200:	
;main.c: 221: IOCB0= 1;
	bsf	(72/8),(72)&7	;volatile
	line	222
;main.c: 222: PORTB;
	movf	(6),w	;volatile
	line	234
	
l4202:	
;main.c: 234: SystemEnterSleep();
	fcall	_SystemEnterSleep
	line	235
	
l4204:	
;main.c: 235: if(RAIF)
	btfss	(107/8),(107)&7	;volatile
	goto	u4141
	goto	u4140
u4141:
	goto	l4210
u4140:
	line	237
	
l4206:	
;main.c: 236: {
;main.c: 237: RAIF = 0;
	bcf	(107/8),(107)&7	;volatile
	line	238
	
l4208:	
;main.c: 238: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	241
	
l4210:	
;main.c: 239: }
;main.c: 241: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	242
	
l4212:	
;main.c: 242: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	243
	
l4214:	
;main.c: 243: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	244
	
l4216:	
;main.c: 244: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	247
	
l961:	
	return
	opt stack 0
GLOBAL	__end_of_WorkSleep
	__end_of_WorkSleep:
	signat	_WorkSleep,89
	global	_SystemEnterSleep

;; *************** function _SystemEnterSleep *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  92              2    6[BANK0 ] unsigned int 
;;  93              2    4[BANK0 ] unsigned int 
;;  94              2    2[BANK0 ] unsigned int 
;;  91              1    8[BANK0 ] unsigned char 
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
;;      Locals:         0       7       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ClearResSum
;;		_GetTouchKeyValue
;;		_KeyClearOne
;; This function is called by:
;;		_WorkSleep
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
global __ptext18
__ptext18:	;psect for function _SystemEnterSleep
psect	text18
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_SystemEnterSleep
	__size_of_SystemEnterSleep	equ	__end_of_SystemEnterSleep-_SystemEnterSleep
	
_SystemEnterSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _SystemEnterSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l3836:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text18
	
l1281:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text18
	
l3838:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	
l3840:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(1),f	;volatile
	
l3842:	
	bsf	(1)+(3/8),(3)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text18
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\TouchKeyConst.h"
	line	5
	
l3844:	
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text18
	
l3846:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	
l3848:	
	clrf	(275)^0100h	;volatile
	
l3850:	
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
sleep ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text18
	
l3852:	
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	
l3854:	
	movlw	low(079h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(275)^0100h	;volatile
	
l3856:	
	fcall	_ClearResSum
	
l3858:	
	bsf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	
l3860:	
	fcall	_GetTouchKeyValue
	
l3862:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SystemEnterSleep@91)
	
l3864:	
	clrf	(SystemEnterSleep@92)
	incf	(SystemEnterSleep@92),f
	clrf	(SystemEnterSleep@92+1)
	
l3866:	
	btfsc	(88/8),(88)&7	;volatile
	goto	u3541
	goto	u3540
u3541:
	goto	l3872
u3540:
	
l3868:	
	btfsc	(89/8),(89)&7	;volatile
	goto	u3551
	goto	u3550
u3551:
	goto	l3872
u3550:
	
l3870:	
	btfss	(107/8),(107)&7	;volatile
	goto	u3561
	goto	u3560
u3561:
	goto	l3884
u3560:
	
l3872:	
	fcall	_ClearResSum
	
l3874:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	
l3876:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l3878:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	l1285
	
l3884:	
	movf	(SystemEnterSleep@92),w
	andlw	03h
	btfsc	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l3918
u3570:
	
l3886:	
	clrc
	rlf	(SystemEnterSleep@91),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(SystemEnterSleep@93)
	incf	fsr0,f
	movf	indf,w
	movwf	(SystemEnterSleep@93+1)
	movf	((SystemEnterSleep@93+1)),w
	movwf	(SystemEnterSleep@94+1)
	movf	((SystemEnterSleep@93)),w
	movwf	(SystemEnterSleep@94)
	
l3888:	
	movf	((SystemEnterSleep@93)),w
iorwf	((SystemEnterSleep@93+1)),w
	btfsc	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l3918
u3580:
	
l3890:	
	movf	(SystemEnterSleep@91),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addwf	(SystemEnterSleep@94),f
	skipnc
	incf	(SystemEnterSleep@94+1),f
	
l3892:	
	clrc
	rlf	(SystemEnterSleep@91),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+1
	movf	(SystemEnterSleep@94+1),w
	subwf	1+(??_SystemEnterSleep+0)+0,w
	skipz
	goto	u3595
	movf	(SystemEnterSleep@94),w
	subwf	0+(??_SystemEnterSleep+0)+0,w
u3595:
	skipc
	goto	u3591
	goto	u3590
u3591:
	goto	l3916
u3590:
	
l3894:	
	clrf	(SystemEnterSleep@91)
	
l3896:	
	clrf	(SystemEnterSleep@92)
	incf	(SystemEnterSleep@92),f
	clrf	(SystemEnterSleep@92+1)
	
l3898:	
	movf	(SystemEnterSleep@92),w
	andlw	03h
	btfss	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l3902
u3600:
	
l3900:	
	movf	(SystemEnterSleep@91),w
	fcall	_KeyClearOne
	
l3902:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(SystemEnterSleep@92),f
	rlf	(SystemEnterSleep@92+1),f
	
l3904:	
	movlw	low(02h)
	incf	(SystemEnterSleep@91),f
	subwf	((SystemEnterSleep@91)),w
	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l3898
u3610:
	goto	l3872
	
l3916:	
	clrc
	rlf	(SystemEnterSleep@91),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+1
	clrc
	rlf	(SystemEnterSleep@91),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_SystemEnterSleep+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_SystemEnterSleep+0)+0,w
	movwf	indf
	clrc
	rlf	(SystemEnterSleep@91),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+1
	clrc
	rlf	(SystemEnterSleep@91),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_SystemEnterSleep+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_SystemEnterSleep+0)+0,w
	movwf	indf
	clrc
	rlf	(SystemEnterSleep@91),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(SystemEnterSleep@93),w
	movwf	indf
	incf	fsr0,f
	movf	(SystemEnterSleep@93+1),w
	movwf	indf
	
l3918:	
	clrc
	rlf	(SystemEnterSleep@92),f
	rlf	(SystemEnterSleep@92+1),f
	
l3920:	
	movlw	low(02h)
	incf	(SystemEnterSleep@91),f
	subwf	((SystemEnterSleep@91)),w
	skipc
	goto	u3621
	goto	u3620
u3621:
	goto	l3884
u3620:
	goto	l1281
	
l1285:	
	return
	opt stack 0
GLOBAL	__end_of_SystemEnterSleep
	__end_of_SystemEnterSleep:
	signat	_SystemEnterSleep,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 86 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/100
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	86
global __ptext19
__ptext19:	;psect for function _Refurbish_Sfr
psect	text19
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	86
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 5
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	89
	
l2940:	
;main.c: 89: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(14)	;volatile
	line	90
;main.c: 90: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	91
;main.c: 91: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	92
	
l2942:	
;main.c: 92: if (4 != T2CON)
		movlw	4
	xorwf	((19)),w	;volatile
	btfsc	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l925
u2000:
	line	93
	
l2944:	
;main.c: 93: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	94
	
l925:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 100 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	100
global __ptext20
__ptext20:	;psect for function _KeyServer
psect	text20
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	100
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 6
; Regs used in _KeyServer: [wreg+status,2+status,0]
	line	103
	
l3424:	
;main.c: 102: static unsigned char KeyOldFlag = 0;
;main.c: 103: if (KeyFlag[0])
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u2771
	goto	u2770
u2771:
	goto	l3480
u2770:
	line	105
	
l3426:	
;main.c: 104: {
;main.c: 105: if (KeyFlag[0] != KeyOldFlag)
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),w
	skipnz
	goto	u2781
	goto	u2780
u2781:
	goto	l946
u2780:
	line	108
	
l3428:	
;main.c: 106: {
;main.c: 108: KeyOldFlag ^= KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),f
	line	109
	
l3430:	
;main.c: 109: if ((KeyOldFlag & 0x1) && (KeyFlag[0] & 0x1) && firstLock == 0)
	btfss	(KeyServer@KeyOldFlag),(0)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l3456
u2790:
	
l3432:	
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u2801
	goto	u2800
u2801:
	goto	l3456
u2800:
	
l3434:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstLock)^080h),w
	btfss	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l3456
u2810:
	line	112
	
l3436:	
;main.c: 110: {
;main.c: 112: if(lowBatLock == 1)
	bcf	status, 5	;RP0=0, select bank0
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l3440
u2820:
	line	114
	
l3438:	
;main.c: 113: {
;main.c: 114: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	line	115
;main.c: 115: }
	goto	l3444
	line	116
	
l3440:	
;main.c: 116: else if(++workStep > 2)
	movlw	low(03h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l3444
u2830:
	line	118
	
l3442:	
;main.c: 117: {
;main.c: 118: workStep = 0;
	clrf	(_workStep)
	line	120
	
l3444:	
;main.c: 119: }
;main.c: 120: if(power_ad < 3350 && workStep == 2)
	movlw	0Dh
	subwf	(_power_ad+1),w	;volatile
	movlw	016h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2841
	goto	u2840
u2841:
	goto	l3450
u2840:
	
l3446:	
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l3450
u2850:
	line	122
	
l3448:	
;main.c: 121: {
;main.c: 122: workStep = 0;
	clrf	(_workStep)
	line	124
	
l3450:	
;main.c: 123: }
;main.c: 124: if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l3454
u2860:
	line	126
	
l3452:	
;main.c: 125: {
;main.c: 126: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	line	127
;main.c: 127: }
	goto	l3456
	line	130
	
l3454:	
;main.c: 128: else
;main.c: 129: {
;main.c: 130: shanshuoTime = 0;
	clrf	(_shanshuoTime)
	clrf	(_shanshuoTime+1)
	line	133
	
l3456:	
;main.c: 131: }
;main.c: 132: }
;main.c: 133: if ((KeyOldFlag & 0x2) && (KeyFlag[0] & 0x2) && firstLock == 0)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(KeyServer@KeyOldFlag),(1)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l3478
u2870:
	
l3458:	
	btfss	(_KeyFlag),(1)&7	;volatile
	goto	u2881
	goto	u2880
u2881:
	goto	l3478
u2880:
	
l3460:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstLock)^080h),w
	btfss	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l3478
u2890:
	line	136
	
l3462:	
;main.c: 134: {
;main.c: 136: if(lowBatLock == 1)
	bcf	status, 5	;RP0=0, select bank0
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l3466
u2900:
	line	138
	
l3464:	
;main.c: 137: {
;main.c: 138: shanshuoTime2 = 450;
	movlw	0C2h
	movwf	(_shanshuoTime2)
	movlw	01h
	movwf	((_shanshuoTime2))+1
	line	139
;main.c: 139: }
	goto	l3470
	line	140
	
l3466:	
;main.c: 140: else if(++wuhuaFlag > 2)
	movlw	low(03h)
	incf	(_wuhuaFlag),f
	subwf	((_wuhuaFlag)),w
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l3470
u2910:
	line	142
	
l3468:	
;main.c: 141: {
;main.c: 142: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	line	144
	
l3470:	
;main.c: 143: }
;main.c: 144: if(wuhuaFlag == 2)
		movlw	2
	xorwf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l3476
u2920:
	line	146
	
l3472:	
;main.c: 145: {
;main.c: 146: shanshuoTime2 = 450;
	movlw	0C2h
	movwf	(_shanshuoTime2)
	movlw	01h
	movwf	((_shanshuoTime2))+1
	line	147
	
l3474:	
;main.c: 147: count10s = 0;
	clrf	(_count10s)
	line	148
;main.c: 148: }
	goto	l3478
	line	151
	
l3476:	
;main.c: 149: else
;main.c: 150: {
;main.c: 151: shanshuoTime2 = 0;
	clrf	(_shanshuoTime2)
	clrf	(_shanshuoTime2+1)
	line	156
	
l3478:	
;main.c: 152: }
;main.c: 153: }
;main.c: 156: KeyOldFlag = KeyFlag[0];
	bcf	status, 5	;RP0=0, select bank0
	movf	(_KeyFlag),w	;volatile
	movwf	(KeyServer@KeyOldFlag)
	goto	l946
	line	161
	
l3480:	
;main.c: 159: else
;main.c: 160: {
;main.c: 161: KeyOldFlag = 0;
	clrf	(KeyServer@KeyOldFlag)
	line	163
	
l946:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 49 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	49
global __ptext21
__ptext21:	;psect for function _Init_System
psect	text21
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	49
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	51
	
l3394:	
# 51 "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
nop ;# 
	line	52
# 52 "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
clrwdt ;# 
psect	text21
	line	53
	
l3396:	
;main.c: 53: INTCON = 0;
	clrf	(11)	;volatile
	line	54
	
l3398:	
;main.c: 54: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	55
	
l3400:	
;main.c: 55: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	60
;main.c: 60: TRISA = 0x08;
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	61
	
l3402:	
;main.c: 61: PORTA = 0;
	clrf	(134)^080h	;volatile
	line	62
	
l3404:	
;main.c: 62: TRISB = 0x31;
	movlw	low(031h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	63
;main.c: 63: PORTB = 0;
	clrf	(6)	;volatile
	line	64
	
l3406:	
;main.c: 64: WPUB = 0x10;
	movlw	low(010h)
	movwf	(8)	;volatile
	line	65
	
l3408:	
;main.c: 65: TRISC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	66
	
l3410:	
;main.c: 66: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	68
	
l3412:	
;main.c: 68: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	69
	
l3414:	
;main.c: 69: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	70
	
l3416:	
;main.c: 70: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	72
	
l3418:	
;main.c: 72: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	73
	
l3420:	
;main.c: 73: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	74
	
l3422:	
;main.c: 74: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	75
;main.c: 75: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	76
	
l921:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_CheckTouchKey

;; *************** function _CheckTouchKey *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
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
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
global __ptext22
__ptext22:	;psect for function _CheckTouchKey
psect	text22
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 2
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l4258:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text22
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u4221
	goto	u4220
u4221:
	goto	l1269
u4220:
	
l4260:	
	fcall	_GetTouchKeyValue
	
l4262:	
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u4231
	goto	u4230
u4231:
	goto	l4292
u4230:
	
l4264:	
	clrf	(_KeyCounter)
	
l4266:	
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l4292
	
l1269:	
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u4241
	goto	u4240
u4241:
	goto	l4286
u4240:
	
l4268:	
	fcall	_CheckOnceResult
	fcall	_TurnKeyFlags
	
l4270:	
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4272:	
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u4251
	goto	u4250
u4251:
	goto	l4276
u4250:
	
l4274:	
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u4261
	goto	u4260
u4261:
	goto	l4284
u4260:
	
l4276:	
	fcall	_KeyStopClear
	
l4278:	
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l4280:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4282:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4284:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	goto	l4292
	
l4286:	
	fcall	_CheckKeyOldValue
	fcall	_ClearResSum
	
l4288:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4290:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4292:	
	fcall	_CheckValidTime
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text22
	
l1277:	
	return
	opt stack 0
GLOBAL	__end_of_CheckTouchKey
	__end_of_CheckTouchKey:
	signat	_CheckTouchKey,89
	global	_TurnKeyFlags

;; *************** function _TurnKeyFlags *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
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
psect	text23,local,class=CODE,delta=2,merge=1,group=1
global __ptext23
__ptext23:	;psect for function _TurnKeyFlags
psect	text23
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_TurnKeyFlags
	__size_of_TurnKeyFlags	equ	__end_of_TurnKeyFlags-_TurnKeyFlags
	
_TurnKeyFlags:	
;incstack = 0
	opt	stack 2
; Regs used in _TurnKeyFlags: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3262:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text23
	
l3264:	
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l3290
u2570:
	
l3266:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(TurnKeyFlags@F84)
	
l3268:	
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u2581
	goto	u2580
u2581:
	goto	l1250
u2580:
	
l3270:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u2591
	goto	u2590
u2591:
	goto	l1250
u2590:
	
l3272:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F83),f
	subwf	((TurnKeyFlags@F83)),w
	skipc
	goto	u2601
	goto	u2600
u2601:
	goto	l1255
u2600:
	
l3274:	
	clrf	(TurnKeyFlags@F83)
	
l3276:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	
l3278:	
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	
l3280:	
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u2611
	goto	u2610
u2611:
	goto	l1251
u2610:
	
l3282:	
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3284:	
	fcall	_KeyClearIn
	goto	l1255
	
l1251:	
	goto	l1255
	
l1250:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3286:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	
l3288:	
	clrf	(TurnKeyFlags@F83)
	goto	l1255
	
l3290:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(TurnKeyFlags@F83)
	clrf	(_KeyOldData)	;volatile
	clrf	0+(_KeyOldData)+01h	;volatile
	
l3292:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F84),f
	subwf	((TurnKeyFlags@F84)),w
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l1255
u2620:
	
l3294:	
	clrf	(TurnKeyFlags@F84)
	clrf	(_KeyFlag)	;volatile
	clrf	0+(_KeyFlag)+01h	;volatile
	
l3296:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l1255:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text23
	
l1257:	
	return
	opt stack 0
GLOBAL	__end_of_TurnKeyFlags
	__end_of_TurnKeyFlags:
	signat	_TurnKeyFlags,89
	global	_KeyClearIn

;; *************** function _KeyClearIn *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  51              1    4[COMMON] unsigned char 
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
;;		_KeyClearOne
;;		_KeyIsIn
;; This function is called by:
;;		_TurnKeyFlags
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=1
global __ptext24
__ptext24:	;psect for function _KeyClearIn
psect	text24
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyClearIn
	__size_of_KeyClearIn	equ	__end_of_KeyClearIn-_KeyClearIn
	
_KeyClearIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyClearIn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2808:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text24
	
l2810:	
	clrf	(KeyClearIn@51)
	
l2816:	
	movf	(KeyClearIn@51),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l2820
u1770:
	
l2818:	
	movf	(KeyClearIn@51),w
	fcall	_KeyClearOne
	
l2820:	
	incf	(KeyClearIn@51),f
	
l2822:	
	movlw	low(02h)
	subwf	(KeyClearIn@51),w
	skipc
	goto	u1781
	goto	u1780
u1781:
	goto	l2816
u1780:
	
l1163:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text24
	
l1165:	
	return
	opt stack 0
GLOBAL	__end_of_KeyClearIn
	__end_of_KeyClearIn:
	signat	_KeyClearIn,89
	global	_KeyStopClear

;; *************** function _KeyStopClear *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  53              1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
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
psect	text25,local,class=CODE,delta=2,merge=1,group=1
global __ptext25
__ptext25:	;psect for function _KeyStopClear
psect	text25
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyStopClear
	__size_of_KeyStopClear	equ	__end_of_KeyStopClear-_KeyStopClear
	
_KeyStopClear:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3134:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text25
	
l3136:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyFlag)	;volatile
	clrf	0+(_KeyFlag)+01h	;volatile
	clrf	(KeyStopClear@53)
	
l3142:	
	clrc
	rlf	(KeyStopClear@53),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l3144:	
	movf	(KeyStopClear@53),w
	fcall	_KeyClearOne
	
l3146:	
	incf	(KeyStopClear@53),f
	
l3148:	
	movlw	low(02h)
	subwf	(KeyStopClear@53),w
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l3142
u2340:
	
l1169:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text25
	
l1170:	
	return
	opt stack 0
GLOBAL	__end_of_KeyStopClear
	__end_of_KeyStopClear:
	signat	_KeyStopClear,89
	global	_GetTouchKeyValue

;; *************** function _GetTouchKeyValue *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  63              2    5[COMMON] unsigned int 
;;  64              2    3[COMMON] unsigned int 
;;  62              1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/200
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         5       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ClearResSum
;; This function is called by:
;;		_CheckTouchKey
;;		_SystemEnterSleep
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=1
global __ptext26
__ptext26:	;psect for function _GetTouchKeyValue
psect	text26
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_GetTouchKeyValue
	__size_of_GetTouchKeyValue	equ	__end_of_GetTouchKeyValue-_GetTouchKeyValue
	
_GetTouchKeyValue:	
;incstack = 0
	opt	stack 3
; Regs used in _GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l2842:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text26
	
l2844:	
	clrf	(GetTouchKeyValue@62)
	
l2846:	
	clrf	(GetTouchKeyValue@63)
	incf	(GetTouchKeyValue@63),f
	clrf	(GetTouchKeyValue@63+1)
	
l2848:	
	btfss	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	goto	u1801
	goto	u1800
u1801:
	goto	l2852
u1800:
	
l2850:	
	movf	(GetTouchKeyValue@63),w
	andlw	03h
	btfsc	status,2
	goto	u1811
	goto	u1810
u1811:
	goto	l2880
u1810:
	
l2852:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	clrf	(274)^0100h	;volatile
	
l2854:	
	movlw	low(079h)
	movwf	(275)^0100h	;volatile
	
l2856:	
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	
l2858:	
	bcf	(54/8),(54)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
psect	text26
	
l2860:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7	;volatile
	
l2862:	
	movf	(GetTouchKeyValue@62),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 6	;RP1=1, select bank2
	movwf	(273)^0100h	;volatile
	
l2864:	
	movf	(GetTouchKeyValue@62),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(274)^0100h	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
psect	text26
	
l2866:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(273)^0100h+(0/8),(0)&7	;volatile
	
l2868:	
	movlw	0D0h
	movwf	(GetTouchKeyValue@64)
	movlw	07h
	movwf	((GetTouchKeyValue@64))+1
	goto	l1191
	
l2870:	
	movlw	01h
	subwf	(GetTouchKeyValue@64),f
	movlw	0
	skipc
	decf	(GetTouchKeyValue@64+1),f
	subwf	(GetTouchKeyValue@64+1),f
	movf	(((GetTouchKeyValue@64))),w
iorwf	(((GetTouchKeyValue@64+1))),w
	btfss	status,2
	goto	u1821
	goto	u1820
u1821:
	goto	l1191
u1820:
	
l2872:	
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_KeyCounter)
	
l2874:	
	fcall	_ClearResSum
	goto	l1194
	
l1191:	
	btfss	(273)^0100h,(7)&7	;volatile
	goto	u1831
	goto	u1830
u1831:
	goto	l2870
u1830:
	
l2878:	
	clrc
	rlf	(GetTouchKeyValue@62),w
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
	
l2880:	
	clrc
	rlf	(GetTouchKeyValue@63),f
	rlf	(GetTouchKeyValue@63+1),f
	
l2882:	
	movlw	low(02h)
	incf	(GetTouchKeyValue@62),f
	subwf	((GetTouchKeyValue@62)),w
	skipc
	goto	u1841
	goto	u1840
u1841:
	goto	l2848
u1840:
	
l1196:	
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text26
	
l1194:	
	return
	opt stack 0
GLOBAL	__end_of_GetTouchKeyValue
	__end_of_GetTouchKeyValue:
	signat	_GetTouchKeyValue,89
	global	_ClearResSum

;; *************** function _ClearResSum *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  56              1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/200
;;		On exit  : 0/0
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
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=1
global __ptext27
__ptext27:	;psect for function _ClearResSum
psect	text27
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_ClearResSum
	__size_of_ClearResSum	equ	__end_of_ClearResSum-_ClearResSum
	
_ClearResSum:	
;incstack = 0
	opt	stack 3
; Regs used in _ClearResSum: [wreg-fsr0h+status,2+status,0]
	
l2696:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text27
	
l2698:	
	clrf	(ClearResSum@56)
	
l2700:	
	clrc
	rlf	(ClearResSum@56),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l2702:	
	movlw	low(02h)
	incf	(ClearResSum@56),f
	subwf	((ClearResSum@56)),w
	skipc
	goto	u1611
	goto	u1610
u1611:
	goto	l2700
u1610:
	
l1174:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text27
	
l1175:	
	return
	opt stack 0
GLOBAL	__end_of_ClearResSum
	__end_of_ClearResSum:
	signat	_ClearResSum,89
	global	_CheckValidTime

;; *************** function _CheckValidTime *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
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
psect	text28,local,class=CODE,delta=2,merge=1,group=1
global __ptext28
__ptext28:	;psect for function _CheckValidTime
psect	text28
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckValidTime
	__size_of_CheckValidTime	equ	__end_of_CheckValidTime-_CheckValidTime
	
_CheckValidTime:	
;incstack = 0
	opt	stack 5
; Regs used in _CheckValidTime: [wreg+status,2+status,0]
	
l3298:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text28
	
l3300:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l3306
u2630:
	
l3302:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(CheckValidTime@F87)^080h,f
	skipnz
	incf	(CheckValidTime@F87+1)^080h,f
	movlw	03Ah
	subwf	((CheckValidTime@F87+1)^080h),w
	movlw	098h
	skipnz
	subwf	((CheckValidTime@F87)^080h),w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l1262
u2640:
	
l3304:	
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l3306:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(CheckValidTime@F87)^080h
	clrf	(CheckValidTime@F87+1)^080h
	
l1262:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text28
	
l1266:	
	return
	opt stack 0
GLOBAL	__end_of_CheckValidTime
	__end_of_CheckValidTime:
	signat	_CheckValidTime,89
	global	_CheckOnceResult

;; *************** function _CheckOnceResult *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  71              2   10[BANK0 ] unsigned int 
;;  72              2    7[BANK0 ] unsigned int 
;;  73              2    4[BANK0 ] unsigned int 
;;  68              1   12[BANK0 ] unsigned char 
;;  69              1    9[BANK0 ] unsigned char 
;;  70              1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
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
psect	text29,local,class=CODE,delta=2,merge=1,group=1
global __ptext29
__ptext29:	;psect for function _CheckOnceResult
psect	text29
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckOnceResult
	__size_of_CheckOnceResult	equ	__end_of_CheckOnceResult-_CheckOnceResult
	
_CheckOnceResult:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l4024:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text29
	
l4026:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckOnceResult@68)
	clrf	(_KeyData)	;volatile
	clrf	0+(_KeyData)+01h	;volatile
	clrf	(_KeyMaxSub)
	
l4028:	
	movf	(CheckOnceResult@68),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@70)
	
l4030:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u3875:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank0
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u3870:
	addlw	-1
	skipz
	goto	u3875
	
l4032:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@71)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@71+1)
	
l4034:	
	movf	(CheckOnceResult@68),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@69)
	
l4036:	
	movf	(CheckOnceResult@69),w
	movwf	(CheckOnceResult@72)
	clrf	(CheckOnceResult@72+1)
	
l4038:	
	movf	(CheckOnceResult@71),w
	addwf	(CheckOnceResult@72),f
	skipnc
	incf	(CheckOnceResult@72+1),f
	movf	(CheckOnceResult@71+1),w
	addwf	(CheckOnceResult@72+1),f
	
l4040:	
	movf	(CheckOnceResult@68),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u3881
	goto	u3880
u3881:
	goto	l4070
u3880:
	
l4042:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(CheckOnceResult@73)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@73+1)
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	1+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72+1),w
	skipz
	goto	u3895
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72),w
u3895:
	skipnc
	goto	u3891
	goto	u3890
u3891:
	goto	l4046
u3890:
	
l4044:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+0)+0,w
	movwf	(CheckOnceResult@71)
	movf	(CheckOnceResult@71+1),w
	skipc
	incf	(CheckOnceResult@71+1),w
	subwf	1+(??_CheckOnceResult+0)+0,w
	movwf	1+(CheckOnceResult@71)
	goto	l4054
	
l4046:	
	movf	(CheckOnceResult@73+1),w
	subwf	(CheckOnceResult@72+1),w
	skipz
	goto	u3905
	movf	(CheckOnceResult@73),w
	subwf	(CheckOnceResult@72),w
u3905:
	skipnc
	goto	u3901
	goto	u3900
u3901:
	goto	l4092
u3900:
	
l4048:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	1+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72+1),w
	skipz
	goto	u3915
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72),w
u3915:
	skipnc
	goto	u3911
	goto	u3910
u3911:
	goto	l4092
u3910:
	
l4050:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@73),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@73+1),w
	movwf	indf
	
l4052:	
	movf	(CheckOnceResult@71),w
	subwf	(CheckOnceResult@73),w
	movwf	(CheckOnceResult@71)
	movf	(CheckOnceResult@71+1),w
	skipc
	incf	(CheckOnceResult@71+1),w
	subwf	(CheckOnceResult@73+1),w
	movwf	1+(CheckOnceResult@71)
	
l4054:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	
l4056:	
	movf	(0+(CheckOnceResult@71)+01h),w
	btfsc	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l4060
u3920:
	
l4058:	
	movlw	low(0FFh)
	movwf	(CheckOnceResult@69)
	goto	l1208
	
l4060:	
	movf	(CheckOnceResult@71),w
	movwf	(CheckOnceResult@69)
	
l1208:	
	movf	(CheckOnceResult@69),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u3931
	goto	u3930
u3931:
	goto	l4066
u3930:
	
l4062:	
	movf	(CheckOnceResult@69),w
	movwf	(_KeyMaxSub)
	
l4064:	
	movf	(CheckOnceResult@70),w
	movwf	(KeyHave@59)
	clrf	(KeyHave@59+1)
	movf	(CheckOnceResult@68),w
	fcall	_KeyHave
	goto	l4092
	
l4066:	
	incf	(_KeyCounter),f
	goto	l4092
	
l4070:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
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
	movf	(CheckOnceResult@72+1),w
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u3945
	movf	(CheckOnceResult@72),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u3945:
	skipnc
	goto	u3941
	goto	u3940
u3941:
	goto	l4076
u3940:
	goto	l4092
	
l4076:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	(CheckOnceResult@69),w
	addwf	0+(??_CheckOnceResult+0)+0,w
	movwf	(??_CheckOnceResult+2)+0
	movf	1+(??_CheckOnceResult+0)+0,w
	skipnc
	incf	1+(??_CheckOnceResult+0)+0,w
	movwf	((??_CheckOnceResult+2)+0)+1
	movf	(CheckOnceResult@71+1),w
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u3955
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u3955:
	skipc
	goto	u3951
	goto	u3950
u3951:
	goto	l4080
u3950:
	
l4078:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	(CheckOnceResult@69),w
	addwf	0+(??_CheckOnceResult+0)+0,w
	movwf	(??_CheckOnceResult+2)+0
	movf	1+(??_CheckOnceResult+0)+0,w
	skipnc
	incf	1+(??_CheckOnceResult+0)+0,w
	movwf	((??_CheckOnceResult+2)+0)+1
	movf	(CheckOnceResult@71+1),w
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u3965
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u3965:
	skipnc
	goto	u3961
	goto	u3960
u3961:
	goto	l4084
u3960:
	
l4080:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u3971
	goto	u3970
u3971:
	goto	l1214
u3970:
	
l4082:	
	movf	(CheckOnceResult@68),w
	fcall	_KeyClearOne
	goto	l4092
	
l4084:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l4088
	
l1214:	
	
l4088:	
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfss	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l4092
u3980:
	
l4090:	
	movf	(CheckOnceResult@70),w
	movwf	(KeyHave@59)
	clrf	(KeyHave@59+1)
	movf	(CheckOnceResult@68),w
	fcall	_KeyHave
	
l4092:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@68),f
	subwf	((CheckOnceResult@68)),w
	skipc
	goto	u3991
	goto	u3990
u3991:
	goto	l4028
u3990:
	
l1223:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text29
	
l1224:	
	return
	opt stack 0
GLOBAL	__end_of_CheckOnceResult
	__end_of_CheckOnceResult:
	signat	_CheckOnceResult,89
	global	_KeyHave

;; *************** function _KeyHave *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  58              1    wreg     unsigned char 
;;  59              2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  58              1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
psect	text30,local,class=CODE,delta=2,merge=1,group=1
global __ptext30
__ptext30:	;psect for function _KeyHave
psect	text30
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyHave
	__size_of_KeyHave	equ	__end_of_KeyHave-_KeyHave
	
_KeyHave:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyHave: [wreg+status,2+status,0]
;KeyHave@58 stored from wreg
	movwf	(KeyHave@58)
	
l2824:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text30
	
l2826:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	
l2828:	
	clrf	(_KeyData)	;volatile
	
l2830:	
	clrf	0+(_KeyData)+01h	;volatile
	
l2832:	
	btfss	(KeyHave@58),(3)&7
	goto	u1791
	goto	u1790
u1791:
	goto	l2836
u1790:
	
l2834:	
	movf	(KeyHave@59),w
	movwf	0+(_KeyData)+01h	;volatile
	goto	l1181
	
l2836:	
	movf	(KeyHave@59),w
	movwf	(_KeyData)	;volatile
	
l1181:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text30
	
l1184:	
	return
	opt stack 0
GLOBAL	__end_of_KeyHave
	__end_of_KeyHave:
	signat	_KeyHave,8313
	global	_KeyClearOne

;; *************** function _KeyClearOne *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  49              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  49              1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
psect	text31,local,class=CODE,delta=2,merge=1,group=1
global __ptext31
__ptext31:	;psect for function _KeyClearOne
psect	text31
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyClearOne
	__size_of_KeyClearOne	equ	__end_of_KeyClearOne-_KeyClearOne
	
_KeyClearOne:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyClearOne: [wreg-fsr0h+status,2+status,0]
;KeyClearOne@49 stored from wreg
	movwf	(KeyClearOne@49)
	
l2692:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text31
	
l2694:	
	clrc
	rlf	(KeyClearOne@49),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	clrc
	rlf	(KeyClearOne@49),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	clrc
	rlf	(KeyClearOne@49),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	clrc
	rlf	(KeyClearOne@49),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text31
	
l1159:	
	return
	opt stack 0
GLOBAL	__end_of_KeyClearOne
	__end_of_KeyClearOne:
	signat	_KeyClearOne,4217
	global	_CheckKeyOldValue

;; *************** function _CheckKeyOldValue *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  80              2    2[BANK0 ] unsigned int 
;;  79              2    0[BANK0 ] unsigned int 
;;  78              1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
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
psect	text32,local,class=CODE,delta=2,merge=1,group=1
global __ptext32
__ptext32:	;psect for function _CheckKeyOldValue
psect	text32
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckKeyOldValue
	__size_of_CheckKeyOldValue	equ	__end_of_CheckKeyOldValue-_CheckKeyOldValue
	
_CheckKeyOldValue:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3220:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text32
	
l3222:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@78)
	
l3224:	
	movlw	low(04h)
	incf	(CheckKeyOldValue@F77),f
	subwf	((CheckKeyOldValue@F77)),w
	skipnc
	goto	u2481
	goto	u2480
u2481:
	goto	l3228
u2480:
	goto	l1230
	
l3228:	
	clrf	(CheckKeyOldValue@F77)
	
l3230:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(CheckKeyOldValue@79)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@79+1)
	
l3232:	
	movf	(CheckKeyOldValue@78),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l1232
u2490:
	
l3234:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3236:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3238:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l3242
u2500:
	
l3240:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u2511
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l1232
u2510:
	
l3242:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3244:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3246:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u2521
	goto	u2520
u2521:
	goto	l3250
u2520:
	
l3248:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u2531
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l1232
u2530:
	
l3250:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3252:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3254:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l3258
u2540:
	
l3256:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u2551
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l1232
u2550:
	
l3258:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@79),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@79+1),w
	movwf	indf
	
l1232:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_CheckKeyOldValue+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckKeyOldValue+0)+0+1
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_CheckKeyOldValue+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_CheckKeyOldValue+0)+0,w
	movwf	indf
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckKeyOldValue+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckKeyOldValue+0)+0+1
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_CheckKeyOldValue+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_CheckKeyOldValue+0)+0,w
	movwf	indf
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@79),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@79+1),w
	movwf	indf
	
l3260:	
	movlw	low(02h)
	incf	(CheckKeyOldValue@78),f
	subwf	((CheckKeyOldValue@78)),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l3230
u2560:
	
l1242:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text32
	
l1230:	
	return
	opt stack 0
GLOBAL	__end_of_CheckKeyOldValue
	__end_of_CheckKeyOldValue:
	signat	_CheckKeyOldValue,89
	global	_KeyIsIn

;; *************** function _KeyIsIn *****************
;; Defined at:
;;		line 1 in file "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  45              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  45              1    3[COMMON] unsigned char 
;;  46              1    2[COMMON] unsigned char 
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
psect	text33,local,class=CODE,delta=2,merge=1,group=1
global __ptext33
__ptext33:	;psect for function _KeyIsIn
psect	text33
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyIsIn
	__size_of_KeyIsIn	equ	__end_of_KeyIsIn-_KeyIsIn
	
_KeyIsIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyIsIn: [wreg-fsr0h+status,2+status,0+pclath]
;KeyIsIn@45 stored from wreg
	movwf	(KeyIsIn@45)
	
l2676:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text33
	
l2678:	
	movf	(KeyIsIn@45),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@46)
	
l2680:	
	btfss	(KeyIsIn@45),(3)&7
	goto	u1601
	goto	u1600
u1601:
	goto	l2684
u1600:
	
l2682:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@46),f
	goto	l2686
	
l2684:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@46),f
	
l2686:	
	movf	(KeyIsIn@46),w
	
l1156:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 169 in file "C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
psect	text34,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	169
global __ptext34
__ptext34:	;psect for function _Isr_Timer
psect	text34
	file	"C:\mcuproject\scm\zdt\C16_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	169
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
psect	text34
	line	171
	
i1l3624:	
;main.c: 171: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l3638
u314_20:
	line	173
	
i1l3626:	
;main.c: 172: {
;main.c: 173: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	174
	
i1l3628:	
;main.c: 174: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u315_21
	goto	u315_20
u315_21:
	goto	i1l955
u315_20:
	line	176
	
i1l3630:	
;main.c: 175: {
;main.c: 176: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	177
	
i1l3632:	
;main.c: 177: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	178
	
i1l3634:	
;main.c: 178: if(++count1s >= 250)
	movlw	low(0FAh)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u316_21
	goto	u316_20
u316_21:
	goto	i1l955
u316_20:
	line	180
	
i1l3636:	
;main.c: 179: {
;main.c: 180: count1s = 0;
	clrf	(_count1s)
	goto	i1l955
	line	186
	
i1l3638:	
;main.c: 184: else
;main.c: 185: {
;main.c: 186: PIR1 = 0;
	clrf	(13)	;volatile
	line	189
	
i1l955:	
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
