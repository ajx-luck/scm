opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1711C
opt include "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\include\sc8p1711c.cgen.inc"
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
	FNCALL	_main,_ADC_Result
	FNCALL	_main,_ADC_Sample
	FNCALL	_main,_InitSys
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	ADC_Sample@adtimes
	global	_IntFlag
	global	_intCount
	global	ADC_Sample@adsum
	global	ADC_Sample@admax
	global	ADC_Sample@admin
	global	_adresult
	global	_ADCON0
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_INTCON
_INTCON	set	11
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
	global	_OSCCON
_OSCCON	set	143
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISB5
_TRISB5	set	1077
	global	_ANSELH
_ANSELH	set	393
; #config settings
	file	"S23_1171C_SOP14_.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
ADC_Sample@adtimes:
       ds      1

_IntFlag:
       ds      1

_intCount:
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

_adresult:
       ds      2

	file	"S23_1171C_SOP14_.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
?_InitSys:	; 1 bytes @ 0x0
?_ADC_Sample:	; 1 bytes @ 0x0
?_ADC_Result:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
??_Timer0_Isr:	; 1 bytes @ 0x0
	ds	2
??_InitSys:	; 1 bytes @ 0x2
??_ADC_Sample:	; 1 bytes @ 0x2
??_ADC_Result:	; 1 bytes @ 0x2
	ds	1
	global	ADC_Result@adch
ADC_Result@adch:	; 1 bytes @ 0x3
	ds	1
	global	ADC_Result@i
ADC_Result@i:	; 1 bytes @ 0x4
	ds	2
??_main:	; 1 bytes @ 0x6
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
;!    Data        0
;!    BSS         13
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6       9
;!    BANK0            80      4      14
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_ADC_Sample
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_ADC_Sample
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
;! (0) _main                                                 1     1      0     321
;!                         _ADC_Result
;!                         _ADC_Sample
;!                            _InitSys
;! ---------------------------------------------------------------------------------
;! (1) _InitSys                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Sample                                           8     8      0     291
;!                                              2 COMMON     4     4      0
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Result                                           3     3      0      30
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
;!   _ADC_Result
;!   _ADC_Sample
;!   _InitSys
;!
;! _Timer0_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      6       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      17       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      4       E       5       17.5%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!DATA                 0      0      17       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 148 in file "C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Result
;;		_ADC_Sample
;;		_InitSys
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
	line	148
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
	line	148
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	151
	
l1321:	
;main.c: 151: InitSys();
	fcall	_InitSys
	line	152
;main.c: 152: while(1)
	
l638:	
	line	154
# 154 "C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
clrwdt ;# 
psect	maintext
	line	155
	
l1323:	
;main.c: 155: if(!IntFlag)
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u421
	goto	u420
u421:
	goto	l1327
u420:
	goto	l638
	line	157
	
l1327:	
;main.c: 157: IntFlag = 0;
	clrf	(_IntFlag)
	line	160
	
l1329:	
;main.c: 160: ANSELH = 0X20;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(393)^0180h	;volatile
	line	161
	
l1331:	
;main.c: 161: TRISB5 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	162
	
l1333:	
;main.c: 162: ADC_Sample(13);
	movlw	low(0Dh)
	fcall	_ADC_Sample
	line	166
	
l1335:	
;main.c: 164: unsigned char result;
;main.c: 166: result = ADC_Result(13);
	movlw	low(0Dh)
	fcall	_ADC_Result
	goto	l638
	global	start
	ljmp	start
	opt stack 0
	line	169
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_InitSys

;; *************** function _InitSys *****************
;; Defined at:
;;		line 173 in file "C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
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
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	173
global __ptext1
__ptext1:	;psect for function _InitSys
psect	text1
	file	"C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
	line	173
	global	__size_of_InitSys
	__size_of_InitSys	equ	__end_of_InitSys-_InitSys
	
_InitSys:	
;incstack = 0
	opt	stack 6
; Regs used in _InitSys: [wreg+status,2]
	line	175
	
l1187:	
# 175 "C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
nop ;# 
	line	176
# 176 "C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
clrwdt ;# 
psect	text1
	line	177
	
l1189:	
;main.c: 177: INTCON = 0;
	clrf	(11)	;volatile
	line	178
	
l1191:	
;main.c: 178: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	179
	
l1193:	
;main.c: 179: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	180
;main.c: 180: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	181
;main.c: 181: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	182
	
l645:	
	return
	opt stack 0
