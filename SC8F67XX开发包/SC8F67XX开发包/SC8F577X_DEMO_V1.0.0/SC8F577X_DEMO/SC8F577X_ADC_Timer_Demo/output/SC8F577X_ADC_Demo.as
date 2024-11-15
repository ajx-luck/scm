opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F5773
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.09_Beta4\SCMCU_IDE_V2.00.09_Beta4\data\include\sc8f5773.cgen.inc"
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
	FNCALL	_main,_DelayXms
	FNCALL	_main,_Read_ADC
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_result1
	global	_result
	global	_result2
	global	_T2CON
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_T2CON	set	18
	global	_TMR2
_TMR2	set	17
	global	_INTCON
_INTCON	set	11
	global	_TMR0
_TMR0	set	1
	global	_TMR2ON
_TMR2ON	set	146
	global	_TMR2IE
_TMR2IE	set	105
	global	_TMR2IF
_TMR2IF	set	97
	global	_INTF
_INTF	set	89
	global	_T0IF
_T0IF	set	90
	global	_T0IE
_T0IE	set	93
	global	_PEIE
_PEIE	set	94
	global	_GIE
_GIE	set	95
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_ADRESL
_ADRESL	set	159
	global	_ADRESH
_ADRESH	set	158
	global	_ADCON0
_ADCON0	set	157
	global	_ADCON1
_ADCON1	set	156
	global	_PR2
_PR2	set	145
	global	_OSCCON
_OSCCON	set	136
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_ADON
_ADON	set	1256
	global	_GODONE
_GODONE	set	1257
	global	_CHS4
_CHS4	set	1254
	global	_TRISB5
_TRISB5	set	1077
	global	_TRISB6
_TRISB6	set	1078
; #config settings
	file	"SC8F577X_ADC_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_result1:
       ds      2

_result:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_result2:
       ds      2

	file	"SC8F577X_ADC_Demo.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
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
?_DelayXms:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
??_Timer0_Isr:	; 1 bytes @ 0x0
	ds	2
??_DelayXms:	; 1 bytes @ 0x2
	global	?_Read_ADC
?_Read_ADC:	; 2 bytes @ 0x2
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x2
	global	Read_ADC@ADCLDORef
Read_ADC@ADCLDORef:	; 1 bytes @ 0x2
	ds	1
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x3
	ds	1
??_Read_ADC:	; 1 bytes @ 0x4
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x4
	ds	1
??_main:	; 1 bytes @ 0x5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	Read_ADC@i
Read_ADC@i:	; 1 bytes @ 0x0
	ds	1
	global	Read_ADC@Adc_Result
Read_ADC@Adc_Result:	; 2 bytes @ 0x1
	ds	2
	global	Read_ADC@ADCchannel
Read_ADC@ADCchannel:	; 1 bytes @ 0x3
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         6
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5       9
;!    BANK0            80      4       6
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_DelayXms
;!    _main->_Read_ADC
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_Read_ADC
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
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _Timer0_Isr in BANK2
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
;! (0) _main                                                 0     0      0     480
;!                           _DelayXms
;!                           _Read_ADC
;! ---------------------------------------------------------------------------------
;! (1) _Read_ADC                                             7     5      2     366
;!                                              2 COMMON     3     1      2
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _DelayXms                                             3     3      0     114
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _Timer0_Isr                                           2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _DelayXms
;!   _Read_ADC
;!
;! _Timer0_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      4       6       4        7.5%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0       F       8        0.0%
;!DATA                 0      0       F       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 33 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_ADC_Timer_Demo\SC8F577X_ADC.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayXms
;;		_Read_ADC
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_ADC_Timer_Demo\SC8F577X_ADC.c"
	line	33
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_ADC_Timer_Demo\SC8F577X_ADC.c"
	line	33
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l1535:	
# 36 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_ADC_Timer_Demo\SC8F577X_ADC.c"
nop ;# 
	line	37
# 37 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_ADC_Timer_Demo\SC8F577X_ADC.c"
clrwdt ;# 
psect	maintext
	line	38
	
l1537:	
;SC8F577X_ADC.c: 38: INTCON = 0;
	clrf	(11)	;volatile
	line	39
	
