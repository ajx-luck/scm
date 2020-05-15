opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1711C
opt include "E:\cms\SCMCU_IDE_V2.00.07\data\include\sc8p1711c.cgen.inc"
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
	FNCALL	_main,_Init_Config
	FNCALL	_main,_Sleep_Mode
	FNCALL	_main,_checkKeys
	FNCALL	_main,_checkUsbStatus
	FNCALL	_main,_readVrefADC
	FNCALL	_main,_scanKeys
	FNCALL	_scanKeys,_sacnKeyInput
	FNCALL	_readVrefADC,_ADC_Result
	FNCALL	_readVrefADC,_ADC_Sample
	FNCALL	_readVrefADC,_DelayXms
	FNCALL	_checkUsbStatus,_closeFan
	FNCALL	_checkKeys,_checkFan
	FNCALL	_checkKeys,_closeFan
	FNCALL	_checkKeys,_key_driver
	FNCALL	_checkKeys,_setFanLevel
	FNCALL	_checkFan,_closeFan
	FNCALL	_checkFan,_setFanLevel
	FNCALL	_setFanLevel,___awdiv
	FNCALL	_setFanLevel,_setLedOn
	FNCALL	_closeFan,_Init_PWM
	FNCALL	_closeFan,_Sleep_Mode
	FNCALL	_closeFan,_setLedOn
	FNCALL	_Init_Config,_Init_GPIO
	FNCALL	_Init_Config,_Init_Interupt
	FNCALL	_Init_Config,_Init_PWM
	FNCALL	_Init_Config,_Init_System
	FNCALL	_Init_Config,_resetKey
	FNROOT	_main
	FNCALL	_Timer0_Isr,i1_Init_Config
	FNCALL	i1_Init_Config,i1_Init_GPIO
	FNCALL	i1_Init_Config,i1_Init_Interupt
	FNCALL	i1_Init_Config,i1_Init_PWM
	FNCALL	i1_Init_Config,i1_Init_System
	FNCALL	i1_Init_Config,i1_resetKey
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_FAN_STATUS
	global	_currentLevel
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	25

;initializer for _FAN_STATUS
	retlw	02h
	line	23

;initializer for _currentLevel
	retlw	03h
	global	_count300ms
	global	_time0Flag
	global	ADC_Sample@adsum
	global	ADC_Sample@admax
	global	ADC_Sample@admin
	global	_fan_check_time
	global	_count10Ms
	global	_countTime
	global	_adresult
	global	ADC_Sample@adtimes
	global	_lowVTime
	global	_key3
	global	_key2
	global	_key1
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_T2CON
_T2CON	set	18
	global	_INTCON
_INTCON	set	11
	global	_PORTC
_PORTC	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_TMR0
_TMR0	set	1
	global	_GODONE
_GODONE	set	249
	global	_TMR2IF
_TMR2IF	set	97
	global	_GIE
_GIE	set	95
	global	_RBIE
_RBIE	set	91
	global	_T0IF
_T0IF	set	90
	global	_RBIF
_RBIF	set	88
	global	_TO
_TO	set	28
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_IOCB
_IOCB	set	150
	global	_WPUB
_WPUB	set	149
	global	_PR2
_PR2	set	146
	global	_OSCCON
_OSCCON	set	143
	global	_TRISC
_TRISC	set	135
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_WPUC
_WPUC	set	399
	global	_WPUA
_WPUA	set	398
; #config settings
	file	"uf166fan.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_count300ms:
       ds      1

_time0Flag:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	25
_FAN_STATUS:
       ds      1

psect	dataCOMMON
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	23
_currentLevel:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
ADC_Sample@adsum:
       ds      4

ADC_Sample@admax:
       ds      2

ADC_Sample@admin:
       ds      2

_fan_check_time:
       ds      2

_count10Ms:
       ds      2

_countTime:
       ds      2

_adresult:
       ds      2

ADC_Sample@adtimes:
       ds      1

_lowVTime:
       ds      1

_key3:
       ds      7

_key2:
       ds      7

_key1:
       ds      7

	file	"uf166fan.as"
	line	#
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
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
	movlw	low((__pbssBANK0)+027h)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
?_closeFan:	; 1 bytes @ 0x0
?_setLedOn:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_sacnKeyInput:	; 1 bytes @ 0x0
?_key_driver:	; 1 bytes @ 0x0
?_Init_Config:	; 1 bytes @ 0x0
?_readVrefADC:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Init_GPIO:	; 1 bytes @ 0x0
?_Init_Interupt:	; 1 bytes @ 0x0
?_resetKey:	; 1 bytes @ 0x0
?_checkUsbStatus:	; 1 bytes @ 0x0
?_Init_PWM:	; 1 bytes @ 0x0
?_setFanLevel:	; 1 bytes @ 0x0
?_checkFan:	; 1 bytes @ 0x0
?_scanKeys:	; 1 bytes @ 0x0
?_checkKeys:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
?_ADC_Sample:	; 1 bytes @ 0x0
?_ADC_Result:	; 1 bytes @ 0x0
?_DelayXms:	; 1 bytes @ 0x0
?i1_Init_PWM:	; 1 bytes @ 0x0
??i1_Init_PWM:	; 1 bytes @ 0x0
?i1_Init_Config:	; 1 bytes @ 0x0
?i1_resetKey:	; 1 bytes @ 0x0
??i1_resetKey:	; 1 bytes @ 0x0
?i1_Init_System:	; 1 bytes @ 0x0
??i1_Init_System:	; 1 bytes @ 0x0
?i1_Init_GPIO:	; 1 bytes @ 0x0
??i1_Init_GPIO:	; 1 bytes @ 0x0
?i1_Init_Interupt:	; 1 bytes @ 0x0
??i1_Init_Interupt:	; 1 bytes @ 0x0
	global	i1resetKey@key
i1resetKey@key:	; 1 bytes @ 0x0
	ds	1
??_Timer0_Isr:	; 1 bytes @ 0x1
??i1_Init_Config:	; 1 bytes @ 0x1
	ds	3
??_setLedOn:	; 1 bytes @ 0x4
??_Sleep_Mode:	; 1 bytes @ 0x4
??_sacnKeyInput:	; 1 bytes @ 0x4
??_key_driver:	; 1 bytes @ 0x4
??_Init_System:	; 1 bytes @ 0x4
??_Init_GPIO:	; 1 bytes @ 0x4
??_Init_Interupt:	; 1 bytes @ 0x4
??_resetKey:	; 1 bytes @ 0x4
??_Init_PWM:	; 1 bytes @ 0x4
??_ADC_Result:	; 1 bytes @ 0x4
??_DelayXms:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
	global	setLedOn@ledIndex
setLedOn@ledIndex:	; 1 bytes @ 0x4
	global	resetKey@key
resetKey@key:	; 1 bytes @ 0x4
	ds	1
??_closeFan:	; 1 bytes @ 0x5
??_Init_Config:	; 1 bytes @ 0x5
??_readVrefADC:	; 1 bytes @ 0x5
??_setFanLevel:	; 1 bytes @ 0x5
	ds	1
??_scanKeys:	; 1 bytes @ 0x6
??_checkKeys:	; 1 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_checkUsbStatus:	; 1 bytes @ 0x0
??_ADC_Sample:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	sacnKeyInput@key
sacnKeyInput@key:	; 1 bytes @ 0x0
	global	key_driver@key_return
key_driver@key_return:	; 1 bytes @ 0x0
	global	ADC_Result@adch
ADC_Result@adch:	; 1 bytes @ 0x0
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	key_driver@key_read
key_driver@key_read:	; 1 bytes @ 0x1
	global	ADC_Result@i
ADC_Result@i:	; 1 bytes @ 0x1
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x1
	ds	1
	global	key_driver@key
key_driver@key:	; 1 bytes @ 0x2
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
	global	setFanLevel@level
setFanLevel@level:	; 1 bytes @ 0x8
	ds	1
	global	setFanLevel@tempLevel
setFanLevel@tempLevel:	; 1 bytes @ 0x9
	ds	1
??_checkFan:	; 1 bytes @ 0xA
	ds	1
	global	checkKeys@key2Status
checkKeys@key2Status:	; 1 bytes @ 0xB
	ds	1
	global	checkKeys@key3Status
checkKeys@key3Status:	; 1 bytes @ 0xC
	ds	1
