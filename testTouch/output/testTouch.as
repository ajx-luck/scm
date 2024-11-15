opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F6790
opt include "C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SCMCU_IDE_V2.00.15\SCMCU_IDE_V2.00.15\data\include\sc8f6790.cgen.inc"
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
	FNCALL	_task1,_refreshTM1650
	FNCALL	_refreshTM1650,_tm1650cmd
	FNCALL	_showCtr,___lbdiv
	FNCALL	_showCtr,___lbmod
	FNCALL	_showCtr,_gotoSleep
	FNCALL	_showCtr,_setZeroStep
	FNCALL	_gotoSleep,_Init_System
	FNCALL	_initTM1650,_tm1650cmd
	FNCALL	_tm1650cmd,_TM1650_START
	FNCALL	_tm1650cmd,_TM1650_STOP
	FNCALL	_tm1650cmd,_write_8bit
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
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	16
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
	file	"C:\mcuproject\scm\testTouch\Touch_Kscan_Library.h"
	line	70
_Table_KeyDown:
	retlw	08h
	retlw	08h
	retlw	08h
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyCap
psect	strings
	file	"C:\mcuproject\scm\testTouch\Touch_Kscan_Library.h"
	line	63
_Table_KeyCap:
	retlw	02h
	retlw	03Ah
	retlw	01Ah
	global __end_of_Table_KeyCap
__end_of_Table_KeyCap:
	global	_Table_KeyChannel
psect	strings
	file	"C:\mcuproject\scm\testTouch\Touch_Kscan_Library.h"
	line	56
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
	global	_preBatValue
	global	_zeroStep
	global	_workStep
	global	_b_ksleep
	global	_b_kerr
	global	_b_kclr
	global	_b_kover1
	global	_b_kover
	global	_B_OnOff
	global	_B_MainLoop
	global	_KeyReference
	global	_KeyOldValue1
	global	_KeyResSum
	global	_KeyUpShake
	global	CheckValidTime@validtime
	global	_KeyData
	global	_KeyOldData
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
	global	_sleepTime
	global	_chrgLockFlag
	global	_count15s
	global	_subTime
	global	_addTime
	global	_chrgDuty
	global	_chrgFullFlag
	global	_count50
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
	global	_KeyOldValue2
	global	_KeyOldValue0
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
	global	_IOCB
_IOCB	set	9
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_TMR2IF
_TMR2IF	set	97
	global	_RBIE
_RBIE	set	91
	global	_GIE
_GIE	set	95
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
	global	_EECON1
_EECON1	set	140
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
	global	_TRISB6
_TRISB6	set	1078
	global	_RACIE
_RACIE	set	2113
	global	_RACIF
_RACIF	set	2105
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
	file	"testTouch.as"
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
_preBatValue:
       ds      1

_zeroStep:
       ds      1

_workStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_KeyReference:
       ds      6

_KeyOldValue1:
       ds      6

_KeyResSum:
       ds      6

_KeyUpShake:
       ds      3

CheckValidTime@validtime:
       ds      2

_KeyData:
       ds      2

_KeyOldData:
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

_sleepTime:
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
_KeyOldValue2:
       ds      6

_KeyOldValue0:
       ds      6

	file	"testTouch.as"
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
	movlw	low((__pbssBANK0)+047h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+0Ch)
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
	global	CheckOnceResult@OldValue
CheckOnceResult@OldValue:	; 2 bytes @ 0x0
	ds	2
	global	CheckOnceResult@flag
CheckOnceResult@flag:	; 1 bytes @ 0x2
	ds	1
	global	CheckOnceResult@KeyValue
CheckOnceResult@KeyValue:	; 2 bytes @ 0x3
	ds	2
	global	CheckOnceResult@KeyDown
CheckOnceResult@KeyDown:	; 1 bytes @ 0x5
	ds	1
	global	CheckOnceResult@KeyResTemp
CheckOnceResult@KeyResTemp:	; 2 bytes @ 0x6
	ds	2
	global	CheckOnceResult@cnt
CheckOnceResult@cnt:	; 1 bytes @ 0x8
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_gotoSleep:	; 1 bytes @ 0x0
?_CheckTouchKey:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Refurbish_Sfr:	; 1 bytes @ 0x0
?_KeyServer:	; 1 bytes @ 0x0
?_checkChrgAD:	; 1 bytes @ 0x0
?_checkBat:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_TM1650_START:	; 1 bytes @ 0x0
?_TM1650_STOP:	; 1 bytes @ 0x0
?_write_8bit:	; 1 bytes @ 0x0
?_initTM1650:	; 1 bytes @ 0x0
?_refreshTM1650:	; 1 bytes @ 0x0
?_setZeroStep:	; 1 bytes @ 0x0
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
??_gotoSleep:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_Refurbish_Sfr:	; 1 bytes @ 0x2
??_KeyServer:	; 1 bytes @ 0x2
??_TM1650_START:	; 1 bytes @ 0x2
??_TM1650_STOP:	; 1 bytes @ 0x2
??_write_8bit:	; 1 bytes @ 0x2
??_setZeroStep:	; 1 bytes @ 0x2
??_workCtr:	; 1 bytes @ 0x2
??_KeyIsIn:	; 1 bytes @ 0x2
??_KeyClearOne:	; 1 bytes @ 0x2
??_ClearResSum:	; 1 bytes @ 0x2
?_KeyHave:	; 1 bytes @ 0x2
??_CheckValidTime:	; 1 bytes @ 0x2
?___lbdiv:	; 1 bytes @ 0x2
?___lbmod:	; 1 bytes @ 0x2
	global	?_Read_ADC
?_Read_ADC:	; 2 bytes @ 0x2
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
	ds	1
??_tm1650cmd:	; 1 bytes @ 0x5
??_TurnKeyFlags:	; 1 bytes @ 0x5
	global	tm1650cmd@digAddr
tm1650cmd@digAddr:	; 1 bytes @ 0x5
	global	GetTouchKeyValue@cnt
GetTouchKeyValue@cnt:	; 1 bytes @ 0x5
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x5
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	ds	1
??_CheckTouchKey:	; 1 bytes @ 0x6
??_checkChrgAD:	; 1 bytes @ 0x6
??_checkBat:	; 1 bytes @ 0x6
??_initTM1650:	; 1 bytes @ 0x6
??_refreshTM1650:	; 1 bytes @ 0x6
??_chrgCtr:	; 1 bytes @ 0x6
??_task1:	; 1 bytes @ 0x6
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	ds	1
??_showCtr:	; 1 bytes @ 0x7
	ds	1
??_main:	; 1 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_CheckOnceResult:	; 1 bytes @ 0x0
	global	Read_ADC@Adc_ResultSum
Read_ADC@Adc_ResultSum:	; 2 bytes @ 0x0
	global	CheckKeyOldValue@KeyResTemp
CheckKeyOldValue@KeyResTemp:	; 2 bytes @ 0x0
	ds	2
	global	Read_ADC@Adc_Result
Read_ADC@Adc_Result:	; 2 bytes @ 0x2
	global	CheckKeyOldValue@KeyOldTemp
CheckKeyOldValue@KeyOldTemp:	; 2 bytes @ 0x2
	ds	2
	global	Read_ADC@i
Read_ADC@i:	; 1 bytes @ 0x4
	global	CheckKeyOldValue@cnt
CheckKeyOldValue@cnt:	; 1 bytes @ 0x4
	ds	1
	global	Read_ADC@ADCchannel
Read_ADC@ADCchannel:	; 1 bytes @ 0x5
	ds	1
	global	Read_ADC@j
Read_ADC@j:	; 1 bytes @ 0x6
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    31
;!    Data        0
;!    BSS         86
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      12
;!    BANK0            80      7      78
;!    BANK1            80      9      21
;!    BANK3            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_checkBat
;!    _refreshTM1650->_tm1650cmd
;!    _showCtr->___lbmod
;!    _initTM1650->_tm1650cmd
;!    _tm1650cmd->_write_8bit
;!    _checkChrgAD->_Read_ADC
;!    _checkBat->_Read_ADC
;!    _CheckTouchKey->_CheckKeyOldValue
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
;!    _checkChrgAD->_Read_ADC
;!    _checkBat->_Read_ADC
;!    _CheckTouchKey->_CheckKeyOldValue
;!
;!Critical Paths under _Isr_Timer in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _CheckTouchKey->_CheckOnceResult
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
;! (0) _main                                                 0     0      0    6051
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
;! (1) _workCtr                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _task1                                                0     0      0     586
;!                      _refreshTM1650
;! ---------------------------------------------------------------------------------
;! (2) _refreshTM1650                                        0     0      0     586
;!                          _tm1650cmd
;! ---------------------------------------------------------------------------------
;! (1) _showCtr                                              0     0      0     579
;!                            ___lbdiv
;!                            ___lbmod
;!                          _gotoSleep
;!                        _setZeroStep
;! ---------------------------------------------------------------------------------
;! (2) _setZeroStep                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _gotoSleep                                            0     0      0       0
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (3) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     288
;!                                              2 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     291
;!                                              2 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _initTM1650                                           0     0      0     586
;!                          _tm1650cmd
;! ---------------------------------------------------------------------------------
;! (3) _tm1650cmd                                            2     1      1     586
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
;! (1) _chrgCtr                                              0     0      0     295
;!                        _checkChrgAD
;! ---------------------------------------------------------------------------------
;! (2) _checkChrgAD                                          0     0      0     295
;!                           _Read_ADC
;! ---------------------------------------------------------------------------------
;! (1) _checkBat                                             2     2      0     295
;!                                              6 COMMON     2     2      0
;!                           _Read_ADC
;! ---------------------------------------------------------------------------------
;! (3) _Read_ADC                                            11     9      2     295
;!                                              2 COMMON     4     2      2
;!                                              0 BANK0      7     7      0
;! ---------------------------------------------------------------------------------
;! (1) _Refurbish_Sfr                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _KeyServer                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _CheckTouchKey                                        0     0      0    3710
;!                   _CheckKeyOldValue
;!                    _CheckOnceResult
;!                     _CheckValidTime
;!                        _ClearResSum
;!                   _GetTouchKeyValue
;!                       _KeyStopClear
;!                       _TurnKeyFlags
;! ---------------------------------------------------------------------------------
;! (2) _TurnKeyFlags                                         0     0      0     356
;!                         _KeyClearIn
;! ---------------------------------------------------------------------------------
;! (3) _KeyClearIn                                           1     1      0     356
;!                                              4 COMMON     1     1      0
;!                        _KeyClearOne
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (2) _KeyStopClear                                         1     1      0     254
;!                                              3 COMMON     1     1      0
;!                        _KeyClearOne
;! ---------------------------------------------------------------------------------
;! (2) _GetTouchKeyValue                                     5     5      0     157
;!                                              3 COMMON     3     3      0
;!                        _ClearResSum
;! ---------------------------------------------------------------------------------
;! (3) _ClearResSum                                          1     1      0      45
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _CheckValidTime                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _CheckOnceResult                                     13    13      0    2059
;!                                              0 BANK0      4     4      0
;!                                              0 BANK1      9     9      0
;!                        _KeyClearOne
;!                            _KeyHave
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (3) _KeyHave                                              3     1      2     402
;!                                              2 COMMON     3     1      2
;! ---------------------------------------------------------------------------------
;! (4) _KeyClearOne                                          1     1      0     124
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _CheckKeyOldValue                                     7     7      0     839
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      5     5      0
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (5) _KeyIsIn                                              2     2      0     102
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
;!     ___lbdiv
;!     ___lbmod
;!     _gotoSleep
;!       _Init_System
;!     _setZeroStep
;!   _task1
;!     _refreshTM1650
;!       _tm1650cmd
;!         _TM1650_START
;!         _TM1650_STOP
;!         _write_8bit
;!   _workCtr
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
;!BANK0               50      7      4E       4       97.5%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      9      15       6       26.3%
;!BITBANK3            50      0       0       7        0.0%
;!BANK3               50      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BANK2               50      0       0      10        0.0%
;!ABS                  0      0      6F      11        0.0%
;!DATA                 0      0      6F      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 725 in file "C:\mcuproject\scm\testTouch\main.c"
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
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	725
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	725
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	726
	
l3916:	
;main.c: 726: Init_System();
	fcall	_Init_System
	line	727
;main.c: 727: initTM1650();
	fcall	_initTM1650
	line	728
	
l3918:	
;main.c: 728: firstTime = 500;
	movlw	0F4h
	movwf	(_firstTime)
	movlw	01h
	movwf	((_firstTime))+1
	line	730
	
