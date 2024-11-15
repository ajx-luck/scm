/*-------------------------------------------
���ܣ�TMR2��ʾ
�汾��V1.0
���ڣ�2021.01.04 

*�������� ��΢�뵼�� &Ӧ��֧�ֲ�& ��д����
*��˾��ַ www.mcu.com.cn

-------------------------------------------*/

/*-------------------------------------------
��ע��	  ��ʱʱ����㷽��
          ʱ������Ϊϵͳָ��ʱ�ӣ���ΪFosc/4��
          ��ʱʱ��T = {1/[(Fosc/4)*Ԥ��Ƶ��*���Ƶ��]}*(PR2+1)
          ���������ʾ����
          T = {1/[(8/4)*0.25*1]}*250
		    = 125 us
-------------------------------------------*/ 

#include <sc.h>

typedef unsigned char u8t;
typedef unsigned int u16t;

#define _XTAL_FREQ 8000000UL		//�����16M�������Ϊ16000000UL

#define 	DAT		RB0
#define		CLK		RB1
#define 	COM1	RA5
#define 	COM2	RB3

#define 	LEDHON()	RA0 = 1
#define		LEDLON()	RA4 = 1
#define 	LEDHOFF()	RA0 = 0
#define		LEDLOFF()	RA4 = 0

static unsigned char table[]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x71,0x38};

u8t intCount = 0;
u8t IntFlag = 0;
u8t sleepTime = 0;
u8t workStep = 0;
u8t lowCount = 0;
u8t red = 0;
u8t blue = 0;
u8t green = 0;
u8t ledCount = 0;
u8t ledFlag = 0;
u8t lastRed = 0;
u8t lastGreen = 0;
u8t lastBlue = 0;
u8t colorStep = 0;
u8t count250 = 0;
u8t count10ms = 0;
u8t keyCount = 0;
u8t duty = 0;
u16t count900s = 0;
u8t longPressFlag = 0;
u8t breathTime = 0;
u8t breathFalg = 0;
u8t delayTime = 0;
u16t fullTime = 0;
u16t closeTime = 0;
u8t breathWaitTime = 0;
u8t count1s = 0;
u8t currentDuty = 0;
u8t preDuty = 0;
u16t waitRainbowTime = 0;
u16t D_ADDATA1H = 0;
u16t D_ADDATA1L = 0;
u8t chrgStep = 0;
u8t batValue = 0;
u8t keyCount2 = 0;
u8t keyCount3 = 0;
u8t shiwei = 0;
u8t gewei = 0;
u8t adCheckTime = 0;
u8t firstTime = 0;
u8t maxDuty = 0;
u16t count3S = 0;
u8t pwmFlag = 0;
volatile unsigned int	adresult;
volatile unsigned long adsum;
volatile unsigned int admin,admax;
volatile unsigned char adtimes;

void ADC_Sample(unsigned char adch,unsigned char adldo);
void DelayXms(unsigned char x);
void ind_light_disp( u8t udata );

void IO_Init(void);
extern int IntVecIdx; //occupied 0x10:rpage 0
void pwmStop();
void pwmInit();
void delay(u8t time);
void keyCtr();
void workCtr();
void gotoSleep();
void ledRed();
void ledGreen();
void ledOff();
void chrgCtr();
void checkBatAD();
char keyRead2(char KeyStatus,u8t* keyCount);
char keyRead(char KeyStatus);
void refresh();
void delay_us(u8t time);
void Delay10Us(void);



