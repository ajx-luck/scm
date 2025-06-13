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
	FNCALL	_workCtr,_bujinCtr
	FNCALL	_workCtr,_fanCtr
	FNCALL	_workCtr,_keyLedCtr
	FNCALL	_workCtr,_wuhuaCtr
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
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\Touch_Kscan_Library.h"
	line	77
_Table_KeyDown:
	retlw	0Ah
	retlw	0Ah
	retlw	0Ah
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyCap
psect	strings
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\Touch_Kscan_Library.h"
	line	70
_Table_KeyCap:
	retlw	02h
	retlw	02h
	retlw	02h
	global __end_of_Table_KeyCap
__end_of_Table_KeyCap:
	global	_Table_KeyChannel
psect	strings
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\Touch_Kscan_Library.h"
	line	63
_Table_KeyChannel:
	retlw	044h
	retlw	043h
	retlw	042h
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
	global	_KeyOldData
	global	_power_ad
	global	_keyCount
	global	_maxMotorStep
	global	_motorStep
	global	_fanValue
	global	_shanshuoTime3
	global	_shanshuoTime2
	global	_shanshuoTime
	global	_KeyFlag
	global	TurnKeyFlags@F84
	global	TurnKeyFlags@F83
	global	CheckKeyOldValue@F77
	global	_KeyMaxSub
	global	_KeyCounter
	global	WorkSleep@time
	global	KeyServer@KeyOldFlag
	global	_test_adc
	global	_closeTime
	global	_longKeyFlag
	global	_powerFlag
	global	_bujinFlag
	global	_lowFanTime
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
	global	_KeyOldValue2
	global	_KeyOldValue1
	global	_KeyOldValue0
	global	_KeyResSum
	global	_KeyUpShake
	global	CheckValidTime@F87
	global	_result
	global	_lowBatTime
	global	_firstLock
psect	nvBANK1,class=BANK1,space=1,noexec
global __pnvBANK1
__pnvBANK1:
_firstLock:
       ds      1

	global	_firstTime
_firstTime:
       ds      1

	global	_PWMCON2
_PWMCON2	set	29
	global	_PWMT4L
_PWMT4L	set	28
	global	_PWMD4L
_PWMD4L	set	27
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
	global	_IOCB5
_IOCB5	set	77
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_TRISB5
_TRISB5	set	45
	global	_TRISB6
_TRISB6	set	46
	global	_PWMD23H
_PWMD23H	set	158
	global	_PWMD3L
_PWMD3L	set	156
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
	global	_RA5
_RA5	set	1077
	global	_RA6
_RA6	set	1078
	global	_RA7
_RA7	set	1079
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
	file	"D108_8F083_tssop20_.as"
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
_KeyOldData:
       ds      2

_power_ad:
       ds      2

_keyCount:
       ds      2

_maxMotorStep:
       ds      2

_motorStep:
       ds      2

_fanValue:
       ds      2

_shanshuoTime3:
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

WorkSleep@time:
       ds      1

KeyServer@KeyOldFlag:
       ds      1

_test_adc:
       ds      1

_closeTime:
       ds      1

_longKeyFlag:
       ds      1

_powerFlag:
       ds      1

_bujinFlag:
       ds      1

_lowFanTime:
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
       ds      6

_KeyOldValue2:
       ds      6

_KeyOldValue1:
       ds      6

_KeyOldValue0:
       ds      6

_KeyResSum:
       ds      6

_KeyUpShake:
       ds      3

CheckValidTime@F87:
       ds      2

_result:
       ds      2

_lowBatTime:
       ds      2

	file	"D108_8F083_tssop20_.as"
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
	movlw	low((__pbssBANK1)+027h)
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
?_bujinCtr:	; 1 bytes @ 0x0
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
??_wuhuaCtr:	; 1 bytes @ 0x2
??_bujinCtr:	; 1 bytes @ 0x2
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
	global	bujinCtr@tempStep
bujinCtr@tempStep:	; 1 bytes @ 0x4
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
;!    Constant    17
;!    Data        0
;!    BSS         87
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      12
;!    BANK0            80     34      79
;!    BANK1            80      4      45
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _workCtr->_ADC_Sample
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
;! (0) _main                                                 0     0      0   11912
;!                      _CheckTouchKey
;!                        _Init_System
;!                          _KeyServer
;!                      _Refurbish_Sfr
;!                          _WorkSleep
;!                            _chrgCtr
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              4     4      0    7909
;!                                              0 BANK1      4     4      0
;!                         _ADC_Sample
;!                            ___ftdiv
;!                            ___fttol
;!                           ___lwtoft
;!                           _bujinCtr
;!                             _fanCtr
;!                          _keyLedCtr
;!                           _wuhuaCtr
;! ---------------------------------------------------------------------------------
;! (2) _wuhuaCtr                                             0     0      0       0
;!                            _pwmInit
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (3) _pwmStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _pwmInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _keyLedCtr                                            0     0      0     622
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              5     1      4     622
;!                                              2 COMMON     5     1      4
;! ---------------------------------------------------------------------------------
;! (2) _fanCtr                                               5     5      0    1289
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
;! (3) ___lmul                                              12     4      8     266
;!                                              2 COMMON     4     4      0
;!                                              0 BANK0      8     0      8
;! ---------------------------------------------------------------------------------
;! (3) _ADC_Sample                                          18    17      1     912
;!                                              2 COMMON     5     4      1
;!                                              0 BANK0     13    13      0
;! ---------------------------------------------------------------------------------
;! (2) _bujinCtr                                             3     3      0      68
;!                                              2 COMMON     3     3      0
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
;!     _bujinCtr
;!     _fanCtr
;!       _ADC_Sample
;!       ___lmul
;!       _fanInit
;!       _fanStop
;!     _keyLedCtr
;!       ___lwmod
;!     _wuhuaCtr
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
;!BANK1               50      4      2D       6       56.3%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0      88       8        0.0%
;!DATA                 0      0      88       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 781 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
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
;;		On exit  : 200/0
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
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	781
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	781
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	783
	
l4675:	
;main.c: 783: Init_System();
	fcall	_Init_System
	line	784
	
l4677:	
;main.c: 784: firstLock = 1;
	clrf	(_firstLock)^080h
	incf	(_firstLock)^080h,f
	line	785
	
l4679:	
;main.c: 785: firstTime = 200;
	movlw	low(0C8h)
	movwf	(_firstTime)^080h
	line	788
	
l4681:	
;main.c: 787: {
;main.c: 788: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u4821
	goto	u4820
u4821:
	goto	l4681
u4820:
	line	790
	
l4683:	
;main.c: 789: {
;main.c: 790: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	791
# 791 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
clrwdt ;# 
psect	maintext
	line	793
	
l4685:	
;main.c: 793: CheckTouchKey();
	fcall	_CheckTouchKey
	line	794
	
l4687:	
;main.c: 794: chrgCtr();
	fcall	_chrgCtr
	line	795
	
l4689:	
;main.c: 795: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	796
	
l4691:	
;main.c: 796: KeyServer();
	fcall	_KeyServer
	line	797
	
l4693:	
;main.c: 797: workCtr();
	fcall	_workCtr
	line	798
	
l4695:	
;main.c: 798: if(firstTime == 0 && chrgFlag == 0 && workStep == 0 && powerFlag == 0 && keyCount == 0 && wuhuaFlag == 0 && bujinFlag == 0 && shanshuoTime == 0 && shanshuoTime2 == 0)
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstTime)^080h),w
	btfss	status,2
	goto	u4831
	goto	u4830
u4831:
	goto	l4681
u4830:
	
l4697:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u4841
	goto	u4840
u4841:
	goto	l4681
u4840:
	
l4699:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u4851
	goto	u4850
u4851:
	goto	l4681
u4850:
	
l4701:	
	movf	((_powerFlag)),w
	btfss	status,2
	goto	u4861
	goto	u4860
u4861:
	goto	l4681
u4860:
	
l4703:	
	movf	((_keyCount)),w
iorwf	((_keyCount+1)),w
	btfss	status,2
	goto	u4871
	goto	u4870
u4871:
	goto	l4681
u4870:
	
l4705:	
	movf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u4881
	goto	u4880
u4881:
	goto	l4681
u4880:
	
l4707:	
	movf	((_bujinFlag)),w
	btfss	status,2
	goto	u4891
	goto	u4890
u4891:
	goto	l4681
u4890:
	
l4709:	
	movf	((_shanshuoTime)),w
iorwf	((_shanshuoTime+1)),w
	btfss	status,2
	goto	u4901
	goto	u4900
u4901:
	goto	l4681
u4900:
	
l4711:	
	movf	((_shanshuoTime2)),w
iorwf	((_shanshuoTime2+1)),w
	btfss	status,2
	goto	u4911
	goto	u4910
u4911:
	goto	l4681
u4910:
	line	800
	
