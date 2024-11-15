
; ----------------------------------------------------------------------------
; CMS89FXXXϵ��MCU���������ݳ���
; �� �� ����SendTouchKey_89F73x.asm
; ��    ����V0.4
; �޸����ڣ�2020/12/09
; ----------------------------------------------------------------------------
; ʹ��˵����
; 1.���������� #include "SendTouchKey_89F73x.h"�Լ� #include "SendTouchKey_89F73x.asm"
; 2.������Ŀʵ��������úô��������
; 3.���������г�������"SEND_TOUCHKEY"��������
; ----------------------------------------------------------------------------


;-------------------------------------------
; �������ƣ�SEND_TOUCHKEY
; �������ܣ����������ݺ���
; ��ڲ�������
; ���ڲ�������
; ��    ע��
;-------------------------------------------
SEND_TOUCHKEY:
		CLRWDT
;---------------���һ����ѭ������һ������---------------		
		LDIA		0x02
		XORR		_FLAG
		SNZB		_F_DELAY
		JP			$+3
		CALL		DATA_INIT			;���Ͳ�����ʼ��
		JP			SEND_TOUCHKEY_BACK
;---------------�����ͨѶ����Ϊ   0xA0+���ݳ���+��������+��������+�����------------------
		CALL		IIC_SEND_START		;������ʼ�ź�
		LDIA		0xA0
		CALL		IIC_SEND_DATA		;�������ӵ�����
;---------------���ݳ���Ϊ   ����ͷ+��������+У����---------------	
		CLR			TK_CHECKSUM_H		
		LD			A,DATA_LENGTH
		ADDIA		.2
		LD			TK_CHECKSUM_L,A	
		CALL		IIC_SEND_DATA
;---------------��������Ϊ   ֡��+֡��+��������---------------		
		LD			A,DATA_MASK
		CALL		CHECK_SUM
		CALL		IIC_SEND_DATA
		LDIA		SEND_ID
		CALL		CHECK_SUM
		CALL		IIC_SEND_DATA	
;---------------������ֵ---------------		
		#ifdef		VOL_VALUE
		LDIA		VOL_VALUE
		#else
		LDIA		.0
		#endif
		CALL		CHECK_SUM
		CALL		IIC_SEND_DATA	
		LDIA		.0
		CALL		CHECK_SUM
		CALL		IIC_SEND_DATA	
;---------------ѭ����������---------------
SEND_LOOP:
		CLR			DATA_NUMBER			;�������ݱ��
		CALL		GET_TKLIBRARY		;��ȡ�������ֵ		
		LD			A,SEND_DATA0L		;�����˲�ֵ��λ
		CALL		CHECK_SUM
		CALL		IIC_SEND_DATA	
		LD			A,SEND_DATA0H		;�����˲�ֵ��λ
		CALL		CHECK_SUM
		CALL		IIC_SEND_DATA

		INCR		DATA_NUMBER
		CALL		GET_TKLIBRARY		;��ȡ�������ֵ		
		LD			A,SEND_DATA0L		;�����½���ֵ0��λ
		CALL		CHECK_SUM
		CALL		IIC_SEND_DATA	
		LD			A,SEND_DATA0H		;�����½���ֵ0��λ
		CALL		CHECK_SUM
		CALL		IIC_SEND_DATA	

		INCR		DATA_NUMBER
		CALL		GET_TKLIBRARY		;��ȡ�������ֵ		
		LD			A,SEND_DATA0L		;�����½���ֵ1��λ
		CALL		CHECK_SUM
		CALL		IIC_SEND_DATA	
		LD			A,SEND_DATA0H		;�����½���ֵ1��λ
		CALL		CHECK_SUM
		CALL		IIC_SEND_DATA	
		
		INCR		DATA_NUMBER
		CALL		GET_TKLIBRARY		;��ȡ�������ֵ		
		LD			A,SEND_DATA0L		;��������ֵ��λ
		CALL		CHECK_SUM
		CALL		IIC_SEND_DATA	
		LD			A,SEND_DATA0H		;��������ֵ��λ
		CALL		CHECK_SUM
		CALL		IIC_SEND_DATA			

		INCR		SEND_NUMBER			;������+1
		SZDECR		SURPLUS_NUMBER		;ʣ����-1
		JP			SEND_LOOP			;����δ������������
;---------------��������---------------	
		LDIA		055H
		CALL		IIC_SEND_DATA	
		LD			A,TK_CHECKSUM_H		;����У��͸�λ
		CALL		IIC_SEND_DATA		
		LD			A,TK_CHECKSUM_L		;����У��͸�λ
		CALL		IIC_SEND_DATA		
		CALL		IIC_SEND_STOP
