#include "delay.h"

void delay_1us(void) //1us��ʱ�����������������ã�
{
asm("nop");
asm("nop");
}
void delay_3us(void) //3us��ʱ����,,���ظ����ò�Ӱ�쾫��
{
asm("nop");
asm("nop");
asm("nop");
asm("nop");
asm("nop");
asm("nop");

}
void delay_10us(void) //10us��ʱ����,���ظ����ò�Ӱ�쾫��
{
delay_3us();
delay_3us();
delay_3us();
}
void delay_50us(void) //48us��ʱ����,���ظ����ò�Ӱ�쾫��
{
delay_10us();
delay_10us();
delay_10us();
delay_10us();
delay_10us();
}
void delay_100us(void)//exactly 98us��ʱ����,���ظ����ò�Ӱ�쾫��
{
delay_50us();
delay_50us();
delay_3us();
}
//ms����ʱ
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
delay_1ms();//8MHZ��Ƶʱ��25�������С��1��
}