#include<sc.h>
#define setbit(x, y)  x|=(1<<y)
#define resetbit(x, y)  x&=~(1<<y)


unsigned char timeoutFlag;
unsigned char timeout1MSFlag;

void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;					//ϵͳ��ʼ��
	OSCCON = 0X71;				//������Ϊ8M,�� WDT
    OPTION_REG = 0x00;        //Timer0ʹ���ڲ�ʱ��Focs/4��Ԥ��Ƶ��Ϊ1:2
    TMR0 = 0;                //�����ʼֵ
    INTCON = 0xE0;            //��������δ�����ε��жϡ���ֹ�����жϣ�ʹ��Timer0
	

	TRISB = 0;	
	WPUB = 0xFF;
	PORTB = 0xFF;
	IOCB = 0x00;
}

void main(void)
{
	Init_System();
	unsigned int count = 0;
	while(1)
	{
		
		if(timeoutFlag)
		{
			timeoutFlag = 0;
			
			asm("clrwdt");
			
			if(count == 500)
			{
					count = 0;
			}
				
			
			switch(count)
			{
				case 0:
				resetbit(PORTB, 4);
				setbit(PORTB, 2);
				break;
				case 100:
				resetbit(PORTB, 3);
				setbit(PORTB, 1);
				break;
				case 200:
				resetbit(PORTB, 2);
				setbit(PORTB, 5);
				break;
				case 300:
				resetbit(PORTB, 1);
				setbit(PORTB, 4);
				break;
				case 400:
				resetbit(PORTB, 5);
				setbit(PORTB, 3);
				break;
			}
			if(timeout1MSFlag == 10)
			{
				timeout1MSFlag =0;
				count++;
			}
			
			timeout1MSFlag++;
		}
	}
}

void interrupt Timer0_Isr() {
    if (T0IF) {
        //---------------------------------------
        TMR0 += 155;        //���¸���ֵ���ڸ�ֵǰTimer0���м��������ڸû����ϼӳ�ֵ
        //---------------------------------------

        T0IF = 0;            //���жϱ�־λ	
        timeoutFlag = 1;

    }

}
