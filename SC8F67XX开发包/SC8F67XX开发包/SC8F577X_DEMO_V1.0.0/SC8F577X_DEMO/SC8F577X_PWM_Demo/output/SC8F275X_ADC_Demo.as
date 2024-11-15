opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F5776
opt include "E:\CMS_WORK\TOOLS\SCMCU_IDE_V2.00.07\data\include\sc8f5776.cgen.inc"
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
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_result
	global	_Tempadresult1
	global	_Tempadresult
	global	_adresult
	global	Timer0_Isr@Ms2_Cnt
	global	Timer0_Isr@Led_Cn
	global	_Key_Cnt
	global	_Ms200_Cnt
	global	_Led_f
	global	_Start_f
	global	_Ms500_f
	global	_Ms20_f
	global	_INTCON
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_INTCON	set	11
	global	_WPUB
_WPUB	set	8
	global	_PORTB
_PORTB	set	6
	global	_TMR0
_TMR0	set	1
	global	_INTF
_INTF	set	89
	global	_T0IF
_T0IF	set	90
	global	_INTE
_INTE	set	92
	global	_T0IE
_T0IE	set	93
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB4
_RB4	set	52
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_ADRESL
_ADRESL	set	159
	global	_ADRESH
_ADRESH	set	158
	global	_ADCON0
_ADCON0	set	157
	global	_ADCON1
_ADCON1	set	156
	global	_OSCCON
_OSCCON	set	136
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_GODONE
_GODONE	set	1257
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB4
_TRISB4	set	1076
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISA1
_TRISA1	set	1065
	global	_TRISA2
_TRISA2	set	1066
; #config settings
	file	"SC8F275X_ADC_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_Led_f:
       ds      1

_Start_f:
       ds      1

_Ms500_f:
       ds      1

_Ms20_f:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_result:
       ds      2

_adresult:
       ds      2

Timer0_Isr@Ms2_Cnt:
       ds      1

Timer0_Isr@Led_Cn:
       ds      1

_Key_Cnt:
       ds      1

_Ms200_Cnt:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_Tempadresult1:
       ds      2

_Tempadresult:
       ds      2

	file	"SC8F275X_ADC_Demo.as"
	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
	clrf	((__pbssCOMMON)+6)&07Fh
	clrf	((__pbssCOMMON)+7)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
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
?_ADC_Result:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
??_Timer0_Isr:	; 1 bytes @ 0x0
	ds	2
??_ADC_Result:	; 1 bytes @ 0x2
	ds	1
	global	ADC_Result@adch
ADC_Result@adch:	; 1 bytes @ 0x3
	ds	1
	global	ADC_Result@i
ADC_Result@i:	; 1 bytes @ 0x4
	ds	1
??_main:	; 1 bytes @ 0x5
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         12
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      14
;!    BANK0            80      0       4
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_ADC_Result
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
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
;! (0) _main                                                 0     0      0      30
;!                         _ADC_Result
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
;!
;! _Timer0_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      0       4       4        5.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0      12       8        0.0%
;!DATA                 0      0      12       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 112 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F275X_ADC_Demo\SC8F577X_ADC.c"
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
;;		_ADC_Result
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F275X_ADC_Demo\SC8F577X_ADC.c"
	line	112
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F275X_ADC_Demo\SC8F577X_ADC.c"
	line	112
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	115
	
l1293:	
# 115 "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F275X_ADC_Demo\SC8F577X_ADC.c"
nop ;# 
	line	116
# 116 "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F275X_ADC_Demo\SC8F577X_ADC.c"
clrwdt ;# 
psect	maintext
	line	117
	
l1295:	
;SC8F577X_ADC.c: 117: INTCON = 0;
	clrf	(11)	;volatile
	line	118
	
l1297:	
;SC8F577X_ADC.c: 118: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	119
	
l1299:	
;SC8F577X_ADC.c: 119: TRISA0 = 1;
	bsf	(1064/8)^080h,(1064)&7	;volatile
	line	121
	
