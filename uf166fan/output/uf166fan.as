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
	FNCALL	_main,_Init_GPIO
	FNCALL	_main,_Init_Interupt
	FNCALL	_main,_Init_System
	FNCALL	_main,_checkFan
	FNCALL	_main,_checkUsbStatus
	FNCALL	_main,_key_read
	FNCALL	_main,_resetKey
	FNCALL	_main,_sacnKeyInput
	FNCALL	_main,_setFanLevel
	FNCALL	_key_read,_key_driver
	FNCALL	_checkFan,_closeFan
	FNCALL	_checkFan,_setFanLevel
	FNCALL	_setFanLevel,___awdiv
	FNCALL	_setFanLevel,___bmul
	FNCALL	_setFanLevel,_setLedOn
	FNCALL	_closeFan,_Init_PWM
	FNCALL	_closeFan,_setLedOn
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_FAN_STATUS
	global	_currentLevel
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"E:\project\scm\uf166fan\main.c"
	line	22

;initializer for _FAN_STATUS
	retlw	02h
	line	20

;initializer for _currentLevel
	retlw	02h
	global	_fan_check_time
	global	_count10Ms
	global	_countTime
	global	_time0Flag
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
psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"E:\project\scm\uf166fan\main.c"
	line	22
_FAN_STATUS:
       ds      1

psect	dataCOMMON
	file	"E:\project\scm\uf166fan\main.c"
	line	20
_currentLevel:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_fan_check_time:
       ds      2

_count10Ms:
       ds      2

_countTime:
       ds      2

_time0Flag:
       ds      1

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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
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
?_Init_System:	; 1 bytes @ 0x0
?_Init_GPIO:	; 1 bytes @ 0x0
?_Init_Interupt:	; 1 bytes @ 0x0
?_resetKey:	; 1 bytes @ 0x0
?_sacnKeyInput:	; 1 bytes @ 0x0
?_key_read:	; 1 bytes @ 0x0
?_checkUsbStatus:	; 1 bytes @ 0x0
?_Init_PWM:	; 1 bytes @ 0x0
?_setFanLevel:	; 1 bytes @ 0x0
?_closeFan:	; 1 bytes @ 0x0
?_checkFan:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
??_Timer0_Isr:	; 1 bytes @ 0x0
?_key_driver:	; 1 bytes @ 0x0
	ds	2
?_setLedOn:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_Init_GPIO:	; 1 bytes @ 0x2
??_Init_Interupt:	; 1 bytes @ 0x2
??_resetKey:	; 1 bytes @ 0x2
??_sacnKeyInput:	; 1 bytes @ 0x2
??_checkUsbStatus:	; 1 bytes @ 0x2
??_Init_PWM:	; 1 bytes @ 0x2
??_key_driver:	; 1 bytes @ 0x2
?___bmul:	; 1 bytes @ 0x2
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x2
	global	key_driver@key_return
key_driver@key_return:	; 1 bytes @ 0x2
	global	resetKey@key
resetKey@key:	; 1 bytes @ 0x2
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x2
	global	setLedOn@ledIndex
setLedOn@ledIndex:	; 2 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	ds	1
??___bmul:	; 1 bytes @ 0x3
	global	key_driver@key_read
key_driver@key_read:	; 1 bytes @ 0x3
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x3
	ds	1
??_setLedOn:	; 1 bytes @ 0x4
??_closeFan:	; 1 bytes @ 0x4
	global	sacnKeyInput@key
sacnKeyInput@key:	; 1 bytes @ 0x4
	global	key_driver@key
key_driver@key:	; 1 bytes @ 0x4
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x4
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x4
	ds	1
??_key_read:	; 1 bytes @ 0x5
	global	key_read@key_return
key_read@key_return:	; 1 bytes @ 0x5
	ds	1
??___awdiv:	; 1 bytes @ 0x6
	global	key_read@key_read
key_read@key_read:	; 1 bytes @ 0x6
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	key_read@key
key_read@key:	; 1 bytes @ 0x7
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x7
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x8
	ds	2
??_setFanLevel:	; 1 bytes @ 0xA
??_main:	; 1 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	setFanLevel@level
setFanLevel@level:	; 1 bytes @ 0x0
	ds	1
	global	setFanLevel@tempLevel
setFanLevel@tempLevel:	; 1 bytes @ 0x1
	ds	1
??_checkFan:	; 1 bytes @ 0x2
	ds	1
	global	main@key1
main@key1:	; 7 bytes @ 0x3
	ds	7
	global	main@key2
main@key2:	; 7 bytes @ 0xA
	ds	7
	global	main@key3
