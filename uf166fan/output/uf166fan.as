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
	FNCALL	_main,_checkKeys
	FNCALL	_main,_checkUsbStatus
	FNCALL	_main,_scanKeys
	FNCALL	_scanKeys,_sacnKeyInput
	FNCALL	_checkKeys,_checkFan
	FNCALL	_checkKeys,_closeFan
	FNCALL	_checkKeys,_key_driver
	FNCALL	_checkKeys,_setFanLevel
	FNCALL	_checkFan,_closeFan
	FNCALL	_checkFan,_setFanLevel
	FNCALL	_setFanLevel,___awdiv
	FNCALL	_setFanLevel,_setLedOn
	FNCALL	_closeFan,_Init_PWM
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
	file	"E:\project\scm\uf166fan\main.c"
	line	24

;initializer for _FAN_STATUS
	retlw	02h
	line	22

;initializer for _currentLevel
	retlw	03h
	global	_fan_check_time
	global	_count10Ms
	global	_countTime
	global	_time0Flag
	global	_key3
	global	_key2
	global	_key1
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
	global	_TMR2IF
_TMR2IF	set	97
	global	_T0IF
_T0IF	set	90
	global	_RBIF
_RBIF	set	88
	global	_TO
_TO	set	28
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
_fan_check_time:
       ds      2

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"E:\project\scm\uf166fan\main.c"
	line	24
_FAN_STATUS:
       ds      1

psect	dataCOMMON
	file	"E:\project\scm\uf166fan\main.c"
	line	22
_currentLevel:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_count10Ms:
       ds      2

_countTime:
       ds      2

_time0Flag:
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
	movlw	low((__pbssBANK0)+01Ah)
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
?_setLedOn:	; 1 bytes @ 0x0
?_sacnKeyInput:	; 1 bytes @ 0x0
?_key_driver:	; 1 bytes @ 0x0
?_Init_Config:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Init_GPIO:	; 1 bytes @ 0x0
?_Init_Interupt:	; 1 bytes @ 0x0
?_resetKey:	; 1 bytes @ 0x0
?_checkUsbStatus:	; 1 bytes @ 0x0
?_Init_PWM:	; 1 bytes @ 0x0
?_setFanLevel:	; 1 bytes @ 0x0
?_closeFan:	; 1 bytes @ 0x0
?_checkFan:	; 1 bytes @ 0x0
?_scanKeys:	; 1 bytes @ 0x0
?_checkKeys:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
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
??_sacnKeyInput:	; 1 bytes @ 0x4
??_key_driver:	; 1 bytes @ 0x4
??_Init_System:	; 1 bytes @ 0x4
??_Init_GPIO:	; 1 bytes @ 0x4
??_Init_Interupt:	; 1 bytes @ 0x4
??_resetKey:	; 1 bytes @ 0x4
??_checkUsbStatus:	; 1 bytes @ 0x4
??_Init_PWM:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
	global	setLedOn@ledIndex
setLedOn@ledIndex:	; 1 bytes @ 0x4
	global	resetKey@key
resetKey@key:	; 1 bytes @ 0x4
	ds	1
??_Init_Config:	; 1 bytes @ 0x5
??_setFanLevel:	; 1 bytes @ 0x5
??_closeFan:	; 1 bytes @ 0x5
??_checkFan:	; 1 bytes @ 0x5
	ds	1
??_scanKeys:	; 1 bytes @ 0x6
??_checkKeys:	; 1 bytes @ 0x6
??_main:	; 1 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	sacnKeyInput@key
sacnKeyInput@key:	; 1 bytes @ 0x0
	global	key_driver@key_return
key_driver@key_return:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	key_driver@key_read
key_driver@key_read:	; 1 bytes @ 0x1
	ds	1
	global	key_driver@key
key_driver@key:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
	global	setFanLevel@level
setFanLevel@level:	; 1 bytes @ 0x8
	ds	1
	global	setFanLevel@tempLevel
setFanLevel@tempLevel:	; 1 bytes @ 0x9
	ds	1
	global	checkKeys@key2Status
checkKeys@key2Status:	; 1 bytes @ 0xA
	ds	1
	global	checkKeys@key3Status
checkKeys@key3Status:	; 1 bytes @ 0xB
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        2
;!    BSS         28
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80     12      38
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
;!    _scanKeys->_sacnKeyInput
;!    _checkKeys->_checkFan
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
;!    _checkKeys->_setFanLevel
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    2712
;!                        _Init_Config
;!                          _checkKeys
;!                     _checkUsbStatus
;!                           _scanKeys
;! ---------------------------------------------------------------------------------
;! (1) _scanKeys                                             0     0      0     214
;!                       _sacnKeyInput
;! ---------------------------------------------------------------------------------
;! (2) _sacnKeyInput                                         3     3      0     214
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _checkUsbStatus                                       1     1      0       0
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _checkKeys                                            2     2      0    2329
;!                                             10 BANK0      2     2      0
;!                           _checkFan
;!                           _closeFan
;!                         _key_driver
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (2) _key_driver                                           3     3      0     597
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _checkFan                                             1     1      0     832
;!                                              5 COMMON     1     1      0
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
;! (2) _closeFan                                             0     0      0      31
;!                           _Init_PWM
;!                           _setLedOn
;! ---------------------------------------------------------------------------------
;! (3) _setLedOn                                             1     1      0      31
;!                                              4 COMMON     1     1      0
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
;!   _checkKeys
;!     _checkFan
;!       _closeFan
;!         _Init_PWM
;!         _setLedOn
;!       _setFanLevel
;!         ___awdiv
;!         _setLedOn
;!     _closeFan
;!       _Init_PWM
;!       _setLedOn
;!     _key_driver
;!     _setFanLevel
;!       ___awdiv
;!       _setLedOn
;!   _checkUsbStatus
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
;!BANK0               50      C      26       5       47.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      30       8        0.0%
;!ABS                  0      0      30       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 243 in file "E:\project\scm\uf166fan\main.c"
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
;;		_checkKeys
;;		_checkUsbStatus
;;		_scanKeys
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\project\scm\uf166fan\main.c"
	line	243
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\project\scm\uf166fan\main.c"
	line	243
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	244
	
