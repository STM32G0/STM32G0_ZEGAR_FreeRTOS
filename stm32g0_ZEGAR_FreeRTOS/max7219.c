/*****************************************
File  : max7219.c
Autor : strefapic.blogspot.com
MCU   : STM32G071KBT6
IDE   : SEGGER Embedded Studio
******************************************/

#include <stm32g071xx.h>
#include <string.h>
#include "system_config.h"
#include "max7219.h"
#include "max7219_interface.h"
#include "mcp79410.h"

uint8_t Max7219SpiBuffer[MAX7219_DEVICES * 2];

// wyslanie 2 bajtw do ukladu MAX7219
// 1 bajt (adress) - adres rejestru do ktrego bd wpisane dane
// 2 bajt (data) - dane do zapisania
void max7219_send(uint8_t adress, uint8_t data) {
  CS_SetLow(); // ustawienie stanu niskiego na linii CS
  SPI1_Transmit_2x8bit(adress, data);
  CS_SetHigh(); // ustawienie stanu wysokiego na linii CS (zatrzanicie danych w ukladzie zboczem narastajacym)
}

void max7219_SendToDevice(uint8_t DeviceNumber, uint8_t Adress, uint8_t Data) {
  uint8_t Offset = DeviceNumber * 2;
/* Device 0 - send NOP (0,0) and next send (adresRegister , data) */
/* Device 1 - send (adresRegister , data) and next send NOP (0,0) */

  memset(Max7219SpiBuffer, 0x00, (MAX7219_DEVICES * 2)); // set NOP
  Max7219SpiBuffer[(MAX7219_DEVICES * 2) - Offset - 2] = Adress;
  Max7219SpiBuffer[(MAX7219_DEVICES * 2) - Offset - 1] = Data;
  CS_SetLow(); // ustawienie stanu niskiego na linii CS
  SPI1_Transmit_Buffer(Max7219SpiBuffer, (MAX7219_DEVICES * 2));
  CS_SetHigh(); // ustawienie stanu wysokiego na linii CS (zatrzanicie danych w ukladzie zboczem narastajacym)
}

// inicjalizacja ukladu MAX7219
void max7219_init(void) {
  /* Device 1*/
  max7219_SendToDevice(Device0, MAX7219_SCAN_LIMIT, (MAX7219_USE_DIGIT - 1)); // liczba obslugiwanych wyswietlaczy
  max7219_SendToDevice(Device0, MAX7219_INTENSITY, 15);                       // maksymalna jasnosc od zera 0 - 15
  max7219_SendToDevice(Device0, MAX7219_DECODE_MODE, MAX7219_USE_BCD_DECODE); // ustawienie trybu wyswietlania dla poszczeglnych wyswietlaczy - BCD
  max7219_SendToDevice(Device0, MAX7219_SHUTDOWN, MAX7219_NORMAL_OPPERATION); // wlaczenie ukladu (normal operation)
  max7219_SendToDevice(Device0, MAX7219_DISPLAY_TEST, 0);                     // Test OFF
  /* Device 1*/
  max7219_SendToDevice(Device1, MAX7219_SCAN_LIMIT, (MAX7219_USE_DIGIT - 1)); // liczba obslugiwanych wyswietlaczy
  max7219_SendToDevice(Device1, MAX7219_INTENSITY, 15);                       // maksymalna jasnosc od zera 0 - 15
  max7219_SendToDevice(Device1, MAX7219_DECODE_MODE, MAX7219_USE_BCD_DECODE); // ustawienie trybu wyswietlania dla poszczeglnych wyswietlaczy - BCD
  max7219_SendToDevice(Device1, MAX7219_SHUTDOWN, MAX7219_NORMAL_OPPERATION); // wlaczenie ukladu (normal operation)
  max7219_SendToDevice(Device1, MAX7219_DISPLAY_TEST, 0);                     // Test OFF
}

// czyszczenie zawartosci wszystkich wyswietlaczy LED

void max7219_clear(void) {
  uint8_t i, j;
  for (i = 0; i < (MAX7219_DEVICES); i++) {
    for (j = 0; j < 8; j++) {
      if ((MAX7219_USE_BCD_DECODE & (1 << j))) {
        max7219_SendToDevice(i, j, 0xF);
      } else {
        max7219_SendToDevice(i, j, 0);
      }
    }
  }
}

/* funkcje do współpracy z MCP79410 i wyswietlania czasu*/
void max7219_display_Minutes(uint8_t minutes){
/* display minutes*/
          max7219.SendToDevice(Device0, MAX7219_DIGIT0, (dec2bcd(minutes) & 0x0F));        // wyswietl cyfre jednosci i nie zapomnij zdekodowac z DEC na BCD
          max7219.SendToDevice(Device0, MAX7219_DIGIT1, ((dec2bcd(minutes) >> 4) & 0x0F)); // wyswietl cyfre dziesiatki
}

void max7219_display_Hour(uint8_t hour){
/* display hour*/
          max7219.SendToDevice(Device0, MAX7219_DIGIT2, (dec2bcd(hour) & 0x0F));        // wyswietl cyfre jednosci i nie zapomnij zdekodowac z DEC na BCD
          max7219.SendToDevice(Device0, MAX7219_DIGIT3, ((dec2bcd(hour) >> 4) & 0x0F)); // wyswietl cyfre dziesiatki
}

