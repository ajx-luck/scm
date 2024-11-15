opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F2852
opt include "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\include\sc8f2852.cgen.inc"
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
	FNCALL	_main,_ADC_AVG
	FNCALL	_main,_CheckTouchKey
	FNCALL	_main,_Init_System
	FNCALL	_main,_KeyServer
	FNCALL	_main,_Sleep_Mode
	FNCALL	_main,___lwdiv
	FNCALL	_main,_fanOff
	FNCALL	_main,_initPWM
	FNCALL	_main,_ledOff
	FNCALL	_KeyServer,_fan1
	FNCALL	_KeyServer,_fan2
	FNCALL	_KeyServer,_fan3
	FNCALL	_KeyServer,_fanOff
	FNCALL	_KeyServer,_hunheOn
	FNCALL	_KeyServer,_ledOff
	FNCALL	_KeyServer,_light1
	FNCALL	_KeyServer,_light2
	FNCALL	_KeyServer,_light3
	FNCALL	_KeyServer,_light4
	FNCALL	_KeyServer,_whOn
	FNCALL	_KeyServer,_whiteOn
	FNCALL	_KeyServer,_yellowOn
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
	FNCALL	_ADC_AVG,_ADC_Sample
	FNCALL	_ADC_AVG,___lwdiv
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
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	48
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
	file	"C:\mcuproject\scm\台灯雾化器\Touch_Kscan_Library.h"
	line	75
_Table_KeyDown:
	retlw	0Ah
	retlw	0Ah
	retlw	0Ah
	retlw	0Ah
	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	_Table_KeyCap
psect	strings
	file	"C:\mcuproject\scm\台灯雾化器\Touch_Kscan_Library.h"
	line	67
_Table_KeyCap:
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	02h
	global __end_of_Table_KeyCap
__end_of_Table_KeyCap:
	global	_Table_KeyChannel
psect	strings
	file	"C:\mcuproject\scm\台灯雾化器\Touch_Kscan_Library.h"
	line	59
_Table_KeyChannel:
	retlw	060h
	retlw	061h
	retlw	062h
	retlw	063h
	global __end_of_Table_KeyChannel
__end_of_Table_KeyChannel:
	global	_Table_KeyFalg
	global	_Table_KeyDown
	global	_Table_KeyCap
	global	_Table_KeyChannel
	global	_fanStep
	global	_b_kerr
	global	_b_kclr
	global	_b_kover1
	global	_b_kover
	global	_B_MainLoop
	global	_penwuFlag
	global	_KeyReference
	global	_KeyOldValue2
	global	_KeyOldValue1
	global	_KeyResSum
	global	_KeyUpShake
	global	CheckValidTime@validtime
	global	_KeyData
	global	_KeyOldData
	global	_keyNub
	global	_adresult
	global	_KeyFlag
	global	TurnKeyFlags@KeyNoTimes
	global	TurnKeyFlags@KeyHaveTimes
	global	CheckKeyOldValue@counter
	global	_KeyMaxSub
	global	_KeyCounter
	global	_lightStep
	global	_ledStep
	global	_keyCount3
	global	_keyCount2
	global	_keyCount1
	global	_keyCount0
	global	_irStep
	global	_pwmTime
	global	_MainTime
	global	_KeyOldValue0
	global	_PWMCON2
_PWMCON2	set	29
	global	_PWMD01H
_PWMD01H	set	28
	global	_PWMD4L
_PWMD4L	set	27
	global	_PWMD1L
_PWMD1L	set	24
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
	global	_WPUB
_WPUB	set	8
	global	_WPUA
_WPUA	set	7
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
	global	_ADRESH
_ADRESH	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_ADCON0
_ADCON0	set	157
	global	_ADCON1
_ADCON1	set	156
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
	global	_WPDB
_WPDB	set	135
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_GODONE
_GODONE	set	1257
; #config settings
	file	"keytest2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_b_kerr:
       ds      1

_b_kclr:
       ds      1

_b_kover1:
       ds      1

_b_kover:
       ds      1

_B_MainLoop:
       ds      1

_penwuFlag:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_fanStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_KeyReference:
       ds      8

_KeyOldValue2:
       ds      8

_KeyOldValue1:
       ds      8

_KeyResSum:
       ds      8

_KeyUpShake:
       ds      4

CheckValidTime@validtime:
       ds      2

_KeyData:
       ds      2

_KeyOldData:
       ds      2

_keyNub:
       ds      2

_adresult:
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

_lightStep:
       ds      1

_ledStep:
       ds      1

_keyCount3:
       ds      1

_keyCount2:
       ds      1

_keyCount1:
       ds      1

_keyCount0:
       ds      1

_irStep:
       ds      1

_pwmTime:
       ds      1

_MainTime:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_KeyOldValue0:
       ds      8

	file	"keytest2.as"
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
	movlw	low((__pbssBANK0)+03Eh)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+08h)
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
?_initPWM:	; 1 bytes @ 0x0
?_whOn:	; 1 bytes @ 0x0
?_fanOff:	; 1 bytes @ 0x0
?_fan1:	; 1 bytes @ 0x0
?_fan2:	; 1 bytes @ 0x0
?_fan3:	; 1 bytes @ 0x0
?_ledOff:	; 1 bytes @ 0x0
?_whiteOn:	; 1 bytes @ 0x0
?_yellowOn:	; 1 bytes @ 0x0
?_hunheOn:	; 1 bytes @ 0x0
?_light1:	; 1 bytes @ 0x0
?_light2:	; 1 bytes @ 0x0
?_light3:	; 1 bytes @ 0x0
?_light4:	; 1 bytes @ 0x0
?_CheckTouchKey:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_KeyServer:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
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
??_initPWM:	; 1 bytes @ 0x2
??_whOn:	; 1 bytes @ 0x2
??_fanOff:	; 1 bytes @ 0x2
??_fan1:	; 1 bytes @ 0x2
??_fan2:	; 1 bytes @ 0x2
??_fan3:	; 1 bytes @ 0x2
??_ledOff:	; 1 bytes @ 0x2
??_whiteOn:	; 1 bytes @ 0x2
??_yellowOn:	; 1 bytes @ 0x2
??_hunheOn:	; 1 bytes @ 0x2
??_light1:	; 1 bytes @ 0x2
??_light2:	; 1 bytes @ 0x2
??_light3:	; 1 bytes @ 0x2
??_light4:	; 1 bytes @ 0x2
??_Sleep_Mode:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_KeyServer:	; 1 bytes @ 0x2
??_KeyIsIn:	; 1 bytes @ 0x2
??_KeyClearOne:	; 1 bytes @ 0x2
??_ClearResSum:	; 1 bytes @ 0x2
?_KeyHave:	; 1 bytes @ 0x2
??_CheckValidTime:	; 1 bytes @ 0x2
	global	?_ADC_Sample
?_ADC_Sample:	; 2 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	KeyIsIn@i
KeyIsIn@i:	; 1 bytes @ 0x2
	global	KeyClearOne@cnt
KeyClearOne@cnt:	; 1 bytes @ 0x2
	global	ClearResSum@cnt
ClearResSum@cnt:	; 1 bytes @ 0x2
	global	KeyServer@i
KeyServer@i:	; 2 bytes @ 0x2
	global	KeyHave@flag
KeyHave@flag:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	ds	1
??_KeyStopClear:	; 1 bytes @ 0x3
??_GetTouchKeyValue:	; 1 bytes @ 0x3
	global	KeyIsIn@cnt
KeyIsIn@cnt:	; 1 bytes @ 0x3
	global	KeyStopClear@i
KeyStopClear@i:	; 1 bytes @ 0x3
	global	GetTouchKeyValue@temp
GetTouchKeyValue@temp:	; 1 bytes @ 0x3
	ds	1
??_ADC_Sample:	; 1 bytes @ 0x4
??_KeyClearIn:	; 1 bytes @ 0x4
??_KeyHave:	; 1 bytes @ 0x4
??_CheckKeyOldValue:	; 1 bytes @ 0x4
	global	KeyClearIn@cnt
KeyClearIn@cnt:	; 1 bytes @ 0x4
	global	KeyHave@cnt
KeyHave@cnt:	; 1 bytes @ 0x4
	global	GetTouchKeyValue@cnt
GetTouchKeyValue@cnt:	; 1 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	ds	1
??_CheckOnceResult:	; 1 bytes @ 0x5
??_TurnKeyFlags:	; 1 bytes @ 0x5
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x5
	ds	1
??___lwdiv:	; 1 bytes @ 0x6
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0x7
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x8
	ds	1
??_CheckTouchKey:	; 1 bytes @ 0x9
??_ADC_AVG:	; 1 bytes @ 0x9
??_main:	; 1 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?_ADC_AVG
?_ADC_AVG:	; 2 bytes @ 0x0
	global	ADC_AVG@adtime
ADC_AVG@adtime:	; 1 bytes @ 0x0
	global	CheckOnceResult@OldValue
CheckOnceResult@OldValue:	; 2 bytes @ 0x0
	global	CheckKeyOldValue@KeyResTemp
CheckKeyOldValue@KeyResTemp:	; 2 bytes @ 0x0
	ds	2
	global	CheckOnceResult@KeyValue
CheckOnceResult@KeyValue:	; 2 bytes @ 0x2
	global	CheckKeyOldValue@KeyOldTemp
CheckKeyOldValue@KeyOldTemp:	; 2 bytes @ 0x2
	ds	1
	global	ADC_AVG@adch
ADC_AVG@adch:	; 1 bytes @ 0x3
	ds	1
	global	CheckOnceResult@flag
CheckOnceResult@flag:	; 1 bytes @ 0x4
	global	CheckKeyOldValue@cnt
CheckKeyOldValue@cnt:	; 1 bytes @ 0x4
	global	ADC_AVG@adsum
ADC_AVG@adsum:	; 2 bytes @ 0x4
	ds	1
	global	CheckOnceResult@KeyDown
CheckOnceResult@KeyDown:	; 1 bytes @ 0x5
	ds	1
	global	ADC_AVG@i
ADC_AVG@i:	; 1 bytes @ 0x6
	global	CheckOnceResult@KeyResTemp
CheckOnceResult@KeyResTemp:	; 2 bytes @ 0x6
	ds	2
	global	CheckOnceResult@cnt
CheckOnceResult@cnt:	; 1 bytes @ 0x8
	ds	1
	global	main@res