GLOBAL	__end_of_InitSys
	__end_of_InitSys:
	signat	_InitSys,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 67 in file "C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    0[BANK0 ] unsigned char 
;;  ad_temp         2    2[BANK0 ] volatile unsigned int 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       4       0
;;      Temps:          4       0       0
;;      Totals:         4       4       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	67
global __ptext2
__ptext2:	;psect for function _ADC_Sample
psect	text2
	file	"C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
	line	67
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 6
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	73
	
l1281:	
;main.c: 69: static unsigned long adsum = 0;
;main.c: 70: static unsigned int admin = 0,admax = 0;
;main.c: 71: static unsigned char adtimes = 0;
;main.c: 72: volatile unsigned int ad_temp;
;main.c: 73: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	74
	
l1283:	
;main.c: 74: ADCON0 = 0X41 | (adch << 2);
	bcf	status, 5	;RP0=0, select bank0
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u315:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u315
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	movwf	(31)	;volatile
	line	75
# 75 "C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
nop ;# 
	line	76
# 76 "C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
nop ;# 
psect	text2
	line	77
	
l1285:	
;main.c: 77: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	79
	
l1287:	
;main.c: 79: unsigned char i = 0;
	clrf	(ADC_Sample@i)
	line	80
;main.c: 80: while(GODONE)
	goto	l609
	
l610:	
	line	82
;main.c: 81: {
;main.c: 82: if(0 == (--i))
	decfsz	(ADC_Sample@i),f
	goto	u321
	goto	u320
u321:
	goto	l609
u320:
	goto	l612
	line	84
	
l609:	
	line	80
	btfsc	(249/8),(249)&7	;volatile
	goto	u331
	goto	u330
u331:
	goto	l610
u330:
	line	86
	
l1291:	
;main.c: 84: }
;main.c: 86: ad_temp=(ADRESH<<4)+(ADRESL>>4);
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
	
l1293:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	88
	
l1295:	
;main.c: 88: if(0 == admax)
	movf	((ADC_Sample@admax)),w
iorwf	((ADC_Sample@admax+1)),w
	btfss	status,2
	goto	u341
	goto	u340
u341:
	goto	l1299
u340:
	line	90
	
l1297:	
;main.c: 89: {
;main.c: 90: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)
	line	91
;main.c: 91: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)
	line	92
;main.c: 92: }
	goto	l615
	line	93
	
l1299:	
;main.c: 93: else if(ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w
	skipz
	goto	u355
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w
u355:
	skipnc
	goto	u351
	goto	u350
u351:
	goto	l1303
u350:
	line	94
	
l1301:	
;main.c: 94: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)
	goto	l615
	line	95
	
l1303:	
;main.c: 95: else if(ad_temp < admin)
	movf	(ADC_Sample@admin+1),w
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u365
	movf	(ADC_Sample@admin),w
	subwf	(ADC_Sample@ad_temp),w	;volatile
u365:
	skipnc
	goto	u361
	goto	u360
u361:
	goto	l615
u360:
	line	96
	
l1305:	
;main.c: 96: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)
	line	98
	
l615:	
;main.c: 98: adsum += ad_temp;
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
	goto	u371
	addwf	(ADC_Sample@adsum+1),f
u371:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u372
	addwf	(ADC_Sample@adsum+2),f
u372:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u373
	addwf	(ADC_Sample@adsum+3),f
u373:

	line	99
	
l1307:	
;main.c: 99: if(++adtimes >= 10)
	movlw	low(0Ah)
	incf	(ADC_Sample@adtimes),f
	subwf	((ADC_Sample@adtimes)),w
	skipc
	goto	u381
	goto	u380
u381:
	goto	l612
u380:
	line	101
	
