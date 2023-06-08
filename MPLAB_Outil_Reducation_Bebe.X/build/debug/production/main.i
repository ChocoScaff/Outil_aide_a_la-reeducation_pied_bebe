# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "main.c" 2
# 12 "main.c"
# 1 "./common.h" 1





# 1 "./defs.h" 1








#pragma config FOSC = INTOSC
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config MCLRE = ON
#pragma config CP = OFF
#pragma config BOREN = ON
#pragma config BORV = 19
#pragma config PLLEN = ON


#pragma config VCAPEN = OFF
# 32 "./defs.h"
char Fincompt1=0;
# 6 "./common.h" 2

# 1 "./struct.h" 1








typedef struct {

    char mil;
    char cent;
    char diz;
    char unit;
    char dizi;
    char centi;

}ValueMetrics;
# 7 "./common.h" 2

# 1 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\xc.h" 1 3
# 18 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\xc8debug.h" 1 3
# 13 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\xc8debug.h" 3
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\xc.h" 2 3



# 1 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic.h" 1 3




# 1 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\htc.h" 1 3



# 1 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\xc.h" 1 3
# 5 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\htc.h" 2 3
# 6 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic.h" 2 3







# 1 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic_chip_select.h" 1 3
# 299 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic_chip_select.h" 3
# 1 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 1 3
# 44 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
# 1 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\__at.h" 1 3
# 45 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 2 3







extern volatile unsigned char INDF __attribute__((address(0x000)));

__asm("INDF equ 00h");




extern volatile unsigned char TMR0 __attribute__((address(0x001)));

__asm("TMR0 equ 01h");




extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");




extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned RP :2;
        unsigned IRP :1;
    };
    struct {
        unsigned :5;
        unsigned RP0 :1;
        unsigned RP1 :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 159 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char FSR __attribute__((address(0x004)));

__asm("FSR equ 04h");




extern volatile unsigned char PORTA __attribute__((address(0x005)));

__asm("PORTA equ 05h");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
    struct {
        unsigned AN0 :1;
        unsigned AN1 :1;
        unsigned AN2 :1;
        unsigned AN3 :1;
        unsigned :1;
        unsigned AN4 :1;
        unsigned OSC2 :1;
        unsigned OSC1 :1;
    };
    struct {
        unsigned :1;
        unsigned CPSA0 :1;
        unsigned CPSA1 :1;
        unsigned CPSA2 :1;
        unsigned CPSA3 :1;
        unsigned CPSA4 :1;
        unsigned CPSB1 :1;
        unsigned CPSB0 :1;
    };
    struct {
        unsigned :2;
        unsigned DACOUT :1;
        unsigned :1;
        unsigned T0CKI :1;
        unsigned :1;
        unsigned CLKOUT :1;
        unsigned CLKIN :1;
    };
    struct {
        unsigned :4;
        unsigned TACKI :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x005)));
# 356 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char PORTB __attribute__((address(0x006)));

__asm("PORTB equ 06h");


typedef union {
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
    struct {
        unsigned AN12 :1;
        unsigned AN10 :1;
        unsigned AN8 :1;
        unsigned AN9 :1;
        unsigned AN11 :1;
        unsigned AN13 :1;
    };
    struct {
        unsigned CPSB8 :1;
        unsigned CPSB9 :1;
        unsigned CPSB10 :1;
        unsigned CPSB11 :1;
        unsigned CPSB12 :1;
        unsigned CPSB13 :1;
        unsigned CPSB14 :1;
        unsigned CPSB15 :1;
    };
    struct {
        unsigned :3;
        unsigned CCP2 :1;
        unsigned :1;
        unsigned T1G :1;
    };
    struct {
        unsigned :5;
        unsigned T3CKI :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x006)));
# 531 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char PORTC __attribute__((address(0x007)));

__asm("PORTC equ 07h");


typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
    struct {
        unsigned CPSB2 :1;
        unsigned CPSB3 :1;
        unsigned CPSB4 :1;
        unsigned :2;
        unsigned CPSA9 :1;
        unsigned CPSA10 :1;
        unsigned CPSA11 :1;
    };
    struct {
        unsigned T1OSO :1;
        unsigned T1OSI :1;
        unsigned TBCKI :1;
        unsigned SCK :1;
        unsigned SDI :1;
        unsigned SDO :1;
        unsigned TX :1;
        unsigned RX :1;
    };
    struct {
        unsigned T1CKI :1;
        unsigned CCP2 :1;
        unsigned CCP1 :1;
        unsigned SCL :1;
        unsigned SDA :1;
        unsigned :1;
        unsigned CK :1;
        unsigned DT :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0x007)));
# 727 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char PORTD __attribute__((address(0x008)));

__asm("PORTD equ 08h");


typedef union {
    struct {
        unsigned RD0 :1;
        unsigned RD1 :1;
        unsigned RD2 :1;
        unsigned RD3 :1;
        unsigned RD4 :1;
        unsigned RD5 :1;
        unsigned RD6 :1;
        unsigned RD7 :1;
    };
    struct {
        unsigned CPSB5 :1;
        unsigned CPSB6 :1;
        unsigned CPSB7 :1;
        unsigned CPSA8 :1;
        unsigned CPSA12 :1;
        unsigned CPSA13 :1;
        unsigned CPSA14 :1;
        unsigned CPSA15 :1;
    };
    struct {
        unsigned T3G :1;
    };
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __attribute__((address(0x008)));
# 847 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char PORTE __attribute__((address(0x009)));

__asm("PORTE equ 09h");


typedef union {
    struct {
        unsigned RE0 :1;
        unsigned RE1 :1;
        unsigned RE2 :1;
        unsigned RE3 :1;
    };
    struct {
        unsigned AN5 :1;
        unsigned AN6 :1;
        unsigned AN7 :1;
        unsigned nMCLR :1;
    };
    struct {
        unsigned CPSA5 :1;
        unsigned CPSA6 :1;
        unsigned CPSA7 :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0x009)));
# 931 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");


typedef union {
    struct {
        unsigned PCLATH :5;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
# 951 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned RBIF :1;
        unsigned INTF :1;
        unsigned TMR0IF :1;
        unsigned RBIE :1;
        unsigned INTE :1;
        unsigned TMR0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :2;
        unsigned T0IF :1;
        unsigned :2;
        unsigned T0IE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 1029 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x00C)));

__asm("PIR1 equ 0Ch");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned CCP1IF :1;
        unsigned SSPIF :1;
        unsigned TXIF :1;
        unsigned RCIF :1;
        unsigned ADIF :1;
        unsigned TMR1GIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x00C)));
# 1091 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0x00D)));

__asm("PIR2 equ 0Dh");


typedef union {
    struct {
        unsigned CCP2IF :1;
        unsigned :3;
        unsigned TMRAIF :1;
        unsigned TMRBIF :1;
        unsigned TMR3IF :1;
        unsigned TMR3GIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x00D)));
# 1136 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x00E)));

__asm("TMR1 equ 0Eh");




extern volatile unsigned char TMR1L __attribute__((address(0x00E)));

__asm("TMR1L equ 0Eh");




extern volatile unsigned char TMR1H __attribute__((address(0x00F)));

__asm("TMR1H equ 0Fh");




extern volatile unsigned char T1CON __attribute__((address(0x010)));

__asm("T1CON equ 010h");


typedef union {
    struct {
        unsigned TMR1ON :1;
        unsigned :1;
        unsigned nT1SYNC :1;
        unsigned T1OSCEN :1;
        unsigned T1CKPS :2;
        unsigned TMR1CS :2;
    };
    struct {
        unsigned :2;
        unsigned T1SYNC :1;
        unsigned :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
        unsigned TMRCS0 :1;
        unsigned TMRCS1 :1;
    };
    struct {
        unsigned :6;
        unsigned TMR1CS0 :1;
        unsigned TMR1CS1 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x010)));
# 1251 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0x011)));

