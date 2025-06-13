opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F6790
opt include "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\include\sc8f6790.cgen.inc"
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
	FNCALL	_main,_checkBat
	FNCALL	_main,_chrgCtr
	FNCALL	_main,_initTM1650
	FNCALL	_main,_showCtr
	FNCALL	_main,_task1
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,_checkOutAD
	FNCALL	_workCtr,_checkTempAD
	FNCALL	_checkTempAD,_Read_ADC
	FNCALL	_checkOutAD,_Read_ADC
	FNCALL	_task1,_refreshTM1650
	FNCALL	_refreshTM1650,_tm1650cmd
	FNCALL	_showCtr,_WorkSleep
	FNCALL	_showCtr,___lbdiv
	FNCALL	_showCtr,___lbmod
	FNCALL	_showCtr,___lwmod
	FNCALL	_showCtr,_initTM1650
	FNCALL	_showCtr,_setZeroStep
	FNCALL	_showCtr,_setZeroStep2
	FNCALL	_showCtr,_tm1650cmd
	FNCALL	_initTM1650,_tm1650cmd
	FNCALL	_tm1650cmd,_TM1650_START
	FNCALL	_tm1650cmd,_TM1650_STOP
	FNCALL	_tm1650cmd,_write_8bit
	FNCALL	_WorkSleep,_Init_System
	FNCALL	_WorkSleep,_Refurbish_Sfr
	FNCALL	_WorkSleep,_SystemEnterSleep
	FNCALL	_SystemEnterSleep,_ClearResSum
	FNCALL	_SystemEnterSleep,_GetTouchKeyValue
	FNCALL	_SystemEnterSleep,_KeyClearOne
	FNCALL	_chrgCtr,_checkChrgAD
	FNCALL	_checkChrgAD,_Read_ADC
	FNCALL	_checkBat,_Read_ADC
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
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	17
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
	retlw	073h
	global __end_of_numArray
__end_of_numArray:
	global	_Table_KeyFalg
psect	strings
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	64
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
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\Touch_Kscan_Library.h"
	line	77
_Table_KeyDown:
	retlw	0Ah
	retlw	0Ah
	retlw	0Ah
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyCap
psect	strings
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\Touch_Kscan_Library.h"
	line	70
_Table_KeyCap:
	retlw	03Ah
	retlw	01Ah
	retlw	02h
	global __end_of_Table_KeyCap
__end_of_Table_KeyCap:
	global	_Table_KeyChannel
psect	strings
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\Touch_Kscan_Library.h"
	line	63
_Table_KeyChannel:
	retlw	058h
	retlw	059h
	retlw	05Ah
	global __end_of_Table_KeyChannel
__end_of_Table_KeyChannel:
	global	_numArray
	global	_Table_KeyFalg
	global	_Table_KeyDown
	global	_Table_KeyCap
	global	_Table_KeyChannel
	global	_zeroStep
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
	global	_sleepTime
	global	_chrgFullTime
	global	_outResult
	global	_chrgResult
	global	_batResult
	global	_ledLightTime
	global	_keyCount3
	global	_keyCount2
	global	_keyCount1
	global	_firstTime
	global	_KeyFlag
	global	TurnKeyFlags@KeyNoTimes
	global	TurnKeyFlags@KeyHaveTimes
	global	CheckKeyOldValue@counter
	global	_KeyMaxSub
	global	_KeyCounter
	global	_startTime
	global	_checkTime
	global	_maxDuty
	global	_tempDuty
	global	_preZero
	global	_keyCancelTime
	global	_key3ProtectTime
	global	_key2ProtectTime
	global	_key1ProtectTime
	global	_chrgBatStepTime
	global	_checkTempTime
	global	_lowBatTime
	global	_lowBatFlag
	global	_chrgLockFlag
	global	_count15s
	global	_subTime
	global	_addTime
	global	_chrgDuty
	global	_chrgFullFlag
	global	_count50
	global	_preBatValue
	global	_batValue
	global	_chrgFlag
	global	_count1s
	global	_count64ms
	global	_showLed2
	global	_showLed1
	global	_showGeWei
	global	_showShiWei
	global	_showFlag
	global	_workStep
	global	_longKeyFalg
	global	_MainTime
	global	_KeyReference
	global	_KeyOldValue2
	global	_KeyOldValue0
	global	_KeyResSum
	global	_KeyUpShake
	global	CheckValidTime@validtime
	global	_tempResult
	global	_count900s
	global	_PWMCON2
_PWMCON2	set	29
	global	_PWMD01H
_PWMD01H	set	28
	global	_PWMD3L
_PWMD3L	set	26
	global	_PWMD0L
_PWMD0L	set	23
	global	_PWMTH
_PWMTH	set	22
	global	_PWMTL
_PWMTL	set	21
	global	_PWMCON1
_PWMCON1	set	20
	global	_PWMCON0
_PWMCON0	set	19
	global	_T2CON
_T2CON	set	18
	global	_PWMD23H
_PWMD23H	set	14
	global	_PIE1
_PIE1	set	13
	global	_PIR1
_PIR1	set	12
	global	_INTCON
_INTCON	set	11
	global	_WPUB
_WPUB	set	8
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_TMR0
_TMR0	set	1
	global	_TMR2IF
_TMR2IF	set	97
	global	_RBIF
_RBIF	set	88
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_ADRESH
_ADRESH	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_ADCON0
_ADCON0	set	157
	global	_ADCON1
_ADCON1	set	156
	global	_KEYCON2
_KEYCON2	set	151
	global	_KEYDATAH
_KEYDATAH	set	149
	global	_KEYDATAL
_KEYDATAL	set	148
	global	_KEYCON1
_KEYCON1	set	147
	global	_KEYCON0
_KEYCON0	set	146
	global	_PR2
_PR2	set	145
	global	_OSCCON
_OSCCON	set	136
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_ADON
_ADON	set	1256
	global	_GODONE
_GODONE	set	1257
	global	_CHS4
_CHS4	set	1254
	global	_SWDTEN
_SWDTEN	set	1089
	global	_TRISB6
_TRISB6	set	1078
	global	_WPUC
_WPUC	set	277
	global	_ANSEL2
_ANSEL2	set	274
	global	_ANSEL1
_ANSEL1	set	273
	global	_ANSEL0
_ANSEL0	set	272
	global	_PIE2
_PIE2	set	264
	global	_PIR2
_PIR2	set	263
	global	_RACIE
_RACIE	set	2113
	global	_RACIF
_RACIF	set	2105
	global	_RCCIF
_RCCIF	set	2106
	global	_PWMIOS1
_PWMIOS1	set	397
	global	_PWMIOS0
_PWMIOS0	set	396
	global	_IOCA
_IOCA	set	392
	global	_TRISC
_TRISC	set	390
	global	_PORTC
_PORTC	set	389
	global	_RC0
_RC0	set	3112
; #config settings
	file	"D17-jl_SC8F6790_tssop20.as"
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
_zeroStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_KeyOldValue1:
       ds      6

_KeyData:
       ds      2

_KeyOldData:
       ds      2

_sleepTime:
       ds      2

_chrgFullTime:
       ds      2

_outResult:
       ds      2

_chrgResult:
       ds      2

_batResult:
       ds      2

_ledLightTime:
       ds      2

_keyCount3:
       ds      2

_keyCount2:
       ds      2

_keyCount1:
       ds      2

_firstTime:
       ds      2

_KeyFlag:
       ds      2

TurnKeyFlags@KeyNoTimes:
       ds      1

TurnKeyFlags@KeyHaveTimes:
       ds      1

CheckKeyOldValue@counter:
       ds      1

_KeyMaxSub:
       ds      1

_KeyCounter:
       ds      1

_startTime:
       ds      1

_checkTime:
       ds      1

_maxDuty:
       ds      1

_tempDuty:
       ds      1

_preZero:
       ds      1

_keyCancelTime:
       ds      1

_key3ProtectTime:
       ds      1

_key2ProtectTime:
       ds      1

_key1ProtectTime:
       ds      1

_chrgBatStepTime:
       ds      1

_checkTempTime:
       ds      1

_lowBatTime:
       ds      1

_lowBatFlag:
       ds      1

_chrgLockFlag:
       ds      1

_count15s:
       ds      1

_subTime:
       ds      1

_addTime:
       ds      1

_chrgDuty:
       ds      1

_chrgFullFlag:
       ds      1

_count50:
       ds      1

_preBatValue:
       ds      1

_batValue:
       ds      1

_chrgFlag:
       ds      1

_count1s:
       ds      1

_count64ms:
       ds      1

_showLed2:
       ds      1

_showLed1:
       ds      1

_showGeWei:
       ds      1

_showShiWei:
       ds      1

_showFlag:
       ds      1

_workStep:
       ds      1

_longKeyFalg:
       ds      1

_MainTime:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_KeyReference:
       ds      6

_KeyOldValue2:
       ds      6

_KeyOldValue0:
       ds      6

_KeyResSum:
       ds      6

_KeyUpShake:
       ds      3

CheckValidTime@validtime:
       ds      2

_tempResult:
       ds      2

_count900s:
       ds      2

	file	"D17-jl_SC8F6790_tssop20.as"
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+046h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+021h)
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
?_SystemEnterSleep:	; 1 bytes @ 0x0
?_CheckTouchKey:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Refurbish_Sfr:	; 1 bytes @ 0x0
?_KeyServer:	; 1 bytes @ 0x0
?_checkOutAD:	; 1 bytes @ 0x0
?_checkChrgAD:	; 1 bytes @ 0x0
?_checkTempAD:	; 1 bytes @ 0x0
?_checkBat:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_WorkSleep:	; 1 bytes @ 0x0
?_TM1650_START:	; 1 bytes @ 0x0
?_TM1650_STOP:	; 1 bytes @ 0x0
?_write_8bit:	; 1 bytes @ 0x0
?_initTM1650:	; 1 bytes @ 0x0
?_refreshTM1650:	; 1 bytes @ 0x0
?_setZeroStep:	; 1 bytes @ 0x0
?_setZeroStep2:	; 1 bytes @ 0x0
?_showCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_task1:	; 1 bytes @ 0x0
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
??_TM1650_START:	; 1 bytes @ 0x2
??_TM1650_STOP:	; 1 bytes @ 0x2
??_write_8bit:	; 1 bytes @ 0x2
??_setZeroStep:	; 1 bytes @ 0x2
??_setZeroStep2:	; 1 bytes @ 0x2
??_KeyIsIn:	; 1 bytes @ 0x2
??_KeyClearOne:	; 1 bytes @ 0x2
??_ClearResSum:	; 1 bytes @ 0x2
?_KeyHave:	; 1 bytes @ 0x2
??_CheckValidTime:	; 1 bytes @ 0x2
?___lbdiv:	; 1 bytes @ 0x2
?___lbmod:	; 1 bytes @ 0x2
	global	?_Read_ADC
?_Read_ADC:	; 2 bytes @ 0x2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x2
	global	Read_ADC@ADCLDORef
Read_ADC@ADCLDORef:	; 1 bytes @ 0x2
	global	write_8bit@dat
write_8bit@dat:	; 1 bytes @ 0x2
	global	KeyIsIn@i
KeyIsIn@i:	; 1 bytes @ 0x2
	global	KeyClearOne@cnt
KeyClearOne@cnt:	; 1 bytes @ 0x2
	global	ClearResSum@cnt
ClearResSum@cnt:	; 1 bytes @ 0x2
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
	global	KeyHave@flag
KeyHave@flag:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	ds	1
??_KeyStopClear:	; 1 bytes @ 0x3
??_GetTouchKeyValue:	; 1 bytes @ 0x3
??___lbdiv:	; 1 bytes @ 0x3
??___lbmod:	; 1 bytes @ 0x3
	global	write_8bit@i
write_8bit@i:	; 1 bytes @ 0x3
	global	KeyIsIn@cnt
KeyIsIn@cnt:	; 1 bytes @ 0x3
	global	KeyStopClear@i
KeyStopClear@i:	; 1 bytes @ 0x3
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x3
	global	GetTouchKeyValue@temp
GetTouchKeyValue@temp:	; 2 bytes @ 0x3
	ds	1
??_Read_ADC:	; 1 bytes @ 0x4
?_tm1650cmd:	; 1 bytes @ 0x4
??_KeyClearIn:	; 1 bytes @ 0x4
??_KeyHave:	; 1 bytes @ 0x4
??_CheckKeyOldValue:	; 1 bytes @ 0x4
	global	tm1650cmd@seg_data
tm1650cmd@seg_data:	; 1 bytes @ 0x4
	global	KeyClearIn@cnt
KeyClearIn@cnt:	; 1 bytes @ 0x4
	global	KeyHave@cnt
KeyHave@cnt:	; 1 bytes @ 0x4
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x4
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x4
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x4
	ds	1
??_tm1650cmd:	; 1 bytes @ 0x5
??_CheckOnceResult:	; 1 bytes @ 0x5
??_TurnKeyFlags:	; 1 bytes @ 0x5
	global	tm1650cmd@digAddr
tm1650cmd@digAddr:	; 1 bytes @ 0x5
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x5
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	global	Read_ADC@Adc_Result
Read_ADC@Adc_Result:	; 2 bytes @ 0x5
	global	GetTouchKeyValue@wake
GetTouchKeyValue@wake:	; 2 bytes @ 0x5
	ds	1
??_initTM1650:	; 1 bytes @ 0x6
??_refreshTM1650:	; 1 bytes @ 0x6
??_task1:	; 1 bytes @ 0x6
??___lwmod:	; 1 bytes @ 0x6
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	ds	1
	global	Read_ADC@i
Read_ADC@i:	; 1 bytes @ 0x7
	global	GetTouchKeyValue@cnt
GetTouchKeyValue@cnt:	; 1 bytes @ 0x7
	ds	1
??_SystemEnterSleep:	; 1 bytes @ 0x8
	global	Read_ADC@ADCchannel
Read_ADC@ADCchannel:	; 1 bytes @ 0x8
	ds	1
??_CheckTouchKey:	; 1 bytes @ 0x9
??_checkChrgAD:	; 1 bytes @ 0x9
??_checkTempAD:	; 1 bytes @ 0x9
??_chrgCtr:	; 1 bytes @ 0x9
	global	checkOutAD@maxAout
checkOutAD@maxAout:	; 1 bytes @ 0x9
	ds	1
??_WorkSleep:	; 1 bytes @ 0xA
??_showCtr:	; 1 bytes @ 0xA
??_workCtr:	; 1 bytes @ 0xA
??_main:	; 1 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_checkOutAD:	; 1 bytes @ 0x0
??_checkBat:	; 1 bytes @ 0x0
	global	CheckOnceResult@OldValue
CheckOnceResult@OldValue:	; 2 bytes @ 0x0
	global	CheckKeyOldValue@KeyResTemp
CheckKeyOldValue@KeyResTemp:	; 2 bytes @ 0x0
	global	SystemEnterSleep@KeyValue
SystemEnterSleep@KeyValue:	; 2 bytes @ 0x0
	ds	2
	global	CheckOnceResult@KeyValue
CheckOnceResult@KeyValue:	; 2 bytes @ 0x2
	global	CheckKeyOldValue@KeyOldTemp
CheckKeyOldValue@KeyOldTemp:	; 2 bytes @ 0x2
	global	SystemEnterSleep@KeyResTemp
SystemEnterSleep@KeyResTemp:	; 2 bytes @ 0x2
	ds	2
	global	CheckOnceResult@flag
CheckOnceResult@flag:	; 1 bytes @ 0x4
	global	CheckKeyOldValue@cnt
CheckKeyOldValue@cnt:	; 1 bytes @ 0x4
	global	SystemEnterSleep@wake
SystemEnterSleep@wake:	; 2 bytes @ 0x4
	ds	1
	global	CheckOnceResult@KeyDown
CheckOnceResult@KeyDown:	; 1 bytes @ 0x5
	ds	1
	global	SystemEnterSleep@cnt
SystemEnterSleep@cnt:	; 1 bytes @ 0x6
	global	CheckOnceResult@KeyResTemp
CheckOnceResult@KeyResTemp:	; 2 bytes @ 0x6
	ds	2
	global	CheckOnceResult@cnt
