#include "scankey.h"
#include "init.h"
#include "adc.h"

#define MAX_FAN_LEVEL 4
#define MIN_FAN_LEVEL 1

#define FAN_STATUS_OFF  0
#define FAN_STATUS_ON  1
#define FAN_STATUS_NONE 2

#define PBPORTB PORTA
#define PBTRISB TRISA


//1�����жϱ�־
static unsigned char time0Flag = 0;
static unsigned int countTime = 0;
static unsigned int count10Ms = 0;
unsigned char currentLevel = 1;
//�͵�ѹ������
unsigned char lowVTime = 0;
//����״̬
unsigned char FAN_STATUS = FAN_STATUS_ON;
//�����ȴ���
unsigned int fan_check_time = 0;
//�����ṹ��
struct Keys key1;
//�رշ���
void closeFan();
//��ʼ������
void Init_Config();
//˯��ģʽ
void Sleep_Mode();

void checkUsbStatus() {
	//����ָʾ��
    if(FAN_STATUS == FAN_STATUS_ON)
	{
		setbit(PORTA, 0);
		resetbit(PORTC, 1);
	}
	//USB������
	if (getbit(PORTB, 2) == 1) {
		//���õ͵�ѹ���
		lowVTime = 0;
        if (getbit(PORTB, 1) == 1) {
            //�����ˣ�PC1����,A0�ر�
            resetbit(PORTC, 1);
			setbit(PORTA, 0);
        } else if (countTime == 100) {
            //����У����һֱ����		
            reversebit(PORTA, 0);
			//setbit(PORTC, 1);
        }
    } else {
        //usb�Ͽ�����Ƶ�Ϩ��,PA0 = 1
        setbit(PORTA, 0);
		setbit(PORTC, 1);
		
		//����ڲ���ѹֵ,��ѹ����3.1V
		if((adresult/8) > 0x63 && countTime == 100)
		{
			if(lowVTime < 10)
			{
				lowVTime++;
				//����ƣ�
				reversebit(PORTA, 0);
			}else
			{
				//�رշ���
				closeFan();
			}
		}
    }
}

void Init_PWM() {
    CCP1CON = 0x0F;//����PC2ΪPWMģʽ��4,5λΪռ�ձȵĵ�2λ
    T2CON = 0; //ʱ�ӷ�Ƶ 1:1 PWM����Ϊ��PR2+1��*4/8,000,000
    PR2 = 7;

    CCPR1L = 0;//ռ�ձȸ�8λ����2λ����Ϊ0��������� ռ�ձ� = CCPR1L*4/4*(PR2+1)
    TMR2IF = 0;
    T2CON = 0;
    //PC2����Ϊ�����
    resetbit(TRISC, 2);
    //T2CON = 0X04 //������ʱ��2�����������PWM
}

//���÷���ת��
void setFanLevel(char level) {
	if(level == 0)
	{
		currentLevel = 2;
	}
    unsigned int levelWidth = (PR2 + 1) / MAX_FAN_LEVEL;
    char tempLevel = currentLevel + level;
    if (tempLevel > MAX_FAN_LEVEL) {
        tempLevel = MIN_FAN_LEVEL;
    }

    
    if (FAN_STATUS == FAN_STATUS_ON) {
		currentLevel = tempLevel;
		switch(currentLevel)
		{
			case 1:
			closeFan();
			break;
			case 2:
			CCPR1L = 2;
			break;
			case 3:
			CCPR1L = 3;
			break;
			case 4:
			CCPR1L = 5;
			break;
		}
    //����ռ���
		//CCPR1L = levelWidth * currentLevel;
      
    }

}

//�رշ���
void closeFan() {
    Init_PWM();
    currentLevel = 1;
    setbit(PORTA, 0);
    //PWM���������Ϊ���룬�ر�PWM
    setbit(TRISC, 2);
    fan_check_time = 0;
    FAN_STATUS = FAN_STATUS_OFF;
	//���õ͵�ѹ���
	lowVTime = 0;
    Sleep_Mode();
}


