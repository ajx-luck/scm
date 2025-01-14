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
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\Touch_Kscan_Library.h"
	line	77
_Table_KeyDown:
	retlw	0Ah
	retlw	0Ah
	retlw	0Ah
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyCap
psect	strings
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\Touch_Kscan_Library.h"
	line	70
_Table_KeyCap:
	retlw	02h
	retlw	02h
	retlw	02h
	global __end_of_Table_KeyCap
__end_of_Table_KeyCap:
	global	_Table_KeyChannel
psect	strings
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\Touch_Kscan_Library.h"
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
	global	_KeyFlag
	global	_workStep
	global	_b_ksleep
	global	_b_kerr
	global	_b_kclr
	global	_b_kover1
	global	_b_kover
	global	_B_OnOff
	global	_B_MainLoop
	global	CheckValidTime@F87
	global	_KeyData
	global	_KeyOldData
	global	_power_ad
	global	_maxMotorStep
	global	_motorStep
	global	_fanValue
	global	_shanshuoTime3
	global	_shanshuoTime2
	global	_shanshuoTime
	global	TurnKeyFlags@F84
	global	TurnKeyFlags@F83
	global	CheckKeyOldValue@F77
	global	_KeyMaxSub
	global	_KeyCounter
	global	WorkSleep@time
	global	KeyServer@KeyOldFlag
	global	_test_adc
	global	_bujinFlag
	global	_lowFanTime
	global	_lowBatTime
	global	_lowBatLock
	global	_firstLock
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
	global	_result
	global	_firstTime
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
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
_KeyFlag:
       ds      2

_workStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
CheckValidTime@F87:
       ds      2

_KeyData:
       ds      2

_KeyOldData:
       ds      2

_power_ad:
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

_bujinFlag:
       ds      1

_lowFanTime:
       ds      1

_lowBatTime:
       ds      1

_lowBatLock:
       ds      1

_firstLock:
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

_result:
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
	movlw	low((__pbssBANK0)+02Ch)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+023h)
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
;!    BSS         82
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      12
;!    BANK0            80     34      79
;!    BANK1            80      4      39
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
;! (0) _main                                                 0     0      0   11909
;!                      _CheckTouchKey
;!                        _Init_System
;!                          _KeyServer
;!                      _Refurbish_Sfr
;!                          _WorkSleep
;!                            _chrgCtr
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              4     4      0    7906
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
;! (2) _fanCtr                                               5     5      0    1286
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
;!BANK1               50      4      27       6       48.8%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0      82       8        0.0%
;!DATA                 0      0      82       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 753 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	753
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	753
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	755
	
l4609:	
;main.c: 755: Init_System();
	fcall	_Init_System
	line	756
	
l4611:	
;main.c: 756: firstLock = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_firstLock)
	line	757
	
l4613:	
;main.c: 757: firstTime = 200;
	movlw	low(0C8h)
	movwf	(_firstTime)
	line	760
	
