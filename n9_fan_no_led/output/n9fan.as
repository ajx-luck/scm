opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1713S
opt include "C:\����\��Ƭ��ѧϰ����\SC8P\SCMCU_IDE_V2.00.07\data\include\sc8p1713s.cgen.inc"
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
	FNCALL	_main,_checkKeys
	FNCALL	_main,_checkUsbStatus
	FNCALL	_main,_readVrefADC
	FNCALL	_main,_scanKeys
	FNCALL	_scanKeys,_sacnKeyInput
	FNCALL	_readVrefADC,_ADC_Sample
	FNCALL	_readVrefADC,_DelayXms
	FNCALL	_checkKeys,_checkFan
	FNCALL	_checkKeys,_key_driver
	FNCALL	_checkKeys,_setFanLevel
	FNCALL	_checkFan,_closeFan
	FNCALL	_checkFan,_setFanLevel
	FNCALL	_setFanLevel,___awdiv
	FNCALL	_setFanLevel,_closeFan
	FNCALL	_closeFan,_Init_PWM
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
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	22

;initializer for _FAN_STATUS
	retlw	02h
	line	20

;initializer for _currentLevel
	retlw	01h
	global	_time0Flag
	global	ADC_Sample@adsum
	global	ADC_Sample@admax
	global	ADC_Sample@admin
	global	_fan_check_time
	global	_count10Ms
	global	_countTime
	global	_adresult
	global	ADC_Sample@adtimes
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
	file	"n9fan.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_time0Flag:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	22
_FAN_STATUS:
       ds      1

psect	dataCOMMON
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	20
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

_key1:
       ds      7

	file	"n9fan.as"
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
	movlw	low((__pbssBANK0)+018h)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
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
?_sacnKeyInput:	; 1 bytes @ 0x0
?_key_driver:	; 1 bytes @ 0x0
?_Init_Config:	; 1 bytes @ 0x0
?_resetKey:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Init_GPIO:	; 1 bytes @ 0x0
?_Init_Interupt:	; 1 bytes @ 0x0
?_checkUsbStatus:	; 1 bytes @ 0x0
?_Init_PWM:	; 1 bytes @ 0x0
?_setFanLevel:	; 1 bytes @ 0x0
?_checkFan:	; 1 bytes @ 0x0
?_scanKeys:	; 1 bytes @ 0x0
?_checkKeys:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
?_ADC_Sample:	; 1 bytes @ 0x0
?_DelayXms:	; 1 bytes @ 0x0
?i1_Init_System:	; 1 bytes @ 0x0
??i1_Init_System:	; 1 bytes @ 0x0
?i1_Init_GPIO:	; 1 bytes @ 0x0
??i1_Init_GPIO:	; 1 bytes @ 0x0
?i1_Init_Interupt:	; 1 bytes @ 0x0
??i1_Init_Interupt:	; 1 bytes @ 0x0
?i1_Init_PWM:	; 1 bytes @ 0x0
??i1_Init_PWM:	; 1 bytes @ 0x0
?i1_Init_Config:	; 1 bytes @ 0x0
?i1_resetKey:	; 1 bytes @ 0x0
??i1_resetKey:	; 1 bytes @ 0x0
?_readVrefADC:	; 2 bytes @ 0x0
	global	i1resetKey@key
i1resetKey@key:	; 1 bytes @ 0x0
	ds	1
??_Timer0_Isr:	; 1 bytes @ 0x1
??i1_Init_Config:	; 1 bytes @ 0x1
	ds	3
??_closeFan:	; 1 bytes @ 0x4
??_sacnKeyInput:	; 1 bytes @ 0x4
??_key_driver:	; 1 bytes @ 0x4
??_resetKey:	; 1 bytes @ 0x4
??_Init_System:	; 1 bytes @ 0x4
??_Init_GPIO:	; 1 bytes @ 0x4
??_Init_Interupt:	; 1 bytes @ 0x4
??_checkUsbStatus:	; 1 bytes @ 0x4
??_Init_PWM:	; 1 bytes @ 0x4
??_setFanLevel:	; 1 bytes @ 0x4
??_DelayXms:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
	global	setFanLevel@level
setFanLevel@level:	; 1 bytes @ 0x4
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x4
	global	key_driver@key_return
key_driver@key_return:	; 1 bytes @ 0x4
	global	resetKey@key
resetKey@key:	; 1 bytes @ 0x4
	ds	1
??_Init_Config:	; 1 bytes @ 0x5
	global	setFanLevel@tempLevel
setFanLevel@tempLevel:	; 1 bytes @ 0x5
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x5
	global	key_driver@key_read
key_driver@key_read:	; 1 bytes @ 0x5
	ds	1
??_checkFan:	; 1 bytes @ 0x6
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x6
	global	sacnKeyInput@key
sacnKeyInput@key:	; 1 bytes @ 0x6
	global	key_driver@key
key_driver@key:	; 1 bytes @ 0x6
	ds	1
