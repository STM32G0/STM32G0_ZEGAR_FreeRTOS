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
	.file	"mcp79410.c"
	.text
.Ltext0:
	.section	.text.i2c_rtcc_wr,"ax",%progbits
	.align	1
	.global	i2c_rtcc_wr
	.syntax unified
	.code	16
	.thumb_func
	.type	i2c_rtcc_wr, %function
i2c_rtcc_wr:
.LFB0:
	.file 1 "C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\\mcp79410.c"
	.loc 1 16 55
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #20
.LCFI1:
	movs	r2, r0
	mov	r3, sp
	adds	r3, r3, #7
	strb	r2, [r3]
	mov	r3, sp
	adds	r3, r3, #6
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 17 9
	movs	r3, #15
	add	r3, r3, sp
	movs	r2, #222
	strb	r2, [r3]
	.loc 1 18 1
	mov	r3, sp
	adds	r3, r3, #6
	ldrb	r2, [r3]
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r1, [r3]
	movs	r3, #15
	add	r3, r3, sp
	ldrb	r3, [r3]
	movs	r0, r3
	bl	I2C1_Write
	.loc 1 19 1
	nop
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.LFE0:
	.size	i2c_rtcc_wr, .-i2c_rtcc_wr
	.section	.text.i2c_eeprom_wr,"ax",%progbits
	.align	1
	.global	i2c_eeprom_wr
	.syntax unified
	.code	16
	.thumb_func
	.type	i2c_eeprom_wr, %function
i2c_eeprom_wr:
.LFB1:
	.loc 1 24 57
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI2:
	sub	sp, sp, #20
.LCFI3:
	movs	r2, r0
	mov	r3, sp
	adds	r3, r3, #7
	strb	r2, [r3]
	mov	r3, sp
	adds	r3, r3, #6
	adds	r2, r1, #0
	strb	r2, [r3]
	.loc 1 25 9
	movs	r3, #15
	add	r3, r3, sp
	movs	r2, #174
	strb	r2, [r3]
	.loc 1 26 1
	mov	r3, sp
	adds	r3, r3, #6
	ldrb	r2, [r3]
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r1, [r3]
	movs	r3, #15
	add	r3, r3, sp
	ldrb	r3, [r3]
	movs	r0, r3
	bl	I2C1_Write
	.loc 1 27 1
	nop
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.LFE1:
	.size	i2c_eeprom_wr, .-i2c_eeprom_wr
	.section	.text.i2c_rtcc_rd,"ax",%progbits
	.align	1
	.global	i2c_rtcc_rd
	.syntax unified
	.code	16
	.thumb_func
	.type	i2c_rtcc_rd, %function
i2c_rtcc_rd:
.LFB2:
	.loc 1 32 44
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI4:
	sub	sp, sp, #20
.LCFI5:
	movs	r2, r0
	mov	r3, sp
	adds	r3, r3, #7
	strb	r2, [r3]
	.loc 1 33 9
	movs	r3, #15
	add	r3, r3, sp
	movs	r2, #222
	strb	r2, [r3]
	.loc 1 34 8
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r2, [r3]
	movs	r3, #15
	add	r3, r3, sp
	ldrb	r3, [r3]
	movs	r1, r2
	movs	r0, r3
	bl	I2C1_Read
	movs	r3, r0
	.loc 1 35 1
	movs	r0, r3
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.LFE2:
	.size	i2c_rtcc_rd, .-i2c_rtcc_rd
	.section	.text.i2c_rtcc_ini,"ax",%progbits
	.align	1
	.global	i2c_rtcc_ini
	.syntax unified
	.code	16
	.thumb_func
	.type	i2c_rtcc_ini, %function
i2c_rtcc_ini:
.LFB3:
	.loc 1 40 24
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI6:
	sub	sp, sp, #8
.LCFI7:
	.loc 1 41 9
	mov	r3, sp
	adds	r3, r3, #7
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 42 1
	movs	r1, #192
	movs	r0, #7
	bl	i2c_rtcc_wr
	.loc 1 44 7
	mov	r3, sp
	adds	r4, r3, #7
	movs	r0, #3
	bl	i2c_rtcc_rd
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 45 1
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	movs	r2, #8
	orrs	r3, r2
	uxtb	r3, r3
	movs	r1, r3
	movs	r0, #3
	bl	i2c_rtcc_wr
	.loc 1 47 1
	movs	r1, #34
	movs	r0, #6
	bl	i2c_rtcc_wr
	.loc 1 48 1
	movs	r1, #1
	movs	r0, #5
	bl	i2c_rtcc_wr
	.loc 1 49 1
	movs	r1, #22
	movs	r0, #4
	bl	i2c_rtcc_wr
	.loc 1 50 1
	movs	r1, #0
	movs	r0, #2
	bl	i2c_rtcc_wr
	.loc 1 51 1
	movs	r1, #0
	movs	r0, #1
	bl	i2c_rtcc_wr
	.loc 1 52 1
	movs	r1, #128
	movs	r0, #0
	bl	i2c_rtcc_wr
	.loc 1 53 1
	nop
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.LFE3:
	.size	i2c_rtcc_ini, .-i2c_rtcc_ini
	.section	.text.get_YEAR,"ax",%progbits
	.align	1
	.global	get_YEAR
	.syntax unified
	.code	16
	.thumb_func
	.type	get_YEAR, %function
get_YEAR:
.LFB4:
	.loc 1 59 24
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI8:
	sub	sp, sp, #8
.LCFI9:
	.loc 1 60 9
	mov	r3, sp
	adds	r3, r3, #7
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 61 7
	mov	r3, sp
	adds	r4, r3, #7
	movs	r0, #6
	bl	i2c_rtcc_rd
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 62 32
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	lsrs	r3, r3, #4
	uxtb	r3, r3
	adds	r2, r3, #0
	lsls	r2, r2, #2
	adds	r3, r2, r3
	adds	r3, r3, r3
	uxtb	r1, r3
	.loc 1 62 38
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	movs	r2, #15
	ands	r3, r2
	uxtb	r2, r3
	.loc 1 62 4
	mov	r3, sp
	adds	r3, r3, #7
	adds	r2, r1, r2
	strb	r2, [r3]
	.loc 1 63 8
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	.loc 1 64 1
	movs	r0, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.LFE4:
	.size	get_YEAR, .-get_YEAR
	.section	.text.get_MONTH,"ax",%progbits
	.align	1
	.global	get_MONTH
	.syntax unified
	.code	16
	.thumb_func
	.type	get_MONTH, %function
get_MONTH:
.LFB5:
	.loc 1 66 25
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI10:
	sub	sp, sp, #8
