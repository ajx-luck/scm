        
INDF        EQU      H'0000'
TMR0        EQU      H'0001'
PCL         EQU      H'0002'
STATUS      EQU      H'0003'
FSR         EQU      H'0004'
PORTA       EQU      H'0005'
PORTB       EQU      H'0006'
PORTC       EQU      H'0007'
PORTD       EQU      H'0008'
ANSEL0      EQU      H'0009'
PCLATH      EQU      H'000A'
INTCON      EQU      H'000B'
PIR1        EQU      H'000C'
PIR2        EQU      H'000D'
TMR1L       EQU      H'000E'
TMR1H       EQU      H'000F'
T1CON       EQU      H'0010'
TMR2        EQU      H'0011'
T2CON       EQU      H'0012'
SSPBUF      EQU      H'0013'
SSPCON      EQU      H'0014'
CCPR1L      EQU      H'0015'
CCPR1H      EQU      H'0016'
CCP1CON     EQU      H'0017'
RCSTA0      EQU      H'0018'
TXREG0      EQU      H'0019'
RCREG0      EQU      H'001A'
CCPR2L      EQU      H'001B'
CCPR2H      EQU      H'001C'
CCP2CON     EQU      H'001D'
TXSTA0      EQU      H'001E'
SPBRG0      EQU      H'001F'
OPTION_REG      EQU      H'0081'
TRISA       EQU      H'0085'
TRISB       EQU      H'0086'
TRISC       EQU      H'0087'
TRISD       EQU      H'0088'
ANSEL1      EQU      H'0089'
PIE1        EQU      H'008C'
PIE2        EQU      H'008D'
WPUD        EQU      H'008E'
OSCCON      EQU      H'008F'
WDTCON      EQU      H'0090'
SSPCON2     EQU      H'0091'
PR2         EQU      H'0092'
SSPADD      EQU      H'0093'
SSPMSK      EQU      H'0093'
SSPSTAT     EQU      H'0094'
WPUB        EQU      H'0095'
IOCB        EQU      H'0096'
WPDB        EQU      H'0097'
SPBRG1      EQU      H'0098'
PWMCON      EQU      H'0099'
PWM1CYC     EQU      H'009A'
PWM2CYC     EQU      H'009B'
ADRESL      EQU      H'009C'
ADRESH      EQU      H'009D'
ADCON0      EQU      H'009E'
ADCON1      EQU      H'009F'
RCSTA1      EQU      H'0105'
WPUA        EQU      H'0107'
WPUC        EQU      H'0108'
ANSEL2      EQU      H'0109'
EEDAT       EQU      H'010C'
EEADR       EQU      H'010D'
EEDATH      EQU      H'010E'
EEADRH      EQU      H'010F'
TABLE_SPH       EQU      H'0110'
TABLE_SPL       EQU      H'0111'
TABLE_DATAH     EQU      H'0112'

LEDCON0     EQU      H'0113'
LEDCON1     EQU      H'0114'
LEDADD      EQU      H'0115'
LEDDATA     EQU      H'0116'

LCDCON0     EQU      H'0113'
LCDCON1     EQU      H'0114'
LCDADD      EQU      H'0115'
LCDDATA     EQU      H'0116'

SEGEN2      EQU      H'0117'
SEGEN1      EQU      H'0118'
SEGEN0      EQU      H'0119'
COMEN       EQU      H'011A'
EECON1      EQU      H'011B'
EECON2      EQU      H'011C'
TXREG1      EQU      H'011D'
RCREG1      EQU      H'011E'
TXSTA1      EQU      H'011F'
DIVS1       EQU      H'0187'
DIVS0       EQU      H'0188'
DIVCON      EQU      H'0189'

DIVE3       EQU      H'018C'
DIVE2       EQU      H'018D'
DIVE1       EQU      H'018E'
DIVE0       EQU      H'018F'

DIVQ3       EQU      H'018C'
DIVQ2       EQU      H'018D'
DIVQ1       EQU      H'018E'
DIVQ0       EQU      H'018F'

        
        