??_main:	; 1 bytes @ 0xD
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        2
;!    BSS         41
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80     14      53
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    resetKey@key	PTR struct Keys size(1) Largest target is 7
;!		 -> key3(BANK0[7]), key2(BANK0[7]), key1(BANK0[7]), 
;!
;!    key_driver@key	PTR struct Keys size(1) Largest target is 7
;!		 -> key3(BANK0[7]), key2(BANK0[7]), key1(BANK0[7]), 
;!
;!    sacnKeyInput@key	PTR struct Keys size(1) Largest target is 7
;!		 -> key3(BANK0[7]), key2(BANK0[7]), key1(BANK0[7]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_readVrefADC
;!    _scanKeys->_sacnKeyInput
;!    _readVrefADC->_ADC_Result
;!    _checkUsbStatus->_closeFan
;!    _checkKeys->_closeFan
;!    _checkFan->_closeFan
;!    _setFanLevel->_setLedOn
;!    _closeFan->_setLedOn
;!    _Init_Config->_resetKey
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    i1_Init_Config->i1_resetKey
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_checkKeys
;!    _scanKeys->_sacnKeyInput
;!    _readVrefADC->_ADC_Sample
;!    _checkKeys->_checkFan
;!    _checkFan->_setFanLevel
;!    _setFanLevel->___awdiv
;!
;!Critical Paths under _Timer0_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _Timer0_Isr in BANK1
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0    3276
;!                                             13 BANK0      1     1      0
;!                        _Init_Config
;!                         _Sleep_Mode
;!                          _checkKeys
;!                     _checkUsbStatus
;!                        _readVrefADC
;!                           _scanKeys
;! ---------------------------------------------------------------------------------
;! (1) _scanKeys                                             0     0      0     214
;!                       _sacnKeyInput
;! ---------------------------------------------------------------------------------
;! (2) _sacnKeyInput                                         3     3      0     214
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _readVrefADC                                          1     1      0     533
;!                                              5 COMMON     1     1      0
;!                         _ADC_Result
;!                         _ADC_Sample
;!                           _DelayXms
;! ---------------------------------------------------------------------------------
;! (2) _DelayXms                                             3     3      0     167
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                           8     8      0     291
;!                                              0 BANK0      8     8      0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Result                                           3     3      0      65
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _checkUsbStatus                                       2     2      0      31
;!                                              0 BANK0      2     2      0
;!                           _closeFan
;! ---------------------------------------------------------------------------------
;! (1) _checkKeys                                            2     2      0    2329
;!                                             11 BANK0      2     2      0
;!                           _checkFan
;!                           _closeFan
;!                         _key_driver
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (2) _key_driver                                           3     3      0     597
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _checkFan                                             1     1      0     832
;!                                             10 BANK0      1     1      0
;!                           _closeFan
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (2) _setFanLevel                                          4     4      0     801
;!                                              8 BANK0      2     2      0
;!                            ___awdiv
;!                           _setLedOn
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4     606
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _closeFan                                             1     1      0      31
;!                                              5 COMMON     1     1      0
;!                           _Init_PWM
;!                         _Sleep_Mode
;!                           _setLedOn
;! ---------------------------------------------------------------------------------
;! (3) _setLedOn                                             1     1      0      31
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _Sleep_Mode                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_Config                                          0     0      0     169
;!                          _Init_GPIO
;!                      _Init_Interupt
;!                           _Init_PWM
;!                        _Init_System
;!                           _resetKey
;! ---------------------------------------------------------------------------------
;! (2) _resetKey                                             1     1      0     169
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _Init_PWM                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Init_Interupt                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Init_GPIO                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _Timer0_Isr                                           3     3      0      88
;!                                              1 COMMON     3     3      0
;!                      i1_Init_Config
;! ---------------------------------------------------------------------------------
;! (6) i1_Init_Config                                        0     0      0      88
;!                        i1_Init_GPIO
;!                    i1_Init_Interupt
;!                         i1_Init_PWM
;!                      i1_Init_System
;!                         i1_resetKey
;! ---------------------------------------------------------------------------------
;! (7) i1_resetKey                                           1     1      0      88
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (7) i1_Init_System                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) i1_Init_PWM                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) i1_Init_Interupt                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) i1_Init_GPIO                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_Config
;!     _Init_GPIO
;!     _Init_Interupt
;!     _Init_PWM
;!     _Init_System
;!     _resetKey
;!   _Sleep_Mode
;!   _checkKeys
;!     _checkFan
;!       _closeFan
;!         _Init_PWM
;!         _Sleep_Mode
;!         _setLedOn
;!       _setFanLevel
;!         ___awdiv
;!         _setLedOn
;!     _closeFan
;!       _Init_PWM
;!       _Sleep_Mode
;!       _setLedOn
;!     _key_driver
;!     _setFanLevel
;!       ___awdiv
;!       _setLedOn
;!   _checkUsbStatus
;!     _closeFan
;!       _Init_PWM
;!       _Sleep_Mode
;!       _setLedOn
;!   _readVrefADC
;!     _ADC_Result
;!     _ADC_Sample
;!     _DelayXms
;!   _scanKeys
;!     _sacnKeyInput
;!
;! _Timer0_Isr (ROOT)
;!   i1_Init_Config
;!     i1_Init_GPIO
;!     i1_Init_Interupt
;!     i1_Init_PWM
;!     i1_Init_System
;!     i1_resetKey
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      E      35       5       66.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      3F       8        0.0%
;!ABS                  0      0      3F       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 267 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Init_Config
;;		_Sleep_Mode
;;		_checkKeys
;;		_checkUsbStatus
;;		_readVrefADC
;;		_scanKeys
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	267
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	267
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	268
	
l3659:	
;main.c: 268: if (((PORTB) >> (2)&1) == 0) {
	movf	(6),w	;volatile
	movwf	(??_main+0)+0
	clrc
	rrf	(??_main+0)+0,f
	clrc
	rrf	(??_main+0)+0,f
	btfsc	0+(??_main+0)+0,(0)&7
	goto	u1651
	goto	u1650
u1651:
	goto	l3663
u1650:
	line	269
	
l3661:	
;main.c: 269: Sleep_Mode();
	fcall	_Sleep_Mode
	line	272
	
l3663:	
;main.c: 270: }
;main.c: 272: Init_Config();
	fcall	_Init_Config
	line	275
	
l3665:	
;main.c: 275: if (time0Flag) {
	movf	((_time0Flag)),w
	btfsc	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l3675
u1660:
	line	276
	
l3667:	
# 276 "E:\project\project0508\scm\uf166fan\main.c"
clrwdt ;# 
psect	maintext
	line	277
	
l3669:	
;main.c: 277: time0Flag = 0;
	clrf	(_time0Flag)
	line	278
	
l3671:	
;main.c: 278: scanKeys();
	fcall	_scanKeys
	line	279
	
l3673:	
;main.c: 279: count10Ms++;
	incf	(_count10Ms),f
	skipnz
	incf	(_count10Ms+1),f
	line	283
	
l3675:	
;main.c: 280: }
;main.c: 283: if (count10Ms == 100) {
		movlw	100
	xorwf	((_count10Ms)),w
iorwf	((_count10Ms+1)),w
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l3687
u1670:
	line	284
	
l3677:	
;main.c: 284: countTime++;
	incf	(_countTime),f
	skipnz
	incf	(_countTime+1),f
	line	285
;main.c: 285: count300ms++;
	incf	(_count300ms),f
	line	286
	
l3679:	
;main.c: 286: checkKeys();
	fcall	_checkKeys
	line	287
	
l3681:	
;main.c: 287: count10Ms = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_count10Ms)
	clrf	(_count10Ms+1)
	line	289
	
l3683:	
;main.c: 289: checkUsbStatus();
	fcall	_checkUsbStatus
	line	291
	
l3685:	
;main.c: 291: readVrefADC();
	fcall	_readVrefADC
	line	294
	
l3687:	
;main.c: 292: }
;main.c: 294: if(count300ms == 30)
		movlw	30
	xorwf	((_count300ms)),w
	btfss	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l3691
u1680:
	line	296
	