l1301:	
;SC8F577X_ADC.c: 121: WPUB = 0B00000001;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	122
	
l1303:	
;SC8F577X_ADC.c: 122: ADCON0 = 0B01111101;
	movlw	low(07Dh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(157)^080h	;volatile
	line	123
	
l1305:	
;SC8F577X_ADC.c: 123: ADCON1 = 0B00000111;
	movlw	low(07h)
	movwf	(156)^080h	;volatile
	line	126
	
l1307:	
;SC8F577X_ADC.c: 126: OPTION_REG = 0B00000011;
	movlw	low(03h)
	movwf	(129)^080h	;volatile
	line	127
	
l1309:	
;SC8F577X_ADC.c: 127: TMR0 = 6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	128
	
l1311:	
;SC8F577X_ADC.c: 128: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	129
	
l1313:	
;SC8F577X_ADC.c: 129: T0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	132
	
l1315:	
;SC8F577X_ADC.c: 132: TRISA = 0b11111011;
	movlw	low(0FBh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	133
	
l1317:	
;SC8F577X_ADC.c: 133: RA2= 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(42/8),(42)&7	;volatile
	line	134
	
l1319:	
;SC8F577X_ADC.c: 134: RA2= 1;
	bsf	(42/8),(42)&7	;volatile
	line	136
	
l1321:	
;SC8F577X_ADC.c: 136: Key_Cnt = 0;
	clrf	(_Key_Cnt)
	line	137
;SC8F577X_ADC.c: 137: TRISB = 0b11101001;
	movlw	low(0E9h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	138
	
l1323:	
;SC8F577X_ADC.c: 138: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	139
	
l1325:	
;SC8F577X_ADC.c: 139: PORTB = 0b00010111;
	movlw	low(017h)
	movwf	(6)	;volatile
	line	141
	
l1327:	
;SC8F577X_ADC.c: 141: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	144
	
l1329:	
;SC8F577X_ADC.c: 144: GIE =1;
	bsf	(95/8),(95)&7	;volatile
	line	146
;SC8F577X_ADC.c: 146: while(1)
	
l867:	
	line	148
# 148 "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F275X_ADC_Demo\SC8F577X_ADC.c"
clrwdt ;# 
psect	maintext
	line	154
	
l1331:	
;SC8F577X_ADC.c: 154: ADC_Result(15);
	movlw	low(0Fh)
	fcall	_ADC_Result
	line	166
;SC8F577X_ADC.c: 157: {
;SC8F577X_ADC.c: 160: {
	
l868:	
	line	168
;SC8F577X_ADC.c: 165: }
;SC8F577X_ADC.c: 166: }
;SC8F577X_ADC.c: 168: if(Ms20_f ==1)
	btfss	(_Ms20_f/8),(_Ms20_f)&7
	goto	u41
	goto	u40
u41:
	goto	l867
u40:
	line	170
	
l1335:	
;SC8F577X_ADC.c: 169: {
;SC8F577X_ADC.c: 170: Ms20_f = 0;
	bcf	(_Ms20_f/8),(_Ms20_f)&7
	line	171
	
l1337:	
;SC8F577X_ADC.c: 171: Ms200_Cnt++;
	incf	(_Ms200_Cnt),f
	line	172
	
l1339:	
;SC8F577X_ADC.c: 172: if(Ms200_Cnt < 25)
	movlw	low(019h)
	subwf	(_Ms200_Cnt),w
	skipnc
	goto	u51
	goto	u50
u51:
	goto	l870
u50:
	line	173
	
l1341:	
;SC8F577X_ADC.c: 173: Ms500_f =0;
	bcf	(_Ms500_f/8),(_Ms500_f)&7
	goto	l1343
	line	174
	
l870:	
	line	175
;SC8F577X_ADC.c: 174: else
;SC8F577X_ADC.c: 175: Ms500_f =1;
	bsf	(_Ms500_f/8),(_Ms500_f)&7
	line	176
	
l1343:	
;SC8F577X_ADC.c: 176: if(Ms200_Cnt >= 50)
	movlw	low(032h)
	subwf	(_Ms200_Cnt),w
	skipc
	goto	u61
	goto	u60
u61:
	goto	l1347
u60:
	line	178
	
l1345:	
;SC8F577X_ADC.c: 177: {
;SC8F577X_ADC.c: 178: Ms200_Cnt = 0;
	clrf	(_Ms200_Cnt)
	line	182
	
l1347:	
;SC8F577X_ADC.c: 180: }
;SC8F577X_ADC.c: 182: if(RB0==0)
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u71
	goto	u70
u71:
	goto	l1353
u70:
	line	184
	
l1349:	
;SC8F577X_ADC.c: 183: {
;SC8F577X_ADC.c: 184: if(Key_Cnt <200)
	movlw	low(0C8h)
	subwf	(_Key_Cnt),w
	skipnc
	goto	u81
	goto	u80
u81:
	goto	l869
u80:
	line	185
	
l1351:	
;SC8F577X_ADC.c: 185: Key_Cnt++;
	incf	(_Key_Cnt),f
	goto	l867
	line	189
	
l1353:	
;SC8F577X_ADC.c: 187: else
;SC8F577X_ADC.c: 188: {
;SC8F577X_ADC.c: 189: if(Key_Cnt >5)
	movlw	low(06h)
	subwf	(_Key_Cnt),w
	skipc
	goto	u91
	goto	u90
u91:
	goto	l1359
u90:
	line	191
	
l1355:	
;SC8F577X_ADC.c: 190: {
;SC8F577X_ADC.c: 191: if(Start_f==0)
	btfsc	(_Start_f/8),(_Start_f)&7
	goto	u101
	goto	u100
u101:
	goto	l1359
u100:
	line	193
	
l1357:	
;SC8F577X_ADC.c: 192: {
;SC8F577X_ADC.c: 193: Start_f = 1;
	bsf	(_Start_f/8),(_Start_f)&7
	line	194
;SC8F577X_ADC.c: 194: Led_f = 1;
	bsf	(_Led_f/8),(_Led_f)&7
	line	195
;SC8F577X_ADC.c: 195: RA1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	196
;SC8F577X_ADC.c: 196: TRISA1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7	;volatile
	line	197
;SC8F577X_ADC.c: 197: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	198
;SC8F577X_ADC.c: 198: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	202
	
l1359:	
;SC8F577X_ADC.c: 200: }
;SC8F577X_ADC.c: 201: }
;SC8F577X_ADC.c: 202: Key_Cnt = 0;
	clrf	(_Key_Cnt)
	goto	l867
	line	204
	
l869:	
	goto	l867
	global	start
	ljmp	start
	opt stack 0
	line	209
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_ADC_Result

;; *************** function _ADC_Result *****************
;; Defined at:
;;		line 78 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F275X_ADC_Demo\SC8F577X_ADC.c"
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
;;		On entry : 0/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
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
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	78
global __ptext1
__ptext1:	;psect for function _ADC_Result
psect	text1
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F275X_ADC_Demo\SC8F577X_ADC.c"
	line	78
	global	__size_of_ADC_Result
	__size_of_ADC_Result	equ	__end_of_ADC_Result-_ADC_Result
	
_ADC_Result:	
;incstack = 0
	opt	stack 6
; Regs used in _ADC_Result: [wreg+status,2+status,0]
;ADC_Result@adch stored from wreg
	movwf	(ADC_Result@adch)
	line	80
	
l1281:	
;SC8F577X_ADC.c: 80: unsigned char i = 0;
	clrf	(ADC_Result@i)
	line	82
	
l1283:	
;SC8F577X_ADC.c: 82: ADCON0 = 0X81 | (adch << 2);
	movf	(ADC_Result@adch),w
	movwf	(??_ADC_Result+0)+0
	movlw	(02h)-1
u15:
	clrc
	rlf	(??_ADC_Result+0)+0,f
	addlw	-1
	skipz
	goto	u15
	clrc
	rlf	(??_ADC_Result+0)+0,w
	iorlw	081h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(157)^080h	;volatile
	line	83
# 83 "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F275X_ADC_Demo\SC8F577X_ADC.c"
nop ;# 
	line	84
# 84 "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F275X_ADC_Demo\SC8F577X_ADC.c"
nop ;# 
psect	text1
	line	85
	
l1285:	
;SC8F577X_ADC.c: 85: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	88
;SC8F577X_ADC.c: 88: while(GODONE)
	goto	l851
	
l852:	
	line	90
;SC8F577X_ADC.c: 89: {
;SC8F577X_ADC.c: 90: if(0 == (--i))
	decfsz	(ADC_Result@i),f
	goto	u21
	goto	u20
u21:
	goto	l851
u20:
	goto	l854
	line	92
	
l851:	
	line	88
	btfsc	(1257/8)^080h,(1257)&7	;volatile
	goto	u31
	goto	u30
u31:
	goto	l852
u30:
	line	93
	
l1289:	
;SC8F577X_ADC.c: 92: }
;SC8F577X_ADC.c: 93: result=(ADRESH<<4)+(ADRESL>>4);
	movf	(158)^080h,w	;volatile
	movwf	(_result)	;volatile
	clrf	(_result+1)	;volatile
	swapf	(_result),f	;volatile
	swapf	(_result+1),f	;volatile
	movlw	0f0h
	andwf	(_result+1),f	;volatile
	movf	(_result),w	;volatile
	andlw	0fh
	iorwf	(_result+1),f	;volatile
	movlw	0f0h
	andwf	(_result),f	;volatile
	
l1291:	
	swapf	(159)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	addwf	(_result),f	;volatile
	skipnc
	incf	(_result+1),f	;volatile
	line	94
	
l854:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Result
	__end_of_ADC_Result:
	signat	_ADC_Result,4217
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 211 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F275X_ADC_Demo\SC8F577X_ADC.c"
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	211
global __ptext2
__ptext2:	;psect for function _Timer0_Isr
psect	text2
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F275X_ADC_Demo\SC8F577X_ADC.c"
	line	211
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
psect	text2
	line	216
	
i1l1361:	
;SC8F577X_ADC.c: 213: static unsigned char Led_Cn=0;
;SC8F577X_ADC.c: 214: static unsigned char Ms2_Cnt=0;
;SC8F577X_ADC.c: 216: if(INTF)
	line	222
;SC8F577X_ADC.c: 217: {
	
i1l889:	
	line	223
;SC8F577X_ADC.c: 222: }
;SC8F577X_ADC.c: 223: if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l901
u11_20:
	line	225
	
i1l1363:	
;SC8F577X_ADC.c: 224: {
;SC8F577X_ADC.c: 225: TMR0 += 6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	226
	
i1l1365:	
;SC8F577X_ADC.c: 226: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	228
	
i1l1367:	
;SC8F577X_ADC.c: 228: Ms2_Cnt++;
	incf	(Timer0_Isr@Ms2_Cnt),f
	line	229
;SC8F577X_ADC.c: 229: if(Ms2_Cnt >=10 )
	movlw	low(0Ah)
	subwf	(Timer0_Isr@Ms2_Cnt),w
	skipc
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l1373
u12_20:
	line	231
	
i1l1369:	
;SC8F577X_ADC.c: 230: {
;SC8F577X_ADC.c: 231: Ms2_Cnt = 0;
	clrf	(Timer0_Isr@Ms2_Cnt)
	line	232
	
i1l1371:	
;SC8F577X_ADC.c: 232: Ms20_f =1;
	bsf	(_Ms20_f/8),(_Ms20_f)&7
	line	235
	
i1l1373:	
;SC8F577X_ADC.c: 233: }
;SC8F577X_ADC.c: 235: Led_Cn++;
	incf	(Timer0_Isr@Led_Cn),f
	line	236
	
i1l1375:	
;SC8F577X_ADC.c: 236: if(Led_Cn >= 3)
	movlw	low(03h)
	subwf	(Timer0_Isr@Led_Cn),w
	skipc
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l1379
u13_20:
	line	238
	
i1l1377:	
;SC8F577X_ADC.c: 237: {
;SC8F577X_ADC.c: 238: Led_Cn = 0;
	clrf	(Timer0_Isr@Led_Cn)
	line	241
	
i1l1379:	
;SC8F577X_ADC.c: 239: }
;SC8F577X_ADC.c: 241: if(Led_Cn==0)
	movf	((Timer0_Isr@Led_Cn)),w
	btfss	status,2
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l1385
u14_20:
	line	243
	
i1l1381:	
;SC8F577X_ADC.c: 242: {
;SC8F577X_ADC.c: 243: RA2= 0;
	bcf	(42/8),(42)&7	;volatile
	line	244
;SC8F577X_ADC.c: 244: TRISA2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7	;volatile
	line	246
;SC8F577X_ADC.c: 246: RB1= 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	247
;SC8F577X_ADC.c: 247: TRISB1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1073/8)^080h,(1073)&7	;volatile
	line	248
;SC8F577X_ADC.c: 248: if(Led_f==0)
	btfsc	(_Led_f/8),(_Led_f)&7
	goto	u15_21
	goto	u15_20
u15_21:
	goto	i1l894
u15_20:
	line	250
	
i1l1383:	
;SC8F577X_ADC.c: 249: {
;SC8F577X_ADC.c: 250: RB4= 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	251
;SC8F577X_ADC.c: 251: TRISB4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	252
;SC8F577X_ADC.c: 252: }else
	goto	i1l1385
	
i1l894:	
	line	254
;SC8F577X_ADC.c: 253: {
;SC8F577X_ADC.c: 254: RB4= 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	255
;SC8F577X_ADC.c: 255: TRISB4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	258
	
i1l1385:	
;SC8F577X_ADC.c: 256: }
;SC8F577X_ADC.c: 257: }
;SC8F577X_ADC.c: 258: if(Led_Cn==1)
		decf	((Timer0_Isr@Led_Cn)),w
	btfss	status,2
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l901
u16_20:
	line	260
	
i1l1387:	
;SC8F577X_ADC.c: 259: {
;SC8F577X_ADC.c: 260: RA2= 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7	;volatile
	line	261
;SC8F577X_ADC.c: 261: TRISA2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7	;volatile
	line	263
;SC8F577X_ADC.c: 263: RB1= 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	264
;SC8F577X_ADC.c: 264: TRISB1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1073/8)^080h,(1073)&7	;volatile
	line	266
;SC8F577X_ADC.c: 266: if(Ms500_f==1||Start_f==1)
	btfsc	(_Ms500_f/8),(_Ms500_f)&7
	goto	u17_21
	goto	u17_20
u17_21:
	goto	i1l899
u17_20:
	
i1l1389:	
	btfss	(_Start_f/8),(_Start_f)&7
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l897
u18_20:
	
i1l899:	
	line	268
;SC8F577X_ADC.c: 267: {
;SC8F577X_ADC.c: 268: RB4= 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	269
;SC8F577X_ADC.c: 269: TRISB4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	270
;SC8F577X_ADC.c: 270: }
	goto	i1l901
	line	271
	
i1l897:	
	line	273
;SC8F577X_ADC.c: 271: else
;SC8F577X_ADC.c: 272: {
;SC8F577X_ADC.c: 273: RB4= 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	274
;SC8F577X_ADC.c: 274: TRISB4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	281
	
i1l901:	
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
