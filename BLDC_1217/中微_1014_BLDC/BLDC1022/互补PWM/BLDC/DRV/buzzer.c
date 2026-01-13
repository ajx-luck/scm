#include "config.h"

bit BuzzerOnFlags = 0;
xdata u16 BuzzerTime1ms = 0;

void buzzer()
{
	if(BuzzerOnFlags)
	{
		BuzzerTime1ms++;
		if(BuzzerTime1ms < BUZZERTIME)
		{
			BUZZERON;
		}
		else
		{
			BUZZEROFF;
			BuzzerOnFlags = 0;
		}
	}
	else
	{
		BUZZEROFF;
		BuzzerTime1ms = 0;
	}
}