CheckOnceResult@cnt:	; 1 bytes @ 0x8
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    31
;!    Data        0
;!    BSS         104
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      12
;!    BANK0            80      9      79
;!    BANK1            80      0      33
;!    BANK3            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _workCtr->_checkOutAD
;!    _checkTempAD->_Read_ADC
;!    _checkOutAD->_Read_ADC
;!    _refreshTM1650->_tm1650cmd
;!    _initTM1650->_tm1650cmd
;!    _tm1650cmd->_write_8bit
;!    _WorkSleep->_SystemEnterSleep
;!    _SystemEnterSleep->_GetTouchKeyValue
;!    _checkChrgAD->_Read_ADC
;!    _checkBat->_Read_ADC
;!    _CheckTouchKey->_CheckOnceResult
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
;!    _workCtr->_checkOutAD
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
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _Isr_Timer in BANK3
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
;! (0) _main                                                 0     0      0    8508
;!                      _CheckTouchKey
;!                        _Init_System
;!                          _KeyServer
;!                      _Refurbish_Sfr
;!                           _checkBat
;!                            _chrgCtr
;!                         _initTM1650
;!                            _showCtr
;!                              _task1
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              0     0      0     660
;!                         _checkOutAD
;!                        _checkTempAD
;! ---------------------------------------------------------------------------------
;! (2) _checkTempAD                                          0     0      0     310
;!                           _Read_ADC
;! ---------------------------------------------------------------------------------
;! (2) _checkOutAD                                           3     3      0     350
;!                                              9 COMMON     1     1      0
;!                                              0 BANK0      2     2      0
;!                           _Read_ADC
;! ---------------------------------------------------------------------------------
;! (1) _task1                                                0     0      0     801
;!                      _refreshTM1650
;! ---------------------------------------------------------------------------------
;! (2) _refreshTM1650                                        0     0      0     801
;!                          _tm1650cmd
;! ---------------------------------------------------------------------------------
;! (1) _showCtr                                              0     0      0    2929
;!                          _WorkSleep
;!                            ___lbdiv
;!                            ___lbmod
;!                            ___lwmod
;!                         _initTM1650
;!                        _setZeroStep
;!                       _setZeroStep2
;!                          _tm1650cmd
;! ---------------------------------------------------------------------------------
;! (2) _setZeroStep2                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _setZeroStep                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _initTM1650                                           0     0      0     801
;!                          _tm1650cmd
;! ---------------------------------------------------------------------------------
;! (3) _tm1650cmd                                            2     1      1     801
;!                                              4 COMMON     2     1      1
;!                       _TM1650_START
;!                        _TM1650_STOP
;!                         _write_8bit
;! ---------------------------------------------------------------------------------
;! (4) _write_8bit                                           2     2      0      69
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _TM1650_STOP                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _TM1650_START                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     245
;!                                              2 COMMON     5     1      4
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     202
;!                                              2 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     205
;!                                              2 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (2) _WorkSleep                                            0     0      0     675
;!                        _Init_System
;!                      _Refurbish_Sfr
;!                   _SystemEnterSleep
;! ---------------------------------------------------------------------------------
;! (3) _SystemEnterSleep                                     9     9      0     675
;!                                              8 COMMON     2     2      0
;!                                              0 BANK0      7     7      0
;!                        _ClearResSum
;!                   _GetTouchKeyValue
;!                        _KeyClearOne
;! ---------------------------------------------------------------------------------
;! (3) _Refurbish_Sfr                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0     310
;!                        _checkChrgAD
;! ---------------------------------------------------------------------------------
;! (2) _checkChrgAD                                          0     0      0     310
;!                           _Read_ADC
;! ---------------------------------------------------------------------------------
;! (1) _checkBat                                             2     2      0     310
;!                                              0 BANK0      2     2      0
;!                           _Read_ADC
;! ---------------------------------------------------------------------------------
;! (3) _Read_ADC                                             9     7      2     310
;!                                              2 COMMON     7     5      2
;! ---------------------------------------------------------------------------------
;! (1) _KeyServer                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _CheckTouchKey                                        0     0      0    2697
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
;! (4) _GetTouchKeyValue                                     5     5      0     181
;!                                              3 COMMON     5     5      0
;!                        _ClearResSum
;! ---------------------------------------------------------------------------------
;! (5) _ClearResSum                                          1     1      0      45
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _CheckValidTime                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _CheckOnceResult                                     13    13      0    1463
;!                                              5 COMMON     4     4      0
;!                                              0 BANK0      9     9      0
;!                        _KeyClearOne
;!                            _KeyHave
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (3) _KeyHave                                              3     1      2     304
;!                                              2 COMMON     3     1      2
;! ---------------------------------------------------------------------------------
;! (4) _KeyClearOne                                          1     1      0      88
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
;!   _checkBat
;!     _Read_ADC
;!   _chrgCtr
;!     _checkChrgAD
;!       _Read_ADC
;!   _initTM1650
;!     _tm1650cmd
;!       _TM1650_START
;!       _TM1650_STOP
;!       _write_8bit
;!   _showCtr
;!     _WorkSleep
;!       _Init_System
;!       _Refurbish_Sfr
;!       _SystemEnterSleep
;!         _ClearResSum
;!         _GetTouchKeyValue
;!           _ClearResSum
;!         _KeyClearOne
;!     ___lbdiv
;!     ___lbmod
;!     ___lwmod
;!     _initTM1650
;!       _tm1650cmd
;!         _TM1650_START
;!         _TM1650_STOP
;!         _write_8bit
;!     _setZeroStep
;!     _setZeroStep2
;!     _tm1650cmd
;!       _TM1650_START
;!       _TM1650_STOP
;!       _write_8bit
;!   _task1
;!     _refreshTM1650
;!       _tm1650cmd
;!         _TM1650_START
;!         _TM1650_STOP
;!         _write_8bit
;!   _workCtr
;!     _checkOutAD
;!       _Read_ADC
;!     _checkTempAD
;!       _Read_ADC
;!
;! _Isr_Timer (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      A       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      9      4F       4       98.8%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0      21       6       41.3%
;!BITBANK3            50      0       0       7        0.0%
;!BANK3               50      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BANK2               50      0       0      10        0.0%
;!ABS                  0      0      7C      11        0.0%
;!DATA                 0      0      7C      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 1103 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CheckTouchKey
;;		_Init_System
;;		_KeyServer
;;		_Refurbish_Sfr
;;		_checkBat
;;		_chrgCtr
;;		_initTM1650
;;		_showCtr
;;		_task1
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	1103
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	1103
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	1105
	
l4754:	
;main.c: 1105: Init_System();
	fcall	_Init_System
	line	1106
;main.c: 1106: initTM1650();
	fcall	_initTM1650
	line	1107
	
l4756:	
;main.c: 1107: firstTime = 250;
	movlw	0FAh
	movwf	(_firstTime)
	clrf	(_firstTime+1)
	line	1110
	
l4758:	
;main.c: 1109: {
;main.c: 1110: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u4471
	goto	u4470
u4471:
	goto	l4758
u4470:
	line	1112
	
l4760:	
;main.c: 1111: {
;main.c: 1112: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	1113
# 1113 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
clrwdt ;# 
psect	maintext
	line	1115
	
l4762:	
;main.c: 1115: CheckTouchKey();
	fcall	_CheckTouchKey
	line	1117
	
l4764:	
;main.c: 1117: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	1118
	
l4766:	
;main.c: 1118: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u4481
	goto	u4480
u4481:
	goto	l4770
u4480:
	line	1119
	
l4768:	
;main.c: 1119: KeyServer();
	fcall	_KeyServer
	line	1120
	
l4770:	
;main.c: 1120: showCtr();
	fcall	_showCtr
	line	1121
	
l4772:	
;main.c: 1121: workCtr();
	fcall	_workCtr
	line	1122
	
l4774:	
;main.c: 1122: checkBat();
	fcall	_checkBat
	line	1123
	
l4776:	
;main.c: 1123: chrgCtr();
	fcall	_chrgCtr
	line	1124
	
l4778:	
;main.c: 1124: task1();
	fcall	_task1
	goto	l4758
	global	start
	ljmp	start
	opt stack 0
	line	1128
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 934 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_checkOutAD
;;		_checkTempAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	934
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	934
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	936
	
l4682:	
;main.c: 936: if(startTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_startTime)),w
	btfsc	status,2
	goto	u4341
	goto	u4340
u4341:
	goto	l4686
u4340:
	line	938
	
l4684:	
;main.c: 937: {
;main.c: 938: startTime--;
	decf	(_startTime),f
	line	940
	
l4686:	
;main.c: 939: }
;main.c: 940: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l4708
u4350:
	line	942
	
l4688:	
;main.c: 941: {
;main.c: 942: checkTempAD();
	fcall	_checkTempAD
	line	943
	
l4690:	
;main.c: 943: PWMIOS0 = 0x01;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(396)^0180h	;volsfr
	line	944
	
l4692:	
;main.c: 944: PWMTH = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(22)	;volatile
	line	945
	
l4694:	
;main.c: 945: PWMTL = 100;
	movlw	low(064h)
	movwf	(21)	;volatile
	line	946
	
l4696:	
;main.c: 946: PWMD01H = 0x00;
	clrf	(28)	;volatile
	line	947
	
l4698:	
;main.c: 947: maxDuty = 40 + workStep;
	movf	(_workStep),w
	addlw	028h
	movwf	(_maxDuty)
	line	948
	
l4700:	
;main.c: 948: PWMCON1 = 0x00;
	clrf	(20)	;volatile
	line	949
	
l4702:	
;main.c: 949: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	950
	
l4704:	
;main.c: 950: PWMCON0 = 0x41;
	movlw	low(041h)
	movwf	(19)	;volatile
	line	951
	
l4706:	
;main.c: 951: checkOutAD();
	fcall	_checkOutAD
	line	952
;main.c: 952: }
	goto	l1443
	line	953
	
l4708:	
;main.c: 953: else if(chrgFlag && chrgFullFlag == 0 && chrgLockFlag == 0)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u4361
	goto	u4360
u4361:
	goto	l4752
u4360:
	
l4710:	
	movf	((_chrgFullFlag)),w
	btfss	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l4752
u4370:
	
l4712:	
	movf	((_chrgLockFlag)),w
	btfss	status,2
	goto	u4381
	goto	u4380
u4381:
	goto	l4752
u4380:
	line	955
	
l4714:	
;main.c: 954: {
;main.c: 955: if(chrgResult < 70 && batResult <= 1555)
	movlw	0
	subwf	(_chrgResult+1),w
	movlw	046h
	skipnz
	subwf	(_chrgResult),w
	skipnc
	goto	u4391
	goto	u4390
u4391:
	goto	l4726
u4390:
	
l4716:	
	movlw	06h
	subwf	(_batResult+1),w
	movlw	014h
	skipnz
	subwf	(_batResult),w
	skipnc
	goto	u4401
	goto	u4400
u4401:
	goto	l4726
u4400:
	line	957
	
l4718:	
;main.c: 956: {
;main.c: 957: if(++addTime > 10 && chrgDuty < 35)
	movlw	low(0Bh)
	incf	(_addTime),f
	subwf	((_addTime)),w
	skipc
	goto	u4411
	goto	u4410
u4411:
	goto	l4728
u4410:
	
l4720:	
	movlw	low(023h)
	subwf	(_chrgDuty),w
	skipnc
	goto	u4421
	goto	u4420
u4421:
	goto	l4728
u4420:
	line	959
	
l4722:	
;main.c: 958: {
;main.c: 959: addTime = 0;
	clrf	(_addTime)
	line	960
	
l4724:	
;main.c: 960: chrgDuty++;
	incf	(_chrgDuty),f
	goto	l4728
	line	965
	
l4726:	
;main.c: 963: else
;main.c: 964: {
;main.c: 965: addTime = 0;
	clrf	(_addTime)
	line	967
	
l4728:	
;main.c: 966: }
;main.c: 967: if(chrgResult > 80 || batResult > 1555)
	movlw	0
	subwf	(_chrgResult+1),w
	movlw	051h
	skipnz
	subwf	(_chrgResult),w
	skipnc
	goto	u4431
	goto	u4430
u4431:
	goto	l4732
u4430:
	
l4730:	
	movlw	06h
	subwf	(_batResult+1),w
	movlw	014h
	skipnz
	subwf	(_batResult),w
	skipc
	goto	u4441
	goto	u4440
u4441:
	goto	l4740
u4440:
	line	969
	
l4732:	
;main.c: 968: {
;main.c: 969: if(++subTime > 10 && chrgDuty > 10)
	movlw	low(0Bh)
	incf	(_subTime),f
	subwf	((_subTime)),w
	skipc
	goto	u4451
	goto	u4450
u4451:
	goto	l4742
u4450:
	
l4734:	
	movlw	low(0Bh)
	subwf	(_chrgDuty),w
	skipc
	goto	u4461
	goto	u4460
u4461:
	goto	l4742
u4460:
	line	971
	
l4736:	
;main.c: 970: {
;main.c: 971: subTime = 0;
	clrf	(_subTime)
	line	972
	
l4738:	
;main.c: 972: chrgDuty--;
	decf	(_chrgDuty),f
	goto	l4742
	line	977
	
l4740:	
;main.c: 975: else
;main.c: 976: {
;main.c: 977: subTime = 0;
	clrf	(_subTime)
	line	979
	
l4742:	
;main.c: 978: }
;main.c: 979: PWMIOS1 = 0x20;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(397)^0180h	;volsfr
	line	980
	
l4744:	
;main.c: 980: PWMTH = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(22)	;volatile
	line	981
;main.c: 981: PWMTL = 70;
	movlw	low(046h)
	movwf	(21)	;volatile
	line	982
	
l4746:	
;main.c: 982: PWMD23H = 0x00;
	clrf	(14)	;volatile
	line	983
	
l4748:	
;main.c: 983: PWMD3L = chrgDuty;
	movf	(_chrgDuty),w
	movwf	(26)	;volatile
	line	984
;main.c: 984: PWMCON1 = 0x00;
	clrf	(20)	;volatile
	line	985
;main.c: 985: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	986
	
l4750:	
;main.c: 986: PWMCON0 = 0x08;
	movlw	low(08h)
	movwf	(19)	;volatile
	line	987
;main.c: 987: }
	goto	l1443
	line	990
	
l4752:	
;main.c: 988: else
;main.c: 989: {
;main.c: 990: PWMCON0 = 0x00;
	clrf	(19)	;volatile
	line	992
	
l1443:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_checkTempAD

;; *************** function _checkTempAD *****************
;; Defined at:
;;		line 349 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Read_ADC
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	349
global __ptext2
__ptext2:	;psect for function _checkTempAD
psect	text2
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	349
	global	__size_of_checkTempAD
	__size_of_checkTempAD	equ	__end_of_checkTempAD-_checkTempAD
	
_checkTempAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkTempAD: [wreg+status,2+status,0+pclath+cstack]
	line	351
	
l3654:	
;main.c: 351: PORTA |= 0x01;
	bsf	(5)+(0/8),(0)&7	;volatile
	line	352
	
l3656:	
;main.c: 352: tempResult = Read_ADC(1,1);
	clrf	(Read_ADC@ADCLDORef)
	incf	(Read_ADC@ADCLDORef),f
	movlw	low(01h)
	fcall	_Read_ADC
	movf	(1+(?_Read_ADC)),w
	movwf	(_tempResult+1)^080h
	movf	(0+(?_Read_ADC)),w
	movwf	(_tempResult)^080h
	line	353
	
l3658:	
;main.c: 353: if(tempResult < 130)
	movlw	0
	subwf	(_tempResult+1)^080h,w
	movlw	082h
	skipnz
	subwf	(_tempResult)^080h,w
	skipnc
	goto	u2421
	goto	u2420
u2421:
	goto	l3664
u2420:
	line	356
	
l3660:	
;main.c: 354: {
;main.c: 356: if(++checkTempTime > 200)
	movlw	low(0C9h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_checkTempTime),f
	subwf	((_checkTempTime)),w
	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l1281
u2430:
	line	358
	
l3662:	
;main.c: 357: {
;main.c: 358: checkTempTime = 0;
	clrf	(_checkTempTime)
	line	359
;main.c: 359: workStep = 0;
	clrf	(_workStep)
	goto	l1281
	line	365
	
l3664:	
;main.c: 363: else
;main.c: 364: {
;main.c: 365: checkTempTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_checkTempTime)
	line	367
	
l1281:	
	return
	opt stack 0
GLOBAL	__end_of_checkTempAD
	__end_of_checkTempAD:
	signat	_checkTempAD,89
	global	_checkOutAD

;; *************** function _checkOutAD *****************
;; Defined at:
;;		line 313 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  maxAout         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         1       2       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Read_ADC
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	313
global __ptext3
__ptext3:	;psect for function _checkOutAD
psect	text3
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	313
	global	__size_of_checkOutAD
	__size_of_checkOutAD	equ	__end_of_checkOutAD-_checkOutAD
	
_checkOutAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutAD: [wreg+status,2+status,0+pclath+cstack]
	line	315
	
l4624:	
;main.c: 315: outResult = Read_ADC(9,1);
	clrf	(Read_ADC@ADCLDORef)
	incf	(Read_ADC@ADCLDORef),f
	movlw	low(09h)
	fcall	_Read_ADC
	movf	(1+(?_Read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_outResult+1)
	movf	(0+(?_Read_ADC)),w
	movwf	(_outResult)
	line	316
	
l4626:	
;main.c: 316: unsigned char maxAout = 37;
	movlw	low(025h)
	movwf	(checkOutAD@maxAout)
	line	317
	
l4628:	
;main.c: 317: if(batValue > 30)
	movlw	low(01Fh)
	subwf	(_batValue),w
	skipc
	goto	u4241
	goto	u4240
u4241:
	goto	l4632
u4240:
	line	318
	
l4630:	
;main.c: 318: maxAout = 39;
	movlw	low(027h)
	movwf	(checkOutAD@maxAout)
	line	319
	
l4632:	
;main.c: 319: maxAout = maxAout + workStep;
	movf	(_workStep),w
	addwf	(checkOutAD@maxAout),f
	line	321
	
l4634:	
;main.c: 321: if(outResult > maxAout)
	movf	(checkOutAD@maxAout),w
	movwf	(??_checkOutAD+0)+0
	clrf	(??_checkOutAD+0)+0+1
	movf	(_outResult+1),w
	subwf	1+(??_checkOutAD+0)+0,w
	skipz
	goto	u4255
	movf	(_outResult),w
	subwf	0+(??_checkOutAD+0)+0,w
u4255:
	skipnc
	goto	u4251
	goto	u4250
u4251:
	goto	l4646
u4250:
	line	323
	
l4636:	
;main.c: 322: {
;main.c: 323: if(++checkTime > 2)
	movlw	low(03h)
	incf	(_checkTime),f
	subwf	((_checkTime)),w
	skipc
	goto	u4261
	goto	u4260
u4261:
	goto	l4650
u4260:
	line	325
	
l4638:	
;main.c: 324: {
;main.c: 325: checkTime = 2;
	movlw	low(02h)
	movwf	(_checkTime)
	line	326
	
l4640:	
;main.c: 326: if(startTime == 0)
	movf	((_startTime)),w
	btfss	status,2
	goto	u4271
	goto	u4270
u4271:
	goto	l4644
u4270:
	line	328
	
l4642:	
;main.c: 327: {
;main.c: 328: tempDuty = 80 + workStep;
	movf	(_workStep),w
	addlw	050h
	movwf	(_tempDuty)
	line	329
;main.c: 329: }
	goto	l4650
	line	332
	
l4644:	
;main.c: 330: else
;main.c: 331: {
;main.c: 332: tempDuty = maxDuty;
	movf	(_maxDuty),w
	movwf	(_tempDuty)
	goto	l4650
	line	338
	
l4646:	
;main.c: 336: else
;main.c: 337: {
;main.c: 338: checkTime = 0;
	clrf	(_checkTime)
	goto	l4644
	line	341
	
l4650:	
;main.c: 340: }
;main.c: 341: PWMD0L = tempDuty;
	movf	(_tempDuty),w
	movwf	(23)	;volatile
	line	342
	
l1272:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutAD
	__end_of_checkOutAD:
	signat	_checkOutAD,89
	global	_task1

;; *************** function _task1 *****************
;; Defined at:
;;		line 1030 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_refreshTM1650
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	1030
global __ptext4
__ptext4:	;psect for function _task1
psect	text4
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	1030
	global	__size_of_task1
	__size_of_task1	equ	__end_of_task1-_task1
	
_task1:	
;incstack = 0
	opt	stack 3
; Regs used in _task1: [wreg+status,2+status,0+pclath+cstack]
	line	1032
	
l4488:	
;main.c: 1032: if(firstTime > 0)
	movf	((_firstTime)),w
iorwf	((_firstTime+1)),w
	btfsc	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l4494
u4000:
	line	1034
	
l4490:	
;main.c: 1033: {
;main.c: 1034: firstTime--;
	movlw	01h
	subwf	(_firstTime),f
	movlw	0
	skipc
	decf	(_firstTime+1),f
	subwf	(_firstTime+1),f
	line	1035
;main.c: 1035: if(preBatValue < batValue)
	movf	(_batValue),w
	subwf	(_preBatValue),w
	skipnc
	goto	u4011
	goto	u4010
u4011:
	goto	l4496
u4010:
	line	1037
	
l4492:	
;main.c: 1036: {
;main.c: 1037: preBatValue = batValue;
	movf	(_batValue),w
	movwf	(_preBatValue)
	goto	l4496
	line	1042
	
l4494:	
;main.c: 1040: else
;main.c: 1041: {
;main.c: 1042: refreshTM1650();
	fcall	_refreshTM1650
	line	1044
	
l4496:	
;main.c: 1043: }
;main.c: 1044: if(++count1s >= 250)
	movlw	low(0FAh)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l1471
u4020:
	line	1046
	
l4498:	
;main.c: 1045: {
;main.c: 1046: count1s = 0;
	clrf	(_count1s)
	line	1047
	
l4500:	
;main.c: 1047: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4031
	goto	u4030
u4031:
	goto	l4506
u4030:
	line	1049
	
l4502:	
;main.c: 1048: {
;main.c: 1049: if(++count900s > 675)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_count900s)^080h,f
	skipnz
	incf	(_count900s+1)^080h,f
	movlw	02h
	subwf	((_count900s+1)^080h),w
	movlw	0A4h
	skipnz
	subwf	((_count900s)^080h),w
	skipc
	goto	u4041
	goto	u4040
u4041:
	goto	l4508
u4040:
	line	1051
	
l4504:	
;main.c: 1050: {
;main.c: 1051: count900s = 0;
	clrf	(_count900s)^080h
	clrf	(_count900s+1)^080h
	line	1052
;main.c: 1052: workStep = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_workStep)
	line	1053
;main.c: 1053: zeroStep = 0;
	clrf	(_zeroStep)
	line	1054
;main.c: 1054: ledLightTime = 0;
	clrf	(_ledLightTime)
	clrf	(_ledLightTime+1)
	goto	l4508
	line	1059
	
l4506:	
;main.c: 1057: else
;main.c: 1058: {
;main.c: 1059: count900s = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_count900s)^080h
	clrf	(_count900s+1)^080h
	line	1061
	
l4508:	
;main.c: 1060: }
;main.c: 1061: if(ledLightTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u4051
	goto	u4050
u4051:
	goto	l4512
u4050:
	line	1063
	
l4510:	
;main.c: 1062: {
;main.c: 1063: ledLightTime--;
	movlw	01h
	subwf	(_ledLightTime),f
	movlw	0
	skipc
	decf	(_ledLightTime+1),f
	subwf	(_ledLightTime+1),f
	line	1065
	
l4512:	
;main.c: 1064: }
;main.c: 1065: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u4061
	goto	u4060
u4061:
	goto	l4526
u4060:
	line	1067
	
l4514:	
;main.c: 1066: {
;main.c: 1067: if(preBatValue < 99 && preBatValue < batValue)
	movlw	low(063h)
	subwf	(_preBatValue),w
	skipnc
	goto	u4071
	goto	u4070
u4071:
	goto	l4524
u4070:
	
l4516:	
	movf	(_batValue),w
	subwf	(_preBatValue),w
	skipnc
	goto	u4081
	goto	u4080
u4081:
	goto	l4524
u4080:
	line	1069
	
l4518:	
;main.c: 1068: {
;main.c: 1069: if(++count15s >= 15)
	movlw	low(0Fh)
	incf	(_count15s),f
	subwf	((_count15s)),w
	skipc
	goto	u4091
	goto	u4090
u4091:
	goto	l1467
u4090:
	line	1071
	
l4520:	
;main.c: 1070: {
;main.c: 1071: count15s = 0;
	clrf	(_count15s)
	line	1072
	
l4522:	
;main.c: 1072: preBatValue++;
	incf	(_preBatValue),f
	goto	l1471
	line	1077
	
l4524:	
;main.c: 1075: else
;main.c: 1076: {
;main.c: 1077: count15s = 0;
	clrf	(_count15s)
	goto	l1471
	line	1082
	
l4526:	
;main.c: 1080: else
;main.c: 1081: {
;main.c: 1082: if(preBatValue > 0 && preBatValue > batValue)
	movf	((_preBatValue)),w
	btfsc	status,2
	goto	u4101
	goto	u4100
u4101:
	goto	l4524
u4100:
	
l4528:	
	movf	(_preBatValue),w
	subwf	(_batValue),w
	skipnc
	goto	u4111
	goto	u4110
u4111:
	goto	l4524
u4110:
	line	1084
	
l4530:	
;main.c: 1083: {
;main.c: 1084: if(++count15s >= 15)
	movlw	low(0Fh)
	incf	(_count15s),f
	subwf	((_count15s)),w
	skipc
	goto	u4121
	goto	u4120
u4121:
	goto	l1467
u4120:
	line	1086
	
l4532:	
;main.c: 1085: {
;main.c: 1086: count15s = 0;
	clrf	(_count15s)
	line	1087
	
l4534:	
;main.c: 1087: preBatValue--;
	decf	(_preBatValue),f
	goto	l1471
	line	1094
	
l1467:	
	line	1097
	
l1471:	
	return
	opt stack 0
GLOBAL	__end_of_task1
	__end_of_task1:
	signat	_task1,89
	global	_refreshTM1650

;; *************** function _refreshTM1650 *****************
;; Defined at:
;;		line 656 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_tm1650cmd
;; This function is called by:
;;		_task1
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	656
global __ptext5
__ptext5:	;psect for function _refreshTM1650
psect	text5
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	656
	global	__size_of_refreshTM1650
	__size_of_refreshTM1650	equ	__end_of_refreshTM1650-_refreshTM1650
	
_refreshTM1650:	
;incstack = 0
	opt	stack 3
; Regs used in _refreshTM1650: [wreg+status,2+status,0+pclath+cstack]
	line	658
	
l3710:	
;main.c: 658: if(showFlag)
	movf	((_showFlag)),w
	btfsc	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l3714
u2460:
	line	660
	
l3712:	
;main.c: 659: {
;main.c: 660: tm1650cmd(0X48,0x21);
	movlw	low(021h)
	movwf	(tm1650cmd@seg_data)
	movlw	low(048h)
	fcall	_tm1650cmd
	line	661
# 661 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 661 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 661 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 661 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 661 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 661 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text5
	line	662
;main.c: 662: tm1650cmd(0X68,showLed2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_showLed2),w
	movwf	(tm1650cmd@seg_data)
	movlw	low(068h)
	fcall	_tm1650cmd
	line	663
# 663 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 663 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 663 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 663 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 663 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 663 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text5
	line	664
;main.c: 664: tm1650cmd(0X6A,showShiWei);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_showShiWei),w
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Ah)
	fcall	_tm1650cmd
	line	665
# 665 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 665 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 665 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 665 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 665 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 665 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text5
	line	666
;main.c: 666: tm1650cmd(0X6C,showGeWei);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_showGeWei),w
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Ch)
	fcall	_tm1650cmd
	line	667
# 667 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 667 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 667 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 667 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 667 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 667 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text5
	line	668
;main.c: 668: tm1650cmd(0X6E,showLed1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_showLed1),w
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Eh)
	fcall	_tm1650cmd
	line	669
;main.c: 669: }
	goto	l1342
	line	670
	
l3714:	
;main.c: 670: else if(sleepTime < 10)
	movlw	0
	subwf	(_sleepTime+1),w
	movlw	0Ah
	skipnz
	subwf	(_sleepTime),w
	skipnc
	goto	u2471
	goto	u2470
u2471:
	goto	l1342
u2470:
	line	672
	
l3716:	
;main.c: 671: {
;main.c: 672: tm1650cmd(0X68,0);
	clrf	(tm1650cmd@seg_data)
	movlw	low(068h)
	fcall	_tm1650cmd
	line	673
# 673 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 673 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 673 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 673 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 673 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 673 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text5
	line	674
;main.c: 674: tm1650cmd(0X6A,0);
	clrf	(tm1650cmd@seg_data)
	movlw	low(06Ah)
	fcall	_tm1650cmd
	line	675
# 675 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 675 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 675 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 675 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 675 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 675 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text5
	line	676
;main.c: 676: tm1650cmd(0X6C,0);
	clrf	(tm1650cmd@seg_data)
	movlw	low(06Ch)
	fcall	_tm1650cmd
	line	677
# 677 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 677 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 677 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 677 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 677 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 677 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text5
	line	678
;main.c: 678: tm1650cmd(0X6E,0);
	clrf	(tm1650cmd@seg_data)
	movlw	low(06Eh)
	fcall	_tm1650cmd
	line	679
# 679 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 679 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 679 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 679 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 679 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 679 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text5
	line	680
;main.c: 680: tm1650cmd(0X48,0x00);
	clrf	(tm1650cmd@seg_data)
	movlw	low(048h)
	fcall	_tm1650cmd
	line	681
# 681 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 681 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 681 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 681 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 681 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 681 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text5
	line	682
	
l3718:	
;main.c: 682: showShiWei = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_showShiWei)
	line	683
	
l3720:	
;main.c: 683: showGeWei = 0x00;
	clrf	(_showGeWei)
	line	684
	
l3722:	
;main.c: 684: showLed1 = 0x00;
	clrf	(_showLed1)
	line	685
	
l3724:	
;main.c: 685: showLed2 = 0x00;
	clrf	(_showLed2)
	line	687
	
l1342:	
	return
	opt stack 0
GLOBAL	__end_of_refreshTM1650
	__end_of_refreshTM1650:
	signat	_refreshTM1650,89
	global	_showCtr

;; *************** function _showCtr *****************
;; Defined at:
;;		line 829 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_WorkSleep
;;		___lbdiv
;;		___lbmod
;;		___lwmod
;;		_initTM1650
;;		_setZeroStep
;;		_setZeroStep2
;;		_tm1650cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	829
global __ptext6
__ptext6:	;psect for function _showCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	829
	global	__size_of_showCtr
	__size_of_showCtr	equ	__end_of_showCtr-_showCtr
	
_showCtr:	
;incstack = 0
	opt	stack 2
; Regs used in _showCtr: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	831
	
l4284:	
;main.c: 831: if(firstTime > 0)
	movf	((_firstTime)),w
iorwf	((_firstTime+1)),w
	btfsc	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l4292
u3670:
	line	833
	
l4286:	
;main.c: 832: {
;main.c: 833: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	834
	
l4288:	
;main.c: 834: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	835
	
l4290:	
;main.c: 835: initTM1650();
	fcall	_initTM1650
	line	836
;main.c: 836: }
	goto	l1427
	line	837
	
l4292:	
;main.c: 837: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l4306
u3680:
	line	839
	
l4294:	
;main.c: 838: {
;main.c: 839: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	840
	
l4296:	
;main.c: 840: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	841
	
l4298:	
;main.c: 841: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	842
	
l4300:	
;main.c: 842: showLed2 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed2)
	line	843
	
l4302:	
;main.c: 843: showShiWei = numArray[workStep / 10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_workStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	844
	
l4304:	
;main.c: 844: showGeWei = numArray[workStep % 10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_workStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	845
;main.c: 845: }
	goto	l1427
	line	846
	
l4306:	
;main.c: 846: else if(ledLightTime > 0)
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l4338
u3690:
	line	848
	
l4308:	
;main.c: 847: {
;main.c: 848: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	849
	
l4310:	
;main.c: 849: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	850
	
l4312:	
;main.c: 850: if(preBatValue >= 85)
	movlw	low(055h)
	subwf	(_preBatValue),w
	skipc
	goto	u3701
	goto	u3700
u3701:
	goto	l4316
u3700:
	line	852
	
l4314:	
;main.c: 851: {
;main.c: 852: showShiWei = numArray[9];
	movlw	low((((_numArray+09h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	853
;main.c: 853: showGeWei = numArray[9];
	movlw	low((((_numArray+09h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	854
;main.c: 854: }
	goto	l4334
	line	855
	
l4316:	
;main.c: 855: else if(preBatValue > 60)
	movlw	low(03Dh)
	subwf	(_preBatValue),w
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l4320
u3710:
	line	857
	
l4318:	
;main.c: 856: {
;main.c: 857: showShiWei = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	858
;main.c: 858: showGeWei = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	859
;main.c: 859: }
	goto	l4334
	line	860
	
l4320:	
;main.c: 860: else if(preBatValue > 40)
	movlw	low(029h)
	subwf	(_preBatValue),w
	skipc
	goto	u3721
	goto	u3720
u3721:
	goto	l4324
u3720:
	line	862
	
l4322:	
;main.c: 861: {
;main.c: 862: showShiWei = numArray[6];
	movlw	low((((_numArray+06h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	863
;main.c: 863: showGeWei = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	864
;main.c: 864: }
	goto	l4334
	line	865
	
l4324:	
;main.c: 865: else if(preBatValue > 20)
	movlw	low(015h)
	subwf	(_preBatValue),w
	skipc
	goto	u3731
	goto	u3730
u3731:
	goto	l4328
u3730:
	line	867
	
l4326:	
;main.c: 866: {
;main.c: 867: showShiWei = numArray[4];
	movlw	low((((_numArray+04h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	868
;main.c: 868: showGeWei = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	869
;main.c: 869: }
	goto	l4334
	line	870
	
l4328:	
;main.c: 870: else if(preBatValue > 0)
	movf	((_preBatValue)),w
	btfsc	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l4332
u3740:
	line	872
	
l4330:	
;main.c: 871: {
;main.c: 872: showShiWei = numArray[2];
	movlw	low((((_numArray+02h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	873
;main.c: 873: showGeWei = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	874
;main.c: 874: }
	goto	l4334
	line	877
	
l4332:	
;main.c: 875: else
;main.c: 876: {
;main.c: 877: showShiWei = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	878
;main.c: 878: showGeWei = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	880
	
l4334:	
;main.c: 879: }
;main.c: 880: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	881
	
l4336:	
;main.c: 881: showLed2 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed2)
	line	882
;main.c: 882: }
	goto	l1427
	line	883
	
l4338:	
;main.c: 883: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3751
	goto	u3750
u3751:
	goto	l4364
u3750:
	line	885
	
l4340:	
;main.c: 884: {
;main.c: 885: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	886
	
l4342:	
;main.c: 886: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	887
	
l4344:	
;main.c: 887: if(++chrgBatStepTime > 63)
	movlw	low(040h)
	incf	(_chrgBatStepTime),f
	subwf	((_chrgBatStepTime)),w
	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l4362
u3760:
	line	889
	
l4346:	
;main.c: 888: {
;main.c: 889: chrgBatStepTime = 0;
	clrf	(_chrgBatStepTime)
	line	890
	
l4348:	
;main.c: 890: if(preBatValue >= 99)
	movlw	low(063h)
	subwf	(_preBatValue),w
	skipc
	goto	u3771
	goto	u3770
u3771:
	goto	l4356
u3770:
	line	892
	
l4350:	
;main.c: 891: {
;main.c: 892: zeroStep = 0;
	clrf	(_zeroStep)
	line	893
	
l4352:	
;main.c: 893: showShiWei = numArray[9];
	movlw	low((((_numArray+09h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	894
	
l4354:	
;main.c: 894: showGeWei = numArray[9];
	movlw	low((((_numArray+09h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	895
;main.c: 895: }
	goto	l4362
	line	898
	
l4356:	
;main.c: 896: else
;main.c: 897: {
;main.c: 898: if(++zeroStep > 12)
	movlw	low(0Dh)
	incf	(_zeroStep),f
	subwf	((_zeroStep)),w
	skipc
	goto	u3781
	goto	u3780
u3781:
	goto	l4360
u3780:
	line	900
	
l4358:	
;main.c: 899: {
;main.c: 900: zeroStep = 1;
	clrf	(_zeroStep)
	incf	(_zeroStep),f
	line	902
	
l4360:	
;main.c: 901: }
;main.c: 902: showShiWei = 0x00;
	clrf	(_showShiWei)
	line	903
;main.c: 903: showGeWei = 0x00;
	clrf	(_showGeWei)
	line	906
	
l4362:	
;main.c: 904: }
;main.c: 905: }
;main.c: 906: setZeroStep2();
	fcall	_setZeroStep2
	line	908
;main.c: 908: }
	goto	l1427
	line	909
	
l4364:	
;main.c: 909: else if(zeroStep > 0)
	movf	((_zeroStep)),w
	btfsc	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l4372
u3790:
	line	911
	
l4366:	
;main.c: 910: {
;main.c: 911: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	912
	
l4368:	
;main.c: 912: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	913
;main.c: 913: showShiWei = showGeWei = 0;
	clrf	(_showGeWei)
	clrf	(_showShiWei)
	line	914
	
l4370:	
;main.c: 914: setZeroStep();
	fcall	_setZeroStep
	line	915
;main.c: 915: }
	goto	l1427
	line	918
	
l4372:	
;main.c: 916: else
;main.c: 917: {
;main.c: 918: if(sleepTime > 10 && sleepTime % 20 == 0)
	movlw	0
	subwf	(_sleepTime+1),w
	movlw	0Bh
	skipnz
	subwf	(_sleepTime),w
	skipc
	goto	u3801
	goto	u3800
u3801:
	goto	l4384
u3800:
	
l4374:	
	movlw	014h
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_sleepTime+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_sleepTime),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	((0+(?___lwmod))),w
iorwf	((1+(?___lwmod))),w
	btfss	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l4384
u3810:
	line	920
	
l4376:	
;main.c: 919: {
;main.c: 920: showFlag = 0;
	clrf	(_showFlag)
	line	921
	
l4378:	
;main.c: 921: tm1650cmd(0X48,0x04);
	movlw	low(04h)
	movwf	(tm1650cmd@seg_data)
	movlw	low(048h)
	fcall	_tm1650cmd
	line	922
	
l4380:	
;main.c: 922: PORTC |= 0x01;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(389)^0180h+(0/8),(0)&7	;volatile
	line	923
	
l4382:	
;main.c: 923: PORTB |= 0x80;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(7/8),(7)&7	;volatile
	line	925
	
l4384:	
;main.c: 924: }
;main.c: 925: if(++sleepTime > 200)
	incf	(_sleepTime),f
	skipnz
	incf	(_sleepTime+1),f
	movlw	0
	subwf	((_sleepTime+1)),w
	movlw	0C9h
	skipnz
	subwf	((_sleepTime)),w
	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l1416
u3820:
	line	927
	
l4386:	
;main.c: 926: {
;main.c: 927: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	928
	
l4388:	
;main.c: 928: WorkSleep();
	fcall	_WorkSleep
	goto	l1427
	line	931
	
l1416:	
	line	932
	
l1427:	
	return
	opt stack 0
GLOBAL	__end_of_showCtr
	__end_of_showCtr:
	signat	_showCtr,89
	global	_setZeroStep2

;; *************** function _setZeroStep2 *****************
;; Defined at:
;;		line 760 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_showCtr
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	760
global __ptext7
__ptext7:	;psect for function _setZeroStep2
psect	text7
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	760
	global	__size_of_setZeroStep2
	__size_of_setZeroStep2	equ	__end_of_setZeroStep2-_setZeroStep2
	
_setZeroStep2:	
;incstack = 0
	opt	stack 5
; Regs used in _setZeroStep2: [wreg+status,2+status,0]
	line	762
	
l3788:	
;main.c: 762: if(zeroStep == 0)
	movf	((_zeroStep)),w
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l3792
u2610:
	line	764
	
l3790:	
;main.c: 763: {
;main.c: 764: showLed1 = 0x00;
	clrf	(_showLed1)
	line	765
;main.c: 765: showLed2 = 0x00;
	clrf	(_showLed2)
	line	766
;main.c: 766: }
	goto	l1398
	line	767
	
l3792:	
;main.c: 767: else if(zeroStep == 1)
		decf	((_zeroStep)),w
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l3798
u2620:
	line	769
	
l3794:	
;main.c: 768: {
;main.c: 769: showLed1 = 0x01;
	clrf	(_showLed1)
	incf	(_showLed1),f
	line	770
	
l3796:	
;main.c: 770: showLed2 = 0x00;
	clrf	(_showLed2)
	line	771
;main.c: 771: }
	goto	l1398
	line	772
	
l3798:	
;main.c: 772: else if(zeroStep == 2)
		movlw	2
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l3804
u2630:
	line	774
	
l3800:	
;main.c: 773: {
;main.c: 774: showLed1 = 0x02;
	movlw	low(02h)
	movwf	(_showLed1)
	goto	l3796
	line	777
	
l3804:	
;main.c: 777: else if(zeroStep == 3)
		movlw	3
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l3810
u2640:
	line	779
	
l3806:	
;main.c: 778: {
;main.c: 779: showLed1 = 0x04;
	movlw	low(04h)
	movwf	(_showLed1)
	goto	l3796
	line	782
	
l3810:	
;main.c: 782: else if(zeroStep == 4)
		movlw	4
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l3816
u2650:
	line	784
	
l3812:	
;main.c: 783: {
;main.c: 784: showLed1 = 0x10;
	movlw	low(010h)
	movwf	(_showLed1)
	goto	l3796
	line	787
	
l3816:	
;main.c: 787: else if(zeroStep == 5)
		movlw	5
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l3822
u2660:
	line	789
	
l3818:	
;main.c: 788: {
;main.c: 789: showLed1 = 0x00;
	clrf	(_showLed1)
	line	790
	
l3820:	
;main.c: 790: showLed2 = 0x01;
	clrf	(_showLed2)
	incf	(_showLed2),f
	line	791
;main.c: 791: }
	goto	l1398
	line	792
	
l3822:	
;main.c: 792: else if(zeroStep == 6)
		movlw	6
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l3828
u2670:
	line	794
	
l3824:	
;main.c: 793: {
;main.c: 794: showLed1 = 0x00;
	clrf	(_showLed1)
	line	795
	
l3826:	
;main.c: 795: showLed2 = 0x02;
	movlw	low(02h)
	movwf	(_showLed2)
	line	796
;main.c: 796: }
	goto	l1398
	line	797
	
l3828:	
;main.c: 797: else if(zeroStep == 7)
		movlw	7
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l3834
u2680:
	line	799
	
l3830:	
;main.c: 798: {
;main.c: 799: showLed1 = 0x00;
	clrf	(_showLed1)
	line	800
	
l3832:	
;main.c: 800: showLed2 = 0x04;
	movlw	low(04h)
	movwf	(_showLed2)
	line	801
;main.c: 801: }
	goto	l1398
	line	802
	
l3834:	
;main.c: 802: else if(zeroStep == 8)
		movlw	8
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l3840
u2690:
	line	804
	
l3836:	
;main.c: 803: {
;main.c: 804: showLed1 = 0x00;
	clrf	(_showLed1)
	line	805
	
l3838:	
;main.c: 805: showLed2 = 0x08;
	movlw	low(08h)
	movwf	(_showLed2)
	line	806
;main.c: 806: }
	goto	l1398
	line	807
	
l3840:	
;main.c: 807: else if(zeroStep == 9)
		movlw	9
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l3846
u2700:
	line	809
	
l3842:	
;main.c: 808: {
;main.c: 809: showLed1 = 0x00;
	clrf	(_showLed1)
	line	810
	
l3844:	
;main.c: 810: showLed2 = 0x20;
	movlw	low(020h)
	movwf	(_showLed2)
	line	811
;main.c: 811: }
	goto	l1398
	line	812
	
l3846:	
;main.c: 812: else if(zeroStep == 10)
		movlw	10
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l3852
u2710:
	line	814
	
l3848:	
;main.c: 813: {
;main.c: 814: showLed1 = 0x00;
	clrf	(_showLed1)
	line	815
	
l3850:	
;main.c: 815: showLed2 = 0x40;
	movlw	low(040h)
	movwf	(_showLed2)
	line	816
;main.c: 816: }
	goto	l1398
	line	817
	
l3852:	
;main.c: 817: else if(zeroStep == 11)
		movlw	11
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l3858
u2720:
	line	819
	
l3854:	
;main.c: 818: {
;main.c: 819: showLed1 = 0x00;
	clrf	(_showLed1)
	line	820
	
l3856:	
;main.c: 820: showLed2 = 0x80;
	movlw	low(080h)
	movwf	(_showLed2)
	line	821
;main.c: 821: }
	goto	l1398
	line	822
	
l3858:	
;main.c: 822: else if(zeroStep == 12)
		movlw	12
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l1392
u2730:
	line	824
	
l3860:	
;main.c: 823: {
;main.c: 824: showLed1 = 0x00;
	clrf	(_showLed1)
	line	825
	
l3862:	
;main.c: 825: showLed2 = 0x10;
	movlw	low(010h)
	movwf	(_showLed2)
	goto	l1398
	line	827
	
l1392:	
	
l1398:	
	return
	opt stack 0
GLOBAL	__end_of_setZeroStep2
	__end_of_setZeroStep2:
	signat	_setZeroStep2,89
	global	_setZeroStep

;; *************** function _setZeroStep *****************
;; Defined at:
;;		line 690 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_showCtr
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	690
global __ptext8
__ptext8:	;psect for function _setZeroStep
psect	text8
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	690
	global	__size_of_setZeroStep
	__size_of_setZeroStep	equ	__end_of_setZeroStep-_setZeroStep
	
_setZeroStep:	
;incstack = 0
	opt	stack 5
; Regs used in _setZeroStep: [wreg+status,2+status,0]
	line	692
	
l3726:	
;main.c: 692: if(zeroStep == 0)
	movf	((_zeroStep)),w
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l3730
u2480:
	line	694
	
l3728:	
;main.c: 693: {
;main.c: 694: showLed1 = 0x00;
	clrf	(_showLed1)
	line	695
;main.c: 695: showLed2 = 0x00;
	clrf	(_showLed2)
	line	696
;main.c: 696: }
	goto	l1370
	line	697
	
l3730:	
;main.c: 697: else if(zeroStep == 1)
		decf	((_zeroStep)),w
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l3736
u2490:
	line	699
	
l3732:	
;main.c: 698: {
;main.c: 699: showLed1 = 0xE1;
	movlw	low(0E1h)
	movwf	(_showLed1)
	line	700
	
l3734:	
;main.c: 700: showLed2 = 0x00;
	clrf	(_showLed2)
	line	701
;main.c: 701: }
	goto	l1370
	line	702
	
l3736:	
;main.c: 702: else if(zeroStep == 2)
		movlw	2
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l3742
u2500:
	line	704
	
l3738:	
;main.c: 703: {
;main.c: 704: showLed1 = 0xE3;
	movlw	low(0E3h)
	movwf	(_showLed1)
	goto	l3734
	line	707
	
l3742:	
;main.c: 707: else if(zeroStep == 3)
		movlw	3
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l3748
u2510:
	line	709
	
l3744:	
;main.c: 708: {
;main.c: 709: showLed1 = 0xE7;
	movlw	low(0E7h)
	movwf	(_showLed1)
	goto	l3734
	line	712
	
l3748:	
;main.c: 712: else if(zeroStep == 4)
		movlw	4
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l3754
u2520:
	line	714
	
l3750:	
;main.c: 713: {
;main.c: 714: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	goto	l3734
	line	717
	
l3754:	
;main.c: 717: else if(zeroStep == 5)
		movlw	5
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l3760
u2530:
	line	719
	
l3756:	
;main.c: 718: {
;main.c: 719: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	720
	
l3758:	
;main.c: 720: showLed2 = 0x01;
	clrf	(_showLed2)
	incf	(_showLed2),f
	line	721
;main.c: 721: }
	goto	l1370
	line	722
	
l3760:	
;main.c: 722: else if(zeroStep == 6)
		movlw	6
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l3764
u2540:
	line	724
	
l3762:	
;main.c: 723: {
;main.c: 724: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	725
;main.c: 725: showLed2 = 0x03;
	movlw	low(03h)
	movwf	(_showLed2)
	line	726
;main.c: 726: }
	goto	l1370
	line	727
	
l3764:	
;main.c: 727: else if(zeroStep == 7)
		movlw	7
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l3768
u2550:
	line	729
	
l3766:	
;main.c: 728: {
;main.c: 729: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	730
;main.c: 730: showLed2 = 0x07;
	movlw	low(07h)
	movwf	(_showLed2)
	line	731
;main.c: 731: }
	goto	l1370
	line	732
	
l3768:	
;main.c: 732: else if(zeroStep == 8)
		movlw	8
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l3772
u2560:
	line	734
	
l3770:	
;main.c: 733: {
;main.c: 734: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	735
;main.c: 735: showLed2 = 0x0F;
	movlw	low(0Fh)
	movwf	(_showLed2)
	line	736
;main.c: 736: }
	goto	l1370
	line	737
	
l3772:	
;main.c: 737: else if(zeroStep == 9)
		movlw	9
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l3776
u2570:
	line	739
	
l3774:	
;main.c: 738: {
;main.c: 739: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	740
;main.c: 740: showLed2 = 0x2F;
	movlw	low(02Fh)
	movwf	(_showLed2)
	line	741
;main.c: 741: }
	goto	l1370
	line	742
	
l3776:	
;main.c: 742: else if(zeroStep == 10)
		movlw	10
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l3780
u2580:
	line	744
	
l3778:	
;main.c: 743: {
;main.c: 744: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	745
;main.c: 745: showLed2 = 0x6F;
	movlw	low(06Fh)
	movwf	(_showLed2)
	line	746
;main.c: 746: }
	goto	l1370
	line	747
	
l3780:	
;main.c: 747: else if(zeroStep == 11)
		movlw	11
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l3784
u2590:
	line	749
	
l3782:	
;main.c: 748: {
;main.c: 749: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	750
;main.c: 750: showLed2 = 0xEF;
	movlw	low(0EFh)
	movwf	(_showLed2)
	line	751
;main.c: 751: }
	goto	l1370
	line	752
	
l3784:	
;main.c: 752: else if(zeroStep == 12)
		movlw	12
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l1364
u2600:
	goto	l3782
	line	757
	
l1364:	
	
l1370:	
	return
	opt stack 0
GLOBAL	__end_of_setZeroStep
	__end_of_setZeroStep:
	signat	_setZeroStep,89
	global	_initTM1650

;; *************** function _initTM1650 *****************
;; Defined at:
;;		line 641 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_tm1650cmd
;; This function is called by:
;;		_showCtr
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	641
global __ptext9
__ptext9:	;psect for function _initTM1650
psect	text9
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	641
	global	__size_of_initTM1650
	__size_of_initTM1650	equ	__end_of_initTM1650-_initTM1650
	
_initTM1650:	
;incstack = 0
	opt	stack 3
; Regs used in _initTM1650: [wreg+status,2+status,0+pclath+cstack]
	line	643
	
l3708:	
;main.c: 643: tm1650cmd(0X48,0x11);
	movlw	low(011h)
	movwf	(tm1650cmd@seg_data)
	movlw	low(048h)
	fcall	_tm1650cmd
	line	644
# 644 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 644 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 644 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 644 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 644 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 644 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text9
	line	645
;main.c: 645: tm1650cmd(0X68,0xFF);
	movlw	low(0FFh)
	movwf	(tm1650cmd@seg_data)
	movlw	low(068h)
	fcall	_tm1650cmd
	line	646
# 646 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 646 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 646 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 646 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 646 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 646 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text9
	line	647
;main.c: 647: tm1650cmd(0X6A,0xFF);
	movlw	low(0FFh)
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Ah)
	fcall	_tm1650cmd
	line	648
# 648 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 648 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 648 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 648 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 648 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 648 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text9
	line	649
;main.c: 649: tm1650cmd(0X6C,0xFF);
	movlw	low(0FFh)
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Ch)
	fcall	_tm1650cmd
	line	650
# 650 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 650 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 650 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 650 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 650 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 650 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text9
	line	651
;main.c: 651: tm1650cmd(0X6E,0xFF);
	movlw	low(0FFh)
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Eh)
	fcall	_tm1650cmd
	line	654
	
l1336:	
	return
	opt stack 0
GLOBAL	__end_of_initTM1650
	__end_of_initTM1650:
	signat	_initTM1650,89
	global	_tm1650cmd

;; *************** function _tm1650cmd *****************
;; Defined at:
;;		line 632 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
;; Parameters:    Size  Location     Type
;;  digAddr         1    wreg     unsigned char 
;;  seg_data        1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  digAddr         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_TM1650_START
;;		_TM1650_STOP
;;		_write_8bit
;; This function is called by:
;;		_initTM1650
;;		_refreshTM1650
;;		_showCtr
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	632
global __ptext10
__ptext10:	;psect for function _tm1650cmd
psect	text10
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	632
	global	__size_of_tm1650cmd
	__size_of_tm1650cmd	equ	__end_of_tm1650cmd-_tm1650cmd
	
_tm1650cmd:	
;incstack = 0
	opt	stack 3
; Regs used in _tm1650cmd: [wreg+status,2+status,0+pclath+cstack]
;tm1650cmd@digAddr stored from wreg
	movwf	(tm1650cmd@digAddr)
	line	634
	
l3588:	
;main.c: 634: TM1650_START();
	fcall	_TM1650_START
	line	635
	
l3590:	
;main.c: 635: write_8bit(digAddr);
	movf	(tm1650cmd@digAddr),w
	fcall	_write_8bit
	line	636
	
l3592:	
;main.c: 636: write_8bit(seg_data);
	movf	(tm1650cmd@seg_data),w
	fcall	_write_8bit
	line	637
;main.c: 637: TM1650_STOP();
	fcall	_TM1650_STOP
	line	638
	
l1333:	
	return
	opt stack 0
GLOBAL	__end_of_tm1650cmd
	__end_of_tm1650cmd:
	signat	_tm1650cmd,8313
	global	_write_8bit

;; *************** function _write_8bit *****************
;; Defined at:
;;		line 530 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    2[COMMON] unsigned char 
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/300
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_tm1650cmd
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	530
global __ptext11
__ptext11:	;psect for function _write_8bit
psect	text11
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	530
	global	__size_of_write_8bit
	__size_of_write_8bit	equ	__end_of_write_8bit-_write_8bit
	
_write_8bit:	
;incstack = 0
	opt	stack 3
; Regs used in _write_8bit: [wreg+status,2+status,0]
;write_8bit@dat stored from wreg
	movwf	(write_8bit@dat)
	line	533
	
l3366:	
;main.c: 532: unsigned char i;
;main.c: 533: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	534
	
l3368:	
;main.c: 534: for(i=0;i<8;i++)
	clrf	(write_8bit@i)
	line	535
	
l1317:	
	line	536
;main.c: 535: {
;main.c: 536: if(dat&0x80)
	btfss	(write_8bit@dat),(7)&7
	goto	u2111
	goto	u2110
u2111:
	goto	l1319
u2110:
	line	538
	
l3374:	
;main.c: 537: {
;main.c: 538: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	539
# 539 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 539 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 539 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 539 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 539 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 539 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	540
# 540 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 540 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 540 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 540 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 540 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 540 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text11
	line	541
;main.c: 541: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	542
# 542 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 542 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 542 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 542 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 542 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 542 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	543
# 543 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 543 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 543 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 543 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 543 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 543 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	544
# 544 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 544 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 544 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 544 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 544 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 544 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	545
# 545 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 545 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 545 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 545 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 545 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 545 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	546
# 546 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 546 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 546 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 546 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 546 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 546 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text11
	line	547
;main.c: 547: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	548
;main.c: 548: }
	goto	l1320
	line	549
	
l1319:	
	line	551
;main.c: 549: else
;main.c: 550: {
;main.c: 551: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	552
# 552 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 552 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 552 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 552 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 552 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 552 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	553
# 553 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 553 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 553 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 553 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 553 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 553 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text11
	line	554
;main.c: 554: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	555
# 555 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 555 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 555 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 555 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 555 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 555 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	556
# 556 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 556 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 556 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 556 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 556 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 556 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	557
# 557 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 557 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 557 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 557 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 557 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 557 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	558
# 558 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 558 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 558 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 558 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 558 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 558 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	559
# 559 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 559 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 559 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 559 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 559 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 559 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text11
	line	560
;main.c: 560: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	561
	
l1320:	
	line	562
;main.c: 561: }
;main.c: 562: dat<<=1;
	clrc
	rlf	(write_8bit@dat),f
	line	534
	
l3376:	
	incf	(write_8bit@i),f
	
l3378:	
	movlw	low(08h)
	subwf	(write_8bit@i),w
	skipc
	goto	u2121
	goto	u2120
u2121:
	goto	l1317
u2120:
	
l1318:	
	line	564
;main.c: 563: }
;main.c: 564: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	565
# 565 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 565 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 565 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 565 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 565 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 565 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	566
# 566 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 566 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 566 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 566 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 566 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 566 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	567
# 567 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 567 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 567 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 567 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 567 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 567 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	568
# 568 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 568 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 568 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 568 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 568 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 568 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text11
	line	569
;main.c: 569: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	570
# 570 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 570 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 570 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 570 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 570 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 570 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	571
# 571 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 571 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 571 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 571 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 571 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 571 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	572
# 572 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 572 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 572 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 572 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 572 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 572 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	573
# 573 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 573 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 573 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 573 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 573 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 573 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	574
# 574 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 574 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 574 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 574 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 574 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 574 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text11
	line	575
;main.c: 575: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	576
# 576 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 576 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 576 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 576 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 576 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 576 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	577
# 577 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 577 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 577 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 577 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 577 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 577 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text11
	line	578
	
l1321:	
	return
	opt stack 0
GLOBAL	__end_of_write_8bit
	__end_of_write_8bit:
	signat	_write_8bit,4217
	global	_TM1650_STOP

;; *************** function _TM1650_STOP *****************
;; Defined at:
;;		line 516 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/300
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_tm1650cmd
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	516
global __ptext12
__ptext12:	;psect for function _TM1650_STOP
psect	text12
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	516
	global	__size_of_TM1650_STOP
	__size_of_TM1650_STOP	equ	__end_of_TM1650_STOP-_TM1650_STOP
	
_TM1650_STOP:	
;incstack = 0
	opt	stack 3
; Regs used in _TM1650_STOP: []
	line	518
	
l3364:	
;main.c: 518: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	519
# 519 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 519 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 519 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 519 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 519 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 519 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text12
	line	520
;main.c: 520: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	521
# 521 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 521 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 521 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 521 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 521 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 521 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text12
	line	522
;main.c: 522: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	523
# 523 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 523 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 523 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 523 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 523 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 523 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text12
	line	524
;main.c: 524: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	525
;main.c: 525: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	526
	
l1314:	
	return
	opt stack 0
GLOBAL	__end_of_TM1650_STOP
	__end_of_TM1650_STOP:
	signat	_TM1650_STOP,89
	global	_TM1650_START

;; *************** function _TM1650_START *****************
;; Defined at:
;;		line 505 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/300
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_tm1650cmd
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	505
global __ptext13
__ptext13:	;psect for function _TM1650_START
psect	text13
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	505
	global	__size_of_TM1650_START
	__size_of_TM1650_START	equ	__end_of_TM1650_START-_TM1650_START
	
_TM1650_START:	
;incstack = 0
	opt	stack 3
; Regs used in _TM1650_START: []
	line	507
	
l3362:	
;main.c: 507: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	508
;main.c: 508: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	509
# 509 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 509 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 509 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 509 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 509 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 509 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text13
	line	510
;main.c: 510: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	511
# 511 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 511 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 511 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 511 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 511 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 511 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text13
	line	512
;main.c: 512: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	513
	
l1311:	
	return
	opt stack 0
GLOBAL	__end_of_TM1650_START
	__end_of_TM1650_START:
	signat	_TM1650_START,89
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_showCtr
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
	
l4072:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l4088
u3120:
	line	14
	
l4074:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l4078
	line	16
	
l4076:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l4078:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3131
	goto	u3130
u3131:
	goto	l4076
u3130:
	line	20
	
l4080:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3145
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3145:
	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l4084
u3140:
	line	21
	
l4082:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l4084:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l4086:	
	decfsz	(___lwmod@counter),f
	goto	u3151
	goto	u3150
u3151:
	goto	l4080
u3150:
	line	25
	
l4088:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l2059:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_showCtr
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
global __ptext15
__ptext15:	;psect for function ___lbmod
psect	text15
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	movwf	(___lbmod@dividend)
	line	9
	
l4054:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l4056:	
	clrf	(___lbmod@rem)
	line	12
	
l4058:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3095:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3095
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l4060:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l4062:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l4066
u3100:
	line	15
	
l4064:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l4066:	
	decfsz	(___lbmod@counter),f
	goto	u3111
	goto	u3110
u3111:
	goto	l4058
u3110:
	line	17
	
l4068:	
	movf	(___lbmod@rem),w
	line	18
	
l1981:	
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_showCtr
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
global __ptext16
__ptext16:	;psect for function ___lbdiv
psect	text16
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	movwf	(___lbdiv@dividend)
	line	9
	
l4030:	
	clrf	(___lbdiv@quotient)
	line	10
	
l4032:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l4050
u3050:
	line	11
	
l4034:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l4038
	
l1970:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l4036:	
	incf	(___lbdiv@counter),f
	line	12
	
l4038:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l1970
u3060:
	line	16
	
l1972:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l4040:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l4046
u3070:
	line	19
	
l4042:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l4044:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l4046:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l4048:	
	decfsz	(___lbdiv@counter),f
	goto	u3081
	goto	u3080
u3081:
	goto	l1972
u3080:
	line	25
	
l4050:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1975:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_WorkSleep

;; *************** function _WorkSleep *****************
;; Defined at:
;;		line 437 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Init_System
;;		_Refurbish_Sfr
;;		_SystemEnterSleep
;; This function is called by:
;;		_showCtr
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	437
global __ptext17
__ptext17:	;psect for function _WorkSleep
psect	text17
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	437
	global	__size_of_WorkSleep
	__size_of_WorkSleep	equ	__end_of_WorkSleep-_WorkSleep
	
_WorkSleep:	
;incstack = 0
	opt	stack 2
; Regs used in _WorkSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	443
	
l3666:	
	line	449
	
l3668:	
;main.c: 449: INTCON = 0;
	clrf	(11)	;volatile
	line	450
;main.c: 450: PIE1 = 0;
	clrf	(13)	;volatile
	line	451
;main.c: 451: PIE2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(264)^0100h	;volatile
	line	452
;main.c: 452: PIR1 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(12)	;volatile
	line	453
;main.c: 453: PIR2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(263)^0100h	;volatile
	line	454
;main.c: 454: T2CON = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(18)	;volatile
	line	455
;main.c: 455: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(156)^080h	;volatile
	line	456
	
l3670:	
;main.c: 456: SWDTEN = 0;
	bcf	(1089/8)^080h,(1089)&7	;volatile
	line	457
# 457 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
clrwdt ;# 
psect	text17
	line	459
;main.c: 459: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(157)^080h	;volatile
	line	462
	
l3672:	
;main.c: 462: TRISA = 0x22;
	movlw	low(022h)
	movwf	(133)^080h	;volatile
	line	463
	
l3674:	
;main.c: 463: PORTA = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	464
;main.c: 464: TRISB = 0x18;
	movlw	low(018h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	465
	
l3676:	
;main.c: 465: TRISC = 0x00;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(390)^0180h	;volatile
	line	466
	
l3678:	
;main.c: 466: PORTC = 0x01;
	movlw	low(01h)
	movwf	(389)^0180h	;volatile
	line	467
	
l3680:	
;main.c: 467: PORTB = 0x80;
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	468
	
l3682:	
;main.c: 468: RACIF = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2105/8)^0100h,(2105)&7	;volatile
	line	469
	
l3684:	
;main.c: 469: IOCA = 0x20;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank3
	movwf	(392)^0180h	;volatile
	line	470
	
l3686:	
;main.c: 470: RACIE = 1;
	bcf	status, 5	;RP0=0, select bank2
	bsf	(2113/8)^0100h,(2113)&7	;volatile
	line	471
	
l3688:	
;main.c: 471: PORTA;
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	line	483
	
l3690:	
;main.c: 483: SystemEnterSleep();
	fcall	_SystemEnterSleep
	line	484
# 484 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 484 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 484 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 484 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 484 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 484 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text17
	line	485
	
l3692:	
;main.c: 485: if(RACIF)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2105/8)^0100h,(2105)&7	;volatile
	goto	u2441
	goto	u2440
u2441:
	goto	l3698
u2440:
	line	487
	
l3694:	
;main.c: 486: {
;main.c: 487: RACIF = 0;
	bcf	(2105/8)^0100h,(2105)&7	;volatile
	line	488
	
l3696:	
;main.c: 488: PORTA;
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	line	490
	
l3698:	
;main.c: 489: }
;main.c: 490: if(RCCIF)
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2106/8)^0100h,(2106)&7	;volatile
	goto	u2451
	goto	u2450
u2451:
	goto	l3704
u2450:
	line	492
	
l3700:	
;main.c: 491: {
;main.c: 492: RCCIF = 0;
	bcf	(2106/8)^0100h,(2106)&7	;volatile
	line	493
	
l3702:	
;main.c: 493: PORTC;
	bsf	status, 5	;RP0=1, select bank3
	movf	(389)^0180h,w	;volatile
	line	496
	
l3704:	
;main.c: 494: }
;main.c: 496: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	497
	
l3706:	
;main.c: 497: Init_System();
	fcall	_Init_System
	line	500
	
l1308:	
	return
	opt stack 0
GLOBAL	__end_of_WorkSleep
	__end_of_WorkSleep:
	signat	_WorkSleep,89
	global	_SystemEnterSleep

;; *************** function _SystemEnterSleep *****************
;; Defined at:
;;		line 578 in file "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wake            2    4[BANK0 ] unsigned int 
;;  KeyResTemp      2    2[BANK0 ] unsigned int 
;;  KeyValue        2    0[BANK0 ] unsigned int 
;;  cnt             1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       7       0       0       0
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
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	578
global __ptext18
__ptext18:	;psect for function _SystemEnterSleep
psect	text18
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	578
	global	__size_of_SystemEnterSleep
	__size_of_SystemEnterSleep	equ	__end_of_SystemEnterSleep-_SystemEnterSleep
	
_SystemEnterSleep:	
;incstack = 0
	opt	stack 2
; Regs used in _SystemEnterSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	588
;CheckTouchKey.c: 587: {
;CheckTouchKey.c: 588: while(1)
	
l1691:	
	line	592
# 592 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
clrwdt ;# 
psect	text18
	line	593
	
l3506:	
;CheckTouchKey.c: 593: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	594
	
l3508:	
;CheckTouchKey.c: 594: OPTION_REG |= 0x07;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(129)^080h,f	;volatile
	line	596
	
l3510:	
;CheckTouchKey.c: 596: OPTION_REG |= 0x08;
	bsf	(129)^080h+(3/8),(3)&7	;volatile
	line	597
# 597 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
clrwdt ;# 
psect	text18
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\TouchKeyConst.h"
	line	5
	
l3512:	
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	600
# 600 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
clrwdt ;# 
psect	text18
	line	602
	
l3514:	
;CheckTouchKey.c: 602: KEYCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(146)^080h	;volatile
	line	603
	
l3516:	
;CheckTouchKey.c: 603: KEYCON2 = 0;
	clrf	(151)^080h	;volatile
	line	605
	
l3518:	
;CheckTouchKey.c: 605: OSCCON = 0x1;
	movlw	low(01h)
	movwf	(136)^080h	;volatile
	line	606
# 606 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
sleep ;# 
	line	607
# 607 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
nop ;# 
	line	608
# 608 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
clrwdt ;# 
psect	text18
	line	609
	
l3520:	
;CheckTouchKey.c: 609: OSCCON = 0x71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	613
	
l3522:	
;CheckTouchKey.c: 613: ClearResSum();
	fcall	_ClearResSum
	line	614
	
l3524:	
;CheckTouchKey.c: 614: b_ksleep = 1;
	bsf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	line	615
	
l3526:	
;CheckTouchKey.c: 615: GetTouchKeyValue();
	fcall	_GetTouchKeyValue
	line	617
	
l3528:	
;CheckTouchKey.c: 617: cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SystemEnterSleep@cnt)
	line	618
	
l3530:	
;CheckTouchKey.c: 618: wake = 1;
	clrf	(SystemEnterSleep@wake)
	incf	(SystemEnterSleep@wake),f
	clrf	(SystemEnterSleep@wake+1)
	line	619
	
l3532:	
;CheckTouchKey.c: 619: if( RBIF || RCCIF || RACIF)
	btfsc	(88/8),(88)&7	;volatile
	goto	u2261
	goto	u2260
u2261:
	goto	l3538
u2260:
	
l3534:	
	bsf	status, 6	;RP1=1, select bank2
	btfsc	(2106/8)^0100h,(2106)&7	;volatile
	goto	u2271
	goto	u2270
u2271:
	goto	l3538
u2270:
	
l3536:	
	btfss	(2105/8)^0100h,(2105)&7	;volatile
	goto	u2281
	goto	u2280
u2281:
	goto	l3550
u2280:
	line	621
	
l3538:	
;CheckTouchKey.c: 620: {
;CheckTouchKey.c: 621: ClearResSum();
	fcall	_ClearResSum
	line	622
	
l3540:	
;CheckTouchKey.c: 622: KeyCounter = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	line	623
	
l3542:	
;CheckTouchKey.c: 623: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	624
	
l3544:	
;CheckTouchKey.c: 624: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	l1695
	line	630
	
l3550:	
	bcf	status, 6	;RP1=0, select bank0
	movf	(SystemEnterSleep@wake),w
	andlw	07h
	btfsc	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l3584
u2290:
	line	633
	
l3552:	
;CheckTouchKey.c: 631: {
;CheckTouchKey.c: 633: KeyValue = KeyResTemp = KeyResSum[cnt];
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(SystemEnterSleep@KeyResTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(SystemEnterSleep@KeyResTemp+1)
	movf	((SystemEnterSleep@KeyResTemp+1)),w
	movwf	(SystemEnterSleep@KeyValue+1)
	movf	((SystemEnterSleep@KeyResTemp)),w
	movwf	(SystemEnterSleep@KeyValue)
	line	634
	
l3554:	
;CheckTouchKey.c: 634: if(KeyResTemp)
	movf	((SystemEnterSleep@KeyResTemp)),w
iorwf	((SystemEnterSleep@KeyResTemp+1)),w
	btfsc	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l3584
u2300:
	line	636
	
l3556:	
;CheckTouchKey.c: 635: {
;CheckTouchKey.c: 636: KeyValue += Table_KeyDown[cnt];
	movf	(SystemEnterSleep@cnt),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addwf	(SystemEnterSleep@KeyValue),f
	skipnc
	incf	(SystemEnterSleep@KeyValue+1),f
	line	638
	
l3558:	
;CheckTouchKey.c: 638: if(KeyOldValue2[cnt] >= KeyValue)
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+1
	movf	(SystemEnterSleep@KeyValue+1),w
	subwf	1+(??_SystemEnterSleep+0)+0,w
	skipz
	goto	u2315
	movf	(SystemEnterSleep@KeyValue),w
	subwf	0+(??_SystemEnterSleep+0)+0,w
u2315:
	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l3582
u2310:
	line	640
	
l3560:	
;CheckTouchKey.c: 639: {
;CheckTouchKey.c: 640: cnt = 0;
	clrf	(SystemEnterSleep@cnt)
	line	641
	
l3562:	
;CheckTouchKey.c: 641: wake = 1;
	clrf	(SystemEnterSleep@wake)
	incf	(SystemEnterSleep@wake),f
	clrf	(SystemEnterSleep@wake+1)
	line	644
	
l3564:	
	movf	(SystemEnterSleep@wake),w
	andlw	07h
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l3568
u2320:
	line	646
	
l3566:	
;CheckTouchKey.c: 645: {
;CheckTouchKey.c: 646: KeyClearOne(cnt);
	movf	(SystemEnterSleep@cnt),w
	fcall	_KeyClearOne
	line	648
	
l3568:	
;CheckTouchKey.c: 647: }
;CheckTouchKey.c: 648: wake <<= 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(SystemEnterSleep@wake),f
	rlf	(SystemEnterSleep@wake+1),f
	line	649
	
l3570:	
	movlw	low(03h)
	incf	(SystemEnterSleep@cnt),f
	subwf	((SystemEnterSleep@cnt)),w
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l3564
u2330:
	goto	l3538
	line	658
	
l3582:	
;CheckTouchKey.c: 656: }
;CheckTouchKey.c: 658: KeyOldValue2[cnt] = KeyOldValue1[cnt];
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+1
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_SystemEnterSleep+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_SystemEnterSleep+0)+0,w
	movwf	indf
	line	659
;CheckTouchKey.c: 659: KeyOldValue1[cnt] = KeyOldValue0[cnt];
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_SystemEnterSleep+0)+0+1
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_SystemEnterSleep+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_SystemEnterSleep+0)+0,w
	movwf	indf
	line	660
;CheckTouchKey.c: 660: KeyOldValue0[cnt] = KeyResTemp;
	clrc
	rlf	(SystemEnterSleep@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(SystemEnterSleep@KeyResTemp),w
	movwf	indf
	incf	fsr0,f
	movf	(SystemEnterSleep@KeyResTemp+1),w
	movwf	indf
	line	663
	
l3584:	
;CheckTouchKey.c: 661: }
;CheckTouchKey.c: 662: }
;CheckTouchKey.c: 663: wake <<= 1;
	clrc
	rlf	(SystemEnterSleep@wake),f
	rlf	(SystemEnterSleep@wake+1),f
	line	664
	
l3586:	
	movlw	low(03h)
	incf	(SystemEnterSleep@cnt),f
	subwf	((SystemEnterSleep@cnt)),w
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l3550
u2340:
	goto	l1691
	line	667
	
l1695:	
	return
	opt stack 0
GLOBAL	__end_of_SystemEnterSleep
	__end_of_SystemEnterSleep:
	signat	_SystemEnterSleep,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 122 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
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
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	122
global __ptext19
__ptext19:	;psect for function _Refurbish_Sfr
psect	text19
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	122
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 4
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	124
	
l3466:	
;main.c: 124: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(13)	;volatile
	line	125
;main.c: 125: PR2 = 250;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	126
;main.c: 126: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	127
	
l3468:	
;main.c: 127: if (4 != T2CON)
		movlw	4
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((18)),w	;volatile
	btfsc	status,2
	goto	u2191
	goto	u2190
u2191:
	goto	l1209
u2190:
	line	128
	
l3470:	
;main.c: 128: T2CON = 4;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	129
	
l1209:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 81 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
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
	line	81
global __ptext20
__ptext20:	;psect for function _Init_System
psect	text20
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	81
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	83
	
l3434:	
# 83 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	84
# 84 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
clrwdt ;# 
psect	text20
	line	85
	
l3436:	
;main.c: 85: INTCON = 0;
	clrf	(11)	;volatile
	line	86
	
l3438:	
;main.c: 86: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	87
	
l3440:	
;main.c: 87: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	88
	
l3442:	
;main.c: 88: SWDTEN = 1;
	bsf	(1089/8)^080h,(1089)&7	;volatile
	line	89
# 89 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
clrwdt ;# 
psect	text20
	line	93
;main.c: 93: TRISA = 0x22;
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	94
	
l3444:	
;main.c: 94: PORTA = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	95
	
l3446:	
;main.c: 95: TRISB = 0x18;
	movlw	low(018h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	96
;main.c: 96: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	97
;main.c: 97: WPUB = 0x00;
	clrf	(8)	;volatile
	line	98
;main.c: 98: TRISC = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(390)^0180h	;volatile
	line	99
;main.c: 99: PORTC = 0;
	clrf	(389)^0180h	;volatile
	line	100
;main.c: 100: WPUC = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	clrf	(277)^0100h	;volatile
	line	101
	
l3448:	
;main.c: 101: ANSEL0 = 0x01;
	movlw	low(01h)
	movwf	(272)^0100h	;volatile
	line	102
	
l3450:	
;main.c: 102: ANSEL1 = 0x06;
	movlw	low(06h)
	movwf	(273)^0100h	;volatile
	line	103
	
l3452:	
;main.c: 103: ANSEL2 = 0x01;
	movlw	low(01h)
	movwf	(274)^0100h	;volatile
	line	105
	
l3454:	
;main.c: 105: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(13)	;volatile
	line	106
	
l3456:	
;main.c: 106: PR2 = 250;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	107
	
l3458:	
;main.c: 107: T2CON = 4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	109
	
l3460:	
;main.c: 109: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	110
	
l3462:	
;main.c: 110: ADCON0 = 0XC1;
	movlw	low(0C1h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(157)^080h	;volatile
	line	111
	
l3464:	
;main.c: 111: ADON = 1;
	bsf	(1256/8)^080h,(1256)&7	;volatile
	line	112
	
l1205:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 994 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_checkChrgAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	994
global __ptext21
__ptext21:	;psect for function _chrgCtr
psect	text21
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	994
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	996
	
l4462:	
;main.c: 996: if(0x20 & PORTA)
	btfss	(5),(5)&7	;volatile
	goto	u3961
	goto	u3960
u3961:
	goto	l4484
u3960:
	line	998
	
l4464:	
;main.c: 997: {
;main.c: 998: checkChrgAD();
	fcall	_checkChrgAD
	line	999
	
l4466:	
;main.c: 999: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	1000
	
l4468:	
;main.c: 1000: workStep = 0;
	clrf	(_workStep)
	line	1001
	
l4470:	
;main.c: 1001: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	1002
	
l4472:	
;main.c: 1002: ledLightTime = 0;
	clrf	(_ledLightTime)
	clrf	(_ledLightTime+1)
	line	1003
	
l4474:	
;main.c: 1003: if(batResult > 1555)
	movlw	06h
	subwf	(_batResult+1),w
	movlw	014h
	skipnz
	subwf	(_batResult),w
	skipc
	goto	u3971
	goto	u3970
u3971:
	goto	l4482
u3970:
	line	1005
	
l4476:	
;main.c: 1004: {
;main.c: 1005: if(++chrgFullTime > 2500)
	incf	(_chrgFullTime),f
	skipnz
	incf	(_chrgFullTime+1),f
	movlw	09h
	subwf	((_chrgFullTime+1)),w
	movlw	0C5h
	skipnz
	subwf	((_chrgFullTime)),w
	skipc
	goto	u3981
	goto	u3980
u3981:
	goto	l1452
u3980:
	line	1007
	
l4478:	
;main.c: 1006: {
;main.c: 1007: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	clrf	(_chrgFullTime+1)
	line	1008
	
l4480:	
;main.c: 1008: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l1452
	line	1013
	
l4482:	
;main.c: 1011: else
;main.c: 1012: {
;main.c: 1013: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	clrf	(_chrgFullTime+1)
	goto	l1452
	line	1018
	
l4484:	
;main.c: 1016: else
;main.c: 1017: {
;main.c: 1018: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l1451
u3990:
	line	1020
	
l4486:	
;main.c: 1019: {
;main.c: 1020: zeroStep = 0;
	clrf	(_zeroStep)
	line	1021
	
l1451:	
	line	1022
;main.c: 1021: }
;main.c: 1022: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	1023
;main.c: 1023: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	1024
;main.c: 1024: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	clrf	(_chrgFullTime+1)
	line	1025
;main.c: 1025: chrgDuty = 0;
	clrf	(_chrgDuty)
	line	1026
;main.c: 1026: chrgLockFlag = 0;
	clrf	(_chrgLockFlag)
	line	1028
	
l1452:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_checkChrgAD

;; *************** function _checkChrgAD *****************
;; Defined at:
;;		line 344 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Read_ADC
;; This function is called by:
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	344
global __ptext22
__ptext22:	;psect for function _checkChrgAD
psect	text22
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	344
	global	__size_of_checkChrgAD
	__size_of_checkChrgAD	equ	__end_of_checkChrgAD-_checkChrgAD
	
_checkChrgAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkChrgAD: [wreg+status,2+status,0+pclath+cstack]
	line	346
	
l3652:	
;main.c: 346: chrgResult = Read_ADC(16,1);
	clrf	(Read_ADC@ADCLDORef)
	incf	(Read_ADC@ADCLDORef),f
	movlw	low(010h)
	fcall	_Read_ADC
	movf	(1+(?_Read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_chrgResult+1)
	movf	(0+(?_Read_ADC)),w
	movwf	(_chrgResult)
	line	347
	
l1275:	
	return
	opt stack 0
GLOBAL	__end_of_checkChrgAD
	__end_of_checkChrgAD:
	signat	_checkChrgAD,89
	global	_checkBat

;; *************** function _checkBat *****************
;; Defined at:
;;		line 369 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Read_ADC
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	369
global __ptext23
__ptext23:	;psect for function _checkBat
psect	text23
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	369
	global	__size_of_checkBat
	__size_of_checkBat	equ	__end_of_checkBat-_checkBat
	
_checkBat:	
;incstack = 0
	opt	stack 5
; Regs used in _checkBat: [wreg+status,2+status,0+pclath+cstack]
	line	371
	
l4652:	
;main.c: 371: batResult = Read_ADC(10,1);
	clrf	(Read_ADC@ADCLDORef)
	incf	(Read_ADC@ADCLDORef),f
	movlw	low(0Ah)
	fcall	_Read_ADC
	movf	(1+(?_Read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_batResult+1)
	movf	(0+(?_Read_ADC)),w
	movwf	(_batResult)
	line	372
	
l4654:	
;main.c: 372: if(batResult < 1118)
	movlw	04h
	subwf	(_batResult+1),w
	movlw	05Eh
	skipnz
	subwf	(_batResult),w
	skipnc
	goto	u4281
	goto	u4280
u4281:
	goto	l4670
u4280:
	line	374
	
l4656:	
;main.c: 373: {
;main.c: 374: batValue = 0;
	clrf	(_batValue)
	line	375
	
l4658:	
;main.c: 375: if(workStep > 0 && ++lowBatTime > 200)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4291
	goto	u4290
u4291:
	goto	l1290
u4290:
	
l4660:	
	movlw	low(0C9h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u4301
	goto	u4300
u4301:
	goto	l1290
u4300:
	line	377
	
l4662:	
;main.c: 376: {
;main.c: 377: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	378
	
l4664:	
;main.c: 378: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	379
;main.c: 379: workStep = 0;
	clrf	(_workStep)
	line	380
	
l4666:	
;main.c: 380: zeroStep = 12;
	movlw	low(0Ch)
	movwf	(_zeroStep)
	line	381
	
l4668:	
;main.c: 381: ledLightTime = 0;
	clrf	(_ledLightTime)
	clrf	(_ledLightTime+1)
	goto	l1290
	line	386
	
l4670:	
;main.c: 384: else
;main.c: 385: {
;main.c: 386: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	387
	
l4672:	
;main.c: 387: if(batResult >= 1376)
	movlw	05h
	subwf	(_batResult+1),w
	movlw	060h
	skipnz
	subwf	(_batResult),w
	skipc
	goto	u4311
	goto	u4310
u4311:
	goto	l4676
u4310:
	line	389
	
l4674:	
;main.c: 388: {
;main.c: 389: batValue = ((batResult - 1376) /2) + 16;
	movf	(_batResult),w
	addlw	low(0FAA0h)
	movwf	(??_checkBat+0)+0
	movf	(_batResult+1),w
	skipnc
	addlw	1
	addlw	high(0FAA0h)
	movwf	1+(??_checkBat+0)+0
	clrc
	rrf	(??_checkBat+0)+1,f
	rrf	(??_checkBat+0)+0,f
	movf	0+(??_checkBat+0)+0,w
	addlw	010h
	movwf	(_batValue)
	line	390
;main.c: 390: }
	goto	l4678
	line	393
	
l4676:	
;main.c: 391: else
;main.c: 392: {
;main.c: 393: batValue = (batResult - 1118) / 16;
	movf	(_batResult),w
	addlw	low(0FBA2h)
	movwf	(??_checkBat+0)+0
	movf	(_batResult+1),w
	skipnc
	addlw	1
	addlw	high(0FBA2h)
	movwf	1+(??_checkBat+0)+0
	movlw	04h
u4325:
	clrc
	rrf	(??_checkBat+0)+1,f
	rrf	(??_checkBat+0)+0,f
	addlw	-1
	skipz
	goto	u4325
	movf	0+(??_checkBat+0)+0,w
	movwf	(_batValue)
	line	396
	
l4678:	
;main.c: 394: }
;main.c: 396: if(batValue > 99)
	movlw	low(064h)
	subwf	(_batValue),w
	skipc
	goto	u4331
	goto	u4330
u4331:
	goto	l1290
u4330:
	line	397
	
l4680:	
;main.c: 397: batValue = 99;
	movlw	low(063h)
	movwf	(_batValue)
	line	399
	
l1290:	
	return
	opt stack 0
GLOBAL	__end_of_checkBat
	__end_of_checkBat:
	signat	_checkBat,89
	global	_Read_ADC

;; *************** function _Read_ADC *****************
;; Defined at:
;;		line 272 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
;; Parameters:    Size  Location     Type
;;  ADCchannel      1    wreg     unsigned char 
;;  ADCLDORef       1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ADCchannel      1    8[COMMON] unsigned char 
;;  Adc_Result      2    5[COMMON] unsigned int 
;;  Adc_ResultSu    2    0        unsigned int 
;;  i               1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkOutAD
;;		_checkChrgAD
;;		_checkTempAD
;;		_checkBat
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	272
global __ptext24
__ptext24:	;psect for function _Read_ADC
psect	text24
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	272
	global	__size_of_Read_ADC
	__size_of_Read_ADC	equ	__end_of_Read_ADC-_Read_ADC
	
_Read_ADC:	
;incstack = 0
	opt	stack 4
; Regs used in _Read_ADC: [wreg+status,2+status,0]
;Read_ADC@ADCchannel stored from wreg
	movwf	(Read_ADC@ADCchannel)
	line	276
	
l3472:	
;main.c: 276: unsigned char i=200;
	movlw	low(0C8h)
	movwf	(Read_ADC@i)
	line	278
	
l3474:	
;main.c: 278: if(ADCLDORef==0)
	movf	((Read_ADC@ADCLDORef)),w
	btfss	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l3478
u2200:
	line	280
	
l3476:	
;main.c: 279: {
;main.c: 280: ADCON1 = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(156)^080h	;volatile
	line	281
;main.c: 281: }
	goto	l3484
	line	282
	
l3478:	
;main.c: 282: else if(ADCLDORef==1)
		decf	((Read_ADC@ADCLDORef)),w
	btfss	status,2
	goto	u2211
	goto	u2210
u2211:
	goto	l3482
u2210:
	line	284
	
l3480:	
;main.c: 283: {
;main.c: 284: ADCON1 = 0B00000101;
	movlw	low(05h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	285
;main.c: 285: }
	goto	l3484
	line	288
	
l3482:	
;main.c: 286: else
;main.c: 287: {
;main.c: 288: ADCON1 = 0B00000110;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	291
	
l3484:	
;main.c: 289: }
;main.c: 291: CHS4 = 0;
	bcf	(1254/8)^080h,(1254)&7	;volatile
	line	292
;main.c: 292: if(ADCchannel >=16)
	movlw	low(010h)
	subwf	(Read_ADC@ADCchannel),w
	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l1257
u2220:
	line	294
	
l3486:	
;main.c: 293: {
;main.c: 294: ADCchannel -= 16;
	movlw	010h
	subwf	(Read_ADC@ADCchannel),f
	line	295
	
l3488:	
;main.c: 295: CHS4 = 1;
	bsf	(1254/8)^080h,(1254)&7	;volatile
	line	296
	
l1257:	
	line	298
;main.c: 296: }
;main.c: 298: ADCON0 &= 0b11000011;
	movlw	low(0C3h)
	andwf	(157)^080h,f	;volatile
	line	299
;main.c: 299: ADCON0 |= ADCchannel<<2;
	movf	(Read_ADC@ADCchannel),w
	movwf	(??_Read_ADC+0)+0
	movlw	(02h)-1
u2235:
	clrc
	rlf	(??_Read_ADC+0)+0,f
	addlw	-1
	skipz
	goto	u2235
	clrc
	rlf	(??_Read_ADC+0)+0,w
	iorwf	(157)^080h,f	;volatile
	line	300
# 300 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text24
	line	301
	
l3490:	
;main.c: 301: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	302
;main.c: 302: while(GODONE==1&&i>0)
	goto	l3494
	line	304
	
l3492:	
;main.c: 303: {
;main.c: 304: i--;
	decf	(Read_ADC@i),f
	line	305
# 305 "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text24
	line	302
	
l3494:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1257/8)^080h,(1257)&7	;volatile
	goto	u2241
	goto	u2240
u2241:
	goto	l3498
u2240:
	
l3496:	
	movf	((Read_ADC@i)),w
	btfss	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l3492
u2250:
	line	307
	
l3498:	
;main.c: 306: }
;main.c: 307: Adc_Result = ADRESH<<4;
	movf	(159)^080h,w	;volatile
	movwf	(Read_ADC@Adc_Result)
	clrf	(Read_ADC@Adc_Result+1)
	swapf	(Read_ADC@Adc_Result),f
	swapf	(Read_ADC@Adc_Result+1),f
	movlw	0f0h
	andwf	(Read_ADC@Adc_Result+1),f
	movf	(Read_ADC@Adc_Result),w
	andlw	0fh
	iorwf	(Read_ADC@Adc_Result+1),f
	movlw	0f0h
	andwf	(Read_ADC@Adc_Result),f
	line	308
	
l3500:	
;main.c: 308: Adc_Result += ADRESL>>4;
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	addwf	(Read_ADC@Adc_Result),f
	skipnc
	incf	(Read_ADC@Adc_Result+1),f
	line	309
	
l3502:	
;main.c: 309: return Adc_Result;
	movf	(Read_ADC@Adc_Result+1),w
	movwf	(?_Read_ADC+1)
	movf	(Read_ADC@Adc_Result),w
	movwf	(?_Read_ADC)
	line	311
	
l1263:	
	return
	opt stack 0
GLOBAL	__end_of_Read_ADC
	__end_of_Read_ADC:
	signat	_Read_ADC,8314
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 132 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	132
global __ptext25
__ptext25:	;psect for function _KeyServer
psect	text25
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	132
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 6
; Regs used in _KeyServer: [wreg+status,2+status,0]
	line	133
	
l4092:	
;main.c: 133: if(key1ProtectTime > 0)
	movf	((_key1ProtectTime)),w
	btfsc	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l4096
u3160:
	line	135
	
l4094:	
;main.c: 134: {
;main.c: 135: key1ProtectTime--;
	decf	(_key1ProtectTime),f
	line	137
	
l4096:	
;main.c: 136: }
;main.c: 137: if(key2ProtectTime > 0)
	movf	((_key2ProtectTime)),w
	btfsc	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l4100
u3170:
	line	139
	
l4098:	
;main.c: 138: {
;main.c: 139: key2ProtectTime--;
	decf	(_key2ProtectTime),f
	line	141
	
l4100:	
;main.c: 140: }
;main.c: 141: if(key3ProtectTime > 0)
	movf	((_key3ProtectTime)),w
	btfsc	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l4104
u3180:
	line	143
	
l4102:	
;main.c: 142: {
;main.c: 143: key3ProtectTime--;
	decf	(_key3ProtectTime),f
	line	146
	
l4104:	
;main.c: 147: NoTouchTime = 0;
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l4206
u3190:
	line	148
	
l4106:	
;main.c: 148: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	149
	
l4108:	
;main.c: 149: if ((KeyFlag[0] & 0x2) && key2ProtectTime == 0 && key3ProtectTime == 0) {
	btfss	(_KeyFlag),(1)&7	;volatile
	goto	u3201
	goto	u3200
u3201:
	goto	l4126
u3200:
	
l4110:	
	movf	((_key2ProtectTime)),w
	btfss	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l4126
u3210:
	
l4112:	
	movf	((_key3ProtectTime)),w
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l4126
u3220:
	line	151
	
l4114:	
;main.c: 151: key1ProtectTime = 5;
	movlw	low(05h)
	movwf	(_key1ProtectTime)
	line	152
	
l4116:	
;main.c: 152: if(++keyCount1 > 45)
	incf	(_keyCount1),f
	skipnz
	incf	(_keyCount1+1),f
	movlw	0
	subwf	((_keyCount1+1)),w
	movlw	02Eh
	skipnz
	subwf	((_keyCount1)),w
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l4126
u3230:
	line	154
	
l4118:	
;main.c: 153: {
;main.c: 154: keyCount1 = 45;
	movlw	02Dh
	movwf	(_keyCount1)
	clrf	(_keyCount1+1)
	line	155
;main.c: 155: if(workStep > 1 && ++count50 > 25)
	movlw	low(02h)
	subwf	(_workStep),w
	skipc
	goto	u3241
	goto	u3240
u3241:
	goto	l4126
u3240:
	
l4120:	
	movlw	low(01Ah)
	incf	(_count50),f
	subwf	((_count50)),w
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l4126
u3250:
	line	157
	
l4122:	
;main.c: 156: {
;main.c: 157: workStep--;
	decf	(_workStep),f
	line	158
	
l4124:	
;main.c: 158: count50 = 0;
	clrf	(_count50)
	line	162
	
l4126:	
;main.c: 159: }
;main.c: 160: }
;main.c: 161: }
;main.c: 162: if ((KeyFlag[0] & 0x1) && key1ProtectTime == 0 && key3ProtectTime == 0) {
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u3261
	goto	u3260
u3261:
	goto	l4152
u3260:
	
l4128:	
	movf	((_key1ProtectTime)),w
	btfss	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l4152
u3270:
	
l4130:	
	movf	((_key3ProtectTime)),w
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l4152
u3280:
	line	164
	
l4132:	
;main.c: 164: key2ProtectTime = 5;
	movlw	low(05h)
	movwf	(_key2ProtectTime)
	line	165
	
l4134:	
;main.c: 165: if(++keyCount2 > 45)
	incf	(_keyCount2),f
	skipnz
	incf	(_keyCount2+1),f
	movlw	0
	subwf	((_keyCount2+1)),w
	movlw	02Eh
	skipnz
	subwf	((_keyCount2)),w
	skipc
	goto	u3291
	goto	u3290
u3291:
	goto	l4152
u3290:
	line	167
	
l4136:	
;main.c: 166: {
;main.c: 167: keyCount2 = 45;
	movlw	02Dh
	movwf	(_keyCount2)
	clrf	(_keyCount2+1)
	line	168
;main.c: 168: if(workStep < 20 && (workStep > 0 || ledLightTime > 0) && ++count50 > 25)
	movlw	low(014h)
	subwf	(_workStep),w
	skipnc
	goto	u3301
	goto	u3300
u3301:
	goto	l4148
u3300:
	
l4138:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3311
	goto	u3310
u3311:
	goto	l4142
u3310:
	
l4140:	
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l4148
u3320:
	
l4142:	
	movlw	low(01Ah)
	incf	(_count50),f
	subwf	((_count50)),w
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l4148
u3330:
	line	170
	
l4144:	
;main.c: 169: {
;main.c: 170: workStep++;
	incf	(_workStep),f
	line	171
	
l4146:	
;main.c: 171: count50 = 0;
	clrf	(_count50)
	line	173
	
l4148:	
;main.c: 172: }
;main.c: 173: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l4152
u3340:
	line	175
	
l4150:	
;main.c: 174: {
;main.c: 175: startTime = 50;
	movlw	low(032h)
	movwf	(_startTime)
	line	179
	
l4152:	
;main.c: 176: }
;main.c: 177: }
;main.c: 178: }
;main.c: 179: if ((KeyFlag[0] & 0x4) && key2ProtectTime == 0 && key1ProtectTime == 0) {
	btfss	(_KeyFlag),(2)&7	;volatile
	goto	u3351
	goto	u3350
u3351:
	goto	l4204
u3350:
	
l4154:	
	movf	((_key2ProtectTime)),w
	btfss	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l4204
u3360:
	
l4156:	
	movf	((_key1ProtectTime)),w
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l4204
u3370:
	line	181
	
l4158:	
;main.c: 181: key3ProtectTime = 5;
	movlw	low(05h)
	movwf	(_key3ProtectTime)
	line	182
	
l4160:	
;main.c: 182: if(++keyCount3 > 200)
	incf	(_keyCount3),f
	skipnz
	incf	(_keyCount3+1),f
	movlw	0
	subwf	((_keyCount3+1)),w
	movlw	0C9h
	skipnz
	subwf	((_keyCount3)),w
	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l4192
u3380:
	line	184
	
l4162:	
;main.c: 183: {
;main.c: 184: keyCount3 = 200;
	movlw	0C8h
	movwf	(_keyCount3)
	clrf	(_keyCount3+1)
	line	185
	
l4164:	
;main.c: 185: if(longKeyFalg == 0)
	movf	((_longKeyFalg)),w
	btfss	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l4184
u3390:
	line	187
	
l4166:	
;main.c: 186: {
;main.c: 187: longKeyFalg = 1;
	clrf	(_longKeyFalg)
	incf	(_longKeyFalg),f
	line	188
	
l4168:	
;main.c: 188: if(workStep > 0 || ledLightTime > 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l4172
u3400:
	
l4170:	
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l4178
u3410:
	line	190
	
l4172:	
;main.c: 189: {
;main.c: 190: workStep = 0;
	clrf	(_workStep)
	line	191
	
l4174:	
;main.c: 191: zeroStep = 12;
	movlw	low(0Ch)
	movwf	(_zeroStep)
	line	192
	
l4176:	
;main.c: 192: ledLightTime = 0;
	clrf	(_ledLightTime)
	clrf	(_ledLightTime+1)
	line	193
;main.c: 193: }
	goto	l4192
	line	194
	
l4178:	
;main.c: 194: else if(lowBatFlag == 0)
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l4192
u3420:
	line	196
	
l4180:	
;main.c: 195: {
;main.c: 196: workStep = 0;
	clrf	(_workStep)
	line	197
;main.c: 197: zeroStep = 0;
	clrf	(_zeroStep)
	line	198
	
l4182:	
;main.c: 198: ledLightTime = 300;
	movlw	02Ch
	movwf	(_ledLightTime)
	movlw	01h
	movwf	((_ledLightTime))+1
	line	199
;main.c: 200: {
;main.c: 201: shanShuoTime = 250;
	goto	l4192
	line	205
	
l4184:	
;main.c: 205: else if(zeroStep > 0 && ++count64ms >= 12)
	movf	((_zeroStep)),w
	btfsc	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l4192
u3430:
	
l4186:	
	movlw	low(0Ch)
	incf	(_count64ms),f
	subwf	((_count64ms)),w
	skipc
	goto	u3441
	goto	u3440
u3441:
	goto	l4192
u3440:
	line	207
	
l4188:	
;main.c: 206: {
;main.c: 207: zeroStep--;
	decf	(_zeroStep),f
	line	208
	
l4190:	
;main.c: 208: count64ms = 0;
	clrf	(_count64ms)
	line	211
	
l4192:	
;main.c: 209: }
;main.c: 210: }
;main.c: 211: if(lowBatFlag == 0 && ledLightTime == 0 && longKeyFalg == 0 && keyCount3 % 16 == 0)
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l4204
u3450:
	
l4194:	
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l4204
u3460:
	
l4196:	
	movf	((_longKeyFalg)),w
	btfss	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l4204
u3470:
	
l4198:	
	movf	(_keyCount3),w
	andlw	0Fh
	btfss	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l4204
u3480:
	line	213
	
l4200:	
;main.c: 212: {
;main.c: 213: zeroStep++;
	incf	(_zeroStep),f
	line	214
	
l4202:	
;main.c: 214: preZero = zeroStep;
	movf	(_zeroStep),w
	movwf	(_preZero)
	line	217
	
l4204:	
;main.c: 215: }
;main.c: 216: }
;main.c: 217: keyCancelTime = 0;
	clrf	(_keyCancelTime)
	line	218
;main.c: 218: }
	goto	l1250
	line	221
	
l4206:	
;main.c: 219: else
;main.c: 220: {
;main.c: 221: if(++keyCancelTime > 5)
	movlw	low(06h)
	incf	(_keyCancelTime),f
	subwf	((_keyCancelTime)),w
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l4234
u3490:
	line	223
	
l4208:	
;main.c: 222: {
;main.c: 223: keyCancelTime = 0;
	clrf	(_keyCancelTime)
	line	224
	
l4210:	
;main.c: 224: if(keyCount1 > 5 && workStep > 1)
	movlw	0
	subwf	(_keyCount1+1),w
	movlw	06h
	skipnz
	subwf	(_keyCount1),w
	skipc
	goto	u3501
	goto	u3500
u3501:
	goto	l4216
u3500:
	
l4212:	
	movlw	low(02h)
	subwf	(_workStep),w
	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l4216
u3510:
	line	226
	
l4214:	
;main.c: 225: {
;main.c: 226: workStep--;
	decf	(_workStep),f
	line	228
	
l4216:	
;main.c: 227: }
;main.c: 228: keyCount1 = 0;
	clrf	(_keyCount1)
	clrf	(_keyCount1+1)
	line	230
	
l4218:	
;main.c: 230: if(keyCount2 > 5 && workStep < 20 && (workStep > 0 || ledLightTime > 0))
	movlw	0
	subwf	(_keyCount2+1),w
	movlw	06h
	skipnz
	subwf	(_keyCount2),w
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l4232
u3520:
	
l4220:	
	movlw	low(014h)
	subwf	(_workStep),w
	skipnc
	goto	u3531
	goto	u3530
u3531:
	goto	l4232
u3530:
	
l4222:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l4226
u3540:
	
l4224:	
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l4232
u3550:
	line	232
	
l4226:	
;main.c: 231: {
;main.c: 232: workStep++;
	incf	(_workStep),f
	line	233
	
l4228:	
;main.c: 233: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l4232
u3560:
	line	235
	
l4230:	
;main.c: 234: {
;main.c: 235: startTime = 50;
	movlw	low(032h)
	movwf	(_startTime)
	line	238
	
l4232:	
;main.c: 236: }
;main.c: 237: }
;main.c: 238: keyCount2 = 0;
	clrf	(_keyCount2)
	clrf	(_keyCount2+1)
	line	246
	
l4234:	
;main.c: 239: }
;main.c: 246: if(preZero == 1 || preZero == 2)
		decf	((_preZero)),w
	btfsc	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l4238
u3570:
	
l4236:	
		movlw	2
	xorwf	((_preZero)),w
	btfss	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l4242
u3580:
	line	248
	
l4238:	
;main.c: 247: {
;main.c: 248: preZero = 0;
	clrf	(_preZero)
	line	249
	
l4240:	
;main.c: 249: zeroStep = 3;
	movlw	low(03h)
	movwf	(_zeroStep)
	line	251
	
l4242:	
;main.c: 250: }
;main.c: 251: longKeyFalg = 0;
	clrf	(_longKeyFalg)
	line	252
	
l4244:	
;main.c: 252: keyCount3 = 0;
	clrf	(_keyCount3)
	clrf	(_keyCount3+1)
	line	253
	
l4246:	
;main.c: 253: if(zeroStep > 0 && ++count64ms >= 12)
	movf	((_zeroStep)),w
	btfsc	status,2
	goto	u3591
	goto	u3590
u3591:
	goto	l1250
u3590:
	
l4248:	
	movlw	low(0Ch)
	incf	(_count64ms),f
	subwf	((_count64ms)),w
	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l1250
u3600:
	line	255
	
l4250:	
;main.c: 254: {
;main.c: 255: zeroStep--;
	decf	(_zeroStep),f
	line	256
	
l4252:	
;main.c: 256: count64ms = 0;
	clrf	(_count64ms)
	line	259
	
l1250:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_CheckTouchKey

;; *************** function _CheckTouchKey *****************
;; Defined at:
;;		line 529 in file "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
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
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
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
psect	text26,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	529
global __ptext26
__ptext26:	;psect for function _CheckTouchKey
psect	text26
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	529
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 2
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	531
	
l4538:	
;CheckTouchKey.c: 531: if(!b_kover)
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u4131
	goto	u4130
u4131:
	goto	l1679
u4130:
	line	534
	
l4540:	
;CheckTouchKey.c: 532: {
;CheckTouchKey.c: 534: GetTouchKeyValue();
	fcall	_GetTouchKeyValue
	line	535
	
l4542:	
;CheckTouchKey.c: 535: if(++KeyCounter >= 8)
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u4141
	goto	u4140
u4141:
	goto	l4572
u4140:
	line	537
	
l4544:	
;CheckTouchKey.c: 536: {
;CheckTouchKey.c: 537: KeyCounter = 0;
	clrf	(_KeyCounter)
	line	538
	
l4546:	
;CheckTouchKey.c: 538: b_kover = 1;
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l4572
	line	541
	
l1679:	
;CheckTouchKey.c: 541: else if(!b_kover1)
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u4151
	goto	u4150
u4151:
	goto	l4566
u4150:
	line	544
	
l4548:	
;CheckTouchKey.c: 542: {
;CheckTouchKey.c: 544: CheckOnceResult();
	fcall	_CheckOnceResult
	line	547
;CheckTouchKey.c: 547: TurnKeyFlags();
	fcall	_TurnKeyFlags
	line	548
	
l4550:	
;CheckTouchKey.c: 548: b_kover1 = 1;
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	554
	
l4552:	
;CheckTouchKey.c: 554: if(b_kerr || KeyCounter > KeyValidNumber)
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u4161
	goto	u4160
u4161:
	goto	l4556
u4160:
	
l4554:	
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u4171
	goto	u4170
u4171:
	goto	l4564
u4170:
	line	556
	
l4556:	
;CheckTouchKey.c: 555: {
;CheckTouchKey.c: 556: KeyStopClear();
	fcall	_KeyStopClear
	line	557
	
l4558:	
;CheckTouchKey.c: 557: b_kerr = 0;
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	558
	
l4560:	
;CheckTouchKey.c: 558: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	559
	
l4562:	
;CheckTouchKey.c: 559: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	561
	
l4564:	
;CheckTouchKey.c: 560: }
;CheckTouchKey.c: 561: KeyCounter = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	line	562
;CheckTouchKey.c: 562: }
	goto	l4572
	line	566
	
l4566:	
;CheckTouchKey.c: 563: else
;CheckTouchKey.c: 564: {
;CheckTouchKey.c: 566: CheckKeyOldValue();
	fcall	_CheckKeyOldValue
	line	568
;CheckTouchKey.c: 568: ClearResSum();
	fcall	_ClearResSum
	line	570
	
l4568:	
;CheckTouchKey.c: 570: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	571
	
l4570:	
;CheckTouchKey.c: 571: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	574
	
l4572:	
;CheckTouchKey.c: 572: }
;CheckTouchKey.c: 574: CheckValidTime();
	fcall	_CheckValidTime
	line	575
	
l1687:	
	return
	opt stack 0
GLOBAL	__end_of_CheckTouchKey
	__end_of_CheckTouchKey:
	signat	_CheckTouchKey,89
	global	_TurnKeyFlags

;; *************** function _TurnKeyFlags *****************
;; Defined at:
;;		line 416 in file "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_KeyClearIn
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	line	416
global __ptext27
__ptext27:	;psect for function _TurnKeyFlags
psect	text27
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	416
	global	__size_of_TurnKeyFlags
	__size_of_TurnKeyFlags	equ	__end_of_TurnKeyFlags-_TurnKeyFlags
	
_TurnKeyFlags:	
;incstack = 0
	opt	stack 2
; Regs used in _TurnKeyFlags: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	421
	
l3986:	
;CheckTouchKey.c: 418: static unsigned char KeyHaveTimes = 0;
;CheckTouchKey.c: 419: static unsigned char KeyNoTimes = 0;
;CheckTouchKey.c: 421: if(KeyData[0] | KeyData[1])
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l4012
u2970:
	line	423
	
l3988:	
;CheckTouchKey.c: 422: {
;CheckTouchKey.c: 423: KeyNoTimes = 0;
	clrf	(TurnKeyFlags@KeyNoTimes)
	line	425
	
l3990:	
;CheckTouchKey.c: 425: if(KeyData[0] == KeyOldData[0] && KeyData[1] == KeyOldData[1])
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l1660
u2980:
	
l3992:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l1660
u2990:
	line	427
	
l3994:	
	incf	(TurnKeyFlags@KeyHaveTimes),f
	btfsc	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l1667
u3000:
	line	429
	
l3996:	
;CheckTouchKey.c: 428: {
;CheckTouchKey.c: 429: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	line	430
	
l3998:	
;CheckTouchKey.c: 430: KeyFlag[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	line	431
	
l4000:	
;CheckTouchKey.c: 431: KeyFlag[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	line	435
	
l4002:	
;CheckTouchKey.c: 434: {
;CheckTouchKey.c: 435: if(!b_kclr)
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u3011
	goto	u3010
u3011:
	goto	l1664
u3010:
	line	437
	
l4004:	
;CheckTouchKey.c: 436: {
;CheckTouchKey.c: 437: b_kclr = 1;
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	438
	
l4006:	
;CheckTouchKey.c: 438: KeyClearIn();
	fcall	_KeyClearIn
	goto	l1667
	line	443
	
l1660:	
	line	445
;CheckTouchKey.c: 443: else
;CheckTouchKey.c: 444: {
;CheckTouchKey.c: 445: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	446
	
l4008:	
;CheckTouchKey.c: 446: KeyOldData[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	line	447
;CheckTouchKey.c: 447: KeyOldData[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	line	448
	
l4010:	
;CheckTouchKey.c: 448: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	goto	l1667
	line	449
	
l1664:	
	line	450
;CheckTouchKey.c: 449: }
;CheckTouchKey.c: 450: }
	goto	l1667
	line	453
	
l4012:	
;CheckTouchKey.c: 451: else
;CheckTouchKey.c: 452: {
;CheckTouchKey.c: 453: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	line	454
;CheckTouchKey.c: 454: KeyOldData[0] = 0;
	clrf	(_KeyOldData)	;volatile
	line	455
;CheckTouchKey.c: 455: KeyOldData[1] = 0;
	clrf	0+(_KeyOldData)+01h	;volatile
	line	457
	
l4014:	
;CheckTouchKey.c: 457: if(++KeyNoTimes >=2)
	movlw	low(02h)
	incf	(TurnKeyFlags@KeyNoTimes),f
	subwf	((TurnKeyFlags@KeyNoTimes)),w
	skipc
	goto	u3021
	goto	u3020
u3021:
	goto	l1667
u3020:
	line	459
	
l4016:	
;CheckTouchKey.c: 458: {
;CheckTouchKey.c: 459: KeyNoTimes = 0;
	clrf	(TurnKeyFlags@KeyNoTimes)
	line	460
;CheckTouchKey.c: 460: KeyFlag[0] = 0;
	clrf	(_KeyFlag)	;volatile
	line	461
;CheckTouchKey.c: 461: KeyFlag[1] = 0;
	clrf	0+(_KeyFlag)+01h	;volatile
	line	463
	
l4018:	
;CheckTouchKey.c: 463: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	466
	
l1667:	
	return
	opt stack 0
GLOBAL	__end_of_TurnKeyFlags
	__end_of_TurnKeyFlags:
	signat	_TurnKeyFlags,89
	global	_KeyClearIn

;; *************** function _KeyClearIn *****************
;; Defined at:
;;		line 104 in file "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
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
psect	text28,local,class=CODE,delta=2,merge=1,group=1
	line	104
global __ptext28
__ptext28:	;psect for function _KeyClearIn
psect	text28
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	104
	global	__size_of_KeyClearIn
	__size_of_KeyClearIn	equ	__end_of_KeyClearIn-_KeyClearIn
	
_KeyClearIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyClearIn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	107
	
l3594:	
;CheckTouchKey.c: 106: unsigned char cnt;
;CheckTouchKey.c: 107: for(cnt=0;cnt < KeyTotalNumber;cnt++)
	clrf	(KeyClearIn@cnt)
	line	109
	
l3600:	
;CheckTouchKey.c: 108: {
;CheckTouchKey.c: 109: if(!KeyIsIn(cnt))
	movf	(KeyClearIn@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l3604
u2350:
	line	111
	
l3602:	
;CheckTouchKey.c: 110: {
;CheckTouchKey.c: 111: KeyClearOne(cnt);
	movf	(KeyClearIn@cnt),w
	fcall	_KeyClearOne
	line	107
	
l3604:	
	incf	(KeyClearIn@cnt),f
	
l3606:	
	movlw	low(03h)
	subwf	(KeyClearIn@cnt),w
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l3600
u2360:
	line	114
	
l1575:	
	return
	opt stack 0
GLOBAL	__end_of_KeyClearIn
	__end_of_KeyClearIn:
	signat	_KeyClearIn,89
	global	_KeyStopClear

;; *************** function _KeyStopClear *****************
;; Defined at:
;;		line 123 in file "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 800/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_KeyClearOne
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=1
	line	123
global __ptext29
__ptext29:	;psect for function _KeyStopClear
psect	text29
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	123
	global	__size_of_KeyStopClear
	__size_of_KeyStopClear	equ	__end_of_KeyStopClear-_KeyStopClear
	
_KeyStopClear:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	126
	
l3864:	
;CheckTouchKey.c: 125: unsigned char i;
;CheckTouchKey.c: 126: KeyFlag[0] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyFlag)	;volatile
	line	127
;CheckTouchKey.c: 127: KeyFlag[1] = 0;
	clrf	0+(_KeyFlag)+01h	;volatile
	line	128
;CheckTouchKey.c: 128: for(i = 0; i < KeyTotalNumber; i++)
	clrf	(KeyStopClear@i)
	line	130
	
l3870:	
;CheckTouchKey.c: 129: {
;CheckTouchKey.c: 130: KeyResSum[i] = 0;
	clrc
	rlf	(KeyStopClear@i),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	131
	
l3872:	
;CheckTouchKey.c: 131: KeyClearOne(i);
	movf	(KeyStopClear@i),w
	fcall	_KeyClearOne
	line	128
	
l3874:	
	incf	(KeyStopClear@i),f
	
l3876:	
	movlw	low(03h)
	subwf	(KeyStopClear@i),w
	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l3870
u2740:
	line	133
	
l1580:	
	return
	opt stack 0
GLOBAL	__end_of_KeyStopClear
	__end_of_KeyStopClear:
	signat	_KeyStopClear,89
	global	_GetTouchKeyValue

;; *************** function _GetTouchKeyValue *****************
;; Defined at:
;;		line 196 in file "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wake            2    5[COMMON] unsigned int 
;;  temp            2    3[COMMON] unsigned int 
;;  cnt             1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
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
psect	text30,local,class=CODE,delta=2,merge=1,group=1
	line	196
global __ptext30
__ptext30:	;psect for function _GetTouchKeyValue
psect	text30
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	196
	global	__size_of_GetTouchKeyValue
	__size_of_GetTouchKeyValue	equ	__end_of_GetTouchKeyValue-_GetTouchKeyValue
	
_GetTouchKeyValue:	
;incstack = 0
	opt	stack 2
; Regs used in _GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	198
	
l3394:	
;CheckTouchKey.c: 198: unsigned char cnt = 0;
	clrf	(GetTouchKeyValue@cnt)
	line	199
	
l3396:	
;CheckTouchKey.c: 199: unsigned int wake = 1;
	clrf	(GetTouchKeyValue@wake)
	incf	(GetTouchKeyValue@wake),f
	clrf	(GetTouchKeyValue@wake+1)
	line	203
	
l3398:	
	btfss	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	goto	u2141
	goto	u2140
u2141:
	goto	l3402
u2140:
	
l3400:	
	movf	(GetTouchKeyValue@wake),w
	andlw	07h
	btfsc	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l3430
u2150:
	line	205
	
l3402:	
;CheckTouchKey.c: 204: {
;CheckTouchKey.c: 205: KEYCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(146)^080h	;volatile
	line	206
;CheckTouchKey.c: 206: KEYCON1 = 0;
	clrf	(147)^080h	;volatile
	line	207
	
l3404:	
;CheckTouchKey.c: 207: KEYCON2 = 0x01;
	movlw	low(01h)
	movwf	(151)^080h	;volatile
	line	209
	
l3406:	
;CheckTouchKey.c: 209: TRISB6 = 0;
	bcf	(1078/8)^080h,(1078)&7	;volatile
	line	210
	
l3408:	
;CheckTouchKey.c: 210: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	line	211
# 211 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
nop ;# 
	line	212
# 212 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
nop ;# 
	line	213
# 213 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
nop ;# 
	line	214
# 214 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
nop ;# 
	line	215
# 215 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
nop ;# 
	line	216
# 216 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
nop ;# 
	line	217
# 217 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
nop ;# 
	line	218
# 218 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
nop ;# 
psect	text30
	line	219
	
l3410:	
;CheckTouchKey.c: 219: TRISB6 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1078/8)^080h,(1078)&7	;volatile
	line	221
	
l3412:	
;CheckTouchKey.c: 221: KEYCON0 = Table_KeyCap[cnt];
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(146)^080h	;volatile
	line	222
	
l3414:	
;CheckTouchKey.c: 222: KEYCON1 = Table_KeyChannel[cnt];
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(147)^080h	;volatile
	line	223
# 223 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
nop ;# 
	line	224
# 224 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
nop ;# 
	line	225
# 225 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
nop ;# 
	line	226
# 226 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
nop ;# 
psect	text30
	line	227
	
l3416:	
;CheckTouchKey.c: 227: KEYCON0 |= 0x1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(146)^080h+(0/8),(0)&7	;volatile
	line	229
	
l3418:	
;CheckTouchKey.c: 229: temp = 2000;
	movlw	0D0h
	movwf	(GetTouchKeyValue@temp)
	movlw	07h
	movwf	((GetTouchKeyValue@temp))+1
	line	230
;CheckTouchKey.c: 230: while(!(KEYCON0&0x80))
	goto	l1601
	line	232
	
l3420:	
;CheckTouchKey.c: 231: {
;CheckTouchKey.c: 232: if(0 == (--temp))
	movlw	01h
	subwf	(GetTouchKeyValue@temp),f
	movlw	0
	skipc
	decf	(GetTouchKeyValue@temp+1),f
	subwf	(GetTouchKeyValue@temp+1),f
	movf	(((GetTouchKeyValue@temp))),w
iorwf	(((GetTouchKeyValue@temp+1))),w
	btfss	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l1601
u2160:
	line	234
	
l3422:	
;CheckTouchKey.c: 233: {
;CheckTouchKey.c: 234: KeyCounter = 255;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_KeyCounter)
	line	235
	
l3424:	
;CheckTouchKey.c: 235: ClearResSum();
	fcall	_ClearResSum
	goto	l1604
	line	238
	
l1601:	
	line	230
	btfss	(146)^080h,(7)&7	;volatile
	goto	u2171
	goto	u2170
u2171:
	goto	l3420
u2170:
	line	240
	
l3428:	
;CheckTouchKey.c: 237: }
;CheckTouchKey.c: 238: }
;CheckTouchKey.c: 240: KeyResSum[cnt] += (unsigned int)((KEYDATAH<<8) | KEYDATAL);
	clrc
	rlf	(GetTouchKeyValue@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(148)^080h,w	;volatile
	bcf	status, 7	;select IRP bank1
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movf	(149)^080h,w	;volatile
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	242
	
l3430:	
;CheckTouchKey.c: 241: }
;CheckTouchKey.c: 242: wake <<= 1;
	clrc
	rlf	(GetTouchKeyValue@wake),f
	rlf	(GetTouchKeyValue@wake+1),f
	line	243
	
l3432:	
	movlw	low(03h)
	incf	(GetTouchKeyValue@cnt),f
	subwf	((GetTouchKeyValue@cnt)),w
	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l3398
u2180:
	
l1606:	
	line	244
;CheckTouchKey.c: 244: b_ksleep = 0;
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	line	245
	
l1604:	
	return
	opt stack 0
GLOBAL	__end_of_GetTouchKeyValue
	__end_of_GetTouchKeyValue:
	signat	_GetTouchKeyValue,89
	global	_ClearResSum

;; *************** function _ClearResSum *****************
;; Defined at:
;;		line 142 in file "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 800/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
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
psect	text31,local,class=CODE,delta=2,merge=1,group=1
	line	142
global __ptext31
__ptext31:	;psect for function _ClearResSum
psect	text31
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	142
	global	__size_of_ClearResSum
	__size_of_ClearResSum	equ	__end_of_ClearResSum-_ClearResSum
	
_ClearResSum:	
;incstack = 0
	opt	stack 2
; Regs used in _ClearResSum: [wreg-fsr0h+status,2+status,0]
	line	144
	
l3356:	
;CheckTouchKey.c: 144: unsigned char cnt = 0;
	clrf	(ClearResSum@cnt)
	line	147
	
l3358:	
;CheckTouchKey.c: 146: {
;CheckTouchKey.c: 147: KeyResSum[cnt] = 0;
	clrc
	rlf	(ClearResSum@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	148
	
l3360:	
	movlw	low(03h)
	incf	(ClearResSum@cnt),f
	subwf	((ClearResSum@cnt)),w
	skipc
	goto	u2101
	goto	u2100
u2101:
	goto	l3358
u2100:
	line	149
	
l1585:	
	return
	opt stack 0
GLOBAL	__end_of_ClearResSum
	__end_of_ClearResSum:
	signat	_ClearResSum,89
	global	_CheckValidTime

;; *************** function _CheckValidTime *****************
;; Defined at:
;;		line 501 in file "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
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
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=1
	line	501
global __ptext32
__ptext32:	;psect for function _CheckValidTime
psect	text32
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	501
	global	__size_of_CheckValidTime
	__size_of_CheckValidTime	equ	__end_of_CheckValidTime-_CheckValidTime
	
_CheckValidTime:	
;incstack = 0
	opt	stack 5
; Regs used in _CheckValidTime: [wreg+status,2+status,0]
	line	507
	
l4020:	
;CheckTouchKey.c: 506: {
;CheckTouchKey.c: 507: if(KeyFlag[0] | KeyFlag[1])
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l4026
u3030:
	line	509
	
l4022:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(CheckValidTime@validtime)^080h,f
	skipnz
	incf	(CheckValidTime@validtime+1)^080h,f
	movlw	03Ah
	subwf	((CheckValidTime@validtime+1)^080h),w
	movlw	098h
	skipnz
	subwf	((CheckValidTime@validtime)^080h),w
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l1676
u3040:
	line	511
	
l4024:	
;CheckTouchKey.c: 510: {
;CheckTouchKey.c: 511: b_kerr = 1;
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	512
	
l4026:	
;CheckTouchKey.c: 512: validtime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(CheckValidTime@validtime)^080h
	clrf	(CheckValidTime@validtime+1)^080h
	line	520
	
l1676:	
	return
	opt stack 0
GLOBAL	__end_of_CheckValidTime
	__end_of_CheckValidTime:
	signat	_CheckValidTime,89
	global	_CheckOnceResult

;; *************** function _CheckOnceResult *****************
;; Defined at:
;;		line 255 in file "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  KeyResTemp      2    6[BANK0 ] unsigned int 
;;  KeyValue        2    2[BANK0 ] unsigned int 
;;  OldValue        2    0[BANK0 ] unsigned int 
;;  cnt             1    8[BANK0 ] unsigned char 
;;  KeyDown         1    5[BANK0 ] unsigned char 
;;  flag            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       9       0       0       0
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
psect	text33,local,class=CODE,delta=2,merge=1,group=1
	line	255
global __ptext33
__ptext33:	;psect for function _CheckOnceResult
psect	text33
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	255
	global	__size_of_CheckOnceResult
	__size_of_CheckOnceResult	equ	__end_of_CheckOnceResult-_CheckOnceResult
	
_CheckOnceResult:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	257
	
l3878:	
;CheckTouchKey.c: 257: unsigned char cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckOnceResult@cnt)
	line	265
;CheckTouchKey.c: 258: unsigned char KeyDown;
;CheckTouchKey.c: 259: unsigned char flag;
;CheckTouchKey.c: 261: unsigned int KeyResTemp;
;CheckTouchKey.c: 262: unsigned int KeyValue;
;CheckTouchKey.c: 263: unsigned int OldValue;
;CheckTouchKey.c: 265: KeyData[0] = 0;
	clrf	(_KeyData)	;volatile
	line	266
;CheckTouchKey.c: 266: KeyData[1] = 0;
	clrf	0+(_KeyData)+01h	;volatile
	line	267
;CheckTouchKey.c: 267: KeyMaxSub = 0;
	clrf	(_KeyMaxSub)
	line	272
	
l3880:	
;CheckTouchKey.c: 271: {
;CheckTouchKey.c: 272: flag = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(CheckOnceResult@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@flag)
	line	274
	
l3882:	
;CheckTouchKey.c: 274: KeyResSum[cnt] >>= 3;
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u2755:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank1
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u2750:
	addlw	-1
	skipz
	goto	u2755
	line	275
	
l3884:	
;CheckTouchKey.c: 275: KeyResTemp = KeyResSum[cnt];
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@KeyResTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@KeyResTemp+1)
	line	276
	
l3886:	
;CheckTouchKey.c: 276: KeyDown = Table_KeyDown[cnt];
	movf	(CheckOnceResult@cnt),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@KeyDown)
	line	278
	
l3888:	
;CheckTouchKey.c: 278: KeyValue = KeyResTemp + KeyDown;
	movf	(CheckOnceResult@KeyDown),w
	movwf	(CheckOnceResult@KeyValue)
	clrf	(CheckOnceResult@KeyValue+1)
	
l3890:	
	movf	(CheckOnceResult@KeyResTemp),w
	addwf	(CheckOnceResult@KeyValue),f
	skipnc
	incf	(CheckOnceResult@KeyValue+1),f
	movf	(CheckOnceResult@KeyResTemp+1),w
	addwf	(CheckOnceResult@KeyValue+1),f
	line	280
	
l3892:	
;CheckTouchKey.c: 280: if(!KeyIsIn(cnt))
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2761
	goto	u2760
u2761:
	goto	l3922
u2760:
	line	283
	
l3894:	
;CheckTouchKey.c: 281: {
;CheckTouchKey.c: 283: OldValue = KeyOldValue2[cnt];
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(CheckOnceResult@OldValue)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@OldValue+1)
	line	285
;CheckTouchKey.c: 285: if(KeyReference[cnt] > KeyValue)
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	1+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue+1),w
	skipz
	goto	u2775
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue),w
u2775:
	skipnc
	goto	u2771
	goto	u2770
u2771:
	goto	l3898
u2770:
	line	287
	
l3896:	
;CheckTouchKey.c: 286: {
;CheckTouchKey.c: 287: KeyResTemp = KeyReference[cnt] - KeyResTemp;
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+0)+0,w
	movwf	(CheckOnceResult@KeyResTemp)
	movf	(CheckOnceResult@KeyResTemp+1),w
	skipc
	incf	(CheckOnceResult@KeyResTemp+1),w
	subwf	1+(??_CheckOnceResult+0)+0,w
	movwf	1+(CheckOnceResult@KeyResTemp)
	line	288
;CheckTouchKey.c: 288: }
	goto	l3906
	line	289
	
l3898:	
;CheckTouchKey.c: 289: else if ((OldValue > KeyValue) && (KeyOldValue1[cnt] > KeyValue))
	movf	(CheckOnceResult@OldValue+1),w
	subwf	(CheckOnceResult@KeyValue+1),w
	skipz
	goto	u2785
	movf	(CheckOnceResult@OldValue),w
	subwf	(CheckOnceResult@KeyValue),w
u2785:
	skipnc
	goto	u2781
	goto	u2780
u2781:
	goto	l3944
u2780:
	
l3900:	
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	1+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue+1),w
	skipz
	goto	u2795
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue),w
u2795:
	skipnc
	goto	u2791
	goto	u2790
u2791:
	goto	l3944
u2790:
	line	291
	
l3902:	
;CheckTouchKey.c: 290: {
;CheckTouchKey.c: 291: KeyReference[cnt] = OldValue;
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@OldValue),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@OldValue+1),w
	movwf	indf
	line	292
	
l3904:	
;CheckTouchKey.c: 292: KeyResTemp = OldValue - KeyResTemp;
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	(CheckOnceResult@OldValue),w
	movwf	(CheckOnceResult@KeyResTemp)
	movf	(CheckOnceResult@KeyResTemp+1),w
	skipc
	incf	(CheckOnceResult@KeyResTemp+1),w
	subwf	(CheckOnceResult@OldValue+1),w
	movwf	1+(CheckOnceResult@KeyResTemp)
	line	299
;CheckTouchKey.c: 293: }
	
l3906:	
;CheckTouchKey.c: 297: }
;CheckTouchKey.c: 299: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	303
	
l3908:	
;CheckTouchKey.c: 302: {
;CheckTouchKey.c: 303: if(KeyResTemp >> 8)
	movf	(0+(CheckOnceResult@KeyResTemp)+01h),w
	btfsc	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l3912
u2800:
	line	305
	
l3910:	
;CheckTouchKey.c: 304: {
;CheckTouchKey.c: 305: KeyDown = 0xFF;
	movlw	low(0FFh)
	movwf	(CheckOnceResult@KeyDown)
	line	306
;CheckTouchKey.c: 306: }
	goto	l1618
	line	309
	
l3912:	
;CheckTouchKey.c: 307: else
;CheckTouchKey.c: 308: {
;CheckTouchKey.c: 309: KeyDown = KeyResTemp & 0xFF;
	movf	(CheckOnceResult@KeyResTemp),w
	movwf	(CheckOnceResult@KeyDown)
	line	310
	
l1618:	
	line	312
;CheckTouchKey.c: 310: }
;CheckTouchKey.c: 312: if(KeyMaxSub < KeyDown)
	movf	(CheckOnceResult@KeyDown),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u2811
	goto	u2810
u2811:
	goto	l3918
u2810:
	line	314
	
l3914:	
;CheckTouchKey.c: 313: {
;CheckTouchKey.c: 314: KeyMaxSub = KeyDown;
	movf	(CheckOnceResult@KeyDown),w
	movwf	(_KeyMaxSub)
	line	315
	
l3916:	
;CheckTouchKey.c: 315: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag),w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyHave
	line	316
;CheckTouchKey.c: 316: }
	goto	l3944
	line	319
	
l3918:	
;CheckTouchKey.c: 317: else
;CheckTouchKey.c: 318: {
;CheckTouchKey.c: 319: KeyCounter++;
	incf	(_KeyCounter),f
	goto	l3944
	line	332
	
l3922:	
;CheckTouchKey.c: 328: else
;CheckTouchKey.c: 329: {
;CheckTouchKey.c: 332: if(KeyReference[cnt]+1 < KeyValue)
	clrc
	rlf	(CheckOnceResult@cnt),w
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
	movf	(CheckOnceResult@KeyValue+1),w
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u2825
	movf	(CheckOnceResult@KeyValue),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u2825:
	skipnc
	goto	u2821
	goto	u2820
u2821:
	goto	l3928
u2820:
	goto	l3944
	line	336
	
l3928:	
;CheckTouchKey.c: 336: else if((KeyOldValue2[cnt]+KeyDown<KeyResTemp) || (KeyOldValue1[cnt]+KeyDown<KeyResTemp))
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	(CheckOnceResult@KeyDown),w
	addwf	0+(??_CheckOnceResult+0)+0,w
	movwf	(??_CheckOnceResult+2)+0
	movf	1+(??_CheckOnceResult+0)+0,w
	skipnc
	incf	1+(??_CheckOnceResult+0)+0,w
	movwf	((??_CheckOnceResult+2)+0)+1
	movf	(CheckOnceResult@KeyResTemp+1),w
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u2835
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u2835:
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l3932
u2830:
	
l3930:	
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	(CheckOnceResult@KeyDown),w
	addwf	0+(??_CheckOnceResult+0)+0,w
	movwf	(??_CheckOnceResult+2)+0
	movf	1+(??_CheckOnceResult+0)+0,w
	skipnc
	incf	1+(??_CheckOnceResult+0)+0,w
	movwf	((??_CheckOnceResult+2)+0)+1
	movf	(CheckOnceResult@KeyResTemp+1),w
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u2845
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u2845:
	skipnc
	goto	u2841
	goto	u2840
u2841:
	goto	l3936
u2840:
	line	338
	
l3932:	
;CheckTouchKey.c: 337: {
;CheckTouchKey.c: 338: if(++KeyUpShake[cnt] > 8)
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l1624
u2850:
	line	340
	
l3934:	
;CheckTouchKey.c: 339: {
;CheckTouchKey.c: 340: KeyClearOne(cnt);
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyClearOne
	line	341
;CheckTouchKey.c: 341: continue;
	goto	l3944
	line	346
	
l3936:	
;CheckTouchKey.c: 344: else
;CheckTouchKey.c: 345: {
;CheckTouchKey.c: 346: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l3940
	line	347
	
l1624:	
	line	353
	
l3940:	
;CheckTouchKey.c: 353: else if(!(KeyData[0] | KeyData[1]))
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l3944
u2860:
	line	355
	
l3942:	
;CheckTouchKey.c: 354: {
;CheckTouchKey.c: 355: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag),w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyHave
	line	358
	
l3944:	
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@cnt),f
	subwf	((CheckOnceResult@cnt)),w
	skipc
	goto	u2871
	goto	u2870
u2871:
	goto	l3880
u2870:
	line	359
	
l1634:	
	return
	opt stack 0
GLOBAL	__end_of_CheckOnceResult
	__end_of_CheckOnceResult:
	signat	_CheckOnceResult,89
	global	_KeyHave

;; *************** function _KeyHave *****************
;; Defined at:
;;		line 158 in file "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;;  flag            2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  cnt             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CheckOnceResult
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=1
	line	158
global __ptext34
__ptext34:	;psect for function _KeyHave
psect	text34
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	158
	global	__size_of_KeyHave
	__size_of_KeyHave	equ	__end_of_KeyHave-_KeyHave
	
_KeyHave:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyHave: [wreg+status,2+status,0]
;KeyHave@cnt stored from wreg
	movwf	(KeyHave@cnt)
	line	160
	
l3608:	
;CheckTouchKey.c: 160: KeyCounter++;
	incf	(_KeyCounter),f
	line	164
	
l3610:	
;CheckTouchKey.c: 163: {
;CheckTouchKey.c: 164: KeyData[0] = 0;
	clrf	(_KeyData)	;volatile
	line	165
	
l3612:	
;CheckTouchKey.c: 165: KeyData[1] = 0;
	clrf	0+(_KeyData)+01h	;volatile
	line	166
	
l3614:	
;CheckTouchKey.c: 166: if(cnt&0x8)
	btfss	(KeyHave@cnt),(3)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l3618
u2370:
	line	168
	
l3616:	
;CheckTouchKey.c: 167: {
;CheckTouchKey.c: 168: KeyData[1] = flag;
	movf	(KeyHave@flag),w
	movwf	0+(_KeyData)+01h	;volatile
	line	169
;CheckTouchKey.c: 169: }
	goto	l1594
	line	172
	
l3618:	
;CheckTouchKey.c: 170: else
;CheckTouchKey.c: 171: {
;CheckTouchKey.c: 172: KeyData[0] = flag;
	movf	(KeyHave@flag),w
	movwf	(_KeyData)	;volatile
	line	186
	
l1594:	
	return
	opt stack 0
GLOBAL	__end_of_KeyHave
	__end_of_KeyHave:
	signat	_KeyHave,8313
	global	_KeyClearOne

;; *************** function _KeyClearOne *****************
;; Defined at:
;;		line 96 in file "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 800/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
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
psect	text35,local,class=CODE,delta=2,merge=1,group=1
	line	96
global __ptext35
__ptext35:	;psect for function _KeyClearOne
psect	text35
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	96
	global	__size_of_KeyClearOne
	__size_of_KeyClearOne	equ	__end_of_KeyClearOne-_KeyClearOne
	
_KeyClearOne:	
;incstack = 0
	opt	stack 3
; Regs used in _KeyClearOne: [wreg-fsr0h+status,2+status,0]
;KeyClearOne@cnt stored from wreg
	movwf	(KeyClearOne@cnt)
	line	98
	
l3392:	
;CheckTouchKey.c: 98: KeyOldValue0[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	99
;CheckTouchKey.c: 99: KeyOldValue1[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	100
;CheckTouchKey.c: 100: KeyOldValue2[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	101
;CheckTouchKey.c: 101: KeyReference[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	102
	
l1569:	
	return
	opt stack 0
GLOBAL	__end_of_KeyClearOne
	__end_of_KeyClearOne:
	signat	_KeyClearOne,4217
	global	_CheckKeyOldValue

;; *************** function _CheckKeyOldValue *****************
;; Defined at:
;;		line 369 in file "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  KeyOldTemp      2    2[BANK0 ] unsigned int 
;;  KeyResTemp      2    0[BANK0 ] unsigned int 
;;  cnt             1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       5       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_KeyIsIn
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=1
	line	369
global __ptext36
__ptext36:	;psect for function _CheckKeyOldValue
psect	text36
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	369
	global	__size_of_CheckKeyOldValue
	__size_of_CheckKeyOldValue	equ	__end_of_CheckKeyOldValue-_CheckKeyOldValue
	
_CheckKeyOldValue:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	372
	
l3946:	
;CheckTouchKey.c: 371: static unsigned char counter = 0;
;CheckTouchKey.c: 372: unsigned char cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@cnt)
	line	376
	
l3948:	
;CheckTouchKey.c: 373: unsigned int KeyResTemp;
;CheckTouchKey.c: 374: unsigned int KeyOldTemp;
;CheckTouchKey.c: 376: if(++counter < 4)
	movlw	low(04h)
	incf	(CheckKeyOldValue@counter),f
	subwf	((CheckKeyOldValue@counter)),w
	skipnc
	goto	u2881
	goto	u2880
u2881:
	goto	l3952
u2880:
	goto	l1640
	line	378
	
l3952:	
;CheckTouchKey.c: 378: counter = 0;
	clrf	(CheckKeyOldValue@counter)
	line	382
	
l3954:	
;CheckTouchKey.c: 381: {
;CheckTouchKey.c: 382: KeyResTemp = KeyResSum[cnt];
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyResTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyResTemp+1)
	line	383
	
l3956:	
;CheckTouchKey.c: 383: if(!KeyIsIn(cnt))
	movf	(CheckKeyOldValue@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2891
	goto	u2890
u2891:
	goto	l1642
u2890:
	line	386
	
l3958:	
;CheckTouchKey.c: 384: {
;CheckTouchKey.c: 386: KeyOldTemp = KeyOldValue0[cnt] - KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp+1)
	
l3960:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	387
	
l3962:	
;CheckTouchKey.c: 387: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u2901
	goto	u2900
u2901:
	goto	l3966
u2900:
	
l3964:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u2911
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l1642
u2910:
	line	389
	
l3966:	
;CheckTouchKey.c: 388: {
;CheckTouchKey.c: 389: KeyOldTemp = KeyOldValue1[cnt] - KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp+1)
	
l3968:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	390
	
l3970:	
;CheckTouchKey.c: 390: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l3974
u2920:
	
l3972:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u2931
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l1642
u2930:
	line	392
	
l3974:	
;CheckTouchKey.c: 391: {
;CheckTouchKey.c: 392: KeyOldTemp = KeyOldValue2[cnt] - KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp+1)
	
l3976:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	393
	
l3978:	
;CheckTouchKey.c: 393: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l3982
u2940:
	
l3980:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u2951
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l1642
u2950:
	line	395
	
l3982:	
;CheckTouchKey.c: 394: {
;CheckTouchKey.c: 395: KeyReference[cnt] = KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@KeyResTemp),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	movwf	indf
	line	399
	
l1642:	
	line	402
;CheckTouchKey.c: 396: }
;CheckTouchKey.c: 397: }
;CheckTouchKey.c: 398: }
;CheckTouchKey.c: 399: }
;CheckTouchKey.c: 402: KeyOldValue2[cnt] = KeyOldValue1[cnt];
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_CheckKeyOldValue+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckKeyOldValue+0)+0+1
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_CheckKeyOldValue+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_CheckKeyOldValue+0)+0,w
	movwf	indf
	line	403
;CheckTouchKey.c: 403: KeyOldValue1[cnt] = KeyOldValue0[cnt];
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_CheckKeyOldValue+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckKeyOldValue+0)+0+1
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_CheckKeyOldValue+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_CheckKeyOldValue+0)+0,w
	movwf	indf
	line	404
;CheckTouchKey.c: 404: KeyOldValue0[cnt] = KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@KeyResTemp),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	movwf	indf
	line	405
	
l3984:	
	movlw	low(03h)
	incf	(CheckKeyOldValue@cnt),f
	subwf	((CheckKeyOldValue@cnt)),w
	skipc
	goto	u2961
	goto	u2960
u2961:
	goto	l3954
u2960:
	line	406
	
l1640:	
	return
	opt stack 0
GLOBAL	__end_of_CheckKeyOldValue
	__end_of_CheckKeyOldValue:
	signat	_CheckKeyOldValue,89
	global	_KeyIsIn

;; *************** function _KeyIsIn *****************
;; Defined at:
;;		line 74 in file "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    3[COMMON] unsigned char 
;;  i               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
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
psect	text37,local,class=CODE,delta=2,merge=1,group=1
	line	74
global __ptext37
__ptext37:	;psect for function _KeyIsIn
psect	text37
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	74
	global	__size_of_KeyIsIn
	__size_of_KeyIsIn	equ	__end_of_KeyIsIn-_KeyIsIn
	
_KeyIsIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyIsIn: [wreg-fsr0h+status,2+status,0+pclath]
;KeyIsIn@cnt stored from wreg
	movwf	(KeyIsIn@cnt)
	line	76
	
l3380:	
;CheckTouchKey.c: 76: unsigned char i = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(KeyIsIn@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@i)
	line	78
	
l3382:	
;CheckTouchKey.c: 78: if(cnt&0x8)
	btfss	(KeyIsIn@cnt),(3)&7
	goto	u2131
	goto	u2130
u2131:
	goto	l3386
u2130:
	line	80
	
l3384:	
;CheckTouchKey.c: 79: {
;CheckTouchKey.c: 80: i &= KeyFlag[1];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@i),f
	line	81
;CheckTouchKey.c: 81: }
	goto	l3388
	line	84
	
l3386:	
;CheckTouchKey.c: 82: else
;CheckTouchKey.c: 83: {
;CheckTouchKey.c: 84: i &= KeyFlag[0];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@i),f
	line	86
	
l3388:	
;CheckTouchKey.c: 85: }
;CheckTouchKey.c: 86: return i;
	movf	(KeyIsIn@i),w
	line	87
	
l1566:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 405 in file "C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;;		On exit  : 200/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	405
global __ptext38
__ptext38:	;psect for function _Isr_Timer
psect	text38
	file	"C:\mcuproject\scm\zdt\D17-jl_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	405
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
psect	text38
	line	407
	
i1l4574:	
;main.c: 407: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u418_21
	goto	u418_20
u418_21:
	goto	i1l4584
u418_20:
	line	409
	
i1l4576:	
;main.c: 408: {
;main.c: 409: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	410
	
i1l4578:	
;main.c: 410: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u419_21
	goto	u419_20
u419_21:
	goto	i1l4586
u419_20:
	line	412
	
i1l4580:	
;main.c: 411: {
;main.c: 412: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	413
	
i1l4582:	
;main.c: 413: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	i1l4586
	line	418
	
i1l4584:	
;main.c: 416: else
;main.c: 417: {
;main.c: 418: PIR1 = 0;
	clrf	(12)	;volatile
	line	421
	
i1l4586:	
;main.c: 419: }
;main.c: 421: if(RACIF)
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2105/8)^0100h,(2105)&7	;volatile
	goto	u420_21
	goto	u420_20
u420_21:
	goto	i1l4592
u420_20:
	line	423
	
i1l4588:	
;main.c: 422: {
;main.c: 423: RACIF = 0;
	bcf	(2105/8)^0100h,(2105)&7	;volatile
	line	424
	
i1l4590:	
;main.c: 424: PORTA;
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	line	429
	
i1l4592:	
;main.c: 426: }
;main.c: 429: if(RCCIF)
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2106/8)^0100h,(2106)&7	;volatile
	goto	u421_21
	goto	u421_20
u421_21:
	goto	i1l1300
u421_20:
	line	431
	
i1l4594:	
;main.c: 430: {
;main.c: 431: RCCIF = 0;
	bcf	(2106/8)^0100h,(2106)&7	;volatile
	line	432
	
i1l4596:	
;main.c: 432: PORTC;
	bsf	status, 5	;RP0=1, select bank3
	movf	(389)^0180h,w	;volatile
	line	435
	
i1l1300:	
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
