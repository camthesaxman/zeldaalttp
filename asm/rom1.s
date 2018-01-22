	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_08000358
sub_08000358: @ 0x08000358
	push {r4-r7,lr}
	mov r2, #0
	mov r12, r2
	add r4, r0, #0
	add r4, r4, #48
	add r5, r1, #0
	add r5, r5, #48
	ldr r6, [r4, #24]
	ldr r7, [r5, #24]
	ldrh r0, [r4, #32]
	ldrh r1, [r5, #32]
	and r0, r0, r1
	lsr r0, r0, #14
	beq _080003DA
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	sub r0, r0, r1
	mov r2, #0
	ldrsb r1, [r6, r2]
	add r0, r0, r1
	ldrsb r1, [r7, r2]
	sub r0, r0, r1
	ldrb r2, [r6, #6]
	ldrb r3, [r7, #6]
	add r2, r2, r3
	add r0, r0, r2
	add r2, r2, r2
	cmp r2, r0
	bcc _080003DA
	ldrh r2, [r4, #6]
	ldrh r3, [r5, #6]
	sub r2, r2, r3
	mov r1, #1
	ldrsb r3, [r6, r1]
	add r2, r2, r3
	ldrsb r3, [r7, r1]
	sub r2, r2, r3
	ldrb r1, [r6, #6]
	ldrb r3, [r7, #6]
	add r3, r3, r1
	add r2, r2, r3
	add r3, r3, r3
	cmp r3, r2
	bcc _080003DA
	mov r2, #5
	mov r3, #5
	ldrb r0, [r4, #12]
	lsr r0, r0, #5
	bcc _080003BC
	ldrb r2, [r6, #8]
_080003BC:
	ldrb r0, [r5, #12]
	lsr r0, r0, #5
	bcc _080003C4
	ldrb r3, [r7, #8]
_080003C4:
	add r2, r2, r3
	mov r0, #10
	ldrsh r1, [r5, r0]
	ldrsh r0, [r4, r0]
	sub r0, r0, r1
	add r0, r0, r2
	lsl r2, r2, #1
	cmp r2, r0
	bcc _080003DA
	mov r2, #1
	mov r12, r2
_080003DA:
	mov r0, r12
	pop {r4-r7,pc}
	THUMB_FUNC_END sub_08000358

	@ likely hand-written assembly
	THUMB_FUNC_START sub_080003E0
sub_080003E0:
	ldrh r2, [r0, #50]
	ldrh r3, [r1, #50]
	sub r2, r2, r3
	add r3, r2, #0
	add r2, r2, #8
	cmp r2, #17
	bcc _08000410
	ldrh r2, [r1, #54]
	ldrh r1, [r0, #54]
	add r2, r2, #3
	sub r1, r1, r2
	mov r2, #0
	add r1, r1, #8
	cmp r1, #17
	bcs _08000408
	lsl r3, r3, #1
	bcs _08000406
	mov r2, #128
	b _08000408
_08000406:
	mov r2, #32
_08000408:
	ldr r1, [r0, #96]
	orr r1, r1, r2
	str r1, [r0, #96]
	mov pc, lr
_08000410:
	ldrh r2, [r0, #54]
	ldrh r3, [r1, #54]
	add r3, r3, #3
	mov r1, #0
	sub r2, r2, r3
	bpl _08000424
	add r2, r2, #8
	bpl _0800042A
	mov r1, #64
	b _0800042A
_08000424:
	sub r2, r2, #8
	bmi _0800042A
	mov r1, #16
_0800042A:
	ldr r2, [r0, #96]
	orr r2, r2, r1
	str r2, [r0, #96]
	mov pc, lr
	THUMB_FUNC_END sub_080003E0

	THUMB_FUNC_START sub_08000434
sub_08000434: @ 0x08000434
	push {lr}
	ldr r0, _08000774  @ =gUnknown_03000E40
	ldr r1, _08000778  @ =_08000440 + 1
	mov lr, r1
	bx r0

	.align 2, 0

_08000440:
	bl sub_0803A320
	pop {pc}
	THUMB_FUNC_END sub_08000434

	.align 2, 0

	THUMB_FUNC_START sub_08000448
sub_08000448:
	mov r3, lr
	push {r3-r7}
	add r4, r4, #48
	add r5, r5, #48
	ldr r6, [r4, #24]
	ldr r7, [r5, #24]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	sub r0, r0, r1
	mov r2, #0
	ldrsb r1, [r6, r2]
	add r0, r0, r1
	ldrsb r1, [r7, r2]
	sub r0, r0, r1
	add r1, r0, #0
	ldrb r2, [r6, #6]
	ldrb r3, [r7, #6]
	add r2, r2, r3
	add r1, r1, r2
	add r2, r2, r2
	cmp r2, r1
	bcc _0800051E
	ldrh r2, [r4, #6]
	ldrh r3, [r5, #6]
	sub r2, r2, r3
	mov r1, #1
	ldrsb r3, [r6, r1]
	add r2, r2, r3
	ldrsb r3, [r7, r1]
	sub r2, r2, r3
	ldrb r1, [r6, #7]
	ldrb r3, [r7, #7]
	add r3, r3, r1
	add r1, r2, #0
	add r2, r2, r3
	add r3, r3, r3
	cmp r3, r2
	bcc _0800051E
	push {r0,r1}
	mov r2, #5
	mov r3, #5
	ldrb r0, [r4, #12]
	lsr r0, r0, #5
	bcc _080004A2
	ldrb r2, [r6, #8]
_080004A2:
	ldrb r0, [r5, #12]
	lsr r0, r0, #5
	bcc _080004AA
	ldrb r3, [r7, #8]
_080004AA:
	add r2, r2, r3
	mov r0, #10
	ldrsh r1, [r5, r0]
	ldrsh r0, [r4, r0]
	sub r0, r0, r1
	add r0, r0, r2
	lsl r2, r2, #1
	cmp r2, r0
	bcc _0800051C
	mov r0, #32
	ldrb r2, [r4, #12]
	and r2, r2, r0
	lsr r2, r2, #3
	ldrb r3, [r5, #12]
	and r3, r3, r0
	lsr r3, r3, #2
	add r2, r2, r3
	pop {r0,r1}
	beq _080004DA
	ldr r3, _0800077C  @ _08000524
	ldr r2, [r3, r2]
	ldr r3, _08000780  @ =_080004DA + 1
	mov lr, r3
	bx r2
_080004DA:
	mov r2, #0
	add r3, r2, #0
	bl sub_08003F54
	add r6, r0, #0
	ldr r0, _08000784  @ =gUnknown_081423A0
	ldrb r1, [r4, #16]
	ldrb r2, [r5, #15]
	lsl r2, r2, #6
	add r1, r1, r2
	ldrb r0, [r0, r1]
	lsl r0, r0, #2
	ldr r1, _08000788  @ =gUnknown_0813E400
	ldr r7, [r1, r0]
	add r0, r4, #0
	sub r0, r0, #48
	add r1, r5, #0
	sub r1, r1, #48
	add r2, r6, #0
	ldr r3, _0800078C  @ =_08000506 + 1
	mov lr, r3
	bx r7

_08000506:
	cmp r0, #0
	beq _0800051E
	cmp r0, #2
	beq _08000516
	strb r6, [r5, #14]
	mov r0, #16
	eor r6, r6, r0
	strb r6, [r4, #14]
_08000516:
	mov r0, #1
	pop {r3-r7}
	bx r3
_0800051C:
	pop {r0-r1}
_0800051E:
	mov r0, #0
	pop {r3-r7}
	bx r3

	.align 2, 0
_08000524:
	.4byte _08000534 + 1
	.4byte _08000538 + 1
	.4byte _08000554 + 1
	.4byte _08000570 + 1

	.align 2, 0
_08000534:
	mov pc, lr

	.align 2, 0
_08000538:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	mov r2, #0
	sub r0, r0, r1
	ldrsb r1, [r7, r2]
	sub r0, r0, r1
	ldrh r1, [r4, #6]
	ldrh r2, [r5, #6]
	sub r1, r1, r2
	mov r3, #1
	ldrsb r2, [r7, r3]
	sub r1, r1, r2
	mov pc, lr

	.align 2, 0
_08000554:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	sub r0, r0, r1
	mov r2, #0
	ldrsb r1, [r6, r2]
	add r0, r0, r1
	ldrh r1, [r4, #6]
	ldrh r2, [r5, #6]
	sub r1, r1, r2
	mov r3, #1
	ldrsb r2, [r6, r3]
	add r1, r1, r2
	mov pc, lr

	.align 2, 0
_08000570:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	sub r0, r0, r1
	ldrh r1, [r4, #6]
	ldrh r2, [r5, #6]
	sub r1, r1, r2
	mov pc, lr

	THUMB_FUNC_START sub_08000580
sub_08000580: @ 0x08000580
	push {r4-r6,lr}
	add r4, r0, #0
	mov r5, #0
	ldr r6, _08000790  @ =gUnknown_03006A58
	ldr r1, [r6]
	cmp r1, #0
	beq _0800059E
	ldrh r2, [r1, #58]
	cmp r2, #0
	bne _0800059E
	bl sub_08000358
	cmp r0, #0
	beq _0800059E
	add r5, r5, #1
_0800059E:
	add r6, r6, #144
	ldr r1, [r6]
	cmp r1, #0
	beq _080005B8
	ldrh r2, [r1, #58]
	cmp r2, #0
	bne _080005B8
	add r0, r4, #0
	bl sub_08000358
	cmp r0, #0
	beq _080005B8
	add r5, r5, #2
_080005B8:
	add r6, r6, #144
	ldr r1, [r6]
	cmp r1, #0
	beq _080005D2
	ldrh r2, [r1, #58]
	cmp r2, #0
	bne _080005D2
	add r0, r4, #0
	bl sub_08000358
	cmp r0, #0
	beq _080005D2
	add r5, r5, #4
_080005D2:
	add r6, r6, #144
	ldr r1, [r6]
	cmp r1, #0
	beq _080005EC
	ldrh r2, [r1, #58]
	cmp r2, #0
	bne _080005EC
	add r0, r4, #0
	bl sub_08000358
	cmp r0, #0
	beq _080005EC
	add r5, r5, #8
_080005EC:
	add r0, r5, #0
	pop {r4-r6,pc}
	ldr r1, _08000794  @ =gUnknown_03005060
	ldr r2, _08000798  @ =gUnknown_03005960
_080005F4:
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _08000602
	add r1, r1, #144
	cmp r1, r2
	bcc _080005F4
	mov pc, lr
_08000602:
	ldr r2, _0800079C  @ =gUnknown_02016D50
	ldr r2, [r2]
	ldr r3, [r2]
	str r3, [r1]
	str r2, [r1, #4]
	str r1, [r2]
	str r1, [r3, #4]
	str r0, [r1, #8]
	mov r1, #94
	ldrb r2, [r0, r1]
	mov r3, #16
	orr r2, r2, r3
	strb r2, [r0, r1]
	mov pc, lr

	.align 2, 0
	ldr r1, _080007A0  @ =gUnknown_03005060
	ldr r2, _080007A4  @ =gUnknown_03005960
_08000624:
	ldr r3, [r1, #8]
	cmp r3, r0
	beq _08000632
_0800062A:
	add r1, r1, #144
	cmp r1, r2
	bcc _08000624
	mov pc, lr
_08000632:
	mov r3, #94
	ldrb r3, [r0, r3]
	lsr r3, r3, #5
	bcc _0800062A
	push {r4}
	mov r2, #0
	str r2, [r1, #8]
	strb r2, [r1, #12]
	ldrb r4, [r1, #13]
	strb r2, [r1, #13]
	ldr r2, [r1]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	str r2, [r3]
	cmp r4, #1
	bne _0800065C
	ldrb r1, [r2, #13]
	cmp r1, #1
	beq _0800065C
	ldr r1, _080007A8  @ =gUnknown_02016D50
	str r3, [r1]
_0800065C:
	mov r1, #94
	ldrb r2, [r0, r1]
	mov r3, #239
	and r2, r2, r3
	strb r2, [r0, r1]
	pop {r4}
	mov pc, lr
	THUMB_FUNC_END sub_08000580

	THUMB_FUNC_START sub_0800066C
sub_0800066C: @ 0x0800066C
	push {r4-r7,lr}
	ldr r1, [r0, #72]
	ldr r2, _080007AC  @ =gUnknown_03006A44
	mov r6, #1
	mov r7, #80
	bl sub_080006BC
	add r2, r2, #144
	mov r6, #2
	bl sub_080006BC
	add r2, r2, #144
	mov r6, #4
	bl sub_080006BC
	add r2, r2, #144
	mov r6, #8
	bl sub_080006BC
	pop {r4-r7,pc}
	THUMB_FUNC_END sub_0800066C

	THUMB_FUNC_START sub_08000694
sub_08000694: @ 0x08000694
	push {r4-r7,lr}
	ldr r1, [r0, #72]
	ldr r2, _080007B0  @ =gUnknown_03006A44
	mov r6, #1
	mov r7, #80
	bl sub_080006CC
	add r2, r2, #144
	mov r6, #2
	bl sub_080006CC
	add r2, r2, #144
	mov r6, #4
	bl sub_080006CC
	add r2, r2, #144
	mov r6, #8
	bl sub_080006CC
	pop {r4-r7,pc}
	THUMB_FUNC_END sub_08000694

	.align 2, 0
	THUMB_FUNC_START sub_080006BC
sub_080006BC:
	ldr r3, [r2, #20]
	cmp r3, #0
	beq _0800073C
	ldrh r4, [r2, #34]
	lsr r4, r4, #8
	bcs _080006D2
	b _0800073C

	.align 2, 0
	THUMB_FUNC_START sub_080006CC
sub_080006CC:
	ldr r3, [r2, #20]
	cmp r3, #0
	beq _0800073C
_080006D2:
	ldrh r4, [r2, #34]
	ldr r5, _080007B4  @ =0x00001051
	and r4, r4, r5
	bne _0800073C
	ldrb r4, [r3, #20]
	cmp r4, #3
	beq _0800073C
	ldrh r4, [r0, #50]
	ldrh r5, [r3, #50]
	sub r5, r5, r4
	ldrb r4, [r1, #6]
	add r5, r5, r4
	lsl r4, r4, #1
	cmp r5, r4
	bcs _0800073C
	ldrh r4, [r0, #54]
	ldrh r5, [r3, #54]
	add r5, r5, #3
	sub r5, r5, r4
	ldrb r4, [r1, #7]
	add r5, r5, r4
	lsl r4, r4, #1
	cmp r5, r4
	bcs _0800073C
	mov r4, #58
	ldrsh r5, [r3, r4]
	add r5, r5, #5
	bmi _0800073C
	ldrh r4, [r0, r7]
	ldrh r5, [r3, r7]
	and r4, r4, r5
	lsr r4, r4, #14
	beq _0800073C
	ldrb r4, [r2]
	cmp r4, #0
	bne _0800073C
	mov r4, #1
	strb r4, [r2]
	ldr r4, [r0, #96]
	orr r4, r4, r6
	str r4, [r0, #96]
	ldrh r4, [r0, r7]
	lsr r4, r4, #14
	lsl r4, r4, #14
	lsl r5, r5, #18
	lsr r5, r5, #18
	orr r4, r4, r5
	strh r4, [r3, r7]
	push {r0-r2,lr}
	add r0, r3, #0
	bl sub_08008DD8
	pop {r0-r2,pc}
_0800073C:
	mov pc, lr
	THUMB_FUNC_END sub_08000694

	THUMB_FUNC_START sub_08000740
sub_08000740: @ 0x08000740
	ldr r1, _080007B8  @ =gUnknown_03005060
	ldr r2, _080007BC  @ =gUnknown_03005960
_08000744:
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _08000752
	add r1, r1, #144
	cmp r1, r2
	bcc _08000744
	mov pc, lr
_08000752:
	ldr r2, _080007C0  @ =gUnknown_02016D50
	ldr r3, [r2]
	str r1, [r2]
	ldr r2, [r3]
	str r2, [r1]
	str r3, [r1, #4]
	str r1, [r3]
	str r1, [r2, #4]
	mov r2, #1
	strb r2, [r1, #13]
	str r0, [r1, #8]
	mov r1, #94
	ldrb r2, [r0, r1]
	mov r3, #16
	orr r2, r2, r3
	strb r2, [r0, r1]
	mov pc, lr
	THUMB_FUNC_END sub_08000740

_08000774:
	.4byte gUnknown_03000E40
_08000778:
	.4byte _08000440 + 1
_0800077C:
	.4byte _08000524
_08000780:
	.4byte _080004DA + 1
_08000784:
	.4byte gUnknown_081423A0
_08000788:
	.4byte gUnknown_0813E400
_0800078C:
	.4byte _08000506 + 1
_08000790:
	.4byte gUnknown_03006A58
_08000794:
	.4byte gUnknown_03005060
_08000798:
	.4byte gUnknown_03005960
_0800079C:
	.4byte gUnknown_02016D50
_080007A0:
	.4byte gUnknown_03005060
_080007A4:
	.4byte gUnknown_03005960
_080007A8:
	.4byte gUnknown_02016D50
_080007AC:
	.4byte gUnknown_03006A44
_080007B0:
	.4byte gUnknown_03006A44
_080007B4:
	.4byte 0x00001051
_080007B8:
	.4byte gUnknown_03005060
_080007BC:
	.4byte gUnknown_03005960
_080007C0:
	.4byte gUnknown_02016D50

	ARM_FUNC_START sub_080007C4
sub_080007C4:
	mov r3, lr
	push {r3-r11}
	ldr r8, =gUnknown_02016D50
	ldr r8, [r8]
	mov r9, r8
_080007D8:
	stmfd sp!, {r9}
	ldrb r10, [r8, #12]
	cmp r10, #0
	beq _08000888
	ldr r4, [r8, #8]
	ldrb r11, [r4, #60]
	lsrs r0, r11, #7
	beq _08000888
	add r9, r8, #16
_080007FC:
	ldr r5, [r9]
	ldrb r0, [r5, #60]
	cmp r0, #128
	bcc _0800087C
	orr r0, r0, r11
	lsrs r0, r0, #7
	bcs _08000848
	ldrb r0, [r5, #67]
	cmp r0, #0
	beq _08000830
	ldrb r0, [r4, #8]
	cmp r0, #1
	beq _0800087C
_08000830:
	ldrb r0, [r4, #61]
	cmp r0, #0
	bne _0800087C
	ldrb r0, [r5, #61]
	cmp r0, #0
	bne _0800087C
_08000848:
	ldr r0, =sub_08000448
	mov lr, pc
	bx r0
	cmp r0, #0
	beq _0800087C
	ldrb r0, [r4, #64]
	orr r0, r0, #128
	strb r0, [r5, #65]
	str r4, [r5, #76]
	ldrb r0, [r5, #64]
	orr r0, r0, #128
	strb r0, [r4, #65]
	str r5, [r4, #76]
_0800087C:
	add r9, r9, #4
	subs r10, r10, #1
	bne _080007FC
_08000888:
	ldmfd sp!, {r9}
	ldr r8, [r8, #4]
	cmp r8, r9
	bne _080007D8
	pop {r3-r11}
	bx r3
	.POOL
	ARM_FUNC_END sub_080007C4

	.GLOBAL sub_080008A8
sub_080008A8:
	.INCBIN "baserom.gba", 0x8A8, 0x3F54-0x8A8

	.GLOBAL sub_08003F54
sub_08003F54:
	.INCBIN "baserom.gba", 0x3F54, 0x8DD8-0x3F54

	.GLOBAL sub_08008DD8
sub_08008DD8:
	.INCBIN "baserom.gba", 0x8DD8, 0x8FA4-0x8DD8

	.GLOBAL sub_08008FA4
sub_08008FA4:
	.INCBIN "baserom.gba", 0x8FA4, 0xB084-0x8FA4
