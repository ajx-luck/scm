opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1711E
opt include "C:\mcuproject\scm\SC8P171XE开发包\SCMCU_IDE_V2.00.09_Beta4\data\include\sc8p1711e.cgen.inc"
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
	FNCALL	_main,_IO_Init
	FNCALL	_main,___lbdiv
	FNCALL	_main,___lbmod
	FNCALL	_main,_checkBatAD
	FNCALL	_main,_chrgCtr
	FNCALL	_main,_gotoSleep
	FNCALL	_main,_keyCtr
	FNCALL	_main,_pwmStop
	FNCALL	_main,_refresh
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,___lwmod
	FNCALL	_workCtr,_gotoSleep
	FNCALL	_workCtr,_pwmInit
	FNCALL	_gotoSleep,_pwmStop
	FNCALL	_refresh,_delay_us
	FNCALL	_refresh,_ind_light_disp
	FNCALL	_ind_light_disp,_Delay10Us
	FNCALL	_keyCtr,_keyRead
	FNCALL	_keyCtr,_keyRead2
	FNCALL	_checkBatAD,_ADC_Sample
	FNCALL	_checkBatAD,___lbdiv
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_table
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	37

;initializer for _table
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
	retlw	038h
	global	_adresult
	global	_workStep
	global	_adsum
	global	_admax
	global	_admin
	global	_count3S
	global	_count900s
	global	_adtimes
	global	_pwmFlag
	global	_maxDuty
	global	_firstTime
	global	_adCheckTime
	global	_gewei
	global	_shiwei
	global	_batValue
	global	_chrgStep
	global	_count1s
	global	_longPressFlag
	global	_duty
	global	_keyCount
	global	_sleepTime
	global	_IntFlag
	global	_intCount
	global	_keyCount3
	global	_keyCount2
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PWMCON
_PWMCON	set	27
	global	_PWMTH
_PWMTH	set	26
	global	_PWMTL
_PWMTL	set	25
	global	_PWMD01H
_PWMD01H	set	24
	global	_PWMD1L
_PWMD1L	set	23
	global	_WPDA
_WPDA	set	8
	global	_WPUA
_WPUA	set	7
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
	global	_T0IE
_T0IE	set	93
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
	global	_RB5
_RB5	set	53
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_WPUB
_WPUB	set	149
	global	_OSCCON
_OSCCON	set	143
	global	_WDTCON
_WDTCON	set	136
	global	_WPDB
_WPDB	set	135
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_LDOEN
_LDOEN	set	1274
	global	_ANS3
_ANS3	set	1179
	global	_TRISA3
_TRISA3	set	1067
; #config settings
	file	"SC8P171XE_Timer.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_adresult:
       ds      2

_workStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_adsum:
       ds      4

_admax:
       ds      2

_admin:
       ds      2

_count3S:
       ds      2

_count900s:
       ds      2

_adtimes:
       ds      1

_pwmFlag:
       ds      1

_maxDuty:
       ds      1

_firstTime:
       ds      1

_adCheckTime:
       ds      1

_gewei:
       ds      1

_shiwei:
       ds      1

_batValue:
       ds      1

_chrgStep:
       ds      1

_count1s:
       ds      1

_longPressFlag:
       ds      1

_duty:
       ds      1

_keyCount:
       ds      1

_sleepTime:
       ds      1

_IntFlag:
       ds      1

_intCount:
       ds      1

_keyCount3:
       ds      1

_keyCount2:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	37
_table:
       ds      12

	file	"SC8P171XE_Timer.as"
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
	fcall	__pidataBANK0+10		;fetch initializer
	movwf	__pdataBANK0+10&07fh		
	fcall	__pidataBANK0+11		;fetch initializer
	movwf	__pdataBANK0+11&07fh		
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
	movlw	low((__pbssBANK0)+01Eh)
	fcall	clear_ram0
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
?_IO_Init:	; 1 bytes @ 0x0
?_refresh:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_pwmStop:	; 1 bytes @ 0x0
?_gotoSleep:	; 1 bytes @ 0x0
?_pwmInit:	; 1 bytes @ 0x0
?_ind_light_disp:	; 1 bytes @ 0x0
?_delay_us:	; 1 bytes @ 0x0
?_Delay10Us:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
??_Timer0_Isr:	; 1 bytes @ 0x0
	ds	2
??_IO_Init:	; 1 bytes @ 0x2
??_chrgCtr:	; 1 bytes @ 0x2
??_pwmStop:	; 1 bytes @ 0x2
??_gotoSleep:	; 1 bytes @ 0x2
??_pwmInit:	; 1 bytes @ 0x2
?_ADC_Sample:	; 1 bytes @ 0x2
??_ind_light_disp:	; 1 bytes @ 0x2
??_delay_us:	; 1 bytes @ 0x2
??_Delay10Us:	; 1 bytes @ 0x2
??_keyRead:	; 1 bytes @ 0x2
?_keyRead2:	; 1 bytes @ 0x2
?___lbdiv:	; 1 bytes @ 0x2
?___lbmod:	; 1 bytes @ 0x2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x2
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x2
	global	keyRead@KeyStatus
keyRead@KeyStatus:	; 1 bytes @ 0x2
	global	keyRead2@keyCount
keyRead2@keyCount:	; 1 bytes @ 0x2
	global	ind_light_disp@udata
ind_light_disp@udata:	; 1 bytes @ 0x2
	global	delay_us@time
delay_us@time:	; 1 bytes @ 0x2
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	ds	1
??_ADC_Sample:	; 1 bytes @ 0x3
??_keyRead2:	; 1 bytes @ 0x3
??___lbdiv:	; 1 bytes @ 0x3
??___lbmod:	; 1 bytes @ 0x3
	global	keyRead2@KeyStatus
keyRead2@KeyStatus:	; 1 bytes @ 0x3
	global	ind_light_disp@Count0
ind_light_disp@Count0:	; 1 bytes @ 0x3
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x3
	ds	1
??_refresh:	; 1 bytes @ 0x4
??_keyCtr:	; 1 bytes @ 0x4
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x4
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x4
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x4
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x4
	ds	1
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x5
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	ds	1
??___lwmod:	; 1 bytes @ 0x6
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	ds	1
??_checkBatAD:	; 1 bytes @ 0x7
??_workCtr:	; 1 bytes @ 0x7
??_main:	; 1 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x0
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x1
	ds	1
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0x2
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        12
;!    BSS         33
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      10
;!    BANK0            80      4      46
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    keyRead2@keyCount	PTR unsigned char  size(1) Largest target is 1
;!		 -> keyCount3(BANK0[1]), keyCount2(BANK0[1]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___lbmod
;!    _workCtr->___lwmod
;!    _refresh->_ind_light_disp
;!    _keyCtr->_keyRead2
;!    _checkBatAD->_ADC_Sample
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _checkBatAD->_ADC_Sample
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
;! (0) _main                                                 0     0      0    1881
;!                            _IO_Init
;!                            ___lbdiv
;!                            ___lbmod
;!                         _checkBatAD
;!                            _chrgCtr
;!                          _gotoSleep
;!                             _keyCtr
;!                            _pwmStop
;!                            _refresh
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              0     0      0     265
;!                            ___lwmod
;!                          _gotoSleep
;!                            _pwmInit
;! ---------------------------------------------------------------------------------
;! (2) _pwmInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _gotoSleep                                            0     0      0       0
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (3) _pwmStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     265
;!                                              2 COMMON     5     1      4
;! ---------------------------------------------------------------------------------
;! (1) _refresh                                              0     0      0      92
;!                           _delay_us
;!                     _ind_light_disp
;! ---------------------------------------------------------------------------------
;! (2) _ind_light_disp                                       2     2      0      69
;!                                              2 COMMON     2     2      0
;!                          _Delay10Us
;! ---------------------------------------------------------------------------------
;! (3) _Delay10Us                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _delay_us                                             1     1      0      23
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0     327
;!                                              4 COMMON     1     1      0
;!                            _keyRead
;!                           _keyRead2
;! ---------------------------------------------------------------------------------
;! (2) _keyRead2                                             2     1      1     260
;!                                              2 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           0     0      0     717
;!                         _ADC_Sample
;!                            ___lbdiv
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     268
;!                                              2 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                           9     8      1     449
;!                                              2 COMMON     5     4      1
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) ___lbmod                                              5     4      1     212
;!                                              2 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (1) _IO_Init                                              0     0      0       0
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
;!   _IO_Init
;!   ___lbdiv
;!   ___lbmod
;!   _checkBatAD
;!     _ADC_Sample
;!     ___lbdiv
;!   _chrgCtr
;!   _gotoSleep
;!     _pwmStop
;!   _keyCtr
;!     _keyRead
;!     _keyRead2
;!   _pwmStop
;!   _refresh
;!     _delay_us
;!     _ind_light_disp
;!       _Delay10Us
;!   _workCtr
;!     ___lwmod
;!     _gotoSleep
;!       _pwmStop
;!     _pwmInit
;!
;! _Timer0_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK1               50      0       0       6        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      4      2E       4       57.5%
;!BITBANK0            50      0       0       3        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      7       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      38       8        0.0%
;!ABS                  0      0      38       7        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 112 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
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
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_IO_Init
;;		___lbdiv
;;		___lbmod
;;		_checkBatAD
;;		_chrgCtr
;;		_gotoSleep
;;		_keyCtr
;;		_pwmStop
;;		_refresh
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	112
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	112
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	114
	
