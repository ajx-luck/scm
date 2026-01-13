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
	FNCALL	_main,_Init_System
	FNCALL	_main,_batCtr
	FNCALL	_main,_checkBatValue
	FNCALL	_main,_checkOutA
	FNCALL	_main,_chrgCtr
	FNCALL	_main,_keyCtr
	FNCALL	_main,_showCtr
	FNCALL	_main,_taskSecond
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,_Sleep_Mode
	FNCALL	_workCtr,___lwmod
	FNCALL	_workCtr,___wmul
	FNCALL	_workCtr,_pwmInit
	FNCALL	_workCtr,_pwmStop
	FNCALL	_Sleep_Mode,_Init_System
	FNCALL	_showCtr,___lbdiv
	FNCALL	_showCtr,___lbmod
	FNCALL	_keyCtr,_keyRead
	FNCALL	_checkOutA,_ADC_Sample
	FNCALL	_checkBatValue,_ADC_Sample
	FNCALL	_checkBatValue,___lwdiv
	FNROOT	_main
	FNCALL	_Isr_Timer,_updateLed
	FNCALL	_updateLed,_refreshLed
	FNCALL	_refreshLed,_A1
	FNCALL	_refreshLed,_A2
	FNCALL	_refreshLed,_A3
	FNCALL	_refreshLed,_A4
	FNCALL	_refreshLed,_A5
	FNCALL	_refreshLed,_A6
	FNCALL	_refreshLed,_A7
	FNCALL	_refreshLed,_B1
	FNCALL	_refreshLed,_B2
	FNCALL	_refreshLed,_B3
	FNCALL	_refreshLed,_B4
	FNCALL	_refreshLed,_B5
	FNCALL	_refreshLed,_B6
	FNCALL	_refreshLed,_B7
	FNCALL	_refreshLed,_C1
	FNCALL	_refreshLed,_C2
	FNCALL	_refreshLed,_C3
	FNCALL	_refreshLed,_C4
	FNCALL	_refreshLed,_C5
	FNCALL	_refreshLed,_C6
	FNCALL	_refreshLed,_C7
	FNCALL	_refreshLed,_D1
	FNCALL	_refreshLed,_D2
	FNCALL	_refreshLed,_D3
	FNCALL	_refreshLed,_D4
	FNCALL	_refreshLed,_D5
	FNCALL	_refreshLed,_D6
	FNCALL	_refreshLed,_D7
	FNCALL	_refreshLed,_led1
	FNCALL	_refreshLed,_led2
	FNCALL	_refreshLed,_led3
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_batSubMaxTime
	global	_showNumBge
	global	_showNumBShi
	global	_showNumAge
	global	_showNumAShi
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	52

;initializer for _batSubMaxTime
	retlw	0B8h
	retlw	0Bh

	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.h"
	line	39

;initializer for _showNumBge
	retlw	07Fh
	line	38

;initializer for _showNumBShi
	retlw	07Fh
	line	37

;initializer for _showNumAge
	retlw	07Fh
	line	36

;initializer for _showNumAShi
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
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	59
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
	retlw	low(0)
	retlw	071h
	global __end_of_numArray
__end_of_numArray:
	global	_numArray
	global	_workStep
	global	_modeStep
	global	_B_OnOff
	global	_B_MainLoop
	global	_power_ad
	global	_result
	global	_adresult
	global	_chrgMaxData
	global	_count30s
	global	_batSubCount
	global	_count10s
	global	_sleepTime
	global	_R_AIN6_DATA
	global	_R_AIN2_DATA
	global	_batValue
	global	_wait30s
	global	_count1s
	global	_test_adc
	global	_lowBatTime
	global	_chrgTime
	global	_showBatValueAddTime
	global	_overTime
	global	_lowBatFlag
	global	_count900s
	global	_chrgStep
	global	_count2s
	global	_keyTime
	global	_showFlag
	global	_showBatValue
	global	_pwmDuty
	global	_preKeyNum
	global	_keyNum
	global	_chrgFlag
	global	_longPressFlag
	global	_keyCount
	global	_MainTime
	global	_ledCnt
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
	global	_IOCB
_IOCB	set	9
	global	_WPUB
_WPUB	set	8
	global	_PORTB
_PORTB	set	6
	global	_TRISB
_TRISB	set	5
	global	_OPTION_REG
_OPTION_REG	set	1
	global	_RAIE
_RAIE	set	115
	global	_TMR2IF
_TMR2IF	set	105
	global	_RAIF
_RAIF	set	107
	global	_PEIE
_PEIE	set	94
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_TRISB0
_TRISB0	set	40
	global	_TRISB1
_TRISB1	set	41
	global	_TRISB2
_TRISB2	set	42
	global	_TRISB3
_TRISB3	set	43
	global	_TRISB4
_TRISB4	set	44
	global	_TRISB5
_TRISB5	set	45
	global	_TRISB6
_TRISB6	set	46
	global	_TRISB7
_TRISB7	set	47
	global	_ADRESH
_ADRESH	set	153
	global	_ADRESL
_ADRESL	set	152
	global	_ADCON1
_ADCON1	set	150
	global	_ADCON0
_ADCON0	set	149
	global	_IOCA
_IOCA	set	137
	global	_WPUA
_WPUA	set	136
	global	_TRISA
_TRISA	set	133
	global	_PORTA
_PORTA	set	134
	global	_LDO_EN
_LDO_EN	set	1202
	global	_CHS4
_CHS4	set	1206
	global	_ADON
_ADON	set	1192
	global	_GODONE
_GODONE	set	1193
	global	_RA4
_RA4	set	1076
	global	_RA5
_RA5	set	1077
	global	_RA6
_RA6	set	1078
	global	_TRISA5
_TRISA5	set	1069
	global	_TRISA6
_TRISA6	set	1070
	global	_PORTC
_PORTC	set	262
	global	_TRISC
_TRISC	set	261
; #config settings
	file	"C103_8F083_tssop20_.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_B_OnOff:
       ds      1

_B_MainLoop:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_workStep:
       ds      1

_modeStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_power_ad:
       ds      2

_result:
       ds      2

_adresult:
       ds      2

_chrgMaxData:
       ds      2

_count30s:
       ds      2

_batSubCount:
       ds      2

_count10s:
       ds      2

_sleepTime:
       ds      2

_R_AIN6_DATA:
       ds      2

_R_AIN2_DATA:
       ds      2

_batValue:
       ds      2

_wait30s:
       ds      2

_count1s:
       ds      2

_test_adc:
       ds      1

_lowBatTime:
       ds      1

_chrgTime:
       ds      1

_showBatValueAddTime:
       ds      1

_overTime:
       ds      1

_lowBatFlag:
       ds      1

_count900s:
       ds      1

_chrgStep:
       ds      1

_count2s:
       ds      1

_keyTime:
       ds      1

_showFlag:
       ds      1

_showBatValue:
       ds      1

_pwmDuty:
       ds      1

_preKeyNum:
       ds      1

_keyNum:
       ds      1

_chrgFlag:
       ds      1

_longPressFlag:
       ds      1

_keyCount:
       ds      1

_MainTime:
       ds      1

_ledCnt:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	52
_batSubMaxTime:
       ds      2

psect	dataBANK0
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.h"
	line	39
_showNumBge:
       ds      1

psect	dataBANK0
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.h"
	line	38
_showNumBShi:
       ds      1

psect	dataBANK0
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.h"
	line	37
_showNumAge:
       ds      1

psect	dataBANK0
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.h"
	line	36
_showNumAShi:
       ds      1

	file	"C103_8F083_tssop20_.as"
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
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
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

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+02Eh)
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
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_updateLed:	; 1 bytes @ 0x0
??_updateLed:	; 1 bytes @ 0x0
?_refreshLed:	; 1 bytes @ 0x0
??_refreshLed:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_pwmInit:	; 1 bytes @ 0x0
?_pwmStop:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_showCtr:	; 1 bytes @ 0x0
?_checkOutA:	; 1 bytes @ 0x0
?_checkBatValue:	; 1 bytes @ 0x0
?_taskSecond:	; 1 bytes @ 0x0
?_batCtr:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_A1:	; 1 bytes @ 0x0
??_A1:	; 1 bytes @ 0x0
?_A2:	; 1 bytes @ 0x0
??_A2:	; 1 bytes @ 0x0
?_A3:	; 1 bytes @ 0x0
??_A3:	; 1 bytes @ 0x0
?_A4:	; 1 bytes @ 0x0
??_A4:	; 1 bytes @ 0x0
?_A5:	; 1 bytes @ 0x0
??_A5:	; 1 bytes @ 0x0
?_A6:	; 1 bytes @ 0x0
??_A6:	; 1 bytes @ 0x0
?_A7:	; 1 bytes @ 0x0
??_A7:	; 1 bytes @ 0x0
?_B1:	; 1 bytes @ 0x0
??_B1:	; 1 bytes @ 0x0
?_B2:	; 1 bytes @ 0x0
??_B2:	; 1 bytes @ 0x0
?_B3:	; 1 bytes @ 0x0
??_B3:	; 1 bytes @ 0x0
?_B4:	; 1 bytes @ 0x0
??_B4:	; 1 bytes @ 0x0
?_B5:	; 1 bytes @ 0x0
??_B5:	; 1 bytes @ 0x0
?_B6:	; 1 bytes @ 0x0
??_B6:	; 1 bytes @ 0x0
?_B7:	; 1 bytes @ 0x0
??_B7:	; 1 bytes @ 0x0
?_C1:	; 1 bytes @ 0x0
??_C1:	; 1 bytes @ 0x0
?_C2:	; 1 bytes @ 0x0
??_C2:	; 1 bytes @ 0x0
?_C3:	; 1 bytes @ 0x0
??_C3:	; 1 bytes @ 0x0
?_C4:	; 1 bytes @ 0x0
??_C4:	; 1 bytes @ 0x0
?_C5:	; 1 bytes @ 0x0
??_C5:	; 1 bytes @ 0x0
?_C6:	; 1 bytes @ 0x0
??_C6:	; 1 bytes @ 0x0
?_C7:	; 1 bytes @ 0x0
??_C7:	; 1 bytes @ 0x0
?_D1:	; 1 bytes @ 0x0
??_D1:	; 1 bytes @ 0x0
?_D2:	; 1 bytes @ 0x0
??_D2:	; 1 bytes @ 0x0
?_D3:	; 1 bytes @ 0x0
??_D3:	; 1 bytes @ 0x0
?_D4:	; 1 bytes @ 0x0
??_D4:	; 1 bytes @ 0x0
?_D5:	; 1 bytes @ 0x0
??_D5:	; 1 bytes @ 0x0
?_D6:	; 1 bytes @ 0x0
??_D6:	; 1 bytes @ 0x0
?_D7:	; 1 bytes @ 0x0
??_D7:	; 1 bytes @ 0x0
?_led1:	; 1 bytes @ 0x0
??_led1:	; 1 bytes @ 0x0
?_led2:	; 1 bytes @ 0x0
??_led2:	; 1 bytes @ 0x0
?_led3:	; 1 bytes @ 0x0
??_led3:	; 1 bytes @ 0x0
	ds	3
??_Init_System:	; 1 bytes @ 0x3
??_Sleep_Mode:	; 1 bytes @ 0x3
?_ADC_Sample:	; 1 bytes @ 0x3
??_pwmInit:	; 1 bytes @ 0x3
??_pwmStop:	; 1 bytes @ 0x3
??_keyRead:	; 1 bytes @ 0x3
??_chrgCtr:	; 1 bytes @ 0x3
??_taskSecond:	; 1 bytes @ 0x3
??_batCtr:	; 1 bytes @ 0x3
?___lbdiv:	; 1 bytes @ 0x3
?___lbmod:	; 1 bytes @ 0x3
	global	?___wmul
?___wmul:	; 2 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x3
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x3
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x3
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x3
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x3
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x3
	ds	1
??_ADC_Sample:	; 1 bytes @ 0x4
??_keyCtr:	; 1 bytes @ 0x4
??___lbdiv:	; 1 bytes @ 0x4
??___lbmod:	; 1 bytes @ 0x4
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x4
	ds	1
	global	keyCtr@keyStatus
keyCtr@keyStatus:	; 1 bytes @ 0x5
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x5
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x5
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x5
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x5
	ds	1
	global	keyCtr@keyClick
keyCtr@keyClick:	; 1 bytes @ 0x6
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x6
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x6
	ds	1
??___wmul:	; 1 bytes @ 0x7
??___lwdiv:	; 1 bytes @ 0x7
??___lwmod:	; 1 bytes @ 0x7
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x7
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x7
	ds	1
??_showCtr:	; 1 bytes @ 0x8
??_checkOutA:	; 1 bytes @ 0x8
??_checkBatValue:	; 1 bytes @ 0x8
??_main:	; 1 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x0
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	1
??_workCtr:	; 1 bytes @ 0x2
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x2
	ds	1
	global	ADC_Sample@adsum
ADC_Sample@adsum:	; 4 bytes @ 0x3
	ds	4
	global	ADC_Sample@admin
ADC_Sample@admin:	; 2 bytes @ 0x7
	ds	2
	global	ADC_Sample@admax
