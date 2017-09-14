	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.GLOBAL _start
	.ARM
_start:					@ Entry point of the ROM on startup
	b init				@ Skip over the header information

	.INCLUDE "asm/rom_header.s"

	.ALIGN 2, 0
init:
    mov r0, #18
    msr cpsr, r0
    ldr sp, _080000F8  @ =0x03007FA0
    mov r0, #31
    msr cpsr, r0
    ldr sp, _080000F4  @ =0x03007F00
    ldr r1, _080000FC  @ =0x03007FFC
    adr r0, interrupt_main
    str r0, [r1]
    ldr r1, _08000100  @ =AgbMain
    mov lr, pc
    bx r1
    b init
_080000F4:
	.4byte 0x03007F00
_080000F8:
	.4byte 0x03007FA0
_080000FC:
	.4byte 0x03007FFC
_08000100:
	.4byte AgbMain

interrupt_main:
	mov r3, #0x4000000
	add r3, r3, #512
	ldr r2, [r3]
	ldrh r1, [r3, #8]
	mrs r0, spsr
	push {r0-r3,lr}
	mov r0, #1
	strh r0, [r3, #8]
	and r1, r2, r2, lsr #16
	mov r12, #0
	ands r0, r1, #192
	bne _080001B0
	add r12, r12, #4
	ands r0, r1, #1
	bne _080001B0
	add r12, r12, #4
	ands r0, r1, #4
	bne _080001B0
	add r12, r12, #4
	ands r0, r1, #2
	bne _080001B0
	add r12, r12, #4
	ands r0, r1, #256
	bne _080001B0
	add r12, r12, #4
	ands r0, r1, #512
	bne _080001B0
	add r12, r12, #4
	ands r0, r1, #1024
	bne _080001B0
	add r12, r12, #4
	ands r0, r1, #2048
	bne _080001B0
	add r12, r12, #4
	ands r0, r1, #4096
	bne _080001B0
	add r12, r12, #4
	ands r0, r1, #16
	bne _080001B0
	add r12, r12, #4
	ands r0, r1, #0x2000
	strneb r0, [r3, #-380]
_080001AC:
	bne _080001AC
_080001B0:
	strh r0, [r3, #2]
	mov r1, #0x20c0
	bic r2, r2, r0
	and r1, r1, r2
	strh r1, [r3]
	mrs r3, cpsr
	bic r3, r3, #223
	orr r3, r3, #31
	msr cpsr, r3
	ldr r1, _08000214  @ =0x03000B70
	add r1, r1, r12
	ldr r0, [r1]
	stmfd sp!, {lr}
	add lr, pc, #0
	bx r0

	ldmfd sp!, {lr}
	mrs r3, cpsr
	bic r3, r3, #223
	orr r3, r3, #146
	msr cpsr, r3
	pop {r0-r3,lr}
	strh r2, [r3]
	strh r1, [r3, #8]
	msr spsr, r0
	bx lr

_08000214:
	.4byte 0x03000B70
_08000218:
	.4byte 0x08012541
	.4byte 0x0803DBAD
	.4byte 0x08012541
	.4byte 0x08009555
	.4byte 0x08009F1D
	.4byte 0x08012541
	.4byte 0x0804C171
	.4byte 0x080045FD
	.4byte 0x0803F6AD

	.GLOBAL sub_0800023C
sub_0800023C:
	mov r3, lr
	push {r3-r11}
	ldr r0, _080002F0  @ =0x03000208
	ldrh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0]
	ldr r4, _080002F4  @ =0x03005958
	ldr r5, _080002F8  @ =0x030059A0
	ldr r6, _080002FC  @ =0x0300044C
	ldr r7, _08000300  @ =_08000218
	ldr r8, _08000304  @ =0x03005968
	ldr r9, _08000308  @ =0x03005AE0
	ldr r10, _0800030C  @ =0x0803E115
_08000274:
	add r4, r4, #8
	cmp r4, r5
	bcs _080002D0
	ldr r11, [r4, #4]
_08000284:
	str r11, [r6]
	cmp r4, r11
	beq _080002C0
	ldrb r1, [r11, #8]
	ldr r1, [r7, r1, lsl #2]
	mov r0, r11
	mov lr, pc
	bx r1
	ldr r0, [r6]
	cmp r0, r11
	bne _080002B8
	mov lr, pc
	bx r9
_080002B8:
	ldr r11, [r0, #4]
	b _08000284
_080002C0:
	cmp r4, r8
	bne _08000274
	adr lr, _08000274
	bx r10
_080002D0:
	ldr r0, _08000310  @ =0x080126CD
	mov lr, pc
	bx r0
	ldr r4, _08000314  @ =0x03000208
	mov r5, #0
	strh r5, [r4, #2]
	pop {r3-r11}
	bx r3

_080002F0:
	.4byte 0x03000208
_080002F4:
	.4byte 0x03005958
_080002F8:
	.4byte 0x030059A0
_080002FC:
	.4byte 0x0300044C
_08000300:
	.4byte _08000218
_08000304:
	.4byte 0x03005968
_08000308:
	.4byte 0x03005AE0
_0800030C:
	.4byte 0x0803E115
_08000310:
	.4byte 0x080126CD
_08000314:
	.4byte 0x03000208

_08000318:
	push {r8-r11}
	mov r12, #0x4000000
	ldr r11, _08000354  @ =0x02030790
	add r10, r11, #40
	mov r9, #1
	mov r8, #0
	strb r8, [r12, #520]
	ldm r10, {r0,r1}
	stm r10!, {r1}
	stm r10!, {r0}
	ldrb r0, [r11, #5]
	strb r8, [r11, #5]
	strb r9, [r12, #520]
	pop {r8-r11}
	bx lr
_08000354:
	.4byte 0x02030790

@	.INCBIN "baserom.gba", 0x358
