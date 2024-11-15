opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F2892B
opt include "F:\中微资料\SCMCU_IDE_V2.00.11_Beta4\SCMCU_IDE_V2.00.11_Beta4\data\include\sc8f2892b.cgen.inc"
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
	FNCALL	_main,_Init_System
	FNCALL	_main,_SystemSleep
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_PWMCON0
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_PWMCON0	set	19
	global	_T2CON
_T2CON	set	18
	global	_PIE1
_PIE1	set	13
	global	_PIR1
_PIR1	set	12
	global	_INTCON
_INTCON	set	11
	global	_WPUB
_WPUB	set	8
	global	_WPUA
_WPUA	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_TMR2IF
_TMR2IF	set	97
	global	_ADCON0
_ADCON0	set	157
	global	_OPA1CON
_OPA1CON	set	154
	global	_OPA0CON
_OPA0CON	set	152
	global	_PR2
_PR2	set	145
	global	_OSCCON
_OSCCON	set	136
	global	_WPDB
_WPDB	set	135
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
; #config settings
	file	"SC8F289XB_RTC_Demo.as"
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
?_Init_System:	; 1 bytes @ 0x0
?_SystemSleep:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_SystemSleep:	; 1 bytes @ 0x2
??_main:	; 1 bytes @ 0x2
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
;!    COMMON           14      2       2
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK2            80      0       0

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
;!    None.
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
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _Isr_Timer in BANK2
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
;! (0) _main                                                 0     0      0       0
;!                        _Init_System
;!                        _SystemSleep
;! ---------------------------------------------------------------------------------
;! (1) _SystemSleep                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _Isr_Timer                                            2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_System
;!   _SystemSleep
;!
;! _Isr_Timer (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      2       2       1       14.3%
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
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0       0       8        0.0%
;!DATA                 0      0       0       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 73 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
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
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Init_System
;;		_SystemSleep
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
	line	73
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
	line	73
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	75
	
l1196:	
;SC8F289XB_RTC_Demo.c: 75: Init_System();
	fcall	_Init_System
	line	76
;SC8F289XB_RTC_Demo.c: 76: while(1)
	
l754:	
	line	78
# 78 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
clrwdt ;# 
psect	maintext
	line	79
;SC8F289XB_RTC_Demo.c: 79: SystemSleep();
	fcall	_SystemSleep
	goto	l754
	global	start
	ljmp	start
	opt stack 0
	line	82
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_SystemSleep

;; *************** function _SystemSleep *****************
;; Defined at:
;;		line 38 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
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
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
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
	line	38
global __ptext1
__ptext1:	;psect for function _SystemSleep
psect	text1
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
	line	38
	global	__size_of_SystemSleep
	__size_of_SystemSleep	equ	__end_of_SystemSleep-_SystemSleep
	
_SystemSleep:	
;incstack = 0
	opt	stack 6
; Regs used in _SystemSleep: [wreg+status,2+status,0]
	line	41
	
l1170:	
;SC8F289XB_RTC_Demo.c: 41: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(13)	;volatile
	line	42
;SC8F289XB_RTC_Demo.c: 42: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	43
	
l1172:	
;SC8F289XB_RTC_Demo.c: 43: if(0X8F != T2CON)
		movlw	143
	xorwf	((18)),w	;volatile
	btfsc	status,2
	goto	u11
	goto	u10
u11:
	goto	l1176
u10:
	line	44
	
l1174:	
;SC8F289XB_RTC_Demo.c: 44: T2CON = 0X8F;
	movlw	low(08Fh)
	movwf	(18)	;volatile
	line	47
	
l1176:	
;SC8F289XB_RTC_Demo.c: 47: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	48
	
l1178:	
;SC8F289XB_RTC_Demo.c: 48: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	49
	
l1180:	
;SC8F289XB_RTC_Demo.c: 49: PORTA ^= 0XFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(5),f	;volatile
	line	51
	
l1182:	
;SC8F289XB_RTC_Demo.c: 51: PWMCON0 = 0;
	clrf	(19)	;volatile
	line	53
	
l1184:	
;SC8F289XB_RTC_Demo.c: 53: OPA0CON = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(152)^080h	;volatile
	line	54
	
l1186:	
;SC8F289XB_RTC_Demo.c: 54: OPA1CON = 0;
	clrf	(154)^080h	;volatile
	line	55
	
l1188:	
;SC8F289XB_RTC_Demo.c: 55: ADCON0 = 0;
	clrf	(157)^080h	;volatile
	line	57
	
l1190:	
;SC8F289XB_RTC_Demo.c: 57: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	59
	
l1192:	
;SC8F289XB_RTC_Demo.c: 59: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(136)^080h	;volatile
	line	60
# 60 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
clrwdt ;# 
	line	62
# 62 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
sleep ;# 
	line	64
# 64 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
nop ;# 
	line	65
# 65 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
clrwdt ;# 
psect	text1
	line	66
	
l1194:	
;SC8F289XB_RTC_Demo.c: 66: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	67
	
l749:	
	return
	opt stack 0
GLOBAL	__end_of_SystemSleep
	__end_of_SystemSleep:
	signat	_SystemSleep,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 7 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	7
global __ptext2
__ptext2:	;psect for function _Init_System
psect	text2
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
	line	7
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	9
	
l1140:	
# 9 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
nop ;# 
	line	10
# 10 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
clrwdt ;# 
psect	text2
	line	11
	
l1142:	
;SC8F289XB_RTC_Demo.c: 11: INTCON = 0;
	clrf	(11)	;volatile
	line	12
	
l1144:	
;SC8F289XB_RTC_Demo.c: 12: OSCCON = 0X72;
	movlw	low(072h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	13
	
l1146:	
;SC8F289XB_RTC_Demo.c: 13: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	15
	
l1148:	
;SC8F289XB_RTC_Demo.c: 15: WPUA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	16
	
l1150:	
;SC8F289XB_RTC_Demo.c: 16: WPUB = 0B00000000;
	clrf	(8)	;volatile
	line	17
	
l1152:	
;SC8F289XB_RTC_Demo.c: 17: WPDB = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	20
	
l1154:	
;SC8F289XB_RTC_Demo.c: 20: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	21
	
l1156:	
;SC8F289XB_RTC_Demo.c: 21: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	23
	
l1158:	
;SC8F289XB_RTC_Demo.c: 23: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	24
	
l1160:	
;SC8F289XB_RTC_Demo.c: 24: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	27
	
l1162:	
;SC8F289XB_RTC_Demo.c: 27: PIE1 = 2;
	movlw	low(02h)
	movwf	(13)	;volatile
	line	29
	
l1164:	
;SC8F289XB_RTC_Demo.c: 29: PR2 = 0X80;
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	30
	
l1166:	
;SC8F289XB_RTC_Demo.c: 30: T2CON = 0x8F;
	movlw	low(08Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	33
	
l1168:	
;SC8F289XB_RTC_Demo.c: 33: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	34
	
l745:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 86 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
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
	line	86
global __ptext3
__ptext3:	;psect for function _Isr_Timer
psect	text3
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_RTC_Demo\SC8F289XB_RTC_Demo.c"
	line	86
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 6
; Regs used in _Isr_Timer: [wreg+status,2+status,0]
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
	movf	pclath,w
	movwf	(??_Isr_Timer+1)
	ljmp	_Isr_Timer
psect	text3
	line	88
	
i1l1198:	
;SC8F289XB_RTC_Demo.c: 88: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l1202
u2_20:
	line	91
	
i1l1200:	
;SC8F289XB_RTC_Demo.c: 89: {
;SC8F289XB_RTC_Demo.c: 91: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	93
;SC8F289XB_RTC_Demo.c: 93: }
	goto	i1l764
	line	96
	
i1l1202:	
;SC8F289XB_RTC_Demo.c: 94: else
;SC8F289XB_RTC_Demo.c: 95: {
;SC8F289XB_RTC_Demo.c: 96: PIR1 = 0;
	clrf	(12)	;volatile
	line	97
	
i1l1204:	
;SC8F289XB_RTC_Demo.c: 97: INTCON &= 0XC0;
	movlw	low(0C0h)
	andwf	(11),f	;volatile
	line	99
	
i1l764:	
	movf	(??_Isr_Timer+1),w
	movwf	pclath
	swapf	(??_Isr_Timer+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Isr_Timer
	__end_of_Isr_Timer:
	signat	_Isr_Timer,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
