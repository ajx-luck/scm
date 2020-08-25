#include "adc.h"
#include "number.h"


void showNubShiwei(char num)
{
	for(char i=0;i<7;i++)
	{
		if((num >> i) & 0x01)
			showNubShiwei2(i);
		else
			setInput();
	}
}


void showNubShiwei2(char index)
{
	switch(index)
	{
		case 0:
		A2();
		break;
		case 1:
		B2();
		break;
		case 2:
		C2();
		break;
		case 3:
		D2();
		break;
		case 4:
		E2();
		break;
		case 5:
		F2();
		break;
		case 6:
		G2();
		break;
	}
}

void showNubGewei(char num)
{
	for(char i=0;i<8;i++)
	{
		if((num >> i) & 0x01)
			showNubGewei2(i);
		else
			setInput();
	}
}


void showNubGewei2(char index)
{
	switch(index)
	{
		case 0:
		A3();
		break;
		case 1:
		B3();
		break;
		case 2:
		C3();
		break;
		case 3:
		D3();
		break;
		case 4:
		E3();
		break;
		case 5:
		F3();
		break;
		case 6:
		G3();
		break;
	}
}


void showNubBaiwei(char num)
{
	for(char i=0;i<8;i++)
	{
		if((num >> i) & 0x01)
			showNubBaiwei2(i);
		else
			setInput();
	}
}


void showNubBaiwei2(char index)
{
	switch(index)
	{
		case 0:
		A1();
		break;
		case 1:
		B1();
		break;
		case 2:
		C1();
		break;
		case 3:
		D1();
		break;
		case 4:
		E1();
		break;
		case 5:
		F1();
		break;
		case 6:
		G1();
		break;
	}
}

void A1()
{
	showNub(6,4);
}

void B1()
{
	showNub(7,4);
}

void C1()
{
	showNub(7,2);
}

void D1()
{
	showNub(6,1);
}

void E1()
{
	showNub(6,2);
}

void F1()
{
	showNub(6,3);
}

void G1()
{
	showNub(7,3);
}

void A2()
{
	showNub(8,4);
}

void B2()
{
	showNub(9,4);
}

void C2()
{
	showNub(9,2);
}

void D2()
{
	showNub(8,1);
}

void E2()
{
	showNub(8,2);
}

void F2()
{
	showNub(8,3);
}

void G2()
{
	showNub(9,3);
}

void A3()
{
	showNub(10,4);
}

void B3()
{
	showNub(11,4);
}

void C3()
{
	showNub(11,2);
}

void D3()
{
	showNub(10,1);
}

void E3()
{
	showNub(10,2);
}

void F3()
{
	showNub(10,3);
}

void G3()
{
	showNub(11,3);
}

void DP()
{
	//showNub(7,1);
	setInput();
	setOutput(1);		
	setOutput(7);	
	setHightOutput(7);
	setlowOutput(1);
	delayms(15);
	PORTC &= 0xFE;
	CLRWDT(); 
}

void TITLE()
{
	setInput();
	setOutput(4);		
	setlowOutput(4);
	setOutput(5);	
	setHightOutput(5);
	delayms(15);
	CLRWDT(); 
	setInput();
}

void WU()
{
	showNub(12,1);
	setInput();
}

void RUO()
{
	showNub(12,2);
}

void ZHONG()
{
	showNub(12,3);
}

void QIANG()
{
	showNub(12,4);
}


void showNub(char hight,char low)
{
	setInput();
	delayms(2);
	setOutput(low);	
	setOutput(hight);	
	setlowOutput(low);	
	setHightOutput(hight);
	delayms(15);
	CLRWDT(); 
}



void setHightOutput(char outPut)
{
	switch(outPut)
	{
		case 12:
			PORTA |= 0x80;
		break;
		case 11:
			PORTA |= 0x04;
		break;
		case 10:
			PORTA |= 0x10;
		break;
		case 9:
			PORTB |= 0x02;
		break;
		case 8:
			PORTC |= 0x04;
		break;
		case 7:
			PORTC |= 0x01;
		break;
		case 6:
			PORTC |= 0x02;
		break;
		case 5:
			PORTC |= 0x08;
		break;
		case 4:
			PORTA |= 0x20;
		break;
		case 3:
			PORTA |= 0x08;
		break;
		case 2:
			PORTA |= 0x02;
		break;
		case 1:
			PORTA |= 0x40;
		break;
	}
}


void setlowOutput(char outPut)
{
	switch(outPut)
	{
		case 12:
			PORTA &= 0x7F;
		break;
		case 11:
			PORTA &= 0xFB;
		break;
		case 10:
			PORTA &= 0xEF;
		break;
		case 9:
			PORTB &= 0xFD;
		break;
		case 8:
			PORTC &= 0xFB;
		break;
		case 7:
			PORTC &= 0xFE;
		break;
		case 6:
			PORTC &= 0xFD;
		break;
		case 5:
			PORTC &= 0xF7;
		break;
		case 4:
			PORTA &= 0xDF;
		break;
		case 3:
			PORTA &= 0xF7;
		break;
		case 2:
			PORTA &= 0xFD;
		break;
		case 1:
			PORTC &= 0xFE;
			PORTA &= 0xBF;
		break;
	}
}


