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
	FNCALL	_workCtr,_checkTempAD
	FNCALL	_checkTempAD,_ADC_Sample
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
	global	_keyCount
	global	_ledCnt
	global	_workStep
	global	_test_adc
	global	_tempAD
	global	_power_ad
	global	_result
	global	_adresult
	global	_sleepTime
	global	_ledCntTime
	global	_checkTime
	global	_IntFlag
	global	_count1s
	global	_intCount
	global	_geweiNum
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
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
	global	_RB1
_RB1	set	49
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
	global	_LDO_EN
_LDO_EN	set	1202
	global	_CHS4
_CHS4	set	1206
	global	_GODONE
_GODONE	set	1193
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
	file	"E013_062B_SOP14.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_keyCount:
       ds      1

_ledCnt:
       ds      1

_workStep:
       ds      1

_test_adc:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_tempAD:
       ds      2

_power_ad:
       ds      2

_result:
       ds      2

_adresult:
       ds      2

_sleepTime:
       ds      1

_ledCntTime:
       ds      1

_checkTime:
       ds      1

_IntFlag:
       ds      1

_count1s:
       ds      1

_intCount:
       ds      1

	file	"E013_062B_SOP14.as"
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
	movlw	low((__pbssCOMMON)+04h)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Eh)
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
?_checkTempAD:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
	ds	3
??_Init_System:	; 1 bytes @ 0x3
??_AD_Init:	; 1 bytes @ 0x3
??_Sleep_Mode:	; 1 bytes @ 0x3
?_ADC_Sample:	; 1 bytes @ 0x3
??_keyRead:	; 1 bytes @ 0x3
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x3
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x3
	ds	1
??_keyCtr:	; 1 bytes @ 0x4
??_checkTempAD:	; 1 bytes @ 0x4
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x4
	ds	2
??_workCtr:	; 1 bytes @ 0x6
??_main:	; 1 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_ADC_Sample:	; 1 bytes @ 0x0
	ds	4
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x4
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x5
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x6
	ds	1
	global	ADC_Sample@adsum
ADC_Sample@adsum:	; 4 bytes @ 0x7
	ds	4
	global	ADC_Sample@admin
ADC_Sample@admin:	; 2 bytes @ 0xB
	ds	2
	global	ADC_Sample@admax
ADC_Sample@admax:	; 2 bytes @ 0xD
	ds	2
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0xF
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    14
;!    Data        0
;!    BSS         18
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80     17      33
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _workCtr->_checkTempAD
;!    _checkTempAD->_ADC_Sample
;!    _keyCtr->_keyRead
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _checkTempAD->_ADC_Sample
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
;! (0) _main                                                 0     0      0     892
;!                            _AD_Init
;!                        _Init_System
;!                         _Sleep_Mode
;!                             _keyCtr
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              0     0      0     847
;!                        _checkTempAD
;! ---------------------------------------------------------------------------------
;! (2) _checkTempAD                                          2     2      0     847
;!                                              4 COMMON     2     2      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (3) _ADC_Sample                                          18    17      1     847
;!                                              3 COMMON     1     0      1
;!                                              0 BANK0     17    17      0
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0      45
;!                                              4 COMMON     1     1      0
;!                            _keyRead
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      22
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Mode                                           0     0      0       0
;!                            _AD_Init
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (2) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _AD_Init                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _Isr_Timer                                            3     3      0       0
;!                                              0 COMMON     3     3      0
;!                            _ledShow
;! ---------------------------------------------------------------------------------
;! (5) _ledShow                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
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
;!     _checkTempAD
;!       _ADC_Sample
;!
;! _Isr_Timer (ROOT)
;!   _ledShow
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50     11      21       4       41.3%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      2B       7        0.0%
;!DATA                 0      0      2B       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 107 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    5
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
	line	107
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	107
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	109
	
l1930:	
;main.c: 109: Init_System();
	fcall	_Init_System
	line	110
;main.c: 110: AD_Init();
	fcall	_AD_Init
	line	111
	
l1932:	
;main.c: 111: shiweiNum = geweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_geweiNum)
	movwf	(_shiweiNum)
	line	112
;main.c: 112: while (1)
	