l1539:	
;SC8F577X_ADC.c: 39: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	41
	
l1541:	
;SC8F577X_ADC.c: 41: DelayXms(2);
	movlw	low(02h)
	fcall	_DelayXms
	line	43
	
l1543:	
;SC8F577X_ADC.c: 43: ADCON0 = 0B10000001;
	movlw	low(081h)
	movwf	(157)^080h	;volatile
	line	44
	
l1545:	
;SC8F577X_ADC.c: 44: ADCON1 = 0B00000011;
	movlw	low(03h)
	movwf	(156)^080h	;volatile
	line	46
	
l1547:	
;SC8F577X_ADC.c: 46: OPTION_REG = 0B00001111;
	movlw	low(0Fh)
	movwf	(129)^080h	;volatile
	line	48
	
l1549:	
;SC8F577X_ADC.c: 48: TMR0 = 6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	49
	
l1551:	
;SC8F577X_ADC.c: 49: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	50
	
l1553:	
;SC8F577X_ADC.c: 50: T0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	52
	
l1555:	
;SC8F577X_ADC.c: 52: T2CON = 0B00000011;
	movlw	low(03h)
	movwf	(18)	;volatile
	line	53
	
l1557:	
;SC8F577X_ADC.c: 53: PR2 = 250;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	54
	
l1559:	
;SC8F577X_ADC.c: 54: TMR2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(17)	;volatile
	line	55
	
l1561:	
;SC8F577X_ADC.c: 55: TMR2ON = 1;
	bsf	(146/8),(146)&7	;volatile
	line	56
	
l1563:	
;SC8F577X_ADC.c: 56: TMR2IE = 1;
	bsf	(105/8),(105)&7	;volatile
	line	58
	
l1565:	
;SC8F577X_ADC.c: 58: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	60
	
l1567:	
;SC8F577X_ADC.c: 60: TRISB6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1078/8)^080h,(1078)&7	;volatile
	line	61
	
l1569:	
;SC8F577X_ADC.c: 61: TRISB5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	63
	
l1571:	
;SC8F577X_ADC.c: 63: ADON = 1;
	bsf	(1256/8)^080h,(1256)&7	;volatile
	line	64
	
l1573:	
;SC8F577X_ADC.c: 64: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	66
	
l1575:	
;SC8F577X_ADC.c: 66: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	68
;SC8F577X_ADC.c: 68: while(1)
	
l884:	
	line	70
# 70 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_ADC_Timer_Demo\SC8F577X_ADC.c"
clrwdt ;# 
psect	maintext
	line	72
	
l1577:	
;SC8F577X_ADC.c: 72: result = Read_ADC(19,0);
	clrf	(Read_ADC@ADCLDORef)
	movlw	low(013h)
	fcall	_Read_ADC
	movf	(1+(?_Read_ADC)),w
	movwf	(_result+1)	;volatile
	movf	(0+(?_Read_ADC)),w
	movwf	(_result)	;volatile
	line	74
	
l1579:	
;SC8F577X_ADC.c: 74: result1 = Read_ADC(19,1);
	clrf	(Read_ADC@ADCLDORef)
	incf	(Read_ADC@ADCLDORef),f
	movlw	low(013h)
	fcall	_Read_ADC
	movf	(1+(?_Read_ADC)),w
	movwf	(_result1+1)	;volatile
	movf	(0+(?_Read_ADC)),w
	movwf	(_result1)	;volatile
	line	75
	
l1581:	
;SC8F577X_ADC.c: 75: result2 = Read_ADC(19,2);
	movlw	low(02h)
	movwf	(Read_ADC@ADCLDORef)
	movlw	low(013h)
	fcall	_Read_ADC
	movf	(1+(?_Read_ADC)),w
	movwf	(_result2+1)	;volatile
	movf	(0+(?_Read_ADC)),w
	movwf	(_result2)	;volatile
	goto	l884
	global	start
	ljmp	start
	opt stack 0
	line	77
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Read_ADC

