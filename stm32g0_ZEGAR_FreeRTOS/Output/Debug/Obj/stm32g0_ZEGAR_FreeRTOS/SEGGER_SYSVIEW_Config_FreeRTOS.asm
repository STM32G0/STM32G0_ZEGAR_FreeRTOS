	.cpu cortex-m0plus
	.arch armv6s-m
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 38, 1
	.eabi_attribute 18, 4
	.file	"SEGGER_SYSVIEW_Config_FreeRTOS.c"
	.text
.Ltext0:
	.section .rodata
	.align	2
.LC0:
	.ascii	"N=FreeRTOS Clock APP,D=STM32G071,O=FreeRTOS\000"
	.align	2
.LC2:
	.ascii	"I#15=SysTick\000"
	.section	.text._cbSendSystemDesc,"ax",%progbits
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	_cbSendSystemDesc, %function
_cbSendSystemDesc:
.LFB0:
	.file 1 "C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\\SEGGER_SYSVIEW_Config_FreeRTOS.c"
	.loc 1 87 37
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI0:
	.loc 1 88 3
	ldr	r3, .L2
	movs	r0, r3
	bl	SEGGER_SYSVIEW_SendSysDesc
	.loc 1 89 3
	ldr	r3, .L2+4
	movs	r0, r3
	bl	SEGGER_SYSVIEW_SendSysDesc
	.loc 1 90 1
	nop
	@ sp needed
	pop	{r4, pc}
.L3:
	.align	2
.L2:
	.word	.LC0
	.word	.LC2
.LFE0:
	.size	_cbSendSystemDesc, .-_cbSendSystemDesc
	.section	.text.SEGGER_SYSVIEW_Conf,"ax",%progbits
	.align	1
	.global	SEGGER_SYSVIEW_Conf
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_SYSVIEW_Conf, %function
SEGGER_SYSVIEW_Conf:
.LFB1:
	.loc 1 98 32
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI1:
	.loc 1 99 3
	ldr	r3, .L5
	ldr	r2, .L5+4
	ldr	r1, .L5+8
	ldr	r0, .L5+8
	bl	SEGGER_SYSVIEW_Init
	.loc 1 101 3
	movs	r3, #128
	lsls	r3, r3, #22
	movs	r0, r3
	bl	SEGGER_SYSVIEW_SetRAMBase
	.loc 1 102 1
	nop
	@ sp needed
	pop	{r4, pc}
.L6:
	.align	2
.L5:
	.word	_cbSendSystemDesc
	.word	SYSVIEW_X_OS_TraceAPI
	.word	16000000
.LFE1:
	.size	SEGGER_SYSVIEW_Conf, .-SEGGER_SYSVIEW_Conf
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
	.text
.Letext0:
	.file 2 "./SEGGER_SYSVIEW.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xea
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1309
	.byte	0xc
	.4byte	.LASF1310
	.4byte	.LASF1311
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1297
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1298
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1299
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1300
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1301
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1302
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1303
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1304
	.uleb128 0x4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x68
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1305
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1306
	.uleb128 0x6
	.byte	0x8
	.byte	0x2
	.byte	0xee
	.byte	0x9
	.4byte	0xa1
	.uleb128 0x7
	.4byte	.LASF1307
	.byte	0x2
	.byte	0xef
	.byte	0xa
	.4byte	0xa6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1308
	.byte	0x2
	.byte	0xf0
	.byte	0xa
	.4byte	0x69
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	0x61
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa1
	.uleb128 0x9
	.4byte	.LASF1312
	.byte	0x2
	.byte	0xf1
	.byte	0x3
	.4byte	0x7d
	.uleb128 0xa
	.4byte	0xac
	.uleb128 0xb
	.4byte	.LASF1313
	.byte	0x1
	.byte	0x39
	.byte	0x24
	.4byte	0xb8
	.uleb128 0xc
	.4byte	.LASF1314
	.byte	0x1
	.byte	0x62
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF1315
	.byte	0x1
	.byte	0x57
	.byte	0xd
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x2134
	.uleb128 0x19
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xee
	.4byte	0xc9
	.ascii	"SEGGER_SYSVIEW_Conf\000"
	.4byte	0xdb
	.ascii	"_cbSendSystemDesc\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0xe1
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xee
	.4byte	0x29
	.ascii	"char\000"
	.4byte	0x30
	.ascii	"unsigned int\000"
	.4byte	0x37
	.ascii	"int\000"
	.4byte	0x3e
	.ascii	"signed char\000"
	.4byte	0x45
	.ascii	"unsigned char\000"
	.4byte	0x4c
	.ascii	"short int\000"
	.4byte	0x53
	.ascii	"short unsigned int\000"
	.4byte	0x5a
	.ascii	"long long int\000"
	.4byte	0x61
	.ascii	"long long unsigned int\000"
	.4byte	0x6f
	.ascii	"long unsigned int\000"
	.4byte	0x76
	.ascii	"long int\000"
	.4byte	0xac
	.ascii	"SEGGER_SYSVIEW_OS_API\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 3 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/include/FreeRTOS.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF460
	.file 4 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/stddef.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x4
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF461
	.file 5 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF462
	.file 6 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL_ConfDefaults.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF463
	.file 7 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL_Conf.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x7
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF464
	.file 8 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL_Arm_Conf.h"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x8
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.file 9 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/stdint.h"
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 10 "./FreeRTOSConfig.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0xa
	.byte	0x7
	.4byte	.Ldebug_macro8
	.file 11 "./SEGGER_SYSVIEW_FreeRTOS.h"
	.byte	0x3
	.uleb128 0x51
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF734
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF735
	.file 12 "./SEGGER.h"
	.byte	0x3
	.uleb128 0x40
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF736
	.file 13 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/stdarg.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 14 "./Global.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.file 15 "./SEGGER_SYSVIEW_ConfDefaults.h"
	.byte	0x3
	.uleb128 0x41
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF768
	.file 16 "./SEGGER_SYSVIEW_Conf.h"
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x4
	.file 17 "./SEGGER_RTT_Conf.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x11
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro17
	.byte	0x4
	.file 18 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/include/projdefs.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x12
	.byte	0x7
	.4byte	.Ldebug_macro18
	.byte	0x4
	.file 19 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/include/portable.h"
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1111
	.file 20 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/include/deprecated_definitions.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x14
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1112
	.byte	0x4
	.file 21 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/portable/GCC/ARM_CM0/portmacro.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x15
	.byte	0x7
	.4byte	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro20
	.file 22 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/include/mpu_wrappers.h"
	.byte	0x3
	.uleb128 0x63
	.uleb128 0x16
	.byte	0x7
	.4byte	.Ldebug_macro21
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro22
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro23
	.byte	0x4
	.file 23 "C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\\SEGGER_SYSVIEW.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1292
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF1293
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF1294
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF1295
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF1296
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.0.105cc3d1c41f319228ddd657b99ac4b1,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0
	.4byte	.LASF387
	.byte	0x6
	.uleb128 0
	.4byte	.LASF388
	.byte	0x6
	.uleb128 0
	.4byte	.LASF389
	.byte	0x6
	.uleb128 0
	.4byte	.LASF390
	.byte	0x6
	.uleb128 0
	.4byte	.LASF391
	.byte	0x6
	.uleb128 0
	.4byte	.LASF392
	.byte	0x6
	.uleb128 0
	.4byte	.LASF393
	.byte	0x6
	.uleb128 0
	.4byte	.LASF394
	.byte	0x6
	.uleb128 0
	.4byte	.LASF395
	.byte	0x6
	.uleb128 0
	.4byte	.LASF396
	.byte	0x6
	.uleb128 0
	.4byte	.LASF397
	.byte	0x6
	.uleb128 0
	.4byte	.LASF398
	.byte	0x6
	.uleb128 0
	.4byte	.LASF399
	.byte	0x6
	.uleb128 0
	.4byte	.LASF400
	.byte	0x6
	.uleb128 0
	.4byte	.LASF401
	.byte	0x6
	.uleb128 0
	.4byte	.LASF402
	.byte	0x6
	.uleb128 0
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0
	.4byte	.LASF405
	.byte	0x6
	.uleb128 0
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0
	.4byte	.LASF408
	.byte	0x6
	.uleb128 0
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0
	.4byte	.LASF411
	.byte	0x6
	.uleb128 0
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0
	.4byte	.LASF413
	.byte	0x6
	.uleb128 0
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0
	.4byte	.LASF415
	.byte	0x6
	.uleb128 0
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0
	.4byte	.LASF420
	.byte	0x6
	.uleb128 0
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0
	.4byte	.LASF422
	.byte	0x6
	.uleb128 0
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0
	.4byte	.LASF424
	.byte	0x6
	.uleb128 0
	.4byte	.LASF425
	.byte	0x6
	.uleb128 0
	.4byte	.LASF426
	.byte	0x6
	.uleb128 0
	.4byte	.LASF427
	.byte	0x6
	.uleb128 0
	.4byte	.LASF428
	.byte	0x6
	.uleb128 0
	.4byte	.LASF429
	.byte	0x6
	.uleb128 0
	.4byte	.LASF430
	.byte	0x6
	.uleb128 0
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0
	.4byte	.LASF435
	.byte	0x6
	.uleb128 0
	.4byte	.LASF436
	.byte	0x6
	.uleb128 0
	.4byte	.LASF437
	.byte	0x6
	.uleb128 0
	.4byte	.LASF438
	.byte	0x6
	.uleb128 0
	.4byte	.LASF439
	.byte	0x6
	.uleb128 0
	.4byte	.LASF440
	.byte	0x6
	.uleb128 0
	.4byte	.LASF441
	.byte	0x6
	.uleb128 0
	.4byte	.LASF442
	.byte	0x6
	.uleb128 0
	.4byte	.LASF443
	.byte	0x6
	.uleb128 0
	.4byte	.LASF444
	.byte	0x6
	.uleb128 0
	.4byte	.LASF445
	.byte	0x6
	.uleb128 0
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0
	.4byte	.LASF459
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__SEGGER_RTL_Arm_Conf.h.11.4abb486941b74ccc31843e0fca691688,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF478
	.byte	0x6
	.uleb128 0x8c
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF478
	.byte	0x6
	.uleb128 0x8e
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x18d
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x1c2
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x1c8
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x1ce
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x1d4
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x1da
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x1e0
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x1f0
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x1f6
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x1fa
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x202
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x206
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x20e
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x213
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x218
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x220
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x223
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x226
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x22b
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x232
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x238
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x23d
	.4byte	.LASF513
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__SEGGER_RTL_ConfDefaults.h.22.072831664575e960e3c89d78f8bd94fa,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF560
	.byte	0x6
	.uleb128 0xec
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF556
	.byte	0x6
	.uleb128 0xee
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x15c
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x165
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x166
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x174
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x175
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x179
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x17a
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x17e
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x17f
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x187
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x18b
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x19f
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x1a3
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x1a7
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x1ab
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x1b3
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x1b4
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x1b8
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x1b9
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x1c1
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x1c5
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x1c9
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x1cc
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x1cf
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x1d2
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x1d5
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x1e9
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x1ed
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x1f1
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x1f5
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x205
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x20a
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x20f
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x210
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x21b
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x21f
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x223
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x227
	.4byte	.LASF615
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__SEGGER_RTL.h.26.f406f75783d15e336f30c2db966d0a32,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF619
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stddef.h.38.f3065a18e73b1043abf396099d5a1af0,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF623
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.11.41cebd920198fcae1efc8eda76700dbd,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF683
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.FreeRTOSConfig.h.2.2a234e6379b1e94bec7e8858d200afbf,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF733
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdarg.h.11.84fa830bbe03e4ac948222432ea194d1,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF741
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.Global.h.60.e823335b4dd00dab0a94922e6cdc8d9d,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF752
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.SEGGER.h.89.2e47e8a10eab94562fd6825dd4968e11,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF767
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.SEGGER_SYSVIEW_Conf.h.65.60100de17440f6fecc041dca57fc811e,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF780
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.SEGGER_RTT_Conf.h.58.62e82944134ea4913d677c13c2fac238,comdat
.Ldebug_macro13:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF791
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.SEGGER_SYSVIEW_ConfDefaults.h.83.5824e3d4b0796d8cb7007513399c8dcb,comdat
.Ldebug_macro14:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x17a
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x18a
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x199
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x1a9
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x1ce
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x1f2
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x202
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x213
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x220
	.4byte	.LASF808
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.SEGGER_SYSVIEW.h.79.ff655c63acde9ef37c6b4588882b962a,comdat
.Ldebug_macro15:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF884
	.byte	0x6
	.uleb128 0xe5
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0x16d
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0x16e
	.4byte	.LASF887
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.SEGGER_SYSVIEW_FreeRTOS.h.70.0dcb4a6ec9bffa630131f737fadbee17,comdat
.Ldebug_macro16:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF915
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF917
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF918
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF919
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF920
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF921
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF922
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF924
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF925
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF926
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF927
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF928
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF929
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF930
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF931
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF932
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF933
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF934
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF935
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF936
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF937
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF938
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF939
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF940
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF941
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF942
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF943
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF944
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF945
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF946
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF947
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF948
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF949
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF950
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF951
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF952
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF953
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF954
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF955
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF956
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF957
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF958
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF959
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF960
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF961
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF962
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF963
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF964
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF965
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF966
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF967
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF968
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF969
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF970
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF971
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF972
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF973
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF974
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF975
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF976
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF977
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF978
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF979
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF980
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF981
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF982
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF983
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF984
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF985
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF986
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF987
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF988
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF989
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF990
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF991
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF992
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF993
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF994
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF995
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF996
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF997
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF998
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF999
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF1000
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF1001
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF1002
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF1003
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF1004
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF1005
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF1006
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF1007
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF1008
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF1009
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF1010
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF1011
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF1012
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF1013
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF1014
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF1015
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF1016
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF1017
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF1018
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF1019
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF1020
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF1021
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF1022
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF1023
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF1024
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF1025
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF1026
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF1027
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF1028
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF1029
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF1030
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF1031
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF1032
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF1033
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF1034
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF1035
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF1036
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF1037
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF1038
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF1039
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF1040
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF1041
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF1042
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF1043
	.byte	0x5
	.uleb128 0x12a
	.4byte	.LASF1044
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF1045
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF1046
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF1047
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF1048
	.byte	0x5
	.uleb128 0x132
	.4byte	.LASF1049
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF1050
	.byte	0x5
	.uleb128 0x134
	.4byte	.LASF1051
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.FreeRTOSConfig.h.82.32e92d979bc9c0766b8f8c4e04afd947,comdat
.Ldebug_macro17:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF1052
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF1053
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.projdefs.h.30.0702c8e11543ad65b967f8cb76fed320,comdat
.Ldebug_macro18:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1054
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF1055
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF1056
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF1057
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF1058
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF1059
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1060
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1061
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF1062
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF1063
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF1064
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1065
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1066
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF1067
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF1068
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF1069
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF1070
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF1071
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF1072
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF1073
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF1074
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF1075
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF1076
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF1077
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF1078
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF1079
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF1080
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF1081
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF1082
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF1083
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF1084
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF1085
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF1086
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF1087
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF1088
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF1089
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF1090
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF1091
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF1092
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF1093
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF1094
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF1095
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF1096
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF1097
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF1098
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF1099
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF1100
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF1101
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF1102
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF1103
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF1104
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF1105
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF1106
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF1107
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF1108
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF1109
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF1110
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.portmacro.h.31.843369dbea38d7b2939e41be1fb06b1d,comdat
.Ldebug_macro19:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1113
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF1114
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF1115
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1116
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1117
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1118
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1119
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF1120
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF1121
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF1122
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF1123
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF1124
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF1125
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF1126
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF1127
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF1128
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF1129
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF1130
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF1131
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF1132
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF1133
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF1134
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF1135
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF1136
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF1137
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF1138
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF1139
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF1140
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF1141
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.portable.h.61.67abe2d3056dc7a26297423cb1f0b4c9,comdat
.Ldebug_macro20:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1142
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF1143
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF1144
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF1145
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF1146
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF1147
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.mpu_wrappers.h.30.e60c5be9cbbb2822799eebcdc9f54a71,comdat
.Ldebug_macro21:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1148
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF1149
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF1150
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF1151
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.portable.h.185.80d76acc48d31daa883f7d01e8a8cee6,comdat
.Ldebug_macro22:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF1152
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF1153
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.FreeRTOS.h.69.0a58f9619fed4e2be31ca0d4b181aa99,comdat
.Ldebug_macro23:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF1154
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF1155
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF1156
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF1157
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF1158
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF1159
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF1160
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF1161
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF1162
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF1163
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF1164
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF1165
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF1166
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF1167
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF1168
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF1169
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF1170
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF1171
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF1172
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF1173
	.byte	0x5
	.uleb128 0x140
	.4byte	.LASF1174
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF1175
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF1176
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF1177
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF1178
	.byte	0x5
	.uleb128 0x174
	.4byte	.LASF1179
	.byte	0x5
	.uleb128 0x179
	.4byte	.LASF1180
	.byte	0x5
	.uleb128 0x180
	.4byte	.LASF1181
	.byte	0x5
	.uleb128 0x19c
	.4byte	.LASF1182
	.byte	0x5
	.uleb128 0x1a5
	.4byte	.LASF1183
	.byte	0x5
	.uleb128 0x1ae
	.4byte	.LASF1184
	.byte	0x5
	.uleb128 0x1b6
	.4byte	.LASF1185
	.byte	0x5
	.uleb128 0x1ba
	.4byte	.LASF1186
	.byte	0x5
	.uleb128 0x1c4
	.4byte	.LASF1187
	.byte	0x5
	.uleb128 0x1cc
	.4byte	.LASF1188
	.byte	0x5
	.uleb128 0x1d0
	.4byte	.LASF1189
	.byte	0x5
	.uleb128 0x1d4
	.4byte	.LASF1190
	.byte	0x5
	.uleb128 0x1d8
	.4byte	.LASF1191
	.byte	0x5
	.uleb128 0x1dc
	.4byte	.LASF1192
	.byte	0x5
	.uleb128 0x1e0
	.4byte	.LASF1193
	.byte	0x5
	.uleb128 0x1e4
	.4byte	.LASF1194
	.byte	0x5
	.uleb128 0x1e8
	.4byte	.LASF1195
	.byte	0x5
	.uleb128 0x1ec
	.4byte	.LASF1196
	.byte	0x5
	.uleb128 0x1f0
	.4byte	.LASF1197
	.byte	0x5
	.uleb128 0x204
	.4byte	.LASF1198
	.byte	0x5
	.uleb128 0x22c
	.4byte	.LASF1199
	.byte	0x5
	.uleb128 0x24c
	.4byte	.LASF1200
	.byte	0x5
	.uleb128 0x250
	.4byte	.LASF1201
	.byte	0x5
	.uleb128 0x254
	.4byte	.LASF1202
	.byte	0x5
	.uleb128 0x258
	.4byte	.LASF1203
	.byte	0x5
	.uleb128 0x25c
	.4byte	.LASF1204
	.byte	0x5
	.uleb128 0x260
	.4byte	.LASF1205
	.byte	0x5
	.uleb128 0x264
	.4byte	.LASF1206
	.byte	0x5
	.uleb128 0x268
	.4byte	.LASF1207
	.byte	0x5
	.uleb128 0x26c
	.4byte	.LASF1208
	.byte	0x5
	.uleb128 0x270
	.4byte	.LASF1209
	.byte	0x5
	.uleb128 0x274
	.4byte	.LASF1210
	.byte	0x5
	.uleb128 0x278
	.4byte	.LASF1211
	.byte	0x5
	.uleb128 0x27c
	.4byte	.LASF1212
	.byte	0x5
	.uleb128 0x280
	.4byte	.LASF1213
	.byte	0x5
	.uleb128 0x284
	.4byte	.LASF1214
	.byte	0x5
	.uleb128 0x288
	.4byte	.LASF1215
	.byte	0x5
	.uleb128 0x28c
	.4byte	.LASF1216
	.byte	0x5
	.uleb128 0x290
	.4byte	.LASF1217
	.byte	0x5
	.uleb128 0x294
	.4byte	.LASF1218
	.byte	0x5
	.uleb128 0x298
	.4byte	.LASF1219
	.byte	0x5
	.uleb128 0x29c
	.4byte	.LASF1220
	.byte	0x5
	.uleb128 0x2a4
	.4byte	.LASF1221
	.byte	0x5
	.uleb128 0x2ac
	.4byte	.LASF1222
	.byte	0x5
	.uleb128 0x2c4
	.4byte	.LASF1223
	.byte	0x5
	.uleb128 0x2d4
	.4byte	.LASF1224
	.byte	0x5
	.uleb128 0x2e4
	.4byte	.LASF1225
	.byte	0x5
	.uleb128 0x306
	.4byte	.LASF1226
	.byte	0x5
	.uleb128 0x30e
	.4byte	.LASF1227
	.byte	0x5
	.uleb128 0x312
	.4byte	.LASF1228
	.byte	0x5
	.uleb128 0x31a
	.4byte	.LASF1229
	.byte	0x5
	.uleb128 0x322
	.4byte	.LASF1230
	.byte	0x5
	.uleb128 0x326
	.4byte	.LASF1231
	.byte	0x5
	.uleb128 0x32a
	.4byte	.LASF1232
	.byte	0x5
	.uleb128 0x32e
	.4byte	.LASF1233
	.byte	0x5
	.uleb128 0x336
	.4byte	.LASF1234
	.byte	0x5
	.uleb128 0x33a
	.4byte	.LASF1235
	.byte	0x5
	.uleb128 0x346
	.4byte	.LASF1236
	.byte	0x5
	.uleb128 0x34a
	.4byte	.LASF1237
	.byte	0x5
	.uleb128 0x34e
	.4byte	.LASF1238
	.byte	0x5
	.uleb128 0x356
	.4byte	.LASF1239
	.byte	0x5
	.uleb128 0x35a
	.4byte	.LASF1240
	.byte	0x5
	.uleb128 0x35e
	.4byte	.LASF1241
	.byte	0x5
	.uleb128 0x362
	.4byte	.LASF1242
	.byte	0x5
	.uleb128 0x366
	.4byte	.LASF1243
	.byte	0x5
	.uleb128 0x36e
	.4byte	.LASF1244
	.byte	0x5
	.uleb128 0x376
	.4byte	.LASF1245
	.byte	0x5
	.uleb128 0x37f
	.4byte	.LASF1246
	.byte	0x5
	.uleb128 0x384
	.4byte	.LASF1247
	.byte	0x5
	.uleb128 0x38b
	.4byte	.LASF1248
	.byte	0x5
	.uleb128 0x393
	.4byte	.LASF1249
	.byte	0x5
	.uleb128 0x39b
	.4byte	.LASF1250
	.byte	0x5
	.uleb128 0x3ae
	.4byte	.LASF1251
	.byte	0x5
	.uleb128 0x3be
	.4byte	.LASF1252
	.byte	0x5
	.uleb128 0x3bf
	.4byte	.LASF1253
	.byte	0x5
	.uleb128 0x3c0
	.4byte	.LASF1254
	.byte	0x5
	.uleb128 0x3c1
	.4byte	.LASF1255
	.byte	0x5
	.uleb128 0x3c7
	.4byte	.LASF1256
	.byte	0x5
	.uleb128 0x3d6
	.4byte	.LASF1257
	.byte	0x5
	.uleb128 0x3dd
	.4byte	.LASF1258
	.byte	0x5
	.uleb128 0x3e4
	.4byte	.LASF1259
	.byte	0x5
	.uleb128 0x3e8
	.4byte	.LASF1260
	.byte	0x5
	.uleb128 0x3e9
	.4byte	.LASF1261
	.byte	0x5
	.uleb128 0x3ea
	.4byte	.LASF1262
	.byte	0x5
	.uleb128 0x3eb
	.4byte	.LASF1263
	.byte	0x5
	.uleb128 0x3ec
	.4byte	.LASF1264
	.byte	0x5
	.uleb128 0x3ed
	.4byte	.LASF1265
	.byte	0x5
	.uleb128 0x3ee
	.4byte	.LASF1266
	.byte	0x5
	.uleb128 0x3ef
	.4byte	.LASF1267
	.byte	0x5
	.uleb128 0x3f0
	.4byte	.LASF1268
	.byte	0x5
	.uleb128 0x3f1
	.4byte	.LASF1269
	.byte	0x5
	.uleb128 0x3f2
	.4byte	.LASF1270
	.byte	0x5
	.uleb128 0x3f3
	.4byte	.LASF1271
	.byte	0x5
	.uleb128 0x3f4
	.4byte	.LASF1272
	.byte	0x5
	.uleb128 0x3f5
	.4byte	.LASF1273
	.byte	0x5
	.uleb128 0x3f6
	.4byte	.LASF1274
	.byte	0x5
	.uleb128 0x3f7
	.4byte	.LASF1275
	.byte	0x5
	.uleb128 0x3f8
	.4byte	.LASF1276
	.byte	0x5
	.uleb128 0x3f9
	.4byte	.LASF1277
	.byte	0x5
	.uleb128 0x3fa
	.4byte	.LASF1278
	.byte	0x5
	.uleb128 0x3fb
	.4byte	.LASF1279
	.byte	0x5
	.uleb128 0x3ff
	.4byte	.LASF1280
	.byte	0x5
	.uleb128 0x400
	.4byte	.LASF1281
	.byte	0x5
	.uleb128 0x401
	.4byte	.LASF1282
	.byte	0x5
	.uleb128 0x402
	.4byte	.LASF1283
	.byte	0x5
	.uleb128 0x406
	.4byte	.LASF1284
	.byte	0x5
	.uleb128 0x412
	.4byte	.LASF1285
	.byte	0x5
	.uleb128 0x418
	.4byte	.LASF1286
	.byte	0x5
	.uleb128 0x41e
	.4byte	.LASF1287
	.byte	0x5
	.uleb128 0x424
	.4byte	.LASF1288
	.byte	0x5
	.uleb128 0x42a
	.4byte	.LASF1289
	.byte	0x5
	.uleb128 0x42e
	.4byte	.LASF1290
	.byte	0x5
	.uleb128 0x45c
	.4byte	.LASF1291
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF570:
	.ascii	"__SEGGER_RTL_BitcastToF64(X) __SEGGER_RTL_BitcastTo"
	.ascii	"F64_inline(X)\000"
