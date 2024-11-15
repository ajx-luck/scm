#ifndef _HTC_H_
#warning Header file cms89f738.h included directly. Use #include <htc.h> instead.
#endif

 /* header file for the cms microcontroller
    89FT738
    89FT736
 */

#ifndef __CMS89FT738_H
#define __CMS89FT738_H
        
volatile unsigned char      INDF         @   0x0000;
volatile unsigned char      TMR0         @   0x0001;
volatile unsigned char      PCL      @   0x0002;
volatile unsigned char      STATUS       @   0x0003;
volatile unsigned char      FSR      @   0x0004;
volatile unsigned char      PORTA        @   0x0005;
volatile unsigned char      PORTB        @   0x0006;
volatile unsigned char      PORTC        @   0x0007;
volatile unsigned char      PORTD        @   0x0008;
volatile unsigned char      ANSEL0       @   0x0009;
volatile unsigned char      PCLATH       @   0x000A;
volatile unsigned char      INTCON       @   0x000B;
volatile unsigned char      PIR1         @   0x000C;
volatile unsigned char      PIR2         @   0x000D;
volatile unsigned char      TMR1L        @   0x000E;
volatile unsigned char      TMR1H        @   0x000F;
volatile unsigned char      T1CON        @   0x0010;
volatile unsigned char      TMR2         @   0x0011;
volatile unsigned char      T2CON        @   0x0012;
volatile unsigned char      SSPBUF       @   0x0013;
volatile unsigned char      SSPCON       @   0x0014;
volatile unsigned char      CCPR1L       @   0x0015;
volatile unsigned char      CCPR1H       @   0x0016;
volatile unsigned char      CCP1CON      @   0x0017;
volatile unsigned char      RCSTA0       @   0x0018;
volatile unsigned char      TXREG0       @   0x0019;
volatile unsigned char      RCREG0       @   0x001A;
volatile unsigned char      CCPR2L       @   0x001B;
volatile unsigned char      CCPR2H       @   0x001C;
volatile unsigned char      CCP2CON      @   0x001D;
volatile unsigned char      TXSTA0       @   0x001E;
volatile unsigned char      SPBRG0       @   0x001F;
volatile unsigned char      OPTION_REG       @   0x0081;
volatile unsigned char      TRISA        @   0x0085;
volatile unsigned char      TRISB        @   0x0086;
volatile unsigned char      TRISC        @   0x0087;
volatile unsigned char      TRISD        @   0x0088;
volatile unsigned char      ANSEL1       @   0x0089;
volatile unsigned char      PIE1         @   0x008C;
volatile unsigned char      PIE2         @   0x008D;
volatile unsigned char      WPUD         @   0x008E;
volatile unsigned char      OSCCON       @   0x008F;
volatile unsigned char      WDTCON       @   0x0090;
volatile unsigned char      SSPCON2      @   0x0091;
volatile unsigned char      PR2      @   0x0092;
volatile unsigned char      SSPADD       @   0x0093;
volatile unsigned char      SSPMSK       @   0x0093;
volatile unsigned char      SSPSTAT      @   0x0094;
volatile unsigned char      WPUB         @   0x0095;
volatile unsigned char      IOCB         @   0x0096;
volatile unsigned char      WPDB         @   0x0097;
volatile unsigned char      SPBRG1       @   0x0098;
volatile unsigned char      PWMCON       @   0x0099;
volatile unsigned char      PWM1CYC      @   0x009A;
volatile unsigned char      PWM2CYC      @   0x009B;
volatile unsigned char      ADRESL       @   0x009C;
volatile unsigned char      ADRESH       @   0x009D;
volatile unsigned char      ADCON0       @   0x009E;
volatile unsigned char      ADCON1       @   0x009F;
volatile unsigned char      RCSTA1       @   0x0105;
volatile unsigned char      WPUA         @   0x0107;
volatile unsigned char      WPUC         @   0x0108;
volatile unsigned char      ANSEL2       @   0x0109;
volatile unsigned char      TABLE_SPH        @   0x0110;
volatile unsigned char      TABLE_SPL        @   0x0111;
volatile unsigned char      TABLE_DATAH      @   0x0112;
volatile unsigned char      LEDCON0      @   0x0113;
volatile unsigned char      LEDCON1      @   0x0114;
volatile unsigned char      LEDADD       @   0x0115;
volatile unsigned char      LEDDATA      @   0x0116;

