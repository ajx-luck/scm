/**********************************************************

**********************************************************/

#include <sc.h>




void DelayXms(unsigned char x);

void Init_System();

	
void main(void)            		//������,��Ƭ����������Ǵ����������ʼ����
{
	unsigned int delaycnt = 0;
	unsigned char pwmbuf = 0X1F;

	Init_System();
	
							
		PWMCON1 = 0B01100000;	//PWMѡ��C�飬����1��ֹ������2ʹ�ܣ�����ʱ��ԴΪFosc/4

		PWMTL = 200;
		PWM4TL = 200;
		PWMTH = 0;		//����ѡ��Ϊ0FF��������Ϊ��255+1��*1/8M�����ڵ�ʱ�ӷ�Ƶ��PWMCON0ѡ��
		PWMD0L = 25;
		PWMD1L = 50;	
		PWMD2L = 50;   //����ģʽ��PWM2��ռ�ձ���PWM3����
		PWMD3L = 0;
		PWMD4L = 200;
		
		PWMD01H = 0;
		PWMD23H = 0;					//����PWM2,PWM3��ռ�ձȣ���ֵ���ܳ������ڣ�����Ϊ100%���
		PWM23DT = 0X03;				//������Ϊ2uS������Ϊ��3+1��*1/8M*4
		PWMCON0 = 0X1F;				//ѡ��PWM0,PWM1,��Ƶ��Ϊ1
		TRISB= 0;						//��Ӧ�Ŀ�����Ϊ���
		
		
    while(1)					//��ѭ��,��Ƭ����ʼ����,��һֱ���������ѭ��
    {
		delaycnt++;
		if(delaycnt >2000)
		{
		   delaycnt =0;
		    PWMD2L++;
		    if( PWMD2L >=250)
		    PWMD2L = 10;
			
		
		}
		
    }
}


/***********************************************
�������ƣ�Init_System
�������ܣ�ϵͳ��ʼ��
��ڲ�������
���ڲ�������
��ע��
************************************************/
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;					//ϵͳ��ʼ��
	OSCCON = 0X70;				//������Ϊ8M,����WDT
	OPTION_REG = 0;
	
	TRISA = 0B00000000;			//��ʼ��IO״̬
	TRISB = 0B00000000;

//	PORTA = 0B00000000;
	PORTB = 0B00000000;			//��ʼ�����

}