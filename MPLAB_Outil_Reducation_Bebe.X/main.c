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

float Voltage_Value(unsigned char sensor);
//float Resistance_Value(float Voltage);
//float conversion_newton (float Rc);

void main(void) {
    
    volatile unsigned char sensor1, sensor2, sensor3, sensor4;
    #if defined (_DEBUG)
    char tab[30];
    #endif
    float Rc,Vs,F;
    
    PORT_Init();
    TIMER_init_timer1();
    
    PORT_Select_Mux0(); //Select U3
    
    while(1) {
        
        while (Fincompt1 != 0);
        Fincompt1 = 0;
        PORT_Blink_LED();
        
        sensor1 = ADC_GetValue(0);
        sensor2 = ADC_GetValue(1);
        sensor3 = ADC_GetValue(2);
        sensor4 = ADC_GetValue(3);
               
        #if defined (_DEBUG)
//        sprintf(tab,"valeur Capteur %d %d %d %d \n", sensor1, sensor2, sensor3, sensor4);
//        sprintf(tab,"valeur Capteur %d \n", sensor1);
        
        PORT_putString(tab);
        #endif
        
        Vs = Voltage_Value(sensor1);
        #if defined (_DEBUG)
        sprintf(tab,"tension Capteur %2.2lf V \n", Vs);
        PORT_putString(tab);
        #endif
//        Rc = Resistance_Value(Vs);
//        F = conversion_newton(Rc);

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

/**
 * 
 * @param capt
 * @return 
 */
float Voltage_Value(unsigned char sensor) {
    return (sensor*(VOLTAGE_ALIM/255));
} 
//
///**
// * 
// * @param Voltage
// * @return 
// */
//float Resistance_Value(float Voltage) {
//    return (RESISTANCE_AOP_VALUE*VOLTAGE_ALIM)/(VOLTAGE_ALIM-(2*Voltage));
//}
//
///**
// * 
// * @param Rc
// * @return 
// */
//float conversion_newton (float Rc) {
//     float F;
//     int n;
//     const float F_tab[20]={70,35,30,28,25,20,19,18,15,13,10,7, 5.4, 4, 3, 2.2, 1.5, 0.9, 0.45, 0.12};
//     const float R_tab[20]={2000,2500,2600,2700,2900,3200,3400,3500,3900,4300,4800,5500,6800,8500,11000,16000,27000,45000,65000,95000};
//    
//     
//     if (Rc <= R_tab[1])
//         {
//         n = 0;
//         }
//     if ((Rc <= R_tab[2]) && (Rc > R_tab[1]))
//         {
//         n = 1;
//         }
//     else if ((Rc <= R_tab[3]) && (Rc > R_tab[2]))
//         {
//         n = 2;
//         }
//     else if ((Rc <= R_tab[4]) && (Rc > R_tab[3]))
//         {
//         n = 3;
//         }
//     else if ((Rc <= R_tab[5]) && (Rc > R_tab[4]))
//         {
//         n = 4;
//         }
//     else if ((Rc <= R_tab[6]) && (Rc > R_tab[5]))
//         {
//         n = 5;
//         }
//     else if ((Rc <= R_tab[7]) && (Rc > R_tab[6]))
//         {
//         n = 6;
//         }
//     else if ((Rc <= R_tab[8]) && (Rc > R_tab[7]))
//         {
//         n = 7;
//         }
//     else if ((Rc <= R_tab[9]) && (Rc > R_tab[8]))
//         {
//         n = 8;
//         }
//     else if ((Rc <= R_tab[10]) && (Rc > R_tab[9]))
//         {
//         n = 9;
//         }
//     else if (Rc > R_tab[10])
//         {
//         n = 10;
//         }
//     F = (((F_tab[n]-F_tab[n+1])/(R_tab[n+1]-R_tab[n]))*(Rc-R_tab[n]))+F_tab[n];
////calcul de la force F
//     
//     if (Rc <= R_tab[10])
//         {
//         F = 70;
//         }
//     if (Rc > R_tab[10])
//         {
//         F = 0.12;
//         }
//
//     return F;
//}