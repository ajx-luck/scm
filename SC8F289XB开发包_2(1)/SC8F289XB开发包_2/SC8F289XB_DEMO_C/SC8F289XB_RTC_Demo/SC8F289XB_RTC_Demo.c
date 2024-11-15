
#include <sc.h>
//����32.768k��������ʱ�þ�������жϻ���


//ϵͳ��ʼ��
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;			//��ֹ�ж�
	OSCCON = 0X72;		//������Ϊ8M,��WDT
	OPTION_REG = 0;
	
    WPUA  = 0B00000000;  //PA��������Ч
    WPUB  = 0B00000000;  //PB��������Ч
    WPDB  = 0B00000000;  //PB��������Ч
  
 
	TRISA = 0;
	TRISB = 0;
	 
	PORTA = 0B00000000;
	PORTB = 0B00000000;	 //�ر��������
	

	PIE1 = 2;			//ʹ��Timer2�ж�,�ر������ж�

	PR2 = 0X80;
	T2CON = 0x8F;		//ʹ��32.768KHzΪTimer2����ʱ��,Timer2���Ƶ��Ϊ1:2��Ԥ��Ƶ1��16
						//128*4*16*2/(32.768*1000)=0.5S
	
	INTCON = 0XC0;		//ʹ���ж�	
}


//����͹���ģʽ
void SystemSleep()
{
	
	PIE1 = 2;				//ʹ��Timer2�ж�,�ر������ж�
	INTCON = 0XC0;
	if(0X8F != T2CON)
		T2CON = 0X8F;
	
	
	TRISA = 0;				//����̶���ƽ,���ٹ���
	TRISB = 0;
	PORTA ^= 0XFF;	
							//�ر����й���ģ��,���ٹ���
	PWMCON0 = 0;

	OPA0CON = 0;
	OPA1CON = 0;
	ADCON0 = 0;				//�ر����в���Ҫ������

	OPTION_REG = 0;
	
	OSCCON = 0X70;		//������Ϊ8M,�ر�WDT
	asm("clrwdt");
	
	SLEEP();				//��������ģʽ
	
	asm("nop");
	asm("clrwdt");
	OSCCON = 0X70;		//������Ϊ8M,�ر�WDT
}


/***********************************************************
��ѭ��
***********************************************************/
void main()
{
	Init_System();
	while(1)
	{
		asm("clrwdt");
		SystemSleep();		//����͹���ģʽ
		
	}
}


//�жϷ�����
void interrupt Isr_Timer()
{
	if(TMR2IF)				//��ֻʹ����һ���ж�Դ,������ȥ�ж�
	{
		//Timer2�жϣ�ÿ1s��һ��
		TMR2IF = 0;

	}
	else
	{
		PIR1 = 0;
		INTCON &= 0XC0;
	}
}




