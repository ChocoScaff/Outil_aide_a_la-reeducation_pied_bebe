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

void Affichage_brut(int valeur_a_afficher);
void puts_float(float Valeur);
float Voltage_Value(unsigned char sensor);
float Resistance_Value(float Voltage);
float conversion_newton (float Rc);
#if defined (_DEBUG_GAIN)
void Test_Gain(char INTER0, char INTER1);
#endif

void main(void) {
 
    unsigned char sensor1, sensor2, sensor3, sensor4;
 
    float Rc,Vs,F;
    
    PORT_Init();
    TIMER_init_timer1();
    
    PORT_Select_Mux1(); 
    PORT_Init_Gain();
    
    while(1) {
        
        while (Fincompt1 != 0);
        Fincompt1 = 0;
        PORT_Blink_LED();
        
        #if defined (_DEBUG_GAIN)
        Test_Gain(0,0); //1.45v       
        Test_Gain(0,1); //2.5v        
        Test_Gain(1,0); //2.5v        
        Test_Gain(1,1); //1.9v       
        #endif
        
        sensor1 = ADC_GetValue(0);
        sensor2 = ADC_GetValue(1);
        sensor3 = ADC_GetValue(2);
        sensor4 = ADC_GetValue(3);
               
        
        #if defined (_DEBUG)
        PORT_putString("valeur Capteur ");
        Affichage_brut(sensor1);
        PORT_putString(" ");  
        #endif
        
        Vs = Voltage_Value(sensor1);
        #if defined (_DEBUG)
        PORT_putString("valeur Tension ");
        puts_float(Vs);
        PORT_putString("\n");    
        #endif
        
        Rc = Resistance_Value(Vs);
        #if defined (_DEBUG)
        PORT_putString("valeur Resistance ");
        puts_float(Rc);
        PORT_putString("\n");
        
        #endif

        F = conversion_newton(Rc);
        #if defined (_DEBUG)
        PORT_putString("valeur Newton ");
        puts_float(F);
        PORT_putString("\n");
        
        #endif


    }
        
    return;
}

/**
 * 
 * @param valeur_a_afficher
 */
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
 * @param sensor
 * @return 
 */
float Voltage_Value(unsigned char sensor) {
      
    return (float) sensor * QUANTUM;

} 

/**
 * 
 * @param Voltage
 * @return 
 */
float Resistance_Value(float Voltage) {
    return (4.7 * (VOLTAGE_ALIM)/(VOLTAGE_ALIM-(2*Voltage)));
}

/**
 * 
 * @param Rc
 * @return 
 */
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
//calcul de la force F
     
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

#if defined (_DEBUG_GAIN)
/**
 * 
 */
void Test_Gain(char INTER0, char INTER1) {
    
    unsigned char sensor1;
    float Vs;
    
    PORT_Change_Gain(INTER0,INTER1);
    
    sensor1 = ADC_GetValue(0);
    Vs = Voltage_Value(sensor1);
       
    PORT_putString("valeur Tension ");
    PORT_putchar(' ');
    Affichage_brut(sensor1);
    PORT_putchar(' ');
    puts_float(Vs);
    PORT_putchar(' ');
    Affichage_brut(INTER0);
    PORT_putchar(' ');
    Affichage_brut(INTER1);
    PORT_putString("\n");
    
}
#endif