.LASF994:
	.ascii	"apiID_UXEVENTGROUPGETNUMBER (104u)\000"
.LASF181:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF359:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF690:
	.ascii	"configTICK_RATE_HZ ( ( TickType_t ) 1000 )\000"
.LASF1285:
	.ascii	"configUSE_TASK_FPU_SUPPORT 1\000"
.LASF1083:
	.ascii	"pdFREERTOS_ERRNO_EISDIR 21\000"
.LASF753:
	.ascii	"INLINE inline __attribute__((always_inline))\000"
.LASF762:
	.ascii	"SEGGER_PRINTF_FLAG_ADJLEFT (1 << 0)\000"
.LASF878:
	.ascii	"SYSVIEW_EVTMASK_NUMMODULES (1 << SYSVIEW_EVTID_NUMM"
	.ascii	"ODULES)\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1\000"
.LASF741:
	.ascii	"va_end(ap) __builtin_va_end(ap)\000"
.LASF371:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF967:
	.ascii	"apiID_XQUEUECREATECOUNTINGSEMAPHORE (77u)\000"
.LASF1254:
	.ascii	"portTICK_TYPE_SET_INTERRUPT_MASK_FROM_ISR() 0\000"
.LASF934:
	.ascii	"apiID_UXTASKGETTASKNUMBER (44u)\000"
.LASF1206:
	.ascii	"traceMALLOC(pvAddress,uiSize) \000"
.LASF234:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF835:
	.ascii	"SYSVIEW_EVTID_MARK_START 15\000"
.LASF697:
	.ascii	"configIDLE_SHOULD_YIELD 1\000"
.LASF895:
	.ascii	"apiID_UXTASKPRIORITYGET (5u)\000"
.LASF323:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF1010:
	.ascii	"traceTASK_PRIORITY_DISINHERIT(pxTCB,uxBasePriority)"
	.ascii	" SEGGER_SYSVIEW_RecordU32 (apiID_OFFSET + apiID_XTA"
	.ascii	"SKPRIORITYDISINHERIT, (U32)pxMutexHolder)\000"
.LASF315:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF77:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF955:
	.ascii	"apiID_XQUEUEGIVEFROMISR (65u)\000"
.LASF787:
	.ascii	"SEGGER_RTT_MODE_DEFAULT SEGGER_RTT_MODE_NO_BLOCK_SK"
	.ascii	"IP\000"
.LASF567:
	.ascii	"__SEGGER_RTL_BitcastToU32(X) __SEGGER_RTL_BitcastTo"
	.ascii	"U32_inline(X)\000"
.LASF599:
	.ascii	"__SEGGER_RTL_U64_H(X) ((__SEGGER_RTL_U32)((__SEGGER"
	.ascii	"_RTL_U64)(X) >> 32))\000"
.LASF230:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF1005:
	.ascii	"traceTASK_NOTIFY_GIVE_FROM_ISR() SEGGER_SYSVIEW_Rec"
	.ascii	"ordU32x2(apiID_OFFSET + apiID_VTASKNOTIFYGIVEFROMIS"
	.ascii	"R, SEGGER_SYSVIEW_ShrinkId((U32)pxTCB), (U32)pxHigh"
	.ascii	"erPriorityTaskWoken)\000"
.LASF88:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF540:
	.ascii	"__SEGGER_RTL_LEAST_U8 unsigned\000"
.LASF868:
	.ascii	"SYSVIEW_EVTMASK_USER_STOP (1 << SYSVIEW_EVTID_USER_"
	.ascii	"STOP)\000"
.LASF340:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF227:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF1063:
	.ascii	"errQUEUE_BLOCKED ( -4 )\000"
.LASF902:
	.ascii	"apiID_VTASKSTARTSCHEDULER (12u)\000"
.LASF957:
	.ascii	"apiID_XQUEUEISQUEUEEMPTYFROMISR (67u)\000"
.LASF1166:
	.ascii	"configUSE_ALTERNATIVE_API 0\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF694:
	.ascii	"configMAX_TASK_NAME_LEN ( 16 )\000"
.LASF73:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF988:
	.ascii	"apiID_XEVENTGROUPCLEARBITSFROMISR (98u)\000"
.LASF1162:
	.ascii	"INCLUDE_eTaskGetState 0\000"
.LASF566:
	.ascii	"__SEGGER_RTL_STDOUT_BUFFER_LEN 64\000"
.LASF1180:
	.ascii	"traceLOW_POWER_IDLE_END() \000"
.LASF1088:
	.ascii	"pdFREERTOS_ERRNO_EUNATCH 42\000"
.LASF1148:
	.ascii	"MPU_WRAPPERS_H \000"
.LASF1215:
	.ascii	"traceEVENT_GROUP_CLEAR_BITS_FROM_ISR(xEventGroup,ux"
	.ascii	"BitsToClear) \000"
.LASF886:
	.ascii	"SEGGER_SYSVIEW_OnUserStart SEGGER_SYSVIEW_MarkStart"
	.ascii	"\000"
.LASF1299:
	.ascii	"signed char\000"
.LASF1003:
	.ascii	"traceTASK_DELAY() SEGGER_SYSVIEW_RecordU32 (apiID_O"
	.ascii	"FFSET + apiID_VTASKDELAY, xTicksToDelay)\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF165:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF263:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF329:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF657:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF1025:
	.ascii	"traceQUEUE_REGISTRY_ADD(xQueue,pcQueueName) SEGGER_"
	.ascii	"SYSVIEW_RecordU32x2(apiID_OFFSET + apiID_VQUEUEADDT"
	.ascii	"OREGISTRY, SEGGER_SYSVIEW_ShrinkId((U32)xQueue), (U"
	.ascii	"32)pcQueueName)\000"
.LASF299:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF251:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF92:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF444:
	.ascii	"__ARM_FEATURE_BF16_SCALAR_ARITHMETIC\000"
.LASF336:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF534:
	.ascii	"__SEGGER_RTL_I16 short\000"
.LASF532:
	.ascii	"__SEGGER_RTL_I32 int\000"
.LASF837:
	.ascii	"SYSVIEW_EVTID_IDLE 17\000"
.LASF521:
	.ascii	"__WIDTH_FLOAT 1\000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF407:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF816:
	.ascii	"SEGGER_SYSVIEW_WARNING (1u)\000"
.LASF298:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF212:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF723:
	.ascii	"INCLUDE_vTaskSuspend 1\000"
.LASF819:
	.ascii	"SEGGER_SYSVIEW_PREPARE_PACKET(p) (p) + 4\000"
.LASF177:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF175:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF1186:
	.ascii	"configINCLUDE_FREERTOS_TASK_C_ADDITIONS_H 0\000"
.LASF1061:
	.ascii	"errQUEUE_FULL ( ( BaseType_t ) 0 )\000"
.LASF769:
	.ascii	"SEGGER_SYSVIEW_CONF_H \000"
.LASF1143:
	.ascii	"portUSING_MPU_WRAPPERS 0\000"
.LASF117:
	.ascii	"__UINT8_C(c) c\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF1072:
	.ascii	"pdFREERTOS_ERRNO_EBADF 9\000"
.LASF598:
	.ascii	"__SEGGER_RTL_FILE_IMPL __SEGGER_RTL_FILE_impl\000"
.LASF462:
	.ascii	"__SEGGER_RTL_H \000"
.LASF1120:
	.ascii	"portBASE_TYPE long\000"
.LASF826:
	.ascii	"SYSVIEW_EVTID_TASK_START_READY 6\000"
.LASF726:
	.ascii	"INCLUDE_xResumeFromISR 1\000"
.LASF1147:
	.ascii	"configSTACK_ALLOCATION_FROM_SEPARATE_HEAP 0\000"
.LASF620:
	.ascii	"NULL 0\000"
.LASF1306:
	.ascii	"long int\000"
.LASF1146:
	.ascii	"portARCH_NAME NULL\000"
.LASF527:
	.ascii	"__SEGGER_RTL_INCLUDE_SEGGER_API 0\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF286:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF1060:
	.ascii	"errQUEUE_EMPTY ( ( BaseType_t ) 0 )\000"
.LASF508:
	.ascii	"__SEGGER_RTL_FLOAT64_C_COMPLEX double _Complex\000"
.LASF668:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF794:
	.ascii	"SEGGER_SYSVIEW_CORE_RX 3\000"
.LASF618:
	.ascii	"__SEGGER_RTL_FILE_IMPL_DEFINED \000"
.LASF717:
	.ascii	"configTIMER_QUEUE_LENGTH 5\000"
.LASF571:
	.ascii	"__SEGGER_RTL_SMULL_X(X,Y) __SEGGER_RTL_SMULL_X_func"
	.ascii	"((X), (Y))\000"
.LASF1000:
	.ascii	"apiID_XSTREAMBUFFERRECEIVE (110u)\000"
.LASF1212:
	.ascii	"traceEVENT_GROUP_WAIT_BITS_BLOCK(xEventGroup,uxBits"
	.ascii	"ToWaitFor) \000"
.LASF211:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF823:
	.ascii	"SYSVIEW_EVTID_ISR_EXIT 3\000"
.LASF792:
	.ascii	"SEGGER_SYSVIEW_CORE_OTHER 0\000"
