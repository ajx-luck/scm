#include "config.h"

xdata u8 Uart0TxBuf[TxData] = 0;

xdata u8 Uart0TxCnt = 0;
xdata u8 Uart0TxDelay = TXDELAYTIME;
xdata u8 Uart0TxState = 0;
xdata u8 State[8] = 0;
extern xdata u8 AD_Op1oValueTarget;
extern xdata u8 lastAD_Op1oValueTarget;
extern xdata u8  displogo;
extern xdata u8 time;
void uart0send()
{
	u8 i = 0;
	u16 checksum = 0;
	time++;
	Uart0TxBuf[0] = 0;
	Uart0TxBuf[1] = 0;
	Uart0TxBuf[2] = 0;
	Uart0TxBuf[3] = 0;
	Uart0TxBuf[4] = 0;
	Uart0TxBuf[5] = 0;
	Uart0TxBuf[6] = 0;

	State[0] = Bat_LevelLowFlags;				//低电量
	State[1] = Motor_FRFlags;						//正反转
	State[2] = Bat_ChargeFlags;					//充电
	State[3] = Motor_StopTempFlags;			//暂停
	State[4] = Motor_RunErrorFlags;			//运行异常
	State[5] = SysPowerOutFlags;				//开机标志
	State[6] = 0;//displogo;			//0表示不要logo开机动画 1表示要logo开机动画displogo
	State[7] = 0;
	
	Uart0TxState &= 0;
	Uart0TxState |= State[0] << 0;
	Uart0TxState |= State[1] << 1;
	Uart0TxState |= State[2] << 2;
	Uart0TxState |= State[3] << 3;
	Uart0TxState |= State[4] << 4;
	Uart0TxState |= State[5] << 5;
	Uart0TxState |= State[6] << 6;
	Uart0TxBuf[0] = 0xBC;
	Uart0TxBuf[1] = 0x02;
	Uart0TxBuf[2] = Uart0TxState;
	Uart0TxBuf[3] = Vsp_LevelValueTarget;
	Uart0TxBuf[4] = Bat_Level;
		if( time == 3 )
	{
		time = 0; 
		lastAD_Op1oValueTarget = AD_Op1oValueTarget;  
	} 
		Uart0TxBuf[5] = lastAD_Op1oValueTarget; 
		Uart0TxBuf[6] =displogo ; //displogo
	for(i=0; i<(TxData-1); i++)
	{
		checksum = checksum + Uart0TxBuf[i];
	}
	Uart0TxBuf[TxData-1] = (u8)checksum; //数据校验
	
	SCON0 &= ~(1<<0);
	SCON0 &= ~(1<<1);
	Uart0TxCnt = 1;					
	SBUF0 = Uart0TxBuf[0]; 	//发送第一组数据
}

void uart0Tx()
{
	if(Uart0TxDelay)
		Uart0TxDelay--;
	else
	{
		Uart0TxDelay = TXDELAYTIME;
		uart0send();
	}
}
 
void ISR_UART0() interrupt 4
{
	if(SCON0 & 0x02)//表示发送缓冲区已空，可以发送下一帧数据
	{
		SCON0 &= ~(1<<1);//表示此时在发送数据
		if(Uart0TxCnt < TxData)
		{
			SBUF0 = Uart0TxBuf[Uart0TxCnt];	
			Uart0TxCnt++;
		}
		else
			Uart0TxCnt = 0;	
	}
	
	if(SCON0 & 0x01)//表示接收缓冲区已经满可以接收下一帧数据
	{
		SCON0 &= ~(1<<0);
	}
}


/******************************************************************************
 ** \brief	 putchar
 ** \param [in] data
 **            	
 ** \return  none
 ** \note   <stdio.h>中需要的函数
 ******************************************************************************/
char putchar (char ch)
{
	SBUF0 = ch;
	while( !(SCON0 & (1<<1)));
	SCON0 &=~(1<<1);		
	return 0;
}

/******************************************************************************
 ** \brief	 putchar
 ** \param [in] none
 **            	
 ** \return  data
 ** \note   <stdio.h>中需要的函数
 ******************************************************************************/
char getchar (void)
{
	while(!(SCON0 & (1<<0)));
	SCON0 &=~(1<<0);
	return  SBUF0;	
}
/********************************************************************************
 ** \brief	 puts 
 **
 ** \param [in]  bytes addr for sending
 **
 ** \return  <stdio.h>中需要的函数
 ******************************************************************************/
int  puts( const char  * s)
{
	while(*s)
	{
		putchar(*s);
		s++;		
	}
	return 0;
}



