
#ifndef	_TOUCH_KSCAN_CONST_H_
#define	_TOUCH_KSCAN_CONST_H_
;----------------------------------------------------------
;�����Ǵ����ڲ�һЩ����λ�ĺ궨��,�����

;���������ڲ��Ƚ������˵�ѹѡ��
C_KVREF_04		DEF		0x00		;0.4VDD
C_KVREF_05		DEF		0x40		;0.5VDD
C_KVREF_06		DEF		0x80		;0.6VDD
C_KVREF_07		DEF		0xC0		;0.7VDD

;MCU���а���ͨ������
C_KCHS0		DEF         0000H
C_KCHS1     DEF         0001H
C_KCHS2     DEF         0002H
C_KCHS3     DEF         0003H
C_KCHS4     DEF         0004H
C_KCHS5     DEF         0005H
C_KCHS6     DEF         0006H
C_KCHS7     DEF         0007H
C_KCHS8     DEF         0008H
C_KCHS9     DEF         0009H
C_KCHS10    DEF         000AH
C_KCHS11    DEF         000BH
C_KCHS12    DEF         000CH
C_KCHS13    DEF         000DH
C_KCHS14    DEF         000EH
C_KCHS15    DEF         000FH
;----------------------------------------------------------
;MCU����ͨ���ڵ��ݶ���
C_KCAP_0	DEF			B'00000010' ;�����ڲ��ӵ���
C_KCAP_1	DEF			B'00001010' ;�����ڽӵ���c*1
C_KCAP_2	DEF			B'00010010' ;�����ڽӵ���c*2
C_KCAP_3	DEF			B'00011010' ;�����ڽӵ���c*3
C_KCAP_4	DEF			B'00100010' ;�����ڽӵ���c*4
C_KCAP_5	DEF			B'00101010' ;�����ڽӵ���c*5
C_KCAP_6	DEF			B'00110010' ;�����ڽӵ���c*6
C_KCAP_7	DEF			B'00111010' ;�����ڽӵ���c*7
;----------------------------------------------------------
#endif