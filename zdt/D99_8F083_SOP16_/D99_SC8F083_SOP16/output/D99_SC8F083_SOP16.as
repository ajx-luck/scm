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
	FNCALL	_main,_setBatStep
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,_ADC_Sample
	FNCALL	_workCtr,___ftdiv
	FNCALL	_workCtr,___fttol
	FNCALL	_workCtr,___lwtoft
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
	FNCALL	_setBatStep,___lwdiv
	FNCALL	_chrgCtr,_showBatLed
	FNCALL	_showBatLed,___lbdiv
	FNCALL	_showBatLed,___lbmod
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
	FNCALL	_Isr_Timer,_ledShow
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_showNumGe
	global	_showNumShi
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	60

;initializer for _showNumGe
	retlw	07Fh
	line	59

;initializer for _showNumShi
	retlw	07Fh
	global	_numArray
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
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	35
_numArray:
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	retlw	071h
	retlw	079h
	retlw	050h
	global __end_of_numArray
__end_of_numArray:
	global	_Table_KeyFalg
psect	strings
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
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\Touch_Kscan_Library.h"
	line	75
_Table_KeyDown:
	retlw	0Ah
	retlw	0Ah
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyCap
psect	strings
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\Touch_Kscan_Library.h"
	line	69
_Table_KeyCap:
	retlw	02h
	retlw	02h
	global __end_of_Table_KeyCap
__end_of_Table_KeyCap:
	global	_Table_KeyChannel
psect	strings
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\Touch_Kscan_Library.h"
	line	63
_Table_KeyChannel:
	retlw	042h
	retlw	043h
	global __end_of_Table_KeyChannel
__end_of_Table_KeyChannel:
	global	_numArray
	global	_Table_KeyFalg
	global	_Table_KeyDown
	global	_Table_KeyCap
	global	_Table_KeyChannel
	global	_power_ad
	global	_b_ksleep
	global	_b_kerr
	global	_b_kclr
	global	_b_kover1
	global	_b_kover
	global	_B_OnOff
	global	_B_MainLoop
	global	_KeyOldValue1
	global	_KeyData
	global	_KeyOldData
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
	global	_curBatStep
	global	_showBatStep
	global	_wuhuaKeyFlag
	global	_fanKeyFlag
	global	_ledCnt
	global	_lowFanTime
	global	_lowBatTime
	global	_lowBatLock
	global	_chrgFullTime
	global	_chrgFlag
	global	_fanOverTime
	global	_count10s
	global	_fanDuty
	global	_wuhuaFlag
	global	_workStep
	global	_count1s
	global	_MainTime
	global	_adresult
	global	_KeyReference
	global	_KeyOldValue2
	global	_KeyOldValue0
	global	_KeyResSum
	global	CheckValidTime@F87
	global	_result
	global	_count30s
	global	_fanValue
	global	_KeyUpShake
	global	_firstLock
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
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
	global	_RB4
_RB4	set	52
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
	global	_RA0
_RA0	set	1072
	global	_RA1
_RA1	set	1073
	global	_RA3
_RA3	set	1075
	global	_RA4
_RA4	set	1076
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
	file	"D99_SC8F083_SOP16.as"
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
_power_ad:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_KeyOldValue1:
       ds      4

_KeyData:
       ds      2

_KeyOldData:
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

_curBatStep:
       ds      1

_showBatStep:
       ds      1

_wuhuaKeyFlag:
       ds      1

_fanKeyFlag:
       ds      1

_ledCnt:
       ds      1

_lowFanTime:
       ds      1

_lowBatTime:
       ds      1

_lowBatLock:
       ds      1

_chrgFullTime:
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

_workStep:
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
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	60
_showNumGe:
       ds      1

psect	dataBANK0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	59
_showNumShi:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_KeyReference:
       ds      4

_KeyOldValue2:
       ds      4

_KeyOldValue0:
       ds      4

_KeyResSum:
       ds      4

CheckValidTime@F87:
       ds      2

_result:
       ds      2

_count30s:
       ds      2

_fanValue:
       ds      2

_KeyUpShake:
       ds      2

	file	"D99_SC8F083_SOP16.as"
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

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+01Ah)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+029h)
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
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	workCtr@power_temp
workCtr@power_temp:	; 4 bytes @ 0x0
	ds	4
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_ledShow:	; 1 bytes @ 0x0
??_ledShow:	; 1 bytes @ 0x0
?_SystemEnterSleep:	; 1 bytes @ 0x0
?_CheckTouchKey:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Refurbish_Sfr:	; 1 bytes @ 0x0
?_KeyServer:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_WorkSleep:	; 1 bytes @ 0x0
?_showBatLed:	; 1 bytes @ 0x0
?_setBatStep:	; 1 bytes @ 0x0
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
	ds	3
??_Init_System:	; 1 bytes @ 0x3
??_Refurbish_Sfr:	; 1 bytes @ 0x3
??_KeyServer:	; 1 bytes @ 0x3
?_ADC_Sample:	; 1 bytes @ 0x3
??_pwmInit:	; 1 bytes @ 0x3
??_pwmStop:	; 1 bytes @ 0x3
??_fanInit:	; 1 bytes @ 0x3
??_fanStop:	; 1 bytes @ 0x3
??_wuhuaCtr:	; 1 bytes @ 0x3
??_KeyIsIn:	; 1 bytes @ 0x3
??_KeyClearOne:	; 1 bytes @ 0x3
??_ClearResSum:	; 1 bytes @ 0x3
?_KeyHave:	; 1 bytes @ 0x3
??_CheckValidTime:	; 1 bytes @ 0x3
??___lmul:	; 1 bytes @ 0x3
?___lbdiv:	; 1 bytes @ 0x3
?___lbmod:	; 1 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x3
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x3
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x3
	global	KeyIsIn@46
KeyIsIn@46:	; 1 bytes @ 0x3
	global	KeyClearOne@49
KeyClearOne@49:	; 1 bytes @ 0x3
	global	ClearResSum@56
ClearResSum@56:	; 1 bytes @ 0x3
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x3
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x3
	global	KeyHave@59
KeyHave@59:	; 2 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x3
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x3
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x3
	ds	1
??_SystemEnterSleep:	; 1 bytes @ 0x4
??_ADC_Sample:	; 1 bytes @ 0x4
??_KeyStopClear:	; 1 bytes @ 0x4
??_GetTouchKeyValue:	; 1 bytes @ 0x4
??___lbdiv:	; 1 bytes @ 0x4
??___lbmod:	; 1 bytes @ 0x4
	global	KeyIsIn@45
KeyIsIn@45:	; 1 bytes @ 0x4
	global	KeyStopClear@53
KeyStopClear@53:	; 1 bytes @ 0x4
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x4
	ds	1
??_KeyClearIn:	; 1 bytes @ 0x5
??_KeyHave:	; 1 bytes @ 0x5
??_CheckKeyOldValue:	; 1 bytes @ 0x5
	global	KeyClearIn@51
KeyClearIn@51:	; 1 bytes @ 0x5
	global	KeyHave@58
KeyHave@58:	; 1 bytes @ 0x5
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x5
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x5
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x5
	ds	1
??_WorkSleep:	; 1 bytes @ 0x6
??_TurnKeyFlags:	; 1 bytes @ 0x6
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x6
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x6
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x6
	ds	1
??_CheckTouchKey:	; 1 bytes @ 0x7
??_setBatStep:	; 1 bytes @ 0x7
??___lwdiv:	; 1 bytes @ 0x7
??___lwmod:	; 1 bytes @ 0x7
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x7
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x7
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x7
	ds	1
??_showBatLed:	; 1 bytes @ 0x8
??_chrgCtr:	; 1 bytes @ 0x8
??_keyLedCtr:	; 1 bytes @ 0x8
??_fanCtr:	; 1 bytes @ 0x8
??_workCtr:	; 1 bytes @ 0x8
??_main:	; 1 bytes @ 0x8
??___lwtoft:	; 1 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftpack:	; 1 bytes @ 0x0
??_CheckOnceResult:	; 1 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	global	GetTouchKeyValue@64
GetTouchKeyValue@64:	; 2 bytes @ 0x0
	global	CheckKeyOldValue@79
CheckKeyOldValue@79:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x2
	global	GetTouchKeyValue@63
GetTouchKeyValue@63:	; 2 bytes @ 0x2
	global	CheckKeyOldValue@80
CheckKeyOldValue@80:	; 2 bytes @ 0x2
	ds	1
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x3
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x3
	global	ADC_Sample@adsum
ADC_Sample@adsum:	; 4 bytes @ 0x3
	ds	1
	global	GetTouchKeyValue@62
GetTouchKeyValue@62:	; 1 bytes @ 0x4
	global	CheckKeyOldValue@78
CheckKeyOldValue@78:	; 1 bytes @ 0x4
	global	CheckOnceResult@73
CheckOnceResult@73:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	1
	global	SystemEnterSleep@94
SystemEnterSleep@94:	; 2 bytes @ 0x5
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x6
	global	CheckOnceResult@70
CheckOnceResult@70:	; 1 bytes @ 0x6
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x6
	ds	1
	global	ADC_Sample@admin
ADC_Sample@admin:	; 2 bytes @ 0x7
	global	CheckOnceResult@72
CheckOnceResult@72:	; 2 bytes @ 0x7
	global	SystemEnterSleep@93
SystemEnterSleep@93:	; 2 bytes @ 0x7
	ds	2
	global	CheckOnceResult@69
CheckOnceResult@69:	; 1 bytes @ 0x9
	global	ADC_Sample@admax
ADC_Sample@admax:	; 2 bytes @ 0x9
	global	SystemEnterSleep@92
SystemEnterSleep@92:	; 2 bytes @ 0x9
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x9
	ds	1
	global	CheckOnceResult@71
CheckOnceResult@71:	; 2 bytes @ 0xA
	ds	1
	global	SystemEnterSleep@91
SystemEnterSleep@91:	; 1 bytes @ 0xB
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
;!    Constant    27
;!    Data        2
;!    BSS         69
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      11
;!    BANK0            80     34      79
;!    BANK1            80      4      30
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
;!    _setBatStep->___lwdiv
;!    _showBatLed->___lbmod
;!    _WorkSleep->_SystemEnterSleep
;!    _SystemEnterSleep->_ClearResSum
;!    _SystemEnterSleep->_KeyClearOne
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
;!    _workCtr->___fttol
;!    _fanCtr->_ADC_Sample
;!    ___lwtoft->___ftpack
;!    ___fttol->___ftdiv
;!    ___ftdiv->___lwtoft
;!    _setBatStep->___lwdiv
;!    _WorkSleep->_SystemEnterSleep
;!    _SystemEnterSleep->_GetTouchKeyValue
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
;! (0) _main                                                 0     0      0   12840
;!                      _CheckTouchKey
;!                        _Init_System
;!                          _KeyServer
;!                      _Refurbish_Sfr
;!                          _WorkSleep
;!                            _chrgCtr
;!                         _setBatStep
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              4     4      0    7705
;!                                              0 BANK1      4     4      0
;!                         _ADC_Sample
;!                            ___ftdiv
;!                            ___fttol
;!                           ___lwtoft
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
;! (2) _keyLedCtr                                            0     0      0     492
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              5     1      4     492
;!                                              3 COMMON     5     1      4
;! ---------------------------------------------------------------------------------
;! (2) _fanCtr                                               5     5      0    1283
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
;!                                              3 COMMON     4     4      0
;!                                              0 BANK0      8     0      8
;! ---------------------------------------------------------------------------------
;! (3) _ADC_Sample                                          18    17      1     912
;!                                              3 COMMON     5     4      1
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
;!                                              3 COMMON     5     0      5
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _setBatStep                                           0     0      0     501
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     501
;!                                              3 COMMON     4     0      4
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0     427
;!                         _showBatLed
;! ---------------------------------------------------------------------------------
;! (2) _showBatLed                                           0     0      0     427
;!                            ___lbdiv
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (3) ___lbmod                                              5     4      1     212
;!                                              3 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (3) ___lbdiv                                              4     3      1     215
;!                                              3 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _WorkSleep                                            0     0      0     939
;!                      _Refurbish_Sfr
;!                   _SystemEnterSleep
;! ---------------------------------------------------------------------------------
;! (2) _SystemEnterSleep                                     9     9      0     939
;!                                              4 COMMON     2     2      0
;!                                              5 BANK0      7     7      0
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
;! (1) _CheckTouchKey                                        0     0      0    3268
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
;!                                              5 COMMON     1     1      0
;!                        _KeyClearOne
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (2) _KeyStopClear                                         1     1      0     178
;!                                              4 COMMON     1     1      0
;!                        _KeyClearOne
;! ---------------------------------------------------------------------------------
;! (3) _GetTouchKeyValue                                     5     5      0     263
;!                                              0 BANK0      5     5      0
;!                        _ClearResSum
;! ---------------------------------------------------------------------------------
;! (4) _ClearResSum                                          1     1      0      65
;!                                              3 COMMON     1     1      0
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
;!                                              3 COMMON     3     1      2
;! ---------------------------------------------------------------------------------
;! (3) _KeyClearOne                                          1     1      0      88
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _CheckKeyOldValue                                     7     7      0     583
;!                                              5 COMMON     2     2      0
;!                                              0 BANK0      5     5      0
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (4) _KeyIsIn                                              2     2      0      69
;!                                              3 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _Isr_Timer                                            3     3      0       0
;!                                              0 COMMON     3     3      0
;!                            _ledShow
;! ---------------------------------------------------------------------------------
;! (6) _ledShow                                              0     0      0       0
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
;!     _showBatLed
;!       ___lbdiv
;!       ___lbmod
;!   _setBatStep
;!     ___lwdiv
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
;!       _pwmInit
;!       _pwmStop
;!
;! _Isr_Timer (ROOT)
;!   _ledShow
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               50      0       0       7        0.0%
;!BITBANK2            50      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      4      1E       6       37.5%
;!BITBANK1            50      0       0       5        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     22      4F       4       98.8%
;!BITBANK0            50      0       0       3        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      8       B       1       78.6%
;!BITCOMMON            E      0       1       0        7.1%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      78       9        0.0%
;!ABS                  0      0      78       8        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 894 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;;		_setBatStep
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	894
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	894
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	896
	
