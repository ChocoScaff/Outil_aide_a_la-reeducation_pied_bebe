/*
 * File:   defs.h
 * Author: abrouzes
 *
 * Created on 9 mai 2023, 16:50
 */

// CONFIG
#pragma config FOSC = INTOSC    // Oscillator Selection bits (INTOSC oscillator: CLKOUT function on RA6/OSC2/CLKOUT pin, I/O function  on RA7/OSC1/CLKIN)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled and can be enabled by SWDTEN bit of the WDTCON register)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = ON       // RE3/MCLR Pin Function Select bit (RE3/MCLR pin function is MCLR)
#pragma config CP = OFF         // Code Protection bit (Program memory code protection is disabled)
#pragma config BOREN = ON       // Brown-out Reset Selection bits (BOR enabled)
#pragma config BORV = 19        // Brown-out Reset Voltage Selection bit (Brown-out Reset Voltage (VBOR) set to 1.9 V nominal)
#pragma config PLLEN = ON       // INTOSC PLLEN Enable Bit (INTOSC Frequency is 16 MHz (32x))

// CONFIG2
#pragma config VCAPEN = OFF     // Voltage Regulator Capacitor Enable bits (All VCAP pin functions are disabled)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#define RESISTANCE_AOP_VALUE 4700   // RC
#define VOLTAGE_ALIM 5              // VCC


char Fincompt1=0;