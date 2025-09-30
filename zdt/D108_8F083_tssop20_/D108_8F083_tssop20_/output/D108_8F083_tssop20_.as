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
	global	_maxMotorStep
	global	_zeroFlag
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	45

;initializer for _maxMotorStep
	retlw	0
	retlw	02h

	line	51

;initializer for _zeroFlag
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
	global	_KeyData
	global	_KeyOldData
	global	_power_ad
	global	_keyCount
	global	_motorStep
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
	global	_bujinStartFlag
	global	_motorStopFlag
	global	_closeTime
	global	_longKeyFlag
	global	_powerFlag
	global	_bujinFlag
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
	global	_lowFanTime
	global	_lowBatTime
	global	_fanValue
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
_KeyFlag:
       ds      2

_workStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_KeyData:
       ds      2

_KeyOldData:
       ds      2

_power_ad:
       ds      2

_keyCount:
       ds      2

_motorStep:
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

_bujinStartFlag:
       ds      1

_motorStopFlag:
       ds      1

_closeTime:
       ds      1

_longKeyFlag:
       ds      1

_powerFlag:
       ds      1

_bujinFlag:
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

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	45
_maxMotorStep:
       ds      2

psect	dataBANK0
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	51
_zeroFlag:
       ds      1

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

_lowFanTime:
       ds      2

_lowBatTime:
       ds      2

_fanValue:
       ds      2

	file	"D108_8F083_tssop20_.as"
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

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+02Bh)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+02Ah)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
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
	global	bujinCtr@tempStep
bujinCtr@tempStep:	; 1 bytes @ 0x6
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
;!    Data        3
;!    BSS         88
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      12
;!    BANK0            80     34      79
;!    BANK1            80      4      49
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _workCtr->_ADC_Sample
;!    _workCtr->_bujinCtr
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
;! (2) _bujinCtr                                             5     5      0      68
;!                                              2 COMMON     5     5      0
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
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               50      0       0       7        0.0%
;!BITBANK2            50      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      4      31       6       61.3%
;!BITBANK1            50      0       0       5        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     22      4F       4       98.8%
;!BITBANK0            50      0       0       3        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      8       C       1       85.7%
;!BITCOMMON            E      0       1       0        7.1%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      8C       9        0.0%
;!ABS                  0      0      8C       8        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 828 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	828
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	828
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	830
	
l4811:	
;main.c: 830: Init_System();
	fcall	_Init_System
	line	831
	
l4813:	
;main.c: 831: firstLock = 1;
	clrf	(_firstLock)^080h
	incf	(_firstLock)^080h,f
	line	832
	
l4815:	
;main.c: 832: firstTime = 200;
	movlw	low(0C8h)
	movwf	(_firstTime)^080h
	line	835
	
l4817:	
;main.c: 834: {
;main.c: 835: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u5101
	goto	u5100
u5101:
	goto	l4817
u5100:
	line	837
	
l4819:	
;main.c: 836: {
;main.c: 837: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	838
# 838 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
clrwdt ;# 
psect	maintext
	line	840
	
l4821:	
;main.c: 840: CheckTouchKey();
	fcall	_CheckTouchKey
	line	841
	
l4823:	
;main.c: 841: chrgCtr();
	fcall	_chrgCtr
	line	842
	
l4825:	
;main.c: 842: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	843
	
l4827:	
;main.c: 843: KeyServer();
	fcall	_KeyServer
	line	844
	
l4829:	
;main.c: 844: workCtr();
	fcall	_workCtr
	line	845
	
l4831:	
;main.c: 845: if(firstTime == 0 && chrgFlag == 0 && workStep == 0 && wuhuaFlag == 0 && powerFlag == 0 && keyCount == 0 && bujinFlag == 0 && shanshuoTime == 0 && shanshuoTime2 == 0)
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstTime)^080h),w
	btfss	status,2
	goto	u5111
	goto	u5110
u5111:
	goto	l4817
u5110:
	
l4833:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u5121
	goto	u5120
u5121:
	goto	l4817
u5120:
	
l4835:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u5131
	goto	u5130
u5131:
	goto	l4817
u5130:
	
l4837:	
	movf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u5141
	goto	u5140
u5141:
	goto	l4817
u5140:
	
l4839:	
	movf	((_powerFlag)),w
	btfss	status,2
	goto	u5151
	goto	u5150
u5151:
	goto	l4817
u5150:
	
l4841:	
	movf	((_keyCount)),w
iorwf	((_keyCount+1)),w
	btfss	status,2
	goto	u5161
	goto	u5160
u5161:
	goto	l4817
u5160:
	
l4843:	
	movf	((_bujinFlag)),w
	btfss	status,2
	goto	u5171
	goto	u5170
u5171:
	goto	l4817
u5170:
	
l4845:	
	movf	((_shanshuoTime)),w
iorwf	((_shanshuoTime+1)),w
	btfss	status,2
	goto	u5181
	goto	u5180
u5181:
	goto	l4817
u5180:
	
l4847:	
	movf	((_shanshuoTime2)),w
iorwf	((_shanshuoTime2+1)),w
	btfss	status,2
	goto	u5191
	goto	u5190
u5191:
	goto	l4817
u5190:
	line	847
	
l4849:	
;main.c: 846: {
;main.c: 847: WorkSleep();
	fcall	_WorkSleep
	goto	l4817
	global	start
	ljmp	start
	opt stack 0
	line	851
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 771 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	771
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	771
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	773
	
l4733:	
;main.c: 773: test_adc = ADC_Sample(31, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(01Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	774
	
l4735:	
;main.c: 774: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u4981
	goto	u4980
u4981:
	goto	l4741
u4980:
	line	778
	
l4737:	
;main.c: 775: {
;main.c: 776: volatile unsigned long power_temp;
;main.c: 778: power_temp = (unsigned long)(((4096UL*1.2*1000))/adresult);
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

	line	779
	
l4739:	
;main.c: 779: power_ad = (unsigned int)(power_temp);
	movf	(workCtr@power_temp+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_power_ad+1)	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movf	(workCtr@power_temp)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_power_ad)	;volatile
	line	781
	
l4741:	
;main.c: 780: }
;main.c: 781: if(workStep == 2 && power_ad < 3300)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u4991
	goto	u4990
u4991:
	goto	l4751
u4990:
	
l4743:	
	movlw	0Ch
	subwf	(_power_ad+1),w	;volatile
	movlw	0E4h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u5001
	goto	u5000
u5001:
	goto	l4751
u5000:
	line	783
	
l4745:	
;main.c: 782: {
;main.c: 783: if(++lowFanTime > 2000)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_lowFanTime)^080h,f
	skipnz
	incf	(_lowFanTime+1)^080h,f
	movlw	07h
	subwf	((_lowFanTime+1)^080h),w
	movlw	0D1h
	skipnz
	subwf	((_lowFanTime)^080h),w
	skipc
	goto	u5011
	goto	u5010
u5011:
	goto	l4753
u5010:
	line	785
	
l4747:	
;main.c: 784: {
;main.c: 785: lowFanTime = 0;
	clrf	(_lowFanTime)^080h
	clrf	(_lowFanTime+1)^080h
	line	786
	
l4749:	
;main.c: 786: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l4753
	line	791
	
l4751:	
;main.c: 789: else
;main.c: 790: {
;main.c: 791: lowFanTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_lowFanTime)^080h
	clrf	(_lowFanTime+1)^080h
	line	793
	
l4753:	
;main.c: 792: }
;main.c: 793: if(power_ad < 2900)
	movlw	0Bh
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_power_ad+1),w	;volatile
	movlw	054h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u5021
	goto	u5020
u5021:
	goto	l4761
u5020:
	line	795
	
l4755:	
;main.c: 794: {
;main.c: 795: if(++lowBatTime > 1000)
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
	goto	u5031
	goto	u5030
u5031:
	goto	l4763
u5030:
	line	797
	
l4757:	
;main.c: 796: {
;main.c: 797: lowBatTime = 0;
	clrf	(_lowBatTime)^080h
	clrf	(_lowBatTime+1)^080h
	line	798
	
l4759:	
;main.c: 798: lowBatLock = 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowBatLock)
	incf	(_lowBatLock),f
	line	799
;main.c: 799: workStep = 0;
	clrf	(_workStep)
	line	800
;main.c: 800: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	line	801
;main.c: 801: bujinFlag = 0;
	clrf	(_bujinFlag)
	goto	l4763
	line	806
	
l4761:	
;main.c: 804: else
;main.c: 805: {
;main.c: 806: lowBatTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_lowBatTime)^080h
	clrf	(_lowBatTime+1)^080h
	line	808
	
l4763:	
;main.c: 807: }
;main.c: 808: if(firstTime > 0)
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstTime)^080h),w
	btfsc	status,2
	goto	u5041
	goto	u5040
u5041:
	goto	l4771
u5040:
	line	810
	
l4765:	
;main.c: 809: {
;main.c: 810: firstTime--;
	decf	(_firstTime)^080h,f
	line	811
	
l4767:	
;main.c: 811: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	812
	
l4769:	
;main.c: 812: PORTA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	813
;main.c: 813: }
	goto	l1138
	line	816
	
l4771:	
;main.c: 814: else
;main.c: 815: {
;main.c: 816: keyLedCtr();
	fcall	_keyLedCtr
	line	817
;main.c: 817: fanCtr();
	fcall	_fanCtr
	line	818
;main.c: 818: wuhuaCtr();
	fcall	_wuhuaCtr
	line	819
	
l4773:	
;main.c: 819: bujinCtr();
	fcall	_bujinCtr
	line	823
	
l1138:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_wuhuaCtr

;; *************** function _wuhuaCtr *****************
;; Defined at:
;;		line 597 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	597
global __ptext2
__ptext2:	;psect for function _wuhuaCtr
psect	text2
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	597
	global	__size_of_wuhuaCtr
	__size_of_wuhuaCtr	equ	__end_of_wuhuaCtr-_wuhuaCtr
	
_wuhuaCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _wuhuaCtr: [wreg+status,2+status,0+pclath+cstack]
	line	599
	
l4437:	
;main.c: 599: if(count1s == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_count1s)),w
	btfss	status,2
	goto	u4491
	goto	u4490
u4491:
	goto	l4455
u4490:
	line	601
	
