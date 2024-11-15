opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F5139
opt include "C:\Edward_work_FILE\work_file\开发文件\中微开发工具\CMS_IDE_V2.03.18_Beta3\data\include\79f5139.cgen.inc"
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
	FNCALL	_main,_Set_OPA
	FNCALL	_Set_OPA,_DelayXus
	FNROOT	_main
	global	_OPA0ADJ
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_OPA0ADJ	set	155
	global	_OPA0CON
_OPA0CON	set	154
	global	_TRISB
_TRISB	set	134
; #config settings
	file	"OPA_Demo.as"
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
?_Set_OPA:	; 1 bytes @ 0x0
?_DelayXus:	; 1 bytes @ 0x0
??_DelayXus:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	DelayXus@X
DelayXus@X:	; 1 bytes @ 0x0
	ds	1
??_Set_OPA:	; 1 bytes @ 0x1
??_main:	; 1 bytes @ 0x1
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
;!    COMMON           14      1       1
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            88      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _Set_OPA->_DelayXus
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0      15
;!                            _Set_OPA
;! ---------------------------------------------------------------------------------
;! (1) _Set_OPA                                              0     0      0      15
;!                           _DelayXus
;! ---------------------------------------------------------------------------------
;! (2) _DelayXus                                             1     1      0      15
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Set_OPA
;!     _DelayXus
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      1       1       1        7.1%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            58      0       0       8        0.0%
;!BANK3               58      0       0       9        0.0%
;!BITBANK2            50      0       0      10        0.0%
;!BANK2               50      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "C:\Users\edwar\Desktop\CMS79F5118_5139程序\OPA_Demo\OPA_Demo.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Set_OPA
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\Users\edwar\Desktop\CMS79F5118_5139程序\OPA_Demo\OPA_Demo.c"
	line	20
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\edwar\Desktop\CMS79F5118_5139程序\OPA_Demo\OPA_Demo.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	22
	
l1144:	
# 22 "C:\Users\edwar\Desktop\CMS79F5118_5139程序\OPA_Demo\OPA_Demo.c"
nop ;# 
	line	23
# 23 "C:\Users\edwar\Desktop\CMS79F5118_5139程序\OPA_Demo\OPA_Demo.c"
clrwdt ;# 
psect	maintext
	line	25
	
l1146:	
;OPA_Demo.c: 25: TRISB = 0B00111000;
	movlw	low(038h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	27
	
l1148:	
;OPA_Demo.c: 27: Set_OPA();
	fcall	_Set_OPA
	line	29
;OPA_Demo.c: 29: while(1)
	
l721:	
	line	31
# 31 "C:\Users\edwar\Desktop\CMS79F5118_5139程序\OPA_Demo\OPA_Demo.c"
clrwdt ;# 
psect	maintext
	goto	l721
	global	start
	ljmp	start
	opt stack 0
	line	33
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Set_OPA

;; *************** function _Set_OPA *****************
;; Defined at:
;;		line 42 in file "C:\Users\edwar\Desktop\CMS79F5118_5139程序\OPA_Demo\OPA_Demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayXus
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	42
global __ptext1
__ptext1:	;psect for function _Set_OPA
psect	text1
	file	"C:\Users\edwar\Desktop\CMS79F5118_5139程序\OPA_Demo\OPA_Demo.c"
	line	42
	global	__size_of_Set_OPA
	__size_of_Set_OPA	equ	__end_of_Set_OPA-_Set_OPA
	
_Set_OPA:	
;incstack = 0
	opt	stack 6
; Regs used in _Set_OPA: [wreg+status,2+status,0+pclath+cstack]
	line	47
	
l1122:	
;OPA_Demo.c: 44: static bit OPA_Out;
;OPA_Demo.c: 47: OPA0ADJ = 0B01111111;
	movlw	low(07Fh)
	movwf	(155)^080h	;volatile
	line	48
;OPA_Demo.c: 48: OPA0CON = 0B11000101;
	movlw	low(0C5h)
	movwf	(154)^080h	;volatile
	line	52
	
l1124:	
;OPA_Demo.c: 51: {
;OPA_Demo.c: 52: DelayXus(10);
	movlw	low(0Ah)
	fcall	_DelayXus
	line	54
	
l1126:	
;OPA_Demo.c: 54: if(0X80 & OPA0ADJ)
	btfss	(155)^080h,(7)&7	;volatile
	goto	u21
	goto	u20
u21:
	goto	l1132
u20:
	goto	l1138
	line	58
	
l1132:	
;OPA_Demo.c: 56: else
;OPA_Demo.c: 57: {
;OPA_Demo.c: 58: OPA0ADJ--;
	decf	(155)^080h,f	;volatile
	line	60
	
l1134:	
;OPA_Demo.c: 60: if(!(0x1f & OPA0ADJ))
	movf	(155)^080h,w	;volatile
	andlw	01Fh
	btfss	status,2
	goto	u31
	goto	u30
u31:
	goto	l1124
u30:
	line	62
	
l1136:	
;OPA_Demo.c: 61: {
;OPA_Demo.c: 62: OPA0ADJ = 0x10;
	movlw	low(010h)
	movwf	(155)^080h	;volatile
	line	68
;OPA_Demo.c: 63: break;
	
l1138:	
;OPA_Demo.c: 64: }
;OPA_Demo.c: 65: }
;OPA_Demo.c: 66: }
;OPA_Demo.c: 68: OPA0ADJ &= 0x1f;
	movlw	low(01Fh)
	andwf	(155)^080h,f	;volatile
	line	70
	
l1140:	
;OPA_Demo.c: 70: if(0x20 & OPA0ADJ)
	btfss	(155)^080h,(5)&7	;volatile
	goto	u41
	goto	u40
u41:
	goto	l735
u40:
	line	72
	
l1142:	
;OPA_Demo.c: 71: {
;OPA_Demo.c: 72: OPA0ADJ = 0x1f;
	movlw	low(01Fh)
	movwf	(155)^080h	;volatile
	line	73
	
l735:	
	line	75
;OPA_Demo.c: 73: }
;OPA_Demo.c: 75: OPA0CON = 0B11111101;
	movlw	low(0FDh)
	movwf	(154)^080h	;volatile
	line	77
	
l736:	
	return
	opt stack 0
GLOBAL	__end_of_Set_OPA
	__end_of_Set_OPA:
	signat	_Set_OPA,89
	global	_DelayXus

;; *************** function _DelayXus *****************
;; Defined at:
;;		line 79 in file "C:\Users\edwar\Desktop\CMS79F5118_5139程序\OPA_Demo\OPA_Demo.c"
;; Parameters:    Size  Location     Type
;;  X               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  X               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
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
;;		_Set_OPA
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	79
global __ptext2
__ptext2:	;psect for function _DelayXus
psect	text2
	file	"C:\Users\edwar\Desktop\CMS79F5118_5139程序\OPA_Demo\OPA_Demo.c"
	line	79
	global	__size_of_DelayXus
	__size_of_DelayXus	equ	__end_of_DelayXus-_DelayXus
	
_DelayXus:	
;incstack = 0
	opt	stack 6
; Regs used in _DelayXus: [wreg+status,2+status,0]
;DelayXus@X stored from wreg
	movwf	(DelayXus@X)
	line	81
	
l1118:	
;OPA_Demo.c: 81: while(X--);
	
l1120:	
	decf	(DelayXus@X),f
		incf	(((DelayXus@X))),w
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l1120
u10:
	line	82
	
l742:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXus
	__end_of_DelayXus:
	signat	_DelayXus,4217
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