;; *************** function _Read_ADC *****************
;; Defined at:
;;		line 110 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_ADC_Timer_Demo\SC8F577X_ADC.c"
;; Parameters:    Size  Location     Type
;;  ADCchannel      1    wreg     unsigned char 
;;  ADCLDORef       1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ADCchannel      1    3[BANK0 ] unsigned char 
;;  Adc_Result      2    1[BANK0 ] unsigned int 
;;  i               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         0       4       0       0
;;      Temps:          1       0       0       0
;;      Totals:         3       4       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	110
global __ptext1
__ptext1:	;psect for function _Read_ADC
psect	text1
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_ADC_Timer_Demo\SC8F577X_ADC.c"
	line	110
	global	__size_of_Read_ADC
	__size_of_Read_ADC	equ	__end_of_Read_ADC-_Read_ADC
	
_Read_ADC:	
;incstack = 0
	opt	stack 6
; Regs used in _Read_ADC: [wreg+status,2+status,0]
;Read_ADC@ADCchannel stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Read_ADC@ADCchannel)
	line	113
	
l1501:	
;SC8F577X_ADC.c: 112: unsigned int Adc_Result;
;SC8F577X_ADC.c: 113: unsigned char i=200;
	movlw	low(0C8h)
	movwf	(Read_ADC@i)
	line	116
	
l1503:	
;SC8F577X_ADC.c: 116: if(ADCLDORef==0)
	movf	((Read_ADC@ADCLDORef)),w
	btfss	status,2
	goto	u191
	goto	u190
u191:
	goto	l1507
u190:
	line	118
	
l1505:	
;SC8F577X_ADC.c: 117: {
;SC8F577X_ADC.c: 118: ADCON1 = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(156)^080h	;volatile
	line	119
;SC8F577X_ADC.c: 119: }
	goto	l1513
	line	120
	
l1507:	
;SC8F577X_ADC.c: 120: else if(ADCLDORef==1)
		decf	((Read_ADC@ADCLDORef)),w
	btfss	status,2
	goto	u201
	goto	u200
u201:
	goto	l1511
u200:
	line	122
	
l1509:	
;SC8F577X_ADC.c: 121: {
;SC8F577X_ADC.c: 122: ADCON1 = 0B00000101;
	movlw	low(05h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	123
;SC8F577X_ADC.c: 123: }
	goto	l1513
	line	126
	
l1511:	
;SC8F577X_ADC.c: 124: else
;SC8F577X_ADC.c: 125: {
;SC8F577X_ADC.c: 126: ADCON1 = 0B00000110;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	129
	
l1513:	
;SC8F577X_ADC.c: 127: }
;SC8F577X_ADC.c: 129: CHS4 = 0;
	bcf	(1254/8)^080h,(1254)&7	;volatile
	line	130
;SC8F577X_ADC.c: 130: if(ADCchannel >=16)
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(Read_ADC@ADCchannel),w
	skipc
	goto	u211
	goto	u210
u211:
	goto	l901
u210:
	line	132
	
l1515:	
;SC8F577X_ADC.c: 131: {
;SC8F577X_ADC.c: 132: ADCchannel -= 16;
	movlw	010h
	subwf	(Read_ADC@ADCchannel),f
	line	133
	
l1517:	
;SC8F577X_ADC.c: 133: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1254/8)^080h,(1254)&7	;volatile
	line	134
	
l901:	
	line	136
;SC8F577X_ADC.c: 134: }
;SC8F577X_ADC.c: 136: ADCON0 &= 0b11000011;
	movlw	low(0C3h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(157)^080h,f	;volatile
	line	137
;SC8F577X_ADC.c: 137: ADCON0 |= ADCchannel<<2;
	bcf	status, 5	;RP0=0, select bank0
	movf	(Read_ADC@ADCchannel),w
	movwf	(??_Read_ADC+0)+0
	movlw	(02h)-1
u225:
	clrc
	rlf	(??_Read_ADC+0)+0,f
	addlw	-1
	skipz
	goto	u225
	clrc
	rlf	(??_Read_ADC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(157)^080h,f	;volatile
	line	138
# 138 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_ADC_Timer_Demo\SC8F577X_ADC.c"
nop ;# 
psect	text1
	line	139
	
l1519:	
;SC8F577X_ADC.c: 139: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	140
;SC8F577X_ADC.c: 140: while(GODONE==1&&i>0)
	goto	l1523
	line	142
	
l1521:	
;SC8F577X_ADC.c: 141: {
;SC8F577X_ADC.c: 142: i--;
	decf	(Read_ADC@i),f
	line	143
# 143 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_ADC_Timer_Demo\SC8F577X_ADC.c"
nop ;# 
psect	text1
	line	140
	
l1523:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1257/8)^080h,(1257)&7	;volatile
	goto	u231
	goto	u230
u231:
	goto	l1527
u230:
	
l1525:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((Read_ADC@i)),w
	btfss	status,2
	goto	u241
	goto	u240
u241:
	goto	l1521
u240:
	line	145
	
l1527:	
;SC8F577X_ADC.c: 144: }
;SC8F577X_ADC.c: 145: Adc_Result = ADRESH<<4;
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Read_ADC@Adc_Result)
	clrf	(Read_ADC@Adc_Result+1)
	swapf	(Read_ADC@Adc_Result),f
	swapf	(Read_ADC@Adc_Result+1),f
	movlw	0f0h
	andwf	(Read_ADC@Adc_Result+1),f
	movf	(Read_ADC@Adc_Result),w
	andlw	0fh
	iorwf	(Read_ADC@Adc_Result+1),f
	movlw	0f0h
	andwf	(Read_ADC@Adc_Result),f
	line	146
	