l3920:	
;main.c: 730: if (B_MainLoop) {
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u3081
	goto	u3080
u3081:
	goto	l3920
u3080:
	line	731
	
l3922:	
;main.c: 731: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	732
# 732 "C:\mcuproject\scm\testTouch\main.c"
clrwdt ;# 
psect	maintext
	line	734
	
l3924:	
;main.c: 734: CheckTouchKey();
	fcall	_CheckTouchKey
	line	736
	
l3926:	
;main.c: 736: Refurbish_Sfr();
	fcall	_Refurbish_Sfr
	line	737
	
l3928:	
;main.c: 737: KeyServer();
	fcall	_KeyServer
	line	738
	
l3930:	
;main.c: 738: showCtr();
	fcall	_showCtr
	line	739
	
l3932:	
;main.c: 739: workCtr();
	fcall	_workCtr
	line	740
	
l3934:	
;main.c: 740: checkBat();
	fcall	_checkBat
	line	741
	
l3936:	
;main.c: 741: chrgCtr();
	fcall	_chrgCtr
	line	742
	
l3938:	
;main.c: 742: task1();
	fcall	_task1
	goto	l3920
	global	start
	ljmp	start
	opt stack 0
	line	745
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 543 in file "C:\mcuproject\scm\testTouch\main.c"
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
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	543
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	543
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 6
; Regs used in _workCtr: [wreg+status,2+status,0]
	line	545
	
l3466:	
;main.c: 545: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l3482
u2370:
	line	547
	
l3468:	
;main.c: 546: {
;main.c: 547: PWMIOS0 = 0x01;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(396)^0180h	;volsfr
	line	548
	
l3470:	
;main.c: 548: PWMTH = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(22)	;volatile
	line	549
	
l3472:	
;main.c: 549: PWMTL = 100;
	movlw	low(064h)
	movwf	(21)	;volatile
	line	550
;main.c: 550: PWMD01H = 0x00;
	clrf	(28)	;volatile
	line	551
	
l3474:	
;main.c: 551: PWMD0L = 69 + workStep;
	movf	(_workStep),w
	addlw	045h
	movwf	(23)	;volatile
	line	552
	
l3476:	
;main.c: 552: PWMCON1 = 0x00;
	clrf	(20)	;volatile
	line	553
	
l3478:	
;main.c: 553: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	554
	
l3480:	
;main.c: 554: PWMCON0 = 0x41;
	movlw	low(041h)
	movwf	(19)	;volatile
	line	555
;main.c: 555: }
	goto	l1320
	line	556
	
l3482:	
;main.c: 556: else if(chrgFlag && chrgFullFlag == 0 && chrgLockFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l3526
u2380:
	
l3484:	
	movf	((_chrgFullFlag)),w
	btfss	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l3526
u2390:
	
l3486:	
	movf	((_chrgLockFlag)),w
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l3526
u2400:
	line	558
	
l3488:	
;main.c: 557: {
;main.c: 558: if(chrgResult < 70 && batResult <= 1555)
	movlw	0
	subwf	(_chrgResult+1),w
	movlw	046h
	skipnz
	subwf	(_chrgResult),w
	skipnc
	goto	u2411
	goto	u2410
u2411:
	goto	l3500
u2410:
	
l3490:	
	movlw	06h
	subwf	(_batResult+1),w
	movlw	014h
	skipnz
	subwf	(_batResult),w
	skipnc
	goto	u2421
	goto	u2420
u2421:
	goto	l3500
u2420:
	line	560
	
l3492:	
;main.c: 559: {
;main.c: 560: if(++addTime > 10 && chrgDuty < 35)
	movlw	low(0Bh)
	incf	(_addTime),f
	subwf	((_addTime)),w
	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l3502
u2430:
	
l3494:	
	movlw	low(023h)
	subwf	(_chrgDuty),w
	skipnc
	goto	u2441
	goto	u2440
u2441:
	goto	l3502
u2440:
	line	562
	
l3496:	
;main.c: 561: {
;main.c: 562: addTime = 0;
	clrf	(_addTime)
	line	563
	
l3498:	
;main.c: 563: chrgDuty++;
	incf	(_chrgDuty),f
	goto	l3502
	line	568
	
l3500:	
;main.c: 566: else
;main.c: 567: {
;main.c: 568: addTime = 0;
	clrf	(_addTime)
	line	570
	
l3502:	
;main.c: 569: }
;main.c: 570: if(chrgResult > 80 || batResult > 1555)
	movlw	0
	subwf	(_chrgResult+1),w
	movlw	051h
	skipnz
	subwf	(_chrgResult),w
	skipnc
	goto	u2451
	goto	u2450
u2451:
	goto	l3506
u2450:
	
l3504:	
	movlw	06h
	subwf	(_batResult+1),w
	movlw	014h
	skipnz
	subwf	(_batResult),w
	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l3514
u2460:
	line	572
	
l3506:	
;main.c: 571: {
;main.c: 572: if(++subTime > 10 && chrgDuty > 10)
	movlw	low(0Bh)
	incf	(_subTime),f
	subwf	((_subTime)),w
	skipc
	goto	u2471
	goto	u2470
u2471:
	goto	l3516
u2470:
	
l3508:	
	movlw	low(0Bh)
	subwf	(_chrgDuty),w
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l3516
u2480:
	line	574
	
l3510:	
;main.c: 573: {
;main.c: 574: subTime = 0;
	clrf	(_subTime)
	line	575
	
l3512:	
;main.c: 575: chrgDuty--;
	decf	(_chrgDuty),f
	goto	l3516
	line	580
	
l3514:	
;main.c: 578: else
;main.c: 579: {
;main.c: 580: subTime = 0;
	clrf	(_subTime)
	line	582
	
l3516:	
;main.c: 581: }
;main.c: 582: PWMIOS1 = 0x20;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(397)^0180h	;volsfr
	line	583
	
l3518:	
;main.c: 583: PWMTH = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(22)	;volatile
	line	584
;main.c: 584: PWMTL = 70;
	movlw	low(046h)
	movwf	(21)	;volatile
	line	585
	
l3520:	
;main.c: 585: PWMD23H = 0x00;
	clrf	(14)	;volatile
	line	586
	
l3522:	
;main.c: 586: PWMD3L = chrgDuty;
	movf	(_chrgDuty),w
	movwf	(26)	;volatile
	line	587
;main.c: 587: PWMCON1 = 0x00;
	clrf	(20)	;volatile
	line	588
;main.c: 588: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	589
	
l3524:	
;main.c: 589: PWMCON0 = 0x08;
	movlw	low(08h)
	movwf	(19)	;volatile
	line	590
;main.c: 590: }
	goto	l1320
	line	593
	
l3526:	
;main.c: 591: else
;main.c: 592: {
;main.c: 593: PWMCON0 = 0x00;
	clrf	(19)	;volatile
	line	595
	
l1320:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_task1

;; *************** function _task1 *****************
;; Defined at:
;;		line 628 in file "C:\mcuproject\scm\testTouch\main.c"
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	628
global __ptext2
__ptext2:	;psect for function _task1
psect	text2
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	628
	global	__size_of_task1
	__size_of_task1	equ	__end_of_task1-_task1
	
_task1:	
;incstack = 0
	opt	stack 3
; Regs used in _task1: [wreg+status,2+status,0+pclath+cstack]
	line	630
	
l3550:	
;main.c: 630: if(firstTime > 0)
	movf	((_firstTime)),w
iorwf	((_firstTime+1)),w
	btfsc	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l3556
u2520:
	line	632
	
l3552:	
;main.c: 631: {
;main.c: 632: firstTime--;
	movlw	01h
	subwf	(_firstTime),f
	movlw	0
	skipc
	decf	(_firstTime+1),f
	subwf	(_firstTime+1),f
	line	633
;main.c: 633: if(preBatValue < batValue)
	movf	(_batValue),w
	subwf	(_preBatValue),w
	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l3558
u2530:
	line	635
	
l3554:	
;main.c: 634: {
;main.c: 635: preBatValue = batValue;
	movf	(_batValue),w
	movwf	(_preBatValue)
	goto	l3558
	line	640
	
l3556:	
;main.c: 638: else
;main.c: 639: {
;main.c: 640: refreshTM1650();
	fcall	_refreshTM1650
	line	642
	
l3558:	
;main.c: 641: }
;main.c: 642: if(++count1s >= 250)
	movlw	low(0FAh)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l1347
u2540:
	line	644
	
l3560:	
;main.c: 643: {
;main.c: 644: count1s = 0;
	clrf	(_count1s)
	line	645
	
l3562:	
;main.c: 645: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l3568
u2550:
	line	647
	
l3564:	
;main.c: 646: {
;main.c: 647: if(++count900s > 900)
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	085h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l3570
u2560:
	line	649
	
l3566:	
;main.c: 648: {
;main.c: 649: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	650
;main.c: 650: workStep = 0;
	clrf	(_workStep)
	line	651
;main.c: 651: zeroStep = 0;
	clrf	(_zeroStep)
	line	652
;main.c: 652: ledLightTime = 0;
	clrf	(_ledLightTime)
	clrf	(_ledLightTime+1)
	goto	l3570
	line	657
	
l3568:	
;main.c: 655: else
;main.c: 656: {
;main.c: 657: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	659
	
l3570:	
;main.c: 658: }
;main.c: 659: if(ledLightTime > 0)
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l3574
u2570:
	line	661
	
l3572:	
;main.c: 660: {
;main.c: 661: ledLightTime--;
	movlw	01h
	subwf	(_ledLightTime),f
	movlw	0
	skipc
	decf	(_ledLightTime+1),f
	subwf	(_ledLightTime+1),f
	line	663
	
l3574:	
;main.c: 662: }
;main.c: 663: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l3588
u2580:
	line	665
	
l3576:	
;main.c: 664: {
;main.c: 665: if(preBatValue < 99 && preBatValue < batValue)
	movlw	low(063h)
	subwf	(_preBatValue),w
	skipnc
	goto	u2591
	goto	u2590
u2591:
	goto	l3586
u2590:
	
l3578:	
	movf	(_batValue),w
	subwf	(_preBatValue),w
	skipnc
	goto	u2601
	goto	u2600
u2601:
	goto	l3586
u2600:
	line	667
	
l3580:	
;main.c: 666: {
;main.c: 667: if(++count15s >= 15)
	movlw	low(0Fh)
	incf	(_count15s),f
	subwf	((_count15s)),w
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l1343
u2610:
	line	669
	
l3582:	
;main.c: 668: {
;main.c: 669: count15s = 0;
	clrf	(_count15s)
	line	670
	
l3584:	
;main.c: 670: preBatValue++;
	incf	(_preBatValue),f
	goto	l1347
	line	675
	
l3586:	
;main.c: 673: else
;main.c: 674: {
;main.c: 675: count15s = 0;
	clrf	(_count15s)
	goto	l1347
	line	680
	
l3588:	
;main.c: 678: else
;main.c: 679: {
;main.c: 680: if(preBatValue > 0 && preBatValue > batValue)
	movf	((_preBatValue)),w
	btfsc	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l3586
u2620:
	
l3590:	
	movf	(_preBatValue),w
	subwf	(_batValue),w
	skipnc
	goto	u2631
	goto	u2630
u2631:
	goto	l3586
u2630:
	line	682
	
l3592:	
;main.c: 681: {
;main.c: 682: if(++count15s >= 15)
	movlw	low(0Fh)
	incf	(_count15s),f
	subwf	((_count15s)),w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l1343
u2640:
	line	684
	
l3594:	
;main.c: 683: {
;main.c: 684: count15s = 0;
	clrf	(_count15s)
	line	685
	
l3596:	
;main.c: 685: preBatValue--;
	decf	(_preBatValue),f
	goto	l1347
	line	692
	
l1343:	
	line	695
	
l1347:	
	return
	opt stack 0
GLOBAL	__end_of_task1
	__end_of_task1:
	signat	_task1,89
	global	_refreshTM1650

;; *************** function _refreshTM1650 *****************
;; Defined at:
;;		line 406 in file "C:\mcuproject\scm\testTouch\main.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	406
global __ptext3
__ptext3:	;psect for function _refreshTM1650
psect	text3
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	406
	global	__size_of_refreshTM1650
	__size_of_refreshTM1650	equ	__end_of_refreshTM1650-_refreshTM1650
	
_refreshTM1650:	
;incstack = 0
	opt	stack 3
; Regs used in _refreshTM1650: [wreg+status,2+status,0+pclath+cstack]
	line	408
	
l2966:	
;main.c: 408: if(showFlag)
	movf	((_showFlag)),w
	btfsc	status,2
	goto	u1491
	goto	u1490
u1491:
	goto	l2970
u1490:
	line	410
	
l2968:	
;main.c: 409: {
;main.c: 410: tm1650cmd(0X48,0x11);
	movlw	low(011h)
	movwf	(tm1650cmd@seg_data)
	movlw	low(048h)
	fcall	_tm1650cmd
	line	411
# 411 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 411 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 411 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 411 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 411 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 411 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text3
	line	412
;main.c: 412: tm1650cmd(0X68,showLed2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_showLed2),w
	movwf	(tm1650cmd@seg_data)
	movlw	low(068h)
	fcall	_tm1650cmd
	line	413
# 413 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 413 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 413 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 413 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 413 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 413 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text3
	line	414
;main.c: 414: tm1650cmd(0X6A,showShiWei);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_showShiWei),w
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Ah)
	fcall	_tm1650cmd
	line	415
# 415 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 415 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 415 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 415 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 415 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 415 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text3
	line	416
;main.c: 416: tm1650cmd(0X6C,showGeWei);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_showGeWei),w
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Ch)
	fcall	_tm1650cmd
	line	417
# 417 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 417 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 417 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 417 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 417 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 417 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text3
	line	418
;main.c: 418: tm1650cmd(0X6E,showLed1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_showLed1),w
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Eh)
	fcall	_tm1650cmd
	line	419
;main.c: 419: }
	goto	l1265
	line	422
	
l2970:	
;main.c: 420: else
;main.c: 421: {
;main.c: 422: tm1650cmd(0X48,0x00);
	clrf	(tm1650cmd@seg_data)
	movlw	low(048h)
	fcall	_tm1650cmd
	line	424
	
l1265:	
	return
	opt stack 0
GLOBAL	__end_of_refreshTM1650
	__end_of_refreshTM1650:
	signat	_refreshTM1650,89
	global	_showCtr

;; *************** function _showCtr *****************
;; Defined at:
;;		line 496 in file "C:\mcuproject\scm\testTouch\main.c"
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
;;		On exit  : 200/0
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
;;		___lbdiv
;;		___lbmod
;;		_gotoSleep
;;		_setZeroStep
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	496
global __ptext4
__ptext4:	;psect for function _showCtr
psect	text4
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	496
	global	__size_of_showCtr
	__size_of_showCtr	equ	__end_of_showCtr-_showCtr
	
_showCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _showCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	498
	
l3412:	
;main.c: 498: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l3426
u2320:
	line	500
	
l3414:	
;main.c: 499: {
;main.c: 500: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	501
	
l3416:	
;main.c: 501: sleepTime = 0;
	clrf	(_sleepTime)
	line	502
	
l3418:	
;main.c: 502: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	503
	
l3420:	
;main.c: 503: showLed2 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed2)
	line	504
	
l3422:	
;main.c: 504: showShiWei = numArray[workStep / 10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_workStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	505
	
l3424:	
;main.c: 505: showGeWei = numArray[workStep % 10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_workStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	506
;main.c: 506: }
	goto	l1305
	line	507
	
l3426:	
;main.c: 507: else if(ledLightTime > 0)
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l3440
u2330:
	line	509
	
l3428:	
;main.c: 508: {
;main.c: 509: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	510
	
l3430:	
;main.c: 510: sleepTime = 0;
	clrf	(_sleepTime)
	line	511
	
l3432:	
;main.c: 511: showShiWei = numArray[preBatValue/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_preBatValue),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	512
	
l3434:	
;main.c: 512: showGeWei = numArray[preBatValue%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_preBatValue),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	513
	
l3436:	
;main.c: 513: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	514
	
l3438:	
;main.c: 514: showLed2 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed2)
	line	515
;main.c: 515: }
	goto	l1305
	line	516
	
l3440:	
;main.c: 516: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2341
	goto	u2340
u2341:
	goto	l3450
u2340:
	line	518
	
l3442:	
;main.c: 517: {
;main.c: 518: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	519
	
l3444:	
;main.c: 519: sleepTime = 0;
	clrf	(_sleepTime)
	line	520
;main.c: 520: showLed1 = 0x00;
	clrf	(_showLed1)
	line	521
;main.c: 521: showLed2 = 0x00;
	clrf	(_showLed2)
	line	522
	
l3446:	
;main.c: 522: showShiWei = numArray[preBatValue/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_preBatValue),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showShiWei)
	line	523
	
l3448:	
;main.c: 523: showGeWei = numArray[preBatValue%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_preBatValue),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showGeWei)
	line	524
;main.c: 524: }
	goto	l1305
	line	525
	
l3450:	
;main.c: 525: else if(zeroStep > 0)
	movf	((_zeroStep)),w
	btfsc	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l3458
u2350:
	line	527
	
l3452:	
;main.c: 526: {
;main.c: 527: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	528
	
l3454:	
;main.c: 528: sleepTime = 0;
	clrf	(_sleepTime)
	line	529
;main.c: 529: showShiWei = showGeWei = 0;
	clrf	(_showGeWei)
	clrf	(_showShiWei)
	line	530
	
l3456:	
;main.c: 530: setZeroStep();
	fcall	_setZeroStep
	line	531
;main.c: 531: }
	goto	l1305
	line	534
	
l3458:	
;main.c: 532: else
;main.c: 533: {
;main.c: 534: showFlag = 0;
	clrf	(_showFlag)
	line	535
	
l3460:	
;main.c: 535: if(++sleepTime > 200)
	movlw	low(0C9h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l1299
u2360:
	line	537
	
l3462:	
;main.c: 536: {
;main.c: 537: sleepTime = 0;
	clrf	(_sleepTime)
	line	538
	
l3464:	
;main.c: 538: gotoSleep();
	fcall	_gotoSleep
	goto	l1305
	line	540
	
l1299:	
	line	541
	
l1305:	
	return
	opt stack 0
GLOBAL	__end_of_showCtr
	__end_of_showCtr:
	signat	_showCtr,89
	global	_setZeroStep

;; *************** function _setZeroStep *****************
;; Defined at:
;;		line 427 in file "C:\mcuproject\scm\testTouch\main.c"
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	427
global __ptext5
__ptext5:	;psect for function _setZeroStep
psect	text5
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	427
	global	__size_of_setZeroStep
	__size_of_setZeroStep	equ	__end_of_setZeroStep-_setZeroStep
	
_setZeroStep:	
;incstack = 0
	opt	stack 5
; Regs used in _setZeroStep: [wreg+status,2+status,0]
	line	429
	
l2972:	
;main.c: 429: if(zeroStep == 0)
	movf	((_zeroStep)),w
	btfss	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l2976
u1500:
	line	431
	
l2974:	
;main.c: 430: {
;main.c: 431: showLed1 = 0x00;
	clrf	(_showLed1)
	line	432
;main.c: 432: showLed2 = 0x00;
	clrf	(_showLed2)
	line	433
;main.c: 433: }
	goto	l1293
	line	434
	
l2976:	
;main.c: 434: else if(zeroStep == 1)
		decf	((_zeroStep)),w
	btfss	status,2
	goto	u1511
	goto	u1510
u1511:
	goto	l2982
u1510:
	line	436
	
l2978:	
;main.c: 435: {
;main.c: 436: showLed1 = 0xE1;
	movlw	low(0E1h)
	movwf	(_showLed1)
	line	437
	
l2980:	
;main.c: 437: showLed2 = 0x00;
	clrf	(_showLed2)
	line	438
;main.c: 438: }
	goto	l1293
	line	439
	
l2982:	
;main.c: 439: else if(zeroStep == 2)
		movlw	2
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l2988
u1520:
	line	441
	
l2984:	
;main.c: 440: {
;main.c: 441: showLed1 = 0xE3;
	movlw	low(0E3h)
	movwf	(_showLed1)
	goto	l2980
	line	444
	
l2988:	
;main.c: 444: else if(zeroStep == 3)
		movlw	3
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l2994
u1530:
	line	446
	
l2990:	
;main.c: 445: {
;main.c: 446: showLed1 = 0xE7;
	movlw	low(0E7h)
	movwf	(_showLed1)
	goto	l2980
	line	449
	
l2994:	
;main.c: 449: else if(zeroStep == 4)
		movlw	4
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l3000
u1540:
	line	451
	
l2996:	
;main.c: 450: {
;main.c: 451: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	goto	l2980
	line	454
	
l3000:	
;main.c: 454: else if(zeroStep == 5)
		movlw	5
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l3006
u1550:
	line	456
	
l3002:	
;main.c: 455: {
;main.c: 456: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	457
	
l3004:	
;main.c: 457: showLed2 = 0x01;
	clrf	(_showLed2)
	incf	(_showLed2),f
	line	458
;main.c: 458: }
	goto	l1293
	line	459
	
l3006:	
;main.c: 459: else if(zeroStep == 6)
		movlw	6
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u1561
	goto	u1560
u1561:
	goto	l3010
u1560:
	line	461
	
l3008:	
;main.c: 460: {
;main.c: 461: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	462
;main.c: 462: showLed2 = 0x03;
	movlw	low(03h)
	movwf	(_showLed2)
	line	463
;main.c: 463: }
	goto	l1293
	line	464
	
l3010:	
;main.c: 464: else if(zeroStep == 7)
		movlw	7
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u1571
	goto	u1570
u1571:
	goto	l3014
u1570:
	line	466
	
l3012:	
;main.c: 465: {
;main.c: 466: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	467
;main.c: 467: showLed2 = 0x07;
	movlw	low(07h)
	movwf	(_showLed2)
	line	468
;main.c: 468: }
	goto	l1293
	line	469
	
l3014:	
;main.c: 469: else if(zeroStep == 8)
		movlw	8
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u1581
	goto	u1580
u1581:
	goto	l3018
u1580:
	line	471
	
l3016:	
;main.c: 470: {
;main.c: 471: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	472
;main.c: 472: showLed2 = 0x0F;
	movlw	low(0Fh)
	movwf	(_showLed2)
	line	473
;main.c: 473: }
	goto	l1293
	line	474
	
l3018:	
;main.c: 474: else if(zeroStep == 9)
		movlw	9
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l3022
u1590:
	line	476
	
l3020:	
;main.c: 475: {
;main.c: 476: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	477
;main.c: 477: showLed2 = 0x2F;
	movlw	low(02Fh)
	movwf	(_showLed2)
	line	478
;main.c: 478: }
	goto	l1293
	line	479
	
l3022:	
;main.c: 479: else if(zeroStep == 10)
		movlw	10
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u1601
	goto	u1600
u1601:
	goto	l3026
u1600:
	line	481
	
l3024:	
;main.c: 480: {
;main.c: 481: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	482
;main.c: 482: showLed2 = 0x6F;
	movlw	low(06Fh)
	movwf	(_showLed2)
	line	483
;main.c: 483: }
	goto	l1293
	line	484
	
l3026:	
;main.c: 484: else if(zeroStep == 11)
		movlw	11
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l3030
u1610:
	line	486
	
l3028:	
;main.c: 485: {
;main.c: 486: showLed1 = 0xFF;
	movlw	low(0FFh)
	movwf	(_showLed1)
	line	487
;main.c: 487: showLed2 = 0xEF;
	movlw	low(0EFh)
	movwf	(_showLed2)
	line	488
;main.c: 488: }
	goto	l1293
	line	489
	
l3030:	
;main.c: 489: else if(zeroStep == 12)
		movlw	12
	xorwf	((_zeroStep)),w
	btfss	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l1287
u1620:
	goto	l3028
	line	494
	
l1287:	
	
l1293:	
	return
	opt stack 0
GLOBAL	__end_of_setZeroStep
	__end_of_setZeroStep:
	signat	_setZeroStep,89
	global	_gotoSleep

;; *************** function _gotoSleep *****************
;; Defined at:
;;		line 697 in file "C:\mcuproject\scm\testTouch\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Init_System
;; This function is called by:
;;		_showCtr
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	697
global __ptext6
__ptext6:	;psect for function _gotoSleep
psect	text6
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	697
	global	__size_of_gotoSleep
	__size_of_gotoSleep	equ	__end_of_gotoSleep-_gotoSleep
	
_gotoSleep:	
;incstack = 0
	opt	stack 4
; Regs used in _gotoSleep: [wreg+status,2+status,0+pclath+cstack]
	line	699
	
l3034:	
;main.c: 699: INTCON = 0;
	clrf	(11)	;volatile
	line	700
;main.c: 700: PIE1 = 0;
	clrf	(13)	;volatile
	line	701
;main.c: 701: T2CON = 0;
	clrf	(18)	;volatile
	line	702
;main.c: 702: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	703
;main.c: 703: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	704
	
l3036:	
;main.c: 704: PORTB = 0B10000000;
	movlw	low(080h)
	movwf	(6)	;volatile
	line	705
	
l3038:	
;main.c: 705: PORTC = 0x01;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(389)^0180h	;volatile
	line	706
;main.c: 706: ADCON0 = 0;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(157)^080h	;volatile
	line	707
;main.c: 707: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(19)	;volatile
	line	708
;main.c: 708: EECON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(140)^080h	;volatile
	line	709
;main.c: 709: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	710
	
l3040:	
;main.c: 710: RBIE = 0;
	bcf	(91/8),(91)&7	;volatile
	line	711
	
l3042:	
;main.c: 711: IOCA = 0x3C;
	movlw	low(03Ch)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	712
	
l3044:	
;main.c: 712: RACIE = 1;
	bcf	status, 5	;RP0=0, select bank2
	bsf	(2113/8)^0100h,(2113)&7	;volatile
	line	713
	
l3046:	
;main.c: 713: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	714
	
l3048:	
;main.c: 714: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	715
	
l3050:	
;main.c: 715: PORTA;
	bcf	status, 5	;RP0=0, select bank0
	movf	(5),w	;volatile
	line	716
# 716 "C:\mcuproject\scm\testTouch\main.c"
clrwdt ;# 
	line	717
# 717 "C:\mcuproject\scm\testTouch\main.c"
STOP ;# 
	line	718
# 718 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text6
	line	719
	
l3052:	
;main.c: 719: Init_System();
	fcall	_Init_System
	line	720
	
l1350:	
	return
	opt stack 0
GLOBAL	__end_of_gotoSleep
	__end_of_gotoSleep:
	signat	_gotoSleep,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 60 in file "C:\mcuproject\scm\testTouch\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
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
;;		_gotoSleep
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	60
global __ptext7
__ptext7:	;psect for function _Init_System
psect	text7
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	60
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	61
	
l2854:	
# 61 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	62
# 62 "C:\mcuproject\scm\testTouch\main.c"
clrwdt ;# 
psect	text7
	line	63
	
l2856:	
;main.c: 63: INTCON = 0;
	clrf	(11)	;volatile
	line	64
	
l2858:	
;main.c: 64: OSCCON = 0X72;
	movlw	low(072h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	65
	
l2860:	
;main.c: 65: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	70
;main.c: 70: TRISA = 0x60;
	movlw	low(060h)
	movwf	(133)^080h	;volatile
	line	71
	
l2862:	
;main.c: 71: PORTA = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	72
	
l2864:	
;main.c: 72: TRISB = 0x18;
	movlw	low(018h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	73
;main.c: 73: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	74
;main.c: 74: TRISC = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(390)^0180h	;volatile
	line	75
;main.c: 75: PORTC = 0;
	clrf	(389)^0180h	;volatile
	line	77
	
l2866:	
;main.c: 77: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(13)	;volatile
	line	78
	
l2868:	
;main.c: 78: PR2 = 250;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	79
	
l2870:	
;main.c: 79: T2CON = 4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	81
	
l2872:	
;main.c: 81: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	82
	
l2874:	
;main.c: 82: ADON = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1256/8)^080h,(1256)&7	;volatile
	line	83
	
l1173:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SCMCU_IDE_V2.00.15\SCMCU_IDE_V2.00.15\data\sources\common\lbmod.c"
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
psect	text8,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SCMCU_IDE_V2.00.15\SCMCU_IDE_V2.00.15\data\sources\common\lbmod.c"
	line	4
global __ptext8
__ptext8:	;psect for function ___lbmod
psect	text8
	file	"C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SCMCU_IDE_V2.00.15\SCMCU_IDE_V2.00.15\data\sources\common\lbmod.c"
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
	
l3280:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3282:	
	clrf	(___lbmod@rem)
	line	12
	
l3284:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1975:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1975
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3286:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3288:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1981
	goto	u1980
u1981:
	goto	l3292
u1980:
	line	15
	
l3290:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3292:	
	decfsz	(___lbmod@counter),f
	goto	u1991
	goto	u1990
u1991:
	goto	l3284
u1990:
	line	17
	
l3294:	
	movf	(___lbmod@rem),w
	line	18
	
l1859:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SCMCU_IDE_V2.00.15\SCMCU_IDE_V2.00.15\data\sources\common\lbdiv.c"
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
psect	text9,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SCMCU_IDE_V2.00.15\SCMCU_IDE_V2.00.15\data\sources\common\lbdiv.c"
	line	4
global __ptext9
__ptext9:	;psect for function ___lbdiv
psect	text9
	file	"C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SCMCU_IDE_V2.00.15\SCMCU_IDE_V2.00.15\data\sources\common\lbdiv.c"
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
	
l3256:	
	clrf	(___lbdiv@quotient)
	line	10
	
l3258:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1931
	goto	u1930
u1931:
	goto	l3276
u1930:
	line	11
	
l3260:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l3264
	
l1848:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l3262:	
	incf	(___lbdiv@counter),f
	line	12
	
l3264:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1941
	goto	u1940
u1941:
	goto	l1848
u1940:
	line	16
	
l1850:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l3266:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1951
	goto	u1950
u1951:
	goto	l3272
u1950:
	line	19
	
l3268:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l3270:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l3272:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l3274:	
	decfsz	(___lbdiv@counter),f
	goto	u1961
	goto	u1960
u1961:
	goto	l1850
u1960:
	line	25
	
l3276:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1853:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_initTM1650

;; *************** function _initTM1650 *****************
;; Defined at:
;;		line 391 in file "C:\mcuproject\scm\testTouch\main.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	391
global __ptext10
__ptext10:	;psect for function _initTM1650
psect	text10
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	391
	global	__size_of_initTM1650
	__size_of_initTM1650	equ	__end_of_initTM1650-_initTM1650
	
_initTM1650:	
;incstack = 0
	opt	stack 4
; Regs used in _initTM1650: [wreg+status,2+status,0+pclath+cstack]
	line	393
	
l3410:	
;main.c: 393: tm1650cmd(0X48,0x11);
	movlw	low(011h)
	movwf	(tm1650cmd@seg_data)
	movlw	low(048h)
	fcall	_tm1650cmd
	line	394
# 394 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 394 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 394 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 394 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 394 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 394 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text10
	line	395
;main.c: 395: tm1650cmd(0X68,0xFF);
	movlw	low(0FFh)
	movwf	(tm1650cmd@seg_data)
	movlw	low(068h)
	fcall	_tm1650cmd
	line	396
# 396 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 396 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 396 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 396 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 396 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 396 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text10
	line	397
;main.c: 397: tm1650cmd(0X6A,0xFF);
	movlw	low(0FFh)
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Ah)
	fcall	_tm1650cmd
	line	398
# 398 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 398 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 398 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 398 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 398 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 398 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text10
	line	399
;main.c: 399: tm1650cmd(0X6C,0xFF);
	movlw	low(0FFh)
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Ch)
	fcall	_tm1650cmd
	line	400
# 400 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 400 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 400 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 400 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 400 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 400 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text10
	line	401
;main.c: 401: tm1650cmd(0X6E,0xFF);
	movlw	low(0FFh)
	movwf	(tm1650cmd@seg_data)
	movlw	low(06Eh)
	fcall	_tm1650cmd
	line	404
	
l1260:	
	return
	opt stack 0
GLOBAL	__end_of_initTM1650
	__end_of_initTM1650:
	signat	_initTM1650,89
	global	_tm1650cmd

;; *************** function _tm1650cmd *****************
;; Defined at:
;;		line 382 in file "C:\mcuproject\scm\testTouch\main.c"
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
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	382
global __ptext11
__ptext11:	;psect for function _tm1650cmd
psect	text11
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	382
	global	__size_of_tm1650cmd
	__size_of_tm1650cmd	equ	__end_of_tm1650cmd-_tm1650cmd
	
_tm1650cmd:	
;incstack = 0
	opt	stack 3
; Regs used in _tm1650cmd: [wreg+status,2+status,0+pclath+cstack]
;tm1650cmd@digAddr stored from wreg
	movwf	(tm1650cmd@digAddr)
	line	384
	
l2924:	
;main.c: 384: TM1650_START();
	fcall	_TM1650_START
	line	385
	
l2926:	
;main.c: 385: write_8bit(digAddr);
	movf	(tm1650cmd@digAddr),w
	fcall	_write_8bit
	line	386
	
l2928:	
;main.c: 386: write_8bit(seg_data);
	movf	(tm1650cmd@seg_data),w
	fcall	_write_8bit
	line	387
;main.c: 387: TM1650_STOP();
	fcall	_TM1650_STOP
	line	388
	
l1257:	
	return
	opt stack 0
GLOBAL	__end_of_tm1650cmd
	__end_of_tm1650cmd:
	signat	_tm1650cmd,8313
	global	_write_8bit

;; *************** function _write_8bit *****************
;; Defined at:
;;		line 331 in file "C:\mcuproject\scm\testTouch\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	331
global __ptext12
__ptext12:	;psect for function _write_8bit
psect	text12
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	331
	global	__size_of_write_8bit
	__size_of_write_8bit	equ	__end_of_write_8bit-_write_8bit
	
_write_8bit:	
;incstack = 0
	opt	stack 3
; Regs used in _write_8bit: [wreg+status,2+status,0]
;write_8bit@dat stored from wreg
	movwf	(write_8bit@dat)
	line	334
	
l2826:	
;main.c: 333: unsigned char i;
;main.c: 334: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	335
	
l2828:	
;main.c: 335: for(i=0;i<8;i++)
	clrf	(write_8bit@i)
	line	336
	
l1250:	
	line	337
;main.c: 336: {
;main.c: 337: if(dat&0x80)
	btfss	(write_8bit@dat),(7)&7
	goto	u1351
	goto	u1350
u1351:
	goto	l1252
u1350:
	line	339
	
l2834:	
;main.c: 338: {
;main.c: 339: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	340
# 340 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 340 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 340 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 340 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 340 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 340 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	341
# 341 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 341 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 341 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 341 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 341 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 341 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text12
	line	342
;main.c: 342: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	343
# 343 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 343 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 343 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 343 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 343 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 343 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	344
# 344 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 344 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 344 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 344 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 344 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 344 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	345
# 345 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 345 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 345 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 345 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 345 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 345 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	346
# 346 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 346 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 346 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 346 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 346 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 346 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	347
# 347 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 347 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 347 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 347 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 347 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 347 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text12
	line	348
;main.c: 348: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	349
;main.c: 349: }
	goto	l1253
	line	350
	
l1252:	
	line	352
;main.c: 350: else
;main.c: 351: {
;main.c: 352: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	353
# 353 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 353 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 353 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 353 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 353 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 353 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	354
# 354 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 354 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 354 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 354 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 354 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 354 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text12
	line	355
;main.c: 355: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	356
# 356 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 356 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 356 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 356 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 356 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 356 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	357
# 357 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 357 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 357 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 357 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 357 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 357 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	358
# 358 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 358 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 358 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 358 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 358 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 358 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	359
# 359 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 359 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 359 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 359 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 359 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 359 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	360
# 360 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 360 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 360 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 360 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 360 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 360 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text12
	line	361
;main.c: 361: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	362
	
l1253:	
	line	363
;main.c: 362: }
;main.c: 363: dat<<=1;
	clrc
	rlf	(write_8bit@dat),f
	line	335
	
l2836:	
	incf	(write_8bit@i),f
	
l2838:	
	movlw	low(08h)
	subwf	(write_8bit@i),w
	skipc
	goto	u1361
	goto	u1360
u1361:
	goto	l1250
u1360:
	
l1251:	
	line	365
;main.c: 364: }
;main.c: 365: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	366
# 366 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 366 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 366 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 366 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 366 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 366 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	367
# 367 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 367 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 367 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 367 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 367 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 367 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	368
# 368 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 368 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 368 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 368 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 368 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 368 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	369
# 369 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 369 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 369 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 369 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 369 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 369 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text12
	line	370
;main.c: 370: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	371
# 371 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 371 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 371 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 371 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 371 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 371 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	372
# 372 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 372 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 372 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 372 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 372 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 372 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	373
# 373 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 373 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 373 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 373 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 373 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 373 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	374
# 374 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 374 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 374 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 374 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 374 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 374 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	375
# 375 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 375 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 375 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 375 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 375 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 375 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text12
	line	376
;main.c: 376: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	377
# 377 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 377 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 377 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 377 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 377 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 377 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
	line	378
# 378 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 378 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 378 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 378 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 378 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 378 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text12
	line	379
	
l1254:	
	return
	opt stack 0
GLOBAL	__end_of_write_8bit
	__end_of_write_8bit:
	signat	_write_8bit,4217
	global	_TM1650_STOP

;; *************** function _TM1650_STOP *****************
;; Defined at:
;;		line 317 in file "C:\mcuproject\scm\testTouch\main.c"
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
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	317
global __ptext13
__ptext13:	;psect for function _TM1650_STOP
psect	text13
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	317
	global	__size_of_TM1650_STOP
	__size_of_TM1650_STOP	equ	__end_of_TM1650_STOP-_TM1650_STOP
	
_TM1650_STOP:	
;incstack = 0
	opt	stack 3
; Regs used in _TM1650_STOP: []
	line	319
	
l2824:	
;main.c: 319: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	320
# 320 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 320 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 320 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 320 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 320 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 320 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text13
	line	321
;main.c: 321: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	322
# 322 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 322 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 322 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 322 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 322 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 322 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text13
	line	323
;main.c: 323: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	324
# 324 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 324 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 324 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 324 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 324 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 324 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text13
	line	325
;main.c: 325: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	326
;main.c: 326: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	327
	
l1247:	
	return
	opt stack 0
GLOBAL	__end_of_TM1650_STOP
	__end_of_TM1650_STOP:
	signat	_TM1650_STOP,89
	global	_TM1650_START

;; *************** function _TM1650_START *****************
;; Defined at:
;;		line 306 in file "C:\mcuproject\scm\testTouch\main.c"
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	306
global __ptext14
__ptext14:	;psect for function _TM1650_START
psect	text14
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	306
	global	__size_of_TM1650_START
	__size_of_TM1650_START	equ	__end_of_TM1650_START-_TM1650_START
	
_TM1650_START:	
;incstack = 0
	opt	stack 3
; Regs used in _TM1650_START: []
	line	308
	
l2822:	
;main.c: 308: RC0=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3112/8)^0180h,(3112)&7	;volatile
	line	309
;main.c: 309: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	310
# 310 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 310 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 310 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 310 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 310 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 310 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text14
	line	311
;main.c: 311: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	312
# 312 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 312 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 312 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 312 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 312 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
# 312 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text14
	line	313
;main.c: 313: RC0=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3112/8)^0180h,(3112)&7	;volatile
	line	314
	
l1244:	
	return
	opt stack 0
GLOBAL	__end_of_TM1650_START
	__end_of_TM1650_START:
	signat	_TM1650_START,89
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 597 in file "C:\mcuproject\scm\testTouch\main.c"
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	597
global __ptext15
__ptext15:	;psect for function _chrgCtr
psect	text15
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	597
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	599
	
l3528:	
;main.c: 599: if(0x20 & PORTA)
	btfss	(5),(5)&7	;volatile
	goto	u2491
	goto	u2490
u2491:
	goto	l3548
u2490:
	line	601
	
l3530:	
;main.c: 600: {
;main.c: 601: checkChrgAD();
	fcall	_checkChrgAD
	line	602
	
l3532:	
;main.c: 602: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	603
	
l3534:	
;main.c: 603: workStep = 0;
	clrf	(_workStep)
	line	604
	
l3536:	
;main.c: 604: ledLightTime = 0;
	clrf	(_ledLightTime)
	clrf	(_ledLightTime+1)
	line	605
	
l3538:	
;main.c: 605: if(batResult > 1545)
	movlw	06h
	subwf	(_batResult+1),w
	movlw	0Ah
	skipnz
	subwf	(_batResult),w
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l3546
u2500:
	line	607
	
l3540:	
;main.c: 606: {
;main.c: 607: if(++chrgFullTime > 2500)
	incf	(_chrgFullTime),f
	skipnz
	incf	(_chrgFullTime+1),f
	movlw	09h
	subwf	((_chrgFullTime+1)),w
	movlw	0C5h
	skipnz
	subwf	((_chrgFullTime)),w
	skipc
	goto	u2511
	goto	u2510
u2511:
	goto	l1328
u2510:
	line	609
	
l3542:	
;main.c: 608: {
;main.c: 609: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	clrf	(_chrgFullTime+1)
	line	610
	
l3544:	
;main.c: 610: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l1328
	line	615
	
l3546:	
;main.c: 613: else
;main.c: 614: {
;main.c: 615: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	clrf	(_chrgFullTime+1)
	goto	l1328
	line	620
	
l3548:	
;main.c: 618: else
;main.c: 619: {
;main.c: 620: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	621
;main.c: 621: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	622
;main.c: 622: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	clrf	(_chrgFullTime+1)
	line	623
;main.c: 623: chrgDuty = 0;
	clrf	(_chrgDuty)
	line	624
;main.c: 624: chrgLockFlag = 0;
	clrf	(_chrgLockFlag)
	line	626
	
l1328:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_checkChrgAD

;; *************** function _checkChrgAD *****************
;; Defined at:
;;		line 251 in file "C:\mcuproject\scm\testTouch\main.c"
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	251
global __ptext16
__ptext16:	;psect for function _checkChrgAD
psect	text16
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	251
	global	__size_of_checkChrgAD
	__size_of_checkChrgAD	equ	__end_of_checkChrgAD-_checkChrgAD
	
_checkChrgAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkChrgAD: [wreg+status,2+status,0+pclath+cstack]
	line	253
	
l2964:	
;main.c: 253: chrgResult = Read_ADC(16,1);
	clrf	(Read_ADC@ADCLDORef)
	incf	(Read_ADC@ADCLDORef),f
	movlw	low(010h)
	fcall	_Read_ADC
	movf	(1+(?_Read_ADC)),w
	movwf	(_chrgResult+1)
	movf	(0+(?_Read_ADC)),w
	movwf	(_chrgResult)
	line	254
	
l1224:	
	return
	opt stack 0
GLOBAL	__end_of_checkChrgAD
	__end_of_checkChrgAD:
	signat	_checkChrgAD,89
	global	_checkBat

;; *************** function _checkBat *****************
;; Defined at:
;;		line 256 in file "C:\mcuproject\scm\testTouch\main.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Read_ADC
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	256
global __ptext17
__ptext17:	;psect for function _checkBat
psect	text17
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	256
	global	__size_of_checkBat
	__size_of_checkBat	equ	__end_of_checkBat-_checkBat
	
_checkBat:	
;incstack = 0
	opt	stack 5
; Regs used in _checkBat: [wreg+status,2+status,0+pclath+cstack]
	line	258
	
l3394:	
;main.c: 258: batResult = Read_ADC(10,1);
	clrf	(Read_ADC@ADCLDORef)
	incf	(Read_ADC@ADCLDORef),f
	movlw	low(0Ah)
	fcall	_Read_ADC
	movf	(1+(?_Read_ADC)),w
	movwf	(_batResult+1)
	movf	(0+(?_Read_ADC)),w
	movwf	(_batResult)
	line	259
	
l3396:	
;main.c: 259: if(batResult < 1118)
	movlw	04h
	subwf	(_batResult+1),w
	movlw	05Eh
	skipnz
	subwf	(_batResult),w
	skipnc
	goto	u2281
	goto	u2280
u2281:
	goto	l3400
u2280:
	line	261
	
l3398:	
;main.c: 260: {
;main.c: 261: batValue = 0;
	clrf	(_batValue)
	line	262
;main.c: 262: }
	goto	l1232
	line	265
	
l3400:	
;main.c: 263: else
;main.c: 264: {
;main.c: 265: if(batResult >= 1340)
	movlw	05h
	subwf	(_batResult+1),w
	movlw	03Ch
	skipnz
	subwf	(_batResult),w
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l3404
u2290:
	line	267
	
l3402:	
;main.c: 266: {
;main.c: 267: batValue = ((batResult - 1340) /2) + 16;
	movf	(_batResult),w
	addlw	low(0FAC4h)
	movwf	(??_checkBat+0)+0
	movf	(_batResult+1),w
	skipnc
	addlw	1
	addlw	high(0FAC4h)
	movwf	1+(??_checkBat+0)+0
	clrc
	rrf	(??_checkBat+0)+1,f
	rrf	(??_checkBat+0)+0,f
	movf	0+(??_checkBat+0)+0,w
	addlw	010h
	movwf	(_batValue)
	line	268
;main.c: 268: }
	goto	l3406
	line	271
	
l3404:	
;main.c: 269: else
;main.c: 270: {
;main.c: 271: batValue = (batResult - 1118) / 16;
	movf	(_batResult),w
	addlw	low(0FBA2h)
	movwf	(??_checkBat+0)+0
	movf	(_batResult+1),w
	skipnc
	addlw	1
	addlw	high(0FBA2h)
	movwf	1+(??_checkBat+0)+0
	movlw	04h
u2305:
	clrc
	rrf	(??_checkBat+0)+1,f
	rrf	(??_checkBat+0)+0,f
	addlw	-1
	skipz
	goto	u2305
	movf	0+(??_checkBat+0)+0,w
	movwf	(_batValue)
	line	274
	
l3406:	
;main.c: 272: }
;main.c: 274: if(batValue > 99)
	movlw	low(064h)
	subwf	(_batValue),w
	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l1232
u2310:
	line	275
	
l3408:	
;main.c: 275: batValue = 99;
	movlw	low(063h)
	movwf	(_batValue)
	line	277
	
l1232:	
	return
	opt stack 0
GLOBAL	__end_of_checkBat
	__end_of_checkBat:
	signat	_checkBat,89
	global	_Read_ADC

;; *************** function _Read_ADC *****************
;; Defined at:
;;		line 206 in file "C:\mcuproject\scm\testTouch\main.c"
;; Parameters:    Size  Location     Type
;;  ADCchannel      1    wreg     unsigned char 
;;  ADCLDORef       1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ADCchannel      1    5[BANK0 ] unsigned char 
;;  Adc_Result      2    2[BANK0 ] unsigned int 
;;  Adc_ResultSu    2    0[BANK0 ] unsigned int 
;;  j               1    6[BANK0 ] unsigned char 
;;  i               1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       7       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkChrgAD
;;		_checkBat
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	206
global __ptext18
__ptext18:	;psect for function _Read_ADC
psect	text18
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	206
	global	__size_of_Read_ADC
	__size_of_Read_ADC	equ	__end_of_Read_ADC-_Read_ADC
	
_Read_ADC:	
;incstack = 0
	opt	stack 4
; Regs used in _Read_ADC: [wreg+status,2+status,0]
;Read_ADC@ADCchannel stored from wreg
	movwf	(Read_ADC@ADCchannel)
	line	209
	
l2876:	
;main.c: 208: unsigned int Adc_Result;
;main.c: 209: unsigned int Adc_ResultSum = 0;
	clrf	(Read_ADC@Adc_ResultSum)
	clrf	(Read_ADC@Adc_ResultSum+1)
	line	210
	
l2878:	
;main.c: 210: unsigned char i=200;
	movlw	low(0C8h)
	movwf	(Read_ADC@i)
	line	211
	
l2880:	
	line	212
	
l2882:	
;main.c: 212: for(j=0;j<8;j++)
	clrf	(Read_ADC@j)
	line	214
	
l2888:	
;main.c: 213: {
;main.c: 214: if(ADCLDORef==0)
	movf	((Read_ADC@ADCLDORef)),w
	btfss	status,2
	goto	u1381
	goto	u1380
u1381:
	goto	l2892
u1380:
	line	216
	
l2890:	
;main.c: 215: {
;main.c: 216: ADCON1 = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(156)^080h	;volatile
	line	217
;main.c: 217: }
	goto	l2898
	line	218
	
l2892:	
;main.c: 218: else if(ADCLDORef==1)
		decf	((Read_ADC@ADCLDORef)),w
	btfss	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l2896
u1390:
	line	220
	
l2894:	
;main.c: 219: {
;main.c: 220: ADCON1 = 0B00000101;
	movlw	low(05h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	221
;main.c: 221: }
	goto	l2898
	line	224
	
l2896:	
;main.c: 222: else
;main.c: 223: {
;main.c: 224: ADCON1 = 0B00000110;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	227
	
l2898:	
;main.c: 225: }
;main.c: 227: CHS4 = 0;
	bcf	(1254/8)^080h,(1254)&7	;volatile
	line	228
;main.c: 228: if(ADCchannel >=16)
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(Read_ADC@ADCchannel),w
	skipc
	goto	u1401
	goto	u1400
u1401:
	goto	l1215
u1400:
	line	230
	
l2900:	
;main.c: 229: {
;main.c: 230: ADCchannel -= 16;
	movlw	010h
	subwf	(Read_ADC@ADCchannel),f
	line	231
	
l2902:	
;main.c: 231: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1254/8)^080h,(1254)&7	;volatile
	line	232
	
l1215:	
	line	234
;main.c: 232: }
;main.c: 234: ADCON0 &= 0b11000011;
	movlw	low(0C3h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(157)^080h,f	;volatile
	line	235
;main.c: 235: ADCON0 |= ADCchannel<<2;
	bcf	status, 5	;RP0=0, select bank0
	movf	(Read_ADC@ADCchannel),w
	movwf	(??_Read_ADC+0)+0
	movlw	(02h)-1
u1415:
	clrc
	rlf	(??_Read_ADC+0)+0,f
	addlw	-1
	skipz
	goto	u1415
	clrc
	rlf	(??_Read_ADC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(157)^080h,f	;volatile
	line	236
# 236 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text18
	line	237
	
l2904:	
;main.c: 237: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	238
;main.c: 238: while(GODONE==1&&i>0)
	goto	l2908
	line	240
	
l2906:	
;main.c: 239: {
;main.c: 240: i--;
	decf	(Read_ADC@i),f
	line	241
# 241 "C:\mcuproject\scm\testTouch\main.c"
nop ;# 
psect	text18
	line	238
	
l2908:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1257/8)^080h,(1257)&7	;volatile
	goto	u1421
	goto	u1420
u1421:
	goto	l2912
u1420:
	
l2910:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((Read_ADC@i)),w
	btfss	status,2
	goto	u1431
	goto	u1430
u1431:
	goto	l2906
u1430:
	line	243
	
l2912:	
;main.c: 242: }
;main.c: 243: Adc_Result = ADRESH<<4;
	bsf	status, 5	;RP0=1, select bank1
	movf	(159)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
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
	line	244
	
l2914:	
;main.c: 244: Adc_Result += ADRESL>>4;
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(Read_ADC@Adc_Result),f
	skipnc
	incf	(Read_ADC@Adc_Result+1),f
	line	245
	
l2916:	
;main.c: 245: Adc_ResultSum += Adc_Result;
	movf	(Read_ADC@Adc_Result),w
	addwf	(Read_ADC@Adc_ResultSum),f
	skipnc
	incf	(Read_ADC@Adc_ResultSum+1),f
	movf	(Read_ADC@Adc_Result+1),w
	addwf	(Read_ADC@Adc_ResultSum+1),f
	line	212
	
l2918:	
	incf	(Read_ADC@j),f
	movlw	low(08h)
	subwf	(Read_ADC@j),w
	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l2888
u1440:
	line	247
	
l2920:	
;main.c: 246: }
;main.c: 247: return Adc_ResultSum/8;
	movf	(Read_ADC@Adc_ResultSum+1),w
	movwf	(??_Read_ADC+0)+0+1
	movf	(Read_ADC@Adc_ResultSum),w
	movwf	(??_Read_ADC+0)+0
	clrc
	rrf	(??_Read_ADC+0)+1,f
	rrf	(??_Read_ADC+0)+0,f
	clrc
	rrf	(??_Read_ADC+0)+1,f
	rrf	(??_Read_ADC+0)+0,f
	clrc
	rrf	(??_Read_ADC+0)+1,f
	rrf	(??_Read_ADC+0)+0,f
	movf	0+(??_Read_ADC+0)+0,w
	movwf	(?_Read_ADC)
	movf	1+(??_Read_ADC+0)+0,w
	movwf	(?_Read_ADC+1)
	line	249
	
l1221:	
	return
	opt stack 0
GLOBAL	__end_of_Read_ADC
	__end_of_Read_ADC:
	signat	_Read_ADC,8314
	global	_Refurbish_Sfr

;; *************** function _Refurbish_Sfr *****************
;; Defined at:
;;		line 93 in file "C:\mcuproject\scm\testTouch\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 800/0
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	93
global __ptext19
__ptext19:	;psect for function _Refurbish_Sfr
psect	text19
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	93
	global	__size_of_Refurbish_Sfr
	__size_of_Refurbish_Sfr	equ	__end_of_Refurbish_Sfr-_Refurbish_Sfr
	
_Refurbish_Sfr:	
;incstack = 0
	opt	stack 6
; Regs used in _Refurbish_Sfr: [wreg+status,2+status,0]
	line	95
	
l3298:	
;main.c: 95: PIE1 = 2;
	movlw	low(02h)
	movwf	(13)	;volatile
	line	96
;main.c: 96: PR2 = 250;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	97
;main.c: 97: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	98
	
l3300:	
;main.c: 98: if (4 != T2CON)
		movlw	4
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((18)),w	;volatile
	btfsc	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l1177
u2000:
	line	99
	
l3302:	
;main.c: 99: T2CON = 4;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	100
	
l1177:	
	return
	opt stack 0
GLOBAL	__end_of_Refurbish_Sfr
	__end_of_Refurbish_Sfr:
	signat	_Refurbish_Sfr,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 106 in file "C:\mcuproject\scm\testTouch\main.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	106
global __ptext20
__ptext20:	;psect for function _KeyServer
psect	text20
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	106
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 6
; Regs used in _KeyServer: [wreg+status,2+status,0]
	line	108
	
l3304:	
;main.c: 109: NoTouchTime = 0;
	movf	((_KeyFlag)),w	;volatile
	btfsc	status,2
	goto	u2011
	goto	u2010
u2011:
	goto	l3362
u2010:
	line	110
	
l3306:	
;main.c: 110: if ((KeyFlag[0] & 0x2)) {
	btfss	(_KeyFlag),(1)&7	;volatile
	goto	u2021
	goto	u2020
u2021:
	goto	l3318
u2020:
	line	112
	
l3308:	
;main.c: 112: if(++keyCount1 > 100)
	incf	(_keyCount1),f
	skipnz
	incf	(_keyCount1+1),f
	movlw	0
	subwf	((_keyCount1+1)),w
	movlw	065h
	skipnz
	subwf	((_keyCount1)),w
	skipc
	goto	u2031
	goto	u2030
u2031:
	goto	l3318
u2030:
	line	114
	
l3310:	
;main.c: 113: {
;main.c: 114: keyCount1 = 100;
	movlw	064h
	movwf	(_keyCount1)
	clrf	(_keyCount1+1)
	line	115
;main.c: 115: if(workStep > 1 && ++count50 > 25)
	movlw	low(02h)
	subwf	(_workStep),w
	skipc
	goto	u2041
	goto	u2040
u2041:
	goto	l3318
u2040:
	
l3312:	
	movlw	low(01Ah)
	incf	(_count50),f
	subwf	((_count50)),w
	skipc
	goto	u2051
	goto	u2050
u2051:
	goto	l3318
u2050:
	line	117
	
l3314:	
;main.c: 116: {
;main.c: 117: workStep--;
	decf	(_workStep),f
	line	118
	
l3316:	
;main.c: 118: count50 = 0;
	clrf	(_count50)
	line	122
	
l3318:	
;main.c: 119: }
;main.c: 120: }
;main.c: 121: }
;main.c: 122: if ((KeyFlag[0] & 0x1)) {
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u2061
	goto	u2060
u2061:
	goto	l3334
u2060:
	line	124
	
l3320:	
;main.c: 124: if(++keyCount2 > 100)
	incf	(_keyCount2),f
	skipnz
	incf	(_keyCount2+1),f
	movlw	0
	subwf	((_keyCount2+1)),w
	movlw	065h
	skipnz
	subwf	((_keyCount2)),w
	skipc
	goto	u2071
	goto	u2070
u2071:
	goto	l3334
u2070:
	line	126
	
l3322:	
;main.c: 125: {
;main.c: 126: keyCount2 = 100;
	movlw	064h
	movwf	(_keyCount2)
	clrf	(_keyCount2+1)
	line	127
;main.c: 127: if(workStep < 30 && (workStep > 0 || ledLightTime > 0) && ++count50 > 25)
	movlw	low(01Eh)
	subwf	(_workStep),w
	skipnc
	goto	u2081
	goto	u2080
u2081:
	goto	l3334
u2080:
	
l3324:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u2091
	goto	u2090
u2091:
	goto	l3328
u2090:
	
l3326:	
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u2101
	goto	u2100
u2101:
	goto	l3334
u2100:
	
l3328:	
	movlw	low(01Ah)
	incf	(_count50),f
	subwf	((_count50)),w
	skipc
	goto	u2111
	goto	u2110
u2111:
	goto	l3334
u2110:
	line	129
	
l3330:	
;main.c: 128: {
;main.c: 129: workStep++;
	incf	(_workStep),f
	line	130
	
l3332:	
;main.c: 130: count50 = 0;
	clrf	(_count50)
	line	134
	
l3334:	
;main.c: 131: }
;main.c: 132: }
;main.c: 133: }
;main.c: 134: if (KeyFlag[0] & 0x4) {
	btfss	(_KeyFlag),(2)&7	;volatile
	goto	u2121
	goto	u2120
u2121:
	goto	l1206
u2120:
	line	136
	
l3336:	
;main.c: 136: if(++keyCount3 > 200)
	incf	(_keyCount3),f
	skipnz
	incf	(_keyCount3+1),f
	movlw	0
	subwf	((_keyCount3+1)),w
	movlw	0C9h
	skipnz
	subwf	((_keyCount3)),w
	skipc
	goto	u2131
	goto	u2130
u2131:
	goto	l3354
u2130:
	line	138
	
l3338:	
;main.c: 137: {
;main.c: 138: keyCount3 = 200;
	movlw	0C8h
	movwf	(_keyCount3)
	clrf	(_keyCount3+1)
	line	139
	
l3340:	
;main.c: 139: if(longKeyFalg == 0)
	movf	((_longKeyFalg)),w
	btfss	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l3354
u2140:
	line	141
	
l3342:	
;main.c: 140: {
;main.c: 141: longKeyFalg = 1;
	clrf	(_longKeyFalg)
	incf	(_longKeyFalg),f
	line	142
	
l3344:	
;main.c: 142: if(workStep > 0 || ledLightTime > 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l3348
u2150:
	
l3346:	
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l3350
u2160:
	line	144
	
l3348:	
;main.c: 143: {
;main.c: 144: workStep = 0;
	clrf	(_workStep)
	line	145
;main.c: 145: zeroStep = 0;
	clrf	(_zeroStep)
	line	146
;main.c: 146: ledLightTime = 0;
	clrf	(_ledLightTime)
	clrf	(_ledLightTime+1)
	line	147
;main.c: 147: }
	goto	l3354
	line	150
	
l3350:	
;main.c: 148: else
;main.c: 149: {
;main.c: 150: workStep = 0;
	clrf	(_workStep)
	line	151
;main.c: 151: zeroStep = 0;
	clrf	(_zeroStep)
	line	152
	
l3352:	
;main.c: 152: ledLightTime = 300;
	movlw	02Ch
	movwf	(_ledLightTime)
	movlw	01h
	movwf	((_ledLightTime))+1
	line	160
;main.c: 154: {
;main.c: 155: shanShuoTime = 250;
	
l3354:	
;main.c: 156: }
;main.c: 157: }
;main.c: 158: }
;main.c: 159: }
;main.c: 160: if(ledLightTime == 0 && longKeyFalg == 0 && keyCount3 % 16 == 0)
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfss	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l1206
u2170:
	
l3356:	
	movf	((_longKeyFalg)),w
	btfss	status,2
	goto	u2181
	goto	u2180
u2181:
	goto	l1206
u2180:
	
l3358:	
	movf	(_keyCount3),w
	andlw	0Fh
	btfss	status,2
	goto	u2191
	goto	u2190
u2191:
	goto	l1206
u2190:
	line	162
	
l3360:	
;main.c: 161: {
;main.c: 162: zeroStep++;
	incf	(_zeroStep),f
	goto	l1206
	line	168
	
l3362:	
;main.c: 168: if(keyCount1 > 5 && workStep > 1)
	movlw	0
	subwf	(_keyCount1+1),w
	movlw	06h
	skipnz
	subwf	(_keyCount1),w
	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l3368
u2200:
	
l3364:	
	movlw	low(02h)
	subwf	(_workStep),w
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l3368
u2210:
	line	170
	
l3366:	
;main.c: 169: {
;main.c: 170: workStep--;
	decf	(_workStep),f
	line	172
	
l3368:	
;main.c: 171: }
;main.c: 172: keyCount1 = 0;
	clrf	(_keyCount1)
	clrf	(_keyCount1+1)
	line	174
	
l3370:	
;main.c: 174: if(keyCount2 > 5 && workStep < 30 && (workStep > 0 || ledLightTime > 0))
	movlw	0
	subwf	(_keyCount2+1),w
	movlw	06h
	skipnz
	subwf	(_keyCount2),w
	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l3380
u2220:
	
l3372:	
	movlw	low(01Eh)
	subwf	(_workStep),w
	skipnc
	goto	u2231
	goto	u2230
u2231:
	goto	l3380
u2230:
	
l3374:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u2241
	goto	u2240
u2241:
	goto	l3378
u2240:
	
l3376:	
	movf	((_ledLightTime)),w
iorwf	((_ledLightTime+1)),w
	btfsc	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l3380
u2250:
	line	176
	
l3378:	
;main.c: 175: {
;main.c: 176: workStep++;
	incf	(_workStep),f
	line	178
	
l3380:	
;main.c: 177: }
;main.c: 178: keyCount2 = 0;
	clrf	(_keyCount2)
	clrf	(_keyCount2+1)
	line	185
	
l3382:	
;main.c: 185: longKeyFalg = 0;
	clrf	(_longKeyFalg)
	line	186
	
l3384:	
;main.c: 186: keyCount3 = 0;
	clrf	(_keyCount3)
	clrf	(_keyCount3+1)
	line	187
	
l3386:	
;main.c: 187: if(zeroStep > 0 && ++count64ms >= 12)
	movf	((_zeroStep)),w
	btfsc	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l1206
u2260:
	
l3388:	
	movlw	low(0Ch)
	incf	(_count64ms),f
	subwf	((_count64ms)),w
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l1206
u2270:
	line	189
	
l3390:	
;main.c: 188: {
;main.c: 189: zeroStep--;
	decf	(_zeroStep),f
	line	190
	
l3392:	
;main.c: 190: count64ms = 0;
	clrf	(_count64ms)
	line	193
	
l1206:	
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
;;		On exit  : B00/0
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
psect	text21,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	529
global __ptext21
__ptext21:	;psect for function _CheckTouchKey
psect	text21
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	529
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 2
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	531
	
l3878:	
;CheckTouchKey.c: 531: if(!b_kover)
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u3031
	goto	u3030
u3031:
	goto	l1557
u3030:
	line	534
	
l3880:	
;CheckTouchKey.c: 532: {
;CheckTouchKey.c: 534: GetTouchKeyValue();
	fcall	_GetTouchKeyValue
	line	535
	
l3882:	
;CheckTouchKey.c: 535: if(++KeyCounter >= 8)
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l3914
u3040:
	line	537
	
l3884:	
;CheckTouchKey.c: 536: {
;CheckTouchKey.c: 537: KeyCounter = 0;
	clrf	(_KeyCounter)
	line	538
	
l3886:	
;CheckTouchKey.c: 538: b_kover = 1;
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l3914
	line	541
	
l1557:	
;CheckTouchKey.c: 541: else if(!b_kover1)
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u3051
	goto	u3050
u3051:
	goto	l3908
u3050:
	line	544
	
l3888:	
;CheckTouchKey.c: 542: {
;CheckTouchKey.c: 544: CheckOnceResult();
	fcall	_CheckOnceResult
	line	547
	
l3890:	
;CheckTouchKey.c: 547: TurnKeyFlags();
	fcall	_TurnKeyFlags
	line	548
	
l3892:	
;CheckTouchKey.c: 548: b_kover1 = 1;
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	554
	
l3894:	
;CheckTouchKey.c: 554: if(b_kerr || KeyCounter > KeyValidNumber)
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u3061
	goto	u3060
u3061:
	goto	l3898
u3060:
	
l3896:	
	movlw	low(02h)
	subwf	(_KeyCounter),w
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l3906
u3070:
	line	556
	
l3898:	
;CheckTouchKey.c: 555: {
;CheckTouchKey.c: 556: KeyStopClear();
	fcall	_KeyStopClear
	line	557
	
l3900:	
;CheckTouchKey.c: 557: b_kerr = 0;
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	558
	
l3902:	
;CheckTouchKey.c: 558: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	559
	
l3904:	
;CheckTouchKey.c: 559: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	561
	
l3906:	
;CheckTouchKey.c: 560: }
;CheckTouchKey.c: 561: KeyCounter = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	line	562
;CheckTouchKey.c: 562: }
	goto	l3914
	line	566
	
l3908:	
;CheckTouchKey.c: 563: else
;CheckTouchKey.c: 564: {
;CheckTouchKey.c: 566: CheckKeyOldValue();
	fcall	_CheckKeyOldValue
	line	568
;CheckTouchKey.c: 568: ClearResSum();
	fcall	_ClearResSum
	line	570
	
l3910:	
;CheckTouchKey.c: 570: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	571
	
l3912:	
;CheckTouchKey.c: 571: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	574
	
l3914:	
;CheckTouchKey.c: 572: }
;CheckTouchKey.c: 574: CheckValidTime();
	fcall	_CheckValidTime
	line	575
	
l1565:	
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
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : B00/0
;;		Unchanged: 800/0
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
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	line	416
global __ptext22
__ptext22:	;psect for function _TurnKeyFlags
psect	text22
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	416
	global	__size_of_TurnKeyFlags
	__size_of_TurnKeyFlags	equ	__end_of_TurnKeyFlags-_TurnKeyFlags
	
_TurnKeyFlags:	
;incstack = 0
	opt	stack 2
; Regs used in _TurnKeyFlags: [wreg+status,2+status,0]
	line	421
	
l3844:	
;CheckTouchKey.c: 418: static unsigned char KeyHaveTimes = 0;
;CheckTouchKey.c: 419: static unsigned char KeyNoTimes = 0;
;CheckTouchKey.c: 421: if(KeyData[0] | KeyData[1])
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l3870
u2980:
	line	423
	
l3846:	
;CheckTouchKey.c: 422: {
;CheckTouchKey.c: 423: KeyNoTimes = 0;
	clrf	(TurnKeyFlags@KeyNoTimes)
	line	425
	
l3848:	
;CheckTouchKey.c: 425: if(KeyData[0] == KeyOldData[0] && KeyData[1] == KeyOldData[1])
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l1538
u2990:
	
l3850:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u3001
	goto	u3000
u3001:
	goto	l1538
u3000:
	line	427
	
l3852:	
	movlw	low(02h)
	incf	(TurnKeyFlags@KeyHaveTimes),f
	subwf	((TurnKeyFlags@KeyHaveTimes)),w
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l1545
u3010:
	line	429
	
l3854:	
;CheckTouchKey.c: 428: {
;CheckTouchKey.c: 429: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	line	430
	
l3856:	
;CheckTouchKey.c: 430: KeyFlag[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	line	431
	
l3858:	
;CheckTouchKey.c: 431: KeyFlag[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	line	433
	goto	l1545
	line	443
	
l1538:	
	line	445
;CheckTouchKey.c: 443: else
;CheckTouchKey.c: 444: {
;CheckTouchKey.c: 445: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	446
	
l3866:	
;CheckTouchKey.c: 446: KeyOldData[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	line	447
;CheckTouchKey.c: 447: KeyOldData[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	line	448
	
l3868:	
;CheckTouchKey.c: 448: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	goto	l1545
	line	453
	
l3870:	
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
	
l3872:	
;CheckTouchKey.c: 457: if(++KeyNoTimes >=2)
	movlw	low(02h)
	incf	(TurnKeyFlags@KeyNoTimes),f
	subwf	((TurnKeyFlags@KeyNoTimes)),w
	skipc
	goto	u3021
	goto	u3020
u3021:
	goto	l1545
u3020:
	line	459
	
l3874:	
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
	
l3876:	
;CheckTouchKey.c: 463: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	466
	
l1545:	
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
;;		On entry : 0/0
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
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	line	104
global __ptext23
__ptext23:	;psect for function _KeyClearIn
psect	text23
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	104
	global	__size_of_KeyClearIn
	__size_of_KeyClearIn	equ	__end_of_KeyClearIn-_KeyClearIn
	
_KeyClearIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyClearIn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	107
	
l3694:	
;CheckTouchKey.c: 106: unsigned char cnt;
;CheckTouchKey.c: 107: for(cnt=0;cnt < KeyTotalNumber;cnt++)
	clrf	(KeyClearIn@cnt)
	line	109
	
l3700:	
;CheckTouchKey.c: 108: {
;CheckTouchKey.c: 109: if(!KeyIsIn(cnt))
	movf	(KeyClearIn@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2751
	goto	u2750
u2751:
	goto	l3704
u2750:
	line	111
	
l3702:	
;CheckTouchKey.c: 110: {
;CheckTouchKey.c: 111: KeyClearOne(cnt);
	movf	(KeyClearIn@cnt),w
	fcall	_KeyClearOne
	line	107
	
l3704:	
	incf	(KeyClearIn@cnt),f
	
l3706:	
	movlw	low(03h)
	subwf	(KeyClearIn@cnt),w
	skipc
	goto	u2761
	goto	u2760
u2761:
	goto	l3700
u2760:
	line	114
	
l1453:	
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
;;		On entry : B00/0
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
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	line	123
global __ptext24
__ptext24:	;psect for function _KeyStopClear
psect	text24
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	123
	global	__size_of_KeyStopClear
	__size_of_KeyStopClear	equ	__end_of_KeyStopClear-_KeyStopClear
	
_KeyStopClear:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	126
	
l3722:	
;CheckTouchKey.c: 125: unsigned char i;
;CheckTouchKey.c: 126: KeyFlag[0] = 0;
	clrf	(_KeyFlag)	;volatile
	line	127
;CheckTouchKey.c: 127: KeyFlag[1] = 0;
	clrf	0+(_KeyFlag)+01h	;volatile
	line	128
;CheckTouchKey.c: 128: for(i = 0; i < KeyTotalNumber; i++)
	clrf	(KeyStopClear@i)
	line	130
	
l3728:	
;CheckTouchKey.c: 129: {
;CheckTouchKey.c: 130: KeyResSum[i] = 0;
	clrc
	rlf	(KeyStopClear@i),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	131
	
l3730:	
;CheckTouchKey.c: 131: KeyClearOne(i);
	movf	(KeyStopClear@i),w
	fcall	_KeyClearOne
	line	128
	
l3732:	
	incf	(KeyStopClear@i),f
	
l3734:	
	movlw	low(03h)
	subwf	(KeyStopClear@i),w
	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l3728
u2780:
	line	133
	
l1458:	
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
;;  temp            2    3[COMMON] unsigned int 
;;  wake            2    0        unsigned int 
;;  cnt             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : A00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ClearResSum
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=1
	line	196
global __ptext25
__ptext25:	;psect for function _GetTouchKeyValue
psect	text25
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	196
	global	__size_of_GetTouchKeyValue
	__size_of_GetTouchKeyValue	equ	__end_of_GetTouchKeyValue-_GetTouchKeyValue
	
_GetTouchKeyValue:	
;incstack = 0
	opt	stack 4
; Regs used in _GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	198
	
l3068:	
;CheckTouchKey.c: 199: unsigned int wake = 1;
	clrf	(GetTouchKeyValue@cnt)
	line	205
	
l3074:	
;CheckTouchKey.c: 204: {
;CheckTouchKey.c: 205: KEYCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(146)^080h	;volatile
	line	206
;CheckTouchKey.c: 206: KEYCON1 = 0;
	clrf	(147)^080h	;volatile
	line	207
	
l3076:	
;CheckTouchKey.c: 207: KEYCON2 = 0x01;
	movlw	low(01h)
	movwf	(151)^080h	;volatile
	line	209
	
l3078:	
;CheckTouchKey.c: 209: TRISB6 = 0;
	bcf	(1078/8)^080h,(1078)&7	;volatile
	line	210
	
l3080:	
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
psect	text25
	line	219
	
l3082:	
;CheckTouchKey.c: 219: TRISB6 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1078/8)^080h,(1078)&7	;volatile
	line	221
	
l3084:	
;CheckTouchKey.c: 221: KEYCON0 = Table_KeyCap[cnt];
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(146)^080h	;volatile
	line	222
	
l3086:	
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
psect	text25
	line	227
	
l3088:	
;CheckTouchKey.c: 227: KEYCON0 |= 0x1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(146)^080h+(0/8),(0)&7	;volatile
	line	229
	
l3090:	
;CheckTouchKey.c: 229: temp = 2000;
	movlw	0D0h
	movwf	(GetTouchKeyValue@temp)
	movlw	07h
	movwf	((GetTouchKeyValue@temp))+1
	line	230
;CheckTouchKey.c: 230: while(!(KEYCON0&0x80))
	goto	l1479
	line	232
	
l3092:	
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
	goto	u1641
	goto	u1640
u1641:
	goto	l1479
u1640:
	line	234
	
l3094:	
;CheckTouchKey.c: 233: {
;CheckTouchKey.c: 234: KeyCounter = 255;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_KeyCounter)
	line	235
	
l3096:	
;CheckTouchKey.c: 235: ClearResSum();
	fcall	_ClearResSum
	goto	l1482
	line	238
	
l1479:	
	line	230
	btfss	(146)^080h,(7)&7	;volatile
	goto	u1651
	goto	u1650
u1651:
	goto	l3092
u1650:
	line	240
	
l3100:	
;CheckTouchKey.c: 237: }
;CheckTouchKey.c: 238: }
;CheckTouchKey.c: 240: KeyResSum[cnt] += (unsigned int)((KEYDATAH<<8) | KEYDATAL);
	clrc
	rlf	(GetTouchKeyValue@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(148)^080h,w	;volatile
	bcf	status, 7	;select IRP bank0
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
	line	243
	
l3102:	
	movlw	low(03h)
	incf	(GetTouchKeyValue@cnt),f
	subwf	((GetTouchKeyValue@cnt)),w
	skipc
	goto	u1661
	goto	u1660
u1661:
	goto	l3074
u1660:
	
l1484:	
	line	244
;CheckTouchKey.c: 244: b_ksleep = 0;
	bcf	(_b_ksleep/8),(_b_ksleep)&7	;volatile
	line	245
	
l1482:	
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
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 300/0
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
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=1
	line	142
global __ptext26
__ptext26:	;psect for function _ClearResSum
psect	text26
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	142
	global	__size_of_ClearResSum
	__size_of_ClearResSum	equ	__end_of_ClearResSum-_ClearResSum
	
_ClearResSum:	
;incstack = 0
	opt	stack 4
; Regs used in _ClearResSum: [wreg-fsr0h+status,2+status,0]
	line	144
	
l2944:	
;CheckTouchKey.c: 144: unsigned char cnt = 0;
	clrf	(ClearResSum@cnt)
	line	147
	
l2946:	
;CheckTouchKey.c: 146: {
;CheckTouchKey.c: 147: KeyResSum[cnt] = 0;
	clrc
	rlf	(ClearResSum@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	148
	
l2948:	
	movlw	low(03h)
	incf	(ClearResSum@cnt),f
	subwf	((ClearResSum@cnt)),w
	skipc
	goto	u1471
	goto	u1470
u1471:
	goto	l2946
u1470:
	line	149
	
l1463:	
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
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 800/0
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
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	line	501
global __ptext27
__ptext27:	;psect for function _CheckValidTime
psect	text27
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	501
	global	__size_of_CheckValidTime
	__size_of_CheckValidTime	equ	__end_of_CheckValidTime-_CheckValidTime
	
_CheckValidTime:	
;incstack = 0
	opt	stack 5
; Regs used in _CheckValidTime: [wreg+status,2+status,0]
	line	507
	
l3246:	
;CheckTouchKey.c: 506: {
;CheckTouchKey.c: 507: if(KeyFlag[0] | KeyFlag[1])
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l3252
u1910:
	line	509
	
l3248:	
	incf	(CheckValidTime@validtime),f
	skipnz
	incf	(CheckValidTime@validtime+1),f
	movlw	03Ah
	subwf	((CheckValidTime@validtime+1)),w
	movlw	098h
	skipnz
	subwf	((CheckValidTime@validtime)),w
	skipc
	goto	u1921
	goto	u1920
u1921:
	goto	l1554
u1920:
	line	511
	
l3250:	
;CheckTouchKey.c: 510: {
;CheckTouchKey.c: 511: b_kerr = 1;
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	512
	
l3252:	
;CheckTouchKey.c: 512: validtime = 0;
	clrf	(CheckValidTime@validtime)
	clrf	(CheckValidTime@validtime+1)
	line	520
	
l1554:	
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
;;  KeyResTemp      2    6[BANK1 ] unsigned int 
;;  KeyValue        2    3[BANK1 ] unsigned int 
;;  OldValue        2    0[BANK1 ] unsigned int 
;;  cnt             1    8[BANK1 ] unsigned char 
;;  KeyDown         1    5[BANK1 ] unsigned char 
;;  flag            1    2[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : B00/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       9       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4       9       0       0
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
psect	text28,local,class=CODE,delta=2,merge=1,group=1
	line	255
global __ptext28
__ptext28:	;psect for function _CheckOnceResult
psect	text28
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	255
	global	__size_of_CheckOnceResult
	__size_of_CheckOnceResult	equ	__end_of_CheckOnceResult-_CheckOnceResult
	
_CheckOnceResult:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	257
	
l3736:	
;CheckTouchKey.c: 257: unsigned char cnt = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(CheckOnceResult@cnt)^080h
	line	265
;CheckTouchKey.c: 258: unsigned char KeyDown;
;CheckTouchKey.c: 259: unsigned char flag;
;CheckTouchKey.c: 261: unsigned int KeyResTemp;
;CheckTouchKey.c: 262: unsigned int KeyValue;
;CheckTouchKey.c: 263: unsigned int OldValue;
;CheckTouchKey.c: 265: KeyData[0] = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_KeyData)	;volatile
	line	266
;CheckTouchKey.c: 266: KeyData[1] = 0;
	clrf	0+(_KeyData)+01h	;volatile
	line	267
;CheckTouchKey.c: 267: KeyMaxSub = 0;
	clrf	(_KeyMaxSub)
	line	272
	
l3738:	
;CheckTouchKey.c: 271: {
;CheckTouchKey.c: 272: flag = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	bsf	status, 5	;RP0=1, select bank1
	movf	(CheckOnceResult@cnt)^080h,w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@flag)^080h
	line	274
	
l3740:	
;CheckTouchKey.c: 274: KeyResSum[cnt] >>= 3;
	clrc
	rlf	(CheckOnceResult@cnt)^080h,w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u2795:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank0
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u2790:
	addlw	-1
	skipz
	goto	u2795
	line	275
	
l3742:	
;CheckTouchKey.c: 275: KeyResTemp = KeyResSum[cnt];
	clrc
	rlf	(CheckOnceResult@cnt)^080h,w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@KeyResTemp)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@KeyResTemp+1)^080h
	line	276
	
l3744:	
;CheckTouchKey.c: 276: KeyDown = Table_KeyDown[cnt];
	movf	(CheckOnceResult@cnt)^080h,w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@KeyDown)^080h
	line	278
	
l3746:	
;CheckTouchKey.c: 278: KeyValue = KeyResTemp + KeyDown;
	movf	(CheckOnceResult@KeyDown)^080h,w
	movwf	(CheckOnceResult@KeyValue)^080h
	clrf	(CheckOnceResult@KeyValue+1)^080h
	
l3748:	
	movf	(CheckOnceResult@KeyResTemp)^080h,w
	addwf	(CheckOnceResult@KeyValue)^080h,f
	skipnc
	incf	(CheckOnceResult@KeyValue+1)^080h,f
	movf	(CheckOnceResult@KeyResTemp+1)^080h,w
	addwf	(CheckOnceResult@KeyValue+1)^080h,f
	line	280
	
l3750:	
;CheckTouchKey.c: 280: if(!KeyIsIn(cnt))
	movf	(CheckOnceResult@cnt)^080h,w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2801
	goto	u2800
u2801:
	goto	l3780
u2800:
	line	283
	
l3752:	
;CheckTouchKey.c: 281: {
;CheckTouchKey.c: 283: OldValue = KeyOldValue2[cnt];
	bsf	status, 5	;RP0=1, select bank1
	clrc
	rlf	(CheckOnceResult@cnt)^080h,w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(CheckOnceResult@OldValue)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@OldValue+1)^080h
	line	285
;CheckTouchKey.c: 285: if(KeyReference[cnt] > KeyValue)
	clrc
	rlf	(CheckOnceResult@cnt)^080h,w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	1+(??_CheckOnceResult+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(CheckOnceResult@KeyValue+1)^080h,w
	skipz
	goto	u2815
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_CheckOnceResult+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(CheckOnceResult@KeyValue)^080h,w
u2815:
	skipnc
	goto	u2811
	goto	u2810
u2811:
	goto	l3756
u2810:
	line	287
	
l3754:	
;CheckTouchKey.c: 286: {
;CheckTouchKey.c: 287: KeyResTemp = KeyReference[cnt] - KeyResTemp;
	clrc
	rlf	(CheckOnceResult@cnt)^080h,w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(CheckOnceResult@KeyResTemp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_CheckOnceResult+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(CheckOnceResult@KeyResTemp)^080h
	movf	(CheckOnceResult@KeyResTemp+1)^080h,w
	skipc
	incf	(CheckOnceResult@KeyResTemp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	1+(??_CheckOnceResult+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(CheckOnceResult@KeyResTemp)^080h
	line	288
;CheckTouchKey.c: 288: }
	goto	l3764
	line	289
	
l3756:	
;CheckTouchKey.c: 289: else if ((OldValue > KeyValue) && (KeyOldValue1[cnt] > KeyValue))
	movf	(CheckOnceResult@OldValue+1)^080h,w
	subwf	(CheckOnceResult@KeyValue+1)^080h,w
	skipz
	goto	u2825
	movf	(CheckOnceResult@OldValue)^080h,w
	subwf	(CheckOnceResult@KeyValue)^080h,w
u2825:
	skipnc
	goto	u2821
	goto	u2820
u2821:
	goto	l3802
u2820:
	
l3758:	
	clrc
	rlf	(CheckOnceResult@cnt)^080h,w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	movf	1+(??_CheckOnceResult+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(CheckOnceResult@KeyValue+1)^080h,w
	skipz
	goto	u2835
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_CheckOnceResult+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(CheckOnceResult@KeyValue)^080h,w
u2835:
	skipnc
	goto	u2831
	goto	u2830
u2831:
	goto	l3802
u2830:
	line	291
	
l3760:	
;CheckTouchKey.c: 290: {
;CheckTouchKey.c: 291: KeyReference[cnt] = OldValue;
	clrc
	rlf	(CheckOnceResult@cnt)^080h,w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@OldValue)^080h,w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@OldValue+1)^080h,w
	movwf	indf
	line	292
	
l3762:	
;CheckTouchKey.c: 292: KeyResTemp = OldValue - KeyResTemp;
	movf	(CheckOnceResult@KeyResTemp)^080h,w
	subwf	(CheckOnceResult@OldValue)^080h,w
	movwf	(CheckOnceResult@KeyResTemp)^080h
	movf	(CheckOnceResult@KeyResTemp+1)^080h,w
	skipc
	incf	(CheckOnceResult@KeyResTemp+1)^080h,w
	subwf	(CheckOnceResult@OldValue+1)^080h,w
	movwf	1+(CheckOnceResult@KeyResTemp)^080h
	line	299
;CheckTouchKey.c: 293: }
	
l3764:	
;CheckTouchKey.c: 297: }
;CheckTouchKey.c: 299: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt)^080h,w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	324
	
l3778:	
;CheckTouchKey.c: 322: else
;CheckTouchKey.c: 323: {
;CheckTouchKey.c: 324: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag)^080h,w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt)^080h,w
	fcall	_KeyHave
	goto	l3802
	line	332
	
l3780:	
;CheckTouchKey.c: 328: else
;CheckTouchKey.c: 329: {
;CheckTouchKey.c: 332: if(KeyReference[cnt]+1 < KeyValue)
	bsf	status, 5	;RP0=1, select bank1
	clrc
	rlf	(CheckOnceResult@cnt)^080h,w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
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
	bsf	status, 5	;RP0=1, select bank1
	movf	(CheckOnceResult@KeyValue+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u2845
	bsf	status, 5	;RP0=1, select bank1
	movf	(CheckOnceResult@KeyValue)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_CheckOnceResult+2)+0,w
u2845:
	skipnc
	goto	u2841
	goto	u2840
u2841:
	goto	l3786
u2840:
	goto	l3802
	line	336
	
l3786:	
;CheckTouchKey.c: 336: else if((KeyOldValue2[cnt]+KeyDown<KeyResTemp) || (KeyOldValue1[cnt]+KeyDown<KeyResTemp))
	bsf	status, 5	;RP0=1, select bank1
	clrc
	rlf	(CheckOnceResult@cnt)^080h,w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(CheckOnceResult@KeyDown)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	0+(??_CheckOnceResult+0)+0,w
	movwf	(??_CheckOnceResult+2)+0
	movf	1+(??_CheckOnceResult+0)+0,w
	skipnc
	incf	1+(??_CheckOnceResult+0)+0,w
	movwf	((??_CheckOnceResult+2)+0)+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(CheckOnceResult@KeyResTemp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u2855
	bsf	status, 5	;RP0=1, select bank1
	movf	(CheckOnceResult@KeyResTemp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_CheckOnceResult+2)+0,w
u2855:
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l3790
u2850:
	
l3788:	
	bsf	status, 5	;RP0=1, select bank1
	clrc
	rlf	(CheckOnceResult@cnt)^080h,w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_CheckOnceResult+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(CheckOnceResult@KeyDown)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	0+(??_CheckOnceResult+0)+0,w
	movwf	(??_CheckOnceResult+2)+0
	movf	1+(??_CheckOnceResult+0)+0,w
	skipnc
	incf	1+(??_CheckOnceResult+0)+0,w
	movwf	((??_CheckOnceResult+2)+0)+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(CheckOnceResult@KeyResTemp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	1+(??_CheckOnceResult+2)+0,w
	skipz
	goto	u2865
	bsf	status, 5	;RP0=1, select bank1
	movf	(CheckOnceResult@KeyResTemp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_CheckOnceResult+2)+0,w
u2865:
	skipnc
	goto	u2861
	goto	u2860
u2861:
	goto	l3794
u2860:
	line	338
	
l3790:	
;CheckTouchKey.c: 337: {
;CheckTouchKey.c: 338: if(++KeyUpShake[cnt] > 8)
	bsf	status, 5	;RP0=1, select bank1
	movf	(CheckOnceResult@cnt)^080h,w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u2871
	goto	u2870
u2871:
	goto	l3796
u2870:
	line	340
	
l3792:	
;CheckTouchKey.c: 339: {
;CheckTouchKey.c: 340: KeyClearOne(cnt);
	movf	(CheckOnceResult@cnt)^080h,w
	fcall	_KeyClearOne
	line	341
;CheckTouchKey.c: 341: continue;
	goto	l3802
	line	346
	
l3794:	
;CheckTouchKey.c: 344: else
;CheckTouchKey.c: 345: {
;CheckTouchKey.c: 346: KeyUpShake[cnt] = 0;
	bsf	status, 5	;RP0=1, select bank1
	movf	(CheckOnceResult@cnt)^080h,w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	351
	
l3796:	
;CheckTouchKey.c: 350: {
;CheckTouchKey.c: 351: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag)^080h,w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt)^080h,w
	fcall	_KeyHave
	line	358
;CheckTouchKey.c: 352: }
	
l3802:	
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	incf	(CheckOnceResult@cnt)^080h,f
	subwf	((CheckOnceResult@cnt)^080h),w
	skipc
	goto	u2881
	goto	u2880
u2881:
	goto	l3738
u2880:
	line	359
	
l1512:	
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
;;		On entry : B00/100
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
psect	text29,local,class=CODE,delta=2,merge=1,group=1
	line	158
global __ptext29
__ptext29:	;psect for function _KeyHave
psect	text29
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
	
l3708:	
;CheckTouchKey.c: 160: KeyCounter++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_KeyCounter),f
	line	175
	
l1466:	
	line	177
;CheckTouchKey.c: 175: else
;CheckTouchKey.c: 176: {
;CheckTouchKey.c: 177: if(cnt&0x8)
	btfss	(KeyHave@cnt),(3)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l3720
u2770:
	line	179
	
l3718:	
;CheckTouchKey.c: 178: {
;CheckTouchKey.c: 179: KeyData[1] |= flag;
	movf	(KeyHave@flag),w
	iorwf	0+(_KeyData)+01h,f	;volatile
	line	180
;CheckTouchKey.c: 180: }
	goto	l1472
	line	183
	
l3720:	
;CheckTouchKey.c: 181: else
;CheckTouchKey.c: 182: {
;CheckTouchKey.c: 183: KeyData[0] |= flag;
	movf	(KeyHave@flag),w
	iorwf	(_KeyData),f	;volatile
	line	186
	
l1472:	
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
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=1
	line	96
global __ptext30
__ptext30:	;psect for function _KeyClearOne
psect	text30
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
	
l3692:	
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
	
l1447:	
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
psect	text31,local,class=CODE,delta=2,merge=1,group=1
	line	369
global __ptext31
__ptext31:	;psect for function _CheckKeyOldValue
psect	text31
	file	"D:\ToolsDesign\Software\SCMCU\SCMCU_IDE\ASource\SCTouch_lib\Normal\XC8\SC58A11\CheckTouchKey.c"
	line	369
	global	__size_of_CheckKeyOldValue
	__size_of_CheckKeyOldValue	equ	__end_of_CheckKeyOldValue-_CheckKeyOldValue
	
_CheckKeyOldValue:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	372
	
l3804:	
;CheckTouchKey.c: 371: static unsigned char counter = 0;
;CheckTouchKey.c: 372: unsigned char cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@cnt)
	line	376
	
l3806:	
;CheckTouchKey.c: 373: unsigned int KeyResTemp;
;CheckTouchKey.c: 374: unsigned int KeyOldTemp;
;CheckTouchKey.c: 376: if(++counter < 4)
	movlw	low(04h)
	incf	(CheckKeyOldValue@counter),f
	subwf	((CheckKeyOldValue@counter)),w
	skipnc
	goto	u2891
	goto	u2890
u2891:
	goto	l3810
u2890:
	goto	l1518
	line	378
	
l3810:	
;CheckTouchKey.c: 378: counter = 0;
	clrf	(CheckKeyOldValue@counter)
	line	382
	
l3812:	
;CheckTouchKey.c: 381: {
;CheckTouchKey.c: 382: KeyResTemp = KeyResSum[cnt];
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyResTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyResTemp+1)
	line	383
	
l3814:	
;CheckTouchKey.c: 383: if(!KeyIsIn(cnt))
	movf	(CheckKeyOldValue@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u2901
	goto	u2900
u2901:
	goto	l1520
u2900:
	line	386
	
l3816:	
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
	
l3818:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	387
	
l3820:	
;CheckTouchKey.c: 387: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l3824
u2910:
	
l3822:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u2921
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l1520
u2920:
	line	389
	
l3824:	
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
	
l3826:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	390
	
l3828:	
;CheckTouchKey.c: 390: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l3832
u2930:
	
l3830:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u2941
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u2941
	goto	u2940
u2941:
	goto	l1520
u2940:
	line	392
	
l3832:	
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
	
l3834:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	393
	
l3836:	
;CheckTouchKey.c: 393: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l3840
u2950:
	
l3838:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u2961
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l1520
u2960:
	line	395
	
l3840:	
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
	
l1520:	
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
	
l3842:	
	movlw	low(03h)
	incf	(CheckKeyOldValue@cnt),f
	subwf	((CheckKeyOldValue@cnt)),w
	skipc
	goto	u2971
	goto	u2970
u2971:
	goto	l3812
u2970:
	line	406
	
l1518:	
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
psect	text32,local,class=CODE,delta=2,merge=1,group=1
	line	74
global __ptext32
__ptext32:	;psect for function _KeyIsIn
psect	text32
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
	
l3680:	
;CheckTouchKey.c: 76: unsigned char i = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(KeyIsIn@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@i)
	line	78
	
l3682:	
;CheckTouchKey.c: 78: if(cnt&0x8)
	btfss	(KeyIsIn@cnt),(3)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l3686
u2740:
	line	80
	
l3684:	
;CheckTouchKey.c: 79: {
;CheckTouchKey.c: 80: i &= KeyFlag[1];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@i),f
	line	81
;CheckTouchKey.c: 81: }
	goto	l3688
	line	84
	
l3686:	
;CheckTouchKey.c: 82: else
;CheckTouchKey.c: 83: {
;CheckTouchKey.c: 84: i &= KeyFlag[0];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@i),f
	line	86
	
l3688:	
;CheckTouchKey.c: 85: }
;CheckTouchKey.c: 86: return i;
	movf	(KeyIsIn@i),w
	line	87
	
l1444:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 283 in file "C:\mcuproject\scm\testTouch\main.c"
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
;;		On exit  : 100/0
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
psect	text33,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	283
global __ptext33
__ptext33:	;psect for function _Isr_Timer
psect	text33
	file	"C:\mcuproject\scm\testTouch\main.c"
	line	283
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
psect	text33
	line	284
	
i1l3638:	
;main.c: 284: if (TMR2IF) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l3648
u270_20:
	line	285
	
i1l3640:	
;main.c: 285: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	286
	
i1l3642:	
;main.c: 286: if(++MainTime >= 64)
	movlw	low(040h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u271_21
	goto	u271_20
u271_21:
	goto	i1l3650
u271_20:
	line	288
	
i1l3644:	
;main.c: 287: {
;main.c: 288: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	289
	
i1l3646:	
;main.c: 289: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	i1l3650
	line	292
	
i1l3648:	
;main.c: 292: PIR1 = 0;
	clrf	(12)	;volatile
	line	295
	
i1l3650:	
;main.c: 293: }
;main.c: 295: if(RACIF)
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2105/8)^0100h,(2105)&7	;volatile
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l1241
u272_20:
	line	297
	
i1l3652:	
;main.c: 296: {
;main.c: 297: RACIF = 0;
	bcf	(2105/8)^0100h,(2105)&7	;volatile
	line	298
	
i1l3654:	
;main.c: 298: PORTA;
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	line	302
	
i1l1241:	
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