l4439:	
;main.c: 600: {
;main.c: 601: if(++count10s >= 20)
	movlw	low(014h)
	incf	(_count10s),f
	subwf	((_count10s)),w
	skipc
	goto	u4501
	goto	u4500
u4501:
	goto	l4443
u4500:
	line	603
	
l4441:	
;main.c: 602: {
;main.c: 603: count10s = 0;
	clrf	(_count10s)
	line	605
	
l4443:	
;main.c: 604: }
;main.c: 605: if(workStep == 0 && wuhuaFlag == 0 && powerFlag > 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u4511
	goto	u4510
u4511:
	goto	l4453
u4510:
	
l4445:	
	movf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u4521
	goto	u4520
u4521:
	goto	l4453
u4520:
	
l4447:	
	movf	((_powerFlag)),w
	btfsc	status,2
	goto	u4531
	goto	u4530
u4531:
	goto	l4453
u4530:
	line	607
	
l4449:	
;main.c: 606: {
;main.c: 607: if(++closeTime > 200)
	movlw	low(0C9h)
	incf	(_closeTime),f
	subwf	((_closeTime)),w
	skipc
	goto	u4541
	goto	u4540
u4541:
	goto	l4455
u4540:
	line	609
	
l4451:	
;main.c: 608: {
;main.c: 609: closeTime = 0;
	clrf	(_closeTime)
	line	610
;main.c: 610: powerFlag = 0;
	clrf	(_powerFlag)
	goto	l4455
	line	615
	
l4453:	
;main.c: 613: else
;main.c: 614: {
;main.c: 615: closeTime = 0;
	clrf	(_closeTime)
	line	618
	
l4455:	
;main.c: 616: }
;main.c: 617: }
;main.c: 618: if(wuhuaFlag == 1 || (wuhuaFlag == 2 && count10s < 10))
		decf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l4461
u4550:
	
l4457:	
		movlw	2
	xorwf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u4561
	goto	u4560
u4561:
	goto	l4463
u4560:
	
l4459:	
	movlw	low(0Ah)
	subwf	(_count10s),w
	skipnc
	goto	u4571
	goto	u4570
u4571:
	goto	l4463
u4570:
	line	620
	
l4461:	
;main.c: 619: {
;main.c: 620: pwmInit();
	fcall	_pwmInit
	line	649
;main.c: 649: }
	goto	l1085
	line	652
	
l4463:	
;main.c: 650: else
;main.c: 651: {
;main.c: 652: pwmStop();
	fcall	_pwmStop
	line	654
	
l1085:	
	return
	opt stack 0
GLOBAL	__end_of_wuhuaCtr
	__end_of_wuhuaCtr:
	signat	_wuhuaCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 513 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	513
global __ptext3
__ptext3:	;psect for function _pwmStop
psect	text3
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	513
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [status,2]
	line	515
	
l4175:	
;main.c: 515: PWMD3L = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(156)^080h	;volatile
	line	516
	
l4177:	
;main.c: 516: PWMCON0 &= 0xF7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(21)+(3/8),(3)&7	;volatile
	line	517
	
l4179:	
;main.c: 517: PORTA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(3/8),(3)&7	;volatile
	line	518
	
l1051:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 501 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	501
global __ptext4
__ptext4:	;psect for function _pwmInit
psect	text4
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	501
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2+status,0]
	line	504
	
l4165:	
;main.c: 504: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	505
	
l4167:	
;main.c: 505: PWMTL = 73;
	movlw	low(049h)
	movwf	(23)	;volatile
	line	506
	
l4169:	
;main.c: 506: PWMD23H = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	507
;main.c: 507: PWMD3L = 32;
	movlw	low(020h)
	movwf	(156)^080h	;volatile
	line	508
;main.c: 508: PWMCON1 = 0xC0;
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(22)	;volatile
	line	509
	
l4171:	
;main.c: 509: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	510
	
l4173:	
;main.c: 510: PWMCON0 |= 0x28;
	movlw	low(028h)
	iorwf	(21),f	;volatile
	line	511
	
l1048:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_keyLedCtr

;; *************** function _keyLedCtr *****************
;; Defined at:
;;		line 424 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	424
global __ptext5
__ptext5:	;psect for function _keyLedCtr
psect	text5
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	424
	global	__size_of_keyLedCtr
	__size_of_keyLedCtr	equ	__end_of_keyLedCtr-_keyLedCtr
	
_keyLedCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyLedCtr: [wreg+status,2+status,0+pclath+cstack]
	line	426
	
l4341:	
;main.c: 426: if(shanshuoTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_shanshuoTime)),w
iorwf	((_shanshuoTime+1)),w
	btfsc	status,2
	goto	u4261
	goto	u4260
u4261:
	goto	l4349
u4260:
	line	428
	
l4343:	
;main.c: 427: {
;main.c: 428: shanshuoTime--;
	movlw	01h
	subwf	(_shanshuoTime),f
	movlw	0
	skipc
	decf	(_shanshuoTime+1),f
	subwf	(_shanshuoTime+1),f
	line	429
	
l4345:	
;main.c: 429: if((shanshuoTime % 150) < 75)
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
	goto	u4271
	goto	u4270
u4271:
	goto	l1022
u4270:
	line	431
	
l4347:	
;main.c: 430: {
;main.c: 431: PORTC |= 0x01;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(262)^0100h+(0/8),(0)&7	;volatile
	line	432
;main.c: 432: }
	goto	l4353
	line	433
	
l1022:	
	line	435
;main.c: 433: else
;main.c: 434: {
;main.c: 435: PORTC &= 0xFE;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(262)^0100h+(0/8),(0)&7	;volatile
	goto	l4353
	line	438
	
l4349:	
;main.c: 438: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4281
	goto	u4280
u4281:
	goto	l4347
u4280:
	goto	l1022
	line	447
	
l4353:	
;main.c: 445: }
;main.c: 447: if(shanshuoTime2 > 0)
	bcf	status, 6	;RP1=0, select bank0
	movf	((_shanshuoTime2)),w
iorwf	((_shanshuoTime2+1)),w
	btfsc	status,2
	goto	u4291
	goto	u4290
u4291:
	goto	l4361
u4290:
	line	449
	
l4355:	
;main.c: 448: {
;main.c: 449: shanshuoTime2--;
	movlw	01h
	subwf	(_shanshuoTime2),f
	movlw	0
	skipc
	decf	(_shanshuoTime2+1),f
	subwf	(_shanshuoTime2+1),f
	line	450
	
l4357:	
;main.c: 450: if((shanshuoTime2 % 150) < 75)
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
	goto	u4301
	goto	u4300
u4301:
	goto	l1028
u4300:
	line	452
	
l4359:	
;main.c: 451: {
;main.c: 452: PORTC |= 0x02;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(262)^0100h+(1/8),(1)&7	;volatile
	line	453
;main.c: 453: }
	goto	l4365
	line	454
	
l1028:	
	line	456
;main.c: 454: else
;main.c: 455: {
;main.c: 456: PORTC &= 0xFD;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(262)^0100h+(1/8),(1)&7	;volatile
	goto	l4365
	line	459
	
l4361:	
;main.c: 459: else if(wuhuaFlag > 0)
	movf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u4311
	goto	u4310
u4311:
	goto	l4359
u4310:
	goto	l1028
	line	467
	
l4365:	
;main.c: 466: }
;main.c: 467: if(shanshuoTime3 > 0)
	bcf	status, 6	;RP1=0, select bank0
	movf	((_shanshuoTime3)),w
iorwf	((_shanshuoTime3+1)),w
	btfsc	status,2
	goto	u4321
	goto	u4320
u4321:
	goto	l4373
u4320:
	line	469
	
l4367:	
;main.c: 468: {
;main.c: 469: shanshuoTime3--;
	movlw	01h
	subwf	(_shanshuoTime3),f
	movlw	0
	skipc
	decf	(_shanshuoTime3+1),f
	subwf	(_shanshuoTime3+1),f
	line	470
	
l4369:	
;main.c: 470: if((shanshuoTime3 % 150) < 75)
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
	goto	u4331
	goto	u4330
u4331:
	goto	l1034
u4330:
	line	472
	
l4371:	
;main.c: 471: {
;main.c: 472: PORTA |= 0x01;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(0/8),(0)&7	;volatile
	line	473
;main.c: 473: }
	goto	l1045
	line	474
	
l1034:	
	line	476
;main.c: 474: else
;main.c: 475: {
;main.c: 476: PORTA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(0/8),(0)&7	;volatile
	goto	l1045
	line	479
	
l4373:	
;main.c: 479: else if(bujinFlag)
	movf	((_bujinFlag)),w
	btfsc	status,2
	goto	u4341
	goto	u4340
u4341:
	goto	l4377
u4340:
	goto	l1034
	line	483
	
l4377:	
;main.c: 483: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l4371
u4350:
	line	485
	
l4379:	
;main.c: 484: {
;main.c: 485: if(chrgFullFlag || count1s < 50)
	movf	((_chrgFullFlag)),w
	btfss	status,2
	goto	u4361
	goto	u4360
u4361:
	goto	l1034
u4360:
	
l4381:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u4371
	goto	u4370
u4371:
	goto	l4371
u4370:
	goto	l1034
	line	499
	
l1045:	
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
	
l4235:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u4131
	goto	u4130
u4131:
	goto	l4251
u4130:
	line	14
	
l4237:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l4241
	line	16
	
l4239:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l4241:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l4239
u4140:
	line	20
	
l4243:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u4155
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u4155:
	skipc
	goto	u4151
	goto	u4150
u4151:
	goto	l4247
u4150:
	line	21
	
l4245:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l4247:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l4249:	
	decfsz	(___lwmod@counter),f
	goto	u4161
	goto	u4160
u4161:
	goto	l4243
u4160:
	line	25
	
l4251:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1726:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_fanCtr

;; *************** function _fanCtr *****************
;; Defined at:
;;		line 538 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	538
global __ptext7
__ptext7:	;psect for function _fanCtr
psect	text7
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	538
	global	__size_of_fanCtr
	__size_of_fanCtr	equ	__end_of_fanCtr-_fanCtr
	
_fanCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _fanCtr: [wreg+status,2+status,0+pclath+cstack]
	line	540
	
l4383:	
;main.c: 540: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4381
	goto	u4380
u4381:
	goto	l4431
u4380:
	line	542
	
l4385:	
;main.c: 541: {
;main.c: 542: PORTA |= 0x02;
	bsf	(134)^080h+(1/8),(1)&7	;volatile
	line	543
	
l4387:	
;main.c: 543: unsigned char maxFanValue = 52;
	movlw	low(034h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fanCtr@maxFanValue)
	line	544
	
l4389:	
;main.c: 544: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u4391
	goto	u4390
u4391:
	goto	l1061
u4390:
	line	546
	
l4391:	
;main.c: 545: {
;main.c: 546: maxFanValue = 40;
	movlw	low(028h)
	movwf	(fanCtr@maxFanValue)
	line	547
	
l1061:	
	line	548
;main.c: 547: }
;main.c: 548: if(power_ad < 3150)
	movlw	0Ch
	subwf	(_power_ad+1),w	;volatile
	movlw	04Eh
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u4401
	goto	u4400
u4401:
	goto	l4395
u4400:
	line	550
	
l4393:	
;main.c: 549: {
;main.c: 550: maxFanValue = 32;
	movlw	low(020h)
	movwf	(fanCtr@maxFanValue)
	line	552
	
l4395:	
;main.c: 551: }
;main.c: 552: if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u4411
	goto	u4410
u4411:
	goto	l4399
u4410:
	line	554
	
l4397:	
;main.c: 553: {
;main.c: 554: maxFanValue = 10;
	movlw	low(0Ah)
	movwf	(fanCtr@maxFanValue)
	line	556
	
l4399:	
;main.c: 555: }
;main.c: 556: test_adc = ADC_Sample(2, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	557
	
l4401:	
;main.c: 557: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u4421
	goto	u4420
u4421:
	goto	l4411
u4420:
	line	560
	
l4403:	
;main.c: 558: {
;main.c: 559: volatile unsigned long fan_temp;
;main.c: 560: if(power_ad > 0)
	movf	((_power_ad)),w	;volatile
iorwf	((_power_ad+1)),w	;volatile
	btfsc	status,2
	goto	u4431
	goto	u4430
u4431:
	goto	l4411
u4430:
	line	562
	
l4405:	
;main.c: 561: {
;main.c: 562: fan_temp = ((unsigned long)1UL*adresult * power_ad)/4096;
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

	
l4407:	
	movlw	0Ch
u4445:
	clrc
	rrf	(fanCtr@fan_temp+3),f	;volatile
	rrf	(fanCtr@fan_temp+2),f	;volatile
	rrf	(fanCtr@fan_temp+1),f	;volatile
	rrf	(fanCtr@fan_temp),f	;volatile
	addlw	-1
	skipz
	goto	u4445

	line	563
	
l4409:	
;main.c: 563: fanValue = (unsigned int)(fan_temp);
	movf	(fanCtr@fan_temp+1),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fanValue+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(fanCtr@fan_temp),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fanValue)^080h
	line	566
	
l4411:	
;main.c: 564: }
;main.c: 565: }
;main.c: 566: if(fanValue > 1300)
	movlw	05h
	bsf	status, 5	;RP0=1, select bank1
	subwf	(_fanValue+1)^080h,w
	movlw	015h
	skipnz
	subwf	(_fanValue)^080h,w
	skipc
	goto	u4451
	goto	u4450
u4451:
	goto	l4419
u4450:
	line	568
	
l4413:	
;main.c: 567: {
;main.c: 568: if(++fanOverTime > 50)
	movlw	low(033h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_fanOverTime),f
	subwf	((_fanOverTime)),w
	skipc
	goto	u4461
	goto	u4460
u4461:
	goto	l4421
u4460:
	line	570
	
l4415:	
;main.c: 569: {
;main.c: 570: fanOverTime = 0;
	clrf	(_fanOverTime)
	line	571
;main.c: 571: workStep = 0;
	clrf	(_workStep)
	line	572
	
l4417:	
;main.c: 572: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	goto	l4421
	line	577
	
l4419:	
;main.c: 575: else
;main.c: 576: {
;main.c: 577: fanOverTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_fanOverTime)
	line	579
	
l4421:	
;main.c: 578: }
;main.c: 579: if(fanDuty < maxFanValue)
	movf	(fanCtr@maxFanValue),w
	subwf	(_fanDuty),w
	skipnc
	goto	u4471
	goto	u4470
u4471:
	goto	l4425
u4470:
	line	581
	
l4423:	
;main.c: 580: {
;main.c: 581: fanDuty++;
	incf	(_fanDuty),f
	line	582
;main.c: 582: }
	goto	l4429
	line	583
	
l4425:	
;main.c: 583: else if(fanDuty > maxFanValue)
	movf	(_fanDuty),w
	subwf	(fanCtr@maxFanValue),w
	skipnc
	goto	u4481
	goto	u4480
u4481:
	goto	l4429
u4480:
	line	585
	
l4427:	
;main.c: 584: {
;main.c: 585: fanDuty--;
	decf	(_fanDuty),f
	line	587
	
l4429:	
;main.c: 586: }
;main.c: 587: fanInit();
	fcall	_fanInit
	line	588
;main.c: 588: }
	goto	l1073
	line	591
	
l4431:	
;main.c: 589: else
;main.c: 590: {
;main.c: 591: fanStop();
	fcall	_fanStop
	line	592
	
l4433:	
;main.c: 592: fanDuty = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_fanDuty)
	line	593
	
l4435:	
;main.c: 593: PORTA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(1/8),(1)&7	;volatile
	line	595
	
l1073:	
	return
	opt stack 0
GLOBAL	__end_of_fanCtr
	__end_of_fanCtr:
	signat	_fanCtr,89
	global	_fanStop

;; *************** function _fanStop *****************
;; Defined at:
;;		line 531 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	531
global __ptext8
__ptext8:	;psect for function _fanStop
psect	text8
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	531
	global	__size_of_fanStop
	__size_of_fanStop	equ	__end_of_fanStop-_fanStop
	
_fanStop:	
;incstack = 0
	opt	stack 4
; Regs used in _fanStop: [status,2]
	line	533
	
l4193:	
;main.c: 533: PWMD4L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(27)	;volatile
	line	534
	
l4195:	
;main.c: 534: PWMCON0 &= 0xEF;
	bcf	(21)+(4/8),(4)&7	;volatile
	line	535
	
l4197:	
;main.c: 535: PORTA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(4/8),(4)&7	;volatile
	line	536
	
l1057:	
	return
	opt stack 0
GLOBAL	__end_of_fanStop
	__end_of_fanStop:
	signat	_fanStop,89
	global	_fanInit

;; *************** function _fanInit *****************
;; Defined at:
;;		line 520 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	520
global __ptext9
__ptext9:	;psect for function _fanInit
psect	text9
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	520
	global	__size_of_fanInit
	__size_of_fanInit	equ	__end_of_fanInit-_fanInit
	
_fanInit:	
;incstack = 0
	opt	stack 4
; Regs used in _fanInit: [wreg+status,2+status,0]
	line	523
	
l4181:	
;main.c: 523: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	524
	
l4183:	
;main.c: 524: PWMT4L = 73;
	movlw	low(049h)
	movwf	(28)	;volatile
	line	525
	
l4185:	
;main.c: 525: PWMD4L = fanDuty;
	movf	(_fanDuty),w
	movwf	(27)	;volatile
	line	526
	
l4187:	
;main.c: 526: PWMCON1 = 0xC0;
	movlw	low(0C0h)
	movwf	(22)	;volatile
	line	527
	
l4189:	
;main.c: 527: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	528
	
l4191:	
;main.c: 528: PWMCON0 |= 0x30;
	movlw	low(030h)
	iorwf	(21),f	;volatile
	line	529
	
l1054:	
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
	
l4199:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	120
	
l1388:	
	line	121
	btfss	(___lmul@multiplier),(0)&7
	goto	u4021
	goto	u4020
u4021:
	goto	l4203
u4020:
	line	122
	
l4201:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4031
	addwf	(___lmul@product+1),f
u4031:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4032
	addwf	(___lmul@product+2),f
u4032:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4033
	addwf	(___lmul@product+3),f
u4033:

	line	123
	
l4203:	
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	124
	
l4205:	
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
	goto	u4041
	goto	u4040
u4041:
	goto	l1388
u4040:
	line	128
	
l4207:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	129
	
l1391:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 325 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	325
global __ptext11
__ptext11:	;psect for function _ADC_Sample
psect	text11
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	325
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	327
	
l4093:	
;main.c: 327: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	328
	
l4095:	
;main.c: 328: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	329
;main.c: 329: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	331
	
l4097:	
;main.c: 331: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u3871
	goto	u3870
u3871:
	goto	l4103
u3870:
	
l4099:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l4103
u3880:
	line	334
	
l4101:	
;main.c: 332: {
;main.c: 334: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	335
;main.c: 335: _delay((unsigned long)((100)*(8000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
movwf	((??_ADC_Sample+0)+0),f
	u5207:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u5207
	nop
opt asmopt_pop

	line	336
;main.c: 336: }
	goto	l4105
	line	338
	
l4103:	
;main.c: 337: else
;main.c: 338: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	340
	
l4105:	
;main.c: 340: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u3891
	goto	u3890
u3891:
	goto	l4111
u3890:
	line	342
	
l4107:	
;main.c: 341: {
;main.c: 342: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	343
	
l4109:	
;main.c: 343: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	345
	
l4111:	
	line	346
	
l4113:	
;main.c: 346: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	348
	
l4119:	
;main.c: 347: {
;main.c: 348: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u3905:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u3905
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	349
# 349 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
nop ;# 
	line	350
# 350 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
nop ;# 
	line	351
# 351 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
nop ;# 
	line	352
# 352 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
nop ;# 
psect	text11
	line	353
	
l4121:	
;main.c: 353: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	355
	
l4123:	
;main.c: 355: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	356
;main.c: 356: while (GODONE)
	goto	l999
	
l1000:	
	line	358
;main.c: 357: {
;main.c: 358: _delay((unsigned long)((2)*(8000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	360
;main.c: 360: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u3911
	goto	u3910
u3911:
	goto	l999
u3910:
	line	361
	
l4125:	
;main.c: 361: return 0;
	movlw	low(0)
	goto	l1002
	line	362
	
l999:	
	line	356
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3921
	goto	u3920
u3921:
	goto	l1000
u3920:
	line	364
	
l4129:	
;main.c: 362: }
;main.c: 364: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l4131:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	366
	
l4133:	
;main.c: 366: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l4137
u3930:
	line	368
	
l4135:	
;main.c: 367: {
;main.c: 368: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	369
;main.c: 369: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	370
;main.c: 370: }
	goto	l1005
	line	371
	
l4137:	
;main.c: 371: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u3945
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u3945:
	skipnc
	goto	u3941
	goto	u3940
u3941:
	goto	l4141
u3940:
	line	372
	
l4139:	
;main.c: 372: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l1005
	line	373
	
l4141:	
;main.c: 373: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u3955
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u3955:
	skipnc
	goto	u3951
	goto	u3950
u3951:
	goto	l1005
u3950:
	line	374
	
l4143:	
;main.c: 374: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	376
	
l1005:	
;main.c: 376: adsum += ad_temp;
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
	goto	u3961
	addwf	(ADC_Sample@adsum+1),f	;volatile
u3961:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3962
	addwf	(ADC_Sample@adsum+2),f	;volatile
u3962:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3963
	addwf	(ADC_Sample@adsum+3),f	;volatile
u3963:

	line	346
	
l4145:	
	incf	(ADC_Sample@i),f
	
l4147:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3971
	goto	u3970
u3971:
	goto	l4119
u3970:
	line	378
	
l4149:	
;main.c: 377: }
;main.c: 378: adsum -= admax;
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
	goto	u3985
	goto	u3986
u3985:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3986:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3987
	goto	u3988
u3987:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3988:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3989
	goto	u3980
u3989:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3980:

	line	379
;main.c: 379: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u3995
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u3995
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u3995
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u3995:
	skipc
	goto	u3991
	goto	u3990
u3991:
	goto	l1009
u3990:
	line	380
	
l4151:	
;main.c: 380: adsum -= admin;
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
	goto	u4005
	goto	u4006
u4005:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u4006:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u4007
	goto	u4008
u4007:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u4008:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u4009
	goto	u4000
u4009:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u4000:

	goto	l4153
	line	381
	
l1009:	
	line	382
;main.c: 381: else
;main.c: 382: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	384
	
l4153:	
;main.c: 384: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u4015:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u4010:
	addlw	-1
	skipz
	goto	u4015
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	386
	
l4155:	
;main.c: 386: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	387
	
l4157:	
;main.c: 387: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	388
	
l4159:	
;main.c: 388: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	389
	
l4161:	
;main.c: 389: return 0xA5;
	movlw	low(0A5h)
	line	391
	
l1002:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_bujinCtr

;; *************** function _bujinCtr *****************
;; Defined at:
;;		line 656 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempStep        1    6[COMMON] unsigned char 
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
;;      Temps:          4       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	656
global __ptext12
__ptext12:	;psect for function _bujinCtr
psect	text12
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	656
	global	__size_of_bujinCtr
	__size_of_bujinCtr	equ	__end_of_bujinCtr-_bujinCtr
	
_bujinCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _bujinCtr: [wreg-fsr0h+status,2+status,0]
	line	658
	
l4465:	
;main.c: 658: if(bujinFlag || motorStopFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_bujinFlag)),w
	btfss	status,2
	goto	u4581
	goto	u4580
u4581:
	goto	l4469
u4580:
	
l4467:	
	movf	((_motorStopFlag)),w
	btfsc	status,2
	goto	u4591
	goto	u4590
u4591:
	goto	l4523
u4590:
	line	661
	
l4469:	
;main.c: 659: {
;main.c: 661: if(bujinStartFlag && zeroFlag)
	movf	((_bujinStartFlag)),w
	btfsc	status,2
	goto	u4601
	goto	u4600
u4601:
	goto	l1091
u4600:
	
l4471:	
	movf	((_zeroFlag)),w
	btfsc	status,2
	goto	u4611
	goto	u4610
u4611:
	goto	l1091
u4610:
	line	663
	
l4473:	
;main.c: 662: {
;main.c: 663: bujinStartFlag = 0;
	clrf	(_bujinStartFlag)
	line	664
	
l4475:	
;main.c: 664: if(bujinFlag == 1)
		decf	((_bujinFlag)),w
	btfss	status,2
	goto	u4621
	goto	u4620
u4621:
	goto	l4481
u4620:
	line	666
	
l4477:	
;main.c: 665: {
;main.c: 666: maxMotorStep = 512;
	movlw	0
	movwf	(_maxMotorStep)
	movlw	02h
	movwf	((_maxMotorStep))+1
	line	667
	
l4479:	
;main.c: 667: motorStopFlag = 1;
	clrf	(_motorStopFlag)
	incf	(_motorStopFlag),f
	line	668
;main.c: 668: }
	goto	l1093
	line	669
	
l4481:	
;main.c: 669: else if(bujinFlag == 2)
		movlw	2
	xorwf	((_bujinFlag)),w
	btfss	status,2
	goto	u4631
	goto	u4630
u4631:
	goto	l4487
u4630:
	line	671
	
l4483:	
;main.c: 670: {
;main.c: 671: maxMotorStep = 1024;
	movlw	0
	movwf	(_maxMotorStep)
	movlw	04h
	movwf	((_maxMotorStep))+1
	goto	l4479
	line	674
	
l4487:	
;main.c: 674: else if(bujinFlag == 3)
		movlw	3
	xorwf	((_bujinFlag)),w
	btfss	status,2
	goto	u4641
	goto	u4640
u4641:
	goto	l1093
u4640:
	line	676
	
l4489:	
;main.c: 675: {
;main.c: 676: maxMotorStep = 1696;
	movlw	0A0h
	movwf	(_maxMotorStep)
	movlw	06h
	movwf	((_maxMotorStep))+1
	goto	l4479
	line	679
	
l1093:	
;main.c: 678: }
;main.c: 679: motorStep = maxMotorStep/2;
	movf	(_maxMotorStep+1),w
	movwf	(_motorStep+1)
	movf	(_maxMotorStep),w
	movwf	(_motorStep)
	
l4493:	
	clrc
	rrf	(_motorStep+1),f
	rrf	(_motorStep),f
	line	680
	
l1091:	
	line	681
;main.c: 680: }
;main.c: 681: if(motorStep == maxMotorStep/2 || motorStep == ((maxMotorStep/2) + maxMotorStep))
	movf	(_maxMotorStep+1),w
	movwf	(??_bujinCtr+0)+0+1
	movf	(_maxMotorStep),w
	movwf	(??_bujinCtr+0)+0
	clrc
	rrf	(??_bujinCtr+0)+1,f
	rrf	(??_bujinCtr+0)+0,f
	movf	(_motorStep+1),w
	xorwf	1+(??_bujinCtr+0)+0,w
	skipz
	goto	u4655
	movf	(_motorStep),w
	xorwf	0+(??_bujinCtr+0)+0,w
u4655:

	skipnz
	goto	u4651
	goto	u4650
u4651:
	goto	l1099
u4650:
	
l4495:	
	movf	(_maxMotorStep+1),w
	movwf	(??_bujinCtr+0)+0+1
	movf	(_maxMotorStep),w
	movwf	(??_bujinCtr+0)+0
	clrc
	rrf	(??_bujinCtr+0)+1,f
	rrf	(??_bujinCtr+0)+0,f
	movf	(_maxMotorStep),w
	addwf	0+(??_bujinCtr+0)+0,w
	movwf	(??_bujinCtr+2)+0
	movf	(_maxMotorStep+1),w
	skipnc
	incf	(_maxMotorStep+1),w
	addwf	1+(??_bujinCtr+0)+0,w
	movwf	1+(??_bujinCtr+2)+0
	movf	(_motorStep+1),w
	xorwf	1+(??_bujinCtr+2)+0,w
	skipz
	goto	u4665
	movf	(_motorStep),w
	xorwf	0+(??_bujinCtr+2)+0,w
u4665:

	skipz
	goto	u4661
	goto	u4660
u4661:
	goto	l4501
u4660:
	
l1099:	
	line	683
;main.c: 682: {
;main.c: 683: zeroFlag = 1;
	clrf	(_zeroFlag)
	incf	(_zeroFlag),f
	line	684
	
l4497:	
;main.c: 684: if(bujinFlag == 0)
	movf	((_bujinFlag)),w
	btfss	status,2
	goto	u4671
	goto	u4670
u4671:
	goto	l4503
u4670:
	line	686
	
l4499:	
;main.c: 685: {
;main.c: 686: motorStopFlag = 0;
	clrf	(_motorStopFlag)
	goto	l4503
	line	691
	
l4501:	
;main.c: 689: else
;main.c: 690: {
;main.c: 691: zeroFlag = 0;
	clrf	(_zeroFlag)
	line	695
	
l4503:	
;main.c: 692: }
;main.c: 695: if(++motorStep >= (maxMotorStep*2))
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
	goto	u4685
	movf	0+(??_bujinCtr+0)+0,w
	subwf	((_motorStep)),w
u4685:
	skipc
	goto	u4681
	goto	u4680
u4681:
	goto	l4507
u4680:
	line	697
	
l4505:	
;main.c: 696: {
;main.c: 697: motorStep = 0;
	clrf	(_motorStep)
	clrf	(_motorStep+1)
	line	699
	
l4507:	
;main.c: 698: }
;main.c: 699: unsigned char tempStep = motorStep % 8;
	movf	(_motorStep),w
	movwf	(bujinCtr@tempStep)
	
l4509:	
	movlw	low(07h)
	andwf	(bujinCtr@tempStep),f
	line	700
	
l4511:	
;main.c: 700: if(motorStep < maxMotorStep)
	movf	(_maxMotorStep+1),w
	subwf	(_motorStep+1),w
	skipz
	goto	u4695
	movf	(_maxMotorStep),w
	subwf	(_motorStep),w
u4695:
	skipnc
	goto	u4691
	goto	u4690
u4691:
	goto	l4521
u4690:
	goto	l4517
	line	705
;main.c: 704: {
;main.c: 705: case 0:
	
l1105:	
	line	706
;main.c: 706: RA5 = 1;RA6 = 0;RA7 = 0;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	707
;main.c: 707: break;
	goto	l1126
	line	708
;main.c: 708: case 1:
	
l1107:	
	line	709
;main.c: 709: RA5 = 1;RA6 = 1;RA7 = 0;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	bsf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	710
;main.c: 710: break;
	goto	l1126
	line	711
;main.c: 711: case 2:
	
l1108:	
	line	712
;main.c: 712: RA5 = 0;RA6 = 1;RA7 = 0;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bsf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	713
;main.c: 713: break;
	goto	l1126
	line	714
;main.c: 714: case 3:
	
l1109:	
	line	715
;main.c: 715: RA5 = 0;RA6 = 1;RA7 = 1;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bsf	(1078/8)^080h,(1078)&7	;volatile
	bsf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	716
;main.c: 716: break;
	goto	l1126
	line	717
;main.c: 717: case 4:
	
l1110:	
	line	718
;main.c: 718: RA5 = 0;RA6 = 0;RA7 = 1;RB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bsf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	719
;main.c: 719: break;
	goto	l1126
	line	720
;main.c: 720: case 5:
	
l1111:	
	line	721
;main.c: 721: RA5 = 0;RA6 = 0;RA7 = 1;RB7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bsf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	722
;main.c: 722: break;
	goto	l1126
	line	723
;main.c: 723: case 6:
	
l1112:	
	line	724
;main.c: 724: RA5 = 0;RA6 = 0;RA7 = 0;RB7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	725
;main.c: 725: break;
	goto	l1126
	line	726
;main.c: 726: case 7:
	
l1113:	
	line	727
;main.c: 727: RA5 = 1;RA6 = 0;RA7 = 0;RB7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	bcf	(1078/8)^080h,(1078)&7	;volatile
	bcf	(1079/8)^080h,(1079)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	728
;main.c: 728: break;
	goto	l1126
	line	703
	
l4517:	
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
goto l1126
movlw high(S4891)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S4891)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S4891:
	ljmp	l1105
	ljmp	l1107
	ljmp	l1108
	ljmp	l1109
	ljmp	l1110
	ljmp	l1111
	ljmp	l1112
	ljmp	l1113
psect	text12

	line	734
	
l4521:	
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
goto l1126
movlw high(S4893)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S4893)
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
S4893:
	ljmp	l1113
	ljmp	l1112
	ljmp	l1111
	ljmp	l1110
	ljmp	l1109
	ljmp	l1108
	ljmp	l1107
	ljmp	l1105
psect	text12

	line	765
	
l4523:	
;main.c: 763: else
;main.c: 764: {
;main.c: 765: PORTA &= 0x1F;
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	766
	
l4525:	
;main.c: 766: PORTB &= 0x7F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(7/8),(7)&7	;volatile
	line	768
	
l1126:	
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
	
l4685:	
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
	
l1731:	
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
	
l4645:	
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
	goto	u4871
	goto	u4870
u4871:
	goto	l4649
u4870:
	line	50
	
l4647:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l1622
	line	51
	
l4649:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u4885:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u4880:
	addlw	-1
	skipz
	goto	u4885
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l4651:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l4653:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l4655:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l4657:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l4659:	
	btfss	(___fttol@exp1),7
	goto	u4891
	goto	u4890
u4891:
	goto	l4669
u4890:
	line	57
	
l4661:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4901
	goto	u4900
u4901:
	goto	l4665
u4900:
	goto	l4647
	line	60
	
l4665:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l4667:	
	incfsz	(___fttol@exp1),f
	goto	u4911
	goto	u4910
u4911:
	goto	l4665
u4910:
	goto	l4677
	line	63
	
l4669:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u4921
	goto	u4920
u4921:
	goto	l4675
u4920:
	goto	l4647
	line	66
	
l4673:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	65
	
l4675:	
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u4931
	goto	u4930
u4931:
	goto	l4673
u4930:
	line	70
	
l4677:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u4941
	goto	u4940
u4941:
	goto	l4681
u4940:
	line	71
	
l4679:	
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
	
l4681:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l1622:	
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
	
l4605:	
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
	goto	u4831
	goto	u4830
u4831:
	goto	l4609
u4830:
	line	64
	
l4607:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1586
	line	65
	
l4609:	
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
	goto	u4841
	goto	u4840
u4841:
	goto	l1587
u4840:
	line	66
	
l4611:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1586
	
l1587:	
	line	67
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	68
	
l4613:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l4615:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l4617:	
	movf	0+(___ftdiv@f2)+02h,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l4619:	
	movlw	low(080h)
	andwf	(___ftdiv@sign),f
	line	72
	
l4621:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l4623:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l4625:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l4627:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l4629:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l4631:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4855
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4855
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4855:
	skipc
	goto	u4851
	goto	u4850
u4851:
	goto	l4637
u4850:
	line	80
	
l4633:	
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
	
l4635:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l4637:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	84
	
l4639:	
	decfsz	(___ftdiv@cntr),f
	goto	u4861
	goto	u4860
u4861:
	goto	l4631
u4860:
	line	85
	
l4641:	
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
	
l1586:	
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
	
l4211:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u4051
	goto	u4050
u4051:
	goto	l1533
u4050:
	
l4213:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l4217
u4060:
	
l1533:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l1534
	line	67
	
l4215:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l4217:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4071
	goto	u4070
u4071:
	goto	l4215
u4070:
	goto	l4221
	line	71
	
l4219:	
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
	
l4221:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4081
	goto	u4080
u4081:
	goto	l4219
u4080:
	goto	l4225
	line	76
	
l4223:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l4225:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u4091
	goto	u4090
u4091:
	goto	l1545
u4090:
	
l4227:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u4101
	goto	u4100
u4101:
	goto	l4223
u4100:
	
l1545:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u4111
	goto	u4110
u4111:
	goto	l1546
u4110:
	line	80
	
l4229:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l1546:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l4231:	
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
	goto	u4121
	goto	u4120
u4121:
	goto	l1547
u4120:
	line	84
	
l4233:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1547:	
	line	85
	line	86
	
l1534:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 394 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	394
global __ptext17
__ptext17:	;psect for function _chrgCtr
psect	text17
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	394
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 6
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	396
	
l3901:	
;main.c: 396: if(PORTB & 0x20)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),(5)&7	;volatile
	goto	u3591
	goto	u3590
u3591:
	goto	l3917
u3590:
	line	398
	
l3903:	
;main.c: 397: {
;main.c: 398: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	399
	
l3905:	
;main.c: 399: firstLock = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_firstLock)^080h
	line	400
;main.c: 400: lowBatLock = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowBatLock)
	line	401
	
l3907:	
;main.c: 401: if(power_ad > 4140)
	movlw	010h
	subwf	(_power_ad+1),w	;volatile
	movlw	02Dh
	skipnz
	subwf	(_power_ad),w	;volatile
	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l3915
u3600:
	line	403
	
l3909:	
;main.c: 402: {
;main.c: 403: if(++chrgFullTime > 200)
	movlw	low(0C9h)
	incf	(_chrgFullTime),f
	subwf	((_chrgFullTime)),w
	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l1018
u3610:
	line	405
	
l3911:	
;main.c: 404: {
;main.c: 405: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	406
	
l3913:	
;main.c: 406: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l1018
	line	411
	
l3915:	
;main.c: 409: else
;main.c: 410: {
;main.c: 411: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	goto	l1018
	line	417
	
l3917:	
;main.c: 415: else
;main.c: 416: {
;main.c: 417: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	418
;main.c: 418: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	419
;main.c: 419: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	422
	
l1018:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_WorkSleep

;; *************** function _WorkSleep *****************
;; Defined at:
;;		line 246 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	246
global __ptext18
__ptext18:	;psect for function _WorkSleep
psect	text18
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	246
	global	__size_of_WorkSleep
	__size_of_WorkSleep	equ	__end_of_WorkSleep-_WorkSleep
	
_WorkSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _WorkSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	251
	
l4689:	
;main.c: 249: static unsigned char time;
;main.c: 251: if(B_OnOff)time = 0;
	btfss	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	goto	u4951
	goto	u4950
u4951:
	goto	l4693
u4950:
	
l4691:	
	clrf	(WorkSleep@time)
	line	253
	
l4693:	
;main.c: 253: if(++time >= 125)
	movlw	low(07Dh)
	incf	(WorkSleep@time),f
	subwf	((WorkSleep@time)),w
	skipc
	goto	u4961
	goto	u4960
u4961:
	goto	l991
u4960:
	line	255
	
l4695:	
;main.c: 254: {
;main.c: 255: time = 0;
	clrf	(WorkSleep@time)
	line	256
;main.c: 256: INTCON = 0;
	clrf	(11)	;volatile
	line	257
;main.c: 257: PIE1 = 0;
	clrf	(14)	;volatile
	line	258
;main.c: 258: PIE2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(272)^0100h	;volatile
	line	259
;main.c: 259: PIR1 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(13)	;volatile
	line	260
;main.c: 260: PIR2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(271)^0100h	;volatile
	line	261
;main.c: 261: T2CON = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	262
;main.c: 262: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	265
;main.c: 265: ADCON0 = 0;
	clrf	(149)^080h	;volatile
	line	268
	
l4697:	
;main.c: 268: PORTA = 0x01;
	movlw	low(01h)
	movwf	(134)^080h	;volatile
	line	269
	
l4699:	
;main.c: 269: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	270
	
l4701:	
;main.c: 270: TRISC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	271
	
l4703:	
;main.c: 271: PORTC = 0x03;
	movlw	low(03h)
	movwf	(262)^0100h	;volatile
	line	273
	
l4705:	
;main.c: 273: TRISB5 =1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7	;volatile
	line	275
	
l4707:	
;main.c: 275: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	276
	
l4709:	
;main.c: 276: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	277
	
l4711:	
;main.c: 277: IOCB5= 1;
	bsf	(77/8),(77)&7	;volatile
	line	278
	
l4713:	
;main.c: 278: PORTB;
	movf	(6),w	;volatile
	line	290
	
l4715:	
;main.c: 290: SystemEnterSleep();
	fcall	_SystemEnterSleep
	line	291
	
l4717:	
;main.c: 291: if(RAIF)
	btfss	(107/8),(107)&7	;volatile
	goto	u4971
	goto	u4970
u4971:
	goto	l4723
u4970:
	line	293
	
l4719:	
;main.c: 292: {
;main.c: 293: RAIF = 0;
	bcf	(107/8),(107)&7	;volatile
	line	294
	
l4721:	
;main.c: 294: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	297
	
l4723:	
;main.c: 295: }
;main.c: 297: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	298
	
l4725:	
;main.c: 298: PORTB &= 0xFD;
	bcf	(6)+(1/8),(1)&7	;volatile
	line	299
	
l4727:	
;main.c: 299: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	300
	
l4729:	
;main.c: 300: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	301
	
l4731:	
;main.c: 301: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	304
	
l991:	
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
	
l4255:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text19
	
l1358:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text19
	
l4257:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	
l4259:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(1),f	;volatile
	
l4261:	
	bsf	(1)+(3/8),(3)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text19
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\TouchKeyConst.h"
	line	5
	
l4263:	
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text19
	
l4265:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	
l4267:	
	clrf	(275)^0100h	;volatile
	
l4269:	
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
	
l4271:	
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	
l4273:	
	movlw	low(079h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(275)^0100h	;volatile
	
l4275:	
	fcall	_ClearResSum
	
l4277:	
	bsf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	
l4279:	
	fcall	_GetTouchKeyValue
	
l4281:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SystemEnterSleep@91)
	
l4283:	
	clrf	(SystemEnterSleep@92)
	incf	(SystemEnterSleep@92),f
	clrf	(SystemEnterSleep@92+1)
	
l4285:	
	btfsc	(88/8),(88)&7	;volatile
	goto	u4171
	goto	u4170
u4171:
	goto	l4291
u4170:
	
l4287:	
	btfsc	(89/8),(89)&7	;volatile
	goto	u4181
	goto	u4180
u4181:
	goto	l4291
u4180:
	
l4289:	
	btfss	(107/8),(107)&7	;volatile
	goto	u4191
	goto	u4190
u4191:
	goto	l4303
u4190:
	
l4291:	
	fcall	_ClearResSum
	
l4293:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	
l4295:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4297:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	l1362
	
l4303:	
	movf	(SystemEnterSleep@92),w
	andlw	07h
	btfsc	status,2
	goto	u4201
	goto	u4200
u4201:
	goto	l4337
u4200:
	
l4305:	
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
	
l4307:	
	movf	((SystemEnterSleep@93)),w
iorwf	((SystemEnterSleep@93+1)),w
	btfsc	status,2
	goto	u4211
	goto	u4210
u4211:
	goto	l4337
u4210:
	
l4309:	
	movf	(SystemEnterSleep@91),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addwf	(SystemEnterSleep@94),f
	skipnc
	incf	(SystemEnterSleep@94+1),f
	
l4311:	
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
	goto	u4225
	movf	(SystemEnterSleep@94),w
	subwf	0+(??_SystemEnterSleep+0)+0,w
u4225:
	skipc
	goto	u4221
	goto	u4220
u4221:
	goto	l4335
u4220:
	
l4313:	
	clrf	(SystemEnterSleep@91)
	
l4315:	
	clrf	(SystemEnterSleep@92)
	incf	(SystemEnterSleep@92),f
	clrf	(SystemEnterSleep@92+1)
	
l4317:	
	movf	(SystemEnterSleep@92),w
	andlw	07h
	btfss	status,2
	goto	u4231
	goto	u4230
u4231:
	goto	l4321
u4230:
	
l4319:	
	movf	(SystemEnterSleep@91),w
	fcall	_KeyClearOne
	
l4321:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(SystemEnterSleep@92),f
	rlf	(SystemEnterSleep@92+1),f
	
l4323:	
	movlw	low(03h)
	incf	(SystemEnterSleep@91),f
	subwf	((SystemEnterSleep@91)),w
	skipc
	goto	u4241
	goto	u4240
u4241:
	goto	l4317
u4240:
	goto	l4291
	
l4335:	
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
	
l4337:	
	clrc
	rlf	(SystemEnterSleep@92),f
	rlf	(SystemEnterSleep@92+1),f
	
l4339:	
	movlw	low(03h)
	incf	(SystemEnterSleep@91),f
	subwf	((SystemEnterSleep@91)),w
	skipc
	goto	u4251
	goto	u4250
u4251:
	goto	l4303
u4250:
	goto	l1358
	
l1362:	
	return
	opt stack 0
GLOBAL	__end_of_SystemEnterSleep
	__end_of_SystemEnterSleep:
	signat	_SystemEnterSleep,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 100 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	100
global __ptext20
__ptext20:	;psect for function _Refurbish_Sfr
psect	text20
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	100
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 5
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	103
	
l3189:	
;main.c: 103: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(14)	;volatile
	line	104
;main.c: 104: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	105
;main.c: 105: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	106
	
l3191:	
;main.c: 106: if (4 != T2CON)
		movlw	4
	xorwf	((19)),w	;volatile
	btfsc	status,2
	goto	u2311
	goto	u2310
u2311:
	goto	l945
u2310:
	line	107
	
l3193:	
;main.c: 107: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	108
	
l945:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 114 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	114
global __ptext21
__ptext21:	;psect for function _KeyServer
psect	text21
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	114
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 6
; Regs used in _KeyServer: [wreg+status,2+status,0]
	line	117
	
l3761:	
;main.c: 116: static unsigned char KeyOldFlag = 0;
;main.c: 117: if (KeyFlag[0])
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l3855
u3280:
	line	119
	
l3763:	
;main.c: 118: {
;main.c: 119: if (KeyFlag[0] != KeyOldFlag)
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),w
	skipnz
	goto	u3291
	goto	u3290
u3291:
	goto	l3837
u3290:
	line	122
	
l3765:	
;main.c: 120: {
;main.c: 122: KeyOldFlag ^= KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),f
	line	123
	
l3767:	
;main.c: 123: if ((KeyOldFlag & 0x1) && (KeyFlag[0] & 0x1) && firstLock == 0 && powerFlag > 0)
	btfss	(KeyServer@KeyOldFlag),(0)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l3791
u3300:
	
l3769:	
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u3311
	goto	u3310
u3311:
	goto	l3791
u3310:
	
l3771:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstLock)^080h),w
	btfss	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l3791
u3320:
	
l3773:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_powerFlag)),w
	btfsc	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l3791
u3330:
	line	126
	
l3775:	
;main.c: 124: {
;main.c: 126: if(lowBatLock == 1)
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l3779
u3340:
	line	128
	
l3777:	
;main.c: 127: {
;main.c: 128: shanshuoTime2 = 450;
	movlw	0C2h
	movwf	(_shanshuoTime2)
	movlw	01h
	movwf	((_shanshuoTime2))+1
	line	129
;main.c: 129: }
	goto	l3783
	line	130
	
l3779:	
;main.c: 130: else if(++wuhuaFlag > 2)
	movlw	low(03h)
	incf	(_wuhuaFlag),f
	subwf	((_wuhuaFlag)),w
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l3783
u3350:
	line	132
	
l3781:	
;main.c: 131: {
;main.c: 132: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	line	134
	
l3783:	
;main.c: 133: }
;main.c: 134: if(wuhuaFlag >= 2)
	movlw	low(02h)
	subwf	(_wuhuaFlag),w
	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l3789
u3360:
	line	136
	
l3785:	
;main.c: 135: {
;main.c: 136: shanshuoTime2 = 450;
	movlw	0C2h
	movwf	(_shanshuoTime2)
	movlw	01h
	movwf	((_shanshuoTime2))+1
	line	137
	
l3787:	
;main.c: 137: count10s = 0;
	clrf	(_count10s)
	line	138
;main.c: 138: }
	goto	l3791
	line	141
	
l3789:	
;main.c: 139: else
;main.c: 140: {
;main.c: 141: shanshuoTime2 = 0;
	clrf	(_shanshuoTime2)
	clrf	(_shanshuoTime2+1)
	line	144
	
l3791:	
;main.c: 142: }
;main.c: 143: }
;main.c: 144: if ((KeyOldFlag & 0x2) && (KeyFlag[0] & 0x2) && firstLock == 0 && powerFlag > 0)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(KeyServer@KeyOldFlag),(1)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l3813
u3370:
	
l3793:	
	btfss	(_KeyFlag),(1)&7	;volatile
	goto	u3381
	goto	u3380
u3381:
	goto	l3813
u3380:
	
l3795:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstLock)^080h),w
	btfss	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l3813
u3390:
	
l3797:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_powerFlag)),w
	btfsc	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l3813
u3400:
	line	147
	
l3799:	
;main.c: 145: {
;main.c: 147: if(lowBatLock == 1)
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l3803
u3410:
	line	149
	
l3801:	
;main.c: 148: {
;main.c: 149: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	line	150
;main.c: 150: }
	goto	l3807
	line	151
	
l3803:	
;main.c: 151: else if(++workStep > 3)
	movlw	low(04h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l3807
u3420:
	line	153
	
l3805:	
;main.c: 152: {
;main.c: 153: workStep = 0;
	clrf	(_workStep)
	line	154
;main.c: 154: bujinFlag = 0;
	clrf	(_bujinFlag)
	line	156
	
l3807:	
;main.c: 155: }
;main.c: 156: if(workStep >= 2)
	movlw	low(02h)
	subwf	(_workStep),w
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l3811
u3430:
	line	158
	
l3809:	
;main.c: 157: {
;main.c: 158: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	line	159
;main.c: 159: }
	goto	l3813
	line	162
	
l3811:	
;main.c: 160: else
;main.c: 161: {
;main.c: 162: shanshuoTime = 0;
	clrf	(_shanshuoTime)
	clrf	(_shanshuoTime+1)
	line	166
	
l3813:	
;main.c: 163: }
;main.c: 165: }
;main.c: 166: if ((KeyOldFlag & 0x4) && (KeyFlag[0] & 0x4) && firstLock == 0 && workStep > 0 && powerFlag > 0)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(KeyServer@KeyOldFlag),(2)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l3835
u3440:
	
l3815:	
	btfss	(_KeyFlag),(2)&7	;volatile
	goto	u3451
	goto	u3450
u3451:
	goto	l3835
u3450:
	
l3817:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstLock)^080h),w
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l3835
u3460:
	
l3819:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l3835
u3470:
	
l3821:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_powerFlag)),w
	btfsc	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l3835
u3480:
	line	169
	
l3823:	
;main.c: 167: {
;main.c: 169: if(++bujinFlag > 3)
	movlw	low(04h)
	incf	(_bujinFlag),f
	subwf	((_bujinFlag)),w
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l3827
u3490:
	line	171
	
l3825:	
;main.c: 170: {
;main.c: 171: bujinFlag = 0;
	clrf	(_bujinFlag)
	line	173
	
l3827:	
;main.c: 172: }
;main.c: 173: bujinStartFlag = 1;
	clrf	(_bujinStartFlag)
	incf	(_bujinStartFlag),f
	line	174
	
l3829:	
;main.c: 174: if(bujinFlag >= 2)
	movlw	low(02h)
	subwf	(_bujinFlag),w
	skipc
	goto	u3501
	goto	u3500
u3501:
	goto	l3833
u3500:
	line	176
	
l3831:	
;main.c: 175: {
;main.c: 176: shanshuoTime3 = 450;
	movlw	0C2h
	movwf	(_shanshuoTime3)
	movlw	01h
	movwf	((_shanshuoTime3))+1
	line	177
;main.c: 177: }
	goto	l3835
	line	180
	
l3833:	
;main.c: 178: else
;main.c: 179: {
;main.c: 180: shanshuoTime3 = 0;
	clrf	(_shanshuoTime3)
	clrf	(_shanshuoTime3+1)
	line	184
	
l3835:	
;main.c: 181: }
;main.c: 182: }
;main.c: 184: KeyOldFlag = KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(KeyServer@KeyOldFlag)
	line	186
	
l3837:	
;main.c: 185: }
;main.c: 186: if(firstLock == 0 && KeyOldFlag & 0x4)
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstLock)^080h),w
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l974
u3510:
	
l3839:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(KeyServer@KeyOldFlag),(2)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l974
u3520:
	line	188
	
l3841:	
;main.c: 187: {
;main.c: 188: if(++keyCount >= 400)
	incf	(_keyCount),f
	skipnz
	incf	(_keyCount+1),f
	movlw	01h
	subwf	((_keyCount+1)),w
	movlw	090h
	skipnz
	subwf	((_keyCount)),w
	skipc
	goto	u3531
	goto	u3530
u3531:
	goto	l974
u3530:
	line	190
	
l3843:	
;main.c: 189: {
;main.c: 190: keyCount = 0;
	clrf	(_keyCount)
	clrf	(_keyCount+1)
	line	191
	
l3845:	
;main.c: 191: if(longKeyFlag == 0)
	movf	((_longKeyFlag)),w
	btfss	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l974
u3540:
	line	193
	
l3847:	
;main.c: 192: {
;main.c: 193: longKeyFlag = 1;
	clrf	(_longKeyFlag)
	incf	(_longKeyFlag),f
	line	194
	
l3849:	
;main.c: 194: if(powerFlag > 0)
	movf	((_powerFlag)),w
	btfsc	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l971
u3550:
	line	196
	
l3851:	
;main.c: 195: {
;main.c: 196: powerFlag = 0;
	clrf	(_powerFlag)
	line	197
;main.c: 197: workStep = 0;
	clrf	(_workStep)
	line	198
;main.c: 198: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	line	199
;main.c: 199: bujinFlag = 0;
	clrf	(_bujinFlag)
	line	200
;main.c: 200: shanshuoTime3 = 0;
	clrf	(_shanshuoTime3)
	clrf	(_shanshuoTime3+1)
	line	201
;main.c: 201: }
	goto	l974
	line	202
	
l971:	
	line	204
;main.c: 202: else
;main.c: 203: {
;main.c: 204: powerFlag = 1;
	clrf	(_powerFlag)
	incf	(_powerFlag),f
	line	205
;main.c: 205: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	206
	
l3853:	
;main.c: 206: shanshuoTime3 = 2000;
	movlw	0D0h
	movwf	(_shanshuoTime3)
	movlw	07h
	movwf	((_shanshuoTime3))+1
	goto	l974
	line	214
	
l3855:	
;main.c: 212: else
;main.c: 213: {
;main.c: 214: KeyOldFlag = 0;
	clrf	(KeyServer@KeyOldFlag)
	line	215
;main.c: 215: longKeyFlag = 0;
	clrf	(_longKeyFlag)
	line	216
;main.c: 216: keyCount = 0;
	clrf	(_keyCount)
	clrf	(_keyCount+1)
	line	218
	
l974:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 63 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	63
global __ptext22
__ptext22:	;psect for function _Init_System
psect	text22
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	63
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	65
	
l3735:	
# 65 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
nop ;# 
	line	66
# 66 "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
clrwdt ;# 
psect	text22
	line	67
	
l3737:	
;main.c: 67: INTCON = 0;
	clrf	(11)	;volatile
	line	68
	
l3739:	
;main.c: 68: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	69
	
l3741:	
;main.c: 69: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	74
;main.c: 74: TRISA = 0x04;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	75
	
l3743:	
;main.c: 75: PORTA = 0;
	clrf	(134)^080h	;volatile
	line	76
	
l3745:	
;main.c: 76: TRISB = 0x20;
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	77
;main.c: 77: PORTB = 0;
	clrf	(6)	;volatile
	line	78
;main.c: 78: WPUB = 0x00;
	clrf	(8)	;volatile
	line	79
;main.c: 79: TRISC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	80
;main.c: 80: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	82
	
l3747:	
;main.c: 82: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	83
	
l3749:	
;main.c: 83: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	84
	
l3751:	
;main.c: 84: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	86
	
l3753:	
;main.c: 86: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	87
	
l3755:	
;main.c: 87: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	88
	
l3757:	
;main.c: 88: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	89
	
l3759:	
;main.c: 89: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	90
	
l941:	
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
	
l4775:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text23
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u5051
	goto	u5050
u5051:
	goto	l1346
u5050:
	
l4777:	
	fcall	_GetTouchKeyValue
	
l4779:	
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u5061
	goto	u5060
u5061:
	goto	l4809
u5060:
	
l4781:	
	clrf	(_KeyCounter)
	
l4783:	
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l4809
	
l1346:	
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u5071
	goto	u5070
u5071:
	goto	l4803
u5070:
	
l4785:	
	fcall	_CheckOnceResult
	fcall	_TurnKeyFlags
	
l4787:	
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4789:	
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u5081
	goto	u5080
u5081:
	goto	l4793
u5080:
	
l4791:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u5091
	goto	u5090
u5091:
	goto	l4801
u5090:
	
l4793:	
	fcall	_KeyStopClear
	
l4795:	
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l4797:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4799:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4801:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	goto	l4809
	
l4803:	
	fcall	_CheckKeyOldValue
	fcall	_ClearResSum
	
l4805:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4807:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4809:	
	fcall	_CheckValidTime
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text23
	
l1354:	
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
	
l3603:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text24
	
l3605:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l3631
u3080:
	
l3607:	
	clrf	(TurnKeyFlags@F84)
	
l3609:	
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l1327
u3090:
	
l3611:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l1327
u3100:
	
l3613:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F83),f
	subwf	((TurnKeyFlags@F83)),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l1332
u3110:
	
l3615:	
	clrf	(TurnKeyFlags@F83)
	
l3617:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	
l3619:	
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	
l3621:	
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u3121
	goto	u3120
u3121:
	goto	l1328
u3120:
	
l3623:	
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3625:	
	fcall	_KeyClearIn
	goto	l1332
	
l1328:	
	goto	l1332
	
l1327:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3627:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	
l3629:	
	clrf	(TurnKeyFlags@F83)
	goto	l1332
	
l3631:	
	clrf	(TurnKeyFlags@F83)
	clrf	(_KeyOldData)	;volatile
	clrf	0+(_KeyOldData)+01h	;volatile
	
l3633:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F84),f
	subwf	((TurnKeyFlags@F84)),w
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l1332
u3130:
	
l3635:	
	clrf	(TurnKeyFlags@F84)
	clrf	(_KeyFlag)	;volatile
	clrf	0+(_KeyFlag)+01h	;volatile
	
l3637:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l1332:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text24
	
l1334:	
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
	
l3057:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text25
	
l3059:	
	clrf	(KeyClearIn@51)
	
l3065:	
	movf	(KeyClearIn@51),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2081
	goto	u2080
u2081:
	goto	l3069
u2080:
	
l3067:	
	movf	(KeyClearIn@51),w
	fcall	_KeyClearOne
	
l3069:	
	incf	(KeyClearIn@51),f
	
l3071:	
	movlw	low(03h)
	subwf	(KeyClearIn@51),w
	skipc
	goto	u2091
	goto	u2090
u2091:
	goto	l3065
u2090:
	
l1240:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text25
	
l1242:	
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
	
l3475:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text26
	
l3477:	
	clrf	(_KeyFlag)	;volatile
	clrf	0+(_KeyFlag)+01h	;volatile
	clrf	(KeyStopClear@53)
	
l3483:	
	clrc
	rlf	(KeyStopClear@53),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l3485:	
	movf	(KeyStopClear@53),w
	fcall	_KeyClearOne
	
l3487:	
	incf	(KeyStopClear@53),f
	
l3489:	
	movlw	low(03h)
	subwf	(KeyStopClear@53),w
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l3483
u2850:
	
l1246:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text26
	
l1247:	
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
	
l3091:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text27
	
l3093:	
	clrf	(GetTouchKeyValue@62)
	
l3095:	
	clrf	(GetTouchKeyValue@63)
	incf	(GetTouchKeyValue@63),f
	clrf	(GetTouchKeyValue@63+1)
	
l3097:	
	btfss	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	goto	u2111
	goto	u2110
u2111:
	goto	l3101
u2110:
	
l3099:	
	movf	(GetTouchKeyValue@63),w
	andlw	07h
	btfsc	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l3129
u2120:
	
l3101:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	clrf	(274)^0100h	;volatile
	
l3103:	
	movlw	low(079h)
	movwf	(275)^0100h	;volatile
	
l3105:	
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	
l3107:	
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
	
l3109:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7	;volatile
	
l3111:	
	movf	(GetTouchKeyValue@62),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 6	;RP1=1, select bank2
	movwf	(273)^0100h	;volatile
	
l3113:	
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
	
l3115:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(273)^0100h+(0/8),(0)&7	;volatile
	
l3117:	
	movlw	0D0h
	movwf	(GetTouchKeyValue@64)
	movlw	07h
	movwf	((GetTouchKeyValue@64))+1
	goto	l1268
	
l3119:	
	movlw	01h
	subwf	(GetTouchKeyValue@64),f
	movlw	0
	skipc
	decf	(GetTouchKeyValue@64+1),f
	subwf	(GetTouchKeyValue@64+1),f
	movf	(((GetTouchKeyValue@64))),w
iorwf	(((GetTouchKeyValue@64+1))),w
	btfss	status,2
	goto	u2131
	goto	u2130
u2131:
	goto	l1268
u2130:
	
l3121:	
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_KeyCounter)
	
l3123:	
	fcall	_ClearResSum
	goto	l1271
	
l1268:	
	btfss	(273)^0100h,(7)&7	;volatile
	goto	u2141
	goto	u2140
u2141:
	goto	l3119
u2140:
	
l3127:	
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
	
l3129:	
	clrc
	rlf	(GetTouchKeyValue@63),f
	rlf	(GetTouchKeyValue@63+1),f
	
l3131:	
	movlw	low(03h)
	incf	(GetTouchKeyValue@62),f
	subwf	((GetTouchKeyValue@62)),w
	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l3097
u2150:
	
l1273:	
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text27
	
l1271:	
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
	
l2943:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text28
	
l2945:	
	clrf	(ClearResSum@56)
	
l2947:	
	clrc
	rlf	(ClearResSum@56),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l2949:	
	movlw	low(03h)
	incf	(ClearResSum@56),f
	subwf	((ClearResSum@56)),w
	skipc
	goto	u1921
	goto	u1920
u1921:
	goto	l2947
u1920:
	
l1251:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text28
	
l1252:	
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
	
l3639:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text29
	
l3641:	
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l3647
u3140:
	
l3643:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	incf	(CheckValidTime@F87)^080h,f
	skipnz
	incf	(CheckValidTime@F87+1)^080h,f
	movlw	03Ah
	subwf	((CheckValidTime@F87+1)^080h),w
	movlw	098h
	skipnz
	subwf	((CheckValidTime@F87)^080h),w
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l1339
u3150:
	
l3645:	
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l3647:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(CheckValidTime@F87)^080h
	clrf	(CheckValidTime@F87+1)^080h
	
l1339:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text29
	
l1343:	
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
	
l4535:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text30
	
l4537:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckOnceResult@68)
	clrf	(_KeyData)	;volatile
	clrf	0+(_KeyData)+01h	;volatile
	clrf	(_KeyMaxSub)
	
l4539:	
	movf	(CheckOnceResult@68),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@70)
	
l4541:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u4705:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank1
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u4700:
	addlw	-1
	skipz
	goto	u4705
	
l4543:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@71)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@71+1)
	
l4545:	
	movf	(CheckOnceResult@68),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@69)
	
l4547:	
	movf	(CheckOnceResult@69),w
	movwf	(CheckOnceResult@72)
	clrf	(CheckOnceResult@72+1)
	
l4549:	
	movf	(CheckOnceResult@71),w
	addwf	(CheckOnceResult@72),f
	skipnc
	incf	(CheckOnceResult@72+1),f
	movf	(CheckOnceResult@71+1),w
	addwf	(CheckOnceResult@72+1),f
	
l4551:	
	movf	(CheckOnceResult@68),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u4711
	goto	u4710
u4711:
	goto	l4581
u4710:
	
l4553:	
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
	goto	u4725
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72),w
u4725:
	skipnc
	goto	u4721
	goto	u4720
u4721:
	goto	l4557
u4720:
	
l4555:	
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
	goto	l4565
	
l4557:	
	movf	(CheckOnceResult@73+1),w
	subwf	(CheckOnceResult@72+1),w
	skipz
	goto	u4735
	movf	(CheckOnceResult@73),w
	subwf	(CheckOnceResult@72),w
u4735:
	skipnc
	goto	u4731
	goto	u4730
u4731:
	goto	l4603
u4730:
	
l4559:	
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
	goto	u4745
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72),w
u4745:
	skipnc
	goto	u4741
	goto	u4740
u4741:
	goto	l4603
u4740:
	
l4561:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@73),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@73+1),w
	movwf	indf
	
