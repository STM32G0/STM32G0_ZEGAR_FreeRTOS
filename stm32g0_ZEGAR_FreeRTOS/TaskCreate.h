/*****************************************
File  : TaskCreate.h
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

/* TASK pointers */
extern void vClockTask(void *pvParameters);
extern void vDisplayTask(void *pvParameters);
extern void vTouchTask(void *pvParameters);
/* TASK Handles */
extern TaskHandle_t xClockTaskHandle ;
extern TaskHandle_t xDisplayTaskHandle ;
extern TaskHandle_t xTouchTaskHandle ;

void TaskCreate(void);