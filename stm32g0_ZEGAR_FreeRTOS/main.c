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
  /* zwoka na ustabilizowanie sie zegarow / koniecznie musi by */
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
/* semafor oddawany w przerwaniu EXTI4_15_IRQHandler*/
    if (xSemaphoreTake(xSemaphoreClockTask, portMAX_DELAY) == pdTRUE) {

#ifdef debug
      printf("Hello vClockTask\n");
#endif
     
      /* sekcja krytyczna start ??? */
      MCP79410_Time_ClockTask.SEC = mcp79410.getTime_SEC();
      MCP79410_Time_ClockTask.MIN = mcp79410.getTime_MIN();
      MCP79410_Time_ClockTask.HOUR = mcp79410.getTime_HOUR();
      /* sekcja krytyczna end ??? */
      if (xQueueClockTask != NULL) {// wysylamy do kolejki dane (struktura) o czasie, pobrane z MCP79410, 
        xQueueSend(xQueueClockTask, (void *)&MCP79410_Time_ClockTask, (TickType_t)0); //Timeout = 0 - bez blokowania zadania
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
  uint16_t cyfra_dziesiatki ;       // zmienna pomocnicza celem wydobycia cyfry do wyswietlania temperatury na pozycji dziesistek
  uint16_t cyfra_jednosci ;         // zmienna pomocnicza celem wydobycia cyfry do wyswietlania temperatury na pozycji jednosci

  for (;;) {

    if (xQueueReceive(xQueueClockTask, &MCP79410_Time_DisplayTask, portMAX_DELAY) == pdPASS) { // pobierz dane (czas) z kolejki jeli s dostpne, zapisz je do struktury MCP79410_Time_DisplayTask
/* mcp79410_time now contains a copy of MCP79410_Time_DisplayTask  . */
#ifdef debug
      printf("Hello vDisplayTask\n");
#endif

      /* display minutes*/
      max7219.Display_MIN(MCP79410_Time_DisplayTask.MIN);   // display minutes
      /* display hour */
      max7219.Display_HOUR(MCP79410_Time_DisplayTask.HOUR); // display hour

/* Task Notify nadawany z zadania vTouchTask do obslugi sygnalizacji ustawiania czasu*/

      if(xTaskNotifyWaitIndexed(0, // Wait for notification number 1
              0x00,                 // Don't clear any bits on entry.
              0xFFFFFFFF,           // Clear ALL bits on exit
              &notificationvalue_0, // Receives the notification value.
              (TickType_t)0))       // Timeout = 0 - bez blokowania zadania
      {
        if (notificationvalue_0 & minute_segment_mask) { // mignicie segmentem minut, dla potrzeb sygnalizacji ustawiania czasu
          /* wygas segmenty dla minut */
          max7219.ClearDisplay_MIN();
        }

        if (notificationvalue_0 & hour_segment_mask) { // mignicie segmentem godzin, dla potrzeb sygnalizacji ustawiania czasu
          /* wygas segmenty dla godzin */
          max7219.ClearDisplay_HOUR();
        }
      }

      /* Task Notify from vTemperatureTask */
      /* Use the 1th notification */
      if (ulTaskNotifyTakeIndexed( 1,pdTRUE, (TickType_t)0) ) {
        
        if (DStemp_Calkowita >= 10 && DStemp_Calkowita < 100) // czy jest cyfra na pozycji dziesiatek do wyswietlania jesli tak to wyswietl jesli nie to nic nie wyswietlaj
				{
      /* wyodrebnienie cyfry dziesiatek i jednosci dla temperatury wyswietlanej przed przecinkiem */
			cyfra_dziesiatki = (uint16_t) (DStemp_Calkowita / 10) % 10; // wyliczenie cyfry dziesiatek
			cyfra_jednosci = ((uint16_t) DStemp_Calkowita) % 10;        // wyliczenie cyfry jednosci

			max7219.SendToDevice(Device1, MAX7219_DIGIT0, dec2bcd(cyfra_dziesiatki));
			max7219.SendToDevice(Device1, MAX7219_DIGIT1, dec2bcd(cyfra_jednosci | kropka)); // wyswietl cyfre i kropke

		}

		if (DStemp_Calkowita < 10 ) // czy jest cyfra na pozycji jednostek do wyswietlania jesli tak to wyswietl jesli nie to nic nie wyswietlaj
		{
			cyfra_jednosci = ((uint16_t) DStemp_Calkowita) % 10; // wyliczenie cyfry jednosci
			max7219.SendToDevice(Device1, MAX7219_DIGIT1, dec2bcd(cyfra_jednosci) | kropka); // wyswietl cyfre dla jednosci
			max7219.SendToDevice(Device1, MAX7219_DIGIT0, 0xF); // wygas wyswietlacz na pozycji dziesiastek

		}

		/* wyswietlanie temperatury  po przecinku (jedna cyfra) */

		max7219.SendToDevice(Device1,MAX7219_DIGIT2 ,dec2bcd(DStemp_Ulamek));
      }
    }
  }
}

void vTouchTask(void *pvParameters) {

  uint8_t touch_SELECT_counter = 0;
  uint32_t notificationvalue = 0;
  uint32_t tasknotify_mask = 1; // set bit no 0 (0...7)
  int8_t minuty = 0;            // przy ustawianiu czasu schodzimy na wartosci ujemne
  int8_t godzina = 0;
  enum { selectMinute = 1, selectHour = 2 };

  for (;;) {
    /* Task Notify from intrrupt EXTI4_15_IRQHandler */
    xTaskNotifyWait(0x00,   /* Don't clear any bits on entry. */
        0x01,               /* Clear no 0 bits on exit */
        &notificationvalue, /* Receives the notification value. */
        portMAX_DELAY);     /* Block indefinitely. */

    if (notificationvalue & tasknotify_mask) { // czy bit nr 0 TaskNotification wysłany z przerwania EXTI4_15_IRQHandler jest ustawiony
      cap1293.WriteRegister(CAP1293_MAIN, (cap1293.ReadRegister(CAP1293_MAIN) & ~CAP1293_MAIN_INT)); // clear main interrupt, musi byc na poczatku inaczej zmiana kontekstu moze spowodowac opoznienie kasowania flagi

      /**************** Reakcja na dotyk pola CS3 - SELECT ***************/
      if (cap1293.ReadRegister(CAP1293_SENSTATUS) & CAP1293_CS3_SELECT) { // dotyk pola CS3 "SELECT" ?

        if (touch_SELECT_counter > 1) {
          touch_SELECT_counter = 0;
        }
        xTaskNotifyIndexed(xDisplayTaskHandle, 0, (1 << touch_SELECT_counter++), eSetBits); // wyslij do xDisplayTask flag, bit 0 lub bit 1 ustawiony
      }

      /*************** Reakcja na dotyk pola CS2 - UP *******************/
      if (cap1293.ReadRegister(CAP1293_SENSTATUS) & CAP1293_CS2_UP) { // dotyk pola CS2 "UP" ?
        switch (touch_SELECT_counter) {

        case selectMinute: // zmieniamy minuty

          minuty = bcd2dec(mcp79410.getTime_MIN()); // pobierz minuty z MCP79410 i zdekoduj z BCD na DEC
          minuty++;
          if (minuty > 59) {
            minuty = 0;
          }

          mcp79410.setTime_MIN(minuty); // ustaw minuty w MCP79410
          // zeruj sekundy w MCP79410
          max7219.Display_MIN(dec2bcd(minuty)); // display minutes
                   
          break;

        case selectHour: // zmieniamy godziny

          godzina = bcd2dec(mcp79410.getTime_HOUR()); // pobierz godzine z MCP79410 i zdekoduj z BCD na DEC
          godzina++;
          if (godzina > 23) {
            godzina = 0;
          }
          mcp79410.setTime_HOUR(godzina); // ustaw godzine w MCP79410
          // wyslij do kolejki xQueueClockTask godzine
          max7219.Display_HOUR(dec2bcd(godzina)); // display hour

          break;
        }
      }

      /******************* Reakcja na dotyk pola CS1 - DOWN ********************/
      if (cap1293.ReadRegister(CAP1293_SENSTATUS) & CAP1293_CS1_DOWN) { // dotyk pola CS1 "DOWN" ?
        switch (touch_SELECT_counter) {
        case selectMinute:                          // zmieniamy minuty
          minuty = bcd2dec(mcp79410.getTime_MIN()); // pobierz minuty z MCP79410 i zdekoduj z BCD na DEC
          minuty--;
          if (minuty < 0) {
            minuty = 59;
          }

          mcp79410.setTime_MIN(minuty); // ustaw minuty w MCP79410
          // zeruj sekundy w MCP79410
          max7219.Display_MIN(dec2bcd(minuty)); // display minutes
          break;

        case selectHour:                              // zmieniamy godziny
          godzina = bcd2dec(mcp79410.getTime_HOUR()); // pobierz godzine z MCP79410 i zdekoduj z BCD na DEC
          godzina--;
          if (godzina < 0) {
            godzina = 23;
          }
          mcp79410.setTime_HOUR(godzina);         // ustaw godzine w MCP79410
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
      
      temperatura();
       
       xTaskNotifyGiveIndexed(xDisplayTaskHandle, 1); // semafor dla vDisplayTask - wyswietlanie temperatury
       //if (DStemp_Znak ){}// jesli znak temperatury ujemny , zaimplementuj miganie co 1 s polem temperatury

       flags = 0; //triger do przelaczania Convert/Read Temperature
    }

    if (flags == false) {
      
      ConvertTemperature();
      
      flags = 1; //triger do przelaczania Convert/Read Temperature
    }

#ifdef debug
    printf("Hello vTemperatureTask\n");
#endif
    vTaskDelay(4500 / portTICK_RATE_MS); // co 2.5 s bedziemy odczytywac temperature
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
   
    xTaskNotifyFromISR(xTouchTaskHandle, ( 1 << 0 ), eSetBits, &xHigherPriorityTaskTouchWoken ); // wyślij do xTouchTask ustawiony bit 0 czyli warotsc 1
    /* If xHigherPriorityTaskWoken was set to true you
        we should yield.  The actual macro used here is
        port specific. */
    portYIELD_FROM_ISR(xHigherPriorityTaskTouchWoken);
  }
}



        
        