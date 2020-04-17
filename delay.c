#include "delay.h"

void delay_1us(void) //1us延时函数，不能连续调用，
{
asm("nop");
asm("nop");
}
void delay_3us(void) //3us延时函数,,可重复调用不影响精度
{
asm("nop");
asm("nop");
asm("nop");
asm("nop");
asm("nop");
asm("nop");

}
void delay_10us(void) //10us延时函数,可重复调用不影响精度
{
delay_3us();
delay_3us();
delay_3us();
}
void delay_50us(void) //48us延时函数,可重复调用不影响精度
{
delay_10us();
delay_10us();
delay_10us();
delay_10us();
delay_10us();
}
void delay_100us(void)//exactly 98us延时函数,可重复调用不影响精度
{
delay_50us();
delay_50us();
delay_3us();
}
//ms级延时
void delay_1ms(void)
{
delay_100us();
delay_100us();
delay_100us();
delay_100us();
delay_100us();
delay_100us();
delay_100us();
delay_100us();
delay_100us();
delay_100us();
}
void delay_ms(unsigned int ms)
{
while(ms--)
delay_1ms();//8MHZ主频时，25分钟误差小于1秒
}