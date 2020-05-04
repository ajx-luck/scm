#include "init.h"

void Init_System() {
    asm("nop");
    asm("clrwdt");
    INTCON = 0;                    //ϵͳ��ʼ��
    OSCCON = 0X71;                //������Ϊ8M,�� WDT
    OPTION_REG = 0x00;        //Timer0ʹ���ڲ�ʱ��Focs/4��Ԥ��Ƶ��Ϊ1:2

}


void Init_GPIO() {
    TRISA = 0;
    TRISB = 0;
    TRISC = 0;
    WPUA = 0xFF;
    WPUB = 0xFF;
    WPUC = 0xFF;
    PORTA = 0xFF;
    PORTB = 0xFF;
    PORTC = 0xFF;
    IOCB = 0x00;

}

void Init_Interupt() {
    OPTION_REG = 0x00;        //Timer0ʹ���ڲ�ʱ��Focs/4��Ԥ��Ƶ��Ϊ1:2
    TMR0 = 0;                //�����ʼֵ
    INTCON = 0xE0;            //��������δ�����ε��жϡ���ֹ�����жϣ�ʹ��Timer0

}