.LCFI11:
	.loc 1 67 9
	mov	r3, sp
	adds	r3, r3, #7
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 68 7
	mov	r3, sp
	adds	r4, r3, #7
	movs	r0, #5
	bl	i2c_rtcc_rd
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 69 21
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	asrs	r3, r3, #4
	.loc 1 69 41
	uxtb	r3, r3
	movs	r2, #1
	ands	r3, r2
	uxtb	r3, r3
	adds	r2, r3, #0
	lsls	r2, r2, #2
	adds	r3, r2, r3
	adds	r3, r3, r3
	uxtb	r1, r3
	.loc 1 69 48
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	movs	r2, #15
	ands	r3, r2
	uxtb	r2, r3
	.loc 1 69 5
	mov	r3, sp
	adds	r3, r3, #7
	adds	r2, r1, r2
	strb	r2, [r3]
	.loc 1 70 8
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	.loc 1 71 1
	movs	r0, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.LFE5:
	.size	get_MONTH, .-get_MONTH
	.section	.text.get_DAY,"ax",%progbits
	.align	1
	.global	get_DAY
	.syntax unified
	.code	16
	.thumb_func
	.type	get_DAY, %function
get_DAY:
.LFB6:
	.loc 1 73 23
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI12:
	sub	sp, sp, #8
.LCFI13:
	.loc 1 74 9
	mov	r3, sp
	adds	r3, r3, #7
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 75 7
	mov	r3, sp
	adds	r4, r3, #7
	movs	r0, #4
	bl	i2c_rtcc_rd
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 76 21
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	asrs	r3, r3, #4
	.loc 1 76 41
	uxtb	r3, r3
	movs	r2, #3
	ands	r3, r2
	uxtb	r3, r3
	adds	r2, r3, #0
	lsls	r2, r2, #2
	adds	r3, r2, r3
	adds	r3, r3, r3
	uxtb	r1, r3
	.loc 1 76 48
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	movs	r2, #15
	ands	r3, r2
	uxtb	r2, r3
	.loc 1 76 5
	mov	r3, sp
	adds	r3, r3, #7
	adds	r2, r1, r2
	strb	r2, [r3]
	.loc 1 77 8
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	.loc 1 78 1
	movs	r0, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.LFE6:
	.size	get_DAY, .-get_DAY
	.section	.text.get_HOUR,"ax",%progbits
	.align	1
	.global	get_HOUR
	.syntax unified
	.code	16
	.thumb_func
	.type	get_HOUR, %function
get_HOUR:
.LFB7:
	.loc 1 80 24
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI14:
	sub	sp, sp, #8
.LCFI15:
	.loc 1 81 9
	mov	r3, sp
	adds	r3, r3, #7
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 82 7
	mov	r3, sp
	adds	r4, r3, #7
	movs	r0, #2
	bl	i2c_rtcc_rd
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 83 19
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	asrs	r3, r3, #4
	.loc 1 83 39
	uxtb	r3, r3
	movs	r2, #3
	ands	r3, r2
	uxtb	r3, r3
	adds	r2, r3, #0
	lsls	r2, r2, #2
	adds	r3, r2, r3
	adds	r3, r3, r3
	uxtb	r1, r3
	.loc 1 83 45
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	movs	r2, #15
	ands	r3, r2
	uxtb	r2, r3
	.loc 1 83 4
	mov	r3, sp
	adds	r3, r3, #7
	adds	r2, r1, r2
	strb	r2, [r3]
	.loc 1 84 9
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	.loc 1 85 1
	movs	r0, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.LFE7:
	.size	get_HOUR, .-get_HOUR
	.section	.text.get_MIN,"ax",%progbits
	.align	1
	.global	get_MIN
	.syntax unified
	.code	16
	.thumb_func
	.type	get_MIN, %function
get_MIN:
.LFB8:
	.loc 1 87 23
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI16:
	sub	sp, sp, #8
.LCFI17:
	.loc 1 88 9
	mov	r3, sp
	adds	r3, r3, #7
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 89 7
	mov	r3, sp
	adds	r4, r3, #7
	movs	r0, #1
	bl	i2c_rtcc_rd
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 90 34
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	lsrs	r3, r3, #4
	uxtb	r3, r3
	adds	r2, r3, #0
	lsls	r2, r2, #2
	adds	r3, r2, r3
	adds	r3, r3, r3
	uxtb	r1, r3
	.loc 1 90 41
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	movs	r2, #15
	ands	r3, r2
	uxtb	r2, r3
	.loc 1 90 5
	mov	r3, sp
	adds	r3, r3, #7
	adds	r2, r1, r2
	strb	r2, [r3]
	.loc 1 91 8
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	.loc 1 92 1
	movs	r0, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.LFE8:
	.size	get_MIN, .-get_MIN
	.section	.text.get_SEC,"ax",%progbits
	.align	1
	.global	get_SEC
	.syntax unified
	.code	16
	.thumb_func
	.type	get_SEC, %function
get_SEC:
.LFB9:
	.loc 1 94 23
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI18:
	sub	sp, sp, #8