l2194:	
# 114 "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
nop ;# 
	line	115
# 115 "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
clrwdt ;# 
psect	maintext
	line	116
	
l2196:	
;SC8P171XE_Timer2.c: 116: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	117
;SC8P171XE_Timer2.c: 117: WDTCON = 0x01;
	movlw	low(01h)
	movwf	(136)^080h	;volatile
	line	118
	
l2198:	
;SC8P171XE_Timer2.c: 118: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	119
	
l2200:	
;SC8P171XE_Timer2.c: 119: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	120
	
l2202:	
;SC8P171XE_Timer2.c: 120: IO_Init();
	fcall	_IO_Init
	line	122
	
l2204:	
;SC8P171XE_Timer2.c: 122: OPTION_REG = 0B00000000;
	clrf	(129)^080h	;volatile
	line	124
	
l2206:	
;SC8P171XE_Timer2.c: 124: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	125
	
l2208:	
;SC8P171XE_Timer2.c: 125: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	126
	
l2210:	
;SC8P171XE_Timer2.c: 126: T0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	128
	
l2212:	
;SC8P171XE_Timer2.c: 128: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	130
;SC8P171XE_Timer2.c: 130: while(1)
	
l593:	
	line	132
# 132 "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
clrwdt ;# 
psect	maintext
	line	133
	
l2214:	
;SC8P171XE_Timer2.c: 133: if(chrgStep)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgStep)),w
	btfsc	status,2
	goto	u1741
	goto	u1740
u1741:
	goto	l2226
u1740:
	line	135
	
l2216:	
;SC8P171XE_Timer2.c: 134: {
;SC8P171XE_Timer2.c: 135: if(adCheckTime > 20)
	movlw	low(015h)
	subwf	(_adCheckTime),w
	skipc
	goto	u1751
	goto	u1750
u1751:
	goto	l2224
u1750:
	line	137
	
l2218:	
;SC8P171XE_Timer2.c: 136: {
;SC8P171XE_Timer2.c: 137: if(batValue < 100)
	movlw	low(064h)
	subwf	(_batValue),w
	skipnc
	goto	u1761
	goto	u1760
u1761:
	goto	l2222
u1760:
	line	139
	
l2220:	
;SC8P171XE_Timer2.c: 138: {
;SC8P171XE_Timer2.c: 139: shiwei = batValue/10;
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_batValue),w
	fcall	___lbdiv
	movwf	(_shiwei)
	line	140
;SC8P171XE_Timer2.c: 140: gewei = batValue%10;
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_batValue),w
	fcall	___lbmod
	movwf	(_gewei)
	line	141
;SC8P171XE_Timer2.c: 141: }
	goto	l2224
	line	144
	
l2222:	
;SC8P171XE_Timer2.c: 142: else
;SC8P171XE_Timer2.c: 143: {
;SC8P171XE_Timer2.c: 144: shiwei = gewei = 10;
	movlw	low(0Ah)
	movwf	(_gewei)
	movwf	(_shiwei)
	line	147
	
l2224:	
;SC8P171XE_Timer2.c: 145: }
;SC8P171XE_Timer2.c: 146: }
;SC8P171XE_Timer2.c: 147: refresh();
	fcall	_refresh
	line	148
;SC8P171XE_Timer2.c: 148: }
	goto	l598
	line	149
	
l2226:	
;SC8P171XE_Timer2.c: 149: else if(workStep)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1771
	goto	u1770
u1771:
	goto	l2234
u1770:
	line	151
	
