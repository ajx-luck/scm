#include "led.h"


u8 LED_BUF1=0;
u8 LED_BUF2=0;
u8 LED_BUF3=0;
u8 Led_ColorR[32]={0};
u8 Led_ColorG[32]={0};
u8 Led_ColorB[32]={0};

void ns_delay(u16 ns)
{
	u16 i=0;
	for(i=0;i<ns;i++);

}
/*******************************************************************************
* 函 数 名         : LED_Init
* 函数功能		   : LED初始化函数
* 输    入         : 无
* 输    出         : 无
*******************************************************************************/
void LED_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);	
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed=GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1;
	GPIO_Init(GPIOA, &GPIO_InitStructure);	
	
	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed=GPIO_Speed_10MHz;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
	GPIO_Init(GPIOB, &GPIO_InitStructure);		
		
}
void led_rgb_pro(void)
{
	u8 i=0;
	for(i=0;i<25;i++)
	{
		Led_ColorR[i]=255;//绿
		Led_ColorG[i]=0;//红
		Led_ColorB[i]=0;//蓝
	}
}

void SEND_LED(void)
{
	u8 x=0;
   for(x=0;x<25;x++)
    {
		if(x==0)
		{
			LED_BUF1=Led_ColorR[0];
			LED_BUF2=Led_ColorG[0];
			LED_BUF3=Led_ColorB[0];
		}
		else if(x==1)
		{
			LED_BUF1=Led_ColorR[1];
			LED_BUF2=Led_ColorG[1];
			LED_BUF3=Led_ColorB[1];		
		}
		else if(x==2)
		{
			LED_BUF1=Led_ColorR[2];
			LED_BUF2=Led_ColorG[2];
			LED_BUF3=Led_ColorB[2];				
		}
		else if(x==3)
		{
			LED_BUF1=Led_ColorR[3];
			LED_BUF2=Led_ColorG[3];
			LED_BUF3=Led_ColorB[3];				
		}
		else if(x==4)
		{
			LED_BUF1=Led_ColorR[4];
			LED_BUF2=Led_ColorG[4];
			LED_BUF3=Led_ColorB[4];				
		}
		else if(x==5)
		{
			LED_BUF1=Led_ColorR[5];
			LED_BUF2=Led_ColorG[5];
			LED_BUF3=Led_ColorB[5];				
		}
		else if(x==6)
		{
			LED_BUF1=Led_ColorR[6];
			LED_BUF2=Led_ColorG[6];
			LED_BUF3=Led_ColorB[6];				
		}	
		else if(x==7)
		{
			LED_BUF1=Led_ColorR[7];
			LED_BUF2=Led_ColorG[7];
			LED_BUF3=Led_ColorB[7];				
		}
		else if(x==8)
		{
			LED_BUF1=Led_ColorR[8];
			LED_BUF2=Led_ColorG[8];
			LED_BUF3=Led_ColorB[8];				
		}
		else if(x==9)
		{
			LED_BUF1=Led_ColorR[9];
			LED_BUF2=Led_ColorG[9];
			LED_BUF3=Led_ColorB[9];		
		}
		else if(x==10)
		{
			LED_BUF1=Led_ColorR[10];
			LED_BUF2=Led_ColorG[10];
			LED_BUF3=Led_ColorB[10];		
		}
		else if(x==11)
		{
			LED_BUF1=Led_ColorR[11];
			LED_BUF2=Led_ColorG[11];
			LED_BUF3=Led_ColorB[11];		
		}
		else if(x==12)
		{
			LED_BUF1=Led_ColorR[12];
			LED_BUF2=Led_ColorG[12];
			LED_BUF3=Led_ColorB[12];		
		}
		else if(x==13)
		{
			LED_BUF1=Led_ColorR[13];
			LED_BUF2=Led_ColorG[13];
			LED_BUF3=Led_ColorB[13];		
		}
		else if(x==14)
		{
			LED_BUF1=Led_ColorR[14];
			LED_BUF2=Led_ColorG[14];
			LED_BUF3=Led_ColorB[14];		
		}
		else if(x==15)
		{
			LED_BUF1=Led_ColorR[15];
			LED_BUF2=Led_ColorG[15];
			LED_BUF3=Led_ColorB[15];		
		}	
		else if(x==16)
		{
			LED_BUF1=Led_ColorR[16];
			LED_BUF2=Led_ColorG[16];
			LED_BUF3=Led_ColorB[16];		
		}
		else if(x==17)
		{
			LED_BUF1=Led_ColorR[17];
			LED_BUF2=Led_ColorG[17];
			LED_BUF3=Led_ColorB[17];		
		}
		else if(x==18)
		{
			LED_BUF1=Led_ColorR[18];
			LED_BUF2=Led_ColorG[18];
			LED_BUF3=Led_ColorB[18];	
		}
		else if(x==19)
		{
			LED_BUF1=Led_ColorR[19];
			LED_BUF2=Led_ColorG[19];
			LED_BUF3=Led_ColorB[19];		
		}	
		else if(x==20)
		{
			LED_BUF1=Led_ColorR[19];
			LED_BUF2=Led_ColorG[19];
			LED_BUF3=Led_ColorB[19];		
		}
		else if(x==21)
		{
			LED_BUF1=Led_ColorR[19];
			LED_BUF2=Led_ColorG[19];
			LED_BUF3=Led_ColorB[19];		
		}
		else if(x==22)
		{
			LED_BUF1=Led_ColorR[19];
			LED_BUF2=Led_ColorG[19];
			LED_BUF3=Led_ColorB[19];		
		}	
		else if(x==23)
		{
			LED_BUF1=Led_ColorR[19];
			LED_BUF2=Led_ColorG[19];
			LED_BUF3=Led_ColorB[19];		
		}
		else if(x==24)
		{
			LED_BUF1=Led_ColorR[19];
			LED_BUF2=Led_ColorG[19];
			LED_BUF3=Led_ColorB[19];		
		}
		if(LED_BUF1&0x80)	
		{
			send_high;
		}	
		else
		{
			send_low ;	
		}
		if(LED_BUF1&0x40)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}		
		if(LED_BUF1&0x20)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}
		if(LED_BUF1&0x10)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}		
		if(LED_BUF1&0x08)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}	
		if(LED_BUF1&0x04)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}	
		if(LED_BUF1&0x02)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}	
		if(LED_BUF1&0x01)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}	
		if(LED_BUF2&0x80)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}
		if(LED_BUF2&0x40)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}		
		if(LED_BUF2&0x20)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}
		if(LED_BUF2&0x10)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}		
		if(LED_BUF2&0x08)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}	
		if(LED_BUF2&0x04)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}	
		if(LED_BUF2&0x02)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}	
		if(LED_BUF2&0x01)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}
		if(LED_BUF3&0x80)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}
		if(LED_BUF3&0x40)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}		
		if(LED_BUF3&0x20)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}
		if(LED_BUF3&0x10)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}		
		if(LED_BUF3&0x08)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}	
		if(LED_BUF3&0x04)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}	
		if(LED_BUF3&0x02)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}	
		if(LED_BUF3&0x01)	
		{
			send_high;
		}	
		else
		{
			send_low ;
		}												
    }
    send_rst;
	



}


