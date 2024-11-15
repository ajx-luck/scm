opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F2892B
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.09_Beta6\SCMCU_IDE_V2.00.09_Beta6\data\include\sc8f2892b.cgen.inc"
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
	FNCALL	_main,_DelayXus
	FNROOT	_main
	global	_PORTA
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_PORTA	set	5
	global	_OSCCON
_OSCCON	set	136
	global	_TRISA
_TRISA	set	133
; #config settings
	file	"SC8F289XB_Delay_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
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
?_DelayXus:	; 1 bytes @ 0x0
??_DelayXus:	; 1 bytes @ 0x0
?_DelayXms:	; 1 bytes @ 0x0
??_DelayXms:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	DelayXus@x
DelayXus@x:	; 1 bytes @ 0x0
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x0
	ds	1
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x1
	ds	1
??_main:	; 1 bytes @ 0x2
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      4       4
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_DelayXms
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0      45
;!                                              2 COMMON     2     2      0
;!                           _DelayXms
;!                           _DelayXus
;! ---------------------------------------------------------------------------------
;! (1) _DelayXus                                             1     1      0      15
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _DelayXms                                             2     2      0      30
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _DelayXms
;!   _DelayXus
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      4       4       1       28.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BITBANK3            50      0       0       7        0.0%
;!BANK3               50      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BANK2               50      0       0      10        0.0%
;!ABS                  0      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 35 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayXms
;;		_DelayXus
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
	line	35
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
	line	35
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	37
	
l989:	
;SC8F289XB_Delay.c: 37: OSCCON = 0X72;
	movlw	low(072h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(136)^080h	;volatile
	line	38
	
l991:	
;SC8F289XB_Delay.c: 38: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	39
	
l993:	
;SC8F289XB_Delay.c: 39: PORTA = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	40
	
l995:	
;SC8F289XB_Delay.c: 40: DelayXms(50);
	movlw	low(032h)
	fcall	_DelayXms
	line	41
# 41 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
clrwdt ;# 
psect	maintext
	line	42
	
l997:	
;SC8F289XB_Delay.c: 42: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	43
	
l999:	
;SC8F289XB_Delay.c: 43: PORTA = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	44
	
l1001:	
;SC8F289XB_Delay.c: 44: DelayXus(50);
	movlw	low(032h)
	fcall	_DelayXus
	line	45
	
l1003:	
;SC8F289XB_Delay.c: 45: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	46
	
l1005:	
;SC8F289XB_Delay.c: 46: PORTA = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	49
	
l1007:	
;SC8F289XB_Delay.c: 48: {
;SC8F289XB_Delay.c: 49: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	50
;SC8F289XB_Delay.c: 50: _delay(1000);
	opt asmopt_push
opt asmopt_off
	movlw	199
movwf	((??_main+0)+0),f
	u47:
	nop2
decfsz	(??_main+0)+0,f
	goto	u47
	nop2
	nop2
opt asmopt_pop

	line	51
# 51 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
clrwdt ;# 
psect	maintext
	line	52
	
l1009:	
;SC8F289XB_Delay.c: 52: PORTA ^= 0XFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(5),f	;volatile
	line	53
	
l1011:	
;SC8F289XB_Delay.c: 53: _delay((unsigned long)((400)*(8000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	159
movwf	((??_main+0)+0),f
	u57:
	nop2
decfsz	(??_main+0)+0,f
	goto	u57
	nop2
	nop2
opt asmopt_pop

	line	54
# 54 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
clrwdt ;# 
psect	maintext
	line	55
;SC8F289XB_Delay.c: 55: PORTA ^= 0XFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(5),f	;volatile
	line	56
	
l1013:	
;SC8F289XB_Delay.c: 56: _delay((unsigned long)((2)*(8000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	6
movwf	((??_main+0)+0+1),f
	movlw	48
movwf	((??_main+0)+0),f
	u67:
decfsz	((??_main+0)+0),f
	goto	u67
	decfsz	((??_main+0)+0+1),f
	goto	u67
	nop
opt asmopt_pop

	line	60
# 60 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
clrwdt ;# 
psect	maintext
	line	61
	
l1015:	
;SC8F289XB_Delay.c: 61: PORTA ^= 0XFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(5),f	;volatile
	goto	l1007
	global	start
	ljmp	start
	opt stack 0
	line	63
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_DelayXus

;; *************** function _DelayXus *****************
;; Defined at:
;;		line 12 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	12
global __ptext1
__ptext1:	;psect for function _DelayXus
psect	text1
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
	line	12
	global	__size_of_DelayXus
	__size_of_DelayXus	equ	__end_of_DelayXus-_DelayXus
	
_DelayXus:	
;incstack = 0
	opt	stack 7
; Regs used in _DelayXus: [wreg]
;DelayXus@x stored from wreg
	movwf	(DelayXus@x)
	line	14
	
l981:	
;SC8F289XB_Delay.c: 14: while(--x);
	
l983:	
	decfsz	(DelayXus@x),f
	goto	u11
	goto	u10
u11:
	goto	l983
u10:
	line	15
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXus
	__end_of_DelayXus:
	signat	_DelayXus,4217
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 18 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    0[COMMON] unsigned char 
;;  i               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	18
global __ptext2
__ptext2:	;psect for function _DelayXms
psect	text2
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
	line	18
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 7
; Regs used in _DelayXms: [wreg+status,2]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	20
	
l985:	
;SC8F289XB_Delay.c: 20: unsigned char i = 0;;
	clrf	(DelayXms@i)
	line	22
;SC8F289XB_Delay.c: 22: while(--x)
	goto	l987
	
l592:	
	line	24
# 24 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
clrwdt ;# 
psect	text2
	line	25
;SC8F289XB_Delay.c: 25: while(--i)
	goto	l593
	
l594:	
	line	27
# 27 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
nop ;# 
	line	28
# 28 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
nop ;# 
	line	29
# 29 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
nop ;# 
	line	30
# 30 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Delay_Demo\SC8F289XB_Delay.c"
nop ;# 
psect	text2
	line	31
	
l593:	
	line	25
	decfsz	(DelayXms@i),f
	goto	u21
	goto	u20
u21:
	goto	l594
u20:
	line	22
	
l987:	
	decfsz	(DelayXms@x),f
	goto	u31
	goto	u30
u31:
	goto	l592
u30:
	line	33
	
l597:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