.LASF1267:
	.ascii	"xTimeOutType TimeOut_t\000"
.LASF859:
	.ascii	"SYSVIEW_EVTMASK_TASK_STOP_READY (1 << SYSVIEW_EVTID"
	.ascii	"_TASK_STOP_READY)\000"
.LASF1231:
	.ascii	"configPRE_SUPPRESS_TICKS_AND_SLEEP_PROCESSING(x) \000"
.LASF259:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF401:
	.ascii	"__ARM_FEATURE_CLZ\000"
.LASF138:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF751:
	.ascii	"U64_C(x) x ##ULL\000"
.LASF208:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF836:
	.ascii	"SYSVIEW_EVTID_MARK_STOP 16\000"
.LASF865:
	.ascii	"SYSVIEW_EVTMASK_SYSTIME_US (1 << SYSVIEW_EVTID_SYST"
	.ascii	"IME_US)\000"
.LASF913:
	.ascii	"apiID_VTASKSETTHREADLOCALSTORAGEPOINTER (23u)\000"
.LASF768:
	.ascii	"SEGGER_SYSVIEW_CONFDEFAULTS_H \000"
.LASF911:
	.ascii	"apiID_VTASKSETAPPLICATIONTASKTAG (21u)\000"
.LASF633:
	.ascii	"UINT8_MAX 255\000"
.LASF204:
	.ascii	"__FLT16_HAS_INFINITY__ 1\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF276:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF224:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF838:
	.ascii	"SYSVIEW_EVTID_ISR_TO_SCHEDULER 18\000"
.LASF625:
	.ascii	"INT8_MIN (-128)\000"
.LASF131:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF973:
	.ascii	"apiID_XQUEUEGENERICCREATE (83u)\000"
.LASF255:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF475:
	.ascii	"__SEGGER_RTL_FLOAT16 _Float16\000"
.LASF621:
	.ascii	"offsetof(s,m) ((size_t)&(((s *)0)->m))\000"
.LASF1282:
	.ascii	"xListItem ListItem_t\000"
.LASF111:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF345:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF727:
	.ascii	"INCLUDE_xTaskGetSchedulerState 1\000"
.LASF584:
	.ascii	"__SEGGER_RTL_SMLAL_SYNTHESIZED \000"
.LASF375:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1\000"
.LASF551:
	.ascii	"__SEGGER_RTL_WINT_T __WINT_TYPE__\000"
.LASF662:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF1292:
	.ascii	"SYSVIEW_APP_NAME \"FreeRTOS Clock APP\"\000"
.LASF995:
	.ascii	"apiID_XSTREAMBUFFERCREATE (105u)\000"
.LASF1122:
	.ascii	"portTICK_TYPE_IS_ATOMIC 1\000"
.LASF1228:
	.ascii	"portYIELD_WITHIN_API portYIELD\000"
.LASF343:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF491:
	.ascii	"__SEGGER_RTL_PUBLIC_API __attribute__((__weak__))\000"
.LASF223:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF676:
	.ascii	"UINT8_C(x) (x ##u)\000"
.LASF86:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF246:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF132:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF498:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIV 0\000"
.LASF1032:
	.ascii	"traceSTREAM_BUFFER_DELETE(xStreamBuffer) SEGGER_SYS"
	.ascii	"VIEW_RecordU32 (apiID_OFFSET + apiID_VSTREAMBUFFERD"
	.ascii	"ELETE, (U32)xStreamBuffer)\000"
.LASF744:
	.ascii	"I8 signed char\000"
.LASF454:
	.ascii	"DEBUG 1\000"
.LASF152:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF312:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF1262:
	.ascii	"xTaskHandle TaskHandle_t\000"
.LASF1043:
	.ascii	"traceTASK_SWITCHED_IN() { if (memcmp(pxCurrentTCB->"
	.ascii	"pcTaskName, \"IDLE\", 5) != 0) { SEGGER_SYSVIEW_OnT"
	.ascii	"askStartExec((U32)pxCurrentTCB); } else { SEGGER_SY"
	.ascii	"SVIEW_OnIdle(); } }\000"
.LASF127:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF1046:
	.ascii	"traceMOVED_TASK_TO_DELAYED_LIST() SEGGER_SYSVIEW_On"
	.ascii	"TaskStopReady((U32)pxCurrentTCB, (1u << 2))\000"
.LASF894:
	.ascii	"apiID_VTASKDELAYUNTIL (4u)\000"
.LASF420:
	.ascii	"__VFP_FP__ 1\000"
.LASF1314:
	.ascii	"SEGGER_SYSVIEW_Conf\000"
.LASF464:
	.ascii	"__SEGGER_RTL_CONF_H \000"
.LASF136:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF908:
	.ascii	"apiID_UXTASKGETNUMBEROFTASKS (18u)\000"
.LASF1239:
	.ascii	"mtCOVERAGE_TEST_MARKER() \000"
.LASF611:
	.ascii	"__SEGGER_RTL_SUBNORMALS_FLUSH_TO_ZERO 1\000"
.LASF1237:
	.ascii	"configUSE_STATS_FORMATTING_FUNCTIONS 0\000"
.LASF928:
	.ascii	"apiID_XTASKCHECKFORTIMEOUT (38u)\000"
.LASF1103:
	.ascii	"pdFREERTOS_ERRNO_ENOTCONN 128\000"
.LASF203:
	.ascii	"__FLT16_HAS_DENORM__ 1\000"
.LASF476:
	.ascii	"__SEGGER_RTL_MAX_ALIGN 8\000"
.LASF1106:
	.ascii	"pdFREERTOS_ERRNO_ECANCELED 140\000"
.LASF216:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF268:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF628:
	.ascii	"INT16_MAX 32767\000"
.LASF432:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF564:
	.ascii	"__SEGGER_RTL_HEAP_SIZE 1024\000"
.LASF682:
	.ascii	"WCHAR_MAX __WCHAR_MAX__\000"
.LASF1295:
	.ascii	"SYSVIEW_CPU_FREQ configCPU_CLOCK_HZ\000"
.LASF249:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF666:
	.ascii	"SIZE_MAX INT32_MAX\000"
.LASF1179:
	.ascii	"traceLOW_POWER_IDLE_BEGIN() \000"
.LASF730:
	.ascii	"INCLUDE_xTaskResumeFromISR 1\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF921:
	.ascii	"apiID_XTASKGENERICNOTIFYFROMISR (31u)\000"
.LASF1108:
	.ascii	"pdFREERTOS_BIG_ENDIAN 1\000"
.LASF200:
	.ascii	"__FLT16_MIN__ 1.1\000"
.LASF709:
	.ascii	"configLIBRARY_LOWEST_INTERRUPT_PRIORITY 0x03\000"
.LASF474:
	.ascii	"__SEGGER_RTL_TYPESET 32\000"
.LASF307:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF671:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF245:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF130:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF242:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF789:
	.ascii	"SEGGER_RTT_MAX_INTERRUPT_PRIORITY (0x20)\000"
.LASF250:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF1283:
	.ascii	"xList List_t\000"
.LASF715:
	.ascii	"configUSE_TIMERS 1\000"
.LASF788:
	.ascii	"SEGGER_RTT_MEMCPY_USE_BYTELOOP 0\000"
.LASF804:
	.ascii	"SEGGER_SYSVIEW_MAX_PACKET_SIZE (SEGGER_SYSVIEW_INFO"
	.ascii	"_SIZE + SEGGER_SYSVIEW_MAX_STRING_LEN + 2 * SEGGER_"
	.ascii	"SYSVIEW_QUANTA_U32 + SEGGER_SYSVIEW_MAX_ARGUMENTS *"
	.ascii	" SEGGER_SYSVIEW_QUANTA_U32)\000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF953:
	.ascii	"apiID_VQUEUEDELETE (63u)\000"
.LASF363:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF226:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF1094:
	.ascii	"pdFREERTOS_ERRNO_EOPNOTSUPP 95\000"
.LASF91:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF1165:
	.ascii	"configNUM_THREAD_LOCAL_STORAGE_POINTERS 0\000"
.LASF1244:
	.ascii	"configTASK_NOTIFICATION_ARRAY_ENTRIES 1\000"
.LASF536:
	.ascii	"__SEGGER_RTL_I8 signed char\000"
.LASF1204:
	.ascii	"traceTIMER_EXPIRED(pxTimer) \000"
.LASF686:
	.ascii	"configUSE_PREEMPTION 1\000"
.LASF588:
	.ascii	"__SEGGER_RTL_DIVMOD_U64(Q,R,N,D) do { Q = N / D; R "
	.ascii	"= N - Q*D; } while (0)\000"
.LASF834:
	.ascii	"SYSVIEW_EVTID_SYSDESC 14\000"
.LASF429:
	.ascii	"__ARM_NEON__\000"
.LASF210:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF1153:
	.ascii	"vPortFreeStack vPortFree\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF289:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF579:
	.ascii	"__SEGGER_RTL_SMULL(L,H,X,Y) __SEGGER_RTL_SMULL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF239:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF1065:
	.ascii	"configUSE_LIST_DATA_INTEGRITY_CHECK_BYTES 0\000"
.LASF856:
	.ascii	"SYSVIEW_EVTMASK_TASK_START_EXEC (1 << SYSVIEW_EVTID"
	.ascii	"_TASK_START_EXEC)\000"
.LASF1050:
	.ascii	"traceISR_EXIT() SEGGER_SYSVIEW_RecordExitISR()\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF426:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF655:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF752:
	.ascii	"PTR_ADDR U32\000"
.LASF636:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF134:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF918:
	.ascii	"apiID_VTASKLIST (28u)\000"
.LASF149:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF1085:
	.ascii	"pdFREERTOS_ERRNO_ENOSPC 28\000"
.LASF1183:
	.ascii	"traceBLOCKING_ON_QUEUE_PEEK(pxQueue) \000"
.LASF1201:
	.ascii	"traceTIMER_CREATE(pxNewTimer) \000"
.LASF954:
	.ascii	"apiID_XQUEUEGENERICSENDFROMISR (64u)\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF112:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF1185:
	.ascii	"configRECORD_STACK_HIGH_ADDRESS 0\000"
.LASF650:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF1150:
	.ascii	"PRIVILEGED_DATA \000"
.LASF1001:
	.ascii	"apiID_XSTREAMBUFFERRECEIVEFROMISR (111u)\000"
.LASF477:
	.ascii	"__SEGGER_RTL_FP_ABI 0\000"
.LASF861:
	.ascii	"SYSVIEW_EVTMASK_TASK_INFO (1 << SYSVIEW_EVTID_TASK_"
	.ascii	"INFO)\000"
.LASF153:
	.ascii	"__FLT_NORM_MAX__ 1.1\000"
.LASF879:
	.ascii	"SYSVIEW_EVTMASK_END_CALL (1 << SYSVIEW_EVTID_END_CA"
	.ascii	"LL)\000"
.LASF1002:
	.ascii	"traceTASK_NOTIFY_TAKE() SEGGER_SYSVIEW_RecordU32x2("
	.ascii	"apiID_OFFSET + apiID_ULTASKNOTIFYTAKE, xClearCountO"
	.ascii	"nExit, xTicksToWait)\000"
.LASF1118:
	.ascii	"portSHORT short\000"
.LASF661:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF1029:
	.ascii	"traceQUEUE_SEND_FROM_ISR_FAILED(pxQueue) SEGGER_SYS"
	.ascii	"VIEW_RecordU32x2(apiID_OFFSET + apiID_XQUEUEGENERIC"
	.ascii	"SENDFROMISR, SEGGER_SYSVIEW_ShrinkId((U32)pxQueue),"
	.ascii	" (U32)pxHigherPriorityTaskWoken)\000"
.LASF737:
	.ascii	"__SEGGER_RTL_STDARG_H \000"
.LASF365:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF1035:
	.ascii	"traceSTREAM_BUFFER_SEND_FAILED(xStreamBuffer) SEGGE"
	.ascii	"R_SYSVIEW_RecordU32x2(apiID_OFFSET + apiID_XSTREAMB"
	.ascii	"UFFERSEND, (U32)xStreamBuffer, 0u)\000"
.LASF910:
	.ascii	"apiID_UXTASKGETSTACKHIGHWATERMARK (20u)\000"
.LASF1276:
	.ascii	"pcTimerGetTimerName pcTimerGetName\000"
.LASF494:
	.ascii	"__SEGGER_RTL_CORE_HAS_REV 0\000"
.LASF413:
	.ascii	"__thumb__ 1\000"
.LASF680:
	.ascii	"INTMAX_C(x) (x ##LL)\000"
.LASF860:
	.ascii	"SYSVIEW_EVTMASK_TASK_CREATE (1 << SYSVIEW_EVTID_TAS"
	.ascii	"K_CREATE)\000"
.LASF1271:
	.ascii	"xTimerHandle TimerHandle_t\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF1021:
	.ascii	"traceQUEUE_RECEIVE_FAILED(pxQueue) SEGGER_SYSVIEW_R"
	.ascii	"ecordU32x4(apiID_OFFSET + apiID_XQUEUEGENERICRECEIV"
	.ascii	"E, SEGGER_SYSVIEW_ShrinkId((U32)pxQueue), SEGGER_SY"
	.ascii	"SVIEW_ShrinkId((U32)0), xTicksToWait, 1)\000"
.LASF1173:
	.ascii	"portCLEAN_UP_TCB(pxTCB) ( void ) pxTCB\000"
.LASF186:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF369:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF490:
	.ascii	"__SEGGER_RTL_REQUEST_INLINE __inline__\000"
.LASF791:
	.ascii	"SEGGER_RTT_UNLOCK() __asm volatile (\"msr   primask"
	.ascii	", %0  \\n\\t\" : : \"r\" (_SEGGER_RTT__LockState) :"
	.ascii	" ); }\000"
.LASF982:
	.ascii	"apiID_VLISTINSERT (92u)\000"
.LASF424:
	.ascii	"__ARM_FP16_ARGS 1\000"
.LASF649:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF159:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF528:
	.ascii	"__SEGGER_RTL_INCLUDE_C_API 1\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF875:
	.ascii	"SYSVIEW_EVTMASK_INIT (1 << SYSVIEW_EVTID_INIT)\000"
.LASF977:
	.ascii	"apiID_XQUEUESELECTFROMSET (87u)\000"
.LASF118:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF1013:
	.ascii	"traceTASK_NOTIFY_FROM_ISR() SEGGER_SYSVIEW_RecordU3"
	.ascii	"2x5(apiID_OFFSET + apiID_XTASKGENERICNOTIFYFROMISR,"
	.ascii	" SEGGER_SYSVIEW_ShrinkId((U32)pxTCB), ulValue, eAct"
	.ascii	"ion, (U32)pulPreviousNotificationValue, (U32)pxHigh"
	.ascii	"erPriorityTaskWoken)\000"
.LASF1209:
	.ascii	"traceEVENT_GROUP_CREATE_FAILED() \000"
.LASF1275:
	.ascii	"pcTaskGetTaskName pcTaskGetName\000"
.LASF610:
	.ascii	"__SEGGER_RTL_SUBNORMALS_READ_AS_ZERO 1\000"
.LASF926:
	.ascii	"apiID_XTASKGETCURRENTTASKHANDLE (36u)\000"
.LASF1177:
	.ascii	"traceSTART() \000"
.LASF1227:
	.ascii	"portPRIVILEGE_BIT ( ( UBaseType_t ) 0x00 )\000"
.LASF795:
	.ascii	"SEGGER_SYSVIEW_APP_NAME \"SystemView-enabled Applic"
	.ascii	"ation\"\000"
.LASF849:
	.ascii	"SYSVIEW_EVTID_EX 31\000"
.LASF335:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF146:
	.ascii	"__FLT_DIG__ 6\000"
.LASF232:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF1093:
	.ascii	"pdFREERTOS_ERRNO_ENAMETOOLONG 91\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF1300:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF292:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF1268:
	.ascii	"xMemoryRegion MemoryRegion_t\000"
.LASF150:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF1259:
	.ascii	"configMIN(a,b) ( ( ( a ) < ( b ) ) ? ( a ) : ( b ) "
	.ascii	")\000"
.LASF482:
	.ascii	"__SEGGER_RTL_FLT_SELECT(HEX,DEC) HEX\000"
.LASF264:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF139:
	.ascii	"__GCC_IEC_559 0\000"
.LASF1191:
	.ascii	"traceGIVE_MUTEX_RECURSIVE(pxMutex) \000"
.LASF807:
	.ascii	"SEGGER_SYSVIEW_LOCK() SEGGER_RTT_LOCK()\000"
.LASF128:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF1026:
	.ascii	"traceQUEUE_SEND(pxQueue) SEGGER_SYSVIEW_RecordU32x4"
	.ascii	"(apiID_OFFSET + apiID_XQUEUEGENERICSEND, SEGGER_SYS"
	.ascii	"VIEW_ShrinkId((U32)pxQueue), (U32)pvItemToQueue, xT"
	.ascii	"icksToWait, xCopyPosition)\000"
.LASF437:
	.ascii	"__ARM_ARCH_EXT_IDIV__\000"
.LASF1099:
	.ascii	"pdFREERTOS_ERRNO_EINPROGRESS 119\000"
.LASF499:
	.ascii	"__SEGGER_RTL_CORE_HAS_CBZ_CBNZ 0\000"
.LASF920:
	.ascii	"apiID_XTASKGENERICNOTIFY (30u)\000"
.LASF631:
	.ascii	"INT64_MIN (-9223372036854775807LL-1)\000"
.LASF1225:
	.ascii	"traceBLOCKING_ON_STREAM_BUFFER_RECEIVE(xStreamBuffe"
	.ascii	"r) \000"
.LASF1142:
	.ascii	"portBYTE_ALIGNMENT_MASK ( 0x0007 )\000"
