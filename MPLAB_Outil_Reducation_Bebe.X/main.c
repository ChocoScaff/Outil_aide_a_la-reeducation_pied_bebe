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
float Resistance_Value(float Voltage, unsigned int R);
float conversion_newton (float Rc);
float Get_Newton(char INTER0, char INTER1, char sensor_Channel);
void puts_Newton(float Valeur);
float Get_Better_Newton_Value(char channel_sensor);

void main(void) {
    
    PORT_Init();
    TIMER_init_timer1();
    
    PORT_Select_Mux0(); 
    float F;
    while(1) {
        
        while (Fincompt1 != 0);
        Fincompt1 = 0;
        PORT_Blink_LED();
        
        F = Get_Better_Newton_Value(0);
        
        
        PORT_putchar('\r');
        puts_Newton(F); 
        PORT_putchar('\n');
                
        //see PCB R20 R20B R20C

        
    }
        
    return;
}

/**
 * 
 * @param channel_sensor
 * @return 
 */
float Get_Better_Newton_Value(char channel_sensor) {
    
//    float F1,F2,F3;
    float r1, r2, r3;
    float coeffR1=1,coeffR2=1,coeffR3=1;
    float resultat,F;
    
    r1 = Get_Newton(0,0,channel_sensor); //52k ohm       
    r2 = Get_Newton(0,1,channel_sensor); //2.8k ohm      
    r3 = Get_Newton(1,0,channel_sensor); //8.3k ohm   
    
    if (r1 > 650000) //saturation
    {
        coeffR1=650000/r1;
    }
    else if(r1 < 68000) {
        coeffR1= r1/68000;
    }
    if (r2 > 35000)
    {
        coeffR2= 35000/r2;
    }
    else if(r2 < 3900)
    {
        coeffR2= r2/3900;
    }
    if (r3 > 103750)
    {
        coeffR3= 103750/r3;
    }
    else if (r3 < 11530)
    {
        coeffR3= r3/11530;
    }
        
    resultat = ((r1*coeffR1)+(r2*coeffR2)+(r3*coeffR3))/(coeffR1+coeffR2+coeffR3);
    
    F = conversion_newton(resultat);
        
    #if defined (_DEBUG)
//    Affichage_brut(F);
//    PORT_putchar('\n');
    #endif    
    return F;
    
    
    
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
//    PORT_putchar('.');
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
 * @param Valeur
 */
void puts_Newton(float Valeur) {
    
    unsigned char affiche;
    
    affiche = (unsigned char) Valeur;
    
    PORT_putchar(affiche);

}

/**
 * 
 * @param sensor
 * @return 
 */
float Voltage_Value(unsigned char sensor) {
    
    float voltage_result;
    voltage_result = (float) sensor * QUANTUM;
    if (voltage_result <= 0)
        voltage_result = 0.01;
    return voltage_result;

} 

/**
 * 
 * @param Voltage
 * @return 
 */
float Resistance_Value(float Voltage, unsigned int R) {
    float resultat;
    float fR = (float) R;
    resultat = (float) (fR * VOLTAGE_ALIM)/(VOLTAGE_ALIM-(2*Voltage));
    return resultat;
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
     else if ((Rc <= R_tab[11]) && (Rc > R_tab[10]))
         {
         n = 10;
         }
     else if ((Rc <= R_tab[12]) && (Rc > R_tab[11]))
     {
         n = 11; 
     }
         
     else if ((Rc <= R_tab[13]) && (Rc > R_tab[12])) 
     {
         n = 12;
     }     
     else if ((Rc <= R_tab[14]) && (Rc > R_tab[13]))
     {
         n= 13;
     }
     else if ((Rc <= R_tab[15]) && (Rc > R_tab[14]))
     {
         n= 14;
     }
     else if ((Rc <= R_tab[16]) && (Rc > R_tab[15]))
     {
         n= 15;
     }
     else if ((Rc <= R_tab[17]) && (Rc > R_tab[16]))
     {
         n= 16;
     }
     else if ((Rc <= R_tab[18]) && (Rc > R_tab[17]))
     {
         n= 17;
     }
      else if ((Rc <= R_tab[19]) && (Rc > R_tab[18]))
     {
         n= 18;
     }
      else 
     {
         n= 19;
     }
      
             
     F = (((F_tab[n]-F_tab[n+1])/(R_tab[n+1]-R_tab[n]))*(Rc-R_tab[n]))+F_tab[n];
//calcul de la force F
     
     if (F > 70)
        F = 70;
     else if (F < 0.12)
        F=0.12;


     return F;
}

/**
 * 
 */
float Get_Newton(char INTER0, char INTER1, char sensor_Channel) {
    
    unsigned char sensor_value;
    unsigned int R;
    float Vs,F,Rc;

    R = PORT_Change_Gain(INTER0,INTER1);
    #if defined (_DEBUG)
//    Affichage_brut(R);
//    PORT_putString(" R ");
    #endif

    sensor_value = ADC_GetValue(sensor_Channel);
    #if defined (_DEBUG)
//    Affichage_brut(sensor_value);
//    PORT_putString(" Numerique ");
    #endif
    Vs = Voltage_Value(sensor_value);
    #if defined (_DEBUG)
//    puts_float(Vs);
//    PORT_putString(" V ");
    #endif
    Rc = Resistance_Value(Vs, R);
    #if defined (_DEBUG)
//    puts_float(Rc);
//    PORT_putString(" Rc ");
    #endif

//    F = conversion_newton(Rc);
//    
//    #if defined (_DEBUG)
//    PORT_putchar('\r');
//    Affichage_brut(F);
//    PORT_putString(" N \n");  
//    #endif
//
//    return F;
    return Rc;
}