void main(void)
{
	asm("nop");
	asm("clrwdt");
	OSCCON = 0X70;				//�ڲ�����8M��ָ��ʱ��Ϊ8M/4=2M
	WDTCON = 0x01;
	TRISA = 0;					//PORTA���������
	TRISB = 0;					//PORTB���������
	IO_Init();
	
	OPTION_REG = 0B00000000;	//Timer0ʹ���ڲ�ʱ�ӣ�Ԥ��ƵΪ1:2��ÿ��ֵ0.125uS*4*2=1uS
	
	TMR0 = 155;					//�趨Timer��ʼֵ����ʱʱ��Ϊ��256-6��*4*2/8M=250uS
	T0IF = 0;
	T0IE = 1;					//ʹ��Timer0����ж�
	
	GIE = 1;					//�������ж�
	
	while(1)
	{
		asm("clrwdt");
		if(chrgStep)
		{
			if(adCheckTime > 20)
			{
				if(batValue < 100)
				{
					shiwei = batValue/10;
					gewei = batValue%10;
				}
				else
				{
					shiwei = gewei = 10;
				}
			}
			refresh();
		}
		else if(workStep)
		{
			shiwei = 0;
			gewei = workStep;
			refresh();
		}
		else
		{
			if(firstTime == 0)
			{
				PORTA |= 0x11;
				shiwei = gewei = 8;
				refresh();
			}
			else
			{
				PORTA &= 0xEE;
				COM1 = 1;
				COM2 = 1;
			}
		}
		if(!IntFlag)
			continue;
		IntFlag = 0;
		 if(++adCheckTime >= 40)
        	adCheckTime = 0;
        if(adCheckTime < 20)
        	checkBatAD();
        chrgCtr();
        keyCtr();
        if(workStep)
        	workCtr();
        else
        {
        	if(keyCount == 0)
        		pwmStop();
        		
        	if(chrgStep == 0 && keyCount == 0)
        	{
        		if(++sleepTime >= 100)
        			gotoSleep();
        		
        	}
        	else if(chrgStep == 0 && firstTime == 0)
        	{
        		sleepTime = 0;
        	}
        	else
        	{
        		sleepTime = 0;
        	}
        }
	}
}


void workCtr()
{
	pwmInit();

	if(workStep < 9)
	{
		maxDuty = 70 + workStep*3;
		if(workStep == 1)
			maxDuty = 70;
		else if(workStep == 8)
			maxDuty = 94;
		if(duty < maxDuty)
			duty++;
		else
			duty = maxDuty;
	}
	else
	{
		//9��ѭ��
		if(++count3S >= 300)
		{
			count3S = 0;
			duty = 70;
		}
		if(count3S % 9 == 0)
		{
			if(count3S < 150)
			{
				if(++duty > 94)
					duty = 94;
			}
			else
			{
				if(--duty < 70)
					duty = 70;
			}
		}
	}
			


	//PWMD01H = 0X00;
	PWMD1L = duty;
	if(adresult > 2260)
	{
		LEDHON();
		PORTA;
		PORTB;
		LEDLOFF();
	}
	else
	{
		LEDHOFF();
		PORTA;
		PORTB;
		LEDLON();
	}
	
	if(count900s > 900)
	{
		gotoSleep();
	}

}



void pwmInit()
{
	if(pwmFlag == 0)
	{
		pwmFlag = 1;
		TRISB |= 0x10;
		PWMCON = 0x60;
		PWMTH = 0x00;
		PWMTL = 100;
		PWMD01H = 0X00;
		PWMD1L = duty;
		PWMCON |= 0x02;
		TRISB &= 0xEF;
	}
}


void pwmStop()
{
	pwmFlag = 0;
	PWMCON &= 0xFD;
	TRISB |= 0x10;
}


void checkBatAD()
{
		ANS3 = 1;		//RB5ѡ��ģ������
		TRISA3 = 1;		//RB5��Ϊ����
		ADC_Sample(3,5);
	       //û����6.6V 1226�������� 8.2V 1526
        if(adresult > 2800)
        	adresult = 2800;
        else if(adresult < 2200)
        	adresult = 2200;
        batValue = adresult - 2200;
        
       	batValue= batValue/6;

}