main@key3:	; 7 bytes @ 0x11
	ds	7
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        2
;!    BSS         7
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      12
;!    BANK0            80     24      31
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    resetKey@key	PTR struct Keys size(1) Largest target is 7
;!		 -> main@key3(BANK0[7]), main@key2(BANK0[7]), main@key1(BANK0[7]), 
;!
;!    key_read@key	PTR struct Keys size(1) Largest target is 7
;!		 -> main@key3(BANK0[7]), main@key2(BANK0[7]), main@key1(BANK0[7]), 
;!
;!    key_driver@key	PTR struct Keys size(1) Largest target is 7
;!		 -> main@key3(BANK0[7]), main@key2(BANK0[7]), main@key1(BANK0[7]), 
;!
;!    sacnKeyInput@key	PTR struct Keys size(1) Largest target is 7
;!		 -> main@key3(BANK0[7]), main@key2(BANK0[7]), main@key1(BANK0[7]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _key_read->_key_driver
;!    _setFanLevel->___awdiv
;!    _closeFan->_setLedOn
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_checkFan
;!    _checkFan->_setFanLevel
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
;! (0) _main                                                21    21      0    4358
;!                                              3 BANK0     21    21      0
;!                          _Init_GPIO
;!                      _Init_Interupt
;!                        _Init_System
;!                           _checkFan
;!                     _checkUsbStatus
;!                           _key_read
;!                           _resetKey
;!                       _sacnKeyInput
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (1) _sacnKeyInput                                         3     3      0     169
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _resetKey                                             1     1      0     169
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _key_read                                             3     3      0     689
;!                                              5 COMMON     3     3      0
;!                         _key_driver
;! ---------------------------------------------------------------------------------
;! (2) _key_driver                                           3     3      0     361
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _checkUsbStatus                                       1     1      0       0
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _checkFan                                             1     1      0    1293
;!                                              2 BANK0      1     1      0
;!                           _closeFan
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (1) _setFanLevel                                          4     4      0    1132
;!                                              0 BANK0      2     2      0
;!                            ___awdiv
;!                             ___bmul
;!                           _setLedOn
;! ---------------------------------------------------------------------------------
;! (2) ___bmul                                               3     2      1     201
;!                                              2 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              8     4      4     606
;!                                              2 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _closeFan                                             0     0      0     161
;!                           _Init_PWM
;!                           _setLedOn
;! ---------------------------------------------------------------------------------
;! (2) _setLedOn                                             2     0      2     161
;!                                              2 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (3) _Init_PWM                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_Interupt                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_GPIO                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _Timer0_Isr                                           2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_GPIO
;!   _Init_Interupt
;!   _Init_System
;!   _checkFan
;!     _closeFan
;!       _Init_PWM
;!       _setLedOn
;!     _setFanLevel
;!       ___awdiv
;!       ___bmul
;!       _setLedOn
;!   _checkUsbStatus
;!   _key_read
;!     _key_driver
;!   _resetKey
;!   _sacnKeyInput
;!   _setFanLevel
;!     ___awdiv
;!     ___bmul
;!     _setLedOn
;!
;! _Timer0_Isr (ROOT)
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
;!BANK0               50     18      1F       5       38.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      A       C       1       85.7%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      2B       8        0.0%
;!ABS                  0      0      2B       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 156 in file "E:\project\scm\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key3            7   17[BANK0 ] struct Keys
;;  key2            7   10[BANK0 ] struct Keys
;;  key1            7    3[BANK0 ] struct Keys
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
;;      Locals:         0      21       0
;;      Temps:          0       0       0
;;      Totals:         0      21       0
;;Total ram usage:       21 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Init_GPIO
;;		_Init_Interupt
;;		_Init_System
;;		_checkFan
;;		_checkUsbStatus
;;		_key_read
;;		_resetKey
;;		_sacnKeyInput
;;		_setFanLevel
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\project\scm\uf166fan\main.c"
	line	156
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\project\scm\uf166fan\main.c"
	line	156
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	158
	
l2463:	
;main.c: 158: Init_System();
	fcall	_Init_System
	line	159
;main.c: 159: Init_GPIO();
	fcall	_Init_GPIO
	line	160
;main.c: 160: Init_Interupt();
	fcall	_Init_Interupt
	line	163
	
l2465:	
;main.c: 163: IOCB = 0x04;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(150)^080h	;volatile
	line	164
	
l2467:	
;main.c: 164: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	165
	
l2469:	
;main.c: 165: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	169
	
l2471:	
;main.c: 167: struct Keys key1,key2,key3;
;main.c: 169: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(main@key1)+06h
	line	171
	
l2473:	
;main.c: 171: key2.key_index = 4;
	movlw	low(04h)
	movwf	0+(main@key2)+06h
	line	173
	
l2475:	
;main.c: 173: key3.key_index = 3;
	movlw	low(03h)
	movwf	0+(main@key3)+06h
	line	174
	
l2477:	
;main.c: 174: resetKey(&key1);
	movlw	(low(main@key1|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	175
	
l2479:	
;main.c: 175: resetKey(&key2);
	movlw	(low(main@key2|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	176
	
l2481:	
;main.c: 176: resetKey(&key3);
	movlw	(low(main@key3|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	178
	
l2483:	
;main.c: 178: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	180
	
l2485:	
;main.c: 180: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	181
	
l2487:	
;main.c: 181: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	182
	
l2489:	
;main.c: 182: TRISC = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	186
	
l2491:	
;main.c: 184: {
;main.c: 186: if(time0Flag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_time0Flag)),w
	btfsc	status,2
	goto	u921
	goto	u920
u921:
	goto	l2509
u920:
	line	188
	
l2493:	
# 188 "E:\project\scm\uf166fan\main.c"
clrwdt ;# 
psect	maintext
	line	189
	
l2495:	
;main.c: 189: time0Flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_time0Flag)
	line	190
	
l2497:	
;main.c: 190: key1.key_addr_result = key2.key_addr_result = key3.key_addr_result = PORTB;
	movf	(6),w	;volatile
	movwf	0+(main@key3)+05h
	movwf	0+(main@key2)+05h
	movwf	0+(main@key1)+05h
	line	191
	
l2499:	
;main.c: 191: sacnKeyInput(&key1);
	movlw	(low(main@key1|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	192
	
l2501:	
;main.c: 192: sacnKeyInput(&key2);
	movlw	(low(main@key2|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	193
	
l2503:	
;main.c: 193: sacnKeyInput(&key3);
	movlw	(low(main@key3|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	194
	
l2505:	
;main.c: 194: countTime++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_countTime),f
	skipnz
	incf	(_countTime+1),f
	line	195
	
l2507:	
;main.c: 195: count10Ms++;
	incf	(_count10Ms),f
	skipnz
	incf	(_count10Ms+1),f
	line	199
	
l2509:	
;main.c: 196: }
;main.c: 199: if(count10Ms == 10)
		movlw	10
	xorwf	((_count10Ms)),w
iorwf	((_count10Ms+1)),w
	btfss	status,2
	goto	u931
	goto	u930
u931:
	goto	l2527
u930:
	line	201
	
l2511:	
;main.c: 200: {
;main.c: 201: if(key_read(&key1) != 0)
	movlw	(low(main@key1|((0x0)<<8)))&0ffh
	fcall	_key_read
	xorlw	0
	skipnz
	goto	u941
	goto	u940
u941:
	goto	l2515
u940:
	line	204
	
l2513:	
;main.c: 202: {
;main.c: 204: checkFan();
	fcall	_checkFan
	line	206
;main.c: 206: }
	goto	l609
	line	207
	
l2515:	
;main.c: 207: else if(FAN_STATUS == 2)
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u951
	goto	u950
u951:
	goto	l609
u950:
	goto	l2513
	line	214
	
l609:	
;main.c: 210: }
;main.c: 214: if(key_read(&key2) != 0)
	movlw	(low(main@key2|((0x0)<<8)))&0ffh
	fcall	_key_read
	xorlw	0
	skipnz
	goto	u961
	goto	u960
u961:
	goto	l611
u960:
	line	217
	
l2519:	
;main.c: 215: {
;main.c: 217: setFanLevel(1);
	movlw	low(01h)
	fcall	_setFanLevel
	line	218
	
l611:	
	line	220
;main.c: 218: }
;main.c: 220: if(key_read(&key3) != 0)
	movlw	(low(main@key3|((0x0)<<8)))&0ffh
	fcall	_key_read
	xorlw	0
	skipnz
	goto	u971
	goto	u970
u971:
	goto	l2523
u970:
	line	223
	
l2521:	
;main.c: 221: {
;main.c: 223: setFanLevel(-1);
	movlw	low(0FFh)
	fcall	_setFanLevel
	line	229
	
l2523:	
;main.c: 224: }
;main.c: 229: count10Ms = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_count10Ms)
	clrf	(_count10Ms+1)
	line	230
	
l2525:	
;main.c: 230: checkUsbStatus();
	fcall	_checkUsbStatus
	line	236
	
l2527:	
;main.c: 232: }
;main.c: 236: if(countTime == 1000)
		movlw	232
	xorwf	((_countTime)),w
	movlw	3
	skipnz
	xorwf	((_countTime+1)),w
	btfss	status,2
	goto	u981
	goto	u980
u981:
	goto	l2491
u980:
	line	238
	
l2529:	
;main.c: 237: {
;main.c: 238: countTime = 0;
	clrf	(_countTime)
	clrf	(_countTime+1)
	goto	l2491
	global	start
	ljmp	start
	opt stack 0
	line	242
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_sacnKeyInput

;; *************** function _sacnKeyInput *****************
;; Defined at:
;;		line 3 in file "E:\project\scm\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> main@key3(7), main@key2(7), main@key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    4[COMMON] PTR struct Keys
;;		 -> main@key3(7), main@key2(7), main@key1(7), 
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
;;      Temps:          2       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\scankey.c"
	line	3
global __ptext1
__ptext1:	;psect for function _sacnKeyInput
psect	text1
	file	"E:\project\scm\uf166fan\scankey.c"
	line	3
	global	__size_of_sacnKeyInput
	__size_of_sacnKeyInput	equ	__end_of_sacnKeyInput-_sacnKeyInput
	
_sacnKeyInput:	
;incstack = 0
	opt	stack 6
; Regs used in _sacnKeyInput: [wreg-fsr0h+status,2+status,0]
;sacnKeyInput@key stored from wreg
	movwf	(sacnKeyInput@key)
	line	5
	
l2175:	
;scankey.c: 5: key->key_input = ((key->key_addr_result) >> (key->key_index)&1);
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
	goto	u634
u635:
	clrc
	rrf	(??_sacnKeyInput+0)+0,f
u634:
	addlw	-1
	skipz
	goto	u635
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
	line	7
	
l625:	
	return
	opt stack 0
GLOBAL	__end_of_sacnKeyInput
	__end_of_sacnKeyInput:
	signat	_sacnKeyInput,4217
	global	_resetKey

;; *************** function _resetKey *****************
;; Defined at:
;;		line 115 in file "E:\project\scm\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> main@key3(7), main@key2(7), main@key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    2[COMMON] PTR struct Keys
;;		 -> main@key3(7), main@key2(7), main@key1(7), 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	115
global __ptext2
__ptext2:	;psect for function _resetKey
psect	text2
	file	"E:\project\scm\uf166fan\scankey.c"
	line	115
	global	__size_of_resetKey
	__size_of_resetKey	equ	__end_of_resetKey-_resetKey
	
_resetKey:	
;incstack = 0
	opt	stack 6
; Regs used in _resetKey: [wreg-fsr0h+status,2+status,0]
;resetKey@key stored from wreg
	movwf	(resetKey@key)
	line	117
	
l2173:	
;scankey.c: 117: key->key_timer_cnt1 =key->key_timer_cnt2 = key->key_state_buffer1 = key->key_state_buffer2 = 0;
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
	line	118
	
l656:	
	return
	opt stack 0
GLOBAL	__end_of_resetKey
	__end_of_resetKey:
	signat	_resetKey,4217
	global	_key_read

;; *************** function _key_read *****************
;; Defined at:
;;		line 75 in file "E:\project\scm\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> main@key3(7), main@key2(7), main@key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    7[COMMON] PTR struct Keys
;;		 -> main@key3(7), main@key2(7), main@key1(7), 
;;  key_read        1    6[COMMON] unsigned char 
;;  key_return      1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 800/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_key_driver
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	75
global __ptext3
__ptext3:	;psect for function _key_read
psect	text3
	file	"E:\project\scm\uf166fan\scankey.c"
	line	75
	global	__size_of_key_read
	__size_of_key_read	equ	__end_of_key_read-_key_read
	
_key_read:	
;incstack = 0
	opt	stack 5
; Regs used in _key_read: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;key_read@key stored from wreg
	movwf	(key_read@key)
	line	78
	
l2177:	
;scankey.c: 78: unsigned char key_return = 0;
	clrf	(key_read@key_return)
	line	79
	
l2179:	
;scankey.c: 79: unsigned char key_read = key_driver(key);
	movf	(key_read@key),w
	fcall	_key_driver
	movwf	(key_read@key_read)
	line	81
;scankey.c: 81: switch(key->key_state_buffer2)
	goto	l2201
	line	84
	
l2181:	
;scankey.c: 84: if(key_read == 1)
		decf	((key_read@key_read)),w
	btfss	status,2
	goto	u641
	goto	u640
u641:
	goto	l2185
u640:
	line	86
	
l2183:	
;scankey.c: 85: {
;scankey.c: 86: key->key_timer_cnt2 = 0;
	movf	(key_read@key),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	line	87
;scankey.c: 87: key->key_state_buffer2 = 1;
	movf	(key_read@key),w
	addlw	03h
	movwf	fsr0
	clrf	indf
	incf	indf,f
	line	88
;scankey.c: 88: }
	goto	l2203
	line	90
	
l2185:	
;scankey.c: 89: else
;scankey.c: 90: key_return = key_read;
	movf	(key_read@key_read),w
	movwf	(key_read@key_return)
	goto	l2203
	line	94
	
l2187:	
;scankey.c: 94: if(key_read == 1)
		decf	((key_read@key_read)),w
	btfss	status,2
	goto	u651
	goto	u650
u651:
	goto	l2193
u650:
	line	96
	
l2189:	
;scankey.c: 95: {
;scankey.c: 96: key_return = 2;
	movlw	low(02h)
	movwf	(key_read@key_return)
	line	97
	
l2191:	
;scankey.c: 97: key->key_state_buffer2 = 0;
	movf	(key_read@key),w
	addlw	03h
	movwf	fsr0
	clrf	indf
	line	98
;scankey.c: 98: }
	goto	l2203
	line	99
	
l2193:	
;scankey.c: 99: else if(++(key->key_timer_cnt2) >= 50)
	movf	(key_read@key),w
	addlw	02h
	movwf	fsr0
	incf	indf,f
	movlw	low(032h)
	subwf	(indf),w
	skipc
	goto	u661
	goto	u660
u661:
	goto	l2203
u660:
	line	104
	
l2195:	
;scankey.c: 100: {
;scankey.c: 104: key_return = 1;
	clrf	(key_read@key_return)
	incf	(key_read@key_return),f
	line	105
	
l2197:	
;scankey.c: 105: key->key_state_buffer2 = 0;
	movf	(key_read@key),w
	addlw	03h
	movwf	fsr0
	clrf	indf
	goto	l2203
	line	81
	
l2201:	
	movf	(key_read@key),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2181
	xorlw	1^0	; case 1
	skipnz
	goto	l2187
	goto	l2203
	opt asmopt_pop

	line	111
	
l2203:	
;scankey.c: 111: return key_return;
	movf	(key_read@key_return),w
	line	112
	
l653:	
	return
	opt stack 0
GLOBAL	__end_of_key_read
	__end_of_key_read:
	signat	_key_read,4217
	global	_key_driver

;; *************** function _key_driver *****************
;; Defined at:
;;		line 10 in file "E:\project\scm\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> main@key3(7), main@key2(7), main@key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    4[COMMON] PTR struct Keys
;;		 -> main@key3(7), main@key2(7), main@key1(7), 
;;  key_read        1    3[COMMON] unsigned char 
;;  key_return      1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 800/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_key_read
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	10
global __ptext4
__ptext4:	;psect for function _key_driver
psect	text4
	file	"E:\project\scm\uf166fan\scankey.c"
	line	10
	global	__size_of_key_driver
	__size_of_key_driver	equ	__end_of_key_driver-_key_driver
	
_key_driver:	
;incstack = 0
	opt	stack 5
; Regs used in _key_driver: [wreg-fsr0h+status,2+status,0]
;key_driver@key stored from wreg
	movwf	(key_driver@key)
	line	14
	
l2061:	
;scankey.c: 14: unsigned char key_return = 0;
	clrf	(key_driver@key_return)
	line	15
	
l2063:	
;scankey.c: 15: unsigned char key_read = key->key_input;
	movf	(key_driver@key),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(key_driver@key_read)
	line	17
;scankey.c: 17: switch(key->key_state_buffer1)
	goto	l2095
	line	20
	
l2065:	
;scankey.c: 20: if(key_read == 0)
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u501
	goto	u500
u501:
	goto	l2097
u500:
	line	22
	
l2067:	
;scankey.c: 21: {
;scankey.c: 22: key->key_state_buffer1 = 1;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	incf	indf,f
	goto	l2097
	line	29
	
l2069:	
;scankey.c: 29: if(key_read == 0)
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u511
	goto	u510
u511:
	goto	l2075
u510:
	line	31
	
l2071:	
;scankey.c: 30: {
;scankey.c: 31: key->key_timer_cnt1 = 0;
	movf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	32
	
l2073:	
;scankey.c: 32: key->key_state_buffer1 = 2;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(02h)
	movwf	indf
	line	36
;scankey.c: 36: }
	goto	l2097
	line	39
	
l2075:	
;scankey.c: 37: else
;scankey.c: 38: {
;scankey.c: 39: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l2097
	line	46
	
l2077:	
;scankey.c: 46: if(key_read == 1)
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u521
	goto	u520
u521:
	goto	l2083
u520:
	line	48
	
l2079:	
;scankey.c: 47: {
;scankey.c: 48: key_return = 1;
	clrf	(key_driver@key_return)
	incf	(key_driver@key_return),f
	line	49
	
l2081:	
;scankey.c: 49: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	50
;scankey.c: 50: }
	goto	l2097
	line	51
	
l2083:	
;scankey.c: 51: else if(++(key->key_timer_cnt1) >= 100)
	movf	(key_driver@key),w
	movwf	fsr0
	incf	indf,f
	movlw	low(064h)
	subwf	(indf),w
	skipc
	goto	u531
	goto	u530
u531:
	goto	l2097
u530:
	line	53
	
l2085:	
;scankey.c: 52: {
;scankey.c: 53: key_return = 3;
	movlw	low(03h)
	movwf	(key_driver@key_return)
	line	54
	
l2087:	
;scankey.c: 54: key->key_state_buffer1 = 3;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(03h)
	movwf	indf
	goto	l2097
	line	60
	
l2089:	
;scankey.c: 60: if(key_read == 1)
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u541
	goto	u540
u541:
	goto	l2097
u540:
	line	62
	
l2091:	
;scankey.c: 61: {
;scankey.c: 62: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l2097
	line	17
	
l2095:	
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
goto l2097
movlw high(S2581)
movwf pclath
	movlw low(S2581)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S2581:
	ljmp	l2065
	ljmp	l2069
	ljmp	l2077
	ljmp	l2089
psect	text4

	line	67
	
l2097:	
;scankey.c: 67: return key_return;
	movf	(key_driver@key_return),w
	line	68
	
l641:	
	return
	opt stack 0
GLOBAL	__end_of_key_driver
	__end_of_key_driver:
	signat	_key_driver,4217
	global	_checkUsbStatus

;; *************** function _checkUsbStatus *****************
;; Defined at:
;;		line 28 in file "E:\project\scm\uf166fan\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\main.c"
	line	28
global __ptext5
__ptext5:	;psect for function _checkUsbStatus
psect	text5
	file	"E:\project\scm\uf166fan\main.c"
	line	28
	global	__size_of_checkUsbStatus
	__size_of_checkUsbStatus	equ	__end_of_checkUsbStatus-_checkUsbStatus
	
_checkUsbStatus:	
;incstack = 0
	opt	stack 6
; Regs used in _checkUsbStatus: [wreg+status,2+status,0]
	line	30
	
l2107:	
;main.c: 30: if(((PORTB) >> (2)&1) == 1){
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u551
	goto	u550
u551:
	goto	l565
u550:
	line	31
	
l2109:	
;main.c: 31: if(((PORTB) >> (1)&1) == 1){
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u561
	goto	u560
u561:
	goto	l2113
u560:
	line	33
	
l2111:	
;main.c: 33: PORTA&=~(1<<0);
	bcf	(5)+(0/8),(0)&7	;volatile
	line	34
;main.c: 34: }else if(countTime == 1000){
	goto	l570
	
l2113:	
		movlw	232
	xorwf	((_countTime)),w
	movlw	3
	skipnz
	xorwf	((_countTime+1)),w
	btfss	status,2
	goto	u571
	goto	u570
u571:
	goto	l570
u570:
	line	36
	
l2115:	
;main.c: 36: PORTA^=(1<<0);
	movlw	low(01h)
	xorwf	(5),f	;volatile
	goto	l570
	line	38
	
l565:	
	line	40
;main.c: 40: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	42
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of_checkUsbStatus
	__end_of_checkUsbStatus:
	signat	_checkUsbStatus,89
	global	_checkFan

;; *************** function _checkFan *****************
;; Defined at:
;;		line 94 in file "E:\project\scm\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 800/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_closeFan
;;		_setFanLevel
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	94
global __ptext6
__ptext6:	;psect for function _checkFan
psect	text6
	file	"E:\project\scm\uf166fan\main.c"
	line	94
	global	__size_of_checkFan
	__size_of_checkFan	equ	__end_of_checkFan-_checkFan
	
_checkFan:	
;incstack = 0
	opt	stack 4
; Regs used in _checkFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	96
	
l2435:	
;main.c: 96: PORTA|=(1<<1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(1/8),(1)&7	;volatile
	line	97
	
l2437:	
;main.c: 97: setFanLevel(0);
	movlw	low(0)
	fcall	_setFanLevel
	line	98
	
l2439:	
;main.c: 98: T2CON = 0X04;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	100
	
l2441:	
;main.c: 100: if(FAN_STATUS == 1)
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u871
	goto	u870
u871:
	goto	l2447
u870:
	line	102
	
l2443:	
;main.c: 101: {
;main.c: 102: closeFan();
	fcall	_closeFan
	goto	l586
	line	106
	
l2447:	
;main.c: 104: }
;main.c: 106: if(FAN_STATUS == 2)
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u881
	goto	u880
u881:
	goto	l2457
u880:
	line	108
	
l2449:	
;main.c: 107: {
;main.c: 108: fan_check_time++;
	incf	(_fan_check_time),f
	skipnz
	incf	(_fan_check_time+1),f
	line	109
	
l2451:	
;main.c: 109: if(fan_check_time == 3000)
		movlw	184
	xorwf	((_fan_check_time)),w
	movlw	11
	skipnz
	xorwf	((_fan_check_time+1)),w
	btfss	status,2
	goto	u891
	goto	u890
u891:
	goto	l2457
u890:
	goto	l2443
	line	116
	
l2457:	
;main.c: 113: }
;main.c: 114: }
;main.c: 116: if(((PORTB) >> (6)&1) == 0)
	movf	(6),w	;volatile
	movwf	(??_checkFan+0)+0
	movlw	06h
u905:
	clrc
	rrf	(??_checkFan+0)+0,f
	addlw	-1
	skipz
	goto	u905
	btfsc	0+(??_checkFan+0)+0,(0)&7
	goto	u911
	goto	u910
u911:
	goto	l2461
u910:
	line	118
	
l2459:	
;main.c: 117: {
;main.c: 118: FAN_STATUS = 1;
	clrf	(_FAN_STATUS)
	incf	(_FAN_STATUS),f
	line	119
;main.c: 119: }else
	goto	l586
	line	121
	
l2461:	
;main.c: 120: {
;main.c: 121: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	125
	
l586:	
	return
	opt stack 0
GLOBAL	__end_of_checkFan
	__end_of_checkFan:
	signat	_checkFan,89
	global	_setFanLevel

;; *************** function _setFanLevel *****************
;; Defined at:
;;		line 57 in file "E:\project\scm\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;  level           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  level           1    0[BANK0 ] unsigned char 
;;  levelWidth      2    0        unsigned int 
;;  tempLevel       1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 800/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___bmul
;;		_setLedOn
;; This function is called by:
;;		_checkFan
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	57
global __ptext7
__ptext7:	;psect for function _setFanLevel
psect	text7
	file	"E:\project\scm\uf166fan\main.c"
	line	57
	global	__size_of_setFanLevel
	__size_of_setFanLevel	equ	__end_of_setFanLevel-_setFanLevel
	
_setFanLevel:	
;incstack = 0
	opt	stack 5
; Regs used in _setFanLevel: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setFanLevel@level stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setFanLevel@level)
	line	60
	
l2403:	
;main.c: 60: unsigned int levelWidth = (PR2+1)/4;
	bsf	status, 5	;RP0=1, select bank1
	movf	(146)^080h,w	;volatile
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	movlw	04h
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	fcall	___awdiv
	line	61
	
l2405:	
;main.c: 61: char tempLevel = currentLevel + level;
	bcf	status, 5	;RP0=0, select bank0
	movf	(setFanLevel@level),w
	addwf	(_currentLevel),w
	movwf	(setFanLevel@tempLevel)
	line	62
	
l2407:	
;main.c: 62: if(tempLevel > 4)
	movlw	low(05h)
	subwf	(setFanLevel@tempLevel),w
	skipc
	goto	u841
	goto	u840
u841:
	goto	l2411
u840:
	line	64
	
l2409:	
;main.c: 63: {
;main.c: 64: tempLevel = 4;
	movlw	low(04h)
	movwf	(setFanLevel@tempLevel)
	line	67
	
l2411:	
;main.c: 65: }
;main.c: 67: if(tempLevel < 1)
	movf	((setFanLevel@tempLevel)),w
	btfss	status,2
	goto	u851
	goto	u850
u851:
	goto	l2415
u850:
	line	69
	
l2413:	
;main.c: 68: {
;main.c: 69: tempLevel = 1;
	clrf	(setFanLevel@tempLevel)
	incf	(setFanLevel@tempLevel),f
	line	71
	
l2415:	
;main.c: 70: }
;main.c: 71: currentLevel = tempLevel;
	movf	(setFanLevel@tempLevel),w
	movwf	(_currentLevel)
	line	72
	
l2417:	
;main.c: 72: CCPR1L = tempLevel*currentLevel;
	movf	(_currentLevel),w
	movwf	(___bmul@multiplicand)
	movf	(setFanLevel@tempLevel),w
	fcall	___bmul
	movwf	(21)	;volatile
	line	73
	
l2419:	
;main.c: 73: if(FAN_STATUS == 1)
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u861
	goto	u860
u861:
	goto	l579
u860:
	line	75
	
l2421:	
;main.c: 74: {
;main.c: 75: setLedOn(currentLevel);
	movf	(_currentLevel),w
	movwf	(setLedOn@ledIndex)
	clrf	(setLedOn@ledIndex+1)
	fcall	_setLedOn
	line	78
	
l579:	
	return
	opt stack 0
GLOBAL	__end_of_setFanLevel
	__end_of_setFanLevel:
	signat	_setFanLevel,4217
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    4[COMMON] unsigned char 
;;  product         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: B00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setFanLevel
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\Umul8.c"
	line	4
global __ptext8
__ptext8:	;psect for function ___bmul
psect	text8
	file	"E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l2345:	
	clrf	(___bmul@product)
	line	43
	
l2347:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u751
	goto	u750
u751:
	goto	l2351
u750:
	line	44
	
l2349:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	45
	
l2351:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	46
	
l2353:	
	clrc
	rrf	(___bmul@multiplier),f
	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u761
	goto	u760
u761:
	goto	l2347
u760:
	line	50
	
l2355:	
	movf	(___bmul@product),w
	line	51
	
l1225:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] int 
;;  dividend        2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    8[COMMON] int 
;;  sign            1    7[COMMON] unsigned char 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : B00/100
;;		Unchanged: B00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         4       0       0
;;      Temps:          0       0       0
;;      Totals:         8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setFanLevel
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
global __ptext9
__ptext9:	;psect for function ___awdiv
psect	text9
	file	"E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l2359:	
	clrf	(___awdiv@sign)
	line	15
	
l2361:	
	btfss	(___awdiv@divisor+1),7
	goto	u771
	goto	u770
u771:
	goto	l2367
u770:
	line	16
	
l2363:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l2365:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l2367:	
	btfss	(___awdiv@dividend+1),7
	goto	u781
	goto	u780
u781:
	goto	l2373
u780:
	line	20
	
l2369:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l2371:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l2373:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l2375:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u791
	goto	u790
u791:
	goto	l2395
u790:
	line	25
	
l2377:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l2381
	line	27
	
l2379:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l2381:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u801
	goto	u800
u801:
	goto	l2379
u800:
	line	31
	
l2383:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l2385:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u815
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u815:
	skipc
	goto	u811
	goto	u810
u811:
	goto	l2391
u810:
	line	33
	
l2387:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l2389:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l2391:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l2393:	
	decfsz	(___awdiv@counter),f
	goto	u821
	goto	u820
u821:
	goto	l2383
u820:
	line	39
	
l2395:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u831
	goto	u830
u831:
	goto	l2399
u830:
	line	40
	
l2397:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l2399:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l1337:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_closeFan

;; *************** function _closeFan *****************
;; Defined at:
;;		line 81 in file "E:\project\scm\uf166fan\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Init_PWM
;;		_setLedOn
;; This function is called by:
;;		_checkFan
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\main.c"
	line	81
global __ptext10
__ptext10:	;psect for function _closeFan
psect	text10
	file	"E:\project\scm\uf166fan\main.c"
	line	81
	global	__size_of_closeFan
	__size_of_closeFan	equ	__end_of_closeFan-_closeFan
	
_closeFan:	
;incstack = 0
	opt	stack 4
; Regs used in _closeFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	83
	
l2423:	
;main.c: 83: Init_PWM();
	fcall	_Init_PWM
	line	84
	
l2425:	
;main.c: 84: currentLevel = 2;
	movlw	low(02h)
	movwf	(_currentLevel)
	line	85
	
l2427:	
;main.c: 85: setLedOn(5);
	movlw	05h
	movwf	(setLedOn@ledIndex)
	clrf	(setLedOn@ledIndex+1)
	fcall	_setLedOn
	line	86
	
l2429:	
;main.c: 86: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	87
	
l2431:	
;main.c: 87: fan_check_time = 0;
	clrf	(_fan_check_time)
	clrf	(_fan_check_time+1)
	line	88
	
l2433:	
;main.c: 88: FAN_STATUS = 0;
	clrf	(_FAN_STATUS)
	line	90
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of_closeFan
	__end_of_closeFan:
	signat	_closeFan,89
	global	_setLedOn

;; *************** function _setLedOn *****************
;; Defined at:
;;		line 132 in file "E:\project\scm\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;  ledIndex        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setFanLevel
;;		_closeFan
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	132
global __ptext11
__ptext11:	;psect for function _setLedOn
psect	text11
	file	"E:\project\scm\uf166fan\main.c"
	line	132
	global	__size_of_setLedOn
	__size_of_setLedOn	equ	__end_of_setLedOn-_setLedOn
	
_setLedOn:	
;incstack = 0
	opt	stack 5
; Regs used in _setLedOn: [wreg-fsr0h+status,2+status,0]
	line	134
	
l2333:	
;main.c: 134: switch(ledIndex)
	goto	l2339
	line	136
;main.c: 135: {
;main.c: 136: case 1:
	
l594:	
	line	137
;main.c: 137: PORTB&=~(1<<7); PORTC|=(1<<0); PORTC&=~(1<<1);
	bcf	(6)+(7/8),(7)&7	;volatile
	bsf	(7)+(0/8),(0)&7	;volatile
	bcf	(7)+(1/8),(1)&7	;volatile
	line	138
;main.c: 138: break;
	goto	l600
	line	139
;main.c: 139: case 2:
	
l596:	
	line	140
;main.c: 140: PORTB|=(1<<7); PORTC&=~(1<<0); PORTC|=(1<<1);
	bsf	(6)+(7/8),(7)&7	;volatile
	bcf	(7)+(0/8),(0)&7	;volatile
	bsf	(7)+(1/8),(1)&7	;volatile
	line	141
;main.c: 141: break;
	goto	l600
	line	143
;main.c: 143: case 3:
	
l597:	
	line	144
;main.c: 144: PORTB|=(1<<7); PORTC&=~(1<<0); PORTC&=~(1<<1);
	bsf	(6)+(7/8),(7)&7	;volatile
	bcf	(7)+(0/8),(0)&7	;volatile
	bcf	(7)+(1/8),(1)&7	;volatile
	line	145
;main.c: 145: break;
	goto	l600
	line	146
;main.c: 146: case 4:
	
l598:	
	line	147
;main.c: 147: PORTB&=~(1<<7); PORTC|=(1<<0); PORTC|=(1<<1);
	bcf	(6)+(7/8),(7)&7	;volatile
	bsf	(7)+(0/8),(0)&7	;volatile
	bsf	(7)+(1/8),(1)&7	;volatile
	line	148
;main.c: 148: break;
	goto	l600
	line	149
;main.c: 149: default:
	
l599:	
	line	150
;main.c: 150: PORTB&=~(1<<7); PORTC&=~(1<<0); PORTC&=~(1<<1);
	bcf	(6)+(7/8),(7)&7	;volatile
	bcf	(7)+(0/8),(0)&7	;volatile
	bcf	(7)+(1/8),(1)&7	;volatile
	line	151
;main.c: 151: break;
	goto	l600
	line	134
	
l2339:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            7     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (setLedOn@ledIndex+1),w
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2583
	goto	l599
	opt asmopt_pop
	
l2583:	
; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           13     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (setLedOn@ledIndex),w
	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l594
	xorlw	2^1	; case 2
	skipnz
	goto	l596
	xorlw	3^2	; case 3
	skipnz
	goto	l597
	xorlw	4^3	; case 4
	skipnz
	goto	l598
	goto	l599
	opt asmopt_pop

	line	153
	
l600:	
	return
	opt stack 0
GLOBAL	__end_of_setLedOn
	__end_of_setLedOn:
	signat	_setLedOn,4217
	global	_Init_PWM

;; *************** function _Init_PWM *****************
;; Defined at:
;;		line 44 in file "E:\project\scm\uf166fan\main.c"
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
;;		On exit  : 300/0
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
;;		Nothing
;; This function is called by:
;;		_closeFan
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	44
global __ptext12
__ptext12:	;psect for function _Init_PWM
psect	text12
	file	"E:\project\scm\uf166fan\main.c"
	line	44
	global	__size_of_Init_PWM
	__size_of_Init_PWM	equ	__end_of_Init_PWM-_Init_PWM
	
_Init_PWM:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_PWM: [wreg+status,2]
	line	46
	
l1951:	
;main.c: 46: CCP1CON = 0x0F;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	47
	
l1953:	
;main.c: 47: T2CON = 0;
	clrf	(18)	;volatile
	line	48
	
l1955:	
;main.c: 48: PR2 = 199;
	movlw	low(0C7h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	50
;main.c: 50: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	51
	
l1957:	
;main.c: 51: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	52
;main.c: 52: T2CON = 0;
	clrf	(18)	;volatile
	line	54
	
l573:	
	return
	opt stack 0
GLOBAL	__end_of_Init_PWM
	__end_of_Init_PWM:
	signat	_Init_PWM,89
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
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
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	5
	
l2145:	
# 5 "E:\project\scm\uf166fan\init.c"
nop ;# 
	line	6
# 6 "E:\project\scm\uf166fan\init.c"
clrwdt ;# 
psect	text13
	line	7
	
l2147:	
;init.c: 7: INTCON = 0;
	clrf	(11)	;volatile
	line	8
	
l2149:	
;init.c: 8: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	9
	
l2151:	
;init.c: 9: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
l2153:	
;init.c: 10: INTCON = 0x00;
	clrf	(11)	;volatile
	line	14
	
l1195:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Init_Interupt

;; *************** function _Init_Interupt *****************
;; Defined at:
;;		line 32 in file "E:\project\scm\uf166fan\init.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	32
global __ptext14
__ptext14:	;psect for function _Init_Interupt
psect	text14
	file	"E:\project\scm\uf166fan\init.c"
	line	32
	global	__size_of_Init_Interupt
	__size_of_Init_Interupt	equ	__end_of_Init_Interupt-_Init_Interupt
	
_Init_Interupt:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_Interupt: [wreg+status,2]
	line	34
	
l2169:	
;init.c: 34: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	35
;init.c: 35: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	36
	
l2171:	
;init.c: 36: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	38
	
l1201:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Interupt
	__end_of_Init_Interupt:
	signat	_Init_Interupt,89
	global	_Init_GPIO

;; *************** function _Init_GPIO *****************
;; Defined at:
;;		line 17 in file "E:\project\scm\uf166fan\init.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	17
global __ptext15
__ptext15:	;psect for function _Init_GPIO
psect	text15
	file	"E:\project\scm\uf166fan\init.c"
	line	17
	global	__size_of_Init_GPIO
	__size_of_Init_GPIO	equ	__end_of_Init_GPIO-_Init_GPIO
	
_Init_GPIO:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_GPIO: [wreg+status,2]
	line	19
	
l2155:	
;init.c: 19: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	20
;init.c: 20: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	21
;init.c: 21: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	22
	
l2157:	
;init.c: 22: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	23
	
l2159:	
;init.c: 23: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	24
	
l2161:	
;init.c: 24: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	25
	
l2163:	
;init.c: 25: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	26
	
l2165:	
;init.c: 26: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	27
	
l2167:	
;init.c: 27: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	28
;init.c: 28: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	30
	
l1198:	
	return
	opt stack 0
GLOBAL	__end_of_Init_GPIO
	__end_of_Init_GPIO:
	signat	_Init_GPIO,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 252 in file "E:\project\scm\uf166fan\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          2       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\scm\uf166fan\main.c"
	line	252
global __ptext16
__ptext16:	;psect for function _Timer0_Isr
psect	text16
	file	"E:\project\scm\uf166fan\main.c"
	line	252
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 4
; Regs used in _Timer0_Isr: [wreg+status,2+status,0]
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
	movf	pclath,w
	movwf	(??_Timer0_Isr+1)
	ljmp	_Timer0_Isr
psect	text16
	line	254
	
i1l2275:	
;main.c: 254: if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u74_21
	goto	u74_20
u74_21:
	goto	i1l622
u74_20:
	line	257
	
i1l2277:	
;main.c: 255: {
;main.c: 257: TMR0 += 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	260
	
i1l2279:	
;main.c: 260: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	261
	
i1l2281:	
;main.c: 261: time0Flag =1;
	clrf	(_time0Flag)
	incf	(_time0Flag),f
	line	265
	
i1l622:	
	movf	(??_Timer0_Isr+1),w
	movwf	pclath
	swapf	(??_Timer0_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Timer0_Isr
	__end_of_Timer0_Isr:
	signat	_Timer0_Isr,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
