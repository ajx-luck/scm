;-------------------------------------------

;�������ƣ�ADת������
;���ڰ汾��2021/1/20 <V1.0>

;��ע��ֱ�ӵ���AD_SAMPLE�������ADֵ

;*��˾��ַ www.mcu.com.cn
;					WWW.SCMCU.COM
;-------------------------------------------

#INCLUDE	SC8P1712E.H


ADRESULTL	EQU			?			;12λAD�����λ
ADRESULTH	EQU			?			;12λAD�����λ
ADSUMH	EQU			?				;AD����ܺ͸�λ
ADSUML	EQU			?				;AD����ܺ͵�λ
ADMINL	EQU			?				;AD�����Сֵ��λ
ADMINH	EQU			?				;AD�����Сֵ��λ
ADMAXL	EQU			?				;AD������ֵ��λ
ADMAXH	EQU			?				;AD������ֵ��λ
ADCOUNT	EQU			?				;AD������
ADTEMPL	EQU			?				;AD��ʱ�Ĵ���
ADTEMPH	EQU			?				;AD��ʱ�Ĵ���

TEMP	EQU			?
		
ORG			0000H						
JP			START						

;-------------------------------------------
START:
		NOP
		CLRWDT
		LDIA		00H
		OPTION							;Ԥ��Ƶ�������TMR0
		CLR			TMR0				;��ʼ��TMR0
		CLRWDT
		
		LDIA		070H				;8M�ڲ�ʱ��
		LD			OSCCON,A
		
MAIN:										;������
		CLRWDT
		LDIA		040H				;RB6ѡ��ģ������
		LD			ANSELH,A		
		LDIA		040H				;RB6��Ϊ����
		LD			TRISB,A	
		LDIA		.14
		CALL		ADC_SAMPLE
		
		JP			MAIN
;-------------------------------------------

;-------------------------------------------
;�������ƣ�ADC_SAMPLE
;�������ܣ�ģ��ת��(ADC)
;��ڲ�������
;���ڲ�����ADRESULTL,ADRESULTH - AD�����
;		   
;��ע������룬ȡ12λAD�����10�Σ�ȥ�����Сֵ���ֵ
;-------------------------------------------
ADC_SAMPLE:
		LD			ADTEMPL,A
		RLR			ADTEMPL
		RLA			ADTEMPL
		ORIA		041H						;16��Ƶ��8M��Ƶ����ѡ16��Ƶ������
		LD			ADCON0,A
		LDIA		B'00001101'			;��������,ѡ�����ʱ�ӣ��ڲ�2V��AD�ο�	
		LD			ADCON1,A
		
		LDIA		.25
		LD			TEMP,A
AD_DELAY:
		JP			$+1					;��ʱ100US
		JP			$+1
		JP			$+1
		SZDECR		TEMP	
		
AD_START:
		SETB		ADCON0,1			;AD��⿪ʼ		
		CLR			ADTEMPL
AD_WAIT:
		SNZB		ADCON0,1			;�ȴ�������
		JP			AD_TEST_OK
		NOP
		NOP
		SZINCR		ADTEMPL				;800us���ϼ�ⲻ��AD������ֱ���˳�AD���
		JP			AD_WAIT
		CLR			ADCON0				;�ر�AD
		RET
AD_TEST_OK:
		SWAPA		ADRESL				;����⵽��ADֵ������ʱ�Ĵ���
		ANDIA		0FH						;����λΪ��4λ����8λ�����ݽṹ
		LD			ADTEMPL,A
		SWAPA		ADRESH
		LD			ADTEMPH,A
		LDIA		0F0H
		ANDA		ADTEMPH
		ADDR		ADTEMPL
		LDIA		0FH
		ANDR		ADTEMPH
		
		LD			A,ADMAXH			;���AD���ֵΪ0����Ѽ�⵽��ADֵͬʱ���������Сֵ
		ORA			ADMAXL
		SNZB		STATUS,Z
		JP			AD_SEND_MAX
		LD			A,ADTEMPL
		LD			ADMAXL,A
		LD			ADMINL,A
		LD			A,ADTEMPH
		LD			ADMAXH,A
		LD			ADMINH,A
		JP			AD_ADD_SUM