l3689:	
;main.c: 295: {
;main.c: 296: count300ms = 0;
	clrf	(_count300ms)
	line	299
	
l3691:	
;main.c: 297: }
;main.c: 299: if (countTime == 100) {
		movlw	100
	xorwf	((_countTime)),w
iorwf	((_countTime+1)),w
	btfss	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l3665
u1690:
	line	300
	
l3693:	
;main.c: 300: countTime = 0;
	clrf	(_countTime)
	clrf	(_countTime+1)
	goto	l3665
	global	start
	ljmp	start
	opt stack 0
	line	305
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_scanKeys

;; *************** function _scanKeys *****************
;; Defined at:
;;		line 226 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_sacnKeyInput
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	226
global __ptext1
__ptext1:	;psect for function _scanKeys
psect	text1
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	226
	global	__size_of_scanKeys
	__size_of_scanKeys	equ	__end_of_scanKeys-_scanKeys
	
_scanKeys:	
;incstack = 0
	opt	stack 3
; Regs used in _scanKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	227
	
l3615:	
;main.c: 227: key1.key_addr_result = key2.key_addr_result = key3.key_addr_result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	0+(_key3)+05h
	movwf	0+(_key2)+05h
	movwf	0+(_key1)+05h
	line	228
	
l3617:	
;main.c: 228: sacnKeyInput(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	229
	
l3619:	
;main.c: 229: sacnKeyInput(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	230
	
l3621:	
;main.c: 230: sacnKeyInput(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	232
	
l634:	
	return
	opt stack 0
GLOBAL	__end_of_scanKeys
	__end_of_scanKeys:
	signat	_scanKeys,89
	global	_sacnKeyInput

;; *************** function _sacnKeyInput *****************
;; Defined at:
;;		line 3 in file "E:\project\project0508\scm\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    0[BANK0 ] PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          2       0       0
;;      Totals:         2       1       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scanKeys
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	3
global __ptext2
__ptext2:	;psect for function _sacnKeyInput
psect	text2
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	3
	global	__size_of_sacnKeyInput
	__size_of_sacnKeyInput	equ	__end_of_sacnKeyInput-_sacnKeyInput
	
_sacnKeyInput:	
;incstack = 0
	opt	stack 3
; Regs used in _sacnKeyInput: [wreg-fsr0h+status,2+status,0]
;sacnKeyInput@key stored from wreg
	movwf	(sacnKeyInput@key)
	line	4
	
l3465:	
;scankey.c: 4: key->key_input = ((key->key_addr_result) >> (key->key_index)&1);
	movf	(sacnKeyInput@key),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_sacnKeyInput+0)+0
	movf	(sacnKeyInput@key),w
	addlw	06h
	movwf	fsr0
	incf	indf,w
	goto	u1314
u1315:
	clrc
	rrf	(??_sacnKeyInput+0)+0,f
u1314:
	addlw	-1
	skipz
	goto	u1315
	movf	0+(??_sacnKeyInput+0)+0,w
	movwf	(??_sacnKeyInput+1)+0
	movf	(sacnKeyInput@key),w
	addlw	04h
	movwf	fsr0
	movf	(??_sacnKeyInput+1)+0,w
	movwf	indf
	movf	(sacnKeyInput@key),w
	addlw	04h
	movwf	fsr0
	movlw	low(01h)
	andwf	indf,f
	line	6
	
l673:	
	return
	opt stack 0
GLOBAL	__end_of_sacnKeyInput
	__end_of_sacnKeyInput:
	signat	_sacnKeyInput,4217
	global	_readVrefADC

;; *************** function _readVrefADC *****************
;; Defined at:
;;		line 90 in file "E:\project\project0508\scm\uf166fan\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ADC_Result
;;		_ADC_Sample
;;		_DelayXms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\adc.c"
	line	90
global __ptext3
__ptext3:	;psect for function _readVrefADC
psect	text3
	file	"E:\project\project0508\scm\uf166fan\adc.c"
	line	90
	global	__size_of_readVrefADC
	__size_of_readVrefADC	equ	__end_of_readVrefADC-_readVrefADC
	
_readVrefADC:	
;incstack = 0
	opt	stack 3
; Regs used in _readVrefADC: [wreg+status,2+status,0+pclath+cstack]
	line	92
	
l3655:	
;adc.c: 92: DelayXms(1);
	movlw	low(01h)
	fcall	_DelayXms
	line	93
;adc.c: 93: ADC_Sample(15);
	movlw	low(0Fh)
	fcall	_ADC_Sample
	line	96
	movlw	low(0Fh)
	fcall	_ADC_Result
	line	98
	
l1825:	
	return
	opt stack 0
GLOBAL	__end_of_readVrefADC
	__end_of_readVrefADC:
	signat	_readVrefADC,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 82 in file "E:\project\project0508\scm\uf166fan\adc.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    0[BANK0 ] unsigned char 
;;  j               1    2[BANK0 ] unsigned char 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       3       0
;;      Temps:          0       0       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readVrefADC
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	82
global __ptext4
__ptext4:	;psect for function _DelayXms
psect	text4
	file	"E:\project\project0508\scm\uf166fan\adc.c"
	line	82
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 3
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	85
	
l3569:	
;adc.c: 84: unsigned char i,j;
;adc.c: 85: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l3571:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u1511
	goto	u1510
u1511:
	goto	l3575
u1510:
	goto	l1822
	line	86
	
l3575:	
;adc.c: 86: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l3581:	
	decf	(DelayXms@j),f
	
l3583:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l3581
u1520:
	line	85
	
l3585:	
	decf	(DelayXms@i),f
	goto	l3571
	line	87
	
l1822:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 11 in file "E:\project\project0508\scm\uf166fan\adc.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    4[BANK0 ] unsigned char 
;;  ad_temp         2    6[BANK0 ] volatile unsigned int 
;;  i               1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       4       0
;;      Temps:          0       4       0
;;      Totals:         0       8       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readVrefADC
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	11
global __ptext5
__ptext5:	;psect for function _ADC_Sample
psect	text5
	file	"E:\project\project0508\scm\uf166fan\adc.c"
	line	11
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 3
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	17
	
l3513:	
;adc.c: 13: static unsigned long adsum = 0;
;adc.c: 14: static unsigned int admin = 0,admax = 0;
;adc.c: 15: static unsigned char adtimes = 0;
;adc.c: 16: volatile unsigned int ad_temp;
;adc.c: 17: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	18
	
l3515:	
;adc.c: 18: ADCON0 = 0X41 | (adch << 2);
	bcf	status, 5	;RP0=0, select bank0
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1375:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1375
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	movwf	(31)	;volatile
	line	19
# 19 "E:\project\project0508\scm\uf166fan\adc.c"
nop ;# 
	line	20
# 20 "E:\project\project0508\scm\uf166fan\adc.c"
nop ;# 
psect	text5
	line	21
	
l3517:	
;adc.c: 21: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	23
	
l3519:	
;adc.c: 23: unsigned char i = 0;
	clrf	(ADC_Sample@i)
	line	24
;adc.c: 24: while(GODONE)
	goto	l1798
	
l1799:	
	line	26
;adc.c: 25: {
;adc.c: 26: if(0 == (--i))
	decfsz	(ADC_Sample@i),f
	goto	u1381
	goto	u1380
u1381:
	goto	l1798
u1380:
	goto	l1801
	line	28
	
l1798:	
	line	24
	btfsc	(249/8),(249)&7	;volatile
	goto	u1391
	goto	u1390
u1391:
	goto	l1799
u1390:
	line	30
	
l3523:	
;adc.c: 28: }
;adc.c: 30: ad_temp=(ADRESH<<4)+(ADRESL>>4);
	movf	(30),w	;volatile
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
	
l3525:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	32
	
l3527:	
;adc.c: 32: if(0 == admax)
	movf	((ADC_Sample@admax)),w
iorwf	((ADC_Sample@admax+1)),w
	btfss	status,2
	goto	u1401
	goto	u1400
u1401:
	goto	l3531
u1400:
	line	34
	
l3529:	
;adc.c: 33: {
;adc.c: 34: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)
	line	35
;adc.c: 35: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)
	line	36
;adc.c: 36: }
	goto	l1804
	line	37
	
l3531:	
;adc.c: 37: else if(ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w
	skipz
	goto	u1415
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w
u1415:
	skipnc
	goto	u1411
	goto	u1410
u1411:
	goto	l3535
u1410:
	line	38
	
l3533:	
;adc.c: 38: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)
	goto	l1804
	line	39
	
l3535:	
;adc.c: 39: else if(ad_temp < admin)
	movf	(ADC_Sample@admin+1),w
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u1425
	movf	(ADC_Sample@admin),w
	subwf	(ADC_Sample@ad_temp),w	;volatile
u1425:
	skipnc
	goto	u1421
	goto	u1420
u1421:
	goto	l1804
u1420:
	line	40
	
l3537:	
;adc.c: 40: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)
	line	42
	
l1804:	
;adc.c: 42: adsum += ad_temp;
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	addwf	(ADC_Sample@adsum),f
	movf	1+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1431
	addwf	(ADC_Sample@adsum+1),f
u1431:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1432
	addwf	(ADC_Sample@adsum+2),f
u1432:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1433
	addwf	(ADC_Sample@adsum+3),f
u1433:

	line	43
	
l3539:	
;adc.c: 43: if(++adtimes >= 10)
	movlw	low(0Ah)
	incf	(ADC_Sample@adtimes),f
	subwf	((ADC_Sample@adtimes)),w
	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l1801
u1440:
	line	45
	
l3541:	
;adc.c: 44: {
;adc.c: 45: adsum -= admax;
	movf	(ADC_Sample@admax),w
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admax+1),w
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),f
	movf	1+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	1+(??_ADC_Sample+0)+0,w
	goto	u1455
	goto	u1456
u1455:
	subwf	(ADC_Sample@adsum+1),f
u1456:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1457
	goto	u1458
u1457:
	subwf	(ADC_Sample@adsum+2),f
u1458:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1459
	goto	u1450
u1459:
	subwf	(ADC_Sample@adsum+3),f
u1450:

	line	46
;adc.c: 46: adsum -= admin;
	movf	(ADC_Sample@admin),w
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),f
	movf	1+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	1+(??_ADC_Sample+0)+0,w
	goto	u1465
	goto	u1466
u1465:
	subwf	(ADC_Sample@adsum+1),f
u1466:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1467
	goto	u1468
u1467:
	subwf	(ADC_Sample@adsum+2),f
u1468:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1469
	goto	u1460
u1469:
	subwf	(ADC_Sample@adsum+3),f
u1460:

	line	48
	