l4923:	
;main.c: 896: Init_System();
	fcall	_Init_System
	line	897
	
l4925:	
;main.c: 897: firstLock = 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_firstLock)
	incf	(_firstLock),f
	line	898
	
l4927:	
;main.c: 898: firstTime = 250;
	movlw	low(0FAh)
	movwf	(_firstTime)
	line	902
	
l4929:	
;main.c: 900: {
;main.c: 902: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u5531
	goto	u5530
u5531:
	goto	l4929
u5530:
	line	904
	
l4931:	
;main.c: 903: {
;main.c: 904: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	905
# 905 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
clrwdt ;# 
psect	maintext
	line	906
	
l4933:	
;main.c: 906: CheckTouchKey();
	fcall	_CheckTouchKey
	line	907
	
l4935:	
;main.c: 907: chrgCtr();
	fcall	_chrgCtr
	line	908
	
l4937:	
;main.c: 908: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	909
	
l4939:	
;main.c: 909: KeyServer();
	fcall	_KeyServer
	line	910
	
l4941:	
;main.c: 910: workCtr();
	fcall	_workCtr
	line	911
	
l4943:	
;main.c: 911: setBatStep();
	fcall	_setBatStep
	line	912
	
l4945:	
;main.c: 912: if(firstTime == 0 && chrgFlag == 0 && workStep == 0 && wuhuaFlag == 0 && shanshuoTime == 0 && shanshuoTime2 == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_firstTime)),w
	btfss	status,2
	goto	u5541
	goto	u5540
u5541:
	goto	l4929
u5540:
	
l4947:	
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u5551
	goto	u5550
u5551:
	goto	l4929
u5550:
	
l4949:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u5561
	goto	u5560
u5561:
	goto	l4929
u5560:
	
l4951:	
	movf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u5571
	goto	u5570
u5571:
	goto	l4929
u5570:
	
l4953:	
	movf	((_shanshuoTime)),w
iorwf	((_shanshuoTime+1)),w
	btfss	status,2
	goto	u5581
	goto	u5580
u5581:
	goto	l4929
u5580:
	
l4955:	
	movf	((_shanshuoTime2)),w
iorwf	((_shanshuoTime2+1)),w
	btfss	status,2
	goto	u5591
	goto	u5590
u5591:
	goto	l4929
u5590:
	line	914
	
l4957:	
;main.c: 913: {
;main.c: 914: PORTA &= 0xE4;
	movlw	low(0E4h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	915
	
l4959:	
;main.c: 915: PORTB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(4/8),(4)&7	;volatile
	line	916
;main.c: 916: TRISA |= 0x1B;
	movlw	low(01Bh)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	917
	
l4961:	
;main.c: 917: TRISB |= 0x10;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(4/8),(4)&7	;volatile
	line	918
	
l4963:	
;main.c: 918: WorkSleep();
	fcall	_WorkSleep
	goto	l4929
	global	start
	ljmp	start
	opt stack 0
	line	922
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 842 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;; Hardware stack levels required when called:    4
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
	line	842
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	842
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	844
	
l4851:	
;main.c: 844: test_adc = ADC_Sample(31, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(01Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	845
	
l4853:	
;main.c: 845: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u5411
	goto	u5410
u5411:
	goto	l4859
u5410:
	line	849
	
l4855:	
;main.c: 846: {
;main.c: 847: volatile unsigned long power_temp;
;main.c: 849: power_temp = (unsigned long)(((4096UL*1.2*1000))/adresult);
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

	line	850
	
l4857:	
;main.c: 850: power_ad = (unsigned int)(power_temp);
	movf	(workCtr@power_temp+1)^080h,w	;volatile
	movwf	(_power_ad+1)	;volatile
	movf	(workCtr@power_temp)^080h,w	;volatile
	movwf	(_power_ad)	;volatile
	line	852
	
l4859:	
;main.c: 851: }
;main.c: 852: if(workStep == 2 && power_ad < 2900)
		movlw	2
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u5421
	goto	u5420
u5421:
	goto	l4869
u5420:
	
l4861:	
	movlw	0Bh
	subwf	(_power_ad+1),w	;volatile
	movlw	054h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u5431
	goto	u5430
u5431:
	goto	l4869
u5430:
	line	854
	
l4863:	
;main.c: 853: {
;main.c: 854: if(++lowFanTime > 200)
	movlw	low(0C9h)
	incf	(_lowFanTime),f
	subwf	((_lowFanTime)),w
	skipc
	goto	u5441
	goto	u5440
u5441:
	goto	l4871
u5440:
	line	856
	
l4865:	
;main.c: 855: {
;main.c: 856: lowFanTime = 0;
	clrf	(_lowFanTime)
	line	857
	
l4867:	
;main.c: 857: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l4871
	line	862
	
l4869:	
;main.c: 860: else
;main.c: 861: {
;main.c: 862: lowFanTime = 0;
	clrf	(_lowFanTime)
	line	864
	
l4871:	
;main.c: 863: }
;main.c: 864: if(power_ad < 2800)
	movlw	0Ah
	subwf	(_power_ad+1),w	;volatile
	movlw	0F0h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u5451
	goto	u5450
u5451:
	goto	l4879
u5450:
	line	866
	
l4873:	
;main.c: 865: {
;main.c: 866: if(++lowBatTime > 200)
	movlw	low(0C9h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u5461
	goto	u5460
u5461:
	goto	l4881
u5460:
	line	868
	
l4875:	
;main.c: 867: {
;main.c: 868: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	869
	
l4877:	
;main.c: 869: lowBatLock = 1;
	clrf	(_lowBatLock)
	incf	(_lowBatLock),f
	line	870
;main.c: 870: workStep = 0;
	clrf	(_workStep)
	line	871
;main.c: 871: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	goto	l4881
	line	876
	
l4879:	
;main.c: 874: else
;main.c: 875: {
;main.c: 876: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	878
	
l4881:	
;main.c: 877: }
;main.c: 878: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u5471
	goto	u5470
u5471:
	goto	l4885
u5470:
	line	880
	
l4883:	
;main.c: 879: {
;main.c: 880: firstTime--;
	decf	(_firstTime),f
	line	881
;main.c: 881: }
	goto	l1158
	line	884
	
l4885:	
;main.c: 882: else
;main.c: 883: {
;main.c: 884: keyLedCtr();
	fcall	_keyLedCtr
	line	885
;main.c: 885: fanCtr();
	fcall	_fanCtr
	line	886
;main.c: 886: wuhuaCtr();
	fcall	_wuhuaCtr
	line	889
	
l1158:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_wuhuaCtr

;; *************** function _wuhuaCtr *****************
;; Defined at:
;;		line 808 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 200/0
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
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	808
global __ptext2
__ptext2:	;psect for function _wuhuaCtr
psect	text2
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	808
	global	__size_of_wuhuaCtr
	__size_of_wuhuaCtr	equ	__end_of_wuhuaCtr-_wuhuaCtr
	
_wuhuaCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _wuhuaCtr: [wreg+status,2+status,0+pclath+cstack]
	line	810
	
l4567:	
;main.c: 810: if(count1s == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_count1s)),w
	btfss	status,2
	goto	u4881
	goto	u4880
u4881:
	goto	l4573
u4880:
	line	812
	
l4569:	
;main.c: 811: {
;main.c: 812: if(++count10s >= 20)
	movlw	low(014h)
	incf	(_count10s),f
	subwf	((_count10s)),w
	skipc
	goto	u4891
	goto	u4890
u4891:
	goto	l4573
u4890:
	line	814
	
l4571:	
;main.c: 813: {
;main.c: 814: count10s = 0;
	clrf	(_count10s)
	line	817
	
l4573:	
;main.c: 815: }
;main.c: 816: }
;main.c: 817: if(wuhuaFlag == 1 || (wuhuaFlag == 2 && count10s < 10))
		decf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u4901
	goto	u4900
u4901:
	goto	l4579
u4900:
	
l4575:	
		movlw	2
	xorwf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u4911
	goto	u4910
u4911:
	goto	l4581
u4910:
	
l4577:	
	movlw	low(0Ah)
	subwf	(_count10s),w
	skipnc
	goto	u4921
	goto	u4920
u4921:
	goto	l4581
u4920:
	line	819
	
l4579:	
;main.c: 818: {
;main.c: 819: pwmInit();
	fcall	_pwmInit
	line	834
;main.c: 834: }
	goto	l1146
	line	837
	
l4581:	
;main.c: 835: else
;main.c: 836: {
;main.c: 837: pwmStop();
	fcall	_pwmStop
	line	839
	
l1146:	
	return
	opt stack 0
GLOBAL	__end_of_wuhuaCtr
	__end_of_wuhuaCtr:
	signat	_wuhuaCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 731 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_wuhuaCtr
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	731
global __ptext3
__ptext3:	;psect for function _pwmStop
psect	text3
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	731
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 3
; Regs used in _pwmStop: [status,2]
	line	733
	
l4285:	
;main.c: 733: PWMD0L = 0;
	clrf	(25)	;volatile
	line	734
	
l4287:	
;main.c: 734: PWMCON0 &= 0xFE;
	bcf	(21)+(0/8),(0)&7	;volatile
	line	735
	
l4289:	
;main.c: 735: PORTA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(5/8),(5)&7	;volatile
	line	736
	
l1117:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 719 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_wuhuaCtr
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	719
global __ptext4
__ptext4:	;psect for function _pwmInit
psect	text4
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	719
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 3
; Regs used in _pwmInit: [wreg+status,2+status,0]
	line	722
	
l4275:	
;main.c: 722: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	723
	
l4277:	
;main.c: 723: PWMTL = 73;
	movlw	low(049h)
	movwf	(23)	;volatile
	line	724
	
l4279:	
;main.c: 724: PWMD01H = 0x00;
	clrf	(30)	;volatile
	line	725
;main.c: 725: PWMD0L = 32;
	movlw	low(020h)
	movwf	(25)	;volatile
	line	726
;main.c: 726: PWMCON1 = 0x40;
	movlw	low(040h)
	movwf	(22)	;volatile
	line	727
	
l4281:	
;main.c: 727: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	728
	
l4283:	
;main.c: 728: PWMCON0 |= 0x21;
	movlw	low(021h)
	iorwf	(21),f	;volatile
	line	729
	
l1114:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_keyLedCtr

;; *************** function _keyLedCtr *****************
;; Defined at:
;;		line 673 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwmod
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	673
global __ptext5
__ptext5:	;psect for function _keyLedCtr
psect	text5
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	673
	global	__size_of_keyLedCtr
	__size_of_keyLedCtr	equ	__end_of_keyLedCtr-_keyLedCtr
	
_keyLedCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _keyLedCtr: [wreg+status,2+status,0+pclath+cstack]
	line	675
	
l4491:	
;main.c: 675: if(shanshuoTime > 0)
	movf	((_shanshuoTime)),w
iorwf	((_shanshuoTime+1)),w
	btfsc	status,2
	goto	u4731
	goto	u4730
u4731:
	goto	l4499
u4730:
	line	677
	
l4493:	
;main.c: 676: {
;main.c: 677: shanshuoTime--;
	movlw	01h
	subwf	(_shanshuoTime),f
	movlw	0
	skipc
	decf	(_shanshuoTime+1),f
	subwf	(_shanshuoTime+1),f
	line	678
	
l4495:	
;main.c: 678: if((shanshuoTime % 150) < 75)
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
	goto	u4741
	goto	u4740
u4741:
	goto	l1100
u4740:
	line	680
	
l4497:	
;main.c: 679: {
;main.c: 680: fanKeyFlag = 0;
	clrf	(_fanKeyFlag)
	line	681
;main.c: 681: }
	goto	l4505
	line	682
	
l1100:	
	line	684
;main.c: 682: else
;main.c: 683: {
;main.c: 684: fanKeyFlag = 1;
	clrf	(_fanKeyFlag)
	incf	(_fanKeyFlag),f
	goto	l4505
	line	687
	
l4499:	
;main.c: 687: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4751
	goto	u4750
u4751:
	goto	l4497
u4750:
	goto	l1100
	line	696
	
l4505:	
;main.c: 694: }
;main.c: 696: if(shanshuoTime2 > 0)
	movf	((_shanshuoTime2)),w
iorwf	((_shanshuoTime2+1)),w
	btfsc	status,2
	goto	u4761
	goto	u4760
u4761:
	goto	l4513
u4760:
	line	698
	
l4507:	
;main.c: 697: {
;main.c: 698: shanshuoTime2--;
	movlw	01h
	subwf	(_shanshuoTime2),f
	movlw	0
	skipc
	decf	(_shanshuoTime2+1),f
	subwf	(_shanshuoTime2+1),f
	line	699
	
l4509:	
;main.c: 699: if((shanshuoTime2 % 150) < 75)
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
	goto	u4771
	goto	u4770
u4771:
	goto	l1106
u4770:
	line	701
	
l4511:	
;main.c: 700: {
;main.c: 701: wuhuaKeyFlag = 0;
	clrf	(_wuhuaKeyFlag)
	line	702
;main.c: 702: }
	goto	l1111
	line	703
	
l1106:	
	line	705
;main.c: 703: else
;main.c: 704: {
;main.c: 705: wuhuaKeyFlag = 1;
	clrf	(_wuhuaKeyFlag)
	incf	(_wuhuaKeyFlag),f
	goto	l1111
	line	708
	
l4513:	
;main.c: 708: else if(wuhuaFlag > 0)
	movf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u4781
	goto	u4780
u4781:
	goto	l4511
u4780:
	goto	l1106
	line	717
	
l1111:	
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
;;  divisor         2    3[COMMON] unsigned int 
;;  dividend        2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
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
;; Hardware stack levels required when called:    2
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
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l4385:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u4601
	goto	u4600
u4601:
	goto	l4401
u4600:
	line	14
	
l4387:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l4391
	line	16
	
l4389:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l4391:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u4611
	goto	u4610
u4611:
	goto	l4389
u4610:
	line	20
	
l4393:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u4625
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u4625:
	skipc
	goto	u4621
	goto	u4620
u4621:
	goto	l4397
u4620:
	line	21
	
l4395:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l4397:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l4399:	
	decfsz	(___lwmod@counter),f
	goto	u4631
	goto	u4630
u4631:
	goto	l4393
u4630:
	line	25
	
l4401:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1746:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_fanCtr

;; *************** function _fanCtr *****************
;; Defined at:
;;		line 757 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       5       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
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
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	757
global __ptext7
__ptext7:	;psect for function _fanCtr
psect	text7
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	757
	global	__size_of_fanCtr
	__size_of_fanCtr	equ	__end_of_fanCtr-_fanCtr
	
_fanCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _fanCtr: [wreg+status,2+status,0+pclath+cstack]
	line	759
	
l4519:	
;main.c: 759: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4791
	goto	u4790
u4791:
	goto	l4561
u4790:
	line	761
	
l4521:	
;main.c: 760: {
;main.c: 761: PORTA |= 0x04;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(2/8),(2)&7	;volatile
	line	762
	
l4523:	
;main.c: 762: unsigned char maxFanValue = 52;
	movlw	low(034h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fanCtr@maxFanValue)
	line	763
	
l4525:	
;main.c: 763: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u4801
	goto	u4800
u4801:
	goto	l4529
u4800:
	line	765
	
l4527:	
;main.c: 764: {
;main.c: 765: maxFanValue = 40;
	movlw	low(028h)
	movwf	(fanCtr@maxFanValue)
	line	767
	
l4529:	
;main.c: 766: }
;main.c: 767: test_adc = ADC_Sample(13, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(0Dh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	768
	
l4531:	
;main.c: 768: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u4811
	goto	u4810
u4811:
	goto	l4541
u4810:
	line	771
	
l4533:	
;main.c: 769: {
;main.c: 770: volatile unsigned long fan_temp;
;main.c: 771: if(power_ad > 0)
	movf	((_power_ad)),w	;volatile
iorwf	((_power_ad+1)),w	;volatile
	btfsc	status,2
	goto	u4821
	goto	u4820
u4821:
	goto	l4541
u4820:
	line	773
	
l4535:	
;main.c: 772: {
;main.c: 773: fan_temp = ((unsigned long)1UL*adresult * power_ad)/4096;
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

	
l4537:	
	movlw	0Ch
u4835:
	clrc
	rrf	(fanCtr@fan_temp+3),f	;volatile
	rrf	(fanCtr@fan_temp+2),f	;volatile
	rrf	(fanCtr@fan_temp+1),f	;volatile
	rrf	(fanCtr@fan_temp),f	;volatile
	addlw	-1
	skipz
	goto	u4835

	line	774
	
l4539:	
;main.c: 774: fanValue = (unsigned int)(fan_temp);
	movf	(fanCtr@fan_temp+1),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fanValue+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(fanCtr@fan_temp),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fanValue)^080h
	line	777
	
l4541:	
;main.c: 775: }
;main.c: 776: }
;main.c: 777: if(fanValue > 1300)
	movlw	05h
	bsf	status, 5	;RP0=1, select bank1
	subwf	(_fanValue+1)^080h,w
	movlw	015h
	skipnz
	subwf	(_fanValue)^080h,w
	skipc
	goto	u4841
	goto	u4840
u4841:
	goto	l4549
u4840:
	line	779
	
l4543:	
;main.c: 778: {
;main.c: 779: if(++fanOverTime > 50)
	movlw	low(033h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_fanOverTime),f
	subwf	((_fanOverTime)),w
	skipc
	goto	u4851
	goto	u4850
u4851:
	goto	l4551
u4850:
	line	781
	
l4545:	
;main.c: 780: {
;main.c: 781: fanOverTime = 0;
	clrf	(_fanOverTime)
	line	782
;main.c: 782: workStep = 0;
	clrf	(_workStep)
	line	783
	
l4547:	
;main.c: 783: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	goto	l4551
	line	788
	
l4549:	
;main.c: 786: else
;main.c: 787: {
;main.c: 788: fanOverTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_fanOverTime)
	line	790
	
l4551:	
;main.c: 789: }
;main.c: 790: if(fanDuty < maxFanValue)
	movf	(fanCtr@maxFanValue),w
	subwf	(_fanDuty),w
	skipnc
	goto	u4861
	goto	u4860
u4861:
	goto	l4555
u4860:
	line	792
	
l4553:	
;main.c: 791: {
;main.c: 792: fanDuty++;
	incf	(_fanDuty),f
	line	793
;main.c: 793: }
	goto	l4559
	line	794
	
l4555:	
;main.c: 794: else if(fanDuty > maxFanValue)
	movf	(_fanDuty),w
	subwf	(fanCtr@maxFanValue),w
	skipnc
	goto	u4871
	goto	u4870
u4871:
	goto	l4559
u4870:
	line	796
	
l4557:	
;main.c: 795: {
;main.c: 796: fanDuty--;
	decf	(_fanDuty),f
	line	798
	
l4559:	
;main.c: 797: }
;main.c: 798: fanInit();
	fcall	_fanInit
	line	799
;main.c: 799: }
	goto	l1137
	line	802
	
l4561:	
;main.c: 800: else
;main.c: 801: {
;main.c: 802: fanStop();
	fcall	_fanStop
	line	803
	
l4563:	
;main.c: 803: fanDuty = 0;
	clrf	(_fanDuty)
	line	804
	
l4565:	
;main.c: 804: PORTA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(2/8),(2)&7	;volatile
	line	806
	
l1137:	
	return
	opt stack 0
GLOBAL	__end_of_fanCtr
	__end_of_fanCtr:
	signat	_fanCtr,89
	global	_fanStop

;; *************** function _fanStop *****************
;; Defined at:
;;		line 750 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;;		Nothing
;; This function is called by:
;;		_fanCtr
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	750
global __ptext8
__ptext8:	;psect for function _fanStop
psect	text8
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	750
	global	__size_of_fanStop
	__size_of_fanStop	equ	__end_of_fanStop-_fanStop
	
_fanStop:	
;incstack = 0
	opt	stack 3
; Regs used in _fanStop: [status,2]
	line	752
	
l4301:	
;main.c: 752: PWMD1L = 0;
	clrf	(26)	;volatile
	line	753
	
l4303:	
;main.c: 753: PWMCON0 &= 0xFD;
	bcf	(21)+(1/8),(1)&7	;volatile
	line	754
	
l4305:	
;main.c: 754: PORTB &= 0x7F;
	bcf	(6)+(7/8),(7)&7	;volatile
	line	755
	
l1123:	
	return
	opt stack 0
GLOBAL	__end_of_fanStop
	__end_of_fanStop:
	signat	_fanStop,89
	global	_fanInit

;; *************** function _fanInit *****************
;; Defined at:
;;		line 738 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fanCtr
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	738
global __ptext9
__ptext9:	;psect for function _fanInit
psect	text9
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	738
	global	__size_of_fanInit
	__size_of_fanInit	equ	__end_of_fanInit-_fanInit
	
_fanInit:	
;incstack = 0
	opt	stack 3
; Regs used in _fanInit: [wreg+status,2+status,0]
	line	741
	
l4291:	
;main.c: 741: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	742
	
l4293:	
;main.c: 742: PWMTL = 73;
	movlw	low(049h)
	movwf	(23)	;volatile
	line	743
	
l4295:	
;main.c: 743: PWMD01H = 0x00;
	clrf	(30)	;volatile
	line	744
;main.c: 744: PWMD1L = fanDuty;
	movf	(_fanDuty),w
	movwf	(26)	;volatile
	line	745
;main.c: 745: PWMCON1 = 0x40;
	movlw	low(040h)
	movwf	(22)	;volatile
	line	746
	
l4297:	
;main.c: 746: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	747
	
l4299:	
;main.c: 747: PWMCON0 |= 0x22;
	movlw	low(022h)
	iorwf	(21),f	;volatile
	line	748
	
l1120:	
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
;;  product         4    3[COMMON] unsigned long 
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
;; Hardware stack levels required when called:    2
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
	opt	stack 3
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	119
	
l4349:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	120
	
l1408:	
	line	121
	btfss	(___lmul@multiplier),(0)&7
	goto	u4491
	goto	u4490
u4491:
	goto	l4353
u4490:
	line	122
	
l4351:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4501
	addwf	(___lmul@product+1),f
u4501:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4502
	addwf	(___lmul@product+2),f
u4502:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4503
	addwf	(___lmul@product+3),f
u4503:

	line	123
	
l4353:	
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	124
	
l4355:	
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
	goto	u4511
	goto	u4510
u4511:
	goto	l1408
u4510:
	line	128
	
l4357:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	129
	
l1411:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 299 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;;  adldo           1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fanCtr
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	299
global __ptext11
__ptext11:	;psect for function _ADC_Sample
psect	text11
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	299
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 3
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	301
	
l4203:	
;main.c: 301: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	302
	
l4205:	
;main.c: 302: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	303
;main.c: 303: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	305
	
l4207:	
;main.c: 305: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u4291
	goto	u4290
u4291:
	goto	l4213
u4290:
	
l4209:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u4301
	goto	u4300
u4301:
	goto	l4213
u4300:
	line	308
	
l4211:	
;main.c: 306: {
;main.c: 308: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	309
;main.c: 309: _delay((unsigned long)((100)*(8000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
movwf	((??_ADC_Sample+0)+0),f
	u5607:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u5607
	nop
opt asmopt_pop

	line	310
;main.c: 310: }
	goto	l4215
	line	312
	
l4213:	
;main.c: 311: else
;main.c: 312: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	314
	
l4215:	
;main.c: 314: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u4311
	goto	u4310
u4311:
	goto	l4221
u4310:
	line	316
	
l4217:	
;main.c: 315: {
;main.c: 316: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	317
	
l4219:	
;main.c: 317: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	319
	
l4221:	
	line	320
	
l4223:	
;main.c: 320: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	322
	
l4229:	
;main.c: 321: {
;main.c: 322: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u4325:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u4325
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	323
# 323 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
nop ;# 
	line	324
# 324 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
nop ;# 
	line	325
# 325 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
nop ;# 
	line	326
# 326 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
nop ;# 
psect	text11
	line	327
	
l4231:	
;main.c: 327: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	329
	
l4233:	
;main.c: 329: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	330
;main.c: 330: while (GODONE)
	goto	l991
	
l992:	
	line	332
;main.c: 331: {
;main.c: 332: _delay((unsigned long)((2)*(8000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	334
;main.c: 334: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u4331
	goto	u4330
u4331:
	goto	l991
u4330:
	line	335
	
l4235:	
;main.c: 335: return 0;
	movlw	low(0)
	goto	l994
	line	336
	
l991:	
	line	330
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u4341
	goto	u4340
u4341:
	goto	l992
u4340:
	line	338
	
l4239:	
;main.c: 336: }
;main.c: 338: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l4241:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	340
	
l4243:	
;main.c: 340: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l4247
u4350:
	line	342
	
l4245:	
;main.c: 341: {
;main.c: 342: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	343
;main.c: 343: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	344
;main.c: 344: }
	goto	l997
	line	345
	
l4247:	
;main.c: 345: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u4365
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u4365:
	skipnc
	goto	u4361
	goto	u4360
u4361:
	goto	l4251
u4360:
	line	346
	
l4249:	
;main.c: 346: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l997
	line	347
	
l4251:	
;main.c: 347: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u4375
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u4375:
	skipnc
	goto	u4371
	goto	u4370
u4371:
	goto	l997
u4370:
	line	348
	
l4253:	
;main.c: 348: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	350
	
l997:	
;main.c: 350: adsum += ad_temp;
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
	goto	u4381
	addwf	(ADC_Sample@adsum+1),f	;volatile
u4381:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4382
	addwf	(ADC_Sample@adsum+2),f	;volatile
u4382:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4383
	addwf	(ADC_Sample@adsum+3),f	;volatile
u4383:

	line	320
	
l4255:	
	incf	(ADC_Sample@i),f
	
l4257:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u4391
	goto	u4390
u4391:
	goto	l4229
u4390:
	line	352
	
l4259:	
;main.c: 351: }
;main.c: 352: adsum -= admax;
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
	goto	u4405
	goto	u4406
u4405:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u4406:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u4407
	goto	u4408
u4407:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u4408:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u4409
	goto	u4400
u4409:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u4400:

	line	353
;main.c: 353: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u4415
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u4415
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u4415
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u4415:
	skipc
	goto	u4411
	goto	u4410
u4411:
	goto	l1001
u4410:
	line	354
	
l4261:	
;main.c: 354: adsum -= admin;
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
	goto	u4425
	goto	u4426
u4425:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u4426:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u4427
	goto	u4428
u4427:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u4428:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u4429
	goto	u4420
u4429:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u4420:

	goto	l4263
	line	355
	
l1001:	
	line	356
;main.c: 355: else
;main.c: 356: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	358
	
l4263:	
;main.c: 358: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u4435:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u4430:
	addlw	-1
	skipz
	goto	u4435
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	360
	
l4265:	
;main.c: 360: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	361
	
l4267:	
;main.c: 361: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	362
	
l4269:	
;main.c: 362: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	363
	
l4271:	
;main.c: 363: return 0xA5;
	movlw	low(0A5h)
	line	365
	
l994:	
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
;; Hardware stack levels required when called:    3
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
	opt	stack 3
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l4759:	
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
	
l1751:	
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
;; Hardware stack levels required when called:    2
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
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l4693:	
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
	goto	u5101
	goto	u5100
u5101:
	goto	l4697
u5100:
	line	50
	
l4695:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l1642
	line	51
	
l4697:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u5115:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u5110:
	addlw	-1
	skipz
	goto	u5115
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l4699:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l4701:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l4703:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l4705:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l4707:	
	btfss	(___fttol@exp1),7
	goto	u5121
	goto	u5120
u5121:
	goto	l4717
u5120:
	line	57
	
l4709:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u5131
	goto	u5130
u5131:
	goto	l4713
u5130:
	goto	l4695
	line	60
	
l4713:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l4715:	
	incfsz	(___fttol@exp1),f
	goto	u5141
	goto	u5140
u5141:
	goto	l4713
u5140:
	goto	l4725
	line	63
	
l4717:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u5151
	goto	u5150
u5151:
	goto	l4723
u5150:
	goto	l4695
	line	66
	
l4721:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	65
	
l4723:	
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u5161
	goto	u5160
u5161:
	goto	l4721
u5160:
	line	70
	
l4725:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u5171
	goto	u5170
u5171:
	goto	l4729
u5170:
	line	71
	
l4727:	
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
	
l4729:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l1642:	
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
;; Hardware stack levels required when called:    3
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
	opt	stack 3
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l4653:	
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
	goto	u5061
	goto	u5060
u5061:
	goto	l4657
u5060:
	line	64
	
l4655:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1606
	line	65
	
l4657:	
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
	goto	u5071
	goto	u5070
u5071:
	goto	l1607
u5070:
	line	66
	
l4659:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1606
	
l1607:	
	line	67
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	68
	
l4661:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l4663:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l4665:	
	movf	0+(___ftdiv@f2)+02h,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l4667:	
	movlw	low(080h)
	andwf	(___ftdiv@sign),f
	line	72
	
l4669:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l4671:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l4673:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l4675:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l4677:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l4679:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u5085
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u5085
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u5085:
	skipc
	goto	u5081
	goto	u5080
u5081:
	goto	l4685
u5080:
	line	80
	
l4681:	
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
	
l4683:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l4685:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	84
	
l4687:	
	decfsz	(___ftdiv@cntr),f
	goto	u5091
	goto	u5090
u5091:
	goto	l4679
u5090:
	line	85
	
l4689:	
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
	
l1606:	
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
;;  arg             3    3[COMMON] unsigned um
;;  exp             1    6[COMMON] unsigned char 
;;  sign            1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    3[COMMON] float 
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
;; Hardware stack levels required when called:    2
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
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l4361:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u4521
	goto	u4520
u4521:
	goto	l1553
u4520:
	
l4363:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u4531
	goto	u4530
u4531:
	goto	l4367
u4530:
	
l1553:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l1554
	line	67
	
l4365:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l4367:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4541
	goto	u4540
u4541:
	goto	l4365
u4540:
	goto	l4371
	line	71
	
l4369:	
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
	
l4371:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l4369
u4550:
	goto	l4375
	line	76
	
l4373:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l4375:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u4561
	goto	u4560
u4561:
	goto	l1565
u4560:
	
l4377:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u4571
	goto	u4570
u4571:
	goto	l4373
u4570:
	
l1565:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u4581
	goto	u4580
u4581:
	goto	l1566
u4580:
	line	80
	
l4379:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l1566:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l4381:	
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
	goto	u4591
	goto	u4590
u4591:
	goto	l1567
u4590:
	line	84
	
l4383:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1567:	
	line	85
	line	86
	
l1554:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_setBatStep

;; *************** function _setBatStep *****************
;; Defined at:
;;		line 547 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 200/0
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
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	547
global __ptext16
__ptext16:	;psect for function _setBatStep
psect	text16
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	547
	global	__size_of_setBatStep
	__size_of_setBatStep	equ	__end_of_setBatStep-_setBatStep
	
_setBatStep:	
;incstack = 0
	opt	stack 4
; Regs used in _setBatStep: [wreg+status,2+status,0+pclath+cstack]
	line	549
	
l4797:	
;main.c: 549: if(lowBatLock == 1)
	bcf	status, 5	;RP0=0, select bank0
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u5251
	goto	u5250
u5251:
	goto	l4801
u5250:
	line	551
	
l4799:	
;main.c: 550: {
;main.c: 551: showBatStep = 0;
	clrf	(_showBatStep)
	line	552
;main.c: 552: curBatStep = 0;
	clrf	(_curBatStep)
	line	553
;main.c: 553: }
	goto	l1083
	line	554
	
l4801:	
;main.c: 554: else if(power_ad < 2800)
	movlw	0Ah
	subwf	(_power_ad+1),w	;volatile
	movlw	0F0h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u5261
	goto	u5260
u5261:
	goto	l4813
u5260:
	line	556
	
l4803:	
;main.c: 555: {
;main.c: 556: if(count10s == 0 && count1s == 0)
	movf	((_count10s)),w
	btfss	status,2
	goto	u5271
	goto	u5270
u5271:
	goto	l1067
u5270:
	
l4805:	
	movf	((_count1s)),w
	btfss	status,2
	goto	u5281
	goto	u5280
u5281:
	goto	l1067
u5280:
	line	558
	
l4807:	
;main.c: 557: {
;main.c: 558: if(showBatStep > 1)
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u5291
	goto	u5290
u5291:
	goto	l1068
u5290:
	line	560
	
l4809:	
;main.c: 559: {
;main.c: 560: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u5301
	goto	u5300
u5301:
	goto	l1070
u5300:
	line	561
	
l4811:	
;main.c: 561: showBatStep--;
	decf	(_showBatStep),f
	goto	l1070
	line	563
	
l1068:	
	line	565
;main.c: 563: else
;main.c: 564: {
;main.c: 565: showBatStep = 1;
	clrf	(_showBatStep)
	incf	(_showBatStep),f
	line	566
	
l1070:	
	line	567
;main.c: 566: }
;main.c: 567: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	line	568
	
l1067:	
	line	569
;main.c: 568: }
;main.c: 569: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	line	570
;main.c: 570: }
	goto	l1083
	line	573
	
l4813:	
;main.c: 571: else
;main.c: 572: {
;main.c: 573: if(power_ad < 3600)
	movlw	0Eh
	subwf	(_power_ad+1),w	;volatile
	movlw	010h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u5311
	goto	u5310
u5311:
	goto	l4817
u5310:
	line	575
	
l4815:	
;main.c: 574: {
;main.c: 575: curBatStep = (power_ad - 2800)/40;
	movlw	028h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_power_ad),w	;volatile
	addlw	low(0F510h)
	movwf	(___lwdiv@dividend)
	movf	(_power_ad+1),w	;volatile
	skipnc
	addlw	1
	addlw	high(0F510h)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(_curBatStep)
	line	576
;main.c: 576: }
	goto	l4819
	line	579
	
l4817:	
;main.c: 577: else
;main.c: 578: {
;main.c: 579: curBatStep = 20 + ((power_ad - 3600)/6);
	movlw	06h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_power_ad),w	;volatile
	addlw	low(0F1F0h)
	movwf	(___lwdiv@dividend)
	movf	(_power_ad+1),w	;volatile
	skipnc
	addlw	1
	addlw	high(0F1F0h)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	014h
	movwf	(_curBatStep)
	line	581
	
l4819:	
;main.c: 580: }
;main.c: 581: if(curBatStep > 99)
	movlw	low(064h)
	subwf	(_curBatStep),w
	skipc
	goto	u5321
	goto	u5320
u5321:
	goto	l4823
u5320:
	line	583
	
l4821:	
;main.c: 582: {
;main.c: 583: curBatStep = 99;
	movlw	low(063h)
	movwf	(_curBatStep)
	line	586
	
l4823:	
;main.c: 584: }
;main.c: 586: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u5331
	goto	u5330
u5331:
	goto	l4837
u5330:
	line	588
	
l4825:	
;main.c: 587: {
;main.c: 588: if(curBatStep > showBatStep)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u5341
	goto	u5340
u5341:
	goto	l4835
u5340:
	line	590
	
l4827:	
;main.c: 589: {
;main.c: 590: if(++count30s >= 10000 && showBatStep < 99)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_count30s)^080h,f
	skipnz
	incf	(_count30s+1)^080h,f
	movlw	027h
	subwf	((_count30s+1)^080h),w
	movlw	010h
	skipnz
	subwf	((_count30s)^080h),w
	skipc
	goto	u5351
	goto	u5350
u5351:
	goto	l1071
u5350:
	
l4829:	
	movlw	low(063h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_showBatStep),w
	skipnc
	goto	u5361
	goto	u5360
u5361:
	goto	l1071
u5360:
	line	592
	
l4831:	
;main.c: 591: {
;main.c: 592: count30s = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_count30s)^080h
	clrf	(_count30s+1)^080h
	line	593
	
l4833:	
;main.c: 593: showBatStep++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_showBatStep),f
	goto	l1083
	line	599
	
l4835:	
;main.c: 597: else
;main.c: 598: {
;main.c: 599: count30s = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_count30s)^080h
	clrf	(_count30s+1)^080h
	goto	l1083
	line	604
	
l4837:	
;main.c: 602: else
;main.c: 603: {
;main.c: 604: if(curBatStep < showBatStep && showBatStep > 1)
	movf	(_showBatStep),w
	subwf	(_curBatStep),w
	skipnc
	goto	u5371
	goto	u5370
u5371:
	goto	l4835
u5370:
	
l4839:	
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u5381
	goto	u5380
u5381:
	goto	l4835
u5380:
	line	606
	
l4841:	
;main.c: 605: {
;main.c: 606: if(++count30s >= 2500 && showBatStep > 1)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_count30s)^080h,f
	skipnz
	incf	(_count30s+1)^080h,f
	movlw	09h
	subwf	((_count30s+1)^080h),w
	movlw	0C4h
	skipnz
	subwf	((_count30s)^080h),w
	skipc
	goto	u5391
	goto	u5390
u5391:
	goto	l1071
u5390:
	
l4843:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_showBatStep),w
	skipc
	goto	u5401
	goto	u5400
u5401:
	goto	l1071
u5400:
	line	608
	
l4845:	
;main.c: 607: {
;main.c: 608: count30s = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_count30s)^080h
	clrf	(_count30s+1)^080h
	line	609
	
l4847:	
;main.c: 609: showBatStep--;
	bcf	status, 5	;RP0=0, select bank0
	decf	(_showBatStep),f
	goto	l1083
	line	618
	
l1071:	
	line	619
	
l1083:	
	return
	opt stack 0
GLOBAL	__end_of_setBatStep
	__end_of_setBatStep:
	signat	_setBatStep,89
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] unsigned int 
;;  dividend        2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    1[BANK0 ] unsigned int 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       3       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setBatStep
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
	line	6
global __ptext17
__ptext17:	;psect for function ___lwdiv
psect	text17
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l4733:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l4735:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u5181
	goto	u5180
u5181:
	goto	l4755
u5180:
	line	16
	
l4737:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l4741
	line	18
	
l4739:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l4741:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u5191
	goto	u5190
u5191:
	goto	l4739
u5190:
	line	22
	
l4743:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l4745:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u5205
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u5205:
	skipc
	goto	u5201
	goto	u5200
u5201:
	goto	l4751
u5200:
	line	24
	
l4747:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l4749:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l4751:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l4753:	
	decfsz	(___lwdiv@counter),f
	goto	u5211
	goto	u5210
u5211:
	goto	l4743
u5210:
	line	30
	
l4755:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l1736:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 621 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;;		_showBatLed
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	621
global __ptext18
__ptext18:	;psect for function _chrgCtr
psect	text18
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	621
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _chrgCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	623
	
l4003:	
;main.c: 623: if(PORTB & 0x01)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),(0)&7	;volatile
	goto	u3951
	goto	u3950
u3951:
	goto	l4019
u3950:
	line	625
	
l4005:	
;main.c: 624: {
;main.c: 625: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	626
	
l4007:	
;main.c: 626: firstLock = 0;
	clrf	(_firstLock)
	line	627
;main.c: 627: lowBatLock = 0;
	clrf	(_lowBatLock)
	line	628
	
l4009:	
;main.c: 628: showBatLed();
	fcall	_showBatLed
	line	629
	
l4011:	
;main.c: 629: if(PORTB & 0x02)
	btfss	(6),(1)&7	;volatile
	goto	u3961
	goto	u3960
u3961:
	goto	l4015
u3960:
	line	631
	
l4013:	
;main.c: 630: {
;main.c: 631: if(++chrgFullTime > 200)
	movlw	low(0C9h)
	incf	(_chrgFullTime),f
	subwf	((_chrgFullTime)),w
	skipc
	goto	u3971
	goto	u3970
u3971:
	goto	l1096
u3970:
	line	633
	
l4015:	
;main.c: 634: chrgFullFlag = 1;
	clrf	(_chrgFullTime)
	goto	l1096
	line	645
	
l4019:	
;main.c: 643: else
;main.c: 644: {
;main.c: 645: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	646
;main.c: 647: chrgFullFlag = 0;
	clrf	(_chrgFullTime)
	line	649
	
l4021:	
;main.c: 649: if(firstTime == 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l4031
u3980:
	line	651
	
l4023:	
;main.c: 650: {
;main.c: 651: if(workStep == 0 && wuhuaFlag == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l4029
u3990:
	
l4025:	
	movf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l4029
u4000:
	line	653
	
l4027:	
;main.c: 652: {
;main.c: 653: showNumShi = 0;
	clrf	(_showNumShi)
	line	654
;main.c: 654: showNumGe = 0;
	clrf	(_showNumGe)
	line	655
;main.c: 655: }
	goto	l1096
	line	658
	
l4029:	
;main.c: 656: else
;main.c: 657: {
;main.c: 658: showBatLed();
	fcall	_showBatLed
	goto	l1096
	line	663
	
l4031:	
;main.c: 661: else
;main.c: 662: {
;main.c: 663: if(showBatStep < curBatStep)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u4011
	goto	u4010
u4011:
	goto	l1095
u4010:
	line	665
	
l4033:	
;main.c: 664: {
;main.c: 665: showBatStep = curBatStep;
	movf	(_curBatStep),w
	movwf	(_showBatStep)
	line	666
	
l1095:	
	line	667
;main.c: 666: }
;main.c: 667: showNumShi = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumShi)
	line	668
;main.c: 668: showNumGe = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumGe)
	line	671
	
l1096:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_showBatLed

;; *************** function _showBatLed *****************
;; Defined at:
;;		line 541 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;;		___lbdiv
;;		___lbmod
;; This function is called by:
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	541
global __ptext19
__ptext19:	;psect for function _showBatLed
psect	text19
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	541
	global	__size_of_showBatLed
	__size_of_showBatLed	equ	__end_of_showBatLed-_showBatLed
	
_showBatLed:	
;incstack = 0
	opt	stack 3
; Regs used in _showBatLed: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	543
	
l3383:	
;main.c: 543: showNumShi = numArray[showBatStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_showBatStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumShi)
	line	544
;main.c: 544: showNumGe = numArray[showBatStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_showBatStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumGe)
	line	545
	
l1061:	
	return
	opt stack 0
GLOBAL	__end_of_showBatLed
	__end_of_showBatLed:
	signat	_showBatLed,89
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    5[COMMON] unsigned char 
;;  rem             1    7[COMMON] unsigned char 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_showBatLed
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
global __ptext20
__ptext20:	;psect for function ___lbmod
psect	text20
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	movwf	(___lbmod@dividend)
	line	9
	
l3253:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3255:	
	clrf	(___lbmod@rem)
	line	12
	
l3257:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2525:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2525
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3259:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3261:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l3265
u2530:
	line	15
	
l3263:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3265:	
	decfsz	(___lbmod@counter),f
	goto	u2541
	goto	u2540
u2541:
	goto	l3257
u2540:
	line	17
	
l3267:	
	movf	(___lbmod@rem),w
	line	18
	
l1668:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    4[COMMON] unsigned char 
;;  quotient        1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_showBatLed
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
global __ptext21
__ptext21:	;psect for function ___lbdiv
psect	text21
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	movwf	(___lbdiv@dividend)
	line	9
	
l3229:	
	clrf	(___lbdiv@quotient)
	line	10
	
l3231:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l3249
u2480:
	line	11
	
l3233:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l3237
	
l1657:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l3235:	
	incf	(___lbdiv@counter),f
	line	12
	
l3237:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l1657
u2490:
	line	16
	
l1659:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l3239:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l3245
u2500:
	line	19
	
l3241:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l3243:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l3245:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l3247:	
	decfsz	(___lbdiv@counter),f
	goto	u2511
	goto	u2510
u2511:
	goto	l1659
u2510:
	line	25
	
l3249:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1662:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_WorkSleep

;; *************** function _WorkSleep *****************
;; Defined at:
;;		line 221 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Refurbish_Sfr
;;		_SystemEnterSleep
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	221
global __ptext22
__ptext22:	;psect for function _WorkSleep
psect	text22
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	221
	global	__size_of_WorkSleep
	__size_of_WorkSleep	equ	__end_of_WorkSleep-_WorkSleep
	
_WorkSleep:	
;incstack = 0
	opt	stack 2
; Regs used in _WorkSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	226
	
l4763:	
;main.c: 224: static unsigned char time;
;main.c: 226: if(B_OnOff)time = 0;
	btfss	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	goto	u5221
	goto	u5220
u5221:
	goto	l4767
u5220:
	
l4765:	
	clrf	(WorkSleep@time)
	line	228
	
l4767:	
;main.c: 228: if(++time >= 125)
	movlw	low(07Dh)
	incf	(WorkSleep@time),f
	subwf	((WorkSleep@time)),w
	skipc
	goto	u5231
	goto	u5230
u5231:
	goto	l983
u5230:
	line	230
	
l4769:	
;main.c: 229: {
;main.c: 230: time = 0;
	clrf	(WorkSleep@time)
	line	231
;main.c: 231: INTCON = 0;
	clrf	(11)	;volatile
	line	232
;main.c: 232: PIE1 = 0;
	clrf	(14)	;volatile
	line	233
;main.c: 233: PIE2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(272)^0100h	;volatile
	line	234
;main.c: 234: PIR1 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(13)	;volatile
	line	235
;main.c: 235: PIR2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(271)^0100h	;volatile
	line	236
;main.c: 236: T2CON = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	237
;main.c: 237: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	240
;main.c: 240: ADCON0 = 0;
	clrf	(149)^080h	;volatile
	line	243
;main.c: 243: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	244
;main.c: 244: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	245
;main.c: 245: TRISC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	246
;main.c: 246: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	248
	
l4771:	
;main.c: 248: TRISB0 =1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	250
	
l4773:	
;main.c: 250: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	251
	
l4775:	
;main.c: 251: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	252
	
l4777:	
;main.c: 252: IOCB0= 1;
	bsf	(72/8),(72)&7	;volatile
	line	253
	
l4779:	
;main.c: 253: PORTB;
	movf	(6),w	;volatile
	line	265
	
l4781:	
;main.c: 265: SystemEnterSleep();
	fcall	_SystemEnterSleep
	line	266
	
l4783:	
;main.c: 266: if(RAIF)
	btfss	(107/8),(107)&7	;volatile
	goto	u5241
	goto	u5240
u5241:
	goto	l4789
u5240:
	line	268
	
l4785:	
;main.c: 267: {
;main.c: 268: RAIF = 0;
	bcf	(107/8),(107)&7	;volatile
	line	269
	
l4787:	
;main.c: 269: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	272
	
l4789:	
;main.c: 270: }
;main.c: 272: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	273
	
l4791:	
;main.c: 273: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	274
	
l4793:	
;main.c: 274: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	275
	
l4795:	
;main.c: 275: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	278
	
l983:	
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
;;  92              2    9[BANK0 ] unsigned int 
;;  93              2    7[BANK0 ] unsigned int 
;;  94              2    5[BANK0 ] unsigned int 
;;  91              1   11[BANK0 ] unsigned char 
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
;;      Temps:          2       0       0       0
;;      Totals:         2       7       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ClearResSum
;;		_GetTouchKeyValue
;;		_KeyClearOne
;; This function is called by:
;;		_WorkSleep
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
global __ptext23
__ptext23:	;psect for function _SystemEnterSleep
psect	text23
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_SystemEnterSleep
	__size_of_SystemEnterSleep	equ	__end_of_SystemEnterSleep-_SystemEnterSleep
	
_SystemEnterSleep:	
;incstack = 0
	opt	stack 2
; Regs used in _SystemEnterSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l4405:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text23
	
l1378:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text23
	
l4407:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	
l4409:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(1),f	;volatile
	
l4411:	
	bsf	(1)+(3/8),(3)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text23
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\TouchKeyConst.h"
	line	5
	
l4413:	
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text23
	
l4415:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	
l4417:	
	clrf	(275)^0100h	;volatile
	
l4419:	
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
sleep ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text23
	
l4421:	
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	
l4423:	
	movlw	low(079h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(275)^0100h	;volatile
	
l4425:	
	fcall	_ClearResSum
	
l4427:	
	bsf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	
l4429:	
	fcall	_GetTouchKeyValue
	
l4431:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SystemEnterSleep@91)
	
l4433:	
	clrf	(SystemEnterSleep@92)
	incf	(SystemEnterSleep@92),f
	clrf	(SystemEnterSleep@92+1)
	
l4435:	
	btfsc	(88/8),(88)&7	;volatile
	goto	u4641
	goto	u4640
u4641:
	goto	l4441
u4640:
	
l4437:	
	btfsc	(89/8),(89)&7	;volatile
	goto	u4651
	goto	u4650
u4651:
	goto	l4441
u4650:
	
l4439:	
	btfss	(107/8),(107)&7	;volatile
	goto	u4661
	goto	u4660
u4661:
	goto	l4453
u4660:
	
l4441:	
	fcall	_ClearResSum
	
l4443:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	
l4445:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4447:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	l1382
	
l4453:	
	movf	(SystemEnterSleep@92),w
	andlw	03h
	btfsc	status,2
	goto	u4671
	goto	u4670
u4671:
	goto	l4487
u4670:
	
l4455:	
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
	
l4457:	
	movf	((SystemEnterSleep@93)),w
iorwf	((SystemEnterSleep@93+1)),w
	btfsc	status,2
	goto	u4681
	goto	u4680
u4681:
	goto	l4487
u4680:
	
l4459:	
	movf	(SystemEnterSleep@91),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addwf	(SystemEnterSleep@94),f
	skipnc
	incf	(SystemEnterSleep@94+1),f
	
l4461:	
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
	goto	u4695
	movf	(SystemEnterSleep@94),w
	subwf	0+(??_SystemEnterSleep+0)+0,w
u4695:
	skipc
	goto	u4691
	goto	u4690
u4691:
	goto	l4485
u4690:
	
l4463:	
	clrf	(SystemEnterSleep@91)
	
l4465:	
	clrf	(SystemEnterSleep@92)
	incf	(SystemEnterSleep@92),f
	clrf	(SystemEnterSleep@92+1)
	
l4467:	
	movf	(SystemEnterSleep@92),w
	andlw	03h
	btfss	status,2
	goto	u4701
	goto	u4700
u4701:
	goto	l4471
u4700:
	
l4469:	
	movf	(SystemEnterSleep@91),w
	fcall	_KeyClearOne
	
l4471:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(SystemEnterSleep@92),f
	rlf	(SystemEnterSleep@92+1),f
	
l4473:	
	movlw	low(02h)
	incf	(SystemEnterSleep@91),f
	subwf	((SystemEnterSleep@91)),w
	skipc
	goto	u4711
	goto	u4710
u4711:
	goto	l4467
u4710:
	goto	l4441
	
l4485:	
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
	
l4487:	
	clrc
	rlf	(SystemEnterSleep@92),f
	rlf	(SystemEnterSleep@92+1),f
	
l4489:	
	movlw	low(02h)
	incf	(SystemEnterSleep@91),f
	subwf	((SystemEnterSleep@91)),w
	skipc
	goto	u4721
	goto	u4720
u4721:
	goto	l4453
u4720:
	goto	l1378
	
l1382:	
	return
	opt stack 0
GLOBAL	__end_of_SystemEnterSleep
	__end_of_SystemEnterSleep:
	signat	_SystemEnterSleep,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 116 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WorkSleep
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	116
global __ptext24
__ptext24:	;psect for function _Refurbish_Sfr
psect	text24
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	116
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 4
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	119
	
l3291:	
;main.c: 119: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(14)	;volatile
	line	120
;main.c: 120: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	121
;main.c: 121: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	122
	
l3293:	
;main.c: 122: if (4 != T2CON)
		movlw	4
	xorwf	((19)),w	;volatile
	btfsc	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l943
u2590:
	line	123
	
l3295:	
;main.c: 123: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	124
	
l943:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 130 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	130
global __ptext25
__ptext25:	;psect for function _KeyServer
psect	text25
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	130
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 5
; Regs used in _KeyServer: [wreg+status,2+status,0]
	line	133
	
l3793:	
;main.c: 132: static unsigned char KeyOldFlag = 0;
;main.c: 133: if (KeyFlag[0])
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l3843
u3360:
	line	135
	
l3795:	
;main.c: 134: {
;main.c: 135: if (KeyFlag[0] != KeyOldFlag)
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),w
	skipnz
	goto	u3371
	goto	u3370
u3371:
	goto	l963
u3370:
	line	138
	
l3797:	
;main.c: 136: {
;main.c: 138: KeyOldFlag ^= KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),f
	line	139
	
l3799:	
;main.c: 139: if ((KeyOldFlag & 0x1) && (KeyFlag[0] & 0x1) && firstLock == 0)
	btfss	(KeyServer@KeyOldFlag),(0)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l3819
u3380:
	
l3801:	
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u3391
	goto	u3390
u3391:
	goto	l3819
u3390:
	
l3803:	
	movf	((_firstLock)),w
	btfss	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l3819
u3400:
	line	142
	
l3805:	
;main.c: 140: {
;main.c: 142: if(lowBatLock == 1)
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l3809
u3410:
	line	144
	
l3807:	
;main.c: 143: {
;main.c: 144: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	line	145
;main.c: 145: }
	goto	l3813
	line	146
	
l3809:	
;main.c: 146: else if(++workStep > 2)
	movlw	low(03h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l3813
u3420:
	line	148
	
l3811:	
;main.c: 147: {
;main.c: 148: workStep = 0;
	clrf	(_workStep)
	line	150
	
l3813:	
;main.c: 149: }
;main.c: 150: if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l3817
u3430:
	line	152
	
l3815:	
;main.c: 151: {
;main.c: 152: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	line	153
;main.c: 153: }
	goto	l3819
	line	156
	
l3817:	
;main.c: 154: else
;main.c: 155: {
;main.c: 156: shanshuoTime = 0;
	clrf	(_shanshuoTime)
	clrf	(_shanshuoTime+1)
	line	159
	
l3819:	
;main.c: 157: }
;main.c: 158: }
;main.c: 159: if ((KeyOldFlag & 0x2) && (KeyFlag[0] & 0x2) && firstLock == 0)
	btfss	(KeyServer@KeyOldFlag),(1)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l3841
u3440:
	
l3821:	
	btfss	(_KeyFlag),(1)&7	;volatile
	goto	u3451
	goto	u3450
u3451:
	goto	l3841
u3450:
	
l3823:	
	movf	((_firstLock)),w
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l3841
u3460:
	line	162
	
l3825:	
;main.c: 160: {
;main.c: 162: if(lowBatLock == 1)
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l3829
u3470:
	line	164
	
l3827:	
;main.c: 163: {
;main.c: 164: shanshuoTime2 = 450;
	movlw	0C2h
	movwf	(_shanshuoTime2)
	movlw	01h
	movwf	((_shanshuoTime2))+1
	line	165
;main.c: 165: }
	goto	l3833
	line	166
	
l3829:	
;main.c: 166: else if(++wuhuaFlag > 2)
	movlw	low(03h)
	incf	(_wuhuaFlag),f
	subwf	((_wuhuaFlag)),w
	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l3833
u3480:
	line	168
	
l3831:	
;main.c: 167: {
;main.c: 168: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	line	170
	
l3833:	
;main.c: 169: }
;main.c: 170: if(wuhuaFlag == 2)
		movlw	2
	xorwf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l3839
u3490:
	line	172
	
l3835:	
;main.c: 171: {
;main.c: 172: shanshuoTime2 = 450;
	movlw	0C2h
	movwf	(_shanshuoTime2)
	movlw	01h
	movwf	((_shanshuoTime2))+1
	line	173
	
l3837:	
;main.c: 173: count10s = 0;
	clrf	(_count10s)
	line	174
;main.c: 174: }
	goto	l3841
	line	177
	
l3839:	
;main.c: 175: else
;main.c: 176: {
;main.c: 177: shanshuoTime2 = 0;
	clrf	(_shanshuoTime2)
	clrf	(_shanshuoTime2+1)
	line	182
	
l3841:	
;main.c: 178: }
;main.c: 179: }
;main.c: 182: KeyOldFlag = KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	movwf	(KeyServer@KeyOldFlag)
	goto	l963
	line	187
	
l3843:	
;main.c: 185: else
;main.c: 186: {
;main.c: 187: KeyOldFlag = 0;
	clrf	(KeyServer@KeyOldFlag)
	line	189
	
l963:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 79 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	79
global __ptext26
__ptext26:	;psect for function _Init_System
psect	text26
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	79
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	81
	
l3763:	
# 81 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
nop ;# 
	line	82
# 82 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
clrwdt ;# 
psect	text26
	line	83
	
l3765:	
;main.c: 83: INTCON = 0;
	clrf	(11)	;volatile
	line	84
	
l3767:	
;main.c: 84: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	85
	
l3769:	
;main.c: 85: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	90
	
l3771:	
;main.c: 90: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	91
	
l3773:	
;main.c: 91: PORTA = 0;
	clrf	(134)^080h	;volatile
	line	92
;main.c: 92: TRISB = 0x23;
	movlw	low(023h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	93
	
l3775:	
;main.c: 93: PORTB = 0;
	clrf	(6)	;volatile
	line	94
	
l3777:	
;main.c: 94: WPUB = 0x02;
	movlw	low(02h)
	movwf	(8)	;volatile
	line	95
;main.c: 95: TRISC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	96
;main.c: 96: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	98
	
l3779:	
;main.c: 98: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	99
	
l3781:	
;main.c: 99: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	100
	
l3783:	
;main.c: 100: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	102
	
l3785:	
;main.c: 102: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	103
	
l3787:	
;main.c: 103: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	104
	
l3789:	
;main.c: 104: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	105
	
l3791:	
;main.c: 105: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	106
	
l939:	
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
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
global __ptext27
__ptext27:	;psect for function _CheckTouchKey
psect	text27
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 2
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l4887:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text27
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u5481
	goto	u5480
u5481:
	goto	l1366
u5480:
	
l4889:	
	fcall	_GetTouchKeyValue
	
l4891:	
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u5491
	goto	u5490
u5491:
	goto	l4921
u5490:
	
l4893:	
	clrf	(_KeyCounter)
	
l4895:	
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l4921
	
l1366:	
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u5501
	goto	u5500
u5501:
	goto	l4915
u5500:
	
l4897:	
	fcall	_CheckOnceResult
	fcall	_TurnKeyFlags
	
l4899:	
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4901:	
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u5511
	goto	u5510
u5511:
	goto	l4905
u5510:
	
l4903:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u5521
	goto	u5520
u5521:
	goto	l4913
u5520:
	
l4905:	
	fcall	_KeyStopClear
	
l4907:	
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l4909:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4911:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4913:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	goto	l4921
	
l4915:	
	fcall	_CheckKeyOldValue
	fcall	_ClearResSum
	
l4917:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4919:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4921:	
	fcall	_CheckValidTime
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text27
	
l1374:	
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
psect	text28,local,class=CODE,delta=2,merge=1,group=1
global __ptext28
__ptext28:	;psect for function _TurnKeyFlags
psect	text28
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_TurnKeyFlags
	__size_of_TurnKeyFlags	equ	__end_of_TurnKeyFlags-_TurnKeyFlags
	
_TurnKeyFlags:	
;incstack = 0
	opt	stack 2
; Regs used in _TurnKeyFlags: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3605:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text28
	
l3607:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l3633
u3120:
	
l3609:	
	clrf	(TurnKeyFlags@F84)
	
l3611:	
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l1347
u3130:
	
l3613:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u3141
	goto	u3140
u3141:
	goto	l1347
u3140:
	
l3615:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F83),f
	subwf	((TurnKeyFlags@F83)),w
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l1352
u3150:
	
l3617:	
	clrf	(TurnKeyFlags@F83)
	
l3619:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	
l3621:	
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	
l3623:	
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u3161
	goto	u3160
u3161:
	goto	l1348
u3160:
	
l3625:	
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3627:	
	fcall	_KeyClearIn
	goto	l1352
	
l1348:	
	goto	l1352
	
l1347:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3629:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	
l3631:	
	clrf	(TurnKeyFlags@F83)
	goto	l1352
	
l3633:	
	clrf	(TurnKeyFlags@F83)
	clrf	(_KeyOldData)	;volatile
	clrf	0+(_KeyOldData)+01h	;volatile
	
l3635:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F84),f
	subwf	((TurnKeyFlags@F84)),w
	skipc
	goto	u3171
	goto	u3170
u3171:
	goto	l1352
u3170:
	
l3637:	
	clrf	(TurnKeyFlags@F84)
	clrf	(_KeyFlag)	;volatile
	clrf	0+(_KeyFlag)+01h	;volatile
	
l3639:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l1352:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text28
	
l1354:	
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
;;  51              1    5[COMMON] unsigned char 
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
psect	text29,local,class=CODE,delta=2,merge=1,group=1
global __ptext29
__ptext29:	;psect for function _KeyClearIn
psect	text29
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyClearIn
	__size_of_KeyClearIn	equ	__end_of_KeyClearIn-_KeyClearIn
	
_KeyClearIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyClearIn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3117:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text29
	
l3119:	
	clrf	(KeyClearIn@51)
	
l3125:	
	movf	(KeyClearIn@51),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l3129
u2290:
	
l3127:	
	movf	(KeyClearIn@51),w
	fcall	_KeyClearOne
	
l3129:	
	incf	(KeyClearIn@51),f
	
l3131:	
	movlw	low(02h)
	subwf	(KeyClearIn@51),w
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l3125
u2300:
	
l1260:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text29
	
l1262:	
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
;;  53              1    4[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_KeyClearOne
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=1
global __ptext30
__ptext30:	;psect for function _KeyStopClear
psect	text30
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyStopClear
	__size_of_KeyStopClear	equ	__end_of_KeyStopClear-_KeyStopClear
	
_KeyStopClear:	
;incstack = 0
	opt	stack 3
; Regs used in _KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3477:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text30
	
l3479:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyFlag)	;volatile
	clrf	0+(_KeyFlag)+01h	;volatile
	clrf	(KeyStopClear@53)
	
l3485:	
	clrc
	rlf	(KeyStopClear@53),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l3487:	
	movf	(KeyStopClear@53),w
	fcall	_KeyClearOne
	
l3489:	
	incf	(KeyStopClear@53),f
	
l3491:	
	movlw	low(02h)
	subwf	(KeyStopClear@53),w
	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l3485
u2890:
	
l1266:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text30
	
l1267:	
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
;;  63              2    2[BANK0 ] unsigned int 
;;  64              2    0[BANK0 ] unsigned int 
;;  62              1    4[BANK0 ] unsigned char 
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
;;      Locals:         0       5       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ClearResSum
;; This function is called by:
;;		_CheckTouchKey
;;		_SystemEnterSleep
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=1
global __ptext31
__ptext31:	;psect for function _GetTouchKeyValue
psect	text31
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_GetTouchKeyValue
	__size_of_GetTouchKeyValue	equ	__end_of_GetTouchKeyValue-_GetTouchKeyValue
	
_GetTouchKeyValue:	
;incstack = 0
	opt	stack 2
; Regs used in _GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l4307:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text31
	
l4309:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(GetTouchKeyValue@62)
	
l4311:	
	clrf	(GetTouchKeyValue@63)
	incf	(GetTouchKeyValue@63),f
	clrf	(GetTouchKeyValue@63+1)
	
l4313:	
	btfss	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	goto	u4441
	goto	u4440
u4441:
	goto	l4317
u4440:
	
l4315:	
	movf	(GetTouchKeyValue@63),w
	andlw	03h
	btfsc	status,2
	goto	u4451
	goto	u4450
u4451:
	goto	l4345
u4450:
	
l4317:	
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	clrf	(274)^0100h	;volatile
	
l4319:	
	movlw	low(079h)
	movwf	(275)^0100h	;volatile
	
l4321:	
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	
l4323:	
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
psect	text31
	
l4325:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7	;volatile
	
l4327:	
	movf	(GetTouchKeyValue@62),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 6	;RP1=1, select bank2
	movwf	(273)^0100h	;volatile
	
l4329:	
	bcf	status, 6	;RP1=0, select bank0
	movf	(GetTouchKeyValue@62),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 6	;RP1=1, select bank2
	movwf	(274)^0100h	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
psect	text31
	
l4331:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(273)^0100h+(0/8),(0)&7	;volatile
	
l4333:	
	movlw	0D0h
	bcf	status, 6	;RP1=0, select bank0
	movwf	(GetTouchKeyValue@64)
	movlw	07h
	movwf	((GetTouchKeyValue@64))+1
	goto	l1288
	
l4335:	
	movlw	01h
	bcf	status, 6	;RP1=0, select bank0
	subwf	(GetTouchKeyValue@64),f
	movlw	0
	skipc
	decf	(GetTouchKeyValue@64+1),f
	subwf	(GetTouchKeyValue@64+1),f
	movf	(((GetTouchKeyValue@64))),w
iorwf	(((GetTouchKeyValue@64+1))),w
	btfss	status,2
	goto	u4461
	goto	u4460
u4461:
	goto	l1288
u4460:
	
l4337:	
	movlw	low(0FFh)
	movwf	(_KeyCounter)
	
l4339:	
	fcall	_ClearResSum
	goto	l1291
	
l1288:	
	bsf	status, 6	;RP1=1, select bank2
	btfss	(273)^0100h,(7)&7	;volatile
	goto	u4471
	goto	u4470
u4471:
	goto	l4335
u4470:
	
l4343:	
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(GetTouchKeyValue@62),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bsf	status, 6	;RP1=1, select bank2
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
	
l4345:	
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(GetTouchKeyValue@63),f
	rlf	(GetTouchKeyValue@63+1),f
	
l4347:	
	movlw	low(02h)
	incf	(GetTouchKeyValue@62),f
	subwf	((GetTouchKeyValue@62)),w
	skipc
	goto	u4481
	goto	u4480
u4481:
	goto	l4313
u4480:
	
l1293:	
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text31
	
l1291:	
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
;;  56              1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_GetTouchKeyValue
;;		_CheckTouchKey
;;		_SystemEnterSleep
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=1
global __ptext32
__ptext32:	;psect for function _ClearResSum
psect	text32
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_ClearResSum
	__size_of_ClearResSum	equ	__end_of_ClearResSum-_ClearResSum
	
_ClearResSum:	
;incstack = 0
	opt	stack 2
; Regs used in _ClearResSum: [wreg-fsr0h+status,2+status,0]
	
l4195:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text32
	
l4197:	
	clrf	(ClearResSum@56)
	
l4199:	
	clrc
	rlf	(ClearResSum@56),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l4201:	
	movlw	low(02h)
	incf	(ClearResSum@56),f
	subwf	((ClearResSum@56)),w
	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l4199
u4280:
	
l1271:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text32
	
l1272:	
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=1
global __ptext33
__ptext33:	;psect for function _CheckValidTime
psect	text33
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckValidTime
	__size_of_CheckValidTime	equ	__end_of_CheckValidTime-_CheckValidTime
	
_CheckValidTime:	
;incstack = 0
	opt	stack 4
; Regs used in _CheckValidTime: [wreg+status,2+status,0]
	
l3641:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text33
	
l3643:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l3649
u3180:
	
l3645:	
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
	goto	u3191
	goto	u3190
u3191:
	goto	l1359
u3190:
	
l3647:	
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l3649:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(CheckValidTime@F87)^080h
	clrf	(CheckValidTime@F87+1)^080h
	
l1359:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text33
	
l1363:	
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
psect	text34,local,class=CODE,delta=2,merge=1,group=1
global __ptext34
__ptext34:	;psect for function _CheckOnceResult
psect	text34
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckOnceResult
	__size_of_CheckOnceResult	equ	__end_of_CheckOnceResult-_CheckOnceResult
	
_CheckOnceResult:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l4583:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text34
	
l4585:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckOnceResult@68)
	clrf	(_KeyData)	;volatile
	clrf	0+(_KeyData)+01h	;volatile
	clrf	(_KeyMaxSub)
	
l4587:	
	movf	(CheckOnceResult@68),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@70)
	
l4589:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u4935:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank1
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u4930:
	addlw	-1
	skipz
	goto	u4935
	
l4591:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@71)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@71+1)
	
l4593:	
	movf	(CheckOnceResult@68),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@69)
	
l4595:	
	movf	(CheckOnceResult@69),w
	movwf	(CheckOnceResult@72)
	clrf	(CheckOnceResult@72+1)
	
l4597:	
	movf	(CheckOnceResult@71),w
	addwf	(CheckOnceResult@72),f
	skipnc
	incf	(CheckOnceResult@72+1),f
	movf	(CheckOnceResult@71+1),w
	addwf	(CheckOnceResult@72+1),f
	
l4599:	
	movf	(CheckOnceResult@68),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u4941
	goto	u4940
u4941:
	goto	l4629
u4940:
	
l4601:	
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
	goto	u4955
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72),w
u4955:
	skipnc
	goto	u4951
	goto	u4950
u4951:
	goto	l4605
u4950:
	
l4603:	
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
	goto	l4613
	
l4605:	
	movf	(CheckOnceResult@73+1),w
	subwf	(CheckOnceResult@72+1),w
	skipz
	goto	u4965
	movf	(CheckOnceResult@73),w
	subwf	(CheckOnceResult@72),w
u4965:
	skipnc
	goto	u4961
	goto	u4960
u4961:
	goto	l4651
u4960:
	
l4607:	
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
	goto	u4975
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72),w
u4975:
	skipnc
	goto	u4971
	goto	u4970
u4971:
	goto	l4651
u4970:
	
l4609:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@73),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@73+1),w
	movwf	indf
	
l4611:	
	movf	(CheckOnceResult@71),w
	subwf	(CheckOnceResult@73),w
	movwf	(CheckOnceResult@71)
	movf	(CheckOnceResult@71+1),w
	skipc
	incf	(CheckOnceResult@71+1),w
	subwf	(CheckOnceResult@73+1),w
	movwf	1+(CheckOnceResult@71)
	
l4613:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	
l4615:	
	movf	(0+(CheckOnceResult@71)+01h),w
	btfsc	status,2
	goto	u4981
	goto	u4980
u4981:
	goto	l4619
u4980:
	
l4617:	
	movlw	low(0FFh)
	movwf	(CheckOnceResult@69)
	goto	l1305
	
l4619:	
	movf	(CheckOnceResult@71),w
	movwf	(CheckOnceResult@69)
	
l1305:	
	movf	(CheckOnceResult@69),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u4991
	goto	u4990
u4991:
	goto	l4625
u4990:
	
l4621:	
	movf	(CheckOnceResult@69),w
	movwf	(_KeyMaxSub)
	
l4623:	
	movf	(CheckOnceResult@70),w
	movwf	(KeyHave@59)
	clrf	(KeyHave@59+1)
	movf	(CheckOnceResult@68),w
	fcall	_KeyHave
	goto	l4651
	
l4625:	
	incf	(_KeyCounter),f
	goto	l4651
	
l4629:	
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
	goto	u5005
	movf	(CheckOnceResult@72),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u5005:
	skipnc
	goto	u5001
	goto	u5000
u5001:
	goto	l4635
u5000:
	goto	l4651
	
l4635:	
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
	goto	u5015
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u5015:
	skipc
	goto	u5011
	goto	u5010
u5011:
	goto	l4639
u5010:
	
l4637:	
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
	goto	u5025
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u5025:
	skipnc
	goto	u5021
	goto	u5020
u5021:
	goto	l4643
u5020:
	
l4639:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u5031
	goto	u5030
u5031:
	goto	l1311
u5030:
	
l4641:	
	movf	(CheckOnceResult@68),w
	fcall	_KeyClearOne
	goto	l4651
	
l4643:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l4647
	
l1311:	
	
l4647:	
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfss	status,2
	goto	u5041
	goto	u5040
u5041:
	goto	l4651
u5040:
	
l4649:	
	movf	(CheckOnceResult@70),w
	movwf	(KeyHave@59)
	clrf	(KeyHave@59+1)
	movf	(CheckOnceResult@68),w
	fcall	_KeyHave
	
l4651:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@68),f
	subwf	((CheckOnceResult@68)),w
	skipc
	goto	u5051
	goto	u5050
u5051:
	goto	l4587
u5050:
	
l1320:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text34
	
l1321:	
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
;;  59              2    3[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  58              1    5[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CheckOnceResult
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=1
global __ptext35
__ptext35:	;psect for function _KeyHave
psect	text35
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyHave
	__size_of_KeyHave	equ	__end_of_KeyHave-_KeyHave
	
_KeyHave:	
;incstack = 0
	opt	stack 3
; Regs used in _KeyHave: [wreg+status,2+status,0]
;KeyHave@58 stored from wreg
	movwf	(KeyHave@58)
	
l3133:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text35
	
l3135:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	
l3137:	
	clrf	(_KeyData)	;volatile
	
l3139:	
	clrf	0+(_KeyData)+01h	;volatile
	
l3141:	
	btfss	(KeyHave@58),(3)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l3145
u2310:
	
l3143:	
	movf	(KeyHave@59),w
	movwf	0+(_KeyData)+01h	;volatile
	goto	l1278
	
l3145:	
	movf	(KeyHave@59),w
	movwf	(_KeyData)	;volatile
	
l1278:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text35
	
l1281:	
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
;;  49              1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_KeyClearIn
;;		_KeyStopClear
;;		_CheckOnceResult
;;		_SystemEnterSleep
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=1
global __ptext36
__ptext36:	;psect for function _KeyClearOne
psect	text36
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyClearOne
	__size_of_KeyClearOne	equ	__end_of_KeyClearOne-_KeyClearOne
	
_KeyClearOne:	
;incstack = 0
	opt	stack 3
; Regs used in _KeyClearOne: [wreg-fsr0h+status,2+status,0]
;KeyClearOne@49 stored from wreg
	movwf	(KeyClearOne@49)
	
l3001:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text36
	
l3003:	
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
psect	text36
	
l1256:	
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
psect	text37,local,class=CODE,delta=2,merge=1,group=1
global __ptext37
__ptext37:	;psect for function _CheckKeyOldValue
psect	text37
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckKeyOldValue
	__size_of_CheckKeyOldValue	equ	__end_of_CheckKeyOldValue-_CheckKeyOldValue
	
_CheckKeyOldValue:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3563:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text37
	
l3565:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@78)
	
l3567:	
	movlw	low(04h)
	incf	(CheckKeyOldValue@F77),f
	subwf	((CheckKeyOldValue@F77)),w
	skipnc
	goto	u3031
	goto	u3030
u3031:
	goto	l3571
u3030:
	goto	l1327
	
l3571:	
	clrf	(CheckKeyOldValue@F77)
	
l3573:	
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
	
l3575:	
	movf	(CheckKeyOldValue@78),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l1329
u3040:
	
l3577:	
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
	
l3579:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3581:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l3585
u3050:
	
l3583:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u3061
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l1329
u3060:
	
l3585:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3587:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3589:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l3593
u3070:
	
l3591:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u3081
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l1329
u3080:
	
l3593:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3595:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3597:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l3601
u3090:
	
l3599:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u3101
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l1329
u3100:
	
l3601:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@79),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@79+1),w
	movwf	indf
	
l1329:	
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
	
l3603:	
	movlw	low(02h)
	incf	(CheckKeyOldValue@78),f
	subwf	((CheckKeyOldValue@78)),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l3573
u3110:
	
l1339:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text37
	
l1327:	
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
;;  45              1    4[COMMON] unsigned char 
;;  46              1    3[COMMON] unsigned char 
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_KeyClearIn
;;		_CheckOnceResult
;;		_CheckKeyOldValue
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=1
global __ptext38
__ptext38:	;psect for function _KeyIsIn
psect	text38
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
	
l2985:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text38
	
l2987:	
	movf	(KeyIsIn@45),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@46)
	
l2989:	
	btfss	(KeyIsIn@45),(3)&7
	goto	u2121
	goto	u2120
u2121:
	goto	l2993
u2120:
	
l2991:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@46),f
	goto	l2995
	
l2993:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@46),f
	
l2995:	
	movf	(KeyIsIn@46),w
	
l1253:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 195 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ledShow
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	195
global __ptext39
__ptext39:	;psect for function _Isr_Timer
psect	text39
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	195
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 2
; Regs used in _Isr_Timer: [wreg-fsr0h+status,2+status,0+pclath+cstack]
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
	movf	fsr0,w
	movwf	(??_Isr_Timer+1)
	movf	pclath,w
	movwf	(??_Isr_Timer+2)
	ljmp	_Isr_Timer
psect	text39
	line	197
	
i1l4107:	
;main.c: 197: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u414_21
	goto	u414_20
u414_21:
	goto	i1l4131
u414_20:
	line	199
	
i1l4109:	
;main.c: 198: {
;main.c: 199: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	200
	
i1l4111:	
;main.c: 200: if(firstTime > 0 || workStep > 0 || wuhuaFlag > 0 || chrgFlag > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u415_21
	goto	u415_20
u415_21:
	goto	i1l4119
u415_20:
	
i1l4113:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u416_21
	goto	u416_20
u416_21:
	goto	i1l4119
u416_20:
	
i1l4115:	
	movf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u417_21
	goto	u417_20
u417_21:
	goto	i1l4119
u417_20:
	
i1l4117:	
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u418_21
	goto	u418_20
u418_21:
	goto	i1l4121
u418_20:
	line	202
	
i1l4119:	
;main.c: 201: {
;main.c: 202: ledShow();
	fcall	_ledShow
	line	204
	
i1l4121:	
;main.c: 203: }
;main.c: 204: if(++MainTime >= 32)
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u419_21
	goto	u419_20
u419_21:
	goto	i1l975
u419_20:
	line	206
	
i1l4123:	
;main.c: 205: {
;main.c: 206: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	207
	
i1l4125:	
;main.c: 207: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	208
	
i1l4127:	
;main.c: 208: if(++count1s >= 250)
	movlw	low(0FAh)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u420_21
	goto	u420_20
u420_21:
	goto	i1l975
u420_20:
	line	210
	
i1l4129:	
;main.c: 209: {
;main.c: 210: count1s = 0;
	clrf	(_count1s)
	goto	i1l975
	line	216
	
i1l4131:	
;main.c: 214: else
;main.c: 215: {
;main.c: 216: PIR1 = 0;
	clrf	(13)	;volatile
	line	219
	
i1l975:	
	movf	(??_Isr_Timer+2),w
	movwf	pclath
	movf	(??_Isr_Timer+1),w
	movwf	fsr0
	swapf	(??_Isr_Timer+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Isr_Timer
	__end_of_Isr_Timer:
	signat	_Isr_Timer,89
	global	_ledShow

;; *************** function _ledShow *****************
;; Defined at:
;;		line 367 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Isr_Timer
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=0
	line	367
global __ptext40
__ptext40:	;psect for function _ledShow
psect	text40
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	367
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 2
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	370
	
i1l3845:	
;main.c: 370: if(++ledCnt > 19)
	movlw	low(014h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u350_21
	goto	u350_20
u350_21:
	goto	i1l3849
u350_20:
	line	372
	
i1l3847:	
;main.c: 371: {
;main.c: 372: ledCnt = 0;
	clrf	(_ledCnt)
	line	375
	
i1l3849:	
;main.c: 374: }
;main.c: 375: PORTA &= 0xE4;
	movlw	low(0E4h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	376
	
i1l3851:	
;main.c: 376: PORTB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(4/8),(4)&7	;volatile
	line	377
	
i1l3853:	
;main.c: 377: TRISA |= 0x1B;
	movlw	low(01Bh)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	378
	
i1l3855:	
;main.c: 378: TRISB |= 0x10;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(4/8),(4)&7	;volatile
	line	379
;main.c: 379: switch(ledCnt)
	goto	i1l3909
	line	383
;main.c: 383: case 1:
	
i1l1009:	
	line	384
;main.c: 384: if(showNumShi & 0x01)
	btfss	(_showNumShi),(0)&7
	goto	u351_21
	goto	u351_20
u351_21:
	goto	i1l1058
u351_20:
	line	386
	
i1l3857:	
;main.c: 385: {
;main.c: 386: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	387
;main.c: 387: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	388
;main.c: 388: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l1058
	line	391
;main.c: 391: case 2:
	
i1l1011:	
	line	392
;main.c: 392: if(showNumShi & 0x02)
	btfss	(_showNumShi),(1)&7
	goto	u352_21
	goto	u352_20
u352_21:
	goto	i1l1058
u352_20:
	line	394
	
i1l3859:	
;main.c: 393: {
;main.c: 394: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	395
;main.c: 395: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	396
;main.c: 396: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l1058
	line	399
;main.c: 399: case 3:
	
i1l1013:	
	line	400
;main.c: 400: if(showNumShi & 0x04)
	btfss	(_showNumShi),(2)&7
	goto	u353_21
	goto	u353_20
u353_21:
	goto	i1l1058
u353_20:
	line	402
	
i1l3861:	
;main.c: 401: {
;main.c: 402: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	403
;main.c: 403: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	404
;main.c: 404: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l1058
	line	407
;main.c: 407: case 4:
	
i1l1015:	
	line	408
;main.c: 408: if(showNumShi & 0x08)
	btfss	(_showNumShi),(3)&7
	goto	u354_21
	goto	u354_20
u354_21:
	goto	i1l1058
u354_20:
	line	410
	
i1l3863:	
;main.c: 409: {
;main.c: 410: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	411
;main.c: 411: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	412
;main.c: 412: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	goto	i1l1058
	line	415
;main.c: 415: case 5:
	
i1l1017:	
	line	416
;main.c: 416: if(showNumShi & 0x10)
	btfss	(_showNumShi),(4)&7
	goto	u355_21
	goto	u355_20
u355_21:
	goto	i1l1058
u355_20:
	line	418
	
i1l3865:	
;main.c: 417: {
;main.c: 418: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	419
;main.c: 419: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	420
;main.c: 420: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	goto	i1l1058
	line	423
;main.c: 423: case 6:
	
i1l1019:	
	line	424
;main.c: 424: if(showNumShi & 0x20)
	btfss	(_showNumShi),(5)&7
	goto	u356_21
	goto	u356_20
u356_21:
	goto	i1l1058
u356_20:
	line	426
	
i1l3867:	
;main.c: 425: {
;main.c: 426: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	427
;main.c: 427: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	428
;main.c: 428: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l1058
	line	431
;main.c: 431: case 7:
	
i1l1021:	
	line	432
;main.c: 432: if(showNumShi & 0x40)
	btfss	(_showNumShi),(6)&7
	goto	u357_21
	goto	u357_20
u357_21:
	goto	i1l1058
u357_20:
	line	434
	
i1l3869:	
;main.c: 433: {
;main.c: 434: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	435
;main.c: 435: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	436
;main.c: 436: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l1058
	line	439
;main.c: 439: case 8:
	
i1l1023:	
	line	440
;main.c: 440: if(showNumGe & 0x01)
	btfss	(_showNumGe),(0)&7
	goto	u358_21
	goto	u358_20
u358_21:
	goto	i1l1058
u358_20:
	line	442
	
i1l3871:	
;main.c: 441: {
;main.c: 442: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	443
;main.c: 443: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	444
;main.c: 444: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	goto	i1l1058
	line	447
;main.c: 447: case 9:
	
i1l1025:	
	line	448
;main.c: 448: if(showNumGe & 0x02)
	btfss	(_showNumGe),(1)&7
	goto	u359_21
	goto	u359_20
u359_21:
	goto	i1l1058
u359_20:
	line	450
	
i1l3873:	
;main.c: 449: {
;main.c: 450: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	451
;main.c: 451: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	452
;main.c: 452: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	goto	i1l1058
	line	455
;main.c: 455: case 10:
	
i1l1027:	
	line	456
;main.c: 456: if(showNumGe & 0x04)
	btfss	(_showNumGe),(2)&7
	goto	u360_21
	goto	u360_20
u360_21:
	goto	i1l1058
u360_20:
	line	458
	
i1l3875:	
;main.c: 457: {
;main.c: 458: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	459
;main.c: 459: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	460
;main.c: 460: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l1058
	line	463
;main.c: 463: case 11:
	
i1l1029:	
	line	464
;main.c: 464: if(showNumGe & 0x08)
	btfss	(_showNumGe),(3)&7
	goto	u361_21
	goto	u361_20
u361_21:
	goto	i1l1058
u361_20:
	line	466
	
i1l3877:	
;main.c: 465: {
;main.c: 466: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	467
;main.c: 467: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	468
;main.c: 468: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l1058
	line	471
;main.c: 471: case 12:
	
i1l1031:	
	line	472
;main.c: 472: if(showNumGe & 0x10)
	btfss	(_showNumGe),(4)&7
	goto	u362_21
	goto	u362_20
u362_21:
	goto	i1l1058
u362_20:
	line	474
	
i1l3879:	
;main.c: 473: {
;main.c: 474: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	475
;main.c: 475: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	476
;main.c: 476: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	goto	i1l1058
	line	479
;main.c: 479: case 13:
	
i1l1033:	
	line	480
;main.c: 480: if(showNumGe & 0x20)
	btfss	(_showNumGe),(5)&7
	goto	u363_21
	goto	u363_20
u363_21:
	goto	i1l1058
u363_20:
	line	482
	
i1l3881:	
;main.c: 481: {
;main.c: 482: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	483
;main.c: 483: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	484
;main.c: 484: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	goto	i1l1058
	line	487
;main.c: 487: case 14:
	
i1l1035:	
	line	488
;main.c: 488: if(showNumGe & 0x40)
	btfss	(_showNumGe),(6)&7
	goto	u364_21
	goto	u364_20
u364_21:
	goto	i1l1058
u364_20:
	line	490
	
i1l3883:	
;main.c: 489: {
;main.c: 490: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	491
;main.c: 491: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	492
;main.c: 492: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l1058
	line	496
	
i1l3885:	
;main.c: 496: if(firstTime || showNumGe || showNumShi)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u365_21
	goto	u365_20
u365_21:
	goto	i1l1040
u365_20:
	
i1l3887:	
	movf	((_showNumGe)),w
	btfss	status,2
	goto	u366_21
	goto	u366_20
u366_21:
	goto	i1l1040
u366_20:
	
i1l3889:	
	movf	((_showNumShi)),w
	btfsc	status,2
	goto	u367_21
	goto	u367_20
u367_21:
	goto	i1l1058
u367_20:
	
i1l1040:	
	line	498
;main.c: 497: {
;main.c: 498: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	499
;main.c: 499: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	500
;main.c: 500: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l1058
	line	504
	
i1l3891:	
;main.c: 504: if(firstTime > 0 || wuhuaFlag > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u368_21
	goto	u368_20
u368_21:
	goto	i1l1044
u368_20:
	
i1l3893:	
	movf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u369_21
	goto	u369_20
u369_21:
	goto	i1l1058
u369_20:
	
i1l1044:	
	line	506
;main.c: 505: {
;main.c: 506: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	507
;main.c: 507: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	508
;main.c: 508: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	goto	i1l1058
	line	512
	
i1l3895:	
;main.c: 512: if(firstTime > 0 ||workStep > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u370_21
	goto	u370_20
u370_21:
	goto	i1l1048
u370_20:
	
i1l3897:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u371_21
	goto	u371_20
u371_21:
	goto	i1l1058
u371_20:
	
i1l1048:	
	line	514
;main.c: 513: {
;main.c: 514: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	515
;main.c: 515: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	516
;main.c: 516: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	goto	i1l1058
	line	520
	
i1l3899:	
;main.c: 520: if(firstTime > 0 ||fanKeyFlag > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u372_21
	goto	u372_20
u372_21:
	goto	i1l1052
u372_20:
	
i1l3901:	
	movf	((_fanKeyFlag)),w
	btfsc	status,2
	goto	u373_21
	goto	u373_20
u373_21:
	goto	i1l1058
u373_20:
	
i1l1052:	
	line	522
;main.c: 521: {
;main.c: 522: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	523
;main.c: 523: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	524
;main.c: 524: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l1058
	line	528
	
i1l3903:	
;main.c: 528: if(firstTime > 0 ||wuhuaKeyFlag > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u374_21
	goto	u374_20
u374_21:
	goto	i1l1056
u374_20:
	
i1l3905:	
	movf	((_wuhuaKeyFlag)),w
	btfsc	status,2
	goto	u375_21
	goto	u375_20
u375_21:
	goto	i1l1058
u375_20:
	
i1l1056:	
	line	530
;main.c: 529: {
;main.c: 530: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	531
;main.c: 531: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	532
;main.c: 532: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l1058
	line	379
	
i1l3909:	
	movf	(_ledCnt),w
	; Switch size 1, requested type "space"
; Number of cases is 20, Range of values is 0 to 19
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           47     7 (fixed)
; simple_byte           61    31 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	20
	subwf	fsr,w
skipnc
goto i1l1058
movlw high(i1S4985)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(i1S4985)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S4985:
	ljmp	i1l1058
	ljmp	i1l1009
	ljmp	i1l1011
	ljmp	i1l1013
	ljmp	i1l1015
	ljmp	i1l1017
	ljmp	i1l1019
	ljmp	i1l1021
	ljmp	i1l1023
	ljmp	i1l1025
	ljmp	i1l1027
	ljmp	i1l1029
	ljmp	i1l1031
	ljmp	i1l1033
	ljmp	i1l1035
	ljmp	i1l3885
	ljmp	i1l3891
	ljmp	i1l3895
	ljmp	i1l3899
	ljmp	i1l3903
psect	text40

	line	539
	
i1l1058:	
	return
	opt stack 0
GLOBAL	__end_of_ledShow
	__end_of_ledShow:
	signat	_ledShow,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