.LCFI19:
	.loc 1 95 9
	mov	r3, sp
	adds	r3, r3, #7
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 96 7
	mov	r3, sp
	adds	r4, r3, #7
	movs	r0, #0
	bl	i2c_rtcc_rd
	movs	r3, r0
	strb	r3, [r4]
	.loc 1 97 21
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	asrs	r3, r3, #4
	.loc 1 97 41
	uxtb	r3, r3
	movs	r2, #7
	ands	r3, r2
	uxtb	r3, r3
	adds	r2, r3, #0
	lsls	r2, r2, #2
	adds	r3, r2, r3
	adds	r3, r3, r3
	uxtb	r1, r3
	.loc 1 97 48
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	movs	r2, #15
	ands	r3, r2
	uxtb	r2, r3
	.loc 1 97 5
	mov	r3, sp
	adds	r3, r3, #7
	adds	r2, r1, r2
	strb	r2, [r3]
	.loc 1 98 8
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	.loc 1 99 1
	movs	r0, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.LFE9:
	.size	get_SEC, .-get_SEC
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
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI6-.LFB3
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI8-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI10-.LFB5
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI12-.LFB6
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI14-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI16-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI18-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE18:
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x24e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF762
	.byte	0xc
	.4byte	.LASF763
	.4byte	.LASF764
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF742
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF743
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF744
	.uleb128 0x3
	.4byte	.LASF765
	.byte	0x2
	.byte	0xd6
	.byte	0x1c
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF745
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF746
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF747
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF748
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF749
	.uleb128 0x5
	.4byte	.LASF750
	.byte	0x1
	.byte	0x5e
	.byte	0x9
	.4byte	0x3e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e
	.uleb128 0x6
	.ascii	"sec\000"
	.byte	0x1
	.byte	0x5f
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF751
	.byte	0x1
	.byte	0x57
	.byte	0x9
	.4byte	0x3e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8
	.uleb128 0x6
	.ascii	"min\000"
	.byte	0x1
	.byte	0x58
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF752
	.byte	0x1
	.byte	0x50
	.byte	0x9
	.4byte	0x3e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf1
	.uleb128 0x6
	.ascii	"hr\000"
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF753
	.byte	0x1
	.byte	0x49
	.byte	0x9
	.4byte	0x3e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11b
	.uleb128 0x6
	.ascii	"day\000"
	.byte	0x1
	.byte	0x4a
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF754
	.byte	0x1
	.byte	0x42
	.byte	0x9
	.4byte	0x3e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x145
	.uleb128 0x6
	.ascii	"mon\000"
	.byte	0x1
	.byte	0x43
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF755
	.byte	0x1
	.byte	0x3b
	.byte	0x9
	.4byte	0x3e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16e
	.uleb128 0x6
	.ascii	"yr\000"
	.byte	0x1
	.byte	0x3c
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF758
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x194
	.uleb128 0x6
	.ascii	"day\000"
	.byte	0x1
	.byte	0x29
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF756
	.byte	0x1
	.byte	0x20
	.byte	0x9
	.4byte	0x3e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cd
	.uleb128 0x8
	.4byte	.LASF760
	.byte	0x1
	.byte	0x20
	.byte	0x1d
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x9
	.4byte	.LASF757
	.byte	0x1
	.byte	0x21
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF759
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x211
	.uleb128 0x8
	.4byte	.LASF760
	.byte	0x1
	.byte	0x18
	.byte	0x1c
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x8
	.4byte	.LASF761
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x9
	.4byte	.LASF757
	.byte	0x1
	.byte	0x19
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF766
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF760
	.byte	0x1
	.byte	0x10
	.byte	0x1a
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x8
	.4byte	.LASF761
	.byte	0x1
	.byte	0x10
	.byte	0x32
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x9
	.4byte	.LASF757
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x9d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x252
	.4byte	0x74
	.ascii	"get_SEC\000"
	.4byte	0x9e
	.ascii	"get_MIN\000"
	.4byte	0xc8
	.ascii	"get_HOUR\000"
	.4byte	0xf1
	.ascii	"get_DAY\000"
	.4byte	0x11b
	.ascii	"get_MONTH\000"
	.4byte	0x145
	.ascii	"get_YEAR\000"
	.4byte	0x16e
	.ascii	"i2c_rtcc_ini\000"
	.4byte	0x194
	.ascii	"i2c_rtcc_rd\000"
	.4byte	0x1cd
	.ascii	"i2c_eeprom_wr\000"
	.4byte	0x211
	.ascii	"i2c_rtcc_wr\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0xb0
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x252
	.4byte	0x29
	.ascii	"char\000"
	.4byte	0x30
	.ascii	"unsigned int\000"
	.4byte	0x37
	.ascii	"signed char\000"
	.4byte	0x4a
	.ascii	"unsigned char\000"
	.4byte	0x3e
	.ascii	"uint8_t\000"
	.4byte	0x51
	.ascii	"short int\000"
	.4byte	0x58
	.ascii	"short unsigned int\000"
	.4byte	0x5f
	.ascii	"int\000"
	.4byte	0x66
	.ascii	"long long int\000"
	.4byte	0x6d
	.ascii	"long long unsigned int\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x64
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
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
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF460
	.file 3 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x3
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF461
	.file 4 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL_ConfDefaults.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF462
	.file 5 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL_Conf.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF463
	.file 6 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL_Arm_Conf.h"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x6
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
	.file 7 "C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\\mcp79410.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 8 "C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\\i2c_config.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF741
	.byte	0x4
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
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF477
	.byte	0x6
	.uleb128 0x8c
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF477
	.byte	0x6
	.uleb128 0x8e
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x18d
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x1c2
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x1c8
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x1ce
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x1d4
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x1da
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x1e0
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x1f0
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x1f6
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x1fa
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x202
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x206
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x20e
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x213
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x218
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x220
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x223
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x226
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x22b
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x232
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x238
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x23d
	.4byte	.LASF512
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__SEGGER_RTL_ConfDefaults.h.22.072831664575e960e3c89d78f8bd94fa,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF559
	.byte	0x6
	.uleb128 0xec
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF555
	.byte	0x6
	.uleb128 0xee
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x15c
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x165
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x166
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x174
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x175
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x179
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x17a
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x17e
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x17f
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x187
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x18b
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x19f
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x1a3
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x1a7
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x1ab
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x1b3
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x1b4
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x1b8
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x1b9
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x1c1
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x1c5
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x1c9
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x1cc
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x1cf
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x1d2
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x1d5
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x1e9
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x1ed
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x1f1
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x1f5
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x205
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x20a
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x20f
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x210
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x21b
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x21f
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x223
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x227
	.4byte	.LASF614
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__SEGGER_RTL.h.26.f406f75783d15e336f30c2db966d0a32,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF618
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.36.e38343cc32f8e399448e748c7ba81875,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF677
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.mcp79410.h.12.46fdd0961f1a212b912809f86955345c,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF740
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF569:
	.ascii	"__SEGGER_RTL_BitcastToF64(X) __SEGGER_RTL_BitcastTo"
	.ascii	"F64_inline(X)\000"
.LASF181:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF359:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF530:
	.ascii	"__SEGGER_RTL_U32 unsigned\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1\000"
.LASF754:
	.ascii	"get_MONTH\000"
.LASF371:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF679:
	.ascii	"ADDR_EEPROM_WRITE 0xae\000"
.LASF234:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF323:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF315:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF77:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF703:
	.ascii	"ADDR_ALM1MIN 0x12\000"
.LASF566:
	.ascii	"__SEGGER_RTL_BitcastToU32(X) __SEGGER_RTL_BitcastTo"
	.ascii	"U32_inline(X)\000"
.LASF598:
	.ascii	"__SEGGER_RTL_U64_H(X) ((__SEGGER_RTL_U32)((__SEGGER"
	.ascii	"_RTL_U64)(X) >> 32))\000"
.LASF230:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF88:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF539:
	.ascii	"__SEGGER_RTL_LEAST_U8 unsigned\000"
.LASF722:
	.ascii	"ALM_01 0x30\000"
.LASF340:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF227:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF729:
	.ascii	"ALMxC_SEC 0x00\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF316:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF73:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF565:
	.ascii	"__SEGGER_RTL_STDOUT_BUFFER_LEN 64\000"
.LASF744:
	.ascii	"signed char\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF165:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF263:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF329:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF651:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
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
.LASF533:
	.ascii	"__SEGGER_RTL_I16 short\000"
.LASF531:
	.ascii	"__SEGGER_RTL_I32 int\000"
.LASF520:
	.ascii	"__WIDTH_FLOAT 1\000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF407:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF298:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF212:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF177:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF175:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF737:
	.ascii	"VBATEN 0x08\000"
.LASF117:
	.ascii	"__UINT8_C(c) c\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF597:
	.ascii	"__SEGGER_RTL_FILE_IMPL __SEGGER_RTL_FILE_impl\000"
.LASF461:
	.ascii	"__SEGGER_RTL_H \000"
.LASF526:
	.ascii	"__SEGGER_RTL_INCLUDE_SEGGER_API 0\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF286:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF723:
	.ascii	"MFP_01H 0x00\000"
.LASF507:
	.ascii	"__SEGGER_RTL_FLOAT64_C_COMPLEX double _Complex\000"
.LASF662:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF617:
	.ascii	"__SEGGER_RTL_FILE_IMPL_DEFINED \000"