SEND_TOUCHKEY_BACK:
		RET


;-------------------------------------------
; �������ƣ�DATA_INIT
; �������ܣ����Ͳ�����ʼ��
; ��ڲ�������
; ���ڲ�������
; ��    ע��
;-------------------------------------------
DATA_INIT:	
		LDIA		FRAME_SIZE
		SUBA		FRAME_NUMBER
		SNZB		STATUS,C			;�ж��Ƿ��Ѿ��������һ֡
		JP			$+4
		CLR			SEND_NUMBER
		CLR			FRAME_NUMBER		;���·���
		JP			$+2
		INCR		FRAME_NUMBER
;---------------β֡�ж�---------------
		LDIA		FRAME_SIZE
		SUBA		FRAME_NUMBER
		SNZB		STATUS,C			;�жϵ�ǰ�Ƿ�Ϊ���һ֡
		JP			$+5
;---------------���һ֡����---------------		
		LDIA		LAST_NUMBER
		LD			SURPLUS_NUMBER,A	;���÷��͸���
		LDIA		DATA_MINIMUM
		JP			SET_DATA
;---------------�������һ֡����---------------		
		LDIA		DATA_INTERVAL
		LD			SURPLUS_NUMBER,A
		LDIA		DATA_MAXIMUM
;---------------���÷������ݳ���---------------			
SET_DATA:
		LD			DATA_LENGTH,A		;�������ݳ���		
;---------------������������ ��֡�� + ֡��---------------	
		LDIA		FRAME_SIZE
		LD			DATA_MASK,A			;������֡��
		RLR			DATA_MASK
		RLR			DATA_MASK
		RLR			DATA_MASK
		RLR			DATA_MASK
		LD			A,FRAME_NUMBER		;����֡��
		ORR			DATA_MASK

DATA_INIT_BACK:
		RET
			

;-------------------------------------------
; �������ƣ�GET_TKLIBRARY
; �������ܣ���ȡ�������ֵ
; ��ڲ�����
; ���ڲ�����
; ��	ע��
;-------------------------------------------
GET_TKLIBRARY:
;---------------��ȡ�˲�ֵ---------------
GET_WAVE_START��
		LDIA		.0
		SUBA		DATA_NUMBER
		SNZB		STATUS,Z
		JP			GET_WAVE_END

		LDIA		CMS_NOWKDATL0		;��ȡEMC���˲�ֵ����	
		LD			_TK_ADDR,A
		LDIA		.2
		LD			_TK_ADDRSPACE,A		;���õ�ַ��ѯ���Ϊ����	

	
		CALL		GET_TKVALUE				
		LD			A,_TK_VALUEL
		LD			SEND_DATA0L,A	
		LD			A,_TK_VALUEH
		LD			SEND_DATA0H,A		
		JP			GET_TKLIBRARY_BACK		
GET_WAVE_END:

;---------------��ȡ�½���ֵ0---------------
GET_DOWN0_START��
		LDIA		.1
		SUBA		DATA_NUMBER
		SNZB		STATUS,Z
		JP			GET_DOWN0_END
		
		LDIA		CMS_NOW0KDOWN0		;��ȡEMC���½���ֵ0����	
		LD			_TK_ADDR,A
		LDIA		.1
		LD			_TK_ADDRSPACE,A		;���õ�ַ��ѯ���Ϊһ��			
	
		CALL		GET_TKVALUE				
		LD			A,_TK_VALUEL
		LD			SEND_DATA0L,A
		CLR			SEND_DATA0H			;8λ����,��λ����			
		JP			GET_TKLIBRARY_BACK
GET_DOWN0_END��

;---------------��ȡ�½���ֵ1---------------
GET_DOWN1_START��
		LDIA		.2
		SUBA		DATA_NUMBER
		SNZB		STATUS,Z
		JP			GET_DOWN1_END
		
		LDIA		CMS_NOW1KDOWN0		;��ȡEMC���½���ֵ1����	
		LD			_TK_ADDR,A
		LDIA		.1
		LD			_TK_ADDRSPACE,A		;���õ�ַ��ѯ���Ϊһ��			
	
		CALL		GET_TKVALUE				
		LD			A,_TK_VALUEL
		LD			SEND_DATA0L,A
		CLR			SEND_DATA0H			;8λ����,��λ����				
		JP			GET_TKLIBRARY_BACK
GET_DOWN1_END��

;---------------��ȡ����ֵ---------------
GET_NOISE_START:
		LDIA		.3
		SUBA		DATA_NUMBER
		SNZB		STATUS,Z
		JP			GET_NOISE_END
				
		LDIA		CMS_NOISEDAT0		;��ȡ����ֵ0����		
		LD			_TK_ADDR,A	
		LDIA		.1
		LD			_TK_ADDRSPACE,A		;���õ�ַ��ѯģʽΪһ�����		
		
		CALL		GET_TKVALUE				
		LD			A,_TK_VALUEL
		LD			SEND_DATA0L,A
		CLR			SEND_DATA0H			;8λ����,��λ����		
		JP			GET_TKLIBRARY_BACK		
GET_NOISE_END:

GET_TKLIBRARY_BACK:	
		RET
			

;-------------------------------------------
; �������ƣ�GET_TKVALUE
; �������ܣ����Ѱַ��ȡ������ֵ
; ��ڲ�����_TK_ADDR��_TK_ADDRSPACE
; ���ڲ�����_TK_VALUEL��_TK_VALUEH
; ��	ע��
;-------------------------------------------
GET_TKVALUE:
	_TK_ADDR		EQU			?		;��ѯ��ַ
	_TK_ADDRSPACE	EQU			?		;��ַ��ѯ���
	_TK_VALUEL		EQU			?		;��ֵ���ݵ�λ
	_TK_VALUEH		EQU			?		;��ֵ���ݸ�λ
;---------------�����ȡ���ݵĵ�ַ---------------					
		LD			A,SEND_NUMBER		;��ǰ��ѯ���
		LD			MULTIPLICAND,A		;���豻����
		LD			A,_TK_ADDRSPACE
		LD			MULTIPLIER,A		;�������
		CALL		MULTIPLICATION_8BIT
		
		LD			A,_TK_ADDR
		ADDA		PRODUCT
		LD			_TK_ADDR,A
;---------------���Ѱַ��ȡ��ֵ����---------------	
GET_TKDATA:
;---------------���Ѱַ��ȡ��ֵ��λ---------------
		LD			A,_TK_ADDR
		LD			FSR,A
		CLRB		STATUS,IRP
		LD			A,INDF
		LD			_TK_VALUEL,A
;---------------���Ѱַ��ȡ��ֵ��λ---------------		
		INCA		_TK_ADDR
		LD			FSR,A
		CLRB		STATUS,IRP
		LD			A,INDF
		LD			_TK_VALUEH,A
GET_TKVALUE_BACK:
		RET			


;-------------------------------------------
; �������ƣ�ABS_VALUE_SUB
; �������ܣ�����ֵ����
; ��ڲ�����_TEMP0L��_TEMP0H��_TEMP1L��_TEMP1H
; ���ڲ�����_TEMP1L��_TEMP1H
; ��	ע����������������������ֵ
;-------------------------------------------
ABS_VALUE_SUB:
		_TEMP0L		EQU			?
		_TEMP0H		EQU			?
		_TEMP1L		EQU			?
		_TEMP1H		EQU			?
;---------------���������---------------------	
		LD			A,_TEMP0L
		SUBR		_TEMP1L
		LD			A,_TEMP0H
		SNZB		STATUS,C
		DECR		_TEMP1H
		SUBR		_TEMP1H
;---------------ȡ����ֵ---------------------		
		SNZB		_TEMP1H,7			;�ж��������λ
		JP			ABS_VALUE_SUB_BACK
		COMR		_TEMP1L
		COMR		_TEMP1H
		INCR		_TEMP1L
		SZB			STATUS,Z
		INCR		_TEMP1H
ABS_VALUE_SUB_BACK:	
		RET

;-------------------------------------------
; �������ƣ�MULTIPLICATION_8BIT
; �������ܣ�8 x 8λ�˷�����
; ��ڲ�����MULTIPLIER��MULTIPLICAND
; ���ڲ�����PRODUCT
; ��    ע������8λ���
;-------------------------------------------	
MULTIPLICATION_8BIT:
		PRODUCT		 EQU		?		;�������ֵ
		MULTIPLICAND EQU		?		;������
		MULTIPLIER	 EQU		?		;����
		
		CLR			PRODUCT		
MULTIPLICATION_LOOP:
		LD			A,MULTIPLICAND
		SZB			MULTIPLIER,0
		ADDR		PRODUCT

		CLRB		STATUS,C		
		RLCR		MULTIPLICAND
		CLRB		STATUS,C
		RRCR		MULTIPLIER
		SZR			MULTIPLIER
		JP			MULTIPLICATION_LOOP
		RET				
		
	