l4615:	
;main.c: 759: {
;main.c: 760: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u4601
	goto	u4600
u4601:
	goto	l4615
u4600:
	line	762
	
l4617:	
;main.c: 761: {
;main.c: 762: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	763
# 763 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
clrwdt ;# 
psect	maintext
	line	765
	
l4619:	
;main.c: 765: CheckTouchKey();
	fcall	_CheckTouchKey
	line	766
	
l4621:	
;main.c: 766: chrgCtr();
	fcall	_chrgCtr
	line	767
	
l4623:	
;main.c: 767: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	768
	
l4625:	
;main.c: 768: KeyServer();
	fcall	_KeyServer
	line	769
	
l4627:	
;main.c: 769: workCtr();
	fcall	_workCtr
	line	770
	
l4629:	
;main.c: 770: if(firstTime == 0 && chrgFlag == 0 && workStep == 0 && wuhuaFlag == 0 && bujinFlag == 0 && shanshuoTime == 0 && shanshuoTime2 == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4611
	goto	u4610
u4611:
	goto	l4615
u4610:
	
l4631:	
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u4621
	goto	u4620
u4621:
	goto	l4615
u4620:
	
l4633:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u4631
	goto	u4630
u4631:
	goto	l4615
u4630:
	
l4635:	
	movf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u4641
	goto	u4640
u4641:
	goto	l4615
u4640:
	
l4637:	
	movf	((_bujinFlag)),w
	btfss	status,2
	goto	u4651
	goto	u4650
u4651:
	goto	l4615
u4650:
	
l4639:	
	movf	((_shanshuoTime)),w
iorwf	((_shanshuoTime+1)),w
	btfss	status,2
	goto	u4661
	goto	u4660
u4661:
	goto	l4615
u4660:
	
l4641:	
	movf	((_shanshuoTime2)),w
iorwf	((_shanshuoTime2+1)),w
	btfss	status,2
	goto	u4671
	goto	u4670
u4671:
	goto	l4615
u4670:
	line	772
	
l4643:	
;main.c: 771: {
;main.c: 772: WorkSleep();
	fcall	_WorkSleep
	goto	l4615
	global	start
	ljmp	start
	opt stack 0
	line	776
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 697 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  power_temp      4    0[BANK1 ] volatile unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		_bujinCtr
;;		_fanCtr
;;		_keyLedCtr
;;		_wuhuaCtr
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	697
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	697
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	699
	
l4531:	
;main.c: 699: test_adc = ADC_Sample(31, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(01Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	700
	
l4533:	
;main.c: 700: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u4481
	goto	u4480
u4481:
	goto	l4539
u4480:
	line	704
	
l4535:	
;main.c: 701: {
;main.c: 702: volatile unsigned long power_temp;
;main.c: 704: power_temp = (unsigned long)(((4096UL*1.2*1000))/adresult);
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

	line	705
	
l4537:	
;main.c: 705: power_ad = (unsigned int)(power_temp);
	movf	(workCtr@power_temp+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_power_ad+1)	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movf	(workCtr@power_temp)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_power_ad)	;volatile
	line	707
	
l4539:	
;main.c: 706: }
;main.c: 707: if(workStep == 2 && power_ad < 2900)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u4491
	goto	u4490
u4491:
	goto	l4549
u4490:
	
l4541:	
	movlw	0Bh
	subwf	(_power_ad+1),w	;volatile
	movlw	054h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u4501
	goto	u4500
u4501:
	goto	l4549
u4500:
	line	709
	
l4543:	
;main.c: 708: {
;main.c: 709: if(++lowFanTime > 200)
	movlw	low(0C9h)
	incf	(_lowFanTime),f
	subwf	((_lowFanTime)),w
	skipc
	goto	u4511
	goto	u4510
u4511:
	goto	l4551
u4510:
	line	711
	
l4545:	
;main.c: 710: {
;main.c: 711: lowFanTime = 0;
	clrf	(_lowFanTime)
	line	712
	
l4547:	
;main.c: 712: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l4551
	line	717
	
l4549:	
;main.c: 715: else
;main.c: 716: {
;main.c: 717: lowFanTime = 0;
	clrf	(_lowFanTime)
	line	719
	
l4551:	
;main.c: 718: }
;main.c: 719: if(power_ad < 2700)
	movlw	0Ah
	subwf	(_power_ad+1),w	;volatile
	movlw	08Ch
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u4521
	goto	u4520
u4521:
	goto	l4559
u4520:
	line	721
	
l4553:	
;main.c: 720: {
;main.c: 721: if(++lowBatTime > 200)
	movlw	low(0C9h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u4531
	goto	u4530
u4531:
	goto	l4561
u4530:
	line	723
	
l4555:	
;main.c: 722: {
;main.c: 723: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	724
	
l4557:	
;main.c: 724: lowBatLock = 1;
	clrf	(_lowBatLock)
	incf	(_lowBatLock),f
	line	725
;main.c: 725: workStep = 0;
	clrf	(_workStep)
	line	726
;main.c: 726: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	line	727
;main.c: 727: bujinFlag = 0;
	clrf	(_bujinFlag)
	goto	l4561
	line	732
	
l4559:	
;main.c: 730: else
;main.c: 731: {
;main.c: 732: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	734
	
l4561:	
;main.c: 733: }
;main.c: 734: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u4541
	goto	u4540
u4541:
	goto	l4569
u4540:
	line	736
	
l4563:	
;main.c: 735: {
;main.c: 736: firstTime--;
	decf	(_firstTime),f
	line	737
	
l4565:	
;main.c: 737: PORTB = 0x00;
	clrf	(6)	;volatile
	line	738
	
l4567:	
;main.c: 738: PORTA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	739
;main.c: 739: }
	goto	l1110
	line	742
	
l4569:	
;main.c: 740: else
;main.c: 741: {
;main.c: 742: keyLedCtr();
	fcall	_keyLedCtr
	line	743
;main.c: 743: fanCtr();
	fcall	_fanCtr
	line	744
;main.c: 744: wuhuaCtr();
	fcall	_wuhuaCtr
	line	745
	
l4571:	
;main.c: 745: bujinCtr();
	fcall	_bujinCtr
	line	748
	
l1110:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_wuhuaCtr

;; *************** function _wuhuaCtr *****************
;; Defined at:
;;		line 558 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	558
global __ptext2
__ptext2:	;psect for function _wuhuaCtr
psect	text2
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	558
	global	__size_of_wuhuaCtr
	__size_of_wuhuaCtr	equ	__end_of_wuhuaCtr-_wuhuaCtr
	
_wuhuaCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _wuhuaCtr: [wreg+status,2+status,0+pclath+cstack]
	line	560
	
l4271:	
;main.c: 560: if(count1s == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_count1s)),w
	btfss	status,2
	goto	u4081
	goto	u4080
u4081:
	goto	l4277
u4080:
	line	562
	
l4273:	
;main.c: 561: {
;main.c: 562: if(++count10s >= 10)
	movlw	low(0Ah)
	incf	(_count10s),f
	subwf	((_count10s)),w
	skipc
	goto	u4091
	goto	u4090
u4091:
	goto	l4277
u4090:
	line	564
	
l4275:	
;main.c: 563: {
;main.c: 564: count10s = 0;
	clrf	(_count10s)
	line	567
	
l4277:	
;main.c: 565: }
;main.c: 566: }
;main.c: 567: if(wuhuaFlag == 1 || (wuhuaFlag == 2 && count10s < 5))
		decf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u4101
	goto	u4100
u4101:
	goto	l4283
u4100:
	
l4279:	
		movlw	2
	xorwf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u4111
	goto	u4110
u4111:
	goto	l4285
u4110:
	
l4281:	
	movlw	low(05h)
	subwf	(_count10s),w
	skipnc
	goto	u4121
	goto	u4120
u4121:
	goto	l4285
u4120:
	line	569
	
l4283:	
;main.c: 568: {
;main.c: 569: pwmInit();
	fcall	_pwmInit
	line	598
;main.c: 598: }
	goto	l1063
	line	601
	
l4285:	
;main.c: 599: else
;main.c: 600: {
;main.c: 601: pwmStop();
	fcall	_pwmStop
	line	603
	
l1063:	
	return
	opt stack 0
GLOBAL	__end_of_wuhuaCtr
	__end_of_wuhuaCtr:
	signat	_wuhuaCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 478 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	478
global __ptext3
__ptext3:	;psect for function _pwmStop
psect	text3
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	478
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [status,2]
	line	480
	
l4011:	
;main.c: 480: PWMD3L = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(156)^080h	;volatile
	line	481
	
l4013:	
;main.c: 481: PWMCON0 &= 0xF7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(21)+(3/8),(3)&7	;volatile
	line	482
	
l4015:	
;main.c: 482: PORTA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(3/8),(3)&7	;volatile
	line	483
	
l1032:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 466 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	466
global __ptext4
__ptext4:	;psect for function _pwmInit
psect	text4
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	466
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2+status,0]
	line	469
	
l4001:	
;main.c: 469: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	470
	
l4003:	
;main.c: 470: PWMTL = 73;
	movlw	low(049h)
	movwf	(23)	;volatile
	line	471
	
l4005:	
;main.c: 471: PWMD23H = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	472
;main.c: 472: PWMD3L = 32;
	movlw	low(020h)
	movwf	(156)^080h	;volatile
	line	473
;main.c: 473: PWMCON1 = 0xC0;
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(22)	;volatile
	line	474
	
l4007:	
;main.c: 474: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	475
	
l4009:	
;main.c: 475: PWMCON0 |= 0x28;
	movlw	low(028h)
	iorwf	(21),f	;volatile
	line	476
	
l1029:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_keyLedCtr

;; *************** function _keyLedCtr *****************
;; Defined at:
;;		line 389 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	389
global __ptext5
__ptext5:	;psect for function _keyLedCtr
psect	text5
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	389
	global	__size_of_keyLedCtr
	__size_of_keyLedCtr	equ	__end_of_keyLedCtr-_keyLedCtr
	
_keyLedCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyLedCtr: [wreg+status,2+status,0+pclath+cstack]
	line	391
	
l4177:	
;main.c: 391: if(shanshuoTime > 0)
	movf	((_shanshuoTime)),w
iorwf	((_shanshuoTime+1)),w
	btfsc	status,2
	goto	u3861
	goto	u3860
u3861:
	goto	l4185
u3860:
	line	393
	
l4179:	
;main.c: 392: {
;main.c: 393: shanshuoTime--;
	movlw	01h
	subwf	(_shanshuoTime),f
	movlw	0
	skipc
	decf	(_shanshuoTime+1),f
	subwf	(_shanshuoTime+1),f
	line	394
	
l4181:	
;main.c: 394: if((shanshuoTime % 150) < 75)
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
	goto	u3871
	goto	u3870
u3871:
	goto	l1003
u3870:
	line	396
	
l4183:	
;main.c: 395: {
;main.c: 396: PORTC |= 0x01;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(262)^0100h+(0/8),(0)&7	;volatile
	line	397
;main.c: 397: }
	goto	l4189
	line	398
	
l1003:	
	line	400
;main.c: 398: else
;main.c: 399: {
;main.c: 400: PORTC &= 0xFE;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(262)^0100h+(0/8),(0)&7	;volatile
	goto	l4189
	line	403
	
l4185:	
;main.c: 403: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3881
	goto	u3880
u3881:
	goto	l4183
u3880:
	goto	l1003
	line	412
	
l4189:	
;main.c: 410: }
;main.c: 412: if(shanshuoTime2 > 0)
	bcf	status, 6	;RP1=0, select bank0
	movf	((_shanshuoTime2)),w
iorwf	((_shanshuoTime2+1)),w
	btfsc	status,2
	goto	u3891
	goto	u3890
u3891:
	goto	l4197
u3890:
	line	414
	
l4191:	
;main.c: 413: {
;main.c: 414: shanshuoTime2--;
	movlw	01h
	subwf	(_shanshuoTime2),f
	movlw	0
	skipc
	decf	(_shanshuoTime2+1),f
	subwf	(_shanshuoTime2+1),f
	line	415
	
l4193:	
;main.c: 415: if((shanshuoTime2 % 150) < 75)
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
	goto	u3901
	goto	u3900
u3901:
	goto	l1009
u3900:
	line	417
	
l4195:	
;main.c: 416: {
;main.c: 417: PORTC |= 0x02;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(262)^0100h+(1/8),(1)&7	;volatile
	line	418
;main.c: 418: }
	goto	l4201
	line	419
	
l1009:	
	line	421
;main.c: 419: else
;main.c: 420: {
;main.c: 421: PORTC &= 0xFD;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(262)^0100h+(1/8),(1)&7	;volatile
	goto	l4201
	line	424
	
l4197:	
;main.c: 424: else if(wuhuaFlag > 0)
	movf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u3911
	goto	u3910
u3911:
	goto	l4195
u3910:
	goto	l1009
	line	432
	
l4201:	
;main.c: 431: }
;main.c: 432: if(shanshuoTime3 > 0)
	bcf	status, 6	;RP1=0, select bank0
	movf	((_shanshuoTime3)),w
iorwf	((_shanshuoTime3+1)),w
	btfsc	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l4209
u3920:
	line	434
	
l4203:	
;main.c: 433: {
;main.c: 434: shanshuoTime3--;
	movlw	01h
	subwf	(_shanshuoTime3),f
	movlw	0
	skipc
	decf	(_shanshuoTime3+1),f
	subwf	(_shanshuoTime3+1),f
	line	435
	
l4205:	
;main.c: 435: if((shanshuoTime3 % 150) < 75)
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
	goto	u3931
	goto	u3930
u3931:
	goto	l1015
u3930:
	line	437
	
l4207:	
;main.c: 436: {
;main.c: 437: PORTA |= 0x01;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(0/8),(0)&7	;volatile
	line	438
;main.c: 438: }
	goto	l1026
	line	439
	
l1015:	
	line	441
;main.c: 439: else
;main.c: 440: {
;main.c: 441: PORTA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(0/8),(0)&7	;volatile
	goto	l1026
	line	444
	
l4209:	
;main.c: 444: else if(bujinFlag)
	movf	((_bujinFlag)),w
	btfsc	status,2
	goto	u3941
	goto	u3940
u3941:
	goto	l4213
u3940:
	goto	l1015
	line	448
	
l4213:	
;main.c: 448: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3951
	goto	u3950
u3951:
	goto	l4207
u3950:
	line	450
	
l4215:	
;main.c: 449: {
;main.c: 450: if(chrgFullFlag || count1s < 50)
	movf	((_chrgFullFlag)),w
	btfss	status,2
	goto	u3961
	goto	u3960
u3961:
	goto	l1015
u3960:
	
l4217:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u3971
	goto	u3970
u3971:
	goto	l4207
u3970:
	goto	l1015
	line	464
	
l1026:	
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
	
l4071:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l4087
u3730:
	line	14
	
l4073:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l4077
	line	16
	
l4075:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l4077:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3741
	goto	u3740
u3741:
	goto	l4075
u3740:
	line	20
	
l4079:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3755
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3755:
	skipc
	goto	u3751
	goto	u3750
u3751:
	goto	l4083
u3750:
	line	21
	
l4081:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l4083:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l4085:	
	decfsz	(___lwmod@counter),f
	goto	u3761
	goto	u3760
u3761:
	goto	l4079
u3760:
	line	25
	
l4087:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1698:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_fanCtr

;; *************** function _fanCtr *****************
;; Defined at:
;;		line 503 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	503
global __ptext7
__ptext7:	;psect for function _fanCtr
psect	text7
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	503
	global	__size_of_fanCtr
	__size_of_fanCtr	equ	__end_of_fanCtr-_fanCtr
	
_fanCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _fanCtr: [wreg+status,2+status,0+pclath+cstack]
	line	505
	
l4219:	
;main.c: 505: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l4265
u3980:
	line	507
	
l4221:	
;main.c: 506: {
;main.c: 507: PORTA |= 0x02;
	bsf	(134)^080h+(1/8),(1)&7	;volatile
	line	508
	
l4223:	
;main.c: 508: unsigned char maxFanValue = 52;
	movlw	low(034h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fanCtr@maxFanValue)
	line	509
	
l4225:	
;main.c: 509: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l4229
u3990:
	line	511
	
l4227:	
;main.c: 510: {
;main.c: 511: maxFanValue = 40;
	movlw	low(028h)
	movwf	(fanCtr@maxFanValue)
	line	512
;main.c: 512: }
	goto	l4233
	line	513
	
l4229:	
;main.c: 513: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l4233
u4000:
	line	515
	
l4231:	
;main.c: 514: {
;main.c: 515: maxFanValue = 10;
	movlw	low(0Ah)
	movwf	(fanCtr@maxFanValue)
	line	517
	
l4233:	
;main.c: 516: }
;main.c: 517: test_adc = ADC_Sample(2, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	518
	
l4235:	
;main.c: 518: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u4011
	goto	u4010
u4011:
	goto	l4245
u4010:
	line	521
	
l4237:	
;main.c: 519: {
;main.c: 520: volatile unsigned long fan_temp;
;main.c: 521: if(power_ad > 0)
	movf	((_power_ad)),w	;volatile
iorwf	((_power_ad+1)),w	;volatile
	btfsc	status,2
	goto	u4021
	goto	u4020
u4021:
	goto	l4245
u4020:
	line	523
	
l4239:	
;main.c: 522: {
;main.c: 523: fan_temp = ((unsigned long)1UL*adresult * power_ad)/4096;
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

	
l4241:	
	movlw	0Ch
u4035:
	clrc
	rrf	(fanCtr@fan_temp+3),f	;volatile
	rrf	(fanCtr@fan_temp+2),f	;volatile
	rrf	(fanCtr@fan_temp+1),f	;volatile
	rrf	(fanCtr@fan_temp),f	;volatile
	addlw	-1
	skipz
	goto	u4035

	line	524
	
l4243:	
;main.c: 524: fanValue = (unsigned int)(fan_temp);
	movf	(fanCtr@fan_temp+1),w	;volatile
	movwf	(_fanValue+1)
	movf	(fanCtr@fan_temp),w	;volatile
	movwf	(_fanValue)
	line	527
	
l4245:	
;main.c: 525: }
;main.c: 526: }
;main.c: 527: if(fanValue > 1300)
	movlw	05h
	subwf	(_fanValue+1),w
	movlw	015h
	skipnz
	subwf	(_fanValue),w
	skipc
	goto	u4041
	goto	u4040
u4041:
	goto	l4253
u4040:
	line	529
	
l4247:	
;main.c: 528: {
;main.c: 529: if(++fanOverTime > 50)
	movlw	low(033h)
	incf	(_fanOverTime),f
	subwf	((_fanOverTime)),w
	skipc
	goto	u4051
	goto	u4050
u4051:
	goto	l4255
u4050:
	line	531
	
l4249:	
;main.c: 530: {
;main.c: 531: fanOverTime = 0;
	clrf	(_fanOverTime)
	line	532
;main.c: 532: workStep = 0;
	clrf	(_workStep)
	line	533
	
l4251:	
;main.c: 533: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	goto	l4255
	line	538
	
l4253:	
;main.c: 536: else
;main.c: 537: {
;main.c: 538: fanOverTime = 0;
	clrf	(_fanOverTime)
	line	540
	
l4255:	
;main.c: 539: }
;main.c: 540: if(fanDuty < maxFanValue)
	movf	(fanCtr@maxFanValue),w
	subwf	(_fanDuty),w
	skipnc
	goto	u4061
	goto	u4060
u4061:
	goto	l4259
u4060:
	line	542
	
l4257:	
;main.c: 541: {
;main.c: 542: fanDuty++;
	incf	(_fanDuty),f
	line	543
;main.c: 543: }
	goto	l4263
	line	544
	
l4259:	
;main.c: 544: else if(fanDuty > maxFanValue)
	movf	(_fanDuty),w
	subwf	(fanCtr@maxFanValue),w
	skipnc
	goto	u4071
	goto	u4070
u4071:
	goto	l4263
u4070:
	line	546
	
l4261:	
;main.c: 545: {
;main.c: 546: fanDuty--;
	decf	(_fanDuty),f
	line	548
	
l4263:	
;main.c: 547: }
;main.c: 548: fanInit();
	fcall	_fanInit
	line	549
;main.c: 549: }
	goto	l1054
	line	552
	
l4265:	
;main.c: 550: else
;main.c: 551: {
;main.c: 552: fanStop();
	fcall	_fanStop
	line	553
	
l4267:	
;main.c: 553: fanDuty = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_fanDuty)
	line	554
	
l4269:	
;main.c: 554: PORTA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(1/8),(1)&7	;volatile
	line	556
	
l1054:	
	return
	opt stack 0
GLOBAL	__end_of_fanCtr
	__end_of_fanCtr:
	signat	_fanCtr,89
	global	_fanStop

;; *************** function _fanStop *****************
;; Defined at:
;;		line 496 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	496
global __ptext8
__ptext8:	;psect for function _fanStop
psect	text8
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	496
	global	__size_of_fanStop
	__size_of_fanStop	equ	__end_of_fanStop-_fanStop
	
_fanStop:	
;incstack = 0
	opt	stack 4
; Regs used in _fanStop: [status,2]
	line	498
	
l4029:	
;main.c: 498: PWMD4L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(27)	;volatile
	line	499
	
l4031:	
;main.c: 499: PWMCON0 &= 0xEF;
	bcf	(21)+(4/8),(4)&7	;volatile
	line	500
	
l4033:	
;main.c: 500: PORTA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(4/8),(4)&7	;volatile
	line	501
	
l1038:	
	return
	opt stack 0
GLOBAL	__end_of_fanStop
	__end_of_fanStop:
	signat	_fanStop,89
	global	_fanInit

;; *************** function _fanInit *****************
;; Defined at:
;;		line 485 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	485
global __ptext9
__ptext9:	;psect for function _fanInit
psect	text9
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	485
	global	__size_of_fanInit
	__size_of_fanInit	equ	__end_of_fanInit-_fanInit
	
_fanInit:	
;incstack = 0
	opt	stack 4
; Regs used in _fanInit: [wreg+status,2+status,0]
	line	488
	
l4017:	
;main.c: 488: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	489
	
l4019:	
;main.c: 489: PWMT4L = 73;
	movlw	low(049h)
	movwf	(28)	;volatile
	line	490
	
l4021:	
;main.c: 490: PWMD4L = fanDuty;
	movf	(_fanDuty),w
	movwf	(27)	;volatile
	line	491
	
l4023:	
;main.c: 491: PWMCON1 = 0xC0;
	movlw	low(0C0h)
	movwf	(22)	;volatile
	line	492
	
l4025:	
;main.c: 492: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	493
	
l4027:	
;main.c: 493: PWMCON0 |= 0x30;
	movlw	low(030h)
	iorwf	(21),f	;volatile
	line	494
	
l1035:	
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
	
l4035:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	120
	
l1360:	
	line	121
	btfss	(___lmul@multiplier),(0)&7
	goto	u3621
	goto	u3620
u3621:
	goto	l4039
u3620:
	line	122
	
l4037:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3631
	addwf	(___lmul@product+1),f
u3631:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3632
	addwf	(___lmul@product+2),f
u3632:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3633
	addwf	(___lmul@product+3),f
u3633:

	line	123
	
l4039:	
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	124
	
l4041:	
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
	goto	u3641
	goto	u3640
u3641:
	goto	l1360
u3640:
	line	128
	
l4043:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	129
	
l1363:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 290 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	290
global __ptext11
__ptext11:	;psect for function _ADC_Sample
psect	text11
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	290
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	292
	
l3929:	
;main.c: 292: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	293
	
l3931:	
;main.c: 293: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	294
;main.c: 294: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	296
	
l3933:	
;main.c: 296: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u3471
	goto	u3470
u3471:
	goto	l3939
u3470:
	
l3935:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l3939
u3480:
	line	299
	
l3937:	
;main.c: 297: {
;main.c: 299: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	300
;main.c: 300: _delay((unsigned long)((100)*(8000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
movwf	((??_ADC_Sample+0)+0),f
	u4687:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u4687
	nop
opt asmopt_pop

	line	301
;main.c: 301: }
	goto	l3941
	line	303
	
l3939:	
;main.c: 302: else
;main.c: 303: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	305
	
l3941:	
;main.c: 305: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u3491
	goto	u3490
u3491:
	goto	l3947
u3490:
	line	307
	
l3943:	
;main.c: 306: {
;main.c: 307: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	308
	
l3945:	
;main.c: 308: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	310
	
l3947:	
	line	311
	
l3949:	
;main.c: 311: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	313
	
l3955:	
;main.c: 312: {
;main.c: 313: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u3505:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u3505
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	314
# 314 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
nop ;# 
	line	315
# 315 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
nop ;# 
	line	316
# 316 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
nop ;# 
	line	317
# 317 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
nop ;# 
psect	text11
	line	318
	
l3957:	
;main.c: 318: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	320
	
l3959:	
;main.c: 320: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	321
;main.c: 321: while (GODONE)
	goto	l980
	
l981:	
	line	323
;main.c: 322: {
;main.c: 323: _delay((unsigned long)((2)*(8000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	325
;main.c: 325: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u3511
	goto	u3510
u3511:
	goto	l980
u3510:
	line	326
	
l3961:	
;main.c: 326: return 0;
	movlw	low(0)
	goto	l983
	line	327
	
l980:	
	line	321
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3521
	goto	u3520
u3521:
	goto	l981
u3520:
	line	329
	
l3965:	
;main.c: 327: }
;main.c: 329: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l3967:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	331
	
l3969:	
;main.c: 331: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l3973
u3530:
	line	333
	
l3971:	
;main.c: 332: {
;main.c: 333: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	334
;main.c: 334: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	335
;main.c: 335: }
	goto	l986
	line	336
	
l3973:	
;main.c: 336: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u3545
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u3545:
	skipnc
	goto	u3541
	goto	u3540
u3541:
	goto	l3977
u3540:
	line	337
	
l3975:	
;main.c: 337: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l986
	line	338
	
l3977:	
;main.c: 338: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u3555
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u3555:
	skipnc
	goto	u3551
	goto	u3550
u3551:
	goto	l986
u3550:
	line	339
	
l3979:	
;main.c: 339: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	341
	
l986:	
;main.c: 341: adsum += ad_temp;
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
	goto	u3561
	addwf	(ADC_Sample@adsum+1),f	;volatile
u3561:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3562
	addwf	(ADC_Sample@adsum+2),f	;volatile
u3562:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3563
	addwf	(ADC_Sample@adsum+3),f	;volatile
u3563:

	line	311
	
l3981:	
	incf	(ADC_Sample@i),f
	
l3983:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3571
	goto	u3570
u3571:
	goto	l3955
u3570:
	line	343
	
l3985:	
;main.c: 342: }
;main.c: 343: adsum -= admax;
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
	goto	u3585
	goto	u3586
u3585:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3586:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3587
	goto	u3588
u3587:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3588:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3589
	goto	u3580
u3589:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3580:

	line	344
;main.c: 344: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u3595
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u3595
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u3595
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u3595:
	skipc
	goto	u3591
	goto	u3590
u3591:
	goto	l990
u3590:
	line	345
	
l3987:	
;main.c: 345: adsum -= admin;
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
	goto	u3605
	goto	u3606
u3605:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3606:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3607
	goto	u3608
u3607:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3608:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3609
	goto	u3600
u3609:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3600:

	goto	l3989
	line	346
	
l990:	
	line	347
;main.c: 346: else
;main.c: 347: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	349
	
l3989:	
;main.c: 349: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u3615:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u3610:
	addlw	-1
	skipz
	goto	u3615
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	351
	
l3991:	
;main.c: 351: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	352
	
l3993:	
;main.c: 352: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	353
	
l3995:	
;main.c: 353: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	354
	
l3997:	
;main.c: 354: return 0xA5;
	movlw	low(0A5h)
	line	356
	
l983:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_bujinCtr

;; *************** function _bujinCtr *****************
;; Defined at:
;;		line 605 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempStep        1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
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
	line	605
global __ptext12
__ptext12:	;psect for function _bujinCtr
psect	text12
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	605
	global	__size_of_bujinCtr
	__size_of_bujinCtr	equ	__end_of_bujinCtr-_bujinCtr
	
_bujinCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _bujinCtr: [wreg-fsr0h+status,2+status,0]
	line	607
	
l4287:	
;main.c: 607: if(bujinFlag || motorStep > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_bujinFlag)),w
	btfss	status,2
	goto	u4131
	goto	u4130
u4131:
	goto	l4291
u4130:
	
l4289:	
	movf	((_motorStep)),w
iorwf	((_motorStep+1)),w
	btfsc	status,2
	goto	u4141
	goto	u4140
u4141:
	goto	l4323
u4140:
	line	609
	
l4291:	
;main.c: 608: {
;main.c: 609: if(bujinFlag == 1)
		decf	((_bujinFlag)),w
	btfss	status,2
	goto	u4151
	goto	u4150
u4151:
	goto	l4295
u4150:
	line	611
	
l4293:	
;main.c: 610: {
;main.c: 611: maxMotorStep = 512;
	movlw	0
	movwf	(_maxMotorStep)
	movlw	02h
	movwf	((_maxMotorStep))+1
	line	612
;main.c: 612: }
	goto	l4303
	line	613
	
l4295:	
;main.c: 613: else if(bujinFlag == 2)
		movlw	2
	xorwf	((_bujinFlag)),w
	btfss	status,2
	goto	u4161
	goto	u4160
u4161:
	goto	l4299
u4160:
	line	615
	
l4297:	
;main.c: 614: {
;main.c: 615: maxMotorStep = 1024;
	movlw	0
	movwf	(_maxMotorStep)
	movlw	04h
	movwf	((_maxMotorStep))+1
	line	616
;main.c: 616: }
	goto	l4303
	line	617
	
l4299:	
;main.c: 617: else if(bujinFlag == 3)
		movlw	3
	xorwf	((_bujinFlag)),w
	btfss	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l4303
u4170:
	line	619
	
l4301:	
;main.c: 618: {
;main.c: 619: maxMotorStep = 1360;
	movlw	050h
	movwf	(_maxMotorStep)
	movlw	05h
	movwf	((_maxMotorStep))+1
	line	621
	
l4303:	
;main.c: 620: }
;main.c: 621: if(++motorStep >= (maxMotorStep*2))
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
	goto	u4185
	movf	0+(??_bujinCtr+0)+0,w
	subwf	((_motorStep)),w
u4185:
	skipc
	goto	u4181
	goto	u4180
u4181:
	goto	l4307
u4180:
	line	623
	
l4305:	
;main.c: 622: {
;main.c: 623: motorStep = 0;
	clrf	(_motorStep)
	clrf	(_motorStep+1)
	line	625
	
l4307:	
;main.c: 624: }
;main.c: 625: unsigned char tempStep = motorStep % 8;
	movf	(_motorStep),w
	movwf	(bujinCtr@tempStep)
	
l4309:	
	movlw	low(07h)
	andwf	(bujinCtr@tempStep),f
	line	626
	
l4311:	
;main.c: 626: if(motorStep < maxMotorStep)
	movf	(_maxMotorStep+1),w
	subwf	(_motorStep+1),w
	skipz
	goto	u4195
	movf	(_maxMotorStep),w
	subwf	(_motorStep),w
u4195:
	skipnc
	goto	u4191
	goto	u4190
u4191:
	goto	l4321
u4190:
	goto	l4317
	line	631
;main.c: 630: {
;main.c: 631: case 0:
	
l1077:	
	line	632
;main.c: 632: RA5 = 1;RA6 = 0;RA7 = 0;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	633
;main.c: 633: break;
	goto	l1098
	line	634
;main.c: 634: case 1:
	
l1079:	
	line	635
;main.c: 635: RA5 = 1;RA6 = 1;RA7 = 0;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	bsf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	636
;main.c: 636: break;
	goto	l1098
	line	637
;main.c: 637: case 2:
	
l1080:	
	line	638
;main.c: 638: RA5 = 0;RA6 = 1;RA7 = 0;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bsf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	639
;main.c: 639: break;
	goto	l1098
	line	640
;main.c: 640: case 3:
	
l1081:	
	line	641
;main.c: 641: RA5 = 0;RA6 = 1;RA7 = 1;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bsf	(1078/8)^080h,(1078)&7	;volatile
	bsf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	642
;main.c: 642: break;
	goto	l1098
	line	643
;main.c: 643: case 4:
	
l1082:	
	line	644
;main.c: 644: RA5 = 0;RA6 = 0;RA7 = 1;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bsf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	645
;main.c: 645: break;
	goto	l1098
	line	646
;main.c: 646: case 5:
	
l1083:	
	line	647
;main.c: 647: RA5 = 0;RA6 = 0;RA7 = 1;RB7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bsf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	648
;main.c: 648: break;
	goto	l1098
	line	649
;main.c: 649: case 6:
	
l1084:	
	line	650
;main.c: 650: RA5 = 0;RA6 = 0;RA7 = 0;RB7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	651
;main.c: 651: break;
	goto	l1098
	line	652
;main.c: 652: case 7:
	
l1085:	
	line	653
;main.c: 653: RA5 = 1;RA6 = 0;RA7 = 0;RB7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	654
;main.c: 654: break;
	goto	l1098
	line	629
	
l4317:	
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
goto l1098
movlw high(S4685)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S4685)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S4685:
	ljmp	l1077
	ljmp	l1079
	ljmp	l1080
	ljmp	l1081
	ljmp	l1082
	ljmp	l1083
	ljmp	l1084
	ljmp	l1085
psect	text12

	line	660
	
l4321:	
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
goto l1098
movlw high(S4687)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S4687)
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
S4687:
	ljmp	l1085
	ljmp	l1084
	ljmp	l1083
	ljmp	l1082
	ljmp	l1081
	ljmp	l1080
	ljmp	l1079
	ljmp	l1077
psect	text12

	line	691
	
l4323:	
;main.c: 689: else
;main.c: 690: {
;main.c: 691: PORTA &= 0x1F;
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	692
	
l4325:	
;main.c: 692: PORTB &= 0x7F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(7/8),(7)&7	;volatile
	line	694
	
l1098:	
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
	
l4485:	
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
	
l1703:	
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
	
l4445:	
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
	goto	u4371
	goto	u4370
u4371:
	goto	l4449
u4370:
	line	50
	
l4447:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l1594
	line	51
	
l4449:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u4385:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u4380:
	addlw	-1
	skipz
	goto	u4385
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l4451:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l4453:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l4455:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l4457:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l4459:	
	btfss	(___fttol@exp1),7
	goto	u4391
	goto	u4390
u4391:
	goto	l4469
u4390:
	line	57
	
l4461:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4401
	goto	u4400
u4401:
	goto	l4465
u4400:
	goto	l4447
	line	60
	
l4465:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l4467:	
	incfsz	(___fttol@exp1),f
	goto	u4411
	goto	u4410
u4411:
	goto	l4465
u4410:
	goto	l4477
	line	63
	
l4469:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u4421
	goto	u4420
u4421:
	goto	l4475
u4420:
	goto	l4447
	line	66
	
l4473:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	65
	
l4475:	
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u4431
	goto	u4430
u4431:
	goto	l4473
u4430:
	line	70
	
l4477:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u4441
	goto	u4440
u4441:
	goto	l4481
u4440:
	line	71
	
l4479:	
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
	
l4481:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l1594:	
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
	
l4405:	
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
	goto	u4331
	goto	u4330
u4331:
	goto	l4409
u4330:
	line	64
	
l4407:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1558
	line	65
	
l4409:	
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
	goto	u4341
	goto	u4340
u4341:
	goto	l1559
u4340:
	line	66
	
l4411:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1558
	
l1559:	
	line	67
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	68
	
l4413:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l4415:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l4417:	
	movf	0+(___ftdiv@f2)+02h,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l4419:	
	movlw	low(080h)
	andwf	(___ftdiv@sign),f
	line	72
	
l4421:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l4423:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l4425:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l4427:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l4429:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l4431:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4355
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4355
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4355:
	skipc
	goto	u4351
	goto	u4350
u4351:
	goto	l4437
u4350:
	line	80
	
l4433:	
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
	
l4435:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l4437:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	84
	
l4439:	
	decfsz	(___ftdiv@cntr),f
	goto	u4361
	goto	u4360
u4361:
	goto	l4431
u4360:
	line	85
	
l4441:	
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
	
l1558:	
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
	
l4047:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u3651
	goto	u3650
u3651:
	goto	l1505
u3650:
	
l4049:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3661
	goto	u3660
u3661:
	goto	l4053
u3660:
	
l1505:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l1506
	line	67
	
l4051:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l4053:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l4051
u3670:
	goto	l4057
	line	71
	
l4055:	
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
	
l4057:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l4055
u3680:
	goto	l4061
	line	76
	
l4059:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l4061:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u3691
	goto	u3690
u3691:
	goto	l1517
u3690:
	
l4063:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u3701
	goto	u3700
u3701:
	goto	l4059
u3700:
	
l1517:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3711
	goto	u3710
u3711:
	goto	l1518
u3710:
	line	80
	
l4065:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l1518:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l4067:	
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
	goto	u3721
	goto	u3720
u3721:
	goto	l1519
u3720:
	line	84
	
l4069:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1519:	
	line	85
	line	86
	
l1506:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 359 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	359
global __ptext17
__ptext17:	;psect for function _chrgCtr
psect	text17
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	359
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 6
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	361
	
l3741:	
;main.c: 361: if(PORTB & 0x20)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),(5)&7	;volatile
	goto	u3211
	goto	u3210
u3211:
	goto	l3757
u3210:
	line	363
	
l3743:	
;main.c: 362: {
;main.c: 363: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	364
	
l3745:	
;main.c: 364: firstLock = 0;
	clrf	(_firstLock)
	line	365
;main.c: 365: lowBatLock = 0;
	clrf	(_lowBatLock)
	line	366
	
l3747:	
;main.c: 366: if(power_ad > 4140)
	movlw	010h
	subwf	(_power_ad+1),w	;volatile
	movlw	02Dh
	skipnz
	subwf	(_power_ad),w	;volatile
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l3755
u3220:
	line	368
	
l3749:	
;main.c: 367: {
;main.c: 368: if(++chrgFullTime > 200)
	movlw	low(0C9h)
	incf	(_chrgFullTime),f
	subwf	((_chrgFullTime)),w
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l999
u3230:
	line	370
	
l3751:	
;main.c: 369: {
;main.c: 370: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	371
	
l3753:	
;main.c: 371: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l999
	line	376
	
l3755:	
;main.c: 374: else
;main.c: 375: {
;main.c: 376: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	goto	l999
	line	382
	
l3757:	
;main.c: 380: else
;main.c: 381: {
;main.c: 382: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	383
;main.c: 383: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	384
;main.c: 384: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	387
	
l999:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_WorkSleep

;; *************** function _WorkSleep *****************
;; Defined at:
;;		line 211 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	211
global __ptext18
__ptext18:	;psect for function _WorkSleep
psect	text18
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	211
	global	__size_of_WorkSleep
	__size_of_WorkSleep	equ	__end_of_WorkSleep-_WorkSleep
	
_WorkSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _WorkSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	216
	
l4489:	
;main.c: 214: static unsigned char time;
;main.c: 216: if(B_OnOff)time = 0;
	btfss	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	goto	u4451
	goto	u4450
u4451:
	goto	l4493
u4450:
	
l4491:	
	clrf	(WorkSleep@time)
	line	218
	
l4493:	
;main.c: 218: if(++time >= 125)
	movlw	low(07Dh)
	incf	(WorkSleep@time),f
	subwf	((WorkSleep@time)),w
	skipc
	goto	u4461
	goto	u4460
u4461:
	goto	l972
u4460:
	line	220
	
l4495:	
;main.c: 219: {
;main.c: 220: time = 0;
	clrf	(WorkSleep@time)
	line	221
;main.c: 221: INTCON = 0;
	clrf	(11)	;volatile
	line	222
;main.c: 222: PIE1 = 0;
	clrf	(14)	;volatile
	line	223
;main.c: 223: PIE2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(272)^0100h	;volatile
	line	224
;main.c: 224: PIR1 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(13)	;volatile
	line	225
;main.c: 225: PIR2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(271)^0100h	;volatile
	line	226
;main.c: 226: T2CON = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	227
;main.c: 227: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	230
;main.c: 230: ADCON0 = 0;
	clrf	(149)^080h	;volatile
	line	233
	
l4497:	
;main.c: 233: PORTA = 0x01;
	movlw	low(01h)
	movwf	(134)^080h	;volatile
	line	234
	
l4499:	
;main.c: 234: PORTB = 0x02;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	235
;main.c: 235: TRISC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	236
	
l4501:	
;main.c: 236: PORTC = 0x03;
	movlw	low(03h)
	movwf	(262)^0100h	;volatile
	line	238
	
l4503:	
;main.c: 238: TRISB5 =1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7	;volatile
	line	240
	
l4505:	
;main.c: 240: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	241
	
l4507:	
;main.c: 241: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	242
	
l4509:	
;main.c: 242: IOCB5= 1;
	bsf	(77/8),(77)&7	;volatile
	line	243
	
l4511:	
;main.c: 243: PORTB;
	movf	(6),w	;volatile
	line	244
	
l4513:	
;main.c: 244: PORTB &= 0xFD;
	bcf	(6)+(1/8),(1)&7	;volatile
	line	256
	
l4515:	
;main.c: 256: SystemEnterSleep();
	fcall	_SystemEnterSleep
	line	257
	
l4517:	
;main.c: 257: if(RAIF)
	btfss	(107/8),(107)&7	;volatile
	goto	u4471
	goto	u4470
u4471:
	goto	l4523
u4470:
	line	259
	
l4519:	
;main.c: 258: {
;main.c: 259: RAIF = 0;
	bcf	(107/8),(107)&7	;volatile
	line	260
	
l4521:	
;main.c: 260: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	263
	
l4523:	
;main.c: 261: }
;main.c: 263: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	264
	
l4525:	
;main.c: 264: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	265
	
l4527:	
;main.c: 265: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	266
	
l4529:	
;main.c: 266: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	269
	
l972:	
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
	
l4091:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text19
	
l1330:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text19
	
l4093:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	
l4095:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(1),f	;volatile
	
l4097:	
	bsf	(1)+(3/8),(3)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text19
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\TouchKeyConst.h"
	line	5
	
l4099:	
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text19
	
l4101:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	
l4103:	
	clrf	(275)^0100h	;volatile
	
l4105:	
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
	
l4107:	
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	
l4109:	
	movlw	low(079h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(275)^0100h	;volatile
	
l4111:	
	fcall	_ClearResSum
	
l4113:	
	bsf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	
l4115:	
	fcall	_GetTouchKeyValue
	
l4117:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SystemEnterSleep@91)
	
l4119:	
	clrf	(SystemEnterSleep@92)
	incf	(SystemEnterSleep@92),f
	clrf	(SystemEnterSleep@92+1)
	
l4121:	
	btfsc	(88/8),(88)&7	;volatile
	goto	u3771
	goto	u3770
u3771:
	goto	l4127
u3770:
	
l4123:	
	btfsc	(89/8),(89)&7	;volatile
	goto	u3781
	goto	u3780
u3781:
	goto	l4127
u3780:
	
l4125:	
	btfss	(107/8),(107)&7	;volatile
	goto	u3791
	goto	u3790
u3791:
	goto	l4139
u3790:
	
l4127:	
	fcall	_ClearResSum
	
l4129:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	
l4131:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4133:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	l1334
	
l4139:	
	movf	(SystemEnterSleep@92),w
	andlw	07h
	btfsc	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l4173
u3800:
	
l4141:	
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
	
l4143:	
	movf	((SystemEnterSleep@93)),w
iorwf	((SystemEnterSleep@93+1)),w
	btfsc	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l4173
u3810:
	
l4145:	
	movf	(SystemEnterSleep@91),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addwf	(SystemEnterSleep@94),f
	skipnc
	incf	(SystemEnterSleep@94+1),f
	
l4147:	
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
	goto	u3825
	movf	(SystemEnterSleep@94),w
	subwf	0+(??_SystemEnterSleep+0)+0,w
u3825:
	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l4171
u3820:
	
l4149:	
	clrf	(SystemEnterSleep@91)
	
l4151:	
	clrf	(SystemEnterSleep@92)
	incf	(SystemEnterSleep@92),f
	clrf	(SystemEnterSleep@92+1)
	
l4153:	
	movf	(SystemEnterSleep@92),w
	andlw	07h
	btfss	status,2
	goto	u3831
	goto	u3830
u3831:
	goto	l4157
u3830:
	
l4155:	
	movf	(SystemEnterSleep@91),w
	fcall	_KeyClearOne
	
l4157:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(SystemEnterSleep@92),f
	rlf	(SystemEnterSleep@92+1),f
	
l4159:	
	movlw	low(03h)
	incf	(SystemEnterSleep@91),f
	subwf	((SystemEnterSleep@91)),w
	skipc
	goto	u3841
	goto	u3840
u3841:
	goto	l4153
u3840:
	goto	l4127
	
l4171:	
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
	
l4173:	
	clrc
	rlf	(SystemEnterSleep@92),f
	rlf	(SystemEnterSleep@92+1),f
	
l4175:	
	movlw	low(03h)
	incf	(SystemEnterSleep@91),f
	subwf	((SystemEnterSleep@91)),w
	skipc
	goto	u3851
	goto	u3850
u3851:
	goto	l4139
u3850:
	goto	l1330
	
l1334:	
	return
	opt stack 0
GLOBAL	__end_of_SystemEnterSleep
	__end_of_SystemEnterSleep:
	signat	_SystemEnterSleep,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 93 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	93
global __ptext20
__ptext20:	;psect for function _Refurbish_Sfr
psect	text20
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	93
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 5
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	96
	
l3093:	
;main.c: 96: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(14)	;volatile
	line	97
;main.c: 97: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	98
;main.c: 98: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	99
	
l3095:	
;main.c: 99: if (4 != T2CON)
		movlw	4
	xorwf	((19)),w	;volatile
	btfsc	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l931
u2110:
	line	100
	
l3097:	
;main.c: 100: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	101
	
l931:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 107 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	107
global __ptext21
__ptext21:	;psect for function _KeyServer
psect	text21
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	107
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 6
; Regs used in _KeyServer: [wreg+status,2+status,0]
	line	110
	
l3629:	
;main.c: 109: static unsigned char KeyOldFlag = 0;
;main.c: 110: if (KeyFlag[0])
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l3697
u2980:
	line	112
	
l3631:	
;main.c: 111: {
;main.c: 112: if (KeyFlag[0] != KeyOldFlag)
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),w
	skipnz
	goto	u2991
	goto	u2990
u2991:
	goto	l955
u2990:
	line	115
	
l3633:	
;main.c: 113: {
;main.c: 115: KeyOldFlag ^= KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),f
	line	116
	
l3635:	
;main.c: 116: if ((KeyOldFlag & 0x1) && (KeyFlag[0] & 0x1) && firstLock == 0)
	btfss	(KeyServer@KeyOldFlag),(0)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l3657
u3000:
	
l3637:	
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u3011
	goto	u3010
u3011:
	goto	l3657
u3010:
	
l3639:	
	movf	((_firstLock)),w
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l3657
u3020:
	line	119
	
l3641:	
;main.c: 117: {
;main.c: 119: if(lowBatLock == 1)
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l3645
u3030:
	line	121
	
l3643:	
;main.c: 120: {
;main.c: 121: shanshuoTime2 = 450;
	movlw	0C2h
	movwf	(_shanshuoTime2)
	movlw	01h
	movwf	((_shanshuoTime2))+1
	line	122
;main.c: 122: }
	goto	l3649
	line	123
	
l3645:	
;main.c: 123: else if(++wuhuaFlag > 2)
	movlw	low(03h)
	incf	(_wuhuaFlag),f
	subwf	((_wuhuaFlag)),w
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l3649
u3040:
	line	125
	
l3647:	
;main.c: 124: {
;main.c: 125: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	line	127
	
l3649:	
;main.c: 126: }
;main.c: 127: if(wuhuaFlag >= 2)
	movlw	low(02h)
	subwf	(_wuhuaFlag),w
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l3655
u3050:
	line	129
	
l3651:	
;main.c: 128: {
;main.c: 129: shanshuoTime2 = 450;
	movlw	0C2h
	movwf	(_shanshuoTime2)
	movlw	01h
	movwf	((_shanshuoTime2))+1
	line	130
	
l3653:	
;main.c: 130: count10s = 0;
	clrf	(_count10s)
	line	131
;main.c: 131: }
	goto	l3657
	line	134
	
l3655:	
;main.c: 132: else
;main.c: 133: {
;main.c: 134: shanshuoTime2 = 0;
	clrf	(_shanshuoTime2)
	clrf	(_shanshuoTime2+1)
	line	137
	
l3657:	
;main.c: 135: }
;main.c: 136: }
;main.c: 137: if ((KeyOldFlag & 0x2) && (KeyFlag[0] & 0x2) && firstLock == 0)
	btfss	(KeyServer@KeyOldFlag),(1)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l3677
u3060:
	
l3659:	
	btfss	(_KeyFlag),(1)&7	;volatile
	goto	u3071
	goto	u3070
u3071:
	goto	l3677
u3070:
	
l3661:	
	movf	((_firstLock)),w
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l3677
u3080:
	line	140
	
l3663:	
;main.c: 138: {
;main.c: 140: if(lowBatLock == 1)
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l3667
u3090:
	line	142
	
l3665:	
;main.c: 141: {
;main.c: 142: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	line	143
;main.c: 143: }
	goto	l3671
	line	144
	
l3667:	
;main.c: 144: else if(++workStep > 3)
	movlw	low(04h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l3671
u3100:
	line	146
	
l3669:	
;main.c: 145: {
;main.c: 146: workStep = 0;
	clrf	(_workStep)
	line	147
;main.c: 147: bujinFlag = 0;
	clrf	(_bujinFlag)
	line	149
	
l3671:	
;main.c: 148: }
;main.c: 149: if(workStep >= 2)
	movlw	low(02h)
	subwf	(_workStep),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l3675
u3110:
	line	151
	
l3673:	
;main.c: 150: {
;main.c: 151: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	line	152
;main.c: 152: }
	goto	l3677
	line	155
	
l3675:	
;main.c: 153: else
;main.c: 154: {
;main.c: 155: shanshuoTime = 0;
	clrf	(_shanshuoTime)
	clrf	(_shanshuoTime+1)
	line	159
	
l3677:	
;main.c: 156: }
;main.c: 158: }
;main.c: 159: if ((KeyOldFlag & 0x4) && (KeyFlag[0] & 0x4) && firstLock == 0 && workStep > 0)
	btfss	(KeyServer@KeyOldFlag),(2)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l3695
u3120:
	
l3679:	
	btfss	(_KeyFlag),(2)&7	;volatile
	goto	u3131
	goto	u3130
u3131:
	goto	l3695
u3130:
	
l3681:	
	movf	((_firstLock)),w
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l3695
u3140:
	
l3683:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l3695
u3150:
	line	162
	
l3685:	
;main.c: 160: {
;main.c: 162: if(++bujinFlag > 3)
	movlw	low(04h)
	incf	(_bujinFlag),f
	subwf	((_bujinFlag)),w
	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l3689
u3160:
	line	164
	
l3687:	
;main.c: 163: {
;main.c: 164: bujinFlag = 0;
	clrf	(_bujinFlag)
	line	166
	
l3689:	
;main.c: 165: }
;main.c: 166: if(bujinFlag >= 2)
	movlw	low(02h)
	subwf	(_bujinFlag),w
	skipc
	goto	u3171
	goto	u3170
u3171:
	goto	l3693
u3170:
	line	168
	
l3691:	
;main.c: 167: {
;main.c: 168: shanshuoTime3 = 450;
	movlw	0C2h
	movwf	(_shanshuoTime3)
	movlw	01h
	movwf	((_shanshuoTime3))+1
	line	169
;main.c: 169: }
	goto	l3695
	line	172
	
l3693:	
;main.c: 170: else
;main.c: 171: {
;main.c: 172: shanshuoTime3 = 0;
	clrf	(_shanshuoTime3)
	clrf	(_shanshuoTime3+1)
	line	176
	
l3695:	
;main.c: 173: }
;main.c: 174: }
;main.c: 176: KeyOldFlag = KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	movwf	(KeyServer@KeyOldFlag)
	goto	l955
	line	181
	
l3697:	
;main.c: 179: else
;main.c: 180: {
;main.c: 181: KeyOldFlag = 0;
	clrf	(KeyServer@KeyOldFlag)
	line	183
	
l955:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 56 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	56
global __ptext22
__ptext22:	;psect for function _Init_System
psect	text22
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	56
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	58
	
l3603:	
# 58 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
nop ;# 
	line	59
# 59 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
clrwdt ;# 
psect	text22
	line	60
	
l3605:	
;main.c: 60: INTCON = 0;
	clrf	(11)	;volatile
	line	61
	
l3607:	
;main.c: 61: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	62
	
l3609:	
;main.c: 62: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	67
;main.c: 67: TRISA = 0x04;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	68
	
l3611:	
;main.c: 68: PORTA = 0;
	clrf	(134)^080h	;volatile
	line	69
	
l3613:	
;main.c: 69: TRISB = 0x20;
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	70
;main.c: 70: PORTB = 0;
	clrf	(6)	;volatile
	line	71
;main.c: 71: WPUB = 0x00;
	clrf	(8)	;volatile
	line	72
;main.c: 72: TRISC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	73
;main.c: 73: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	75
	
l3615:	
;main.c: 75: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	76
	
l3617:	
;main.c: 76: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	77
	
l3619:	
;main.c: 77: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	79
	
l3621:	
;main.c: 79: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	80
	
l3623:	
;main.c: 80: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	81
	
l3625:	
;main.c: 81: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	82
	
l3627:	
;main.c: 82: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	83
	
l927:	
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
	
l4573:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text23
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u4551
	goto	u4550
u4551:
	goto	l1318
u4550:
	
l4575:	
	fcall	_GetTouchKeyValue
	
l4577:	
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u4561
	goto	u4560
u4561:
	goto	l4607
u4560:
	
l4579:	
	clrf	(_KeyCounter)
	
l4581:	
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l4607
	
l1318:	
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u4571
	goto	u4570
u4571:
	goto	l4601
u4570:
	
l4583:	
	fcall	_CheckOnceResult
	fcall	_TurnKeyFlags
	
l4585:	
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4587:	
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u4581
	goto	u4580
u4581:
	goto	l4591
u4580:
	
l4589:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u4591
	goto	u4590
u4591:
	goto	l4599
u4590:
	
l4591:	
	fcall	_KeyStopClear
	
l4593:	
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l4595:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4597:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4599:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	goto	l4607
	
l4601:	
	fcall	_CheckKeyOldValue
	fcall	_ClearResSum
	
l4603:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4605:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4607:	
	fcall	_CheckValidTime
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text23
	
l1326:	
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
	
l3471:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text24
	
l3473:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l3499
u2780:
	
l3475:	
	clrf	(TurnKeyFlags@F84)
	
l3477:	
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l1299
u2790:
	
l3479:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u2801
	goto	u2800
u2801:
	goto	l1299
u2800:
	
l3481:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F83),f
	subwf	((TurnKeyFlags@F83)),w
	skipc
	goto	u2811
	goto	u2810
u2811:
	goto	l1304
u2810:
	
l3483:	
	clrf	(TurnKeyFlags@F83)
	
l3485:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	
l3487:	
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	
l3489:	
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u2821
	goto	u2820
u2821:
	goto	l1300
u2820:
	
l3491:	
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3493:	
	fcall	_KeyClearIn
	goto	l1304
	
l1300:	
	goto	l1304
	
l1299:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3495:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	
l3497:	
	clrf	(TurnKeyFlags@F83)
	goto	l1304
	
l3499:	
	clrf	(TurnKeyFlags@F83)
	clrf	(_KeyOldData)	;volatile
	clrf	0+(_KeyOldData)+01h	;volatile
	
l3501:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F84),f
	subwf	((TurnKeyFlags@F84)),w
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l1304
u2830:
	
l3503:	
	clrf	(TurnKeyFlags@F84)
	clrf	(_KeyFlag)	;volatile
	clrf	0+(_KeyFlag)+01h	;volatile
	
l3505:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l1304:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text24
	
l1306:	
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
	
l2961:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text25
	
l2963:	
	clrf	(KeyClearIn@51)
	
l2969:	
	movf	(KeyClearIn@51),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1881
	goto	u1880
u1881:
	goto	l2973
u1880:
	
l2971:	
	movf	(KeyClearIn@51),w
	fcall	_KeyClearOne
	
l2973:	
	incf	(KeyClearIn@51),f
	
l2975:	
	movlw	low(03h)
	subwf	(KeyClearIn@51),w
	skipc
	goto	u1891
	goto	u1890
u1891:
	goto	l2969
u1890:
	
l1212:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text25
	
l1214:	
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
	
l3343:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text26
	
l3345:	
	clrf	(_KeyFlag)	;volatile
	clrf	0+(_KeyFlag)+01h	;volatile
	clrf	(KeyStopClear@53)
	
l3351:	
	clrc
	rlf	(KeyStopClear@53),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l3353:	
	movf	(KeyStopClear@53),w
	fcall	_KeyClearOne
	
l3355:	
	incf	(KeyStopClear@53),f
	
l3357:	
	movlw	low(03h)
	subwf	(KeyStopClear@53),w
	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l3351
u2550:
	
l1218:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text26
	
l1219:	
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
	
l2995:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text27
	
l2997:	
	clrf	(GetTouchKeyValue@62)
	
l2999:	
	clrf	(GetTouchKeyValue@63)
	incf	(GetTouchKeyValue@63),f
	clrf	(GetTouchKeyValue@63+1)
	
l3001:	
	btfss	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	goto	u1911
	goto	u1910
u1911:
	goto	l3005
u1910:
	
l3003:	
	movf	(GetTouchKeyValue@63),w
	andlw	07h
	btfsc	status,2
	goto	u1921
	goto	u1920
u1921:
	goto	l3033
u1920:
	
l3005:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	clrf	(274)^0100h	;volatile
	
l3007:	
	movlw	low(079h)
	movwf	(275)^0100h	;volatile
	
l3009:	
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	
l3011:	
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
	
l3013:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7	;volatile
	
l3015:	
	movf	(GetTouchKeyValue@62),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 6	;RP1=1, select bank2
	movwf	(273)^0100h	;volatile
	
l3017:	
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
	
l3019:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(273)^0100h+(0/8),(0)&7	;volatile
	
l3021:	
	movlw	0D0h
	movwf	(GetTouchKeyValue@64)
	movlw	07h
	movwf	((GetTouchKeyValue@64))+1
	goto	l1240
	
l3023:	
	movlw	01h
	subwf	(GetTouchKeyValue@64),f
	movlw	0
	skipc
	decf	(GetTouchKeyValue@64+1),f
	subwf	(GetTouchKeyValue@64+1),f
	movf	(((GetTouchKeyValue@64))),w
iorwf	(((GetTouchKeyValue@64+1))),w
	btfss	status,2
	goto	u1931
	goto	u1930
u1931:
	goto	l1240
u1930:
	
l3025:	
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_KeyCounter)
	
l3027:	
	fcall	_ClearResSum
	goto	l1243
	
l1240:	
	btfss	(273)^0100h,(7)&7	;volatile
	goto	u1941
	goto	u1940
u1941:
	goto	l3023
u1940:
	
l3031:	
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
	
l3033:	
	clrc
	rlf	(GetTouchKeyValue@63),f
	rlf	(GetTouchKeyValue@63+1),f
	
l3035:	
	movlw	low(03h)
	incf	(GetTouchKeyValue@62),f
	subwf	((GetTouchKeyValue@62)),w
	skipc
	goto	u1951
	goto	u1950
u1951:
	goto	l3001
u1950:
	
l1245:	
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text27
	
l1243:	
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
	
l2847:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text28
	
l2849:	
	clrf	(ClearResSum@56)
	
l2851:	
	clrc
	rlf	(ClearResSum@56),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l2853:	
	movlw	low(03h)
	incf	(ClearResSum@56),f
	subwf	((ClearResSum@56)),w
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l2851
u1720:
	
l1223:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text28
	
l1224:	
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
	
l3507:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text29
	
l3509:	
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l3515
u2840:
	
l3511:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckValidTime@F87),f
	skipnz
	incf	(CheckValidTime@F87+1),f
	movlw	03Ah
	subwf	((CheckValidTime@F87+1)),w
	movlw	098h
	skipnz
	subwf	((CheckValidTime@F87)),w
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l1311
u2850:
	
l3513:	
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l3515:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckValidTime@F87)
	clrf	(CheckValidTime@F87+1)
	
l1311:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text29
	
l1315:	
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
;;		On entry : 0/0
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
	
l4335:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text30
	
l4337:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckOnceResult@68)
	clrf	(_KeyData)	;volatile
	clrf	0+(_KeyData)+01h	;volatile
	clrf	(_KeyMaxSub)
	
l4339:	
	movf	(CheckOnceResult@68),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@70)
	
l4341:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u4205:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank1
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u4200:
	addlw	-1
	skipz
	goto	u4205
	
l4343:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@71)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@71+1)
	
l4345:	
	movf	(CheckOnceResult@68),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@69)
	
l4347:	
	movf	(CheckOnceResult@69),w
	movwf	(CheckOnceResult@72)
	clrf	(CheckOnceResult@72+1)
	
l4349:	
	movf	(CheckOnceResult@71),w
	addwf	(CheckOnceResult@72),f
	skipnc
	incf	(CheckOnceResult@72+1),f
	movf	(CheckOnceResult@71+1),w
	addwf	(CheckOnceResult@72+1),f
	
l4351:	
	movf	(CheckOnceResult@68),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u4211
	goto	u4210
u4211:
	goto	l4381
u4210:
	
l4353:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u4225
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72),w
u4225:
	skipnc
	goto	u4221
	goto	u4220
u4221:
	goto	l4357
u4220:
	
l4355:	
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
	goto	l4365
	
l4357:	
	movf	(CheckOnceResult@73+1),w
	subwf	(CheckOnceResult@72+1),w
	skipz
	goto	u4235
	movf	(CheckOnceResult@73),w
	subwf	(CheckOnceResult@72),w
u4235:
	skipnc
	goto	u4231
	goto	u4230
u4231:
	goto	l4403
u4230:
	
l4359:	
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
	goto	u4245
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72),w
u4245:
	skipnc
	goto	u4241
	goto	u4240
u4241:
	goto	l4403
u4240:
	
l4361:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@73),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@73+1),w
	movwf	indf
	
l4363:	
	movf	(CheckOnceResult@71),w
	subwf	(CheckOnceResult@73),w
	movwf	(CheckOnceResult@71)
	movf	(CheckOnceResult@71+1),w
	skipc
	incf	(CheckOnceResult@71+1),w
	subwf	(CheckOnceResult@73+1),w
	movwf	1+(CheckOnceResult@71)
	
l4365:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	
l4367:	
	movf	(0+(CheckOnceResult@71)+01h),w
	btfsc	status,2
	goto	u4251
	goto	u4250
u4251:
	goto	l4371
u4250:
	
l4369:	
	movlw	low(0FFh)
	movwf	(CheckOnceResult@69)
	goto	l1257
	
l4371:	
	movf	(CheckOnceResult@71),w
	movwf	(CheckOnceResult@69)
	
l1257:	
	movf	(CheckOnceResult@69),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u4261
	goto	u4260
u4261:
	goto	l4377
u4260:
	
l4373:	
	movf	(CheckOnceResult@69),w
	movwf	(_KeyMaxSub)
	
l4375:	
	movf	(CheckOnceResult@70),w
	movwf	(KeyHave@59)
	clrf	(KeyHave@59+1)
	movf	(CheckOnceResult@68),w
	fcall	_KeyHave
	goto	l4403
	
l4377:	
	incf	(_KeyCounter),f
	goto	l4403
	
l4381:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u4275
	movf	(CheckOnceResult@72),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u4275:
	skipnc
	goto	u4271
	goto	u4270
u4271:
	goto	l4387
u4270:
	goto	l4403
	
l4387:	
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
	goto	u4285
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u4285:
	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l4391
u4280:
	
l4389:	
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
	goto	u4295
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u4295:
	skipnc
	goto	u4291
	goto	u4290
u4291:
	goto	l4395
u4290:
	
l4391:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u4301
	goto	u4300
u4301:
	goto	l1263
u4300:
	
l4393:	
	movf	(CheckOnceResult@68),w
	fcall	_KeyClearOne
	goto	l4403
	
l4395:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l4399
	
l1263:	
	
l4399:	
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfss	status,2
	goto	u4311
	goto	u4310
u4311:
	goto	l4403
u4310:
	
l4401:	
	movf	(CheckOnceResult@70),w
	movwf	(KeyHave@59)
	clrf	(KeyHave@59+1)
	movf	(CheckOnceResult@68),w
	fcall	_KeyHave
	
l4403:	
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@68),f
	subwf	((CheckOnceResult@68)),w
	skipc
	goto	u4321
	goto	u4320
u4321:
	goto	l4339
u4320:
	
l1272:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text30
	
l1273:	
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
	
l2977:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text31
	
l2979:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	
l2981:	
	clrf	(_KeyData)	;volatile
	
l2983:	
	clrf	0+(_KeyData)+01h	;volatile
	
l2985:	
	btfss	(KeyHave@58),(3)&7
	goto	u1901
	goto	u1900
u1901:
	goto	l2989
u1900:
	
l2987:	
	movf	(KeyHave@59),w
	movwf	0+(_KeyData)+01h	;volatile
	goto	l1230
	
l2989:	
	movf	(KeyHave@59),w
	movwf	(_KeyData)	;volatile
	
l1230:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text31
	
l1233:	
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
	
l2843:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text32
	
l2845:	
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
	
l1208:	
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
;;		On entry : 0/0
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
	
l3429:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text33
	
l3431:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@78)
	
l3433:	
	movlw	low(04h)
	incf	(CheckKeyOldValue@F77),f
	subwf	((CheckKeyOldValue@F77)),w
	skipnc
	goto	u2691
	goto	u2690
u2691:
	goto	l3437
u2690:
	goto	l1279
	
l3437:	
	clrf	(CheckKeyOldValue@F77)
	
l3439:	
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
	
l3441:	
	movf	(CheckKeyOldValue@78),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l1281
u2700:
	
l3443:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
l3445:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3447:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l3451
u2710:
	
l3449:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u2721
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l1281
u2720:
	
l3451:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3453:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3455:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l3459
u2730:
	
l3457:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u2741
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l1281
u2740:
	
l3459:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3461:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3463:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l3467
u2750:
	
l3465:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u2761
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l1281
u2760:
	
l3467:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@79),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@79+1),w
	movwf	indf
	
l1281:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
l3469:	
	movlw	low(03h)
	incf	(CheckKeyOldValue@78),f
	subwf	((CheckKeyOldValue@78)),w
	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l3439
u2770:
	
l1291:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text33
	
l1279:	
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
;;		On exit  : 0/0
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
	
l2827:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text34
	
l2829:	
	movf	(KeyIsIn@45),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@46)
	
l2831:	
	btfss	(KeyIsIn@45),(3)&7
	goto	u1711
	goto	u1710
u1711:
	goto	l2835
u1710:
	
l2833:	
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@46),f
	goto	l2837
	
l2835:	
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@46),f
	
l2837:	
	movf	(KeyIsIn@46),w
	
l1205:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 189 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	189
global __ptext35
__ptext35:	;psect for function _Isr_Timer
psect	text35
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	189
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
	line	191
	
i1l3837:	
;main.c: 191: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l3851
u336_20:
	line	193
	
i1l3839:	
;main.c: 192: {
;main.c: 193: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	194
	
i1l3841:	
;main.c: 194: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u337_21
	goto	u337_20
u337_21:
	goto	i1l964
u337_20:
	line	196
	
i1l3843:	
;main.c: 195: {
;main.c: 196: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	197
	
i1l3845:	
;main.c: 197: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	198
	
i1l3847:	
;main.c: 198: if(++count1s >= 250)
	movlw	low(0FAh)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u338_21
	goto	u338_20
u338_21:
	goto	i1l964
u338_20:
	line	200
	
i1l3849:	
;main.c: 199: {
;main.c: 200: count1s = 0;
	clrf	(_count1s)
	goto	i1l964
	line	206
	
i1l3851:	
;main.c: 204: else
;main.c: 205: {
;main.c: 206: PIR1 = 0;
	clrf	(13)	;volatile
	line	209
	
i1l964:	
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
