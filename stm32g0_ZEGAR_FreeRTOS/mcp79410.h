/*****************************************
File  : mcp79410.h
Autor : strefapic.blogspot.com
MCU   : STM32G071KBT6
IDE   : SEGGER Embedded Studio
******************************************/

#include <stdint.h>


#ifndef MCP79410_H_
#define MCP79410_H_

void i2c_rtcc_wr(uint8_t registerAdress, uint8_t data);   // writes data to  the I2C RTCC   
void i2c_eeprom_wr(uint8_t registerAdress, uint8_t data); // writes data to  the I2C EEPROM  
uint8_t i2c_rtcc_rd(uint8_t registerAdress); //read data from the RTCC
void i2c_rtcc_ini(void); // initializes the I2C RTCC

extern uint8_t dec2bcd(uint8_t dec);
extern uint8_t bcd2dec(uint8_t bcd);

uint8_t get_YEAR(void);
uint8_t get_MONTH(void);
uint8_t get_DAY(void);
uint8_t get_HOUR(void);
uint8_t get_MIN(void);
uint8_t get_SEC(void);

void set_MIN(uint8_t minute);
void set_HOUR(uint8_t hour);

//                   GLOBAL CONSTANTS RTCC - REGISTERS ADDRESSES 
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     #define  ADDR_EEPROM_WRITE 0xae       //  DEVICE ADDR for EEPROM (writes)   
     #define  ADDR_EEPROM_READ  0xaf       //  DEVICE ADDR for EEPROM (reads)  
     #define  ADDR_RTCC_WRITE   0xde       //  DEVICE ADDR for RTCC MCHP  (writes) 
     #define  ADDR_RTCC_READ    0xdf       //  DEVICE ADDR for RTCC MCHP  (reads) 
//..............................................................................  
     #define  SRAM_PTR          0x20       //  pointer of the SRAM area (RTCC) 
     #define  ADDR_EEPROM_SR    0xff       //  STATUS REGISTER in the  EEPROM
//..............................................................................
     #define  ADDR_SEC          0x00       //  address of SECONDS      register 
     #define  ADDR_MIN          0x01       //  address of MINUTES      register 
     #define  ADDR_HOUR         0x02       //  address of HOURS        register 
     #define  ADDR_DAY          0x03       //  address of DAY OF WK    register 
     #define  ADDR_STAT         0x03       //  address of STATUS       register 
     #define  ADDR_DATE         0x04       //  address of DATE         register  
     #define  ADDR_MNTH         0x05       //  address of MONTH        register 
     #define  ADDR_YEAR         0x06       //  address of YEAR         register 
     #define  ADDR_CTRL         0x07       //  address of CONTROL      register 
     #define  ADDR_CAL          0x08       //  address of CALIB        register 
     #define  ADDR_ULID         0x09       //  address of UNLOCK ID    register
//..............................................................................
     #define  ADDR_ALM0SEC      0x0a       //  address of ALARM0 SEC   register 
     #define  ADDR_ALM0MIN      0x0b       //  address of ALARM0 MIN   register 
     #define  ADDR_ALM0HR       0x0c       //  address of ALARM0 HOUR  register 
     #define  ADDR_ALM0CTL      0x0d       //  address of ALARM0 CONTR register
     #define  ADDR_ALM0DAT      0x0e       //  address of ALARM0 DATE  register 
     #define  ADDR_ALM0MTH      0x0f       //  address of ALARM0 MONTH register 
//.............................................................................. 
     #define  ADDR_ALM1SEC      0x11       //  address of ALARM1 SEC   register 
     #define  ADDR_ALM1MIN      0x12       //  address of ALARM1 MIN   register 
     #define  ADDR_ALM1HR       0x13       //  address of ALARM1 HOUR  register 
     #define  ADDR_ALM1CTL      0x14       //  address of ALARM1 CONTR register
     #define  ADDR_ALM1DAT      0x15       //  address of ALARM1 DATE  register 
     #define  ADDR_ALM1MTH      0x16       //  address of ALARM1 MONTH register 
