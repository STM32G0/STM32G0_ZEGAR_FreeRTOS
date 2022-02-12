/*****************************************
File  : main.c
Autor : strefapic.blogspot.com
MCU   : STM32G071KBT6
IDE   : SEGGER Embedded Studio
******************************************/
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stm32g071xx.h>
#include <stdbool.h>
#include <assert.h>
#include "system_config.h"
#include "mcp79410_interface.h"

#include "FreeRTOS.h"
#include "task.h"

//#define NDEBUG // activate if not use Assert control

volatile bool intFlag = 0;
static void prvSetupHardware(void);
void vClockTask( void *pvParameters );


int main(void) {

	// Hardware configuration
	prvSetupHardware();
 
	// Creating tasks
	assert( xTaskCreate( vClockTask, "ClockTask", 100, NULL, 4 , NULL ) == pdPASS); //Assert create task control
	// ..
    
	// Start the scheduler
	vTaskStartScheduler(); // should never return
 
	// Will only get here if there was not enough heap space
 
	while(1);
 
	return 0;
}

static void prvSetupHardware(void)
{
	// It's place to hardware configuration, like e.g. clock external source
        SystemInit();
        SYSTEM_MANAGER_Initialize();
        mcp79410.InitRTCC();
}


void vClockTask(void *pvParameters) {

	for (;;) {

		
		vTaskDelay(500);
	}

	vTaskDelete(NULL);
}


void EXTI4_15_IRQHandler(void){
intFlag = 1;
if(EXTI->FPR1 & EXTI_FPR1_FPIF5)
EXTI->FPR1 |= EXTI_FPR1_FPIF5; //clear pending
LED2_Toggle();
}

 
 