__asm("TMR2 equ 011h");




extern volatile unsigned char T2CON __attribute__((address(0x012)));

__asm("T2CON equ 012h");


typedef union {
    struct {
        unsigned T2CKPS :2;
        unsigned TMR2ON :1;
        unsigned TOUTPS :4;
    };
    struct {
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned :1;
        unsigned TOUTPS0 :1;
        unsigned TOUTPS1 :1;
        unsigned TOUTPS2 :1;
        unsigned TOUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x012)));
# 1329 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char SSPBUF __attribute__((address(0x013)));

__asm("SSPBUF equ 013h");




extern volatile unsigned char SSPCON __attribute__((address(0x014)));

__asm("SSPCON equ 014h");


typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __attribute__((address(0x014)));
# 1406 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0x015)));

__asm("CCPR1 equ 015h");




extern volatile unsigned char CCPR1L __attribute__((address(0x015)));

__asm("CCPR1L equ 015h");




extern volatile unsigned char CCPR1H __attribute__((address(0x016)));

__asm("CCPR1H equ 016h");




extern volatile unsigned char CCP1CON __attribute__((address(0x017)));

__asm("CCP1CON equ 017h");


typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned DC1B :2;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
        unsigned DC1B0 :1;
        unsigned DC1B1 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0x017)));
# 1491 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char RCSTA __attribute__((address(0x018)));

__asm("RCSTA equ 018h");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0x018)));
# 1553 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char TXREG __attribute__((address(0x019)));

__asm("TXREG equ 019h");




extern volatile unsigned char RCREG __attribute__((address(0x01A)));

__asm("RCREG equ 01Ah");




extern volatile unsigned short CCPR2 __attribute__((address(0x01B)));

__asm("CCPR2 equ 01Bh");




extern volatile unsigned char CCPR2L __attribute__((address(0x01B)));

__asm("CCPR2L equ 01Bh");




extern volatile unsigned char CCPR2H __attribute__((address(0x01C)));

__asm("CCPR2H equ 01Ch");




extern volatile unsigned char CCP2CON __attribute__((address(0x01D)));

__asm("CCP2CON equ 01Dh");


typedef union {
    struct {
        unsigned CCP2M :4;
        unsigned DC2B :2;
    };
    struct {
        unsigned CCP2M0 :1;
        unsigned CCP2M1 :1;
        unsigned CCP2M2 :1;
        unsigned CCP2M3 :1;
        unsigned DC2B0 :1;
        unsigned DC2B1 :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0x01D)));
# 1652 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char ADRES __attribute__((address(0x01E)));

__asm("ADRES equ 01Eh");




extern volatile unsigned char ADCON0 __attribute__((address(0x01F)));

__asm("ADCON0 equ 01Fh");


typedef union {
    struct {
        unsigned ADON :1;
        unsigned GO_nDONE :1;
        unsigned CHS :4;
    };
    struct {
        unsigned :2;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
        unsigned CHS2 :1;
        unsigned CHS3 :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x01F)));
# 1718 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char OPTION_REG __attribute__((address(0x081)));

__asm("OPTION_REG equ 081h");


typedef union {
    struct {
        unsigned PS :3;
        unsigned PSA :1;
        unsigned TMR0SE :1;
        unsigned TMR0CS :1;
        unsigned INTEDG :1;
        unsigned nRBPU :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
        unsigned :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
    };
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __attribute__((address(0x081)));
# 1801 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char TRISA __attribute__((address(0x085)));

__asm("TRISA equ 085h");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
        unsigned TRISA7 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x085)));
# 1863 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char TRISB __attribute__((address(0x086)));

__asm("TRISB equ 086h");


typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x086)));
# 1925 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char TRISC __attribute__((address(0x087)));

__asm("TRISC equ 087h");


typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned TRISC3 :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0x087)));
# 1987 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char TRISD __attribute__((address(0x088)));

__asm("TRISD equ 088h");


typedef union {
    struct {
        unsigned TRISD0 :1;
        unsigned TRISD1 :1;
        unsigned TRISD2 :1;
        unsigned TRISD3 :1;
        unsigned TRISD4 :1;
        unsigned TRISD5 :1;
        unsigned TRISD6 :1;
        unsigned TRISD7 :1;
    };
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __attribute__((address(0x088)));
# 2049 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char TRISE __attribute__((address(0x089)));

__asm("TRISE equ 089h");


typedef union {
    struct {
        unsigned TRISE0 :1;
        unsigned TRISE1 :1;
        unsigned TRISE2 :1;
        unsigned TRISE3 :1;
    };
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __attribute__((address(0x089)));
# 2087 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x08C)));

__asm("PIE1 equ 08Ch");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned CCP1IE :1;
        unsigned SSPIE :1;
        unsigned TXIE :1;
        unsigned RCIE :1;
        unsigned ADIE :1;
        unsigned TMR1GIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x08C)));
# 2149 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0x08D)));

__asm("PIE2 equ 08Dh");


typedef union {
    struct {
        unsigned CCP2IE :1;
        unsigned :3;
        unsigned TMRAIE :1;
        unsigned TMRBIE :1;
        unsigned TMR3IE :1;
        unsigned TMR3GIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x08D)));
# 2194 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char PCON __attribute__((address(0x08E)));

__asm("PCON equ 08Eh");


typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
    };
} PCONbits_t;
extern volatile PCONbits_t PCONbits __attribute__((address(0x08E)));
# 2220 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char T1GCON __attribute__((address(0x08F)));

__asm("T1GCON equ 08Fh");


typedef union {
    struct {
        unsigned T1GSS :2;
        unsigned T1GVAL :1;
        unsigned T1GGO_nDONE :1;
        unsigned T1GSPM :1;
        unsigned T1GTM :1;
        unsigned T1GPOL :1;
        unsigned TMR1GE :1;
    };
    struct {
        unsigned T1GSS0 :1;
        unsigned T1GSS1 :1;
    };
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __attribute__((address(0x08F)));
# 2290 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char OSCCON __attribute__((address(0x090)));

__asm("OSCCON equ 090h");


typedef union {
    struct {
        unsigned :2;
        unsigned ICSS :1;
        unsigned ICSL :1;
        unsigned IRCF :2;
    };
    struct {
        unsigned :4;
        unsigned IRCF0 :1;
        unsigned IRCF1 :1;
    };
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __attribute__((address(0x090)));
# 2338 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0x091)));

__asm("OSCTUNE equ 091h");


typedef union {
    struct {
        unsigned TUN :6;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0x091)));
# 2358 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char PR2 __attribute__((address(0x092)));

__asm("PR2 equ 092h");




extern volatile unsigned char SSPADD __attribute__((address(0x093)));

__asm("SSPADD equ 093h");


typedef union {
    struct {
        unsigned SSPADD :8;
    };
} SSPADDbits_t;
extern volatile SSPADDbits_t SSPADDbits __attribute__((address(0x093)));
# 2385 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char SSPMSK __attribute__((address(0x093)));

__asm("SSPMSK equ 093h");


typedef union {
    struct {
        unsigned SSPMSK :8;
    };
} SSPMSKbits_t;
extern volatile SSPMSKbits_t SSPMSKbits __attribute__((address(0x093)));
# 2405 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char SSPSTAT __attribute__((address(0x094)));

__asm("SSPSTAT equ 094h");


typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0x094)));
# 2467 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char WPUB __attribute__((address(0x095)));

__asm("WPUB equ 095h");


