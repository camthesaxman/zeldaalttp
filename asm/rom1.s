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

	THUMB_FUNC_START sub_080005F0
sub_080005F0: @ 0x080005F0
	ldr r1, _08000794  @ =gUnknown_03005060
	ldr r2, _08000798  @ =gEntityLinks
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
	THUMB_FUNC_START sub_08000620
sub_08000620: @ 0x08000620
	ldr r1, _080007A0  @ =gUnknown_03005060
	ldr r2, _080007A4  @ =gEntityLinks
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
	ldr r2, _080007BC  @ =gEntityLinks
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
	.4byte gEntityLinks
_0800079C:
	.4byte gUnknown_02016D50
_080007A0:
	.4byte gUnknown_03005060
_080007A4:
	.4byte gEntityLinks
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
	.4byte gEntityLinks
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
	.INCBIN "baserom.gba", 0xAF4, 0xBAC-0xAF4

	thumb_func_start sub_08000BAC
sub_08000BAC: @ 0x08000BAC
	push {lr}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	mov r4, ip
	push {r4}
	ldr r0, _08000F6C @ =0x03000204
	ldrb r0, [r0]
	ldr r1, _08000F70 @ =0x03000954
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	eors r0, r0
	ldr r1, _08000F74 @ =0x03000C10
	bl sub_08000C10
	ldr r1, _08000F78 @ =0x03000210
	bl sub_08000C10
	ldr r1, _08000F7C @ =0x03005C00
	bl sub_08000C10
	ldr r1, _08000F80 @ =0x03000960
	bl sub_08000C10
	ldr r1, _08000F84 @ =0x03005E04
	ldr r1, [r1]
	adds r2, r0, #0
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r3, _08000F88 @ =0x00000200
_08000BF0:
	cmp r0, #0x78
	bhs _08000BFC
	strh r3, [r1]
	adds r1, #8
	adds r0, #1
	b _08000BF0
_08000BFC:
	pop {r4}
	mov ip, r4
	pop {r4, r5, r6, r7}
	mov r8, r4
	mov sb, r5
	mov sl, r6
	mov fp, r7
	pop {r4, r5, r6, r7}
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08000C10
sub_08000C10: @ 0x08000C10
	push {lr}
	ldrb r2, [r1]
	orrs r2, r2
	beq _08000CFA
	push {r0, r1}
	adds r1, #4
	subs r2, #1
	lsls r2, r2, #2
	adds r2, r2, r1
	subs r3, r2, r1
	lsrs r3, r3, #2
	mov fp, r1
	orrs r3, r3
	beq _08000C82
_08000C2C:
	mov sl, r3
	lsls r3, r3, #2
	eors r6, r6
_08000C32:
	cmp r6, sl
	bhs _08000C7C
	subs r1, r2, r3
	lsls r0, r6, #2
	subs r1, r1, r0
