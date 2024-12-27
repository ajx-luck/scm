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
	FNCALL	_main,_ledShow
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
	FNCALL	_ADC_Sample,_ledShow
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
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_showNumShi
	global	_showNumGe
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	59

;initializer for _showNumShi
	retlw	07Fh
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	line	60

;initializer for _showNumGe
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
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\Touch_Kscan_Library.h"
	line	75
_Table_KeyDown:
	retlw	0Ah
	retlw	0Ah
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyCap
psect	strings
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\Touch_Kscan_Library.h"
	line	69
_Table_KeyCap:
	retlw	02h
	retlw	02h
	global __end_of_Table_KeyCap
__end_of_Table_KeyCap:
	global	_Table_KeyChannel
psect	strings
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\Touch_Kscan_Library.h"
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
	global	_wuhuaFlag
	global	_workStep
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
	global	_power_ad
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
	global	_firstLock
	global	_chrgFullTime
	global	_chrgFlag
	global	_fanOverTime
	global	_count10s
	global	_fanDuty
	global	_count1s
	global	_MainTime
	global	_adresult
	global	_KeyReference
	global	_KeyOldValue2
	global	_KeyOldValue0
	global	_KeyResSum
	global	CheckValidTime@F87
	global	_result
	global	_fanValue
	global	_KeyUpShake
	global	_firstTime
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
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
	file	"D99_SC8F083_SOP16-副本.as"
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
_wuhuaFlag:
       ds      1

_workStep:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	59
_showNumShi:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_KeyOldValue1:
       ds      4

_KeyData:
       ds      2

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

_firstLock:
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

_count1s:
       ds      1

_MainTime:
       ds      1

_adresult:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	60
_showNumGe:
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

_fanValue:
       ds      2

_KeyUpShake:
       ds      2

	file	"D99_SC8F083_SOP16-副本.as"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
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

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+018h)
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
?_SystemEnterSleep:	; 1 bytes @ 0x0
?_ledShow:	; 1 bytes @ 0x0
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
	ds	2
??_ledShow:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_Refurbish_Sfr:	; 1 bytes @ 0x2
??_KeyServer:	; 1 bytes @ 0x2
??_pwmInit:	; 1 bytes @ 0x2
??_pwmStop:	; 1 bytes @ 0x2
??_fanInit:	; 1 bytes @ 0x2
??_fanStop:	; 1 bytes @ 0x2
??_wuhuaCtr:	; 1 bytes @ 0x2
??_KeyIsIn:	; 1 bytes @ 0x2
??_KeyClearOne:	; 1 bytes @ 0x2
??_ClearResSum:	; 1 bytes @ 0x2
?_KeyHave:	; 1 bytes @ 0x2
??_CheckValidTime:	; 1 bytes @ 0x2
??___lmul:	; 1 bytes @ 0x2
?___lbdiv:	; 1 bytes @ 0x2
?___lbmod:	; 1 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x2
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x2
	global	KeyIsIn@46
KeyIsIn@46:	; 1 bytes @ 0x2
	global	KeyClearOne@49
KeyClearOne@49:	; 1 bytes @ 0x2
	global	ClearResSum@56
ClearResSum@56:	; 1 bytes @ 0x2
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
	global	KeyHave@59
KeyHave@59:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x2
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x2
	ds	1
?_ADC_Sample:	; 1 bytes @ 0x3
??_KeyStopClear:	; 1 bytes @ 0x3
??_GetTouchKeyValue:	; 1 bytes @ 0x3
??___lbdiv:	; 1 bytes @ 0x3
??___lbmod:	; 1 bytes @ 0x3
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x3
	global	KeyIsIn@45
KeyIsIn@45:	; 1 bytes @ 0x3
	global	KeyStopClear@53
KeyStopClear@53:	; 1 bytes @ 0x3
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x3
	global	GetTouchKeyValue@64
GetTouchKeyValue@64:	; 2 bytes @ 0x3
	ds	1
??_ADC_Sample:	; 1 bytes @ 0x4
??_KeyClearIn:	; 1 bytes @ 0x4
??_KeyHave:	; 1 bytes @ 0x4
??_CheckKeyOldValue:	; 1 bytes @ 0x4
	global	KeyClearIn@51
KeyClearIn@51:	; 1 bytes @ 0x4
	global	KeyHave@58
KeyHave@58:	; 1 bytes @ 0x4
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x4
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x4
	ds	1
??_TurnKeyFlags:	; 1 bytes @ 0x5
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x5
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x5
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	global	GetTouchKeyValue@63
GetTouchKeyValue@63:	; 2 bytes @ 0x5
	ds	1
??_setBatStep:	; 1 bytes @ 0x6
??___lwdiv:	; 1 bytes @ 0x6
??___lwmod:	; 1 bytes @ 0x6
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x6
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	ds	1
??_showBatLed:	; 1 bytes @ 0x7
??_chrgCtr:	; 1 bytes @ 0x7
??_keyLedCtr:	; 1 bytes @ 0x7
??___lwtoft:	; 1 bytes @ 0x7
	global	GetTouchKeyValue@62
GetTouchKeyValue@62:	; 1 bytes @ 0x7
	ds	1
??_CheckTouchKey:	; 1 bytes @ 0x8
??_WorkSleep:	; 1 bytes @ 0x8
??_fanCtr:	; 1 bytes @ 0x8
??_workCtr:	; 1 bytes @ 0x8
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
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
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
;!    Constant    27
;!    Data        2
;!    BSS         68
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      12
;!    BANK0            80     34      78
;!    BANK1            80      4      28
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
;!    _ADC_Sample->_ledShow
;!    ___lwtoft->___ftpack
;!    ___ftdiv->___ftpack
;!    _setBatStep->___lwdiv
;!    _showBatLed->___lbmod
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
;!    _setBatStep->___lwdiv
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
;! (0) _main                                                 0     0      0   12506
;!                      _CheckTouchKey
;!                        _Init_System
;!                          _KeyServer
;!                      _Refurbish_Sfr
;!                          _WorkSleep
;!                            _chrgCtr
;!                            _ledShow
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
;!                                              2 COMMON     5     1      4
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
;!                                              2 COMMON     4     4      0
;!                                              0 BANK0      8     0      8
;! ---------------------------------------------------------------------------------
;! (3) _ADC_Sample                                          18    17      1     912
;!                                              3 COMMON     5     4      1
;!                                              0 BANK0     13    13      0
;!                            _ledShow
;! ---------------------------------------------------------------------------------
;! (4) _ledShow                                              1     1      0       0
;!                                              2 COMMON     1     1      0
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
;! (1) _setBatStep                                           0     0      0     371
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     371
;!                                              2 COMMON     4     0      4
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
;!                                              2 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (3) ___lbdiv                                              4     3      1     215
;!                                              2 COMMON     4     3      1
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
;!     _showBatLed
;!       ___lbdiv
;!       ___lbmod
;!   _ledShow
;!   _setBatStep
;!     ___lwdiv
;!   _workCtr
;!     _ADC_Sample
;!       _ledShow
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
;!         _ledShow
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
;!BANK1               50      4      1C       6       35.0%
;!BITBANK1            50      0       0       5        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     22      4E       4       97.5%
;!BITBANK0            50      0       0       3        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      8       C       1       85.7%
;!BITCOMMON            E      0       1       0        7.1%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      76       9        0.0%
;!ABS                  0      0      76       8        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 873 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
;;		_ledShow
;;		_setBatStep
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	873
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	873
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	875
	
l4989:	
;main.c: 875: Init_System();
	fcall	_Init_System
	line	876
	
l4991:	
;main.c: 876: firstLock = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_firstLock)
	line	877
	
l4993:	
;main.c: 877: firstTime = 200;
	movlw	low(0C8h)
	movwf	(_firstTime)
	line	880
	
l4995:	
;main.c: 879: {
;main.c: 880: if(firstTime > 0 || workStep > 0 || wuhuaFlag > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_firstTime)),w
	btfss	status,2
	goto	u5861
	goto	u5860
u5861:
	goto	l5001
u5860:
	
l4997:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u5871
	goto	u5870
u5871:
	goto	l5001
u5870:
	
l4999:	
	movf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u5881
	goto	u5880
u5881:
	goto	l5003
u5880:
	line	882
	
l5001:	
;main.c: 881: {
;main.c: 882: ledShow();
	fcall	_ledShow
	line	884
	
l5003:	
;main.c: 883: }
;main.c: 884: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u5891
	goto	u5890
u5891:
	goto	l4995
u5890:
	line	886
	
l5005:	
;main.c: 885: {
;main.c: 886: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	887
# 887 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
clrwdt ;# 
psect	maintext
	line	888
	
l5007:	
;main.c: 888: if(firstTime > 0 || workStep > 0 || wuhuaFlag > 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_firstTime)),w
	btfss	status,2
	goto	u5901
	goto	u5900
u5901:
	goto	l5013
u5900:
	
l5009:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u5911
	goto	u5910
u5911:
	goto	l5013
u5910:
	
l5011:	
	movf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u5921
	goto	u5920
u5921:
	goto	l5015
u5920:
	line	890
	
l5013:	
;main.c: 889: {
;main.c: 890: ledShow();
	fcall	_ledShow
	line	892
	
l5015:	
;main.c: 891: }
;main.c: 892: CheckTouchKey();
	fcall	_CheckTouchKey
	line	893
	
l5017:	
;main.c: 893: if(firstTime > 0 || workStep > 0 || wuhuaFlag > 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_firstTime)),w
	btfss	status,2
	goto	u5931
	goto	u5930
u5931:
	goto	l5023
u5930:
	
l5019:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u5941
	goto	u5940
u5941:
	goto	l5023
u5940:
	
l5021:	
	movf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u5951
	goto	u5950
u5951:
	goto	l1164
u5950:
	line	895
	
l5023:	
;main.c: 894: {
;main.c: 895: ledShow();
	fcall	_ledShow
	line	896
	
l1164:	
	line	897
;main.c: 896: }
;main.c: 897: chrgCtr();
	fcall	_chrgCtr
	line	898
	
l5025:	
;main.c: 898: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	899
	
l5027:	
;main.c: 899: KeyServer();
	fcall	_KeyServer
	line	900
;main.c: 900: workCtr();
	fcall	_workCtr
	line	901
	
l5029:	
;main.c: 901: setBatStep();
	fcall	_setBatStep
	line	902
	