l2692:	
;main.c: 244: Init_Config();
	fcall	_Init_Config
	line	247
	
l2694:	
;main.c: 247: if (time0Flag) {
	bcf	status, 5	;RP0=0, select bank0
	movf	((_time0Flag)),w
	btfsc	status,2
	goto	u951
	goto	u950
u951:
	goto	l2704
u950:
	line	248
	
l2696:	
# 248 "E:\project\scm\uf166fan\main.c"
clrwdt ;# 
psect	maintext
	line	249
	
l2698:	
;main.c: 249: time0Flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_time0Flag)
	line	250
	
l2700:	
;main.c: 250: scanKeys();
	fcall	_scanKeys
	line	251
	
l2702:	
;main.c: 251: count10Ms++;
	incf	(_count10Ms),f
	skipnz
	incf	(_count10Ms+1),f
	line	255
	
l2704:	
;main.c: 252: }
;main.c: 255: if (count10Ms == 100) {
		movlw	100
	xorwf	((_count10Ms)),w
iorwf	((_count10Ms+1)),w
	btfss	status,2
	goto	u961
	goto	u960
u961:
	goto	l2712
u960:
	line	256
	
l2706:	
;main.c: 256: checkKeys();
	fcall	_checkKeys
	line	257
	
l2708:	
;main.c: 257: count10Ms = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_count10Ms)
	clrf	(_count10Ms+1)
	line	259
	
l2710:	
;main.c: 259: checkUsbStatus();
	fcall	_checkUsbStatus
	line	262
	
