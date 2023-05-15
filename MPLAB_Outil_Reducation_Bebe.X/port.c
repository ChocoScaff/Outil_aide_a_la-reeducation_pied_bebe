/*
 * File:   port.c
 * Author: abrouzes
 *
 * Created on 10 mai 2023, 11:28
 */


#include "common.h"
#include <pic16f707.h>

/**
 * 
 */
void PORT_Init_Serial(void) {
    //liaison série
   
    TRISC = 0xFF; // RC6 : écriture et RC7 : liaison série
 
    //SPBRG = 16; // 57600 bauds
    SPBRG = 25; // 9600 bauds avec une horloge à 16 MHz SPBRG = 25
    // Transmission 8 bits, pas de parite, 9600 bauds
    
    
    TXSTA = TXSTA & 0xDF; // TX9 = 1 on transmet 9 bits (donc la non)
    TXSTA = TXSTA | 1; // TX9D = 9eme bit a transmettre à 1 (=stop)
    TXSTA = TXSTA & 0xFB; // BRGH = 0 low speed pour 9600 bauds -> 25 dans SPBRG
    //TXSTA = TXSTA | 0x04; // BRGH = 1 high speed pour 57600 bauds -> 16 dans SPBRG

    RCSTA = RCSTA | 0x20; // SREN = 1 réception serie activee
    RCSTA = RCSTA & 0xDF; // RX9 = 0 on n'attend que 8 bits
    RCSTA = RCSTA | 0x04; // FERR=1
    RCSTA = RCSTA | 0x02; // OERR=1
    //Monsieur Microchip dit que ces 3 la doivent etre dans cet etat pour avoir une liaison serie asynchrone
    TXSTA = TXSTA & 0xEF; // SYNC = 0 mode asynchrone
    TXSTA = TXSTA | 0x20; // TXEN = 1
    RCSTA = RCSTA | 0x80; // SPEN = 1 liaison serie activee
}


/**
 * Init Port for 707
 */
void PORT_Init(void) {
    
    //configuration du port B
    WPUB=0; // Pas de pull-up sur les broches
    ANSELB = 0; // Port B tout numérique
      // ATTENTION ANSELB = 0xFF par defaut
      // Tout analogique par defaut
    TRISB = 0xFE; // broche 0 en sortie (LED), tout le reste en entrée

    //configuration des ports et de la stabilisation de l'oscillateur
    OSCCON = 0x30; // On demande 16MHz ou 500 kHz
    for( ; (OSCCON & 0xC) != 0xC ; );
      // On attend la stabilisation de l'oscillateur pour continuer
    //ANSELA = 0x2E; //RA0 entre analogique de mesure
      // Port D en tout ou rien pour la commande du multiplexeur
    ANSELD = 0x00;

      // configuration des ports d'E/S
    TRISA = 0xFF; // configure le port A tout en entrees
    
    TRISD = 0xF0; // RD 0 à RD3 en sortie pour la commande du multiplexeur
    
    PORT_Init_Serial();
    //configuration du DAC et de Vref
    ANSELA = 0x01; // RA0, RA1 et RA2 en analog input

    ADCON0=0x01; //ADC sur AN0 (RA0)
    ADCON1=0x62; //ADC Clock Fosc/64, Vref connecté à RA3 (p. 79 doc)

    FVRCON=0;
    DACCON0=0x0;    // on éteint le CNA
    DACCON0=0x60;   // Sortie sur RA2, rien de spécial en sommeil, Vref = Vdd
    DACCON0|=0x80;  // On allume le DAC

    DACCON1=0x18;   // CNA out = Vdd/2
}

/**
 * Clignotement de la LED
 */
void PORT_Blink_LED(void) {
    PORTBbits.RB0 = !PORTBbits.RB0;
}

/**
 * 
 * Configuration MUX
 * 
 * @param _value
 */
void PORT_Config_Mux(int _value) {
    PORTD=_value;
}

/**
 * ADC convertion start and wait end conversion
 */
void PORT_Start_ADC(void) {
    GO_nDONE=1; //ADC convertion start
    while(GO_nDONE); //Convertion
}

/**
 * 
 * Récuperation de la valeur
 * 
 * @return 
 */
unsigned char PORT_Get_Value_Adc(void) {
    return ADRES;
}

/**
 * 
 * @param c
 */
void PORT_putchar(char c) {
    
    for(;(TXSTA&0x02)!=0x02;);
    TXREG = c;
}

/**
 * 
 * @param chaine
 */
void PORT_putString(char chaine[]) {
    
    int i;

    for(i=0 ; chaine[i]!=0 ; i++)
    {
        PORT_putchar(chaine[i]);
    }
}