.LASF101:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF1252:
	.ascii	"portTICK_TYPE_ENTER_CRITICAL() \000"
.LASF339:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF1017:
	.ascii	"traceQUEUE_PEEK(pxQueue) SEGGER_SYSVIEW_RecordU32x4"
	.ascii	"(apiID_OFFSET + apiID_XQUEUEGENERICRECEIVE, SEGGER_"
	.ascii	"SYSVIEW_ShrinkId((U32)pxQueue), SEGGER_SYSVIEW_Shri"
	.ascii	"nkId((U32)pvBuffer), xTicksToWait, 1)\000"
.LASF1128:
	.ascii	"portYIELD() vPortYield()\000"
.LASF69:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF675:
	.ascii	"INT64_C(x) (x ##LL)\000"
.LASF452:
	.ascii	"__SES_VERSION 57001\000"
.LASF843:
	.ascii	"SYSVIEW_EVTID_INIT 24\000"
.LASF171:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF944:
	.ascii	"apiID_XTIMERPENDFUNCTIONCALL (54u)\000"
.LASF627:
	.ascii	"INT16_MIN (-32767-1)\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF326:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF524:
	.ascii	"__SEGGER_RTL_FORCE_SOFT_FLOAT 0\000"
.LASF471:
	.ascii	"__SEGGER_RTL_INCLUDE_AEABI_API 2\000"
.LASF848:
	.ascii	"SYSVIEW_EVTID_TASK_TERMINATE 29\000"
.LASF389:
	.ascii	"__ARM_FEATURE_QBIT\000"
.LASF1279:
	.ascii	"xTaskGetIdleRunTimeCounter ulTaskGetIdleRunTimeCoun"
	.ascii	"ter\000"
.LASF1296:
	.ascii	"SYSVIEW_RAM_BASE (0x20000000)\000"
.LASF798:
	.ascii	"SEGGER_SYSVIEW_MAX_ARGUMENTS 16\000"
.LASF166:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF770:
	.ascii	"SEGGER_SYSVIEW_CORE_CM0 1\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF822:
	.ascii	"SYSVIEW_EVTID_ISR_ENTER 2\000"
.LASF1081:
	.ascii	"pdFREERTOS_ERRNO_ENODEV 19\000"
.LASF1160:
	.ascii	"INCLUDE_uxTaskGetStackHighWaterMark 0\000"
.LASF384:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF883:
	.ascii	"SYSVIEW_EVTMASK_ALL_TASKS ( SYSVIEW_EVTMASK_TASK_ST"
	.ascii	"ART_EXEC | SYSVIEW_EVTMASK_TASK_STOP_EXEC | SYSVIEW"
	.ascii	"_EVTMASK_TASK_START_READY | SYSVIEW_EVTMASK_TASK_ST"
	.ascii	"OP_READY | SYSVIEW_EVTMASK_TASK_CREATE | SYSVIEW_EV"
	.ascii	"TMASK_TASK_INFO | SYSVIEW_EVTMASK_STACK_INFO | SYSV"
	.ascii	"IEW_EVTMASK_TASK_TERMINATE)\000"
.LASF852:
	.ascii	"SYSVIEW_EVTMASK_NOP (1 << SYSVIEW_EVTID_NOP)\000"
.LASF1111:
	.ascii	"PORTABLE_H \000"
.LASF1297:
	.ascii	"char\000"
.LASF362:
	.ascii	"__USA_IBIT__ 16\000"
.LASF702:
	.ascii	"configUSE_QUEUE_SETS 0\000"
.LASF780:
	.ascii	"SEGGER_SYSVIEW_GET_INTERRUPT_ID() ((*(U32 *)(0xE000"
	.ascii	"ED04)) & 0x3F)\000"
.LASF589:
	.ascii	"__SEGGER_RTL_RODATA_IS_RW 0\000"
.LASF254:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF561:
	.ascii	"__SEGGER_RTL_FORMAT_INT_WIDTH\000"
.LASF1144:
	.ascii	"portNUM_CONFIGURABLE_REGIONS 1\000"
.LASF907:
	.ascii	"apiID_XTASKGETTICKCOUNTFROMISR (17u)\000"
.LASF830:
	.ascii	"SYSVIEW_EVTID_TRACE_START 10\000"
.LASF1178:
	.ascii	"traceEND() \000"
.LASF351:
	.ascii	"__HA_FBIT__ 7\000"
.LASF979:
	.ascii	"apiID_XQUEUEGENERICRESET (89u)\000"
.LASF436:
	.ascii	"__FDPIC__\000"
.LASF483:
	.ascii	"__SEGGER_RTL_CORE_HAS_MLA 0\000"
.LASF469:
	.ascii	"__SEGGER_RTL_NO_BUILTIN __attribute__((optimize(\"-"
	.ascii	"fno-tree-loop-distribute-patterns\")))\000"
.LASF1309:
	.ascii	"GNU C99 10.3.1 20210824 (release) -fmessage-length="
	.ascii	"0 -std=gnu99 -mcpu=cortex-m0plus -mlittle-endian -m"
	.ascii	"float-abi=soft -mthumb -mtp=soft -mfp16-format=ieee"
	.ascii	" -mno-unaligned-access -gdwarf-4 -g3 -gpubnames -fo"
	.ascii	"mit-frame-pointer -fno-dwarf2-cfi-asm -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF624:
	.ascii	"__SEGGER_RTL_STDINT_H \000"
.LASF740:
	.ascii	"va_copy(d,s) __builtin_va_copy((d), (s))\000"
.LASF1051:
	.ascii	"traceISR_ENTER() SEGGER_SYSVIEW_RecordEnterISR()\000"
.LASF548:
	.ascii	"__SEGGER_RTL_SIZEOF_PTR 4\000"
.LASF247:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF678:
	.ascii	"UINT32_C(x) (x ##u)\000"
.LASF196:
	.ascii	"__FLT16_MAX_10_EXP__ 4\000"
.LASF951:
	.ascii	"apiID_UXQUEUEMESSAGESWAITING (61u)\000"
.LASF1207:
	.ascii	"traceFREE(pvAddress,uiSize) \000"
.LASF828:
	.ascii	"SYSVIEW_EVTID_TASK_CREATE 8\000"
.LASF257:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF987:
	.ascii	"apiID_XEVENTGROUPCLEARBITS (97u)\000"
.LASF1255:
	.ascii	"portTICK_TYPE_CLEAR_INTERRUPT_MASK_FROM_ISR(x) ( vo"
	.ascii	"id ) x\000"
.LASF1019:
	.ascii	"traceQUEUE_PEEK_FROM_ISR_FAILED(pxQueue) SEGGER_SYS"
	.ascii	"VIEW_RecordU32x2(apiID_OFFSET + apiID_XQUEUEPEEKFRO"
	.ascii	"MISR, SEGGER_SYSVIEW_ShrinkId((U32)pxQueue), SEGGER"
	.ascii	"_SYSVIEW_ShrinkId((U32)pvBuffer))\000"
.LASF638:
	.ascii	"INTMAX_MAX INT64_MAX\000"
.LASF692:
	.ascii	"configMINIMAL_STACK_SIZE ( ( unsigned short ) 60 )\000"
.LASF258:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF449:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF430:
	.ascii	"__ARM_NEON\000"
.LASF734:
	.ascii	"SYSVIEW_FREERTOS_H \000"
.LASF100:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF179:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF519:
	.ascii	"__WIDTH_LONG_LONG 2\000"
.LASF802:
	.ascii	"SEGGER_SYSVIEW_CAN_RESTART 1\000"
.LASF1170:
	.ascii	"configPRECONDITION(X) configASSERT( X )\000"
.LASF820:
	.ascii	"SYSVIEW_EVTID_NOP 0\000"
.LASF1033:
	.ascii	"traceSTREAM_BUFFER_RESET(xStreamBuffer) SEGGER_SYSV"
	.ascii	"IEW_RecordU32 (apiID_OFFSET + apiID_XSTREAMBUFFERRE"
	.ascii	"SET, (U32)xStreamBuffer)\000"
.LASF172:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF1096:
	.ascii	"pdFREERTOS_ERRNO_ENOPROTOOPT 109\000"
.LASF1047:
	.ascii	"traceMOVED_TASK_TO_OVERFLOW_DELAYED_LIST() SEGGER_S"
	.ascii	"YSVIEW_OnTaskStopReady((U32)pxCurrentTCB, (1u << 2)"
	.ascii	")\000"
.LASF945:
	.ascii	"apiID_PCTIMERGETTIMERNAME (55u)\000"
.LASF1235:
	.ascii	"portALLOCATE_SECURE_CONTEXT(ulSecureStackSize) \000"
.LASF915:
	.ascii	"apiID_XTASKCALLAPPLICATIONTASKHOOK (25u)\000"
.LASF355:
	.ascii	"__DA_FBIT__ 31\000"
.LASF67:
	.ascii	"__GXX_ABI_VERSION 1014\000"
.LASF107:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF615:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIVM_X 0\000"
.LASF1218:
	.ascii	"traceEVENT_GROUP_DELETE(xEventGroup) \000"
.LASF601:
	.ascii	"__SEGGER_RTL_U64_MK(H,L) (((__SEGGER_RTL_U64)(__SEG"
	.ascii	"GER_RTL_U32)(H) << 32) + (__SEGGER_RTL_U32)(L))\000"
.LASF735:
	.ascii	"SEGGER_SYSVIEW_H \000"
.LASF1168:
	.ascii	"configASSERT(x) \000"
.LASF597:
	.ascii	"__SEGGER_RTL_SCALED_INTEGER 0\000"
.LASF827:
	.ascii	"SYSVIEW_EVTID_TASK_STOP_READY 7\000"
.LASF1100:
	.ascii	"pdFREERTOS_ERRNO_EALREADY 120\000"
.LASF481:
	.ascii	"__SEGGER_RTL_NAN_FORMAT __SEGGER_RTL_NAN_FORMAT_IEE"
	.ascii	"E\000"
.LASF121:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF724:
	.ascii	"INCLUDE_vTaskDelayUntil 1\000"
.LASF963:
	.ascii	"apiID_XQUEUECRRECEIVEFROMISR (73u)\000"
.LASF976:
	.ascii	"apiID_XQUEUEREMOVEFROMSET (86u)\000"
.LASF1071:
	.ascii	"pdFREERTOS_ERRNO_ENXIO 6\000"
.LASF229:
	.ascii	"__FLT64_NORM_MAX__ 1.1\000"
.LASF747:
	.ascii	"U32 unsigned long\000"
.LASF197:
	.ascii	"__FLT16_DECIMAL_DIG__ 5\000"
.LASF1208:
	.ascii	"traceEVENT_GROUP_CREATE(xEventGroup) \000"
.LASF1272:
	.ascii	"xCoRoutineHandle CoRoutineHandle_t\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF1158:
	.ascii	"INCLUDE_xSemaphoreGetMutexHolder INCLUDE_xQueueGetM"
	.ascii	"utexHolder\000"
.LASF510:
	.ascii	"__SEGGER_RTL_PREFER_BRANCH_FREE_CODE 1\000"
.LASF451:
	.ascii	"__HEAP_SIZE__ 0\000"
.LASF517:
	.ascii	"__WIDTH_INT 0\000"
.LASF443:
	.ascii	"__ARM_FEATURE_MATMUL_INT8\000"
.LASF605:
	.ascii	"__SEGGER_RTL_NAN __builtin_nanf(\"0x7fc00000\")\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 1\000"
.LASF866:
	.ascii	"SYSVIEW_EVTMASK_SYSDESC (1 << SYSVIEW_EVTID_SYSDESC"
	.ascii	")\000"
.LASF1110:
	.ascii	"pdBIG_ENDIAN pdFREERTOS_BIG_ENDIAN\000"
.LASF1091:
	.ascii	"pdFREERTOS_ERRNO_ENMFILE 89\000"
.LASF296:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF653:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF1016:
	.ascii	"traceQUEUE_DELETE(pxQueue) SEGGER_SYSVIEW_RecordU32"
	.ascii	" (apiID_OFFSET + apiID_VQUEUEDELETE, SEGGER_SYSVIEW"
	.ascii	"_ShrinkId((U32)pxQueue))\000"
.LASF311:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF463:
	.ascii	"__SEGGER_RTL_LIBC_CONF_DEFAULTS_H \000"
.LASF972:
	.ascii	"apiID_VQUEUEUNREGISTERQUEUE (82u)\000"
.LASF1278:
	.ascii	"vTaskGetTaskInfo vTaskGetInfo\000"
.LASF220:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF937:
	.ascii	"apiID_ETASKCONFIRMSLEEPMODESTATUS (47u)\000"
.LASF1222:
	.ascii	"traceTASK_NOTIFY_WAIT_BLOCK(uxIndexToWait) \000"
.LASF189:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF684:
	.ascii	"FREERTOS_CONFIG_H \000"
.LASF357:
	.ascii	"__TA_FBIT__ 63\000"
.LASF677:
	.ascii	"UINT16_C(x) (x ##u)\000"
.LASF241:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF1245:
	.ascii	"configUSE_POSIX_ERRNO 0\000"
.LASF500:
	.ascii	"__SEGGER_RTL_CORE_HAS_TBB_TBH 0\000"
.LASF685:
	.ascii	"configPRIO_BITS __NVIC_PRIO_BITS\000"
.LASF555:
	.ascii	"__SEGGER_RTL_OPTIMIZE 0\000"
.LASF434:
	.ascii	"__ARM_PCS 1\000"
.LASF592:
	.ascii	"__SEGGER_RTL_SPECIALIZE_COMPARES 1\000"
.LASF750:
	.ascii	"I64 signed long long\000"
.LASF1062:
	.ascii	"errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY ( -1 )\000"
.LASF342:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF966:
	.ascii	"apiID_XQUEUECREATEMUTEX (76u)\000"
.LASF182:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF569:
	.ascii	"__SEGGER_RTL_BitcastToU64(X) __SEGGER_RTL_BitcastTo"
	.ascii	"U64_inline(X)\000"
.LASF732:
	.ascii	"xPortPendSVHandler PendSV_Handler\000"
.LASF308:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF949:
	.ascii	"apiID_XQUEUEPEEKFROMISR (59u)\000"
.LASF612:
	.ascii	"__SEGGER_RTL_CORE_HAS_UDIV_X 0\000"
.LASF664:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF574:
	.ascii	"__SEGGER_RTL_UMULL_X_SYNTHESIZED \000"
.LASF1284:
	.ascii	"pxContainer pvContainer\000"
.LASF184:
	.ascii	"__LDBL_NORM_MAX__ 1.1\000"
.LASF971:
	.ascii	"apiID_VQUEUEADDTOREGISTRY (81u)\000"
.LASF845:
	.ascii	"SYSVIEW_EVTID_PRINT_FORMATTED 26\000"
.LASF1119:
	.ascii	"portSTACK_TYPE uint32_t\000"
.LASF877:
	.ascii	"SYSVIEW_EVTMASK_PRINT_FORMATTED (1 << SYSVIEW_EVTID"
	.ascii	"_PRINT_FORMATTED)\000"
.LASF1012:
	.ascii	"traceTASK_NOTIFY() SEGGER_SYSVIEW_RecordU32x4(apiID"
	.ascii	"_OFFSET + apiID_XTASKGENERICNOTIFY, SEGGER_SYSVIEW_"
	.ascii	"ShrinkId((U32)pxTCB), ulValue, eAction, (U32)pulPre"
	.ascii	"viousNotificationValue)\000"
.LASF1294:
	.ascii	"SYSVIEW_TIMESTAMP_FREQ (configCPU_CLOCK_HZ)\000"
.LASF109:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF1241:
	.ascii	"portASSERT_IF_IN_ISR() \000"
.LASF143:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF962:
	.ascii	"apiID_XQUEUECRSENDFROMISR (72u)\000"
.LASF721:
	.ascii	"INCLUDE_vTaskDelete 1\000"
.LASF1097:
	.ascii	"pdFREERTOS_ERRNO_EADDRINUSE 112\000"
.LASF667:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF170:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF582:
	.ascii	"__SEGGER_RTL_UMULL_SYNTHESIZED \000"
.LASF1310:
	.ascii	"C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio"
	.ascii	" for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0"
	.ascii	"_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\\SEGGER_SYS"
	.ascii	"VIEW_Config_FreeRTOS.c\000"
.LASF1064:
	.ascii	"errQUEUE_YIELD ( -5 )\000"
.LASF1054:
	.ascii	"PROJDEFS_H \000"
.LASF260:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF642:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF1127:
	.ascii	"portNVIC_PENDSVSET_BIT ( 1UL << 28UL )\000"
.LASF75:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF256:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF324:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF1131:
	.ascii	"portSET_INTERRUPT_MASK_FROM_ISR() ulSetInterruptMas"
	.ascii	"kFromISR()\000"
.LASF1014:
	.ascii	"traceTASK_NOTIFY_WAIT() SEGGER_SYSVIEW_RecordU32x4("
	.ascii	"apiID_OFFSET + apiID_XTASKNOTIFYWAIT, ulBitsToClear"
	.ascii	"OnEntry, ulBitsToClearOnExit, (U32)pulNotificationV"
	.ascii	"alue, xTicksToWait)\000"
.LASF1045:
	.ascii	"traceREADDED_TASK_TO_READY_STATE(pxTCB) \000"
.LASF261:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF368:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF103:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF688:
	.ascii	"configUSE_TICK_HOOK 0\000"
.LASF1037:
	.ascii	"traceSTREAM_BUFFER_RECEIVE(xStreamBuffer,xReceivedL"
	.ascii	"ength) SEGGER_SYSVIEW_RecordU32x2(apiID_OFFSET + ap"
	.ascii	"iID_XSTREAMBUFFERRECEIVE, (U32)xStreamBuffer, (U32)"
	.ascii	"xReceivedLength)\000"
