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
unsigned char ADC_GetValue(char channel) {

    unsigned char sensor_value;
    PORT_Choose_Mux(channel);
    PORT_Start_ADC();
    sensor_value = PORT_Get_Value_Adc();
    if (sensor_value > 127) {
        sensor_value = 127;
    }
    else if (sensor_value <= 0) {
        sensor_value = 0;
    }
    return sensor_value;
} 