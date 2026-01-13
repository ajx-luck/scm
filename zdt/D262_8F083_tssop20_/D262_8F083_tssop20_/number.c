#include <sc.h>
#include	"number.h";


u8t		ledCnt = 0;
u8t		showNumAShi = 0x7F;
u8t		showNumAge = 0x7F;



void ledOpen(u8t hight,u8t low)
{
	switch(hight)
	{
		case 1:
		A_LED1_OUT;
		A_LED1 = 1;
		break;
		case 2:
		A_LED2_OUT;
		A_LED2 = 1;
		break;
		case 3:
		A_LED3_OUT;
		A_LED3 = 1;
		break;
		case 4:
		A_LED4_OUT;
		A_LED4 = 1;
		break;
		default:
		break;
	}
	switch(low)
	{
		case 1:
		A_LED1_OUT;
		A_LED1 = 0;
		break;
		case 2:
		A_LED2_OUT;
		A_LED2 = 0;
		break;
		case 3:
		A_LED3_OUT;
		A_LED3 = 0;
		break;
		case 4:
		A_LED4_OUT;
		A_LED4 = 0;
		break;
		default:
		break;
	}
}




void refreshLed()
{


    TRISB |= 0x23;
    PORTB &= 0xDC;
	TRISC |= 0x01;
	PORTC &= 0xFE;
    switch(ledCnt)
    {
		case 0:
        if(showNumAShi & 0x01)
        {
			ledOpen(2,1);
        }
        break;
        case 1:
        if(showNumAShi & 0x02)
        {
			ledOpen(2,3);
        }
        break;
        case 2:
        if(showNumAShi & 0x04)
        {
			ledOpen(2,4);
        }
        break;
             case 3:
        if(showNumAShi & 0x08)
        {
			ledOpen(1,2);
        }
        break;
             case 4:
        if(showNumAShi & 0x10)
        {
			ledOpen(1,3);
        }
        break;
             case 5:
        if(showNumAShi & 0x20)
        {
			ledOpen(1,4);
        }
        break;
             case 6:
        if(showNumAShi & 0x40)
        {
			ledOpen(3,1);
        }
        break;
         case 7:
        if(showNumAge & 0x01)
        {
			ledOpen(3,4);
        }
        break;
            case 8:
        if(showNumAge & 0x02)
        {
			ledOpen(3,2);
        }
        break;
        case 9:
        if(showNumAge & 0x04)
        {
			ledOpen(4,1);
        }
        break;
        default:
        break;
    }
    if(++ledCnt > 9)
    {
		ledCnt = 0;
    }
}

/*-------------------------------------------------
 *	函数名：	DelayUs
 *	功能： 	 	短延时函数
 *	输入参数：Time延时时间长度 延时时长Time Us
 *	返回参数： 无
 --------------------------------------------------*/
 void DelayUs(u8t Time)
 {
     u8t a;
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
 