l593:	
	line	114
# 114 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	115
	
l1934:	
;main.c: 115: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u1341
	goto	u1340
u1341:
	goto	l1938
u1340:
	goto	l593
	line	117
	
l1938:	
;main.c: 117: IntFlag = 0;
	clrf	(_IntFlag)
	line	118
	
l1940:	
;main.c: 118: keyCtr();
	fcall	_keyCtr
	line	119
	
l1942:	
;main.c: 119: workCtr();
	fcall	_workCtr
	line	120
	
l1944:	
;main.c: 120: if(workStep == 0 && keyCount == 0 )
	movf	((_workStep)),w
	btfss	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l1956
u1350:
	
l1946:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u1361
	goto	u1360
u1361:
	goto	l1956
u1360:
	line	122
	
l1948:	
;main.c: 121: {
;main.c: 122: shiweiNum = geweiNum = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_geweiNum)
	clrf	(_shiweiNum)
	line	123
	
l1950:	
;main.c: 123: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u1371
	goto	u1370
u1371:
	goto	l593
u1370:
	line	125
	
l1952:	
;main.c: 124: {
;main.c: 125: sleepTime = 0;
	clrf	(_sleepTime)
	line	126
	
l1954:	
;main.c: 126: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l593
	line	131
	
l1956:	
;main.c: 129: else
;main.c: 130: {
;main.c: 131: sleepTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_sleepTime)
	goto	l593
	global	start
	ljmp	start
	opt stack 0
	line	134
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 336 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
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
;;		_checkTempAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	336
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	336
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	340
	
l1902:	
;main.c: 340: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l1926
u1300:
	line	342
	
l1904:	
;main.c: 341: {
;main.c: 342: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	343
	
l1906:	
;main.c: 343: checkTempAD();
	fcall	_checkTempAD
	line	344
	
l1908:	
;main.c: 344: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l1914
u1310:
	line	346
	
l1910:	
;main.c: 345: {
;main.c: 346: shiweiNum = numArray[5];
	movlw	low((((_numArray+05h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_shiweiNum)
	line	347
;main.c: 347: geweiNum = numArray[5];
	movlw	low((((_numArray+05h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	348
	
l1912:	
;main.c: 348: tempAD = 938;
	movlw	0AAh
	movwf	(_tempAD)
	movlw	03h
	movwf	((_tempAD))+1
	line	349
;main.c: 349: }
	goto	l660
	line	350
	
l1914:	
;main.c: 350: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u1321
	goto	u1320
u1321:
	goto	l1920
u1320:
	line	352
	
l1916:	
;main.c: 351: {
;main.c: 352: shiweiNum = numArray[6];
	movlw	low((((_numArray+06h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_shiweiNum)
	line	353
;main.c: 353: geweiNum = numArray[5];
	movlw	low((((_numArray+05h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	354
	
l1918:	
;main.c: 354: tempAD = 702;
	movlw	0BEh
	movwf	(_tempAD)
	movlw	02h
	movwf	((_tempAD))+1
	line	355
;main.c: 355: }
	goto	l660
	line	356
	
l1920:	
;main.c: 356: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u1331
	goto	u1330
u1331:
	goto	l655
u1330:
	line	358
	
l1922:	
;main.c: 357: {
;main.c: 358: shiweiNum = numArray[7];
	movlw	low((((_numArray+07h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_shiweiNum)
	line	359
;main.c: 359: geweiNum = numArray[5];
	movlw	low((((_numArray+05h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	360
	
l1924:	
;main.c: 360: tempAD = 523;
	movlw	0Bh
	movwf	(_tempAD)
	movlw	02h
	movwf	((_tempAD))+1
	goto	l660
	line	362
	
l655:	
;main.c: 361: }
;main.c: 362: }
	goto	l660
	line	365
	
l1926:	
;main.c: 363: else
;main.c: 364: {
;main.c: 365: PORTB &= 0xED;
	movlw	low(0EDh)
	andwf	(6),f	;volatile
	line	366
	
l1928:	
;main.c: 366: shiweiNum = geweiNum = 0;
	clrf	(_geweiNum)
	clrf	(_shiweiNum)
	line	370
	
l660:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_checkTempAD

;; *************** function _checkTempAD *****************
;; Defined at:
;;		line 373 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          2       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Sample
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	373
global __ptext2
__ptext2:	;psect for function _checkTempAD
psect	text2
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	373
	global	__size_of_checkTempAD
	__size_of_checkTempAD	equ	__end_of_checkTempAD-_checkTempAD
	
_checkTempAD:	
;incstack = 0
	opt	stack 3
; Regs used in _checkTempAD: [wreg+status,2+status,0+pclath+cstack]
	line	375
	
l1880:	
;main.c: 375: test_adc = ADC_Sample(5, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(05h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	376
	
l1882:	
;main.c: 376: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1261
	goto	u1260
u1261:
	goto	l1898
u1260:
	line	378
	
l1884:	
;main.c: 377: {
;main.c: 378: if(adresult > tempAD)
	movf	(_adresult+1),w	;volatile
	subwf	(_tempAD+1),w
	skipz
	goto	u1275
	movf	(_adresult),w	;volatile
	subwf	(_tempAD),w
u1275:
	skipnc
	goto	u1271
	goto	u1270
u1271:
	goto	l1888
u1270:
	line	380
	
l1886:	
;main.c: 379: {
;main.c: 380: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	382
	
l1888:	
;main.c: 381: }
;main.c: 382: if(adresult < (tempAD-10))
	movf	(_tempAD),w
	addlw	low(0FFF6h)
	movwf	(??_checkTempAD+0)+0
	movf	(_tempAD+1),w
	skipnc
	addlw	1
	addlw	high(0FFF6h)
	movwf	1+(??_checkTempAD+0)+0
	movf	1+(??_checkTempAD+0)+0,w
	subwf	(_adresult+1),w	;volatile
	skipz
	goto	u1285
	movf	0+(??_checkTempAD+0)+0,w
	subwf	(_adresult),w	;volatile
u1285:
	skipnc
	goto	u1281
	goto	u1280
u1281:
	goto	l1896
u1280:
	line	384
	
l1890:	
;main.c: 383: {
;main.c: 384: if(++checkTime > 100)
	movlw	low(065h)
	incf	(_checkTime),f
	subwf	((_checkTime)),w
	skipc
	goto	u1291
	goto	u1290
u1291:
	goto	l669
u1290:
	line	386
	
l1892:	
;main.c: 385: {
;main.c: 386: checkTime = 0;
	clrf	(_checkTime)
	line	387
	
l1894:	
;main.c: 387: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	goto	l669
	line	392
	
l1896:	
;main.c: 390: else
;main.c: 391: {
;main.c: 392: checkTime = 0;
	clrf	(_checkTime)
	goto	l669
	line	399
	
l1898:	
;main.c: 397: else
;main.c: 398: {
;main.c: 399: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	400
;main.c: 400: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	401
	
l1900:	
;main.c: 401: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkTempAD+0)+0),f
	u1387:
decfsz	(??_checkTempAD+0)+0,f
	goto	u1387
opt asmopt_pop

	line	406
	
l669:	
	return
	opt stack 0
GLOBAL	__end_of_checkTempAD
	__end_of_checkTempAD:
	signat	_checkTempAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 594 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;;  adldo           1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    5[BANK0 ] unsigned char 
;;  j               1    4[BANK0 ] unsigned char 
;;  adsum           4    7[BANK0 ] volatile unsigned long 
;;  ad_temp         2   15[BANK0 ] volatile unsigned int 
;;  admax           2   13[BANK0 ] volatile unsigned int 
;;  admin           2   11[BANK0 ] volatile unsigned int 
;;  i               1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         0      13       0
;;      Temps:          0       4       0
;;      Totals:         1      17       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkTempAD
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	594
global __ptext3
__ptext3:	;psect for function _ADC_Sample
psect	text3
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	594
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 3
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	596
	
l1808:	
;main.c: 596: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	597
	
l1810:	
;main.c: 597: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	598
;main.c: 598: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	600
	
l1812:	
;main.c: 600: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u1111
	goto	u1110
u1111:
	goto	l1818
u1110:
	
l1814:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u1121
	goto	u1120
u1121:
	goto	l1818
u1120:
	line	603
	
l1816:	
;main.c: 601: {
;main.c: 603: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	604
;main.c: 604: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u1397:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u1397
	nop2
opt asmopt_pop

	line	605
;main.c: 605: }
	goto	l1820
	line	607
	
l1818:	
;main.c: 606: else
;main.c: 607: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	609
	
l1820:	
;main.c: 609: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u1131
	goto	u1130
u1131:
	goto	l1826
u1130:
	line	611
	
l1822:	
;main.c: 610: {
;main.c: 611: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	612
	
l1824:	
;main.c: 612: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	614
	
l1826:	
	line	615
	
l1828:	
;main.c: 615: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	617
	
l1834:	
;main.c: 616: {
;main.c: 617: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1145:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1145
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	618
# 618 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	619
# 619 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	620
# 620 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	621
# 621 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
psect	text3
	line	622
	
l1836:	
;main.c: 622: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	624
	
l1838:	
;main.c: 624: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	625
;main.c: 625: while (GODONE)
	goto	l689
	
l690:	
	line	627
;main.c: 626: {
;main.c: 627: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	629
;main.c: 629: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u1151
	goto	u1150
u1151:
	goto	l689
u1150:
	line	630
	
l1840:	
;main.c: 630: return 0;
	movlw	low(0)
	goto	l692
	line	631
	
l689:	
	line	625
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u1161
	goto	u1160
u1161:
	goto	l690
u1160:
	line	633
	
l1844:	
;main.c: 631: }
;main.c: 633: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l1846:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	635
	
l1848:	
;main.c: 635: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u1171
	goto	u1170
u1171:
	goto	l1852
u1170:
	line	637
	
l1850:	
;main.c: 636: {
;main.c: 637: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	638
;main.c: 638: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	639
;main.c: 639: }
	goto	l695
	line	640
	
l1852:	
;main.c: 640: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u1185
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u1185:
	skipnc
	goto	u1181
	goto	u1180
u1181:
	goto	l1856
u1180:
	line	641
	
l1854:	
;main.c: 641: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l695
	line	642
	
l1856:	
;main.c: 642: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u1195
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u1195:
	skipnc
	goto	u1191
	goto	u1190
u1191:
	goto	l695
u1190:
	line	643
	
l1858:	
;main.c: 643: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	645
	
l695:	
;main.c: 645: adsum += ad_temp;
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
	goto	u1201
	addwf	(ADC_Sample@adsum+1),f	;volatile
u1201:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1202
	addwf	(ADC_Sample@adsum+2),f	;volatile
u1202:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1203
	addwf	(ADC_Sample@adsum+3),f	;volatile
u1203:

	line	615
	
l1860:	
	incf	(ADC_Sample@i),f
	
l1862:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u1211
	goto	u1210
u1211:
	goto	l1834
u1210:
	line	647
	
l1864:	
;main.c: 646: }
;main.c: 647: adsum -= admax;
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
	goto	u1225
	goto	u1226
u1225:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1226:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1227
	goto	u1228
u1227:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1228:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1229
	goto	u1220
u1229:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1220:

	line	648
;main.c: 648: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u1235
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u1235
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u1235
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u1235:
	skipc
	goto	u1231
	goto	u1230
u1231:
	goto	l699
u1230:
	line	649
	
l1866:	
;main.c: 649: adsum -= admin;
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
	goto	u1245
	goto	u1246
u1245:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1246:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1247
	goto	u1248
u1247:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1248:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1249
	goto	u1240
u1249:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1240:

	goto	l1868
	line	650
	
l699:	
	line	651
;main.c: 650: else
;main.c: 651: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	653
	
l1868:	
;main.c: 653: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u1255:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1250:
	addlw	-1
	skipz
	goto	u1255
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	655
	
l1870:	
;main.c: 655: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	656
	
l1872:	
;main.c: 656: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	657
	
l1874:	
;main.c: 657: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	658
	
l1876:	
;main.c: 658: return 0xA5;
	movlw	low(0A5h)
	line	660
	
l692:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 323 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kclick          1    4[COMMON] unsigned char 
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
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_keyRead
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	323
global __ptext4
__ptext4:	;psect for function _keyCtr
psect	text4
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	323
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	325
	
l1646:	
;main.c: 325: char kclick = keyRead(0x01 & (~PORTB));
	comf	(6),w	;volatile
	andlw	01h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	326
	
l1648:	
;main.c: 326: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u951
	goto	u950
u951:
	goto	l650
u950:
	line	328
	
l1650:	
;main.c: 327: {
;main.c: 328: if(++workStep > 3)
	movlw	low(04h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u961
	goto	u960
u961:
	goto	l650
u960:
	line	330
	
l1652:	
;main.c: 329: {
;main.c: 330: workStep = 0;
	clrf	(_workStep)
	line	334
	
l650:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 297 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 100/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	297
global __ptext5
__ptext5:	;psect for function _keyRead
psect	text5
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	297
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	299
	
l1548:	
;main.c: 299: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u711
	goto	u710
u711:
	goto	l1556
u710:
	line	301
	
l1550:	
;main.c: 300: {
;main.c: 301: keyCount++;
	incf	(_keyCount),f
	line	302
	
l1552:	
;main.c: 302: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u721
	goto	u720
u721:
	goto	l1566
u720:
	line	304
	
l1554:	
;main.c: 303: {
;main.c: 304: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	goto	l1566
	line	310
	
l1556:	
;main.c: 308: else
;main.c: 309: {
;main.c: 310: if(keyCount >= 4)
	movlw	low(04h)
	subwf	(_keyCount),w
	skipc
	goto	u731
	goto	u730
u731:
	goto	l1564
u730:
	line	312
	
l1558:	
;main.c: 311: {
;main.c: 312: keyCount = 0;
	clrf	(_keyCount)
	line	313
	
l1560:	
;main.c: 313: return 1;
	movlw	low(01h)
	goto	l645
	line	315
	
l1564:	
;main.c: 314: }
;main.c: 315: keyCount = 0;
	clrf	(_keyCount)
	line	317
	
l1566:	
;main.c: 316: }
;main.c: 317: return 0;
	movlw	low(0)
	line	318
	
l645:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 517 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	517
global __ptext6
__ptext6:	;psect for function _Sleep_Mode
psect	text6
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	517
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	519
	
l1682:	
;main.c: 519: INTCON = 0;
	clrf	(11)	;volatile
	line	521
;main.c: 521: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	523
;main.c: 523: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	524
	
l1684:	
;main.c: 524: TRISA = 0x20;
	movlw	low(020h)
	movwf	(133)^080h	;volatile
	line	525
	
l1686:	
;main.c: 525: TRISB = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	527
;main.c: 527: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	528
;main.c: 528: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	529
	
l1688:	
;main.c: 529: WPUB = 0x01;
	movlw	low(01h)
	movwf	(8)	;volatile
	line	531
	
l1690:	
;main.c: 531: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	532
	
l1692:	
;main.c: 532: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	534
	
l1694:	
;main.c: 534: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	536
;main.c: 536: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	538
	
l1696:	
;main.c: 538: IOCA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	539
	
l1698:	
;main.c: 539: IOCB = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	541
	
l1700:	
;main.c: 541: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	542
	
l1702:	
;main.c: 542: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	543
	
l1704:	
;main.c: 543: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	544
	
l1706:	
;main.c: 544: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	546
	
l1708:	
;main.c: 546: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	547
	
l1710:	
;main.c: 547: PIR1 = 0;
	clrf	(13)	;volatile
	line	548
;main.c: 548: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	550
	
l1712:	
;main.c: 550: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	551
	
l1714:	
;main.c: 551: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	552
	
l1716:	
;main.c: 552: PORTB;
	movf	(6),w	;volatile
	line	553
	
l1718:	
;main.c: 553: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	554
# 554 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
clrwdt ;# 
	line	556
# 556 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
sleep ;# 
	line	558
# 558 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	559
# 559 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
clrwdt ;# 
	line	560
# 560 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	561
# 561 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	562
# 562 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	563
# 563 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	564
# 564 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
psect	text6
	line	565
	
l1720:	
;main.c: 565: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u1011
	goto	u1010
u1011:
	goto	l678
u1010:
	
l1722:	
	bcf	(107/8),(107)&7	;volatile
	
l678:	
	line	566
;main.c: 566: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u1021
	goto	u1020
u1021:
	goto	l679
u1020:
	
l1724:	
	bcf	(88/8),(88)&7	;volatile
	
l679:	
	line	567
;main.c: 567: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u1031
	goto	u1030
u1031:
	goto	l1728
u1030:
	
l1726:	
	bcf	(105/8),(105)&7	;volatile
	line	568
	
l1728:	
;main.c: 568: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	569
;main.c: 569: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	570
	
l1730:	
;main.c: 570: Init_System();
	fcall	_Init_System
	line	571
	
l1732:	
;main.c: 571: AD_Init();
	fcall	_AD_Init
	line	572
	
l681:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 417 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
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
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	417
global __ptext7
__ptext7:	;psect for function _Init_System
psect	text7
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	417
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	419
	
l1516:	
# 419 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
nop ;# 
	line	420
# 420 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
clrwdt ;# 
psect	text7
	line	421
	
l1518:	
;main.c: 421: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	422
# 422 "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
clrwdt ;# 
psect	text7
	line	423
	
l1520:	
;main.c: 423: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	425
	
l1522:	
;main.c: 425: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	426
	
l1524:	
;main.c: 426: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	427
	
l1526:	
;main.c: 427: WPUB = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	429
	
l1528:	
;main.c: 429: TRISA = 0x20;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	430
	
l1530:	
;main.c: 430: TRISB = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	432
;main.c: 432: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	433
;main.c: 433: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	437
	
l1532:	
;main.c: 437: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	438
	
l1534:	
;main.c: 438: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	439
	
l1536:	
;main.c: 439: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	441
	
l1538:	
;main.c: 441: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	442
	
l1540:	
;main.c: 442: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	443
	
l672:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 454 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
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
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	454
global __ptext8
__ptext8:	;psect for function _AD_Init
psect	text8
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	454
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	487
	
l1542:	
;main.c: 487: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	504
	
l1544:	
;main.c: 504: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	505
	
l1546:	
;main.c: 505: ANSEL0 = 0X20;
	movlw	low(020h)
	movwf	(147)^080h	;volatile
	line	506
;main.c: 506: ANSEL1 = 0x00;
	clrf	(148)^080h	;volatile
	line	507
	
l675:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 83 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	83
global __ptext9
__ptext9:	;psect for function _Isr_Timer
psect	text9
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	83
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 3
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
psect	text9
	line	85
	
i1l1734:	
;main.c: 85: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u104_21
	goto	u104_20
u104_21:
	goto	i1l588
u104_20:
	line	87
	
i1l1736:	
;main.c: 86: {
;main.c: 87: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	88
	
i1l1738:	
;main.c: 88: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u105_21
	goto	u105_20
u105_21:
	goto	i1l1748
u105_20:
	line	90
	
i1l1740:	
;main.c: 89: {
;main.c: 90: intCount = 0;
	clrf	(_intCount)
	line	91
	
i1l1742:	
;main.c: 91: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	92
	
i1l1744:	
;main.c: 92: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u106_21
	goto	u106_20
u106_21:
	goto	i1l1748
u106_20:
	line	94
	
i1l1746:	
;main.c: 93: {
;main.c: 94: count1s = 0;
	clrf	(_count1s)
	line	97
	
i1l1748:	
;main.c: 98: intCount10++;
	fcall	_ledShow
	line	101
	
i1l588:	
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
;;		line 136 in file "C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	136
global __ptext10
__ptext10:	;psect for function _ledShow
psect	text10
	file	"C:\mcuproject\scm\zdt\E013_062B_SOP14\main.c"
	line	136
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 3
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	138
	
i1l1592:	
;main.c: 138: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u78_21
	goto	u78_20
u78_21:
	goto	i1l638
u78_20:
	line	140
	
i1l1594:	
;main.c: 139: {
;main.c: 140: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	141
	
i1l1596:	
;main.c: 141: if(++ledCnt > 14)
	movlw	low(0Fh)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u79_21
	goto	u79_20
u79_21:
	goto	i1l1600
u79_20:
	line	143
	
i1l1598:	
;main.c: 142: {
;main.c: 143: ledCnt = 0;
	clrf	(_ledCnt)
	line	145
	
i1l1600:	
;main.c: 144: }
;main.c: 145: PORTA &= 0xE0;
	movlw	low(0E0h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	146
	
i1l1602:	
;main.c: 146: TRISA |= 0x1F;
	movlw	low(01Fh)
	iorwf	(133)^080h,f	;volatile
	line	147
;main.c: 147: switch(ledCnt)
	goto	i1l1638
	line	149
;main.c: 148: {
;main.c: 149: case 1:
	
i1l606:	
	line	150
;main.c: 150: if(shiweiNum & 0x01)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_shiweiNum),(0)&7
	goto	u80_21
	goto	u80_20
u80_21:
	goto	i1l638
u80_20:
	line	152
	
i1l1604:	
;main.c: 151: {
;main.c: 152: TRISA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	153
;main.c: 153: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	154
;main.c: 154: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	155
;main.c: 155: RA2 = 0;
	bcf	(1074/8)^080h,(1074)&7	;volatile
	goto	i1l638
	line	158
;main.c: 158: case 2:
	
i1l609:	
	line	159
;main.c: 159: if(shiweiNum & 0x02)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_shiweiNum),(1)&7
	goto	u81_21
	goto	u81_20
u81_21:
	goto	i1l638
u81_20:
	line	161
	
i1l1606:	
;main.c: 160: {
;main.c: 161: TRISA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	162
;main.c: 162: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	163
;main.c: 163: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	164
;main.c: 164: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l638
	line	167
;main.c: 167: case 3:
	
i1l611:	
	line	168
;main.c: 168: if(shiweiNum & 0x04)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_shiweiNum),(2)&7
	goto	u82_21
	goto	u82_20
u82_21:
	goto	i1l638
u82_20:
	line	170
	
i1l1608:	
;main.c: 169: {
;main.c: 170: TRISA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	171
;main.c: 171: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	172
;main.c: 172: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	173
;main.c: 173: RA2 = 0;
	bcf	(1074/8)^080h,(1074)&7	;volatile
	goto	i1l638
	line	176
;main.c: 176: case 4:
	
i1l613:	
	line	177
;main.c: 177: if(shiweiNum & 0x08)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_shiweiNum),(3)&7
	goto	u83_21
	goto	u83_20
u83_21:
	goto	i1l638
u83_20:
	line	179
	
i1l1610:	
;main.c: 178: {
;main.c: 179: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	180
;main.c: 180: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	181
;main.c: 181: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	182
;main.c: 182: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l638
	line	185
;main.c: 185: case 5:
	
i1l615:	
	line	186
;main.c: 186: if(shiweiNum & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_shiweiNum),(4)&7
	goto	u84_21
	goto	u84_20
u84_21:
	goto	i1l638
u84_20:
	line	188
	
i1l1612:	
;main.c: 187: {
;main.c: 188: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	189
;main.c: 189: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	190
;main.c: 190: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	line	191
;main.c: 191: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l638
	line	194
;main.c: 194: case 6:
	
i1l617:	
	line	195
;main.c: 195: if(shiweiNum & 0x20)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_shiweiNum),(5)&7
	goto	u85_21
	goto	u85_20
u85_21:
	goto	i1l638
u85_20:
	line	197
	
i1l1614:	
;main.c: 196: {
;main.c: 197: TRISA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	198
;main.c: 198: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	199
;main.c: 199: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	line	200
;main.c: 200: RA2 = 0;
	bcf	(1074/8)^080h,(1074)&7	;volatile
	goto	i1l638
	line	203
;main.c: 203: case 7:
	
i1l619:	
	line	204
;main.c: 204: if(shiweiNum & 0x40)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_shiweiNum),(6)&7
	goto	u86_21
	goto	u86_20
u86_21:
	goto	i1l638
u86_20:
	line	206
	
i1l1616:	
;main.c: 205: {
;main.c: 206: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	207
;main.c: 207: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	208
;main.c: 208: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	line	209
;main.c: 209: RA1 = 0;
	bcf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l638
	line	212
;main.c: 212: case 8:
	
i1l621:	
	line	213
;main.c: 213: if(geweiNum & 0x01)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_geweiNum),(0)&7
	goto	u87_21
	goto	u87_20
u87_21:
	goto	i1l638
u87_20:
	line	215
	
i1l1618:	
;main.c: 214: {
;main.c: 215: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	216
;main.c: 216: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	217
;main.c: 217: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	218
;main.c: 218: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l638
	line	221
;main.c: 221: case 9:
	
i1l623:	
	line	222
;main.c: 222: if(geweiNum & 0x02)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_geweiNum),(1)&7
	goto	u88_21
	goto	u88_20
u88_21:
	goto	i1l638
u88_20:
	line	224
	
i1l1620:	
;main.c: 223: {
;main.c: 224: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	225
;main.c: 225: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	226
;main.c: 226: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	227
;main.c: 227: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l638
	line	230
;main.c: 230: case 10:
	
i1l625:	
	line	231
;main.c: 231: if(geweiNum & 0x04)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_geweiNum),(2)&7
	goto	u89_21
	goto	u89_20
u89_21:
	goto	i1l638
u89_20:
	line	233
	
i1l1622:	
;main.c: 232: {
;main.c: 233: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	234
;main.c: 234: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	235
;main.c: 235: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	236
;main.c: 236: RA2 = 0;
	bcf	(1074/8)^080h,(1074)&7	;volatile
	goto	i1l638
	line	239
;main.c: 239: case 11:
	
i1l627:	
	line	240
;main.c: 240: if(geweiNum & 0x08)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_geweiNum),(3)&7
	goto	u90_21
	goto	u90_20
u90_21:
	goto	i1l638
u90_20:
	line	242
	
i1l1624:	
;main.c: 241: {
;main.c: 242: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	243
;main.c: 243: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	244
;main.c: 244: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	245
;main.c: 245: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l638
	line	248
;main.c: 248: case 12:
	
i1l629:	
	line	249
;main.c: 249: if(geweiNum & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_geweiNum),(4)&7
	goto	u91_21
	goto	u91_20
u91_21:
	goto	i1l638
u91_20:
	line	251
	
i1l1626:	
;main.c: 250: {
;main.c: 251: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	252
;main.c: 252: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	253
;main.c: 253: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	254
;main.c: 254: RA1 = 0;
	bcf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l638
	line	257
;main.c: 257: case 13:
	
i1l631:	
	line	258
;main.c: 258: if(geweiNum & 0x20)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_geweiNum),(5)&7
	goto	u92_21
	goto	u92_20
u92_21:
	goto	i1l638
u92_20:
	line	260
	
i1l1628:	
;main.c: 259: {
;main.c: 260: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	261
;main.c: 261: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	262
;main.c: 262: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	263
;main.c: 263: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l638
	line	266
;main.c: 266: case 14:
	
i1l633:	
	line	267
;main.c: 267: if(geweiNum & 0x40)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_geweiNum),(6)&7
	goto	u93_21
	goto	u93_20
u93_21:
	goto	i1l638
u93_20:
	line	269
	
i1l1630:	
;main.c: 268: {
;main.c: 269: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	270
;main.c: 270: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	271
;main.c: 271: RA0 = 1;
	bsf	(1072/8)^080h,(1072)&7	;volatile
	line	272
;main.c: 272: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l638
	line	276
	
i1l1632:	
;main.c: 276: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u94_21
	goto	u94_20
u94_21:
	goto	i1l638
u94_20:
	line	278
	
i1l1634:	
;main.c: 277: {
;main.c: 278: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	279
;main.c: 279: TRISA &= 0xFE;
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	280
;main.c: 280: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	281
;main.c: 281: RA0 = 0;
	bcf	(1072/8)^080h,(1072)&7	;volatile
	goto	i1l638
	line	147
	
i1l1638:	
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
goto i1l638
movlw high(i1S1988)
movwf pclath
	movlw low(i1S1988)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S1988:
	ljmp	i1l1632
	ljmp	i1l606
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
	ljmp	i1l633
psect	text10

	line	290
	
i1l638:	
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
