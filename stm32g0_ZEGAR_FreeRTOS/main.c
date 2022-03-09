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
#include "cap1293_interface.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "TaskCreate.h"
#include "SemaphoreCreate.h"
#include "QueueCreate.h"

#define debug // Semihosting on/off

static void prvSetupHardware(void);
volatile uint8_t touch_int_flag = 0 ;
volatile uint8_t kropka_int_flag = 0 ;	


int main(void) {
  /* FreeRTOS APP support create */
  TaskCreate();
  SemaphoreCreate();
  QueueCreate();

  /* Hardware configuration */
  prvSetupHardware();

  /* Start the scheduler */
  vTaskStartScheduler(); // should never return

  /* Will only get here if there was not enough heap space */

  while (1)

  return 0;
}

static void prvSetupHardware(void) {
  /* It's place to clock and memory configuration */
  SystemInit();
  /* zw�oka na ustabilizowanie si� zegar�w / koniecznie musi by� */
  for (uint32_t i = 0; i < 5000; i++) {asm("nop");}
  
  SYSTEM_MANAGER_Initialize();
  mcp79410.InitRTCC();
  max7219.InitAllDevice();
  max7219.ClearAllDevice();
  cap1293.Init();
}

void vClockTask(void *pvParameters) {

  time_t MCP79410_Time_ClockTask = {0, 0, 0};

  for (;;) {

    if (xSemaphoreTake(xSemaphoreClockTask, portMAX_DELAY) == pdTRUE) {

#ifdef debug
      printf("Hello vClockTask\n");
#endif

      // LED2_Toggle();
      /* sekcja krytyczna start ??? */
      MCP79410_Time_ClockTask.SEC = mcp79410.getTime_SEC();
      MCP79410_Time_ClockTask.MIN = mcp79410.getTime_MIN();
      MCP79410_Time_ClockTask.HOUR = mcp79410.getTime_HOUR();
      /* sekcja krytyczna end ??? */
      if (xQueueClockTask != NULL) {
        xQueueSend(xQueueClockTask, (void *)&MCP79410_Time_ClockTask, (TickType_t)0);
      }
    }
  }
}

void vDisplayTask(void *pvParameters) {

  time_t MCP79410_Time_DisplayTask = {0, 0, 0};

  for (;;) {

    if (xQueueReceive(xQueueClockTask, &MCP79410_Time_DisplayTask, portMAX_DELAY) == pdPASS) {
/* mcp79410_time now contains a copy of MCP79410_Time_DisplayTask  . */
#ifdef debug
      printf("Hello vDisplayTask\n");
#endif
       uint32_t notificationvalue = ulTaskNotifyTake( pdTRUE, 0 );
      /* display minutes*/

      max7219.SendToDevice(Device0, MAX7219_DIGIT0, (MCP79410_Time_DisplayTask.MIN & 0x0F));        // wyswietl cyfre jednosci
      max7219.SendToDevice(Device0, MAX7219_DIGIT1, ((MCP79410_Time_DisplayTask.MIN >> 4) & 0x0F)); // wyswietl cyfre dziesiatki
     
      if(notificationvalue & 0x02) {
        // wyga� segmenty dla minut
        max7219.SendToDevice(Device0, MAX7219_DIGIT0, 0xF); // zga� cyfr� jednosci
        max7219.SendToDevice(Device0, MAX7219_DIGIT1, 0xF); // zga� cyfr� dziesiatki
        
      }

      /* display hour*/

      max7219.SendToDevice(Device0, MAX7219_DIGIT2, (MCP79410_Time_DisplayTask.HOUR & 0x0F) | kropka_int_flag); // wyswietl cyfre jednosci plus kropka
      max7219.SendToDevice(Device0, MAX7219_DIGIT3, ((MCP79410_Time_DisplayTask.HOUR >> 4) & 0x0F));            // wyswietl cyfre dziesiatki
      
     // if (touch_SELECT_flag == 2) {
        // wyga� segmenty dla minut
     //   max7219.SendToDevice(Device0, MAX7219_DIGIT2, 0xF); // zga� cyfr� jednosci
      //  max7219.SendToDevice(Device0, MAX7219_DIGIT3, 0xF); // zga� cyfr� dziesiatki
        
     // }
    }
  }
}

void vTouchTask(void *pvParameters) {
static uint8_t touch_SELECT_flag = 0;
  for (;;) {

    if (touch_int_flag) {
      touch_int_flag = 0;                                                 // zeruj flag� dotyku
      if (cap1293.ReadRegister(CAP1293_SENSTATUS) & CAP1293_CS3_SELECT) { // dotyk pola CS3 "SELECT"
        xTaskNotify(xDisplayTaskHandle, ( 1UL << 1UL ), eSetBits );
        //touch_SELECT_flag++;                                              // ustaw flag� dla dotyku pola SELECT
       // if (touch_SELECT_flag > 2){
       //   touch_SELECT_flag = 0;
       //   }
      }

      cap1293.WriteRegister(CAP1293_MAIN, (cap1293.ReadRegister(CAP1293_MAIN) & ~CAP1293_MAIN_INT)); // clear main interrupt

#ifdef debug
      printf("Hello vTouchTask\n");
#endif
    }
  }
}

/*signal on PB5 pin generate IRQ*/
void EXTI4_15_IRQHandler(void) {
    
  /* Inerrupt from MCP79410 MFP - PB5 ? */

  if (EXTI->FPR1 & EXTI_FPR1_FPIF5) {
    EXTI->FPR1 |= EXTI_FPR1_FPIF5; // clear pending
    kropka_int_flag ^= kropka; // sterowania miganiem kropki co 1 sek zmiana stanu
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    xSemaphoreGiveFromISR(xSemaphoreClockTask, &xHigherPriorityTaskWoken);
    /* If xHigherPriorityTaskWoken was set to true you
        we should yield.  The actual macro used here is
        port specific. */
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
  }

  /* Inerrupt from CAP1293 ALERT - PB4 ? */

  if (EXTI->FPR1 & EXTI_FPR1_FPIF4) {
    EXTI->FPR1 |= EXTI_FPR1_FPIF4; // clear pending
    touch_int_flag = 1 ;
        
  }
}






// if(cap1293.read(CAP1293_SENSTATUS) == 1) GPIOA->ODR |= GPIO_ODR_OD8 ;  //dotyk pierwszego pola wykryty LED ON
// if(cap1293.read(CAP1293_SENSTATUS) == 2) GPIOA->ODR &= ~GPIO_ODR_OD8 ; //dotyk drugiego pola wykryty LED OFF