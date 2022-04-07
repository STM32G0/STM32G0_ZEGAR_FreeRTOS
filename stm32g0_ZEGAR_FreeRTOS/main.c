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
#include "ds18b20.h"

#define debug // Semihosting on/off

static void prvSetupHardware(void);
// uint8_t kropka_int_flag = 0 ;
/* Machine State for DS18B20 */


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
  /* The time delay for the clocks to stabilize / necessarily has to be */
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
/* semaphore returned in EXTI4_15_IRQHandler interrupt */
    if (xSemaphoreTake(xSemaphoreClockTask, portMAX_DELAY) == pdTRUE) {

#ifdef debug
      printf("Hello vClockTask\n");
#endif
     
      /* sekcja krytyczna start ??? */
      MCP79410_Time_ClockTask.SEC = mcp79410.getTime_SEC();
      MCP79410_Time_ClockTask.MIN = mcp79410.getTime_MIN();
      MCP79410_Time_ClockTask.HOUR = mcp79410.getTime_HOUR();
      /* sekcja krytyczna end ??? */
      if (xQueueClockTask != NULL) {//  send the data to the queue , the data is taken from the MCP79410, we pack the data into a structure
        xQueueSend(xQueueClockTask, (void *)&MCP79410_Time_ClockTask, (TickType_t)0); //Timeout = 0 - without blocking the task
      }
    }
  }
}

void vDisplayTask(void *pvParameters) {

  time_t MCP79410_Time_DisplayTask = {0, 0, 0};
  uint32_t minute_segment_mask = 1; // set bit no 0 (0...7)
  uint32_t hour_segment_mask = 2;   // set bit no 1 (0...7)
  uint32_t notificationvalue_0 = 0;
  uint32_t notificationvalue_1 = 0;
  uint16_t cyfra_dziesiatki ;       // auxiliary variable to extract the digit for displaying the temperature at the decimal position
  uint16_t cyfra_jednosci ;         // auxiliary variable to extract the digit for the temperature display at the unity position

  for (;;) {

    if (xQueueReceive(xQueueClockTask, &MCP79410_Time_DisplayTask, portMAX_DELAY) == pdPASS) { // get the data (time) from the queue if available, write it to the MCP79410_Time_DisplayTask structure
/* mcp79410_time now contains a copy of MCP79410_Time_DisplayTask  . */
#ifdef debug
      printf("Hello vDisplayTask\n");
#endif

      /* display minutes*/
      max7219.Display_MIN(MCP79410_Time_DisplayTask.MIN);   // display minutes
      /* display hour */
      max7219.Display_HOUR(MCP79410_Time_DisplayTask.HOUR); // display hour

/* Task Notify sent from vTouchTask to support signaling the time setting */

      if(xTaskNotifyWaitIndexed(0, // Wait for notification number 1
              0x00,                 // Don't clear any bits on entry.
              0xFFFFFFFF,           // Clear ALL bits on exit
              &notificationvalue_0, // Receives the notification value.
              (TickType_t)0))       // Timeout = 0 - without blocking the task
      {
        if (notificationvalue_0 & minute_segment_mask) { // toggle of the minutes segment for signalling the time setting
          /* wygas segmenty dla minut */
          max7219.ClearDisplay_MIN();
        }

        if (notificationvalue_0 & hour_segment_mask) { // toggle of the hour segment for signalling the time setting
          /* off segments for hours */
          max7219.ClearDisplay_HOUR();
        }
      }

      /* Task Notify from vTemperatureTask */
      /* Use the 1th notification */
      if (ulTaskNotifyTakeIndexed( 1,pdTRUE, (TickType_t)0) ) {
        
        if (DStemp_Calkowita >= 10 && DStemp_Calkowita < 100) //  digit in the tens position to display ? if yes then display , if no then display nothing
				{
      /* decimal and unity digit for temperature displayed before decimal point */
			cyfra_dziesiatki = (uint16_t) (DStemp_Calkowita / 10) % 10; // calculation of the decimal digit
			cyfra_jednosci = ((uint16_t) DStemp_Calkowita) % 10;        // calculation of the unity digit

			max7219.SendToDevice(Device1, MAX7219_DIGIT0, dec2bcd(cyfra_dziesiatki));
			max7219.SendToDevice(Device1, MAX7219_DIGIT1, dec2bcd(cyfra_jednosci | kropka)); // display a number and a dot

		}

		if (DStemp_Calkowita < 10 ) //  number in the units position to display ? if yes - then display , if no - display nothing
		{
			cyfra_jednosci = ((uint16_t) DStemp_Calkowita) % 10; // wyliczenie cyfry jednosci
			max7219.SendToDevice(Device1, MAX7219_DIGIT1, dec2bcd(cyfra_jednosci) | kropka); // display the digit for the unity value and a dot
			max7219.SendToDevice(Device1, MAX7219_DIGIT0, 0xF); // Turn off the display in the decimal position

		}

		/* Temperature display after decimal point (one digit) */

		max7219.SendToDevice(Device1,MAX7219_DIGIT2 ,dec2bcd(DStemp_Ulamek));
      }
    }
  }
}

