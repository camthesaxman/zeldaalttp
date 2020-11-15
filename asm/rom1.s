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

.syntax unified

	arm_func_start sub_080008A8
sub_080008A8: @ 0x080008A8
	mov r2, #0
	ldrb r1, [r0, #0x3c]
	cmp r1, #0x80
	blo _08000980
	push {r4, r5, r6, r7, r8, sb, sl}
	mov sb, r2
	ldr sl, _08000994 @ =0x08137B10
	ldrh r4, [r0, #0x5c]
	ldr r1, _08000998 @ =0x02016D50
	ldr r1, [r1]
	mov r2, r1
	ldrh r5, [r0, #0x32]
	add r5, r5, #0x38
	ldrh r6, [r0, #0x36]
	add r6, r6, #0x38
	ldrh r7, [r0, #0x50]
_080008E8:
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _0800096C
	ldrb r8, [r3, #0x3c]
	cmp r8, #0x80
	blo _0800096C
	and r8, r8, #0xf
	ldr r8, [sl, r8, lsl #2]
	ands r8, r8, r4
	beq _0800096C
	ldrh r8, [r3, #0x32]
	sub r8, r5, r8
	cmp r8, #0x71
	bhs _0800096C
	ldrh r8, [r3, #0x36]
	sub r8, r6, r8
	cmp r8, #0x71
	bhs _0800096C
	ldrh r8, [r3, #0x50]
	and r8, r7, r8
	lsrs r8, r8, #0xe
	beq _0800096C
	cmp r3, r0
	beq _0800096C
	add sb, sb, #1
	ldrb r8, [r1, #0xc]
	cmp r8, #0x20
	bhs _0800096C
	add ip, r8, #1
	strb ip, [r1, #0xc]
	lsl r8, r8, #2
	add r8, r8, #0x10
	str r0, [r1, r8]
_0800096C:
	ldr r1, [r1, #4]
	cmp r1, r2
	bne _080008E8
	mov r2, sb
	pop {r4, r5, r6, r7, r8, sb, sl}
_08000980:
	ldrb r3, [r0, #8]
	cmp r3, #3
	bne _08000990
	strb r2, [r0, #0x6b]
_08000990:
	bx lr
	.align 2, 0
_08000994: .4byte 0x08137B10
_08000998: .4byte 0x02016D50

	thumb_func_start sub_0800099C
sub_0800099C: @ 0x0800099C
	ldr r2, _08000AC0 @ =0x03000F40
	ldr r0, [r2]
	lsls r1, r0, #1
	adds r0, r0, r1
	movs r3, #0xd
	rors r0, r3
	str r0, [r2]
	mov pc, lr

	thumb_func_start sub_080009AC
sub_080009AC: @ 0x080009AC
	push {r4, r5}
	movs r3, #0
	movs r5, #1
	lsrs r2, r1, #0x10
	beq _080009C4
	ldr r4, _08000AC4 @ =0xFFFFFFFF
_080009B8:
	adds r4, r4, r5
	lsls r1, r5
	blo _080009B8
	adds r1, r1, r5
	rors r1, r5
	b _080009D0
_080009C4:
	movs r4, #0x20
	adds r2, r1, #0
_080009C8:
	subs r4, r4, r5
	lsrs r2, r5
	bne _080009C8
	lsls r1, r4
_080009D0:
	lsls r5, r4
	adds r2, r0, #0
_080009D4:
	subs r0, r0, r1
	blo _080009DC
	adds r3, r3, r5
	adds r2, r0, #0
_080009DC:
	adds r0, r2, #0
	lsrs r1, r1, #1
	lsrs r5, r5, #1
	bne _080009D4
	adds r0, r3, #0
	pop {r4, r5}
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080009EC
sub_080009EC: @ 0x080009EC
	movs r3, #1
	b _080009F6

	thumb_func_start sub_080009F0
sub_080009F0: @ 0x080009F0
	movs r3, #2
	b _080009F6

	thumb_func_start sub_080009F4
sub_080009F4: @ 0x080009F4
	movs r3, #0
_080009F6:
	push {r4, r5}
	ldr r5, _08000AC8 @ =0x030066B0
	ldr r4, _08000ACC @ =0x03000204
	ldrb r4, [r4]
	orrs r4, r4
	beq _08000A04
	ldr r5, _08000AD0 @ =0x03006730
_08000A04:
	ldr r4, _08000AD4 @ =0x03000E34
	ldr r4, [r4]
	adds r4, #0xb
	cmp r4, r5
	bhs _08000A3C
	ldr r4, _08000AD8 @ =0x03000E34
	ldr r4, [r4]
	strb r3, [r4]
	adds r4, #1
	movs r3, #4
_08000A18:
	strb r1, [r4]
	adds r4, #1
	lsrs r1, r1, #8
	subs r3, #1
	bne _08000A18
	movs r3, #4
_08000A24:
	strb r0, [r4]
	adds r4, #1
	lsrs r0, r0, #8
	subs r3, #1
	bne _08000A24
	strb r2, [r4]
	adds r4, #1
	lsrs r2, r2, #8
	strb r2, [r4]
	adds r4, #1
	ldr r3, _08000ADC @ =0x03000E34
	str r4, [r3]
_08000A3C:
	pop {r4, r5}
	mov pc, lr

	thumb_func_start sub_08000A40
sub_08000A40: @ 0x08000A40
	lsrs r1, r0, #1
	ldr r2, _08000AE0 @ =0x55555555
	ands r0, r2
	ands r1, r2
	adds r0, r0, r1
	lsrs r1, r0, #2
	ldr r2, _08000AE4 @ =0x33333333
	ands r0, r2
	ands r1, r2
	adds r0, r0, r1
	lsrs r1, r0, #4
	ldr r2, _08000AE8 @ =0x0F0F0F0F
	ands r0, r2
	ands r1, r2
	adds r0, r0, r1
	lsrs r1, r0, #8
	ldr r2, _08000AEC @ =0x00FF00FF
	ands r0, r2
	ands r1, r2
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov pc, lr

	thumb_func_start sub_08000A70
sub_08000A70: @ 0x08000A70
	movs r2, #0xff
	mvns r0, r0
	beq _08000AA6
	movs r2, #0
	ldr r1, _08000AF0 @ =0x0000FFFF
	tst r0, r1
	bne _08000A82
	movs r2, #0x10
	lsrs r0, r0, #0x10
_08000A82:
	movs r1, #0xff
	tst r0, r1
	bne _08000A8C
	adds r2, #8
	lsrs r0, r0, #8
_08000A8C:
	movs r1, #0xf
	tst r0, r1
	bne _08000A96
	adds r2, #4
	lsrs r0, r0, #4
_08000A96:
	movs r1, #3
	tst r0, r1
	bne _08000AA0
	adds r2, #2
	lsrs r0, r0, #2
_08000AA0:
	lsrs r0, r0, #1
	bhs _08000AA6
	adds r2, #1
_08000AA6:
	adds r0, r2, #0
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08000AAC
sub_08000AAC: @ 0x08000AAC
	lsrs r2, r1, #5
	lsls r2, r2, #2
	ldr r0, [r0, r2]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	lsrs r0, r1
	movs r1, #1
	ands r0, r1
	mov pc, lr
	.align 2, 0
_08000AC0: .4byte 0x03000F40
_08000AC4: .4byte 0xFFFFFFFF
_08000AC8: .4byte 0x030066B0
_08000ACC: .4byte 0x03000204
_08000AD0: .4byte 0x03006730
_08000AD4: .4byte 0x03000E34
_08000AD8: .4byte 0x03000E34
_08000ADC: .4byte 0x03000E34
_08000AE0: .4byte 0x55555555
_08000AE4: .4byte 0x33333333
_08000AE8: .4byte 0x0F0F0F0F
_08000AEC: .4byte 0x00FF00FF
_08000AF0: .4byte 0x0000FFFF

@ What is this?
	.INCBIN "baserom.gba", 0xAF4, 0x2E70-0xAF4

	thumb_func_start sub_08002E70
sub_08002E70: @ 0x08002E70
	push {r4, r5, r6, r7, lr}
	push {r1, r2}
	adds r6, r2, #0
	bl sub_08002EE4
	pop {r1, r2}
	adds r0, #0x2c
	ldrh r3, [r0]
	b _08003050
	.align 2, 0

	thumb_func_start sub_08002E84
sub_08002E84: @ 0x08002E84
	push {r4, r5, r6, r7, lr}
	adds r0, #0x2c
	b _08003050
	.align 2, 0

	thumb_func_start sub_08002E8C
sub_08002E8C: @ 0x08002E8C
	movs r3, #0x42
	ldrb r2, [r0, r3]
	cmp r2, #0
	beq _08002EB0
	push {r4, r5, r6, r7, lr}
	ldr r4, _080031C4 @ =0x08002EB4
	lsrs r5, r2, #7
	ldrsb r4, [r4, r5]
	subs r2, r2, r4
	strb r2, [r0, r3]
	push {r1}
	bl sub_08003D08
	pop {r2}
	ldr r1, _080031C8 @ =0x00000280
	adds r0, #0x2c
	ldrh r3, [r0]
	b _08003050
_08002EB0:
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08002EB4
sub_08002EB4: @ 0x08002EB4
	.hword 0xFF01
	movs r0, r0
	push {r4, r5, r6, r7, lr}
	adds r2, r1, #0
	ldr r1, _080031C8 @ =0x00000280
	movs r3, #0x42
	adds r3, r3, r0
	ldrb r4, [r3]
	orrs r4, r4
	beq _08002EE2
	ldr r5, _080031CC @ =0x08002EB4
	lsrs r6, r4, #7
	ldrsb r5, [r5, r6]
	subs r4, r4, r5
	strb r4, [r3]
	push {r1, r2}
	adds r6, r2, #0
	bl sub_08002EE4
	pop {r1, r2}
	adds r0, #0x2c
	ldrh r3, [r0]
	b _08003050
_08002EE2:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08002EE4
sub_08002EE4: @ 0x08002EE4
	push {lr}
	b _08002EF4

	thumb_func_start sub_08002EE8
sub_08002EE8: @ 0x08002EE8
	push {lr}
	movs r2, #0x2b
	ldrb r6, [r0, r2]
	movs r3, #0x80
	tst r6, r3
	bne _08002FC0
_08002EF4:
	mov r2, sl
	push {r2}
	eors r7, r7
	mov sl, r0
	movs r2, #0x32
	ldrh r3, [r0, r2]
	movs r2, #0x36
	ldrh r4, [r0, r2]
	movs r2, #0x48
	ldr r5, [r0, r2]
	ldr r1, _080031D0 @ =0x03000468
	ldrh r1, [r1]
	subs r3, r3, r1
	ldr r1, _080031D4 @ =0x0300046A
	ldrh r1, [r1]
	subs r4, r4, r1
	eors r2, r2
	ldrsb r0, [r5, r2]
	adds r0, r0, r3
	movs r2, #1
	ldrsb r1, [r5, r2]
	adds r1, r1, r4
	push {r0, r1}
	movs r4, #0xf
	tst r4, r6
	beq _08002F5C
	ldrb r2, [r5, #2]
	movs r4, #0x10
	tst r6, r4
	beq _08002F32
	rsbs r2, r2, #0
_08002F32:
	adds r0, r0, r2
	bl sub_08002FC4
	orrs r7, r2
	lsls r7, r7, #1
	ldrb r4, [r5, #3]
	adds r1, r1, r4
	bl sub_08002FC4
	orrs r7, r2
	lsls r7, r7, #1
	lsls r4, r4, #1
	subs r1, r1, r4
	bl sub_08002FC4
	orrs r7, r2
	lsls r7, r7, #1
	movs r4, #0x10
	tst r4, r6
	bne _08002F5C
	lsls r7, r7, #4
_08002F5C:
	pop {r0, r1}
	adds r3, r6, #0
	movs r4, #0xf
	ands r3, r4
	movs r4, #8
	cmp r4, r3
	beq _08002FB4
	ldrb r2, [r5, #5]
	movs r4, #0x10
	ands r4, r6
	lsrs r4, r4, #1
	eors r4, r6
	movs r3, #8
	tst r4, r3
	bne _08002F7E
	rsbs r2, r2, #0
	lsls r7, r7, #4
_08002F7E:
	lsls r7, r7, #1
	adds r1, r1, r2
	bl sub_08002FC4
	orrs r7, r2
	lsls r7, r7, #1
	ldrb r4, [r5, #4]
	adds r0, r0, r4
	bl sub_08002FC4
	orrs r7, r2
	lsls r7, r7, #1
	lsls r4, r4, #1
	subs r0, r0, r4
	bl sub_08002FC4
	orrs r7, r2
	lsls r7, r7, #1
	movs r4, #0x10
	ands r4, r6
	lsrs r4, r4, #1
	eors r4, r6
	movs r3, #8
	tst r4, r3
	beq _08002FB6
	lsls r7, r7, #4
	b _08002FB6
_08002FB4:
	lsls r7, r7, #8
_08002FB6:
	mov r0, sl
	movs r2, #0x2c
	strh r7, [r0, r2]
	pop {r2}
	mov sl, r2
_08002FC0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08002FC4
sub_08002FC4: @ 0x08002FC4
	push {lr}
	push {r0, r1}
	ldr r2, _080031D8 @ =0x000003F0
	ands r0, r2
	ands r1, r2
	lsrs r0, r0, #4
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r2, sl
	movs r3, #0x50
	ldrh r3, [r2, r3]
	lsrs r3, r3, #0xe
	lsls r3, r3, #2
	ldr r1, _080031DC @ =0x080092A0
	ldr r1, [r1, r3]
	ldrb r2, [r0, r1]
	cmp r2, #0x10
	pop {r0, r1}
	bhs _08002FFA
	movs r3, #8
	tst r1, r3
	bne _08002FF2
	lsrs r2, r2, #2
_08002FF2:
	tst r0, r3
	bne _08003008
	lsrs r2, r2, #1
	b _08003008
_08002FFA:
	cmp r2, #0xff
	beq _08003008
	movs r3, #0xff
	cmp r2, #0x20
	blo _08003006
	eors r3, r3
_08003006:
	adds r2, r3, #0
_08003008:
	movs r3, #1
	ands r2, r3
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08003010
sub_08003010: @ 0x08003010
	push {r4, r5, r6, r7, lr}
	movs r3, #0x80
	tst r2, r3
	bne _080030B0
	adds r0, #0x2c
	ldrh r3, [r0]
	movs r4, #7
	tst r2, r4
	bne _08003038
	push {r0, r1, r2, r3}
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_080030B4
	adds r4, r0, #0
	pop {r0, r1, r2, r3}
	cmp r2, r4
	beq _08003038
	adds r2, r4, #0
	ldr r1, _080031E0 @ =0x00000100
_08003038:
	b _08003050
	.align 2, 0

	thumb_func_start sub_0800303C
sub_0800303C: @ 0x0800303C
	push {r4, r5, r6, r7, lr}
	eors r6, r6
	ldr r1, [r0, #0xc]
	adds r0, #0x2b
	ldrb r2, [r0]
	movs r3, #0x80
	tst r2, r3
	bne _080030B0
	adds r0, #1
	ldrh r3, [r0]
_08003050:
	ldr r4, _080031E4 @ =0x08002DBC
	lsls r2, r2, #1
	adds r4, r4, r2
	ldrh r4, [r4]
	lsls r2, r2, #3
	ands r3, r4
	ldr r4, _080031E8 @ =0x0000EE00
	tst r3, r4
	bne _08003086
	push {r0, r1, r2, r3}
	ldr r4, _080031EC @ =0x0813E4CC
	adds r4, r4, r2
	ldrh r0, [r4]
	orrs r0, r0
	beq _0800307C
	adds r6, #1
	bl sub_0803D310
	ldr r1, _080031E0 @ =0x00000100
	bl sub_0803D350
	lsls r0, r0, #8
_0800307C:
	adds r4, r0, #0
	pop {r0, r1, r2, r3}
	ldr r5, [r0, #4]
	adds r5, r5, r4
	str r5, [r0, #4]
_08003086:
	movs r4, #0xee
	tst r3, r4
	bne _080030B0
	push {r0, r1, r2, r3}
	ldr r4, _080031F0 @ =0x0813E54C
	adds r4, r4, r2
	ldrh r0, [r4]
	orrs r0, r0
	beq _080030A6
	adds r6, #2
	bl sub_0803D310
	ldr r1, _080031E0 @ =0x00000100
	bl sub_0803D350
	lsls r0, r0, #8
_080030A6:
	adds r4, r0, #0
	pop {r0, r1, r2, r3}
	ldr r5, [r0, #8]
	subs r5, r5, r4
	str r5, [r0, #8]
_080030B0:
	adds r1, r6, #0
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080030B4
sub_080030B4: @ 0x080030B4
	adds r2, r0, #0
	lsrs r2, r2, #3
	orrs r2, r2
	beq _080030F8
	subs r2, #1
	beq _080030DE
	subs r2, #1
	beq _08003112
	ldr r3, _080031F4 @ =0x00000E00
	ands r3, r1
	bne _080030CC
	mov pc, lr
_080030CC:
	movs r2, #0
	ldr r3, _080031F8 @ =0x0000020E
	tst r3, r1
	beq _0800312C
	movs r2, #0x10
	ldr r3, _080031FC @ =0x000004E0
	tst r3, r1
	beq _0800312C
	mov pc, lr
_080030DE:
	ldr r3, _08003200 @ =0x0000E000
	ands r3, r1
	bne _080030E6
	mov pc, lr
_080030E6:
	movs r2, #0
	ldr r3, _08003204 @ =0x0000200E
	tst r3, r1
	beq _0800312C
	movs r2, #0x10
	ldr r3, _08003208 @ =0x000040E0
	tst r3, r1
	beq _0800312C
	mov pc, lr
_080030F8:
	movs r3, #0xe
	ands r3, r1
	bne _08003100
	mov pc, lr
_08003100:
	movs r2, #8
	ldr r3, _0800320C @ =0x0000E004
	tst r3, r1
	beq _0800312C
	movs r2, #0x18
	ldr r3, _08003210 @ =0x00000E02
	tst r3, r1
	beq _0800312C
	mov pc, lr
_08003112:
	movs r3, #0xe0
	ands r3, r1
	bne _0800311A
	mov pc, lr
_0800311A:
	movs r2, #8
	ldr r3, _08003214 @ =0x0000E040
	tst r3, r1
	beq _0800312C
	movs r2, #0x18
	ldr r3, _08003218 @ =0x00000E20
	tst r3, r1
	beq _0800312C
	mov pc, lr
_0800312C:
	adds r0, r2, #0
	mov pc, lr

	thumb_func_start sub_08003130
sub_08003130: @ 0x08003130
	push {r4}
	movs r1, #0x3d
	ldrsb r2, [r0, r1]
	orrs r2, r2
	beq _0800315E
	bmi _0800315C
	subs r2, #1
	beq _0800315E
	ldr r3, _0800321C @ =0x03000E20
	ldrb r3, [r3]
	movs r4, #4
	tst r3, r4
	bne _0800315E
	strb r2, [r0, r1]
	ldrb r1, [r0, #0x1e]
	movs r2, #0xf0
	ands r1, r2
	movs r2, #0xf
	orrs r1, r2
	strb r1, [r0, #0x1e]
	pop {r4}
	mov pc, lr
_0800315C:
	adds r2, #1
_0800315E:
	strb r2, [r0, r1]
	ldrb r1, [r0, #0x1e]
	movs r2, #0xf0
	ands r1, r2
	lsrs r2, r1, #4
	orrs r1, r2
	strb r1, [r0, #0x1e]
	pop {r4}
	mov pc, lr

	thumb_func_start sub_08003170
sub_08003170: @ 0x08003170
	ldr r1, _08003220 @ =0x03006C80
	ldrb r1, [r1]
	subs r1, #1
	beq _08003180
	lsls r1, r1, #2
	ldr r2, _08003224 @ =0x08002DFC
	ldr r0, [r2, r1]
	b _08003184
_08003180:
	eors r0, r0
	mov pc, lr
_08003184:
	push {r4, lr}
	push {r0}
	bl sub_0800099C
	adds r1, r0, #0
	pop {r0}
	movs r2, #0xff
	ands r1, r2
	eors r3, r3
	ldrb r2, [r0]
_08003198:
	cmp r1, r2
	blo _080031A6
	adds r0, #1
	ldrb r4, [r0]
	adds r2, r2, r4
	adds r3, #1
	b _08003198
_080031A6:
	adds r0, r3, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080031AC
sub_080031AC: @ 0x080031AC
	push {r0, lr}
	adds r0, r2, #0
	bl sub_08003DFC
	pop {r0, pc}
	.align 2, 0

	thumb_func_start sub_080031B8
sub_080031B8: @ 0x080031B8
	push {r0, lr}
	adds r1, r2, #0
	bl sub_08003E10
	pop {r0, pc}
	.align 2, 0
_080031C4: .4byte 0x08002EB4
_080031C8: .4byte 0x00000280
_080031CC: .4byte 0x08002EB4
_080031D0: .4byte 0x03000468
_080031D4: .4byte 0x0300046A
_080031D8: .4byte 0x000003F0
_080031DC: .4byte 0x080092A0
_080031E0: .4byte 0x00000100
_080031E4: .4byte 0x08002DBC
_080031E8: .4byte 0x0000EE00
_080031EC: .4byte 0x0813E4CC
_080031F0: .4byte 0x0813E54C
_080031F4: .4byte 0x00000E00
_080031F8: .4byte 0x0000020E
_080031FC: .4byte 0x000004E0
_08003200: .4byte 0x0000E000
_08003204: .4byte 0x0000200E
_08003208: .4byte 0x000040E0
_0800320C: .4byte 0x0000E004
_08003210: .4byte 0x00000E02
_08003214: .4byte 0x0000E040
_08003218: .4byte 0x00000E20
_0800321C: .4byte 0x03000E20
_08003220: .4byte 0x03006C80
_08003224: .4byte 0x08002DFC

    .INCBIN "baserom.gba", 0x3228, 0x3714-0x3228

	thumb_func_start sub_08003714
sub_08003714: @ 0x08003714
	ldrh r2, [r0, #0x32]
	ldr r1, _080039F4 @ =0x03000462
	ldrh r3, [r1, #0xe]
	subs r2, r2, r3
	adds r2, #0x40
	ldr r3, _080039F8 @ =0x00000171
	cmp r2, r3
	bhs _08003742
	ldrh r2, [r0, #0x36]
	ldrh r3, [r1, #0x10]
	subs r2, r2, r3
	adds r2, #0x40
	ldr r3, _080039FC @ =0x00000121
	cmp r2, r3
	bhs _08003742
	movs r3, #0x3a
	ldrsh r3, [r0, r3]
	adds r2, r2, r3
	ldr r3, _080039FC @ =0x00000121
	cmp r2, r3
	bhs _08003742
	movs r1, #1
	mov pc, lr
_08003742:
	movs r1, #0
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08003748
sub_08003748: @ 0x08003748
	push {lr}
	bl sub_0800375C
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_08003754:
	.byte 0x10, 0xB5, 0x42, 0x8E, 0xC3, 0x8E, 0x01, 0xE0

	thumb_func_start sub_0800375C
sub_0800375C: @ 0x0800375C
	push {r4, lr}
	movs r0, r0
	push {r2, r3}
	ldr r4, _08003A00 @ =0x000003F0
	ands r2, r4
	ands r3, r4
	lsrs r2, r2, #4
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0x50
	ldrh r3, [r0, r3]
	lsrs r3, r3, #0xe
	lsls r3, r3, #2
	ldr r4, _08003A04 @ =0x080092A0
	ldr r3, [r4, r3]
	ldrb r4, [r3, r2]
	pop {r2, r3}
	cmp r4, #0x10
	bhs _08003790
	lsrs r3, r3, #4
	bhs _08003788
	lsrs r4, r4, #2
_08003788:
	lsrs r2, r2, #4
	bhs _080037C6
	lsrs r4, r4, #1
	b _080037C6
_08003790:
	cmp r4, #0xff
	beq _080037C6
	subs r4, #0x10
	lsls r4, r4, #1
	ldrh r4, [r1, r4]
	movs r1, #0xf
	ands r1, r2
	cmp r1, #4
	blo _080037B0
	lsrs r4, r4, #1
	cmp r1, #8
	blo _080037B0
	lsrs r4, r4, #1
	cmp r1, #0xc
	blo _080037B0
	lsrs r4, r4, #1
_080037B0:
	movs r1, #0xf
	ands r1, r3
	cmp r1, #4
	blo _080037C6
	lsrs r4, r4, #4
	cmp r1, #8
	blo _080037C6
	lsrs r4, r4, #4
	cmp r1, #0xc
	blo _080037C6
	lsrs r4, r4, #4
_080037C6:
	movs r2, #1
	ands r2, r4
	pop {r4, pc}

	thumb_func_start sub_080037CC
sub_080037CC: @ 0x080037CC
	push {r4}
	ldrh r2, [r0, #0x32]
	ldr r3, _08003A08 @ =0xFFFFFFF0
	movs r4, #8
	ands r2, r3
	orrs r2, r4
	strh r2, [r0, #0x32]
	ldrh r2, [r0, #0x36]
	ldr r3, _08003A08 @ =0xFFFFFFF0
	movs r4, #8
	ands r2, r3
	orrs r2, r4
	strh r2, [r0, #0x36]
	pop {r4}
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080037EC
sub_080037EC: @ 0x080037EC
	push {lr}
	push {r1}
	bl sub_08003828
	movs r2, #0x21
	ldrb r3, [r0, r2]
	movs r2, #0x22
	ldrb r1, [r0, r2]
	cmp r1, r3
	pop {r1}
	beq _08003826
	cmp r3, #0xff
	beq _08003826
	strb r3, [r0, r2]
	lsls r1, r1, #2
	ldr r3, _08003A0C @ =0x080034E8
	ldr r3, [r1, r3]
	ldr r2, _08003A10 @ =0x080034F8
	ldr r2, [r1, r2]
	adds r1, r3, #0
	movs r3, #0x21
	ldrb r3, [r0, r3]
	lsls r3, r3, #2
	adds r2, r2, r3
	ldrh r3, [r2]
	orrs r3, r3
	beq _08003826
	bl sub_080038B8
_08003826:
	pop {pc}

	thumb_func_start sub_08003828
sub_08003828: @ 0x08003828
	movs r1, #0x28
	ldrb r2, [r0, r1]
	subs r2, #1
	strb r2, [r0, r1]
	beq _08003884
	mov pc, lr

	thumb_func_start sub_08003834
sub_08003834: @ 0x08003834
	movs r1, #0x28
	ldrb r2, [r0, r1]
	subs r2, #4
	strb r2, [r0, r1]
	blo _08003884
	mov pc, lr

	thumb_func_start sub_08003840
sub_08003840: @ 0x08003840
	push {lr}
	push {r2}
	bl sub_08003870
	pop {r2}
	movs r1, #0x21
	ldrb r1, [r0, r1]
	cmp r1, #0xff
	beq _0800386E
	lsls r2, r2, #2
	ldr r1, _08003A14 @ =0x080034E8
	ldr r1, [r1, r2]
	ldr r3, _08003A18 @ =0x080034F8
	ldr r2, [r3, r2]
	movs r3, #0x21
	ldrb r3, [r0, r3]
	lsls r3, r3, #2
	adds r2, r2, r3
	ldrh r3, [r2]
	orrs r3, r3
	beq _0800386E
	bl sub_080038B8
_0800386E:
	pop {pc}

	thumb_func_start sub_08003870
sub_08003870: @ 0x08003870
	movs r2, #0x23
	strb r1, [r0, r2]
	ldr r2, _08003A1C @ =0x08003228
	ldrb r3, [r0, #0x1b]
	lsls r3, r3, #2
	ldr r2, [r2, r3]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	str r1, [r0, #0x24]
	movs r0, r0
_08003884:
	movs r2, #0x21
	ldrb r1, [r0, r2]
	movs r3, #0x22
	strb r1, [r0, r3]
	ldr r1, [r0, #0x24]
	ldrb r3, [r1]
	strb r3, [r0, r2]
	ldrb r3, [r1, #1]
	movs r2, #0x28
	strb r3, [r0, r2]
	ldrb r3, [r1, #2]
	movs r2, #0x2f
	strb r3, [r0, r2]
	ldrb r3, [r1, #3]
	movs r2, #0x29
	strb r3, [r0, r2]
	adds r1, #4
	movs r2, #0x80
	tst r2, r3
	beq _080038B2
	eors r2, r2
	ldrsh r3, [r1, r2]
	subs r1, r1, r3
_080038B2:
	str r1, [r0, #0x24]
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080038B8
sub_080038B8: @ 0x080038B8
	push {lr}
	push {r0, r4}
	ldrb r3, [r0, #0x1c]
	movs r4, #0xc0
	ands r3, r4
	lsls r3, r3, #2
	movs r4, #0x20
	ldrb r0, [r0, r4]
	adds r0, r0, r3
	lsls r0, r0, #5
	ldr r3, _08003A20 @ =0x06010000
	adds r0, r0, r3
	ldr r3, _08003A24 @ =0x0844DD74
	adds r1, r1, r3
	movs r3, #2
	ldrh r3, [r2, r3]
	lsls r3, r3, #5
	adds r1, r1, r3
	ldrh r2, [r2]
	lsls r2, r2, #5
	bl sub_080009F4
	pop {r0, r4}
	pop {pc}

	thumb_func_start sub_080038E8
sub_080038E8: @ 0x080038E8
	adds r0, #0x2b
	ldrb r2, [r0]
	ldr r3, _08003A28 @ =0x0000EE00
	tst r1, r3
	beq _080038F8
	movs r3, #0x20
	subs r3, r3, r2
	adds r2, r3, #0
_080038F8:
	movs r3, #0xee
	tst r1, r3
	beq _08003904
	movs r3, #0x10
	subs r3, r3, r2
	adds r2, r3, #0
_08003904:
	movs r3, #0x1f
	ands r2, r3
	strb r2, [r0]
	mov pc, lr

	thumb_func_start sub_0800390C
sub_0800390C: @ 0x0800390C
	push {lr}
	bl sub_08003920
	beq _08003918
	movs r0, #1
	b _0800391A
_08003918:
	eors r0, r0
_0800391A:
	pop {pc}

	thumb_func_start sub_0800391C
sub_0800391C: @ 0x0800391C
	push {r5, r6}
	b _08003930

	thumb_func_start sub_08003920
sub_08003920: @ 0x08003920
	push {r5, r6}
	movs r6, #0x50
	ldrh r5, [r0, r6]
	ldrh r6, [r1, r6]
	ands r5, r6
	ldr r6, _080039DC @ =0x0000C000
	tst r5, r6
	beq _08003958
_08003930:
	orrs r2, r2
	beq _08003942
	ldrh r5, [r0, #0x32]
	ldrh r6, [r1, #0x32]
	subs r5, r5, r6
	adds r5, r5, r2
	lsls r2, r2, #1
	cmp r2, r5
	blo _08003958
_08003942:
	orrs r3, r3
	beq _08003954
	ldrh r5, [r0, #0x36]
	ldrh r6, [r1, #0x36]
	subs r5, r5, r6
	adds r5, r5, r3
	lsls r3, r3, #1
	cmp r3, r5
	blo _08003958
_08003954:
	movs r5, #1
	b _0800395A
_08003958:
	eors r5, r5
_0800395A:
	pop {r5, r6}
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08003960
sub_08003960: @ 0x08003960
	movs r3, #0x2a
	ldrb r1, [r0, r3]
	push {r4}
	ldrh r2, [r0, #0x32]
	ldr r4, _08003A2C @ =0x03000468
	ldrh r3, [r4]
	subs r2, r2, r3
	ldrh r3, [r0, #0x36]
	ldrh r4, [r4, #2]
	subs r3, r3, r4
	ldr r4, _08003A00 @ =0x000003F0
	ands r2, r4
	ands r3, r4
	lsrs r2, r2, #3
	lsls r3, r3, #3
	adds r2, r2, r3
	pop {r4}
	movs r0, r0
	push {r4}
	adds r4, r1, #0
	movs r3, #3
	tst r4, r3
	beq _08003998
	movs r3, #2
	lsrs r4, r4, #3
	blo _08003996
	rsbs r3, r3, #0
_08003996:
	adds r2, r2, r3
_08003998:
	adds r4, r1, #0
	movs r3, #3
	ands r4, r3
	cmp r4, #2
	beq _080039AE
	movs r3, #0x80
	adds r1, #1
	lsrs r1, r1, #3
	bhs _080039AC
	rsbs r3, r3, #0
_080039AC:
	adds r2, r2, r3
_080039AE:
	ldr r3, _08003A30 @ =0x00001FFF
	ands r2, r3
	movs r4, #0x50
	ldrh r4, [r0, r4]
	lsrs r4, r4, #0xe
	lsls r4, r4, #3
	ldr r3, _08003A34 @ =0x08009280
	adds r3, r3, r4
	ldr r4, [r3]
	ldrh r1, [r4, r2]
	ldr r4, _08003A38 @ =0x00004000
	tst r1, r4
	bne _080039D0
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x10
	ldr r4, [r3, #4]
	ldrh r1, [r4, r1]
_080039D0:
	pop {r4}
	mov pc, lr

	thumb_func_start sub_080039D4
sub_080039D4: @ 0x080039D4
	ldr r2, _08003A3C @ =0x08003518
	ldrb r1, [r1, r2]
	mov pc, lr
	.align 2, 0
_080039DC: .4byte 0x0000C000
_080039E0:
	.byte 0x20, 0xEF, 0x01, 0x02, 0x48, 0x09, 0x00, 0x03, 0x14, 0x04, 0x00, 0x03, 0x08, 0x35, 0x00, 0x08
	.byte 0xD0, 0xED, 0x01, 0x02
_080039F4: .4byte 0x03000462
_080039F8: .4byte 0x00000171
_080039FC: .4byte 0x00000121
_08003A00: .4byte 0x000003F0
_08003A04: .4byte 0x080092A0
_08003A08: .4byte 0xFFFFFFF0
_08003A0C: .4byte 0x080034E8
_08003A10: .4byte 0x080034F8
_08003A14: .4byte 0x080034E8
_08003A18: .4byte 0x080034F8
_08003A1C: .4byte 0x08003228
_08003A20: .4byte 0x06010000
_08003A24: .4byte 0x0844DD74
_08003A28: .4byte 0x0000EE00
_08003A2C: .4byte 0x03000468
_08003A30: .4byte 0x00001FFF
_08003A34: .4byte 0x08009280
_08003A38: .4byte 0x00004000
_08003A3C: .4byte 0x08003518

    .INCBIN "baserom.gba", 0x3A40, 0x3C84-0x3A40

	thumb_func_start sub_08003C84
sub_08003C84: @ 0x08003C84
	push {r4, r5, r6, r7, lr}
	ldr r2, [r0, #0x48]
	ldr r3, [r1, #0x48]
	ldrh r4, [r1, #0x32]
	movs r6, #0
	ldrsb r5, [r3, r6]
	adds r4, r4, r5
	ldrh r5, [r0, #0x32]
	subs r4, r4, r5
	ldrsb r5, [r2, r6]
	subs r4, r4, r5
	adds r5, r4, #0
	ldrb r6, [r2, #6]
	ldrb r7, [r3, #6]
	adds r7, r7, r6
	adds r4, r4, r7
	lsls r6, r7, #1
	cmp r6, r4
	blo _08003D02
	movs r6, #8
	orrs r5, r5
	bpl _08003CB4
	movs r6, #0x18
	rsbs r5, r5, #0
_08003CB4:
	subs r7, r7, r5
	mov ip, r6
	ldrh r4, [r1, #0x36]
	movs r6, #1
	ldrsb r5, [r3, r6]
	adds r4, r4, r5
	ldrh r5, [r0, #0x36]
	subs r4, r4, r5
	ldrsb r5, [r2, r6]
	subs r4, r4, r5
	adds r5, r4, #0
	ldrb r6, [r2, #7]
	ldrb r2, [r3, #7]
	adds r6, r6, r2
	adds r4, r4, r6
	lsls r2, r6, #1
	cmp r2, r4
	blo _08003D02
	movs r2, #0x10
	orrs r5, r5
	bpl _08003CE2
	movs r2, #0
	rsbs r5, r5, #0
_08003CE2:
	subs r6, r6, r5
	cmp r6, r7
	blo _08003CEC
	adds r6, r7, #0
	mov r2, ip
_08003CEC:
	cmp r6, #0
	beq _08003D02
	cmp r6, #5
	blo _08003CF6
	movs r6, #4
_08003CF6:
	adds r0, r1, #0
	lsls r1, r6, #8
	bl sub_08002E70
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_08003D02:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08003D08
sub_08003D08: @ 0x08003D08
	push {lr}
	adds r6, r1, #0
	movs r3, #0x80
	tst r6, r3
	bne _08003DCE
	movs r7, #0
	mov ip, r0
	ldrh r3, [r0, #0x32]
	ldrh r4, [r0, #0x36]
	movs r2, #0x48
	ldr r5, [r0, r2]
	ldr r1, _08003EB4 @ =0x03000468
	ldrh r2, [r1]
	subs r3, r3, r2
	ldrh r2, [r1, #2]
	subs r4, r4, r2
	movs r2, #0
	ldrsb r0, [r5, r2]
	adds r0, r0, r3
	movs r2, #1
	ldrsb r1, [r5, r2]
	adds r1, r1, r4
	push {r0, r1}
	movs r4, #0xf
	tst r4, r6
	beq _08003D72
	ldrb r2, [r5, #2]
	movs r4, #0x10
	tst r6, r4
	beq _08003D46
	rsbs r2, r2, #0
_08003D46:
	adds r0, r0, r2
	bl sub_08003DD0
	orrs r7, r2
	lsls r7, r7, #1
	ldrb r4, [r5, #3]
	adds r1, r1, r4
	bl sub_08003DD0
	orrs r7, r2
	lsls r7, r7, #1
	ldrb r4, [r5, #3]
	lsls r4, r4, #1
	subs r1, r1, r4
	bl sub_08003DD0
	orrs r7, r2
	lsls r7, r7, #1
	movs r4, #0x10
	tst r4, r6
	bne _08003D72
	lsls r7, r7, #4
_08003D72:
	pop {r0, r1}
	adds r3, r6, #0
	movs r4, #0xf
	ands r3, r4
	cmp r3, #8
	beq _08003DC8
	ldrb r2, [r5, #5]
	movs r4, #0x10
	ands r4, r6
	lsrs r4, r4, #1
	eors r4, r6
	movs r3, #8
	tst r4, r3
	bne _08003D92
	rsbs r2, r2, #0
	lsls r7, r7, #4
_08003D92:
	adds r1, r1, r2
	bl sub_08003DD0
	orrs r7, r2
	lsls r7, r7, #1
	ldrb r4, [r5, #4]
	adds r0, r0, r4
	bl sub_08003DD0
	orrs r7, r2
	lsls r7, r7, #1
	ldrb r4, [r5, #4]
	lsls r4, r4, #1
	subs r0, r0, r4
	bl sub_08003DD0
	orrs r7, r2
	lsls r7, r7, #1
	movs r4, #0x10
	ands r4, r6
	lsrs r4, r4, #1
	eors r4, r6
	movs r3, #8
	tst r4, r3
	beq _08003DCA
	lsls r7, r7, #4
	b _08003DCA
_08003DC8:
	lsls r7, r7, #8
_08003DCA:
	mov r0, ip
	strh r7, [r0, #0x2c]
_08003DCE:
	pop {pc}

	thumb_func_start sub_08003DD0
sub_08003DD0: @ 0x08003DD0
	movs r4, #0x3f
	lsrs r2, r0, #4
	ands r2, r4
	lsrs r3, r1, #4
	ands r4, r3
	lsls r4, r4, #6
	adds r4, r4, r2
	mov r2, ip
	movs r3, #0x50
	ldrh r3, [r2, r3]
	lsrs r3, r3, #0xe
	lsls r3, r3, #2
	ldr r2, _08003EB8 @ =0x080092A0
	ldr r2, [r2, r3]
	ldrb r2, [r2, r4]
	cmp r2, #0xff
	beq _08003DF4
	movs r2, #0
_08003DF4:
	movs r3, #1
	ands r2, r3
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08003DFC
sub_08003DFC: @ 0x08003DFC
	ldr r1, _08003EBC @ =0x0201EF20
	ldrb r2, [r1]
	cmp r2, #8
	bhs _08003E0E
	adds r3, r2, #1
	strb r3, [r1]
	ldr r1, _08003EC0 @ =0x0201EDD0
	lsls r2, r2, #1
	strh r0, [r1, r2]
_08003E0E:
	mov pc, lr

	thumb_func_start sub_08003E10
sub_08003E10: @ 0x08003E10
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08003714
	cmp r1, #0
	beq _08003E22
	adds r1, r4, #0
	bl sub_0800D1C0
_08003E22:
	pop {r4, pc}

	thumb_func_start sub_08003E24
sub_08003E24: @ 0x08003E24
	eors r2, r2
	movs r3, #0x47
	strb r2, [r0, r3]
	ldr r2, _08003EC4 @ =0x03000840
_08003E2C:
	ldr r3, [r2]
	orrs r3, r3
	beq _08003E3C
	adds r2, #4
	ldr r3, _08003EC8 @ =0x03000940
	cmp r2, r3
	blo _08003E2C
	mov pc, lr
_08003E3C:
	str r0, [r2]
	eors r2, r2
	lsrs r2, r2, #1
	mov pc, lr

	thumb_func_start sub_08003E44
sub_08003E44: @ 0x08003E44
	push {r4}
	ldr r2, _08003ECC @ =0x03000840
_08003E48:
	ldr r3, [r2]
	cmp r0, r3
	bne _08003E74
	adds r4, r2, #0
_08003E50:
	adds r2, #4
	ldr r3, _08003ED0 @ =0x03000940
	cmp r2, r3
	bhs _08003E64
	ldr r3, [r2]
	cmp r0, r3
	beq _08003E50
	str r3, [r4]
	adds r4, #4
	b _08003E50
_08003E64:
	eors r3, r3
	str r3, [r4]
	adds r4, #4
	ldr r3, _08003ED4 @ =0x03000940
	cmp r4, r3
	blo _08003E64
	pop {r4}
	mov pc, lr
_08003E74:
	adds r2, #4
	ldr r3, _08003ED8 @ =0x03000940
	cmp r2, r3
	blo _08003E48
	pop {r4}
	mov pc, lr

	thumb_func_start sub_08003E80
sub_08003E80: @ 0x08003E80
	ldrb r4, [r3, #4]
	lsrs r4, r2, #0x20
	subs r2, #0xa0
	lsrs r0, r0, #0x20
	subs r2, #0xb0
	lsrs r0, r0, #0x20
	subs r3, #0x88
	lsrs r0, r0, #0x20
	subs r3, #0x7e
	lsrs r0, r0, #0x20
	lsrs r4, r0, #0x1d
	lsls r0, r0, #0xc
	ldrb r0, [r2, #0xc]
	lsrs r3, r2, #0x20
	lsrs r4, r0, #0x1d
	lsls r0, r0, #0xc
	ldrb r0, [r2, #0xc]
	lsrs r3, r2, #0x20
	lsrs r4, r0, #0x1d
	lsls r0, r0, #0xc
	lsrs r0, r4, #0x18
	lsls r0, r0, #0xc
	subs r3, #0x54
	lsrs r0, r0, #0x20
	subs r3, #0x54
	lsrs r0, r0, #0x20
	.align 2, 0
_08003EB4: .4byte 0x03000468
_08003EB8: .4byte 0x080092A0
_08003EBC: .4byte 0x0201EF20
_08003EC0: .4byte 0x0201EDD0
_08003EC4: .4byte 0x03000840
_08003EC8: .4byte 0x03000940
_08003ECC: .4byte 0x03000840
_08003ED0: .4byte 0x03000940
_08003ED4: .4byte 0x03000940
_08003ED8: .4byte 0x03000940

	thumb_func_start sub_08003EDC
sub_08003EDC: @ 0x08003EDC
	lsls r0, r0, #4
	lsls r2, r0, #0xc
	movs r4, r0
	movs r0, r0
	lsls r0, r1, #0x1c
	lsls r6, r0, #0x14
	movs r4, r0
	movs r0, r0
	lsrs r0, r2, #0x1c
	lsrs r6, r1, #0x14
	movs r4, r1
	movs r0, r0
	lsrs r0, r1, #4
	lsrs r2, r1, #0xc
	movs r4, r1
	movs r0, r0
	@subs r0, #4
    .byte 0x00, 0x1F
	adds r6, r3, #4
	movs r4, r3
	movs r0, r0
	adds r0, r3, r4
	subs r2, r3, r4
	movs r4, r3
	movs r0, r0
	asrs r0, r2, #4
	asrs r2, r2, #0xc
	movs r4, r2
	movs r0, r0
	asrs r0, r3, #0x1c
	asrs r6, r2, #0x14
	movs r4, r2
	movs r0, r0
	ldr r2, [r0, #0x38]
	ldr r3, [r0, #0x10]
	subs r2, r2, r3
	bpl _08003F2E
	str r2, [r0, #0x38]
	subs r3, r3, r1
	str r3, [r0, #0x10]
	movs r0, #2
	mov pc, lr
_08003F2E:
	movs r2, #0
	str r2, [r0, #0x38]
	subs r3, r3, r1
	rsbs r3, r3, #0
	lsrs r3, r3, #1
	lsrs r1, r3, #2
	adds r3, r3, r1
	lsrs r1, r3, #0xc
	cmp r1, #0xc
	bhs _08003F46
	subs r2, #1
	movs r3, #0
_08003F46:
	str r3, [r0, #0x10]
	adds r0, r2, #1
	mov pc, lr

	thumb_func_start sub_08003F4C
sub_08003F4C: @ 0x08003F4C
	ldrh r3, [r1, #0x36]
	ldrh r2, [r1, #0x32]
	ldrh r1, [r0, #0x36]
	ldrh r0, [r0, #0x32]

	thumb_func_start sub_08003F54
sub_08003F54: @ 0x08003F54
	push {r4, lr}
	ldr r4, _08004200 @ =0xFFFF8000
	tst r0, r4
	beq _08003F5E
	orrs r0, r4
_08003F5E:
	tst r1, r4
	beq _08003F64
	orrs r1, r4
_08003F64:
	tst r2, r4
	beq _08003F6A
	orrs r2, r4
_08003F6A:
	tst r3, r4
	beq _08003F70
	orrs r3, r4
_08003F70:
	eors r4, r4
	subs r2, r2, r0
	bpl _08003F7A
	rsbs r2, r2, #0
	movs r4, #0x20
_08003F7A:
	subs r3, r1, r3
	bpl _08003F84
	rsbs r3, r3, #0
	movs r1, #0x10
	orrs r4, r1
_08003F84:
	cmp r2, r3
	blo _08003F92
	push {r3}
	adds r3, r2, #0
	pop {r2}
	movs r1, #8
	orrs r4, r1
_08003F92:
	lsls r2, r2, #3
	adds r1, r3, #0
	lsls r1, r1, #1
	movs r0, #4
_08003F9A:
	cmp r2, r3
	blo _08003FA6
	adds r3, r3, r1
	adds r4, #1
	subs r0, #1
	bne _08003F9A
_08003FA6:
	ldr r1, _08004204 @ =0x08003EDC
	ldrb r0, [r1, r4]
	pop {r4, pc}

	thumb_func_start sub_08003FAC
sub_08003FAC: @ 0x08003FAC
	cmp r0, #0
	beq _08003FE2

	thumb_func_start sub_08003FB0
sub_08003FB0: @ 0x08003FB0
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	ldr r2, _08004208 @ =0x08000FF4
	ldr r1, [r2, r1]
	ldrh r2, [r1, #0x36]
	ldr r3, _0800420C @ =0x00001A51
	ands r2, r3
	bne _08003FE2
	movs r3, #0x3c
	ldrb r3, [r1, r3]
	cmp r3, #0
	bne _08003FE2
	ldrb r2, [r0, #0x14]
	cmp r2, #0xb
	beq _08003FE2
	cmp r2, #3
	beq _08003FE2
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	ldr r2, _08004210 @ =0x03000940
	ldrh r1, [r2, r1]
	lsrs r1, r1, #0xb
	bhs _08003FE2
	movs r0, #1
	mov pc, lr
_08003FE2:
	movs r0, #0
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08003FE8
sub_08003FE8: @ 0x08003FE8
	cmp r0, #0
	beq _08004026
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	ldr r2, _08004214 @ =0x08000FF4
	ldr r1, [r2, r1]
	ldrh r2, [r1, #0x36]
	ldr r3, _0800420C @ =0x00001A51
	ands r2, r3
	bne _08004026
	ldrb r2, [r1, #5]
	movs r3, #1
	cmp r2, r3
	beq _08004026
	movs r3, #0x3c
	ldrb r3, [r1, r3]
	cmp r3, #0
	bne _08004026
	ldrb r2, [r0, #0x14]
	cmp r2, #0xb
	beq _08004026
	cmp r2, #3
	beq _08004026
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	ldr r2, _08004218 @ =0x03000940
	ldrh r1, [r2, r1]
	lsrs r1, r1, #0xb
	bhs _08004026
	movs r0, #1
	mov pc, lr
_08004026:
	movs r0, #0
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_0800402C
sub_0800402C: @ 0x0800402C
	push {lr}
	bl sub_08009450
	cmp r1, #3
	beq _08004046
	cmp r1, #2
	beq _08004072
	cmp r1, #0x47
	beq _0800409E
	cmp r1, #0x48
	beq _0800409E
	pop {pc}
_08004044:
	.byte 0x00, 0xB5
_08004046:
	movs r1, #0x50
	ldrh r2, [r0, r1]
	ldr r3, _0800421C @ =0x00003FFF
	ands r2, r3
	ldr r3, _08004220 @ =0x00008000
	orrs r2, r3
	strh r2, [r0, r1]
	ldrb r2, [r0, #0x1f]
	movs r3, #0x3f
	ands r3, r2
	movs r2, #0x40
	orrs r2, r3
	strb r2, [r0, #0x1f]
	ldrb r2, [r0, #0x1d]
	movs r3, #0x3f
	ands r2, r3
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r0, #0x1d]
	pop {pc}
	.align 2, 0
_08004070:
	.byte 0x00, 0xB5
_08004072:
	movs r1, #0x50
	ldrh r2, [r0, r1]
	ldr r3, _0800421C @ =0x00003FFF
	ands r2, r3
	ldr r3, _08004224 @ =0x00004000
	orrs r2, r3
	strh r2, [r0, r1]
	ldrb r2, [r0, #0x1f]
	movs r3, #0x3f
	ands r3, r2
	movs r2, #0x80
	orrs r2, r3
	strb r2, [r0, #0x1f]
	ldrb r2, [r0, #0x1d]
	movs r3, #0x3f
	ands r2, r3
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r0, #0x1d]
	pop {pc}
	.align 2, 0
_0800409C:
	.byte 0x00, 0xB5
_0800409E:
	movs r1, #0x50
	ldrh r2, [r0, r1]
	ldr r3, _08004228 @ =0x0000C000
	orrs r2, r3
	strh r2, [r0, r1]
	ldrb r2, [r0, #0x1f]
	movs r3, #0x3f
	ands r3, r2
	movs r2, #0x40
	orrs r2, r3
	strb r2, [r0, #0x1f]
	ldrb r2, [r0, #0x1d]
	movs r3, #0x3f
	ands r2, r3
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r0, #0x1d]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080040C4
sub_080040C4: @ 0x080040C4
	movs r2, #0x2b
	ldrb r3, [r0, r2]
	subs r1, r1, r3
	beq _080040DE
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	cmp r1, #0x10
	bhs _080040D6
	adds r3, #2
_080040D6:
	subs r3, #1
	lsls r3, r3, #0x1b
	lsrs r3, r3, #0x1b
	strb r3, [r0, r2]
_080040DE:
	mov pc, lr

	thumb_func_start sub_080040E0
sub_080040E0: @ 0x080040E0
	push {r0, r1, r4, r5, r6, lr}
	movs r6, #0x40
	cmp r0, #0
	beq _0800414A
	ldr r5, _0800422C @ =0x0813E74C
	ldr r2, _08004230 @ =0x80000000
	cmp r0, r2
	blo _080040F4
	mvns r0, r0
	adds r0, #1
_080040F4:
	cmp r1, r2
	blo _080040FC
	mvns r1, r1
	adds r1, #1
_080040FC:
	lsls r2, r1, #8
	adds r1, r0, #0
	adds r0, r2, #0
	bl sub_080009AC
	ldr r1, _08004234 @ =0x00000106
	cmp r0, r1
	bhs _08004120
	movs r1, #0x6e
	cmp r0, r1
	bhs _0800411A
	movs r6, #0
	movs r1, #0
	movs r2, #0x10
	b _08004130
_0800411A:
	movs r1, #0x10
	movs r2, #0x20
	b _08004130
_08004120:
	ldr r1, _08004238 @ =0x00000280
	cmp r0, r1
	bhs _0800412C
	movs r1, #0x20
	movs r2, #0x30
	b _08004130
_0800412C:
	movs r1, #0x30
	movs r2, #0x3f
_08004130:
	lsls r3, r1, #1
	adds r3, r3, r5
	ldrh r4, [r3]
	cmp r0, r4
	blo _08004144
	ldrh r4, [r3, #2]
	cmp r0, r4
	bhs _08004144
	adds r6, r1, #1
	b _0800414A
_08004144:
	adds r1, #1
	cmp r1, r2
	blo _08004130
_0800414A:
	adds r2, r6, #0
	pop {r0, r1, r4, r5, r6}
	lsls r0, r0, #1
	bhs _0800415C
	movs r0, #0x40
	lsls r1, r1, #1
	bhs _08004162
_08004158:
	adds r0, r0, r2
	pop {pc}
_0800415C:
	movs r0, #0xc0
	lsls r1, r1, #1
	bhs _08004158
_08004162:
	subs r0, r0, r2
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08004168
sub_08004168: @ 0x08004168
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	ldr r4, _0800423C @ =0x08003B54
	ldr r1, [r4]
	ldr r1, [r1]
	bl sub_080041B4
	orrs r5, r0
	ldr r1, [r4, #4]
	ldr r1, [r1]
	cmp r1, #0
	beq _080041B0
	adds r0, r6, #0
	bl sub_080041B4
	lsls r0, r0, #1
	orrs r5, r0
	ldr r1, [r4, #8]
	ldr r1, [r1]
	cmp r1, #0
	beq _080041B0
	adds r0, r6, #0
	bl sub_080041B4
	lsls r0, r0, #2
	orrs r5, r0
	ldr r1, [r4, #0xc]
	ldr r1, [r1]
	cmp r1, #0
	beq _080041B0
	adds r0, r6, #0
	bl sub_080041B4
	lsls r0, r0, #3
	orrs r5, r0
_080041B0:
	adds r0, r5, #0
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080041B4
sub_080041B4: @ 0x080041B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r1, #0
	ldrb r2, [r0, #0x14]
	cmp r2, #5
	beq _080041FA
	cmp r2, #0x10
	beq _080041FA
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	ldr r2, _08004240 @ =0x08000FF4
	ldr r1, [r2, r1]
	ldrb r2, [r1, #5]
	cmp r2, #2
	bne _080041DC
	movs r2, #0x29
	ldrb r2, [r0, r2]
	cmp r2, #0
	bne _080041FA
_080041DC:
	bl sub_08003FB0
	beq _080041FC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08003C84
	beq _080041FC
	ldrb r0, [r5, #0x14]
	cmp r0, #2
	bne _080041F6
	movs r0, #3
	strb r0, [r5, #0x15]
_080041F6:
	movs r0, #1
	pop {r4, r5, pc}
_080041FA:
	movs r0, #0
_080041FC:
	pop {r4, r5, pc}
	.align 2, 0
_08004200: .4byte 0xFFFF8000
_08004204: .4byte 0x08003EDC
_08004208: .4byte 0x08000FF4
_0800420C: .4byte 0x00001A51
_08004210: .4byte 0x03000940
_08004214: .4byte 0x08000FF4
_08004218: .4byte 0x03000940
_0800421C: .4byte 0x00003FFF
_08004220: .4byte 0x00008000
_08004224: .4byte 0x00004000
_08004228: .4byte 0x0000C000
_0800422C: .4byte 0x0813E74C
_08004230: .4byte 0x80000000
_08004234: .4byte 0x00000106
_08004238: .4byte 0x00000280
_0800423C: .4byte 0x08003B54
_08004240: .4byte 0x08000FF4

	.INCBIN "baserom.gba", 0x4244, 0x8DD8-0x4244

	.GLOBAL sub_08008DD8
sub_08008DD8:
	.INCBIN "baserom.gba", 0x8DD8, 0x8FA4-0x8DD8

	.GLOBAL sub_08008FA4
sub_08008FA4:
	.INCBIN "baserom.gba", 0x8FA4, 0x9424-0x8FA4

	thumb_func_start sub_08009424
sub_08009424: @ 0x08009424
	ldr r2, _08009530 @ =0x08009280
	lsrs r3, r3, #0xe
	lsls r3, r3, #3
	adds r2, r2, r3
	ldr r3, [r2]
	lsls r1, r1, #1
	ldrh r1, [r3, r1]
	ldr r3, _080094FC @ =0x00007FFF
	ands r1, r3
	ldr r3, _08009500 @ =0x00004000
	tst r1, r3
	bne _08009442
	lsls r1, r1, #1
	ldr r3, [r2, #4]
	ldrh r1, [r3, r1]
_08009442:
	mov pc, lr

	thumb_func_start sub_08009444
sub_08009444: @ 0x08009444
	ldrh r3, [r0, #0x32]
	adds r1, r1, r3
	ldrh r3, [r0, #0x36]
	adds r2, r2, r3
	b _08009454
	.align 2, 0

	thumb_func_start sub_08009450
sub_08009450: @ 0x08009450
	ldrh r1, [r0, #0x32]
	ldrh r2, [r0, #0x36]
_08009454:
	ldr r3, _08009534 @ =0x03000468
	ldrh r3, [r3]
	subs r1, r1, r3
	ldr r3, _08009538 @ =0x0300046A
	ldrh r3, [r3]
	subs r2, r2, r3
	movs r3, #0x50
	ldrh r3, [r0, r3]
	lsls r1, r1, #0x16
	lsls r2, r2, #0x16
	lsrs r1, r1, #0x1a
	lsrs r2, r2, #0x1a
	lsls r2, r2, #6
	adds r1, r1, r2
	push {lr}
	bl sub_08009424
	ldr r2, _08009500 @ =0x00004000
	tst r1, r2
	bne _08009482
	ldr r2, _0800953C @ =0x0814791C
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
_08009482:
	pop {pc}

	thumb_func_start sub_08009484
sub_08009484: @ 0x08009484
	ldrh r3, [r0, #0x32]
	adds r1, r1, r3
	ldrh r3, [r0, #0x36]
	adds r2, r2, r3
	b _08009494
	.align 2, 0

	thumb_func_start sub_08009490
sub_08009490: @ 0x08009490
	ldrh r1, [r0, #0x32]
	ldrh r2, [r0, #0x36]
_08009494:
	ldr r3, _08009540 @ =0x03000468
	ldrh r3, [r3]
	subs r1, r1, r3
	ldr r3, _08009544 @ =0x0300046A
	ldrh r3, [r3]
	subs r2, r2, r3
	movs r3, #0x50
	ldrh r3, [r0, r3]
	lsls r1, r1, #0x16
	lsls r2, r2, #0x16
	lsrs r1, r1, #0x1a
	lsrs r2, r2, #0x1a
	lsls r2, r2, #6
	adds r1, r1, r2
	ldr r2, _08009548 @ =0x080092A0
	lsrs r3, r3, #0xe
	lsls r3, r3, #2
	ldr r3, [r2, r3]
	ldrb r1, [r3, r1]
	mov pc, lr

	thumb_func_start sub_080094BC
sub_080094BC: @ 0x080094BC
	ldr r1, _08009500 @ =0x00004000
	tst r1, r0
	bne _080094C8
	ldr r1, _0800954C @ =0x0814791C
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
_080094C8:
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080094CC
sub_080094CC: @ 0x080094CC
	ldr r2, _08009500 @ =0x00004000
	cmp r0, r2
	bhs _080094E0
	ldr r2, _08009550 @ =0x08009280
	lsrs r1, r1, #0xe
	lsls r1, r1, #3
	adds r2, r2, r1
	ldr r1, [r2, #4]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
_080094E0:
	mov pc, lr
	.align 2, 0
_080094E4:
	.byte 0x68, 0x04, 0x00, 0x03, 0x6A, 0x04, 0x00, 0x03, 0xB0, 0x92, 0x00, 0x08
	.byte 0x68, 0x04, 0x00, 0x03, 0x6A, 0x04, 0x00, 0x03, 0x80, 0x92, 0x00, 0x08
_080094FC: .4byte 0x00007FFF
_08009500: .4byte 0x00004000
_08009504:
	.byte 0x68, 0x04, 0x00, 0x03, 0x6A, 0x04, 0x00, 0x03, 0x1C, 0x79, 0x14, 0x08
	.byte 0x68, 0x04, 0x00, 0x03, 0x6A, 0x04, 0x00, 0x03, 0xA0, 0x92, 0x00, 0x08, 0x68, 0x04, 0x00, 0x03
	.byte 0x6A, 0x04, 0x00, 0x03, 0xB0, 0x92, 0x00, 0x08, 0x68, 0x04, 0x00, 0x03, 0x6A, 0x04, 0x00, 0x03
_08009530: .4byte 0x08009280
_08009534: .4byte 0x03000468
_08009538: .4byte 0x0300046A
_0800953C: .4byte 0x0814791C
_08009540: .4byte 0x03000468
_08009544: .4byte 0x0300046A
_08009548: .4byte 0x080092A0
_0800954C: .4byte 0x0814791C
_08009550: .4byte 0x08009280
_08009554:

    .INCBIN "baserom.gba", 0x9554, 0xB084-0x9554

@ to B084
