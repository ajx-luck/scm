#include "init.h"

void Init_System() {
    asm("nop");
    asm("clrwdt");
    INTCON = 0;                    //系统初始化
    OSCCON = 0X71;                //配置振荡为8M,开 WDT
    OPTION_REG = 0x00;        //Timer0使用内部时钟Focs/4，预分频比为1:2

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
    OPTION_REG = 0x00;        //Timer0使用内部时钟Focs/4，预分频比为1:2
    TMR0 = 0;                //赋予初始值
    INTCON = 0xE0;            //允许所有未被屏蔽的中断、禁止外设中断，使能Timer0

}