void vTouchTask(void *pvParameters) {

  uint8_t touch_SELECT_counter = 0;
  uint32_t notificationvalue = 0;
  uint32_t tasknotify_mask = 1; // set bit no 0 (0...7)
  int8_t minuty = 0;            // when setting the time, we can set negative values
  int8_t godzina = 0;
  enum { selectMinute = 1, selectHour = 2 };

  for (;;) {
    /* Task Notify from intrrupt EXTI4_15_IRQHandler */
    xTaskNotifyWait(0x00,   /* Don't clear any bits on entry. */
        0x01,               /* Clear no 0 bits on exit */
        &notificationvalue, /* Receives the notification value. */
        portMAX_DELAY);     /* Block indefinitely. */

    if (notificationvalue & tasknotify_mask) { // Bit No. 0 of the TaskNotification is set ? . Bit Sent from EXTI4_15_IRQHandler interrupt
      cap1293.WriteRegister(CAP1293_MAIN, (cap1293.ReadRegister(CAP1293_MAIN) & ~CAP1293_MAIN_INT)); // clear main interrupt, must be at the beginning otherwise a change of context may cause a delay in clearing the flag

      /**************** Reakcja na dotyk pola CS3 - SELECT ***************/
      if (cap1293.ReadRegister(CAP1293_SENSTATUS) & CAP1293_CS3_SELECT) { // touch field CS3 "SELECT" ?

        if (touch_SELECT_counter > 1) {
          touch_SELECT_counter = 0;
        }
        xTaskNotifyIndexed(xDisplayTaskHandle, 0, (1 << touch_SELECT_counter++), eSetBits); // send to xDisplayTask flag, bit 0 or bit 1 set
      }

      /*************** Reakcja na dotyk pola CS2 - UP *******************/
      if (cap1293.ReadRegister(CAP1293_SENSTATUS) & CAP1293_CS2_UP) { // touch field CS2 "UP" ?
        switch (touch_SELECT_counter) {

        case selectMinute: // // set the minutes

          minuty = bcd2dec(mcp79410.getTime_MIN()); // Take an minutes from MCP79410 and decode from BCD to DEC
          minuty++;
          if (minuty > 59) {
            minuty = 0;
          }

          mcp79410.setTime_MIN(minuty); // ustaw minuty w MCP79410
          // zeruj sekundy w MCP79410 , zaimplementuj
          max7219.Display_MIN(dec2bcd(minuty)); // display minutes
                   
          break;

        case selectHour: // // set the hour

          godzina = bcd2dec(mcp79410.getTime_HOUR()); // Take an hour from MCP79410 and decode from BCD to DEC
          godzina++;
          if (godzina > 23) {
            godzina = 0;
          }
          mcp79410.setTime_HOUR(godzina); // set hour in MCP79410
          max7219.Display_HOUR(dec2bcd(godzina)); // display hour

          break;
        }
      }

      /******************* Response to field touch CS1 - DOWN ********************/
      if (cap1293.ReadRegister(CAP1293_SENSTATUS) & CAP1293_CS1_DOWN) { // touch field CS1 "DOWN" ?
        switch (touch_SELECT_counter) {
        case selectMinute:                          // set the minutes
          minuty = bcd2dec(mcp79410.getTime_MIN()); // Take an minutes from MCP79410 and decode from BCD to DEC
          minuty--;
          if (minuty < 0) {
            minuty = 59;
          }

          mcp79410.setTime_MIN(minuty); // set minutes in MCP79410
          // zeruj sekundy w MCP79410
          max7219.Display_MIN(dec2bcd(minuty)); // display minutes
          break;

        case selectHour:                              // set the hour
          godzina = bcd2dec(mcp79410.getTime_HOUR()); // Take an hour from MCP79410 and decode from BCD to DEC
          godzina--;
          if (godzina < 0) {
            godzina = 23;
          }
          mcp79410.setTime_HOUR(godzina);         // Set the hour time in the MCP79410
          max7219.Display_HOUR(dec2bcd(godzina)); // display hour
          break;
        }
      }

#ifdef debug
      printf("Hello vTouchTask\n");
#endif
    }
  }
}

