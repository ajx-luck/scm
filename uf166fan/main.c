#include<sc.h>
#include "scankey.h"
#include "init.h"

#define MAX_FAN_LEVEL 4
#define MIN_FAN_LEVEL 1

#define FAN_STATUS_OFF  0
#define FAN_STATUS_ON  1
#define FAN_STATUS_NONE 2

#define LED_1  1
#define LED_2  2
#define LED_3  3
#define LED_4  4

static unsigned char time0Flag = 0;
static unsigned int countTime = 0;
static unsigned int count10Ms = 0;
unsigned char currentLevel = 2;

unsigned char FAN_STATUS = FAN_STATUS_NONE;
//�����ȴ���
unsigned int fan_check_time = 0;

void setLedOn(int ledIndex);

void checkUsbStatus()
{
	if(getbit(PORTB,2) == 1){
		if(getbit(PORTB,1) == 1){
			//�����ˣ�Led����
			resetbit(PORTA,0);
		}else if(countTime == 1000){
			//����У�һֱ��		
				reversebit(PORTA,0);
		}
	}else{
		//usb�Ͽ�����Ϩ��,PA0 = 1
		setbit(PORTA,0);
	}
}

void Init_PWM()
{
	CCP1CON = 0x0F;//����PC2ΪPWMģʽ��4,5λΪռ�ձȵĵ�2λ
	T2CON = 0; //ʱ�ӷ�Ƶ 1:1 PWM����Ϊ��PR2+1��*4/8,000,000
	PR2 = 199;
	
	CCPR1L = 0;//ռ�ձȸ�8λ����2λ����Ϊ0��������� ռ�ձ� = CCPR1L*4/4*(PR2+1)
	TMR2IF = 0;
	T2CON = 0;
	//T2CON = 0X04 //������ʱ��2�����������PWM
}

//���÷���ת��
void setFanLevel(char level)
{
	
	unsigned int levelWidth =  (PR2+1)/MAX_FAN_LEVEL;
	char tempLevel =  currentLevel + level;
	if(tempLevel > MAX_FAN_LEVEL)
	{
		tempLevel = MAX_FAN_LEVEL;
	}
	
	if(tempLevel < MIN_FAN_LEVEL)
	{
		tempLevel = MIN_FAN_LEVEL;
	}
	currentLevel = tempLevel;
	CCPR1L = tempLevel*currentLevel;
	if(FAN_STATUS == FAN_STATUS_ON)
	{
		setLedOn(currentLevel);
	}
	
}

//�رշ���
void closeFan()
{
	Init_PWM();
	currentLevel = 2;
	setLedOn(5);
	setbit(PORTA,0);
	fan_check_time = 0;
	FAN_STATUS = FAN_STATUS_OFF;
	
}


//�������Ƿ�����
void checkFan()
{
	setbit(PORTA,1);
	setFanLevel(0);
	T2CON = 0X04; //������ʱ��2�����������PWM
		
	if(FAN_STATUS == FAN_STATUS_ON)
	{
		closeFan();
		return;
	}
	//û�м�⵽����
	if(FAN_STATUS == FAN_STATUS_NONE)
	{
		fan_check_time++;
		if(fan_check_time == 3000)
		{
			closeFan();
			return;
		}
	}
	
	if(getbit(PORTB,6) == 0)
	{
		FAN_STATUS = FAN_STATUS_ON;
	}else
	{
		FAN_STATUS = FAN_STATUS_NONE;
	}
	//EN IN����ߵ�λ��D1���������FAN DET��FAN DETΪ�͵�λ����������������ߵ�λ��δ����
	
}





//����Led����
void setLedOn(int ledIndex)
{
	switch(ledIndex)
	{
		case 1:
		resetbit(PORTB,7); setbit(PORTC,0); resetbit(PORTC,1);
		break;
		case 2:
		setbit(PORTB,7); resetbit(PORTC,0); setbit(PORTC,1);
		break;
		setbit(PORTB,7); resetbit(PORTC,0); setbit(PORTC,1);
		case 3:
		setbit(PORTB,7); resetbit(PORTC,0); resetbit(PORTC,1);
		break;
		case 4:
		resetbit(PORTB,7); setbit(PORTC,0); setbit(PORTC,1);
		break;
		default:
		resetbit(PORTB,7); resetbit(PORTC,0); resetbit(PORTC,1);
		break;
	}
}


void main(void)
{
	Init_System();
	Init_GPIO();
	Init_Interupt();
	
	//���û���
	IOCB = 0x04;
	TMR0 = 155;
	TO = 0;
	
	struct Keys key1,key2,key3;
	//K1����
	key1.key_index = 5;
	//K2�ӵ�
	key2.key_index = 4;
	//K3����
	key3.key_index = 3;
	resetKey(&key1);
	resetKey(&key2);
	resetKey(&key3);
	//����IO����
	TRISA = 0;
	TRISB = 0x0E;//1-6������
	//TRISB = 0;
	//PORTB = 0;
	TRISC = 0;
	while(1)
	{
		//1������һ��
		if(time0Flag)
		{
			asm("clrwdt");
			time0Flag = 0;
			key1.key_addr_result = key2.key_addr_result = key3.key_addr_result = PORTB;
			sacnKeyInput(&key1);
			sacnKeyInput(&key2);
			sacnKeyInput(&key3);
			countTime++;
			count10Ms++;
		}
		
		//10������һ��
		if(count10Ms == 10)
		{
			if(key_read(&key1) != key_no)
			{
				//��⵽�����ˣ��������Ƿ����
				checkFan();
				
			}
			else if(FAN_STATUS == FAN_STATUS_NONE)
			{
				checkFan();
			}
			
			
			
			if(key_read(&key2) != key_no)
			{
				//�ӵ�
				setFanLevel(1);
			}
			
			if(key_read(&key3) != key_no)
			{
				//����
				setFanLevel(-1);
			}
			
			
			
			
			count10Ms = 0;
			checkUsbStatus();
			
		}
		
		
		
		if(countTime == 1000)
		{
			countTime = 0;
		}
	}
	
}


/***********************************************
�������ƣ�Timer0_Isr
�������ܣ��жϷ���
��ڲ�������
���ڲ�������
��ע��
***********************************************/
void interrupt Timer0_Isr()
{
	if(T0IF)
	{
	//---------------------------------------
		TMR0 += 155;		//���¸���ֵ���ڸ�ֵǰTimer0���м��������ڸû����ϼӳ�ֵ
	//---------------------------------------
			
		T0IF = 0;			//���жϱ�־λ	
		time0Flag =1;
		
	}
	
}