_08000C3C:
	cmp r1, fp
	blo _08000C78
	ldr r4, [r1]
	ldr r5, [r4, #0x34]
	movs r0, #0x5e
	ldrb r0, [r4, r0]
	lsls r0, r0, #0x1e
	orrs r5, r0
	mov r8, r5
	adds r7, r1, r3
_08000C50:
	cmp r2, r7
	blo _08000C70
	ldr r5, [r7]
	ldr r0, [r5, #0x34]
	adds r5, #0x5e
	ldrb r5, [r5]
	lsls r5, r5, #0x1e
	orrs r5, r0
	cmp r8, r5
	bhs _08000C70
	ldr r5, [r7]
	subs r7, r7, r3
	str r5, [r7]
	lsls r0, r3, #1
	adds r7, r7, r0
	b _08000C50
_08000C70:
	subs r7, r7, r3
	str r4, [r7]
	subs r1, r1, r3
	b _08000C3C
_08000C78:
	adds r6, #1
	b _08000C32
_08000C7C:
	mov r3, sl
	lsrs r3, r3, #1
	bne _08000C2C
_08000C82:
	pop {r0, r1}
	eors r3, r3
	ldrb r2, [r1]
	strb r3, [r1]
	adds r1, #4
_08000C8C:
	cmp r2, r3
	beq _08000CFA
	push {r1, r2, r3}
	ldr r1, [r1]
	movs r2, #0x2e
	ldrb r2, [r1, r2]
	orrs r2, r2
	beq _08000CEE
	ldr r3, [r1, #0x38]
	orrs r3, r3
	bne _08000CE4
	push {r0}
	adds r0, r1, #0
	eors r1, r1
	bl sub_08009444
	adds r2, r1, #0
	adds r1, r0, #0
	pop {r0}
	cmp r2, #0x22
	beq _08000CCA
	cmp r2, #0x12
	bne _08000CE4
	ldr r2, _08000F8C @ =0x03000E20
	ldrb r2, [r2]
	movs r3, #0x18
	ands r2, r3
	lsrs r2, r2, #1
	ldr r3, _08000F90 @ =0x08000B9C
	ldr r2, [r3, r2]
	b _08000CDA
_08000CCA:
	ldrh r2, [r1, #0x32]
	ldrh r3, [r1, #0x36]
	eors r2, r3
	movs r3, #3
	ands r2, r3
	lsls r2, r2, #2
	ldr r3, _08000F94 @ =0x08000B8C
	ldr r2, [r3, r2]
_08000CDA:
	bl sub_08000EFC
	bl sub_08000CFC
	b _08000CF2
_08000CE4:
	bl sub_08000CFC
	bl sub_08000E6C
	b _08000CF2
_08000CEE:
	bl sub_08000CFC
_08000CF2:
	pop {r1, r2, r3}
	adds r1, #4
	adds r3, #1
	b _08000C8C
_08000CFA:
	pop {pc}

	thumb_func_start sub_08000CFC
sub_08000CFC: @ 0x08000CFC
	adds r1, #0x1b
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r6, _08000F98 @ =0x0862F52C
	adds r2, r2, r6
	ldr r2, [r2]
	adds r2, r2, r6
	ldrb r5, [r1, #6]
	lsls r5, r5, #2
	adds r2, r2, r5
	ldr r2, [r2]
	adds r2, r2, r6
	ldrb r3, [r2]
	adds r4, r0, r3
	subs r4, #1
	cmp r4, #0x78
	blo _08000D20
	mov pc, lr
_08000D20:
	adds r2, #1
	adds r1, #1
	ldr r4, [r1]
	lsrs r4, r4, #4
	ldr r7, _08000F9C @ =0x0000F000
	ands r4, r7
	ldrh r7, [r1, #2]
	lsrs r7, r7, #4
	ldr r5, _08000FA0 @ =0x00000C00
	ands r7, r5
	orrs r4, r7
	ldrb r7, [r1]
	lsrs r7, r7, #6
	lsls r7, r7, #8
	orrs r4, r7
	mov r8, r4
	eors r5, r5
	eors r6, r6
	ldr r7, [r1]
	lsrs r7, r7, #2
	bhs _08000D50
	ldr r6, _08000FA4 @ =0x03000470
	ldrh r5, [r6]
	ldrh r6, [r6, #2]
_08000D50:
	movs r4, #3
	ands r7, r4
	movs r4, #0x13
	ldrb r4, [r1, r4]
	eors r7, r4
	mov sb, r7
	movs r4, #4
	rors r7, r4
	ldr r4, [r1]
	orrs r7, r4
	ldr r4, _08000FA8 @ =0x3E003F00
	ands r7, r4
	mov fp, r7
	ldrh r7, [r1, #0x16]
	subs r5, r7, r5
	ldrh r7, [r1, #0x1a]
	subs r6, r7, r6
	ldrh r7, [r1, #0x1e]
	adds r6, r6, r7
	ldr r7, _08000FAC @ =0x03005E04
	ldr r7, [r7]
	adds r4, r0, #0
	lsls r4, r4, #3
	adds r7, r7, r4
	adds r0, r0, r3
	push {r0, r1}
	adds r0, r7, #0
	ldrb r4, [r1, #4]
	mov ip, r4
	mov sl, r5
_08000D8C:
	push {r3, r6}
	mov r7, sb
	movs r3, #0
	ldrsb r5, [r2, r3]
	lsrs r7, r7, #1
	blo _08000D9A
	rsbs r5, r5, #0
_08000D9A:
	add r5, sl
	movs r3, #1
	ldrsb r4, [r2, r3]
	lsrs r7, r7, #1
	blo _08000DA8
	subs r6, r6, r4
	b _08000DAA
_08000DA8:
	adds r6, r6, r4
_08000DAA:
	mov r7, fp
	ldrb r1, [r2, #2]
	movs r3, #0xc0
	ands r1, r3
	lsls r3, r1, #8
	orrs r7, r3
	ldrb r4, [r2, #2]
	lsrs r4, r4, #4
	lsls r4, r4, #0x1e
	orrs r7, r4
	lsrs r4, r4, #0x1e
	orrs r1, r1
	beq _08000DDC
	lsrs r1, r1, #8
	bhs _08000DD2
	ldr r3, _08000FB0 @ =0x08000AF4
	ldrb r1, [r3, r4]
	ldr r3, _08000FB4 @ =0x08000AF8
	ldrb r3, [r3, r4]
	b _08000DF0
_08000DD2:
	ldr r3, _08000FB8 @ =0x08000AF8
	ldrb r1, [r3, r4]
	ldr r3, _08000FBC @ =0x08000AF4
	ldrb r3, [r3, r4]
	b _08000DF0
_08000DDC:
	movs r3, #2
	tst r4, r3
	beq _08000DEA
	adds r4, #1
	cmp r4, #3
	beq _08000DEA
	movs r4, #7
_08000DEA:
	adds r4, #1
	lsls r1, r4, #3
	lsls r3, r4, #3
_08000DF0:
	mov r4, sb
	lsrs r4, r4, #1
	blo _08000DF8
	subs r5, r5, r1
_08000DF8:
	lsrs r4, r4, #1
	blo _08000DFE
	subs r6, r6, r3
_08000DFE:
	ldr r4, _08000F88 @ =0x00000200
	tst r7, r4
	beq _08000E0C
	lsrs r1, r1, #1
	lsrs r3, r3, #1
	subs r5, r5, r1
	subs r6, r6, r3
_08000E0C:
	ldr r4, _08000FC0 @ =0x000001FF
	ands r5, r4
	lsrs r4, r4, #1
	ldr r3, _08000FC4 @ =0x00008000
	tst r6, r3
	beq _08000E22
	ands r6, r4
	movs r4, #0xa0
	cmp r6, r4
	bhs _08000E24
	b _08000E5E
_08000E22:
	ands r6, r4
_08000E24:
	orrs r7, r6
	lsls r5, r5, #0x10
	orrs r7, r5
	ldrb r5, [r2, #2]
	movs r6, #0xc
	ands r5, r6
	lsrs r6, r6, #1
	rors r5, r6
	eors r7, r5
	str r7, [r0]
	ldrb r7, [r2, #2]
	movs r6, #3
	ands r7, r6
	lsls r7, r7, #8
	add r7, r8
	ldrb r6, [r2, #3]
	add r6, ip
	adds r7, r7, r6
	ldrb r6, [r2, #4]
	lsls r6, r6, #0x19
	blo _08000E5A
	lsrs r6, r6, #0xd
	ldr r3, _08000F9C @ =0x0000F000
	ands r6, r3
	ldr r3, _08000FC8 @ =0x00000FFF
	ands r7, r3
	orrs r7, r6
_08000E5A:
	strh r7, [r0, #4]
	adds r0, #8
_08000E5E:
	pop {r3, r6}
	adds r2, #5
	subs r3, #1
	bne _08000D8C
	pop {r0, r1}
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08000E6C
sub_08000E6C: @ 0x08000E6C
	movs r2, #0x42
	ldrsb r2, [r1, r2]
	movs r3, #8
	tst r2, r3
	bne _08000E7E
	ldr r3, _08000FCC @ =0x03000948
	ldrb r3, [r3]
	lsrs r3, r3, #1
	bhs _08000EF8
_08000E7E:
	movs r3, #4
	ands r2, r3
	bne _08000E8A
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	beq _08000EF8
_08000E8A:
	cmp r0, #0x78
	bhs _08000EF8
	mov r4, r8
	mov r5, sl
	movs r2, #0x12
	ldrsb r2, [r1, r2]
	push {r2}
	ldr r2, _08000FA0 @ =0x00000C00
	ands r4, r2
	ldrb r2, [r1]
	movs r3, #0x30
	ands r2, r3
	cmp r2, #0x10
	beq _08000EC6
	cmp r2, #0x20
	beq _08000EB6
	cmp r2, #0x30
	beq _08000EBE
	ldr r7, _08000FD0 @ =0x00004000
	ldr r3, _08000FD4 @ =0x00001301
	subs r5, #8
	b _08000ECC
_08000EB6:
	ldr r7, _08000FD8 @ =0x40004000
	ldr r3, _08000FDC @ =0x00001303
	subs r5, #0x10
	b _08000ECC
_08000EBE:
	ldr r7, _08000FD8 @ =0x40004000
	ldr r3, _08000FE0 @ =0x00001307
	subs r5, #0x10
	b _08000ECC
_08000EC6:
	eors r7, r7
	ldr r3, _08000FE4 @ =0x00001300
	subs r5, #4
_08000ECC:
	add r7, fp
	orrs r3, r4
	pop {r2}
	adds r6, r6, r2
	ldrb r2, [r1, #0x1e]
	subs r6, r6, r2
	ldr r2, _08000FC0 @ =0x000001FF
	ands r5, r2
	lsrs r2, r2, #1
	subs r6, #3
	ands r6, r2
	orrs r7, r6
	lsls r5, r5, #0x10
	orrs r7, r5
	ldr r4, _08000FE8 @ =0x03005E04
	ldr r4, [r4]
	adds r2, r0, #0
	lsls r2, r2, #3
	adds r4, r4, r2
	str r7, [r4]
	strh r3, [r4, #4]
	adds r0, #1
_08000EF8:
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08000EFC
sub_08000EFC: @ 0x08000EFC
	push {r1}
	ldr r6, _08000FEC @ =0x03000470
	ldrh r7, [r6]
	ldrh r5, [r1, #0x32]
	subs r5, r5, r7
	ldrh r7, [r6, #2]
	ldrh r6, [r1, #0x36]
	subs r6, r6, r7
	movs r3, #0x2e
	ldrsb r3, [r1, r3]
	adds r6, r6, r3
	ldrh r7, [r1, #0x1e]
	lsrs r7, r7, #4
	ldr r3, _08000FA0 @ =0x00000C00
	ands r7, r3
	ldrh r3, [r2]
	adds r2, #2
_08000F1E:
	subs r3, #1
	bmi _08000F66
	cmp r0, #0x78
	bhs _08000F66
	push {r3, r5, r6}
	eors r4, r4
	ldrsh r3, [r2, r4]
	adds r5, r5, r3
	ldr r3, _08000FC0 @ =0x000001FF
	ands r5, r3
	adds r4, #2
	ldrsh r3, [r2, r4]
	adds r6, r6, r3
	movs r3, #0xff
	ands r6, r3
	adds r2, r2, r4
	adds r2, #2
	ldr r4, _08000FF0 @ =0x03005E04
	ldr r4, [r4]
	adds r3, r0, #0
	lsls r3, r3, #3
	adds r4, r4, r3
	ldrh r3, [r2]
	orrs r5, r3
	adds r2, #2
	ldrh r3, [r2]
	adds r2, #2
	orrs r3, r7
	strh r6, [r4]
	adds r4, #2
	strh r5, [r4]
	adds r4, #2
	strh r3, [r4]
	adds r0, #1
	pop {r3, r5, r6}
	b _08000F1E
_08000F66:
	pop {r1}
	mov pc, lr
	.align 2, 0
_08000F6C: .4byte 0x03000204
_08000F70: .4byte 0x03000954
_08000F74: .4byte 0x03000C10
_08000F78: .4byte 0x03000210
_08000F7C: .4byte 0x03005C00
_08000F80: .4byte 0x03000960
_08000F84: .4byte 0x03005E04
_08000F88: .4byte 0x00000200
_08000F8C: .4byte 0x03000E20
_08000F90: .4byte 0x08000B9C
_08000F94: .4byte 0x08000B8C
_08000F98: .4byte 0x0862F52C
_08000F9C: .4byte 0x0000F000
_08000FA0: .4byte 0x00000C00
_08000FA4: .4byte 0x03000470
_08000FA8: .4byte 0x3E003F00
_08000FAC: .4byte 0x03005E04
_08000FB0: .4byte 0x08000AF4
_08000FB4: .4byte 0x08000AF8
_08000FB8: .4byte 0x08000AF8
_08000FBC: .4byte 0x08000AF4
_08000FC0: .4byte 0x000001FF
_08000FC4: .4byte 0x00008000
_08000FC8: .4byte 0x00000FFF
_08000FCC: .4byte 0x03000948
_08000FD0: .4byte 0x00004000
_08000FD4: .4byte 0x00001301
_08000FD8: .4byte 0x40004000
_08000FDC: .4byte 0x00001303
_08000FE0: .4byte 0x00001307
_08000FE4: .4byte 0x00001300
_08000FE8: .4byte 0x03005E04
_08000FEC: .4byte 0x03000470
_08000FF0: .4byte 0x03005E04

	.INCBIN "baserom.gba", 0xFF4, 0x125C-0xFF4

	thumb_func_start sub_0800125C
sub_0800125C: @ 0x0800125C
	push {lr}
	ldrb r3, [r1, #0xa]
	movs r4, #0x10
	orrs r3, r4
	strb r3, [r1, #0xa]
	pop {pc}

	thumb_func_start sub_08001268
sub_08001268: @ 0x08001268
	push {lr}
	bl sub_080012D8
	adds r0, r3, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001274
sub_08001274: @ 0x08001274
	ldrb r2, [r0, #0x15]
	adds r2, #1
	strb r2, [r0, #0x15]
	mov pc, lr

	thumb_func_start sub_0800127C
sub_0800127C: @ 0x0800127C
	push {lr}
	bl sub_08001D5C
	pop {r3}
	mov lr, r3
	ldrb r2, [r1, #0xc]
	orrs r2, r2
	bne sub_08001290
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08001290
sub_08001290: @ 0x08001290
	eors r3, r3
	strb r3, [r1, #0xc]
	strb r2, [r0, #0x14]
	strb r3, [r0, #0x15]
	strb r3, [r0, #0x16]
	bl DoPlayerItemEntity
	pop {pc}
_080012A0:
	.byte 0x01, 0x1C, 0x00, 0x00

	thumb_func_start sub_080012A4
sub_080012A4: @ 0x080012A4
	ldrb r2, [r1, #5]
	eors r2, r2
	strb r2, [r1, #5]
	strb r2, [r1, #1]
	ldr r3, [r1, #0x28]
	str r2, [r3, #0x6c]
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080012B4
sub_080012B4: @ 0x080012B4
	movs r2, #1
	strb r2, [r0, #0x14]
	eors r2, r2
	strb r2, [r0, #0x15]
	strb r2, [r0, #0x16]
	mov pc, lr

	thumb_func_start sub_080012C0
sub_080012C0: @ 0x080012C0
	movs r2, #0x13
	strb r2, [r0, #0x14]
	eors r2, r2
	strb r2, [r0, #0x15]
	strb r2, [r0, #0x16]
	mov pc, lr

	thumb_func_start sub_080012CC
sub_080012CC: @ 0x080012CC
	push {lr}
	bl sub_080012D8
	adds r0, r3, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080012D8
sub_080012D8: @ 0x080012D8
	push {lr}
	b _080012DC
_080012DC:
	ldrh r3, [r1]
	orrs r3, r3
	beq _080012F0
	adds r1, #2
	ldrh r2, [r1]
	adds r1, #2
	cmp r0, r3
	bne _080012DC
	adds r3, r2, #0
	movs r2, #1
_080012F0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080012F4
sub_080012F4: @ 0x080012F4
	push {r4, lr}
	bl sub_080012FC
	pop {r4, pc}

	thumb_func_start sub_080012FC
sub_080012FC: @ 0x080012FC
	push {lr}
	bl sub_080012B4
	ldrb r1, [r0, #0x1c]
	movs r2, #0xfc
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x1c]
	bl sub_08001D5C
	ldr r2, _080016F8 @ =0x0000FEFE
	ldrh r3, [r1, #0x36]
	ands r3, r2
	strh r3, [r1, #0x36]
	eors r2, r2
	movs r3, #0x26
	strb r2, [r1, r3]
	bl sub_080020C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001328
sub_08001328: @ 0x08001328
	push {lr}
	bl sub_08001D5C
	movs r2, #0x42
	ldrsb r2, [r0, r2]
	orrs r2, r2
	beq _080013CC
	ldrb r3, [r1, #7]
	lsrs r3, r3, #8
	bhs _080013C6
	movs r3, #0x26
	ldrb r3, [r1, r3]
	orrs r3, r3
	beq _0800134C
	movs r4, #0xf
	ands r3, r4
	subs r3, #1
	bne _080013C6
_0800134C:
	ldrb r3, [r0, #0x14]
	cmp r3, #3
	beq _080013C6
	ldr r4, _080016FC @ =0xFFFFFFFF
	lsls r2, r2, #1
	bhs _0800137E
	movs r4, #1
	cmp r3, #0xb
	beq _080013C6
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _080013C6
	ldrb r2, [r1, #5]
	orrs r2, r2
	beq _0800136E
	cmp r2, #4
	blo _080013C6
_0800136E:
	ldrb r2, [r1, #0xf]
	movs r3, #0x40
	tst r2, r3
	bne _080013C6
	movs r2, #2
	ldrsb r2, [r1, r2]
	orrs r2, r2
	bne _080013C6
_0800137E:
	movs r2, #0x42
	ldrb r3, [r0, r2]
	subs r3, r3, r4
	strb r3, [r0, r2]
	beq _080013C6
	ldrb r2, [r1, #7]
	movs r3, #0xdf
	ands r2, r3
	strb r2, [r1, #7]
	movs r3, #0x3d
	ldrsb r3, [r0, r3]
	orrs r3, r3
	beq _080013B6
	bmi _080013B6
	movs r3, #0x26
	ldrb r3, [r1, r3]
	orrs r3, r3
	bne _080013B6
	ldrb r3, [r0, #0x14]
	cmp r3, #9
	beq _080013B6
	ldrb r3, [r1, #2]
	orrs r3, r3
	bne _080013B6
	bl sub_080076C4
	movs r2, #0x14
	strh r2, [r1, #8]
_080013B6:
	push {r0}
	movs r1, #0x3e
	ldrb r2, [r0, r1]
	ldr r1, _08001700 @ =0x00000280
	bl sub_08003010
	pop {r0}
	b _080013CC
_080013C6:
	movs r1, #0x42
	eors r2, r2
	strb r2, [r0, r1]
_080013CC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080013D0
sub_080013D0: @ 0x080013D0
	push {lr}
	eors r2, r2
	adds r5, r2, #0
	push {r1}
	mov sl, r1
	bl sub_0800777C
	pop {r1}
	bne _080013F8
	movs r4, #0x2a
	ldrb r4, [r0, r4]
	lsrs r4, r4, #1
	ldr r2, _08001704 @ =0x0800100C
	ldrb r3, [r2, r4]
	ldr r2, _08001708 @ =0x03000510
	ldrb r2, [r2]
	ands r3, r2
	beq _080013F8
	adds r4, #1
	adds r5, r4, #0
_080013F8:
	adds r3, r5, #0
	pop {pc}

	thumb_func_start sub_080013FC
sub_080013FC: @ 0x080013FC
	mov r3, lr
	push {r3, r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	ldrb r2, [r0, #0x1c]
	movs r3, #0xfb
	ands r2, r3
	strb r2, [r0, #0x1c]
	movs r3, #0x2a
	ldrb r3, [r0, r3]
	cmp r3, #5
	blo _08001420
	movs r3, #4
	orrs r2, r3
	strb r2, [r0, #0x1c]
_08001420:
	bl sub_08001D5C
	movs r2, #0xff
	movs r3, #0x35
	strb r2, [r1, r3]
	bl sub_08001468
	movs r3, #0x2a
	ldrb r2, [r0, r3]
	lsrs r2, r2, #1
	ldrb r3, [r1, #8]
	movs r4, #0xa4
	cmp r3, r4
	bhs _0800143E
	adds r3, r3, r2
_0800143E:
	adds r2, r3, #0
	ldrb r4, [r1, #9]
	ldrb r3, [r0, #0x1b]
	cmp r4, r3
	bne _08001450
	movs r3, #0x23
	ldrb r3, [r0, r3]
	cmp r2, r3
	beq _0800145A
_08001450:
	adds r1, r2, #0
	strb r4, [r0, #0x1b]
	adds r2, r4, #0
	bl sub_08003840
_0800145A:
	pop {r4, r5, r6, r7}
	mov r8, r4
	mov sb, r5
	mov sl, r6
	mov fp, r7
	pop {r3, r4, r5, r6, r7}
	mov pc, r3

	thumb_func_start sub_08001468
sub_08001468: @ 0x08001468
	push {lr}
	push {r4}
	ldr r2, _0800170C @ =0x080071A8
	ldrb r3, [r0, #0xa]
	lsls r3, r3, #2
	ldr r2, [r2, r3]
	eors r3, r3
	mov r8, r3
	movs r3, #4
_0800147A:
	ldrb r4, [r2, #0xf]
	cmp r8, r4
	bhs _08001486
	mov r8, r4
	ldrh r4, [r2, #0x10]
	mov sb, r4
_08001486:
	adds r2, #0x1c
	subs r3, #1
	bne _0800147A
	pop {r4}
	movs r3, #0xe
	adds r3, r3, r1
	ldrb r3, [r3]
	cmp r3, r8
	bhs _080014A2
	mov r3, sb
	strh r3, [r1, #8]
	lsrs r3, r3, #8
	strb r3, [r0, #0x1b]
	pop {pc}
_080014A2:
	movs r3, #0x26
	ldrb r3, [r1, r3]
	orrs r3, r3
	beq _080014B4
	lsrs r3, r3, #8
	blo _080014C0
	ldr r2, _08001710 @ =0x000001AC
	strh r2, [r1, #8]
	b _080014C0
_080014B4:
	movs r2, #4
	ldrh r3, [r1, #8]
	cmp r2, r3
	bne _080014C0
	bl sub_080014C4
_080014C0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080014C4
sub_080014C4: @ 0x080014C4
	push {lr}
	push {r4}
	ldrb r2, [r1, #8]
	ldrb r3, [r1, #0xb]
	orrs r3, r3
	bne _0800150A
	movs r4, #6
	ldrsb r3, [r1, r4]
	lsls r3, r3, #1
	bhs _0800150A
	orrs r3, r3
	bne _080014FC
	lsrs r3, r3, #1
	orrs r3, r3
	beq _080014E8
	subs r3, #1
	strb r3, [r1, #6]
	b _080014F4
_080014E8:
	push {r2}
	bl sub_080013D0
	pop {r2}
	orrs r3, r3
	beq _08001508
_080014F4:
	ldrb r3, [r0, #0x18]
	adds r3, #1
	cmp r3, #4
	blo _08001508
_080014FC:
	movs r2, #0x2a
	ldrb r2, [r0, r2]
	movs r4, #0x35
	strb r2, [r1, r4]
	ldr r2, _08001714 @ =0x00000230
	b _0800150A
_08001508:
	strb r3, [r0, #0x18]
_0800150A:
	strh r2, [r1, #8]
	pop {r4}
	pop {pc}

	thumb_func_start sub_08001510
sub_08001510: @ 0x08001510
	push {lr}
	bl sub_08001D5C
	eors r2, r2
	strb r2, [r1, #0x10]
	bl sub_08001528
	strb r3, [r1, #0x12]
	ldr r4, _08001718 @ =0x0800110C
	adds r4, r4, r3
	ldr r4, [r4]
	bx r4

	thumb_func_start sub_08001528
sub_08001528: @ 0x08001528
	push {lr}
	push {r0}
	push {r1}
	movs r1, #0
	movs r2, #3
	ldrh r3, [r0, #0x32]
	adds r1, r1, r3
	ldrh r3, [r0, #0x36]
	adds r2, r2, r3
	ldr r3, _0800171C @ =0x000003F0
	ands r1, r3
	ands r2, r3
	lsrs r1, r1, #4
	lsls r2, r2, #2
	adds r2, r2, r1
	lsls r2, r2, #1
	push {r2}
	movs r1, #0
	movs r2, #3
	bl sub_080093F8
	ldr r3, _08001720 @ =0x00004000
	tst r1, r3
	bne _0800155A
	adds r3, r1, #0
_0800155A:
	pop {r2}
	pop {r1}
	movs r4, #0x22
	ldrh r4, [r1, r4]
	push {r4}
	cmp r2, r4
	bne _0800156E
	ldrh r4, [r1, #0x24]
	cmp r3, r4
	beq _08001578
_0800156E:
	movs r4, #0x22
	strh r2, [r1, r4]
	strh r3, [r1, #0x24]
	eors r4, r4
	strb r4, [r1, #0x11]
_08001578:
	ldrb r4, [r1, #0x11]
	adds r4, #1
	strb r4, [r1, #0x11]
	ldrb r4, [r1, #0x12]
	strb r4, [r1, #0x13]
	push {r1}
	movs r1, #0
	movs r2, #3
	bl sub_08009444
	adds r0, r1, #0
	ldr r1, _08001720 @ =0x00004000
	tst r0, r1
	beq _08001598
	movs r3, #0x30
	b _0800159E
_08001598:
	ldr r1, _08001724 @ =0x08001010
	bl sub_080012D8
_0800159E:
	pop {r1}
	pop {r2}
	pop {r0}
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080015A8
sub_080015A8: @ 0x080015A8
	push {lr}
	ldr r1, _08001728 @ =0x03000510
	ldrb r1, [r1]
	lsrs r1, r1, #4
	ldr r2, _0800172C @ =0x080011C0
	ldrb r3, [r1, r2]
	bl sub_08001D5C
	strb r3, [r1, #0xd]
	pop {pc}

	thumb_func_start sub_080015BC
sub_080015BC: @ 0x080015BC
	push {lr}
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _080015F2
	movs r2, #0x26
	ldrb r2, [r1, r2]
	orrs r2, r2
	bne _08001650
	ldrh r2, [r1, #0x36]
	ldr r3, _08001730 @ =0x00000400
	tst r2, r3
	bne _080015F2
	movs r3, #4
	tst r2, r3
	bne _08001650
	ldrb r2, [r1, #0x1b]
	movs r3, #0x40
	tst r2, r3
	bne _08001650
	ldrb r2, [r1, #0xd]
	movs r3, #0x80
	tst r2, r3
	bne _08001650
	movs r3, #0x2b
	ldrb r3, [r0, r3]
	cmp r2, r3
	bne _08001650
_080015F2:
	push {r1}
	bl sub_08007780
	pop {r1}
	bne _08001650
	movs r3, #0x2a
	ldrb r3, [r0, r3]
	lsrs r3, r3, #1
	lsls r3, r3, #1
	push {r1}
	push {r3}
	ldr r2, _08001734 @ =0x080011D0
	ldrsb r1, [r2, r3]
	adds r3, #1
	ldrsb r2, [r2, r3]
	bl sub_08009444
	adds r2, r1, #0
	pop {r3}
	lsls r3, r3, #1
	ldr r1, _08001738 @ =0x080011D8
	ldr r1, [r1, r3]
	push {r0}
	adds r0, r2, #0
	bl sub_080012D8
	pop {r0}
	pop {r1}
	beq _08001654
	movs r2, #0x80
	strb r2, [r1, #6]
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _08001640
	ldrb r2, [r0, #0x18]
	adds r2, #1
	strb r2, [r0, #0x18]
	cmp r2, #4
	blo _08001654
_08001640:
	subs r3, #1
	movs r2, #0x2a
	strb r3, [r0, r2]
	pop {r2}
	movs r2, #0x81
	strb r2, [r1, #2]
	movs r2, #4
	b sub_08001290
_08001650:
	eors r2, r2
	strb r2, [r0, #0x18]
_08001654:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001658
sub_08001658: @ 0x08001658
	ldr r2, [r0, #0x38]
	orrs r2, r2
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08001660
sub_08001660: @ 0x08001660
	ldrh r2, [r1, #0x36]
	ldr r3, _0800173C @ =0x00000200
	orrs r2, r3
	strh r2, [r1, #0x36]
	bl sub_080012A4
	eors r2, r2
	movs r3, #0x42
	strb r2, [r0, r3]
	ldrb r2, [r0, #0x14]
	cmp r2, #3
	bne _0800167A
	pop {pc}
_0800167A:
	ldrb r2, [r1, #0x11]
	cmp r2, #0xb
	blo _08001684
	bl sub_0800125C
_08001684:
	adds r4, r0, #0
	movs r3, #3
	ands r2, r3
	beq _08001692
	subs r2, #1
	beq _080016A6
	pop {pc}
_08001692:
	adds r4, #0x36
	ldrh r2, [r4]
	adds r2, #3
	ldr r3, _08001740 @ =0x0000FFF0
	ands r3, r2
	adds r3, #8
	ldrh r2, [r4]
	subs r3, r3, r2
	blo _080016C0
	b _080016B6
_080016A6:
	adds r4, #0x32
	ldrh r2, [r4]
	ldr r3, _08001740 @ =0x0000FFF0
	ands r3, r2
	adds r3, #8
	ldrh r2, [r4]
	subs r3, r3, r2
	blo _080016C0
_080016B6:
	subs r4, #2
	ldr r2, [r4]
	ldr r3, _08001744 @ =0x00012800
	adds r2, r2, r3
	b _080016C8
_080016C0:
	subs r4, #2
	ldr r2, [r4]
	ldr r3, _08001744 @ =0x00012800
	subs r2, r2, r3
_080016C8:
	str r2, [r4]
	ldrh r2, [r0, #0x32]
	movs r3, #0xf
	ands r2, r3
	subs r2, #7
	cmp r2, #3
	bhs _080016F6
	ldrh r2, [r0, #0x36]
	movs r3, #0xf
	ands r2, r3
	subs r2, #7
	cmp r2, #3
	bhs _080016F6
	ldrh r2, [r1, #0x36]
	movs r3, #0x80
	ands r2, r3
	bne _080016EE
	bl sub_080076C4
_080016EE:
	movs r2, #3
	pop {r3}
	ldr r3, _08001748 @ =sub_08001290
	bx r3
_080016F6:
	pop {pc}
	.align 2, 0
_080016F8: .4byte 0x0000FEFE
_080016FC: .4byte 0xFFFFFFFF
_08001700: .4byte 0x00000280
_08001704: .4byte 0x0800100C
_08001708: .4byte 0x03000510
_0800170C: .4byte 0x080071A8
_08001710: .4byte 0x000001AC
_08001714: .4byte 0x00000230
_08001718: .4byte 0x0800110C
_0800171C: .4byte 0x000003F0
_08001720: .4byte 0x00004000
_08001724: .4byte 0x08001010
_08001728: .4byte 0x03000510
_0800172C: .4byte 0x080011C0
_08001730: .4byte 0x00000400
_08001734: .4byte 0x080011D0
_08001738: .4byte 0x080011D8
_0800173C: .4byte 0x00000200
_08001740: .4byte 0x0000FFF0
_08001744: .4byte 0x00012800
_08001748: .4byte sub_08001290

	.INCBIN "baserom.gba", 0x174C, 0x17FA-0x174C

_080017FA:
	pop {pc}

	thumb_func_start sub_080017FC
sub_080017FC: @ 0x080017FC
	push {r4, r5, r6, r7, lr}
	ldrb r1, [r0, #0xb]
	lsrs r1, r1, #8
	bhs _08001808
	bl sub_080019FC
_08001808:
	ldrh r1, [r0, #0xc]
	movs r2, #0x2b
	adds r2, r2, r0
	ldrb r2, [r2]
	bl sub_08003010
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08001818
sub_08001818: @ 0x08001818
	push {lr}
	bl sub_08001D5C
	ldrb r2, [r1, #0x1e]
	movs r3, #0x40
	tst r2, r3
	beq _080017FA
	movs r3, #0x20
	tst r2, r3
	beq _0800183A
	movs r3, #0x2a
	ldrb r3, [r0, r3]
	lsrs r3, r3, #1
	lsls r3, r3, #3
	strb r3, [r1, #0xd]
	movs r2, #0x2b
	strb r3, [r0, r2]
_0800183A:
	ldrb r2, [r1, #0x1e]
	movs r3, #0x80
	tst r2, r3
	beq _080018AA
	ldr r1, [r0, #0x64]
	push {r1}
	bl sub_08007880
	pop {r1}
	bne _08001860
	eors r2, r2
	strb r2, [r1, #0x1e]
	bl sub_08001D5C
	ldrb r2, [r1, #0x1e]
	movs r3, #0x7f
	ands r2, r3
	strb r2, [r1, #0x1e]
	b _080018AA
_08001860:
	movs r2, #0x2a
	ldrb r2, [r0, r2]
	movs r3, #0x32
	lsrs r2, r2, #2
	bhs _0800186C
	movs r3, #0x36
_0800186C:
	ldr r2, [r0, #0x64]
	ldr r2, [r2, #0x28]
	ldrh r1, [r0, r3]
	ldrh r3, [r2, r3]
	subs r1, r1, r3
	bpl _0800187A
	rsbs r1, r1, #0
_0800187A:
	movs r3, #0x10
	subs r3, r3, r1
	bmi _08001920
	lsls r3, r3, #8
	str r3, [r2, #0xc]
	movs r3, #0x2b
	ldrb r1, [r0, r3]
	strb r1, [r2, r3]
	push {r0, r2}
	adds r0, r2, #0
	bl sub_080017FC
	pop {r0, r2}
	movs r3, #0x2b
	ldrb r3, [r2, r3]
	lsls r3, r3, #1
	ldr r1, _08001C8C @ =0x08002DBC
	ldrh r3, [r3, r1]
	ldrh r2, [r2, #0x2c]
	ands r2, r3
	beq _08001920
	eors r2, r2
	str r2, [r0, #0xc]
	b _08001920
_080018AA:
	bl sub_08001D5C
	ldrb r2, [r1, #0xf]
	movs r3, #0x80
	tst r2, r3
	bne _08001920
	push {r1}
	adds r1, r0, #0
	bl sub_08007860
	pop {r2}
	beq _08001920
	push {r0, r2}
	adds r0, r1, #0
	bl sub_080076C4
	pop {r0, r2}
	str r2, [r1, #0x60]
	movs r3, #0x2a
	ldrb r2, [r0, r3]
	strb r2, [r1, r3]
	ldrb r2, [r1, #0xa]
	bl sub_08001D60
	movs r3, #0x60
	strb r3, [r1, #0x1e]
	str r1, [r0, #0x64]
	push {r0, r1}
	bl sub_080123E8
	adds r2, r0, #0
	pop {r0, r1}
	beq _08001914
	push {r0, r1, r2}
	movs r0, #2
	adds r1, r2, #0
	bl sub_08012728
	pop {r0, r1, r2}
	movs r3, #8
	strb r3, [r2, #9]
	movs r3, #8
	strb r3, [r2, #8]
	movs r3, #0x80
	strb r3, [r2, #0x19]
	ldr r3, [r1, #0x28]
	str r3, [r2, #0x54]
	ldrb r3, [r3, #0xa]
	strb r3, [r2, #0xa]
	eors r3, r3
	strb r3, [r2, #0xb]
	strb r3, [r2, #0x14]
	strb r3, [r2, #0x15]
_08001914:
	bl sub_08001D5C
	ldrb r2, [r1, #0x1e]
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r1, #0x1e]
_08001920:
	bl sub_08001D5C
	ldrb r2, [r1, #0x1e]
	lsrs r2, r2, #8
	blo _08001946
	ldr r2, [r0, #0x64]
	ldrb r2, [r2, #0x1e]
	movs r3, #0x20
	tst r2, r3
	bne _0800193C
	ldrb r3, [r1, #0x1e]
	movs r4, #0x7f
	ands r3, r4
	strb r3, [r1, #0x1e]
_0800193C:
	movs r3, #0x10
	tst r2, r3
	beq _08001946
	ldr r3, _08001C90 @ =0x00000100
	str r3, [r0, #0xc]
_08001946:
	ldrb r2, [r1, #0x1e]
	movs r3, #0x10
	tst r2, r3
	bne _080019E2
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	movs r2, #0x2a
	ldrb r2, [r0, r2]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	ldr r3, _08001C94 @ =0x08001754
	ldrsb r1, [r3, r2]
	adds r2, #1
	ldrsb r2, [r3, r2]
	bl sub_08009444
	push {r0}
	adds r0, r1, #0
	ldr r1, _08001C98 @ =0x0800175C
	bl sub_080012D8
	pop {r0}
	bl sub_08001D5C
	ldrb r2, [r1, #0x1e]
	orrs r3, r3
	beq _080019A2
	movs r2, #0x2a
	ldrb r2, [r0, r2]
	lsrs r2, r2, #1
	subs r3, #1
	cmp r2, r3
	bne _080019A2
	ldrb r2, [r1, #0x1e]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r1, #0x1e]
	movs r2, #1
	ldrh r3, [r1, #0x36]
	orrs r2, r3
	strh r2, [r1, #0x36]
	pop {r2}
	movs r2, #7
	ldr r3, _08001C9C @ =sub_08001290
	bx r3
_080019A2:
	movs r3, #0xef
	ands r2, r3
	ldrb r2, [r1, #0x1e]
	movs r3, #0x20
	tst r2, r3
	beq _080019E2
	ldrb r3, [r1, #0xd]
	lsls r3, r3, #1
	ldr r2, _08001CA0 @ =0x08002DBC
	ldrh r3, [r3, r2]
	ldrh r2, [r0, #0x2c]
	ands r2, r3
	cmp r2, r3
	bne _080019D2
	movs r2, #6
	strb r2, [r0, #0x14]
	eors r2, r2
	strb r2, [r0, #0x15]
	movs r3, #0x38
	strb r2, [r1, r3]
	strb r2, [r1, #0x1e]
	movs r3, #0xff
	strb r3, [r1, #0xd]
	pop {pc}
_080019D2:
	eors r2, r2
	str r2, [r0, #0xc]
	ldr r2, [r0, #0x60]
	ldrb r2, [r2, #0x1e]
	orrs r2, r2
	bne _080019E2
	strb r2, [r1, #0x1e]
	b _080019E2
_080019E2:
	pop {pc}

	thumb_func_start sub_080019E4
sub_080019E4: @ 0x080019E4
	push {lr}
	movs r2, #0x2a
	ldrb r2, [r0, r2]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	ldr r3, _08001CA4 @ =0x0800174C
	ldrsb r1, [r3, r2]
	adds r2, #1
	ldrsb r2, [r3, r2]
	bl sub_08009484
	pop {pc}

	thumb_func_start sub_080019FC
sub_080019FC: @ 0x080019FC
	push {lr}
	bl sub_08001D5C
	ldrh r2, [r1, #0x36]
	movs r3, #0x80
	ldr r1, _08001CA8 @ =0x08001780
	ands r2, r3
	beq _08001A0E
	ldr r1, _08001CAC @ =0x080017B0
_08001A0E:
	mov fp, r1
	eors r7, r7
	mov r8, r0
	movs r2, #0x32
	ldrh r3, [r0, r2]
	movs r2, #0x36
	ldrh r4, [r0, r2]
	movs r2, #0x48
	ldr r5, [r0, r2]
	ldr r1, _08001CB0 @ =0x03000468
	ldrh r1, [r1]
	subs r3, r3, r1
	ldr r1, _08001CB4 @ =0x0300046A
	ldrh r1, [r1]
	subs r4, r4, r1
	eors r2, r2
	ldrsb r0, [r5, r2]
	adds r0, r0, r3
	movs r2, #1
	ldrsb r1, [r5, r2]
	adds r1, r1, r4
	push {r0, r1}
	ldrb r2, [r5, #2]
	adds r0, r0, r2
	ldrb r4, [r5, #3]
	movs r6, #2
	mov sl, r1
_08001A44:
	lsls r7, r7, #1
	lsls r7, r7, #1
	adds r1, r1, r4
	bl sub_08001AA8
	orrs r7, r2
	lsls r7, r7, #1
	mov r1, sl
	subs r1, r1, r4
	bl sub_08001AA8
	orrs r7, r2
	lsls r7, r7, #1
	subs r6, #1
	beq _08001A6C
	mov r1, sl
	ldrb r3, [r5, #2]
	subs r0, r0, r3
	subs r0, r0, r3
	b _08001A44
_08001A6C:
	pop {r0, r1}
	ldrb r2, [r5, #5]
	adds r1, r1, r2
	ldrb r4, [r5, #4]
	movs r6, #2
	mov sb, r0
_08001A78:
	lsls r7, r7, #1
	lsls r7, r7, #1
	adds r0, r0, r4
	bl sub_08001AA8
	orrs r7, r2
	lsls r7, r7, #1
	mov r0, sb
	subs r0, r0, r4
	bl sub_08001AA8
	orrs r7, r2
	lsls r7, r7, #1
	subs r6, #1
	beq _08001AA0
	mov r0, sb
	ldrb r3, [r5, #5]
	subs r1, r1, r3
	subs r1, r1, r3
	b _08001A78
_08001AA0:
	mov r0, r8
	movs r2, #0x2c
	strh r7, [r0, r2]
	pop {pc}

	thumb_func_start sub_08001AA8
sub_08001AA8: @ 0x08001AA8
	push {lr}
	push {r0, r1}
	ldr r2, _08001CB8 @ =0x000003F0
	ands r0, r2
	ands r1, r2
	lsrs r0, r0, #4
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r2, r8
	movs r3, #0x50
	ldrh r3, [r2, r3]
	lsrs r3, r3, #0xe
	lsls r3, r3, #2
	ldr r1, _08001CBC @ =0x080092A0
	ldr r1, [r1, r3]
	ldrb r2, [r0, r1]
	push {r0, r1, r2}
	mov r0, r8
	bl sub_08001D5C
	movs r2, #0x26
	ldrb r2, [r1, r2]
	orrs r2, r2
	pop {r0, r1, r2}
	pop {r0, r1}
	beq _08001AE4
	cmp r2, #0x10
	bhs _08001AFC
_08001AE0:
	movs r2, #0xf
	b _08001AEC
_08001AE4:
	cmp r2, #0x24
	beq _08001AE0
	cmp r2, #0x10
	bhs _08001AFC
_08001AEC:
	movs r3, #8
	tst r1, r3
	bne _08001AF4
	lsrs r2, r2, #2
_08001AF4:
	tst r0, r3
	bne _08001B38
	lsrs r2, r2, #1
	b _08001B38
_08001AFC:
	cmp r2, #0xff
	beq _08001B38
	push {r4}
	subs r2, #0x10
	lsls r2, r2, #1
	mov r3, fp
	ldrh r2, [r2, r3]
	movs r4, #0xf
	ands r4, r0
	cmp r4, #4
	blo _08001B20
	lsrs r2, r2, #1
	cmp r4, #8
	blo _08001B20
	lsrs r2, r2, #1
	cmp r4, #0xc
	blo _08001B20
	lsrs r2, r2, #1
_08001B20:
	movs r4, #0xf
	ands r4, r1
	cmp r4, #4
	blo _08001B36
	lsrs r2, r2, #4
	cmp r4, #8
	blo _08001B36
	lsrs r2, r2, #4
	cmp r4, #0xc
	blo _08001B36
	lsrs r2, r2, #4
_08001B36:
	pop {r4}
_08001B38:
	movs r3, #1
	ands r2, r3
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001B40
sub_08001B40: @ 0x08001B40
	push {r4}
	movs r2, #0x2a
	ldrb r4, [r0, r2]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _08001CC0 @ =0x0800174C
	ldrsb r2, [r3, r4]
	adds r4, #1
	ldrsb r3, [r3, r4]
	pop {r4}
	push {r4}
	movs r4, #0x32
	ldrh r4, [r0, r4]
	adds r2, r2, r4
	movs r4, #0x36
	ldrh r4, [r0, r4]
	adds r3, r3, r4
	pop {r4}
	b sub_08001B70
	.align 2, 0

	thumb_func_start sub_08001B68
sub_08001B68: @ 0x08001B68
	movs r2, #0x32
	ldrh r2, [r0, r2]
	movs r3, #0x36
	ldrh r3, [r0, r3]
	thumb_func_start sub_08001B70
sub_08001B70: @ 0x08001B70
	push {r0, r4, r5, r6, r7, lr}
	movs r4, #0x50
	ldrh r4, [r0, r4]
	push {r4}
	push {r2, r3}
	push {r0, r1}
	adds r0, r2, #0
	adds r1, r3, #0
	adds r2, r4, #0
	bl sub_08009310
	ldr r1, _08001CC4 @ =0x08002B50
	bl sub_080012D8
	pop {r0, r1}
	beq _08001C84
	ldr r2, _08001CC8 @ =0x08002CC4
	lsls r3, r3, #3
	adds r2, r2, r3
	ldrh r3, [r2]
	movs r4, #1
	lsls r4, r1
	tst r3, r4
	beq _08001C84
	ldrb r5, [r2, #2]
	ldrb r6, [r2, #3]
	ldrb r7, [r2, #5]
	movs r4, #0x80
	tst r5, r4
	bne _08001C26
	cmp r1, #6
	beq _08001C26
	push {r0, r2, r5, r6}
	bl sub_080123E8
	orrs r0, r0
	beq _08001C24
	adds r1, r0, #0
	movs r0, #5
	push {r1}
	bl sub_08012728
	pop {r1}
	pop {r0, r2, r5, r6}
	pop {r3, r4}
	push {r3, r4}
	push {r0, r2, r5, r6}
	movs r2, #6
	strb r2, [r1, #8]
	strb r5, [r1, #9]
	strb r6, [r1, #0xa]
	cmp r5, #0xf
	bne _08001BE8
	ldrb r2, [r0, #8]
	cmp r2, #3
	beq _08001BE8
	cmp r2, #6
	beq _08001BE8
	movs r2, #0x80
	strb r2, [r1, #0xb]
_08001BE8:
	orrs r5, r5
	beq _08001BFE
	lsrs r3, r3, #4
	lsls r3, r3, #4
	adds r3, #8
	strh r3, [r1, #0x32]
	lsrs r4, r4, #4
	lsls r4, r4, #4
	adds r4, #8
	strh r4, [r1, #0x36]
	b _08001C10
_08001BFE:
	movs r3, #0x32
	ldrh r4, [r0, r3]
	strh r4, [r1, r3]
	movs r3, #0x36
	ldrh r4, [r0, r3]
	strh r4, [r1, r3]
	movs r3, #0x3a
	ldrh r4, [r0, r3]
	strh r4, [r1, r3]
_08001C10:
	movs r3, #0x54
	str r0, [r1, r3]
	movs r3, #0x50
	ldrh r2, [r0, r3]
	strh r2, [r1, r3]
	adds r0, r1, #0
	bl sub_08008DD8
	pop {r0, r2, r5, r6}
	b _08001C26
_08001C24:
	pop {r0, r2, r5, r6}
_08001C26:
	adds r4, r2, #0
	pop {r2, r3}
	ldr r1, _08001CCC @ =0x03000450
	ldrh r0, [r1, #0x18]
	subs r2, r2, r0
	lsrs r2, r2, #4
	ldrh r0, [r1, #0x1a]
	subs r3, r3, r0
	lsrs r3, r3, #4
	lsls r3, r3, #6
	adds r2, r2, r3
	ldrh r0, [r4, #6]
	pop {r4}
	ldr r3, _08001CD0 @ =0x00004000
	tst r0, r3
	bne _08001C52
	adds r1, r2, #0
	adds r2, r4, #0
	push {r7}
	bl sub_08014658
	b _08001C7A
_08001C52:
	ldr r3, _08001CD4 @ =0x0000FFFF
	cmp r0, r3
	beq _08001C70
	push {r7}
	push {r2, r5, r6}
	push {r0, r2}
	adds r0, r4, #0
	bl sub_08015DC0
	adds r1, r0, #4
	pop {r0, r2}
	lsls r2, r2, #1
	strh r0, [r1, r2]
	pop {r2, r5, r6}
	b _08001C7A
_08001C70:
	adds r0, r2, #0
	adds r1, r4, #0
	push {r7}
	bl sub_0801478C
_08001C7A:
	adds r1, r5, #0
	adds r2, r6, #0
	pop {r3}
	movs r7, #1
	pop {r0, r4, r5, r6, r7, pc}
_08001C84:
	eors r2, r2
	pop {r2, r3}
	pop {r4}
	pop {r0, r4, r5, r6, r7, pc}
_08001C8C: .4byte 0x08002DBC
_08001C90: .4byte 0x00000100
_08001C94: .4byte 0x08001754
_08001C98: .4byte 0x0800175C
_08001C9C: .4byte sub_08001290
_08001CA0: .4byte 0x08002DBC
_08001CA4: .4byte 0x0800174C
_08001CA8: .4byte 0x08001780
_08001CAC: .4byte 0x080017B0
_08001CB0: .4byte 0x03000468
_08001CB4: .4byte 0x0300046A
_08001CB8: .4byte 0x000003F0
_08001CBC: .4byte 0x080092A0
_08001CC0: .4byte 0x0800174C
_08001CC4: .4byte 0x08002B50
_08001CC8: .4byte 0x08002CC4
_08001CCC: .4byte 0x03000450
_08001CD0: .4byte 0x00004000
_08001CD4: .4byte 0x0000FFFF

	.INCBIN "baserom.gba", 0x1CD8, 0x1D5C-0x1CD8

	thumb_func_start sub_08001D5C
sub_08001D5C: @ 0x08001D5C
	ldrb r2, [r0, #0xa]
	movs r0, r0
	thumb_func_start sub_08001D60
sub_08001D60: @ 0x08001D60
	ldr r1, _08002148 @ =0x08000FF4
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	mov pc, lr

	thumb_func_start sub_08001D68
sub_08001D68: @ 0x08001D68
	push {lr}
	bl sub_08001D5C
	ldr r3, _0800214C @ =0x0000023C
	ldrb r2, [r1, #5]
	orrs r2, r2
	bne _08001DCA
	movs r3, #0x6c
	ldrb r2, [r1, #0x1b]
	movs r4, #0x48
	tst r2, r4
	bne _08001DEE
	orrs r2, r2
	beq _08001D9A
	push {r1, r3}
	bl sub_080013D0
	pop {r1, r3}
	beq _08001DCA
	ldrb r2, [r1, #0x1b]
	movs r4, #0xf7
	ands r2, r4
	strb r2, [r1, #0x1b]
	movs r3, #0x70
	bne _08001DCA
_08001D9A:
	ldr r3, _08002150 @ =0x00000258
	ldrb r2, [r1, #0xf]
	movs r4, #1
	tst r2, r4
	bne _08001DCA
	ldr r3, _08002154 @ =0x0000019C
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _08001DCA
	movs r3, #0x60
	ldrb r2, [r1, #3]
	orrs r2, r2
	bne _08001DCA
	movs r3, #0x21
	ldrb r2, [r1, r3]
	ldr r3, _08002158 @ =0x00000188
	orrs r2, r2
	bne _08001DCA
	movs r3, #0x26
	ldrb r2, [r1, r3]
	ldr r3, _0800215C @ =0x00000194
	orrs r2, r2
	bne _08001DCA
	movs r3, #4
_08001DCA:
	strh r3, [r1, #8]
	ldrb r2, [r1, #0xf]
	movs r4, #1
	tst r2, r4
	bne _08001DEE
	ldrb r2, [r1, #3]
	orrs r2, r2
	bne _08001DEE
	movs r4, #0xff
	ands r3, r4
	ldrb r2, [r1]
	cmp r2, r3
	bne _08001DEE
	pop {r1}
	mov lr, r1
	ldrb r1, [r0, #0x1b]
	ldr r3, _08002160 @ =sub_080037EC
	bx r3
_08001DEE:
	strb r3, [r1]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001DF4
sub_08001DF4: @ 0x08001DF4
	push {lr}
	push {r1}
	ldr r2, _08002164 @ =0x03000BD0
	ldrh r2, [r2]
	ldr r3, _08002168 @ =0x00000101
	tst r2, r3
	beq _08001E7C
	movs r2, #0x27
	ldrb r2, [r1, r2]
	orrs r2, r2
	bne _08001E7C
	movs r2, #0x26
	ldrb r2, [r1, r2]
	orrs r2, r2
	bne _08001E7C
	movs r2, #0x36
	ldrh r2, [r1, r2]
	orrs r2, r2
	bne _08001E7C
	ldrb r2, [r1, #0x12]
	cmp r2, #4
	beq _08001E7C
	ldrb r2, [r1, #5]
	cmp r2, #3
	beq _08001E7C
	orrs r2, r2
	beq _08001E3A
	ldr r2, [r0, #0x6c]
	ldr r2, [r2, #0x58]
	ldrb r3, [r2, #8]
	cmp r3, #6
	bne _08001E7C
	ldrb r3, [r2, #9]
	cmp r3, #0x38
	bne _08001E7C
_08001E3A:
	ldr r4, _0800216C @ =0x03000840
_08001E3C:
	ldr r1, [r4]
	orrs r1, r1
	beq _08001E7C
	movs r7, #0x50
	ldrh r5, [r0, r7]
	ldrh r6, [r1, r7]
	ands r5, r6
	ldr r6, _08002170 @ =0x0000C000
	ands r5, r6
	beq _08001E74
	push {r2, r3, r4}
	ldr r3, [r0, #0x48]
	ldr r4, [r1, #0x48]
	ldrb r2, [r3, #6]
	ldrb r3, [r4, #6]
	adds r2, r2, r3
	ldr r3, [r0, #0x48]
	ldrb r3, [r3, #7]
	ldrb r4, [r4, #7]
	adds r3, r3, r4
	bl sub_08003634
	pop {r2, r3, r4}
	beq _08001E74
	movs r5, #0x47
	ldrb r5, [r1, r5]
	orrs r5, r5
	beq _08001E82
_08001E74:
	adds r4, #4
	ldr r1, _08002174 @ =0x03000940
	cmp r4, r1
	blo _08001E3C
_08001E7C:
	movs r2, #1
	pop {r1}
	pop {pc}
_08001E82:
	ldrb r3, [r0, #0xa]
	adds r3, #1
	movs r2, #0x47
	strb r3, [r1, r2]
	movs r2, #0x3d
	ldrb r3, [r0, r2]
	movs r2, #0xfc
	orrs r3, r3
	beq _08001EA4
	cmp r3, #0x80
	bhs _08001EA0
	movs r2, #4
	cmp r3, r2
	bhs _08001EA8
	b _08001EA4
_08001EA0:
	cmp r3, r2
	blo _08001EA8
_08001EA4:
	movs r3, #0x3d
	strb r2, [r1, r3]
_08001EA8:
	pop {r1}
	movs r2, #0x80
	strb r2, [r1, #6]
	movs r3, #0x27
	strb r2, [r1, r3]
	ldrb r2, [r1, #0xb]
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r1, #0xb]
	eors r2, r2
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001EC0
sub_08001EC0: @ 0x08001EC0
	push {lr}
	ldr r2, _08002178 @ =0x03006C80
	movs r3, #0x45
	ldrb r2, [r0, r3]
	orrs r2, r2
	bne _08001F34
	movs r3, #0x42
	strb r2, [r0, r3]
	bl sub_08001D5C
	movs r3, #7
	ldrb r2, [r1, r3]
	orrs r2, r2
	bne _08001F34
	movs r3, #0x26
	ldrb r2, [r1, r3]
	orrs r2, r2
	beq _08001EEE
	eors r2, r2
	strb r2, [r1, r3]
	bl sub_08002200
	b _08001F28
_08001EEE:
	ldr r2, [r0, #0x38]
	orrs r2, r2
	bne _08001F0E
	ldrb r2, [r1, #0x14]
	orrs r2, r2
	bne _08001F28
	ldrh r2, [r1, #0x36]
	ldr r3, _0800217C @ =0x00001000
	ands r2, r3
	bne _08001F28
	bl sub_08002334
	beq _08001F28
	bl sub_0800125C
	pop {pc}
_08001F0E:
	bl sub_08001D5C
	ldrb r2, [r1, #2]
	movs r3, #0xc0
	tst r2, r3
	bne _08001F34
	movs r2, #0x41
	strb r2, [r1, #2]
	movs r2, #0xff
	movs r3, #0x2b
	strb r2, [r0, r3]
	strb r2, [r1, #0xd]
	pop {pc}
_08001F28:
	movs r3, #0x3c
	ldrb r2, [r0, r3]
	movs r1, #0x7f
	ands r2, r1
	strb r2, [r0, r3]
	eors r2, r2
_08001F34:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001F38
sub_08001F38: @ 0x08001F38
	push {lr}
	bl sub_08001D5C
	ldrb r2, [r1, #0xd]
	cmp r2, #0xff
	beq _08001F5E
	lsls r2, r2, #4
	ldr r3, _08002180 @ =0x0813E4CC
	ldrsh r4, [r3, r2]
	adds r3, #0x80
	ldrsh r5, [r3, r2]
	rsbs r5, r5, #0
	movs r2, #0x8c
	strh r4, [r1, r2]
	movs r2, #0x8e
	strh r5, [r1, r2]
	pop {pc}
	.align 2, 0
_08001F5C:
	.byte 0x00, 0xB5
_08001F5E:
	bl sub_08001D5C
	eors r3, r3
	movs r2, #0x8c
	strh r3, [r1, r2]
	movs r2, #0x8e
	strh r3, [r1, r2]
_08001F6C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001F70
sub_08001F70: @ 0x08001F70
	push {lr}
	bl sub_08001D5C
	ldrb r2, [r1, #7]
	orrs r2, r2
	bne _08001F6C
	ldrb r2, [r1, #0xd]
	b _08001F86

	thumb_func_start sub_08001F80
sub_08001F80: @ 0x08001F80
	push {lr}
	bl sub_08001D5C
_08001F86:
	movs r3, #0x2b
	strb r2, [r0, r3]
	movs r3, #0x80
	tst r2, r3
	bne _08001FF8
	ldrb r3, [r1, #5]
	cmp r3, #2
	beq _08001F5E
	cmp r3, #1
	beq _08001F5E
	ldr r4, _08002184 @ =0x08001CF0
	ldrb r3, [r1, #2]
	adds r1, r2, #0
	orrs r3, r3
	beq _08001FC2
	push {r2}
	movs r3, #0x2a
	ldrb r1, [r0, r3]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	lsrs r2, r2, #2
	subs r2, r2, r1
	pop {r1}
	adds r2, #2
	movs r4, #7
	ands r2, r4
	ldr r4, _08002188 @ =0x08001CE0
	cmp r2, #4
	beq _08001FC2
	bhs _08001FE0
_08001FC2:
	adds r3, r1, #0
	lsrs r3, r3, #2
	lsls r3, r3, #1
	adds r4, r4, r3
	movs r3, #0
	ldrsb r2, [r4, r3]
	adds r3, #1
	ldrsb r3, [r4, r3]
	bl sub_08002060
	b _08001FF8
_08001FD8:
	.byte 0x00, 0x08, 0xF8, 0x00, 0x00, 0xF8, 0x08, 0x00
_08001FE0:
	movs r3, #0x2a
	ldrb r3, [r0, r3]
	lsrs r3, r3, #1
	lsls r3, r3, #1
	ldr r4, _0800218C @ =0x08001FD8
	adds r4, r4, r3
	movs r3, #0
	ldrsb r2, [r4, r3]
	adds r3, #1
	ldrsb r3, [r4, r3]
	bl sub_08002060
_08001FF8:
	bl sub_08001D5C
	movs r4, #0x8c
	movs r2, #8
	ldrsh r3, [r1, r4]
	orrs r3, r3
	beq _08002016
	bpl _0800200C
	movs r2, #0x18
	rsbs r3, r3, #0
_0800200C:
	push {r0, r1}
	adds r1, r3, #0
	bl sub_08003010
	pop {r0, r1}
_08002016:
	movs r4, #0x8e
	movs r2, #0x10
	ldrsh r3, [r1, r4]
	orrs r3, r3
	beq _08002030
	bpl _08002026
	movs r2, #0
	rsbs r3, r3, #0
_08002026:
	push {r0, r1}
	adds r1, r3, #0
	bl sub_08003010
	pop {r0, r1}
_08002030:
	ldrb r2, [r1, #2]
	orrs r2, r2
	bne _08002042
	movs r2, #0x8c
	bl sub_08002044
	movs r2, #0x8e
	bl sub_08002044
_08002042:
	pop {pc}

	thumb_func_start sub_08002044
sub_08002044: @ 0x08002044
	ldrsh r3, [r1, r2]
	movs r4, #3
	orrs r3, r3
	bmi _08002058
	subs r3, r3, r4
	bpl _08002054
	beq _08002054
_08002052:
	eors r3, r3
_08002054:
	strh r3, [r1, r2]
	mov pc, lr
_08002058:
	adds r3, r3, r4
	bmi _08002054
	beq _08002054
	b _08002052

	thumb_func_start sub_08002060
sub_08002060: @ 0x08002060
	push {lr}
	push {r2, r3}
	bl sub_08001D5C
	pop {r2, r3}
	movs r4, #0x8c
	ldrsh r5, [r1, r4]
	adds r5, r5, r2
	bl sub_08002088
	movs r4, #0x8e
	ldrsh r5, [r1, r4]
	adds r5, r5, r3
	bl sub_08002088
	pop {pc}
_08002080:
	.byte 0x5B, 0x40, 0x0B, 0x80, 0x00, 0xBD, 0x00, 0x00

	thumb_func_start sub_08002088
sub_08002088: @ 0x08002088
	orrs r5, r5
	bmi _08002094
	ldr r6, _08002190 @ =0x00000180
	cmp r5, r6
	blo _0800209C
	b _0800209A
_08002094:
	ldr r6, _08002194 @ =0xFFFFFE80
	cmp r5, r6
	bhs _0800209C
_0800209A:
	adds r5, r6, #0
_0800209C:
	strh r5, [r1, r4]
	mov pc, lr

	thumb_func_start sub_080020A0
sub_080020A0: @ 0x080020A0
	push {r4, r5, lr}
	bl sub_08001D5C
	ldrb r2, [r1, #0x12]
	cmp r2, #4
	beq _080020C6
	ldrb r2, [r1, #0xd]
	cmp r2, #0xff
	beq _080020C6
	lsls r2, r2, #4
	ldr r3, _08002198 @ =0x0813E4CC
	ldrsh r4, [r3, r2]
	adds r3, #0x80
	ldrsh r5, [r3, r2]
	rsbs r5, r5, #0
	movs r2, #0x8c
	strh r4, [r1, r2]
	movs r2, #0x8e
	strh r5, [r1, r2]
_080020C6:
	pop {r4, r5, pc}

	thumb_func_start sub_080020C8
sub_080020C8: @ 0x080020C8
	push {lr}
	bl sub_08001D5C
	ldr r3, _0800219C @ =0x0000024C
	ldrb r2, [r1, #5]
	orrs r2, r2
	bne _0800211C
	movs r3, #0x68
	ldrb r2, [r1, #0x1b]
	movs r4, #0x48
	tst r2, r4
	bne _08002142
	orrs r2, r2
	bne _0800211C
	ldr r3, _080021A0 @ =0x0000027C
	ldrb r2, [r1, #0xf]
	movs r4, #1
	tst r2, r4
	bne _0800211C
	ldr r3, _08002154 @ =0x0000019C
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _0800211C
	movs r3, #0x64
	ldrb r2, [r1, #3]
	orrs r2, r2
	bne _0800211C
	movs r3, #0x21
	ldrb r2, [r1, r3]
	ldr r3, _080021A4 @ =0x00000184
	orrs r2, r2
	bne _0800211C
	movs r3, #0x26
	ldrb r2, [r1, r3]
	ldr r3, _080021A8 @ =0x00000190
	orrs r2, r2
	bne _0800211C
	movs r3, #0xff
	ldrb r2, [r1, #4]
	orrs r2, r2
	bne _08002142
	movs r3, #0
_0800211C:
	strh r3, [r1, #8]
	ldrb r2, [r1, #0xf]
	movs r4, #1
	tst r2, r4
	bne _08002142
	ldrb r2, [r1, #5]
	orrs r2, r2
	bne _08002142
	movs r4, #0xff
	ands r3, r4
	ldrb r2, [r1]
	cmp r2, r3
	bne _08002142
	push {r1}
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	pop {r1}
	ldrb r3, [r1]
_08002142:
	strb r3, [r1]
	pop {pc}
	.align 2, 0
_08002148: .4byte 0x08000FF4
_0800214C: .4byte 0x0000023C
_08002150: .4byte 0x00000258
_08002154: .4byte 0x0000019C
_08002158: .4byte 0x00000188
_0800215C: .4byte 0x00000194
_08002160: .4byte sub_080037EC
_08002164: .4byte 0x03000BD0
_08002168: .4byte 0x00000101
_0800216C: .4byte 0x03000840
_08002170: .4byte 0x0000C000
_08002174: .4byte 0x03000940
_08002178: .4byte 0x03006C80
_0800217C: .4byte 0x00001000
_08002180: .4byte 0x0813E4CC
_08002184: .4byte 0x08001CF0
_08002188: .4byte 0x08001CE0
_0800218C: .4byte 0x08001FD8
_08002190: .4byte 0x00000180
_08002194: .4byte 0xFFFFFE80
_08002198: .4byte 0x0813E4CC
_0800219C: .4byte 0x0000024C
_080021A0: .4byte 0x0000027C
_080021A4: .4byte 0x00000184
_080021A8: .4byte 0x00000190
_080021AC:
	.byte 0x13, 0x12, 0x12, 0x10
	.byte 0x10, 0x11, 0x11, 0x13, 0x44, 0x00, 0x01, 0x00, 0x48, 0x00, 0x01, 0x00, 0x4C, 0x00, 0x01, 0x00
	.byte 0x50, 0x00, 0x01, 0x00, 0x54, 0x00, 0x01, 0x00, 0x58, 0x00, 0x01, 0x00, 0x5C, 0x00, 0x01, 0x00
	.byte 0x60, 0x00, 0x01, 0x00, 0x74, 0x00, 0x01, 0x00, 0x94, 0x00, 0x01, 0x00, 0xA0, 0x00, 0x01, 0x00
	.byte 0x98, 0x00, 0x01, 0x00, 0xA4, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB5, 0x01, 0x1C
	.byte 0x88, 0x6D, 0x00, 0xF0, 0xCB, 0xF8, 0x42, 0x6B, 0x0A, 0x32, 0x42, 0x63, 0x00, 0xBD, 0x00, 0x00

	thumb_func_start sub_08002200
sub_08002200: @ 0x08002200
	push {lr}
	bl sub_08001D5C
	adds r1, #0x40
	ldr r2, [r1]
	movs r4, #0x10
_0800220C:
	push {r1, r2}
	ldr r1, _080023F4 @ =0x7FFFFFFF
	cmp r1, r2
	beq _08002232
	adds r1, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r2, #0
	lsrs r3, r3, #0x10
	bl sub_080094B0
	cmp r1, #0xf
	bne _0800223E
	pop {r1, r2}
	subs r4, #1
	beq _08002232
	adds r1, #4
	ldr r2, [r1]
	b _0800220C
_08002232:
	push {r0}
	bl sub_0803F638
	pop {r0}
	pop {r1, r2}
	b _0800227C
_0800223E:
	pop {r1, r2}
	adds r1, r2, #0
	lsrs r1, r1, #0x10
	movs r4, #0x50
	ldrh r3, [r0, r4]
	lsls r3, r3, #0x12
	lsrs r3, r3, #0x12
	orrs r1, r3
	strh r1, [r0, r4]
	movs r3, #0x3f
	ands r3, r2
	lsls r3, r3, #4
	adds r3, #8
	strh r3, [r0, #0x32]
	ldr r3, _080023F8 @ =0x00000FC0
	ands r3, r2
	lsrs r3, r3, #2
	adds r3, #6
	strh r3, [r0, #0x36]
	ldrh r2, [r0, #0x32]
	ldr r3, _080023FC @ =0x03000468
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	str r2, [r0, #0x30]
	ldrh r2, [r0, #0x36]
	ldr r3, _08002400 @ =0x0300046A
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	str r2, [r0, #0x34]
_0800227C:
	movs r2, #0x3c
	ldrb r3, [r0, r2]
	movs r1, #0x80
	orrs r3, r1
	strb r3, [r0, r2]
	eors r2, r2
	str r2, [r0, #0x10]
	str r2, [r0, #0x38]
	bl sub_08008DD8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08002294
sub_08002294: @ 0x08002294
	push {r4, lr}
	bl sub_08001D5C
	movs r3, #0x34
	ldrb r2, [r1, r3]
	lsrs r2, r2, #1
	blo _080022A8
	ldr r3, [r0, #0xc]
	lsrs r3, r3, #1
	str r3, [r0, #0xc]
_080022A8:
	lsrs r2, r2, #1
	blo _080022B2
	ldr r3, [r0, #0xc]
	lsls r3, r3, #1
	str r3, [r0, #0xc]
_080022B2:
	movs r3, #0x2b
	ldrb r3, [r0, r3]
	movs r2, #4
	tst r3, r2
	bne _080022F4
	movs r2, #8
	tst r3, r2
	ldr r4, [r0, #0x48]
	bne _080022DC
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	orrs r3, r3
	bne _080022CE
	rsbs r2, r2, #0
_080022CE:
	bl sub_08002300
	beq _080022F4
	rsbs r1, r1, #0
	bl sub_08002300
	b _080022F4
_080022DC:
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #3]
	movs r4, #0x10
	tst r3, r4
	beq _080022E8
	rsbs r1, r1, #0
_080022E8:
	bl sub_08002300
	beq _080022F4
	rsbs r2, r2, #0
	bl sub_08002300
_080022F4:
	push {r0}
	bl sub_080017FC
	pop {r0}
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08002300
sub_08002300: @ 0x08002300
	push {r1, r2, r3, lr}
	push {r3}
	bl sub_08009484
	pop {r3}
	ldr r4, _08002404 @ =0x080021AC
	lsrs r3, r3, #2
	adds r4, r4, r3
	movs r3, #4
	ldrb r2, [r4]
	cmp r1, r2
	beq _08002322
	rsbs r3, r3, #0
	ldrb r2, [r4, #1]
	cmp r1, r2
	beq _08002322
	pop {r1, r2, r3, pc}
_08002322:
	movs r1, #0x2b
	ldrb r2, [r0, r1]
	adds r2, r2, r3
	movs r3, #0x1f
	ands r2, r3
	strb r2, [r0, r1]
	eors r1, r1
	pop {r1, r2, r3, pc}
	.align 2, 0

	thumb_func_start sub_08002334
sub_08002334: @ 0x08002334
	push {r0, r1, lr}
	bl sub_08002350
	bne _0800234A
	adds r0, r3, #0
	ldr r1, _08002408 @ =0x080021B4
	bl sub_080012D8
	bne _0800234A
	eors r2, r2
	pop {r0, r1, pc}
_0800234A:
	movs r2, #1
	pop {r0, r1, pc}
	.align 2, 0

	thumb_func_start sub_08002350
sub_08002350: @ 0x08002350
	push {lr}
	push {r0, r1}
	movs r1, #0
	movs r2, #3
	bl sub_08009444
	adds r0, r1, #0
	ldr r1, _0800240C @ =0x00004000
	tst r0, r1
	bne _08002384
	ldr r1, _08002410 @ =0x08001010
	bl sub_080012D8
	cmp r3, #4
	bne _08002384
	pop {r0, r1}
	push {r0, r1}
	ldrh r2, [r1, #0x24]
	ldr r1, _08002414 @ =0x00000176
	subs r2, r2, r1
	ldrb r1, [r0, #0xa]
	cmp r2, r1
	beq _08002384
	movs r2, #1
	pop {r0, r1}
	pop {pc}
_08002384:
	eors r2, r2
	pop {r0, r1}
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0800238C
sub_0800238C: @ 0x0800238C
	push {r4}
	ldr r2, [r1, #0x30]
	str r2, [r0, #0x30]
	ldr r2, [r1, #0x34]
	str r2, [r0, #0x34]
	ldr r2, [r1, #0x38]
	str r2, [r0, #0x38]
	movs r3, #0x50
	ldrh r2, [r1, r3]
	strh r2, [r0, r3]
	ldr r2, [r1, #0x1c]
	ldr r3, _08002418 @ =0xC000C000
	ands r2, r3
	ldr r4, [r0, #0x1c]
	ldr r3, _0800241C @ =0x3FFF3FFF
	ands r4, r3
	orrs r4, r2
	str r4, [r0, #0x1c]
	movs r4, #0x5e
	ldrb r2, [r1, r4]
	movs r3, #3
	ands r2, r3
	ldrb r3, [r0, r4]
	lsrs r3, r3, #2
	lsls r3, r3, #2
	orrs r2, r3
	strb r2, [r0, r4]
	pop {r4}
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080023C8
sub_080023C8: @ 0x080023C8
	push {lr}
	ldrb r2, [r0, #0x14]
	cmp r2, #1
	bne _080023F2
	bl sub_08001D5C
	ldr r2, _08002420 @ =0x000001A0
	strh r2, [r1, #0x38]
	movs r2, #0x3c
	movs r3, #0x3a
	strb r2, [r1, r3]
	movs r2, #0xe
	movs r3, #0xc
	strb r2, [r1, r3]
	ldr r0, [r1, #0x28]
	movs r2, #0x5c
	movs r3, #0x3d
	strb r2, [r0, r3]
	movs r2, #0x99
	bl sub_080031B8
_080023F2:
	pop {pc}
	.align 2, 0
_080023F4: .4byte 0x7FFFFFFF
_080023F8: .4byte 0x00000FC0
_080023FC: .4byte 0x03000468
_08002400: .4byte 0x0300046A
_08002404: .4byte 0x080021AC
_08002408: .4byte 0x080021B4
_0800240C: .4byte 0x00004000
_08002410: .4byte 0x08001010
_08002414: .4byte 0x00000176
_08002418: .4byte 0xC000C000
_0800241C: .4byte 0x3FFF3FFF
_08002420: .4byte 0x000001A0
_08002424:

	.INCBIN "baserom.gba", 0x2424, 0x2E70-0x2424

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

    .INCBIN "baserom.gba", 0x3228, 0x3594-0x3228

	thumb_func_start sub_08003594
sub_08003594: @ 0x08003594
	adds r0, #0x10
	ldr r2, [r0, #0x28]
	ldr r3, [r0]
	subs r2, r2, r3
	str r2, [r0, #0x28]
	lsls r2, r2, #1
	blo _080035AA
	subs r3, r3, r1
	str r3, [r0]
	ldr r0, [r0, #0x28]
	mov pc, lr
_080035AA:
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #0x28]
	adds r0, r1, #0
	mov pc, lr

	thumb_func_start sub_080035B4
sub_080035B4: @ 0x080035B4
	push {lr}
	bl sub_080035C4
	beq _080035C0
	bl sub_08003646
_080035C0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080035C4
sub_080035C4: @ 0x080035C4
	push {r4, r5, r6, r7, lr}
	ldr r4, [r1, #0x48]
	ldrb r5, [r4, #6]
	ldrb r6, [r4, #7]
	adds r2, r2, r5
	adds r3, r3, r6
	ldrh r5, [r1, #0x32]
	movs r7, #0
	ldrsb r7, [r4, r7]
	ldrb r6, [r1, #0x1c]
	lsrs r6, r6, #3
	blo _080035DE
	rsbs r7, r7, #0
_080035DE:
	adds r5, r5, r7
	ldrh r6, [r1, #0x36]
	movs r7, #1
	ldrsb r7, [r4, r7]
	adds r6, r6, r7
	push {r5, r6}
	movs r4, #0x50
	ldrh r7, [r0, r4]
	ldrh r4, [r1, r4]
	ands r7, r4
	ldr r4, _080039DC @ =0x0000C000
	tst r7, r4
	beq _0800361C
	orrs r2, r2
	beq _08003608
	ldrh r4, [r0, #0x32]
	subs r4, r4, r5
	adds r4, r4, r2
	lsls r2, r2, #1
	cmp r2, r4
	blo _0800361C
_08003608:
	orrs r3, r3
	beq _08003618
	ldrh r4, [r0, #0x36]
	subs r4, r4, r6
	adds r4, r4, r3
	lsls r3, r3, #1
	cmp r3, r4
	blo _0800361C
_08003618:
	movs r5, #1
	b _0800361E
_0800361C:
	eors r5, r5
_0800361E:
	pop {r2, r3}
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08003624
sub_08003624: @ 0x08003624
	push {lr}
	bl sub_08003634
	beq _08003630
	movs r0, #1
	pop {pc}
_08003630:
	movs r0, #0
	pop {pc}

	thumb_func_start sub_08003634
sub_08003634: @ 0x08003634
	push {lr}
	push {r2, r3}
	bl sub_08003920
	beq _08003642
	bl sub_08003660
_08003642:
	pop {r2, r3}
	pop {pc}

	.global sub_08003646
sub_08003646: @ 0x08003646
	movs r0, r0
	thumb_func_start sub_08003648
sub_08003648: @ 0x08003648
	push {lr}
	push {r0, r1}
	ldrh r1, [r0, #0x36]
	ldrh r0, [r0, #0x32]
	bl sub_08003F54
	adds r1, r0, #0
	bl sub_080039D4
	adds r2, r1, #0
	pop {r0, r1}
	b _08003674

	thumb_func_start sub_08003660
sub_08003660: @ 0x08003660
	push {lr}
	push {r0, r1}
	bl sub_08003F4C
	adds r1, r0, #0
	bl sub_080039D4
	adds r2, r1, #0
	pop {r0, r1}
	movs r0, r0
_08003674:
	movs r3, #0x2a
	ldrb r3, [r0, r3]
	lsrs r3, r3, #1
	cmp r3, r2
	beq _08003682
	eors r3, r3
	b _08003684
_08003682:
	adds r3, #1
_08003684:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08003688
sub_08003688: @ 0x08003688
	push {r5, lr}
	ldr r1, _080039E0 @ =0x0201EF20
	ldrb r5, [r1]
	movs r2, #0
	strb r2, [r1]
	ldrb r1, [r0, #0x1c]
	movs r2, #3
	tst r1, r2
	beq _080036F6
	ldr r1, _080039E4 @ =0x03000948
	ldrb r2, [r1, #5]
	orrs r2, r2
	bne _080036C6
	ldrb r2, [r1, #4]
	orrs r2, r2
	beq _080036BE
	ldrb r1, [r0, #0x1f]
	lsrs r1, r1, #1
	bhs _080036BE
	ldrb r1, [r0, #8]
	cmp r1, #1
	bne _080036F6
	ldr r1, _080039E8 @ =0x03000414
	ldrb r2, [r1]
	ldrb r1, [r0, #0xa]
	cmp r1, r2
	bne _080036F6
_080036BE:
	bl sub_08003704
	cmp r1, #0
	beq _080036F6
_080036C6:
	ldrb r1, [r0, #0x1d]
	lsrs r1, r1, #4
	movs r2, #0xc
	ands r1, r2
	ldr r2, _080039EC @ =0x08003508
	ldr r1, [r2, r1]
	ldrb r2, [r1]
	cmp r2, #0x80
	bhs _080036E0
	adds r2, #1
	strb r2, [r1]
	lsls r2, r2, #2
	str r0, [r1, r2]
_080036E0:
	cmp r5, #0
	beq _080036F6
	push {r0, r4}
	ldr r4, _080039F0 @ =0x0201EDD0
_080036E8:
	ldrh r1, [r4]
	bl sub_0800D1C0
	adds r4, #2
	subs r5, #1
	bne _080036E8
	pop {r0, r4}
_080036F6:
	pop {r5, pc}

	thumb_func_start sub_080036F8
sub_080036F8: @ 0x080036F8
	push {lr}
	bl sub_08003714
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08003704
sub_08003704: @ 0x08003704
	movs r2, #0x21
	ldrb r1, [r0, r2]
	cmp r1, #0xff
	beq _08003742
	ldr r1, [r0, #0x1c]
	lsrs r1, r1, #2
	bhs _0800373E
	movs r0, r0

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
_0800373E:
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
	bl GetNextFrame
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

	thumb_func_start GetNextFrame	@ r0 = Entity* this
GetNextFrame: @ 0x08003828
	movs r1, #0x28
	ldrb r2, [r0, r1]			@ Load frame timer
	subs r2, #1
	strb r2, [r0, r1]
	beq FrameNeedsUpdate				@ Continue if frame expired
	mov pc, lr

	thumb_func_start Advance4Frames	@ r0 = Entity* this
Advance4Frames: @ 0x08003834
	movs r1, #0x28
	ldrb r2, [r0, r1]
	subs r2, #4
	strb r2, [r0, r1]
	blo FrameNeedsUpdate
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

	thumb_func_start sub_08003870	@ r0, r1
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

FrameNeedsUpdate:
	movs r2, #0x21		@ Get this frame idx
	ldrb r1, [r0, r2]
	movs r3, #0x22
	strb r1, [r0, r3]	@ Store as prev frame idx

	ldr r1, [r0, #0x24]	@ Load frame data

	ldrb r3, [r1]		@ Set new frame idx
	strb r3, [r0, r2]

	ldrb r3, [r1, #1]	@ Set new frame timer
	movs r2, #0x28
	strb r3, [r0, r2]

	ldrb r3, [r1, #2]	@ Load something ??
	movs r2, #0x2f
	strb r3, [r0, r2]

	ldrb r3, [r1, #3]	@ Load something ??
	movs r2, #0x29
	strb r3, [r0, r2]

	adds r1, #4			@ advance r1
	movs r2, #0x80
	tst r2, r3			@ Maybe testing if we should flip the sprite?
	beq _080038B2
	eors r2, r2			@ huh??
	ldrsh r3, [r1, r2]
	subs r1, r1, r3

_080038B2:
	str r1, [r0, #0x24]	@ Store result and be done
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
_080039E0: .4byte 0x0201EF20
_080039E4: .4byte 0x03000948
_080039E8: .4byte 0x03000414
_080039EC: .4byte 0x08003508
_080039F0: .4byte 0x0201EDD0
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

	.INCBIN "baserom.gba", 0x4244, 0x45FC-0x4244

	thumb_func_start DoPlayerItemEntity
DoPlayerItemEntity: @ 0x080045FC
	mov r3, lr
	push {r3, r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	ldrb r1, [r0, #0x14]
	orrs r1, r1
	beq _08004618
	ldr r1, _0800469C @ =0x03000C00
	ldrb r1, [r1]
	orrs r1, r1
	bne _08004632
_08004618:
	push {r0}
	bl sub_0803E048
	pop {r0}
	bl sub_080015A8
	ldr r2, _080046A0 @ =0x08004244
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, _080046A4 @ =0x08004633
	mov lr, r2
	bx r1
_08004632:
	bl sub_08001D5C
	movs r2, #0x36
	ldrh r2, [r1, r2]
	ldr r3, _080046A8 @ =0x00001000
	tst r2, r3
	bne _08004656
	ldr r2, [r0, #0x38]
	orrs r2, r2
	bne _08004656
	ldrb r1, [r0, #0x14]
	cmp r1, #1
	beq _08004650
	cmp r1, #9
	bne _08004656
_08004650:
	movs r1, #8
	bl sub_08001B68
_08004656:
	bl sub_080013FC
	bl sub_08001D5C
	push {r0}
	bl sub_080156BC
	pop {r0}
	bl sub_08003688
	pop {r4, r5, r6, r7}
	mov r8, r4
	mov sb, r5
	mov sl, r6
	mov fp, r7
	pop {r3, r4, r5, r6, r7}
	bx r3
_08004678:
	.byte 0x5C, 0x01, 0x00, 0x00, 0xA0, 0x42, 0x00, 0x08
	.byte 0x40, 0x01, 0x00, 0x00, 0x98, 0x42, 0x00, 0x08, 0x33, 0x01, 0x00, 0x00, 0xD0, 0x0B, 0x00, 0x03
	.byte 0x80, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
_0800469C: .4byte 0x03000C00
_080046A0: .4byte 0x08004244
_080046A4: .4byte 0x08004633
_080046A8: .4byte 0x00001000

	.INCBIN "baserom.gba", 0x46AC, 0x74C0-0x46AC

	thumb_func_start sub_080074C0
sub_080074C0: @ 0x080074C0
	push {lr}
	mov r2, sb
	mov r3, sl
	push {r2, r3}
	bl sub_080076C4
	pop {r2, r3}
	mov sb, r2
	mov sl, r3
	pop {pc}

	thumb_func_start sub_080074D4
sub_080074D4: @ 0x080074D4
	push {lr}
	mov r1, sb
	adds r1, #1
	movs r2, #4
	ands r1, r2
	bne _0800750A
	push {r0}
	ldrb r0, [r0, #1]
	movs r1, #2
	bl sub_080127A8
_080074EA:
	adds r2, r0, #0
	subs r0, #1
	pop {r0}
	bmi _0800750A
	mov r1, sl
	ldr r1, [r1, #0x28]
	ldrb r1, [r1, #0xa]
	ldrb r3, [r2, #0xa]
	cmp r1, r3
	beq _0800750A
	push {r0}
	adds r0, r2, #0
	movs r1, #2
	bl sub_080127D4
	b _080074EA
_0800750A:
	pop {pc}

	thumb_func_start sub_0800750C
sub_0800750C: @ 0x0800750C
	push {lr}
	movs r0, r0
	mov r1, sl
	bl sub_080075AC
	bl sub_080075DC
	bl sub_08007608
	eors r2, r2
	adds r3, r0, #0
	movs r1, #0x1c
_08007524:
	strb r2, [r3]
	adds r3, #1
	subs r1, #1
	bne _08007524
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007530
sub_08007530: @ 0x08007530
	push {r7, lr}
	push {r0}
	adds r7, r1, #0
	adds r0, r1, #0
	movs r1, #2
	bl sub_080127A8
_0800753E:
	adds r2, r0, #0
	orrs r0, r0
	pop {r0}
	beq _0800755A
	ldrb r1, [r0, #0xa]
	ldrb r3, [r2, #0xa]
	cmp r1, r3
	beq _0800758C
	push {r0}
	adds r0, r2, #0
	movs r1, #2
	bl sub_080127D4
	b _0800753E
_0800755A:
	push {r0}
	bl sub_080123E8
	adds r1, r0, #0
	pop {r0}
	beq _0800758C
	push {r0, r1}
	movs r0, #2
	bl sub_08012728
	pop {r0, r1}
	strb r7, [r1, #9]
	movs r3, #8
	strb r3, [r1, #8]
	movs r2, #0x80
	strb r2, [r1, #0x19]
	str r0, [r1, #0x54]
	ldrb r2, [r0, #0xa]
	strb r2, [r1, #0xa]
	push {r1}
	adds r0, r1, #0
	bl sub_08000620
	pop {r0}
	pop {r7, pc}
_0800758C:
	eors r0, r0
	pop {r7, pc}
_08007590:
	.byte 0x00, 0xBD, 0x00, 0x00

	thumb_func_start sub_08007594
sub_08007594: @ 0x08007594
	push {lr}
	bl sub_080077C8
	adds r3, r2, #0
	lsls r2, r2, #4
	orrs r2, r3
	mov r3, sl
	ldrb r3, [r3, #4]
	orrs r2, r3
	mov r3, sl
	strb r2, [r3, #4]
	pop {pc}

	thumb_func_start sub_080075AC
sub_080075AC: @ 0x080075AC
	push {lr}
	bl sub_080077C8
	adds r3, r2, #0
	lsls r2, r2, #4
	orrs r2, r3
	movs r3, #0xff
	eors r2, r3
	mov r3, sl
	ldrb r3, [r3, #4]
	ands r2, r3
	mov r3, sl
	strb r2, [r3, #4]
	pop {pc}

	thumb_func_start sub_080075C8
sub_080075C8: @ 0x080075C8
	push {lr}
	bl sub_080077C8
	mov r3, sl
	ldrb r3, [r3, #0xa]
	orrs r2, r3
	mov r3, sl
	strb r2, [r3, #0xa]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080075DC
sub_080075DC: @ 0x080075DC
	push {lr}
	bl sub_080077C8
	movs r3, #0xff
	eors r2, r3
	mov r3, sl
	ldrb r3, [r3, #0xa]
	ands r2, r3
	mov r3, sl
	strb r2, [r3, #0xa]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080075F4
sub_080075F4: @ 0x080075F4
	push {lr}
	bl sub_080077C8
	mov r3, sl
	ldrb r3, [r3, #0xb]
	orrs r2, r3
	mov r3, sl
	strb r2, [r3, #0xb]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007608
sub_08007608: @ 0x08007608
	push {lr}
	bl sub_080077C8
	movs r3, #0xff
	eors r2, r3
	mov r3, sl
	ldrb r3, [r3, #0xb]
	ands r2, r3
	mov r3, sl
	strb r2, [r3, #0xb]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007620
sub_08007620: @ 0x08007620
	push {lr}
	mov r1, sl
	ldr r1, [r1, #0x2c]
	orrs r1, r1
	beq _08007632
	ldrb r2, [r1, #9]
	cmp r2, #1
	bne _08007664
	pop {pc}
_08007632:
	b _08007688

	thumb_func_start sub_08007634
sub_08007634: @ 0x08007634
	push {lr}
	b _0800764C

	thumb_func_start sub_08007638
sub_08007638: @ 0x08007638
	push {lr}
	mov r1, sl
	ldr r1, [r1, #0x2c]
	orrs r1, r1
	bne _08007664
	pop {r2}
	push {lr}
	bl sub_080074D4
	beq _08007686
_0800764C:
	push {r0}
	bl sub_080123E8
	eors r2, r2
	adds r1, r0, #0
	pop {r0}
	beq _08007686
	push {r0, r1}
	movs r0, #2
	bl sub_08012728
	pop {r0, r1}
_08007664:
	ldrb r2, [r0, #1]
	strb r2, [r1, #9]
	movs r2, #8
	strb r2, [r1, #8]
	movs r2, #0x80
	strb r2, [r1, #0x19]
	str r0, [r1, #0x54]
	mov r2, sl
	ldr r2, [r2, #0x28]
	ldrb r2, [r2, #0xa]
	strb r2, [r1, #0xa]
	push {r0, r1}
	adds r0, r1, #0
	bl sub_08000620
	pop {r0, r1}
	movs r2, #1
_08007686:
	pop {pc}
_08007688:
	push {r0}
	bl sub_08012440
	eors r2, r2
	adds r1, r0, #0
	pop {r0}
	beq _080076C2
	push {r0, r1}
	movs r0, #2
	bl sub_08012728
	pop {r0, r1}
	ldrb r2, [r0, #1]
	strb r2, [r1, #9]
	movs r2, #8
	strb r2, [r1, #8]
	movs r2, #0x80
	strb r2, [r1, #0x19]
	str r0, [r1, #0x54]
	mov r2, sl
	ldr r2, [r2, #0x28]
	ldrb r2, [r2, #0xa]
	strb r2, [r1, #0xa]
	push {r0, r1}
	adds r0, r1, #0
	bl sub_08000620
	pop {r0, r1}
	movs r2, #1
_080076C2:
	pop {pc}

	thumb_func_start sub_080076C4
sub_080076C4: @ 0x080076C4
	push {lr}
	mov r2, sb
	mov r3, sl
	push {r0, r1, r2, r3}
	ldr r1, _080079E8 @ =0x08000FF4
	ldrb r2, [r0, #0xa]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	mov sl, r1
	ldr r1, _080079EC @ =0x080071A8
	ldrb r2, [r0, #0xa]
	lsls r2, r2, #2
	ldr r0, [r1, r2]
	movs r1, #4
_080076E0:
	push {r1}
	subs r1, #1
	mov sb, r1
	bl sub_0800750C
	pop {r1}
	adds r0, #0x1c
	subs r1, #1
	bne _080076E0
	mov r1, sl
	ldrb r2, [r1, #0xf]
	movs r3, #2
	ands r2, r3
	strb r2, [r1, #0xf]
	eors r2, r2
	strb r2, [r1, #3]
	strb r2, [r1, #0x1b]
	strb r2, [r1, #0x1e]
	strb r2, [r1, #0xe]
	strb r2, [r1, #1]
	movs r3, #0x3d
	strb r2, [r1, r3]
	movs r3, #0x21
	strb r2, [r1, r3]
	strb r2, [r1, #5]
	strb r2, [r1, #0x1e]
	strb r2, [r1, #4]
	strb r2, [r1, #0xa]
	strb r2, [r1, #0xb]
	str r2, [r1, #0x2c]
	ldrh r2, [r1, #0x36]
	ldr r3, _080079F0 @ =0x0000FF7F
	ands r3, r2
	strh r3, [r1, #0x36]
	pop {r0, r1, r2, r3}
	mov sb, r2
	mov sl, r3
	pop {pc}

	thumb_func_start sub_0800772C
sub_0800772C: @ 0x0800772C
	push {lr}
	push {r0, r1}
	mov r1, sl
	ldr r0, [r1, #0x28]
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	pop {r0, r1}
	b _08007764
	.align 2, 0

	thumb_func_start sub_08007740
sub_08007740: @ 0x08007740
	push {lr}
	strh r3, [r0, #0x10]
	movs r2, #0xa4
	cmp r3, r2
	bhs _08007750
	ldrb r2, [r0, #0xa]
	lsrs r2, r2, #1
	adds r3, r3, r2
_08007750:
	strb r3, [r0, #0xc]
	push {r0, r1}
	ldrb r1, [r0, #0xc]
	ldrb r2, [r0, #0x11]
	mov r3, sl
	ldr r0, [r3, #0x28]
	strb r2, [r0, #0x1b]
	bl sub_08003840
	pop {r0, r1}
_08007764:
	mov r3, sl
	ldr r2, [r3, #0x28]
	movs r4, #0x21
	ldrb r3, [r2, r4]
	strb r3, [r0, #0x12]
	movs r4, #0x28
	ldrb r3, [r2, r4]
	strb r3, [r0, #0xd]
	movs r4, #0x29
	ldrb r3, [r2, r4]
	strb r3, [r0, #0xe]
	pop {pc}

	thumb_func_start sub_0800777C
sub_0800777C: @ 0x0800777C
	mov r1, sl
	movs r0, r0

	thumb_func_start sub_08007780
sub_08007780: @ 0x08007780
	ldr r1, [r1, #0x28]
	movs r3, #0x2a
	ldrb r2, [r1, r3]
	lsrs r2, r2, #1
	lsls r2, r2, #2
	ldr r3, _080079F4 @ =0x080074AC
	adds r2, r2, r3
	ldrh r3, [r2]
	ldrh r4, [r1, #0x2c]
	ands r4, r3
	cmp r3, r4
	bne _080077AE
	adds r2, #2
	eors r4, r4
	ldrsb r4, [r2, r4]
	ldrh r3, [r1, #0x36]
	adds r3, r3, r4
	movs r4, #1
	ldrsb r4, [r2, r4]
	ldrh r1, [r1, #0x32]
	adds r1, r1, r4
	adds r2, r3, #0
	eors r4, r4
_080077AE:
	mov pc, lr

	thumb_func_start sub_080077B0
sub_080077B0: @ 0x080077B0
	ldrb r2, [r0, #3]
	ldr r3, _080079F8 @ =0x03000BD0
	ldrb r3, [r3]
	ands r3, r2
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080077BC
sub_080077BC: @ 0x080077BC
	ldrb r2, [r0, #3]
	movs r0, r0
	ldr r3, _080079FC @ =0x03000510
	ldrb r3, [r3]
	ands r3, r2
	mov pc, lr

	thumb_func_start sub_080077C8
sub_080077C8: @ 0x080077C8
	ldr r2, _08007A00 @ =0x080074BC
	mov r3, sb
	ldrb r2, [r2, r3]
	mov pc, lr

	thumb_func_start sub_080077D0
sub_080077D0: @ 0x080077D0
	ldr r1, _08007A04 @ =0x03000838
	ldrb r3, [r1]
	movs r2, #0x80
	cmp r3, r2
	bhs _080077E6
	adds r2, r3, #1
	strb r2, [r1]
	lsls r3, r3, #2
	ldr r2, _08007A08 @ =0x03006830
	adds r3, r3, r2
	str r0, [r3]
_080077E6:
	mov pc, lr

	thumb_func_start sub_080077E8
sub_080077E8: @ 0x080077E8
	push {r0, r1, r2, r4, lr}
	adds r0, r1, #0
	adds r1, r2, #0
	movs r4, #0x2a
	ldrb r4, [r0, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _08007A0C @ =0x0800749C
	ldrb r2, [r3, r4]
	adds r4, #1
	ldrb r3, [r3, r4]
	bl sub_080035B4
	pop {r0, r1, r2, r4, pc}

	thumb_func_start sub_08007804
sub_08007804: @ 0x08007804
	push {r0, r4, lr}
	adds r0, r1, #0
	ldr r1, _08007A10 @ =0x03000838
	ldrb r3, [r1]
	ldr r2, _08007A14 @ =0x03006830
_0800780E:
	orrs r3, r3
	beq _0800783E
	ldr r1, [r2]
	orrs r1, r1
	beq _08007832
	push {r0, r1, r2, r3}
	movs r4, #0x2a
	ldrb r4, [r0, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _08007A18 @ =0x0800749C
	ldrb r2, [r3, r4]
	adds r4, #1
	ldrb r3, [r3, r4]
	bl sub_080035B4
	pop {r0, r1, r2, r3}
	bne _08007838
_08007832:
	adds r2, #4
	subs r3, #1
	b _0800780E
_08007838:
	eors r3, r3
	ldr r3, [r2]
	movs r0, #1
_0800783E:
	pop {r0, r4, pc}

	thumb_func_start sub_08007840
sub_08007840: @ 0x08007840
	push {lr}
	push {r0}
	adds r0, r1, #0
	movs r4, #0x2a
	ldrb r4, [r1, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _08007A1C @ =0x0800749C
	ldrb r1, [r3, r4]
	adds r4, #1
	ldrb r2, [r3, r4]
	bl sub_080078EC
	pop {r0}
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007860
sub_08007860: @ 0x08007860
	push {lr}
	push {r0}
	adds r0, r1, #0
	movs r4, #0x2a
	ldrb r4, [r1, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _08007A20 @ =0x080074A4
	ldrb r1, [r3, r4]
	adds r4, #1
	ldrb r2, [r3, r4]
	bl sub_080078EC
	pop {r0}
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007880
sub_08007880: @ 0x08007880
	push {lr}
	ldr r3, [r1, #0x28]
	ldrb r4, [r3, #0x14]
	cmp r4, #1
	bne _08007892
	movs r4, #0x26
	ldrb r4, [r1, r4]
	orrs r4, r4
	beq _08007896
_08007892:
	eors r4, r4
	b _080078AC
_08007896:
	adds r1, r3, #0
	movs r4, #0x2a
	ldrb r4, [r0, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _08007A24 @ =0x080074A4
	ldrb r2, [r3, r4]
	adds r4, #1
	ldrb r3, [r3, r4]
	bl sub_08003634
_080078AC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080078B0
sub_080078B0: @ 0x080078B0
	push {lr}
	bl sub_080075C8
	bl sub_080075F4
	mov r1, sl
	ldr r2, [r1, #0x28]
	ldrh r3, [r2, #0x2a]
	strh r3, [r0, #0xa]
	movs r2, #1
	strb r2, [r0, #4]
	ldrb r2, [r0, #1]
	ldr r3, _08007A28 @ =0x08007458
	lsls r2, r2, #2
	adds r2, r2, r3
	ldrh r3, [r2]
	push {r2}
	bl sub_08007740
	pop {r2}
	ldrb r1, [r2, #2]
	movs r3, #0xf
	ands r3, r1
	strb r3, [r0, #0xf]
	movs r3, #0x80
	ands r3, r1
	beq _080078EA
	bl sub_08007594
_080078EA:
	pop {pc}

	thumb_func_start sub_080078EC
sub_080078EC: @ 0x080078EC
	movs r3, #3
	movs r0, r0
	push {lr}
	push {r4, r5, r6}
	adds r4, r3, #0
	adds r3, r2, #0
	adds r2, r1, #0
_080078FA:
	push {r2}
	adds r2, r4, #0
	bl sub_08001D60
	pop {r2}
	ldrb r5, [r1, #2]
	ldrb r6, [r1, #5]
	orrs r5, r6
	ldrb r6, [r1, #7]
	orrs r5, r6
	bne _08007954
	movs r5, #0x27
	ldrb r5, [r1, r5]
	movs r6, #0x26
	ldrb r6, [r1, r6]
	orrs r5, r6
	bne _08007954
	ldrh r5, [r1, #0x36]
	ldr r6, _08007A2C @ =0x00001291
	ands r5, r6
	bne _08007954
	ldr r1, [r1, #0x28]
	orrs r1, r1
	beq _08007954
	cmp r0, r1
	beq _08007954
	ldrb r5, [r1, #0x14]
	cmp r5, #0xb
	beq _0800794E
	subs r5, #1
	bne _08007954
	movs r5, #0x3d
	ldrb r5, [r1, r5]
	orrs r5, r5
	bne _08007954
	movs r6, #0x50
	ldrh r5, [r0, r6]
	ldrh r6, [r1, r6]
	lsrs r5, r5, #0xe
	lsrs r6, r6, #0xe
	ands r5, r6
	beq _08007954
_0800794E:
	bl sub_08003634
	bne _0800795E
_08007954:
	subs r4, #1
	bpl _080078FA
	push {r4}
	eors r4, r4
	b _08007962
_0800795E:
	push {r4}
	movs r4, #1
_08007962:
	pop {r3}
	pop {r4, r5, r6}
	pop {pc}

	thumb_func_start sub_08007968
sub_08007968: @ 0x08007968
	push {r0, r4, lr}
	mov r1, sl
	ldr r1, [r1, #0x28]
	push {r1}
	movs r0, #4
	movs r1, #2
	bl sub_080127A8
_08007978:
	adds r1, r0, #0
	orrs r0, r0
	pop {r0}
	beq _080079B6
	ldrb r4, [r1, #0x14]
	subs r4, #1
	bne _080079AA
	movs r4, #0x64
	ldrh r4, [r1, r4]
	orrs r4, r4
	bne _080079AA
	ldrb r4, [r1, #0x1a]
	cmp r4, #6
	beq _080079AA
	movs r4, #0x2a
	ldrb r4, [r0, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _08007A30 @ =0x0800749C
	ldrb r2, [r3, r4]
	adds r4, #1
	ldrb r3, [r3, r4]
	bl sub_08003920
	bne _080079B6
_080079AA:
	push {r0}
	adds r0, r1, #0
	movs r1, #2
	bl sub_080127D4
	b _08007978
_080079B6:
	pop {r0, r4, pc}

	thumb_func_start sub_080079B8
sub_080079B8: @ 0x080079B8
	mov r1, sl
	ldrb r2, [r1, #2]
	orrs r2, r2
	bne _080079C6
	ldrh r2, [r1, #0x36]
	ldr r3, _08007A34 @ =0x00001201
	ands r2, r3
_080079C6:
	mov pc, lr

	thumb_func_start sub_080079C8
sub_080079C8: @ 0x080079C8
	push {lr}
	mov r1, sl
	ldrb r2, [r1, #0x1b]
	movs r3, #8
	tst r2, r3
	beq _080079E6
	movs r3, #0x70
	bl sub_08007740
	movs r2, #0x28
	strb r2, [r0, #7]
	movs r2, #7
	strb r2, [r0, #4]
	movs r2, #6
	strb r2, [r0, #0xf]
_080079E6:
	pop {pc}
	.align 2, 0
_080079E8: .4byte 0x08000FF4
_080079EC: .4byte 0x080071A8
_080079F0: .4byte 0x0000FF7F
_080079F4: .4byte 0x080074AC
_080079F8: .4byte 0x03000BD0
_080079FC: .4byte 0x03000510
_08007A00: .4byte 0x080074BC
_08007A04: .4byte 0x03000838
_08007A08: .4byte 0x03006830
_08007A0C: .4byte 0x0800749C
_08007A10: .4byte 0x03000838
_08007A14: .4byte 0x03006830
_08007A18: .4byte 0x0800749C
_08007A1C: .4byte 0x0800749C
_08007A20: .4byte 0x080074A4
_08007A24: .4byte 0x080074A4
_08007A28: .4byte 0x08007458
_08007A2C: .4byte 0x00001291
_08007A30: .4byte 0x0800749C
_08007A34: .4byte 0x00001201

	.INCBIN "baserom.gba", 0x7A38, 0x8DD8-0x7A38

	.GLOBAL sub_08008DD8
sub_08008DD8:
	.INCBIN "baserom.gba", 0x8DD8, 0x8ED8-0x8DD8

	thumb_func_start sub_08008ED8
sub_08008ED8: @ 0x08008ED8
	push {r4, r5, lr}
	ldr r0, _08008F18 @ =0x02000028
	ldr r1, _08008F1C @ =0x03000204
	ldrb r1, [r1]
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _08008F06
	ldr r0, _08008F20 @ =0x03000204
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r5, _08008F24 @ =0x08008F08
	adds r5, r5, r0
	ldr r0, [r5]
	ldr r1, _08008F28 @ =0x02016D90
	ldr r2, _08008F2C @ =sub_08008EFC
	mov lr, r2
	ldr r4, _08008F30 @ =0x03000530
	bx r4

	thumb_func_start sub_08008EFC
sub_08008EFC: @ 0x08008EFC
	ldr r0, [r5, #4]
	ldr r1, _08008F34 @ =0x020031D0
	ldr r2, _08008F38 @ =0x08008F07
	mov lr, r2
	bx r4
_08008F06:
	pop {r4, r5, pc}
_08008F08:
	.byte 0x40, 0x04, 0x00, 0x02, 0x40, 0x0C, 0x00, 0x02
	.byte 0x40, 0x14, 0x00, 0x02, 0x40, 0x1C, 0x00, 0x02
_08008F18: .4byte 0x02000028
_08008F1C: .4byte 0x03000204
_08008F20: .4byte 0x03000204
_08008F24: .4byte 0x08008F08
_08008F28: .4byte 0x02016D90
_08008F2C: .4byte sub_08008EFC
_08008F30: .4byte 0x03000530
_08008F34: .4byte 0x020031D0
_08008F38: .4byte 0x08008F07

	thumb_func_start sub_08008F3C
sub_08008F3C: @ 0x08008F3C
	lsrs r2, r2, #0xe
	lsls r2, r2, #2
	ldr r3, _08008F90 @ =0x080092A0
	ldr r2, [r3, r2]
	strb r0, [r2, r1]
	mov pc, lr

	thumb_func_start sub_08008F48
sub_08008F48: @ 0x08008F48
	lsrs r2, r2, #0xe
	lsls r2, r2, #3
	ldr r3, _08008F94 @ =0x08009280
	ldr r2, [r3, r2]
	lsls r1, r1, #1
	strh r0, [r2, r1]
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08008F58
sub_08008F58: @ 0x08008F58
	lsrs r1, r1, #0xe
	lsls r1, r1, #3
	ldr r2, _08008F98 @ =0x08009280
	ldr r1, [r2, r1]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08008F68
sub_08008F68: @ 0x08008F68
	str r4, [r4, r0]
	lsls r2, r0, #8
	str r4, [r4, r0]
	lsls r2, r0, #8
	asrs r4, r4, #0xc
	lsls r1, r0, #8
	str r4, [r4, r0]
	lsls r2, r0, #8
	lsrs r2, r2, #0xe
	lsls r2, r2, #2
	ldr r3, _08008F9C @ =0x08008F68
	ldr r3, [r3, r2]
	lsls r0, r0, #1
	ldrh r0, [r3, r0]
	lsls r2, r2, #1
	ldr r3, _08008FA0 @ =0x08009280
	ldr r2, [r3, r2]
	lsls r1, r1, #1
	strh r0, [r2, r1]
	mov pc, lr
_08008F90: .4byte 0x080092A0
_08008F94: .4byte 0x08009280
_08008F98: .4byte 0x08009280
_08008F9C: .4byte 0x08008F68
_08008FA0: .4byte 0x08009280

	.GLOBAL sub_08008FA4
sub_08008FA4:
	.INCBIN "baserom.gba", 0x8FA4, 0x9310-0x8FA4

	thumb_func_start sub_08009310
sub_08009310: @ 0x08009310
	ldr r3, _080094F0 @ =0x03000468
	ldrh r3, [r3]
	subs r0, r0, r3
	ldr r3, _080094F4 @ =0x0300046A
	ldrh r3, [r3]
	subs r1, r1, r3
	lsls r0, r0, #0x16
	lsls r1, r1, #0x16
	lsrs r0, r0, #0x1a
	lsrs r1, r1, #0x1a
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r1, r2, #0
	movs r0, r0

	thumb_func_start sub_0800932C
sub_0800932C: @ 0x0800932C
	ldr r2, _080094F8 @ =0x08009280
_0800932E:
	lsrs r1, r1, #0xe
	lsls r1, r1, #3
	adds r2, r2, r1
	ldr r1, [r2]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	ldr r1, _080094FC @ =0x00007FFF
	ands r0, r1
	ldr r1, _08009500 @ =0x00004000
	tst r0, r1
	bne _0800934A
	lsls r0, r0, #1
	ldr r1, [r2, #4]
	ldrh r0, [r1, r0]
_0800934A:
	mov pc, lr

	thumb_func_start sub_0800934C
sub_0800934C: @ 0x0800934C
	ldrh r3, [r0, #0x32]
	adds r3, r3, r1
	ldrh r1, [r0, #0x36]
	adds r1, r1, r2
	movs r2, #0x50
	ldrh r2, [r0, r2]
	adds r0, r3, #0
	b _08009364

	thumb_func_start sub_0800935C
sub_0800935C: @ 0x0800935C
	movs r2, #0x50
	ldrh r2, [r0, r2]
	ldrh r1, [r0, #0x36]
	ldrh r0, [r0, #0x32]
_08009364:
	ldr r3, _08009504 @ =0x03000468
	ldrh r3, [r3]
	subs r0, r0, r3
	ldr r3, _08009508 @ =0x0300046A
	ldrh r3, [r3]
	subs r1, r1, r3
	lsls r0, r0, #0x16
	lsls r1, r1, #0x16
	lsrs r0, r0, #0x1a
	lsrs r1, r1, #0x1a
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r1, r2, #0
	movs r0, r0
	push {lr}
	bl sub_0800932C
	ldr r1, _08009500 @ =0x00004000
	tst r0, r1
	bne _08009392
	ldr r1, _0800950C @ =0x0814791C
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
_08009392:
	pop {pc}

	thumb_func_start sub_08009394
sub_08009394: @ 0x08009394
	ldrh r3, [r0, #0x32]
	adds r3, r3, r1
	ldrh r1, [r0, #0x36]
	adds r1, r1, r2
	movs r2, #0x50
	ldrh r2, [r0, r2]
	adds r0, r3, #0
	b _080093AC

	thumb_func_start sub_080093A4
sub_080093A4: @ 0x080093A4
	movs r2, #0x50
	ldrh r2, [r0, r2]
	ldrh r1, [r0, #0x36]
	ldrh r0, [r0, #0x32]
_080093AC:
	ldr r3, _08009510 @ =0x03000468
	ldrh r3, [r3]
	subs r0, r0, r3
	ldr r3, _08009514 @ =0x0300046A
	ldrh r3, [r3]
	subs r1, r1, r3
	lsls r0, r0, #0x16
	lsls r1, r1, #0x16
	lsrs r0, r0, #0x1a
	lsrs r1, r1, #0x1a
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r1, r2, #0
	movs r0, r0

	thumb_func_start sub_080093C8
sub_080093C8: @ 0x080093C8
	ldr r2, _08009518 @ =0x080092A0
	lsrs r1, r1, #0xe
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	ldrb r0, [r1, r0]
	mov pc, lr

	thumb_func_start sub_080093D4
sub_080093D4: @ 0x080093D4
	ldrh r1, [r0, #0x32]
	ldrh r2, [r0, #0x36]
	ldr r3, _0800951C @ =0x03000468
	ldrh r3, [r3]
	subs r1, r1, r3
	ldr r3, _08009520 @ =0x0300046A
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
	ldr r2, _08009524 @ =0x080092B0
	b _0800932E

	thumb_func_start sub_080093F8
sub_080093F8: @ 0x080093F8
	ldrh r3, [r0, #0x32]
	adds r1, r1, r3
	ldrh r3, [r0, #0x36]
	adds r2, r2, r3
	b _08009408
	.align 2, 0
_08009404:
	.byte 0x41, 0x8E, 0xC2, 0x8E
_08009408:
	ldr r3, _08009528 @ =0x03000468
	ldrh r3, [r3]
	subs r1, r1, r3
	ldr r3, _0800952C @ =0x0300046A
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
	thumb_func_start sub_080094B0
sub_080094B0: @ 0x080094B0
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
_080094F0: .4byte 0x03000468
_080094F4: .4byte 0x0300046A
_080094F8: .4byte 0x08009280
_080094FC: .4byte 0x00007FFF
_08009500: .4byte 0x00004000
_08009504: .4byte 0x03000468
_08009508: .4byte 0x0300046A
_0800950C: .4byte 0x0814791C
_08009510: .4byte 0x03000468
_08009514: .4byte 0x0300046A
_08009518: .4byte 0x080092A0
_0800951C: .4byte 0x03000468
_08009520: .4byte 0x0300046A
_08009524: .4byte 0x080092B0
_08009528: .4byte 0x03000468
_0800952C: .4byte 0x0300046A
_08009530: .4byte 0x08009280
_08009534: .4byte 0x03000468
_08009538: .4byte 0x0300046A
_0800953C: .4byte 0x0814791C
_08009540: .4byte 0x03000468
_08009544: .4byte 0x0300046A
_08009548: .4byte 0x080092A0
_0800954C: .4byte 0x0814791C
_08009550: .4byte 0x08009280

    .INCBIN "baserom.gba", 0x9554, 0xB084-0x9554

@ to B084