l2712:	
;main.c: 260: }
;main.c: 262: if (countTime == 1000) {
		movlw	232
	xorwf	((_countTime)),w
	movlw	3
	skipnz
	xorwf	((_countTime+1)),w
	btfss	status,2
	goto	u971
	goto	u970
u971:
	goto	l2694
u970:
	line	263
	
l2714:	
;main.c: 263: countTime = 0;
	clrf	(_countTime)
	clrf	(_countTime+1)
	goto	l2694
	global	start
	ljmp	start
	opt stack 0
	line	268
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_scanKeys

;; *************** function _scanKeys *****************
;; Defined at:
;;		line 201 in file "E:\project\scm\uf166fan\main.c"
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
	line	201
global __ptext1
__ptext1:	;psect for function _scanKeys
psect	text1
	file	"E:\project\scm\uf166fan\main.c"
	line	201
	global	__size_of_scanKeys
	__size_of_scanKeys	equ	__end_of_scanKeys-_scanKeys
	
_scanKeys:	
;incstack = 0
	opt	stack 3
; Regs used in _scanKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	202
	
l2650:	
;main.c: 202: key1.key_addr_result = key2.key_addr_result = key3.key_addr_result = PORTB;
	movf	(6),w	;volatile
	movwf	0+(_key3)+05h
	movwf	0+(_key2)+05h
	movwf	0+(_key1)+05h
	line	203
	
l2652:	
;main.c: 203: sacnKeyInput(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	204
	
l2654:	
;main.c: 204: sacnKeyInput(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	205
	
l2656:	
;main.c: 205: sacnKeyInput(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	206
	
l2658:	
;main.c: 206: countTime++;
	incf	(_countTime),f
	skipnz
	incf	(_countTime+1),f
	line	208
	
l617:	
	return
	opt stack 0
GLOBAL	__end_of_scanKeys
	__end_of_scanKeys:
	signat	_scanKeys,89
	global	_sacnKeyInput

;; *************** function _sacnKeyInput *****************
;; Defined at:
;;		line 3 in file "E:\project\scm\uf166fan\scankey.c"
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
	file	"E:\project\scm\uf166fan\scankey.c"
	line	3
global __ptext2
__ptext2:	;psect for function _sacnKeyInput
psect	text2
	file	"E:\project\scm\uf166fan\scankey.c"
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
	
l2602:	
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
	goto	u844
u845:
	clrc
	rrf	(??_sacnKeyInput+0)+0,f
u844:
	addlw	-1
	skipz
	goto	u845
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
	
l654:	
	return
	opt stack 0
GLOBAL	__end_of_sacnKeyInput
	__end_of_sacnKeyInput:
	signat	_sacnKeyInput,4217
	global	_checkUsbStatus

;; *************** function _checkUsbStatus *****************
;; Defined at:
;;		line 36 in file "E:\project\scm\uf166fan\main.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\main.c"
	line	36
global __ptext3
__ptext3:	;psect for function _checkUsbStatus
psect	text3
	file	"E:\project\scm\uf166fan\main.c"
	line	36
	global	__size_of_checkUsbStatus
	__size_of_checkUsbStatus	equ	__end_of_checkUsbStatus-_checkUsbStatus
	
_checkUsbStatus:	
;incstack = 0
	opt	stack 4
; Regs used in _checkUsbStatus: [wreg+status,2+status,0]
	line	37
	
l2286:	
;main.c: 37: if (((PORTB) >> (2)&1) == 1) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u561
	goto	u560
u561:
	goto	l573
u560:
	line	38
	
l2288:	
;main.c: 38: if (((PORTB) >> (1)&1) == 1) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u571
	goto	u570
u571:
	goto	l2292
u570:
	line	40
	
l2290:	
;main.c: 40: PORTA&=~(1<<0);
	bcf	(5)+(0/8),(0)&7	;volatile
	line	41
;main.c: 41: } else if (countTime == 1000) {
	goto	l578
	
l2292:	
		movlw	232
	xorwf	((_countTime)),w
	movlw	3
	skipnz
	xorwf	((_countTime+1)),w
	btfss	status,2
	goto	u581
	goto	u580
u581:
	goto	l578
u580:
	line	43
	
l2294:	
;main.c: 43: PORTA^=(1<<0);
	movlw	low(01h)
	xorwf	(5),f	;volatile
	goto	l578
	line	45
	
l573:	
	line	47
;main.c: 47: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	49
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of_checkUsbStatus
	__end_of_checkUsbStatus:
	signat	_checkUsbStatus,89
	global	_checkKeys

;; *************** function _checkKeys *****************
;; Defined at:
;;		line 211 in file "E:\project\scm\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key3Status      1   11[BANK0 ] unsigned char 
;;  key2Status      1   10[BANK0 ] unsigned char 
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	211
global __ptext4
__ptext4:	;psect for function _checkKeys
psect	text4
	file	"E:\project\scm\uf166fan\main.c"
	line	211
	global	__size_of_checkKeys
	__size_of_checkKeys	equ	__end_of_checkKeys-_checkKeys
	
_checkKeys:	
;incstack = 0
	opt	stack 1
; Regs used in _checkKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	212
	
l2660:	
;main.c: 212: if (key_driver(&key1) == 1) {
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_key_driver
	xorlw	01h
	skipz
	goto	u901
	goto	u900
u901:
	goto	l2674
u900:
	line	215
	
l2662:	
;main.c: 215: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u911
	goto	u910
u911:
	goto	l2666
u910:
	line	217
	
l2664:	
;main.c: 217: closeFan();
	fcall	_closeFan
	line	218
;main.c: 218: } else {
	goto	l623
	line	219
	
l2666:	
;main.c: 219: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	220
	
l2668:	
;main.c: 220: checkFan();
	fcall	_checkFan
	goto	l623
	line	223
	
l2674:	
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u921
	goto	u920
u921:
	goto	l624
u920:
	line	224
	
l2676:	
;main.c: 224: checkFan();
	fcall	_checkFan
	line	227
	
l624:	
;main.c: 225: }
;main.c: 227: unsigned char key2Status = key_driver(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_key_driver
	movwf	(checkKeys@key2Status)
	line	228
	
l2678:	
;main.c: 228: if (key2Status == 1) {
		decf	((checkKeys@key2Status)),w
	btfss	status,2
	goto	u931
	goto	u930
u931:
	goto	l2684
u930:
	line	230
	
l2680:	
;main.c: 230: setFanLevel(1);
	movlw	low(01h)
	fcall	_setFanLevel
	goto	l623
	line	233
	
l2684:	
;main.c: 232: }
;main.c: 233: unsigned char key3Status = key_driver(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_key_driver
	movwf	(checkKeys@key3Status)
	line	234
	
l2686:	
;main.c: 234: if (key3Status == 1) {
		decf	((checkKeys@key3Status)),w
	btfss	status,2
	goto	u941
	goto	u940
u941:
	goto	l623
u940:
	line	236
	
l2688:	
;main.c: 236: setFanLevel(-1);
	movlw	low(0FFh)
	fcall	_setFanLevel
	line	240
	
l623:	
	return
	opt stack 0
GLOBAL	__end_of_checkKeys
	__end_of_checkKeys:
	signat	_checkKeys,89
	global	_key_driver

;; *************** function _key_driver *****************
;; Defined at:
;;		line 9 in file "E:\project\scm\uf166fan\scankey.c"
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
;;		On entry : 200/0
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\scankey.c"
	line	9
global __ptext5
__ptext5:	;psect for function _key_driver
psect	text5
	file	"E:\project\scm\uf166fan\scankey.c"
	line	9
	global	__size_of_key_driver
	__size_of_key_driver	equ	__end_of_key_driver-_key_driver
	
_key_driver:	
;incstack = 0
	opt	stack 3
; Regs used in _key_driver: [wreg-fsr0h+status,2+status,0]
;key_driver@key stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(key_driver@key)
	line	12
	
l2604:	
;scankey.c: 12: unsigned char key_return = 0;
	clrf	(key_driver@key_return)
	line	13
	
l2606:	
;scankey.c: 13: unsigned char key_read = key->key_input;
	movf	(key_driver@key),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(key_driver@key_read)
	line	15
;scankey.c: 15: switch (key->key_state_buffer1) {
	goto	l2638
	line	17
	
l2608:	
;scankey.c: 17: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u851
	goto	u850
u851:
	goto	l2640
u850:
	line	18
	
l2610:	
;scankey.c: 18: key->key_state_buffer1 = 1;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	incf	indf,f
	goto	l2640
	line	25
	
l2612:	
;scankey.c: 25: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u861
	goto	u860
u861:
	goto	l2618
u860:
	line	26
	
l2614:	
;scankey.c: 26: key->key_timer_cnt1 = 0;
	movf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	27
	
l2616:	
;scankey.c: 27: key->key_state_buffer1 = 2;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(02h)
	movwf	indf
	line	31
;scankey.c: 31: } else {
	goto	l2640
	line	32
	
l2618:	
;scankey.c: 32: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l2640
	line	39
	
l2620:	
;scankey.c: 39: if (key_read == 1) {
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u871
	goto	u870
u871:
	goto	l2626
u870:
	line	40
	
l2622:	
;scankey.c: 40: key_return = 1;
	clrf	(key_driver@key_return)
	incf	(key_driver@key_return),f
	line	41
	
l2624:	
;scankey.c: 41: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	42
;scankey.c: 42: } else if (++(key->key_timer_cnt1) >= 100)
	goto	l2640
	
l2626:	
	movf	(key_driver@key),w
	movwf	fsr0
	incf	indf,f
	movlw	low(064h)
	subwf	(indf),w
	skipc
	goto	u881
	goto	u880
u881:
	goto	l2640
u880:
	line	44
	
l2628:	
;scankey.c: 43: {
;scankey.c: 44: key_return = 3;
	movlw	low(03h)
	movwf	(key_driver@key_return)
	line	45
	
l2630:	
;scankey.c: 45: key->key_state_buffer1 = 3;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(03h)
	movwf	indf
	goto	l2640
	line	51
	
l2632:	
;scankey.c: 51: if (key_read == 1)
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u891
	goto	u890
u891:
	goto	l2640
u890:
	line	53
	
l2634:	
;scankey.c: 52: {
;scankey.c: 53: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l2640
	line	15
	
l2638:	
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
goto l2640
movlw high(S2766)
movwf pclath
	movlw low(S2766)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S2766:
	ljmp	l2608
	ljmp	l2612
	ljmp	l2620
	ljmp	l2632
psect	text5

	line	58
	
l2640:	
;scankey.c: 58: return key_return;
	movf	(key_driver@key_return),w
	line	59
	
l670:	
	return
	opt stack 0
GLOBAL	__end_of_key_driver
	__end_of_key_driver:
	signat	_key_driver,4217
	global	_checkFan

;; *************** function _checkFan *****************
;; Defined at:
;;		line 120 in file "E:\project\scm\uf166fan\main.c"
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
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          1       0       0
;;      Totals:         1       0       0
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\main.c"
	line	120
global __ptext6
__ptext6:	;psect for function _checkFan
psect	text6
	file	"E:\project\scm\uf166fan\main.c"
	line	120
	global	__size_of_checkFan
	__size_of_checkFan	equ	__end_of_checkFan-_checkFan
	
_checkFan:	
;incstack = 0
	opt	stack 1
; Regs used in _checkFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	121
	
l2580:	
;main.c: 121: TRISA&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	122
;main.c: 122: PORTA|=(1<<1);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(1/8),(1)&7	;volatile
	line	124
;main.c: 124: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	125
;main.c: 125: PORTA|=(1<<2);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(2/8),(2)&7	;volatile
	line	126
	
l2582:	
;main.c: 126: T2CON = 0X04;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	129
	
l2584:	
;main.c: 129: if (((PORTB) >> (6)&1) == 0) {
	movf	(6),w	;volatile
	movwf	(??_checkFan+0)+0
	movlw	06h
u805:
	clrc
	rrf	(??_checkFan+0)+0,f
	addlw	-1
	skipz
	goto	u805
	btfsc	0+(??_checkFan+0)+0,(0)&7
	goto	u811
	goto	u810
u811:
	goto	l2588
u810:
	line	130
	
l2586:	
;main.c: 130: FAN_STATUS = 1;
	clrf	(_FAN_STATUS)
	incf	(_FAN_STATUS),f
	line	131
;main.c: 131: } else {
	goto	l2590
	line	132
	
l2588:	
;main.c: 132: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	135
	
l2590:	
;main.c: 133: }
;main.c: 135: setFanLevel(0);
	movlw	low(0)
	fcall	_setFanLevel
	line	138
	
l2592:	
;main.c: 138: if (FAN_STATUS == 2) {
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u821
	goto	u820
u821:
	goto	l604
u820:
	line	139
	
l2594:	
;main.c: 139: fan_check_time++;
	incf	(_fan_check_time),f
	skipnz
	incf	(_fan_check_time+1),f
	line	140
	
l2596:	
;main.c: 140: if (fan_check_time == 3000) {
		movlw	184
	xorwf	((_fan_check_time)),w
	movlw	11
	skipnz
	xorwf	((_fan_check_time+1)),w
	btfss	status,2
	goto	u831
	goto	u830
u831:
	goto	l604
u830:
	line	141
	
l2598:	
;main.c: 141: closeFan();
	fcall	_closeFan
	line	147
	
l604:	
	return
	opt stack 0
GLOBAL	__end_of_checkFan
	__end_of_checkFan:
	signat	_checkFan,89
	global	_setFanLevel

;; *************** function _setFanLevel *****************
;; Defined at:
;;		line 65 in file "E:\project\scm\uf166fan\main.c"
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
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	65
global __ptext7
__ptext7:	;psect for function _setFanLevel
psect	text7
	file	"E:\project\scm\uf166fan\main.c"
	line	65
	global	__size_of_setFanLevel
	__size_of_setFanLevel	equ	__end_of_setFanLevel-_setFanLevel
	
_setFanLevel:	
;incstack = 0
	opt	stack 2
; Regs used in _setFanLevel: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setFanLevel@level stored from wreg
	movwf	(setFanLevel@level)
	line	66
	
l2532:	
;main.c: 66: if(level == 0)
	movf	((setFanLevel@level)),w
	btfss	status,2
	goto	u761
	goto	u760
u761:
	goto	l2536
u760:
	line	68
	
l2534:	
;main.c: 67: {
;main.c: 68: currentLevel = 3;
	movlw	low(03h)
	movwf	(_currentLevel)
	line	70
	
l2536:	
;main.c: 69: }
;main.c: 70: unsigned int levelWidth = (PR2 + 1) / 4;
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
	line	71
	
l2538:	
;main.c: 71: char tempLevel = currentLevel + level;
	movf	(setFanLevel@level),w
	addwf	(_currentLevel),w
	movwf	(setFanLevel@tempLevel)
	line	72
	
l2540:	
;main.c: 72: if (tempLevel > 4) {
	movlw	low(05h)
	subwf	(setFanLevel@tempLevel),w
	skipc
	goto	u771
	goto	u770
u771:
	goto	l2544
u770:
	line	73
	
l2542:	
;main.c: 73: tempLevel = 4;
	movlw	low(04h)
	movwf	(setFanLevel@tempLevel)
	line	76
	
l2544:	
;main.c: 74: }
;main.c: 76: if (tempLevel < 1) {
	movf	((setFanLevel@tempLevel)),w
	btfss	status,2
	goto	u781
	goto	u780
u781:
	goto	l2548
u780:
	line	77
	
l2546:	
;main.c: 77: tempLevel = 1;
	clrf	(setFanLevel@tempLevel)
	incf	(setFanLevel@tempLevel),f
	line	81
	
l2548:	
;main.c: 78: }
;main.c: 81: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u791
	goto	u790
u791:
	goto	l594
u790:
	line	82
	
l2550:	
;main.c: 82: currentLevel = tempLevel;
	movf	(setFanLevel@tempLevel),w
	movwf	(_currentLevel)
	line	83
;main.c: 83: switch(currentLevel)
	goto	l2562
	line	86
	
l2552:	
;main.c: 86: CCPR1L = 1;
	movlw	low(01h)
	movwf	(21)	;volatile
	line	87
;main.c: 87: break;
	goto	l2564
	line	89
	
l2554:	
;main.c: 89: CCPR1L = 2;
	movlw	low(02h)
	movwf	(21)	;volatile
	line	90
;main.c: 90: break;
	goto	l2564
	line	92
	
l2556:	
;main.c: 92: CCPR1L = 3;
	movlw	low(03h)
	movwf	(21)	;volatile
	line	93
;main.c: 93: break;
	goto	l2564
	line	95
	
l2558:	
;main.c: 95: CCPR1L = 5;
	movlw	low(05h)
	movwf	(21)	;volatile
	line	96
;main.c: 96: break;
	goto	l2564
	line	83
	
l2562:	
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
	goto	l2552
	xorlw	2^1	; case 2
	skipnz
	goto	l2554
	xorlw	3^2	; case 3
	skipnz
	goto	l2556
	xorlw	4^3	; case 4
	skipnz
	goto	l2558
	goto	l2564
	opt asmopt_pop

	line	100
	
l2564:	
;main.c: 100: setLedOn(currentLevel);
	movf	(_currentLevel),w
	fcall	_setLedOn
	line	103
	
l594:	
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
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
global __ptext8
__ptext8:	;psect for function ___awdiv
psect	text8
	file	"E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l2488:	
	clrf	(___awdiv@sign)
	line	15
	
l2490:	
	btfss	(___awdiv@divisor+1),7
	goto	u691
	goto	u690
u691:
	goto	l2496
u690:
	line	16
	
l2492:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l2494:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l2496:	
	btfss	(___awdiv@dividend+1),7
	goto	u701
	goto	u700
u701:
	goto	l2502
u700:
	line	20
	
l2498:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l2500:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l2502:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l2504:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u711
	goto	u710
u711:
	goto	l2524
u710:
	line	25
	
l2506:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l2510
	line	27
	
l2508:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l2510:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u721
	goto	u720
u721:
	goto	l2508
u720:
	line	31
	
l2512:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l2514:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u735
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u735:
	skipc
	goto	u731
	goto	u730
u731:
	goto	l2520
u730:
	line	33
	
l2516:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l2518:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l2520:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l2522:	
	decfsz	(___awdiv@counter),f
	goto	u741
	goto	u740
u741:
	goto	l2512
u740:
	line	39
	
l2524:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u751
	goto	u750
u751:
	goto	l2528
u750:
	line	40
	
l2526:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l2528:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l1366:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_closeFan

;; *************** function _closeFan *****************
;; Defined at:
;;		line 106 in file "E:\project\scm\uf166fan\main.c"
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
;;		_setLedOn
;; This function is called by:
;;		_checkFan
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\main.c"
	line	106
global __ptext9
__ptext9:	;psect for function _closeFan
psect	text9
	file	"E:\project\scm\uf166fan\main.c"
	line	106
	global	__size_of_closeFan
	__size_of_closeFan	equ	__end_of_closeFan-_closeFan
	
_closeFan:	
;incstack = 0
	opt	stack 2
; Regs used in _closeFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	107
	
l2566:	
;main.c: 107: Init_PWM();
	fcall	_Init_PWM
	line	108
	
l2568:	
;main.c: 108: currentLevel = 2;
	movlw	low(02h)
	movwf	(_currentLevel)
	line	109
	
l2570:	
;main.c: 109: setLedOn(5);
	movlw	low(05h)
	fcall	_setLedOn
	line	110
	
l2572:	
;main.c: 110: PORTA|=(1<<0);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(0/8),(0)&7	;volatile
	line	112
	
l2574:	
;main.c: 112: TRISC|=(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(2/8),(2)&7	;volatile
	line	113
	
l2576:	
;main.c: 113: fan_check_time = 0;
	clrf	(_fan_check_time)
	clrf	(_fan_check_time+1)
	line	114
	
l2578:	
;main.c: 114: FAN_STATUS = 0;
	clrf	(_FAN_STATUS)
	line	116
	
l597:	
	return
	opt stack 0
GLOBAL	__end_of_closeFan
	__end_of_closeFan:
	signat	_closeFan,89
	global	_setLedOn

;; *************** function _setLedOn *****************
;; Defined at:
;;		line 151 in file "E:\project\scm\uf166fan\main.c"
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	151
global __ptext10
__ptext10:	;psect for function _setLedOn
psect	text10
	file	"E:\project\scm\uf166fan\main.c"
	line	151
	global	__size_of_setLedOn
	__size_of_setLedOn	equ	__end_of_setLedOn-_setLedOn
	
_setLedOn:	
;incstack = 0
	opt	stack 2
; Regs used in _setLedOn: [wreg-fsr0h+status,2+status,0]
;setLedOn@ledIndex stored from wreg
	movwf	(setLedOn@ledIndex)
	line	152
	
l2478:	
;main.c: 152: switch(ledIndex) {
	goto	l2482
	line	153
;main.c: 153: case 1:
	
l608:	
	line	155
;main.c: 155: TRISC&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	156
;main.c: 156: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	157
;main.c: 157: TRISC&=~(1<<0);
	bcf	(135)^080h+(0/8),(0)&7	;volatile
	line	158
;main.c: 158: PORTA&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	159
;main.c: 159: PORTC|=(1<<0);
	bsf	(7)+(0/8),(0)&7	;volatile
	line	160
;main.c: 160: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	161
;main.c: 161: break;
	goto	l614
	line	162
;main.c: 162: case 2:
	
l610:	
	line	163
;main.c: 163: TRISC&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	164
;main.c: 164: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	165
;main.c: 165: TRISC&=~(1<<0);
	bcf	(135)^080h+(0/8),(0)&7	;volatile
	line	166
;main.c: 166: PORTA&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	167
;main.c: 167: PORTC&=~(1<<0);
	bcf	(7)+(0/8),(0)&7	;volatile
	line	168
;main.c: 168: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	169
;main.c: 169: break;
	goto	l614
	line	170
;main.c: 170: case 3:
	
l611:	
	line	172
;main.c: 172: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	173
;main.c: 173: TRISA&=~(1<<7);
	bcf	(133)^080h+(7/8),(7)&7	;volatile
	line	174
;main.c: 174: TRISC&=~(1<<1);
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	175
;main.c: 175: PORTA|=(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(7/8),(7)&7	;volatile
	line	176
;main.c: 176: PORTC&=~(1<<0);
	bcf	(7)+(0/8),(0)&7	;volatile
	line	177
;main.c: 177: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	178
;main.c: 178: break;
	goto	l614
	line	179
;main.c: 179: case 4:
	
l612:	
	line	180
;main.c: 180: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	181
;main.c: 181: TRISA&=~(1<<7);
	bcf	(133)^080h+(7/8),(7)&7	;volatile
	line	182
;main.c: 182: TRISC&=~(1<<1);
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	183
;main.c: 183: PORTA&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	184
;main.c: 184: PORTC|=(1<<0);
	bsf	(7)+(0/8),(0)&7	;volatile
	line	185
;main.c: 185: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	186
;main.c: 186: break;
	goto	l614
	line	187
;main.c: 187: case 5:
	
l613:	
	line	189
;main.c: 189: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	190
;main.c: 190: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	191
;main.c: 191: TRISC|=(1<<1);
	bsf	(135)^080h+(1/8),(1)&7	;volatile
	line	192
;main.c: 192: PORTC&=~(1<<0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7)+(0/8),(0)&7	;volatile
	line	193
;main.c: 193: PORTA&=~(1<<7);
	bcf	(5)+(7/8),(7)&7	;volatile
	line	194
;main.c: 194: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	195
;main.c: 195: break;
	goto	l614
	line	152
	
l2482:	
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
goto l614
	movwf fsr
	movlw	5
	subwf	fsr,w
skipnc
goto l614
movlw high(S2768)
movwf pclath
	movlw low(S2768)
	addwf fsr,w
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
S2768:
	ljmp	l608
	ljmp	l610
	ljmp	l611
	ljmp	l612
	ljmp	l613
psect	text10

	line	197
	
l614:	
	return
	opt stack 0
GLOBAL	__end_of_setLedOn
	__end_of_setLedOn:
	signat	_setLedOn,4217
	global	_Init_Config

;; *************** function _Init_Config *****************
;; Defined at:
;;		line 270 in file "E:\project\scm\uf166fan\main.c"
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	270
global __ptext11
__ptext11:	;psect for function _Init_Config
psect	text11
	file	"E:\project\scm\uf166fan\main.c"
	line	270
	global	__size_of_Init_Config
	__size_of_Init_Config	equ	__end_of_Init_Config-_Init_Config
	
_Init_Config:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	272
	
l2338:	
;main.c: 272: Init_System();
	fcall	_Init_System
	line	273
;main.c: 273: Init_GPIO();
	fcall	_Init_GPIO
	line	274
;main.c: 274: Init_Interupt();
	fcall	_Init_Interupt
	line	275
;main.c: 275: Init_PWM();
	fcall	_Init_PWM
	line	277
	
l2340:	
;main.c: 277: IOCB = 0x04;
	movlw	low(04h)
	movwf	(150)^080h	;volatile
	line	278
	
l2342:	
;main.c: 278: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	279
	
l2344:	
;main.c: 279: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	282
	
l2346:	
;main.c: 282: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	284
	
l2348:	
;main.c: 284: key2.key_index = 4;
	movlw	low(04h)
	movwf	0+(_key2)+06h
	line	286
	
l2350:	
;main.c: 286: key3.key_index = 3;
	movlw	low(03h)
	movwf	0+(_key3)+06h
	line	287
	
l2352:	
;main.c: 287: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	288
	
l2354:	
;main.c: 288: resetKey(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	289
	
l2356:	
;main.c: 289: resetKey(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	291
	
l2358:	
;main.c: 291: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	292
	
l2360:	
;main.c: 292: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	293
	
l2362:	
;main.c: 293: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	294
	
l641:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Config
	__end_of_Init_Config:
	signat	_Init_Config,89
	global	_resetKey

;; *************** function _resetKey *****************
;; Defined at:
;;		line 100 in file "E:\project\scm\uf166fan\scankey.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\scankey.c"
	line	100
global __ptext12
__ptext12:	;psect for function _resetKey
psect	text12
	file	"E:\project\scm\uf166fan\scankey.c"
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
	
l2246:	
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
	
l685:	
	return
	opt stack 0
GLOBAL	__end_of_resetKey
	__end_of_resetKey:
	signat	_resetKey,4217
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 3 in file "E:\project\scm\uf166fan\init.c"
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
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\init.c"
	line	3
global __ptext13
__ptext13:	;psect for function _Init_System
psect	text13
	file	"E:\project\scm\uf166fan\init.c"
	line	3
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_System: [wreg+status,2]
	line	4
	
l2220:	
# 4 "E:\project\scm\uf166fan\init.c"
nop ;# 
	line	5
# 5 "E:\project\scm\uf166fan\init.c"
clrwdt ;# 
psect	text13
	line	6
	
l2222:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
l2224:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
l2226:	
;init.c: 8: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
l1224:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Init_PWM

;; *************** function _Init_PWM *****************
;; Defined at:
;;		line 51 in file "E:\project\scm\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 200/0
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\main.c"
	line	51
global __ptext14
__ptext14:	;psect for function _Init_PWM
psect	text14
	file	"E:\project\scm\uf166fan\main.c"
	line	51
	global	__size_of_Init_PWM
	__size_of_Init_PWM	equ	__end_of_Init_PWM-_Init_PWM
	
_Init_PWM:	
;incstack = 0
	opt	stack 2
; Regs used in _Init_PWM: [wreg+status,2]
	line	52
	
l2038:	
;main.c: 52: CCP1CON = 0x0F;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	53
	
l2040:	
;main.c: 53: T2CON = 0;
	clrf	(18)	;volatile
	line	54
	
l2042:	
;main.c: 54: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	56
;main.c: 56: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	57
	
l2044:	
;main.c: 57: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	58
;main.c: 58: T2CON = 0;
	clrf	(18)	;volatile
	line	60
	
l2046:	
;main.c: 60: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	62
	
l581:	
	return
	opt stack 0
GLOBAL	__end_of_Init_PWM
	__end_of_Init_PWM:
	signat	_Init_PWM,89
	global	_Init_Interupt

;; *************** function _Init_Interupt *****************
;; Defined at:
;;		line 27 in file "E:\project\scm\uf166fan\init.c"
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\init.c"
	line	27
global __ptext15
__ptext15:	;psect for function _Init_Interupt
psect	text15
	file	"E:\project\scm\uf166fan\init.c"
	line	27
	global	__size_of_Init_Interupt
	__size_of_Init_Interupt	equ	__end_of_Init_Interupt-_Init_Interupt
	
_Init_Interupt:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Interupt: [wreg+status,2]
	line	28
	
l2242:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
l2244:	
;init.c: 30: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	32
	
l1230:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Interupt
	__end_of_Init_Interupt:
	signat	_Init_Interupt,89
	global	_Init_GPIO

;; *************** function _Init_GPIO *****************
;; Defined at:
;;		line 13 in file "E:\project\scm\uf166fan\init.c"
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext16
__ptext16:	;psect for function _Init_GPIO
psect	text16
	file	"E:\project\scm\uf166fan\init.c"
	line	13
	global	__size_of_Init_GPIO
	__size_of_Init_GPIO	equ	__end_of_Init_GPIO-_Init_GPIO
	
_Init_GPIO:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_GPIO: [wreg+status,2]
	line	14
	
l2228:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
l2230:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
l2232:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
l2234:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
l2236:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
l2238:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
l2240:	
;init.c: 22: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	23
;init.c: 23: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	25
	
l1227:	
	return
	opt stack 0
GLOBAL	__end_of_Init_GPIO
	__end_of_Init_GPIO:
	signat	_Init_GPIO,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 340 in file "E:\project\scm\uf166fan\main.c"
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\main.c"
	line	340
global __ptext17
__ptext17:	;psect for function _Timer0_Isr
psect	text17
	file	"E:\project\scm\uf166fan\main.c"
	line	340
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
psect	text17
	line	341
	
i1l2414:	
;main.c: 341: if (T0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u67_21
	goto	u67_20
u67_21:
	goto	i1l2422
u67_20:
	line	343
	
i1l2416:	
;main.c: 343: TMR0 += 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	346
	
i1l2418:	
;main.c: 346: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	347
	
i1l2420:	
;main.c: 347: time0Flag = 1;
	clrf	(_time0Flag)
	incf	(_time0Flag),f
	line	351
	
i1l2422:	
;main.c: 349: }
;main.c: 351: if (RBIF) {
	btfss	(88/8),(88)&7	;volatile
	goto	u68_21
	goto	u68_20
u68_21:
	goto	i1l651
u68_20:
	line	352
	
i1l2424:	
;main.c: 352: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	353
	
i1l2426:	
;main.c: 353: Init_Config();
	fcall	i1_Init_Config
	line	355
	
i1l651:	
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
;;		line 270 in file "E:\project\scm\uf166fan\main.c"
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	270
global __ptext18
__ptext18:	;psect for function i1_Init_Config
psect	text18
	file	"E:\project\scm\uf166fan\main.c"
	line	270
	global	__size_ofi1_Init_Config
	__size_ofi1_Init_Config	equ	__end_ofi1_Init_Config-i1_Init_Config
	
i1_Init_Config:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	272
	
i1l2364:	
;main.c: 272: Init_System();
	fcall	i1_Init_System
	line	273
;main.c: 273: Init_GPIO();
	fcall	i1_Init_GPIO
	line	274
;main.c: 274: Init_Interupt();
	fcall	i1_Init_Interupt
	line	275
;main.c: 275: Init_PWM();
	fcall	i1_Init_PWM
	line	277
	
i1l2366:	
;main.c: 277: IOCB = 0x04;
	movlw	low(04h)
	movwf	(150)^080h	;volatile
	line	278
	
i1l2368:	
;main.c: 278: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	279
	
i1l2370:	
;main.c: 279: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	282
	
i1l2372:	
;main.c: 282: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	284
	
i1l2374:	
;main.c: 284: key2.key_index = 4;
	movlw	low(04h)
	movwf	0+(_key2)+06h
	line	286
	
i1l2376:	
;main.c: 286: key3.key_index = 3;
	movlw	low(03h)
	movwf	0+(_key3)+06h
	line	287
	
i1l2378:	
;main.c: 287: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	288
	
i1l2380:	
;main.c: 288: resetKey(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	289
	
i1l2382:	
;main.c: 289: resetKey(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	291
	
i1l2384:	
;main.c: 291: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	292
	
i1l2386:	
;main.c: 292: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	293
	
i1l2388:	
;main.c: 293: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	294
	
i1l641:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_Config
	__end_ofi1_Init_Config:
	signat	i1_Init_Config,89
	global	i1_resetKey

;; *************** function i1_resetKey *****************
;; Defined at:
;;		line 100 in file "E:\project\scm\uf166fan\scankey.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\scankey.c"
	line	100
global __ptext19
__ptext19:	;psect for function i1_resetKey
psect	text19
	file	"E:\project\scm\uf166fan\scankey.c"
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
	
i1l2258:	
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
	
i1l685:	
	return
	opt stack 0
GLOBAL	__end_ofi1_resetKey
	__end_ofi1_resetKey:
	signat	i1_resetKey,89
	global	i1_Init_System

;; *************** function i1_Init_System *****************
;; Defined at:
;;		line 3 in file "E:\project\scm\uf166fan\init.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\init.c"
	line	3
global __ptext20
__ptext20:	;psect for function i1_Init_System
psect	text20
	file	"E:\project\scm\uf166fan\init.c"
	line	3
	global	__size_ofi1_Init_System
	__size_ofi1_Init_System	equ	__end_ofi1_Init_System-i1_Init_System
	
i1_Init_System:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_System: [wreg+status,2]
	line	4
	
i1l2260:	
# 4 "E:\project\scm\uf166fan\init.c"
nop ;# 
	line	5
# 5 "E:\project\scm\uf166fan\init.c"
clrwdt ;# 
psect	text20
	line	6
	
i1l2262:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
i1l2264:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
i1l2266:	
;init.c: 8: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
i1l1224:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_System
	__end_ofi1_Init_System:
	signat	i1_Init_System,89
	global	i1_Init_PWM

;; *************** function i1_Init_PWM *****************
;; Defined at:
;;		line 51 in file "E:\project\scm\uf166fan\main.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\main.c"
	line	51
global __ptext21
__ptext21:	;psect for function i1_Init_PWM
psect	text21
	file	"E:\project\scm\uf166fan\main.c"
	line	51
	global	__size_ofi1_Init_PWM
	__size_ofi1_Init_PWM	equ	__end_ofi1_Init_PWM-i1_Init_PWM
	
i1_Init_PWM:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_PWM: [wreg+status,2]
	line	52
	
i1l2248:	
;main.c: 52: CCP1CON = 0x0F;
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	53
	
i1l2250:	
;main.c: 53: T2CON = 0;
	clrf	(18)	;volatile
	line	54
	
i1l2252:	
;main.c: 54: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	56
;main.c: 56: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	57
	
i1l2254:	
;main.c: 57: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	58
;main.c: 58: T2CON = 0;
	clrf	(18)	;volatile
	line	60
	
i1l2256:	
;main.c: 60: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	62
	
i1l581:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_PWM
	__end_ofi1_Init_PWM:
	signat	i1_Init_PWM,89
	global	i1_Init_Interupt

;; *************** function i1_Init_Interupt *****************
;; Defined at:
;;		line 27 in file "E:\project\scm\uf166fan\init.c"
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
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\init.c"
	line	27
global __ptext22
__ptext22:	;psect for function i1_Init_Interupt
psect	text22
	file	"E:\project\scm\uf166fan\init.c"
	line	27
	global	__size_ofi1_Init_Interupt
	__size_ofi1_Init_Interupt	equ	__end_ofi1_Init_Interupt-i1_Init_Interupt
	
i1_Init_Interupt:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_Interupt: [wreg+status,2]
	line	28
	
i1l2282:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
i1l2284:	
;init.c: 30: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	32
	
i1l1230:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_Interupt
	__end_ofi1_Init_Interupt:
	signat	i1_Init_Interupt,89
	global	i1_Init_GPIO

;; *************** function i1_Init_GPIO *****************
;; Defined at:
;;		line 13 in file "E:\project\scm\uf166fan\init.c"
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext23
__ptext23:	;psect for function i1_Init_GPIO
psect	text23
	file	"E:\project\scm\uf166fan\init.c"
	line	13
	global	__size_ofi1_Init_GPIO
	__size_ofi1_Init_GPIO	equ	__end_ofi1_Init_GPIO-i1_Init_GPIO
	
i1_Init_GPIO:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_GPIO: [wreg+status,2]
	line	14
	
i1l2268:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
i1l2270:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
i1l2272:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
i1l2274:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
i1l2276:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
i1l2278:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
i1l2280:	
;init.c: 22: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	23
;init.c: 23: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	25
	
i1l1227:	
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