.LASF570:
	.ascii	"__SEGGER_RTL_SMULL_X(X,Y) __SEGGER_RTL_SMULL_X_func"
	.ascii	"((X), (Y))\000"
.LASF689:
	.ascii	"ADDR_STAT 0x03\000"
.LASF211:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF259:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF401:
	.ascii	"__ARM_FEATURE_CLZ\000"
.LASF138:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF208:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF732:
	.ascii	"ALMxC_DAY 0x30\000"
.LASF740:
	.ascii	"HOUR_12 0x40\000"
.LASF627:
	.ascii	"UINT8_MAX 255\000"
.LASF204:
	.ascii	"__FLT16_HAS_INFINITY__ 1\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF276:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF224:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF619:
	.ascii	"INT8_MIN (-128)\000"
.LASF131:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF758:
	.ascii	"i2c_rtcc_ini\000"
.LASF255:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF474:
	.ascii	"__SEGGER_RTL_FLOAT16 _Float16\000"
.LASF111:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF345:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF685:
	.ascii	"ADDR_SEC 0x00\000"
.LASF583:
	.ascii	"__SEGGER_RTL_SMLAL_SYNTHESIZED \000"
.LASF375:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1\000"
.LASF550:
	.ascii	"__SEGGER_RTL_WINT_T __WINT_TYPE__\000"
.LASF656:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF422:
	.ascii	"__ARM_FP16_FORMAT_IEEE 1\000"
.LASF343:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF490:
	.ascii	"__SEGGER_RTL_PUBLIC_API __attribute__((__weak__))\000"
.LASF223:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF670:
	.ascii	"UINT8_C(x) (x ##u)\000"
.LASF86:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF246:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF738:
	.ascii	"START_32KHZ 0x80\000"
.LASF132:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF497:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIV 0\000"
.LASF454:
	.ascii	"DEBUG 1\000"
.LASF152:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF312:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF127:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF420:
	.ascii	"__VFP_FP__ 1\000"
.LASF463:
	.ascii	"__SEGGER_RTL_CONF_H \000"
.LASF136:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF610:
	.ascii	"__SEGGER_RTL_SUBNORMALS_FLUSH_TO_ZERO 1\000"
.LASF203:
	.ascii	"__FLT16_HAS_DENORM__ 1\000"
.LASF475:
	.ascii	"__SEGGER_RTL_MAX_ALIGN 8\000"
.LASF216:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF268:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF622:
	.ascii	"INT16_MAX 32767\000"
.LASF432:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF563:
	.ascii	"__SEGGER_RTL_HEAP_SIZE 1024\000"
.LASF693:
	.ascii	"ADDR_CTRL 0x07\000"
.LASF676:
	.ascii	"WCHAR_MAX __WCHAR_MAX__\000"
.LASF249:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF660:
	.ascii	"SIZE_MAX INT32_MAX\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF200:
	.ascii	"__FLT16_MIN__ 1.1\000"
.LASF473:
	.ascii	"__SEGGER_RTL_TYPESET 32\000"
.LASF307:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF245:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF130:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF242:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF250:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF363:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF226:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF91:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF535:
	.ascii	"__SEGGER_RTL_I8 signed char\000"
.LASF335:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF587:
	.ascii	"__SEGGER_RTL_DIVMOD_U64(Q,R,N,D) do { Q = N / D; R "
	.ascii	"= N - Q*D; } while (0)\000"
.LASF429:
	.ascii	"__ARM_NEON__\000"
.LASF721:
	.ascii	"ALM_1 0x20\000"
.LASF210:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF289:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF578:
	.ascii	"__SEGGER_RTL_SMULL(L,H,X,Y) __SEGGER_RTL_SMULL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF239:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF741:
	.ascii	"I2C_CONFIG_H \000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF426:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF649:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF630:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF678:
	.ascii	"MCP79410_H_ \000"
.LASF134:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF149:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF112:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF644:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF476:
	.ascii	"__SEGGER_RTL_FP_ABI 0\000"
.LASF720:
	.ascii	"ALM_0 0x10\000"
.LASF655:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF365:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF493:
	.ascii	"__SEGGER_RTL_CORE_HAS_REV 0\000"
.LASF413:
	.ascii	"__thumb__ 1\000"
.LASF674:
	.ascii	"INTMAX_C(x) (x ##LL)\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF765:
	.ascii	"uint8_t\000"
.LASF186:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF369:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF489:
	.ascii	"__SEGGER_RTL_REQUEST_INLINE __inline__\000"
.LASF424:
	.ascii	"__ARM_FP16_ARGS 1\000"
.LASF643:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF325:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF527:
	.ascii	"__SEGGER_RTL_INCLUDE_C_API 1\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF118:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF123:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF609:
	.ascii	"__SEGGER_RTL_SUBNORMALS_READ_AS_ZERO 1\000"
.LASF146:
	.ascii	"__FLT_DIG__ 6\000"
.LASF715:
	.ascii	"ADDR_SAVtoVDD_MTH 0x1f\000"
.LASF232:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF745:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF292:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF150:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF481:
	.ascii	"__SEGGER_RTL_FLT_SELECT(HEX,DEC) HEX\000"
.LASF264:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF686:
	.ascii	"ADDR_MIN 0x01\000"
.LASF128:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF718:
	.ascii	"SQWE 0x40\000"
.LASF437:
	.ascii	"__ARM_ARCH_EXT_IDIV__\000"
.LASF511:
	.ascii	"__SEGGER_RTL_X_assert __aeabi_assert\000"
.LASF498:
	.ascii	"__SEGGER_RTL_CORE_HAS_CBZ_CBNZ 0\000"
.LASF625:
	.ascii	"INT64_MIN (-9223372036854775807LL-1)\000"
.LASF101:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF339:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF728:
	.ascii	"ALMx_POL 0x80\000"
.LASF69:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF669:
	.ascii	"INT64_C(x) (x ##LL)\000"
.LASF452:
	.ascii	"__SES_VERSION 57001\000"
.LASF171:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF621:
	.ascii	"INT16_MIN (-32767-1)\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF326:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF523:
	.ascii	"__SEGGER_RTL_FORCE_SOFT_FLOAT 0\000"
.LASF470:
	.ascii	"__SEGGER_RTL_INCLUDE_AEABI_API 2\000"
.LASF389:
	.ascii	"__ARM_FEATURE_QBIT\000"
.LASF166:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF725:
	.ascii	"MFP_08K 0x02\000"
.LASF384:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF652:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF742:
	.ascii	"char\000"
.LASF362:
	.ascii	"__USA_IBIT__ 16\000"
.LASF735:
	.ascii	"ALMx_IF 0x08\000"
.LASF588:
	.ascii	"__SEGGER_RTL_RODATA_IS_RW 0\000"
.LASF254:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF560:
	.ascii	"__SEGGER_RTL_FORMAT_INT_WIDTH\000"
.LASF351:
	.ascii	"__HA_FBIT__ 7\000"
.LASF436:
	.ascii	"__FDPIC__\000"
.LASF482:
	.ascii	"__SEGGER_RTL_CORE_HAS_MLA 0\000"