??_readVrefADC:	; 1 bytes @ 0x7
??_scanKeys:	; 1 bytes @ 0x7
??_checkKeys:	; 1 bytes @ 0x7
??_main:	; 1 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_ADC_Sample:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	2
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
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        2
;!    BSS         25
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      10
;!    BANK0            80      8      32
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    resetKey@key	PTR struct Keys size(1) Largest target is 7
;!		 -> key1(BANK0[7]), 
;!
;!    key_driver@key	PTR struct Keys size(1) Largest target is 7
;!		 -> key1(BANK0[7]), 
;!
;!    sacnKeyInput@key	PTR struct Keys size(1) Largest target is 7
;!		 -> key1(BANK0[7]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _scanKeys->_sacnKeyInput
;!    _readVrefADC->_DelayXms
;!    _checkKeys->_checkFan
;!    _checkKeys->_key_driver
;!    _checkFan->_setFanLevel
;!    _Init_Config->_resetKey
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    i1_Init_Config->i1_resetKey
;!
;!Critical Paths under _main in BANK0
;!
;!    _readVrefADC->_ADC_Sample
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    2495
;!                        _Init_Config
;!                          _checkKeys
;!                     _checkUsbStatus
;!                        _readVrefADC
;!                           _scanKeys
;! ---------------------------------------------------------------------------------
;! (1) _scanKeys                                             0     0      0     115
;!                       _sacnKeyInput
;! ---------------------------------------------------------------------------------
;! (2) _sacnKeyInput                                         3     3      0     115
;!                                              4 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _readVrefADC                                          0     0      0     405
;!                         _ADC_Sample
;!                           _DelayXms
;! ---------------------------------------------------------------------------------
;! (2) _DelayXms                                             3     3      0     114
;!                                              4 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                           8     8      0     291
;!                                              0 BANK0      8     8      0
;! ---------------------------------------------------------------------------------
;! (1) _checkUsbStatus                                       1     1      0       0
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _checkKeys                                            0     0      0    1860
;!                           _checkFan
;!                         _key_driver
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (2) _key_driver                                           3     3      0     388
;!                                              4 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _checkFan                                             1     1      0     736
;!                                              6 COMMON     1     1      0
;!                           _closeFan
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (2) _setFanLevel                                          4     4      0     736
;!                                              4 COMMON     2     2      0
;!                            ___awdiv
;!                           _closeFan
;! ---------------------------------------------------------------------------------
;! (3) _closeFan                                             0     0      0       0
;!                           _Init_PWM
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4     606
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _Init_Config                                          0     0      0     115
;!                          _Init_GPIO
;!                      _Init_Interupt
;!                           _Init_PWM
;!                        _Init_System
;!                           _resetKey
;! ---------------------------------------------------------------------------------
;! (2) _resetKey                                             1     1      0     115
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _Init_PWM                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Init_Interupt                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Init_GPIO                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _Timer0_Isr                                           3     3      0      88
;!                                              1 COMMON     3     3      0
;!                      i1_Init_Config
;! ---------------------------------------------------------------------------------
;! (7) i1_Init_Config                                        0     0      0      88
;!                        i1_Init_GPIO
;!                    i1_Init_Interupt
;!                         i1_Init_PWM
;!                      i1_Init_System
;!                         i1_resetKey
;! ---------------------------------------------------------------------------------
;! (8) i1_resetKey                                           1     1      0      88
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (8) i1_Init_System                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) i1_Init_PWM                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) i1_Init_Interupt                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) i1_Init_GPIO                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
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
;!   _checkKeys
;!     _checkFan
;!       _closeFan
;!         _Init_PWM
;!       _setFanLevel
;!         ___awdiv
;!         _closeFan
;!           _Init_PWM
;!     _key_driver
;!     _setFanLevel
;!       ___awdiv
;!       _closeFan
;!         _Init_PWM
;!   _checkUsbStatus
;!   _readVrefADC
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
;!BANK0               50      8      20       5       40.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      7       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      2A       8        0.0%
;!ABS                  0      0      2A       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 185 in file "C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Init_Config
;;		_checkKeys
;;		_checkUsbStatus
;;		_readVrefADC
;;		_scanKeys
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	185
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	185
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	186
	
l3202:	
;main.c: 186: Init_Config();
	fcall	_Init_Config
	line	189
	
l3204:	
;main.c: 189: if (time0Flag) {
	movf	((_time0Flag)),w
	btfsc	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l3214
u1210:
	line	190
	
l3206:	
# 190 "C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
clrwdt ;# 
psect	maintext
	line	191
	
l3208:	
;main.c: 191: time0Flag = 0;
	clrf	(_time0Flag)
	line	192
	
l3210:	
;main.c: 192: scanKeys();
	fcall	_scanKeys
	line	193
	
l3212:	
;main.c: 193: count10Ms++;
	incf	(_count10Ms),f
	skipnz
	incf	(_count10Ms+1),f
	line	197
	
l3214:	
;main.c: 194: }
;main.c: 197: if (count10Ms == 100) {
		movlw	100
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_count10Ms)),w
iorwf	((_count10Ms+1)),w
	btfss	status,2
	goto	u1221
	goto	u1220
u1221:
	goto	l3224
u1220:
	line	198
	
l3216:	
;main.c: 198: checkKeys();
	fcall	_checkKeys
	line	199
	
l3218:	
;main.c: 199: count10Ms = 0;
	clrf	(_count10Ms)
	clrf	(_count10Ms+1)
	line	201
	
l3220:	
;main.c: 201: checkUsbStatus();
	fcall	_checkUsbStatus
	line	203
	
l3222:	
;main.c: 203: readVrefADC();
	fcall	_readVrefADC
	line	206
	
