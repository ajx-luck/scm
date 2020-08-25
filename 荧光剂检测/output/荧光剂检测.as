opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1713S
opt include "C:\¹¤¾ß\µ¥Æ¬»úÑ§Ï°×ÊÁÏ\SC8P\SCMCU_IDE_V2.00.07\data\include\sc8p1713s.cgen.inc"
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
	FNCALL	_main,___lwdiv
	FNCALL	_main,___wmul
	FNCALL	_main,_initConfig
	FNCALL	_main,_keyCtr
	FNCALL	_main,_refreshNub
	FNCALL	_keyCtr,_keyRead
	FNCALL	_ADC_AVG,_ADC_Sample
	FNCALL	_ADC_AVG,___lwdiv
	FNCALL	_ADC_AVG,_refreshNub
	FNCALL	_refreshNub,_DelayXms
	FNCALL	_refreshNub,_QIANG
	FNCALL	_refreshNub,_RUO
	FNCALL	_refreshNub,_WU
	FNCALL	_refreshNub,_ZHONG
	FNCALL	_refreshNub,_low1
	FNCALL	_refreshNub,_low2
	FNCALL	_refreshNub,_low3
	FNCALL	_refreshNub,_low4
	FNCALL	_refreshNub,_setInput
	FNCALL	_low4,_delayms
	FNCALL	_low4,_setHightOutput
	FNCALL	_low4,_setLow
	FNCALL	_low4,_setOutput
	FNCALL	_low4,_setlowOutput
	FNCALL	_low3,_delayms
	FNCALL	_low3,_setHightOutput
	FNCALL	_low3,_setLow
	FNCALL	_low3,_setOutput
	FNCALL	_low3,_setlowOutput
	FNCALL	_low2,_delayms
	FNCALL	_low2,_setHightOutput
	FNCALL	_low2,_setLow
	FNCALL	_low2,_setOutput
	FNCALL	_low2,_setlowOutput
	FNCALL	_low1,_delayms
	FNCALL	_low1,_setHightOutput
	FNCALL	_low1,_setLow
	FNCALL	_low1,_setOutput
	FNCALL	_low1,_setlowOutput
	FNCALL	_setLow,_setHightOutput
	FNCALL	_setLow,_setlowOutput
	FNCALL	_ZHONG,_showNub
	FNCALL	_WU,_setInput
	FNCALL	_WU,_showNub
	FNCALL	_RUO,_showNub
	FNCALL	_QIANG,_showNub
	FNCALL	_showNub,_delayms
	FNCALL	_showNub,_setHightOutput
	FNCALL	_showNub,_setInput
	FNCALL	_showNub,_setOutput
	FNCALL	_showNub,_setlowOutput
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_nubShowTime
	global	_numArray
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
	line	22

;initializer for _nubShowTime
	retlw	014h
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	line	26

;initializer for _numArray
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	067h
	global	_tempgeweiNum
	global	_tempshiweiNum
	global	_tempbaiweiNum
	global	_adresult
	global	_keyCount
	global	_keyNub
	global	_keyClick
	global	_count500ms
	global	_refreshCount
	global	_nubStep
	global	_intFlag
	global	_intCount
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_INTCON
_INTCON	set	11
	global	_PORTE
_PORTE	set	9
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
	global	_T0IF
_T0IF	set	90
	global	_RBIF
_RBIF	set	88
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_IOCB
_IOCB	set	150
	global	_WPUB
_WPUB	set	149
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
	global	_WPUE
_WPUE	set	282
	global	_COMEN
_COMEN	set	407
	global	_WPUC
_WPUC	set	399
	global	_WPUA
_WPUA	set	398
	global	_ANSELH
_ANSELH	set	393
	global	_ANSEL
_ANSEL	set	392
; #config settings
	file	"Ó«¹â¼Á¼ì²â.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_tempgeweiNum:
       ds      1

_tempshiweiNum:
       ds      1

_tempbaiweiNum:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
	line	22
_nubShowTime:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_adresult:
       ds      2

_keyCount:
       ds      1

_keyNub:
       ds      1

_keyClick:
       ds      1

_count500ms:
       ds      1

_refreshCount:
       ds      1

_nubStep:
       ds      1

_intFlag:
       ds      1

_intCount:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
	line	26
_numArray:
       ds      10

	file	"Ó«¹â¼Á¼ì²â.as"
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
	fcall	__pidataBANK0+6		;fetch initializer
	movwf	__pdataBANK0+6&07fh		
	fcall	__pidataBANK0+7		;fetch initializer
	movwf	__pdataBANK0+7&07fh		
	fcall	__pidataBANK0+8		;fetch initializer
	movwf	__pdataBANK0+8&07fh		
	fcall	__pidataBANK0+9		;fetch initializer
	movwf	__pdataBANK0+9&07fh		
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
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
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
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
?_initConfig:	; 1 bytes @ 0x0
?_refreshNub:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
?_setInput:	; 1 bytes @ 0x0
?_DelayXms:	; 1 bytes @ 0x0
?_WU:	; 1 bytes @ 0x0
?_RUO:	; 1 bytes @ 0x0
?_ZHONG:	; 1 bytes @ 0x0
?_QIANG:	; 1 bytes @ 0x0
?_setOutput:	; 1 bytes @ 0x0
?_setHightOutput:	; 1 bytes @ 0x0
?_setlowOutput:	; 1 bytes @ 0x0
?_delayms:	; 1 bytes @ 0x0
?_setLow:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
??_Timer0_Isr:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	ds	2
??_initConfig:	; 1 bytes @ 0x2
??_keyRead:	; 1 bytes @ 0x2
??_setInput:	; 1 bytes @ 0x2
??_DelayXms:	; 1 bytes @ 0x2
??_setOutput:	; 1 bytes @ 0x2
??_setHightOutput:	; 1 bytes @ 0x2
??_setlowOutput:	; 1 bytes @ 0x2
??_delayms:	; 1 bytes @ 0x2
	global	?_ADC_Sample
?_ADC_Sample:	; 2 bytes @ 0x2
	global	?___wmul
?___wmul:	; 2 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	keyRead@KeyStatus
keyRead@KeyStatus:	; 1 bytes @ 0x2
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x2
	global	setHightOutput@outPut
setHightOutput@outPut:	; 1 bytes @ 0x2
	global	setlowOutput@outPut
setlowOutput@outPut:	; 1 bytes @ 0x2
	global	setOutput@outPut
setOutput@outPut:	; 1 bytes @ 0x2
	global	delayms@time
delayms@time:	; 1 bytes @ 0x2
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	ds	1
??_keyCtr:	; 1 bytes @ 0x3
??_setLow:	; 1 bytes @ 0x3
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x3
	global	delayms@i
delayms@i:	; 1 bytes @ 0x3
	ds	1
?_low1:	; 1 bytes @ 0x4
?_low2:	; 1 bytes @ 0x4
?_low3:	; 1 bytes @ 0x4
?_low4:	; 1 bytes @ 0x4
??_ADC_Sample:	; 1 bytes @ 0x4
?_showNub:	; 1 bytes @ 0x4
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x4
	global	showNub@low
showNub@low:	; 1 bytes @ 0x4
	global	low1@shi
low1@shi:	; 1 bytes @ 0x4
	global	low2@shi
low2@shi:	; 1 bytes @ 0x4
	global	low3@shi
low3@shi:	; 1 bytes @ 0x4
	global	low4@shi
low4@shi:	; 1 bytes @ 0x4
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	ds	1
??_showNub:	; 1 bytes @ 0x5
	global	showNub@hight
showNub@hight:	; 1 bytes @ 0x5
	global	low1@ge
low1@ge:	; 1 bytes @ 0x5
	global	low2@ge
low2@ge:	; 1 bytes @ 0x5
	global	low3@ge
low3@ge:	; 1 bytes @ 0x5
	global	low4@ge
low4@ge:	; 1 bytes @ 0x5
	ds	1
??_WU:	; 1 bytes @ 0x6
??_RUO:	; 1 bytes @ 0x6
??_ZHONG:	; 1 bytes @ 0x6
??_QIANG:	; 1 bytes @ 0x6
??___wmul:	; 1 bytes @ 0x6
??___lwdiv:	; 1 bytes @ 0x6
	global	low1@dp
low1@dp:	; 1 bytes @ 0x6
	global	low2@h4
low2@h4:	; 1 bytes @ 0x6
	global	low3@h5
low3@h5:	; 1 bytes @ 0x6
	global	low4@h6
low4@h6:	; 1 bytes @ 0x6
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x6
	ds	1
??_low2:	; 1 bytes @ 0x7
??_low3:	; 1 bytes @ 0x7
	global	low1@h3
low1@h3:	; 1 bytes @ 0x7
	global	low4@h123
low4@h123:	; 1 bytes @ 0x7
	ds	1
??_refreshNub:	; 1 bytes @ 0x8
??_ADC_AVG:	; 1 bytes @ 0x8
??_main:	; 1 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_low1:	; 1 bytes @ 0x0
??_low4:	; 1 bytes @ 0x0
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x0
	global	low2@bai
low2@bai:	; 1 bytes @ 0x0
	global	low3@bai
low3@bai:	; 1 bytes @ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x1
	global	low1@bai
low1@bai:	; 1 bytes @ 0x1
	global	low4@bai
low4@bai:	; 1 bytes @ 0x1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	1
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0x2
	ds	2
	global	?_ADC_AVG
?_ADC_AVG:	; 2 bytes @ 0x4
	global	ADC_AVG@adtime
ADC_AVG@adtime:	; 1 bytes @ 0x4
	ds	3
	global	ADC_AVG@adch
ADC_AVG@adch:	; 1 bytes @ 0x7
	ds	1
	global	ADC_AVG@adsum
ADC_AVG@adsum:	; 2 bytes @ 0x8
	ds	2
	global	ADC_AVG@i
ADC_AVG@i:	; 1 bytes @ 0xA
	ds	1
	global	main@av
main@av:	; 2 bytes @ 0xB
	ds	2
	global	main@res
main@res:	; 2 bytes @ 0xD
	ds	2
	global	main@res2