main@res:	; 2 bytes @ 0x9
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    20
;!    Data        0
;!    BSS         71
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      11
;!    BANK0            80     11      73
;!    BANK1            80      0       8
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___lwdiv
;!    _CheckTouchKey->_CheckOnceResult
;!    _TurnKeyFlags->_KeyClearIn
;!    _KeyClearIn->_KeyIsIn
;!    _KeyStopClear->_KeyClearOne
;!    _GetTouchKeyValue->_ClearResSum
;!    _CheckOnceResult->_KeyHave
;!    _CheckKeyOldValue->_KeyIsIn
;!    _ADC_AVG->_ADC_Sample
;!    _ADC_AVG->___lwdiv
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
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
;! (0) _main                                                 4     4      0    3972
;!                                              9 BANK0      2     2      0
;!                            _ADC_AVG
;!                      _CheckTouchKey
;!                        _Init_System
;!                          _KeyServer
;!                         _Sleep_Mode
;!                            ___lwdiv
;!                             _fanOff
;!                            _initPWM
;!                             _ledOff
;! ---------------------------------------------------------------------------------
;! (1) _initPWM                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Mode                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _KeyServer                                            2     2      0      45
;!                                              2 COMMON     2     2      0
;!                               _fan1
;!                               _fan2
;!                               _fan3
;!                             _fanOff
;!                            _hunheOn
;!                             _ledOff
;!                             _light1
;!                             _light2
;!                             _light3
;!                             _light4
;!                               _whOn
;!                            _whiteOn
;!                           _yellowOn
;! ---------------------------------------------------------------------------------
;! (2) _yellowOn                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _whiteOn                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _whOn                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _light4                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _light3                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _light2                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _light1                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _ledOff                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _hunheOn                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _fanOff                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _fan3                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _fan2                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _fan1                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _CheckTouchKey                                        0     0      0    2713
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
;! (2) _GetTouchKeyValue                                     2     2      0     157
;!                                              3 COMMON     2     2      0
;!                        _ClearResSum
;! ---------------------------------------------------------------------------------
;! (3) _ClearResSum                                          1     1      0      45
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _CheckValidTime                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _CheckOnceResult                                     13    13      0    1503
;!                                              5 COMMON     4     4      0
;!                                              0 BANK0      9     9      0
;!                        _KeyClearOne
;!                            _KeyHave
;!                            _KeyIsIn
;! ---------------------------------------------------------------------------------
;! (3) _KeyHave                                              3     1      2     344
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
;! (1) _ADC_AVG                                              7     4      3     741
;!                                              0 BANK0      7     4      3
;!                         _ADC_Sample
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (1) ___lwdiv                                              7     3      4     374
;!                                              2 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                          14    12      2      70
;!                                              2 COMMON     7     5      2
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
;!   _ADC_AVG
;!     _ADC_Sample
;!     ___lwdiv
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
;!     _fan1
;!     _fan2
;!     _fan3
;!     _fanOff
;!     _hunheOn
;!     _ledOff
;!     _light1
;!     _light2
;!     _light3
;!     _light4
;!     _whOn
;!     _whiteOn
;!     _yellowOn
;!   _Sleep_Mode
;!   ___lwdiv
;!   _fanOff
;!   _initPWM
;!   _ledOff
;!
;! _Isr_Timer (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               50      B      49       3       91.3%
;!ABS                  0      0      5C       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       8       7       10.0%
;!BITBANK2            50      0       0       8        0.0%
;!BANK2               50      0       0       9        0.0%
;!DATA                 0      0      5C      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 204 in file "C:\mcuproject\scm\台灯雾化器\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  res             2    9[BANK0 ] unsigned int 
;;  av              2    0        unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ADC_AVG
;;		_CheckTouchKey
;;		_Init_System
;;		_KeyServer
;;		_Sleep_Mode
;;		___lwdiv
;;		_fanOff
;;		_initPWM
;;		_ledOff
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\台灯雾化器\main.c"
	line	204
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\台灯雾化器\main.c"
	line	204
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	206
	
l3249:	
;main.c: 206: PORTB = 0x00;
	clrf	(6)	;volatile
	line	207
;main.c: 207: PORTA = 0x00;
	clrf	(5)	;volatile
	line	208
	
l3251:	
;main.c: 208: Init_System();
	fcall	_Init_System
	line	209
	
l3253:	
;main.c: 209: initPWM();
	fcall	_initPWM
	line	210
;main.c: 210: while(1)
	
l576:	
	line	212
# 212 "C:\mcuproject\scm\台灯雾化器\main.c"
clrwdt ;# 
psect	maintext
	line	213
	
l3255:	
;main.c: 213: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u1871
	goto	u1870
u1871:
	goto	l576
u1870:
	line	215
	
l3257:	
;main.c: 214: {
;main.c: 215: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	217
	
l3259:	
;main.c: 217: CheckTouchKey();
	fcall	_CheckTouchKey
	line	218
	
l3261:	
;main.c: 218: KeyServer();
	fcall	_KeyServer
	line	219
	
l3263:	
;main.c: 219: uint16 res = ADC_AVG(0x0F,8);
	movlw	low(08h)
	movwf	(ADC_AVG@adtime)
	movlw	low(0Fh)
	fcall	_ADC_AVG
	movf	(1+(?_ADC_AVG)),w
	movwf	(main@res+1)
	movf	(0+(?_ADC_AVG)),w
	movwf	(main@res)
	line	220
	
l3265:	
;main.c: 220: uint16 av = 6000/res;
	movf	(main@res+1),w
	movwf	(___lwdiv@divisor+1)
	movf	(main@res),w
	movwf	(___lwdiv@divisor)
	movlw	070h
	movwf	(___lwdiv@dividend)
	movlw	017h
	movwf	((___lwdiv@dividend))+1
	fcall	___lwdiv
	line	221
	
l3267:	
;main.c: 221: if(res > 768)
	movlw	03h
	subwf	(main@res+1),w
	movlw	01h
	skipnz
	subwf	(main@res),w
	skipc
	goto	u1881
	goto	u1880
u1881:
	goto	l3281
u1880:
	line	224
	
l3269:	
;main.c: 222: {
;main.c: 224: penwuFlag = 0;
	bcf	(_penwuFlag/8),(_penwuFlag)&7	;volatile
	line	225
	
l3271:	
;main.c: 225: PWMCON0 |= 0xef;
	movlw	low(0EFh)
	iorwf	(19),f	;volatile
	line	226
	
l3273:	
;main.c: 226: fanOff();
	fcall	_fanOff
	line	227
	
l3275:	
;main.c: 227: ledOff();
	fcall	_ledOff
	line	228
	
l3277:	
;main.c: 228: ledStep = 0;
	clrf	(_ledStep)
	line	229
	
l3279:	
;main.c: 229: fanStep = 0;
	clrf	(_fanStep)
	line	231
	
l3281:	
;main.c: 230: }
;main.c: 231: res = ADC_AVG(0x00,8);
	movlw	low(08h)
	movwf	(ADC_AVG@adtime)
	movlw	low(0)
	fcall	_ADC_AVG
	movf	(1+(?_ADC_AVG)),w
	movwf	(main@res+1)
	movf	(0+(?_ADC_AVG)),w
	movwf	(main@res)
	line	232
	
l3283:	
;main.c: 232: if(res > 2048)
	movlw	08h
	subwf	(main@res+1),w
	movlw	01h
	skipnz
	subwf	(main@res),w
	skipc
	goto	u1891
	goto	u1890
u1891:
	goto	l3289
u1890:
	line	235
	
l3285:	
;main.c: 233: {
;main.c: 235: penwuFlag = 0;
	bcf	(_penwuFlag/8),(_penwuFlag)&7	;volatile
	line	236
	
l3287:	
;main.c: 236: PWMCON0 |= 0xef;
	movlw	low(0EFh)
	iorwf	(19),f	;volatile
	line	239
	
l3289:	
;main.c: 237: }
;main.c: 239: if(penwuFlag == 0 && ledStep == 0 && fanStep == 0 && keyCount0 == 0 && keyCount1 == 0 && keyCount2 == 0 && keyCount3 == 0)
	btfsc	(_penwuFlag/8),(_penwuFlag)&7	;volatile
	goto	u1901
	goto	u1900
u1901:
	goto	l576
u1900:
	
l3291:	
	movf	((_ledStep)),w
	btfss	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l576
u1910:
	
l3293:	
	movf	((_fanStep)),w
	btfss	status,2
	goto	u1921
	goto	u1920
u1921:
	goto	l576
u1920:
	
l3295:	
	movf	((_keyCount0)),w
	btfss	status,2
	goto	u1931
	goto	u1930
u1931:
	goto	l576
u1930:
	
l3297:	
	movf	((_keyCount1)),w
	btfss	status,2
	goto	u1941
	goto	u1940
u1941:
	goto	l576
u1940:
	
l3299:	
	movf	((_keyCount2)),w
	btfss	status,2
	goto	u1951
	goto	u1950
u1951:
	goto	l576
u1950:
	
l3301:	
	movf	((_keyCount3)),w
	btfss	status,2
	goto	u1961
	goto	u1960
u1961:
	goto	l576
u1960:
	line	241
	
l3303:	
;main.c: 240: {
;main.c: 241: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l576
	global	start
	ljmp	start
	opt stack 0
	line	245
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_initPWM

;; *************** function _initPWM *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\台灯雾化器\pwm.c"
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
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	4
global __ptext1
__ptext1:	;psect for function _initPWM
psect	text1
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	4
	global	__size_of_initPWM
	__size_of_initPWM	equ	__end_of_initPWM-_initPWM
	
_initPWM:	
;incstack = 0
	opt	stack 6
; Regs used in _initPWM: [wreg+status,2]
	line	6
	
l2975:	
;pwm.c: 6: PWMCON1 = 0x40;
	movlw	low(040h)
	movwf	(20)	;volatile
	line	7
	
l2977:	
;pwm.c: 7: PWMCON0 = 0x00;
	clrf	(19)	;volatile
	line	8
	
l2979:	
;pwm.c: 8: PWMCON2 = 0;
	clrf	(29)	;volatile
	line	9
	
l2981:	
;pwm.c: 9: PWMTH = 0;
	clrf	(22)	;volatile
	line	10
	
l2983:	
;pwm.c: 10: PWMTL = 36;
	movlw	low(024h)
	movwf	(21)	;volatile
	line	11
;pwm.c: 11: PWMD0L = 0;
	clrf	(23)	;volatile
	line	12
;pwm.c: 12: PWMD1L = 0;
	clrf	(24)	;volatile
	line	13
;pwm.c: 13: PWMD4L = 0;
	clrf	(27)	;volatile
	line	14
;pwm.c: 14: PWMD01H = 0;
	clrf	(28)	;volatile
	line	15
;pwm.c: 15: PWMD23H = 0;
	clrf	(14)	;volatile
	line	16
	
l997:	
	return
	opt stack 0
GLOBAL	__end_of_initPWM
	__end_of_initPWM:
	signat	_initPWM,89
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 260 in file "C:\mcuproject\scm\台灯雾化器\main.c"
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\台灯雾化器\main.c"
	line	260
global __ptext2
__ptext2:	;psect for function _Sleep_Mode
psect	text2
	file	"C:\mcuproject\scm\台灯雾化器\main.c"
	line	260
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 6
; Regs used in _Sleep_Mode: [wreg+status,2]
	line	261
	
l3151:	
;main.c: 261: INTCON = 0;
	clrf	(11)	;volatile
	line	263
;main.c: 263: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	265
	
l3153:	
;main.c: 265: WPUB = 0x18;
	movlw	low(018h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	268
	
l3155:	
;main.c: 268: IOCB = 0x18;
	movlw	low(018h)
	movwf	(9)	;volatile
	line	269
	
l3157:	
;main.c: 269: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	270
	
l3159:	
;main.c: 270: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	272
;main.c: 272: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(157)^080h	;volatile
	line	274
	
l3161:	
;main.c: 274: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(136)^080h	;volatile
	line	276
	
l3163:	
;main.c: 276: PORTB;
	bcf	status, 5	;RP0=0, select bank0
	movf	(6),w	;volatile
	line	278
# 278 "C:\mcuproject\scm\台灯雾化器\main.c"
clrwdt ;# 
	line	280
# 280 "C:\mcuproject\scm\台灯雾化器\main.c"
sleep ;# 
	line	282
# 282 "C:\mcuproject\scm\台灯雾化器\main.c"
nop ;# 
psect	text2
	line	283
	
l3165:	
;main.c: 283: OSCCON = 0X72;
	movlw	low(072h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	284
	
l3167:	
;main.c: 284: IOCB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	285
	
l592:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_KeyServer

;; *************** function _KeyServer *****************
;; Defined at:
;;		line 84 in file "C:\mcuproject\scm\台灯雾化器\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] unsigned int 
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
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_fan1
;;		_fan2
;;		_fan3
;;		_fanOff
;;		_hunheOn
;;		_ledOff
;;		_light1
;;		_light2
;;		_light3
;;		_light4
;;		_whOn
;;		_whiteOn
;;		_yellowOn
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	84
global __ptext3
__ptext3:	;psect for function _KeyServer
psect	text3
	file	"C:\mcuproject\scm\台灯雾化器\main.c"
	line	84
	global	__size_of_KeyServer
	__size_of_KeyServer	equ	__end_of_KeyServer-_KeyServer
	
_KeyServer:	
;incstack = 0
	opt	stack 5
; Regs used in _KeyServer: [wreg+status,2+status,0+pclath+cstack]
	line	87
	
l2985:	
;main.c: 86: static unsigned int KeyOldFlag = 0;
;main.c: 87: unsigned int i = (unsigned int)((KeyFlag[1]<<8) | KeyFlag[0]);
	movf	0+(_KeyFlag)+01h,w	;volatile
	movwf	(KeyServer@i+1)
	movf	(_KeyFlag),w	;volatile
	movwf	(KeyServer@i)
	line	88
	
l2987:	
;main.c: 88: if(i)
	movf	((KeyServer@i)),w
iorwf	((KeyServer@i+1)),w
	btfsc	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l3015
u1390:
	line	90
	
l2989:	
;main.c: 89: {
;main.c: 90: keyNub = i;
	movf	(KeyServer@i+1),w
	movwf	(_keyNub+1)
	movf	(KeyServer@i),w
	movwf	(_keyNub)
	line	91
	
l2991:	
;main.c: 91: if(keyNub & 0x01){
	btfss	(_keyNub),(0)&7
	goto	u1401
	goto	u1400
u1401:
	goto	l2997
u1400:
	line	92
	
l2993:	
;main.c: 92: if(++keyCount0 > 200)
	movlw	low(0C9h)
	incf	(_keyCount0),f
	subwf	((_keyCount0)),w
	skipc
	goto	u1411
	goto	u1410
u1411:
	goto	l2997
u1410:
	line	93
	
l2995:	
;main.c: 93: keyCount0 = 200;
	movlw	low(0C8h)
	movwf	(_keyCount0)
	line	95
	
l2997:	
;main.c: 94: }
;main.c: 95: if(keyNub & 0x02){
	btfss	(_keyNub),(1)&7
	goto	u1421
	goto	u1420
u1421:
	goto	l3003
u1420:
	line	96
	
l2999:	
;main.c: 96: if(++keyCount1 > 200)
	movlw	low(0C9h)
	incf	(_keyCount1),f
	subwf	((_keyCount1)),w
	skipc
	goto	u1431
	goto	u1430
u1431:
	goto	l3003
u1430:
	line	97
	
l3001:	
;main.c: 97: keyCount1 = 200;
	movlw	low(0C8h)
	movwf	(_keyCount1)
	line	99
	
l3003:	
;main.c: 98: }
;main.c: 99: if(keyNub & 0x04){
	btfss	(_keyNub),(2)&7
	goto	u1441
	goto	u1440
u1441:
	goto	l3009
u1440:
	line	100
	
l3005:	
;main.c: 100: if(++keyCount2 > 200)
	movlw	low(0C9h)
	incf	(_keyCount2),f
	subwf	((_keyCount2)),w
	skipc
	goto	u1451
	goto	u1450
u1451:
	goto	l3009
u1450:
	line	101
	
l3007:	
;main.c: 101: keyCount2 = 200;
	movlw	low(0C8h)
	movwf	(_keyCount2)
	line	103
	
l3009:	
;main.c: 102: }
;main.c: 103: if(keyNub & 0x08){
	btfss	(_keyNub),(3)&7
	goto	u1461
	goto	u1460
u1461:
	goto	l563
u1460:
	line	104
	
l3011:	
;main.c: 104: if(++keyCount3 > 200)
	movlw	low(0C9h)
	incf	(_keyCount3),f
	subwf	((_keyCount3)),w
	skipc
	goto	u1471
	goto	u1470
u1471:
	goto	l563
u1470:
	line	105
	
l3013:	
;main.c: 105: keyCount3 = 200;
	movlw	low(0C8h)
	movwf	(_keyCount3)
	goto	l563
	line	110
	
l3015:	
;main.c: 108: else
;main.c: 109: {
;main.c: 110: if(keyCount0 > 5)
	movlw	low(06h)
	subwf	(_keyCount0),w
	skipc
	goto	u1481
	goto	u1480
u1481:
	goto	l3025
u1480:
	line	113
	
l3017:	
;main.c: 111: {
;main.c: 113: penwuFlag =! penwuFlag;
	movlw	1<<((_penwuFlag)&7)
	xorwf	((_penwuFlag)/8),f
	line	114
	
l3019:	
;main.c: 114: if(penwuFlag)
	btfss	(_penwuFlag/8),(_penwuFlag)&7	;volatile
	goto	u1491
	goto	u1490
u1491:
	goto	l3023
u1490:
	line	116
	
l3021:	
;main.c: 115: {
;main.c: 116: whOn();
	fcall	_whOn
	line	117
;main.c: 117: }
	goto	l3025
	line	120
	
l3023:	
;main.c: 118: else
;main.c: 119: {
;main.c: 120: PWMCON0 |= 0xef;
	movlw	low(0EFh)
	iorwf	(19),f	;volatile
	line	123
	
l3025:	
;main.c: 121: }
;main.c: 122: }
;main.c: 123: if(keyCount1 > 5)
	movlw	low(06h)
	subwf	(_keyCount1),w
	skipc
	goto	u1501
	goto	u1500
u1501:
	goto	l3047
u1500:
	line	126
	
l3027:	
;main.c: 124: {
;main.c: 126: if(++fanStep > 3)
	movlw	low(04h)
	incf	(_fanStep),f
	subwf	((_fanStep)),w
	skipc
	goto	u1511
	goto	u1510
u1511:
	goto	l3031
u1510:
	line	127
	
l3029:	
;main.c: 127: fanStep = 0;
	clrf	(_fanStep)
	line	128
	
l3031:	
;main.c: 128: if(fanStep == 0)
	movf	((_fanStep)),w
	btfss	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l3035
u1520:
	line	129
	
l3033:	
;main.c: 129: fanOff();
	fcall	_fanOff
	goto	l3047
	line	130
	
l3035:	
;main.c: 130: else if(fanStep == 1)
		decf	((_fanStep)),w
	btfss	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l3039
u1530:
	line	131
	
l3037:	
;main.c: 131: fan1();
	fcall	_fan1
	goto	l3047
	line	132
	
l3039:	
;main.c: 132: else if(fanStep == 2)
		movlw	2
	xorwf	((_fanStep)),w
	btfss	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l3043
u1540:
	line	133
	
l3041:	
;main.c: 133: fan2();
	fcall	_fan2
	goto	l3047
	line	134
	
l3043:	
;main.c: 134: else if(fanStep == 3)
		movlw	3
	xorwf	((_fanStep)),w
	btfss	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l539
u1550:
	line	135
	
l3045:	
;main.c: 135: fan3();
	fcall	_fan3
	goto	l3047
	line	136
	
l539:	
	line	137
	
l3047:	
;main.c: 136: }
;main.c: 137: if(keyCount2 > 5)
	movlw	low(06h)
	subwf	(_keyCount2),w
	skipc
	goto	u1561
	goto	u1560
u1561:
	goto	l3071
u1560:
	line	140
	
l3049:	
;main.c: 138: {
;main.c: 140: if(++ledStep > 3)
	movlw	low(04h)
	incf	(_ledStep),f
	subwf	((_ledStep)),w
	skipc
	goto	u1571
	goto	u1570
u1571:
	goto	l3053
u1570:
	line	141
	
l3051:	
;main.c: 141: ledStep = 0;
	clrf	(_ledStep)
	line	142
	
l3053:	
;main.c: 142: if(ledStep == 0)
	movf	((_ledStep)),w
	btfss	status,2
	goto	u1581
	goto	u1580
u1581:
	goto	l3059
u1580:
	line	144
	
l3055:	
;main.c: 143: {
;main.c: 144: ledOff();
	fcall	_ledOff
	line	145
	
l3057:	
;main.c: 145: lightStep = 0;
	clrf	(_lightStep)
	line	146
;main.c: 146: }
	goto	l3071
	line	147
	
l3059:	
;main.c: 147: else if(ledStep == 1)
		decf	((_ledStep)),w
	btfss	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l3063
u1590:
	line	148
	
l3061:	
;main.c: 148: whiteOn();
	fcall	_whiteOn
	goto	l3071
	line	149
	
l3063:	
;main.c: 149: else if(ledStep == 2)
		movlw	2
	xorwf	((_ledStep)),w
	btfss	status,2
	goto	u1601
	goto	u1600
u1601:
	goto	l3067
u1600:
	line	150
	
l3065:	
;main.c: 150: yellowOn();
	fcall	_yellowOn
	goto	l3071
	line	151
	
l3067:	
;main.c: 151: else if(ledStep == 3)
		movlw	3
	xorwf	((_ledStep)),w
	btfss	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l548
u1610:
	line	152
	
l3069:	
;main.c: 152: hunheOn();
	fcall	_hunheOn
	goto	l3071
	line	153
	
l548:	
	line	154
	
l3071:	
;main.c: 153: }
;main.c: 154: if(keyCount2 > 5)
	movlw	low(06h)
	subwf	(_keyCount2),w
	skipc
	goto	u1621
	goto	u1620
u1621:
	goto	l3093
u1620:
	line	157
	
l3073:	
;main.c: 155: {
;main.c: 157: if(++lightStep > 4)
	movlw	low(05h)
	incf	(_lightStep),f
	subwf	((_lightStep)),w
	skipc
	goto	u1631
	goto	u1630
u1631:
	goto	l3077
u1630:
	line	158
	
l3075:	
;main.c: 158: lightStep = 1;
	clrf	(_lightStep)
	incf	(_lightStep),f
	line	159
	
l3077:	
;main.c: 159: if(lightStep == 1)
		decf	((_lightStep)),w
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l3081
u1640:
	line	160
	
l3079:	
;main.c: 160: light1();
	fcall	_light1
	goto	l3093
	line	161
	
l3081:	
;main.c: 161: else if(lightStep == 2)
		movlw	2
	xorwf	((_lightStep)),w
	btfss	status,2
	goto	u1651
	goto	u1650
u1651:
	goto	l3085
u1650:
	line	162
	
l3083:	
;main.c: 162: light2();
	fcall	_light2
	goto	l3093
	line	163
	
l3085:	
;main.c: 163: else if(lightStep == 3)
		movlw	3
	xorwf	((_lightStep)),w
	btfss	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l3089
u1660:
	line	164
	
l3087:	
;main.c: 164: light3();
	fcall	_light3
	goto	l3093
	line	165
	
l3089:	
;main.c: 165: else if(lightStep == 4)
		movlw	4
	xorwf	((_lightStep)),w
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l557
u1670:
	line	166
	
l3091:	
;main.c: 166: light4();
	fcall	_light4
	goto	l3093
	line	167
	
l557:	
	line	168
	
l3093:	
;main.c: 167: }
;main.c: 168: keyCount0 = 0;
	clrf	(_keyCount0)
	line	169
	
l3095:	
;main.c: 169: keyCount1 = 0;
	clrf	(_keyCount1)
	line	170
	
l3097:	
;main.c: 170: keyCount2 = 0;
	clrf	(_keyCount2)
	line	171
	
l3099:	
;main.c: 171: keyCount3 = 0;
	clrf	(_keyCount3)
	line	172
	
l3101:	
;main.c: 172: keyNub = 0;
	clrf	(_keyNub)
	clrf	(_keyNub+1)
	line	174
	
l563:	
	return
	opt stack 0
GLOBAL	__end_of_KeyServer
	__end_of_KeyServer:
	signat	_KeyServer,89
	global	_yellowOn

;; *************** function _yellowOn *****************
;; Defined at:
;;		line 31 in file "C:\mcuproject\scm\台灯雾化器\pwm.c"
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	31
global __ptext4
__ptext4:	;psect for function _yellowOn
psect	text4
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	31
	global	__size_of_yellowOn
	__size_of_yellowOn	equ	__end_of_yellowOn-_yellowOn
	
_yellowOn:	
;incstack = 0
	opt	stack 5
; Regs used in _yellowOn: [wreg+status,2+status,0]
	line	33
	
l2705:	
;pwm.c: 33: PWMD0L = 36;
	movlw	low(024h)
	movwf	(23)	;volatile
	line	34
	
l2707:	
;pwm.c: 34: PWMCON0 |= 0x01;
	bsf	(19)+(0/8),(0)&7	;volatile
	line	35
	
l2709:	
;pwm.c: 35: PWMCON0 |= 0xfd;
	movlw	low(0FDh)
	iorwf	(19),f	;volatile
	line	36
	
l1006:	
	return
	opt stack 0
GLOBAL	__end_of_yellowOn
	__end_of_yellowOn:
	signat	_yellowOn,89
	global	_whiteOn

;; *************** function _whiteOn *****************
;; Defined at:
;;		line 24 in file "C:\mcuproject\scm\台灯雾化器\pwm.c"
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	24
global __ptext5
__ptext5:	;psect for function _whiteOn
psect	text5
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	24
	global	__size_of_whiteOn
	__size_of_whiteOn	equ	__end_of_whiteOn-_whiteOn
	
_whiteOn:	
;incstack = 0
	opt	stack 5
; Regs used in _whiteOn: [wreg+status,2+status,0]
	line	26
	
l2699:	
;pwm.c: 26: PWMD1L = 36;
	movlw	low(024h)
	movwf	(24)	;volatile
	line	27
	
l2701:	
;pwm.c: 27: PWMCON0 |= 0x02;
	bsf	(19)+(1/8),(1)&7	;volatile
	line	28
	
l2703:	
;pwm.c: 28: PWMCON0 |= 0xfe;
	movlw	low(0FEh)
	iorwf	(19),f	;volatile
	line	29
	
l1003:	
	return
	opt stack 0
GLOBAL	__end_of_whiteOn
	__end_of_whiteOn:
	signat	_whiteOn,89
	global	_whOn

;; *************** function _whOn *****************
;; Defined at:
;;		line 18 in file "C:\mcuproject\scm\台灯雾化器\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	18
global __ptext6
__ptext6:	;psect for function _whOn
psect	text6
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	18
	global	__size_of_whOn
	__size_of_whOn	equ	__end_of_whOn-_whOn
	
_whOn:	
;incstack = 0
	opt	stack 5
; Regs used in _whOn: [wreg]
	line	20
	
l2683:	
;pwm.c: 20: PWMD4L = 16;
	movlw	low(010h)
	movwf	(27)	;volatile
	line	21
	
l2685:	
;pwm.c: 21: PWMCON0 |= 0x10;
	bsf	(19)+(4/8),(4)&7	;volatile
	line	22
	
l1000:	
	return
	opt stack 0
GLOBAL	__end_of_whOn
	__end_of_whOn:
	signat	_whOn,89
	global	_light4

;; *************** function _light4 *****************
;; Defined at:
;;		line 67 in file "C:\mcuproject\scm\台灯雾化器\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	67
global __ptext7
__ptext7:	;psect for function _light4
psect	text7
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	67
	global	__size_of_light4
	__size_of_light4	equ	__end_of_light4-_light4
	
_light4:	
;incstack = 0
	opt	stack 5
; Regs used in _light4: [wreg]
	line	69
	
l2723:	
;pwm.c: 69: PWMD0L = PWMD1L = 36;
	movlw	low(024h)
	movwf	(24)	;volatile
	movwf	(23)	;volatile
	line	70
	
l1024:	
	return
	opt stack 0
GLOBAL	__end_of_light4
	__end_of_light4:
	signat	_light4,89
	global	_light3

;; *************** function _light3 *****************
;; Defined at:
;;		line 62 in file "C:\mcuproject\scm\台灯雾化器\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	62
global __ptext8
__ptext8:	;psect for function _light3
psect	text8
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	62
	global	__size_of_light3
	__size_of_light3	equ	__end_of_light3-_light3
	
_light3:	
;incstack = 0
	opt	stack 5
; Regs used in _light3: [wreg]
	line	64
	
l2721:	
;pwm.c: 64: PWMD0L = PWMD1L = 27;
	movlw	low(01Bh)
	movwf	(24)	;volatile
	movwf	(23)	;volatile
	line	65
	
l1021:	
	return
	opt stack 0
GLOBAL	__end_of_light3
	__end_of_light3:
	signat	_light3,89
	global	_light2

;; *************** function _light2 *****************
;; Defined at:
;;		line 57 in file "C:\mcuproject\scm\台灯雾化器\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	57
global __ptext9
__ptext9:	;psect for function _light2
psect	text9
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	57
	global	__size_of_light2
	__size_of_light2	equ	__end_of_light2-_light2
	
_light2:	
;incstack = 0
	opt	stack 5
; Regs used in _light2: [wreg]
	line	59
	
l2719:	
;pwm.c: 59: PWMD0L = PWMD1L = 18;
	movlw	low(012h)
	movwf	(24)	;volatile
	movwf	(23)	;volatile
	line	60
	
l1018:	
	return
	opt stack 0
GLOBAL	__end_of_light2
	__end_of_light2:
	signat	_light2,89
	global	_light1

;; *************** function _light1 *****************
;; Defined at:
;;		line 52 in file "C:\mcuproject\scm\台灯雾化器\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	52
global __ptext10
__ptext10:	;psect for function _light1
psect	text10
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	52
	global	__size_of_light1
	__size_of_light1	equ	__end_of_light1-_light1
	
_light1:	
;incstack = 0
	opt	stack 5
; Regs used in _light1: [wreg]
	line	54
	
l2717:	
;pwm.c: 54: PWMD0L = PWMD1L = 27;
	movlw	low(01Bh)
	movwf	(24)	;volatile
	movwf	(23)	;volatile
	line	55
	
l1015:	
	return
	opt stack 0
GLOBAL	__end_of_light1
	__end_of_light1:
	signat	_light1,89
	global	_ledOff

;; *************** function _ledOff *****************
;; Defined at:
;;		line 46 in file "C:\mcuproject\scm\台灯雾化器\pwm.c"
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
;;		_KeyServer
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	46
global __ptext11
__ptext11:	;psect for function _ledOff
psect	text11
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	46
	global	__size_of_ledOff
	__size_of_ledOff	equ	__end_of_ledOff-_ledOff
	
_ledOff:	
;incstack = 0
	opt	stack 6
; Regs used in _ledOff: [wreg+status,2+status,0]
	line	48
	
l2697:	
;pwm.c: 48: PWMCON0 |= 0xfd;
	movlw	low(0FDh)
	iorwf	(19),f	;volatile
	line	49
;pwm.c: 49: PWMCON0 |= 0xfe;
	movlw	low(0FEh)
	iorwf	(19),f	;volatile
	line	50
	
l1012:	
	return
	opt stack 0
GLOBAL	__end_of_ledOff
	__end_of_ledOff:
	signat	_ledOff,89
	global	_hunheOn

;; *************** function _hunheOn *****************
;; Defined at:
;;		line 38 in file "C:\mcuproject\scm\台灯雾化器\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	38
global __ptext12
__ptext12:	;psect for function _hunheOn
psect	text12
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	38
	global	__size_of_hunheOn
	__size_of_hunheOn	equ	__end_of_hunheOn-_hunheOn
	
_hunheOn:	
;incstack = 0
	opt	stack 5
; Regs used in _hunheOn: [wreg]
	line	40
	
l2711:	
;pwm.c: 40: PWMD0L = 27;
	movlw	low(01Bh)
	movwf	(23)	;volatile
	line	41
;pwm.c: 41: PWMD1L = 18;
	movlw	low(012h)
	movwf	(24)	;volatile
	line	42
	
l2713:	
;pwm.c: 42: PWMCON0 |= 0x02;
	bsf	(19)+(1/8),(1)&7	;volatile
	line	43
	
l2715:	
;pwm.c: 43: PWMCON0 |= 0x01;
	bsf	(19)+(0/8),(0)&7	;volatile
	line	44
	
l1009:	
	return
	opt stack 0
GLOBAL	__end_of_hunheOn
	__end_of_hunheOn:
	signat	_hunheOn,89
	global	_fanOff

;; *************** function _fanOff *****************
;; Defined at:
;;		line 90 in file "C:\mcuproject\scm\台灯雾化器\pwm.c"
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
;;		_KeyServer
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	90
global __ptext13
__ptext13:	;psect for function _fanOff
psect	text13
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	90
	global	__size_of_fanOff
	__size_of_fanOff	equ	__end_of_fanOff-_fanOff
	
_fanOff:	
;incstack = 0
	opt	stack 6
; Regs used in _fanOff: [wreg+status,2]
	line	92
	
l2687:	
;pwm.c: 92: TRISA = 0x0f;
	movlw	low(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	93
	
l2689:	
;pwm.c: 93: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	94
	
l1036:	
	return
	opt stack 0
GLOBAL	__end_of_fanOff
	__end_of_fanOff:
	signat	_fanOff,89
	global	_fan3

;; *************** function _fan3 *****************
;; Defined at:
;;		line 84 in file "C:\mcuproject\scm\台灯雾化器\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	84
global __ptext14
__ptext14:	;psect for function _fan3
psect	text14
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	84
	global	__size_of_fan3
	__size_of_fan3	equ	__end_of_fan3-_fan3
	
_fan3:	
;incstack = 0
	opt	stack 5
; Regs used in _fan3: [wreg]
	line	86
	
l2695:	
;pwm.c: 86: TRISA = 0x07;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	87
;pwm.c: 87: PORTA = 0x10;
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	88
	
l1033:	
	return
	opt stack 0
GLOBAL	__end_of_fan3
	__end_of_fan3:
	signat	_fan3,89
	global	_fan2

;; *************** function _fan2 *****************
;; Defined at:
;;		line 78 in file "C:\mcuproject\scm\台灯雾化器\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	78
global __ptext15
__ptext15:	;psect for function _fan2
psect	text15
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	78
	global	__size_of_fan2
	__size_of_fan2	equ	__end_of_fan2-_fan2
	
_fan2:	
;incstack = 0
	opt	stack 5
; Regs used in _fan2: [wreg]
	line	80
	
l2693:	
;pwm.c: 80: TRISA = 0x0B;
	movlw	low(0Bh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	81
;pwm.c: 81: PORTA = 0x10;
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	82
	
l1030:	
	return
	opt stack 0
GLOBAL	__end_of_fan2
	__end_of_fan2:
	signat	_fan2,89
	global	_fan1

;; *************** function _fan1 *****************
;; Defined at:
;;		line 72 in file "C:\mcuproject\scm\台灯雾化器\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;;		_KeyServer
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	72
global __ptext16
__ptext16:	;psect for function _fan1
psect	text16
	file	"C:\mcuproject\scm\台灯雾化器\pwm.c"
	line	72
	global	__size_of_fan1
	__size_of_fan1	equ	__end_of_fan1-_fan1
	
_fan1:	
;incstack = 0
	opt	stack 5
; Regs used in _fan1: [wreg]
	line	74
	
l2691:	
;pwm.c: 74: TRISA = 0x0D;
	movlw	low(0Dh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	75
;pwm.c: 75: PORTA = 0x10;
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	76
	
l1027:	
	return
	opt stack 0
GLOBAL	__end_of_fan1
	__end_of_fan1:
	signat	_fan1,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 34 in file "C:\mcuproject\scm\台灯雾化器\main.c"
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
	file	"C:\mcuproject\scm\台灯雾化器\main.c"
	line	34
global __ptext17
__ptext17:	;psect for function _Init_System
psect	text17
	file	"C:\mcuproject\scm\台灯雾化器\main.c"
	line	34
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	36
	
l2953:	
# 36 "C:\mcuproject\scm\台灯雾化器\main.c"
nop ;# 
	line	37
# 37 "C:\mcuproject\scm\台灯雾化器\main.c"
clrwdt ;# 
psect	text17
	line	38
	
l2955:	
;main.c: 38: INTCON = 0;
	clrf	(11)	;volatile
	line	39
	
l2957:	
;main.c: 39: OSCCON = 0X72;
	movlw	low(072h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	40
	
l2959:	
;main.c: 40: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	44
	
l2961:	
;main.c: 44: WPUB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(8)	;volatile
	line	45
	
l2963:	
;main.c: 45: WPDB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	46
	
l2965:	
;main.c: 46: WPUA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	48
	
l2967:	
;main.c: 48: PIE1 = 2;
	movlw	low(02h)
	movwf	(13)	;volatile
	line	49
	
l2969:	
;main.c: 49: PR2 = 250;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	50
	
l2971:	
;main.c: 50: T2CON = 4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	51
;main.c: 51: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	52
;main.c: 52: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	53
;main.c: 53: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	54
;main.c: 54: PORTA = 0x00;
	clrf	(5)	;volatile
	line	55
	
l2973:	
;main.c: 55: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	56
	
l511:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_CheckTouchKey

;; *************** function _CheckTouchKey *****************
;; Defined at:
;;		line 495 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	495
global __ptext18
__ptext18:	;psect for function _CheckTouchKey
psect	text18
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	495
	global	__size_of_CheckTouchKey
	__size_of_CheckTouchKey	equ	__end_of_CheckTouchKey-_CheckTouchKey
	
_CheckTouchKey:	
;incstack = 0
	opt	stack 2
; Regs used in _CheckTouchKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	497
	
l3103:	
;CheckTouchKey.c: 497: if(!b_kover)
	btfsc	(_b_kover/8),(_b_kover)&7	;volatile
	goto	u1681
	goto	u1680
u1681:
	goto	l1635
u1680:
	line	500
	
l3105:	
;CheckTouchKey.c: 498: {
;CheckTouchKey.c: 500: GetTouchKeyValue();
	fcall	_GetTouchKeyValue
	line	501
	
l3107:	
;CheckTouchKey.c: 501: if(++KeyCounter >= 8)
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_KeyCounter),f
	subwf	((_KeyCounter)),w
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l3137
u1690:
	line	503
	
l3109:	
;CheckTouchKey.c: 502: {
;CheckTouchKey.c: 503: KeyCounter = 0;
	clrf	(_KeyCounter)
	line	504
	
l3111:	
;CheckTouchKey.c: 504: b_kover = 1;
	bsf	(_b_kover/8),(_b_kover)&7	;volatile
	goto	l3137
	line	507
	
l1635:	
;CheckTouchKey.c: 507: else if(!b_kover1)
	btfsc	(_b_kover1/8),(_b_kover1)&7	;volatile
	goto	u1701
	goto	u1700
u1701:
	goto	l3131
u1700:
	line	510
	
l3113:	
;CheckTouchKey.c: 508: {
;CheckTouchKey.c: 510: CheckOnceResult();
	fcall	_CheckOnceResult
	line	513
;CheckTouchKey.c: 513: TurnKeyFlags();
	fcall	_TurnKeyFlags
	line	514
	
l3115:	
;CheckTouchKey.c: 514: b_kover1 = 1;
	bsf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	520
	
l3117:	
;CheckTouchKey.c: 520: if(b_kerr || KeyCounter > KeyValidNumber)
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u1711
	goto	u1710
u1711:
	goto	l3121
u1710:
	
l3119:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_KeyCounter),w
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l3129
u1720:
	line	522
	
l3121:	
;CheckTouchKey.c: 521: {
;CheckTouchKey.c: 522: KeyStopClear();
	fcall	_KeyStopClear
	line	523
	
l3123:	
;CheckTouchKey.c: 523: b_kerr = 0;
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	524
	
l3125:	
;CheckTouchKey.c: 524: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	525
	
l3127:	
;CheckTouchKey.c: 525: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	527
	
l3129:	
;CheckTouchKey.c: 526: }
;CheckTouchKey.c: 527: KeyCounter = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyCounter)
	line	528
;CheckTouchKey.c: 528: }
	goto	l3137
	line	532
	
l3131:	
;CheckTouchKey.c: 529: else
;CheckTouchKey.c: 530: {
;CheckTouchKey.c: 532: CheckKeyOldValue();
	fcall	_CheckKeyOldValue
	line	534
;CheckTouchKey.c: 534: ClearResSum();
	fcall	_ClearResSum
	line	536
	
l3133:	
;CheckTouchKey.c: 536: b_kover = 0;
	bcf	(_b_kover/8),(_b_kover)&7	;volatile
	line	537
	
l3135:	
;CheckTouchKey.c: 537: b_kover1 = 0;
	bcf	(_b_kover1/8),(_b_kover1)&7	;volatile
	line	540
	
l3137:	
;CheckTouchKey.c: 538: }
;CheckTouchKey.c: 540: CheckValidTime();
	fcall	_CheckValidTime
	line	541
	
l1643:	
	return
	opt stack 0
GLOBAL	__end_of_CheckTouchKey
	__end_of_CheckTouchKey:
	signat	_CheckTouchKey,89
	global	_TurnKeyFlags

;; *************** function _TurnKeyFlags *****************
;; Defined at:
;;		line 382 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	line	382
global __ptext19
__ptext19:	;psect for function _TurnKeyFlags
psect	text19
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	382
	global	__size_of_TurnKeyFlags
	__size_of_TurnKeyFlags	equ	__end_of_TurnKeyFlags-_TurnKeyFlags
	
_TurnKeyFlags:	
;incstack = 0
	opt	stack 2
; Regs used in _TurnKeyFlags: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	387
	
l2883:	
;CheckTouchKey.c: 384: static unsigned char KeyHaveTimes = 0;
;CheckTouchKey.c: 385: static unsigned char KeyNoTimes = 0;
;CheckTouchKey.c: 387: if(KeyData[0] | KeyData[1])
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfsc	status,2
	goto	u1271
	goto	u1270
u1271:
	goto	l2909
u1270:
	line	389
	
l2885:	
;CheckTouchKey.c: 388: {
;CheckTouchKey.c: 389: KeyNoTimes = 0;
	clrf	(TurnKeyFlags@KeyNoTimes)
	line	391
	
l2887:	
;CheckTouchKey.c: 391: if(KeyData[0] == KeyOldData[0] && KeyData[1] == KeyOldData[1])
	movf	(_KeyData),w	;volatile
	xorwf	(_KeyOldData),w	;volatile
	skipz
	goto	u1281
	goto	u1280
u1281:
	goto	l1616
u1280:
	
l2889:	
	movf	0+(_KeyData)+01h,w	;volatile
	xorwf	0+(_KeyOldData)+01h,w	;volatile
	skipz
	goto	u1291
	goto	u1290
u1291:
	goto	l1616
u1290:
	line	393
	
l2891:	
	movlw	low(02h)
	incf	(TurnKeyFlags@KeyHaveTimes),f
	subwf	((TurnKeyFlags@KeyHaveTimes)),w
	skipc
	goto	u1301
	goto	u1300
u1301:
	goto	l1623
u1300:
	line	395
	
l2893:	
;CheckTouchKey.c: 394: {
;CheckTouchKey.c: 395: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	line	396
	
l2895:	
;CheckTouchKey.c: 396: KeyFlag[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyFlag)	;volatile
	line	397
	
l2897:	
;CheckTouchKey.c: 397: KeyFlag[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyFlag)+01h	;volatile
	line	401
	
l2899:	
;CheckTouchKey.c: 400: {
;CheckTouchKey.c: 401: if(!b_kclr)
	btfsc	(_b_kclr/8),(_b_kclr)&7	;volatile
	goto	u1311
	goto	u1310
u1311:
	goto	l1620
u1310:
	line	403
	
l2901:	
;CheckTouchKey.c: 402: {
;CheckTouchKey.c: 403: b_kclr = 1;
	bsf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	404
	
l2903:	
;CheckTouchKey.c: 404: KeyClearIn();
	fcall	_KeyClearIn
	goto	l1623
	line	409
	
l1616:	
	line	411
;CheckTouchKey.c: 409: else
;CheckTouchKey.c: 410: {
;CheckTouchKey.c: 411: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	412
	
l2905:	
;CheckTouchKey.c: 412: KeyOldData[0] = KeyData[0];
	movf	(_KeyData),w	;volatile
	movwf	(_KeyOldData)	;volatile
	line	413
;CheckTouchKey.c: 413: KeyOldData[1] = KeyData[1];
	movf	0+(_KeyData)+01h,w	;volatile
	movwf	0+(_KeyOldData)+01h	;volatile
	line	414
	
l2907:	
;CheckTouchKey.c: 414: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	goto	l1623
	line	415
	
l1620:	
	line	416
;CheckTouchKey.c: 415: }
;CheckTouchKey.c: 416: }
	goto	l1623
	line	419
	
l2909:	
;CheckTouchKey.c: 417: else
;CheckTouchKey.c: 418: {
;CheckTouchKey.c: 419: KeyHaveTimes = 0;
	clrf	(TurnKeyFlags@KeyHaveTimes)
	line	420
;CheckTouchKey.c: 420: KeyOldData[0] = 0;
	clrf	(_KeyOldData)	;volatile
	line	421
;CheckTouchKey.c: 421: KeyOldData[1] = 0;
	clrf	0+(_KeyOldData)+01h	;volatile
	line	423
	
l2911:	
;CheckTouchKey.c: 423: if(++KeyNoTimes >=2)
	movlw	low(02h)
	incf	(TurnKeyFlags@KeyNoTimes),f
	subwf	((TurnKeyFlags@KeyNoTimes)),w
	skipc
	goto	u1321
	goto	u1320
u1321:
	goto	l1623
u1320:
	line	425
	
l2913:	
;CheckTouchKey.c: 424: {
;CheckTouchKey.c: 425: KeyNoTimes = 0;
	clrf	(TurnKeyFlags@KeyNoTimes)
	line	426
;CheckTouchKey.c: 426: KeyFlag[0] = 0;
	clrf	(_KeyFlag)	;volatile
	line	427
;CheckTouchKey.c: 427: KeyFlag[1] = 0;
	clrf	0+(_KeyFlag)+01h	;volatile
	line	429
	
l2915:	
;CheckTouchKey.c: 429: b_kclr = 0;
	bcf	(_b_kclr/8),(_b_kclr)&7	;volatile
	line	432
	
l1623:	
	return
	opt stack 0
GLOBAL	__end_of_TurnKeyFlags
	__end_of_TurnKeyFlags:
	signat	_TurnKeyFlags,89
	global	_KeyClearIn

;; *************** function _KeyClearIn *****************
;; Defined at:
;;		line 88 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	line	88
global __ptext20
__ptext20:	;psect for function _KeyClearIn
psect	text20
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	88
	global	__size_of_KeyClearIn
	__size_of_KeyClearIn	equ	__end_of_KeyClearIn-_KeyClearIn
	
_KeyClearIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyClearIn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	91
	
l2647:	
;CheckTouchKey.c: 90: unsigned char cnt;
;CheckTouchKey.c: 91: for(cnt=0;cnt < KeyTotalNumber;cnt++)
	clrf	(KeyClearIn@cnt)
	line	93
	
l2653:	
;CheckTouchKey.c: 92: {
;CheckTouchKey.c: 93: if(!KeyIsIn(cnt))
	movf	(KeyClearIn@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u941
	goto	u940
u941:
	goto	l2657
u940:
	line	95
	
l2655:	
;CheckTouchKey.c: 94: {
;CheckTouchKey.c: 95: KeyClearOne(cnt);
	movf	(KeyClearIn@cnt),w
	fcall	_KeyClearOne
	line	91
	
l2657:	
	incf	(KeyClearIn@cnt),f
	
l2659:	
	movlw	low(04h)
	subwf	(KeyClearIn@cnt),w
	skipc
	goto	u951
	goto	u950
u951:
	goto	l2653
u950:
	line	98
	
l1534:	
	return
	opt stack 0
GLOBAL	__end_of_KeyClearIn
	__end_of_KeyClearIn:
	signat	_KeyClearIn,89
	global	_KeyStopClear

;; *************** function _KeyStopClear *****************
;; Defined at:
;;		line 107 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=1
	line	107
global __ptext21
__ptext21:	;psect for function _KeyStopClear
psect	text21
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	107
	global	__size_of_KeyStopClear
	__size_of_KeyStopClear	equ	__end_of_KeyStopClear-_KeyStopClear
	
_KeyStopClear:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	110
	
l2743:	
;CheckTouchKey.c: 109: unsigned char i;
;CheckTouchKey.c: 110: KeyFlag[0] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyFlag)	;volatile
	line	111
;CheckTouchKey.c: 111: KeyFlag[1] = 0;
	clrf	0+(_KeyFlag)+01h	;volatile
	line	112
;CheckTouchKey.c: 112: for(i = 0; i < KeyTotalNumber; i++)
	clrf	(KeyStopClear@i)
	line	114
	
l2749:	
;CheckTouchKey.c: 113: {
;CheckTouchKey.c: 114: KeyResSum[i] = 0;
	clrc
	rlf	(KeyStopClear@i),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	115
	
l2751:	
;CheckTouchKey.c: 115: KeyClearOne(i);
	movf	(KeyStopClear@i),w
	fcall	_KeyClearOne
	line	112
	
l2753:	
	incf	(KeyStopClear@i),f
	
l2755:	
	movlw	low(04h)
	subwf	(KeyStopClear@i),w
	skipc
	goto	u1011
	goto	u1010
u1011:
	goto	l2749
u1010:
	line	117
	
l1539:	
	return
	opt stack 0
GLOBAL	__end_of_KeyStopClear
	__end_of_KeyStopClear:
	signat	_KeyStopClear,89
	global	_GetTouchKeyValue

;; *************** function _GetTouchKeyValue *****************
;; Defined at:
;;		line 180 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             1    4[COMMON] unsigned char 
;;  temp            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : A00/0
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
;;		_ClearResSum
;; This function is called by:
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	line	180
global __ptext22
__ptext22:	;psect for function _GetTouchKeyValue
psect	text22
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	180
	global	__size_of_GetTouchKeyValue
	__size_of_GetTouchKeyValue	equ	__end_of_GetTouchKeyValue-_GetTouchKeyValue
	
_GetTouchKeyValue:	
;incstack = 0
	opt	stack 4
; Regs used in _GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	182
	
l2757:	
;CheckTouchKey.c: 182: unsigned char cnt = 0,temp;
	clrf	(GetTouchKeyValue@cnt)
	line	184
;CheckTouchKey.c: 184: do
	
l1556:	
	line	186
;CheckTouchKey.c: 185: {
;CheckTouchKey.c: 186: KEYCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(146)^080h	;volatile
	line	187
;CheckTouchKey.c: 187: KEYCON1 = 0;
	clrf	(147)^080h	;volatile
	line	194
	
l2759:	
;CheckTouchKey.c: 194: KEYCON0 = Table_KeyCap[cnt];
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_KeyCap)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(146)^080h	;volatile
	line	195
	
l2761:	
;CheckTouchKey.c: 195: KEYCON1 = Table_KeyChannel[cnt];
	movf	(GetTouchKeyValue@cnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(147)^080h	;volatile
	line	196
	
l2763:	
;CheckTouchKey.c: 196: KEYCON0 |= 0x1;
	bsf	(146)^080h+(0/8),(0)&7	;volatile
	line	198
;CheckTouchKey.c: 198: temp = 0;
	clrf	(GetTouchKeyValue@temp)
	line	199
;CheckTouchKey.c: 199: while(!(KEYCON0&0x80))
	goto	l1557
	
l1558:	
	line	201
;CheckTouchKey.c: 200: {
;CheckTouchKey.c: 201: if(0 == (--temp))
	decfsz	(GetTouchKeyValue@temp),f
	goto	u1021
	goto	u1020
u1021:
	goto	l1557
u1020:
	line	203
	
l2765:	
;CheckTouchKey.c: 202: {
;CheckTouchKey.c: 203: KeyCounter = 255;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_KeyCounter)
	line	204
	
l2767:	
;CheckTouchKey.c: 204: ClearResSum();
	fcall	_ClearResSum
	goto	l1560
	line	207
	
l1557:	
	line	199
	btfss	(146)^080h,(7)&7	;volatile
	goto	u1031
	goto	u1030
u1031:
	goto	l1558
u1030:
	line	209
	
l2771:	
;CheckTouchKey.c: 206: }
;CheckTouchKey.c: 207: }
;CheckTouchKey.c: 209: KeyResSum[cnt] += (unsigned int)((KEYDATAH<<8) | KEYDATAL);
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
	line	210
	
l2773:	
	movlw	low(04h)
	incf	(GetTouchKeyValue@cnt),f
	subwf	((GetTouchKeyValue@cnt)),w
	skipc
	goto	u1041
	goto	u1040
u1041:
	goto	l1556
u1040:
	line	211
	
l1560:	
	return
	opt stack 0
GLOBAL	__end_of_GetTouchKeyValue
	__end_of_GetTouchKeyValue:
	signat	_GetTouchKeyValue,89
	global	_ClearResSum

;; *************** function _ClearResSum *****************
;; Defined at:
;;		line 126 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	line	126
global __ptext23
__ptext23:	;psect for function _ClearResSum
psect	text23
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	126
	global	__size_of_ClearResSum
	__size_of_ClearResSum	equ	__end_of_ClearResSum-_ClearResSum
	
_ClearResSum:	
;incstack = 0
	opt	stack 4
; Regs used in _ClearResSum: [wreg-fsr0h+status,2+status,0]
	line	128
	
l2661:	
;CheckTouchKey.c: 128: unsigned char cnt = 0;
	clrf	(ClearResSum@cnt)
	line	131
	
l2663:	
;CheckTouchKey.c: 130: {
;CheckTouchKey.c: 131: KeyResSum[cnt] = 0;
	clrc
	rlf	(ClearResSum@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	132
	
l2665:	
	movlw	low(04h)
	incf	(ClearResSum@cnt),f
	subwf	((ClearResSum@cnt)),w
	skipc
	goto	u961
	goto	u960
u961:
	goto	l2663
u960:
	line	133
	
l1544:	
	return
	opt stack 0
GLOBAL	__end_of_ClearResSum
	__end_of_ClearResSum:
	signat	_ClearResSum,89
	global	_CheckValidTime

;; *************** function _CheckValidTime *****************
;; Defined at:
;;		line 467 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
;;		_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	line	467
global __ptext24
__ptext24:	;psect for function _CheckValidTime
psect	text24
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	467
	global	__size_of_CheckValidTime
	__size_of_CheckValidTime	equ	__end_of_CheckValidTime-_CheckValidTime
	
_CheckValidTime:	
;incstack = 0
	opt	stack 5
; Regs used in _CheckValidTime: [wreg+status,2+status,0]
	line	473
	
l2917:	
;CheckTouchKey.c: 472: {
;CheckTouchKey.c: 473: if(KeyFlag[0] | KeyFlag[1])
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u1331
	goto	u1330
u1331:
	goto	l2923
u1330:
	line	475
	
l2919:	
	incf	(CheckValidTime@validtime),f
	skipnz
	incf	(CheckValidTime@validtime+1),f
	movlw	03Ah
	subwf	((CheckValidTime@validtime+1)),w
	movlw	098h
	skipnz
	subwf	((CheckValidTime@validtime)),w
	skipc
	goto	u1341
	goto	u1340
u1341:
	goto	l1632
u1340:
	line	477
	
l2921:	
;CheckTouchKey.c: 476: {
;CheckTouchKey.c: 477: b_kerr = 1;
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	478
	
l2923:	
;CheckTouchKey.c: 478: validtime = 0;
	clrf	(CheckValidTime@validtime)
	clrf	(CheckValidTime@validtime+1)
	line	486
	
l1632:	
	return
	opt stack 0
GLOBAL	__end_of_CheckValidTime
	__end_of_CheckValidTime:
	signat	_CheckValidTime,89
	global	_CheckOnceResult

;; *************** function _CheckOnceResult *****************
;; Defined at:
;;		line 221 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       9       0       0
;;      Temps:          4       0       0       0
;;      Totals:         4       9       0       0
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
psect	text25,local,class=CODE,delta=2,merge=1,group=1
	line	221
global __ptext25
__ptext25:	;psect for function _CheckOnceResult
psect	text25
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	221
	global	__size_of_CheckOnceResult
	__size_of_CheckOnceResult	equ	__end_of_CheckOnceResult-_CheckOnceResult
	
_CheckOnceResult:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	223
	
l2775:	
;CheckTouchKey.c: 223: unsigned char cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckOnceResult@cnt)
	line	231
;CheckTouchKey.c: 224: unsigned char KeyDown;
;CheckTouchKey.c: 225: unsigned char flag;
;CheckTouchKey.c: 227: unsigned int KeyResTemp;
;CheckTouchKey.c: 228: unsigned int KeyValue;
;CheckTouchKey.c: 229: unsigned int OldValue;
;CheckTouchKey.c: 231: KeyData[0] = 0;
	clrf	(_KeyData)	;volatile
	line	232
;CheckTouchKey.c: 232: KeyData[1] = 0;
	clrf	0+(_KeyData)+01h	;volatile
	line	233
;CheckTouchKey.c: 233: KeyMaxSub = 0;
	clrf	(_KeyMaxSub)
	line	238
	
l2777:	
;CheckTouchKey.c: 237: {
;CheckTouchKey.c: 238: flag = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(CheckOnceResult@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@flag)
	line	240
	
l2779:	
;CheckTouchKey.c: 240: KeyResSum[cnt] >>= 3;
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	03h
u1055:
	incf	fsr0,f
	clrc
	bcf	status, 7	;select IRP bank0
	rrf	indf,f
	decf	fsr0,f
	rrf	indf,f
u1050:
	addlw	-1
	skipz
	goto	u1055
	line	241
	
l2781:	
;CheckTouchKey.c: 241: KeyResTemp = KeyResSum[cnt];
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyResSum|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckOnceResult@KeyResTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@KeyResTemp+1)
	line	242
	
l2783:	
;CheckTouchKey.c: 242: KeyDown = Table_KeyDown[cnt];
	movf	(CheckOnceResult@cnt),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(CheckOnceResult@KeyDown)
	line	244
	
l2785:	
;CheckTouchKey.c: 244: KeyValue = KeyResTemp + KeyDown;
	movf	(CheckOnceResult@KeyDown),w
	movwf	(CheckOnceResult@KeyValue)
	clrf	(CheckOnceResult@KeyValue+1)
	
l2787:	
	movf	(CheckOnceResult@KeyResTemp),w
	addwf	(CheckOnceResult@KeyValue),f
	skipnc
	incf	(CheckOnceResult@KeyValue+1),f
	movf	(CheckOnceResult@KeyResTemp+1),w
	addwf	(CheckOnceResult@KeyValue+1),f
	line	246
	
l2789:	
;CheckTouchKey.c: 246: if(!KeyIsIn(cnt))
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1061
	goto	u1060
u1061:
	goto	l2819
u1060:
	line	249
	
l2791:	
;CheckTouchKey.c: 247: {
;CheckTouchKey.c: 249: OldValue = KeyOldValue2[cnt];
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(CheckOnceResult@OldValue)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckOnceResult@OldValue+1)
	line	251
;CheckTouchKey.c: 251: if(KeyReference[cnt] > KeyValue)
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
	goto	u1075
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue),w
u1075:
	skipnc
	goto	u1071
	goto	u1070
u1071:
	goto	l2795
u1070:
	line	253
	
l2793:	
;CheckTouchKey.c: 252: {
;CheckTouchKey.c: 253: KeyResTemp = KeyReference[cnt] - KeyResTemp;
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
	line	254
;CheckTouchKey.c: 254: }
	goto	l2803
	line	255
	
l2795:	
;CheckTouchKey.c: 255: else if ((OldValue > KeyValue) && (KeyOldValue1[cnt] > KeyValue))
	movf	(CheckOnceResult@OldValue+1),w
	subwf	(CheckOnceResult@KeyValue+1),w
	skipz
	goto	u1085
	movf	(CheckOnceResult@OldValue),w
	subwf	(CheckOnceResult@KeyValue),w
u1085:
	skipnc
	goto	u1081
	goto	u1080
u1081:
	goto	l2841
u1080:
	
l2797:	
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
	goto	u1095
	movf	0+(??_CheckOnceResult+0)+0,w
	subwf	(CheckOnceResult@KeyValue),w
u1095:
	skipnc
	goto	u1091
	goto	u1090
u1091:
	goto	l2841
u1090:
	line	257
	
l2799:	
;CheckTouchKey.c: 256: {
;CheckTouchKey.c: 257: KeyReference[cnt] = OldValue;
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckOnceResult@OldValue),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckOnceResult@OldValue+1),w
	movwf	indf
	line	258
	
l2801:	
;CheckTouchKey.c: 258: KeyResTemp = OldValue - KeyResTemp;
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	(CheckOnceResult@OldValue),w
	movwf	(CheckOnceResult@KeyResTemp)
	movf	(CheckOnceResult@KeyResTemp+1),w
	skipc
	incf	(CheckOnceResult@KeyResTemp+1),w
	subwf	(CheckOnceResult@OldValue+1),w
	movwf	1+(CheckOnceResult@KeyResTemp)
	line	265
;CheckTouchKey.c: 259: }
	
l2803:	
;CheckTouchKey.c: 263: }
;CheckTouchKey.c: 265: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	269
	
l2805:	
;CheckTouchKey.c: 268: {
;CheckTouchKey.c: 269: if(KeyResTemp >> 8)
	movf	(0+(CheckOnceResult@KeyResTemp)+01h),w
	btfsc	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l2809
u1100:
	line	271
	
l2807:	
;CheckTouchKey.c: 270: {
;CheckTouchKey.c: 271: KeyDown = 0xFF;
	movlw	low(0FFh)
	movwf	(CheckOnceResult@KeyDown)
	line	272
;CheckTouchKey.c: 272: }
	goto	l1574
	line	275
	
l2809:	
;CheckTouchKey.c: 273: else
;CheckTouchKey.c: 274: {
;CheckTouchKey.c: 275: KeyDown = KeyResTemp & 0xFF;
	movf	(CheckOnceResult@KeyResTemp),w
	movwf	(CheckOnceResult@KeyDown)
	line	276
	
l1574:	
	line	278
;CheckTouchKey.c: 276: }
;CheckTouchKey.c: 278: if(KeyMaxSub < KeyDown)
	movf	(CheckOnceResult@KeyDown),w
	subwf	(_KeyMaxSub),w
	skipnc
	goto	u1111
	goto	u1110
u1111:
	goto	l2815
u1110:
	line	280
	
l2811:	
;CheckTouchKey.c: 279: {
;CheckTouchKey.c: 280: KeyMaxSub = KeyDown;
	movf	(CheckOnceResult@KeyDown),w
	movwf	(_KeyMaxSub)
	line	281
	
l2813:	
;CheckTouchKey.c: 281: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag),w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyHave
	line	282
;CheckTouchKey.c: 282: }
	goto	l2841
	line	285
	
l2815:	
;CheckTouchKey.c: 283: else
;CheckTouchKey.c: 284: {
;CheckTouchKey.c: 285: KeyCounter++;
	incf	(_KeyCounter),f
	goto	l2841
	line	298
	
l2819:	
;CheckTouchKey.c: 294: else
;CheckTouchKey.c: 295: {
;CheckTouchKey.c: 298: if(KeyReference[cnt]+1 < KeyValue)
	clrc
	rlf	(CheckOnceResult@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
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
	goto	u1125
	movf	(CheckOnceResult@KeyValue),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1125:
	skipnc
	goto	u1121
	goto	u1120
u1121:
	goto	l2825
u1120:
	goto	l2841
	line	302
	
l2825:	
;CheckTouchKey.c: 302: else if((KeyOldValue2[cnt]+KeyDown<KeyResTemp) || (KeyOldValue1[cnt]+KeyDown<KeyResTemp))
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
	goto	u1135
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1135:
	skipc
	goto	u1131
	goto	u1130
u1131:
	goto	l2829
u1130:
	
l2827:	
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
	goto	u1145
	movf	(CheckOnceResult@KeyResTemp),w
	subwf	0+(??_CheckOnceResult+2)+0,w
u1145:
	skipnc
	goto	u1141
	goto	u1140
u1141:
	goto	l2833
u1140:
	line	304
	
l2829:	
;CheckTouchKey.c: 303: {
;CheckTouchKey.c: 304: if(++KeyUpShake[cnt] > 8)
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(09h)
	subwf	(indf),w
	skipc
	goto	u1151
	goto	u1150
u1151:
	goto	l1580
u1150:
	line	306
	
l2831:	
;CheckTouchKey.c: 305: {
;CheckTouchKey.c: 306: KeyClearOne(cnt);
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyClearOne
	line	307
;CheckTouchKey.c: 307: continue;
	goto	l2841
	line	312
	
l2833:	
;CheckTouchKey.c: 310: else
;CheckTouchKey.c: 311: {
;CheckTouchKey.c: 312: KeyUpShake[cnt] = 0;
	movf	(CheckOnceResult@cnt),w
	addlw	low(_KeyUpShake|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	goto	l2837
	line	313
	
l1580:	
	line	319
	
l2837:	
;CheckTouchKey.c: 319: else if(!(KeyData[0] | KeyData[1]))
	movf	0+(_KeyData)+01h,w	;volatile
	iorwf	(_KeyData),w	;volatile
	btfss	status,2
	goto	u1161
	goto	u1160
u1161:
	goto	l2841
u1160:
	line	321
	
l2839:	
;CheckTouchKey.c: 320: {
;CheckTouchKey.c: 321: KeyHave(cnt,flag);
	movf	(CheckOnceResult@flag),w
	movwf	(KeyHave@flag)
	clrf	(KeyHave@flag+1)
	movf	(CheckOnceResult@cnt),w
	fcall	_KeyHave
	line	324
	
l2841:	
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(CheckOnceResult@cnt),f
	subwf	((CheckOnceResult@cnt)),w
	skipc
	goto	u1171
	goto	u1170
u1171:
	goto	l2777
u1170:
	line	325
	
l1590:	
	return
	opt stack 0
GLOBAL	__end_of_CheckOnceResult
	__end_of_CheckOnceResult:
	signat	_CheckOnceResult,89
	global	_KeyHave

;; *************** function _KeyHave *****************
;; Defined at:
;;		line 142 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
psect	text26,local,class=CODE,delta=2,merge=1,group=1
	line	142
global __ptext26
__ptext26:	;psect for function _KeyHave
psect	text26
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	142
	global	__size_of_KeyHave
	__size_of_KeyHave	equ	__end_of_KeyHave-_KeyHave
	
_KeyHave:	
;incstack = 0
	opt	stack 4
; Regs used in _KeyHave: [wreg+status,2+status,0]
;KeyHave@cnt stored from wreg
	movwf	(KeyHave@cnt)
	line	144
	
l2667:	
;CheckTouchKey.c: 144: KeyCounter++;
	incf	(_KeyCounter),f
	line	148
	
l2669:	
;CheckTouchKey.c: 147: {
;CheckTouchKey.c: 148: KeyData[0] = 0;
	clrf	(_KeyData)	;volatile
	line	149
	
l2671:	
;CheckTouchKey.c: 149: KeyData[1] = 0;
	clrf	0+(_KeyData)+01h	;volatile
	line	150
	
l2673:	
;CheckTouchKey.c: 150: if(cnt&0x8)
	btfss	(KeyHave@cnt),(3)&7
	goto	u971
	goto	u970
u971:
	goto	l2677
u970:
	line	152
	
l2675:	
;CheckTouchKey.c: 151: {
;CheckTouchKey.c: 152: KeyData[1] = flag;
	movf	(KeyHave@flag),w
	movwf	0+(_KeyData)+01h	;volatile
	line	153
;CheckTouchKey.c: 153: }
	goto	l1553
	line	156
	
l2677:	
;CheckTouchKey.c: 154: else
;CheckTouchKey.c: 155: {
;CheckTouchKey.c: 156: KeyData[0] = flag;
	movf	(KeyHave@flag),w
	movwf	(_KeyData)	;volatile
	line	170
	
l1553:	
	return
	opt stack 0
GLOBAL	__end_of_KeyHave
	__end_of_KeyHave:
	signat	_KeyHave,8313
	global	_KeyClearOne

;; *************** function _KeyClearOne *****************
;; Defined at:
;;		line 80 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	line	80
global __ptext27
__ptext27:	;psect for function _KeyClearOne
psect	text27
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	80
	global	__size_of_KeyClearOne
	__size_of_KeyClearOne	equ	__end_of_KeyClearOne-_KeyClearOne
	
_KeyClearOne:	
;incstack = 0
	opt	stack 3
; Regs used in _KeyClearOne: [wreg-fsr0h+status,2+status,0]
;KeyClearOne@cnt stored from wreg
	movwf	(KeyClearOne@cnt)
	line	82
	
l2645:	
;CheckTouchKey.c: 82: KeyOldValue0[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	83
;CheckTouchKey.c: 83: KeyOldValue1[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	84
;CheckTouchKey.c: 84: KeyOldValue2[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	85
;CheckTouchKey.c: 85: KeyReference[cnt] = 0;
	clrc
	rlf	(KeyClearOne@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	86
	
l1528:	
	return
	opt stack 0
GLOBAL	__end_of_KeyClearOne
	__end_of_KeyClearOne:
	signat	_KeyClearOne,4217
	global	_CheckKeyOldValue

;; *************** function _CheckKeyOldValue *****************
;; Defined at:
;;		line 335 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
psect	text28,local,class=CODE,delta=2,merge=1,group=1
	line	335
global __ptext28
__ptext28:	;psect for function _CheckKeyOldValue
psect	text28
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	335
	global	__size_of_CheckKeyOldValue
	__size_of_CheckKeyOldValue	equ	__end_of_CheckKeyOldValue-_CheckKeyOldValue
	
_CheckKeyOldValue:	
;incstack = 0
	opt	stack 3
; Regs used in _CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	338
	
l2843:	
;CheckTouchKey.c: 337: static unsigned char counter = 0;
;CheckTouchKey.c: 338: unsigned char cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(CheckKeyOldValue@cnt)
	line	342
	
l2845:	
;CheckTouchKey.c: 339: unsigned int KeyResTemp;
;CheckTouchKey.c: 340: unsigned int KeyOldTemp;
;CheckTouchKey.c: 342: if(++counter < 4)
	movlw	low(04h)
	incf	(CheckKeyOldValue@counter),f
	subwf	((CheckKeyOldValue@counter)),w
	skipnc
	goto	u1181
	goto	u1180
u1181:
	goto	l2849
u1180:
	goto	l1596
	line	344
	
l2849:	
;CheckTouchKey.c: 344: counter = 0;
	clrf	(CheckKeyOldValue@counter)
	line	348
	
l2851:	
;CheckTouchKey.c: 347: {
;CheckTouchKey.c: 348: KeyResTemp = KeyResSum[cnt];
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
	line	349
	
l2853:	
;CheckTouchKey.c: 349: if(!KeyIsIn(cnt))
	movf	(CheckKeyOldValue@cnt),w
	fcall	_KeyIsIn
	xorlw	0
	skipz
	goto	u1191
	goto	u1190
u1191:
	goto	l1598
u1190:
	line	352
	
l2855:	
;CheckTouchKey.c: 350: {
;CheckTouchKey.c: 352: KeyOldTemp = KeyOldValue0[cnt] - KeyResTemp;
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
	
l2857:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	353
	
l2859:	
;CheckTouchKey.c: 353: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u1201
	goto	u1200
u1201:
	goto	l2863
u1200:
	
l2861:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u1211
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l1598
u1210:
	line	355
	
l2863:	
;CheckTouchKey.c: 354: {
;CheckTouchKey.c: 355: KeyOldTemp = KeyOldValue1[cnt] - KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue1|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp+1)
	
l2865:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	356
	
l2867:	
;CheckTouchKey.c: 356: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u1221
	goto	u1220
u1221:
	goto	l2871
u1220:
	
l2869:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u1231
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u1231
	goto	u1230
u1231:
	goto	l1598
u1230:
	line	358
	
l2871:	
;CheckTouchKey.c: 357: {
;CheckTouchKey.c: 358: KeyOldTemp = KeyOldValue2[cnt] - KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue2|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(CheckKeyOldValue@KeyOldTemp+1)
	
l2873:	
	movf	(CheckKeyOldValue@KeyResTemp),w
	subwf	(CheckKeyOldValue@KeyOldTemp),f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	skipc
	decf	(CheckKeyOldValue@KeyOldTemp+1),f
	subwf	(CheckKeyOldValue@KeyOldTemp+1),f
	line	359
	
l2875:	
;CheckTouchKey.c: 359: if(KeyOldTemp <= 1 || KeyOldTemp >= -1)
	movlw	0
	subwf	(CheckKeyOldValue@KeyOldTemp+1),w
	movlw	02h
	skipnz
	subwf	(CheckKeyOldValue@KeyOldTemp),w
	skipc
	goto	u1241
	goto	u1240
u1241:
	goto	l2879
u1240:
	
l2877:	
		incf	((CheckKeyOldValue@KeyOldTemp)),w
	skipz
	goto	u1251
	incf	((CheckKeyOldValue@KeyOldTemp+1)),w
	btfss	status,2
	goto	u1251
	goto	u1250
u1251:
	goto	l1598
u1250:
	line	361
	
l2879:	
;CheckTouchKey.c: 360: {
;CheckTouchKey.c: 361: KeyReference[cnt] = KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyReference|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@KeyResTemp),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	movwf	indf
	line	365
	
l1598:	
	line	368
;CheckTouchKey.c: 362: }
;CheckTouchKey.c: 363: }
;CheckTouchKey.c: 364: }
;CheckTouchKey.c: 365: }
;CheckTouchKey.c: 368: KeyOldValue2[cnt] = KeyOldValue1[cnt];
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
	line	369
;CheckTouchKey.c: 369: KeyOldValue1[cnt] = KeyOldValue0[cnt];
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
	line	370
;CheckTouchKey.c: 370: KeyOldValue0[cnt] = KeyResTemp;
	clrc
	rlf	(CheckKeyOldValue@cnt),w
	addlw	low(_KeyOldValue0|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(CheckKeyOldValue@KeyResTemp),w
	movwf	indf
	incf	fsr0,f
	movf	(CheckKeyOldValue@KeyResTemp+1),w
	movwf	indf
	line	371
	
l2881:	
	movlw	low(04h)
	incf	(CheckKeyOldValue@cnt),f
	subwf	((CheckKeyOldValue@cnt)),w
	skipc
	goto	u1261
	goto	u1260
u1261:
	goto	l2851
u1260:
	line	372
	
l1596:	
	return
	opt stack 0
GLOBAL	__end_of_CheckKeyOldValue
	__end_of_CheckKeyOldValue:
	signat	_CheckKeyOldValue,89
	global	_KeyIsIn

;; *************** function _KeyIsIn *****************
;; Defined at:
;;		line 58 in file "D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
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
psect	text29,local,class=CODE,delta=2,merge=1,group=1
	line	58
global __ptext29
__ptext29:	;psect for function _KeyIsIn
psect	text29
	file	"D:\ToolsDesign\SCMCU\SCTouch_lib\Normal\XC8\SC251\CheckTouchKey.c"
	line	58
	global	__size_of_KeyIsIn
	__size_of_KeyIsIn	equ	__end_of_KeyIsIn-_KeyIsIn
	
_KeyIsIn:	
;incstack = 0
	opt	stack 2
; Regs used in _KeyIsIn: [wreg-fsr0h+status,2+status,0+pclath]
;KeyIsIn@cnt stored from wreg
	movwf	(KeyIsIn@cnt)
	line	60
	
l2633:	
;CheckTouchKey.c: 60: unsigned char i = Table_KeyFalg[((unsigned char)(cnt&0x7))];
	movf	(KeyIsIn@cnt),w
	andlw	07h
	addlw	low((((_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(KeyIsIn@i)
	line	62
	
l2635:	
;CheckTouchKey.c: 62: if(cnt&0x8)
	btfss	(KeyIsIn@cnt),(3)&7
	goto	u931
	goto	u930
u931:
	goto	l2639
u930:
	line	64
	
l2637:	
;CheckTouchKey.c: 63: {
;CheckTouchKey.c: 64: i &= KeyFlag[1];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(KeyIsIn@i),f
	line	65
;CheckTouchKey.c: 65: }
	goto	l2641
	line	68
	
l2639:	
;CheckTouchKey.c: 66: else
;CheckTouchKey.c: 67: {
;CheckTouchKey.c: 68: i &= KeyFlag[0];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyFlag),w	;volatile
	andwf	(KeyIsIn@i),f
	line	70
	
l2641:	
;CheckTouchKey.c: 69: }
;CheckTouchKey.c: 70: return i;
	movf	(KeyIsIn@i),w
	line	71
	
l1525:	
	return
	opt stack 0
GLOBAL	__end_of_KeyIsIn
	__end_of_KeyIsIn:
	signat	_KeyIsIn,4217
	global	_ADC_AVG

;; *************** function _ADC_AVG *****************
;; Defined at:
;;		line 249 in file "C:\mcuproject\scm\台灯雾化器\main.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;;  adtime          1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    3[BANK0 ] unsigned char 
;;  i               1    6[BANK0 ] unsigned char 
;;  adsum           2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       3       0       0
;;      Locals:         0       4       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Sample
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\台灯雾化器\main.c"
	line	249
global __ptext30
__ptext30:	;psect for function _ADC_AVG
psect	text30
	file	"C:\mcuproject\scm\台灯雾化器\main.c"
	line	249
	global	__size_of_ADC_AVG
	__size_of_ADC_AVG	equ	__end_of_ADC_AVG-_ADC_AVG
	
_ADC_AVG:	
;incstack = 0
	opt	stack 5
; Regs used in _ADC_AVG: [wreg+status,2+status,0+pclath+cstack]
;ADC_AVG@adch stored from wreg
	movwf	(ADC_AVG@adch)
	line	251
	
l3237:	
;main.c: 251: unsigned int adsum = 0;
	clrf	(ADC_AVG@adsum)
	clrf	(ADC_AVG@adsum+1)
	line	252
;main.c: 252: for(char i = 0; i< adtime;i++)
	clrf	(ADC_AVG@i)
	goto	l3243
	line	254
	
l3239:	
;main.c: 253: {
;main.c: 254: adsum+=ADC_Sample(adch);
	movf	(ADC_AVG@adch),w
	fcall	_ADC_Sample
	movf	(0+(?_ADC_Sample)),w
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_AVG@adsum),f
	skipnc
	incf	(ADC_AVG@adsum+1),f
	movf	(1+(?_ADC_Sample)),w
	addwf	(ADC_AVG@adsum+1),f
	line	252
	
l3241:	
	incf	(ADC_AVG@i),f
	
l3243:	
	movf	(ADC_AVG@adtime),w
	subwf	(ADC_AVG@i),w
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l3239
u1860:
	line	256
	
l3245:	
;main.c: 255: }
;main.c: 256: return adsum/adtime;
	movf	(ADC_AVG@adtime),w
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(ADC_AVG@adsum+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(ADC_AVG@adsum),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(?_ADC_AVG+1)
	movf	(0+(?___lwdiv)),w
	movwf	(?_ADC_AVG)
	line	257
	
l589:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_AVG
	__end_of_ADC_AVG:
	signat	_ADC_AVG,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] unsigned int 
;;  counter         1    8[COMMON] unsigned char 
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
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_ADC_AVG
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lwdiv.c"
	line	6
global __ptext31
__ptext31:	;psect for function ___lwdiv
psect	text31
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2927:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2929:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l2949
u1350:
	line	16
	
l2931:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2935
	line	18
	
l2933:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l2935:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1361
	goto	u1360
u1361:
	goto	l2933
u1360:
	line	22
	
l2937:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l2939:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1375
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1375:
	skipc
	goto	u1371
	goto	u1370
u1371:
	goto	l2945
u1370:
	line	24
	
l2941:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2943:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l2945:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l2947:	
	decfsz	(___lwdiv@counter),f
	goto	u1381
	goto	u1380
u1381:
	goto	l2937
u1380:
	line	30
	
l2949:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l1986:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 12 in file "C:\mcuproject\scm\台灯雾化器\adc.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    5[COMMON] unsigned char 
;;  ad_temp         2    7[COMMON] volatile unsigned int 
;;  admax           2    0        unsigned int 
;;  admin           2    0        unsigned int 
;;  adsum           2    0        unsigned int 
;;  i               1    6[COMMON] unsigned char 
;;  adtimes         1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_AVG
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\台灯雾化器\adc.c"
	line	12
global __ptext32
__ptext32:	;psect for function _ADC_Sample
psect	text32
	file	"C:\mcuproject\scm\台灯雾化器\adc.c"
	line	12
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 5
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	18
	
l2725:	
;adc.c: 17: volatile unsigned int ad_temp;
;adc.c: 18: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(156)^080h	;volatile
	line	19
	
l2727:	
;adc.c: 19: ADCON0 = 0X41 | (adch << 2);
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u985:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u985
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	movwf	(157)^080h	;volatile
	line	20
# 20 "C:\mcuproject\scm\台灯雾化器\adc.c"
nop ;# 
	line	21
# 21 "C:\mcuproject\scm\台灯雾化器\adc.c"
nop ;# 
psect	text32
	line	22
	
l2729:	
;adc.c: 22: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	24
	
l2731:	
;adc.c: 24: unsigned char i = 0;
	clrf	(ADC_Sample@i)
	line	25
;adc.c: 25: while(GODONE)
	goto	l1443
	
l1444:	
	line	27
;adc.c: 26: {
;adc.c: 27: if(0 == (--i))
	decfsz	(ADC_Sample@i),f
	goto	u991
	goto	u990
u991:
	goto	l1443
u990:
	goto	l1446
	line	29
	
l1443:	
	line	25
	btfsc	(1257/8)^080h,(1257)&7	;volatile
	goto	u1001
	goto	u1000
u1001:
	goto	l1444
u1000:
	line	31
	
l2735:	
;adc.c: 29: }
;adc.c: 31: ad_temp=(ADRESH<<4)+(ADRESL>>4);
	movf	(159)^080h,w	;volatile
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
	
l2737:	
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	32
	
l2739:	
;adc.c: 32: return ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(?_ADC_Sample+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(?_ADC_Sample)
	line	34
	
l1446:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,4218
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 181 in file "C:\mcuproject\scm\台灯雾化器\main.c"
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
psect	text33,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\台灯雾化器\main.c"
	line	181
global __ptext33
__ptext33:	;psect for function _Isr_Timer
psect	text33
	file	"C:\mcuproject\scm\台灯雾化器\main.c"
	line	181
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
	line	183
	
i1l3169:	
;main.c: 183: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u174_21
	goto	u174_20
u174_21:
	goto	i1l3179
u174_20:
	line	185
	
i1l3171:	
;main.c: 184: {
;main.c: 185: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	187
	
i1l3173:	
;main.c: 187: if(++MainTime >= 16)
	movlw	low(010h)
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u175_21
	goto	u175_20
u175_21:
	goto	i1l571
u175_20:
	line	189
	
i1l3175:	
;main.c: 188: {
;main.c: 189: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	190
	
i1l3177:	
;main.c: 190: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	i1l571
	line	196
	
i1l3179:	
;main.c: 194: else
;main.c: 195: {
;main.c: 196: PIR1 = 0;
	clrf	(12)	;volatile
	line	199
	
i1l571:	
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
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