l4713:	
;main.c: 799: {
;main.c: 800: WorkSleep();
	fcall	_WorkSleep
	goto	l4681
	global	start
	ljmp	start
	opt stack 0
	line	804
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 725 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  power_temp      4    0[BANK1 ] volatile unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
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
;;		_bujinCtr
;;		_fanCtr
;;		_keyLedCtr
;;		_wuhuaCtr
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	725
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	725
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	727
	
l4597:	
;main.c: 727: test_adc = ADC_Sample(31, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(01Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	728
	
l4599:	
;main.c: 728: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u4701
	goto	u4700
u4701:
	goto	l4605
u4700:
	line	732
	
l4601:	
;main.c: 729: {
;main.c: 730: volatile unsigned long power_temp;
;main.c: 732: power_temp = (unsigned long)(((4096UL*1.2*1000))/adresult);
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

	line	733
	
l4603:	
;main.c: 733: power_ad = (unsigned int)(power_temp);
	movf	(workCtr@power_temp+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_power_ad+1)	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movf	(workCtr@power_temp)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_power_ad)	;volatile
	line	735
	
l4605:	
;main.c: 734: }
;main.c: 735: if(workStep == 2 && power_ad < 3300)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u4711
	goto	u4710
u4711:
	goto	l4615
u4710:
	
l4607:	
	movlw	0Ch
	subwf	(_power_ad+1),w	;volatile
	movlw	0E4h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u4721
	goto	u4720
u4721:
	goto	l4615
u4720:
	line	737
	
l4609:	
;main.c: 736: {
;main.c: 737: if(++lowFanTime > 200)
	movlw	low(0C9h)
	incf	(_lowFanTime),f
	subwf	((_lowFanTime)),w
	skipc
	goto	u4731
	goto	u4730
u4731:
	goto	l4617
u4730:
	line	739
	
l4611:	
;main.c: 738: {
;main.c: 739: lowFanTime = 0;
	clrf	(_lowFanTime)
	line	740
	
l4613:	
;main.c: 740: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l4617
	line	745
	
l4615:	
;main.c: 743: else
;main.c: 744: {
;main.c: 745: lowFanTime = 0;
	clrf	(_lowFanTime)
	line	747
	
l4617:	
;main.c: 746: }
;main.c: 747: if(power_ad < 2900)
	movlw	0Bh
	subwf	(_power_ad+1),w	;volatile
	movlw	054h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u4741
	goto	u4740
u4741:
	goto	l4625
u4740:
	line	749
	
l4619:	
;main.c: 748: {
;main.c: 749: if(++lowBatTime > 1000)
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
	goto	u4751
	goto	u4750
u4751:
	goto	l4627
u4750:
	line	751
	
l4621:	
;main.c: 750: {
;main.c: 751: lowBatTime = 0;
	clrf	(_lowBatTime)^080h
	clrf	(_lowBatTime+1)^080h
	line	752
	
l4623:	
;main.c: 752: lowBatLock = 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowBatLock)
	incf	(_lowBatLock),f
	line	753
;main.c: 753: workStep = 0;
	clrf	(_workStep)
	line	754
;main.c: 754: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	line	755
;main.c: 755: bujinFlag = 0;
	clrf	(_bujinFlag)
	goto	l4627
	line	760
	
l4625:	
;main.c: 758: else
;main.c: 759: {
;main.c: 760: lowBatTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_lowBatTime)^080h
	clrf	(_lowBatTime+1)^080h
	line	762
	
l4627:	
;main.c: 761: }
;main.c: 762: if(firstTime > 0)
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstTime)^080h),w
	btfsc	status,2
	goto	u4761
	goto	u4760
u4761:
	goto	l4635
u4760:
	line	764
	
l4629:	
;main.c: 763: {
;main.c: 764: firstTime--;
	decf	(_firstTime)^080h,f
	line	765
	
l4631:	
;main.c: 765: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	766
	
l4633:	
;main.c: 766: PORTA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	767
;main.c: 767: }
	goto	l1122
	line	770
	
l4635:	
;main.c: 768: else
;main.c: 769: {
;main.c: 770: keyLedCtr();
	fcall	_keyLedCtr
	line	771
;main.c: 771: fanCtr();
	fcall	_fanCtr
	line	772
;main.c: 772: wuhuaCtr();
	fcall	_wuhuaCtr
	line	773
	
l4637:	
;main.c: 773: bujinCtr();
	fcall	_bujinCtr
	line	776
	
l1122:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_wuhuaCtr

;; *************** function _wuhuaCtr *****************
;; Defined at:
;;		line 574 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	574
global __ptext2
__ptext2:	;psect for function _wuhuaCtr
psect	text2
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	574
	global	__size_of_wuhuaCtr
	__size_of_wuhuaCtr	equ	__end_of_wuhuaCtr-_wuhuaCtr
	
_wuhuaCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _wuhuaCtr: [wreg+status,2+status,0+pclath+cstack]
	line	576
	
l4325:	
;main.c: 576: if(count1s == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_count1s)),w
	btfss	status,2
	goto	u4261
	goto	u4260
u4261:
	goto	l4343
u4260:
	line	578
	
l4327:	
;main.c: 577: {
;main.c: 578: if(++count10s >= 20)
	movlw	low(014h)
	incf	(_count10s),f
	subwf	((_count10s)),w
	skipc
	goto	u4271
	goto	u4270
u4271:
	goto	l4331
u4270:
	line	580
	
l4329:	
;main.c: 579: {
;main.c: 580: count10s = 0;
	clrf	(_count10s)
	line	582
	
l4331:	
;main.c: 581: }
;main.c: 582: if(workStep == 0 && wuhuaFlag == 0 && powerFlag > 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u4281
	goto	u4280
u4281:
	goto	l4341
u4280:
	
l4333:	
	movf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u4291
	goto	u4290
u4291:
	goto	l4341
u4290:
	
l4335:	
	movf	((_powerFlag)),w
	btfsc	status,2
	goto	u4301
	goto	u4300
u4301:
	goto	l4341
u4300:
	line	584
	
l4337:	
;main.c: 583: {
;main.c: 584: if(++closeTime > 200)
	movlw	low(0C9h)
	incf	(_closeTime),f
	subwf	((_closeTime)),w
	skipc
	goto	u4311
	goto	u4310
u4311:
	goto	l4343
u4310:
	line	586
	
l4339:	
;main.c: 585: {
;main.c: 586: closeTime = 0;
	clrf	(_closeTime)
	line	587
;main.c: 587: powerFlag = 0;
	clrf	(_powerFlag)
	goto	l4343
	line	592
	
l4341:	
;main.c: 590: else
;main.c: 591: {
;main.c: 592: closeTime = 0;
	clrf	(_closeTime)
	line	595
	
l4343:	
;main.c: 593: }
;main.c: 594: }
;main.c: 595: if(wuhuaFlag == 1 || (wuhuaFlag == 2 && count10s < 10))
		decf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u4321
	goto	u4320
u4321:
	goto	l4349
u4320:
	
l4345:	
		movlw	2
	xorwf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u4331
	goto	u4330
u4331:
	goto	l4351
u4330:
	
l4347:	
	movlw	low(0Ah)
	subwf	(_count10s),w
	skipnc
	goto	u4341
	goto	u4340
u4341:
	goto	l4351
u4340:
	line	597
	
l4349:	
;main.c: 596: {
;main.c: 597: pwmInit();
	fcall	_pwmInit
	line	626
;main.c: 626: }
	goto	l1075
	line	629
	
l4351:	
;main.c: 627: else
;main.c: 628: {
;main.c: 629: pwmStop();
	fcall	_pwmStop
	line	631
	
l1075:	
	return
	opt stack 0
GLOBAL	__end_of_wuhuaCtr
	__end_of_wuhuaCtr:
	signat	_wuhuaCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 490 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
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
	line	490
global __ptext3
__ptext3:	;psect for function _pwmStop
psect	text3
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	490
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [status,2]
	line	492
	
l4063:	
;main.c: 492: PWMD3L = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(156)^080h	;volatile
	line	493
	
l4065:	
;main.c: 493: PWMCON0 &= 0xF7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(21)+(3/8),(3)&7	;volatile
	line	494
	
l4067:	
;main.c: 494: PORTA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(3/8),(3)&7	;volatile
	line	495
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 478 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
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
	line	478
global __ptext4
__ptext4:	;psect for function _pwmInit
psect	text4
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	478
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2+status,0]
	line	481
	
l4053:	
;main.c: 481: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	482
	
l4055:	
;main.c: 482: PWMTL = 73;
	movlw	low(049h)
	movwf	(23)	;volatile
	line	483
	
l4057:	
;main.c: 483: PWMD23H = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	484
;main.c: 484: PWMD3L = 32;
	movlw	low(020h)
	movwf	(156)^080h	;volatile
	line	485
;main.c: 485: PWMCON1 = 0xC0;
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(22)	;volatile
	line	486
	
l4059:	
;main.c: 486: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	487
	
l4061:	
;main.c: 487: PWMCON0 |= 0x28;
	movlw	low(028h)
	iorwf	(21),f	;volatile
	line	488
	
l1038:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_keyLedCtr

;; *************** function _keyLedCtr *****************
;; Defined at:
;;		line 401 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
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
	line	401
global __ptext5
__ptext5:	;psect for function _keyLedCtr
psect	text5
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	401
	global	__size_of_keyLedCtr
	__size_of_keyLedCtr	equ	__end_of_keyLedCtr-_keyLedCtr
	
_keyLedCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyLedCtr: [wreg+status,2+status,0+pclath+cstack]
	line	403
	
l4229:	
;main.c: 403: if(shanshuoTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_shanshuoTime)),w
iorwf	((_shanshuoTime+1)),w
	btfsc	status,2
	goto	u4031
	goto	u4030
u4031:
	goto	l4237
u4030:
	line	405
	
l4231:	
;main.c: 404: {
;main.c: 405: shanshuoTime--;
	movlw	01h
	subwf	(_shanshuoTime),f
	movlw	0
	skipc
	decf	(_shanshuoTime+1),f
	subwf	(_shanshuoTime+1),f
	line	406
	
l4233:	
;main.c: 406: if((shanshuoTime % 150) < 75)
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
	goto	u4041
	goto	u4040
u4041:
	goto	l1012
u4040:
	line	408
	
l4235:	
;main.c: 407: {
;main.c: 408: PORTC |= 0x01;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(262)^0100h+(0/8),(0)&7	;volatile
	line	409
;main.c: 409: }
	goto	l4241
	line	410
	
l1012:	
	line	412
;main.c: 410: else
;main.c: 411: {
;main.c: 412: PORTC &= 0xFE;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(262)^0100h+(0/8),(0)&7	;volatile
	goto	l4241
	line	415
	
l4237:	
;main.c: 415: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4051
	goto	u4050
u4051:
	goto	l4235
u4050:
	goto	l1012
	line	424
	
l4241:	
;main.c: 422: }
;main.c: 424: if(shanshuoTime2 > 0)
	bcf	status, 6	;RP1=0, select bank0
	movf	((_shanshuoTime2)),w
iorwf	((_shanshuoTime2+1)),w
	btfsc	status,2
	goto	u4061
	goto	u4060
u4061:
	goto	l4249
u4060:
	line	426
	
l4243:	
;main.c: 425: {
;main.c: 426: shanshuoTime2--;
	movlw	01h
	subwf	(_shanshuoTime2),f
	movlw	0
	skipc
	decf	(_shanshuoTime2+1),f
	subwf	(_shanshuoTime2+1),f
	line	427
	
l4245:	
;main.c: 427: if((shanshuoTime2 % 150) < 75)
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
	goto	u4071
	goto	u4070
u4071:
	goto	l1018
u4070:
	line	429
	
l4247:	
;main.c: 428: {
;main.c: 429: PORTC |= 0x02;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(262)^0100h+(1/8),(1)&7	;volatile
	line	430
;main.c: 430: }
	goto	l4253
	line	431
	
l1018:	
	line	433
;main.c: 431: else
;main.c: 432: {
;main.c: 433: PORTC &= 0xFD;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(262)^0100h+(1/8),(1)&7	;volatile
	goto	l4253
	line	436
	
l4249:	
;main.c: 436: else if(wuhuaFlag > 0)
	movf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u4081
	goto	u4080
u4081:
	goto	l4247
u4080:
	goto	l1018
	line	444
	
l4253:	
;main.c: 443: }
;main.c: 444: if(shanshuoTime3 > 0)
	bcf	status, 6	;RP1=0, select bank0
	movf	((_shanshuoTime3)),w
iorwf	((_shanshuoTime3+1)),w
	btfsc	status,2
	goto	u4091
	goto	u4090
u4091:
	goto	l4261
u4090:
	line	446
	
l4255:	
;main.c: 445: {
;main.c: 446: shanshuoTime3--;
	movlw	01h
	subwf	(_shanshuoTime3),f
	movlw	0
	skipc
	decf	(_shanshuoTime3+1),f
	subwf	(_shanshuoTime3+1),f
	line	447
	
l4257:	
;main.c: 447: if((shanshuoTime3 % 150) < 75)
	movlw	096h
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_shanshuoTime3+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_shanshuoTime3),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movlw	0
	subwf	(1+(?___lwmod)),w
	movlw	04Bh
	skipnz
	subwf	(0+(?___lwmod)),w
	skipnc
	goto	u4101
	goto	u4100
u4101:
	goto	l1024
u4100:
	line	449
	
l4259:	
;main.c: 448: {
;main.c: 449: PORTA |= 0x01;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(0/8),(0)&7	;volatile
	line	450
;main.c: 450: }
	goto	l1035
	line	451
	
l1024:	
	line	453
;main.c: 451: else
;main.c: 452: {
;main.c: 453: PORTA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(0/8),(0)&7	;volatile
	goto	l1035
	line	456
	
l4261:	
;main.c: 456: else if(powerFlag)
	movf	((_powerFlag)),w
	btfsc	status,2
	goto	u4111
	goto	u4110
u4111:
	goto	l4265
u4110:
	goto	l1024
	line	460
	
l4265:	
;main.c: 460: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u4121
	goto	u4120
u4121:
	goto	l4259
u4120:
	line	462
	
l4267:	
;main.c: 461: {
;main.c: 462: if(chrgFullFlag || count1s < 50)
	movf	((_chrgFullFlag)),w
	btfss	status,2
	goto	u4131
	goto	u4130
u4131:
	goto	l1024
u4130:
	
l4269:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u4141
	goto	u4140
u4141:
	goto	l4259
u4140:
	goto	l1024
	line	476
	
l1035:	
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
	
l4123:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u3901
	goto	u3900
u3901:
	goto	l4139
u3900:
	line	14
	
l4125:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l4129
	line	16
	
l4127:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l4129:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3911
	goto	u3910
u3911:
	goto	l4127
u3910:
	line	20
	
l4131:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3925
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3925:
	skipc
	goto	u3921
	goto	u3920
u3921:
	goto	l4135
u3920:
	line	21
	
l4133:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l4135:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l4137:	
	decfsz	(___lwmod@counter),f
	goto	u3931
	goto	u3930
u3931:
	goto	l4131
u3930:
	line	25
	
l4139:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1710:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_fanCtr

;; *************** function _fanCtr *****************
;; Defined at:
;;		line 515 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
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
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	515
global __ptext7
__ptext7:	;psect for function _fanCtr
psect	text7
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	515
	global	__size_of_fanCtr
	__size_of_fanCtr	equ	__end_of_fanCtr-_fanCtr
	
_fanCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _fanCtr: [wreg+status,2+status,0+pclath+cstack]
	line	517
	
l4271:	
;main.c: 517: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4151
	goto	u4150
u4151:
	goto	l4319
u4150:
	line	519
	
l4273:	
;main.c: 518: {
;main.c: 519: PORTA |= 0x02;
	bsf	(134)^080h+(1/8),(1)&7	;volatile
	line	520
	
l4275:	
;main.c: 520: unsigned char maxFanValue = 52;
	movlw	low(034h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fanCtr@maxFanValue)
	line	521
	
l4277:	
;main.c: 521: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u4161
	goto	u4160
u4161:
	goto	l1051
u4160:
	line	523
	
l4279:	
;main.c: 522: {
;main.c: 523: maxFanValue = 40;
	movlw	low(028h)
	movwf	(fanCtr@maxFanValue)
	line	524
	
l1051:	
	line	525
;main.c: 524: }
;main.c: 525: if(power_ad < 3150)
	movlw	0Ch
	subwf	(_power_ad+1),w	;volatile
	movlw	04Eh
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u4171
	goto	u4170
u4171:
	goto	l4283
u4170:
	line	527
	
l4281:	
;main.c: 526: {
;main.c: 527: maxFanValue = 32;
	movlw	low(020h)
	movwf	(fanCtr@maxFanValue)
	line	529
	
l4283:	
;main.c: 528: }
;main.c: 529: if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l4287
u4180:
	line	531
	
l4285:	
;main.c: 530: {
;main.c: 531: maxFanValue = 10;
	movlw	low(0Ah)
	movwf	(fanCtr@maxFanValue)
	line	533
	
l4287:	
;main.c: 532: }
;main.c: 533: test_adc = ADC_Sample(2, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	534
	
l4289:	
;main.c: 534: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u4191
	goto	u4190
u4191:
	goto	l4299
u4190:
	line	537
	
l4291:	
;main.c: 535: {
;main.c: 536: volatile unsigned long fan_temp;
;main.c: 537: if(power_ad > 0)
	movf	((_power_ad)),w	;volatile
iorwf	((_power_ad+1)),w	;volatile
	btfsc	status,2
	goto	u4201
	goto	u4200
u4201:
	goto	l4299
u4200:
	line	539
	
l4293:	
;main.c: 538: {
;main.c: 539: fan_temp = ((unsigned long)1UL*adresult * power_ad)/4096;
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

	
l4295:	
	movlw	0Ch
u4215:
	clrc
	rrf	(fanCtr@fan_temp+3),f	;volatile
	rrf	(fanCtr@fan_temp+2),f	;volatile
	rrf	(fanCtr@fan_temp+1),f	;volatile
	rrf	(fanCtr@fan_temp),f	;volatile
	addlw	-1
	skipz
	goto	u4215

	line	540
	
l4297:	
;main.c: 540: fanValue = (unsigned int)(fan_temp);
	movf	(fanCtr@fan_temp+1),w	;volatile
	movwf	(_fanValue+1)
	movf	(fanCtr@fan_temp),w	;volatile
	movwf	(_fanValue)
	line	543
	
l4299:	
;main.c: 541: }
;main.c: 542: }
;main.c: 543: if(fanValue > 1300)
	movlw	05h
	subwf	(_fanValue+1),w
	movlw	015h
	skipnz
	subwf	(_fanValue),w
	skipc
	goto	u4221
	goto	u4220
u4221:
	goto	l4307
u4220:
	line	545
	
l4301:	
;main.c: 544: {
;main.c: 545: if(++fanOverTime > 50)
	movlw	low(033h)
	incf	(_fanOverTime),f
	subwf	((_fanOverTime)),w
	skipc
	goto	u4231
	goto	u4230
u4231:
	goto	l4309
u4230:
	line	547
	
l4303:	
;main.c: 546: {
;main.c: 547: fanOverTime = 0;
	clrf	(_fanOverTime)
	line	548
;main.c: 548: workStep = 0;
	clrf	(_workStep)
	line	549
	
l4305:	
;main.c: 549: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	goto	l4309
	line	554
	
l4307:	
;main.c: 552: else
;main.c: 553: {
;main.c: 554: fanOverTime = 0;
	clrf	(_fanOverTime)
	line	556
	
l4309:	
;main.c: 555: }
;main.c: 556: if(fanDuty < maxFanValue)
	movf	(fanCtr@maxFanValue),w
	subwf	(_fanDuty),w
	skipnc
	goto	u4241
	goto	u4240
u4241:
	goto	l4313
u4240:
	line	558
	
l4311:	
;main.c: 557: {
;main.c: 558: fanDuty++;
	incf	(_fanDuty),f
	line	559
;main.c: 559: }
	goto	l4317
	line	560
	
l4313:	
;main.c: 560: else if(fanDuty > maxFanValue)
	movf	(_fanDuty),w
	subwf	(fanCtr@maxFanValue),w
	skipnc
	goto	u4251
	goto	u4250
u4251:
	goto	l4317
u4250:
	line	562
	
l4315:	
;main.c: 561: {
;main.c: 562: fanDuty--;
	decf	(_fanDuty),f
	line	564
	
l4317:	
;main.c: 563: }
;main.c: 564: fanInit();
	fcall	_fanInit
	line	565
;main.c: 565: }
	goto	l1063
	line	568
	
l4319:	
;main.c: 566: else
;main.c: 567: {
;main.c: 568: fanStop();
	fcall	_fanStop
	line	569
	
l4321:	
;main.c: 569: fanDuty = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_fanDuty)
	line	570
	
l4323:	
;main.c: 570: PORTA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(1/8),(1)&7	;volatile
	line	572
	
l1063:	
	return
	opt stack 0
GLOBAL	__end_of_fanCtr
	__end_of_fanCtr:
	signat	_fanCtr,89
	global	_fanStop

;; *************** function _fanStop *****************
;; Defined at:
;;		line 508 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
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
;;		_fanCtr
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	508
global __ptext8
__ptext8:	;psect for function _fanStop
psect	text8
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	508
	global	__size_of_fanStop
	__size_of_fanStop	equ	__end_of_fanStop-_fanStop
	
_fanStop:	
;incstack = 0
	opt	stack 4
; Regs used in _fanStop: [status,2]
	line	510
	
l4081:	
;main.c: 510: PWMD4L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(27)	;volatile
	line	511
	
l4083:	
;main.c: 511: PWMCON0 &= 0xEF;
	bcf	(21)+(4/8),(4)&7	;volatile
	line	512
	
l4085:	
;main.c: 512: PORTA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(4/8),(4)&7	;volatile
	line	513
	
l1047:	
	return
	opt stack 0
GLOBAL	__end_of_fanStop
	__end_of_fanStop:
	signat	_fanStop,89
	global	_fanInit

;; *************** function _fanInit *****************
;; Defined at:
;;		line 497 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
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
	line	497
global __ptext9
__ptext9:	;psect for function _fanInit
psect	text9
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	497
	global	__size_of_fanInit
	__size_of_fanInit	equ	__end_of_fanInit-_fanInit
	
_fanInit:	
;incstack = 0
	opt	stack 4
; Regs used in _fanInit: [wreg+status,2+status,0]
	line	500
	
l4069:	
;main.c: 500: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	501
	
l4071:	
;main.c: 501: PWMT4L = 73;
	movlw	low(049h)
	movwf	(28)	;volatile
	line	502
	
l4073:	
;main.c: 502: PWMD4L = fanDuty;
	movf	(_fanDuty),w
	movwf	(27)	;volatile
	line	503
	
l4075:	
;main.c: 503: PWMCON1 = 0xC0;
	movlw	low(0C0h)
	movwf	(22)	;volatile
	line	504
	
l4077:	
;main.c: 504: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	505
	
l4079:	
;main.c: 505: PWMCON0 |= 0x30;
	movlw	low(030h)
	iorwf	(21),f	;volatile
	line	506
	
l1044:	
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
	
l4087:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	120
	
l1372:	
	line	121
	btfss	(___lmul@multiplier),(0)&7
	goto	u3791
	goto	u3790
u3791:
	goto	l4091
u3790:
	line	122
	
l4089:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3801
	addwf	(___lmul@product+1),f
u3801:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3802
	addwf	(___lmul@product+2),f
u3802:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3803
	addwf	(___lmul@product+3),f
u3803:

	line	123
	
l4091:	
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	124
	
l4093:	
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
	goto	u3811
	goto	u3810
u3811:
	goto	l1372
u3810:
	line	128
	
l4095:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	129
	
l1375:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 302 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
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
;;		On entry : 200/0
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	302
global __ptext11
__ptext11:	;psect for function _ADC_Sample
psect	text11
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	302
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	304
	
l3981:	
;main.c: 304: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	305
	
l3983:	
;main.c: 305: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	306
;main.c: 306: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	308
	
l3985:	
;main.c: 308: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u3641
	goto	u3640
u3641:
	goto	l3991
u3640:
	
l3987:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u3651
	goto	u3650
u3651:
	goto	l3991
u3650:
	line	311
	
l3989:	
;main.c: 309: {
;main.c: 311: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	312
;main.c: 312: _delay((unsigned long)((100)*(8000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
movwf	((??_ADC_Sample+0)+0),f
	u4927:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u4927
	nop
opt asmopt_pop

	line	313
;main.c: 313: }
	goto	l3993
	line	315
	
l3991:	
;main.c: 314: else
;main.c: 315: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	317
	
l3993:	
;main.c: 317: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u3661
	goto	u3660
u3661:
	goto	l3999
u3660:
	line	319
	
l3995:	
;main.c: 318: {
;main.c: 319: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	320
	
l3997:	
;main.c: 320: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	322
	
l3999:	
	line	323
	
l4001:	
;main.c: 323: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	325
	
l4007:	
;main.c: 324: {
;main.c: 325: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u3675:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u3675
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	326
# 326 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
nop ;# 
	line	327
# 327 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
nop ;# 
	line	328
# 328 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
nop ;# 
	line	329
# 329 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
nop ;# 
psect	text11
	line	330
	
l4009:	
;main.c: 330: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	332
	
l4011:	
;main.c: 332: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	333
;main.c: 333: while (GODONE)
	goto	l989
	
l990:	
	line	335
;main.c: 334: {
;main.c: 335: _delay((unsigned long)((2)*(8000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	337
;main.c: 337: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u3681
	goto	u3680
u3681:
	goto	l989
u3680:
	line	338
	
l4013:	
;main.c: 338: return 0;
	movlw	low(0)
	goto	l992
	line	339
	
l989:	
	line	333
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3691
	goto	u3690
u3691:
	goto	l990
u3690:
	line	341
	
l4017:	
;main.c: 339: }
;main.c: 341: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l4019:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	343
	
l4021:	
;main.c: 343: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l4025
u3700:
	line	345
	
l4023:	
;main.c: 344: {
;main.c: 345: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	346
;main.c: 346: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	347
;main.c: 347: }
	goto	l995
	line	348
	
l4025:	
;main.c: 348: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u3715
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u3715:
	skipnc
	goto	u3711
	goto	u3710
u3711:
	goto	l4029
u3710:
	line	349
	
l4027:	
;main.c: 349: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l995
	line	350
	
l4029:	
;main.c: 350: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u3725
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u3725:
	skipnc
	goto	u3721
	goto	u3720
u3721:
	goto	l995
u3720:
	line	351
	
l4031:	
;main.c: 351: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	353
	
l995:	
;main.c: 353: adsum += ad_temp;
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
	goto	u3731
	addwf	(ADC_Sample@adsum+1),f	;volatile
u3731:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3732
	addwf	(ADC_Sample@adsum+2),f	;volatile
u3732:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3733
	addwf	(ADC_Sample@adsum+3),f	;volatile
u3733:

	line	323
	
l4033:	
	incf	(ADC_Sample@i),f
	
l4035:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l4007
u3740:
	line	355
	
l4037:	
;main.c: 354: }
;main.c: 355: adsum -= admax;
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
	goto	u3755
	goto	u3756
u3755:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3756:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3757
	goto	u3758
u3757:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3758:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3759
	goto	u3750
u3759:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3750:

	line	356
;main.c: 356: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u3765
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u3765
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u3765
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u3765:
	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l999
u3760:
	line	357
	
l4039:	
;main.c: 357: adsum -= admin;
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
	goto	u3775
	goto	u3776
u3775:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3776:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3777
	goto	u3778
u3777:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3778:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3779
	goto	u3770
u3779:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3770:

	goto	l4041
	line	358
	
l999:	
	line	359
;main.c: 358: else
;main.c: 359: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	361
	
l4041:	
;main.c: 361: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u3785:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u3780:
	addlw	-1
	skipz
	goto	u3785
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	363
	
l4043:	
;main.c: 363: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	364
	
l4045:	
;main.c: 364: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	365
	
l4047:	
;main.c: 365: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	366
	
l4049:	
;main.c: 366: return 0xA5;
	movlw	low(0A5h)
	line	368
	
l992:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_bujinCtr

;; *************** function _bujinCtr *****************
;; Defined at:
;;		line 633 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempStep        1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	633
global __ptext12
__ptext12:	;psect for function _bujinCtr
psect	text12
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	633
	global	__size_of_bujinCtr
	__size_of_bujinCtr	equ	__end_of_bujinCtr-_bujinCtr
	
_bujinCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _bujinCtr: [wreg-fsr0h+status,2+status,0]
	line	635
	
l4353:	
;main.c: 635: if(bujinFlag || motorStep > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_bujinFlag)),w
	btfss	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l4357
u4350:
	
l4355:	
	movf	((_motorStep)),w
iorwf	((_motorStep+1)),w
	btfsc	status,2
	goto	u4361
	goto	u4360
u4361:
	goto	l4389
u4360:
	line	637
	
l4357:	
;main.c: 636: {
;main.c: 637: if(bujinFlag == 1)
		decf	((_bujinFlag)),w
	btfss	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l4361
u4370:
	line	639
	
l4359:	
;main.c: 638: {
;main.c: 639: maxMotorStep = 512;
	movlw	0
	movwf	(_maxMotorStep)
	movlw	02h
	movwf	((_maxMotorStep))+1
	line	640
;main.c: 640: }
	goto	l4369
	line	641
	
l4361:	
;main.c: 641: else if(bujinFlag == 2)
		movlw	2
	xorwf	((_bujinFlag)),w
	btfss	status,2
	goto	u4381
	goto	u4380
u4381:
	goto	l4365
u4380:
	line	643
	
l4363:	
;main.c: 642: {
;main.c: 643: maxMotorStep = 1024;
	movlw	0
	movwf	(_maxMotorStep)
	movlw	04h
	movwf	((_maxMotorStep))+1
	line	644
;main.c: 644: }
	goto	l4369
	line	645
	
l4365:	
;main.c: 645: else if(bujinFlag == 3)
		movlw	3
	xorwf	((_bujinFlag)),w
	btfss	status,2
	goto	u4391
	goto	u4390
u4391:
	goto	l4369
u4390:
	line	647
	
l4367:	
;main.c: 646: {
;main.c: 647: maxMotorStep = 1360;
	movlw	050h
	movwf	(_maxMotorStep)
	movlw	05h
	movwf	((_maxMotorStep))+1
	line	649
	
l4369:	
;main.c: 648: }
;main.c: 649: if(++motorStep >= (maxMotorStep*2))
	movf	(_maxMotorStep+1),w
	movwf	(??_bujinCtr+0)+0+1
	movf	(_maxMotorStep),w
	movwf	(??_bujinCtr+0)+0
	clrc
	rlf	(??_bujinCtr+0)+0,f
	rlf	(??_bujinCtr+0)+1,f
	incf	(_motorStep),f
	skipnz
	incf	(_motorStep+1),f
	movf	1+(??_bujinCtr+0)+0,w
	subwf	((_motorStep+1)),w
	skipz
	goto	u4405
	movf	0+(??_bujinCtr+0)+0,w
	subwf	((_motorStep)),w
u4405:
	skipc
	goto	u4401
	goto	u4400
u4401:
	goto	l4373
u4400:
	line	651
	
l4371:	
;main.c: 650: {
;main.c: 651: motorStep = 0;
	clrf	(_motorStep)
	clrf	(_motorStep+1)
	line	653
	
l4373:	
;main.c: 652: }
;main.c: 653: unsigned char tempStep = motorStep % 8;
	movf	(_motorStep),w
	movwf	(bujinCtr@tempStep)
	
l4375:	
	movlw	low(07h)
	andwf	(bujinCtr@tempStep),f
	line	654
	
l4377:	
;main.c: 654: if(motorStep < maxMotorStep)
	movf	(_maxMotorStep+1),w
	subwf	(_motorStep+1),w
	skipz
	goto	u4415
	movf	(_maxMotorStep),w
	subwf	(_motorStep),w
u4415:
	skipnc
	goto	u4411
	goto	u4410
u4411:
	goto	l4387
u4410:
	goto	l4383
	line	659
;main.c: 658: {
;main.c: 659: case 0:
	
l1089:	
	line	660
;main.c: 660: RA5 = 1;RA6 = 0;RA7 = 0;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	661
;main.c: 661: break;
	goto	l1110
	line	662
;main.c: 662: case 1:
	
l1091:	
	line	663
;main.c: 663: RA5 = 1;RA6 = 1;RA7 = 0;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	bsf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	664
;main.c: 664: break;
	goto	l1110
	line	665
;main.c: 665: case 2:
	
l1092:	
	line	666
;main.c: 666: RA5 = 0;RA6 = 1;RA7 = 0;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bsf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	667
;main.c: 667: break;
	goto	l1110
	line	668
;main.c: 668: case 3:
	
l1093:	
	line	669
;main.c: 669: RA5 = 0;RA6 = 1;RA7 = 1;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bsf	(1078/8)^080h,(1078)&7	;volatile
	bsf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	670
;main.c: 670: break;
	goto	l1110
	line	671
;main.c: 671: case 4:
	
l1094:	
	line	672
;main.c: 672: RA5 = 0;RA6 = 0;RA7 = 1;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bsf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	673
;main.c: 673: break;
	goto	l1110
	line	674
;main.c: 674: case 5:
	
l1095:	
	line	675
;main.c: 675: RA5 = 0;RA6 = 0;RA7 = 1;RB7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bsf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	676
;main.c: 676: break;
	goto	l1110
	line	677
;main.c: 677: case 6:
	
l1096:	
	line	678
;main.c: 678: RA5 = 0;RA6 = 0;RA7 = 0;RB7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	679
;main.c: 679: break;
	goto	l1110
	line	680
;main.c: 680: case 7:
	
l1097:	
	line	681
;main.c: 681: RA5 = 1;RA6 = 0;RA7 = 0;RB7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	682
;main.c: 682: break;
	goto	l1110
	line	657
	
l4383:	
	movf	(bujinCtr@tempStep),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 0 to 7
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           23     7 (fixed)
; simple_byte           25    13 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	8
	subwf	fsr,w
skipnc
goto l1110
movlw high(S4755)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S4755)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S4755:
	ljmp	l1089
	ljmp	l1091
	ljmp	l1092
	ljmp	l1093
	ljmp	l1094
	ljmp	l1095
	ljmp	l1096
	ljmp	l1097
psect	text12

	line	688
	
l4387:	
	movf	(bujinCtr@tempStep),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 0 to 7
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           23     7 (fixed)
; simple_byte           25    13 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	8
	subwf	fsr,w
skipnc
goto l1110
movlw high(S4757)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S4757)
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
S4757:
	ljmp	l1097
	ljmp	l1096
	ljmp	l1095
	ljmp	l1094
	ljmp	l1093
	ljmp	l1092
	ljmp	l1091
	ljmp	l1089
psect	text12

	line	719
	
l4389:	
;main.c: 717: else
;main.c: 718: {
;main.c: 719: PORTA &= 0x1F;
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	720
	
l4391:	
;main.c: 720: PORTB &= 0x7F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(7/8),(7)&7	;volatile
	line	722
	
l1110:	
	return
	opt stack 0
GLOBAL	__end_of_bujinCtr
	__end_of_bujinCtr:
	signat	_bujinCtr,89
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
psect	text13,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
	line	28
global __ptext13
__ptext13:	;psect for function ___lwtoft
psect	text13
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l4551:	
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
	
l1715:	
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
psect	text14,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
	line	44
global __ptext14
__ptext14:	;psect for function ___fttol
psect	text14
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l4511:	
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
	goto	u4591
	goto	u4590
u4591:
	goto	l4515
u4590:
	line	50
	
l4513:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l1606
	line	51
	
l4515:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u4605:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u4600:
	addlw	-1
	skipz
	goto	u4605
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l4517:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l4519:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l4521:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l4523:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l4525:	
	btfss	(___fttol@exp1),7
	goto	u4611
	goto	u4610
u4611:
	goto	l4535
u4610:
	line	57
	
l4527:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4621
	goto	u4620
u4621:
	goto	l4531
u4620:
	goto	l4513
	line	60
	
l4531:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l4533:	
	incfsz	(___fttol@exp1),f
	goto	u4631
	goto	u4630
u4631:
	goto	l4531
u4630:
	goto	l4543
	line	63
	
l4535:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u4641
	goto	u4640
u4641:
	goto	l4541
u4640:
	goto	l4513
	line	66
	
l4539:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	65
	
l4541:	
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u4651
	goto	u4650
u4651:
	goto	l4539
u4650:
	line	70
	
l4543:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u4661
	goto	u4660
u4661:
	goto	l4547
u4660:
	line	71
	
l4545:	
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
	
l4547:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l1606:	
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
psect	text15,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
	line	56
global __ptext15
__ptext15:	;psect for function ___ftdiv
psect	text15
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
	line	56
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l4471:	
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
	goto	u4551
	goto	u4550
u4551:
	goto	l4475
u4550:
	line	64
	
l4473:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1570
	line	65
	
l4475:	
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
	goto	u4561
	goto	u4560
u4561:
	goto	l1571
u4560:
	line	66
	
l4477:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1570
	
l1571:	
	line	67
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	68
	
l4479:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l4481:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l4483:	
	movf	0+(___ftdiv@f2)+02h,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l4485:	
	movlw	low(080h)
	andwf	(___ftdiv@sign),f
	line	72
	
l4487:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l4489:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l4491:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l4493:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l4495:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l4497:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4575
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4575
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4575:
	skipc
	goto	u4571
	goto	u4570
u4571:
	goto	l4503
u4570:
	line	80
	
l4499:	
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
	
l4501:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l4503:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	84
	
l4505:	
	decfsz	(___ftdiv@cntr),f
	goto	u4581
	goto	u4580
u4581:
	goto	l4497
u4580:
	line	85
	
l4507:	
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
	
l1570:	
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
psect	text16,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
	line	62
global __ptext16
__ptext16:	;psect for function ___ftpack
psect	text16
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l4099:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l1517
u3820:
	
l4101:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l4105
u3830:
	
l1517:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l1518
	line	67
	
l4103:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l4105:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3841
	goto	u3840
u3841:
	goto	l4103
u3840:
	goto	l4109
	line	71
	
l4107:	
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
	
l4109:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3851
	goto	u3850
u3851:
	goto	l4107
u3850:
	goto	l4113
	line	76
	
l4111:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l4113:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u3861
	goto	u3860
u3861:
	goto	l1529
u3860:
	
l4115:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u3871
	goto	u3870
u3871:
	goto	l4111
u3870:
	
l1529:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l1530
u3880:
	line	80
	
l4117:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l1530:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l4119:	
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
	goto	u3891
	goto	u3890
u3891:
	goto	l1531
u3890:
	line	84
	
l4121:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1531:	
	line	85
	line	86
	
l1518:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 371 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
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
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	371
global __ptext17
__ptext17:	;psect for function _chrgCtr
psect	text17
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	371
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 6
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	373
	
l3789:	
;main.c: 373: if(PORTB & 0x20)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),(5)&7	;volatile
	goto	u3361
	goto	u3360
u3361:
	goto	l3805
u3360:
	line	375
	
l3791:	
;main.c: 374: {
;main.c: 375: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	376
	
l3793:	
;main.c: 376: firstLock = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_firstLock)^080h
	line	377
;main.c: 377: lowBatLock = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowBatLock)
	line	378
	
l3795:	
;main.c: 378: if(power_ad > 4140)
	movlw	010h
	subwf	(_power_ad+1),w	;volatile
	movlw	02Dh
	skipnz
	subwf	(_power_ad),w	;volatile
	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l3803
u3370:
	line	380
	
l3797:	
;main.c: 379: {
;main.c: 380: if(++chrgFullTime > 200)
	movlw	low(0C9h)
	incf	(_chrgFullTime),f
	subwf	((_chrgFullTime)),w
	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l1008
u3380:
	line	382
	
l3799:	
;main.c: 381: {
;main.c: 382: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	383
	
l3801:	
;main.c: 383: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l1008
	line	388
	
l3803:	
;main.c: 386: else
;main.c: 387: {
;main.c: 388: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	goto	l1008
	line	394
	
l3805:	
;main.c: 392: else
;main.c: 393: {
;main.c: 394: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	395
;main.c: 395: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	396
;main.c: 396: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	399
	
l1008:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_WorkSleep

;; *************** function _WorkSleep *****************
;; Defined at:
;;		line 223 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
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
;;		On exit  : 200/0
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	223
global __ptext18
__ptext18:	;psect for function _WorkSleep
psect	text18
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	223
	global	__size_of_WorkSleep
	__size_of_WorkSleep	equ	__end_of_WorkSleep-_WorkSleep
	
_WorkSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _WorkSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	228
	
l4555:	
;main.c: 226: static unsigned char time;
;main.c: 228: if(B_OnOff)time = 0;
	btfss	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	goto	u4671
	goto	u4670
u4671:
	goto	l4559
u4670:
	
l4557:	
	clrf	(WorkSleep@time)
	line	230
	
l4559:	
;main.c: 230: if(++time >= 125)
	movlw	low(07Dh)
	incf	(WorkSleep@time),f
	subwf	((WorkSleep@time)),w
	skipc
	goto	u4681
	goto	u4680
u4681:
	goto	l981
u4680:
	line	232
	
l4561:	
;main.c: 231: {
;main.c: 232: time = 0;
	clrf	(WorkSleep@time)
	line	233
;main.c: 233: INTCON = 0;
	clrf	(11)	;volatile
	line	234
;main.c: 234: PIE1 = 0;
	clrf	(14)	;volatile
	line	235
;main.c: 235: PIE2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(272)^0100h	;volatile
	line	236
;main.c: 236: PIR1 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(13)	;volatile
	line	237
;main.c: 237: PIR2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(271)^0100h	;volatile
	line	238
;main.c: 238: T2CON = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	239
;main.c: 239: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	242
;main.c: 242: ADCON0 = 0;
	clrf	(149)^080h	;volatile
	line	245
	
l4563:	
;main.c: 245: PORTA = 0x01;
	movlw	low(01h)
	movwf	(134)^080h	;volatile
	line	246
	
l4565:	
;main.c: 246: PORTB = 0x02;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	247
;main.c: 247: TRISC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	248
	
l4567:	
;main.c: 248: PORTC = 0x03;
	movlw	low(03h)
	movwf	(262)^0100h	;volatile
	line	250
	
l4569:	
;main.c: 250: TRISB5 =1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7	;volatile
	line	252
	
l4571:	
;main.c: 252: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	253
	
l4573:	
;main.c: 253: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	254
	
l4575:	
;main.c: 254: IOCB5= 1;
	bsf	(77/8),(77)&7	;volatile
	line	255
	
l4577:	
;main.c: 255: PORTB;
	movf	(6),w	;volatile
	line	256
	
l4579:	
;main.c: 256: PORTB &= 0xFD;
	bcf	(6)+(1/8),(1)&7	;volatile
	line	268
	
l4581:	
;main.c: 268: SystemEnterSleep();
	fcall	_SystemEnterSleep
	line	269
	
l4583:	
;main.c: 269: if(RAIF)
	btfss	(107/8),(107)&7	;volatile
	goto	u4691
	goto	u4690
u4691:
	goto	l4589
u4690:
	line	271
	
l4585:	
;main.c: 270: {
;main.c: 271: RAIF = 0;
	bcf	(107/8),(107)&7	;volatile
	line	272
	
l4587:	
;main.c: 272: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	275
	
l4589:	
;main.c: 273: }
;main.c: 275: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	276
	
l4591:	
;main.c: 276: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	277
	
l4593:	
;main.c: 277: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	278
	
l4595:	
;main.c: 278: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	281
	
l981:	
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
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
global __ptext19
__ptext19:	;psect for function _SystemEnterSleep
psect	text19
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_SystemEnterSleep
	__size_of_SystemEnterSleep	equ	__end_of_SystemEnterSleep-_SystemEnterSleep
	
_SystemEnterSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _SystemEnterSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l4143:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text19
	
l1342:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text19
	
l4145:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	
l4147:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(1),f	;volatile
	
l4149:	
	bsf	(1)+(3/8),(3)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text19
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\TouchKeyConst.h"
	line	5
	
l4151:	
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text19
	
l4153:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	
l4155:	
	clrf	(275)^0100h	;volatile
	
l4157:	
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
sleep ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text19
	
l4159:	
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	
l4161:	
	movlw	low(079h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(275)^0100h	;volatile
	
l4163:	
	fcall	_ClearResSum
	
l4165:	
	bsf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	
l4167:	
	fcall	_GetTouchKeyValue
	
l4169:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SystemEnterSleep@91)
	
l4171:	
	clrf	(SystemEnterSleep@92)
	incf	(SystemEnterSleep@92),f
	clrf	(SystemEnterSleep@92+1)
	
l4173:	
	btfsc	(88/8),(88)&7	;volatile
	goto	u3941
	goto	u3940
u3941:
	goto	l4179
u3940:
	
l4175:	
	btfsc	(89/8),(89)&7	;volatile
	goto	u3951
	goto	u3950
u3951:
	goto	l4179
u3950:
	
l4177:	
	btfss	(107/8),(107)&7	;volatile
	goto	u3961
	goto	u3960
u3961:
	goto	l4191
u3960:
	
l4179:	
	fcall	_ClearResSum
	
l4181:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	
l4183:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4185:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	l1346
	
l4191:	
	movf	(SystemEnterSleep@92),w
	andlw	07h
	btfsc	status,2
	goto	u3971
	goto	u3970
u3971:
	goto	l4225
u3970:
	
l4193:	
	clrc
	rlf	(SystemEnterSleep@91),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(SystemEnterSleep@93)
	incf	fsr0,f
	movf	indf,w
	movwf	(SystemEnterSleep@93+1)
	movf	((SystemEnterSleep@93+1)),w
	movwf	(SystemEnterSleep@94+1)
	movf	((SystemEnterSleep@93)),w
	movwf	(SystemEnterSleep@94)
	
l4195:	
	movf	((SystemEnterSleep@93)),w
iorwf	((SystemEnterSleep@93+1)),w
	btfsc	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l4225
u3980:
	
l4197:	
	movf	(SystemEnterSleep@91),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addwf	(SystemEnterSleep@94),f
	skipnc
	incf	(SystemEnterSleep@94+1),f
	
l4199:	
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
	goto	u3995
	movf	(SystemEnterSleep@94),w
	subwf	0+(??_SystemEnterSleep+0)+0,w
u3995:
	skipc
	goto	u3991
	goto	u3990
u3991:
	goto	l4223
u3990:
	
l4201:	
	clrf	(SystemEnterSleep@91)
	
l4203:	
	clrf	(SystemEnterSleep@92)
	incf	(SystemEnterSleep@92),f
	clrf	(SystemEnterSleep@92+1)
	
l4205:	
	movf	(SystemEnterSleep@92),w
	andlw	07h
	btfss	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l4209
u4000:
	
l4207:	
	movf	(SystemEnterSleep@91),w
	fcall	_KeyClearOne
	
l4209:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(SystemEnterSleep@92),f
	rlf	(SystemEnterSleep@92+1),f
	
l4211:	
	movlw	low(03h)
	incf	(SystemEnterSleep@91),f
	subwf	((SystemEnterSleep@91)),w
	skipc
	goto	u4011
	goto	u4010
u4011:
	goto	l4205
u4010:
	goto	l4179
	
l4223:	
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
	
l4225:	
	clrc
	rlf	(SystemEnterSleep@92),f
	rlf	(SystemEnterSleep@92+1),f
	
l4227:	
	movlw	low(03h)
	incf	(SystemEnterSleep@91),f
	subwf	((SystemEnterSleep@91)),w
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l4191
u4020:
	goto	l1342
	
l1346:	
	return
	opt stack 0
GLOBAL	__end_of_SystemEnterSleep
	__end_of_SystemEnterSleep:
	signat	_SystemEnterSleep,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 97 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	97
global __ptext20
__ptext20:	;psect for function _Refurbish_Sfr
psect	text20
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	97
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 5
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	100
	
l3125:	
;main.c: 100: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(14)	;volatile
	line	101
;main.c: 101: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	102
;main.c: 102: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	103
	
l3127:	
;main.c: 103: if (4 != T2CON)
		movlw	4
	xorwf	((19)),w	;volatile
	btfsc	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l939
u2200:
	line	104
	
l3129:	
;main.c: 104: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	105
	
l939:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 111 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
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
;;		On exit  : 200/0
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
	line	111
global __ptext21
__ptext21:	;psect for function _KeyServer
psect	text21
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	111
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 6
; Regs used in _KeyServer: [wreg+status,2+status,0]
	line	114
	
l3675:	
;main.c: 113: static unsigned char KeyOldFlag = 0;
;main.c: 114: if (KeyFlag[0])
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l3745
u3120:
	line	116
	
l3677:	
;main.c: 115: {
;main.c: 116: if (KeyFlag[0] != KeyOldFlag)
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),w
	skipnz
	goto	u3131
	goto	u3130
u3131:
	goto	l3729
u3130:
	line	119
	
l3679:	
;main.c: 117: {
;main.c: 119: KeyOldFlag ^= KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),f
	line	120
	
l3681:	
;main.c: 120: if ((KeyOldFlag & 0x1) && (KeyFlag[0] & 0x1) && firstLock == 0 && powerFlag > 0)
	btfss	(KeyServer@KeyOldFlag),(0)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l3705
u3140:
	
l3683:	
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u3151
	goto	u3150
u3151:
	goto	l3705
u3150:
	
l3685:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstLock)^080h),w
	btfss	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l3705
u3160:
	
l3687:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_powerFlag)),w
	btfsc	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l3705
u3170:
	line	123
	
l3689:	
;main.c: 121: {
;main.c: 123: if(lowBatLock == 1)
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l3693
u3180:
	line	125
	
l3691:	
;main.c: 124: {
;main.c: 125: shanshuoTime2 = 450;
	movlw	0C2h
	movwf	(_shanshuoTime2)
	movlw	01h
	movwf	((_shanshuoTime2))+1
	line	126
;main.c: 126: }
	goto	l3697
	line	127
	
l3693:	
;main.c: 127: else if(++wuhuaFlag > 2)
	movlw	low(03h)
	incf	(_wuhuaFlag),f
	subwf	((_wuhuaFlag)),w
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l3697
u3190:
	line	129
	
l3695:	
;main.c: 128: {
;main.c: 129: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	line	131
	
l3697:	
;main.c: 130: }
;main.c: 131: if(wuhuaFlag >= 2)
	movlw	low(02h)
	subwf	(_wuhuaFlag),w
	skipc
	goto	u3201
	goto	u3200
u3201:
	goto	l3703
u3200:
	line	133
	
l3699:	
;main.c: 132: {
;main.c: 133: shanshuoTime2 = 450;
	movlw	0C2h
	movwf	(_shanshuoTime2)
	movlw	01h
	movwf	((_shanshuoTime2))+1
	line	134
	
l3701:	
;main.c: 134: count10s = 0;
	clrf	(_count10s)
	line	135
;main.c: 135: }
	goto	l3705
	line	138
	
l3703:	
;main.c: 136: else
;main.c: 137: {
;main.c: 138: shanshuoTime2 = 0;
	clrf	(_shanshuoTime2)
	clrf	(_shanshuoTime2+1)
	line	141
	
l3705:	
;main.c: 139: }
;main.c: 140: }
;main.c: 141: if ((KeyOldFlag & 0x2) && (KeyFlag[0] & 0x2) && firstLock == 0 && powerFlag > 0)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(KeyServer@KeyOldFlag),(1)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l3727
u3210:
	
l3707:	
	btfss	(_KeyFlag),(1)&7	;volatile
	goto	u3221
	goto	u3220
u3221:
	goto	l3727
u3220:
	
l3709:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstLock)^080h),w
	btfss	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l3727
u3230:
	
l3711:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_powerFlag)),w
	btfsc	status,2
	goto	u3241
	goto	u3240
u3241:
	goto	l3727
u3240:
	line	144
	
l3713:	
;main.c: 142: {
;main.c: 144: if(lowBatLock == 1)
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l3717
u3250:
	line	146
	
l3715:	
;main.c: 145: {
;main.c: 146: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	line	147
;main.c: 147: }
	goto	l3721
	line	148
	
l3717:	
;main.c: 148: else if(++workStep > 3)
	movlw	low(04h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u3261
	goto	u3260
u3261:
	goto	l3721
u3260:
	line	150
	
l3719:	
;main.c: 149: {
;main.c: 150: workStep = 0;
	clrf	(_workStep)
	line	151
;main.c: 151: bujinFlag = 0;
	clrf	(_bujinFlag)
	line	153
	
l3721:	
;main.c: 152: }
;main.c: 153: if(workStep >= 2)
	movlw	low(02h)
	subwf	(_workStep),w
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l3725
u3270:
	line	155
	
l3723:	
;main.c: 154: {
;main.c: 155: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	line	156
;main.c: 156: }
	goto	l3727
	line	159
	
l3725:	
;main.c: 157: else
;main.c: 158: {
;main.c: 159: shanshuoTime = 0;
	clrf	(_shanshuoTime)
	clrf	(_shanshuoTime+1)
	line	164
	
l3727:	
;main.c: 160: }
;main.c: 162: }
;main.c: 164: KeyOldFlag = KeyFlag[0];
	bcf	status, 5	;RP0=0, select bank0
	movf	(_KeyFlag),w	;volatile
	movwf	(KeyServer@KeyOldFlag)
	line	166
	
l3729:	
;main.c: 165: }
;main.c: 166: if(firstLock == 0 && KeyOldFlag & 0x4)
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstLock)^080h),w
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l964
u3280:
	
l3731:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(KeyServer@KeyOldFlag),(2)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l964
u3290:
	line	168
	
l3733:	
;main.c: 167: {
;main.c: 168: if(++keyCount >= 400)
	incf	(_keyCount),f
	skipnz
	incf	(_keyCount+1),f
	movlw	01h
	subwf	((_keyCount+1)),w
	movlw	090h
	skipnz
	subwf	((_keyCount)),w
	skipc
	goto	u3301
	goto	u3300
u3301:
	goto	l964
u3300:
	line	170
	
l3735:	
;main.c: 169: {
;main.c: 170: keyCount = 0;
	clrf	(_keyCount)
	clrf	(_keyCount+1)
	line	171
	
l3737:	
;main.c: 171: if(longKeyFlag == 0)
	movf	((_longKeyFlag)),w
	btfss	status,2
	goto	u3311
	goto	u3310
u3311:
	goto	l964
u3310:
	line	173
	
l3739:	
;main.c: 172: {
;main.c: 173: longKeyFlag = 1;
	clrf	(_longKeyFlag)
	incf	(_longKeyFlag),f
	line	174
	
l3741:	
;main.c: 174: if(powerFlag > 0)
	movf	((_powerFlag)),w
	btfsc	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l961
u3320:
	line	176
	
l3743:	
;main.c: 175: {
;main.c: 176: powerFlag = 0;
	clrf	(_powerFlag)
	line	177
;main.c: 177: workStep = 0;
	clrf	(_workStep)
	line	178
;main.c: 178: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	line	179
;main.c: 179: }
	goto	l964
	line	180
	
l961:	
	line	182
;main.c: 180: else
;main.c: 181: {
;main.c: 182: powerFlag = 1;
	clrf	(_powerFlag)
	incf	(_powerFlag),f
	line	183
;main.c: 183: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l964
	line	191
	
l3745:	
;main.c: 189: else
;main.c: 190: {
;main.c: 191: KeyOldFlag = 0;
	clrf	(KeyServer@KeyOldFlag)
	line	192
;main.c: 192: longKeyFlag = 0;
	clrf	(_longKeyFlag)
	line	193
;main.c: 193: keyCount = 0;
	clrf	(_keyCount)
	clrf	(_keyCount+1)
	line	195
	
l964:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 60 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
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
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	60
global __ptext22
__ptext22:	;psect for function _Init_System
psect	text22
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	60
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	62
	
l3649:	
# 62 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
nop ;# 
	line	63
# 63 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
clrwdt ;# 
psect	text22
	line	64
	
l3651:	
;main.c: 64: INTCON = 0;
	clrf	(11)	;volatile
	line	65
	
l3653:	
;main.c: 65: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	66
	
l3655:	
;main.c: 66: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	71
;main.c: 71: TRISA = 0x04;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	72
	
l3657:	
;main.c: 72: PORTA = 0;
	clrf	(134)^080h	;volatile
	line	73
	
l3659:	
;main.c: 73: TRISB = 0x20;
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	74
;main.c: 74: PORTB = 0;
	clrf	(6)	;volatile
	line	75
;main.c: 75: WPUB = 0x00;
	clrf	(8)	;volatile
	line	76
;main.c: 76: TRISC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	77
;main.c: 77: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	79
	
l3661:	
;main.c: 79: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	80
	
l3663:	
;main.c: 80: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	81
	
l3665:	
;main.c: 81: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	83
	
l3667:	
;main.c: 83: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	84
	
l3669:	
;main.c: 84: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	85
	
l3671:	
;main.c: 85: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	86
	
l3673:	
;main.c: 86: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	87
	
l935:	
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
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
global __ptext23
__ptext23:	;psect for function _CheckTouchKey
psect	text23
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 2
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l4639:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text23
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u4771
	goto	u4770
u4771:
	goto	l1330
u4770:
	
l4641:	
	fcall	_GetTouchKeyValue
	
l4643:	
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u4781
	goto	u4780
u4781:
	goto	l4673
u4780:
	
l4645:	
	clrf	(_KeyCounter)
	
l4647:	
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l4673
	
l1330:	
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u4791
	goto	u4790
u4791:
	goto	l4667
u4790:
	
l4649:	
	fcall	_CheckOnceResult
	fcall	_TurnKeyFlags
	
l4651:	
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4653:	
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u4801
	goto	u4800
u4801:
	goto	l4657
u4800:
	
l4655:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u4811
	goto	u4810
u4811:
	goto	l4665
u4810:
	
l4657:	
	fcall	_KeyStopClear
	
l4659:	
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l4661:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4663:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4665:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	goto	l4673
	
l4667:	
	fcall	_CheckKeyOldValue
	fcall	_ClearResSum
	
l4669:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4671:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4673:	
	fcall	_CheckValidTime
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text23
	
l1338:	
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
psect	text24,local,class=CODE,delta=2,merge=1,group=1
global __ptext24
__ptext24:	;psect for function _TurnKeyFlags
psect	text24
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_TurnKeyFlags
	__size_of_TurnKeyFlags	equ	__end_of_TurnKeyFlags-_TurnKeyFlags
	
_TurnKeyFlags:	
;incstack = 0
	opt	stack 2
; Regs used in _TurnKeyFlags: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3517:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text24
	
l3519:	
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l3545
u2920:
	
l3521:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(TurnKeyFlags@F84)
	
l3523:	
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u2931
	goto	u2930
u2931:
	goto	l1311
u2930:
	
l3525:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l1311
u2940:
	
l3527:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F83),f
	subwf	((TurnKeyFlags@F83)),w
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l1316
u2950:
	
l3529:	
	clrf	(TurnKeyFlags@F83)
	
l3531:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	
l3533:	
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	
l3535:	
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u2961
	goto	u2960
u2961:
	goto	l1312
u2960:
	
l3537:	
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3539:	
	fcall	_KeyClearIn
	goto	l1316
	
l1312:	
	goto	l1316
	
l1311:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3541:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	
l3543:	
	clrf	(TurnKeyFlags@F83)
	goto	l1316
	
l3545:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(TurnKeyFlags@F83)
	clrf	(_KeyOldData)	;volatile
	clrf	0+(_KeyOldData)+01h	;volatile
	
l3547:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F84),f
	subwf	((TurnKeyFlags@F84)),w
	skipc
	goto	u2971
	goto	u2970
u2971:
	goto	l1316
u2970:
	
l3549:	
	clrf	(TurnKeyFlags@F84)
	clrf	(_KeyFlag)	;volatile
	clrf	0+(_KeyFlag)+01h	;volatile
	
l3551:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l1316:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text24
	
l1318:	
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
psect	text25,local,class=CODE,delta=2,merge=1,group=1
global __ptext25
__ptext25:	;psect for function _KeyClearIn
psect	text25
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyClearIn
	__size_of_KeyClearIn	equ	__end_of_KeyClearIn-_KeyClearIn
	
_KeyClearIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyClearIn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2993:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text25
	
l2995:	
	clrf	(KeyClearIn@51)
	
l3001:	
	movf	(KeyClearIn@51),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1971
	goto	u1970
u1971:
	goto	l3005
u1970:
	
l3003:	
	movf	(KeyClearIn@51),w
	fcall	_KeyClearOne
	
l3005:	
	incf	(KeyClearIn@51),f
	
l3007:	
	movlw	low(03h)
	subwf	(KeyClearIn@51),w
	skipc
	goto	u1981
	goto	u1980
u1981:
	goto	l3001
u1980:
	
l1224:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text25
	
l1226:	
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
psect	text26,local,class=CODE,delta=2,merge=1,group=1
global __ptext26
__ptext26:	;psect for function _KeyStopClear
psect	text26
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyStopClear
	__size_of_KeyStopClear	equ	__end_of_KeyStopClear-_KeyStopClear
	
_KeyStopClear:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3389:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text26
	
l3391:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyFlag)	;volatile
	clrf	0+(_KeyFlag)+01h	;volatile
	clrf	(KeyStopClear@53)
	
l3397:	
	clrc
	rlf	(KeyStopClear@53),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l3399:	
	movf	(KeyStopClear@53),w
	fcall	_KeyClearOne
	
l3401:	
	incf	(KeyStopClear@53),f
	
l3403:	
	movlw	low(03h)
	subwf	(KeyStopClear@53),w
	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l3397
u2690:
	
l1230:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text26
	
l1231:	
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
psect	text27,local,class=CODE,delta=2,merge=1,group=1
global __ptext27
__ptext27:	;psect for function _GetTouchKeyValue
psect	text27
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_GetTouchKeyValue
	__size_of_GetTouchKeyValue	equ	__end_of_GetTouchKeyValue-_GetTouchKeyValue
	
_GetTouchKeyValue:	
;incstack = 0
	opt	stack 3
; Regs used in _GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l3027:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text27
	
l3029:	
	clrf	(GetTouchKeyValue@62)
	
l3031:	
	clrf	(GetTouchKeyValue@63)
	incf	(GetTouchKeyValue@63),f
	clrf	(GetTouchKeyValue@63+1)
	
l3033:	
	btfss	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	goto	u2001
	goto	u2000
u2001:
	goto	l3037
u2000:
	
l3035:	
	movf	(GetTouchKeyValue@63),w
	andlw	07h
	btfsc	status,2
	goto	u2011
	goto	u2010
u2011:
	goto	l3065
u2010:
	
l3037:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	clrf	(274)^0100h	;volatile
	
l3039:	
	movlw	low(079h)
	movwf	(275)^0100h	;volatile
	
l3041:	
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	
l3043:	
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
psect	text27
	
l3045:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7	;volatile
	
l3047:	
	movf	(GetTouchKeyValue@62),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 6	;RP1=1, select bank2
	movwf	(273)^0100h	;volatile
	
l3049:	
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
psect	text27
	
l3051:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(273)^0100h+(0/8),(0)&7	;volatile
	
l3053:	
	movlw	0D0h
	movwf	(GetTouchKeyValue@64)
	movlw	07h
	movwf	((GetTouchKeyValue@64))+1
	goto	l1252
	
l3055:	
	movlw	01h
	subwf	(GetTouchKeyValue@64),f
	movlw	0
	skipc
	decf	(GetTouchKeyValue@64+1),f
	subwf	(GetTouchKeyValue@64+1),f
	movf	(((GetTouchKeyValue@64))),w
iorwf	(((GetTouchKeyValue@64+1))),w
	btfss	status,2
	goto	u2021
	goto	u2020
u2021:
	goto	l1252
u2020:
	
l3057:	
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_KeyCounter)
	
l3059:	
	fcall	_ClearResSum
	goto	l1255
	
l1252:	
	btfss	(273)^0100h,(7)&7	;volatile
	goto	u2031
	goto	u2030
u2031:
	goto	l3055
u2030:
	
l3063:	
	clrc
	rlf	(GetTouchKeyValue@62),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(278)^0100h,w	;volatile
	bcf	status, 7	;select IRP bank1
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
	
l3065:	
	clrc
	rlf	(GetTouchKeyValue@63),f
	rlf	(GetTouchKeyValue@63+1),f
	
l3067:	
	movlw	low(03h)
	incf	(GetTouchKeyValue@62),f
	subwf	((GetTouchKeyValue@62)),w
	skipc
	goto	u2041
	goto	u2040
u2041:
	goto	l3033
u2040:
	
l1257:	
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text27
	
l1255:	
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
psect	text28,local,class=CODE,delta=2,merge=1,group=1
global __ptext28
__ptext28:	;psect for function _ClearResSum
psect	text28
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_ClearResSum
	__size_of_ClearResSum	equ	__end_of_ClearResSum-_ClearResSum
	
_ClearResSum:	
;incstack = 0
	opt	stack 3
; Regs used in _ClearResSum: [wreg-fsr0h+status,2+status,0]
	
l2879:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text28
	
l2881:	
	clrf	(ClearResSum@56)
	
l2883:	
	clrc
	rlf	(ClearResSum@56),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l2885:	
	movlw	low(03h)
	incf	(ClearResSum@56),f
	subwf	((ClearResSum@56)),w
	skipc
	goto	u1811
	goto	u1810
u1811:
	goto	l2883
u1810:
	
l1235:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text28
	
l1236:	
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
psect	text29,local,class=CODE,delta=2,merge=1,group=1
global __ptext29
__ptext29:	;psect for function _CheckValidTime
psect	text29
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckValidTime
	__size_of_CheckValidTime	equ	__end_of_CheckValidTime-_CheckValidTime
	
_CheckValidTime:	
;incstack = 0
	opt	stack 5
; Regs used in _CheckValidTime: [wreg+status,2+status,0]
	
l3553:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text29
	
l3555:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l3561
u2980:
	
l3557:	
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
	goto	u2991
	goto	u2990
u2991:
	goto	l1323
u2990:
	
l3559:	
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l3561:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(CheckValidTime@F87)^080h
	clrf	(CheckValidTime@F87+1)^080h
	
l1323:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text29
	
l1327:	
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
psect	text30,local,class=CODE,delta=2,merge=1,group=1
global __ptext30
__ptext30:	;psect for function _CheckOnceResult
psect	text30
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckOnceResult
	__size_of_CheckOnceResult	equ	__end_of_CheckOnceResult-_CheckOnceResult
	
_CheckOnceResult:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l4401:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text30
	
l4403:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckOnceResult@68)
	clrf	(_KeyData)	;volatile
	clrf	0+(_KeyData)+01h	;volatile
	clrf	(_KeyMaxSub)
	
l4405:	
	movf	(CheckOnceResult@68),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@70)
	
l4407:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u4425:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank1
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u4420:
	addlw	-1
	skipz
	goto	u4425
	
l4409:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@71)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@71+1)
	
l4411:	
	movf	(CheckOnceResult@68),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@69)
	
l4413:	
	movf	(CheckOnceResult@69),w
	movwf	(CheckOnceResult@72)
	clrf	(CheckOnceResult@72+1)
	
l4415:	
	movf	(CheckOnceResult@71),w
	addwf	(CheckOnceResult@72),f
	skipnc
	incf	(CheckOnceResult@72+1),f
	movf	(CheckOnceResult@71+1),w
	addwf	(CheckOnceResult@72+1),f
	
l4417:	
	movf	(CheckOnceResult@68),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u4431
	goto	u4430
u4431:
	goto	l4447
u4430:
	
l4419:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
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
	goto	u4445
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72),w
u4445:
	skipnc
	goto	u4441
	goto	u4440
u4441:
	goto	l4423
u4440:
	
l4421:	
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
	goto	l4431
	
l4423:	
	movf	(CheckOnceResult@73+1),w
	subwf	(CheckOnceResult@72+1),w
	skipz
	goto	u4455
	movf	(CheckOnceResult@73),w
	subwf	(CheckOnceResult@72),w
u4455:
	skipnc
	goto	u4451
	goto	u4450
u4451:
	goto	l4469
u4450:
	
l4425:	
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
	goto	u4465
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72),w
u4465:
	skipnc
	goto	u4461
	goto	u4460
u4461:
	goto	l4469
u4460:
	
l4427:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@73),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@73+1),w
	movwf	indf
	
l4429:	
	movf	(CheckOnceResult@71),w
	subwf	(CheckOnceResult@73),w
	movwf	(CheckOnceResult@71)
	movf	(CheckOnceResult@71+1),w
	skipc
	incf	(CheckOnceResult@71+1),w
	subwf	(CheckOnceResult@73+1),w
	movwf	1+(CheckOnceResult@71)
	
l4431:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	
l4433:	
	movf	(0+(CheckOnceResult@71)+01h),w
	btfsc	status,2
	goto	u4471
	goto	u4470
u4471:
	goto	l4437
u4470:
	
l4435:	
	movlw	low(0FFh)
	movwf	(CheckOnceResult@69)
	goto	l1269
	
l4437:	
	movf	(CheckOnceResult@71),w
	movwf	(CheckOnceResult@69)
	
l1269:	
	movf	(CheckOnceResult@69),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u4481
	goto	u4480
u4481:
	goto	l4443
u4480:
	
l4439:	
	movf	(CheckOnceResult@69),w
	movwf	(_KeyMaxSub)
	
l4441:	
	movf	(CheckOnceResult@70),w
	movwf	(KeyHave@59)
	clrf	(KeyHave@59+1)
	movf	(CheckOnceResult@68),w
	fcall	_KeyHave
	goto	l4469
	
l4443:	
	incf	(_KeyCounter),f
	goto	l4469
	
l4447:	
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
	goto	u4495
	movf	(CheckOnceResult@72),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u4495:
	skipnc
	goto	u4491
	goto	u4490
u4491:
	goto	l4453
u4490:
	goto	l4469
	
l4453:	
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
	goto	u4505
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u4505:
	skipc
	goto	u4501
	goto	u4500
u4501:
	goto	l4457
u4500:
	
l4455:	
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
	goto	u4515
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u4515:
	skipnc
	goto	u4511
	goto	u4510
u4511:
	goto	l4461
u4510:
	
l4457:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u4521
	goto	u4520
u4521:
	goto	l1275
u4520:
	
l4459:	
	movf	(CheckOnceResult@68),w
	fcall	_KeyClearOne
	goto	l4469
	
l4461:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l4465
	
l1275:	
	
l4465:	
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfss	status,2
	goto	u4531
	goto	u4530
u4531:
	goto	l4469
u4530:
	
l4467:	
	movf	(CheckOnceResult@70),w
	movwf	(KeyHave@59)
	clrf	(KeyHave@59+1)
	movf	(CheckOnceResult@68),w
	fcall	_KeyHave
	
l4469:	
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@68),f
	subwf	((CheckOnceResult@68)),w
	skipc
	goto	u4541
	goto	u4540
u4541:
	goto	l4405
u4540:
	
l1284:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text30
	
l1285:	
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
psect	text31,local,class=CODE,delta=2,merge=1,group=1
global __ptext31
__ptext31:	;psect for function _KeyHave
psect	text31
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
	
l3009:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text31
	
l3011:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	
l3013:	
	clrf	(_KeyData)	;volatile
	
l3015:	
	clrf	0+(_KeyData)+01h	;volatile
	
l3017:	
	btfss	(KeyHave@58),(3)&7
	goto	u1991
	goto	u1990
u1991:
	goto	l3021
u1990:
	
l3019:	
	movf	(KeyHave@59),w
	movwf	0+(_KeyData)+01h	;volatile
	goto	l1242
	
l3021:	
	movf	(KeyHave@59),w
	movwf	(_KeyData)	;volatile
	
l1242:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text31
	
l1245:	
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
psect	text32,local,class=CODE,delta=2,merge=1,group=1
global __ptext32
__ptext32:	;psect for function _KeyClearOne
psect	text32
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
	
l2875:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text32
	
l2877:	
	clrc
	rlf	(KeyClearOne@49),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
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
psect	text32
	
l1220:	
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
psect	text33,local,class=CODE,delta=2,merge=1,group=1
global __ptext33
__ptext33:	;psect for function _CheckKeyOldValue
psect	text33
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckKeyOldValue
	__size_of_CheckKeyOldValue	equ	__end_of_CheckKeyOldValue-_CheckKeyOldValue
	
_CheckKeyOldValue:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3475:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text33
	
l3477:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@78)
	
l3479:	
	movlw	low(04h)
	incf	(CheckKeyOldValue@F77),f
	subwf	((CheckKeyOldValue@F77)),w
	skipnc
	goto	u2831
	goto	u2830
u2831:
	goto	l3483
u2830:
	goto	l1291
	
l3483:	
	clrf	(CheckKeyOldValue@F77)
	
l3485:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(CheckKeyOldValue@79)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@79+1)
	