l4563:	
	movf	(CheckOnceResult@71),w
	subwf	(CheckOnceResult@73),w
	movwf	(CheckOnceResult@71)
	movf	(CheckOnceResult@71+1),w
	skipc
	incf	(CheckOnceResult@71+1),w
	subwf	(CheckOnceResult@73+1),w
	movwf	1+(CheckOnceResult@71)
	
l4565:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	
l4567:	
	movf	(0+(CheckOnceResult@71)+01h),w
	btfsc	status,2
	goto	u4751
	goto	u4750
u4751:
	goto	l4571
u4750:
	
l4569:	
	movlw	low(0FFh)
	movwf	(CheckOnceResult@69)
	goto	l1285
	
l4571:	
	movf	(CheckOnceResult@71),w
	movwf	(CheckOnceResult@69)
	
l1285:	
	movf	(CheckOnceResult@69),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u4761
	goto	u4760
u4761:
	goto	l4577
u4760:
	
l4573:	
	movf	(CheckOnceResult@69),w
	movwf	(_KeyMaxSub)
	
l4575:	
	movf	(CheckOnceResult@70),w
	movwf	(KeyHave@59)
	clrf	(KeyHave@59+1)
	movf	(CheckOnceResult@68),w
	fcall	_KeyHave
	goto	l4603
	