main@res2:	; 2 bytes @ 0xF
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x11
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        11
;!    BSS         13
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      12
;!    BANK0            80     19      39
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___wmul
;!    _keyCtr->_keyRead
;!    _refreshNub->_low1
;!    _refreshNub->_low2
;!    _refreshNub->_low3
;!    _refreshNub->_low4
;!    _low4->_delayms
;!    _low3->_delayms
;!    _low2->_delayms
;!    _low1->_delayms
;!    _setLow->_setHightOutput
;!    _setLow->_setlowOutput
;!    _ZHONG->_showNub
;!    _WU->_showNub
;!    _RUO->_showNub
;!    _QIANG->_showNub
;!    _showNub->_delayms
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_ADC_AVG
;!    _ADC_AVG->_ADC_Sample
;!    _refreshNub->_low1
;!    _refreshNub->_low4
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
;! (0) _main                                                 8     8      0   19687
;!                                             11 BANK0      8     8      0
;!                            _ADC_AVG
;!                            ___lwdiv
;!                             ___wmul
;!                         _initConfig
;!                             _keyCtr
;!                         _refreshNub
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               0     0      0      44
;!                            _keyRead
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      44
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _initConfig                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) ___wmul                                               6     2      4     198
;!                                              2 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _ADC_AVG                                              7     4      3    9820
;!                                              4 BANK0      7     4      3
;!                         _ADC_Sample
;!                            ___lwdiv
;!                         _refreshNub
;! ---------------------------------------------------------------------------------
;! (1) _refreshNub                                           0     0      0    8713
;!                           _DelayXms
;!                              _QIANG
;!                                _RUO
;!                                 _WU
;!                              _ZHONG
;!                               _low1
;!                               _low2
;!                               _low3
;!                               _low4
;!                           _setInput
;! ---------------------------------------------------------------------------------
;! (2) _low4                                                 6     2      4     731
;!                                              4 COMMON     4     0      4
;!                                              0 BANK0      2     2      0
;!                            _delayms
;!                     _setHightOutput
;!                             _setLow
;!                          _setOutput
;!                       _setlowOutput
;! ---------------------------------------------------------------------------------
;! (2) _low3                                                 5     2      3     635
;!                                              4 COMMON     4     1      3
;!                                              0 BANK0      1     1      0
;!                            _delayms
;!                     _setHightOutput
;!                             _setLow
;!                          _setOutput
;!                       _setlowOutput
;! ---------------------------------------------------------------------------------
;! (2) _low2                                                 5     2      3     635
;!                                              4 COMMON     4     1      3
;!                                              0 BANK0      1     1      0
;!                            _delayms
;!                     _setHightOutput
;!                             _setLow
;!                          _setOutput
;!                       _setlowOutput
;! ---------------------------------------------------------------------------------
;! (2) _low1                                                 6     2      4     638
;!                                              4 COMMON     4     0      4
;!                                              0 BANK0      2     2      0
;!                            _delayms
;!                     _setHightOutput
;!                             _setLow
;!                          _setOutput
;!                       _setlowOutput
;! ---------------------------------------------------------------------------------
;! (3) _setLow                                               0     0      0      62
;!                     _setHightOutput
;!                       _setlowOutput
;! ---------------------------------------------------------------------------------
;! (2) _ZHONG                                                0     0      0    1490
;!                            _showNub
;! ---------------------------------------------------------------------------------
;! (2) _WU                                                   0     0      0    1490
;!                           _setInput
;!                            _showNub
;! ---------------------------------------------------------------------------------
;! (2) _RUO                                                  0     0      0    1490
;!                            _showNub
;! ---------------------------------------------------------------------------------
;! (2) _QIANG                                                0     0      0    1490
;!                            _showNub
;! ---------------------------------------------------------------------------------
;! (3) _showNub                                              2     1      1    1490
;!                                              4 COMMON     2     1      1
;!                            _delayms
;!                     _setHightOutput
;!                           _setInput
;!                          _setOutput
;!                       _setlowOutput
;! ---------------------------------------------------------------------------------
;! (3) _setlowOutput                                         1     1      0      31
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _setOutput                                            1     1      0      31
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _setInput                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _setHightOutput                                       1     1      0      31
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _delayms                                              2     2      0      68
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _DelayXms                                             3     3      0     114
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) ___lwdiv                                              7     3      4     705
;!                                              2 COMMON     4     0      4
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                          14    12      2     105
;!                                              2 COMMON     3     1      2
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _Timer0_Isr                                           2     2      0       0
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
;!     _refreshNub
;!       _DelayXms
;!       _QIANG
;!         _showNub
;!           _delayms
;!           _setHightOutput
;!           _setInput
;!           _setOutput
;!           _setlowOutput
;!       _RUO
;!         _showNub
;!           _delayms
;!           _setHightOutput
;!           _setInput
;!           _setOutput
;!           _setlowOutput
;!       _WU
;!         _setInput
;!         _showNub
;!           _delayms
;!           _setHightOutput
;!           _setInput
;!           _setOutput
;!           _setlowOutput
;!       _ZHONG
;!         _showNub
;!           _delayms
;!           _setHightOutput
;!           _setInput
;!           _setOutput
;!           _setlowOutput
;!       _low1
;!         _delayms
;!         _setHightOutput
;!         _setLow
;!           _setHightOutput
;!           _setlowOutput
;!         _setOutput
;!         _setlowOutput
;!       _low2
;!         _delayms
;!         _setHightOutput
;!         _setLow
;!           _setHightOutput
;!           _setlowOutput
;!         _setOutput
;!         _setlowOutput
;!       _low3
;!         _delayms
;!         _setHightOutput
;!         _setLow
;!           _setHightOutput
;!           _setlowOutput
;!         _setOutput
;!         _setlowOutput
;!       _low4
;!         _delayms
;!         _setHightOutput
;!         _setLow
;!           _setHightOutput
;!           _setlowOutput
;!         _setOutput
;!         _setlowOutput
;!       _setInput
;!   ___lwdiv
;!   ___wmul
;!   _initConfig
;!   _keyCtr
;!     _keyRead
;!   _refreshNub
;!     _DelayXms
;!     _QIANG
;!       _showNub
;!         _delayms
;!         _setHightOutput
;!         _setInput
;!         _setOutput
;!         _setlowOutput
;!     _RUO
;!       _showNub
;!         _delayms
;!         _setHightOutput
;!         _setInput
;!         _setOutput
;!         _setlowOutput
;!     _WU
;!       _setInput
;!       _showNub
;!         _delayms
;!         _setHightOutput
;!         _setInput
;!         _setOutput
;!         _setlowOutput
;!     _ZHONG
;!       _showNub
;!         _delayms
;!         _setHightOutput
;!         _setInput
;!         _setOutput
;!         _setlowOutput
;!     _low1
;!       _delayms
;!       _setHightOutput
;!       _setLow
;!         _setHightOutput
;!         _setlowOutput
;!       _setOutput
;!       _setlowOutput
;!     _low2
;!       _delayms
;!       _setHightOutput
;!       _setLow
;!         _setHightOutput
;!         _setlowOutput
;!       _setOutput
;!       _setlowOutput
;!     _low3
;!       _delayms
;!       _setHightOutput
;!       _setLow
;!         _setHightOutput
;!         _setlowOutput
;!       _setOutput
;!       _setlowOutput
;!     _low4
;!       _delayms
;!       _setHightOutput
;!       _setLow
;!         _setHightOutput
;!         _setlowOutput
;!       _setOutput
;!       _setlowOutput
;!     _setInput
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
;!BANK0               50     13      27       5       48.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      8       C       1       85.7%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      33       8        0.0%
;!ABS                  0      0      33       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 66 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   17[BANK0 ] int 
;;  res2            2   15[BANK0 ] unsigned int 
;;  res             2   13[BANK0 ] unsigned int 
;;  av              2   11[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       8       0
;;      Temps:          0       0       0
;;      Totals:         0       8       0
;;Total ram usage:        8 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ADC_AVG
;;		___lwdiv
;;		___wmul
;;		_initConfig
;;		_keyCtr
;;		_refreshNub
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
	line	66
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
	line	66
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	68
	
l3916:	
;main.c: 68: initConfig();
	fcall	_initConfig
	line	70
;main.c: 69: for(;;)
	
l615:	
	line	71
# 71 "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
clrwdt ;# 
psect	maintext
	line	72
	
l3918:	
;main.c: 72: refreshNub();
	fcall	_refreshNub
	line	73
	
l3920:	
;main.c: 73: if(intFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_intFlag)),w
	btfss	status,2
	goto	u1821
	goto	u1820
u1821:
	goto	l3924
u1820:
	goto	l615
	line	75
	
l3924:	
;main.c: 75: intFlag = 0;
	clrf	(_intFlag)
	line	77
	
l3926:	
;main.c: 77: keyCtr();
	fcall	_keyCtr
	line	79
	
l3928:	
;main.c: 79: TRISB |= 0x04;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(2/8),(2)&7	;volatile
	line	80
	
l3930:	
;main.c: 80: ANSEL = 0x00;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	81
	
l3932:	
;main.c: 81: ANSELH = 0x01;
	movlw	low(01h)
	movwf	(393)^0180h	;volatile
	line	83
	
l3934:	
;main.c: 83: uint16 res = ADC_AVG(0x0F,8);
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ADC_AVG@adtime)
	movlw	low(0Fh)
	fcall	_ADC_AVG
	movf	(1+(?_ADC_AVG)),w
	movwf	(main@res+1)
	movf	(0+(?_ADC_AVG)),w
	movwf	(main@res)
	line	84
	
l3936:	
;main.c: 84: uint16 av = 6000/res;
	movf	(main@res+1),w
	movwf	(___lwdiv@divisor+1)
	movf	(main@res),w
	movwf	(___lwdiv@divisor)
	movlw	070h
	movwf	(___lwdiv@dividend)
	movlw	017h
	movwf	((___lwdiv@dividend))+1
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@av+1)
	movf	(0+(?___lwdiv)),w
	movwf	(main@av)
	line	85
	
l3938:	
	line	86
	
l3940:	
;main.c: 86: for(int i=0;i<10;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	line	88
	
l3946:	
;main.c: 87: {
;main.c: 88: refreshNub();
	fcall	_refreshNub
	line	86
	
l3948:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(main@i),f
	skipnz
	incf	(main@i+1),f
	
l3950:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u1835
	movlw	0Ah
	subwf	(main@i),w
u1835:

	skipc
	goto	u1831
	goto	u1830
u1831:
	goto	l3946
u1830:
	line	104
	
l3952:	
;main.c: 89: }
;main.c: 104: res2 = ADC_AVG(0x08,8);
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ADC_AVG@adtime)
	movlw	low(08h)
	fcall	_ADC_AVG
	movf	(1+(?_ADC_AVG)),w
	movwf	(main@res2+1)
	movf	(0+(?_ADC_AVG)),w
	movwf	(main@res2)
	line	105
	
l3954:	
;main.c: 105: if(res2)
	movf	((main@res2)),w
iorwf	((main@res2+1)),w
	btfsc	status,2
	goto	u1841
	goto	u1840
u1841:
	goto	l3960
u1840:
	line	108
	
l3956:	
	movf	(main@res2+1),w
	movwf	(___wmul@multiplier+1)
	movf	(main@res2),w
	movwf	(___wmul@multiplier)
	movf	(main@av+1),w
	movwf	(___wmul@multiplicand+1)
	movf	(main@av),w
	movwf	(___wmul@multiplicand)
	fcall	___wmul
	line	110
	
l3958:	
;main.c: 110: nubShowTime = 20;
	movlw	low(014h)
	movwf	(_nubShowTime)
	line	112
	
l3960:	
;main.c: 111: }
;main.c: 112: nubShowTime = 20;
	movlw	low(014h)
	movwf	(_nubShowTime)
	goto	l615
	global	start
	ljmp	start
	opt stack 0
	line	115
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 118 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_keyRead
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	118
global __ptext1
__ptext1:	;psect for function _keyCtr
psect	text1
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
	line	118
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	120
	
