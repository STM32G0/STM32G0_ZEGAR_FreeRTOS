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
uint8_t deviceID ;
bool DStemp_Znak;
uint16_t DStemp_Calkowita;
uint16_t DStemp_Ulamek;
 } temperature_t ;


typedef  struct {
uint8_t deviceID ;
GPIO_TypeDef *GPIOx ;
uint32_t GPIO_Pin_x ;

 } temperatureDevice_t ;

extern temperatureDevice_t WireDevice1, WireDevice2 ;

void Set_WireHigh(temperatureDevice_t *Wire);
void Set_WireLow(temperatureDevice_t *Wire);
bool Read_Wire(temperatureDevice_t *Wire);

bool ResetPulse(temperatureDevice_t *Wire) ;
void WriteBit(temperatureDevice_t *Wire, bool bit);
bool ReadBit(temperatureDevice_t *Wire);
void WriteByte(temperatureDevice_t *Wire, uint8_t byte);
uint8_t ReadByte(temperatureDevice_t *Wire);
void Temperature(temperatureDevice_t *Wire, temperature_t *TemperatureStructure);	
void ConvertTemperature(temperatureDevice_t *Wire);


#endif /* DS18B20_H_ */
