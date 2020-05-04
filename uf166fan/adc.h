#include<sc.h>

volatile unsigned int	adresult;
unsigned char readVrefADC();
void ADC_Sample(unsigned char adch);
void DelayXms(unsigned char x);