AD_SEND_MAX:
		LD			A,ADTEMPH			;��ADֵ�����ֵ�Ƚ�
		SUBA		ADMAXH				;���жϸ�λ
		SNZB		STATUS,Z
		JP			AD_SEND_MAX_1
		LD			A,ADTEMPL			;��λ������жϵ�λ
		SUBA		ADMAXL
AD_SEND_MAX_1:
		SZB			STATUS,C			;�ߵ�λ���ֵ������ADֵ��������ȥ�ж���Сֵ
		JP			AD_SEND_MIN
		LD			A,ADTEMPL			;�ߵ�λ���ֵС��ADֵ�����λ��ȣ����ֵ��λС��ADֵ
		LD			ADMAXL,A			;��ADֵ�������ֵ
		LD			A,ADTEMPH
		LD			ADMAXH,A
		JP			AD_ADD_SUM
		
AD_SEND_MIN:		
		LD			A,ADMINH			;���ж���Сֵ��λ
		SUBA		ADTEMPH
		SNZB		STATUS,Z
		JP			AD_SEND_MIN_1
		LD			A,ADMINL			;��λ������жϵ�λ
		SUBA		ADTEMPL
AD_SEND_MIN_1:
		SZB			STATUS,C			;�ߵ�λ��Сֵ��С�ڵ���ADֵ��������
		JP			AD_ADD_SUM
		LD			A,ADTEMPL			;��ADֵ������Сֵ
		LD			ADMINL,A
		LD			A,ADTEMPH
		LD			ADMINH,A
		JP			AD_ADD_SUM

AD_ADD_SUM:
		LD			A,ADTEMPL			;����10�β���ADֵ֮��
		ADDR		ADSUML
		LD			A,ADTEMPH
		ADDCR		ADSUMH
		
		INCR		ADCOUNT				;����10������ƽ��ֵ
		LDIA		0AH
		SUBA		ADCOUNT
		SNZB		STATUS,C
		RET
		
		LD			A,ADMAXL			;ADֵ֮�ͼ�ȥ���ֵ
		SUBR		ADSUML
		LD			A,ADMAXH
		SNZB		STATUS,C
		SZINCA	ADMAXH
		SUBR		ADSUMH
		
		LD			A,ADMINH			;�����ȥ���ֵ֮�����ֵС����Сֵ�����п����Ǹ���
		SUBA		ADSUMH				;��ʱ��AD������
		SNZB		STATUS,Z
		JP			AD_JUDGE_MIN_1
		LD			A,ADMINL
		SUBA		ADSUML
AD_JUDGE_MIN_1:
		SNZB		STATUS,C
		JP			AD_CLR_SUM
		LD			A,ADMINL			;ADֵ֮�ͼ�ȥ��Сֵ
		SUBR		ADSUML
		LD			A,ADMINH
		SNZB		STATUS,C
		SZINCA	ADMINH
		SUBR		ADSUMH
		JP			AD_AVERAGE

AD_CLR_SUM:
		CLR			ADSUML
		CLR			ADSUMH
		
AD_AVERAGE:
		LDIA		03H
AD_AVERAGE_1:
		CLRB		STATUS,C			;��ADֵ֮����λ3��
		RRCR		ADSUMH
		RRCR		ADSUML
		ADDIA		0FFH
		SNZB		STATUS,Z
		JP			AD_AVERAGE_1
		LD			A,ADSUML			;��ƽ��ֵ����ADRESULT
		LD			ADRESULTL,A
		LD			A,ADSUMH
		LD			ADRESULTH,A
		
		CLR			ADSUML				;�����õ����AD����ʱ�Ĵ���
		CLR			ADSUMH
		CLR			ADMINL
		CLR			ADMINH
		CLR			ADMAXL
		CLR			ADMAXH
		CLR			ADCOUNT
		RET
				
		