opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F5135
opt include "C:\mcuproject\scm\CMS_IDE_V2.03.26\CMS_IDE_V2.03.26\data\include\79f5135.cgen.inc"
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
	FNCALL	_main,_Sys_set
	FNCALL	_main,_beep_handle
	FNCALL	_main,_button_scan
	FNCALL	_main,_data_init
	FNCALL	_main,_drive_data_init
	FNCALL	_main,_fan_handle
	FNCALL	_main,_fog_erro_scan
	FNCALL	_main,_fog_handle
	FNCALL	_main,_led_handle
	FNCALL	_main,_register_init
	FNCALL	_main,_timing_handle
	FNCALL	_register_init,_Delay_nms
	FNCALL	_Delay_nms,_Delay
	FNCALL	_fog_erro_scan,_Test_Pwm
	FNCALL	_Test_Pwm,_Get_CUR_Dat
	FNCALL	_Test_Pwm,_PFG_read_fst
	FNCALL	_Test_Pwm,_Test_PWM_Fst
	FNCALL	_Test_Pwm,_Test_Pwm_Cur
	FNCALL	_Test_Pwm,_Test_water
	FNCALL	_Test_Pwm,_Work_RAM_CLR
	FNCALL	_Test_Pwm,_YTPFG_Flash
	FNCALL	_Test_PWM_Fst,_Test_Pwm_Cur
	FNCALL	_Test_PWM_Fst,_YTPFG_Flash
	FNCALL	_Test_Pwm_Cur,_Pwm_add
	FNCALL	_Test_Pwm_Cur,_Pwm_dec
	FNCALL	_PFG_read_fst,_Set_jiyi_re
	FNCALL	_Get_CUR_Dat,___awdiv
	FNROOT	_main
	FNCALL	_time0,_Set_Pwm_Onoff
	FNCALL	intlevel1,_time0
	global	intlevel1
	FNROOT	intlevel1
	global	_pfg_select
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
	file	"C:\mcuproject\scm\xfx\香薰机\WHQ_TP_ZPGS.h"
	line	179
_pfg_select:
	retlw	02h
	global __end_of_pfg_select
__end_of_pfg_select:
psect	strings
	file	"C:\mcuproject\scm\xfx\香薰机\WHQ_TP_ZPGS.h"
	line	195
_curset:
	retlw	01Ah
	global __end_of_curset
__end_of_curset:
psect	strings
	file	"C:\mcuproject\scm\xfx\香薰机\WHQ_TP_ZPGS.h"
	line	181
_Cur_Adcon:
	retlw	04h
	global __end_of_Cur_Adcon
__end_of_Cur_Adcon:
	global	_pfg_select
	global	_pfgonetemp
	global	_ledr_breath_duty
	global	_led_mod
	global	Test_Pwm@curokf1
	global	Test_water@watnof
	global	Set_Pwm_Onoff@adonf
	global	_PfgChangef
	global	_curupf
	global	_onoff_fst
	global	_PFGchgf
	global	_curokf
	global	_ponecf
	global	_pwmtonf
	global	_pwmtf1
	global	_pwmtf
	global	_on_off
	global	Test_water@curstrold
	global	_pwmlv
	global	_pwmold
	global	_pwmnold
	global	_pwmlst
	global	_pwmfst
	global	_adonetemp
	global	Test_Pwm@ondly
	global	Set_Pwm_Onoff@funold
	global	Set_Pwm_Onoff@cur_adcl
	global	Set_Pwm_Onoff@pwmcl
	global	Test_Pwm_Cur@curdowncl
	global	Test_Pwm_Cur@curupcl
	global	_curmax
	global	_pwmlc
	global	_pwmhc
	global	_whavecl
	global	_wnoncl
	global	_Ytzpcl
	global	_curokcl
	global	_cur_addatold2
	global	_cur_addatold1
	global	_cur_addatold0
	global	_curdownc
	global	_curupc
	global	_ponesec
	global	_fog_time_125us_cnt
	global	_time_125us_cnt
	global	_cur_addat
	global	_timing_set_num
	global	_timing_1min_cnt
	global	_fog_erro_flg
	global	_fog_status_buff
	global	_beep_flg
	global	_beep_cnt
	global	_led_scan_delay
	global	_led_mod4_flg
	global	_led_mod3_flg
	global	_led_mod2_flg
	global	_led_mod1_flg
	global	_ledb_breath_duty
	global	_ledg_breath_duty
	global	_led_breath_way
	global	_led_breath_cnt
	global	_fog_mod
	global	_work_mod
	global	_btn_fog_cnt
	global	_btn_led_cnt
	global	_btn_work_cnt
	global	_ledb_pecent
	global	_ledg_pecent
	global	_ledr_pecent
	global	_fog_drive_mod
	global	_time_10ms_flg
	global	_fog_time_5ms_flg
	global	Test_water@strupc
	global	Set_Pwm_Onoff@cursumt
	global	_cursum
	global	_timing_10ms_cnt
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_T2CON
_T2CON	set	18
	global	_PIR2
_PIR2	set	13
	global	_PIR1
_PIR1	set	12
	global	_INTCON
_INTCON	set	11
	global	_WPDB
_WPDB	set	8
	global	_WPDA
_WPDA	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_TMR0
_TMR0	set	1
	global	_TMR2IF
_TMR2IF	set	97
	global	_RBIE
_RBIE	set	91
	global	_T0IE
_T0IE	set	93
	global	_PEIE
_PEIE	set	94
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_RA6
_RA6	set	46
	global	_RA7
_RA7	set	47
	global	_PFGSTOP
_PFGSTOP	set	136
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_IOCB
_IOCB	set	150
	global	_WPUB
_WPUB	set	149
	global	_PR2
_PR2	set	146
	global	_OSCCON
_OSCCON	set	143
	global	_PIE2
_PIE2	set	141
	global	_PIE1
_PIE1	set	140
	global	_IOCA
_IOCA	set	135
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TRISB4
_TRISB4	set	1076
	global	_TRISB5
_TRISB5	set	1077
	global	_TRISA7
_TRISA7	set	1071
	global	_PFGCON1
_PFGCON1	set	286
	global	_PFGCON
_PFGCON	set	283
	global	_PFGADJ
_PFGADJ	set	281
	global	_PFGDATA1
_PFGDATA1	set	287
	global	_PWMD23H
_PWMD23H	set	285
	global	_PWMD01H
_PWMD01H	set	284
	global	_EEADR
_EEADR	set	269
	global	_EEDAT
_EEDAT	set	268
	global	_PWMCON2
_PWMCON2	set	265
	global	_PWMCON1
_PWMCON1	set	264
	global	_PWMCON0
_PWMCON0	set	263
	global	_WDTCON
_WDTCON	set	261
	global	_PWM1EN
_PWM1EN	set	2105
	global	_PWM2EN
_PWM2EN	set	2106
	global	_PWM3EN
_PWM3EN	set	2107
	global	_PWM4EN
_PWM4EN	set	2108
	global	_SWDTEN
_SWDTEN	set	2088
	global	_PWMD4L
_PWMD4L	set	407
	global	_PWMD3L
_PWMD3L	set	406
	global	_PWMD2L
_PWMD2L	set	405
	global	_PWMD1L
_PWMD1L	set	404
	global	_PWMD0L
_PWMD0L	set	403
	global	_PWMT4L
_PWMT4L	set	401
	global	_PWMTH
_PWMTH	set	400
	global	_PWMTL
_PWMTL	set	399
	global	_WPUA
_WPUA	set	398
	global	_ANSELH
_ANSELH	set	393
	global	_ANSEL
_ANSEL	set	392
	global	_RD
_RD	set	3168
	global	_EEPGD
_EEPGD	set	3175
; #config settings
	file	"CMS-TPWHQ-ZPGS.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
Test_Pwm@curokf1:
       ds      1

Test_water@watnof:
       ds      1

Set_Pwm_Onoff@adonf:
       ds      1

_PfgChangef:
       ds      1

_curupf:
       ds      1

_onoff_fst:
       ds      1

_PFGchgf:
       ds      1

_curokf:
       ds      1

_ponecf:
       ds      1

_pwmtonf:
       ds      1

_pwmtf1:
       ds      1

_pwmtf:
       ds      1

_on_off:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_pfgonetemp:
       ds      2

_ledr_breath_duty:
       ds      1

_led_mod:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
Test_water@curstrold:
       ds      2

_pwmlv:
       ds      2

_pwmold:
       ds      2

_pwmnold:
       ds      2

_pwmlst:
       ds      2

_pwmfst:
       ds      2

_adonetemp:
       ds      2

Test_Pwm@ondly:
       ds      1

Set_Pwm_Onoff@funold:
       ds      1

Set_Pwm_Onoff@cur_adcl:
       ds      1

Set_Pwm_Onoff@pwmcl:
       ds      1

Test_Pwm_Cur@curdowncl:
       ds      1

Test_Pwm_Cur@curupcl:
       ds      1

_curmax:
       ds      1

_pwmlc:
       ds      1

_pwmhc:
       ds      1

_whavecl:
       ds      1

_wnoncl:
       ds      1

_Ytzpcl:
       ds      1

_curokcl:
       ds      1

_cur_addatold2:
       ds      1

_cur_addatold1:
       ds      1

_cur_addatold0:
       ds      1

_curdownc:
       ds      1

_curupc:
       ds      1

_ponesec:
       ds      1

_fog_time_125us_cnt:
       ds      1

_time_125us_cnt:
       ds      1

_cur_addat:
       ds      1

_timing_set_num:
       ds      1

_timing_1min_cnt:
       ds      1

_fog_erro_flg:
       ds      1

_fog_status_buff:
       ds      1

_beep_flg:
       ds      1

_beep_cnt:
       ds      1

_led_scan_delay:
       ds      1

_led_mod4_flg:
       ds      1

_led_mod3_flg:
       ds      1

_led_mod2_flg:
       ds      1

_led_mod1_flg:
       ds      1

_ledb_breath_duty:
       ds      1

_ledg_breath_duty:
       ds      1

_led_breath_way:
       ds      1

_led_breath_cnt:
       ds      1

_fog_mod:
       ds      1

_work_mod:
       ds      1

_btn_fog_cnt:
       ds      1

_btn_led_cnt:
       ds      1

_btn_work_cnt:
       ds      1

_ledb_pecent:
       ds      1

_ledg_pecent:
       ds      1

_ledr_pecent:
       ds      1

_fog_drive_mod:
       ds      1

_time_10ms_flg:
       ds      1

_fog_time_5ms_flg:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
Test_water@strupc:
       ds      2

Set_Pwm_Onoff@cursumt:
       ds      2

_cursum:
       ds      2

_timing_10ms_cnt:
       ds      2

	file	"CMS-TPWHQ-ZPGS.as"
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

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
	clrf	((__pbitbssCOMMON/8)+1)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+03Eh)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+08h)
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
?_Set_jiyi_re:	; 1 bytes @ 0x0
?_register_init:	; 1 bytes @ 0x0
?_data_init:	; 1 bytes @ 0x0
?_drive_data_init:	; 1 bytes @ 0x0
?_Sys_set:	; 1 bytes @ 0x0
?_fog_erro_scan:	; 1 bytes @ 0x0
?_button_scan:	; 1 bytes @ 0x0
?_fan_handle:	; 1 bytes @ 0x0
?_fog_handle:	; 1 bytes @ 0x0
?_beep_handle:	; 1 bytes @ 0x0
?_led_handle:	; 1 bytes @ 0x0
?_timing_handle:	; 1 bytes @ 0x0
?_Test_Pwm:	; 1 bytes @ 0x0
?_Set_Pwm_Onoff:	; 1 bytes @ 0x0
??_Set_Pwm_Onoff:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_time0:	; 1 bytes @ 0x0
?_Test_Pwm_Cur:	; 1 bytes @ 0x0
?_PFG_read_fst:	; 1 bytes @ 0x0
?_Work_RAM_CLR:	; 1 bytes @ 0x0
?_Get_CUR_Dat:	; 1 bytes @ 0x0
?_YTPFG_Flash:	; 1 bytes @ 0x0
?_Test_PWM_Fst:	; 1 bytes @ 0x0
?_Test_water:	; 1 bytes @ 0x0
	ds	1
	global	Set_Pwm_Onoff@funod
Set_Pwm_Onoff@funod:	; 1 bytes @ 0x1
	ds	1
	global	Set_Pwm_Onoff@fun
Set_Pwm_Onoff@fun:	; 1 bytes @ 0x2
	ds	1
??_time0:	; 1 bytes @ 0x3
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Set_jiyi_re:	; 1 bytes @ 0x0
??_data_init:	; 1 bytes @ 0x0
??_drive_data_init:	; 1 bytes @ 0x0
??_Sys_set:	; 1 bytes @ 0x0
??_button_scan:	; 1 bytes @ 0x0
??_fan_handle:	; 1 bytes @ 0x0
??_fog_handle:	; 1 bytes @ 0x0
??_beep_handle:	; 1 bytes @ 0x0
??_led_handle:	; 1 bytes @ 0x0
??_timing_handle:	; 1 bytes @ 0x0
?_Delay:	; 1 bytes @ 0x0
?_Pwm_add:	; 1 bytes @ 0x0
?_Pwm_dec:	; 1 bytes @ 0x0
??_Work_RAM_CLR:	; 1 bytes @ 0x0
??_YTPFG_Flash:	; 1 bytes @ 0x0
??_Test_water:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	Set_jiyi_re@raddr
Set_jiyi_re@raddr:	; 1 bytes @ 0x0
	global	Delay@dtemp
Delay@dtemp:	; 2 bytes @ 0x0
	global	Pwm_add@pwmlset
Pwm_add@pwmlset:	; 2 bytes @ 0x0
	global	Pwm_dec@pwmfset
Pwm_dec@pwmfset:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	Set_jiyi_re@redata
Set_jiyi_re@redata:	; 1 bytes @ 0x1
	ds	1
??_Delay:	; 1 bytes @ 0x2
?_Delay_nms:	; 1 bytes @ 0x2
??_Pwm_add:	; 1 bytes @ 0x2
??_Pwm_dec:	; 1 bytes @ 0x2
??_PFG_read_fst:	; 1 bytes @ 0x2
	global	YTPFG_Flash@templ
YTPFG_Flash@templ:	; 1 bytes @ 0x2
	global	Delay_nms@inittempl
Delay_nms@inittempl:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	Test_water@temph
Test_water@temph:	; 1 bytes @ 0x3
	global	YTPFG_Flash@temp
YTPFG_Flash@temp:	; 2 bytes @ 0x3
	ds	1
??_Delay_nms:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
	global	Pwm_add@addcl
Pwm_add@addcl:	; 1 bytes @ 0x4
	global	Pwm_dec@deccl
Pwm_dec@deccl:	; 1 bytes @ 0x4
	global	PFG_read_fst@templ
PFG_read_fst@templ:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	Delay_nms@i
Delay_nms@i:	; 2 bytes @ 0x4
	global	Test_water@temp
Test_water@temp:	; 2 bytes @ 0x4
	ds	1
	global	PFG_read_fst@temph
PFG_read_fst@temph:	; 1 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	Pwm_add@temp
Pwm_add@temp:	; 2 bytes @ 0x5
	global	Pwm_dec@temp
Pwm_dec@temp:	; 2 bytes @ 0x5
	ds	1
	global	Delay_nms@gtemp
Delay_nms@gtemp:	; 1 bytes @ 0x6
	global	PFG_read_fst@pfgconset
PFG_read_fst@pfgconset:	; 1 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	1
??_register_init:	; 1 bytes @ 0x7
??_Test_Pwm_Cur:	; 1 bytes @ 0x7
	global	Test_Pwm_Cur@temph
Test_Pwm_Cur@temph:	; 1 bytes @ 0x7
	global	PFG_read_fst@temp
PFG_read_fst@temp:	; 2 bytes @ 0x7
	ds	1
??_Get_CUR_Dat:	; 1 bytes @ 0x8
	global	Test_Pwm_Cur@templ
Test_Pwm_Cur@templ:	; 1 bytes @ 0x8
	ds	1
??_Test_PWM_Fst:	; 1 bytes @ 0x9
	global	Test_PWM_Fst@templ
Test_PWM_Fst@templ:	; 1 bytes @ 0x9
	ds	1
??_Test_Pwm:	; 1 bytes @ 0xA
	ds	4
	global	Test_Pwm@templ
Test_Pwm@templ:	; 1 bytes @ 0xE
	ds	1
??_fog_erro_scan:	; 1 bytes @ 0xF
??_main:	; 1 bytes @ 0xF
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    3
;!    Data        0
;!    BSS         74
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      11
;!    BANK0            80     15      77
;!    BANK1            80      0       8
;!    BANK3            88      0       0
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
;!Critical Paths under _time0 in COMMON
;!
;!    _time0->_Set_Pwm_Onoff
;!
;!Critical Paths under _main in BANK0
;!
;!    _register_init->_Delay_nms
;!    _Delay_nms->_Delay
;!    _fog_erro_scan->_Test_Pwm
;!    _Test_Pwm->_Get_CUR_Dat
;!    _Test_Pwm->_Test_PWM_Fst
;!    _Test_PWM_Fst->_Test_Pwm_Cur
;!    _Test_Pwm_Cur->_Pwm_add
;!    _Test_Pwm_Cur->_Pwm_dec
;!    _PFG_read_fst->_Set_jiyi_re
;!    _Get_CUR_Dat->___awdiv
;!
;!Critical Paths under _time0 in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _time0 in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _time0 in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _time0 in BANK2
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
;! (0) _main                                                 0     0      0    2940
;!                            _Sys_set
;!                        _beep_handle
;!                        _button_scan
;!                          _data_init
;!                    _drive_data_init
;!                         _fan_handle
;!                      _fog_erro_scan
;!                         _fog_handle
;!                         _led_handle
;!                      _register_init
;!                      _timing_handle
;! ---------------------------------------------------------------------------------
;! (1) _timing_handle                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _register_init                                        0     0      0     344
;!                          _Delay_nms
;! ---------------------------------------------------------------------------------
;! (2) _Delay_nms                                            5     3      2     344
;!                                              2 BANK0      5     3      2
;!                              _Delay
;! ---------------------------------------------------------------------------------
;! (3) _Delay                                                2     0      2     135
;!                                              0 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _led_handle                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _fog_handle                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _fog_erro_scan                                        0     0      0    2596
;!                           _Test_Pwm
;! ---------------------------------------------------------------------------------
;! (2) _Test_Pwm                                             5     5      0    2596
;!                                             10 BANK0      5     5      0
;!                        _Get_CUR_Dat
;!                       _PFG_read_fst
;!                       _Test_PWM_Fst
;!                       _Test_Pwm_Cur
;!                         _Test_water
;!                       _Work_RAM_CLR
;!                        _YTPFG_Flash
;! ---------------------------------------------------------------------------------
;! (3) _Work_RAM_CLR                                         2     2      0       0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _Test_water                                           6     6      0     121
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (3) _Test_PWM_Fst                                         1     1      0     684
;!                                              9 BANK0      1     1      0
;!                       _Test_Pwm_Cur
;!                        _YTPFG_Flash
;! ---------------------------------------------------------------------------------
;! (3) _YTPFG_Flash                                          5     5      0     108
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (3) _Test_Pwm_Cur                                         2     2      0     511
;!                                              7 BANK0      2     2      0
;!                            _Pwm_add
;!                            _Pwm_dec
;! ---------------------------------------------------------------------------------
;! (4) _Pwm_dec                                              7     5      2     203
;!                                              0 BANK0      7     5      2
;! ---------------------------------------------------------------------------------
;! (4) _Pwm_add                                              7     5      2     203
;!                                              0 BANK0      7     5      2
;! ---------------------------------------------------------------------------------
;! (3) _PFG_read_fst                                         7     7      0     327
;!                                              2 BANK0      7     7      0
;!                        _Set_jiyi_re
;! ---------------------------------------------------------------------------------
;! (4) _Set_jiyi_re                                          2     2      0      65
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _Get_CUR_Dat                                          2     2      0     746
;!                                              8 BANK0      2     2      0
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (4) ___awdiv                                              8     4      4     746
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _fan_handle                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _drive_data_init                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _data_init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _button_scan                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _beep_handle                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Sys_set                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _time0                                                2     2      0     179
;!                                              3 COMMON     2     2      0
;!                      _Set_Pwm_Onoff
;! ---------------------------------------------------------------------------------
;! (7) _Set_Pwm_Onoff                                        3     3      0     179
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Sys_set
;!   _beep_handle
;!   _button_scan
;!   _data_init
;!   _drive_data_init
;!   _fan_handle
;!   _fog_erro_scan
;!     _Test_Pwm
;!       _Get_CUR_Dat
;!         ___awdiv
;!       _PFG_read_fst
;!         _Set_jiyi_re
;!       _Test_PWM_Fst
;!         _Test_Pwm_Cur
;!           _Pwm_add
;!           _Pwm_dec
;!         _YTPFG_Flash
;!       _Test_Pwm_Cur
;!         _Pwm_add
;!         _Pwm_dec
;!       _Test_water
;!       _Work_RAM_CLR
;!       _YTPFG_Flash
;!   _fog_handle
;!   _led_handle
;!   _register_init
;!     _Delay_nms
;!       _Delay
;!   _timing_handle
;!
;! _time0 (ROOT)
;!   _Set_Pwm_Onoff
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       2       0       14.3%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      60       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      F      4D       5       96.3%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       8       7       10.0%
;!BITBANK3            58      0       0       8        0.0%
;!BANK3               58      0       0       9        0.0%
;!BITBANK2            50      0       0      10        0.0%
;!BANK2               50      0       0      11        0.0%
;!DATA                 0      0      60      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 76 in file "C:\mcuproject\scm\xfx\香薰机\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Sys_set
;;		_beep_handle
;;		_button_scan
;;		_data_init
;;		_drive_data_init
;;		_fan_handle
;;		_fog_erro_scan
;;		_fog_handle
;;		_led_handle
;;		_register_init
;;		_timing_handle
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\xfx\香薰机\main.c"
	line	76
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\xfx\香薰机\main.c"
	line	76
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	79
	
l9844:	
;main.c: 79: register_init();
	fcall	_register_init
	line	80
;main.c: 80: data_init();
	fcall	_data_init
	line	81
	
l9846:	
;main.c: 81: drive_data_init();
	fcall	_drive_data_init
	line	84
	
l9848:	
;main.c: 83: {
;main.c: 84: Sys_set();
	fcall	_Sys_set
	line	85
	
l9850:	
;main.c: 85: if(fog_time_5ms_flg)
	movf	((_fog_time_5ms_flg)),w
	btfsc	status,2
	goto	u4731
	goto	u4730
u4731:
	goto	l9856
u4730:
	line	87
	
l9852:	
;main.c: 86: {
;main.c: 87: fog_time_5ms_flg=0;
	clrf	(_fog_time_5ms_flg)
	line	91
	
l9854:	
;main.c: 91: fog_erro_scan();
	fcall	_fog_erro_scan
	line	93
	
l9856:	
;main.c: 92: }
;main.c: 93: if(time_10ms_flg)
	movf	((_time_10ms_flg)),w
	btfsc	status,2
	goto	u4741
	goto	u4740
u4741:
	goto	l9848
u4740:
	line	95
	
l9858:	
;main.c: 94: {
;main.c: 95: time_10ms_flg=0;
	clrf	(_time_10ms_flg)
	line	96
# 96 "C:\mcuproject\scm\xfx\香薰机\main.c"
clrwdt ;# 
psect	maintext
	line	98
	
l9860:	
;main.c: 98: button_scan();
	fcall	_button_scan
	line	100
	
l9862:	
;main.c: 100: fan_handle();
	fcall	_fan_handle
	line	101
	
l9864:	
;main.c: 101: fog_handle();
	fcall	_fog_handle
	line	102
	
l9866:	
;main.c: 102: beep_handle();
	fcall	_beep_handle
	line	103
	
l9868:	
;main.c: 103: led_handle();
	fcall	_led_handle
	line	104
	
l9870:	
;main.c: 104: timing_handle();
	fcall	_timing_handle
	goto	l9848
	global	start
	ljmp	start
	opt stack 0
	line	107
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_timing_handle

;; *************** function _timing_handle *****************
;; Defined at:
;;		line 695 in file "C:\mcuproject\scm\xfx\香薰机\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
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
	line	695
global __ptext1
__ptext1:	;psect for function _timing_handle
psect	text1
	file	"C:\mcuproject\scm\xfx\香薰机\main.c"
	line	695
	global	__size_of_timing_handle
	__size_of_timing_handle	equ	__end_of_timing_handle-_timing_handle
	
_timing_handle:	
;incstack = 0
	opt	stack 5
; Regs used in _timing_handle: [wreg-fsr0h+status,2+status,0]
	line	697
	
l9804:	
;main.c: 697: switch(work_mod)
	goto	l9820
	line	700
	
l9806:	
;main.c: 700: timing_set_num=60;
	movlw	low(03Ch)
	movwf	(_timing_set_num)
	line	701
;main.c: 701: break;
	goto	l9822
	line	706
	
l9810:	
;main.c: 706: timing_set_num=120;
	movlw	low(078h)
	movwf	(_timing_set_num)
	line	707
;main.c: 707: break;
	goto	l9822
	line	709
	
l9812:	
;main.c: 709: timing_set_num=180;
	movlw	low(0B4h)
	movwf	(_timing_set_num)
	line	710
;main.c: 710: break;
	goto	l9822
	line	712
	
l9814:	
;main.c: 712: timing_set_num=0;
	clrf	(_timing_set_num)
	line	713
;main.c: 713: break;
	goto	l9822
	line	715
	
l9816:	
;main.c: 715: work_mod=0;
	clrf	(_work_mod)
	line	716
;main.c: 716: break;
	goto	l9822
	line	697
	
l9820:	
	movf	(_work_mod),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           17     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9806
	xorlw	1^0	; case 1
	skipnz
	goto	l9806
	xorlw	2^1	; case 2
	skipnz
	goto	l9810
	xorlw	3^2	; case 3
	skipnz
	goto	l9812
	xorlw	4^3	; case 4
	skipnz
	goto	l9814
	goto	l9816
	opt asmopt_pop

	line	718
	
l9822:	
;main.c: 718: if(!work_mod)
	movf	((_work_mod)),w
	btfss	status,2
	goto	u4691
	goto	u4690
u4691:
	goto	l9826
u4690:
	line	720
	
l9824:	
;main.c: 719: {
;main.c: 720: timing_10ms_cnt=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_timing_10ms_cnt)^080h
	clrf	(_timing_10ms_cnt+1)^080h
	line	721
;main.c: 721: timing_1min_cnt=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_timing_1min_cnt)
	line	722
;main.c: 722: }
	goto	l2464
	line	725
	
