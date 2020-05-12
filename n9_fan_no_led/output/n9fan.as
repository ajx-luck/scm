opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1713S
opt include "E:\cms\SCMCU_IDE_V2.00.07\data\include\sc8p1713s.cgen.inc"
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
	FNCALL	_readVrefADC,_ADC_Sample
	FNCALL	_readVrefADC,_DelayXms
	FNCALL	_checkKeys,_checkFan
	FNCALL	_checkKeys,_key_driver
	FNCALL	_checkKeys,_setFanLevel
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
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	22

;initializer for _FAN_STATUS
	retlw	01h
	line	20

;initializer for _currentLevel
	retlw	03h
	global	_time0Flag
	global	ADC_Sample@adsum
	global	ADC_Sample@admax
	global	ADC_Sample@admin
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
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	22
_FAN_STATUS:
       ds      1

psect	dataCOMMON
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
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
	movlw	low((__pbssBANK0)+016h)
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
?_Sleep_Mode:	; 1 bytes @ 0x0
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
??_Sleep_Mode:	; 1 bytes @ 0x4
??_resetKey:	; 1 bytes @ 0x4
??_Init_System:	; 1 bytes @ 0x4
??_Init_GPIO:	; 1 bytes @ 0x4
??_Init_Interupt:	; 1 bytes @ 0x4
??_checkUsbStatus:	; 1 bytes @ 0x4
??_Init_PWM:	; 1 bytes @ 0x4
??_setFanLevel:	; 1 bytes @ 0x4
??_checkFan:	; 1 bytes @ 0x4
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
;!    BSS         23
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      10
;!    BANK0            80      8      30
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
;!    _checkKeys->_key_driver
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
;! (0) _main                                                 0     0      0    1759
;!                        _Init_Config
;!                         _Sleep_Mode
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
;! (1) _checkKeys                                            0     0      0    1124
;!                           _checkFan
;!                         _key_driver
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
;! (2) _key_driver                                           3     3      0     388
;!                                              4 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _checkFan                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Mode                                           0     0      0       0
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
;!BANK0               50      8      1E       5       37.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      7       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      28       8        0.0%
;!ABS                  0      0      28       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 185 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	185
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	185
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	186
	
l3174:	
;main.c: 186: Sleep_Mode();
	fcall	_Sleep_Mode
	line	187
	
l3176:	
;main.c: 187: Init_Config();
	fcall	_Init_Config
	line	190
	
l3178:	
;main.c: 190: if (time0Flag) {
	movf	((_time0Flag)),w
	btfsc	status,2
	goto	u1071
	goto	u1070
u1071:
	goto	l3188
u1070:
	line	191
	
l3180:	
# 191 "E:\project\project0508\scm\n9_fan_no_led\main.c"
clrwdt ;# 
psect	maintext
	line	192
	
l3182:	
;main.c: 192: time0Flag = 0;
	clrf	(_time0Flag)
	line	193
	
l3184:	
;main.c: 193: scanKeys();
	fcall	_scanKeys
	line	194
	
l3186:	
;main.c: 194: count10Ms++;
	incf	(_count10Ms),f
	skipnz
	incf	(_count10Ms+1),f
	line	198
	
l3188:	
;main.c: 195: }
;main.c: 198: if (count10Ms == 100) {
		movlw	100
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_count10Ms)),w
iorwf	((_count10Ms+1)),w
	btfss	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l3198
u1080:
	line	199
	
l3190:	
;main.c: 199: checkKeys();
	fcall	_checkKeys
	line	200
	
l3192:	
;main.c: 200: count10Ms = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_count10Ms)
	clrf	(_count10Ms+1)
	line	202
	
l3194:	
;main.c: 202: checkUsbStatus();
	fcall	_checkUsbStatus
	line	204
	
l3196:	
;main.c: 204: readVrefADC();
	fcall	_readVrefADC
	line	207
	
