/* 
 * File:   port.h
 * Author: abrouzes
 *
 * Created on 10 mai 2023, 11:29
 */


void PORT_Init(void);
void PORT_Init_Serial(void);
void PORT_Blink_LED(void);
void PORT_putchar(char c);
void PORT_putString(char chaine[]);
void PORT_Config_Mux(int _value);
void PORT_Start_ADC(void);
unsigned char PORT_Get_Value_Adc(void);