#include<sc.h>
#define setbit(x, y)  x|=(1<<y)
#define resetbit(x, y)  x&=~(1<<y)


unsigned char timeoutFlag;
unsigned char timeout1MSFlag;

void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;					//系统初始化
	OSCCON = 0X71;				//配置振荡为8M,开 WDT
    OPTION_REG = 0x00;        //Timer0使用内部时钟Focs/4，预分频比为1:2
    TMR0 = 0;                //赋予初始值
    INTCON = 0xE0;            //允许所有未被屏蔽的中断、禁止外设中断，使能Timer0
	

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
        TMR0 += 155;        //重新赋初值，在赋值前Timer0已有计数，故在该基础上加初值
        //---------------------------------------

        T0IF = 0;            //清中断标志位	
        timeoutFlag = 1;

    }

}
