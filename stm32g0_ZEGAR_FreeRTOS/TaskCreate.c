/*****************************************
File  : TaskCreate.c
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
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "TaskCreate.h"


/* TASK Handle */
 TaskHandle_t xClockTaskHandle = NULL;
 TaskHandle_t xDisplayTaskHandle = NULL;
 TaskHandle_t xTouchTaskHandle = NULL;

void TaskCreate(void){
/* Task Create */
assert(xTaskCreate(vClockTask, "ClockTask", 256, NULL, 4, &xClockTaskHandle) == pdPASS);     // assert create task control
assert(xTaskCreate(vDisplayTask, "DisplayTask", 256, NULL, 3, &xDisplayTaskHandle) == pdPASS); 
assert(xTaskCreate(vTouchTask, "TouchTask", 256, NULL, 3, &xTouchTaskHandle) == pdPASS); 

}