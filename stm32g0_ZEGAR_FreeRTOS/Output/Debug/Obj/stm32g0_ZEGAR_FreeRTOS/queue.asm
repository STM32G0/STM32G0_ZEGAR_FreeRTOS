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
	.file	"queue.c"
	.text
.Ltext0:
	.global	xQueueRegistry
	.section	.bss.xQueueRegistry,"aw",%nobits
	.align	2
	.type	xQueueRegistry, %object
	.size	xQueueRegistry, 64
xQueueRegistry:
	.space	64
	.global	__aeabi_uidiv
	.section	.text.xQueueGenericReset,"ax",%progbits
	.align	1
	.global	xQueueGenericReset
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueueGenericReset, %function
xQueueGenericReset:
.LFB0:
	.file 1 "C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\\FreeRTOS\\Source\\queue.c"
	.loc 1 268 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #20
.LCFI1:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 269 16
	movs	r3, #1
	str	r3, [sp, #12]
	.loc 1 270 21
	ldr	r3, [sp, #4]
	str	r3, [sp, #8]
	.loc 1 274 7
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L2
	.loc 1 275 18 discriminator 1
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #60]
	.loc 1 274 29 discriminator 1
	cmp	r3, #0
	beq	.L2
	.loc 1 277 31
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #60]
	.loc 1 277 22
	movs	r1, r3
	ldr	r0, .L7
	bl	__aeabi_uidiv
	movs	r3, r0
	movs	r2, r3
	.loc 1 277 54
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #64]
	.loc 1 275 37
	cmp	r2, r3
	bcc	.L2
	.loc 1 279 9
	bl	vPortEnterCritical
	.loc 1 281 47
	ldr	r3, [sp, #8]
	ldr	r2, [r3]
	.loc 1 281 67
	ldr	r3, [sp, #8]
	ldr	r1, [r3, #60]
	.loc 1 281 87
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #64]
	.loc 1 281 78
	muls	r3, r1
	.loc 1 281 56
	adds	r2, r2, r3
	.loc 1 281 38
	ldr	r3, [sp, #8]
	str	r2, [r3, #8]
	.loc 1 282 40
	ldr	r3, [sp, #8]
	movs	r2, #0
	str	r2, [r3, #56]
	.loc 1 283 41
	ldr	r3, [sp, #8]
	ldr	r2, [r3]
	.loc 1 283 32
	ldr	r3, [sp, #8]
	str	r2, [r3, #4]
	.loc 1 284 51
	ldr	r3, [sp, #8]
	ldr	r2, [r3]
	.loc 1 284 73
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #60]
	.loc 1 284 84
	subs	r1, r3, #1
	.loc 1 284 100
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #64]
	.loc 1 284 91
	muls	r3, r1
	.loc 1 284 60
	adds	r2, r2, r3
	.loc 1 284 42
	ldr	r3, [sp, #8]
	str	r2, [r3, #12]
	.loc 1 285 30
	ldr	r3, [sp, #8]
	movs	r2, #68
	movs	r1, #255
	strb	r1, [r3, r2]
	.loc 1 286 30
	ldr	r3, [sp, #8]
	movs	r2, #69
	movs	r1, #255
	strb	r1, [r3, r2]
	.loc 1 288 15
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L3
	.loc 1 295 21
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #16]
	.loc 1 295 19
	cmp	r3, #0
	beq	.L4
	.loc 1 297 51
	ldr	r3, [sp, #8]
	adds	r3, r3, #16
	.loc 1 297 25
	movs	r0, r3
	bl	xTaskRemoveFromEventList
	subs	r3, r0, #0
	.loc 1 297 23
	beq	.L4
	.loc 1 299 25
	bl	vPortYield
	b	.L4
.L3:
	.loc 1 314 17
	ldr	r3, [sp, #8]
	adds	r3, r3, #16
	movs	r0, r3
	bl	vListInitialise
	.loc 1 315 17
	ldr	r3, [sp, #8]
	adds	r3, r3, #36
	movs	r0, r3
	bl	vListInitialise
.L4:
	.loc 1 318 9
	bl	vPortExitCritical
	b	.L5
.L2:
	.loc 1 322 17
	movs	r3, #0
	str	r3, [sp, #12]
.L5:
	.loc 1 329 12
	ldr	r3, [sp, #12]
	.loc 1 330 1
	movs	r0, r3
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.L8:
	.align	2
.L7:
	.word	2147483647
.LFE0:
	.size	xQueueGenericReset, .-xQueueGenericReset
	.section	.text.xQueueGenericCreate,"ax",%progbits
	.align	1
	.global	xQueueGenericCreate
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueueGenericCreate, %function
xQueueGenericCreate:
.LFB1:
	.loc 1 401 5
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI2:
	sub	sp, sp, #40
.LCFI3:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	movs	r3, #15
	add	r3, r3, sp
	strb	r2, [r3]
	.loc 1 402 19
	movs	r3, #0
	str	r3, [sp, #36]
	.loc 1 406 11
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L10
	.loc 1 408 26 discriminator 1
	ldr	r1, [sp, #20]
	ldr	r0, .L12
	bl	__aeabi_uidiv
	movs	r3, r0
	movs	r2, r3
	.loc 1 406 51 discriminator 1
	ldr	r3, [sp, #16]
	cmp	r3, r2
	bhi	.L10
	.loc 1 410 67
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #16]
	muls	r3, r2
	.loc 1 408 60
	ldr	r2, .L12+4
	cmp	r3, r2
	bhi	.L10
	.loc 1 415 31
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #16]
	muls	r3, r2
	str	r3, [sp, #32]
	.loc 1 426 40
	ldr	r3, [sp, #32]
	adds	r3, r3, #80
	movs	r0, r3
	bl	pvPortMalloc
	movs	r3, r0
	str	r3, [sp, #36]
	.loc 1 428 15
	ldr	r3, [sp, #36]
	cmp	r3, #0
	beq	.L10
	.loc 1 432 33
	ldr	r3, [sp, #36]
	str	r3, [sp, #28]
	.loc 1 433 33
	ldr	r3, [sp, #28]
	adds	r3, r3, #80
	str	r3, [sp, #28]
	.loc 1 444 17
	movs	r3, #15
	add	r3, r3, sp
	ldrb	r4, [r3]
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	ldr	r3, [sp, #36]
	str	r3, [sp]
	movs	r3, r4
	bl	prvInitialiseNewQueue
.L10:
	.loc 1 458 16
	ldr	r3, [sp, #36]
	.loc 1 459 5
	movs	r0, r3
	add	sp, sp, #40
	@ sp needed
	pop	{r4, pc}
.L13:
	.align	2
.L12:
	.word	2147483647
	.word	2147483567
.LFE1:
	.size	xQueueGenericCreate, .-xQueueGenericCreate
	.section	.text.prvInitialiseNewQueue,"ax",%progbits
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	prvInitialiseNewQueue, %function
prvInitialiseNewQueue:
.LFB2:
	.loc 1 469 1
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI4:
	sub	sp, sp, #20
.LCFI5:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	movs	r2, r3
	mov	r3, sp
	adds	r3, r3, #3
	strb	r2, [r3]
	.loc 1 474 7
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L15
	.loc 1 480 28
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #24]
	str	r2, [r3]
	b	.L16
.L15:
	.loc 1 485 28
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #4]
	str	r2, [r3]
.L16:
	.loc 1 490 26
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #12]
	str	r2, [r3, #60]
	.loc 1 491 28
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #8]
	str	r2, [r3, #64]
	.loc 1 492 14
	ldr	r3, [sp, #24]
	movs	r1, #1
	movs	r0, r3
	bl	xQueueGenericReset
	.loc 1 496 37
	ldr	r3, [sp, #24]
	mov	r2, sp
	adds	r2, r2, #3
	movs	r1, #76
	ldrb	r2, [r2]
	strb	r2, [r3, r1]
	.loc 1 507 1
	nop
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.LFE2:
	.size	prvInitialiseNewQueue, .-prvInitialiseNewQueue
	.section	.text.prvInitialiseMutex,"ax",%progbits
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	prvInitialiseMutex, %function
prvInitialiseMutex:
.LFB3:
	.loc 1 513 5
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI6:
	sub	sp, sp, #12
.LCFI7:
	str	r0, [sp, #4]
	.loc 1 514 11
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L19
	.loc 1 520 51
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 521 37
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 524 59
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 1 529 22
	ldr	r0, [sp, #4]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	bl	xQueueGenericSend
.L19:
	.loc 1 535 5
	nop
	add	sp, sp, #12
	@ sp needed
	pop	{pc}
.LFE3:
	.size	prvInitialiseMutex, .-prvInitialiseMutex
	.section	.text.xQueueCreateMutex,"ax",%progbits
	.align	1
	.global	xQueueCreateMutex
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueueCreateMutex, %function
xQueueCreateMutex:
.LFB4:
	.loc 1 543 5
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI8:
	sub	sp, sp, #28
.LCFI9:
	movs	r2, r0
	mov	r3, sp
	adds	r3, r3, #7
	strb	r2, [r3]
	.loc 1 545 27
	movs	r3, #1
	str	r3, [sp, #20]
	.loc 1 545 62
	movs	r3, #0
	str	r3, [sp, #16]
	.loc 1 547 21
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r2, [r3]
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	xQueueGenericCreate
	movs	r3, r0
	str	r3, [sp, #12]
	.loc 1 548 9
	ldr	r3, [sp, #12]
	movs	r0, r3
	bl	prvInitialiseMutex
	.loc 1 550 16
	ldr	r3, [sp, #12]
	.loc 1 551 5
	movs	r0, r3
	add	sp, sp, #28
	@ sp needed
	pop	{pc}
.LFE4:
	.size	xQueueCreateMutex, .-xQueueCreateMutex
	.section	.text.xQueueGiveMutexRecursive,"ax",%progbits
	.align	1
	.global	xQueueGiveMutexRecursive
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueueGiveMutexRecursive, %function
xQueueGiveMutexRecursive:
.LFB5:
	.loc 1 639 5
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI10:
	sub	sp, sp, #16
.LCFI11:
	str	r0, [sp, #4]
	.loc 1 641 25
	ldr	r3, [sp, #4]
	str	r3, [sp, #8]
	.loc 1 651 34
	ldr	r3, [sp, #8]
	ldr	r4, [r3, #8]
	.loc 1 651 51
	bl	xTaskGetCurrentTaskHandle
	movs	r3, r0
	.loc 1 651 11
	cmp	r4, r3
	bne	.L23
	.loc 1 660 36
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #12]
	.loc 1 660 59
	subs	r2, r3, #1
	ldr	r3, [sp, #8]
	str	r2, [r3, #12]
	.loc 1 663 38
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #12]
	.loc 1 663 15
	cmp	r3, #0
	bne	.L24
	.loc 1 667 26
	ldr	r0, [sp, #8]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	bl	xQueueGenericSend
.L24:
	.loc 1 674 21
	movs	r3, #1
	str	r3, [sp, #12]
	b	.L25
.L23:
	.loc 1 680 21
	movs	r3, #0
	str	r3, [sp, #12]
.L25:
	.loc 1 685 16
	ldr	r3, [sp, #12]
	.loc 1 686 5
	movs	r0, r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.LFE5:
	.size	xQueueGiveMutexRecursive, .-xQueueGiveMutexRecursive
	.section	.text.xQueueTakeMutexRecursive,"ax",%progbits
	.align	1
	.global	xQueueTakeMutexRecursive
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueueTakeMutexRecursive, %function
xQueueTakeMutexRecursive:
.LFB6:
	.loc 1 695 5
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI12:
	sub	sp, sp, #16
.LCFI13:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 697 25
	ldr	r3, [sp, #4]
	str	r3, [sp, #8]
	.loc 1 706 34
	ldr	r3, [sp, #8]
	ldr	r4, [r3, #8]
	.loc 1 706 51
	bl	xTaskGetCurrentTaskHandle
	movs	r3, r0
	.loc 1 706 11
	cmp	r4, r3
	bne	.L28
	.loc 1 708 36
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #12]
	.loc 1 708 59
	adds	r2, r3, #1
	ldr	r3, [sp, #8]
	str	r2, [r3, #12]
	.loc 1 709 21
	movs	r3, #1
	str	r3, [sp, #12]
	b	.L29
.L28:
	.loc 1 713 23
	ldr	r2, [sp]
	ldr	r3, [sp, #8]
	movs	r1, r2
	movs	r0, r3
	bl	xQueueSemaphoreTake
	movs	r3, r0
	str	r3, [sp, #12]
	.loc 1 718 15
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L29
	.loc 1 720 40
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #12]
	.loc 1 720 63
	adds	r2, r3, #1
	ldr	r3, [sp, #8]
	str	r2, [r3, #12]
.L29:
	.loc 1 728 16
	ldr	r3, [sp, #12]
	.loc 1 729 5
	movs	r0, r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.LFE6:
	.size	xQueueTakeMutexRecursive, .-xQueueTakeMutexRecursive
	.section	.text.xQueueCreateCountingSemaphore,"ax",%progbits
	.align	1
	.global	xQueueCreateCountingSemaphore
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueueCreateCountingSemaphore, %function
xQueueCreateCountingSemaphore:
.LFB7:
	.loc 1 774 5
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI14:
	sub	sp, sp, #20
.LCFI15:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 775 23
	movs	r3, #0
	str	r3, [sp, #12]
	.loc 1 777 11
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L32
	.loc 1 777 33 discriminator 1
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bhi	.L32
	.loc 1 780 23
	ldr	r3, [sp, #4]
	movs	r2, #2
	movs	r1, #0
	movs	r0, r3
	bl	xQueueGenericCreate
	movs	r3, r0
	str	r3, [sp, #12]
	.loc 1 782 15
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L32
	.loc 1 784 62
	ldr	r3, [sp, #12]
	ldr	r2, [sp]
	str	r2, [r3, #56]
.L32:
	.loc 1 799 16
	ldr	r3, [sp, #12]
	.loc 1 800 5
	movs	r0, r3
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.LFE7:
	.size	xQueueCreateCountingSemaphore, .-xQueueCreateCountingSemaphore
	.section	.text.xQueueGenericSend,"ax",%progbits
	.align	1
	.global	xQueueGenericSend
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueueGenericSend, %function
xQueueGenericSend:
.LFB8:
	.loc 1 809 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI16:
	sub	sp, sp, #44
.LCFI17:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 810 16
	movs	r3, #0
	str	r3, [sp, #36]
	.loc 1 812 21
	ldr	r3, [sp, #12]
	str	r3, [sp, #32]
.L47:
	.loc 1 828 9
	bl	vPortEnterCritical
	.loc 1 834 26
	ldr	r3, [sp, #32]
	ldr	r2, [r3, #56]
	.loc 1 834 55
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #60]
	.loc 1 834 15
	cmp	r2, r3
	bcc	.L35
	.loc 1 834 68 discriminator 1
	ldr	r3, [sp]
	cmp	r3, #2
	bne	.L36
.L35:
	.loc 1 900 42
	ldr	r2, [sp]
	ldr	r1, [sp, #8]
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvCopyDataToQueue
	movs	r3, r0
	str	r3, [sp, #28]
	.loc 1 904 29
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #36]
	.loc 1 904 27
	cmp	r3, #0
	beq	.L37
	.loc 1 906 59
	ldr	r3, [sp, #32]
	adds	r3, r3, #36
	.loc 1 906 33
	movs	r0, r3
	bl	xTaskRemoveFromEventList
	subs	r3, r0, #0
	.loc 1 906 31
	beq	.L38
	.loc 1 912 33
	bl	vPortYield
	b	.L38
.L37:
	.loc 1 919 32
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L38
	.loc 1 925 29
	bl	vPortYield
.L38:
	.loc 1 934 17
	bl	vPortExitCritical
	.loc 1 935 24
	movs	r3, #1
	b	.L48
.L36:
	.loc 1 939 34
	ldr	r3, [sp, #4]
	.loc 1 939 19
	cmp	r3, #0
	bne	.L40
	.loc 1 943 21
	bl	vPortExitCritical
	.loc 1 948 28
	movs	r3, #0
	b	.L48
.L40:
	.loc 1 950 24
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L41
	.loc 1 954 21
	add	r3, sp, #20
	movs	r0, r3
	bl	vTaskInternalSetTimeOutState
	.loc 1 955 35
	movs	r3, #1
	str	r3, [sp, #36]
.L41:
	.loc 1 964 9
	bl	vPortExitCritical
	.loc 1 969 9
	bl	vTaskSuspendAll
	.loc 1 970 9
	bl	vPortEnterCritical
	ldr	r3, [sp, #32]
	movs	r2, #68
	ldrb	r3, [r3, r2]
	sxtb	r3, r3
	adds	r3, r3, #1
	bne	.L42
	.loc 1 970 9 is_stmt 0 discriminator 1
	ldr	r3, [sp, #32]
	movs	r2, #68
	movs	r1, #0
	strb	r1, [r3, r2]
.L42:
	.loc 1 970 9 discriminator 3
	ldr	r3, [sp, #32]
	movs	r2, #69
	ldrb	r3, [r3, r2]
	sxtb	r3, r3
	adds	r3, r3, #1
	bne	.L43
	.loc 1 970 9 discriminator 4
	ldr	r3, [sp, #32]
	movs	r2, #69
	movs	r1, #0
	strb	r1, [r3, r2]
.L43:
	.loc 1 970 9 discriminator 6
	bl	vPortExitCritical
	.loc 1 973 13 is_stmt 1 discriminator 6
	add	r2, sp, #4
	add	r3, sp, #20
	movs	r1, r2
	movs	r0, r3
	bl	xTaskCheckForTimeOut
	subs	r3, r0, #0
	.loc 1 973 11 discriminator 6
	bne	.L44
	.loc 1 975 17
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvIsQueueFull
	subs	r3, r0, #0
	.loc 1 975 15
	beq	.L45
	.loc 1 978 17
	ldr	r3, [sp, #32]
	adds	r3, r3, #16
	ldr	r2, [sp, #4]
	movs	r1, r2
	movs	r0, r3
	bl	vTaskPlaceOnEventList
	.loc 1 985 17
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvUnlockQueue
	.loc 1 992 21
	bl	xTaskResumeAll
	subs	r3, r0, #0
	.loc 1 992 19
	bne	.L47
	.loc 1 994 21
	bl	vPortYield
	b	.L47
.L45:
	.loc 1 1000 17
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvUnlockQueue
	.loc 1 1001 26
	bl	xTaskResumeAll
	b	.L47
.L44:
	.loc 1 1007 13
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvUnlockQueue
	.loc 1 1008 22
	bl	xTaskResumeAll
	.loc 1 1011 20
	movs	r3, #0
.L48:
	.loc 1 1014 1 discriminator 3
	movs	r0, r3
	add	sp, sp, #44
	@ sp needed
	pop	{pc}
.LFE8:
	.size	xQueueGenericSend, .-xQueueGenericSend
	.section	.text.xQueueGenericSendFromISR,"ax",%progbits
	.align	1
	.global	xQueueGenericSendFromISR
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueueGenericSendFromISR, %function
xQueueGenericSendFromISR:
.LFB9:
	.loc 1 1021 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI18:
	sub	sp, sp, #44
.LCFI19:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 1024 21
	ldr	r3, [sp, #12]
	str	r3, [sp, #32]
	.loc 1 1051 30
	bl	ulSetInterruptMaskFromISR
	movs	r3, r0
	str	r3, [sp, #28]
	.loc 1 1053 22
	ldr	r3, [sp, #32]
	ldr	r2, [r3, #56]
	.loc 1 1053 51
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #60]
	.loc 1 1053 11
	cmp	r2, r3
	bcc	.L50
	.loc 1 1053 64 discriminator 1
	ldr	r3, [sp]
	cmp	r3, #2
	bne	.L51
.L50:
.LBB2:
	.loc 1 1055 26
	movs	r3, #27
	add	r3, r3, sp
	ldr	r2, [sp, #32]
	movs	r1, #69
	ldrb	r2, [r2, r1]
	strb	r2, [r3]
	.loc 1 1056 31
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #56]
	str	r3, [sp, #20]
	.loc 1 1065 22
	ldr	r2, [sp]
	ldr	r1, [sp, #8]
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvCopyDataToQueue
	.loc 1 1069 15
	movs	r3, #27
	add	r3, r3, sp
	ldrb	r3, [r3]
	sxtb	r3, r3
	adds	r3, r3, #1
	bne	.L52
	.loc 1 1131 29
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #36]
	.loc 1 1131 27
	cmp	r3, #0
	beq	.L53
	.loc 1 1133 59
	ldr	r3, [sp, #32]
	adds	r3, r3, #36
	.loc 1 1133 33
	movs	r0, r3
	bl	xTaskRemoveFromEventList
	subs	r3, r0, #0
	.loc 1 1133 31
	beq	.L53
	.loc 1 1137 35
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L53
	.loc 1 1139 64
	ldr	r3, [sp, #4]
	movs	r2, #1
	str	r2, [r3]
	b	.L53
.L52:
	.loc 1 1167 57
	movs	r3, #27
	add	r3, r3, sp
	ldrb	r3, [r3]
	adds	r3, r3, #1
	uxtb	r3, r3
	.loc 1 1167 36
	sxtb	r1, r3
	.loc 1 1167 34
	ldr	r3, [sp, #32]
	movs	r2, #69
	strb	r1, [r3, r2]
.L53:
	.loc 1 1170 21
	movs	r3, #1
	str	r3, [sp, #36]
.LBE2:
	.loc 1 1054 9
	b	.L54
.L51:
	.loc 1 1175 21
	movs	r3, #0
	str	r3, [sp, #36]
.L54:
	.loc 1 1178 5
	ldr	r3, [sp, #28]
	movs	r0, r3
	bl	vClearInterruptMaskFromISR
	.loc 1 1180 12
	ldr	r3, [sp, #36]
	.loc 1 1181 1
	movs	r0, r3
	add	sp, sp, #44
	@ sp needed
	pop	{pc}
.LFE9:
	.size	xQueueGenericSendFromISR, .-xQueueGenericSendFromISR
	.section	.text.xQueueGiveFromISR,"ax",%progbits
	.align	1
	.global	xQueueGiveFromISR
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueueGiveFromISR, %function
xQueueGiveFromISR:
.LFB10:
	.loc 1 1186 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI20:
	sub	sp, sp, #36
.LCFI21:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1189 21
	ldr	r3, [sp, #4]
	str	r3, [sp, #24]
	.loc 1 1224 30
	bl	ulSetInterruptMaskFromISR
	movs	r3, r0
	str	r3, [sp, #20]
.LBB3:
	.loc 1 1226 27
	ldr	r3, [sp, #24]
	ldr	r3, [r3, #56]
	str	r3, [sp, #16]
	.loc 1 1231 40
	ldr	r3, [sp, #24]
	ldr	r3, [r3, #60]
	.loc 1 1231 11
	ldr	r2, [sp, #16]
	cmp	r2, r3
	bcs	.L57
.LBB4:
	.loc 1 1233 26
	movs	r3, #15
	add	r3, r3, sp
	ldr	r2, [sp, #24]
	movs	r1, #69
	ldrb	r2, [r2, r1]
	strb	r2, [r3]
	.loc 1 1243 60
	ldr	r3, [sp, #16]
	adds	r2, r3, #1
	.loc 1 1243 40
	ldr	r3, [sp, #24]
	str	r2, [r3, #56]
	.loc 1 1247 15
	movs	r3, #15
	add	r3, r3, sp
	ldrb	r3, [r3]
	sxtb	r3, r3
	adds	r3, r3, #1
	bne	.L58
	.loc 1 1302 29
	ldr	r3, [sp, #24]
	ldr	r3, [r3, #36]
	.loc 1 1302 27
	cmp	r3, #0
	beq	.L59
	.loc 1 1304 59
	ldr	r3, [sp, #24]
	adds	r3, r3, #36
	.loc 1 1304 33
	movs	r0, r3
	bl	xTaskRemoveFromEventList
	subs	r3, r0, #0
	.loc 1 1304 31
	beq	.L59
	.loc 1 1308 35
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L59
	.loc 1 1310 64
	ldr	r3, [sp]
	movs	r2, #1
	str	r2, [r3]
	b	.L59
.L58:
	.loc 1 1335 57
	movs	r3, #15
	add	r3, r3, sp
	ldrb	r3, [r3]
	adds	r3, r3, #1
	uxtb	r3, r3
	.loc 1 1335 36
	sxtb	r1, r3
	.loc 1 1335 34
	ldr	r3, [sp, #24]
	movs	r2, #69
	strb	r1, [r3, r2]
.L59:
	.loc 1 1338 21
	movs	r3, #1
	str	r3, [sp, #28]
.LBE4:
	b	.L60
.L57:
	.loc 1 1343 21
	movs	r3, #0
	str	r3, [sp, #28]
.L60:
.LBE3:
	.loc 1 1346 5
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	vClearInterruptMaskFromISR
	.loc 1 1348 12
	ldr	r3, [sp, #28]
	.loc 1 1349 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.LFE10:
	.size	xQueueGiveFromISR, .-xQueueGiveFromISR
	.section	.text.xQueueReceive,"ax",%progbits
	.align	1
	.global	xQueueReceive
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueueReceive, %function
xQueueReceive:
.LFB11:
	.loc 1 1355 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI22:
	sub	sp, sp, #44
.LCFI23:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 1356 16
	movs	r3, #0
	str	r3, [sp, #36]
	.loc 1 1358 21
	ldr	r3, [sp, #12]
	str	r3, [sp, #32]
.L73:
	.loc 1 1379 9
	bl	vPortEnterCritical
.LBB5:
	.loc 1 1381 31
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #56]
	str	r3, [sp, #28]
	.loc 1 1385 15
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L63
	.loc 1 1388 17
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #32]
	movs	r1, r2
	movs	r0, r3
	bl	prvCopyDataFromQueue
	.loc 1 1390 64
	ldr	r3, [sp, #28]
	subs	r2, r3, #1
	.loc 1 1390 44
	ldr	r3, [sp, #32]
	str	r2, [r3, #56]
	.loc 1 1395 21
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #16]
	.loc 1 1395 19
	cmp	r3, #0
	beq	.L64
	.loc 1 1397 51
	ldr	r3, [sp, #32]
	adds	r3, r3, #16
	.loc 1 1397 25
	movs	r0, r3
	bl	xTaskRemoveFromEventList
	subs	r3, r0, #0
	.loc 1 1397 23
	beq	.L64
	.loc 1 1399 25
	bl	vPortYield
.L64:
	.loc 1 1411 17
	bl	vPortExitCritical
	.loc 1 1412 24
	movs	r3, #1
	b	.L74
.L63:
	.loc 1 1416 34
	ldr	r3, [sp, #4]
	.loc 1 1416 19
	cmp	r3, #0
	bne	.L66
	.loc 1 1420 21
	bl	vPortExitCritical
	.loc 1 1422 28
	movs	r3, #0
	b	.L74
.L66:
	.loc 1 1424 24
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L67
	.loc 1 1428 21
	add	r3, sp, #20
	movs	r0, r3
	bl	vTaskInternalSetTimeOutState
	.loc 1 1429 35
	movs	r3, #1
	str	r3, [sp, #36]
.L67:
.LBE5:
	.loc 1 1438 9
	bl	vPortExitCritical
	.loc 1 1443 9
	bl	vTaskSuspendAll
	.loc 1 1444 9
	bl	vPortEnterCritical
	ldr	r3, [sp, #32]
	movs	r2, #68
	ldrb	r3, [r3, r2]
	sxtb	r3, r3
	adds	r3, r3, #1
	bne	.L68
	.loc 1 1444 9 is_stmt 0 discriminator 1
	ldr	r3, [sp, #32]
	movs	r2, #68
	movs	r1, #0
	strb	r1, [r3, r2]
.L68:
	.loc 1 1444 9 discriminator 3
	ldr	r3, [sp, #32]
	movs	r2, #69
	ldrb	r3, [r3, r2]
	sxtb	r3, r3
	adds	r3, r3, #1
	bne	.L69
	.loc 1 1444 9 discriminator 4
	ldr	r3, [sp, #32]
	movs	r2, #69
	movs	r1, #0
	strb	r1, [r3, r2]
.L69:
	.loc 1 1444 9 discriminator 6
	bl	vPortExitCritical
	.loc 1 1447 13 is_stmt 1 discriminator 6
	add	r2, sp, #4
	add	r3, sp, #20
	movs	r1, r2
	movs	r0, r3
	bl	xTaskCheckForTimeOut
	subs	r3, r0, #0
	.loc 1 1447 11 discriminator 6
	bne	.L70
	.loc 1 1451 17
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvIsQueueEmpty
	subs	r3, r0, #0
	.loc 1 1451 15
	beq	.L71
	.loc 1 1454 17
	ldr	r3, [sp, #32]
	adds	r3, r3, #36
	ldr	r2, [sp, #4]
	movs	r1, r2
	movs	r0, r3
	bl	vTaskPlaceOnEventList
	.loc 1 1455 17
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvUnlockQueue
	.loc 1 1457 21
	bl	xTaskResumeAll
	subs	r3, r0, #0
	.loc 1 1457 19
	bne	.L73
	.loc 1 1459 21
	bl	vPortYield
	b	.L73
.L71:
	.loc 1 1470 17
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvUnlockQueue
	.loc 1 1471 26
	bl	xTaskResumeAll
	b	.L73
.L70:
	.loc 1 1478 13
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvUnlockQueue
	.loc 1 1479 22
	bl	xTaskResumeAll
	.loc 1 1481 17
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvIsQueueEmpty
	subs	r3, r0, #0
	.loc 1 1481 15
	bne	.LCB1045
	b	.L73	@long jump
.LCB1045:
	.loc 1 1484 24
	movs	r3, #0
.L74:
	.loc 1 1492 1 discriminator 3
	movs	r0, r3
	add	sp, sp, #44
	@ sp needed
	pop	{pc}
.LFE11:
	.size	xQueueReceive, .-xQueueReceive
	.section	.text.xQueueSemaphoreTake,"ax",%progbits
	.align	1
	.global	xQueueSemaphoreTake
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueueSemaphoreTake, %function
xQueueSemaphoreTake:
.LFB12:
	.loc 1 1497 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI24:
	sub	sp, sp, #44
.LCFI25:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1498 16
	movs	r3, #0
	str	r3, [sp, #36]
	.loc 1 1500 21
	ldr	r3, [sp, #4]
	str	r3, [sp, #28]
	.loc 1 1503 20
	movs	r3, #0
	str	r3, [sp, #32]
.L89:
	.loc 1 1525 9
	bl	vPortEnterCritical
.LBB6:
	.loc 1 1529 31
	ldr	r3, [sp, #28]
	ldr	r3, [r3, #56]
	str	r3, [sp, #24]
	.loc 1 1533 15
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L76
	.loc 1 1539 63
	ldr	r3, [sp, #24]
	subs	r2, r3, #1
	.loc 1 1539 44
	ldr	r3, [sp, #28]
	str	r2, [r3, #56]
	.loc 1 1543 36
	ldr	r3, [sp, #28]
	ldr	r3, [r3]
	.loc 1 1543 27
	cmp	r3, #0
	bne	.L77
	.loc 1 1547 66
	bl	pvTaskIncrementMutexHeldCount
	movs	r2, r0
	.loc 1 1547 64
	ldr	r3, [sp, #28]
	str	r2, [r3, #8]
.L77:
	.loc 1 1558 21
	ldr	r3, [sp, #28]
	ldr	r3, [r3, #16]
	.loc 1 1558 19
	cmp	r3, #0
	beq	.L78
	.loc 1 1560 51
	ldr	r3, [sp, #28]
	adds	r3, r3, #16
	.loc 1 1560 25
	movs	r0, r3
	bl	xTaskRemoveFromEventList
	subs	r3, r0, #0
	.loc 1 1560 23
	beq	.L78
	.loc 1 1562 25
	bl	vPortYield
.L78:
	.loc 1 1574 17
	bl	vPortExitCritical
	.loc 1 1575 24
	movs	r3, #1
	b	.L90
.L76:
	.loc 1 1579 34
	ldr	r3, [sp]
	.loc 1 1579 19
	cmp	r3, #0
	bne	.L80
	.loc 1 1592 21
	bl	vPortExitCritical
	.loc 1 1594 28
	movs	r3, #0
	b	.L90
.L80:
	.loc 1 1596 24
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L81
	.loc 1 1600 21
	add	r3, sp, #12
	movs	r0, r3
	bl	vTaskInternalSetTimeOutState
	.loc 1 1601 35
	movs	r3, #1
	str	r3, [sp, #36]
.L81:
.LBE6:
	.loc 1 1610 9
	bl	vPortExitCritical
	.loc 1 1615 9
	bl	vTaskSuspendAll
	.loc 1 1616 9
	bl	vPortEnterCritical
	ldr	r3, [sp, #28]
	movs	r2, #68
	ldrb	r3, [r3, r2]
	sxtb	r3, r3
	adds	r3, r3, #1
	bne	.L82
	.loc 1 1616 9 is_stmt 0 discriminator 1
	ldr	r3, [sp, #28]
	movs	r2, #68
	movs	r1, #0
	strb	r1, [r3, r2]
.L82:
	.loc 1 1616 9 discriminator 3
	ldr	r3, [sp, #28]
	movs	r2, #69
	ldrb	r3, [r3, r2]
	sxtb	r3, r3
	adds	r3, r3, #1
	bne	.L83
	.loc 1 1616 9 discriminator 4
	ldr	r3, [sp, #28]
	movs	r2, #69
	movs	r1, #0
	strb	r1, [r3, r2]
.L83:
	.loc 1 1616 9 discriminator 6
	bl	vPortExitCritical
	.loc 1 1619 13 is_stmt 1 discriminator 6
	mov	r2, sp
	add	r3, sp, #12
	movs	r1, r2
	movs	r0, r3
	bl	xTaskCheckForTimeOut
	subs	r3, r0, #0
	.loc 1 1619 11 discriminator 6
	bne	.L84
	.loc 1 1625 17
	ldr	r3, [sp, #28]
	movs	r0, r3
	bl	prvIsQueueEmpty
	subs	r3, r0, #0
	.loc 1 1625 15
	beq	.L85
	.loc 1 1631 36
	ldr	r3, [sp, #28]
	ldr	r3, [r3]
	.loc 1 1631 27
	cmp	r3, #0
	bne	.L86
	.loc 1 1633 29
	bl	vPortEnterCritical
	.loc 1 1635 56
	ldr	r3, [sp, #28]
	ldr	r3, [r3, #8]
	movs	r0, r3
	bl	xTaskPriorityInherit
	movs	r3, r0
	str	r3, [sp, #32]
	.loc 1 1637 29
	bl	vPortExitCritical
.L86:
	.loc 1 1646 17
	ldr	r3, [sp, #28]
	adds	r3, r3, #36
	ldr	r2, [sp]
	movs	r1, r2
	movs	r0, r3
	bl	vTaskPlaceOnEventList
	.loc 1 1647 17
	ldr	r3, [sp, #28]
	movs	r0, r3
	bl	prvUnlockQueue
	.loc 1 1649 21
	bl	xTaskResumeAll
	subs	r3, r0, #0
	.loc 1 1649 19
	beq	.LCB1209
	b	.L89	@long jump
.LCB1209:
	.loc 1 1651 21
	bl	vPortYield
	b	.L89
.L85:
	.loc 1 1662 17
	ldr	r3, [sp, #28]
	movs	r0, r3
	bl	prvUnlockQueue
	.loc 1 1663 26
	bl	xTaskResumeAll
	b	.L89
.L84:
	.loc 1 1669 13
	ldr	r3, [sp, #28]
	movs	r0, r3
	bl	prvUnlockQueue
	.loc 1 1670 22
	bl	xTaskResumeAll
	.loc 1 1676 17
	ldr	r3, [sp, #28]
	movs	r0, r3
	bl	prvIsQueueEmpty
	subs	r3, r0, #0
	.loc 1 1676 15
	bne	.LCB1232
	b	.L89	@long jump
.LCB1232:
	.loc 1 1683 27
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L88
	.loc 1 1685 29
	bl	vPortEnterCritical
.LBB7:
	.loc 1 1694 60
	ldr	r3, [sp, #28]
	movs	r0, r3
	bl	prvGetDisinheritPriorityAfterTimeout
	movs	r3, r0
	str	r3, [sp, #20]
	.loc 1 1695 33
	ldr	r3, [sp, #28]
	ldr	r3, [r3, #8]
	ldr	r2, [sp, #20]
	movs	r1, r2
	movs	r0, r3
	bl	vTaskPriorityDisinheritAfterTimeout
.LBE7:
	.loc 1 1697 29
	bl	vPortExitCritical
.L88:
	.loc 1 1703 24
	movs	r3, #0
.L90:
	.loc 1 1711 1 discriminator 3
	movs	r0, r3
	add	sp, sp, #44
	@ sp needed
	pop	{pc}
.LFE12:
	.size	xQueueSemaphoreTake, .-xQueueSemaphoreTake
	.section	.text.xQueuePeek,"ax",%progbits
	.align	1
	.global	xQueuePeek
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueuePeek, %function
xQueuePeek:
.LFB13:
	.loc 1 1717 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI26:
	sub	sp, sp, #44
.LCFI27:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 1718 16
	movs	r3, #0
	str	r3, [sp, #36]
	.loc 1 1721 21
	ldr	r3, [sp, #12]
	str	r3, [sp, #32]
.L102:
	.loc 1 1742 9
	bl	vPortEnterCritical
.LBB8:
	.loc 1 1744 31
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #56]
	str	r3, [sp, #28]
	.loc 1 1748 15
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L92
	.loc 1 1753 40
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #12]
	str	r3, [sp, #24]
	.loc 1 1755 17
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #32]
	movs	r1, r2
	movs	r0, r3
	bl	prvCopyDataFromQueue
	.loc 1 1759 46
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #24]
	str	r2, [r3, #12]
	.loc 1 1763 21
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #36]
	.loc 1 1763 19
	cmp	r3, #0
	beq	.L93
	.loc 1 1765 51
	ldr	r3, [sp, #32]
	adds	r3, r3, #36
	.loc 1 1765 25
	movs	r0, r3
	bl	xTaskRemoveFromEventList
	subs	r3, r0, #0
	.loc 1 1765 23
	beq	.L93
	.loc 1 1768 25
	bl	vPortYield
.L93:
	.loc 1 1780 17
	bl	vPortExitCritical
	.loc 1 1781 24
	movs	r3, #1
	b	.L103
.L92:
	.loc 1 1785 34
	ldr	r3, [sp, #4]
	.loc 1 1785 19
	cmp	r3, #0
	bne	.L95
	.loc 1 1789 21
	bl	vPortExitCritical
	.loc 1 1791 28
	movs	r3, #0
	b	.L103
.L95:
	.loc 1 1793 24
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L96
	.loc 1 1798 21
	add	r3, sp, #16
	movs	r0, r3
	bl	vTaskInternalSetTimeOutState
	.loc 1 1799 35
	movs	r3, #1
	str	r3, [sp, #36]
.L96:
.LBE8:
	.loc 1 1808 9
	bl	vPortExitCritical
	.loc 1 1813 9
	bl	vTaskSuspendAll
	.loc 1 1814 9
	bl	vPortEnterCritical
	ldr	r3, [sp, #32]
	movs	r2, #68
	ldrb	r3, [r3, r2]
	sxtb	r3, r3
	adds	r3, r3, #1
	bne	.L97
	.loc 1 1814 9 is_stmt 0 discriminator 1
	ldr	r3, [sp, #32]
	movs	r2, #68
	movs	r1, #0
	strb	r1, [r3, r2]
.L97:
	.loc 1 1814 9 discriminator 3
	ldr	r3, [sp, #32]
	movs	r2, #69
	ldrb	r3, [r3, r2]
	sxtb	r3, r3
	adds	r3, r3, #1
	bne	.L98
	.loc 1 1814 9 discriminator 4
	ldr	r3, [sp, #32]
	movs	r2, #69
	movs	r1, #0
	strb	r1, [r3, r2]
.L98:
	.loc 1 1814 9 discriminator 6
	bl	vPortExitCritical
	.loc 1 1817 13 is_stmt 1 discriminator 6
	add	r2, sp, #4
	add	r3, sp, #16
	movs	r1, r2
	movs	r0, r3
	bl	xTaskCheckForTimeOut
	subs	r3, r0, #0
	.loc 1 1817 11 discriminator 6
	bne	.L99
	.loc 1 1821 17
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvIsQueueEmpty
	subs	r3, r0, #0
	.loc 1 1821 15
	beq	.L100
	.loc 1 1824 17
	ldr	r3, [sp, #32]
	adds	r3, r3, #36
	ldr	r2, [sp, #4]
	movs	r1, r2
	movs	r0, r3
	bl	vTaskPlaceOnEventList
	.loc 1 1825 17
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvUnlockQueue
	.loc 1 1827 21
	bl	xTaskResumeAll
	subs	r3, r0, #0
	.loc 1 1827 19
	bne	.L102
	.loc 1 1829 21
	bl	vPortYield
	b	.L102
.L100:
	.loc 1 1840 17
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvUnlockQueue
	.loc 1 1841 26
	bl	xTaskResumeAll
	b	.L102
.L99:
	.loc 1 1848 13
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvUnlockQueue
	.loc 1 1849 22
	bl	xTaskResumeAll
	.loc 1 1851 17
	ldr	r3, [sp, #32]
	movs	r0, r3
	bl	prvIsQueueEmpty
	subs	r3, r0, #0
	.loc 1 1851 15
	bne	.LCB1421
	b	.L102	@long jump
.LCB1421:
	.loc 1 1854 24
	movs	r3, #0
.L103:
	.loc 1 1862 1 discriminator 3
	movs	r0, r3
	add	sp, sp, #44
	@ sp needed
	pop	{pc}
.LFE13:
	.size	xQueuePeek, .-xQueuePeek
	.section	.text.xQueueReceiveFromISR,"ax",%progbits
	.align	1
	.global	xQueueReceiveFromISR
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueueReceiveFromISR, %function
xQueueReceiveFromISR:
.LFB14:
	.loc 1 1868 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI28:
	sub	sp, sp, #44
.LCFI29:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 1871 21
	ldr	r3, [sp, #12]
	str	r3, [sp, #32]
	.loc 1 1892 30
	bl	ulSetInterruptMaskFromISR
	movs	r3, r0
	str	r3, [sp, #28]
.LBB9:
	.loc 1 1894 27
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #56]
	str	r3, [sp, #24]
	.loc 1 1897 11
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L105
.LBB10:
	.loc 1 1899 26
	movs	r3, #23
	add	r3, r3, sp
	ldr	r2, [sp, #32]
	movs	r1, #68
	ldrb	r2, [r2, r1]
	strb	r2, [r3]
	.loc 1 1903 13
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #32]
	movs	r1, r2
	movs	r0, r3
	bl	prvCopyDataFromQueue
	.loc 1 1904 60
	ldr	r3, [sp, #24]
	subs	r2, r3, #1
	.loc 1 1904 40
	ldr	r3, [sp, #32]
	str	r2, [r3, #56]
	.loc 1 1910 15
	movs	r3, #23
	add	r3, r3, sp
	ldrb	r3, [r3]
	sxtb	r3, r3
	adds	r3, r3, #1
	bne	.L106
	.loc 1 1912 21
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #16]
	.loc 1 1912 19
	cmp	r3, #0
	beq	.L107
	.loc 1 1914 51
	ldr	r3, [sp, #32]
	adds	r3, r3, #16
	.loc 1 1914 25
	movs	r0, r3
	bl	xTaskRemoveFromEventList
	subs	r3, r0, #0
	.loc 1 1914 23
	beq	.L107
	.loc 1 1918 27
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L107
	.loc 1 1920 56
	ldr	r3, [sp, #4]
	movs	r2, #1
	str	r2, [r3]
	b	.L107
.L106:
	.loc 1 1943 57
	movs	r3, #23
	add	r3, r3, sp
	ldrb	r3, [r3]
	adds	r3, r3, #1
	uxtb	r3, r3
	.loc 1 1943 36
	sxtb	r1, r3
	.loc 1 1943 34
	ldr	r3, [sp, #32]
	movs	r2, #68
	strb	r1, [r3, r2]
.L107:
	.loc 1 1946 21
	movs	r3, #1
	str	r3, [sp, #36]
.LBE10:
	b	.L108
.L105:
	.loc 1 1950 21
	movs	r3, #0
	str	r3, [sp, #36]
.L108:
.LBE9:
	.loc 1 1954 5
	ldr	r3, [sp, #28]
	movs	r0, r3
	bl	vClearInterruptMaskFromISR
	.loc 1 1956 12
	ldr	r3, [sp, #36]
	.loc 1 1957 1
	movs	r0, r3
	add	sp, sp, #44
	@ sp needed
	pop	{pc}
.LFE14:
	.size	xQueueReceiveFromISR, .-xQueueReceiveFromISR
	.section	.text.xQueuePeekFromISR,"ax",%progbits
	.align	1
	.global	xQueuePeekFromISR
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueuePeekFromISR, %function
xQueuePeekFromISR:
.LFB15:
	.loc 1 1962 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI30:
	sub	sp, sp, #28
.LCFI31:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1966 21
	ldr	r3, [sp, #4]
	str	r3, [sp, #16]
	.loc 1 1988 30
	bl	ulSetInterruptMaskFromISR
	movs	r3, r0
	str	r3, [sp, #12]
	.loc 1 1991 20
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #56]
	.loc 1 1991 11
	cmp	r3, #0
	beq	.L111
	.loc 1 1997 36
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #12]
	str	r3, [sp, #8]
	.loc 1 1998 13
	ldr	r2, [sp]
	ldr	r3, [sp, #16]
	movs	r1, r2
	movs	r0, r3
	bl	prvCopyDataFromQueue
	.loc 1 1999 42
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #8]
	str	r2, [r3, #12]
	.loc 1 2001 21
	movs	r3, #1
	str	r3, [sp, #20]
	b	.L112
.L111:
	.loc 1 2005 21
	movs	r3, #0
	str	r3, [sp, #20]
.L112:
	.loc 1 2009 5
	ldr	r3, [sp, #12]
	movs	r0, r3
	bl	vClearInterruptMaskFromISR
	.loc 1 2011 12
	ldr	r3, [sp, #20]
	.loc 1 2012 1
	movs	r0, r3
	add	sp, sp, #28
	@ sp needed
	pop	{pc}
.LFE15:
	.size	xQueuePeekFromISR, .-xQueuePeekFromISR
	.section	.text.uxQueueMessagesWaiting,"ax",%progbits
	.align	1
	.global	uxQueueMessagesWaiting
	.syntax unified
	.code	16
	.thumb_func
	.type	uxQueueMessagesWaiting, %function
uxQueueMessagesWaiting:
.LFB16:
	.loc 1 2016 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI32:
	sub	sp, sp, #20
.LCFI33:
	str	r0, [sp, #4]
	.loc 1 2021 5
	bl	vPortEnterCritical
	.loc 1 2023 18
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #56]
	str	r3, [sp, #12]
	.loc 1 2025 5
	bl	vPortExitCritical
	.loc 1 2027 12
	ldr	r3, [sp, #12]
	.loc 1 2028 1
	movs	r0, r3
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.LFE16:
	.size	uxQueueMessagesWaiting, .-uxQueueMessagesWaiting
	.section	.text.uxQueueSpacesAvailable,"ax",%progbits
	.align	1
	.global	uxQueueSpacesAvailable
	.syntax unified
	.code	16
	.thumb_func
	.type	uxQueueSpacesAvailable, %function
uxQueueSpacesAvailable:
.LFB17:
	.loc 1 2032 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI34:
	sub	sp, sp, #20
.LCFI35:
	str	r0, [sp, #4]
	.loc 1 2034 21
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	.loc 1 2038 5
	bl	vPortEnterCritical
	.loc 1 2040 27
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #60]
	.loc 1 2040 47
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #56]
	.loc 1 2040 18
	subs	r3, r2, r3
	str	r3, [sp, #8]
	.loc 1 2042 5
	bl	vPortExitCritical
	.loc 1 2044 12
	ldr	r3, [sp, #8]
	.loc 1 2045 1
	movs	r0, r3
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.LFE17:
	.size	uxQueueSpacesAvailable, .-uxQueueSpacesAvailable
	.section	.text.uxQueueMessagesWaitingFromISR,"ax",%progbits
	.align	1
	.global	uxQueueMessagesWaitingFromISR
	.syntax unified
	.code	16
	.thumb_func
	.type	uxQueueMessagesWaitingFromISR, %function
uxQueueMessagesWaitingFromISR:
.LFB18:
	.loc 1 2049 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI36:
	str	r0, [sp, #4]
	.loc 1 2051 21
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	.loc 1 2054 14
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #56]
	str	r3, [sp, #8]
	.loc 1 2056 12
	ldr	r3, [sp, #8]
	.loc 1 2057 1
	movs	r0, r3
	add	sp, sp, #16
	@ sp needed
	bx	lr
.LFE18:
	.size	uxQueueMessagesWaitingFromISR, .-uxQueueMessagesWaitingFromISR
	.section	.text.vQueueDelete,"ax",%progbits
	.align	1
	.global	vQueueDelete
	.syntax unified
	.code	16
	.thumb_func
	.type	vQueueDelete, %function
vQueueDelete:
.LFB19:
	.loc 1 2061 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI37:
	sub	sp, sp, #20
.LCFI38:
	str	r0, [sp, #4]
	.loc 1 2062 21
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	.loc 1 2069 13
	ldr	r3, [sp, #12]
	movs	r0, r3
	bl	vQueueUnregisterQueue
	.loc 1 2077 13
	ldr	r3, [sp, #12]
	movs	r0, r3
	bl	vPortFree
	.loc 1 2099 1
	nop
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.LFE19:
	.size	vQueueDelete, .-vQueueDelete
	.section	.text.uxQueueGetQueueNumber,"ax",%progbits
	.align	1
	.global	uxQueueGetQueueNumber
	.syntax unified
	.code	16
	.thumb_func
	.type	uxQueueGetQueueNumber, %function
uxQueueGetQueueNumber:
.LFB20:
	.loc 1 2105 5
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI39:
	str	r0, [sp, #4]
	.loc 1 2106 40
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #72]
	.loc 1 2107 5
	movs	r0, r3
	add	sp, sp, #8
	@ sp needed
	bx	lr
.LFE20:
	.size	uxQueueGetQueueNumber, .-uxQueueGetQueueNumber
	.section	.text.vQueueSetQueueNumber,"ax",%progbits
	.align	1
	.global	vQueueSetQueueNumber
	.syntax unified
	.code	16
	.thumb_func
	.type	vQueueSetQueueNumber, %function
vQueueSetQueueNumber:
.LFB21:
	.loc 1 2116 5
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI40:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 2117 49
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3, #72]
	.loc 1 2118 5
	nop
	add	sp, sp, #8
	@ sp needed
	bx	lr
.LFE21:
	.size	vQueueSetQueueNumber, .-vQueueSetQueueNumber
	.section	.text.ucQueueGetQueueType,"ax",%progbits
	.align	1
	.global	ucQueueGetQueueType
	.syntax unified
	.code	16
	.thumb_func
	.type	ucQueueGetQueueType, %function
ucQueueGetQueueType:
.LFB22:
	.loc 1 2126 5
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI41:
	str	r0, [sp, #4]
	.loc 1 2127 40
	ldr	r3, [sp, #4]
	movs	r2, #76
	ldrb	r3, [r3, r2]
	.loc 1 2128 5
	movs	r0, r3
	add	sp, sp, #8
	@ sp needed
	bx	lr
.LFE22:
	.size	ucQueueGetQueueType, .-ucQueueGetQueueType
	.section	.text.prvGetDisinheritPriorityAfterTimeout,"ax",%progbits
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	prvGetDisinheritPriorityAfterTimeout, %function
prvGetDisinheritPriorityAfterTimeout:
.LFB23:
	.loc 1 2136 5
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI42:
	str	r0, [sp, #4]
	.loc 1 2145 13
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #36]
	.loc 1 2145 11
	cmp	r3, #0
	beq	.L127
	.loc 1 2147 102
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	.loc 1 2147 45
	movs	r2, #5
	subs	r3, r2, r3
	str	r3, [sp, #12]
	b	.L128
.L127:
	.loc 1 2151 45
	movs	r3, #0
	str	r3, [sp, #12]
.L128:
	.loc 1 2154 16
	ldr	r3, [sp, #12]
	.loc 1 2155 5
	movs	r0, r3
	add	sp, sp, #16
	@ sp needed
	bx	lr
.LFE23:
	.size	prvGetDisinheritPriorityAfterTimeout, .-prvGetDisinheritPriorityAfterTimeout
	.section	.text.prvCopyDataToQueue,"ax",%progbits
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	prvCopyDataToQueue, %function
prvCopyDataToQueue:
.LFB24:
	.loc 1 2163 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI43:
	sub	sp, sp, #28
.LCFI44:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 2164 16
	movs	r3, #0
	str	r3, [sp, #20]
	.loc 1 2169 23
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #56]
	str	r3, [sp, #16]
	.loc 1 2171 16
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #64]
	.loc 1 2171 7
	cmp	r3, #0
	bne	.L131
	.loc 1 2175 28
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 2175 19
	cmp	r3, #0
	bne	.L132
	.loc 1 2178 31
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	movs	r0, r3
	bl	xTaskPriorityDisinherit
	movs	r3, r0
	str	r3, [sp, #20]
	.loc 1 2179 56
	ldr	r3, [sp, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	b	.L132
.L131:
	.loc 1 2188 12
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L133
	.loc 1 2190 44
	ldr	r3, [sp, #12]
	ldr	r0, [r3, #4]
	.loc 1 2190 90
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #64]
	.loc 1 2190 18
	ldr	r3, [sp, #8]
	movs	r1, r3
	bl	memcpy
	.loc 1 2191 28
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	.loc 1 2191 38
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #64]
	.loc 1 2191 28
	adds	r2, r2, r3
	ldr	r3, [sp, #12]
	str	r2, [r3, #4]
	.loc 1 2193 20
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	.loc 1 2193 52
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	.loc 1 2193 11
	cmp	r2, r3
	bcc	.L132
	.loc 1 2195 41
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	.loc 1 2195 32
	ldr	r3, [sp, #12]
	str	r2, [r3, #4]
	b	.L132
.L133:
	.loc 1 2204 54
	ldr	r3, [sp, #12]
	ldr	r0, [r3, #12]
	.loc 1 2204 100
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #64]
	.loc 1 2204 18
	ldr	r3, [sp, #8]
	movs	r1, r3
	bl	memcpy
	.loc 1 2205 38
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #12]
	.loc 1 2205 48
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #64]
	.loc 1 2205 38
	rsbs	r3, r3, #0
	adds	r2, r2, r3
	ldr	r3, [sp, #12]
	str	r2, [r3, #12]
	.loc 1 2207 30
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #12]
	.loc 1 2207 51
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 2207 11
	cmp	r2, r3
	bcs	.L134
	.loc 1 2209 63
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #8]
	.loc 1 2209 80
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #64]
	.loc 1 2209 71
	rsbs	r3, r3, #0
	adds	r2, r2, r3
	.loc 1 2209 42
	ldr	r3, [sp, #12]
	str	r2, [r3, #12]
.L134:
	.loc 1 2216 11
	ldr	r3, [sp, #4]
	cmp	r3, #2
	bne	.L132
	.loc 1 2218 15
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L132
	.loc 1 2224 17
	ldr	r3, [sp, #16]
	subs	r3, r3, #1
	str	r3, [sp, #16]
.L132:
	.loc 1 2237 52
	ldr	r3, [sp, #16]
	adds	r2, r3, #1
	.loc 1 2237 32
	ldr	r3, [sp, #12]
	str	r2, [r3, #56]
	.loc 1 2239 12
	ldr	r3, [sp, #20]
	.loc 1 2240 1
	movs	r0, r3
	add	sp, sp, #28
	@ sp needed
	pop	{pc}
.LFE24:
	.size	prvCopyDataToQueue, .-prvCopyDataToQueue
	.section	.text.prvCopyDataFromQueue,"ax",%progbits
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	prvCopyDataFromQueue, %function
prvCopyDataFromQueue:
.LFB25:
	.loc 1 2245 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI45:
	sub	sp, sp, #12
.LCFI46:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 2246 16
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #64]
	.loc 1 2246 7
	cmp	r3, #0
	beq	.L139
	.loc 1 2248 38
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #12]
	.loc 1 2248 48
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #64]
	.loc 1 2248 38
	adds	r2, r2, r3
	ldr	r3, [sp, #4]
	str	r2, [r3, #12]
	.loc 1 2250 30
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #12]
	.loc 1 2250 62
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	.loc 1 2250 11
	cmp	r2, r3
	bcc	.L138
	.loc 1 2252 51
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	.loc 1 2252 42
	ldr	r3, [sp, #4]
	str	r2, [r3, #12]
.L138:
	.loc 1 2259 75
	ldr	r3, [sp, #4]
	ldr	r1, [r3, #12]
	.loc 1 2259 106
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #64]
	.loc 1 2259 18
	ldr	r3, [sp]
	movs	r0, r3
	bl	memcpy
.L139:
	.loc 1 2261 1
	nop
	add	sp, sp, #12
	@ sp needed
	pop	{pc}
.LFE25:
	.size	prvCopyDataFromQueue, .-prvCopyDataFromQueue
	.section	.text.prvUnlockQueue,"ax",%progbits
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	prvUnlockQueue, %function
prvUnlockQueue:
.LFB26:
	.loc 1 2265 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI47:
	sub	sp, sp, #20
.LCFI48:
	str	r0, [sp, #4]
	.loc 1 2272 5
	bl	vPortEnterCritical
.LBB11:
	.loc 1 2274 16
	movs	r3, #15
	add	r3, r3, sp
	ldr	r2, [sp, #4]
	movs	r1, #69
	ldrb	r2, [r2, r1]
	strb	r2, [r3]
	.loc 1 2277 14
	b	.L141
.L145:
	.loc 1 2325 25
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #36]
	.loc 1 2325 23
	cmp	r3, #0
	beq	.L151
	.loc 1 2327 55
	ldr	r3, [sp, #4]
	adds	r3, r3, #36
	.loc 1 2327 29
	movs	r0, r3
	bl	xTaskRemoveFromEventList
	subs	r3, r0, #0
	.loc 1 2327 27
	beq	.L143
	.loc 1 2331 29
	bl	vTaskMissedYield
.L143:
	.loc 1 2345 13
	movs	r3, #15
	add	r3, r3, sp
	ldrb	r3, [r3]
	subs	r3, r3, #1
	uxtb	r2, r3
	movs	r3, #15
	add	r3, r3, sp
	strb	r2, [r3]
.L141:
	.loc 1 2277 14
	movs	r3, #15
	add	r3, r3, sp
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #0
	bgt	.L145
	b	.L144
.L151:
	.loc 1 2340 25
	nop
.L144:
	.loc 1 2348 26
	ldr	r3, [sp, #4]
	movs	r2, #69
	movs	r1, #255
	strb	r1, [r3, r2]
.LBE11:
	.loc 1 2350 5
	bl	vPortExitCritical
	.loc 1 2353 5
	bl	vPortEnterCritical
.LBB12:
	.loc 1 2355 16
	movs	r3, #14
	add	r3, r3, sp
	ldr	r2, [sp, #4]
	movs	r1, #68
	ldrb	r2, [r2, r1]
	strb	r2, [r3]
	.loc 1 2357 14
	b	.L146
.L150:
	.loc 1 2359 17
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #16]
	.loc 1 2359 15
	cmp	r3, #0
	beq	.L152
	.loc 1 2361 47
	ldr	r3, [sp, #4]
	adds	r3, r3, #16
	.loc 1 2361 21
	movs	r0, r3
	bl	xTaskRemoveFromEventList
	subs	r3, r0, #0
	.loc 1 2361 19
	beq	.L148
	.loc 1 2363 21
	bl	vTaskMissedYield
.L148:
	.loc 1 2370 17
	movs	r3, #14
	add	r3, r3, sp
	ldrb	r3, [r3]
	subs	r3, r3, #1
	uxtb	r2, r3
	movs	r3, #14
	add	r3, r3, sp
	strb	r2, [r3]
.L146:
	.loc 1 2357 14
	movs	r3, #14
	add	r3, r3, sp
	ldrb	r3, [r3]
	sxtb	r3, r3
	cmp	r3, #0
	bgt	.L150
	b	.L149
.L152:
	.loc 1 2374 17
	nop
.L149:
	.loc 1 2378 26
	ldr	r3, [sp, #4]
	movs	r2, #68
	movs	r1, #255
	strb	r1, [r3, r2]
.LBE12:
	.loc 1 2380 5
	bl	vPortExitCritical
	.loc 1 2381 1
	nop
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.LFE26:
	.size	prvUnlockQueue, .-prvUnlockQueue
	.section	.text.prvIsQueueEmpty,"ax",%progbits
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	prvIsQueueEmpty, %function
prvIsQueueEmpty:
.LFB27:
	.loc 1 2385 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI49:
	sub	sp, sp, #20
.LCFI50:
	str	r0, [sp, #4]
	.loc 1 2388 5
	bl	vPortEnterCritical
	.loc 1 2390 20
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #56]
	.loc 1 2390 11
	cmp	r3, #0
	bne	.L154
	.loc 1 2392 21
	movs	r3, #1
	str	r3, [sp, #12]
	b	.L155
.L154:
	.loc 1 2396 21
	movs	r3, #0
	str	r3, [sp, #12]
.L155:
	.loc 1 2399 5
	bl	vPortExitCritical
	.loc 1 2401 12
	ldr	r3, [sp, #12]
	.loc 1 2402 1
	movs	r0, r3
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.LFE27:
	.size	prvIsQueueEmpty, .-prvIsQueueEmpty
	.section	.text.xQueueIsQueueEmptyFromISR,"ax",%progbits
	.align	1
	.global	xQueueIsQueueEmptyFromISR
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueueIsQueueEmptyFromISR, %function
xQueueIsQueueEmptyFromISR:
.LFB28:
	.loc 1 2406 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI51:
	str	r0, [sp, #4]
	.loc 1 2408 21
	ldr	r3, [sp, #4]
	str	r3, [sp, #8]
	.loc 1 2412 16
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #56]
	.loc 1 2412 7
	cmp	r3, #0
	bne	.L158
	.loc 1 2414 17
	movs	r3, #1
	str	r3, [sp, #12]
	b	.L159
.L158:
	.loc 1 2418 17
	movs	r3, #0
	str	r3, [sp, #12]
.L159:
	.loc 1 2421 12
	ldr	r3, [sp, #12]
	.loc 1 2422 1
	movs	r0, r3
	add	sp, sp, #16
	@ sp needed
	bx	lr
.LFE28:
	.size	xQueueIsQueueEmptyFromISR, .-xQueueIsQueueEmptyFromISR
	.section	.text.prvIsQueueFull,"ax",%progbits
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	prvIsQueueFull, %function
prvIsQueueFull:
.LFB29:
	.loc 1 2426 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI52:
	sub	sp, sp, #20
.LCFI53:
	str	r0, [sp, #4]
	.loc 1 2429 5
	bl	vPortEnterCritical
	.loc 1 2431 20
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #56]
	.loc 1 2431 50
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #60]
	.loc 1 2431 11
	cmp	r2, r3
	bne	.L162
	.loc 1 2433 21
	movs	r3, #1
	str	r3, [sp, #12]
	b	.L163
.L162:
	.loc 1 2437 21
	movs	r3, #0
	str	r3, [sp, #12]
.L163:
	.loc 1 2440 5
	bl	vPortExitCritical
	.loc 1 2442 12
	ldr	r3, [sp, #12]
	.loc 1 2443 1
	movs	r0, r3
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.LFE29:
	.size	prvIsQueueFull, .-prvIsQueueFull
	.section	.text.xQueueIsQueueFullFromISR,"ax",%progbits
	.align	1
	.global	xQueueIsQueueFullFromISR
	.syntax unified
	.code	16
	.thumb_func
	.type	xQueueIsQueueFullFromISR, %function
xQueueIsQueueFullFromISR:
.LFB30:
	.loc 1 2447 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI54:
	str	r0, [sp, #4]
	.loc 1 2449 21
	ldr	r3, [sp, #4]
	str	r3, [sp, #8]
	.loc 1 2453 16
	ldr	r3, [sp, #8]
	ldr	r2, [r3, #56]
	.loc 1 2453 46
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #60]
	.loc 1 2453 7
	cmp	r2, r3
	bne	.L166
	.loc 1 2455 17
	movs	r3, #1
	str	r3, [sp, #12]
	b	.L167
.L166:
	.loc 1 2459 17
	movs	r3, #0
	str	r3, [sp, #12]
.L167:
	.loc 1 2462 12
	ldr	r3, [sp, #12]
	.loc 1 2463 1
	movs	r0, r3
	add	sp, sp, #16
	@ sp needed
	bx	lr
.LFE30:
	.size	xQueueIsQueueFullFromISR, .-xQueueIsQueueFullFromISR
	.section	.text.vQueueAddToRegistry,"ax",%progbits
	.align	1
	.global	vQueueAddToRegistry
	.syntax unified
	.code	16
	.thumb_func
	.type	vQueueAddToRegistry, %function
vQueueAddToRegistry:
.LFB31:
	.loc 1 2757 5
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI55:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 2762 31
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 1 2764 11
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L170
	.loc 1 2768 21
	movs	r3, #0
	str	r3, [sp, #12]
	.loc 1 2768 13
	b	.L171
.L174:
	.loc 1 2771 51
	ldr	r2, .L177
	ldr	r3, [sp, #12]
	lsls	r3, r3, #3
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	.loc 1 2771 19
	ldr	r2, [sp, #4]
	cmp	r2, r3
	bne	.L172
	.loc 1 2773 36
	ldr	r3, [sp, #12]
	lsls	r2, r3, #3
	ldr	r3, .L177
	adds	r3, r2, r3
	str	r3, [sp, #8]
	.loc 1 2774 21
	b	.L170
.L172:
	.loc 1 2777 24
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L173
	.loc 1 2777 78 discriminator 1
	ldr	r3, .L177
	ldr	r2, [sp, #12]
	lsls	r2, r2, #3
	ldr	r3, [r2, r3]
	.loc 1 2777 53 discriminator 1
	cmp	r3, #0
	bne	.L173
	.loc 1 2779 36
	ldr	r3, [sp, #12]
	lsls	r2, r3, #3
	ldr	r3, .L177
	adds	r3, r2, r3
	str	r3, [sp, #8]
.L173:
	.loc 1 2768 93 discriminator 2
	ldr	r3, [sp, #12]
	adds	r3, r3, #1
	str	r3, [sp, #12]
.L171:
	.loc 1 2768 13 discriminator 1
	ldr	r3, [sp, #12]
	cmp	r3, #7
	bls	.L174
.L170:
	.loc 1 2788 11
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L176
	.loc 1 2791 41
	ldr	r3, [sp, #8]
	ldr	r2, [sp]
	str	r2, [r3]
	.loc 1 2792 37
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #4]
	str	r2, [r3, #4]
.L176:
	.loc 1 2796 5
	nop
	add	sp, sp, #16
	@ sp needed
	bx	lr
.L178:
	.align	2
.L177:
	.word	xQueueRegistry
.LFE31:
	.size	vQueueAddToRegistry, .-vQueueAddToRegistry
	.section	.text.pcQueueGetName,"ax",%progbits
	.align	1
	.global	pcQueueGetName
	.syntax unified
	.code	16
	.thumb_func
	.type	pcQueueGetName, %function
pcQueueGetName:
.LFB32:
	.loc 1 2804 5
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI56:
	str	r0, [sp, #4]
	.loc 1 2806 22
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 1 2813 17
	movs	r3, #0
	str	r3, [sp, #12]
	.loc 1 2813 9
	b	.L180
.L183:
	.loc 1 2815 37
	ldr	r2, .L185
	ldr	r3, [sp, #12]
	lsls	r3, r3, #3
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	.loc 1 2815 15
	ldr	r2, [sp, #4]
	cmp	r2, r3
	bne	.L181
	.loc 1 2817 26
	ldr	r3, .L185
	ldr	r2, [sp, #12]
	lsls	r2, r2, #3
	ldr	r3, [r2, r3]
	str	r3, [sp, #8]
	.loc 1 2818 17
	b	.L182
.L181:
	.loc 1 2813 89 discriminator 2
	ldr	r3, [sp, #12]
	adds	r3, r3, #1
	str	r3, [sp, #12]
.L180:
	.loc 1 2813 9 discriminator 1
	ldr	r3, [sp, #12]
	cmp	r3, #7
	bls	.L183
.L182:
	.loc 1 2826 16
	ldr	r3, [sp, #8]
	.loc 1 2827 5
	movs	r0, r3
	add	sp, sp, #16
	@ sp needed
	bx	lr
.L186:
	.align	2
.L185:
	.word	xQueueRegistry
.LFE32:
	.size	pcQueueGetName, .-pcQueueGetName
	.section	.text.vQueueUnregisterQueue,"ax",%progbits
	.align	1
	.global	vQueueUnregisterQueue
	.syntax unified
	.code	16
	.thumb_func
	.type	vQueueUnregisterQueue, %function
vQueueUnregisterQueue:
.LFB33:
	.loc 1 2835 5
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI57:
	str	r0, [sp, #4]
	.loc 1 2842 17
	movs	r3, #0
	str	r3, [sp, #12]
	.loc 1 2842 9
	b	.L188
.L191:
	.loc 1 2844 37
	ldr	r2, .L192
	ldr	r3, [sp, #12]
	lsls	r3, r3, #3
	adds	r3, r2, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	.loc 1 2844 15
	ldr	r2, [sp, #4]
	cmp	r2, r3
	bne	.L189
	.loc 1 2847 50
	ldr	r3, .L192
	ldr	r2, [sp, #12]
	lsls	r2, r2, #3
	movs	r1, #0
	str	r1, [r2, r3]
	.loc 1 2852 46
	ldr	r2, .L192
	ldr	r3, [sp, #12]
	lsls	r3, r3, #3
	adds	r3, r2, r3
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	.loc 1 2853 17
	b	.L190
.L189:
	.loc 1 2842 89 discriminator 2
	ldr	r3, [sp, #12]
	adds	r3, r3, #1
	str	r3, [sp, #12]
.L188:
	.loc 1 2842 9 discriminator 1
	ldr	r3, [sp, #12]
	cmp	r3, #7
	bls	.L191
	.loc 1 2860 5
	nop
.L190:
	nop
	add	sp, sp, #16
	@ sp needed
	bx	lr
.L193:
	.align	2
.L192:
	.word	xQueueRegistry
.LFE33:
	.size	vQueueUnregisterQueue, .-vQueueUnregisterQueue
	.section	.text.vQueueWaitForMessageRestricted,"ax",%progbits
	.align	1
	.global	vQueueWaitForMessageRestricted
	.syntax unified
	.code	16
	.thumb_func
	.type	vQueueWaitForMessageRestricted, %function
vQueueWaitForMessageRestricted:
.LFB34:
	.loc 1 2870 5
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI58:
	sub	sp, sp, #28
.LCFI59:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 2871 25
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	.loc 1 2887 9
	bl	vPortEnterCritical
	ldr	r3, [sp, #20]
	movs	r2, #68
	ldrb	r3, [r3, r2]
	sxtb	r3, r3
	adds	r3, r3, #1
	bne	.L195
	.loc 1 2887 9 is_stmt 0 discriminator 1
	ldr	r3, [sp, #20]
	movs	r2, #68
	movs	r1, #0
	strb	r1, [r3, r2]
.L195:
	.loc 1 2887 9 discriminator 3
	ldr	r3, [sp, #20]
	movs	r2, #69
	ldrb	r3, [r3, r2]
	sxtb	r3, r3
	adds	r3, r3, #1
	bne	.L196
	.loc 1 2887 9 discriminator 4
	ldr	r3, [sp, #20]
	movs	r2, #69
	movs	r1, #0
	strb	r1, [r3, r2]
.L196:
	.loc 1 2887 9 discriminator 6
	bl	vPortExitCritical
	.loc 1 2889 20 is_stmt 1 discriminator 6
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #56]
	.loc 1 2889 11 discriminator 6
	cmp	r3, #0
	bne	.L197
	.loc 1 2892 13
	ldr	r3, [sp, #20]
	adds	r3, r3, #36
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	movs	r0, r3
	bl	vTaskPlaceOnEventListRestricted
.L197:
	.loc 1 2899 9
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	prvUnlockQueue
	.loc 1 2900 5
	nop
	add	sp, sp, #28
	@ sp needed
	pop	{pc}
.LFE34:
	.size	vQueueWaitForMessageRestricted, .-vQueueWaitForMessageRestricted
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
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x4
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
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x18
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
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI20-.LFB10
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI22-.LFB11
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI24-.LFB12
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI26-.LFB13
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI28-.LFB14
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI30-.LFB15
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI32-.LFB16
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI34-.LFB17
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI36-.LFB18
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI37-.LFB19
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI39-.LFB20
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI40-.LFB21
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI41-.LFB22
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI42-.LFB23
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI43-.LFB24
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI45-.LFB25
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI47-.LFB26
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI49-.LFB27
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI51-.LFB28
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI52-.LFB29
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI54-.LFB30
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI55-.LFB31
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI56-.LFB32
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI57-.LFB33
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI58-.LFB34
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE68:
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/stdlib.h"
	.file 3 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/stdint.h"
	.file 4 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/portable/GCC/ARM_CM0/portmacro.h"
	.file 5 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/include/list.h"
	.file 6 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/include/task.h"
	.file 7 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/include/queue.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1117
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1260
	.byte	0xc
	.4byte	.LASF1261
	.4byte	.LASF1262
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x36
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1126
	.uleb128 0x4
	.4byte	0x2f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1127
	.uleb128 0x5
	.4byte	.LASF1130
	.byte	0x2
	.byte	0x28
	.byte	0x1d
	.4byte	0x3b
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1128
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1129
	.uleb128 0x5
	.4byte	.LASF1131
	.byte	0x3
	.byte	0xd5
	.byte	0x1c
	.4byte	0x79
	.uleb128 0x7
	.4byte	0x63
	.uleb128 0x4
	.4byte	0x63
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1132
	.uleb128 0x5
	.4byte	.LASF1133
	.byte	0x3
	.byte	0xd6
	.byte	0x1c
	.4byte	0x91
	.uleb128 0x4
	.4byte	0x80
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1134
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1135
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1136
	.uleb128 0x5
	.4byte	.LASF1137
	.byte	0x3
	.byte	0xdb
	.byte	0x1c
	.4byte	0x3b
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1138
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x4
	.4byte	0xb9
	.uleb128 0x5
	.4byte	.LASF1139
	.byte	0x4
	.byte	0x39
	.byte	0x1e
	.4byte	0x55
	.uleb128 0x4
	.4byte	0xc0
	.uleb128 0x5
	.4byte	.LASF1140
	.byte	0x4
	.byte	0x3a
	.byte	0x1e
	.4byte	0xe7
	.uleb128 0x7
	.4byte	0xd1
	.uleb128 0x4
	.4byte	0xd1
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1141
	.uleb128 0x5
	.4byte	.LASF1142
	.byte	0x4
	.byte	0x40
	.byte	0x1e
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x4
	.4byte	0x80
	.uleb128 0x9
	.4byte	.LASF1148
	.byte	0x14
	.byte	0x5
	.byte	0x90
	.byte	0x8
	.4byte	0x14f
	.uleb128 0xa
	.4byte	.LASF1143
	.byte	0x5
	.byte	0x93
	.byte	0x24
	.4byte	0xee
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1144
	.byte	0x5
	.byte	0x94
	.byte	0x2d
	.4byte	0x14f
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF1145
	.byte	0x5
	.byte	0x95
	.byte	0x2d
	.4byte	0x14f
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF1146
	.byte	0x5
	.byte	0x96
	.byte	0xc
	.4byte	0xb9
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF1147
	.byte	0x5
	.byte	0x97
	.byte	0x28
	.4byte	0x18a
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x100
	.uleb128 0x9
	.4byte	.LASF1149
	.byte	0x14
	.byte	0x5
	.byte	0xa8
	.byte	0x10
	.4byte	0x18a
	.uleb128 0xa
	.4byte	.LASF1150
	.byte	0x5
	.byte	0xab
	.byte	0x1a
	.4byte	0xdd
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1151
	.byte	0x5
	.byte	0xac
	.byte	0x26
	.4byte	0x1dd
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF1152
	.byte	0x5
	.byte	0xad
	.byte	0x14
	.4byte	0x1d1
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x155
	.uleb128 0x5
	.4byte	.LASF1153
	.byte	0x5
	.byte	0x9a
	.byte	0x1b
	.4byte	0x100
	.uleb128 0x9
	.4byte	.LASF1154
	.byte	0xc
	.byte	0x5
	.byte	0x9c
	.byte	0x8
	.4byte	0x1d1
	.uleb128 0xa
	.4byte	.LASF1143
	.byte	0x5
	.byte	0x9f
	.byte	0x24
	.4byte	0xee
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1144
	.byte	0x5
	.byte	0xa0
	.byte	0x2d
	.4byte	0x14f
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF1145
	.byte	0x5
	.byte	0xa1
	.byte	0x2d
	.4byte	0x14f
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF1155
	.byte	0x5
	.byte	0xa3
	.byte	0x20
	.4byte	0x19c
	.uleb128 0x2
	.byte	0x4
	.4byte	0x190
	.uleb128 0x5
	.4byte	.LASF1156
	.byte	0x5
	.byte	0xaf
	.byte	0x3
	.4byte	0x155
	.uleb128 0x5
	.4byte	.LASF1157
	.byte	0x6
	.byte	0x57
	.byte	0x26
	.4byte	0x1fb
	.uleb128 0x2
	.byte	0x4
	.4byte	0x201
	.uleb128 0xb
	.4byte	.LASF1263
	.uleb128 0x9
	.4byte	.LASF1158
	.byte	0x8
	.byte	0x6
	.byte	0x77
	.byte	0x10
	.4byte	0x22e
	.uleb128 0xa
	.4byte	.LASF1159
	.byte	0x6
	.byte	0x79
	.byte	0x10
	.4byte	0xc0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1160
	.byte	0x6
	.byte	0x7a
	.byte	0x10
	.4byte	0xee
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF1161
	.byte	0x6
	.byte	0x7b
	.byte	0x3
	.4byte	0x206
	.uleb128 0x5
	.4byte	.LASF1162
	.byte	0x7
	.byte	0x33
	.byte	0x24
	.4byte	0x24b
	.uleb128 0x4
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x4
	.4byte	0x251
	.uleb128 0x9
	.4byte	.LASF1163
	.byte	0x50
	.byte	0x1
	.byte	0x64
	.byte	0x10
	.4byte	0x2f9
	.uleb128 0xa
	.4byte	.LASF1164
	.byte	0x1
	.byte	0x66
	.byte	0xe
	.4byte	0x321
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1165
	.byte	0x1
	.byte	0x67
	.byte	0xe
	.4byte	0x321
	.byte	0x4
	.uleb128 0xc
	.ascii	"u\000"
	.byte	0x1
	.byte	0x6d
	.byte	0x7
	.4byte	0x367
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF1166
	.byte	0x1
	.byte	0x6f
	.byte	0xc
	.4byte	0x1e3
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF1167
	.byte	0x1
	.byte	0x70
	.byte	0xc
	.4byte	0x1e3
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF1168
	.byte	0x1
	.byte	0x72
	.byte	0x1a
	.4byte	0xdd
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF1169
	.byte	0x1
	.byte	0x73
	.byte	0x11
	.4byte	0xd1
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF1170
	.byte	0x1
	.byte	0x74
	.byte	0x11
	.4byte	0xd1
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF1171
	.byte	0x1
	.byte	0x76
	.byte	0x15
	.4byte	0x6f
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF1172
	.byte	0x1
	.byte	0x77
	.byte	0x15
	.4byte	0x6f
	.byte	0x45
	.uleb128 0xa
	.4byte	.LASF1173
	.byte	0x1
	.byte	0x82
	.byte	0x15
	.4byte	0xd1
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF1174
	.byte	0x1
	.byte	0x83
	.byte	0x11
	.4byte	0x80
	.byte	0x4c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1175
	.byte	0x8
	.byte	0x1
	.byte	0x45
	.byte	0x10
	.4byte	0x321
	.uleb128 0xa
	.4byte	.LASF1176
	.byte	0x1
	.byte	0x47
	.byte	0xe
	.4byte	0x321
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1177
	.byte	0x1
	.byte	0x48
	.byte	0xe
	.4byte	0x321
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x63
	.uleb128 0x5
	.4byte	.LASF1178
	.byte	0x1
	.byte	0x49
	.byte	0x3
	.4byte	0x2f9
	.uleb128 0x9
	.4byte	.LASF1179
	.byte	0x8
	.byte	0x1
	.byte	0x4b
	.byte	0x10
	.4byte	0x35b
	.uleb128 0xa
	.4byte	.LASF1180
	.byte	0x1
	.byte	0x4d
	.byte	0x12
	.4byte	0x1ef
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1181
	.byte	0x1
	.byte	0x4e
	.byte	0x11
	.4byte	0xd1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF1182
	.byte	0x1
	.byte	0x4f
	.byte	0x3
	.4byte	0x333
	.uleb128 0xd
	.byte	0x8
	.byte	0x1
	.byte	0x69
	.byte	0x5
	.4byte	0x389
	.uleb128 0xe
	.4byte	.LASF1183
	.byte	0x1
	.byte	0x6b
	.byte	0x19
	.4byte	0x327
	.uleb128 0xe
	.4byte	.LASF1184
	.byte	0x1
	.byte	0x6c
	.byte	0x19
	.4byte	0x35b
	.byte	0
	.uleb128 0x5
	.4byte	.LASF1185
	.byte	0x1
	.byte	0x85
	.byte	0x3
	.4byte	0x251
	.uleb128 0x5
	.4byte	.LASF1186
	.byte	0x1
	.byte	0x89
	.byte	0x10
	.4byte	0x389
	.uleb128 0x4
	.4byte	0x395
	.uleb128 0x9
	.4byte	.LASF1187
	.byte	0x8
	.byte	0x1
	.byte	0x96
	.byte	0x14
	.4byte	0x3ce
	.uleb128 0xa
	.4byte	.LASF1188
	.byte	0x1
	.byte	0x98
	.byte	0x16
	.4byte	0x29
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1189
	.byte	0x1
	.byte	0x99
	.byte	0x17
	.4byte	0x23a
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF1190
	.byte	0x1
	.byte	0x9a
	.byte	0x7
	.4byte	0x3a6
	.uleb128 0x5
	.4byte	.LASF1191
	.byte	0x1
	.byte	0x9f
	.byte	0x20
	.4byte	0x3ce
	.uleb128 0xf
	.4byte	0x3da
	.4byte	0x3f6
	.uleb128 0x10
	.4byte	0x3b
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF1264
	.byte	0x1
	.byte	0xa4
	.byte	0x29
	.4byte	0x3e6
	.uleb128 0x5
	.byte	0x3
	.4byte	xQueueRegistry
	.uleb128 0x12
	.4byte	.LASF1194
	.byte	0x1
	.2byte	0xb33
	.byte	0xa
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x460
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0xb33
	.byte	0x38
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF1192
	.byte	0x1
	.2byte	0xb34
	.byte	0x35
	.4byte	0xee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF1193
	.byte	0x1
	.2byte	0xb35
	.byte	0x3b
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0xb37
	.byte	0x19
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x395
	.uleb128 0x4
	.4byte	0x460
	.uleb128 0x15
	.4byte	.LASF1195
	.byte	0x1
	.2byte	0xb12
	.byte	0xa
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a2
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0xb12
	.byte	0x2f
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x16
	.ascii	"ux\000"
	.byte	0x1
	.2byte	0xb14
	.byte	0x15
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF1200
	.byte	0x1
	.2byte	0xaf3
	.byte	0x12
	.4byte	0x29
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ed
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0xaf3
	.byte	0x30
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x16
	.ascii	"ux\000"
	.byte	0x1
	.2byte	0xaf5
	.byte	0x15
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x14
	.4byte	.LASF1197
	.byte	0x1
	.2byte	0xaf6
	.byte	0x16
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x15
	.4byte	.LASF1198
	.byte	0x1
	.2byte	0xac3
	.byte	0xa
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x544
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0xac3
	.byte	0x2d
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF1188
	.byte	0x1
	.2byte	0xac4
	.byte	0x2c
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x16
	.ascii	"ux\000"
	.byte	0x1
	.2byte	0xac6
	.byte	0x15
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x14
	.4byte	.LASF1199
	.byte	0x1
	.2byte	0xaca
	.byte	0x1f
	.4byte	0x544
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x3da
	.uleb128 0x17
	.4byte	.LASF1201
	.byte	0x1
	.2byte	0x98e
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x596
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x98e
	.byte	0x3a
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1202
	.byte	0x1
	.2byte	0x990
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x991
	.byte	0x15
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1204
	.byte	0x1
	.2byte	0x979
	.byte	0x13
	.4byte	0xc0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d2
	.uleb128 0x13
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x979
	.byte	0x33
	.4byte	0x5d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF1202
	.byte	0x1
	.2byte	0x97b
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x3a1
	.uleb128 0x4
	.4byte	0x5d2
	.uleb128 0x17
	.4byte	.LASF1203
	.byte	0x1
	.2byte	0x965
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x629
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x965
	.byte	0x3b
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1202
	.byte	0x1
	.2byte	0x967
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x968
	.byte	0x15
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1205
	.byte	0x1
	.2byte	0x950
	.byte	0x13
	.4byte	0xc0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x665
	.uleb128 0x13
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x950
	.byte	0x34
	.4byte	0x5d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF1202
	.byte	0x1
	.2byte	0x952
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1206
	.byte	0x1
	.2byte	0x8d8
	.byte	0xd
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c5
	.uleb128 0x13
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x8d8
	.byte	0x2d
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x6aa
	.uleb128 0x14
	.4byte	.LASF1172
	.byte	0x1
	.2byte	0x8e2
	.byte	0x10
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x14
	.4byte	.LASF1171
	.byte	0x1
	.2byte	0x933
	.byte	0x10
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1207
	.byte	0x1
	.2byte	0x8c3
	.byte	0xd
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fd
	.uleb128 0x13
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x8c3
	.byte	0x33
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF1208
	.byte	0x1
	.2byte	0x8c4
	.byte	0x30
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1209
	.byte	0x1
	.2byte	0x870
	.byte	0x13
	.4byte	0xc0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x769
	.uleb128 0x13
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x870
	.byte	0x37
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF1210
	.byte	0x1
	.2byte	0x871
	.byte	0x34
	.4byte	0x769
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF1211
	.byte	0x1
	.2byte	0x872
	.byte	0x38
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF1202
	.byte	0x1
	.2byte	0x874
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1168
	.byte	0x1
	.2byte	0x875
	.byte	0x11
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x774
	.uleb128 0x4
	.4byte	0x769
	.uleb128 0x1c
	.uleb128 0x1d
	.4byte	.LASF1212
	.byte	0x1
	.2byte	0x857
	.byte	0x18
	.4byte	0xd1
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b1
	.uleb128 0x13
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x857
	.byte	0x54
	.4byte	0x5d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1213
	.byte	0x1
	.2byte	0x859
	.byte	0x15
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF1214
	.byte	0x1
	.2byte	0x84d
	.byte	0xd
	.4byte	0x80
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7dd
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x84d
	.byte	0x30
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF1215
	.byte	0x1
	.2byte	0x842
	.byte	0xa
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x815
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x842
	.byte	0x2e
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x13
	.4byte	.LASF1173
	.byte	0x1
	.2byte	0x843
	.byte	0x2c
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF1216
	.byte	0x1
	.2byte	0x838
	.byte	0x11
	.4byte	0xd1
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x841
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x838
	.byte	0x36
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1217
	.byte	0x1
	.2byte	0x80c
	.byte	0x6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x879
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x80c
	.byte	0x22
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x80e
	.byte	0x15
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x17
	.4byte	.LASF1218
	.byte	0x1
	.2byte	0x800
	.byte	0xd
	.4byte	0xd1
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c5
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x800
	.byte	0x40
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1219
	.byte	0x1
	.2byte	0x802
	.byte	0x11
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x803
	.byte	0x15
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1220
	.byte	0x1
	.2byte	0x7ef
	.byte	0xd
	.4byte	0xd1
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x911
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x7ef
	.byte	0x39
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF1219
	.byte	0x1
	.2byte	0x7f1
	.byte	0x11
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x7f2
	.byte	0x15
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1221
	.byte	0x1
	.2byte	0x7df
	.byte	0xd
	.4byte	0xd1
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x94d
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x7df
	.byte	0x39
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF1219
	.byte	0x1
	.2byte	0x7e1
	.byte	0x11
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1222
	.byte	0x1
	.2byte	0x7a8
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c9
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x7a8
	.byte	0x2d
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF1208
	.byte	0x1
	.2byte	0x7a9
	.byte	0x2c
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.4byte	.LASF1202
	.byte	0x1
	.2byte	0x7ab
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1223
	.byte	0x1
	.2byte	0x7ac
	.byte	0x11
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF1224
	.byte	0x1
	.2byte	0x7ad
	.byte	0xe
	.4byte	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x7ae
	.byte	0x15
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1225
	.byte	0x1
	.2byte	0x749
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa79
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x749
	.byte	0x30
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF1208
	.byte	0x1
	.2byte	0x74a
	.byte	0x2f
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF1226
	.byte	0x1
	.2byte	0x74b
	.byte	0x35
	.4byte	0xa7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.4byte	.LASF1202
	.byte	0x1
	.2byte	0x74d
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1223
	.byte	0x1
	.2byte	0x74e
	.byte	0x11
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x74f
	.byte	0x15
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x14
	.4byte	.LASF1168
	.byte	0x1
	.2byte	0x766
	.byte	0x1b
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x14
	.4byte	.LASF1171
	.byte	0x1
	.2byte	0x76b
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0xc0
	.uleb128 0x4
	.4byte	0xa79
	.uleb128 0x1e
	.4byte	.LASF1227
	.byte	0x1
	.2byte	0x6b2
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb2a
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x6b2
	.byte	0x26
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF1208
	.byte	0x1
	.2byte	0x6b3
	.byte	0x25
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF1192
	.byte	0x1
	.2byte	0x6b4
	.byte	0x23
	.4byte	0xee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.4byte	.LASF1228
	.byte	0x1
	.2byte	0x6b6
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1229
	.byte	0x1
	.2byte	0x6b7
	.byte	0xf
	.4byte	0x22e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.4byte	.LASF1224
	.byte	0x1
	.2byte	0x6b8
	.byte	0xe
	.4byte	0x321
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x6b9
	.byte	0x15
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x14
	.4byte	.LASF1168
	.byte	0x1
	.2byte	0x6d0
	.byte	0x1f
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1230
	.byte	0x1
	.2byte	0x5d7
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbde
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x5d7
	.byte	0x2f
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF1192
	.byte	0x1
	.2byte	0x5d8
	.byte	0x2c
	.4byte	0xee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LASF1228
	.byte	0x1
	.2byte	0x5da
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1229
	.byte	0x1
	.2byte	0x5db
	.byte	0xf
	.4byte	0x22e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x5dc
	.byte	0x15
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF1231
	.byte	0x1
	.2byte	0x5df
	.byte	0x14
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xbc3
	.uleb128 0x14
	.4byte	.LASF1232
	.byte	0x1
	.2byte	0x5f9
	.byte	0x1f
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x14
	.4byte	.LASF1233
	.byte	0x1
	.2byte	0x697
	.byte	0x2d
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1234
	.byte	0x1
	.2byte	0x548
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc74
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x548
	.byte	0x29
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF1208
	.byte	0x1
	.2byte	0x549
	.byte	0x28
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF1192
	.byte	0x1
	.2byte	0x54a
	.byte	0x26
	.4byte	0xee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.4byte	.LASF1228
	.byte	0x1
	.2byte	0x54c
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1229
	.byte	0x1
	.2byte	0x54d
	.byte	0xf
	.4byte	0x22e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x54e
	.byte	0x15
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x14
	.4byte	.LASF1168
	.byte	0x1
	.2byte	0x565
	.byte	0x1f
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1235
	.byte	0x1
	.2byte	0x4a0
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd14
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x4a0
	.byte	0x2d
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF1226
	.byte	0x1
	.2byte	0x4a1
	.byte	0x32
	.4byte	0xa7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	.LASF1202
	.byte	0x1
	.2byte	0x4a3
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1223
	.byte	0x1
	.2byte	0x4a4
	.byte	0x11
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x4a5
	.byte	0x15
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x14
	.4byte	.LASF1168
	.byte	0x1
	.2byte	0x4ca
	.byte	0x1b
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x14
	.4byte	.LASF1172
	.byte	0x1
	.2byte	0x4d1
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1236
	.byte	0x1
	.2byte	0x3f9
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdca
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x3f9
	.byte	0x34
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF1210
	.byte	0x1
	.2byte	0x3fa
	.byte	0x39
	.4byte	0x76f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF1226
	.byte	0x1
	.2byte	0x3fb
	.byte	0x39
	.4byte	0xa7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF1237
	.byte	0x1
	.2byte	0x3fc
	.byte	0x37
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LASF1202
	.byte	0x1
	.2byte	0x3fe
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1223
	.byte	0x1
	.2byte	0x3ff
	.byte	0x11
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x400
	.byte	0x15
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x14
	.4byte	.LASF1172
	.byte	0x1
	.2byte	0x41f
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x14
	.4byte	.LASF1238
	.byte	0x1
	.2byte	0x420
	.byte	0x1f
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1239
	.byte	0x1
	.2byte	0x325
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe66
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x325
	.byte	0x2d
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF1210
	.byte	0x1
	.2byte	0x326
	.byte	0x32
	.4byte	0x76f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF1192
	.byte	0x1
	.2byte	0x327
	.byte	0x2a
	.4byte	0xee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF1237
	.byte	0x1
	.2byte	0x328
	.byte	0x30
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LASF1228
	.byte	0x1
	.2byte	0x32a
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1240
	.byte	0x1
	.2byte	0x32a
	.byte	0x29
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF1229
	.byte	0x1
	.2byte	0x32b
	.byte	0xf
	.4byte	0x22e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x32c
	.byte	0x15
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1241
	.byte	0x1
	.2byte	0x304
	.byte	0x13
	.4byte	0x23a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb2
	.uleb128 0x13
	.4byte	.LASF1242
	.byte	0x1
	.2byte	0x304
	.byte	0x44
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF1243
	.byte	0x1
	.2byte	0x305
	.byte	0x44
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF1189
	.byte	0x1
	.2byte	0x307
	.byte	0x17
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1244
	.byte	0x1
	.2byte	0x2b5
	.byte	0x10
	.4byte	0xc0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf0e
	.uleb128 0x13
	.4byte	.LASF1245
	.byte	0x1
	.2byte	0x2b5
	.byte	0x38
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF1192
	.byte	0x1
	.2byte	0x2b6
	.byte	0x35
	.4byte	0xee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF1202
	.byte	0x1
	.2byte	0x2b8
	.byte	0x14
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1246
	.byte	0x1
	.2byte	0x2b9
	.byte	0x19
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1247
	.byte	0x1
	.2byte	0x27e
	.byte	0x10
	.4byte	0xc0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf5a
	.uleb128 0x13
	.4byte	.LASF1245
	.byte	0x1
	.2byte	0x27e
	.byte	0x38
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF1202
	.byte	0x1
	.2byte	0x280
	.byte	0x14
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1246
	.byte	0x1
	.2byte	0x281
	.byte	0x19
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1248
	.byte	0x1
	.2byte	0x21e
	.byte	0x13
	.4byte	0x23a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb6
	.uleb128 0x13
	.4byte	.LASF1174
	.byte	0x1
	.2byte	0x21e
	.byte	0x34
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x14
	.4byte	.LASF1249
	.byte	0x1
	.2byte	0x220
	.byte	0x17
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF1250
	.byte	0x1
	.2byte	0x221
	.byte	0x1b
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1251
	.byte	0x1
	.2byte	0x221
	.byte	0x3e
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1252
	.byte	0x1
	.2byte	0x200
	.byte	0x11
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfde
	.uleb128 0x13
	.4byte	.LASF1253
	.byte	0x1
	.2byte	0x200
	.byte	0x2f
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1254
	.byte	0x1
	.2byte	0x1d0
	.byte	0xd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1046
	.uleb128 0x13
	.4byte	.LASF1255
	.byte	0x1
	.2byte	0x1d0
	.byte	0x36
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF1170
	.byte	0x1
	.2byte	0x1d1
	.byte	0x36
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF1256
	.byte	0x1
	.2byte	0x1d2
	.byte	0x2e
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF1174
	.byte	0x1
	.2byte	0x1d3
	.byte	0x32
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x13
	.4byte	.LASF1253
	.byte	0x1
	.2byte	0x1d4
	.byte	0x2e
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1257
	.byte	0x1
	.2byte	0x18e
	.byte	0x13
	.4byte	0x23a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c2
	.uleb128 0x13
	.4byte	.LASF1255
	.byte	0x1
	.2byte	0x18e
	.byte	0x3a
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF1170
	.byte	0x1
	.2byte	0x18f
	.byte	0x3a
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF1174
	.byte	0x1
	.2byte	0x190
	.byte	0x36
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x14
	.4byte	.LASF1253
	.byte	0x1
	.2byte	0x192
	.byte	0x13
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1258
	.byte	0x1
	.2byte	0x193
	.byte	0x10
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.4byte	.LASF1256
	.byte	0x1
	.2byte	0x194
	.byte	0x13
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1259
	.byte	0x1
	.2byte	0x10a
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x10a
	.byte	0x2e
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF1249
	.byte	0x1
	.2byte	0x10b
	.byte	0x2b
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF1202
	.byte	0x1
	.2byte	0x10d
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x10e
	.byte	0x15
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x17
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x3a1
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x111b
	.4byte	0x3f6
	.ascii	"xQueueRegistry\000"
	.4byte	0x3f6
	.ascii	"xQueueRegistry\000"
	.4byte	0x408
	.ascii	"vQueueWaitForMessageRestricted\000"
	.4byte	0x46b
	.ascii	"vQueueUnregisterQueue\000"
	.4byte	0x4a2
	.ascii	"pcQueueGetName\000"
	.4byte	0x4ed
	.ascii	"vQueueAddToRegistry\000"
	.4byte	0x54a
	.ascii	"xQueueIsQueueFullFromISR\000"
	.4byte	0x596
	.ascii	"prvIsQueueFull\000"
	.4byte	0x5dd
	.ascii	"xQueueIsQueueEmptyFromISR\000"
	.4byte	0x629
	.ascii	"prvIsQueueEmpty\000"
	.4byte	0x665
	.ascii	"prvUnlockQueue\000"
	.4byte	0x6c5
	.ascii	"prvCopyDataFromQueue\000"
	.4byte	0x6fd
	.ascii	"prvCopyDataToQueue\000"
	.4byte	0x775
	.ascii	"prvGetDisinheritPriorityAfterTimeout\000"
	.4byte	0x7b1
	.ascii	"ucQueueGetQueueType\000"
	.4byte	0x7dd
	.ascii	"vQueueSetQueueNumber\000"
	.4byte	0x815
	.ascii	"uxQueueGetQueueNumber\000"
	.4byte	0x841
	.ascii	"vQueueDelete\000"
	.4byte	0x879
	.ascii	"uxQueueMessagesWaitingFromISR\000"
	.4byte	0x8c5
	.ascii	"uxQueueSpacesAvailable\000"
	.4byte	0x911
	.ascii	"uxQueueMessagesWaiting\000"
	.4byte	0x94d
	.ascii	"xQueuePeekFromISR\000"
	.4byte	0x9c9
	.ascii	"xQueueReceiveFromISR\000"
	.4byte	0xa84
	.ascii	"xQueuePeek\000"
	.4byte	0xb2a
	.ascii	"xQueueSemaphoreTake\000"
	.4byte	0xbde
	.ascii	"xQueueReceive\000"
	.4byte	0xc74
	.ascii	"xQueueGiveFromISR\000"
	.4byte	0xd14
	.ascii	"xQueueGenericSendFromISR\000"
	.4byte	0xdca
	.ascii	"xQueueGenericSend\000"
	.4byte	0xe66
	.ascii	"xQueueCreateCountingSemaphore\000"
	.4byte	0xeb2
	.ascii	"xQueueTakeMutexRecursive\000"
	.4byte	0xf0e
	.ascii	"xQueueGiveMutexRecursive\000"
	.4byte	0xf5a
	.ascii	"xQueueCreateMutex\000"
	.4byte	0xfb6
	.ascii	"prvInitialiseMutex\000"
	.4byte	0xfde
	.ascii	"prvInitialiseNewQueue\000"
	.4byte	0x1046
	.ascii	"xQueueGenericCreate\000"
	.4byte	0x10c2
	.ascii	"xQueueGenericReset\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x27b
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x111b
	.4byte	0x2f
	.ascii	"char\000"
	.4byte	0x3b
	.ascii	"unsigned int\000"
	.4byte	0x42
	.ascii	"size_t\000"
	.4byte	0x4e
	.ascii	"int\000"
	.4byte	0x55
	.ascii	"long int\000"
	.4byte	0x5c
	.ascii	"long long int\000"
	.4byte	0x79
	.ascii	"signed char\000"
	.4byte	0x63
	.ascii	"int8_t\000"
	.4byte	0x91
	.ascii	"unsigned char\000"
	.4byte	0x80
	.ascii	"uint8_t\000"
	.4byte	0x98
	.ascii	"short int\000"
	.4byte	0x9f
	.ascii	"short unsigned int\000"
	.4byte	0xa6
	.ascii	"uint32_t\000"
	.4byte	0xb2
	.ascii	"long long unsigned int\000"
	.4byte	0xc0
	.ascii	"BaseType_t\000"
	.4byte	0xe7
	.ascii	"long unsigned int\000"
	.4byte	0xd1
	.ascii	"UBaseType_t\000"
	.4byte	0xee
	.ascii	"TickType_t\000"
	.4byte	0x100
	.ascii	"xLIST_ITEM\000"
	.4byte	0x190
	.ascii	"ListItem_t\000"
	.4byte	0x19c
	.ascii	"xMINI_LIST_ITEM\000"
	.4byte	0x1d1
	.ascii	"MiniListItem_t\000"
	.4byte	0x155
	.ascii	"xLIST\000"
	.4byte	0x1e3
	.ascii	"List_t\000"
	.4byte	0x1ef
	.ascii	"TaskHandle_t\000"
	.4byte	0x206
	.ascii	"xTIME_OUT\000"
	.4byte	0x22e
	.ascii	"TimeOut_t\000"
	.4byte	0x23a
	.ascii	"QueueHandle_t\000"
	.4byte	0x2f9
	.ascii	"QueuePointers\000"
	.4byte	0x327
	.ascii	"QueuePointers_t\000"
	.4byte	0x333
	.ascii	"SemaphoreData\000"
	.4byte	0x35b
	.ascii	"SemaphoreData_t\000"
	.4byte	0x251
	.ascii	"QueueDefinition\000"
	.4byte	0x389
	.ascii	"xQUEUE\000"
	.4byte	0x395
	.ascii	"Queue_t\000"
	.4byte	0x3a6
	.ascii	"QUEUE_REGISTRY_ITEM\000"
	.4byte	0x3ce
	.ascii	"xQueueRegistryItem\000"
	.4byte	0x3da
	.ascii	"QueueRegistryItem_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x12c
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
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
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
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
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF460
	.file 8 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x8
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF461
	.file 9 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL_ConfDefaults.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x9
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF462
	.file 10 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL_Conf.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xa
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF463
	.file 11 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL_Arm_Conf.h"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0xb
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
	.file 12 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/string.h"
	.byte	0x3
	.uleb128 0x1e
	.uleb128 0xc
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF627
	.byte	0x4
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF628
	.file 13 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/include/FreeRTOS.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF629
	.file 14 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/stddef.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.file 15 "./FreeRTOSConfig.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0xf
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 16 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/include/projdefs.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.file 17 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/include/portable.h"
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF799
	.file 18 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/include/deprecated_definitions.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF800
	.byte	0x4
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x4
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro12
	.file 19 "C:/Users/wojte/Documents/SEGGER Embedded Studio for ARM Projects/GitHub/STM32G0_Project/STM32G0_ZEGAR_FreeRTOS/stm32g0_ZEGAR_FreeRTOS/FreeRTOS/Source/include/mpu_wrappers.h"
	.byte	0x3
	.uleb128 0x63
	.uleb128 0x13
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x4
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1024
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro17
	.byte	0x4
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1096
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro18
	.byte	0x4
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF1116
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1117
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF1118
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF1119
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1120
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF1121
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF1122
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF1123
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF1124
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF1125
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
	.section	.debug_macro,"G",%progbits,wm4.stdlib.h.34.fa6b1c370dd5f94cc019ce73bcdff96a,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF626
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stddef.h.11.c65111150e68f5f2e47c567bce3814f1,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF631
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.11.41cebd920198fcae1efc8eda76700dbd,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF691
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.FreeRTOSConfig.h.2.2a234e6379b1e94bec7e8858d200afbf,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF741
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.projdefs.h.30.0702c8e11543ad65b967f8cb76fed320,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF798
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.portmacro.h.31.843369dbea38d7b2939e41be1fb06b1d,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF830
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.portable.h.61.67abe2d3056dc7a26297423cb1f0b4c9,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF836
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.mpu_wrappers.h.30.e60c5be9cbbb2822799eebcdc9f54a71,comdat
.Ldebug_macro13:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF840
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.portable.h.185.80d76acc48d31daa883f7d01e8a8cee6,comdat
.Ldebug_macro14:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF842
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.FreeRTOS.h.69.7b255bc6378b91c892d4c8203a0108c0,comdat
.Ldebug_macro15:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0x140
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0x168
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0x174
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0x179
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0x180
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0x18a
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0x193
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0x19c
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0x1a5
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0x1ae
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0x1b6
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0x1ba
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0x1c0
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0x1c4
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0x1c8
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0x1cc
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0x1d0
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0x1d4
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0x1d8
	.4byte	.LASF887
	.byte	0x5
	.uleb128 0x1dc
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0x1e0
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0x1e4
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0x1e8
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0x1ec
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0x1f0
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0x1f4
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0x1f8
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0x1fc
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0x200
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0x204
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0x208
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0x20c
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0x210
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0x214
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0x218
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0x21c
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0x220
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0x224
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0x228
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0x22c
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0x230
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0x234
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0x238
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0x23c
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0x240
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0x244
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0x248
	.4byte	.LASF915
	.byte	0x5
	.uleb128 0x24c
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0x250
	.4byte	.LASF917
	.byte	0x5
	.uleb128 0x254
	.4byte	.LASF918
	.byte	0x5
	.uleb128 0x258
	.4byte	.LASF919
	.byte	0x5
	.uleb128 0x25c
	.4byte	.LASF920
	.byte	0x5
	.uleb128 0x260
	.4byte	.LASF921
	.byte	0x5
	.uleb128 0x264
	.4byte	.LASF922
	.byte	0x5
	.uleb128 0x268
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0x26c
	.4byte	.LASF924
	.byte	0x5
	.uleb128 0x270
	.4byte	.LASF925
	.byte	0x5
	.uleb128 0x274
	.4byte	.LASF926
	.byte	0x5
	.uleb128 0x278
	.4byte	.LASF927
	.byte	0x5
	.uleb128 0x27c
	.4byte	.LASF928
	.byte	0x5
	.uleb128 0x280
	.4byte	.LASF929
	.byte	0x5
	.uleb128 0x284
	.4byte	.LASF930
	.byte	0x5
	.uleb128 0x288
	.4byte	.LASF931
	.byte	0x5
	.uleb128 0x28c
	.4byte	.LASF932
	.byte	0x5
	.uleb128 0x290
	.4byte	.LASF933
	.byte	0x5
	.uleb128 0x294
	.4byte	.LASF934
	.byte	0x5
	.uleb128 0x298
	.4byte	.LASF935
	.byte	0x5
	.uleb128 0x29c
	.4byte	.LASF936
	.byte	0x5
	.uleb128 0x2a0
	.4byte	.LASF937
	.byte	0x5
	.uleb128 0x2a4
	.4byte	.LASF938
	.byte	0x5
	.uleb128 0x2a8
	.4byte	.LASF939
	.byte	0x5
	.uleb128 0x2ac
	.4byte	.LASF940
	.byte	0x5
	.uleb128 0x2b0
	.4byte	.LASF941
	.byte	0x5
	.uleb128 0x2b4
	.4byte	.LASF942
	.byte	0x5
	.uleb128 0x2b8
	.4byte	.LASF943
	.byte	0x5
	.uleb128 0x2bc
	.4byte	.LASF944
	.byte	0x5
	.uleb128 0x2c0
	.4byte	.LASF945
	.byte	0x5
	.uleb128 0x2c4
	.4byte	.LASF946
	.byte	0x5
	.uleb128 0x2c8
	.4byte	.LASF947
	.byte	0x5
	.uleb128 0x2cc
	.4byte	.LASF948
	.byte	0x5
	.uleb128 0x2d0
	.4byte	.LASF949
	.byte	0x5
	.uleb128 0x2d4
	.4byte	.LASF950
	.byte	0x5
	.uleb128 0x2d8
	.4byte	.LASF951
	.byte	0x5
	.uleb128 0x2dc
	.4byte	.LASF952
	.byte	0x5
	.uleb128 0x2e0
	.4byte	.LASF953
	.byte	0x5
	.uleb128 0x2e4
	.4byte	.LASF954
	.byte	0x5
	.uleb128 0x2e8
	.4byte	.LASF955
	.byte	0x5
	.uleb128 0x2ec
	.4byte	.LASF956
	.byte	0x5
	.uleb128 0x2f0
	.4byte	.LASF957
	.byte	0x5
	.uleb128 0x306
	.4byte	.LASF958
	.byte	0x5
	.uleb128 0x30e
	.4byte	.LASF959
	.byte	0x5
	.uleb128 0x312
	.4byte	.LASF960
	.byte	0x5
	.uleb128 0x31a
	.4byte	.LASF961
	.byte	0x5
	.uleb128 0x322
	.4byte	.LASF962
	.byte	0x5
	.uleb128 0x326
	.4byte	.LASF963
	.byte	0x5
	.uleb128 0x32a
	.4byte	.LASF964
	.byte	0x5
	.uleb128 0x32e
	.4byte	.LASF965
	.byte	0x5
	.uleb128 0x336
	.4byte	.LASF966
	.byte	0x5
	.uleb128 0x33a
	.4byte	.LASF967
	.byte	0x5
	.uleb128 0x346
	.4byte	.LASF968
	.byte	0x5
	.uleb128 0x34a
	.4byte	.LASF969
	.byte	0x5
	.uleb128 0x34e
	.4byte	.LASF970
	.byte	0x5
	.uleb128 0x356
	.4byte	.LASF971
	.byte	0x5
	.uleb128 0x35a
	.4byte	.LASF972
	.byte	0x5
	.uleb128 0x35e
	.4byte	.LASF973
	.byte	0x5
	.uleb128 0x362
	.4byte	.LASF974
	.byte	0x5
	.uleb128 0x366
	.4byte	.LASF975
	.byte	0x5
	.uleb128 0x36e
	.4byte	.LASF976
	.byte	0x5
	.uleb128 0x376
	.4byte	.LASF977
	.byte	0x5
	.uleb128 0x37f
	.4byte	.LASF978
	.byte	0x5
	.uleb128 0x384
	.4byte	.LASF979
	.byte	0x5
	.uleb128 0x38b
	.4byte	.LASF980
	.byte	0x5
	.uleb128 0x393
	.4byte	.LASF981
	.byte	0x5
	.uleb128 0x39b
	.4byte	.LASF982
	.byte	0x5
	.uleb128 0x3ae
	.4byte	.LASF983
	.byte	0x5
	.uleb128 0x3be
	.4byte	.LASF984
	.byte	0x5
	.uleb128 0x3bf
	.4byte	.LASF985
	.byte	0x5
	.uleb128 0x3c0
	.4byte	.LASF986
	.byte	0x5
	.uleb128 0x3c1
	.4byte	.LASF987
	.byte	0x5
	.uleb128 0x3c7
	.4byte	.LASF988
	.byte	0x5
	.uleb128 0x3d6
	.4byte	.LASF989
	.byte	0x5
	.uleb128 0x3dd
	.4byte	.LASF990
	.byte	0x5
	.uleb128 0x3e4
	.4byte	.LASF991
	.byte	0x5
	.uleb128 0x3e8
	.4byte	.LASF992
	.byte	0x5
	.uleb128 0x3e9
	.4byte	.LASF993
	.byte	0x5
	.uleb128 0x3ea
	.4byte	.LASF994
	.byte	0x5
	.uleb128 0x3eb
	.4byte	.LASF995
	.byte	0x5
	.uleb128 0x3ec
	.4byte	.LASF996
	.byte	0x5
	.uleb128 0x3ed
	.4byte	.LASF997
	.byte	0x5
	.uleb128 0x3ee
	.4byte	.LASF998
	.byte	0x5
	.uleb128 0x3ef
	.4byte	.LASF999
	.byte	0x5
	.uleb128 0x3f0
	.4byte	.LASF1000
	.byte	0x5
	.uleb128 0x3f1
	.4byte	.LASF1001
	.byte	0x5
	.uleb128 0x3f2
	.4byte	.LASF1002
	.byte	0x5
	.uleb128 0x3f3
	.4byte	.LASF1003
	.byte	0x5
	.uleb128 0x3f4
	.4byte	.LASF1004
	.byte	0x5
	.uleb128 0x3f5
	.4byte	.LASF1005
	.byte	0x5
	.uleb128 0x3f6
	.4byte	.LASF1006
	.byte	0x5
	.uleb128 0x3f7
	.4byte	.LASF1007
	.byte	0x5
	.uleb128 0x3f8
	.4byte	.LASF1008
	.byte	0x5
	.uleb128 0x3f9
	.4byte	.LASF1009
	.byte	0x5
	.uleb128 0x3fa
	.4byte	.LASF1010
	.byte	0x5
	.uleb128 0x3fb
	.4byte	.LASF1011
	.byte	0x5
	.uleb128 0x3ff
	.4byte	.LASF1012
	.byte	0x5
	.uleb128 0x400
	.4byte	.LASF1013
	.byte	0x5
	.uleb128 0x401
	.4byte	.LASF1014
	.byte	0x5
	.uleb128 0x402
	.4byte	.LASF1015
	.byte	0x5
	.uleb128 0x406
	.4byte	.LASF1016
	.byte	0x5
	.uleb128 0x412
	.4byte	.LASF1017
	.byte	0x5
	.uleb128 0x418
	.4byte	.LASF1018
	.byte	0x5
	.uleb128 0x41e
	.4byte	.LASF1019
	.byte	0x5
	.uleb128 0x424
	.4byte	.LASF1020
	.byte	0x5
	.uleb128 0x42a
	.4byte	.LASF1021
	.byte	0x5
	.uleb128 0x42e
	.4byte	.LASF1022
	.byte	0x5
	.uleb128 0x45c
	.4byte	.LASF1023
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.list.h.59.0c2a8b393527d52ccb9f868c05dc23c2,comdat
.Ldebug_macro16:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF1025
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF1026
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF1027
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF1028
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF1029
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF1030
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF1031
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF1032
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF1033
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF1034
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF1035
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF1036
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF1037
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF1038
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF1039
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF1040
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF1041
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF1042
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF1043
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF1044
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF1045
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF1046
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF1047
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF1048
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF1049
	.byte	0x5
	.uleb128 0x187
	.4byte	.LASF1050
	.byte	0x5
	.uleb128 0x192
	.4byte	.LASF1051
	.byte	0x5
	.uleb128 0x19a
	.4byte	.LASF1052
	.byte	0x5
	.uleb128 0x1a1
	.4byte	.LASF1053
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.task.h.56.9c9d4003194aa504fe2f1d5d44a72645,comdat
.Ldebug_macro17:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF1054
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF1055
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF1056
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF1057
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF1058
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF1059
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF1060
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1061
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF1062
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF1063
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF1064
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF1065
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF1066
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF1067
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF1068
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF1069
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF1070
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF1071
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF1072
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF1073
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF1074
	.byte	0x5
	.uleb128 0x35e
	.4byte	.LASF1075
	.byte	0x5
	.uleb128 0x813
	.4byte	.LASF1076
	.byte	0x5
	.uleb128 0x815
	.4byte	.LASF1077
	.byte	0x5
	.uleb128 0x830
	.4byte	.LASF1078
	.byte	0x5
	.uleb128 0x832
	.4byte	.LASF1079
	.byte	0x5
	.uleb128 0x8ac
	.4byte	.LASF1080
	.byte	0x5
	.uleb128 0x8ae
	.4byte	.LASF1081
	.byte	0x5
	.uleb128 0x8c9
	.4byte	.LASF1082
	.byte	0x5
	.uleb128 0x8cb
	.4byte	.LASF1083
	.byte	0x5
	.uleb128 0x93b
	.4byte	.LASF1084
	.byte	0x5
	.uleb128 0x93d
	.4byte	.LASF1085
	.byte	0x5
	.uleb128 0x988
	.4byte	.LASF1086
	.byte	0x5
	.uleb128 0x98a
	.4byte	.LASF1087
	.byte	0x5
	.uleb128 0x9df
	.4byte	.LASF1088
	.byte	0x5
	.uleb128 0x9e1
	.4byte	.LASF1089
	.byte	0x5
	.uleb128 0xa49
	.4byte	.LASF1090
	.byte	0x5
	.uleb128 0xa4b
	.4byte	.LASF1091
	.byte	0x5
	.uleb128 0xa89
	.4byte	.LASF1092
	.byte	0x5
	.uleb128 0xa8b
	.4byte	.LASF1093
	.byte	0x5
	.uleb128 0xacb
	.4byte	.LASF1094
	.byte	0x5
	.uleb128 0xacd
	.4byte	.LASF1095
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.queue.h.68.cd4e1868742a6828fd9a5db117b146f8,comdat
.Ldebug_macro18:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF1097
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF1098
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF1099
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF1100
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF1101
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF1102
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF1103
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF1104
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF1105
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF1106
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF1107
	.byte	0x5
	.uleb128 0x18f
	.4byte	.LASF1108
	.byte	0x5
	.uleb128 0x1e4
	.4byte	.LASF1109
	.byte	0x5
	.uleb128 0x238
	.4byte	.LASF1110
	.byte	0x5
	.uleb128 0x3f0
	.4byte	.LASF1111
	.byte	0x5
	.uleb128 0x438
	.4byte	.LASF1112
	.byte	0x5
	.uleb128 0x490
	.4byte	.LASF1113
	.byte	0x5
	.uleb128 0x4db
	.4byte	.LASF1114
	.byte	0x5
	.uleb128 0x5c9
	.4byte	.LASF1115
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF569:
	.ascii	"__SEGGER_RTL_BitcastToF64(X) __SEGGER_RTL_BitcastTo"
	.ascii	"F64_inline(X)\000"
.LASF1210:
	.ascii	"pvItemToQueue\000"
.LASF1241:
	.ascii	"xQueueCreateCountingSemaphore\000"
.LASF359:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF530:
	.ascii	"__SEGGER_RTL_U32 unsigned\000"
.LASF1009:
	.ascii	"pcQueueGetQueueName pcQueueGetName\000"
.LASF1017:
	.ascii	"configUSE_TASK_FPU_SUPPORT 1\000"
.LASF1131:
	.ascii	"int8_t\000"
.LASF235:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF89:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1\000"
.LASF371:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF1130:
	.ascii	"size_t\000"
.LASF790:
	.ascii	"pdFREERTOS_ERRNO_EISCONN 127\000"
.LASF869:
	.ascii	"traceTASK_SWITCHED_IN() \000"
.LASF986:
	.ascii	"portTICK_TYPE_SET_INTERRUPT_MASK_FROM_ISR() 0\000"
.LASF922:
	.ascii	"traceMALLOC(pvAddress,uiSize) \000"
.LASF1171:
	.ascii	"cRxLock\000"
.LASF234:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF705:
	.ascii	"configIDLE_SHOULD_YIELD 1\000"
.LASF716:
	.ascii	"configGENERATE_RUN_TIME_STATS 0\000"
.LASF323:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF315:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF1188:
	.ascii	"pcQueueName\000"
.LASF77:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF726:
	.ascii	"configTIMER_TASK_STACK_DEPTH ( 80 )\000"
.LASF566:
	.ascii	"__SEGGER_RTL_BitcastToU32(X) __SEGGER_RTL_BitcastTo"
	.ascii	"U32_inline(X)\000"
.LASF598:
	.ascii	"__SEGGER_RTL_U64_H(X) ((__SEGGER_RTL_U32)((__SEGGER"
	.ascii	"_RTL_U64)(X) >> 32))\000"
.LASF230:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF850:
	.ascii	"INCLUDE_uxTaskGetStackHighWaterMark 0\000"
.LASF88:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF539:
	.ascii	"__SEGGER_RTL_LEAST_U8 unsigned\000"
.LASF838:
	.ascii	"PRIVILEGED_FUNCTION \000"
.LASF340:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF227:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF1061:
	.ascii	"tskMPU_REGION_NORMAL_MEMORY ( 1UL << 3UL )\000"
.LASF988:
	.ascii	"configENABLE_BACKWARD_COMPATIBILITY 1\000"
.LASF652:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF316:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF73:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF1196:
	.ascii	"pxQueue\000"
.LASF389:
	.ascii	"__ARM_FEATURE_QBIT\000"
.LASF872:
	.ascii	"traceLOW_POWER_IDLE_END() \000"
.LASF776:
	.ascii	"pdFREERTOS_ERRNO_EUNATCH 42\000"
.LASF1208:
	.ascii	"pvBuffer\000"
.LASF931:
	.ascii	"traceEVENT_GROUP_CLEAR_BITS_FROM_ISR(xEventGroup,ux"
	.ascii	"BitsToClear) \000"
.LASF1132:
	.ascii	"signed char\000"
.LASF1042:
	.ascii	"listGET_HEAD_ENTRY(pxList) ( ( ( pxList )->xListEnd"
	.ascii	" ).pxNext )\000"
.LASF1107:
	.ascii	"xQueueSendToFront(xQueue,pvItemToQueue,xTicksToWait"
	.ascii	") xQueueGenericSend( ( xQueue ), ( pvItemToQueue ),"
	.ascii	" ( xTicksToWait ), queueSEND_TO_FRONT )\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF165:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF263:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF329:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF665:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF299:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF251:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF92:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF1033:
	.ascii	"listSET_LIST_INTEGRITY_CHECK_1_VALUE(pxList) \000"
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
.LASF939:
	.ascii	"traceTASK_NOTIFY_TAKE(uxIndexToWait) \000"
.LASF1225:
	.ascii	"xQueueReceiveFromISR\000"
.LASF1158:
	.ascii	"xTIME_OUT\000"
.LASF212:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF731:
	.ascii	"INCLUDE_vTaskSuspend 1\000"
.LASF181:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF177:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF175:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF880:
	.ascii	"configINCLUDE_FREERTOS_TASK_C_ADDITIONS_H 0\000"
.LASF832:
	.ascii	"portUSING_MPU_WRAPPERS 0\000"
.LASF117:
	.ascii	"__UINT8_C(c) c\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF760:
	.ascii	"pdFREERTOS_ERRNO_EBADF 9\000"
.LASF584:
	.ascii	"__SEGGER_RTL_UMLAL(L,H,X,Y) __SEGGER_RTL_UMLAL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF461:
	.ascii	"__SEGGER_RTL_H \000"
.LASF867:
	.ascii	"traceSTART() \000"
.LASF1184:
	.ascii	"xSemaphore\000"
.LASF734:
	.ascii	"INCLUDE_xResumeFromISR 1\000"
.LASF836:
	.ascii	"configSTACK_ALLOCATION_FROM_SEPARATE_HEAP 0\000"
.LASF1044:
	.ascii	"listGET_END_MARKER(pxList) ( ( ListItem_t const * )"
	.ascii	" ( &( ( pxList )->xListEnd ) ) )\000"
.LASF619:
	.ascii	"NULL 0\000"
.LASF835:
	.ascii	"portARCH_NAME NULL\000"
.LASF526:
	.ascii	"__SEGGER_RTL_INCLUDE_SEGGER_API 0\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF286:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF748:
	.ascii	"errQUEUE_EMPTY ( ( BaseType_t ) 0 )\000"
.LASF1189:
	.ascii	"xHandle\000"
.LASF507:
	.ascii	"__SEGGER_RTL_FLOAT64_C_COMPLEX double _Complex\000"
.LASF676:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF617:
	.ascii	"__SEGGER_RTL_FILE_IMPL_DEFINED \000"
.LASF725:
	.ascii	"configTIMER_QUEUE_LENGTH 5\000"
.LASF570:
	.ascii	"__SEGGER_RTL_SMULL_X(X,Y) __SEGGER_RTL_SMULL_X_func"
	.ascii	"((X), (Y))\000"
.LASF955:
	.ascii	"traceSTREAM_BUFFER_RECEIVE(xStreamBuffer,xReceivedL"
	.ascii	"ength) \000"
.LASF928:
	.ascii	"traceEVENT_GROUP_WAIT_BITS_BLOCK(xEventGroup,uxBits"
	.ascii	"ToWaitFor) \000"
.LASF211:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF951:
	.ascii	"traceSTREAM_BUFFER_SEND(xStreamBuffer,xBytesSent) \000"
.LASF699:
	.ascii	"configMAX_PRIORITIES ( 5 )\000"
.LASF626:
	.ascii	"MB_CUR_MAX __SEGGER_RTL_mb_max(&__SEGGER_RTL_global"
	.ascii	"_locale)\000"
.LASF698:
	.ascii	"configTICK_RATE_HZ ( ( TickType_t ) 1000 )\000"
.LASF874:
	.ascii	"traceTASK_PRIORITY_INHERIT(pxTCBOfMutexHolder,uxInh"
	.ascii	"eritedPriority) \000"
.LASF259:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF401:
	.ascii	"__ARM_FEATURE_CLZ\000"
.LASF1052:
	.ascii	"listLIST_ITEM_CONTAINER(pxListItem) ( ( pxListItem "
	.ascii	")->pxContainer )\000"
.LASF945:
	.ascii	"traceSTREAM_BUFFER_CREATE_FAILED(xIsMessageBuffer) "
	.ascii	"\000"
.LASF138:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF233:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF817:
	.ascii	"portYIELD() vPortYield()\000"
.LASF865:
	.ascii	"portSETUP_TCB(pxTCB) ( void ) pxTCB\000"
.LASF1079:
	.ascii	"xTaskNotifyAndQueryIndexed(xTaskToNotify,uxIndexToN"
	.ascii	"otify,ulValue,eAction,pulPreviousNotifyValue) xTask"
	.ascii	"GenericNotify( ( xTaskToNotify ), ( uxIndexToNotify"
	.ascii	" ), ( ulValue ), ( eAction ), ( pulPreviousNotifyVa"
	.ascii	"lue ) )\000"
.LASF916:
	.ascii	"traceTASK_INCREMENT_TICK(xTickCount) \000"
.LASF1176:
	.ascii	"pcTail\000"
.LASF204:
	.ascii	"__FLT16_HAS_INFINITY__ 1\000"
.LASF276:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF735:
	.ascii	"INCLUDE_xTaskGetSchedulerState 1\000"
.LASF224:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF953:
	.ascii	"traceSTREAM_BUFFER_SEND_FROM_ISR(xStreamBuffer,xByt"
	.ascii	"esSent) \000"
.LASF599:
	.ascii	"__SEGGER_RTL_U64_L(X) ((__SEGGER_RTL_U32)(__SEGGER_"
	.ascii	"RTL_U64)(X))\000"
.LASF131:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF1097:
	.ascii	"queueSEND_TO_BACK ( ( BaseType_t ) 0 )\000"
.LASF1003:
	.ascii	"xTimerHandle TimerHandle_t\000"
.LASF870:
	.ascii	"traceINCREASE_TICK_COUNT(x) \000"
.LASF1177:
	.ascii	"pcReadFrom\000"
.LASF474:
	.ascii	"__SEGGER_RTL_FLOAT16 _Float16\000"
.LASF1058:
	.ascii	"tskMPU_REGION_READ_ONLY ( 1UL << 0UL )\000"
.LASF255:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF565:
	.ascii	"__SEGGER_RTL_STDOUT_BUFFER_LEN 64\000"
.LASF1223:
	.ascii	"uxSavedInterruptStatus\000"
.LASF1014:
	.ascii	"xListItem ListItem_t\000"
.LASF111:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF345:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF1231:
	.ascii	"xInheritanceOccurred\000"
.LASF583:
	.ascii	"__SEGGER_RTL_SMLAL_SYNTHESIZED \000"
.LASF375:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1\000"
.LASF550:
	.ascii	"__SEGGER_RTL_WINT_T __WINT_TYPE__\000"
.LASF1219:
	.ascii	"uxReturn\000"
.LASF1111:
	.ascii	"xQueueSendToFrontFromISR(xQueue,pvItemToQueue,pxHig"
	.ascii	"herPriorityTaskWoken) xQueueGenericSendFromISR( ( x"
	.ascii	"Queue ), ( pvItemToQueue ), ( pxHigherPriorityTaskW"
	.ascii	"oken ), queueSEND_TO_FRONT )\000"
.LASF228:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF1026:
	.ascii	"configLIST_VOLATILE \000"
.LASF1144:
	.ascii	"pxNext\000"
.LASF749:
	.ascii	"errQUEUE_FULL ( ( BaseType_t ) 0 )\000"
.LASF810:
	.ascii	"portTICK_TYPE_IS_ATOMIC 1\000"
.LASF960:
	.ascii	"portYIELD_WITHIN_API portYIELD\000"
.LASF343:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF490:
	.ascii	"__SEGGER_RTL_PUBLIC_API __attribute__((__weak__))\000"
.LASF223:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF684:
	.ascii	"UINT8_C(x) (x ##u)\000"
.LASF86:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF246:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF641:
	.ascii	"UINT8_MAX 255\000"
.LASF132:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF1255:
	.ascii	"uxQueueLength\000"
.LASF1012:
	.ascii	"tmrTIMER_CALLBACK TimerCallbackFunction_t\000"
.LASF454:
	.ascii	"DEBUG 1\000"
.LASF152:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF312:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF1247:
	.ascii	"xQueueGiveMutexRecursive\000"
.LASF722:
	.ascii	"configMAX_CO_ROUTINE_PRIORITIES ( 2 )\000"
.LASF994:
	.ascii	"xTaskHandle TaskHandle_t\000"
.LASF127:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF842:
	.ascii	"vPortFreeStack vPortFree\000"
.LASF420:
	.ascii	"__VFP_FP__ 1\000"
.LASF877:
	.ascii	"traceBLOCKING_ON_QUEUE_PEEK(pxQueue) \000"
.LASF463:
	.ascii	"__SEGGER_RTL_CONF_H \000"
.LASF136:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF831:
	.ascii	"portBYTE_ALIGNMENT_MASK ( 0x0007 )\000"
.LASF971:
	.ascii	"mtCOVERAGE_TEST_MARKER() \000"
.LASF610:
	.ascii	"__SEGGER_RTL_SUBNORMALS_FLUSH_TO_ZERO 1\000"
.LASF791:
	.ascii	"pdFREERTOS_ERRNO_ENOTCONN 128\000"
.LASF203:
	.ascii	"__FLT16_HAS_DENORM__ 1\000"
.LASF1071:
	.ascii	"taskENABLE_INTERRUPTS() portENABLE_INTERRUPTS()\000"
.LASF475:
	.ascii	"__SEGGER_RTL_MAX_ALIGN 8\000"
.LASF459:
	.ascii	"__NO_FPU_ENABLE 1\000"
.LASF216:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF268:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF636:
	.ascii	"INT16_MAX 32767\000"
.LASF432:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF563:
	.ascii	"__SEGGER_RTL_HEAP_SIZE 1024\000"
.LASF1029:
	.ascii	"listFIRST_LIST_INTEGRITY_CHECK_VALUE \000"
.LASF94:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF1201:
	.ascii	"xQueueIsQueueFullFromISR\000"
.LASF625:
	.ascii	"RAND_MAX 32767\000"
.LASF1094:
	.ascii	"ulTaskNotifyValueClear(xTask,ulBitsToClear) ulTaskG"
	.ascii	"enericNotifyValueClear( ( xTask ), ( tskDEFAULT_IND"
	.ascii	"EX_TO_NOTIFY ), ( ulBitsToClear ) )\000"
.LASF1083:
	.ascii	"xTaskNotifyAndQueryFromISR(xTaskToNotify,ulValue,eA"
	.ascii	"ction,pulPreviousNotificationValue,pxHigherPriority"
	.ascii	"TaskWoken) xTaskGenericNotifyFromISR( ( xTaskToNoti"
	.ascii	"fy ), ( tskDEFAULT_INDEX_TO_NOTIFY ), ( ulValue ), "
	.ascii	"( eAction ), ( pulPreviousNotificationValue ), ( px"
	.ascii	"HigherPriorityTaskWoken ) )\000"
.LASF738:
	.ascii	"INCLUDE_xTaskResumeFromISR 1\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF1205:
	.ascii	"prvIsQueueEmpty\000"
.LASF796:
	.ascii	"pdFREERTOS_BIG_ENDIAN 1\000"
.LASF200:
	.ascii	"__FLT16_MIN__ 1.1\000"
.LASF717:
	.ascii	"configLIBRARY_LOWEST_INTERRUPT_PRIORITY 0x03\000"
.LASF473:
	.ascii	"__SEGGER_RTL_TYPESET 32\000"
.LASF307:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF1128:
	.ascii	"long int\000"
.LASF245:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF130:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF242:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF250:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF1015:
	.ascii	"xList List_t\000"
.LASF723:
	.ascii	"configUSE_TIMERS 1\000"
.LASF1163:
	.ascii	"QueueDefinition\000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF363:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF1256:
	.ascii	"pucQueueStorage\000"
.LASF1100:
	.ascii	"queueQUEUE_TYPE_BASE ( ( uint8_t ) 0U )\000"
.LASF775:
	.ascii	"pdFREERTOS_ERRNO_EROFS 30\000"
.LASF91:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF855:
	.ascii	"configNUM_THREAD_LOCAL_STORAGE_POINTERS 0\000"
.LASF976:
	.ascii	"configTASK_NOTIFICATION_ARRAY_ENTRIES 1\000"
.LASF535:
	.ascii	"__SEGGER_RTL_I8 signed char\000"
.LASF920:
	.ascii	"traceTIMER_EXPIRED(pxTimer) \000"
.LASF335:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF1204:
	.ascii	"prvIsQueueFull\000"
.LASF587:
	.ascii	"__SEGGER_RTL_DIVMOD_U64(Q,R,N,D) do { Q = N / D; R "
	.ascii	"= N - Q*D; } while (0)\000"
.LASF429:
	.ascii	"__ARM_NEON__\000"
.LASF210:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF289:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF1066:
	.ascii	"taskENTER_CRITICAL() portENTER_CRITICAL()\000"
.LASF578:
	.ascii	"__SEGGER_RTL_SMULL(L,H,X,Y) __SEGGER_RTL_SMULL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF782:
	.ascii	"pdFREERTOS_ERRNO_EOPNOTSUPP 95\000"
.LASF1089:
	.ascii	"vTaskNotifyGiveIndexedFromISR(xTaskToNotify,uxIndex"
	.ascii	"ToNotify,pxHigherPriorityTaskWoken) vTaskGenericNot"
	.ascii	"ifyGiveFromISR( ( xTaskToNotify ), ( uxIndexToNotif"
	.ascii	"y ), ( pxHigherPriorityTaskWoken ) );\000"
.LASF239:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF753:
	.ascii	"configUSE_LIST_DATA_INTEGRITY_CHECK_BYTES 0\000"
.LASF846:
	.ascii	"INCLUDE_xTaskAbortDelay 0\000"
.LASF950:
	.ascii	"traceBLOCKING_ON_STREAM_BUFFER_SEND(xStreamBuffer) "
	.ascii	"\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF1139:
	.ascii	"BaseType_t\000"
.LASF426:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF644:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF134:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF943:
	.ascii	"traceTASK_NOTIFY_FROM_ISR(uxIndexToNotify) \000"
.LASF149:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF773:
	.ascii	"pdFREERTOS_ERRNO_ENOSPC 28\000"
.LASF917:
	.ascii	"traceTIMER_CREATE(pxNewTimer) \000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF112:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF910:
	.ascii	"traceTASK_DELAY_UNTIL(x) \000"
.LASF710:
	.ascii	"configUSE_QUEUE_SETS 0\000"
.LASF658:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF839:
	.ascii	"PRIVILEGED_DATA \000"
.LASF980:
	.ascii	"configSTACK_DEPTH_TYPE uint16_t\000"
.LASF476:
	.ascii	"__SEGGER_RTL_FP_ABI 0\000"
.LASF1173:
	.ascii	"uxQueueNumber\000"
.LASF934:
	.ascii	"traceEVENT_GROUP_DELETE(xEventGroup) \000"
.LASF1104:
	.ascii	"queueQUEUE_TYPE_BINARY_SEMAPHORE ( ( uint8_t ) 3U )"
	.ascii	"\000"
.LASF1232:
	.ascii	"uxSemaphoreCount\000"
.LASF669:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF623:
	.ascii	"EXIT_SUCCESS 0\000"
.LASF365:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF1194:
	.ascii	"vQueueWaitForMessageRestricted\000"
.LASF1008:
	.ascii	"pcTimerGetTimerName pcTimerGetName\000"
.LASF493:
	.ascii	"__SEGGER_RTL_CORE_HAS_REV 0\000"
.LASF863:
	.ascii	"portCLEAN_UP_TCB(pxTCB) ( void ) pxTCB\000"
.LASF663:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF1162:
	.ascii	"QueueHandle_t\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF1133:
	.ascii	"uint8_t\000"
.LASF1060:
	.ascii	"tskMPU_REGION_EXECUTE_NEVER ( 1UL << 2UL )\000"
.LASF1041:
	.ascii	"listGET_ITEM_VALUE_OF_HEAD_ENTRY(pxList) ( ( ( pxLi"
	.ascii	"st )->xListEnd ).pxNext->xItemValue )\000"
.LASF186:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF369:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF489:
	.ascii	"__SEGGER_RTL_REQUEST_INLINE __inline__\000"
.LASF424:
	.ascii	"__ARM_FP16_ARGS 1\000"
.LASF657:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF325:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF527:
	.ascii	"__SEGGER_RTL_INCLUDE_C_API 1\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF585:
	.ascii	"__SEGGER_RTL_UMLAL_SYNTHESIZED \000"
.LASF118:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF964:
	.ascii	"configPRE_SLEEP_PROCESSING(x) \000"
.LASF925:
	.ascii	"traceEVENT_GROUP_CREATE_FAILED() \000"
.LASF609:
	.ascii	"__SEGGER_RTL_SUBNORMALS_READ_AS_ZERO 1\000"
.LASF909:
	.ascii	"traceTASK_DELETE(pxTaskToDelete) \000"
.LASF959:
	.ascii	"portPRIVILEGE_BIT ( ( UBaseType_t ) 0x00 )\000"
.LASF969:
	.ascii	"configUSE_STATS_FORMATTING_FUNCTIONS 0\000"
.LASF226:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF1166:
	.ascii	"xTasksWaitingToSend\000"
.LASF781:
	.ascii	"pdFREERTOS_ERRNO_ENAMETOOLONG 91\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF1257:
	.ascii	"xQueueGenericCreate\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF292:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF150:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF1202:
	.ascii	"xReturn\000"
.LASF481:
	.ascii	"__SEGGER_RTL_FLT_SELECT(HEX,DEC) HEX\000"
.LASF264:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF1197:
	.ascii	"pcReturn\000"
.LASF163:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF887:
	.ascii	"traceGIVE_MUTEX_RECURSIVE(pxMutex) \000"
.LASF788:
	.ascii	"pdFREERTOS_ERRNO_EALREADY 120\000"
.LASF128:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF437:
	.ascii	"__ARM_ARCH_EXT_IDIV__\000"
.LASF787:
	.ascii	"pdFREERTOS_ERRNO_EINPROGRESS 119\000"
.LASF498:
	.ascii	"__SEGGER_RTL_CORE_HAS_CBZ_CBNZ 0\000"
.LASF1155:
	.ascii	"MiniListItem_t\000"
.LASF639:
	.ascii	"INT64_MIN (-9223372036854775807LL-1)\000"
.LASF1121:
	.ascii	"queueQUEUE_IS_MUTEX NULL\000"
.LASF954:
	.ascii	"traceBLOCKING_ON_STREAM_BUFFER_RECEIVE(xStreamBuffe"
	.ascii	"r) \000"
.LASF1110:
	.ascii	"xQueueOverwrite(xQueue,pvItemToQueue) xQueueGeneric"
	.ascii	"Send( ( xQueue ), ( pvItemToQueue ), 0, queueOVERWR"
	.ascii	"ITE )\000"
.LASF1054:
	.ascii	"tskKERNEL_VERSION_NUMBER \"V10.4.6\"\000"
.LASF688:
	.ascii	"INTMAX_C(x) (x ##LL)\000"
.LASF101:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF984:
	.ascii	"portTICK_TYPE_ENTER_CRITICAL() \000"
.LASF339:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF864:
	.ascii	"portPRE_TASK_DELETE_HOOK(pvTaskToDelete,pxYieldPend"
	.ascii	"ing) \000"
.LASF683:
	.ascii	"INT64_C(x) (x ##LL)\000"
.LASF452:
	.ascii	"__SES_VERSION 57001\000"
.LASF171:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF1160:
	.ascii	"xTimeOnEntering\000"
.LASF635:
	.ascii	"INT16_MIN (-32767-1)\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF326:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF523:
	.ascii	"__SEGGER_RTL_FORCE_SOFT_FLOAT 0\000"
.LASF1032:
	.ascii	"listSET_SECOND_LIST_ITEM_INTEGRITY_CHECK_VALUE(pxIt"
	.ascii	"em) \000"
.LASF470:
	.ascii	"__SEGGER_RTL_INCLUDE_AEABI_API 2\000"
.LASF875:
	.ascii	"traceTASK_PRIORITY_DISINHERIT(pxTCBOfMutexHolder,ux"
	.ascii	"OriginalPriority) \000"
.LASF1119:
	.ascii	"queueINT8_MAX ( ( int8_t ) 127 )\000"
.LASF769:
	.ascii	"pdFREERTOS_ERRNO_ENODEV 19\000"
.LASF1095:
	.ascii	"ulTaskNotifyValueClearIndexed(xTask,uxIndexToClear,"
	.ascii	"ulBitsToClear) ulTaskGenericNotifyValueClear( ( xTa"
	.ascii	"sk ), ( uxIndexToClear ), ( ulBitsToClear ) )\000"
.LASF1151:
	.ascii	"pxIndex\000"
.LASF1011:
	.ascii	"xTaskGetIdleRunTimeCounter ulTaskGetIdleRunTimeCoun"
	.ascii	"ter\000"
.LASF166:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF679:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF1248:
	.ascii	"xQueueCreateMutex\000"
.LASF1193:
	.ascii	"xWaitIndefinitely\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF1000:
	.ascii	"xMemoryRegion MemoryRegion_t\000"
.LASF1181:
	.ascii	"uxRecursiveCallCount\000"
.LASF799:
	.ascii	"PORTABLE_H \000"
.LASF1126:
	.ascii	"char\000"
.LASF362:
	.ascii	"__USA_IBIT__ 16\000"
.LASF1259:
	.ascii	"xQueueGenericReset\000"
.LASF1217:
	.ascii	"vQueueDelete\000"
.LASF576:
	.ascii	"__SEGGER_RTL_UMULL_HI(X,Y) __SEGGER_RTL_UMULL_HI_fu"
	.ascii	"nc((X), (Y))\000"
.LASF588:
	.ascii	"__SEGGER_RTL_RODATA_IS_RW 0\000"
.LASF254:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF1161:
	.ascii	"TimeOut_t\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF1154:
	.ascii	"xMINI_LIST_ITEM\000"
.LASF833:
	.ascii	"portNUM_CONFIGURABLE_REGIONS 1\000"
.LASF1117:
	.ascii	"queueUNLOCKED ( ( int8_t ) -1 )\000"
.LASF1064:
	.ascii	"tskIDLE_PRIORITY ( ( UBaseType_t ) 0U )\000"
.LASF993:
	.ascii	"portTickType TickType_t\000"
.LASF868:
	.ascii	"traceEND() \000"
.LASF351:
	.ascii	"__HA_FBIT__ 7\000"
.LASF854:
	.ascii	"configUSE_DAEMON_TASK_STARTUP_HOOK 0\000"
.LASF436:
	.ascii	"__FDPIC__\000"
.LASF482:
	.ascii	"__SEGGER_RTL_CORE_HAS_MLA 0\000"
.LASF468:
	.ascii	"__SEGGER_RTL_NO_BUILTIN __attribute__((optimize(\"-"
	.ascii	"fno-tree-loop-distribute-patterns\")))\000"
.LASF1260:
	.ascii	"GNU C99 10.3.1 20210824 (release) -fmessage-length="
	.ascii	"0 -std=gnu99 -mcpu=cortex-m0plus -mlittle-endian -m"
	.ascii	"float-abi=soft -mthumb -mtp=soft -mfp16-format=ieee"
	.ascii	" -mno-unaligned-access -gdwarf-4 -g3 -gpubnames -fo"
	.ascii	"mit-frame-pointer -fno-dwarf2-cfi-asm -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF632:
	.ascii	"__SEGGER_RTL_STDINT_H \000"
.LASF861:
	.ascii	"configPRECONDITION_DEFINED 0\000"
.LASF547:
	.ascii	"__SEGGER_RTL_SIZEOF_PTR 4\000"
.LASF247:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF686:
	.ascii	"UINT32_C(x) (x ##u)\000"
.LASF1195:
	.ascii	"vQueueUnregisterQueue\000"
.LASF1102:
	.ascii	"queueQUEUE_TYPE_MUTEX ( ( uint8_t ) 1U )\000"
.LASF923:
	.ascii	"traceFREE(pvAddress,uiSize) \000"
.LASF827:
	.ascii	"portTASK_FUNCTION_PROTO(vFunction,pvParameters) voi"
	.ascii	"d vFunction( void * pvParameters )\000"
.LASF257:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF752:
	.ascii	"errQUEUE_YIELD ( -5 )\000"
.LASF987:
	.ascii	"portTICK_TYPE_CLEAR_INTERRUPT_MASK_FROM_ISR(x) ( vo"
	.ascii	"id ) x\000"
.LASF646:
	.ascii	"INTMAX_MAX INT64_MAX\000"
.LASF700:
	.ascii	"configMINIMAL_STACK_SIZE ( ( unsigned short ) 60 )\000"
.LASF258:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF449:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF430:
	.ascii	"__ARM_NEON\000"
.LASF1112:
	.ascii	"xQueueSendToBackFromISR(xQueue,pvItemToQueue,pxHigh"
	.ascii	"erPriorityTaskWoken) xQueueGenericSendFromISR( ( xQ"
	.ascii	"ueue ), ( pvItemToQueue ), ( pxHigherPriorityTaskWo"
	.ascii	"ken ), queueSEND_TO_BACK )\000"
.LASF100:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF1138:
	.ascii	"long long unsigned int\000"
.LASF179:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF518:
	.ascii	"__WIDTH_LONG_LONG 2\000"
.LASF860:
	.ascii	"configPRECONDITION(X) configASSERT( X )\000"
.LASF1227:
	.ascii	"xQueuePeek\000"
.LASF774:
	.ascii	"pdFREERTOS_ERRNO_ESPIPE 29\000"
.LASF172:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF784:
	.ascii	"pdFREERTOS_ERRNO_ENOPROTOOPT 109\000"
.LASF967:
	.ascii	"portALLOCATE_SECURE_CONTEXT(ulSecureStackSize) \000"
.LASF1050:
	.ascii	"listGET_OWNER_OF_HEAD_ENTRY(pxList) ( ( &( ( pxList"
	.ascii	" )->xListEnd ) )->pxNext->pvOwner )\000"
.LASF355:
	.ascii	"__DA_FBIT__ 31\000"
.LASF67:
	.ascii	"__GXX_ABI_VERSION 1014\000"
.LASF1147:
	.ascii	"pvContainer\000"
.LASF1122:
	.ascii	"queueSEMAPHORE_QUEUE_ITEM_LENGTH ( ( UBaseType_t ) "
	.ascii	"0 )\000"
.LASF107:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF614:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIVM_X 0\000"
.LASF466:
	.ascii	"__SEGGER_RTL_ISA_T32 1\000"
.LASF600:
	.ascii	"__SEGGER_RTL_U64_MK(H,L) (((__SEGGER_RTL_U64)(__SEG"
	.ascii	"GER_RTL_U32)(H) << 32) + (__SEGGER_RTL_U32)(L))\000"
.LASF1039:
	.ascii	"listSET_LIST_ITEM_VALUE(pxListItem,xValue) ( ( pxLi"
	.ascii	"stItem )->xItemValue = ( xValue ) )\000"
.LASF858:
	.ascii	"configASSERT(x) \000"
.LASF596:
	.ascii	"__SEGGER_RTL_SCALED_INTEGER 0\000"
.LASF1048:
	.ascii	"listREMOVE_ITEM(pxItemToRemove) { List_t * const px"
	.ascii	"List = ( pxItemToRemove )->pxContainer; ( pxItemToR"
	.ascii	"emove )->pxNext->pxPrevious = ( pxItemToRemove )->p"
	.ascii	"xPrevious; ( pxItemToRemove )->pxPrevious->pxNext ="
	.ascii	" ( pxItemToRemove )->pxNext; if( pxList->pxIndex =="
	.ascii	" ( pxItemToRemove ) ) { pxList->pxIndex = ( pxItemT"
	.ascii	"oRemove )->pxPrevious; } ( pxItemToRemove )->pxCont"
	.ascii	"ainer = NULL; ( pxList->uxNumberOfItems )--; }\000"
.LASF851:
	.ascii	"INCLUDE_uxTaskGetStackHighWaterMark2 0\000"
.LASF480:
	.ascii	"__SEGGER_RTL_NAN_FORMAT __SEGGER_RTL_NAN_FORMAT_IEE"
	.ascii	"E\000"
.LASF121:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF732:
	.ascii	"INCLUDE_vTaskDelayUntil 1\000"
.LASF859:
	.ascii	"configASSERT_DEFINED 0\000"
.LASF759:
	.ascii	"pdFREERTOS_ERRNO_ENXIO 6\000"
.LASF229:
	.ascii	"__FLT64_NORM_MAX__ 1.1\000"
.LASF845:
	.ascii	"INCLUDE_xTaskGetIdleTaskHandle 0\000"
.LASF197:
	.ascii	"__FLT16_DECIMAL_DIG__ 5\000"
.LASF1221:
	.ascii	"uxQueueMessagesWaiting\000"
.LASF1004:
	.ascii	"xCoRoutineHandle CoRoutineHandle_t\000"
.LASF737:
	.ascii	"INCLUDE_xEventGroupSetBitFromISR 1\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF848:
	.ascii	"INCLUDE_xSemaphoreGetMutexHolder INCLUDE_xQueueGetM"
	.ascii	"utexHolder\000"
.LASF509:
	.ascii	"__SEGGER_RTL_PREFER_BRANCH_FREE_CODE 1\000"
.LASF451:
	.ascii	"__HEAP_SIZE__ 0\000"
.LASF914:
	.ascii	"traceTASK_RESUME(pxTaskToResume) \000"
.LASF516:
	.ascii	"__WIDTH_INT 0\000"
.LASF310:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF443:
	.ascii	"__ARM_FEATURE_MATMUL_INT8\000"
.LASF604:
	.ascii	"__SEGGER_RTL_NAN __builtin_nanf(\"0x7fc00000\")\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 1\000"
.LASF1099:
	.ascii	"queueOVERWRITE ( ( BaseType_t ) 2 )\000"
.LASF1187:
	.ascii	"QUEUE_REGISTRY_ITEM\000"
.LASF779:
	.ascii	"pdFREERTOS_ERRNO_ENMFILE 89\000"
.LASF296:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF661:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF311:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF462:
	.ascii	"__SEGGER_RTL_LIBC_CONF_DEFAULTS_H \000"
.LASF1010:
	.ascii	"vTaskGetTaskInfo vTaskGetInfo\000"
.LASF220:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF1062:
	.ascii	"tskMPU_REGION_DEVICE_MEMORY ( 1UL << 4UL )\000"
.LASF940:
	.ascii	"traceTASK_NOTIFY_WAIT_BLOCK(uxIndexToWait) \000"
.LASF208:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF692:
	.ascii	"FREERTOS_CONFIG_H \000"
.LASF357:
	.ascii	"__TA_FBIT__ 63\000"
.LASF685:
	.ascii	"UINT16_C(x) (x ##u)\000"
.LASF1065:
	.ascii	"taskYIELD() portYIELD()\000"
.LASF241:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF948:
	.ascii	"traceSTREAM_BUFFER_DELETE(xStreamBuffer) \000"
.LASF499:
	.ascii	"__SEGGER_RTL_CORE_HAS_TBB_TBH 0\000"
.LASF693:
	.ascii	"configPRIO_BITS __NVIC_PRIO_BITS\000"
.LASF554:
	.ascii	"__SEGGER_RTL_OPTIMIZE 0\000"
.LASF1175:
	.ascii	"QueuePointers\000"
.LASF591:
	.ascii	"__SEGGER_RTL_SPECIALIZE_COMPARES 1\000"
.LASF750:
	.ascii	"errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY ( -1 )\000"
.LASF1073:
	.ascii	"taskSCHEDULER_NOT_STARTED ( ( BaseType_t ) 1 )\000"
.LASF1164:
	.ascii	"pcHead\000"
.LASF342:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF1067:
	.ascii	"taskENTER_CRITICAL_FROM_ISR() portSET_INTERRUPT_MAS"
	.ascii	"K_FROM_ISR()\000"
.LASF957:
	.ascii	"traceSTREAM_BUFFER_RECEIVE_FROM_ISR(xStreamBuffer,x"
	.ascii	"ReceivedLength) \000"
.LASF182:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF568:
	.ascii	"__SEGGER_RTL_BitcastToU64(X) __SEGGER_RTL_BitcastTo"
	.ascii	"U64_inline(X)\000"
.LASF740:
	.ascii	"xPortPendSVHandler PendSV_Handler\000"
.LASF308:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF1093:
	.ascii	"xTaskNotifyStateClearIndexed(xTask,uxIndexToClear) "
	.ascii	"xTaskGenericNotifyStateClear( ( xTask ), ( uxIndexT"
	.ascii	"oClear ) )\000"
.LASF672:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF573:
	.ascii	"__SEGGER_RTL_UMULL_X_SYNTHESIZED \000"
.LASF384:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF184:
	.ascii	"__LDBL_NORM_MAX__ 1.1\000"
.LASF807:
	.ascii	"portSTACK_TYPE uint32_t\000"
.LASF1170:
	.ascii	"uxItemSize\000"
.LASF1092:
	.ascii	"xTaskNotifyStateClear(xTask) xTaskGenericNotifyStat"
	.ascii	"eClear( ( xTask ), ( tskDEFAULT_INDEX_TO_NOTIFY ) )"
	.ascii	"\000"
.LASF109:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF694:
	.ascii	"configUSE_PREEMPTION 1\000"
.LASF973:
	.ascii	"portASSERT_IF_IN_ISR() \000"
.LASF932:
	.ascii	"traceEVENT_GROUP_SET_BITS(xEventGroup,uxBitsToSet) "
	.ascii	"\000"
.LASF427:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF785:
	.ascii	"pdFREERTOS_ERRNO_EADDRINUSE 112\000"
.LASF675:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF170:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF581:
	.ascii	"__SEGGER_RTL_UMULL_SYNTHESIZED \000"
.LASF514:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_FAST 1\000"
.LASF742:
	.ascii	"PROJDEFS_H \000"
.LASF260:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF1254:
	.ascii	"prvInitialiseNewQueue\000"
.LASF650:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF720:
	.ascii	"configMAX_SYSCALL_INTERRUPT_PRIORITY ( configLIBRAR"
	.ascii	"Y_MAX_SYSCALL_INTERRUPT_PRIORITY << (8 - configPRIO"
	.ascii	"_BITS) )\000"
.LASF1243:
	.ascii	"uxInitialCount\000"
.LASF256:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF324:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF697:
	.ascii	"configCPU_CLOCK_HZ ( 16000000 )\000"
.LASF261:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF368:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF103:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF696:
	.ascii	"configUSE_TICK_HOOK 0\000"
.LASF656:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
.LASF582:
	.ascii	"__SEGGER_RTL_SMLAL(L,H,X,Y) __SEGGER_RTL_SMLAL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF102:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF558:
	.ascii	"__SEGGER_RTL_FORMAT_WIDTH_PRECISION 1\000"
.LASF847:
	.ascii	"INCLUDE_xQueueGetMutexHolder 0\000"
.LASF695:
	.ascii	"configUSE_IDLE_HOOK 0\000"
.LASF104:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF841:
	.ascii	"pvPortMallocStack pvPortMalloc\000"
.LASF438:
	.ascii	"__ARM_FEATURE_IDIV\000"
.LASF574:
	.ascii	"__SEGGER_RTL_SMULL_HI(X,Y) __SEGGER_RTL_SMULL_HI_fu"
	.ascii	"nc((X), (Y))\000"
.LASF396:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF151:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF1239:
	.ascii	"xQueueGenericSend\000"
.LASF1115:
	.ascii	"xQueueReset(xQueue) xQueueGenericReset( xQueue, pdF"
	.ascii	"ALSE )\000"
.LASF958:
	.ascii	"portCONFIGURE_TIMER_FOR_RUN_TIME_STATS() \000"
.LASF1038:
	.ascii	"listGET_LIST_ITEM_OWNER(pxListItem) ( ( pxListItem "
	.ascii	")->pvOwner )\000"
.LASF405:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF1246:
	.ascii	"pxMutex\000"
.LASF1159:
	.ascii	"xOverflowCount\000"
.LASF120:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF556:
	.ascii	"__SEGGER_RTL_FORMAT_FLOAT_WIDTH __WIDTH_DOUBLE\000"
.LASF1088:
	.ascii	"vTaskNotifyGiveFromISR(xTaskToNotify,pxHigherPriori"
	.ascii	"tyTaskWoken) vTaskGenericNotifyGiveFromISR( ( xTask"
	.ascii	"ToNotify ), ( tskDEFAULT_INDEX_TO_NOTIFY ), ( pxHig"
	.ascii	"herPriorityTaskWoken ) );\000"
.LASF660:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF1086:
	.ascii	"xTaskNotifyGive(xTaskToNotify) xTaskGenericNotify( "
	.ascii	"( xTaskToNotify ), ( tskDEFAULT_INDEX_TO_NOTIFY ), "
	.ascii	"( 0 ), eIncrement, NULL )\000"
.LASF273:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF1034:
	.ascii	"listSET_LIST_INTEGRITY_CHECK_2_VALUE(pxList) \000"
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
.LASF892:
	.ascii	"traceCREATE_COUNTING_SEMAPHORE_FAILED() \000"
.LASF96:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF1203:
	.ascii	"xQueueIsQueueEmptyFromISR\000"
.LASF906:
	.ascii	"traceQUEUE_DELETE(pxQueue) \000"
.LASF580:
	.ascii	"__SEGGER_RTL_UMULL(L,H,X,Y) __SEGGER_RTL_UMULL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF253:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF1141:
	.ascii	"long unsigned int\000"
.LASF354:
	.ascii	"__SA_IBIT__ 16\000"
.LASF1186:
	.ascii	"Queue_t\000"
.LASF1222:
	.ascii	"xQueuePeekFromISR\000"
.LASF140:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF398:
	.ascii	"__ARM_FEATURE_MVE\000"
.LASF1049:
	.ascii	"listINSERT_END(pxList,pxNewListItem) { ListItem_t *"
	.ascii	" const pxIndex = ( pxList )->pxIndex; listTEST_LIST"
	.ascii	"_INTEGRITY( ( pxList ) ); listTEST_LIST_ITEM_INTEGR"
	.ascii	"ITY( ( pxNewListItem ) ); ( pxNewListItem )->pxNext"
	.ascii	" = pxIndex; ( pxNewListItem )->pxPrevious = pxIndex"
	.ascii	"->pxPrevious; pxIndex->pxPrevious->pxNext = ( pxNew"
	.ascii	"ListItem ); pxIndex->pxPrevious = ( pxNewListItem )"
	.ascii	"; ( pxNewListItem )->pxContainer = ( pxList ); ( ( "
	.ascii	"pxList )->uxNumberOfItems )++; }\000"
.LASF1261:
	.ascii	"C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio"
	.ascii	" for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0"
	.ascii	"_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\\FreeRTOS\\"
	.ascii	"Source\\queue.c\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF524:
	.ascii	"__SEGGER_RTL_CONFIG_CODE_COVERAGE 0\000"
.LASF637:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF643:
	.ascii	"UINT32_MAX 4294967295UL\000"
.LASF770:
	.ascii	"pdFREERTOS_ERRNO_ENOTDIR 20\000"
.LASF419:
	.ascii	"__SOFTFP__ 1\000"
.LASF502:
	.ascii	"__SEGGER_RTL_CORE_HAS_BLX_REG 1\000"
.LASF814:
	.ascii	"portDONT_DISCARD __attribute__( ( used ) )\000"
.LASF606:
	.ascii	"__SEGGER_RTL_HUGE_VALF __builtin_huge_valf()\000"
.LASF142:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF593:
	.ascii	"__SEGGER_RTL_CLZ_U32_SYNTHESIZED \000"
.LASF79:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF724:
	.ascii	"configTIMER_TASK_PRIORITY ( 2 )\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF798:
	.ascii	"pdBIG_ENDIAN pdFREERTOS_BIG_ENDIAN\000"
.LASF322:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF265:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF709:
	.ascii	"configQUEUE_REGISTRY_SIZE 8\000"
.LASF1120:
	.ascii	"uxQueueType pcHead\000"
.LASF349:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF98:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF597:
	.ascii	"__SEGGER_RTL_FILE_IMPL __SEGGER_RTL_FILE_impl\000"
.LASF1084:
	.ascii	"xTaskNotifyWait(ulBitsToClearOnEntry,ulBitsToClearO"
	.ascii	"nExit,pulNotificationValue,xTicksToWait) xTaskGener"
	.ascii	"icNotifyWait( tskDEFAULT_INDEX_TO_NOTIFY, ( ulBitsT"
	.ascii	"oClearOnEntry ), ( ulBitsToClearOnExit ), ( pulNoti"
	.ascii	"ficationValue ), ( xTicksToWait ) )\000"
.LASF434:
	.ascii	"__ARM_PCS 1\000"
.LASF1228:
	.ascii	"xEntryTimeSet\000"
.LASF930:
	.ascii	"traceEVENT_GROUP_CLEAR_BITS(xEventGroup,uxBitsToCle"
	.ascii	"ar) \000"
.LASF113:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF445:
	.ascii	"__ARM_FEATURE_BF16_VECTOR_ARITHMETIC\000"
.LASF392:
	.ascii	"__ARM_FEATURE_UNALIGNED\000"
.LASF1192:
	.ascii	"xTicksToWait\000"
.LASF873:
	.ascii	"traceTASK_SWITCHED_OUT() \000"
.LASF217:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF206:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF611:
	.ascii	"__SEGGER_RTL_CORE_HAS_UDIV_X 0\000"
.LASF1234:
	.ascii	"xQueueReceive\000"
.LASF123:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF691:
	.ascii	"WCHAR_MIN __WCHAR_MIN__\000"
.LASF804:
	.ascii	"portDOUBLE double\000"
.LASF500:
	.ascii	"__SEGGER_RTL_CORE_HAS_UXT_SXT 1\000"
.LASF374:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1\000"
.LASF852:
	.ascii	"INCLUDE_eTaskGetState 0\000"
.LASF589:
	.ascii	"__SEGGER_RTL_USE_PARA(Para) (void)Para\000"
.LASF164:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF1076:
	.ascii	"xTaskNotify(xTaskToNotify,ulValue,eAction) xTaskGen"
	.ascii	"ericNotify( ( xTaskToNotify ), ( tskDEFAULT_INDEX_T"
	.ascii	"O_NOTIFY ), ( ulValue ), ( eAction ), NULL )\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF728:
	.ascii	"INCLUDE_uxTaskPriorityGet 1\000"
.LASF248:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF145:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF1118:
	.ascii	"queueLOCKED_UNMODIFIED ( ( int8_t ) 0 )\000"
.LASF1030:
	.ascii	"listSECOND_LIST_INTEGRITY_CHECK_VALUE \000"
.LASF503:
	.ascii	"__SEGGER_RTL_CORE_HAS_LONG_SHIFT 0\000"
.LASF348:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF450:
	.ascii	"__SES_ARM 1\000"
.LASF1252:
	.ascii	"prvInitialiseMutex\000"
.LASF494:
	.ascii	"__SEGGER_RTL_CORE_HAS_PKHTB_PKHBT 0\000"
.LASF309:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF816:
	.ascii	"portNVIC_PENDSVSET_BIT ( 1UL << 28UL )\000"
.LASF1113:
	.ascii	"xQueueOverwriteFromISR(xQueue,pvItemToQueue,pxHighe"
	.ascii	"rPriorityTaskWoken) xQueueGenericSendFromISR( ( xQu"
	.ascii	"eue ), ( pvItemToQueue ), ( pxHigherPriorityTaskWok"
	.ascii	"en ), queueOVERWRITE )\000"
.LASF1211:
	.ascii	"xPosition\000"
.LASF820:
	.ascii	"portSET_INTERRUPT_MASK_FROM_ISR() ulSetInterruptMas"
	.ascii	"kFromISR()\000"
.LASF552:
	.ascii	"__SEGGER_RTL_SIZEOF_WCHAR_T __SIZEOF_WCHAR_T__\000"
.LASF1109:
	.ascii	"xQueueSend(xQueue,pvItemToQueue,xTicksToWait) xQueu"
	.ascii	"eGenericSend( ( xQueue ), ( pvItemToQueue ), ( xTic"
	.ascii	"ksToWait ), queueSEND_TO_BACK )\000"
.LASF654:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF492:
	.ascii	"__SEGGER_RTL_CORE_HAS_UQADD_UQSUB 0\000"
.LASF1016:
	.ascii	"pxContainer pvContainer\000"
.LASF1251:
	.ascii	"uxMutexSize\000"
.LASF99:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF194:
	.ascii	"__FLT16_MIN_10_EXP__ (-4)\000"
.LASF803:
	.ascii	"portFLOAT float\000"
.LASF287:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF765:
	.ascii	"pdFREERTOS_ERRNO_EFAULT 14\000"
.LASF1108:
	.ascii	"xQueueSendToBack(xQueue,pvItemToQueue,xTicksToWait)"
	.ascii	" xQueueGenericSend( ( xQueue ), ( pvItemToQueue ), "
	.ascii	"( xTicksToWait ), queueSEND_TO_BACK )\000"
.LASF433:
	.ascii	"__ARM_ARCH_6M__ 1\000"
.LASF5:
	.ascii	"__GNUC__ 10\000"
.LASF642:
	.ascii	"UINT16_MAX 65535\000"
.LASF707:
	.ascii	"configUSE_MUTEXES 1\000"
.LASF515:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_COMPACT 2\000"
.LASF207:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF995:
	.ascii	"xQueueHandle QueueHandle_t\000"
.LASF82:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF894:
	.ascii	"traceQUEUE_SEND(pxQueue) \000"
.LASF549:
	.ascii	"__SEGGER_RTL_SIZE_T __SIZE_TYPE__\000"
.LASF306:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF1178:
	.ascii	"QueuePointers_t\000"
.LASF270:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF74:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF1057:
	.ascii	"tskKERNEL_VERSION_BUILD 6\000"
.LASF575:
	.ascii	"__SEGGER_RTL_SMULL_HI_SYNTHESIZED \000"
.LASF157:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF506:
	.ascii	"__SEGGER_RTL_FLOAT32_C_COMPLEX float _Complex\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 1\000"
.LASF318:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF410:
	.ascii	"__ARM_ARCH 6\000"
.LASF1125:
	.ascii	"prvLockQueue(pxQueue) taskENTER_CRITICAL(); { if( ("
	.ascii	" pxQueue )->cRxLock == queueUNLOCKED ) { ( pxQueue "
	.ascii	")->cRxLock = queueLOCKED_UNMODIFIED; } if( ( pxQueu"
	.ascii	"e )->cTxLock == queueUNLOCKED ) { ( pxQueue )->cTxL"
	.ascii	"ock = queueLOCKED_UNMODIFIED; } } taskEXIT_CRITICAL"
	.ascii	"()\000"
.LASF1233:
	.ascii	"uxHighestWaitingPriority\000"
.LASF144:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF1129:
	.ascii	"long long int\000"
.LASF1070:
	.ascii	"taskDISABLE_INTERRUPTS() portDISABLE_INTERRUPTS()\000"
.LASF399:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF372:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 1\000"
.LASF757:
	.ascii	"pdFREERTOS_ERRNO_EINTR 4\000"
.LASF190:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF1240:
	.ascii	"xYieldRequired\000"
.LASF615:
	.ascii	"__SEGGER_RTL_VERSION 23000\000"
.LASF83:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF187:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF701:
	.ascii	"configTOTAL_HEAP_SIZE ( ( size_t ) ( 6500 ) )\000"
.LASF743:
	.ascii	"pdMS_TO_TICKS(xTimeInMs) ( ( TickType_t ) ( ( ( Tic"
	.ascii	"kType_t ) ( xTimeInMs ) * ( TickType_t ) configTICK"
	.ascii	"_RATE_HZ ) / ( TickType_t ) 1000U ) )\000"
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
.LASF754:
	.ascii	"pdINTEGRITY_CHECK_VALUE 0x5a5a5a5aUL\000"
.LASF812:
	.ascii	"portTICK_PERIOD_MS ( ( TickType_t ) 1000 / configTI"
	.ascii	"CK_RATE_HZ )\000"
.LASF133:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF551:
	.ascii	"__SEGGER_RTL_WCHAR_T __WCHAR_TYPE__\000"
.LASF667:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF225:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF898:
	.ascii	"traceQUEUE_PEEK_FAILED(pxQueue) \000"
.LASF167:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF1237:
	.ascii	"xCopyPosition\000"
.LASF548:
	.ascii	"__SEGGER_RTL_PTRDIFF_T __PTRDIFF_TYPE__\000"
.LASF1053:
	.ascii	"listLIST_IS_INITIALISED(pxList) ( ( pxList )->xList"
	.ascii	"End.xItemValue == portMAX_DELAY )\000"
.LASF941:
	.ascii	"traceTASK_NOTIFY_WAIT(uxIndexToWait) \000"
.LASF406:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF755:
	.ascii	"pdFREERTOS_ERRNO_NONE 0\000"
.LASF185:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF192:
	.ascii	"__FLT16_DIG__ 3\000"
.LASF385:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF1148:
	.ascii	"xLIST_ITEM\000"
.LASF789:
	.ascii	"pdFREERTOS_ERRNO_EADDRNOTAVAIL 125\000"
.LASF139:
	.ascii	"__GCC_IEC_559 0\000"
.LASF1098:
	.ascii	"queueSEND_TO_FRONT ( ( BaseType_t ) 1 )\000"
.LASF1235:
	.ascii	"xQueueGiveFromISR\000"
.LASF904:
	.ascii	"traceQUEUE_RECEIVE_FROM_ISR_FAILED(pxQueue) \000"
.LASF236:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF244:
	.ascii	"__FLT32X_NORM_MAX__ 1.1\000"
.LASF1140:
	.ascii	"UBaseType_t\000"
.LASF1174:
	.ascii	"ucQueueType\000"
.LASF269:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF818:
	.ascii	"portEND_SWITCHING_ISR(xSwitchRequired) do { if( xSw"
	.ascii	"itchRequired ) portNVIC_INT_CTRL_REG = portNVIC_PEN"
	.ascii	"DSVSET_BIT; } while( 0 )\000"
.LASF991:
	.ascii	"configMIN(a,b) ( ( ( a ) < ( b ) ) ? ( a ) : ( b ) "
	.ascii	")\000"
.LASF195:
	.ascii	"__FLT16_MAX_EXP__ 16\000"
.LASF778:
	.ascii	"pdFREERTOS_ERRNO_EFTYPE 79\000"
.LASF714:
	.ascii	"configUSE_MALLOC_FAILED_HOOK 0\000"
.LASF252:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF540:
	.ascii	"__SEGGER_RTL_LEAST_I8 int\000"
.LASF763:
	.ascii	"pdFREERTOS_ERRNO_ENOMEM 12\000"
.LASF680:
	.ascii	"INT8_C(x) (x)\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF819:
	.ascii	"portYIELD_FROM_ISR(x) portEND_SWITCHING_ISR( x )\000"
.LASF431:
	.ascii	"__ARM_NEON_FP\000"
.LASF1019:
	.ascii	"configENABLE_FPU 1\000"
.LASF767:
	.ascii	"pdFREERTOS_ERRNO_EEXIST 17\000"
.LASF806:
	.ascii	"portSHORT short\000"
.LASF811:
	.ascii	"portSTACK_GROWTH ( -1 )\000"
.LASF674:
	.ascii	"SIZE_MAX INT32_MAX\000"
.LASF1069:
	.ascii	"taskEXIT_CRITICAL_FROM_ISR(x) portCLEAR_INTERRUPT_M"
	.ascii	"ASK_FROM_ISR( x )\000"
.LASF996:
	.ascii	"xSemaphoreHandle SemaphoreHandle_t\000"
.LASF397:
	.ascii	"__ARM_32BIT_STATE\000"
.LASF266:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF1024:
	.ascii	"INC_TASK_H \000"
.LASF347:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF156:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF1168:
	.ascii	"uxMessagesWaiting\000"
.LASF180:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF708:
	.ascii	"configUSE_COUNTING_SEMAPHORES 1\000"
.LASF640:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF198:
	.ascii	"__FLT16_MAX__ 1.1\000"
.LASF744:
	.ascii	"pdFALSE ( ( BaseType_t ) 0 )\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF997:
	.ascii	"xQueueSetHandle QueueSetHandle_t\000"
.LASF243:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF189:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF513:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_IEEE 0\000"
.LASF1127:
	.ascii	"unsigned int\000"
.LASF511:
	.ascii	"__SEGGER_RTL_X_assert __aeabi_assert\000"
.LASF412:
	.ascii	"__GCC_ASM_FLAG_OUTPUTS__\000"
.LASF648:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF205:
	.ascii	"__FLT16_HAS_QUIET_NAN__ 1\000"
.LASF147:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF143:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF802:
	.ascii	"portCHAR char\000"
.LASF297:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF532:
	.ascii	"__SEGGER_RTL_U16 unsigned short\000"
.LASF1172:
	.ascii	"cTxLock\000"
.LASF1179:
	.ascii	"SemaphoreData\000"
.LASF146:
	.ascii	"__FLT_DIG__ 6\000"
.LASF301:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF1146:
	.ascii	"pvOwner\000"
.LASF366:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF689:
	.ascii	"UINTMAX_C(x) (x ##uLL)\000"
.LASF962:
	.ascii	"configUSE_TICKLESS_IDLE 0\000"
.LASF439:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF1091:
	.ascii	"ulTaskNotifyTakeIndexed(uxIndexToWaitOn,xClearCount"
	.ascii	"OnExit,xTicksToWait) ulTaskGenericNotifyTake( ( uxI"
	.ascii	"ndexToWaitOn ), ( xClearCountOnExit ), ( xTicksToWa"
	.ascii	"it ) )\000"
.LASF633:
	.ascii	"INT8_MIN (-128)\000"
.LASF1150:
	.ascii	"uxNumberOfItems\000"
.LASF68:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF125:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF414:
	.ascii	"__thumb2__\000"
.LASF786:
	.ascii	"pdFREERTOS_ERRNO_ETIMEDOUT 116\000"
.LASF400:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF341:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF745:
	.ascii	"pdTRUE ( ( BaseType_t ) 1 )\000"
.LASF193:
	.ascii	"__FLT16_MIN_EXP__ (-13)\000"
.LASF519:
	.ascii	"__WIDTH_NONE 0\000"
.LASF965:
	.ascii	"configPOST_SLEEP_PROCESSING(x) \000"
.LASF274:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF387:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF275:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF862:
	.ascii	"portSOFTWARE_BARRIER() \000"
.LASF616:
	.ascii	"__SEGGER_RTL_MAX_CATEGORY 5\000"
.LASF465:
	.ascii	"__SEGGER_RTL_ISA_T16 0\000"
.LASF1157:
	.ascii	"TaskHandle_t\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF169:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF1077:
	.ascii	"xTaskNotifyIndexed(xTaskToNotify,uxIndexToNotify,ul"
	.ascii	"Value,eAction) xTaskGenericNotify( ( xTaskToNotify "
	.ascii	"), ( uxIndexToNotify ), ( ulValue ), ( eAction ), N"
	.ascii	"ULL )\000"
.LASF555:
	.ascii	"__SEGGER_RTL_FORMAT_INT_WIDTH __WIDTH_LONG_LONG\000"
.LASF1200:
	.ascii	"pcQueueGetName\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF762:
	.ascii	"pdFREERTOS_ERRNO_EWOULDBLOCK 11\000"
.LASF888:
	.ascii	"traceGIVE_MUTEX_RECURSIVE_FAILED(pxMutex) \000"
.LASF1074:
	.ascii	"taskSCHEDULER_RUNNING ( ( BaseType_t ) 2 )\000"
.LASF80:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF1156:
	.ascii	"List_t\000"
.LASF1165:
	.ascii	"pcWriteTo\000"
.LASF893:
	.ascii	"traceQUEUE_SET_SEND traceQUEUE_SEND\000"
.LASF766:
	.ascii	"pdFREERTOS_ERRNO_EBUSY 16\000"
.LASF361:
	.ascii	"__USA_FBIT__ 16\000"
.LASF1207:
	.ascii	"prvCopyDataFromQueue\000"
.LASF238:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF479:
	.ascii	"__SEGGER_RTL_FP_ABI\000"
.LASF159:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF373:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 1\000"
.LASF622:
	.ascii	"__SEGGER_RTL_LOCALE_T_DEFINED \000"
.LASF1063:
	.ascii	"tskDEFAULT_INDEX_TO_NOTIFY ( 0 )\000"
.LASF815:
	.ascii	"portNVIC_INT_CTRL_REG ( *( ( volatile uint32_t * ) "
	.ascii	"0xe000ed04 ) )\000"
.LASF828:
	.ascii	"portTASK_FUNCTION(vFunction,pvParameters) void vFun"
	.ascii	"ction( void * pvParameters )\000"
.LASF485:
	.ascii	"__SEGGER_RTL_UNLIKELY(X) __builtin_expect((X), 0)\000"
.LASF1198:
	.ascii	"vQueueAddToRegistry\000"
.LASF905:
	.ascii	"traceQUEUE_PEEK_FROM_ISR_FAILED(pxQueue) \000"
.LASF919:
	.ascii	"traceTIMER_COMMAND_SEND(xTimer,xMessageID,xMessageV"
	.ascii	"alueValue,xReturn) \000"
.LASF168:
	.ascii	"__DBL_NORM_MAX__ ((double)1.1)\000"
.LASF404:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF496:
	.ascii	"__SEGGER_RTL_CORE_HAS_MOVW_MOVT 0\000"
.LASF1134:
	.ascii	"unsigned char\000"
.LASF903:
	.ascii	"traceQUEUE_RECEIVE_FROM_ISR(pxQueue) \000"
.LASF408:
	.ascii	"__arm__ 1\000"
.LASF487:
	.ascii	"__SEGGER_RTL_NEVER_INLINE __attribute__((__noinline"
	.ascii	"__, __noclone__))\000"
.LASF876:
	.ascii	"traceBLOCKING_ON_QUEUE_RECEIVE(pxQueue) \000"
.LASF1152:
	.ascii	"xListEnd\000"
.LASF1090:
	.ascii	"ulTaskNotifyTake(xClearCountOnExit,xTicksToWait) ul"
	.ascii	"TaskGenericNotifyTake( ( tskDEFAULT_INDEX_TO_NOTIFY"
	.ascii	" ), ( xClearCountOnExit ), ( xTicksToWait ) )\000"
.LASF1045:
	.ascii	"listLIST_IS_EMPTY(pxList) ( ( ( pxList )->uxNumberO"
	.ascii	"fItems == ( UBaseType_t ) 0 ) ? pdTRUE : pdFALSE )\000"
.LASF915:
	.ascii	"traceTASK_RESUME_FROM_ISR(pxTaskToResume) \000"
.LASF209:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF497:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIV 0\000"
.LASF1264:
	.ascii	"xQueueRegistry\000"
.LASF538:
	.ascii	"__SEGGER_RTL_LEAST_I16 int\000"
.LASF423:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF1229:
	.ascii	"xTimeOut\000"
.LASF908:
	.ascii	"traceTASK_CREATE_FAILED() \000"
.LASF638:
	.ascii	"INT32_MAX 2147483647L\000"
.LASF1206:
	.ascii	"prvUnlockQueue\000"
.LASF878:
	.ascii	"traceBLOCKING_ON_QUEUE_SEND(pxQueue) \000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF884:
	.ascii	"traceQUEUE_CREATE_FAILED(ucQueueType) \000"
.LASF298:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF651:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF813:
	.ascii	"portBYTE_ALIGNMENT 8\000"
.LASF727:
	.ascii	"INCLUDE_vTaskPrioritySet 1\000"
.LASF358:
	.ascii	"__TA_IBIT__ 64\000"
.LASF733:
	.ascii	"INCLUDE_vTaskDelay 1\000"
.LASF1124:
	.ascii	"queueYIELD_IF_USING_PREEMPTION() portYIELD_WITHIN_A"
	.ascii	"PI()\000"
.LASF824:
	.ascii	"portENTER_CRITICAL() vPortEnterCritical()\000"
.LASF913:
	.ascii	"traceTASK_SUSPEND(pxTaskToSuspend) \000"
.LASF1250:
	.ascii	"uxMutexLength\000"
.LASF949:
	.ascii	"traceSTREAM_BUFFER_RESET(xStreamBuffer) \000"
.LASF393:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF768:
	.ascii	"pdFREERTOS_ERRNO_EXDEV 18\000"
.LASF528:
	.ascii	"__SEGGER_RTL_U64 unsigned long long\000"
.LASF1075:
	.ascii	"vTaskDelayUntil(pxPreviousWakeTime,xTimeIncrement) "
	.ascii	"{ ( void ) xTaskDelayUntil( pxPreviousWakeTime, xTi"
	.ascii	"meIncrement ); }\000"
.LASF522:
	.ascii	"__SEGGER_RTL_SIDE_BY_SIDE 0\000"
.LASF1106:
	.ascii	"xQueueCreate(uxQueueLength,uxItemSize) xQueueGeneri"
	.ascii	"cCreate( ( uxQueueLength ), ( uxItemSize ), ( queue"
	.ascii	"QUEUE_TYPE_BASE ) )\000"
.LASF72:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF1183:
	.ascii	"xQueue\000"
.LASF191:
	.ascii	"__FLT16_MANT_DIG__ 11\000"
.LASF85:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF668:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF881:
	.ascii	"traceMOVED_TASK_TO_READY_STATE(pxTCB) \000"
.LASF603:
	.ascii	"__SEGGER_RTL_INFINITY __builtin_inff()\000"
.LASF907:
	.ascii	"traceTASK_CREATE(pxNewTCB) \000"
.LASF267:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF428:
	.ascii	"__ARM_FEATURE_FMA\000"
.LASF105:
	.ascii	"__INT8_C(c) c\000"
.LASF272:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF488:
	.ascii	"__SEGGER_RTL_ALWAYS_INLINE __inline__ __attribute__"
	.ascii	"((__always_inline__))\000"
.LASF721:
	.ascii	"configUSE_CO_ROUTINES 0\000"
.LASF687:
	.ascii	"UINT64_C(x) (x ##uLL)\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 1\000"
.LASF162:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF975:
	.ascii	"configAPPLICATION_ALLOCATED_HEAP 0\000"
.LASF843:
	.ascii	"configUSE_NEWLIB_REENTRANT 0\000"
.LASF562:
	.ascii	"__SEGGER_RTL_MINIMAL_LOCALE 0\000"
.LASF595:
	.ascii	"__SEGGER_RTL_CLZ_U64_SYNTHESIZED \000"
.LASF464:
	.ascii	"__SEGGER_RTL_ARM_CONF_H \000"
.LASF621:
	.ascii	"__SEGGER_RTL_WCHAR_T_DEFINED \000"
.LASF664:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF671:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF567:
	.ascii	"__SEGGER_RTL_BitcastToF32(X) __SEGGER_RTL_BitcastTo"
	.ascii	"F32_inline(X)\000"
.LASF871:
	.ascii	"traceLOW_POWER_IDLE_BEGIN() \000"
.LASF772:
	.ascii	"pdFREERTOS_ERRNO_EINVAL 22\000"
.LASF746:
	.ascii	"pdPASS ( pdTRUE )\000"
.LASF188:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF383:
	.ascii	"__HAVE_SPECULATION_SAFE_VALUE 1\000"
.LASF291:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF1263:
	.ascii	"tskTaskControlBlock\000"
.LASF477:
	.ascii	"__SEGGER_RTL_FP_HW 0\000"
.LASF937:
	.ascii	"traceQUEUE_REGISTRY_ADD(xQueue,pcQueueName) \000"
.LASF896:
	.ascii	"traceQUEUE_RECEIVE(pxQueue) \000"
.LASF825:
	.ascii	"portEXIT_CRITICAL() vPortExitCritical()\000"
.LASF303:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF944:
	.ascii	"traceTASK_NOTIFY_GIVE_FROM_ISR(uxIndexToNotify) \000"
.LASF391:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF998:
	.ascii	"xQueueSetMemberHandle QueueSetMemberHandle_t\000"
.LASF999:
	.ascii	"xTimeOutType TimeOut_t\000"
.LASF911:
	.ascii	"traceTASK_DELAY() \000"
.LASF918:
	.ascii	"traceTIMER_CREATE_FAILED() \000"
.LASF761:
	.ascii	"pdFREERTOS_ERRNO_EAGAIN 11\000"
.LASF830:
	.ascii	"portMEMORY_BARRIER() __asm volatile ( \"\" ::: \"me"
	.ascii	"mory\" )\000"
.LASF416:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF122:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF1025:
	.ascii	"LIST_H \000"
.LASF262:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF933:
	.ascii	"traceEVENT_GROUP_SET_BITS_FROM_ISR(xEventGroup,uxBi"
	.ascii	"tsToSet) \000"
.LASF982:
	.ascii	"configMESSAGE_BUFFER_LENGTH_TYPE size_t\000"
.LASF559:
	.ascii	"__SEGGER_RTL_FORMAT_CHAR_CLASS 1\000"
.LASF758:
	.ascii	"pdFREERTOS_ERRNO_EIO 5\000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF512:
	.ascii	"__SEGGER_RTL_X_errno_addr __aeabi_errno_addr\000"
.LASF196:
	.ascii	"__FLT16_MAX_10_EXP__ 4\000"
.LASF148:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF649:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF317:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF653:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF69:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF736:
	.ascii	"INCLUDE_xTaskGetCurrentTaskHandle 1\000"
.LASF330:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF411:
	.ascii	"__APCS_32__ 1\000"
.LASF337:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF879:
	.ascii	"configRECORD_STACK_HIGH_ADDRESS 0\000"
.LASF821:
	.ascii	"portCLEAR_INTERRUPT_MASK_FROM_ISR(x) vClearInterrup"
	.ascii	"tMaskFromISR( x )\000"
.LASF344:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF857:
	.ascii	"portCRITICAL_NESTING_IN_TCB 0\000"
.LASF592:
	.ascii	"__SEGGER_RTL_CLZ_U32(X) __SEGGER_RTL_CLZ_U32_inline"
	.ascii	"(X)\000"
.LASF529:
	.ascii	"__SEGGER_RTL_I64 long long\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF921:
	.ascii	"traceTIMER_COMMAND_RECEIVED(pxTimer,xMessageID,xMes"
	.ascii	"sageValue) \000"
.LASF293:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF279:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF809:
	.ascii	"portMAX_DELAY ( TickType_t ) 0xffffffffUL\000"
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
.LASF942:
	.ascii	"traceTASK_NOTIFY(uxIndexToNotify) \000"
.LASF747:
	.ascii	"pdFAIL ( pdFALSE )\000"
.LASF154:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF1244:
	.ascii	"xQueueTakeMutexRecursive\000"
.LASF199:
	.ascii	"__FLT16_NORM_MAX__ 1.1\000"
.LASF808:
	.ascii	"portBASE_TYPE long\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF1145:
	.ascii	"pxPrevious\000"
.LASF126:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF564:
	.ascii	"__SEGGER_RTL_ATEXIT_COUNT 1\000"
.LASF534:
	.ascii	"__SEGGER_RTL_U8 unsigned char\000"
.LASF985:
	.ascii	"portTICK_TYPE_EXIT_CRITICAL() \000"
.LASF319:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF553:
	.ascii	"__SEGGER_RTL_SIZEOF_LDOUBLE 8\000"
.LASF837:
	.ascii	"MPU_WRAPPERS_H \000"
.LASF946:
	.ascii	"traceSTREAM_BUFFER_CREATE_STATIC_FAILED(xReturn,xIs"
	.ascii	"MessageBuffer) \000"
.LASF800:
	.ascii	"DEPRECATED_DEFINITIONS_H \000"
.LASF1142:
	.ascii	"TickType_t\000"
.LASF278:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF1028:
	.ascii	"listSECOND_LIST_ITEM_INTEGRITY_CHECK_VALUE \000"
.LASF1167:
	.ascii	"xTasksWaitingToReceive\000"
.LASF338:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF634:
	.ascii	"INT8_MAX 127\000"
.LASF446:
	.ascii	"__ARM_BF16_FORMAT_ALTERNATIVE\000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF116:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF673:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF1214:
	.ascii	"ucQueueGetQueueType\000"
.LASF704:
	.ascii	"configUSE_16_BIT_TICKS 0\000"
.LASF629:
	.ascii	"INC_FREERTOS_H \000"
.LASF612:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIV_X 0\000"
.LASF545:
	.ascii	"__SEGGER_RTL_SIZEOF_INT 4\000"
.LASF1182:
	.ascii	"SemaphoreData_t\000"
.LASF546:
	.ascii	"__SEGGER_RTL_SIZEOF_LONG 4\000"
.LASF1230:
	.ascii	"xQueueSemaphoreTake\000"
.LASF777:
	.ascii	"pdFREERTOS_ERRNO_EBADE 50\000"
.LASF886:
	.ascii	"traceCREATE_MUTEX_FAILED() \000"
.LASF1116:
	.ascii	"MPU_WRAPPERS_INCLUDED_FROM_API_FILE\000"
.LASF659:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF936:
	.ascii	"tracePEND_FUNC_CALL_FROM_ISR(xFunctionToPend,pvPara"
	.ascii	"meter1,ulParameter2,ret) \000"
.LASF885:
	.ascii	"traceCREATE_MUTEX(pxNewQueue) \000"
.LASF1103:
	.ascii	"queueQUEUE_TYPE_COUNTING_SEMAPHORE ( ( uint8_t ) 2U"
	.ascii	" )\000"
.LASF1072:
	.ascii	"taskSCHEDULER_SUSPENDED ( ( BaseType_t ) 0 )\000"
.LASF350:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF353:
	.ascii	"__SA_FBIT__ 15\000"
.LASF285:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF505:
	.ascii	"__SEGGER_RTL_USE_FPU_FOR_IDIV 0\000"
.LASF1236:
	.ascii	"xQueueGenericSendFromISR\000"
.LASF1006:
	.ascii	"portTICK_RATE_MS portTICK_PERIOD_MS\000"
.LASF435:
	.ascii	"__ARM_EABI__ 1\000"
.LASF590:
	.ascii	"__SEGGER_RTL_SIDE_BY_SIZE 0\000"
.LASF517:
	.ascii	"__WIDTH_LONG 1\000"
.LASF448:
	.ascii	"__ELF__ 1\000"
.LASF415:
	.ascii	"__THUMBEL__ 1\000"
.LASF628:
	.ascii	"MPU_WRAPPERS_INCLUDED_FROM_API_FILE \000"
.LASF963:
	.ascii	"configPRE_SUPPRESS_TICKS_AND_SLEEP_PROCESSING(x) \000"
.LASF620:
	.ascii	"__SEGGER_RTL_SIZE_T_DEFINED \000"
.LASF332:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF739:
	.ascii	"vPortSVCHandler SVC_Handler\000"
.LASF647:
	.ascii	"UINTMAX_MAX UINT64_MAX\000"
.LASF756:
	.ascii	"pdFREERTOS_ERRNO_ENOENT 2\000"
.LASF1013:
	.ascii	"pdTASK_CODE TaskFunction_t\000"
.LASF607:
	.ascii	"__SEGGER_RTL_HIDE(X) __c_ ##X\000"
.LASF856:
	.ascii	"configUSE_ALTERNATIVE_API 0\000"
.LASF215:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF1249:
	.ascii	"xNewQueue\000"
.LASF891:
	.ascii	"traceCREATE_COUNTING_SEMAPHORE() \000"
.LASF346:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF961:
	.ascii	"configEXPECTED_IDLE_TIME_BEFORE_SLEEP 2\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF1245:
	.ascii	"xMutex\000"
.LASF402:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF417:
	.ascii	"__ARM_ARCH_ISA_THUMB 1\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 1\000"
.LASF983:
	.ascii	"configINITIAL_TICK_COUNT 0\000"
.LASF1218:
	.ascii	"uxQueueMessagesWaitingFromISR\000"
.LASF1096:
	.ascii	"QUEUE_H \000"
.LASF1080:
	.ascii	"xTaskNotifyFromISR(xTaskToNotify,ulValue,eAction,px"
	.ascii	"HigherPriorityTaskWoken) xTaskGenericNotifyFromISR("
	.ascii	" ( xTaskToNotify ), ( tskDEFAULT_INDEX_TO_NOTIFY ),"
	.ascii	" ( ulValue ), ( eAction ), NULL, ( pxHigherPriority"
	.ascii	"TaskWoken ) )\000"
.LASF561:
	.ascii	"__SEGGER_RTL_FORMAT_WIDTH_PRECISION\000"
.LASF631:
	.ascii	"offsetof(s,m) ((size_t)&(((s *)0)->m))\000"
.LASF947:
	.ascii	"traceSTREAM_BUFFER_CREATE(pxStreamBuffer,xIsMessage"
	.ascii	"Buffer) \000"
.LASF890:
	.ascii	"traceTAKE_MUTEX_RECURSIVE_FAILED(pxMutex) \000"
.LASF456:
	.ascii	"STM32G071xx 1\000"
.LASF618:
	.ascii	"__SEGGER_RTL_SIZE_MAX 4294967295uL\000"
.LASF425:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF805:
	.ascii	"portLONG long\000"
.LASF300:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF174:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF1051:
	.ascii	"listIS_CONTAINED_WITHIN(pxList,pxListItem) ( ( ( px"
	.ascii	"ListItem )->pxContainer == ( pxList ) ) ? ( pdTRUE "
	.ascii	") : ( pdFALSE ) )\000"
.LASF560:
	.ascii	"__SEGGER_RTL_FORMAT_INT_WIDTH\000"
.LASF713:
	.ascii	"configUSE_RECURSIVE_MUTEXES 1\000"
.LASF284:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF630:
	.ascii	"__SEGGER_RTL_STDDEF_H \000"
.LASF823:
	.ascii	"portENABLE_INTERRUPTS() __asm volatile ( \" cpsie i"
	.ascii	" \" ::: \"memory\" )\000"
.LASF730:
	.ascii	"INCLUDE_vTaskCleanUpResources 1\000"
.LASF294:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF935:
	.ascii	"tracePEND_FUNC_CALL(xFunctionToPend,pvParameter1,ul"
	.ascii	"Parameter2,ret) \000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF1035:
	.ascii	"listTEST_LIST_ITEM_INTEGRITY(pxItem) \000"
.LASF901:
	.ascii	"traceQUEUE_SEND_FROM_ISR(pxQueue) \000"
.LASF367:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF1036:
	.ascii	"listTEST_LIST_INTEGRITY(pxList) \000"
.LASF161:
	.ascii	"__DBL_DIG__ 15\000"
.LASF280:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF508:
	.ascii	"__SEGGER_RTL_LDOUBLE_C_COMPLEX long double _Complex"
	.ascii	"\000"
.LASF690:
	.ascii	"WCHAR_MAX __WCHAR_MAX__\000"
.LASF153:
	.ascii	"__FLT_NORM_MAX__ 1.1\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF711:
	.ascii	"configUSE_TIME_SLICING 1\000"
.LASF1149:
	.ascii	"xLIST\000"
.LASF525:
	.ascii	"__SEGGER_RTL_INCLUDE_GNU_API 0\000"
.LASF114:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF1226:
	.ascii	"pxHigherPriorityTaskWoken\000"
.LASF882:
	.ascii	"tracePOST_MOVED_TASK_TO_READY_STATE(pxTCB) \000"
.LASF178:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF844:
	.ascii	"INCLUDE_xTaskDelayUntil INCLUDE_vTaskDelayUntil\000"
.LASF495:
	.ascii	"__SEGGER_RTL_CORE_HAS_ADDW_SUBW 0\000"
.LASF1123:
	.ascii	"queueMUTEX_GIVE_BLOCK_TIME ( ( TickType_t ) 0U )\000"
.LASF71:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF542:
	.ascii	"__SEGGER_RTL_U32_C(X) X ##u\000"
.LASF441:
	.ascii	"__ARM_FEATURE_CDE\000"
.LASF302:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF1002:
	.ascii	"xTaskStatusType TaskStatus_t\000"
.LASF460:
	.ascii	"__SEGGER_RTL_STDLIB_H \000"
.LASF571:
	.ascii	"__SEGGER_RTL_SMULL_X_SYNTHESIZED \000"
.LASF1258:
	.ascii	"xQueueSizeInBytes\000"
.LASF1262:
	.ascii	"C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio"
	.ascii	" for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0"
	.ascii	"_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\000"
.LASF1224:
	.ascii	"pcOriginalReadPosition\000"
.LASF666:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF912:
	.ascii	"traceTASK_PRIORITY_SET(pxTask,uxNewPriority) \000"
.LASF1135:
	.ascii	"short int\000"
.LASF889:
	.ascii	"traceTAKE_MUTEX_RECURSIVE(pxMutex) \000"
.LASF970:
	.ascii	"portASSERT_IF_INTERRUPT_PRIORITY_INVALID() \000"
.LASF119:
	.ascii	"__UINT16_C(c) c\000"
.LASF364:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF453:
	.ascii	"__SEGGER_LINKER 1\000"
.LASF897:
	.ascii	"traceQUEUE_PEEK(pxQueue) \000"
.LASF370:
	.ascii	"__NO_INLINE__ 1\000"
.LASF706:
	.ascii	"configUSE_TASK_NOTIFICATIONS 1\000"
.LASF478:
	.ascii	"__SEGGER_RTL_FP_HW\000"
.LASF1021:
	.ascii	"configRUN_FREERTOS_SECURE_ONLY 0\000"
.LASF783:
	.ascii	"pdFREERTOS_ERRNO_ENOBUFS 105\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF771:
	.ascii	"pdFREERTOS_ERRNO_EISDIR 21\000"
.LASF440:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF1047:
	.ascii	"listGET_OWNER_OF_NEXT_ENTRY(pxTCB,pxList) { List_t "
	.ascii	"* const pxConstList = ( pxList ); ( pxConstList )->"
	.ascii	"pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( v"
	.ascii	"oid * ) ( pxConstList )->pxIndex == ( void * ) &( ("
	.ascii	" pxConstList )->xListEnd ) ) { ( pxConstList )->pxI"
	.ascii	"ndex = ( pxConstList )->pxIndex->pxNext; } ( pxTCB "
	.ascii	") = ( pxConstList )->pxIndex->pvOwner; }\000"
.LASF173:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF826:
	.ascii	"portSUPPRESS_TICKS_AND_SLEEP(xExpectedIdleTime) vPo"
	.ascii	"rtSuppressTicksAndSleep( xExpectedIdleTime )\000"
.LASF93:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF1213:
	.ascii	"uxHighestPriorityOfWaitingTasks\000"
.LASF221:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF1220:
	.ascii	"uxQueueSpacesAvailable\000"
.LASF1185:
	.ascii	"xQUEUE\000"
.LASF924:
	.ascii	"traceEVENT_GROUP_CREATE(xEventGroup) \000"
.LASF792:
	.ascii	"pdFREERTOS_ERRNO_ENOMEDIUM 135\000"
.LASF1087:
	.ascii	"xTaskNotifyGiveIndexed(xTaskToNotify,uxIndexToNotif"
	.ascii	"y) xTaskGenericNotify( ( xTaskToNotify ), ( uxIndex"
	.ascii	"ToNotify ), ( 0 ), eIncrement, NULL )\000"
.LASF974:
	.ascii	"configUSE_PORT_OPTIMISED_TASK_SELECTION 0\000"
.LASF1114:
	.ascii	"xQueueSendFromISR(xQueue,pvItemToQueue,pxHigherPrio"
	.ascii	"rityTaskWoken) xQueueGenericSendFromISR( ( xQueue )"
	.ascii	", ( pvItemToQueue ), ( pxHigherPriorityTaskWoken ),"
	.ascii	" queueSEND_TO_BACK )\000"
.LASF579:
	.ascii	"__SEGGER_RTL_SMULL_SYNTHESIZED \000"
.LASF794:
	.ascii	"pdFREERTOS_ERRNO_ECANCELED 140\000"
.LASF594:
	.ascii	"__SEGGER_RTL_CLZ_U64(X) __SEGGER_RTL_CLZ_U64_inline"
	.ascii	"(X)\000"
.LASF455:
	.ascii	"__STM32G0xx_FAMILY 1\000"
.LASF1101:
	.ascii	"queueQUEUE_TYPE_SET ( ( uint8_t ) 0U )\000"
.LASF467:
	.ascii	"__SEGGER_RTL_ISA_ARM 2\000"
.LASF662:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF249:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF655:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF899:
	.ascii	"traceQUEUE_PEEK_FROM_ISR(pxQueue) \000"
.LASF883:
	.ascii	"traceQUEUE_CREATE(pxNewQueue) \000"
.LASF678:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF97:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF290:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF1081:
	.ascii	"xTaskNotifyIndexedFromISR(xTaskToNotify,uxIndexToNo"
	.ascii	"tify,ulValue,eAction,pxHigherPriorityTaskWoken) xTa"
	.ascii	"skGenericNotifyFromISR( ( xTaskToNotify ), ( uxInde"
	.ascii	"xToNotify ), ( ulValue ), ( eAction ), NULL, ( pxHi"
	.ascii	"gherPriorityTaskWoken ) )\000"
.LASF627:
	.ascii	"__SEGGER_RTL_STRING_H \000"
.LASF81:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF952:
	.ascii	"traceSTREAM_BUFFER_SEND_FAILED(xStreamBuffer) \000"
.LASF213:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF853:
	.ascii	"INCLUDE_xTimerPendFunctionCall 0\000"
.LASF866:
	.ascii	"portPOINTER_SIZE_TYPE uint32_t\000"
.LASF938:
	.ascii	"traceTASK_NOTIFY_TAKE_BLOCK(uxIndexToWait) \000"
.LASF331:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF840:
	.ascii	"FREERTOS_SYSTEM_CALL \000"
.LASF458:
	.ascii	"ARM_MATH_CM0PLUS 1\000"
.LASF1153:
	.ascii	"ListItem_t\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF543:
	.ascii	"__SEGGER_RTL_I64_C(X) X ##LL\000"
.LASF966:
	.ascii	"portTASK_USES_FLOATING_POINT() \000"
.LASF1068:
	.ascii	"taskEXIT_CRITICAL() portEXIT_CRITICAL()\000"
.LASF541:
	.ascii	"__SEGGER_RTL_I32_C(X) X\000"
.LASF327:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF394:
	.ascii	"__ARM_FEATURE_CRC32\000"
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
.LASF797:
	.ascii	"pdLITTLE_ENDIAN pdFREERTOS_LITTLE_ENDIAN\000"
.LASF1212:
	.ascii	"prvGetDisinheritPriorityAfterTimeout\000"
.LASF313:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF895:
	.ascii	"traceQUEUE_SEND_FAILED(pxQueue) \000"
.LASF124:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF218:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF202:
	.ascii	"__FLT16_DENORM_MIN__ 1.1\000"
.LASF1031:
	.ascii	"listSET_FIRST_LIST_ITEM_INTEGRITY_CHECK_VALUE(pxIte"
	.ascii	"m) \000"
.LASF328:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF129:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF972:
	.ascii	"mtCOVERAGE_TEST_DELAY() \000"
.LASF741:
	.ascii	"xPortSysTickHandler SysTick_Handler\000"
.LASF977:
	.ascii	"configUSE_POSIX_ERRNO 0\000"
.LASF1022:
	.ascii	"configRUN_ADDITIONAL_TESTS 0\000"
.LASF1020:
	.ascii	"configENABLE_TRUSTZONE 1\000"
.LASF1082:
	.ascii	"xTaskNotifyAndQueryIndexedFromISR(xTaskToNotify,uxI"
	.ascii	"ndexToNotify,ulValue,eAction,pulPreviousNotificatio"
	.ascii	"nValue,pxHigherPriorityTaskWoken) xTaskGenericNotif"
	.ascii	"yFromISR( ( xTaskToNotify ), ( uxIndexToNotify ), ("
	.ascii	" ulValue ), ( eAction ), ( pulPreviousNotificationV"
	.ascii	"alue ), ( pxHigherPriorityTaskWoken ) )\000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF978:
	.ascii	"configSUPPORT_STATIC_ALLOCATION 0\000"
.LASF395:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF1078:
	.ascii	"xTaskNotifyAndQuery(xTaskToNotify,ulValue,eAction,p"
	.ascii	"ulPreviousNotifyValue) xTaskGenericNotify( ( xTaskT"
	.ascii	"oNotify ), ( tskDEFAULT_INDEX_TO_NOTIFY ), ( ulValu"
	.ascii	"e ), ( eAction ), ( pulPreviousNotifyValue ) )\000"
.LASF715:
	.ascii	"configUSE_APPLICATION_TASK_TAG 0\000"
.LASF491:
	.ascii	"__SEGGER_RTL_CORE_HAS_CLZ 0\000"
.LASF1085:
	.ascii	"xTaskNotifyWaitIndexed(uxIndexToWaitOn,ulBitsToClea"
	.ascii	"rOnEntry,ulBitsToClearOnExit,pulNotificationValue,x"
	.ascii	"TicksToWait) xTaskGenericNotifyWait( ( uxIndexToWai"
	.ascii	"tOn ), ( ulBitsToClearOnEntry ), ( ulBitsToClearOnE"
	.ascii	"xit ), ( pulNotificationValue ), ( xTicksToWait ) )"
	.ascii	"\000"
.LASF1059:
	.ascii	"tskMPU_REGION_READ_WRITE ( 1UL << 1UL )\000"
.LASF1209:
	.ascii	"prvCopyDataToQueue\000"
.LASF1190:
	.ascii	"xQueueRegistryItem\000"
.LASF829:
	.ascii	"portNOP() \000"
.LASF422:
	.ascii	"__ARM_FP16_FORMAT_IEEE 1\000"
.LASF288:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF645:
	.ascii	"INTMAX_MIN INT64_MIN\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF282:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF469:
	.ascii	"__SEGGER_RTL_TARGET_ISA __SEGGER_RTL_ISA_T16\000"
.LASF283:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF1137:
	.ascii	"uint32_t\000"
.LASF1199:
	.ascii	"pxEntryToWrite\000"
.LASF1238:
	.ascii	"uxPreviousMessagesWaiting\000"
.LASF577:
	.ascii	"__SEGGER_RTL_UMULL_HI_SYNTHESIZED \000"
.LASF795:
	.ascii	"pdFREERTOS_LITTLE_ENDIAN 0\000"
.LASF1191:
	.ascii	"QueueRegistryItem_t\000"
.LASF295:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF1215:
	.ascii	"vQueueSetQueueNumber\000"
.LASF483:
	.ascii	"__SEGGER_RTL_CORE_HAS_MLS 0\000"
.LASF801:
	.ascii	"PORTMACRO_H \000"
.LASF602:
	.ascii	"__SEGGER_RTL_I64_L(X) ((__SEGGER_RTL_U32)(__SEGGER_"
	.ascii	"RTL_U64)(X))\000"
.LASF1037:
	.ascii	"listSET_LIST_ITEM_OWNER(pxListItem,pxOwner) ( ( pxL"
	.ascii	"istItem )->pvOwner = ( void * ) ( pxOwner ) )\000"
.LASF1027:
	.ascii	"listFIRST_LIST_ITEM_INTEGRITY_CHECK_VALUE \000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF472:
	.ascii	"__SEGGER_RTL_BYTE_ORDER (-1)\000"
.LASF360:
	.ascii	"__UHA_IBIT__ 8\000"
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
.LASF849:
	.ascii	"INCLUDE_xTaskGetHandle 0\000"
.LASF87:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF76:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF222:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF75:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF1023:
	.ascii	"tskSTATIC_AND_DYNAMIC_ALLOCATION_POSSIBLE ( ( ( por"
	.ascii	"tUSING_MPU_WRAPPERS == 0 ) && ( configSUPPORT_DYNAM"
	.ascii	"IC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLO"
	.ascii	"CATION == 1 ) ) || ( ( portUSING_MPU_WRAPPERS == 1 "
	.ascii	") && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) ) )\000"
.LASF106:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF486:
	.ascii	"__SEGGER_RTL_THREAD __thread\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF682:
	.ascii	"INT32_C(x) (x)\000"
.LASF1046:
	.ascii	"listCURRENT_LIST_LENGTH(pxList) ( ( pxList )->uxNum"
	.ascii	"berOfItems )\000"
.LASF183:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF1136:
	.ascii	"short unsigned int\000"
.LASF281:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF219:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF201:
	.ascii	"__FLT16_EPSILON__ 1.1\000"
.LASF413:
	.ascii	"__thumb__ 1\000"
.LASF605:
	.ascii	"__SEGGER_RTL_HUGE_VAL __builtin_huge_val()\000"
.LASF418:
	.ascii	"__ARMEL__ 1\000"
.LASF927:
	.ascii	"traceEVENT_GROUP_SYNC_END(xEventGroup,uxBitsToSet,u"
	.ascii	"xBitsToWaitFor,xTimeoutOccurred) ( void ) xTimeoutO"
	.ascii	"ccurred\000"
.LASF521:
	.ascii	"__WIDTH_DOUBLE 2\000"
.LASF702:
	.ascii	"configMAX_TASK_NAME_LEN ( 16 )\000"
.LASF968:
	.ascii	"configINCLUDE_APPLICATION_DEFINED_PRIVILEGED_FUNCTI"
	.ascii	"ONS 0\000"
.LASF333:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF510:
	.ascii	"__SEGGER_RTL_VA_LIST __builtin_va_list\000"
.LASF1055:
	.ascii	"tskKERNEL_VERSION_MAJOR 10\000"
.LASF537:
	.ascii	"__SEGGER_RTL_LEAST_U16 unsigned\000"
.LASF926:
	.ascii	"traceEVENT_GROUP_SYNC_BLOCK(xEventGroup,uxBitsToSet"
	.ascii	",uxBitsToWaitFor) \000"
.LASF78:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF457:
	.ascii	"__STM32G071_SUBFAMILY 1\000"
.LASF390:
	.ascii	"__ARM_FEATURE_SAT\000"
.LASF536:
	.ascii	"__SEGGER_RTL_LEAST_U32 unsigned\000"
.LASF780:
	.ascii	"pdFREERTOS_ERRNO_ENOTEMPTY 90\000"
.LASF764:
	.ascii	"pdFREERTOS_ERRNO_EACCES 13\000"
.LASF409:
	.ascii	"__ARM_ARCH\000"
.LASF1180:
	.ascii	"xMutexHolder\000"
.LASF214:
	.ascii	"__FLT32_NORM_MAX__ 1.1\000"
.LASF1253:
	.ascii	"pxNewQueue\000"
.LASF718:
	.ascii	"configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY 0x02\000"
.LASF1005:
	.ascii	"pdTASK_HOOK_CODE TaskHookFunction_t\000"
.LASF929:
	.ascii	"traceEVENT_GROUP_WAIT_BITS_END(xEventGroup,uxBitsTo"
	.ascii	"WaitFor,xTimeoutOccurred) ( void ) xTimeoutOccurred"
	.ascii	"\000"
.LASF900:
	.ascii	"traceQUEUE_RECEIVE_FAILED(pxQueue) \000"
.LASF990:
	.ascii	"configMAX(a,b) ( ( ( a ) > ( b ) ) ? ( a ) : ( b ) "
	.ascii	")\000"
.LASF624:
	.ascii	"EXIT_FAILURE 1\000"
.LASF586:
	.ascii	"__SEGGER_RTL_DIVMOD_U32(Q,R,N,D) do { Q = N / D; R "
	.ascii	"= N - Q*D; } while (0)\000"
.LASF956:
	.ascii	"traceSTREAM_BUFFER_RECEIVE_FAILED(xStreamBuffer) \000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF1105:
	.ascii	"queueQUEUE_TYPE_RECURSIVE_MUTEX ( ( uint8_t ) 4U )\000"
.LASF751:
	.ascii	"errQUEUE_BLOCKED ( -4 )\000"
.LASF504:
	.ascii	"__SEGGER_RTL_FAST_CODE_SECTION(X) __attribute__((__"
	.ascii	"section__(\".fast.\" X)))\000"
.LASF471:
	.ascii	"__SEGGER_RTL_INCLUDE_GNU_FP16_API 1\000"
.LASF240:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF403:
	.ascii	"__ARM_FEATURE_SIMD32\000"
.LASF613:
	.ascii	"__SEGGER_RTL_CORE_HAS_UDIVM_X 0\000"
.LASF1056:
	.ascii	"tskKERNEL_VERSION_MINOR 4\000"
.LASF793:
	.ascii	"pdFREERTOS_ERRNO_EILSEQ 138\000"
.LASF84:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF834:
	.ascii	"portHAS_STACK_OVERFLOW_CHECKING 0\000"
.LASF108:
	.ascii	"__INT16_C(c) c\000"
.LASF1242:
	.ascii	"uxMaxCount\000"
.LASF712:
	.ascii	"configCHECK_FOR_STACK_OVERFLOW 0\000"
.LASF1001:
	.ascii	"xTaskParameters TaskParameters_t\000"
.LASF356:
	.ascii	"__DA_IBIT__ 32\000"
.LASF1040:
	.ascii	"listGET_LIST_ITEM_VALUE(pxListItem) ( ( pxListItem "
	.ascii	")->xItemValue )\000"
.LASF232:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF1018:
	.ascii	"configENABLE_MPU 0\000"
.LASF703:
	.ascii	"configUSE_TRACE_FACILITY 1\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF822:
	.ascii	"portDISABLE_INTERRUPTS() __asm volatile ( \" cpsid "
	.ascii	"i \" ::: \"memory\" )\000"
.LASF334:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF1169:
	.ascii	"uxLength\000"
.LASF729:
	.ascii	"INCLUDE_vTaskDelete 1\000"
.LASF981:
	.ascii	"configRUN_TIME_COUNTER_TYPE uint32_t\000"
.LASF979:
	.ascii	"configSUPPORT_DYNAMIC_ALLOCATION 1\000"
.LASF670:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF719:
	.ascii	"configKERNEL_INTERRUPT_PRIORITY ( configLIBRARY_LOW"
	.ascii	"EST_INTERRUPT_PRIORITY << (8 - configPRIO_BITS) )\000"
.LASF992:
	.ascii	"eTaskStateGet eTaskGetState\000"
.LASF902:
	.ascii	"traceQUEUE_SEND_FROM_ISR_FAILED(pxQueue) \000"
.LASF1043:
	.ascii	"listGET_NEXT(pxListItem) ( ( pxListItem )->pxNext )"
	.ascii	"\000"
.LASF231:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF989:
	.ascii	"configPRINTF(X) \000"
.LASF1007:
	.ascii	"pcTaskGetTaskName pcTaskGetName\000"
.LASF90:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF1143:
	.ascii	"xItemValue\000"
.LASF160:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF277:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF321:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF70:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF677:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF681:
	.ascii	"INT16_C(x) (x)\000"
.LASF442:
	.ascii	"__ARM_FEATURE_CDE_COPROC\000"
.LASF1216:
	.ascii	"uxQueueGetQueueNumber\000"
.LASF8:
	.ascii	"__VERSION__ \"10.3.1 20210824 (release)\"\000"
	.ident	"GCC: (based on arm-10.3-2021.10 GCC) 10.3.1 20210824 (release)"