.LASF583:
	.ascii	"__SEGGER_RTL_SMLAL(L,H,X,Y) __SEGGER_RTL_SMLAL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF102:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF1157:
	.ascii	"INCLUDE_xQueueGetMutexHolder 0\000"
.LASF687:
	.ascii	"configUSE_IDLE_HOOK 0\000"
.LASF104:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF1004:
	.ascii	"traceTASK_DELAY_UNTIL(xTimeToWake) SEGGER_SYSVIEW_R"
	.ascii	"ecordVoid (apiID_OFFSET + apiID_VTASKDELAYUNTIL)\000"
.LASF438:
	.ascii	"__ARM_FEATURE_IDIV\000"
.LASF575:
	.ascii	"__SEGGER_RTL_SMULL_HI(X,Y) __SEGGER_RTL_SMULL_HI_fu"
	.ascii	"nc((X), (Y))\000"
.LASF396:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF1172:
	.ascii	"portSOFTWARE_BARRIER() \000"
.LASF151:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF1243:
	.ascii	"configAPPLICATION_ALLOCATED_HEAP 0\000"
.LASF745:
	.ascii	"U16 unsigned short\000"
.LASF531:
	.ascii	"__SEGGER_RTL_U32 unsigned\000"
.LASF1114:
	.ascii	"portCHAR char\000"
.LASF405:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF240:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF942:
	.ascii	"apiID_XTIMERGETTIMERDAEMONTASKHANDLE (52u)\000"
.LASF367:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF959:
	.ascii	"apiID_UXQUEUEMESSAGESWAITINGFROMISR (69u)\000"
.LASF1006:
	.ascii	"traceTASK_PRIORITY_INHERIT(pxTCB,uxPriority) SEGGER"
	.ascii	"_SYSVIEW_RecordU32 (apiID_OFFSET + apiID_VTASKPRIOR"
	.ascii	"ITYINHERIT, (U32)pxMutexHolder)\000"
.LASF1095:
	.ascii	"pdFREERTOS_ERRNO_ENOBUFS 105\000"
.LASF120:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF557:
	.ascii	"__SEGGER_RTL_FORMAT_FLOAT_WIDTH __WIDTH_DOUBLE\000"
.LASF273:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF880:
	.ascii	"SYSVIEW_EVTMASK_TASK_TERMINATE (1 << SYSVIEW_EVTID_"
	.ascii	"TASK_TERMINATE)\000"
.LASF545:
	.ascii	"__SEGGER_RTL_U64_C(X) X ##uLL\000"
.LASF115:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF158:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF502:
	.ascii	"__SEGGER_RTL_CORE_HAS_BFC_BFI_BFX 0\000"
.LASF304:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF1196:
	.ascii	"traceCREATE_COUNTING_SEMAPHORE_FAILED() \000"
.LASF96:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF1238:
	.ascii	"portASSERT_IF_INTERRUPT_PRIORITY_INVALID() \000"
.LASF956:
	.ascii	"apiID_XQUEUERECEIVEFROMISR (66u)\000"
.LASF990:
	.ascii	"apiID_XEVENTGROUPSETBITSFROMISR (100u)\000"
.LASF1082:
	.ascii	"pdFREERTOS_ERRNO_ENOTDIR 20\000"
.LASF581:
	.ascii	"__SEGGER_RTL_UMULL(L,H,X,Y) __SEGGER_RTL_UMULL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF253:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF1305:
	.ascii	"long unsigned int\000"
.LASF354:
	.ascii	"__SA_IBIT__ 16\000"
.LASF392:
	.ascii	"__ARM_FEATURE_UNALIGNED\000"
.LASF853:
	.ascii	"SYSVIEW_EVTMASK_OVERFLOW (1 << SYSVIEW_EVTID_OVERFL"
	.ascii	"OW)\000"
.LASF140:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF398:
	.ascii	"__ARM_FEATURE_MVE\000"
.LASF919:
	.ascii	"apiID_VTASKGETRUNTIMESTATS (29u)\000"
.LASF873:
	.ascii	"SYSVIEW_EVTMASK_STACK_INFO (1 << SYSVIEW_EVTID_STAC"
	.ascii	"K_INFO)\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF525:
	.ascii	"__SEGGER_RTL_CONFIG_CODE_COVERAGE 0\000"
.LASF635:
	.ascii	"UINT32_MAX 4294967295UL\000"
.LASF1078:
	.ascii	"pdFREERTOS_ERRNO_EBUSY 16\000"
.LASF419:
	.ascii	"__SOFTFP__ 1\000"
.LASF503:
	.ascii	"__SEGGER_RTL_CORE_HAS_BLX_REG 1\000"
.LASF1125:
	.ascii	"portDONT_DISCARD __attribute__( ( used ) )\000"
.LASF841:
	.ascii	"SYSVIEW_EVTID_STACK_INFO 21\000"
.LASF1038:
	.ascii	"traceSTREAM_BUFFER_RECEIVE_FAILED(xStreamBuffer) SE"
	.ascii	"GGER_SYSVIEW_RecordU32x2(apiID_OFFSET + apiID_XSTRE"
	.ascii	"AMBUFFERRECEIVE, (U32)xStreamBuffer, 0u)\000"
.LASF142:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF1269:
	.ascii	"xTaskParameters TaskParameters_t\000"
.LASF594:
	.ascii	"__SEGGER_RTL_CLZ_U32_SYNTHESIZED \000"
.LASF79:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF1036:
	.ascii	"traceSTREAM_BUFFER_SEND_FROM_ISR(xStreamBuffer,xByt"
	.ascii	"esSent) SEGGER_SYSVIEW_RecordU32x2(apiID_OFFSET + a"
	.ascii	"piID_XSTREAMBUFFERSENDFROMISR, (U32)xStreamBuffer, "
	.ascii	"(U32)xBytesSent)\000"
.LASF716:
	.ascii	"configTIMER_TASK_PRIORITY ( 2 )\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF790:
	.ascii	"SEGGER_RTT_LOCK() { unsigned int _SEGGER_RTT__LockS"
	.ascii	"tate; __asm volatile (\"mrs   %0, primask  \\n\\t\""
	.ascii	" \"movs  r1, #1       \\n\\t\" \"msr   primask, r1 "
	.ascii	" \\n\\t\" : \"=r\" (_SEGGER_RTT__LockState) : : \"r"
	.ascii	"1\", \"cc\" );\000"
.LASF322:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF884:
	.ascii	"EXTERN extern\000"
.LASF458:
	.ascii	"ARM_MATH_CM0PLUS 1\000"
.LASF701:
	.ascii	"configQUEUE_REGISTRY_SIZE 8\000"
.LASF349:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF98:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF1200:
	.ascii	"traceTASK_INCREMENT_TICK(xTickCount) \000"
.LASF1214:
	.ascii	"traceEVENT_GROUP_CLEAR_BITS(xEventGroup,uxBitsToCle"
	.ascii	"ar) \000"
.LASF113:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF736:
	.ascii	"SEGGER_H \000"
.LASF445:
	.ascii	"__ARM_FEATURE_BF16_VECTOR_ARITHMETIC\000"
.LASF1181:
	.ascii	"traceTASK_SWITCHED_OUT() \000"
.LASF217:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF890:
	.ascii	"apiID_OFFSET (32u)\000"
.LASF206:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF710:
	.ascii	"configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY 0x02\000"
.LASF123:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF683:
	.ascii	"WCHAR_MIN __WCHAR_MIN__\000"
.LASF1116:
	.ascii	"portDOUBLE double\000"
.LASF501:
	.ascii	"__SEGGER_RTL_CORE_HAS_UXT_SXT 1\000"
.LASF1256:
	.ascii	"configENABLE_BACKWARD_COMPATIBILITY 1\000"
.LASF901:
	.ascii	"apiID_XTASKRESUMEFROMISR (11u)\000"
.LASF374:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1\000"
.LASF925:
	.ascii	"apiID_XTASKNOTIFYSTATECLEAR (35u)\000"
.LASF590:
	.ascii	"__SEGGER_RTL_USE_PARA(Para) (void)Para\000"
.LASF164:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF874:
	.ascii	"SYSVIEW_EVTMASK_MODULEDESC (1 << SYSVIEW_EVTID_MODU"
	.ascii	"LEDESC)\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF720:
	.ascii	"INCLUDE_uxTaskPriorityGet 1\000"
.LASF248:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF145:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF778:
	.ascii	"SEGGER_SYSVIEW_ID_BASE 0x10000000\000"
.LASF504:
	.ascii	"__SEGGER_RTL_CORE_HAS_LONG_SHIFT 0\000"
.LASF348:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF450:
	.ascii	"__SES_ARM 1\000"
.LASF495:
	.ascii	"__SEGGER_RTL_CORE_HAS_PKHTB_PKHBT 0\000"
.LASF309:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF331:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF938:
	.ascii	"apiID_XTIMERCREATE (48u)\000"
.LASF891:
	.ascii	"apiID_VTASKALLOCATEMPUREGIONS (1u)\000"
.LASF553:
	.ascii	"__SEGGER_RTL_SIZEOF_WCHAR_T __SIZEOF_WCHAR_T__\000"
.LASF646:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF493:
	.ascii	"__SEGGER_RTL_CORE_HAS_UQADD_UQSUB 0\000"
.LASF1280:
	.ascii	"tmrTIMER_CALLBACK TimerCallbackFunction_t\000"
.LASF457:
	.ascii	"__STM32G071_SUBFAMILY 1\000"
.LASF99:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF194:
	.ascii	"__FLT16_MIN_10_EXP__ (-4)\000"
.LASF1115:
	.ascii	"portFLOAT float\000"
.LASF287:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF914:
	.ascii	"apiID_PVTASKGETTHREADLOCALSTORAGEPOINTER (24u)\000"
.LASF1232:
	.ascii	"configPRE_SLEEP_PROCESSING(x) \000"
.LASF1169:
	.ascii	"configASSERT_DEFINED 0\000"
.LASF812:
	.ascii	"SEGGER_SYSVIEW_VERSION ((SEGGER_SYSVIEW_MAJOR * 100"
	.ascii	"00) + (SEGGER_SYSVIEW_MINOR * 100) + SEGGER_SYSVIEW"
	.ascii	"_REV)\000"
.LASF1077:
	.ascii	"pdFREERTOS_ERRNO_EFAULT 14\000"
.LASF1087:
	.ascii	"pdFREERTOS_ERRNO_EROFS 30\000"
.LASF5:
	.ascii	"__GNUC__ 10\000"
.LASF699:
	.ascii	"configUSE_MUTEXES 1\000"
.LASF516:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_COMPACT 2\000"
.LASF207:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF1263:
	.ascii	"xQueueHandle QueueHandle_t\000"
.LASF829:
	.ascii	"SYSVIEW_EVTID_TASK_INFO 9\000"
.LASF82:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF550:
	.ascii	"__SEGGER_RTL_SIZE_T __SIZE_TYPE__\000"
.LASF306:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF577:
	.ascii	"__SEGGER_RTL_UMULL_HI(X,Y) __SEGGER_RTL_UMULL_HI_fu"
	.ascii	"nc((X), (Y))\000"
.LASF270:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF74:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF576:
	.ascii	"__SEGGER_RTL_SMULL_HI_SYNTHESIZED \000"
.LASF157:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF507:
	.ascii	"__SEGGER_RTL_FLOAT32_C_COMPLEX float _Complex\000"
.LASF215:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 1\000"
.LASF318:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF1022:
	.ascii	"traceQUEUE_SEMAPHORE_RECEIVE(pxQueue) SEGGER_SYSVIE"
	.ascii	"W_RecordU32x4(apiID_OFFSET + apiID_XQUEUEGENERICREC"
	.ascii	"EIVE, SEGGER_SYSVIEW_ShrinkId((U32)pxQueue), SEGGER"
	.ascii	"_SYSVIEW_ShrinkId((U32)0), xTicksToWait, 0)\000"
.LASF410:
	.ascii	"__ARM_ARCH 6\000"
.LASF931:
	.ascii	"apiID_VTASKPRIORITYINHERIT (41u)\000"
.LASF144:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF1303:
	.ascii	"long long int\000"
.LASF969:
	.ascii	"apiID_XQUEUETAKEMUTEXRECURSIVE (79u)\000"
.LASF1049:
	.ascii	"traceISR_EXIT_TO_SCHEDULER() SEGGER_SYSVIEW_RecordE"
	.ascii	"xitISRToScheduler()\000"
.LASF399:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF372:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 1\000"
.LASF395:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF1069:
	.ascii	"pdFREERTOS_ERRNO_EINTR 4\000"
.LASF814:
	.ascii	"SEGGER_SYSVIEW_QUANTA_U32 5\000"
.LASF190:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF459:
	.ascii	"__NO_FPU_ENABLE 1\000"
.LASF616:
	.ascii	"__SEGGER_RTL_VERSION 23000\000"
.LASF83:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF187:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF693:
	.ascii	"configTOTAL_HEAP_SIZE ( ( size_t ) ( 6500 ) )\000"
.LASF427:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF1055:
	.ascii	"pdMS_TO_TICKS(xTimeInMs) ( ( TickType_t ) ( ( ( Tic"
	.ascii	"kType_t ) ( xTimeInMs ) * ( TickType_t ) configTICK"
	.ascii	"_RATE_HZ ) / ( TickType_t ) 1000U ) )\000"
.LASF135:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF421:
	.ascii	"__ARM_FP\000"
.LASF815:
	.ascii	"SEGGER_SYSVIEW_LOG (0u)\000"
.LASF352:
	.ascii	"__HA_IBIT__ 8\000"
.LASF388:
	.ascii	"__ARM_FEATURE_DSP\000"
.LASF137:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF899:
	.ascii	"apiID_VTASKSUSPEND (9u)\000"
.LASF1066:
	.ascii	"pdINTEGRITY_CHECK_VALUE 0x5a5a5a5aUL\000"
.LASF1123:
	.ascii	"portTICK_PERIOD_MS ( ( TickType_t ) 1000 / configTI"
	.ascii	"CK_RATE_HZ )\000"
.LASF133:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF552:
	.ascii	"__SEGGER_RTL_WCHAR_T __WCHAR_TYPE__\000"
.LASF1210:
	.ascii	"traceEVENT_GROUP_SYNC_BLOCK(xEventGroup,uxBitsToSet"
	.ascii	",uxBitsToWaitFor) \000"
.LASF659:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF225:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF1198:
	.ascii	"traceQUEUE_PEEK_FAILED(pxQueue) \000"
.LASF1287:
	.ascii	"configENABLE_FPU 1\000"
.LASF958:
	.ascii	"apiID_XQUEUEISQUEUEFULLFROMISR (68u)\000"
.LASF864:
	.ascii	"SYSVIEW_EVTMASK_SYSTIME_CYCLES (1 << SYSVIEW_EVTID_"
	.ascii	"SYSTIME_CYCLES)\000"
.LASF167:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF89:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF549:
	.ascii	"__SEGGER_RTL_PTRDIFF_T __PTRDIFF_TYPE__\000"
.LASF941:
	.ascii	"apiID_XTIMERISTIMERACTIVE (51u)\000"
.LASF1129:
	.ascii	"portEND_SWITCHING_ISR(xSwitchRequired) do { if( xSw"
	.ascii	"itchRequired ) portNVIC_INT_CTRL_REG = portNVIC_PEN"
	.ascii	"DSVSET_BIT; } while( 0 )\000"
.LASF406:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF1067:
	.ascii	"pdFREERTOS_ERRNO_NONE 0\000"
.LASF185:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF385:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF1101:
	.ascii	"pdFREERTOS_ERRNO_EADDRNOTAVAIL 125\000"
.LASF775:
	.ascii	"SEGGER_SYSVIEW_POST_MORTEM_MODE 0\000"
.LASF839:
	.ascii	"SYSVIEW_EVTID_TIMER_ENTER 19\000"
.LASF756:
	.ascii	"SEGGER_MAX(a,b) (((a) > (b)) ? (a) : (b))\000"
.LASF236:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF244:
	.ascii	"__FLT32X_NORM_MAX__ 1.1\000"
.LASF922:
	.ascii	"apiID_XTASKNOTIFYWAIT (32u)\000"
.LASF943:
	.ascii	"apiID_XTIMERPENDFUNCTIONCALLFROMISR (53u)\000"
.LASF269:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF776:
	.ascii	"SEGGER_SYSVIEW_GET_TIMESTAMP() SEGGER_SYSVIEW_X_Get"
	.ascii	"Timestamp()\000"
.LASF195:
	.ascii	"__FLT16_MAX_EXP__ 16\000"
.LASF1053:
	.ascii	"INCLUDE_pxTaskGetStackStart 1\000"
.LASF906:
	.ascii	"apiID_XTASKGETTICKCOUNT (16u)\000"
.LASF1313:
	.ascii	"SYSVIEW_X_OS_TraceAPI\000"
.LASF252:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF541:
	.ascii	"__SEGGER_RTL_LEAST_I8 int\000"
.LASF1075:
	.ascii	"pdFREERTOS_ERRNO_ENOMEM 12\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF771:
	.ascii	"SEGGER_SYSVIEW_CORE SEGGER_SYSVIEW_CORE_CM0\000"
.LASF431:
	.ascii	"__ARM_NEON_FP\000"
.LASF285:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF1079:
	.ascii	"pdFREERTOS_ERRNO_EEXIST 17\000"
.LASF764:
	.ascii	"SEGGER_PRINTF_FLAG_SIGNSPACE (1 << 2)\000"
.LASF888:
	.ascii	"portSTACK_GROWTH ( -1 )\000"
.LASF739:
	.ascii	"va_arg __builtin_va_arg\000"
.LASF975:
	.ascii	"apiID_XQUEUEADDTOSET (85u)\000"