.LASF468:
	.ascii	"__SEGGER_RTL_NO_BUILTIN __attribute__((optimize(\"-"
	.ascii	"fno-tree-loop-distribute-patterns\")))\000"
.LASF762:
	.ascii	"GNU C99 10.3.1 20210824 (release) -fmessage-length="
	.ascii	"0 -std=gnu99 -mcpu=cortex-m0plus -mlittle-endian -m"
	.ascii	"float-abi=soft -mthumb -mtp=soft -mfp16-format=ieee"
	.ascii	" -mno-unaligned-access -gdwarf-4 -g3 -gpubnames -fo"
	.ascii	"mit-frame-pointer -fno-dwarf2-cfi-asm -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF460:
	.ascii	"__SEGGER_RTL_STDINT_H \000"
.LASF547:
	.ascii	"__SEGGER_RTL_SIZEOF_PTR 4\000"
.LASF247:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF672:
	.ascii	"UINT32_C(x) (x ##u)\000"
.LASF196:
	.ascii	"__FLT16_MAX_10_EXP__ 4\000"
.LASF257:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF632:
	.ascii	"INTMAX_MAX INT64_MAX\000"
.LASF258:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF449:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF430:
	.ascii	"__ARM_NEON\000"
.LASF100:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF179:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF518:
	.ascii	"__WIDTH_LONG_LONG 2\000"
.LASF172:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF355:
	.ascii	"__DA_FBIT__ 31\000"
.LASF67:
	.ascii	"__GXX_ABI_VERSION 1014\000"
.LASF107:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF614:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIVM_X 0\000"
.LASF600:
	.ascii	"__SEGGER_RTL_U64_MK(H,L) (((__SEGGER_RTL_U64)(__SEG"
	.ascii	"GER_RTL_U32)(H) << 32) + (__SEGGER_RTL_U32)(L))\000"
.LASF596:
	.ascii	"__SEGGER_RTL_SCALED_INTEGER 0\000"
.LASF480:
	.ascii	"__SEGGER_RTL_NAN_FORMAT __SEGGER_RTL_NAN_FORMAT_IEE"
	.ascii	"E\000"
.LASF121:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF763:
	.ascii	"C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio"
	.ascii	" for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0"
	.ascii	"_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\\mcp79410.c"
	.ascii	"\000"
.LASF229:
	.ascii	"__FLT64_NORM_MAX__ 1.1\000"
.LASF701:
	.ascii	"ADDR_ALM0MTH 0x0f\000"
.LASF197:
	.ascii	"__FLT16_DECIMAL_DIG__ 5\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF509:
	.ascii	"__SEGGER_RTL_PREFER_BRANCH_FREE_CODE 1\000"
.LASF451:
	.ascii	"__HEAP_SIZE__ 0\000"
.LASF516:
	.ascii	"__WIDTH_INT 0\000"
.LASF443:
	.ascii	"__ARM_FEATURE_MATMUL_INT8\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF604:
	.ascii	"__SEGGER_RTL_NAN __builtin_nanf(\"0x7fc00000\")\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 1\000"
.LASF296:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF647:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF311:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF462:
	.ascii	"__SEGGER_RTL_LIBC_CONF_DEFAULTS_H \000"
.LASF220:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF189:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF357:
	.ascii	"__TA_FBIT__ 63\000"
.LASF671:
	.ascii	"UINT16_C(x) (x ##u)\000"
.LASF241:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF499:
	.ascii	"__SEGGER_RTL_CORE_HAS_TBB_TBH 0\000"
.LASF554:
	.ascii	"__SEGGER_RTL_OPTIMIZE 0\000"
.LASF434:
	.ascii	"__ARM_PCS 1\000"
.LASF591:
	.ascii	"__SEGGER_RTL_SPECIALIZE_COMPARES 1\000"
.LASF342:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF182:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF568:
	.ascii	"__SEGGER_RTL_BitcastToU64(X) __SEGGER_RTL_BitcastTo"
	.ascii	"U64_inline(X)\000"
.LASF308:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF611:
	.ascii	"__SEGGER_RTL_CORE_HAS_UDIV_X 0\000"
.LASF709:
	.ascii	"ADDR_SAVtoBAT_HR 0x19\000"
.LASF658:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF573:
	.ascii	"__SEGGER_RTL_UMULL_X_SYNTHESIZED \000"
.LASF700:
	.ascii	"ADDR_ALM0DAT 0x0e\000"
.LASF695:
	.ascii	"ADDR_ULID 0x09\000"
.LASF184:
	.ascii	"__LDBL_NORM_MAX__ 1.1\000"
.LASF727:
	.ascii	"MFP_64H 0x04\000"
.LASF109:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF683:
	.ascii	"SRAM_PTR 0x20\000"
.LASF143:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF427:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF661:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF170:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF581:
	.ascii	"__SEGGER_RTL_UMULL_SYNTHESIZED \000"
.LASF514:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_FAST 1\000"
.LASF680:
	.ascii	"ADDR_EEPROM_READ 0xaf\000"
.LASF260:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF636:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF75:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF256:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF324:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF714:
	.ascii	"ADDR_SAVtoVDD_DAT 0x1e\000"
.LASF368:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF103:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF582:
	.ascii	"__SEGGER_RTL_SMLAL(L,H,X,Y) __SEGGER_RTL_SMLAL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF102:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF104:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF724:
	.ascii	"MFP_04K 0x01\000"
.LASF438:
	.ascii	"__ARM_FEATURE_IDIV\000"
.LASF574:
	.ascii	"__SEGGER_RTL_SMULL_HI(X,Y) __SEGGER_RTL_SMULL_HI_fu"
	.ascii	"nc((X), (Y))\000"
.LASF396:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF151:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF405:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF240:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF367:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF120:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF556:
	.ascii	"__SEGGER_RTL_FORMAT_FLOAT_WIDTH __WIDTH_DOUBLE\000"
.LASF273:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF544:
	.ascii	"__SEGGER_RTL_U64_C(X) X ##uLL\000"
.LASF115:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF158:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF501:
	.ascii	"__SEGGER_RTL_CORE_HAS_BFC_BFI_BFX 0\000"
.LASF304:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF96:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF580:
	.ascii	"__SEGGER_RTL_UMULL(L,H,X,Y) __SEGGER_RTL_UMULL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF253:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF354:
	.ascii	"__SA_IBIT__ 16\000"
.LASF392:
	.ascii	"__ARM_FEATURE_UNALIGNED\000"
.LASF140:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF398:
	.ascii	"__ARM_FEATURE_MVE\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF524:
	.ascii	"__SEGGER_RTL_CONFIG_CODE_COVERAGE 0\000"
.LASF629:
	.ascii	"UINT32_MAX 4294967295UL\000"
.LASF699:
	.ascii	"ADDR_ALM0CTL 0x0d\000"
.LASF419:
	.ascii	"__SOFTFP__ 1\000"
.LASF502:
	.ascii	"__SEGGER_RTL_CORE_HAS_BLX_REG 1\000"
.LASF750:
	.ascii	"get_SEC\000"