volatile unsigned char      LCDCON0      @   0x0113;
volatile unsigned char      LCDCON1      @   0x0114;
volatile unsigned char      LCDADD       @   0x0115;
volatile unsigned char      LCDDATA      @   0x0116;

volatile unsigned char      SEGEN2       @   0x0117;
volatile unsigned char      SEGEN1       @   0x0118;
volatile unsigned char      SEGEN0       @   0x0119;
volatile unsigned char      COMEN        @   0x011A;
volatile unsigned char      TXREG1       @   0x011D;
volatile unsigned char      RCREG1       @   0x011E;
volatile unsigned char      TXSTA1       @   0x011F;
volatile unsigned char      DIVS1        @   0x0187;
volatile unsigned char      DIVS0        @   0x0188;
volatile unsigned char      DIVCON       @   0x0189;

volatile unsigned char      DIVE3        @   0x018C;
volatile unsigned char      DIVE2        @   0x018D;
volatile unsigned char      DIVE1        @   0x018E;
volatile unsigned char      DIVE0        @   0x018F;

volatile unsigned char      DIVQ3        @   0x018C;
volatile unsigned char      DIVQ2        @   0x018D;
volatile unsigned char      DIVQ1        @   0x018E;
volatile unsigned char      DIVQ0        @   0x018F;

        
        
        
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
volatile       bit      RA7    @ ((unsigned)&PORTA*8)+7;
volatile       bit      RA6    @ ((unsigned)&PORTA*8)+6;
volatile       bit      RA5    @ ((unsigned)&PORTA*8)+5;
volatile       bit      RA4    @ ((unsigned)&PORTA*8)+4;
volatile       bit      RA3    @ ((unsigned)&PORTA*8)+3;
volatile       bit      RA2    @ ((unsigned)&PORTA*8)+2;
volatile       bit      RA1    @ ((unsigned)&PORTA*8)+1;
volatile       bit      RA0    @ ((unsigned)&PORTA*8)+0;
        
        
/* Definitions for PORTB register */        
volatile       bit      RB6    @ ((unsigned)&PORTB*8)+6;
volatile       bit      RB5    @ ((unsigned)&PORTB*8)+5;
volatile       bit      RB4    @ ((unsigned)&PORTB*8)+4;
volatile       bit      RB3    @ ((unsigned)&PORTB*8)+3;
volatile       bit      RB2    @ ((unsigned)&PORTB*8)+2;
volatile       bit      RB1    @ ((unsigned)&PORTB*8)+1;
volatile       bit      RB0    @ ((unsigned)&PORTB*8)+0;
        
        
/* Definitions for PORTC register */        
volatile       bit      RC7    @ ((unsigned)&PORTC*8)+7;
volatile       bit      RC6    @ ((unsigned)&PORTC*8)+6;
volatile       bit      RC5    @ ((unsigned)&PORTC*8)+5;
volatile       bit      RC4    @ ((unsigned)&PORTC*8)+4;
volatile       bit      RC3    @ ((unsigned)&PORTC*8)+3;
volatile       bit      RC2    @ ((unsigned)&PORTC*8)+2;
volatile       bit      RC1    @ ((unsigned)&PORTC*8)+1;
volatile       bit      RC0    @ ((unsigned)&PORTC*8)+0;
        
        
/* Definitions for PORTD register */        
volatile       bit      RD2    @ ((unsigned)&PORTD*8)+2;
volatile       bit      RD1    @ ((unsigned)&PORTD*8)+1;
volatile       bit      RD0    @ ((unsigned)&PORTD*8)+0;
        
        
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
volatile       bit      ADIF       @ ((unsigned)&PIR1*8)+6;
volatile       bit      RC0IF      @ ((unsigned)&PIR1*8)+5;
volatile       bit      TX0IF      @ ((unsigned)&PIR1*8)+4;
volatile       bit      SSPIF      @ ((unsigned)&PIR1*8)+3;
volatile       bit      CCP1IF     @ ((unsigned)&PIR1*8)+2;
volatile       bit      TMR2IF     @ ((unsigned)&PIR1*8)+1;
volatile       bit      TMR1IF     @ ((unsigned)&PIR1*8)+0;
        
        
/* Definitions for PIR2 register */     
volatile       bit      BCLIF      @ ((unsigned)&PIR2*8)+3;
volatile       bit      TX1IF      @ ((unsigned)&PIR2*8)+2;
volatile       bit      RC1IF      @ ((unsigned)&PIR2*8)+1;
volatile       bit      CCP2IF     @ ((unsigned)&PIR2*8)+0;
        
        
/* Definitions for T1CON register */        
volatile       bit      T1GINV     @ ((unsigned)&T1CON*8)+7;
volatile       bit      TMR1GE     @ ((unsigned)&T1CON*8)+6;
volatile       bit      T1CKPS1    @ ((unsigned)&T1CON*8)+5;
volatile       bit      T1CKPS0    @ ((unsigned)&T1CON*8)+4;
volatile       bit      T1OSCEN    @ ((unsigned)&T1CON*8)+3;
volatile       bit      T1SYNC     @ ((unsigned)&T1CON*8)+2;
volatile       bit      TMR1CS     @ ((unsigned)&T1CON*8)+1;
volatile       bit      TMR1ON     @ ((unsigned)&T1CON*8)+0;
        
        
/* Definitions for T2CON register */        
volatile       bit      TOUTPS3    @ ((unsigned)&T2CON*8)+6;
volatile       bit      TOUTPS2    @ ((unsigned)&T2CON*8)+5;
volatile       bit      TOUTPS1    @ ((unsigned)&T2CON*8)+4;
volatile       bit      TOUTPS0    @ ((unsigned)&T2CON*8)+3;
volatile       bit      TMR2ON     @ ((unsigned)&T2CON*8)+2;
volatile       bit      T2CKPS1    @ ((unsigned)&T2CON*8)+1;
volatile       bit      T2CKPS0    @ ((unsigned)&T2CON*8)+0;
        
        
/* Definitions for SSPCON register */       
volatile       bit      WCOL       @ ((unsigned)&SSPCON*8)+7;
volatile       bit      SSPOV      @ ((unsigned)&SSPCON*8)+6;
volatile       bit      SSPEN      @ ((unsigned)&SSPCON*8)+5;
volatile       bit      CKP    @ ((unsigned)&SSPCON*8)+4;
volatile       bit      SSPM3      @ ((unsigned)&SSPCON*8)+3;
volatile       bit      SSPM2      @ ((unsigned)&SSPCON*8)+2;
volatile       bit      SSPM1      @ ((unsigned)&SSPCON*8)+1;
volatile       bit      SSPM0      @ ((unsigned)&SSPCON*8)+0;
        
        
/* Definitions for CCP1CON register */      
volatile       bit      DC1B1      @ ((unsigned)&CCP1CON*8)+5;
volatile       bit      DC1B0      @ ((unsigned)&CCP1CON*8)+4;
volatile       bit      CCP1M3     @ ((unsigned)&CCP1CON*8)+3;
volatile       bit      CCP1M2     @ ((unsigned)&CCP1CON*8)+2;
volatile       bit      CCP1M1     @ ((unsigned)&CCP1CON*8)+1;
volatile       bit      CCP1M0     @ ((unsigned)&CCP1CON*8)+0;
        
        
/* Definitions for RCSTA0 register */       
volatile       bit      SPEN0      @ ((unsigned)&RCSTA0*8)+7;
volatile       bit      RX9EN0     @ ((unsigned)&RCSTA0*8)+6;
volatile       bit      SREN0      @ ((unsigned)&RCSTA0*8)+5;
volatile       bit      CREN0      @ ((unsigned)&RCSTA0*8)+4;
volatile       bit      RCIDL0     @ ((unsigned)&RCSTA0*8)+3;
volatile       bit      FERR0      @ ((unsigned)&RCSTA0*8)+2;
volatile       bit      OERR0      @ ((unsigned)&RCSTA0*8)+1;
volatile       bit      RX9D0      @ ((unsigned)&RCSTA0*8)+0;
        
        
/* Definitions for CCP2CON register */      
volatile       bit      DC2B1      @ ((unsigned)&CCP2CON*8)+5;
volatile       bit      DC2B0      @ ((unsigned)&CCP2CON*8)+4;
volatile       bit      CCP2M3     @ ((unsigned)&CCP2CON*8)+3;
volatile       bit      CCP2M2     @ ((unsigned)&CCP2CON*8)+2;
volatile       bit      CCP2M1     @ ((unsigned)&CCP2CON*8)+1;
volatile       bit      CCP2M0     @ ((unsigned)&CCP2CON*8)+0;
        
        
/* Definitions for TXSTA0 register */       
volatile       bit      CSRC0      @ ((unsigned)&TXSTA0*8)+7;
volatile       bit      TX9EN0     @ ((unsigned)&TXSTA0*8)+6;
volatile       bit      TXEN0      @ ((unsigned)&TXSTA0*8)+5;
volatile       bit      SYNC0      @ ((unsigned)&TXSTA0*8)+4;
volatile       bit      SCKP0      @ ((unsigned)&TXSTA0*8)+3;
volatile       bit      TRMT0      @ ((unsigned)&TXSTA0*8)+1;
volatile       bit      TX9D0      @ ((unsigned)&TXSTA0*8)+0;
        
        
/* Definitions for SPBRG0 register */       
volatile       bit      BRG07      @ ((unsigned)&SPBRG0*8)+7;
volatile       bit      BRG06      @ ((unsigned)&SPBRG0*8)+6;
volatile       bit      BRG05      @ ((unsigned)&SPBRG0*8)+5;
volatile       bit      BRG04      @ ((unsigned)&SPBRG0*8)+4;
volatile       bit      BRG03      @ ((unsigned)&SPBRG0*8)+3;
volatile       bit      BRG02      @ ((unsigned)&SPBRG0*8)+2;
volatile       bit      BRG01      @ ((unsigned)&SPBRG0*8)+1;
volatile       bit      BRG00      @ ((unsigned)&SPBRG0*8)+0;
        
        
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
volatile       bit      TRISA7     @ ((unsigned)&TRISA*8)+7;
volatile       bit      TRISA6     @ ((unsigned)&TRISA*8)+6;
volatile       bit      TRISA5     @ ((unsigned)&TRISA*8)+5;
volatile       bit      TRISA4     @ ((unsigned)&TRISA*8)+4;
volatile       bit      TRISA3     @ ((unsigned)&TRISA*8)+3;
volatile       bit      TRISA2     @ ((unsigned)&TRISA*8)+2;
volatile       bit      TRISA1     @ ((unsigned)&TRISA*8)+1;
volatile       bit      TRISA0     @ ((unsigned)&TRISA*8)+0;
        
        
/* Definitions for TRISB register */        
volatile       bit      TRISB6     @ ((unsigned)&TRISB*8)+6;
volatile       bit      TRISB5     @ ((unsigned)&TRISB*8)+5;
volatile       bit      TRISB4     @ ((unsigned)&TRISB*8)+4;
volatile       bit      TRISB3     @ ((unsigned)&TRISB*8)+3;
volatile       bit      TRISB2     @ ((unsigned)&TRISB*8)+2;
volatile       bit      TRISB1     @ ((unsigned)&TRISB*8)+1;
volatile       bit      TRISB0     @ ((unsigned)&TRISB*8)+0;
        
        
/* Definitions for TRISC register */        
volatile       bit      TRISC7     @ ((unsigned)&TRISC*8)+7;
volatile       bit      TRISC6     @ ((unsigned)&TRISC*8)+6;
volatile       bit      TRISC5     @ ((unsigned)&TRISC*8)+5;
volatile       bit      TRISC4     @ ((unsigned)&TRISC*8)+4;
volatile       bit      TRISC3     @ ((unsigned)&TRISC*8)+3;
volatile       bit      TRISC2     @ ((unsigned)&TRISC*8)+2;
volatile       bit      TRISC1     @ ((unsigned)&TRISC*8)+1;
volatile       bit      TRISC0     @ ((unsigned)&TRISC*8)+0;
        
        
/* Definitions for TRISD register */        
volatile       bit      TRISD2     @ ((unsigned)&TRISD*8)+2;
volatile       bit      TRISD1     @ ((unsigned)&TRISD*8)+1;
volatile       bit      TRISD0     @ ((unsigned)&TRISD*8)+0;
        
        
/* Definitions for PIE1 register */     
volatile       bit      ADIE       @ ((unsigned)&PIE1*8)+6;
volatile       bit      RC0IE      @ ((unsigned)&PIE1*8)+5;
volatile       bit      TX0IE      @ ((unsigned)&PIE1*8)+4;
volatile       bit      SSPIE      @ ((unsigned)&PIE1*8)+3;
volatile       bit      CCP1IE     @ ((unsigned)&PIE1*8)+2;
volatile       bit      TMR2IE     @ ((unsigned)&PIE1*8)+1;
volatile       bit      TMR1IE     @ ((unsigned)&PIE1*8)+0;
        
        
/* Definitions for PIE2 register */     
volatile       bit      BCLIE      @ ((unsigned)&PIE2*8)+3;
volatile       bit      TX1IE      @ ((unsigned)&PIE2*8)+2;
volatile       bit      RC1IE      @ ((unsigned)&PIE2*8)+1;
volatile       bit      CCP2IE     @ ((unsigned)&PIE2*8)+0;
        
        
/* Definitions for WPUD register */     
volatile       bit      WPUD2      @ ((unsigned)&WPUD*8)+2;
volatile       bit      WPUD1      @ ((unsigned)&WPUD*8)+1;
volatile       bit      WPUD0      @ ((unsigned)&WPUD*8)+0;
        
        
/* Definitions for OSCCON register */       
volatile       bit      IRCF2      @ ((unsigned)&OSCCON*8)+6;
volatile       bit      IRCF1      @ ((unsigned)&OSCCON*8)+5;
volatile       bit      IRCF0      @ ((unsigned)&OSCCON*8)+4;
volatile       bit      SCS    @ ((unsigned)&OSCCON*8)+0;
        
        
/* Definitions for WDTCON register */       
volatile       bit      SWDTEN     @ ((unsigned)&WDTCON*8)+0;
        
        
/* Definitions for SSPCON2 register */      
volatile       bit      GCEN       @ ((unsigned)&SSPCON2*8)+7;
volatile       bit      ACKSTAT    @ ((unsigned)&SSPCON2*8)+6;
volatile       bit      ACKDT      @ ((unsigned)&SSPCON2*8)+5;
volatile       bit      ACKEN      @ ((unsigned)&SSPCON2*8)+4;
volatile       bit      RCEN       @ ((unsigned)&SSPCON2*8)+3;
volatile       bit      PEN    @ ((unsigned)&SSPCON2*8)+2;
volatile       bit      RSEN       @ ((unsigned)&SSPCON2*8)+1;
volatile       bit      SEN    @ ((unsigned)&SSPCON2*8)+0;
        
        
/* Definitions for SSPMSK register */       
volatile       bit      MSK7       @ ((unsigned)&SSPMSK*8)+7;
volatile       bit      MSK6       @ ((unsigned)&SSPMSK*8)+6;
volatile       bit      MSK5       @ ((unsigned)&SSPMSK*8)+5;
volatile       bit      MSK4       @ ((unsigned)&SSPMSK*8)+4;
volatile       bit      MSK3       @ ((unsigned)&SSPMSK*8)+3;
volatile       bit      MSK2       @ ((unsigned)&SSPMSK*8)+2;
volatile       bit      MSK1       @ ((unsigned)&SSPMSK*8)+1;
volatile       bit      MSK0       @ ((unsigned)&SSPMSK*8)+0;
        
        
/* Definitions for SSPSTAT register */      
volatile       bit      SMP    @ ((unsigned)&SSPSTAT*8)+7;
volatile       bit      CKE    @ ((unsigned)&SSPSTAT*8)+6;
volatile       bit      DA     @ ((unsigned)&SSPSTAT*8)+5;
volatile       bit      P      @ ((unsigned)&SSPSTAT*8)+4;
volatile       bit      S      @ ((unsigned)&SSPSTAT*8)+3;
volatile       bit      RW     @ ((unsigned)&SSPSTAT*8)+2;
volatile       bit      UA     @ ((unsigned)&SSPSTAT*8)+1;
volatile       bit      BF     @ ((unsigned)&SSPSTAT*8)+0;
        
        
/* Definitions for WPUB register */     
volatile       bit      WPUB6      @ ((unsigned)&WPUB*8)+6;
volatile       bit      WPUB5      @ ((unsigned)&WPUB*8)+5;
volatile       bit      WPUB4      @ ((unsigned)&WPUB*8)+4;
volatile       bit      WPUB3      @ ((unsigned)&WPUB*8)+3;
volatile       bit      WPUB2      @ ((unsigned)&WPUB*8)+2;
volatile       bit      WPUB1      @ ((unsigned)&WPUB*8)+1;
volatile       bit      WPUB0      @ ((unsigned)&WPUB*8)+0;
        
        
/* Definitions for IOCB register */     
volatile       bit      IOCB6      @ ((unsigned)&IOCB*8)+6;
volatile       bit      IOCB5      @ ((unsigned)&IOCB*8)+5;
volatile       bit      IOCB4      @ ((unsigned)&IOCB*8)+4;
volatile       bit      IOCB3      @ ((unsigned)&IOCB*8)+3;
volatile       bit      IOCB2      @ ((unsigned)&IOCB*8)+2;
volatile       bit      IOCB1      @ ((unsigned)&IOCB*8)+1;
volatile       bit      IOCB0      @ ((unsigned)&IOCB*8)+0;
        
        
/* Definitions for WPDB register */     
volatile       bit      WPDB6      @ ((unsigned)&WPDB*8)+6;
volatile       bit      WPDB5      @ ((unsigned)&WPDB*8)+5;
volatile       bit      WPDB4      @ ((unsigned)&WPDB*8)+4;
volatile       bit      WPDB3      @ ((unsigned)&WPDB*8)+3;
volatile       bit      WPDB2      @ ((unsigned)&WPDB*8)+2;
volatile       bit      WPDB1      @ ((unsigned)&WPDB*8)+1;
volatile       bit      WPDB0      @ ((unsigned)&WPDB*8)+0;
        
        
/* Definitions for SPBRG1 register */       
volatile       bit      BRG17      @ ((unsigned)&SPBRG1*8)+7;
volatile       bit      BRG16      @ ((unsigned)&SPBRG1*8)+6;
volatile       bit      BRG15      @ ((unsigned)&SPBRG1*8)+5;
volatile       bit      BRG14      @ ((unsigned)&SPBRG1*8)+4;
volatile       bit      BRG13      @ ((unsigned)&SPBRG1*8)+3;
volatile       bit      BRG12      @ ((unsigned)&SPBRG1*8)+2;
volatile       bit      BRG11      @ ((unsigned)&SPBRG1*8)+1;
volatile       bit      BRG10      @ ((unsigned)&SPBRG1*8)+0;
        
        
/* Definitions for PWMCON register */       
volatile       bit      CYC2EN     @ ((unsigned)&PWMCON*8)+6;
volatile       bit      CK21       @ ((unsigned)&PWMCON*8)+5;
volatile       bit      CK20       @ ((unsigned)&PWMCON*8)+4;
volatile       bit      CYC1EN     @ ((unsigned)&PWMCON*8)+2;
volatile       bit      CK11       @ ((unsigned)&PWMCON*8)+1;
volatile       bit      CK10       @ ((unsigned)&PWMCON*8)+0;
        
        
/* Definitions for ADCON0 register */       
volatile       bit      ADCS1      @ ((unsigned)&ADCON0*8)+7;
volatile       bit      ADCS0      @ ((unsigned)&ADCON0*8)+6;
volatile       bit      CHS3       @ ((unsigned)&ADCON0*8)+5;
volatile       bit      CHS2       @ ((unsigned)&ADCON0*8)+4;
volatile       bit      CHS1       @ ((unsigned)&ADCON0*8)+3;
volatile       bit      CHS0       @ ((unsigned)&ADCON0*8)+2;
volatile       bit      GODONE     @ ((unsigned)&ADCON0*8)+1;
volatile       bit      ADON       @ ((unsigned)&ADCON0*8)+0;
        
        
/* Definitions for ADCON1 register */       
volatile       bit      ADFM       @ ((unsigned)&ADCON1*8)+7;
volatile       bit      CHS4       @ ((unsigned)&ADCON1*8)+6;
        
        
/* Definitions for RCSTA1 register */       
volatile       bit      SPEN1      @ ((unsigned)&RCSTA1*8)+7;
volatile       bit      RX9EN1     @ ((unsigned)&RCSTA1*8)+6;
volatile       bit      SREN1      @ ((unsigned)&RCSTA1*8)+5;
volatile       bit      CREN1      @ ((unsigned)&RCSTA1*8)+4;
volatile       bit      RCIDL1     @ ((unsigned)&RCSTA1*8)+3;
volatile       bit      FERR1      @ ((unsigned)&RCSTA1*8)+2;
volatile       bit      OERR1      @ ((unsigned)&RCSTA1*8)+1;
volatile       bit      RX9D1      @ ((unsigned)&RCSTA1*8)+0;
        
        
/* Definitions for WPUA register */     
volatile       bit      WPUA7      @ ((unsigned)&WPUA*8)+7;
volatile       bit      WPUA6      @ ((unsigned)&WPUA*8)+6;
volatile       bit      WPUA5      @ ((unsigned)&WPUA*8)+5;
volatile       bit      WPUA4      @ ((unsigned)&WPUA*8)+4;
volatile       bit      WPUA3      @ ((unsigned)&WPUA*8)+3;
volatile       bit      WPUA2      @ ((unsigned)&WPUA*8)+2;
volatile       bit      WPUA1      @ ((unsigned)&WPUA*8)+1;
volatile       bit      WPUA0      @ ((unsigned)&WPUA*8)+0;
        
        
/* Definitions for WPUC register */     
volatile       bit      WPUC7      @ ((unsigned)&WPUC*8)+7;
volatile       bit      WPUC6      @ ((unsigned)&WPUC*8)+6;
volatile       bit      WPUC5      @ ((unsigned)&WPUC*8)+5;
volatile       bit      WPUC4      @ ((unsigned)&WPUC*8)+4;
volatile       bit      WPUC3      @ ((unsigned)&WPUC*8)+3;
volatile       bit      WPUC2      @ ((unsigned)&WPUC*8)+2;
volatile       bit      WPUC1      @ ((unsigned)&WPUC*8)+1;
volatile       bit      WPUC0      @ ((unsigned)&WPUC*8)+0;
        
        
/* Definitions for LEDCON0 register */      
volatile       bit      LCDEN      @ ((unsigned)&LEDCON0*8)+7;
volatile       bit      LEDEN      @ ((unsigned)&LEDCON0*8)+6;
volatile       bit      COMSEL1    @ ((unsigned)&LEDCON0*8)+5;
volatile       bit      COMSEL0    @ ((unsigned)&LEDCON0*8)+4;
volatile       bit      LCDCLK3    @ ((unsigned)&LEDCON0*8)+3;
volatile       bit      LCDCLK2    @ ((unsigned)&LEDCON0*8)+2;
volatile       bit      LCDCLK1    @ ((unsigned)&LEDCON0*8)+1;
volatile       bit      LCDCLK0    @ ((unsigned)&LEDCON0*8)+0;
volatile       bit      LEDCLK3    @ ((unsigned)&LEDCON0*8)+3;
volatile       bit      LEDCLK2    @ ((unsigned)&LEDCON0*8)+2;
volatile       bit      LEDCLK1    @ ((unsigned)&LEDCON0*8)+1;
volatile       bit      LEDCLK0    @ ((unsigned)&LEDCON0*8)+0;        

