/*
 * File:   adc.c
 * Author: abrouzes
 *
 * Created on 9 mai 2023, 16:50
 */

#include "port.h"

/**
 * 
 * @param channel
 * 
 * @return adc value
 */
unsigned char ADC_GetValue(int channel) {

    PORT_Config_Mux(channel);
    PORT_Start_ADC();
    return PORT_Get_Value_Adc();
} 