typedef union {
    struct {
        unsigned WPUB0 :1;
        unsigned WPUB1 :1;
        unsigned WPUB2 :1;
        unsigned WPUB3 :1;
        unsigned WPUB4 :1;
        unsigned WPUB5 :1;
        unsigned WPUB6 :1;
        unsigned WPUB7 :1;
    };
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __attribute__((address(0x095)));
# 2529 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char IOCB __attribute__((address(0x096)));

__asm("IOCB equ 096h");


typedef union {
    struct {
        unsigned IOCB0 :1;
        unsigned IOCB1 :1;
        unsigned IOCB2 :1;
        unsigned IOCB3 :1;
        unsigned IOCB4 :1;
        unsigned IOCB5 :1;
        unsigned IOCB6 :1;
        unsigned IOCB7 :1;
    };
} IOCBbits_t;
extern volatile IOCBbits_t IOCBbits __attribute__((address(0x096)));
# 2591 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char T3CON __attribute__((address(0x097)));

__asm("T3CON equ 097h");


typedef union {
    struct {
        unsigned TMR3ON :1;
        unsigned :1;
        unsigned T3SYNC :1;
        unsigned :1;
        unsigned T3CKPS :2;
        unsigned TMR3CS :2;
    };
    struct {
        unsigned :4;
        unsigned T3CKPS0 :1;
        unsigned T3CKPS1 :1;
        unsigned TMR3CS0 :1;
        unsigned TMR3CS1 :1;
    };
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __attribute__((address(0x097)));
# 2658 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char TXSTA __attribute__((address(0x098)));

__asm("TXSTA equ 098h");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0x098)));
# 2715 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char SPBRG __attribute__((address(0x099)));

__asm("SPBRG equ 099h");




extern volatile unsigned short TMR3 __attribute__((address(0x09A)));

__asm("TMR3 equ 09Ah");




extern volatile unsigned char TMR3L __attribute__((address(0x09A)));

__asm("TMR3L equ 09Ah");




extern volatile unsigned char TMR3H __attribute__((address(0x09B)));

__asm("TMR3H equ 09Bh");




extern volatile unsigned char APFCON __attribute__((address(0x09C)));

__asm("APFCON equ 09Ch");


typedef union {
    struct {
        unsigned CCP2SEL :1;
        unsigned SSSEL :1;
    };
} APFCONbits_t;
extern volatile APFCONbits_t APFCONbits __attribute__((address(0x09C)));
# 2769 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char FVRCON __attribute__((address(0x09D)));

__asm("FVRCON equ 09Dh");


typedef union {
    struct {
        unsigned ADFVR :2;
        unsigned CDAFVR :2;
        unsigned :1;
        unsigned :1;
        unsigned FVREN :1;
        unsigned FVRRDY :1;
    };
    struct {
        unsigned ADFVR0 :1;
        unsigned ADFVR1 :1;
        unsigned CDAFVR0 :1;
        unsigned CDAFVR1 :1;
    };
} FVRCONbits_t;
extern volatile FVRCONbits_t FVRCONbits __attribute__((address(0x09D)));
# 2835 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char T3GCON __attribute__((address(0x09E)));

__asm("T3GCON equ 09Eh");


typedef union {
    struct {
        unsigned T3GSS :2;
        unsigned T3GVAL :1;
        unsigned T3GGO_nDONE :1;
        unsigned T3GSPM :1;
        unsigned T3GTM :1;
        unsigned T3GPOL :1;
        unsigned TMR3GE :1;
    };
    struct {
        unsigned T3GSS0 :1;
        unsigned T3GSS1 :1;
    };
} T3GCONbits_t;
extern volatile T3GCONbits_t T3GCONbits __attribute__((address(0x09E)));
# 2905 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0x09F)));

__asm("ADCON1 equ 09Fh");


typedef union {
    struct {
        unsigned ADREF :2;
        unsigned :2;
        unsigned ADCS :3;
    };
    struct {
        unsigned ADREF0 :1;
        unsigned ADREF1 :1;
        unsigned :2;
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
        unsigned ADCS2 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x09F)));
# 2965 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char TACON __attribute__((address(0x105)));

__asm("TACON equ 0105h");


typedef union {
    struct {
        unsigned TAPS :3;
        unsigned TAPSA :1;
        unsigned TASE :1;
        unsigned TACS :1;
        unsigned :1;
        unsigned TMRAON :1;
    };
    struct {
        unsigned TAPS0 :1;
        unsigned TAPS1 :1;
        unsigned TAPS2 :1;
    };
    struct {
        unsigned TMRAPS :3;
        unsigned TMRAPSA :1;
        unsigned TMRASE :1;
        unsigned TMRACS :1;
    };
    struct {
        unsigned TMRAPS0 :1;
        unsigned TMRAPS1 :1;
        unsigned TMRAPS2 :1;
    };
} TACONbits_t;
extern volatile TACONbits_t TACONbits __attribute__((address(0x105)));
# 3076 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char CPSBCON0 __attribute__((address(0x106)));

__asm("CPSBCON0 equ 0106h");


typedef union {
    struct {
        unsigned TBXCS :1;
        unsigned CPSBOUT :1;
        unsigned CPSBRNG :2;
        unsigned :2;
        unsigned CPSBRM :1;
        unsigned CPSBON :1;
    };
    struct {
        unsigned :2;
        unsigned CPSBRNG0 :1;
        unsigned CPSBRNG1 :1;
    };
} CPSBCON0bits_t;
extern volatile CPSBCON0bits_t CPSBCON0bits __attribute__((address(0x106)));
# 3136 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char CPSBCON1 __attribute__((address(0x107)));

__asm("CPSBCON1 equ 0107h");


typedef union {
    struct {
        unsigned CPSBCH :4;
    };
    struct {
        unsigned CPSBCH0 :1;
        unsigned CPSBCH1 :1;
        unsigned CPSBCH2 :1;
        unsigned CPSBCH3 :1;
    };
} CPSBCON1bits_t;
extern volatile CPSBCON1bits_t CPSBCON1bits __attribute__((address(0x107)));
# 3182 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char CPSACON0 __attribute__((address(0x108)));

__asm("CPSACON0 equ 0108h");


typedef union {
    struct {
        unsigned TAXCS :1;
        unsigned CPSAOUT :1;
        unsigned CPSARNG :2;
        unsigned :2;
        unsigned CPSARM :1;
        unsigned CPSAON :1;
    };
    struct {
        unsigned :2;
        unsigned CPSARNG0 :1;
        unsigned CPSARNG1 :1;
    };
} CPSACON0bits_t;
extern volatile CPSACON0bits_t CPSACON0bits __attribute__((address(0x108)));
# 3242 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char CPSACON1 __attribute__((address(0x109)));

__asm("CPSACON1 equ 0109h");


typedef union {
    struct {
        unsigned CPSACH :4;
    };
    struct {
        unsigned CPSACH0 :1;
        unsigned CPSACH1 :1;
        unsigned CPSACH2 :1;
        unsigned CPSACH3 :1;
    };
} CPSACON1bits_t;
extern volatile CPSACON1bits_t CPSACON1bits __attribute__((address(0x109)));
# 3288 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char PMDATL __attribute__((address(0x10C)));

__asm("PMDATL equ 010Ch");




extern volatile unsigned char PMADRL __attribute__((address(0x10D)));

__asm("PMADRL equ 010Dh");




extern volatile unsigned char PMDATH __attribute__((address(0x10E)));

__asm("PMDATH equ 010Eh");




extern volatile unsigned char PMADRH __attribute__((address(0x10F)));

__asm("PMADRH equ 010Fh");




extern volatile unsigned char TMRA __attribute__((address(0x110)));

__asm("TMRA equ 0110h");




extern volatile unsigned char TBCON __attribute__((address(0x111)));

__asm("TBCON equ 0111h");


typedef union {
    struct {
        unsigned TBPS :3;
        unsigned TBPSA :1;
        unsigned TBSE :1;
        unsigned TBCS :1;
        unsigned :1;
        unsigned TMRBON :1;
    };
    struct {
        unsigned TBPS0 :1;
        unsigned TBPS1 :1;
        unsigned TBPS2 :1;
    };
    struct {
        unsigned TMRBPS :3;
        unsigned TMRBPSA :1;
        unsigned TMRBSE :1;
        unsigned TMRBCS :1;
    };
    struct {
        unsigned TMRBPS0 :1;
        unsigned TMRBPS1 :1;
        unsigned TMRBPS2 :1;
    };
} TBCONbits_t;
extern volatile TBCONbits_t TBCONbits __attribute__((address(0x111)));
# 3434 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char TMRB __attribute__((address(0x112)));

