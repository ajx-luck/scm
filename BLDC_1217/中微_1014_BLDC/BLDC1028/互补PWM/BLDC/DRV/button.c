#include "button.h"
#define   key_val1		1307
#define   key_val2		683
#define   key_val3		2049
#define   key_val4		1847

bit	KEY1_SET=0;
bit	KEY2_SET=0;
bit	KEY3_SET=0;
bit	KEY4_SET=0;
u8 KEY1_CONT=0;
u8 KEY2_CONT=0;
u8 KEY3_CONT=0;
u8 KEY4_CONT=0;


void se_key(void)
{
	if((AD_KeyValue+50)>key_val1&&(AD_KeyValue-50)<key_val1)
	{
		KEY1_CONT++;
		if(KEY1_CONT>=20)
		{
			KEY1_CONT=20;
			KEY1_SET=1;
		}
	}
	else
	{
		KEY1_CONT=0;
		KEY1_SET=0;
	}
	if((AD_KeyValue+50)>key_val2&&(AD_KeyValue-50)<key_val2)
	{
		KEY2_CONT++;
		if(KEY2_CONT>=20)
		{
			KEY2_CONT=20;
			KEY2_SET=1;
		}
	}
	else
	{
		KEY2_CONT=0;
		KEY2_SET=0;
	}
	if((AD_KeyValue+50)>key_val3&&(AD_KeyValue-50)<key_val3)
	{
		KEY3_CONT++;
		if(KEY3_CONT>=20)
		{
			KEY3_CONT=20;
			KEY3_SET=1;
		}
	}
	else
	{
		KEY3_CONT=0;
		KEY3_SET=0;
	}
	if((AD_KeyValue+50)>key_val4&&(AD_KeyValue-50)<key_val4)
	{
		KEY4_CONT++;
		if(KEY4_CONT>=20)
		{
			KEY4_CONT=20;
			KEY4_SET=1;
		}
	}
	else
	{
		KEY4_CONT=0;
		KEY4_SET=0;
	}
}
void key_pro(void)
{
	static u8 key_mode=0;
	se_key();
	if(key_mode==0&&(KEY1_SET==1||KEY2_SET==1||KEY3_SET==1||KEY4_SET==1))
	{
		key_mode=1;
		if(KEY1_SET==1)
		{
			if(Motor_FRFlagsTemp==1)
			{
				Motor_FRFlagsTemp=0;
			}
			else
			{
				Motor_FRFlagsTemp=1;
			}
		}
		else if(KEY2_SET==1)
		{
		
		}
		else if(KEY3_SET==1)
		{
		
		}
		else if(KEY4_SET==1)
		{
		
		}
	}
	if(key_mode==1&&KEY1_SET==0&&KEY2_SET==0&&KEY3_SET==0&&KEY4_SET==0)
	{
		key_mode=0;
	}
}