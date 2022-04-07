/*****************************************
File  : ds18b20.h
Autor : strefapic.blogspot.com
MCU   : STM32G071KBT6
IDE   : SEGGER Embedded Studio
******************************************/

#ifndef DS18B20_H_
#define DS18B20_H_
#include <stm32g071xx.h>
#include <stdint.h>

#define	DS18B20_CONVERT_T	0x44
#define	DS18B20_READ		0xBE
#define	DS18B20_SKIP_ROM        0xCC

 
 typedef  struct {
uint16_t DStemp;
bool DStemp_Znak;
uint16_t DStemp_Calkowita;
uint16_t DStemp_Ulamek;
 } temperatureDevice_t ;

temperatureDevice_t Wire1 ;
temperatureDevice_t Wire2 ;


void Set_WireHigh(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x);
void Set_WireLow(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x);
bool Read_Wire(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x);

bool ResetPulse(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x) ;
void WriteBit(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x, bool bit);
bool ReadBit(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x);
void WriteByte(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x, uint8_t byte);
uint8_t ReadByte(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x);
void Temperature(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x, temperatureDevice_t *TemperatureStructure);	
void ConvertTemperature(GPIO_TypeDef *GPIOx, uint32_t GPIO_Pin_x);


#endif /* DS18B20_H_ */