l3543:	
;adc.c: 48: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u1475:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1470:
	addlw	-1
	skipz
	goto	u1475
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	50
	
l3545:	
;adc.c: 50: adsum = 0;
	clrf	(ADC_Sample@adsum)
	clrf	(ADC_Sample@adsum+1)
	clrf	(ADC_Sample@adsum+2)
	clrf	(ADC_Sample@adsum+3)
	line	51
	
l3547:	
;adc.c: 51: admin = 0;
	clrf	(ADC_Sample@admin)
	clrf	(ADC_Sample@admin+1)
	line	52
	
l3549:	
;adc.c: 52: admax = 0;
	clrf	(ADC_Sample@admax)
	clrf	(ADC_Sample@admax+1)
	line	53
	
l3551:	
;adc.c: 53: adtimes = 0;
	clrf	(ADC_Sample@adtimes)
	line	55
	
l1801:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,4217
	global	_ADC_Result

;; *************** function _ADC_Result *****************
;; Defined at:
;;		line 59 in file "E:\project\project0508\scm\uf166fan\adc.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    0[BANK0 ] unsigned char 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          1       0       0
;;      Totals:         1       2       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readVrefADC
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	59
global __ptext6
__ptext6:	;psect for function _ADC_Result
psect	text6
	file	"E:\project\project0508\scm\uf166fan\adc.c"
	line	59
	global	__size_of_ADC_Result
	__size_of_ADC_Result	equ	__end_of_ADC_Result-_ADC_Result
	
_ADC_Result:	
;incstack = 0
	opt	stack 3
; Regs used in _ADC_Result: [wreg+status,2+status,0]
;ADC_Result@adch stored from wreg
	movwf	(ADC_Result@adch)
	line	61
	
l3553:	
;adc.c: 61: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	62
	
l3555:	
;adc.c: 62: ADCON0 = 0X41 | (adch << 2);
	bcf	status, 5	;RP0=0, select bank0
	movf	(ADC_Result@adch),w
	movwf	(??_ADC_Result+0)+0
	movlw	(02h)-1
u1485:
	clrc
	rlf	(??_ADC_Result+0)+0,f
	addlw	-1
	skipz
	goto	u1485
	clrc
	rlf	(??_ADC_Result+0)+0,w
	iorlw	041h
	movwf	(31)	;volatile
	line	63
# 63 "E:\project\project0508\scm\uf166fan\adc.c"
nop ;# 
	line	64
# 64 "E:\project\project0508\scm\uf166fan\adc.c"
nop ;# 
psect	text6
	line	65
	
l3557:	
;adc.c: 65: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	67
	
l3559:	
;adc.c: 67: unsigned char i = 0;
	clrf	(ADC_Result@i)
	line	68
;adc.c: 68: while(GODONE)
	goto	l1811
	
l1812:	
	line	70
;adc.c: 69: {
;adc.c: 70: if(0 == (--i))
	decfsz	(ADC_Result@i),f
	goto	u1491
	goto	u1490
u1491:
	goto	l1811
u1490:
	line	71
	
l3561:	
;adc.c: 71: return 0;
	movlw	low(0)
	goto	l1814
	line	72
	
l1811:	
	line	68
	btfsc	(249/8),(249)&7	;volatile
	goto	u1501
	goto	u1500
u1501:
	goto	l1812
u1500:
	line	73
	
l3565:	
;adc.c: 72: }
;adc.c: 73: return ADRESH;
	movf	(30),w	;volatile
	line	74
	
l1814:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Result
	__end_of_ADC_Result:
	signat	_ADC_Result,4217
	global	_checkUsbStatus

;; *************** function _checkUsbStatus *****************
;; Defined at:
;;		line 42 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       2       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_closeFan
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	42
global __ptext7
__ptext7:	;psect for function _checkUsbStatus
psect	text7
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	42
	global	__size_of_checkUsbStatus
	__size_of_checkUsbStatus	equ	__end_of_checkUsbStatus-_checkUsbStatus
	
_checkUsbStatus:	
;incstack = 0
	opt	stack 2
; Regs used in _checkUsbStatus: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	43
	
l3589:	
;main.c: 43: if (((PORTB) >> (2)&1) == 1) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u1531
	goto	u1530
u1531:
	goto	l585
u1530:
	line	44
	
l3591:	
;main.c: 44: if (((PORTB) >> (1)&1) == 1) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u1541
	goto	u1540
u1541:
	goto	l3595
u1540:
	line	46
	
l3593:	
;main.c: 46: PORTA&=~(1<<0);
	bcf	(5)+(0/8),(0)&7	;volatile
	line	47
;main.c: 47: } else if (countTime == 50) {
	goto	l594
	
l3595:	
		movlw	50
	xorwf	((_countTime)),w
iorwf	((_countTime+1)),w
	btfss	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l594
u1550:
	line	49
	
l3597:	
;main.c: 49: PORTA^=(1<<0);
	movlw	low(01h)
	xorwf	(5),f	;volatile
	goto	l594
	line	51
	
l585:	
	line	53
;main.c: 53: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	54
	
l3599:	
;main.c: 54: if((adresult/8) > 0x63 && count300ms == 0)
	movf	(_adresult+1),w	;volatile
	movwf	(??_checkUsbStatus+0)+0+1
	movf	(_adresult),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+1,f
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+1,f
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+1,f
	rrf	(??_checkUsbStatus+0)+0,f
	movlw	0
	subwf	1+(??_checkUsbStatus+0)+0,w
	movlw	064h
	skipnz
	subwf	0+(??_checkUsbStatus+0)+0,w
	skipc
	goto	u1561
	goto	u1560
u1561:
	goto	l3611
u1560:
	
l3601:	
	movf	((_count300ms)),w
	btfss	status,2
	goto	u1571
	goto	u1570
u1571:
	goto	l3611
u1570:
	line	56
	
l3603:	
;main.c: 55: {
;main.c: 56: if(lowVTime < 20)
	movlw	low(014h)
	subwf	(_lowVTime),w
	skipnc
	goto	u1581
	goto	u1580
u1581:
	goto	l3609
u1580:
	line	58
	
l3605:	
;main.c: 57: {
;main.c: 58: lowVTime++;
	incf	(_lowVTime),f
	line	60
	
l3607:	
;main.c: 60: PORTA^=(1<<0);
	movlw	low(01h)
	xorwf	(5),f	;volatile
	line	61
;main.c: 61: }else
	goto	l3611
	line	64
	
l3609:	
;main.c: 62: {
;main.c: 64: closeFan();
	fcall	_closeFan
	line	67
	
l3611:	
;main.c: 65: }
;main.c: 66: }
;main.c: 67: if((adresult/8) < 0x63)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_adresult+1),w	;volatile
	movwf	(??_checkUsbStatus+0)+0+1
	movf	(_adresult),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+1,f
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+1,f
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+1,f
	rrf	(??_checkUsbStatus+0)+0,f
	movlw	0
	subwf	1+(??_checkUsbStatus+0)+0,w
	movlw	063h
	skipnz
	subwf	0+(??_checkUsbStatus+0)+0,w
	skipnc
	goto	u1591
	goto	u1590
u1591:
	goto	l594
u1590:
	line	69
	