.LASF142:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF593:
	.ascii	"__SEGGER_RTL_CLZ_U32_SYNTHESIZED \000"
.LASF79:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF322:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF458:
	.ascii	"ARM_MATH_CM0PLUS 1\000"
.LASF349:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF98:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF113:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF445:
	.ascii	"__ARM_FEATURE_BF16_VECTOR_ARITHMETIC\000"
.LASF217:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF206:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF665:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF755:
	.ascii	"get_YEAR\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF500:
	.ascii	"__SEGGER_RTL_CORE_HAS_UXT_SXT 1\000"
.LASF374:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1\000"
.LASF589:
	.ascii	"__SEGGER_RTL_USE_PARA(Para) (void)Para\000"
.LASF164:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF719:
	.ascii	"ALM_NO 0x00\000"
.LASF248:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF145:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF503:
	.ascii	"__SEGGER_RTL_CORE_HAS_LONG_SHIFT 0\000"
.LASF348:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF450:
	.ascii	"__SES_ARM 1\000"
.LASF494:
	.ascii	"__SEGGER_RTL_CORE_HAS_PKHTB_PKHBT 0\000"
.LASF309:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF552:
	.ascii	"__SEGGER_RTL_SIZEOF_WCHAR_T __SIZEOF_WCHAR_T__\000"
.LASF640:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF492:
	.ascii	"__SEGGER_RTL_CORE_HAS_UQADD_UQSUB 0\000"
.LASF457:
	.ascii	"__STM32G071_SUBFAMILY 1\000"
.LASF99:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF194:
	.ascii	"__FLT16_MIN_10_EXP__ (-4)\000"
.LASF287:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF5:
	.ascii	"__GNUC__ 10\000"
.LASF515:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_COMPACT 2\000"
.LASF82:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF549:
	.ascii	"__SEGGER_RTL_SIZE_T __SIZE_TYPE__\000"
.LASF306:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF576:
	.ascii	"__SEGGER_RTL_UMULL_HI(X,Y) __SEGGER_RTL_UMULL_HI_fu"
	.ascii	"nc((X), (Y))\000"
.LASF270:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF74:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF575:
	.ascii	"__SEGGER_RTL_SMULL_HI_SYNTHESIZED \000"
.LASF157:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF506:
	.ascii	"__SEGGER_RTL_FLOAT32_C_COMPLEX float _Complex\000"
.LASF215:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 1\000"
.LASF318:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF410:
	.ascii	"__ARM_ARCH 6\000"
.LASF144:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF748:
	.ascii	"long long int\000"
.LASF399:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF372:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 1\000"
.LASF395:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF190:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF459:
	.ascii	"__NO_FPU_ENABLE 1\000"
.LASF615:
	.ascii	"__SEGGER_RTL_VERSION 23000\000"
.LASF83:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF187:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF739:
	.ascii	"LP 0x20\000"
.LASF736:
	.ascii	"OSCON 0x20\000"
.LASF135:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF421:
	.ascii	"__ARM_FP\000"
.LASF352:
	.ascii	"__HA_IBIT__ 8\000"
.LASF388:
	.ascii	"__ARM_FEATURE_DSP\000"
.LASF137:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF133:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF551:
	.ascii	"__SEGGER_RTL_WCHAR_T __WCHAR_TYPE__\000"
.LASF653:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF225:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF167:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF89:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF548:
	.ascii	"__SEGGER_RTL_PTRDIFF_T __PTRDIFF_TYPE__\000"
.LASF406:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF691:
	.ascii	"ADDR_MNTH 0x05\000"
.LASF185:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF385:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF726:
	.ascii	"MFP_32K 0x03\000"
.LASF139:
	.ascii	"__GCC_IEC_559 0\000"
.LASF711:
	.ascii	"ADDR_SAVtoBAT_MTH 0x1b\000"
.LASF688:
	.ascii	"ADDR_DAY 0x03\000"
.LASF236:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF244:
	.ascii	"__FLT32X_NORM_MAX__ 1.1\000"
.LASF752:
	.ascii	"get_HOUR\000"
.LASF269:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF195:
	.ascii	"__FLT16_MAX_EXP__ 16\000"
.LASF252:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF540:
	.ascii	"__SEGGER_RTL_LEAST_I8 int\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF431:
	.ascii	"__ARM_NEON_FP\000"
.LASF397:
	.ascii	"__ARM_32BIT_STATE\000"
.LASF266:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF347:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF156:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF180:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF707:
	.ascii	"ADDR_ALM1MTH 0x16\000"
.LASF198:
	.ascii	"__FLT16_MAX__ 1.1\000"
.LASF623:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF243:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF584:
	.ascii	"__SEGGER_RTL_UMLAL(L,H,X,Y) __SEGGER_RTL_UMLAL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF513:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_IEEE 0\000"
.LASF743:
	.ascii	"unsigned int\000"
.LASF687:
	.ascii	"ADDR_HOUR 0x02\000"
.LASF412:
	.ascii	"__GCC_ASM_FLAG_OUTPUTS__\000"
.LASF634:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF646:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF147:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF235:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF710:
	.ascii	"ADDR_SAVtoBAT_DAT 0x1a\000"
.LASF681:
	.ascii	"ADDR_RTCC_WRITE 0xde\000"
.LASF297:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF532:
	.ascii	"__SEGGER_RTL_U16 unsigned short\000"
.LASF233:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF327:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF310:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF366:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF675:
	.ascii	"UINTMAX_C(x) (x ##uLL)\000"
.LASF439:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF68:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF125:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF414:
	.ascii	"__thumb2__\000"
.LASF400:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF341:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF193:
	.ascii	"__FLT16_MIN_EXP__ (-13)\000"
.LASF519:
	.ascii	"__WIDTH_NONE 0\000"
.LASF274:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF387:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF275:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF616:
	.ascii	"__SEGGER_RTL_MAX_CATEGORY 5\000"
.LASF465:
	.ascii	"__SEGGER_RTL_ISA_T16 0\000"
.LASF706:
	.ascii	"ADDR_ALM1DAT 0x15\000"
.LASF684:
	.ascii	"ADDR_EEPROM_SR 0xff\000"
.LASF694:
	.ascii	"ADDR_CAL 0x08\000"
.LASF169:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF555:
	.ascii	"__SEGGER_RTL_FORMAT_INT_WIDTH __WIDTH_LONG_LONG\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF80:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF361:
	.ascii	"__USA_FBIT__ 16\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF238:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF479:
	.ascii	"__SEGGER_RTL_FP_ABI\000"
.LASF159:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF373:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 1\000"
.LASF485:
	.ascii	"__SEGGER_RTL_UNLIKELY(X) __builtin_expect((X), 0)\000"
.LASF168:
	.ascii	"__DBL_NORM_MAX__ ((double)1.1)\000"
.LASF126:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF404:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF496:
	.ascii	"__SEGGER_RTL_CORE_HAS_MOVW_MOVT 0\000"
.LASF704:
	.ascii	"ADDR_ALM1HR 0x13\000"
.LASF487:
	.ascii	"__SEGGER_RTL_NEVER_INLINE __attribute__((__noinline"
	.ascii	"__, __noclone__))\000"
