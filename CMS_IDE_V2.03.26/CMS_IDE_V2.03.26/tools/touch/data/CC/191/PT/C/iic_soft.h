#ifndef _IIC_SOFT_H_
#define _IIC_SOFT_H_
#include <cms.h>

//�ܽŶ���
#define		I2C_SCL			P21
#define		I2C_SDA			P20

#define  	I2C_SCL_IN		P2C = (unsigned)(P2C&0xC7) | 0x08	//��Ϊ�����
#define		I2C_SDA_IN		P2C = (unsigned)(P2C&0xF8) | 0x01			
#define  	I2C_SCL_OUT		P2C = (unsigned)(P2C&0xC7) | 0x10	//��Ϊ���������
#define		I2C_SDA_OUT		P2C = (unsigned)(P2C&0xF8) | 0x02

unsigned char I2C_Read1bYTE(unsigned char ack);			//���ڴ������湤��
unsigned char I2C_Write1bYTE(unsigned char data);
void I2C_WriteStop();
void I2C_WriteStart();
void I2C_WaitMoment();


#endif