;------------------------STATUS  Bits-------------------------------        
IRP    EQU      H'0007'
RP1    EQU      H'0006'
RP0    EQU      H'0005'
TO     EQU      H'0004'
PD     EQU      H'0003'
Z      EQU      H'0002'
DC     EQU      H'0001'
C      EQU      H'0000'
        
        
;------------------------PORTA  Bits-------------------------------     
RA7    EQU      H'0007'
RA6    EQU      H'0006'
RA5    EQU      H'0005'
RA4    EQU      H'0004'
RA3    EQU      H'0003'
RA2    EQU      H'0002'
RA1    EQU      H'0001'
RA0    EQU      H'0000'
        
        
;------------------------PORTB  Bits-------------------------------     
RB6    EQU      H'0006'
RB5    EQU      H'0005'
RB4    EQU      H'0004'
RB3    EQU      H'0003'
RB2    EQU      H'0002'
RB1    EQU      H'0001'
RB0    EQU      H'0000'
        
        
;------------------------PORTC  Bits-------------------------------     
RC7    EQU      H'0007'
RC6    EQU      H'0006'
RC5    EQU      H'0005'
RC4    EQU      H'0004'
RC3    EQU      H'0003'
RC2    EQU      H'0002'
RC1    EQU      H'0001'
RC0    EQU      H'0000'
        
        
;------------------------PORTD  Bits-------------------------------     
RD2    EQU      H'0002'
RD1    EQU      H'0001'
RD0    EQU      H'0000'
        
        
;------------------------INTCON  Bits-------------------------------        
GIE    EQU      H'0007'
PEIE       EQU      H'0006'
T0IE       EQU      H'0005'
INTE       EQU      H'0004'
RBIE       EQU      H'0003'
T0IF       EQU      H'0002'
INTF       EQU      H'0001'
RBIF       EQU      H'0000'
        
        
;------------------------PIR1  Bits-------------------------------      
ADIF       EQU      H'0006'
RC0IF      EQU      H'0005'
TX0IF      EQU      H'0004'
SSPIF      EQU      H'0003'
CCP1IF     EQU      H'0002'
TMR2IF     EQU      H'0001'
TMR1IF     EQU      H'0000'
        
        
;------------------------PIR2  Bits-------------------------------      
EEIF       EQU      H'0004'
BCLIF      EQU      H'0003'
TX1IF      EQU      H'0002'
RC1IF      EQU      H'0001'
CCP2IF     EQU      H'0000'
        
        
;------------------------T1CON  Bits-------------------------------     
T1GINV     EQU      H'0007'
TMR1GE     EQU      H'0006'
T1CKPS1    EQU      H'0005'
T1CKPS0    EQU      H'0004'
T1OSCEN    EQU      H'0003'
T1SYNC     EQU      H'0002'
TMR1CS     EQU      H'0001'
TMR1ON     EQU      H'0000'
        
        
;------------------------T2CON  Bits-------------------------------     
TOUTPS3    EQU      H'0006'
TOUTPS2    EQU      H'0005'
TOUTPS1    EQU      H'0004'
TOUTPS0    EQU      H'0003'
TMR2ON     EQU      H'0002'
T2CKPS1    EQU      H'0001'
T2CKPS0    EQU      H'0000'
        
        
;------------------------SSPCON  Bits-------------------------------        
WCOL       EQU      H'0007'
SSPOV      EQU      H'0006'
SSPEN      EQU      H'0005'
CKP    EQU      H'0004'
SSPM3      EQU      H'0003'
SSPM2      EQU      H'0002'
SSPM1      EQU      H'0001'
SSPM0      EQU      H'0000'
        
        
;------------------------CCP1CON  Bits-------------------------------       
DC1B1      EQU      H'0005'
DC1B0      EQU      H'0004'
CCP1M3     EQU      H'0003'
CCP1M2     EQU      H'0002'
CCP1M1     EQU      H'0001'
CCP1M0     EQU      H'0000'
        
        
;------------------------RCSTA0  Bits-------------------------------        
SPEN0      EQU      H'0007'
RX9EN0     EQU      H'0006'
SREN0      EQU      H'0005'
CREN0      EQU      H'0004'
RCIDL0     EQU      H'0003'
FERR0      EQU      H'0002'
OERR0      EQU      H'0001'
RX9D0      EQU      H'0000'
        
        
;------------------------CCP2CON  Bits-------------------------------       
DC2B1      EQU      H'0005'
DC2B0      EQU      H'0004'
CCP2M3     EQU      H'0003'
CCP2M2     EQU      H'0002'
CCP2M1     EQU      H'0001'
CCP2M0     EQU      H'0000'
        
        
;------------------------TXSTA0  Bits-------------------------------        
CSRC0      EQU      H'0007'
TX9EN0     EQU      H'0006'
TXEN0      EQU      H'0005'
SYNC0      EQU      H'0004'
SCKP0      EQU      H'0003'
TRMT0      EQU      H'0001'
TX9D0      EQU      H'0000'
        
        
;------------------------SPBRG0  Bits-------------------------------        
BRG07      EQU      H'0007'
BRG06      EQU      H'0006'
BRG05      EQU      H'0005'
BRG04      EQU      H'0004'
BRG03      EQU      H'0003'
BRG02      EQU      H'0002'
BRG01      EQU      H'0001'
BRG00      EQU      H'0000'
        
        
;------------------------OPTION_REG  Bits-------------------------------        
RBPU       EQU      H'0007'
INTEDG     EQU      H'0006'
T0CS       EQU      H'0005'
T0SE       EQU      H'0004'
PSA    EQU      H'0003'
PS2    EQU      H'0002'
PS1    EQU      H'0001'
PS0    EQU      H'0000'
        
        
;------------------------TRISA  Bits-------------------------------     
TRISA7     EQU      H'0007'
TRISA6     EQU      H'0006'
TRISA5     EQU      H'0005'
TRISA4     EQU      H'0004'
TRISA3     EQU      H'0003'
TRISA2     EQU      H'0002'
TRISA1     EQU      H'0001'
TRISA0     EQU      H'0000'
        
        
;------------------------TRISB  Bits-------------------------------     
TRISB6     EQU      H'0006'
TRISB5     EQU      H'0005'
TRISB4     EQU      H'0004'
TRISB3     EQU      H'0003'
TRISB2     EQU      H'0002'
TRISB1     EQU      H'0001'
TRISB0     EQU      H'0000'
        
        
;------------------------TRISC  Bits-------------------------------     
TRISC7     EQU      H'0007'
TRISC6     EQU      H'0006'
TRISC5     EQU      H'0005'
TRISC4     EQU      H'0004'
TRISC3     EQU      H'0003'
TRISC2     EQU      H'0002'
TRISC1     EQU      H'0001'
TRISC0     EQU      H'0000'
        
        
;------------------------TRISD  Bits-------------------------------     
TRISD2     EQU      H'0002'
TRISD1     EQU      H'0001'
TRISD0     EQU      H'0000'
        
        
;------------------------PIE1  Bits-------------------------------      
ADIE       EQU      H'0006'
RC0IE      EQU      H'0005'
TX0IE      EQU      H'0004'
SSPIE      EQU      H'0003'
CCP1IE     EQU      H'0002'
TMR2IE     EQU      H'0001'
TMR1IE     EQU      H'0000'
        
        
;------------------------PIE2  Bits-------------------------------      
EEIE       EQU      H'0004'
BCLIE      EQU      H'0003'
TX1IE      EQU      H'0002'
RC1IE      EQU      H'0001'
CCP2IE     EQU      H'0000'
        
        
;------------------------WPUD  Bits-------------------------------      
WPUD2      EQU      H'0002'
WPUD1      EQU      H'0001'
WPUD0      EQU      H'0000'
        
        
;------------------------OSCCON  Bits-------------------------------        
IRCF2      EQU      H'0006'
IRCF1      EQU      H'0005'
IRCF0      EQU      H'0004'
SCS    EQU      H'0000'
        
        
;------------------------WDTCON  Bits-------------------------------        
SWDTEN     EQU      H'0000'
        
        
;------------------------SSPCON2  Bits-------------------------------       
GCEN       EQU      H'0007'
ACKSTAT    EQU      H'0006'
ACKDT      EQU      H'0005'
ACKEN      EQU      H'0004'
RCEN       EQU      H'0003'
PEN    EQU      H'0002'
RSEN       EQU      H'0001'
SEN    EQU      H'0000'
        
        
;------------------------SSPMSK  Bits-------------------------------        
MSK7       EQU      H'0007'
MSK6       EQU      H'0006'
MSK5       EQU      H'0005'
MSK4       EQU      H'0004'
MSK3       EQU      H'0003'
MSK2       EQU      H'0002'
MSK1       EQU      H'0001'
MSK0       EQU      H'0000'
        
        
;------------------------SSPSTAT  Bits-------------------------------       
SMP    EQU      H'0007'
CKE    EQU      H'0006'
DA     EQU      H'0005'
P      EQU      H'0004'
S      EQU      H'0003'
RW     EQU      H'0002'
UA     EQU      H'0001'
BF     EQU      H'0000'
        
        
;------------------------WPUB  Bits-------------------------------      
WPUB6      EQU      H'0006'
WPUB5      EQU      H'0005'
WPUB4      EQU      H'0004'
WPUB3      EQU      H'0003'
WPUB2      EQU      H'0002'
WPUB1      EQU      H'0001'
WPUB0      EQU      H'0000'
        
        
;------------------------IOCB  Bits-------------------------------      
IOCB6      EQU      H'0006'
IOCB5      EQU      H'0005'
IOCB4      EQU      H'0004'
IOCB3      EQU      H'0003'
IOCB2      EQU      H'0002'
IOCB1      EQU      H'0001'
IOCB0      EQU      H'0000'
        
        
;------------------------WPDB  Bits-------------------------------      
WPDB6      EQU      H'0006'
WPDB5      EQU      H'0005'
WPDB4      EQU      H'0004'
WPDB3      EQU      H'0003'
WPDB2      EQU      H'0002'
WPDB1      EQU      H'0001'
WPDB0      EQU      H'0000'
        
        
;------------------------SPBRG1  Bits-------------------------------        
BRG17      EQU      H'0007'
BRG16      EQU      H'0006'
BRG15      EQU      H'0005'
BRG14      EQU      H'0004'
BRG13      EQU      H'0003'
BRG12      EQU      H'0002'
BRG11      EQU      H'0001'
BRG10      EQU      H'0000'
        
        
;------------------------PWMCON  Bits-------------------------------        
CYC2EN     EQU      H'0006'
CK21       EQU      H'0005'
CK20       EQU      H'0004'
CYC1EN     EQU      H'0002'
CK11       EQU      H'0001'
CK10       EQU      H'0000'
        
        
;------------------------ADCON0  Bits-------------------------------        
ADCS1      EQU      H'0007'
ADCS0      EQU      H'0006'
CHS3       EQU      H'0005'
CHS2       EQU      H'0004'
CHS1       EQU      H'0003'
CHS0       EQU      H'0002'
GODONE     EQU      H'0001'
ADON       EQU      H'0000'
        
        
;------------------------ADCON1  Bits-------------------------------        
ADFM       EQU      H'0007'
CHS4       EQU      H'0006'
        
        
;------------------------RCSTA1  Bits-------------------------------        
SPEN1      EQU      H'0007'
RX9EN1     EQU      H'0006'
SREN1      EQU      H'0005'
CREN1      EQU      H'0004'
RCIDL1     EQU      H'0003'
FERR1      EQU      H'0002'
OERR1      EQU      H'0001'
RX9D1      EQU      H'0000'
        
        
;------------------------WPUA  Bits-------------------------------      
WPUA7      EQU      H'0007'
WPUA6      EQU      H'0006'
WPUA5      EQU      H'0005'
WPUA4      EQU      H'0004'
WPUA3      EQU      H'0003'
WPUA2      EQU      H'0002'
WPUA1      EQU      H'0001'
WPUA0      EQU      H'0000'
        
        
;------------------------WPUC  Bits-------------------------------      
WPUC7      EQU      H'0007'
WPUC6      EQU      H'0006'
WPUC5      EQU      H'0005'
WPUC4      EQU      H'0004'
WPUC3      EQU      H'0003'
WPUC2      EQU      H'0002'
WPUC1      EQU      H'0001'
WPUC0      EQU      H'0000'
        
        
;------------------------EEDAT  Bits-------------------------------     
EEDAT7     EQU      H'0007'
EEDAT6     EQU      H'0006'
EEDAT5     EQU      H'0005'
EEDAT4     EQU      H'0004'
EEDAT3     EQU      H'0003'
EEDAT2     EQU      H'0002'
EEDAT1     EQU      H'0001'
EEDAT0     EQU      H'0000'
        
        
;------------------------EEADR  Bits-------------------------------     
EEADR7     EQU      H'0007'
EEADR6     EQU      H'0006'
EEADR5     EQU      H'0005'
EEADR4     EQU      H'0004'
EEADR3     EQU      H'0003'
EEADR2     EQU      H'0002'
EEADR1     EQU      H'0001'
EEADR0     EQU      H'0000'
        
        
;------------------------EEDATH  Bits-------------------------------        
EEDATH7    EQU      H'0007'
EEDATH6    EQU      H'0006'
EEDATH5    EQU      H'0005'
EEDATH4    EQU      H'0004'
EEDATH3    EQU      H'0003'
EEDATH2    EQU      H'0002'
EEDATH1    EQU      H'0001'
EEDATH0    EQU      H'0000'
        
        
;------------------------EEADRH  Bits-------------------------------        
EEADRH4    EQU      H'0004'
EEADRH3    EQU      H'0003'
EEADRH2    EQU      H'0002'
EEADRH1    EQU      H'0001'
EEADRH0    EQU      H'0000'
        
        
;------------------------LEDCON0  Bits-------------------------------       
LCDEN      EQU      H'0007'
LEDEN      EQU      H'0006'
COMSEL1    EQU      H'0005'
COMSEL0    EQU      H'0004'
LCDCLK3    EQU      H'0003'
LCDCLK2    EQU      H'0002'
LCDCLK1    EQU      H'0001'
LCDCLK0    EQU      H'0000'
LEDCLK3    EQU      H'0003'
LEDCLK2    EQU      H'0002'
LEDCLK1    EQU      H'0001'
LEDCLK0    EQU      H'0000'        
        
