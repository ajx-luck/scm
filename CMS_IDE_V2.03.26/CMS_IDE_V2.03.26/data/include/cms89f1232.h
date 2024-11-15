
#ifndef	_HTC_H_
#warning Header file cms89f1232.h included directly. Use #include <cms.h> instead.
#endif

 /* header file for the cms microcontroller. Base On Datasheet V1.8
	CMS89F1212
	CMS89F1232
 */

#ifndef	__CMS89F1232_H
#define	__CMS89F1232_H
        
volatile unsigned char      INDF         @   0x0000;
volatile unsigned char      TMR0         @   0x0001;
volatile unsigned char      PCL      @   0x0002;
volatile unsigned char      STATUS       @   0x0003;
volatile unsigned char      FSR      @   0x0004;
volatile unsigned char      PORTA        @   0x0005;
volatile unsigned char      PORTB        @   0x0006;
volatile unsigned char      WPUA         @   0x0007;
volatile unsigned char      WPUB         @   0x0008;
volatile unsigned char      IOCB         @   0x0009;
volatile unsigned char      PCLATH       @   0x000A;
volatile unsigned char      INTCON       @   0x000B;
volatile unsigned char      PIR1         @   0x000C;
volatile unsigned char      PIE1         @   0x000D;
volatile unsigned char      PWMD23H      @   0x000E;
volatile unsigned char      PWM01DT      @   0x000F;
volatile unsigned char      PWM23DT      @   0x0010;
volatile unsigned char      TMR2         @   0x0011;
volatile unsigned char      T2CON        @   0x0012;
volatile unsigned char      PWMCON0      @   0x0013;
volatile unsigned char      PWMCON1      @   0x0014;
volatile unsigned char      PWMTL        @   0x0015;
volatile unsigned char      PWMTH        @   0x0016;
volatile unsigned char      PWMD0L       @   0x0017;
volatile unsigned char      PWMD1L       @   0x0018;
volatile unsigned char      PWMD2L       @   0x0019;
volatile unsigned char      PWMD3L       @   0x001A;
volatile unsigned char      PWMD4L       @   0x001B;
volatile unsigned char      PWMD01H      @   0x001C;
volatile unsigned char      PWMCON2      @   0x001D;
volatile unsigned char      OPTION_REG       @   0x0081;
volatile unsigned char      TRISA        @   0x0085;
volatile unsigned char      TRISB        @   0x0086;
volatile unsigned char      WPDB         @   0x0087;
volatile unsigned char      OSCCON       @   0x0088;
volatile unsigned char      PR2      @   0x0091;
volatile unsigned char      OPA0CON      @   0x0098;
volatile unsigned char      OPA0ADJ      @   0x0099;
volatile unsigned char      OPA1CON      @   0x009A;
volatile unsigned char      OPA1ADJ      @   0x009B;
volatile unsigned char      ADCON1       @   0x009C;
volatile unsigned char      ADCON0       @   0x009D;
volatile unsigned char      ADRESL       @   0x009E;
volatile unsigned char      ADRESH       @   0x009F;
        
        
        
        
/* Definitions for STATUS register */       
volatile       bit      IRP    @ ((unsigned)&STATUS*8)+7;
volatile       bit      RP1    @ ((unsigned)&STATUS*8)+6;
volatile       bit      RP0    @ ((unsigned)&STATUS*8)+5;
volatile       bit      TO     @ ((unsigned)&STATUS*8)+4;
volatile       bit      PD     @ ((unsigned)&STATUS*8)+3;
volatile       bit      Z      @ ((unsigned)&STATUS*8)+2;
volatile       bit      DC     @ ((unsigned)&STATUS*8)+1;
volatile       bit      C      @ ((unsigned)&STATUS*8)+0;
        
        
/* Definitions for PORTA register */        
volatile       bit      RA5    @ ((unsigned)&PORTA*8)+5;
volatile       bit      RA4    @ ((unsigned)&PORTA*8)+4;
volatile       bit      RA3    @ ((unsigned)&PORTA*8)+3;
volatile       bit      RA2    @ ((unsigned)&PORTA*8)+2;
volatile       bit      RA1    @ ((unsigned)&PORTA*8)+1;
volatile       bit      RA0    @ ((unsigned)&PORTA*8)+0;
        
        
/* Definitions for PORTB register */        
volatile       bit      RB7    @ ((unsigned)&PORTB*8)+7;
volatile       bit      RB6    @ ((unsigned)&PORTB*8)+6;
volatile       bit      RB5    @ ((unsigned)&PORTB*8)+5;
volatile       bit      RB4    @ ((unsigned)&PORTB*8)+4;
volatile       bit      RB3    @ ((unsigned)&PORTB*8)+3;
volatile       bit      RB2    @ ((unsigned)&PORTB*8)+2;
volatile       bit      RB1    @ ((unsigned)&PORTB*8)+1;
volatile       bit      RB0    @ ((unsigned)&PORTB*8)+0;
        
        
/* Definitions for WPUA register */     
volatile       bit      WPUA5      @ ((unsigned)&WPUA*8)+5;
volatile       bit      WPUA4      @ ((unsigned)&WPUA*8)+4;
volatile       bit      WPUA3      @ ((unsigned)&WPUA*8)+3;
volatile       bit      WPUA2      @ ((unsigned)&WPUA*8)+2;
volatile       bit      WPUA1      @ ((unsigned)&WPUA*8)+1;
volatile       bit      WPUA0      @ ((unsigned)&WPUA*8)+0;
        
        
/* Definitions for WPUB register */     
volatile       bit      WPUB7      @ ((unsigned)&WPUB*8)+7;
volatile       bit      WPUB6      @ ((unsigned)&WPUB*8)+6;
volatile       bit      WPUB5      @ ((unsigned)&WPUB*8)+5;
volatile       bit      WPUB4      @ ((unsigned)&WPUB*8)+4;
volatile       bit      WPUB3      @ ((unsigned)&WPUB*8)+3;
volatile       bit      WPUB2      @ ((unsigned)&WPUB*8)+2;
volatile       bit      WPUB1      @ ((unsigned)&WPUB*8)+1;
volatile       bit      WPUB0      @ ((unsigned)&WPUB*8)+0;
        
        
/* Definitions for IOCB register */     
volatile       bit      IOCB7      @ ((unsigned)&IOCB*8)+7;
volatile       bit      IOCB6      @ ((unsigned)&IOCB*8)+6;
volatile       bit      IOCB5      @ ((unsigned)&IOCB*8)+5;
volatile       bit      IOCB4      @ ((unsigned)&IOCB*8)+4;
volatile       bit      IOCB3      @ ((unsigned)&IOCB*8)+3;
volatile       bit      IOCB2      @ ((unsigned)&IOCB*8)+2;
volatile       bit      IOCB1      @ ((unsigned)&IOCB*8)+1;
volatile       bit      IOCB0      @ ((unsigned)&IOCB*8)+0;
        
        
/* Definitions for INTCON register */       
volatile       bit      GIE    @ ((unsigned)&INTCON*8)+7;
volatile       bit      PEIE       @ ((unsigned)&INTCON*8)+6;
volatile       bit      T0IE       @ ((unsigned)&INTCON*8)+5;
volatile       bit      INTE       @ ((unsigned)&INTCON*8)+4;
volatile       bit      RBIE       @ ((unsigned)&INTCON*8)+3;
volatile       bit      T0IF       @ ((unsigned)&INTCON*8)+2;
volatile       bit      INTF       @ ((unsigned)&INTCON*8)+1;
volatile       bit      RBIF       @ ((unsigned)&INTCON*8)+0;
        
        
/* Definitions for PIR1 register */     
volatile       bit      PWMIF      @ ((unsigned)&PIR1*8)+2;
volatile       bit      TMR2IF     @ ((unsigned)&PIR1*8)+1;
volatile       bit      ADIF       @ ((unsigned)&PIR1*8)+0;
        
        
/* Definitions for PIE1 register */     
volatile       bit      PWMIE      @ ((unsigned)&PIE1*8)+2;
volatile       bit      TMR2IE     @ ((unsigned)&PIE1*8)+1;
volatile       bit      ADIE       @ ((unsigned)&PIE1*8)+0;
        
        
/* Definitions for PWMD23H register */      
volatile       bit      PWMD39     @ ((unsigned)&PWMD23H*8)+5;
volatile       bit      PWMD38     @ ((unsigned)&PWMD23H*8)+4;
volatile       bit      PWMD29     @ ((unsigned)&PWMD23H*8)+1;
volatile       bit      PWMD28     @ ((unsigned)&PWMD23H*8)+0;
        
        
/* Definitions for T2CON register */        
volatile       bit      CLK_SEL    @ ((unsigned)&T2CON*8)+7;
volatile       bit      TOUTPS3    @ ((unsigned)&T2CON*8)+6;
volatile       bit      TOUTPS2    @ ((unsigned)&T2CON*8)+5;
volatile       bit      TOUTPS1    @ ((unsigned)&T2CON*8)+4;
volatile       bit      TOUTPS0    @ ((unsigned)&T2CON*8)+3;
volatile       bit      TMR2ON     @ ((unsigned)&T2CON*8)+2;
volatile       bit      T2CKPS1    @ ((unsigned)&T2CON*8)+1;
volatile       bit      T2CKPS0    @ ((unsigned)&T2CON*8)+0;
        
        
/* Definitions for PWMCON0 register */      
volatile       bit      CLKDIV2    @ ((unsigned)&PWMCON0*8)+7;
volatile       bit      CLKDIV1    @ ((unsigned)&PWMCON0*8)+6;
volatile       bit      CLKDIV0    @ ((unsigned)&PWMCON0*8)+5;
volatile       bit      PWM4EN     @ ((unsigned)&PWMCON0*8)+4;
volatile       bit      PWM3EN     @ ((unsigned)&PWMCON0*8)+3;
volatile       bit      PWM2EN     @ ((unsigned)&PWMCON0*8)+2;
volatile       bit      PWM1EN     @ ((unsigned)&PWMCON0*8)+1;
volatile       bit      PWM0EN     @ ((unsigned)&PWMCON0*8)+0;
        
        
/* Definitions for PWMCON1 register */      
volatile       bit      PWMIO_SEL1     @ ((unsigned)&PWMCON1*8)+7;
volatile       bit      PWMIO_SEL0     @ ((unsigned)&PWMCON1*8)+6;
volatile       bit      PWM2DTEN       @ ((unsigned)&PWMCON1*8)+5;
volatile       bit      PWM0DTEN       @ ((unsigned)&PWMCON1*8)+4;
volatile       bit      DT_DIV1    @ ((unsigned)&PWMCON1*8)+1;
volatile       bit      DT_DIV0    @ ((unsigned)&PWMCON1*8)+0;
        
        
/* Definitions for PWMD01H register */      
volatile       bit      PWMD19     @ ((unsigned)&PWMD01H*8)+5;
volatile       bit      PWMD18     @ ((unsigned)&PWMD01H*8)+4;
volatile       bit      PWMD09     @ ((unsigned)&PWMD01H*8)+1;
volatile       bit      PWMD08     @ ((unsigned)&PWMD01H*8)+0;
        
        
/* Definitions for PWMCON2 register */      
volatile       bit      PWM4DIR    @ ((unsigned)&PWMCON2*8)+4;
volatile       bit      PWM3DIR    @ ((unsigned)&PWMCON2*8)+3;
volatile       bit      PWM2DIR    @ ((unsigned)&PWMCON2*8)+2;
volatile       bit      PWM1DIR    @ ((unsigned)&PWMCON2*8)+1;
volatile       bit      PWM0DIR    @ ((unsigned)&PWMCON2*8)+0;
        
        
/* Definitions for OPTION_REG register */       
volatile       bit      RBPU       @ ((unsigned)&OPTION_REG*8)+7;
volatile       bit      INTEDG     @ ((unsigned)&OPTION_REG*8)+6;
volatile       bit      T0CS       @ ((unsigned)&OPTION_REG*8)+5;
volatile       bit      T0SE       @ ((unsigned)&OPTION_REG*8)+4;
volatile       bit      PSA    @ ((unsigned)&OPTION_REG*8)+3;
volatile       bit      PS2    @ ((unsigned)&OPTION_REG*8)+2;
volatile       bit      PS1    @ ((unsigned)&OPTION_REG*8)+1;
volatile       bit      PS0    @ ((unsigned)&OPTION_REG*8)+0;
        
        
/* Definitions for TRISA register */        
volatile       bit      TRISA5     @ ((unsigned)&TRISA*8)+5;
volatile       bit      TRISA4     @ ((unsigned)&TRISA*8)+4;
volatile       bit      TRISA3     @ ((unsigned)&TRISA*8)+3;
volatile       bit      TRISA2     @ ((unsigned)&TRISA*8)+2;
volatile       bit      TRISA1     @ ((unsigned)&TRISA*8)+1;
volatile       bit      TRISA0     @ ((unsigned)&TRISA*8)+0;
        
        
/* Definitions for TRISB register */        
volatile       bit      TRISB7     @ ((unsigned)&TRISB*8)+7;
volatile       bit      TRISB6     @ ((unsigned)&TRISB*8)+6;
volatile       bit      TRISB5     @ ((unsigned)&TRISB*8)+5;
volatile       bit      TRISB4     @ ((unsigned)&TRISB*8)+4;
volatile       bit      TRISB3     @ ((unsigned)&TRISB*8)+3;
volatile       bit      TRISB2     @ ((unsigned)&TRISB*8)+2;
volatile       bit      TRISB1     @ ((unsigned)&TRISB*8)+1;
volatile       bit      TRISB0     @ ((unsigned)&TRISB*8)+0;
        
        
/* Definitions for WPDB register */     
volatile       bit      WPDB7      @ ((unsigned)&WPDB*8)+7;
volatile       bit      WPDB6      @ ((unsigned)&WPDB*8)+6;
volatile       bit      WPDB5      @ ((unsigned)&WPDB*8)+5;
volatile       bit      WPDB4      @ ((unsigned)&WPDB*8)+4;
volatile       bit      WPDB3      @ ((unsigned)&WPDB*8)+3;
volatile       bit      WPDB2      @ ((unsigned)&WPDB*8)+2;
volatile       bit      WPDB1      @ ((unsigned)&WPDB*8)+1;
volatile       bit      WPDB0      @ ((unsigned)&WPDB*8)+0;
        
        
/* Definitions for OSCCON register */       
volatile       bit      IRCF2      @ ((unsigned)&OSCCON*8)+6;
volatile       bit      IRCF1      @ ((unsigned)&OSCCON*8)+5;
volatile       bit      IRCF0      @ ((unsigned)&OSCCON*8)+4;
volatile       bit      SWDTEN     @ ((unsigned)&OSCCON*8)+1;
        
        
/* Definitions for OPA0CON register */      
volatile       bit      OPA0EN     @ ((unsigned)&OPA0CON*8)+7;
volatile       bit      OPA0O      @ ((unsigned)&OPA0CON*8)+6;
volatile       bit      OPA0_CMP       @ ((unsigned)&OPA0CON*8)+5;
volatile       bit      OPA0_ADC       @ ((unsigned)&OPA0CON*8)+4;
volatile       bit      OPA0FT     @ ((unsigned)&OPA0CON*8)+0;
        
        
/* Definitions for OPA0ADJ register */      
volatile       bit      OPA0OUT    @ ((unsigned)&OPA0ADJ*8)+7;
volatile       bit      OPA0COFM       @ ((unsigned)&OPA0ADJ*8)+6;
volatile       bit      OPA0CRS    @ ((unsigned)&OPA0ADJ*8)+5;
volatile       bit      OPA0ADJ4       @ ((unsigned)&OPA0ADJ*8)+4;
volatile       bit      OPA0ADJ3       @ ((unsigned)&OPA0ADJ*8)+3;
volatile       bit      OPA0ADJ2       @ ((unsigned)&OPA0ADJ*8)+2;
volatile       bit      OPA0ADJ1       @ ((unsigned)&OPA0ADJ*8)+1;
volatile       bit      OPA0ADJ0       @ ((unsigned)&OPA0ADJ*8)+0;
        
        
/* Definitions for OPA1CON register */      
volatile       bit      OPA1EN     @ ((unsigned)&OPA1CON*8)+7;
volatile       bit      OPA1O      @ ((unsigned)&OPA1CON*8)+6;
volatile       bit      OPA1_CMP       @ ((unsigned)&OPA1CON*8)+5;
volatile       bit      OPA1_ADC       @ ((unsigned)&OPA1CON*8)+4;
volatile       bit      OPA1FT     @ ((unsigned)&OPA1CON*8)+0;
        
        
/* Definitions for OPA1ADJ register */      
volatile       bit      OPA1OUT    @ ((unsigned)&OPA1ADJ*8)+7;
volatile       bit      OPA1COFM       @ ((unsigned)&OPA1ADJ*8)+6;
volatile       bit      OPA1CRS    @ ((unsigned)&OPA1ADJ*8)+5;
volatile       bit      OPA1ADJ4       @ ((unsigned)&OPA1ADJ*8)+4;
volatile       bit      OPA1ADJ3       @ ((unsigned)&OPA1ADJ*8)+3;
volatile       bit      OPA1ADJ2       @ ((unsigned)&OPA1ADJ*8)+2;
volatile       bit      OPA1ADJ1       @ ((unsigned)&OPA1ADJ*8)+1;
volatile       bit      OPA1ADJ0       @ ((unsigned)&OPA1ADJ*8)+0;
        
        
/* Definitions for ADCON1 register */       
volatile       bit      ADFM       @ ((unsigned)&ADCON1*8)+7;
volatile       bit      LDO_EN     @ ((unsigned)&ADCON1*8)+2;
volatile       bit      LDO_SEL1       @ ((unsigned)&ADCON1*8)+1;
volatile       bit      LDO_SEL0       @ ((unsigned)&ADCON1*8)+0;
        
        
/* Definitions for ADCON0 register */       
volatile       bit      ADCS1      @ ((unsigned)&ADCON0*8)+7;
volatile       bit      ADCS0      @ ((unsigned)&ADCON0*8)+6;
volatile       bit      CHS3       @ ((unsigned)&ADCON0*8)+5;
volatile       bit      CHS2       @ ((unsigned)&ADCON0*8)+4;
volatile       bit      CHS1       @ ((unsigned)&ADCON0*8)+3;
volatile       bit      CHS0       @ ((unsigned)&ADCON0*8)+2;
volatile       bit      GODONE     @ ((unsigned)&ADCON0*8)+1;
volatile       bit      ADON       @ ((unsigned)&ADCON0*8)+0;

#endif