__asm("TMRB equ 0112h");




extern volatile unsigned char DACCON0 __attribute__((address(0x113)));

__asm("DACCON0 equ 0113h");


typedef union {
    struct {
        unsigned :2;
        unsigned DACPSS :2;
        unsigned :1;
        unsigned DACOE :1;
        unsigned DACLPS :1;
        unsigned DACEN :1;
    };
    struct {
        unsigned :2;
        unsigned DACPSS0 :1;
        unsigned DACPSS1 :1;
    };
} DACCON0bits_t;
extern volatile DACCON0bits_t DACCON0bits __attribute__((address(0x113)));
# 3496 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char DACCON1 __attribute__((address(0x114)));

__asm("DACCON1 equ 0114h");


typedef union {
    struct {
        unsigned DACR :5;
    };
    struct {
        unsigned DACR0 :1;
        unsigned DACR1 :1;
        unsigned DACR2 :1;
        unsigned DACR3 :1;
        unsigned DACR4 :1;
    };
} DACCON1bits_t;
extern volatile DACCON1bits_t DACCON1bits __attribute__((address(0x114)));
# 3548 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char ANSELA __attribute__((address(0x185)));

__asm("ANSELA equ 0185h");


typedef union {
    struct {
        unsigned ANSA0 :1;
        unsigned ANSA1 :1;
        unsigned ANSA2 :1;
        unsigned ANSA3 :1;
        unsigned ANSA4 :1;
        unsigned ANSA5 :1;
        unsigned ANSA6 :1;
        unsigned ANSA7 :1;
    };
    struct {
        unsigned ANSA :8;
    };
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __attribute__((address(0x185)));
# 3618 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char ANSELB __attribute__((address(0x186)));

__asm("ANSELB equ 0186h");


typedef union {
    struct {
        unsigned ANSB0 :1;
        unsigned ANSB1 :1;
        unsigned ANSB2 :1;
        unsigned ANSB3 :1;
        unsigned ANSB4 :1;
        unsigned ANSB5 :1;
        unsigned ANSB6 :1;
        unsigned ANSB7 :1;
    };
    struct {
        unsigned ANSB :8;
    };
} ANSELBbits_t;
extern volatile ANSELBbits_t ANSELBbits __attribute__((address(0x186)));
# 3688 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char ANSELC __attribute__((address(0x187)));

__asm("ANSELC equ 0187h");


typedef union {
    struct {
        unsigned ANSC0 :1;
        unsigned ANSC1 :1;
        unsigned ANSC2 :1;
        unsigned :2;
        unsigned ANSC5 :1;
        unsigned ANSC6 :1;
        unsigned ANSC7 :1;
    };
    struct {
        unsigned ANSC :8;
    };
} ANSELCbits_t;
extern volatile ANSELCbits_t ANSELCbits __attribute__((address(0x187)));
# 3747 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char ANSELD __attribute__((address(0x188)));

__asm("ANSELD equ 0188h");


typedef union {
    struct {
        unsigned ANSD0 :1;
        unsigned ANSD1 :1;
        unsigned ANSD2 :1;
        unsigned ANSD3 :1;
        unsigned ANSD4 :1;
        unsigned ANSD5 :1;
        unsigned ANSD6 :1;
        unsigned ANSD7 :1;
    };
    struct {
        unsigned ANSD :8;
    };
} ANSELDbits_t;
extern volatile ANSELDbits_t ANSELDbits __attribute__((address(0x188)));
# 3817 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char ANSELE __attribute__((address(0x189)));

__asm("ANSELE equ 0189h");


typedef union {
    struct {
        unsigned ANSE0 :1;
        unsigned ANSE1 :1;
        unsigned ANSE2 :1;
    };
    struct {
        unsigned ANSE :8;
    };
} ANSELEbits_t;
extern volatile ANSELEbits_t ANSELEbits __attribute__((address(0x189)));
# 3857 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile unsigned char PMCON1 __attribute__((address(0x18C)));

__asm("PMCON1 equ 018Ch");


typedef union {
    struct {
        unsigned RD :1;
    };
} PMCON1bits_t;
extern volatile PMCON1bits_t PMCON1bits __attribute__((address(0x18C)));
# 3883 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f707.h" 3
extern volatile __bit ADCS0 __attribute__((address(0x4FC)));


extern volatile __bit ADCS1 __attribute__((address(0x4FD)));


extern volatile __bit ADCS2 __attribute__((address(0x4FE)));


extern volatile __bit ADDEN __attribute__((address(0xC3)));


extern volatile __bit ADFVR0 __attribute__((address(0x4E8)));


extern volatile __bit ADFVR1 __attribute__((address(0x4E9)));


extern volatile __bit ADIE __attribute__((address(0x466)));


extern volatile __bit ADIF __attribute__((address(0x66)));


extern volatile __bit ADON __attribute__((address(0xF8)));


extern volatile __bit ADREF0 __attribute__((address(0x4F8)));


extern volatile __bit ADREF1 __attribute__((address(0x4F9)));


extern volatile __bit AN0 __attribute__((address(0x28)));


extern volatile __bit AN1 __attribute__((address(0x29)));


extern volatile __bit AN10 __attribute__((address(0x31)));


extern volatile __bit AN11 __attribute__((address(0x34)));


extern volatile __bit AN12 __attribute__((address(0x30)));


extern volatile __bit AN13 __attribute__((address(0x35)));


extern volatile __bit AN2 __attribute__((address(0x2A)));


extern volatile __bit AN3 __attribute__((address(0x2B)));


extern volatile __bit AN4 __attribute__((address(0x2D)));


extern volatile __bit AN5 __attribute__((address(0x48)));


extern volatile __bit AN6 __attribute__((address(0x49)));


extern volatile __bit AN7 __attribute__((address(0x4A)));


extern volatile __bit AN8 __attribute__((address(0x32)));


extern volatile __bit AN9 __attribute__((address(0x33)));


extern volatile __bit ANSA0 __attribute__((address(0xC28)));


extern volatile __bit ANSA1 __attribute__((address(0xC29)));


extern volatile __bit ANSA2 __attribute__((address(0xC2A)));


extern volatile __bit ANSA3 __attribute__((address(0xC2B)));


extern volatile __bit ANSA4 __attribute__((address(0xC2C)));


extern volatile __bit ANSA5 __attribute__((address(0xC2D)));


extern volatile __bit ANSA6 __attribute__((address(0xC2E)));


extern volatile __bit ANSA7 __attribute__((address(0xC2F)));


extern volatile __bit ANSB0 __attribute__((address(0xC30)));


extern volatile __bit ANSB1 __attribute__((address(0xC31)));


extern volatile __bit ANSB2 __attribute__((address(0xC32)));


extern volatile __bit ANSB3 __attribute__((address(0xC33)));


extern volatile __bit ANSB4 __attribute__((address(0xC34)));


extern volatile __bit ANSB5 __attribute__((address(0xC35)));


extern volatile __bit ANSB6 __attribute__((address(0xC36)));


extern volatile __bit ANSB7 __attribute__((address(0xC37)));


extern volatile __bit ANSC0 __attribute__((address(0xC38)));


extern volatile __bit ANSC1 __attribute__((address(0xC39)));


extern volatile __bit ANSC2 __attribute__((address(0xC3A)));


extern volatile __bit ANSC5 __attribute__((address(0xC3D)));


extern volatile __bit ANSC6 __attribute__((address(0xC3E)));


extern volatile __bit ANSC7 __attribute__((address(0xC3F)));


extern volatile __bit ANSD0 __attribute__((address(0xC40)));


extern volatile __bit ANSD1 __attribute__((address(0xC41)));


extern volatile __bit ANSD2 __attribute__((address(0xC42)));


extern volatile __bit ANSD3 __attribute__((address(0xC43)));


extern volatile __bit ANSD4 __attribute__((address(0xC44)));


extern volatile __bit ANSD5 __attribute__((address(0xC45)));


extern volatile __bit ANSD6 __attribute__((address(0xC46)));


extern volatile __bit ANSD7 __attribute__((address(0xC47)));


extern volatile __bit ANSE0 __attribute__((address(0xC48)));


extern volatile __bit ANSE1 __attribute__((address(0xC49)));


extern volatile __bit ANSE2 __attribute__((address(0xC4A)));


extern volatile __bit BF __attribute__((address(0x4A0)));


extern volatile __bit BRGH __attribute__((address(0x4C2)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CCP1 __attribute__((address(0x3A)));


extern volatile __bit CCP1IE __attribute__((address(0x462)));


extern volatile __bit CCP1IF __attribute__((address(0x62)));


extern volatile __bit CCP1M0 __attribute__((address(0xB8)));


extern volatile __bit CCP1M1 __attribute__((address(0xB9)));


extern volatile __bit CCP1M2 __attribute__((address(0xBA)));


extern volatile __bit CCP1M3 __attribute__((address(0xBB)));


extern volatile __bit CCP2IE __attribute__((address(0x468)));


extern volatile __bit CCP2IF __attribute__((address(0x68)));


extern volatile __bit CCP2M0 __attribute__((address(0xE8)));


extern volatile __bit CCP2M1 __attribute__((address(0xE9)));


extern volatile __bit CCP2M2 __attribute__((address(0xEA)));


extern volatile __bit CCP2M3 __attribute__((address(0xEB)));


extern volatile __bit CCP2SEL __attribute__((address(0x4E0)));


extern volatile __bit CDAFVR0 __attribute__((address(0x4EA)));


extern volatile __bit CDAFVR1 __attribute__((address(0x4EB)));


extern volatile __bit CHS0 __attribute__((address(0xFA)));


extern volatile __bit CHS1 __attribute__((address(0xFB)));


extern volatile __bit CHS2 __attribute__((address(0xFC)));


extern volatile __bit CHS3 __attribute__((address(0xFD)));


extern volatile __bit CK __attribute__((address(0x3E)));


extern volatile __bit CKE __attribute__((address(0x4A6)));


extern volatile __bit CKP __attribute__((address(0xA4)));


extern volatile __bit CLKIN __attribute__((address(0x2F)));


extern volatile __bit CLKOUT __attribute__((address(0x2E)));


extern volatile __bit CPSA0 __attribute__((address(0x29)));


extern volatile __bit CPSA1 __attribute__((address(0x2A)));


extern volatile __bit CPSA10 __attribute__((address(0x3E)));


extern volatile __bit CPSA11 __attribute__((address(0x3F)));


extern volatile __bit CPSA12 __attribute__((address(0x44)));


extern volatile __bit CPSA13 __attribute__((address(0x45)));


extern volatile __bit CPSA14 __attribute__((address(0x46)));


extern volatile __bit CPSA15 __attribute__((address(0x47)));


extern volatile __bit CPSA2 __attribute__((address(0x2B)));


extern volatile __bit CPSA3 __attribute__((address(0x2C)));


extern volatile __bit CPSA4 __attribute__((address(0x2D)));


extern volatile __bit CPSA5 __attribute__((address(0x48)));


extern volatile __bit CPSA6 __attribute__((address(0x49)));


extern volatile __bit CPSA7 __attribute__((address(0x4A)));


extern volatile __bit CPSA8 __attribute__((address(0x43)));


extern volatile __bit CPSA9 __attribute__((address(0x3D)));


extern volatile __bit CPSACH0 __attribute__((address(0x848)));


extern volatile __bit CPSACH1 __attribute__((address(0x849)));


extern volatile __bit CPSACH2 __attribute__((address(0x84A)));


extern volatile __bit CPSACH3 __attribute__((address(0x84B)));


extern volatile __bit CPSAON __attribute__((address(0x847)));


extern volatile __bit CPSAOUT __attribute__((address(0x841)));


extern volatile __bit CPSARM __attribute__((address(0x846)));


extern volatile __bit CPSARNG0 __attribute__((address(0x842)));


extern volatile __bit CPSARNG1 __attribute__((address(0x843)));


extern volatile __bit CPSB0 __attribute__((address(0x2F)));


extern volatile __bit CPSB1 __attribute__((address(0x2E)));


extern volatile __bit CPSB10 __attribute__((address(0x32)));


extern volatile __bit CPSB11 __attribute__((address(0x33)));


extern volatile __bit CPSB12 __attribute__((address(0x34)));


extern volatile __bit CPSB13 __attribute__((address(0x35)));


extern volatile __bit CPSB14 __attribute__((address(0x36)));


extern volatile __bit CPSB15 __attribute__((address(0x37)));


extern volatile __bit CPSB2 __attribute__((address(0x38)));


extern volatile __bit CPSB3 __attribute__((address(0x39)));


extern volatile __bit CPSB4 __attribute__((address(0x3A)));


extern volatile __bit CPSB5 __attribute__((address(0x40)));


extern volatile __bit CPSB6 __attribute__((address(0x41)));


extern volatile __bit CPSB7 __attribute__((address(0x42)));


extern volatile __bit CPSB8 __attribute__((address(0x30)));


extern volatile __bit CPSB9 __attribute__((address(0x31)));


extern volatile __bit CPSBCH0 __attribute__((address(0x838)));


extern volatile __bit CPSBCH1 __attribute__((address(0x839)));


extern volatile __bit CPSBCH2 __attribute__((address(0x83A)));


extern volatile __bit CPSBCH3 __attribute__((address(0x83B)));


extern volatile __bit CPSBON __attribute__((address(0x837)));


extern volatile __bit CPSBOUT __attribute__((address(0x831)));


extern volatile __bit CPSBRM __attribute__((address(0x836)));


extern volatile __bit CPSBRNG0 __attribute__((address(0x832)));


extern volatile __bit CPSBRNG1 __attribute__((address(0x833)));


extern volatile __bit CREN __attribute__((address(0xC4)));


extern volatile __bit CSRC __attribute__((address(0x4C7)));


extern volatile __bit DACEN __attribute__((address(0x89F)));


extern volatile __bit DACLPS __attribute__((address(0x89E)));


extern volatile __bit DACOE __attribute__((address(0x89D)));


extern volatile __bit DACOUT __attribute__((address(0x2A)));


extern volatile __bit DACPSS0 __attribute__((address(0x89A)));


extern volatile __bit DACPSS1 __attribute__((address(0x89B)));


extern volatile __bit DACR0 __attribute__((address(0x8A0)));


extern volatile __bit DACR1 __attribute__((address(0x8A1)));


extern volatile __bit DACR2 __attribute__((address(0x8A2)));


extern volatile __bit DACR3 __attribute__((address(0x8A3)));


extern volatile __bit DACR4 __attribute__((address(0x8A4)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit DC1B0 __attribute__((address(0xBC)));


extern volatile __bit DC1B1 __attribute__((address(0xBD)));


extern volatile __bit DC2B0 __attribute__((address(0xEC)));


extern volatile __bit DC2B1 __attribute__((address(0xED)));


extern volatile __bit DT __attribute__((address(0x3F)));


extern volatile __bit D_nA __attribute__((address(0x4A5)));


extern volatile __bit FERR __attribute__((address(0xC2)));


extern volatile __bit FVREN __attribute__((address(0x4EE)));


extern volatile __bit FVRRDY __attribute__((address(0x4EF)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO_nDONE __attribute__((address(0xF9)));


extern volatile __bit ICSL __attribute__((address(0x483)));


extern volatile __bit ICSS __attribute__((address(0x482)));


extern volatile __bit INTE __attribute__((address(0x5C)));


extern volatile __bit INTEDG __attribute__((address(0x40E)));


extern volatile __bit INTF __attribute__((address(0x59)));


extern volatile __bit IOCB0 __attribute__((address(0x4B0)));


extern volatile __bit IOCB1 __attribute__((address(0x4B1)));


extern volatile __bit IOCB2 __attribute__((address(0x4B2)));


extern volatile __bit IOCB3 __attribute__((address(0x4B3)));


extern volatile __bit IOCB4 __attribute__((address(0x4B4)));


extern volatile __bit IOCB5 __attribute__((address(0x4B5)));


extern volatile __bit IOCB6 __attribute__((address(0x4B6)));


extern volatile __bit IOCB7 __attribute__((address(0x4B7)));


extern volatile __bit IRCF0 __attribute__((address(0x484)));


extern volatile __bit IRCF1 __attribute__((address(0x485)));


extern volatile __bit IRP __attribute__((address(0x1F)));


extern volatile __bit OERR __attribute__((address(0xC1)));


extern volatile __bit OSC1 __attribute__((address(0x2F)));


extern volatile __bit OSC2 __attribute__((address(0x2E)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PS0 __attribute__((address(0x408)));


extern volatile __bit PS1 __attribute__((address(0x409)));


extern volatile __bit PS2 __attribute__((address(0x40A)));


extern volatile __bit PSA __attribute__((address(0x40B)));


extern volatile __bit RA0 __attribute__((address(0x28)));


extern volatile __bit RA1 __attribute__((address(0x29)));


extern volatile __bit RA2 __attribute__((address(0x2A)));


extern volatile __bit RA3 __attribute__((address(0x2B)));


extern volatile __bit RA4 __attribute__((address(0x2C)));


extern volatile __bit RA5 __attribute__((address(0x2D)));


extern volatile __bit RA6 __attribute__((address(0x2E)));


extern volatile __bit RA7 __attribute__((address(0x2F)));


extern volatile __bit RB0 __attribute__((address(0x30)));


extern volatile __bit RB1 __attribute__((address(0x31)));


extern volatile __bit RB2 __attribute__((address(0x32)));


extern volatile __bit RB3 __attribute__((address(0x33)));


extern volatile __bit RB4 __attribute__((address(0x34)));


extern volatile __bit RB5 __attribute__((address(0x35)));


extern volatile __bit RB6 __attribute__((address(0x36)));


extern volatile __bit RB7 __attribute__((address(0x37)));


extern volatile __bit RBIE __attribute__((address(0x5B)));


extern volatile __bit RBIF __attribute__((address(0x58)));


extern volatile __bit RC0 __attribute__((address(0x38)));


extern volatile __bit RC1 __attribute__((address(0x39)));


extern volatile __bit RC2 __attribute__((address(0x3A)));


extern volatile __bit RC3 __attribute__((address(0x3B)));


extern volatile __bit RC4 __attribute__((address(0x3C)));


extern volatile __bit RC5 __attribute__((address(0x3D)));


extern volatile __bit RC6 __attribute__((address(0x3E)));


extern volatile __bit RC7 __attribute__((address(0x3F)));


extern volatile __bit RCIE __attribute__((address(0x465)));


extern volatile __bit RCIF __attribute__((address(0x65)));


extern volatile __bit RD __attribute__((address(0xC60)));


extern volatile __bit RD0 __attribute__((address(0x40)));


extern volatile __bit RD1 __attribute__((address(0x41)));


extern volatile __bit RD2 __attribute__((address(0x42)));


extern volatile __bit RD3 __attribute__((address(0x43)));


extern volatile __bit RD4 __attribute__((address(0x44)));


extern volatile __bit RD5 __attribute__((address(0x45)));


extern volatile __bit RD6 __attribute__((address(0x46)));


extern volatile __bit RD7 __attribute__((address(0x47)));


extern volatile __bit RE0 __attribute__((address(0x48)));


extern volatile __bit RE1 __attribute__((address(0x49)));


extern volatile __bit RE2 __attribute__((address(0x4A)));


extern volatile __bit RE3 __attribute__((address(0x4B)));


extern volatile __bit RP0 __attribute__((address(0x1D)));


extern volatile __bit RP1 __attribute__((address(0x1E)));


extern volatile __bit RX __attribute__((address(0x3F)));


extern volatile __bit RX9 __attribute__((address(0xC6)));


extern volatile __bit RX9D __attribute__((address(0xC0)));


extern volatile __bit R_nW __attribute__((address(0x4A2)));


extern volatile __bit SCK __attribute__((address(0x3B)));


extern volatile __bit SCL __attribute__((address(0x3B)));


extern volatile __bit SDA __attribute__((address(0x3C)));


extern volatile __bit SDI __attribute__((address(0x3C)));


extern volatile __bit SDO __attribute__((address(0x3D)));


extern volatile __bit SMP __attribute__((address(0x4A7)));


extern volatile __bit SPEN __attribute__((address(0xC7)));


extern volatile __bit SREN __attribute__((address(0xC5)));


extern volatile __bit SSPEN __attribute__((address(0xA5)));


extern volatile __bit SSPIE __attribute__((address(0x463)));


extern volatile __bit SSPIF __attribute__((address(0x63)));


extern volatile __bit SSPM0 __attribute__((address(0xA0)));


extern volatile __bit SSPM1 __attribute__((address(0xA1)));


extern volatile __bit SSPM2 __attribute__((address(0xA2)));


extern volatile __bit SSPM3 __attribute__((address(0xA3)));


extern volatile __bit SSPOV __attribute__((address(0xA6)));


extern volatile __bit SSSEL __attribute__((address(0x4E1)));


extern volatile __bit SYNC __attribute__((address(0x4C4)));


extern volatile __bit T0CKI __attribute__((address(0x2C)));


extern volatile __bit T0CS __attribute__((address(0x40D)));


extern volatile __bit T0IE __attribute__((address(0x5D)));


extern volatile __bit T0IF __attribute__((address(0x5A)));


extern volatile __bit T0SE __attribute__((address(0x40C)));


extern volatile __bit T1CKI __attribute__((address(0x38)));


extern volatile __bit T1CKPS0 __attribute__((address(0x84)));


extern volatile __bit T1CKPS1 __attribute__((address(0x85)));


extern volatile __bit T1G __attribute__((address(0x35)));


extern volatile __bit T1GGO_nDONE __attribute__((address(0x47B)));


extern volatile __bit T1GPOL __attribute__((address(0x47E)));


extern volatile __bit T1GSPM __attribute__((address(0x47C)));


extern volatile __bit T1GSS0 __attribute__((address(0x478)));


extern volatile __bit T1GSS1 __attribute__((address(0x479)));


extern volatile __bit T1GTM __attribute__((address(0x47D)));


extern volatile __bit T1GVAL __attribute__((address(0x47A)));


extern volatile __bit T1OSCEN __attribute__((address(0x83)));


extern volatile __bit T1OSI __attribute__((address(0x39)));


extern volatile __bit T1OSO __attribute__((address(0x38)));


extern volatile __bit T1SYNC __attribute__((address(0x82)));


extern volatile __bit T2CKPS0 __attribute__((address(0x90)));


extern volatile __bit T2CKPS1 __attribute__((address(0x91)));


extern volatile __bit T3CKI __attribute__((address(0x35)));


extern volatile __bit T3CKPS0 __attribute__((address(0x4BC)));


extern volatile __bit T3CKPS1 __attribute__((address(0x4BD)));


extern volatile __bit T3G __attribute__((address(0x40)));


extern volatile __bit T3GGO_nDONE __attribute__((address(0x4F3)));


extern volatile __bit T3GPOL __attribute__((address(0x4F6)));


extern volatile __bit T3GSPM __attribute__((address(0x4F4)));


extern volatile __bit T3GSS0 __attribute__((address(0x4F0)));


extern volatile __bit T3GSS1 __attribute__((address(0x4F1)));


extern volatile __bit T3GTM __attribute__((address(0x4F5)));


extern volatile __bit T3GVAL __attribute__((address(0x4F2)));


extern volatile __bit T3SYNC __attribute__((address(0x4BA)));


extern volatile __bit TACKI __attribute__((address(0x2C)));


extern volatile __bit TACS __attribute__((address(0x82D)));


extern volatile __bit TAPS0 __attribute__((address(0x828)));


extern volatile __bit TAPS1 __attribute__((address(0x829)));


extern volatile __bit TAPS2 __attribute__((address(0x82A)));


extern volatile __bit TAPSA __attribute__((address(0x82B)));


extern volatile __bit TASE __attribute__((address(0x82C)));


extern volatile __bit TAXCS __attribute__((address(0x840)));


extern volatile __bit TBCKI __attribute__((address(0x3A)));


extern volatile __bit TBCS __attribute__((address(0x88D)));


extern volatile __bit TBPS0 __attribute__((address(0x888)));


extern volatile __bit TBPS1 __attribute__((address(0x889)));


extern volatile __bit TBPS2 __attribute__((address(0x88A)));


extern volatile __bit TBPSA __attribute__((address(0x88B)));


extern volatile __bit TBSE __attribute__((address(0x88C)));


extern volatile __bit TBXCS __attribute__((address(0x830)));


extern volatile __bit TMR0CS __attribute__((address(0x40D)));


extern volatile __bit TMR0IE __attribute__((address(0x5D)));


extern volatile __bit TMR0IF __attribute__((address(0x5A)));


extern volatile __bit TMR0SE __attribute__((address(0x40C)));


extern volatile __bit TMR1CS0 __attribute__((address(0x86)));


extern volatile __bit TMR1CS1 __attribute__((address(0x87)));


extern volatile __bit TMR1GE __attribute__((address(0x47F)));


extern volatile __bit TMR1GIE __attribute__((address(0x467)));


extern volatile __bit TMR1GIF __attribute__((address(0x67)));


extern volatile __bit TMR1IE __attribute__((address(0x460)));


extern volatile __bit TMR1IF __attribute__((address(0x60)));


extern volatile __bit TMR1ON __attribute__((address(0x80)));


extern volatile __bit TMR2IE __attribute__((address(0x461)));


extern volatile __bit TMR2IF __attribute__((address(0x61)));


extern volatile __bit TMR2ON __attribute__((address(0x92)));


extern volatile __bit TMR3CS0 __attribute__((address(0x4BE)));


extern volatile __bit TMR3CS1 __attribute__((address(0x4BF)));


extern volatile __bit TMR3GE __attribute__((address(0x4F7)));


extern volatile __bit TMR3GIE __attribute__((address(0x46F)));


extern volatile __bit TMR3GIF __attribute__((address(0x6F)));


extern volatile __bit TMR3IE __attribute__((address(0x46E)));


extern volatile __bit TMR3IF __attribute__((address(0x6E)));


extern volatile __bit TMR3ON __attribute__((address(0x4B8)));


extern volatile __bit TMRACS __attribute__((address(0x82D)));


extern volatile __bit TMRAIE __attribute__((address(0x46C)));


extern volatile __bit TMRAIF __attribute__((address(0x6C)));


extern volatile __bit TMRAON __attribute__((address(0x82F)));


extern volatile __bit TMRAPS0 __attribute__((address(0x828)));


extern volatile __bit TMRAPS1 __attribute__((address(0x829)));


extern volatile __bit TMRAPS2 __attribute__((address(0x82A)));


extern volatile __bit TMRAPSA __attribute__((address(0x82B)));


extern volatile __bit TMRASE __attribute__((address(0x82C)));


extern volatile __bit TMRBCS __attribute__((address(0x88D)));


extern volatile __bit TMRBIE __attribute__((address(0x46D)));


extern volatile __bit TMRBIF __attribute__((address(0x6D)));


extern volatile __bit TMRBON __attribute__((address(0x88F)));


extern volatile __bit TMRBPS0 __attribute__((address(0x888)));


extern volatile __bit TMRBPS1 __attribute__((address(0x889)));


extern volatile __bit TMRBPS2 __attribute__((address(0x88A)));


extern volatile __bit TMRBPSA __attribute__((address(0x88B)));


extern volatile __bit TMRBSE __attribute__((address(0x88C)));


extern volatile __bit TMRCS0 __attribute__((address(0x86)));


extern volatile __bit TMRCS1 __attribute__((address(0x87)));


extern volatile __bit TOUTPS0 __attribute__((address(0x93)));


extern volatile __bit TOUTPS1 __attribute__((address(0x94)));


extern volatile __bit TOUTPS2 __attribute__((address(0x95)));


extern volatile __bit TOUTPS3 __attribute__((address(0x96)));


extern volatile __bit TRISA0 __attribute__((address(0x428)));


extern volatile __bit TRISA1 __attribute__((address(0x429)));


extern volatile __bit TRISA2 __attribute__((address(0x42A)));


extern volatile __bit TRISA3 __attribute__((address(0x42B)));


extern volatile __bit TRISA4 __attribute__((address(0x42C)));


extern volatile __bit TRISA5 __attribute__((address(0x42D)));


extern volatile __bit TRISA6 __attribute__((address(0x42E)));


extern volatile __bit TRISA7 __attribute__((address(0x42F)));


extern volatile __bit TRISB0 __attribute__((address(0x430)));


extern volatile __bit TRISB1 __attribute__((address(0x431)));


extern volatile __bit TRISB2 __attribute__((address(0x432)));


extern volatile __bit TRISB3 __attribute__((address(0x433)));


extern volatile __bit TRISB4 __attribute__((address(0x434)));


extern volatile __bit TRISB5 __attribute__((address(0x435)));


extern volatile __bit TRISB6 __attribute__((address(0x436)));


extern volatile __bit TRISB7 __attribute__((address(0x437)));


extern volatile __bit TRISC0 __attribute__((address(0x438)));


extern volatile __bit TRISC1 __attribute__((address(0x439)));


extern volatile __bit TRISC2 __attribute__((address(0x43A)));


extern volatile __bit TRISC3 __attribute__((address(0x43B)));


extern volatile __bit TRISC4 __attribute__((address(0x43C)));


extern volatile __bit TRISC5 __attribute__((address(0x43D)));


extern volatile __bit TRISC6 __attribute__((address(0x43E)));


extern volatile __bit TRISC7 __attribute__((address(0x43F)));


extern volatile __bit TRISD0 __attribute__((address(0x440)));


extern volatile __bit TRISD1 __attribute__((address(0x441)));


extern volatile __bit TRISD2 __attribute__((address(0x442)));


extern volatile __bit TRISD3 __attribute__((address(0x443)));


extern volatile __bit TRISD4 __attribute__((address(0x444)));


extern volatile __bit TRISD5 __attribute__((address(0x445)));


extern volatile __bit TRISD6 __attribute__((address(0x446)));


extern volatile __bit TRISD7 __attribute__((address(0x447)));


extern volatile __bit TRISE0 __attribute__((address(0x448)));


extern volatile __bit TRISE1 __attribute__((address(0x449)));


extern volatile __bit TRISE2 __attribute__((address(0x44A)));


extern volatile __bit TRISE3 __attribute__((address(0x44B)));


extern volatile __bit TRMT __attribute__((address(0x4C1)));


extern volatile __bit TX __attribute__((address(0x3E)));


extern volatile __bit TX9 __attribute__((address(0x4C6)));


extern volatile __bit TX9D __attribute__((address(0x4C0)));


extern volatile __bit TXEN __attribute__((address(0x4C5)));


extern volatile __bit TXIE __attribute__((address(0x464)));


extern volatile __bit TXIF __attribute__((address(0x64)));


extern volatile __bit UA __attribute__((address(0x4A1)));


extern volatile __bit WCOL __attribute__((address(0xA7)));


extern volatile __bit WPUB0 __attribute__((address(0x4A8)));


extern volatile __bit WPUB1 __attribute__((address(0x4A9)));


extern volatile __bit WPUB2 __attribute__((address(0x4AA)));


extern volatile __bit WPUB3 __attribute__((address(0x4AB)));


extern volatile __bit WPUB4 __attribute__((address(0x4AC)));


extern volatile __bit WPUB5 __attribute__((address(0x4AD)));


extern volatile __bit WPUB6 __attribute__((address(0x4AE)));


extern volatile __bit WPUB7 __attribute__((address(0x4AF)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit nBOR __attribute__((address(0x470)));


extern volatile __bit nMCLR __attribute__((address(0x4B)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nPOR __attribute__((address(0x471)));


extern volatile __bit nRBPU __attribute__((address(0x40F)));


extern volatile __bit nT1SYNC __attribute__((address(0x82)));


extern volatile __bit nTO __attribute__((address(0x1C)));
# 300 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic_chip_select.h" 2 3
# 14 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic.h" 2 3
# 30 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic.h" 3
#pragma intrinsic(__nop)
extern void __nop(void);
# 78 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\eeprom_routines.h" 1 3
# 86 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic.h" 2 3





#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(unsigned long);
# 137 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 28 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\xc.h" 2 3
# 8 "./common.h" 2
# 12 "main.c" 2

# 1 "./port.h" 1








void PORT_Init(void);
void PORT_Init_Serial(void);
void PORT_Blink_LED(void);
void PORT_putchar(char c);
void PORT_putString(char chaine[]);
void PORT_Choose_Mux(char _value);
void PORT_Start_ADC(void);
unsigned char PORT_Get_Value_Adc(void);
void PORT_Select_Mux0(void);
void PORT_Select_Mux1(void);

unsigned int PORT_Change_Gain(char INTER0, char INTER1);
# 13 "main.c" 2

# 1 "./timer.h" 1







void TIMER_init_timer1(void);
# 14 "main.c" 2

# 1 "./adc.h" 1







unsigned char ADC_GetValue(char channel);
# 15 "main.c" 2


void Affichage_brut(int valeur_a_afficher);
void puts_float(float Valeur);
float Voltage_Value(unsigned char sensor);
float Resistance_Value(float Voltage,unsigned int R);
float conversion_newton (float Rc);
float Get_Newton(char INTER0, char INTER1, char sensor_Channel);

void main(void) {

    PORT_Init();
    TIMER_init_timer1();

    PORT_Select_Mux0();
    float F;
    while(1) {

        while (Fincompt1 != 0);
        Fincompt1 = 0;
        PORT_Blink_LED();




        F = Get_Newton(0,1,0);


    }

    return;
}





void Affichage_brut(int valeur_a_afficher)
{
    unsigned char affiche;

    ValueMetrics valueMetrics;

    affiche = valeur_a_afficher ;
    valueMetrics.cent = ((char)(affiche/100))+0x30;
    PORT_putchar(valueMetrics.cent);
    affiche = affiche % 100 ;
    valueMetrics.diz = ((char)(affiche/10))+0x30;
    PORT_putchar(valueMetrics.diz);
    affiche = affiche % 10 ;
    valueMetrics.unit = ((char)(affiche))+0x30;
    PORT_putchar(valueMetrics.unit);
}





void puts_float(float Valeur) {

    unsigned int affiche;
    ValueMetrics valueMetrics;

    Valeur = Valeur * 100;
    affiche = (int) Valeur ;

    valueMetrics.mil = ((char)(affiche/100000))+0x30;
    PORT_putchar(valueMetrics.mil);
    affiche = affiche % 100000 ;
    valueMetrics.cent = ((char)(affiche/10000))+0x30;
    PORT_putchar(valueMetrics.cent);
    affiche = affiche % 10000 ;
    valueMetrics.diz = ((char)(affiche/1000))+0x30;
    PORT_putchar(valueMetrics.diz);
    affiche = affiche % 1000 ;
    valueMetrics.unit = ((char)(affiche/100))+0x30;
    PORT_putchar('.');
    PORT_putchar(valueMetrics.unit);

    affiche = affiche % 100 ;
    valueMetrics.dizi = ((char)(affiche/10))+0x30;
    PORT_putchar(valueMetrics.dizi);
    affiche = affiche % 10 ;
    valueMetrics.centi = ((char)(affiche))+0x30;
    PORT_putchar(valueMetrics.centi);
}





void puts_Newton(float Valeur) {

    unsigned int affiche;
    ValueMetrics valueMetrics;

    Valeur = Valeur * 100;
    affiche = (int) Valeur ;
    affiche = affiche % 10000 ;
    valueMetrics.diz = ((char)(affiche/1000))+0x30;
    PORT_putchar(valueMetrics.diz);
    affiche = affiche % 1000 ;
    valueMetrics.unit = ((char)(affiche/100))+0x30;
    PORT_putchar(valueMetrics.unit);
    PORT_putchar('.');
    affiche = affiche % 100 ;
    valueMetrics.dizi = ((char)(affiche/10))+0x30;
    PORT_putchar(valueMetrics.dizi);
    affiche = affiche % 10 ;
    valueMetrics.centi = ((char)(affiche))+0x30;
    PORT_putchar(valueMetrics.centi);
}






float Voltage_Value(unsigned char sensor) {

    return (float) sensor * 5.0/256;

}






float Resistance_Value(float Voltage, unsigned int R) {
    float fR = R;
    return (float) (fR * 5.0)/(5.0 -(2*Voltage));
}






float conversion_newton (float Rc) {
     float F;
     int n;
     const float F_tab[20]={70,35,30,28,25,20,19,18,15,13,10,7, 5.4, 4, 3, 2.2, 1.5, 0.9, 0.45, 0.12};
     const float R_tab[20]={2000,2500,2600,2700,2900,3200,3400,3500,3900,4300,4800,5500,6800,8500,11000,16000,27000,45000,65000,95000};


     if (Rc <= R_tab[1])
         {
         n = 0;
         }
     if ((Rc <= R_tab[2]) && (Rc > R_tab[1]))
         {
         n = 1;
         }
     else if ((Rc <= R_tab[3]) && (Rc > R_tab[2]))
         {
         n = 2;
         }
     else if ((Rc <= R_tab[4]) && (Rc > R_tab[3]))
         {
         n = 3;
         }
     else if ((Rc <= R_tab[5]) && (Rc > R_tab[4]))
         {
         n = 4;
         }
     else if ((Rc <= R_tab[6]) && (Rc > R_tab[5]))
         {
         n = 5;
         }
     else if ((Rc <= R_tab[7]) && (Rc > R_tab[6]))
         {
         n = 6;
         }
     else if ((Rc <= R_tab[8]) && (Rc > R_tab[7]))
         {
         n = 7;
         }
     else if ((Rc <= R_tab[9]) && (Rc > R_tab[8]))
         {
         n = 8;
         }
     else if ((Rc <= R_tab[10]) && (Rc > R_tab[9]))
         {
         n = 9;
         }
     else if (Rc > R_tab[10])
         {
         n = 10;
         }
     F = (((F_tab[n]-F_tab[n+1])/(R_tab[n+1]-R_tab[n]))*(Rc-R_tab[n]))+F_tab[n];


     if (Rc <= R_tab[10])
         {
         F = 70;
         }
     if (Rc > R_tab[10])
         {
         F = 0.12;
         }

     return F;
}




float Get_Newton(char INTER0, char INTER1, char sensor_Channel) {

    unsigned char sensor_value;
    unsigned int R;
    float Vs,F,Rc;

    R = PORT_Change_Gain(INTER0,INTER1);

    sensor_value = ADC_GetValue(sensor_Channel);
    Vs = Voltage_Value(sensor_value);
    Rc = Resistance_Value(Vs, R);

    F = conversion_newton(Rc);







    puts_Newton(F);
    PORT_putString(" N ");




    PORT_putString("\n");


    return F;
}