l5031:	
;main.c: 902: if(firstTime == 0 && chrgFlag == 0 && workStep == 0 && wuhuaFlag == 0 && shanshuoTime == 0 && shanshuoTime2 == 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u5961
	goto	u5960
u5961:
	goto	l4995
u5960:
	
l5033:	
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u5971
	goto	u5970
u5971:
	goto	l4995
u5970:
	
l5035:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u5981
	goto	u5980
u5981:
	goto	l4995
u5980:
	
l5037:	
	movf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u5991
	goto	u5990
u5991:
	goto	l4995
u5990:
	
l5039:	
	movf	((_shanshuoTime)),w
iorwf	((_shanshuoTime+1)),w
	btfss	status,2
	goto	u6001
	goto	u6000
u6001:
	goto	l4995
u6000:
	
l5041:	
	movf	((_shanshuoTime2)),w
iorwf	((_shanshuoTime2+1)),w
	btfss	status,2
	goto	u6011
	goto	u6010
u6011:
	goto	l4995
u6010:
	line	904
	
l5043:	
;main.c: 903: {
;main.c: 904: WorkSleep();
	fcall	_WorkSleep
	goto	l4995
	global	start
	ljmp	start
	opt stack 0
	line	908
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 821 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
	line	821
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	821
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	823
	
l4913:	
;main.c: 823: test_adc = ADC_Sample(31, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(01Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	824
	
l4915:	
;main.c: 824: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u5741
	goto	u5740
u5741:
	goto	l4921
u5740:
	line	828
	
l4917:	
;main.c: 825: {
;main.c: 826: volatile unsigned long power_temp;
;main.c: 828: power_temp = (unsigned long)(((4096UL*1.2*1000))/adresult);
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

	line	829
	
l4919:	
;main.c: 829: power_ad = (unsigned int)(power_temp);
	movf	(workCtr@power_temp+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_power_ad+1)	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movf	(workCtr@power_temp)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_power_ad)	;volatile
	line	831
	
l4921:	
;main.c: 830: }
;main.c: 831: if(workStep == 2 && power_ad < 2900)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u5751
	goto	u5750
u5751:
	goto	l4931
u5750:
	
l4923:	
	movlw	0Bh
	subwf	(_power_ad+1),w	;volatile
	movlw	054h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u5761
	goto	u5760
u5761:
	goto	l4931
u5760:
	line	833
	
l4925:	
;main.c: 832: {
;main.c: 833: if(++lowFanTime > 200)
	movlw	low(0C9h)
	incf	(_lowFanTime),f
	subwf	((_lowFanTime)),w
	skipc
	goto	u5771
	goto	u5770
u5771:
	goto	l4933
u5770:
	line	835
	
l4927:	
;main.c: 834: {
;main.c: 835: lowFanTime = 0;
	clrf	(_lowFanTime)
	line	836
	
l4929:	
;main.c: 836: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l4933
	line	841
	
l4931:	
;main.c: 839: else
;main.c: 840: {
;main.c: 841: lowFanTime = 0;
	clrf	(_lowFanTime)
	line	843
	
l4933:	
;main.c: 842: }
;main.c: 843: if(power_ad < 2700)
	movlw	0Ah
	subwf	(_power_ad+1),w	;volatile
	movlw	08Ch
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u5781
	goto	u5780
u5781:
	goto	l4941
u5780:
	line	845
	
l4935:	
;main.c: 844: {
;main.c: 845: if(++lowBatTime > 200)
	movlw	low(0C9h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u5791
	goto	u5790
u5791:
	goto	l4943
u5790:
	line	847
	
l4937:	
;main.c: 846: {
;main.c: 847: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	848
	
l4939:	
;main.c: 848: lowBatLock = 1;
	clrf	(_lowBatLock)
	incf	(_lowBatLock),f
	line	849
;main.c: 849: workStep = 0;
	clrf	(_workStep)
	line	850
;main.c: 850: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	goto	l4943
	line	855
	
l4941:	
;main.c: 853: else
;main.c: 854: {
;main.c: 855: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	857
	
l4943:	
;main.c: 856: }
;main.c: 857: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u5801
	goto	u5800
u5801:
	goto	l4947
u5800:
	line	859
	
l4945:	
;main.c: 858: {
;main.c: 859: firstTime--;
	decf	(_firstTime),f
	line	860
;main.c: 860: }
	goto	l1151
	line	863
	
l4947:	
;main.c: 861: else
;main.c: 862: {
;main.c: 863: keyLedCtr();
	fcall	_keyLedCtr
	line	864
	
l4949:	
;main.c: 864: fanCtr();
	fcall	_fanCtr
	line	865
	
l4951:	
;main.c: 865: wuhuaCtr();
	fcall	_wuhuaCtr
	line	868
	
l1151:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_wuhuaCtr

;; *************** function _wuhuaCtr *****************
;; Defined at:
;;		line 787 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	787
global __ptext2
__ptext2:	;psect for function _wuhuaCtr
psect	text2
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	787
	global	__size_of_wuhuaCtr
	__size_of_wuhuaCtr	equ	__end_of_wuhuaCtr-_wuhuaCtr
	
_wuhuaCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _wuhuaCtr: [wreg+status,2+status,0+pclath+cstack]
	line	789
	
l4643:	
;main.c: 789: if(count1s == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_count1s)),w
	btfss	status,2
	goto	u5231
	goto	u5230
u5231:
	goto	l4649
u5230:
	line	791
	
l4645:	
;main.c: 790: {
;main.c: 791: if(++count10s >= 10)
	movlw	low(0Ah)
	incf	(_count10s),f
	subwf	((_count10s)),w
	skipc
	goto	u5241
	goto	u5240
u5241:
	goto	l4649
u5240:
	line	793
	
l4647:	
;main.c: 792: {
;main.c: 793: count10s = 0;
	clrf	(_count10s)
	line	796
	
l4649:	
;main.c: 794: }
;main.c: 795: }
;main.c: 796: if(wuhuaFlag == 1 || (wuhuaFlag == 2 && count10s < 5))
		decf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u5251
	goto	u5250
u5251:
	goto	l4655
u5250:
	
l4651:	
		movlw	2
	xorwf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u5261
	goto	u5260
u5261:
	goto	l4657
u5260:
	
l4653:	
	movlw	low(05h)
	subwf	(_count10s),w
	skipnc
	goto	u5271
	goto	u5270
u5271:
	goto	l4657
u5270:
	line	798
	
l4655:	
;main.c: 797: {
;main.c: 798: pwmInit();
	fcall	_pwmInit
	line	813
;main.c: 813: }
	goto	l1139
	line	816
	
l4657:	
;main.c: 814: else
;main.c: 815: {
;main.c: 816: pwmStop();
	fcall	_pwmStop
	line	818
	
l1139:	
	return
	opt stack 0
GLOBAL	__end_of_wuhuaCtr
	__end_of_wuhuaCtr:
	signat	_wuhuaCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 710 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
	line	710
global __ptext3
__ptext3:	;psect for function _pwmStop
psect	text3
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	710
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [status,2]
	line	712
	
l4403:	
;main.c: 712: PWMD0L = 0;
	clrf	(25)	;volatile
	line	713
	
l4405:	
;main.c: 713: PWMCON0 &= 0xFE;
	bcf	(21)+(0/8),(0)&7	;volatile
	line	714
	
l4407:	
;main.c: 714: PORTA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(5/8),(5)&7	;volatile
	line	715
	
l1110:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 698 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
	line	698
global __ptext4
__ptext4:	;psect for function _pwmInit
psect	text4
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	698
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2+status,0]
	line	701
	
l4393:	
;main.c: 701: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	702
	
l4395:	
;main.c: 702: PWMTL = 73;
	movlw	low(049h)
	movwf	(23)	;volatile
	line	703
	
l4397:	
;main.c: 703: PWMD01H = 0x00;
	clrf	(30)	;volatile
	line	704
;main.c: 704: PWMD0L = 32;
	movlw	low(020h)
	movwf	(25)	;volatile
	line	705
;main.c: 705: PWMCON1 = 0x40;
	movlw	low(040h)
	movwf	(22)	;volatile
	line	706
	
l4399:	
;main.c: 706: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	707
	
l4401:	
;main.c: 707: PWMCON0 |= 0x21;
	movlw	low(021h)
	iorwf	(21),f	;volatile
	line	708
	
l1107:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_keyLedCtr

;; *************** function _keyLedCtr *****************
;; Defined at:
;;		line 652 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwmod
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	652
global __ptext5
__ptext5:	;psect for function _keyLedCtr
psect	text5
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	652
	global	__size_of_keyLedCtr
	__size_of_keyLedCtr	equ	__end_of_keyLedCtr-_keyLedCtr
	
_keyLedCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyLedCtr: [wreg+status,2+status,0+pclath+cstack]
	line	654
	
l4567:	
;main.c: 654: if(shanshuoTime > 0)
	movf	((_shanshuoTime)),w
iorwf	((_shanshuoTime+1)),w
	btfsc	status,2
	goto	u5081
	goto	u5080
u5081:
	goto	l4575
u5080:
	line	656
	
l4569:	
;main.c: 655: {
;main.c: 656: shanshuoTime--;
	movlw	01h
	subwf	(_shanshuoTime),f
	movlw	0
	skipc
	decf	(_shanshuoTime+1),f
	subwf	(_shanshuoTime+1),f
	line	657
	
l4571:	
;main.c: 657: if((shanshuoTime % 150) < 75)
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
	goto	u5091
	goto	u5090
u5091:
	goto	l1093
u5090:
	line	659
	
l4573:	
;main.c: 658: {
;main.c: 659: fanKeyFlag = 0;
	clrf	(_fanKeyFlag)
	line	660
;main.c: 660: }
	goto	l4581
	line	661
	
l1093:	
	line	663
;main.c: 661: else
;main.c: 662: {
;main.c: 663: fanKeyFlag = 1;
	clrf	(_fanKeyFlag)
	incf	(_fanKeyFlag),f
	goto	l4581
	line	666
	
l4575:	
;main.c: 666: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u5101
	goto	u5100
u5101:
	goto	l4573
u5100:
	goto	l1093
	line	675
	
l4581:	
;main.c: 673: }
;main.c: 675: if(shanshuoTime2 > 0)
	movf	((_shanshuoTime2)),w
iorwf	((_shanshuoTime2+1)),w
	btfsc	status,2
	goto	u5111
	goto	u5110
u5111:
	goto	l4589
u5110:
	line	677
	
l4583:	
;main.c: 676: {
;main.c: 677: shanshuoTime2--;
	movlw	01h
	subwf	(_shanshuoTime2),f
	movlw	0
	skipc
	decf	(_shanshuoTime2+1),f
	subwf	(_shanshuoTime2+1),f
	line	678
	
l4585:	
;main.c: 678: if((shanshuoTime2 % 150) < 75)
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
	goto	u5121
	goto	u5120
u5121:
	goto	l1099
u5120:
	line	680
	
l4587:	
;main.c: 679: {
;main.c: 680: wuhuaKeyFlag = 0;
	clrf	(_wuhuaKeyFlag)
	line	681
;main.c: 681: }
	goto	l1104
	line	682
	
l1099:	
	line	684
;main.c: 682: else
;main.c: 683: {
;main.c: 684: wuhuaKeyFlag = 1;
	clrf	(_wuhuaKeyFlag)
	incf	(_wuhuaKeyFlag),f
	goto	l1104
	line	687
	
l4589:	
;main.c: 687: else if(wuhuaFlag > 0)
	movf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u5131
	goto	u5130
u5131:
	goto	l4587
u5130:
	goto	l1099
	line	696
	
l1104:	
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
	
l4461:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u4951
	goto	u4950
u4951:
	goto	l4477
u4950:
	line	14
	
l4463:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l4467
	line	16
	
l4465:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l4467:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u4961
	goto	u4960
u4961:
	goto	l4465
u4960:
	line	20
	
l4469:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u4975
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u4975:
	skipc
	goto	u4971
	goto	u4970
u4971:
	goto	l4473
u4970:
	line	21
	
l4471:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l4473:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l4475:	
	decfsz	(___lwmod@counter),f
	goto	u4981
	goto	u4980
u4981:
	goto	l4469
u4980:
	line	25
	
l4477:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1748:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_fanCtr

;; *************** function _fanCtr *****************
;; Defined at:
;;		line 736 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  fan_temp        4   14[BANK0 ] volatile unsigned long 
;;  maxFanValue     1   13[BANK0 ] unsigned char 
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
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	736
global __ptext7
__ptext7:	;psect for function _fanCtr
psect	text7
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	736
	global	__size_of_fanCtr
	__size_of_fanCtr	equ	__end_of_fanCtr-_fanCtr
	
_fanCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _fanCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	738
	
l4595:	
;main.c: 738: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u5141
	goto	u5140
u5141:
	goto	l4637
u5140:
	line	740
	
l4597:	
;main.c: 739: {
;main.c: 740: PORTA |= 0x04;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(2/8),(2)&7	;volatile
	line	741
	
l4599:	
;main.c: 741: unsigned char maxFanValue = 52;
	movlw	low(034h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fanCtr@maxFanValue)
	line	742
	
l4601:	
;main.c: 742: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u5151
	goto	u5150
u5151:
	goto	l4605
u5150:
	line	744
	
l4603:	
;main.c: 743: {
;main.c: 744: maxFanValue = 40;
	movlw	low(028h)
	movwf	(fanCtr@maxFanValue)
	line	746
	
l4605:	
;main.c: 745: }
;main.c: 746: test_adc = ADC_Sample(13, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(0Dh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	747
	
l4607:	
;main.c: 747: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u5161
	goto	u5160
u5161:
	goto	l4617
u5160:
	line	750
	
l4609:	
;main.c: 748: {
;main.c: 749: volatile unsigned long fan_temp;
;main.c: 750: if(power_ad > 0)
	movf	((_power_ad)),w	;volatile
iorwf	((_power_ad+1)),w	;volatile
	btfsc	status,2
	goto	u5171
	goto	u5170
u5171:
	goto	l4617
u5170:
	line	752
	
l4611:	
;main.c: 751: {
;main.c: 752: fan_temp = ((unsigned long)1UL*adresult * power_ad)/4096;
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

	
l4613:	
	movlw	0Ch
u5185:
	clrc
	rrf	(fanCtr@fan_temp+3),f	;volatile
	rrf	(fanCtr@fan_temp+2),f	;volatile
	rrf	(fanCtr@fan_temp+1),f	;volatile
	rrf	(fanCtr@fan_temp),f	;volatile
	addlw	-1
	skipz
	goto	u5185

	line	753
	
l4615:	
;main.c: 753: fanValue = (unsigned int)(fan_temp);
	movf	(fanCtr@fan_temp+1),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fanValue+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(fanCtr@fan_temp),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fanValue)^080h
	line	756
	
l4617:	
;main.c: 754: }
;main.c: 755: }
;main.c: 756: if(fanValue > 1300)
	movlw	05h
	bsf	status, 5	;RP0=1, select bank1
	subwf	(_fanValue+1)^080h,w
	movlw	015h
	skipnz
	subwf	(_fanValue)^080h,w
	skipc
	goto	u5191
	goto	u5190
u5191:
	goto	l4625
u5190:
	line	758
	
l4619:	
;main.c: 757: {
;main.c: 758: if(++fanOverTime > 50)
	movlw	low(033h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_fanOverTime),f
	subwf	((_fanOverTime)),w
	skipc
	goto	u5201
	goto	u5200
u5201:
	goto	l4627
u5200:
	line	760
	
l4621:	
;main.c: 759: {
;main.c: 760: fanOverTime = 0;
	clrf	(_fanOverTime)
	line	761
;main.c: 761: workStep = 0;
	clrf	(_workStep)
	line	762
	
l4623:	
;main.c: 762: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	goto	l4627
	line	767
	
l4625:	
;main.c: 765: else
;main.c: 766: {
;main.c: 767: fanOverTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_fanOverTime)
	line	769
	
l4627:	
;main.c: 768: }
;main.c: 769: if(fanDuty < maxFanValue)
	movf	(fanCtr@maxFanValue),w
	subwf	(_fanDuty),w
	skipnc
	goto	u5211
	goto	u5210
u5211:
	goto	l4631
u5210:
	line	771
	
l4629:	
;main.c: 770: {
;main.c: 771: fanDuty++;
	incf	(_fanDuty),f
	line	772
;main.c: 772: }
	goto	l4635
	line	773
	
l4631:	
;main.c: 773: else if(fanDuty > maxFanValue)
	movf	(_fanDuty),w
	subwf	(fanCtr@maxFanValue),w
	skipnc
	goto	u5221
	goto	u5220
u5221:
	goto	l4635
u5220:
	line	775
	
l4633:	
;main.c: 774: {
;main.c: 775: fanDuty--;
	decf	(_fanDuty),f
	line	777
	
l4635:	
;main.c: 776: }
;main.c: 777: fanInit();
	fcall	_fanInit
	line	778
;main.c: 778: }
	goto	l1130
	line	781
	
l4637:	
;main.c: 779: else
;main.c: 780: {
;main.c: 781: fanStop();
	fcall	_fanStop
	line	782
	
l4639:	
;main.c: 782: fanDuty = 0;
	clrf	(_fanDuty)
	line	783
	
l4641:	
;main.c: 783: PORTA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(2/8),(2)&7	;volatile
	line	785
	
l1130:	
	return
	opt stack 0
GLOBAL	__end_of_fanCtr
	__end_of_fanCtr:
	signat	_fanCtr,89
	global	_fanStop

;; *************** function _fanStop *****************
;; Defined at:
;;		line 729 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fanCtr
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	729
global __ptext8
__ptext8:	;psect for function _fanStop
psect	text8
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	729
	global	__size_of_fanStop
	__size_of_fanStop	equ	__end_of_fanStop-_fanStop
	
_fanStop:	
;incstack = 0
	opt	stack 4
; Regs used in _fanStop: [status,2]
	line	731
	
l4419:	
;main.c: 731: PWMD1L = 0;
	clrf	(26)	;volatile
	line	732
	
l4421:	
;main.c: 732: PWMCON0 &= 0xFD;
	bcf	(21)+(1/8),(1)&7	;volatile
	line	733
	
l4423:	
;main.c: 733: PORTB &= 0x7F;
	bcf	(6)+(7/8),(7)&7	;volatile
	line	734
	
l1116:	
	return
	opt stack 0
GLOBAL	__end_of_fanStop
	__end_of_fanStop:
	signat	_fanStop,89
	global	_fanInit

;; *************** function _fanInit *****************
;; Defined at:
;;		line 717 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
	line	717
global __ptext9
__ptext9:	;psect for function _fanInit
psect	text9
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	717
	global	__size_of_fanInit
	__size_of_fanInit	equ	__end_of_fanInit-_fanInit
	
_fanInit:	
;incstack = 0
	opt	stack 4
; Regs used in _fanInit: [wreg+status,2+status,0]
	line	720
	
l4409:	
;main.c: 720: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	721
	
l4411:	
;main.c: 721: PWMTL = 73;
	movlw	low(049h)
	movwf	(23)	;volatile
	line	722
	
l4413:	
;main.c: 722: PWMD01H = 0x00;
	clrf	(30)	;volatile
	line	723
;main.c: 723: PWMD1L = fanDuty;
	movf	(_fanDuty),w
	movwf	(26)	;volatile
	line	724
;main.c: 724: PWMCON1 = 0x40;
	movlw	low(040h)
	movwf	(22)	;volatile
	line	725
	
l4415:	
;main.c: 725: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	726
	
l4417:	
;main.c: 726: PWMCON0 |= 0x22;
	movlw	low(022h)
	iorwf	(21),f	;volatile
	line	727
	
l1113:	
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
	
l4425:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	120
	
l1410:	
	line	121
	btfss	(___lmul@multiplier),(0)&7
	goto	u4841
	goto	u4840
u4841:
	goto	l4429
u4840:
	line	122
	
l4427:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4851
	addwf	(___lmul@product+1),f
u4851:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4852
	addwf	(___lmul@product+2),f
u4852:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4853
	addwf	(___lmul@product+3),f
u4853:

	line	123
	
l4429:	
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	124
	
l4431:	
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
	goto	u4861
	goto	u4860
u4861:
	goto	l1410
u4860:
	line	128
	
l4433:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	129
	
l1413:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 294 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		_ledShow
;; This function is called by:
;;		_fanCtr
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	294
global __ptext11
__ptext11:	;psect for function _ADC_Sample
psect	text11
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	294
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 3
; Regs used in _ADC_Sample: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	296
	
l4313:	
;main.c: 296: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	297
	
l4315:	
;main.c: 297: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	298
;main.c: 298: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	300
	
l4317:	
;main.c: 300: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u4661
	goto	u4660
u4661:
	goto	l4323
u4660:
	
l4319:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u4671
	goto	u4670
u4671:
	goto	l4323
u4670:
	line	303
	
l4321:	
;main.c: 301: {
;main.c: 303: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	304
;main.c: 304: _delay((unsigned long)((100)*(8000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
movwf	((??_ADC_Sample+0)+0),f
	u6027:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u6027
	nop
opt asmopt_pop

	line	305
;main.c: 305: }
	goto	l4325
	line	307
	
l4323:	
;main.c: 306: else
;main.c: 307: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	309
	
l4325:	
;main.c: 309: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u4681
	goto	u4680
u4681:
	goto	l4331
u4680:
	line	311
	
l4327:	
;main.c: 310: {
;main.c: 311: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	312
	
l4329:	
;main.c: 312: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	314
	
l4331:	
	line	315
	
l4333:	
;main.c: 315: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	317
	
l4339:	
;main.c: 316: {
;main.c: 317: if(firstTime > 0 || workStep > 0 || wuhuaFlag > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4691
	goto	u4690
u4691:
	goto	l4345
u4690:
	
l4341:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u4701
	goto	u4700
u4701:
	goto	l4345
u4700:
	
l4343:	
	movf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u4711
	goto	u4710
u4711:
	goto	l4347
u4710:
	line	319
	
l4345:	
;main.c: 318: {
;main.c: 319: ledShow();
	fcall	_ledShow
	line	321
	
l4347:	
;main.c: 320: }
;main.c: 321: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u4725:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u4725
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	322
# 322 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
nop ;# 
	line	323
# 323 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
nop ;# 
	line	324
# 324 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
nop ;# 
	line	325
# 325 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
nop ;# 
psect	text11
	line	326
	
l4349:	
;main.c: 326: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	328
	
l4351:	
;main.c: 328: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	329
;main.c: 329: while (GODONE)
	goto	l989
	
l990:	
	line	331
;main.c: 330: {
;main.c: 331: _delay((unsigned long)((2)*(8000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	333
;main.c: 333: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u4731
	goto	u4730
u4731:
	goto	l989
u4730:
	line	334
	
l4353:	
;main.c: 334: return 0;
	movlw	low(0)
	goto	l992
	line	335
	
l989:	
	line	329
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u4741
	goto	u4740
u4741:
	goto	l990
u4740:
	line	337
	
l4357:	
;main.c: 335: }
;main.c: 337: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l4359:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	339
	
l4361:	
;main.c: 339: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u4751
	goto	u4750
u4751:
	goto	l4365
u4750:
	line	341
	
l4363:	
;main.c: 340: {
;main.c: 341: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	342
;main.c: 342: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	343
;main.c: 343: }
	goto	l995
	line	344
	
l4365:	
;main.c: 344: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u4765
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u4765:
	skipnc
	goto	u4761
	goto	u4760
u4761:
	goto	l4369
u4760:
	line	345
	
l4367:	
;main.c: 345: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l995
	line	346
	
l4369:	
;main.c: 346: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u4775
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u4775:
	skipnc
	goto	u4771
	goto	u4770
u4771:
	goto	l995
u4770:
	line	347
	
l4371:	
;main.c: 347: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	349
	
l995:	
;main.c: 349: adsum += ad_temp;
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
	goto	u4781
	addwf	(ADC_Sample@adsum+1),f	;volatile
u4781:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4782
	addwf	(ADC_Sample@adsum+2),f	;volatile
u4782:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4783
	addwf	(ADC_Sample@adsum+3),f	;volatile
u4783:

	line	315
	
l4373:	
	incf	(ADC_Sample@i),f
	
l4375:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u4791
	goto	u4790
u4791:
	goto	l4339
u4790:
	line	351
	
l4377:	
;main.c: 350: }
;main.c: 351: adsum -= admax;
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
	goto	u4805
	goto	u4806
u4805:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u4806:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u4807
	goto	u4808
u4807:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u4808:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u4809
	goto	u4800
u4809:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u4800:

	line	352
;main.c: 352: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u4815
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u4815
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u4815
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u4815:
	skipc
	goto	u4811
	goto	u4810
u4811:
	goto	l999
u4810:
	line	353
	
l4379:	
;main.c: 353: adsum -= admin;
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
	goto	u4825
	goto	u4826
u4825:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u4826:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u4827
	goto	u4828
u4827:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u4828:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u4829
	goto	u4820
u4829:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u4820:

	goto	l4381
	line	354
	
l999:	
	line	355
;main.c: 354: else
;main.c: 355: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	357
	
l4381:	
;main.c: 357: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u4835:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u4830:
	addlw	-1
	skipz
	goto	u4835
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	359
	
l4383:	
;main.c: 359: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	360
	
l4385:	
;main.c: 360: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	361
	
l4387:	
;main.c: 361: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	362
	
l4389:	
;main.c: 362: return 0xA5;
	movlw	low(0A5h)
	line	364
	
l992:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_ledShow

;; *************** function _ledShow *****************
;; Defined at:
;;		line 366 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_Sample
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	366
global __ptext12
__ptext12:	;psect for function _ledShow
psect	text12
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	366
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 3
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	369
	
l4233:	
;main.c: 369: if(++ledCnt > 19)
	movlw	low(014h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u4401
	goto	u4400
u4401:
	goto	l4237
u4400:
	line	371
	
l4235:	
;main.c: 370: {
;main.c: 371: ledCnt = 0;
	clrf	(_ledCnt)
	line	374
	
l4237:	
;main.c: 373: }
;main.c: 374: PORTA &= 0xE4;
	movlw	low(0E4h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	375
	
l4239:	
;main.c: 375: PORTB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(4/8),(4)&7	;volatile
	line	376
	
l4241:	
;main.c: 376: TRISA |= 0x1B;
	movlw	low(01Bh)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	377
	
l4243:	
;main.c: 377: TRISB |= 0x10;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(4/8),(4)&7	;volatile
	line	378
;main.c: 378: switch(ledCnt)
	goto	l4297
	line	382
;main.c: 382: case 1:
	
l1007:	
	line	383
;main.c: 383: if(showNumShi & 0x01)
	btfss	(_showNumShi),(0)&7
	goto	u4411
	goto	u4410
u4411:
	goto	l4299
u4410:
	line	385
	
l4245:	
;main.c: 384: {
;main.c: 385: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	386
;main.c: 386: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	387
;main.c: 387: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	goto	l4299
	line	390
;main.c: 390: case 2:
	
l1009:	
	line	391
;main.c: 391: if(showNumShi & 0x02)
	btfss	(_showNumShi),(1)&7
	goto	u4421
	goto	u4420
u4421:
	goto	l4299
u4420:
	line	393
	
l4247:	
;main.c: 392: {
;main.c: 393: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	394
;main.c: 394: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	395
;main.c: 395: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	goto	l4299
	line	398
;main.c: 398: case 3:
	
l1011:	
	line	399
;main.c: 399: if(showNumShi & 0x04)
	btfss	(_showNumShi),(2)&7
	goto	u4431
	goto	u4430
u4431:
	goto	l4299
u4430:
	line	401
	
l4249:	
;main.c: 400: {
;main.c: 401: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	402
;main.c: 402: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	403
;main.c: 403: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	goto	l4299
	line	406
;main.c: 406: case 4:
	
l1013:	
	line	407
;main.c: 407: if(showNumShi & 0x08)
	btfss	(_showNumShi),(3)&7
	goto	u4441
	goto	u4440
u4441:
	goto	l4299
u4440:
	line	409
	
l4251:	
;main.c: 408: {
;main.c: 409: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	410
;main.c: 410: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	411
;main.c: 411: RA0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1072/8)^080h,(1072)&7	;volatile
	goto	l4299
	line	414
;main.c: 414: case 5:
	
l1015:	
	line	415
;main.c: 415: if(showNumShi & 0x10)
	btfss	(_showNumShi),(4)&7
	goto	u4451
	goto	u4450
u4451:
	goto	l4299
u4450:
	line	417
	
l4253:	
;main.c: 416: {
;main.c: 417: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	418
;main.c: 418: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	419
;main.c: 419: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	goto	l4299
	line	422
;main.c: 422: case 6:
	
l1017:	
	line	423
;main.c: 423: if(showNumShi & 0x20)
	btfss	(_showNumShi),(5)&7
	goto	u4461
	goto	u4460
u4461:
	goto	l4299
u4460:
	line	425
	
l4255:	
;main.c: 424: {
;main.c: 425: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	426
;main.c: 426: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	427
;main.c: 427: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	goto	l4299
	line	430
;main.c: 430: case 7:
	
l1019:	
	line	431
;main.c: 431: if(showNumShi & 0x40)
	btfss	(_showNumShi),(6)&7
	goto	u4471
	goto	u4470
u4471:
	goto	l4299
u4470:
	line	433
	
l4257:	
;main.c: 432: {
;main.c: 433: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	434
;main.c: 434: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	435
;main.c: 435: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	goto	l4299
	line	438
;main.c: 438: case 8:
	
l1021:	
	line	439
;main.c: 439: if(showNumGe & 0x01)
	btfss	(_showNumGe),(0)&7
	goto	u4481
	goto	u4480
u4481:
	goto	l4299
u4480:
	line	441
	
l4259:	
;main.c: 440: {
;main.c: 441: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	442
;main.c: 442: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	443
;main.c: 443: RA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1076/8)^080h,(1076)&7	;volatile
	goto	l4299
	line	446
;main.c: 446: case 9:
	
l1023:	
	line	447
;main.c: 447: if(showNumGe & 0x02)
	btfss	(_showNumGe),(1)&7
	goto	u4491
	goto	u4490
u4491:
	goto	l4299
u4490:
	line	449
	
l4261:	
;main.c: 448: {
;main.c: 449: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	450
;main.c: 450: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	451
;main.c: 451: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	goto	l4299
	line	454
;main.c: 454: case 10:
	
l1025:	
	line	455
;main.c: 455: if(showNumGe & 0x04)
	btfss	(_showNumGe),(2)&7
	goto	u4501
	goto	u4500
u4501:
	goto	l4299
u4500:
	line	457
	
l4263:	
;main.c: 456: {
;main.c: 457: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	458
;main.c: 458: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	459
;main.c: 459: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	goto	l4299
	line	462
;main.c: 462: case 11:
	
l1027:	
	line	463
;main.c: 463: if(showNumGe & 0x08)
	btfss	(_showNumGe),(3)&7
	goto	u4511
	goto	u4510
u4511:
	goto	l4299
u4510:
	line	465
	
l4265:	
;main.c: 464: {
;main.c: 465: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	466
;main.c: 466: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	467
;main.c: 467: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	goto	l4299
	line	470
;main.c: 470: case 12:
	
l1029:	
	line	471
;main.c: 471: if(showNumGe & 0x10)
	btfss	(_showNumGe),(4)&7
	goto	u4521
	goto	u4520
u4521:
	goto	l4299
u4520:
	line	473
	
l4267:	
;main.c: 472: {
;main.c: 473: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	474
;main.c: 474: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	475
;main.c: 475: RA3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1075/8)^080h,(1075)&7	;volatile
	goto	l4299
	line	478
;main.c: 478: case 13:
	
l1031:	
	line	479
;main.c: 479: if(showNumGe & 0x20)
	btfss	(_showNumGe),(5)&7
	goto	u4531
	goto	u4530
u4531:
	goto	l4299
u4530:
	line	481
	
l4269:	
;main.c: 480: {
;main.c: 481: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	482
;main.c: 482: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	483
;main.c: 483: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	goto	l4299
	line	486
;main.c: 486: case 14:
	
l1033:	
	line	487
;main.c: 487: if(showNumGe & 0x40)
	btfss	(_showNumGe),(6)&7
	goto	u4541
	goto	u4540
u4541:
	goto	l4299
u4540:
	line	489
	
l4271:	
;main.c: 488: {
;main.c: 489: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	490
;main.c: 490: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	491
;main.c: 491: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	goto	l4299
	line	495
	
l4273:	
;main.c: 495: if(firstTime || showNumGe || showNumShi)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l1038
u4550:
	
l4275:	
	movf	((_showNumGe)),w
	btfss	status,2
	goto	u4561
	goto	u4560
u4561:
	goto	l1038
u4560:
	
l4277:	
	movf	((_showNumShi)),w
	btfsc	status,2
	goto	u4571
	goto	u4570
u4571:
	goto	l4299
u4570:
	
l1038:	
	line	497
;main.c: 496: {
;main.c: 497: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	498
;main.c: 498: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	499
;main.c: 499: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	goto	l4299
	line	503
	
l4279:	
;main.c: 503: if(firstTime > 0 || wuhuaFlag > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4581
	goto	u4580
u4581:
	goto	l1042
u4580:
	
l4281:	
	movf	((_wuhuaFlag)),w
	btfsc	status,2
	goto	u4591
	goto	u4590
u4591:
	goto	l4299
u4590:
	
l1042:	
	line	505
;main.c: 504: {
;main.c: 505: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	506
;main.c: 506: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	507
;main.c: 507: RA1 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1073/8)^080h,(1073)&7	;volatile
	goto	l4299
	line	511
	
l4283:	
;main.c: 511: if(firstTime > 0 ||workStep > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4601
	goto	u4600
u4601:
	goto	l1046
u4600:
	
l4285:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4611
	goto	u4610
u4611:
	goto	l4299
u4610:
	
l1046:	
	line	513
;main.c: 512: {
;main.c: 513: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	514
;main.c: 514: TRISA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	515
;main.c: 515: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	goto	l4299
	line	519
	
l4287:	
;main.c: 519: if(firstTime > 0 ||fanKeyFlag > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4621
	goto	u4620
u4621:
	goto	l1050
u4620:
	
l4289:	
	movf	((_fanKeyFlag)),w
	btfsc	status,2
	goto	u4631
	goto	u4630
u4631:
	goto	l4299
u4630:
	
l1050:	
	line	521
;main.c: 520: {
;main.c: 521: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	522
;main.c: 522: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	523
;main.c: 523: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	goto	l4299
	line	527
	
l4291:	
;main.c: 527: if(firstTime > 0 ||wuhuaKeyFlag > 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4641
	goto	u4640
u4641:
	goto	l1054
u4640:
	
l4293:	
	movf	((_wuhuaKeyFlag)),w
	btfsc	status,2
	goto	u4651
	goto	u4650
u4651:
	goto	l4299
u4650:
	
l1054:	
	line	529
;main.c: 528: {
;main.c: 529: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	530
;main.c: 530: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	531
;main.c: 531: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	goto	l4299
	line	378
	
l4297:	
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
goto l4299
movlw high(S5065)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S5065)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S5065:
	ljmp	l4299
	ljmp	l1007
	ljmp	l1009
	ljmp	l1011
	ljmp	l1013
	ljmp	l1015
	ljmp	l1017
	ljmp	l1019
	ljmp	l1021
	ljmp	l1023
	ljmp	l1025
	ljmp	l1027
	ljmp	l1029
	ljmp	l1031
	ljmp	l1033
	ljmp	l4273
	ljmp	l4279
	ljmp	l4283
	ljmp	l4287
	ljmp	l4291
psect	text12

	line	537
	
l4299:	
;main.c: 537: _delay((unsigned long)((200)*(8000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_ledShow+0)+0),f
	u6037:
decfsz	(??_ledShow+0)+0,f
	goto	u6037
opt asmopt_pop

	line	538
	
l4301:	
;main.c: 538: PORTA &= 0xE4;
	movlw	low(0E4h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,f	;volatile
	line	539
	
l4303:	
;main.c: 539: PORTB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(4/8),(4)&7	;volatile
	line	540
	
l4305:	
;main.c: 540: TRISA |= 0x1B;
	movlw	low(01Bh)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	541
	
l4307:	
;main.c: 541: TRISB |= 0x10;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(4/8),(4)&7	;volatile
	line	542
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of_ledShow
	__end_of_ledShow:
	signat	_ledShow,89
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
	
l4835:	
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
	
l1753:	
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
	
l4769:	
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
	goto	u5451
	goto	u5450
u5451:
	goto	l4773
u5450:
	line	50
	
l4771:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l1644
	line	51
	
l4773:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u5465:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u5460:
	addlw	-1
	skipz
	goto	u5465
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l4775:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l4777:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l4779:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l4781:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l4783:	
	btfss	(___fttol@exp1),7
	goto	u5471
	goto	u5470
u5471:
	goto	l4793
u5470:
	line	57
	
l4785:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u5481
	goto	u5480
u5481:
	goto	l4789
u5480:
	goto	l4771
	line	60
	
l4789:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l4791:	
	incfsz	(___fttol@exp1),f
	goto	u5491
	goto	u5490
u5491:
	goto	l4789
u5490:
	goto	l4801
	line	63
	
l4793:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u5501
	goto	u5500
u5501:
	goto	l4799
u5500:
	goto	l4771
	line	66
	
l4797:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	65
	
l4799:	
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u5511
	goto	u5510
u5511:
	goto	l4797
u5510:
	line	70
	
l4801:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u5521
	goto	u5520
u5521:
	goto	l4805
u5520:
	line	71
	
l4803:	
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
	
l4805:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l1644:	
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
	
l4729:	
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
	goto	u5411
	goto	u5410
u5411:
	goto	l4733
u5410:
	line	64
	
l4731:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1608
	line	65
	
l4733:	
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
	goto	u5421
	goto	u5420
u5421:
	goto	l1609
u5420:
	line	66
	
l4735:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1608
	
l1609:	
	line	67
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	68
	
l4737:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l4739:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l4741:	
	movf	0+(___ftdiv@f2)+02h,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l4743:	
	movlw	low(080h)
	andwf	(___ftdiv@sign),f
	line	72
	
l4745:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l4747:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l4749:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l4751:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l4753:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l4755:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u5435
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u5435
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u5435:
	skipc
	goto	u5431
	goto	u5430
u5431:
	goto	l4761
u5430:
	line	80
	
l4757:	
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
	
l4759:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l4761:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	84
	
l4763:	
	decfsz	(___ftdiv@cntr),f
	goto	u5441
	goto	u5440
u5441:
	goto	l4755
u5440:
	line	85
	
l4765:	
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
	
l1608:	
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
	
l4437:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u4871
	goto	u4870
u4871:
	goto	l1555
u4870:
	
l4439:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u4881
	goto	u4880
u4881:
	goto	l4443
u4880:
	
l1555:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l1556
	line	67
	
l4441:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l4443:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4891
	goto	u4890
u4891:
	goto	l4441
u4890:
	goto	l4447
	line	71
	
l4445:	
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
	
l4447:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4901
	goto	u4900
u4901:
	goto	l4445
u4900:
	goto	l4451
	line	76
	
l4449:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l4451:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u4911
	goto	u4910
u4911:
	goto	l1567
u4910:
	
l4453:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u4921
	goto	u4920
u4921:
	goto	l4449
u4920:
	
l1567:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u4931
	goto	u4930
u4931:
	goto	l1568
u4930:
	line	80
	
l4455:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l1568:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l4457:	
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
	goto	u4941
	goto	u4940
u4941:
	goto	l1569
u4940:
	line	84
	
l4459:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1569:	
	line	85
	line	86
	
l1556:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_setBatStep

;; *************** function _setBatStep *****************
;; Defined at:
;;		line 550 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	550
global __ptext17
__ptext17:	;psect for function _setBatStep
psect	text17
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	550
	global	__size_of_setBatStep
	__size_of_setBatStep	equ	__end_of_setBatStep-_setBatStep
	
_setBatStep:	
;incstack = 0
	opt	stack 5
; Regs used in _setBatStep: [wreg+status,2+status,0+pclath+cstack]
	line	552
	
l4873:	
;main.c: 552: if(lowBatLock == 1)
	bcf	status, 5	;RP0=0, select bank0
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u5601
	goto	u5600
u5601:
	goto	l4877
u5600:
	line	554
	
l4875:	
;main.c: 553: {
;main.c: 554: showBatStep = 0;
	clrf	(_showBatStep)
	line	555
;main.c: 555: curBatStep = 0;
	clrf	(_curBatStep)
	line	556
;main.c: 556: }
	goto	l1076
	line	557
	
l4877:	
;main.c: 557: else if(power_ad < 2800)
	movlw	0Ah
	subwf	(_power_ad+1),w	;volatile
	movlw	0F0h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u5611
	goto	u5610
u5611:
	goto	l4889
u5610:
	line	559
	
l4879:	
;main.c: 558: {
;main.c: 559: if(count10s == 0 && count1s == 0)
	movf	((_count10s)),w
	btfss	status,2
	goto	u5621
	goto	u5620
u5621:
	goto	l1076
u5620:
	
l4881:	
	movf	((_count1s)),w
	btfss	status,2
	goto	u5631
	goto	u5630
u5631:
	goto	l1076
u5630:
	line	561
	
l4883:	
;main.c: 560: {
;main.c: 561: if(showBatStep > 1)
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u5641
	goto	u5640
u5641:
	goto	l1066
u5640:
	line	563
	
l4885:	
;main.c: 562: {
;main.c: 563: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u5651
	goto	u5650
u5651:
	goto	l1068
u5650:
	line	564
	
l4887:	
;main.c: 564: showBatStep--;
	decf	(_showBatStep),f
	goto	l1068
	line	566
	
l1066:	
	line	568
;main.c: 566: else
;main.c: 567: {
;main.c: 568: showBatStep = 1;
	clrf	(_showBatStep)
	incf	(_showBatStep),f
	line	569
	
l1068:	
	line	570
;main.c: 569: }
;main.c: 570: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	goto	l1076
	line	575
	
l4889:	
;main.c: 573: else
;main.c: 574: {
;main.c: 575: curBatStep = (power_ad - 2800)/13;
	movlw	0Dh
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
	
l4891:	
;main.c: 576: if(curBatStep > 99)
	movlw	low(064h)
	subwf	(_curBatStep),w
	skipc
	goto	u5661
	goto	u5660
u5661:
	goto	l4895
u5660:
	line	578
	
l4893:	
;main.c: 577: {
;main.c: 578: curBatStep = 99;
	movlw	low(063h)
	movwf	(_curBatStep)
	line	580
	
l4895:	
;main.c: 579: }
;main.c: 580: if(count10s == 0 && count1s == 0)
	movf	((_count10s)),w
	btfss	status,2
	goto	u5671
	goto	u5670
u5671:
	goto	l1076
u5670:
	
l4897:	
	movf	((_count1s)),w
	btfss	status,2
	goto	u5681
	goto	u5680
u5681:
	goto	l1076
u5680:
	line	582
	
l4899:	
;main.c: 581: {
;main.c: 582: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u5691
	goto	u5690
u5691:
	goto	l4907
u5690:
	line	584
	
l4901:	
;main.c: 583: {
;main.c: 584: if(curBatStep > showBatStep && showBatStep < 99)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u5701
	goto	u5700
u5701:
	goto	l1076
u5700:
	
l4903:	
	movlw	low(063h)
	subwf	(_showBatStep),w
	skipnc
	goto	u5711
	goto	u5710
u5711:
	goto	l1076
u5710:
	line	586
	
l4905:	
;main.c: 585: {
;main.c: 586: showBatStep++;
	incf	(_showBatStep),f
	goto	l1076
	line	591
	
l4907:	
;main.c: 589: else
;main.c: 590: {
;main.c: 591: if(curBatStep < showBatStep && showBatStep > 1)
	movf	(_showBatStep),w
	subwf	(_curBatStep),w
	skipnc
	goto	u5721
	goto	u5720
u5721:
	goto	l1076
u5720:
	
l4909:	
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u5731
	goto	u5730
u5731:
	goto	l1076
u5730:
	line	593
	
l4911:	
;main.c: 592: {
;main.c: 593: showBatStep--;
	decf	(_showBatStep),f
	line	598
	
l1076:	
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
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    1[BANK0 ] unsigned int 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setBatStep
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
	line	6
global __ptext18
__ptext18:	;psect for function ___lwdiv
psect	text18
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l4809:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l4811:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u5531
	goto	u5530
u5531:
	goto	l4831
u5530:
	line	16
	
l4813:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l4817
	line	18
	
l4815:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l4817:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u5541
	goto	u5540
u5541:
	goto	l4815
u5540:
	line	22
	
l4819:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l4821:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u5555
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u5555:
	skipc
	goto	u5551
	goto	u5550
u5551:
	goto	l4827
u5550:
	line	24
	
l4823:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l4825:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l4827:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l4829:	
	decfsz	(___lwdiv@counter),f
	goto	u5561
	goto	u5560
u5561:
	goto	l4819
u5560:
	line	30
	
l4831:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l1738:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 600 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
;;		_showBatLed
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	600
global __ptext19
__ptext19:	;psect for function _chrgCtr
psect	text19
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	600
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	602
	
l4033:	
;main.c: 602: if(PORTB & 0x01)
	btfss	(6),(0)&7	;volatile
	goto	u4021
	goto	u4020
u4021:
	goto	l4049
u4020:
	line	604
	
l4035:	
;main.c: 603: {
;main.c: 604: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	605
	
l4037:	
;main.c: 605: firstLock = 0;
	clrf	(_firstLock)
	line	606
;main.c: 606: lowBatLock = 0;
	clrf	(_lowBatLock)
	line	607
	
l4039:	
;main.c: 607: showBatLed();
	fcall	_showBatLed
	line	608
	
l4041:	
;main.c: 608: if(PORTB & 0x02)
	btfss	(6),(1)&7	;volatile
	goto	u4031
	goto	u4030
u4031:
	goto	l4045
u4030:
	line	610
	
l4043:	
;main.c: 609: {
;main.c: 610: if(++chrgFullTime > 200)
	movlw	low(0C9h)
	incf	(_chrgFullTime),f
	subwf	((_chrgFullTime)),w
	skipc
	goto	u4041
	goto	u4040
u4041:
	goto	l1089
u4040:
	line	612
	
l4045:	
;main.c: 613: chrgFullFlag = 1;
	clrf	(_chrgFullTime)
	goto	l1089
	line	624
	
l4049:	
;main.c: 622: else
;main.c: 623: {
;main.c: 624: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	625
;main.c: 626: chrgFullFlag = 0;
	clrf	(_chrgFullTime)
	line	628
	
l4051:	
;main.c: 628: if(firstTime == 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4051
	goto	u4050
u4051:
	goto	l4061
u4050:
	line	630
	
l4053:	
;main.c: 629: {
;main.c: 630: if(workStep == 0 && wuhuaFlag == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u4061
	goto	u4060
u4061:
	goto	l4059
u4060:
	
l4055:	
	movf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u4071
	goto	u4070
u4071:
	goto	l4059
u4070:
	line	632
	
l4057:	
;main.c: 631: {
;main.c: 632: showNumShi = 0;
	clrf	(_showNumShi)
	line	633
;main.c: 633: showNumGe = 0;
	clrf	(_showNumGe)
	line	634
;main.c: 634: }
	goto	l1089
	line	637
	
l4059:	
;main.c: 635: else
;main.c: 636: {
;main.c: 637: showBatLed();
	fcall	_showBatLed
	goto	l1089
	line	642
	
l4061:	
;main.c: 640: else
;main.c: 641: {
;main.c: 642: if(showBatStep < curBatStep)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u4081
	goto	u4080
u4081:
	goto	l1088
u4080:
	line	644
	
l4063:	
;main.c: 643: {
;main.c: 644: showBatStep = curBatStep;
	movf	(_curBatStep),w
	movwf	(_showBatStep)
	line	645
	
l1088:	
	line	646
;main.c: 645: }
;main.c: 646: showNumShi = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumShi)
	line	647
;main.c: 647: showNumGe = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumGe)
	line	650
	
l1089:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_showBatLed

;; *************** function _showBatLed *****************
;; Defined at:
;;		line 544 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
;;		___lbdiv
;;		___lbmod
;; This function is called by:
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	544
global __ptext20
__ptext20:	;psect for function _showBatLed
psect	text20
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	544
	global	__size_of_showBatLed
	__size_of_showBatLed	equ	__end_of_showBatLed-_showBatLed
	
_showBatLed:	
;incstack = 0
	opt	stack 4
; Regs used in _showBatLed: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	546
	
l3497:	
;main.c: 546: showNumShi = numArray[showBatStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_showBatStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumShi)
	line	547
;main.c: 547: showNumGe = numArray[showBatStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_showBatStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumGe)
	line	548
	
l1059:	
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
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    4[COMMON] unsigned char 
;;  rem             1    6[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_showBatLed
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
global __ptext21
__ptext21:	;psect for function ___lbmod
psect	text21
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	movwf	(___lbmod@dividend)
	line	9
	
l3367:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3369:	
	clrf	(___lbmod@rem)
	line	12
	
l3371:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2875:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2875
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3373:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3375:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2881
	goto	u2880
u2881:
	goto	l3379
u2880:
	line	15
	
l3377:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3379:	
	decfsz	(___lbmod@counter),f
	goto	u2891
	goto	u2890
u2891:
	goto	l3371
u2890:
	line	17
	
l3381:	
	movf	(___lbmod@rem),w
	line	18
	
l1670:	
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
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    3[COMMON] unsigned char 
;;  quotient        1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_showBatLed
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
global __ptext22
__ptext22:	;psect for function ___lbdiv
psect	text22
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	movwf	(___lbdiv@dividend)
	line	9
	
l3343:	
	clrf	(___lbdiv@quotient)
	line	10
	
l3345:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u2831
	goto	u2830
u2831:
	goto	l3363
u2830:
	line	11
	
l3347:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l3351
	
l1659:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l3349:	
	incf	(___lbdiv@counter),f
	line	12
	
l3351:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l1659
u2840:
	line	16
	
l1661:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l3353:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l3359
u2850:
	line	19
	
l3355:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l3357:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l3359:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l3361:	
	decfsz	(___lbdiv@counter),f
	goto	u2861
	goto	u2860
u2861:
	goto	l1661
u2860:
	line	25
	
l3363:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1664:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_WorkSleep

;; *************** function _WorkSleep *****************
;; Defined at:
;;		line 216 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	216
global __ptext23
__ptext23:	;psect for function _WorkSleep
psect	text23
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	216
	global	__size_of_WorkSleep
	__size_of_WorkSleep	equ	__end_of_WorkSleep-_WorkSleep
	
_WorkSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _WorkSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	221
	
l4839:	
;main.c: 219: static unsigned char time;
;main.c: 221: if(B_OnOff)time = 0;
	btfss	(_B_OnOff/8),(_B_OnOff)&7	;volatile
	goto	u5571
	goto	u5570
u5571:
	goto	l4843
u5570:
	
l4841:	
	clrf	(WorkSleep@time)
	line	223
	
l4843:	
;main.c: 223: if(++time >= 125)
	movlw	low(07Dh)
	incf	(WorkSleep@time),f
	subwf	((WorkSleep@time)),w
	skipc
	goto	u5581
	goto	u5580
u5581:
	goto	l978
u5580:
	line	225
	
l4845:	
;main.c: 224: {
;main.c: 225: time = 0;
	clrf	(WorkSleep@time)
	line	226
;main.c: 226: INTCON = 0;
	clrf	(11)	;volatile
	line	227
;main.c: 227: PIE1 = 0;
	clrf	(14)	;volatile
	line	228
;main.c: 228: PIE2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(272)^0100h	;volatile
	line	229
;main.c: 229: PIR1 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(13)	;volatile
	line	230
;main.c: 230: PIR2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(271)^0100h	;volatile
	line	231
;main.c: 231: T2CON = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	232
;main.c: 232: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	235
;main.c: 235: ADCON0 = 0;
	clrf	(149)^080h	;volatile
	line	238
;main.c: 238: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	239
;main.c: 239: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	240
;main.c: 240: TRISC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	241
;main.c: 241: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	243
	
l4847:	
;main.c: 243: TRISB0 =1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	245
	
l4849:	
;main.c: 245: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	246
	
l4851:	
;main.c: 246: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	247
	
l4853:	
;main.c: 247: IOCB0= 1;
	bsf	(72/8),(72)&7	;volatile
	line	248
	
l4855:	
;main.c: 248: PORTB;
	movf	(6),w	;volatile
	line	260
	
l4857:	
;main.c: 260: SystemEnterSleep();
	fcall	_SystemEnterSleep
	line	261
	
l4859:	
;main.c: 261: if(RAIF)
	btfss	(107/8),(107)&7	;volatile
	goto	u5591
	goto	u5590
u5591:
	goto	l4865
u5590:
	line	263
	
l4861:	
;main.c: 262: {
;main.c: 263: RAIF = 0;
	bcf	(107/8),(107)&7	;volatile
	line	264
	
l4863:	
;main.c: 264: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	267
	
l4865:	
;main.c: 265: }
;main.c: 267: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	268
	
l4867:	
;main.c: 268: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	269
	
l4869:	
;main.c: 269: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	270
	
l4871:	
;main.c: 270: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	273
	
l978:	
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
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
global __ptext24
__ptext24:	;psect for function _SystemEnterSleep
psect	text24
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_SystemEnterSleep
	__size_of_SystemEnterSleep	equ	__end_of_SystemEnterSleep-_SystemEnterSleep
	
_SystemEnterSleep:	
;incstack = 0
	opt	stack 3
; Regs used in _SystemEnterSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l4481:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text24
	
l1380:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text24
	
l4483:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	
l4485:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(1),f	;volatile
	
l4487:	
	bsf	(1)+(3/8),(3)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text24
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\TouchKeyConst.h"
	line	5
	
l4489:	
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text24
	
l4491:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	
l4493:	
	clrf	(275)^0100h	;volatile
	
l4495:	
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
sleep ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
nop ;# 
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
clrwdt ;# 
psect	text24
	
l4497:	
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	
l4499:	
	movlw	low(079h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(275)^0100h	;volatile
	
l4501:	
	fcall	_ClearResSum
	
l4503:	
	bsf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	
l4505:	
	fcall	_GetTouchKeyValue
	
l4507:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SystemEnterSleep@91)
	
l4509:	
	clrf	(SystemEnterSleep@92)
	incf	(SystemEnterSleep@92),f
	clrf	(SystemEnterSleep@92+1)
	
l4511:	
	btfsc	(88/8),(88)&7	;volatile
	goto	u4991
	goto	u4990
u4991:
	goto	l4517
u4990:
	
l4513:	
	btfsc	(89/8),(89)&7	;volatile
	goto	u5001
	goto	u5000
u5001:
	goto	l4517
u5000:
	
l4515:	
	btfss	(107/8),(107)&7	;volatile
	goto	u5011
	goto	u5010
u5011:
	goto	l4529
u5010:
	
l4517:	
	fcall	_ClearResSum
	
l4519:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	
l4521:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4523:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	l1384
	
l4529:	
	movf	(SystemEnterSleep@92),w
	andlw	03h
	btfsc	status,2
	goto	u5021
	goto	u5020
u5021:
	goto	l4563
u5020:
	
l4531:	
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
	
l4533:	
	movf	((SystemEnterSleep@93)),w
iorwf	((SystemEnterSleep@93+1)),w
	btfsc	status,2
	goto	u5031
	goto	u5030
u5031:
	goto	l4563
u5030:
	
l4535:	
	movf	(SystemEnterSleep@91),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addwf	(SystemEnterSleep@94),f
	skipnc
	incf	(SystemEnterSleep@94+1),f
	
l4537:	
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
	goto	u5045
	movf	(SystemEnterSleep@94),w
	subwf	0+(??_SystemEnterSleep+0)+0,w
u5045:
	skipc
	goto	u5041
	goto	u5040
u5041:
	goto	l4561
u5040:
	
l4539:	
	clrf	(SystemEnterSleep@91)
	
l4541:	
	clrf	(SystemEnterSleep@92)
	incf	(SystemEnterSleep@92),f
	clrf	(SystemEnterSleep@92+1)
	
l4543:	
	movf	(SystemEnterSleep@92),w
	andlw	03h
	btfss	status,2
	goto	u5051
	goto	u5050
u5051:
	goto	l4547
u5050:
	
l4545:	
	movf	(SystemEnterSleep@91),w
	fcall	_KeyClearOne
	
l4547:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(SystemEnterSleep@92),f
	rlf	(SystemEnterSleep@92+1),f
	
l4549:	
	movlw	low(02h)
	incf	(SystemEnterSleep@91),f
	subwf	((SystemEnterSleep@91)),w
	skipc
	goto	u5061
	goto	u5060
u5061:
	goto	l4543
u5060:
	goto	l4517
	
l4561:	
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
	
l4563:	
	clrc
	rlf	(SystemEnterSleep@92),f
	rlf	(SystemEnterSleep@92+1),f
	
l4565:	
	movlw	low(02h)
	incf	(SystemEnterSleep@91),f
	subwf	((SystemEnterSleep@91)),w
	skipc
	goto	u5071
	goto	u5070
u5071:
	goto	l4529
u5070:
	goto	l1380
	
l1384:	
	return
	opt stack 0
GLOBAL	__end_of_SystemEnterSleep
	__end_of_SystemEnterSleep:
	signat	_SystemEnterSleep,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 115 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	115
global __ptext25
__ptext25:	;psect for function _Refurbish_Sfr
psect	text25
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	115
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 5
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	118
	
l3405:	
;main.c: 118: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(14)	;volatile
	line	119
;main.c: 119: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	120
;main.c: 120: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	121
	
l3407:	
;main.c: 121: if (4 != T2CON)
		movlw	4
	xorwf	((19)),w	;volatile
	btfsc	status,2
	goto	u2941
	goto	u2940
u2941:
	goto	l941
u2940:
	line	122
	
l3409:	
;main.c: 122: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	123
	
l941:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 129 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	129
global __ptext26
__ptext26:	;psect for function _KeyServer
psect	text26
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	129
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 6
; Regs used in _KeyServer: [wreg+status,2+status,0]
	line	132
	
l3907:	
;main.c: 131: static unsigned char KeyOldFlag = 0;
;main.c: 132: if (KeyFlag[0])
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l3957
u3710:
	line	134
	
l3909:	
;main.c: 133: {
;main.c: 134: if (KeyFlag[0] != KeyOldFlag)
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),w
	skipnz
	goto	u3721
	goto	u3720
u3721:
	goto	l961
u3720:
	line	137
	
l3911:	
;main.c: 135: {
;main.c: 137: KeyOldFlag ^= KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	xorwf	(KeyServer@KeyOldFlag),f
	line	138
	
l3913:	
;main.c: 138: if ((KeyOldFlag & 0x1) && (KeyFlag[0] & 0x1) && firstLock == 0)
	btfss	(KeyServer@KeyOldFlag),(0)&7
	goto	u3731
	goto	u3730
u3731:
	goto	l3933
u3730:
	
l3915:	
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u3741
	goto	u3740
u3741:
	goto	l3933
u3740:
	
l3917:	
	movf	((_firstLock)),w
	btfss	status,2
	goto	u3751
	goto	u3750
u3751:
	goto	l3933
u3750:
	line	141
	
l3919:	
;main.c: 139: {
;main.c: 141: if(lowBatLock == 1)
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l3923
u3760:
	line	143
	
l3921:	
;main.c: 142: {
;main.c: 143: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	line	144
;main.c: 144: }
	goto	l3927
	line	145
	
l3923:	
;main.c: 145: else if(++workStep > 2)
	movlw	low(03h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u3771
	goto	u3770
u3771:
	goto	l3927
u3770:
	line	147
	
l3925:	
;main.c: 146: {
;main.c: 147: workStep = 0;
	clrf	(_workStep)
	line	149
	
l3927:	
;main.c: 148: }
;main.c: 149: if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3781
	goto	u3780
u3781:
	goto	l3931
u3780:
	line	151
	
l3929:	
;main.c: 150: {
;main.c: 151: shanshuoTime = 450;
	movlw	0C2h
	movwf	(_shanshuoTime)
	movlw	01h
	movwf	((_shanshuoTime))+1
	line	152
;main.c: 152: }
	goto	l3933
	line	155
	
l3931:	
;main.c: 153: else
;main.c: 154: {
;main.c: 155: shanshuoTime = 0;
	clrf	(_shanshuoTime)
	clrf	(_shanshuoTime+1)
	line	158
	
l3933:	
;main.c: 156: }
;main.c: 157: }
;main.c: 158: if ((KeyOldFlag & 0x2) && (KeyFlag[0] & 0x2) && firstLock == 0)
	btfss	(KeyServer@KeyOldFlag),(1)&7
	goto	u3791
	goto	u3790
u3791:
	goto	l3955
u3790:
	
l3935:	
	btfss	(_KeyFlag),(1)&7	;volatile
	goto	u3801
	goto	u3800
u3801:
	goto	l3955
u3800:
	
l3937:	
	movf	((_firstLock)),w
	btfss	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l3955
u3810:
	line	161
	
l3939:	
;main.c: 159: {
;main.c: 161: if(lowBatLock == 1)
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l3943
u3820:
	line	163
	
l3941:	
;main.c: 162: {
;main.c: 163: shanshuoTime2 = 450;
	movlw	0C2h
	movwf	(_shanshuoTime2)
	movlw	01h
	movwf	((_shanshuoTime2))+1
	line	164
;main.c: 164: }
	goto	l3947
	line	165
	
l3943:	
;main.c: 165: else if(++wuhuaFlag > 2)
	movlw	low(03h)
	incf	(_wuhuaFlag),f
	subwf	((_wuhuaFlag)),w
	skipc
	goto	u3831
	goto	u3830
u3831:
	goto	l3947
u3830:
	line	167
	
l3945:	
;main.c: 166: {
;main.c: 167: wuhuaFlag = 0;
	clrf	(_wuhuaFlag)
	line	169
	
l3947:	
;main.c: 168: }
;main.c: 169: if(wuhuaFlag == 2)
		movlw	2
	xorwf	((_wuhuaFlag)),w
	btfss	status,2
	goto	u3841
	goto	u3840
u3841:
	goto	l3953
u3840:
	line	171
	
l3949:	
;main.c: 170: {
;main.c: 171: shanshuoTime2 = 450;
	movlw	0C2h
	movwf	(_shanshuoTime2)
	movlw	01h
	movwf	((_shanshuoTime2))+1
	line	172
	
l3951:	
;main.c: 172: count10s = 0;
	clrf	(_count10s)
	line	173
;main.c: 173: }
	goto	l3955
	line	176
	
l3953:	
;main.c: 174: else
;main.c: 175: {
;main.c: 176: shanshuoTime2 = 0;
	clrf	(_shanshuoTime2)
	clrf	(_shanshuoTime2+1)
	line	181
	
l3955:	
;main.c: 177: }
;main.c: 178: }
;main.c: 181: KeyOldFlag = KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	movwf	(KeyServer@KeyOldFlag)
	goto	l961
	line	186
	
l3957:	
;main.c: 184: else
;main.c: 185: {
;main.c: 186: KeyOldFlag = 0;
	clrf	(KeyServer@KeyOldFlag)
	line	188
	
l961:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 78 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	line	78
global __ptext27
__ptext27:	;psect for function _Init_System
psect	text27
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	78
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	80
	
l3877:	
# 80 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
nop ;# 
	line	81
# 81 "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
clrwdt ;# 
psect	text27
	line	82
	
l3879:	
;main.c: 82: INTCON = 0;
	clrf	(11)	;volatile
	line	83
	
l3881:	
;main.c: 83: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	84
	
l3883:	
;main.c: 84: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	89
	
l3885:	
;main.c: 89: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	90
	
l3887:	
;main.c: 90: PORTA = 0;
	clrf	(134)^080h	;volatile
	line	91
;main.c: 91: TRISB = 0x23;
	movlw	low(023h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	92
	
l3889:	
;main.c: 92: PORTB = 0;
	clrf	(6)	;volatile
	line	93
	
l3891:	
;main.c: 93: WPUB = 0x02;
	movlw	low(02h)
	movwf	(8)	;volatile
	line	94
;main.c: 94: TRISC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	95
;main.c: 95: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	97
	
l3893:	
;main.c: 97: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	98
	
l3895:	
;main.c: 98: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	99
	
l3897:	
;main.c: 99: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	101
	
l3899:	
;main.c: 101: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	102
	
l3901:	
;main.c: 102: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	103
	
l3903:	
;main.c: 103: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	104
	
l3905:	
;main.c: 104: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	105
	
l937:	
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
;;		On entry : 300/0
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
psect	text28,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
global __ptext28
__ptext28:	;psect for function _CheckTouchKey
psect	text28
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 2
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l4953:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text28
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u5811
	goto	u5810
u5811:
	goto	l1368
u5810:
	
l4955:	
	fcall	_GetTouchKeyValue
	
l4957:	
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u5821
	goto	u5820
u5821:
	goto	l4987
u5820:
	
l4959:	
	clrf	(_KeyCounter)
	
l4961:	
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l4987
	
l1368:	
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u5831
	goto	u5830
u5831:
	goto	l4981
u5830:
	
l4963:	
	fcall	_CheckOnceResult
	fcall	_TurnKeyFlags
	
l4965:	
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4967:	
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u5841
	goto	u5840
u5841:
	goto	l4971
u5840:
	
l4969:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u5851
	goto	u5850
u5851:
	goto	l4979
u5850:
	
l4971:	
	fcall	_KeyStopClear
	
l4973:	
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l4975:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4977:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4979:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	goto	l4987
	
l4981:	
	fcall	_CheckKeyOldValue
	fcall	_ClearResSum
	
l4983:	
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	
l4985:	
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	
l4987:	
	fcall	_CheckValidTime
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text28
	
l1376:	
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
psect	text29,local,class=CODE,delta=2,merge=1,group=1
global __ptext29
__ptext29:	;psect for function _TurnKeyFlags
psect	text29
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_TurnKeyFlags
	__size_of_TurnKeyFlags	equ	__end_of_TurnKeyFlags-_TurnKeyFlags
	
_TurnKeyFlags:	
;incstack = 0
	opt	stack 2
; Regs used in _TurnKeyFlags: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3719:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text29
	
l3721:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l3747
u3470:
	
l3723:	
	clrf	(TurnKeyFlags@F84)
	
l3725:	
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u3481
	goto	u3480
u3481:
	goto	l1349
u3480:
	
l3727:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u3491
	goto	u3490
u3491:
	goto	l1349
u3490:
	
l3729:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F83),f
	subwf	((TurnKeyFlags@F83)),w
	skipc
	goto	u3501
	goto	u3500
u3501:
	goto	l1354
u3500:
	
l3731:	
	clrf	(TurnKeyFlags@F83)
	
l3733:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	
l3735:	
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	
l3737:	
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u3511
	goto	u3510
u3511:
	goto	l1350
u3510:
	
l3739:	
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3741:	
	fcall	_KeyClearIn
	goto	l1354
	
l1350:	
	goto	l1354
	
l1349:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l3743:	
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	
l3745:	
	clrf	(TurnKeyFlags@F83)
	goto	l1354
	
l3747:	
	clrf	(TurnKeyFlags@F83)
	clrf	(_KeyOldData)	;volatile
	clrf	0+(_KeyOldData)+01h	;volatile
	
l3749:	
	movlw	low(02h)
	incf	(TurnKeyFlags@F84),f
	subwf	((TurnKeyFlags@F84)),w
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l1354
u3520:
	
l3751:	
	clrf	(TurnKeyFlags@F84)
	clrf	(_KeyFlag)	;volatile
	clrf	0+(_KeyFlag)+01h	;volatile
	
l3753:	
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	
l1354:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text29
	
l1356:	
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
psect	text30,local,class=CODE,delta=2,merge=1,group=1
global __ptext30
__ptext30:	;psect for function _KeyClearIn
psect	text30
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyClearIn
	__size_of_KeyClearIn	equ	__end_of_KeyClearIn-_KeyClearIn
	
_KeyClearIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyClearIn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3231:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text30
	
l3233:	
	clrf	(KeyClearIn@51)
	
l3239:	
	movf	(KeyClearIn@51),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2641
	goto	u2640
u2641:
	goto	l3243
u2640:
	
l3241:	
	movf	(KeyClearIn@51),w
	fcall	_KeyClearOne
	
l3243:	
	incf	(KeyClearIn@51),f
	
l3245:	
	movlw	low(02h)
	subwf	(KeyClearIn@51),w
	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l3239
u2650:
	
l1262:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text30
	
l1264:	
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
psect	text31,local,class=CODE,delta=2,merge=1,group=1
global __ptext31
__ptext31:	;psect for function _KeyStopClear
psect	text31
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_KeyStopClear
	__size_of_KeyStopClear	equ	__end_of_KeyStopClear-_KeyStopClear
	
_KeyStopClear:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3591:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text31
	
l3593:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyFlag)	;volatile
	clrf	0+(_KeyFlag)+01h	;volatile
	clrf	(KeyStopClear@53)
	
l3599:	
	clrc
	rlf	(KeyStopClear@53),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l3601:	
	movf	(KeyStopClear@53),w
	fcall	_KeyClearOne
	
l3603:	
	incf	(KeyStopClear@53),f
	
l3605:	
	movlw	low(02h)
	subwf	(KeyStopClear@53),w
	skipc
	goto	u3241
	goto	u3240
u3241:
	goto	l3599
u3240:
	
l1268:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text31
	
l1269:	
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
psect	text32,local,class=CODE,delta=2,merge=1,group=1
global __ptext32
__ptext32:	;psect for function _GetTouchKeyValue
psect	text32
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_GetTouchKeyValue
	__size_of_GetTouchKeyValue	equ	__end_of_GetTouchKeyValue-_GetTouchKeyValue
	
_GetTouchKeyValue:	
;incstack = 0
	opt	stack 3
; Regs used in _GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	
l3265:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text32
	
l3267:	
	clrf	(GetTouchKeyValue@62)
	
l3269:	
	clrf	(GetTouchKeyValue@63)
	incf	(GetTouchKeyValue@63),f
	clrf	(GetTouchKeyValue@63+1)
	
l3271:	
	btfss	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	goto	u2671
	goto	u2670
u2671:
	goto	l3275
u2670:
	
l3273:	
	movf	(GetTouchKeyValue@63),w
	andlw	03h
	btfsc	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l3303
u2680:
	
l3275:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(273)^0100h	;volatile
	clrf	(274)^0100h	;volatile
	
l3277:	
	movlw	low(079h)
	movwf	(275)^0100h	;volatile
	
l3279:	
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	
l3281:	
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
psect	text32
	
l3283:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7	;volatile
	
l3285:	
	movf	(GetTouchKeyValue@62),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 6	;RP1=1, select bank2
	movwf	(273)^0100h	;volatile
	
l3287:	
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
psect	text32
	
l3289:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(273)^0100h+(0/8),(0)&7	;volatile
	
l3291:	
	movlw	0D0h
	movwf	(GetTouchKeyValue@64)
	movlw	07h
	movwf	((GetTouchKeyValue@64))+1
	goto	l1290
	
l3293:	
	movlw	01h
	subwf	(GetTouchKeyValue@64),f
	movlw	0
	skipc
	decf	(GetTouchKeyValue@64+1),f
	subwf	(GetTouchKeyValue@64+1),f
	movf	(((GetTouchKeyValue@64))),w
iorwf	(((GetTouchKeyValue@64+1))),w
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l1290
u2690:
	
l3295:	
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_KeyCounter)
	
l3297:	
	fcall	_ClearResSum
	goto	l1293
	
l1290:	
	btfss	(273)^0100h,(7)&7	;volatile
	goto	u2701
	goto	u2700
u2701:
	goto	l3293
u2700:
	
l3301:	
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
	
l3303:	
	clrc
	rlf	(GetTouchKeyValue@63),f
	rlf	(GetTouchKeyValue@63+1),f
	
l3305:	
	movlw	low(02h)
	incf	(GetTouchKeyValue@62),f
	subwf	((GetTouchKeyValue@62)),w
	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l3271
u2710:
	
l1295:	
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text32
	
l1293:	
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
psect	text33,local,class=CODE,delta=2,merge=1,group=1
global __ptext33
__ptext33:	;psect for function _ClearResSum
psect	text33
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_ClearResSum
	__size_of_ClearResSum	equ	__end_of_ClearResSum-_ClearResSum
	
_ClearResSum:	
;incstack = 0
	opt	stack 3
; Regs used in _ClearResSum: [wreg-fsr0h+status,2+status,0]
	
l3111:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text33
	
l3113:	
	clrf	(ClearResSum@56)
	
l3115:	
	clrc
	rlf	(ClearResSum@56),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	
l3117:	
	movlw	low(02h)
	incf	(ClearResSum@56),f
	subwf	((ClearResSum@56)),w
	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l3115
u2450:
	
l1273:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text33
	
l1274:	
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
psect	text34,local,class=CODE,delta=2,merge=1,group=1
global __ptext34
__ptext34:	;psect for function _CheckValidTime
psect	text34
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckValidTime
	__size_of_CheckValidTime	equ	__end_of_CheckValidTime-_CheckValidTime
	
_CheckValidTime:	
;incstack = 0
	opt	stack 5
; Regs used in _CheckValidTime: [wreg+status,2+status,0]
	
l3755:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text34
	
l3757:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l3763
u3530:
	
l3759:	
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
	goto	u3541
	goto	u3540
u3541:
	goto	l1361
u3540:
	
l3761:	
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	
l3763:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(CheckValidTime@F87)^080h
	clrf	(CheckValidTime@F87+1)^080h
	
l1361:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text34
	
l1365:	
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
psect	text35,local,class=CODE,delta=2,merge=1,group=1
global __ptext35
__ptext35:	;psect for function _CheckOnceResult
psect	text35
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckOnceResult
	__size_of_CheckOnceResult	equ	__end_of_CheckOnceResult-_CheckOnceResult
	
_CheckOnceResult:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l4659:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text35
	
l4661:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckOnceResult@68)
	clrf	(_KeyData)	;volatile
	clrf	0+(_KeyData)+01h	;volatile
	clrf	(_KeyMaxSub)
	
l4663:	
	movf	(CheckOnceResult@68),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@70)
	
l4665:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u5285:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank1
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u5280:
	addlw	-1
	skipz
	goto	u5285
	
l4667:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@71)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@71+1)
	
l4669:	
	movf	(CheckOnceResult@68),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@69)
	
l4671:	
	movf	(CheckOnceResult@69),w
	movwf	(CheckOnceResult@72)
	clrf	(CheckOnceResult@72+1)
	
l4673:	
	movf	(CheckOnceResult@71),w
	addwf	(CheckOnceResult@72),f
	skipnc
	incf	(CheckOnceResult@72+1),f
	movf	(CheckOnceResult@71+1),w
	addwf	(CheckOnceResult@72+1),f
	
l4675:	
	movf	(CheckOnceResult@68),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u5291
	goto	u5290
u5291:
	goto	l4705
u5290:
	
l4677:	
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
	goto	u5305
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72),w
u5305:
	skipnc
	goto	u5301
	goto	u5300
u5301:
	goto	l4681
u5300:
	
l4679:	
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
	goto	l4689
	
l4681:	
	movf	(CheckOnceResult@73+1),w
	subwf	(CheckOnceResult@72+1),w
	skipz
	goto	u5315
	movf	(CheckOnceResult@73),w
	subwf	(CheckOnceResult@72),w
u5315:
	skipnc
	goto	u5311
	goto	u5310
u5311:
	goto	l4727
u5310:
	
l4683:	
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
	goto	u5325
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@72),w
u5325:
	skipnc
	goto	u5321
	goto	u5320
u5321:
	goto	l4727
u5320:
	
l4685:	
	clrc
	rlf	(CheckOnceResult@68),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@73),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@73+1),w
	movwf	indf
	
l4687:	
	movf	(CheckOnceResult@71),w
	subwf	(CheckOnceResult@73),w
	movwf	(CheckOnceResult@71)
	movf	(CheckOnceResult@71+1),w
	skipc
	incf	(CheckOnceResult@71+1),w
	subwf	(CheckOnceResult@73+1),w
	movwf	1+(CheckOnceResult@71)
	
l4689:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	
l4691:	
	movf	(0+(CheckOnceResult@71)+01h),w
	btfsc	status,2
	goto	u5331
	goto	u5330
u5331:
	goto	l4695
u5330:
	
l4693:	
	movlw	low(0FFh)
	movwf	(CheckOnceResult@69)
	goto	l1307
	
l4695:	
	movf	(CheckOnceResult@71),w
	movwf	(CheckOnceResult@69)
	
l1307:	
	movf	(CheckOnceResult@69),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u5341
	goto	u5340
u5341:
	goto	l4701
u5340:
	
l4697:	
	movf	(CheckOnceResult@69),w
	movwf	(_KeyMaxSub)
	
l4699:	
	movf	(CheckOnceResult@70),w
	movwf	(KeyHave@59)
	clrf	(KeyHave@59+1)
	movf	(CheckOnceResult@68),w
	fcall	_KeyHave
	goto	l4727
	
l4701:	
	incf	(_KeyCounter),f
	goto	l4727
	
l4705:	
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
	goto	u5355
	movf	(CheckOnceResult@72),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u5355:
	skipnc
	goto	u5351
	goto	u5350
u5351:
	goto	l4711
u5350:
	goto	l4727
	
l4711:	
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
	goto	u5365
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u5365:
	skipc
	goto	u5361
	goto	u5360
u5361:
	goto	l4715
u5360:
	
l4713:	
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
	goto	u5375
	movf	(CheckOnceResult@71),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u5375:
	skipnc
	goto	u5371
	goto	u5370
u5371:
	goto	l4719
u5370:
	
l4715:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u5381
	goto	u5380
u5381:
	goto	l1313
u5380:
	
l4717:	
	movf	(CheckOnceResult@68),w
	fcall	_KeyClearOne
	goto	l4727
	
l4719:	
	movf	(CheckOnceResult@68),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l4723
	
l1313:	
	
l4723:	
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfss	status,2
	goto	u5391
	goto	u5390
u5391:
	goto	l4727
u5390:
	
l4725:	
	movf	(CheckOnceResult@70),w
	movwf	(KeyHave@59)
	clrf	(KeyHave@59+1)
	movf	(CheckOnceResult@68),w
	fcall	_KeyHave
	
l4727:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@68),f
	subwf	((CheckOnceResult@68)),w
	skipc
	goto	u5401
	goto	u5400
u5401:
	goto	l4663
u5400:
	
l1322:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text35
	
l1323:	
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
psect	text36,local,class=CODE,delta=2,merge=1,group=1
global __ptext36
__ptext36:	;psect for function _KeyHave
psect	text36
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
	
l3247:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text36
	
l3249:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	
l3251:	
	clrf	(_KeyData)	;volatile
	
l3253:	
	clrf	0+(_KeyData)+01h	;volatile
	
l3255:	
	btfss	(KeyHave@58),(3)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l3259
u2660:
	
l3257:	
	movf	(KeyHave@59),w
	movwf	0+(_KeyData)+01h	;volatile
	goto	l1280
	
l3259:	
	movf	(KeyHave@59),w
	movwf	(_KeyData)	;volatile
	
l1280:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text36
	
l1283:	
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
psect	text37,local,class=CODE,delta=2,merge=1,group=1
global __ptext37
__ptext37:	;psect for function _KeyClearOne
psect	text37
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
	
l3107:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text37
	
l3109:	
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
psect	text37
	
l1258:	
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
psect	text38,local,class=CODE,delta=2,merge=1,group=1
global __ptext38
__ptext38:	;psect for function _CheckKeyOldValue
psect	text38
	file	"D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
	line	1
	global	__size_of_CheckKeyOldValue
	__size_of_CheckKeyOldValue	equ	__end_of_CheckKeyOldValue-_CheckKeyOldValue
	
_CheckKeyOldValue:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l3677:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text38
	
l3679:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@78)
	
l3681:	
	movlw	low(04h)
	incf	(CheckKeyOldValue@F77),f
	subwf	((CheckKeyOldValue@F77)),w
	skipnc
	goto	u3381
	goto	u3380
u3381:
	goto	l3685
u3380:
	goto	l1329
	
l3685:	
	clrf	(CheckKeyOldValue@F77)
	
l3687:	
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
	
l3689:	
	movf	(CheckKeyOldValue@78),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u3391
	goto	u3390
u3391:
	goto	l1331
u3390:
	
l3691:	
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
	
l3693:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3695:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u3401
	goto	u3400
u3401:
	goto	l3699
u3400:
	
l3697:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u3411
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l1331
u3410:
	
l3699:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3701:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3703:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l3707
u3420:
	
l3705:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u3431
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l1331
u3430:
	
l3707:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@80)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@80+1)
	
l3709:	
	movf	(CheckKeyOldValue@79),w
	subwf	(CheckKeyOldValue@80),f
	movf	(CheckKeyOldValue@79+1),w
	skipc
	decf	(CheckKeyOldValue@80+1),f
	subwf	(CheckKeyOldValue@80+1),f
	
l3711:	
	movlw	0
	subwf	(CheckKeyOldValue@80+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@80),w
	skipc
	goto	u3441
	goto	u3440
u3441:
	goto	l3715
u3440:
	
l3713:	
		incf	((CheckKeyOldValue@80)),w
	skipz
	goto	u3451
	incf	((CheckKeyOldValue@80+1)),w
	btfss	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l1331
u3450:
	
l3715:	
	clrc
	rlf	(CheckKeyOldValue@78),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@79),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@79+1),w
	movwf	indf
	
l1331:	
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
	
l3717:	
	movlw	low(02h)
	incf	(CheckKeyOldValue@78),f
	subwf	((CheckKeyOldValue@78)),w
	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l3687
u3460:
	
l1341:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt list ;# 
psect	text38
	
l1329:	
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
psect	text39,local,class=CODE,delta=2,merge=1,group=1
global __ptext39
__ptext39:	;psect for function _KeyIsIn
psect	text39
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
	
l3091:	
# 1 "D:\TOOL_PUBLISH\SCMCU\SCMCU_IDE_V2\SCTouch_lib\Sleep\XC8\81A1\CheckTouchKey.c"
opt nolist ;# 
psect	text39
	
l3093:	
	movf	(KeyIsIn@45),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@46)
	
l3095:	
	btfss	(KeyIsIn@45),(3)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l3099
u2440:
	
l3097:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@46),f
	goto	l3101
	
l3099:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@46),f
	
l3101:	
	movf	(KeyIsIn@46),w
	
l1255:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 194 in file "C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
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
psect	text40,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	194
global __ptext40
__ptext40:	;psect for function _Isr_Timer
psect	text40
	file	"C:\mcuproject\scm\zdt\D99_8F083_SOP16_\C16_SC8F083_SOP16\main.c"
	line	194
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
psect	text40
	line	196
	
i1l4141:	
;main.c: 196: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u421_21
	goto	u421_20
u421_21:
	goto	i1l4155
u421_20:
	line	198
	
i1l4143:	
;main.c: 197: {
;main.c: 198: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	199
	
i1l4145:	
;main.c: 199: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u422_21
	goto	u422_20
u422_21:
	goto	i1l970
u422_20:
	line	201
	
i1l4147:	
;main.c: 200: {
;main.c: 201: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	202
	
i1l4149:	
;main.c: 202: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	203
	
i1l4151:	
;main.c: 203: if(++count1s >= 250)
	movlw	low(0FAh)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u423_21
	goto	u423_20
u423_21:
	goto	i1l970
u423_20:
	line	205
	
i1l4153:	
;main.c: 204: {
;main.c: 205: count1s = 0;
	clrf	(_count1s)
	goto	i1l970
	line	211
	
i1l4155:	
;main.c: 209: else
;main.c: 210: {
;main.c: 211: PIR1 = 0;
	clrf	(13)	;volatile
	line	214
	
i1l970:	
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