.LASF265:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF209:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF538:
	.ascii	"__SEGGER_RTL_LEAST_I16 int\000"
.LASF423:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF624:
	.ascii	"INT32_MAX 2147483647L\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF358:
	.ascii	"__TA_IBIT__ 64\000"
.LASF433:
	.ascii	"__ARM_ARCH_6M__ 1\000"
.LASF393:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF528:
	.ascii	"__SEGGER_RTL_U64 unsigned long long\000"
.LASF522:
	.ascii	"__SEGGER_RTL_SIDE_BY_SIDE 0\000"
.LASF677:
	.ascii	"WCHAR_MIN __WCHAR_MIN__\000"
.LASF191:
	.ascii	"__FLT16_MANT_DIG__ 11\000"
.LASF85:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF603:
	.ascii	"__SEGGER_RTL_INFINITY __builtin_inff()\000"
.LASF267:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF428:
	.ascii	"__ARM_FEATURE_FMA\000"
.LASF705:
	.ascii	"ADDR_ALM1CTL 0x14\000"
.LASF105:
	.ascii	"__INT8_C(c) c\000"
.LASF272:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF488:
	.ascii	"__SEGGER_RTL_ALWAYS_INLINE __inline__ __attribute__"
	.ascii	"((__always_inline__))\000"
.LASF673:
	.ascii	"UINT64_C(x) (x ##uLL)\000"
.LASF753:
	.ascii	"get_DAY\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 1\000"
.LASF162:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF562:
	.ascii	"__SEGGER_RTL_MINIMAL_LOCALE 0\000"
.LASF595:
	.ascii	"__SEGGER_RTL_CLZ_U64_SYNTHESIZED \000"
.LASF464:
	.ascii	"__SEGGER_RTL_ARM_CONF_H \000"
.LASF207:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF650:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF657:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF696:
	.ascii	"ADDR_ALM0SEC 0x0a\000"
.LASF757:
	.ascii	"slaveAdress\000"
.LASF567:
	.ascii	"__SEGGER_RTL_BitcastToF32(X) __SEGGER_RTL_BitcastTo"
	.ascii	"F32_inline(X)\000"
.LASF188:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF383:
	.ascii	"__HAVE_SPECULATION_SAFE_VALUE 1\000"
.LASF291:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF628:
	.ascii	"UINT16_MAX 65535\000"
.LASF477:
	.ascii	"__SEGGER_RTL_FP_HW 0\000"
.LASF303:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF391:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF416:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF122:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF262:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF559:
	.ascii	"__SEGGER_RTL_FORMAT_CHAR_CLASS 1\000"
.LASF716:
	.ascii	"PM 0x20\000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF512:
	.ascii	"__SEGGER_RTL_X_errno_addr __aeabi_errno_addr\000"
.LASF756:
	.ascii	"i2c_rtcc_rd\000"
.LASF749:
	.ascii	"long long unsigned int\000"
.LASF148:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF635:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF317:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF639:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF666:
	.ascii	"INT8_C(x) (x)\000"
.LASF330:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF411:
	.ascii	"__APCS_32__ 1\000"
.LASF337:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF344:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF592:
	.ascii	"__SEGGER_RTL_CLZ_U32(X) __SEGGER_RTL_CLZ_U32_inline"
	.ascii	"(X)\000"
.LASF529:
	.ascii	"__SEGGER_RTL_I64 long long\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF293:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF279:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF155:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF314:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF38:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF484:
	.ascii	"__SEGGER_RTL_CORE_HAS_EXT_MUL 0\000"
.LASF237:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF154:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF199:
	.ascii	"__FLT16_NORM_MAX__ 1.1\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF731:
	.ascii	"ALMxC_HR 0x20\000"
.LASF733:
	.ascii	"ALMxC_DAT 0x40\000"
.LASF564:
	.ascii	"__SEGGER_RTL_ATEXIT_COUNT 1\000"
.LASF759:
	.ascii	"i2c_eeprom_wr\000"
.LASF534:
	.ascii	"__SEGGER_RTL_U8 unsigned char\000"
.LASF319:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF553:
	.ascii	"__SEGGER_RTL_SIZEOF_LDOUBLE 8\000"
.LASF730:
	.ascii	"ALMxC_MIN 0x10\000"
.LASF278:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF338:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF620:
	.ascii	"INT8_MAX 127\000"
.LASF446:
	.ascii	"__ARM_BF16_FORMAT_ALTERNATIVE\000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF116:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF659:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF612:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIV_X 0\000"
.LASF545:
	.ascii	"__SEGGER_RTL_SIZEOF_INT 4\000"
.LASF546:
	.ascii	"__SEGGER_RTL_SIZEOF_LONG 4\000"
.LASF645:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF408:
	.ascii	"__arm__ 1\000"
.LASF350:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF353:
	.ascii	"__SA_FBIT__ 15\000"
.LASF285:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF505:
	.ascii	"__SEGGER_RTL_USE_FPU_FOR_IDIV 0\000"
.LASF435:
	.ascii	"__ARM_EABI__ 1\000"
.LASF590:
	.ascii	"__SEGGER_RTL_SIDE_BY_SIZE 0\000"
.LASF637:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF448:
	.ascii	"__ELF__ 1\000"
.LASF415:
	.ascii	"__THUMBEL__ 1\000"
.LASF332:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF633:
	.ascii	"UINTMAX_MAX UINT64_MAX\000"
.LASF607:
	.ascii	"__SEGGER_RTL_HIDE(X) __c_ ##X\000"
.LASF682:
	.ascii	"ADDR_RTCC_READ 0xdf\000"
.LASF321:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF346:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
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
.LASF561:
	.ascii	"__SEGGER_RTL_FORMAT_WIDTH_PRECISION\000"
.LASF456:
	.ascii	"STM32G071xx 1\000"
.LASF618:
	.ascii	"__SEGGER_RTL_SIZE_MAX 4294967295uL\000"
.LASF425:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF300:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF174:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF284:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF697:
	.ascii	"ADDR_ALM0MIN 0x0b\000"
.LASF690:
	.ascii	"ADDR_DATE 0x04\000"
.LASF294:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF466:
	.ascii	"__SEGGER_RTL_ISA_T32 1\000"
.LASF161:
	.ascii	"__DBL_DIG__ 15\000"
.LASF280:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF508:
	.ascii	"__SEGGER_RTL_LDOUBLE_C_COMPLEX long double _Complex"
	.ascii	"\000"
.LASF153:
	.ascii	"__FLT_NORM_MAX__ 1.1\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF558:
	.ascii	"__SEGGER_RTL_FORMAT_WIDTH_PRECISION 1\000"
.LASF525:
	.ascii	"__SEGGER_RTL_INCLUDE_GNU_API 0\000"
.LASF114:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF178:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF517:
	.ascii	"__WIDTH_LONG 1\000"
.LASF542:
	.ascii	"__SEGGER_RTL_U32_C(X) X ##u\000"
.LASF441:
	.ascii	"__ARM_FEATURE_CDE\000"