;********************************************
;IICͨѶ�ӳ���
;********************************************
;-------------------------------------------
; �������ƣ�IIC_SEND_START
; �������ܣ����������ź�
; ��ڲ�������
; ���ڲ�������
; ��    ע��SCLΪ�ߵ�ƽ�ڼ䣬SDA�����½���
;-------------------------------------------				
IIC_SEND_START:
		CLRB		IIC_SCL_IO			;��IIC����ʱ�ӿ���Ϊ�����
		CLRB		IIC_SDA_IO
		CALL		IIC_DELAY			;��ʱһ��ʱ��
	
		SETB		IIC_SDA				;��SDA��SCL���ߣ�׼�����������ź�
		SETB		IIC_SCL
		CALL		IIC_DELAY
		CALL		IIC_DELAY
		CLRB		IIC_SDA				;��SDA���Ͳ��������ź�	
		
		CALL		IIC_DELAY
		CALL		IIC_DELAY
		CLRB		IIC_SCL				;��SCL���ͣ���������źŲ���
		CALL		IIC_DELAY
		RET

;-------------------------------------------
; �������ƣ�IIC_SEND_STOP
; �������ܣ�����ֹͣ�ź�
; ��ڲ�������
; ���ڲ�������
; ��    ע��SCLΪ�ߵ�ƽ�ڼ䣬SDA����������
;-------------------------------------------
IIC_SEND_STOP:
		CLRB		IIC_SCL_IO			;��IIC����ʱ�ӿ���Ϊ�����
		CLRB		IIC_SDA_IO
		CALL		IIC_DELAY			;��ʱһ��ʱ��
	
		CLRB		IIC_SDA				;��SDA���ͣ�SCL���ߣ�׼������ֹͣ�ź�
		SETB		IIC_SCL
		CALL		IIC_DELAY
		CALL		IIC_DELAY
		SETB		IIC_SDA				;��SDA���߲���ֹͣ�ź�	
		
		CALL		IIC_DELAY
		CALL		IIC_DELAY
		CLRB		IIC_SCL				;��SCL���ͣ����ֹͣ�źŲ���
		
		RET						

;-------------------------------------------
; �������ƣ�IIC_SEND_DATA
; �������ܣ�ģ��IIC��������8λ����
; ��ڲ�����_DATA
; ���ڲ���������ACKӦ���ź�
; ��    ע��ACKӦ���ź�ΪSDA�ɸߵ�ƽ��Ϊ�͵�ƽ
;-------------------------------------------
IIC_SEND_DATA:
		_DATA		EQU			?
		_COUNT		EQU			?

		LD			_DATA,A
		LDIA		.8
		LD			_COUNT,A
		CLRB		IIC_SCL_IO			;��IIC����ʱ�ӿ���Ϊ�����
		CLRB		IIC_SDA_IO
		CALL		IIC_DELAY
;---------------ѭ������8λ����---------------			
IIC_SEND_MOVE_LOOP:					
		CLRB		IIC_SCL
		SZB			_DATA,7
		SETB		IIC_SDA	
		SNZB		_DATA,7
		CLRB		IIC_SDA
		CALL		IIC_DELAY
		SETB		IIC_SCL
		RLR			_DATA				;������һλ
		CALL		IIC_DELAY
		NOP
		NOP	
		SZDECR		_COUNT
		JP			IIC_SEND_MOVE_LOOP
;---------------8λ���ݷ������---------------		
		CLRB		IIC_SCL
		SETB		IIC_SDA_IO			;SDA��Ϊ�������ACK�ź�
		CALL		IIC_DELAY
		SETB 		IIC_SCL				;����������׼����Ӧ���ź�
		CALL		IIC_DELAY
;---------------�ȴ�Ӧ��---------------			
		CLRB		_F_ACK
		SNZB		IIC_SDA
		SETB		_F_ACK		
		CLRB		IIC_SCL
		CLRB		IIC_SDA_IO
		JP			$+1
		JP			$+1
		RET
		
;---------------�Ǿ�׼��ʱ---------------	
IIC_DELAY:
		JP			$+1
		JP			$+1
		JP			$+1	
		JP			$+1
		JP			$+1		
		JP			$+1
		JP			$+1
		RET
;-------------------------------------------
; �������ƣ�CHECK_SUM
; �������ܣ����Ͳ�����ʼ��
; ��ڲ�������
; ���ڲ�������
; ��    ע��
;-------------------------------------------
CHECK_SUM:	
		ADDR		TK_CHECKSUM_L
		SZB			STATUS,C
		INCR		TK_CHECKSUM_H
		RET