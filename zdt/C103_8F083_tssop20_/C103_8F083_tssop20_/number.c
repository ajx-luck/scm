#include <sc.h>
#include	"number.h";


void A1()
{
	A_LED2_OUT();
    A_LED1_OUT();
    A_LED2 = 1;
    A_LED1 = 0;
}

void A2()
{
	A_LED3_OUT();
    A_LED1_OUT();
    A_LED3 = 1;
    A_LED1 = 0;
}

void A3()
{
	A_LED4_OUT();
    A_LED1_OUT();
    A_LED4 = 1;
    A_LED1 = 0;
}

void A4()
{
	A_LED5_OUT();
    A_LED1_OUT();
    A_LED5 = 1;
    A_LED1 = 0;
}

void A5()
{
	A_LED1_OUT();
    A_LED2_OUT();
    A_LED1 = 1;
    A_LED2 = 0;
}

void A6()
{
	A_LED1_OUT();
    A_LED3_OUT();
    A_LED1 = 1;
    A_LED3 = 0;
}

void A7()
{
	A_LED1_OUT();
    A_LED4_OUT();
    A_LED1 = 1;
    A_LED4 = 0;
}

void B1()
{
	A_LED2_OUT();
    A_LED4_OUT();
    A_LED4 = 1;
    A_LED2 = 0;
}

void B2()
{
	A_LED2_OUT();
    A_LED5_OUT();
    A_LED5 = 1;
    A_LED2 = 0;
}

void B3()
{
	A_LED2_OUT();
    A_LED3_OUT();
    A_LED2 = 1;
    A_LED3 = 0;
}

void B4()
{
	A_LED2_OUT();
    A_LED4_OUT();
    A_LED2 = 1;
    A_LED4 = 0;
}

void B5()
{
	A_LED2_OUT();
    A_LED5_OUT();
    A_LED2 = 1;
    A_LED5 = 0;
}


void B6()
{
	A_LED3_OUT();
    A_LED4_OUT();
    A_LED3 = 1;
    A_LED4 = 0;
}

void B7()
{
	A_LED3_OUT();
    A_LED5_OUT();
    A_LED3 = 1;
    A_LED5 = 0;
}


void C1()
{
	B_LED2_OUT();
    B_LED1_OUT();
    B_LED2 = 1;
    B_LED1 = 0;
}

void C2()
{
	B_LED3_OUT();
    B_LED1_OUT();
    B_LED3 = 1;
    B_LED1 = 0;
}

void C3()
{
	B_LED4_OUT();
    B_LED1_OUT();
    B_LED4 = 1;
    B_LED1 = 0;
}

void C4()
{
	B_LED5_OUT();
    B_LED1_OUT();
    B_LED5 = 1;
    B_LED1 = 0;
}

void C5()
{
	B_LED1_OUT();
    B_LED2_OUT();
    B_LED1 = 1;
    B_LED2 = 0;
}

void C6()
{
	B_LED1_OUT();
    B_LED3_OUT();
    B_LED1 = 1;
    B_LED3 = 0;
}

void C7()
{
	B_LED1_OUT();
    B_LED4_OUT();
    B_LED1 = 1;
    B_LED4 = 0;
}

void D1()
{
	B_LED2_OUT();
    B_LED4_OUT();
    B_LED4 = 1;
    B_LED2 = 0;
}

void D2()
{
	B_LED2_OUT();
    B_LED5_OUT();
    B_LED5 = 1;
    B_LED2 = 0;
}

void D3()
{
	B_LED2_OUT();
    B_LED3_OUT();
    B_LED2 = 1;
    B_LED3 = 0;
}

void D4()
{
	B_LED2_OUT();
    B_LED4_OUT();
    B_LED2 = 1;
    B_LED4 = 0;
}

void D5()
{
	B_LED2_OUT();
    B_LED5_OUT();
    B_LED2 = 1;
    B_LED5 = 0;
}


void D6()
{
	B_LED3_OUT();
    B_LED4_OUT();
    B_LED3 = 1;
    B_LED4 = 0;
}

void D7()
{
	B_LED3_OUT();
    B_LED5_OUT();
    B_LED3 = 1;
    B_LED5 = 0;
}

void led1()
{
	A_LED2_OUT();
    A_LED3_OUT();
    A_LED3 = 1;
    A_LED2 = 0;
}

void led2()
{
	A_LED4_OUT();
    A_LED3_OUT();
    A_LED4 = 1;
    A_LED3 = 0;
}

void led3()
{
	A_LED5_OUT();
    A_LED3_OUT();
    A_LED5 = 1;
    A_LED3 = 0;
}

void led4()
{
	B_LED2_OUT();
    B_LED3_OUT();
    B_LED3 = 1;
    B_LED2 = 0;
}

void led5()
{
	B_LED4_OUT();
    B_LED3_OUT();
    B_LED4 = 1;
    B_LED3 = 0;
}

void led6()
{
	B_LED5_OUT();
    B_LED3_OUT();
    B_LED5 = 1;
    B_LED3 = 0;
}

void led7()
{
	B_LED5_OUT();
    B_LED4_OUT();
    B_LED5 = 1;
    B_LED4 = 0;
}