.LASF302:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF571:
	.ascii	"__SEGGER_RTL_SMULL_X_SYNTHESIZED \000"
.LASF764:
	.ascii	"C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio"
	.ascii	" for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0"
	.ascii	"_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\000"
.LASF712:
	.ascii	"ADDR_SAVtoVDD_MIN 0x1c\000"
.LASF746:
	.ascii	"short int\000"
.LASF751:
	.ascii	"get_MIN\000"
.LASF119:
	.ascii	"__UINT16_C(c) c\000"
.LASF364:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF453:
	.ascii	"__SEGGER_LINKER 1\000"
.LASF370:
	.ascii	"__NO_INLINE__ 1\000"
.LASF478:
	.ascii	"__SEGGER_RTL_FP_HW\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
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
.LASF713:
	.ascii	"ADDR_SAVtoVDD_HR 0x1d\000"
.LASF579:
	.ascii	"__SEGGER_RTL_SMULL_SYNTHESIZED \000"
.LASF594:
	.ascii	"__SEGGER_RTL_CLZ_U64(X) __SEGGER_RTL_CLZ_U64_inline"
	.ascii	"(X)\000"
.LASF455:
	.ascii	"__STM32G0xx_FAMILY 1\000"
.LASF467:
	.ascii	"__SEGGER_RTL_ISA_ARM 2\000"
.LASF648:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF641:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF664:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF97:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF81:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF213:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF331:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF290:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF301:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF766:
	.ascii	"i2c_rtcc_wr\000"
.LASF543:
	.ascii	"__SEGGER_RTL_I64_C(X) X ##LL\000"
.LASF541:
	.ascii	"__SEGGER_RTL_I32_C(X) X\000"
.LASF394:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF760:
	.ascii	"registerAdress\000"
.LASF271:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF557:
	.ascii	"__SEGGER_RTL_FORMAT_WCHAR 1\000"
.LASF386:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF110:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF447:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF608:
	.ascii	"__SEGGER_RTL_RODATA const\000"
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
.LASF734:
	.ascii	"ALMxC_ALL 0x70\000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF631:
	.ascii	"INTMAX_MIN INT64_MIN\000"
.LASF654:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF702:
	.ascii	"ADDR_ALM1SEC 0x11\000"
.LASF288:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF282:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF469:
	.ascii	"__SEGGER_RTL_TARGET_ISA __SEGGER_RTL_ISA_T16\000"
.LASF283:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF626:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF577:
	.ascii	"__SEGGER_RTL_UMULL_HI_SYNTHESIZED \000"
.LASF192:
	.ascii	"__FLT16_DIG__ 3\000"
.LASF585:
	.ascii	"__SEGGER_RTL_UMLAL_SYNTHESIZED \000"
.LASF261:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF602:
	.ascii	"__SEGGER_RTL_I64_L(X) ((__SEGGER_RTL_U32)(__SEGGER_"
	.ascii	"RTL_U64)(X))\000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF472:
	.ascii	"__SEGGER_RTL_BYTE_ORDER (-1)\000"
.LASF360:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF491:
	.ascii	"__SEGGER_RTL_CORE_HAS_CLZ 0\000"
.LASF305:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF320:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF601:
	.ascii	"__SEGGER_RTL_I64_H(X) ((__SEGGER_RTL_I32)((__SEGGER"
	.ascii	"_RTL_I64)(X) >> 32))\000"
.LASF176:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF572:
	.ascii	"__SEGGER_RTL_UMULL_X(X,Y) __SEGGER_RTL_UMULL_X_func"
	.ascii	"((X), (Y))\000"
.LASF87:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF72:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF76:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF222:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF94:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF667:
	.ascii	"INT16_C(x) (x)\000"
.LASF106:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF486:
	.ascii	"__SEGGER_RTL_THREAD __thread\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF668:
	.ascii	"INT32_C(x) (x)\000"
.LASF183:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF747:
	.ascii	"short unsigned int\000"
.LASF281:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF219:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF201:
	.ascii	"__FLT16_EPSILON__ 1.1\000"
.LASF606:
	.ascii	"__SEGGER_RTL_HUGE_VALF __builtin_huge_valf()\000"
.LASF605:
	.ascii	"__SEGGER_RTL_HUGE_VAL __builtin_huge_val()\000"
.LASF418:
	.ascii	"__ARMEL__ 1\000"
.LASF521:
	.ascii	"__WIDTH_DOUBLE 2\000"
.LASF333:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF510:
	.ascii	"__SEGGER_RTL_VA_LIST __builtin_va_list\000"
.LASF537:
	.ascii	"__SEGGER_RTL_LEAST_U16 unsigned\000"
.LASF78:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF390:
	.ascii	"__ARM_FEATURE_SAT\000"
.LASF536:
	.ascii	"__SEGGER_RTL_LEAST_U32 unsigned\000"
.LASF409:
	.ascii	"__ARM_ARCH\000"
.LASF214:
	.ascii	"__FLT32_NORM_MAX__ 1.1\000"
.LASF71:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF495:
	.ascii	"__SEGGER_RTL_CORE_HAS_ADDW_SUBW 0\000"
.LASF586:
	.ascii	"__SEGGER_RTL_DIVMOD_U32(Q,R,N,D) do { Q = N / D; R "
	.ascii	"= N - Q*D; } while (0)\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF504:
	.ascii	"__SEGGER_RTL_FAST_CODE_SECTION(X) __attribute__((__"
	.ascii	"section__(\".fast.\" X)))\000"
.LASF471:
	.ascii	"__SEGGER_RTL_INCLUDE_GNU_FP16_API 1\000"
.LASF403:
	.ascii	"__ARM_FEATURE_SIMD32\000"
.LASF613:
	.ascii	"__SEGGER_RTL_CORE_HAS_UDIVM_X 0\000"
.LASF84:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF108:
	.ascii	"__INT16_C(c) c\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF356:
	.ascii	"__DA_IBIT__ 32\000"
.LASF205:
	.ascii	"__FLT16_HAS_QUIET_NAN__ 1\000"
.LASF698:
	.ascii	"ADDR_ALM0HR 0x0c\000"
.LASF228:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF334:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF708:
	.ascii	"ADDR_SAVtoBAT_MIN 0x18\000"
.LASF163:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF599:
	.ascii	"__SEGGER_RTL_U64_L(X) ((__SEGGER_RTL_U32)(__SEGGER_"
	.ascii	"RTL_U64)(X))\000"
.LASF761:
	.ascii	"data\000"
.LASF692:
	.ascii	"ADDR_YEAR 0x06\000"
.LASF295:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF717:
	.ascii	"OUT_PIN 0x80\000"
.LASF231:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF483:
	.ascii	"__SEGGER_RTL_CORE_HAS_MLS 0\000"
.LASF90:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF160:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF277:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF638:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF70:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF663:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF442:
	.ascii	"__ARM_FEATURE_CDE_COPROC\000"
.LASF642:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
	.ident	"GCC: (based on arm-10.3-2021.10 GCC) 10.3.1 20210824 (release)"