void vTemperatureTask(void *pvParameters) {
  static bool flags = 0;

  for (;;) {

    if (flags == true) {
      taskENTER_CRITICAL();
      Temperature(GPIOC , 6); //PC6 Wire2
      taskEXIT_CRITICAL();
       
       xTaskNotifyGiveIndexed(xDisplayTaskHandle, 1); // semaphore for vDisplayTask - display temperature
       //if (DStemp_Znak ){}// jesli znak temperatury ujemny , zaimplementuj miganie co 1 s polem temperatury

       flags = 0; //trigger to toggle Convert/Read Temperature
    }

    if (flags == false) {
      taskENTER_CRITICAL();
      ConvertTemperature(GPIOC , 6); //PC6 Wire2
      taskEXIT_CRITICAL();
      
      flags = 1; //trigger to toggle Convert/Read Temperature
    }

#ifdef debug
    printf("Hello vTemperatureTask\n");
#endif
    vTaskDelay(4500 / portTICK_RATE_MS); // Temperature reading , every 2.5 seconds
  }
}

/*signal on PB5 pin generate IRQ*/
void EXTI4_15_IRQHandler(void) {
    
  /* Inerrupt from MCP79410 MFP - PB5 ? */

  if (EXTI->FPR1 & EXTI_FPR1_FPIF5) {
    EXTI->FPR1 |= EXTI_FPR1_FPIF5; // clear pending
    kropka_int_flag ^= kropka; // sterowania miganiem kropki co 1 sek zmiana stanu
    BaseType_t xHigherPriorityTaskClockWoken = pdFALSE;
    xSemaphoreGiveFromISR(xSemaphoreClockTask, &xHigherPriorityTaskClockWoken);
    /* If xHigherPriorityTaskWoken was set to true you
        we should yield.  The actual macro used here is
        port specific. */
    portYIELD_FROM_ISR(xHigherPriorityTaskClockWoken);
  }

  /* Inerrupt from CAP1293 ALERT - PB4 ? */

  if (EXTI->FPR1 & EXTI_FPR1_FPIF4) {
  EXTI->FPR1 |= EXTI_FPR1_FPIF4; // clear pending  
  BaseType_t xHigherPriorityTaskTouchWoken = pdFALSE;  
   
    xTaskNotifyFromISR(xTouchTaskHandle, ( 1 << 0 ), eSetBits, &xHigherPriorityTaskTouchWoken ); // send to xTouchTask bit 0 - value set 1
    /* If xHigherPriorityTaskWoken was set to true you
        we should yield.  The actual macro used here is
        port specific. */
    portYIELD_FROM_ISR(xHigherPriorityTaskTouchWoken);
  }
}



        
        