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
#include "system_config.h"
#include "mcp79410_interface.h"

#include "FreeRTOS.h"
#include "task.h"

static void prvSetupHardware(void);
void vLEDTask( void *pvParameters );

int main(void) {

	// Hardware configuration
	prvSetupHardware();
 
	// Creating tasks
	xTaskCreate( vLEDTask, "LEDTask", 100, NULL, 1, NULL );
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
}


void vLEDTask(void *pvParameters) {

	for (;;) {

		GPIOA->ODR ^= GPIO_ODR_OD8 ; //LED - PA8 toggle
		vTaskDelay(500);
	}

	vTaskDelete(NULL);
}