;------------------------LEDCON1  Bits-------------------------------       
LCDF       EQU      H'0006'
LEDF       EQU      H'0006'
SEGOUT1    EQU      H'0005'
SEGOUT0    EQU      H'0004'
        
        
;------------------------LEDADD  Bits-------------------------------        
LEDCS      EQU      H'0007'
COMSEL2    EQU      H'0005'
LCDADD4    EQU      H'0004'
LCDADD3    EQU      H'0003'
LCDADD2    EQU      H'0002'
LCDADD1    EQU      H'0001'
LCDADD0    EQU      H'0000'
LEDADD4    EQU      H'0004'
LEDADD3    EQU      H'0003'
LEDADD2    EQU      H'0002'
LEDADD1    EQU      H'0001'
LEDADD0    EQU      H'0000'
        
        
;------------------------EECON1  Bits-------------------------------        
EEPGD      EQU      H'0007'
WRERR      EQU      H'0003'
WREN       EQU      H'0002'
WR     EQU      H'0001'
RD     EQU      H'0000'
        
        
;------------------------TXSTA1  Bits-------------------------------        
CSRC1      EQU      H'0007'
TX9EN1     EQU      H'0006'
TXEN1      EQU      H'0005'
SYNC1      EQU      H'0004'
SCKP1      EQU      H'0003'
TRMT1      EQU      H'0001'
TX9D1      EQU      H'0000'
        
        
;------------------------DIVCON  Bits-------------------------------        
DIVEN      EQU      H'0007'
CAL_END    EQU      H'0006'
DIV_CLK    EQU      H'0000'