l1309:	
;main.c: 100: {
;main.c: 101: adsum -= admax;
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
	goto	u395
	goto	u396
u395:
	subwf	(ADC_Sample@adsum+1),f
u396:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u397
	goto	u398
u397:
	subwf	(ADC_Sample@adsum+2),f
u398:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u399
	goto	u390
u399:
	subwf	(ADC_Sample@adsum+3),f
u390:

	line	102
;main.c: 102: adsum -= admin;
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
	goto	u405
	goto	u406
u405:
	subwf	(ADC_Sample@adsum+1),f
u406:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u407
	goto	u408
u407:
	subwf	(ADC_Sample@adsum+2),f
u408:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u409
	goto	u400
u409:
	subwf	(ADC_Sample@adsum+3),f
u400:

	line	104
	
l1311:	
;main.c: 104: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u415:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u410:
	addlw	-1
	skipz
	goto	u415
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	106
	
l1313:	
;main.c: 106: adsum = 0;
	clrf	(ADC_Sample@adsum)
	clrf	(ADC_Sample@adsum+1)
	clrf	(ADC_Sample@adsum+2)
	clrf	(ADC_Sample@adsum+3)
	line	107
	
l1315:	
;main.c: 107: admin = 0;
	clrf	(ADC_Sample@admin)
	clrf	(ADC_Sample@admin+1)
	line	108
	
l1317:	
;main.c: 108: admax = 0;
	clrf	(ADC_Sample@admax)
	clrf	(ADC_Sample@admax+1)
	line	109
	
l1319:	
;main.c: 109: adtimes = 0;
	clrf	(ADC_Sample@adtimes)
	line	111
	
l612:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,4217
	global	_ADC_Result

;; *************** function _ADC_Result *****************
;; Defined at:
;;		line 115 in file "C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    3[COMMON] unsigned char 
;;  i               1    4[COMMON] unsigned char 
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
;;      Locals:         2       0       0
;;      Temps:          1       0       0
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	115
global __ptext3
__ptext3:	;psect for function _ADC_Result
psect	text3
	file	"C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
	line	115
	global	__size_of_ADC_Result
	__size_of_ADC_Result	equ	__end_of_ADC_Result-_ADC_Result
	
_ADC_Result:	
;incstack = 0
	opt	stack 6
; Regs used in _ADC_Result: [wreg+status,2+status,0]
;ADC_Result@adch stored from wreg
	movwf	(ADC_Result@adch)
	line	117
	
l1171:	
;main.c: 117: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	118
	
l1173:	
;main.c: 118: ADCON0 = 0X41 | (adch << 2);
	movf	(ADC_Result@adch),w
	movwf	(??_ADC_Result+0)+0
	movlw	(02h)-1
u125:
	clrc
	rlf	(??_ADC_Result+0)+0,f
	addlw	-1
	skipz
	goto	u125
	clrc
	rlf	(??_ADC_Result+0)+0,w
	iorlw	041h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	119
# 119 "C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
nop ;# 
	line	120
# 120 "C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
nop ;# 
psect	text3
	line	121
	
l1175:	
;main.c: 121: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	123
	
l1177:	
;main.c: 123: unsigned char i = 0;
	clrf	(ADC_Result@i)
	line	124
;main.c: 124: while(GODONE)
	goto	l622
	
l623:	
	line	126
;main.c: 125: {
;main.c: 126: if(0 == (--i))
	decfsz	(ADC_Result@i),f
	goto	u131
	goto	u130
u131:
	goto	l622
u130:
	line	127
	
l1179:	
;main.c: 127: return 0;
	movlw	low(0)
	goto	l625
	line	128
	
l622:	
	line	124
	btfsc	(249/8),(249)&7	;volatile
	goto	u141
	goto	u140
u141:
	goto	l623
u140:
	line	129
	
l1183:	
;main.c: 128: }
;main.c: 129: return ADRESH;
	movf	(30),w	;volatile
	line	130
	
l625:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Result
	__end_of_ADC_Result:
	signat	_ADC_Result,4217
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 481 in file "C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	481
global __ptext4
__ptext4:	;psect for function _Timer0_Isr
psect	text4
	file	"C:\mcuproject\scm\zdt\S23_1171C_SOP14_\main.c"
	line	481
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
psect	text4
	line	482
	
i1l1211:	
;main.c: 482: if (T0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l1221
u16_20:
	line	484
	
i1l1213:	
;main.c: 484: TMR0 += 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	487
	
i1l1215:	
;main.c: 487: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	488
;main.c: 488: if(++intCount >= 100)
	movlw	low(064h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u17_21
	goto	u17_20
u17_21:
	goto	i1l1221
u17_20:
	line	490
	
i1l1217:	
;main.c: 489: {
;main.c: 490: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	491
	
i1l1219:	
;main.c: 491: intCount = 0;
	clrf	(_intCount)
	line	496
	
i1l1221:	
;main.c: 492: }
;main.c: 494: }
;main.c: 496: if (RBIF) {
	btfss	(88/8),(88)&7	;volatile
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l751
u18_20:
	line	497
	
i1l1223:	
;main.c: 497: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	499
	
i1l751:	
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
