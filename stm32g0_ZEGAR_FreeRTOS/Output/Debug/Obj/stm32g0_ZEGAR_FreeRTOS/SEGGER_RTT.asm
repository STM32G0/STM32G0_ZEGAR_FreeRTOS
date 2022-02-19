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
	.file	"SEGGER_RTT.c"
	.text
.Ltext0:
	.section	.data._aTerminalId,"aw"
	.align	2
	.type	_aTerminalId, %object
	.size	_aTerminalId, 16
_aTerminalId:
	.ascii	"0123456789ABCDEF"
	.global	_SEGGER_RTT
	.section	.bss._SEGGER_RTT,"aw",%nobits
	.align	2
	.type	_SEGGER_RTT, %object
	.size	_SEGGER_RTT, 168
_SEGGER_RTT:
	.space	168
	.section	.bss._acUpBuffer,"aw",%nobits
	.align	2
	.type	_acUpBuffer, %object
	.size	_acUpBuffer, 1024
_acUpBuffer:
	.space	1024
	.section	.bss._acDownBuffer,"aw",%nobits
	.align	2
	.type	_acDownBuffer, %object
	.size	_acDownBuffer, 16
_acDownBuffer:
	.space	16
	.section	.bss._ActiveTerminal,"aw",%nobits
	.type	_ActiveTerminal, %object
	.size	_ActiveTerminal, 1
_ActiveTerminal:
	.space	1
	.section .rodata
	.align	2
.LC1:
	.ascii	"Terminal\000"
	.align	2
.LC5:
	.ascii	"RTT\000"
	.align	2
