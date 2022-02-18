/*****************************************
File  : clock_config.c
Autor : strefapic.blogspot.com
MCU   : STM32G071KBT6
IDE   : SEGGER Embedded Studio
******************************************/

#include <stm32g071xx.h>
#include "pin_config.h"

void PIN_MANAGER_Initialize(void){

/********** PA9 and PB9 set for I2C2 *****************/
/*set Alternate fuction mode (0b10)*/
/*for PA9*/
GPIOA->MODER |= GPIO_MODER_MODE9_1 ; 
GPIOA->MODER &= ~(GPIO_MODER_MODE9_0); 
/*for PB9*/
GPIOB->MODER |= GPIO_MODER_MODE9_1 ; 
GPIOB->MODER &= ~(GPIO_MODER_MODE9_0); 
/*set Open Drain*/
GPIOA->OTYPER |= GPIO_OTYPER_OT9 ;
GPIOB->OTYPER |= GPIO_OTYPER_OT9 ;
/*set Pull-Up (0b01)*/
/*for PA9*/
GPIOA->PUPDR |= GPIO_PUPDR_PUPD9_0 ;
GPIOA->PUPDR &= ~(GPIO_PUPDR_PUPD9_1);
/*for PB9*/
GPIOB->PUPDR |= GPIO_PUPDR_PUPD9_0 ;
GPIOB->PUPDR &= ~(GPIO_PUPDR_PUPD9_1);
/*set low speed (0b01)*/
/*for PA9*/
GPIOA->OSPEEDR |= GPIO_OSPEEDR_OSPEED9_0 ;
GPIOA->OSPEEDR &= ~(GPIO_OSPEEDR_OSPEED9_1);
/*for PB9*/
GPIOB->OSPEEDR |= GPIO_OSPEEDR_OSPEED9_0 ;
GPIOB->OSPEEDR &= ~(GPIO_OSPEEDR_OSPEED9_1);
/*set for I2C (0b0110)*/
/*for PA9*/
GPIOA->AFR[1] &= ~(GPIO_AFRH_AFSEL9) ; // clear
/*for PB9*/
GPIOB->AFR[1] &= ~(GPIO_AFRH_AFSEL9) ; // clear
/*for PA9*/
GPIOA->AFR[1] |= (GPIO_AFRH_AFSEL9_1 | GPIO_AFRH_AFSEL9_2) ; //set
/*for PB9*/
GPIOB->AFR[1] |= (GPIO_AFRH_AFSEL9_1 | GPIO_AFRH_AFSEL9_2) ; //set

/********** PC15 set Out for LED2 **********************/
GPIOC->MODER &= ~GPIO_MODER_MODE15_1; //MODE15 -> 0b01
/********** PC14 set Out for LED1 **********************/
GPIOC->MODER &= ~GPIO_MODER_MODE14_1; //MODE14 -> 0b01


/********** PA3 set Out for CS MAX7219 **********************/
GPIOA->MODER &= ~GPIO_MODER_MODE3_1; //MODE3 -> 0b01


/********** PB5 set for EXTI ************/
/*set Input (0b00)*/
GPIOB->MODER &= ~(GPIO_MODER_MODE5_0 | GPIO_MODER_MODE5_1); 
/*set low speed (0b01)*/
GPIOB->OSPEEDR |= GPIO_OSPEEDR_OSPEED5_0 ;
GPIOB->OSPEEDR &= ~GPIO_OSPEEDR_OSPEED5_1 ;
/*set Pull-Up (0b01)*/
GPIOB->PUPDR |= GPIO_PUPDR_PUPD5_0 ;
GPIOB->PUPDR &= ~GPIO_PUPDR_PUPD5_1;
/*set EXTI for PB5*/
EXTI->EXTICR[1] |= EXTI_EXTICR2_EXTI5_0 ; // Port PB - 0x01
/*set EXTI Falling triger for PB5*/
EXTI->FTSR1 |= EXTI_FTSR1_FT5 ;
/*set EXTI Interrupt no-masked for PB5*/
EXTI->IMR1 |= EXTI_IMR1_IM5 ;
}