l3613:	
;main.c: 68: {
;main.c: 69: lowVTime = 0;
	clrf	(_lowVTime)
	line	72
	
l594:	
	return
	opt stack 0
GLOBAL	__end_of_checkUsbStatus
	__end_of_checkUsbStatus:
	signat	_checkUsbStatus,89
	global	_checkKeys

;; *************** function _checkKeys *****************
;; Defined at:
;;		line 235 in file "E:\project\project0508\scm\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key3Status      1   12[BANK0 ] unsigned char 
;;  key2Status      1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_checkFan
;;		_closeFan
;;		_key_driver
;;		_setFanLevel
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	235
global __ptext8
__ptext8:	;psect for function _checkKeys
psect	text8
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	235
	global	__size_of_checkKeys
	__size_of_checkKeys	equ	__end_of_checkKeys-_checkKeys
	
_checkKeys:	
;incstack = 0
	opt	stack 1
; Regs used in _checkKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	236
	
l3623:	
;main.c: 236: if (key_driver(&key1) == 1) {
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_key_driver
	xorlw	01h
	skipz
	goto	u1601
	goto	u1600
u1601:
	goto	l3637
u1600:
	line	239
	
l3625:	
;main.c: 239: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l3629
u1610:
	line	241
	
l3627:	
;main.c: 241: closeFan();
	fcall	_closeFan
	line	242
;main.c: 242: } else {
	goto	l640
	line	243
	
l3629:	
;main.c: 243: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	244
	
l3631:	
;main.c: 244: checkFan();
	fcall	_checkFan
	goto	l640
	line	247
	
l3637:	
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l641
u1620:
	line	248
	
l3639:	
;main.c: 248: checkFan();
	fcall	_checkFan
	line	251
	
l641:	
;main.c: 249: }
;main.c: 251: unsigned char key2Status = key_driver(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_key_driver
	movwf	(checkKeys@key2Status)
	line	252
	
l3641:	
;main.c: 252: if (key2Status == 1) {
		decf	((checkKeys@key2Status)),w
	btfss	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l3647
u1630:
	line	254
	
l3643:	
;main.c: 254: setFanLevel(1);
	movlw	low(01h)
	fcall	_setFanLevel
	goto	l640
	line	257
	
l3647:	
;main.c: 256: }
;main.c: 257: unsigned char key3Status = key_driver(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_key_driver
	movwf	(checkKeys@key3Status)
	line	258
	
l3649:	
;main.c: 258: if (key3Status == 1) {
		decf	((checkKeys@key3Status)),w
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l640
u1640:
	line	260
	
l3651:	
;main.c: 260: setFanLevel(-1);
	movlw	low(0FFh)
	fcall	_setFanLevel
	line	264
	
l640:	
	return
	opt stack 0
GLOBAL	__end_of_checkKeys
	__end_of_checkKeys:
	signat	_checkKeys,89
	global	_key_driver

;; *************** function _key_driver *****************
;; Defined at:
;;		line 9 in file "E:\project\project0508\scm\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    2[BANK0 ] PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;;  key_read        1    1[BANK0 ] unsigned char 
;;  key_return      1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       3       0
;;      Temps:          0       0       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	9
global __ptext9
__ptext9:	;psect for function _key_driver
psect	text9
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	9
	global	__size_of_key_driver
	__size_of_key_driver	equ	__end_of_key_driver-_key_driver
	
_key_driver:	
;incstack = 0
	opt	stack 3
; Regs used in _key_driver: [wreg-fsr0h+status,2+status,0]
;key_driver@key stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(key_driver@key)
	line	12
	
l3467:	
;scankey.c: 12: unsigned char key_return = 0;
	clrf	(key_driver@key_return)
	line	13
	
l3469:	
;scankey.c: 13: unsigned char key_read = key->key_input;
	movf	(key_driver@key),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(key_driver@key_read)
	line	15
;scankey.c: 15: switch (key->key_state_buffer1) {
	goto	l3501
	line	17
	
l3471:	
;scankey.c: 17: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u1321
	goto	u1320
u1321:
	goto	l3503
u1320:
	line	18
	
l3473:	
;scankey.c: 18: key->key_state_buffer1 = 1;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	incf	indf,f
	goto	l3503
	line	25
	
l3475:	
;scankey.c: 25: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u1331
	goto	u1330
u1331:
	goto	l3481
u1330:
	line	26
	
l3477:	
;scankey.c: 26: key->key_timer_cnt1 = 0;
	movf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	27
	
l3479:	
;scankey.c: 27: key->key_state_buffer1 = 2;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(02h)
	movwf	indf
	line	31
;scankey.c: 31: } else {
	goto	l3503
	line	32
	
l3481:	
;scankey.c: 32: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l3503
	line	39
	
l3483:	
;scankey.c: 39: if (key_read == 1) {
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u1341
	goto	u1340
u1341:
	goto	l3489
u1340:
	line	40
	
l3485:	
;scankey.c: 40: key_return = 1;
	clrf	(key_driver@key_return)
	incf	(key_driver@key_return),f
	line	41
	
l3487:	
;scankey.c: 41: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	42
;scankey.c: 42: } else if (++(key->key_timer_cnt1) >= 100)
	goto	l3503
	
l3489:	
	movf	(key_driver@key),w
	movwf	fsr0
	incf	indf,f
	movlw	low(064h)
	subwf	(indf),w
	skipc
	goto	u1351
	goto	u1350
u1351:
	goto	l3503
u1350:
	line	44
	
l3491:	
;scankey.c: 43: {
;scankey.c: 44: key_return = 3;
	movlw	low(03h)
	movwf	(key_driver@key_return)
	line	45
	
l3493:	
;scankey.c: 45: key->key_state_buffer1 = 3;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(03h)
	movwf	indf
	goto	l3503
	line	51
	
l3495:	
;scankey.c: 51: if (key_read == 1)
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u1361
	goto	u1360
u1361:
	goto	l3503
u1360:
	line	53
	
l3497:	
;scankey.c: 52: {
;scankey.c: 53: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l3503
	line	15
	
l3501:	
	incf	(key_driver@key),w
	movwf	fsr0
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           10     6 (fixed)
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	4
	subwf	fsr,w
skipnc
goto l3503
movlw high(S3745)
movwf pclath
	movlw low(S3745)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S3745:
	ljmp	l3471
	ljmp	l3475
	ljmp	l3483
	ljmp	l3495
psect	text9

	line	58
	
l3503:	
;scankey.c: 58: return key_return;
	movf	(key_driver@key_return),w
	line	59
	
l689:	
	return
	opt stack 0
GLOBAL	__end_of_key_driver
	__end_of_key_driver:
	signat	_key_driver,4217
	global	_checkFan

;; *************** function _checkFan *****************
;; Defined at:
;;		line 145 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_closeFan
;;		_setFanLevel
;; This function is called by:
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	145
global __ptext10
__ptext10:	;psect for function _checkFan
psect	text10
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	145
	global	__size_of_checkFan
	__size_of_checkFan	equ	__end_of_checkFan-_checkFan
	
_checkFan:	
;incstack = 0
	opt	stack 1
; Regs used in _checkFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	146
	
l3443:	
;main.c: 146: TRISA&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	147
;main.c: 147: PORTA|=(1<<1);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(1/8),(1)&7	;volatile
	line	149
;main.c: 149: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	150
;main.c: 150: PORTA|=(1<<2);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(2/8),(2)&7	;volatile
	line	151
	
l3445:	
;main.c: 151: T2CON = 0X04;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	154
	
l3447:	
;main.c: 154: if (((PORTB) >> (6)&1) == 0) {
	movf	(6),w	;volatile
	movwf	(??_checkFan+0)+0
	movlw	06h
u1275:
	clrc
	rrf	(??_checkFan+0)+0,f
	addlw	-1
	skipz
	goto	u1275
	btfsc	0+(??_checkFan+0)+0,(0)&7
	goto	u1281
	goto	u1280
u1281:
	goto	l3451
u1280:
	line	155
	
l3449:	
;main.c: 155: FAN_STATUS = 1;
	clrf	(_FAN_STATUS)
	incf	(_FAN_STATUS),f
	line	156
;main.c: 156: } else {
	goto	l3453
	line	157
	
l3451:	
;main.c: 157: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	160
	
l3453:	
;main.c: 158: }
;main.c: 160: setFanLevel(0);
	movlw	low(0)
	fcall	_setFanLevel
	line	163
	
l3455:	
;main.c: 163: if (FAN_STATUS == 2) {
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1291
	goto	u1290
u1291:
	goto	l621
u1290:
	line	164
	
l3457:	
;main.c: 164: fan_check_time++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_fan_check_time),f
	skipnz
	incf	(_fan_check_time+1),f
	line	165
	
l3459:	
;main.c: 165: if (fan_check_time == 3000) {
		movlw	184
	xorwf	((_fan_check_time)),w
	movlw	11
	skipnz
	xorwf	((_fan_check_time+1)),w
	btfss	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l621
u1300:
	line	166
	
l3461:	
;main.c: 166: closeFan();
	fcall	_closeFan
	line	172
	
l621:	
	return
	opt stack 0
GLOBAL	__end_of_checkFan
	__end_of_checkFan:
	signat	_checkFan,89
	global	_setFanLevel

;; *************** function _setFanLevel *****************
;; Defined at:
;;		line 88 in file "E:\project\project0508\scm\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;  level           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  level           1    8[BANK0 ] unsigned char 
;;  levelWidth      2    0        unsigned int 
;;  tempLevel       1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awdiv
;;		_setLedOn
;; This function is called by:
;;		_checkFan
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	88
global __ptext11
__ptext11:	;psect for function _setFanLevel
psect	text11
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	88
	global	__size_of_setFanLevel
	__size_of_setFanLevel	equ	__end_of_setFanLevel-_setFanLevel
	
_setFanLevel:	
;incstack = 0
	opt	stack 2
; Regs used in _setFanLevel: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setFanLevel@level stored from wreg
	movwf	(setFanLevel@level)
	line	89
	
l3409:	
;main.c: 89: if(level == 0)
	movf	((setFanLevel@level)),w
	btfss	status,2
	goto	u1231
	goto	u1230
u1231:
	goto	l3413
u1230:
	line	91
	
l3411:	
;main.c: 90: {
;main.c: 91: currentLevel = 3;
	movlw	low(03h)
	movwf	(_currentLevel)
	line	93
	
l3413:	
;main.c: 92: }
;main.c: 93: unsigned int levelWidth = (PR2 + 1) / 4;
	bsf	status, 5	;RP0=1, select bank1
	movf	(146)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	movlw	04h
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	fcall	___awdiv
	line	94
	
l3415:	
;main.c: 94: char tempLevel = currentLevel + level;
	movf	(setFanLevel@level),w
	addwf	(_currentLevel),w
	movwf	(setFanLevel@tempLevel)
	line	95
	
l3417:	
;main.c: 95: if (tempLevel > 4) {
	movlw	low(05h)
	subwf	(setFanLevel@tempLevel),w
	skipc
	goto	u1241
	goto	u1240
u1241:
	goto	l3421
u1240:
	line	96
	
l3419:	
;main.c: 96: tempLevel = 4;
	movlw	low(04h)
	movwf	(setFanLevel@tempLevel)
	line	99
	
l3421:	
;main.c: 97: }
;main.c: 99: if (tempLevel < 1) {
	movf	((setFanLevel@tempLevel)),w
	btfss	status,2
	goto	u1251
	goto	u1250
u1251:
	goto	l3425
u1250:
	line	100
	
l3423:	
;main.c: 100: tempLevel = 1;
	clrf	(setFanLevel@tempLevel)
	incf	(setFanLevel@tempLevel),f
	line	104
	
l3425:	
;main.c: 101: }
;main.c: 104: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1261
	goto	u1260
u1261:
	goto	l610
u1260:
	line	105
	
l3427:	
;main.c: 105: currentLevel = tempLevel;
	movf	(setFanLevel@tempLevel),w
	movwf	(_currentLevel)
	line	106
;main.c: 106: switch(currentLevel)
	goto	l3439
	line	109
	
l3429:	
;main.c: 109: CCPR1L = 1;
	movlw	low(01h)
	movwf	(21)	;volatile
	line	110
;main.c: 110: break;
	goto	l3441
	line	112
	
l3431:	
;main.c: 112: CCPR1L = 2;
	movlw	low(02h)
	movwf	(21)	;volatile
	line	113
;main.c: 113: break;
	goto	l3441
	line	115
	
l3433:	
;main.c: 115: CCPR1L = 3;
	movlw	low(03h)
	movwf	(21)	;volatile
	line	116
;main.c: 116: break;
	goto	l3441
	line	118
	
l3435:	
;main.c: 118: CCPR1L = 5;
	movlw	low(05h)
	movwf	(21)	;volatile
	line	119
;main.c: 119: break;
	goto	l3441
	line	106
	
l3439:	
	movf	(_currentLevel),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           13     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l3429
	xorlw	2^1	; case 2
	skipnz
	goto	l3431
	xorlw	3^2	; case 3
	skipnz
	goto	l3433
	xorlw	4^3	; case 4
	skipnz
	goto	l3435
	goto	l3441
	opt asmopt_pop

	line	123
	
l3441:	
;main.c: 123: setLedOn(currentLevel);
	movf	(_currentLevel),w
	fcall	_setLedOn
	line	126
	
l610:	
	return
	opt stack 0
GLOBAL	__end_of_setFanLevel
	__end_of_setFanLevel:
	signat	_setFanLevel,4217
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       4       0
;;      Locals:         0       4       0
;;      Temps:          0       0       0
;;      Totals:         0       8       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setFanLevel
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
global __ptext12
__ptext12:	;psect for function ___awdiv
psect	text12
	file	"E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l3347:	
	clrf	(___awdiv@sign)
	line	15
	
l3349:	
	btfss	(___awdiv@divisor+1),7
	goto	u1151
	goto	u1150
u1151:
	goto	l3355
u1150:
	line	16
	
l3351:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l3353:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l3355:	
	btfss	(___awdiv@dividend+1),7
	goto	u1161
	goto	u1160
u1161:
	goto	l3361
u1160:
	line	20
	
l3357:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l3359:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l3361:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l3363:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u1171
	goto	u1170
u1171:
	goto	l3383
u1170:
	line	25
	
l3365:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l3369
	line	27
	
l3367:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l3369:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1181
	goto	u1180
u1181:
	goto	l3367
u1180:
	line	31
	
l3371:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l3373:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1195
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1195:
	skipc
	goto	u1191
	goto	u1190
u1191:
	goto	l3379
u1190:
	line	33
	
l3375:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l3377:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l3379:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l3381:	
	decfsz	(___awdiv@counter),f
	goto	u1201
	goto	u1200
u1201:
	goto	l3371
u1200:
	line	39
	
l3383:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l3387
u1210:
	line	40
	
l3385:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l3387:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l1961:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_closeFan

;; *************** function _closeFan *****************
;; Defined at:
;;		line 129 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Init_PWM
;;		_Sleep_Mode
;;		_setLedOn
;; This function is called by:
;;		_checkUsbStatus
;;		_checkFan
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	129
global __ptext13
__ptext13:	;psect for function _closeFan
psect	text13
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	129
	global	__size_of_closeFan
	__size_of_closeFan	equ	__end_of_closeFan-_closeFan
	
_closeFan:	
;incstack = 0
	opt	stack 2
; Regs used in _closeFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	130
	
l3391:	
;main.c: 130: Init_PWM();
	fcall	_Init_PWM
	line	131
	
l3393:	
;main.c: 131: currentLevel = 2;
	movlw	low(02h)
	movwf	(_currentLevel)
	line	132
	
l3395:	
;main.c: 132: setLedOn(5);
	movlw	low(05h)
	fcall	_setLedOn
	line	133
	
l3397:	
;main.c: 133: PORTA|=(1<<0);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(0/8),(0)&7	;volatile
	line	135
	
l3399:	
;main.c: 135: TRISC|=(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(2/8),(2)&7	;volatile
	line	136
	
l3401:	
;main.c: 136: fan_check_time = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_fan_check_time)
	clrf	(_fan_check_time+1)
	line	137
	
l3403:	
;main.c: 137: FAN_STATUS = 0;
	clrf	(_FAN_STATUS)
	line	138
	
l3405:	
;main.c: 138: if (((PORTB) >> (2)&1) == 0) {
	movf	(6),w	;volatile
	movwf	(??_closeFan+0)+0
	clrc
	rrf	(??_closeFan+0)+0,f
	clrc
	rrf	(??_closeFan+0)+0,f
	btfsc	0+(??_closeFan+0)+0,(0)&7
	goto	u1221
	goto	u1220
u1221:
	goto	l614
u1220:
	line	139
	
l3407:	
;main.c: 139: Sleep_Mode();
	fcall	_Sleep_Mode
	line	141
	
l614:	
	return
	opt stack 0
GLOBAL	__end_of_closeFan
	__end_of_closeFan:
	signat	_closeFan,89
	global	_setLedOn

;; *************** function _setLedOn *****************
;; Defined at:
;;		line 176 in file "E:\project\project0508\scm\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;  ledIndex        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ledIndex        1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setFanLevel
;;		_closeFan
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	176
global __ptext14
__ptext14:	;psect for function _setLedOn
psect	text14
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	176
	global	__size_of_setLedOn
	__size_of_setLedOn	equ	__end_of_setLedOn-_setLedOn
	
_setLedOn:	
;incstack = 0
	opt	stack 2
; Regs used in _setLedOn: [wreg-fsr0h+status,2+status,0]
;setLedOn@ledIndex stored from wreg
	movwf	(setLedOn@ledIndex)
	line	177
	
l3337:	
;main.c: 177: switch(ledIndex) {
	goto	l3341
	line	178
;main.c: 178: case 1:
	
l625:	
	line	180
;main.c: 180: TRISC&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	181
;main.c: 181: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	182
;main.c: 182: TRISC&=~(1<<0);
	bcf	(135)^080h+(0/8),(0)&7	;volatile
	line	183
;main.c: 183: PORTA&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	184
;main.c: 184: PORTC|=(1<<0);
	bsf	(7)+(0/8),(0)&7	;volatile
	line	185
;main.c: 185: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	186
;main.c: 186: break;
	goto	l631
	line	187
;main.c: 187: case 2:
	
l627:	
	line	188
;main.c: 188: TRISC&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	189
;main.c: 189: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	190
;main.c: 190: TRISC&=~(1<<0);
	bcf	(135)^080h+(0/8),(0)&7	;volatile
	line	191
;main.c: 191: PORTA&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	192
;main.c: 192: PORTC&=~(1<<0);
	bcf	(7)+(0/8),(0)&7	;volatile
	line	193
;main.c: 193: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	194
;main.c: 194: break;
	goto	l631
	line	195
;main.c: 195: case 3:
	
l628:	
	line	197
;main.c: 197: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	198
;main.c: 198: TRISA&=~(1<<7);
	bcf	(133)^080h+(7/8),(7)&7	;volatile
	line	199
;main.c: 199: TRISC&=~(1<<1);
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	200
;main.c: 200: PORTA|=(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(7/8),(7)&7	;volatile
	line	201
;main.c: 201: PORTC&=~(1<<0);
	bcf	(7)+(0/8),(0)&7	;volatile
	line	202
;main.c: 202: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	203
;main.c: 203: break;
	goto	l631
	line	204
;main.c: 204: case 4:
	
l629:	
	line	205
;main.c: 205: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	206
;main.c: 206: TRISA&=~(1<<7);
	bcf	(133)^080h+(7/8),(7)&7	;volatile
	line	207
;main.c: 207: TRISC&=~(1<<1);
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	208
;main.c: 208: PORTA&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	209
;main.c: 209: PORTC|=(1<<0);
	bsf	(7)+(0/8),(0)&7	;volatile
	line	210
;main.c: 210: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	211
;main.c: 211: break;
	goto	l631
	line	212
;main.c: 212: case 5:
	
l630:	
	line	214
;main.c: 214: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	215
;main.c: 215: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	216
;main.c: 216: TRISC|=(1<<1);
	bsf	(135)^080h+(1/8),(1)&7	;volatile
	line	217
;main.c: 217: PORTC&=~(1<<0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7)+(0/8),(0)&7	;volatile
	line	218
;main.c: 218: PORTA&=~(1<<7);
	bcf	(5)+(7/8),(7)&7	;volatile
	line	219
;main.c: 219: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	220
;main.c: 220: break;
	goto	l631
	line	177
	
l3341:	
	movf	(setLedOn@ledIndex),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           14     9 (fixed)
; simple_byte           16     9 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is direct_byte

	addlw	-1
	skipc
goto l631
	movwf fsr
	movlw	5
	subwf	fsr,w
skipnc
goto l631
movlw high(S3747)
movwf pclath
	movlw low(S3747)
	addwf fsr,w
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
S3747:
	ljmp	l625
	ljmp	l627
	ljmp	l628
	ljmp	l629
	ljmp	l630
psect	text14

	line	222
	
l631:	
	return
	opt stack 0
GLOBAL	__end_of_setLedOn
	__end_of_setLedOn:
	signat	_setLedOn,4217
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 335 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_closeFan
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	335
global __ptext15
__ptext15:	;psect for function _Sleep_Mode
psect	text15
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	335
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 2
; Regs used in _Sleep_Mode: [wreg+status,2]
	line	336
	
l2785:	
;main.c: 336: INTCON = 0;
	clrf	(11)	;volatile
	line	338
;main.c: 338: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	340
;main.c: 340: TRISA = 0B00000000;
	clrf	(133)^080h	;volatile
	line	341
;main.c: 341: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	342
;main.c: 342: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(398)^0180h	;volatile
	line	344
	
l2787:	
;main.c: 344: TRISB = 0B00100100;
	movlw	low(024h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	345
	
l2789:	
;main.c: 345: PORTB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	347
	
l2791:	
;main.c: 347: PORTB = 0;
	clrf	(6)	;volatile
	line	348
	
l2793:	
;main.c: 348: WPUB = 0B00100000;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	350
	
l2795:	
;main.c: 350: IOCB = 0B00100100;
	movlw	low(024h)
	movwf	(150)^080h	;volatile
	line	351
	
l2797:	
;main.c: 351: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	352
	
l2799:	
;main.c: 352: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	354
	
l2801:	
;main.c: 354: ADCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(31)	;volatile
	line	356
;main.c: 356: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	358
;main.c: 358: PORTB;
	bcf	status, 5	;RP0=0, select bank0
	movf	(6),w	;volatile
	line	359
# 359 "E:\project\project0508\scm\uf166fan\main.c"
clrwdt ;# 
	line	361
# 361 "E:\project\project0508\scm\uf166fan\main.c"
sleep ;# 
	line	363
# 363 "E:\project\project0508\scm\uf166fan\main.c"
nop ;# 
psect	text15
	line	366
	
l663:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_Config

;; *************** function _Init_Config *****************
;; Defined at:
;;		line 307 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Init_GPIO
;;		_Init_Interupt
;;		_Init_PWM
;;		_Init_System
;;		_resetKey
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	307
global __ptext16
__ptext16:	;psect for function _Init_Config
psect	text16
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	307
	global	__size_of_Init_Config
	__size_of_Init_Config	equ	__end_of_Init_Config-_Init_Config
	
_Init_Config:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	309
	
l3177:	
;main.c: 309: Init_System();
	fcall	_Init_System
	line	310
;main.c: 310: Init_GPIO();
	fcall	_Init_GPIO
	line	311
;main.c: 311: Init_Interupt();
	fcall	_Init_Interupt
	line	312
;main.c: 312: Init_PWM();
	fcall	_Init_PWM
	line	314
	
l3179:	
;main.c: 314: IOCB = 0x04;
	movlw	low(04h)
	movwf	(150)^080h	;volatile
	line	315
	
l3181:	
;main.c: 315: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	316
	
l3183:	
;main.c: 316: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	319
	
l3185:	
;main.c: 319: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	321
	
l3187:	
;main.c: 321: key2.key_index = 4;
	movlw	low(04h)
	movwf	0+(_key2)+06h
	line	323
	
l3189:	
;main.c: 323: key3.key_index = 3;
	movlw	low(03h)
	movwf	0+(_key3)+06h
	line	324
	
l3191:	
;main.c: 324: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	325
	
l3193:	
;main.c: 325: resetKey(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	326
	
l3195:	
;main.c: 326: resetKey(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	328
	
l3197:	
;main.c: 328: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	329
	
l3199:	
;main.c: 329: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	330
	
l3201:	
;main.c: 330: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	331
	
l3203:	
;main.c: 331: lowVTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowVTime)
	line	332
	
l660:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Config
	__end_of_Init_Config:
	signat	_Init_Config,89
	global	_resetKey

;; *************** function _resetKey *****************
;; Defined at:
;;		line 100 in file "E:\project\project0508\scm\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    4[COMMON] PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 800/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init_Config
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	100
global __ptext17
__ptext17:	;psect for function _resetKey
psect	text17
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	100
	global	__size_of_resetKey
	__size_of_resetKey	equ	__end_of_resetKey-_resetKey
	
_resetKey:	
;incstack = 0
	opt	stack 3
; Regs used in _resetKey: [wreg-fsr0h+status,2+status,0]
;resetKey@key stored from wreg
	movwf	(resetKey@key)
	line	101
	
l2995:	
;scankey.c: 101: key->key_timer_cnt1 = key->key_timer_cnt2 = key->key_state_buffer1 = key->key_state_buffer2 = 0;
	movf	(resetKey@key),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	(resetKey@key),w
	movwf	fsr0
	clrf	indf
	movf	(resetKey@key),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	movf	(resetKey@key),w
	movwf	fsr0
	clrf	indf
	line	102
	
l704:	
	return
	opt stack 0
GLOBAL	__end_of_resetKey
	__end_of_resetKey:
	signat	_resetKey,4217
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 3 in file "E:\project\project0508\scm\uf166fan\init.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init_Config
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	3
global __ptext18
__ptext18:	;psect for function _Init_System
psect	text18
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	3
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_System: [wreg+status,2]
	line	4
	
l2969:	
# 4 "E:\project\project0508\scm\uf166fan\init.c"
nop ;# 
	line	5
# 5 "E:\project\project0508\scm\uf166fan\init.c"
clrwdt ;# 
psect	text18
	line	6
	
l2971:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
l2973:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
l2975:	
;init.c: 8: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
l1243:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Init_PWM

;; *************** function _Init_PWM *****************
;; Defined at:
;;		line 74 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_closeFan
;;		_Init_Config
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	74
global __ptext19
__ptext19:	;psect for function _Init_PWM
psect	text19
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	74
	global	__size_of_Init_PWM
	__size_of_Init_PWM	equ	__end_of_Init_PWM-_Init_PWM
	
_Init_PWM:	
;incstack = 0
	opt	stack 2
; Regs used in _Init_PWM: [wreg+status,2]
	line	75
	
l2765:	
;main.c: 75: CCP1CON = 0x0F;
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	76
	
l2767:	
;main.c: 76: T2CON = 0;
	clrf	(18)	;volatile
	line	77
	
l2769:	
;main.c: 77: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	79
;main.c: 79: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	80
	
l2771:	
;main.c: 80: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	81
;main.c: 81: T2CON = 0;
	clrf	(18)	;volatile
	line	83
	
l2773:	
;main.c: 83: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	85
	
l597:	
	return
	opt stack 0
GLOBAL	__end_of_Init_PWM
	__end_of_Init_PWM:
	signat	_Init_PWM,89
	global	_Init_Interupt

;; *************** function _Init_Interupt *****************
;; Defined at:
;;		line 27 in file "E:\project\project0508\scm\uf166fan\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init_Config
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	27
global __ptext20
__ptext20:	;psect for function _Init_Interupt
psect	text20
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	27
	global	__size_of_Init_Interupt
	__size_of_Init_Interupt	equ	__end_of_Init_Interupt-_Init_Interupt
	
_Init_Interupt:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Interupt: [wreg+status,2]
	line	28
	
l2991:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
l2993:	
;init.c: 30: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	32
	
l1249:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Interupt
	__end_of_Init_Interupt:
	signat	_Init_Interupt,89
	global	_Init_GPIO

;; *************** function _Init_GPIO *****************
;; Defined at:
;;		line 13 in file "E:\project\project0508\scm\uf166fan\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init_Config
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext21
__ptext21:	;psect for function _Init_GPIO
psect	text21
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	13
	global	__size_of_Init_GPIO
	__size_of_Init_GPIO	equ	__end_of_Init_GPIO-_Init_GPIO
	
_Init_GPIO:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_GPIO: [wreg+status,2]
	line	14
	
l2977:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
l2979:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
l2981:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
l2983:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
l2985:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
l2987:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
l2989:	
;init.c: 22: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	23
;init.c: 23: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	25
	
l1246:	
	return
	opt stack 0
GLOBAL	__end_of_Init_GPIO
	__end_of_Init_GPIO:
	signat	_Init_GPIO,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 378 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          3       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_Init_Config
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	378
global __ptext22
__ptext22:	;psect for function _Timer0_Isr
psect	text22
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	378
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 1
; Regs used in _Timer0_Isr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Timer0_Isr+0)
	movf	fsr0,w
	movwf	(??_Timer0_Isr+1)
	movf	pclath,w
	movwf	(??_Timer0_Isr+2)
	ljmp	_Timer0_Isr
psect	text22
	line	379
	
i1l3273:	
;main.c: 379: if (T0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u113_21
	goto	u113_20
u113_21:
	goto	i1l3281
u113_20:
	line	381
	
i1l3275:	
;main.c: 381: TMR0 += 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	384
	
i1l3277:	
;main.c: 384: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	385
	
i1l3279:	
;main.c: 385: time0Flag = 1;
	clrf	(_time0Flag)
	incf	(_time0Flag),f
	line	389
	
i1l3281:	
;main.c: 387: }
;main.c: 389: if (RBIF) {
	btfss	(88/8),(88)&7	;volatile
	goto	u114_21
	goto	u114_20
u114_21:
	goto	i1l670
u114_20:
	line	390
	
i1l3283:	
;main.c: 390: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	391
	
i1l3285:	
;main.c: 391: Init_Config();
	fcall	i1_Init_Config
	line	393
	
i1l670:	
	movf	(??_Timer0_Isr+2),w
	movwf	pclath
	movf	(??_Timer0_Isr+1),w
	movwf	fsr0
	swapf	(??_Timer0_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Timer0_Isr
	__end_of_Timer0_Isr:
	signat	_Timer0_Isr,89
	global	i1_Init_Config

;; *************** function i1_Init_Config *****************
;; Defined at:
;;		line 307 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_Init_GPIO
;;		i1_Init_Interupt
;;		i1_Init_PWM
;;		i1_Init_System
;;		i1_resetKey
;; This function is called by:
;;		_Timer0_Isr
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	307
global __ptext23
__ptext23:	;psect for function i1_Init_Config
psect	text23
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	307
	global	__size_ofi1_Init_Config
	__size_ofi1_Init_Config	equ	__end_ofi1_Init_Config-i1_Init_Config
	
i1_Init_Config:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	309
	
i1l3209:	
;main.c: 309: Init_System();
	fcall	i1_Init_System
	line	310
;main.c: 310: Init_GPIO();
	fcall	i1_Init_GPIO
	line	311
;main.c: 311: Init_Interupt();
	fcall	i1_Init_Interupt
	line	312
;main.c: 312: Init_PWM();
	fcall	i1_Init_PWM
	line	314
	
i1l3211:	
;main.c: 314: IOCB = 0x04;
	movlw	low(04h)
	movwf	(150)^080h	;volatile
	line	315
	
i1l3213:	
;main.c: 315: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	316
	
i1l3215:	
;main.c: 316: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	319
	
i1l3217:	
;main.c: 319: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	321
	
i1l3219:	
;main.c: 321: key2.key_index = 4;
	movlw	low(04h)
	movwf	0+(_key2)+06h
	line	323
	
i1l3221:	
;main.c: 323: key3.key_index = 3;
	movlw	low(03h)
	movwf	0+(_key3)+06h
	line	324
	
i1l3223:	
;main.c: 324: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	325
	
i1l3225:	
;main.c: 325: resetKey(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	326
	
i1l3227:	
;main.c: 326: resetKey(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	328
	
i1l3229:	
;main.c: 328: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	329
	
i1l3231:	
;main.c: 329: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	330
	
i1l3233:	
;main.c: 330: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	331
	
i1l3235:	
;main.c: 331: lowVTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowVTime)
	line	332
	
i1l660:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_Config
	__end_ofi1_Init_Config:
	signat	i1_Init_Config,89
	global	i1_resetKey

;; *************** function i1_resetKey *****************
;; Defined at:
;;		line 100 in file "E:\project\project0508\scm\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    0[COMMON] PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 800/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_Init_Config
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	100
global __ptext24
__ptext24:	;psect for function i1_resetKey
psect	text24
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	100
	global	__size_ofi1_resetKey
	__size_ofi1_resetKey	equ	__end_ofi1_resetKey-i1_resetKey
	
i1_resetKey:	
;incstack = 0
	opt	stack 1
; Regs used in i1_resetKey: [wreg-fsr0h+status,2+status,0]
;i1resetKey@key stored from wreg
	movwf	(i1resetKey@key)
	line	101
	
i1l3083:	
;scankey.c: 101: key->key_timer_cnt1 = key->key_timer_cnt2 = key->key_state_buffer1 = key->key_state_buffer2 = 0;
	movf	(i1resetKey@key),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	(i1resetKey@key),w
	movwf	fsr0
	clrf	indf
	movf	(i1resetKey@key),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	movf	(i1resetKey@key),w
	movwf	fsr0
	clrf	indf
	line	102
	
i1l704:	
	return
	opt stack 0
GLOBAL	__end_ofi1_resetKey
	__end_ofi1_resetKey:
	signat	i1_resetKey,89
	global	i1_Init_System

;; *************** function i1_Init_System *****************
;; Defined at:
;;		line 3 in file "E:\project\project0508\scm\uf166fan\init.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_Init_Config
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	3
global __ptext25
__ptext25:	;psect for function i1_Init_System
psect	text25
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	3
	global	__size_ofi1_Init_System
	__size_ofi1_Init_System	equ	__end_ofi1_Init_System-i1_Init_System
	
i1_Init_System:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_System: [wreg+status,2]
	line	4
	
i1l3085:	
# 4 "E:\project\project0508\scm\uf166fan\init.c"
nop ;# 
	line	5
# 5 "E:\project\project0508\scm\uf166fan\init.c"
clrwdt ;# 
psect	text25
	line	6
	
i1l3087:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
i1l3089:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
i1l3091:	
;init.c: 8: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
i1l1243:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_System
	__end_ofi1_Init_System:
	signat	i1_Init_System,89
	global	i1_Init_PWM

;; *************** function i1_Init_PWM *****************
;; Defined at:
;;		line 74 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_Init_Config
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	74
global __ptext26
__ptext26:	;psect for function i1_Init_PWM
psect	text26
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	74
	global	__size_ofi1_Init_PWM
	__size_ofi1_Init_PWM	equ	__end_ofi1_Init_PWM-i1_Init_PWM
	
i1_Init_PWM:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_PWM: [wreg+status,2]
	line	75
	
i1l3073:	
;main.c: 75: CCP1CON = 0x0F;
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	76
	
i1l3075:	
;main.c: 76: T2CON = 0;
	clrf	(18)	;volatile
	line	77
	
i1l3077:	
;main.c: 77: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	79
;main.c: 79: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	80
	
i1l3079:	
;main.c: 80: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	81
;main.c: 81: T2CON = 0;
	clrf	(18)	;volatile
	line	83
	
i1l3081:	
;main.c: 83: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	85
	
i1l597:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_PWM
	__end_ofi1_Init_PWM:
	signat	i1_Init_PWM,89
	global	i1_Init_Interupt

;; *************** function i1_Init_Interupt *****************
;; Defined at:
;;		line 27 in file "E:\project\project0508\scm\uf166fan\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_Init_Config
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	27
global __ptext27
__ptext27:	;psect for function i1_Init_Interupt
psect	text27
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	27
	global	__size_ofi1_Init_Interupt
	__size_ofi1_Init_Interupt	equ	__end_ofi1_Init_Interupt-i1_Init_Interupt
	
i1_Init_Interupt:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_Interupt: [wreg+status,2]
	line	28
	
i1l3107:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
i1l3109:	
;init.c: 30: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	32
	
i1l1249:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_Interupt
	__end_ofi1_Init_Interupt:
	signat	i1_Init_Interupt,89
	global	i1_Init_GPIO

;; *************** function i1_Init_GPIO *****************
;; Defined at:
;;		line 13 in file "E:\project\project0508\scm\uf166fan\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_Init_Config
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext28
__ptext28:	;psect for function i1_Init_GPIO
psect	text28
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	13
	global	__size_ofi1_Init_GPIO
	__size_ofi1_Init_GPIO	equ	__end_ofi1_Init_GPIO-i1_Init_GPIO
	
i1_Init_GPIO:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_GPIO: [wreg+status,2]
	line	14
	
i1l3093:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
i1l3095:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
i1l3097:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
i1l3099:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
i1l3101:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
i1l3103:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
i1l3105:	
;init.c: 22: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	23
;init.c: 23: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	25
	
i1l1246:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_GPIO
	__end_ofi1_Init_GPIO:
	signat	i1_Init_GPIO,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