l1529:	
;SC8F577X_ADC.c: 146: Adc_Result += ADRESL>>4;
	bsf	status, 5	;RP0=1, select bank1
	swapf	(159)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(Read_ADC@Adc_Result),f
	skipnc
	incf	(Read_ADC@Adc_Result+1),f
	line	148
	
l1531:	
;SC8F577X_ADC.c: 148: return Adc_Result;
	movf	(Read_ADC@Adc_Result+1),w
	movwf	(?_Read_ADC+1)
	movf	(Read_ADC@Adc_Result),w
	movwf	(?_Read_ADC)
	line	150
	
l907:	
	return
	opt stack 0
GLOBAL	__end_of_Read_ADC
	__end_of_Read_ADC:
	signat	_Read_ADC,8314
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 23 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_ADC_Timer_Demo\SC8F577X_ADC.c"
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
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	23
global __ptext2
__ptext2:	;psect for function _DelayXms
psect	text2
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_ADC_Timer_Demo\SC8F577X_ADC.c"
	line	23
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 6
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	26
	
l1399:	
;SC8F577X_ADC.c: 25: unsigned char i,j;
;SC8F577X_ADC.c: 26: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l1401:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u111
	goto	u110
u111:
	goto	l1405
u110:
	goto	l879
	line	27
	
l1405:	
;SC8F577X_ADC.c: 27: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l1411:	
	decf	(DelayXms@j),f
	
l1413:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u121
	goto	u120
u121:
	goto	l1411
u120:
	line	26
	
l1415:	
	decf	(DelayXms@i),f
	goto	l1401
	line	28
	
l879:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 79 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_ADC_Timer_Demo\SC8F577X_ADC.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	79
global __ptext3
__ptext3:	;psect for function _Timer0_Isr
psect	text3
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_ADC_Timer_Demo\SC8F577X_ADC.c"
	line	79
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 6
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
psect	text3
	line	82
	
i1l1385:	
;SC8F577X_ADC.c: 82: if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l1393
u9_20:
	line	84
	
i1l1387:	
;SC8F577X_ADC.c: 83: {
;SC8F577X_ADC.c: 84: TMR0 += 6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	85
	
i1l1389:	
;SC8F577X_ADC.c: 85: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	87
	
i1l1391:	
;SC8F577X_ADC.c: 87: RB6 = ~RB6;
	movlw	1<<((54)&7)
	xorwf	((54)/8),f
	line	91
	
i1l1393:	
;SC8F577X_ADC.c: 89: }
;SC8F577X_ADC.c: 91: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l894
u10_20:
	line	94
	
i1l1395:	
;SC8F577X_ADC.c: 92: {
;SC8F577X_ADC.c: 94: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	95
	
i1l1397:	
;SC8F577X_ADC.c: 95: RB5 = ~RB5;
	movlw	1<<((53)&7)
	xorwf	((53)/8),f
	line	98
	
i1l894:	
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
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
