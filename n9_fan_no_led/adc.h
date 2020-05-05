#include<sc.h>

volatile unsigned int	adresult;
unsigned int readVrefADC();
void ADC_Sample(unsigned char adch);
void DelayXms(unsigned char x);