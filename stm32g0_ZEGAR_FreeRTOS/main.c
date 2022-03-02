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
#define debug


static void prvSetupHardware(void);
/**** TASK pointer ****/
void vClockTask( void *pvParameters );
void vDisplayTask( void *pvParameters );
/**** SEMAPHORE pointer ****/
SemaphoreHandle_t xSemaphoreClockTask = NULL;
/**** QUEUE pointer ****/
QueueHandle_t xQueueClockTask = NULL ;

typedef struct {
uint8_t HOUR;
uint8_t MIN; 
uint8_t SEC;
} time_t ;

int main(void) {

	// Hardware configuration
	prvSetupHardware();
        
       	// Creating tasks
	 assert( xTaskCreate( vClockTask, "ClockTask", 256, NULL, 4 , NULL) == pdPASS); // assert create task control
         assert( xTaskCreate( vDisplayTask, "DisplayTask", 256, NULL, 3 , NULL) == pdPASS); // assert create task control
        
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

time_t MCP79410_Time_ClockTask={0,0,0} ;

/* Attempt to create a queue. */
    xQueueClockTask = xQueueCreate( 2, sizeof( MCP79410_Time_ClockTask ) );
    assert(xQueueClockTask != NULL); // assert create queue control

/* Attempt to create a semaphore. */
    xSemaphoreClockTask = xSemaphoreCreateBinary();
    assert(xSemaphoreClockTask != NULL); // assert create semaphore control
    xSemaphoreGive( xSemaphoreClockTask ); //load the semaphore with a token
    
	for (;;) {
	
        if( xSemaphoreTake( xSemaphoreClockTask, portMAX_DELAY) == pdTRUE )
        {
                      
            #ifdef debug   
            printf("Hello vClockTask\n"); 
            #endif
            
            LED2_Toggle();
            /* sekcja krytyczna start ??? */
            MCP79410_Time_ClockTask.SEC = mcp79410.getTime_SEC(); 
            MCP79410_Time_ClockTask.MIN = mcp79410.getTime_MIN();   
            MCP79410_Time_ClockTask.HOUR = mcp79410.getTime_HOUR();
            /* sekcja krytyczna end ??? */
            if( xQueueClockTask != NULL ){
            xQueueSend( xQueueClockTask, ( void * ) &MCP79410_Time_ClockTask, ( TickType_t ) 0 );
            }
                                                   
        }
  		
	}
	
}


void vDisplayTask(void *pvParameters) {

time_t MCP79410_Time_DisplayTask={0,0,0} ;
uint8_t kropka_flags = 1 ; // clock Heart Beat 
    
	for (;;) {
	    
                    
           if(xQueueReceive( xQueueClockTask, & MCP79410_Time_DisplayTask, portMAX_DELAY) == pdPASS ){
                /* mcp79410_time now contains a copy of MCP79410_Time_DisplayTask  . */
                #ifdef debug   
                printf("Hello vDisplayTask\n"); 
                #endif             
                LED1_Toggle();

                /* display minutes*/
                max7219.SendToDevice(Device0, MAX7219_DIGIT0, (MCP79410_Time_DisplayTask.MIN & 0x0F)) ;       // wyswietl cyfre jednosci
                max7219.SendToDevice(Device0, MAX7219_DIGIT1, ((MCP79410_Time_DisplayTask.MIN >> 4)& 0x0F)) ; // wyswietl cyfre dziesiatki
              
                /* display hour*/
                if(kropka_flags){
                    max7219.SendToDevice(Device0, MAX7219_DIGIT2, (MCP79410_Time_DisplayTask.HOUR & 0x0F)|kropka) ;   // wyswietl cyfre jednosci plus kropka
                    kropka_flags = 0;
                }
                else {
                    max7219.SendToDevice(Device0, MAX7219_DIGIT2, (MCP79410_Time_DisplayTask.HOUR & 0x0F)) ;   // wyswietl cyfre jednosci bez kropki
                    kropka_flags = 1;
                }
                max7219.SendToDevice(Device0, MAX7219_DIGIT3, ((MCP79410_Time_DisplayTask.HOUR >> 4)& 0x0F)) ; // wyswietl cyfre dziesiatki
                
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

 
 