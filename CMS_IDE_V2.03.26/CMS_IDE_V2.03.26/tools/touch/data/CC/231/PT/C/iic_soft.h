#ifndef _IIC_SOFT_H_
#define _IIC_SOFT_H_
#include <cms.h>

//�ܽŶ���
#define			I2C_SCL			RB6
#define			I2C_SDA			RB7
volatile bit  	I2C_SCL_IO		@((unsigned)&TRISB*8)+6;		//IB�ڷ�������
volatile bit  	I2C_SDA_IO		@((unsigned)&TRISB*8)+7;		//IB�ڷ�������

unsigned char I2C_Read1bYTE(unsigned char ack);			//���ڴ������湤��
unsigned char I2C_Write1bYTE(unsigned char data);
void I2C_WriteStop();
void I2C_WriteStart();
void I2C_WaitMoment();


#endif