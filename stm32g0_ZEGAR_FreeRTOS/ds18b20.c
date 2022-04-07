/*****************************************
File  : ds18b20.c
Autor : strefapic.blogspot.com
MCU   : STM32G071KBT6
IDE   : SEGGER Embedded Studio
******************************************/


#include <stdlib.h>
#include <stdbool.h>
#include <stdint.h>
#include "delay.h"
#include "ds18b20.h"
#include "pin_config.h"
#include "max7219_interface.h"

#define debug // Semihosting on/off

temperatureDevice_t Wire1 ;
temperatureDevice_t Wire2 ;

/* Functions for 1-Wire operation */
void Set_WireHigh(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x) {
GPIOx->BSRR |= (0x1UL << GPIO_Pin_x) ;
}

void Set_WireLow(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x) {
GPIOx->BRR |= (0x1UL << GPIO_Pin_x) ;
}

bool Read_Wire(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x){
return (GPIOx->IDR & (0x1UL << GPIO_Pin_x));
}


bool ResetPulse(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x) // Reset the bus, wait for the PRESENCE pulse
{
  bool result = false;
  Set_WireLow(GPIOx , GPIO_Pin_x); 
  delay_us(480);  
  Set_WireHigh(GPIOx , GPIO_Pin_x);
  delay_us(70);
   if (Read_Wire(GPIOx , GPIO_Pin_x) == 0) { // 0 - Slave OK, 1 - Slave not response
      result = true;
      }
  delay_us(410);
  return result; 
}


void WriteBit(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x, bool bit) {
  if (bit) {
    /* Write '1' bit */
    Set_WireLow(GPIOx , GPIO_Pin_x);
    delay_us(6);
    Set_WireHigh(GPIOx , GPIO_Pin_x);
    delay_us(64);
  } else {
    /* Write '0' bit */
    Set_WireLow(GPIOx , GPIO_Pin_x);
    delay_us(60);
    Set_WireHigh(GPIOx , GPIO_Pin_x);
    delay_us(10);
  }
}

bool ReadBit(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x) {
  bool result;
  Set_WireLow(GPIOx , GPIO_Pin_x);
  delay_us(6);
  Set_WireHigh(GPIOx , GPIO_Pin_x);
  delay_us(9);
  result = Read_Wire(GPIOx , GPIO_Pin_x);
  delay_us(55);
  return result;
}

void WriteByte(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x, uint8_t byte) {
  for (uint8_t i = 0; i < 8; i++) {
    WriteBit(GPIOx , GPIO_Pin_x, (byte & 0x01));
    /* shift the byte for the next bit */
    byte >>= 1;
  }
}

uint8_t ReadByte(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x) {
  uint8_t result = 0;
  for (uint8_t i = 0; i < 8; i++) {
    /* shift the result to get it read for the next bit */
    result >>= 1;
    /* if result is one , then set MS bit */
    if (ReadBit(GPIOx , GPIO_Pin_x))
      result |= 0x80;
  }
  return result;
}

void ConvertTemperature(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x) {
  if (ResetPulse(GPIOx , GPIO_Pin_x)) { // sensor ready for operation ?
    //**************************************** CONVERSION TEMPERATURE START *****************************************************
    WriteByte(GPIOx , GPIO_Pin_x, DS18B20_SKIP_ROM);  // skip ROM
    WriteByte(GPIOx , GPIO_Pin_x, DS18B20_CONVERT_T); // CONVERT T
  }
}

/* function calculating the temperature */
void Temperature(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x, temperatureDevice_t *TemperatureStructure) { 

  uint8_t temp1 = 0, temp2 = 0;
  uint16_t DStemp = 0; // merge into one variable (LSB + MSB) 
  bool DStemp_Znak = false; // temperature sign
  uint16_t DStemp_Calkowita = 0; // extraction of the total with DStemp
  uint16_t DStemp_Ulamek = 0 ; // extraction of fractional  with DStemp 

  if (ResetPulse(GPIOx , GPIO_Pin_x)) { // sensor ready for operation ?

    //***************************************** START OF TEMPERATURE READING ******************************************
    WriteByte(GPIOx , GPIO_Pin_x, DS18B20_SKIP_ROM); // skip ROM
    WriteByte(GPIOx , GPIO_Pin_x, DS18B20_READ);     // READ SCRATCHPAD
    temp1 = ReadByte(GPIOx , GPIO_Pin_x);            // reading the LSB
    temp2 = ReadByte(GPIOx , GPIO_Pin_x);            // reading the MSB
    ResetPulse(GPIOx , GPIO_Pin_x);                  // finish reading, we are not interested in the rest of the bytes

    DStemp = (temp2 << 8) | temp1; // merge the MSB byte and the LSB byte into one word
    DStemp_Znak = temp2 >> 7;      // extract information about the temperature sign

    if (DStemp_Znak) {
      DStemp = ~DStemp + 1; // extract the absolute value from a negative number in U2 code
    }
    DStemp_Calkowita = (uint8_t)((DStemp >> 4) & 0x7F);       // shift by 4 bits and mask
    DStemp_Ulamek = (uint8_t)(((DStemp & 0xF) * 625) / 1000); // One digit after the decimal point. If you want two digits to divide by 100

    TemperatureStructure->DStemp = DStemp;
    TemperatureStructure->DStemp_Calkowita = DStemp_Calkowita;
    TemperatureStructure->DStemp_Ulamek = DStemp_Ulamek ;
    TemperatureStructure->DStemp_Znak = DStemp_Znak ;


    
    #ifdef debug
    printf("Temperatura: %d,%d \n", DStemp_Calkowita, DStemp_Ulamek);
    #endif
  }
}