l3487:	
	movf	(CheckKeyOldValue@78),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l1293
u2840:
	
l3489:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3491:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3493:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l3497
u2850:
	
l3495:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u2861
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l1293
u2860:
	
l3497:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3499:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3501:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u2871
	goto	u2870
u2871:
	goto	l3505
u2870:
	
l3503:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u2881
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l1293
u2880:
	
l3505:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3507:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3509:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l3513
u2890:
	
l3511:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u2901
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l1293
u2900:
	
l3513:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@79),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@79+1),w
	movwf	indf
	
l1293:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
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
	
l3515:	
	movlw	low(03h)
	incf	(CheckKeyOldValue@78),f
	subwf	((CheckKeyOldValue@78)),w
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l3485
u2910:
	
l1303:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text33
	
l1291:	
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
psect	text34,local,class=CODE,delta=2,merge=1,group=1
global __ptext34
__ptext34:	;psect for function _KeyIsIn
psect	text34
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
	
l2859:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text34
	
l2861:	
	movf	(KeyIsIn@45),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@46)
	
l2863:	
	btfss	(KeyIsIn@45),(3)&7
	goto	u1801
	goto	u1800
u1801:
	goto	l2867
u1800:
	
l2865:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@46),f
	goto	l2869
	
l2867:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@46),f
	
