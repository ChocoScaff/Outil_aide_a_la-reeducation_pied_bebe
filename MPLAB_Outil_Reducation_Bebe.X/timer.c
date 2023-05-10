
#include "common.h"


char Fincompt1=0;

/**
 * Init first Timer
 */
void TIMER_init_timer1(void)
{
    TMRA = 65535-5000;


    //If T1OSCEN = 0:
    //External clock from TxCKI pin (on the rising edge)
    //If T1OSCEN = 1:
    //Crystal oscillator on T1OSI/T1OSO pins
    //01 =Timerx clock source is system clock (FOSC)
    //00 =Timerx clock source is instruction clock (FOSC/4)
    //bit 3 T1OSCEN: LP Oscillator Enable Control bit(1)
    //1 = Dedicated Timer1/3 oscillator circuit enabled
    //0 = Dedicated Timer1/3 oscillator circuit disabled
    // Ici, on s'en fout : c'est le capacitive sensing qui prend
    // le pas sur T1OSCEN
    T1OSCEN=0;


    // TMRCS<1:0>: Timerx Clock Source Select bits
    // 00 = Timerx clock source is instruction clock (Fosc/4))
    // 01 = Timerx clock source is System clock
    // 10 = Timerx clock source is external
    // 11 = Capcitive sensing
    // Dans la doc, c'est TMRxCS et cela ne concerne que le timer 1 !
    // TMR1CS1 et TMR1CS0 ne marchent pas mais TMR3CS0 et TMR3CS1 marchent
    // C'est un bug de nomenclature
    // Avec l'horloge interne a 16MHz, 00 donne une holroge timer à 4 MHz
    TMRCS1=0;
    TMRCS0=0;


    //TxCKPS<1:0>: Timerx Input Clock Prescale Select bits
    //11 = 1:8 Prescale value
    //10 = 1:4 Prescale value
    //01 = 1:2 Prescale value
    //00 = 1:1 Prescale value
    // Ici, pas de prédivision mais ça se discute
    T1CKPS0=1;
    T1CKPS1=1;

    //bit 2 TxSYNC: Timerx External Clock Input Synchronization Control bit
    //If TMRxCS<1:0> = 1X
    //1 = Do not synchronize external clock input
    //0 = Synchronize external clock input with system clock (FOSC)
    //If TMRxCS<1:0> = 0X
    //This bit is ignored. Timerx uses the internal clock when TMR1CS<1:0> = 0X.
    // Ici, pas de synchronisation sur l'horloge
    T1SYNC=1;


    //TMRxON: Timerx on bit
    //1 = Enables Timerx
    //0 = Stops Timerx. Clears Timerx gate flip-flop
    TMR1ON=1;


    //TMRxGE: Timerx Gate Enable bit
    ///If TMRxON = 0:
    //This bit is ignored.
    //If TMRxON = 1:
    //1 = Timerx counting is controlled by the Timerx gate function
    //0 = Timerx counts regardless of Timerx gate function
    TMR1GE=0;


    // TMRxIE bit of the PIEx register enables TMR1 interrupt
    TMR1IE=1;
}

void __interrupt() isr()
{

/*    *********************************************
     Fonction d'IT : toutes les IT sont traitees ici
     ********************************************* */

if (TMR1IF)
     {
     // IT de Timer 1
     Fincompt1 = 1;

     // Acquitement de l'IT : RAZ du flag
     TMR1IF=0;
     }

if (TMRAIF)
     {
     // IT du tiimer A


     // Acquitement de l'IT : RAZ du flag
     TMRAIF=0;
     }

}