	R		EQU		H'082'
	FSRL	EQU		H'083'
	FSRH	EQU		H'084'

	STATUS	EQU		H'086'
		NT0		EQU	7
		NPD		EQU	6
		LVD36	EQU	5
		LVD24	EQU	4
		C		EQU	2
		DC		EQU	1
		Z		EQU	0

	P0M		EQU		H'0B8'
		P00M	EQU	0

	PEDGE	EQU		H'0BF'
		P00G1	EQU	4
		P00G0	EQU	3

	P1W		EQU		H'0C0'
		P13W	EQU	3
		P12W	EQU	2
		P11W	EQU	1
		P10W	EQU	0

	P1M		EQU		H'0C1'
		P13M	EQU	3
		P12M	EQU	2
		P10M	EQU	0

	P2M		EQU		H'0C2'
		P25M	EQU	5
		P24M	EQU	4
		P23M	EQU	3
		P22M	EQU	2
		P21M	EQU	1
		P20M	EQU	0

	P5M		EQU		H'0C5'
		P54M	EQU 4

	INTRQ	EQU		H'0C8'
		TC0IRQ	EQU	5
		T0IRQ	EQU	4
		P00IRQ	EQU	0

	INTEN	EQU		H'0C9'
		TC0IEN	EQU	5
		T0IEN	EQU	4
		P00IEN	EQU	0

	OSCM	EQU		H'0CA'
		CPUM1	EQU	4
		CPUM0	EQU	3
		CLKMD	EQU	2
		STPHX	EQU	1

	WDTR	EQU		H'0CC'
		WDTR7	EQU 7
		WDTR6	EQU 6
		WDTR5	EQU 5
		WDTR4	EQU 4
		WDTR3	EQU 3
		WDTR2	EQU 2
		WDTR1	EQU 1
		WDTR0	EQU 0

	TC0R	EQU		H'0CD'
		TC0R7	EQU 7
		TC0R6	EQU 6
		TC0R5	EQU 5
		TC0R4	EQU 4
		TC0R3	EQU 3
		TC0R2	EQU 2
		TC0R1	EQU 1
		TC0R0	EQU 0

	PCL		EQU		H'0CE'
		PC7		EQU	7
		PC6		EQU	6
		PC5		EQU	5
		PC4		EQU	4
		PC3		EQU	3
		PC2		EQU	2
		PC1		EQU	1
		PC0		EQU	0

	PCH		EQU		H'0CF'
		PC9		EQU	1
		PC8		EQU	0

	P0		EQU		H'0D0'
		P00		EQU	0

	P1		EQU		H'0D1'
		P13		EQU	3
		P12		EQU	2
		P11		EQU	1
		P10		EQU	0

	P2		EQU		H'0D2'
		P25		EQU	5
		P24		EQU	4
		P23		EQU	3
		P22		EQU	2
		P21		EQU	1
		P20		EQU	0

	P5		EQU		H'0D5'
		P54		EQU	4

	T0M		EQU		H'0D8'
		T0ENB	EQU	7
		T0RATE2	EQU	6
		T0RATE1	EQU	5
		T0RATE0	EQU	4

	T0C		EQU		H'0D9'
		T0C7	EQU	7
		T0C6	EQU	6
		T0C5	EQU	5
		T0C4	EQU	4
		T0C3	EQU	3
		T0C2	EQU	2
		T0C1	EQU	1
		T0C0	EQU	0

	TC0M	EQU		H'0DA'
		TC0ENB		EQU	7
		TC0RATE2	EQU	6
		TC0RATE1	EQU	5
		TC0RATE0	EQU	4
		TC0CKS		EQU	3
		ALOAD0		EQU	2
		TC0OUT		EQU	1
		PWM0OUT		EQU	0

	TC0C	EQU		H'0DB'
		TC0C7	EQU	7
		TC0C6	EQU	6
		TC0C5	EQU	5
		TC0C4	EQU	4
		TC0C3	EQU	3
		TC0C2	EQU	2
		TC0C1	EQU	1
		TC0C0	EQU	0
	STKP	EQU		H'0DF'
		GIE		EQU	7
		STKPB1	EQU	1
		STKPB0	EQU	0

	P0UR	EQU		H'0E0'
		P00R	EQU	0

	P1UR	EQU		H'0E1'
		P13R	EQU	3
		P12R	EQU	2
		P11R	EQU	1
		P10R	EQU	0

	P2UR	EQU		H'0E2'
		P25R	EQU	5
		P24R	EQU	4
		P23R	EQU	3
		P22R	EQU	2
		P21R	EQU	1
		P20R	EQU	0

	P5UR	EQU		H'0E5'
		P54R	EQU	4
	INDF	EQU		H'0E7'
	P1OC	EQU		H'0E9'
		P10OC

	STK3L	EQU		H'0F8'
	STK3H	EQU		H'0F9'
	STK2L	EQU		H'0FA'
	STK2H	EQU		H'0FB'
	STK1L	EQU		H'0FC'
	STK1H	EQU		H'0FD'
	STK0L	EQU		H'0FE'
	STK0H	EQU		H'0FF'


; -----------------------------------------------------
; Clear watchdog macro for CMS605xD
;  
; Total Cycle: 2 

	CLRWDT	macro		
 		   LDIA		0x5A
		   LD		WDTR,A
	endm
; -----------------------------------------------------
; Sleep Mode control macro for CMS605xD
;  
; Total Cycle: 1

	SleepMode	macro	
		SETB	OSCM,CPUM0
	endm
; -----------------------------------------------------
; Green Mode control macro for CMS605xD
;  
; Total Cycle: 3

	GreenMode	macro	
		SETB	OSCM,CPUM1
		NOP
		NOP
	endm
; -----------------------------------------------------
; Slow Mode control macro for CMS605xD
;  
; Total Cycle: 2

	SLowMode	macro	
		SETB	OSCM,CLKMD
		SETB	OSCM,STPHX
	endm
; -----------------------------------------------------
;  Slow mode to Normal Mode control macro for CMS605xD
;  
; Total Cycle: 5

	Slow2Normal	macro	
		CLRB	OSCM,STPHX
		NOP
		NOP
		NOP
		CLRB	OSCM,CLKMD
	endm
