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
	line	61

;initializer for _showNumGe
	retlw	07Fh
	line	60

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
	global	_KeyData
	global	_b_ksleep
	global	_b_kerr
	global	_b_kclr
	global	_b_kover1
	global	_b_kover
	global	_B_OnOff
	global	_B_MainLoop
	global	_KeyOldValue1
	global	_KeyOldData
	global	_power_ad
	global	_count30s
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
	global	_curBatStep
	global	_showBatStep
	global	_wuhuaKeyFlag
	global	_fanKeyFlag
	global	_ledCnt
	global	_lowFanTime
	global	_lowBatLock
	global	_chrgFullTime
	global	_chrgFullFlag
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
	global	_count15s
	global	_lowBatTime
	global	_fanValue
	global	_time
	global	_KeyUpShake
	global	_firstTime
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_firstTime:
       ds      1

	global	_firstLock
psect	nvBANK1,class=BANK1,space=1,noexec
global __pnvBANK1
__pnvBANK1:
_firstLock:
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
_KeyData:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_KeyOldValue1:
       ds      4

_KeyOldData:
       ds      2

_power_ad:
       ds      2

_count30s:
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
	line	61
_showNumGe:
       ds      1

psect	dataBANK0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	60
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

_count15s:
       ds      2

_lowBatTime:
       ds      2

_fanValue:
       ds      2

_time:
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
	movlw	low((__pbssBANK1)+01Eh)
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
	global	setBatStep@tempSubBatTime
setBatStep@tempSubBatTime:	; 2 bytes @ 0x3
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
;!    BSS         74
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      11
;!    BANK0            80     34      79
;!    BANK1            80      4      35
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
;! (0) _main                                                 0     0      0   12877
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
;! (1) _setBatStep                                           2     2      0     538
;!                                              3 BANK0      2     2      0
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
;!BANK1               50      4      23       6       43.8%
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
;!DATA                 0      0      7D       9        0.0%
;!ABS                  0      0      7D       8        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 915 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
;;		_setBatStep
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	915
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	915
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	917
	
l5028:	
;main.c: 917: Init_System();
	fcall	_Init_System
	line	918
	
l5030:	
;main.c: 918: firstLock = 1;
	clrf	(_firstLock)^080h
	incf	(_firstLock)^080h,f
	line	919
	
