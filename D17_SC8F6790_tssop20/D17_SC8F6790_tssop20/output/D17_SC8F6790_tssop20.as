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
	FNCALL	_workCtr,_checkTempAD
	FNCALL	_checkTempAD,_Read_ADC
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
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\Touch_Kscan_Library.h"
	line	77
_Table_KeyDown:
	retlw	0Ah
	retlw	0Ah
	retlw	0Ah
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyCap
psect	strings
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\Touch_Kscan_Library.h"
	line	70
_Table_KeyCap:
	retlw	03Ah
	retlw	01Ah
	retlw	02h
	global __end_of_Table_KeyCap
__end_of_Table_KeyCap:
	global	_Table_KeyChannel
psect	strings
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\Touch_Kscan_Library.h"
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
	global	_workStep
	global	_b_ksleep
	global	_b_kerr
	global	_b_kclr
	global	_b_kover1
	global	_b_kover
	global	_B_OnOff
	global	_B_MainLoop
	global	_KeyOldValue1
	global	CheckValidTime@validtime
	global	_KeyData
	global	_KeyOldData
	global	_tempResult
	global	_sleepTime
	global	_count900s
	global	_chrgFullTime
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
	global	_longKeyFalg
	global	_MainTime
	global	_KeyReference
	global	_KeyOldValue2
	global	_KeyOldValue0
	global	_KeyResSum
	global	_KeyUpShake
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
	file	"D17_SC8F6790_tssop20.as"
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

_workStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_KeyOldValue1:
       ds      6

CheckValidTime@validtime:
       ds      2

_KeyData:
       ds      2

_KeyOldData:
       ds      2

_tempResult:
       ds      2

_sleepTime:
       ds      2

_count900s:
       ds      2

_chrgFullTime:
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

	file	"D17_SC8F6790_tssop20.as"
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+045h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+01Bh)
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
??_WorkSleep:	; 1 bytes @ 0x8
??_showCtr:	; 1 bytes @ 0x8
	global	Read_ADC@ADCchannel
Read_ADC@ADCchannel:	; 1 bytes @ 0x8
	ds	1
??_CheckTouchKey:	; 1 bytes @ 0x9
??_checkChrgAD:	; 1 bytes @ 0x9
??_checkTempAD:	; 1 bytes @ 0x9
??_workCtr:	; 1 bytes @ 0x9
??_chrgCtr:	; 1 bytes @ 0x9
??_main:	; 1 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_SystemEnterSleep:	; 1 bytes @ 0x0
??_checkBat:	; 1 bytes @ 0x0
	global	CheckOnceResult@OldValue
CheckOnceResult@OldValue:	; 2 bytes @ 0x0
	global	CheckKeyOldValue@KeyResTemp
CheckKeyOldValue@KeyResTemp:	; 2 bytes @ 0x0
	ds	2
	global	CheckOnceResult@KeyValue
CheckOnceResult@KeyValue:	; 2 bytes @ 0x2
	global	CheckKeyOldValue@KeyOldTemp
CheckKeyOldValue@KeyOldTemp:	; 2 bytes @ 0x2
	global	SystemEnterSleep@KeyValue
SystemEnterSleep@KeyValue:	; 2 bytes @ 0x2
	ds	2
	global	CheckOnceResult@flag
CheckOnceResult@flag:	; 1 bytes @ 0x4
	global	CheckKeyOldValue@cnt
CheckKeyOldValue@cnt:	; 1 bytes @ 0x4
	global	SystemEnterSleep@KeyResTemp
SystemEnterSleep@KeyResTemp:	; 2 bytes @ 0x4
	ds	1
	global	CheckOnceResult@KeyDown
CheckOnceResult@KeyDown:	; 1 bytes @ 0x5
	ds	1
	global	CheckOnceResult@KeyResTemp
CheckOnceResult@KeyResTemp:	; 2 bytes @ 0x6
	global	SystemEnterSleep@wake
SystemEnterSleep@wake:	; 2 bytes @ 0x6
	ds	2
	global	CheckOnceResult@cnt
CheckOnceResult@cnt:	; 1 bytes @ 0x8
	global	SystemEnterSleep@cnt
SystemEnterSleep@cnt:	; 1 bytes @ 0x8
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    31
;!    Data        0
;!    BSS         98
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      12
;!    BANK0            80      9      78
;!    BANK1            80      0      27
;!    BANK3            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _checkTempAD->_Read_ADC
;!    _refreshTM1650->_tm1650cmd
;!    _initTM1650->_tm1650cmd
;!    _tm1650cmd->_write_8bit
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
;! (0) _main                                                 0     0      0    8191
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
;! (1) _workCtr                                              0     0      0     267
;!                        _checkTempAD
;! ---------------------------------------------------------------------------------
;! (2) _checkTempAD                                          0     0      0     267
;!                           _Read_ADC
;! ---------------------------------------------------------------------------------
;! (1) _task1                                                0     0      0     801
;!                      _refreshTM1650
;! ---------------------------------------------------------------------------------
;! (2) _refreshTM1650                                        0     0      0     801
;!                          _tm1650cmd
;! ---------------------------------------------------------------------------------
;! (1) _showCtr                                              0     0      0    3091
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
;! (2) _WorkSleep                                            0     0      0     837
;!                        _Init_System
;!                      _Refurbish_Sfr
;!                   _SystemEnterSleep
;! ---------------------------------------------------------------------------------
;! (3) _SystemEnterSleep                                     9     9      0     837
;!                                              0 BANK0      9     9      0
;!                        _ClearResSum
;!                   _GetTouchKeyValue
;!                        _KeyClearOne
;! ---------------------------------------------------------------------------------
;! (3) _Refurbish_Sfr                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0     267
;!                        _checkChrgAD
;! ---------------------------------------------------------------------------------
;! (2) _checkChrgAD                                          0     0      0     267
;!                           _Read_ADC
;! ---------------------------------------------------------------------------------
;! (1) _checkBat                                             2     2      0     267
;!                                              0 BANK0      2     2      0
;!                           _Read_ADC
;! ---------------------------------------------------------------------------------
;! (3) _Read_ADC                                             9     7      2     267
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
;!COMMON               E      9       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      9      4E       4       97.5%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0      1B       6       33.8%
;!BITBANK3            50      0       0       7        0.0%
;!BANK3               50      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BANK2               50      0       0      10        0.0%
;!ABS                  0      0      75      11        0.0%
;!DATA                 0      0      75      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 1061 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	1061
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	1061
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	1063
	
l4788:	
;main.c: 1063: Init_System();
	fcall	_Init_System
	line	1064
;main.c: 1064: initTM1650();
	fcall	_initTM1650
	line	1065
	
l4790:	
;main.c: 1065: firstTime = 250;
	movlw	0FAh
	movwf	(_firstTime)
	clrf	(_firstTime+1)
	line	1068
	
