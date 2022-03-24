/*****************************************
File  : ds18b20.h
Autor : strefapic.blogspot.com
MCU   : STM32G071KBT6
IDE   : SEGGER Embedded Studio
******************************************/

#ifndef DS18B20_H_
#define DS18B20_H_
#include <stm32g071xx.h>

//#define WE1 PD7
//#define PORT_1Wire PIND
#define	SET_Input_Wire2()               (GPIOC->MODER &= ~(GPIO_MODER_MODE6_0 | GPIO_MODER_MODE6_1)) // PC6 set Input
#define	SET_Output_Wire2()              (GPIOC->MODER &= ~GPIO_MODER_MODE6_1) // PC6 set Output
#define SET_High_Wire2()                (GPIOC->BSRR |= GPIO_BSRR_BS6)  // PC6 podaj na wyjciu stan wysoki(zasilanie do parasite na czas konwersji)
#define SET_Low_Wire2()                 (GPIOC->BSRR |= GPIO_BSRR_BR6)  //PC6 podaj na wyjciu stan niski
#define TEST_Input_Wire2()              (GPIOC->IDR & GPIO_IDR_ID6) // PC6 pin status
#define TEST_Input_Wire2()              (GPIOC->IDR & GPIO_IDR_ID6) // PC6 pin status

// deklaracje zmiennych globalnych, przydomek extern powoduje i te zmienne bd dostepne
// we wszystkich moduach, ktre docz plik_led.h za pomoc dyrektywy #include
 extern int DStemp_Znak ; // zmienna widoczna dla innych plikw
 extern int DStemp_Calkowita ; //*************aby zlikwidowa float
 extern int DStemp_Ulamek ; //*************aby zlikwidowa float

 // obszar deklaracji funkcji udostepnionych dla innych moduw

//unsigned char RESET_PULSE(int) ;
//unsigned char read_byte(int) ;
//unsigned char read(int) ;
//void temperatura(int);	// gwna funkcja wyliczajca temperatur
//void send(char bit) ;
//void send_byte(char wartosc) ;


#endif /* DS18B20_H_ */