/* Definitions for LEDCON1 register */      
volatile       bit      LCDF       @ ((unsigned)&LEDCON1*8)+6;
volatile       bit      LEDF       @ ((unsigned)&LEDCON1*8)+6;
volatile       bit      SEGOUT1    @ ((unsigned)&LEDCON1*8)+5;
volatile       bit      SEGOUT0    @ ((unsigned)&LEDCON1*8)+4;

/* Definitions for LEDADD register */       
volatile       bit      LEDCS      @ ((unsigned)&LEDADD*8)+7;
volatile       bit      COMSEL2    @ ((unsigned)&LEDADD*8)+5;
volatile       bit      LCDADD4    @ ((unsigned)&LEDADD*8)+4;
volatile       bit      LCDADD3    @ ((unsigned)&LEDADD*8)+3;
volatile       bit      LCDADD2    @ ((unsigned)&LEDADD*8)+2;
volatile       bit      LCDADD1    @ ((unsigned)&LEDADD*8)+1;
volatile       bit      LCDADD0    @ ((unsigned)&LEDADD*8)+0;
volatile       bit      LEDADD4    @ ((unsigned)&LEDADD*8)+4;
volatile       bit      LEDADD3    @ ((unsigned)&LEDADD*8)+3;
volatile       bit      LEDADD2    @ ((unsigned)&LEDADD*8)+2;
volatile       bit      LEDADD1    @ ((unsigned)&LEDADD*8)+1;
volatile       bit      LEDADD0    @ ((unsigned)&LEDADD*8)+0;        
        
/* Definitions for TXSTA1 register */       
volatile       bit      CSRC1      @ ((unsigned)&TXSTA1*8)+7;
volatile       bit      TX9EN1     @ ((unsigned)&TXSTA1*8)+6;
volatile       bit      TXEN1      @ ((unsigned)&TXSTA1*8)+5;
volatile       bit      SYNC1      @ ((unsigned)&TXSTA1*8)+4;
volatile       bit      SCKP1      @ ((unsigned)&TXSTA1*8)+3;
volatile       bit      TRMT1      @ ((unsigned)&TXSTA1*8)+1;
volatile       bit      TX9D1      @ ((unsigned)&TXSTA1*8)+0;
        
        
/* Definitions for DIVCON register */       
volatile       bit      DIVEN      @ ((unsigned)&DIVCON*8)+7;
volatile       bit      CAL_END    @ ((unsigned)&DIVCON*8)+6;
volatile       bit      DIV_CLK    @ ((unsigned)&DIVCON*8)+0;

#endif