.LASF1159:
	.ascii	"INCLUDE_xTaskGetHandle 0\000"
.LASF397:
	.ascii	"__ARM_32BIT_STATE\000"
.LASF266:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF347:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF156:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF985:
	.ascii	"apiID_XEVENTGROUPCREATE (95u)\000"
.LASF180:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF700:
	.ascii	"configUSE_COUNTING_SEMAPHORES 1\000"
.LASF198:
	.ascii	"__FLT16_MAX__ 1.1\000"
.LASF1056:
	.ascii	"pdFALSE ( ( BaseType_t ) 0 )\000"
.LASF1102:
	.ascii	"pdFREERTOS_ERRNO_EISCONN 127\000"
.LASF629:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF1265:
	.ascii	"xQueueSetHandle QueueSetHandle_t\000"
.LASF243:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF585:
	.ascii	"__SEGGER_RTL_UMLAL(L,H,X,Y) __SEGGER_RTL_UMLAL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF514:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_IEEE 0\000"
.LASF1298:
	.ascii	"unsigned int\000"
.LASF512:
	.ascii	"__SEGGER_RTL_X_assert __aeabi_assert\000"
.LASF412:
	.ascii	"__GCC_ASM_FLAG_OUTPUTS__\000"
.LASF640:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF652:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF147:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF235:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF842:
	.ascii	"SYSVIEW_EVTID_MODULEDESC 22\000"
.LASF297:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF1086:
	.ascii	"pdFREERTOS_ERRNO_ESPIPE 29\000"
.LASF533:
	.ascii	"__SEGGER_RTL_U16 unsigned short\000"
.LASF832:
	.ascii	"SYSVIEW_EVTID_SYSTIME_CYCLES 12\000"
.LASF233:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF327:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF310:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF904:
	.ascii	"apiID_VTASKSUSPENDALL (14u)\000"
.LASF366:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF681:
	.ascii	"UINTMAX_C(x) (x ##uLL)\000"
.LASF1230:
	.ascii	"configUSE_TICKLESS_IDLE 0\000"
.LASF439:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF1224:
	.ascii	"traceBLOCKING_ON_STREAM_BUFFER_SEND(xStreamBuffer) "
	.ascii	"\000"
.LASF1138:
	.ascii	"portTASK_FUNCTION_PROTO(vFunction,pvParameters) voi"
	.ascii	"d vFunction( void * pvParameters )\000"
.LASF68:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF125:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF414:
	.ascii	"__thumb2__\000"
.LASF1098:
	.ascii	"pdFREERTOS_ERRNO_ETIMEDOUT 116\000"
.LASF897:
	.ascii	"apiID_ETASKGETSTATE (7u)\000"
.LASF400:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF341:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF1057:
	.ascii	"pdTRUE ( ( BaseType_t ) 1 )\000"
.LASF193:
	.ascii	"__FLT16_MIN_EXP__ (-13)\000"
.LASF520:
	.ascii	"__WIDTH_NONE 0\000"
.LASF1233:
	.ascii	"configPOST_SLEEP_PROCESSING(x) \000"
.LASF274:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF387:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF275:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF870:
	.ascii	"SYSVIEW_EVTMASK_ISR_TO_SCHEDULER (1 << SYSVIEW_EVTI"
	.ascii	"D_ISR_TO_SCHEDULER)\000"
.LASF617:
	.ascii	"__SEGGER_RTL_MAX_CATEGORY 5\000"
.LASF466:
	.ascii	"__SEGGER_RTL_ISA_T16 0\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF844:
	.ascii	"SYSVIEW_EVTID_NAME_RESOURCE 25\000"
.LASF980:
	.ascii	"apiID_VLISTINITIALISE (90u)\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF169:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF556:
	.ascii	"__SEGGER_RTL_FORMAT_INT_WIDTH __WIDTH_LONG_LONG\000"
.LASF765:
	.ascii	"SEGGER_PRINTF_FLAG_PRECEED (1 << 3)\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF1074:
	.ascii	"pdFREERTOS_ERRNO_EWOULDBLOCK 11\000"
.LASF758:
	.ascii	"SEGGER_ADDR2PTR(Type,Addr) ( ((Type*)((PTR_ADDR)(Ad"
	.ascii	"dr))))\000"
.LASF916:
	.ascii	"apiID_XTASKGETIDLETASKHANDLE (26u)\000"
.LASF80:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF1197:
	.ascii	"traceQUEUE_SET_SEND traceQUEUE_SEND\000"
.LASF898:
	.ascii	"apiID_VTASKPRIORITYSET (8u)\000"
.LASF361:
	.ascii	"__USA_FBIT__ 16\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF238:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF480:
	.ascii	"__SEGGER_RTL_FP_ABI\000"
.LASF1149:
	.ascii	"PRIVILEGED_FUNCTION \000"
.LASF373:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 1\000"
.LASF1126:
	.ascii	"portNVIC_INT_CTRL_REG ( *( ( volatile uint32_t * ) "
	.ascii	"0xe000ed04 ) )\000"
.LASF917:
	.ascii	"apiID_UXTASKGETSYSTEMSTATE (27u)\000"
.LASF1139:
	.ascii	"portTASK_FUNCTION(vFunction,pvParameters) void vFun"
	.ascii	"ction( void * pvParameters )\000"
.LASF486:
	.ascii	"__SEGGER_RTL_UNLIKELY(X) __builtin_expect((X), 0)\000"
.LASF808:
	.ascii	"SEGGER_SYSVIEW_UNLOCK() SEGGER_RTT_UNLOCK()\000"
.LASF818:
	.ascii	"SEGGER_SYSVIEW_FLAG_APPEND (1u << 6)\000"
.LASF1203:
	.ascii	"traceTIMER_COMMAND_SEND(xTimer,xMessageID,xMessageV"
	.ascii	"alueValue,xReturn) \000"
.LASF833:
	.ascii	"SYSVIEW_EVTID_SYSTIME_US 13\000"
.LASF168:
	.ascii	"__DBL_NORM_MAX__ ((double)1.1)\000"
.LASF1174:
	.ascii	"portPRE_TASK_DELETE_HOOK(pvTaskToDelete,pxYieldPend"
	.ascii	"ing) \000"
.LASF404:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF497:
	.ascii	"__SEGGER_RTL_CORE_HAS_MOVW_MOVT 0\000"
.LASF1193:
	.ascii	"traceTAKE_MUTEX_RECURSIVE(pxMutex) \000"
.LASF1264:
	.ascii	"xSemaphoreHandle SemaphoreHandle_t\000"
.LASF408:
	.ascii	"__arm__ 1\000"
.LASF488:
	.ascii	"__SEGGER_RTL_NEVER_INLINE __attribute__((__noinline"
	.ascii	"__, __noclone__))\000"
.LASF1182:
	.ascii	"traceBLOCKING_ON_QUEUE_RECEIVE(pxQueue) \000"
.LASF993:
	.ascii	"apiID_VEVENTGROUPDELETE (103u)\000"
.LASF265:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF1291:
	.ascii	"tskSTATIC_AND_DYNAMIC_ALLOCATION_POSSIBLE ( ( ( por"
	.ascii	"tUSING_MPU_WRAPPERS == 0 ) && ( configSUPPORT_DYNAM"
	.ascii	"IC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLO"
	.ascii	"CATION == 1 ) ) || ( ( portUSING_MPU_WRAPPERS == 1 "
	.ascii	") && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) ) )\000"
.LASF209:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF900:
	.ascii	"apiID_VTASKRESUME (10u)\000"
.LASF850:
	.ascii	"SYSVIEW_EVTID_EX_MARK 0\000"
.LASF784:
	.ascii	"BUFFER_SIZE_UP (1024)\000"
.LASF539:
	.ascii	"__SEGGER_RTL_LEAST_I16 int\000"
.LASF423:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF1199:
	.ascii	"traceTASK_CREATE_FAILED() \000"
.LASF630:
	.ascii	"INT32_MAX 2147483647L\000"
.LASF746:
	.ascii	"I16 signed short\000"
.LASF1015:
	.ascii	"traceQUEUE_CREATE(pxNewQueue) SEGGER_SYSVIEW_Record"
	.ascii	"U32x3(apiID_OFFSET + apiID_XQUEUEGENERICCREATE, uxQ"
	.ascii	"ueueLength, uxItemSize, ucQueueType)\000"
.LASF1009:
	.ascii	"traceTASK_SUSPEND(pxTCB) SEGGER_SYSVIEW_RecordU32 ("
	.ascii	"apiID_OFFSET + apiID_VTASKSUSPEND, SEGGER_SYSVIEW_S"
	.ascii	"hrinkId((U32)pxTCB))\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF1188:
	.ascii	"traceQUEUE_CREATE_FAILED(ucQueueType) \000"
.LASF806:
	.ascii	"SEGGER_SYSVIEW_ON_EVENT_RECORDED(NumBytes) \000"
.LASF714:
	.ascii	"configMAX_CO_ROUTINE_PRIORITIES ( 2 )\000"
.LASF1124:
	.ascii	"portBYTE_ALIGNMENT 8\000"
.LASF719:
	.ascii	"INCLUDE_vTaskPrioritySet 1\000"
.LASF358:
	.ascii	"__TA_IBIT__ 64\000"
.LASF725:
	.ascii	"INCLUDE_vTaskDelay 1\000"
.LASF855:
	.ascii	"SYSVIEW_EVTMASK_ISR_EXIT (1 << SYSVIEW_EVTID_ISR_EX"
	.ascii	"IT)\000"
.LASF1308:
	.ascii	"pfSendTaskList\000"
.LASF1152:
	.ascii	"pvPortMallocStack pvPortMalloc\000"
.LASF1028:
	.ascii	"traceQUEUE_SEND_FROM_ISR(pxQueue) SEGGER_SYSVIEW_Re"
	.ascii	"cordU32x2(apiID_OFFSET + apiID_XQUEUEGENERICSENDFRO"
	.ascii	"MISR, SEGGER_SYSVIEW_ShrinkId((U32)pxQueue), (U32)p"
	.ascii	"xHigherPriorityTaskWoken)\000"
.LASF433:
	.ascii	"__ARM_ARCH_6M__ 1\000"
.LASF393:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF1080:
	.ascii	"pdFREERTOS_ERRNO_EXDEV 18\000"
.LASF529:
	.ascii	"__SEGGER_RTL_U64 unsigned long long\000"
.LASF523:
	.ascii	"__SEGGER_RTL_SIDE_BY_SIDE 0\000"
.LASF72:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF1273:
	.ascii	"pdTASK_HOOK_CODE TaskHookFunction_t\000"
.LASF191:
	.ascii	"__FLT16_MANT_DIG__ 11\000"
.LASF85:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF515:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_FAST 1\000"
.LASF1229:
	.ascii	"configEXPECTED_IDLE_TIME_BEFORE_SLEEP 2\000"
.LASF984:
	.ascii	"apiID_UXLISTREMOVE (94u)\000"
.LASF604:
	.ascii	"__SEGGER_RTL_INFINITY __builtin_inff()\000"
.LASF1020:
	.ascii	"traceQUEUE_RECEIVE(pxQueue) SEGGER_SYSVIEW_RecordU3"
	.ascii	"2x4(apiID_OFFSET + apiID_XQUEUEGENERICRECEIVE, SEGG"
	.ascii	"ER_SYSVIEW_ShrinkId((U32)pxQueue), SEGGER_SYSVIEW_S"
	.ascii	"hrinkId((U32)0), xTicksToWait, 1)\000"
.LASF267:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF428:
	.ascii	"__ARM_FEATURE_FMA\000"
.LASF105:
	.ascii	"__INT8_C(c) c\000"
.LASF272:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF489:
	.ascii	"__SEGGER_RTL_ALWAYS_INLINE __inline__ __attribute__"
	.ascii	"((__always_inline__))\000"
.LASF713:
	.ascii	"configUSE_CO_ROUTINES 0\000"
.LASF679:
	.ascii	"UINT64_C(x) (x ##uLL)\000"
.LASF1007:
	.ascii	"traceTASK_RESUME(pxTCB) SEGGER_SYSVIEW_RecordU32 (a"
	.ascii	"piID_OFFSET + apiID_VTASKRESUME, SEGGER_SYSVIEW_Shr"
	.ascii	"inkId((U32)pxTCB))\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 1\000"
.LASF162:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF188:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF896:
	.ascii	"apiID_UXTASKPRIORITYGETFROMISR (6u)\000"
.LASF1154:
	.ascii	"configUSE_NEWLIB_REENTRANT 0\000"
.LASF563:
	.ascii	"__SEGGER_RTL_MINIMAL_LOCALE 0\000"
.LASF596:
	.ascii	"__SEGGER_RTL_CLZ_U64_SYNTHESIZED \000"
.LASF1024:
	.ascii	"traceQUEUE_RECEIVE_FROM_ISR_FAILED(pxQueue) SEGGER_"
	.ascii	"SYSVIEW_RecordU32x3(apiID_OFFSET + apiID_XQUEUERECE"
	.ascii	"IVEFROMISR, SEGGER_SYSVIEW_ShrinkId((U32)pxQueue), "
	.ascii	"SEGGER_SYSVIEW_ShrinkId((U32)pvBuffer), (U32)pxHigh"
	.ascii	"erPriorityTaskWoken)\000"
.LASF465:
	.ascii	"__SEGGER_RTL_ARM_CONF_H \000"
.LASF623:
	.ascii	"__SEGGER_RTL_WCHAR_T_DEFINED \000"
.LASF656:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF663:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF1090:
	.ascii	"pdFREERTOS_ERRNO_EFTYPE 79\000"
.LASF568:
	.ascii	"__SEGGER_RTL_BitcastToF32(X) __SEGGER_RTL_BitcastTo"
	.ascii	"F32_inline(X)\000"
.LASF968:
	.ascii	"apiID_XQUEUEGETMUTEXHOLDER (78u)\000"
.LASF759:
	.ascii	"SEGGER_PTR2ADDR(p) ( ((PTR_ADDR)(p)))\000"
.LASF893:
	.ascii	"apiID_VTASKDELAY (3u)\000"
.LASF824:
	.ascii	"SYSVIEW_EVTID_TASK_START_EXEC 4\000"
.LASF1058:
	.ascii	"pdPASS ( pdTRUE )\000"
.LASF691:
	.ascii	"configMAX_PRIORITIES ( 5 )\000"
.LASF383:
	.ascii	"__HAVE_SPECULATION_SAFE_VALUE 1\000"
.LASF291:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF634:
	.ascii	"UINT16_MAX 65535\000"
.LASF478:
	.ascii	"__SEGGER_RTL_FP_HW 0\000"
.LASF1136:
	.ascii	"portEXIT_CRITICAL() vPortExitCritical()\000"
.LASF303:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF391:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF1018:
	.ascii	"traceQUEUE_PEEK_FROM_ISR(pxQueue) SEGGER_SYSVIEW_Re"
	.ascii	"cordU32x2(apiID_OFFSET + apiID_XQUEUEPEEKFROMISR, S"
	.ascii	"EGGER_SYSVIEW_ShrinkId((U32)pxQueue), SEGGER_SYSVIE"
	.ascii	"W_ShrinkId((U32)pvBuffer))\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF1266:
	.ascii	"xQueueSetMemberHandle QueueSetMemberHandle_t\000"
.LASF936:
	.ascii	"apiID_VTASKSTEPTICK (46u)\000"
.LASF1202:
	.ascii	"traceTIMER_CREATE_FAILED() \000"
.LASF1073:
	.ascii	"pdFREERTOS_ERRNO_EAGAIN 11\000"
.LASF785:
	.ascii	"BUFFER_SIZE_DOWN (16)\000"
.LASF416:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF122:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF262:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF1217:
	.ascii	"traceEVENT_GROUP_SET_BITS_FROM_ISR(xEventGroup,uxBi"
	.ascii	"tsToSet) \000"
.LASF1250:
	.ascii	"configMESSAGE_BUFFER_LENGTH_TYPE size_t\000"
.LASF742:
	.ascii	"GLOBAL_H \000"
.LASF560:
	.ascii	"__SEGGER_RTL_FORMAT_CHAR_CLASS 1\000"
.LASF1070:
	.ascii	"pdFREERTOS_ERRNO_EIO 5\000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF513:
	.ascii	"__SEGGER_RTL_X_errno_addr __aeabi_errno_addr\000"
.LASF1030:
	.ascii	"traceSTREAM_BUFFER_CREATE(pxStreamBuffer,xIsMessage"
	.ascii	"Buffer) SEGGER_SYSVIEW_RecordU32x2(apiID_OFFSET + a"
	.ascii	"piID_XSTREAMBUFFERCREATE, (U32)xIsMessageBuffer, (U"
	.ascii	"32)pxStreamBuffer)\000"
.LASF1304:
	.ascii	"long long unsigned int\000"
.LASF148:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF641:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF817:
	.ascii	"SEGGER_SYSVIEW_ERROR (2u)\000"
.LASF317:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF645:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF672:
	.ascii	"INT8_C(x) (x)\000"
.LASF728:
	.ascii	"INCLUDE_xTaskGetCurrentTaskHandle 1\000"
.LASF862:
	.ascii	"SYSVIEW_EVTMASK_TRACE_START (1 << SYSVIEW_EVTID_TRA"
	.ascii	"CE_START)\000"
.LASF330:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF411:
	.ascii	"__APCS_32__ 1\000"
.LASF337:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF831:
	.ascii	"SYSVIEW_EVTID_TRACE_STOP 11\000"
.LASF1011:
	.ascii	"traceTASK_RESUME_FROM_ISR(pxTCB) SEGGER_SYSVIEW_Rec"
	.ascii	"ordU32 (apiID_OFFSET + apiID_XTASKRESUMEFROMISR, SE"
	.ascii	"GGER_SYSVIEW_ShrinkId((U32)pxTCB))\000"
