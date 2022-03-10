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
  /* FreeRTOS APP support */
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
  /* zw³oka na ustabilizowanie siê zegarów / koniecznie musi byæ */
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
      if (xQueueClockTask != NULL) {// wysy³amy do kolejki dane (w strukturze) o czasie, pobrane z MCP79410, 
        xQueueSend(xQueueClockTask, (void *)&MCP79410_Time_ClockTask, (TickType_t)0); //Timeout = 0 - bez blokowania zadania
      }
    }
  }
}

void vDisplayTask(void *pvParameters) {

  time_t MCP79410_Time_DisplayTask = {0, 0, 0};
  uint8_t minute_segment_mask = 1;
  uint8_t hour_segment_mask = 2;

  for (;;) {

    if (xQueueReceive(xQueueClockTask, &MCP79410_Time_DisplayTask, portMAX_DELAY) == pdPASS) {// pobierz dane z kolejki jeœli s¹ dostêpne, zapisz je do struktury MCP79410_Time_DisplayTask
/* mcp79410_time now contains a copy of MCP79410_Time_DisplayTask  . */
#ifdef debug
      printf("Hello vDisplayTask\n");
#endif
      uint32_t notificationvalue = ulTaskNotifyTake(pdTRUE, 0); // Timeout = 0 - bez blokowania zadania

      /* display minutes*/

      max7219.SendToDevice(Device0, MAX7219_DIGIT0, (MCP79410_Time_DisplayTask.MIN & 0x0F));        // wyswietl cyfre jednosci
      max7219.SendToDevice(Device0, MAX7219_DIGIT1, ((MCP79410_Time_DisplayTask.MIN >> 4) & 0x0F)); // wyswietl cyfre dziesiatki

      if (notificationvalue & minute_segment_mask) { // migniêcie segmentem minut dla potrzeb sygnalizacji ustawiania czasu
        // wygaœ segmenty dla minut
        max7219.SendToDevice(Device0, MAX7219_DIGIT0, 0xF); // zgaœ cyfrê jednosci
        max7219.SendToDevice(Device0, MAX7219_DIGIT1, 0xF); // zgaœ cyfrê dziesiatki
      }

      /* display hour*/

      max7219.SendToDevice(Device0, MAX7219_DIGIT2, (MCP79410_Time_DisplayTask.HOUR & 0x0F) | kropka_int_flag); // wyswietl cyfre jednosci plus kropka
      max7219.SendToDevice(Device0, MAX7219_DIGIT3, ((MCP79410_Time_DisplayTask.HOUR >> 4) & 0x0F));            // wyswietl cyfre dziesiatki

      if (notificationvalue & hour_segment_mask) { // migniêcie segmentem godzin dla potrzeb sygnalizacji ustawiania czasu
        // wygaœ segmenty dla godzin
        max7219.SendToDevice(Device0, MAX7219_DIGIT2, 0xF); // zgaœ cyfrê jednosci
        max7219.SendToDevice(Device0, MAX7219_DIGIT3, 0xF); // zgaœ cyfrê dziesiatki
      }
    }
  }
}

void vTouchTask(void *pvParameters) {

static uint8_t touch_SELECT_counter = 0;
  
  for (;;) {

    if (touch_int_flag) {
        touch_int_flag = 0;   // zeruj flagê dotyku otrzyman¹ z przerwania EXTI4_15_IRQHandler
      
      if (cap1293.ReadRegister(CAP1293_SENSTATUS) & CAP1293_CS3_SELECT) { // dotyk pola CS3 "SELECT" ?
        xTaskNotify(xDisplayTaskHandle, ( 1 << touch_SELECT_counter++ ), eSetBits ); //wyœlij do xDisplayTask flagê, bit 1 lub bit 2 ustawiony
                                              
        if (touch_SELECT_counter > 1){
          touch_SELECT_counter = 0;
          }
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
    touch_int_flag = 1 ; //flaga wykorzystana w zadaniu vTouchTask
    EXTI->FPR1 |= EXTI_FPR1_FPIF4; // clear pending    
  }
}