l5032:	
;main.c: 919: firstTime = 250;
	movlw	low(0FAh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	923
	
l5034:	
;main.c: 921: {
;main.c: 923: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u5681
	goto	u5680
u5681:
	goto	l5034
u5680:
	line	925
	
l5036:	
;main.c: 924: {
;main.c: 925: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	926
# 926 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
clrwdt ;# 
psect	maintext
	line	927
	
l5038:	
;main.c: 927: CheckTouchKey();
	fcall	_CheckTouchKey
	line	928
	
l5040:	
;main.c: 928: chrgCtr();
	fcall	_chrgCtr
	line	929
	
l5042:	
;main.c: 929: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	930
	
l5044:	
;main.c: 930: KeyServer();
	fcall	_KeyServer
	line	931
	
l5046:	
;main.c: 931: workCtr();
	fcall	_workCtr
	line	932
	
l5048:	
;main.c: 932: setBatStep();
	fcall	_setBatStep
	line	933
	
l5050:	
;main.c: 933: if(firstTime == 0 && chrgFlag == 0 && workStep == 0 && wuhuaFlag == 0 && shanshuoTime == 0 && shanshuoTime2 == 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u5691
	goto	u5690
u5691:
	goto	l5070
u5690:
	
l5052:	
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u5701
	goto	u5700
u5701:
	goto	l5070
u5700:
	
l5054:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u5711
	goto	u5710
u5711:
	goto	l5070
u5710:
	
l5056:	
	movf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u5721
	goto	u5720
u5721:
	goto	l5070
u5720:
	
l5058:	
	movf	((_shanshuoTime)),w
iorwf	((_shanshuoTime+1)),w
	btfss	status,2
	goto	u5731
	goto	u5730
u5731:
	goto	l5070
u5730:
	
l5060:	
	movf	((_shanshuoTime2)),w
iorwf	((_shanshuoTime2+1)),w
	btfss	status,2
	goto	u5741
	goto	u5740
u5741:
	goto	l5070
u5740:
	line	935
	
l5062:	
;main.c: 934: {
;main.c: 935: PORTA &= 0xE4;
	movlw	low(0E4h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	936
	
l5064:	
;main.c: 936: PORTB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(4/8),(4)&7	;volatile
	line	937
;main.c: 937: TRISA |= 0x1B;
	movlw	low(01Bh)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	938
	
l5066:	
;main.c: 938: TRISB |= 0x10;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(4/8),(4)&7	;volatile
	line	939
	
l5068:	
;main.c: 939: WorkSleep();
	fcall	_WorkSleep
	line	940
;main.c: 940: }
	goto	l5034
	line	943
	
l5070:	
;main.c: 941: else
;main.c: 942: {
;main.c: 943: time = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_time)^080h
	clrf	(_time+1)^080h
	goto	l5034
	global	start
	ljmp	start
	opt stack 0
	line	947
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 863 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	863
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	863
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	865
	
l4956:	
;main.c: 865: test_adc = ADC_Sample(31, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(01Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	866
	
l4958:	
;main.c: 866: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u5561
	goto	u5560
u5561:
	goto	l4964
u5560:
	line	870
	
l4960:	
;main.c: 867: {
;main.c: 868: volatile unsigned long power_temp;
;main.c: 870: power_temp = (unsigned long)(((4096UL*1.2*1000))/adresult);
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

	line	871
	
l4962:	
;main.c: 871: power_ad = (unsigned int)(power_temp);
	movf	(workCtr@power_temp+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_power_ad+1)	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movf	(workCtr@power_temp)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_power_ad)	;volatile
	line	873
	
l4964:	
;main.c: 872: }
;main.c: 873: if(workStep == 2 && power_ad < 3300)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u5571
	goto	u5570
u5571:
	goto	l4974
u5570:
	
l4966:	
	movlw	0Ch
	subwf	(_power_ad+1),w	;volatile
	movlw	0E4h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u5581
	goto	u5580
u5581:
	goto	l4974
u5580:
	line	875
	
l4968:	
;main.c: 874: {
;main.c: 875: if(++lowFanTime > 200)
	movlw	low(0C9h)
	incf	(_lowFanTime),f
	subwf	((_lowFanTime)),w
	skipc
	goto	u5591
	goto	u5590
u5591:
	goto	l4976
u5590:
	line	877
	
l4970:	
;main.c: 876: {
;main.c: 877: lowFanTime = 0;
	clrf	(_lowFanTime)
	line	878
	
l4972:	
;main.c: 878: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l4976
	line	883
	
l4974:	
;main.c: 881: else
;main.c: 882: {
;main.c: 883: lowFanTime = 0;
	clrf	(_lowFanTime)
	line	885
	
l4976:	
;main.c: 884: }
;main.c: 885: if(power_ad < 2900)
	movlw	0Bh
	subwf	(_power_ad+1),w	;volatile
	movlw	054h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u5601
	goto	u5600
u5601:
	goto	l4984
u5600:
	line	887
	
l4978:	
;main.c: 886: {
;main.c: 887: if(++lowBatTime > 1000)
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
	goto	u5611
	goto	u5610
u5611:
	goto	l4986
u5610:
	line	889
	
l4980:	
;main.c: 888: {
;main.c: 889: lowBatTime = 0;
	clrf	(_lowBatTime)^080h
	clrf	(_lowBatTime+1)^080h
	line	890
	
l4982:	
;main.c: 890: lowBatLock = 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowBatLock)
	incf	(_lowBatLock),f
	line	891
;main.c: 891: workStep = 0;
	clrf	(_workStep)
	line	892
;main.c: 892: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	goto	l4986
	line	897
	
l4984:	
;main.c: 895: else
;main.c: 896: {
;main.c: 897: lowBatTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_lowBatTime)^080h
	clrf	(_lowBatTime+1)^080h
	line	899
	
l4986:	
;main.c: 898: }
;main.c: 899: if(firstTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u5621
	goto	u5620
u5621:
	goto	l4990
u5620:
	line	901
	
l4988:	
;main.c: 900: {
;main.c: 901: firstTime--;
	decf	(_firstTime),f
	line	902
;main.c: 902: }
	goto	l1166
	line	905
	
l4990:	
;main.c: 903: else
;main.c: 904: {
;main.c: 905: keyLedCtr();
	fcall	_keyLedCtr
	line	906
;main.c: 906: fanCtr();
	fcall	_fanCtr
	line	907
;main.c: 907: wuhuaCtr();
	fcall	_wuhuaCtr
	line	910
	
l1166:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_wuhuaCtr

;; *************** function _wuhuaCtr *****************
;; Defined at:
;;		line 829 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	829
global __ptext2
__ptext2:	;psect for function _wuhuaCtr
psect	text2
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	829
	global	__size_of_wuhuaCtr
	__size_of_wuhuaCtr	equ	__end_of_wuhuaCtr-_wuhuaCtr
	
_wuhuaCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _wuhuaCtr: [wreg+status,2+status,0+pclath+cstack]
	line	831
	
l4646:	
;main.c: 831: if(count1s == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_count1s)),w
	btfss	status,2
	goto	u4991
	goto	u4990
u4991:
	goto	l4652
u4990:
	line	833
	
l4648:	
;main.c: 832: {
;main.c: 833: if(++count10s >= 10)
	movlw	low(0Ah)
	incf	(_count10s),f
	subwf	((_count10s)),w
	skipc
	goto	u5001
	goto	u5000
u5001:
	goto	l4652
u5000:
	line	835
	
l4650:	
;main.c: 834: {
;main.c: 835: count10s = 0;
	clrf	(_count10s)
	line	838
	
l4652:	
;main.c: 836: }
;main.c: 837: }
;main.c: 838: if(wuhuaFlag == 1 || (wuhuaFlag == 2 && count10s < 5))
		decf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u5011
	goto	u5010
u5011:
	goto	l4658
u5010:
	
l4654:	
		movlw	2
	xorwf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u5021
	goto	u5020
u5021:
	goto	l4660
u5020:
	
l4656:	
	movlw	low(05h)
	subwf	(_count10s),w
	skipnc
	goto	u5031
	goto	u5030
u5031:
	goto	l4660
u5030:
	line	840
	
l4658:	
;main.c: 839: {
;main.c: 840: pwmInit();
	fcall	_pwmInit
	line	855
;main.c: 855: }
	goto	l1154
	line	858
	
l4660:	
;main.c: 856: else
;main.c: 857: {
;main.c: 858: pwmStop();
	fcall	_pwmStop
	line	860
	
l1154:	
	return
	opt stack 0
GLOBAL	__end_of_wuhuaCtr
	__end_of_wuhuaCtr:
	signat	_wuhuaCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 752 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	752
global __ptext3
__ptext3:	;psect for function _pwmStop
psect	text3
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	752
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 3
; Regs used in _pwmStop: [status,2]
	line	754
	
l4362:	
;main.c: 754: PWMD0L = 0;
	clrf	(25)	;volatile
	line	755
	
l4364:	
;main.c: 755: PWMCON0 &= 0xFE;
	bcf	(21)+(0/8),(0)&7	;volatile
	line	756
	
l4366:	
;main.c: 756: PORTA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(5/8),(5)&7	;volatile
	line	757
	
l1123:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 740 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	740
global __ptext4
__ptext4:	;psect for function _pwmInit
psect	text4
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	740
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 3
; Regs used in _pwmInit: [wreg+status,2+status,0]
	line	743
	
l4352:	
;main.c: 743: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	744
	
l4354:	
;main.c: 744: PWMTL = 73;
	movlw	low(049h)
	movwf	(23)	;volatile
	line	745
	
l4356:	
;main.c: 745: PWMD01H = 0x00;
	clrf	(30)	;volatile
	line	746
;main.c: 746: PWMD0L = 32;
	movlw	low(020h)
	movwf	(25)	;volatile
	line	747
;main.c: 747: PWMCON1 = 0x40;
	movlw	low(040h)
	movwf	(22)	;volatile
	line	748
	
l4358:	
;main.c: 748: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	749
	
l4360:	
;main.c: 749: PWMCON0 |= 0x21;
	movlw	low(021h)
	iorwf	(21),f	;volatile
	line	750
	
l1120:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_keyLedCtr

;; *************** function _keyLedCtr *****************
;; Defined at:
;;		line 694 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	694
global __ptext5
__ptext5:	;psect for function _keyLedCtr
psect	text5
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	694
	global	__size_of_keyLedCtr
	__size_of_keyLedCtr	equ	__end_of_keyLedCtr-_keyLedCtr
	
_keyLedCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _keyLedCtr: [wreg+status,2+status,0+pclath+cstack]
	line	696
	
l4568:	
;main.c: 696: if(shanshuoTime > 0)
	movf	((_shanshuoTime)),w
iorwf	((_shanshuoTime+1)),w
	btfsc	status,2
	goto	u4831
	goto	u4830
u4831:
	goto	l4576
u4830:
	line	698
	
l4570:	
;main.c: 697: {
;main.c: 698: shanshuoTime--;
	movlw	01h
	subwf	(_shanshuoTime),f
	movlw	0
	skipc
	decf	(_shanshuoTime+1),f
	subwf	(_shanshuoTime+1),f
	line	699
	
l4572:	
;main.c: 699: if((shanshuoTime % 75) < 37)
	movlw	04Bh
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_shanshuoTime+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_shanshuoTime),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movlw	0
	subwf	(1+(?___lwmod)),w
	movlw	025h
	skipnz
	subwf	(0+(?___lwmod)),w
	skipnc
	goto	u4841
	goto	u4840
u4841:
	goto	l1106
u4840:
	line	701
	
l4574:	
;main.c: 700: {
;main.c: 701: fanKeyFlag = 0;
	clrf	(_fanKeyFlag)
	line	702
;main.c: 702: }
	goto	l4582
	line	703
	
l1106:	
	line	705
;main.c: 703: else
;main.c: 704: {
;main.c: 705: fanKeyFlag = 1;
	clrf	(_fanKeyFlag)
	incf	(_fanKeyFlag),f
	goto	l4582
	line	708
	
l4576:	
;main.c: 708: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4851
	goto	u4850
u4851:
	goto	l4574
u4850:
	goto	l1106
	line	717
	
l4582:	
;main.c: 715: }
;main.c: 717: if(shanshuoTime2 > 0)
	movf	((_shanshuoTime2)),w
iorwf	((_shanshuoTime2+1)),w
	btfsc	status,2
	goto	u4861
	goto	u4860
u4861:
	goto	l4590
u4860:
	line	719
	
l4584:	
;main.c: 718: {
;main.c: 719: shanshuoTime2--;
	movlw	01h
	subwf	(_shanshuoTime2),f
	movlw	0
	skipc
	decf	(_shanshuoTime2+1),f
	subwf	(_shanshuoTime2+1),f
	line	720
	
l4586:	
;main.c: 720: if((shanshuoTime2 % 75) < 37)
	movlw	04Bh
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_shanshuoTime2+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_shanshuoTime2),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movlw	0
	subwf	(1+(?___lwmod)),w
	movlw	025h
	skipnz
	subwf	(0+(?___lwmod)),w
	skipnc
	goto	u4871
	goto	u4870
u4871:
	goto	l1112
u4870:
	line	722
	
l4588:	
;main.c: 721: {
;main.c: 722: wuhuaKeyFlag = 0;
	clrf	(_wuhuaKeyFlag)
	line	723
;main.c: 723: }
	goto	l1117
	line	724
	
l1112:	
	line	726
;main.c: 724: else
;main.c: 725: {
;main.c: 726: wuhuaKeyFlag = 1;
	clrf	(_wuhuaKeyFlag)
	incf	(_wuhuaKeyFlag),f
	goto	l1117
	line	729
	
l4590:	
;main.c: 729: else if(wuhuaFlag > 0)
	movf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u4881
	goto	u4880
u4881:
	goto	l4588
u4880:
	goto	l1112
	line	738
	
l1117:	
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
	
l4462:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u4701
	goto	u4700
u4701:
	goto	l4478
u4700:
	line	14
	
l4464:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l4468
	line	16
	
l4466:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l4468:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u4711
	goto	u4710
u4711:
	goto	l4466
u4710:
	line	20
	
l4470:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u4725
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u4725:
	skipc
	goto	u4721
	goto	u4720
u4721:
	goto	l4474
u4720:
	line	21
	
l4472:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l4474:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l4476:	
	decfsz	(___lwmod@counter),f
	goto	u4731
	goto	u4730
u4731:
	goto	l4470
u4730:
	line	25
	
l4478:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1755:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_fanCtr

;; *************** function _fanCtr *****************
;; Defined at:
;;		line 778 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	778
global __ptext7
__ptext7:	;psect for function _fanCtr
psect	text7
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	778
	global	__size_of_fanCtr
	__size_of_fanCtr	equ	__end_of_fanCtr-_fanCtr
	
_fanCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _fanCtr: [wreg+status,2+status,0+pclath+cstack]
	line	780
	
l4596:	
;main.c: 780: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4891
	goto	u4890
u4891:
	goto	l4640
u4890:
	line	782
	
l4598:	
;main.c: 781: {
;main.c: 782: PORTA |= 0x04;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(2/8),(2)&7	;volatile
	line	783
	
l4600:	
;main.c: 783: unsigned char maxFanValue = 52;
	movlw	low(034h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fanCtr@maxFanValue)
	line	784
	
l4602:	
;main.c: 784: if(workStep == 1 || power_ad < 3150)
		decf	((_workStep)),w
	btfsc	status,2
	goto	u4901
	goto	u4900
u4901:
	goto	l4606
u4900:
	
l4604:	
	movlw	0Ch
	subwf	(_power_ad+1),w	;volatile
	movlw	04Eh
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u4911
	goto	u4910
u4911:
	goto	l4608
u4910:
	line	786
	
l4606:	
;main.c: 785: {
;main.c: 786: maxFanValue = 38;
	movlw	low(026h)
	movwf	(fanCtr@maxFanValue)
	line	788
	
l4608:	
;main.c: 787: }
;main.c: 788: test_adc = ADC_Sample(13, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(0Dh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	789
	
l4610:	
;main.c: 789: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u4921
	goto	u4920
u4921:
	goto	l4620
u4920:
	line	792
	
l4612:	
;main.c: 790: {
;main.c: 791: volatile unsigned long fan_temp;
;main.c: 792: if(power_ad > 0)
	movf	((_power_ad)),w	;volatile
iorwf	((_power_ad+1)),w	;volatile
	btfsc	status,2
	goto	u4931
	goto	u4930
u4931:
	goto	l4620
u4930:
	line	794
	
l4614:	
;main.c: 793: {
;main.c: 794: fan_temp = ((unsigned long)1UL*adresult * power_ad)/4096;
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

	
l4616:	
	movlw	0Ch
u4945:
	clrc
	rrf	(fanCtr@fan_temp+3),f	;volatile
	rrf	(fanCtr@fan_temp+2),f	;volatile
	rrf	(fanCtr@fan_temp+1),f	;volatile
	rrf	(fanCtr@fan_temp),f	;volatile
	addlw	-1
	skipz
	goto	u4945

	line	795
	
l4618:	
;main.c: 795: fanValue = (unsigned int)(fan_temp);
	movf	(fanCtr@fan_temp+1),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fanValue+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(fanCtr@fan_temp),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fanValue)^080h
	line	798
	
l4620:	
;main.c: 796: }
;main.c: 797: }
;main.c: 798: if(fanValue > 1300)
	movlw	05h
	bsf	status, 5	;RP0=1, select bank1
	subwf	(_fanValue+1)^080h,w
	movlw	015h
	skipnz
	subwf	(_fanValue)^080h,w
	skipc
	goto	u4951
	goto	u4950
u4951:
	goto	l4628
u4950:
	line	800
	
l4622:	
;main.c: 799: {
;main.c: 800: if(++fanOverTime > 25)
	movlw	low(01Ah)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_fanOverTime),f
	subwf	((_fanOverTime)),w
	skipc
	goto	u4961
	goto	u4960
u4961:
	goto	l4630
u4960:
	line	802
	
l4624:	
;main.c: 801: {
;main.c: 802: fanOverTime = 0;
	clrf	(_fanOverTime)
	line	803
;main.c: 803: workStep = 0;
	clrf	(_workStep)
	line	804
	
l4626:	
;main.c: 804: shanshuoTime = 225;
	movlw	0E1h
	movwf	(_shanshuoTime)
	clrf	(_shanshuoTime+1)
	goto	l4630
	line	809
	
l4628:	
;main.c: 807: else
;main.c: 808: {
;main.c: 809: fanOverTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_fanOverTime)
	line	811
	
l4630:	
;main.c: 810: }
;main.c: 811: if(fanDuty < maxFanValue)
	movf	(fanCtr@maxFanValue),w
	subwf	(_fanDuty),w
	skipnc
	goto	u4971
	goto	u4970
u4971:
	goto	l4634
u4970:
	line	813
	
l4632:	
;main.c: 812: {
;main.c: 813: fanDuty++;
	incf	(_fanDuty),f
	line	814
;main.c: 814: }
	goto	l4638
	line	815
	
l4634:	
;main.c: 815: else if(fanDuty > maxFanValue)
	movf	(_fanDuty),w
	subwf	(fanCtr@maxFanValue),w
	skipnc
	goto	u4981
	goto	u4980
u4981:
	goto	l4638
u4980:
	line	817
	
l4636:	
;main.c: 816: {
;main.c: 817: fanDuty--;
	decf	(_fanDuty),f
	line	819
	
l4638:	
;main.c: 818: }
;main.c: 819: fanInit();
	fcall	_fanInit
	line	820
;main.c: 820: }
	goto	l1145
	line	823
	
l4640:	
;main.c: 821: else
;main.c: 822: {
;main.c: 823: fanStop();
	fcall	_fanStop
	line	824
	
l4642:	
;main.c: 824: fanDuty = 0;
	clrf	(_fanDuty)
	line	825
	
l4644:	
;main.c: 825: PORTA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(2/8),(2)&7	;volatile
	line	827
	
l1145:	
	return
	opt stack 0
GLOBAL	__end_of_fanCtr
	__end_of_fanCtr:
	signat	_fanCtr,89
	global	_fanStop

;; *************** function _fanStop *****************
;; Defined at:
;;		line 771 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	771
global __ptext8
__ptext8:	;psect for function _fanStop
psect	text8
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	771
	global	__size_of_fanStop
	__size_of_fanStop	equ	__end_of_fanStop-_fanStop
	
_fanStop:	
;incstack = 0
	opt	stack 3
; Regs used in _fanStop: [status,2]
	line	773
	
l4378:	
;main.c: 773: PWMD1L = 0;
	clrf	(26)	;volatile
	line	774
	
l4380:	
;main.c: 774: PWMCON0 &= 0xFD;
	bcf	(21)+(1/8),(1)&7	;volatile
	line	775
	
l4382:	
;main.c: 775: PORTB &= 0x7F;
	bcf	(6)+(7/8),(7)&7	;volatile
	line	776
	
l1129:	
	return
	opt stack 0
GLOBAL	__end_of_fanStop
	__end_of_fanStop:
	signat	_fanStop,89
	global	_fanInit

;; *************** function _fanInit *****************
;; Defined at:
;;		line 759 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	759
global __ptext9
__ptext9:	;psect for function _fanInit
psect	text9
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	759
	global	__size_of_fanInit
	__size_of_fanInit	equ	__end_of_fanInit-_fanInit
	
_fanInit:	
;incstack = 0
	opt	stack 3
; Regs used in _fanInit: [wreg+status,2+status,0]
	line	762
	
l4368:	
;main.c: 762: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	763
	
l4370:	
;main.c: 763: PWMTL = 73;
	movlw	low(049h)
	movwf	(23)	;volatile
	line	764
	
l4372:	
;main.c: 764: PWMD01H = 0x00;
	clrf	(30)	;volatile
	line	765
;main.c: 765: PWMD1L = fanDuty;
	movf	(_fanDuty),w
	movwf	(26)	;volatile
	line	766
;main.c: 766: PWMCON1 = 0x40;
	movlw	low(040h)
	movwf	(22)	;volatile
	line	767
	
l4374:	
;main.c: 767: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	768
	
l4376:	
;main.c: 768: PWMCON0 |= 0x22;
	movlw	low(022h)
	iorwf	(21),f	;volatile
	line	769
	
l1126:	
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
	
l4426:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	120
	
l1417:	
	line	121
	btfss	(___lmul@multiplier),(0)&7
	goto	u4591
	goto	u4590
u4591:
	goto	l4430
u4590:
	line	122
	
l4428:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4601
	addwf	(___lmul@product+1),f
u4601:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4602
	addwf	(___lmul@product+2),f
u4602:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4603
	addwf	(___lmul@product+3),f
u4603:

	line	123
	
l4430:	
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	124
	
l4432:	
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
	goto	u4611
	goto	u4610
u4611:
	goto	l1417
u4610:
	line	128
	
l4434:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	129
	
l1420:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 303 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	303
global __ptext11
__ptext11:	;psect for function _ADC_Sample
psect	text11
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	303
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 3
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	305
	
l4280:	
;main.c: 305: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	306
	
l4282:	
;main.c: 306: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	307
;main.c: 307: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	309
	
l4284:	
;main.c: 309: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u4391
	goto	u4390
u4391:
	goto	l4290
u4390:
	
l4286:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u4401
	goto	u4400
u4401:
	goto	l4290
u4400:
	line	312
	
l4288:	
;main.c: 310: {
;main.c: 312: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	313
;main.c: 313: _delay((unsigned long)((100)*(8000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
movwf	((??_ADC_Sample+0)+0),f
	u5757:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u5757
	nop
opt asmopt_pop

	line	314
;main.c: 314: }
	goto	l4292
	line	316
	
l4290:	
;main.c: 315: else
;main.c: 316: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	318
	
l4292:	
;main.c: 318: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u4411
	goto	u4410
u4411:
	goto	l4298
u4410:
	line	320
	
l4294:	
;main.c: 319: {
;main.c: 320: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	321
	
l4296:	
;main.c: 321: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	323
	
l4298:	
	line	324
	
l4300:	
;main.c: 324: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	326
	
l4306:	
;main.c: 325: {
;main.c: 326: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u4425:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u4425
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	327
# 327 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
nop ;# 
	line	328
# 328 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
nop ;# 
	line	329
# 329 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
nop ;# 
	line	330
# 330 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
nop ;# 
psect	text11
	line	331
	
l4308:	
;main.c: 331: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	333
	
l4310:	
;main.c: 333: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	334
;main.c: 334: while (GODONE)
	goto	l993
	
l994:	
	line	336
;main.c: 335: {
;main.c: 336: _delay((unsigned long)((2)*(8000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	338
;main.c: 338: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u4431
	goto	u4430
u4431:
	goto	l993
u4430:
	line	339
	
l4312:	
;main.c: 339: return 0;
	movlw	low(0)
	goto	l996
	line	340
	
l993:	
	line	334
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u4441
	goto	u4440
u4441:
	goto	l994
u4440:
	line	342
	
l4316:	
;main.c: 340: }
;main.c: 342: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l4318:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	344
	
l4320:	
;main.c: 344: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u4451
	goto	u4450
u4451:
	goto	l4324
u4450:
	line	346
	
l4322:	
;main.c: 345: {
;main.c: 346: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	347
;main.c: 347: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	348
;main.c: 348: }
	goto	l999
	line	349
	
l4324:	
;main.c: 349: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u4465
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u4465:
	skipnc
	goto	u4461
	goto	u4460
u4461:
	goto	l4328
u4460:
	line	350
	
l4326:	
;main.c: 350: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l999
	line	351
	
l4328:	
;main.c: 351: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u4475
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u4475:
	skipnc
	goto	u4471
	goto	u4470
u4471:
	goto	l999
u4470:
	line	352
	
l4330:	
;main.c: 352: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	354
	
l999:	
;main.c: 354: adsum += ad_temp;
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
	goto	u4481
	addwf	(ADC_Sample@adsum+1),f	;volatile
u4481:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4482
	addwf	(ADC_Sample@adsum+2),f	;volatile
u4482:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4483
	addwf	(ADC_Sample@adsum+3),f	;volatile
u4483:

	line	324
	
l4332:	
	incf	(ADC_Sample@i),f
	
l4334:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u4491
	goto	u4490
u4491:
	goto	l4306
u4490:
	line	356
	
l4336:	
;main.c: 355: }
;main.c: 356: adsum -= admax;
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
	goto	u4505
	goto	u4506
u4505:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u4506:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u4507
	goto	u4508
u4507:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u4508:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u4509
	goto	u4500
u4509:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u4500:

	line	357
;main.c: 357: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u4515
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u4515
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u4515
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u4515:
	skipc
	goto	u4511
	goto	u4510
u4511:
	goto	l1003
u4510:
	line	358
	
l4338:	
;main.c: 358: adsum -= admin;
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
	goto	u4525
	goto	u4526
u4525:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u4526:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u4527
	goto	u4528
u4527:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u4528:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u4529
	goto	u4520
u4529:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u4520:

	goto	l4340
	line	359
	
l1003:	
	line	360
;main.c: 359: else
;main.c: 360: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	362
	
l4340:	
;main.c: 362: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u4535:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u4530:
	addlw	-1
	skipz
	goto	u4535
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	364
	
l4342:	
;main.c: 364: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	365
	
l4344:	
;main.c: 365: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	366
	
l4346:	
;main.c: 366: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	367
	
l4348:	
;main.c: 367: return 0xA5;
	movlw	low(0A5h)
	line	369
	
l996:	
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
	
l4838:	
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
	
l1760:	
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
	
l4772:	
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
	goto	u5211
	goto	u5210
u5211:
	goto	l4776
u5210:
	line	50
	
l4774:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l1651
	line	51
	
l4776:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u5225:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u5220:
	addlw	-1
	skipz
	goto	u5225
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l4778:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l4780:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l4782:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l4784:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l4786:	
	btfss	(___fttol@exp1),7
	goto	u5231
	goto	u5230
u5231:
	goto	l4796
u5230:
	line	57
	
l4788:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u5241
	goto	u5240
u5241:
	goto	l4792
u5240:
	goto	l4774
	line	60
	
l4792:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l4794:	
	incfsz	(___fttol@exp1),f
	goto	u5251
	goto	u5250
u5251:
	goto	l4792
u5250:
	goto	l4804
	line	63
	
l4796:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u5261
	goto	u5260
u5261:
	goto	l4802
u5260:
	goto	l4774
	line	66
	
l4800:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	65
	
l4802:	
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u5271
	goto	u5270
u5271:
	goto	l4800
u5270:
	line	70
	
l4804:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u5281
	goto	u5280
u5281:
	goto	l4808
u5280:
	line	71
	
l4806:	
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
	
l4808:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l1651:	
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
	
l4732:	
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
	goto	u5171
	goto	u5170
u5171:
	goto	l4736
u5170:
	line	64
	
l4734:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1615
	line	65
	
l4736:	
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
	goto	u5181
	goto	u5180
u5181:
	goto	l1616
u5180:
	line	66
	
l4738:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1615
	
l1616:	
	line	67
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	68
	
l4740:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l4742:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l4744:	
	movf	0+(___ftdiv@f2)+02h,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l4746:	
	movlw	low(080h)
	andwf	(___ftdiv@sign),f
	line	72
	
l4748:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l4750:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l4752:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l4754:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l4756:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l4758:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u5195
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u5195
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u5195:
	skipc
	goto	u5191
	goto	u5190
u5191:
	goto	l4764
u5190:
	line	80
	
l4760:	
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
	
l4762:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l4764:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	84
	
l4766:	
	decfsz	(___ftdiv@cntr),f
	goto	u5201
	goto	u5200
u5201:
	goto	l4758
u5200:
	line	85
	
l4768:	
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
	
l1615:	
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
	
l4438:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u4621
	goto	u4620
u4621:
	goto	l1562
u4620:
	
l4440:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u4631
	goto	u4630
u4631:
	goto	l4444
u4630:
	
l1562:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l1563
	line	67
	
l4442:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l4444:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4641
	goto	u4640
u4641:
	goto	l4442
u4640:
	goto	l4448
	line	71
	
l4446:	
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
	
l4448:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4651
	goto	u4650
u4651:
	goto	l4446
u4650:
	goto	l4452
	line	76
	
l4450:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l4452:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u4661
	goto	u4660
u4661:
	goto	l1574
u4660:
	
l4454:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u4671
	goto	u4670
u4671:
	goto	l4450
u4670:
	
l1574:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u4681
	goto	u4680
u4681:
	goto	l1575
u4680:
	line	80
	
l4456:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l1575:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l4458:	
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
	goto	u4691
	goto	u4690
u4691:
	goto	l1576
u4690:
	line	84
	
l4460:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1576:	
	line	85
	line	86
	
l1563:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_setBatStep

;; *************** function _setBatStep *****************
;; Defined at:
;;		line 551 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempSubBatTi    2    3[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
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
	line	551
global __ptext16
__ptext16:	;psect for function _setBatStep
psect	text16
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	551
	global	__size_of_setBatStep
	__size_of_setBatStep	equ	__end_of_setBatStep-_setBatStep
	
_setBatStep:	
;incstack = 0
	opt	stack 4
; Regs used in _setBatStep: [wreg+status,2+status,0+pclath+cstack]
	line	553
	
l4888:	
;main.c: 553: if(lowBatLock == 1)
	bcf	status, 5	;RP0=0, select bank0
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u5361
	goto	u5360
u5361:
	goto	l4892
u5360:
	line	555
	
l4890:	
;main.c: 554: {
;main.c: 555: showBatStep = 0;
	clrf	(_showBatStep)
	line	556
;main.c: 556: curBatStep = 0;
	clrf	(_curBatStep)
	line	557
;main.c: 557: }
	goto	l1089
	line	558
	
l4892:	
;main.c: 558: else if(power_ad < 2800)
	movlw	0Ah
	subwf	(_power_ad+1),w	;volatile
	movlw	0F0h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u5371
	goto	u5370
u5371:
	goto	l4904
u5370:
	line	560
	
l4894:	
;main.c: 559: {
;main.c: 560: if(count10s == 0 && count1s == 0)
	movf	((_count10s)),w
	btfss	status,2
	goto	u5381
	goto	u5380
u5381:
	goto	l1069
u5380:
	
l4896:	
	movf	((_count1s)),w
	btfss	status,2
	goto	u5391
	goto	u5390
u5391:
	goto	l1069
u5390:
	line	562
	
l4898:	
;main.c: 561: {
;main.c: 562: if(showBatStep > 1)
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u5401
	goto	u5400
u5401:
	goto	l1070
u5400:
	line	564
	
l4900:	
;main.c: 563: {
;main.c: 564: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u5411
	goto	u5410
u5411:
	goto	l1072
u5410:
	line	565
	
l4902:	
;main.c: 565: showBatStep--;
	decf	(_showBatStep),f
	goto	l1072
	line	567
	
l1070:	
	line	569
;main.c: 567: else
;main.c: 568: {
;main.c: 569: showBatStep = 1;
	clrf	(_showBatStep)
	incf	(_showBatStep),f
	line	570
	
l1072:	
	line	571
;main.c: 570: }
;main.c: 571: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	line	572
	
l1069:	
	line	573
;main.c: 572: }
;main.c: 573: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	line	574
;main.c: 574: }
	goto	l1089
	line	577
	
l4904:	
;main.c: 575: else
;main.c: 576: {
;main.c: 577: if(power_ad < 3600)
	movlw	0Eh
	subwf	(_power_ad+1),w	;volatile
	movlw	010h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u5421
	goto	u5420
u5421:
	goto	l4908
u5420:
	line	579
	
l4906:	
;main.c: 578: {
;main.c: 579: curBatStep = (power_ad - 2800)/80;
	movlw	050h
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
	line	580
;main.c: 580: }
	goto	l4910
	line	583
	
l4908:	
;main.c: 581: else
;main.c: 582: {
;main.c: 583: curBatStep = 20 + ((power_ad - 3600)/5);
	movlw	05h
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
	line	585
	
l4910:	
;main.c: 584: }
;main.c: 585: if(curBatStep > 99)
	movlw	low(064h)
	subwf	(_curBatStep),w
	skipc
	goto	u5431
	goto	u5430
u5431:
	goto	l4914
u5430:
	line	587
	
l4912:	
;main.c: 586: {
;main.c: 587: curBatStep = 99;
	movlw	low(063h)
	movwf	(_curBatStep)
	line	590
	
l4914:	
;main.c: 588: }
;main.c: 590: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u5441
	goto	u5440
u5441:
	goto	l4940
u5440:
	line	592
	
l4916:	
;main.c: 591: {
;main.c: 592: if(chrgFullFlag && showBatStep < 99)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u5451
	goto	u5450
u5451:
	goto	l4926
u5450:
	
l4918:	
	movlw	low(063h)
	subwf	(_showBatStep),w
	skipnc
	goto	u5461
	goto	u5460
u5461:
	goto	l4926
u5460:
	line	594
	
l4920:	
;main.c: 593: {
;main.c: 594: if(++count15s >= 7500)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_count15s)^080h,f
	skipnz
	incf	(_count15s+1)^080h,f
	movlw	01Dh
	subwf	((_count15s+1)^080h),w
	movlw	04Ch
	skipnz
	subwf	((_count15s)^080h),w
	skipc
	goto	u5471
	goto	u5470
u5471:
	goto	l4928
u5470:
	line	596
	
l4922:	
;main.c: 595: {
;main.c: 596: count15s = 0;
	clrf	(_count15s)^080h
	clrf	(_count15s+1)^080h
	line	597
	
l4924:	
;main.c: 597: showBatStep++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_showBatStep),f
	goto	l4928
	line	602
	
l4926:	
;main.c: 600: else
;main.c: 601: {
;main.c: 602: count15s = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_count15s)^080h
	clrf	(_count15s+1)^080h
	line	604
	
l4928:	
;main.c: 603: }
;main.c: 604: if(curBatStep > showBatStep)
	bcf	status, 5	;RP0=0, select bank0
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u5481
	goto	u5480
u5481:
	goto	l4938
u5480:
	line	606
	
l4930:	
;main.c: 605: {
;main.c: 606: if(++count30s >= 15000 && showBatStep < 99)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	03Ah
	subwf	((_count30s+1)),w
	movlw	098h
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u5491
	goto	u5490
u5491:
	goto	l1073
u5490:
	
l4932:	
	movlw	low(063h)
	subwf	(_showBatStep),w
	skipnc
	goto	u5501
	goto	u5500
u5501:
	goto	l1073
u5500:
	line	608
	
l4934:	
;main.c: 607: {
;main.c: 608: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	609
	
l4936:	
;main.c: 609: showBatStep++;
	incf	(_showBatStep),f
	goto	l1089
	line	615
	
l4938:	
;main.c: 613: else
;main.c: 614: {
;main.c: 615: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	goto	l1089
	line	620
	
l4940:	
;main.c: 618: else
;main.c: 619: {
;main.c: 620: unsigned int tempSubBatTime = 15000;
	movlw	098h
	movwf	(setBatStep@tempSubBatTime)
	movlw	03Ah
	movwf	((setBatStep@tempSubBatTime))+1
	line	621
;main.c: 621: if(showBatStep < 40)
	movlw	low(028h)
	subwf	(_showBatStep),w
	skipnc
	goto	u5511
	goto	u5510
u5511:
	goto	l1085
u5510:
	line	623
	
l4942:	
;main.c: 622: {
;main.c: 623: tempSubBatTime = 8000;
	movlw	040h
	movwf	(setBatStep@tempSubBatTime)
	movlw	01Fh
	movwf	((setBatStep@tempSubBatTime))+1
	line	624
	
l1085:	
	line	625
;main.c: 624: }
;main.c: 625: if(curBatStep < showBatStep && showBatStep > 1)
	movf	(_showBatStep),w
	subwf	(_curBatStep),w
	skipnc
	goto	u5521
	goto	u5520
u5521:
	goto	l4938
u5520:
	
l4944:	
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u5531
	goto	u5530
u5531:
	goto	l4938
u5530:
	line	627
	
l4946:	
;main.c: 626: {
;main.c: 627: if(++count30s >= tempSubBatTime && showBatStep > 1)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movf	(setBatStep@tempSubBatTime+1),w
	subwf	((_count30s+1)),w
	skipz
	goto	u5545
	movf	(setBatStep@tempSubBatTime),w
	subwf	((_count30s)),w
u5545:
	skipc
	goto	u5541
	goto	u5540
u5541:
	goto	l1073
u5540:
	
l4948:	
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u5551
	goto	u5550
u5551:
	goto	l1073
u5550:
	line	629
	
l4950:	
;main.c: 628: {
;main.c: 629: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	630
	
l4952:	
;main.c: 630: showBatStep--;
	decf	(_showBatStep),f
	goto	l1089
	line	639
	
l1073:	
	line	640
	
l1089:	
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
	
l4812:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l4814:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u5291
	goto	u5290
u5291:
	goto	l4834
u5290:
	line	16
	
l4816:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l4820
	line	18
	
l4818:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l4820:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u5301
	goto	u5300
u5301:
	goto	l4818
u5300:
	line	22
	
l4822:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l4824:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u5315
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u5315:
	skipc
	goto	u5311
	goto	u5310
u5311:
	goto	l4830
u5310:
	line	24
	
l4826:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l4828:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l4830:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l4832:	
	decfsz	(___lwdiv@counter),f
	goto	u5321
	goto	u5320
u5321:
	goto	l4822
u5320:
	line	30
	
l4834:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l1745:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 642 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	642
global __ptext18
__ptext18:	;psect for function _chrgCtr
psect	text18
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	642
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _chrgCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	644
	
l4076:	
;main.c: 644: if(PORTB & 0x01)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),(0)&7	;volatile
	goto	u4051
	goto	u4050
u4051:
	goto	l4094
u4050:
	line	646
	
l4078:	
;main.c: 645: {
;main.c: 646: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	647
	
l4080:	
;main.c: 647: firstLock = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_firstLock)^080h
	line	648
;main.c: 648: lowBatLock = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowBatLock)
	line	649
	
l4082:	
;main.c: 649: showBatLed();
	fcall	_showBatLed
	line	650
	
l4084:	
;main.c: 650: if(PORTB & 0x02)
	btfss	(6),(1)&7	;volatile
	goto	u4061
	goto	u4060
u4061:
	goto	l4092
u4060:
	line	652
	
l4086:	
;main.c: 651: {
;main.c: 652: if(++chrgFullTime > 200)
	movlw	low(0C9h)
	incf	(_chrgFullTime),f
	subwf	((_chrgFullTime)),w
	skipc
	goto	u4071
	goto	u4070
u4071:
	goto	l1102
u4070:
	line	654
	
l4088:	
;main.c: 653: {
;main.c: 654: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	655
	
l4090:	
;main.c: 655: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l1102
	line	660
	
l4092:	
;main.c: 658: else
;main.c: 659: {
;main.c: 660: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	goto	l1102
	line	666
	
l4094:	
;main.c: 664: else
;main.c: 665: {
;main.c: 666: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	667
;main.c: 667: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	668
;main.c: 668: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	670
	
l4096:	
;main.c: 670: if(firstTime == 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4081
	goto	u4080
u4081:
	goto	l4106
u4080:
	line	672
	
l4098:	
;main.c: 671: {
;main.c: 672: if(workStep == 0 && wuhuaFlag == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u4091
	goto	u4090
u4091:
	goto	l4104
u4090:
	
l4100:	
	movf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u4101
	goto	u4100
u4101:
	goto	l4104
u4100:
	line	674
	
l4102:	
;main.c: 673: {
;main.c: 674: showNumShi = 0;
	clrf	(_showNumShi)
	line	675
;main.c: 675: showNumGe = 0;
	clrf	(_showNumGe)
	line	676
;main.c: 676: }
	goto	l1102
	line	679
	
l4104:	
;main.c: 677: else
;main.c: 678: {
;main.c: 679: showBatLed();
	fcall	_showBatLed
	goto	l1102
	line	684
	
l4106:	
;main.c: 682: else
;main.c: 683: {
;main.c: 684: if(showBatStep < curBatStep)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u4111
	goto	u4110
u4111:
	goto	l1101
u4110:
	line	686
	
l4108:	
;main.c: 685: {
;main.c: 686: showBatStep = curBatStep;
	movf	(_curBatStep),w
	movwf	(_showBatStep)
	line	687
	
l1101:	
	line	688
;main.c: 687: }
;main.c: 688: showNumShi = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumShi)
	line	689
;main.c: 689: showNumGe = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumGe)
	line	692
	
l1102:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_showBatLed

;; *************** function _showBatLed *****************
;; Defined at:
;;		line 545 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	545
global __ptext19
__ptext19:	;psect for function _showBatLed
psect	text19
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	545
	global	__size_of_showBatLed
	__size_of_showBatLed	equ	__end_of_showBatLed-_showBatLed
	
_showBatLed:	
;incstack = 0
	opt	stack 3
; Regs used in _showBatLed: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	547
	
l3426:	
;main.c: 547: showNumShi = numArray[showBatStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_showBatStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumShi)
	line	548
;main.c: 548: showNumGe = numArray[showBatStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_showBatStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumGe)
	line	549
	
l1063:	
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
	
l3296:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3298:	
	clrf	(___lbmod@rem)
	line	12
	
l3300:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2575:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2575
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3302:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3304:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l3308
u2580:
	line	15
	
l3306:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3308:	
	decfsz	(___lbmod@counter),f
	goto	u2591
	goto	u2590
u2591:
	goto	l3300
u2590:
	line	17
	
l3310:	
	movf	(___lbmod@rem),w
	line	18
	
l1677:	
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
	
l3272:	
	clrf	(___lbdiv@quotient)
	line	10
	
l3274:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l3292
u2530:
	line	11
	
l3276:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l3280
	
l1666:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l3278:	
	incf	(___lbdiv@counter),f
	line	12
	
l3280:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l1666
u2540:
	line	16
	
l1668:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l3282:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l3288
u2550:
	line	19
	
l3284:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l3286:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l3288:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l3290:	
	decfsz	(___lbdiv@counter),f
	goto	u2561
	goto	u2560
u2561:
	goto	l1668
u2560:
	line	25
	
l3292:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1671:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_WorkSleep

;; *************** function _WorkSleep *****************
;; Defined at:
;;		line 223 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	223
global __ptext22
__ptext22:	;psect for function _WorkSleep
psect	text22
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	223
	global	__size_of_WorkSleep
	__size_of_WorkSleep	equ	__end_of_WorkSleep-_WorkSleep
	
_WorkSleep:	
;incstack = 0
	opt	stack 2
; Regs used in _WorkSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	228
	
l4842:	
;main.c: 228: if(B_OnOff)time = 0;
	btfss	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	goto	u5331
	goto	u5330
u5331:
	goto	l4846
u5330:
	
l4844:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_time)^080h
	clrf	(_time+1)^080h
	line	230
	
l4846:	
;main.c: 230: if(++time >= 1000)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_time)^080h,f
	skipnz
	incf	(_time+1)^080h,f
	movlw	03h
	subwf	((_time+1)^080h),w
	movlw	0E8h
	skipnz
	subwf	((_time)^080h),w
	skipc
	goto	u5341
	goto	u5340
u5341:
	goto	l985
u5340:
	line	232
	
l4848:	
;main.c: 231: {
;main.c: 232: time = 0;
	clrf	(_time)^080h
	clrf	(_time+1)^080h
	line	233
;main.c: 233: INTCON = 0;
	clrf	(11)	;volatile
	line	234
;main.c: 234: PIE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
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
	
l4850:	
;main.c: 245: TRISA &= 0xE4;
	movlw	low(0E4h)
	andwf	(133)^080h,f	;volatile
	line	246
	
l4852:	
;main.c: 246: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	247
	
l4854:	
;main.c: 247: PORTA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	248
	
l4856:	
;main.c: 248: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	249
	
l4858:	
;main.c: 249: TRISC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	250
	
l4860:	
;main.c: 250: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	252
	
l4862:	
;main.c: 252: TRISB0 =1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	254
	
l4864:	
;main.c: 254: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	255
	
l4866:	
;main.c: 255: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	256
	
l4868:	
;main.c: 256: IOCB0= 1;
	bsf	(72/8),(72)&7	;volatile
	line	257
	
l4870:	
;main.c: 257: PORTB;
	movf	(6),w	;volatile
	line	269
	
l4872:	
;main.c: 269: SystemEnterSleep();
	fcall	_SystemEnterSleep
	line	270
	
l4874:	
;main.c: 270: if(RAIF)
	btfss	(107/8),(107)&7	;volatile
	goto	u5351
	goto	u5350
u5351:
	goto	l4880
u5350:
	line	272
	
l4876:	
;main.c: 271: {
;main.c: 272: RAIF = 0;
	bcf	(107/8),(107)&7	;volatile
	line	273
	
l4878:	
;main.c: 273: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	276
	
l4880:	
;main.c: 274: }
;main.c: 276: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	277
	
l4882:	
;main.c: 277: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	278
	
l4884:	
;main.c: 278: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	279
	
l4886:	
;main.c: 279: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	282
	
l985:	
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
	
l4482:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text23
	
l1387:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text23
	
l4484:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	
l4486:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(1),f	;volatile
	
l4488:	
	bsf	(1)+(3/8),(3)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text23
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\TouchKeyConst.h"
	line	5
	
l4490:	
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text23
	
l4492:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	
l4494:	
	clrf	(275)^0100h	;volatile
	
l4496:	
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
	
l4498:	
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	
l4500:	
	movlw	low(079h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(275)^0100h	;volatile
	
l4502:	
	fcall	_ClearResSum
	
l4504:	
	bsf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	
l4506:	
	fcall	_GetTouchKeyValue
	
l4508:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SystemEnterSleep@91)
	
l4510:	
	clrf	(SystemEnterSleep@92)
	incf	(SystemEnterSleep@92),f
	clrf	(SystemEnterSleep@92+1)
	
l4512:	
	btfsc	(88/8),(88)&7	;volatile
	goto	u4741
	goto	u4740
u4741:
	goto	l4518
u4740:
	
l4514:	
	btfsc	(89/8),(89)&7	;volatile
	goto	u4751
	goto	u4750
u4751:
	goto	l4518
u4750:
	
l4516:	
	btfss	(107/8),(107)&7	;volatile
	goto	u4761
	goto	u4760
u4761:
	goto	l4530
u4760:
	
l4518:	
	fcall	_ClearResSum
	
l4520:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	
l4522:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4524:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	l1391
	
l4530:	
	movf	(SystemEnterSleep@92),w
	andlw	03h
	btfsc	status,2
	goto	u4771
	goto	u4770
u4771:
	goto	l4564
u4770:
	
l4532:	
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
	
l4534:	
	movf	((SystemEnterSleep@93)),w
iorwf	((SystemEnterSleep@93+1)),w
	btfsc	status,2
	goto	u4781
	goto	u4780
u4781:
	goto	l4564
u4780:
	
l4536:	
	movf	(SystemEnterSleep@91),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addwf	(SystemEnterSleep@94),f
	skipnc
	incf	(SystemEnterSleep@94+1),f
	
l4538:	
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
	goto	u4795
	movf	(SystemEnterSleep@94),w
	subwf	0+(??_SystemEnterSleep+0)+0,w
u4795:
	skipc
	goto	u4791
	goto	u4790
u4791:
	goto	l4562
u4790:
	
l4540:	
	clrf	(SystemEnterSleep@91)
	
l4542:	
	clrf	(SystemEnterSleep@92)
	incf	(SystemEnterSleep@92),f
	clrf	(SystemEnterSleep@92+1)
	
l4544:	
	movf	(SystemEnterSleep@92),w
	andlw	03h
	btfss	status,2
	goto	u4801
	goto	u4800
u4801:
	goto	l4548
u4800:
	
l4546:	
	movf	(SystemEnterSleep@91),w
	fcall	_KeyClearOne
	
l4548:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(SystemEnterSleep@92),f
	rlf	(SystemEnterSleep@92+1),f
	
l4550:	
	movlw	low(02h)
	incf	(SystemEnterSleep@91),f
	subwf	((SystemEnterSleep@91)),w
	skipc
	goto	u4811
	goto	u4810
u4811:
	goto	l4544
u4810:
	goto	l4518
	
l4562:	
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
	
l4564:	
	clrc
	rlf	(SystemEnterSleep@92),f
	rlf	(SystemEnterSleep@92+1),f
	
l4566:	
	movlw	low(02h)
	incf	(SystemEnterSleep@91),f
	subwf	((SystemEnterSleep@91)),w
	skipc
	goto	u4821
	goto	u4820
u4821:
	goto	l4530
u4820:
	goto	l1387
	
l1391:	
	return
	opt stack 0
GLOBAL	__end_of_SystemEnterSleep
	__end_of_SystemEnterSleep:
	signat	_SystemEnterSleep,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 117 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	117
global __ptext24
__ptext24:	;psect for function _Refurbish_Sfr
psect	text24
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	117
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 4
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	120
	
l3334:	
;main.c: 120: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(14)	;volatile
	line	121
;main.c: 121: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	122
;main.c: 122: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	123
	
l3336:	
;main.c: 123: if (4 != T2CON)
		movlw	4
	xorwf	((19)),w	;volatile
	btfsc	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l947
u2640:
	line	124
	
l3338:	
;main.c: 124: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	125
	
l947:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 131 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	131
global __ptext25
__ptext25:	;psect for function _KeyServer
psect	text25
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	131
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 5
; Regs used in _KeyServer: [wreg+status,2+status,0]
	line	134
	
l3838:	
;main.c: 133: static unsigned char KeyOldFlag = 0;
;main.c: 134: if (KeyFlag[0])
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l3890
u3420:
	line	136
	
l3840:	
;main.c: 135: {
;main.c: 136: time = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_time)^080h
	clrf	(_time+1)^080h
	line	137
	
l3842:	
;main.c: 137: if (KeyFlag[0] != KeyOldFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),w
	skipnz
	goto	u3431
	goto	u3430
u3431:
	goto	l967
u3430:
	line	140
	
l3844:	
;main.c: 138: {
;main.c: 140: KeyOldFlag ^= KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),f
	line	141
	
l3846:	
;main.c: 141: if ((KeyOldFlag & 0x1) && (KeyFlag[0] & 0x1) && firstLock == 0)
	btfss	(KeyServer@KeyOldFlag),(0)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l3866
u3440:
	
l3848:	
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u3451
	goto	u3450
u3451:
	goto	l3866
u3450:
	
l3850:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstLock)^080h),w
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l3866
u3460:
	line	144
	
l3852:	
;main.c: 142: {
;main.c: 144: if(lowBatLock == 1)
	bcf	status, 5	;RP0=0, select bank0
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l3856
u3470:
	line	146
	
l3854:	
;main.c: 145: {
;main.c: 146: shanshuoTime = 225;
	movlw	0E1h
	movwf	(_shanshuoTime)
	clrf	(_shanshuoTime+1)
	line	147
;main.c: 147: }
	goto	l3860
	line	148
	
l3856:	
;main.c: 148: else if(++workStep > 2)
	movlw	low(03h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l3860
u3480:
	line	150
	
l3858:	
;main.c: 149: {
;main.c: 150: workStep = 0;
	clrf	(_workStep)
	line	152
	
l3860:	
;main.c: 151: }
;main.c: 152: if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l3864
u3490:
	line	154
	
l3862:	
;main.c: 153: {
;main.c: 154: shanshuoTime = 225;
	movlw	0E1h
	movwf	(_shanshuoTime)
	clrf	(_shanshuoTime+1)
	line	155
;main.c: 155: }
	goto	l3866
	line	158
	
l3864:	
;main.c: 156: else
;main.c: 157: {
;main.c: 158: shanshuoTime = 0;
	clrf	(_shanshuoTime)
	clrf	(_shanshuoTime+1)
	line	161
	
l3866:	
;main.c: 159: }
;main.c: 160: }
;main.c: 161: if ((KeyOldFlag & 0x2) && (KeyFlag[0] & 0x2) && firstLock == 0)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(KeyServer@KeyOldFlag),(1)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l3888
u3500:
	
l3868:	
	btfss	(_KeyFlag),(1)&7	;volatile
	goto	u3511
	goto	u3510
u3511:
	goto	l3888
u3510:
	
l3870:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((_firstLock)^080h),w
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l3888
u3520:
	line	164
	
l3872:	
;main.c: 162: {
;main.c: 164: if(lowBatLock == 1)
	bcf	status, 5	;RP0=0, select bank0
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l3876
u3530:
	line	166
	
l3874:	
;main.c: 165: {
;main.c: 166: shanshuoTime2 = 225;
	movlw	0E1h
	movwf	(_shanshuoTime2)
	clrf	(_shanshuoTime2+1)
	line	167
;main.c: 167: }
	goto	l3880
	line	168
	
l3876:	
;main.c: 168: else if(++wuhuaFlag > 2)
	movlw	low(03h)
	incf	(_wuhuaFlag),f
	subwf	((_wuhuaFlag)),w
	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l3880
u3540:
	line	170
	
l3878:	
;main.c: 169: {
;main.c: 170: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	line	172
	
l3880:	
;main.c: 171: }
;main.c: 172: if(wuhuaFlag == 2)
		movlw	2
	xorwf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l3886
u3550:
	line	174
	
l3882:	
;main.c: 173: {
;main.c: 174: shanshuoTime2 = 225;
	movlw	0E1h
	movwf	(_shanshuoTime2)
	clrf	(_shanshuoTime2+1)
	line	175
	
l3884:	
;main.c: 175: count10s = 0;
	clrf	(_count10s)
	line	176
;main.c: 176: }
	goto	l3888
	line	179
	
l3886:	
;main.c: 177: else
;main.c: 178: {
;main.c: 179: shanshuoTime2 = 0;
	clrf	(_shanshuoTime2)
	clrf	(_shanshuoTime2+1)
	line	184
	
l3888:	
;main.c: 180: }
;main.c: 181: }
;main.c: 184: KeyOldFlag = KeyFlag[0];
	bcf	status, 5	;RP0=0, select bank0
	movf	(_KeyFlag),w	;volatile
	movwf	(KeyServer@KeyOldFlag)
	goto	l967
	line	189
	
l3890:	
;main.c: 187: else
;main.c: 188: {
;main.c: 189: KeyOldFlag = 0;
	clrf	(KeyServer@KeyOldFlag)
	line	191
	
l967:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 80 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	80
global __ptext26
__ptext26:	;psect for function _Init_System
psect	text26
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	80
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	82
	
l3808:	
# 82 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
nop ;# 
	line	83
# 83 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
clrwdt ;# 
psect	text26
	line	84
	
l3810:	
;main.c: 84: INTCON = 0;
	clrf	(11)	;volatile
	line	85
	
l3812:	
;main.c: 85: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	86
	
l3814:	
;main.c: 86: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	91
	
l3816:	
;main.c: 91: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	92
	
l3818:	
;main.c: 92: PORTA = 0;
	clrf	(134)^080h	;volatile
	line	93
;main.c: 93: TRISB = 0x23;
	movlw	low(023h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	94
	
l3820:	
;main.c: 94: PORTB = 0;
	clrf	(6)	;volatile
	line	95
	
l3822:	
;main.c: 95: WPUB = 0x02;
	movlw	low(02h)
	movwf	(8)	;volatile
	line	96
;main.c: 96: TRISC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	97
;main.c: 97: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	99
	
l3824:	
;main.c: 99: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	100
	
l3826:	
;main.c: 100: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	101
	
l3828:	
;main.c: 101: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	103
	
l3830:	
;main.c: 103: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	104
	
l3832:	
;main.c: 104: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	105
	
l3834:	
;main.c: 105: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	106
	
l3836:	
;main.c: 106: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	107
	
l943:	
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
	
l4992:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text27
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u5631
	goto	u5630
u5631:
	goto	l1375
u5630:
	
l4994:	
	fcall	_GetTouchKeyValue
	
l4996:	
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u5641
	goto	u5640
u5641:
	goto	l5026
u5640:
	
l4998:	
	clrf	(_KeyCounter)
	
l5000:	
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l5026
	
l1375:	
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u5651
	goto	u5650
u5651:
	goto	l5020
u5650:
	
l5002:	
	fcall	_CheckOnceResult
	fcall	_TurnKeyFlags
	
l5004:	
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l5006:	
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u5661
	goto	u5660
u5661:
	goto	l5010
u5660:
	
l5008:	
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u5671
	goto	u5670
u5671:
	goto	l5018
u5670:
	
l5010:	
	fcall	_KeyStopClear
	
l5012:	
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l5014:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l5016:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l5018:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	goto	l5026
	
l5020:	
	fcall	_CheckKeyOldValue
	fcall	_ClearResSum
	
l5022:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l5024:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l5026:	
	fcall	_CheckValidTime
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text27
	
l1383:	
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
	
l3650:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text28
	
l3652:	
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l3678
u3180:
	
l3654:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(TurnKeyFlags@F84)
	
l3656:	
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u3191
	goto	u3190
u3191:
	goto	l1356
u3190:
	
l3658:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l1356
u3200:
	
l3660:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F83),f
	subwf	((TurnKeyFlags@F83)),w
	skipc
	goto	u3211
	goto	u3210
u3211:
	goto	l1361
u3210:
	
l3662:	
	clrf	(TurnKeyFlags@F83)
	
l3664:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	
l3666:	
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	
l3668:	
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u3221
	goto	u3220
u3221:
	goto	l1357
u3220:
	
l3670:	
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3672:	
	fcall	_KeyClearIn
	goto	l1361
	
l1357:	
	goto	l1361
	
l1356:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3674:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	
l3676:	
	clrf	(TurnKeyFlags@F83)
	goto	l1361
	
l3678:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(TurnKeyFlags@F83)
	clrf	(_KeyOldData)	;volatile
	clrf	0+(_KeyOldData)+01h	;volatile
	
l3680:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F84),f
	subwf	((TurnKeyFlags@F84)),w
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l1361
u3230:
	
l3682:	
	clrf	(TurnKeyFlags@F84)
	clrf	(_KeyFlag)	;volatile
	clrf	0+(_KeyFlag)+01h	;volatile
	
l3684:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l1361:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text28
	
l1363:	
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
	
l3160:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text29
	
l3162:	
	clrf	(KeyClearIn@51)
	
l3168:	
	movf	(KeyClearIn@51),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l3172
u2340:
	
l3170:	
	movf	(KeyClearIn@51),w
	fcall	_KeyClearOne
	
l3172:	
	incf	(KeyClearIn@51),f
	
l3174:	
	movlw	low(02h)
	subwf	(KeyClearIn@51),w
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l3168
u2350:
	
l1269:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text29
	
l1271:	
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
	
l3522:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text30
	
l3524:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyFlag)	;volatile
	clrf	0+(_KeyFlag)+01h	;volatile
	clrf	(KeyStopClear@53)
	
l3530:	
	clrc
	rlf	(KeyStopClear@53),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l3532:	
	movf	(KeyStopClear@53),w
	fcall	_KeyClearOne
	
l3534:	
	incf	(KeyStopClear@53),f
	
l3536:	
	movlw	low(02h)
	subwf	(KeyStopClear@53),w
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l3530
u2950:
	
l1275:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text30
	
l1276:	
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
	
l4384:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text31
	
l4386:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(GetTouchKeyValue@62)
	
l4388:	
	clrf	(GetTouchKeyValue@63)
	incf	(GetTouchKeyValue@63),f
	clrf	(GetTouchKeyValue@63+1)
	
l4390:	
	btfss	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	goto	u4541
	goto	u4540
u4541:
	goto	l4394
u4540:
	
l4392:	
	movf	(GetTouchKeyValue@63),w
	andlw	03h
	btfsc	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l4422
u4550:
	
l4394:	
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	clrf	(274)^0100h	;volatile
	
l4396:	
	movlw	low(079h)
	movwf	(275)^0100h	;volatile
	
l4398:	
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	
l4400:	
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
	
l4402:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7	;volatile
	
l4404:	
	movf	(GetTouchKeyValue@62),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 6	;RP1=1, select bank2
	movwf	(273)^0100h	;volatile
	
l4406:	
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
	
l4408:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(273)^0100h+(0/8),(0)&7	;volatile
	
l4410:	
	movlw	0D0h
	bcf	status, 6	;RP1=0, select bank0
	movwf	(GetTouchKeyValue@64)
	movlw	07h
	movwf	((GetTouchKeyValue@64))+1
	goto	l1297
	
l4412:	
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
	goto	u4561
	goto	u4560
u4561:
	goto	l1297
u4560:
	
l4414:	
	movlw	low(0FFh)
	movwf	(_KeyCounter)
	
l4416:	
	fcall	_ClearResSum
	goto	l1300
	
l1297:	
	bsf	status, 6	;RP1=1, select bank2
	btfss	(273)^0100h,(7)&7	;volatile
	goto	u4571
	goto	u4570
u4571:
	goto	l4412
u4570:
	
l4420:	
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
	
l4422:	
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(GetTouchKeyValue@63),f
	rlf	(GetTouchKeyValue@63+1),f
	
l4424:	
	movlw	low(02h)
	incf	(GetTouchKeyValue@62),f
	subwf	((GetTouchKeyValue@62)),w
	skipc
	goto	u4581
	goto	u4580
u4581:
	goto	l4390
u4580:
	
l1302:	
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text31
	
l1300:	
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
	
l4272:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text32
	
l4274:	
	clrf	(ClearResSum@56)
	
l4276:	
	clrc
	rlf	(ClearResSum@56),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l4278:	
	movlw	low(02h)
	incf	(ClearResSum@56),f
	subwf	((ClearResSum@56)),w
	skipc
	goto	u4381
	goto	u4380
u4381:
	goto	l4276
u4380:
	
l1280:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text32
	
l1281:	
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
	
l3686:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text33
	
l3688:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u3241
	goto	u3240
u3241:
	goto	l3694
u3240:
	
l3690:	
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
	goto	u3251
	goto	u3250
u3251:
	goto	l1368
u3250:
	
l3692:	
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l3694:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(CheckValidTime@F87)^080h
	clrf	(CheckValidTime@F87+1)^080h
	
l1368:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text33
	
l1372:	
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
	
l4662:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text34
	
l4664:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckOnceResult@68)
	clrf	(_KeyData)	;volatile
	clrf	0+(_KeyData)+01h	;volatile
	clrf	(_KeyMaxSub)
	
l4666:	
	movf	(CheckOnceResult@68),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@70)
	
l4668:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u5045:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank1
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u5040:
	addlw	-1
	skipz
	goto	u5045
	
l4670:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@71)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@71+1)
	
l4672:	
	movf	(CheckOnceResult@68),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@69)
	
l4674:	
	movf	(CheckOnceResult@69),w
	movwf	(CheckOnceResult@72)
	clrf	(CheckOnceResult@72+1)
	
l4676:	
	movf	(CheckOnceResult@71),w
	addwf	(CheckOnceResult@72),f
	skipnc
	incf	(CheckOnceResult@72+1),f
	movf	(CheckOnceResult@71+1),w
	addwf	(CheckOnceResult@72+1),f
	
l4678:	
	movf	(CheckOnceResult@68),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u5051
	goto	u5050
u5051:
	goto	l4708
u5050:
	
l4680:	
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
	goto	u5065
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72),w
u5065:
	skipnc
	goto	u5061
	goto	u5060
u5061:
	goto	l4684
u5060:
	
l4682:	
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
	goto	l4692
	
l4684:	
	movf	(CheckOnceResult@73+1),w
	subwf	(CheckOnceResult@72+1),w
	skipz
	goto	u5075
	movf	(CheckOnceResult@73),w
	subwf	(CheckOnceResult@72),w
u5075:
	skipnc
	goto	u5071
	goto	u5070
u5071:
	goto	l4730
u5070:
	
l4686:	
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
	goto	u5085
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72),w
u5085:
	skipnc
	goto	u5081
	goto	u5080
u5081:
	goto	l4730
u5080:
	
l4688:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@73),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@73+1),w
	movwf	indf
	
l4690:	
	movf	(CheckOnceResult@71),w
	subwf	(CheckOnceResult@73),w
	movwf	(CheckOnceResult@71)
	movf	(CheckOnceResult@71+1),w
	skipc
	incf	(CheckOnceResult@71+1),w
	subwf	(CheckOnceResult@73+1),w
	movwf	1+(CheckOnceResult@71)
	
l4692:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	
l4694:	
	movf	(0+(CheckOnceResult@71)+01h),w
	btfsc	status,2
	goto	u5091
	goto	u5090
u5091:
	goto	l4698
u5090:
	
l4696:	
	movlw	low(0FFh)
	movwf	(CheckOnceResult@69)
	goto	l1314
	
l4698:	
	movf	(CheckOnceResult@71),w
	movwf	(CheckOnceResult@69)
	
l1314:	
	movf	(CheckOnceResult@69),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u5101
	goto	u5100
u5101:
	goto	l4704
u5100:
	
l4700:	
	movf	(CheckOnceResult@69),w
	movwf	(_KeyMaxSub)
	
l4702:	
	movf	(CheckOnceResult@70),w
	movwf	(KeyHave@59)
	clrf	(KeyHave@59+1)
	movf	(CheckOnceResult@68),w
	fcall	_KeyHave
	goto	l4730
	
l4704:	
	incf	(_KeyCounter),f
	goto	l4730
	
l4708:	
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
	goto	u5115
	movf	(CheckOnceResult@72),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u5115:
	skipnc
	goto	u5111
	goto	u5110
u5111:
	goto	l4714
u5110:
	goto	l4730
	
l4714:	
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
	goto	u5125
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u5125:
	skipc
	goto	u5121
	goto	u5120
u5121:
	goto	l4718
u5120:
	
l4716:	
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
	goto	u5135
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u5135:
	skipnc
	goto	u5131
	goto	u5130
u5131:
	goto	l4722
u5130:
	
l4718:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u5141
	goto	u5140
u5141:
	goto	l1320
u5140:
	
l4720:	
	movf	(CheckOnceResult@68),w
	fcall	_KeyClearOne
	goto	l4730
	
l4722:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l4726
	
l1320:	
	
l4726:	
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfss	status,2
	goto	u5151
	goto	u5150
u5151:
	goto	l4730
u5150:
	
l4728:	
	movf	(CheckOnceResult@70),w
	movwf	(KeyHave@59)
	clrf	(KeyHave@59+1)
	movf	(CheckOnceResult@68),w
	fcall	_KeyHave
	
l4730:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@68),f
	subwf	((CheckOnceResult@68)),w
	skipc
	goto	u5161
	goto	u5160
u5161:
	goto	l4666
u5160:
	
l1329:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text34
	
l1330:	
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
	
l3176:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text35
	
l3178:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	
l3180:	
	clrf	(_KeyData)	;volatile
	
l3182:	
	clrf	0+(_KeyData)+01h	;volatile
	
l3184:	
	btfss	(KeyHave@58),(3)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l3188
u2360:
	
l3186:	
	movf	(KeyHave@59),w
	movwf	0+(_KeyData)+01h	;volatile
	goto	l1287
	
l3188:	
	movf	(KeyHave@59),w
	movwf	(_KeyData)	;volatile
	
l1287:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text35
	
l1290:	
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
	
l3044:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text36
	
l3046:	
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
	
l1265:	
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
	
l3608:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text37
	
l3610:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@78)
	
l3612:	
	movlw	low(04h)
	incf	(CheckKeyOldValue@F77),f
	subwf	((CheckKeyOldValue@F77)),w
	skipnc
	goto	u3091
	goto	u3090
u3091:
	goto	l3616
u3090:
	goto	l1336
	
l3616:	
	clrf	(CheckKeyOldValue@F77)
	
l3618:	
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
	
l3620:	
	movf	(CheckKeyOldValue@78),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l1338
u3100:
	
l3622:	
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
	
l3624:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3626:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l3630
u3110:
	
l3628:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u3121
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l1338
u3120:
	
l3630:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3632:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3634:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l3638
u3130:
	
l3636:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u3141
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l1338
u3140:
	
l3638:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3640:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3642:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l3646
u3150:
	
l3644:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u3161
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l1338
u3160:
	
l3646:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@79),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@79+1),w
	movwf	indf
	
l1338:	
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
	
l3648:	
	movlw	low(02h)
	incf	(CheckKeyOldValue@78),f
	subwf	((CheckKeyOldValue@78)),w
	skipc
	goto	u3171
	goto	u3170
u3171:
	goto	l3618
u3170:
	
l1348:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text37
	
l1336:	
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
	
l3028:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text38
	
l3030:	
	movf	(KeyIsIn@45),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@46)
	
l3032:	
	btfss	(KeyIsIn@45),(3)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l3036
u2170:
	
l3034:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@46),f
	goto	l3038
	
l3036:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@46),f
	
l3038:	
	movf	(KeyIsIn@46),w
	
l1262:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 197 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	197
global __ptext39
__ptext39:	;psect for function _Isr_Timer
psect	text39
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	197
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
	line	199
	
i1l4182:	
;main.c: 199: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u424_21
	goto	u424_20
u424_21:
	goto	i1l4206
u424_20:
	line	201
	
i1l4184:	
;main.c: 200: {
;main.c: 201: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	202
	
i1l4186:	
;main.c: 202: if(firstTime > 0 || workStep > 0 || wuhuaFlag > 0 || chrgFlag > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u425_21
	goto	u425_20
u425_21:
	goto	i1l4194
u425_20:
	
i1l4188:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u426_21
	goto	u426_20
u426_21:
	goto	i1l4194
u426_20:
	
i1l4190:	
	movf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u427_21
	goto	u427_20
u427_21:
	goto	i1l4194
u427_20:
	
i1l4192:	
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u428_21
	goto	u428_20
u428_21:
	goto	i1l4196
u428_20:
	line	204
	
i1l4194:	
;main.c: 203: {
;main.c: 204: ledShow();
	fcall	_ledShow
	line	206
	
i1l4196:	
;main.c: 205: }
;main.c: 206: if(++MainTime >= 64)
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u429_21
	goto	u429_20
u429_21:
	goto	i1l979
u429_20:
	line	208
	
i1l4198:	
;main.c: 207: {
;main.c: 208: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	209
	
i1l4200:	
;main.c: 209: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	210
	
i1l4202:	
;main.c: 210: if(++count1s >= 250)
	movlw	low(0FAh)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u430_21
	goto	u430_20
u430_21:
	goto	i1l979
u430_20:
	line	212
	
i1l4204:	
;main.c: 211: {
;main.c: 212: count1s = 0;
	clrf	(_count1s)
	goto	i1l979
	line	218
	
i1l4206:	
;main.c: 216: else
;main.c: 217: {
;main.c: 218: PIR1 = 0;
	clrf	(13)	;volatile
	line	221
	
i1l979:	
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
;;		line 371 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
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
	line	371
global __ptext40
__ptext40:	;psect for function _ledShow
psect	text40
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\D99_SC8F083_SOP16\main.c"
	line	371
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 2
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	374
	
i1l3892:	
;main.c: 374: if(++ledCnt > 19)
	movlw	low(014h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u356_21
	goto	u356_20
u356_21:
	goto	i1l3896
u356_20:
	line	376
	
i1l3894:	
;main.c: 375: {
;main.c: 376: ledCnt = 0;
	clrf	(_ledCnt)
	line	379
	
i1l3896:	
;main.c: 378: }
;main.c: 379: PORTA &= 0xE4;
	movlw	low(0E4h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	380
	
i1l3898:	
;main.c: 380: PORTB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(4/8),(4)&7	;volatile
	line	381
	
i1l3900:	
;main.c: 381: TRISA |= 0x1B;
	movlw	low(01Bh)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	382
	
i1l3902:	
;main.c: 382: TRISB |= 0x10;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(4/8),(4)&7	;volatile
	line	383
;main.c: 383: switch(ledCnt)
	goto	i1l3956
	line	387
;main.c: 387: case 1:
	
i1l1011:	
	line	388
;main.c: 388: if(showNumShi & 0x01)
	btfss	(_showNumShi),(0)&7
	goto	u357_21
	goto	u357_20
u357_21:
	goto	i1l1060
u357_20:
	line	390
	
i1l3904:	
;main.c: 389: {
;main.c: 390: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	391
;main.c: 391: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	392
;main.c: 392: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l1060
	line	395
;main.c: 395: case 2:
	
i1l1013:	
	line	396
;main.c: 396: if(showNumShi & 0x02)
	btfss	(_showNumShi),(1)&7
	goto	u358_21
	goto	u358_20
u358_21:
	goto	i1l1060
u358_20:
	line	398
	
i1l3906:	
;main.c: 397: {
;main.c: 398: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	399
;main.c: 399: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	400
;main.c: 400: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l1060
	line	403
;main.c: 403: case 3:
	
i1l1015:	
	line	404
;main.c: 404: if(showNumShi & 0x04)
	btfss	(_showNumShi),(2)&7
	goto	u359_21
	goto	u359_20
u359_21:
	goto	i1l1060
u359_20:
	line	406
	
i1l3908:	
;main.c: 405: {
;main.c: 406: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	407
;main.c: 407: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	408
;main.c: 408: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l1060
	line	411
;main.c: 411: case 4:
	
i1l1017:	
	line	412
;main.c: 412: if(showNumShi & 0x08)
	btfss	(_showNumShi),(3)&7
	goto	u360_21
	goto	u360_20
u360_21:
	goto	i1l1060
u360_20:
	line	414
	
i1l3910:	
;main.c: 413: {
;main.c: 414: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	415
;main.c: 415: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	416
;main.c: 416: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	goto	i1l1060
	line	419
;main.c: 419: case 5:
	
i1l1019:	
	line	420
;main.c: 420: if(showNumShi & 0x10)
	btfss	(_showNumShi),(4)&7
	goto	u361_21
	goto	u361_20
u361_21:
	goto	i1l1060
u361_20:
	line	422
	
i1l3912:	
;main.c: 421: {
;main.c: 422: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	423
;main.c: 423: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	424
;main.c: 424: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	goto	i1l1060
	line	427
;main.c: 427: case 6:
	
i1l1021:	
	line	428
;main.c: 428: if(showNumShi & 0x20)
	btfss	(_showNumShi),(5)&7
	goto	u362_21
	goto	u362_20
u362_21:
	goto	i1l1060
u362_20:
	line	430
	
i1l3914:	
;main.c: 429: {
;main.c: 430: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	431
;main.c: 431: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	432
;main.c: 432: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l1060
	line	435
;main.c: 435: case 7:
	
i1l1023:	
	line	436
;main.c: 436: if(showNumShi & 0x40)
	btfss	(_showNumShi),(6)&7
	goto	u363_21
	goto	u363_20
u363_21:
	goto	i1l1060
u363_20:
	line	438
	
i1l3916:	
;main.c: 437: {
;main.c: 438: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	439
;main.c: 439: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	440
;main.c: 440: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l1060
	line	443
;main.c: 443: case 8:
	
i1l1025:	
	line	444
;main.c: 444: if(showNumGe & 0x01)
	btfss	(_showNumGe),(0)&7
	goto	u364_21
	goto	u364_20
u364_21:
	goto	i1l1060
u364_20:
	line	446
	
i1l3918:	
;main.c: 445: {
;main.c: 446: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	447
;main.c: 447: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	448
;main.c: 448: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	goto	i1l1060
	line	451
;main.c: 451: case 9:
	
i1l1027:	
	line	452
;main.c: 452: if(showNumGe & 0x02)
	btfss	(_showNumGe),(1)&7
	goto	u365_21
	goto	u365_20
u365_21:
	goto	i1l1060
u365_20:
	line	454
	
i1l3920:	
;main.c: 453: {
;main.c: 454: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	455
;main.c: 455: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	456
;main.c: 456: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	goto	i1l1060
	line	459
;main.c: 459: case 10:
	
i1l1029:	
	line	460
;main.c: 460: if(showNumGe & 0x04)
	btfss	(_showNumGe),(2)&7
	goto	u366_21
	goto	u366_20
u366_21:
	goto	i1l1060
u366_20:
	line	462
	
i1l3922:	
;main.c: 461: {
;main.c: 462: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	463
;main.c: 463: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	464
;main.c: 464: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l1060
	line	467
;main.c: 467: case 11:
	
i1l1031:	
	line	468
;main.c: 468: if(showNumGe & 0x08)
	btfss	(_showNumGe),(3)&7
	goto	u367_21
	goto	u367_20
u367_21:
	goto	i1l1060
u367_20:
	line	470
	
i1l3924:	
;main.c: 469: {
;main.c: 470: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	471
;main.c: 471: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	472
;main.c: 472: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l1060
	line	475
;main.c: 475: case 12:
	
i1l1033:	
	line	476
;main.c: 476: if(showNumGe & 0x10)
	btfss	(_showNumGe),(4)&7
	goto	u368_21
	goto	u368_20
u368_21:
	goto	i1l1060
u368_20:
	line	478
	
i1l3926:	
;main.c: 477: {
;main.c: 478: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	479
;main.c: 479: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	480
;main.c: 480: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	goto	i1l1060
	line	483
;main.c: 483: case 13:
	
i1l1035:	
	line	484
;main.c: 484: if(showNumGe & 0x20)
	btfss	(_showNumGe),(5)&7
	goto	u369_21
	goto	u369_20
u369_21:
	goto	i1l1060
u369_20:
	line	486
	
i1l3928:	
;main.c: 485: {
;main.c: 486: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	487
;main.c: 487: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	488
;main.c: 488: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	goto	i1l1060
	line	491
;main.c: 491: case 14:
	
i1l1037:	
	line	492
;main.c: 492: if(showNumGe & 0x40)
	btfss	(_showNumGe),(6)&7
	goto	u370_21
	goto	u370_20
u370_21:
	goto	i1l1060
u370_20:
	line	494
	
i1l3930:	
;main.c: 493: {
;main.c: 494: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	495
;main.c: 495: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	496
;main.c: 496: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l1060
	line	500
	
i1l3932:	
;main.c: 500: if(firstTime || showNumGe || showNumShi)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u371_21
	goto	u371_20
u371_21:
	goto	i1l1042
u371_20:
	
i1l3934:	
	movf	((_showNumGe)),w
	btfss	status,2
	goto	u372_21
	goto	u372_20
u372_21:
	goto	i1l1042
u372_20:
	
i1l3936:	
	movf	((_showNumShi)),w
	btfsc	status,2
	goto	u373_21
	goto	u373_20
u373_21:
	goto	i1l1060
u373_20:
	
i1l1042:	
	line	502
;main.c: 501: {
;main.c: 502: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	503
;main.c: 503: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	504
;main.c: 504: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l1060
	line	508
	
i1l3938:	
;main.c: 508: if(firstTime > 0 || wuhuaFlag > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u374_21
	goto	u374_20
u374_21:
	goto	i1l1046
u374_20:
	
i1l3940:	
	movf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u375_21
	goto	u375_20
u375_21:
	goto	i1l1060
u375_20:
	
i1l1046:	
	line	510
;main.c: 509: {
;main.c: 510: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	511
;main.c: 511: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	512
;main.c: 512: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	goto	i1l1060
	line	516
	
i1l3942:	
;main.c: 516: if(firstTime > 0 ||workStep > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u376_21
	goto	u376_20
u376_21:
	goto	i1l1050
u376_20:
	
i1l3944:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u377_21
	goto	u377_20
u377_21:
	goto	i1l1060
u377_20:
	
i1l1050:	
	line	518
;main.c: 517: {
;main.c: 518: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	519
;main.c: 519: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	520
;main.c: 520: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	goto	i1l1060
	line	524
	
i1l3946:	
;main.c: 524: if(firstTime > 0 ||fanKeyFlag > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u378_21
	goto	u378_20
u378_21:
	goto	i1l1054
u378_20:
	
i1l3948:	
	movf	((_fanKeyFlag)),w
	btfsc	status,2
	goto	u379_21
	goto	u379_20
u379_21:
	goto	i1l1060
u379_20:
	
i1l1054:	
	line	526
;main.c: 525: {
;main.c: 526: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	527
;main.c: 527: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	528
;main.c: 528: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l1060
	line	532
	
i1l3950:	
;main.c: 532: if(firstTime > 0 ||wuhuaKeyFlag > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u380_21
	goto	u380_20
u380_21:
	goto	i1l1058
u380_20:
	
i1l3952:	
	movf	((_wuhuaKeyFlag)),w
	btfsc	status,2
	goto	u381_21
	goto	u381_20
u381_21:
	goto	i1l1060
u381_20:
	
i1l1058:	
	line	534
;main.c: 533: {
;main.c: 534: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	535
;main.c: 535: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	536
;main.c: 536: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l1060
	line	383
	
i1l3956:	
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
goto i1l1060
movlw high(i1S5092)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(i1S5092)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S5092:
	ljmp	i1l1060
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
	ljmp	i1l1037
	ljmp	i1l3932
	ljmp	i1l3938
	ljmp	i1l3942
	ljmp	i1l3946
	ljmp	i1l3950
psect	text40

	line	543
	
i1l1060:	
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
