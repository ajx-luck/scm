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
	FNCALL	_main,_Sleep_Mode
	FNCALL	_main,_checkBatAD
	FNCALL	_main,_checkOutA
	FNCALL	_main,_chrgCtr
	FNCALL	_main,_keyCtr
	FNCALL	_main,_ledCtr
	FNCALL	_main,_refreshLed
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,___lwdiv
	FNCALL	_workCtr,_pwm1Init
	FNCALL	_workCtr,_pwm1Stop
	FNCALL	_refreshLed,_DelayUs
	FNCALL	_refreshLed,_ledOpen
	FNCALL	_ledCtr,___lbdiv
	FNCALL	_ledCtr,___lbmod
	FNCALL	_ledCtr,___lwdiv
	FNCALL	_keyCtr,_keyRead
	FNCALL	_keyCtr,_keyRead2
	FNCALL	_keyCtr,_keyRead3
	FNCALL	_keyCtr,_keyRead4
	FNCALL	_chrgCtr,_pwm1Stop
	FNCALL	_chrgCtr,_pwm2Init
	FNCALL	_chrgCtr,_pwm2Stop
	FNCALL	_checkOutA,_ADC_Sample
	FNCALL	_checkOutA,_pwm2Stop
	FNCALL	_checkBatAD,_ADC_Sample
	FNCALL	_checkBatAD,_pwm1Stop
	FNCALL	_checkBatAD,_pwm2Stop
	FNCALL	_Sleep_Mode,_Init_System
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_showNumAShi
	global	_showNumAge
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
	line	6

;initializer for _showNumAShi
	retlw	07Fh
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	line	7

;initializer for _showNumAge
	retlw	07Fh
	global	_stopTime
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
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	17
_stopTime:
	retlw	05Ah
	retlw	050h
	retlw	04Bh
	retlw	046h
	retlw	041h
	retlw	03Ch
	retlw	031h
	retlw	027h
	retlw	020h
	retlw	01Bh
	retlw	019h
	retlw	016h
	retlw	013h
	retlw	012h
	retlw	010h
	retlw	0Eh
	retlw	0Ch
	global __end_of_stopTime
__end_of_stopTime:
	global	_startTime
psect	strings
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	16
_startTime:
	retlw	0D2h
	retlw	0BEh
	retlw	0B4h
	retlw	0A0h
	retlw	08Ch
	retlw	078h
	retlw	064h
	retlw	056h
	retlw	047h
	retlw	03Ch
	retlw	035h
	retlw	02Fh
	retlw	02Bh
	retlw	027h
	retlw	023h
	retlw	01Fh
	retlw	01Fh
	global __end_of_startTime
__end_of_startTime:
	global	_numArray
psect	strings
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	15
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
	global	_stopTime
	global	_startTime
	global	_numArray
	global	_workStep
	global	_B_OnOff
	global	_B_MainLoop
	global	_power_ad
	global	_result
	global	_adresult
	global	_count20s
	global	_workTime
	global	_sumBatValue
	global	_chrgAD
	global	_fullCount
	global	_tempData
	global	_closeCount
	global	_count900s
	global	_count5s
	global	_sleepTime
	global	_ledCnt
	global	_test_adc
	global	_chrgCloseTime
	global	_lowBatFlag
	global	_showBatTime
	global	_chrgPWMFlag
	global	_motorPWMFlag
	global	_showWorkTime
	global	_shanshuoTime
	global	_showWorkFlag
	global	_modelStep
	global	_firstCheckTime
	global	_protectFlag
	global	_chrgMaxAD
	global	_lockCount
	global	_chrgBatCount
	global	_chrgMode
	global	_intCount10
	global	_countHalfFull
	global	_chrgWaitTime
	global	_addTime
	global	_subTime
	global	_chrgFullFlag
	global	_maxduty
	global	_preBatValue
	global	_workDuty
	global	_batValue
	global	_keyCount4
	global	_keyCount3
	global	_keyCount2
	global	_keyCount
	global	_longPressFlag
	global	_count1s
	global	_chrgFlag
	global	_MainTime
	global	_beepTime
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_beepTime:
       ds      1

	global	_firstShowCount
_firstShowCount:
       ds      1

	global	_PWMD01H
_PWMD01H	set	30
	global	_PWMCON2
_PWMCON2	set	29
	global	_PWMT4L
_PWMT4L	set	28
	global	_PWMD4L
_PWMD4L	set	27
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
	global	_RBIF
_RBIF	set	88
	global	_RBIE
_RBIE	set	91
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
	global	_PORTA
_PORTA	set	134
	global	_TRISA
_TRISA	set	133
	global	_LDO_EN
_LDO_EN	set	1202
	global	_CHS4
_CHS4	set	1206
	global	_ADON
_ADON	set	1192
	global	_GODONE
_GODONE	set	1193
	global	_RA3
_RA3	set	1075
	global	_RA7
_RA7	set	1079
	global	_PORTC
_PORTC	set	262
	global	_TRISC
_TRISC	set	261
; #config settings
	file	"D257_8F083_tssop20_.as"
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

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
	line	6
_showNumAShi:
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

_count20s:
       ds      2

_workTime:
       ds      2

_sumBatValue:
       ds      2

_chrgAD:
       ds      2

_fullCount:
       ds      2

_tempData:
       ds      2

_closeCount:
       ds      2

_count900s:
       ds      2

_count5s:
       ds      2

_sleepTime:
       ds      2

_ledCnt:
       ds      1

_test_adc:
       ds      1

_chrgCloseTime:
       ds      1

_lowBatFlag:
       ds      1

_showBatTime:
       ds      1

_chrgPWMFlag:
       ds      1

_motorPWMFlag:
       ds      1

_showWorkTime:
       ds      1

_shanshuoTime:
       ds      1

_showWorkFlag:
       ds      1

_modelStep:
       ds      1

_firstCheckTime:
       ds      1

_protectFlag:
       ds      1

_chrgMaxAD:
       ds      1

_lockCount:
       ds      1

_chrgBatCount:
       ds      1

_chrgMode:
       ds      1

_intCount10:
       ds      1

_countHalfFull:
       ds      1

_chrgWaitTime:
       ds      1

_addTime:
       ds      1

_subTime:
       ds      1

_chrgFullFlag:
       ds      1

_maxduty:
       ds      1

_preBatValue:
       ds      1

_workDuty:
       ds      1

_batValue:
       ds      1

_keyCount4:
       ds      1

_keyCount3:
       ds      1

_keyCount2:
       ds      1

_keyCount:
       ds      1

_longPressFlag:
       ds      1

_count1s:
       ds      1

_chrgFlag:
       ds      1

_MainTime:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
	line	7
_showNumAge:
       ds      1

	file	"D257_8F083_tssop20_.as"
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

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+03Dh)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
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
?_pwm2Stop:	; 1 bytes @ 0x0
?_pwm1Stop:	; 1 bytes @ 0x0
?_refreshLed:	; 1 bytes @ 0x0
?_DelayUs:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_checkOutA:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_pwm1Init:	; 1 bytes @ 0x0
?_pwm2Init:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
?_keyRead2:	; 1 bytes @ 0x0
?_keyRead3:	; 1 bytes @ 0x0
?_keyRead4:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_ledCtr:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	ds	2
??_pwm2Stop:	; 1 bytes @ 0x2
??_pwm1Stop:	; 1 bytes @ 0x2
??_DelayUs:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_Sleep_Mode:	; 1 bytes @ 0x2
?_ADC_Sample:	; 1 bytes @ 0x2
??_pwm1Init:	; 1 bytes @ 0x2
??_pwm2Init:	; 1 bytes @ 0x2
??_chrgCtr:	; 1 bytes @ 0x2
??_keyRead:	; 1 bytes @ 0x2
??_keyRead2:	; 1 bytes @ 0x2
??_keyRead3:	; 1 bytes @ 0x2
??_keyRead4:	; 1 bytes @ 0x2
?_ledOpen:	; 1 bytes @ 0x2
?___lbdiv:	; 1 bytes @ 0x2
?___lbmod:	; 1 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x2
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x2
	global	keyRead2@keyStatus
keyRead2@keyStatus:	; 1 bytes @ 0x2
	global	keyRead3@keyStatus
keyRead3@keyStatus:	; 1 bytes @ 0x2
	global	keyRead4@keyStatus
keyRead4@keyStatus:	; 1 bytes @ 0x2
	global	ledOpen@low
ledOpen@low:	; 1 bytes @ 0x2
	global	DelayUs@Time
DelayUs@Time:	; 1 bytes @ 0x2
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	ds	1
??_ADC_Sample:	; 1 bytes @ 0x3
??_keyCtr:	; 1 bytes @ 0x3
??_ledOpen:	; 1 bytes @ 0x3
??___lbdiv:	; 1 bytes @ 0x3
??___lbmod:	; 1 bytes @ 0x3
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x3
	global	ledOpen@hight
ledOpen@hight:	; 1 bytes @ 0x3
	global	DelayUs@a
DelayUs@a:	; 1 bytes @ 0x3
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x3
	ds	1
??_refreshLed:	; 1 bytes @ 0x4
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x4
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	ds	1
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x5
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	global	chrgCtr@waitMaxTime
chrgCtr@waitMaxTime:	; 2 bytes @ 0x5
	ds	1
??___lwdiv:	; 1 bytes @ 0x6
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
??_checkOutA:	; 1 bytes @ 0x7
??_checkBatAD:	; 1 bytes @ 0x7
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x7
	ds	2
??_main:	; 1 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_workCtr:	; 1 bytes @ 0x0
??_ledCtr:	; 1 bytes @ 0x0
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x0
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x1
	global	ledCtr@tempMinute
ledCtr@tempMinute:	; 1 bytes @ 0x1
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x2
	global	workCtr@tempStopTime
workCtr@tempStopTime:	; 2 bytes @ 0x2
	ds	1
	global	ADC_Sample@adsum
ADC_Sample@adsum:	; 4 bytes @ 0x3
	ds	1
	global	workCtr@tempStartTime
workCtr@tempStartTime:	; 2 bytes @ 0x4
	ds	3
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
;!    Constant    47
;!    Data        2
;!    BSS         62
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      12
;!    BANK0            80     13      77
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_checkBatAD
;!    _workCtr->___lwdiv
;!    _refreshLed->_DelayUs
;!    _refreshLed->_ledOpen
;!    _ledCtr->___lwdiv
;!    _keyCtr->_keyRead
;!    _keyCtr->_keyRead2
;!    _keyCtr->_keyRead3
;!    _keyCtr->_keyRead4
;!    _checkOutA->_ADC_Sample
;!    _checkBatAD->_ADC_Sample
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _checkOutA->_ADC_Sample
;!    _checkBatAD->_ADC_Sample
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
;! (0) _main                                                 0     0      0    4658
;!                        _Init_System
;!                         _Sleep_Mode
;!                         _checkBatAD
;!                          _checkOutA
;!                            _chrgCtr
;!                             _keyCtr
;!                             _ledCtr
;!                         _refreshLed
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              6     6      0     600
;!                                              0 BANK0      6     6      0
;!                            ___lwdiv
;!                           _pwm1Init
;!                           _pwm1Stop
;! ---------------------------------------------------------------------------------
;! (2) _pwm1Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _refreshLed                                           0     0      0     832
;!                            _DelayUs
;!                            _ledOpen
;! ---------------------------------------------------------------------------------
;! (2) _ledOpen                                              2     1      1     786
;!                                              2 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (2) _DelayUs                                              2     2      0      46
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _ledCtr                                               2     2      0    1624
;!                                              0 BANK0      2     2      0
;!                            ___lbdiv
;!                            ___lbmod
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     501
;!                                              2 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     557
;!                                              2 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     501
;!                                              2 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0     202
;!                                              3 COMMON     1     1      0
;!                            _keyRead
;!                           _keyRead2
;!                           _keyRead3
;!                           _keyRead4
;! ---------------------------------------------------------------------------------
;! (2) _keyRead4                                             1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _keyRead3                                             1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _keyRead2                                             1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              5     5      0      24
;!                                              2 COMMON     5     5      0
;!                           _pwm1Stop
;!                           _pwm2Init
;!                           _pwm2Stop
;! ---------------------------------------------------------------------------------
;! (2) _pwm2Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkOutA                                            0     0      0     688
;!                         _ADC_Sample
;!                           _pwm2Stop
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           2     2      0     688
;!                                              7 COMMON     2     2      0
;!                         _ADC_Sample
;!                           _pwm1Stop
;!                           _pwm2Stop
;! ---------------------------------------------------------------------------------
;! (2) _pwm2Stop                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwm1Stop                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                          18    17      1     688
;!                                              2 COMMON     5     4      1
;!                                              0 BANK0     13    13      0
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Mode                                           0     0      0       0
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (2) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _Isr_Timer                                            2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_System
;!   _Sleep_Mode
;!     _Init_System
;!   _checkBatAD
;!     _ADC_Sample
;!     _pwm1Stop
;!     _pwm2Stop
;!   _checkOutA
;!     _ADC_Sample
;!     _pwm2Stop
;!   _chrgCtr
;!     _pwm1Stop
;!     _pwm2Init
;!     _pwm2Stop
;!   _keyCtr
;!     _keyRead
;!     _keyRead2
;!     _keyRead3
;!     _keyRead4
;!   _ledCtr
;!     ___lbdiv
;!     ___lbmod
;!     ___lwdiv
;!   _refreshLed
;!     _DelayUs
;!     _ledOpen
;!   _workCtr
;!     ___lwdiv
;!     _pwm1Init
;!     _pwm1Stop
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
;!BANK1               50      0       0       6        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      D      4D       4       96.3%
;!BITBANK0            50      0       0       3        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      9       C       1       85.7%
;!BITCOMMON            E      0       1       0        7.1%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      59       9        0.0%
;!ABS                  0      0      59       8        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 1003 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Init_System
;;		_Sleep_Mode
;;		_checkBatAD
;;		_checkOutA
;;		_chrgCtr
;;		_keyCtr
;;		_ledCtr
;;		_refreshLed
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	1003
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	1003
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	1006
	