l3392:	
;main.c: 120: keyClick = keyRead(0x18&(~PORTB));
	comf	(6),w	;volatile
	andlw	018h
	fcall	_keyRead
	movwf	(_keyClick)
	line	121
	
l3394:	
;main.c: 121: if(keyClick > 0)
	movf	((_keyClick)),w
	btfsc	status,2
	goto	u1181
	goto	u1180
u1181:
	goto	l628
u1180:
	line	123
	
l3396:	
;main.c: 122: {
;main.c: 123: if(keyNub & 0x08)
	btfss	(_keyNub),(3)&7
	goto	u1191
	goto	u1190
u1191:
	goto	l626
u1190:
	line	126
	
l3398:	
;main.c: 124: {
;main.c: 126: PORTB ^= 0x20;
	movlw	low(020h)
	xorwf	(6),f	;volatile
	line	127
;main.c: 127: }
	goto	l628
	line	128
	
l626:	
	line	131
;main.c: 128: else
;main.c: 129: {
;main.c: 131: PORTE |= 0x01;
	bsf	(9)+(0/8),(0)&7	;volatile
	line	132
	
l3400:	
;main.c: 132: nubShowTime = 20;
	movlw	low(014h)
	movwf	(_nubShowTime)
	line	133
	
l3402:	
;main.c: 133: count500ms = 0;
	clrf	(_count500ms)
	line	138
	
l628:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 256 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
;; Parameters:    Size  Location     Type
;;  KeyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  KeyStatus       1    2[COMMON] unsigned char 
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
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	256
global __ptext2
__ptext2:	;psect for function _keyRead
psect	text2
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
	line	256
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@KeyStatus stored from wreg
	movwf	(keyRead@KeyStatus)
	line	258
	
l3312:	
;main.c: 258: if (KeyStatus)
	movf	((keyRead@KeyStatus)),w
	btfsc	status,2
	goto	u1091
	goto	u1090
u1091:
	goto	l3318
u1090:
	line	260
	
l3314:	
;main.c: 259: {
;main.c: 260: keyNub = KeyStatus;
	movf	(keyRead@KeyStatus),w
	movwf	(_keyNub)
	line	261
	
l3316:	
;main.c: 261: keyCount++;
	incf	(_keyCount),f
	line	262
;main.c: 262: }
	goto	l3328
	line	265
	
l3318:	
;main.c: 263: else
;main.c: 264: {
;main.c: 265: if(keyCount >= 8)
	movlw	low(08h)
	subwf	(_keyCount),w
	skipc
	goto	u1101
	goto	u1100
u1101:
	goto	l3326
u1100:
	line	267
	
l3320:	
;main.c: 266: {
;main.c: 267: keyCount = 0;
	clrf	(_keyCount)
	line	268
	
l3322:	
;main.c: 268: return 1;
	movlw	low(01h)
	goto	l657
	line	270
	
l3326:	
;main.c: 269: }
;main.c: 270: keyCount = 0;
	clrf	(_keyCount)
	line	271
;main.c: 271: keyNub = 0;
	clrf	(_keyNub)
	line	273
	
l3328:	
;main.c: 272: }
;main.c: 273: return 0;
	movlw	low(0)
	line	274
	
l657:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_initConfig

;; *************** function _initConfig *****************
;; Defined at:
;;		line 199 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	199
global __ptext3
__ptext3:	;psect for function _initConfig
psect	text3
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
	line	199
	global	__size_of_initConfig
	__size_of_initConfig	equ	__end_of_initConfig-_initConfig
	
_initConfig:	
;incstack = 0
	opt	stack 6
; Regs used in _initConfig: [wreg+status,2]
	line	201
	
l3376:	
;main.c: 201: COMEN = 0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(407)^0180h	;volatile
	line	202
;main.c: 202: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	203
;main.c: 203: PORTB = 0x00;
	clrf	(6)	;volatile
	line	204
;main.c: 204: PORTC = 0x00;
	clrf	(7)	;volatile
	line	205
;main.c: 205: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	206
	
l3378:	
;main.c: 206: TRISB = 0x18;
	movlw	low(018h)
	movwf	(134)^080h	;volatile
	line	207
	
l3380:	
;main.c: 207: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	208
	
l3382:	
;main.c: 208: WPUA = 0x00;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(398)^0180h	;volatile
	line	209
	
l3384:	
;main.c: 209: WPUB = 0x18;
	movlw	low(018h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	210
;main.c: 210: WPUC = 0x00;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(399)^0180h	;volatile
	line	211
;main.c: 211: WPUE = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	clrf	(282)^0100h	;volatile
	line	212
;main.c: 212: PORTA = 0x00;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	213
;main.c: 213: PORTB = 0x00;
	clrf	(6)	;volatile
	line	214
;main.c: 214: PORTC = 0x00;
	clrf	(7)	;volatile
	line	215
;main.c: 215: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	218
# 218 "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
nop ;# 
	line	219
# 219 "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
clrwdt ;# 
psect	text3
	line	220
;main.c: 220: INTCON = 0;
	clrf	(11)	;volatile
	line	221
	
l3386:	
;main.c: 221: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	222
	
l3388:	
;main.c: 222: OPTION_REG = 0x06;
	movlw	low(06h)
	movwf	(129)^080h	;volatile
	line	224
;main.c: 224: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	225
	
l3390:	
;main.c: 225: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	226
	
l648:	
	return
	opt stack 0
GLOBAL	__end_of_initConfig
	__end_of_initConfig:
	signat	_initConfig,89
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\¹¤¾ß\µ¥Æ¬»úÑ§Ï°×ÊÁÏ\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    2[COMMON] unsigned int 
;;  multiplicand    2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\¹¤¾ß\µ¥Æ¬»úÑ§Ï°×ÊÁÏ\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\Umul16.c"
	line	15
global __ptext4
__ptext4:	;psect for function ___wmul
psect	text4
	file	"C:\¹¤¾ß\µ¥Æ¬»úÑ§Ï°×ÊÁÏ\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l3418:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l3420:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1211
	goto	u1210
u1211:
	goto	l3424
u1210:
	line	46
	
l3422:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	47
	
l3424:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	48
	
l3426:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	49
	
l3428:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u1221
	goto	u1220
u1221:
	goto	l3420
u1220:
	line	52
	
l3430:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l2068:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_ADC_AVG

;; *************** function _ADC_AVG *****************
;; Defined at:
;;		line 187 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;;  adtime          1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    7[BANK0 ] unsigned char 
;;  i               1   10[BANK0 ] unsigned char 
;;  adsum           2    8[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       3       0
;;      Locals:         0       4       0
;;      Temps:          0       0       0
;;      Totals:         0       7       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_ADC_Sample
;;		___lwdiv
;;		_refreshNub
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
	line	187
global __ptext5
__ptext5:	;psect for function _ADC_AVG
psect	text5
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
	line	187
	global	__size_of_ADC_AVG
	__size_of_ADC_AVG	equ	__end_of_ADC_AVG-_ADC_AVG
	
_ADC_AVG:	
;incstack = 0
	opt	stack 2
; Regs used in _ADC_AVG: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;ADC_AVG@adch stored from wreg
	movwf	(ADC_AVG@adch)
	line	189
	
l3902:	
;main.c: 189: unsigned int adsum = 0;
	clrf	(ADC_AVG@adsum)
	clrf	(ADC_AVG@adsum+1)
	line	190
;main.c: 190: for(char i = 0; i< adtime;i++)
	clrf	(ADC_AVG@i)
	goto	l3910
	line	192
	
l3904:	
;main.c: 191: {
;main.c: 192: adsum+=ADC_Sample(adch);
	movf	(ADC_AVG@adch),w
	fcall	_ADC_Sample
	movf	(0+(?_ADC_Sample)),w
	addwf	(ADC_AVG@adsum),f
	skipnc
	incf	(ADC_AVG@adsum+1),f
	movf	(1+(?_ADC_Sample)),w
	addwf	(ADC_AVG@adsum+1),f
	line	193
	
l3906:	
;main.c: 193: refreshNub();
	fcall	_refreshNub
	line	190
	
l3908:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(ADC_AVG@i),f
	
l3910:	
	movf	(ADC_AVG@adtime),w
	subwf	(ADC_AVG@i),w
	skipc
	goto	u1811
	goto	u1810
u1811:
	goto	l3904
u1810:
	line	195
	
l3912:	
;main.c: 194: }
;main.c: 195: return adsum/adtime;
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
	line	196
	
l645:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_AVG
	__end_of_ADC_AVG:
	signat	_ADC_AVG,8314
	global	_refreshNub

;; *************** function _refreshNub *****************
;; Defined at:
;;		line 141 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DelayXms
;;		_QIANG
;;		_RUO
;;		_WU
;;		_ZHONG
;;		_low1
;;		_low2
;;		_low3
;;		_low4
;;		_setInput
;; This function is called by:
;;		_main
;;		_ADC_AVG
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	141
global __ptext6
__ptext6:	;psect for function _refreshNub
psect	text6
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
	line	141
	global	__size_of_refreshNub
	__size_of_refreshNub	equ	__end_of_refreshNub-_refreshNub
	
_refreshNub:	
;incstack = 0
	opt	stack 3
; Regs used in _refreshNub: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	143
	
l3820:	
;main.c: 143: if(nubShowTime == 0)
	movf	((_nubShowTime)),w
	btfss	status,2
	goto	u1721
	goto	u1720
u1721:
	goto	l3826
u1720:
	line	145
	
l3822:	
;main.c: 144: {
;main.c: 145: setInput();
	fcall	_setInput
	goto	l632
	line	148
	
l3826:	
;main.c: 147: }
;main.c: 148: if(++refreshCount >= 10)
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_refreshCount),f
	subwf	((_refreshCount)),w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l3830
u1730:
	line	150
	
l3828:	
;main.c: 149: {
;main.c: 150: refreshCount = 0;
	clrf	(_refreshCount)
	line	151
;main.c: 151: tempbaiweiNum = ygNub/100;
	clrf	(_tempbaiweiNum)
	line	152
;main.c: 152: tempshiweiNum = (ygNub%100)/10;
	clrf	(_tempshiweiNum)
	line	153
;main.c: 153: tempgeweiNum = ygNub%10;
	clrf	(_tempgeweiNum)
	line	155
	
l3830:	
;main.c: 154: }
;main.c: 155: low1(numArray[tempbaiweiNum],numArray[tempshiweiNum],numArray[tempgeweiNum],1,1);
	movf	(_tempshiweiNum),w
	addlw	low(_numArray|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(low1@shi)
	movf	(_tempgeweiNum),w
	addlw	low(_numArray|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(low1@ge)
	clrf	(low1@dp)
	incf	(low1@dp),f
	clrf	(low1@h3)
	incf	(low1@h3),f
	movf	(_tempbaiweiNum),w
	addlw	low(_numArray|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_low1
	line	156
	
l3832:	
;main.c: 156: low2(numArray[tempbaiweiNum],numArray[tempshiweiNum],numArray[tempgeweiNum],1);
	movf	(_tempshiweiNum),w
	addlw	low(_numArray|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(low2@shi)
	movf	(_tempgeweiNum),w
	addlw	low(_numArray|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(low2@ge)
	clrf	(low2@h4)
	incf	(low2@h4),f
	movf	(_tempbaiweiNum),w
	addlw	low(_numArray|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_low2
	line	157
	
l3834:	
;main.c: 157: low3(numArray[tempbaiweiNum],numArray[tempshiweiNum],numArray[tempgeweiNum],1);
	movf	(_tempshiweiNum),w
	addlw	low(_numArray|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(low3@shi)
	movf	(_tempgeweiNum),w
	addlw	low(_numArray|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(low3@ge)
	clrf	(low3@h5)
	incf	(low3@h5),f
	movf	(_tempbaiweiNum),w
	addlw	low(_numArray|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_low3
	line	158
	
l3836:	
;main.c: 158: low4(numArray[tempbaiweiNum],numArray[tempshiweiNum],numArray[tempgeweiNum],1,1);
	movf	(_tempshiweiNum),w
	addlw	low(_numArray|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(low4@shi)
	movf	(_tempgeweiNum),w
	addlw	low(_numArray|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(low4@ge)
	clrf	(low4@h6)
	incf	(low4@h6),f
	clrf	(low4@h123)
	incf	(low4@h123),f
	movf	(_tempbaiweiNum),w
	addlw	low(_numArray|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_low4
	line	168
	
l3838:	
;main.c: 168: DelayXms(1);
	movlw	low(01h)
	fcall	_DelayXms
	line	169
;main.c: 169: switch(nubStep)
	goto	l3850
	line	172
	
l3840:	
;main.c: 172: WU();
	fcall	_WU
	line	173
;main.c: 173: break;
	goto	l3852
	line	175
	
l3842:	
;main.c: 175: RUO();
	fcall	_RUO
	line	176
;main.c: 176: break;
	goto	l3852
	line	178
	
l3844:	
;main.c: 178: ZHONG();
	fcall	_ZHONG
	line	179
;main.c: 179: break;
	goto	l3852
	line	181
	
l3846:	
;main.c: 181: QIANG();
	fcall	_QIANG
	line	182
;main.c: 182: break;
	goto	l3852
	line	169
	
l3850:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nubStep),w
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
goto l3852
movlw high(S4042)
movwf pclath
	movlw low(S4042)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S4042:
	ljmp	l3840
	ljmp	l3842
	ljmp	l3844
	ljmp	l3846
psect	text6

	line	184
	
l3852:	
;main.c: 184: DelayXms(3);
	movlw	low(03h)
	fcall	_DelayXms
	line	185
	
l632:	
	return
	opt stack 0
GLOBAL	__end_of_refreshNub
	__end_of_refreshNub:
	signat	_refreshNub,89
	global	_low4

;; *************** function _low4 *****************
;; Defined at:
;;		line 559 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
;; Parameters:    Size  Location     Type
;;  bai             1    wreg     unsigned char 
;;  shi             1    4[COMMON] unsigned char 
;;  ge              1    5[COMMON] unsigned char 
;;  h6              1    6[COMMON] unsigned char 
;;  h123            1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  bai             1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 800/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         0       1       0
;;      Temps:          0       1       0
;;      Totals:         4       2       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delayms
;;		_setHightOutput
;;		_setLow
;;		_setOutput
;;		_setlowOutput
;; This function is called by:
;;		_refreshNub
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	559
global __ptext7
__ptext7:	;psect for function _low4
psect	text7
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	559
	global	__size_of_low4
	__size_of_low4	equ	__end_of_low4-_low4
	
_low4:	
;incstack = 0
	opt	stack 3
; Regs used in _low4: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;low4@bai stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(low4@bai)
	line	561
	
l3770:	
;number.c: 561: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	562
	
l3772:	
;number.c: 562: setLow();
	fcall	_setLow
	line	563
	
l3774:	
;number.c: 563: setlowOutput(4);
	movlw	low(04h)
	fcall	_setlowOutput
	line	565
	
l3776:	
;number.c: 565: if((bai >> 0) & 0x01)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(low4@bai),(0)&7
	goto	u1641
	goto	u1640
u1641:
	goto	l3780
u1640:
	line	567
	
l3778:	
;number.c: 566: {
;number.c: 567: setOutput(6);
	movlw	low(06h)
	fcall	_setOutput
	line	568
;number.c: 568: setHightOutput(6);
	movlw	low(06h)
	fcall	_setHightOutput
	line	570
	
l3780:	
;number.c: 569: }
;number.c: 570: if((shi >> 0) & 0x01)
	btfss	(low4@shi),(0)&7
	goto	u1651
	goto	u1650
u1651:
	goto	l3784
u1650:
	line	572
	
l3782:	
;number.c: 571: {
;number.c: 572: setOutput(8);
	movlw	low(08h)
	fcall	_setOutput
	line	573
;number.c: 573: setHightOutput(8);
	movlw	low(08h)
	fcall	_setHightOutput
	line	575
	
l3784:	
;number.c: 574: }
;number.c: 575: if((ge >> 0) & 0x01)
	btfss	(low4@ge),(0)&7
	goto	u1661
	goto	u1660
u1661:
	goto	l3788
u1660:
	line	577
	
l3786:	
;number.c: 576: {
;number.c: 577: setOutput(10);
	movlw	low(0Ah)
	fcall	_setOutput
	line	578
;number.c: 578: setHightOutput(10);
	movlw	low(0Ah)
	fcall	_setHightOutput
	line	581
	
l3788:	
;number.c: 579: }
;number.c: 581: if((bai >> 1) & 0x01)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(low4@bai),w
	movwf	(??_low4+0)+0
	clrc
	rrf	(??_low4+0)+0,f
	btfss	0+(??_low4+0)+0,(0)&7
	goto	u1671
	goto	u1670
u1671:
	goto	l3792
u1670:
	line	583
	
l3790:	
;number.c: 582: {
;number.c: 583: setOutput(7);
	movlw	low(07h)
	fcall	_setOutput
	line	584
;number.c: 584: setHightOutput(7);
	movlw	low(07h)
	fcall	_setHightOutput
	line	586
	
l3792:	
;number.c: 585: }
;number.c: 586: if((shi >> 1) & 0x01)
	movf	(low4@shi),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_low4+0)+0
	clrc
	rrf	(??_low4+0)+0,f
	btfss	0+(??_low4+0)+0,(0)&7
	goto	u1681
	goto	u1680
u1681:
	goto	l3796
u1680:
	line	588
	
l3794:	
;number.c: 587: {
;number.c: 588: setOutput(9);
	movlw	low(09h)
	fcall	_setOutput
	line	589
;number.c: 589: setHightOutput(9);
	movlw	low(09h)
	fcall	_setHightOutput
	line	591
	
l3796:	
;number.c: 590: }
;number.c: 591: if((ge >> 1) & 0x01)
	movf	(low4@ge),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_low4+0)+0
	clrc
	rrf	(??_low4+0)+0,f
	btfss	0+(??_low4+0)+0,(0)&7
	goto	u1691
	goto	u1690
u1691:
	goto	l3800
u1690:
	line	593
	
l3798:	
;number.c: 592: {
;number.c: 593: setOutput(11);
	movlw	low(0Bh)
	fcall	_setOutput
	line	594
;number.c: 594: setHightOutput(11);
	movlw	low(0Bh)
	fcall	_setHightOutput
	line	596
	
l3800:	
;number.c: 595: }
;number.c: 596: if(h6)
	movf	((low4@h6)),w
	btfsc	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l3804
u1700:
	line	598
	
l3802:	
;number.c: 597: {
;number.c: 598: setOutput(12);
	movlw	low(0Ch)
	fcall	_setOutput
	line	599
;number.c: 599: setHightOutput(12);
	movlw	low(0Ch)
	fcall	_setHightOutput
	line	601
	
l3804:	
;number.c: 600: }
;number.c: 601: if(h123)
	movf	((low4@h123)),w
	btfsc	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l3808
u1710:
	line	603
	
l3806:	
;number.c: 602: {
;number.c: 603: setOutput(5);
	movlw	low(05h)
	fcall	_setOutput
	line	604
;number.c: 604: setHightOutput(5);
	movlw	low(05h)
	fcall	_setHightOutput
	line	606
	
l3808:	
;number.c: 605: }
;number.c: 606: delayms(15);
	movlw	low(0Fh)
	fcall	_delayms
	line	607
	
l2053:	
	return
	opt stack 0
GLOBAL	__end_of_low4
	__end_of_low4:
	signat	_low4,20601
	global	_low3

;; *************** function _low3 *****************
;; Defined at:
;;		line 515 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
;; Parameters:    Size  Location     Type
;;  bai             1    wreg     unsigned char 
;;  shi             1    4[COMMON] unsigned char 
;;  ge              1    5[COMMON] unsigned char 
;;  h5              1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  bai             1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 800/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         3       0       0
;;      Locals:         0       1       0
;;      Temps:          1       0       0
;;      Totals:         4       1       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delayms
;;		_setHightOutput
;;		_setLow
;;		_setOutput
;;		_setlowOutput
;; This function is called by:
;;		_refreshNub
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	515
global __ptext8
__ptext8:	;psect for function _low3
psect	text8
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	515
	global	__size_of_low3
	__size_of_low3	equ	__end_of_low3-_low3
	
_low3:	
;incstack = 0
	opt	stack 3
; Regs used in _low3: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;low3@bai stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(low3@bai)
	line	517
	
l3734:	
;number.c: 517: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	518
	
l3736:	
;number.c: 518: setLow();
	fcall	_setLow
	line	519
	
l3738:	
;number.c: 519: setlowOutput(3);
	movlw	low(03h)
	fcall	_setlowOutput
	line	520
	
l3740:	
;number.c: 520: if((bai >> 5) & 0x01)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(low3@bai),w
	movwf	(??_low3+0)+0
	movlw	05h
u1515:
	clrc
	rrf	(??_low3+0)+0,f
	addlw	-1
	skipz
	goto	u1515
	btfss	0+(??_low3+0)+0,(0)&7
	goto	u1521
	goto	u1520
u1521:
	goto	l3744
u1520:
	line	522
	
l3742:	
;number.c: 521: {
;number.c: 522: setOutput(6);
	movlw	low(06h)
	fcall	_setOutput
	line	523
;number.c: 523: setHightOutput(6);
	movlw	low(06h)
	fcall	_setHightOutput
	line	525
	
l3744:	
;number.c: 524: }
;number.c: 525: if((shi >> 5) & 0x01)
	movf	(low3@shi),w
	movwf	(??_low3+0)+0
	movlw	05h
u1535:
	clrc
	rrf	(??_low3+0)+0,f
	addlw	-1
	skipz
	goto	u1535
	btfss	0+(??_low3+0)+0,(0)&7
	goto	u1541
	goto	u1540
u1541:
	goto	l3748
u1540:
	line	527
	
l3746:	
;number.c: 526: {
;number.c: 527: setOutput(8);
	movlw	low(08h)
	fcall	_setOutput
	line	528
;number.c: 528: setHightOutput(8);
	movlw	low(08h)
	fcall	_setHightOutput
	line	530
	
l3748:	
;number.c: 529: }
;number.c: 530: if((ge >> 5) & 0x01)
	movf	(low3@ge),w
	movwf	(??_low3+0)+0
	movlw	05h
u1555:
	clrc
	rrf	(??_low3+0)+0,f
	addlw	-1
	skipz
	goto	u1555
	btfss	0+(??_low3+0)+0,(0)&7
	goto	u1561
	goto	u1560
u1561:
	goto	l3752
u1560:
	line	532
	
l3750:	
;number.c: 531: {
;number.c: 532: setOutput(10);
	movlw	low(0Ah)
	fcall	_setOutput
	line	533
;number.c: 533: setHightOutput(10);
	movlw	low(0Ah)
	fcall	_setHightOutput
	line	536
	
l3752:	
;number.c: 534: }
;number.c: 536: if((bai >> 6) & 0x01)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(low3@bai),w
	movwf	(??_low3+0)+0
	movlw	06h
u1575:
	clrc
	rrf	(??_low3+0)+0,f
	addlw	-1
	skipz
	goto	u1575
	btfss	0+(??_low3+0)+0,(0)&7
	goto	u1581
	goto	u1580
u1581:
	goto	l3756
u1580:
	line	538
	
l3754:	
;number.c: 537: {
;number.c: 538: setOutput(7);
	movlw	low(07h)
	fcall	_setOutput
	line	539
;number.c: 539: setHightOutput(7);
	movlw	low(07h)
	fcall	_setHightOutput
	line	541
	
l3756:	
;number.c: 540: }
;number.c: 541: if((shi >> 6) & 0x01)
	movf	(low3@shi),w
	movwf	(??_low3+0)+0
	movlw	06h
u1595:
	clrc
	rrf	(??_low3+0)+0,f
	addlw	-1
	skipz
	goto	u1595
	btfss	0+(??_low3+0)+0,(0)&7
	goto	u1601
	goto	u1600
u1601:
	goto	l3760
u1600:
	line	543
	
l3758:	
;number.c: 542: {
;number.c: 543: setOutput(9);
	movlw	low(09h)
	fcall	_setOutput
	line	544
;number.c: 544: setHightOutput(9);
	movlw	low(09h)
	fcall	_setHightOutput
	line	546
	
l3760:	
;number.c: 545: }
;number.c: 546: if((ge >> 6) & 0x01)
	movf	(low3@ge),w
	movwf	(??_low3+0)+0
	movlw	06h
u1615:
	clrc
	rrf	(??_low3+0)+0,f
	addlw	-1
	skipz
	goto	u1615
	btfss	0+(??_low3+0)+0,(0)&7
	goto	u1621
	goto	u1620
u1621:
	goto	l3764
u1620:
	line	548
	
l3762:	
;number.c: 547: {
;number.c: 548: setOutput(11);
	movlw	low(0Bh)
	fcall	_setOutput
	line	549
;number.c: 549: setHightOutput(11);
	movlw	low(0Bh)
	fcall	_setHightOutput
	line	551
	
l3764:	
;number.c: 550: }
;number.c: 551: if(h5)
	movf	((low3@h5)),w
	btfsc	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l3768
u1630:
	line	553
	
l3766:	
;number.c: 552: {
;number.c: 553: setOutput(12);
	movlw	low(0Ch)
	fcall	_setOutput
	line	554
;number.c: 554: setHightOutput(12);
	movlw	low(0Ch)
	fcall	_setHightOutput
	line	556
	
l3768:	
;number.c: 555: }
;number.c: 556: delayms(15);
	movlw	low(0Fh)
	fcall	_delayms
	line	557
	
l2042:	
	return
	opt stack 0
GLOBAL	__end_of_low3
	__end_of_low3:
	signat	_low3,16505
	global	_low2

;; *************** function _low2 *****************
;; Defined at:
;;		line 471 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
;; Parameters:    Size  Location     Type
;;  bai             1    wreg     unsigned char 
;;  shi             1    4[COMMON] unsigned char 
;;  ge              1    5[COMMON] unsigned char 
;;  h4              1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  bai             1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 800/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         3       0       0
;;      Locals:         0       1       0
;;      Temps:          1       0       0
;;      Totals:         4       1       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delayms
;;		_setHightOutput
;;		_setLow
;;		_setOutput
;;		_setlowOutput
;; This function is called by:
;;		_refreshNub
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	471
global __ptext9
__ptext9:	;psect for function _low2
psect	text9
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	471
	global	__size_of_low2
	__size_of_low2	equ	__end_of_low2-_low2
	
_low2:	
;incstack = 0
	opt	stack 3
; Regs used in _low2: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;low2@bai stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(low2@bai)
	line	473
	
l3698:	
;number.c: 473: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	474
	
l3700:	
;number.c: 474: setLow();
	fcall	_setLow
	line	475
	
l3702:	
;number.c: 475: setlowOutput(2);
	movlw	low(02h)
	fcall	_setlowOutput
	line	476
	
l3704:	
;number.c: 476: if((bai >> 2) & 0x01)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(low2@bai),w
	movwf	(??_low2+0)+0
	clrc
	rrf	(??_low2+0)+0,f
	clrc
	rrf	(??_low2+0)+0,f
	btfss	0+(??_low2+0)+0,(0)&7
	goto	u1411
	goto	u1410
u1411:
	goto	l3708
u1410:
	line	478
	
l3706:	
;number.c: 477: {
;number.c: 478: setOutput(7);
	movlw	low(07h)
	fcall	_setOutput
	line	479
;number.c: 479: setHightOutput(7);
	movlw	low(07h)
	fcall	_setHightOutput
	line	481
	
l3708:	
;number.c: 480: }
;number.c: 481: if((shi >> 2) & 0x01)
	movf	(low2@shi),w
	movwf	(??_low2+0)+0
	clrc
	rrf	(??_low2+0)+0,f
	clrc
	rrf	(??_low2+0)+0,f
	btfss	0+(??_low2+0)+0,(0)&7
	goto	u1421
	goto	u1420
u1421:
	goto	l3712
u1420:
	line	483
	
l3710:	
;number.c: 482: {
;number.c: 483: setOutput(9);
	movlw	low(09h)
	fcall	_setOutput
	line	484
;number.c: 484: setHightOutput(9);
	movlw	low(09h)
	fcall	_setHightOutput
	line	486
	
l3712:	
;number.c: 485: }
;number.c: 486: if((ge >> 2) & 0x01)
	movf	(low2@ge),w
	movwf	(??_low2+0)+0
	clrc
	rrf	(??_low2+0)+0,f
	clrc
	rrf	(??_low2+0)+0,f
	btfss	0+(??_low2+0)+0,(0)&7
	goto	u1431
	goto	u1430
u1431:
	goto	l3716
u1430:
	line	488
	
l3714:	
;number.c: 487: {
;number.c: 488: setOutput(11);
	movlw	low(0Bh)
	fcall	_setOutput
	line	489
;number.c: 489: setHightOutput(11);
	movlw	low(0Bh)
	fcall	_setHightOutput
	line	492
	
l3716:	
;number.c: 490: }
;number.c: 492: if((bai >> 4) & 0x01)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(low2@bai),w
	movwf	(??_low2+0)+0
	movlw	04h
u1445:
	clrc
	rrf	(??_low2+0)+0,f
	addlw	-1
	skipz
	goto	u1445
	btfss	0+(??_low2+0)+0,(0)&7
	goto	u1451
	goto	u1450
u1451:
	goto	l3720
u1450:
	line	494
	
l3718:	
;number.c: 493: {
;number.c: 494: setOutput(6);
	movlw	low(06h)
	fcall	_setOutput
	line	495
;number.c: 495: setHightOutput(6);
	movlw	low(06h)
	fcall	_setHightOutput
	line	497
	
l3720:	
;number.c: 496: }
;number.c: 497: if((shi >> 4) & 0x01)
	movf	(low2@shi),w
	movwf	(??_low2+0)+0
	movlw	04h
u1465:
	clrc
	rrf	(??_low2+0)+0,f
	addlw	-1
	skipz
	goto	u1465
	btfss	0+(??_low2+0)+0,(0)&7
	goto	u1471
	goto	u1470
u1471:
	goto	l3724
u1470:
	line	499
	
l3722:	
;number.c: 498: {
;number.c: 499: setOutput(8);
	movlw	low(08h)
	fcall	_setOutput
	line	500
;number.c: 500: setHightOutput(8);
	movlw	low(08h)
	fcall	_setHightOutput
	line	502
	
l3724:	
;number.c: 501: }
;number.c: 502: if((ge >> 4) & 0x01)
	movf	(low2@ge),w
	movwf	(??_low2+0)+0
	movlw	04h
u1485:
	clrc
	rrf	(??_low2+0)+0,f
	addlw	-1
	skipz
	goto	u1485
	btfss	0+(??_low2+0)+0,(0)&7
	goto	u1491
	goto	u1490
u1491:
	goto	l3728
u1490:
	line	504
	
l3726:	
;number.c: 503: {
;number.c: 504: setOutput(10);
	movlw	low(0Ah)
	fcall	_setOutput
	line	505
;number.c: 505: setHightOutput(10);
	movlw	low(0Ah)
	fcall	_setHightOutput
	line	507
	
l3728:	
;number.c: 506: }
;number.c: 507: if(h4)
	movf	((low2@h4)),w
	btfsc	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l3732
u1500:
	line	509
	
l3730:	
;number.c: 508: {
;number.c: 509: setOutput(12);
	movlw	low(0Ch)
	fcall	_setOutput
	line	510
;number.c: 510: setHightOutput(12);
	movlw	low(0Ch)
	fcall	_setHightOutput
	line	512
	
l3732:	
;number.c: 511: }
;number.c: 512: delayms(15);
	movlw	low(0Fh)
	fcall	_delayms
	line	513
	
l2032:	
	return
	opt stack 0
GLOBAL	__end_of_low2
	__end_of_low2:
	signat	_low2,16505
	global	_low1

;; *************** function _low1 *****************
;; Defined at:
;;		line 438 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
;; Parameters:    Size  Location     Type
;;  bai             1    wreg     unsigned char 
;;  shi             1    4[COMMON] unsigned char 
;;  ge              1    5[COMMON] unsigned char 
;;  dp              1    6[COMMON] unsigned char 
;;  h3              1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  bai             1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         0       1       0
;;      Temps:          0       1       0
;;      Totals:         4       2       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delayms
;;		_setHightOutput
;;		_setLow
;;		_setOutput
;;		_setlowOutput
;; This function is called by:
;;		_refreshNub
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	438
global __ptext10
__ptext10:	;psect for function _low1
psect	text10
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	438
	global	__size_of_low1
	__size_of_low1	equ	__end_of_low1-_low1
	
_low1:	
;incstack = 0
	opt	stack 3
; Regs used in _low1: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;low1@bai stored from wreg
	movwf	(low1@bai)
	line	440
	
l3674:	
;number.c: 440: setLow();
	fcall	_setLow
	line	441
;number.c: 441: setlowOutput(1);
	movlw	low(01h)
	fcall	_setlowOutput
	line	442
	
l3676:	
;number.c: 442: if((bai >> 3) & 0x01)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(low1@bai),w
	movwf	(??_low1+0)+0
	clrc
	rrf	(??_low1+0)+0,f
	clrc
	rrf	(??_low1+0)+0,f
	clrc
	rrf	(??_low1+0)+0,f
	btfss	0+(??_low1+0)+0,(0)&7
	goto	u1361
	goto	u1360
u1361:
	goto	l3680
u1360:
	line	444
	
l3678:	
;number.c: 443: {
;number.c: 444: setOutput(6);
	movlw	low(06h)
	fcall	_setOutput
	line	445
;number.c: 445: setHightOutput(6);
	movlw	low(06h)
	fcall	_setHightOutput
	line	447
	
l3680:	
;number.c: 446: }
;number.c: 447: if((shi >> 3) & 0x01)
	movf	(low1@shi),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_low1+0)+0
	clrc
	rrf	(??_low1+0)+0,f
	clrc
	rrf	(??_low1+0)+0,f
	clrc
	rrf	(??_low1+0)+0,f
	btfss	0+(??_low1+0)+0,(0)&7
	goto	u1371
	goto	u1370
u1371:
	goto	l3684
u1370:
	line	449
	
l3682:	
;number.c: 448: {
;number.c: 449: setOutput(8);
	movlw	low(08h)
	fcall	_setOutput
	line	450
;number.c: 450: setHightOutput(8);
	movlw	low(08h)
	fcall	_setHightOutput
	line	452
	
l3684:	
;number.c: 451: }
;number.c: 452: if((ge >> 3) & 0x01)
	movf	(low1@ge),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_low1+0)+0
	clrc
	rrf	(??_low1+0)+0,f
	clrc
	rrf	(??_low1+0)+0,f
	clrc
	rrf	(??_low1+0)+0,f
	btfss	0+(??_low1+0)+0,(0)&7
	goto	u1381
	goto	u1380
u1381:
	goto	l3688
u1380:
	line	454
	
l3686:	
;number.c: 453: {
;number.c: 454: setOutput(10);
	movlw	low(0Ah)
	fcall	_setOutput
	line	455
;number.c: 455: setHightOutput(10);
	movlw	low(0Ah)
	fcall	_setHightOutput
	line	457
	
l3688:	
;number.c: 456: }
;number.c: 457: if(dp)
	movf	((low1@dp)),w
	btfsc	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l3692
u1390:
	line	459
	
l3690:	
;number.c: 458: {
;number.c: 459: setOutput(7);
	movlw	low(07h)
	fcall	_setOutput
	line	460
;number.c: 460: setHightOutput(7);
	movlw	low(07h)
	fcall	_setHightOutput
	line	462
	
l3692:	
;number.c: 461: }
;number.c: 462: if(h3)
	movf	((low1@h3)),w
	btfsc	status,2
	goto	u1401
	goto	u1400
u1401:
	goto	l3696
u1400:
	line	464
	
l3694:	
;number.c: 463: {
;number.c: 464: setOutput(12);
	movlw	low(0Ch)
	fcall	_setOutput
	line	465
;number.c: 465: setHightOutput(12);
	movlw	low(0Ch)
	fcall	_setHightOutput
	line	467
	
l3696:	
;number.c: 466: }
;number.c: 467: delayms(15);
	movlw	low(0Fh)
	fcall	_delayms
	line	469
	
l2022:	
	return
	opt stack 0
GLOBAL	__end_of_low1
	__end_of_low1:
	signat	_low1,20601
	global	_setLow

;; *************** function _setLow *****************
;; Defined at:
;;		line 609 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : A00/100
;;		On exit  : 0/0
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
;;		_setHightOutput
;;		_setlowOutput
;; This function is called by:
;;		_low1
;;		_low2
;;		_low3
;;		_low4
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	609
global __ptext11
__ptext11:	;psect for function _setLow
psect	text11
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	609
	global	__size_of_setLow
	__size_of_setLow	equ	__end_of_setLow-_setLow
	
_setLow:	
;incstack = 0
	opt	stack 3
; Regs used in _setLow: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	611
	
l3648:	
;number.c: 611: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	612
;number.c: 612: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	613
;number.c: 613: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	614
	
l3650:	
;number.c: 614: setHightOutput(1);
	movlw	low(01h)
	fcall	_setHightOutput
	line	615
	
l3652:	
;number.c: 615: setHightOutput(2);
	movlw	low(02h)
	fcall	_setHightOutput
	line	616
	
l3654:	
;number.c: 616: setHightOutput(3);
	movlw	low(03h)
	fcall	_setHightOutput
	line	617
	
l3656:	
;number.c: 617: setHightOutput(4);
	movlw	low(04h)
	fcall	_setHightOutput
	line	618
	
l3658:	
;number.c: 618: setlowOutput(5);
	movlw	low(05h)
	fcall	_setlowOutput
	line	619
	
l3660:	
;number.c: 619: setlowOutput(6);
	movlw	low(06h)
	fcall	_setlowOutput
	line	620
	
l3662:	
;number.c: 620: setlowOutput(7);
	movlw	low(07h)
	fcall	_setlowOutput
	line	621
	
l3664:	
;number.c: 621: setlowOutput(8);
	movlw	low(08h)
	fcall	_setlowOutput
	line	622
	
l3666:	
;number.c: 622: setlowOutput(9);
	movlw	low(09h)
	fcall	_setlowOutput
	line	623
	
l3668:	
;number.c: 623: setlowOutput(10);
	movlw	low(0Ah)
	fcall	_setlowOutput
	line	624
	
l3670:	
;number.c: 624: setlowOutput(11);
	movlw	low(0Bh)
	fcall	_setlowOutput
	line	625
	
l3672:	
;number.c: 625: setlowOutput(12);
	movlw	low(0Ch)
	fcall	_setlowOutput
	line	626
	
l2056:	
	return
	opt stack 0
GLOBAL	__end_of_setLow
	__end_of_setLow:
	signat	_setLow,89
	global	_ZHONG

;; *************** function _ZHONG *****************
;; Defined at:
;;		line 267 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_showNub
;; This function is called by:
;;		_refreshNub
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	267
global __ptext12
__ptext12:	;psect for function _ZHONG
psect	text12
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	267
	global	__size_of_ZHONG
	__size_of_ZHONG	equ	__end_of_ZHONG-_ZHONG
	
_ZHONG:	
;incstack = 0
	opt	stack 3
; Regs used in _ZHONG: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	269
	
l3816:	
;number.c: 269: showNub(12,3);
	movlw	low(03h)
	movwf	(showNub@low)
	movlw	low(0Ch)
	fcall	_showNub
	line	270
	
l1954:	
	return
	opt stack 0
GLOBAL	__end_of_ZHONG
	__end_of_ZHONG:
	signat	_ZHONG,89
	global	_WU

;; *************** function _WU *****************
;; Defined at:
;;		line 256 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_setInput
;;		_showNub
;; This function is called by:
;;		_refreshNub
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	256
global __ptext13
__ptext13:	;psect for function _WU
psect	text13
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	256
	global	__size_of_WU
	__size_of_WU	equ	__end_of_WU-_WU
	
_WU:	
;incstack = 0
	opt	stack 3
; Regs used in _WU: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	258
	
l3810:	
;number.c: 258: showNub(12,1);
	clrf	(showNub@low)
	incf	(showNub@low),f
	movlw	low(0Ch)
	fcall	_showNub
	line	259
	
l3812:	
;number.c: 259: setInput();
	fcall	_setInput
	line	260
	
l1948:	
	return
	opt stack 0
GLOBAL	__end_of_WU
	__end_of_WU:
	signat	_WU,89
	global	_RUO

;; *************** function _RUO *****************
;; Defined at:
;;		line 262 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_showNub
;; This function is called by:
;;		_refreshNub
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	262
global __ptext14
__ptext14:	;psect for function _RUO
psect	text14
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	262
	global	__size_of_RUO
	__size_of_RUO	equ	__end_of_RUO-_RUO
	
_RUO:	
;incstack = 0
	opt	stack 3
; Regs used in _RUO: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	264
	
l3814:	
;number.c: 264: showNub(12,2);
	movlw	low(02h)
	movwf	(showNub@low)
	movlw	low(0Ch)
	fcall	_showNub
	line	265
	
l1951:	
	return
	opt stack 0
GLOBAL	__end_of_RUO
	__end_of_RUO:
	signat	_RUO,89
	global	_QIANG

;; *************** function _QIANG *****************
;; Defined at:
;;		line 272 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_showNub
;; This function is called by:
;;		_refreshNub
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	272
global __ptext15
__ptext15:	;psect for function _QIANG
psect	text15
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	272
	global	__size_of_QIANG
	__size_of_QIANG	equ	__end_of_QIANG-_QIANG
	
_QIANG:	
;incstack = 0
	opt	stack 3
; Regs used in _QIANG: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	274
	
l3818:	
;number.c: 274: showNub(12,4);
	movlw	low(04h)
	movwf	(showNub@low)
	movlw	low(0Ch)
	fcall	_showNub
	line	275
	
l1957:	
	return
	opt stack 0
GLOBAL	__end_of_QIANG
	__end_of_QIANG:
	signat	_QIANG,89
	global	_showNub

;; *************** function _showNub *****************
;; Defined at:
;;		line 278 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
;; Parameters:    Size  Location     Type
;;  hight           1    wreg     unsigned char 
;;  low             1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  hight           1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delayms
;;		_setHightOutput
;;		_setInput
;;		_setOutput
;;		_setlowOutput
;; This function is called by:
;;		_WU
;;		_RUO
;;		_ZHONG
;;		_QIANG
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	278
global __ptext16
__ptext16:	;psect for function _showNub
psect	text16
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	278
	global	__size_of_showNub
	__size_of_showNub	equ	__end_of_showNub-_showNub
	
_showNub:	
;incstack = 0
	opt	stack 3
; Regs used in _showNub: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;showNub@hight stored from wreg
	movwf	(showNub@hight)
	line	280
	
l3638:	
;number.c: 280: setInput();
	fcall	_setInput
	line	281
;number.c: 281: delayms(2);
	movlw	low(02h)
	fcall	_delayms
	line	282
	
l3640:	
;number.c: 282: setOutput(low);
	movf	(showNub@low),w
	fcall	_setOutput
	line	283
	
l3642:	
;number.c: 283: setOutput(hight);
	movf	(showNub@hight),w
	fcall	_setOutput
	line	284
	
l3644:	
;number.c: 284: setlowOutput(low);
	movf	(showNub@low),w
	fcall	_setlowOutput
	line	285
	
l3646:	
;number.c: 285: setHightOutput(hight);
	movf	(showNub@hight),w
	fcall	_setHightOutput
	line	286
;number.c: 286: delayms(15);
	movlw	low(0Fh)
	fcall	_delayms
	line	287
# 287 "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
clrwdt ;# 
psect	text16
	line	288
	
l1960:	
	return
	opt stack 0
GLOBAL	__end_of_showNub
	__end_of_showNub:
	signat	_showNub,8313
	global	_setlowOutput

;; *************** function _setlowOutput *****************
;; Defined at:
;;		line 336 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
;; Parameters:    Size  Location     Type
;;  outPut          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  outPut          1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
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
;;		_showNub
;;		_low1
;;		_low2
;;		_low3
;;		_low4
;;		_setLow
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	336
global __ptext17
__ptext17:	;psect for function _setlowOutput
psect	text17
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	336
	global	__size_of_setlowOutput
	__size_of_setlowOutput	equ	__end_of_setlowOutput-_setlowOutput
	
_setlowOutput:	
;incstack = 0
	opt	stack 4
; Regs used in _setlowOutput: [wreg-fsr0h+status,2+status,0]
;setlowOutput@outPut stored from wreg
	movwf	(setlowOutput@outPut)
	line	338
	
l3622:	
;number.c: 338: switch(outPut)
	goto	l3626
	line	340
;number.c: 339: {
;number.c: 340: case 12:
	
l1981:	
	line	341
;number.c: 341: PORTA &= 0x7F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	342
;number.c: 342: break;
	goto	l1994
	line	343
;number.c: 343: case 11:
	
l1983:	
	line	344
;number.c: 344: PORTA &= 0xFB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(5)+(2/8),(2)&7	;volatile
	line	345
;number.c: 345: break;
	goto	l1994
	line	346
;number.c: 346: case 10:
	
l1984:	
	line	347
;number.c: 347: PORTA &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	348
;number.c: 348: break;
	goto	l1994
	line	349
;number.c: 349: case 9:
	
l1985:	
	line	350
;number.c: 350: PORTB &= 0xFD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6)+(1/8),(1)&7	;volatile
	line	351
;number.c: 351: break;
	goto	l1994
	line	352
;number.c: 352: case 8:
	
l1986:	
	line	353
;number.c: 353: PORTC &= 0xFB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7)+(2/8),(2)&7	;volatile
	line	354
;number.c: 354: break;
	goto	l1994
	line	355
;number.c: 355: case 7:
	
l1987:	
	line	356
;number.c: 356: PORTC &= 0xFE;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7)+(0/8),(0)&7	;volatile
	line	357
;number.c: 357: break;
	goto	l1994
	line	358
;number.c: 358: case 6:
	
l1988:	
	line	359
;number.c: 359: PORTC &= 0xFD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7)+(1/8),(1)&7	;volatile
	line	360
;number.c: 360: break;
	goto	l1994
	line	361
;number.c: 361: case 5:
	
l1989:	
	line	362
;number.c: 362: PORTC &= 0xF7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7)+(3/8),(3)&7	;volatile
	line	363
;number.c: 363: break;
	goto	l1994
	line	364
;number.c: 364: case 4:
	
l1990:	
	line	365
;number.c: 365: PORTA &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	366
;number.c: 366: break;
	goto	l1994
	line	367
;number.c: 367: case 3:
	
l1991:	
	line	368
;number.c: 368: PORTA &= 0xF7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(5)+(3/8),(3)&7	;volatile
	line	369
;number.c: 369: break;
	goto	l1994
	line	370
;number.c: 370: case 2:
	
l1992:	
	line	371
;number.c: 371: PORTA &= 0xFD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(5)+(1/8),(1)&7	;volatile
	line	372
;number.c: 372: break;
	goto	l1994
	line	373
;number.c: 373: case 1:
	
l1993:	
	line	374
;number.c: 374: PORTC &= 0xFE;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7)+(0/8),(0)&7	;volatile
	line	375
;number.c: 375: PORTA &= 0xBF;
	bcf	(5)+(6/8),(6)&7	;volatile
	line	376
;number.c: 376: break;
	goto	l1994
	line	338
	
l3626:	
	movf	(setlowOutput@outPut),w
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 1 to 12
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           21     9 (fixed)
; simple_byte           37    19 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is direct_byte

	addlw	-1
	skipc
goto l1994
	movwf fsr
	movlw	12
	subwf	fsr,w
skipnc
goto l1994
movlw high(S4044)
movwf pclath
	movlw low(S4044)
	addwf fsr,w
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
S4044:
	ljmp	l1993
	ljmp	l1992
	ljmp	l1991
	ljmp	l1990
	ljmp	l1989
	ljmp	l1988
	ljmp	l1987
	ljmp	l1986
	ljmp	l1985
	ljmp	l1984
	ljmp	l1983
	ljmp	l1981
psect	text17

	line	378
	
l1994:	
	return
	opt stack 0
GLOBAL	__end_of_setlowOutput
	__end_of_setlowOutput:
	signat	_setlowOutput,4217
	global	_setOutput

;; *************** function _setOutput *****************
;; Defined at:
;;		line 381 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
;; Parameters:    Size  Location     Type
;;  outPut          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  outPut          1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_showNub
;;		_low1
;;		_low2
;;		_low3
;;		_low4
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	381
global __ptext18
__ptext18:	;psect for function _setOutput
psect	text18
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	381
	global	__size_of_setOutput
	__size_of_setOutput	equ	__end_of_setOutput-_setOutput
	
_setOutput:	
;incstack = 0
	opt	stack 4
; Regs used in _setOutput: [wreg-fsr0h+status,2+status,0]
;setOutput@outPut stored from wreg
	movwf	(setOutput@outPut)
	line	383
	
l3602:	
;number.c: 383: switch(outPut)
	goto	l3606
	line	385
;number.c: 384: {
;number.c: 385: case 12:
	
l1998:	
	line	386
;number.c: 386: TRISA &= 0x7F;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(7/8),(7)&7	;volatile
	line	387
;number.c: 387: break;
	goto	l2011
	line	388
;number.c: 388: case 11:
	
l2000:	
	line	389
;number.c: 389: TRISA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	390
;number.c: 390: break;
	goto	l2011
	line	391
;number.c: 391: case 10:
	
l2001:	
	line	392
;number.c: 392: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	393
;number.c: 393: break;
	goto	l2011
	line	394
;number.c: 394: case 9:
	
l2002:	
	line	395
;number.c: 395: TRISB &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(134)^080h+(1/8),(1)&7	;volatile
	line	396
;number.c: 396: break;
	goto	l2011
	line	397
;number.c: 397: case 8:
	
l2003:	
	line	398
;number.c: 398: TRISC &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	399
;number.c: 399: break;
	goto	l2011
	line	400
;number.c: 400: case 7:
	
l2004:	
	line	401
;number.c: 401: TRISC &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(135)^080h+(0/8),(0)&7	;volatile
	line	402
;number.c: 402: break;
	goto	l2011
	line	403
;number.c: 403: case 6:
	
l2005:	
	line	404
;number.c: 404: TRISC &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	405
;number.c: 405: break;
	goto	l2011
	line	406
;number.c: 406: case 5:
	
l2006:	
	line	407
;number.c: 407: TRISC &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(135)^080h+(3/8),(3)&7	;volatile
	line	408
;number.c: 408: break;
	goto	l2011
	line	409
;number.c: 409: case 4:
	
l2007:	
	line	410
;number.c: 410: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	411
;number.c: 411: break;
	goto	l2011
	line	412
;number.c: 412: case 3:
	
l2008:	
	line	413
;number.c: 413: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	414
;number.c: 414: break;
	goto	l2011
	line	415
;number.c: 415: case 2:
	
l2009:	
	line	416
;number.c: 416: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	417
;number.c: 417: break;
	goto	l2011
	line	418
;number.c: 418: case 1:
	
l2010:	
	line	419
;number.c: 419: TRISA &= 0xBF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(6/8),(6)&7	;volatile
	line	420
;number.c: 420: break;
	goto	l2011
	line	383
	
l3606:	
	movf	(setOutput@outPut),w
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 1 to 12
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           21     9 (fixed)
; simple_byte           37    19 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is direct_byte

	addlw	-1
	skipc
goto l2011
	movwf fsr
	movlw	12
	subwf	fsr,w
skipnc
goto l2011
movlw high(S4046)
movwf pclath
	movlw low(S4046)
	addwf fsr,w
	movwf pc
psect	swtext3,local,class=CONST,delta=2
global __pswtext3
__pswtext3:
S4046:
	ljmp	l2010
	ljmp	l2009
	ljmp	l2008
	ljmp	l2007
	ljmp	l2006
	ljmp	l2005
	ljmp	l2004
	ljmp	l2003
	ljmp	l2002
	ljmp	l2001
	ljmp	l2000
	ljmp	l1998
psect	text18

	line	422
	
l2011:	
	return
	opt stack 0
GLOBAL	__end_of_setOutput
	__end_of_setOutput:
	signat	_setOutput,4217
	global	_setInput

;; *************** function _setInput *****************
;; Defined at:
;;		line 424 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
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
;;		_refreshNub
;;		_WU
;;		_showNub
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	424
global __ptext19
__ptext19:	;psect for function _setInput
psect	text19
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	424
	global	__size_of_setInput
	__size_of_setInput	equ	__end_of_setInput-_setInput
	
_setInput:	
;incstack = 0
	opt	stack 5
; Regs used in _setInput: [wreg+status,2+status,0]
	line	426
	
l3022:	
;number.c: 426: TRISA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	427
;number.c: 427: PORTA |= 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	428
	
l3024:	
;number.c: 428: TRISB |= 0xC2;
	movlw	low(0C2h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(134)^080h,f	;volatile
	line	429
	
l3026:	
;number.c: 429: PORTB = 0xC2;
	movlw	low(0C2h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	430
;number.c: 430: TRISC |= 0x0F;
	movlw	low(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(135)^080h,f	;volatile
	line	431
	
l3028:	
;number.c: 431: PORTC = 0x0F;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(7)	;volatile
	line	432
	
l3030:	
;number.c: 432: PORTA;
	movf	(5),w	;volatile
	line	433
	
l3032:	
;number.c: 433: PORTB;
	movf	(6),w	;volatile
	line	434
	
l3034:	
;number.c: 434: PORTC;
	movf	(7),w	;volatile
	line	435
	
l2014:	
	return
	opt stack 0
GLOBAL	__end_of_setInput
	__end_of_setInput:
	signat	_setInput,89
	global	_setHightOutput

;; *************** function _setHightOutput *****************
;; Defined at:
;;		line 292 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
;; Parameters:    Size  Location     Type
;;  outPut          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  outPut          1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_showNub
;;		_low1
;;		_low2
;;		_low3
;;		_low4
;;		_setLow
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	292
global __ptext20
__ptext20:	;psect for function _setHightOutput
psect	text20
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	292
	global	__size_of_setHightOutput
	__size_of_setHightOutput	equ	__end_of_setHightOutput-_setHightOutput
	
_setHightOutput:	
;incstack = 0
	opt	stack 3
; Regs used in _setHightOutput: [wreg-fsr0h+status,2+status,0]
;setHightOutput@outPut stored from wreg
	movwf	(setHightOutput@outPut)
	line	294
	
l3612:	
;number.c: 294: switch(outPut)
	goto	l3616
	line	296
;number.c: 295: {
;number.c: 296: case 12:
	
l1964:	
	line	297
;number.c: 297: PORTA |= 0x80;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(7/8),(7)&7	;volatile
	line	298
;number.c: 298: break;
	goto	l1977
	line	299
;number.c: 299: case 11:
	
l1966:	
	line	300
;number.c: 300: PORTA |= 0x04;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(2/8),(2)&7	;volatile
	line	301
;number.c: 301: break;
	goto	l1977
	line	302
;number.c: 302: case 10:
	
l1967:	
	line	303
;number.c: 303: PORTA |= 0x10;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(4/8),(4)&7	;volatile
	line	304
;number.c: 304: break;
	goto	l1977
	line	305
;number.c: 305: case 9:
	
l1968:	
	line	306
;number.c: 306: PORTB |= 0x02;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(1/8),(1)&7	;volatile
	line	307
;number.c: 307: break;
	goto	l1977
	line	308
;number.c: 308: case 8:
	
l1969:	
	line	309
;number.c: 309: PORTC |= 0x04;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(2/8),(2)&7	;volatile
	line	310
;number.c: 310: break;
	goto	l1977
	line	311
;number.c: 311: case 7:
	
l1970:	
	line	312
;number.c: 312: PORTC |= 0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(0/8),(0)&7	;volatile
	line	313
;number.c: 313: break;
	goto	l1977
	line	314
;number.c: 314: case 6:
	
l1971:	
	line	315
;number.c: 315: PORTC |= 0x02;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(1/8),(1)&7	;volatile
	line	316
;number.c: 316: break;
	goto	l1977
	line	317
;number.c: 317: case 5:
	
l1972:	
	line	318
;number.c: 318: PORTC |= 0x08;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(3/8),(3)&7	;volatile
	line	319
;number.c: 319: break;
	goto	l1977
	line	320
;number.c: 320: case 4:
	
l1973:	
	line	321
;number.c: 321: PORTA |= 0x20;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(5/8),(5)&7	;volatile
	line	322
;number.c: 322: break;
	goto	l1977
	line	323
;number.c: 323: case 3:
	
l1974:	
	line	324
;number.c: 324: PORTA |= 0x08;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(3/8),(3)&7	;volatile
	line	325
;number.c: 325: break;
	goto	l1977
	line	326
;number.c: 326: case 2:
	
l1975:	
	line	327
;number.c: 327: PORTA |= 0x02;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(1/8),(1)&7	;volatile
	line	328
;number.c: 328: break;
	goto	l1977
	line	329
;number.c: 329: case 1:
	
l1976:	
	line	330
;number.c: 330: PORTA |= 0x40;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(6/8),(6)&7	;volatile
	line	331
;number.c: 331: break;
	goto	l1977
	line	294
	
l3616:	
	movf	(setHightOutput@outPut),w
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 1 to 12
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           21     9 (fixed)
; simple_byte           37    19 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is direct_byte

	addlw	-1
	skipc
goto l1977
	movwf fsr
	movlw	12
	subwf	fsr,w
skipnc
goto l1977
movlw high(S4048)
movwf pclath
	movlw low(S4048)
	addwf fsr,w
	movwf pc
psect	swtext4,local,class=CONST,delta=2
global __pswtext4
__pswtext4:
S4048:
	ljmp	l1976
	ljmp	l1975
	ljmp	l1974
	ljmp	l1973
	ljmp	l1972
	ljmp	l1971
	ljmp	l1970
	ljmp	l1969
	ljmp	l1968
	ljmp	l1967
	ljmp	l1966
	ljmp	l1964
psect	text20

	line	333
	
l1977:	
	return
	opt stack 0
GLOBAL	__end_of_setHightOutput
	__end_of_setHightOutput:
	signat	_setHightOutput,4217
	global	_delayms

;; *************** function _delayms *****************
;; Defined at:
;;		line 631 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
;; Parameters:    Size  Location     Type
;;  time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  time            1    2[COMMON] unsigned char 
;;  i               1    3[COMMON] unsigned char 
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
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_showNub
;;		_low1
;;		_low2
;;		_low3
;;		_low4
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	631
global __ptext21
__ptext21:	;psect for function _delayms
psect	text21
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\number.c"
	line	631
	global	__size_of_delayms
	__size_of_delayms	equ	__end_of_delayms-_delayms
	
_delayms:	
;incstack = 0
	opt	stack 4
; Regs used in _delayms: [wreg+status,2+status,0]
;delayms@time stored from wreg
	movwf	(delayms@time)
	line	633
	
l3632:	
;number.c: 633: for(unsigned char i=0;i<time;i++);
	clrf	(delayms@i)
	goto	l3636
	
l3634:	
	incf	(delayms@i),f
	
l3636:	
	movf	(delayms@time),w
	subwf	(delayms@i),w
	skipc
	goto	u1351
	goto	u1350
u1351:
	goto	l3634
u1350:
	line	634
	
l2062:	
	return
	opt stack 0
GLOBAL	__end_of_delayms
	__end_of_delayms:
	signat	_delayms,4217
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 65 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\adc.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    2[COMMON] unsigned char 
;;  j               1    4[COMMON] unsigned char 
;;  i               1    3[COMMON] unsigned char 
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
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshNub
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\adc.c"
	line	65
global __ptext22
__ptext22:	;psect for function _DelayXms
psect	text22
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\adc.c"
	line	65
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 5
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	68
	
l3244:	
;adc.c: 67: unsigned char i,j;
;adc.c: 68: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l3246:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u1051
	goto	u1050
u1051:
	goto	l3250
u1050:
	goto	l1216
	line	69
	
l3250:	
;adc.c: 69: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l3256:	
	decf	(DelayXms@j),f
	
l3258:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u1061
	goto	u1060
u1061:
	goto	l3256
u1060:
	line	68
	
l3260:	
	decf	(DelayXms@i),f
	goto	l3246
	line	70
	
l1216:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\¹¤¾ß\µ¥Æ¬»úÑ§Ï°×ÊÁÏ\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    1[BANK0 ] unsigned int 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         0       3       0
;;      Temps:          0       0       0
;;      Totals:         4       3       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_refreshNub
;;		_ADC_AVG
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\¹¤¾ß\µ¥Æ¬»úÑ§Ï°×ÊÁÏ\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lwdiv.c"
	line	6
global __ptext23
__ptext23:	;psect for function ___lwdiv
psect	text23
	file	"C:\¹¤¾ß\µ¥Æ¬»úÑ§Ï°×ÊÁÏ\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l3876:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l3878:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u1771
	goto	u1770
u1771:
	goto	l3898
u1770:
	line	16
	
l3880:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l3884
	line	18
	
l3882:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l3884:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1781
	goto	u1780
u1781:
	goto	l3882
u1780:
	line	22
	
l3886:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l3888:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1795
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1795:
	skipc
	goto	u1791
	goto	u1790
u1791:
	goto	l3894
u1790:
	line	24
	
l3890:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l3892:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l3894:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l3896:	
	decfsz	(___lwdiv@counter),f
	goto	u1801
	goto	u1800
u1801:
	goto	l3886
u1800:
	line	30
	
l3898:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l2405:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 12 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\adc.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    0[BANK0 ] unsigned char 
;;  ad_temp         2    2[BANK0 ] volatile unsigned int 
;;  admax           2    0        unsigned int 
;;  admin           2    0        unsigned int 
;;  adsum           2    0        unsigned int 
;;  i               1    1[BANK0 ] unsigned char 
;;  adtimes         1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         0       4       0
;;      Temps:          1       0       0
;;      Totals:         3       4       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_AVG
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\adc.c"
	line	12
global __ptext24
__ptext24:	;psect for function _ADC_Sample
psect	text24
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\adc.c"
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
	
l3858:	
;adc.c: 17: volatile unsigned int ad_temp;
;adc.c: 18: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	19
	
l3860:	
;adc.c: 19: ADCON0 = 0X41 | (adch << 2);
	bcf	status, 5	;RP0=0, select bank0
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1745:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1745
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	movwf	(31)	;volatile
	line	20
# 20 "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\adc.c"
nop ;# 
	line	21
# 21 "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\adc.c"
nop ;# 
psect	text24
	line	22
	
l3862:	
;adc.c: 22: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	24
	
l3864:	
;adc.c: 24: unsigned char i = 0;
	clrf	(ADC_Sample@i)
	line	25
;adc.c: 25: while(GODONE)
	goto	l1198
	
l1199:	
	line	27
;adc.c: 26: {
;adc.c: 27: if(0 == (--i))
	decfsz	(ADC_Sample@i),f
	goto	u1751
	goto	u1750
u1751:
	goto	l1198
u1750:
	goto	l1201
	line	29
	
l1198:	
	line	25
	btfsc	(249/8),(249)&7	;volatile
	goto	u1761
	goto	u1760
u1761:
	goto	l1199
u1760:
	line	31
	
l3868:	
;adc.c: 29: }
;adc.c: 31: ad_temp=(ADRESH<<4)+(ADRESL>>4);
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
	
l3870:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	32
	
l3872:	
;adc.c: 32: return ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(?_ADC_Sample+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(?_ADC_Sample)
	line	34
	
l1201:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,4218
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 36 in file "C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
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
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
	line	36
global __ptext25
__ptext25:	;psect for function _Timer0_Isr
psect	text25
	file	"C:\mcuproject\scm\Ó«¹â¼Á¼ì²â\main.c"
	line	36
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 2
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
psect	text25
	line	37
	
i1l3434:	
;main.c: 37: if (T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u123_21
	goto	u123_20
u123_21:
	goto	i1l3452
u123_20:
	line	41
	
i1l3436:	
;main.c: 38: {
;main.c: 41: TMR0 = 150;
	movlw	low(096h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	43
	
i1l3438:	
;main.c: 43: if(++intCount >= 100)
	movlw	low(064h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u124_21
	goto	u124_20
u124_21:
	goto	i1l3450
u124_20:
	line	45
	
i1l3440:	
;main.c: 44: {
;main.c: 45: intFlag = 1;
	clrf	(_intFlag)
	incf	(_intFlag),f
	line	46
	
i1l3442:	
;main.c: 46: if(++count500ms >= 100)
	movlw	low(064h)
	incf	(_count500ms),f
	subwf	((_count500ms)),w
	skipc
	goto	u125_21
	goto	u125_20
u125_21:
	goto	i1l3450
u125_20:
	line	48
	
i1l3444:	
;main.c: 49: timeCount++;
	clrf	(_count500ms)
	line	50
	
i1l3446:	
;main.c: 50: if(nubShowTime > 0)
	movf	((_nubShowTime)),w
	btfsc	status,2
	goto	u126_21
	goto	u126_20
u126_21:
	goto	i1l3450
u126_20:
	line	52
	
i1l3448:	
;main.c: 51: {
;main.c: 52: --nubShowTime;
	decf	(_nubShowTime),f
	line	57
	
i1l3450:	
;main.c: 53: }
;main.c: 54: }
;main.c: 55: }
;main.c: 57: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	60
	
i1l3452:	
;main.c: 58: }
;main.c: 60: if (RBIF) {
	btfss	(88/8),(88)&7	;volatile
	goto	u127_21
	goto	u127_20
u127_21:
	goto	i1l610
u127_20:
	line	61
	
i1l3454:	
;main.c: 61: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	63
	
i1l610:	
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