.LASF885:
	.ascii	"EXTERN\000"
.LASF767:
	.ascii	"SEGGER_PRINTF_FLAG_NEGATIVE (1 << 5)\000"
.LASF924:
	.ascii	"apiID_ULTASKNOTIFYTAKE (34u)\000"
.LASF772:
	.ascii	"SEGGER_SYSVIEW_RTT_BUFFER_SIZE 1024\000"
.LASF1132:
	.ascii	"portCLEAR_INTERRUPT_MASK_FROM_ISR(x) vClearInterrup"
	.ascii	"tMaskFromISR( x )\000"
.LASF344:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF1161:
	.ascii	"INCLUDE_uxTaskGetStackHighWaterMark2 0\000"
.LASF1167:
	.ascii	"portCRITICAL_NESTING_IN_TCB 0\000"
.LASF593:
	.ascii	"__SEGGER_RTL_CLZ_U32(X) __SEGGER_RTL_CLZ_U32_inline"
	.ascii	"(X)\000"
.LASF530:
	.ascii	"__SEGGER_RTL_I64 long long\000"
.LASF777:
	.ascii	"SEGGER_SYSVIEW_TIMESTAMP_BITS 32\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF1205:
	.ascii	"traceTIMER_COMMAND_RECEIVED(pxTimer,xMessageID,xMes"
	.ascii	"sageValue) \000"
.LASF1293:
	.ascii	"SYSVIEW_DEVICE_NAME \"STM32G071\"\000"
.LASF293:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF279:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF797:
	.ascii	"SEGGER_SYSVIEW_CPU_CACHE_LINE_SIZE 0\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF1121:
	.ascii	"portMAX_DELAY ( TickType_t ) 0xffffffffUL\000"
.LASF155:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF314:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF38:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF927:
	.ascii	"apiID_VTASKSETTIMEOUTSTATE (37u)\000"
.LASF485:
	.ascii	"__SEGGER_RTL_CORE_HAS_EXT_MUL 0\000"
.LASF237:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF738:
	.ascii	"va_start(v,l) __builtin_va_start((v), l)\000"
.LASF1059:
	.ascii	"pdFAIL ( pdFALSE )\000"
.LASF154:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF774:
	.ascii	"SEGGER_SYSVIEW_USE_STATIC_BUFFER 1\000"
.LASF903:
	.ascii	"apiID_VTASKENDSCHEDULER (13u)\000"
.LASF199:
	.ascii	"__FLT16_NORM_MAX__ 1.1\000"
.LASF325:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF126:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF565:
	.ascii	"__SEGGER_RTL_ATEXIT_COUNT 1\000"
.LASF847:
	.ascii	"SYSVIEW_EVTID_END_CALL 28\000"
.LASF1184:
	.ascii	"traceBLOCKING_ON_QUEUE_SEND(pxQueue) \000"
.LASF535:
	.ascii	"__SEGGER_RTL_U8 unsigned char\000"
.LASF1137:
	.ascii	"portSUPPRESS_TICKS_AND_SLEEP(xExpectedIdleTime) vPo"
	.ascii	"rtSuppressTicksAndSleep( xExpectedIdleTime )\000"
.LASF960:
	.ascii	"apiID_XQUEUEALTGENERICSEND (70u)\000"
.LASF810:
	.ascii	"SEGGER_SYSVIEW_MINOR 10\000"
.LASF867:
	.ascii	"SYSVIEW_EVTMASK_USER_START (1 << SYSVIEW_EVTID_USER"
	.ascii	"_START)\000"
.LASF319:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF554:
	.ascii	"__SEGGER_RTL_SIZEOF_LDOUBLE 8\000"
.LASF779:
	.ascii	"SEGGER_SYSVIEW_ID_SHIFT 2\000"
.LASF1112:
	.ascii	"DEPRECATED_DEFINITIONS_H \000"
.LASF981:
	.ascii	"apiID_VLISTINITIALISEITEM (91u)\000"
.LASF278:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF1141:
	.ascii	"portMEMORY_BARRIER() __asm volatile ( \"\" ::: \"me"
	.ascii	"mory\" )\000"
.LASF909:
	.ascii	"apiID_PCTASKGETTASKNAME (19u)\000"
.LASF338:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF626:
	.ascii	"INT8_MAX 127\000"
.LASF446:
	.ascii	"__ARM_BF16_FORMAT_ALTERNATIVE\000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF116:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF665:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF696:
	.ascii	"configUSE_16_BIT_TICKS 0\000"
.LASF1040:
	.ascii	"traceTASK_DELETE(pxTCB) { SEGGER_SYSVIEW_RecordU32("
	.ascii	"apiID_OFFSET + apiID_VTASKDELETE, SEGGER_SYSVIEW_Sh"
	.ascii	"rinkId((U32)pxTCB)); SYSVIEW_DeleteTask((U32)pxTCB)"
	.ascii	"; }\000"
.LASF460:
	.ascii	"INC_FREERTOS_H \000"
.LASF613:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIV_X 0\000"
.LASF546:
	.ascii	"__SEGGER_RTL_SIZEOF_INT 4\000"
.LASF547:
	.ascii	"__SEGGER_RTL_SIZEOF_LONG 4\000"
.LASF813:
	.ascii	"SEGGER_SYSVIEW_INFO_SIZE 9\000"
.LASF1089:
	.ascii	"pdFREERTOS_ERRNO_EBADE 50\000"
.LASF1190:
	.ascii	"traceCREATE_MUTEX_FAILED() \000"
.LASF935:
	.ascii	"apiID_VTASKSETTASKNUMBER (45u)\000"
.LASF801:
	.ascii	"SEGGER_SYSVIEW_USE_INTERNAL_RECORDER 0\000"
.LASF651:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF1220:
	.ascii	"tracePEND_FUNC_CALL_FROM_ISR(xFunctionToPend,pvPara"
	.ascii	"meter1,ulParameter2,ret) \000"
.LASF1189:
	.ascii	"traceCREATE_MUTEX(pxNewQueue) \000"
.LASF1023:
	.ascii	"traceQUEUE_RECEIVE_FROM_ISR(pxQueue) SEGGER_SYSVIEW"
	.ascii	"_RecordU32x3(apiID_OFFSET + apiID_XQUEUERECEIVEFROM"
	.ascii	"ISR, SEGGER_SYSVIEW_ShrinkId((U32)pxQueue), SEGGER_"
	.ascii	"SYSVIEW_ShrinkId((U32)pvBuffer), (U32)pxHigherPrior"
	.ascii	"ityTaskWoken)\000"
.LASF350:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF353:
	.ascii	"__SA_FBIT__ 15\000"
.LASF718:
	.ascii	"configTIMER_TASK_STACK_DEPTH ( 80 )\000"
.LASF506:
	.ascii	"__SEGGER_RTL_USE_FPU_FOR_IDIV 0\000"
.LASF881:
	.ascii	"SYSVIEW_EVTMASK_EX (1 << SYSVIEW_EVTID_EX)\000"
.LASF1041:
	.ascii	"traceTASK_CREATE(pxNewTCB) if (pxNewTCB != NULL) { "
	.ascii	"SEGGER_SYSVIEW_OnTaskCreate((U32)pxNewTCB); SYSVIEW"
	.ascii	"_AddTask((U32)pxNewTCB, &(pxNewTCB->pcTaskName[0]),"
	.ascii	" pxNewTCB->uxPriority, (U32)pxNewTCB->pxStack, ((U3"
	.ascii	"2)pxNewTCB->pxTopOfStack - (U32)pxNewTCB->pxStack) "
	.ascii	"); }\000"
.LASF1274:
	.ascii	"portTICK_RATE_MS portTICK_PERIOD_MS\000"
.LASF1027:
	.ascii	"traceQUEUE_SEND_FAILED(pxQueue) SEGGER_SYSVIEW_Reco"
	.ascii	"rdU32x4(apiID_OFFSET + apiID_XQUEUEGENERICSEND, SEG"
	.ascii	"GER_SYSVIEW_ShrinkId((U32)pxQueue), (U32)pvItemToQu"
	.ascii	"eue, xTicksToWait, xCopyPosition)\000"
.LASF435:
	.ascii	"__ARM_EABI__ 1\000"
.LASF591:
	.ascii	"__SEGGER_RTL_SIDE_BY_SIZE 0\000"
.LASF643:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF448:
	.ascii	"__ELF__ 1\000"
.LASF991:
	.ascii	"apiID_XEVENTGROUPSYNC (101u)\000"
.LASF415:
	.ascii	"__THUMBEL__ 1\000"
.LASF1034:
	.ascii	"traceSTREAM_BUFFER_SEND(xStreamBuffer,xBytesSent) S"
	.ascii	"EGGER_SYSVIEW_RecordU32x2(apiID_OFFSET + apiID_XSTR"
	.ascii	"EAMBUFFERSEND, (U32)xStreamBuffer, (U32)xBytesSent)"
	.ascii	"\000"
.LASF1164:
	.ascii	"configUSE_DAEMON_TASK_STARTUP_HOOK 0\000"
.LASF622:
	.ascii	"__SEGGER_RTL_SIZE_T_DEFINED \000"
.LASF332:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF731:
	.ascii	"vPortSVCHandler SVC_Handler\000"
.LASF639:
	.ascii	"UINTMAX_MAX UINT64_MAX\000"
.LASF1068:
	.ascii	"pdFREERTOS_ERRNO_ENOENT 2\000"
.LASF871:
	.ascii	"SYSVIEW_EVTMASK_TIMER_ENTER (1 << SYSVIEW_EVTID_TIM"
	.ascii	"ER_ENTER)\000"
.LASF1281:
	.ascii	"pdTASK_CODE TaskFunction_t\000"
.LASF608:
	.ascii	"__SEGGER_RTL_HIDE(X) __c_ ##X\000"
.LASF761:
	.ascii	"SEGGER_PTR_DISTANCE(p0,p1) (SEGGER_PTR2ADDR(p0) - S"
	.ascii	"EGGER_PTR2ADDR(p1))\000"
.LASF321:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF1195:
	.ascii	"traceCREATE_COUNTING_SEMAPHORE() \000"
.LASF346:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF1315:
	.ascii	"_cbSendSystemDesc\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF402:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF417:
	.ascii	"__ARM_ARCH_ISA_THUMB 1\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 1\000"
.LASF1251:
	.ascii	"configINITIAL_TICK_COUNT 0\000"
.LASF562:
	.ascii	"__SEGGER_RTL_FORMAT_WIDTH_PRECISION\000"
.LASF930:
	.ascii	"apiID_XTASKGETSCHEDULERSTATE (40u)\000"
.LASF1223:
	.ascii	"traceSTREAM_BUFFER_CREATE_STATIC_FAILED(xReturn,xIs"
	.ascii	"MessageBuffer) \000"
.LASF773:
	.ascii	"SEGGER_SYSVIEW_RTT_CHANNEL 1\000"
.LASF1194:
	.ascii	"traceTAKE_MUTEX_RECURSIVE_FAILED(pxMutex) \000"
.LASF456:
	.ascii	"STM32G071xx 1\000"
.LASF619:
	.ascii	"__SEGGER_RTL_SIZE_MAX 4294967295uL\000"
.LASF689:
	.ascii	"configCPU_CLOCK_HZ ( 16000000 )\000"
.LASF940:
	.ascii	"apiID_VTIMERSETTIMERID (50u)\000"
.LASF300:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF174:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF961:
	.ascii	"apiID_XQUEUEALTGENERICRECEIVE (71u)\000"
.LASF1117:
	.ascii	"portLONG long\000"
.LASF705:
	.ascii	"configUSE_RECURSIVE_MUTEXES 1\000"
.LASF1044:
	.ascii	"traceMOVED_TASK_TO_READY_STATE(pxTCB) SEGGER_SYSVIE"
	.ascii	"W_OnTaskStartReady((U32)pxTCB)\000"
.LASF284:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF461:
	.ascii	"__SEGGER_RTL_STDDEF_H \000"
.LASF1134:
	.ascii	"portENABLE_INTERRUPTS() __asm volatile ( \" cpsie i"
	.ascii	" \" ::: \"memory\" )\000"
.LASF786:
	.ascii	"SEGGER_RTT_PRINTF_BUFFER_SIZE (64u)\000"
.LASF722:
	.ascii	"INCLUDE_vTaskCleanUpResources 1\000"
.LASF294:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF1219:
	.ascii	"tracePEND_FUNC_CALL(xFunctionToPend,pvParameter1,ul"
	.ascii	"Parameter2,ret) \000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF1248:
	.ascii	"configSTACK_DEPTH_TYPE uint16_t\000"
.LASF467:
	.ascii	"__SEGGER_RTL_ISA_T32 1\000"
.LASF799:
	.ascii	"SEGGER_SYSVIEW_MAX_STRING_LEN 128\000"
.LASF161:
	.ascii	"__DBL_DIG__ 15\000"
.LASF280:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF509:
	.ascii	"__SEGGER_RTL_LDOUBLE_C_COMPLEX long double _Complex"
	.ascii	"\000"
.LASF706:
	.ascii	"configUSE_MALLOC_FAILED_HOOK 0\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF1135:
	.ascii	"portENTER_CRITICAL() vPortEnterCritical()\000"
.LASF559:
	.ascii	"__SEGGER_RTL_FORMAT_WIDTH_PRECISION 1\000"
.LASF526:
	.ascii	"__SEGGER_RTL_INCLUDE_GNU_API 0\000"
.LASF114:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF983:
	.ascii	"apiID_VLISTINSERTEND (93u)\000"
.LASF1187:
	.ascii	"tracePOST_MOVED_TASK_TO_READY_STATE(pxTCB) \000"
.LASF178:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF846:
	.ascii	"SYSVIEW_EVTID_NUMMODULES 27\000"
.LASF1155:
	.ascii	"INCLUDE_xTaskDelayUntil INCLUDE_vTaskDelayUntil\000"
.LASF496:
	.ascii	"__SEGGER_RTL_CORE_HAS_ADDW_SUBW 0\000"
.LASF757:
	.ascii	"SEGGER_USE_PARA(Para) (void)Para\000"
.LASF518:
	.ascii	"__WIDTH_LONG 1\000"
.LASF543:
	.ascii	"__SEGGER_RTL_U32_C(X) X ##u\000"
.LASF441:
	.ascii	"__ARM_FEATURE_CDE\000"
.LASF302:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF1270:
	.ascii	"xTaskStatusType TaskStatus_t\000"
.LASF840:
	.ascii	"SYSVIEW_EVTID_TIMER_EXIT 20\000"
.LASF572:
	.ascii	"__SEGGER_RTL_SMULL_X_SYNTHESIZED \000"
.LASF1171:
	.ascii	"configPRECONDITION_DEFINED 0\000"
.LASF1311:
	.ascii	"C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio"
	.ascii	" for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0"
	.ascii	"_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\000"
.LASF708:
	.ascii	"configGENERATE_RUN_TIME_STATS 0\000"
.LASF658:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF749:
	.ascii	"U64 unsigned long long\000"
.LASF1301:
	.ascii	"short int\000"
.LASF1234:
	.ascii	"portTASK_USES_FLOATING_POINT() \000"
.LASF1008:
	.ascii	"traceINCREASE_TICK_COUNT(xTicksToJump) SEGGER_SYSVI"
	.ascii	"EW_RecordU32 (apiID_OFFSET + apiID_VTASKSTEPTICK, x"
	.ascii	"TicksToJump)\000"
.LASF119:
	.ascii	"__UINT16_C(c) c\000"
.LASF425:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF1031:
	.ascii	"traceSTREAM_BUFFER_CREATE_FAILED(xIsMessageBuffer) "
	.ascii	"SEGGER_SYSVIEW_RecordU32x2(apiID_OFFSET + apiID_XST"
	.ascii	"REAMBUFFERCREATE, (U32)xIsMessageBuffer, 0u)\000"
.LASF364:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF453:
	.ascii	"__SEGGER_LINKER 1\000"
.LASF370:
	.ascii	"__NO_INLINE__ 1\000"
.LASF698:
	.ascii	"configUSE_TASK_NOTIFICATIONS 1\000"
.LASF479:
	.ascii	"__SEGGER_RTL_FP_HW\000"
.LASF1289:
	.ascii	"configRUN_FREERTOS_SECURE_ONLY 0\000"
.LASF782:
	.ascii	"SEGGER_RTT_MAX_NUM_UP_BUFFERS (3)\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF811:
	.ascii	"SEGGER_SYSVIEW_REV 0\000"
.LASF440:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF173:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF8:
	.ascii	"__VERSION__ \"10.3.1 20210824 (release)\"\000"
.LASF93:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF221:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF1113:
	.ascii	"PORTMACRO_H \000"
.LASF1039:
	.ascii	"traceSTREAM_BUFFER_RECEIVE_FROM_ISR(xStreamBuffer,x"
	.ascii	"ReceivedLength) SEGGER_SYSVIEW_RecordU32x2(apiID_OF"
	.ascii	"FSET + apiID_XSTREAMBUFFERRECEIVEFROMISR, (U32)xStr"
	.ascii	"eamBuffer, (U32)xReceivedLength)\000"
.LASF1104:
	.ascii	"pdFREERTOS_ERRNO_ENOMEDIUM 135\000"
.LASF1242:
	.ascii	"configUSE_PORT_OPTIMISED_TASK_SELECTION 0\000"
.LASF580:
	.ascii	"__SEGGER_RTL_SMULL_SYNTHESIZED \000"
.LASF974:
	.ascii	"apiID_XQUEUECREATESET (84u)\000"
.LASF989:
	.ascii	"apiID_XEVENTGROUPSETBITS (99u)\000"
