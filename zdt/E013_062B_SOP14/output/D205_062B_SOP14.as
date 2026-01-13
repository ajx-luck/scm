opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P062BD
opt include "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\include\sc8p062bd.cgen.inc"
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
	FNCALL	_main,_AD_Init
	FNCALL	_main,_Init_System
	FNCALL	_main,_Sleep_Mode
	FNCALL	_main,_keyCtr
	FNCALL	_main,_workCtr
	FNCALL	_keyCtr,_keyRead
	FNCALL	_Sleep_Mode,_AD_Init
	FNCALL	_Sleep_Mode,_Init_System
	FNROOT	_main
	FNCALL	_Isr_Timer,_ledShow
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
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
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	30
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
	retlw	076h
	global __end_of_numArray
__end_of_numArray:
	global	_numArray
	global	_ledCntTime
	global	_keyCount
	global	_ledCnt
	global	_workStep
	global	_IntFlag
	global	_count1s
	global	_intCount
	global	_power_ad
	global	_result
	global	_adresult
	global	_sleepTime
	global	_test_adc
	global	_geweiNum
psect	nvCOMMON,class=COMMON,space=1,noexec
global __pnvCOMMON
__pnvCOMMON:
_geweiNum:
       ds      1

	global	_shiweiNum
_shiweiNum:
       ds      1

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
	global	_TMR2IE
_TMR2IE	set	113
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
	global	_RB4
_RB4	set	52
	global	_ADCON1
_ADCON1	set	150
	global	_ADCON0
_ADCON0	set	149
	global	_ANSEL1
_ANSEL1	set	148
	global	_ANSEL0
_ANSEL0	set	147
	global	_IOCA
_IOCA	set	137
	global	_WPUA
_WPUA	set	136
	global	_WPDA
_WPDA	set	135
	global	_PORTA
_PORTA	set	134
	global	_TRISA
_TRISA	set	133
	global	_RA0
_RA0	set	1072
	global	_RA1
_RA1	set	1073
	global	_RA2
_RA2	set	1074
	global	_RA3
_RA3	set	1075
	global	_RA4
_RA4	set	1076
; #config settings
	file	"D205_062B_SOP14.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_ledCntTime:
       ds      1

_keyCount:
       ds      1

_ledCnt:
       ds      1

_workStep:
       ds      1

_IntFlag:
       ds      1

_count1s:
       ds      1

_intCount:
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

_sleepTime:
       ds      1

_test_adc:
       ds      1

	file	"D205_062B_SOP14.as"
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

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssCOMMON)
	movwf	fsr
	movlw	low((__pbssCOMMON)+07h)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+08h)
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
?_ledShow:	; 1 bytes @ 0x0
??_ledShow:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_AD_Init:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
	ds	3
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Init_System:	; 1 bytes @ 0x0
??_AD_Init:	; 1 bytes @ 0x0
??_workCtr:	; 1 bytes @ 0x0
??_Sleep_Mode:	; 1 bytes @ 0x0
??_keyRead:	; 1 bytes @ 0x0
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x0
	ds	1
??_keyCtr:	; 1 bytes @ 0x1
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x1
	ds	1
??_main:	; 1 bytes @ 0x2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    14
;!    Data        0
;!    BSS         15
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      3      12
;!    BANK0            80      2      10
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_keyCtr
;!    _keyCtr->_keyRead
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

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0      65
;!                            _AD_Init
;!                        _Init_System
;!                         _Sleep_Mode
;!                             _keyCtr
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0      65
;!                                              1 BANK0      1     1      0
;!                            _keyRead
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Mode                                           0     0      0       0
;!                            _AD_Init
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (2) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _AD_Init                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _Isr_Timer                                            3     3      0       0
;!                                              0 COMMON     3     3      0
;!                            _ledShow
;! ---------------------------------------------------------------------------------
;! (4) _ledShow                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _AD_Init
;!   _Init_System
;!   _Sleep_Mode
;!     _AD_Init
;!     _Init_System
;!   _keyCtr
;!     _keyRead
;!   _workCtr
;!
;! _Isr_Timer (ROOT)
;!   _ledShow
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      3       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      2       A       4       12.5%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      16       7        0.0%
;!DATA                 0      0      16       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 108 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
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
;;		_AD_Init
;;		_Init_System
;;		_Sleep_Mode
;;		_keyCtr
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	108
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	108
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	110
	
