/*********************************************************************
*                    SEGGER Microcontroller GmbH                     *
*                        The Embedded Experts                        *
**********************************************************************
*                                                                    *
*            (c) 1995 - 2021 SEGGER Microcontroller GmbH             *
*                                                                    *
*       www.segger.com     Support: support@segger.com               *
*                                                                    *
**********************************************************************
*                                                                    *
*       SEGGER SystemView * Real-time application analysis           *
*                                                                    *
**********************************************************************
*                                                                    *
* All rights reserved.                                               *
*                                                                    *
* SEGGER strongly recommends to not make any changes                 *
* to or modify the source code of this software in order to stay     *
* compatible with the SystemView and RTT protocol, and J-Link.       *
*                                                                    *
* Redistribution and use in source and binary forms, with or         *
* without modification, are permitted provided that the following    *
* condition is met:                                                  *
*                                                                    *
* o Redistributions of source code must retain the above copyright   *
*   notice, this condition and the following disclaimer.             *
*                                                                    *
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND             *
* CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,        *
* INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF           *
* MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE           *
* DISCLAIMED. IN NO EVENT SHALL SEGGER Microcontroller BE LIABLE FOR *
* ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR           *
* CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT  *
* OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;    *
* OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF      *
* LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT          *
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE  *
* USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH   *
* DAMAGE.                                                            *
*                                                                    *
**********************************************************************
*                                                                    *
*       SystemView version: 3.30                                    *
*                                                                    *
**********************************************************************
-------------------------- END-OF-HEADER -----------------------------

File    : SEGGER_SYSVIEW_Config_FreeRTOS.c
Purpose : Sample setup configuration of SystemView with FreeRTOS.
Revision: $Rev: 7745 $
*/
#include <stm32g071xx.h>
#include "FreeRTOS.h"
#include "SEGGER_SYSVIEW.h"

extern const SEGGER_SYSVIEW_OS_API SYSVIEW_X_OS_TraceAPI;
volatile uint8_t InterruptTim3Flag = 0;

/*********************************************************************
*
*       Defines, configurable
*
**********************************************************************
*/
// The application name to be displayed in SystemViewer
#define SYSVIEW_APP_NAME        "MyClock Application"

// The target device name
#define SYSVIEW_DEVICE_NAME     "Cortex-M0"

// Frequency of the timestamp. Must match SEGGER_SYSVIEW_GET_TIMESTAMP in SEGGER_SYSVIEW_Conf.h
#define SYSVIEW_TIMESTAMP_FREQ  1000000

// System Frequency. SystemcoreClock is used in most CMSIS compatible projects.
#define SYSVIEW_CPU_FREQ        configCPU_CLOCK_HZ

// The lowest RAM address used for IDs (pointers)
#define SYSVIEW_RAM_BASE        (0x20000000)

/*
*
*       _cbSendSystemDesc()
*
*  Function description
*    Sends SystemView description strings.
*/
static void _cbSendSystemDesc(void) {
  SEGGER_SYSVIEW_SendSysDesc("N="SYSVIEW_APP_NAME",D="SYSVIEW_DEVICE_NAME",O=FreeRTOS");
  SEGGER_SYSVIEW_SendSysDesc("I#15=SysTick");
}

/*********************************************************************
*
*       Global functions
*
**********************************************************************
*/

/// [SYSVIEW_TIMESTAMP]

void TIM7_LPTIM2_IRQHandler(void)
{
    // Interrupt flag set?
    if((TIM7->SR & TIM_SR_UIF))
    {
           
        TIM7->SR &= ~(TIM_SR_UIF);    // clear pending
        InterruptTim3Flag = 1;
        // Increment counter
        SEGGER_SYSVIEW_TickCnt++;
    }
}

static void SEGGER_SYSVIEW_TimeStampInit(void)
{
  //  #warning "TIM3 peripheral is used for Segger SysView timestamping"
    // Enable TIM3 peripheral clock
    RCC->APBENR1 |= RCC_APBENR1_TIM7EN;  // Enable the timer3
    // Set prescaler to match timestamp frequency
    TIM7->PSC = 16-1;  // 16MHz/16 = 1 MHz ~~ 1 uS delay (FCY 16MHz)
    TIM7->ARR = 0xffff;  // MAX ARR value
    NVIC_SetPriority(TIM7_LPTIM2_IRQn, 1);
    NVIC_EnableIRQ(TIM7_LPTIM2_IRQn);
    // enable interrupt update
    TIM7->DIER |= TIM_DIER_UIE ;
    // Enable counter
    TIM7->CR1 |= TIM_CR1_CEN; // Enable the Counter
    TIM7->CNT = 0;
}

U32 SEGGER_SYSVIEW_X_GetTimestamp(void)
{
    U16 Counter;
    U16 TickCount;
    U32 TimeStamp;

    // If a timer interrupt is pending, adjust overflow counter
  //  if(InterruptTim3Flag)
 //   {
  //    InterruptTim3Flag = 0;
  //    SEGGER_SYSVIEW_TickCnt++;
 //   }
    // Read overflow counter
    TickCount = SEGGER_SYSVIEW_TickCnt;
    // Read timer counter
    Counter   = TIM3->CNT ;
    // Create combined 32-bit timestamp
    TimeStamp = (((U32)TickCount) << 16) | Counter;

    return TimeStamp;
}
/// [SYSVIEW_TIMESTAMP]

void SEGGER_SYSVIEW_Conf(void) {
  SEGGER_SYSVIEW_TimeStampInit();
  SEGGER_SYSVIEW_Init(SYSVIEW_TIMESTAMP_FREQ, SYSVIEW_CPU_FREQ, 
                      &SYSVIEW_X_OS_TraceAPI, _cbSendSystemDesc);
  SEGGER_SYSVIEW_SetRAMBase(SYSVIEW_RAM_BASE);
}

/*************************** End of file ****************************/