.LASF595:
	.ascii	"__SEGGER_RTL_CLZ_U64(X) __SEGGER_RTL_CLZ_U64_inline"
	.ascii	"(X)\000"
.LASF455:
	.ascii	"__STM32G0xx_FAMILY 1\000"
.LASF876:
	.ascii	"SYSVIEW_EVTMASK_NAME_RESOURCE (1 << SYSVIEW_EVTID_N"
	.ascii	"AME_RESOURCE)\000"
.LASF468:
	.ascii	"__SEGGER_RTL_ISA_ARM 2\000"
.LASF654:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF1307:
	.ascii	"pfGetTime\000"
.LASF316:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF647:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF947:
	.ascii	"apiID_XTIMERGENERICCOMMAND (57u)\000"
.LASF1042:
	.ascii	"traceTASK_PRIORITY_SET(pxTask,uxNewPriority) { SEGG"
	.ascii	"ER_SYSVIEW_RecordU32x2(apiID_OFFSET+apiID_VTASKPRIO"
	.ascii	"RITYSET, SEGGER_SYSVIEW_ShrinkId((U32)pxTCB), uxNew"
	.ascii	"Priority ); SYSVIEW_UpdateTask((U32)pxTask, &(pxTas"
	.ascii	"k->pcTaskName[0]), uxNewPriority, (U32)pxTask->pxSt"
	.ascii	"ack, 0 ); }\000"
.LASF670:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF97:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF872:
	.ascii	"SYSVIEW_EVTMASK_TIMER_EXIT (1 << SYSVIEW_EVTID_TIME"
	.ascii	"R_EXIT)\000"
.LASF992:
	.ascii	"apiID_XEVENTGROUPGETBITSFROMISR (102u)\000"
.LASF81:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF213:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF1163:
	.ascii	"INCLUDE_xTimerPendFunctionCall 0\000"
.LASF1176:
	.ascii	"portPOINTER_SIZE_TYPE uint32_t\000"
.LASF1221:
	.ascii	"traceTASK_NOTIFY_TAKE_BLOCK(uxIndexToWait) \000"
.LASF703:
	.ascii	"configUSE_TIME_SLICING 1\000"
.LASF1151:
	.ascii	"FREERTOS_SYSTEM_CALL \000"
.LASF290:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF301:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF912:
	.ascii	"apiID_XTASKGETAPPLICATIONTASKTAG (22u)\000"
.LASF939:
	.ascii	"apiID_PVTIMERGETTIMERID (49u)\000"
.LASF544:
	.ascii	"__SEGGER_RTL_I64_C(X) X ##LL\000"
.LASF882:
	.ascii	"SYSVIEW_EVTMASK_ALL_INTERRUPTS ( SYSVIEW_EVTMASK_IS"
	.ascii	"R_ENTER | SYSVIEW_EVTMASK_ISR_EXIT | SYSVIEW_EVTMAS"
	.ascii	"K_ISR_TO_SCHEDULER)\000"
.LASF986:
	.ascii	"apiID_XEVENTGROUPWAITBITS (96u)\000"
.LASF542:
	.ascii	"__SEGGER_RTL_I32_C(X) X\000"
.LASF394:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF271:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF558:
	.ascii	"__SEGGER_RTL_FORMAT_WCHAR 1\000"
.LASF754:
	.ascii	"SEGGER_COUNTOF(a) (sizeof((a))/sizeof((a)[0]))\000"
.LASF793:
	.ascii	"SEGGER_SYSVIEW_CORE_CM3 2\000"
.LASF386:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF858:
	.ascii	"SYSVIEW_EVTMASK_TASK_START_READY (1 << SYSVIEW_EVTI"
	.ascii	"D_TASK_START_READY)\000"
.LASF110:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF447:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF609:
	.ascii	"__SEGGER_RTL_RODATA const\000"
.LASF1109:
	.ascii	"pdLITTLE_ENDIAN pdFREERTOS_LITTLE_ENDIAN\000"
.LASF1226:
	.ascii	"portCONFIGURE_TIMER_FOR_RUN_TIME_STATS() \000"
.LASF313:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF124:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF218:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF202:
	.ascii	"__FLT16_DENORM_MIN__ 1.1\000"
.LASF328:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF129:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF952:
	.ascii	"apiID_UXQUEUESPACESAVAILABLE (62u)\000"
.LASF887:
	.ascii	"SEGGER_SYSVIEW_OnUserStop SEGGER_SYSVIEW_MarkStop\000"
.LASF1240:
	.ascii	"mtCOVERAGE_TEST_DELAY() \000"
.LASF809:
	.ascii	"SEGGER_SYSVIEW_MAJOR 3\000"
.LASF821:
	.ascii	"SYSVIEW_EVTID_OVERFLOW 1\000"
.LASF733:
	.ascii	"xPortSysTickHandler SysTick_Handler\000"
.LASF1290:
	.ascii	"configRUN_ADDITIONAL_TESTS 0\000"
.LASF1288:
	.ascii	"configENABLE_TRUSTZONE 1\000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF1246:
	.ascii	"configSUPPORT_STATIC_ALLOCATION 0\000"
.LASF637:
	.ascii	"INTMAX_MIN INT64_MIN\000"
.LASF763:
	.ascii	"SEGGER_PRINTF_FLAG_SIGNFORCE (1 << 1)\000"
.LASF660:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF1140:
	.ascii	"portNOP() \000"
.LASF422:
	.ascii	"__ARM_FP16_FORMAT_IEEE 1\000"
.LASF288:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF1213:
	.ascii	"traceEVENT_GROUP_WAIT_BITS_END(xEventGroup,uxBitsTo"
	.ascii	"WaitFor,xTimeoutOccurred) ( void ) xTimeoutOccurred"
	.ascii	"\000"
.LASF948:
	.ascii	"apiID_XQUEUEGENERICSEND (58u)\000"
.LASF964:
	.ascii	"apiID_XQUEUECRSEND (74u)\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF800:
	.ascii	"SEGGER_SYSVIEW_PRINTF_IMPLICIT_FORMAT 0\000"
.LASF965:
	.ascii	"apiID_XQUEUECRRECEIVE (75u)\000"
.LASF282:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF470:
	.ascii	"__SEGGER_RTL_TARGET_ISA __SEGGER_RTL_ISA_T16\000"
.LASF283:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF1277:
	.ascii	"pcQueueGetQueueName pcQueueGetName\000"
.LASF632:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF578:
	.ascii	"__SEGGER_RTL_UMULL_HI_SYNTHESIZED \000"
.LASF760:
	.ascii	"SEGGER_PTR2PTR(Type,p) ( ((Type*)(p)))\000"
.LASF1107:
	.ascii	"pdFREERTOS_LITTLE_ENDIAN 0\000"
.LASF748:
	.ascii	"I32 signed long\000"
.LASF712:
	.ascii	"configMAX_SYSCALL_INTERRUPT_PRIORITY ( configLIBRAR"
	.ascii	"Y_MAX_SYSCALL_INTERRUPT_PRIORITY << (8 - configPRIO"
	.ascii	"_BITS) )\000"
.LASF192:
	.ascii	"__FLT16_DIG__ 3\000"
.LASF586:
	.ascii	"__SEGGER_RTL_UMLAL_SYNTHESIZED \000"
.LASF484:
	.ascii	"__SEGGER_RTL_CORE_HAS_MLS 0\000"
.LASF851:
	.ascii	"SYSVIEW_EVTID_EX_NAME_MARKER 1\000"
.LASF997:
	.ascii	"apiID_XSTREAMBUFFERRESET (107u)\000"
.LASF603:
	.ascii	"__SEGGER_RTL_I64_L(X) ((__SEGGER_RTL_U32)(__SEGGER_"
	.ascii	"RTL_U64)(X))\000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF473:
	.ascii	"__SEGGER_RTL_BYTE_ORDER (-1)\000"
.LASF360:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF492:
	.ascii	"__SEGGER_RTL_CORE_HAS_CLZ 0\000"
.LASF305:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF320:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF602:
	.ascii	"__SEGGER_RTL_I64_H(X) ((__SEGGER_RTL_I32)((__SEGGER"
	.ascii	"_RTL_I64)(X) >> 32))\000"
.LASF176:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF573:
	.ascii	"__SEGGER_RTL_UMULL_X(X,Y) __SEGGER_RTL_UMULL_X_func"
	.ascii	"((X), (Y))\000"
.LASF869:
	.ascii	"SYSVIEW_EVTMASK_IDLE (1 << SYSVIEW_EVTID_IDLE)\000"
.LASF923:
	.ascii	"apiID_VTASKNOTIFYGIVEFROMISR (33u)\000"
.LASF87:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF857:
	.ascii	"SYSVIEW_EVTMASK_TASK_STOP_EXEC (1 << SYSVIEW_EVTID_"
	.ascii	"TASK_STOP_EXEC)\000"
.LASF1257:
	.ascii	"configPRINTF(X) \000"
.LASF76:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF950:
	.ascii	"apiID_XQUEUEGENERICRECEIVE (60u)\000"
.LASF222:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF94:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF932:
	.ascii	"apiID_XTASKPRIORITYDISINHERIT (42u)\000"
.LASF707:
	.ascii	"configUSE_APPLICATION_TASK_TAG 0\000"
.LASF1130:
	.ascii	"portYIELD_FROM_ISR(x) portEND_SWITCHING_ISR( x )\000"
.LASF106:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF487:
	.ascii	"__SEGGER_RTL_THREAD __thread\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF674:
	.ascii	"INT32_C(x) (x)\000"
.LASF183:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF1302:
	.ascii	"short unsigned int\000"
.LASF281:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF219:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF201:
	.ascii	"__FLT16_EPSILON__ 1.1\000"
.LASF607:
	.ascii	"__SEGGER_RTL_HUGE_VALF __builtin_huge_valf()\000"
.LASF854:
	.ascii	"SYSVIEW_EVTMASK_ISR_ENTER (1 << SYSVIEW_EVTID_ISR_E"
	.ascii	"NTER)\000"
.LASF805:
	.ascii	"SEGGER_SYSVIEW_SYNC_PERIOD_SHIFT 8\000"
.LASF606:
	.ascii	"__SEGGER_RTL_HUGE_VAL __builtin_huge_val()\000"
.LASF418:
	.ascii	"__ARMEL__ 1\000"
.LASF1211:
	.ascii	"traceEVENT_GROUP_SYNC_END(xEventGroup,uxBitsToSet,u"
	.ascii	"xBitsToWaitFor,xTimeoutOccurred) ( void ) xTimeoutO"
	.ascii	"ccurred\000"
.LASF522:
	.ascii	"__WIDTH_DOUBLE 2\000"
.LASF1236:
	.ascii	"configINCLUDE_APPLICATION_DEFINED_PRIVILEGED_FUNCTI"
	.ascii	"ONS 0\000"
.LASF333:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF511:
	.ascii	"__SEGGER_RTL_VA_LIST __builtin_va_list\000"
.LASF538:
	.ascii	"__SEGGER_RTL_LEAST_U16 unsigned\000"
.LASF1175:
	.ascii	"portSETUP_TCB(pxTCB) ( void ) pxTCB\000"
.LASF1084:
	.ascii	"pdFREERTOS_ERRNO_EINVAL 22\000"
.LASF78:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF999:
	.ascii	"apiID_XSTREAMBUFFERSENDFROMISR (109u)\000"
.LASF390:
	.ascii	"__ARM_FEATURE_SAT\000"
.LASF537:
	.ascii	"__SEGGER_RTL_LEAST_U32 unsigned\000"
.LASF1092:
	.ascii	"pdFREERTOS_ERRNO_ENOTEMPTY 90\000"
.LASF1076:
	.ascii	"pdFREERTOS_ERRNO_EACCES 13\000"
.LASF409:
	.ascii	"__ARM_ARCH\000"
.LASF214:
	.ascii	"__FLT32_NORM_MAX__ 1.1\000"
.LASF71:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF766:
	.ascii	"SEGGER_PRINTF_FLAG_ZEROPAD (1 << 4)\000"
.LASF743:
	.ascii	"U8 unsigned char\000"
.LASF796:
	.ascii	"SEGGER_SYSVIEW_DEVICE_NAME \"undefined device\"\000"
.LASF1258:
	.ascii	"configMAX(a,b) ( ( ( a ) > ( b ) ) ? ( a ) : ( b ) "
	.ascii	")\000"
.LASF587:
	.ascii	"__SEGGER_RTL_DIVMOD_U32(Q,R,N,D) do { Q = N / D; R "
	.ascii	"= N - Q*D; } while (0)\000"
.LASF803:
	.ascii	"SEGGER_SYSVIEW_START_ON_INIT 0\000"
.LASF996:
	.ascii	"apiID_VSTREAMBUFFERDELETE (106u)\000"
.LASF1216:
	.ascii	"traceEVENT_GROUP_SET_BITS(xEventGroup,uxBitsToSet) "
	.ascii	"\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF863:
	.ascii	"SYSVIEW_EVTMASK_TRACE_STOP (1 << SYSVIEW_EVTID_TRAC"
	.ascii	"E_STOP)\000"
.LASF781:
	.ascii	"SEGGER_RTT_CONF_H \000"
.LASF505:
	.ascii	"__SEGGER_RTL_FAST_CODE_SECTION(X) __attribute__((__"
	.ascii	"section__(\".fast.\" X)))\000"
.LASF472:
	.ascii	"__SEGGER_RTL_INCLUDE_GNU_FP16_API 1\000"
.LASF1253:
	.ascii	"portTICK_TYPE_EXIT_CRITICAL() \000"
.LASF403:
	.ascii	"__ARM_FEATURE_SIMD32\000"
.LASF614:
	.ascii	"__SEGGER_RTL_CORE_HAS_UDIVM_X 0\000"
.LASF1105:
	.ascii	"pdFREERTOS_ERRNO_EILSEQ 138\000"
.LASF84:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF946:
	.ascii	"apiID_XTIMERCREATETIMERTASK (56u)\000"
.LASF1192:
	.ascii	"traceGIVE_MUTEX_RECURSIVE_FAILED(pxMutex) \000"
.LASF1145:
	.ascii	"portHAS_STACK_OVERFLOW_CHECKING 0\000"
.LASF108:
	.ascii	"__INT16_C(c) c\000"
.LASF704:
	.ascii	"configCHECK_FOR_STACK_OVERFLOW 0\000"
.LASF929:
	.ascii	"apiID_VTASKMISSEDYIELD (39u)\000"
.LASF356:
	.ascii	"__DA_IBIT__ 32\000"
.LASF783:
	.ascii	"SEGGER_RTT_MAX_NUM_DOWN_BUFFERS (3)\000"
.LASF205:
	.ascii	"__FLT16_HAS_QUIET_NAN__ 1\000"
.LASF1286:
	.ascii	"configENABLE_MPU 0\000"
.LASF695:
	.ascii	"configUSE_TRACE_FACILITY 1\000"
.LASF228:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF1133:
	.ascii	"portDISABLE_INTERRUPTS() __asm volatile ( \" cpsid "
	.ascii	"i \" ::: \"memory\" )\000"
.LASF334:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF163:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF600:
	.ascii	"__SEGGER_RTL_U64_L(X) ((__SEGGER_RTL_U32)(__SEGGER_"
	.ascii	"RTL_U64)(X))\000"
.LASF1312:
	.ascii	"SEGGER_SYSVIEW_OS_API\000"
.LASF755:
	.ascii	"SEGGER_MIN(a,b) (((a) < (b)) ? (a) : (b))\000"
.LASF1249:
	.ascii	"configRUN_TIME_COUNTER_TYPE uint32_t\000"
.LASF1156:
	.ascii	"INCLUDE_xTaskAbortDelay 0\000"
.LASF1247:
	.ascii	"configSUPPORT_DYNAMIC_ALLOCATION 1\000"
.LASF905:
	.ascii	"apiID_XTASKRESUMEALL (15u)\000"
.LASF711:
	.ascii	"configKERNEL_INTERRUPT_PRIORITY ( configLIBRARY_LOW"
	.ascii	"EST_INTERRUPT_PRIORITY << (8 - configPRIO_BITS) )\000"
.LASF1261:
	.ascii	"portTickType TickType_t\000"
.LASF1260:
	.ascii	"eTaskStateGet eTaskGetState\000"
.LASF295:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF231:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF892:
	.ascii	"apiID_VTASKDELETE (2u)\000"
.LASF998:
	.ascii	"apiID_XSTREAMBUFFERSEND (108u)\000"
.LASF970:
	.ascii	"apiID_XQUEUEGIVEMUTEXRECURSIVE (80u)\000"
.LASF90:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF1052:
	.ascii	"INCLUDE_xTaskGetIdleTaskHandle 1\000"
.LASF160:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF277:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF825:
	.ascii	"SYSVIEW_EVTID_TASK_STOP_EXEC 5\000"
.LASF1048:
	.ascii	"traceMOVED_TASK_TO_SUSPENDED_LIST(pxTCB) SEGGER_SYS"
	.ascii	"VIEW_OnTaskStopReady((U32)pxTCB, ((3u << 3) | 3))\000"
.LASF644:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF70:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF669:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF673:
	.ascii	"INT16_C(x) (x)\000"
.LASF889:
	.ascii	"SYSVIEW_FREERTOS_MAX_NOF_TASKS 8\000"
.LASF442:
	.ascii	"__ARM_FEATURE_CDE_COPROC\000"
.LASF978:
	.ascii	"apiID_XQUEUESELECTFROMSETFROMISR (88u)\000"
.LASF729:
	.ascii	"INCLUDE_xEventGroupSetBitFromISR 1\000"
.LASF933:
	.ascii	"apiID_XTASKGENERICCREATE (43u)\000"
.LASF648:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
	.ident	"GCC: (based on arm-10.3-2021.10 GCC) 10.3.1 20210824 (release)"