l1652:	
;main.c: 110: Init_System();
	fcall	_Init_System
	line	111
;main.c: 111: AD_Init();
	fcall	_AD_Init
	line	112
	
l1654:	
;main.c: 112: shiweiNum = geweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	movwf	(_shiweiNum)
	line	113
;main.c: 113: while (1)
	
l591:	
	line	115
# 115 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	116
	
l1656:	
;main.c: 116: if(!IntFlag)
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u651
	goto	u650
u651:
	goto	l1660
u650:
	goto	l591
	line	118
	
l1660:	
;main.c: 118: IntFlag = 0;
	clrf	(_IntFlag)
	line	119
	
l1662:	
;main.c: 119: keyCtr();
	fcall	_keyCtr
	line	120
	
l1664:	
;main.c: 120: workCtr();
	fcall	_workCtr
	line	121
	
l1666:	
;main.c: 121: if(workStep == 0 && keyCount == 0 && firstTime == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u661
	goto	u660
u661:
	goto	l1678
u660:
	
l1668:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u671
	goto	u670
u671:
	goto	l1678
u670:
	line	123
	
l1670:	
;main.c: 122: {
;main.c: 123: shiweiNum = geweiNum = 0;
	clrf	(_geweiNum)
	clrf	(_shiweiNum)
	line	124
	
l1672:	
;main.c: 124: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u681
	goto	u680
u681:
	goto	l591
u680:
	line	126
	
l1674:	
;main.c: 125: {
;main.c: 126: sleepTime = 0;
	clrf	(_sleepTime)
	line	127
	
l1676:	
;main.c: 127: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l591
	line	132
	
l1678:	
;main.c: 130: else
;main.c: 131: {
;main.c: 132: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l591
	global	start
	ljmp	start
	opt stack 0
	line	135
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 337 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
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
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	337
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	337
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath]
	line	341
	
l1584:	
;main.c: 341: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u581
	goto	u580
u581:
	goto	l651
u580:
	line	343
	
l1586:	
;main.c: 342: {
;main.c: 343: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u591
	goto	u590
u591:
	goto	l1590
u590:
	line	345
	
l1588:	
;main.c: 344: {
;main.c: 345: shiweiNum = numArray[5];
	movlw	low((((_numArray+05h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	346
;main.c: 347: tempAD = 938;
	movlw	low((((_numArray+05h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	348
;main.c: 348: }
	goto	l658
	line	349
	
l1590:	
;main.c: 349: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u601
	goto	u600
u601:
	goto	l1594
u600:
	line	351
	
l1592:	
;main.c: 350: {
;main.c: 351: shiweiNum = numArray[6];
	movlw	low((((_numArray+06h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	352
;main.c: 353: tempAD = 702;
	movlw	low((((_numArray+05h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	354
;main.c: 354: }
	goto	l658
	line	355
	
l1594:	
;main.c: 355: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u611
	goto	u610
u611:
	goto	l653
u610:
	line	357
	
l1596:	
;main.c: 356: {
;main.c: 357: shiweiNum = numArray[7];
	movlw	low((((_numArray+07h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	358
;main.c: 359: tempAD = 523;
	movlw	low((((_numArray+05h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	goto	l658
	line	361
	
l653:	
;main.c: 360: }
;main.c: 361: }
	goto	l658
	line	362
	
l651:	
	line	364
;main.c: 362: else
;main.c: 363: {
;main.c: 364: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	365
	
l1598:	
;main.c: 365: shiweiNum = geweiNum = 0;
	clrf	(_geweiNum)
	clrf	(_shiweiNum)
	line	369
	
l658:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 324 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kclick          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_keyRead
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	324
global __ptext2
__ptext2:	;psect for function _keyCtr
psect	text2
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	324
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	326
	
l1576:	
;main.c: 326: char kclick = keyRead(0x01 & (~PORTB));
	bcf	status, 5	;RP0=0, select bank0
	comf	(6),w	;volatile
	andlw	01h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	327
	
l1578:	
;main.c: 327: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u561
	goto	u560
u561:
	goto	l648
u560:
	line	329
	
l1580:	
;main.c: 328: {
;main.c: 329: if(++workStep > 3)
	movlw	low(04h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u571
	goto	u570
u571:
	goto	l648
u570:
	line	331
	
l1582:	
;main.c: 330: {
;main.c: 331: workStep = 0;
	clrf	(_workStep)
	line	335
	
l648:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 298 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    0[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	298
global __ptext3
__ptext3:	;psect for function _keyRead
psect	text3
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	298
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	300
	
l1554:	
;main.c: 300: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u531
	goto	u530
u531:
	goto	l1562
u530:
	line	302
	
l1556:	
;main.c: 301: {
;main.c: 302: keyCount++;
	incf	(_keyCount),f
	line	303
	
l1558:	
;main.c: 303: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u541
	goto	u540
u541:
	goto	l1572
u540:
	line	305
	
l1560:	
;main.c: 304: {
;main.c: 305: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	goto	l1572
	line	311
	
l1562:	
;main.c: 309: else
;main.c: 310: {
;main.c: 311: if(keyCount >= 4)
	movlw	low(04h)
	subwf	(_keyCount),w
	skipc
	goto	u551
	goto	u550
u551:
	goto	l1570
u550:
	line	313
	
l1564:	
;main.c: 312: {
;main.c: 313: keyCount = 0;
	clrf	(_keyCount)
	line	314
	
l1566:	
;main.c: 314: return 1;
	movlw	low(01h)
	goto	l643
	line	316
	
l1570:	
;main.c: 315: }
;main.c: 316: keyCount = 0;
	clrf	(_keyCount)
	line	318
	
l1572:	
;main.c: 317: }
;main.c: 318: return 0;
	movlw	low(0)
	line	319
	
l643:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 508 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
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
;;		On exit  : 100/100
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
;;		_AD_Init
;;		_Init_System
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	508
global __ptext4
__ptext4:	;psect for function _Sleep_Mode
psect	text4
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	508
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	510
	
l1600:	
;main.c: 510: INTCON = 0;
	clrf	(11)	;volatile
	line	512
;main.c: 512: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	514
;main.c: 514: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	515
	
l1602:	
;main.c: 515: TRISA = 0x20;
	movlw	low(020h)
	movwf	(133)^080h	;volatile
	line	516
	
l1604:	
;main.c: 516: TRISB = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	518
;main.c: 518: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	519
;main.c: 519: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	520
	
l1606:	
;main.c: 520: WPUB = 0x01;
	movlw	low(01h)
	movwf	(8)	;volatile
	line	522
	
l1608:	
;main.c: 522: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	523
	
l1610:	
;main.c: 523: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	525
	
l1612:	
;main.c: 525: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	527
;main.c: 527: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	529
	
l1614:	
;main.c: 529: IOCA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	530
	
l1616:	
;main.c: 530: IOCB = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	532
	
l1618:	
;main.c: 532: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	533
	
l1620:	
;main.c: 533: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	534
	
l1622:	
;main.c: 534: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	535
	
l1624:	
;main.c: 535: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	537
	
l1626:	
;main.c: 537: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	538
	
l1628:	
;main.c: 538: PIR1 = 0;
	clrf	(13)	;volatile
	line	539
;main.c: 539: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	541
	
l1630:	
;main.c: 541: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	542
	
l1632:	
;main.c: 542: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	543
	
l1634:	
;main.c: 543: PORTB;
	movf	(6),w	;volatile
	line	544
	
l1636:	
;main.c: 544: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	545
# 545 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
clrwdt ;# 
	line	547
# 547 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
sleep ;# 
	line	549
# 549 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	550
# 550 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
clrwdt ;# 
	line	551
# 551 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	552
# 552 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	553
# 553 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	554
# 554 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	555
# 555 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
psect	text4
	line	556
	
l1638:	
;main.c: 556: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u621
	goto	u620
u621:
	goto	l674
u620:
	
l1640:	
	bcf	(107/8),(107)&7	;volatile
	
l674:	
	line	557
;main.c: 557: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u631
	goto	u630
u631:
	goto	l675
u630:
	
l1642:	
	bcf	(88/8),(88)&7	;volatile
	
l675:	
	line	558
;main.c: 558: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u641
	goto	u640
u641:
	goto	l1646
u640:
	
l1644:	
	bcf	(105/8),(105)&7	;volatile
	line	559
	
l1646:	
;main.c: 559: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	560
;main.c: 560: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	561
	
l1648:	
;main.c: 561: Init_System();
	fcall	_Init_System
	line	562
	
l1650:	
;main.c: 562: AD_Init();
	fcall	_AD_Init
	line	563
	
l677:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 408 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Sleep_Mode
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	408
global __ptext5
__ptext5:	;psect for function _Init_System
psect	text5
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	408
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	410
	
l1522:	
# 410 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	411
# 411 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
clrwdt ;# 
psect	text5
	line	412
	
l1524:	
;main.c: 412: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	413
# 413 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
clrwdt ;# 
psect	text5
	line	414
	
l1526:	
;main.c: 414: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	416
	
l1528:	
;main.c: 416: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	417
	
l1530:	
;main.c: 417: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	418
	
l1532:	
;main.c: 418: WPUB = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	420
	
l1534:	
;main.c: 420: TRISA = 0x20;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	421
	
l1536:	
;main.c: 421: TRISB = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	423
;main.c: 423: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	424
;main.c: 424: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	428
	
l1538:	
;main.c: 428: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	429
	
l1540:	
;main.c: 429: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	430
	
l1542:	
;main.c: 430: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	432
	
l1544:	
;main.c: 432: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	433
	
l1546:	
;main.c: 433: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	434
	
l668:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 445 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
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
;;		On exit  : 100/100
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
;;		Nothing
;; This function is called by:
;;		_main
;;		_Sleep_Mode
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	445
global __ptext6
__ptext6:	;psect for function _AD_Init
psect	text6
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	445
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	478
	
l1548:	
;main.c: 478: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	495
	
l1550:	
;main.c: 495: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	496
	
l1552:	
;main.c: 496: ANSEL0 = 0X20;
	movlw	low(020h)
	movwf	(147)^080h	;volatile
	line	497
;main.c: 497: ANSEL1 = 0x00;
	clrf	(148)^080h	;volatile
	line	498
	
l671:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 84 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ledShow
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	84
global __ptext7
__ptext7:	;psect for function _Isr_Timer
psect	text7
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	84
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 4
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
psect	text7
	line	86
	
i1l1260:	
;main.c: 86: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l586
u30_20:
	line	88
	
i1l1262:	
;main.c: 87: {
;main.c: 88: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	89
	
i1l1264:	
;main.c: 89: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u31_21
	goto	u31_20
u31_21:
	goto	i1l1274
u31_20:
	line	91
	
i1l1266:	
;main.c: 90: {
;main.c: 91: intCount = 0;
	clrf	(_intCount)
	line	92
	
i1l1268:	
;main.c: 92: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	93
	
i1l1270:	
;main.c: 93: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u32_21
	goto	u32_20
u32_21:
	goto	i1l1274
u32_20:
	line	95
	
i1l1272:	
;main.c: 94: {
;main.c: 95: count1s = 0;
	clrf	(_count1s)
	line	98
	
i1l1274:	
;main.c: 99: intCount10++;
	fcall	_ledShow
	line	102
	
i1l586:	
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
	global	_ledShow

;; *************** function _ledShow *****************
;; Defined at:
;;		line 137 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Isr_Timer
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	137
global __ptext8
__ptext8:	;psect for function _ledShow
psect	text8
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	137
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	139
	
i1l1130:	
;main.c: 139: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l636
u4_20:
	line	141
	
i1l1132:	
;main.c: 140: {
;main.c: 141: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	142
	
i1l1134:	
;main.c: 142: if(++ledCnt > 14)
	movlw	low(0Fh)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l1138
u5_20:
	line	144
	
i1l1136:	
;main.c: 143: {
;main.c: 144: ledCnt = 0;
	clrf	(_ledCnt)
	line	146
	
i1l1138:	
;main.c: 145: }
;main.c: 146: PORTA &= 0xE0;
	movlw	low(0E0h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	147
	
i1l1140:	
;main.c: 147: TRISA |= 0x1F;
	movlw	low(01Fh)
	iorwf	(133)^080h,f	;volatile
	line	148
;main.c: 148: switch(ledCnt)
	goto	i1l1176
	line	150
;main.c: 149: {
;main.c: 150: case 1:
	
i1l604:	
	line	151
;main.c: 151: if(shiweiNum & 0x01)
	btfss	(_shiweiNum),(0)&7
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l636
u6_20:
	line	153
	
i1l1142:	
;main.c: 152: {
;main.c: 153: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	154
;main.c: 154: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	155
;main.c: 155: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	156
;main.c: 156: RA2 = 0;
	bcf	(1074/8)^080h,(1074)&7	;volatile
	goto	i1l636
	line	159
;main.c: 159: case 2:
	
i1l607:	
	line	160
;main.c: 160: if(shiweiNum & 0x02)
	btfss	(_shiweiNum),(1)&7
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l636
u7_20:
	line	162
	
i1l1144:	
;main.c: 161: {
;main.c: 162: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	163
;main.c: 163: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	164
;main.c: 164: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	165
;main.c: 165: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l636
	line	168
;main.c: 168: case 3:
	
i1l609:	
	line	169
;main.c: 169: if(shiweiNum & 0x04)
	btfss	(_shiweiNum),(2)&7
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l636
u8_20:
	line	171
	
i1l1146:	
;main.c: 170: {
;main.c: 171: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	172
;main.c: 172: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	173
;main.c: 173: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	174
;main.c: 174: RA2 = 0;
	bcf	(1074/8)^080h,(1074)&7	;volatile
	goto	i1l636
	line	177
;main.c: 177: case 4:
	
i1l611:	
	line	178
;main.c: 178: if(shiweiNum & 0x08)
	btfss	(_shiweiNum),(3)&7
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l636
u9_20:
	line	180
	
i1l1148:	
;main.c: 179: {
;main.c: 180: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	181
;main.c: 181: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	182
;main.c: 182: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	183
;main.c: 183: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l636
	line	186
;main.c: 186: case 5:
	
i1l613:	
	line	187
;main.c: 187: if(shiweiNum & 0x10)
	btfss	(_shiweiNum),(4)&7
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l636
u10_20:
	line	189
	
i1l1150:	
;main.c: 188: {
;main.c: 189: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	190
;main.c: 190: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	191
;main.c: 191: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	line	192
;main.c: 192: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l636
	line	195
;main.c: 195: case 6:
	
i1l615:	
	line	196
;main.c: 196: if(shiweiNum & 0x20)
	btfss	(_shiweiNum),(5)&7
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l636
u11_20:
	line	198
	
i1l1152:	
;main.c: 197: {
;main.c: 198: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	199
;main.c: 199: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	200
;main.c: 200: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	line	201
;main.c: 201: RA2 = 0;
	bcf	(1074/8)^080h,(1074)&7	;volatile
	goto	i1l636
	line	204
;main.c: 204: case 7:
	
i1l617:	
	line	205
;main.c: 205: if(shiweiNum & 0x40)
	btfss	(_shiweiNum),(6)&7
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l636
u12_20:
	line	207
	
i1l1154:	
;main.c: 206: {
;main.c: 207: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	208
;main.c: 208: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	209
;main.c: 209: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	line	210
;main.c: 210: RA1 = 0;
	bcf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l636
	line	213
;main.c: 213: case 8:
	
i1l619:	
	line	214
;main.c: 214: if(geweiNum & 0x01)
	btfss	(_geweiNum),(0)&7
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l636
u13_20:
	line	216
	
i1l1156:	
;main.c: 215: {
;main.c: 216: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	217
;main.c: 217: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	218
;main.c: 218: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	219
;main.c: 219: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l636
	line	222
;main.c: 222: case 9:
	
i1l621:	
	line	223
;main.c: 223: if(geweiNum & 0x02)
	btfss	(_geweiNum),(1)&7
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l636
u14_20:
	line	225
	
i1l1158:	
;main.c: 224: {
;main.c: 225: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	226
;main.c: 226: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	227
;main.c: 227: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	228
;main.c: 228: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l636
	line	231
;main.c: 231: case 10:
	
i1l623:	
	line	232
;main.c: 232: if(geweiNum & 0x04)
	btfss	(_geweiNum),(2)&7
	goto	u15_21
	goto	u15_20
u15_21:
	goto	i1l636
u15_20:
	line	234
	
i1l1160:	
;main.c: 233: {
;main.c: 234: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	235
;main.c: 235: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	236
;main.c: 236: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	237
;main.c: 237: RA2 = 0;
	bcf	(1074/8)^080h,(1074)&7	;volatile
	goto	i1l636
	line	240
;main.c: 240: case 11:
	
i1l625:	
	line	241
;main.c: 241: if(geweiNum & 0x08)
	btfss	(_geweiNum),(3)&7
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l636
u16_20:
	line	243
	
i1l1162:	
;main.c: 242: {
;main.c: 243: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	244
;main.c: 244: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	245
;main.c: 245: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	246
;main.c: 246: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l636
	line	249
;main.c: 249: case 12:
	
i1l627:	
	line	250
;main.c: 250: if(geweiNum & 0x10)
	btfss	(_geweiNum),(4)&7
	goto	u17_21
	goto	u17_20
u17_21:
	goto	i1l636
u17_20:
	line	252
	
i1l1164:	
;main.c: 251: {
;main.c: 252: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	253
;main.c: 253: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	254
;main.c: 254: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	255
;main.c: 255: RA1 = 0;
	bcf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l636
	line	258
;main.c: 258: case 13:
	
i1l629:	
	line	259
;main.c: 259: if(geweiNum & 0x20)
	btfss	(_geweiNum),(5)&7
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l636
u18_20:
	line	261
	
i1l1166:	
;main.c: 260: {
;main.c: 261: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	262
;main.c: 262: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	263
;main.c: 263: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	264
;main.c: 264: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l636
	line	267
;main.c: 267: case 14:
	
i1l631:	
	line	268
;main.c: 268: if(geweiNum & 0x40)
	btfss	(_geweiNum),(6)&7
	goto	u19_21
	goto	u19_20
u19_21:
	goto	i1l636
u19_20:
	line	270
	
i1l1168:	
;main.c: 269: {
;main.c: 270: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	271
;main.c: 271: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	272
;main.c: 272: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	line	273
;main.c: 273: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l636
	line	277
	
i1l1170:	
;main.c: 277: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u20_21
	goto	u20_20
u20_21:
	goto	i1l636
u20_20:
	line	279
	
i1l1172:	
;main.c: 278: {
;main.c: 279: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	280
;main.c: 280: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	281
;main.c: 281: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	282
;main.c: 282: RA0 = 0;
	bcf	(1072/8)^080h,(1072)&7	;volatile
	goto	i1l636
	line	148
	
i1l1176:	
	movf	(_ledCnt),w
	; Switch size 1, requested type "space"
; Number of cases is 15, Range of values is 0 to 14
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           21     6 (fixed)
; simple_byte           46    24 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	15
	subwf	fsr,w
skipnc
goto i1l636
movlw high(i1S1710)
movwf pclath
	movlw low(i1S1710)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S1710:
	ljmp	i1l1170
	ljmp	i1l604
	ljmp	i1l607
	ljmp	i1l609
	ljmp	i1l611
	ljmp	i1l613
	ljmp	i1l615
	ljmp	i1l617
	ljmp	i1l619
	ljmp	i1l621
	ljmp	i1l623
	ljmp	i1l625
	ljmp	i1l627
	ljmp	i1l629
	ljmp	i1l631
psect	text8

	line	291
	
i1l636:	
	return
	opt stack 0
GLOBAL	__end_of_ledShow
	__end_of_ledShow:
	signat	_ledShow,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