/**********************************************************
�������ƣ�AD_Sample
�������ܣ�AD���
��ڲ�����adch - ���ͨ����adldo-��׼��ѹ
			adldo = 0�� VDD ��ΪADC �ο�
			adldo = 4�� �ڲ�LDO 2.4V ��ΪADC �ο�
			adldo = 5�� �ڲ�LDO 2.0V ��ΪADC �ο�
���ڲ������� 
��    ע������ͨ������������Ϊģ���
	      ����10��,ȡ�м�˴ε�ƽ��ֵΪ�����������adresult��
**********************************************************/
void ADC_Sample(unsigned char adch,unsigned char adldo)
{
	volatile unsigned int ad_temp;
	
	if(LDOEN^(adldo!=0)) 		//���AD�ο�ΪVDD���ڲ�LDO��������Ҫ��ʱ100US���� 
	{
		ADCON1 = adldo;			//�����,ADֵȡ12λ
		__delay_us(100);		//��ʱ100us 
	}	
	else
		ADCON1 = adldo;			//�����Ҫѡ������ADת��ʱ�ӣ����԰�ADCON1��BIT3��Ϊ1����TADSEL = 1; 
		
	ADCON0 = 0X41 | (adch << 2);	//16��Ƶ�������ƵΪ16M����TADSEL=1�������ѡ16��Ƶ������
	asm("nop");
	asm("nop");
	asm("nop");
	asm("nop");
	GODONE = 1;						//��ʼת��

	unsigned char i = 0;
	while(GODONE)
	{
		if(0 == (--i))
			return;
	}
	
	ad_temp=(ADRESH<<4)+(ADRESL>>4);	//����12λADֵ
	
	if(0 == admax)
	{
		admax = ad_temp;
		admin = ad_temp;
	}
	else if(ad_temp > admax)
		admax = ad_temp;				//AD�������ֵ
	else if(ad_temp < admin)
		admin = ad_temp;				//AD������Сֵ
	
	adsum += ad_temp;
	if(++adtimes >= 10)
	{
		adsum -= admax;
		if(adsum >= admin)	adsum -= admin;
			else	adsum = 0;
		
		adresult = (unsigned int)(adsum >> 3);		//8��ƽ��ֵ��Ϊ���ս��
		
		adsum = 0;
		admin = 0;
		admax = 0;
		adtimes = 0;
	}
}


//ADC���β���
unsigned int ADC_Result(unsigned char adch)
{
	ADCON1 = 0;						//����룬��VDD��AD�ο� 
	__delay_us(20);					//��ʱ20us
	ADCON0 = 0X41 | (adch << 2);	//16��Ƶ
	asm("nop");
	asm("nop");
	asm("nop");
	asm("nop");
	GODONE = 1;						//��ʼת��

	unsigned char i = 0;
	while(GODONE)
	{
		if(0 == (--i))
			return 0;				//ת����ʱ
	}
	
	unsigned int ad_result ;
	ad_result=(ADRESH<<4)+(ADRESL>>4);	//����12λADֵ;
	return ad_result;
}
/***********************************************************
�������ƣ�DelayXms
�������ܣ����뼶�Ǿ�׼��ʱ
��ڲ�����x - ��ʱʱ��
���ڲ�����
��    ע��
***********************************************************/
void DelayXms(unsigned char x)
{
	unsigned char i,j;
	for(i=x;i>0;i--)
		for(j=153;j>0;j--);
}

char keyRead(char KeyStatus)	
{ 
	if (KeyStatus)
	{
		if(++keyCount >= 150)
		{
			keyCount = 150;
			if(!longPressFlag)
			{
				longPressFlag = 1;
				return 2;
			}
			
		}
	}
	else
	{
		if(keyCount >= 150)
		{
			keyCount = 0;
			longPressFlag = 0;
			return	0;
		}
		else if(keyCount >= 5)
		{
			keyCount = 0;
			return	1;
		}
		keyCount = 0;
	}
	return 0;
}



char keyRead2(char KeyStatus,u8t* keyCount)	
{ 
	if (KeyStatus)
	{
		(*keyCount)++;
		if(*keyCount >= 200)
		{
			*keyCount = 200;
		}
	}
	else
	{
		if(*keyCount >= 8)
		{
			*keyCount = 0;
			return	1;
		}
		*keyCount = 0;
	}
	return 0;
}