ADC_Sample@admax:	; 2 bytes @ 0x9
	ds	2
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0xB
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    12
;!    Data        6
;!    BSS         48
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      11
;!    BANK0            80     13      66
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _workCtr->___lwmod
;!    _showCtr->___lbmod
;!    _keyCtr->_keyRead
;!    _checkOutA->_ADC_Sample
;!    _checkBatValue->_ADC_Sample
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _workCtr->___wmul
;!    _checkOutA->_ADC_Sample
;!    _checkBatValue->_ADC_Sample
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
;! (0) _main                                                 0     0      0    3079
;!                        _Init_System
;!                             _batCtr
;!                      _checkBatValue
;!                          _checkOutA
;!                            _chrgCtr
;!                             _keyCtr
;!                            _showCtr
;!                         _taskSecond
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              2     2      0     531
;!                                              2 BANK0      2     2      0
;!                         _Sleep_Mode
;!                            ___lwmod
;!                             ___wmul
;!                            _pwmInit
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (2) _pwmStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwmInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     266
;!                                              3 COMMON     4     0      4
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     265
;!                                              3 COMMON     5     1      4
;! ---------------------------------------------------------------------------------
;! (2) _Sleep_Mode                                           0     0      0       0
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (3) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _taskSecond                                           2     2      0       0
;!                                              3 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _showCtr                                              0     0      0     533
;!                            ___lbdiv
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     265
;!                                              3 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     268
;!                                              3 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               3     3      0     244
;!                                              4 COMMON     3     3      0
;!                            _keyRead
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      88
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkOutA                                            0     0      0     635
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (1) _checkBatValue                                        0     0      0    1136
;!                         _ADC_Sample
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     501
;!                                              3 COMMON     4     0      4
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                          18    17      1     635
;!                                              3 COMMON     5     4      1
;!                                              0 BANK0     13    13      0
;! ---------------------------------------------------------------------------------
;! (1) _batCtr                                               2     2      0       0
;!                                              3 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _Isr_Timer                                            3     3      0       0
;!                                              0 COMMON     3     3      0
;!                          _updateLed
;! ---------------------------------------------------------------------------------
;! (5) _updateLed                                            0     0      0       0
;!                         _refreshLed
;! ---------------------------------------------------------------------------------
;! (6) _refreshLed                                           0     0      0       0
;!                                 _A1
;!                                 _A2
;!                                 _A3
;!                                 _A4
;!                                 _A5
;!                                 _A6
;!                                 _A7
;!                                 _B1
;!                                 _B2
;!                                 _B3
;!                                 _B4
;!                                 _B5
;!                                 _B6
;!                                 _B7
;!                                 _C1
;!                                 _C2
;!                                 _C3
;!                                 _C4
;!                                 _C5
;!                                 _C6
;!                                 _C7
;!                                 _D1
;!                                 _D2
;!                                 _D3
;!                                 _D4
;!                                 _D5
;!                                 _D6
;!                                 _D7
;!                               _led1
;!                               _led2
;!                               _led3
;! ---------------------------------------------------------------------------------
;! (7) _led3                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _led2                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _led1                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _D7                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _D6                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _D5                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _D4                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _D3                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _D2                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _D1                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _C7                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _C6                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _C5                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _C4                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _C3                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _C2                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _C1                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _B7                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _B6                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _B5                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _B4                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _B3                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _B2                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _B1                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _A7                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _A6                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _A5                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _A4                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _A3                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _A2                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _A1                                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_System
;!   _batCtr
;!   _checkBatValue
;!     _ADC_Sample
;!     ___lwdiv
;!   _checkOutA
;!     _ADC_Sample
;!   _chrgCtr
;!   _keyCtr
;!     _keyRead
;!   _showCtr
;!     ___lbdiv
;!     ___lbmod
;!   _taskSecond
;!   _workCtr
;!     _Sleep_Mode
;!       _Init_System
;!     ___lwmod
;!     ___wmul
;!     _pwmInit
;!     _pwmStop
;!
;! _Isr_Timer (ROOT)
;!   _updateLed
;!     _refreshLed
;!       _A1
;!       _A2
;!       _A3
;!       _A4
;!       _A5
;!       _A6
;!       _A7
;!       _B1
;!       _B2
;!       _B3
;!       _B4
;!       _B5
;!       _B6
;!       _B7
;!       _C1
;!       _C2
;!       _C3
;!       _C4
;!       _C5
;!       _C6
;!       _C7
;!       _D1
;!       _D2
;!       _D3
;!       _D4
;!       _D5
;!       _D6
;!       _D7
;!       _led1
;!       _led2
;!       _led3
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               50      0       0       7        0.0%
;!BITBANK2            50      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      D      42       4       82.5%
;!BITBANK0            50      0       0       3        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      8       B       1       78.6%
;!BITCOMMON            E      0       1       0        7.1%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      4D       9        0.0%
;!ABS                  0      0      4D       8        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 872 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Init_System
;;		_batCtr
;;		_checkBatValue
;;		_checkOutA
;;		_chrgCtr
;;		_keyCtr
;;		_showCtr
;;		_taskSecond
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	872
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	872
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	874
	
l4615:	
;main.c: 874: Init_System();
	fcall	_Init_System
	line	876
	
l4617:	
;main.c: 876: firstTime = 200;
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	880
	
l4619:	
;main.c: 878: {
;main.c: 880: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u3531
	goto	u3530
u3531:
	goto	l4619
u3530:
	line	882
	
l4621:	
;main.c: 881: {
;main.c: 882: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	883
# 883 "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
clrwdt ;# 
psect	maintext
	line	884
	
l4623:	
;main.c: 884: if(chrgFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l1153
u3540:
	line	886
	
l4625:	
;main.c: 885: {
;main.c: 886: keyCtr();
	fcall	_keyCtr
	line	887
	
l1153:	
	line	888
;main.c: 887: }
;main.c: 888: checkBatValue();
	fcall	_checkBatValue
	line	889
;main.c: 889: workCtr();
	fcall	_workCtr
	line	890
;main.c: 890: chrgCtr();
	fcall	_chrgCtr
	line	891
;main.c: 891: batCtr();
	fcall	_batCtr
	line	892
;main.c: 892: taskSecond();
	fcall	_taskSecond
	line	893
	
l4627:	
;main.c: 893: if(firstTime == 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l4631
u3550:
	line	895
	
l4629:	
;main.c: 894: {
;main.c: 895: showCtr();
	fcall	_showCtr
	line	897
	
l4631:	
;main.c: 896: }
;main.c: 897: checkOutA();
	fcall	_checkOutA
	goto	l4619
	global	start
	ljmp	start
	opt stack 0
	line	902
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 470 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Sleep_Mode
;;		___lwmod
;;		___wmul
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	470
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	470
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 1
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	472
	
l4479:	
;main.c: 472: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l4501
u3270:
	line	474
	
l4481:	
;main.c: 473: {
;main.c: 474: firstTime--;
	decf	(_firstTime),f
	line	475
	
l4483:	
;main.c: 475: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	476
	
l4485:	
;main.c: 476: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	477
	
l4487:	
;main.c: 477: if(firstTime < 120 && showBatValue < batValue)
	movlw	low(078h)
	subwf	(_firstTime),w
	skipnc
	goto	u3281
	goto	u3280
u3281:
	goto	l4493
u3280:
	
l4489:	
	movf	(_showBatValue),w
	movwf	(??_workCtr+0)+0
	clrf	(??_workCtr+0)+0+1
	movf	(_batValue+1),w
	subwf	1+(??_workCtr+0)+0,w
	skipz
	goto	u3295
	movf	(_batValue),w
	subwf	0+(??_workCtr+0)+0,w
u3295:
	skipnc
	goto	u3291
	goto	u3290
u3291:
	goto	l4493
u3290:
	line	479
	
l4491:	
;main.c: 478: {
;main.c: 479: showBatValue++;
	incf	(_showBatValue),f
	line	481
	
l4493:	
;main.c: 480: }
;main.c: 481: showNumAShi = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumAShi)
	line	482
	
l4495:	
;main.c: 482: showNumAge = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumAge)
	line	483
	
l4497:	
;main.c: 483: showNumBShi = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumBShi)
	line	484
	
l4499:	
;main.c: 484: showNumBge = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumBge)
	line	485
;main.c: 485: }
	goto	l1067
	line	486
	
l4501:	
;main.c: 486: else if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l4521
u3300:
	
l4503:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3311
	goto	u3310
u3311:
	goto	l4521
u3310:
	
l4505:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l4521
u3320:
	
l4507:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l4521
u3330:
	line	488
	
l4509:	
;main.c: 487: {
;main.c: 488: showFlag = 0;
	clrf	(_showFlag)
	line	489
	
l4511:	
;main.c: 489: PORTA |= 0x10;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(4/8),(4)&7	;volatile
	line	490
;main.c: 490: count900s = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_count900s)
	line	491
	
l4513:	
;main.c: 491: pwmStop();
	fcall	_pwmStop
	line	492
	
l4515:	
;main.c: 492: if(++sleepTime > 200)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_sleepTime),f
	skipnz
	incf	(_sleepTime+1),f
	movlw	0
	subwf	((_sleepTime+1)),w
	movlw	0C9h
	skipnz
	subwf	((_sleepTime)),w
	skipc
	goto	u3341
	goto	u3340
u3341:
	goto	l1067
u3340:
	line	494
	
l4517:	
;main.c: 493: {
;main.c: 494: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	495
	
l4519:	
;main.c: 495: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l1067
	line	496
	
l1047:	
	line	497
;main.c: 496: }
;main.c: 497: }
	goto	l1067
	line	500
	
l4521:	
;main.c: 498: else
;main.c: 499: {
;main.c: 500: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	501
	
l4523:	
;main.c: 501: if(modeStep == 1)
		decf	((_modeStep)),w
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l4531
u3350:
	line	503
	
l4525:	
;main.c: 502: {
;main.c: 503: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	504
;main.c: 504: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	505
	
l4527:	
;main.c: 505: pwmInit();
	fcall	_pwmInit
	line	506
	
l4529:	
;main.c: 506: PWMD1L= 99 + workStep;
	movf	(_workStep),w
	addlw	063h
	movwf	(26)	;volatile
	line	507
;main.c: 507: }
	goto	l1067
	line	508
	
l4531:	
;main.c: 508: else if(modeStep == 2)
		movlw	2
	xorwf	((_modeStep)),w
	btfss	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l4555
u3360:
	line	510
	
l4533:	
;main.c: 509: {
;main.c: 510: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	511
;main.c: 511: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	512
	
l4535:	
;main.c: 512: if(++count10s >= 600)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_count10s),f
	skipnz
	incf	(_count10s+1),f
	movlw	02h
	subwf	((_count10s+1)),w
	movlw	058h
	skipnz
	subwf	((_count10s)),w
	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l4539
u3370:
	line	514
	
l4537:	
;main.c: 513: {
;main.c: 514: count10s = 0;
	clrf	(_count10s)
	clrf	(_count10s+1)
	line	516
	
l4539:	
;main.c: 515: }
;main.c: 516: if(count10s % 3 == 0)
	movlw	03h
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_count10s+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_count10s),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	((0+(?___lwmod))),w
iorwf	((1+(?___lwmod))),w
	btfss	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l4551
u3380:
	line	518
	