void setOutput(char outPut)
{
	switch(outPut)
	{
		case 12:
			TRISA &= 0x7F;
		break;
		case 11:
			TRISA &= 0xFB;
		break;
		case 10:
			TRISA &= 0xEF;
		break;
		case 9:
			TRISB &= 0xFD;
		break;
		case 8:
			TRISC &= 0xFB;
		break;
		case 7:
			TRISC &= 0xFE;
		break;
		case 6:
			TRISC &= 0xFD;
		break;
		case 5:
			TRISC &= 0xF7;
		break;
		case 4:
			TRISA &= 0xDF;
		break;
		case 3:
			TRISA &= 0xF7;
		break;
		case 2:
			TRISA &= 0xFD;
		break;
		case 1:
			TRISA &= 0xBF;
		break;
	}
}

void setInput()
{
	TRISA = 0xFF;
	PORTA |= 0xFF;		
	TRISB |= 0xC2;
	PORTB = 0xC2;
	TRISC |= 0x0F;
	PORTC = 0x0F;
	PORTA;
	PORTB;
	PORTC;
}


void low1(char bai,char shi,char ge,char dp,char h3)
{
	setLow();
	setlowOutput(1);
	if((bai >> 3) & 0x01)
	{
		setOutput(6);
		setHightOutput(6);
	}
	if((shi >> 3) & 0x01)
	{
		setOutput(8);
		setHightOutput(8);
	}
	if((ge >> 3) & 0x01)
	{
		setOutput(10);
		setHightOutput(10);
	}
	if(dp)
	{
		setOutput(7);
		setHightOutput(7);
	}
	if(h3)
	{
		setOutput(12);
		setHightOutput(12);
	}
	delayms(15);
	
}

void low2(char bai,char shi,char ge,char h4)
{
	TRISA = 0x00;
	setLow();
	setlowOutput(2);
	if((bai >> 2) & 0x01)
	{
		setOutput(7);
		setHightOutput(7);
	}
	if((shi >> 2) & 0x01)
	{
		setOutput(9);
		setHightOutput(9);
	}
	if((ge >> 2) & 0x01)
	{
		setOutput(11);
		setHightOutput(11);
	}
	
	if((bai >> 4) & 0x01)
	{
		setOutput(6);
		setHightOutput(6);
	}
	if((shi >> 4) & 0x01)
	{
		setOutput(8);
		setHightOutput(8);
	}
	if((ge >> 4) & 0x01)
	{
		setOutput(10);
		setHightOutput(10);
	}
	if(h4)
	{
		setOutput(12);
		setHightOutput(12);
	}
	delayms(15);
}

void low3(char bai,char shi,char ge,char h5)
{
	TRISA = 0x00;
	setLow();
	setlowOutput(3);
	if((bai >> 5) & 0x01)
	{
		setOutput(6);
		setHightOutput(6);
	}
	if((shi >> 5) & 0x01)
	{
		setOutput(8);
		setHightOutput(8);
	}
	if((ge >> 5) & 0x01)
	{
		setOutput(10);
		setHightOutput(10);
	}
	
	if((bai >> 6) & 0x01)
	{
		setOutput(7);
		setHightOutput(7);
	}
	if((shi >> 6) & 0x01)
	{
		setOutput(9);
		setHightOutput(9);
	}
	if((ge >> 6) & 0x01)
	{
		setOutput(11);
		setHightOutput(11);
	}
	if(h5)
	{
		setOutput(12);
		setHightOutput(12);
	}
	delayms(15);
}

void low4(char bai,char shi,char ge,char h6,char h123)
{
	TRISA = 0x00;
	setLow();
	setlowOutput(4);

	if((bai >> 0) & 0x01)
	{
		setOutput(6);
		setHightOutput(6);
	}
	if((shi >> 0) & 0x01)
	{
		setOutput(8);
		setHightOutput(8);
	}
	if((ge >> 0) & 0x01)
	{
		setOutput(10);
		setHightOutput(10);
	}
	
	if((bai >> 1) & 0x01)
	{
		setOutput(7);
		setHightOutput(7);
	}
	if((shi >> 1) & 0x01)
	{
		setOutput(9);
		setHightOutput(9);
	}
	if((ge >> 1) & 0x01)
	{
		setOutput(11);
		setHightOutput(11);
	}
	if(h6)
	{
		setOutput(12);
		setHightOutput(12);
	}
	if(h123)
	{
		setOutput(5);
		setHightOutput(5);
	}
	delayms(15);
}

void setLow()
{
	TRISA = 0x00;
	TRISB = 0x00;
	TRISC = 0x00;
	setHightOutput(1);
	setHightOutput(2);
	setHightOutput(3);
	setHightOutput(4);
	setlowOutput(5);
	setlowOutput(6);
	setlowOutput(7);
	setlowOutput(8);
	setlowOutput(9);
	setlowOutput(10);
	setlowOutput(11);
	setlowOutput(12);
}




void delayms(u8t time)
{
	for(u8t i=0;i<time;i++);
}