l2869:	
	movf	(KeyIsIn@46),w
	
l1217:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 201 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
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
psect	text35,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	201
global __ptext35
__ptext35:	;psect for function _Isr_Timer
psect	text35
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_无转头\D108_8F083_tssop20_\main.c"
	line	201
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
psect	text35
	line	203
	
i1l3885:	
;main.c: 203: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u351_21
	goto	u351_20
u351_21:
	goto	i1l3899
u351_20:
	line	205
	
i1l3887:	
;main.c: 204: {
;main.c: 205: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	206
	
i1l3889:	
;main.c: 206: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u352_21
	goto	u352_20
u352_21:
	goto	i1l973
u352_20:
	line	208
	
i1l3891:	
;main.c: 207: {
;main.c: 208: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	209
	
i1l3893:	
;main.c: 209: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	210
	
i1l3895:	
;main.c: 210: if(++count1s >= 250)
	movlw	low(0FAh)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u353_21
	goto	u353_20
u353_21:
	goto	i1l973
u353_20:
	line	212
	
i1l3897:	
;main.c: 211: {
;main.c: 212: count1s = 0;
	clrf	(_count1s)
	goto	i1l973
	line	218
	
i1l3899:	
;main.c: 216: else
;main.c: 217: {
;main.c: 218: PIR1 = 0;
	clrf	(13)	;volatile
	line	221
	
i1l973:	
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