l9826:	
;main.c: 723: else
;main.c: 724: {
;main.c: 725: if(!timing_set_num)
	movf	((_timing_set_num)),w
	btfss	status,2
	goto	u4701
	goto	u4700
u4701:
	goto	l9830
u4700:
	goto	l9824
	line	732
	
l9830:	
;main.c: 730: else
;main.c: 731: {
;main.c: 732: timing_10ms_cnt++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(_timing_10ms_cnt)^080h,f
	skipnz
	incf	(_timing_10ms_cnt+1)^080h,f
	line	733
	
l9832:	
;main.c: 733: if(timing_10ms_cnt >= 6000)
	movlw	017h
	subwf	(_timing_10ms_cnt+1)^080h,w
	movlw	070h
	skipnz
	subwf	(_timing_10ms_cnt)^080h,w
	skipc
	goto	u4711
	goto	u4710
u4711:
	goto	l2464
u4710:
	line	735
	
l9834:	
;main.c: 734: {
;main.c: 735: timing_10ms_cnt=0;
	clrf	(_timing_10ms_cnt)^080h
	clrf	(_timing_10ms_cnt+1)^080h
	line	736
	
l9836:	
;main.c: 736: timing_1min_cnt++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_timing_1min_cnt),f
	line	737
	
l9838:	
;main.c: 737: if(timing_1min_cnt >= timing_set_num)
	movf	(_timing_set_num),w
	subwf	(_timing_1min_cnt),w
	skipc
	goto	u4721
	goto	u4720
u4721:
	goto	l2461
u4720:
	line	739
	
l9840:	
;main.c: 738: {
;main.c: 739: timing_1min_cnt=0;
	clrf	(_timing_1min_cnt)
	line	740
;main.c: 740: work_mod=0;
	clrf	(_work_mod)
	line	741
;main.c: 741: led_mod=0;
	clrf	(_led_mod)
	line	742
	
l9842:	
;main.c: 742: beep_cnt=8;
	movlw	low(08h)
	movwf	(_beep_cnt)
	goto	l2464
	line	745
	
l2461:	
	line	747
	
l2464:	
	return
	opt stack 0
GLOBAL	__end_of_timing_handle
	__end_of_timing_handle:
	signat	_timing_handle,89
	global	_register_init

;; *************** function _register_init *****************
;; Defined at:
;;		line 73 in file "C:\mcuproject\scm\xfx\香薰机\drive.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Delay_nms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\香薰机\drive.c"
	line	73
global __ptext2
__ptext2:	;psect for function _register_init
psect	text2
	file	"C:\mcuproject\scm\xfx\香薰机\drive.c"
	line	73
	global	__size_of_register_init
	__size_of_register_init	equ	__end_of_register_init-_register_init
	
_register_init:	
;incstack = 0
	opt	stack 3
; Regs used in _register_init: [wreg+status,2+status,0+pclath+cstack]
	line	75
	
l9268:	
;drive.c: 75: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	76
# 76 "C:\mcuproject\scm\xfx\香薰机\drive.c"
clrwdt ;# 
psect	text2
	line	78
	
l9270:	
;drive.c: 78: PORTA=0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	79
;drive.c: 79: PORTB=0b00000000;
	clrf	(6)	;volatile
	line	81
	
l9272:	
;drive.c: 81: TRISA=0b10000010;
	movlw	low(082h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	82
	
l9274:	
;drive.c: 82: TRISB=0b11111111;
	movlw	low(0FFh)
	movwf	(134)^080h	;volatile
	line	84
;drive.c: 84: WPUA= 0b00000000;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(398)^0180h	;volatile
	line	85
	
l9276:	
;drive.c: 85: WPUB= 0b00001111;
	movlw	low(0Fh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	87
	
l9278:	
;drive.c: 87: WPDA= 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	88
	
l9280:	
;drive.c: 88: WPDB= 0b00000000;
	clrf	(8)	;volatile
	line	90
	
l9282:	
;drive.c: 90: IOCA=0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	91
	
l9284:	
;drive.c: 91: IOCB=0b00000000;
	clrf	(150)^080h	;volatile
	line	93
	
l9286:	
;drive.c: 93: ANSEL= 0b00000000;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	94
	
l9288:	
;drive.c: 94: ANSELH=0b00000000;
	clrf	(393)^0180h	;volatile
	line	96
	
l9290:	
;drive.c: 96: Delay_nms(200);
	movlw	0C8h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Delay_nms@inittempl)
	clrf	(Delay_nms@inittempl+1)
	fcall	_Delay_nms
	line	100
	
l9292:	
;drive.c: 100: ADCON0=0b00000000;
	clrf	(31)	;volatile
	line	101
	
l9294:	
;drive.c: 101: ADCON1=0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	105
	
l9296:	
;drive.c: 105: OSCCON = 0x71;
	movlw	low(071h)
	movwf	(143)^080h	;volatile
	line	106
	
l9298:	
;drive.c: 106: OPTION_REG=0B00000000;
	clrf	(129)^080h	;volatile
	line	107
	
l9300:	
;drive.c: 107: TMR0=6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	108
	
l9302:	
;drive.c: 108: SWDTEN = 1;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(2088/8)^0100h,(2088)&7	;volatile
	line	110
	
l9304:	
;drive.c: 110: PR2 = 125;
	movlw	low(07Dh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	111
	
l9306:	
;drive.c: 111: T2CON = 0b00000101;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	114
	
l9308:	
;drive.c: 114: PWMCON0=0b10100000;
	movlw	low(0A0h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(263)^0100h	;volatile
	line	115
	
l9310:	
;drive.c: 115: PWMCON1=0b00000000;
	clrf	(264)^0100h	;volatile
	line	116
	
l9312:	
;drive.c: 116: PWMCON2=0b00000000;
	clrf	(265)^0100h	;volatile
	line	117
	
l9314:	
;drive.c: 117: PWMTH=0;
	bsf	status, 5	;RP0=1, select bank3
	clrf	(400)^0180h	;volatile
	line	118
	
l9316:	
;drive.c: 118: PWMTL=100;
	movlw	low(064h)
	movwf	(399)^0180h	;volatile
	line	120
	
l9318:	
;drive.c: 120: PWMD01H=0;
	bcf	status, 5	;RP0=0, select bank2
	clrf	(284)^0100h	;volatile
	line	121
	
l9320:	
;drive.c: 121: PWMD1L = 0;
	bsf	status, 5	;RP0=1, select bank3
	clrf	(404)^0180h	;volatile
	line	122
	
l9322:	
;drive.c: 122: PWMD0L = 0;
	clrf	(403)^0180h	;volatile
	line	123
	
l9324:	
;drive.c: 123: PWMD23H=0;
	bcf	status, 5	;RP0=0, select bank2
	clrf	(285)^0100h	;volatile
	line	124
	
l9326:	
;drive.c: 124: PWMD3L = 0;
	bsf	status, 5	;RP0=1, select bank3
	clrf	(406)^0180h	;volatile
	line	126
	
l9328:	
;drive.c: 126: PWMT4L = 124;
	movlw	low(07Ch)
	movwf	(401)^0180h	;volatile
	line	127
	
l9330:	
;drive.c: 127: PWMD4L = 62;
	movlw	low(03Eh)
	movwf	(407)^0180h	;volatile
	line	130
	
l9332:	
;drive.c: 130: INTCON=0;
	clrf	(11)	;volatile
	line	131
	
l9334:	
;drive.c: 131: PIE1=0;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(140)^080h	;volatile
	line	132
	
l9336:	
;drive.c: 132: PIE2=0;
	clrf	(141)^080h	;volatile
	line	133
	
l9338:	
;drive.c: 133: PIR1=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(12)	;volatile
	line	134
	
l9340:	
;drive.c: 134: PIR2=0;
	clrf	(13)	;volatile
	line	135
	
l9342:	
;drive.c: 135: T0IE=0;
	bcf	(93/8),(93)&7	;volatile
	line	136
	
l9344:	
;drive.c: 136: TMR2IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	137
	
l9346:	
;drive.c: 137: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	138
	
l9348:	
;drive.c: 138: RBIE=0;
	bcf	(91/8),(91)&7	;volatile
	line	139
	
l9350:	
;drive.c: 139: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	142
	
l4768:	
	return
	opt stack 0
GLOBAL	__end_of_register_init
	__end_of_register_init:
	signat	_register_init,89
	global	_Delay_nms

;; *************** function _Delay_nms *****************
;; Defined at:
;;		line 15 in file "C:\mcuproject\scm\xfx\香薰机\delay.c"
;; Parameters:    Size  Location     Type
;;  inittempl       2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    4[BANK0 ] unsigned int 
;;  gtemp           1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Delay
;; This function is called by:
;;		_register_init
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\香薰机\delay.c"
	line	15
global __ptext3
__ptext3:	;psect for function _Delay_nms
psect	text3
	file	"C:\mcuproject\scm\xfx\香薰机\delay.c"
	line	15
	global	__size_of_Delay_nms
	__size_of_Delay_nms	equ	__end_of_Delay_nms-_Delay_nms
	
_Delay_nms:	
;incstack = 0
	opt	stack 3
; Regs used in _Delay_nms: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l9174:	
;delay.c: 17: unsigned int i;
;delay.c: 18: unsigned char gtemp;
;delay.c: 20: gtemp=0;
	clrf	(Delay_nms@gtemp)
	line	21
	
l9176:	
;delay.c: 21: if(GIE==1)
	btfss	(95/8),(95)&7	;volatile
	goto	u3841
	goto	u3840
u3841:
	goto	l9180
u3840:
	line	23
	
l9178:	
;delay.c: 22: {
;delay.c: 23: gtemp=1;
	clrf	(Delay_nms@gtemp)
	incf	(Delay_nms@gtemp),f
	line	24
;delay.c: 24: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	26
	
l9180:	
;delay.c: 25: }
;delay.c: 26: for(i=0;i<inittempl;i++)
	clrf	(Delay_nms@i)
	clrf	(Delay_nms@i+1)
	goto	l9186
	line	28
	
l9182:	
;delay.c: 27: {
;delay.c: 28: Delay(154);
	movlw	09Ah
	movwf	(Delay@dtemp)
	clrf	(Delay@dtemp+1)
	fcall	_Delay
	line	29
# 29 "C:\mcuproject\scm\xfx\香薰机\delay.c"
clrwdt ;# 
psect	text3
	line	26
	
l9184:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(Delay_nms@i),f
	skipnz
	incf	(Delay_nms@i+1),f
	
l9186:	
	movf	(Delay_nms@inittempl+1),w
	subwf	(Delay_nms@i+1),w
	skipz
	goto	u3855
	movf	(Delay_nms@inittempl),w
	subwf	(Delay_nms@i),w
u3855:
	skipc
	goto	u3851
	goto	u3850
u3851:
	goto	l9182
u3850:
	line	31
	
l9188:	
;delay.c: 30: }
;delay.c: 31: if(gtemp==1) GIE=1;
		decf	((Delay_nms@gtemp)),w
	btfss	status,2
	goto	u3861
	goto	u3860
u3861:
	goto	l726
u3860:
	
l9190:	
	bsf	(95/8),(95)&7	;volatile
	line	32
	
l726:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_nms
	__end_of_Delay_nms:
	signat	_Delay_nms,4217
	global	_Delay

;; *************** function _Delay *****************
;; Defined at:
;;		line 8 in file "C:\mcuproject\scm\xfx\香薰机\delay.c"
;; Parameters:    Size  Location     Type
;;  dtemp           2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Delay_nms
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	8
global __ptext4
__ptext4:	;psect for function _Delay
psect	text4
	file	"C:\mcuproject\scm\xfx\香薰机\delay.c"
	line	8
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
;incstack = 0
	opt	stack 3
; Regs used in _Delay: [wreg+status,2+status,0]
	line	10
	
l8850:	
;delay.c: 10: while(dtemp--);
	
l8852:	
	movlw	01h
	subwf	(Delay@dtemp),f
	movlw	0
	skipc
	decf	(Delay@dtemp+1),f
	subwf	(Delay@dtemp+1),f
		incf	(((Delay@dtemp))),w
	skipz
	goto	u3421
	incf	(((Delay@dtemp+1))),w
	btfss	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l8852
u3420:
	line	11
	
l718:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
	signat	_Delay,4217
	global	_led_handle

;; *************** function _led_handle *****************
;; Defined at:
;;		line 363 in file "C:\mcuproject\scm\xfx\香薰机\main.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\香薰机\main.c"
	line	363
global __ptext5
__ptext5:	;psect for function _led_handle
psect	text5
	file	"C:\mcuproject\scm\xfx\香薰机\main.c"
	line	363
	global	__size_of_led_handle
	__size_of_led_handle	equ	__end_of_led_handle-_led_handle
	
_led_handle:	
;incstack = 0
	opt	stack 5
; Regs used in _led_handle: [wreg-fsr0h+status,2+status,0]
	line	365
	
l9540:	
;main.c: 365: if(!led_mod)
	movf	((_led_mod)),w
	btfss	status,2
	goto	u4331
	goto	u4330
u4331:
	goto	l9556
u4330:
	line	367
	
l9542:	
;main.c: 366: {
;main.c: 367: led_breath_cnt=0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_led_breath_cnt)
	line	368
;main.c: 368: led_breath_way=0;
	clrf	(_led_breath_way)
	line	369
	
l9544:	
;main.c: 369: ledr_breath_duty=100;
	movlw	low(064h)
	movwf	(_ledr_breath_duty)
	line	370
	
l9546:	
;main.c: 370: ledg_breath_duty=100;
	movlw	low(064h)
	movwf	(_ledg_breath_duty)
	line	371
	
l9548:	
;main.c: 371: ledb_breath_duty=100;
	movlw	low(064h)
	movwf	(_ledb_breath_duty)
	line	373
	
l9550:	
;main.c: 373: ledr_pecent=0;
	clrf	(_ledr_pecent)
	line	374
	
l9552:	
;main.c: 374: ledg_pecent=0;
	clrf	(_ledg_pecent)
	line	375
	
l9554:	
;main.c: 375: ledb_pecent=0;
	clrf	(_ledb_pecent)
	line	376
;main.c: 376: }
	goto	l9724
	line	377
	
l9556:	
;main.c: 377: else if(led_mod == 1)
		decf	((_led_mod)),w
	btfss	status,2
	goto	u4341
	goto	u4340
u4341:
	goto	l9626
u4340:
	line	379
	
l9558:	
;main.c: 378: {
;main.c: 379: led_breath_cnt++;
	bcf	status, 6	;RP1=0, select bank0
	incf	(_led_breath_cnt),f
	line	380
	
l9560:	
;main.c: 380: if(led_breath_cnt >= 8)
	movlw	low(08h)
	subwf	(_led_breath_cnt),w
	skipc
	goto	u4351
	goto	u4350
u4351:
	goto	l9624
u4350:
	line	382
	
l9562:	
;main.c: 381: {
;main.c: 382: led_breath_cnt=0;
	clrf	(_led_breath_cnt)
	line	383
;main.c: 383: switch(led_breath_way)
	goto	l9622
	line	386
	
l9564:	
;main.c: 386: ledg_breath_duty=100;
	movlw	low(064h)
	movwf	(_ledg_breath_duty)
	line	387
	
l9566:	
;main.c: 387: if(ledr_breath_duty)
	movf	((_ledr_breath_duty)),w
	btfsc	status,2
	goto	u4361
	goto	u4360
u4361:
	goto	l9570
u4360:
	line	389
	
l9568:	
;main.c: 388: {
;main.c: 389: ledr_breath_duty--;
	decf	(_ledr_breath_duty),f
	line	391
	
l9570:	
;main.c: 390: }
;main.c: 391: if(ledb_breath_duty)
	movf	((_ledb_breath_duty)),w
	btfsc	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l9574
u4370:
	line	393
	
l9572:	
;main.c: 392: {
;main.c: 393: ledb_breath_duty--;
	decf	(_ledb_breath_duty),f
	line	394
;main.c: 394: }
	goto	l9624
	line	397
	
l9574:	
;main.c: 395: else
;main.c: 396: {
;main.c: 397: led_breath_way++;
	incf	(_led_breath_way),f
	line	398
	
l9576:	
;main.c: 398: ledr_breath_duty=0;
	clrf	(_ledr_breath_duty)
	goto	l9624
	line	402
	
l9578:	
;main.c: 402: ledb_breath_duty=0;
	clrf	(_ledb_breath_duty)
	line	403
	
l9580:	
;main.c: 403: if(ledr_breath_duty < 100)
	movlw	low(064h)
	subwf	(_ledr_breath_duty),w
	skipnc
	goto	u4381
	goto	u4380
u4381:
	goto	l9584
u4380:
	line	405
	
l9582:	
;main.c: 404: {
;main.c: 405: ledr_breath_duty++;
	incf	(_ledr_breath_duty),f
	line	407
	
l9584:	
;main.c: 406: }
;main.c: 407: if(ledg_breath_duty)
	movf	((_ledg_breath_duty)),w
	btfsc	status,2
	goto	u4391
	goto	u4390
u4391:
	goto	l9588
u4390:
	line	409
	
l9586:	
;main.c: 408: {
;main.c: 409: ledg_breath_duty--;
	decf	(_ledg_breath_duty),f
	line	410
;main.c: 410: }
	goto	l9624
	line	413
	
l9588:	
;main.c: 411: else
;main.c: 412: {
;main.c: 413: led_breath_way++;
	incf	(_led_breath_way),f
	line	414
	
l9590:	
;main.c: 414: ledr_breath_duty = 100;
	movlw	low(064h)
	movwf	(_ledr_breath_duty)
	goto	l9624
	line	418
	
l9592:	
;main.c: 418: ledg_breath_duty=0;
	clrf	(_ledg_breath_duty)
	line	419
	
l9594:	
;main.c: 419: if(ledb_breath_duty < 100)
	movlw	low(064h)
	subwf	(_ledb_breath_duty),w
	skipnc
	goto	u4401
	goto	u4400
u4401:
	goto	l9598
u4400:
	line	421
	
l9596:	
;main.c: 420: {
;main.c: 421: ledb_breath_duty++;
	incf	(_ledb_breath_duty),f
	line	423
	
l9598:	
;main.c: 422: }
;main.c: 423: if(ledr_breath_duty)
	movf	((_ledr_breath_duty)),w
	btfsc	status,2
	goto	u4411
	goto	u4410
u4411:
	goto	l9602
u4410:
	line	425
	
l9600:	
;main.c: 424: {
;main.c: 425: ledr_breath_duty--;
	decf	(_ledr_breath_duty),f
	line	426
;main.c: 426: }
	goto	l9624
	line	429
	
l9602:	
;main.c: 427: else
;main.c: 428: {
;main.c: 429: led_breath_way++;
	incf	(_led_breath_way),f
	line	430
	
l9604:	
;main.c: 430: ledb_breath_duty = 100;
	movlw	low(064h)
	movwf	(_ledb_breath_duty)
	goto	l9624
	line	434
	
l9606:	
;main.c: 434: ledb_breath_duty = 100;
	movlw	low(064h)
	movwf	(_ledb_breath_duty)
	line	435
;main.c: 435: if(ledr_breath_duty < 100)
	movlw	low(064h)
	subwf	(_ledr_breath_duty),w
	skipnc
	goto	u4421
	goto	u4420
u4421:
	goto	l9610
u4420:
	line	437
	
l9608:	
;main.c: 436: {
;main.c: 437: ledr_breath_duty++;
	incf	(_ledr_breath_duty),f
	line	439
	
l9610:	
;main.c: 438: }
;main.c: 439: if(ledg_breath_duty < 100)
	movlw	low(064h)
	subwf	(_ledg_breath_duty),w
	skipnc
	goto	u4431
	goto	u4430
u4431:
	goto	l9614
u4430:
	line	441
	
l9612:	
;main.c: 440: {
;main.c: 441: ledg_breath_duty++;
	incf	(_ledg_breath_duty),f
	line	442
;main.c: 442: }
	goto	l9624
	line	445
	
l9614:	
;main.c: 443: else
;main.c: 444: {
;main.c: 445: led_breath_way=0;
	clrf	(_led_breath_way)
	goto	l9590
	line	450
	
l9618:	
;main.c: 450: led_breath_way=0;
	clrf	(_led_breath_way)
	line	451
;main.c: 451: break;
	goto	l9624
	line	383
	
l9622:	
	movf	(_led_breath_way),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           15     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9564
	xorlw	1^0	; case 1
	skipnz
	goto	l9578
	xorlw	2^1	; case 2
	skipnz
	goto	l9592
	xorlw	3^2	; case 3
	skipnz
	goto	l9606
	goto	l9618
	opt asmopt_pop

	line	454
	
l9624:	
;main.c: 453: }
;main.c: 454: ledr_pecent=ledr_breath_duty;
	movf	(_ledr_breath_duty),w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ledr_pecent)
	line	455
;main.c: 455: ledg_pecent=ledg_breath_duty;
	movf	(_ledg_breath_duty),w
	movwf	(_ledg_pecent)
	line	456
;main.c: 456: ledb_pecent=ledb_breath_duty;
	movf	(_ledb_breath_duty),w
	movwf	(_ledb_pecent)
	line	457
;main.c: 457: }
	goto	l9724
	line	458
	
l9626:	
;main.c: 458: else if(led_mod == 2)
		movlw	2
	xorwf	((_led_mod)),w
	btfss	status,2
	goto	u4441
	goto	u4440
u4441:
	goto	l9630
u4440:
	goto	l9624
	line	464
	
l9630:	
;main.c: 464: else if(led_mod == 3)
		movlw	3
	xorwf	((_led_mod)),w
	btfss	status,2
	goto	u4451
	goto	u4450
u4451:
	goto	l9638
u4450:
	line	466
	
l9632:	
;main.c: 465: {
;main.c: 466: ledr_pecent=0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ledr_pecent)
	line	467
	
l9634:	
;main.c: 467: ledg_pecent=50;
	movlw	low(032h)
	movwf	(_ledg_pecent)
	goto	l9554
	line	470
	
l9638:	
;main.c: 470: else if(led_mod == 4)
		movlw	4
	xorwf	((_led_mod)),w
	btfss	status,2
	goto	u4461
	goto	u4460
u4461:
	goto	l9646
u4460:
	line	472
	
l9640:	
;main.c: 471: {
;main.c: 472: ledr_pecent=0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ledr_pecent)
	line	473
	
l9642:	
;main.c: 473: ledg_pecent=100;
	movlw	low(064h)
	movwf	(_ledg_pecent)
	goto	l9554
	line	476
	
l9646:	
;main.c: 476: else if(led_mod == 5)
		movlw	5
	xorwf	((_led_mod)),w
	btfss	status,2
	goto	u4471
	goto	u4470
u4471:
	goto	l9652
u4470:
	line	478
	
l9648:	
;main.c: 477: {
;main.c: 478: ledr_pecent=0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ledr_pecent)
	line	479
;main.c: 479: ledg_pecent=0;
	clrf	(_ledg_pecent)
	line	480
	
l9650:	
;main.c: 480: ledb_pecent=50;
	movlw	low(032h)
	movwf	(_ledb_pecent)
	line	481
;main.c: 481: }
	goto	l9724
	line	482
	
l9652:	
;main.c: 482: else if(led_mod == 6)
		movlw	6
	xorwf	((_led_mod)),w
	btfss	status,2
	goto	u4481
	goto	u4480
u4481:
	goto	l9658
u4480:
	line	484
	
l9654:	
;main.c: 483: {
;main.c: 484: ledr_pecent=0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ledr_pecent)
	line	485
;main.c: 485: ledg_pecent=0;
	clrf	(_ledg_pecent)
	line	486
	
l9656:	
;main.c: 486: ledb_pecent=100;
	movlw	low(064h)
	movwf	(_ledb_pecent)
	line	487
;main.c: 487: }
	goto	l9724
	line	488
	
l9658:	
;main.c: 488: else if(led_mod == 7)
		movlw	7
	xorwf	((_led_mod)),w
	btfss	status,2
	goto	u4491
	goto	u4490
u4491:
	goto	l9666
u4490:
	line	490
	
l9660:	
;main.c: 489: {
;main.c: 490: ledr_pecent=50;
	movlw	low(032h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ledr_pecent)
	goto	l9552
	line	494
	
l9666:	
;main.c: 494: else if(led_mod == 8)
		movlw	8
	xorwf	((_led_mod)),w
	btfss	status,2
	goto	u4501
	goto	u4500
u4501:
	goto	l9674
u4500:
	line	496
	
l9668:	
;main.c: 495: {
;main.c: 496: ledr_pecent=100;
	movlw	low(064h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ledr_pecent)
	goto	l9552
	line	500
	
l9674:	
;main.c: 500: else if(led_mod == 9)
		movlw	9
	xorwf	((_led_mod)),w
	btfss	status,2
	goto	u4511
	goto	u4510
u4511:
	goto	l9680
u4510:
	line	502
	
l9676:	
;main.c: 501: {
;main.c: 502: ledr_pecent=50;
	movlw	low(032h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ledr_pecent)
	line	503
;main.c: 503: ledg_pecent=50;
	movlw	low(032h)
	movwf	(_ledg_pecent)
	goto	l9554
	line	506
	
l9680:	
;main.c: 506: else if(led_mod == 10)
		movlw	10
	xorwf	((_led_mod)),w
	btfss	status,2
	goto	u4521
	goto	u4520
u4521:
	goto	l9686
u4520:
	line	508
	
l9682:	
;main.c: 507: {
;main.c: 508: ledr_pecent=100;
	movlw	low(064h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ledr_pecent)
	line	509
;main.c: 509: ledg_pecent=100;
	movlw	low(064h)
	movwf	(_ledg_pecent)
	goto	l9554
	line	512
	
l9686:	
;main.c: 512: else if(led_mod == 11)
		movlw	11
	xorwf	((_led_mod)),w
	btfss	status,2
	goto	u4531
	goto	u4530
u4531:
	goto	l9694
u4530:
	line	514
	
l9688:	
;main.c: 513: {
;main.c: 514: ledr_pecent=50;
	movlw	low(032h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ledr_pecent)
	line	515
	
l9690:	
;main.c: 515: ledg_pecent=0;
	clrf	(_ledg_pecent)
	goto	l9650
	line	518
	
l9694:	
;main.c: 518: else if(led_mod == 12)
		movlw	12
	xorwf	((_led_mod)),w
	btfss	status,2
	goto	u4541
	goto	u4540
u4541:
	goto	l9702
u4540:
	line	520
	
l9696:	
;main.c: 519: {
;main.c: 520: ledr_pecent=100;
	movlw	low(064h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ledr_pecent)
	line	521
	
l9698:	
;main.c: 521: ledg_pecent=0;
	clrf	(_ledg_pecent)
	goto	l9656
	line	524
	
l9702:	
;main.c: 524: else if(led_mod == 13)
		movlw	13
	xorwf	((_led_mod)),w
	btfss	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l9710
u4550:
	line	526
	
l9704:	
;main.c: 525: {
;main.c: 526: ledr_pecent=0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ledr_pecent)
	line	527
	
l9706:	
;main.c: 527: ledg_pecent=50;
	movlw	low(032h)
	movwf	(_ledg_pecent)
	goto	l9650
	line	530
	
l9710:	
;main.c: 530: else if(led_mod == 14)
		movlw	14
	xorwf	((_led_mod)),w
	btfss	status,2
	goto	u4561
	goto	u4560
u4561:
	goto	l9718
u4560:
	line	532
	
l9712:	
;main.c: 531: {
;main.c: 532: ledr_pecent=0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ledr_pecent)
	line	533
	
l9714:	
;main.c: 533: ledg_pecent=100;
	movlw	low(064h)
	movwf	(_ledg_pecent)
	goto	l9656
	line	536
	
l9718:	
;main.c: 536: else if(led_mod == 15)
		movlw	15
	xorwf	((_led_mod)),w
	btfss	status,2
	goto	u4571
	goto	u4570
u4571:
	goto	l9722
u4570:
	line	538
	
l9720:	
;main.c: 537: {
;main.c: 538: ledr_pecent=50;
	movlw	low(032h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ledr_pecent)
	line	539
;main.c: 539: ledg_pecent=50;
	movlw	low(032h)
	movwf	(_ledg_pecent)
	line	540
;main.c: 540: ledb_pecent=50;
	movlw	low(032h)
	movwf	(_ledb_pecent)
	line	541
;main.c: 541: }
	goto	l9724
	line	544
	
l9722:	
;main.c: 542: else
;main.c: 543: {
;main.c: 544: ledr_pecent=100;
	movlw	low(064h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ledr_pecent)
	line	545
;main.c: 545: ledg_pecent=100;
	movlw	low(064h)
	movwf	(_ledg_pecent)
	line	546
;main.c: 546: ledb_pecent=100;
	movlw	low(064h)
	movwf	(_ledb_pecent)
	line	550
	
l9724:	
;main.c: 547: }
;main.c: 550: if(!ledr_pecent)
	movf	((_ledr_pecent)),w
	btfss	status,2
	goto	u4581
	goto	u4580
u4581:
	goto	l9728
u4580:
	line	552
	
l9726:	
;main.c: 551: {
;main.c: 552: {PWM2EN=0;};
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2106/8)^0100h,(2106)&7	;volatile
	line	553
;main.c: 553: {RA3=0;};
	bcf	status, 6	;RP1=0, select bank0
	bcf	(43/8),(43)&7	;volatile
	line	554
;main.c: 554: }
	goto	l9736
	line	555
	
l9728:	
;main.c: 555: else if(ledr_pecent > 99)
	movlw	low(064h)
	subwf	(_ledr_pecent),w
	skipc
	goto	u4591
	goto	u4590
u4591:
	goto	l9732
u4590:
	line	557
	
l9730:	
;main.c: 556: {
;main.c: 557: {PWM2EN=0;};
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2106/8)^0100h,(2106)&7	;volatile
	line	558
;main.c: 558: {RA3=1;};
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7	;volatile
	line	559
;main.c: 559: }
	goto	l9736
	line	562
	
l9732:	
;main.c: 560: else
;main.c: 561: {
;main.c: 562: PWMD2L=ledr_pecent;
	movf	(_ledr_pecent),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(405)^0180h	;volatile
	line	563
	
l9734:	
;main.c: 563: {PWM2EN=1;};
	bcf	status, 5	;RP0=0, select bank2
	bsf	(2106/8)^0100h,(2106)&7	;volatile
	line	565
	
l9736:	
;main.c: 564: }
;main.c: 565: if(!ledg_pecent)
	bcf	status, 6	;RP1=0, select bank0
	movf	((_ledg_pecent)),w
	btfss	status,2
	goto	u4601
	goto	u4600
u4601:
	goto	l9740
u4600:
	line	567
	
l9738:	
;main.c: 566: {
;main.c: 567: {PWM1EN=0;};
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2105/8)^0100h,(2105)&7	;volatile
	line	568
;main.c: 568: {RA2=0;};
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7	;volatile
	line	569
;main.c: 569: }
	goto	l9748
	line	570
	
l9740:	
;main.c: 570: else if(ledg_pecent > 99)
	movlw	low(064h)
	subwf	(_ledg_pecent),w
	skipc
	goto	u4611
	goto	u4610
u4611:
	goto	l9744
u4610:
	line	572
	
l9742:	
;main.c: 571: {
;main.c: 572: {PWM1EN=0;};
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2105/8)^0100h,(2105)&7	;volatile
	line	573
;main.c: 573: {RA2=1;};
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7	;volatile
	line	574
;main.c: 574: }
	goto	l9748
	line	577
	
l9744:	
;main.c: 575: else
;main.c: 576: {
;main.c: 577: PWMD1L=ledg_pecent;
	movf	(_ledg_pecent),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(404)^0180h	;volatile
	line	578
	
l9746:	
;main.c: 578: {PWM1EN=1;};
	bcf	status, 5	;RP0=0, select bank2
	bsf	(2105/8)^0100h,(2105)&7	;volatile
	line	580
	
l9748:	
;main.c: 579: }
;main.c: 580: if(!ledb_pecent)
	bcf	status, 6	;RP1=0, select bank0
	movf	((_ledb_pecent)),w
	btfss	status,2
	goto	u4621
	goto	u4620
u4621:
	goto	l9752
u4620:
	line	582
	
l9750:	
;main.c: 581: {
;main.c: 582: {PWM3EN=0;};
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2107/8)^0100h,(2107)&7	;volatile
	line	583
;main.c: 583: {RA4=0;};
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7	;volatile
	line	584
;main.c: 584: }
	goto	l9780
	line	585
	
l9752:	
;main.c: 585: else if(ledb_pecent > 99)
	movlw	low(064h)
	subwf	(_ledb_pecent),w
	skipc
	goto	u4631
	goto	u4630
u4631:
	goto	l9756
u4630:
	line	587
	
l9754:	
;main.c: 586: {
;main.c: 587: {PWM3EN=0;};
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2107/8)^0100h,(2107)&7	;volatile
	line	588
;main.c: 588: {RA4=1;};
	bcf	status, 6	;RP1=0, select bank0
	bsf	(44/8),(44)&7	;volatile
	line	589
;main.c: 589: }
	goto	l9780
	line	592
	
l9756:	
;main.c: 590: else
;main.c: 591: {
;main.c: 592: PWMD3L=ledb_pecent;
	movf	(_ledb_pecent),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(406)^0180h	;volatile
	line	593
	
l9758:	
;main.c: 593: {PWM3EN=1;};
	bcf	status, 5	;RP0=0, select bank2
	bsf	(2107/8)^0100h,(2107)&7	;volatile
	goto	l9780
	line	599
	
l9760:	
;main.c: 599: led_mod1_flg=0;
	clrf	(_led_mod1_flg)
	line	600
;main.c: 600: led_mod2_flg=0;
	clrf	(_led_mod2_flg)
	line	601
;main.c: 601: led_mod3_flg=0;
	clrf	(_led_mod3_flg)
	line	602
;main.c: 602: led_mod4_flg=0;
	clrf	(_led_mod4_flg)
	line	603
;main.c: 603: break;
	goto	l2423
	line	604
;main.c: 604: case 1 :
	
l2424:	
	line	605
;main.c: 605: led_mod1_flg=1;
	clrf	(_led_mod1_flg)
	incf	(_led_mod1_flg),f
	line	606
	
l9762:	
;main.c: 606: led_mod2_flg=0;
	clrf	(_led_mod2_flg)
	line	607
;main.c: 607: led_mod3_flg=0;
	clrf	(_led_mod3_flg)
	line	608
;main.c: 608: led_mod4_flg=0;
	clrf	(_led_mod4_flg)
	line	609
;main.c: 609: break;
	goto	l2423
	line	611
	
l9764:	
;main.c: 611: led_mod1_flg=0;
	clrf	(_led_mod1_flg)
	line	612
	
l9766:	
;main.c: 612: led_mod2_flg=1;
	clrf	(_led_mod2_flg)
	incf	(_led_mod2_flg),f
	line	613
;main.c: 613: led_mod3_flg=0;
	clrf	(_led_mod3_flg)
	line	614
;main.c: 614: led_mod4_flg=0;
	clrf	(_led_mod4_flg)
	line	615
;main.c: 615: break;
	goto	l2423
	line	617
	
l9768:	
;main.c: 617: led_mod1_flg=0;
	clrf	(_led_mod1_flg)
	line	618
;main.c: 618: led_mod2_flg=0;
	clrf	(_led_mod2_flg)
	line	619
	
l9770:	
;main.c: 619: led_mod3_flg=1;
	clrf	(_led_mod3_flg)
	incf	(_led_mod3_flg),f
	line	620
;main.c: 620: led_mod4_flg=0;
	clrf	(_led_mod4_flg)
	line	621
;main.c: 621: break;
	goto	l2423
	line	623
	
l9772:	
;main.c: 623: led_mod1_flg=0;
	clrf	(_led_mod1_flg)
	line	624
;main.c: 624: led_mod2_flg=0;
	clrf	(_led_mod2_flg)
	line	625
;main.c: 625: led_mod3_flg=0;
	clrf	(_led_mod3_flg)
	line	626
	
l9774:	
;main.c: 626: led_mod4_flg=1;
	clrf	(_led_mod4_flg)
	incf	(_led_mod4_flg),f
	line	627
;main.c: 627: break;
	goto	l2423
	line	629
	
l9776:	
;main.c: 629: work_mod=0;
	clrf	(_work_mod)
	line	630
;main.c: 630: break;
	goto	l2423
	line	596
	
l9780:	
	bcf	status, 6	;RP1=0, select bank0
	movf	(_work_mod),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           17     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9760
	xorlw	1^0	; case 1
	skipnz
	goto	l2424
	xorlw	2^1	; case 2
	skipnz
	goto	l9764
	xorlw	3^2	; case 3
	skipnz
	goto	l9768
	xorlw	4^3	; case 4
	skipnz
	goto	l9772
	goto	l9776
	opt asmopt_pop

	line	631
	
l2423:	
	line	633
;main.c: 633: {TRISB5=1;TRISA7=1;TRISB4=1;};
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	bsf	(1071/8)^080h,(1071)&7	;volatile
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	634
	
l9782:	
;main.c: 634: led_scan_delay=10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_led_scan_delay)
	line	635
;main.c: 635: while(led_scan_delay)
	goto	l9786
	line	637
	
l9784:	
;main.c: 636: {
;main.c: 637: led_scan_delay--;
	decf	(_led_scan_delay),f
	line	635
	
l9786:	
	movf	((_led_scan_delay)),w
	btfss	status,2
	goto	u4641
	goto	u4640
u4641:
	goto	l9784
u4640:
	
l2431:	
	line	639
;main.c: 638: }
;main.c: 639: {RB5=0;RA7=0;RB4=0;};
	bcf	(53/8),(53)&7	;volatile
	bcf	(47/8),(47)&7	;volatile
	bcf	(52/8),(52)&7	;volatile
	line	640
	
l9788:	
;main.c: 640: if(led_mod1_flg)
	movf	((_led_mod1_flg)),w
	btfsc	status,2
	goto	u4651
	goto	u4650
u4651:
	goto	l9792
u4650:
	line	642
	
l9790:	
;main.c: 641: {
;main.c: 642: {TRISB5=0;RB5=1;TRISA7=0;RA7=0;};
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1071/8)^080h,(1071)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(47/8),(47)&7	;volatile
	line	643
;main.c: 643: }
	goto	l2440
	line	644
	
l9792:	
;main.c: 644: else if(led_mod2_flg)
	movf	((_led_mod2_flg)),w
	btfsc	status,2
	goto	u4661
	goto	u4660
u4661:
	goto	l9796
u4660:
	line	646
	
l9794:	
;main.c: 645: {
;main.c: 646: {TRISA7=0;RA7=1;TRISB5=0;RB5=0;};
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1071/8)^080h,(1071)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bsf	(47/8),(47)&7	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	647
;main.c: 647: }
	goto	l2440
	line	648
	
l9796:	
;main.c: 648: else if(led_mod3_flg)
	movf	((_led_mod3_flg)),w
	btfsc	status,2
	goto	u4671
	goto	u4670
u4671:
	goto	l9800
u4670:
	line	650
	
l9798:	
;main.c: 649: {
;main.c: 650: {TRISB5=0;RB5=1;TRISB4=0;RB4=0;};
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	651
;main.c: 651: }
	goto	l2440
	line	652
	
l9800:	
;main.c: 652: else if(led_mod4_flg)
	movf	((_led_mod4_flg)),w
	btfsc	status,2
	goto	u4681
	goto	u4680
u4681:
	goto	l2435
u4680:
	line	654
	
l9802:	
;main.c: 653: {
;main.c: 654: {TRISB4=0;RB4=1;TRISB5=0;RB5=0;};
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	655
;main.c: 655: }
	goto	l2440
	line	659
	
l2435:	
	line	660
	
l2440:	
	return
	opt stack 0
GLOBAL	__end_of_led_handle
	__end_of_led_handle:
	signat	_led_handle,89
	global	_fog_handle

;; *************** function _fog_handle *****************
;; Defined at:
;;		line 302 in file "C:\mcuproject\scm\xfx\香薰机\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	302
global __ptext6
__ptext6:	;psect for function _fog_handle
psect	text6
	file	"C:\mcuproject\scm\xfx\香薰机\main.c"
	line	302
	global	__size_of_fog_handle
	__size_of_fog_handle	equ	__end_of_fog_handle-_fog_handle
	
_fog_handle:	
;incstack = 0
	opt	stack 5
; Regs used in _fog_handle: [wreg+status,2+status,0]
	line	304
	
l9510:	
;main.c: 304: if(!work_mod)
	movf	((_work_mod)),w
	btfss	status,2
	goto	u4271
	goto	u4270
u4271:
	goto	l9514
u4270:
	line	306
	
l9512:	
;main.c: 305: {
;main.c: 306: fog_mod=0;
	clrf	(_fog_mod)
	line	307
;main.c: 307: fog_drive_mod=0;
	clrf	(_fog_drive_mod)
	line	308
;main.c: 308: }
	goto	l2343
	line	311
	
l9514:	
;main.c: 309: else
;main.c: 310: {
;main.c: 311: if(!fog_mod)
	movf	((_fog_mod)),w
	btfss	status,2
	goto	u4281
	goto	u4280
u4281:
	goto	l9518
u4280:
	line	313
	
l9516:	
;main.c: 312: {
;main.c: 313: fog_drive_mod=1;
	clrf	(_fog_drive_mod)
	incf	(_fog_drive_mod),f
	line	314
;main.c: 314: }
	goto	l2343
	line	317
	
l9518:	
;main.c: 315: else
;main.c: 316: {
;main.c: 317: fog_drive_mod=2;
	movlw	low(02h)
	movwf	(_fog_drive_mod)
	line	320
	
l2343:	
	return
	opt stack 0
GLOBAL	__end_of_fog_handle
	__end_of_fog_handle:
	signat	_fog_handle,89
	global	_fog_erro_scan

;; *************** function _fog_erro_scan *****************
;; Defined at:
;;		line 667 in file "C:\mcuproject\scm\xfx\香薰机\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Test_Pwm
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	667
global __ptext7
__ptext7:	;psect for function _fog_erro_scan
psect	text7
	file	"C:\mcuproject\scm\xfx\香薰机\main.c"
	line	667
	global	__size_of_fog_erro_scan
	__size_of_fog_erro_scan	equ	__end_of_fog_erro_scan-_fog_erro_scan
	
_fog_erro_scan:	
;incstack = 0
	opt	stack 1
; Regs used in _fog_erro_scan: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	669
	
l9382:	
;main.c: 669: if(!work_mod)
	movf	((_work_mod)),w
	btfss	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l9386
u4000:
	line	671
	
l9384:	
;main.c: 670: {
;main.c: 671: fog_status_buff=0;
	clrf	(_fog_status_buff)
	line	672
;main.c: 673: fog_erro_cnt=0;
	clrf	(_fog_erro_flg)
	line	674
;main.c: 674: }
	goto	l2447
	line	677
	
l9386:	
;main.c: 675: else
;main.c: 676: {
;main.c: 677: fog_status_buff=0;
	clrf	(_fog_status_buff)
	line	678
	
l9388:	
;main.c: 678: fog_status_buff = Test_Pwm();
	fcall	_Test_Pwm
	movwf	(_fog_status_buff)
	line	680
	
l9390:	
;main.c: 680: if(fog_status_buff == 0x55)
		movlw	85
	xorwf	((_fog_status_buff)),w
	btfss	status,2
	goto	u4011
	goto	u4010
u4011:
	goto	l9394
u4010:
	line	682
	
l9392:	
;main.c: 681: {
;main.c: 682: fog_erro_flg=1;
	clrf	(_fog_erro_flg)
	incf	(_fog_erro_flg),f
	line	684
	
l9394:	
;main.c: 683: }
;main.c: 684: if(fog_status_buff == 0xff)
		incf	((_fog_status_buff)),w
	btfss	status,2
	goto	u4021
	goto	u4020
u4021:
	goto	l2447
u4020:
	line	686
	
l9396:	
;main.c: 685: {
;main.c: 686: fog_erro_flg=1;
	clrf	(_fog_erro_flg)
	incf	(_fog_erro_flg),f
	line	689
	
l2447:	
	return
	opt stack 0
GLOBAL	__end_of_fog_erro_scan
	__end_of_fog_erro_scan:
	signat	_fog_erro_scan,89
	global	_Test_Pwm

;; *************** function _Test_Pwm *****************
;; Defined at:
;;		line 736 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  templ           1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Get_CUR_Dat
;;		_PFG_read_fst
;;		_Test_PWM_Fst
;;		_Test_Pwm_Cur
;;		_Test_water
;;		_Work_RAM_CLR
;;		_YTPFG_Flash
;; This function is called by:
;;		_fog_erro_scan
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	736
global __ptext8
__ptext8:	;psect for function _Test_Pwm
psect	text8
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	736
	global	__size_of_Test_Pwm
	__size_of_Test_Pwm	equ	__end_of_Test_Pwm-_Test_Pwm
	
_Test_Pwm:	
;incstack = 0
	opt	stack 1
; Regs used in _Test_Pwm: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	743
	
l9192:	
;WHQ_TP_ZPGS_V1.2.c: 743: if(0 == pfgonetemp.pfgtemp)
	movf	((_pfgonetemp)),w
iorwf	((_pfgonetemp+1)),w
	btfss	status,2
	goto	u3871
	goto	u3870
u3871:
	goto	l5779
u3870:
	line	745
	
l9194:	
;WHQ_TP_ZPGS_V1.2.c: 744: {
;WHQ_TP_ZPGS_V1.2.c: 745: PFG_read_fst();
	fcall	_PFG_read_fst
	line	746
;WHQ_TP_ZPGS_V1.2.c: 746: }
	goto	l9264
	line	748
	
l5779:	
	line	750
;WHQ_TP_ZPGS_V1.2.c: 748: else
;WHQ_TP_ZPGS_V1.2.c: 749: {
;WHQ_TP_ZPGS_V1.2.c: 750: if(!on_off)
	btfsc	(_on_off/8),(_on_off)&7	;volatile
	goto	u3881
	goto	u3880
u3881:
	goto	l5781
u3880:
	line	752
	
l9196:	
;WHQ_TP_ZPGS_V1.2.c: 751: {
;WHQ_TP_ZPGS_V1.2.c: 752: Work_RAM_CLR();
	fcall	_Work_RAM_CLR
	line	753
	
l9198:	
;WHQ_TP_ZPGS_V1.2.c: 753: ondly = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Test_Pwm@ondly)
	line	754
;WHQ_TP_ZPGS_V1.2.c: 754: }
	goto	l9264
	line	756
	
l5781:	
	line	758
;WHQ_TP_ZPGS_V1.2.c: 756: else
;WHQ_TP_ZPGS_V1.2.c: 757: {
;WHQ_TP_ZPGS_V1.2.c: 758: if(!onoff_fst)
	btfsc	(_onoff_fst/8),(_onoff_fst)&7	;volatile
	goto	u3891
	goto	u3890
u3891:
	goto	l5783
u3890:
	line	760
	
l9200:	
;WHQ_TP_ZPGS_V1.2.c: 759: {
;WHQ_TP_ZPGS_V1.2.c: 760: if(++ondly >= 20)
	movlw	low(014h)
	incf	(Test_Pwm@ondly),f
	subwf	((Test_Pwm@ondly)),w
	skipc
	goto	u3901
	goto	u3900
u3901:
	goto	l5785
u3900:
	line	762
	
l9202:	
;WHQ_TP_ZPGS_V1.2.c: 761: {
;WHQ_TP_ZPGS_V1.2.c: 762: ondly = 0;
	clrf	(Test_Pwm@ondly)
	line	763
	
l9204:	
;WHQ_TP_ZPGS_V1.2.c: 763: onoff_fst = 1;
	bsf	(_onoff_fst/8),(_onoff_fst)&7	;volatile
	line	764
	
l9206:	
;WHQ_TP_ZPGS_V1.2.c: 764: curokf = 0;
	bcf	(_curokf/8),(_curokf)&7	;volatile
	line	765
	
l9208:	
;WHQ_TP_ZPGS_V1.2.c: 765: curokf1 = 0;
	bcf	(Test_Pwm@curokf1/8),(Test_Pwm@curokf1)&7
	goto	l5785
	line	769
	
l5783:	
	line	771
;WHQ_TP_ZPGS_V1.2.c: 769: else
;WHQ_TP_ZPGS_V1.2.c: 770: {
;WHQ_TP_ZPGS_V1.2.c: 771: if(curokf)
	btfss	(_curokf/8),(_curokf)&7	;volatile
	goto	u3911
	goto	u3910
u3911:
	goto	l5785
u3910:
	line	773
	
l9210:	
;WHQ_TP_ZPGS_V1.2.c: 772: {
;WHQ_TP_ZPGS_V1.2.c: 773: curokf = 0;
	bcf	(_curokf/8),(_curokf)&7	;volatile
	line	774
	
l9212:	
;WHQ_TP_ZPGS_V1.2.c: 774: Get_CUR_Dat();
	fcall	_Get_CUR_Dat
	line	775
	
l9214:	
;WHQ_TP_ZPGS_V1.2.c: 775: curokf1 = 1;
	bsf	(Test_Pwm@curokf1/8),(Test_Pwm@curokf1)&7
	line	778
	
l9216:	
;WHQ_TP_ZPGS_V1.2.c: 777: {
;WHQ_TP_ZPGS_V1.2.c: 778: templ = Test_water();
	fcall	_Test_water
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Test_Pwm@templ)
	line	779
	
l9218:	
;WHQ_TP_ZPGS_V1.2.c: 779: if(0 != templ)
	movf	((Test_Pwm@templ)),w
	btfsc	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l5785
u3920:
	line	781
	
l9220:	
;WHQ_TP_ZPGS_V1.2.c: 780: {
;WHQ_TP_ZPGS_V1.2.c: 781: return templ;
	movf	(Test_Pwm@templ),w
	goto	l5789
	line	785
	
l5785:	
	line	787
;WHQ_TP_ZPGS_V1.2.c: 782: }
;WHQ_TP_ZPGS_V1.2.c: 783: }
;WHQ_TP_ZPGS_V1.2.c: 784: }
;WHQ_TP_ZPGS_V1.2.c: 785: }
;WHQ_TP_ZPGS_V1.2.c: 787: if(curokf1)
	btfss	(Test_Pwm@curokf1/8),(Test_Pwm@curokf1)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l9264
u3930:
	line	789
	
l9224:	
;WHQ_TP_ZPGS_V1.2.c: 790: if(pwmtf)
	bcf	(Test_Pwm@curokf1/8),(Test_Pwm@curokf1)&7
	line	797
	
l9230:	
;WHQ_TP_ZPGS_V1.2.c: 795: }
;WHQ_TP_ZPGS_V1.2.c: 796: }
;WHQ_TP_ZPGS_V1.2.c: 797: if((!pwmtf) || (!pwmtf1))
	btfss	(_pwmtf/8),(_pwmtf)&7	;volatile
	goto	u3941
	goto	u3940
u3941:
	goto	l9234
u3940:
	
l9232:	
	btfsc	(_pwmtf1/8),(_pwmtf1)&7	;volatile
	goto	u3951
	goto	u3950
u3951:
	goto	l5793
u3950:
	line	799
	
l9234:	
;WHQ_TP_ZPGS_V1.2.c: 798: {
;WHQ_TP_ZPGS_V1.2.c: 799: templ = Test_PWM_Fst();
	fcall	_Test_PWM_Fst
	movwf	(Test_Pwm@templ)
	goto	l9220
	line	802
	
l5793:	
	line	804
;WHQ_TP_ZPGS_V1.2.c: 802: else
;WHQ_TP_ZPGS_V1.2.c: 803: {
;WHQ_TP_ZPGS_V1.2.c: 804: if(!ponecf)
	btfsc	(_ponecf/8),(_ponecf)&7	;volatile
	goto	u3961
	goto	u3960
u3961:
	goto	l9252
u3960:
	line	806
	
l9242:	
;WHQ_TP_ZPGS_V1.2.c: 805: {
;WHQ_TP_ZPGS_V1.2.c: 806: if(++ponesec >= 125)
	movlw	low(07Dh)
	incf	(_ponesec),f	;volatile
	subwf	((_ponesec)),w	;volatile
	skipc
	goto	u3971
	goto	u3970
u3971:
	goto	l5790
u3970:
	line	808
	
l9244:	
;WHQ_TP_ZPGS_V1.2.c: 807: {
;WHQ_TP_ZPGS_V1.2.c: 808: ponesec = 0;
	clrf	(_ponesec)	;volatile
	line	809
;WHQ_TP_ZPGS_V1.2.c: 809: ondly = 0;
	clrf	(Test_Pwm@ondly)
	line	810
	
l9246:	
;WHQ_TP_ZPGS_V1.2.c: 810: ponecf = 1;
	bsf	(_ponecf/8),(_ponecf)&7	;volatile
	line	811
	
l9248:	
;WHQ_TP_ZPGS_V1.2.c: 811: pfgonetemp.pfgtemp = (pfgonetemp.pfgtemp & 0xfc00) + (pwmnold & 0x03ff);
	movlw	0FFh
	andwf	(_pwmnold),w	;volatile
	movwf	(??_Test_Pwm+0)+0
	movlw	03h
	andwf	(_pwmnold+1),w	;volatile
	movwf	1+(??_Test_Pwm+0)+0
	movlw	0
	andwf	(_pfgonetemp),w
	movwf	(??_Test_Pwm+2)+0
	movlw	0FCh
	andwf	(_pfgonetemp+1),w
	movwf	1+(??_Test_Pwm+2)+0
	movf	0+(??_Test_Pwm+0)+0,w
	addwf	0+(??_Test_Pwm+2)+0,w
	movwf	(_pfgonetemp)
	movf	1+(??_Test_Pwm+0)+0,w
	skipnc
	incf	1+(??_Test_Pwm+0)+0,w
	addwf	1+(??_Test_Pwm+2)+0,w
	movwf	1+(_pfgonetemp)
	line	812
	
l9250:	
;WHQ_TP_ZPGS_V1.2.c: 812: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	goto	l9264
	line	817
	
l9252:	
;WHQ_TP_ZPGS_V1.2.c: 815: else
;WHQ_TP_ZPGS_V1.2.c: 816: {
;WHQ_TP_ZPGS_V1.2.c: 817: if(++ondly >= 4)
	movlw	low(04h)
	incf	(Test_Pwm@ondly),f
	subwf	((Test_Pwm@ondly)),w
	skipc
	goto	u3981
	goto	u3980
u3981:
	goto	l5790
u3980:
	line	819
	
l9254:	
;WHQ_TP_ZPGS_V1.2.c: 818: {
;WHQ_TP_ZPGS_V1.2.c: 819: ondly = 0;
	clrf	(Test_Pwm@ondly)
	line	820
	
l9256:	
;WHQ_TP_ZPGS_V1.2.c: 820: Test_Pwm_Cur();
	fcall	_Test_Pwm_Cur
	line	821
	
l9258:	
;WHQ_TP_ZPGS_V1.2.c: 821: pwmnold = pfgonetemp.pfgtemp & 0x7fff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmnold+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmnold)	;volatile
	
l9260:	
	bcf	(_pwmnold)+(15/8),(15)&7	;volatile
	line	822
	
l9262:	
;WHQ_TP_ZPGS_V1.2.c: 822: ponecf = 0;
	bcf	(_ponecf/8),(_ponecf)&7	;volatile
	goto	l9264
	line	826
	
l5790:	
	line	829
	
l9264:	
;WHQ_TP_ZPGS_V1.2.c: 823: }
;WHQ_TP_ZPGS_V1.2.c: 824: }
;WHQ_TP_ZPGS_V1.2.c: 825: }
;WHQ_TP_ZPGS_V1.2.c: 826: }
;WHQ_TP_ZPGS_V1.2.c: 827: }
;WHQ_TP_ZPGS_V1.2.c: 828: }
;WHQ_TP_ZPGS_V1.2.c: 829: return 0;
	movlw	low(0)
	line	830
	
l5789:	
	return
	opt stack 0
GLOBAL	__end_of_Test_Pwm
	__end_of_Test_Pwm:
	signat	_Test_Pwm,89
	global	_Work_RAM_CLR

;; *************** function _Work_RAM_CLR *****************
;; Defined at:
;;		line 416 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Test_Pwm
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	line	416
global __ptext9
__ptext9:	;psect for function _Work_RAM_CLR
psect	text9
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	416
	global	__size_of_Work_RAM_CLR
	__size_of_Work_RAM_CLR	equ	__end_of_Work_RAM_CLR-_Work_RAM_CLR
	
_Work_RAM_CLR:	
;incstack = 0
	opt	stack 3
; Regs used in _Work_RAM_CLR: [wreg+status,2+status,0]
	line	418
	
l8900:	
	line	435
	
l5693:	
	line	437
;WHQ_TP_ZPGS_V1.2.c: 435: else
;WHQ_TP_ZPGS_V1.2.c: 436: {
;WHQ_TP_ZPGS_V1.2.c: 437: pwmtf = 0;
	bcf	(_pwmtf/8),(_pwmtf)&7	;volatile
	line	438
;WHQ_TP_ZPGS_V1.2.c: 438: pwmtf1 = 0;
	bcf	(_pwmtf1/8),(_pwmtf1)&7	;volatile
	line	439
;WHQ_TP_ZPGS_V1.2.c: 439: pwmtonf = 0;
	bcf	(_pwmtonf/8),(_pwmtonf)&7	;volatile
	line	440
	
l8928:	
;WHQ_TP_ZPGS_V1.2.c: 440: pfgonetemp.pfgtemp = (pfgonetemp.pfgtemp & 0x8000) + pwmfst;
	movlw	0
	andwf	(_pfgonetemp),w
	movwf	(??_Work_RAM_CLR+0)+0
	movlw	080h
	andwf	(_pfgonetemp+1),w
	movwf	1+(??_Work_RAM_CLR+0)+0
	movf	(_pwmfst),w	;volatile
	addwf	0+(??_Work_RAM_CLR+0)+0,w
	movwf	(_pfgonetemp)
	movf	(_pwmfst+1),w	;volatile
	skipnc
	incf	(_pwmfst+1),w	;volatile
	addwf	1+(??_Work_RAM_CLR+0)+0,w
	movwf	1+(_pfgonetemp)
	line	441
	
l8930:	
;WHQ_TP_ZPGS_V1.2.c: 441: pwmnold = pfgonetemp.pfgtemp & 0x7fff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmnold+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmnold)	;volatile
	
l8932:	
	bcf	(_pwmnold)+(15/8),(15)&7	;volatile
	line	442
	
l8934:	
;WHQ_TP_ZPGS_V1.2.c: 442: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	443
	
l8936:	
;WHQ_TP_ZPGS_V1.2.c: 443: ponecf = 0;
	bcf	(_ponecf/8),(_ponecf)&7	;volatile
	line	444
	
l8938:	
;WHQ_TP_ZPGS_V1.2.c: 444: cur_addatold0 = 0;
	clrf	(_cur_addatold0)	;volatile
	line	445
	
l8940:	
;WHQ_TP_ZPGS_V1.2.c: 445: cur_addatold1 = 0;
	clrf	(_cur_addatold1)	;volatile
	line	446
	
l8942:	
;WHQ_TP_ZPGS_V1.2.c: 446: cur_addatold2 = 0;
	clrf	(_cur_addatold2)	;volatile
	line	447
	
l8944:	
;WHQ_TP_ZPGS_V1.2.c: 447: curokcl = 0;
	clrf	(_curokcl)	;volatile
	line	448
	
l8946:	
;WHQ_TP_ZPGS_V1.2.c: 448: onoff_fst = 0;
	bcf	(_onoff_fst/8),(_onoff_fst)&7	;volatile
	line	449
	
l8948:	
;WHQ_TP_ZPGS_V1.2.c: 449: whavecl = 0;
	clrf	(_whavecl)	;volatile
	line	450
	
l8950:	
;WHQ_TP_ZPGS_V1.2.c: 450: wnoncl = 0;
	clrf	(_wnoncl)	;volatile
	line	451
	
l8952:	
;WHQ_TP_ZPGS_V1.2.c: 451: ponesec = 0;
	clrf	(_ponesec)	;volatile
	line	452
	
l8954:	
;WHQ_TP_ZPGS_V1.2.c: 452: curupc = 0;
	clrf	(_curupc)	;volatile
	line	453
	
l8956:	
;WHQ_TP_ZPGS_V1.2.c: 453: curdownc = 0;
	clrf	(_curdownc)	;volatile
	line	454
	
l8958:	
;WHQ_TP_ZPGS_V1.2.c: 454: curupf = 0;
	bcf	(_curupf/8),(_curupf)&7	;volatile
	line	455
	
l8960:	
;WHQ_TP_ZPGS_V1.2.c: 455: pwmlv = 0;
	clrf	(_pwmlv)	;volatile
	clrf	(_pwmlv+1)	;volatile
	line	456
	
l8962:	
;WHQ_TP_ZPGS_V1.2.c: 456: pwmold = 0;
	clrf	(_pwmold)	;volatile
	clrf	(_pwmold+1)	;volatile
	line	457
	
l8964:	
;WHQ_TP_ZPGS_V1.2.c: 457: pwmhc = 0;
	clrf	(_pwmhc)	;volatile
	line	458
	
l8966:	
;WHQ_TP_ZPGS_V1.2.c: 458: pwmlc = 0;
	clrf	(_pwmlc)	;volatile
	line	459
	
l8968:	
;WHQ_TP_ZPGS_V1.2.c: 459: PFGCON1 &= ~0x80;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(286)^0100h+(7/8),(7)&7	;volatile
	line	461
	
l5695:	
	return
	opt stack 0
GLOBAL	__end_of_Work_RAM_CLR
	__end_of_Work_RAM_CLR:
	signat	_Work_RAM_CLR,89
	global	_Test_water

;; *************** function _Test_water *****************
;; Defined at:
;;		line 548 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2    4[BANK0 ] unsigned int 
;;  temph           1    3[BANK0 ] unsigned char 
;;  templ           1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Test_Pwm
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	line	548
global __ptext10
__ptext10:	;psect for function _Test_water
psect	text10
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	548
	global	__size_of_Test_water
	__size_of_Test_water	equ	__end_of_Test_water-_Test_water
	
_Test_water:	
;incstack = 0
	opt	stack 3
; Regs used in _Test_water: [wreg+status,2+status,0+btemp+1]
	line	557
	
l9026:	
;WHQ_TP_ZPGS_V1.2.c: 550: unsigned char templ,temph;
;WHQ_TP_ZPGS_V1.2.c: 551: unsigned int temp;
;WHQ_TP_ZPGS_V1.2.c: 552: static unsigned int curstrold;
;WHQ_TP_ZPGS_V1.2.c: 553: static unsigned int strupc;
;WHQ_TP_ZPGS_V1.2.c: 554: static unsigned int ytdly;
;WHQ_TP_ZPGS_V1.2.c: 555: static bit watnof = 0;
;WHQ_TP_ZPGS_V1.2.c: 557: watnof=0;
	bcf	(Test_water@watnof/8),(Test_water@watnof)&7
	line	559
;WHQ_TP_ZPGS_V1.2.c: 559: if(!pwmtf)
	btfsc	(_pwmtf/8),(_pwmtf)&7	;volatile
	goto	u3531
	goto	u3530
u3531:
	goto	l5728
u3530:
	line	561
	
l9028:	
;WHQ_TP_ZPGS_V1.2.c: 560: {
;WHQ_TP_ZPGS_V1.2.c: 561: if(pwmtonf)
	btfss	(_pwmtonf/8),(_pwmtonf)&7	;volatile
	goto	u3541
	goto	u3540
u3541:
	goto	l9048
u3540:
	line	563
	
l9030:	
;WHQ_TP_ZPGS_V1.2.c: 562: {
;WHQ_TP_ZPGS_V1.2.c: 563: if((pfgonetemp.pfgtemp & 0x03ff) > pwmlv)
	movlw	0FFh
	andwf	(_pfgonetemp),w
	movwf	(??_Test_water+0)+0
	movlw	03h
	andwf	(_pfgonetemp+1),w
	movwf	1+(??_Test_water+0)+0
	movf	1+(??_Test_water+0)+0,w
	subwf	(_pwmlv+1),w	;volatile
	skipz
	goto	u3555
	movf	0+(??_Test_water+0)+0,w
	subwf	(_pwmlv),w	;volatile
u3555:
	skipnc
	goto	u3551
	goto	u3550
u3551:
	goto	l5730
u3550:
	line	565
	
l9032:	
;WHQ_TP_ZPGS_V1.2.c: 564: {
;WHQ_TP_ZPGS_V1.2.c: 565: temp = (pfgonetemp.pfgtemp&0x03ff) - pwmlv;
	movf	(_pfgonetemp+1),w
	movwf	(Test_water@temp+1)
	movf	(_pfgonetemp),w
	movwf	(Test_water@temp)
	movlw	0FFh
	andwf	(Test_water@temp),f
	movlw	03h
	andwf	(Test_water@temp+1),f
;WHQ_TP_ZPGS_V1.2.c: 566: xldisp = temp;
	movf	(_pwmlv),w	;volatile
	subwf	(Test_water@temp),f
	movf	(_pwmlv+1),w	;volatile
	skipc
	decf	(Test_water@temp+1),f
	subwf	(Test_water@temp+1),f
	line	567
	movlw	0
	subwf	(Test_water@temp+1),w
	movlw	0Bh
	skipnz
	subwf	(Test_water@temp),w
	skipnc
	goto	u3561
	goto	u3560
u3561:
	goto	l5730
u3560:
	line	569
	
l9034:	
;WHQ_TP_ZPGS_V1.2.c: 568: {
;WHQ_TP_ZPGS_V1.2.c: 569: return 0xff;
	movlw	low(0FFh)
	goto	l5732
	line	571
	
l5730:	
	line	572
;WHQ_TP_ZPGS_V1.2.c: 570: }
;WHQ_TP_ZPGS_V1.2.c: 571: }
;WHQ_TP_ZPGS_V1.2.c: 572: if(!curupf)
	btfsc	(_curupf/8),(_curupf)&7	;volatile
	goto	u3571
	goto	u3570
u3571:
	goto	l9044
u3570:
	goto	l9034
	line	578
	
l9044:	
	movf	(_cur_addat),w	;volatile
	addlw	low(05h)
	movwf	(??_Test_water+0)+0
	movlw	high(05h)
	skipnc
	movlw	(high(05h)+1)&0ffh
	movwf	((??_Test_water+0)+0)+1
	movf	1+(??_Test_water+0)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3585
	movlw	01Bh
	subwf	0+(??_Test_water+0)+0,w
u3585:

	skipnc
	goto	u3581
	goto	u3580
u3581:
	goto	l5752
u3580:
	line	580
	
l9046:	
;WHQ_TP_ZPGS_V1.2.c: 579: {
;WHQ_TP_ZPGS_V1.2.c: 580: watnof=1;
	bsf	(Test_water@watnof/8),(Test_water@watnof)&7
	goto	l5752
	line	586
	
l9048:	
	movlw	low(0Eh)
	subwf	(_cur_addat),w	;volatile
	skipnc
	goto	u3591
	goto	u3590
u3591:
	goto	l9056
u3590:
	line	588
	
l9050:	
;WHQ_TP_ZPGS_V1.2.c: 587: {
;WHQ_TP_ZPGS_V1.2.c: 588: strupc = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Test_water@strupc)^080h
	clrf	(Test_water@strupc+1)^080h
	line	589
	
l9052:	
;WHQ_TP_ZPGS_V1.2.c: 589: pwmlv = pfgonetemp.pfgtemp&0x03ff;
	movf	(_pfgonetemp+1),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_pwmlv+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmlv)	;volatile
	
l9054:	
	movlw	0FFh
	andwf	(_pwmlv),f	;volatile
	movlw	03h
	andwf	(_pwmlv+1),f	;volatile
	line	590
;WHQ_TP_ZPGS_V1.2.c: 590: }
	goto	l5738
	line	593
	
l9056:	
;WHQ_TP_ZPGS_V1.2.c: 591: else
;WHQ_TP_ZPGS_V1.2.c: 592: {
;WHQ_TP_ZPGS_V1.2.c: 593: if(++strupc >= 500)
	bsf	status, 5	;RP0=1, select bank1
	incf	(Test_water@strupc)^080h,f
	skipnz
	incf	(Test_water@strupc+1)^080h,f
	movlw	01h
	subwf	((Test_water@strupc+1)^080h),w
	movlw	0F4h
	skipnz
	subwf	((Test_water@strupc)^080h),w
	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l5738
u3600:
	line	595
	
l9058:	
;WHQ_TP_ZPGS_V1.2.c: 594: {
;WHQ_TP_ZPGS_V1.2.c: 595: strupc=0;
	clrf	(Test_water@strupc)^080h
	clrf	(Test_water@strupc+1)^080h
	goto	l9034
	line	598
	
l5738:	
	line	599
;WHQ_TP_ZPGS_V1.2.c: 597: }
;WHQ_TP_ZPGS_V1.2.c: 598: }
;WHQ_TP_ZPGS_V1.2.c: 599: if(curupf)
	btfss	(_curupf/8),(_curupf)&7	;volatile
	goto	u3611
	goto	u3610
u3611:
	goto	l9072
u3610:
	line	601
	
l9064:	
;WHQ_TP_ZPGS_V1.2.c: 600: {
;WHQ_TP_ZPGS_V1.2.c: 601: curstrold = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(Test_water@curstrold)
	clrf	(Test_water@curstrold+1)
	line	602
	
l9066:	
;WHQ_TP_ZPGS_V1.2.c: 602: if(curmax < cur_addat)
	movf	(_cur_addat),w	;volatile
	subwf	(_curmax),w	;volatile
	skipnc
	goto	u3621
	goto	u3620
u3621:
	goto	l5742
u3620:
	line	604
	
l9068:	
;WHQ_TP_ZPGS_V1.2.c: 603: {
;WHQ_TP_ZPGS_V1.2.c: 604: curmax = cur_addat;
	movf	(_cur_addat),w	;volatile
	movwf	(_curmax)	;volatile
	line	605
;WHQ_TP_ZPGS_V1.2.c: 605: }
	goto	l5752
	line	610
	
l5742:	
;WHQ_TP_ZPGS_V1.2.c: 609: }
;WHQ_TP_ZPGS_V1.2.c: 610: }
	goto	l5752
	line	613
	
l9072:	
;WHQ_TP_ZPGS_V1.2.c: 611: else
;WHQ_TP_ZPGS_V1.2.c: 612: {
;WHQ_TP_ZPGS_V1.2.c: 613: curmax = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_curmax)	;volatile
	line	614
	
l9074:	
;WHQ_TP_ZPGS_V1.2.c: 614: if(0 != curstrold)
	movf	((Test_water@curstrold)),w
iorwf	((Test_water@curstrold+1)),w
	btfsc	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l5745
u3630:
	line	616
	
l9076:	
;WHQ_TP_ZPGS_V1.2.c: 615: {
;WHQ_TP_ZPGS_V1.2.c: 616: if(curstrold > cur_addat)
	movf	(_cur_addat),w	;volatile
	movwf	(??_Test_water+0)+0
	clrf	(??_Test_water+0)+0+1
	movf	(Test_water@curstrold+1),w
	subwf	1+(??_Test_water+0)+0,w
	skipz
	goto	u3645
	movf	(Test_water@curstrold),w
	subwf	0+(??_Test_water+0)+0,w
u3645:
	skipnc
	goto	u3641
	goto	u3640
u3641:
	goto	l9088
u3640:
	line	618
	
l9078:	
;WHQ_TP_ZPGS_V1.2.c: 617: {
;WHQ_TP_ZPGS_V1.2.c: 618: curdownc++;
	incf	(_curdownc),f	;volatile
	line	619
	
l9080:	
;WHQ_TP_ZPGS_V1.2.c: 619: if(curdownc >= 2)
	movlw	low(02h)
	subwf	(_curdownc),w	;volatile
	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l5745
u3650:
	line	621
	
l9082:	
;WHQ_TP_ZPGS_V1.2.c: 620: {
;WHQ_TP_ZPGS_V1.2.c: 621: curdownc = 0;
	clrf	(_curdownc)	;volatile
	line	622
;WHQ_TP_ZPGS_V1.2.c: 622: curupc = 0;
	clrf	(_curupc)	;volatile
	line	623
	
l9084:	
;WHQ_TP_ZPGS_V1.2.c: 623: pwmlv = pfgonetemp.pfgtemp&0x03ff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmlv+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmlv)	;volatile
	
l9086:	
	movlw	0FFh
	andwf	(_pwmlv),f	;volatile
	movlw	03h
	andwf	(_pwmlv+1),f	;volatile
	goto	l5745
	line	626
	
l9088:	
;WHQ_TP_ZPGS_V1.2.c: 626: else if(curstrold < cur_addat)
	movf	(_cur_addat),w	;volatile
	movwf	(??_Test_water+0)+0
	clrf	(??_Test_water+0)+0+1
	movf	1+(??_Test_water+0)+0,w
	subwf	(Test_water@curstrold+1),w
	skipz
	goto	u3665
	movf	0+(??_Test_water+0)+0,w
	subwf	(Test_water@curstrold),w
u3665:
	skipnc
	goto	u3661
	goto	u3660
u3661:
	goto	l5745
u3660:
	line	628
	
l9090:	
;WHQ_TP_ZPGS_V1.2.c: 627: {
;WHQ_TP_ZPGS_V1.2.c: 628: curupc++;
	incf	(_curupc),f	;volatile
	line	629
	
l9092:	
;WHQ_TP_ZPGS_V1.2.c: 629: if(curupc >= 3)
	movlw	low(03h)
	subwf	(_curupc),w	;volatile
	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l5745
u3670:
	line	631
	
l9094:	
;WHQ_TP_ZPGS_V1.2.c: 630: {
;WHQ_TP_ZPGS_V1.2.c: 631: curupc = 0;
	clrf	(_curupc)	;volatile
	line	632
;WHQ_TP_ZPGS_V1.2.c: 632: curdownc = 0;
	clrf	(_curdownc)	;volatile
	line	633
	
l9096:	
;WHQ_TP_ZPGS_V1.2.c: 633: if(0 == curupf)
	btfsc	(_curupf/8),(_curupf)&7	;volatile
	goto	u3681
	goto	u3680
u3681:
	goto	l9100
u3680:
	line	635
	
l9098:	
;WHQ_TP_ZPGS_V1.2.c: 634: {
;WHQ_TP_ZPGS_V1.2.c: 635: pwmlv = pfgonetemp.pfgtemp&0x03ff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmlv+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmlv)	;volatile
	movlw	0FFh
	andwf	(_pwmlv),f	;volatile
	movlw	03h
	andwf	(_pwmlv+1),f	;volatile
	line	637
	
l9100:	
;WHQ_TP_ZPGS_V1.2.c: 636: }
;WHQ_TP_ZPGS_V1.2.c: 637: curupf = 1;
	bsf	(_curupf/8),(_curupf)&7	;volatile
	line	640
	
l5745:	
	line	641
;WHQ_TP_ZPGS_V1.2.c: 638: }
;WHQ_TP_ZPGS_V1.2.c: 639: }
;WHQ_TP_ZPGS_V1.2.c: 640: }
;WHQ_TP_ZPGS_V1.2.c: 641: curstrold = cur_addat;
	movf	(_cur_addat),w	;volatile
	movwf	(Test_water@curstrold)
	clrf	(Test_water@curstrold+1)
	goto	l5752
	line	646
	
l5728:	
	line	648
;WHQ_TP_ZPGS_V1.2.c: 646: else
;WHQ_TP_ZPGS_V1.2.c: 647: {
;WHQ_TP_ZPGS_V1.2.c: 648: if(!pwmtf1)
	btfsc	(_pwmtf1/8),(_pwmtf1)&7	;volatile
	goto	u3691
	goto	u3690
u3691:
	goto	l9110
u3690:
	line	650
	
l9102:	
;WHQ_TP_ZPGS_V1.2.c: 649: {
;WHQ_TP_ZPGS_V1.2.c: 650: if(++Ytzpcl >= 125)
	movlw	low(07Dh)
	incf	(_Ytzpcl),f	;volatile
	subwf	((_Ytzpcl)),w	;volatile
	skipc
	goto	u3701
	goto	u3700
u3701:
	goto	l5752
u3700:
	line	652
	
l9104:	
;WHQ_TP_ZPGS_V1.2.c: 651: {
;WHQ_TP_ZPGS_V1.2.c: 652: Ytzpcl=0;
	clrf	(_Ytzpcl)	;volatile
	goto	l9034
	line	658
	
l9110:	
	movlw	low(01Dh)
	subwf	(_cur_addat),w	;volatile
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l9114
u3710:
	
l9112:	
	movf	(_cur_addat),w	;volatile
	addlw	low(02h)
	movwf	(??_Test_water+0)+0
	movlw	high(02h)
	skipnc
	movlw	(high(02h)+1)&0ffh
	movwf	((??_Test_water+0)+0)+1
	movf	1+(??_Test_water+0)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3725
	movlw	01Ah
	subwf	0+(??_Test_water+0)+0,w
u3725:

	skipc
	goto	u3721
	goto	u3720
u3721:
	goto	l5756
u3720:
	line	660
	
l9114:	
;WHQ_TP_ZPGS_V1.2.c: 659: {
;WHQ_TP_ZPGS_V1.2.c: 660: pwmlc = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_pwmlc)	;volatile
	line	661
;WHQ_TP_ZPGS_V1.2.c: 661: pwmhc = 0;
	clrf	(_pwmhc)	;volatile
	line	662
;WHQ_TP_ZPGS_V1.2.c: 662: }
	goto	l5759
	line	663
	
l5756:	
	line	665
;WHQ_TP_ZPGS_V1.2.c: 663: else
;WHQ_TP_ZPGS_V1.2.c: 664: {
;WHQ_TP_ZPGS_V1.2.c: 665: if(PFGchgf)
	btfss	(_PFGchgf/8),(_PFGchgf)&7	;volatile
	goto	u3731
	goto	u3730
u3731:
	goto	l5759
u3730:
	line	667
	
l9116:	
;WHQ_TP_ZPGS_V1.2.c: 666: {
;WHQ_TP_ZPGS_V1.2.c: 667: PFGchgf = 0;
	bcf	(_PFGchgf/8),(_PFGchgf)&7	;volatile
	line	668
	
l9118:	
;WHQ_TP_ZPGS_V1.2.c: 668: if(0 != pwmold)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_pwmold)),w	;volatile
iorwf	((_pwmold+1)),w	;volatile
	btfsc	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l9144
u3740:
	line	670
	
l9120:	
;WHQ_TP_ZPGS_V1.2.c: 669: {
;WHQ_TP_ZPGS_V1.2.c: 670: if((pfgonetemp.pfgtemp & 0x03ff) > pwmold)
	movlw	0FFh
	andwf	(_pfgonetemp),w
	movwf	(??_Test_water+0)+0
	movlw	03h
	andwf	(_pfgonetemp+1),w
	movwf	1+(??_Test_water+0)+0
	movf	1+(??_Test_water+0)+0,w
	subwf	(_pwmold+1),w	;volatile
	skipz
	goto	u3755
	movf	0+(??_Test_water+0)+0,w
	subwf	(_pwmold),w	;volatile
u3755:
	skipnc
	goto	u3751
	goto	u3750
u3751:
	goto	l9132
u3750:
	line	672
	
l9122:	
;WHQ_TP_ZPGS_V1.2.c: 671: {
;WHQ_TP_ZPGS_V1.2.c: 672: pwmlc = 0;
	clrf	(_pwmlc)	;volatile
	line	673
	
l9124:	
;WHQ_TP_ZPGS_V1.2.c: 673: if(++pwmhc >= 6)
	movlw	low(06h)
	incf	(_pwmhc),f	;volatile
	subwf	((_pwmhc)),w	;volatile
	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l9144
u3760:
	line	675
	
l9126:	
;WHQ_TP_ZPGS_V1.2.c: 674: {
;WHQ_TP_ZPGS_V1.2.c: 675: pwmhc = 0;
	clrf	(_pwmhc)	;volatile
	goto	l9034
	line	679
	
l9132:	
;WHQ_TP_ZPGS_V1.2.c: 679: else if((pfgonetemp.pfgtemp & 0x03ff) < pwmold)
	movlw	0FFh
	andwf	(_pfgonetemp),w
	movwf	(??_Test_water+0)+0
	movlw	03h
	andwf	(_pfgonetemp+1),w
	movwf	1+(??_Test_water+0)+0
	movf	(_pwmold+1),w	;volatile
	subwf	1+(??_Test_water+0)+0,w
	skipz
	goto	u3775
	movf	(_pwmold),w	;volatile
	subwf	0+(??_Test_water+0)+0,w
u3775:
	skipnc
	goto	u3771
	goto	u3770
u3771:
	goto	l9144
u3770:
	line	681
	
l9134:	
;WHQ_TP_ZPGS_V1.2.c: 680: {
;WHQ_TP_ZPGS_V1.2.c: 681: pwmhc = 0;
	clrf	(_pwmhc)	;volatile
	line	682
	
l9136:	
;WHQ_TP_ZPGS_V1.2.c: 682: if(++pwmlc >= 6)
	movlw	low(06h)
	incf	(_pwmlc),f	;volatile
	subwf	((_pwmlc)),w	;volatile
	skipc
	goto	u3781
	goto	u3780
u3781:
	goto	l5764
u3780:
	line	684
	
l9138:	
;WHQ_TP_ZPGS_V1.2.c: 683: {
;WHQ_TP_ZPGS_V1.2.c: 684: pwmlc = 0;
	clrf	(_pwmlc)	;volatile
	goto	l9034
	line	689
	
l5764:	
	line	690
	
l9144:	
;WHQ_TP_ZPGS_V1.2.c: 686: }
;WHQ_TP_ZPGS_V1.2.c: 687: }
;WHQ_TP_ZPGS_V1.2.c: 689: }
;WHQ_TP_ZPGS_V1.2.c: 690: pwmold = pfgonetemp.pfgtemp & 0x03ff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmold+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmold)	;volatile
	movlw	0FFh
	andwf	(_pwmold),f	;volatile
	movlw	03h
	andwf	(_pwmold+1),f	;volatile
	line	692
	
l5759:	
	file	"C:\mcuproject\scm\xfx\香薰机\WHQ_TP_ZPGS.h"
	line	195
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Test_water@temph)
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	695
;WHQ_TP_ZPGS_V1.2.c: 695: if(cur_addat <= templ)
	movlw	low(016h)
	subwf	(_cur_addat),w	;volatile
	skipnc
	goto	u3791
	goto	u3790
u3791:
	goto	l9148
u3790:
	line	697
	
l9146:	
;WHQ_TP_ZPGS_V1.2.c: 696: {
;WHQ_TP_ZPGS_V1.2.c: 697: watnof = 1;
	bsf	(Test_water@watnof/8),(Test_water@watnof)&7
	line	699
	
l9148:	
;WHQ_TP_ZPGS_V1.2.c: 698: }
;WHQ_TP_ZPGS_V1.2.c: 699: if(cur_addat >= temph)
	movlw	low(020h)
	subwf	(_cur_addat),w	;volatile
	skipc
	goto	u3801
	goto	u3800
u3801:
	goto	l5752
u3800:
	goto	l9046
	line	704
	
l5752:	
	line	706
;WHQ_TP_ZPGS_V1.2.c: 702: }
;WHQ_TP_ZPGS_V1.2.c: 703: }
;WHQ_TP_ZPGS_V1.2.c: 704: }
;WHQ_TP_ZPGS_V1.2.c: 706: if(watnof)
	btfss	(Test_water@watnof/8),(Test_water@watnof)&7
	goto	u3811
	goto	u3810
u3811:
	goto	l9164
u3810:
	line	708
	
l9152:	
;WHQ_TP_ZPGS_V1.2.c: 707: {
;WHQ_TP_ZPGS_V1.2.c: 708: wnoncl++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_wnoncl),f	;volatile
	line	709
	
l9154:	
;WHQ_TP_ZPGS_V1.2.c: 709: whavecl=0;
	clrf	(_whavecl)	;volatile
	line	710
	
l9156:	
;WHQ_TP_ZPGS_V1.2.c: 710: if(wnoncl >= 2)
	movlw	low(02h)
	subwf	(_wnoncl),w	;volatile
	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l9170
u3820:
	line	712
	
l9158:	
;WHQ_TP_ZPGS_V1.2.c: 711: {
;WHQ_TP_ZPGS_V1.2.c: 712: wnoncl=0;
	clrf	(_wnoncl)	;volatile
	goto	l9034
	line	718
	
l9164:	
;WHQ_TP_ZPGS_V1.2.c: 716: else
;WHQ_TP_ZPGS_V1.2.c: 717: {
;WHQ_TP_ZPGS_V1.2.c: 718: whavecl++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_whavecl),f	;volatile
	line	719
	
l9166:	
;WHQ_TP_ZPGS_V1.2.c: 719: if(whavecl>=5)
	movlw	low(05h)
	subwf	(_whavecl),w	;volatile
	skipc
	goto	u3831
	goto	u3830
u3831:
	goto	l9170
u3830:
	line	721
	
l9168:	
;WHQ_TP_ZPGS_V1.2.c: 720: {
;WHQ_TP_ZPGS_V1.2.c: 721: whavecl=0;
	clrf	(_whavecl)	;volatile
	line	722
;WHQ_TP_ZPGS_V1.2.c: 722: wnoncl=0;
	clrf	(_wnoncl)	;volatile
	line	725
	
l9170:	
;WHQ_TP_ZPGS_V1.2.c: 723: }
;WHQ_TP_ZPGS_V1.2.c: 724: }
;WHQ_TP_ZPGS_V1.2.c: 725: return 0;
	movlw	low(0)
	line	726
	
l5732:	
	return
	opt stack 0
GLOBAL	__end_of_Test_water
	__end_of_Test_water:
	signat	_Test_water,89
	global	_Test_PWM_Fst

;; *************** function _Test_PWM_Fst *****************
;; Defined at:
;;		line 501 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  templ           1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Test_Pwm_Cur
;;		_YTPFG_Flash
;; This function is called by:
;;		_Test_Pwm
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	line	501
global __ptext11
__ptext11:	;psect for function _Test_PWM_Fst
psect	text11
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	501
	global	__size_of_Test_PWM_Fst
	__size_of_Test_PWM_Fst	equ	__end_of_Test_PWM_Fst-_Test_PWM_Fst
	
_Test_PWM_Fst:	
;incstack = 0
	opt	stack 1
; Regs used in _Test_PWM_Fst: [wreg+status,2+status,0+pclath+cstack]
	line	505
	
l8982:	
;WHQ_TP_ZPGS_V1.2.c: 503: unsigned char templ;
;WHQ_TP_ZPGS_V1.2.c: 505: templ = Test_Pwm_Cur();
	fcall	_Test_Pwm_Cur
	movwf	(Test_PWM_Fst@templ)
	line	506
	
l8984:	
;WHQ_TP_ZPGS_V1.2.c: 506: if((0xff == templ) || (cur_addat == curset))
		incf	((Test_PWM_Fst@templ)),w
	btfsc	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l5708
u3470:
	
l8986:	
		movlw	26
	xorwf	((_cur_addat)),w	;volatile
	btfss	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l9016
u3480:
	
l5708:	
	line	508
;WHQ_TP_ZPGS_V1.2.c: 507: {
;WHQ_TP_ZPGS_V1.2.c: 508: pwmtonf = 1;
	bsf	(_pwmtonf/8),(_pwmtonf)&7	;volatile
	line	509
	
l8988:	
;WHQ_TP_ZPGS_V1.2.c: 509: if(++curokcl >= 3)
	movlw	low(03h)
	incf	(_curokcl),f	;volatile
	subwf	((_curokcl)),w	;volatile
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l9022
u3490:
	line	511
	
l8990:	
;WHQ_TP_ZPGS_V1.2.c: 510: {
;WHQ_TP_ZPGS_V1.2.c: 511: curokcl = 0;
	clrf	(_curokcl)	;volatile
	line	512
	
l8992:	
;WHQ_TP_ZPGS_V1.2.c: 512: if(!pwmtf)
	btfsc	(_pwmtf/8),(_pwmtf)&7	;volatile
	goto	u3501
	goto	u3500
u3501:
	goto	l5710
u3500:
	line	514
	
l8994:	
;WHQ_TP_ZPGS_V1.2.c: 513: {
;WHQ_TP_ZPGS_V1.2.c: 514: Ytzpcl = 0;
	clrf	(_Ytzpcl)	;volatile
	line	515
	
l8996:	
;WHQ_TP_ZPGS_V1.2.c: 515: onoff_fst = 0;
	bcf	(_onoff_fst/8),(_onoff_fst)&7	;volatile
	line	516
	
l8998:	
;WHQ_TP_ZPGS_V1.2.c: 516: pwmtf = 1;
	bsf	(_pwmtf/8),(_pwmtf)&7	;volatile
	line	523
	
l5711:	
	line	525
;WHQ_TP_ZPGS_V1.2.c: 523: else
;WHQ_TP_ZPGS_V1.2.c: 524: {
;WHQ_TP_ZPGS_V1.2.c: 525: pwmtf1 = 1;
	bsf	(_pwmtf1/8),(_pwmtf1)&7	;volatile
	goto	l9008
	line	528
	
l5710:	
;WHQ_TP_ZPGS_V1.2.c: 528: else if(!pwmtf1)
	btfsc	(_pwmtf1/8),(_pwmtf1)&7	;volatile
	goto	u3511
	goto	u3510
u3511:
	goto	l9008
u3510:
	goto	l5711
	line	532
	
l9008:	
;WHQ_TP_ZPGS_V1.2.c: 531: }
;WHQ_TP_ZPGS_V1.2.c: 532: pfgonetemp.pfgtemp = pfgonetemp.pfgtemp-2;
	movlw	0FEh
	addwf	(_pfgonetemp),f
	skipnc
	incf	(_pfgonetemp+1),f
	movlw	0FFh
	addwf	(_pfgonetemp+1),f
	line	533
	
l9010:	
;WHQ_TP_ZPGS_V1.2.c: 533: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	534
;WHQ_TP_ZPGS_V1.2.c: 534: pwmnold = pfgonetemp.pfgtemp&0x7fff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmnold+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmnold)	;volatile
	
l9012:	
	bcf	(_pwmnold)+(15/8),(15)&7	;volatile
	line	535
;WHQ_TP_ZPGS_V1.2.c: 535: return 0xaa;
	movlw	low(0AAh)
	goto	l5715
	line	538
	
l9016:	
;WHQ_TP_ZPGS_V1.2.c: 538: else if(0x55 == templ)
		movlw	85
	xorwf	((Test_PWM_Fst@templ)),w
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l9022
u3520:
	line	540
	
l9018:	
;WHQ_TP_ZPGS_V1.2.c: 539: {
;WHQ_TP_ZPGS_V1.2.c: 540: return 0x55;
	movlw	low(055h)
	goto	l5715
	line	542
	
l9022:	
;WHQ_TP_ZPGS_V1.2.c: 541: }
;WHQ_TP_ZPGS_V1.2.c: 542: return 0x00;
	movlw	low(0)
	line	543
	
l5715:	
	return
	opt stack 0
GLOBAL	__end_of_Test_PWM_Fst
	__end_of_Test_PWM_Fst:
	signat	_Test_PWM_Fst,89
	global	_YTPFG_Flash

;; *************** function _YTPFG_Flash *****************
;; Defined at:
;;		line 485 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2    3[BANK0 ] unsigned int 
;;  templ           1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Test_PWM_Fst
;;		_Test_Pwm
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	line	485
global __ptext12
__ptext12:	;psect for function _YTPFG_Flash
psect	text12
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	485
	global	__size_of_YTPFG_Flash
	__size_of_YTPFG_Flash	equ	__end_of_YTPFG_Flash-_YTPFG_Flash
	
_YTPFG_Flash:	
;incstack = 0
	opt	stack 3
; Regs used in _YTPFG_Flash: [wreg+status,2+status,0]
	line	490
	
l8798:	
;WHQ_TP_ZPGS_V1.2.c: 487: unsigned char templ;
;WHQ_TP_ZPGS_V1.2.c: 488: unsigned int temp;
;WHQ_TP_ZPGS_V1.2.c: 490: temp = (pfgonetemp.pfgtemp & 0x03ff) + Drange;
	movf	(_pfgonetemp+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(YTPFG_Flash@temp+1)
	movf	(_pfgonetemp),w
	movwf	(YTPFG_Flash@temp)
	movlw	0FFh
	andwf	(YTPFG_Flash@temp),f
	movlw	03h
	andwf	(YTPFG_Flash@temp+1),f
	file	"C:\mcuproject\scm\xfx\香薰机\WHQ_TP_ZPGS.h"
	line	198
	movlw	010h
	addwf	(YTPFG_Flash@temp),f
	skipnc
	incf	(YTPFG_Flash@temp+1),f
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	491
;WHQ_TP_ZPGS_V1.2.c: 491: PFGDATA1 = (unsigned char)(temp);
	movf	(YTPFG_Flash@temp),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(287)^0100h	;volatile
	line	492
	
l8800:	
;WHQ_TP_ZPGS_V1.2.c: 492: templ = (unsigned char)((temp >> 3) & 0x60);
	bcf	status, 6	;RP1=0, select bank0
	movf	(YTPFG_Flash@temp+1),w
	movwf	(??_YTPFG_Flash+0)+0+1
	movf	(YTPFG_Flash@temp),w
	movwf	(??_YTPFG_Flash+0)+0
	clrc
	rrf	(??_YTPFG_Flash+0)+1,f
	rrf	(??_YTPFG_Flash+0)+0,f
	clrc
	rrf	(??_YTPFG_Flash+0)+1,f
	rrf	(??_YTPFG_Flash+0)+0,f
	clrc
	rrf	(??_YTPFG_Flash+0)+1,f
	rrf	(??_YTPFG_Flash+0)+0,f
	movf	0+(??_YTPFG_Flash+0)+0,w
	movwf	(YTPFG_Flash@templ)
	
l8802:	
	movlw	low(060h)
	andwf	(YTPFG_Flash@templ),f
	line	493
	
l8804:	
	movf	(YTPFG_Flash@templ),w
	iorlw	08Ah
	bsf	status, 6	;RP1=1, select bank2
	movwf	(286)^0100h	;volatile
	line	494
	
l5703:	
	return
	opt stack 0
GLOBAL	__end_of_YTPFG_Flash
	__end_of_YTPFG_Flash:
	signat	_YTPFG_Flash,89
	global	_Test_Pwm_Cur

;; *************** function _Test_Pwm_Cur *****************
;; Defined at:
;;		line 144 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  templ           1    8[BANK0 ] unsigned char 
;;  temph           1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Pwm_add
;;		_Pwm_dec
;; This function is called by:
;;		_Test_PWM_Fst
;;		_Test_Pwm
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=1
	line	144
global __ptext13
__ptext13:	;psect for function _Test_Pwm_Cur
psect	text13
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	144
	global	__size_of_Test_Pwm_Cur
	__size_of_Test_Pwm_Cur	equ	__end_of_Test_Pwm_Cur-_Test_Pwm_Cur
	
_Test_Pwm_Cur:	
;incstack = 0
	opt	stack 2
; Regs used in _Test_Pwm_Cur: [wreg+status,2+status,0+pclath+cstack]
	line	149
	
l8734:	
	movlw	low(01Bh)
	subwf	(_cur_addat),w	;volatile
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l8758
u3270:
	line	151
	
l8736:	
;WHQ_TP_ZPGS_V1.2.c: 150: {
;WHQ_TP_ZPGS_V1.2.c: 151: curdowncl = 0;
	clrf	(Test_Pwm_Cur@curdowncl)
	line	152
	
l8738:	
;WHQ_TP_ZPGS_V1.2.c: 152: if(++curupcl >= 2)
	movlw	low(02h)
	incf	(Test_Pwm_Cur@curupcl),f
	subwf	((Test_Pwm_Cur@curupcl)),w
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l8794
u3280:
	line	154
	
l8740:	
;WHQ_TP_ZPGS_V1.2.c: 153: {
;WHQ_TP_ZPGS_V1.2.c: 154: PFGchgf = 1;
	bsf	(_PFGchgf/8),(_PFGchgf)&7	;volatile
	line	155
	
l8742:	
;WHQ_TP_ZPGS_V1.2.c: 155: curupcl = 0;
	clrf	(Test_Pwm_Cur@curupcl)
	line	156
	
l8744:	
;WHQ_TP_ZPGS_V1.2.c: 156: if(0 == Pwm_dec(1,pwmfst))
	movf	(_pwmfst+1),w	;volatile
	movwf	(Pwm_dec@pwmfset+1)
	movf	(_pwmfst),w	;volatile
	movwf	(Pwm_dec@pwmfset)
	movlw	low(01h)
	fcall	_Pwm_dec
	xorlw	0
	skipz
	goto	u3291
	goto	u3290
u3291:
	goto	l8754
u3290:
	line	158
	
l8746:	
;WHQ_TP_ZPGS_V1.2.c: 157: {
;WHQ_TP_ZPGS_V1.2.c: 158: pfgonetemp.pfgtemp = pwmfst;
	movf	(_pwmfst+1),w	;volatile
	movwf	(_pfgonetemp+1)
	movf	(_pwmfst),w	;volatile
	movwf	(_pfgonetemp)
	line	159
	
l8748:	
;WHQ_TP_ZPGS_V1.2.c: 159: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	160
;WHQ_TP_ZPGS_V1.2.c: 160: return 0x55;
	movlw	low(055h)
	goto	l5627
	line	163
	
l8754:	
;WHQ_TP_ZPGS_V1.2.c: 162: else
;WHQ_TP_ZPGS_V1.2.c: 163: return 0xff;
	movlw	low(0FFh)
	goto	l5627
	line	166
	
l8758:	
	movlw	low(01Ah)
	subwf	(_cur_addat),w	;volatile
	skipnc
	goto	u3301
	goto	u3300
u3301:
	goto	l8792
u3300:
	line	168
	
l8760:	
;WHQ_TP_ZPGS_V1.2.c: 167: {
;WHQ_TP_ZPGS_V1.2.c: 168: curupcl = 0;
	clrf	(Test_Pwm_Cur@curupcl)
	line	169
	
l8762:	
;WHQ_TP_ZPGS_V1.2.c: 169: if(++curdowncl >= 2)
	movlw	low(02h)
	incf	(Test_Pwm_Cur@curdowncl),f
	subwf	((Test_Pwm_Cur@curdowncl)),w
	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l8794
u3310:
	line	171
	
l8764:	
;WHQ_TP_ZPGS_V1.2.c: 170: {
;WHQ_TP_ZPGS_V1.2.c: 171: PFGchgf = 1;
	bsf	(_PFGchgf/8),(_PFGchgf)&7	;volatile
	line	172
	
l8766:	
;WHQ_TP_ZPGS_V1.2.c: 172: curdowncl = 0;
	clrf	(Test_Pwm_Cur@curdowncl)
	line	173
	
l8768:	
	movf	(_cur_addat),w	;volatile
	sublw	01Ah
	movwf	(Test_Pwm_Cur@templ)
	line	174
	
l8770:	
;WHQ_TP_ZPGS_V1.2.c: 174: if(templ >= 20)
	movlw	low(014h)
	subwf	(Test_Pwm_Cur@templ),w
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l8774
u3320:
	line	175
	
l8772:	
;WHQ_TP_ZPGS_V1.2.c: 175: temph = 4;
	movlw	low(04h)
	movwf	(Test_Pwm_Cur@temph)
	goto	l8778
	line	176
	
l8774:	
;WHQ_TP_ZPGS_V1.2.c: 176: else if(templ >= 15)
	movlw	low(0Fh)
	subwf	(Test_Pwm_Cur@templ),w
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l5634
u3330:
	line	178
	
l8776:	
;WHQ_TP_ZPGS_V1.2.c: 177: {
;WHQ_TP_ZPGS_V1.2.c: 178: temph = 2;
	movlw	low(02h)
	movwf	(Test_Pwm_Cur@temph)
	line	179
;WHQ_TP_ZPGS_V1.2.c: 179: }
	goto	l8778
	line	180
	
l5634:	
	line	181
;WHQ_TP_ZPGS_V1.2.c: 180: else
;WHQ_TP_ZPGS_V1.2.c: 181: temph = 1;
	clrf	(Test_Pwm_Cur@temph)
	incf	(Test_Pwm_Cur@temph),f
	line	182
	
l8778:	
;WHQ_TP_ZPGS_V1.2.c: 182: if(0 == Pwm_add(temph,pwmlst))
	movf	(_pwmlst+1),w	;volatile
	movwf	(Pwm_add@pwmlset+1)
	movf	(_pwmlst),w	;volatile
	movwf	(Pwm_add@pwmlset)
	movf	(Test_Pwm_Cur@temph),w
	fcall	_Pwm_add
	xorlw	0
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l8788
u3340:
	goto	l8746
	line	189
	
l8788:	
;WHQ_TP_ZPGS_V1.2.c: 188: else
;WHQ_TP_ZPGS_V1.2.c: 189: return 0xaa;
	movlw	low(0AAh)
	goto	l5627
	line	194
	
l8792:	
;WHQ_TP_ZPGS_V1.2.c: 192: else
;WHQ_TP_ZPGS_V1.2.c: 193: {
;WHQ_TP_ZPGS_V1.2.c: 194: curupcl = 0;
	clrf	(Test_Pwm_Cur@curupcl)
	line	195
;WHQ_TP_ZPGS_V1.2.c: 195: curdowncl = 0;
	clrf	(Test_Pwm_Cur@curdowncl)
	line	197
	
l8794:	
;WHQ_TP_ZPGS_V1.2.c: 196: }
;WHQ_TP_ZPGS_V1.2.c: 197: return 0x00;
	movlw	low(0)
	line	198
	
l5627:	
	return
	opt stack 0
GLOBAL	__end_of_Test_Pwm_Cur
	__end_of_Test_Pwm_Cur:
	signat	_Test_Pwm_Cur,89
	global	_Pwm_dec

;; *************** function _Pwm_dec *****************
;; Defined at:
;;		line 124 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;  deccl           1    wreg     unsigned char 
;;  pwmfset         2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  deccl           1    4[BANK0 ] unsigned char 
;;  temp            2    5[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Test_Pwm_Cur
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	line	124
global __ptext14
__ptext14:	;psect for function _Pwm_dec
psect	text14
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	124
	global	__size_of_Pwm_dec
	__size_of_Pwm_dec	equ	__end_of_Pwm_dec-_Pwm_dec
	
_Pwm_dec:	
;incstack = 0
	opt	stack 2
; Regs used in _Pwm_dec: [wreg]
;Pwm_dec@deccl stored from wreg
	movwf	(Pwm_dec@deccl)
	line	129
	
l8714:	
;WHQ_TP_ZPGS_V1.2.c: 127: unsigned int temp;
;WHQ_TP_ZPGS_V1.2.c: 129: pfgonetemp.pfgtemp = pfgonetemp.pfgtemp - deccl;
	movf	(Pwm_dec@deccl),w
	subwf	(_pfgonetemp),f
	skipc
	decf	(_pfgonetemp+1),f
	line	130
	
l8716:	
;WHQ_TP_ZPGS_V1.2.c: 130: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	131
;WHQ_TP_ZPGS_V1.2.c: 131: temp = pfgonetemp.pfgtemp & 0x03ff;
	movf	(_pfgonetemp+1),w
	movwf	(Pwm_dec@temp+1)
	movf	(_pfgonetemp),w
	movwf	(Pwm_dec@temp)
	movlw	0FFh
	andwf	(Pwm_dec@temp),f
	movlw	03h
	andwf	(Pwm_dec@temp+1),f
	line	132
;WHQ_TP_ZPGS_V1.2.c: 132: if(temp < (pwmfset & 0x03ff)) return 0;
	movlw	0FFh
	andwf	(Pwm_dec@pwmfset),w
	movwf	(??_Pwm_dec+0)+0
	movlw	03h
	andwf	(Pwm_dec@pwmfset+1),w
	movwf	1+(??_Pwm_dec+0)+0
	movf	1+(??_Pwm_dec+0)+0,w
	subwf	(Pwm_dec@temp+1),w
	skipz
	goto	u3265
	movf	0+(??_Pwm_dec+0)+0,w
	subwf	(Pwm_dec@temp),w
u3265:
	skipnc
	goto	u3261
	goto	u3260
u3261:
	goto	l8722
u3260:
	
l8718:	
	movlw	low(0)
	goto	l5617
	line	133
	
l8722:	
;WHQ_TP_ZPGS_V1.2.c: 133: return 1;
	movlw	low(01h)
	line	134
	
l5617:	
	return
	opt stack 0
GLOBAL	__end_of_Pwm_dec
	__end_of_Pwm_dec:
	signat	_Pwm_dec,8313
	global	_Pwm_add

;; *************** function _Pwm_add *****************
;; Defined at:
;;		line 105 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;  addcl           1    wreg     unsigned char 
;;  pwmlset         2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  addcl           1    4[BANK0 ] unsigned char 
;;  temp            2    5[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Test_Pwm_Cur
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	line	105
global __ptext15
__ptext15:	;psect for function _Pwm_add
psect	text15
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	105
	global	__size_of_Pwm_add
	__size_of_Pwm_add	equ	__end_of_Pwm_add-_Pwm_add
	
_Pwm_add:	
;incstack = 0
	opt	stack 2
; Regs used in _Pwm_add: [wreg]
;Pwm_add@addcl stored from wreg
	movwf	(Pwm_add@addcl)
	line	110
	
l8702:	
;WHQ_TP_ZPGS_V1.2.c: 108: unsigned int temp;
;WHQ_TP_ZPGS_V1.2.c: 110: pfgonetemp.pfgtemp = pfgonetemp.pfgtemp + addcl;
	movf	(Pwm_add@addcl),w
	addwf	(_pfgonetemp),f
	skipnc
	incf	(_pfgonetemp+1),f
	line	111
	
l8704:	
;WHQ_TP_ZPGS_V1.2.c: 111: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	112
;WHQ_TP_ZPGS_V1.2.c: 112: temp = pfgonetemp.pfgtemp & 0x03ff;
	movf	(_pfgonetemp+1),w
	movwf	(Pwm_add@temp+1)
	movf	(_pfgonetemp),w
	movwf	(Pwm_add@temp)
	movlw	0FFh
	andwf	(Pwm_add@temp),f
	movlw	03h
	andwf	(Pwm_add@temp+1),f
	line	113
;WHQ_TP_ZPGS_V1.2.c: 113: if(temp > (pwmlset & 0x03ff)) return 0;
	movlw	0FFh
	andwf	(Pwm_add@pwmlset),w
	movwf	(??_Pwm_add+0)+0
	movlw	03h
	andwf	(Pwm_add@pwmlset+1),w
	movwf	1+(??_Pwm_add+0)+0
	movf	(Pwm_add@temp+1),w
	subwf	1+(??_Pwm_add+0)+0,w
	skipz
	goto	u3255
	movf	(Pwm_add@temp),w
	subwf	0+(??_Pwm_add+0)+0,w
u3255:
	skipnc
	goto	u3251
	goto	u3250
u3251:
	goto	l8710
u3250:
	
l8706:	
	movlw	low(0)
	goto	l5613
	line	114
	
l8710:	
;WHQ_TP_ZPGS_V1.2.c: 114: return 1;
	movlw	low(01h)
	line	115
	
l5613:	
	return
	opt stack 0
GLOBAL	__end_of_Pwm_add
	__end_of_Pwm_add:
	signat	_Pwm_add,8313
	global	_PFG_read_fst

;; *************** function _PFG_read_fst *****************
;; Defined at:
;;		line 206 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2    7[BANK0 ] unsigned int 
;;  pfgconset       1    6[BANK0 ] unsigned char 
;;  temph           1    5[BANK0 ] unsigned char 
;;  templ           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Set_jiyi_re
;; This function is called by:
;;		_Test_Pwm
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	line	206
global __ptext16
__ptext16:	;psect for function _PFG_read_fst
psect	text16
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	206
	global	__size_of_PFG_read_fst
	__size_of_PFG_read_fst	equ	__end_of_PFG_read_fst-_PFG_read_fst
	
_PFG_read_fst:	
;incstack = 0
	opt	stack 2
; Regs used in _PFG_read_fst: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	212
	
l8854:	
;WHQ_TP_ZPGS_V1.2.c: 208: unsigned char templ,temph;
;WHQ_TP_ZPGS_V1.2.c: 209: unsigned int temp;
;WHQ_TP_ZPGS_V1.2.c: 210: unsigned char pfgconset;
;WHQ_TP_ZPGS_V1.2.c: 212: switch(pfg_select)
	goto	l8874
	line	216
	
l8856:	
;WHQ_TP_ZPGS_V1.2.c: 215: {
;WHQ_TP_ZPGS_V1.2.c: 216: templ = Set_jiyi_re(0x18);
	movlw	low(018h)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@templ)
	line	217
;WHQ_TP_ZPGS_V1.2.c: 217: temph = Set_jiyi_re(0x19);
	movlw	low(019h)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@temph)
	line	218
	
l8858:	
;WHQ_TP_ZPGS_V1.2.c: 218: pfgconset = 0x04;
	movlw	low(04h)
	movwf	(PFG_read_fst@pfgconset)
	line	219
;WHQ_TP_ZPGS_V1.2.c: 219: break;
	goto	l8876
	line	223
	
l8860:	
;WHQ_TP_ZPGS_V1.2.c: 222: {
;WHQ_TP_ZPGS_V1.2.c: 223: templ = Set_jiyi_re(0x1a);
	movlw	low(01Ah)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@templ)
	line	224
;WHQ_TP_ZPGS_V1.2.c: 224: temph = Set_jiyi_re(0x1b);
	movlw	low(01Bh)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@temph)
	line	225
	
l8862:	
;WHQ_TP_ZPGS_V1.2.c: 225: pfgconset = 0x24;
	movlw	low(024h)
	movwf	(PFG_read_fst@pfgconset)
	line	226
;WHQ_TP_ZPGS_V1.2.c: 226: break;
	goto	l8876
	line	230
	
l8864:	
;WHQ_TP_ZPGS_V1.2.c: 229: {
;WHQ_TP_ZPGS_V1.2.c: 230: templ = Set_jiyi_re(0x1c);
	movlw	low(01Ch)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@templ)
	line	231
;WHQ_TP_ZPGS_V1.2.c: 231: temph = Set_jiyi_re(0x1d);
	movlw	low(01Dh)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@temph)
	line	232
	
l8866:	
;WHQ_TP_ZPGS_V1.2.c: 232: pfgconset = 0x44;
	movlw	low(044h)
	movwf	(PFG_read_fst@pfgconset)
	line	233
;WHQ_TP_ZPGS_V1.2.c: 233: break;
	goto	l8876
	line	237
	
l8868:	
;WHQ_TP_ZPGS_V1.2.c: 236: {
;WHQ_TP_ZPGS_V1.2.c: 237: templ = Set_jiyi_re(0x1e);
	movlw	low(01Eh)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@templ)
	line	238
;WHQ_TP_ZPGS_V1.2.c: 238: temph = Set_jiyi_re(0x1f);
	movlw	low(01Fh)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@temph)
	line	239
	
l8870:	
;WHQ_TP_ZPGS_V1.2.c: 239: pfgconset = 0x64;
	movlw	low(064h)
	movwf	(PFG_read_fst@pfgconset)
	line	240
;WHQ_TP_ZPGS_V1.2.c: 240: break;
	goto	l8876
	line	212
	
l8874:	
	movlw	low((_pfg_select-__stringbase))
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           18    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l8856
	xorlw	2^1	; case 2
	skipnz
	goto	l8860
	xorlw	3^2	; case 3
	skipnz
	goto	l8864
	xorlw	4^3	; case 4
	skipnz
	goto	l8868
	goto	l8876
	opt asmopt_pop

	line	244
	
l8876:	
;WHQ_TP_ZPGS_V1.2.c: 244: temph = (unsigned char)(temph&0x03);
	movlw	low(03h)
	andwf	(PFG_read_fst@temph),f
	line	245
	
l8878:	
;WHQ_TP_ZPGS_V1.2.c: 245: temp = (unsigned int)(temph*256 + templ);
	movf	(PFG_read_fst@temph),w
	movwf	(PFG_read_fst@temp+1)
	clrf	(PFG_read_fst@temp)
	
l8880:	
	movf	(PFG_read_fst@templ),w
	addwf	(PFG_read_fst@temp),f
	skipnc
	incf	(PFG_read_fst@temp+1),f
	line	246
	
l8882:	
	movlw	0
	subwf	(PFG_read_fst@temp+1),w
	movlw	0FBh
	skipnz
	subwf	(PFG_read_fst@temp),w
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l8886
u3430:
	file	"C:\mcuproject\scm\xfx\香薰机\WHQ_TP_ZPGS.h"
	line	183
	
l8884:	
	movf	(PFG_read_fst@temp),w
	addlw	low(0FF06h)
	movwf	(_pwmfst)	;volatile
	movf	(PFG_read_fst@temp+1),w
	skipnc
	addlw	1
	addlw	high(0FF06h)
	movwf	1+(_pwmfst)	;volatile
	line	247
	goto	l8888
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	249
	
l8886:	
;WHQ_TP_ZPGS_V1.2.c: 248: else
;WHQ_TP_ZPGS_V1.2.c: 249: pwmfst = 0;
	clrf	(_pwmfst)	;volatile
	clrf	(_pwmfst+1)	;volatile
	file	"C:\mcuproject\scm\xfx\香薰机\WHQ_TP_ZPGS.h"
	line	184
	
l8888:	
	movf	(PFG_read_fst@temp),w
	addlw	low(0FAh)
	movwf	(_pwmlst)	;volatile
	movf	(PFG_read_fst@temp+1),w
	skipnc
	addlw	1
	addlw	high(0FAh)
	movwf	1+(_pwmlst)	;volatile
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	252
	
l8890:	
;WHQ_TP_ZPGS_V1.2.c: 252: if((pwmlst&0x0400) != 0)
	btfss	(_pwmlst+1),(10)&7	;volatile
	goto	u3441
	goto	u3440
u3441:
	goto	l8894
u3440:
	line	253
	
l8892:	
;WHQ_TP_ZPGS_V1.2.c: 253: pwmlst = 1024;
	movlw	0
	movwf	(_pwmlst)	;volatile
	movlw	04h
	movwf	((_pwmlst))+1	;volatile
	line	255
	
l8894:	
;WHQ_TP_ZPGS_V1.2.c: 255: pwmfst = (unsigned int)(pwmfst|(unsigned int)(pfgconset<<8));
	movf	(PFG_read_fst@pfgconset),w
	movwf	(??_PFG_read_fst+0)+0
	clrf	(??_PFG_read_fst+0)+0+1
	movf	(??_PFG_read_fst+0)+0,w
	movwf	(??_PFG_read_fst+0)+1
	clrf	(??_PFG_read_fst+0)+0
	movf	0+(??_PFG_read_fst+0)+0,w
	iorwf	(_pwmfst),f	;volatile
	movf	1+(??_PFG_read_fst+0)+0,w
	iorwf	(_pwmfst+1),f	;volatile
	line	256
	
l8896:	
;WHQ_TP_ZPGS_V1.2.c: 256: pwmlst = (unsigned int)(pwmlst|(unsigned int)(pfgconset<<8));
	movf	(PFG_read_fst@pfgconset),w
	movwf	(??_PFG_read_fst+0)+0
	clrf	(??_PFG_read_fst+0)+0+1
	movf	(??_PFG_read_fst+0)+0,w
	movwf	(??_PFG_read_fst+0)+1
	clrf	(??_PFG_read_fst+0)+0
	movf	0+(??_PFG_read_fst+0)+0,w
	iorwf	(_pwmlst),f	;volatile
	movf	1+(??_PFG_read_fst+0)+0,w
	iorwf	(_pwmlst+1),f	;volatile
	line	257
;WHQ_TP_ZPGS_V1.2.c: 257: pfgonetemp.pfgtemp = pwmfst;
	movf	(_pwmfst+1),w	;volatile
	movwf	(_pfgonetemp+1)
	movf	(_pwmfst),w	;volatile
	movwf	(_pfgonetemp)
	line	258
	
l8898:	
;WHQ_TP_ZPGS_V1.2.c: 258: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	259
;WHQ_TP_ZPGS_V1.2.c: 259: pwmnold = pfgonetemp.pfgtemp;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmnold+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmnold)	;volatile
	line	260
	
l5651:	
	return
	opt stack 0
GLOBAL	__end_of_PFG_read_fst
	__end_of_PFG_read_fst:
	signat	_PFG_read_fst,89
	global	_Set_jiyi_re

;; *************** function _Set_jiyi_re *****************
;; Defined at:
;;		line 68 in file "C:\mcuproject\scm\xfx\香薰机\Eeprom.c"
;; Parameters:    Size  Location     Type
;;  raddr           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  raddr           1    0[BANK0 ] unsigned char 
;;  redata          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PFG_read_fst
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\香薰机\Eeprom.c"
	line	68
global __ptext17
__ptext17:	;psect for function _Set_jiyi_re
psect	text17
	file	"C:\mcuproject\scm\xfx\香薰机\Eeprom.c"
	line	68
	global	__size_of_Set_jiyi_re
	__size_of_Set_jiyi_re	equ	__end_of_Set_jiyi_re-_Set_jiyi_re
	
_Set_jiyi_re:	
;incstack = 0
	opt	stack 2
; Regs used in _Set_jiyi_re: [wreg]
;Set_jiyi_re@raddr stored from wreg
	movwf	(Set_jiyi_re@raddr)
	line	72
	
l8726:	
;Eeprom.c: 70: unsigned char redata;
;Eeprom.c: 72: EEADR = raddr;
	movf	(Set_jiyi_re@raddr),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	73
# 73 "C:\mcuproject\scm\xfx\香薰机\Eeprom.c"
NOP ;# 
psect	text17
	line	74
	
l8728:	
;Eeprom.c: 74: EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7	;volsfr
	line	75
# 75 "C:\mcuproject\scm\xfx\香薰机\Eeprom.c"
NOP ;# 
psect	text17
	line	76
	
l8730:	
;Eeprom.c: 76: RD = 1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3168/8)^0180h,(3168)&7	;volsfr
	line	77
# 77 "C:\mcuproject\scm\xfx\香薰机\Eeprom.c"
NOP ;# 
	line	78
# 78 "C:\mcuproject\scm\xfx\香薰机\Eeprom.c"
NOP ;# 
	line	79
# 79 "C:\mcuproject\scm\xfx\香薰机\Eeprom.c"
NOP ;# 
psect	text17
	line	80
;Eeprom.c: 80: redata = EEDAT;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Set_jiyi_re@redata)
	line	81
;Eeprom.c: 81: return redata;
	movf	(Set_jiyi_re@redata),w
	line	82
	
l1457:	
	return
	opt stack 0
GLOBAL	__end_of_Set_jiyi_re
	__end_of_Set_jiyi_re:
	signat	_Set_jiyi_re,4217
	global	_Get_CUR_Dat

;; *************** function _Get_CUR_Dat *****************
;; Defined at:
;;		line 465 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_Test_Pwm
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	465
global __ptext18
__ptext18:	;psect for function _Get_CUR_Dat
psect	text18
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	465
	global	__size_of_Get_CUR_Dat
	__size_of_Get_CUR_Dat	equ	__end_of_Get_CUR_Dat-_Get_CUR_Dat
	
_Get_CUR_Dat:	
;incstack = 0
	opt	stack 2
; Regs used in _Get_CUR_Dat: [wreg+status,2+status,0+pclath+cstack]
	line	467
	
l8970:	
;WHQ_TP_ZPGS_V1.2.c: 467: cur_addat = cursum/32;
	bsf	status, 5	;RP0=1, select bank1
	movf	(_cursum+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Get_CUR_Dat+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(_cursum)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Get_CUR_Dat+0)+0
	movlw	05h
u3455:
	clrc
	rrf	(??_Get_CUR_Dat+0)+1,f
	rrf	(??_Get_CUR_Dat+0)+0,f
	addlw	-1
	skipz
	goto	u3455
	movf	0+(??_Get_CUR_Dat+0)+0,w
	movwf	(_cur_addat)	;volatile
	line	468
;WHQ_TP_ZPGS_V1.2.c: 468: if(0 == cur_addatold0)
	movf	((_cur_addatold0)),w	;volatile
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l8974
u3460:
	line	470
	
l8972:	
;WHQ_TP_ZPGS_V1.2.c: 469: {
;WHQ_TP_ZPGS_V1.2.c: 470: cur_addatold0 = cur_addat;
	movf	(_cur_addat),w	;volatile
	movwf	(_cur_addatold0)	;volatile
	line	471
;WHQ_TP_ZPGS_V1.2.c: 471: cur_addatold1 = cur_addat;
	movf	(_cur_addat),w	;volatile
	movwf	(_cur_addatold1)	;volatile
	line	472
;WHQ_TP_ZPGS_V1.2.c: 472: cur_addatold2 = cur_addat;
	movf	(_cur_addat),w	;volatile
	movwf	(_cur_addatold2)	;volatile
	line	473
;WHQ_TP_ZPGS_V1.2.c: 473: }
	goto	l8976
	line	476
	
l8974:	
;WHQ_TP_ZPGS_V1.2.c: 474: else
;WHQ_TP_ZPGS_V1.2.c: 475: {
;WHQ_TP_ZPGS_V1.2.c: 476: cur_addat = (unsigned char)((cur_addat + cur_addatold0 + cur_addatold1 + cur_addatold2)/4);
	movf	(_cur_addat),w	;volatile
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	movf	(_cur_addatold0),w	;volatile
	addwf	(___awdiv@dividend),f
	skipnc
	incf	(___awdiv@dividend+1),f
	movf	(_cur_addatold1),w	;volatile
	addwf	(___awdiv@dividend),f
	skipnc
	incf	(___awdiv@dividend+1),f
	movf	(_cur_addatold2),w	;volatile
	addwf	(___awdiv@dividend),f
	skipnc
	incf	(___awdiv@dividend+1),f
	movlw	04h
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(_cur_addat)	;volatile
	line	478
	
l8976:	
;WHQ_TP_ZPGS_V1.2.c: 477: }
;WHQ_TP_ZPGS_V1.2.c: 478: cur_addatold2 = cur_addatold1;
	movf	(_cur_addatold1),w	;volatile
	movwf	(_cur_addatold2)	;volatile
	line	479
	
l8978:	
;WHQ_TP_ZPGS_V1.2.c: 479: cur_addatold1 = cur_addatold0;
	movf	(_cur_addatold0),w	;volatile
	movwf	(_cur_addatold1)	;volatile
	line	480
	
l8980:	
;WHQ_TP_ZPGS_V1.2.c: 480: cur_addatold0 = cur_addat;
	movf	(_cur_addat),w	;volatile
	movwf	(_cur_addatold0)	;volatile
	line	481
	
l5700:	
	return
	opt stack 0
GLOBAL	__end_of_Get_CUR_Dat
	__end_of_Get_CUR_Dat:
	signat	_Get_CUR_Dat,89
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\mcuproject\scm\CMS_IDE_V2.03.26\CMS_IDE_V2.03.26\data\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Get_CUR_Dat
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\CMS_IDE_V2.03.26\CMS_IDE_V2.03.26\data\sources\common\awdiv.c"
	line	6
global __ptext19
__ptext19:	;psect for function ___awdiv
psect	text19
	file	"C:\mcuproject\scm\CMS_IDE_V2.03.26\CMS_IDE_V2.03.26\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l8806:	
	clrf	(___awdiv@sign)
	line	15
	
l8808:	
	btfss	(___awdiv@divisor+1),7
	goto	u3351
	goto	u3350
u3351:
	goto	l8814
u3350:
	line	16
	
l8810:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l8812:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l8814:	
	btfss	(___awdiv@dividend+1),7
	goto	u3361
	goto	u3360
u3361:
	goto	l8820
u3360:
	line	20
	
l8816:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l8818:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l8820:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l8822:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l8842
u3370:
	line	25
	
l8824:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l8828
	line	27
	
l8826:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l8828:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l8826
u3380:
	line	31
	
l8830:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l8832:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3395
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3395:
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l8838
u3390:
	line	33
	
l8834:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l8836:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l8838:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l8840:	
	decfsz	(___awdiv@counter),f
	goto	u3401
	goto	u3400
u3401:
	goto	l8830
u3400:
	line	39
	
l8842:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l8846
u3410:
	line	40
	
l8844:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l8846:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l5936:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_fan_handle

;; *************** function _fan_handle *****************
;; Defined at:
;;		line 286 in file "C:\mcuproject\scm\xfx\香薰机\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\香薰机\main.c"
	line	286
global __ptext20
__ptext20:	;psect for function _fan_handle
psect	text20
	file	"C:\mcuproject\scm\xfx\香薰机\main.c"
	line	286
	global	__size_of_fan_handle
	__size_of_fan_handle	equ	__end_of_fan_handle-_fan_handle
	
_fan_handle:	
;incstack = 0
	opt	stack 5
; Regs used in _fan_handle: [wreg+status,2+status,0]
	line	288
	
l9506:	
;main.c: 288: if(work_mod)
	movf	((_work_mod)),w
	btfsc	status,2
	goto	u4261
	goto	u4260
u4261:
	goto	l2334
u4260:
	line	290
	
l9508:	
;main.c: 289: {
;main.c: 290: {RA6=1;};
	bsf	(46/8),(46)&7	;volatile
	line	291
;main.c: 291: }
	goto	l2336
	line	292
	
l2334:	
	line	294
;main.c: 292: else
;main.c: 293: {
;main.c: 294: {RA6=0;};
	bcf	(46/8),(46)&7	;volatile
	line	296
	
l2336:	
	return
	opt stack 0
GLOBAL	__end_of_fan_handle
	__end_of_fan_handle:
	signat	_fan_handle,89
	global	_drive_data_init

;; *************** function _drive_data_init *****************
;; Defined at:
;;		line 148 in file "C:\mcuproject\scm\xfx\香薰机\drive.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\香薰机\drive.c"
	line	148
global __ptext21
__ptext21:	;psect for function _drive_data_init
psect	text21
	file	"C:\mcuproject\scm\xfx\香薰机\drive.c"
	line	148
	global	__size_of_drive_data_init
	__size_of_drive_data_init	equ	__end_of_drive_data_init-_drive_data_init
	
_drive_data_init:	
;incstack = 0
	opt	stack 5
; Regs used in _drive_data_init: [status,2]
	line	151
	
l9366:	
;drive.c: 151: time_125us_cnt=0;
	clrf	(_time_125us_cnt)
	line	152
;drive.c: 152: time_10ms_flg=0;
	clrf	(_time_10ms_flg)
	line	153
;drive.c: 153: fog_time_125us_cnt=0;
	clrf	(_fog_time_125us_cnt)
	line	154
;drive.c: 157: led_drive_cnt=0;
	clrf	(_fog_time_5ms_flg)
	line	158
;drive.c: 158: ledr_pecent=0;
	clrf	(_ledr_pecent)
	line	159
;drive.c: 159: ledg_pecent=0;
	clrf	(_ledg_pecent)
	line	160
;drive.c: 160: ledb_pecent=0;
	clrf	(_ledb_pecent)
	line	163
;drive.c: 166: io_read_buff=0;
	clrf	(_fog_drive_mod)
	line	167
	
l4771:	
	return
	opt stack 0
GLOBAL	__end_of_drive_data_init
	__end_of_drive_data_init:
	signat	_drive_data_init,89
	global	_data_init

;; *************** function _data_init *****************
;; Defined at:
;;		line 114 in file "C:\mcuproject\scm\xfx\香薰机\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\香薰机\main.c"
	line	114
global __ptext22
__ptext22:	;psect for function _data_init
psect	text22
	file	"C:\mcuproject\scm\xfx\香薰机\main.c"
	line	114
	global	__size_of_data_init
	__size_of_data_init	equ	__end_of_data_init-_data_init
	
_data_init:	
;incstack = 0
	opt	stack 5
; Regs used in _data_init: [wreg+status,2]
	line	117
	
l9352:	
;main.c: 117: btn_work_cnt=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_btn_work_cnt)
	line	118
;main.c: 118: btn_led_cnt=0;
	clrf	(_btn_led_cnt)
	line	119
;main.c: 119: btn_fog_cnt=0;
	clrf	(_btn_fog_cnt)
	line	122
;main.c: 122: work_mod=0;
	clrf	(_work_mod)
	line	123
;main.c: 123: led_mod=0;
	clrf	(_led_mod)
	line	124
;main.c: 124: fog_mod=0;
	clrf	(_fog_mod)
	line	127
;main.c: 127: led_breath_cnt=0;
	clrf	(_led_breath_cnt)
	line	128
;main.c: 128: led_breath_way=0;
	clrf	(_led_breath_way)
	line	129
;main.c: 129: ledr_breath_duty=0;
	clrf	(_ledr_breath_duty)
	line	130
;main.c: 130: ledg_breath_duty=0;
	clrf	(_ledg_breath_duty)
	line	131
;main.c: 131: ledb_breath_duty=0;
	clrf	(_ledb_breath_duty)
	line	133
;main.c: 133: led_mod1_flg=0;
	clrf	(_led_mod1_flg)
	line	134
;main.c: 134: led_mod2_flg=0;
	clrf	(_led_mod2_flg)
	line	135
;main.c: 135: led_mod3_flg=0;
	clrf	(_led_mod3_flg)
	line	136
;main.c: 136: led_mod4_flg=0;
	clrf	(_led_mod4_flg)
	line	137
;main.c: 137: led_scan_delay=0;
	clrf	(_led_scan_delay)
	line	140
	
l9354:	
;main.c: 140: beep_cnt=26;
	movlw	low(01Ah)
	movwf	(_beep_cnt)
	line	141
	
l9356:	
;main.c: 141: beep_flg=0;
	clrf	(_beep_flg)
	line	144
	
l9358:	
;main.c: 144: fog_status_buff=0;
	clrf	(_fog_status_buff)
	line	145
	
l9360:	
;main.c: 146: fog_erro_cnt=0;
	clrf	(_fog_erro_flg)
	line	149
	
l9362:	
;main.c: 149: timing_10ms_cnt=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_timing_10ms_cnt)^080h
	clrf	(_timing_10ms_cnt+1)^080h
	line	150
	
l9364:	
;main.c: 150: timing_1min_cnt=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_timing_1min_cnt)
	line	151
;main.c: 151: timing_set_num=60;
	movlw	low(03Ch)
	movwf	(_timing_set_num)
	line	152
	
l2302:	
	return
	opt stack 0
GLOBAL	__end_of_data_init
	__end_of_data_init:
	signat	_data_init,89
	global	_button_scan

;; *************** function _button_scan *****************
;; Defined at:
;;		line 158 in file "C:\mcuproject\scm\xfx\香薰机\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	158
global __ptext23
__ptext23:	;psect for function _button_scan
psect	text23
	file	"C:\mcuproject\scm\xfx\香薰机\main.c"
	line	158
	global	__size_of_button_scan
	__size_of_button_scan	equ	__end_of_button_scan-_button_scan
	
_button_scan:	
;incstack = 0
	opt	stack 5
; Regs used in _button_scan: [wreg+status,2+status,0]
	line	164
	
l9398:	
;main.c: 164: if(!RB2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7	;volatile
	goto	u4031
	goto	u4030
u4031:
	goto	l9416
u4030:
	line	166
	
l9400:	
;main.c: 165: {
;main.c: 166: if(btn_work_cnt < 250)
	movlw	low(0FAh)
	subwf	(_btn_work_cnt),w
	skipnc
	goto	u4041
	goto	u4040
u4041:
	goto	l9404
u4040:
	line	168
	
l9402:	
;main.c: 167: {
;main.c: 168: btn_work_cnt++;
	incf	(_btn_work_cnt),f
	line	170
	
l9404:	
;main.c: 169: }
;main.c: 170: if(btn_work_cnt == 100)
		movlw	100
	xorwf	((_btn_work_cnt)),w
	btfss	status,2
	goto	u4051
	goto	u4050
u4051:
	goto	l9436
u4050:
	line	172
	
l9406:	
;main.c: 171: {
;main.c: 172: if(work_mod)
	movf	((_work_mod)),w
	btfsc	status,2
	goto	u4061
	goto	u4060
u4061:
	goto	l9436
u4060:
	line	174
	
l9408:	
;main.c: 173: {
;main.c: 174: work_mod=0;
	clrf	(_work_mod)
	line	175
;main.c: 175: led_mod=0;
	clrf	(_led_mod)
	line	176
	
l9410:	
;main.c: 176: beep_cnt=26;
	movlw	low(01Ah)
	movwf	(_beep_cnt)
	line	177
	
l9412:	
;main.c: 177: timing_10ms_cnt=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_timing_10ms_cnt)^080h
	clrf	(_timing_10ms_cnt+1)^080h
	line	178
	
l9414:	
;main.c: 178: timing_1min_cnt=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_timing_1min_cnt)
	goto	l9436
	line	184
	
l9416:	
;main.c: 182: else
;main.c: 183: {
;main.c: 184: if((btn_work_cnt > 5) && (btn_work_cnt < 100))
	movlw	low(06h)
	subwf	(_btn_work_cnt),w
	skipc
	goto	u4071
	goto	u4070
u4071:
	goto	l9434
u4070:
	
l9418:	
	movlw	low(064h)
	subwf	(_btn_work_cnt),w
	skipnc
	goto	u4081
	goto	u4080
u4081:
	goto	l9434
u4080:
	line	186
	
l9420:	
;main.c: 185: {
;main.c: 186: work_mod++;
	incf	(_work_mod),f
	line	187
	
l9422:	
;main.c: 187: if(work_mod > 4)
	movlw	low(05h)
	subwf	(_work_mod),w
	skipc
	goto	u4091
	goto	u4090
u4091:
	goto	l9428
u4090:
	line	189
	
l9424:	
;main.c: 188: {
;main.c: 189: work_mod=0;
	clrf	(_work_mod)
	line	190
;main.c: 190: led_mod=0;
	clrf	(_led_mod)
	line	191
	
l9426:	
;main.c: 191: beep_cnt=26;
	movlw	low(01Ah)
	movwf	(_beep_cnt)
	line	192
;main.c: 192: }
	goto	l9430
	line	195
	
l9428:	
;main.c: 193: else
;main.c: 194: {
;main.c: 195: beep_cnt=8;
	movlw	low(08h)
	movwf	(_beep_cnt)
	line	197
	
l9430:	
;main.c: 196: }
;main.c: 197: timing_10ms_cnt=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_timing_10ms_cnt)^080h
	clrf	(_timing_10ms_cnt+1)^080h
	line	198
	
l9432:	
;main.c: 198: timing_1min_cnt=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_timing_1min_cnt)
	line	200
	
l9434:	
;main.c: 199: }
;main.c: 200: btn_work_cnt=0;
	clrf	(_btn_work_cnt)
	line	203
	
l9436:	
;main.c: 201: }
;main.c: 203: if(!RB0)
	btfsc	(48/8),(48)&7	;volatile
	goto	u4101
	goto	u4100
u4101:
	goto	l9450
u4100:
	line	205
	
l9438:	
;main.c: 204: {
;main.c: 205: if(btn_led_cnt < 250)
	movlw	low(0FAh)
	subwf	(_btn_led_cnt),w
	skipnc
	goto	u4111
	goto	u4110
u4111:
	goto	l9442
u4110:
	line	207
	
l9440:	
;main.c: 206: {
;main.c: 207: btn_led_cnt++;
	incf	(_btn_led_cnt),f
	line	209
	
l9442:	
;main.c: 208: }
;main.c: 209: if(btn_led_cnt == 100)
		movlw	100
	xorwf	((_btn_led_cnt)),w
	btfss	status,2
	goto	u4121
	goto	u4120
u4121:
	goto	l9474
u4120:
	line	211
	
l9444:	
;main.c: 210: {
;main.c: 211: if(led_mod)
	movf	((_led_mod)),w
	btfsc	status,2
	goto	u4131
	goto	u4130
u4131:
	goto	l9474
u4130:
	line	213
	
l9446:	
;main.c: 212: {
;main.c: 213: led_mod=0;
	clrf	(_led_mod)
	line	214
	
l9448:	
;main.c: 214: beep_cnt=26;
	movlw	low(01Ah)
	movwf	(_beep_cnt)
	goto	l9474
	line	220
	
l9450:	
;main.c: 218: else
;main.c: 219: {
;main.c: 220: if((btn_led_cnt > 5) && (btn_led_cnt < 100))
	movlw	low(06h)
	subwf	(_btn_led_cnt),w
	skipc
	goto	u4141
	goto	u4140
u4141:
	goto	l9472
u4140:
	
l9452:	
	movlw	low(064h)
	subwf	(_btn_led_cnt),w
	skipnc
	goto	u4151
	goto	u4150
u4151:
	goto	l9472
u4150:
	line	222
	
l9454:	
;main.c: 221: {
;main.c: 222: led_mod++;
	incf	(_led_mod),f
	line	223
	
l9456:	
;main.c: 223: if(led_mod > 16)
	movlw	low(011h)
	subwf	(_led_mod),w
	skipc
	goto	u4161
	goto	u4160
u4161:
	goto	l9462
u4160:
	line	225
	
l9458:	
;main.c: 224: {
;main.c: 225: led_mod=0;
	clrf	(_led_mod)
	line	226
	
l9460:	
;main.c: 226: beep_cnt=26;
	movlw	low(01Ah)
	movwf	(_beep_cnt)
	line	228
	
l9462:	
;main.c: 227: }
;main.c: 228: if(led_mod == 1)
		decf	((_led_mod)),w
	btfss	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l9472
u4170:
	line	230
	
l9464:	
;main.c: 229: {
;main.c: 230: led_breath_cnt=0;
	clrf	(_led_breath_cnt)
	line	231
;main.c: 231: led_breath_way=0;
	clrf	(_led_breath_way)
	line	232
	
l9466:	
;main.c: 232: ledr_breath_duty=100;
	movlw	low(064h)
	movwf	(_ledr_breath_duty)
	line	233
	
l9468:	
;main.c: 233: ledg_breath_duty=100;
	movlw	low(064h)
	movwf	(_ledg_breath_duty)
	line	234
	
l9470:	
;main.c: 234: ledb_breath_duty=100;
	movlw	low(064h)
	movwf	(_ledb_breath_duty)
	line	237
	
l9472:	
;main.c: 235: }
;main.c: 236: }
;main.c: 237: btn_led_cnt=0;
	clrf	(_btn_led_cnt)
	line	240
	
l9474:	
;main.c: 238: }
;main.c: 240: if(!RB1)
	btfsc	(49/8),(49)&7	;volatile
	goto	u4181
	goto	u4180
u4181:
	goto	l9496
u4180:
	line	242
	
l9476:	
;main.c: 241: {
;main.c: 242: if(btn_fog_cnt < 250)
	movlw	low(0FAh)
	subwf	(_btn_fog_cnt),w
	skipnc
	goto	u4191
	goto	u4190
u4191:
	goto	l9480
u4190:
	line	244
	
l9478:	
;main.c: 243: {
;main.c: 244: btn_fog_cnt++;
	incf	(_btn_fog_cnt),f
	line	246
	
l9480:	
;main.c: 245: }
;main.c: 246: if(btn_fog_cnt == 5)
		movlw	5
	xorwf	((_btn_fog_cnt)),w
	btfss	status,2
	goto	u4201
	goto	u4200
u4201:
	goto	l9498
u4200:
	line	248
	
l9482:	
;main.c: 247: {
;main.c: 248: if(work_mod)
	movf	((_work_mod)),w
	btfsc	status,2
	goto	u4211
	goto	u4210
u4211:
	goto	l9498
u4210:
	line	250
	
l9484:	
;main.c: 249: {
;main.c: 250: fog_mod++;
	incf	(_fog_mod),f
	line	251
	
l9486:	
;main.c: 251: if(fog_mod > 1)
	movlw	low(02h)
	subwf	(_fog_mod),w
	skipc
	goto	u4221
	goto	u4220
u4221:
	goto	l9490
u4220:
	line	253
	
l9488:	
;main.c: 252: {
;main.c: 253: fog_mod=0;
	clrf	(_fog_mod)
	line	255
	
l9490:	
;main.c: 254: }
;main.c: 255: if(!fog_mod)
	movf	((_fog_mod)),w
	btfss	status,2
	goto	u4231
	goto	u4230
u4231:
	goto	l9494
u4230:
	line	257
	
l9492:	
;main.c: 256: {
;main.c: 257: beep_cnt=8;
	movlw	low(08h)
	movwf	(_beep_cnt)
	line	258
;main.c: 258: }
	goto	l9498
	line	261
	
l9494:	
;main.c: 259: else
;main.c: 260: {
;main.c: 261: beep_cnt=26;
	movlw	low(01Ah)
	movwf	(_beep_cnt)
	goto	l9498
	line	268
	
l9496:	
;main.c: 266: else
;main.c: 267: {
;main.c: 268: btn_fog_cnt=0;
	clrf	(_btn_fog_cnt)
	line	271
	
l9498:	
;main.c: 269: }
;main.c: 271: if(fog_erro_flg)
	movf	((_fog_erro_flg)),w
	btfsc	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l2331
u4240:
	line	273
	
l9500:	
;main.c: 272: {
;main.c: 273: if(work_mod)
	movf	((_work_mod)),w
	btfsc	status,2
	goto	u4251
	goto	u4250
u4251:
	goto	l2331
u4250:
	line	275
	
l9502:	
;main.c: 274: {
;main.c: 275: work_mod=0;
	clrf	(_work_mod)
	line	276
;main.c: 276: led_mod=0;
	clrf	(_led_mod)
	line	277
	
l9504:	
;main.c: 277: beep_cnt=8;
	movlw	low(08h)
	movwf	(_beep_cnt)
	line	280
	
l2331:	
	return
	opt stack 0
GLOBAL	__end_of_button_scan
	__end_of_button_scan:
	signat	_button_scan,89
	global	_beep_handle

;; *************** function _beep_handle *****************
;; Defined at:
;;		line 326 in file "C:\mcuproject\scm\xfx\香薰机\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	326
global __ptext24
__ptext24:	;psect for function _beep_handle
psect	text24
	file	"C:\mcuproject\scm\xfx\香薰机\main.c"
	line	326
	global	__size_of_beep_handle
	__size_of_beep_handle	equ	__end_of_beep_handle-_beep_handle
	
_beep_handle:	
;incstack = 0
	opt	stack 5
; Regs used in _beep_handle: [wreg+status,2+status,0]
	line	328
	
l9520:	
;main.c: 328: if(beep_cnt)
	movf	((_beep_cnt)),w
	btfsc	status,2
	goto	u4291
	goto	u4290
u4291:
	goto	l9530
u4290:
	line	330
	
l9522:	
;main.c: 329: {
;main.c: 330: beep_cnt--;
	decf	(_beep_cnt),f
	line	331
	
l9524:	
;main.c: 331: if(beep_cnt >= 18)
	movlw	low(012h)
	subwf	(_beep_cnt),w
	skipc
	goto	u4301
	goto	u4300
u4301:
	goto	l9528
u4300:
	line	333
	
l9526:	
;main.c: 332: {
;main.c: 333: beep_flg=1;
	clrf	(_beep_flg)
	incf	(_beep_flg),f
	line	334
;main.c: 334: }
	goto	l9534
	line	335
	
l9528:	
;main.c: 335: else if(beep_cnt >= 8)
	movlw	low(08h)
	subwf	(_beep_cnt),w
	skipc
	goto	u4311
	goto	u4310
u4311:
	goto	l9526
u4310:
	line	337
	
l9530:	
;main.c: 336: {
;main.c: 337: beep_flg=0;
	clrf	(_beep_flg)
	line	349
;main.c: 338: }
	
l9534:	
;main.c: 347: }
;main.c: 349: if(beep_flg)
	movf	((_beep_flg)),w
	btfsc	status,2
	goto	u4321
	goto	u4320
u4321:
	goto	l2352
u4320:
	line	351
	
l9536:	
;main.c: 350: {
;main.c: 351: {PWMD4L=62;PWM4EN=1;};
	movlw	low(03Eh)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(407)^0180h	;volatile
	
l9538:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	(2108/8)^0100h,(2108)&7	;volatile
	line	352
;main.c: 352: }
	goto	l2354
	line	353
	
l2352:	
	line	355
;main.c: 353: else
;main.c: 354: {
;main.c: 355: {PWM4EN=0;RA5=0;};
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2108/8)^0100h,(2108)&7	;volatile
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7	;volatile
	line	357
	
l2354:	
	return
	opt stack 0
GLOBAL	__end_of_beep_handle
	__end_of_beep_handle:
	signat	_beep_handle,89
	global	_Sys_set

;; *************** function _Sys_set *****************
;; Defined at:
;;		line 174 in file "C:\mcuproject\scm\xfx\香薰机\drive.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\香薰机\drive.c"
	line	174
global __ptext25
__ptext25:	;psect for function _Sys_set
psect	text25
	file	"C:\mcuproject\scm\xfx\香薰机\drive.c"
	line	174
	global	__size_of_Sys_set
	__size_of_Sys_set	equ	__end_of_Sys_set-_Sys_set
	
_Sys_set:	
;incstack = 0
	opt	stack 5
; Regs used in _Sys_set: [wreg+status,2+status,0]
	line	177
	
l9368:	
;drive.c: 177: WDTCON = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(261)^0100h	;volatile
	line	180
	
l9370:	
;drive.c: 180: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	181
	
l9372:	
;drive.c: 181: PIE1 = 0B00000010;
	movlw	low(02h)
	movwf	(140)^080h	;volatile
	line	182
	
l9374:	
;drive.c: 182: PR2 = 125;
	movlw	low(07Dh)
	movwf	(146)^080h	;volatile
	line	183
	
l9376:	
;drive.c: 183: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	184
	
l9378:	
;drive.c: 184: if(5 != T2CON)
		movlw	5
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((18)),w	;volatile
	btfsc	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l4775
u3990:
	line	186
	
l9380:	
;drive.c: 185: {
;drive.c: 186: T2CON = 5;
	movlw	low(05h)
	movwf	(18)	;volatile
	line	188
	
l4775:	
	return
	opt stack 0
GLOBAL	__end_of_Sys_set
	__end_of_Sys_set:
	signat	_Sys_set,89
	global	_time0

;; *************** function _time0 *****************
;; Defined at:
;;		line 28 in file "C:\mcuproject\scm\xfx\香薰机\drive.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Set_Pwm_Onoff
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	28
global __ptext26
__ptext26:	;psect for function _time0
psect	text26
	file	"C:\mcuproject\scm\xfx\香薰机\drive.c"
	line	28
	global	__size_of_time0
	__size_of_time0	equ	__end_of_time0-_time0
	
_time0:	
;incstack = 0
	opt	stack 1
; Regs used in _time0: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_time0+0)
	movf	pclath,w
	movwf	(??_time0+1)
	ljmp	_time0
psect	text26
	line	30
	
i1l8670:	
;drive.c: 30: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u320_21
	goto	u320_20
u320_21:
	goto	i1l8700
u320_20:
	line	32
	
i1l8672:	
;drive.c: 31: {
;drive.c: 32: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	35
	
i1l8674:	
;drive.c: 35: if(!fog_drive_mod)
	movf	((_fog_drive_mod)),w
	btfss	status,2
	goto	u321_21
	goto	u321_20
u321_21:
	goto	i1l8678
u321_20:
	line	37
	
i1l8676:	
;drive.c: 36: {
;drive.c: 37: Set_Pwm_Onoff(0);
	movlw	low(0)
	fcall	_Set_Pwm_Onoff
	line	38
;drive.c: 38: }
	goto	i1l8684
	line	39
	
i1l8678:	
;drive.c: 39: else if(fog_drive_mod == 1)
		decf	((_fog_drive_mod)),w
	btfss	status,2
	goto	u322_21
	goto	u322_20
u322_21:
	goto	i1l8682
u322_20:
	line	41
	
i1l8680:	
;drive.c: 40: {
;drive.c: 41: Set_Pwm_Onoff(20);
	movlw	low(014h)
	fcall	_Set_Pwm_Onoff
	line	42
;drive.c: 42: }
	goto	i1l8684
	line	45
	
i1l8682:	
;drive.c: 43: else
;drive.c: 44: {
;drive.c: 45: Set_Pwm_Onoff(30);
	movlw	low(01Eh)
	fcall	_Set_Pwm_Onoff
	line	48
	
i1l8684:	
;drive.c: 46: }
;drive.c: 48: fog_time_125us_cnt++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_fog_time_125us_cnt),f
	line	49
	
i1l8686:	
;drive.c: 49: if(fog_time_125us_cnt >= 40)
	movlw	low(028h)
	subwf	(_fog_time_125us_cnt),w
	skipc
	goto	u323_21
	goto	u323_20
u323_21:
	goto	i1l8692
u323_20:
	line	51
	
i1l8688:	
;drive.c: 50: {
;drive.c: 51: fog_time_125us_cnt=0;
	clrf	(_fog_time_125us_cnt)
	line	52
	
i1l8690:	
;drive.c: 52: fog_time_5ms_flg=1;
	clrf	(_fog_time_5ms_flg)
	incf	(_fog_time_5ms_flg),f
	line	55
	
i1l8692:	
;drive.c: 53: }
;drive.c: 55: time_125us_cnt++;
	incf	(_time_125us_cnt),f
	line	56
	
i1l8694:	
;drive.c: 56: if(time_125us_cnt >= 80)
	movlw	low(050h)
	subwf	(_time_125us_cnt),w
	skipc
	goto	u324_21
	goto	u324_20
u324_21:
	goto	i1l4765
u324_20:
	line	58
	
i1l8696:	
;drive.c: 57: {
;drive.c: 58: time_125us_cnt=0;
	clrf	(_time_125us_cnt)
	line	59
	
i1l8698:	
;drive.c: 59: time_10ms_flg=1;
	clrf	(_time_10ms_flg)
	incf	(_time_10ms_flg),f
	goto	i1l4765
	line	64
	
i1l8700:	
;drive.c: 62: else
;drive.c: 63: {
;drive.c: 64: PIR1 = 0;
	clrf	(12)	;volatile
	line	65
;drive.c: 65: PIR2 = 0;
	clrf	(13)	;volatile
	line	67
	
i1l4765:	
	movf	(??_time0+1),w
	movwf	pclath
	swapf	(??_time0+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_time0
	__end_of_time0:
	signat	_time0,89
	global	_Set_Pwm_Onoff

;; *************** function _Set_Pwm_Onoff *****************
;; Defined at:
;;		line 273 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;  fun             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  fun             1    2[COMMON] unsigned char 
;;  funod           1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_time0
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	273
global __ptext27
__ptext27:	;psect for function _Set_Pwm_Onoff
psect	text27
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	273
	global	__size_of_Set_Pwm_Onoff
	__size_of_Set_Pwm_Onoff	equ	__end_of_Set_Pwm_Onoff-_Set_Pwm_Onoff
	
_Set_Pwm_Onoff:	
;incstack = 0
	opt	stack 1
; Regs used in _Set_Pwm_Onoff: [wreg+status,2+status,0]
;Set_Pwm_Onoff@fun stored from wreg
	movwf	(Set_Pwm_Onoff@fun)
	line	283
	
i1l8548:	
;WHQ_TP_ZPGS_V1.2.c: 275: unsigned char funod;
;WHQ_TP_ZPGS_V1.2.c: 277: static unsigned char pwmcl = 0;
;WHQ_TP_ZPGS_V1.2.c: 278: static bit adonf = 0;
;WHQ_TP_ZPGS_V1.2.c: 279: static unsigned char cur_adcl = 0;
;WHQ_TP_ZPGS_V1.2.c: 280: static unsigned int cursumt = 0;
;WHQ_TP_ZPGS_V1.2.c: 281: static unsigned char funold;
;WHQ_TP_ZPGS_V1.2.c: 283: PFGCON |= 0x04;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(283)^0100h+(2/8),(2)&7	;volatile
	line	284
;WHQ_TP_ZPGS_V1.2.c: 284: TRISA &= 0xfe;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	285
;WHQ_TP_ZPGS_V1.2.c: 285: PORTA = (unsigned char)(PORTA & 0xfe);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(0/8),(0)&7	;volatile
	line	286
	
i1l8550:	
;WHQ_TP_ZPGS_V1.2.c: 286: if(0 != pfgonetemp.pfgtemp)
	movf	((_pfgonetemp)),w
iorwf	((_pfgonetemp+1)),w
	btfsc	status,2
	goto	u300_21
	goto	u300_20
u300_21:
	goto	i1l5690
u300_20:
	line	288
	
i1l8552:	
;WHQ_TP_ZPGS_V1.2.c: 287: {
;WHQ_TP_ZPGS_V1.2.c: 288: if(PfgChangef)
	btfss	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	goto	u301_21
	goto	u301_20
u301_21:
	goto	i1l8572
u301_20:
	line	290
	
i1l8554:	
;WHQ_TP_ZPGS_V1.2.c: 289: {
;WHQ_TP_ZPGS_V1.2.c: 290: PfgChangef = 0;
	bcf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	291
;WHQ_TP_ZPGS_V1.2.c: 291: if((0 == (pfgonetemp.pfgonebyte.pfgtemph & 0x80)) && ((PFGCON&0x80) != 0))
	btfsc	0+(_pfgonetemp)+01h,(7)&7
	goto	u302_21
	goto	u302_20
u302_21:
	goto	i1l8562
u302_20:
	
i1l8556:	
	bsf	status, 6	;RP1=1, select bank2
	btfss	(283)^0100h,(7)&7	;volatile
	goto	u303_21
	goto	u303_20
u303_21:
	goto	i1l8562
u303_20:
	line	293
	
i1l8558:	
;WHQ_TP_ZPGS_V1.2.c: 292: {
;WHQ_TP_ZPGS_V1.2.c: 293: PFGCON1 &= ~0x80;
	bcf	(286)^0100h+(7/8),(7)&7	;volatile
	line	294
	
i1l8560:	
;WHQ_TP_ZPGS_V1.2.c: 294: PFGSTOP = 0xfa;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	295
;WHQ_TP_ZPGS_V1.2.c: 295: }
	goto	i1l8572
	line	298
	
i1l8562:	
;WHQ_TP_ZPGS_V1.2.c: 296: else
;WHQ_TP_ZPGS_V1.2.c: 297: {
;WHQ_TP_ZPGS_V1.2.c: 298: if((pfgonetemp.pfgonebyte.pfgtemph & 0x03) >= (PFGCON & 0x03))
	movlw	low(03h)
	andwf	0+(_pfgonetemp)+01h,w
	movwf	(??_Set_Pwm_Onoff+0)+0
	bsf	status, 6	;RP1=1, select bank2
	movf	(283)^0100h,w	;volatile
	andlw	03h
	subwf	0+(??_Set_Pwm_Onoff+0)+0,w
	skipc
	goto	u304_21
	goto	u304_20
u304_21:
	goto	i1l8566
u304_20:
	line	300
	
i1l8564:	
;WHQ_TP_ZPGS_V1.2.c: 299: {
;WHQ_TP_ZPGS_V1.2.c: 300: PFGADJ = pfgonetemp.pfgonebyte.pfgtempl;
	movf	(_pfgonetemp),w
	movwf	(281)^0100h	;volatile
	line	301
;WHQ_TP_ZPGS_V1.2.c: 301: PFGCON = pfgonetemp.pfgonebyte.pfgtemph;
	movf	0+(_pfgonetemp)+01h,w
	movwf	(283)^0100h	;volatile
	line	302
;WHQ_TP_ZPGS_V1.2.c: 302: }
	goto	i1l8572
	line	305
	
i1l8566:	
;WHQ_TP_ZPGS_V1.2.c: 303: else
;WHQ_TP_ZPGS_V1.2.c: 304: {
;WHQ_TP_ZPGS_V1.2.c: 305: PFGCON = pfgonetemp.pfgonebyte.pfgtemph;
	movf	0+(_pfgonetemp)+01h,w
	movwf	(283)^0100h	;volatile
	line	306
;WHQ_TP_ZPGS_V1.2.c: 306: PFGADJ = pfgonetemp.pfgonebyte.pfgtempl;
	movf	(_pfgonetemp),w
	movwf	(281)^0100h	;volatile
	line	318
	
i1l8572:	
;WHQ_TP_ZPGS_V1.2.c: 315: }
;WHQ_TP_ZPGS_V1.2.c: 316: }
;WHQ_TP_ZPGS_V1.2.c: 318: if(0 == fun)
	movf	((Set_Pwm_Onoff@fun)),w
	btfss	status,2
	goto	u305_21
	goto	u305_20
u305_21:
	goto	i1l5672
u305_20:
	line	321
	
i1l8574:	
;WHQ_TP_ZPGS_V1.2.c: 319: {
;WHQ_TP_ZPGS_V1.2.c: 321: pfgonetemp.pfgonebyte.pfgtemph &= ~0x80;
	bcf	0+(_pfgonetemp)+01h+(7/8),(7)&7
	line	322
;WHQ_TP_ZPGS_V1.2.c: 322: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	323
	
i1l8576:	
;WHQ_TP_ZPGS_V1.2.c: 323: cur_addat = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_cur_addat)	;volatile
	line	324
	
i1l8578:	
;WHQ_TP_ZPGS_V1.2.c: 324: curokf = 0;
	bcf	(_curokf/8),(_curokf)&7	;volatile
	line	325
;WHQ_TP_ZPGS_V1.2.c: 325: pwmcl = 0;
	clrf	(Set_Pwm_Onoff@pwmcl)
	line	326
;WHQ_TP_ZPGS_V1.2.c: 326: cursumt = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Set_Pwm_Onoff@cursumt)^080h
	clrf	(Set_Pwm_Onoff@cursumt+1)^080h
	line	327
	
i1l8580:	
;WHQ_TP_ZPGS_V1.2.c: 327: on_off = 0;
	bcf	(_on_off/8),(_on_off)&7	;volatile
	line	328
;WHQ_TP_ZPGS_V1.2.c: 328: }
	goto	i1l5690
	line	329
	
i1l5672:	
	line	332
;WHQ_TP_ZPGS_V1.2.c: 329: else
;WHQ_TP_ZPGS_V1.2.c: 330: {
;WHQ_TP_ZPGS_V1.2.c: 332: on_off = 1;
	bsf	(_on_off/8),(_on_off)&7	;volatile
	line	334
;WHQ_TP_ZPGS_V1.2.c: 334: if(!pwmtf)
	btfsc	(_pwmtf/8),(_pwmtf)&7	;volatile
	goto	u306_21
	goto	u306_20
u306_21:
	goto	i1l8584
u306_20:
	file	"C:\mcuproject\scm\xfx\香薰机\WHQ_TP_ZPGS.h"
	line	190
	
i1l8582:	
	movlw	low(018h)
	movwf	(Set_Pwm_Onoff@funod)
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	337
;WHQ_TP_ZPGS_V1.2.c: 337: funold = funod;
	movlw	low(018h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Set_Pwm_Onoff@funold)
	file	"C:\mcuproject\scm\xfx\香薰机\WHQ_TP_ZPGS.h"
	line	338
;WHQ_TP_ZPGS_V1.2.c: 338: }
	goto	i1l8590
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	341
	
i1l8584:	
	movlw	low(031h)
	subwf	(Set_Pwm_Onoff@fun),w
	skipnc
	goto	u307_21
	goto	u307_20
u307_21:
	goto	i1l8588
u307_20:
	line	343
	
i1l8586:	
;WHQ_TP_ZPGS_V1.2.c: 342: {
;WHQ_TP_ZPGS_V1.2.c: 343: funod = fun;
	movf	(Set_Pwm_Onoff@fun),w
	movwf	(Set_Pwm_Onoff@funod)
	line	344
;WHQ_TP_ZPGS_V1.2.c: 344: funold = fun;
	movf	(Set_Pwm_Onoff@fun),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Set_Pwm_Onoff@funold)
	line	345
;WHQ_TP_ZPGS_V1.2.c: 345: }
	goto	i1l8590
	line	347
	
i1l8588:	
;WHQ_TP_ZPGS_V1.2.c: 346: else
;WHQ_TP_ZPGS_V1.2.c: 347: funod = funold;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Set_Pwm_Onoff@funold),w
	movwf	(Set_Pwm_Onoff@funod)
	line	349
	
i1l8590:	
		movlw	48
	xorwf	((Set_Pwm_Onoff@funod)),w
	btfss	status,2
	goto	u308_21
	goto	u308_20
u308_21:
	goto	i1l8594
u308_20:
	line	351
	
i1l8592:	
;WHQ_TP_ZPGS_V1.2.c: 350: {
;WHQ_TP_ZPGS_V1.2.c: 351: ((pfgonetemp.pfgtemp) |= (1 << (15)));
	bsf	(_pfgonetemp)+(15/8),(15)&7
	line	352
;WHQ_TP_ZPGS_V1.2.c: 352: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	353
;WHQ_TP_ZPGS_V1.2.c: 353: }
	goto	i1l8608
	line	356
	
i1l8594:	
;WHQ_TP_ZPGS_V1.2.c: 354: else
;WHQ_TP_ZPGS_V1.2.c: 355: {
;WHQ_TP_ZPGS_V1.2.c: 356: pwmcl++;
	incf	(Set_Pwm_Onoff@pwmcl),f
	line	357
	
i1l8596:	
;WHQ_TP_ZPGS_V1.2.c: 357: if(pwmcl <= funod)
	movf	(Set_Pwm_Onoff@pwmcl),w
	subwf	(Set_Pwm_Onoff@funod),w
	skipc
	goto	u309_21
	goto	u309_20
u309_21:
	goto	i1l5680
u309_20:
	line	359
	
i1l8598:	
;WHQ_TP_ZPGS_V1.2.c: 358: {
;WHQ_TP_ZPGS_V1.2.c: 359: if((((pfgonetemp.pfgtemp) & (1 << (15))) == 0))
	btfsc	(_pfgonetemp+1),(15)&7
	goto	u310_21
	goto	u310_20
u310_21:
	goto	i1l8592
u310_20:
	line	360
	
i1l8600:	
;WHQ_TP_ZPGS_V1.2.c: 360: adonf = 0;
	bcf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	goto	i1l8592
	line	364
	
i1l5680:	
	line	366
;WHQ_TP_ZPGS_V1.2.c: 364: else
;WHQ_TP_ZPGS_V1.2.c: 365: {
;WHQ_TP_ZPGS_V1.2.c: 366: if(((pfgonetemp.pfgtemp) & (1 << (15))))
	btfss	(_pfgonetemp+1),(15)&7
	goto	u311_21
	goto	u311_20
u311_21:
	goto	i1l5683
u311_20:
	line	367
	
i1l8602:	
;WHQ_TP_ZPGS_V1.2.c: 367: adonf = 0;
	bcf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	
i1l5683:	
	line	368
;WHQ_TP_ZPGS_V1.2.c: 368: pfgonetemp.pfgtemp &= ~0x8000;
	bcf	(_pfgonetemp)+(15/8),(15)&7
	line	369
;WHQ_TP_ZPGS_V1.2.c: 369: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	370
	
i1l8604:	
	movlw	low(030h)
	subwf	(Set_Pwm_Onoff@pwmcl),w
	skipc
	goto	u312_21
	goto	u312_20
u312_21:
	goto	i1l8608
u312_20:
	line	371
	
i1l8606:	
;WHQ_TP_ZPGS_V1.2.c: 371: pwmcl = 0;
	clrf	(Set_Pwm_Onoff@pwmcl)
	line	377
	
i1l8608:	
;WHQ_TP_ZPGS_V1.2.c: 372: }
;WHQ_TP_ZPGS_V1.2.c: 373: }
;WHQ_TP_ZPGS_V1.2.c: 377: if(0xff != fun)
		incf	((Set_Pwm_Onoff@fun)),w
	btfsc	status,2
	goto	u313_21
	goto	u313_20
u313_21:
	goto	i1l5685
u313_20:
	line	379
	
i1l8610:	
;WHQ_TP_ZPGS_V1.2.c: 378: {
;WHQ_TP_ZPGS_V1.2.c: 379: if(adonf&&((((ADCON0) & (1 << (1))) == 0)))
	btfss	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l8630
u314_20:
	
i1l8612:	
	btfsc	(31),(1)&7	;volatile
	goto	u315_21
	goto	u315_20
u315_21:
	goto	i1l8630
u315_20:
	line	381
	
i1l8614:	
;WHQ_TP_ZPGS_V1.2.c: 380: {
;WHQ_TP_ZPGS_V1.2.c: 381: adonf = 0;
	bcf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	line	382
	
i1l8616:	
;WHQ_TP_ZPGS_V1.2.c: 382: adonetemp.adonebyte.adtempl = ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_adonetemp)
	line	383
;WHQ_TP_ZPGS_V1.2.c: 383: adonetemp.adonebyte.adtemph = (unsigned char)(ADRESH&0x03);
	movf	(30),w	;volatile
	movwf	0+(_adonetemp)+01h
	
i1l8618:	
	movlw	low(03h)
	andwf	0+(_adonetemp)+01h,f
	line	384
	
i1l8620:	
;WHQ_TP_ZPGS_V1.2.c: 384: cursumt = adonetemp.adtemp + cursumt;
	movf	(_adonetemp),w
	bsf	status, 5	;RP0=1, select bank1
	addwf	(Set_Pwm_Onoff@cursumt)^080h,f
	skipnc
	incf	(Set_Pwm_Onoff@cursumt+1)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	(_adonetemp+1),w
	bsf	status, 5	;RP0=1, select bank1
	addwf	(Set_Pwm_Onoff@cursumt+1)^080h,f
	line	385
;WHQ_TP_ZPGS_V1.2.c: 385: if(++cur_adcl >= 32)
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(Set_Pwm_Onoff@cur_adcl),f
	subwf	((Set_Pwm_Onoff@cur_adcl)),w
	skipc
	goto	u316_21
	goto	u316_20
u316_21:
	goto	i1l8630
u316_20:
	line	387
	
i1l8622:	
;WHQ_TP_ZPGS_V1.2.c: 386: {
;WHQ_TP_ZPGS_V1.2.c: 387: cur_adcl = 0;
	clrf	(Set_Pwm_Onoff@cur_adcl)
	line	388
	
i1l8624:	
;WHQ_TP_ZPGS_V1.2.c: 388: cursum = cursumt;
	bsf	status, 5	;RP0=1, select bank1
	movf	(Set_Pwm_Onoff@cursumt+1)^080h,w
	movwf	(_cursum+1)^080h	;volatile
	movf	(Set_Pwm_Onoff@cursumt)^080h,w
	movwf	(_cursum)^080h	;volatile
	line	389
	
i1l8626:	
;WHQ_TP_ZPGS_V1.2.c: 389: cursumt = 0;
	clrf	(Set_Pwm_Onoff@cursumt)^080h
	clrf	(Set_Pwm_Onoff@cursumt+1)^080h
	line	390
	
i1l8628:	
;WHQ_TP_ZPGS_V1.2.c: 390: curokf = 1;
	bsf	(_curokf/8),(_curokf)&7	;volatile
	line	394
	
i1l8630:	
;WHQ_TP_ZPGS_V1.2.c: 391: }
;WHQ_TP_ZPGS_V1.2.c: 392: }
;WHQ_TP_ZPGS_V1.2.c: 394: if((PFGCON&0x80) != 0)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(283)^0100h,(7)&7	;volatile
	goto	u317_21
	goto	u317_20
u317_21:
	goto	i1l5673
u317_20:
	line	396
	
i1l8632:	
;WHQ_TP_ZPGS_V1.2.c: 395: {
;WHQ_TP_ZPGS_V1.2.c: 396: ADCON0 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(31)	;volatile
	line	397
	
i1l8634:	
;WHQ_TP_ZPGS_V1.2.c: 397: ADCON1 = 0x80;
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	398
	
i1l8636:	
	movlw	low(045h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	399
# 399 "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
NOP ;# 
	line	400
# 400 "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
NOP ;# 
psect	text27
	line	401
	
i1l8638:	
;WHQ_TP_ZPGS_V1.2.c: 401: adonf = 1;
	bsf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	line	402
	
i1l8640:	
;WHQ_TP_ZPGS_V1.2.c: 402: ((ADCON0) |= (1 << (1)));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(31)+(1/8),(1)&7	;volatile
	goto	i1l5690
	line	405
	
i1l5685:	
	line	407
;WHQ_TP_ZPGS_V1.2.c: 405: else
;WHQ_TP_ZPGS_V1.2.c: 406: {
;WHQ_TP_ZPGS_V1.2.c: 407: adonf = 0;
	bcf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	goto	i1l5690
	line	409
	
i1l5673:	
	line	411
	
i1l5690:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Pwm_Onoff
	__end_of_Set_Pwm_Onoff:
	signat	_Set_Pwm_Onoff,4217
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