l3198:	
;main.c: 205: }
;main.c: 207: if (countTime == 1000) {
		movlw	232
	xorwf	((_countTime)),w
	movlw	3
	skipnz
	xorwf	((_countTime+1)),w
	btfss	status,2
	goto	u1091
	goto	u1090
u1091:
	goto	l3178
u1090:
	line	208
	
l3200:	
;main.c: 208: countTime = 0;
	clrf	(_countTime)
	clrf	(_countTime+1)
	goto	l3178
	global	start
	ljmp	start
	opt stack 0
	line	213
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_scanKeys

;; *************** function _scanKeys *****************
;; Defined at:
;;		line 155 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
	line	155
global __ptext1
__ptext1:	;psect for function _scanKeys
psect	text1
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	155
	global	__size_of_scanKeys
	__size_of_scanKeys	equ	__end_of_scanKeys-_scanKeys
	
_scanKeys:	
;incstack = 0
	opt	stack 3
; Regs used in _scanKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	156
	
l2886:	
;main.c: 156: key1.key_addr_result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	0+(_key1)+05h
	line	157
	
l2888:	
;main.c: 157: sacnKeyInput(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	158
	
l2890:	
;main.c: 158: countTime++;
	incf	(_countTime),f
	skipnz
	incf	(_countTime+1),f
	line	160
	
l1150:	
	return
	opt stack 0
GLOBAL	__end_of_scanKeys
	__end_of_scanKeys:
	signat	_scanKeys,89
	global	_sacnKeyInput

;; *************** function _sacnKeyInput *****************
;; Defined at:
;;		line 3 in file "E:\project\project0508\scm\n9_fan_no_led\scankey.c"
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
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
	line	3
global __ptext2
__ptext2:	;psect for function _sacnKeyInput
psect	text2
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
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
	
l2722:	
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
	goto	u524
u525:
	clrc
	rrf	(??_sacnKeyInput+0)+0,f
u524:
	addlw	-1
	skipz
	goto	u525
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
	
l1761:	
	return
	opt stack 0
GLOBAL	__end_of_sacnKeyInput
	__end_of_sacnKeyInput:
	signat	_sacnKeyInput,4217
	global	_readVrefADC

;; *************** function _readVrefADC *****************
;; Defined at:
;;		line 90 in file "E:\project\project0508\scm\n9_fan_no_led\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  557[None  ] unsigned int 
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
	file	"E:\project\project0508\scm\n9_fan_no_led\adc.c"
	line	90
global __ptext3
__ptext3:	;psect for function _readVrefADC
psect	text3
	file	"E:\project\project0508\scm\n9_fan_no_led\adc.c"
	line	90
	global	__size_of_readVrefADC
	__size_of_readVrefADC	equ	__end_of_readVrefADC-_readVrefADC
	
_readVrefADC:	
;incstack = 0
	opt	stack 3
; Regs used in _readVrefADC: [wreg+status,2+status,0+pclath+cstack]
	line	92
	
l3170:	
;adc.c: 92: DelayXms(1);
	movlw	low(01h)
	fcall	_DelayXms
	line	93
;adc.c: 93: ADC_Sample(15);
	movlw	low(0Fh)
	fcall	_ADC_Sample
	line	98
	
l1758:	
	return
	opt stack 0
GLOBAL	__end_of_readVrefADC
	__end_of_readVrefADC:
	signat	_readVrefADC,90
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 82 in file "E:\project\project0508\scm\n9_fan_no_led\adc.c"
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
	file	"E:\project\project0508\scm\n9_fan_no_led\adc.c"
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
	
l2812:	
;adc.c: 84: unsigned char i,j;
;adc.c: 85: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l2814:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u691
	goto	u690
u691:
	goto	l2818
u690:
	goto	l1755
	line	86
	
l2818:	
;adc.c: 86: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l2824:	
	decf	(DelayXms@j),f
	
l2826:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u701
	goto	u700
u701:
	goto	l2824
u700:
	line	85
	
l2828:	
	decf	(DelayXms@i),f
	goto	l2814
	line	87
	
l1755:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 11 in file "E:\project\project0508\scm\n9_fan_no_led\adc.c"
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
	file	"E:\project\project0508\scm\n9_fan_no_led\adc.c"
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
	
l3112:	
;adc.c: 13: static unsigned long adsum = 0;
;adc.c: 14: static unsigned int admin = 0,admax = 0;
;adc.c: 15: static unsigned char adtimes = 0;
;adc.c: 16: volatile unsigned int ad_temp;
;adc.c: 17: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	18
	
l3114:	
;adc.c: 18: ADCON0 = 0X41 | (adch << 2);
	bcf	status, 5	;RP0=0, select bank0
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u935:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u935
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	movwf	(31)	;volatile
	line	19
# 19 "E:\project\project0508\scm\n9_fan_no_led\adc.c"
nop ;# 
	line	20
# 20 "E:\project\project0508\scm\n9_fan_no_led\adc.c"
nop ;# 
psect	text5
	line	21
	
l3116:	
;adc.c: 21: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	23
	
l3118:	
;adc.c: 23: unsigned char i = 0;
	clrf	(ADC_Sample@i)
	line	24
;adc.c: 24: while(GODONE)
	goto	l1731
	
l1732:	
	line	26
;adc.c: 25: {
;adc.c: 26: if(0 == (--i))
	decfsz	(ADC_Sample@i),f
	goto	u941
	goto	u940
u941:
	goto	l1731
u940:
	goto	l1734
	line	28
	
l1731:	
	line	24
	btfsc	(249/8),(249)&7	;volatile
	goto	u951
	goto	u950
u951:
	goto	l1732
u950:
	line	30
	
l3122:	
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
	
l3124:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	32
	
l3126:	
;adc.c: 32: if(0 == admax)
	movf	((ADC_Sample@admax)),w
iorwf	((ADC_Sample@admax+1)),w
	btfss	status,2
	goto	u961
	goto	u960
u961:
	goto	l3130
u960:
	line	34
	
l3128:	
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
	goto	l1737
	line	37
	
l3130:	
;adc.c: 37: else if(ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w
	skipz
	goto	u975
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w
u975:
	skipnc
	goto	u971
	goto	u970
u971:
	goto	l3134
u970:
	line	38
	
l3132:	
;adc.c: 38: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)
	goto	l1737
	line	39
	
l3134:	
;adc.c: 39: else if(ad_temp < admin)
	movf	(ADC_Sample@admin+1),w
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u985
	movf	(ADC_Sample@admin),w
	subwf	(ADC_Sample@ad_temp),w	;volatile
u985:
	skipnc
	goto	u981
	goto	u980
u981:
	goto	l1737
u980:
	line	40
	
l3136:	
;adc.c: 40: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)
	line	42
	
l1737:	
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
	goto	u991
	addwf	(ADC_Sample@adsum+1),f
u991:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u992
	addwf	(ADC_Sample@adsum+2),f
u992:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u993
	addwf	(ADC_Sample@adsum+3),f
u993:

	line	43
	
l3138:	
;adc.c: 43: if(++adtimes >= 10)
	movlw	low(0Ah)
	incf	(ADC_Sample@adtimes),f
	subwf	((ADC_Sample@adtimes)),w
	skipc
	goto	u1001
	goto	u1000
u1001:
	goto	l1734
u1000:
	line	45
	
l3140:	
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
	goto	u1015
	goto	u1016
u1015:
	subwf	(ADC_Sample@adsum+1),f
u1016:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1017
	goto	u1018
u1017:
	subwf	(ADC_Sample@adsum+2),f
u1018:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1019
	goto	u1010
u1019:
	subwf	(ADC_Sample@adsum+3),f
u1010:

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
	goto	u1025
	goto	u1026
u1025:
	subwf	(ADC_Sample@adsum+1),f
u1026:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1027
	goto	u1028
u1027:
	subwf	(ADC_Sample@adsum+2),f
u1028:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1029
	goto	u1020
u1029:
	subwf	(ADC_Sample@adsum+3),f
u1020:

	line	48
	
l3142:	
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
u1035:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1030:
	addlw	-1
	skipz
	goto	u1035
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	50
	
l3144:	
;adc.c: 50: adsum = 0;
	clrf	(ADC_Sample@adsum)
	clrf	(ADC_Sample@adsum+1)
	clrf	(ADC_Sample@adsum+2)
	clrf	(ADC_Sample@adsum+3)
	line	51
	
l3146:	
;adc.c: 51: admin = 0;
	clrf	(ADC_Sample@admin)
	clrf	(ADC_Sample@admin+1)
	line	52
	
l3148:	
;adc.c: 52: admax = 0;
	clrf	(ADC_Sample@admax)
	clrf	(ADC_Sample@admax+1)
	line	53
	
l3150:	
;adc.c: 53: adtimes = 0;
	clrf	(ADC_Sample@adtimes)
	line	55
	
l1734:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,4217
	global	_checkUsbStatus

;; *************** function _checkUsbStatus *****************
;; Defined at:
;;		line 34 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	34
global __ptext6
__ptext6:	;psect for function _checkUsbStatus
psect	text6
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	34
	global	__size_of_checkUsbStatus
	__size_of_checkUsbStatus	equ	__end_of_checkUsbStatus-_checkUsbStatus
	
_checkUsbStatus:	
;incstack = 0
	opt	stack 4
; Regs used in _checkUsbStatus: [wreg+status,2+status,0]
	line	36
	
l2870:	
;main.c: 36: if(FAN_STATUS == 1)
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u711
	goto	u710
u711:
	goto	l2874
u710:
	line	38
	
l2872:	
;main.c: 37: {
;main.c: 38: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	39
;main.c: 39: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	40
;main.c: 40: return;
	goto	l1121
	line	42
	
l2874:	
;main.c: 41: }
;main.c: 42: if (((PORTB) >> (2)&1) == 1) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u721
	goto	u720
u721:
	goto	l2872
u720:
	line	43
	
l2876:	
;main.c: 43: if (((PORTB) >> (1)&1) == 1) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u731
	goto	u730
u731:
	goto	l2880
u730:
	line	45
	
l2878:	
;main.c: 45: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	46
;main.c: 46: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	47
;main.c: 47: } else if (countTime == 100) {
	goto	l1121
	
l2880:	
		movlw	100
	xorwf	((_countTime)),w
iorwf	((_countTime+1)),w
	btfss	status,2
	goto	u741
	goto	u740
u741:
	goto	l1121
u740:
	line	49
	
l2882:	
;main.c: 49: PORTA^=(1<<0);
	movlw	low(01h)
	xorwf	(5),f	;volatile
	line	50
	
l2884:	
;main.c: 50: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	57
	
l1121:	
	return
	opt stack 0
GLOBAL	__end_of_checkUsbStatus
	__end_of_checkUsbStatus:
	signat	_checkUsbStatus,89
	global	_checkKeys

;; *************** function _checkKeys *****************
;; Defined at:
;;		line 163 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_checkFan
;;		_key_driver
;;		_setFanLevel
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	163
global __ptext7
__ptext7:	;psect for function _checkKeys
psect	text7
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	163
	global	__size_of_checkKeys
	__size_of_checkKeys	equ	__end_of_checkKeys-_checkKeys
	
_checkKeys:	
;incstack = 0
	opt	stack 1
; Regs used in _checkKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	164
	
l3152:	
;main.c: 164: if (key_driver(&key1) == 1) {
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_key_driver
	xorlw	01h
	skipz
	goto	u1041
	goto	u1040
u1041:
	goto	l3166
u1040:
	line	167
	
l3154:	
;main.c: 167: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1051
	goto	u1050
u1051:
	goto	l1154
u1050:
	line	169
	
l3156:	
;main.c: 169: setFanLevel(1);
	movlw	low(01h)
	fcall	_setFanLevel
	line	171
;main.c: 171: } else {
	goto	l1156
	
l1154:	
	line	172
;main.c: 172: FAN_STATUS = 1;
	clrf	(_FAN_STATUS)
	incf	(_FAN_STATUS),f
	line	173
	
l3158:	
;main.c: 173: setFanLevel(0);
	movlw	low(0)
	fcall	_setFanLevel
	line	174
	
l3160:	
;main.c: 174: checkFan();
	fcall	_checkFan
	goto	l1156
	line	177
	
l3166:	
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1061
	goto	u1060
u1061:
	goto	l1156
u1060:
	goto	l3160
	line	182
	
l1156:	
	return
	opt stack 0
GLOBAL	__end_of_checkKeys
	__end_of_checkKeys:
	signat	_checkKeys,89
	global	_setFanLevel

;; *************** function _setFanLevel *****************
;; Defined at:
;;		line 73 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
;;		On entry : B00/0
;;		On exit  : 200/0
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
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	73
global __ptext8
__ptext8:	;psect for function _setFanLevel
psect	text8
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
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
	
l3084:	
;main.c: 74: if(level == 0)
	movf	((setFanLevel@level)),w
	btfss	status,2
	goto	u901
	goto	u900
u901:
	goto	l3088
u900:
	line	76
	
l3086:	
;main.c: 75: {
;main.c: 76: currentLevel = 3;
	movlw	low(03h)
	movwf	(_currentLevel)
	line	78
	
l3088:	
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
	
l3090:	
;main.c: 79: char tempLevel = currentLevel + level;
	movf	(setFanLevel@level),w
	addwf	(_currentLevel),w
	movwf	(setFanLevel@tempLevel)
	line	80
	
l3092:	
;main.c: 80: if (tempLevel > 4) {
	movlw	low(05h)
	subwf	(setFanLevel@tempLevel),w
	skipc
	goto	u911
	goto	u910
u911:
	goto	l3096
u910:
	line	81
	
l3094:	
;main.c: 81: tempLevel = 1;
	clrf	(setFanLevel@tempLevel)
	incf	(setFanLevel@tempLevel),f
	line	85
	
l3096:	
;main.c: 82: }
;main.c: 85: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u921
	goto	u920
u921:
	goto	l1141
u920:
	line	86
	
l3098:	
;main.c: 86: currentLevel = tempLevel;
	movf	(setFanLevel@tempLevel),w
	movwf	(_currentLevel)
	line	87
;main.c: 87: switch(currentLevel)
	goto	l3110
	line	90
	
l3100:	
;main.c: 90: closeFan();
	fcall	_closeFan
	line	91
;main.c: 91: break;
	goto	l1141
	line	93
	
l3102:	
;main.c: 93: CCPR1L = 2;
	movlw	low(02h)
	movwf	(21)	;volatile
	line	94
;main.c: 94: break;
	goto	l1141
	line	96
	
l3104:	
;main.c: 96: CCPR1L = 3;
	movlw	low(03h)
	movwf	(21)	;volatile
	line	97
;main.c: 97: break;
	goto	l1141
	line	99
	
l3106:	
;main.c: 99: CCPR1L = 5;
	movlw	low(05h)
	movwf	(21)	;volatile
	line	100
;main.c: 100: break;
	goto	l1141
	line	87
	
l3110:	
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
	goto	l3100
	xorlw	2^1	; case 2
	skipnz
	goto	l3102
	xorlw	3^2	; case 3
	skipnz
	goto	l3104
	xorlw	4^3	; case 4
	skipnz
	goto	l3106
	goto	l1141
	opt asmopt_pop

	line	107
	
l1141:	
	return
	opt stack 0
GLOBAL	__end_of_setFanLevel
	__end_of_setFanLevel:
	signat	_setFanLevel,4217
	global	_closeFan

;; *************** function _closeFan *****************
;; Defined at:
;;		line 110 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Init_PWM
;; This function is called by:
;;		_setFanLevel
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	110
global __ptext9
__ptext9:	;psect for function _closeFan
psect	text9
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	110
	global	__size_of_closeFan
	__size_of_closeFan	equ	__end_of_closeFan-_closeFan
	
_closeFan:	
;incstack = 0
	opt	stack 1
; Regs used in _closeFan: [wreg+status,2+status,0+pclath+cstack]
	line	111
	
l2610:	
;main.c: 111: Init_PWM();
	fcall	_Init_PWM
	line	112
	
l2612:	
;main.c: 112: currentLevel = 2;
	movlw	low(02h)
	movwf	(_currentLevel)
	line	113
	
l2614:	
;main.c: 113: PORTA|=(1<<0);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(0/8),(0)&7	;volatile
	line	115
	
l2616:	
;main.c: 116: fan_check_time = 0;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(2/8),(2)&7	;volatile
	line	117
	
l2618:	
;main.c: 117: FAN_STATUS = 0;
	clrf	(_FAN_STATUS)
	line	119
	
l1144:	
	return
	opt stack 0
GLOBAL	__end_of_closeFan
	__end_of_closeFan:
	signat	_closeFan,89
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
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
global __ptext10
__ptext10:	;psect for function ___awdiv
psect	text10
	file	"E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l3040:	
	clrf	(___awdiv@sign)
	line	15
	
l3042:	
	btfss	(___awdiv@divisor+1),7
	goto	u831
	goto	u830
u831:
	goto	l3048
u830:
	line	16
	
l3044:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l3046:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l3048:	
	btfss	(___awdiv@dividend+1),7
	goto	u841
	goto	u840
u841:
	goto	l3054
u840:
	line	20
	
l3050:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l3052:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l3054:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l3056:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u851
	goto	u850
u851:
	goto	l3076
u850:
	line	25
	
l3058:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l3062
	line	27
	
l3060:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l3062:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u861
	goto	u860
u861:
	goto	l3060
u860:
	line	31
	
l3064:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l3066:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u875
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u875:
	skipc
	goto	u871
	goto	u870
u871:
	goto	l3072
u870:
	line	33
	
l3068:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l3070:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l3072:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l3074:	
	decfsz	(___awdiv@counter),f
	goto	u881
	goto	u880
u881:
	goto	l3064
u880:
	line	39
	
l3076:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u891
	goto	u890
u891:
	goto	l3080
u890:
	line	40
	
l3078:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l3080:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l1928:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_key_driver

;; *************** function _key_driver *****************
;; Defined at:
;;		line 9 in file "E:\project\project0508\scm\n9_fan_no_led\scankey.c"
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
	line	9
global __ptext11
__ptext11:	;psect for function _key_driver
psect	text11
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
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
	
l2724:	
;scankey.c: 12: unsigned char key_return = 0;
	clrf	(key_driver@key_return)
	line	13
	
l2726:	
;scankey.c: 13: unsigned char key_read = key->key_input;
	movf	(key_driver@key),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(key_driver@key_read)
	line	15
;scankey.c: 15: switch (key->key_state_buffer1) {
	goto	l2758
	line	17
	
l2728:	
;scankey.c: 17: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u531
	goto	u530
u531:
	goto	l2760
u530:
	line	18
	
l2730:	
;scankey.c: 18: key->key_state_buffer1 = 1;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	incf	indf,f
	goto	l2760
	line	25
	
l2732:	
;scankey.c: 25: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u541
	goto	u540
u541:
	goto	l2738
u540:
	line	26
	
l2734:	
;scankey.c: 26: key->key_timer_cnt1 = 0;
	movf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	27
	
l2736:	
;scankey.c: 27: key->key_state_buffer1 = 2;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(02h)
	movwf	indf
	line	31
;scankey.c: 31: } else {
	goto	l2760
	line	32
	
l2738:	
;scankey.c: 32: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l2760
	line	39
	
l2740:	
;scankey.c: 39: if (key_read == 1) {
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u551
	goto	u550
u551:
	goto	l2746
u550:
	line	40
	
l2742:	
;scankey.c: 40: key_return = 1;
	clrf	(key_driver@key_return)
	incf	(key_driver@key_return),f
	line	41
	
l2744:	
;scankey.c: 41: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	42
;scankey.c: 42: } else if (++(key->key_timer_cnt1) >= 100)
	goto	l2760
	
l2746:	
	movf	(key_driver@key),w
	movwf	fsr0
	incf	indf,f
	movlw	low(064h)
	subwf	(indf),w
	skipc
	goto	u561
	goto	u560
u561:
	goto	l2760
u560:
	line	44
	
l2748:	
;scankey.c: 43: {
;scankey.c: 44: key_return = 3;
	movlw	low(03h)
	movwf	(key_driver@key_return)
	line	45
	
l2750:	
;scankey.c: 45: key->key_state_buffer1 = 3;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(03h)
	movwf	indf
	goto	l2760
	line	51
	
l2752:	
;scankey.c: 51: if (key_read == 1)
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u571
	goto	u570
u571:
	goto	l2760
u570:
	line	53
	
l2754:	
;scankey.c: 52: {
;scankey.c: 53: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l2760
	line	15
	
l2758:	
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
goto l2760
movlw high(S3232)
movwf pclath
	movlw low(S3232)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S3232:
	ljmp	l2728
	ljmp	l2732
	ljmp	l2740
	ljmp	l2752
psect	text11

	line	58
	
l2760:	
;scankey.c: 58: return key_return;
	movf	(key_driver@key_return),w
	line	59
	
l1777:	
	return
	opt stack 0
GLOBAL	__end_of_key_driver
	__end_of_key_driver:
	signat	_key_driver,4217
	global	_checkFan

;; *************** function _checkFan *****************
;; Defined at:
;;		line 123 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 200/0
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
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	123
global __ptext12
__ptext12:	;psect for function _checkFan
psect	text12
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	123
	global	__size_of_checkFan
	__size_of_checkFan	equ	__end_of_checkFan-_checkFan
	
_checkFan:	
;incstack = 0
	opt	stack 3
; Regs used in _checkFan: [wreg]
	line	124
	
l2718:	
;main.c: 124: TRISA&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	125
;main.c: 125: PORTA&=~(1<<1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(1/8),(1)&7	;volatile
	line	127
;main.c: 127: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	128
;main.c: 128: PORTA|=(1<<2);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(2/8),(2)&7	;volatile
	line	129
	
l2720:	
;main.c: 129: T2CON = 0X04;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	149
	
l1147:	
	return
	opt stack 0
GLOBAL	__end_of_checkFan
	__end_of_checkFan:
	signat	_checkFan,89
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 238 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	238
global __ptext13
__ptext13:	;psect for function _Sleep_Mode
psect	text13
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	238
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2]
	line	239
	
l2910:	
;main.c: 239: INTCON = 0;
	clrf	(11)	;volatile
	line	241
;main.c: 241: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	243
;main.c: 243: TRISA = 0B00000000;
	clrf	(133)^080h	;volatile
	line	244
;main.c: 244: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	245
;main.c: 245: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(398)^0180h	;volatile
	line	247
	
l2912:	
;main.c: 247: TRISB = 0B00100000;
	movlw	low(020h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	248
	
l2914:	
;main.c: 248: PORTB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	250
	
l2916:	
;main.c: 250: PORTB = 0;
	clrf	(6)	;volatile
	line	251
	
l2918:	
;main.c: 251: WPUB = 0B00100000;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	253
	
l2920:	
;main.c: 253: IOCB = 0B00100000;
	movlw	low(020h)
	movwf	(150)^080h	;volatile
	line	254
	
l2922:	
;main.c: 254: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	255
	
l2924:	
;main.c: 255: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	257
	
l2926:	
;main.c: 257: ADCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(31)	;volatile
	line	259
;main.c: 259: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	261
;main.c: 261: PORTB;
	bcf	status, 5	;RP0=0, select bank0
	movf	(6),w	;volatile
	line	263
# 263 "E:\project\project0508\scm\n9_fan_no_led\main.c"
clrwdt ;# 
	line	265
# 265 "E:\project\project0508\scm\n9_fan_no_led\main.c"
sleep ;# 
	line	267
# 267 "E:\project\project0508\scm\n9_fan_no_led\main.c"
nop ;# 
psect	text13
	line	272
	
l1175:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_Config

;; *************** function _Init_Config *****************
;; Defined at:
;;		line 215 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	215
global __ptext14
__ptext14:	;psect for function _Init_Config
psect	text14
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	215
	global	__size_of_Init_Config
	__size_of_Init_Config	equ	__end_of_Init_Config-_Init_Config
	
_Init_Config:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	217
	
l2928:	
;main.c: 217: Init_System();
	fcall	_Init_System
	line	218
;main.c: 218: Init_GPIO();
	fcall	_Init_GPIO
	line	219
;main.c: 219: Init_Interupt();
	fcall	_Init_Interupt
	line	220
;main.c: 220: Init_PWM();
	fcall	_Init_PWM
	line	222
	
l2930:	
;main.c: 222: IOCB = 0x04;
	movlw	low(04h)
	movwf	(150)^080h	;volatile
	line	223
	
l2932:	
;main.c: 223: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	224
	
l2934:	
;main.c: 224: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	227
	
l2936:	
;main.c: 227: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	229
	
l2938:	
;main.c: 229: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	232
	
l2940:	
;main.c: 232: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	233
	
l2942:	
;main.c: 233: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	234
	
l2944:	
;main.c: 234: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	235
	
l1172:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Config
	__end_of_Init_Config:
	signat	_Init_Config,89
	global	_resetKey

;; *************** function _resetKey *****************
;; Defined at:
;;		line 100 in file "E:\project\project0508\scm\n9_fan_no_led\scankey.c"
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
	line	100
global __ptext15
__ptext15:	;psect for function _resetKey
psect	text15
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
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
	
l2770:	
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
	
l1792:	
	return
	opt stack 0
GLOBAL	__end_of_resetKey
	__end_of_resetKey:
	signat	_resetKey,4217
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 3 in file "E:\project\project0508\scm\n9_fan_no_led\init.c"
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	3
global __ptext16
__ptext16:	;psect for function _Init_System
psect	text16
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	3
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_System: [wreg+status,2]
	line	4
	
l2664:	
# 4 "E:\project\project0508\scm\n9_fan_no_led\init.c"
nop ;# 
	line	5
# 5 "E:\project\project0508\scm\n9_fan_no_led\init.c"
clrwdt ;# 
psect	text16
	line	6
	
l2666:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
l2668:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
l2670:	
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
;;		line 59 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	59
global __ptext17
__ptext17:	;psect for function _Init_PWM
psect	text17
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	59
	global	__size_of_Init_PWM
	__size_of_Init_PWM	equ	__end_of_Init_PWM-_Init_PWM
	
_Init_PWM:	
;incstack = 0
	opt	stack 1
; Regs used in _Init_PWM: [wreg+status,2]
	line	60
	
l2600:	
;main.c: 60: CCP1CON = 0x0F;
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	61
	
l2602:	
;main.c: 61: T2CON = 0;
	clrf	(18)	;volatile
	line	62
	
l2604:	
;main.c: 62: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	64
;main.c: 64: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	65
	
l2606:	
;main.c: 65: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	66
;main.c: 66: T2CON = 0;
	clrf	(18)	;volatile
	line	68
	
l2608:	
;main.c: 68: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	70
	
l1129:	
	return
	opt stack 0
GLOBAL	__end_of_Init_PWM
	__end_of_Init_PWM:
	signat	_Init_PWM,89
	global	_Init_Interupt

;; *************** function _Init_Interupt *****************
;; Defined at:
;;		line 27 in file "E:\project\project0508\scm\n9_fan_no_led\init.c"
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	27
global __ptext18
__ptext18:	;psect for function _Init_Interupt
psect	text18
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	27
	global	__size_of_Init_Interupt
	__size_of_Init_Interupt	equ	__end_of_Init_Interupt-_Init_Interupt
	
_Init_Interupt:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Interupt: [wreg+status,2]
	line	28
	
l2686:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
l2688:	
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
;;		line 13 in file "E:\project\project0508\scm\n9_fan_no_led\init.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext19
__ptext19:	;psect for function _Init_GPIO
psect	text19
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	13
	global	__size_of_Init_GPIO
	__size_of_Init_GPIO	equ	__end_of_Init_GPIO-_Init_GPIO
	
_Init_GPIO:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_GPIO: [wreg+status,2]
	line	14
	
l2672:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
l2674:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
l2676:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
l2678:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
l2680:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
l2682:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
l2684:	
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
;;		line 282 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	282
global __ptext20
__ptext20:	;psect for function _Timer0_Isr
psect	text20
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	282
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
psect	text20
	line	283
	
i1l2996:	
;main.c: 283: if (T0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u81_21
	goto	u81_20
u81_21:
	goto	i1l3004
u81_20:
	line	285
	
i1l2998:	
;main.c: 285: TMR0 += 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	288
	
i1l3000:	
;main.c: 288: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	289
	
i1l3002:	
;main.c: 289: time0Flag = 1;
	clrf	(_time0Flag)
	incf	(_time0Flag),f
	line	293
	
i1l3004:	
;main.c: 291: }
;main.c: 293: if (RBIF) {
	btfss	(88/8),(88)&7	;volatile
	goto	u82_21
	goto	u82_20
u82_21:
	goto	i1l1182
u82_20:
	line	294
	
i1l3006:	
;main.c: 294: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	295
	
i1l3008:	
;main.c: 295: Init_Config();
	fcall	i1_Init_Config
	line	297
	
i1l1182:	
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
;;		line 215 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	215
global __ptext21
__ptext21:	;psect for function i1_Init_Config
psect	text21
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	215
	global	__size_ofi1_Init_Config
	__size_ofi1_Init_Config	equ	__end_ofi1_Init_Config-i1_Init_Config
	
i1_Init_Config:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	217
	
i1l2950:	
;main.c: 217: Init_System();
	fcall	i1_Init_System
	line	218
;main.c: 218: Init_GPIO();
	fcall	i1_Init_GPIO
	line	219
;main.c: 219: Init_Interupt();
	fcall	i1_Init_Interupt
	line	220
;main.c: 220: Init_PWM();
	fcall	i1_Init_PWM
	line	222
	
i1l2952:	
;main.c: 222: IOCB = 0x04;
	movlw	low(04h)
	movwf	(150)^080h	;volatile
	line	223
	
i1l2954:	
;main.c: 223: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	224
	
i1l2956:	
;main.c: 224: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	227
	
i1l2958:	
;main.c: 227: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	229
	
i1l2960:	
;main.c: 229: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	232
	
i1l2962:	
;main.c: 232: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	233
	
i1l2964:	
;main.c: 233: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	234
	
i1l2966:	
;main.c: 234: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	235
	
i1l1172:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_Config
	__end_ofi1_Init_Config:
	signat	i1_Init_Config,89
	global	i1_resetKey

;; *************** function i1_resetKey *****************
;; Defined at:
;;		line 100 in file "E:\project\project0508\scm\n9_fan_no_led\scankey.c"
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
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
	line	100
global __ptext22
__ptext22:	;psect for function i1_resetKey
psect	text22
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
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
	
i1l2868:	
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
	
i1l1792:	
	return
	opt stack 0
GLOBAL	__end_ofi1_resetKey
	__end_ofi1_resetKey:
	signat	i1_resetKey,89
	global	i1_Init_System

;; *************** function i1_Init_System *****************
;; Defined at:
;;		line 3 in file "E:\project\project0508\scm\n9_fan_no_led\init.c"
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	3
global __ptext23
__ptext23:	;psect for function i1_Init_System
psect	text23
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	3
	global	__size_ofi1_Init_System
	__size_ofi1_Init_System	equ	__end_ofi1_Init_System-i1_Init_System
	
i1_Init_System:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_System: [wreg+status,2]
	line	4
	
i1l2832:	
# 4 "E:\project\project0508\scm\n9_fan_no_led\init.c"
nop ;# 
	line	5
# 5 "E:\project\project0508\scm\n9_fan_no_led\init.c"
clrwdt ;# 
psect	text23
	line	6
	
i1l2834:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
i1l2836:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
i1l2838:	
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
;;		line 59 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	59
global __ptext24
__ptext24:	;psect for function i1_Init_PWM
psect	text24
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	59
	global	__size_ofi1_Init_PWM
	__size_ofi1_Init_PWM	equ	__end_ofi1_Init_PWM-i1_Init_PWM
	
i1_Init_PWM:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_PWM: [wreg+status,2]
	line	60
	
i1l2858:	
;main.c: 60: CCP1CON = 0x0F;
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	61
	
i1l2860:	
;main.c: 61: T2CON = 0;
	clrf	(18)	;volatile
	line	62
	
i1l2862:	
;main.c: 62: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	64
;main.c: 64: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	65
	
i1l2864:	
;main.c: 65: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	66
;main.c: 66: T2CON = 0;
	clrf	(18)	;volatile
	line	68
	
i1l2866:	
;main.c: 68: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	70
	
i1l1129:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_PWM
	__end_ofi1_Init_PWM:
	signat	i1_Init_PWM,89
	global	i1_Init_Interupt

;; *************** function i1_Init_Interupt *****************
;; Defined at:
;;		line 27 in file "E:\project\project0508\scm\n9_fan_no_led\init.c"
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
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	27
global __ptext25
__ptext25:	;psect for function i1_Init_Interupt
psect	text25
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	27
	global	__size_ofi1_Init_Interupt
	__size_ofi1_Init_Interupt	equ	__end_ofi1_Init_Interupt-i1_Init_Interupt
	
i1_Init_Interupt:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_Interupt: [wreg+status,2]
	line	28
	
i1l2854:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
i1l2856:	
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
;;		line 13 in file "E:\project\project0508\scm\n9_fan_no_led\init.c"
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
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext26
__ptext26:	;psect for function i1_Init_GPIO
psect	text26
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	13
	global	__size_ofi1_Init_GPIO
	__size_ofi1_Init_GPIO	equ	__end_ofi1_Init_GPIO-i1_Init_GPIO
	
i1_Init_GPIO:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_GPIO: [wreg+status,2]
	line	14
	
i1l2840:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
i1l2842:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
i1l2844:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
i1l2846:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
i1l2848:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
i1l2850:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
i1l2852:	
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
