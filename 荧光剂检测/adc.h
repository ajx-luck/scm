#ifndef	ADC_H
#define	ADC_H
#include<sc.h>

volatile unsigned int	adresult;
unsigned char readVrefADC();
unsigned int ADC_Sample(unsigned char adch);
void DelayXms(unsigned char x);
unsigned int ADC_Result(unsigned char adch);


#endif