l4577:	
	incf	(_KeyCounter),f
	goto	l4603
	
l4581:	
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
	goto	u4775
	movf	(CheckOnceResult@72),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u4775:
	skipnc
	goto	u4771
	goto	u4770
u4771:
	goto	l4587
u4770:
	goto	l4603
	
l4587:	
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
	goto	u4785
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u4785:
	skipc
	goto	u4781
	goto	u4780
u4781:
	goto	l4591
u4780:
	
l4589:	
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
	goto	u4795
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u4795:
	skipnc
	goto	u4791
	goto	u4790
u4791:
	goto	l4595
u4790:
	
l4591:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u4801
	goto	u4800
u4801:
	goto	l1291
u4800:
	
l4593:	
	movf	(CheckOnceResult@68),w
	fcall	_KeyClearOne
	goto	l4603
	
l4595:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l4599
	
l1291:	
	
l4599:	
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfss	status,2
	goto	u4811
	goto	u4810
u4811:
	goto	l4603
u4810:
	
l4601:	
	movf	(CheckOnceResult@70),w
	movwf	(KeyHave@59)
	clrf	(KeyHave@59+1)
	movf	(CheckOnceResult@68),w
	fcall	_KeyHave
	
l4603:	
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@68),f
	subwf	((CheckOnceResult@68)),w
	skipc
	goto	u4821
	goto	u4820
