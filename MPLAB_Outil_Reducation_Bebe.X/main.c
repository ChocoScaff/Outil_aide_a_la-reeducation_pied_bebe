/*
 * File:   main.c
 * Author: abrouzes
 *
 * Created on 9 mai 2023, 16:50
 */

// PIC16F707 Configuration Bit Settings

// 'C' source line config statements

#include "common.h"
#include "port.h"
#include "timer.h"
#include "adc.h"
#include <pic16f707.h>

void main(void) {
    
    int i;
    volatile unsigned char capt1, capt2, capt3, capt4;
    char tab[30];
    
    PORT_Init();
    TIMER_init_timer1();
    
//    PORT_Select_Mux1();
    PORTD |= 0x20; //Chip select mux 1
    PORTD &= 0xEF; //Chip disable mux 0
    
    while(1) {
         while (Fincompt1 != 0);
        Fincompt1 = 0;
        PORT_Blink_LED();
        
//        capt1 = ADC_GetValue(0);
//        capt2 = ADC_GetValue(1);
//        capt3 = ADC_GetValue(2);
//        capt4 = ADC_GetValue(3);
        
        
 
        PORTD |= 0;
        GO_nDONE=1; //ADC convertion start
        while(GO_nDONE); //Convertion
        capt1 = ADRES;
                
//        sprintf(tab,"valeur Capteur %d %d %d %d \n", capt1, capt2, capt3, capt4);
        sprintf(tab,"valeur Capteur %d \n", capt1);
        
        PORT_putString(tab);
    }
        
    return;
}

/**
 * 
 * @param Valeur
 */
void puts_float(float Valeur) {
    
    unsigned int affiche;
    ValueMetrics valueMetrics;

    Valeur = Valeur * 1000;
    affiche = (int) Valeur ;

    // mil = ((char)(affiche/100000))+0x30;
    // putchar(mil);
    // affiche = affiche % 100000 ;
    // affiche = affiche % 10000 ;
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