l4623:	
;main.c: 1006: Init_System();
	fcall	_Init_System
	line	1007
	
l4625:	
;main.c: 1007: beepTime = 30;
	movlw	low(01Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_beepTime)
	line	1008
	
l4627:	
;main.c: 1008: firstShowCount = 200;
	movlw	low(0C8h)
	movwf	(_firstShowCount)
	line	1011
	
l4629:	
;main.c: 1010: {
;main.c: 1011: refreshLed();
	fcall	_refreshLed
	line	1012
	
l4631:	
;main.c: 1012: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u3621
	goto	u3620
u3621:
	goto	l4629
u3620:
	line	1014
	
l4633:	
;main.c: 1013: {
;main.c: 1014: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	1015
# 1015 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
clrwdt ;# 
psect	maintext
	line	1016
	
l4635:	
;main.c: 1016: checkOutA();
	fcall	_checkOutA
	line	1017
	
l4637:	
;main.c: 1017: ledCtr();
	fcall	_ledCtr
	line	1018
	
l4639:	
;main.c: 1018: if(chrgFlag == 0 && lowBatFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l4645
u3630:
	
l4641:	
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3641
	goto	u3640
u3641:
	goto	l4645
u3640:
	line	1019
	
l4643:	
;main.c: 1019: keyCtr();
	fcall	_keyCtr
	line	1020
	
l4645:	
;main.c: 1020: workCtr();
	fcall	_workCtr
	line	1021
	
l4647:	
;main.c: 1021: chrgCtr();
	fcall	_chrgCtr
	line	1022
	
l4649:	
;main.c: 1022: checkBatAD();
	fcall	_checkBatAD
	line	1023
	
l4651:	
;main.c: 1023: if(workStep == 0 && keyCount == 0 && chrgFlag == 0 && firstShowCount == 0 && showWorkTime == 0 && showBatTime == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u3651
	goto	u3650
u3651:
	goto	l4669
u3650:
	
l4653:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l4669
u3660:
	
l4655:	
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l4669
u3670:
	
l4657:	
	movf	((_firstShowCount)),w
	btfss	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l4669
u3680:
	
l4659:	
	movf	((_showWorkTime)),w
	btfss	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l4669
u3690:
	
l4661:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l4669
u3700:
	line	1026
	
l4663:	
;main.c: 1024: {
;main.c: 1026: if(++sleepTime > 250)
	incf	(_sleepTime),f
	skipnz
	incf	(_sleepTime+1),f
	movlw	0
	subwf	((_sleepTime+1)),w
	movlw	0FBh
	skipnz
	subwf	((_sleepTime)),w
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l1200
u3710:
	line	1028
	
l4665:	
;main.c: 1027: {
;main.c: 1028: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	1029
	
l4667:	
;main.c: 1029: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l4629
	line	1034
	
l4669:	
;main.c: 1032: else
;main.c: 1033: {
;main.c: 1034: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	goto	l4629
	line	1038
	
l1200:	
	goto	l4629
	global	start
	ljmp	start
	opt stack 0
	line	1040
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 658 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempStartTim    2    4[BANK0 ] unsigned int 
;;  tempStopTime    2    2[BANK0 ] unsigned int 
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
;;      Locals:         0       4       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		_pwm1Init
;;		_pwm1Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	658
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	658
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	660
	
l4487:	
;main.c: 660: if(++count5s >= 8000)
	incf	(_count5s),f
	skipnz
	incf	(_count5s+1),f
	movlw	01Fh
	subwf	((_count5s+1)),w
	movlw	040h
	skipnz
	subwf	((_count5s)),w
	skipc
	goto	u3301
	goto	u3300
u3301:
	goto	l4507
u3300:
	line	662
	
l4489:	
;main.c: 661: {
;main.c: 662: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	663
	
l4491:	
;main.c: 663: if(chrgFlag && preBatValue < 99 && batValue >= preBatValue)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3311
	goto	u3310
u3311:
	goto	l4499
u3310:
	
l4493:	
	movlw	low(063h)
	subwf	(_preBatValue),w
	skipnc
	goto	u3321
	goto	u3320
u3321:
	goto	l4499
u3320:
	
l4495:	
	movf	(_preBatValue),w
	subwf	(_batValue),w
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l4499
u3330:
	line	665
	
l4497:	
;main.c: 664: {
;main.c: 665: preBatValue = preBatValue+1;
	incf	(_preBatValue),f
	line	667
	
l4499:	
;main.c: 666: }
;main.c: 667: if(chrgFlag && chrgFullFlag && preBatValue < 99)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l4507
u3340:
	
l4501:	
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l4507
u3350:
	
l4503:	
	movlw	low(063h)
	subwf	(_preBatValue),w
	skipnc
	goto	u3361
	goto	u3360
u3361:
	goto	l4507
u3360:
	line	669
	
l4505:	
;main.c: 668: {
;main.c: 669: preBatValue = preBatValue+1;
	incf	(_preBatValue),f
	line	672
	
l4507:	
;main.c: 670: }
;main.c: 671: }
;main.c: 672: if(beepTime > 0)
	movf	((_beepTime)),w
	btfsc	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l1105
u3370:
	line	674
	
l4509:	
;main.c: 673: {
;main.c: 674: beepTime--;
	decf	(_beepTime),f
	line	675
;main.c: 675: }
	goto	l4511
	line	676
	
l1105:	
	line	678
;main.c: 676: else
;main.c: 677: {
;main.c: 678: PORTA &= 0x7F;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(7/8),(7)&7	;volatile
	line	680
	
l4511:	
;main.c: 679: }
;main.c: 680: if(firstShowCount > 0 && firstShowCount < 150)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_firstShowCount)),w
	btfsc	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l4519
u3380:
	
l4513:	
	movlw	low(096h)
	subwf	(_firstShowCount),w
	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l4519
u3390:
	line	682
	
l4515:	
;main.c: 681: {
;main.c: 682: sumBatValue += batValue;
	movf	(_batValue),w
	addwf	(_sumBatValue),f
	skipnc
	incf	(_sumBatValue+1),f
	line	683
	
l4517:	
;main.c: 683: firstCheckTime++;
	incf	(_firstCheckTime),f
	line	684
;main.c: 684: }
	goto	l4527
	line	687
	
l4519:	
;main.c: 685: else
;main.c: 686: {
;main.c: 687: if(sumBatValue > 0)
	movf	((_sumBatValue)),w
iorwf	((_sumBatValue+1)),w
	btfsc	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l4523
u3400:
	line	689
	
l4521:	
;main.c: 688: {
;main.c: 689: preBatValue = sumBatValue/firstCheckTime;
	movf	(_firstCheckTime),w
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_sumBatValue+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(_sumBatValue),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(_preBatValue)
	line	691
	
l4523:	
;main.c: 690: }
;main.c: 691: firstCheckTime = 0;
	clrf	(_firstCheckTime)
	line	692
	
l4525:	
;main.c: 692: sumBatValue = 0;
	clrf	(_sumBatValue)
	clrf	(_sumBatValue+1)
	line	694
	
l4527:	
;main.c: 693: }
;main.c: 694: if(firstShowCount > 0)
	movf	((_firstShowCount)),w
	btfsc	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l4531
u3410:
	line	696
	
l4529:	
;main.c: 695: {
;main.c: 696: firstShowCount--;
	decf	(_firstShowCount),f
	line	699
	
l4531:	
;main.c: 697: }
;main.c: 699: if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l4539
u3420:
	line	701
	
l4533:	
;main.c: 700: {
;main.c: 701: if(workStep)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l4537
u3430:
	line	703
	
l4535:	
;main.c: 702: {
;main.c: 703: ++count900s;
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	line	704
;main.c: 704: }
	goto	l4539
	line	707
	
l4537:	
;main.c: 705: else
;main.c: 706: {
;main.c: 707: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	710
	
l4539:	
;main.c: 708: }
;main.c: 709: }
;main.c: 710: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l4545
u3440:
	line	712
	
l4541:	
;main.c: 711: {
;main.c: 712: workDuty = 64 + (workStep*2);
	clrc
	rlf	(_workStep),w
	addlw	040h
	movwf	(_workDuty)
	line	714
	
l4543:	
;main.c: 714: PWMD0L = workDuty;
	movf	(_workDuty),w
	movwf	(25)	;volatile
	line	715
;main.c: 715: }
	goto	l4549
	line	718
	
l4545:	
;main.c: 716: else
;main.c: 717: {
;main.c: 718: pwm1Stop();
	fcall	_pwm1Stop
	line	719
	
l4547:	
;main.c: 719: modelStep = 0;
	clrf	(_modelStep)
	line	721
	
l4549:	
;main.c: 720: }
;main.c: 721: if(modelStep == 1)
		decf	((_modelStep)),w
	btfss	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l4553
u3450:
	line	723
	
l4551:	
;main.c: 722: {
;main.c: 723: pwm1Init();
	fcall	_pwm1Init
	line	724
;main.c: 724: }
	goto	l4567
	line	725
	
l4553:	
;main.c: 725: else if(modelStep > 1)
	movlw	low(02h)
	subwf	(_modelStep),w
	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l4567
u3460:
	line	727
	
l4555:	
;main.c: 726: {
;main.c: 727: unsigned int tempStartTime = startTime[modelStep - 2];
	movf	(_modelStep),w
	addlw	low((((_startTime)-__stringbase)|8000h)+0FEh)
	movwf	fsr0
	fcall	stringdir
	movwf	(workCtr@tempStartTime)
	clrf	(workCtr@tempStartTime+1)
	line	728
;main.c: 728: unsigned int tempStopTime = stopTime[modelStep - 2];
	movf	(_modelStep),w
	addlw	low((((_stopTime)-__stringbase)|8000h)+0FEh)
	movwf	fsr0
	fcall	stringdir
	movwf	(workCtr@tempStopTime)
	clrf	(workCtr@tempStopTime+1)
	line	729
	
l4557:	
;main.c: 729: if(++workTime > (tempStartTime + tempStopTime))
	incf	(_workTime),f
	skipnz
	incf	(_workTime+1),f
	movf	(workCtr@tempStopTime),w
	addwf	(workCtr@tempStartTime),w
	movwf	(??_workCtr+0)+0
	movf	(workCtr@tempStopTime+1),w
	skipnc
	incf	(workCtr@tempStopTime+1),w
	addwf	(workCtr@tempStartTime+1),w
	movwf	1+(??_workCtr+0)+0
	movf	((_workTime+1)),w
	subwf	1+(??_workCtr+0)+0,w
	skipz
	goto	u3475
	movf	((_workTime)),w
	subwf	0+(??_workCtr+0)+0,w
u3475:
	skipnc
	goto	u3471
	goto	u3470
u3471:
	goto	l4561
u3470:
	line	731
	
l4559:	
;main.c: 730: {
;main.c: 731: workTime = 0;
	clrf	(_workTime)
	clrf	(_workTime+1)
	line	733
	
l4561:	
;main.c: 732: }
;main.c: 733: if(workTime < tempStartTime)
	movf	(workCtr@tempStartTime+1),w
	subwf	(_workTime+1),w
	skipz
	goto	u3485
	movf	(workCtr@tempStartTime),w
	subwf	(_workTime),w
u3485:
	skipnc
	goto	u3481
	goto	u3480
u3481:
	goto	l4565
u3480:
	goto	l4551
	line	739
	
l4565:	
;main.c: 737: else
;main.c: 738: {
;main.c: 739: pwm1Stop();
	fcall	_pwm1Stop
	line	743
	
l4567:	
;main.c: 740: }
;main.c: 741: }
;main.c: 743: if(count900s >= 910)
	movlw	03h
	subwf	(_count900s+1),w
	movlw	08Eh
	skipnz
	subwf	(_count900s),w
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l1123
u3490:
	line	745
	
l4569:	
;main.c: 744: {
;main.c: 745: workStep = 0;
	clrf	(_workStep)
	line	746
	
l4571:	
;main.c: 746: pwm1Stop();
	fcall	_pwm1Stop
	line	748
	
l1123:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwm1Init

;; *************** function _pwm1Init *****************
;; Defined at:
;;		line 460 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	460
global __ptext2
__ptext2:	;psect for function _pwm1Init
psect	text2
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	460
	global	__size_of_pwm1Init
	__size_of_pwm1Init	equ	__end_of_pwm1Init-_pwm1Init
	
_pwm1Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm1Init: [wreg+status,2+status,0]
	line	462
	
l3563:	
;main.c: 462: if(motorPWMFlag)
	movf	((_motorPWMFlag)),w
	btfsc	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l3567
u1680:
	goto	l1053
	line	466
	
l3567:	
;main.c: 465: }
;main.c: 466: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	467
	
l3569:	
;main.c: 467: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	468
	
l3571:	
;main.c: 468: PWMD01H = 0x00;
	clrf	(30)	;volatile
	line	469
;main.c: 469: PWMD0L = 66;
	movlw	low(042h)
	movwf	(25)	;volatile
	line	470
;main.c: 470: PWMCON1 = 0xC0;
	movlw	low(0C0h)
	movwf	(22)	;volatile
	line	471
	
l3573:	
;main.c: 471: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	472
	
l3575:	
;main.c: 472: PWMCON0 |= 0x61;
	movlw	low(061h)
	iorwf	(21),f	;volatile
	line	473
	
l3577:	
;main.c: 473: motorPWMFlag = 1;
	clrf	(_motorPWMFlag)
	incf	(_motorPWMFlag),f
	line	474
	
l1053:	
	return
	opt stack 0
GLOBAL	__end_of_pwm1Init
	__end_of_pwm1Init:
	signat	_pwm1Init,89
	global	_refreshLed

;; *************** function _refreshLed *****************
;; Defined at:
;;		line 69 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		_DelayUs
;;		_ledOpen
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
	line	69
global __ptext3
__ptext3:	;psect for function _refreshLed
psect	text3
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
	line	69
	global	__size_of_refreshLed
	__size_of_refreshLed	equ	__end_of_refreshLed-_refreshLed
	
_refreshLed:	
;incstack = 0
	opt	stack 5
; Regs used in _refreshLed: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	73
	
l4267:	
;number.c: 73: TRISB |= 0x1F;
	movlw	low(01Fh)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	line	74
;number.c: 74: PORTB &= 0xE0;
	movlw	low(0E0h)
	andwf	(6),f	;volatile
	line	76
;number.c: 76: switch(ledCnt)
	goto	l4299
	line	78
;number.c: 77: {
;number.c: 78: case 0:
	
l2066:	
	line	79
;number.c: 79: if(showNumAShi & 0x01)
	btfss	(_showNumAShi),(0)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l4301
u2890:
	line	81
	
l4269:	
;number.c: 80: {
;number.c: 81: ledOpen(3,2);
	movlw	low(02h)
	movwf	(ledOpen@low)
	movlw	low(03h)
	fcall	_ledOpen
	goto	l4301
	line	84
;number.c: 84: case 1:
	
l2069:	
	line	85
;number.c: 85: if(showNumAShi & 0x02)
	btfss	(_showNumAShi),(1)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l4301
u2900:
	line	87
	
l4271:	
;number.c: 86: {
;number.c: 87: ledOpen(2,3);
	movlw	low(03h)
	movwf	(ledOpen@low)
	movlw	low(02h)
	fcall	_ledOpen
	goto	l4301
	line	90
;number.c: 90: case 2:
	
l2071:	
	line	91
;number.c: 91: if(showNumAShi & 0x04)
	btfss	(_showNumAShi),(2)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l4301
u2910:
	line	93
	
l4273:	
;number.c: 92: {
;number.c: 93: ledOpen(3,4);
	movlw	low(04h)
	movwf	(ledOpen@low)
	movlw	low(03h)
	fcall	_ledOpen
	goto	l4301
	line	96
;number.c: 96: case 3:
	
l2073:	
	line	97
;number.c: 97: if(showNumAShi & 0x08)
	btfss	(_showNumAShi),(3)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l4301
u2920:
	line	99
	
l4275:	
;number.c: 98: {
;number.c: 99: ledOpen(2,4);
	movlw	low(04h)
	movwf	(ledOpen@low)
	movlw	low(02h)
	fcall	_ledOpen
	goto	l4301
	line	102
;number.c: 102: case 4:
	
l2075:	
	line	103
;number.c: 103: if(showNumAShi & 0x10)
	btfss	(_showNumAShi),(4)&7
	goto	u2931
	goto	u2930
u2931:
	goto	l4301
u2930:
	line	105
	
l4277:	
;number.c: 104: {
;number.c: 105: ledOpen(2,5);
	movlw	low(05h)
	movwf	(ledOpen@low)
	movlw	low(02h)
	fcall	_ledOpen
	goto	l4301
	line	108
;number.c: 108: case 5:
	
l2077:	
	line	109
;number.c: 109: if(showNumAShi & 0x20)
	btfss	(_showNumAShi),(5)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l4301
u2940:
	line	111
	
l4279:	
;number.c: 110: {
;number.c: 111: ledOpen(3,5);
	movlw	low(05h)
	movwf	(ledOpen@low)
	movlw	low(03h)
	fcall	_ledOpen
	goto	l4301
	line	114
;number.c: 114: case 6:
	
l2079:	
	line	115
;number.c: 115: if(showNumAShi & 0x40)
	btfss	(_showNumAShi),(6)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l4301
u2950:
	line	117
	
l4281:	
;number.c: 116: {
;number.c: 117: ledOpen(4,5);
	movlw	low(05h)
	movwf	(ledOpen@low)
	movlw	low(04h)
	fcall	_ledOpen
	goto	l4301
	line	120
;number.c: 120: case 7:
	
l2081:	
	line	121
;number.c: 121: if(showNumAge & 0x01)
	btfss	(_showNumAge),(0)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l4301
u2960:
	line	123
	
l4283:	
;number.c: 122: {
;number.c: 123: ledOpen(2,1);
	clrf	(ledOpen@low)
	incf	(ledOpen@low),f
	movlw	low(02h)
	fcall	_ledOpen
	goto	l4301
	line	126
;number.c: 126: case 8:
	
l2083:	
	line	127
;number.c: 127: if(showNumAge & 0x02)
	btfss	(_showNumAge),(1)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l4301
u2970:
	line	129
	
l4285:	
;number.c: 128: {
;number.c: 129: ledOpen(1,2);
	movlw	low(02h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	l4301
	line	132
;number.c: 132: case 9:
	
l2085:	
	line	133
;number.c: 133: if(showNumAge & 0x04)
	btfss	(_showNumAge),(2)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l4301
u2980:
	line	135
	
l4287:	
;number.c: 134: {
;number.c: 135: ledOpen(3,1);
	clrf	(ledOpen@low)
	incf	(ledOpen@low),f
	movlw	low(03h)
	fcall	_ledOpen
	goto	l4301
	line	138
;number.c: 138: case 10:
	
l2087:	
	line	139
;number.c: 139: if(showNumAge & 0x08)
	btfss	(_showNumAge),(3)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l4301
u2990:
	line	141
	
l4289:	
;number.c: 140: {
;number.c: 141: ledOpen(1,3);
	movlw	low(03h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	l4301
	line	144
;number.c: 144: case 11:
	
l2089:	
	line	145
;number.c: 145: if(showNumAge & 0x10)
	btfss	(_showNumAge),(4)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l4301
u3000:
	line	147
	
l4291:	
;number.c: 146: {
;number.c: 147: ledOpen(4,1);
	clrf	(ledOpen@low)
	incf	(ledOpen@low),f
	movlw	low(04h)
	fcall	_ledOpen
	goto	l4301
	line	150
;number.c: 150: case 12:
	
l2091:	
	line	151
;number.c: 151: if(showNumAge & 0x20)
	btfss	(_showNumAge),(5)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l4301
u3010:
	line	153
	
l4293:	
;number.c: 152: {
;number.c: 153: ledOpen(1,4);
	movlw	low(04h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	l4301
	line	156
;number.c: 156: case 13:
	
l2093:	
	line	157
;number.c: 157: if(showNumAge & 0x40)
	btfss	(_showNumAge),(6)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l4301
u3020:
	line	159
	
l4295:	
;number.c: 158: {
;number.c: 159: ledOpen(1,5);
	movlw	low(05h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	l4301
	line	76
	
l4299:	
	movf	(_ledCnt),w
	; Switch size 1, requested type "space"
; Number of cases is 14, Range of values is 0 to 13
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           35     7 (fixed)
; simple_byte           43    22 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	14
	subwf	fsr,w
skipnc
goto l4301
movlw high(S4701)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S4701)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S4701:
	ljmp	l2066
	ljmp	l2069
	ljmp	l2071
	ljmp	l2073
	ljmp	l2075
	ljmp	l2077
	ljmp	l2079
	ljmp	l2081
	ljmp	l2083
	ljmp	l2085
	ljmp	l2087
	ljmp	l2089
	ljmp	l2091
	ljmp	l2093
psect	text3

	line	165
	
l4301:	
;number.c: 165: DelayUs(50);
	movlw	low(032h)
	fcall	_DelayUs
	line	166
	
l4303:	
;number.c: 166: TRISB |= 0x1F;
	movlw	low(01Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(5),f	;volatile
	line	167
	
l4305:	
;number.c: 167: PORTB &= 0xE0;
	movlw	low(0E0h)
	andwf	(6),f	;volatile
	line	168
	
l4307:	
;number.c: 168: if(++ledCnt > 13)
	movlw	low(0Eh)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u3031
	goto	u3030
u3031:
	goto	l2097
u3030:
	line	170
	
l4309:	
;number.c: 169: {
;number.c: 170: ledCnt = 0;
	clrf	(_ledCnt)
	line	172
	
l2097:	
	return
	opt stack 0
GLOBAL	__end_of_refreshLed
	__end_of_refreshLed:
	signat	_refreshLed,89
	global	_ledOpen

;; *************** function _ledOpen *****************
;; Defined at:
;;		line 12 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;  hight           1    wreg     unsigned char 
;;  low             1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  hight           1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	12
global __ptext4
__ptext4:	;psect for function _ledOpen
psect	text4
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
	line	12
	global	__size_of_ledOpen
	__size_of_ledOpen	equ	__end_of_ledOpen-_ledOpen
	
_ledOpen:	
;incstack = 0
	opt	stack 5
; Regs used in _ledOpen: [wreg-fsr0h+status,2+status,0]
;ledOpen@hight stored from wreg
	movwf	(ledOpen@hight)
	line	14
	
l3701:	
;number.c: 14: switch(hight)
	goto	l3705
	line	16
;number.c: 15: {
;number.c: 16: case 1:
	
l2047:	
	line	17
;number.c: 17: TRISB &= 0xFD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(1/8),(1)&7	;volatile
	line	18
;number.c: 18: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	19
;number.c: 19: break;
	goto	l3709
	line	20
;number.c: 20: case 2:
	
l2049:	
	line	21
;number.c: 21: TRISB &= 0xFB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(2/8),(2)&7	;volatile
	line	22
;number.c: 22: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	23
;number.c: 23: break;
	goto	l3709
	line	24
;number.c: 24: case 3:
	
l2050:	
	line	25
;number.c: 25: TRISB &= 0xF7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(3/8),(3)&7	;volatile
	line	26
;number.c: 26: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	27
;number.c: 27: break;
	goto	l3709
	line	28
;number.c: 28: case 4:
	
l2051:	
	line	29
;number.c: 29: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	30
;number.c: 30: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	31
;number.c: 31: break;
	goto	l3709
	line	32
;number.c: 32: case 5:
	
l2052:	
	line	33
;number.c: 33: TRISB &= 0xFE;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(0/8),(0)&7	;volatile
	line	34
;number.c: 34: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	35
;number.c: 35: break;
	goto	l3709
	line	14
	
l3705:	
	movf	(ledOpen@hight),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           20    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2047
	xorlw	2^1	; case 2
	skipnz
	goto	l2049
	xorlw	3^2	; case 3
	skipnz
	goto	l2050
	xorlw	4^3	; case 4
	skipnz
	goto	l2051
	xorlw	5^4	; case 5
	skipnz
	goto	l2052
	goto	l3709
	opt asmopt_pop

	line	41
;number.c: 40: {
;number.c: 41: case 1:
	
l2055:	
	line	42
;number.c: 42: TRISB &= 0xFD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(1/8),(1)&7	;volatile
	line	43
;number.c: 43: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	44
;number.c: 44: break;
	goto	l2062
	line	45
;number.c: 45: case 2:
	
l2057:	
	line	46
;number.c: 46: TRISB &= 0xFB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(2/8),(2)&7	;volatile
	line	47
;number.c: 47: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	48
;number.c: 48: break;
	goto	l2062
	line	49
;number.c: 49: case 3:
	
l2058:	
	line	50
;number.c: 50: TRISB &= 0xF7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(3/8),(3)&7	;volatile
	line	51
;number.c: 51: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	52
;number.c: 52: break;
	goto	l2062
	line	53
;number.c: 53: case 4:
	
l2059:	
	line	54
;number.c: 54: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	55
;number.c: 55: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	56
;number.c: 56: break;
	goto	l2062
	line	57
;number.c: 57: case 5:
	
l2060:	
	line	58
;number.c: 58: TRISB &= 0xFE;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(0/8),(0)&7	;volatile
	line	59
;number.c: 59: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	60
;number.c: 60: break;
	goto	l2062
	line	39
	
l3709:	
	movf	(ledOpen@low),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           20    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2055
	xorlw	2^1	; case 2
	skipnz
	goto	l2057
	xorlw	3^2	; case 3
	skipnz
	goto	l2058
	xorlw	4^3	; case 4
	skipnz
	goto	l2059
	xorlw	5^4	; case 5
	skipnz
	goto	l2060
	goto	l2062
	opt asmopt_pop

	line	64
	
l2062:	
	return
	opt stack 0
GLOBAL	__end_of_ledOpen
	__end_of_ledOpen:
	signat	_ledOpen,8313
	global	_DelayUs

;; *************** function _DelayUs *****************
;; Defined at:
;;		line 180 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;  Time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Time            1    2[COMMON] unsigned char 
;;  a               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	180
global __ptext5
__ptext5:	;psect for function _DelayUs
psect	text5
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
	line	180
	global	__size_of_DelayUs
	__size_of_DelayUs	equ	__end_of_DelayUs-_DelayUs
	
_DelayUs:	
;incstack = 0
	opt	stack 5
; Regs used in _DelayUs: [wreg+status,2+status,0]
;DelayUs@Time stored from wreg
	movwf	(DelayUs@Time)
	line	183
	
l3711:	
;number.c: 182: unsigned char a;
;number.c: 183: for(a=0;a<Time;a++)
	clrf	(DelayUs@a)
	goto	l3715
	line	184
	
l2101:	
	line	185
;number.c: 184: {
;number.c: 185: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	183
	
l3713:	
	incf	(DelayUs@a),f
	
l3715:	
	movf	(DelayUs@Time),w
	subwf	(DelayUs@a),w
	skipc
	goto	u1841
	goto	u1840
u1841:
	goto	l2101
u1840:
	line	187
	
l2103:	
	return
	opt stack 0
GLOBAL	__end_of_DelayUs
	__end_of_DelayUs:
	signat	_DelayUs,4217
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 939 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempMinute      1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lbdiv
;;		___lbmod
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	939
global __ptext6
__ptext6:	;psect for function _ledCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	939
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _ledCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	941
	
l4573:	
;main.c: 941: if(showWorkTime > 0)
	movf	((_showWorkTime)),w
	btfsc	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l4577
u3500:
	line	943
	
l4575:	
;main.c: 942: {
;main.c: 943: showWorkTime--;
	decf	(_showWorkTime),f
	line	945
	
l4577:	
;main.c: 944: }
;main.c: 945: if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l4581
u3510:
	line	947
	
l4579:	
;main.c: 946: {
;main.c: 947: showBatTime--;
	decf	(_showBatTime),f
	line	949
	
l4581:	
;main.c: 948: }
;main.c: 949: if(shanshuoTime > 0)
	movf	((_shanshuoTime)),w
	btfsc	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l4585
u3520:
	line	951
	
l4583:	
;main.c: 950: {
;main.c: 951: shanshuoTime--;
	decf	(_shanshuoTime),f
	line	953
	
l4585:	
;main.c: 952: }
;main.c: 953: if(firstShowCount > 0)
	movf	((_firstShowCount)),w
	btfsc	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l4589
u3530:
	line	955
	
l4587:	
;main.c: 954: {
;main.c: 955: showNumAShi = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumAShi)
	line	956
;main.c: 956: showNumAge = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumAge)
	line	957
;main.c: 957: }
	goto	l1194
	line	958
	
l4589:	
;main.c: 958: else if(shanshuoTime > 0 && (shanshuoTime % 100) < 50)
	movf	((_shanshuoTime)),w
	btfsc	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l4595
u3540:
	
l4591:	
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	(_shanshuoTime),w
	fcall	___lbmod
	movwf	(??_ledCtr+0)+0
	movlw	032h
	subwf	(??_ledCtr+0)+0,w
	skipnc
	goto	u3551
	goto	u3550
u3551:
	goto	l4595
u3550:
	line	960
	
l4593:	
;main.c: 959: {
;main.c: 960: showNumAShi = 0;
	clrf	(_showNumAShi)
	line	961
;main.c: 961: showNumAge = 0;
	clrf	(_showNumAge)
	line	962
;main.c: 962: }
	goto	l1194
	line	963
	
l4595:	
;main.c: 963: else if(chrgFlag || (showBatTime > 0))
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l4599
u3560:
	
l4597:	
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l4601
u3570:
	line	965
	
l4599:	
;main.c: 964: {
;main.c: 965: showNumAShi = numArray[preBatValue/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_preBatValue),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	966
;main.c: 966: showNumAge = numArray[preBatValue%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_preBatValue),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAge)
	line	967
;main.c: 967: }
	goto	l1194
	line	968
	
l4601:	
;main.c: 968: else if(showWorkTime)
	movf	((_showWorkTime)),w
	btfsc	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l4613
u3580:
	line	970
	
l4603:	
;main.c: 969: {
;main.c: 970: if(workStep == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u3591
	goto	u3590
u3591:
	goto	l4607
u3590:
	line	972
	
l4605:	
;main.c: 971: {
;main.c: 972: showNumAShi = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	973
;main.c: 973: showNumAge = numArray[10];
	movlw	low((((_numArray+0Ah)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAge)
	line	974
;main.c: 974: }
	goto	l1194
	line	975
	
l4607:	
;main.c: 975: else if(showWorkFlag == 1)
		decf	((_showWorkFlag)),w
	btfss	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l4611
u3600:
	line	977
	
l4609:	
;main.c: 976: {
;main.c: 977: showNumAShi = numArray[workStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_workStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	978
;main.c: 978: showNumAge = numArray[workStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_workStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAge)
	line	979
;main.c: 979: }
	goto	l1194
	line	982
	
l4611:	
;main.c: 980: else
;main.c: 981: {
;main.c: 982: showNumAShi = numArray[modelStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_modelStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	983
;main.c: 983: showNumAge = numArray[modelStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_modelStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAge)
	goto	l1194
	line	986
	
l4613:	
;main.c: 986: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l4593
u3610:
	line	988
	
l4615:	
;main.c: 987: {
;main.c: 988: unsigned char tempMinute = 15 - (count900s/60);
	movlw	03Ch
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_count900s+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(_count900s),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	sublw	0Fh
	movwf	(ledCtr@tempMinute)
	line	989
	
l4617:	
;main.c: 989: showNumAShi = numArray[tempMinute/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(ledCtr@tempMinute),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	990
	
l4619:	
;main.c: 990: showNumAge = numArray[tempMinute%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(ledCtr@tempMinute),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAge)
	line	997
;main.c: 991: }
	
l1194:	
	return
	opt stack 0
GLOBAL	__end_of_ledCtr
	__end_of_ledCtr:
	signat	_ledCtr,89
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] unsigned int 
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
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;;		_ledCtr
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___lwdiv
psect	text7
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l4461:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l4463:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l4483
u3260:
	line	16
	
l4465:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l4469
	line	18
	
l4467:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l4469:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l4467
u3270:
	line	22
	
l4471:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l4473:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3285
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3285:
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l4479
u3280:
	line	24
	
l4475:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l4477:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l4479:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l4481:	
	decfsz	(___lwdiv@counter),f
	goto	u3291
	goto	u3290
u3291:
	goto	l4471
u3290:
	line	30
	
l4483:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l2462:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
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
;;		_ledCtr
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
global __ptext8
__ptext8:	;psect for function ___lbmod
psect	text8
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
	
l4443:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l4445:	
	clrf	(___lbmod@rem)
	line	12
	
l4447:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3235:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3235
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l4449:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l4451:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3241
	goto	u3240
u3241:
	goto	l4455
u3240:
	line	15
	
l4453:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l4455:	
	decfsz	(___lbmod@counter),f
	goto	u3251
	goto	u3250
u3251:
	goto	l4447
u3250:
	line	17
	
l4457:	
	movf	(___lbmod@rem),w
	line	18
	
l2394:	
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
;;		_ledCtr
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
global __ptext9
__ptext9:	;psect for function ___lbdiv
psect	text9
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
	
l4419:	
	clrf	(___lbdiv@quotient)
	line	10
	
l4421:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l4439
u3190:
	line	11
	
l4423:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l4427
	
l2383:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l4425:	
	incf	(___lbdiv@counter),f
	line	12
	
l4427:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l2383
u3200:
	line	16
	
l2385:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l4429:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u3211
	goto	u3210
u3211:
	goto	l4435
u3210:
	line	19
	
l4431:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l4433:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l4435:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l4437:	
	decfsz	(___lbdiv@counter),f
	goto	u3221
	goto	u3220
u3221:
	goto	l2385
u3220:
	line	25
	
l4439:	
	movf	(___lbdiv@quotient),w
	line	26
	
l2388:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 851 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kclick          1    3[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_keyRead
;;		_keyRead2
;;		_keyRead3
;;		_keyRead4
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	851
global __ptext10
__ptext10:	;psect for function _keyCtr
psect	text10
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	851
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	853
	
l4139:	
;main.c: 853: TRISA = 0xE2;
	movlw	low(0E2h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	854
;main.c: 854: WPUA = 0xC0;
	movlw	low(0C0h)
	movwf	(136)^080h	;volatile
	line	855
;main.c: 855: TRISB = 0xE0;
	movlw	low(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	856
;main.c: 856: WPUB = 0x80;
	movlw	low(080h)
	movwf	(8)	;volatile
	line	857
	
l4141:	
;main.c: 857: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	line	858
	
l4143:	
;main.c: 858: char kclick = keyRead(0x80 & (~PORTB));
	bcf	status, 5	;RP0=0, select bank0
	comf	(6),w	;volatile
	andlw	080h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	859
	
l4145:	
;main.c: 859: if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l4157
u2630:
	line	861
	
l4147:	
;main.c: 860: {
;main.c: 861: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l1158
u2640:
	line	863
	
l4149:	
;main.c: 864: closeTime = 0;
	clrf	(_workStep)
	line	865
	
l4151:	
;main.c: 865: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	line	866
	
l4153:	
;main.c: 866: showWorkTime = 250;
	movlw	low(0FAh)
	movwf	(_showWorkTime)
	line	867
;main.c: 867: }
	goto	l4163
	line	868
	
l1158:	
	line	870
;main.c: 868: else
;main.c: 869: {
;main.c: 870: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	871
;main.c: 871: modelStep = 1;
	clrf	(_modelStep)
	incf	(_modelStep),f
	line	872
;main.c: 872: showWorkFlag = 1;
	clrf	(_showWorkFlag)
	incf	(_showWorkFlag),f
	line	873
	
l4155:	
;main.c: 873: showWorkTime = 250;
	movlw	low(0FAh)
	movwf	(_showWorkTime)
	line	874
;main.c: 874: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	goto	l4163
	line	877
	
l4157:	
;main.c: 877: else if(kclick == 1 && workStep == 0)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l4163
u2650:
	
l4159:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l4163
u2660:
	line	879
	
l4161:	
;main.c: 878: {
;main.c: 879: showBatTime = 250;
	movlw	low(0FAh)
	movwf	(_showBatTime)
	line	881
	
l4163:	
;main.c: 880: }
;main.c: 881: if(workStep == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l4167
u2670:
	goto	l1163
	line	885
	
l4167:	
;main.c: 884: }
;main.c: 885: kclick = keyRead4(0x40 & (~PORTA));
	bsf	status, 5	;RP0=1, select bank1
	comf	(134)^080h,w	;volatile
	andlw	040h
	fcall	_keyRead4
	movwf	(keyCtr@kclick)
	line	886
	
l4169:	
;main.c: 886: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l1164
u2680:
	line	888
	
l4171:	
;main.c: 887: {
;main.c: 888: if(workStep < 18)
	movlw	low(012h)
	subwf	(_workStep),w
	skipnc
	goto	u2691
	goto	u2690
u2691:
	goto	l1165
u2690:
	line	890
	
l4173:	
;main.c: 889: {
;main.c: 890: workStep++;
	incf	(_workStep),f
	line	891
	
l4175:	
;main.c: 891: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	line	892
	
l1165:	
	line	893
;main.c: 892: }
;main.c: 893: if(showWorkFlag == 0)
	movf	((_showWorkFlag)),w
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l1166
u2700:
	line	895
	
l4177:	
;main.c: 894: {
;main.c: 895: showWorkFlag = 1;
	clrf	(_showWorkFlag)
	incf	(_showWorkFlag),f
	line	896
	
l4179:	
;main.c: 896: shanshuoTime = 200;
	movlw	low(0C8h)
	movwf	(_shanshuoTime)
	line	897
	
l1166:	
	line	898
;main.c: 897: }
;main.c: 898: showWorkTime = 250;
	movlw	low(0FAh)
	movwf	(_showWorkTime)
	line	899
	
l1164:	
	line	900
;main.c: 899: }
;main.c: 900: TRISA = 0x6A;
	movlw	low(06Ah)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	901
;main.c: 901: WPUA = 0x48;
	movlw	low(048h)
	movwf	(136)^080h	;volatile
	line	902
;main.c: 902: TRISB = 0xE0;
	movlw	low(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	903
;main.c: 903: WPUB = 0x80;
	movlw	low(080h)
	movwf	(8)	;volatile
	line	904
	
l4181:	
;main.c: 904: RA7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1079/8)^080h,(1079)&7	;volatile
	line	905
	
l4183:	
;main.c: 905: kclick = keyRead2(0x80 & (~PORTB));
	bcf	status, 5	;RP0=0, select bank0
	comf	(6),w	;volatile
	andlw	080h
	fcall	_keyRead2
	movwf	(keyCtr@kclick)
	line	906
	
l4185:	
;main.c: 906: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l4203
u2710:
	line	908
	
l4187:	
;main.c: 907: {
;main.c: 908: if(++modelStep > 18)
	movlw	low(013h)
	incf	(_modelStep),f
	subwf	((_modelStep)),w
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l4191
u2720:
	line	910
	
l4189:	
;main.c: 909: {
;main.c: 910: modelStep = 1;
	clrf	(_modelStep)
	incf	(_modelStep),f
	line	912
	
l4191:	
;main.c: 911: }
;main.c: 912: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	line	913
	
l4193:	
;main.c: 913: workTime = 0;
	clrf	(_workTime)
	clrf	(_workTime+1)
	line	914
	
l4195:	
;main.c: 914: if(showWorkFlag == 1)
		decf	((_showWorkFlag)),w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l4201
u2730:
	line	916
	
l4197:	
;main.c: 915: {
;main.c: 916: showWorkFlag = 0;
	clrf	(_showWorkFlag)
	line	917
	
l4199:	
;main.c: 917: shanshuoTime = 200;
	movlw	low(0C8h)
	movwf	(_shanshuoTime)
	line	919
	
l4201:	
;main.c: 918: }
;main.c: 919: showWorkTime = 250;
	movlw	low(0FAh)
	movwf	(_showWorkTime)
	line	921
	
l4203:	
;main.c: 920: }
;main.c: 921: kclick = keyRead3(0x40 & (~PORTA));
	bsf	status, 5	;RP0=1, select bank1
	comf	(134)^080h,w	;volatile
	andlw	040h
	fcall	_keyRead3
	movwf	(keyCtr@kclick)
	line	922
	
l4205:	
;main.c: 922: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l1163
u2740:
	line	924
	
l4207:	
;main.c: 923: {
;main.c: 924: if(workStep > 1)
	movlw	low(02h)
	subwf	(_workStep),w
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l1171
u2750:
	line	926
	
l4209:	
;main.c: 925: {
;main.c: 926: workStep--;
	decf	(_workStep),f
	line	927
	
l4211:	
;main.c: 927: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	line	928
	
l1171:	
	line	929
;main.c: 928: }
;main.c: 929: if(showWorkFlag == 0)
	movf	((_showWorkFlag)),w
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l1172
u2760:
	line	931
	
l4213:	
;main.c: 930: {
;main.c: 931: showWorkFlag = 1;
	clrf	(_showWorkFlag)
	incf	(_showWorkFlag),f
	line	932
	
l4215:	
;main.c: 932: shanshuoTime = 200;
	movlw	low(0C8h)
	movwf	(_shanshuoTime)
	line	933
	
l1172:	
	line	934
;main.c: 933: }
;main.c: 934: showWorkTime = 250;
	movlw	low(0FAh)
	movwf	(_showWorkTime)
	line	936
	
l1163:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead4

;; *************** function _keyRead4 *****************
;; Defined at:
;;		line 829 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    2[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	829
global __ptext11
__ptext11:	;psect for function _keyRead4
psect	text11
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	829
	global	__size_of_keyRead4
	__size_of_keyRead4	equ	__end_of_keyRead4-_keyRead4
	
_keyRead4:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead4: [wreg+status,2+status,0]
;keyRead4@keyStatus stored from wreg
	movwf	(keyRead4@keyStatus)
	line	831
	
l3679:	
;main.c: 831: if(keyStatus)
	movf	((keyRead4@keyStatus)),w
	btfsc	status,2
	goto	u1811
	goto	u1810
u1811:
	goto	l3687
u1810:
	line	833
	
l3681:	
;main.c: 832: {
;main.c: 833: keyCount4++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_keyCount4),f
	line	834
	
l3683:	
;main.c: 834: if(keyCount4 >= 120)
	movlw	low(078h)
	subwf	(_keyCount4),w
	skipc
	goto	u1821
	goto	u1820
u1821:
	goto	l3697
u1820:
	line	836
	
l3685:	
;main.c: 835: {
;main.c: 836: keyCount4 = 120;
	movlw	low(078h)
	movwf	(_keyCount4)
	goto	l3697
	line	841
	
l3687:	
;main.c: 839: else
;main.c: 840: {
;main.c: 841: if(keyCount4 >= 5)
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_keyCount4),w
	skipc
	goto	u1831
	goto	u1830
u1831:
	goto	l3695
u1830:
	line	843
	
l3689:	
;main.c: 842: {
;main.c: 843: keyCount4 = 0;
	clrf	(_keyCount4)
	line	844
	
l3691:	
;main.c: 844: return 1;
	movlw	low(01h)
	goto	l1154
	line	846
	
l3695:	
;main.c: 845: }
;main.c: 846: keyCount4 = 0;
	clrf	(_keyCount4)
	line	848
	
l3697:	
;main.c: 847: }
;main.c: 848: return 0;
	movlw	low(0)
	line	849
	
l1154:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead4
	__end_of_keyRead4:
	signat	_keyRead4,4217
	global	_keyRead3

;; *************** function _keyRead3 *****************
;; Defined at:
;;		line 807 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    2[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	807
global __ptext12
__ptext12:	;psect for function _keyRead3
psect	text12
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	807
	global	__size_of_keyRead3
	__size_of_keyRead3	equ	__end_of_keyRead3-_keyRead3
	
_keyRead3:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead3: [wreg+status,2+status,0]
;keyRead3@keyStatus stored from wreg
	movwf	(keyRead3@keyStatus)
	line	809
	
l3657:	
;main.c: 809: if(keyStatus)
	movf	((keyRead3@keyStatus)),w
	btfsc	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l3665
u1780:
	line	811
	
l3659:	
;main.c: 810: {
;main.c: 811: keyCount3++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_keyCount3),f
	line	812
	
l3661:	
;main.c: 812: if(keyCount3 >= 120)
	movlw	low(078h)
	subwf	(_keyCount3),w
	skipc
	goto	u1791
	goto	u1790
u1791:
	goto	l3675
u1790:
	line	814
	
l3663:	
;main.c: 813: {
;main.c: 814: keyCount3 = 120;
	movlw	low(078h)
	movwf	(_keyCount3)
	goto	l3675
	line	819
	
l3665:	
;main.c: 817: else
;main.c: 818: {
;main.c: 819: if(keyCount3 >= 5)
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_keyCount3),w
	skipc
	goto	u1801
	goto	u1800
u1801:
	goto	l3673
u1800:
	line	821
	
l3667:	
;main.c: 820: {
;main.c: 821: keyCount3 = 0;
	clrf	(_keyCount3)
	line	822
	
l3669:	
;main.c: 822: return 1;
	movlw	low(01h)
	goto	l1147
	line	824
	
l3673:	
;main.c: 823: }
;main.c: 824: keyCount3 = 0;
	clrf	(_keyCount3)
	line	826
	
l3675:	
;main.c: 825: }
;main.c: 826: return 0;
	movlw	low(0)
	line	827
	
l1147:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead3
	__end_of_keyRead3:
	signat	_keyRead3,4217
	global	_keyRead2

;; *************** function _keyRead2 *****************
;; Defined at:
;;		line 785 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
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
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	785
global __ptext13
__ptext13:	;psect for function _keyRead2
psect	text13
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	785
	global	__size_of_keyRead2
	__size_of_keyRead2	equ	__end_of_keyRead2-_keyRead2
	
_keyRead2:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead2: [wreg+status,2+status,0]
;keyRead2@keyStatus stored from wreg
	movwf	(keyRead2@keyStatus)
	line	787
	
l3635:	
;main.c: 787: if(keyStatus)
	movf	((keyRead2@keyStatus)),w
	btfsc	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l3643
u1750:
	line	789
	
l3637:	
;main.c: 788: {
;main.c: 789: keyCount2++;
	incf	(_keyCount2),f
	line	790
	
l3639:	
;main.c: 790: if(keyCount2 >= 120)
	movlw	low(078h)
	subwf	(_keyCount2),w
	skipc
	goto	u1761
	goto	u1760
u1761:
	goto	l3653
u1760:
	line	792
	
l3641:	
;main.c: 791: {
;main.c: 792: keyCount2 = 120;
	movlw	low(078h)
	movwf	(_keyCount2)
	goto	l3653
	line	797
	
l3643:	
;main.c: 795: else
;main.c: 796: {
;main.c: 797: if(keyCount2 >= 5)
	movlw	low(05h)
	subwf	(_keyCount2),w
	skipc
	goto	u1771
	goto	u1770
u1771:
	goto	l3651
u1770:
	line	799
	
l3645:	
;main.c: 798: {
;main.c: 799: keyCount2 = 0;
	clrf	(_keyCount2)
	line	800
	
l3647:	
;main.c: 800: return 1;
	movlw	low(01h)
	goto	l1140
	line	802
	
l3651:	
;main.c: 801: }
;main.c: 802: keyCount2 = 0;
	clrf	(_keyCount2)
	line	804
	
l3653:	
;main.c: 803: }
;main.c: 804: return 0;
	movlw	low(0)
	line	805
	
l1140:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead2
	__end_of_keyRead2:
	signat	_keyRead2,4217
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 751 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
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
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	751
global __ptext14
__ptext14:	;psect for function _keyRead
psect	text14
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	751
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	753
	
l3595:	
;main.c: 753: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l3611
u1700:
	line	755
	
l3597:	
;main.c: 754: {
;main.c: 755: keyCount++;
	incf	(_keyCount),f
	line	756
	
l3599:	
;main.c: 756: if(keyCount >= 120)
	movlw	low(078h)
	subwf	(_keyCount),w
	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l3615
u1710:
	line	758
	
l3601:	
;main.c: 757: {
;main.c: 758: keyCount = 120;
	movlw	low(078h)
	movwf	(_keyCount)
	line	759
	
l3603:	
;main.c: 759: if(longPressFlag == 0)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1721
	goto	u1720
u1721:
	goto	l3615
u1720:
	line	761
	
l3605:	
;main.c: 760: {
;main.c: 761: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	762
	
l3607:	
;main.c: 762: return 2;
	movlw	low(02h)
	goto	l1129
	line	768
	
l3611:	
;main.c: 766: else
;main.c: 767: {
;main.c: 768: if(keyCount >= 120)
	movlw	low(078h)
	subwf	(_keyCount),w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l3621
u1730:
	line	770
	
l3613:	
;main.c: 769: {
;main.c: 770: keyCount = 0;
	clrf	(_keyCount)
	line	771
;main.c: 771: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	772
	
l3615:	
;main.c: 772: return 0;
	movlw	low(0)
	goto	l1129
	line	774
	
l3621:	
;main.c: 774: else if(keyCount >= 5)
	movlw	low(05h)
	subwf	(_keyCount),w
	skipc
	goto	u1741
	goto	u1740
u1741:
	goto	l3613
u1740:
	line	776
	
l3623:	
;main.c: 775: {
;main.c: 776: keyCount = 0;
	clrf	(_keyCount)
	line	777
	
l3625:	
;main.c: 777: return 1;
	movlw	low(01h)
	line	783
	
l1129:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 508 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  waitMaxTime     2    5[COMMON] unsigned int 
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
;;      Temps:          3       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pwm1Stop
;;		_pwm2Init
;;		_pwm2Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	508
global __ptext15
__ptext15:	;psect for function _chrgCtr
psect	text15
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	508
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	510
	
l3907:	
;main.c: 510: if(0x02 & PORTA)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(1)&7	;volatile
	goto	u2161
	goto	u2160
u2161:
	goto	l4023
u2160:
	line	513
	
l3909:	
;main.c: 511: {
;main.c: 513: chrgFlag = 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	514
	
l3911:	
;main.c: 514: workStep = 0;
	clrf	(_workStep)
	line	515
;main.c: 516: ledLightTime = 0;
	clrf	(_lowBatFlag)
	line	517
	
l3913:	
;main.c: 517: pwm1Stop();
	fcall	_pwm1Stop
	line	518
	
l3915:	
;main.c: 518: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l3929
u2170:
	line	520
	
l3917:	
;main.c: 519: {
;main.c: 520: pwm2Stop();
	fcall	_pwm2Stop
	line	521
	
l3919:	
;main.c: 521: maxduty = 0;
	clrf	(_maxduty)
	line	522
	
l3921:	
;main.c: 522: if(protectFlag == 1 && tempData < 1530)
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u2181
	goto	u2180
u2181:
	goto	l1069
u2180:
	
l3923:	
	movlw	05h
	subwf	(_tempData+1),w
	movlw	0FAh
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u2191
	goto	u2190
u2191:
	goto	l1069
u2190:
	line	524
	
l3925:	
;main.c: 523: {
;main.c: 524: protectFlag = 0;
	clrf	(_protectFlag)
	line	525
;main.c: 525: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	goto	l1069
	line	529
	
l3929:	
;main.c: 528: }
;main.c: 529: if(tempData < 1118)
	movlw	04h
	subwf	(_tempData+1),w
	movlw	05Eh
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u2201
	goto	u2200
u2201:
	goto	l3935
u2200:
	line	531
	
l3931:	
;main.c: 530: {
;main.c: 531: chrgMode = 0;
	clrf	(_chrgMode)
	line	532
;main.c: 532: lockCount = 0;
	clrf	(_lockCount)
	line	533
	
l3933:	
;main.c: 533: chrgMaxAD = 5;
	movlw	low(05h)
	movwf	(_chrgMaxAD)
	line	534
;main.c: 534: }
	goto	l3965
	line	535
	
l3935:	
;main.c: 535: else if(tempData < 1230)
	movlw	04h
	subwf	(_tempData+1),w
	movlw	0CEh
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u2211
	goto	u2210
u2211:
	goto	l3941
u2210:
	line	537
	
l3937:	
;main.c: 536: {
;main.c: 537: chrgMode = 0;
	clrf	(_chrgMode)
	line	538
;main.c: 538: lockCount = 0;
	clrf	(_lockCount)
	line	539
	
l3939:	
;main.c: 539: chrgMaxAD = 33;
	movlw	low(021h)
	movwf	(_chrgMaxAD)
	line	540
;main.c: 540: }
	goto	l3965
	line	541
	
l3941:	
;main.c: 541: else if(tempData < 1530)
	movlw	05h
	subwf	(_tempData+1),w
	movlw	0FAh
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u2221
	goto	u2220
u2221:
	goto	l3955
u2220:
	line	543
	
l3943:	
;main.c: 542: {
;main.c: 543: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	544
	
l3945:	
;main.c: 544: chrgMaxAD = 38;
	movlw	low(026h)
	movwf	(_chrgMaxAD)
	line	545
	
l3947:	
;main.c: 545: lockCount = 0;
	clrf	(_lockCount)
	line	546
	
l3949:	
;main.c: 546: if(++chrgBatCount > 200)
	movlw	low(0C9h)
	incf	(_chrgBatCount),f
	subwf	((_chrgBatCount)),w
	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l1073
u2230:
	line	548
	
l3951:	
;main.c: 547: {
;main.c: 548: chrgBatCount = 200;
	movlw	low(0C8h)
	movwf	(_chrgBatCount)
	line	549
	
l3953:	
;main.c: 549: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	goto	l3965
	line	556
	
l3955:	
;main.c: 554: {
;main.c: 556: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l3963
u2240:
	line	558
	
l3957:	
;main.c: 557: {
;main.c: 558: lockCount = 200;
	movlw	low(0C8h)
	movwf	(_lockCount)
	line	559
	
l3959:	
;main.c: 559: chrgBatCount = 0;
	clrf	(_chrgBatCount)
	line	560
	
l3961:	
;main.c: 560: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	562
	
l3963:	
;main.c: 561: }
;main.c: 562: chrgMaxAD = 38;
	movlw	low(026h)
	movwf	(_chrgMaxAD)
	goto	l3965
	line	564
	
l1073:	
	
l3965:	
;main.c: 563: }
;main.c: 564: if(chrgMode == 2 && chrgAD < 7)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l3975
u2250:
	
l3967:	
	movlw	0
	subwf	(_chrgAD+1),w
	movlw	07h
	skipnz
	subwf	(_chrgAD),w
	skipnc
	goto	u2261
	goto	u2260
u2261:
	goto	l3975
u2260:
	line	566
	
l3969:	
;main.c: 565: {
;main.c: 566: if(++fullCount >= 250)
	incf	(_fullCount),f
	skipnz
	incf	(_fullCount+1),f
	movlw	0
	subwf	((_fullCount+1)),w
	movlw	0FAh
	skipnz
	subwf	((_fullCount)),w
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l3977
u2270:
	line	568
	
l3971:	
;main.c: 567: {
;main.c: 568: fullCount = 250;
	movlw	0FAh
	movwf	(_fullCount)
	clrf	(_fullCount+1)
	line	569
	
l3973:	
;main.c: 569: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l3977
	line	574
	
l3975:	
;main.c: 572: else
;main.c: 573: {
;main.c: 574: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	577
	
l3977:	
;main.c: 575: }
;main.c: 577: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l3983
u2280:
	line	579
	
l3979:	
;main.c: 578: {
;main.c: 579: pwm2Stop();
	fcall	_pwm2Stop
	line	580
	
l3981:	
;main.c: 580: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	line	581
;main.c: 581: }
	goto	l4021
	line	586
	
l3983:	
;main.c: 582: else
;main.c: 583: {
;main.c: 586: if(tempData > 1555 || chrgAD >chrgMaxAD)
	movlw	06h
	subwf	(_tempData+1),w
	movlw	014h
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u2291
	goto	u2290
u2291:
	goto	l3987
u2290:
	
l3985:	
	movf	(_chrgMaxAD),w
	movwf	(??_chrgCtr+0)+0
	clrf	(??_chrgCtr+0)+0+1
	movf	(_chrgAD+1),w
	subwf	1+(??_chrgCtr+0)+0,w
	skipz
	goto	u2305
	movf	(_chrgAD),w
	subwf	0+(??_chrgCtr+0)+0,w
u2305:
	skipnc
	goto	u2301
	goto	u2300
u2301:
	goto	l3997
u2300:
	line	588
	
l3987:	
;main.c: 587: {
;main.c: 588: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u2311
	goto	u2310
u2311:
	goto	l3995
u2310:
	line	590
	
l3989:	
;main.c: 589: {
;main.c: 590: maxduty = maxduty - 1;
	movlw	low(0FFh)
	addwf	(_maxduty),f
	line	591
	
l3991:	
;main.c: 591: subTime = 0;
	clrf	(_subTime)
	line	592
	
l3993:	
;main.c: 592: chrgWaitTime = 40;
	movlw	low(028h)
	movwf	(_chrgWaitTime)
	line	594
	
l3995:	
;main.c: 593: }
;main.c: 594: addTime = 0;
	clrf	(_addTime)
	line	595
;main.c: 595: }
	goto	l4011
	line	596
	
l3997:	
;main.c: 596: else if(tempData < 1555 && chrgAD <chrgMaxAD)
	movlw	06h
	subwf	(_tempData+1),w
	movlw	013h
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u2321
	goto	u2320
u2321:
	goto	l4011
u2320:
	
l3999:	
	movf	(_chrgMaxAD),w
	movwf	(??_chrgCtr+0)+0
	clrf	(??_chrgCtr+0)+0+1
	movf	1+(??_chrgCtr+0)+0,w
	subwf	(_chrgAD+1),w
	skipz
	goto	u2335
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_chrgAD),w
u2335:
	skipnc
	goto	u2331
	goto	u2330
u2331:
	goto	l4011
u2330:
	line	598
	
l4001:	
;main.c: 597: {
;main.c: 598: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u2341
	goto	u2340
u2341:
	goto	l4009
u2340:
	line	600
	
l4003:	
;main.c: 599: {
;main.c: 600: if(chrgAD < (chrgMaxAD-3))
	movf	(_chrgMaxAD),w
	addlw	low(0FFFDh)
	movwf	(??_chrgCtr+0)+0
	movlw	high(0FFFDh)
	skipnc
	movlw	(high(0FFFDh)+1)&0ffh
	movwf	((??_chrgCtr+0)+0)+1
	movf	1+(??_chrgCtr+0)+0,w
	subwf	(_chrgAD+1),w
	skipz
	goto	u2355
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_chrgAD),w
u2355:
	skipnc
	goto	u2351
	goto	u2350
u2351:
	goto	l4007
u2350:
	line	602
	
l4005:	
;main.c: 601: {
;main.c: 602: maxduty = maxduty + 1;
	incf	(_maxduty),f
	line	604
	
l4007:	
;main.c: 603: }
;main.c: 604: addTime = 0;
	clrf	(_addTime)
	line	606
	
l4009:	
;main.c: 605: }
;main.c: 606: subTime = 0;
	clrf	(_subTime)
	line	608
	
l4011:	
;main.c: 607: }
;main.c: 608: if(maxduty < 1)
	movf	((_maxduty)),w
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l4015
u2360:
	line	609
	
l4013:	
;main.c: 609: maxduty = 1;
	clrf	(_maxduty)
	incf	(_maxduty),f
	line	610
	
l4015:	
;main.c: 610: if(maxduty > 45)
	movlw	low(02Eh)
	subwf	(_maxduty),w
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l1093
u2370:
	line	611
	
l4017:	
;main.c: 611: maxduty = 45;
	movlw	low(02Dh)
	movwf	(_maxduty)
	
l1093:	
	line	612
;main.c: 612: PWMD4L = maxduty;
	movf	(_maxduty),w
	movwf	(27)	;volatile
	line	613
	
l4019:	
;main.c: 613: pwm2Init();
	fcall	_pwm2Init
	line	619
	
l4021:	
;main.c: 618: }
;main.c: 619: chrgCloseTime = 0;
	clrf	(_chrgCloseTime)
	line	620
;main.c: 620: }
	goto	l1069
	line	623
	
l4023:	
;main.c: 621: else
;main.c: 622: {
;main.c: 623: if(++chrgCloseTime > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_chrgCloseTime),f
	subwf	((_chrgCloseTime)),w
	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l4037
u2380:
	line	625
	
l4025:	
;main.c: 624: {
;main.c: 625: chrgCloseTime = 0;
	clrf	(_chrgCloseTime)
	line	626
;main.c: 626: protectFlag = 0;
	clrf	(_protectFlag)
	line	627
	
l4027:	
;main.c: 627: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	628
	
l4029:	
;main.c: 628: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	629
	
l4031:	
;main.c: 629: maxduty = 0;
	clrf	(_maxduty)
	line	630
	
l4033:	
;main.c: 630: pwm2Stop();
	fcall	_pwm2Stop
	line	631
	
l4035:	
;main.c: 631: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	635
	
l4037:	
;main.c: 632: }
;main.c: 635: if(workStep > 0 && preBatValue > (batValue + 1))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l4051
u2390:
	
l4039:	
	movf	(_batValue),w
	addlw	low(01h)
	movwf	(??_chrgCtr+0)+0
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((??_chrgCtr+0)+0)+1
	movf	1+(??_chrgCtr+0)+0,w
	xorlw	80h
	movwf	(??_chrgCtr+2)+0
	movlw	80h
	subwf	(??_chrgCtr+2)+0,w
	skipz
	goto	u2405
	movf	(_preBatValue),w
	subwf	0+(??_chrgCtr+0)+0,w
u2405:

	skipnc
	goto	u2401
	goto	u2400
u2401:
	goto	l4051
u2400:
	line	637
	
l4041:	
;main.c: 636: {
;main.c: 637: unsigned int waitMaxTime = 2000;
	movlw	0D0h
	movwf	(chrgCtr@waitMaxTime)
	movlw	07h
	movwf	((chrgCtr@waitMaxTime))+1
	line	638
;main.c: 638: if(preBatValue > 74)
	movlw	low(04Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_preBatValue),w
	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l4045
u2410:
	line	640
	
l4043:	
;main.c: 639: {
;main.c: 640: waitMaxTime = 3000;
	movlw	0B8h
	movwf	(chrgCtr@waitMaxTime)
	movlw	0Bh
	movwf	((chrgCtr@waitMaxTime))+1
	line	642
	
l4045:	
;main.c: 641: }
;main.c: 642: if(++count20s > waitMaxTime)
	incf	(_count20s),f
	skipnz
	incf	(_count20s+1),f
	movf	((_count20s+1)),w
	subwf	(chrgCtr@waitMaxTime+1),w
	skipz
	goto	u2425
	movf	((_count20s)),w
	subwf	(chrgCtr@waitMaxTime),w
u2425:
	skipnc
	goto	u2421
	goto	u2420
u2421:
	goto	l1069
u2420:
	line	644
	
l4047:	
;main.c: 643: {
;main.c: 644: count20s = 0;
	clrf	(_count20s)
	clrf	(_count20s+1)
	line	645
	
l4049:	
;main.c: 645: preBatValue = preBatValue - 1;
	movlw	low(0FFh)
	addwf	(_preBatValue),f
	goto	l1069
	line	650
	
l4051:	
;main.c: 648: else
;main.c: 649: {
;main.c: 650: count20s = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_count20s)
	clrf	(_count20s+1)
	line	654
	
l1069:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_pwm2Init

;; *************** function _pwm2Init *****************
;; Defined at:
;;		line 484 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	484
global __ptext16
__ptext16:	;psect for function _pwm2Init
psect	text16
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	484
	global	__size_of_pwm2Init
	__size_of_pwm2Init	equ	__end_of_pwm2Init-_pwm2Init
	
_pwm2Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm2Init: [wreg+status,2+status,0]
	line	486
	
l3579:	
;main.c: 486: if(chrgPWMFlag)
	movf	((_chrgPWMFlag)),w
	btfsc	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l1059
u1690:
	goto	l1060
	line	489
	
l1059:	
	line	490
;main.c: 489: }
;main.c: 490: chrgPWMFlag = 1;
	clrf	(_chrgPWMFlag)
	incf	(_chrgPWMFlag),f
	line	491
	
l3583:	
;main.c: 491: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	492
	
l3585:	
;main.c: 492: PWMT4L = 70;
	movlw	low(046h)
	movwf	(28)	;volatile
	line	493
	
l3587:	
;main.c: 493: PWMD4L = 5;
	movlw	low(05h)
	movwf	(27)	;volatile
	line	494
	
l3589:	
;main.c: 494: PWMCON1 = 0xC0;
	movlw	low(0C0h)
	movwf	(22)	;volatile
	line	495
	
l3591:	
;main.c: 495: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	496
	
l3593:	
;main.c: 496: PWMCON0 |= 0x30;
	movlw	low(030h)
	iorwf	(21),f	;volatile
	line	497
	
l1060:	
	return
	opt stack 0
GLOBAL	__end_of_pwm2Init
	__end_of_pwm2Init:
	signat	_pwm2Init,89
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 362 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Sample
;;		_pwm2Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	362
global __ptext17
__ptext17:	;psect for function _checkOutA
psect	text17
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	362
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 5
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	365
	
l3817:	
;main.c: 365: test_adc = ADC_Sample(5, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(05h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	366
	
l3819:	
;main.c: 366: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l1027
u1970:
	line	368
	
l3821:	
;main.c: 367: {
;main.c: 368: chrgAD = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_chrgAD+1)
	movf	(_adresult),w	;volatile
	movwf	(_chrgAD)
	line	369
	
l3823:	
;main.c: 369: if(chrgFlag && chrgAD > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u1981
	goto	u1980
u1981:
	goto	l1027
u1980:
	
l3825:	
	movlw	0
	subwf	(_chrgAD+1),w
	movlw	065h
	skipnz
	subwf	(_chrgAD),w
	skipc
	goto	u1991
	goto	u1990
u1991:
	goto	l1027
u1990:
	line	371
	
l3827:	
;main.c: 370: {
;main.c: 371: pwm2Stop();
	fcall	_pwm2Stop
	line	372
	
l3829:	
;main.c: 372: PORTB &= 0xF7;
	bcf	(6)+(3/8),(3)&7	;volatile
	line	373
	
l3831:	
;main.c: 373: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	line	374
	
l3833:	
;main.c: 374: PWMD4L = 0;
	clrf	(27)	;volatile
	line	375
	
l3835:	
;main.c: 375: maxduty = 0;
	clrf	(_maxduty)
	line	379
	
l1027:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 381 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Sample
;;		_pwm1Stop
;;		_pwm2Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	381
global __ptext18
__ptext18:	;psect for function _checkBatAD
psect	text18
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	381
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 5
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	384
	
l3837:	
;main.c: 384: test_adc = ADC_Sample(13, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0Dh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	385
	
l3839:	
;main.c: 385: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l3889
u2000:
	line	387
	
l3841:	
;main.c: 386: {
;main.c: 387: tempData = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_tempData+1)
	movf	(_adresult),w	;volatile
	movwf	(_tempData)
	line	388
	
l3843:	
;main.c: 388: if(chrgFlag && tempData > 1676)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2011
	goto	u2010
u2011:
	goto	l3855
u2010:
	
l3845:	
	movlw	06h
	subwf	(_tempData+1),w
	movlw	08Dh
	skipnz
	subwf	(_tempData),w
	skipc
	goto	u2021
	goto	u2020
u2021:
	goto	l3855
u2020:
	line	390
	
l3847:	
;main.c: 389: {
;main.c: 390: pwm2Stop();
	fcall	_pwm2Stop
	line	391
	
l3849:	
;main.c: 391: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	line	392
	
l3851:	
;main.c: 392: PWMD4L = 0;
	clrf	(27)	;volatile
	line	393
	
l3853:	
;main.c: 393: maxduty = 0;
	clrf	(_maxduty)
	line	395
	
l3855:	
;main.c: 394: }
;main.c: 395: if(tempData < 1118)
	movlw	04h
	subwf	(_tempData+1),w
	movlw	05Eh
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u2031
	goto	u2030
u2031:
	goto	l3873
u2030:
	line	397
	
l3857:	
;main.c: 396: {
;main.c: 397: batValue = 0;
	clrf	(_batValue)
	line	399
	
l3859:	
;main.c: 399: if(tempData < 1080 && workStep > 0)
	movlw	04h
	subwf	(_tempData+1),w
	movlw	038h
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u2041
	goto	u2040
u2041:
	goto	l3871
u2040:
	
l3861:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2051
	goto	u2050
u2051:
	goto	l3871
u2050:
	line	401
	
l3863:	
;main.c: 400: {
;main.c: 401: if(++closeCount >= 1000)
	incf	(_closeCount),f
	skipnz
	incf	(_closeCount+1),f
	movlw	03h
	subwf	((_closeCount+1)),w
	movlw	0E8h
	skipnz
	subwf	((_closeCount)),w
	skipc
	goto	u2061
	goto	u2060
u2061:
	goto	l1036
u2060:
	line	403
	
l3865:	
;main.c: 402: {
;main.c: 403: closeCount = 0;
	clrf	(_closeCount)
	clrf	(_closeCount+1)
	line	404
;main.c: 404: preBatValue = 0;
	clrf	(_preBatValue)
	line	405
;main.c: 405: workStep = 0;
	clrf	(_workStep)
	line	406
	
l3867:	
;main.c: 406: pwm1Stop();
	fcall	_pwm1Stop
	line	407
	
l3869:	
;main.c: 407: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	goto	l3889
	line	412
	
l3871:	
;main.c: 410: else
;main.c: 411: {
;main.c: 412: closeCount = 0;
	clrf	(_closeCount)
	clrf	(_closeCount+1)
	goto	l3889
	line	417
	
l3873:	
;main.c: 415: else
;main.c: 416: {
;main.c: 417: closeCount = 0;
	clrf	(_closeCount)
	clrf	(_closeCount+1)
	line	418
	
l3875:	
;main.c: 418: if(tempData >= 1460)
	movlw	05h
	subwf	(_tempData+1),w
	movlw	0B4h
	skipnz
	subwf	(_tempData),w
	skipc
	goto	u2071
	goto	u2070
u2071:
	goto	l3879
u2070:
	line	421
	
l3877:	
;main.c: 419: {
;main.c: 421: batValue = ((tempData - 1460) /2) + 46;
	movf	(_tempData),w
	addlw	low(0FA4Ch)
	movwf	(??_checkBatAD+0)+0
	movf	(_tempData+1),w
	skipnc
	addlw	1
	addlw	high(0FA4Ch)
	movwf	1+(??_checkBatAD+0)+0
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	movf	0+(??_checkBatAD+0)+0,w
	addlw	02Eh
	movwf	(_batValue)
	line	422
;main.c: 422: }
	goto	l3885
	line	423
	
l3879:	
;main.c: 423: else if(tempData >= 1340)
	movlw	05h
	subwf	(_tempData+1),w
	movlw	03Ch
	skipnz
	subwf	(_tempData),w
	skipc
	goto	u2081
	goto	u2080
u2081:
	goto	l3883
u2080:
	line	426
	
l3881:	
;main.c: 424: {
;main.c: 426: batValue = ((tempData - 1340) /4) + 16;
	movf	(_tempData),w
	addlw	low(0FAC4h)
	movwf	(??_checkBatAD+0)+0
	movf	(_tempData+1),w
	skipnc
	addlw	1
	addlw	high(0FAC4h)
	movwf	1+(??_checkBatAD+0)+0
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	movf	0+(??_checkBatAD+0)+0,w
	addlw	010h
	movwf	(_batValue)
	line	427
;main.c: 427: }
	goto	l3885
	line	430
	
l3883:	
;main.c: 428: else
;main.c: 429: {
;main.c: 430: batValue = (tempData - 1118) / 16;
	movf	(_tempData),w
	addlw	low(0FBA2h)
	movwf	(??_checkBatAD+0)+0
	movf	(_tempData+1),w
	skipnc
	addlw	1
	addlw	high(0FBA2h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u2095:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u2095
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_batValue)
	line	432
	
l3885:	
;main.c: 431: }
;main.c: 432: if(batValue > 99)
	movlw	low(064h)
	subwf	(_batValue),w
	skipc
	goto	u2101
	goto	u2100
u2101:
	goto	l3889
u2100:
	line	433
	
l3887:	
;main.c: 433: batValue = 99;
	movlw	low(063h)
	movwf	(_batValue)
	goto	l3889
	line	435
	
l1036:	
	line	438
	
l3889:	
;main.c: 435: }
;main.c: 437: }
;main.c: 438: test_adc = ADC_Sample(14, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0Eh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	439
	
l3891:	
;main.c: 439: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l1049
u2110:
	line	441
	
l3893:	
;main.c: 440: {
;main.c: 441: if(adresult > 100)
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u2121
	goto	u2120
u2121:
	goto	l1049
u2120:
	line	443
	
l3895:	
;main.c: 442: {
;main.c: 443: if(adresult > 800 || (tempData - adresult) > 800)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	021h
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u2131
	goto	u2130
u2131:
	goto	l3899
u2130:
	
l3897:	
	movf	(_adresult),w	;volatile
	subwf	(_tempData),w
	movwf	(??_checkBatAD+0)+0
	movf	(_adresult+1),w	;volatile
	skipc
	incf	(_adresult+1),w	;volatile
	subwf	(_tempData+1),w
	movwf	1+(??_checkBatAD+0)+0
	movlw	03h
	subwf	1+(??_checkBatAD+0)+0,w
	movlw	021h
	skipnz
	subwf	0+(??_checkBatAD+0)+0,w
	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l3905
u2140:
	line	446
	
l3899:	
;main.c: 444: {
;main.c: 446: if(++countHalfFull > 200)
	movlw	low(0C9h)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l1043
u2150:
	line	448
	
l3901:	
;main.c: 447: {
;main.c: 448: countHalfFull = 0;
	clrf	(_countHalfFull)
	line	449
	
l3903:	
;main.c: 449: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l1049
	line	454
	
l3905:	
;main.c: 452: else
;main.c: 453: {
;main.c: 454: countHalfFull = 0;
	clrf	(_countHalfFull)
	goto	l1049
	line	456
	
l1043:	
	line	458
	
l1049:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_pwm2Stop

;; *************** function _pwm2Stop *****************
;; Defined at:
;;		line 499 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;;		_checkOutA
;;		_checkBatAD
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	499
global __ptext19
__ptext19:	;psect for function _pwm2Stop
psect	text19
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	499
	global	__size_of_pwm2Stop
	__size_of_pwm2Stop	equ	__end_of_pwm2Stop-_pwm2Stop
	
_pwm2Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm2Stop: [status,2]
	line	501
	
l3551:	
;main.c: 501: PWMD4L = 0;
	clrf	(27)	;volatile
	line	502
	
l3553:	
;main.c: 502: PWMCON0 &= 0xEF;
	bcf	(21)+(4/8),(4)&7	;volatile
	line	503
	
l3555:	
;main.c: 503: PORTA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(4/8),(4)&7	;volatile
	line	504
;main.c: 504: chrgPWMFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgPWMFlag)
	line	505
	
l1063:	
	return
	opt stack 0
GLOBAL	__end_of_pwm2Stop
	__end_of_pwm2Stop:
	signat	_pwm2Stop,89
	global	_pwm1Stop

;; *************** function _pwm1Stop *****************
;; Defined at:
;;		line 476 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;;		_checkBatAD
;;		_chrgCtr
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	476
global __ptext20
__ptext20:	;psect for function _pwm1Stop
psect	text20
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	476
	global	__size_of_pwm1Stop
	__size_of_pwm1Stop	equ	__end_of_pwm1Stop-_pwm1Stop
	
_pwm1Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm1Stop: [status,2]
	line	478
	
l3557:	
;main.c: 478: PWMD0L = 0;
	clrf	(25)	;volatile
	line	479
	
l3559:	
;main.c: 479: PWMCON0 &= 0xFE;
	bcf	(21)+(0/8),(0)&7	;volatile
	line	480
	
l3561:	
;main.c: 480: PORTA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(0/8),(0)&7	;volatile
	line	481
;main.c: 481: motorPWMFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_motorPWMFlag)
	line	482
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of_pwm1Stop
	__end_of_pwm1Stop:
	signat	_pwm1Stop,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 290 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;;		On entry : 0/0
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
;;		_checkOutA
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	290
global __ptext21
__ptext21:	;psect for function _ADC_Sample
psect	text21
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	290
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 5
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ADC_Sample@adch)
	line	292
	
l3479:	
;main.c: 292: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	293
	
l3481:	
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
	
l3483:	
;main.c: 296: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u1531
	goto	u1530
u1531:
	goto	l3489
u1530:
	
l3485:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u1541
	goto	u1540
u1541:
	goto	l3489
u1540:
	line	299
	
l3487:	
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
	u3727:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3727
	nop
opt asmopt_pop

	line	301
;main.c: 301: }
	goto	l3491
	line	303
	
l3489:	
;main.c: 302: else
;main.c: 303: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	305
	
l3491:	
;main.c: 305: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u1551
	goto	u1550
u1551:
	goto	l3497
u1550:
	line	307
	
l3493:	
;main.c: 306: {
;main.c: 307: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	308
	
l3495:	
;main.c: 308: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	310
	
l3497:	
	line	311
	
l3499:	
;main.c: 311: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	313
	
l3505:	
;main.c: 312: {
;main.c: 313: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1565:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1565
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	314
# 314 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
nop ;# 
	line	315
# 315 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
nop ;# 
	line	316
# 316 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
nop ;# 
	line	317
# 317 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
nop ;# 
psect	text21
	line	318
	
l3507:	
;main.c: 318: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	320
	
l3509:	
;main.c: 320: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	321
;main.c: 321: while (GODONE)
	goto	l1011
	
l1012:	
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
	goto	u1571
	goto	u1570
u1571:
	goto	l1011
u1570:
	line	326
	
l3511:	
;main.c: 326: return 0;
	movlw	low(0)
	goto	l1014
	line	327
	
l1011:	
	line	321
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u1581
	goto	u1580
u1581:
	goto	l1012
u1580:
	line	329
	
l3515:	
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
	
l3517:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	331
	
l3519:	
;main.c: 331: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l3523
u1590:
	line	333
	
l3521:	
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
	goto	l1017
	line	336
	
l3523:	
;main.c: 336: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u1605
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u1605:
	skipnc
	goto	u1601
	goto	u1600
u1601:
	goto	l3527
u1600:
	line	337
	
l3525:	
;main.c: 337: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l1017
	line	338
	
l3527:	
;main.c: 338: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u1615
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u1615:
	skipnc
	goto	u1611
	goto	u1610
u1611:
	goto	l1017
u1610:
	line	339
	
l3529:	
;main.c: 339: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	341
	
l1017:	
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
	goto	u1621
	addwf	(ADC_Sample@adsum+1),f	;volatile
u1621:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1622
	addwf	(ADC_Sample@adsum+2),f	;volatile
u1622:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1623
	addwf	(ADC_Sample@adsum+3),f	;volatile
u1623:

	line	311
	
l3531:	
	incf	(ADC_Sample@i),f
	
l3533:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u1631
	goto	u1630
u1631:
	goto	l3505
u1630:
	line	343
	
l3535:	
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
	goto	u1645
	goto	u1646
u1645:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1646:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1647
	goto	u1648
u1647:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1648:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1649
	goto	u1640
u1649:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1640:

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
	goto	u1655
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u1655
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u1655
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u1655:
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l1021
u1650:
	line	345
	
l3537:	
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
	goto	u1665
	goto	u1666
u1665:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1666:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1667
	goto	u1668
u1667:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1668:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1669
	goto	u1660
u1669:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1660:

	goto	l3539
	line	346
	
l1021:	
	line	347
;main.c: 346: else
;main.c: 347: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	349
	
l3539:	
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
u1675:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1670:
	addlw	-1
	skipz
	goto	u1675
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	351
	
l3541:	
;main.c: 351: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	352
	
l3543:	
;main.c: 352: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	353
	
l3545:	
;main.c: 353: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	354
	
l3547:	
;main.c: 354: return 0xA5;
	movlw	low(0A5h)
	line	356
	
l1014:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 222 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;;		_Init_System
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	222
global __ptext22
__ptext22:	;psect for function _Sleep_Mode
psect	text22
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	222
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	224
	
l3785:	
;main.c: 224: INTCON = 0;
	clrf	(11)	;volatile
	line	226
;main.c: 226: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	228
	
l3787:	
;main.c: 228: TRISA = 0xE2;
	movlw	low(0E2h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	229
	
l3789:	
;main.c: 229: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	230
;main.c: 230: WPUA = 0xC0;
	movlw	low(0C0h)
	movwf	(136)^080h	;volatile
	line	231
;main.c: 231: TRISB = 0xE0;
	movlw	low(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	232
	
l3791:	
;main.c: 232: PORTB = 0;
	clrf	(6)	;volatile
	line	233
	
l3793:	
;main.c: 233: WPUB = 0x80;
	movlw	low(080h)
	movwf	(8)	;volatile
	line	234
;main.c: 234: TRISC = 0x00;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	235
;main.c: 235: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	237
;main.c: 237: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	238
;main.c: 238: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	240
;main.c: 240: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	242
	
l3795:	
;main.c: 242: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	243
	
l3797:	
;main.c: 243: T2CON = 0;
	clrf	(19)	;volatile
	line	244
;main.c: 244: IOCA = 0B00000010;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	245
;main.c: 245: IOCB = 0B10000000;
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	247
	
l3799:	
;main.c: 247: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	248
	
l3801:	
;main.c: 248: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	249
	
l3803:	
;main.c: 249: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	251
	
l3805:	
;main.c: 251: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	254
;main.c: 254: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	255
	
l3807:	
;main.c: 255: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	256
	
l3809:	
;main.c: 256: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	257
;main.c: 257: PORTB;
	movf	(6),w	;volatile
	line	259
# 259 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
clrwdt ;# 
	line	261
# 261 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
sleep ;# 
	line	263
# 263 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
nop ;# 
	line	264
# 264 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
clrwdt ;# 
psect	text22
	line	265
	
l3811:	
;main.c: 265: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u1961
	goto	u1960
u1961:
	goto	l3815
u1960:
	
l3813:	
	bcf	(107/8),(107)&7	;volatile
	line	267
	
l3815:	
;main.c: 267: Init_System();
	fcall	_Init_System
	line	268
	
l1003:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 129 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Sleep_Mode
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	129
global __ptext23
__ptext23:	;psect for function _Init_System
psect	text23
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	129
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	131
	
l3455:	
# 131 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
nop ;# 
	line	132
# 132 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
clrwdt ;# 
psect	text23
	line	133
	
l3457:	
;main.c: 133: INTCON = 0;
	clrf	(11)	;volatile
	line	134
	
l3459:	
;main.c: 134: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	135
	
l3461:	
;main.c: 135: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	140
;main.c: 140: TRISA = 0xE2;
	movlw	low(0E2h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	141
	
l3463:	
;main.c: 141: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	142
	
l3465:	
;main.c: 142: WPUA = 0xC0;
	movlw	low(0C0h)
	movwf	(136)^080h	;volatile
	line	143
	
l3467:	
;main.c: 143: TRISB = 0xE0;
	movlw	low(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	144
	
l3469:	
;main.c: 144: PORTB = 0;
	clrf	(6)	;volatile
	line	145
;main.c: 145: WPUB = 0x80;
	movlw	low(080h)
	movwf	(8)	;volatile
	line	146
	
l3471:	
;main.c: 146: TRISC = 0x00;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	147
	
l3473:	
;main.c: 147: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	149
;main.c: 149: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	150
;main.c: 150: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	151
;main.c: 151: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	153
;main.c: 153: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	154
;main.c: 154: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	155
	
l3475:	
;main.c: 155: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	156
	
l3477:	
;main.c: 156: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	157
	
l983:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 181 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	181
global __ptext24
__ptext24:	;psect for function _Isr_Timer
psect	text24
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	181
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 5
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
psect	text24
	line	183
	
i1l4317:	
;main.c: 183: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u304_21
	goto	u304_20
u304_21:
	goto	i1l4339
u304_20:
	line	185
	
i1l4319:	
;main.c: 184: {
;main.c: 185: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	186
	
i1l4321:	
;main.c: 186: if(++intCount10 > 3)
	movlw	low(04h)
	incf	(_intCount10),f
	subwf	((_intCount10)),w
	skipc
	goto	u305_21
	goto	u305_20
u305_21:
	goto	i1l4329
u305_20:
	line	188
	
i1l4323:	
;main.c: 187: {
;main.c: 188: intCount10 = 0;
	clrf	(_intCount10)
	line	189
	
i1l4325:	
;main.c: 189: if(beepTime > 0)
	movf	((_beepTime)),w
	btfsc	status,2
	goto	u306_21
	goto	u306_20
u306_21:
	goto	i1l994
u306_20:
	line	191
	
i1l4327:	
;main.c: 190: {
;main.c: 191: PORTA ^= 0x04;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	xorwf	(134)^080h,f	;volatile
	line	192
;main.c: 192: }
	goto	i1l4329
	line	193
	
i1l994:	
	line	195
;main.c: 193: else
;main.c: 194: {
;main.c: 195: PORTA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(2/8),(2)&7	;volatile
	line	198
	
i1l4329:	
;main.c: 196: }
;main.c: 197: }
;main.c: 198: if(++MainTime >= 158)
	movlw	low(09Eh)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u307_21
	goto	u307_20
u307_21:
	goto	i1l999
u307_20:
	line	200
	
i1l4331:	
;main.c: 199: {
;main.c: 200: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	201
	
i1l4333:	
;main.c: 201: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	202
	
i1l4335:	
;main.c: 202: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u308_21
	goto	u308_20
u308_21:
	goto	i1l999
u308_20:
	line	204
	
i1l4337:	
;main.c: 203: {
;main.c: 204: count1s = 0;
	clrf	(_count1s)
	goto	i1l999
	line	210
	
i1l4339:	
;main.c: 208: else
;main.c: 209: {
;main.c: 210: PIR1 = 0;
	clrf	(13)	;volatile
	line	213
	
i1l999:	
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
