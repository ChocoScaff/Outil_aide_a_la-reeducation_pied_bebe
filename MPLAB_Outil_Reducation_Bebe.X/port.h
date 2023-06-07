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
void PORT_Choose_Mux(char _value);
void PORT_Start_ADC(void);
unsigned char PORT_Get_Value_Adc(void);
void PORT_Select_Mux0(void);
void PORT_Select_Mux1(void);
void PORT_Init_Gain(void);
void PORT_Change_Gain(char INTER0, char INTER1);