void led8()
{
	B_LED5_OUT();
    B_LED1_OUT();
    B_LED1 = 1;
    B_LED5 = 0;
}

void led9()
{
	B_LED5_OUT();
    B_LED4_OUT();
    B_LED4 = 1;
    B_LED5 = 0;
}

void led10()
{
	A_LED5_OUT();
    A_LED4_OUT();
    A_LED5 = 1;
    A_LED4 = 0;
}

void led11()
{
	A_LED1_OUT();
    A_LED5_OUT();
    A_LED1 = 1;
    A_LED5 = 0;
}

void led12()
{
	A_LED4_OUT();
    A_LED5_OUT();
    A_LED4 = 1;
    A_LED5 = 0;
}



void refreshLed()
{

    TRISB |= 0xFF;
    TRISA |= 0x60;
    PORTB &= 0x00;
    PORTA &= 0x9F;
    switch(ledCnt)
    {
		case 0:
        if(showNumAShi & 0x01)
        {
			A1();
        }
        break;
        case 1:
        if(showNumAShi & 0x02)
        {
			A2();
        }
        break;
        case 2:
        if(showNumAShi & 0x04)
        {
			A3();
        }
        break;
             case 3:
        if(showNumAShi & 0x08)
        {
			A4();
        }
        break;
             case 4:
        if(showNumAShi & 0x10)
        {
			A5();
        }
        break;
             case 5:
        if(showNumAShi & 0x20)
        {
			A6();
        }
        break;
             case 6:
        if(showNumAShi & 0x40)
        {
			A7();
        }
        break;
         case 7:
        if(showNumAge & 0x01)
        {
			B1();
        }
        break;
            case 8:
        if(showNumAge & 0x02)
        {
			B2();
        }
        break;
        case 9:
        if(showNumAge & 0x04)
        {
			B3();
        }
        break;
           case 10:
        if(showNumAge & 0x08)
        {
			B4();
        }
        break;
           case 11:
        if(showNumAge & 0x10)
        {
			B5();
        }
        break;
           case 12:
        if(showNumAge & 0x20)
        {
			B6();
        }
        break;
           case 13:
        if(showNumAge & 0x40)
        {
			B7();
        }
        break;
        case 14:
        if(showNumBShi & 0x01)
        {
			C1();
        }
        break;
                case 15:
        if(showNumBShi & 0x02)
        {
			C2();
        }
        break;
                case 16:
        if(showNumBShi & 0x04)
        {
			C3();
        }
        break;
                case 17:
        if(showNumBShi & 0x08)
        {
			C4();
        }
        break;
                case 18:
        if(showNumBShi & 0x10)
        {
			C5();
        }
        break;
                case 19:
        if(showNumBShi & 0x20)
        {
			C6();
        }
        break;
                case 20:
        if(showNumBShi & 0x40)
        {
			C7();
        }
        break;
        case 21:
        if(showNumBge & 0x01)
        {
			D1();
        }
        break;
              case 22:
        if(showNumBge & 0x02)
        {
			D2();
        }
        break;
              case 23:
        if(showNumBge & 0x04)
        {
			D3();
        }
        break;
              case 24:
        if(showNumBge & 0x08)
        {
			D4();
        }
        break;
              case 25:
        if(showNumBge & 0x10)
        {
			D5();
        }
        break;
              case 26:
        if(showNumBge & 0x20)
        {
			D6();
        }
        break;
              case 27:
        if(showNumBge & 0x40)
        {
			D7();
        }
        break;
        default:
        if(modeStep == 1)
        {
			led1();
        }
        if(modeStep == 2)
        {
			led2();
        }
        if(modeStep == 3)
        {
			led3();
        }
        break;
    }
    
    if(++ledCnt >= 40)
    {
		ledCnt = 0;
    }
    //DelayUs(12);
    //TRISB |= 0xFF;
    //TRISA |= 0x60;
    //PORTB &= 0x00;
    //PORTA &= 0x9F;
}

/*-------------------------------------------------
 *	函数名：	DelayUs
 *	功能： 	 	短延时函数
 *	输入参数：Time延时时间长度 延时时长Time Us
 *	返回参数： 无
 --------------------------------------------------*/
 void DelayUs(uchar Time)
 {
     uchar a;
     for(a=0;a<Time;a++)
     {
        NOP();
	 } 
}


 /*-------------------------------------------------
 *	函数名：	DelayMs
 *	功能： 	 	短延时函数
 *	输入参数：Time延时时间长度 延时时长Time ms
 *	返回参数： 无
 --------------------------------------------------*/
 void DelayMs(uchar Time)
 {
     uchar a,b;
     for(a=0;a<Time;a++)
     {
         for(b=0;b<5;b++)
         {
             DelayUs(197);
         }
     }
 }
 /*-------------------------------------------------
 *	函数名：	DelayS
 *	功能： 	 	短延时函数
 *	输入参数：Time延时时间长度 延时时长Time S
 *	返回参数： 无
 --------------------------------------------------*/
 void DelayS(uchar Time)
 {
     uchar a,b;
     for(a=0;a<Time;a++)
     {
         for(b=0;b<10;b++)
         {
             DelayMs(100);
         }
     }
 }
 