//�������Ƿ�����
void checkFan() {
	resetbit(TRISA, 1);
    resetbit(PORTA, 1);
    //PC2����Ϊ�����
    resetbit(TRISC, 2);
	setbit(PORTA, 2);
    T2CON = 0X04; //������ʱ��2�����������PWM

    //EN IN����ߵ�λ��D1���������FAN DET��FAN DETΪ�͵�λ����������������ߵ�λ��δ����
  //  if (getbit(PORTB, 6) == 0) {
   //     FAN_STATUS = FAN_STATUS_ON;
   // } else {
    //    FAN_STATUS = FAN_STATUS_NONE;
   // }
	
	
    //û�м�⵽����
    //if (FAN_STATUS == FAN_STATUS_NONE) {
    //    fan_check_time++;
    //    if (fan_check_time == 3000) {
     //       closeFan();
      //      return;
     //   }
    //}


}




//ɨ�谴��
void scanKeys() {
    key1.key_addr_result = PORTB;
    sacnKeyInput(&key1);
    countTime++;
   
}

//��ⰴ��״̬������
void checkKeys() {
    if (key_driver(&key1) == key_click) {
        //��⵽�����ˣ��������Ƿ����

        if (FAN_STATUS == FAN_STATUS_ON) {
			//��һ�£����ȼӵ�
            setFanLevel(1);
            
        } else {
            FAN_STATUS = FAN_STATUS_ON;
			setFanLevel(0);
            checkFan();
        }
        return;
    } else if (FAN_STATUS == FAN_STATUS_NONE) {
        checkFan();
    }


}


void main(void) {
	//Sleep_Mode();
    Init_Config();
    while (1) {
        //0.1������һ��
        if (time0Flag) {
            asm("clrwdt");
            time0Flag = 0;
			scanKeys();
            count10Ms++;
        }

        //10������һ��
        if (count10Ms == 100) {		
            checkKeys();
            count10Ms = 0;
            //���USB״̬
            checkUsbStatus();
			//����ڲ���ѹ
			readVrefADC();
        }

        if (countTime == 101) {
            countTime = 0;
        }
		
    }

}

void Init_Config() {

    Init_System();
    Init_GPIO();
    Init_Interupt();
    Init_PWM();
    //���û���
    IOCB = 0x04;
    TMR0 = 155;
    TO = 0;

    //K1����
    key1.key_index = 5;
    
    resetKey(&key1);

    //����IO����
    TRISA = 0;
    TRISB = 0x7E;//1-6������
    TRISC = 0;
}


void Sleep_Mode() {
    INTCON = 0;

    OPTION_REG = 0;

    TRISA = 0B00000000;        //�ر��������
    PORTA = 0B00000000;
    WPUA = 0B00000000;

    TRISB = 0B00100000;
    PORTB = 0B00000000;

    PORTB = 0;
    WPUB = 0B00100000;         //RB5 ����

    IOCB = 0B00100100;            //����RB5 RB2��IO�ڵ�ƽ�仯�ж�
    RBIE = 1;                    //����PORTB��ƽ�仯�ж�
    GIE = 1;                    //GIE = 0ʱ�����Ѻ�ִ��SLEEP�����;GIE = 1ʱ�����Ѻ������жϷ���

    ADCON0 = 0;                    //�ر�����ģ��

    OSCCON = 0X70;                //������Ϊ16M,�ر�WDT
	
    PORTB;                        //��PORTBֵ������	
			
    asm("clrwdt");

    asm("sleep");                //��������ģʽ

    asm("nop");
	
	


}


/***********************************************
�������ƣ�Timer0_Isr
�������ܣ��жϷ���
��ڲ�������
���ڲ�������
��ע��
***********************************************/
void interrupt Timer0_Isr() {
    if (T0IF) {
        //---------------------------------------
        TMR0 += 155;        //���¸���ֵ���ڸ�ֵǰTimer0���м��������ڸû����ϼӳ�ֵ
        //---------------------------------------

        T0IF = 0;            //���жϱ�־λ	
        time0Flag = 1;

    }

    if (RBIF) {
        RBIF = 0;            //���жϱ�־
        Init_Config();
    }
}