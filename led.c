#include<sc.h>
#include "delay.h"

#define PBPORTB PORTA
#define PBTRISB TRISA
#define getbit(x, y)   ((x) >> (y)&1)
#define setbit(x, y)  x|=(1<<y)
#define resetbit(x, y)  x&=~(1<<y)
#define reversebit(x, y)  x^=(1<<y)


void setLedOn(unsigned char ledIndex) {
    switch(ledIndex) {
        case 1:
            //PB7设置为输入脚,PC1和PC0设置为输出
			resetbit(TRISC, 1);
			setbit(TRISA, 7);
            resetbit(TRISC, 0);
            resetbit(PORTA, 7);
            setbit(PORTC, 0);
            resetbit(PORTC, 1);            
            break;
        case 2:
			resetbit(TRISC, 1);
			setbit(TRISA, 7);
            resetbit(TRISC, 0);
            resetbit(PORTC, 0);
            setbit(PORTC, 1);
            break;
        case 3:
            //PC0设置为输入脚，PB7和PC1设置为输出
			setbit(TRISC, 0);
			resetbit(TRISA, 7);
            resetbit(TRISC, 1);
            setbit(PORTA, 7);
            resetbit(PORTC, 0);
            resetbit(PORTC, 1);
            break;
        case 4:
			setbit(TRISC, 0);
			resetbit(TRISA, 7);
            resetbit(TRISC, 1);
            resetbit(PORTA, 7);
            setbit(PORTC, 0);
            setbit(PORTC, 1);
            break;
        case 5:
            //全部设置为输入脚
			setbit(TRISC, 0);
			setbit(TRISA, 7);
            setbit(TRISC, 1);
			resetbit(PORTC, 0);
			resetbit(PORTA, 7);
            resetbit(PORTC, 1);
            break;
    }
}


void main()
{
	asm("nop");
    asm("clrwdt");
    INTCON = 0;                    //系统初始化
    OSCCON = 0X71;                //配置振荡为8M,开 WDT
	
	 TRISC = 0;
	 TRISA = 0xFF;
	 WPUC = 0xFF;
	 PORTA = 0;
	 PORTC = 0x00;
	 
	 while(1)
	 {
		setLedOn(2);
		delay_ms(1000);
		setLedOn(1);
		delay_ms(1000);
		setLedOn(3);
		delay_ms(1000);
		setLedOn(4);
		delay_ms(1000);
		setLedOn(5);
		delay_ms(1000);
	 }
}