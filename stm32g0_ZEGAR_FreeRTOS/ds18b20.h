/*****************************************
File  : ds18b20.h
Autor : strefapic.blogspot.com
MCU   : STM32G071KBT6
IDE   : SEGGER Embedded Studio
******************************************/

#ifndef DS18B20_H_
#define DS18B20_H_
#include <stm32g071xx.h>

#define SET_High_Wire2()                (GPIOC->BSRR |= GPIO_BSRR_BS6)  // PC6 podaj na wyjciu stan wysoki(zasilanie do parasite na czas konwersji)
#define SET_Low_Wire2()                 (GPIOC->BSRR |= GPIO_BSRR_BR6)  //PC6 podaj na wyjciu stan niski
#define TEST_Input_Wire2()              (GPIOC->IDR & GPIO_IDR_ID6) // PC6 pin status

#define	DS18B20_CONVERT_T	0x44
#define	DS18B20_READ		0xBE
#define	DS18B20_SKIP_ROM        0xCC

 extern bool DStemp_Znak ; 
 extern uint16_t DStemp_Calkowita ; 
 extern uint16_t DStemp_Ulamek ;   

 // obszar deklaracji funkcji udostepnionych dla innych moduw

bool ResetPulse(void) ;
void WriteBit(bool bit);
bool ReadBit(void);
void WriteByte(uint8_t byte);
uint8_t ReadByte(void);
void temperatura(void);	
void ConvertTemperature(void);

 


#endif /* DS18B20_H_ */