l4792:	
;main.c: 1067: {
;main.c: 1068: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u4451
	goto	u4450
u4451:
	goto	l4792
u4450:
	line	1070
	
l4794:	
;main.c: 1069: {
;main.c: 1070: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	1071
# 1071 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
clrwdt ;# 
psect	maintext
	line	1073
	
l4796:	
;main.c: 1073: CheckTouchKey();
	fcall	_CheckTouchKey
	line	1075
	
l4798:	
;main.c: 1075: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	1076
	
l4800:	
;main.c: 1076: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u4461
	goto	u4460
u4461:
	goto	l4804
u4460:
	line	1077
	
l4802:	
;main.c: 1077: KeyServer();
	fcall	_KeyServer
	line	1078
	
l4804:	
;main.c: 1078: showCtr();
	fcall	_showCtr
	line	1079
	
l4806:	
;main.c: 1079: workCtr();
	fcall	_workCtr
	line	1080
	
l4808:	
;main.c: 1080: checkBat();
	fcall	_checkBat
	line	1081
	
l4810:	
;main.c: 1081: chrgCtr();
	fcall	_chrgCtr
	line	1082
	
l4812:	
;main.c: 1082: task1();
	fcall	_task1
	goto	l4792
	global	start
	ljmp	start
	opt stack 0
	line	1086
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 890 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;;		_checkTempAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	890
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	890
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	892
	
l4296:	
;main.c: 892: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l4320
u3710:
	line	894
	
l4298:	
;main.c: 893: {
;main.c: 894: checkTempAD();
	fcall	_checkTempAD
	line	895
	
l4300:	
;main.c: 895: PWMIOS0 = 0x01;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(396)^0180h	;volsfr
	line	896
	
l4302:	
;main.c: 896: PWMTH = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(22)	;volatile
	line	897
	
l4304:	
;main.c: 897: PWMTL = 100;
	movlw	low(064h)
	movwf	(21)	;volatile
	line	898
	
l4306:	
;main.c: 898: PWMD01H = 0x00;
	clrf	(28)	;volatile
	line	899
	
l4308:	
;main.c: 899: if(workStep <= 10)
	movlw	low(0Bh)
	subwf	(_workStep),w
	skipnc
	goto	u3721
	goto	u3720
u3721:
	goto	l4312
u3720:
	line	901
	
l4310:	
;main.c: 900: {
;main.c: 901: PWMD0L = 50 + workStep;
	movf	(_workStep),w
	addlw	032h
	movwf	(23)	;volatile
	line	902
;main.c: 902: }
	goto	l4314
	line	905
	
l4312:	
;main.c: 903: else
;main.c: 904: {
;main.c: 905: PWMD0L = 40 + (workStep*2);
	clrc
	rlf	(_workStep),w
	addlw	028h
	movwf	(23)	;volatile
	line	907
	
l4314:	
;main.c: 906: }
;main.c: 907: PWMCON1 = 0x00;
	clrf	(20)	;volatile
	line	908
	
l4316:	
;main.c: 908: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	909
	
l4318:	
;main.c: 909: PWMCON0 = 0x41;
	movlw	low(041h)
	movwf	(19)	;volatile
	line	910
;main.c: 910: }
	goto	l1423
	line	911
	
l4320:	
;main.c: 911: else if(chrgFlag && chrgFullFlag == 0 && chrgLockFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l4364
u3730:
	
l4322:	
	movf	((_chrgFullFlag)),w
	btfss	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l4364
u3740:
	
l4324:	
	movf	((_chrgLockFlag)),w
	btfss	status,2
	goto	u3751
	goto	u3750
u3751:
	goto	l4364
u3750:
	line	913
	
l4326:	
;main.c: 912: {
;main.c: 913: if(chrgResult < 70 && batResult <= 1555)
	movlw	0
	subwf	(_chrgResult+1),w
	movlw	046h
	skipnz
	subwf	(_chrgResult),w
	skipnc
	goto	u3761
	goto	u3760
u3761:
	goto	l4338
u3760:
	
l4328:	
	movlw	06h
	subwf	(_batResult+1),w
	movlw	014h
	skipnz
	subwf	(_batResult),w
	skipnc
	goto	u3771
	goto	u3770
u3771:
	goto	l4338
u3770:
	line	915
	
l4330:	
;main.c: 914: {
;main.c: 915: if(++addTime > 10 && chrgDuty < 35)
	movlw	low(0Bh)
	incf	(_addTime),f
	subwf	((_addTime)),w
	skipc
	goto	u3781
	goto	u3780
u3781:
	goto	l4340
u3780:
	
l4332:	
	movlw	low(023h)
	subwf	(_chrgDuty),w
	skipnc
	goto	u3791
	goto	u3790
u3791:
	goto	l4340
u3790:
	line	917
	
l4334:	
;main.c: 916: {
;main.c: 917: addTime = 0;
	clrf	(_addTime)
	line	918
	
l4336:	
;main.c: 918: chrgDuty++;
	incf	(_chrgDuty),f
	goto	l4340
	line	923
	
l4338:	
;main.c: 921: else
;main.c: 922: {
;main.c: 923: addTime = 0;
	clrf	(_addTime)
	line	925
	
l4340:	
;main.c: 924: }
;main.c: 925: if(chrgResult > 80 || batResult > 1555)
	movlw	0
	subwf	(_chrgResult+1),w
	movlw	051h
	skipnz
	subwf	(_chrgResult),w
	skipnc
	goto	u3801
	goto	u3800
u3801:
	goto	l4344
u3800:
	
l4342:	
	movlw	06h
	subwf	(_batResult+1),w
	movlw	014h
	skipnz
	subwf	(_batResult),w
	skipc
	goto	u3811
	goto	u3810
u3811:
	goto	l4352
u3810:
	line	927
	
l4344:	
;main.c: 926: {
;main.c: 927: if(++subTime > 10 && chrgDuty > 10)
	movlw	low(0Bh)
	incf	(_subTime),f
	subwf	((_subTime)),w
	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l4354
u3820:
	
l4346:	
	movlw	low(0Bh)
	subwf	(_chrgDuty),w
	skipc
	goto	u3831
	goto	u3830
u3831:
	goto	l4354
u3830:
	line	929
	
l4348:	
;main.c: 928: {
;main.c: 929: subTime = 0;
	clrf	(_subTime)
	line	930
	
l4350:	
;main.c: 930: chrgDuty--;
	decf	(_chrgDuty),f
	goto	l4354
	line	935
	
l4352:	
;main.c: 933: else
;main.c: 934: {
;main.c: 935: subTime = 0;
	clrf	(_subTime)
	line	937
	
l4354:	
;main.c: 936: }
;main.c: 937: PWMIOS1 = 0x20;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(397)^0180h	;volsfr
	line	938
	
l4356:	
;main.c: 938: PWMTH = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(22)	;volatile
	line	939
;main.c: 939: PWMTL = 70;
	movlw	low(046h)
	movwf	(21)	;volatile
	line	940
	
l4358:	
;main.c: 940: PWMD23H = 0x00;
	clrf	(14)	;volatile
	line	941
	
l4360:	
;main.c: 941: PWMD3L = chrgDuty;
	movf	(_chrgDuty),w
	movwf	(26)	;volatile
	line	942
;main.c: 942: PWMCON1 = 0x00;
	clrf	(20)	;volatile
	line	943
;main.c: 943: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	944
	
l4362:	
;main.c: 944: PWMCON0 = 0x08;
	movlw	low(08h)
	movwf	(19)	;volatile
	line	945
;main.c: 945: }
	goto	l1423
	line	948
	
l4364:	
;main.c: 946: else
;main.c: 947: {
;main.c: 948: PWMCON0 = 0x00;
	clrf	(19)	;volatile
	line	950
	
l1423:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_checkTempAD

;; *************** function _checkTempAD *****************
;; Defined at:
;;		line 305 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Read_ADC
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	305
global __ptext2
__ptext2:	;psect for function _checkTempAD
psect	text2
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	305
	global	__size_of_checkTempAD
	__size_of_checkTempAD	equ	__end_of_checkTempAD-_checkTempAD
	
_checkTempAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkTempAD: [wreg+status,2+status,0+pclath+cstack]
	line	307
	
l3568:	
;main.c: 307: PORTA |= 0x01;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(0/8),(0)&7	;volatile
	line	308
	
l3570:	
;main.c: 308: tempResult = Read_ADC(1,1);
	clrf	(Read_ADC@ADCLDORef)
	incf	(Read_ADC@ADCLDORef),f
	movlw	low(01h)
	fcall	_Read_ADC
	movf	(1+(?_Read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_tempResult+1)
	movf	(0+(?_Read_ADC)),w
	movwf	(_tempResult)
	line	309
	
l3572:	
;main.c: 309: if(tempResult < 130)
	movlw	0
	subwf	(_tempResult+1),w
	movlw	082h
	skipnz
	subwf	(_tempResult),w
	skipnc
	goto	u2321
	goto	u2320
u2321:
	goto	l3578
u2320:
	line	312
	
l3574:	
;main.c: 310: {
;main.c: 312: if(++checkTempTime > 200)
	movlw	low(0C9h)
	incf	(_checkTempTime),f
	subwf	((_checkTempTime)),w
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l1260
u2330:
	line	314
	
l3576:	
;main.c: 313: {
;main.c: 314: checkTempTime = 0;
	clrf	(_checkTempTime)
	line	315
;main.c: 315: workStep = 0;
	clrf	(_workStep)
	goto	l1260
	line	321
	
l3578:	
;main.c: 319: else
;main.c: 320: {
;main.c: 321: checkTempTime = 0;
	clrf	(_checkTempTime)
	line	323
	
l1260:	
	return
	opt stack 0
GLOBAL	__end_of_checkTempAD
	__end_of_checkTempAD:
	signat	_checkTempAD,89
	global	_task1

;; *************** function _task1 *****************
;; Defined at:
;;		line 988 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	988
global __ptext3
__ptext3:	;psect for function _task1
psect	text3
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	988
	global	__size_of_task1
	__size_of_task1	equ	__end_of_task1-_task1
	
_task1:	
;incstack = 0
	opt	stack 3
; Regs used in _task1: [wreg+status,2+status,0+pclath+cstack]
	line	990
	
l4392:	
;main.c: 990: if(firstTime > 0)
	movf	((_firstTime)),w
iorwf	((_firstTime+1)),w
	btfsc	status,2
	goto	u3881
	goto	u3880
u3881:
	goto	l4398
u3880:
	line	992
	
l4394:	
;main.c: 991: {
;main.c: 992: firstTime--;
	movlw	01h
	subwf	(_firstTime),f
	movlw	0
	skipc
	decf	(_firstTime+1),f
	subwf	(_firstTime+1),f
	line	993
;main.c: 993: if(preBatValue < batValue)
	movf	(_batValue),w
	subwf	(_preBatValue),w
	skipnc
	goto	u3891
	goto	u3890
u3891:
	goto	l4400
u3890:
	line	995
	
l4396:	
;main.c: 994: {
;main.c: 995: preBatValue = batValue;
	movf	(_batValue),w
	movwf	(_preBatValue)
	goto	l4400
	line	1000
	
l4398:	
;main.c: 998: else
;main.c: 999: {
;main.c: 1000: refreshTM1650();
	fcall	_refreshTM1650
	line	1002
	
l4400:	
;main.c: 1001: }
;main.c: 1002: if(++count1s >= 250)
	movlw	low(0FAh)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u3901
	goto	u3900
u3901:
	goto	l1451
u3900:
	line	1004
	
l4402:	
;main.c: 1003: {
;main.c: 1004: count1s = 0;
	clrf	(_count1s)
	line	1005
	
l4404:	
;main.c: 1005: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3911
	goto	u3910
u3911:
	goto	l4410
u3910:
	line	1007
	
l4406:	
;main.c: 1006: {
;main.c: 1007: if(++count900s > 675)
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	02h
	subwf	((_count900s+1)),w
	movlw	0A4h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u3921
	goto	u3920
u3921:
	goto	l4412
u3920:
	line	1009
	
l4408:	
;main.c: 1008: {
;main.c: 1009: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	1010
;main.c: 1010: workStep = 0;
	clrf	(_workStep)
	line	1011
;main.c: 1011: zeroStep = 0;
	clrf	(_zeroStep)
	line	1012
;main.c: 1012: ledLightTime = 0;
	clrf	(_ledLightTime)
	clrf	(_ledLightTime+1)
	goto	l4412
	line	1017
	
l4410:	
;main.c: 1015: else
;main.c: 1016: {
;main.c: 1017: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	1019
	
l4412:	
;main.c: 1018: }
;main.c: 1019: if(ledLightTime > 0)
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l4416
u3930:
	line	1021
	
l4414:	
;main.c: 1020: {
;main.c: 1021: ledLightTime--;
	movlw	01h
	subwf	(_ledLightTime),f
	movlw	0
	skipc
	decf	(_ledLightTime+1),f
	subwf	(_ledLightTime+1),f
	line	1023
	
l4416:	
;main.c: 1022: }
;main.c: 1023: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3941
	goto	u3940
u3941:
	goto	l4430
u3940:
	line	1025
	
l4418:	
;main.c: 1024: {
;main.c: 1025: if(preBatValue < 99 && preBatValue < batValue)
	movlw	low(063h)
	subwf	(_preBatValue),w
	skipnc
	goto	u3951
	goto	u3950
u3951:
	goto	l4428
u3950:
	
l4420:	
	movf	(_batValue),w
	subwf	(_preBatValue),w
	skipnc
	goto	u3961
	goto	u3960
u3961:
	goto	l4428
u3960:
	line	1027
	
l4422:	
;main.c: 1026: {
;main.c: 1027: if(++count15s >= 15)
	movlw	low(0Fh)
	incf	(_count15s),f
	subwf	((_count15s)),w
	skipc
	goto	u3971
	goto	u3970
u3971:
	goto	l1447
u3970:
	line	1029
	
l4424:	
;main.c: 1028: {
;main.c: 1029: count15s = 0;
	clrf	(_count15s)
	line	1030
	
l4426:	
;main.c: 1030: preBatValue++;
	incf	(_preBatValue),f
	goto	l1451
	line	1035
	
l4428:	
;main.c: 1033: else
;main.c: 1034: {
;main.c: 1035: count15s = 0;
	clrf	(_count15s)
	goto	l1451
	line	1040
	
l4430:	
;main.c: 1038: else
;main.c: 1039: {
;main.c: 1040: if(preBatValue > 0 && preBatValue > batValue)
	movf	((_preBatValue)),w
	btfsc	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l4428
u3980:
	
l4432:	
	movf	(_preBatValue),w
	subwf	(_batValue),w
	skipnc
	goto	u3991
	goto	u3990
u3991:
	goto	l4428
u3990:
	line	1042
	
l4434:	
;main.c: 1041: {
;main.c: 1042: if(++count15s >= 15)
	movlw	low(0Fh)
	incf	(_count15s),f
	subwf	((_count15s)),w
	skipc
	goto	u4001
	goto	u4000
u4001:
	goto	l1447
u4000:
	line	1044
	
l4436:	
;main.c: 1043: {
;main.c: 1044: count15s = 0;
	clrf	(_count15s)
	line	1045
	
l4438:	
;main.c: 1045: preBatValue--;
	decf	(_preBatValue),f
	goto	l1451
	line	1052
	
l1447:	
	line	1055
	
l1451:	
	return
	opt stack 0
GLOBAL	__end_of_task1
	__end_of_task1:
	signat	_task1,89
	global	_refreshTM1650

;; *************** function _refreshTM1650 *****************
;; Defined at:
;;		line 612 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	612
global __ptext4
__ptext4:	;psect for function _refreshTM1650
psect	text4
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	612
	global	__size_of_refreshTM1650
	__size_of_refreshTM1650	equ	__end_of_refreshTM1650-_refreshTM1650
	
_refreshTM1650:	
;incstack = 0
	opt	stack 3
; Regs used in _refreshTM1650: [wreg+status,2+status,0+pclath+cstack]
	line	614
	
l3624:	
;main.c: 614: if(showFlag)
	movf	((_showFlag)),w
	btfsc	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l3628
u2360:
	line	616
	
l3626:	
;main.c: 615: {
;main.c: 616: tm1650cmd(0X48,0x21);
	movlw	low(021h)
	movwf	(tm1650cmd@seg_data)
	movlw	low(048h)
	fcall	_tm1650cmd
	line	617
# 617 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 617 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 617 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 617 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 617 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 617 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text4
	line	618
;main.c: 618: tm1650cmd(0X68,showLed2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_showLed2),w
	movwf	(tm1650cmd@seg_data)
	movlw	low(068h)
	fcall	_tm1650cmd
	line	619
# 619 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 619 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 619 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 619 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 619 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 619 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text4
	line	620
;main.c: 620: tm1650cmd(0X6A,showShiWei);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_showShiWei),w
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Ah)
	fcall	_tm1650cmd
	line	621
# 621 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 621 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 621 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 621 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 621 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 621 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text4
	line	622
;main.c: 622: tm1650cmd(0X6C,showGeWei);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_showGeWei),w
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Ch)
	fcall	_tm1650cmd
	line	623
# 623 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 623 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 623 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 623 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 623 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 623 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text4
	line	624
;main.c: 624: tm1650cmd(0X6E,showLed1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_showLed1),w
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Eh)
	fcall	_tm1650cmd
	line	625
;main.c: 625: }
	goto	l1321
	line	626
	
l3628:	
;main.c: 626: else if(sleepTime < 10)
	movlw	0
	subwf	(_sleepTime+1),w
	movlw	0Ah
	skipnz
	subwf	(_sleepTime),w
	skipnc
	goto	u2371
	goto	u2370
u2371:
	goto	l1321
u2370:
	line	628
	
l3630:	
;main.c: 627: {
;main.c: 628: tm1650cmd(0X68,0);
	clrf	(tm1650cmd@seg_data)
	movlw	low(068h)
	fcall	_tm1650cmd
	line	629
# 629 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 629 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 629 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 629 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 629 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 629 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text4
	line	630
;main.c: 630: tm1650cmd(0X6A,0);
	clrf	(tm1650cmd@seg_data)
	movlw	low(06Ah)
	fcall	_tm1650cmd
	line	631
# 631 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 631 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 631 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 631 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 631 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 631 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text4
	line	632
;main.c: 632: tm1650cmd(0X6C,0);
	clrf	(tm1650cmd@seg_data)
	movlw	low(06Ch)
	fcall	_tm1650cmd
	line	633
# 633 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 633 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 633 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 633 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 633 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 633 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text4
	line	634
;main.c: 634: tm1650cmd(0X6E,0);
	clrf	(tm1650cmd@seg_data)
	movlw	low(06Eh)
	fcall	_tm1650cmd
	line	635
# 635 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 635 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 635 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 635 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 635 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 635 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text4
	line	636
;main.c: 636: tm1650cmd(0X48,0x00);
	clrf	(tm1650cmd@seg_data)
	movlw	low(048h)
	fcall	_tm1650cmd
	line	637
# 637 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 637 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 637 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 637 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 637 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 637 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text4
	line	638
	
l3632:	
;main.c: 638: showShiWei = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_showShiWei)
	line	639
	
l3634:	
;main.c: 639: showGeWei = 0x00;
	clrf	(_showGeWei)
	line	640
	
l3636:	
;main.c: 640: showLed1 = 0x00;
	clrf	(_showLed1)
	line	641
	
l3638:	
;main.c: 641: showLed2 = 0x00;
	clrf	(_showLed2)
	line	643
	
l1321:	
	return
	opt stack 0
GLOBAL	__end_of_refreshTM1650
	__end_of_refreshTM1650:
	signat	_refreshTM1650,89
	global	_showCtr

;; *************** function _showCtr *****************
;; Defined at:
;;		line 785 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	785
global __ptext5
__ptext5:	;psect for function _showCtr
psect	text5
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	785
	global	__size_of_showCtr
	__size_of_showCtr	equ	__end_of_showCtr-_showCtr
	
_showCtr:	
;incstack = 0
	opt	stack 2
; Regs used in _showCtr: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	787
	
l4682:	
;main.c: 787: if(firstTime > 0)
	movf	((_firstTime)),w
iorwf	((_firstTime+1)),w
	btfsc	status,2
	goto	u4291
	goto	u4290
u4291:
	goto	l4690
u4290:
	line	789
	
l4684:	
;main.c: 788: {
;main.c: 789: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	790
	
l4686:	
;main.c: 790: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	791
	
l4688:	
;main.c: 791: initTM1650();
	fcall	_initTM1650
	line	792
;main.c: 792: }
	goto	l1406
	line	793
	
l4690:	
;main.c: 793: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4301
	goto	u4300
u4301:
	goto	l4704
u4300:
	line	795
	
l4692:	
;main.c: 794: {
;main.c: 795: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	796
	
l4694:	
;main.c: 796: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	797
	
l4696:	
;main.c: 797: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	798
	
l4698:	
;main.c: 798: showLed2 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed2)
	line	799
	
l4700:	
;main.c: 799: showShiWei = numArray[workStep / 10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_workStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	800
	
l4702:	
;main.c: 800: showGeWei = numArray[workStep % 10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_workStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	801
;main.c: 801: }
	goto	l1406
	line	802
	
l4704:	
;main.c: 802: else if(ledLightTime > 0)
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u4311
	goto	u4310
u4311:
	goto	l4736
u4310:
	line	804
	
l4706:	
;main.c: 803: {
;main.c: 804: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	805
	
l4708:	
;main.c: 805: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	806
	
l4710:	
;main.c: 806: if(preBatValue >= 85)
	movlw	low(055h)
	subwf	(_preBatValue),w
	skipc
	goto	u4321
	goto	u4320
u4321:
	goto	l4714
u4320:
	line	808
	
l4712:	
;main.c: 807: {
;main.c: 808: showShiWei = numArray[9];
	movlw	low((((_numArray+09h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	809
;main.c: 809: showGeWei = numArray[9];
	movlw	low((((_numArray+09h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	810
;main.c: 810: }
	goto	l4732
	line	811
	
l4714:	
;main.c: 811: else if(preBatValue > 60)
	movlw	low(03Dh)
	subwf	(_preBatValue),w
	skipc
	goto	u4331
	goto	u4330
u4331:
	goto	l4718
u4330:
	line	813
	
l4716:	
;main.c: 812: {
;main.c: 813: showShiWei = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	814
;main.c: 814: showGeWei = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	815
;main.c: 815: }
	goto	l4732
	line	816
	
l4718:	
;main.c: 816: else if(preBatValue > 40)
	movlw	low(029h)
	subwf	(_preBatValue),w
	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l4722
u4340:
	line	818
	
l4720:	
;main.c: 817: {
;main.c: 818: showShiWei = numArray[6];
	movlw	low((((_numArray+06h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	819
;main.c: 819: showGeWei = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	820
;main.c: 820: }
	goto	l4732
	line	821
	
l4722:	
;main.c: 821: else if(preBatValue > 20)
	movlw	low(015h)
	subwf	(_preBatValue),w
	skipc
	goto	u4351
	goto	u4350
u4351:
	goto	l4726
u4350:
	line	823
	
l4724:	
;main.c: 822: {
;main.c: 823: showShiWei = numArray[4];
	movlw	low((((_numArray+04h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	824
;main.c: 824: showGeWei = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	825
;main.c: 825: }
	goto	l4732
	line	826
	
l4726:	
;main.c: 826: else if(preBatValue > 0)
	movf	((_preBatValue)),w
	btfsc	status,2
	goto	u4361
	goto	u4360
u4361:
	goto	l4730
u4360:
	line	828
	
l4728:	
;main.c: 827: {
;main.c: 828: showShiWei = numArray[2];
	movlw	low((((_numArray+02h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	829
;main.c: 829: showGeWei = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	830
;main.c: 830: }
	goto	l4732
	line	833
	
l4730:	
;main.c: 831: else
;main.c: 832: {
;main.c: 833: showShiWei = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	834
;main.c: 834: showGeWei = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	836
	
l4732:	
;main.c: 835: }
;main.c: 836: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	837
	
l4734:	
;main.c: 837: showLed2 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed2)
	line	838
;main.c: 838: }
	goto	l1406
	line	839
	
l4736:	
;main.c: 839: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l4762
u4370:
	line	841
	
l4738:	
;main.c: 840: {
;main.c: 841: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	842
	
l4740:	
;main.c: 842: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	843
	
l4742:	
;main.c: 843: if(++chrgBatStepTime > 63)
	movlw	low(040h)
	incf	(_chrgBatStepTime),f
	subwf	((_chrgBatStepTime)),w
	skipc
	goto	u4381
	goto	u4380
u4381:
	goto	l4760
u4380:
	line	845
	
l4744:	
;main.c: 844: {
;main.c: 845: chrgBatStepTime = 0;
	clrf	(_chrgBatStepTime)
	line	846
	
l4746:	
;main.c: 846: if(preBatValue >= 99)
	movlw	low(063h)
	subwf	(_preBatValue),w
	skipc
	goto	u4391
	goto	u4390
u4391:
	goto	l4754
u4390:
	line	848
	
l4748:	
;main.c: 847: {
;main.c: 848: zeroStep = 0;
	clrf	(_zeroStep)
	line	849
	
l4750:	
;main.c: 849: showShiWei = numArray[9];
	movlw	low((((_numArray+09h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	850
	
l4752:	
;main.c: 850: showGeWei = numArray[9];
	movlw	low((((_numArray+09h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	851
;main.c: 851: }
	goto	l4760
	line	854
	
l4754:	
;main.c: 852: else
;main.c: 853: {
;main.c: 854: if(++zeroStep > 12)
	movlw	low(0Dh)
	incf	(_zeroStep),f
	subwf	((_zeroStep)),w
	skipc
	goto	u4401
	goto	u4400
u4401:
	goto	l4758
u4400:
	line	856
	
l4756:	
;main.c: 855: {
;main.c: 856: zeroStep = 1;
	clrf	(_zeroStep)
	incf	(_zeroStep),f
	line	858
	
l4758:	
;main.c: 857: }
;main.c: 858: showShiWei = 0x00;
	clrf	(_showShiWei)
	line	859
;main.c: 859: showGeWei = 0x00;
	clrf	(_showGeWei)
	line	862
	
l4760:	
;main.c: 860: }
;main.c: 861: }
;main.c: 862: setZeroStep2();
	fcall	_setZeroStep2
	line	864
;main.c: 864: }
	goto	l1406
	line	865
	
l4762:	
;main.c: 865: else if(zeroStep > 0)
	movf	((_zeroStep)),w
	btfsc	status,2
	goto	u4411
	goto	u4410
u4411:
	goto	l4770
u4410:
	line	867
	
l4764:	
;main.c: 866: {
;main.c: 867: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	868
	
l4766:	
;main.c: 868: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	869
;main.c: 869: showShiWei = showGeWei = 0;
	clrf	(_showGeWei)
	clrf	(_showShiWei)
	line	870
	
l4768:	
;main.c: 870: setZeroStep();
	fcall	_setZeroStep
	line	871
;main.c: 871: }
	goto	l1406
	line	874
	
l4770:	
;main.c: 872: else
;main.c: 873: {
;main.c: 874: if(sleepTime > 10 && sleepTime % 20 == 0)
	movlw	0
	subwf	(_sleepTime+1),w
	movlw	0Bh
	skipnz
	subwf	(_sleepTime),w
	skipc
	goto	u4421
	goto	u4420
u4421:
	goto	l4782
u4420:
	
l4772:	
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
	goto	u4431
	goto	u4430
u4431:
	goto	l4782
u4430:
	line	876
	
l4774:	
;main.c: 875: {
;main.c: 876: showFlag = 0;
	clrf	(_showFlag)
	line	877
	
l4776:	
;main.c: 877: tm1650cmd(0X48,0x04);
	movlw	low(04h)
	movwf	(tm1650cmd@seg_data)
	movlw	low(048h)
	fcall	_tm1650cmd
	line	878
	
l4778:	
;main.c: 878: PORTC |= 0x01;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(389)^0180h+(0/8),(0)&7	;volatile
	line	879
	
l4780:	
;main.c: 879: PORTB |= 0x80;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(7/8),(7)&7	;volatile
	line	881
	
l4782:	
;main.c: 880: }
;main.c: 881: if(++sleepTime > 40)
	incf	(_sleepTime),f
	skipnz
	incf	(_sleepTime+1),f
	movlw	0
	subwf	((_sleepTime+1)),w
	movlw	029h
	skipnz
	subwf	((_sleepTime)),w
	skipc
	goto	u4441
	goto	u4440
u4441:
	goto	l1395
u4440:
	line	883
	
l4784:	
;main.c: 882: {
;main.c: 883: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	884
	
l4786:	
;main.c: 884: WorkSleep();
	fcall	_WorkSleep
	goto	l1406
	line	887
	
l1395:	
	line	888
	
l1406:	
	return
	opt stack 0
GLOBAL	__end_of_showCtr
	__end_of_showCtr:
	signat	_showCtr,89
	global	_setZeroStep2

;; *************** function _setZeroStep2 *****************
;; Defined at:
;;		line 716 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	716
global __ptext6
__ptext6:	;psect for function _setZeroStep2
psect	text6
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	716
	global	__size_of_setZeroStep2
	__size_of_setZeroStep2	equ	__end_of_setZeroStep2-_setZeroStep2
	
_setZeroStep2:	
;incstack = 0
	opt	stack 5
; Regs used in _setZeroStep2: [wreg+status,2+status,0]
	line	718
	
l3702:	
;main.c: 718: if(zeroStep == 0)
	movf	((_zeroStep)),w
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l3706
u2510:
	line	720
	
l3704:	
;main.c: 719: {
;main.c: 720: showLed1 = 0x00;
	clrf	(_showLed1)
	line	721
;main.c: 721: showLed2 = 0x00;
	clrf	(_showLed2)
	line	722
;main.c: 722: }
	goto	l1377
	line	723
	
l3706:	
;main.c: 723: else if(zeroStep == 1)
		decf	((_zeroStep)),w
	btfss	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l3712
u2520:
	line	725
	
l3708:	
;main.c: 724: {
;main.c: 725: showLed1 = 0x01;
	clrf	(_showLed1)
	incf	(_showLed1),f
	line	726
	
l3710:	
;main.c: 726: showLed2 = 0x00;
	clrf	(_showLed2)
	line	727
;main.c: 727: }
	goto	l1377
	line	728
	
l3712:	
;main.c: 728: else if(zeroStep == 2)
		movlw	2
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l3718
u2530:
	line	730
	
l3714:	
;main.c: 729: {
;main.c: 730: showLed1 = 0x02;
	movlw	low(02h)
	movwf	(_showLed1)
	goto	l3710
	line	733
	
l3718:	
;main.c: 733: else if(zeroStep == 3)
		movlw	3
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l3724
u2540:
	line	735
	
l3720:	
;main.c: 734: {
;main.c: 735: showLed1 = 0x04;
	movlw	low(04h)
	movwf	(_showLed1)
	goto	l3710
	line	738
	
l3724:	
;main.c: 738: else if(zeroStep == 4)
		movlw	4
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l3730
u2550:
	line	740
	
l3726:	
;main.c: 739: {
;main.c: 740: showLed1 = 0x10;
	movlw	low(010h)
	movwf	(_showLed1)
	goto	l3710
	line	743
	
l3730:	
;main.c: 743: else if(zeroStep == 5)
		movlw	5
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l3736
u2560:
	line	745
	
l3732:	
;main.c: 744: {
;main.c: 745: showLed1 = 0x00;
	clrf	(_showLed1)
	line	746
	
l3734:	
;main.c: 746: showLed2 = 0x01;
	clrf	(_showLed2)
	incf	(_showLed2),f
	line	747
;main.c: 747: }
	goto	l1377
	line	748
	
l3736:	
;main.c: 748: else if(zeroStep == 6)
		movlw	6
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l3742
u2570:
	line	750
	
l3738:	
;main.c: 749: {
;main.c: 750: showLed1 = 0x00;
	clrf	(_showLed1)
	line	751
	
l3740:	
;main.c: 751: showLed2 = 0x02;
	movlw	low(02h)
	movwf	(_showLed2)
	line	752
;main.c: 752: }
	goto	l1377
	line	753
	
l3742:	
;main.c: 753: else if(zeroStep == 7)
		movlw	7
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l3748
u2580:
	line	755
	
l3744:	
;main.c: 754: {
;main.c: 755: showLed1 = 0x00;
	clrf	(_showLed1)
	line	756
	
l3746:	
;main.c: 756: showLed2 = 0x04;
	movlw	low(04h)
	movwf	(_showLed2)
	line	757
;main.c: 757: }
	goto	l1377
	line	758
	
l3748:	
;main.c: 758: else if(zeroStep == 8)
		movlw	8
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l3754
u2590:
	line	760
	
l3750:	
;main.c: 759: {
;main.c: 760: showLed1 = 0x00;
	clrf	(_showLed1)
	line	761
	
l3752:	
;main.c: 761: showLed2 = 0x08;
	movlw	low(08h)
	movwf	(_showLed2)
	line	762
;main.c: 762: }
	goto	l1377
	line	763
	
l3754:	
;main.c: 763: else if(zeroStep == 9)
		movlw	9
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l3760
u2600:
	line	765
	
l3756:	
;main.c: 764: {
;main.c: 765: showLed1 = 0x00;
	clrf	(_showLed1)
	line	766
	
l3758:	
;main.c: 766: showLed2 = 0x20;
	movlw	low(020h)
	movwf	(_showLed2)
	line	767
;main.c: 767: }
	goto	l1377
	line	768
	
l3760:	
;main.c: 768: else if(zeroStep == 10)
		movlw	10
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l3766
u2610:
	line	770
	
l3762:	
;main.c: 769: {
;main.c: 770: showLed1 = 0x00;
	clrf	(_showLed1)
	line	771
	
l3764:	
;main.c: 771: showLed2 = 0x40;
	movlw	low(040h)
	movwf	(_showLed2)
	line	772
;main.c: 772: }
	goto	l1377
	line	773
	
l3766:	
;main.c: 773: else if(zeroStep == 11)
		movlw	11
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l3772
u2620:
	line	775
	
l3768:	
;main.c: 774: {
;main.c: 775: showLed1 = 0x00;
	clrf	(_showLed1)
	line	776
	
l3770:	
;main.c: 776: showLed2 = 0x80;
	movlw	low(080h)
	movwf	(_showLed2)
	line	777
;main.c: 777: }
	goto	l1377
	line	778
	
l3772:	
;main.c: 778: else if(zeroStep == 12)
		movlw	12
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l1371
u2630:
	line	780
	
l3774:	
;main.c: 779: {
;main.c: 780: showLed1 = 0x00;
	clrf	(_showLed1)
	line	781
	
l3776:	
;main.c: 781: showLed2 = 0x10;
	movlw	low(010h)
	movwf	(_showLed2)
	goto	l1377
	line	783
	
l1371:	
	
l1377:	
	return
	opt stack 0
GLOBAL	__end_of_setZeroStep2
	__end_of_setZeroStep2:
	signat	_setZeroStep2,89
	global	_setZeroStep

;; *************** function _setZeroStep *****************
;; Defined at:
;;		line 646 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
	line	646
global __ptext7
__ptext7:	;psect for function _setZeroStep
psect	text7
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	646
	global	__size_of_setZeroStep
	__size_of_setZeroStep	equ	__end_of_setZeroStep-_setZeroStep
	
_setZeroStep:	
;incstack = 0
	opt	stack 5
; Regs used in _setZeroStep: [wreg+status,2+status,0]
	line	648
	
l3640:	
;main.c: 648: if(zeroStep == 0)
	movf	((_zeroStep)),w
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l3644
u2380:
	line	650
	
l3642:	
;main.c: 649: {
;main.c: 650: showLed1 = 0x00;
	clrf	(_showLed1)
	line	651
;main.c: 651: showLed2 = 0x00;
	clrf	(_showLed2)
	line	652
;main.c: 652: }
	goto	l1349
	line	653
	
l3644:	
;main.c: 653: else if(zeroStep == 1)
		decf	((_zeroStep)),w
	btfss	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l3650
u2390:
	line	655
	
l3646:	
;main.c: 654: {
;main.c: 655: showLed1 = 0xE1;
	movlw	low(0E1h)
	movwf	(_showLed1)
	line	656
	
l3648:	
;main.c: 656: showLed2 = 0x00;
	clrf	(_showLed2)
	line	657
;main.c: 657: }
	goto	l1349
	line	658
	
l3650:	
;main.c: 658: else if(zeroStep == 2)
		movlw	2
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l3656
u2400:
	line	660
	
l3652:	
;main.c: 659: {
;main.c: 660: showLed1 = 0xE3;
	movlw	low(0E3h)
	movwf	(_showLed1)
	goto	l3648
	line	663
	
l3656:	
;main.c: 663: else if(zeroStep == 3)
		movlw	3
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l3662
u2410:
	line	665
	
l3658:	
;main.c: 664: {
;main.c: 665: showLed1 = 0xE7;
	movlw	low(0E7h)
	movwf	(_showLed1)
	goto	l3648
	line	668
	
l3662:	
;main.c: 668: else if(zeroStep == 4)
		movlw	4
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2421
	goto	u2420
u2421:
	goto	l3668
u2420:
	line	670
	
l3664:	
;main.c: 669: {
;main.c: 670: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	goto	l3648
	line	673
	
l3668:	
;main.c: 673: else if(zeroStep == 5)
		movlw	5
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2431
	goto	u2430
u2431:
	goto	l3674
u2430:
	line	675
	
l3670:	
;main.c: 674: {
;main.c: 675: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	676
	
l3672:	
;main.c: 676: showLed2 = 0x01;
	clrf	(_showLed2)
	incf	(_showLed2),f
	line	677
;main.c: 677: }
	goto	l1349
	line	678
	
l3674:	
;main.c: 678: else if(zeroStep == 6)
		movlw	6
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l3678
u2440:
	line	680
	
l3676:	
;main.c: 679: {
;main.c: 680: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	681
;main.c: 681: showLed2 = 0x03;
	movlw	low(03h)
	movwf	(_showLed2)
	line	682
;main.c: 682: }
	goto	l1349
	line	683
	
l3678:	
;main.c: 683: else if(zeroStep == 7)
		movlw	7
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2451
	goto	u2450
u2451:
	goto	l3682
u2450:
	line	685
	
l3680:	
;main.c: 684: {
;main.c: 685: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	686
;main.c: 686: showLed2 = 0x07;
	movlw	low(07h)
	movwf	(_showLed2)
	line	687
;main.c: 687: }
	goto	l1349
	line	688
	
l3682:	
;main.c: 688: else if(zeroStep == 8)
		movlw	8
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l3686
u2460:
	line	690
	
l3684:	
;main.c: 689: {
;main.c: 690: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	691
;main.c: 691: showLed2 = 0x0F;
	movlw	low(0Fh)
	movwf	(_showLed2)
	line	692
;main.c: 692: }
	goto	l1349
	line	693
	
l3686:	
;main.c: 693: else if(zeroStep == 9)
		movlw	9
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l3690
u2470:
	line	695
	
l3688:	
;main.c: 694: {
;main.c: 695: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	696
;main.c: 696: showLed2 = 0x2F;
	movlw	low(02Fh)
	movwf	(_showLed2)
	line	697
;main.c: 697: }
	goto	l1349
	line	698
	
l3690:	
;main.c: 698: else if(zeroStep == 10)
		movlw	10
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l3694
u2480:
	line	700
	
l3692:	
;main.c: 699: {
;main.c: 700: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	701
;main.c: 701: showLed2 = 0x6F;
	movlw	low(06Fh)
	movwf	(_showLed2)
	line	702
;main.c: 702: }
	goto	l1349
	line	703
	
l3694:	
;main.c: 703: else if(zeroStep == 11)
		movlw	11
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l3698
u2490:
	line	705
	
l3696:	
;main.c: 704: {
;main.c: 705: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	706
;main.c: 706: showLed2 = 0xEF;
	movlw	low(0EFh)
	movwf	(_showLed2)
	line	707
;main.c: 707: }
	goto	l1349
	line	708
	
l3698:	
;main.c: 708: else if(zeroStep == 12)
		movlw	12
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l1343
u2500:
	goto	l3696
	line	713
	
l1343:	
	
l1349:	
	return
	opt stack 0
GLOBAL	__end_of_setZeroStep
	__end_of_setZeroStep:
	signat	_setZeroStep,89
	global	_initTM1650

;; *************** function _initTM1650 *****************
;; Defined at:
;;		line 597 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	597
global __ptext8
__ptext8:	;psect for function _initTM1650
psect	text8
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	597
	global	__size_of_initTM1650
	__size_of_initTM1650	equ	__end_of_initTM1650-_initTM1650
	
_initTM1650:	
;incstack = 0
	opt	stack 3
; Regs used in _initTM1650: [wreg+status,2+status,0+pclath+cstack]
	line	599
	
l3622:	
;main.c: 599: tm1650cmd(0X48,0x11);
	movlw	low(011h)
	movwf	(tm1650cmd@seg_data)
	movlw	low(048h)
	fcall	_tm1650cmd
	line	600
# 600 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 600 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 600 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 600 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 600 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 600 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text8
	line	601
;main.c: 601: tm1650cmd(0X68,0xFF);
	movlw	low(0FFh)
	movwf	(tm1650cmd@seg_data)
	movlw	low(068h)
	fcall	_tm1650cmd
	line	602
# 602 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 602 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 602 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 602 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 602 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 602 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text8
	line	603
;main.c: 603: tm1650cmd(0X6A,0xFF);
	movlw	low(0FFh)
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Ah)
	fcall	_tm1650cmd
	line	604
# 604 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 604 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 604 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 604 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 604 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 604 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text8
	line	605
;main.c: 605: tm1650cmd(0X6C,0xFF);
	movlw	low(0FFh)
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Ch)
	fcall	_tm1650cmd
	line	606
# 606 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 606 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 606 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 606 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 606 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 606 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text8
	line	607
;main.c: 607: tm1650cmd(0X6E,0xFF);
	movlw	low(0FFh)
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Eh)
	fcall	_tm1650cmd
	line	610
	
l1315:	
	return
	opt stack 0
GLOBAL	__end_of_initTM1650
	__end_of_initTM1650:
	signat	_initTM1650,89
	global	_tm1650cmd

;; *************** function _tm1650cmd *****************
;; Defined at:
;;		line 588 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	588
global __ptext9
__ptext9:	;psect for function _tm1650cmd
psect	text9
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	588
	global	__size_of_tm1650cmd
	__size_of_tm1650cmd	equ	__end_of_tm1650cmd-_tm1650cmd
	
_tm1650cmd:	
;incstack = 0
	opt	stack 3
; Regs used in _tm1650cmd: [wreg+status,2+status,0+pclath+cstack]
;tm1650cmd@digAddr stored from wreg
	movwf	(tm1650cmd@digAddr)
	line	590
	
l3530:	
;main.c: 590: TM1650_START();
	fcall	_TM1650_START
	line	591
	
l3532:	
;main.c: 591: write_8bit(digAddr);
	movf	(tm1650cmd@digAddr),w
	fcall	_write_8bit
	line	592
	
l3534:	
;main.c: 592: write_8bit(seg_data);
	movf	(tm1650cmd@seg_data),w
	fcall	_write_8bit
	line	593
;main.c: 593: TM1650_STOP();
	fcall	_TM1650_STOP
	line	594
	
l1312:	
	return
	opt stack 0
GLOBAL	__end_of_tm1650cmd
	__end_of_tm1650cmd:
	signat	_tm1650cmd,8313
	global	_write_8bit

;; *************** function _write_8bit *****************
;; Defined at:
;;		line 486 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	486
global __ptext10
__ptext10:	;psect for function _write_8bit
psect	text10
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	486
	global	__size_of_write_8bit
	__size_of_write_8bit	equ	__end_of_write_8bit-_write_8bit
	
_write_8bit:	
;incstack = 0
	opt	stack 3
; Regs used in _write_8bit: [wreg+status,2+status,0]
;write_8bit@dat stored from wreg
	movwf	(write_8bit@dat)
	line	489
	
l3308:	
;main.c: 488: unsigned char i;
;main.c: 489: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	490
	
l3310:	
;main.c: 490: for(i=0;i<8;i++)
	clrf	(write_8bit@i)
	line	491
	
l1296:	
	line	492
;main.c: 491: {
;main.c: 492: if(dat&0x80)
	btfss	(write_8bit@dat),(7)&7
	goto	u2051
	goto	u2050
u2051:
	goto	l1298
u2050:
	line	494
	
l3316:	
;main.c: 493: {
;main.c: 494: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	495
# 495 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 495 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 495 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 495 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 495 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 495 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	496
# 496 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 496 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 496 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 496 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 496 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 496 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text10
	line	497
;main.c: 497: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	498
# 498 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 498 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 498 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 498 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 498 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 498 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	499
# 499 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 499 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 499 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 499 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 499 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 499 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	500
# 500 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 500 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 500 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 500 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 500 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 500 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	501
# 501 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 501 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 501 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 501 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 501 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 501 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	502
# 502 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 502 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 502 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 502 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 502 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 502 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text10
	line	503
;main.c: 503: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	504
;main.c: 504: }
	goto	l1299
	line	505
	
l1298:	
	line	507
;main.c: 505: else
;main.c: 506: {
;main.c: 507: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	508
# 508 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 508 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 508 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 508 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 508 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 508 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	509
# 509 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 509 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 509 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 509 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 509 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 509 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text10
	line	510
;main.c: 510: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	511
# 511 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 511 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 511 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 511 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 511 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 511 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	512
# 512 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 512 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 512 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 512 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 512 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 512 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	513
# 513 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 513 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 513 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 513 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 513 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 513 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	514
# 514 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 514 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 514 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 514 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 514 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 514 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	515
# 515 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 515 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 515 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 515 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 515 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 515 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text10
	line	516
;main.c: 516: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	517
	
l1299:	
	line	518
;main.c: 517: }
;main.c: 518: dat<<=1;
	clrc
	rlf	(write_8bit@dat),f
	line	490
	
l3318:	
	incf	(write_8bit@i),f
	
l3320:	
	movlw	low(08h)
	subwf	(write_8bit@i),w
	skipc
	goto	u2061
	goto	u2060
u2061:
	goto	l1296
u2060:
	
l1297:	
	line	520
;main.c: 519: }
;main.c: 520: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	521
# 521 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 521 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 521 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 521 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 521 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 521 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	522
# 522 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 522 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 522 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 522 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 522 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 522 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	523
# 523 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 523 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 523 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 523 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 523 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 523 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	524
# 524 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 524 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 524 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 524 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 524 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 524 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text10
	line	525
;main.c: 525: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	526
# 526 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 526 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 526 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 526 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 526 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 526 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	527
# 527 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 527 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 527 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 527 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 527 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 527 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	528
# 528 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 528 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 528 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 528 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 528 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 528 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	529
# 529 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 529 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 529 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 529 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 529 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 529 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	530
# 530 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 530 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 530 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 530 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 530 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 530 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text10
	line	531
;main.c: 531: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	532
# 532 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 532 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 532 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 532 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 532 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 532 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	533
# 533 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 533 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 533 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 533 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 533 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 533 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text10
	line	534
	
l1300:	
	return
	opt stack 0
GLOBAL	__end_of_write_8bit
	__end_of_write_8bit:
	signat	_write_8bit,4217
	global	_TM1650_STOP

;; *************** function _TM1650_STOP *****************
;; Defined at:
;;		line 472 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	472
global __ptext11
__ptext11:	;psect for function _TM1650_STOP
psect	text11
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	472
	global	__size_of_TM1650_STOP
	__size_of_TM1650_STOP	equ	__end_of_TM1650_STOP-_TM1650_STOP
	
_TM1650_STOP:	
;incstack = 0
	opt	stack 3
; Regs used in _TM1650_STOP: []
	line	474
	
l3306:	
;main.c: 474: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	475
# 475 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 475 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 475 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 475 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 475 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 475 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text11
	line	476
;main.c: 476: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	477
# 477 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 477 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 477 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 477 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 477 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 477 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text11
	line	478
;main.c: 478: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	479
# 479 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 479 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 479 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 479 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 479 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 479 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text11
	line	480
;main.c: 480: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	481
;main.c: 481: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	482
	
l1293:	
	return
	opt stack 0
GLOBAL	__end_of_TM1650_STOP
	__end_of_TM1650_STOP:
	signat	_TM1650_STOP,89
	global	_TM1650_START

;; *************** function _TM1650_START *****************
;; Defined at:
;;		line 461 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	461
global __ptext12
__ptext12:	;psect for function _TM1650_START
psect	text12
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	461
	global	__size_of_TM1650_START
	__size_of_TM1650_START	equ	__end_of_TM1650_START-_TM1650_START
	
_TM1650_START:	
;incstack = 0
	opt	stack 3
; Regs used in _TM1650_START: []
	line	463
	
l3304:	
;main.c: 463: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	464
;main.c: 464: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	465
# 465 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 465 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 465 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 465 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 465 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 465 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text12
	line	466
;main.c: 466: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	467
# 467 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 467 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 467 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 467 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 467 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 467 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text12
	line	468
;main.c: 468: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	469
	
l1290:	
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
psect	text13,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
global __ptext13
__ptext13:	;psect for function ___lwmod
psect	text13
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l3986:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l4002
u3020:
	line	14
	
l3988:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l3992
	line	16
	
l3990:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l3992:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l3990
u3030:
	line	20
	
l3994:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3045
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3045:
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l3998
u3040:
	line	21
	
l3996:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l3998:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l4000:	
	decfsz	(___lwmod@counter),f
	goto	u3051
	goto	u3050
u3051:
	goto	l3994
u3050:
	line	25
	
l4002:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l2039:	
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
psect	text14,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
global __ptext14
__ptext14:	;psect for function ___lbmod
psect	text14
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
	
l3968:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3970:	
	clrf	(___lbmod@rem)
	line	12
	
l3972:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2995:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2995
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3974:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3976:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3001
	goto	u3000
u3001:
	goto	l3980
u3000:
	line	15
	
l3978:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3980:	
	decfsz	(___lbmod@counter),f
	goto	u3011
	goto	u3010
u3011:
	goto	l3972
u3010:
	line	17
	
l3982:	
	movf	(___lbmod@rem),w
	line	18
	
l1961:	
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
psect	text15,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
global __ptext15
__ptext15:	;psect for function ___lbdiv
psect	text15
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
	
l3944:	
	clrf	(___lbdiv@quotient)
	line	10
	
l3946:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l3964
u2950:
	line	11
	
l3948:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l3952
	
l1950:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l3950:	
	incf	(___lbdiv@counter),f
	line	12
	
l3952:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l1950
u2960:
	line	16
	
l1952:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l3954:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u2971
	goto	u2970
u2971:
	goto	l3960
u2970:
	line	19
	
l3956:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l3958:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l3960:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l3962:	
	decfsz	(___lbdiv@counter),f
	goto	u2981
	goto	u2980
u2981:
	goto	l1952
u2980:
	line	25
	
l3964:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1955:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_WorkSleep

;; *************** function _WorkSleep *****************
;; Defined at:
;;		line 393 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	393
global __ptext16
__ptext16:	;psect for function _WorkSleep
psect	text16
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	393
	global	__size_of_WorkSleep
	__size_of_WorkSleep	equ	__end_of_WorkSleep-_WorkSleep
	
_WorkSleep:	
;incstack = 0
	opt	stack 2
; Regs used in _WorkSleep: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	399
	
l4610:	
	line	405
	
l4612:	
;main.c: 405: INTCON = 0;
	clrf	(11)	;volatile
	line	406
;main.c: 406: PIE1 = 0;
	clrf	(13)	;volatile
	line	407
;main.c: 407: PIE2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(264)^0100h	;volatile
	line	408
;main.c: 408: PIR1 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(12)	;volatile
	line	409
;main.c: 409: PIR2 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(263)^0100h	;volatile
	line	410
;main.c: 410: T2CON = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(18)	;volatile
	line	411
;main.c: 411: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(156)^080h	;volatile
	line	412
	
l4614:	
;main.c: 412: SWDTEN = 0;
	bcf	(1089/8)^080h,(1089)&7	;volatile
	line	413
# 413 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
clrwdt ;# 
psect	text16
	line	415
;main.c: 415: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(157)^080h	;volatile
	line	418
	
l4616:	
;main.c: 418: TRISA = 0x22;
	movlw	low(022h)
	movwf	(133)^080h	;volatile
	line	419
	
l4618:	
;main.c: 419: PORTA = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	420
;main.c: 420: TRISB = 0x18;
	movlw	low(018h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	421
	
l4620:	
;main.c: 421: TRISC = 0x00;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(390)^0180h	;volatile
	line	422
	
l4622:	
;main.c: 422: PORTC = 0x01;
	movlw	low(01h)
	movwf	(389)^0180h	;volatile
	line	423
	
l4624:	
;main.c: 423: PORTB = 0x80;
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	424
	
l4626:	
;main.c: 424: RACIF = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2105/8)^0100h,(2105)&7	;volatile
	line	425
	
l4628:	
;main.c: 425: IOCA = 0x20;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank3
	movwf	(392)^0180h	;volatile
	line	426
	
l4630:	
;main.c: 426: RACIE = 1;
	bcf	status, 5	;RP0=0, select bank2
	bsf	(2113/8)^0100h,(2113)&7	;volatile
	line	427
	
l4632:	
;main.c: 427: PORTA;
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	line	439
	
l4634:	
;main.c: 439: SystemEnterSleep();
	fcall	_SystemEnterSleep
	line	440
# 440 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 440 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 440 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 440 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 440 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
# 440 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text16
	line	441
	
l4636:	
;main.c: 441: if(RACIF)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2105/8)^0100h,(2105)&7	;volatile
	goto	u4211
	goto	u4210
u4211:
	goto	l4642
u4210:
	line	443
	
l4638:	
;main.c: 442: {
;main.c: 443: RACIF = 0;
	bcf	(2105/8)^0100h,(2105)&7	;volatile
	line	444
	
l4640:	
;main.c: 444: PORTA;
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	line	446
	
l4642:	
;main.c: 445: }
;main.c: 446: if(RCCIF)
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2106/8)^0100h,(2106)&7	;volatile
	goto	u4221
	goto	u4220
u4221:
	goto	l4648
u4220:
	line	448
	
l4644:	
;main.c: 447: {
;main.c: 448: RCCIF = 0;
	bcf	(2106/8)^0100h,(2106)&7	;volatile
	line	449
	
l4646:	
;main.c: 449: PORTC;
	bsf	status, 5	;RP0=1, select bank3
	movf	(389)^0180h,w	;volatile
	line	452
	
l4648:	
;main.c: 450: }
;main.c: 452: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	453
	
l4650:	
;main.c: 453: Init_System();
	fcall	_Init_System
	line	456
	
l1287:	
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
;;  wake            2    6[BANK0 ] unsigned int 
;;  KeyResTemp      2    4[BANK0 ] unsigned int 
;;  KeyValue        2    2[BANK0 ] unsigned int 
;;  cnt             1    8[BANK0 ] unsigned char 
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       9       0       0       0
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
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	578
global __ptext17
__ptext17:	;psect for function _SystemEnterSleep
psect	text17
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
	
l1671:	
	line	592
# 592 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
clrwdt ;# 
psect	text17
	line	593
	
l4528:	
;CheckTouchKey.c: 593: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	594
	
l4530:	
;CheckTouchKey.c: 594: OPTION_REG |= 0x07;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(129)^080h,f	;volatile
	line	596
	
l4532:	
;CheckTouchKey.c: 596: OPTION_REG |= 0x08;
	bsf	(129)^080h+(3/8),(3)&7	;volatile
	line	597
# 597 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
clrwdt ;# 
psect	text17
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\TouchKeyConst.h"
	line	5
	
l4534:	
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	600
# 600 "D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
clrwdt ;# 
psect	text17
	line	602
	
l4536:	
;CheckTouchKey.c: 602: KEYCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(146)^080h	;volatile
	line	603
	
l4538:	
;CheckTouchKey.c: 603: KEYCON2 = 0;
	clrf	(151)^080h	;volatile
	line	605
	
l4540:	
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
psect	text17
	line	609
	
l4542:	
;CheckTouchKey.c: 609: OSCCON = 0x71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	613
	
l4544:	
;CheckTouchKey.c: 613: ClearResSum();
	fcall	_ClearResSum
	line	614
	
l4546:	
;CheckTouchKey.c: 614: b_ksleep = 1;
	bsf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	line	615
	
l4548:	
;CheckTouchKey.c: 615: GetTouchKeyValue();
	fcall	_GetTouchKeyValue
	line	617
	
l4550:	
;CheckTouchKey.c: 617: cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SystemEnterSleep@cnt)
	line	618
	
l4552:	
;CheckTouchKey.c: 618: wake = 1;
	clrf	(SystemEnterSleep@wake)
	incf	(SystemEnterSleep@wake),f
	clrf	(SystemEnterSleep@wake+1)
	line	619
	
l4554:	
;CheckTouchKey.c: 619: if( RBIF || RCCIF || RACIF)
	btfsc	(88/8),(88)&7	;volatile
	goto	u4121
	goto	u4120
u4121:
	goto	l4560
u4120:
	
l4556:	
	bsf	status, 6	;RP1=1, select bank2
	btfsc	(2106/8)^0100h,(2106)&7	;volatile
	goto	u4131
	goto	u4130
u4131:
	goto	l4560
u4130:
	
l4558:	
	btfss	(2105/8)^0100h,(2105)&7	;volatile
	goto	u4141
	goto	u4140
u4141:
	goto	l4572
u4140:
	line	621
	
l4560:	
;CheckTouchKey.c: 620: {
;CheckTouchKey.c: 621: ClearResSum();
	fcall	_ClearResSum
	line	622
	
l4562:	
;CheckTouchKey.c: 622: KeyCounter = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	line	623
	
l4564:	
;CheckTouchKey.c: 623: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	624
	
l4566:	
;CheckTouchKey.c: 624: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	l1675
	line	630
	
l4572:	
	bcf	status, 6	;RP1=0, select bank0
	movf	(SystemEnterSleep@wake),w
	andlw	07h
	btfsc	status,2
	goto	u4151
	goto	u4150
u4151:
	goto	l4606
u4150:
	line	633
	
l4574:	
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
	
l4576:	
;CheckTouchKey.c: 634: if(KeyResTemp)
	movf	((SystemEnterSleep@KeyResTemp)),w
iorwf	((SystemEnterSleep@KeyResTemp+1)),w
	btfsc	status,2
	goto	u4161
	goto	u4160
u4161:
	goto	l4606
u4160:
	line	636
	
l4578:	
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
	
l4580:	
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
	goto	u4175
	movf	(SystemEnterSleep@KeyValue),w
	subwf	0+(??_SystemEnterSleep+0)+0,w
u4175:
	skipc
	goto	u4171
	goto	u4170
u4171:
	goto	l4604
u4170:
	line	640
	
l4582:	
;CheckTouchKey.c: 639: {
;CheckTouchKey.c: 640: cnt = 0;
	clrf	(SystemEnterSleep@cnt)
	line	641
	
l4584:	
;CheckTouchKey.c: 641: wake = 1;
	clrf	(SystemEnterSleep@wake)
	incf	(SystemEnterSleep@wake),f
	clrf	(SystemEnterSleep@wake+1)
	line	644
	
l4586:	
	movf	(SystemEnterSleep@wake),w
	andlw	07h
	btfss	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l4590
u4180:
	line	646
	
l4588:	
;CheckTouchKey.c: 645: {
;CheckTouchKey.c: 646: KeyClearOne(cnt);
	movf	(SystemEnterSleep@cnt),w
	fcall	_KeyClearOne
	line	648
	
l4590:	
;CheckTouchKey.c: 647: }
;CheckTouchKey.c: 648: wake <<= 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(SystemEnterSleep@wake),f
	rlf	(SystemEnterSleep@wake+1),f
	line	649
	
l4592:	
	movlw	low(03h)
	incf	(SystemEnterSleep@cnt),f
	subwf	((SystemEnterSleep@cnt)),w
	skipc
	goto	u4191
	goto	u4190
u4191:
	goto	l4586
u4190:
	goto	l4560
	line	658
	
l4604:	
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
	
l4606:	
;CheckTouchKey.c: 661: }
;CheckTouchKey.c: 662: }
;CheckTouchKey.c: 663: wake <<= 1;
	clrc
	rlf	(SystemEnterSleep@wake),f
	rlf	(SystemEnterSleep@wake+1),f
	line	664
	
l4608:	
	movlw	low(03h)
	incf	(SystemEnterSleep@cnt),f
	subwf	((SystemEnterSleep@cnt)),w
	skipc
	goto	u4201
	goto	u4200
u4201:
	goto	l4572
u4200:
	goto	l1671
	line	667
	
l1675:	
	return
	opt stack 0
GLOBAL	__end_of_SystemEnterSleep
	__end_of_SystemEnterSleep:
	signat	_SystemEnterSleep,89
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 117 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	117
global __ptext18
__ptext18:	;psect for function _Refurbish_Sfr
psect	text18
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	117
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 4
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	119
	
l3408:	
;main.c: 119: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(13)	;volatile
	line	120
;main.c: 120: PR2 = 250;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	121
;main.c: 121: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	122
	
l3410:	
;main.c: 122: if (4 != T2CON)
		movlw	4
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((18)),w	;volatile
	btfsc	status,2
	goto	u2131
	goto	u2130
u2131:
	goto	l1199
u2130:
	line	123
	
l3412:	
;main.c: 123: T2CON = 4;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	124
	
l1199:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 76 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	76
global __ptext19
__ptext19:	;psect for function _Init_System
psect	text19
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	76
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	78
	
l3376:	
# 78 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
	line	79
# 79 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
clrwdt ;# 
psect	text19
	line	80
	
l3378:	
;main.c: 80: INTCON = 0;
	clrf	(11)	;volatile
	line	81
	
l3380:	
;main.c: 81: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	82
	
l3382:	
;main.c: 82: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	83
	
l3384:	
;main.c: 83: SWDTEN = 1;
	bsf	(1089/8)^080h,(1089)&7	;volatile
	line	84
# 84 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
clrwdt ;# 
psect	text19
	line	88
;main.c: 88: TRISA = 0x22;
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	89
	
l3386:	
;main.c: 89: PORTA = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	90
	
l3388:	
;main.c: 90: TRISB = 0x18;
	movlw	low(018h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	91
;main.c: 91: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	92
;main.c: 92: WPUB = 0x00;
	clrf	(8)	;volatile
	line	93
;main.c: 93: TRISC = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(390)^0180h	;volatile
	line	94
;main.c: 94: PORTC = 0;
	clrf	(389)^0180h	;volatile
	line	95
;main.c: 95: WPUC = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	clrf	(277)^0100h	;volatile
	line	96
	
l3390:	
;main.c: 96: ANSEL0 = 0x01;
	movlw	low(01h)
	movwf	(272)^0100h	;volatile
	line	97
	
l3392:	
;main.c: 97: ANSEL1 = 0x04;
	movlw	low(04h)
	movwf	(273)^0100h	;volatile
	line	98
	
l3394:	
;main.c: 98: ANSEL2 = 0x01;
	movlw	low(01h)
	movwf	(274)^0100h	;volatile
	line	100
	
l3396:	
;main.c: 100: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(13)	;volatile
	line	101
	
l3398:	
;main.c: 101: PR2 = 250;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	102
	
l3400:	
;main.c: 102: T2CON = 4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	104
	
l3402:	
;main.c: 104: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	105
	
l3404:	
;main.c: 105: ADCON0 = 0XC1;
	movlw	low(0C1h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(157)^080h	;volatile
	line	106
	
l3406:	
;main.c: 106: ADON = 1;
	bsf	(1256/8)^080h,(1256)&7	;volatile
	line	107
	
l1195:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 952 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	952
global __ptext20
__ptext20:	;psect for function _chrgCtr
psect	text20
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	952
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	954
	
l4366:	
;main.c: 954: if(0x20 & PORTA)
	btfss	(5),(5)&7	;volatile
	goto	u3841
	goto	u3840
u3841:
	goto	l4388
u3840:
	line	956
	
l4368:	
;main.c: 955: {
;main.c: 956: checkChrgAD();
	fcall	_checkChrgAD
	line	957
	
l4370:	
;main.c: 957: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	958
	
l4372:	
;main.c: 958: workStep = 0;
	clrf	(_workStep)
	line	959
	
l4374:	
;main.c: 959: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	960
	
l4376:	
;main.c: 960: ledLightTime = 0;
	clrf	(_ledLightTime)
	clrf	(_ledLightTime+1)
	line	961
	
l4378:	
;main.c: 961: if(batResult > 1555)
	movlw	06h
	subwf	(_batResult+1),w
	movlw	014h
	skipnz
	subwf	(_batResult),w
	skipc
	goto	u3851
	goto	u3850
u3851:
	goto	l4386
u3850:
	line	963
	
l4380:	
;main.c: 962: {
;main.c: 963: if(++chrgFullTime > 2500)
	incf	(_chrgFullTime),f
	skipnz
	incf	(_chrgFullTime+1),f
	movlw	09h
	subwf	((_chrgFullTime+1)),w
	movlw	0C5h
	skipnz
	subwf	((_chrgFullTime)),w
	skipc
	goto	u3861
	goto	u3860
u3861:
	goto	l1432
u3860:
	line	965
	
l4382:	
;main.c: 964: {
;main.c: 965: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	clrf	(_chrgFullTime+1)
	line	966
	
l4384:	
;main.c: 966: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l1432
	line	971
	
l4386:	
;main.c: 969: else
;main.c: 970: {
;main.c: 971: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	clrf	(_chrgFullTime+1)
	goto	l1432
	line	976
	
l4388:	
;main.c: 974: else
;main.c: 975: {
;main.c: 976: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3871
	goto	u3870
u3871:
	goto	l1431
u3870:
	line	978
	
l4390:	
;main.c: 977: {
;main.c: 978: zeroStep = 0;
	clrf	(_zeroStep)
	line	979
	
l1431:	
	line	980
;main.c: 979: }
;main.c: 980: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	981
;main.c: 981: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	982
;main.c: 982: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	clrf	(_chrgFullTime+1)
	line	983
;main.c: 983: chrgDuty = 0;
	clrf	(_chrgDuty)
	line	984
;main.c: 984: chrgLockFlag = 0;
	clrf	(_chrgLockFlag)
	line	986
	
l1432:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_checkChrgAD

;; *************** function _checkChrgAD *****************
;; Defined at:
;;		line 300 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	300
global __ptext21
__ptext21:	;psect for function _checkChrgAD
psect	text21
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	300
	global	__size_of_checkChrgAD
	__size_of_checkChrgAD	equ	__end_of_checkChrgAD-_checkChrgAD
	
_checkChrgAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkChrgAD: [wreg+status,2+status,0+pclath+cstack]
	line	302
	
l3566:	
;main.c: 302: chrgResult = Read_ADC(16,1);
	clrf	(Read_ADC@ADCLDORef)
	incf	(Read_ADC@ADCLDORef),f
	movlw	low(010h)
	fcall	_Read_ADC
	movf	(1+(?_Read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_chrgResult+1)
	movf	(0+(?_Read_ADC)),w
	movwf	(_chrgResult)
	line	303
	
l1254:	
	return
	opt stack 0
GLOBAL	__end_of_checkChrgAD
	__end_of_checkChrgAD:
	signat	_checkChrgAD,89
	global	_checkBat

;; *************** function _checkBat *****************
;; Defined at:
;;		line 325 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	325
global __ptext22
__ptext22:	;psect for function _checkBat
psect	text22
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	325
	global	__size_of_checkBat
	__size_of_checkBat	equ	__end_of_checkBat-_checkBat
	
_checkBat:	
;incstack = 0
	opt	stack 5
; Regs used in _checkBat: [wreg+status,2+status,0+pclath+cstack]
	line	327
	
l4652:	
;main.c: 327: batResult = Read_ADC(10,1);
	clrf	(Read_ADC@ADCLDORef)
	incf	(Read_ADC@ADCLDORef),f
	movlw	low(0Ah)
	fcall	_Read_ADC
	movf	(1+(?_Read_ADC)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_batResult+1)
	movf	(0+(?_Read_ADC)),w
	movwf	(_batResult)
	line	328
	
l4654:	
;main.c: 328: if(batResult < 1118)
	movlw	04h
	subwf	(_batResult+1),w
	movlw	05Eh
	skipnz
	subwf	(_batResult),w
	skipnc
	goto	u4231
	goto	u4230
u4231:
	goto	l4670
u4230:
	line	330
	
l4656:	
;main.c: 329: {
;main.c: 330: batValue = 0;
	clrf	(_batValue)
	line	331
	
l4658:	
;main.c: 331: if(workStep > 0 && ++lowBatTime > 200)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l1269
u4240:
	
l4660:	
	movlw	low(0C9h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u4251
	goto	u4250
u4251:
	goto	l1269
u4250:
	line	333
	
l4662:	
;main.c: 332: {
;main.c: 333: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	334
	
l4664:	
;main.c: 334: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	335
;main.c: 335: workStep = 0;
	clrf	(_workStep)
	line	336
	
l4666:	
;main.c: 336: zeroStep = 12;
	movlw	low(0Ch)
	movwf	(_zeroStep)
	line	337
	
l4668:	
;main.c: 337: ledLightTime = 0;
	clrf	(_ledLightTime)
	clrf	(_ledLightTime+1)
	goto	l1269
	line	342
	
l4670:	
;main.c: 340: else
;main.c: 341: {
;main.c: 342: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	343
	
l4672:	
;main.c: 343: if(batResult >= 1376)
	movlw	05h
	subwf	(_batResult+1),w
	movlw	060h
	skipnz
	subwf	(_batResult),w
	skipc
	goto	u4261
	goto	u4260
u4261:
	goto	l4676
u4260:
	line	345
	
l4674:	
;main.c: 344: {
;main.c: 345: batValue = ((batResult - 1376) /2) + 16;
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
	line	346
;main.c: 346: }
	goto	l4678
	line	349
	
l4676:	
;main.c: 347: else
;main.c: 348: {
;main.c: 349: batValue = (batResult - 1118) / 16;
	movf	(_batResult),w
	addlw	low(0FBA2h)
	movwf	(??_checkBat+0)+0
	movf	(_batResult+1),w
	skipnc
	addlw	1
	addlw	high(0FBA2h)
	movwf	1+(??_checkBat+0)+0
	movlw	04h
u4275:
	clrc
	rrf	(??_checkBat+0)+1,f
	rrf	(??_checkBat+0)+0,f
	addlw	-1
	skipz
	goto	u4275
	movf	0+(??_checkBat+0)+0,w
	movwf	(_batValue)
	line	352
	
l4678:	
;main.c: 350: }
;main.c: 352: if(batValue > 99)
	movlw	low(064h)
	subwf	(_batValue),w
	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l1269
u4280:
	line	353
	
l4680:	
;main.c: 353: batValue = 99;
	movlw	low(063h)
	movwf	(_batValue)
	line	355
	
l1269:	
	return
	opt stack 0
GLOBAL	__end_of_checkBat
	__end_of_checkBat:
	signat	_checkBat,89
	global	_Read_ADC

;; *************** function _Read_ADC *****************
;; Defined at:
;;		line 259 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
;;		_checkChrgAD
;;		_checkTempAD
;;		_checkBat
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	259
global __ptext23
__ptext23:	;psect for function _Read_ADC
psect	text23
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	259
	global	__size_of_Read_ADC
	__size_of_Read_ADC	equ	__end_of_Read_ADC-_Read_ADC
	
_Read_ADC:	
;incstack = 0
	opt	stack 4
; Regs used in _Read_ADC: [wreg+status,2+status,0]
;Read_ADC@ADCchannel stored from wreg
	movwf	(Read_ADC@ADCchannel)
	line	263
	
l3414:	
;main.c: 263: unsigned char i=200;
	movlw	low(0C8h)
	movwf	(Read_ADC@i)
	line	265
	
l3416:	
;main.c: 265: if(ADCLDORef==0)
	movf	((Read_ADC@ADCLDORef)),w
	btfss	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l3420
u2140:
	line	267
	
l3418:	
;main.c: 266: {
;main.c: 267: ADCON1 = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(156)^080h	;volatile
	line	268
;main.c: 268: }
	goto	l3426
	line	269
	
l3420:	
;main.c: 269: else if(ADCLDORef==1)
		decf	((Read_ADC@ADCLDORef)),w
	btfss	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l3424
u2150:
	line	271
	
l3422:	
;main.c: 270: {
;main.c: 271: ADCON1 = 0B00000101;
	movlw	low(05h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	272
;main.c: 272: }
	goto	l3426
	line	275
	
l3424:	
;main.c: 273: else
;main.c: 274: {
;main.c: 275: ADCON1 = 0B00000110;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	278
	
l3426:	
;main.c: 276: }
;main.c: 278: CHS4 = 0;
	bcf	(1254/8)^080h,(1254)&7	;volatile
	line	279
;main.c: 279: if(ADCchannel >=16)
	movlw	low(010h)
	subwf	(Read_ADC@ADCchannel),w
	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l1245
u2160:
	line	281
	
l3428:	
;main.c: 280: {
;main.c: 281: ADCchannel -= 16;
	movlw	010h
	subwf	(Read_ADC@ADCchannel),f
	line	282
	
l3430:	
;main.c: 282: CHS4 = 1;
	bsf	(1254/8)^080h,(1254)&7	;volatile
	line	283
	
l1245:	
	line	285
;main.c: 283: }
;main.c: 285: ADCON0 &= 0b11000011;
	movlw	low(0C3h)
	andwf	(157)^080h,f	;volatile
	line	286
;main.c: 286: ADCON0 |= ADCchannel<<2;
	movf	(Read_ADC@ADCchannel),w
	movwf	(??_Read_ADC+0)+0
	movlw	(02h)-1
u2175:
	clrc
	rlf	(??_Read_ADC+0)+0,f
	addlw	-1
	skipz
	goto	u2175
	clrc
	rlf	(??_Read_ADC+0)+0,w
	iorwf	(157)^080h,f	;volatile
	line	287
# 287 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text23
	line	288
	
l3432:	
;main.c: 288: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	289
;main.c: 289: while(GODONE==1&&i>0)
	goto	l3436
	line	291
	
l3434:	
;main.c: 290: {
;main.c: 291: i--;
	decf	(Read_ADC@i),f
	line	292
# 292 "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
nop ;# 
psect	text23
	line	289
	
l3436:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1257/8)^080h,(1257)&7	;volatile
	goto	u2181
	goto	u2180
u2181:
	goto	l3440
u2180:
	
l3438:	
	movf	((Read_ADC@i)),w
	btfss	status,2
	goto	u2191
	goto	u2190
u2191:
	goto	l3434
u2190:
	line	294
	
l3440:	
;main.c: 293: }
;main.c: 294: Adc_Result = ADRESH<<4;
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
	line	295
	
l3442:	
;main.c: 295: Adc_Result += ADRESL>>4;
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	addwf	(Read_ADC@Adc_Result),f
	skipnc
	incf	(Read_ADC@Adc_Result+1),f
	line	296
	
l3444:	
;main.c: 296: return Adc_Result;
	movf	(Read_ADC@Adc_Result+1),w
	movwf	(?_Read_ADC+1)
	movf	(Read_ADC@Adc_Result),w
	movwf	(?_Read_ADC)
	line	298
	
l1251:	
	return
	opt stack 0
GLOBAL	__end_of_Read_ADC
	__end_of_Read_ADC:
	signat	_Read_ADC,8314
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 127 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	127
global __ptext24
__ptext24:	;psect for function _KeyServer
psect	text24
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	127
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 6
; Regs used in _KeyServer: [wreg+status,2+status,0]
	line	128
	
l4006:	
;main.c: 128: if(key1ProtectTime > 0)
	movf	((_key1ProtectTime)),w
	btfsc	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l4010
u3060:
	line	130
	
l4008:	
;main.c: 129: {
;main.c: 130: key1ProtectTime--;
	decf	(_key1ProtectTime),f
	line	132
	
l4010:	
;main.c: 131: }
;main.c: 132: if(key2ProtectTime > 0)
	movf	((_key2ProtectTime)),w
	btfsc	status,2
	goto	u3071
	goto	u3070
u3071:
	goto	l4014
u3070:
	line	134
	
l4012:	
;main.c: 133: {
;main.c: 134: key2ProtectTime--;
	decf	(_key2ProtectTime),f
	line	136
	
l4014:	
;main.c: 135: }
;main.c: 136: if(key3ProtectTime > 0)
	movf	((_key3ProtectTime)),w
	btfsc	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l4018
u3080:
	line	138
	
l4016:	
;main.c: 137: {
;main.c: 138: key3ProtectTime--;
	decf	(_key3ProtectTime),f
	line	141
	
l4018:	
;main.c: 142: NoTouchTime = 0;
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l4116
u3090:
	line	143
	
l4020:	
;main.c: 143: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	144
	
l4022:	
;main.c: 144: if ((KeyFlag[0] & 0x2) && key2ProtectTime == 0 && key3ProtectTime == 0) {
	btfss	(_KeyFlag),(1)&7	;volatile
	goto	u3101
	goto	u3100
u3101:
	goto	l4040
u3100:
	
l4024:	
	movf	((_key2ProtectTime)),w
	btfss	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l4040
u3110:
	
l4026:	
	movf	((_key3ProtectTime)),w
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l4040
u3120:
	line	146
	
l4028:	
;main.c: 146: key1ProtectTime = 5;
	movlw	low(05h)
	movwf	(_key1ProtectTime)
	line	147
	
l4030:	
;main.c: 147: if(++keyCount1 > 45)
	incf	(_keyCount1),f
	skipnz
	incf	(_keyCount1+1),f
	movlw	0
	subwf	((_keyCount1+1)),w
	movlw	02Eh
	skipnz
	subwf	((_keyCount1)),w
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l4040
u3130:
	line	149
	
l4032:	
;main.c: 148: {
;main.c: 149: keyCount1 = 45;
	movlw	02Dh
	movwf	(_keyCount1)
	clrf	(_keyCount1+1)
	line	150
;main.c: 150: if(workStep > 1 && ++count50 > 25)
	movlw	low(02h)
	subwf	(_workStep),w
	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l4040
u3140:
	
l4034:	
	movlw	low(01Ah)
	incf	(_count50),f
	subwf	((_count50)),w
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l4040
u3150:
	line	152
	
l4036:	
;main.c: 151: {
;main.c: 152: workStep--;
	decf	(_workStep),f
	line	153
	
l4038:	
;main.c: 153: count50 = 0;
	clrf	(_count50)
	line	157
	
l4040:	
;main.c: 154: }
;main.c: 155: }
;main.c: 156: }
;main.c: 157: if ((KeyFlag[0] & 0x1) && key1ProtectTime == 0 && key3ProtectTime == 0) {
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u3161
	goto	u3160
u3161:
	goto	l4062
u3160:
	
l4042:	
	movf	((_key1ProtectTime)),w
	btfss	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l4062
u3170:
	
l4044:	
	movf	((_key3ProtectTime)),w
	btfss	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l4062
u3180:
	line	159
	
l4046:	
;main.c: 159: key2ProtectTime = 5;
	movlw	low(05h)
	movwf	(_key2ProtectTime)
	line	160
	
l4048:	
;main.c: 160: if(++keyCount2 > 45)
	incf	(_keyCount2),f
	skipnz
	incf	(_keyCount2+1),f
	movlw	0
	subwf	((_keyCount2+1)),w
	movlw	02Eh
	skipnz
	subwf	((_keyCount2)),w
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l4062
u3190:
	line	162
	
l4050:	
;main.c: 161: {
;main.c: 162: keyCount2 = 45;
	movlw	02Dh
	movwf	(_keyCount2)
	clrf	(_keyCount2+1)
	line	163
;main.c: 163: if(workStep < 20 && (workStep > 0 || ledLightTime > 0) && ++count50 > 25)
	movlw	low(014h)
	subwf	(_workStep),w
	skipnc
	goto	u3201
	goto	u3200
u3201:
	goto	l4062
u3200:
	
l4052:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l4056
u3210:
	
l4054:	
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l4062
u3220:
	
l4056:	
	movlw	low(01Ah)
	incf	(_count50),f
	subwf	((_count50)),w
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l4062
u3230:
	line	165
	
l4058:	
;main.c: 164: {
;main.c: 165: workStep++;
	incf	(_workStep),f
	line	166
	
l4060:	
;main.c: 166: count50 = 0;
	clrf	(_count50)
	line	170
	
l4062:	
;main.c: 167: }
;main.c: 168: }
;main.c: 169: }
;main.c: 170: if ((KeyFlag[0] & 0x4) && key2ProtectTime == 0 && key1ProtectTime == 0) {
	btfss	(_KeyFlag),(2)&7	;volatile
	goto	u3241
	goto	u3240
u3241:
	goto	l4114
u3240:
	
l4064:	
	movf	((_key2ProtectTime)),w
	btfss	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l4114
u3250:
	
l4066:	
	movf	((_key1ProtectTime)),w
	btfss	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l4114
u3260:
	line	172
	
l4068:	
;main.c: 172: key3ProtectTime = 5;
	movlw	low(05h)
	movwf	(_key3ProtectTime)
	line	173
	
l4070:	
;main.c: 173: if(++keyCount3 > 200)
	incf	(_keyCount3),f
	skipnz
	incf	(_keyCount3+1),f
	movlw	0
	subwf	((_keyCount3+1)),w
	movlw	0C9h
	skipnz
	subwf	((_keyCount3)),w
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l4102
u3270:
	line	175
	
l4072:	
;main.c: 174: {
;main.c: 175: keyCount3 = 200;
	movlw	0C8h
	movwf	(_keyCount3)
	clrf	(_keyCount3+1)
	line	176
	
l4074:	
;main.c: 176: if(longKeyFalg == 0)
	movf	((_longKeyFalg)),w
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l4094
u3280:
	line	178
	
l4076:	
;main.c: 177: {
;main.c: 178: longKeyFalg = 1;
	clrf	(_longKeyFalg)
	incf	(_longKeyFalg),f
	line	179
	
l4078:	
;main.c: 179: if(workStep > 0 || ledLightTime > 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l4082
u3290:
	
l4080:	
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l4088
u3300:
	line	181
	
l4082:	
;main.c: 180: {
;main.c: 181: workStep = 0;
	clrf	(_workStep)
	line	182
	
l4084:	
;main.c: 182: zeroStep = 12;
	movlw	low(0Ch)
	movwf	(_zeroStep)
	line	183
	
l4086:	
;main.c: 183: ledLightTime = 0;
	clrf	(_ledLightTime)
	clrf	(_ledLightTime+1)
	line	184
;main.c: 184: }
	goto	l4102
	line	185
	
l4088:	
;main.c: 185: else if(lowBatFlag == 0)
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3311
	goto	u3310
u3311:
	goto	l4102
u3310:
	line	187
	
l4090:	
;main.c: 186: {
;main.c: 187: workStep = 0;
	clrf	(_workStep)
	line	188
;main.c: 188: zeroStep = 0;
	clrf	(_zeroStep)
	line	189
	
l4092:	
;main.c: 189: ledLightTime = 300;
	movlw	02Ch
	movwf	(_ledLightTime)
	movlw	01h
	movwf	((_ledLightTime))+1
	line	190
;main.c: 191: {
;main.c: 192: shanShuoTime = 250;
	goto	l4102
	line	196
	
l4094:	
;main.c: 196: else if(zeroStep > 0 && ++count64ms >= 12)
	movf	((_zeroStep)),w
	btfsc	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l4102
u3320:
	
l4096:	
	movlw	low(0Ch)
	incf	(_count64ms),f
	subwf	((_count64ms)),w
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l4102
u3330:
	line	198
	
l4098:	
;main.c: 197: {
;main.c: 198: zeroStep--;
	decf	(_zeroStep),f
	line	199
	
l4100:	
;main.c: 199: count64ms = 0;
	clrf	(_count64ms)
	line	202
	
l4102:	
;main.c: 200: }
;main.c: 201: }
;main.c: 202: if(lowBatFlag == 0 && ledLightTime == 0 && longKeyFalg == 0 && keyCount3 % 16 == 0)
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l4114
u3340:
	
l4104:	
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l4114
u3350:
	
l4106:	
	movf	((_longKeyFalg)),w
	btfss	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l4114
u3360:
	
l4108:	
	movf	(_keyCount3),w
	andlw	0Fh
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l4114
u3370:
	line	204
	
l4110:	
;main.c: 203: {
;main.c: 204: zeroStep++;
	incf	(_zeroStep),f
	line	205
	
l4112:	
;main.c: 205: preZero = zeroStep;
	movf	(_zeroStep),w
	movwf	(_preZero)
	line	208
	
l4114:	
;main.c: 206: }
;main.c: 207: }
;main.c: 208: keyCancelTime = 0;
	clrf	(_keyCancelTime)
	line	209
;main.c: 209: }
	goto	l1238
	line	212
	
l4116:	
;main.c: 210: else
;main.c: 211: {
;main.c: 212: if(++keyCancelTime > 5)
	movlw	low(06h)
	incf	(_keyCancelTime),f
	subwf	((_keyCancelTime)),w
	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l4140
u3380:
	line	214
	
l4118:	
;main.c: 213: {
;main.c: 214: keyCancelTime = 0;
	clrf	(_keyCancelTime)
	line	215
	
l4120:	
;main.c: 215: if(keyCount1 > 5 && workStep > 1)
	movlw	0
	subwf	(_keyCount1+1),w
	movlw	06h
	skipnz
	subwf	(_keyCount1),w
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l4126
u3390:
	
l4122:	
	movlw	low(02h)
	subwf	(_workStep),w
	skipc
	goto	u3401
	goto	u3400
u3401:
	goto	l4126
u3400:
	line	217
	
l4124:	
;main.c: 216: {
;main.c: 217: workStep--;
	decf	(_workStep),f
	line	219
	
l4126:	
;main.c: 218: }
;main.c: 219: keyCount1 = 0;
	clrf	(_keyCount1)
	clrf	(_keyCount1+1)
	line	221
	
l4128:	
;main.c: 221: if(keyCount2 > 5 && workStep < 20 && (workStep > 0 || ledLightTime > 0))
	movlw	0
	subwf	(_keyCount2+1),w
	movlw	06h
	skipnz
	subwf	(_keyCount2),w
	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l4138
u3410:
	
l4130:	
	movlw	low(014h)
	subwf	(_workStep),w
	skipnc
	goto	u3421
	goto	u3420
u3421:
	goto	l4138
u3420:
	
l4132:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l4136
u3430:
	
l4134:	
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l4138
u3440:
	line	223
	
l4136:	
;main.c: 222: {
;main.c: 223: workStep++;
	incf	(_workStep),f
	line	225
	
l4138:	
;main.c: 224: }
;main.c: 225: keyCount2 = 0;
	clrf	(_keyCount2)
	clrf	(_keyCount2+1)
	line	233
	
l4140:	
;main.c: 226: }
;main.c: 233: if(preZero == 1 || preZero == 2)
		decf	((_preZero)),w
	btfsc	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l4144
u3450:
	
l4142:	
		movlw	2
	xorwf	((_preZero)),w
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l4148
u3460:
	line	235
	
l4144:	
;main.c: 234: {
;main.c: 235: preZero = 0;
	clrf	(_preZero)
	line	236
	
l4146:	
;main.c: 236: zeroStep = 3;
	movlw	low(03h)
	movwf	(_zeroStep)
	line	238
	
l4148:	
;main.c: 237: }
;main.c: 238: longKeyFalg = 0;
	clrf	(_longKeyFalg)
	line	239
	
l4150:	
;main.c: 239: keyCount3 = 0;
	clrf	(_keyCount3)
	clrf	(_keyCount3+1)
	line	240
	
l4152:	
;main.c: 240: if(zeroStep > 0 && ++count64ms >= 12)
	movf	((_zeroStep)),w
	btfsc	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l1238
u3470:
	
l4154:	
	movlw	low(0Ch)
	incf	(_count64ms),f
	subwf	((_count64ms)),w
	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l1238
u3480:
	line	242
	
l4156:	
;main.c: 241: {
;main.c: 242: zeroStep--;
	decf	(_zeroStep),f
	line	243
	
l4158:	
;main.c: 243: count64ms = 0;
	clrf	(_count64ms)
	line	246
	
l1238:	
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
;;		On exit  : 300/0
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
psect	text25,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	529
global __ptext25
__ptext25:	;psect for function _CheckTouchKey
psect	text25
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	529
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 2
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	531
	
l4442:	
;CheckTouchKey.c: 531: if(!b_kover)
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u4011
	goto	u4010
u4011:
	goto	l1659
u4010:
	line	534
	
l4444:	
;CheckTouchKey.c: 532: {
;CheckTouchKey.c: 534: GetTouchKeyValue();
	fcall	_GetTouchKeyValue
	line	535
	
l4446:	
;CheckTouchKey.c: 535: if(++KeyCounter >= 8)
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l4476
u4020:
	line	537
	
l4448:	
;CheckTouchKey.c: 536: {
;CheckTouchKey.c: 537: KeyCounter = 0;
	clrf	(_KeyCounter)
	line	538
	
l4450:	
;CheckTouchKey.c: 538: b_kover = 1;
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l4476
	line	541
	
l1659:	
;CheckTouchKey.c: 541: else if(!b_kover1)
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u4031
	goto	u4030
u4031:
	goto	l4470
u4030:
	line	544
	
l4452:	
;CheckTouchKey.c: 542: {
;CheckTouchKey.c: 544: CheckOnceResult();
	fcall	_CheckOnceResult
	line	547
;CheckTouchKey.c: 547: TurnKeyFlags();
	fcall	_TurnKeyFlags
	line	548
	
l4454:	
;CheckTouchKey.c: 548: b_kover1 = 1;
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	554
	
l4456:	
;CheckTouchKey.c: 554: if(b_kerr || KeyCounter > KeyValidNumber)
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u4041
	goto	u4040
u4041:
	goto	l4460
u4040:
	
l4458:	
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u4051
	goto	u4050
u4051:
	goto	l4468
u4050:
	line	556
	
l4460:	
;CheckTouchKey.c: 555: {
;CheckTouchKey.c: 556: KeyStopClear();
	fcall	_KeyStopClear
	line	557
	
l4462:	
;CheckTouchKey.c: 557: b_kerr = 0;
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	558
	
l4464:	
;CheckTouchKey.c: 558: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	559
	
l4466:	
;CheckTouchKey.c: 559: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	561
	
l4468:	
;CheckTouchKey.c: 560: }
;CheckTouchKey.c: 561: KeyCounter = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	line	562
;CheckTouchKey.c: 562: }
	goto	l4476
	line	566
	
l4470:	
;CheckTouchKey.c: 563: else
;CheckTouchKey.c: 564: {
;CheckTouchKey.c: 566: CheckKeyOldValue();
	fcall	_CheckKeyOldValue
	line	568
;CheckTouchKey.c: 568: ClearResSum();
	fcall	_ClearResSum
	line	570
	
l4472:	
;CheckTouchKey.c: 570: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	571
	
l4474:	
;CheckTouchKey.c: 571: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	574
	
l4476:	
;CheckTouchKey.c: 572: }
;CheckTouchKey.c: 574: CheckValidTime();
	fcall	_CheckValidTime
	line	575
	
l1667:	
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
psect	text26,local,class=CODE,delta=2,merge=1,group=1
	line	416
global __ptext26
__ptext26:	;psect for function _TurnKeyFlags
psect	text26
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	416
	global	__size_of_TurnKeyFlags
	__size_of_TurnKeyFlags	equ	__end_of_TurnKeyFlags-_TurnKeyFlags
	
_TurnKeyFlags:	
;incstack = 0
	opt	stack 2
; Regs used in _TurnKeyFlags: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	421
	
l3900:	
;CheckTouchKey.c: 418: static unsigned char KeyHaveTimes = 0;
;CheckTouchKey.c: 419: static unsigned char KeyNoTimes = 0;
;CheckTouchKey.c: 421: if(KeyData[0] | KeyData[1])
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l3926
u2870:
	line	423
	
l3902:	
;CheckTouchKey.c: 422: {
;CheckTouchKey.c: 423: KeyNoTimes = 0;
	clrf	(TurnKeyFlags@KeyNoTimes)
	line	425
	
l3904:	
;CheckTouchKey.c: 425: if(KeyData[0] == KeyOldData[0] && KeyData[1] == KeyOldData[1])
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u2881
	goto	u2880
u2881:
	goto	l1640
u2880:
	
l3906:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u2891
	goto	u2890
u2891:
	goto	l1640
u2890:
	line	427
	
l3908:	
	incf	(TurnKeyFlags@KeyHaveTimes),f
	btfsc	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l1647
u2900:
	line	429
	
l3910:	
;CheckTouchKey.c: 428: {
;CheckTouchKey.c: 429: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	line	430
	
l3912:	
;CheckTouchKey.c: 430: KeyFlag[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	line	431
	
l3914:	
;CheckTouchKey.c: 431: KeyFlag[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	line	435
	
l3916:	
;CheckTouchKey.c: 434: {
;CheckTouchKey.c: 435: if(!b_kclr)
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u2911
	goto	u2910
u2911:
	goto	l1644
u2910:
	line	437
	
l3918:	
;CheckTouchKey.c: 436: {
;CheckTouchKey.c: 437: b_kclr = 1;
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	438
	
l3920:	
;CheckTouchKey.c: 438: KeyClearIn();
	fcall	_KeyClearIn
	goto	l1647
	line	443
	
l1640:	
	line	445
;CheckTouchKey.c: 443: else
;CheckTouchKey.c: 444: {
;CheckTouchKey.c: 445: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	446
	
l3922:	
;CheckTouchKey.c: 446: KeyOldData[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	line	447
;CheckTouchKey.c: 447: KeyOldData[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	line	448
	
l3924:	
;CheckTouchKey.c: 448: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	goto	l1647
	line	449
	
l1644:	
	line	450
;CheckTouchKey.c: 449: }
;CheckTouchKey.c: 450: }
	goto	l1647
	line	453
	
l3926:	
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
	
l3928:	
;CheckTouchKey.c: 457: if(++KeyNoTimes >=2)
	movlw	low(02h)
	incf	(TurnKeyFlags@KeyNoTimes),f
	subwf	((TurnKeyFlags@KeyNoTimes)),w
	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l1647
u2920:
	line	459
	
l3930:	
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
	
l3932:	
;CheckTouchKey.c: 463: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	466
	
l1647:	
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
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	line	104
global __ptext27
__ptext27:	;psect for function _KeyClearIn
psect	text27
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	104
	global	__size_of_KeyClearIn
	__size_of_KeyClearIn	equ	__end_of_KeyClearIn-_KeyClearIn
	
_KeyClearIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyClearIn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	107
	
l3536:	
;CheckTouchKey.c: 106: unsigned char cnt;
;CheckTouchKey.c: 107: for(cnt=0;cnt < KeyTotalNumber;cnt++)
	clrf	(KeyClearIn@cnt)
	line	109
	
l3542:	
;CheckTouchKey.c: 108: {
;CheckTouchKey.c: 109: if(!KeyIsIn(cnt))
	movf	(KeyClearIn@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l3546
u2290:
	line	111
	
l3544:	
;CheckTouchKey.c: 110: {
;CheckTouchKey.c: 111: KeyClearOne(cnt);
	movf	(KeyClearIn@cnt),w
	fcall	_KeyClearOne
	line	107
	
l3546:	
	incf	(KeyClearIn@cnt),f
	
l3548:	
	movlw	low(03h)
	subwf	(KeyClearIn@cnt),w
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l3542
u2300:
	line	114
	
l1555:	
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
psect	text28,local,class=CODE,delta=2,merge=1,group=1
	line	123
global __ptext28
__ptext28:	;psect for function _KeyStopClear
psect	text28
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	123
	global	__size_of_KeyStopClear
	__size_of_KeyStopClear	equ	__end_of_KeyStopClear-_KeyStopClear
	
_KeyStopClear:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	126
	
l3778:	
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
	
l3784:	
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
	
l3786:	
;CheckTouchKey.c: 131: KeyClearOne(i);
	movf	(KeyStopClear@i),w
	fcall	_KeyClearOne
	line	128
	
l3788:	
	incf	(KeyStopClear@i),f
	
l3790:	
	movlw	low(03h)
	subwf	(KeyStopClear@i),w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l3784
u2640:
	line	133
	
l1560:	
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
psect	text29,local,class=CODE,delta=2,merge=1,group=1
	line	196
global __ptext29
__ptext29:	;psect for function _GetTouchKeyValue
psect	text29
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	196
	global	__size_of_GetTouchKeyValue
	__size_of_GetTouchKeyValue	equ	__end_of_GetTouchKeyValue-_GetTouchKeyValue
	
_GetTouchKeyValue:	
;incstack = 0
	opt	stack 2
; Regs used in _GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	198
	
l3336:	
;CheckTouchKey.c: 198: unsigned char cnt = 0;
	clrf	(GetTouchKeyValue@cnt)
	line	199
	
l3338:	
;CheckTouchKey.c: 199: unsigned int wake = 1;
	clrf	(GetTouchKeyValue@wake)
	incf	(GetTouchKeyValue@wake),f
	clrf	(GetTouchKeyValue@wake+1)
	line	203
	
l3340:	
	btfss	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	goto	u2081
	goto	u2080
u2081:
	goto	l3344
u2080:
	
l3342:	
	movf	(GetTouchKeyValue@wake),w
	andlw	07h
	btfsc	status,2
	goto	u2091
	goto	u2090
u2091:
	goto	l3372
u2090:
	line	205
	
l3344:	
;CheckTouchKey.c: 204: {
;CheckTouchKey.c: 205: KEYCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(146)^080h	;volatile
	line	206
;CheckTouchKey.c: 206: KEYCON1 = 0;
	clrf	(147)^080h	;volatile
	line	207
	
l3346:	
;CheckTouchKey.c: 207: KEYCON2 = 0x01;
	movlw	low(01h)
	movwf	(151)^080h	;volatile
	line	209
	
l3348:	
;CheckTouchKey.c: 209: TRISB6 = 0;
	bcf	(1078/8)^080h,(1078)&7	;volatile
	line	210
	
l3350:	
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
psect	text29
	line	219
	
l3352:	
;CheckTouchKey.c: 219: TRISB6 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1078/8)^080h,(1078)&7	;volatile
	line	221
	
l3354:	
;CheckTouchKey.c: 221: KEYCON0 = Table_KeyCap[cnt];
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(146)^080h	;volatile
	line	222
	
l3356:	
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
psect	text29
	line	227
	
l3358:	
;CheckTouchKey.c: 227: KEYCON0 |= 0x1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(146)^080h+(0/8),(0)&7	;volatile
	line	229
	
l3360:	
;CheckTouchKey.c: 229: temp = 2000;
	movlw	0D0h
	movwf	(GetTouchKeyValue@temp)
	movlw	07h
	movwf	((GetTouchKeyValue@temp))+1
	line	230
;CheckTouchKey.c: 230: while(!(KEYCON0&0x80))
	goto	l1581
	line	232
	
l3362:	
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
	goto	u2101
	goto	u2100
u2101:
	goto	l1581
u2100:
	line	234
	
l3364:	
;CheckTouchKey.c: 233: {
;CheckTouchKey.c: 234: KeyCounter = 255;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_KeyCounter)
	line	235
	
l3366:	
;CheckTouchKey.c: 235: ClearResSum();
	fcall	_ClearResSum
	goto	l1584
	line	238
	
l1581:	
	line	230
	btfss	(146)^080h,(7)&7	;volatile
	goto	u2111
	goto	u2110
u2111:
	goto	l3362
u2110:
	line	240
	
l3370:	
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
	
l3372:	
;CheckTouchKey.c: 241: }
;CheckTouchKey.c: 242: wake <<= 1;
	clrc
	rlf	(GetTouchKeyValue@wake),f
	rlf	(GetTouchKeyValue@wake+1),f
	line	243
	
l3374:	
	movlw	low(03h)
	incf	(GetTouchKeyValue@cnt),f
	subwf	((GetTouchKeyValue@cnt)),w
	skipc
	goto	u2121
	goto	u2120
u2121:
	goto	l3340
u2120:
	
l1586:	
	line	244
;CheckTouchKey.c: 244: b_ksleep = 0;
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	line	245
	
l1584:	
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
psect	text30,local,class=CODE,delta=2,merge=1,group=1
	line	142
global __ptext30
__ptext30:	;psect for function _ClearResSum
psect	text30
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	142
	global	__size_of_ClearResSum
	__size_of_ClearResSum	equ	__end_of_ClearResSum-_ClearResSum
	
_ClearResSum:	
;incstack = 0
	opt	stack 2
; Regs used in _ClearResSum: [wreg-fsr0h+status,2+status,0]
	line	144
	
l3298:	
;CheckTouchKey.c: 144: unsigned char cnt = 0;
	clrf	(ClearResSum@cnt)
	line	147
	
l3300:	
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
	
l3302:	
	movlw	low(03h)
	incf	(ClearResSum@cnt),f
	subwf	((ClearResSum@cnt)),w
	skipc
	goto	u2041
	goto	u2040
u2041:
	goto	l3300
u2040:
	line	149
	
l1565:	
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
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=1
	line	501
global __ptext31
__ptext31:	;psect for function _CheckValidTime
psect	text31
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	501
	global	__size_of_CheckValidTime
	__size_of_CheckValidTime	equ	__end_of_CheckValidTime-_CheckValidTime
	
_CheckValidTime:	
;incstack = 0
	opt	stack 5
; Regs used in _CheckValidTime: [wreg+status,2+status,0]
	line	507
	
l3934:	
;CheckTouchKey.c: 506: {
;CheckTouchKey.c: 507: if(KeyFlag[0] | KeyFlag[1])
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l3940
u2930:
	line	509
	
l3936:	
	incf	(CheckValidTime@validtime),f
	skipnz
	incf	(CheckValidTime@validtime+1),f
	movlw	03Ah
	subwf	((CheckValidTime@validtime+1)),w
	movlw	098h
	skipnz
	subwf	((CheckValidTime@validtime)),w
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l1656
u2940:
	line	511
	
l3938:	
;CheckTouchKey.c: 510: {
;CheckTouchKey.c: 511: b_kerr = 1;
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	512
	
l3940:	
;CheckTouchKey.c: 512: validtime = 0;
	clrf	(CheckValidTime@validtime)
	clrf	(CheckValidTime@validtime+1)
	line	520
	
l1656:	
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
psect	text32,local,class=CODE,delta=2,merge=1,group=1
	line	255
global __ptext32
__ptext32:	;psect for function _CheckOnceResult
psect	text32
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	255
	global	__size_of_CheckOnceResult
	__size_of_CheckOnceResult	equ	__end_of_CheckOnceResult-_CheckOnceResult
	
_CheckOnceResult:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	257
	
l3792:	
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
	
l3794:	
;CheckTouchKey.c: 271: {
;CheckTouchKey.c: 272: flag = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(CheckOnceResult@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@flag)
	line	274
	
l3796:	
;CheckTouchKey.c: 274: KeyResSum[cnt] >>= 3;
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u2655:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank1
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u2650:
	addlw	-1
	skipz
	goto	u2655
	line	275
	
l3798:	
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
	
l3800:	
;CheckTouchKey.c: 276: KeyDown = Table_KeyDown[cnt];
	movf	(CheckOnceResult@cnt),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@KeyDown)
	line	278
	
l3802:	
;CheckTouchKey.c: 278: KeyValue = KeyResTemp + KeyDown;
	movf	(CheckOnceResult@KeyDown),w
	movwf	(CheckOnceResult@KeyValue)
	clrf	(CheckOnceResult@KeyValue+1)
	
l3804:	
	movf	(CheckOnceResult@KeyResTemp),w
	addwf	(CheckOnceResult@KeyValue),f
	skipnc
	incf	(CheckOnceResult@KeyValue+1),f
	movf	(CheckOnceResult@KeyResTemp+1),w
	addwf	(CheckOnceResult@KeyValue+1),f
	line	280
	
l3806:	
;CheckTouchKey.c: 280: if(!KeyIsIn(cnt))
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2661
	goto	u2660
u2661:
	goto	l3836
u2660:
	line	283
	
l3808:	
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
	goto	u2675
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue),w
u2675:
	skipnc
	goto	u2671
	goto	u2670
u2671:
	goto	l3812
u2670:
	line	287
	
l3810:	
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
	goto	l3820
	line	289
	
l3812:	
;CheckTouchKey.c: 289: else if ((OldValue > KeyValue) && (KeyOldValue1[cnt] > KeyValue))
	movf	(CheckOnceResult@OldValue+1),w
	subwf	(CheckOnceResult@KeyValue+1),w
	skipz
	goto	u2685
	movf	(CheckOnceResult@OldValue),w
	subwf	(CheckOnceResult@KeyValue),w
u2685:
	skipnc
	goto	u2681
	goto	u2680
u2681:
	goto	l3858
u2680:
	
l3814:	
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
	goto	u2695
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue),w
u2695:
	skipnc
	goto	u2691
	goto	u2690
u2691:
	goto	l3858
u2690:
	line	291
	
l3816:	
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
	
l3818:	
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
	
l3820:	
;CheckTouchKey.c: 297: }
;CheckTouchKey.c: 299: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	303
	
l3822:	
;CheckTouchKey.c: 302: {
;CheckTouchKey.c: 303: if(KeyResTemp >> 8)
	movf	(0+(CheckOnceResult@KeyResTemp)+01h),w
	btfsc	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l3826
u2700:
	line	305
	
l3824:	
;CheckTouchKey.c: 304: {
;CheckTouchKey.c: 305: KeyDown = 0xFF;
	movlw	low(0FFh)
	movwf	(CheckOnceResult@KeyDown)
	line	306
;CheckTouchKey.c: 306: }
	goto	l1598
	line	309
	
l3826:	
;CheckTouchKey.c: 307: else
;CheckTouchKey.c: 308: {
;CheckTouchKey.c: 309: KeyDown = KeyResTemp & 0xFF;
	movf	(CheckOnceResult@KeyResTemp),w
	movwf	(CheckOnceResult@KeyDown)
	line	310
	
l1598:	
	line	312
;CheckTouchKey.c: 310: }
;CheckTouchKey.c: 312: if(KeyMaxSub < KeyDown)
	movf	(CheckOnceResult@KeyDown),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u2711
	goto	u2710
u2711:
	goto	l3832
u2710:
	line	314
	
l3828:	
;CheckTouchKey.c: 313: {
;CheckTouchKey.c: 314: KeyMaxSub = KeyDown;
	movf	(CheckOnceResult@KeyDown),w
	movwf	(_KeyMaxSub)
	line	315
	
l3830:	
;CheckTouchKey.c: 315: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag),w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyHave
	line	316
;CheckTouchKey.c: 316: }
	goto	l3858
	line	319
	
l3832:	
;CheckTouchKey.c: 317: else
;CheckTouchKey.c: 318: {
;CheckTouchKey.c: 319: KeyCounter++;
	incf	(_KeyCounter),f
	goto	l3858
	line	332
	
l3836:	
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
	goto	u2725
	movf	(CheckOnceResult@KeyValue),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u2725:
	skipnc
	goto	u2721
	goto	u2720
u2721:
	goto	l3842
u2720:
	goto	l3858
	line	336
	
l3842:	
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
	goto	u2735
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u2735:
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l3846
u2730:
	
l3844:	
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
	goto	u2745
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u2745:
	skipnc
	goto	u2741
	goto	u2740
u2741:
	goto	l3850
u2740:
	line	338
	
l3846:	
;CheckTouchKey.c: 337: {
;CheckTouchKey.c: 338: if(++KeyUpShake[cnt] > 8)
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l1604
u2750:
	line	340
	
l3848:	
;CheckTouchKey.c: 339: {
;CheckTouchKey.c: 340: KeyClearOne(cnt);
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyClearOne
	line	341
;CheckTouchKey.c: 341: continue;
	goto	l3858
	line	346
	
l3850:	
;CheckTouchKey.c: 344: else
;CheckTouchKey.c: 345: {
;CheckTouchKey.c: 346: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l3854
	line	347
	
l1604:	
	line	353
	
l3854:	
;CheckTouchKey.c: 353: else if(!(KeyData[0] | KeyData[1]))
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l3858
u2760:
	line	355
	
l3856:	
;CheckTouchKey.c: 354: {
;CheckTouchKey.c: 355: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag),w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyHave
	line	358
	
l3858:	
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@cnt),f
	subwf	((CheckOnceResult@cnt)),w
	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l3794
u2770:
	line	359
	
l1614:	
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
psect	text33,local,class=CODE,delta=2,merge=1,group=1
	line	158
global __ptext33
__ptext33:	;psect for function _KeyHave
psect	text33
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
	
l3550:	
;CheckTouchKey.c: 160: KeyCounter++;
	incf	(_KeyCounter),f
	line	164
	
l3552:	
;CheckTouchKey.c: 163: {
;CheckTouchKey.c: 164: KeyData[0] = 0;
	clrf	(_KeyData)	;volatile
	line	165
	
l3554:	
;CheckTouchKey.c: 165: KeyData[1] = 0;
	clrf	0+(_KeyData)+01h	;volatile
	line	166
	
l3556:	
;CheckTouchKey.c: 166: if(cnt&0x8)
	btfss	(KeyHave@cnt),(3)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l3560
u2310:
	line	168
	
l3558:	
;CheckTouchKey.c: 167: {
;CheckTouchKey.c: 168: KeyData[1] = flag;
	movf	(KeyHave@flag),w
	movwf	0+(_KeyData)+01h	;volatile
	line	169
;CheckTouchKey.c: 169: }
	goto	l1574
	line	172
	
l3560:	
;CheckTouchKey.c: 170: else
;CheckTouchKey.c: 171: {
;CheckTouchKey.c: 172: KeyData[0] = flag;
	movf	(KeyHave@flag),w
	movwf	(_KeyData)	;volatile
	line	186
	
l1574:	
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
psect	text34,local,class=CODE,delta=2,merge=1,group=1
	line	96
global __ptext34
__ptext34:	;psect for function _KeyClearOne
psect	text34
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
	
l3334:	
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
	
l1549:	
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
psect	text35,local,class=CODE,delta=2,merge=1,group=1
	line	369
global __ptext35
__ptext35:	;psect for function _CheckKeyOldValue
psect	text35
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	369
	global	__size_of_CheckKeyOldValue
	__size_of_CheckKeyOldValue	equ	__end_of_CheckKeyOldValue-_CheckKeyOldValue
	
_CheckKeyOldValue:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	372
	
l3860:	
;CheckTouchKey.c: 371: static unsigned char counter = 0;
;CheckTouchKey.c: 372: unsigned char cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@cnt)
	line	376
	
l3862:	
;CheckTouchKey.c: 373: unsigned int KeyResTemp;
;CheckTouchKey.c: 374: unsigned int KeyOldTemp;
;CheckTouchKey.c: 376: if(++counter < 4)
	movlw	low(04h)
	incf	(CheckKeyOldValue@counter),f
	subwf	((CheckKeyOldValue@counter)),w
	skipnc
	goto	u2781
	goto	u2780
u2781:
	goto	l3866
u2780:
	goto	l1620
	line	378
	
l3866:	
;CheckTouchKey.c: 378: counter = 0;
	clrf	(CheckKeyOldValue@counter)
	line	382
	
l3868:	
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
	
l3870:	
;CheckTouchKey.c: 383: if(!KeyIsIn(cnt))
	movf	(CheckKeyOldValue@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l1622
u2790:
	line	386
	
l3872:	
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
	
l3874:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	387
	
l3876:	
;CheckTouchKey.c: 387: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u2801
	goto	u2800
u2801:
	goto	l3880
u2800:
	
l3878:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u2811
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l1622
u2810:
	line	389
	
l3880:	
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
	
l3882:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	390
	
l3884:	
;CheckTouchKey.c: 390: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u2821
	goto	u2820
u2821:
	goto	l3888
u2820:
	
l3886:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u2831
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u2831
	goto	u2830
u2831:
	goto	l1622
u2830:
	line	392
	
l3888:	
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
	
l3890:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	393
	
l3892:	
;CheckTouchKey.c: 393: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u2841
	goto	u2840
u2841:
	goto	l3896
u2840:
	
l3894:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u2851
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l1622
u2850:
	line	395
	
l3896:	
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
	
l1622:	
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
	
l3898:	
	movlw	low(03h)
	incf	(CheckKeyOldValue@cnt),f
	subwf	((CheckKeyOldValue@cnt)),w
	skipc
	goto	u2861
	goto	u2860
u2861:
	goto	l3868
u2860:
	line	406
	
l1620:	
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
psect	text36,local,class=CODE,delta=2,merge=1,group=1
	line	74
global __ptext36
__ptext36:	;psect for function _KeyIsIn
psect	text36
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
	
l3322:	
;CheckTouchKey.c: 76: unsigned char i = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(KeyIsIn@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@i)
	line	78
	
l3324:	
;CheckTouchKey.c: 78: if(cnt&0x8)
	btfss	(KeyIsIn@cnt),(3)&7
	goto	u2071
	goto	u2070
u2071:
	goto	l3328
u2070:
	line	80
	
l3326:	
;CheckTouchKey.c: 79: {
;CheckTouchKey.c: 80: i &= KeyFlag[1];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@i),f
	line	81
;CheckTouchKey.c: 81: }
	goto	l3330
	line	84
	
l3328:	
;CheckTouchKey.c: 82: else
;CheckTouchKey.c: 83: {
;CheckTouchKey.c: 84: i &= KeyFlag[0];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@i),f
	line	86
	
l3330:	
;CheckTouchKey.c: 85: }
;CheckTouchKey.c: 86: return i;
	movf	(KeyIsIn@i),w
	line	87
	
l1546:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 361 in file "C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
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
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	361
global __ptext37
__ptext37:	;psect for function _Isr_Timer
psect	text37
	file	"C:\mcuproject\scm\D17_SC8F6790_tssop20\D17_SC8F6790_tssop20\main.c"
	line	361
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
psect	text37
	line	363
	
i1l4478:	
;main.c: 363: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u406_21
	goto	u406_20
u406_21:
	goto	i1l4488
u406_20:
	line	365
	
i1l4480:	
;main.c: 364: {
;main.c: 365: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	366
	
i1l4482:	
;main.c: 366: if(++MainTime >= 32)
	movlw	low(020h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u407_21
	goto	u407_20
u407_21:
	goto	i1l4490
u407_20:
	line	368
	
i1l4484:	
;main.c: 367: {
;main.c: 368: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	369
	
i1l4486:	
;main.c: 369: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	i1l4490
	line	374
	
i1l4488:	
;main.c: 372: else
;main.c: 373: {
;main.c: 374: PIR1 = 0;
	clrf	(12)	;volatile
	line	377
	
i1l4490:	
;main.c: 375: }
;main.c: 377: if(RACIF)
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2105/8)^0100h,(2105)&7	;volatile
	goto	u408_21
	goto	u408_20
u408_21:
	goto	i1l4496
u408_20:
	line	379
	
i1l4492:	
;main.c: 378: {
;main.c: 379: RACIF = 0;
	bcf	(2105/8)^0100h,(2105)&7	;volatile
	line	380
	
i1l4494:	
;main.c: 380: PORTA;
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	line	385
	
i1l4496:	
;main.c: 382: }
;main.c: 385: if(RCCIF)
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2106/8)^0100h,(2106)&7	;volatile
	goto	u409_21
	goto	u409_20
u409_21:
	goto	i1l1279
u409_20:
	line	387
	
i1l4498:	
;main.c: 386: {
;main.c: 387: RCCIF = 0;
	bcf	(2106/8)^0100h,(2106)&7	;volatile
	line	388
	
i1l4500:	
;main.c: 388: PORTC;
	bsf	status, 5	;RP0=1, select bank3
	movf	(389)^0180h,w	;volatile
	line	391
	
i1l1279:	
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