void gotoSleep()
{
	count900s = 0;
	colorStep = 0;
	ledFlag = 0;
	sleepTime = 0;
	firstTime = 1;
	//pwStep = 0;
	pwmStop();
	PORTA = 0x00;
	PORTB = 0x00;
	workStep = 0;
	COM1 = 1;
	COM2 = 1;
/*
	RAIE = 1;
	RBIE = 1;                    //����PORTB��ƽ�仯�ж�
    GIE = 0;                    //GIE = 0ʱ�����Ѻ�ִ��SLEEP�����;GIE = 1ʱ�����Ѻ������жϷ���

	IOCB = 0x20;
	IOCA = 0x04;
	RAIF = 0;
	RBIF = 0;
	WDTCON = 0x00;
	PORTA;
    PORTB;                        //��PORTBֵ������	
			
    asm("clrwdt");

    asm("sleep");                //��������ģʽ

    asm("nop");
	OSCCON = 0X70;                //������Ϊ8M,�� WDT
	WDTCON = 0x01;
	PORTA;
    PORTB;  
	IOCB = 0x00;
	IOCA = 0x00;
	RBIE = 0; 
	RAIE = 0;
	*/
}




void chrgCtr()
{
	if(RB5)
	{
		//�����
		chrgStep = 1;
		workStep = 0;
		if(batValue > 99)
		{
			//LEDHON();
			//LEDLOFF();
			PORTA |= 0x01;
			PORTB;
			PORTA &= 0xEF;
		}
		else
		{
			//LEDHOFF();
			//LEDLON();
			PORTA |= 0x10;
			PORTB;
			PORTA &= 0xFE;
		}
	}
	else
	{
		chrgStep = 0;
	}
}

void keyCtr()
{
	u8t kclick = keyRead(!RA2);
	if(kclick == 1)
	{
		//�̰��ػ�
		workStep = 0;
	}
	else if(kclick == 2)
	{
		workStep = 1;
		count900s = 0;
	}
	if(workStep)
	{
		if(keyRead2(!RA1,&keyCount2))
		{
			//����+
			if(++workStep >= 9)
				workStep = 9;
		}
		
		if(keyRead2(!RB2,&keyCount3))
		{
			//����-
			if(--workStep <= 1)
				workStep = 1;
		}
	}
}


void refresh()
{
	COM1 = 1;
	COM2 = 1;
	if(shiwei > 0)
	{
		ind_light_disp(table[shiwei]);
		COM1 = 1;
		COM2 = 0;
		delay_us(100);
		COM1 = 1;
		COM2 = 1;
	}
	ind_light_disp(table[gewei]);
	COM1 = 0;
	COM2 = 1;
	delay_us(100);
	COM1 = 1;
	COM2 = 1;
}

void ind_light_disp( u8t udata )
{
	unsigned char Count0;
	for(Count0=0;Count0<=7;Count0++)
	{
		CLK=0;
		Delay10Us();
		if(udata&0x80)
		{
			DAT=1;
			Delay10Us();
		}
		else
		{
			DAT=0;
			Delay10Us();
		}
		CLK=1;
		Delay10Us();
		udata<<=1;
	}
	CLK=0;
	DAT=0;
}

void IO_Init(void)
{
	//IO��ʼ��
	PORTA = 0x00;
	PORTB = 0x00;
	TRISB = 0x34;
	TRISA = 0x06;
	WPUA = 0x06;
	WPDA = 0x00;
	WPUB = 0x04;
	WPDB = 0x00;
    
}


void Delay10Us(void)
{
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
}


void delay_us(u8t time)
{
	while(time)
	{
		--time;
		NOP();
	}
}

void delay(u8t time)
{
	u8t i=0;
	for(i=0;i<time;i++)
		NOP();
}


void interrupt Timer0_Isr(void)
{
	if(T0IF)
	{
		TMR0 += 155;			//TMR0�����Զ���ֵ������TIM0��ʱ��,TIME�ǲ������ģ�һ��Ϊ�������ڣ����Լӣ�6+2��=8
		
		
		if(++intCount>=100)
		{
			intCount = 0;
			IntFlag = 1;
			if(++count1s >= 100)
			{
				count1s = 0;
				if(workStep)
				{
					++count900s;
				}
				else
				{
					count900s = 0;
				}
			}
		}
		T0IF = 0;
		
	}
}