l4541:	
;main.c: 517: {
;main.c: 518: if(count10s < 400)
	movlw	01h
	subwf	(_count10s+1),w
	movlw	090h
	skipnz
	subwf	(_count10s),w
	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l4547
u3390:
	line	520
	
l4543:	
;main.c: 519: {
;main.c: 520: if(pwmDuty < (169 + (workStep*10)))
	movf	(_workStep),w
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlw	0Ah
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addlw	low(0A9h)
	movwf	(??_workCtr+0)+0
	movf	(1+(?___wmul)),w
	skipnc
	addlw	1
	addlw	high(0A9h)
	movwf	1+(??_workCtr+0)+0
	movf	1+(??_workCtr+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u3405
	movf	0+(??_workCtr+0)+0,w
	subwf	(_pwmDuty),w
u3405:

	skipnc
	goto	u3401
	goto	u3400
u3401:
	goto	l4551
u3400:
	line	522
	
l4545:	
;main.c: 521: {
;main.c: 522: pwmDuty++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_pwmDuty),f
	goto	l4551
	line	527
	
l4547:	
;main.c: 525: else
;main.c: 526: {
;main.c: 527: if(pwmDuty > 69)
	movlw	low(046h)
	subwf	(_pwmDuty),w
	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l4551
u3410:
	line	529
	
l4549:	
;main.c: 528: {
;main.c: 529: pwmDuty--;
	decf	(_pwmDuty),f
	line	533
	
l4551:	
;main.c: 530: }
;main.c: 531: }
;main.c: 532: }
;main.c: 533: pwmInit();
	fcall	_pwmInit
	line	534
	
l4553:	
;main.c: 534: PWMD1L = pwmDuty;
	movf	(_pwmDuty),w
	movwf	(26)	;volatile
	line	535
;main.c: 535: }
	goto	l1067
	line	536
	
l4555:	
;main.c: 536: else if(modeStep == 3)
		movlw	3
	xorwf	((_modeStep)),w
	btfss	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l4573
u3420:
	line	538
	
l4557:	
;main.c: 537: {
;main.c: 538: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	539
;main.c: 539: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	540
	
l4559:	
;main.c: 540: if(++count10s > 125)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_count10s),f
	skipnz
	incf	(_count10s+1),f
	movlw	0
	subwf	((_count10s+1)),w
	movlw	07Eh
	skipnz
	subwf	((_count10s)),w
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l4563
u3430:
	line	542
	
l4561:	
;main.c: 541: {
;main.c: 542: count10s = 0;
	clrf	(_count10s)
	clrf	(_count10s+1)
	line	544
	
l4563:	
;main.c: 543: }
;main.c: 544: if(count10s < 100)
	movlw	0
	subwf	(_count10s+1),w
	movlw	064h
	skipnz
	subwf	(_count10s),w
	skipnc
	goto	u3441
	goto	u3440
u3441:
	goto	l4569
u3440:
	line	546
	
l4565:	
;main.c: 545: {
;main.c: 546: pwmInit();
	fcall	_pwmInit
	line	547
	
l4567:	
;main.c: 547: PWMD1L= 139 + (workStep*20);
	swapf	(_workStep),w
	andlw	0f0h
	movwf	(??_workCtr+0)+0
	movf	(_workStep),w
	addwf	(_workStep),w
	addwf	(??_workCtr+0)+0,f
	addwf	(??_workCtr+0)+0,f
	movf	(??_workCtr+0)+0,w
	addlw	08Bh
	movwf	(26)	;volatile
	line	548
;main.c: 548: }
	goto	l1067
	line	549
	
l4569:	
;main.c: 549: else if(count10s < 125)
	movlw	0
	subwf	(_count10s+1),w
	movlw	07Dh
	skipnz
	subwf	(_count10s),w
	skipnc
	goto	u3451
	goto	u3450
u3451:
	goto	l1047
u3450:
	line	551
	
l4571:	
;main.c: 550: {
;main.c: 551: pwmStop();
	fcall	_pwmStop
	goto	l1067
	line	557
	
l4573:	
;main.c: 555: else
;main.c: 556: {
;main.c: 557: pwmStop();
	fcall	_pwmStop
	line	558
	
l4575:	
;main.c: 558: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	559
	
l4577:	
;main.c: 559: if(chrgFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l4581
u3460:
	line	561
	
l4579:	
;main.c: 560: {
;main.c: 561: showFlag = 1;
	clrf	(_showFlag)
	incf	(_showFlag),f
	line	562
;main.c: 562: }
	goto	l1067
	line	565
	
l4581:	
;main.c: 563: else
;main.c: 564: {
;main.c: 565: showFlag = 0;
	clrf	(_showFlag)
	line	571
	
l1067:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 306 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	306
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	306
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 2
; Regs used in _pwmStop: [status,2]
	line	308
	
l3727:	
;main.c: 308: PWMD1L = 0;
	clrf	(26)	;volatile
	line	309
	
l3729:	
;main.c: 309: PWMCON0 &= 0xFD;
	bcf	(21)+(1/8),(1)&7	;volatile
	line	310
	
l3731:	
;main.c: 310: PORTA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(1/8),(1)&7	;volatile
	line	311
	
l987:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 294 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	294
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	294
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 2
; Regs used in _pwmInit: [wreg+status,2+status,0]
	line	297
	
l3717:	
;main.c: 297: PWMTH = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(24)	;volatile
	line	298
	
l3719:	
;main.c: 298: PWMTL = 200;
	movlw	low(0C8h)
	movwf	(23)	;volatile
	line	299
	
l3721:	
;main.c: 299: PWMD01H = 0x00;
	clrf	(30)	;volatile
	line	300
;main.c: 300: PWMD1L = 32;
	movlw	low(020h)
	movwf	(26)	;volatile
	line	301
;main.c: 301: PWMCON1 = 0xC0;
	movlw	low(0C0h)
	movwf	(22)	;volatile
	line	302
	
l3723:	
;main.c: 302: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	303
	
l3725:	
;main.c: 303: PWMCON0 |= 0x62;
	movlw	low(062h)
	iorwf	(21),f	;volatile
	line	304
	
l984:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    3[COMMON] unsigned int 
;;  multiplicand    2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    0[BANK0 ] unsigned int 
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
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       2       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul16.c"
	line	15
global __ptext4
__ptext4:	;psect for function ___wmul
psect	text4
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l4437:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l4439:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l4443
u3210:
	line	46
	
l4441:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	47
	
l4443:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	48
	
l4445:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	49
	
l4447:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l4439
u3220:
	line	52
	
l4449:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l2207:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___lwmod
psect	text5
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 2
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l3977:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l3993
u2350:
	line	14
	
l3979:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l3983
	line	16
	
l3981:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l3983:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l3981
u2360:
	line	20
	
l3985:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2375
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2375:
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l3989
u2370:
	line	21
	
l3987:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l3989:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l3991:	
	decfsz	(___lwmod@counter),f
	goto	u2381
	goto	u2380
u2381:
	goto	l3985
u2380:
	line	25
	
l3993:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l2554:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 156 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Init_System
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	156
global __ptext6
__ptext6:	;psect for function _Sleep_Mode
psect	text6
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	156
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 1
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	158
	
l3609:	
;main.c: 158: INTCON = 0;
	clrf	(11)	;volatile
	line	160
;main.c: 160: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	162
	
l3611:	
;main.c: 162: TRISA = 0B10001101;
	movlw	low(08Dh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	163
	
l3613:	
;main.c: 163: PORTA = 0B00010000;
	movlw	low(010h)
	movwf	(134)^080h	;volatile
	line	164
;main.c: 164: WPUA = 0B00000000;
	clrf	(136)^080h	;volatile
	line	166
;main.c: 166: TRISB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	167
;main.c: 167: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	168
;main.c: 168: WPUB = 0B00000000;
	clrf	(8)	;volatile
	line	170
	
l3615:	
;main.c: 170: TRISC = 0B00000010;
	movlw	low(02h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(261)^0100h	;volatile
	line	171
	
l3617:	
;main.c: 171: PORTC = 0B00000000;
	clrf	(262)^0100h	;volatile
	line	173
	
l3619:	
;main.c: 173: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	174
	
l3621:	
;main.c: 174: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	176
	
l3623:	
;main.c: 176: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	178
	
l3625:	
;main.c: 178: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	179
;main.c: 179: T2CON = 0;
	clrf	(19)	;volatile
	line	180
	
l3627:	
;main.c: 180: IOCA = 0B10000001;
	movlw	low(081h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	181
	
l3629:	
;main.c: 181: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	183
	
l3631:	
;main.c: 183: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	184
	
l3633:	
;main.c: 184: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	186
	
l3635:	
;main.c: 186: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	189
;main.c: 189: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	190
	
l3637:	
;main.c: 190: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	191
;main.c: 191: PORTB;
	movf	(6),w	;volatile
	line	193
# 193 "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
clrwdt ;# 
	line	195
# 195 "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
sleep ;# 
	line	197
# 197 "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
nop ;# 
	line	198
# 198 "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
clrwdt ;# 
psect	text6
	line	199
	
l3639:	
;main.c: 199: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u1611
	goto	u1610
u1611:
	goto	l3643
u1610:
	
l3641:	
	bcf	(107/8),(107)&7	;volatile
	line	201
	
l3643:	
;main.c: 201: Init_System();
	fcall	_Init_System
	line	202
	
l962:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 74 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Sleep_Mode
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	74
global __ptext7
__ptext7:	;psect for function _Init_System
psect	text7
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	74
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 1
; Regs used in _Init_System: [wreg+status,2]
	line	76
	
l3517:	
# 76 "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
nop ;# 
	line	77
# 77 "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
clrwdt ;# 
psect	text7
	line	78
	
l3519:	
;main.c: 78: INTCON = 0;
	clrf	(11)	;volatile
	line	79
	
l3521:	
;main.c: 79: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	80
	
l3523:	
;main.c: 80: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	85
;main.c: 85: TRISA = 0x8D;
	movlw	low(08Dh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	86
;main.c: 86: PORTA = 0x10;
	movlw	low(010h)
	movwf	(134)^080h	;volatile
	line	87
	
l3525:	
;main.c: 87: TRISB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	88
	
l3527:	
;main.c: 88: PORTB = 0;
	clrf	(6)	;volatile
	line	89
	
l3529:	
;main.c: 89: WPUB = 0x00;
	clrf	(8)	;volatile
	line	90
	
l3531:	
;main.c: 90: TRISC = 0x02;
	movlw	low(02h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(261)^0100h	;volatile
	line	91
;main.c: 91: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	93
	
l3533:	
;main.c: 93: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	94
	
l3535:	
;main.c: 94: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	95
	
l3537:	
;main.c: 95: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	97
	
l3539:	
;main.c: 97: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	98
	
l3541:	
;main.c: 98: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	99
	
l3543:	
;main.c: 99: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	100
	
l3545:	
;main.c: 100: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	101
	
l945:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_taskSecond

;; *************** function _taskSecond *****************
;; Defined at:
;;		line 780 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	780
global __ptext8
__ptext8:	;psect for function _taskSecond
psect	text8
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	780
	global	__size_of_taskSecond
	__size_of_taskSecond	equ	__end_of_taskSecond-_taskSecond
	
_taskSecond:	
;incstack = 0
	opt	stack 3
; Regs used in _taskSecond: [wreg+status,2+status,0]
	line	782
	
l4301:	
;main.c: 782: if(wait30s == 1)
		decf	((_wait30s)),w
iorwf	((_wait30s+1)),w
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l1134
u3010:
	line	784
	
l4303:	
;main.c: 783: {
;main.c: 784: wait30s = 0;
	clrf	(_wait30s)
	clrf	(_wait30s+1)
	line	785
	
l4305:	
;main.c: 785: if(modeStep > 0)
	movf	((_modeStep)),w
	btfsc	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l4311
u3020:
	line	787
	
l4307:	
;main.c: 786: {
;main.c: 787: if(++count900s > 30)
	movlw	low(01Fh)
	incf	(_count900s),f
	subwf	((_count900s)),w
	skipc
	goto	u3031
	goto	u3030
u3031:
	goto	l4313
u3030:
	line	789
	
l4309:	
;main.c: 788: {
;main.c: 789: count900s = 0;
	clrf	(_count900s)
	line	790
;main.c: 790: modeStep = 0;
	clrf	(_modeStep)
	line	791
;main.c: 791: workStep = 0;
	clrf	(_workStep)
	line	792
;main.c: 792: count900s = 0;
	clrf	(_count900s)
	goto	l4313
	line	797
	
l4311:	
;main.c: 795: else
;main.c: 796: {
;main.c: 797: count900s = 0;
	clrf	(_count900s)
	line	800
	
l4313:	
;main.c: 798: }
;main.c: 800: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l1134
u3040:
	line	802
	
l4315:	
;main.c: 801: {
;main.c: 802: if(++showBatValueAddTime > 4 && showBatValue < 99)
	movlw	low(05h)
	incf	(_showBatValueAddTime),f
	subwf	((_showBatValueAddTime)),w
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l4323
u3050:
	
l4317:	
	movlw	low(063h)
	subwf	(_showBatValue),w
	skipnc
	goto	u3061
	goto	u3060
u3061:
	goto	l4323
u3060:
	line	804
	
l4319:	
;main.c: 803: {
;main.c: 804: showBatValueAddTime = 0;
	clrf	(_showBatValueAddTime)
	line	805
	
l4321:	
;main.c: 805: showBatValue++;
	incf	(_showBatValue),f
	line	807
	
l4323:	
;main.c: 806: }
;main.c: 807: if(showBatValue < batValue)
	movf	(_showBatValue),w
	movwf	(??_taskSecond+0)+0
	clrf	(??_taskSecond+0)+0+1
	movf	(_batValue+1),w
	subwf	1+(??_taskSecond+0)+0,w
	skipz
	goto	u3075
	movf	(_batValue),w
	subwf	0+(??_taskSecond+0)+0,w
u3075:
	skipnc
	goto	u3071
	goto	u3070
u3071:
	goto	l4331
u3070:
	line	809
	
l4325:	
;main.c: 808: {
;main.c: 809: if(++chrgTime > 3)
	movlw	low(04h)
	incf	(_chrgTime),f
	subwf	((_chrgTime)),w
	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l1129
u3080:
	line	811
	
l4327:	
;main.c: 810: {
;main.c: 811: chrgTime = 0;
	clrf	(_chrgTime)
	line	812
;main.c: 812: showBatValueAddTime = 0;
	clrf	(_showBatValueAddTime)
	line	813
	
l4329:	
;main.c: 813: showBatValue++;
	incf	(_showBatValue),f
	goto	l1134
	line	819
	
l4331:	
;main.c: 817: else
;main.c: 818: {
;main.c: 819: chrgTime = 0;
	clrf	(_chrgTime)
	goto	l1134
	line	821
	
l1129:	
	line	823
	
l1134:	
	return
	opt stack 0
GLOBAL	__end_of_taskSecond
	__end_of_taskSecond:
	signat	_taskSecond,89
	global	_showCtr

;; *************** function _showCtr *****************
;; Defined at:
;;		line 627 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___lbdiv
;;		___lbmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	627
global __ptext9
__ptext9:	;psect for function _showCtr
psect	text9
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	627
	global	__size_of_showCtr
	__size_of_showCtr	equ	__end_of_showCtr-_showCtr
	
_showCtr:	
;incstack = 0
	opt	stack 2
; Regs used in _showCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	630
	
l4209:	
;main.c: 630: if(showBatValue >= 99)
	movlw	low(063h)
	subwf	(_showBatValue),w
	skipc
	goto	u2871
	goto	u2870
u2871:
	goto	l4213
u2870:
	line	632
	
l4211:	
;main.c: 631: {
;main.c: 632: showNumAShi = 0x6F;
	movlw	low(06Fh)
	movwf	(_showNumAShi)
	line	633
;main.c: 633: showNumAge = 0x6F;
	movlw	low(06Fh)
	movwf	(_showNumAge)
	line	634
;main.c: 634: }
	goto	l4215
	line	637
	
l4213:	
;main.c: 635: else
;main.c: 636: {
;main.c: 637: showNumAShi = numArray[(showBatValue / 10)];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_showBatValue),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	638
;main.c: 638: showNumAge = numArray[(showBatValue % 10)];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_showBatValue),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAge)
	line	640
	
l4215:	
;main.c: 639: }
;main.c: 640: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l4251
u2880:
	line	642
	
l4217:	
;main.c: 641: {
;main.c: 642: if(showBatValue >= 99)
	movlw	low(063h)
	subwf	(_showBatValue),w
	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l4221
u2890:
	line	644
	
l4219:	
;main.c: 643: {
;main.c: 644: showNumBShi = 0x39;
	movlw	low(039h)
	movwf	(_showNumBShi)
	line	645
;main.c: 645: showNumBge = 0x0F;
	movlw	low(0Fh)
	movwf	(_showNumBge)
	line	646
;main.c: 646: }
	goto	l1103
	line	649
	
l4221:	
;main.c: 647: else
;main.c: 648: {
;main.c: 649: if(++count2s >= 50)
	movlw	low(032h)
	incf	(_count2s),f
	subwf	((_count2s)),w
	skipc
	goto	u2901
	goto	u2900
u2901:
	goto	l4249
u2900:
	line	651
	
l4223:	
;main.c: 650: {
;main.c: 651: count2s = 0;
	clrf	(_count2s)
	line	652
	
l4225:	
;main.c: 652: if(++chrgStep >= 8)
	movlw	low(08h)
	incf	(_chrgStep),f
	subwf	((_chrgStep)),w
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l4249
u2910:
	line	654
	
l4227:	
;main.c: 653: {
;main.c: 654: chrgStep = 0;
	clrf	(_chrgStep)
	goto	l4249
	line	659
;main.c: 658: {
;main.c: 659: case 0:
	
l1090:	
	line	660
;main.c: 660: showNumBShi = 0x01;
	clrf	(_showNumBShi)
	incf	(_showNumBShi),f
	line	661
	
l4229:	
;main.c: 661: showNumBge = 0x00;
	clrf	(_showNumBge)
	line	662
;main.c: 662: break;
	goto	l1103
	line	663
;main.c: 663: case 1:
	
l1092:	
	line	664
;main.c: 664: showNumBShi = 0x01;
	clrf	(_showNumBShi)
	incf	(_showNumBShi),f
	line	665
;main.c: 665: showNumBge = 0x01;
	clrf	(_showNumBge)
	incf	(_showNumBge),f
	line	666
;main.c: 666: break;
	goto	l1103
	line	667
;main.c: 667: case 2:
	
l1093:	
	line	668
;main.c: 668: showNumBShi = 0x01;
	clrf	(_showNumBShi)
	incf	(_showNumBShi),f
	line	669
	
l4231:	
;main.c: 669: showNumBge = 0x03;
	movlw	low(03h)
	movwf	(_showNumBge)
	line	670
;main.c: 670: break;
	goto	l1103
	line	671
;main.c: 671: case 3:
	
l1094:	
	line	672
;main.c: 672: showNumBShi = 0x01;
	clrf	(_showNumBShi)
	incf	(_showNumBShi),f
	line	673
	
l4233:	
;main.c: 673: showNumBge = 0x07;
	movlw	low(07h)
	movwf	(_showNumBge)
	line	674
;main.c: 674: break;
	goto	l1103
	line	675
;main.c: 675: case 4:
	
l1095:	
	line	676
;main.c: 676: showNumBShi = 0x01;
	clrf	(_showNumBShi)
	incf	(_showNumBShi),f
	line	677
	
l4235:	
;main.c: 677: showNumBge = 0x0F;
	movlw	low(0Fh)
	movwf	(_showNumBge)
	line	678
;main.c: 678: break;
	goto	l1103
	line	680
	
l4237:	
;main.c: 680: showNumBShi = 0x09;
	movlw	low(09h)
	movwf	(_showNumBShi)
	line	681
;main.c: 681: showNumBge = 0x0F;
	movlw	low(0Fh)
	movwf	(_showNumBge)
	line	682
;main.c: 682: break;
	goto	l1103
	line	684
	
l4239:	
;main.c: 684: showNumBShi = 0x19;
	movlw	low(019h)
	movwf	(_showNumBShi)
	line	685
;main.c: 685: showNumBge = 0x0F;
	movlw	low(0Fh)
	movwf	(_showNumBge)
	line	686
;main.c: 686: break;
	goto	l1103
	line	692
	
l4243:	
;main.c: 692: showNumBShi = 0x79;
	movlw	low(079h)
	movwf	(_showNumBShi)
	line	693
;main.c: 693: showNumBge = 0x0F;
	movlw	low(0Fh)
	movwf	(_showNumBge)
	line	694
;main.c: 694: break;
	goto	l1103
	line	696
	
l4245:	
;main.c: 696: showNumBShi = 0x79;
	movlw	low(079h)
	movwf	(_showNumBShi)
	line	697
;main.c: 697: showNumBge = 0x4F;
	movlw	low(04Fh)
	movwf	(_showNumBge)
	line	698
;main.c: 698: break;
	goto	l1103
	line	657
	
l4249:	
	movf	(_chrgStep),w
	; Switch size 1, requested type "space"
; Number of cases is 10, Range of values is 0 to 9
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           27     7 (fixed)
; simple_byte           31    16 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	10
	subwf	fsr,w
skipnc
goto l1086
movlw high(S4673)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S4673)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S4673:
	ljmp	l1090
	ljmp	l1092
	ljmp	l1093
	ljmp	l1094
	ljmp	l1095
	ljmp	l4237
	ljmp	l4239
	ljmp	l4219
	ljmp	l4243
	ljmp	l4245
psect	text9

	line	703
	
l1086:	
	line	705
;main.c: 703: }
;main.c: 705: }
	goto	l1103
	line	708
	
l4251:	
;main.c: 706: else
;main.c: 707: {
;main.c: 708: showNumBShi = numArray[workStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_workStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumBShi)
	line	709
;main.c: 709: showNumBge = numArray[workStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_workStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumBge)
	line	711
	
l1103:	
	return
	opt stack 0
GLOBAL	__end_of_showCtr
	__end_of_showCtr:
	signat	_showCtr,89
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_showCtr
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
global __ptext10
__ptext10:	;psect for function ___lbmod
psect	text10
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
;incstack = 0
	opt	stack 2
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	movwf	(___lbmod@dividend)
	line	9
	
l3933:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3935:	
	clrf	(___lbmod@rem)
	line	12
	
l3937:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2285:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2285
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3939:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3941:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l3945
u2290:
	line	15
	
l3943:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3945:	
	decfsz	(___lbmod@counter),f
	goto	u2301
	goto	u2300
u2301:
	goto	l3937
u2300:
	line	17
	
l3947:	
	movf	(___lbmod@rem),w
	line	18
	
l2476:	
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_showCtr
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
global __ptext11
__ptext11:	;psect for function ___lbdiv
psect	text11
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	movwf	(___lbdiv@dividend)
	line	9
	
l3909:	
	clrf	(___lbdiv@quotient)
	line	10
	
l3911:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u2241
	goto	u2240
u2241:
	goto	l3929
u2240:
	line	11
	
l3913:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l3917
	
l2465:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l3915:	
	incf	(___lbdiv@counter),f
	line	12
	
l3917:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l2465
u2250:
	line	16
	
l2467:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l3919:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l3925
u2260:
	line	19
	
l3921:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l3923:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l3925:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l3927:	
	decfsz	(___lbdiv@counter),f
	goto	u2271
	goto	u2270
u2271:
	goto	l2467
u2270:
	line	25
	
l3929:	
	movf	(___lbdiv@quotient),w
	line	26
	
l2470:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 377 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  keyClick        1    6[COMMON] unsigned char 
;;  keyStatus       1    5[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_keyRead
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	377
global __ptext12
__ptext12:	;psect for function _keyCtr
psect	text12
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	377
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 2
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	379
	
l4009:	
;main.c: 379: unsigned char keyStatus = (0x01 & PORTA) | (0x02 & PORTC);
	movlw	low(02h)
	bsf	status, 6	;RP1=1, select bank2
	andwf	(262)^0100h,w	;volatile
	movwf	(??_keyCtr+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(134)^080h,w	;volatile
	andlw	01h
	iorwf	0+(??_keyCtr+0)+0,w
	movwf	(keyCtr@keyStatus)
	line	380
	
l4011:	
;main.c: 380: unsigned char keyClick = keyRead(keyStatus);
	movf	(keyCtr@keyStatus),w
	fcall	_keyRead
	movwf	(keyCtr@keyClick)
	line	382
	
l4013:	
;main.c: 382: if(keyNum == 1)
		decf	((_keyNum)),w
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l4039
u2400:
	line	384
	
l4015:	
;main.c: 383: {
;main.c: 384: if(keyClick == 1)
		decf	((keyCtr@keyClick)),w
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l4031
u2410:
	line	386
	
l4017:	
;main.c: 385: {
;main.c: 386: if(modeStep == 2 || modeStep == 3)
		movlw	2
	xorwf	((_modeStep)),w
	btfsc	status,2
	goto	u2421
	goto	u2420
u2421:
	goto	l4021
u2420:
	
l4019:	
		movlw	3
	xorwf	((_modeStep)),w
	btfss	status,2
	goto	u2431
	goto	u2430
u2431:
	goto	l4025
u2430:
	line	388
	
l4021:	
;main.c: 387: {
;main.c: 388: if(++workStep > 3)
	movlw	low(04h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2441
	goto	u2440
u2441:
	goto	l1035
u2440:
	line	390
	
l4023:	
;main.c: 389: {
;main.c: 390: workStep = 3;
	movlw	low(03h)
	movwf	(_workStep)
	goto	l1035
	line	393
	
l4025:	
;main.c: 393: else if(modeStep == 1)
		decf	((_modeStep)),w
	btfss	status,2
	goto	u2451
	goto	u2450
u2451:
	goto	l1017
u2450:
	line	395
	
l4027:	
;main.c: 394: {
;main.c: 395: if(++workStep > 99)
	movlw	low(064h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l1017
u2460:
	line	397
	
l4029:	
;main.c: 396: {
;main.c: 397: workStep = 99;
	movlw	low(063h)
	movwf	(_workStep)
	goto	l1035
	line	401
	
l4031:	
;main.c: 401: else if(keyClick == 3 && modeStep == 1)
		movlw	3
	xorwf	((keyCtr@keyClick)),w
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l1035
u2470:
	
l4033:	
		decf	((_modeStep)),w
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l1035
u2480:
	line	403
	
l4035:	
;main.c: 402: {
;main.c: 403: if(++workStep > 99)
	movlw	low(064h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l1017
u2490:
	goto	l4029
	line	408
	
l1017:	
;main.c: 406: }
;main.c: 407: }
;main.c: 408: }
	goto	l1035
	line	409
	
l4039:	
;main.c: 409: else if(keyNum == 2)
		movlw	2
	xorwf	((_keyNum)),w
	btfss	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l4067
u2500:
	line	412
	
l4041:	
;main.c: 410: {
;main.c: 412: if(keyClick == 2)
		movlw	2
	xorwf	((keyCtr@keyClick)),w
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l4055
u2510:
	line	414
	
l4043:	
;main.c: 413: {
;main.c: 414: if(modeStep > 0)
	movf	((_modeStep)),w
	btfsc	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l4047
u2520:
	line	416
	
l4045:	
;main.c: 415: {
;main.c: 416: modeStep = 0;
	clrf	(_modeStep)
	line	417
;main.c: 417: workStep = 0;
	clrf	(_workStep)
	line	418
;main.c: 418: count900s = 0;
	clrf	(_count900s)
	line	419
;main.c: 419: }
	goto	l1035
	line	420
	
l4047:	
;main.c: 420: else if(lowBatFlag == 0)
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l1017
u2530:
	line	422
	
l4049:	
;main.c: 421: {
;main.c: 422: modeStep = 1;
	clrf	(_modeStep)
	incf	(_modeStep),f
	line	423
	
l4051:	
;main.c: 423: workStep = 50;
	movlw	low(032h)
	movwf	(_workStep)
	line	424
	
l4053:	
;main.c: 424: count900s = 0;
	clrf	(_count900s)
	goto	l1035
	line	427
	
l4055:	
;main.c: 427: else if(keyClick == 1 && workStep > 0)
		decf	((keyCtr@keyClick)),w
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l1035
u2540:
	
l4057:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l1035
u2550:
	line	429
	
l4059:	
;main.c: 428: {
;main.c: 429: if(++modeStep > 3)
	movlw	low(04h)
	incf	(_modeStep),f
	subwf	((_modeStep)),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l1028
u2560:
	line	431
	
l4061:	
;main.c: 430: {
;main.c: 431: modeStep = 1;
	clrf	(_modeStep)
	incf	(_modeStep),f
	line	432
	
l4063:	
;main.c: 432: workStep = 50;
	movlw	low(032h)
	movwf	(_workStep)
	line	433
;main.c: 433: }
	goto	l1035
	line	434
	
l1028:	
	line	436
;main.c: 434: else
;main.c: 435: {
;main.c: 436: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	437
	
l4065:	
;main.c: 437: pwmDuty = 69;
	movlw	low(045h)
	movwf	(_pwmDuty)
	goto	l1035
	line	442
	
l4067:	
;main.c: 442: else if(keyNum == 3)
		movlw	3
	xorwf	((_keyNum)),w
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l1035
u2570:
	line	444
	
l4069:	
;main.c: 443: {
;main.c: 444: if((keyClick == 1 || keyClick == 3) && workStep > 1)
		decf	((keyCtr@keyClick)),w
	btfsc	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l4073
u2580:
	
l4071:	
		movlw	3
	xorwf	((keyCtr@keyClick)),w
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l1035
u2590:
	
l4073:	
	movlw	low(02h)
	subwf	(_workStep),w
	skipc
	goto	u2601
	goto	u2600
u2601:
	goto	l1035
u2600:
	line	446
	
l4075:	
;main.c: 445: {
;main.c: 446: workStep--;
	decf	(_workStep),f
	line	451
	
l1035:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 314 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	314
global __ptext13
__ptext13:	;psect for function _keyRead
psect	text13
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	314
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 2
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	317
	
l3733:	
;main.c: 317: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1771
	goto	u1770
u1771:
	goto	l3779
u1770:
	line	319
	
l3735:	
;main.c: 318: {
;main.c: 319: keyCount++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_keyCount),f
	line	320
	
l3737:	
;main.c: 320: if(keyStatus == 0x03)
		movlw	3
	xorwf	((keyRead@keyStatus)),w
	btfss	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l3741
u1780:
	line	322
	
l3739:	
;main.c: 321: {
;main.c: 322: keyNum = 3;
	movlw	low(03h)
	movwf	(_keyNum)
	line	323
;main.c: 323: }
	goto	l3749
	line	324
	
l3741:	
;main.c: 324: else if(keyStatus == 0x01)
		decf	((keyRead@keyStatus)),w
	btfss	status,2
	goto	u1791
	goto	u1790
u1791:
	goto	l3745
u1790:
	line	326
	
l3743:	
;main.c: 325: {
;main.c: 326: keyNum = 2;
	movlw	low(02h)
	movwf	(_keyNum)
	line	327
;main.c: 327: }
	goto	l3749
	line	328
	
l3745:	
;main.c: 328: else if(keyStatus == 0x02)
		movlw	2
	xorwf	((keyRead@keyStatus)),w
	btfss	status,2
	goto	u1801
	goto	u1800
u1801:
	goto	l3749
u1800:
	line	330
	
l3747:	
;main.c: 329: {
;main.c: 330: keyNum = 1;
	clrf	(_keyNum)
	incf	(_keyNum),f
	line	332
	
l3749:	
;main.c: 331: }
;main.c: 332: if(keyNum != preKeyNum)
	movf	(_keyNum),w
	xorwf	(_preKeyNum),w
	skipnz
	goto	u1811
	goto	u1810
u1811:
	goto	l3755
u1810:
	line	334
	
l3751:	
;main.c: 333: {
;main.c: 334: preKeyNum = keyNum;
	movf	(_keyNum),w
	movwf	(_preKeyNum)
	line	335
	
l3753:	
;main.c: 335: keyCount = 0;
	clrf	(_keyCount)
	line	338
	
l3755:	
;main.c: 336: }
;main.c: 338: if(keyCount >= 150)
	movlw	low(096h)
	subwf	(_keyCount),w
	skipc
	goto	u1821
	goto	u1820
u1821:
	goto	l3769
u1820:
	line	340
	
l3757:	
;main.c: 339: {
;main.c: 340: keyCount = 150;
	movlw	low(096h)
	movwf	(_keyCount)
	line	341
	
l3759:	
;main.c: 341: if(keyNum == 2)
		movlw	2
	xorwf	((_keyNum)),w
	btfss	status,2
	goto	u1831
	goto	u1830
u1831:
	goto	l3769
u1830:
	line	343
	
l3761:	
;main.c: 342: {
;main.c: 343: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1841
	goto	u1840
u1841:
	goto	l3769
u1840:
	line	345
	
l3763:	
;main.c: 344: {
;main.c: 345: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	346
	
l3765:	
;main.c: 346: return 2;
	movlw	low(02h)
	goto	l1000
	line	350
	
l3769:	
;main.c: 347: }
;main.c: 348: }
;main.c: 349: }
;main.c: 350: if(keyCount > 25 && (++keyTime) > 15)
	movlw	low(01Ah)
	subwf	(_keyCount),w
	skipc
	goto	u1851
	goto	u1850
u1851:
	goto	l3785
u1850:
	
l3771:	
	movlw	low(010h)
	incf	(_keyTime),f
	subwf	((_keyTime)),w
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l3785
u1860:
	line	352
	
l3773:	
;main.c: 351: {
;main.c: 352: keyTime = 0;
	clrf	(_keyTime)
	line	353
	
l3775:	
;main.c: 353: return 3;
	movlw	low(03h)
	goto	l1000
	line	358
	
l3779:	
;main.c: 356: else
;main.c: 357: {
;main.c: 358: if(keyNum == 2 && keyCount >= 100)
		movlw	2
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_keyNum)),w
	btfss	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l3791
u1870:
	
l3781:	
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1881
	goto	u1880
u1881:
	goto	l3791
u1880:
	line	360
	
l3783:	
;main.c: 359: {
;main.c: 360: keyCount = 0;
	clrf	(_keyCount)
	line	361
;main.c: 361: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	362
	
l3785:	
;main.c: 362: return 0;
	movlw	low(0)
	goto	l1000
	line	364
	
l3791:	
;main.c: 364: else if(keyCount >= 4)
	movlw	low(04h)
	subwf	(_keyCount),w
	skipc
	goto	u1891
	goto	u1890
u1891:
	goto	l3799
u1890:
	line	366
	
l3793:	
;main.c: 365: {
;main.c: 366: keyCount = 0;
	clrf	(_keyCount)
	line	367
	
l3795:	
;main.c: 367: return 1;
	movlw	low(01h)
	goto	l1000
	line	369
	
l3799:	
;main.c: 368: }
;main.c: 369: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	370
;main.c: 370: keyCount = 0;
	clrf	(_keyCount)
	line	371
;main.c: 371: keyNum = 0;
	clrf	(_keyNum)
	goto	l3785
	line	374
	
l1000:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 574 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	574
global __ptext14
__ptext14:	;psect for function _chrgCtr
psect	text14
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	574
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	576
	
l4181:	
;main.c: 576: if(PORTA & 0X80)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(7)&7	;volatile
	goto	u2811
	goto	u2810
u2811:
	goto	l4207
u2810:
	line	579
	
l4183:	
;main.c: 577: {
;main.c: 579: workStep = 0;
	clrf	(_workStep)
	line	580
;main.c: 580: modeStep = 0;
	clrf	(_modeStep)
	line	581
;main.c: 581: lowBatFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowBatFlag)
	line	582
	
l4185:	
;main.c: 582: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l4191
u2820:
	line	584
	
l4187:	
;main.c: 583: {
;main.c: 584: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	591
	
l4191:	
;main.c: 590: }
;main.c: 591: if(R_AIN2_DATA > 1526)
	movlw	05h
	subwf	(_R_AIN2_DATA+1),w
	movlw	0F7h
	skipnz
	subwf	(_R_AIN2_DATA),w
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l1079
u2830:
	line	593
	
l4193:	
;main.c: 592: {
;main.c: 593: if(chrgMaxData >= R_AIN2_DATA)
	movf	(_R_AIN2_DATA+1),w
	subwf	(_chrgMaxData+1),w
	skipz
	goto	u2845
	movf	(_R_AIN2_DATA),w
	subwf	(_chrgMaxData),w
u2845:
	skipc
	goto	u2841
	goto	u2840
u2841:
	goto	l4203
u2840:
	line	595
	
l4195:	
;main.c: 594: {
;main.c: 595: if(++count30s > 3000)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	0Bh
	subwf	((_count30s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l1079
u2850:
	line	597
	
l4197:	
;main.c: 596: {
;main.c: 597: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	598
	
l4199:	
;main.c: 598: if(showBatValue < 99)
	movlw	low(063h)
	subwf	(_showBatValue),w
	skipnc
	goto	u2861
	goto	u2860
u2861:
	goto	l1073
u2860:
	line	600
	
l4201:	
;main.c: 599: {
;main.c: 600: showBatValue++;
	incf	(_showBatValue),f
	goto	l1079
	line	606
	
l4203:	
;main.c: 604: else
;main.c: 605: {
;main.c: 606: chrgMaxData = R_AIN2_DATA;
	movf	(_R_AIN2_DATA+1),w
	movwf	(_chrgMaxData+1)
	movf	(_R_AIN2_DATA),w
	movwf	(_chrgMaxData)
	line	607
	
l4205:	
;main.c: 607: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	goto	l1079
	line	609
	
l1073:	
	line	610
;main.c: 608: }
;main.c: 609: }
;main.c: 610: }
	goto	l1079
	line	613
	
l4207:	
;main.c: 611: else
;main.c: 612: {
;main.c: 613: chrgMaxData = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgMaxData)
	clrf	(_chrgMaxData+1)
	line	614
;main.c: 615: chrgFullFlag = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	616
;main.c: 616: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	625
	
l1079:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 713 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_ADC_Sample
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	713
global __ptext15
__ptext15:	;psect for function _checkOutA
psect	text15
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	713
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 2
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	716
	
l4257:	
;main.c: 716: test_adc = ADC_Sample(3, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(03h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	717
	
l4259:	
;main.c: 717: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l1110
u2920:
	line	719
	
l4261:	
;main.c: 718: {
;main.c: 719: R_AIN6_DATA = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_R_AIN6_DATA+1)
	movf	(_adresult),w	;volatile
	movwf	(_R_AIN6_DATA)
	line	720
;main.c: 720: if(R_AIN6_DATA > 1200)
	movlw	04h
	subwf	(_R_AIN6_DATA+1),w
	movlw	0B1h
	skipnz
	subwf	(_R_AIN6_DATA),w
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l4267
u2930:
	line	722
	
l4263:	
;main.c: 721: {
;main.c: 722: if(++overTime > 10)
	movlw	low(0Bh)
	incf	(_overTime),f
	subwf	((_overTime)),w
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l1110
u2940:
	line	724
	
l4265:	
;main.c: 723: {
;main.c: 724: overTime = 0;
	clrf	(_overTime)
	line	725
;main.c: 725: workStep = 0;
	clrf	(_workStep)
	goto	l1110
	line	730
	
l4267:	
;main.c: 728: else
;main.c: 729: {
;main.c: 730: overTime = 0;
	clrf	(_overTime)
	line	733
	
l1110:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatValue

;; *************** function _checkBatValue *****************
;; Defined at:
;;		line 736 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_ADC_Sample
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	736
global __ptext16
__ptext16:	;psect for function _checkBatValue
psect	text16
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	736
	global	__size_of_checkBatValue
	__size_of_checkBatValue	equ	__end_of_checkBatValue-_checkBatValue
	
_checkBatValue:	
;incstack = 0
	opt	stack 2
; Regs used in _checkBatValue: [wreg+status,2+status,0+pclath+cstack]
	line	739
	
l4583:	
;main.c: 739: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	740
	
l4585:	
;main.c: 740: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l1122
u3470:
	line	742
	
l4587:	
;main.c: 741: {
;main.c: 742: R_AIN2_DATA = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_R_AIN2_DATA+1)
	movf	(_adresult),w	;volatile
	movwf	(_R_AIN2_DATA)
	line	743
;main.c: 743: if(R_AIN2_DATA < 1220)
	movlw	04h
	subwf	(_R_AIN2_DATA+1),w
	movlw	0C4h
	skipnz
	subwf	(_R_AIN2_DATA),w
	skipnc
	goto	u3481
	goto	u3480
u3481:
	goto	l4597
u3480:
	line	745
	
l4589:	
;main.c: 744: {
;main.c: 745: batValue = 0;
	clrf	(_batValue)
	clrf	(_batValue+1)
	line	746
	
l4591:	
;main.c: 746: if(++lowBatTime > 200)
	movlw	low(0C9h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l1122
u3490:
	line	748
	
l4593:	
;main.c: 747: {
;main.c: 748: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	749
;main.c: 749: count900s = 0;
	clrf	(_count900s)
	line	750
;main.c: 750: modeStep = 0;
	clrf	(_modeStep)
	line	751
;main.c: 751: workStep = 0;
	clrf	(_workStep)
	line	752
;main.c: 752: count900s = 0;
	clrf	(_count900s)
	line	753
	
l4595:	
;main.c: 753: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	754
;main.c: 754: showBatValue = 0;
	clrf	(_showBatValue)
	goto	l1122
	line	757
	
l4597:	
;main.c: 757: else if(R_AIN2_DATA < 1330)
	movlw	05h
	subwf	(_R_AIN2_DATA+1),w
	movlw	032h
	skipnz
	subwf	(_R_AIN2_DATA),w
	skipnc
	goto	u3501
	goto	u3500
u3501:
	goto	l4603
u3500:
	line	759
	
l4599:	
;main.c: 758: {
;main.c: 759: batValue = (R_AIN2_DATA - 1220)/11;
	movlw	0Bh
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_R_AIN2_DATA),w
	addlw	low(0FB3Ch)
	movwf	(___lwdiv@dividend)
	movf	(_R_AIN2_DATA+1),w
	skipnc
	addlw	1
	addlw	high(0FB3Ch)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(_batValue+1)
	movf	(0+(?___lwdiv)),w
	movwf	(_batValue)
	line	760
	
l4601:	
;main.c: 760: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	761
;main.c: 761: }
	goto	l1122
	line	762
	
l4603:	
;main.c: 762: else if(R_AIN2_DATA < 1390)
	movlw	05h
	subwf	(_R_AIN2_DATA+1),w
	movlw	06Eh
	skipnz
	subwf	(_R_AIN2_DATA),w
	skipnc
	goto	u3511
	goto	u3510
u3511:
	goto	l4609
u3510:
	line	764
	
l4605:	
;main.c: 763: {
;main.c: 764: batValue = 10 + ((R_AIN2_DATA - 1330)/3);
	movlw	03h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_R_AIN2_DATA),w
	addlw	low(0FACEh)
	movwf	(___lwdiv@dividend)
	movf	(_R_AIN2_DATA+1),w
	skipnc
	addlw	1
	addlw	high(0FACEh)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(_batValue+1)
	movf	(0+(?___lwdiv)),w
	movwf	(_batValue)
	
l4607:	
	movlw	0Ah
	addwf	(_batValue),f
	skipnc
	incf	(_batValue+1),f
	line	765
;main.c: 765: }
	goto	l1122
	line	768
	
l4609:	
;main.c: 766: else
;main.c: 767: {
;main.c: 768: batValue = 30 + ((R_AIN2_DATA - 1390)/2);
	movf	(_R_AIN2_DATA),w
	addlw	low(0FA92h)
	movwf	(_batValue)
	movf	(_R_AIN2_DATA+1),w
	skipnc
	addlw	1
	addlw	high(0FA92h)
	movwf	1+(_batValue)
	
l4611:	
	clrc
	rrf	(_batValue+1),f
	rrf	(_batValue),f
	movlw	01Eh
	addwf	(_batValue),f
	skipnc
	incf	(_batValue+1),f
	line	769
;main.c: 769: if(batValue >= 100)
	movlw	0
	subwf	(_batValue+1),w
	movlw	064h
	skipnz
	subwf	(_batValue),w
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l1122
u3520:
	line	771
	
l4613:	
;main.c: 770: {
;main.c: 771: batValue = 100;
	movlw	064h
	movwf	(_batValue)
	clrf	(_batValue+1)
	line	777
	
l1122:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatValue
	__end_of_checkBatValue:
	signat	_checkBatValue,89
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkBatValue
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
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
	opt	stack 2
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l4453:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l4455:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l4475
u3230:
	line	16
	
l4457:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l4461
	line	18
	
l4459:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l4461:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l4459
u3240:
	line	22
	
l4463:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l4465:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3255
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3255:
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l4471
u3250:
	line	24
	
l4467:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l4469:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l4471:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l4473:	
	decfsz	(___lwdiv@counter),f
	goto	u3261
	goto	u3260
u3261:
	goto	l4463
u3260:
	line	30
	
l4475:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l2544:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 224 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkOutA
;;		_checkBatValue
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	224
global __ptext18
__ptext18:	;psect for function _ADC_Sample
psect	text18
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	224
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 2
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	226
	
l3645:	
;main.c: 226: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	227
	
l3647:	
;main.c: 227: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	228
;main.c: 228: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	230
	
l3649:	
;main.c: 230: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u1621
	goto	u1620
u1621:
	goto	l3655
u1620:
	
l3651:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u1631
	goto	u1630
u1631:
	goto	l3655
u1630:
	line	233
	
l3653:	
;main.c: 231: {
;main.c: 233: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	234
;main.c: 234: _delay((unsigned long)((100)*(8000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
movwf	((??_ADC_Sample+0)+0),f
	u3567:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3567
	nop
opt asmopt_pop

	line	235
;main.c: 235: }
	goto	l3657
	line	237
	
l3655:	
;main.c: 236: else
;main.c: 237: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	239
	
l3657:	
;main.c: 239: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u1641
	goto	u1640
u1641:
	goto	l3663
u1640:
	line	241
	
l3659:	
;main.c: 240: {
;main.c: 241: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	242
	
l3661:	
;main.c: 242: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	244
	
l3663:	
	line	245
	
l3665:	
;main.c: 245: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	247
	
l3671:	
;main.c: 246: {
;main.c: 247: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1655:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1655
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	248
# 248 "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
nop ;# 
	line	249
# 249 "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
nop ;# 
	line	250
# 250 "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
nop ;# 
	line	251
# 251 "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
nop ;# 
psect	text18
	line	252
	
l3673:	
;main.c: 252: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	254
	
l3675:	
;main.c: 254: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	255
;main.c: 255: while (GODONE)
	goto	l970
	
l971:	
	line	257
;main.c: 256: {
;main.c: 257: _delay((unsigned long)((2)*(8000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	259
;main.c: 259: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u1661
	goto	u1660
u1661:
	goto	l970
u1660:
	line	260
	
l3677:	
;main.c: 260: return 0;
	movlw	low(0)
	goto	l973
	line	261
	
l970:	
	line	255
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u1671
	goto	u1670
u1671:
	goto	l971
u1670:
	line	263
	
l3681:	
;main.c: 261: }
;main.c: 263: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l3683:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	265
	
l3685:	
;main.c: 265: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l3689
u1680:
	line	267
	
l3687:	
;main.c: 266: {
;main.c: 267: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	268
;main.c: 268: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	269
;main.c: 269: }
	goto	l976
	line	270
	
l3689:	
;main.c: 270: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u1695
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u1695:
	skipnc
	goto	u1691
	goto	u1690
u1691:
	goto	l3693
u1690:
	line	271
	
l3691:	
;main.c: 271: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l976
	line	272
	
l3693:	
;main.c: 272: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u1705
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u1705:
	skipnc
	goto	u1701
	goto	u1700
u1701:
	goto	l976
u1700:
	line	273
	
l3695:	
;main.c: 273: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	275
	
l976:	
;main.c: 275: adsum += ad_temp;
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
	goto	u1711
	addwf	(ADC_Sample@adsum+1),f	;volatile
u1711:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1712
	addwf	(ADC_Sample@adsum+2),f	;volatile
u1712:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1713
	addwf	(ADC_Sample@adsum+3),f	;volatile
u1713:

	line	245
	
l3697:	
	incf	(ADC_Sample@i),f
	
l3699:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l3671
u1720:
	line	277
	
l3701:	
;main.c: 276: }
;main.c: 277: adsum -= admax;
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
	goto	u1735
	goto	u1736
u1735:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1736:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1737
	goto	u1738
u1737:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1738:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1739
	goto	u1730
u1739:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1730:

	line	278
;main.c: 278: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u1745
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u1745
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u1745
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u1745:
	skipc
	goto	u1741
	goto	u1740
u1741:
	goto	l980
u1740:
	line	279
	
l3703:	
;main.c: 279: adsum -= admin;
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
	goto	u1755
	goto	u1756
u1755:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1756:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1757
	goto	u1758
u1757:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1758:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1759
	goto	u1750
u1759:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1750:

	goto	l3705
	line	280
	
l980:	
	line	281
;main.c: 280: else
;main.c: 281: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	283
	
l3705:	
;main.c: 283: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u1765:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1760:
	addlw	-1
	skipz
	goto	u1765
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	285
	
l3707:	
;main.c: 285: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	286
	
l3709:	
;main.c: 286: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	287
	
l3711:	
;main.c: 287: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	288
	
l3713:	
;main.c: 288: return 0xA5;
	movlw	low(0A5h)
	line	290
	
l973:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_batCtr

;; *************** function _batCtr *****************
;; Defined at:
;;		line 826 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	826
global __ptext19
__ptext19:	;psect for function _batCtr
psect	text19
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	826
	global	__size_of_batCtr
	__size_of_batCtr	equ	__end_of_batCtr-_batCtr
	
_batCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _batCtr: [wreg+status,2+status,0]
	line	828
	
l4333:	
;main.c: 828: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l1146
u3090:
	line	830
	
l4335:	
;main.c: 829: {
;main.c: 830: if(batValue > 40)
	movlw	0
	subwf	(_batValue+1),w
	movlw	029h
	skipnz
	subwf	(_batValue),w
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l4339
u3100:
	line	832
	
l4337:	
;main.c: 831: {
;main.c: 832: batSubMaxTime = 4500;
	movlw	094h
	movwf	(_batSubMaxTime)
	movlw	011h
	movwf	((_batSubMaxTime))+1
	line	833
;main.c: 833: }
	goto	l1139
	line	834
	
l4339:	
;main.c: 834: else if(batValue > 25)
	movlw	0
	subwf	(_batValue+1),w
	movlw	01Ah
	skipnz
	subwf	(_batValue),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l4343
u3110:
	line	836
	
l4341:	
;main.c: 835: {
;main.c: 836: batSubMaxTime = 2500;
	movlw	0C4h
	movwf	(_batSubMaxTime)
	movlw	09h
	movwf	((_batSubMaxTime))+1
	line	837
;main.c: 837: }
	goto	l1139
	line	840
	
l4343:	
;main.c: 838: else
;main.c: 839: {
;main.c: 840: batSubMaxTime = 1000;
	movlw	0E8h
	movwf	(_batSubMaxTime)
	movlw	03h
	movwf	((_batSubMaxTime))+1
	line	841
	
l1139:	
	line	842
;main.c: 841: }
;main.c: 842: if(showBatValue > batValue)
	movf	(_showBatValue),w
	movwf	(??_batCtr+0)+0
	clrf	(??_batCtr+0)+0+1
	movf	1+(??_batCtr+0)+0,w
	subwf	(_batValue+1),w
	skipz
	goto	u3125
	movf	0+(??_batCtr+0)+0,w
	subwf	(_batValue),w
u3125:
	skipnc
	goto	u3121
	goto	u3120
u3121:
	goto	l4351
u3120:
	line	844
	
l4345:	
;main.c: 843: {
;main.c: 844: if(++batSubCount > batSubMaxTime)
	incf	(_batSubCount),f
	skipnz
	incf	(_batSubCount+1),f
	movf	((_batSubCount+1)),w
	subwf	(_batSubMaxTime+1),w
	skipz
	goto	u3135
	movf	((_batSubCount)),w
	subwf	(_batSubMaxTime),w
u3135:
	skipnc
	goto	u3131
	goto	u3130
u3131:
	goto	l4353
u3130:
	line	846
	
l4347:	
;main.c: 845: {
;main.c: 846: batSubCount = 0;
	clrf	(_batSubCount)
	clrf	(_batSubCount+1)
	line	847
	
l4349:	
;main.c: 847: showBatValue--;
	decf	(_showBatValue),f
	goto	l4353
	line	853
	
l4351:	
;main.c: 851: else
;main.c: 852: {
;main.c: 853: batSubCount = 0;
	clrf	(_batSubCount)
	clrf	(_batSubCount+1)
	line	855
	
l4353:	
;main.c: 854: }
;main.c: 855: if(showBatValue == 0)
	movf	((_showBatValue)),w
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l1146
u3140:
	line	857
	
l4355:	
;main.c: 856: {
;main.c: 857: count900s = 0;
	clrf	(_count900s)
	line	858
;main.c: 858: modeStep = 0;
	clrf	(_modeStep)
	line	859
;main.c: 859: workStep = 0;
	clrf	(_workStep)
	line	860
;main.c: 860: count900s = 0;
	clrf	(_count900s)
	line	861
	
l4357:	
;main.c: 861: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	865
	
l1146:	
	return
	opt stack 0
GLOBAL	__end_of_batCtr
	__end_of_batCtr:
	signat	_batCtr,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 125 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_updateLed
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	125
global __ptext20
__ptext20:	;psect for function _Isr_Timer
psect	text20
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	125
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 1
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
psect	text20
	line	127
	
i1l4359:	
;main.c: 127: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u315_21
	goto	u315_20
u315_21:
	goto	i1l4377
u315_20:
	line	129
	
i1l4361:	
;main.c: 128: {
;main.c: 129: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	130
	
i1l4363:	
;main.c: 130: updateLed();
	fcall	_updateLed
	line	131
	
i1l4365:	
;main.c: 131: if(++MainTime >= 158)
	movlw	low(09Eh)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u316_21
	goto	u316_20
u316_21:
	goto	i1l958
u316_20:
	line	133
	
i1l4367:	
;main.c: 132: {
;main.c: 133: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	134
	
i1l4369:	
;main.c: 134: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	135
	
i1l4371:	
;main.c: 135: if(++count1s >= 3000)
	incf	(_count1s),f
	skipnz
	incf	(_count1s+1),f
	movlw	0Bh
	subwf	((_count1s+1)),w
	movlw	0B8h
	skipnz
	subwf	((_count1s)),w
	skipc
	goto	u317_21
	goto	u317_20
u317_21:
	goto	i1l958
u317_20:
	line	137
	
i1l4373:	
;main.c: 136: {
;main.c: 137: count1s = 0;
	clrf	(_count1s)
	clrf	(_count1s+1)
	line	138
	
i1l4375:	
;main.c: 138: wait30s = 1;
	clrf	(_wait30s)
	incf	(_wait30s),f
	clrf	(_wait30s+1)
	goto	i1l958
	line	144
	
i1l4377:	
;main.c: 142: else
;main.c: 143: {
;main.c: 144: PIR1 = 0;
	clrf	(13)	;volatile
	line	147
	
i1l958:	
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
	global	_updateLed

;; *************** function _updateLed *****************
;; Defined at:
;;		line 453 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_refreshLed
;; This function is called by:
;;		_Isr_Timer
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	453
global __ptext21
__ptext21:	;psect for function _updateLed
psect	text21
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\main.c"
	line	453
	global	__size_of_updateLed
	__size_of_updateLed	equ	__end_of_updateLed-_updateLed
	
_updateLed:	
;incstack = 0
	opt	stack 1
; Regs used in _updateLed: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	455
	
i1l3997:	
;main.c: 455: if(showFlag)
	movf	((_showFlag)),w
	btfsc	status,2
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l4001
u239_20:
	line	457
	
i1l3999:	
;main.c: 456: {
;main.c: 457: refreshLed();
	fcall	_refreshLed
	line	458
;main.c: 458: }
	goto	i1l1040
	line	461
	
i1l4001:	
;main.c: 459: else
;main.c: 460: {
;main.c: 461: TRISB |= 0xFF;
	movlw	low(0FFh)
	movwf	(5)	;volatile
	line	462
	
i1l4003:	
;main.c: 462: TRISA |= 0x60;
	movlw	low(060h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	463
	
i1l4005:	
;main.c: 463: PORTB &= 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	464
	
i1l4007:	
;main.c: 464: PORTA &= 0x9F;
	movlw	low(09Fh)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	467
	
i1l1040:	
	return
	opt stack 0
GLOBAL	__end_of_updateLed
	__end_of_updateLed:
	signat	_updateLed,89
	global	_refreshLed

;; *************** function _refreshLed *****************
;; Defined at:
;;		line 330 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_A1
;;		_A2
;;		_A3
;;		_A4
;;		_A5
;;		_A6
;;		_A7
;;		_B1
;;		_B2
;;		_B3
;;		_B4
;;		_B5
;;		_B6
;;		_B7
;;		_C1
;;		_C2
;;		_C3
;;		_C4
;;		_C5
;;		_C6
;;		_C7
;;		_D1
;;		_D2
;;		_D3
;;		_D4
;;		_D5
;;		_D6
;;		_D7
;;		_led1
;;		_led2
;;		_led3
;; This function is called by:
;;		_updateLed
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	330
global __ptext22
__ptext22:	;psect for function _refreshLed
psect	text22
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	330
	global	__size_of_refreshLed
	__size_of_refreshLed	equ	__end_of_refreshLed-_refreshLed
	
_refreshLed:	
;incstack = 0
	opt	stack 1
; Regs used in _refreshLed: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	333
	
i1l3805:	
;number.c: 333: TRISB |= 0xFF;
	movlw	low(0FFh)
	movwf	(5)	;volatile
	line	334
	
i1l3807:	
;number.c: 334: TRISA |= 0x60;
	movlw	low(060h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	335
	
i1l3809:	
;number.c: 335: PORTB &= 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	336
	
i1l3811:	
;number.c: 336: PORTA &= 0x9F;
	movlw	low(09Fh)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	337
;number.c: 337: switch(ledCnt)
	goto	i1l3883
	line	339
;number.c: 338: {
;number.c: 339: case 0:
	
i1l2117:	
	line	340
;number.c: 340: if(showNumAShi & 0x01)
	btfss	(_showNumAShi),(0)&7
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l3885
u190_20:
	line	342
	
i1l3813:	
;number.c: 341: {
;number.c: 342: A1();
	fcall	_A1
	goto	i1l3885
	line	345
;number.c: 345: case 1:
	
i1l2120:	
	line	346
;number.c: 346: if(showNumAShi & 0x02)
	btfss	(_showNumAShi),(1)&7
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l3885
u191_20:
	line	348
	
i1l3815:	
;number.c: 347: {
;number.c: 348: A2();
	fcall	_A2
	goto	i1l3885
	line	351
;number.c: 351: case 2:
	
i1l2122:	
	line	352
;number.c: 352: if(showNumAShi & 0x04)
	btfss	(_showNumAShi),(2)&7
	goto	u192_21
	goto	u192_20
u192_21:
	goto	i1l3885
u192_20:
	line	354
	
i1l3817:	
;number.c: 353: {
;number.c: 354: A3();
	fcall	_A3
	goto	i1l3885
	line	357
;number.c: 357: case 3:
	
i1l2124:	
	line	358
;number.c: 358: if(showNumAShi & 0x08)
	btfss	(_showNumAShi),(3)&7
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l3885
u193_20:
	line	360
	
i1l3819:	
;number.c: 359: {
;number.c: 360: A4();
	fcall	_A4
	goto	i1l3885
	line	363
;number.c: 363: case 4:
	
i1l2126:	
	line	364
;number.c: 364: if(showNumAShi & 0x10)
	btfss	(_showNumAShi),(4)&7
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l3885
u194_20:
	line	366
	
i1l3821:	
;number.c: 365: {
;number.c: 366: A5();
	fcall	_A5
	goto	i1l3885
	line	369
;number.c: 369: case 5:
	
i1l2128:	
	line	370
;number.c: 370: if(showNumAShi & 0x20)
	btfss	(_showNumAShi),(5)&7
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l3885
u195_20:
	line	372
	
i1l3823:	
;number.c: 371: {
;number.c: 372: A6();
	fcall	_A6
	goto	i1l3885
	line	375
;number.c: 375: case 6:
	
i1l2130:	
	line	376
;number.c: 376: if(showNumAShi & 0x40)
	btfss	(_showNumAShi),(6)&7
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l3885
u196_20:
	line	378
	
i1l3825:	
;number.c: 377: {
;number.c: 378: A7();
	fcall	_A7
	goto	i1l3885
	line	381
;number.c: 381: case 7:
	
i1l2132:	
	line	382
;number.c: 382: if(showNumAge & 0x01)
	btfss	(_showNumAge),(0)&7
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l3885
u197_20:
	line	384
	
i1l3827:	
;number.c: 383: {
;number.c: 384: B1();
	fcall	_B1
	goto	i1l3885
	line	387
;number.c: 387: case 8:
	
i1l2134:	
	line	388
;number.c: 388: if(showNumAge & 0x02)
	btfss	(_showNumAge),(1)&7
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l3885
u198_20:
	line	390
	
i1l3829:	
;number.c: 389: {
;number.c: 390: B2();
	fcall	_B2
	goto	i1l3885
	line	393
;number.c: 393: case 9:
	
i1l2136:	
	line	394
;number.c: 394: if(showNumAge & 0x04)
	btfss	(_showNumAge),(2)&7
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l3885
u199_20:
	line	396
	
i1l3831:	
;number.c: 395: {
;number.c: 396: B3();
	fcall	_B3
	goto	i1l3885
	line	399
;number.c: 399: case 10:
	
i1l2138:	
	line	400
;number.c: 400: if(showNumAge & 0x08)
	btfss	(_showNumAge),(3)&7
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l3885
u200_20:
	line	402
	
i1l3833:	
;number.c: 401: {
;number.c: 402: B4();
	fcall	_B4
	goto	i1l3885
	line	405
;number.c: 405: case 11:
	
i1l2140:	
	line	406
;number.c: 406: if(showNumAge & 0x10)
	btfss	(_showNumAge),(4)&7
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l3885
u201_20:
	line	408
	
i1l3835:	
;number.c: 407: {
;number.c: 408: B5();
	fcall	_B5
	goto	i1l3885
	line	411
;number.c: 411: case 12:
	
i1l2142:	
	line	412
;number.c: 412: if(showNumAge & 0x20)
	btfss	(_showNumAge),(5)&7
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l3885
u202_20:
	line	414
	
i1l3837:	
;number.c: 413: {
;number.c: 414: B6();
	fcall	_B6
	goto	i1l3885
	line	417
;number.c: 417: case 13:
	
i1l2144:	
	line	418
;number.c: 418: if(showNumAge & 0x40)
	btfss	(_showNumAge),(6)&7
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l3885
u203_20:
	line	420
	
i1l3839:	
;number.c: 419: {
;number.c: 420: B7();
	fcall	_B7
	goto	i1l3885
	line	423
;number.c: 423: case 14:
	
i1l2146:	
	line	424
;number.c: 424: if(showNumBShi & 0x01)
	btfss	(_showNumBShi),(0)&7
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l3885
u204_20:
	line	426
	
i1l3841:	
;number.c: 425: {
;number.c: 426: C1();
	fcall	_C1
	goto	i1l3885
	line	429
;number.c: 429: case 15:
	
i1l2148:	
	line	430
;number.c: 430: if(showNumBShi & 0x02)
	btfss	(_showNumBShi),(1)&7
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l3885
u205_20:
	line	432
	
i1l3843:	
;number.c: 431: {
;number.c: 432: C2();
	fcall	_C2
	goto	i1l3885
	line	435
;number.c: 435: case 16:
	
i1l2150:	
	line	436
;number.c: 436: if(showNumBShi & 0x04)
	btfss	(_showNumBShi),(2)&7
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l3885
u206_20:
	line	438
	
i1l3845:	
;number.c: 437: {
;number.c: 438: C3();
	fcall	_C3
	goto	i1l3885
	line	441
;number.c: 441: case 17:
	
i1l2152:	
	line	442
;number.c: 442: if(showNumBShi & 0x08)
	btfss	(_showNumBShi),(3)&7
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l3885
u207_20:
	line	444
	
i1l3847:	
;number.c: 443: {
;number.c: 444: C4();
	fcall	_C4
	goto	i1l3885
	line	447
;number.c: 447: case 18:
	
i1l2154:	
	line	448
;number.c: 448: if(showNumBShi & 0x10)
	btfss	(_showNumBShi),(4)&7
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l3885
u208_20:
	line	450
	
i1l3849:	
;number.c: 449: {
;number.c: 450: C5();
	fcall	_C5
	goto	i1l3885
	line	453
;number.c: 453: case 19:
	
i1l2156:	
	line	454
;number.c: 454: if(showNumBShi & 0x20)
	btfss	(_showNumBShi),(5)&7
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l3885
u209_20:
	line	456
	
i1l3851:	
;number.c: 455: {
;number.c: 456: C6();
	fcall	_C6
	goto	i1l3885
	line	459
;number.c: 459: case 20:
	
i1l2158:	
	line	460
;number.c: 460: if(showNumBShi & 0x40)
	btfss	(_showNumBShi),(6)&7
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l3885
u210_20:
	line	462
	
i1l3853:	
;number.c: 461: {
;number.c: 462: C7();
	fcall	_C7
	goto	i1l3885
	line	465
;number.c: 465: case 21:
	
i1l2160:	
	line	466
;number.c: 466: if(showNumBge & 0x01)
	btfss	(_showNumBge),(0)&7
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l3885
u211_20:
	line	468
	
i1l3855:	
;number.c: 467: {
;number.c: 468: D1();
	fcall	_D1
	goto	i1l3885
	line	471
;number.c: 471: case 22:
	
i1l2162:	
	line	472
;number.c: 472: if(showNumBge & 0x02)
	btfss	(_showNumBge),(1)&7
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l3885
u212_20:
	line	474
	
i1l3857:	
;number.c: 473: {
;number.c: 474: D2();
	fcall	_D2
	goto	i1l3885
	line	477
;number.c: 477: case 23:
	
i1l2164:	
	line	478
;number.c: 478: if(showNumBge & 0x04)
	btfss	(_showNumBge),(2)&7
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l3885
u213_20:
	line	480
	
i1l3859:	
;number.c: 479: {
;number.c: 480: D3();
	fcall	_D3
	goto	i1l3885
	line	483
;number.c: 483: case 24:
	
i1l2166:	
	line	484
;number.c: 484: if(showNumBge & 0x08)
	btfss	(_showNumBge),(3)&7
	goto	u214_21
	goto	u214_20
u214_21:
	goto	i1l3885
u214_20:
	line	486
	
i1l3861:	
;number.c: 485: {
;number.c: 486: D4();
	fcall	_D4
	goto	i1l3885
	line	489
;number.c: 489: case 25:
	
i1l2168:	
	line	490
;number.c: 490: if(showNumBge & 0x10)
	btfss	(_showNumBge),(4)&7
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l3885
u215_20:
	line	492
	
i1l3863:	
;number.c: 491: {
;number.c: 492: D5();
	fcall	_D5
	goto	i1l3885
	line	495
;number.c: 495: case 26:
	
i1l2170:	
	line	496
;number.c: 496: if(showNumBge & 0x20)
	btfss	(_showNumBge),(5)&7
	goto	u216_21
	goto	u216_20
u216_21:
	goto	i1l3885
u216_20:
	line	498
	
i1l3865:	
;number.c: 497: {
;number.c: 498: D6();
	fcall	_D6
	goto	i1l3885
	line	501
;number.c: 501: case 27:
	
i1l2172:	
	line	502
;number.c: 502: if(showNumBge & 0x40)
	btfss	(_showNumBge),(6)&7
	goto	u217_21
	goto	u217_20
u217_21:
	goto	i1l3885
u217_20:
	line	504
	
i1l3867:	
;number.c: 503: {
;number.c: 504: D7();
	fcall	_D7
	goto	i1l3885
	line	508
	
i1l3869:	
;number.c: 508: if(modeStep == 1)
		decf	((_modeStep)),w
	btfss	status,2
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l3873
u218_20:
	line	510
	
i1l3871:	
;number.c: 509: {
;number.c: 510: led1();
	fcall	_led1
	line	512
	
i1l3873:	
;number.c: 511: }
;number.c: 512: if(modeStep == 2)
		movlw	2
	xorwf	((_modeStep)),w
	btfss	status,2
	goto	u219_21
	goto	u219_20
u219_21:
	goto	i1l3877
u219_20:
	line	514
	
i1l3875:	
;number.c: 513: {
;number.c: 514: led2();
	fcall	_led2
	line	516
	
i1l3877:	
;number.c: 515: }
;number.c: 516: if(modeStep == 3)
		movlw	3
	xorwf	((_modeStep)),w
	btfss	status,2
	goto	u220_21
	goto	u220_20
u220_21:
	goto	i1l3885
u220_20:
	line	518
	
i1l3879:	
;number.c: 517: {
;number.c: 518: led3();
	fcall	_led3
	goto	i1l3885
	line	337
	
i1l3883:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_ledCnt),w
	; Switch size 1, requested type "space"
; Number of cases is 28, Range of values is 0 to 27
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           63     7 (fixed)
; simple_byte           85    43 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	28
	subwf	fsr,w
skipnc
goto i1l3869
movlw high(i1S4675)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(i1S4675)
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
i1S4675:
	ljmp	i1l2117
	ljmp	i1l2120
	ljmp	i1l2122
	ljmp	i1l2124
	ljmp	i1l2126
	ljmp	i1l2128
	ljmp	i1l2130
	ljmp	i1l2132
	ljmp	i1l2134
	ljmp	i1l2136
	ljmp	i1l2138
	ljmp	i1l2140
	ljmp	i1l2142
	ljmp	i1l2144
	ljmp	i1l2146
	ljmp	i1l2148
	ljmp	i1l2150
	ljmp	i1l2152
	ljmp	i1l2154
	ljmp	i1l2156
	ljmp	i1l2158
	ljmp	i1l2160
	ljmp	i1l2162
	ljmp	i1l2164
	ljmp	i1l2166
	ljmp	i1l2168
	ljmp	i1l2170
	ljmp	i1l2172
psect	text22

	line	523
	
i1l3885:	
;number.c: 523: if(++ledCnt >= 40)
	movlw	low(028h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u221_21
	goto	u221_20
u221_21:
	goto	i1l2179
u221_20:
	line	525
	
i1l3887:	
;number.c: 524: {
;number.c: 525: ledCnt = 0;
	clrf	(_ledCnt)
	line	532
	
i1l2179:	
	return
	opt stack 0
GLOBAL	__end_of_refreshLed
	__end_of_refreshLed:
	signat	_refreshLed,89
	global	_led3

;; *************** function _led3 *****************
;; Defined at:
;;		line 248 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	248
global __ptext23
__ptext23:	;psect for function _led3
psect	text23
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	248
	global	__size_of_led3
	__size_of_led3	equ	__end_of_led3-_led3
	
_led3:	
;incstack = 0
	opt	stack 1
; Regs used in _led3: []
	line	250
	
i1l3607:	
;number.c: 250: TRISB5 = 0;
	bcf	(45/8),(45)&7	;volatile
	line	251
;number.c: 251: TRISB3 = 0;
	bcf	(43/8),(43)&7	;volatile
	line	252
;number.c: 252: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	253
;number.c: 253: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	254
	
i1l2086:	
	return
	opt stack 0
GLOBAL	__end_of_led3
	__end_of_led3:
	signat	_led3,89
	global	_led2

;; *************** function _led2 *****************
;; Defined at:
;;		line 240 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	240
global __ptext24
__ptext24:	;psect for function _led2
psect	text24
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	240
	global	__size_of_led2
	__size_of_led2	equ	__end_of_led2-_led2
	
_led2:	
;incstack = 0
	opt	stack 1
; Regs used in _led2: []
	line	242
	
i1l3605:	
;number.c: 242: TRISB4 = 0;
	bcf	(44/8),(44)&7	;volatile
	line	243
;number.c: 243: TRISB3 = 0;
	bcf	(43/8),(43)&7	;volatile
	line	244
;number.c: 244: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	245
;number.c: 245: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	246
	
i1l2083:	
	return
	opt stack 0
GLOBAL	__end_of_led2
	__end_of_led2:
	signat	_led2,89
	global	_led1

;; *************** function _led1 *****************
;; Defined at:
;;		line 232 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	232
global __ptext25
__ptext25:	;psect for function _led1
psect	text25
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	232
	global	__size_of_led1
	__size_of_led1	equ	__end_of_led1-_led1
	
_led1:	
;incstack = 0
	opt	stack 1
; Regs used in _led1: []
	line	234
	
i1l3603:	
;number.c: 234: TRISB2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	235
;number.c: 235: TRISB3 = 0;
	bcf	(43/8),(43)&7	;volatile
	line	236
;number.c: 236: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	237
;number.c: 237: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	238
	
i1l2080:	
	return
	opt stack 0
GLOBAL	__end_of_led1
	__end_of_led1:
	signat	_led1,89
	global	_D7

;; *************** function _D7 *****************
;; Defined at:
;;		line 224 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	224
global __ptext26
__ptext26:	;psect for function _D7
psect	text26
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	224
	global	__size_of_D7
	__size_of_D7	equ	__end_of_D7-_D7
	
_D7:	
;incstack = 0
	opt	stack 1
; Regs used in _D7: []
	line	226
	
i1l3601:	
;number.c: 226: TRISB0 = 0;
	bcf	(40/8),(40)&7	;volatile
	line	227
;number.c: 227: TRISA5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1069/8)^080h,(1069)&7	;volatile
	line	228
;number.c: 228: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	229
;number.c: 229: RA5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	230
	
i1l2077:	
	return
	opt stack 0
GLOBAL	__end_of_D7
	__end_of_D7:
	signat	_D7,89
	global	_D6

;; *************** function _D6 *****************
;; Defined at:
;;		line 216 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	line	216
global __ptext27
__ptext27:	;psect for function _D6
psect	text27
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	216
	global	__size_of_D6
	__size_of_D6	equ	__end_of_D6-_D6
	
_D6:	
;incstack = 0
	opt	stack 1
; Regs used in _D6: []
	line	218
	
i1l3599:	
;number.c: 218: TRISB0 = 0;
	bcf	(40/8),(40)&7	;volatile
	line	219
;number.c: 219: TRISA6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1070/8)^080h,(1070)&7	;volatile
	line	220
;number.c: 220: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	221
;number.c: 221: RA6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1078/8)^080h,(1078)&7	;volatile
	line	222
	
i1l2074:	
	return
	opt stack 0
GLOBAL	__end_of_D6
	__end_of_D6:
	signat	_D6,89
	global	_D5

;; *************** function _D5 *****************
;; Defined at:
;;		line 207 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	line	207
global __ptext28
__ptext28:	;psect for function _D5
psect	text28
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	207
	global	__size_of_D5
	__size_of_D5	equ	__end_of_D5-_D5
	
_D5:	
;incstack = 0
	opt	stack 1
; Regs used in _D5: []
	line	209
	
i1l3597:	
;number.c: 209: TRISB7 = 0;
	bcf	(47/8),(47)&7	;volatile
	line	210
;number.c: 210: TRISA5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1069/8)^080h,(1069)&7	;volatile
	line	211
;number.c: 211: RB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	212
;number.c: 212: RA5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	213
	
i1l2071:	
	return
	opt stack 0
GLOBAL	__end_of_D5
	__end_of_D5:
	signat	_D5,89
	global	_D4

;; *************** function _D4 *****************
;; Defined at:
;;		line 199 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	line	199
global __ptext29
__ptext29:	;psect for function _D4
psect	text29
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	199
	global	__size_of_D4
	__size_of_D4	equ	__end_of_D4-_D4
	
_D4:	
;incstack = 0
	opt	stack 1
; Regs used in _D4: []
	line	201
	
i1l3595:	
;number.c: 201: TRISB7 = 0;
	bcf	(47/8),(47)&7	;volatile
	line	202
;number.c: 202: TRISA6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1070/8)^080h,(1070)&7	;volatile
	line	203
;number.c: 203: RB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	204
;number.c: 204: RA6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1078/8)^080h,(1078)&7	;volatile
	line	205
	
i1l2068:	
	return
	opt stack 0
GLOBAL	__end_of_D4
	__end_of_D4:
	signat	_D4,89
	global	_D3

;; *************** function _D3 *****************
;; Defined at:
;;		line 191 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	line	191
global __ptext30
__ptext30:	;psect for function _D3
psect	text30
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	191
	global	__size_of_D3
	__size_of_D3	equ	__end_of_D3-_D3
	
_D3:	
;incstack = 0
	opt	stack 1
; Regs used in _D3: []
	line	193
	
i1l3593:	
;number.c: 193: TRISB7 = 0;
	bcf	(47/8),(47)&7	;volatile
	line	194
;number.c: 194: TRISB0 = 0;
	bcf	(40/8),(40)&7	;volatile
	line	195
;number.c: 195: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	196
;number.c: 196: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	197
	
i1l2065:	
	return
	opt stack 0
GLOBAL	__end_of_D3
	__end_of_D3:
	signat	_D3,89
	global	_D2

;; *************** function _D2 *****************
;; Defined at:
;;		line 183 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=0
	line	183
global __ptext31
__ptext31:	;psect for function _D2
psect	text31
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	183
	global	__size_of_D2
	__size_of_D2	equ	__end_of_D2-_D2
	
_D2:	
;incstack = 0
	opt	stack 1
; Regs used in _D2: []
	line	185
	
i1l3591:	
;number.c: 185: TRISB7 = 0;
	bcf	(47/8),(47)&7	;volatile
	line	186
;number.c: 186: TRISA5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1069/8)^080h,(1069)&7	;volatile
	line	187
;number.c: 187: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	188
;number.c: 188: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	189
	
i1l2062:	
	return
	opt stack 0
GLOBAL	__end_of_D2
	__end_of_D2:
	signat	_D2,89
	global	_D1

;; *************** function _D1 *****************
;; Defined at:
;;		line 175 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=0
	line	175
global __ptext32
__ptext32:	;psect for function _D1
psect	text32
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	175
	global	__size_of_D1
	__size_of_D1	equ	__end_of_D1-_D1
	
_D1:	
;incstack = 0
	opt	stack 1
; Regs used in _D1: []
	line	177
	
i1l3589:	
;number.c: 177: TRISB7 = 0;
	bcf	(47/8),(47)&7	;volatile
	line	178
;number.c: 178: TRISA6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1070/8)^080h,(1070)&7	;volatile
	line	179
;number.c: 179: RA6 = 1;
	bsf	(1078/8)^080h,(1078)&7	;volatile
	line	180
;number.c: 180: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	181
	
i1l2059:	
	return
	opt stack 0
GLOBAL	__end_of_D1
	__end_of_D1:
	signat	_D1,89
	global	_C7

;; *************** function _C7 *****************
;; Defined at:
;;		line 167 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=0
	line	167
global __ptext33
__ptext33:	;psect for function _C7
psect	text33
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	167
	global	__size_of_C7
	__size_of_C7	equ	__end_of_C7-_C7
	
_C7:	
;incstack = 0
	opt	stack 1
; Regs used in _C7: []
	line	169
	
i1l3587:	
;number.c: 169: TRISB6 = 0;
	bcf	(46/8),(46)&7	;volatile
	line	170
;number.c: 170: TRISA6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1070/8)^080h,(1070)&7	;volatile
	line	171
;number.c: 171: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(54/8),(54)&7	;volatile
	line	172
;number.c: 172: RA6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1078/8)^080h,(1078)&7	;volatile
	line	173
	
i1l2056:	
	return
	opt stack 0
GLOBAL	__end_of_C7
	__end_of_C7:
	signat	_C7,89
	global	_C6

;; *************** function _C6 *****************
;; Defined at:
;;		line 159 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=0
	line	159
global __ptext34
__ptext34:	;psect for function _C6
psect	text34
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	159
	global	__size_of_C6
	__size_of_C6	equ	__end_of_C6-_C6
	
_C6:	
;incstack = 0
	opt	stack 1
; Regs used in _C6: []
	line	161
	
i1l3585:	
;number.c: 161: TRISB6 = 0;
	bcf	(46/8),(46)&7	;volatile
	line	162
;number.c: 162: TRISB0 = 0;
	bcf	(40/8),(40)&7	;volatile
	line	163
;number.c: 163: RB6 = 1;
	bsf	(54/8),(54)&7	;volatile
	line	164
;number.c: 164: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	165
	
i1l2053:	
	return
	opt stack 0
GLOBAL	__end_of_C6
	__end_of_C6:
	signat	_C6,89
	global	_C5

;; *************** function _C5 *****************
;; Defined at:
;;		line 151 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=0
	line	151
global __ptext35
__ptext35:	;psect for function _C5
psect	text35
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	151
	global	__size_of_C5
	__size_of_C5	equ	__end_of_C5-_C5
	
_C5:	
;incstack = 0
	opt	stack 1
; Regs used in _C5: []
	line	153
	
i1l3583:	
;number.c: 153: TRISB6 = 0;
	bcf	(46/8),(46)&7	;volatile
	line	154
;number.c: 154: TRISB7 = 0;
	bcf	(47/8),(47)&7	;volatile
	line	155
;number.c: 155: RB6 = 1;
	bsf	(54/8),(54)&7	;volatile
	line	156
;number.c: 156: RB7 = 0;
	bcf	(55/8),(55)&7	;volatile
	line	157
	
i1l2050:	
	return
	opt stack 0
GLOBAL	__end_of_C5
	__end_of_C5:
	signat	_C5,89
	global	_C4

;; *************** function _C4 *****************
;; Defined at:
;;		line 143 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=0
	line	143
global __ptext36
__ptext36:	;psect for function _C4
psect	text36
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	143
	global	__size_of_C4
	__size_of_C4	equ	__end_of_C4-_C4
	
_C4:	
;incstack = 0
	opt	stack 1
; Regs used in _C4: []
	line	145
	
i1l3581:	
;number.c: 145: TRISA5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1069/8)^080h,(1069)&7	;volatile
	line	146
;number.c: 146: TRISB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	line	147
;number.c: 147: RA5 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	148
;number.c: 148: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	line	149
	
i1l2047:	
	return
	opt stack 0
GLOBAL	__end_of_C4
	__end_of_C4:
	signat	_C4,89
	global	_C3

;; *************** function _C3 *****************
;; Defined at:
;;		line 135 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	line	135
global __ptext37
__ptext37:	;psect for function _C3
psect	text37
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	135
	global	__size_of_C3
	__size_of_C3	equ	__end_of_C3-_C3
	
_C3:	
;incstack = 0
	opt	stack 1
; Regs used in _C3: []
	line	137
	
i1l3579:	
;number.c: 137: TRISA6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1070/8)^080h,(1070)&7	;volatile
	line	138
;number.c: 138: TRISB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(46/8),(46)&7	;volatile
	line	139
;number.c: 139: RA6 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1078/8)^080h,(1078)&7	;volatile
	line	140
;number.c: 140: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	line	141
	
i1l2044:	
	return
	opt stack 0
GLOBAL	__end_of_C3
	__end_of_C3:
	signat	_C3,89
	global	_C2

;; *************** function _C2 *****************
;; Defined at:
;;		line 127 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=0
	line	127
global __ptext38
__ptext38:	;psect for function _C2
psect	text38
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	127
	global	__size_of_C2
	__size_of_C2	equ	__end_of_C2-_C2
	
_C2:	
;incstack = 0
	opt	stack 1
; Regs used in _C2: []
	line	129
	
i1l3577:	
;number.c: 129: TRISB0 = 0;
	bcf	(40/8),(40)&7	;volatile
	line	130
;number.c: 130: TRISB6 = 0;
	bcf	(46/8),(46)&7	;volatile
	line	131
;number.c: 131: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	132
;number.c: 132: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	133
	
i1l2041:	
	return
	opt stack 0
GLOBAL	__end_of_C2
	__end_of_C2:
	signat	_C2,89
	global	_C1

;; *************** function _C1 *****************
;; Defined at:
;;		line 119 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=0
	line	119
global __ptext39
__ptext39:	;psect for function _C1
psect	text39
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	119
	global	__size_of_C1
	__size_of_C1	equ	__end_of_C1-_C1
	
_C1:	
;incstack = 0
	opt	stack 1
; Regs used in _C1: []
	line	121
	
i1l3575:	
;number.c: 121: TRISB7 = 0;
	bcf	(47/8),(47)&7	;volatile
	line	122
;number.c: 122: TRISB6 = 0;
	bcf	(46/8),(46)&7	;volatile
	line	123
;number.c: 123: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	124
;number.c: 124: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	125
	
i1l2038:	
	return
	opt stack 0
GLOBAL	__end_of_C1
	__end_of_C1:
	signat	_C1,89
	global	_B7

;; *************** function _B7 *****************
;; Defined at:
;;		line 110 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=0
	line	110
global __ptext40
__ptext40:	;psect for function _B7
psect	text40
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	110
	global	__size_of_B7
	__size_of_B7	equ	__end_of_B7-_B7
	
_B7:	
;incstack = 0
	opt	stack 1
; Regs used in _B7: []
	line	112
	
i1l3573:	
;number.c: 112: TRISB3 = 0;
	bcf	(43/8),(43)&7	;volatile
	line	113
;number.c: 113: TRISB5 = 0;
	bcf	(45/8),(45)&7	;volatile
	line	114
;number.c: 114: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	115
;number.c: 115: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	116
	
i1l2035:	
	return
	opt stack 0
GLOBAL	__end_of_B7
	__end_of_B7:
	signat	_B7,89
	global	_B6

;; *************** function _B6 *****************
;; Defined at:
;;		line 102 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1,group=0
	line	102
global __ptext41
__ptext41:	;psect for function _B6
psect	text41
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	102
	global	__size_of_B6
	__size_of_B6	equ	__end_of_B6-_B6
	
_B6:	
;incstack = 0
	opt	stack 1
; Regs used in _B6: []
	line	104
	
i1l3571:	
;number.c: 104: TRISB3 = 0;
	bcf	(43/8),(43)&7	;volatile
	line	105
;number.c: 105: TRISB4 = 0;
	bcf	(44/8),(44)&7	;volatile
	line	106
;number.c: 106: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	107
;number.c: 107: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	108
	
i1l2032:	
	return
	opt stack 0
GLOBAL	__end_of_B6
	__end_of_B6:
	signat	_B6,89
	global	_B5

;; *************** function _B5 *****************
;; Defined at:
;;		line 93 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1,group=0
	line	93
global __ptext42
__ptext42:	;psect for function _B5
psect	text42
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	93
	global	__size_of_B5
	__size_of_B5	equ	__end_of_B5-_B5
	
_B5:	
;incstack = 0
	opt	stack 1
; Regs used in _B5: []
	line	95
	
i1l3569:	
;number.c: 95: TRISB2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	96
;number.c: 96: TRISB5 = 0;
	bcf	(45/8),(45)&7	;volatile
	line	97
;number.c: 97: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	98
;number.c: 98: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	99
	
i1l2029:	
	return
	opt stack 0
GLOBAL	__end_of_B5
	__end_of_B5:
	signat	_B5,89
	global	_B4

;; *************** function _B4 *****************
;; Defined at:
;;		line 85 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1,group=0
	line	85
global __ptext43
__ptext43:	;psect for function _B4
psect	text43
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	85
	global	__size_of_B4
	__size_of_B4	equ	__end_of_B4-_B4
	
_B4:	
;incstack = 0
	opt	stack 1
; Regs used in _B4: []
	line	87
	
i1l3567:	
;number.c: 87: TRISB2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	88
;number.c: 88: TRISB4 = 0;
	bcf	(44/8),(44)&7	;volatile
	line	89
;number.c: 89: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	90
;number.c: 90: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	91
	
i1l2026:	
	return
	opt stack 0
GLOBAL	__end_of_B4
	__end_of_B4:
	signat	_B4,89
	global	_B3

;; *************** function _B3 *****************
;; Defined at:
;;		line 77 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1,group=0
	line	77
global __ptext44
__ptext44:	;psect for function _B3
psect	text44
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	77
	global	__size_of_B3
	__size_of_B3	equ	__end_of_B3-_B3
	
_B3:	
;incstack = 0
	opt	stack 1
; Regs used in _B3: []
	line	79
	
i1l3565:	
;number.c: 79: TRISB2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	80
;number.c: 80: TRISB3 = 0;
	bcf	(43/8),(43)&7	;volatile
	line	81
;number.c: 81: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	82
;number.c: 82: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	83
	
i1l2023:	
	return
	opt stack 0
GLOBAL	__end_of_B3
	__end_of_B3:
	signat	_B3,89
	global	_B2

;; *************** function _B2 *****************
;; Defined at:
;;		line 69 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1,group=0
	line	69
global __ptext45
__ptext45:	;psect for function _B2
psect	text45
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	69
	global	__size_of_B2
	__size_of_B2	equ	__end_of_B2-_B2
	
_B2:	
;incstack = 0
	opt	stack 1
; Regs used in _B2: []
	line	71
	
i1l3563:	
;number.c: 71: TRISB2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	72
;number.c: 72: TRISB5 = 0;
	bcf	(45/8),(45)&7	;volatile
	line	73
;number.c: 73: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	74
;number.c: 74: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	75
	
i1l2020:	
	return
	opt stack 0
GLOBAL	__end_of_B2
	__end_of_B2:
	signat	_B2,89
	global	_B1

;; *************** function _B1 *****************
;; Defined at:
;;		line 61 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1,group=0
	line	61
global __ptext46
__ptext46:	;psect for function _B1
psect	text46
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	61
	global	__size_of_B1
	__size_of_B1	equ	__end_of_B1-_B1
	
_B1:	
;incstack = 0
	opt	stack 1
; Regs used in _B1: []
	line	63
	
i1l3561:	
;number.c: 63: TRISB2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	64
;number.c: 64: TRISB4 = 0;
	bcf	(44/8),(44)&7	;volatile
	line	65
;number.c: 65: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	66
;number.c: 66: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	67
	
i1l2017:	
	return
	opt stack 0
GLOBAL	__end_of_B1
	__end_of_B1:
	signat	_B1,89
	global	_A7

;; *************** function _A7 *****************
;; Defined at:
;;		line 53 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1,group=0
	line	53
global __ptext47
__ptext47:	;psect for function _A7
psect	text47
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	53
	global	__size_of_A7
	__size_of_A7	equ	__end_of_A7-_A7
	
_A7:	
;incstack = 0
	opt	stack 1
; Regs used in _A7: []
	line	55
	
i1l3559:	
;number.c: 55: TRISB1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	56
;number.c: 56: TRISB4 = 0;
	bcf	(44/8),(44)&7	;volatile
	line	57
;number.c: 57: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	58
;number.c: 58: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	59
	
i1l2014:	
	return
	opt stack 0
GLOBAL	__end_of_A7
	__end_of_A7:
	signat	_A7,89
	global	_A6

;; *************** function _A6 *****************
;; Defined at:
;;		line 45 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text48,local,class=CODE,delta=2,merge=1,group=0
	line	45
global __ptext48
__ptext48:	;psect for function _A6
psect	text48
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	45
	global	__size_of_A6
	__size_of_A6	equ	__end_of_A6-_A6
	
_A6:	
;incstack = 0
	opt	stack 1
; Regs used in _A6: []
	line	47
	
i1l3557:	
;number.c: 47: TRISB1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	48
;number.c: 48: TRISB3 = 0;
	bcf	(43/8),(43)&7	;volatile
	line	49
;number.c: 49: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	50
;number.c: 50: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	51
	
i1l2011:	
	return
	opt stack 0
GLOBAL	__end_of_A6
	__end_of_A6:
	signat	_A6,89
	global	_A5

;; *************** function _A5 *****************
;; Defined at:
;;		line 37 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1,group=0
	line	37
global __ptext49
__ptext49:	;psect for function _A5
psect	text49
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	37
	global	__size_of_A5
	__size_of_A5	equ	__end_of_A5-_A5
	
_A5:	
;incstack = 0
	opt	stack 1
; Regs used in _A5: []
	line	39
	
i1l3555:	
;number.c: 39: TRISB1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	40
;number.c: 40: TRISB2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	41
;number.c: 41: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	42
;number.c: 42: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	43
	
i1l2008:	
	return
	opt stack 0
GLOBAL	__end_of_A5
	__end_of_A5:
	signat	_A5,89
	global	_A4

;; *************** function _A4 *****************
;; Defined at:
;;		line 29 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text50,local,class=CODE,delta=2,merge=1,group=0
	line	29
global __ptext50
__ptext50:	;psect for function _A4
psect	text50
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	29
	global	__size_of_A4
	__size_of_A4	equ	__end_of_A4-_A4
	
_A4:	
;incstack = 0
	opt	stack 1
; Regs used in _A4: []
	line	31
	
i1l3553:	
;number.c: 31: TRISB5 = 0;
	bcf	(45/8),(45)&7	;volatile
	line	32
;number.c: 32: TRISB1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	33
;number.c: 33: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	34
;number.c: 34: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	35
	
i1l2005:	
	return
	opt stack 0
GLOBAL	__end_of_A4
	__end_of_A4:
	signat	_A4,89
	global	_A3

;; *************** function _A3 *****************
;; Defined at:
;;		line 21 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text51,local,class=CODE,delta=2,merge=1,group=0
	line	21
global __ptext51
__ptext51:	;psect for function _A3
psect	text51
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	21
	global	__size_of_A3
	__size_of_A3	equ	__end_of_A3-_A3
	
_A3:	
;incstack = 0
	opt	stack 1
; Regs used in _A3: []
	line	23
	
i1l3551:	
;number.c: 23: TRISB4 = 0;
	bcf	(44/8),(44)&7	;volatile
	line	24
;number.c: 24: TRISB1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	25
;number.c: 25: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	26
;number.c: 26: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	27
	
i1l2002:	
	return
	opt stack 0
GLOBAL	__end_of_A3
	__end_of_A3:
	signat	_A3,89
	global	_A2

;; *************** function _A2 *****************
;; Defined at:
;;		line 13 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text52,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext52
__ptext52:	;psect for function _A2
psect	text52
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	13
	global	__size_of_A2
	__size_of_A2	equ	__end_of_A2-_A2
	
_A2:	
;incstack = 0
	opt	stack 1
; Regs used in _A2: []
	line	15
	
i1l3549:	
;number.c: 15: TRISB3 = 0;
	bcf	(43/8),(43)&7	;volatile
	line	16
;number.c: 16: TRISB1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	17
;number.c: 17: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	18
;number.c: 18: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	19
	
i1l1999:	
	return
	opt stack 0
GLOBAL	__end_of_A2
	__end_of_A2:
	signat	_A2,89
	global	_A1

;; *************** function _A1 *****************
;; Defined at:
;;		line 5 in file "C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text53,local,class=CODE,delta=2,merge=1,group=0
	line	5
global __ptext53
__ptext53:	;psect for function _A1
psect	text53
	file	"C:\mcuproject\scm\zdt\C103_8F083_tssop20_\C103_8F083_tssop20_\number.c"
	line	5
	global	__size_of_A1
	__size_of_A1	equ	__end_of_A1-_A1
	
_A1:	
;incstack = 0
	opt	stack 1
; Regs used in _A1: []
	line	7
	
i1l3547:	
;number.c: 7: TRISB2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	8
;number.c: 8: TRISB1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	9
;number.c: 9: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	10
;number.c: 10: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	11
	
i1l1996:	
	return
	opt stack 0
GLOBAL	__end_of_A1
	__end_of_A1:
	signat	_A1,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
