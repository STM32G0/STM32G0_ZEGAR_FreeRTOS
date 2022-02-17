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
//#define NDEBUG // activate if not use Assert control, before #include <assert>
#include <assert.h>
#include "system_config.h"
#include "mcp79410_interface.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

static void prvSetupHardware(void);
void vClockTask( void *pvParameters );
SemaphoreHandle_t xSemaphoreClockTask;

int main(void) {

	// Hardware configuration
	prvSetupHardware();
         
	// Creating tasks
	 assert( xTaskCreate( vClockTask, "ClockTask", 128, NULL, 4 , NULL ) == pdPASS); // assert create task control
        
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
/* Attempt to create a semaphore. */
    xSemaphoreClockTask = xSemaphoreCreateBinary();
    assert(xSemaphoreClockTask != NULL); // assert create semaphore control
    
	for (;;) {
	/* See if we can obtain the semaphore.  If the semaphore is not
        available wait 10 ticks to see if it becomes free. */
        if( xSemaphoreTake( xSemaphoreClockTask, portMAX_DELAY == pdTRUE ))
        {
            /* We were able to obtain the semaphore and can now access the
            shared resource. */    
            LED2_Toggle();        
        }
        
		
	}

	
}

/*signal on PB5 pin generate IRQ*/
void EXTI4_15_IRQHandler(void){
BaseType_t xHigherPriorityTaskWoken = pdFALSE;
if(EXTI->FPR1 & EXTI_FPR1_FPIF5){
EXTI->FPR1 |= EXTI_FPR1_FPIF5; //clear pending
xSemaphoreGiveFromISR( xSemaphoreClockTask, &xHigherPriorityTaskWoken );
/* If xHigherPriorityTaskWoken was set to true you
    we should yield.  The actual macro used here is
    port specific. */
portYIELD_FROM_ISR( xHigherPriorityTaskWoken );
}
}

 
 