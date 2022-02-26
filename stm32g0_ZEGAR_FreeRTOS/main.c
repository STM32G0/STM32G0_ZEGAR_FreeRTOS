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
#include "max7219_interface.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
//#define debug


static void prvSetupHardware(void);
/**** TASK pointer ****/
void vClockTask( void *pvParameters );
void vDisplayTask( void *pvParameters );
/**** SEMAPHORE pointer ****/
SemaphoreHandle_t xSemaphoreClockTask = NULL;

int main(void) {

	// Hardware configuration
	prvSetupHardware();
        
       	// Creating tasks
	 assert( xTaskCreate( vClockTask, "ClockTask", 128, NULL, 4 , NULL) == pdPASS); // assert create task control
         assert( xTaskCreate( vDisplayTask, "DisplayTask", 128, NULL, 4 , NULL) == pdPASS); // assert create task control
        
	// Start the scheduler
	vTaskStartScheduler(); // should never return
 
	// Will only get here if there was not enough heap space
 
	while(1);
 
	return 0;
}

static void prvSetupHardware(void)
{
	// It's place to hardware configuration
        SystemInit();
        SYSTEM_MANAGER_Initialize();
        mcp79410.InitRTCC();
        max7219.InitAllDevice();
        max7219.ClearAllDevice();
}


void vClockTask(void *pvParameters) {

struct mcp79410_time {
uint8_t HOUR;
uint8_t MIN; 
uint8_t SEC;
} mcp79410_time={0,0,0} ;

/* Attempt to create a semaphore. */
    xSemaphoreClockTask = xSemaphoreCreateBinary();
    assert(xSemaphoreClockTask != NULL); // assert create semaphore control
    
	for (;;) {
	
        if( xSemaphoreTake( xSemaphoreClockTask, portMAX_DELAY == pdTRUE ))
        {
                      
            #ifdef debug   
            printf("Hello vClockTask\n"); 
            #endif
            
            LED2_Toggle();
            mcp79410_time.SEC = mcp79410.getTime_SEC(); 
            mcp79410_time.MIN = mcp79410.getTime_MIN();   
            mcp79410_time.HOUR = mcp79410.getTime_HOUR();
            taskYIELD();
                                       
        }
        
		
	}
	
}


void vDisplayTask(void *pvParameters) {

struct mcp79410_time {
uint8_t HOUR;
uint8_t MIN; 
uint8_t SEC;
} mcp79410_time={0,0,0} ;

    
	for (;;) {
	
                        
            #ifdef debug   
            printf("Hello vDisplayTask\n"); 
            #endif
            
            LED1_Toggle();
            mcp79410_time.SEC = mcp79410.getTime_SEC(); 
            mcp79410_time.MIN = mcp79410.getTime_MIN();   
            mcp79410_time.HOUR = mcp79410.getTime_HOUR();
            taskYIELD();
                                       
             
		
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

 
 