.LC7:
	.ascii	"SEGGER\000"
	.section	.text._DoInit,"ax",%progbits
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	_DoInit, %function
_DoInit:
.LFB0:
	.file 1 "C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\\SEGGER_RTT.c"
	.loc 1 301 27
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #12
.LCFI1:
	.loc 1 306 25
	ldr	r3, .L2
	str	r3, [sp, #4]
	.loc 1 307 25
	ldr	r3, [sp, #4]
	movs	r2, #3
	str	r2, [r3, #16]
	.loc 1 308 25
	ldr	r3, [sp, #4]
	movs	r2, #3
	str	r2, [r3, #20]
	.loc 1 312 27
	ldr	r3, [sp, #4]
	ldr	r2, .L2+4
	str	r2, [r3, #24]
	.loc 1 313 27
	ldr	r3, [sp, #4]
	ldr	r2, .L2+8
	str	r2, [r3, #28]
	.loc 1 314 27
	ldr	r3, [sp, #4]
	movs	r2, #128
	lsls	r2, r2, #3
	str	r2, [r3, #32]
	.loc 1 315 27
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #40]
	.loc 1 316 27
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #36]
	.loc 1 317 27
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #44]
	.loc 1 321 29
	ldr	r3, [sp, #4]
	ldr	r2, .L2+4
	str	r2, [r3, #96]
	.loc 1 322 29
	ldr	r3, [sp, #4]
	ldr	r2, .L2+12
	str	r2, [r3, #100]
	.loc 1 323 29
	ldr	r3, [sp, #4]
	movs	r2, #16
	str	r2, [r3, #104]
	.loc 1 324 29
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #112]
	.loc 1 325 29
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #108]
	.loc 1 326 29
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #116]
	.loc 1 332 3
	ldr	r3, [sp, #4]
	adds	r2, r3, #7
	ldr	r3, .L2+16
	movs	r0, r2
	movs	r1, r3
	movs	r3, #4
	movs	r2, r3
	bl	memcpy
	.loc 1 334 3
	ldr	r2, [sp, #4]
	ldr	r3, .L2+20
	movs	r0, r2
	movs	r1, r3
	movs	r3, #7
	movs	r2, r3
	bl	memcpy
	.loc 1 336 14
	ldr	r3, [sp, #4]
	movs	r2, #32
	strb	r2, [r3, #6]
	.loc 1 338 1
	nop
	add	sp, sp, #12
	@ sp needed
	pop	{pc}
.L3:
	.align	2
.L2:
	.word	_SEGGER_RTT
	.word	.LC1
	.word	_acUpBuffer
	.word	_acDownBuffer
	.word	.LC5
	.word	.LC7
.LFE0:
	.size	_DoInit, .-_DoInit
	.section	.text._WriteBlocking,"ax",%progbits
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	_WriteBlocking, %function
_WriteBlocking:
.LFB1:
	.loc 1 359 101
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI2:
	sub	sp, sp, #44
.LCFI3:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 368 19
	movs	r3, #0
	str	r3, [sp, #32]
	.loc 1 369 9
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	str	r3, [sp, #28]
.L10:
	.loc 1 371 11
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #16]
	str	r3, [sp, #24]
	.loc 1 372 8
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #28]
	cmp	r2, r3
	bls	.L5
	.loc 1 373 31
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #28]
	subs	r3, r2, r3
	.loc 1 373 23
	subs	r3, r3, #1
	str	r3, [sp, #36]
	b	.L6
.L5:
	.loc 1 375 30
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #8]
	.loc 1 375 62
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #28]
	subs	r3, r1, r3
	.loc 1 375 45
	adds	r3, r2, r3
	.loc 1 375 23
	subs	r3, r3, #1
	str	r3, [sp, #36]
.L6:
	.loc 1 377 23
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [sp, #28]
	subs	r2, r2, r3
	.loc 1 377 21
	ldr	r3, [sp, #36]
	cmp	r3, r2
	bls	.L7
	movs	r3, r2
.L7:
	str	r3, [sp, #36]
	.loc 1 378 21
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #4]
	cmp	r3, r2
	bls	.L8
	movs	r3, r2
.L8:
	str	r3, [sp, #36]
	.loc 1 379 18
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	.loc 1 379 10
	ldr	r3, [sp, #28]
	adds	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 388 5
	ldr	r2, [sp, #36]
	ldr	r1, [sp, #8]
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	memcpy
	.loc 1 389 21
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #36]
	adds	r3, r2, r3
	str	r3, [sp, #32]
	.loc 1 390 21
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #36]
	adds	r3, r2, r3
	str	r3, [sp, #8]
	.loc 1 391 21
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #36]
	subs	r3, r2, r3
	str	r3, [sp, #4]
	.loc 1 392 21
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #36]
	adds	r3, r2, r3
	str	r3, [sp, #28]
	.loc 1 394 23
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	.loc 1 394 8
	ldr	r2, [sp, #28]
	cmp	r2, r3
	bne	.L9
	.loc 1 395 13
	movs	r3, #0
	str	r3, [sp, #28]
.L9:
	.loc 1 398 18
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #28]
	str	r2, [r3, #12]
	.loc 1 399 3
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L10
	.loc 1 400 10
	ldr	r3, [sp, #32]
	.loc 1 401 1
	movs	r0, r3
	add	sp, sp, #44
	@ sp needed
	pop	{pc}
.LFE1:
	.size	_WriteBlocking, .-_WriteBlocking
	.section	.text._WriteNoCheck,"ax",%progbits
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	_WriteNoCheck, %function
_WriteNoCheck:
.LFB2:
	.loc 1 421 94
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI4:
	sub	sp, sp, #36
.LCFI5:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 427 9
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	str	r3, [sp, #28]
	.loc 1 428 14
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #8]
	.loc 1 428 7
	ldr	r3, [sp, #28]
	subs	r3, r2, r3
	str	r3, [sp, #24]
	.loc 1 429 6
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bls	.L13
	.loc 1 433 18
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	.loc 1 433 10
	ldr	r3, [sp, #28]
	adds	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 442 5
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r3, [sp, #16]
	movs	r0, r3
	bl	memcpy
	.loc 1 444 26
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	adds	r2, r2, r3
	.loc 1 444 18
	ldr	r3, [sp, #12]
	str	r2, [r3, #12]
	.loc 1 474 1
	b	.L15
.L13:
	.loc 1 464 20
	ldr	r3, [sp, #24]
	str	r3, [sp, #20]
	.loc 1 465 18
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	.loc 1 465 10
	ldr	r3, [sp, #28]
	adds	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 466 5
	ldr	r2, [sp, #20]
	ldr	r1, [sp, #8]
	ldr	r3, [sp, #16]
	movs	r0, r3
	bl	memcpy
	.loc 1 467 20
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #24]
	subs	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 468 10
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #4]
	str	r3, [sp, #16]
	.loc 1 469 5
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #24]
	adds	r1, r2, r3
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	movs	r0, r3
	bl	memcpy
	.loc 1 471 18
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #20]
	str	r2, [r3, #12]
.L15:
	.loc 1 474 1
	nop
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.LFE2:
	.size	_WriteNoCheck, .-_WriteNoCheck
	.section	.text._PostTerminalSwitch,"ax",%progbits
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	_PostTerminalSwitch, %function
_PostTerminalSwitch:
.LFB3:
	.loc 1 489 88
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI6:
	sub	sp, sp, #20
.LCFI7:
	str	r0, [sp, #4]
	movs	r2, r1
	mov	r3, sp
	adds	r3, r3, #3
	strb	r2, [r3]
	.loc 1 492 9
	add	r3, sp, #12
	movs	r2, #255
	strb	r2, [r3]
	.loc 1 493 23
	mov	r3, sp
	adds	r3, r3, #3
	ldrb	r3, [r3]
	ldr	r2, .L17
	ldrb	r2, [r2, r3]
	.loc 1 493 9
	add	r3, sp, #12
	strb	r2, [r3, #1]
	.loc 1 494 3
	add	r1, sp, #12
	ldr	r3, [sp, #4]
	movs	r2, #2
	movs	r0, r3
	bl	_WriteBlocking
	.loc 1 495 1
	nop
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.L18:
	.align	2
.L17:
	.word	_aTerminalId
.LFE3:
	.size	_PostTerminalSwitch, .-_PostTerminalSwitch
	.section	.text._GetAvailWriteSpace,"ax",%progbits
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	_GetAvailWriteSpace, %function
_GetAvailWriteSpace:
.LFB4:
	.loc 1 511 66
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
.LCFI8:
	str	r0, [sp, #4]
	.loc 1 519 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #16]
	str	r3, [sp, #16]
	.loc 1 520 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #12]
	str	r3, [sp, #12]
	.loc 1 521 6
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bhi	.L20
	.loc 1 522 14
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #8]
	.loc 1 522 34
	ldr	r3, [sp, #12]
	subs	r2, r2, r3
	.loc 1 522 42
	ldr	r3, [sp, #16]
	adds	r3, r2, r3
	.loc 1 522 7
	subs	r3, r3, #1
	str	r3, [sp, #20]
	b	.L21
.L20:
	.loc 1 524 15
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #12]
	subs	r3, r2, r3
	.loc 1 524 7
	subs	r3, r3, #1
	str	r3, [sp, #20]
.L21:
	.loc 1 526 10
	ldr	r3, [sp, #20]
	.loc 1 527 1
	movs	r0, r3
	add	sp, sp, #24
	@ sp needed
	bx	lr
.LFE4:
	.size	_GetAvailWriteSpace, .-_GetAvailWriteSpace
	.section	.text.SEGGER_RTT_ReadUpBufferNoLock,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_ReadUpBufferNoLock
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_ReadUpBufferNoLock, %function
SEGGER_RTT_ReadUpBufferNoLock:
.LFB5:
	.loc 1 558 96
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI9:
	sub	sp, sp, #52
.LCFI10:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
.LBB2:
	.loc 1 567 3
	ldr	r3, .L31
	str	r3, [sp, #32]
	ldr	r3, [sp, #32]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L24
	.loc 1 567 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L24:
.LBE2:
	.loc 1 568 9 is_stmt 1
	ldr	r3, [sp, #12]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, .L31
	adds	r3, r3, r2
	str	r3, [sp, #28]
	.loc 1 569 11
	ldr	r3, [sp, #8]
	str	r3, [sp, #36]
	.loc 1 570 9
	ldr	r3, [sp, #28]
	ldr	r3, [r3, #16]
	str	r3, [sp, #40]
	.loc 1 571 9
	ldr	r3, [sp, #28]
	ldr	r3, [r3, #12]
	str	r3, [sp, #24]
	.loc 1 572 16
	movs	r3, #0
	str	r3, [sp, #44]
	.loc 1 576 6
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bls	.L25
	.loc 1 577 24
	ldr	r3, [sp, #28]
	ldr	r2, [r3, #8]
	.loc 1 577 17
	ldr	r3, [sp, #40]
	subs	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 578 17
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	cmp	r3, r2
	bls	.L26
	movs	r3, r2
.L26:
	str	r3, [sp, #20]
	.loc 1 579 18
	ldr	r3, [sp, #28]
	ldr	r2, [r3, #4]
	.loc 1 579 10
	ldr	r3, [sp, #40]
	adds	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 588 5
	ldr	r2, [sp, #20]
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #36]
	movs	r0, r3
	bl	memcpy
	.loc 1 589 18
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #44]
	.loc 1 590 18
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #36]
	.loc 1 591 18
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #20]
	subs	r3, r2, r3
	str	r3, [sp, #4]
	.loc 1 592 18
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #40]
	.loc 1 597 23
	ldr	r3, [sp, #28]
	ldr	r3, [r3, #8]
	.loc 1 597 8
	ldr	r2, [sp, #40]
	cmp	r2, r3
	bne	.L25
	.loc 1 598 13
	movs	r3, #0
	str	r3, [sp, #40]
.L25:
	.loc 1 604 15
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #40]
	subs	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 605 15
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	cmp	r3, r2
	bls	.L27
	movs	r3, r2
.L27:
	str	r3, [sp, #20]
	.loc 1 606 6
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L28
	.loc 1 607 18
	ldr	r3, [sp, #28]
	ldr	r2, [r3, #4]
	.loc 1 607 10
	ldr	r3, [sp, #40]
	adds	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 616 5
	ldr	r2, [sp, #20]
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #36]
	movs	r0, r3
	bl	memcpy
	.loc 1 617 18
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #44]
	.loc 1 618 18
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #36]
	.loc 1 619 18
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #20]
	subs	r3, r2, r3
	str	r3, [sp, #4]
	.loc 1 620 18
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #40]
.L28:
	.loc 1 626 6
	ldr	r3, [sp, #44]
	cmp	r3, #0
	beq	.L29
	.loc 1 627 18
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #40]
	str	r2, [r3, #16]
.L29:
	.loc 1 630 10
	ldr	r3, [sp, #44]
	.loc 1 631 1
	movs	r0, r3
	add	sp, sp, #52
	@ sp needed
	pop	{pc}
.L32:
	.align	2
.L31:
	.word	_SEGGER_RTT
.LFE5:
	.size	SEGGER_RTT_ReadUpBufferNoLock, .-SEGGER_RTT_ReadUpBufferNoLock
	.section	.text.SEGGER_RTT_ReadNoLock,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_ReadNoLock
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_ReadNoLock, %function
SEGGER_RTT_ReadNoLock:
.LFB6:
	.loc 1 650 88
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI11:
	sub	sp, sp, #52
.LCFI12:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
.LBB3:
	.loc 1 659 3
	ldr	r3, .L41
	str	r3, [sp, #32]
	ldr	r3, [sp, #32]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L34
	.loc 1 659 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L34:
.LBE3:
	.loc 1 660 9 is_stmt 1
	ldr	r2, [sp, #12]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r3, #96
	movs	r2, r3
	ldr	r3, .L41
	adds	r3, r2, r3
	str	r3, [sp, #28]
	.loc 1 661 11
	ldr	r3, [sp, #8]
	str	r3, [sp, #36]
	.loc 1 662 9
	ldr	r3, [sp, #28]
	ldr	r3, [r3, #16]
	str	r3, [sp, #40]
	.loc 1 663 9
	ldr	r3, [sp, #28]
	ldr	r3, [r3, #12]
	str	r3, [sp, #24]
	.loc 1 664 16
	movs	r3, #0
	str	r3, [sp, #44]
	.loc 1 668 6
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bls	.L35
	.loc 1 669 24
	ldr	r3, [sp, #28]
	ldr	r2, [r3, #8]
	.loc 1 669 17
	ldr	r3, [sp, #40]
	subs	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 670 17
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	cmp	r3, r2
	bls	.L36
	movs	r3, r2
.L36:
	str	r3, [sp, #20]
	.loc 1 671 18
	ldr	r3, [sp, #28]
	ldr	r2, [r3, #4]
	.loc 1 671 10
	ldr	r3, [sp, #40]
	adds	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 680 5
	ldr	r2, [sp, #20]
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #36]
	movs	r0, r3
	bl	memcpy
	.loc 1 681 18
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #44]
	.loc 1 682 18
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #36]
	.loc 1 683 18
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #20]
	subs	r3, r2, r3
	str	r3, [sp, #4]
	.loc 1 684 18
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #40]
	.loc 1 689 23
	ldr	r3, [sp, #28]
	ldr	r3, [r3, #8]
	.loc 1 689 8
	ldr	r2, [sp, #40]
	cmp	r2, r3
	bne	.L35
	.loc 1 690 13
	movs	r3, #0
	str	r3, [sp, #40]
.L35:
	.loc 1 696 15
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #40]
	subs	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 697 15
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	cmp	r3, r2
	bls	.L37
	movs	r3, r2
.L37:
	str	r3, [sp, #20]
	.loc 1 698 6
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L38
	.loc 1 699 18
	ldr	r3, [sp, #28]
	ldr	r2, [r3, #4]
	.loc 1 699 10
	ldr	r3, [sp, #40]
	adds	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 708 5
	ldr	r2, [sp, #20]
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #36]
	movs	r0, r3
	bl	memcpy
	.loc 1 709 18
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #44]
	.loc 1 710 18
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #36]
	.loc 1 711 18
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #20]
	subs	r3, r2, r3
	str	r3, [sp, #4]
	.loc 1 712 18
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #40]
.L38:
	.loc 1 715 6
	ldr	r3, [sp, #44]
	cmp	r3, #0
	beq	.L39
	.loc 1 716 18
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #40]
	str	r2, [r3, #16]
.L39:
	.loc 1 719 10
	ldr	r3, [sp, #44]
	.loc 1 720 1
	movs	r0, r3
	add	sp, sp, #52
	@ sp needed
	pop	{pc}
.L42:
	.align	2
.L41:
	.word	_SEGGER_RTT
.LFE6:
	.size	SEGGER_RTT_ReadNoLock, .-SEGGER_RTT_ReadNoLock
	.section	.text.SEGGER_RTT_ReadUpBuffer,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_ReadUpBuffer
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_ReadUpBuffer, %function
SEGGER_RTT_ReadUpBuffer:
.LFB7:
	.loc 1 747 92
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI13:
	sub	sp, sp, #28
.LCFI14:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
.LBB4:
	.loc 1 750 3
	.syntax divided
@ 750 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #20]
	.loc 1 754 18
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r3, [sp, #12]
	movs	r0, r3
	bl	SEGGER_RTT_ReadUpBufferNoLock
	movs	r3, r0
	str	r3, [sp, #16]
	.loc 1 758 3
	ldr	r3, [sp, #20]
	.syntax divided
@ 758 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE4:
	.loc 1 760 10
	ldr	r3, [sp, #16]
	.loc 1 761 1
	movs	r0, r3
	add	sp, sp, #28
	@ sp needed
	pop	{pc}
.LFE7:
	.size	SEGGER_RTT_ReadUpBuffer, .-SEGGER_RTT_ReadUpBuffer
	.section	.text.SEGGER_RTT_Read,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_Read
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_Read, %function
SEGGER_RTT_Read:
.LFB8:
	.loc 1 779 84
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI15:
	sub	sp, sp, #28
.LCFI16:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
.LBB5:
	.loc 1 782 3
	.syntax divided
@ 782 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #20]
	.loc 1 786 18
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r3, [sp, #12]
	movs	r0, r3
	bl	SEGGER_RTT_ReadNoLock
	movs	r3, r0
	str	r3, [sp, #16]
	.loc 1 790 3
	ldr	r3, [sp, #20]
	.syntax divided
@ 790 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE5:
	.loc 1 792 10
	ldr	r3, [sp, #16]
	.loc 1 793 1
	movs	r0, r3
	add	sp, sp, #28
	@ sp needed
	pop	{pc}
.LFE8:
	.size	SEGGER_RTT_Read, .-SEGGER_RTT_Read
	.section	.text.SEGGER_RTT_WriteWithOverwriteNoLock,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_WriteWithOverwriteNoLock
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_WriteWithOverwriteNoLock, %function
SEGGER_RTT_WriteWithOverwriteNoLock:
.LFB9:
	.loc 1 818 104
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI17:
	sub	sp, sp, #36
.LCFI18:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 826 9
	ldr	r3, [sp, #8]
	str	r3, [sp, #28]
	.loc 1 827 9
	ldr	r3, [sp, #12]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, .L57
	adds	r3, r3, r2
	str	r3, [sp, #20]
	.loc 1 831 12
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #12]
	.loc 1 831 28
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #16]
	.loc 1 831 6
	cmp	r2, r3
	bne	.L48
	.loc 1 832 18
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #8]
	.loc 1 832 11
	subs	r3, r3, #1
	str	r3, [sp, #24]
	b	.L49
.L48:
	.loc 1 833 20
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #12]
	.loc 1 833 35
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #16]
	.loc 1 833 13
	cmp	r2, r3
	bcs	.L50
	.loc 1 834 18
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #16]
	.loc 1 834 33
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #12]
	.loc 1 834 26
	subs	r3, r2, r3
	.loc 1 834 11
	subs	r3, r3, #1
	str	r3, [sp, #24]
	b	.L49
.L50:
	.loc 1 836 18
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #16]
	.loc 1 836 33
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #12]
	.loc 1 836 26
	subs	r2, r2, r3
	.loc 1 836 53
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #8]
	.loc 1 836 46
	adds	r3, r2, r3
	.loc 1 836 11
	subs	r3, r3, #1
	str	r3, [sp, #24]
.L49:
	.loc 1 838 6
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bls	.L51
	.loc 1 839 18
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #16]
	.loc 1 839 31
	ldr	r1, [sp, #4]
	ldr	r3, [sp, #24]
	subs	r3, r1, r3
	.loc 1 839 18
	adds	r2, r2, r3
	ldr	r3, [sp, #20]
	str	r2, [r3, #16]
	.loc 1 840 11
	b	.L52
.L53:
	.loc 1 841 20
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #16]
	.loc 1 841 28
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #8]
	.loc 1 841 20
	subs	r2, r2, r3
	ldr	r3, [sp, #20]
	str	r2, [r3, #16]
.L52:
	.loc 1 840 17
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #16]
	.loc 1 840 33
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #8]
	.loc 1 840 11
	cmp	r2, r3
	bcs	.L53
.L51:
	.loc 1 847 16
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #8]
	.loc 1 847 38
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #12]
	.loc 1 847 9
	subs	r3, r2, r3
	str	r3, [sp, #24]
.L56:
	.loc 1 849 8
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bls	.L54
	.loc 1 853 20
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #4]
	.loc 1 853 37
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #12]
	.loc 1 853 12
	adds	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 862 7
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #28]
	ldr	r3, [sp, #16]
	movs	r0, r3
	bl	memcpy
	.loc 1 864 20
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [sp, #4]
	adds	r2, r2, r3
	ldr	r3, [sp, #20]
	str	r2, [r3, #12]
	.loc 1 866 7
	b	.L55
.L54:
	.loc 1 871 20
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #4]
	.loc 1 871 37
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #12]
	.loc 1 871 12
	adds	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 880 7
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #28]
	ldr	r3, [sp, #16]
	movs	r0, r3
	bl	memcpy
	.loc 1 881 13
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #24]
	adds	r3, r2, r3
	str	r3, [sp, #28]
	.loc 1 883 20
	ldr	r3, [sp, #20]
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 1 884 16
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #24]
	subs	r3, r2, r3
	str	r3, [sp, #4]
	.loc 1 886 21
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #8]
	.loc 1 886 13
	subs	r3, r3, #1
	str	r3, [sp, #24]
	.loc 1 888 3
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L56
	.loc 1 889 1
	nop
.L55:
	nop
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L58:
	.align	2
.L57:
	.word	_SEGGER_RTT
.LFE9:
	.size	SEGGER_RTT_WriteWithOverwriteNoLock, .-SEGGER_RTT_WriteWithOverwriteNoLock
	.section	.text.SEGGER_RTT_WriteSkipNoLock,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_WriteSkipNoLock
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_WriteSkipNoLock, %function
SEGGER_RTT_WriteSkipNoLock:
.LFB10:
	.loc 1 919 99
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI19:
	sub	sp, sp, #52
.LCFI20:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 937 9
	ldr	r3, [sp, #8]
	str	r3, [sp, #44]
	.loc 1 938 9
	ldr	r3, [sp, #12]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, .L67
	adds	r3, r3, r2
	str	r3, [sp, #40]
	.loc 1 939 9
	ldr	r3, [sp, #40]
	ldr	r3, [r3, #16]
	str	r3, [sp, #36]
	.loc 1 940 9
	ldr	r3, [sp, #40]
	ldr	r3, [r3, #12]
	str	r3, [sp, #32]
	.loc 1 941 6
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #32]
	cmp	r2, r3
	bhi	.L60
	.loc 1 942 18
	ldr	r3, [sp, #40]
	ldr	r2, [r3, #8]
	.loc 1 942 33
	ldr	r3, [sp, #32]
	subs	r3, r2, r3
	.loc 1 942 11
	subs	r3, r3, #1
	str	r3, [sp, #28]
	.loc 1 943 8
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcc	.L61
	.loc 1 944 1
	nop
	b	.L62
.L66:
	.loc 1 974 7
	nop
.L62:
	.loc 1 945 20
	ldr	r3, [sp, #40]
	ldr	r2, [r3, #4]
	.loc 1 945 12
	ldr	r3, [sp, #32]
	adds	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 946 7
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #44]
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	memcpy
	.loc 1 948 28
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #4]
	adds	r2, r2, r3
	.loc 1 948 20
	ldr	r3, [sp, #40]
	str	r2, [r3, #12]
	.loc 1 949 14
	movs	r3, #1
	b	.L63
.L61:
	.loc 1 951 11
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #36]
	adds	r3, r2, r3
	str	r3, [sp, #28]
	.loc 1 952 8
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcc	.L64
	.loc 1 953 18
	ldr	r3, [sp, #40]
	ldr	r2, [r3, #8]
	.loc 1 953 11
	ldr	r3, [sp, #32]
	subs	r3, r2, r3
	str	r3, [sp, #24]
	.loc 1 954 20
	ldr	r3, [sp, #40]
	ldr	r2, [r3, #4]
	.loc 1 954 12
	ldr	r3, [sp, #32]
	adds	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 955 7
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #44]
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	memcpy
	.loc 1 956 16
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #24]
	subs	r3, r2, r3
	str	r3, [sp, #4]
	.loc 1 963 10
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L65
	.loc 1 964 14
	ldr	r3, [sp, #40]
	ldr	r3, [r3, #4]
	str	r3, [sp, #20]
	.loc 1 965 35
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #24]
	adds	r1, r2, r3
	.loc 1 965 9
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	memcpy
.L65:
	.loc 1 968 20
	ldr	r3, [sp, #40]
	ldr	r2, [sp, #4]
	str	r2, [r3, #12]
	.loc 1 969 14
	movs	r3, #1
	b	.L63
.L60:
	.loc 1 972 19
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #32]
	subs	r3, r2, r3
	.loc 1 972 11
	subs	r3, r3, #1
	str	r3, [sp, #28]
	.loc 1 973 8
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcs	.L66
.L64:
	.loc 1 977 10
	movs	r3, #0
.L63:
	.loc 1 978 1
	movs	r0, r3
	add	sp, sp, #52
	@ sp needed
	pop	{pc}
.L68:
	.align	2
.L67:
	.word	_SEGGER_RTT
.LFE10:
	.size	SEGGER_RTT_WriteSkipNoLock, .-SEGGER_RTT_WriteSkipNoLock
	.section	.text.SEGGER_RTT_WriteDownBufferNoLock,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_WriteDownBufferNoLock
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_WriteDownBufferNoLock, %function
SEGGER_RTT_WriteDownBufferNoLock:
.LFB11:
	.loc 1 1009 105
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI21:
	sub	sp, sp, #36
.LCFI22:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 1018 9
	ldr	r3, [sp, #8]
	str	r3, [sp, #24]
	.loc 1 1019 9
	ldr	r2, [sp, #12]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r3, #96
	movs	r2, r3
	ldr	r3, .L79
	adds	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 1023 16
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #20]
	.loc 1 1023 3
	cmp	r3, #2
	beq	.L70
	bhi	.L71
	cmp	r3, #0
	beq	.L72
	cmp	r3, #1
	beq	.L73
	b	.L71
.L72:
	.loc 1 1029 13
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	_GetAvailWriteSpace
	movs	r3, r0
	str	r3, [sp, #16]
	.loc 1 1030 8
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcs	.L74
	.loc 1 1031 14
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 1 1036 5
	b	.L76
.L74:
	.loc 1 1033 14
	ldr	r3, [sp, #4]
	str	r3, [sp, #28]
	.loc 1 1034 7
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	_WriteNoCheck
	.loc 1 1036 5
	b	.L76
.L73:
	.loc 1 1041 13
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	_GetAvailWriteSpace
	movs	r3, r0
	str	r3, [sp, #16]
	.loc 1 1042 12
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	cmp	r3, r2
	bls	.L77
	movs	r3, r2
.L77:
	str	r3, [sp, #28]
	.loc 1 1043 5
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	_WriteNoCheck
	.loc 1 1044 5
	b	.L76
.L70:
	.loc 1 1049 14
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	_WriteBlocking
	movs	r3, r0
	str	r3, [sp, #28]
	.loc 1 1050 5
	b	.L76
.L71:
	.loc 1 1052 12
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 1 1053 5
	nop
.L76:
	.loc 1 1058 10
	ldr	r3, [sp, #28]
	.loc 1 1059 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L80:
	.align	2
.L79:
	.word	_SEGGER_RTT
.LFE11:
	.size	SEGGER_RTT_WriteDownBufferNoLock, .-SEGGER_RTT_WriteDownBufferNoLock
	.section	.text.SEGGER_RTT_WriteNoLock,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_WriteNoLock
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_WriteNoLock, %function
SEGGER_RTT_WriteNoLock:
.LFB12:
	.loc 1 1084 95
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI23:
	sub	sp, sp, #36
.LCFI24:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 1092 9
	ldr	r3, [sp, #8]
	str	r3, [sp, #24]
	.loc 1 1093 9
	ldr	r3, [sp, #12]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, .L91
	adds	r3, r3, r2
	str	r3, [sp, #20]
	.loc 1 1097 16
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #20]
	.loc 1 1097 3
	cmp	r3, #2
	beq	.L82
	bhi	.L83
	cmp	r3, #0
	beq	.L84
	cmp	r3, #1
	beq	.L85
	b	.L83
.L84:
	.loc 1 1103 13
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	_GetAvailWriteSpace
	movs	r3, r0
	str	r3, [sp, #16]
	.loc 1 1104 8
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcs	.L86
	.loc 1 1105 14
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 1 1110 5
	b	.L88
.L86:
	.loc 1 1107 14
	ldr	r3, [sp, #4]
	str	r3, [sp, #28]
	.loc 1 1108 7
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	_WriteNoCheck
	.loc 1 1110 5
	b	.L88
.L85:
	.loc 1 1115 13
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	_GetAvailWriteSpace
	movs	r3, r0
	str	r3, [sp, #16]
	.loc 1 1116 12
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	cmp	r3, r2
	bls	.L89
	movs	r3, r2
.L89:
	str	r3, [sp, #28]
	.loc 1 1117 5
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	_WriteNoCheck
	.loc 1 1118 5
	b	.L88
.L82:
	.loc 1 1123 14
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	_WriteBlocking
	movs	r3, r0
	str	r3, [sp, #28]
	.loc 1 1124 5
	b	.L88
.L83:
	.loc 1 1126 12
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 1 1127 5
	nop
.L88:
	.loc 1 1132 10
	ldr	r3, [sp, #28]
	.loc 1 1133 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L92:
	.align	2
.L91:
	.word	_SEGGER_RTT
.LFE12:
	.size	SEGGER_RTT_WriteNoLock, .-SEGGER_RTT_WriteNoLock
	.section	.text.SEGGER_RTT_WriteDownBuffer,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_WriteDownBuffer
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_WriteDownBuffer, %function
SEGGER_RTT_WriteDownBuffer:
.LFB13:
	.loc 1 1160 99
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI25:
	sub	sp, sp, #36
.LCFI26:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
.LBB6:
	.loc 1 1163 3
	ldr	r3, .L96
	str	r3, [sp, #28]
	ldr	r3, [sp, #28]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L94
	.loc 1 1163 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L94:
.LBE6:
.LBB7:
	.loc 1 1164 3 is_stmt 1
	.syntax divided
@ 1164 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #24]
	.loc 1 1165 12
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r3, [sp, #12]
	movs	r0, r3
	bl	SEGGER_RTT_WriteDownBufferNoLock
	movs	r3, r0
	str	r3, [sp, #20]
	.loc 1 1166 3
	ldr	r3, [sp, #24]
	.syntax divided
@ 1166 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE7:
	.loc 1 1167 10
	ldr	r3, [sp, #20]
	.loc 1 1168 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L97:
	.align	2
.L96:
	.word	_SEGGER_RTT
.LFE13:
	.size	SEGGER_RTT_WriteDownBuffer, .-SEGGER_RTT_WriteDownBuffer
	.section	.text.SEGGER_RTT_Write,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_Write
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_Write, %function
SEGGER_RTT_Write:
.LFB14:
	.loc 1 1189 89
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI27:
	sub	sp, sp, #36
.LCFI28:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
.LBB8:
	.loc 1 1192 3
	ldr	r3, .L101
	str	r3, [sp, #28]
	ldr	r3, [sp, #28]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L99
	.loc 1 1192 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L99:
.LBE8:
.LBB9:
	.loc 1 1193 3 is_stmt 1
	.syntax divided
@ 1193 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #24]
	.loc 1 1194 12
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r3, [sp, #12]
	movs	r0, r3
	bl	SEGGER_RTT_WriteNoLock
	movs	r3, r0
	str	r3, [sp, #20]
	.loc 1 1195 3
	ldr	r3, [sp, #24]
	.syntax divided
@ 1195 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE9:
	.loc 1 1196 10
	ldr	r3, [sp, #20]
	.loc 1 1197 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L102:
	.align	2
.L101:
	.word	_SEGGER_RTT
.LFE14:
	.size	SEGGER_RTT_Write, .-SEGGER_RTT_Write
	.section	.text.SEGGER_RTT_WriteString,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_WriteString
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_WriteString, %function
SEGGER_RTT_WriteString:
.LFB15:
	.loc 1 1219 70
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI29:
	sub	sp, sp, #20
.LCFI30:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1222 9
	ldr	r3, [sp]
	movs	r0, r3
	bl	strlen
	movs	r3, r0
	str	r3, [sp, #12]
	.loc 1 1223 10
	ldr	r2, [sp, #12]
	ldr	r1, [sp]
	ldr	r3, [sp, #4]
	movs	r0, r3
	bl	SEGGER_RTT_Write
	movs	r3, r0
	.loc 1 1224 1
	movs	r0, r3
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.LFE15:
	.size	SEGGER_RTT_WriteString, .-SEGGER_RTT_WriteString
	.section	.text.SEGGER_RTT_PutCharSkipNoLock,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_PutCharSkipNoLock
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_PutCharSkipNoLock, %function
SEGGER_RTT_PutCharSkipNoLock:
.LFB16:
	.loc 1 1249 69
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
.LCFI31:
	str	r0, [sp, #4]
	movs	r2, r1
	mov	r3, sp
	adds	r3, r3, #3
	strb	r2, [r3]
	.loc 1 1257 9
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, .L110
	adds	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 1261 16
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 1261 9
	adds	r3, r3, #1
	str	r3, [sp, #20]
	.loc 1 1262 21
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	.loc 1 1262 6
	ldr	r2, [sp, #20]
	cmp	r2, r3
	bne	.L106
	.loc 1 1263 11
	movs	r3, #0
	str	r3, [sp, #20]
.L106:
	.loc 1 1268 21
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #16]
	.loc 1 1268 6
	ldr	r2, [sp, #20]
	cmp	r2, r3
	beq	.L107
	.loc 1 1269 18
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	.loc 1 1269 35
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 1269 10
	adds	r3, r2, r3
	str	r3, [sp, #8]
	.loc 1 1270 11
	ldr	r3, [sp, #8]
	mov	r2, sp
	adds	r2, r2, #3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 1272 18
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #20]
	str	r2, [r3, #12]
	.loc 1 1273 12
	movs	r3, #1
	str	r3, [sp, #16]
	b	.L108
.L107:
	.loc 1 1275 12
	movs	r3, #0
	str	r3, [sp, #16]
.L108:
	.loc 1 1278 10
	ldr	r3, [sp, #16]
	.loc 1 1279 1
	movs	r0, r3
	add	sp, sp, #24
	@ sp needed
	bx	lr
.L111:
	.align	2
.L110:
	.word	_SEGGER_RTT
.LFE16:
	.size	SEGGER_RTT_PutCharSkipNoLock, .-SEGGER_RTT_PutCharSkipNoLock
	.section	.text.SEGGER_RTT_PutCharSkip,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_PutCharSkip
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_PutCharSkip, %function
SEGGER_RTT_PutCharSkip:
.LFB17:
	.loc 1 1299 63
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI32:
	sub	sp, sp, #36
.LCFI33:
	str	r0, [sp, #4]
	movs	r2, r1
	mov	r3, sp
	adds	r3, r3, #3
	strb	r2, [r3]
.LBB10:
	.loc 1 1307 3
	ldr	r3, .L118
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L113
	.loc 1 1307 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L113:
.LBE10:
.LBB11:
	.loc 1 1308 3 is_stmt 1
	.syntax divided
@ 1308 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #16]
	.loc 1 1312 9
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, .L118
	adds	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 1316 16
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 1316 9
	adds	r3, r3, #1
	str	r3, [sp, #28]
	.loc 1 1317 21
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	.loc 1 1317 6
	ldr	r2, [sp, #28]
	cmp	r2, r3
	bne	.L114
	.loc 1 1318 11
	movs	r3, #0
	str	r3, [sp, #28]
.L114:
	.loc 1 1323 21
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #16]
	.loc 1 1323 6
	ldr	r2, [sp, #28]
	cmp	r2, r3
	beq	.L115
	.loc 1 1324 19
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	.loc 1 1324 36
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 1324 11
	adds	r3, r2, r3
	str	r3, [sp, #8]
	.loc 1 1325 11
	ldr	r3, [sp, #8]
	mov	r2, sp
	adds	r2, r2, #3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 1327 18
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #28]
	str	r2, [r3, #12]
	.loc 1 1328 12
	movs	r3, #1
	str	r3, [sp, #24]
	b	.L116
.L115:
	.loc 1 1330 12
	movs	r3, #0
	str	r3, [sp, #24]
.L116:
	.loc 1 1335 3
	ldr	r3, [sp, #16]
	.syntax divided
@ 1335 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE11:
	.loc 1 1337 10
	ldr	r3, [sp, #24]
	.loc 1 1338 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L119:
	.align	2
.L118:
	.word	_SEGGER_RTT
.LFE17:
	.size	SEGGER_RTT_PutCharSkip, .-SEGGER_RTT_PutCharSkip
	.section	.text.SEGGER_RTT_PutChar,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_PutChar
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_PutChar, %function
SEGGER_RTT_PutChar:
.LFB18:
	.loc 1 1358 59
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI34:
	sub	sp, sp, #36
.LCFI35:
	str	r0, [sp, #4]
	movs	r2, r1
	mov	r3, sp
	adds	r3, r3, #3
	strb	r2, [r3]
.LBB12:
	.loc 1 1366 3
	ldr	r3, .L128
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L121
	.loc 1 1366 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L121:
.LBE12:
.LBB13:
	.loc 1 1367 3 is_stmt 1
	.syntax divided
@ 1367 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #16]
	.loc 1 1371 9
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, .L128
	adds	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 1375 16
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 1375 9
	adds	r3, r3, #1
	str	r3, [sp, #28]
	.loc 1 1376 21
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	.loc 1 1376 6
	ldr	r2, [sp, #28]
	cmp	r2, r3
	bne	.L122
	.loc 1 1377 11
	movs	r3, #0
	str	r3, [sp, #28]
.L122:
	.loc 1 1382 12
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 1382 6
	cmp	r3, #2
	bne	.L123
	.loc 1 1383 11
	nop
.L124:
	.loc 1 1383 26 discriminator 1
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #16]
	.loc 1 1383 11 discriminator 1
	ldr	r2, [sp, #28]
	cmp	r2, r3
	beq	.L124
.L123:
	.loc 1 1390 21
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #16]
	.loc 1 1390 6
	ldr	r2, [sp, #28]
	cmp	r2, r3
	beq	.L125
	.loc 1 1391 19
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	.loc 1 1391 36
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 1391 11
	adds	r3, r2, r3
	str	r3, [sp, #8]
	.loc 1 1392 11
	ldr	r3, [sp, #8]
	mov	r2, sp
	adds	r2, r2, #3
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 1394 18
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #28]
	str	r2, [r3, #12]
	.loc 1 1395 12
	movs	r3, #1
	str	r3, [sp, #24]
	b	.L126
.L125:
	.loc 1 1397 12
	movs	r3, #0
	str	r3, [sp, #24]
.L126:
	.loc 1 1402 3
	ldr	r3, [sp, #16]
	.syntax divided
@ 1402 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE13:
	.loc 1 1403 10
	ldr	r3, [sp, #24]
	.loc 1 1404 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L129:
	.align	2
.L128:
	.word	_SEGGER_RTT
.LFE18:
	.size	SEGGER_RTT_PutChar, .-SEGGER_RTT_PutChar
	.section	.text.SEGGER_RTT_GetKey,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_GetKey
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_GetKey, %function
SEGGER_RTT_GetKey:
.LFB19:
	.loc 1 1421 29
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI36:
	sub	sp, sp, #12
.LCFI37:
	.loc 1 1425 12
	mov	r3, sp
	adds	r3, r3, #3
	movs	r2, #1
	movs	r1, r3
	movs	r0, #0
	bl	SEGGER_RTT_Read
	movs	r3, r0
	.loc 1 1425 5
	str	r3, [sp, #4]
	.loc 1 1426 6
	ldr	r3, [sp, #4]
	cmp	r3, #1
	bne	.L131
	.loc 1 1427 9
	mov	r3, sp
	adds	r3, r3, #3
	ldrb	r3, [r3]
	.loc 1 1427 7
	str	r3, [sp, #4]
	b	.L132
.L131:
	.loc 1 1429 7
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp, #4]
.L132:
	.loc 1 1431 10
	ldr	r3, [sp, #4]
	.loc 1 1432 1
	movs	r0, r3
	add	sp, sp, #12
	@ sp needed
	pop	{pc}
.LFE19:
	.size	SEGGER_RTT_GetKey, .-SEGGER_RTT_GetKey
	.section	.text.SEGGER_RTT_WaitKey,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_WaitKey
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_WaitKey, %function
SEGGER_RTT_WaitKey:
.LFB20:
	.loc 1 1449 30
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI38:
	sub	sp, sp, #12
.LCFI39:
.L135:
	.loc 1 1453 9 discriminator 1
	bl	SEGGER_RTT_GetKey
	movs	r3, r0
	str	r3, [sp, #4]
	.loc 1 1454 3 discriminator 1
	ldr	r3, [sp, #4]
	cmp	r3, #0
	blt	.L135
	.loc 1 1455 10
	ldr	r3, [sp, #4]
	.loc 1 1456 1
	movs	r0, r3
	add	sp, sp, #12
	@ sp needed
	pop	{pc}
.LFE20:
	.size	SEGGER_RTT_WaitKey, .-SEGGER_RTT_WaitKey
	.section	.text.SEGGER_RTT_HasKey,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_HasKey
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_HasKey, %function
SEGGER_RTT_HasKey:
.LFB21:
	.loc 1 1472 29
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI40:
	sub	sp, sp, #20
.LCFI41:
.LBB14:
	.loc 1 1477 3
	ldr	r3, .L142
	str	r3, [sp, #8]
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L138
	.loc 1 1477 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L138:
.LBE14:
	.loc 1 1478 9 is_stmt 1
	ldr	r3, .L142+4
	str	r3, [sp, #4]
	.loc 1 1479 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #16]
	str	r3, [sp]
	.loc 1 1480 21
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #12]
	.loc 1 1480 6
	ldr	r2, [sp]
	cmp	r2, r3
	beq	.L139
	.loc 1 1481 7
	movs	r3, #1
	str	r3, [sp, #12]
	b	.L140
.L139:
	.loc 1 1483 7
	movs	r3, #0
	str	r3, [sp, #12]
.L140:
	.loc 1 1485 10
	ldr	r3, [sp, #12]
	.loc 1 1486 1
	movs	r0, r3
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.L143:
	.align	2
.L142:
	.word	_SEGGER_RTT
	.word	_SEGGER_RTT+96
.LFE21:
	.size	SEGGER_RTT_HasKey, .-SEGGER_RTT_HasKey
	.section	.text.SEGGER_RTT_HasData,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_HasData
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_HasData, %function
SEGGER_RTT_HasData:
.LFB22:
	.loc 1 1500 51
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI42:
	str	r0, [sp, #4]
	.loc 1 1504 9
	ldr	r2, [sp, #4]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r3, #96
	movs	r2, r3
	ldr	r3, .L146
	adds	r3, r2, r3
	str	r3, [sp, #12]
	.loc 1 1505 5
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	str	r3, [sp, #8]
	.loc 1 1506 19
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #16]
	.loc 1 1506 12
	ldr	r2, [sp, #8]
	subs	r3, r2, r3
	.loc 1 1507 1
	movs	r0, r3
	add	sp, sp, #16
	@ sp needed
	bx	lr
.L147:
	.align	2
.L146:
	.word	_SEGGER_RTT
.LFE22:
	.size	SEGGER_RTT_HasData, .-SEGGER_RTT_HasData
	.section	.text.SEGGER_RTT_HasDataUp,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_HasDataUp
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_HasDataUp, %function
SEGGER_RTT_HasDataUp:
.LFB23:
	.loc 1 1521 53
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI43:
	str	r0, [sp, #4]
	.loc 1 1525 9
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, .L150
	adds	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 1526 5
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #16]
	str	r3, [sp, #8]
	.loc 1 1527 15
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #12]
	.loc 1 1527 23
	ldr	r3, [sp, #8]
	subs	r3, r2, r3
	.loc 1 1528 1
	movs	r0, r3
	add	sp, sp, #16
	@ sp needed
	bx	lr
.L151:
	.align	2
.L150:
	.word	_SEGGER_RTT
.LFE23:
	.size	SEGGER_RTT_HasDataUp, .-SEGGER_RTT_HasDataUp
	.section	.text.SEGGER_RTT_AllocDownBuffer,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_AllocDownBuffer
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_AllocDownBuffer, %function
SEGGER_RTT_AllocDownBuffer:
.LFB24:
	.loc 1 1549 103
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI44:
	sub	sp, sp, #36
.LCFI45:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
.LBB15:
	.loc 1 1553 3
	ldr	r3, .L161
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L153
	.loc 1 1553 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L153:
.LBE15:
.LBB16:
	.loc 1 1554 3 is_stmt 1
	.syntax divided
@ 1554 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #20]
	.loc 1 1555 10
	ldr	r3, .L161
	str	r3, [sp, #16]
	.loc 1 1556 15
	movs	r3, #0
	str	r3, [sp, #28]
.L156:
	.loc 1 1558 35
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #100
	ldr	r3, [r3]
	.loc 1 1558 8
	cmp	r3, #0
	beq	.L160
	.loc 1 1561 16
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	str	r3, [sp, #28]
	.loc 1 1562 32
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #20]
	.loc 1 1562 3
	ldr	r2, [sp, #28]
	cmp	r2, r3
	blt	.L156
	b	.L155
.L160:
	.loc 1 1559 7
	nop
.L155:
	.loc 1 1563 27
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #20]
	.loc 1 1563 6
	ldr	r2, [sp, #28]
	cmp	r2, r3
	bge	.L157
	.loc 1 1564 45
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #96
	ldr	r2, [sp, #12]
	str	r2, [r3]
	.loc 1 1565 45
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #100
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 1 1566 45
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #104
	ldr	r2, [sp, #4]
	str	r2, [r3]
	.loc 1 1567 45
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #112
	movs	r2, #0
	str	r2, [r3]
	.loc 1 1568 45
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #108
	movs	r2, #0
	str	r2, [r3]
	.loc 1 1569 45
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #116
	ldr	r2, [sp]
	str	r2, [r3]
	b	.L158
.L157:
	.loc 1 1572 17
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp, #28]
.L158:
	.loc 1 1574 3
	ldr	r3, [sp, #20]
	.syntax divided
@ 1574 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE16:
	.loc 1 1575 10
	ldr	r3, [sp, #28]
	.loc 1 1576 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L162:
	.align	2
.L161:
	.word	_SEGGER_RTT
.LFE24:
	.size	SEGGER_RTT_AllocDownBuffer, .-SEGGER_RTT_AllocDownBuffer
	.section	.text.SEGGER_RTT_AllocUpBuffer,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_AllocUpBuffer
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_AllocUpBuffer, %function
SEGGER_RTT_AllocUpBuffer:
.LFB25:
	.loc 1 1597 101
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI46:
	sub	sp, sp, #36
.LCFI47:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
.LBB17:
	.loc 1 1601 3
	ldr	r3, .L172
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L164
	.loc 1 1601 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L164:
.LBE17:
.LBB18:
	.loc 1 1602 3 is_stmt 1
	.syntax divided
@ 1602 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #20]
	.loc 1 1603 10
	ldr	r3, .L172
	str	r3, [sp, #16]
	.loc 1 1604 15
	movs	r3, #0
	str	r3, [sp, #28]
.L167:
	.loc 1 1606 33
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #28]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #4
	ldr	r3, [r3]
	.loc 1 1606 8
	cmp	r3, #0
	beq	.L171
	.loc 1 1609 16
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	str	r3, [sp, #28]
	.loc 1 1610 32
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #16]
	.loc 1 1610 3
	ldr	r2, [sp, #28]
	cmp	r2, r3
	blt	.L167
	b	.L166
.L171:
	.loc 1 1607 7
	nop
.L166:
	.loc 1 1611 27
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #16]
	.loc 1 1611 6
	ldr	r2, [sp, #28]
	cmp	r2, r3
	bge	.L168
	.loc 1 1612 43
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #28]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [sp, #12]
	str	r2, [r3, r1]
	.loc 1 1613 43
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #28]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #4
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 1 1614 43
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #32
	ldr	r2, [sp, #4]
	str	r2, [r3]
	.loc 1 1615 43
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #40
	movs	r2, #0
	str	r2, [r3]
	.loc 1 1616 43
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #36
	movs	r2, #0
	str	r2, [r3]
	.loc 1 1617 43
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #44
	ldr	r2, [sp]
	str	r2, [r3]
	b	.L169
.L168:
	.loc 1 1620 17
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp, #28]
.L169:
	.loc 1 1622 3
	ldr	r3, [sp, #20]
	.syntax divided
@ 1622 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE18:
	.loc 1 1623 10
	ldr	r3, [sp, #28]
	.loc 1 1624 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L173:
	.align	2
.L172:
	.word	_SEGGER_RTT
.LFE25:
	.size	SEGGER_RTT_AllocUpBuffer, .-SEGGER_RTT_AllocUpBuffer
	.section	.text.SEGGER_RTT_ConfigUpBuffer,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_ConfigUpBuffer
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_ConfigUpBuffer, %function
SEGGER_RTT_ConfigUpBuffer:
.LFB26:
	.loc 1 1651 124
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI48:
	sub	sp, sp, #44
.LCFI49:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
.LBB19:
	.loc 1 1656 3
	ldr	r3, .L180
	str	r3, [sp, #32]
	ldr	r3, [sp, #32]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L175
	.loc 1 1656 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L175:
.LBE19:
	.loc 1 1657 10 is_stmt 1
	ldr	r3, .L180
	str	r3, [sp, #28]
	.loc 1 1658 6
	ldr	r3, [sp, #12]
	cmp	r3, #2
	bhi	.L176
.LBB20:
	.loc 1 1659 5
	.syntax divided
@ 1659 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #24]
	.loc 1 1660 9
	ldr	r3, [sp, #12]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [sp, #28]
	adds	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 1661 8
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L177
	.loc 1 1662 25
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 1 1663 25
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #4]
	str	r2, [r3, #4]
	.loc 1 1664 25
	ldr	r3, [sp, #20]
	ldr	r2, [sp]
	str	r2, [r3, #8]
	.loc 1 1665 25
	ldr	r3, [sp, #20]
	movs	r2, #0
	str	r2, [r3, #16]
	.loc 1 1666 25
	ldr	r3, [sp, #20]
	movs	r2, #0
	str	r2, [r3, #12]
.L177:
	.loc 1 1668 25
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #48]
	str	r2, [r3, #20]
	.loc 1 1669 5
	ldr	r3, [sp, #24]
	.syntax divided
@ 1669 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE20:
	.loc 1 1670 7
	movs	r3, #0
	str	r3, [sp, #36]
	b	.L178
.L176:
	.loc 1 1672 7
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp, #36]
.L178:
	.loc 1 1674 10
	ldr	r3, [sp, #36]
	.loc 1 1675 1
	movs	r0, r3
	add	sp, sp, #44
	@ sp needed
	pop	{pc}
.L181:
	.align	2
.L180:
	.word	_SEGGER_RTT
.LFE26:
	.size	SEGGER_RTT_ConfigUpBuffer, .-SEGGER_RTT_ConfigUpBuffer
	.section	.text.SEGGER_RTT_ConfigDownBuffer,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_ConfigDownBuffer
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_ConfigDownBuffer, %function
SEGGER_RTT_ConfigDownBuffer:
.LFB27:
	.loc 1 1702 126
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI50:
	sub	sp, sp, #44
.LCFI51:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
.LBB21:
	.loc 1 1707 3
	ldr	r3, .L188
	str	r3, [sp, #32]
	ldr	r3, [sp, #32]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L183
	.loc 1 1707 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L183:
.LBE21:
	.loc 1 1708 10 is_stmt 1
	ldr	r3, .L188
	str	r3, [sp, #28]
	.loc 1 1709 6
	ldr	r3, [sp, #12]
	cmp	r3, #2
	bhi	.L184
.LBB22:
	.loc 1 1710 5
	.syntax divided
@ 1710 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #24]
	.loc 1 1711 11
	ldr	r2, [sp, #12]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r3, #96
	ldr	r2, [sp, #28]
	adds	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 1712 8
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L185
	.loc 1 1713 27
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 1 1714 27
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #4]
	str	r2, [r3, #4]
	.loc 1 1715 27
	ldr	r3, [sp, #20]
	ldr	r2, [sp]
	str	r2, [r3, #8]
	.loc 1 1716 27
	ldr	r3, [sp, #20]
	movs	r2, #0
	str	r2, [r3, #16]
	.loc 1 1717 27
	ldr	r3, [sp, #20]
	movs	r2, #0
	str	r2, [r3, #12]
.L185:
	.loc 1 1719 27
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #48]
	str	r2, [r3, #20]
	.loc 1 1721 5
	ldr	r3, [sp, #24]
	.syntax divided
@ 1721 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE22:
	.loc 1 1722 7
	movs	r3, #0
	str	r3, [sp, #36]
	b	.L186
.L184:
	.loc 1 1724 7
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp, #36]
.L186:
	.loc 1 1726 10
	ldr	r3, [sp, #36]
	.loc 1 1727 1
	movs	r0, r3
	add	sp, sp, #44
	@ sp needed
	pop	{pc}
.L189:
	.align	2
.L188:
	.word	_SEGGER_RTT
.LFE27:
	.size	SEGGER_RTT_ConfigDownBuffer, .-SEGGER_RTT_ConfigDownBuffer
	.section	.text.SEGGER_RTT_SetNameUpBuffer,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_SetNameUpBuffer
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_SetNameUpBuffer, %function
SEGGER_RTT_SetNameUpBuffer:
.LFB28:
	.loc 1 1745 73
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI52:
	sub	sp, sp, #36
.LCFI53:
	str	r0, [sp, #4]
	str	r1, [sp]
.LBB23:
	.loc 1 1750 3
	ldr	r3, .L195
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L191
	.loc 1 1750 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L191:
.LBE23:
	.loc 1 1751 10 is_stmt 1
	ldr	r3, .L195
	str	r3, [sp, #20]
	.loc 1 1752 6
	ldr	r3, [sp, #4]
	cmp	r3, #2
	bhi	.L192
.LBB24:
	.loc 1 1753 5
	.syntax divided
@ 1753 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #16]
	.loc 1 1754 9
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #12]
	.loc 1 1755 16
	ldr	r3, [sp, #12]
	ldr	r2, [sp]
	str	r2, [r3]
	.loc 1 1756 5
	ldr	r3, [sp, #16]
	.syntax divided
@ 1756 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE24:
	.loc 1 1757 7
	movs	r3, #0
	str	r3, [sp, #28]
	b	.L193
.L192:
	.loc 1 1759 7
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp, #28]
.L193:
	.loc 1 1761 10
	ldr	r3, [sp, #28]
	.loc 1 1762 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L196:
	.align	2
.L195:
	.word	_SEGGER_RTT
.LFE28:
	.size	SEGGER_RTT_SetNameUpBuffer, .-SEGGER_RTT_SetNameUpBuffer
	.section	.text.SEGGER_RTT_SetNameDownBuffer,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_SetNameDownBuffer
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_SetNameDownBuffer, %function
SEGGER_RTT_SetNameDownBuffer:
.LFB29:
	.loc 1 1780 75
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI54:
	sub	sp, sp, #36
.LCFI55:
	str	r0, [sp, #4]
	str	r1, [sp]
.LBB25:
	.loc 1 1785 3
	ldr	r3, .L202
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L198
	.loc 1 1785 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L198:
.LBE25:
	.loc 1 1786 10 is_stmt 1
	ldr	r3, .L202
	str	r3, [sp, #20]
	.loc 1 1787 6
	ldr	r3, [sp, #4]
	cmp	r3, #2
	bhi	.L199
.LBB26:
	.loc 1 1788 5
	.syntax divided
@ 1788 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #16]
	.loc 1 1789 11
	ldr	r2, [sp, #4]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r3, #96
	ldr	r2, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #12]
	.loc 1 1790 18
	ldr	r3, [sp, #12]
	ldr	r2, [sp]
	str	r2, [r3]
	.loc 1 1791 5
	ldr	r3, [sp, #16]
	.syntax divided
@ 1791 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE26:
	.loc 1 1792 7
	movs	r3, #0
	str	r3, [sp, #28]
	b	.L200
.L199:
	.loc 1 1794 7
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp, #28]
.L200:
	.loc 1 1796 10
	ldr	r3, [sp, #28]
	.loc 1 1797 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L203:
	.align	2
.L202:
	.word	_SEGGER_RTT
.LFE29:
	.size	SEGGER_RTT_SetNameDownBuffer, .-SEGGER_RTT_SetNameDownBuffer
	.section	.text.SEGGER_RTT_SetFlagsUpBuffer,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_SetFlagsUpBuffer
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_SetFlagsUpBuffer, %function
SEGGER_RTT_SetFlagsUpBuffer:
.LFB30:
	.loc 1 1815 71
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI56:
	sub	sp, sp, #36
.LCFI57:
	str	r0, [sp, #4]
	str	r1, [sp]
.LBB27:
	.loc 1 1820 3
	ldr	r3, .L209
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L205
	.loc 1 1820 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L205:
.LBE27:
	.loc 1 1821 10 is_stmt 1
	ldr	r3, .L209
	str	r3, [sp, #20]
	.loc 1 1822 6
	ldr	r3, [sp, #4]
	cmp	r3, #2
	bhi	.L206
.LBB28:
	.loc 1 1823 5
	.syntax divided
@ 1823 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #16]
	.loc 1 1824 9
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #12]
	.loc 1 1825 16
	ldr	r3, [sp, #12]
	ldr	r2, [sp]
	str	r2, [r3, #20]
	.loc 1 1826 5
	ldr	r3, [sp, #16]
	.syntax divided
@ 1826 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE28:
	.loc 1 1827 7
	movs	r3, #0
	str	r3, [sp, #28]
	b	.L207
.L206:
	.loc 1 1829 7
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp, #28]
.L207:
	.loc 1 1831 10
	ldr	r3, [sp, #28]
	.loc 1 1832 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L210:
	.align	2
.L209:
	.word	_SEGGER_RTT
.LFE30:
	.size	SEGGER_RTT_SetFlagsUpBuffer, .-SEGGER_RTT_SetFlagsUpBuffer
	.section	.text.SEGGER_RTT_SetFlagsDownBuffer,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_SetFlagsDownBuffer
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_SetFlagsDownBuffer, %function
SEGGER_RTT_SetFlagsDownBuffer:
.LFB31:
	.loc 1 1850 73
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI58:
	sub	sp, sp, #36
.LCFI59:
	str	r0, [sp, #4]
	str	r1, [sp]
.LBB29:
	.loc 1 1855 3
	ldr	r3, .L216
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L212
	.loc 1 1855 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L212:
.LBE29:
	.loc 1 1856 10 is_stmt 1
	ldr	r3, .L216
	str	r3, [sp, #20]
	.loc 1 1857 6
	ldr	r3, [sp, #4]
	cmp	r3, #2
	bhi	.L213
.LBB30:
	.loc 1 1858 5
	.syntax divided
@ 1858 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #16]
	.loc 1 1859 11
	ldr	r2, [sp, #4]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r3, #96
	ldr	r2, [sp, #20]
	adds	r3, r2, r3
	str	r3, [sp, #12]
	.loc 1 1860 18
	ldr	r3, [sp, #12]
	ldr	r2, [sp]
	str	r2, [r3, #20]
	.loc 1 1861 5
	ldr	r3, [sp, #16]
	.syntax divided
@ 1861 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE30:
	.loc 1 1862 7
	movs	r3, #0
	str	r3, [sp, #28]
	b	.L214
.L213:
	.loc 1 1864 7
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp, #28]
.L214:
	.loc 1 1866 10
	ldr	r3, [sp, #28]
	.loc 1 1867 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L217:
	.align	2
.L216:
	.word	_SEGGER_RTT
.LFE31:
	.size	SEGGER_RTT_SetFlagsDownBuffer, .-SEGGER_RTT_SetFlagsDownBuffer
	.section	.text.SEGGER_RTT_Init,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_Init
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_Init, %function
SEGGER_RTT_Init:
.LFB32:
	.loc 1 1878 29
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI60:
	.loc 1 1879 3
	bl	_DoInit
	.loc 1 1880 1
	nop
	@ sp needed
	pop	{r4, pc}
.LFE32:
	.size	SEGGER_RTT_Init, .-SEGGER_RTT_Init
	.section	.text.SEGGER_RTT_SetTerminal,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_SetTerminal
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_SetTerminal, %function
SEGGER_RTT_SetTerminal:
.LFB33:
	.loc 1 1899 55
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI61:
	sub	sp, sp, #36
.LCFI62:
	movs	r2, r0
	mov	r3, sp
	adds	r3, r3, #7
	strb	r2, [r3]
.LBB31:
	.loc 1 1905 3
	ldr	r3, .L227
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L220
	.loc 1 1905 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L220:
.LBE31:
	.loc 1 1906 5 is_stmt 1
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 1 1907 9
	add	r3, sp, #8
	movs	r2, #255
	strb	r2, [r3]
	.loc 1 1908 6
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	cmp	r3, #15
	bhi	.L221
	.loc 1 1909 25
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	ldr	r2, .L227+4
	ldrb	r2, [r2, r3]
	.loc 1 1909 11
	add	r3, sp, #8
	strb	r2, [r3, #1]
	.loc 1 1910 11
	ldr	r3, .L227+8
	str	r3, [sp, #20]
.LBB32:
	.loc 1 1911 5
	.syntax divided
@ 1911 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #16]
	.loc 1 1912 15
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #20]
	.loc 1 1912 23
	movs	r2, #3
	ands	r3, r2
	.loc 1 1912 8
	cmp	r3, #2
	bne	.L222
	.loc 1 1913 23
	ldr	r3, .L227+12
	mov	r2, sp
	adds	r2, r2, #7
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 1914 7
	add	r1, sp, #8
	ldr	r3, [sp, #20]
	movs	r2, #2
	movs	r0, r3
	bl	_WriteBlocking
	b	.L223
.L222:
	.loc 1 1916 15
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	_GetAvailWriteSpace
	movs	r3, r0
	str	r3, [sp, #12]
	.loc 1 1917 10
	ldr	r3, [sp, #12]
	cmp	r3, #1
	bls	.L224
	.loc 1 1918 25
	ldr	r3, .L227+12
	mov	r2, sp
	adds	r2, r2, #7
	ldrb	r2, [r2]
	strb	r2, [r3]
	.loc 1 1919 9
	add	r1, sp, #8
	ldr	r3, [sp, #20]
	movs	r2, #2
	movs	r0, r3
	bl	_WriteNoCheck
	b	.L223
.L224:
	.loc 1 1921 11
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp, #28]
.L223:
	.loc 1 1924 5
	ldr	r3, [sp, #16]
	.syntax divided
@ 1924 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE32:
	b	.L225
.L221:
	.loc 1 1926 7
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp, #28]
.L225:
	.loc 1 1928 10
	ldr	r3, [sp, #28]
	.loc 1 1929 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L228:
	.align	2
.L227:
	.word	_SEGGER_RTT
	.word	_aTerminalId
	.word	_SEGGER_RTT+24
	.word	_ActiveTerminal
.LFE33:
	.size	SEGGER_RTT_SetTerminal, .-SEGGER_RTT_SetTerminal
	.section	.text.SEGGER_RTT_TerminalOut,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_TerminalOut
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_TerminalOut, %function
SEGGER_RTT_TerminalOut:
.LFB34:
	.loc 1 1948 70
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI63:
	sub	sp, sp, #36
.LCFI64:
	movs	r2, r0
	str	r1, [sp]
	mov	r3, sp
	adds	r3, r3, #7
	strb	r2, [r3]
.LBB33:
	.loc 1 1954 3
	ldr	r3, .L244
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L230
	.loc 1 1954 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L230:
.LBE33:
	.loc 1 1958 6 is_stmt 1
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r3, [r3]
	cmp	r3, #15
	bls	.LCB2992
	b	.L231	@long jump
.LCB2992:
	.loc 1 1962 11
	ldr	r3, .L244+4
	str	r3, [sp, #20]
	.loc 1 1967 15
	ldr	r3, [sp]
	movs	r0, r3
	bl	strlen
	movs	r3, r0
	str	r3, [sp, #16]
.LBB34:
	.loc 1 1971 5
	.syntax divided
@ 1971 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	mrs   r3, primask  
	movs  r1, #1       
	msr   primask, r1  
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #12]
	.loc 1 1972 13
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	_GetAvailWriteSpace
	movs	r3, r0
	str	r3, [sp, #8]
	.loc 1 1973 18
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #20]
	.loc 1 1973 26
	movs	r2, #3
	ands	r3, r2
	.loc 1 1973 5
	cmp	r3, #2
	beq	.L232
	bhi	.L233
	cmp	r3, #0
	beq	.L234
	cmp	r3, #1
	beq	.L235
	b	.L233
.L234:
	.loc 1 1979 28
	ldr	r3, [sp, #16]
	adds	r3, r3, #4
	.loc 1 1979 10
	ldr	r2, [sp, #8]
	cmp	r2, r3
	bcs	.L236
	.loc 1 1980 16
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 1 1986 7
	b	.L238
.L236:
	.loc 1 1982 9
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r2, [r3]
	ldr	r3, [sp, #20]
	movs	r1, r2
	movs	r0, r3
	bl	_PostTerminalSwitch
	.loc 1 1983 23
	ldr	r2, [sp, #16]
	ldr	r1, [sp]
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	_WriteBlocking
	movs	r3, r0
	.loc 1 1983 16
	str	r3, [sp, #28]
	.loc 1 1984 9
	ldr	r3, .L244+8
	ldrb	r2, [r3]
	ldr	r3, [sp, #20]
	movs	r1, r2
	movs	r0, r3
	bl	_PostTerminalSwitch
	.loc 1 1986 7
	b	.L238
.L235:
	.loc 1 1993 10
	ldr	r3, [sp, #8]
	cmp	r3, #3
	bhi	.L239
	.loc 1 1994 16
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp, #28]
	.loc 1 2000 7
	b	.L238
.L239:
	.loc 1 1996 9
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r2, [r3]
	ldr	r3, [sp, #20]
	movs	r1, r2
	movs	r0, r3
	bl	_PostTerminalSwitch
	.loc 1 1997 66
	ldr	r3, [sp, #8]
	subs	r2, r3, #4
	.loc 1 1997 23
	ldr	r3, [sp, #16]
	cmp	r3, r2
	bls	.L241
	movs	r3, r2
.L241:
	ldr	r1, [sp]
	ldr	r0, [sp, #20]
	movs	r2, r3
	bl	_WriteBlocking
	movs	r3, r0
	.loc 1 1997 16
	str	r3, [sp, #28]
	.loc 1 1998 9
	ldr	r3, .L244+8
	ldrb	r2, [r3]
	ldr	r3, [sp, #20]
	movs	r1, r2
	movs	r0, r3
	bl	_PostTerminalSwitch
	.loc 1 2000 7
	b	.L238
.L232:
	.loc 1 2005 7
	mov	r3, sp
	adds	r3, r3, #7
	ldrb	r2, [r3]
	ldr	r3, [sp, #20]
	movs	r1, r2
	movs	r0, r3
	bl	_PostTerminalSwitch
	.loc 1 2006 21
	ldr	r2, [sp, #16]
	ldr	r1, [sp]
	ldr	r3, [sp, #20]
	movs	r0, r3
	bl	_WriteBlocking
	movs	r3, r0
	.loc 1 2006 14
	str	r3, [sp, #28]
	.loc 1 2007 7
	ldr	r3, .L244+8
	ldrb	r2, [r3]
	ldr	r3, [sp, #20]
	movs	r1, r2
	movs	r0, r3
	bl	_PostTerminalSwitch
	.loc 1 2008 7
	b	.L238
.L233:
	.loc 1 2010 14
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp, #28]
	.loc 1 2011 7
	nop
.L238:
	.loc 1 2016 5
	ldr	r3, [sp, #12]
	.syntax divided
@ 2016 "C:\Users\wojte\Documents\SEGGER Embedded Studio for ARM Projects\GitHub\STM32G0_Project\STM32G0_ZEGAR_FreeRTOS\stm32g0_ZEGAR_FreeRTOS\SEGGER_RTT.c" 1
	msr   primask, r3  
	
@ 0 "" 2
	.thumb
	.syntax unified
.LBE34:
	b	.L242
.L231:
	.loc 1 2018 12
	movs	r3, #1
	rsbs	r3, r3, #0
	str	r3, [sp, #28]
.L242:
	.loc 1 2020 10
	ldr	r3, [sp, #28]
	.loc 1 2021 1
	movs	r0, r3
	add	sp, sp, #36
	@ sp needed
	pop	{pc}
.L245:
	.align	2
.L244:
	.word	_SEGGER_RTT
	.word	_SEGGER_RTT+24
	.word	_ActiveTerminal
.LFE34:
	.size	SEGGER_RTT_TerminalOut, .-SEGGER_RTT_TerminalOut
	.section	.text.SEGGER_RTT_GetAvailWriteSpace,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_GetAvailWriteSpace
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_GetAvailWriteSpace, %function
SEGGER_RTT_GetAvailWriteSpace:
.LFB35:
	.loc 1 2036 63
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI65:
	sub	sp, sp, #20
.LCFI66:
	str	r0, [sp, #4]
	.loc 1 2039 9
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, .L248
	adds	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 2040 10
	ldr	r3, [sp, #12]
	movs	r0, r3
	bl	_GetAvailWriteSpace
	movs	r3, r0
	.loc 1 2041 1
	movs	r0, r3
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.L249:
	.align	2
.L248:
	.word	_SEGGER_RTT
.LFE35:
	.size	SEGGER_RTT_GetAvailWriteSpace, .-SEGGER_RTT_GetAvailWriteSpace
	.section	.text.SEGGER_RTT_GetBytesInBuffer,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_GetBytesInBuffer
	.syntax unified
	.code	16
	.thumb_func
	.type	SEGGER_RTT_GetBytesInBuffer, %function
SEGGER_RTT_GetBytesInBuffer:
.LFB36:
	.loc 1 2057 60
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
.LCFI67:
	str	r0, [sp, #4]
	.loc 1 2066 10
	ldr	r3, .L254
	str	r3, [sp, #16]
	.loc 1 2067 9
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #4]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #40
	ldr	r3, [r3]
	str	r3, [sp, #12]
	.loc 1 2068 9
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #4]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #36
	ldr	r3, [r3]
	str	r3, [sp, #8]
	.loc 1 2069 6
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bhi	.L251
	.loc 1 2070 7
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	subs	r3, r2, r3
	str	r3, [sp, #20]
	b	.L252
.L251:
	.loc 1 2072 33
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #4]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r1, r3
	adds	r3, r3, #32
	ldr	r2, [r3]
	.loc 1 2072 47
	ldr	r1, [sp, #12]
	ldr	r3, [sp, #8]
	subs	r3, r1, r3
	.loc 1 2072 7
	adds	r3, r2, r3
	str	r3, [sp, #20]
.L252:
	.loc 1 2074 10
	ldr	r3, [sp, #20]
	.loc 1 2075 1
	movs	r0, r3
	add	sp, sp, #24
	@ sp needed
	bx	lr
.L255:
	.align	2
.L254:
	.word	_SEGGER_RTT
.LFE36:
	.size	SEGGER_RTT_GetBytesInBuffer, .-SEGGER_RTT_GetBytesInBuffer
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
	.uleb128 0x10
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
	.uleb128 0x28
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
	.uleb128 0x18
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
	.uleb128 0x18
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI9-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x38
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI11-.LFB6
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x38
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI13-.LFB7
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI15-.LFB8
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI17-.LFB9
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI19-.LFB10
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x38
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI21-.LFB11
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI23-.LFB12
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI25-.LFB13
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI27-.LFB14
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI29-.LFB15
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI31-.LFB16
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
	.4byte	.LCFI32-.LFB17
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI34-.LFB18
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI36-.LFB19
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI38-.LFB20
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x10
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
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI42-.LFB22
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI43-.LFB23
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
	.4byte	.LCFI44-.LFB24
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI46-.LFB25
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI48-.LFB26
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI50-.LFB27
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI51-.LCFI50
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI52-.LFB28
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI54-.LFB29
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI56-.LFB30
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI57-.LCFI56
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI58-.LFB31
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI60-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI61-.LFB33
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI63-.LFB34
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI65-.LFB35
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI66-.LCFI65
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI67-.LFB36
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE72:
	.text
.Letext0:
	.file 2 "C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\\SEGGER_RTT.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x15ce
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF785
	.byte	0xc
	.4byte	.LASF786
	.4byte	.LASF787
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
	.4byte	.LASF709
	.uleb128 0x4
	.4byte	0x2f
	.uleb128 0x5
	.4byte	0x2f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF710
	.uleb128 0x5
	.4byte	0x40
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF711
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF712
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x8
	.byte	0x18
	.byte	0x2
	.byte	0xe5
	.byte	0x9
	.4byte	0xbb
	.uleb128 0x9
	.4byte	.LASF713
	.byte	0x2
	.byte	0xe6
	.byte	0x16
	.4byte	0x29
	.byte	0
	.uleb128 0x9
	.4byte	.LASF714
	.byte	0x2
	.byte	0xe7
	.byte	0x16
	.4byte	0xbb
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF715
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x40
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF716
	.byte	0x2
	.byte	0xe9
	.byte	0x16
	.4byte	0x40
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF717
	.byte	0x2
	.byte	0xea
	.byte	0x16
	.4byte	0x47
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF718
	.byte	0x2
	.byte	0xeb
	.byte	0x16
	.4byte	0x40
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x2f
	.uleb128 0xa
	.4byte	.LASF719
	.byte	0x2
	.byte	0xec
	.byte	0x3
	.4byte	0x63
	.uleb128 0x5
	.4byte	0xc1
	.uleb128 0x8
	.byte	0x18
	.byte	0x2
	.byte	0xf2
	.byte	0x9
	.4byte	0x12a
	.uleb128 0x9
	.4byte	.LASF713
	.byte	0x2
	.byte	0xf3
	.byte	0x16
	.4byte	0x29
	.byte	0
	.uleb128 0x9
	.4byte	.LASF714
	.byte	0x2
	.byte	0xf4
	.byte	0x16
	.4byte	0xbb
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF715
	.byte	0x2
	.byte	0xf5
	.byte	0x16
	.4byte	0x40
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF716
	.byte	0x2
	.byte	0xf6
	.byte	0x16
	.4byte	0x47
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF717
	.byte	0x2
	.byte	0xf7
	.byte	0x16
	.4byte	0x40
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF718
	.byte	0x2
	.byte	0xf8
	.byte	0x16
	.4byte	0x40
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.4byte	.LASF720
	.byte	0x2
	.byte	0xf9
	.byte	0x3
	.4byte	0xd2
	.uleb128 0x5
	.4byte	0x12a
	.uleb128 0xb
	.byte	0xa8
	.byte	0x2
	.2byte	0x100
	.byte	0x9
	.4byte	0x18c
	.uleb128 0xc
	.4byte	.LASF721
	.byte	0x2
	.2byte	0x101
	.byte	0x1b
	.4byte	0x18c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF722
	.byte	0x2
	.2byte	0x102
	.byte	0x1b
	.4byte	0x4c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF723
	.byte	0x2
	.2byte	0x103
	.byte	0x1b
	.4byte	0x4c
	.byte	0x14
	.uleb128 0xd
	.ascii	"aUp\000"
	.byte	0x2
	.2byte	0x104
	.byte	0x1b
	.4byte	0x19c
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF724
	.byte	0x2
	.2byte	0x105
	.byte	0x1b
	.4byte	0x1ac
	.byte	0x60
	.byte	0
	.uleb128 0xe
	.4byte	0x2f
	.4byte	0x19c
	.uleb128 0xf
	.4byte	0x40
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.4byte	0xc1
	.4byte	0x1ac
	.uleb128 0xf
	.4byte	0x40
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	0x12a
	.4byte	0x1bc
	.uleb128 0xf
	.4byte	0x40
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF725
	.byte	0x2
	.2byte	0x109
	.byte	0x3
	.4byte	0x13b
	.uleb128 0x5
	.4byte	0x1bc
	.uleb128 0x11
	.4byte	.LASF788
	.byte	0x2
	.2byte	0x111
	.byte	0x16
	.4byte	0x1bc
	.uleb128 0xe
	.4byte	0x1eb
	.4byte	0x1eb
	.uleb128 0xf
	.4byte	0x40
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF726
	.uleb128 0x12
	.4byte	.LASF727
	.byte	0x1
	.2byte	0x101
	.byte	0x16
	.4byte	0x1db
	.uleb128 0x5
	.byte	0x3
	.4byte	_aTerminalId
	.uleb128 0x13
	.4byte	0x1ce
	.byte	0x1
	.2byte	0x10d
	.byte	0x1
	.uleb128 0x5
	.byte	0x3
	.4byte	_SEGGER_RTT
	.uleb128 0xe
	.4byte	0x2f
	.4byte	0x225
	.uleb128 0x14
	.4byte	0x40
	.2byte	0x3ff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF728
	.byte	0x1
	.2byte	0x10e
	.byte	0x1
	.4byte	0x214
	.uleb128 0x5
	.byte	0x3
	.4byte	_acUpBuffer
	.uleb128 0x12
	.4byte	.LASF729
	.byte	0x1
	.2byte	0x10f
	.byte	0x1
	.4byte	0x18c
	.uleb128 0x5
	.byte	0x3
	.4byte	_acDownBuffer
	.uleb128 0x12
	.4byte	.LASF730
	.byte	0x1
	.2byte	0x111
	.byte	0x16
	.4byte	0x1eb
	.uleb128 0x5
	.byte	0x3
	.4byte	_ActiveTerminal
	.uleb128 0x15
	.4byte	.LASF732
	.byte	0x1
	.2byte	0x809
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c8
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x809
	.byte	0x2f
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF717
	.byte	0x1
	.2byte	0x80a
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF716
	.byte	0x1
	.2byte	0x80b
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x80c
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x12
	.4byte	.LASF731
	.byte	0x1
	.2byte	0x80d
	.byte	0x1b
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x1c9
	.uleb128 0x18
	.4byte	.LASF733
	.byte	0x1
	.2byte	0x7f4
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30a
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x7f4
	.byte	0x32
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x7f5
	.byte	0x19
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x18
	.4byte	.LASF736
	.byte	0x1
	.2byte	0x79c
	.byte	0x5
	.4byte	0x4c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c2
	.uleb128 0x16
	.4byte	.LASF737
	.byte	0x1
	.2byte	0x79c
	.byte	0x2b
	.4byte	0x1eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x19
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x79c
	.byte	0x43
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF738
	.byte	0x1
	.2byte	0x79d
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF739
	.byte	0x1
	.2byte	0x79e
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF740
	.byte	0x1
	.2byte	0x79f
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x7a0
	.byte	0x19
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x3a7
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x7a2
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x7b3
	.byte	0x5
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF743
	.byte	0x1
	.2byte	0x76b
	.byte	0x5
	.4byte	0x4c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x463
	.uleb128 0x16
	.4byte	.LASF737
	.byte	0x1
	.2byte	0x76b
	.byte	0x2b
	.4byte	0x1eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x17
	.ascii	"ac\000"
	.byte	0x1
	.2byte	0x76c
	.byte	0x19
	.4byte	0x463
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x76d
	.byte	0x19
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF740
	.byte	0x1
	.2byte	0x76e
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x76f
	.byte	0x7
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0x448
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x771
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x777
	.byte	0x5
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x1eb
	.4byte	0x473
	.uleb128 0xf
	.4byte	0x40
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF789
	.byte	0x1
	.2byte	0x756
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF744
	.byte	0x1
	.2byte	0x73a
	.byte	0x5
	.4byte	0x4c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x528
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x73a
	.byte	0x2c
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF718
	.byte	0x1
	.2byte	0x73a
	.byte	0x42
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x73b
	.byte	0x7
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF731
	.byte	0x1
	.2byte	0x73c
	.byte	0x1b
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF745
	.byte	0x1
	.2byte	0x73d
	.byte	0x24
	.4byte	0x528
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x50d
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x73f
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x742
	.byte	0x5
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x136
	.uleb128 0x18
	.4byte	.LASF746
	.byte	0x1
	.2byte	0x717
	.byte	0x5
	.4byte	0x4c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d0
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x717
	.byte	0x2a
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF718
	.byte	0x1
	.2byte	0x717
	.byte	0x40
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x718
	.byte	0x7
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF731
	.byte	0x1
	.2byte	0x719
	.byte	0x1b
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"pUp\000"
	.byte	0x1
	.2byte	0x71a
	.byte	0x22
	.4byte	0x5d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x5b5
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x71c
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x71f
	.byte	0x5
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0xcd
	.uleb128 0x18
	.4byte	.LASF747
	.byte	0x1
	.2byte	0x6f4
	.byte	0x5
	.4byte	0x4c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x678
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x6f4
	.byte	0x2b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF713
	.byte	0x1
	.2byte	0x6f4
	.byte	0x44
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x6f5
	.byte	0x7
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF731
	.byte	0x1
	.2byte	0x6f6
	.byte	0x1b
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF745
	.byte	0x1
	.2byte	0x6f7
	.byte	0x24
	.4byte	0x528
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x65d
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x6f9
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x6fc
	.byte	0x5
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF748
	.byte	0x1
	.2byte	0x6d1
	.byte	0x5
	.4byte	0x4c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71a
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x6d1
	.byte	0x29
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF713
	.byte	0x1
	.2byte	0x6d1
	.byte	0x42
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x6d2
	.byte	0x7
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF731
	.byte	0x1
	.2byte	0x6d3
	.byte	0x1b
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"pUp\000"
	.byte	0x1
	.2byte	0x6d4
	.byte	0x22
	.4byte	0x5d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x6ff
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x6d6
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x6d9
	.byte	0x5
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x6a6
	.byte	0x5
	.4byte	0x4c
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ec
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x6a6
	.byte	0x2a
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF713
	.byte	0x1
	.2byte	0x6a6
	.byte	0x43
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x6a6
	.byte	0x50
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF750
	.byte	0x1
	.2byte	0x6a6
	.byte	0x62
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LASF718
	.byte	0x1
	.2byte	0x6a6
	.byte	0x77
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x6a7
	.byte	0x7
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF731
	.byte	0x1
	.2byte	0x6a8
	.byte	0x1b
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF745
	.byte	0x1
	.2byte	0x6a9
	.byte	0x24
	.4byte	0x528
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x7d1
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x6ab
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x6ae
	.byte	0x5
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF751
	.byte	0x1
	.2byte	0x673
	.byte	0x5
	.4byte	0x4c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8be
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x673
	.byte	0x28
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF713
	.byte	0x1
	.2byte	0x673
	.byte	0x41
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x673
	.byte	0x4e
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF750
	.byte	0x1
	.2byte	0x673
	.byte	0x60
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LASF718
	.byte	0x1
	.2byte	0x673
	.byte	0x75
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x674
	.byte	0x7
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF731
	.byte	0x1
	.2byte	0x675
	.byte	0x1b
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"pUp\000"
	.byte	0x1
	.2byte	0x676
	.byte	0x22
	.4byte	0x5d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x8a3
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x678
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x67b
	.byte	0x5
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF752
	.byte	0x1
	.2byte	0x63d
	.byte	0x5
	.4byte	0x4c
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x972
	.uleb128 0x16
	.4byte	.LASF713
	.byte	0x1
	.2byte	0x63d
	.byte	0x2a
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x63d
	.byte	0x37
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.4byte	.LASF750
	.byte	0x1
	.2byte	0x63d
	.byte	0x49
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF718
	.byte	0x1
	.2byte	0x63d
	.byte	0x5e
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x63e
	.byte	0x7
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF731
	.byte	0x1
	.2byte	0x63f
	.byte	0x1b
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x957
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x641
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x642
	.byte	0x3
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF753
	.byte	0x1
	.2byte	0x60d
	.byte	0x5
	.4byte	0x4c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa26
	.uleb128 0x16
	.4byte	.LASF713
	.byte	0x1
	.2byte	0x60d
	.byte	0x2c
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x60d
	.byte	0x39
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.4byte	.LASF750
	.byte	0x1
	.2byte	0x60d
	.byte	0x4b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF718
	.byte	0x1
	.2byte	0x60d
	.byte	0x60
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x60e
	.byte	0x7
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF731
	.byte	0x1
	.2byte	0x60f
	.byte	0x1b
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0xa0b
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x611
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x612
	.byte	0x3
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF754
	.byte	0x1
	.2byte	0x5f1
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa70
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x5f1
	.byte	0x28
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x5f2
	.byte	0x19
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x17
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x5f3
	.byte	0x1b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x15
	.4byte	.LASF755
	.byte	0x1
	.2byte	0x5dc
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaba
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x5dc
	.byte	0x26
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x5dd
	.byte	0x1b
	.4byte	0xaba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x17
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x5de
	.byte	0x1b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x12a
	.uleb128 0x18
	.4byte	.LASF756
	.byte	0x1
	.2byte	0x5c0
	.byte	0x5
	.4byte	0x4c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb24
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x5c1
	.byte	0x1b
	.4byte	0xaba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF717
	.byte	0x1
	.2byte	0x5c2
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x5c3
	.byte	0x7
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x5c5
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF757
	.byte	0x1
	.2byte	0x5a9
	.byte	0x5
	.4byte	0x4c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4e
	.uleb128 0x17
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x5aa
	.byte	0x7
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x18
	.4byte	.LASF758
	.byte	0x1
	.2byte	0x58d
	.byte	0x5
	.4byte	0x4c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb86
	.uleb128 0x17
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x58e
	.byte	0x8
	.4byte	0x2f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x17
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x58f
	.byte	0x7
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x18
	.4byte	.LASF759
	.byte	0x1
	.2byte	0x54e
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc38
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x54e
	.byte	0x26
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x54e
	.byte	0x38
	.4byte	0x2f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x54f
	.byte	0x19
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF716
	.byte	0x1
	.2byte	0x550
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF738
	.byte	0x1
	.2byte	0x551
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF760
	.byte	0x1
	.2byte	0x552
	.byte	0x19
	.4byte	0xc38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0xc1d
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x556
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x557
	.byte	0x3
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x3b
	.uleb128 0x18
	.4byte	.LASF761
	.byte	0x1
	.2byte	0x513
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf0
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x513
	.byte	0x2a
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x513
	.byte	0x3c
	.4byte	0x2f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x514
	.byte	0x19
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF716
	.byte	0x1
	.2byte	0x515
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF738
	.byte	0x1
	.2byte	0x516
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF760
	.byte	0x1
	.2byte	0x517
	.byte	0x19
	.4byte	0xc38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0xcd5
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x51b
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x51c
	.byte	0x3
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF762
	.byte	0x1
	.2byte	0x4e1
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd6a
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x4e1
	.byte	0x30
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x4e1
	.byte	0x42
	.4byte	0x2f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x4e2
	.byte	0x19
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF716
	.byte	0x1
	.2byte	0x4e3
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x12
	.4byte	.LASF738
	.byte	0x1
	.2byte	0x4e4
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x12
	.4byte	.LASF760
	.byte	0x1
	.2byte	0x4e5
	.byte	0x19
	.4byte	0xc38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x18
	.4byte	.LASF763
	.byte	0x1
	.2byte	0x4c3
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb4
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x4c3
	.byte	0x2a
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x4c3
	.byte	0x43
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii	"Len\000"
	.byte	0x1
	.2byte	0x4c4
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x18
	.4byte	.LASF764
	.byte	0x1
	.2byte	0x4a5
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe48
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x4a5
	.byte	0x24
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x4a5
	.byte	0x3d
	.4byte	0xe48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.4byte	.LASF765
	.byte	0x1
	.2byte	0x4a5
	.byte	0x4f
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF738
	.byte	0x1
	.2byte	0x4a6
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xe2d
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x4a8
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x4a9
	.byte	0x3
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0xe4e
	.uleb128 0x1d
	.uleb128 0x18
	.4byte	.LASF766
	.byte	0x1
	.2byte	0x488
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee3
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x488
	.byte	0x2e
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x488
	.byte	0x47
	.4byte	0xe48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.4byte	.LASF765
	.byte	0x1
	.2byte	0x488
	.byte	0x59
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF738
	.byte	0x1
	.2byte	0x489
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xec8
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x48b
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x48c
	.byte	0x3
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF767
	.byte	0x1
	.2byte	0x43c
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf6f
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x43c
	.byte	0x2a
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x43c
	.byte	0x43
	.4byte	0xe48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.4byte	.LASF765
	.byte	0x1
	.2byte	0x43c
	.byte	0x55
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF738
	.byte	0x1
	.2byte	0x43d
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF740
	.byte	0x1
	.2byte	0x43e
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF768
	.byte	0x1
	.2byte	0x43f
	.byte	0x19
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x440
	.byte	0x19
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF769
	.byte	0x1
	.2byte	0x3f1
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xffb
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x3f1
	.byte	0x34
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x3f1
	.byte	0x4d
	.4byte	0xe48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.4byte	.LASF765
	.byte	0x1
	.2byte	0x3f1
	.byte	0x5f
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF738
	.byte	0x1
	.2byte	0x3f2
	.byte	0x1b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF740
	.byte	0x1
	.2byte	0x3f3
	.byte	0x1b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF768
	.byte	0x1
	.2byte	0x3f4
	.byte	0x1b
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x3f5
	.byte	0x1b
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF770
	.byte	0x1
	.2byte	0x397
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c4
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x397
	.byte	0x2e
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x397
	.byte	0x47
	.4byte	0xe48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LASF765
	.byte	0x1
	.2byte	0x397
	.byte	0x59
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.4byte	.LASF768
	.byte	0x1
	.2byte	0x398
	.byte	0x19
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x399
	.byte	0x19
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF740
	.byte	0x1
	.2byte	0x39a
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF717
	.byte	0x1
	.2byte	0x39b
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF716
	.byte	0x1
	.2byte	0x39c
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii	"Rem\000"
	.byte	0x1
	.2byte	0x39d
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.4byte	.LASF760
	.byte	0x1
	.2byte	0x39e
	.byte	0x19
	.4byte	0xc38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.4byte	.LASF790
	.byte	0x1
	.2byte	0x3b0
	.byte	0x1
	.4byte	.L62
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF791
	.byte	0x1
	.2byte	0x332
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x114c
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x332
	.byte	0x33
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x332
	.byte	0x4c
	.4byte	0xe48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.4byte	.LASF765
	.byte	0x1
	.2byte	0x332
	.byte	0x5e
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF768
	.byte	0x1
	.2byte	0x333
	.byte	0x19
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x334
	.byte	0x19
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF740
	.byte	0x1
	.2byte	0x335
	.byte	0x19
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF760
	.byte	0x1
	.2byte	0x336
	.byte	0x19
	.4byte	0xc38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.4byte	.LASF771
	.byte	0x1
	.2byte	0x30b
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11c2
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x30b
	.byte	0x23
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x30b
	.byte	0x36
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.4byte	.LASF750
	.byte	0x1
	.2byte	0x30b
	.byte	0x48
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF772
	.byte	0x1
	.2byte	0x30c
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x30e
	.byte	0x3
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF773
	.byte	0x1
	.2byte	0x2eb
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1238
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x2eb
	.byte	0x2b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x2eb
	.byte	0x3e
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.4byte	.LASF750
	.byte	0x1
	.2byte	0x2eb
	.byte	0x50
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF772
	.byte	0x1
	.2byte	0x2ec
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x12
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x2ee
	.byte	0x3
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF774
	.byte	0x1
	.2byte	0x28a
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x130e
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x28a
	.byte	0x29
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF768
	.byte	0x1
	.2byte	0x28a
	.byte	0x3c
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LASF750
	.byte	0x1
	.2byte	0x28a
	.byte	0x4c
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.4byte	.LASF775
	.byte	0x1
	.2byte	0x28b
	.byte	0x1b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF772
	.byte	0x1
	.2byte	0x28c
	.byte	0x1b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF717
	.byte	0x1
	.2byte	0x28d
	.byte	0x1b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF716
	.byte	0x1
	.2byte	0x28e
	.byte	0x1b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x28f
	.byte	0x1b
	.4byte	0x130e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x290
	.byte	0x1b
	.4byte	0xaba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF776
	.byte	0x1
	.2byte	0x291
	.byte	0x1b
	.4byte	0xc38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x293
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x1eb
	.uleb128 0x18
	.4byte	.LASF777
	.byte	0x1
	.2byte	0x22e
	.byte	0xa
	.4byte	0x40
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13ea
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x22e
	.byte	0x31
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF768
	.byte	0x1
	.2byte	0x22e
	.byte	0x44
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LASF750
	.byte	0x1
	.2byte	0x22e
	.byte	0x54
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.4byte	.LASF775
	.byte	0x1
	.2byte	0x22f
	.byte	0x1b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF772
	.byte	0x1
	.2byte	0x230
	.byte	0x1b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF717
	.byte	0x1
	.2byte	0x231
	.byte	0x1b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF716
	.byte	0x1
	.2byte	0x232
	.byte	0x1b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x233
	.byte	0x1b
	.4byte	0x130e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x234
	.byte	0x1b
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF776
	.byte	0x1
	.2byte	0x235
	.byte	0x1b
	.4byte	0xc38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x12
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x237
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF781
	.byte	0x1
	.2byte	0x1ff
	.byte	0x11
	.4byte	0x40
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1444
	.uleb128 0x16
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x1ff
	.byte	0x3b
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF717
	.byte	0x1
	.2byte	0x200
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x12
	.4byte	.LASF716
	.byte	0x1
	.2byte	0x201
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x202
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x21
	.4byte	.LASF778
	.byte	0x1
	.2byte	0x1e9
	.byte	0xd
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x148b
	.uleb128 0x16
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x1e9
	.byte	0x37
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LASF737
	.byte	0x1
	.2byte	0x1e9
	.byte	0x4c
	.4byte	0x1eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x17
	.ascii	"ac\000"
	.byte	0x1
	.2byte	0x1ea
	.byte	0x11
	.4byte	0x463
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x21
	.4byte	.LASF779
	.byte	0x1
	.2byte	0x1a5
	.byte	0xd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1513
	.uleb128 0x16
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x1a5
	.byte	0x31
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF768
	.byte	0x1
	.2byte	0x1a5
	.byte	0x44
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.4byte	.LASF765
	.byte	0x1
	.2byte	0x1a5
	.byte	0x54
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF780
	.byte	0x1
	.2byte	0x1a6
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF716
	.byte	0x1
	.2byte	0x1a7
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.ascii	"Rem\000"
	.byte	0x1
	.2byte	0x1a8
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF760
	.byte	0x1
	.2byte	0x1a9
	.byte	0x12
	.4byte	0xc38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF782
	.byte	0x1
	.2byte	0x167
	.byte	0x11
	.4byte	0x40
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15af
	.uleb128 0x16
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x167
	.byte	0x36
	.4byte	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x167
	.byte	0x49
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.4byte	.LASF765
	.byte	0x1
	.2byte	0x167
	.byte	0x5b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.4byte	.LASF783
	.byte	0x1
	.2byte	0x168
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF784
	.byte	0x1
	.2byte	0x169
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF717
	.byte	0x1
	.2byte	0x16a
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF716
	.byte	0x1
	.2byte	0x16b
	.byte	0xc
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF760
	.byte	0x1
	.2byte	0x16c
	.byte	0x12
	.4byte	0xc38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.4byte	.LASF792
	.byte	0x1
	.2byte	0x12d
	.byte	0xd
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x12e
	.byte	0x1b
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
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
	.uleb128 0x35
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x16
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
	.uleb128 0x5
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
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
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x49c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x15d2
	.4byte	0x1f2
	.ascii	"_aTerminalId\000"
	.4byte	0x205
	.ascii	"_SEGGER_RTT\000"
	.4byte	0x225
	.ascii	"_acUpBuffer\000"
	.4byte	0x238
	.ascii	"_acDownBuffer\000"
	.4byte	0x24b
	.ascii	"_ActiveTerminal\000"
	.4byte	0x225
	.ascii	"_acUpBuffer\000"
	.4byte	0x238
	.ascii	"_acDownBuffer\000"
	.4byte	0x24b
	.ascii	"_ActiveTerminal\000"
	.4byte	0x205
	.ascii	"_SEGGER_RTT\000"
	.4byte	0x25e
	.ascii	"SEGGER_RTT_GetBytesInBuffer\000"
	.4byte	0x2ce
	.ascii	"SEGGER_RTT_GetAvailWriteSpace\000"
	.4byte	0x310
	.ascii	"SEGGER_RTT_TerminalOut\000"
	.4byte	0x3c2
	.ascii	"SEGGER_RTT_SetTerminal\000"
	.4byte	0x473
	.ascii	"SEGGER_RTT_Init\000"
	.4byte	0x486
	.ascii	"SEGGER_RTT_SetFlagsDownBuffer\000"
	.4byte	0x52e
	.ascii	"SEGGER_RTT_SetFlagsUpBuffer\000"
	.4byte	0x5d6
	.ascii	"SEGGER_RTT_SetNameDownBuffer\000"
	.4byte	0x678
	.ascii	"SEGGER_RTT_SetNameUpBuffer\000"
	.4byte	0x71a
	.ascii	"SEGGER_RTT_ConfigDownBuffer\000"
	.4byte	0x7ec
	.ascii	"SEGGER_RTT_ConfigUpBuffer\000"
	.4byte	0x8be
	.ascii	"SEGGER_RTT_AllocUpBuffer\000"
	.4byte	0x972
	.ascii	"SEGGER_RTT_AllocDownBuffer\000"
	.4byte	0xa26
	.ascii	"SEGGER_RTT_HasDataUp\000"
	.4byte	0xa70
	.ascii	"SEGGER_RTT_HasData\000"
	.4byte	0xac0
	.ascii	"SEGGER_RTT_HasKey\000"
	.4byte	0xb24
	.ascii	"SEGGER_RTT_WaitKey\000"
	.4byte	0xb4e
	.ascii	"SEGGER_RTT_GetKey\000"
	.4byte	0xb86
	.ascii	"SEGGER_RTT_PutChar\000"
	.4byte	0xc3e
	.ascii	"SEGGER_RTT_PutCharSkip\000"
	.4byte	0xcf0
	.ascii	"SEGGER_RTT_PutCharSkipNoLock\000"
	.4byte	0xd6a
	.ascii	"SEGGER_RTT_WriteString\000"
	.4byte	0xdb4
	.ascii	"SEGGER_RTT_Write\000"
	.4byte	0xe4f
	.ascii	"SEGGER_RTT_WriteDownBuffer\000"
	.4byte	0xee3
	.ascii	"SEGGER_RTT_WriteNoLock\000"
	.4byte	0xf6f
	.ascii	"SEGGER_RTT_WriteDownBufferNoLock\000"
	.4byte	0xffb
	.ascii	"SEGGER_RTT_WriteSkipNoLock\000"
	.4byte	0x10c4
	.ascii	"SEGGER_RTT_WriteWithOverwriteNoLock\000"
	.4byte	0x114c
	.ascii	"SEGGER_RTT_Read\000"
	.4byte	0x11c2
	.ascii	"SEGGER_RTT_ReadUpBuffer\000"
	.4byte	0x1238
	.ascii	"SEGGER_RTT_ReadNoLock\000"
	.4byte	0x1314
	.ascii	"SEGGER_RTT_ReadUpBufferNoLock\000"
	.4byte	0x13ea
	.ascii	"_GetAvailWriteSpace\000"
	.4byte	0x1444
	.ascii	"_PostTerminalSwitch\000"
	.4byte	0x148b
	.ascii	"_WriteNoCheck\000"
	.4byte	0x1513
	.ascii	"_WriteBlocking\000"
	.4byte	0x15af
	.ascii	"_DoInit\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0xa7
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x15d2
	.4byte	0x2f
	.ascii	"char\000"
	.4byte	0x40
	.ascii	"unsigned int\000"
	.4byte	0x4c
	.ascii	"int\000"
	.4byte	0x53
	.ascii	"long int\000"
	.4byte	0x5a
	.ascii	"long long int\000"
	.4byte	0xc1
	.ascii	"SEGGER_RTT_BUFFER_UP\000"
	.4byte	0x12a
	.ascii	"SEGGER_RTT_BUFFER_DOWN\000"
	.4byte	0x1bc
	.ascii	"SEGGER_RTT_CB\000"
	.4byte	0x1eb
	.ascii	"unsigned char\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x13c
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
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
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
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
	.uleb128 0x4c
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF460
	.file 3 "C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\\SEGGER_RTT_Conf.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro4
	.file 4 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/stdlib.h"
	.byte	0x3
	.uleb128 0xc1
	.uleb128 0x4
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF479
	.file 5 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF480
	.file 6 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL_ConfDefaults.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF481
	.file 7 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL_Conf.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x7
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF482
	.file 8 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/__SEGGER_RTL_Arm_Conf.h"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x8
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.file 9 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/stdarg.h"
	.byte	0x3
	.uleb128 0xc2
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.file 10 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/segger-rtl/include/string.h"
	.byte	0x3
	.uleb128 0x4e
	.uleb128 0xa
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF694
	.byte	0x4
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF708
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
	.section	.debug_macro,"G",%progbits,wm4.SEGGER_RTT_Conf.h.58.62e82944134ea4913d677c13c2fac238,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF471
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.SEGGER_RTT.h.70.b197481e45adda9a93ead5a37f14b45d,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF478
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__SEGGER_RTL_Arm_Conf.h.11.4abb486941b74ccc31843e0fca691688,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF496
	.byte	0x6
	.uleb128 0x8c
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF496
	.byte	0x6
	.uleb128 0x8e
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x18d
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x1c2
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x1c8
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x1ce
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x1d4
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x1da
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x1e0
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x1f0
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x1f6
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x1fa
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x202
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x206
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x20e
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x213
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x218
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x220
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x223
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x226
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x22b
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x232
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x238
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x23d
	.4byte	.LASF531
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__SEGGER_RTL_ConfDefaults.h.22.072831664575e960e3c89d78f8bd94fa,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF578
	.byte	0x6
	.uleb128 0xec
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF574
	.byte	0x6
	.uleb128 0xee
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x15c
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x165
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x166
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x174
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x175
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x179
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x17a
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x17e
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x17f
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x187
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x18b
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x19f
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x1a3
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x1a7
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x1ab
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x1b3
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x1b4
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x1b8
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x1b9
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x1c1
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x1c5
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x1c9
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x1cc
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x1cf
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x1d2
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x1d5
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x1e9
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x1ed
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x1f1
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x1f5
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x205
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x20a
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x20f
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x210
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x21b
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x21f
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x223
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x227
	.4byte	.LASF633
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__SEGGER_RTL.h.26.f406f75783d15e336f30c2db966d0a32,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF637
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdlib.h.34.fa6b1c370dd5f94cc019ce73bcdff96a,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF645
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdarg.h.11.84fa830bbe03e4ac948222432ea194d1,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF650
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.SEGGER_RTT.h.213.5a6f00c5732a11b6f3a1ec16fe6df54f,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x13a
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x171
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x178
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x179
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x17b
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x17c
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x17d
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x17e
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x17f
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x180
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x181
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x182
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x184
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x185
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x186
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x187
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0x188
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x189
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0x18a
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x18b
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0x18d
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x18e
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x18f
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x190
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x191
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x192
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x193
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x196
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x197
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x198
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x199
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x19a
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x19b
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x19c
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x19d
	.4byte	.LASF693
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF250:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF359:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF549:
	.ascii	"__SEGGER_RTL_U32 unsigned\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1\000"
.LASF371:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF476:
	.ascii	"RTT__DMB() \000"
.LASF234:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF323:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF754:
	.ascii	"SEGGER_RTT_HasDataUp\000"
.LASF696:
	.ascii	"SEGGER_RTT_BUFFER_ALIGNMENT SEGGER_RTT_CPU_CACHE_LI"
	.ascii	"NE_SIZE\000"
.LASF77:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF467:
	.ascii	"SEGGER_RTT_MODE_DEFAULT SEGGER_RTT_MODE_NO_BLOCK_SK"
	.ascii	"IP\000"
.LASF585:
	.ascii	"__SEGGER_RTL_BitcastToU32(X) __SEGGER_RTL_BitcastTo"
	.ascii	"U32_inline(X)\000"
.LASF617:
	.ascii	"__SEGGER_RTL_U64_H(X) ((__SEGGER_RTL_U32)((__SEGGER"
	.ascii	"_RTL_U64)(X) >> 32))\000"
.LASF230:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF88:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF558:
	.ascii	"__SEGGER_RTL_LEAST_U8 unsigned\000"
.LASF340:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF227:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF316:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF73:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF389:
	.ascii	"__ARM_FEATURE_QBIT\000"
.LASF783:
	.ascii	"NumBytesToWrite\000"
.LASF751:
	.ascii	"SEGGER_RTT_ConfigUpBuffer\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF165:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF263:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF329:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF727:
	.ascii	"_aTerminalId\000"
.LASF299:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF251:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF92:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF730:
	.ascii	"_ActiveTerminal\000"
.LASF336:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF552:
	.ascii	"__SEGGER_RTL_I16 short\000"
.LASF593:
	.ascii	"__SEGGER_RTL_SMULL_HI(X,Y) __SEGGER_RTL_SMULL_HI_fu"
	.ascii	"nc((X), (Y))\000"
.LASF472:
	.ascii	"_CC_HAS_RTT_ASM_SUPPORT 1\000"
.LASF539:
	.ascii	"__WIDTH_FLOAT 1\000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF407:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF705:
	.ascii	"SEGGER_RTT_BUFFER_ALIGN(Var) Var\000"
.LASF298:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF742:
	.ascii	"_SEGGER_RTT__LockState\000"
.LASF212:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF181:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF177:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF175:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF117:
	.ascii	"__UINT8_C(c) c\000"
.LASF766:
	.ascii	"SEGGER_RTT_WriteDownBuffer\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF616:
	.ascii	"__SEGGER_RTL_FILE_IMPL __SEGGER_RTL_FILE_impl\000"
.LASF480:
	.ascii	"__SEGGER_RTL_H \000"
.LASF765:
	.ascii	"NumBytes\000"
.LASF774:
	.ascii	"SEGGER_RTT_ReadNoLock\000"
.LASF732:
	.ascii	"SEGGER_RTT_GetBytesInBuffer\000"
.LASF638:
	.ascii	"NULL 0\000"
.LASF452:
	.ascii	"__SES_VERSION 57001\000"
.LASF411:
	.ascii	"__APCS_32__ 1\000"
.LASF545:
	.ascii	"__SEGGER_RTL_INCLUDE_SEGGER_API 0\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF286:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF526:
	.ascii	"__SEGGER_RTL_FLOAT64_C_COMPLEX double _Complex\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF739:
	.ascii	"FragLen\000"
.LASF589:
	.ascii	"__SEGGER_RTL_SMULL_X(X,Y) __SEGGER_RTL_SMULL_X_func"
	.ascii	"((X), (Y))\000"
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
.LASF204:
	.ascii	"__FLT16_HAS_INFINITY__ 1\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF657:
	.ascii	"SEGGER_RTT_MODE_NO_BLOCK_TRIM (1)\000"
.LASF224:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF618:
	.ascii	"__SEGGER_RTL_U64_L(X) ((__SEGGER_RTL_U32)(__SEGGER_"
	.ascii	"RTL_U64)(X))\000"
.LASF131:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF493:
	.ascii	"__SEGGER_RTL_FLOAT16 _Float16\000"
.LASF255:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF584:
	.ascii	"__SEGGER_RTL_STDOUT_BUFFER_LEN 64\000"
.LASF533:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_FAST 1\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF645:
	.ascii	"MB_CUR_MAX __SEGGER_RTL_mb_max(&__SEGGER_RTL_global"
	.ascii	"_locale)\000"
.LASF375:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1\000"
.LASF569:
	.ascii	"__SEGGER_RTL_WINT_T __WINT_TYPE__\000"
.LASF650:
	.ascii	"va_end(ap) __builtin_va_end(ap)\000"
.LASF422:
	.ascii	"__ARM_FP16_FORMAT_IEEE 1\000"
.LASF679:
	.ascii	"RTT_CTRL_BG_RED \"\\x1B[24;41m\"\000"
.LASF550:
	.ascii	"__SEGGER_RTL_I32 int\000"
.LASF343:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF509:
	.ascii	"__SEGGER_RTL_PUBLIC_API __attribute__((__weak__))\000"
.LASF223:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF86:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF246:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF132:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF516:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIV 0\000"
.LASF728:
	.ascii	"_acUpBuffer\000"
.LASF152:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF312:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF127:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF420:
	.ascii	"__VFP_FP__ 1\000"
.LASF482:
	.ascii	"__SEGGER_RTL_CONF_H \000"
.LASF136:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF746:
	.ascii	"SEGGER_RTT_SetFlagsUpBuffer\000"
.LASF629:
	.ascii	"__SEGGER_RTL_SUBNORMALS_FLUSH_TO_ZERO 1\000"
.LASF695:
	.ascii	"SEGGER_RTT_ALIGNMENT SEGGER_RTT_CPU_CACHE_LINE_SIZE"
	.ascii	"\000"
.LASF203:
	.ascii	"__FLT16_HAS_DENORM__ 1\000"
.LASF494:
	.ascii	"__SEGGER_RTL_MAX_ALIGN 8\000"
.LASF459:
	.ascii	"__NO_FPU_ENABLE 1\000"
.LASF216:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF268:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF432:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF582:
	.ascii	"__SEGGER_RTL_HEAP_SIZE 1024\000"
.LASF749:
	.ascii	"SEGGER_RTT_ConfigDownBuffer\000"
.LASF94:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF249:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF750:
	.ascii	"BufferSize\000"
.LASF454:
	.ascii	"DEBUG 1\000"
.LASF492:
	.ascii	"__SEGGER_RTL_TYPESET 32\000"
.LASF307:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF711:
	.ascii	"long int\000"
.LASF245:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF130:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF242:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF776:
	.ascii	"pSrc\000"
.LASF740:
	.ascii	"Avail\000"
.LASF468:
	.ascii	"SEGGER_RTT_MEMCPY_USE_BYTELOOP 0\000"
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
.LASF554:
	.ascii	"__SEGGER_RTL_I8 signed char\000"
.LASF662:
	.ascii	"RTT_CTRL_TEXT_BLACK \"\\x1B[2;30m\"\000"
.LASF335:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF733:
	.ascii	"SEGGER_RTT_GetAvailWriteSpace\000"
.LASF606:
	.ascii	"__SEGGER_RTL_DIVMOD_U64(Q,R,N,D) do { Q = N / D; R "
	.ascii	"= N - Q*D; } while (0)\000"
.LASF429:
	.ascii	"__ARM_NEON__\000"
.LASF210:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF669:
	.ascii	"RTT_CTRL_TEXT_WHITE \"\\x1B[2;37m\"\000"
.LASF289:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF760:
	.ascii	"pDst\000"
.LASF597:
	.ascii	"__SEGGER_RTL_SMULL(L,H,X,Y) __SEGGER_RTL_SMULL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF239:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF426:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF134:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF149:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF652:
	.ascii	"SEGGER_RTT__CB_SIZE (16 + 4 + 4 + (SEGGER_RTT_MAX_N"
	.ascii	"UM_UP_BUFFERS * 24) + (SEGGER_RTT_MAX_NUM_DOWN_BUFF"
	.ascii	"ERS * 24))\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF112:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF495:
	.ascii	"__SEGGER_RTL_FP_ABI 0\000"
.LASF469:
	.ascii	"SEGGER_RTT_MAX_INTERRUPT_PRIORITY (0x20)\000"
.LASF786:
	.ascii	"C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio"
	.ascii	" for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0"
	.ascii	"_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\\SEGGER_RTT"
	.ascii	".c\000"
.LASF691:
	.ascii	"RTT_CTRL_BG_BRIGHT_MAGENTA \"\\x1B[4;45m\"\000"
.LASF789:
	.ascii	"SEGGER_RTT_Init\000"
.LASF178:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF646:
	.ascii	"__SEGGER_RTL_STDARG_H \000"
.LASF365:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF512:
	.ascii	"__SEGGER_RTL_CORE_HAS_REV 0\000"
.LASF698:
	.ascii	"STRCPY(pDest,pSrc) strcpy((pDest), (pSrc))\000"
.LASF413:
	.ascii	"__thumb__ 1\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF772:
	.ascii	"NumBytesRead\000"
.LASF186:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF369:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF508:
	.ascii	"__SEGGER_RTL_REQUEST_INLINE __inline__\000"
.LASF471:
	.ascii	"SEGGER_RTT_UNLOCK() __asm volatile (\"msr   primask"
	.ascii	", %0  \\n\\t\" : : \"r\" (_SEGGER_RTT__LockState) :"
	.ascii	" ); }\000"
.LASF424:
	.ascii	"__ARM_FP16_ARGS 1\000"
.LASF325:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF546:
	.ascii	"__SEGGER_RTL_INCLUDE_C_API 1\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF118:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF123:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF699:
	.ascii	"SEGGER_RTT_MEMCPY(pDest,pSrc,NumBytes) memcpy((pDes"
	.ascii	"t), (pSrc), (NumBytes))\000"
.LASF628:
	.ascii	"__SEGGER_RTL_SUBNORMALS_READ_AS_ZERO 1\000"
.LASF724:
	.ascii	"aDown\000"
.LASF761:
	.ascii	"SEGGER_RTT_PutCharSkip\000"
.LASF770:
	.ascii	"SEGGER_RTT_WriteSkipNoLock\000"
.LASF146:
	.ascii	"__FLT_DIG__ 6\000"
.LASF129:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF726:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF764:
	.ascii	"SEGGER_RTT_Write\000"
.LASF150:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF200:
	.ascii	"__FLT16_MIN__ 1.1\000"
.LASF500:
	.ascii	"__SEGGER_RTL_FLT_SELECT(HEX,DEC) HEX\000"
.LASF264:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF139:
	.ascii	"__GCC_IEC_559 0\000"
.LASF636:
	.ascii	"__SEGGER_RTL_FILE_IMPL_DEFINED \000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF437:
	.ascii	"__ARM_ARCH_EXT_IDIV__\000"
.LASF517:
	.ascii	"__SEGGER_RTL_CORE_HAS_CBZ_CBNZ 0\000"
.LASF101:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF339:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF262:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF568:
	.ascii	"__SEGGER_RTL_SIZE_T __SIZE_TYPE__\000"
.LASF171:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF326:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF542:
	.ascii	"__SEGGER_RTL_FORCE_SOFT_FLOAT 0\000"
.LASF489:
	.ascii	"__SEGGER_RTL_INCLUDE_AEABI_API 2\000"
.LASF654:
	.ascii	"SEGGER_RTT_HASDATA(n) (((SEGGER_RTT_BUFFER_DOWN*)(("
	.ascii	"char*)&_SEGGER_RTT.aDown[n] + SEGGER_RTT_UNCACHED_O"
	.ascii	"FF))->WrOff - ((SEGGER_RTT_BUFFER_DOWN*)((char*)&_S"
	.ascii	"EGGER_RTT.aDown[n] + SEGGER_RTT_UNCACHED_OFF))->RdO"
	.ascii	"ff)\000"
.LASF700:
	.ascii	"MIN(a,b) (((a) < (b)) ? (a) : (b))\000"
.LASF315:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF736:
	.ascii	"SEGGER_RTT_TerminalOut\000"
.LASF166:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF681:
	.ascii	"RTT_CTRL_BG_YELLOW \"\\x1B[24;43m\"\000"
.LASF718:
	.ascii	"Flags\000"
.LASF384:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF709:
	.ascii	"char\000"
.LASF362:
	.ascii	"__USA_IBIT__ 16\000"
.LASF607:
	.ascii	"__SEGGER_RTL_RODATA_IS_RW 0\000"
.LASF254:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF579:
	.ascii	"__SEGGER_RTL_FORMAT_INT_WIDTH\000"
.LASF351:
	.ascii	"__HA_FBIT__ 7\000"
.LASF436:
	.ascii	"__FDPIC__\000"
.LASF501:
	.ascii	"__SEGGER_RTL_CORE_HAS_MLA 0\000"
.LASF487:
	.ascii	"__SEGGER_RTL_NO_BUILTIN __attribute__((optimize(\"-"
	.ascii	"fno-tree-loop-distribute-patterns\")))\000"
.LASF785:
	.ascii	"GNU C99 10.3.1 20210824 (release) -fmessage-length="
	.ascii	"0 -std=gnu99 -mcpu=cortex-m0plus -mlittle-endian -m"
	.ascii	"float-abi=soft -mthumb -mtp=soft -mfp16-format=ieee"
	.ascii	" -mno-unaligned-access -gdwarf-4 -g3 -gpubnames -fo"
	.ascii	"mit-frame-pointer -fno-dwarf2-cfi-asm -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF649:
	.ascii	"va_copy(d,s) __builtin_va_copy((d), (s))\000"
.LASF478:
	.ascii	"SEGGER_RTT_UNCACHED_OFF (0)\000"
.LASF566:
	.ascii	"__SEGGER_RTL_SIZEOF_PTR 4\000"
.LASF247:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF196:
	.ascii	"__FLT16_MAX_10_EXP__ 4\000"
.LASF661:
	.ascii	"RTT_CTRL_CLEAR \"\\x1B[2J\"\000"
.LASF257:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF111:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF598:
	.ascii	"__SEGGER_RTL_SMULL_SYNTHESIZED \000"
.LASF693:
	.ascii	"RTT_CTRL_BG_BRIGHT_WHITE \"\\x1B[4;47m\"\000"
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
.LASF537:
	.ascii	"__WIDTH_LONG_LONG 2\000"
.LASF172:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF723:
	.ascii	"MaxNumDownBuffers\000"
.LASF355:
	.ascii	"__DA_FBIT__ 31\000"
.LASF67:
	.ascii	"__GXX_ABI_VERSION 1014\000"
.LASF107:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF603:
	.ascii	"__SEGGER_RTL_UMLAL(L,H,X,Y) __SEGGER_RTL_UMLAL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF619:
	.ascii	"__SEGGER_RTL_U64_MK(H,L) (((__SEGGER_RTL_U64)(__SEG"
	.ascii	"GER_RTL_U32)(H) << 32) + (__SEGGER_RTL_U32)(L))\000"
.LASF615:
	.ascii	"__SEGGER_RTL_SCALED_INTEGER 0\000"
.LASF725:
	.ascii	"SEGGER_RTT_CB\000"
.LASF499:
	.ascii	"__SEGGER_RTL_NAN_FORMAT __SEGGER_RTL_NAN_FORMAT_IEE"
	.ascii	"E\000"
.LASF121:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF773:
	.ascii	"SEGGER_RTT_ReadUpBuffer\000"
.LASF308:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF743:
	.ascii	"SEGGER_RTT_SetTerminal\000"
.LASF229:
	.ascii	"__FLT64_NORM_MAX__ 1.1\000"
.LASF197:
	.ascii	"__FLT16_DECIMAL_DIG__ 5\000"
.LASF757:
	.ascii	"SEGGER_RTT_WaitKey\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF528:
	.ascii	"__SEGGER_RTL_PREFER_BRANCH_FREE_CODE 1\000"
.LASF451:
	.ascii	"__HEAP_SIZE__ 0\000"
.LASF535:
	.ascii	"__WIDTH_INT 0\000"
.LASF443:
	.ascii	"__ARM_FEATURE_MATMUL_INT8\000"
.LASF623:
	.ascii	"__SEGGER_RTL_NAN __builtin_nanf(\"0x7fc00000\")\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 1\000"
.LASF664:
	.ascii	"RTT_CTRL_TEXT_GREEN \"\\x1B[2;32m\"\000"
.LASF334:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF296:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF448:
	.ascii	"__ELF__ 1\000"
.LASF481:
	.ascii	"__SEGGER_RTL_LIBC_CONF_DEFAULTS_H \000"
.LASF540:
	.ascii	"__WIDTH_DOUBLE 2\000"
.LASF220:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF189:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF357:
	.ascii	"__TA_FBIT__ 63\000"
.LASF791:
	.ascii	"SEGGER_RTT_WriteWithOverwriteNoLock\000"
.LASF241:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF518:
	.ascii	"__SEGGER_RTL_CORE_HAS_TBB_TBH 0\000"
.LASF573:
	.ascii	"__SEGGER_RTL_OPTIMIZE 0\000"
.LASF434:
	.ascii	"__ARM_PCS 1\000"
.LASF610:
	.ascii	"__SEGGER_RTL_SPECIALIZE_COMPARES 1\000"
.LASF342:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF182:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF587:
	.ascii	"__SEGGER_RTL_BitcastToU64(X) __SEGGER_RTL_BitcastTo"
	.ascii	"U64_inline(X)\000"
.LASF116:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF722:
	.ascii	"MaxNumUpBuffers\000"
.LASF748:
	.ascii	"SEGGER_RTT_SetNameUpBuffer\000"
.LASF184:
	.ascii	"__LDBL_NORM_MAX__ 1.1\000"
.LASF644:
	.ascii	"RAND_MAX 32767\000"
.LASF714:
	.ascii	"pBuffer\000"
.LASF109:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF276:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF143:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF427:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF780:
	.ascii	"NumBytesAtOnce\000"
.LASF170:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF600:
	.ascii	"__SEGGER_RTL_UMULL_SYNTHESIZED \000"
.LASF260:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF689:
	.ascii	"RTT_CTRL_BG_BRIGHT_YELLOW \"\\x1B[4;43m\"\000"
.LASF256:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF324:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF261:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF368:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF103:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF633:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIVM_X 0\000"
.LASF601:
	.ascii	"__SEGGER_RTL_SMLAL(L,H,X,Y) __SEGGER_RTL_SMLAL_func"
	.ascii	"(&(L), &(H), (X), (Y))\000"
.LASF102:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF673:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_YELLOW \"\\x1B[1;33m\"\000"
.LASF104:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF676:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_CYAN \"\\x1B[1;36m\"\000"
.LASF438:
	.ascii	"__ARM_FEATURE_IDIV\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF396:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF655:
	.ascii	"SEGGER_RTT_HASDATA_UP(n) (((SEGGER_RTT_BUFFER_UP*)("
	.ascii	"(char*)&_SEGGER_RTT.aUp[n] + SEGGER_RTT_UNCACHED_OF"
	.ascii	"F))->WrOff - ((SEGGER_RTT_BUFFER_UP*)((char*)&_SEGG"
	.ascii	"ER_RTT.aUp[n] + SEGGER_RTT_UNCACHED_OFF))->RdOff)\000"
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
.LASF575:
	.ascii	"__SEGGER_RTL_FORMAT_FLOAT_WIDTH __WIDTH_DOUBLE\000"
.LASF273:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF563:
	.ascii	"__SEGGER_RTL_U64_C(X) X ##uLL\000"
.LASF115:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF158:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF520:
	.ascii	"__SEGGER_RTL_CORE_HAS_BFC_BFI_BFX 0\000"
.LASF304:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF96:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF666:
	.ascii	"RTT_CTRL_TEXT_BLUE \"\\x1B[2;34m\"\000"
.LASF771:
	.ascii	"SEGGER_RTT_Read\000"
.LASF599:
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
.LASF543:
	.ascii	"__SEGGER_RTL_CONFIG_CODE_COVERAGE 0\000"
.LASF128:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF419:
	.ascii	"__SOFTFP__ 1\000"
.LASF521:
	.ascii	"__SEGGER_RTL_CORE_HAS_BLX_REG 1\000"
.LASF692:
	.ascii	"RTT_CTRL_BG_BRIGHT_CYAN \"\\x1B[4;46m\"\000"
.LASF474:
	.ascii	"RTT_USE_ASM (0)\000"
.LASF142:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF612:
	.ascii	"__SEGGER_RTL_CLZ_U32_SYNTHESIZED \000"
.LASF79:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF672:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_GREEN \"\\x1B[1;32m\"\000"
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
.LASF777:
	.ascii	"SEGGER_RTT_ReadUpBufferNoLock\000"
.LASF113:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF445:
	.ascii	"__ARM_FEATURE_BF16_VECTOR_ARITHMETIC\000"
.LASF708:
	.ascii	"INIT() { volatile SEGGER_RTT_CB* pRTTCBInit; pRTTCB"
	.ascii	"Init = (volatile SEGGER_RTT_CB*)((char*)&_SEGGER_RT"
	.ascii	"T + SEGGER_RTT_UNCACHED_OFF); do { if (pRTTCBInit->"
	.ascii	"acID[0] == '\\0') { _DoInit(); } } while (0); }\000"
.LASF217:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF206:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF630:
	.ascii	"__SEGGER_RTL_CORE_HAS_UDIV_X 0\000"
.LASF668:
	.ascii	"RTT_CTRL_TEXT_CYAN \"\\x1B[2;36m\"\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF519:
	.ascii	"__SEGGER_RTL_CORE_HAS_UXT_SXT 1\000"
.LASF374:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1\000"
.LASF608:
	.ascii	"__SEGGER_RTL_USE_PARA(Para) (void)Para\000"
.LASF753:
	.ascii	"SEGGER_RTT_AllocDownBuffer\000"
.LASF164:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF248:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF145:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF792:
	.ascii	"_DoInit\000"
.LASF522:
	.ascii	"__SEGGER_RTL_CORE_HAS_LONG_SHIFT 0\000"
.LASF311:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF735:
	.ascii	"pRing\000"
.LASF591:
	.ascii	"__SEGGER_RTL_UMULL_X(X,Y) __SEGGER_RTL_UMULL_X_func"
	.ascii	"((X), (Y))\000"
.LASF450:
	.ascii	"__SES_ARM 1\000"
.LASF513:
	.ascii	"__SEGGER_RTL_CORE_HAS_PKHTB_PKHBT 0\000"
.LASF309:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF571:
	.ascii	"__SEGGER_RTL_SIZEOF_WCHAR_T __SIZEOF_WCHAR_T__\000"
.LASF511:
	.ascii	"__SEGGER_RTL_CORE_HAS_UQADD_UQSUB 0\000"
.LASF457:
	.ascii	"__STM32G071_SUBFAMILY 1\000"
.LASF99:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF194:
	.ascii	"__FLT16_MIN_10_EXP__ (-4)\000"
.LASF702:
	.ascii	"SEGGER_RTT_ALIGN(Var,Alignment) Var\000"
.LASF287:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF5:
	.ascii	"__GNUC__ 10\000"
.LASF534:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_COMPACT 2\000"
.LASF207:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF82:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF738:
	.ascii	"Status\000"
.LASF759:
	.ascii	"SEGGER_RTT_PutChar\000"
.LASF306:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF595:
	.ascii	"__SEGGER_RTL_UMULL_HI(X,Y) __SEGGER_RTL_UMULL_HI_fu"
	.ascii	"nc((X), (Y))\000"
.LASF270:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF74:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF594:
	.ascii	"__SEGGER_RTL_SMULL_HI_SYNTHESIZED \000"
.LASF157:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF525:
	.ascii	"__SEGGER_RTL_FLOAT32_C_COMPLEX float _Complex\000"
.LASF215:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 1\000"
.LASF318:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF410:
	.ascii	"__ARM_ARCH 6\000"
.LASF697:
	.ascii	"STRLEN(a) strlen((a))\000"
.LASF144:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF775:
	.ascii	"NumBytesRem\000"
.LASF712:
	.ascii	"long long int\000"
.LASF782:
	.ascii	"_WriteBlocking\000"
.LASF399:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF372:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 1\000"
.LASF190:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF470:
	.ascii	"SEGGER_RTT_LOCK() { unsigned int _SEGGER_RTT__LockS"
	.ascii	"tate; __asm volatile (\"mrs   %0, primask  \\n\\t\""
	.ascii	" \"movs  r1, #1       \\n\\t\" \"msr   primask, r1 "
	.ascii	" \\n\\t\" : \"=r\" (_SEGGER_RTT__LockState) : : \"r"
	.ascii	"1\", \"cc\" );\000"
.LASF634:
	.ascii	"__SEGGER_RTL_VERSION 23000\000"
.LASF83:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF187:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
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
.LASF570:
	.ascii	"__SEGGER_RTL_WCHAR_T __WCHAR_TYPE__\000"
.LASF715:
	.ascii	"SizeOfBuffer\000"
.LASF225:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF671:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_RED \"\\x1B[1;31m\"\000"
.LASF167:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF89:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF567:
	.ascii	"__SEGGER_RTL_PTRDIFF_T __PTRDIFF_TYPE__\000"
.LASF588:
	.ascii	"__SEGGER_RTL_BitcastToF64(X) __SEGGER_RTL_BitcastTo"
	.ascii	"F64_inline(X)\000"
.LASF406:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF185:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF385:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF670:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_BLACK \"\\x1B[1;30m\"\000"
.LASF677:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_WHITE \"\\x1B[1;37m\"\000"
.LASF236:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF244:
	.ascii	"__FLT32X_NORM_MAX__ 1.1\000"
.LASF477:
	.ascii	"SEGGER_RTT_CPU_CACHE_LINE_SIZE (0)\000"
.LASF269:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF195:
	.ascii	"__FLT16_MAX_EXP__ 16\000"
.LASF252:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF788:
	.ascii	"_SEGGER_RTT\000"
.LASF559:
	.ascii	"__SEGGER_RTL_LEAST_I8 int\000"
.LASF790:
	.ascii	"CopyStraight\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF431:
	.ascii	"__ARM_NEON_FP\000"
.LASF648:
	.ascii	"va_arg __builtin_va_arg\000"
.LASF397:
	.ascii	"__ARM_32BIT_STATE\000"
.LASF266:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF347:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF156:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF686:
	.ascii	"RTT_CTRL_BG_BRIGHT_BLACK \"\\x1B[4;40m\"\000"
.LASF180:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF720:
	.ascii	"SEGGER_RTT_BUFFER_DOWN\000"
.LASF198:
	.ascii	"__FLT16_MAX__ 1.1\000"
.LASF665:
	.ascii	"RTT_CTRL_TEXT_YELLOW \"\\x1B[2;33m\"\000"
.LASF778:
	.ascii	"_PostTerminalSwitch\000"
.LASF532:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_IEEE 0\000"
.LASF710:
	.ascii	"unsigned int\000"
.LASF530:
	.ascii	"__SEGGER_RTL_X_assert __aeabi_assert\000"
.LASF412:
	.ascii	"__GCC_ASM_FLAG_OUTPUTS__\000"
.LASF613:
	.ascii	"__SEGGER_RTL_CLZ_U64(X) __SEGGER_RTL_CLZ_U64_inline"
	.ascii	"(X)\000"
.LASF147:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF235:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF297:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF551:
	.ascii	"__SEGGER_RTL_U16 unsigned short\000"
.LASF233:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF327:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF310:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF366:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF706:
	.ascii	"SEGGER_RTT_PUT_CB_SECTION(Var) Var\000"
.LASF439:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF68:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF602:
	.ascii	"__SEGGER_RTL_SMLAL_SYNTHESIZED \000"
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
.LASF683:
	.ascii	"RTT_CTRL_BG_MAGENTA \"\\x1B[24;45m\"\000"
.LASF193:
	.ascii	"__FLT16_MIN_EXP__ (-13)\000"
.LASF538:
	.ascii	"__WIDTH_NONE 0\000"
.LASF274:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF387:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF275:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF635:
	.ascii	"__SEGGER_RTL_MAX_CATEGORY 5\000"
.LASF663:
	.ascii	"RTT_CTRL_TEXT_RED \"\\x1B[2;31m\"\000"
.LASF484:
	.ascii	"__SEGGER_RTL_ISA_T16 0\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF169:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF574:
	.ascii	"__SEGGER_RTL_FORMAT_INT_WIDTH __WIDTH_LONG_LONG\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF80:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF667:
	.ascii	"RTT_CTRL_TEXT_MAGENTA \"\\x1B[2;35m\"\000"
.LASF361:
	.ascii	"__USA_FBIT__ 16\000"
.LASF659:
	.ascii	"SEGGER_RTT_MODE_MASK (3)\000"
.LASF238:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF498:
	.ascii	"__SEGGER_RTL_FP_ABI\000"
.LASF159:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF373:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 1\000"
.LASF641:
	.ascii	"__SEGGER_RTL_LOCALE_T_DEFINED \000"
.LASF504:
	.ascii	"__SEGGER_RTL_UNLIKELY(X) __builtin_expect((X), 0)\000"
.LASF168:
	.ascii	"__DBL_NORM_MAX__ ((double)1.1)\000"
.LASF404:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF515:
	.ascii	"__SEGGER_RTL_CORE_HAS_MOVW_MOVT 0\000"
.LASF769:
	.ascii	"SEGGER_RTT_WriteDownBufferNoLock\000"
.LASF651:
	.ascii	"SEGGER_RTT__ROUND_UP_2_CACHE_LINE_SIZE(NumBytes) (N"
	.ascii	"umBytes)\000"
.LASF506:
	.ascii	"__SEGGER_RTL_NEVER_INLINE __attribute__((__noinline"
	.ascii	"__, __noclone__))\000"
.LASF265:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF209:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF464:
	.ascii	"BUFFER_SIZE_UP (1024)\000"
.LASF756:
	.ascii	"SEGGER_RTT_HasKey\000"
.LASF423:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF473:
	.ascii	"_CORE_HAS_RTT_ASM_SUPPORT 0\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF358:
	.ascii	"__TA_IBIT__ 64\000"
.LASF678:
	.ascii	"RTT_CTRL_BG_BLACK \"\\x1B[24;40m\"\000"
.LASF729:
	.ascii	"_acDownBuffer\000"
.LASF433:
	.ascii	"__ARM_ARCH_6M__ 1\000"
.LASF393:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF547:
	.ascii	"__SEGGER_RTL_U64 unsigned long long\000"
.LASF541:
	.ascii	"__SEGGER_RTL_SIDE_BY_SIDE 0\000"
.LASF752:
	.ascii	"SEGGER_RTT_AllocUpBuffer\000"
.LASF191:
	.ascii	"__FLT16_MANT_DIG__ 11\000"
.LASF85:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF713:
	.ascii	"sName\000"
.LASF622:
	.ascii	"__SEGGER_RTL_INFINITY __builtin_inff()\000"
.LASF267:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF428:
	.ascii	"__ARM_FEATURE_FMA\000"
.LASF105:
	.ascii	"__INT8_C(c) c\000"
.LASF272:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF507:
	.ascii	"__SEGGER_RTL_ALWAYS_INLINE __inline__ __attribute__"
	.ascii	"((__always_inline__))\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 1\000"
.LASF162:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF581:
	.ascii	"__SEGGER_RTL_MINIMAL_LOCALE 0\000"
.LASF614:
	.ascii	"__SEGGER_RTL_CLZ_U64_SYNTHESIZED \000"
.LASF483:
	.ascii	"__SEGGER_RTL_ARM_CONF_H \000"
.LASF640:
	.ascii	"__SEGGER_RTL_WCHAR_T_DEFINED \000"
.LASF586:
	.ascii	"__SEGGER_RTL_BitcastToF32(X) __SEGGER_RTL_BitcastTo"
	.ascii	"F32_inline(X)\000"
.LASF188:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF383:
	.ascii	"__HAVE_SPECULATION_SAFE_VALUE 1\000"
.LASF291:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF496:
	.ascii	"__SEGGER_RTL_FP_HW 0\000"
.LASF592:
	.ascii	"__SEGGER_RTL_UMULL_X_SYNTHESIZED \000"
.LASF303:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF721:
	.ascii	"acID\000"
.LASF391:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF674:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_BLUE \"\\x1B[1;34m\"\000"
.LASF465:
	.ascii	"BUFFER_SIZE_DOWN (16)\000"
.LASF416:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF122:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF135:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF578:
	.ascii	"__SEGGER_RTL_FORMAT_CHAR_CLASS 1\000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF531:
	.ascii	"__SEGGER_RTL_X_errno_addr __aeabi_errno_addr\000"
.LASF148:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF317:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF69:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF330:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF717:
	.ascii	"RdOff\000"
.LASF337:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF292:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF658:
	.ascii	"SEGGER_RTT_MODE_BLOCK_IF_FIFO_FULL (2)\000"
.LASF767:
	.ascii	"SEGGER_RTT_WriteNoLock\000"
.LASF344:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF656:
	.ascii	"SEGGER_RTT_MODE_NO_BLOCK_SKIP (0)\000"
.LASF611:
	.ascii	"__SEGGER_RTL_CLZ_U32(X) __SEGGER_RTL_CLZ_U32_inline"
	.ascii	"(X)\000"
.LASF548:
	.ascii	"__SEGGER_RTL_I64 long long\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF781:
	.ascii	"_GetAvailWriteSpace\000"
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
.LASF503:
	.ascii	"__SEGGER_RTL_CORE_HAS_EXT_MUL 0\000"
.LASF237:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF647:
	.ascii	"va_start(v,l) __builtin_va_start((v), l)\000"
.LASF154:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF199:
	.ascii	"__FLT16_NORM_MAX__ 1.1\000"
.LASF557:
	.ascii	"__SEGGER_RTL_LEAST_I16 int\000"
.LASF232:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF583:
	.ascii	"__SEGGER_RTL_ATEXIT_COUNT 1\000"
.LASF688:
	.ascii	"RTT_CTRL_BG_BRIGHT_GREEN \"\\x1B[4;42m\"\000"
.LASF747:
	.ascii	"SEGGER_RTT_SetNameDownBuffer\000"
.LASF687:
	.ascii	"RTT_CTRL_BG_BRIGHT_RED \"\\x1B[4;41m\"\000"
.LASF694:
	.ascii	"__SEGGER_RTL_STRING_H \000"
.LASF553:
	.ascii	"__SEGGER_RTL_U8 unsigned char\000"
.LASF319:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF572:
	.ascii	"__SEGGER_RTL_SIZEOF_LDOUBLE 8\000"
.LASF278:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF523:
	.ascii	"__SEGGER_RTL_FAST_CODE_SECTION(X) __attribute__((__"
	.ascii	"section__(\".fast.\" X)))\000"
.LASF338:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF446:
	.ascii	"__ARM_BF16_FORMAT_ALTERNATIVE\000"
.LASF784:
	.ascii	"NumBytesWritten\000"
.LASF564:
	.ascii	"__SEGGER_RTL_SIZEOF_INT 4\000"
.LASF565:
	.ascii	"__SEGGER_RTL_SIZEOF_LONG 4\000"
.LASF408:
	.ascii	"__arm__ 1\000"
.LASF350:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF353:
	.ascii	"__SA_FBIT__ 15\000"
.LASF285:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF524:
	.ascii	"__SEGGER_RTL_USE_FPU_FOR_IDIV 0\000"
.LASF435:
	.ascii	"__ARM_EABI__ 1\000"
.LASF609:
	.ascii	"__SEGGER_RTL_SIDE_BY_SIZE 0\000"
.LASF536:
	.ascii	"__WIDTH_LONG 1\000"
.LASF415:
	.ascii	"__THUMBEL__ 1\000"
.LASF639:
	.ascii	"__SEGGER_RTL_SIZE_T_DEFINED \000"
.LASF332:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF707:
	.ascii	"SEGGER_RTT_PUT_BUFFER_SECTION(Var) Var\000"
.LASF626:
	.ascii	"__SEGGER_RTL_HIDE(X) __c_ ##X\000"
.LASF321:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF346:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF703:
	.ascii	"SEGGER_RTT_PUT_SECTION(Var,Section) Var\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF402:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF755:
	.ascii	"SEGGER_RTT_HasData\000"
.LASF417:
	.ascii	"__ARM_ARCH_ISA_THUMB 1\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 1\000"
.LASF580:
	.ascii	"__SEGGER_RTL_FORMAT_WIDTH_PRECISION\000"
.LASF456:
	.ascii	"STM32G071xx 1\000"
.LASF637:
	.ascii	"__SEGGER_RTL_SIZE_MAX 4294967295uL\000"
.LASF425:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF300:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF174:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF284:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF466:
	.ascii	"SEGGER_RTT_PRINTF_BUFFER_SIZE (64u)\000"
.LASF294:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF763:
	.ascii	"SEGGER_RTT_WriteString\000"
.LASF485:
	.ascii	"__SEGGER_RTL_ISA_T32 1\000"
.LASF161:
	.ascii	"__DBL_DIG__ 15\000"
.LASF280:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF527:
	.ascii	"__SEGGER_RTL_LDOUBLE_C_COMPLEX long double _Complex"
	.ascii	"\000"
.LASF153:
	.ascii	"__FLT_NORM_MAX__ 1.1\000"
.LASF779:
	.ascii	"_WriteNoCheck\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF577:
	.ascii	"__SEGGER_RTL_FORMAT_WIDTH_PRECISION 1\000"
.LASF544:
	.ascii	"__SEGGER_RTL_INCLUDE_GNU_API 0\000"
.LASF114:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF475:
	.ascii	"_CORE_NEEDS_DMB 0\000"
.LASF514:
	.ascii	"__SEGGER_RTL_CORE_HAS_ADDW_SUBW 0\000"
.LASF561:
	.ascii	"__SEGGER_RTL_U32_C(X) X ##u\000"
.LASF441:
	.ascii	"__ARM_FEATURE_CDE\000"
.LASF302:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF479:
	.ascii	"__SEGGER_RTL_STDLIB_H \000"
.LASF590:
	.ascii	"__SEGGER_RTL_SMULL_X_SYNTHESIZED \000"
.LASF787:
	.ascii	"C:\\Users\\wojte\\Documents\\SEGGER Embedded Studio"
	.ascii	" for ARM Projects\\GitHub\\STM32G0_Project\\STM32G0"
	.ascii	"_ZEGAR_FreeRTOS\\stm32g0_ZEGAR_FreeRTOS\000"
.LASF737:
	.ascii	"TerminalId\000"
.LASF119:
	.ascii	"__UINT16_C(c) c\000"
.LASF701:
	.ascii	"MAX(a,b) (((a) > (b)) ? (a) : (b))\000"
.LASF364:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF453:
	.ascii	"__SEGGER_LINKER 1\000"
.LASF370:
	.ascii	"__NO_INLINE__ 1\000"
.LASF497:
	.ascii	"__SEGGER_RTL_FP_HW\000"
.LASF462:
	.ascii	"SEGGER_RTT_MAX_NUM_UP_BUFFERS (3)\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF440:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF173:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF93:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF221:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF731:
	.ascii	"pRTTCB\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF741:
	.ascii	"pRTTCBInit\000"
.LASF455:
	.ascii	"__STM32G0xx_FAMILY 1\000"
.LASF486:
	.ascii	"__SEGGER_RTL_ISA_ARM 2\000"
.LASF97:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF460:
	.ascii	"SEGGER_RTT_H \000"
.LASF675:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_MAGENTA \"\\x1B[1;35m\"\000"
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
.LASF744:
	.ascii	"SEGGER_RTT_SetFlagsDownBuffer\000"
.LASF562:
	.ascii	"__SEGGER_RTL_I64_C(X) X ##LL\000"
.LASF560:
	.ascii	"__SEGGER_RTL_I32_C(X) X\000"
.LASF394:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF271:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF576:
	.ascii	"__SEGGER_RTL_FORMAT_WCHAR 1\000"
.LASF386:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF110:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF447:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF627:
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
.LASF762:
	.ascii	"SEGGER_RTT_PutCharSkipNoLock\000"
.LASF690:
	.ascii	"RTT_CTRL_BG_BRIGHT_BLUE \"\\x1B[4;44m\"\000"
.LASF719:
	.ascii	"SEGGER_RTT_BUFFER_UP\000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF395:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF510:
	.ascii	"__SEGGER_RTL_CORE_HAS_CLZ 0\000"
.LASF653:
	.ascii	"SEGGER_RTT__CB_PADDING (SEGGER_RTT__ROUND_UP_2_CACH"
	.ascii	"E_LINE_SIZE(SEGGER_RTT__CB_SIZE) - SEGGER_RTT__CB_S"
	.ascii	"IZE)\000"
.LASF758:
	.ascii	"SEGGER_RTT_GetKey\000"
.LASF745:
	.ascii	"pDown\000"
.LASF288:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF348:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF282:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF488:
	.ascii	"__SEGGER_RTL_TARGET_ISA __SEGGER_RTL_ISA_T16\000"
.LASF283:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF596:
	.ascii	"__SEGGER_RTL_UMULL_HI_SYNTHESIZED \000"
.LASF192:
	.ascii	"__FLT16_DIG__ 3\000"
.LASF604:
	.ascii	"__SEGGER_RTL_UMLAL_SYNTHESIZED \000"
.LASF502:
	.ascii	"__SEGGER_RTL_CORE_HAS_MLS 0\000"
.LASF621:
	.ascii	"__SEGGER_RTL_I64_L(X) ((__SEGGER_RTL_U32)(__SEGGER_"
	.ascii	"RTL_U64)(X))\000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF491:
	.ascii	"__SEGGER_RTL_BYTE_ORDER (-1)\000"
.LASF360:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF305:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF320:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF620:
	.ascii	"__SEGGER_RTL_I64_H(X) ((__SEGGER_RTL_I32)((__SEGGER"
	.ascii	"_RTL_I64)(X) >> 32))\000"
.LASF176:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF642:
	.ascii	"EXIT_SUCCESS 0\000"
.LASF684:
	.ascii	"RTT_CTRL_BG_CYAN \"\\x1B[24;46m\"\000"
.LASF87:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF72:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF76:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF222:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF704:
	.ascii	"SEGGER_RTT_CB_ALIGN(Var) Var\000"
.LASF75:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF106:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF505:
	.ascii	"__SEGGER_RTL_THREAD __thread\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF183:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF243:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF281:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF219:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF201:
	.ascii	"__FLT16_EPSILON__ 1.1\000"
.LASF625:
	.ascii	"__SEGGER_RTL_HUGE_VALF __builtin_huge_valf()\000"
.LASF624:
	.ascii	"__SEGGER_RTL_HUGE_VAL __builtin_huge_val()\000"
.LASF418:
	.ascii	"__ARMEL__ 1\000"
.LASF444:
	.ascii	"__ARM_FEATURE_BF16_SCALAR_ARITHMETIC\000"
.LASF333:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF529:
	.ascii	"__SEGGER_RTL_VA_LIST __builtin_va_list\000"
.LASF556:
	.ascii	"__SEGGER_RTL_LEAST_U16 unsigned\000"
.LASF78:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF390:
	.ascii	"__ARM_FEATURE_SAT\000"
.LASF555:
	.ascii	"__SEGGER_RTL_LEAST_U32 unsigned\000"
.LASF409:
	.ascii	"__ARM_ARCH\000"
.LASF214:
	.ascii	"__FLT32_NORM_MAX__ 1.1\000"
.LASF71:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF660:
	.ascii	"RTT_CTRL_RESET \"\\x1B[0m\"\000"
.LASF682:
	.ascii	"RTT_CTRL_BG_BLUE \"\\x1B[24;44m\"\000"
.LASF643:
	.ascii	"EXIT_FAILURE 1\000"
.LASF605:
	.ascii	"__SEGGER_RTL_DIVMOD_U32(Q,R,N,D) do { Q = N / D; R "
	.ascii	"= N - Q*D; } while (0)\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF461:
	.ascii	"SEGGER_RTT_CONF_H \000"
.LASF345:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF490:
	.ascii	"__SEGGER_RTL_INCLUDE_GNU_FP16_API 1\000"
.LASF403:
	.ascii	"__ARM_FEATURE_SIMD32\000"
.LASF632:
	.ascii	"__SEGGER_RTL_CORE_HAS_UDIVM_X 0\000"
.LASF84:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF108:
	.ascii	"__INT16_C(c) c\000"
.LASF768:
	.ascii	"pData\000"
.LASF356:
	.ascii	"__DA_IBIT__ 32\000"
.LASF463:
	.ascii	"SEGGER_RTT_MAX_NUM_DOWN_BUFFERS (3)\000"
.LASF205:
	.ascii	"__FLT16_HAS_QUIET_NAN__ 1\000"
.LASF228:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF680:
	.ascii	"RTT_CTRL_BG_GREEN \"\\x1B[24;42m\"\000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF163:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF126:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF295:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF231:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF685:
	.ascii	"RTT_CTRL_BG_WHITE \"\\x1B[24;47m\"\000"
.LASF90:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF160:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF277:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF734:
	.ascii	"BufferIndex\000"
.LASF716:
	.ascii	"WrOff\000"
.LASF70:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF631:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIV_X 0\000"
.LASF442:
	.ascii	"__ARM_FEATURE_CDE_COPROC\000"
.LASF8:
	.ascii	"__VERSION__ \"10.3.1 20210824 (release)\"\000"
	.ident	"GCC: (based on arm-10.3-2021.10 GCC) 10.3.1 20210824 (release)"