//..............................................................................       
     #define  ADDR_SAVtoBAT_MIN 0x18       //  address of T_SAVER MIN(VDD->BAT)
     #define  ADDR_SAVtoBAT_HR  0x19       //  address of T_SAVER HR (VDD->BAT) 
     #define  ADDR_SAVtoBAT_DAT 0x1a       //  address of T_SAVER DAT(VDD->BAT) 
     #define  ADDR_SAVtoBAT_MTH 0x1b       //  address of T_SAVER MTH(VDD->BAT) 
//..............................................................................
     #define  ADDR_SAVtoVDD_MIN 0x1c       //  address of T_SAVER MIN(BAT->VDD)
     #define  ADDR_SAVtoVDD_HR  0x1d       //  address of T_SAVER HR (BAT->VDD) 
     #define  ADDR_SAVtoVDD_DAT 0x1e       //  address of T_SAVER DAT(BAT->VDD) 
     #define  ADDR_SAVtoVDD_MTH 0x1f       //  address of T_SAVER MTH(BAT->VDD)        
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//                  GLOBAL CONSTANTS RTCC - INITIALIZATION 
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     #define  PM                0x20       //  post-meridian bit (ADDR_HOUR) 
     #define  OUT_PIN           0x80       //  = b7 (ADDR_CTRL) 
     #define  SQWE              0x40       //  SQWE = b6 (ADDR_CTRL) 
     #define  ALM_NO            0x00       //  no alarm activated        (ADDR_CTRL) 
     #define  ALM_0             0x10       //  ALARM0 is       activated (ADDR_CTRL)
     #define  ALM_1             0x20       //  ALARM1 is       activated (ADDR_CTRL)
     #define  ALM_01            0x30       //  both alarms are activated (ADDR_CTRL)
     #define  MFP_01H           0x00       //  MFP = SQVAW(01 HERZ)      (ADDR_CTRL)  
     #define  MFP_04K           0x01       //  MFP = SQVAW(04 KHZ)       (ADDR_CTRL)  
     #define  MFP_08K           0x02       //  MFP = SQVAW(08 KHZ)       (ADDR_CTRL)  
     #define  MFP_32K           0x03       //  MFP = SQVAW(32 KHZ)       (ADDR_CTRL)  
     #define  MFP_64H           0x04       //  MFP = SQVAW(64 HERZ)      (ADDR_CTRL)
     #define  ALMx_POL          0x80       //  polarity of MFP on alarm  (ADDR_ALMxCTL)   
     #define  ALMxC_SEC         0x00       //  ALARM compare on SEC      (ADDR_ALMxCTL)              
     #define  ALMxC_MIN         0x10       //  ALARM compare on MIN      (ADDR_ALMxCTL)   
     #define  ALMxC_HR          0x20       //  ALARM compare on HOUR     (ADDR_ALMxCTL)   
     #define  ALMxC_DAY         0x30       //  ALARM compare on DAY      (ADDR_ALMxCTL)   
     #define  ALMxC_DAT         0x40       //  ALARM compare on DATE     (ADDR_ALMxCTL)   
     #define  ALMxC_ALL         0x70       //  ALARM compare on all param(ADDR_ALMxCTL)    
     #define  ALMx_IF           0x08       //  MASK of the ALARM_IF      (ADDR_ALMxCTL)
     #define  OSCON             0x20       //  state of the oscillator(running or not)
     #define  VBATEN            0x08       //  enable battery for back-up  
     #define  START_32KHZ       0x80       //  start crystal: ST = b7 (ADDR_SEC)
     #define  LP                0x20       //  mask for the leap year bit(MONTH REG)   
     #define  HOUR_12           0x40       //  12 hours format   (ADDR_HOUR)

#endif /* MCP79410_H_ */
