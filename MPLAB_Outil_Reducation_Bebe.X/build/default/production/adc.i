# 1 "adc.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "adc.c" 2







# 1 "./port.h" 1








void PORT_Init(void);
void PORT_Init_Serial(void);
void PORT_Blink_LED(void);
void PORT_putchar(char c);
void PORT_putString(char chaine[]);
void PORT_Config_Mux(int _value);
void PORT_Start_ADC(void);
unsigned char PORT_Get_Value_Adc(void);
# 8 "adc.c" 2








unsigned char ADC_GetValue(int channel) {

    PORT_Config_Mux(channel);
    PORT_Start_ADC();
    return PORT_Get_Value_Adc();
}
