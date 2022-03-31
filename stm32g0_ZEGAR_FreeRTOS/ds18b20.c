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


uint16_t DStemp ; //*************poaczenie LSB + MSB w jedn zmienn
bool DStemp_Znak ; //*************tutaj badamy znak temperatury
uint16_t DStemp_Calkowita ; //*************wydobywamy cz cakowit z DStemp
uint16_t DStemp_Ulamek ; //*************wydobywamy cz uamkow (po przecinku) z DStemp

bool ResetPulse(void) // resetujemy magistrale , czekamy na impuls PRESENCE
{
  bool result = false;
  SET_Low_Wire2();
  delay_us(480);  
  SET_High_Wire2();
  delay_us(70);
   if (TEST_Input_Wire2() == 0) { // 0 - Slave OK, 1 - Slave not response
      result = true;
      }
  delay_us(410);
  return result; 
}


void WriteBit(bool bit) {
  if (bit) {
    /* Write '1' bit */
    SET_Low_Wire2();
    delay_us(6);
    SET_High_Wire2();
    delay_us(64);
  } else {
    /* Write '0' bit */
    SET_Low_Wire2();
    delay_us(60);
    SET_High_Wire2();
    delay_us(10);
  }
}

bool ReadBit(void) {
  bool result;
  SET_Low_Wire2();
  delay_us(6);
  SET_High_Wire2();
  delay_us(9);
  result = TEST_Input_Wire2();
  delay_us(55);
  return result;
}

void WriteByte(uint8_t byte) {
  for (uint8_t i = 0; i < 8; i++) {
    WriteBit(byte & 0x01);
    /* shift the byte for the next bit */
    byte >>= 1;
  }
}

uint8_t ReadByte(void) {
  uint8_t result = 0;
  for (uint8_t i = 0; i < 8; i++) {
    /* shift the result to get it read for the next bit */
    result >>= 1;
    /* if result is one , then set MS bit */
    if (ReadBit())
      result |= 0x80;
  }
  return result;
}

void ConvertTemperature(void) {
  if (ResetPulse()) {             // czy czujnik zgasza gotowo do dzialania
    //****************************************START KONWERSJI*****************************************************
    WriteByte(DS18B20_SKIP_ROM);  // skip ROM
    WriteByte(DS18B20_CONVERT_T); // CONVERT T
  }
}

void temperatura(void) { // glowna funkcja wyliczajca temperatur, jako parametr podajemy numer czujnika WE1...WE2 ...

  static uint8_t temp1 = 0, temp2 = 0;

  if (ResetPulse()) { // czy czujnik zgasza gotowo do dzialania

    //*****************************************START ODCZYTU TEMPERATURY******************************************
    WriteByte(DS18B20_SKIP_ROM); // skip ROM
    WriteByte(DS18B20_READ);     // READ SCRATCHPAD
    temp1 = ReadByte();          // odczytanie LSB
    temp2 = ReadByte();          // odczytanie MSB
    ResetPulse();                // konczymy odczyt, reszta bajtow nas nie interesuje

    DStemp = (temp2 << 8) | temp1; // laczymy starszy bajt i modszy w jeden kawaek
    DStemp_Znak = temp2 >> 7;      // wydobywamy info o znaku temperatury

    if (DStemp_Znak) {
      DStemp = ~DStemp + 1; // wycigamy warto bezwgldn z liczby ujemnej w kodzie U2
    }
    DStemp_Calkowita = (uint8_t)((DStemp >> 4) & 0x7F);       // przesuwamy o 4 bity i maskujemy
    DStemp_Ulamek = (uint8_t)(((DStemp & 0xF) * 625) / 1000); // jedna cyfra po przecinku, jesli chcemy 2 cyfry do dzielimy przez 100
    
    //printf("Temperatura: %d,%d \n", DStemp_Calkowita, DStemp_Ulamek);
    
  }
}