u4821:
	goto	l4539
u4820:
	
l1300:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text30
	
l1301:	
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
	
l3073:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text31
	
l3075:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	
l3077:	
	clrf	(_KeyData)	;volatile
	
l3079:	
	clrf	0+(_KeyData)+01h	;volatile
	
l3081:	
	btfss	(KeyHave@58),(3)&7
	goto	u2101
	goto	u2100
u2101:
	goto	l3085
u2100:
	
l3083:	
	movf	(KeyHave@59),w
	movwf	0+(_KeyData)+01h	;volatile
	goto	l1258
	
l3085:	
	movf	(KeyHave@59),w
	movwf	(_KeyData)	;volatile
	
l1258:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text31
	
l1261:	
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
	
l2939:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text32
	
l2941:	
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
	
l1236:	
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
	
l3561:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text33
	
l3563:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@78)
	
l3565:	
	movlw	low(04h)
	incf	(CheckKeyOldValue@F77),f
	subwf	((CheckKeyOldValue@F77)),w
	skipnc
	goto	u2991
	goto	u2990
u2991:
	goto	l3569
u2990:
	goto	l1307
	
l3569:	
	clrf	(CheckKeyOldValue@F77)
	
l3571:	
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
	
l3573:	
	movf	(CheckKeyOldValue@78),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u3001
	goto	u3000