l2228:	
;SC8P171XE_Timer2.c: 150: {
;SC8P171XE_Timer2.c: 151: shiwei = 0;
	clrf	(_shiwei)
	line	152
	
l2230:	
;SC8P171XE_Timer2.c: 152: gewei = workStep;
	movf	(_workStep),w
	movwf	(_gewei)
	goto	l2224
	line	157
	
l2234:	
;SC8P171XE_Timer2.c: 155: else
;SC8P171XE_Timer2.c: 156: {
;SC8P171XE_Timer2.c: 157: if(firstTime == 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l2242
u1780:
	line	159
	
l2236:	
;SC8P171XE_Timer2.c: 158: {
;SC8P171XE_Timer2.c: 159: PORTA |= 0x11;
	movlw	low(011h)
	iorwf	(5),f	;volatile
	line	160
	
l2238:	
;SC8P171XE_Timer2.c: 160: shiwei = gewei = 8;
	movlw	low(08h)
	movwf	(_gewei)
	movwf	(_shiwei)
	goto	l2224
	line	165
	
l2242:	
;SC8P171XE_Timer2.c: 163: else
;SC8P171XE_Timer2.c: 164: {
;SC8P171XE_Timer2.c: 165: PORTA &= 0xEE;
	movlw	low(0EEh)
	andwf	(5),f	;volatile
	line	166
	
l2244:	
;SC8P171XE_Timer2.c: 166: RA5 = 1;
	bsf	(45/8),(45)&7	;volatile
	line	167
	
l2246:	
;SC8P171XE_Timer2.c: 167: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	169
	
l598:	
	line	170
;SC8P171XE_Timer2.c: 168: }
;SC8P171XE_Timer2.c: 169: }
;SC8P171XE_Timer2.c: 170: if(!IntFlag)
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u1791
	goto	u1790
u1791:
	goto	l2250
u1790:
	goto	l593
	line	172
	
l2250:	
;SC8P171XE_Timer2.c: 172: IntFlag = 0;
	clrf	(_IntFlag)
	line	173
	
l2252:	
;SC8P171XE_Timer2.c: 173: if(++adCheckTime >= 40)
	movlw	low(028h)
	incf	(_adCheckTime),f
	subwf	((_adCheckTime)),w
	skipc
	goto	u1801
	goto	u1800
u1801:
	goto	l2256
u1800:
	line	174
	
l2254:	
;SC8P171XE_Timer2.c: 174: adCheckTime = 0;
	clrf	(_adCheckTime)
	line	175
	
l2256:	
;SC8P171XE_Timer2.c: 175: if(adCheckTime < 20)
	movlw	low(014h)
	subwf	(_adCheckTime),w
	skipnc
	goto	u1811
	goto	u1810
u1811:
	goto	l606
u1810:
	line	176
	
l2258:	
;SC8P171XE_Timer2.c: 176: checkBatAD();
	fcall	_checkBatAD
	
l606:	
	line	177
;SC8P171XE_Timer2.c: 177: chrgCtr();
	fcall	_chrgCtr
	line	178
	
l2260:	
;SC8P171XE_Timer2.c: 178: keyCtr();
	fcall	_keyCtr
	line	179
	
l2262:	
;SC8P171XE_Timer2.c: 179: if(workStep)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1821
	goto	u1820
u1821:
	goto	l2266
u1820:
	line	180
	
l2264:	
;SC8P171XE_Timer2.c: 180: workCtr();
	fcall	_workCtr
	goto	l593
	line	183
	
l2266:	
;SC8P171XE_Timer2.c: 181: else
;SC8P171XE_Timer2.c: 182: {
;SC8P171XE_Timer2.c: 183: if(keyCount == 0)
	movf	((_keyCount)),w
	btfss	status,2
	goto	u1831
	goto	u1830
u1831:
	goto	l2270
u1830:
	line	184
	
l2268:	
;SC8P171XE_Timer2.c: 184: pwmStop();
	fcall	_pwmStop
	line	186
	
l2270:	
;SC8P171XE_Timer2.c: 186: if(chrgStep == 0 && keyCount == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgStep)),w
	btfss	status,2
	goto	u1841
	goto	u1840
u1841:
	goto	l2278
u1840:
	
l2272:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u1851
	goto	u1850
u1851:
	goto	l2278
u1850:
	line	188
	
l2274:	
;SC8P171XE_Timer2.c: 187: {
;SC8P171XE_Timer2.c: 188: if(++sleepTime >= 100)
	movlw	low(064h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l593
u1860:
	line	189
	
l2276:	
;SC8P171XE_Timer2.c: 189: gotoSleep();
	fcall	_gotoSleep
	goto	l593
	line	192
	
l2278:	
	line	194
	
l2282:	
;SC8P171XE_Timer2.c: 193: {
;SC8P171XE_Timer2.c: 194: sleepTime = 0;
	clrf	(_sleepTime)
	line	195
;SC8P171XE_Timer2.c: 195: }
	goto	l593
	global	start
	ljmp	start
	opt stack 0
	line	202
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 205 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
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
;;		___lwmod
;;		_gotoSleep
;;		_pwmInit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	205
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	205
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	207
	
l1956:	
;SC8P171XE_Timer2.c: 207: pwmInit();
	fcall	_pwmInit
	line	209
	
l1958:	
;SC8P171XE_Timer2.c: 209: if(workStep < 9)
	movlw	low(09h)
	subwf	(_workStep),w
	skipnc
	goto	u1261
	goto	u1260
u1261:
	goto	l1972
u1260:
	line	211
	
l1960:	
;SC8P171XE_Timer2.c: 210: {
;SC8P171XE_Timer2.c: 211: maxDuty = 70 + workStep*3;
	movf	(_workStep),w
	addwf	(_workStep),w
	addwf	(_workStep),w
	addlw	046h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_maxDuty)
	line	212
;SC8P171XE_Timer2.c: 212: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u1271
	goto	u1270
u1271:
	goto	l1964
u1270:
	line	213
	
l1962:	
;SC8P171XE_Timer2.c: 213: maxDuty = 70;
	movlw	low(046h)
	movwf	(_maxDuty)
	goto	l621
	line	214
	
l1964:	
;SC8P171XE_Timer2.c: 214: else if(workStep == 8)
		movlw	8
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u1281
	goto	u1280
u1281:
	goto	l621
u1280:
	line	215
	
l1966:	
;SC8P171XE_Timer2.c: 215: maxDuty = 94;
	movlw	low(05Eh)
	movwf	(_maxDuty)
	line	216
	
l621:	
;SC8P171XE_Timer2.c: 216: if(duty < maxDuty)
	movf	(_maxDuty),w
	subwf	(_duty),w
	skipnc
	goto	u1291
	goto	u1290
u1291:
	goto	l1970
u1290:
	line	217
	
l1968:	
;SC8P171XE_Timer2.c: 217: duty++;
	incf	(_duty),f
	goto	l625
	line	219
	
l1970:	
;SC8P171XE_Timer2.c: 218: else
;SC8P171XE_Timer2.c: 219: duty = maxDuty;
	movf	(_maxDuty),w
	movwf	(_duty)
	goto	l625
	line	224
	
l1972:	
;SC8P171XE_Timer2.c: 221: else
;SC8P171XE_Timer2.c: 222: {
;SC8P171XE_Timer2.c: 224: if(++count3S >= 300)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_count3S),f
	skipnz
	incf	(_count3S+1),f
	movlw	01h
	subwf	((_count3S+1)),w
	movlw	02Ch
	skipnz
	subwf	((_count3S)),w
	skipc
	goto	u1301
	goto	u1300
u1301:
	goto	l1978
u1300:
	line	226
	
l1974:	
;SC8P171XE_Timer2.c: 225: {
;SC8P171XE_Timer2.c: 226: count3S = 0;
	clrf	(_count3S)
	clrf	(_count3S+1)
	line	227
	
l1976:	
;SC8P171XE_Timer2.c: 227: duty = 70;
	movlw	low(046h)
	movwf	(_duty)
	line	229
	
l1978:	
;SC8P171XE_Timer2.c: 228: }
;SC8P171XE_Timer2.c: 229: if(count3S % 9 == 0)
	movlw	09h
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_count3S+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_count3S),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	((0+(?___lwmod))),w
iorwf	((1+(?___lwmod))),w
	btfss	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l625
u1310:
	line	231
	
l1980:	
;SC8P171XE_Timer2.c: 230: {
;SC8P171XE_Timer2.c: 231: if(count3S < 150)
	movlw	0
	subwf	(_count3S+1),w
	movlw	096h
	skipnz
	subwf	(_count3S),w
	skipnc
	goto	u1321
	goto	u1320
u1321:
	goto	l1986
u1320:
	line	233
	
l1982:	
;SC8P171XE_Timer2.c: 232: {
;SC8P171XE_Timer2.c: 233: if(++duty > 94)
	movlw	low(05Fh)
	incf	(_duty),f
	subwf	((_duty)),w
	skipc
	goto	u1331
	goto	u1330
u1331:
	goto	l625
u1330:
	line	234
	
l1984:	
;SC8P171XE_Timer2.c: 234: duty = 94;
	movlw	low(05Eh)
	movwf	(_duty)
	goto	l625
	line	238
	
l1986:	
;SC8P171XE_Timer2.c: 236: else
;SC8P171XE_Timer2.c: 237: {
;SC8P171XE_Timer2.c: 238: if(--duty < 70)
	movlw	low(046h)
	decf	(_duty),f
	subwf	((_duty)),w
	skipnc
	goto	u1341
	goto	u1340
u1341:
	goto	l625
u1340:
	line	239
	
l1988:	
;SC8P171XE_Timer2.c: 239: duty = 70;
	movlw	low(046h)
	movwf	(_duty)
	line	242
	
l625:	
	line	247
;SC8P171XE_Timer2.c: 240: }
;SC8P171XE_Timer2.c: 241: }
;SC8P171XE_Timer2.c: 242: }
;SC8P171XE_Timer2.c: 247: PWMD1L = duty;
	movf	(_duty),w
	movwf	(23)	;volatile
	line	248
;SC8P171XE_Timer2.c: 248: if(adresult > 2260)
	movlw	08h
	subwf	(_adresult+1),w	;volatile
	movlw	0D5h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u1351
	goto	u1350
u1351:
	goto	l632
u1350:
	line	250
	
l1990:	
;SC8P171XE_Timer2.c: 249: {
;SC8P171XE_Timer2.c: 250: RA0 = 1;
	bsf	(40/8),(40)&7	;volatile
	line	251
	
l1992:	
;SC8P171XE_Timer2.c: 251: PORTA;
	movf	(5),w	;volatile
	line	252
;SC8P171XE_Timer2.c: 252: PORTB;
	movf	(6),w	;volatile
	line	253
	
l1994:	
;SC8P171XE_Timer2.c: 253: RA4 = 0;
	bcf	(44/8),(44)&7	;volatile
	line	254
;SC8P171XE_Timer2.c: 254: }
	goto	l633
	line	255
	
l632:	
	line	257
;SC8P171XE_Timer2.c: 255: else
;SC8P171XE_Timer2.c: 256: {
;SC8P171XE_Timer2.c: 257: RA0 = 0;
	bcf	(40/8),(40)&7	;volatile
	line	258
	
l1996:	
;SC8P171XE_Timer2.c: 258: PORTA;
	movf	(5),w	;volatile
	line	259
;SC8P171XE_Timer2.c: 259: PORTB;
	movf	(6),w	;volatile
	line	260
	
l1998:	
;SC8P171XE_Timer2.c: 260: RA4 = 1;
	bsf	(44/8),(44)&7	;volatile
	line	261
	
l633:	
	line	263
;SC8P171XE_Timer2.c: 261: }
;SC8P171XE_Timer2.c: 263: if(count900s > 900)
	movlw	03h
	subwf	(_count900s+1),w
	movlw	085h
	skipnz
	subwf	(_count900s),w
	skipc
	goto	u1361
	goto	u1360
u1361:
	goto	l635
u1360:
	line	265
	
l2000:	
;SC8P171XE_Timer2.c: 264: {
;SC8P171XE_Timer2.c: 265: gotoSleep();
	fcall	_gotoSleep
	line	268
	
l635:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 272 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 0/0
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	272
global __ptext2
__ptext2:	;psect for function _pwmInit
psect	text2
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	272
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmInit: [wreg+status,2+status,0]
	line	274
	
l1658:	
;SC8P171XE_Timer2.c: 274: if(pwmFlag == 0)
	movf	((_pwmFlag)),w
	btfss	status,2
	goto	u791
	goto	u790
u791:
	goto	l639
u790:
	line	276
	
l1660:	
;SC8P171XE_Timer2.c: 275: {
;SC8P171XE_Timer2.c: 276: pwmFlag = 1;
	clrf	(_pwmFlag)
	incf	(_pwmFlag),f
	line	277
;SC8P171XE_Timer2.c: 277: TRISB |= 0x10;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(4/8),(4)&7	;volatile
	line	278
	
l1662:	
;SC8P171XE_Timer2.c: 278: PWMCON = 0x60;
	movlw	low(060h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(27)	;volatile
	line	279
	
l1664:	
;SC8P171XE_Timer2.c: 279: PWMTH = 0x00;
	clrf	(26)	;volatile
	line	280
	
l1666:	
;SC8P171XE_Timer2.c: 280: PWMTL = 100;
	movlw	low(064h)
	movwf	(25)	;volatile
	line	281
;SC8P171XE_Timer2.c: 281: PWMD01H = 0X00;
	clrf	(24)	;volatile
	line	282
	
l1668:	
;SC8P171XE_Timer2.c: 282: PWMD1L = duty;
	movf	(_duty),w
	movwf	(23)	;volatile
	line	283
	
l1670:	
;SC8P171XE_Timer2.c: 283: PWMCON |= 0x02;
	bsf	(27)+(1/8),(1)&7	;volatile
	line	284
	
l1672:	
;SC8P171XE_Timer2.c: 284: TRISB &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(4/8),(4)&7	;volatile
	line	286
	
l639:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_gotoSleep

;; *************** function _gotoSleep *****************
;; Defined at:
;;		line 475 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
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
;;		_pwmStop
;; This function is called by:
;;		_main
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	475
global __ptext3
__ptext3:	;psect for function _gotoSleep
psect	text3
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	475
	global	__size_of_gotoSleep
	__size_of_gotoSleep	equ	__end_of_gotoSleep-_gotoSleep
	
_gotoSleep:	
;incstack = 0
	opt	stack 4
; Regs used in _gotoSleep: [status,2+status,0+pclath+cstack]
	line	477
	
l1642:	
;SC8P171XE_Timer2.c: 479: ledFlag = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	480
;SC8P171XE_Timer2.c: 480: sleepTime = 0;
	clrf	(_sleepTime)
	line	481
	
l1644:	
;SC8P171XE_Timer2.c: 481: firstTime = 1;
	clrf	(_firstTime)
	incf	(_firstTime),f
	line	483
	
l1646:	
;SC8P171XE_Timer2.c: 483: pwmStop();
	fcall	_pwmStop
	line	484
	
l1648:	
;SC8P171XE_Timer2.c: 484: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	485
	
l1650:	
;SC8P171XE_Timer2.c: 485: PORTB = 0x00;
	clrf	(6)	;volatile
	line	486
	
l1652:	
;SC8P171XE_Timer2.c: 486: workStep = 0;
	clrf	(_workStep)
	line	487
	
l1654:	
;SC8P171XE_Timer2.c: 487: RA5 = 1;
	bsf	(45/8),(45)&7	;volatile
	line	488
	
l1656:	
;SC8P171XE_Timer2.c: 488: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	516
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_gotoSleep
	__end_of_gotoSleep:
	signat	_gotoSleep,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 289 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/100
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
;;		_gotoSleep
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	289
global __ptext4
__ptext4:	;psect for function _pwmStop
psect	text4
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	289
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [status,2]
	line	291
	
l1634:	
;SC8P171XE_Timer2.c: 291: pwmFlag = 0;
	clrf	(_pwmFlag)
	line	292
	
l1636:	
;SC8P171XE_Timer2.c: 292: PWMCON &= 0xFD;
	bcf	(27)+(1/8),(1)&7	;volatile
	line	293
	
l1638:	
;SC8P171XE_Timer2.c: 293: TRISB |= 0x10;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(4/8),(4)&7	;volatile
	line	294
	
l642:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\mcuproject\scm\SC8P171XE开发包\SCMCU_IDE_V2.00.09_Beta4\data\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 100/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SC8P171XE开发包\SCMCU_IDE_V2.00.09_Beta4\data\sources\common\lwmod.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___lwmod
psect	text5
	file	"C:\mcuproject\scm\SC8P171XE开发包\SCMCU_IDE_V2.00.09_Beta4\data\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l1836:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l1852
u1100:
	line	14
	
l1838:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1842
	line	16
	
l1840:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l1842:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1111
	goto	u1110
u1111:
	goto	l1840
u1110:
	line	20
	
l1844:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1125
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1125:
	skipc
	goto	u1121
	goto	u1120
u1121:
	goto	l1848
u1120:
	line	21
	
l1846:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l1848:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l1850:	
	decfsz	(___lwmod@counter),f
	goto	u1131
	goto	u1130
u1131:
	goto	l1844
u1130:
	line	25
	
l1852:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1109:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_refresh

;; *************** function _refresh *****************
;; Defined at:
;;		line 583 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
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
;;		_delay_us
;;		_ind_light_disp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	583
global __ptext6
__ptext6:	;psect for function _refresh
psect	text6
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	583
	global	__size_of_refresh
	__size_of_refresh	equ	__end_of_refresh-_refresh
	
_refresh:	
;incstack = 0
	opt	stack 4
; Regs used in _refresh: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	585
	
l1868:	
;SC8P171XE_Timer2.c: 585: RA5 = 1;
	bsf	(45/8),(45)&7	;volatile
	line	586
;SC8P171XE_Timer2.c: 586: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	587
	
l1870:	
;SC8P171XE_Timer2.c: 587: if(shiwei > 0)
	movf	((_shiwei)),w
	btfsc	status,2
	goto	u1141
	goto	u1140
u1141:
	goto	l1884
u1140:
	line	589
	
l1872:	
;SC8P171XE_Timer2.c: 588: {
;SC8P171XE_Timer2.c: 589: ind_light_disp(table[shiwei]);
	movf	(_shiwei),w
	addlw	low(_table|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_ind_light_disp
	line	590
	
l1874:	
;SC8P171XE_Timer2.c: 590: RA5 = 1;
	bsf	(45/8),(45)&7	;volatile
	line	591
	
l1876:	
;SC8P171XE_Timer2.c: 591: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	592
	
l1878:	
;SC8P171XE_Timer2.c: 592: delay_us(100);
	movlw	low(064h)
	fcall	_delay_us
	line	593
	
l1880:	
;SC8P171XE_Timer2.c: 593: RA5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(45/8),(45)&7	;volatile
	line	594
	
l1882:	
;SC8P171XE_Timer2.c: 594: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	596
	
l1884:	
;SC8P171XE_Timer2.c: 595: }
;SC8P171XE_Timer2.c: 596: ind_light_disp(table[gewei]);
	movf	(_gewei),w
	addlw	low(_table|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_ind_light_disp
	line	597
	
l1886:	
;SC8P171XE_Timer2.c: 597: RA5 = 0;
	bcf	(45/8),(45)&7	;volatile
	line	598
	
l1888:	
;SC8P171XE_Timer2.c: 598: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	599
;SC8P171XE_Timer2.c: 599: delay_us(100);
	movlw	low(064h)
	fcall	_delay_us
	line	600
	
l1890:	
;SC8P171XE_Timer2.c: 600: RA5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(45/8),(45)&7	;volatile
	line	601
	
l1892:	
;SC8P171XE_Timer2.c: 601: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	602
	
l721:	
	return
	opt stack 0
GLOBAL	__end_of_refresh
	__end_of_refresh:
	signat	_refresh,89
	global	_ind_light_disp

;; *************** function _ind_light_disp *****************
;; Defined at:
;;		line 604 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;  udata           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  udata           1    2[COMMON] unsigned char 
;;  Count0          1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 900/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay10Us
;; This function is called by:
;;		_refresh
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	604
global __ptext7
__ptext7:	;psect for function _ind_light_disp
psect	text7
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	604
	global	__size_of_ind_light_disp
	__size_of_ind_light_disp	equ	__end_of_ind_light_disp-_ind_light_disp
	
_ind_light_disp:	
;incstack = 0
	opt	stack 4
; Regs used in _ind_light_disp: [wreg+status,2+status,0+pclath+cstack]
;ind_light_disp@udata stored from wreg
	movwf	(ind_light_disp@udata)
	line	607
	
l1780:	
;SC8P171XE_Timer2.c: 606: unsigned char Count0;
;SC8P171XE_Timer2.c: 607: for(Count0=0;Count0<=7;Count0++)
	clrf	(ind_light_disp@Count0)
	line	608
	
l724:	
	line	609
;SC8P171XE_Timer2.c: 608: {
;SC8P171XE_Timer2.c: 609: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	610
	
l1786:	
;SC8P171XE_Timer2.c: 610: Delay10Us();
	fcall	_Delay10Us
	line	611
	
l1788:	
;SC8P171XE_Timer2.c: 611: if(udata&0x80)
	btfss	(ind_light_disp@udata),(7)&7
	goto	u1031
	goto	u1030
u1031:
	goto	l726
u1030:
	line	613
	
l1790:	
;SC8P171XE_Timer2.c: 612: {
;SC8P171XE_Timer2.c: 613: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	614
	
l1792:	
;SC8P171XE_Timer2.c: 614: Delay10Us();
	fcall	_Delay10Us
	line	615
;SC8P171XE_Timer2.c: 615: }
	goto	l1796
	line	616
	
l726:	
	line	618
;SC8P171XE_Timer2.c: 616: else
;SC8P171XE_Timer2.c: 617: {
;SC8P171XE_Timer2.c: 618: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	goto	l1792
	line	621
	
l1796:	
;SC8P171XE_Timer2.c: 620: }
;SC8P171XE_Timer2.c: 621: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	622
;SC8P171XE_Timer2.c: 622: Delay10Us();
	fcall	_Delay10Us
	line	623
	
l1798:	
;SC8P171XE_Timer2.c: 623: udata<<=1;
	clrc
	rlf	(ind_light_disp@udata),f
	line	607
	
l1800:	
	incf	(ind_light_disp@Count0),f
	
l1802:	
	movlw	low(08h)
	subwf	(ind_light_disp@Count0),w
	skipc
	goto	u1041
	goto	u1040
u1041:
	goto	l724
u1040:
	
l725:	
	line	625
;SC8P171XE_Timer2.c: 624: }
;SC8P171XE_Timer2.c: 625: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	626
;SC8P171XE_Timer2.c: 626: RB0=0;
	bcf	(48/8),(48)&7	;volatile
	line	627
	
l728:	
	return
	opt stack 0
GLOBAL	__end_of_ind_light_disp
	__end_of_ind_light_disp:
	signat	_ind_light_disp,4217
	global	_Delay10Us

;; *************** function _Delay10Us *****************
;; Defined at:
;;		line 644 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 0/0
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
;;		_ind_light_disp
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	644
global __ptext8
__ptext8:	;psect for function _Delay10Us
psect	text8
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	644
	global	__size_of_Delay10Us
	__size_of_Delay10Us	equ	__end_of_Delay10Us-_Delay10Us
	
_Delay10Us:	
;incstack = 0
	opt	stack 4
; Regs used in _Delay10Us: []
	line	646
	
l1640:	
;SC8P171XE_Timer2.c: 646: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	647
;SC8P171XE_Timer2.c: 647: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	648
;SC8P171XE_Timer2.c: 648: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	649
;SC8P171XE_Timer2.c: 649: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	650
;SC8P171XE_Timer2.c: 650: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	651
;SC8P171XE_Timer2.c: 651: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	652
	
l734:	
	return
	opt stack 0
GLOBAL	__end_of_Delay10Us
	__end_of_Delay10Us:
	signat	_Delay10Us,89
	global	_delay_us

;; *************** function _delay_us *****************
;; Defined at:
;;		line 655 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;  time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  time            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
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
;;		_refresh
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	655
global __ptext9
__ptext9:	;psect for function _delay_us
psect	text9
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	655
	global	__size_of_delay_us
	__size_of_delay_us	equ	__end_of_delay_us-_delay_us
	
_delay_us:	
;incstack = 0
	opt	stack 5
; Regs used in _delay_us: [wreg+status,2+status,0]
;delay_us@time stored from wreg
	movwf	(delay_us@time)
	line	657
	
l1804:	
;SC8P171XE_Timer2.c: 657: while(time)
	goto	l1810
	line	659
	
l1806:	
;SC8P171XE_Timer2.c: 658: {
;SC8P171XE_Timer2.c: 659: --time;
	decf	(delay_us@time),f
	line	660
	
l1808:	
;SC8P171XE_Timer2.c: 660: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	657
	
l1810:	
	movf	((delay_us@time)),w
	btfss	status,2
	goto	u1051
	goto	u1050
u1051:
	goto	l1806
u1050:
	line	662
	
l740:	
	return
	opt stack 0
GLOBAL	__end_of_delay_us
	__end_of_delay_us:
	signat	_delay_us,4217
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 551 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kclick          1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_keyRead
;;		_keyRead2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	551
global __ptext10
__ptext10:	;psect for function _keyCtr
psect	text10
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	551
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _keyCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	553
	
l1930:	
;SC8P171XE_Timer2.c: 553: u8t kclick = keyRead(!RA2);
	clrc
	btfss	(42/8),(42)&7	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	554
	
l1932:	
;SC8P171XE_Timer2.c: 554: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1191
	goto	u1190
u1191:
	goto	l1936
u1190:
	line	557
	
l1934:	
;SC8P171XE_Timer2.c: 555: {
;SC8P171XE_Timer2.c: 557: workStep = 0;
	clrf	(_workStep)
	line	558
;SC8P171XE_Timer2.c: 558: }
	goto	l1942
	line	559
	
l1936:	
;SC8P171XE_Timer2.c: 559: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1201
	goto	u1200
u1201:
	goto	l1942
u1200:
	line	561
	
l1938:	
;SC8P171XE_Timer2.c: 560: {
;SC8P171XE_Timer2.c: 561: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	562
	
l1940:	
;SC8P171XE_Timer2.c: 562: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	564
	
l1942:	
;SC8P171XE_Timer2.c: 563: }
;SC8P171XE_Timer2.c: 564: if(workStep)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l717
u1210:
	line	566
	
l1944:	
;SC8P171XE_Timer2.c: 565: {
;SC8P171XE_Timer2.c: 566: if(keyRead2(!RA1,&keyCount2))
	movlw	(low(_keyCount2|((0x0)<<8)))&0ffh
	movwf	(keyRead2@keyCount)
	clrc
	btfss	(41/8),(41)&7	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	fcall	_keyRead2
	xorlw	0
	skipnz
	goto	u1221
	goto	u1220
u1221:
	goto	l1950
u1220:
	line	569
	
l1946:	
;SC8P171XE_Timer2.c: 567: {
;SC8P171XE_Timer2.c: 569: if(++workStep >= 9)
	movlw	low(09h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u1231
	goto	u1230
u1231:
	goto	l1950
u1230:
	line	570
	
l1948:	
;SC8P171XE_Timer2.c: 570: workStep = 9;
	movlw	low(09h)
	movwf	(_workStep)
	line	573
	
l1950:	
;SC8P171XE_Timer2.c: 571: }
;SC8P171XE_Timer2.c: 573: if(keyRead2(!RB2,&keyCount3))
	movlw	(low(_keyCount3|((0x0)<<8)))&0ffh
	movwf	(keyRead2@keyCount)
	clrc
	btfss	(50/8),(50)&7	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	fcall	_keyRead2
	xorlw	0
	skipnz
	goto	u1241
	goto	u1240
u1241:
	goto	l717
u1240:
	line	576
	
l1952:	
;SC8P171XE_Timer2.c: 574: {
;SC8P171XE_Timer2.c: 576: if(--workStep <= 1)
	movlw	low(02h)
	decf	(_workStep),f
	subwf	((_workStep)),w
	skipnc
	goto	u1251
	goto	u1250
u1251:
	goto	l717
u1250:
	line	577
	
l1954:	
;SC8P171XE_Timer2.c: 577: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	580
	
l717:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead2

;; *************** function _keyRead2 *****************
;; Defined at:
;;		line 451 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;  KeyStatus       1    wreg     unsigned char 
;;  keyCount        1    2[COMMON] PTR unsigned char 
;;		 -> keyCount3(1), keyCount2(1), 
;; Auto vars:     Size  Location     Type
;;  KeyStatus       1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 900/0
;;		Unchanged: 100/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	451
global __ptext11
__ptext11:	;psect for function _keyRead2
psect	text11
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	451
	global	__size_of_keyRead2
	__size_of_keyRead2	equ	__end_of_keyRead2-_keyRead2
	
_keyRead2:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead2: [wreg-fsr0h+status,2+status,0]
;keyRead2@KeyStatus stored from wreg
	movwf	(keyRead2@KeyStatus)
	line	453
	
l1758:	
;SC8P171XE_Timer2.c: 453: if (KeyStatus)
	movf	((keyRead2@KeyStatus)),w
	btfsc	status,2
	goto	u1001
	goto	u1000
u1001:
	goto	l1766
u1000:
	line	455
	
l1760:	
;SC8P171XE_Timer2.c: 454: {
;SC8P171XE_Timer2.c: 455: (*keyCount)++;
	movf	(keyRead2@keyCount),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	incf	indf,f
	line	456
	
l1762:	
;SC8P171XE_Timer2.c: 456: if(*keyCount >= 200)
	movf	(keyRead2@keyCount),w
	movwf	fsr0
	movlw	low(0C8h)
	subwf	indf,w
	skipc
	goto	u1011
	goto	u1010
u1011:
	goto	l1776
u1010:
	line	458
	
l1764:	
;SC8P171XE_Timer2.c: 457: {
;SC8P171XE_Timer2.c: 458: *keyCount = 200;
	movf	(keyRead2@keyCount),w
	movwf	fsr0
	movlw	low(0C8h)
	movwf	indf
	goto	l1776
	line	463
	
l1766:	
;SC8P171XE_Timer2.c: 461: else
;SC8P171XE_Timer2.c: 462: {
;SC8P171XE_Timer2.c: 463: if(*keyCount >= 8)
	movf	(keyRead2@keyCount),w
	movwf	fsr0
	movlw	low(08h)
	bcf	status, 7	;select IRP bank0
	subwf	indf,w
	skipc
	goto	u1021
	goto	u1020
u1021:
	goto	l1774
u1020:
	line	465
	
l1768:	
;SC8P171XE_Timer2.c: 464: {
;SC8P171XE_Timer2.c: 465: *keyCount = 0;
	movf	(keyRead2@keyCount),w
	movwf	fsr0
	clrf	indf
	line	466
	
l1770:	
;SC8P171XE_Timer2.c: 466: return 1;
	movlw	low(01h)
	goto	l696
	line	468
	
l1774:	
;SC8P171XE_Timer2.c: 467: }
;SC8P171XE_Timer2.c: 468: *keyCount = 0;
	movf	(keyRead2@keyCount),w
	movwf	fsr0
	clrf	indf
	line	470
	
l1776:	
;SC8P171XE_Timer2.c: 469: }
;SC8P171XE_Timer2.c: 470: return 0;
	movlw	low(0)
	line	471
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead2
	__end_of_keyRead2:
	signat	_keyRead2,8313
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 416 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;  KeyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  KeyStatus       1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	416
global __ptext12
__ptext12:	;psect for function _keyRead
psect	text12
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	416
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@KeyStatus stored from wreg
	movwf	(keyRead@KeyStatus)
	line	418
	
l1720:	
;SC8P171XE_Timer2.c: 418: if (KeyStatus)
	movf	((keyRead@KeyStatus)),w
	btfsc	status,2
	goto	u951
	goto	u950
u951:
	goto	l1734
u950:
	line	420
	
l1722:	
;SC8P171XE_Timer2.c: 419: {
;SC8P171XE_Timer2.c: 420: if(++keyCount >= 150)
	movlw	low(096h)
	incf	(_keyCount),f
	subwf	((_keyCount)),w
	skipc
	goto	u961
	goto	u960
u961:
	goto	l1738
u960:
	line	422
	
l1724:	
;SC8P171XE_Timer2.c: 421: {
;SC8P171XE_Timer2.c: 422: keyCount = 150;
	movlw	low(096h)
	movwf	(_keyCount)
	line	423
	
l1726:	
;SC8P171XE_Timer2.c: 423: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u971
	goto	u970
u971:
	goto	l1738
u970:
	line	425
	
l1728:	
;SC8P171XE_Timer2.c: 424: {
;SC8P171XE_Timer2.c: 425: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	426
	
l1730:	
;SC8P171XE_Timer2.c: 426: return 2;
	movlw	low(02h)
	goto	l685
	line	433
	
l1734:	
;SC8P171XE_Timer2.c: 431: else
;SC8P171XE_Timer2.c: 432: {
;SC8P171XE_Timer2.c: 433: if(keyCount >= 150)
	movlw	low(096h)
	subwf	(_keyCount),w
	skipc
	goto	u981
	goto	u980
u981:
	goto	l1744
u980:
	line	435
	
l1736:	
;SC8P171XE_Timer2.c: 434: {
;SC8P171XE_Timer2.c: 435: keyCount = 0;
	clrf	(_keyCount)
	line	436
;SC8P171XE_Timer2.c: 436: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	437
	
l1738:	
;SC8P171XE_Timer2.c: 437: return 0;
	movlw	low(0)
	goto	l685
	line	439
	
l1744:	
;SC8P171XE_Timer2.c: 439: else if(keyCount >= 5)
	movlw	low(05h)
	subwf	(_keyCount),w
	skipc
	goto	u991
	goto	u990
u991:
	goto	l1752
u990:
	line	441
	
l1746:	
;SC8P171XE_Timer2.c: 440: {
;SC8P171XE_Timer2.c: 441: keyCount = 0;
	clrf	(_keyCount)
	line	442
	
l1748:	
;SC8P171XE_Timer2.c: 442: return 1;
	movlw	low(01h)
	goto	l685
	line	444
	
l1752:	
;SC8P171XE_Timer2.c: 443: }
;SC8P171XE_Timer2.c: 444: keyCount = 0;
	clrf	(_keyCount)
	goto	l1738
	line	447
	
l685:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 521 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
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
	line	521
global __ptext13
__ptext13:	;psect for function _chrgCtr
psect	text13
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	521
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 6
; Regs used in _chrgCtr: [wreg+status,2]
	line	523
	
l1910:	
;SC8P171XE_Timer2.c: 523: if(RB5)
	btfss	(53/8),(53)&7	;volatile
	goto	u1171
	goto	u1170
u1171:
	goto	l1928
u1170:
	line	526
	
l1912:	
;SC8P171XE_Timer2.c: 524: {
;SC8P171XE_Timer2.c: 526: chrgStep = 1;
	clrf	(_chrgStep)
	incf	(_chrgStep),f
	line	527
	
l1914:	
;SC8P171XE_Timer2.c: 527: workStep = 0;
	clrf	(_workStep)
	line	528
	
l1916:	
;SC8P171XE_Timer2.c: 528: if(batValue > 99)
	movlw	low(064h)
	subwf	(_batValue),w
	skipc
	goto	u1181
	goto	u1180
u1181:
	goto	l703
u1180:
	line	532
	
l1918:	
;SC8P171XE_Timer2.c: 529: {
;SC8P171XE_Timer2.c: 532: PORTA |= 0x01;
	bsf	(5)+(0/8),(0)&7	;volatile
	line	533
	
l1920:	
;SC8P171XE_Timer2.c: 533: PORTB;
	movf	(6),w	;volatile
	line	534
	
l1922:	
;SC8P171XE_Timer2.c: 534: PORTA &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	535
;SC8P171XE_Timer2.c: 535: }
	goto	l706
	line	536
	
l703:	
	line	540
;SC8P171XE_Timer2.c: 536: else
;SC8P171XE_Timer2.c: 537: {
;SC8P171XE_Timer2.c: 540: PORTA |= 0x10;
	bsf	(5)+(4/8),(4)&7	;volatile
	line	541
	
l1924:	
;SC8P171XE_Timer2.c: 541: PORTB;
	movf	(6),w	;volatile
	line	542
	
l1926:	
;SC8P171XE_Timer2.c: 542: PORTA &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	goto	l706
	line	547
	
l1928:	
;SC8P171XE_Timer2.c: 545: else
;SC8P171XE_Timer2.c: 546: {
;SC8P171XE_Timer2.c: 547: chrgStep = 0;
	clrf	(_chrgStep)
	line	549
	
l706:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 297 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
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
;;		_ADC_Sample
;;		___lbdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	297
global __ptext14
__ptext14:	;psect for function _checkBatAD
psect	text14
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	297
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 5
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	299
	
l2178:	
;SC8P171XE_Timer2.c: 299: ANS3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1179/8)^080h,(1179)&7	;volatile
	line	300
;SC8P171XE_Timer2.c: 300: TRISA3 = 1;
	bsf	(1067/8)^080h,(1067)&7	;volatile
	line	301
	
l2180:	
;SC8P171XE_Timer2.c: 301: ADC_Sample(3,5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(03h)
	fcall	_ADC_Sample
	line	303
	
l2182:	
;SC8P171XE_Timer2.c: 303: if(adresult > 2800)
	movlw	0Ah
	subwf	(_adresult+1),w	;volatile
	movlw	0F1h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l2186
u1720:
	line	304
	
l2184:	
;SC8P171XE_Timer2.c: 304: adresult = 2800;
	movlw	0F0h
	movwf	(_adresult)	;volatile
	movlw	0Ah
	movwf	((_adresult))+1	;volatile
	goto	l2190
	line	305
	
l2186:	
;SC8P171XE_Timer2.c: 305: else if(adresult < 2200)
	movlw	08h
	subwf	(_adresult+1),w	;volatile
	movlw	098h
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u1731
	goto	u1730
u1731:
	goto	l2190
u1730:
	line	306
	
l2188:	
;SC8P171XE_Timer2.c: 306: adresult = 2200;
	movlw	098h
	movwf	(_adresult)	;volatile
	movlw	08h
	movwf	((_adresult))+1	;volatile
	line	307
	
l2190:	
;SC8P171XE_Timer2.c: 307: batValue = adresult - 2200;
	movf	(_adresult),w	;volatile
	addlw	068h
	movwf	(_batValue)
	line	309
	
l2192:	
;SC8P171XE_Timer2.c: 309: batValue= batValue/6;
	movlw	low(06h)
	movwf	(___lbdiv@divisor)
	movf	(_batValue),w
	fcall	___lbdiv
	movwf	(_batValue)
	line	311
	
l648:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\SC8P171XE开发包\SCMCU_IDE_V2.00.09_Beta4\data\sources\common\lbdiv.c"
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
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 100/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SC8P171XE开发包\SCMCU_IDE_V2.00.09_Beta4\data\sources\common\lbdiv.c"
	line	4
global __ptext15
__ptext15:	;psect for function ___lbdiv
psect	text15
	file	"C:\mcuproject\scm\SC8P171XE开发包\SCMCU_IDE_V2.00.09_Beta4\data\sources\common\lbdiv.c"
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
	
l1812:	
	clrf	(___lbdiv@quotient)
	line	10
	
l1814:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1061
	goto	u1060
u1061:
	goto	l1832
u1060:
	line	11
	
l1816:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l1820
	
l1020:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l1818:	
	incf	(___lbdiv@counter),f
	line	12
	
l1820:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1071
	goto	u1070
u1071:
	goto	l1020
u1070:
	line	16
	
l1022:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l1822:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1081
	goto	u1080
u1081:
	goto	l1828
u1080:
	line	19
	
l1824:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l1826:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l1828:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l1830:	
	decfsz	(___lbdiv@counter),f
	goto	u1091
	goto	u1090
u1091:
	goto	l1022
u1090:
	line	25
	
l1832:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1025:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 324 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;;  adldo           1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    0[BANK0 ] unsigned char 
;;  ad_temp         2    2[BANK0 ] volatile unsigned int 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/100
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         0       4       0
;;      Temps:          4       0       0
;;      Totals:         5       4       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	324
global __ptext16
__ptext16:	;psect for function _ADC_Sample
psect	text16
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	324
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 5
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	328
	
l2132:	
;SC8P171XE_Timer2.c: 326: volatile unsigned int ad_temp;
;SC8P171XE_Timer2.c: 328: if(LDOEN^(adldo!=0))
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1274/8)^080h,(1274)&7	;volatile
	goto	u1571
	goto	u1570
u1571:
	movlw	1
	goto	u1572
u1570:
	movlw	0
u1572:
	movwf	(??_ADC_Sample+0)+0
	movf	((ADC_Sample@adldo)),w
	btfss	status,2
	goto	u1581
	goto	u1580
u1581:
	movlw	1
	goto	u1582
u1580:
	movlw	0
u1582:
	xorwf	(??_ADC_Sample+0)+0,w
	skipnz
	goto	u1591
	goto	u1590
u1591:
	goto	l2136
u1590:
	line	330
	
l2134:	
;SC8P171XE_Timer2.c: 329: {
;SC8P171XE_Timer2.c: 330: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(159)^080h	;volatile
	line	331
;SC8P171XE_Timer2.c: 331: _delay((unsigned long)((100)*(8000000UL/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
movwf	((??_ADC_Sample+0)+0),f
	u1877:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u1877
	nop
opt asmopt_pop

	line	332
;SC8P171XE_Timer2.c: 332: }
	goto	l2138
	line	334
	
l2136:	
;SC8P171XE_Timer2.c: 333: else
;SC8P171XE_Timer2.c: 334: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(159)^080h	;volatile
	line	336
	
l2138:	
;SC8P171XE_Timer2.c: 336: ADCON0 = 0X41 | (adch << 2);
	bcf	status, 5	;RP0=0, select bank0
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1605:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1605
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	movwf	(31)	;volatile
	line	337
# 337 "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
nop ;# 
	line	338
# 338 "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
nop ;# 
	line	339
# 339 "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
nop ;# 
	line	340
# 340 "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
nop ;# 
psect	text16
	line	341
	
l2140:	
;SC8P171XE_Timer2.c: 341: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	343
	
l2142:	
;SC8P171XE_Timer2.c: 343: unsigned char i = 0;
	clrf	(ADC_Sample@i)
	line	344
;SC8P171XE_Timer2.c: 344: while(GODONE)
	goto	l653
	
l654:	
	line	346
;SC8P171XE_Timer2.c: 345: {
;SC8P171XE_Timer2.c: 346: if(0 == (--i))
	decfsz	(ADC_Sample@i),f
	goto	u1611
	goto	u1610
u1611:
	goto	l653
u1610:
	goto	l656
	line	348
	
l653:	
	line	344
	btfsc	(249/8),(249)&7	;volatile
	goto	u1621
	goto	u1620
u1621:
	goto	l654
u1620:
	line	350
	
l2146:	
;SC8P171XE_Timer2.c: 348: }
;SC8P171XE_Timer2.c: 350: ad_temp=(ADRESH<<4)+(ADRESL>>4);
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
	
l2148:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	352
	
l2150:	
;SC8P171XE_Timer2.c: 352: if(0 == admax)
	movf	((_admax)),w	;volatile
iorwf	((_admax+1)),w	;volatile
	btfss	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l2154
u1630:
	line	354
	
l2152:	
;SC8P171XE_Timer2.c: 353: {
;SC8P171XE_Timer2.c: 354: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(_admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(_admax)	;volatile
	line	355
;SC8P171XE_Timer2.c: 355: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(_admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(_admin)	;volatile
	line	356
;SC8P171XE_Timer2.c: 356: }
	goto	l659
	line	357
	
l2154:	
;SC8P171XE_Timer2.c: 357: else if(ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(_admax+1),w	;volatile
	skipz
	goto	u1645
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(_admax),w	;volatile
u1645:
	skipnc
	goto	u1641
	goto	u1640
u1641:
	goto	l2158
u1640:
	line	358
	
l2156:	
;SC8P171XE_Timer2.c: 358: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(_admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(_admax)	;volatile
	goto	l659
	line	359
	
l2158:	
;SC8P171XE_Timer2.c: 359: else if(ad_temp < admin)
	movf	(_admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u1655
	movf	(_admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u1655:
	skipnc
	goto	u1651
	goto	u1650
u1651:
	goto	l659
u1650:
	line	360
	
l2160:	
;SC8P171XE_Timer2.c: 360: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(_admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(_admin)	;volatile
	line	362
	
l659:	
;SC8P171XE_Timer2.c: 362: adsum += ad_temp;
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	addwf	(_adsum),f	;volatile
	movf	1+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1661
	addwf	(_adsum+1),f	;volatile
u1661:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1662
	addwf	(_adsum+2),f	;volatile
u1662:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1663
	addwf	(_adsum+3),f	;volatile
u1663:

	line	363
	
l2162:	
;SC8P171XE_Timer2.c: 363: if(++adtimes >= 10)
	movlw	low(0Ah)
	incf	(_adtimes),f	;volatile
	subwf	((_adtimes)),w	;volatile
	skipc
	goto	u1671
	goto	u1670
u1671:
	goto	l656
u1670:
	line	365
	
l2164:	
;SC8P171XE_Timer2.c: 364: {
;SC8P171XE_Timer2.c: 365: adsum -= admax;
	movf	(_admax),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(_admax+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(_adsum),f	;volatile
	movf	1+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	1+(??_ADC_Sample+0)+0,w
	goto	u1685
	goto	u1686
u1685:
	subwf	(_adsum+1),f	;volatile
u1686:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1687
	goto	u1688
u1687:
	subwf	(_adsum+2),f	;volatile
u1688:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1689
	goto	u1680
u1689:
	subwf	(_adsum+3),f	;volatile
u1680:

	line	366
;SC8P171XE_Timer2.c: 366: if(adsum >= admin) adsum -= admin;
	movf	(_admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(_admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(_adsum+3),w	;volatile
	skipz
	goto	u1695
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(_adsum+2),w	;volatile
	skipz
	goto	u1695
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(_adsum+1),w	;volatile
	skipz
	goto	u1695
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(_adsum),w	;volatile
u1695:
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l664
u1690:
	
l2166:	
	movf	(_admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(_admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(_adsum),f	;volatile
	movf	1+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	1+(??_ADC_Sample+0)+0,w
	goto	u1705
	goto	u1706
u1705:
	subwf	(_adsum+1),f	;volatile
u1706:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1707
	goto	u1708
u1707:
	subwf	(_adsum+2),f	;volatile
u1708:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1709
	goto	u1700
u1709:
	subwf	(_adsum+3),f	;volatile
u1700:

	goto	l2168
	line	367
	
l664:	
;SC8P171XE_Timer2.c: 367: else adsum = 0;
	clrf	(_adsum)	;volatile
	clrf	(_adsum+1)	;volatile
	clrf	(_adsum+2)	;volatile
	clrf	(_adsum+3)	;volatile
	line	369
	
l2168:	
;SC8P171XE_Timer2.c: 369: adresult = (unsigned int)(adsum >> 3);
	movf	(_adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(_adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(_adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(_adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u1715:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1710:
	addlw	-1
	skipz
	goto	u1715
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	371
	
l2170:	
;SC8P171XE_Timer2.c: 371: adsum = 0;
	clrf	(_adsum)	;volatile
	clrf	(_adsum+1)	;volatile
	clrf	(_adsum+2)	;volatile
	clrf	(_adsum+3)	;volatile
	line	372
	
l2172:	
;SC8P171XE_Timer2.c: 372: admin = 0;
	clrf	(_admin)	;volatile
	clrf	(_admin+1)	;volatile
	line	373
	
l2174:	
;SC8P171XE_Timer2.c: 373: admax = 0;
	clrf	(_admax)	;volatile
	clrf	(_admax+1)	;volatile
	line	374
	
l2176:	
;SC8P171XE_Timer2.c: 374: adtimes = 0;
	clrf	(_adtimes)	;volatile
	line	376
	
l656:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\SC8P171XE开发包\SCMCU_IDE_V2.00.09_Beta4\data\sources\common\lbmod.c"
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
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 100/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         3       0       0
;;      Temps:          1       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SC8P171XE开发包\SCMCU_IDE_V2.00.09_Beta4\data\sources\common\lbmod.c"
	line	4
global __ptext17
__ptext17:	;psect for function ___lbmod
psect	text17
	file	"C:\mcuproject\scm\SC8P171XE开发包\SCMCU_IDE_V2.00.09_Beta4\data\sources\common\lbmod.c"
	line	4
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	movwf	(___lbmod@dividend)
	line	9
	
l2002:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l2004:	
	clrf	(___lbmod@rem)
	line	12
	
l2006:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1375:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1375
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l2008:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l2010:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1381
	goto	u1380
u1381:
	goto	l2014
u1380:
	line	15
	
l2012:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l2014:	
	decfsz	(___lbmod@counter),f
	goto	u1391
	goto	u1390
u1391:
	goto	l2006
u1390:
	line	17
	
l2016:	
	movf	(___lbmod@rem),w
	line	18
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_IO_Init

;; *************** function _IO_Init *****************
;; Defined at:
;;		line 629 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 100/100
;;		On exit  : 100/100
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	629
global __ptext18
__ptext18:	;psect for function _IO_Init
psect	text18
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	629
	global	__size_of_IO_Init
	__size_of_IO_Init	equ	__end_of_IO_Init-_IO_Init
	
_IO_Init:	
;incstack = 0
	opt	stack 6
; Regs used in _IO_Init: [wreg+status,2]
	line	632
	
l1856:	
;SC8P171XE_Timer2.c: 632: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	633
;SC8P171XE_Timer2.c: 633: PORTB = 0x00;
	clrf	(6)	;volatile
	line	634
	
l1858:	
;SC8P171XE_Timer2.c: 634: TRISB = 0x34;
	movlw	low(034h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	635
	
l1860:	
;SC8P171XE_Timer2.c: 635: TRISA = 0x06;
	movlw	low(06h)
	movwf	(133)^080h	;volatile
	line	636
	
l1862:	
;SC8P171XE_Timer2.c: 636: WPUA = 0x06;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(7)	;volatile
	line	637
	
l1864:	
;SC8P171XE_Timer2.c: 637: WPDA = 0x00;
	clrf	(8)	;volatile
	line	638
;SC8P171XE_Timer2.c: 638: WPUB = 0x04;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	639
	
l1866:	
;SC8P171XE_Timer2.c: 639: WPDB = 0x00;
	clrf	(135)^080h	;volatile
	line	641
	
l731:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Init
	__end_of_IO_Init:
	signat	_IO_Init,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 672 in file "C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	672
global __ptext19
__ptext19:	;psect for function _Timer0_Isr
psect	text19
	file	"C:\mcuproject\scm\xfx\D101_SC1711E_SOP14_\SC8P171XE_Timer2.c"
	line	672
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
psect	text19
	line	674
	
i1l2112:	
;SC8P171XE_Timer2.c: 674: if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u153_21
	goto	u153_20
u153_21:
	goto	i1l756
u153_20:
	line	676
	
i1l2114:	
;SC8P171XE_Timer2.c: 675: {
;SC8P171XE_Timer2.c: 676: TMR0 += 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	addwf	(1),f	;volatile
	line	679
;SC8P171XE_Timer2.c: 679: if(++intCount>=100)
	movlw	low(064h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u154_21
	goto	u154_20
u154_21:
	goto	i1l2130
u154_20:
	line	681
	
i1l2116:	
;SC8P171XE_Timer2.c: 680: {
;SC8P171XE_Timer2.c: 681: intCount = 0;
	clrf	(_intCount)
	line	682
	
i1l2118:	
;SC8P171XE_Timer2.c: 682: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	683
	
i1l2120:	
;SC8P171XE_Timer2.c: 683: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u155_21
	goto	u155_20
u155_21:
	goto	i1l2130
u155_20:
	line	685
	
i1l2122:	
;SC8P171XE_Timer2.c: 684: {
;SC8P171XE_Timer2.c: 685: count1s = 0;
	clrf	(_count1s)
	line	686
	
i1l2124:	
;SC8P171XE_Timer2.c: 686: if(workStep)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u156_21
	goto	u156_20
u156_21:
	goto	i1l2128
u156_20:
	line	688
	
i1l2126:	
;SC8P171XE_Timer2.c: 687: {
;SC8P171XE_Timer2.c: 688: ++count900s;
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	line	689
;SC8P171XE_Timer2.c: 689: }
	goto	i1l2130
	line	692
	
i1l2128:	
;SC8P171XE_Timer2.c: 690: else
;SC8P171XE_Timer2.c: 691: {
;SC8P171XE_Timer2.c: 692: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	696
	
i1l2130:	
;SC8P171XE_Timer2.c: 693: }
;SC8P171XE_Timer2.c: 694: }
;SC8P171XE_Timer2.c: 695: }
;SC8P171XE_Timer2.c: 696: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	699
	
i1l756:	
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
