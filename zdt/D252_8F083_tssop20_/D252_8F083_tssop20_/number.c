#include <sc.h>
#include	"number.h";


u8t		ledCnt = 0;
u8t		showNumAShi = 0x7F;
u8t		showNumAge = 0x7F;
u8t		showNumBShi = 0x7F;
u8t		showNumBat = 0x7F;


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
		case 5:
		A_LED5_OUT;
		A_LED5 = 1;
		break;
		case 6:
		A_LED6_OUT;
		A_LED6 = 1;
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
		case 5:
		A_LED5_OUT;
		A_LED5 = 0;
		break;
		case 6:
		A_LED6_OUT;
		A_LED6 = 0;
		break;
		default:
		break;
	}
}




void refreshLed()
{


    TRISB |= 0x7E;
    PORTB &= 0x81;

    switch(ledCnt)
    {
		case 0:
        if(showNumAShi & 0x01)
        {
			ledOpen(1,2);
        }
        break;
        case 1:
        if(showNumAShi & 0x02)
        {
			ledOpen(1,3);
        }
        break;
        case 2:
        if(showNumAShi & 0x04)
        {
			ledOpen(1,4);
        }
        break;
             case 3:
        if(showNumAShi & 0x08)
        {
			ledOpen(1,5);
        }
        break;
             case 4:
        if(showNumAShi & 0x10)
        {
			ledOpen(1,6);
        }
        break;
             case 5:
        if(showNumAShi & 0x20)
        {
			ledOpen(2,1);
        }
        break;
             case 6:
        if(showNumAShi & 0x40)
        {
			ledOpen(2,3);
        }
        break;
         case 7:
        if(showNumAge & 0x01)
        {
			ledOpen(2,4);
        }
        break;
            case 8:
        if(showNumAge & 0x02)
        {
			ledOpen(2,5);
        }
        break;
        case 9:
        if(showNumAge & 0x04)
        {
			ledOpen(2,6);
        }
        break;
           case 10:
        if(showNumAge & 0x08)
        {
			ledOpen(3,1);
        }
        break;
           case 11:
        if(showNumAge & 0x10)
        {
			ledOpen(3,2);
        }
        break;
           case 12:
        if(showNumAge & 0x20)
        {
			ledOpen(3,4);
        }
        break;
           case 13:
        if(showNumAge & 0x40)
        {
			ledOpen(3,5);
        }
        break;
        case 14:
        if(showNumBShi & 0x01)
        {
			ledOpen(4,1);
        }
        break;
                case 15:
        if(showNumBShi & 0x02)
        {
			ledOpen(4,2);
        }
        break;
                case 16:
        if(showNumBShi & 0x04)
        {
			ledOpen(4,3);
        }
        break;
                case 17:
        if(showNumBShi & 0x08)
        {
			ledOpen(4,5);
        }
        break;
                case 18:
        if(showNumBShi & 0x10)
        {
			ledOpen(4,6);
        }
        break;
                case 19:
        if(showNumBShi & 0x20)
        {
			ledOpen(5,1);
        }
        break;
                case 20:
        if(showNumBShi & 0x40)
        {
			ledOpen(5,2);
        }
        break;
        case 21:
        if(showNumBat & 0x01)
        {
			ledOpen(5,4);
        }
        break;
              case 22:
        if(showNumBat & 0x02)
        {
			ledOpen(5,6);
        }
        break;
              case 23:
        if(showNumBat & 0x04)
        {
			ledOpen(6,1);
        }
        break;
              case 24:
        if(showNumBat & 0x08)
        {
			ledOpen(6,2);
        }
        break;
              case 25:
        if(showNumBat & 0x10)
        {
			ledOpen(6,3);
        }
        break;
              case 26:
        if(showNumBat & 0x20)
        {
			ledOpen(6,4);
        }
        break;
      
        default:
        break;
    }
    DelayUs(50);
	TRISB |= 0x7E;
    PORTB &= 0x81;
    if(++ledCnt >= 27)
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
 