l3224:	
;main.c: 204: }
;main.c: 206: if (countTime == 1000) {
		movlw	232
	xorwf	((_countTime)),w
	movlw	3
	skipnz
	xorwf	((_countTime+1)),w
	btfss	status,2
	goto	u1231
	goto	u1230
u1231:
	goto	l3204
u1230:
	line	207
	
l3226:	
;main.c: 207: countTime = 0;
	clrf	(_countTime)
	clrf	(_countTime+1)
	goto	l3204
	global	start
	ljmp	start
	opt stack 0
	line	212
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_scanKeys

;; *************** function _scanKeys *****************
;; Defined at:
;;		line 156 in file "C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
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
	line	156
global __ptext1
__ptext1:	;psect for function _scanKeys
psect	text1
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	156
	global	__size_of_scanKeys
	__size_of_scanKeys	equ	__end_of_scanKeys-_scanKeys
	
_scanKeys:	
;incstack = 0
	opt	stack 3
; Regs used in _scanKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	157
	
l2912:	
;main.c: 157: key1.key_addr_result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	0+(_key1)+05h
	line	158
	
l2914:	
;main.c: 158: sacnKeyInput(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	159
	
l2916:	
;main.c: 159: countTime++;
	incf	(_countTime),f
	skipnz
	incf	(_countTime+1),f
	line	161
	
l1152:	
	return
	opt stack 0
GLOBAL	__end_of_scanKeys
	__end_of_scanKeys:
	signat	_scanKeys,89
	global	_sacnKeyInput

;; *************** function _sacnKeyInput *****************
;; Defined at:
;;		line 3 in file "C:\SCMCU WorkSpace\n9_fan_no_led\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    6[COMMON] PTR struct Keys
;;		 -> key1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          2       0       0
;;      Totals:         3       0       0
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
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\scankey.c"
	line	3
global __ptext2
__ptext2:	;psect for function _sacnKeyInput
psect	text2
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\scankey.c"
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
	
l2746:	
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
	goto	u614
u615:
	clrc
	rrf	(??_sacnKeyInput+0)+0,f
u614:
	addlw	-1
	skipz
	goto	u615
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
	
l1763:	
	return
	opt stack 0
GLOBAL	__end_of_sacnKeyInput
	__end_of_sacnKeyInput:
	signat	_sacnKeyInput,4217
	global	_readVrefADC

;; *************** function _readVrefADC *****************
;; Defined at:
;;		line 90 in file "C:\SCMCU WorkSpace\n9_fan_no_led\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  555[None  ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
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
;;		_ADC_Sample
;;		_DelayXms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\adc.c"
	line	90
global __ptext3
__ptext3:	;psect for function _readVrefADC
psect	text3
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\adc.c"
	line	90
	global	__size_of_readVrefADC
	__size_of_readVrefADC	equ	__end_of_readVrefADC-_readVrefADC
	
_readVrefADC:	
;incstack = 0
	opt	stack 3
; Regs used in _readVrefADC: [wreg+status,2+status,0+pclath+cstack]
	line	92
	
l3198:	
;adc.c: 92: DelayXms(1);
	movlw	low(01h)
	fcall	_DelayXms
	line	93
;adc.c: 93: ADC_Sample(15);
	movlw	low(0Fh)
	fcall	_ADC_Sample
	line	98
	
l1760:	
	return
	opt stack 0
GLOBAL	__end_of_readVrefADC
	__end_of_readVrefADC:
	signat	_readVrefADC,90
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 82 in file "C:\SCMCU WorkSpace\n9_fan_no_led\adc.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    4[COMMON] unsigned char 
;;  j               1    6[COMMON] unsigned char 
;;  i               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
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
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\adc.c"
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
	
l2836:	
;adc.c: 84: unsigned char i,j;
;adc.c: 85: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l2838:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u781
	goto	u780
u781:
	goto	l2842
u780:
	goto	l1757
	line	86
	
l2842:	
;adc.c: 86: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l2848:	
	decf	(DelayXms@j),f
	
l2850:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u791
	goto	u790
u791:
	goto	l2848
u790:
	line	85
	
l2852:	
	decf	(DelayXms@i),f
	goto	l2838
	line	87
	
l1757:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 11 in file "C:\SCMCU WorkSpace\n9_fan_no_led\adc.c"
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
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\adc.c"
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
	
l3140:	
;adc.c: 13: static unsigned long adsum = 0;
;adc.c: 14: static unsigned int admin = 0,admax = 0;
;adc.c: 15: static unsigned char adtimes = 0;
;adc.c: 16: volatile unsigned int ad_temp;
;adc.c: 17: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	18
	
l3142:	
;adc.c: 18: ADCON0 = 0X41 | (adch << 2);
	bcf	status, 5	;RP0=0, select bank0
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1075:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1075
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	movwf	(31)	;volatile
	line	19
# 19 "C:\SCMCU WorkSpace\n9_fan_no_led\adc.c"
nop ;# 
	line	20
# 20 "C:\SCMCU WorkSpace\n9_fan_no_led\adc.c"
nop ;# 
psect	text5
	line	21
	
l3144:	
;adc.c: 21: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	23
	
l3146:	
;adc.c: 23: unsigned char i = 0;
	clrf	(ADC_Sample@i)
	line	24
;adc.c: 24: while(GODONE)
	goto	l1733
	
l1734:	
	line	26
;adc.c: 25: {
;adc.c: 26: if(0 == (--i))
	decfsz	(ADC_Sample@i),f
	goto	u1081
	goto	u1080
u1081:
	goto	l1733
u1080:
	goto	l1736
	line	28
	
l1733:	
	line	24
	btfsc	(249/8),(249)&7	;volatile
	goto	u1091
	goto	u1090
u1091:
	goto	l1734
u1090:
	line	30
	
l3150:	
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
	
l3152:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	32
	
l3154:	
;adc.c: 32: if(0 == admax)
	movf	((ADC_Sample@admax)),w
iorwf	((ADC_Sample@admax+1)),w
	btfss	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l3158
u1100:
	line	34
	
l3156:	
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
	goto	l1739
	line	37
	
l3158:	
;adc.c: 37: else if(ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w
	skipz
	goto	u1115
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w
u1115:
	skipnc
	goto	u1111
	goto	u1110
u1111:
	goto	l3162
u1110:
	line	38
	
l3160:	
;adc.c: 38: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)
	goto	l1739
	line	39
	
l3162:	
;adc.c: 39: else if(ad_temp < admin)
	movf	(ADC_Sample@admin+1),w
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u1125
	movf	(ADC_Sample@admin),w
	subwf	(ADC_Sample@ad_temp),w	;volatile
u1125:
	skipnc
	goto	u1121
	goto	u1120
u1121:
	goto	l1739
u1120:
	line	40
	
l3164:	
;adc.c: 40: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)
	line	42
	
l1739:	
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
	goto	u1131
	addwf	(ADC_Sample@adsum+1),f
u1131:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1132
	addwf	(ADC_Sample@adsum+2),f
u1132:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1133
	addwf	(ADC_Sample@adsum+3),f
u1133:

	line	43
	
l3166:	
;adc.c: 43: if(++adtimes >= 10)
	movlw	low(0Ah)
	incf	(ADC_Sample@adtimes),f
	subwf	((ADC_Sample@adtimes)),w
	skipc
	goto	u1141
	goto	u1140
u1141:
	goto	l1736
u1140:
	line	45
	
l3168:	
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
	goto	u1155
	goto	u1156
u1155:
	subwf	(ADC_Sample@adsum+1),f
u1156:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1157
	goto	u1158
u1157:
	subwf	(ADC_Sample@adsum+2),f
u1158:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1159
	goto	u1150
u1159:
	subwf	(ADC_Sample@adsum+3),f
u1150:

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
	goto	u1165
	goto	u1166
u1165:
	subwf	(ADC_Sample@adsum+1),f
u1166:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1167
	goto	u1168
u1167:
	subwf	(ADC_Sample@adsum+2),f
u1168:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1169
	goto	u1160
u1169:
	subwf	(ADC_Sample@adsum+3),f
u1160:

	line	48
	
l3170:	
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
u1175:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1170:
	addlw	-1
	skipz
	goto	u1175
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	50
	
l3172:	
;adc.c: 50: adsum = 0;
	clrf	(ADC_Sample@adsum)
	clrf	(ADC_Sample@adsum+1)
	clrf	(ADC_Sample@adsum+2)
	clrf	(ADC_Sample@adsum+3)
	line	51
	
l3174:	
;adc.c: 51: admin = 0;
	clrf	(ADC_Sample@admin)
	clrf	(ADC_Sample@admin+1)
	line	52
	
l3176:	
;adc.c: 52: admax = 0;
	clrf	(ADC_Sample@admax)
	clrf	(ADC_Sample@admax+1)
	line	53
	
l3178:	
;adc.c: 53: adtimes = 0;
	clrf	(ADC_Sample@adtimes)
	line	55
	
l1736:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,4217
	global	_checkUsbStatus

;; *************** function _checkUsbStatus *****************
;; Defined at:
;;		line 34 in file "C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	34
global __ptext6
__ptext6:	;psect for function _checkUsbStatus
psect	text6
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	34
	global	__size_of_checkUsbStatus
	__size_of_checkUsbStatus	equ	__end_of_checkUsbStatus-_checkUsbStatus
	
_checkUsbStatus:	
;incstack = 0
	opt	stack 4
; Regs used in _checkUsbStatus: [wreg+status,2+status,0]
	line	36
	
l2894:	
;main.c: 36: if(FAN_STATUS == 1 && currentLevel != 1)
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u801
	goto	u800
u801:
	goto	l2900
u800:
	
l2896:	
		decf	((_currentLevel)),w
	btfsc	status,2
	goto	u811
	goto	u810
u811:
	goto	l2900
u810:
	line	38
	
l2898:	
;main.c: 37: {
;main.c: 38: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	39
;main.c: 39: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	40
;main.c: 40: return;
	goto	l1119
	line	42
	
l2900:	
;main.c: 41: }
;main.c: 42: if (((PORTB) >> (2)&1) == 1) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u821
	goto	u820
u821:
	goto	l2898
u820:
	line	43
	
l2902:	
;main.c: 43: if (((PORTB) >> (1)&1) == 1) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u831
	goto	u830
u831:
	goto	l2906
u830:
	line	45
	
l2904:	
;main.c: 45: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	46
;main.c: 46: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	47
;main.c: 47: } else if (countTime == 100) {
	goto	l1119
	
l2906:	
		movlw	100
	xorwf	((_countTime)),w
iorwf	((_countTime+1)),w
	btfss	status,2
	goto	u841
	goto	u840
u841:
	goto	l1119
u840:
	line	49
	
l2908:	
;main.c: 49: PORTA^=(1<<0);
	movlw	low(01h)
	xorwf	(5),f	;volatile
	line	50
	
l2910:	
;main.c: 50: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	57
	
l1119:	
	return
	opt stack 0
GLOBAL	__end_of_checkUsbStatus
	__end_of_checkUsbStatus:
	signat	_checkUsbStatus,89
	global	_checkKeys

;; *************** function _checkKeys *****************
;; Defined at:
;;		line 164 in file "C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_checkFan
;;		_key_driver
;;		_setFanLevel
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	164
global __ptext7
__ptext7:	;psect for function _checkKeys
psect	text7
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	164
	global	__size_of_checkKeys
	__size_of_checkKeys	equ	__end_of_checkKeys-_checkKeys
	
_checkKeys:	
;incstack = 0
	opt	stack 0
; Regs used in _checkKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	165
	
l3180:	
;main.c: 165: if (key_driver(&key1) == 1) {
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_key_driver
	xorlw	01h
	skipz
	goto	u1181
	goto	u1180
u1181:
	goto	l3194
u1180:
	line	168
	
l3182:	
;main.c: 168: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1191
	goto	u1190
u1191:
	goto	l3186
u1190:
	line	170
	
l3184:	
;main.c: 170: setFanLevel(1);
	movlw	low(01h)
	fcall	_setFanLevel
	line	172
;main.c: 172: } else {
	goto	l1158
	line	173
	
l3186:	
;main.c: 173: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	174
	
l3188:	
;main.c: 174: checkFan();
	fcall	_checkFan
	goto	l1158
	line	177
	
l3194:	
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1201
	goto	u1200
u1201:
	goto	l1158
u1200:
	goto	l3188
	line	182
	
l1158:	
	return
	opt stack 0
GLOBAL	__end_of_checkKeys
	__end_of_checkKeys:
	signat	_checkKeys,89
	global	_key_driver

;; *************** function _key_driver *****************
;; Defined at:
;;		line 9 in file "C:\SCMCU WorkSpace\n9_fan_no_led\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    6[COMMON] PTR struct Keys
;;		 -> key1(7), 
;;  key_read        1    5[COMMON] unsigned char 
;;  key_return      1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\scankey.c"
	line	9
global __ptext8
__ptext8:	;psect for function _key_driver
psect	text8
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\scankey.c"
	line	9
	global	__size_of_key_driver
	__size_of_key_driver	equ	__end_of_key_driver-_key_driver
	
_key_driver:	
;incstack = 0
	opt	stack 3
; Regs used in _key_driver: [wreg-fsr0h+status,2+status,0]
;key_driver@key stored from wreg
	movwf	(key_driver@key)
	line	12
	
l2748:	
;scankey.c: 12: unsigned char key_return = 0;
	clrf	(key_driver@key_return)
	line	13
	
l2750:	
;scankey.c: 13: unsigned char key_read = key->key_input;
	movf	(key_driver@key),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(key_driver@key_read)
	line	15
;scankey.c: 15: switch (key->key_state_buffer1) {
	goto	l2782
	line	17
	
l2752:	
;scankey.c: 17: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u621
	goto	u620
u621:
	goto	l2784
u620:
	line	18
	
l2754:	
;scankey.c: 18: key->key_state_buffer1 = 1;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	incf	indf,f
	goto	l2784
	line	25
	
l2756:	
;scankey.c: 25: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u631
	goto	u630
u631:
	goto	l2762
u630:
	line	26
	
l2758:	
;scankey.c: 26: key->key_timer_cnt1 = 0;
	movf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	27
	
l2760:	
;scankey.c: 27: key->key_state_buffer1 = 2;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(02h)
	movwf	indf
	line	31
;scankey.c: 31: } else {
	goto	l2784
	line	32
	
l2762:	
;scankey.c: 32: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l2784
	line	39
	
l2764:	
;scankey.c: 39: if (key_read == 1) {
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u641
	goto	u640
u641:
	goto	l2770
u640:
	line	40
	
l2766:	
;scankey.c: 40: key_return = 1;
	clrf	(key_driver@key_return)
	incf	(key_driver@key_return),f
	line	41
	
l2768:	
;scankey.c: 41: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	42
;scankey.c: 42: } else if (++(key->key_timer_cnt1) >= 100)
	goto	l2784
	
l2770:	
	movf	(key_driver@key),w
	movwf	fsr0
	incf	indf,f
	movlw	low(064h)
	subwf	(indf),w
	skipc
	goto	u651
	goto	u650
u651:
	goto	l2784
u650:
	line	44
	
l2772:	
;scankey.c: 43: {
;scankey.c: 44: key_return = 3;
	movlw	low(03h)
	movwf	(key_driver@key_return)
	line	45
	
l2774:	
;scankey.c: 45: key->key_state_buffer1 = 3;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(03h)
	movwf	indf
	goto	l2784
	line	51
	
l2776:	
;scankey.c: 51: if (key_read == 1)
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u661
	goto	u660
u661:
	goto	l2784
u660:
	line	53
	
l2778:	
;scankey.c: 52: {
;scankey.c: 53: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l2784
	line	15
	
l2782:	
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
goto l2784
movlw high(S3258)
movwf pclath
	movlw low(S3258)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S3258:
	ljmp	l2752
	ljmp	l2756
	ljmp	l2764
	ljmp	l2776
psect	text8

	line	58
	
l2784:	
;scankey.c: 58: return key_return;
	movf	(key_driver@key_return),w
	line	59
	
l1779:	
	return
	opt stack 0
GLOBAL	__end_of_key_driver
	__end_of_key_driver:
	signat	_key_driver,4217
	global	_checkFan

;; *************** function _checkFan *****************
;; Defined at:
;;		line 123 in file "C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
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
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_closeFan
;;		_setFanLevel
;; This function is called by:
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	123
global __ptext9
__ptext9:	;psect for function _checkFan
psect	text9
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	123
	global	__size_of_checkFan
	__size_of_checkFan	equ	__end_of_checkFan-_checkFan
	
_checkFan:	
;incstack = 0
	opt	stack 0
; Regs used in _checkFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	124
	
l3118:	
;main.c: 124: TRISA&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	125
;main.c: 125: PORTA|=(1<<1);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(1/8),(1)&7	;volatile
	line	127
;main.c: 127: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	128
;main.c: 128: PORTA|=(1<<2);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(2/8),(2)&7	;volatile
	line	129
	
l3120:	
;main.c: 129: T2CON = 0X04;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	132
	
l3122:	
;main.c: 132: if (((PORTB) >> (6)&1) == 0) {
	movf	(6),w	;volatile
	movwf	(??_checkFan+0)+0
	movlw	06h
u1035:
	clrc
	rrf	(??_checkFan+0)+0,f
	addlw	-1
	skipz
	goto	u1035
	btfsc	0+(??_checkFan+0)+0,(0)&7
	goto	u1041
	goto	u1040
u1041:
	goto	l3126
u1040:
	line	133
	
l3124:	
;main.c: 133: FAN_STATUS = 1;
	clrf	(_FAN_STATUS)
	incf	(_FAN_STATUS),f
	line	134
;main.c: 134: } else {
	goto	l3128
	line	135
	
l3126:	
;main.c: 135: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	138
	
l3128:	
;main.c: 136: }
;main.c: 138: setFanLevel(0);
	movlw	low(0)
	fcall	_setFanLevel
	line	141
	
l3130:	
;main.c: 141: if (FAN_STATUS == 2) {
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1051
	goto	u1050
u1051:
	goto	l1149
u1050:
	line	142
	
l3132:	
;main.c: 142: fan_check_time++;
	incf	(_fan_check_time),f
	skipnz
	incf	(_fan_check_time+1),f
	line	143
	
l3134:	
;main.c: 143: if (fan_check_time == 3000) {
		movlw	184
	xorwf	((_fan_check_time)),w
	movlw	11
	skipnz
	xorwf	((_fan_check_time+1)),w
	btfss	status,2
	goto	u1061
	goto	u1060
u1061:
	goto	l1149
u1060:
	line	144
	
l3136:	
;main.c: 144: closeFan();
	fcall	_closeFan
	line	150
	
l1149:	
	return
	opt stack 0
GLOBAL	__end_of_checkFan
	__end_of_checkFan:
	signat	_checkFan,89
	global	_setFanLevel

;; *************** function _setFanLevel *****************
;; Defined at:
;;		line 73 in file "C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
;; Parameters:    Size  Location     Type
;;  level           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  level           1    4[COMMON] unsigned char 
;;  levelWidth      2    0        unsigned int 
;;  tempLevel       1    5[COMMON] unsigned char 
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
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awdiv
;;		_closeFan
;; This function is called by:
;;		_checkFan
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	73
global __ptext10
__ptext10:	;psect for function _setFanLevel
psect	text10
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	73
	global	__size_of_setFanLevel
	__size_of_setFanLevel	equ	__end_of_setFanLevel-_setFanLevel
	
_setFanLevel:	
;incstack = 0
	opt	stack 1
; Regs used in _setFanLevel: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setFanLevel@level stored from wreg
	movwf	(setFanLevel@level)
	line	74
	
l3090:	
;main.c: 74: if(level == 0)
	movf	((setFanLevel@level)),w
	btfss	status,2
	goto	u1001
	goto	u1000
u1001:
	goto	l3094
u1000:
	line	76
	
l3092:	
;main.c: 75: {
;main.c: 76: currentLevel = 3;
	movlw	low(03h)
	movwf	(_currentLevel)
	line	78
	
l3094:	
;main.c: 77: }
;main.c: 78: unsigned int levelWidth = (PR2 + 1) / 4;
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
	line	79
	
l3096:	
;main.c: 79: char tempLevel = currentLevel + level;
	movf	(setFanLevel@level),w
	addwf	(_currentLevel),w
	movwf	(setFanLevel@tempLevel)
	line	80
	
l3098:	
;main.c: 80: if (tempLevel > 4) {
	movlw	low(05h)
	subwf	(setFanLevel@tempLevel),w
	skipc
	goto	u1011
	goto	u1010
u1011:
	goto	l3102
u1010:
	line	81
	
l3100:	
;main.c: 81: tempLevel = 1;
	clrf	(setFanLevel@tempLevel)
	incf	(setFanLevel@tempLevel),f
	line	85
	
l3102:	
;main.c: 82: }
;main.c: 85: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1021
	goto	u1020
u1021:
	goto	l1139
u1020:
	line	86
	
l3104:	
;main.c: 86: currentLevel = tempLevel;
	movf	(setFanLevel@tempLevel),w
	movwf	(_currentLevel)
	line	87
;main.c: 87: switch(currentLevel)
	goto	l3116
	line	90
	
l3106:	
;main.c: 90: closeFan();
	fcall	_closeFan
	line	91
;main.c: 91: break;
	goto	l1139
	line	93
	
l3108:	
;main.c: 93: CCPR1L = 2;
	movlw	low(02h)
	movwf	(21)	;volatile
	line	94
;main.c: 94: break;
	goto	l1139
	line	96
	
l3110:	
;main.c: 96: CCPR1L = 3;
	movlw	low(03h)
	movwf	(21)	;volatile
	line	97
;main.c: 97: break;
	goto	l1139
	line	99
	
l3112:	
;main.c: 99: CCPR1L = 5;
	movlw	low(05h)
	movwf	(21)	;volatile
	line	100
;main.c: 100: break;
	goto	l1139
	line	87
	
l3116:	
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
	goto	l3106
	xorlw	2^1	; case 2
	skipnz
	goto	l3108
	xorlw	3^2	; case 3
	skipnz
	goto	l3110
	xorlw	4^3	; case 4
	skipnz
	goto	l3112
	goto	l1139
	opt asmopt_pop

	line	107
	
l1139:	
	return
	opt stack 0
GLOBAL	__end_of_setFanLevel
	__end_of_setFanLevel:
	signat	_setFanLevel,4217
	global	_closeFan

;; *************** function _closeFan *****************
;; Defined at:
;;		line 110 in file "C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Init_PWM
;; This function is called by:
;;		_setFanLevel
;;		_checkFan
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	110
global __ptext11
__ptext11:	;psect for function _closeFan
psect	text11
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	110
	global	__size_of_closeFan
	__size_of_closeFan	equ	__end_of_closeFan-_closeFan
	
_closeFan:	
;incstack = 0
	opt	stack 1
; Regs used in _closeFan: [wreg+status,2+status,0+pclath+cstack]
	line	111
	
l2614:	
;main.c: 111: Init_PWM();
	fcall	_Init_PWM
	line	112
	
l2616:	
;main.c: 112: currentLevel = 2;
	movlw	low(02h)
	movwf	(_currentLevel)
	line	113
	
l2618:	
;main.c: 113: PORTA|=(1<<0);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(0/8),(0)&7	;volatile
	line	115
	
l2620:	
;main.c: 115: TRISC|=(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(2/8),(2)&7	;volatile
	line	116
	
l2622:	
;main.c: 116: fan_check_time = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_fan_check_time)
	clrf	(_fan_check_time+1)
	line	117
	
l2624:	
;main.c: 117: FAN_STATUS = 0;
	clrf	(_FAN_STATUS)
	line	119
	
l1142:	
	return
	opt stack 0
GLOBAL	__end_of_closeFan
	__end_of_closeFan:
	signat	_closeFan,89
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\����\��Ƭ��ѧϰ����\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
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
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
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
	file	"C:\����\��Ƭ��ѧϰ����\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
global __ptext12
__ptext12:	;psect for function ___awdiv
psect	text12
	file	"C:\����\��Ƭ��ѧϰ����\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l3046:	
	clrf	(___awdiv@sign)
	line	15
	
l3048:	
	btfss	(___awdiv@divisor+1),7
	goto	u931
	goto	u930
u931:
	goto	l3054
u930:
	line	16
	
l3050:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l3052:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l3054:	
	btfss	(___awdiv@dividend+1),7
	goto	u941
	goto	u940
u941:
	goto	l3060
u940:
	line	20
	
l3056:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l3058:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l3060:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l3062:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u951
	goto	u950
u951:
	goto	l3082
u950:
	line	25
	
l3064:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l3068
	line	27
	
l3066:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l3068:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u961
	goto	u960
u961:
	goto	l3066
u960:
	line	31
	
l3070:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l3072:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u975
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u975:
	skipc
	goto	u971
	goto	u970
u971:
	goto	l3078
u970:
	line	33
	
l3074:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l3076:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l3078:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l3080:	
	decfsz	(___awdiv@counter),f
	goto	u981
	goto	u980
u981:
	goto	l3070
u980:
	line	39
	
l3082:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u991
	goto	u990
u991:
	goto	l3086
u990:
	line	40
	
l3084:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l3086:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l1930:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_Init_Config

;; *************** function _Init_Config *****************
;; Defined at:
;;		line 214 in file "C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
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
;;		On exit  : B00/100
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
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	214
global __ptext13
__ptext13:	;psect for function _Init_Config
psect	text13
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	214
	global	__size_of_Init_Config
	__size_of_Init_Config	equ	__end_of_Init_Config-_Init_Config
	
_Init_Config:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	216
	
l2936:	
;main.c: 216: Init_System();
	fcall	_Init_System
	line	217
;main.c: 217: Init_GPIO();
	fcall	_Init_GPIO
	line	218
;main.c: 218: Init_Interupt();
	fcall	_Init_Interupt
	line	219
;main.c: 219: Init_PWM();
	fcall	_Init_PWM
	line	221
	
l2938:	
;main.c: 221: IOCB = 0x04;
	movlw	low(04h)
	movwf	(150)^080h	;volatile
	line	222
	
l2940:	
;main.c: 222: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	223
	
l2942:	
;main.c: 223: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	226
	
l2944:	
;main.c: 226: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	228
	
l2946:	
;main.c: 228: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	231
	
l2948:	
;main.c: 231: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	232
	
l2950:	
;main.c: 232: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	233
	
l2952:	
;main.c: 233: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	234
	
l1174:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Config
	__end_of_Init_Config:
	signat	_Init_Config,89
	global	_resetKey

;; *************** function _resetKey *****************
;; Defined at:
;;		line 100 in file "C:\SCMCU WorkSpace\n9_fan_no_led\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    4[COMMON] PTR struct Keys
;;		 -> key1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 300/0
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\scankey.c"
	line	100
global __ptext14
__ptext14:	;psect for function _resetKey
psect	text14
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\scankey.c"
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
	
l2794:	
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
	
l1794:	
	return
	opt stack 0
GLOBAL	__end_of_resetKey
	__end_of_resetKey:
	signat	_resetKey,4217
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 3 in file "C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
	line	3
global __ptext15
__ptext15:	;psect for function _Init_System
psect	text15
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
	line	3
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_System: [wreg+status,2]
	line	4
	
l2698:	
# 4 "C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
nop ;# 
	line	5
# 5 "C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
clrwdt ;# 
psect	text15
	line	6
	
l2700:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
l2702:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
l2704:	
;init.c: 8: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
l539:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Init_PWM

;; *************** function _Init_PWM *****************
;; Defined at:
;;		line 59 in file "C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	59
global __ptext16
__ptext16:	;psect for function _Init_PWM
psect	text16
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	59
	global	__size_of_Init_PWM
	__size_of_Init_PWM	equ	__end_of_Init_PWM-_Init_PWM
	
_Init_PWM:	
;incstack = 0
	opt	stack 1
; Regs used in _Init_PWM: [wreg+status,2]
	line	60
	
l2604:	
;main.c: 60: CCP1CON = 0x0F;
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	61
	
l2606:	
;main.c: 61: T2CON = 0;
	clrf	(18)	;volatile
	line	62
	
l2608:	
;main.c: 62: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	64
;main.c: 64: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	65
	
l2610:	
;main.c: 65: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	66
;main.c: 66: T2CON = 0;
	clrf	(18)	;volatile
	line	68
	
l2612:	
;main.c: 68: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	70
	
l1127:	
	return
	opt stack 0
GLOBAL	__end_of_Init_PWM
	__end_of_Init_PWM:
	signat	_Init_PWM,89
	global	_Init_Interupt

;; *************** function _Init_Interupt *****************
;; Defined at:
;;		line 27 in file "C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
	line	27
global __ptext17
__ptext17:	;psect for function _Init_Interupt
psect	text17
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
	line	27
	global	__size_of_Init_Interupt
	__size_of_Init_Interupt	equ	__end_of_Init_Interupt-_Init_Interupt
	
_Init_Interupt:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Interupt: [wreg+status,2]
	line	28
	
l2720:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
l2722:	
;init.c: 30: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	32
	
l545:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Interupt
	__end_of_Init_Interupt:
	signat	_Init_Interupt,89
	global	_Init_GPIO

;; *************** function _Init_GPIO *****************
;; Defined at:
;;		line 13 in file "C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext18
__ptext18:	;psect for function _Init_GPIO
psect	text18
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
	line	13
	global	__size_of_Init_GPIO
	__size_of_Init_GPIO	equ	__end_of_Init_GPIO-_Init_GPIO
	
_Init_GPIO:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_GPIO: [wreg+status,2]
	line	14
	
l2706:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
l2708:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
l2710:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
l2712:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
l2714:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
l2716:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
l2718:	
;init.c: 22: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	23
;init.c: 23: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	25
	
l542:	
	return
	opt stack 0
GLOBAL	__end_of_Init_GPIO
	__end_of_Init_GPIO:
	signat	_Init_GPIO,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 278 in file "C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	278
global __ptext19
__ptext19:	;psect for function _Timer0_Isr
psect	text19
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	278
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 0
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
psect	text19
	line	279
	
i1l3002:	
;main.c: 279: if (T0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u91_21
	goto	u91_20
u91_21:
	goto	i1l3010
u91_20:
	line	281
	
i1l3004:	
;main.c: 281: TMR0 += 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	284
	
i1l3006:	
;main.c: 284: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	285
	
i1l3008:	
;main.c: 285: time0Flag = 1;
	clrf	(_time0Flag)
	incf	(_time0Flag),f
	line	289
	
i1l3010:	
;main.c: 287: }
;main.c: 289: if (RBIF) {
	btfss	(88/8),(88)&7	;volatile
	goto	u92_21
	goto	u92_20
u92_21:
	goto	i1l1184
u92_20:
	line	290
	
i1l3012:	
;main.c: 290: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	291
	
i1l3014:	
;main.c: 291: Init_Config();
	fcall	i1_Init_Config
	line	293
	
i1l1184:	
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
;;		line 214 in file "C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
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
;;		On exit  : B00/100
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	214
global __ptext20
__ptext20:	;psect for function i1_Init_Config
psect	text20
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	214
	global	__size_ofi1_Init_Config
	__size_ofi1_Init_Config	equ	__end_ofi1_Init_Config-i1_Init_Config
	
i1_Init_Config:	
;incstack = 0
	opt	stack 0
; Regs used in i1_Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	216
	
i1l2958:	
;main.c: 216: Init_System();
	fcall	i1_Init_System
	line	217
;main.c: 217: Init_GPIO();
	fcall	i1_Init_GPIO
	line	218
;main.c: 218: Init_Interupt();
	fcall	i1_Init_Interupt
	line	219
;main.c: 219: Init_PWM();
	fcall	i1_Init_PWM
	line	221
	
i1l2960:	
;main.c: 221: IOCB = 0x04;
	movlw	low(04h)
	movwf	(150)^080h	;volatile
	line	222
	
i1l2962:	
;main.c: 222: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	223
	
i1l2964:	
;main.c: 223: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	226
	
i1l2966:	
;main.c: 226: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	228
	
i1l2968:	
;main.c: 228: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	231
	
i1l2970:	
;main.c: 231: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	232
	
i1l2972:	
;main.c: 232: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	233
	
i1l2974:	
;main.c: 233: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	234
	
i1l1174:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_Config
	__end_ofi1_Init_Config:
	signat	i1_Init_Config,89
	global	i1_resetKey

;; *************** function i1_resetKey *****************
;; Defined at:
;;		line 100 in file "C:\SCMCU WorkSpace\n9_fan_no_led\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    0[COMMON] PTR struct Keys
;;		 -> key1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 300/0
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\scankey.c"
	line	100
global __ptext21
__ptext21:	;psect for function i1_resetKey
psect	text21
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\scankey.c"
	line	100
	global	__size_ofi1_resetKey
	__size_ofi1_resetKey	equ	__end_ofi1_resetKey-i1_resetKey
	
i1_resetKey:	
;incstack = 0
	opt	stack 0
; Regs used in i1_resetKey: [wreg-fsr0h+status,2+status,0]
;i1resetKey@key stored from wreg
	movwf	(i1resetKey@key)
	line	101
	
i1l2892:	
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
	
i1l1794:	
	return
	opt stack 0
GLOBAL	__end_ofi1_resetKey
	__end_ofi1_resetKey:
	signat	i1_resetKey,89
	global	i1_Init_System

;; *************** function i1_Init_System *****************
;; Defined at:
;;		line 3 in file "C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
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
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
	line	3
global __ptext22
__ptext22:	;psect for function i1_Init_System
psect	text22
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
	line	3
	global	__size_ofi1_Init_System
	__size_ofi1_Init_System	equ	__end_ofi1_Init_System-i1_Init_System
	
i1_Init_System:	
;incstack = 0
	opt	stack 0
; Regs used in i1_Init_System: [wreg+status,2]
	line	4
	
i1l2856:	
# 4 "C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
nop ;# 
	line	5
# 5 "C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
clrwdt ;# 
psect	text22
	line	6
	
i1l2858:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
i1l2860:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
i1l2862:	
;init.c: 8: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
i1l539:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_System
	__end_ofi1_Init_System:
	signat	i1_Init_System,89
	global	i1_Init_PWM

;; *************** function i1_Init_PWM *****************
;; Defined at:
;;		line 59 in file "C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	59
global __ptext23
__ptext23:	;psect for function i1_Init_PWM
psect	text23
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\main.c"
	line	59
	global	__size_ofi1_Init_PWM
	__size_ofi1_Init_PWM	equ	__end_ofi1_Init_PWM-i1_Init_PWM
	
i1_Init_PWM:	
;incstack = 0
	opt	stack 0
; Regs used in i1_Init_PWM: [wreg+status,2]
	line	60
	
i1l2882:	
;main.c: 60: CCP1CON = 0x0F;
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	61
	
i1l2884:	
;main.c: 61: T2CON = 0;
	clrf	(18)	;volatile
	line	62
	
i1l2886:	
;main.c: 62: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	64
;main.c: 64: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	65
	
i1l2888:	
;main.c: 65: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	66
;main.c: 66: T2CON = 0;
	clrf	(18)	;volatile
	line	68
	
i1l2890:	
;main.c: 68: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	70
	
i1l1127:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_PWM
	__end_ofi1_Init_PWM:
	signat	i1_Init_PWM,89
	global	i1_Init_Interupt

;; *************** function i1_Init_Interupt *****************
;; Defined at:
;;		line 27 in file "C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
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
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
	line	27
global __ptext24
__ptext24:	;psect for function i1_Init_Interupt
psect	text24
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
	line	27
	global	__size_ofi1_Init_Interupt
	__size_ofi1_Init_Interupt	equ	__end_ofi1_Init_Interupt-i1_Init_Interupt
	
i1_Init_Interupt:	
;incstack = 0
	opt	stack 0
; Regs used in i1_Init_Interupt: [wreg+status,2]
	line	28
	
i1l2878:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
i1l2880:	
;init.c: 30: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	32
	
i1l545:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_Interupt
	__end_ofi1_Init_Interupt:
	signat	i1_Init_Interupt,89
	global	i1_Init_GPIO

;; *************** function i1_Init_GPIO *****************
;; Defined at:
;;		line 13 in file "C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
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
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext25
__ptext25:	;psect for function i1_Init_GPIO
psect	text25
	file	"C:\SCMCU WorkSpace\n9_fan_no_led\init.c"
	line	13
	global	__size_ofi1_Init_GPIO
	__size_ofi1_Init_GPIO	equ	__end_ofi1_Init_GPIO-i1_Init_GPIO
	
i1_Init_GPIO:	
;incstack = 0
	opt	stack 0
; Regs used in i1_Init_GPIO: [wreg+status,2]
	line	14
	
i1l2864:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
i1l2866:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
i1l2868:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
i1l2870:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
i1l2872:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
i1l2874:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
i1l2876:	
;init.c: 22: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	23
;init.c: 23: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	25
	
i1l542:	
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