u3001:
	goto	l1309
u3000:
	
l3575:	
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
	
l3577:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3579:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l3583
u3010:
	
l3581:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u3021
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l1309
u3020:
	
l3583:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3585:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3587:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u3031
	goto	u3030
u3031:
	goto	l3591
u3030:
	
l3589:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u3041
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l1309
u3040:
	
l3591:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3593:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3595:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l3599
u3050:
	
l3597:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u3061
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l1309
u3060:
	
l3599:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@79),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@79+1),w
	movwf	indf
	
l1309:	
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
	
l3601:	
	movlw	low(03h)
	incf	(CheckKeyOldValue@78),f
	subwf	((CheckKeyOldValue@78)),w
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l3571
u3070:
	
l1319:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text33
	
l1307:	
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
	
l2923:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text34
	
l2925:	
	movf	(KeyIsIn@45),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@46)
	
l2927:	
	btfss	(KeyIsIn@45),(3)&7
	goto	u1911
	goto	u1910
u1911:
	goto	l2931
u1910:
	
l2929:	
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@46),f
	goto	l2933
	
l2931:	
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@46),f
	
l2933:	
	movf	(KeyIsIn@46),w
	
l1233:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 224 in file "C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
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
	line	224
global __ptext35
__ptext35:	;psect for function _Isr_Timer
psect	text35
	file	"C:\mcuproject\scm\zdt\D108_8F083_tssop20_\D108_8F083_tssop20_\main.c"
	line	224
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
	line	226
	
i1l3997:	
;main.c: 226: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u374_21
	goto	u374_20
u374_21:
	goto	i1l4011
u374_20:
	line	228
	
i1l3999:	
;main.c: 227: {
;main.c: 228: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	229
	
i1l4001:	
;main.c: 229: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u375_21
	goto	u375_20
u375_21:
	goto	i1l983
u375_20:
	line	231
	
i1l4003:	
;main.c: 230: {
;main.c: 231: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	232
	
i1l4005:	
;main.c: 232: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	233
	
i1l4007:	
;main.c: 233: if(++count1s >= 250)
	movlw	low(0FAh)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u376_21
	goto	u376_20
u376_21:
	goto	i1l983
u376_20:
	line	235
	
i1l4009:	
;main.c: 234: {
;main.c: 235: count1s = 0;
	clrf	(_count1s)
	goto	i1l983
	line	241
	
i1l4011:	
;main.c: 239: else
;main.c: 240: {
;main.c: 241: PIR1 = 0;
	clrf	(13)	;volatile
	line	244
	
i1l983:	
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
