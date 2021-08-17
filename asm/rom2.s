	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_0800C1EC
sub_0800C1EC: @ 0x0800C1EC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	mov r9, r0
	ldr r0, _0800C284  @ =gPaletteBuf2
	mov r12, r0
	ldr r7, _0800C288  @ =gPaletteBuf1
	ldr r1, _0800C28C  @ =gUnknown_03000520
	ldrb r0, [r1, #7]
	lsl r0, r0, #3
	mov r2, #0
	ldr r1, [r1, #12]
	str r1, [sp]
	ldr r1, _0800C290  @ =gUnknown_0201EDE0
	mov r10, r1
	mov r3, r9
	mul r3, r0, r3
	str r3, [sp, #4]
_0800C216:
	mov r1, #1
	lsl r1, r1, r2
	ldr r0, [sp]
	and r0, r0, r1
	cmp r0, #0
	beq _0800C294
	mov r3, r10
	ldr r0, [r3]
	orr r0, r0, r1
	str r0, [r3]
	mov r6, #16
	add r2, r2, #1
	mov r8, r2
	mov r5, #31
	mov r0, #128
	lsl r0, r0, #1
	mov r1, r9
	sub r4, r0, r1
	ldr r3, [sp, #4]
_0800C23C:
	mov r0, r12
	ldrh r1, [r0]
	add r0, r1, #0
	and r0, r0, r5
	lsl r2, r0, #3
	lsr r1, r1, #5
	add r0, r1, #0
	and r0, r0, r5
	lsl r0, r0, #3
	lsr r1, r1, #5
	and r1, r1, r5
	lsl r1, r1, #3
	mul r2, r4, r2
	add r2, r2, r3
	mul r0, r4, r0
	add r0, r0, r3
	mul r1, r4, r1
	add r1, r1, r3
	lsr r2, r2, #11
	lsr r0, r0, #11
	lsl r0, r0, #5
	lsr r1, r1, #11
	lsl r1, r1, #10
	orr r2, r2, r0
	orr r2, r2, r1
	strh r2, [r7]
	sub r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r1, #2
	add r12, r12, r1
	add r7, r7, #2
	cmp r6, #0
	bne _0800C23C
	b _0800C29E
	.byte 0x00
	.byte 0x00
_0800C284:
	.4byte gPaletteBuf2
_0800C288:
	.4byte gPaletteBuf1
_0800C28C:
	.4byte gUnknown_03000520
_0800C290:
	.4byte gUnknown_0201EDE0
_0800C294:
	mov r3, #32
	add r12, r12, r3
	add r7, r7, #32
	add r2, r2, #1
	mov r8, r2
_0800C29E:
	mov r1, r8
	lsl r0, r1, #24
	lsr r2, r0, #24
	cmp r2, #31
	bls _0800C216
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800C1EC

	THUMB_FUNC_START sub_0800C2B8
sub_0800C2B8: @ 0x0800C2B8
	push {r4,r5,lr}
	add r2, r0, #0
	lsl r4, r1, #2
	add r4, r4, r1
	lsl r4, r4, #2
	ldr r0, _0800C31C  @ =gUnknown_084273A0
	add r4, r4, r0
	ldrh r0, [r4, #4]
	add r1, r2, #0
	add r1, r1, #126
	mov r5, #0
	strh r0, [r1]
	ldrh r0, [r4, #6]
	sub r1, r1, #1
	strb r0, [r1]
	ldrh r1, [r4, #8]
	add r0, r2, #0
	add r0, r0, #124
	strb r1, [r0]
	ldrh r0, [r4, #10]
	add r1, r2, #0
	add r1, r1, #123
	strb r0, [r1]
	ldrh r0, [r4, #12]
	sub r1, r1, #1
	strb r0, [r1]
	ldrh r1, [r4, #14]
	add r0, r2, #0
	add r0, r0, #121
	strb r1, [r0]
	ldr r0, _0800C320  @ =gUnknown_030004A0
	add r0, r0, #96
	ldrh r1, [r0]
	mov r0, #255
	lsl r0, r0, #8
	and r0, r0, r1
	ldrh r1, [r4, #16]
	orr r0, r0, r1
	ldrh r1, [r4, #18]
	bl sub_0800CA84
	ldrb r0, [r4]
	ldrb r1, [r4, #2]
	bl sub_0800C0B0
	ldr r0, _0800C324  @ =gUnknown_03000520
	strb r5, [r0, #4]
	pop {r4,r5}
	pop {r0}
	bx r0
_0800C31C:
	.4byte gUnknown_084273A0
_0800C320:
	.4byte gUnknown_030004A0
_0800C324:
	.4byte gUnknown_03000520
	THUMB_FUNC_END sub_0800C2B8

	THUMB_FUNC_START sub_0800C328
sub_0800C328: @ 0x0800C328
	push {r4-r6,lr}
	add r3, r0, #0
	add r4, r3, #0
	add r4, r4, #126
	ldrh r2, [r4]
	mov r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0800C358
	mov r2, #50
	ldrsh r0, [r3, r2]
	ldr r2, _0800C354  @ =gUnknown_03000450
	mov r4, #32
	ldrsh r1, [r2, r4]
	sub r0, r0, r1
	mov r5, #54
	ldrsh r1, [r3, r5]
	mov r6, #34
	ldrsh r2, [r2, r6]
	sub r1, r1, r2
	mov r2, #0
	b _0800C378
_0800C354:
	.4byte gUnknown_03000450
_0800C358:
	mov r5, #250
	lsl r5, r5, #1
	cmp r0, r5
	ble _0800C388
	mov r1, #50
	ldrsh r0, [r3, r1]
	ldr r2, _0800C384  @ =gUnknown_03000450
	mov r4, #32
	ldrsh r1, [r2, r4]
	sub r0, r0, r1
	mov r6, #54
	ldrsh r1, [r3, r6]
	mov r3, #34
	ldrsh r2, [r2, r3]
	sub r1, r1, r2
	add r2, r5, #0
_0800C378:
	mov r3, #0
	bl sub_0800CE74
	mov r0, #1
	b _0800C412
	.byte 0x00
	.byte 0x00
_0800C384:
	.4byte gUnknown_03000450
_0800C388:
	add r1, r3, #0
	add r1, r1, #125
	mov r0, #0
	ldrsb r0, [r1, r0]
	add r0, r2, r0
	strh r0, [r4]
	add r0, r3, #0
	add r0, r0, #124
	ldrb r0, [r0]
	ldrb r5, [r1]
	add r0, r0, r5
	strb r0, [r1]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #16
	ble _0800C3AC
	mov r0, #16
	strb r0, [r1]
_0800C3AC:
	mov r0, #0
	ldrsb r0, [r1, r0]
	mov r2, #16
	neg r2, r2
	cmp r0, r2
	bge _0800C3BA
	strb r2, [r1]
_0800C3BA:
	mov r6, #123
	add r6, r6, r3
	mov r12, r6
	add r1, r3, #0
	add r1, r1, #122
	ldrb r0, [r1]
	ldrb r5, [r6]
	add r0, r0, r5
	strb r0, [r6]
	add r0, r3, #0
	add r0, r0, #121
	ldrb r0, [r0]
	ldrb r6, [r1]
	add r0, r0, r6
	strb r0, [r1]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #16
	ble _0800C3E4
	mov r0, #16
	strb r0, [r1]
_0800C3E4:
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r2
	bge _0800C3EE
	strb r2, [r1]
_0800C3EE:
	mov r1, #50
	ldrsh r0, [r3, r1]
	ldr r2, _0800C418  @ =gUnknown_03000450
	mov r5, #32
	ldrsh r1, [r2, r5]
	sub r0, r0, r1
	mov r6, #54
	ldrsh r1, [r3, r6]
	mov r3, #34
	ldrsh r2, [r2, r3]
	sub r1, r1, r2
	mov r5, #0
	ldrsh r2, [r4, r5]
	mov r6, r12
	ldrb r3, [r6]
	bl sub_0800CE74
	mov r0, #0
_0800C412:
	pop {r4-r6}
	pop {r1}
	bx r1
_0800C418:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_0800C328

	THUMB_FUNC_START sub_0800C41C
sub_0800C41C: @ 0x0800C41C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r5, _0800C4B0  @ =0x04000208
	mov r2, #0
	strh r2, [r5]
	ldr r4, _0800C4B4  @ =0x04000200
	ldrh r1, [r4]
	ldr r0, _0800C4B8  @ =0x0000FF3F
	and r0, r0, r1
	strh r0, [r4]
	mov r0, #1
	mov r8, r0
	strh r0, [r5]
	ldr r0, _0800C4BC  @ =0x04000134
	strh r2, [r0]
	ldr r2, _0800C4C0  @ =0x04000128
	mov r1, #128
	lsl r1, r1, #6
	add r0, r1, #0
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r3, _0800C4C4  @ =0x00004003
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	mov r6, #0
	str r6, [sp]
	ldr r7, _0800C4C8  @ =gUnknown_02030790
	ldr r2, _0800C4CC  @ =0x0500006E
	mov r0, sp
	add r1, r7, #0
	bl CpuSet
	ldr r0, _0800C4D0  @ =0x08000318
	ldr r1, _0800C4D4  @ =gUnknown_02030950
	ldr r2, _0800C4D8  @ =0x04000010
	bl CpuSet
	ldr r0, _0800C4DC  @ =0x0800C7E9
	ldr r1, _0800C4E0  @ =gUnknown_02030590
	ldr r2, _0800C4E4  @ =0x04000080
	bl CpuSet
	mov r0, #13
	str r0, [r7, #20]
	str r0, [r7, #24]
	add r0, r7, #0
	add r0, r0, #48
	str r0, [r7, #28]
	add r0, r0, #28
	str r0, [r7, #32]
	add r0, r0, #28
	str r0, [r7, #36]
	add r0, r0, #112
	str r0, [r7, #40]
	mov r1, #164
	lsl r1, r1, #1
	add r0, r7, r1
	str r0, [r7, #44]
	strh r6, [r5]
	ldrh r0, [r4]
	mov r1, #128
	orr r0, r0, r1
	strh r0, [r4]
	mov r3, r8
	strh r3, [r5]
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0800C4B0:
	.4byte 0x04000208
_0800C4B4:
	.4byte 0x04000200
_0800C4B8:
	.4byte 0x0000FF3F
_0800C4BC:
	.4byte 0x04000134
_0800C4C0:
	.4byte 0x04000128
_0800C4C4:
	.4byte 0x00004003
_0800C4C8:
	.4byte gUnknown_02030790
_0800C4CC:
	.4byte 0x0500006E
_0800C4D0:
	.4byte 0x08000318
_0800C4D4:
	.4byte gUnknown_02030950
_0800C4D8:
	.4byte 0x04000010
_0800C4DC:
	.4byte 0x0800C7E9
_0800C4E0:
	.4byte gUnknown_02030590
_0800C4E4:
	.4byte 0x04000080
	THUMB_FUNC_END sub_0800C41C

	THUMB_FUNC_START sub_0800C4E8
sub_0800C4E8: @ 0x0800C4E8
	ldr r1, _0800C4F8  @ =gUnknown_02030790
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800C4F4
	mov r0, #1
	strb r0, [r1, #6]
_0800C4F4:
	bx lr
	.byte 0x00
	.byte 0x00
_0800C4F8:
	.4byte gUnknown_02030790
	THUMB_FUNC_END sub_0800C4E8

	THUMB_FUNC_START sub_0800C4FC
sub_0800C4FC: @ 0x0800C4FC
	push {r4,lr}
	ldr r3, _0800C530  @ =0x04000208
	mov r4, #0
	strh r4, [r3]
	ldr r2, _0800C534  @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0800C538  @ =0x0000FF3F
	and r0, r0, r1
	strh r0, [r2]
	mov r0, #1
	strh r0, [r3]
	ldr r1, _0800C53C  @ =0x04000128
	ldr r2, _0800C540  @ =0x00002003
	add r0, r2, #0
	strh r0, [r1]
	sub r1, r1, #28
	ldr r0, _0800C544  @ =0x0000B72F
	str r0, [r1]
	add r1, r1, #246
	mov r0, #192
	strh r0, [r1]
	ldr r0, _0800C548  @ =gUnknown_02030790
	strb r4, [r0, #6]
	pop {r4}
	pop {r0}
	bx r0
_0800C530:
	.4byte 0x04000208
_0800C534:
	.4byte 0x04000200
_0800C538:
	.4byte 0x0000FF3F
_0800C53C:
	.4byte 0x04000128
_0800C540:
	.4byte 0x00002003
_0800C544:
	.4byte 0x0000B72F
_0800C548:
	.4byte gUnknown_02030790
	THUMB_FUNC_END sub_0800C4FC

	THUMB_FUNC_START sub_0800C54C
sub_0800C54C: @ 0x0800C54C
	push {r4-r7,lr}
	mov r12, r0
	ldr r5, _0800C568  @ =0x04000128
	ldr r6, [r5]
	ldr r0, _0800C56C  @ =gUnknown_02030790
	ldrb r2, [r0, #1]
	add r7, r0, #0
	cmp r2, #1
	beq _0800C5CA
	cmp r2, #1
	bgt _0800C570
	cmp r2, #0
	beq _0800C576
	b _0800C602
_0800C568:
	.4byte 0x04000128
_0800C56C:
	.4byte gUnknown_02030790
_0800C570:
	cmp r2, #2
	beq _0800C5FC
	b _0800C602
_0800C576:
	ldr r0, [r7, #24]
	cmp r0, #13
	bne _0800C5C6
	mov r0, #136
	add r4, r6, #0
	and r4, r4, r0
	cmp r4, #8
	bne _0800C602
	mov r1, #4
	add r0, r6, #0
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _0800C5C6
	ldr r3, _0800C5E0  @ =0x04000208
	strh r0, [r3]
	ldr r2, _0800C5E4  @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0800C5E8  @ =0x0000FF7F
	and r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	mov r1, #64
	orr r0, r0, r1
	strh r0, [r2]
	mov r0, #1
	strh r0, [r3]
	ldrb r1, [r5, #1]
	mov r0, #65
	neg r0, r0
	and r0, r0, r1
	strb r0, [r5, #1]
	ldr r1, _0800C5EC  @ =0x0400010C
	ldr r0, _0800C5F0  @ =0x0000B72F
	str r0, [r1]
	add r1, r1, #246
	mov r0, #192
	strh r0, [r1]
	strb r4, [r7]
_0800C5C6:
	mov r0, #1
	strb r0, [r7, #1]
_0800C5CA:
	ldr r1, _0800C5F4  @ =gUnknown_02030790
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _0800C5FC
	ldrb r0, [r1, #8]
	cmp r0, #7
	bhi _0800C5F8
	add r0, r0, #1
	strb r0, [r1, #8]
	b _0800C5FC
	.byte 0x00
	.byte 0x00
_0800C5E0:
	.4byte 0x04000208
_0800C5E4:
	.4byte 0x04000200
_0800C5E8:
	.4byte 0x0000FF7F
_0800C5EC:
	.4byte 0x0400010C
_0800C5F0:
	.4byte 0x0000B72F
_0800C5F4:
	.4byte gUnknown_02030790
_0800C5F8:
	mov r0, #2
	strb r0, [r1, #1]
_0800C5FC:
	mov r0, r12
	bl sub_0800C6A8
_0800C602:
	ldr r1, _0800C620  @ =gUnknown_02030790
	ldrb r0, [r1, #11]
	add r0, r0, #1
	strb r0, [r1, #11]
	ldrb r3, [r1, #3]
	ldrb r0, [r1, #2]
	lsl r2, r0, #8
	ldrb r0, [r1]
	add r7, r1, #0
	cmp r0, #8
	bne _0800C624
	mov r0, #128
	orr r0, r0, r2
	orr r0, r0, r3
	b _0800C628
_0800C620:
	.4byte gUnknown_02030790
_0800C624:
	add r0, r3, #0
	orr r0, r0, r2
_0800C628:
	add r2, r0, #0
	ldrb r0, [r7, #7]
	cmp r0, #0
	beq _0800C636
	mov r0, #128
	lsl r0, r0, #5
	orr r2, r2, r0
_0800C636:
	ldrb r0, [r7, #8]
	lsr r0, r0, #3
	lsl r1, r0, #15
	lsl r0, r6, #26
	lsr r0, r0, #30
	cmp r0, #3
	bls _0800C64E
	mov r0, #128
	lsl r0, r0, #6
	orr r0, r0, r1
	orr r0, r0, r2
	b _0800C652
_0800C64E:
	add r0, r2, #0
	orr r0, r0, r1
_0800C652:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800C54C

	THUMB_FUNC_START sub_0800C658
sub_0800C658: @ 0x0800C658
	push {r4,r5,lr}
	mov r5, #0
	ldr r4, _0800C6A0  @ =gUnknown_02030790
	ldr r2, [r4, #28]
	ldrb r1, [r4, #11]
	strb r1, [r2]
	ldr r3, [r4, #28]
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #3]
	eor r1, r1, r2
	strb r1, [r3, #1]
	ldr r1, [r4, #28]
	strh r5, [r1, #2]
	ldr r1, [r4, #28]
	add r1, r1, #4
	ldr r2, _0800C6A4  @ =0x04000005
	bl CpuSet
	mov r2, #0
	ldr r1, [r4, #28]
_0800C680:
	ldrh r0, [r1]
	add r5, r5, r0
	add r1, r1, #2
	add r2, r2, #1
	cmp r2, #11
	bls _0800C680
	ldr r0, [r4, #28]
	mvn r1, r5
	sub r1, r1, #14
	strh r1, [r0, #2]
	mov r0, #1
	strb r0, [r4, #4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800C6A0:
	.4byte gUnknown_02030790
_0800C6A4:
	.4byte 0x04000005
	THUMB_FUNC_END sub_0800C658

	THUMB_FUNC_START sub_0800C6A8
sub_0800C6A8: @ 0x0800C6A8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	mov r9, r0
	ldr r0, _0800C74C  @ =gUnknown_02030950
	mov r4, #0
	str r4, [sp]
	bl _call_via_r0
	lsl r0, r0, #24
	ldr r1, _0800C750  @ =gUnknown_02030790
	strb r4, [r1, #3]
	cmp r0, #0
	beq _0800C72E
	mov r5, #0
	add r0, sp, #4
	mov r8, r0
	add r7, r1, #0
	mov r0, #15
	neg r0, r0
	mov r10, r0
_0800C6D8:
	lsl r0, r5, #3
	sub r0, r0, r5
	lsl r0, r0, #2
	ldr r1, [r7, #44]
	add r1, r1, r0
	mov r4, #0
	mov r3, #0
	add r6, r5, #1
	add r2, r1, #0
_0800C6EA:
	ldrh r0, [r2]
	add r4, r4, r0
	add r2, r2, #2
	add r3, r3, #1
	cmp r3, #11
	bls _0800C6EA
	lsl r0, r4, #16
	asr r0, r0, #16
	add r4, r1, #4
	cmp r0, r10
	bne _0800C71A
	lsl r1, r5, #2
	add r1, r1, r5
	lsl r1, r1, #2
	add r1, r1, r9
	add r0, r4, #0
	ldr r2, _0800C754  @ =0x04000005
	bl CpuSet
	mov r0, #1
	lsl r0, r0, r5
	ldrb r1, [r7, #3]
	orr r0, r0, r1
	strb r0, [r7, #3]
_0800C71A:
	mov r0, #0
	str r0, [sp, #4]
	mov r0, r8
	add r1, r4, #0
	ldr r2, _0800C758  @ =0x05000005
	bl CpuSet
	add r5, r6, #0
	cmp r5, #3
	ble _0800C6D8
_0800C72E:
	ldr r1, _0800C750  @ =gUnknown_02030790
	ldrb r0, [r1, #2]
	ldrb r2, [r1, #3]
	orr r0, r0, r2
	strb r0, [r1, #2]
	ldrb r0, [r1, #3]
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0800C74C:
	.4byte gUnknown_02030950
_0800C750:
	.4byte gUnknown_02030790
_0800C754:
	.4byte 0x04000005
_0800C758:
	.4byte 0x05000005
	THUMB_FUNC_END sub_0800C6A8

	THUMB_FUNC_START sub_0800C75C
sub_0800C75C: @ 0x0800C75C
	ldr r3, _0800C7B0  @ =gUnknown_02030790
	ldrb r1, [r3]
	cmp r1, #0
	beq _0800C7C0
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _0800C7DE
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _0800C7DE
	ldrb r0, [r3, #6]
	cmp r0, #0
	beq _0800C7DE
	mov r0, #1
	neg r0, r0
	str r0, [r3, #24]
	ldr r1, [r3, #40]
	ldr r0, [r3, #36]
	str r0, [r3, #40]
	str r1, [r3, #36]
	ldr r1, [r3, #32]
	ldr r0, [r3, #28]
	str r0, [r3, #32]
	str r1, [r3, #28]
	mov r0, #0
	strb r0, [r3, #4]
	str r0, [r3, #20]
	ldr r2, _0800C7B4  @ =0x04000128
	ldr r0, [r2]
	lsl r0, r0, #25
	lsr r0, r0, #31
	strb r0, [r3, #7]
	ldr r0, _0800C7B8  @ =0x0000FEFE
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _0800C7BC  @ =0x0400010E
	mov r0, #192
	strh r0, [r1]
	b _0800C7DE
_0800C7B0:
	.4byte gUnknown_02030790
_0800C7B4:
	.4byte 0x04000128
_0800C7B8:
	.4byte 0x0000FEFE
_0800C7BC:
	.4byte 0x0400010E
_0800C7C0:
	ldrb r0, [r3, #9]
	cmp r0, #3
	bhi _0800C7CC
	add r0, r0, #1
	strb r0, [r3, #9]
	b _0800C7DE
_0800C7CC:
	ldr r3, _0800C7E0  @ =0x04000208
	strh r1, [r3]
	ldr r2, _0800C7E4  @ =gUnknown_03007FF8
	ldrh r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	strh r0, [r2]
	mov r0, #1
	strh r0, [r3]
_0800C7DE:
	bx lr
_0800C7E0:
	.4byte 0x04000208
_0800C7E4:
	.4byte gUnknown_03007FF8
	THUMB_FUNC_END sub_0800C75C

	THUMB_FUNC_START sub_0800C7E8
sub_0800C7E8: @ 0x0800C7E8
	push {r4,r5,lr}
	sub sp, sp, #8
	ldr r0, _0800C8C8  @ =0x04000120
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r2, _0800C8CC  @ =gUnknown_02030790
	ldr r0, _0800C8D0  @ =0x04000128
	ldr r0, [r0]
	lsl r0, r0, #25
	lsr r0, r0, #31
	mov r5, #0
	strb r0, [r2, #7]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _0800C8D4  @ =0x0000FEFE
	add r4, r2, #0
	cmp r1, r0
	bne _0800C848
	ldr r0, [r4, #24]
	cmp r0, #11
	ble _0800C848
	mov r0, #1
	neg r0, r0
	str r0, [r4, #24]
	ldr r1, [r4, #40]
	ldr r0, [r4, #36]
	str r0, [r4, #40]
	str r1, [r4, #36]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0800C836
	ldr r1, [r4, #32]
	ldr r0, [r4, #28]
	str r0, [r4, #32]
	str r1, [r4, #28]
	strb r5, [r4, #4]
	str r5, [r4, #20]
_0800C836:
	ldr r3, _0800C8D8  @ =0x04000208
	strh r5, [r3]
	ldr r2, _0800C8DC  @ =gUnknown_03007FF8
	ldrh r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	strh r0, [r2]
	mov r0, #1
	strh r0, [r3]
_0800C848:
	ldr r0, [r4, #20]
	cmp r0, #11
	bgt _0800C85A
	ldr r2, _0800C8D0  @ =0x04000128
	ldr r1, [r4, #32]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
_0800C85A:
	ldr r0, [r4, #20]
	cmp r0, #12
	bgt _0800C864
	add r0, r0, #1
	str r0, [r4, #20]
_0800C864:
	ldr r0, [r4, #24]
	cmp r0, #0
	blt _0800C88C
	ldr r1, [r4, #36]
	mov r2, sp
	lsl r0, r0, #1
	add r1, r1, r0
	mov r3, #3
_0800C874:
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #28
	sub r3, r3, #1
	cmp r3, #0
	bge _0800C874
	ldr r0, [r4, #24]
	cmp r0, #11
	bne _0800C88C
	mov r0, #1
	strb r0, [r4, #5]
_0800C88C:
	ldr r0, [r4, #24]
	cmp r0, #11
	bgt _0800C896
	add r0, r0, #1
	str r0, [r4, #24]
_0800C896:
	ldrb r2, [r4]
	cmp r2, #0
	beq _0800C8A2
	ldr r1, _0800C8E0  @ =0x0400010E
	mov r0, #0
	strh r0, [r1]
_0800C8A2:
	ldr r0, [r4, #20]
	cmp r0, #12
	bgt _0800C8BC
	cmp r2, #0
	beq _0800C8BC
	ldr r2, _0800C8D0  @ =0x04000128
	ldrh r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _0800C8E0  @ =0x0400010E
	mov r0, #192
	strh r0, [r1]
_0800C8BC:
	mov r0, #0
	strb r0, [r4, #9]
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_0800C8C8:
	.4byte 0x04000120
_0800C8CC:
	.4byte gUnknown_02030790
_0800C8D0:
	.4byte 0x04000128
_0800C8D4:
	.4byte 0x0000FEFE
_0800C8D8:
	.4byte 0x04000208
_0800C8DC:
	.4byte gUnknown_03007FF8
_0800C8E0:
	.4byte 0x0400010E
	THUMB_FUNC_END sub_0800C7E8

	THUMB_FUNC_START sub_0800C8E4
sub_0800C8E4: @ 0x0800C8E4
	push {r4,r5,lr}
	ldr r0, _0800C930  @ =gUnknown_03000204
	ldrb r1, [r0]
	mov r0, #1
	eor r0, r0, r1
	lsl r0, r0, #7
	ldr r1, _0800C934  @ =gUnknown_03006630
	add r2, r0, r1
	ldr r1, _0800C938  @ =gUnknown_03005E08
	ldr r0, [r1]
	cmp r2, r0
	bcs _0800C916
	ldr r5, _0800C93C  @ =gUnknown_084273C8
	add r4, r1, #0
_0800C900:
	ldrb r1, [r2]
	lsl r1, r1, #2
	add r1, r1, r5
	add r0, r2, #1
	ldr r1, [r1]
	bl _call_via_r1
	add r2, r0, #0
	ldr r0, [r4]
	cmp r2, r0
	bcc _0800C900
_0800C916:
	ldr r2, _0800C938  @ =gUnknown_03005E08
	ldr r0, _0800C930  @ =gUnknown_03000204
	ldrb r1, [r0]
	mov r0, #1
	eor r0, r0, r1
	lsl r0, r0, #7
	ldr r1, _0800C934  @ =gUnknown_03006630
	add r0, r0, r1
	str r0, [r2]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800C930:
	.4byte gUnknown_03000204
_0800C934:
	.4byte gUnknown_03006630
_0800C938:
	.4byte gUnknown_03005E08
_0800C93C:
	.4byte gUnknown_084273C8
	THUMB_FUNC_END sub_0800C8E4

	THUMB_FUNC_START sub_0800C940
sub_0800C940: @ 0x0800C940
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	lsl r1, r1, #8
	add r0, r0, r1
	ldrb r1, [r4, #2]
	lsl r1, r1, #16
	add r0, r0, r1
	ldrb r1, [r4, #3]
	lsl r1, r1, #24
	add r0, r0, r1
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	lsl r2, r2, #8
	add r1, r1, r2
	ldrb r2, [r4, #6]
	lsl r2, r2, #16
	add r1, r1, r2
	ldrb r2, [r4, #7]
	lsl r2, r2, #24
	add r1, r1, r2
	ldrb r2, [r4, #8]
	ldrb r3, [r4, #9]
	lsl r3, r3, #8
	add r2, r2, r3
	lsr r2, r2, #2
	bl CpuFastSet
	add r4, r4, #10
	add r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800C940

	THUMB_FUNC_START sub_0800C984
sub_0800C984: @ 0x0800C984
	mov r3, #0
	ldr r2, _0800C9A0  @ =gUnknown_03000E34
	ldr r0, _0800C9A4  @ =gUnknown_03000204
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0800C9A8  @ =gUnknown_030066A6
	add r0, r0, r1
	ldr r1, [r2]
	cmp r1, r0
	bcs _0800C99A
	mov r3, #1
_0800C99A:
	add r0, r3, #0
	bx lr
	.byte 0x00
	.byte 0x00
_0800C9A0:
	.4byte gUnknown_03000E34
_0800C9A4:
	.4byte gUnknown_03000204
_0800C9A8:
	.4byte gUnknown_030066A6
	THUMB_FUNC_END sub_0800C984

	THUMB_FUNC_START sub_0800C9AC
sub_0800C9AC: @ 0x0800C9AC
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r5, [r4]
	ldrb r0, [r4, #1]
	lsl r0, r0, #8
	add r5, r5, r0
	ldrb r0, [r4, #2]
	lsl r0, r0, #16
	add r5, r5, r0
	ldrb r0, [r4, #3]
	lsl r0, r0, #24
	add r5, r5, r0
	ldrb r1, [r4, #4]
	ldrb r0, [r4, #5]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrb r0, [r4, #6]
	lsl r0, r0, #16
	add r1, r1, r0
	ldrb r0, [r4, #7]
	lsl r0, r0, #24
	add r1, r1, r0
	ldrb r2, [r4, #8]
	ldrb r0, [r4, #9]
	lsl r0, r0, #8
	add r2, r2, r0
	lsr r2, r2, #2
	add r0, r5, #0
	bl CpuFastSet
	add r0, r5, #0
	bl sub_0800BE50
	add r4, r4, #10
	add r0, r4, #0
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800C9AC

	THUMB_FUNC_START sub_0800C9F8
sub_0800C9F8: @ 0x0800C9F8
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	lsl r1, r1, #8
	add r0, r0, r1
	ldrb r1, [r4, #2]
	lsl r1, r1, #16
	add r0, r0, r1
	ldrb r1, [r4, #3]
	lsl r1, r1, #24
	add r0, r0, r1
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	lsl r2, r2, #8
	add r1, r1, r2
	ldrb r2, [r4, #6]
	lsl r2, r2, #16
	add r1, r1, r2
	ldrb r2, [r4, #7]
	lsl r2, r2, #24
	add r1, r1, r2
	bl LZ77UnCompVram
	add r4, r4, #10
	add r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800C9F8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800CA34
sub_0800CA34: @ 0x0800CA34
	bx lr
	THUMB_FUNC_END sub_0800CA34

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800CA38
sub_0800CA38: @ 0x0800CA38
	bx lr
	THUMB_FUNC_END sub_0800CA38

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800CA3C
sub_0800CA3C: @ 0x0800CA3C
	push {lr}
	ldr r2, _0800CA6C  @ =gUnknown_030004A0
	ldrh r1, [r2]
	ldr r0, _0800CA70  @ =0x0000DFFF
	and r0, r0, r1
	mov r1, #0
	strh r0, [r2]
	ldr r0, _0800CA74  @ =gUnknown_03000BC0
	strb r1, [r0]
	ldr r1, _0800CA78  @ =0x040000B0
	ldrh r2, [r1, #10]
	ldr r0, _0800CA7C  @ =0x0000C5FF
	and r0, r0, r2
	strh r0, [r1, #10]
	ldrh r2, [r1, #10]
	ldr r0, _0800CA80  @ =0x00007FFF
	and r0, r0, r2
	strh r0, [r1, #10]
	ldrh r0, [r1, #10]
	bl sub_0800CA38
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800CA6C:
	.4byte gUnknown_030004A0
_0800CA70:
	.4byte 0x0000DFFF
_0800CA74:
	.4byte gUnknown_03000BC0
_0800CA78:
	.4byte 0x040000B0
_0800CA7C:
	.4byte 0x0000C5FF
_0800CA80:
	.4byte 0x00007FFF
	THUMB_FUNC_END sub_0800CA3C

	THUMB_FUNC_START sub_0800CA84
sub_0800CA84: @ 0x0800CA84
	push {r4,lr}
	ldr r2, _0800CAC4  @ =gUnknown_030004A0
	mov r12, r2
	ldrh r3, [r2]
	mov r4, #128
	lsl r4, r4, #6
	add r2, r4, #0
	orr r2, r2, r3
	mov r3, r12
	strh r2, [r3]
	mov r2, r12
	add r2, r2, #96
	strh r0, [r2]
	mov r0, r12
	add r0, r0, #98
	strh r1, [r0]
	mov r1, r12
	add r1, r1, #92
	mov r0, #160
	strh r0, [r1]
	ldr r1, _0800CAC8  @ =gUnknown_03000BC0
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0800CACC  @ =0x04000040
	str r0, [r1, #8]
	ldr r0, _0800CAD0  @ =0xA2600001
	str r0, [r1, #12]
	bl sub_0800CA34
	pop {r4}
	pop {r0}
	bx r0
_0800CAC4:
	.4byte gUnknown_030004A0
_0800CAC8:
	.4byte gUnknown_03000BC0
_0800CACC:
	.4byte 0x04000040
_0800CAD0:
	.4byte 0xA2600001
	THUMB_FUNC_END sub_0800CA84

	THUMB_FUNC_START sub_0800CAD4
sub_0800CAD4: @ 0x0800CAD4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r2, #0
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r9, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r10, r1
	ldr r0, _0800CB48  @ =gUnknown_02038000
	mov r8, r0
	lsl r4, r4, #16
	lsr r7, r4, #16
	ldr r0, _0800CB4C  @ =gUnknown_03000204
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #6
	ldr r1, _0800CB50  @ =gUnknown_0202A0F0
	add r0, r0, r1
	mov r1, #160
	lsl r1, r1, #1
	bl zero_memory
	add r5, r7, #0
	asr r4, r4, #15
	mov r0, #3
	sub r0, r0, r4
	lsl r0, r0, #16
	lsr r6, r0, #16
	lsl r0, r7, #16
	mov r4, #0
	cmp r0, #0
	blt _0800CB76
_0800CB1E:
	lsl r0, r4, #16
	asr r3, r0, #16
	lsl r0, r3, #1
	add r0, r0, r8
	strh r5, [r0]
	lsl r0, r5, #16
	asr r2, r0, #16
	lsl r0, r2, #1
	add r0, r0, r8
	strh r4, [r0]
	lsl r0, r6, #16
	asr r0, r0, #16
	cmp r0, #0
	bge _0800CB54
	add r0, r0, #6
	lsl r1, r3, #2
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r6, r0, #16
	b _0800CB68
	.byte 0x00
	.byte 0x00
_0800CB48:
	.4byte gUnknown_02038000
_0800CB4C:
	.4byte gUnknown_03000204
_0800CB50:
	.4byte gUnknown_0202A0F0
_0800CB54:
	add r1, r0, #0
	add r1, r1, #10
	sub r0, r3, r2
	lsl r0, r0, #2
	add r1, r1, r0
	lsl r1, r1, #16
	lsr r6, r1, #16
	sub r0, r2, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
_0800CB68:
	add r0, r3, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
	lsl r1, r4, #16
	lsl r0, r5, #16
	cmp r1, r0
	ble _0800CB1E
_0800CB76:
	mov r1, r9
	lsl r0, r1, #16
	asr r0, r0, #16
	mov r2, r10
	lsl r1, r2, #16
	asr r1, r1, #16
	lsl r2, r7, #16
	asr r2, r2, #16
	bl sub_0800CBBC
	ldr r2, _0800CBB0  @ =gUnknown_030004A0
	ldr r3, _0800CBB4  @ =gUnknown_0202A0F0
	ldr r0, _0800CBB8  @ =gUnknown_03000204
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #6
	add r0, r0, r3
	ldrh r0, [r0]
	add r2, r2, #88
	strh r0, [r2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800CBB0:
	.4byte gUnknown_030004A0
_0800CBB4:
	.4byte gUnknown_0202A0F0
_0800CBB8:
	.4byte gUnknown_03000204
	THUMB_FUNC_END sub_0800CAD4

	THUMB_FUNC_START sub_0800CBBC
sub_0800CBBC: @ 0x0800CBBC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r0, _0800CC94  @ =gUnknown_03000204
	ldrb r0, [r0]
	lsl r3, r0, #2
	add r3, r3, r0
	lsl r3, r3, #6
	lsl r4, r1, #16
	asr r0, r4, #15
	ldr r5, _0800CC98  @ =gUnknown_0202A0F0
	add r0, r0, r5
	add r7, r3, r0
	add r6, r7, #0
	mov r12, r1
	lsr r4, r4, #16
	ldr r1, _0800CC9C  @ =gUnknown_02038000
	mov r9, r1
	lsl r2, r2, #16
	ldr r3, _0800CCA0  @ =0xFFFF0000
	add r2, r2, r3
	lsr r0, r2, #16
	mov r8, r0
	asr r2, r2, #16
	mov r1, #1
	neg r1, r1
	cmp r2, r1
	beq _0800CC72
	ldr r2, [sp]
	lsl r0, r2, #16
	asr r5, r0, #16
	mov r10, r1
_0800CC0C:
	mov r3, r9
	ldrh r0, [r3]
	mov r1, #2
	add r9, r9, r1
	lsl r0, r0, #16
	asr r0, r0, #16
	sub r1, r5, r0
	lsl r1, r1, #16
	add r0, r5, r0
	lsl r0, r0, #16
	lsr r2, r0, #16
	lsr r3, r1, #16
	cmp r1, #0
	bge _0800CC2A
	mov r3, #0
_0800CC2A:
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r0, #239
	ble _0800CC34
	mov r2, #240
_0800CC34:
	lsl r4, r4, #16
	lsr r0, r4, #16
	cmp r0, #159
	bhi _0800CC40
	strb r2, [r6]
	strb r3, [r6, #1]
_0800CC40:
	mov r0, r12
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #159
	bhi _0800CC4E
	strb r2, [r7]
	strb r3, [r7, #1]
_0800CC4E:
	sub r6, r6, #2
	add r7, r7, #2
	ldr r2, _0800CCA0  @ =0xFFFF0000
	add r0, r4, r2
	lsr r4, r0, #16
	mov r3, #128
	lsl r3, r3, #9
	add r0, r1, r3
	lsr r0, r0, #16
	mov r12, r0
	mov r1, r8
	lsl r0, r1, #16
	add r0, r0, r2
	lsr r2, r0, #16
	mov r8, r2
	asr r0, r0, #16
	cmp r0, r10
	bne _0800CC0C
_0800CC72:
	ldr r3, _0800CC94  @ =gUnknown_03000204
	ldrb r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #6
	ldr r1, _0800CCA4  @ =gUnknown_0202A0F2
	add r0, r0, r1
	ldr r2, _0800CCA8  @ =gUnknown_03000BC0
	str r0, [r2, #4]
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0800CC94:
	.4byte gUnknown_03000204
_0800CC98:
	.4byte gUnknown_0202A0F0
_0800CC9C:
	.4byte gUnknown_02038000
_0800CCA0:
	.4byte 0xFFFF0000
_0800CCA4:
	.4byte gUnknown_0202A0F2
_0800CCA8:
	.4byte gUnknown_03000BC0
	THUMB_FUNC_END sub_0800CBBC

	THUMB_FUNC_START sub_0800CCAC
sub_0800CCAC: @ 0x0800CCAC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r9, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r10, r1
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r8, r2
	lsl r3, r3, #16
	lsr r7, r3, #16
	ldr r0, _0800CD64  @ =gUnknown_03000204
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #6
	ldr r1, _0800CD68  @ =gUnknown_0202A0F0
	add r0, r0, r1
	mov r1, #160
	lsl r1, r1, #1
	bl zero_memory
	mov r0, r8
	lsl r4, r0, #16
	asr r6, r4, #16
	lsl r3, r7, #16
	asr r5, r3, #16
	cmp r6, r5
	bge _0800CD98
	mov r1, r8
	str r1, [sp]
	lsl r1, r6, #1
	mov r0, #3
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r7, r0, #16
	lsr r2, r4, #16
	mov r8, r2
	mov r2, #0
	mov r3, r9
	lsl r3, r3, #16
	str r3, [sp, #4]
	mov r0, r10
	lsl r0, r0, #16
	str r0, [sp, #8]
	cmp r4, #0
	bge _0800CD18
	b _0800CE2E
_0800CD18:
	mov r10, r5
	mov r9, r6
_0800CD1C:
	lsl r0, r2, #16
	asr r6, r0, #16
	mov r0, r10
	mul r0, r6, r0
	mov r1, r9
	bl __udivsi3
	add r4, r0, #0
	lsl r4, r4, #16
	lsr r4, r4, #16
	mov r1, r8
	lsl r0, r1, #16
	asr r5, r0, #16
	mov r0, r10
	mul r0, r5, r0
	mov r1, r9
	bl __udivsi3
	lsl r1, r6, #1
	ldr r2, _0800CD6C  @ =gUnknown_02038000
	add r1, r1, r2
	strh r0, [r1]
	lsl r0, r5, #1
	add r0, r0, r2
	strh r4, [r0]
	lsl r0, r7, #16
	asr r0, r0, #16
	cmp r0, #0
	bge _0800CD70
	add r0, r0, #6
	lsl r1, r6, #2
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r7, r0, #16
	b _0800CD86
	.byte 0x00
	.byte 0x00
_0800CD64:
	.4byte gUnknown_03000204
_0800CD68:
	.4byte gUnknown_0202A0F0
_0800CD6C:
	.4byte gUnknown_02038000
_0800CD70:
	add r1, r0, #0
	add r1, r1, #10
	sub r0, r6, r5
	lsl r0, r0, #2
	add r1, r1, r0
	lsl r1, r1, #16
	lsr r7, r1, #16
	sub r0, r5, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
_0800CD86:
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	lsl r1, r2, #16
	mov r3, r8
	lsl r0, r3, #16
	cmp r1, r0
	ble _0800CD1C
	b _0800CE2E
_0800CD98:
	str r7, [sp]
	lsl r1, r5, #1
	mov r0, #3
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r7, r0, #16
	lsr r0, r3, #16
	mov r8, r0
	mov r2, #0
	mov r1, r9
	lsl r1, r1, #16
	str r1, [sp, #4]
	mov r0, r10
	lsl r0, r0, #16
	str r0, [sp, #8]
	cmp r3, #0
	blt _0800CE2E
	mov r10, r6
	mov r9, r5
_0800CDBE:
	lsl r0, r2, #16
	asr r6, r0, #16
	mov r0, r10
	mul r0, r6, r0
	mov r1, r9
	bl __udivsi3
	add r4, r0, #0
	lsl r4, r4, #16
	lsr r4, r4, #16
	mov r1, r8
	lsl r0, r1, #16
	asr r5, r0, #16
	mov r0, r10
	mul r0, r5, r0
	mov r1, r9
	bl __udivsi3
	lsl r1, r6, #1
	ldr r2, _0800CE04  @ =gUnknown_02038000
	add r1, r1, r2
	strh r0, [r1]
	lsl r0, r5, #1
	add r0, r0, r2
	strh r4, [r0]
	lsl r0, r7, #16
	asr r0, r0, #16
	cmp r0, #0
	bge _0800CE08
	add r0, r0, #6
	lsl r1, r6, #2
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r7, r0, #16
	b _0800CE1E
_0800CE04:
	.4byte gUnknown_02038000
_0800CE08:
	add r1, r0, #0
	add r1, r1, #10
	sub r0, r6, r5
	lsl r0, r0, #2
	add r1, r1, r0
	lsl r1, r1, #16
	lsr r7, r1, #16
	sub r0, r5, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
_0800CE1E:
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	lsl r1, r2, #16
	mov r3, r8
	lsl r0, r3, #16
	cmp r1, r0
	ble _0800CDBE
_0800CE2E:
	ldr r1, [sp, #4]
	asr r0, r1, #16
	ldr r2, [sp, #8]
	asr r1, r2, #16
	ldr r3, [sp]
	lsl r2, r3, #16
	asr r2, r2, #16
	bl sub_0800CBBC
	ldr r2, _0800CE68  @ =gUnknown_030004A0
	ldr r3, _0800CE6C  @ =gUnknown_0202A0F0
	ldr r0, _0800CE70  @ =gUnknown_03000204
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #6
	add r0, r0, r3
	ldrh r0, [r0]
	add r2, r2, #88
	strh r0, [r2]
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800CE68:
	.4byte gUnknown_030004A0
_0800CE6C:
	.4byte gUnknown_0202A0F0
_0800CE70:
	.4byte gUnknown_03000204
	THUMB_FUNC_END sub_0800CCAC

	THUMB_FUNC_START sub_0800CE74
sub_0800CE74: @ 0x0800CE74
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #44
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #8]
	lsl r3, r3, #16
	str r3, [sp, #12]
	lsr r3, r3, #16
	mov r10, r3
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp, #16]
	lsl r0, r1, #16
	lsr r0, r0, #16
	mov r9, r0
	lsl r0, r2, #16
	lsr r7, r0, #16
	add r1, sp, #4
	ldr r4, _0800D02C  @ =0x0000FFFF
	add r0, r4, #0
	strh r0, [r1]
	ldr r2, _0800D030  @ =0x010001E0
	add r0, r1, #0
	ldr r1, _0800D034  @ =gUnknown_02038000
	bl CpuSet
	lsl r0, r7, #16
	asr r7, r0, #16
	add r4, r7, #0
	sub r4, r4, #64
	mov r2, #255
	and r4, r4, r2
	mov r5, r10
	lsl r5, r5, #16
	asr r0, r5, #16
	str r0, [sp, #24]
	mov r1, r9
	lsl r0, r1, #16
	asr r0, r0, #16
	mov r10, r0
	ldr r1, _0800D038  @ =gUnknown_0813E4CC
	add r0, r4, #0
	add r0, r0, #64
	lsl r0, r0, #1
	add r0, r0, r1
	mov r3, #0
	ldrsh r0, [r0, r3]
	mov r5, r10
	mul r5, r0, r5
	add r0, r5, #0
	asr r0, r0, #8
	ldr r5, [sp, #24]
	add r3, r5, r0
	ldr r5, [sp, #16]
	lsl r0, r5, #16
	asr r0, r0, #16
	mov r12, r0
	lsl r0, r4, #1
	add r0, r0, r1
	mov r4, #0
	ldrsh r0, [r0, r4]
	mov r5, r10
	mul r5, r0, r5
	add r0, r5, #0
	asr r0, r0, #8
	add r0, r0, r12
	mov r9, r0
	add r4, r7, #0
	add r4, r4, #104
	and r4, r4, r2
	add r0, r4, #0
	add r0, r0, #64
	lsl r0, r0, #1
	add r0, r0, r1
	mov r5, #0
	ldrsh r0, [r0, r5]
	mov r5, r10
	mul r5, r0, r5
	add r0, r5, #0
	asr r0, r0, #8
	ldr r5, [sp, #24]
	add r6, r5, r0
	lsl r0, r4, #1
	add r0, r0, r1
	mov r4, #0
	ldrsh r0, [r0, r4]
	mov r5, r10
	mul r5, r0, r5
	add r0, r5, #0
	asr r0, r0, #8
	mov r4, r12
	add r5, r4, r0
	add r4, r7, #0
	sub r4, r4, #232
	and r4, r4, r2
	add r0, r4, #0
	add r0, r0, #64
	lsl r0, r0, #1
	add r0, r0, r1
	mov r2, #0
	ldrsh r0, [r0, r2]
	mov r2, r10
	mul r2, r0, r2
	add r0, r2, #0
	asr r0, r0, #8
	ldr r2, [sp, #24]
	add r7, r2, r0
	lsl r0, r4, #1
	add r0, r0, r1
	mov r4, #0
	ldrsh r0, [r0, r4]
	mov r1, r10
	mul r1, r0, r1
	add r0, r1, #0
	asr r0, r0, #8
	add r0, r0, r12
	str r0, [sp, #20]
	lsl r3, r3, #16
	asr r2, r3, #16
	str r2, [sp, #32]
	mov r3, r9
	lsl r0, r3, #16
	asr r0, r0, #16
	str r0, [sp, #40]
	lsl r6, r6, #16
	mov r10, r6
	mov r4, r10
	asr r4, r4, #16
	mov r10, r4
	lsl r5, r5, #16
	mov r9, r5
	asr r5, r5, #16
	mov r9, r5
	mov r0, #0
	str r0, [sp]
	add r0, r2, #0
	ldr r1, [sp, #40]
	mov r2, r10
	mov r3, r9
	bl sub_0800D0A8
	lsl r0, r7, #16
	asr r0, r0, #16
	mov r8, r0
	ldr r1, [sp, #20]
	lsl r0, r1, #16
	asr r7, r0, #16
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #32]
	ldr r1, [sp, #40]
	mov r2, r8
	add r3, r7, #0
	bl sub_0800D0A8
	mov r0, #2
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	add r3, r7, #0
	bl sub_0800D0A8
	ldr r7, _0800D03C  @ =gUnknown_03000204
	ldrb r1, [r7]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #6
	ldr r6, _0800D040  @ =gUnknown_0202A0F0
	add r0, r0, r6
	mov r1, #160
	lsl r1, r1, #1
	bl zero_memory
	ldr r2, _0800D034  @ =gUnknown_02038000
	ldrb r1, [r7]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #6
	add r1, r0, r6
	mov r3, #160
	mov r9, r3
_0800CFEC:
	mov r4, #0
	ldrsh r3, [r2, r4]
	add r2, r2, #2
	mov r5, #0
	ldrsh r6, [r2, r5]
	add r2, r2, #2
	mov r0, #0
	ldrsh r7, [r2, r0]
	add r2, r2, #2
	cmp r3, r6
	ble _0800D008
	add r5, r3, #0
	add r3, r6, #0
	add r6, r5, #0
_0800D008:
	cmp r3, r7
	ble _0800D012
	add r5, r3, #0
	add r3, r7, #0
	add r7, r5, #0
_0800D012:
	cmp r6, r7
	ble _0800D01C
	add r5, r6, #0
	add r6, r7, #0
	add r7, r5, #0
_0800D01C:
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	beq _0800D044
	strb r7, [r1]
	strb r3, [r1, #1]
	b _0800D056
	.byte 0x00
	.byte 0x00
_0800D02C:
	.4byte 0x0000FFFF
_0800D030:
	.4byte 0x010001E0
_0800D034:
	.4byte gUnknown_02038000
_0800D038:
	.4byte gUnknown_0813E4CC
_0800D03C:
	.4byte gUnknown_03000204
_0800D040:
	.4byte gUnknown_0202A0F0
_0800D044:
	cmp r6, r3
	beq _0800D04E
	strb r7, [r1]
	strb r6, [r1, #1]
	b _0800D056
_0800D04E:
	cmp r7, r3
	beq _0800D056
	strb r3, [r1, #1]
	strb r3, [r1]
_0800D056:
	mov r3, #1
	neg r3, r3
	add r9, r9, r3
	add r1, r1, #2
	mov r4, r9
	cmp r4, #0
	bgt _0800CFEC
	ldr r2, _0800D098  @ =gUnknown_030004A0
	ldr r5, _0800D09C  @ =gUnknown_0202A0F0
	ldr r3, _0800D0A0  @ =gUnknown_03000204
	ldrb r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #6
	add r0, r0, r5
	ldrh r0, [r0]
	add r2, r2, #88
	strh r0, [r2]
	ldr r2, _0800D0A4  @ =gUnknown_03000BC0
	ldrb r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #6
	add r0, r0, r5
	str r0, [r2, #4]
	add sp, sp, #44
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0800D098:
	.4byte gUnknown_030004A0
_0800D09C:
	.4byte gUnknown_0202A0F0
_0800D0A0:
	.4byte gUnknown_03000204
_0800D0A4:
	.4byte gUnknown_03000BC0
	THUMB_FUNC_END sub_0800CE74

	THUMB_FUNC_START sub_0800D0A8
sub_0800D0A8: @ 0x0800D0A8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r4, [sp, #36]
	lsl r0, r0, #16
	lsr r5, r0, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r8, r1
	lsl r2, r2, #16
	lsr r2, r2, #16
	lsl r3, r3, #16
	lsr r6, r3, #16
	lsl r4, r4, #16
	lsr r4, r4, #16
	str r4, [sp]
	ldr r0, _0800D19C  @ =gUnknown_02038000
	mov r10, r0
	lsl r7, r1, #16
	asr r1, r7, #16
	cmp r1, #0
	bge _0800D0E0
	lsl r0, r6, #16
	cmp r0, #0
	blt _0800D18C
_0800D0E0:
	cmp r1, #159
	ble _0800D0EC
	lsl r0, r6, #16
	asr r0, r0, #16
	cmp r0, #159
	bgt _0800D18C
_0800D0EC:
	lsl r3, r6, #16
	asr r0, r3, #16
	cmp r1, r0
	ble _0800D100
	lsr r3, r3, #16
	mov r8, r3
	lsr r6, r7, #16
	add r0, r5, #0
	add r5, r2, #0
	add r2, r0, #0
_0800D100:
	mov r1, r8
	lsl r0, r1, #16
	asr r4, r0, #16
	lsl r0, r6, #16
	asr r7, r0, #16
	cmp r4, r7
	beq _0800D18C
	lsl r0, r2, #16
	asr r0, r0, #16
	lsl r1, r5, #16
	asr r1, r1, #16
	mov r9, r1
	sub r0, r0, r1
	lsl r0, r0, #16
	sub r1, r7, r4
	bl __divsi3
	add r3, r0, #0
	cmp r4, #0
	bge _0800D138
	neg r0, r4
	mul r0, r3, r0
	asr r0, r0, #16
	add r0, r0, r9
	lsl r0, r0, #16
	lsr r5, r0, #16
	mov r4, #0
	mov r8, r4
_0800D138:
	cmp r7, #159
	ble _0800D13E
	mov r6, #159
_0800D13E:
	lsl r2, r5, #16
	mov r0, r8
	lsl r1, r0, #16
	asr r1, r1, #16
	lsl r0, r1, #1
	add r0, r0, r1
	ldr r4, [sp]
	lsl r1, r4, #16
	asr r1, r1, #16
	add r0, r0, r1
	lsl r0, r0, #1
	add r10, r10, r0
	lsl r0, r6, #16
	asr r1, r0, #16
_0800D15A:
	lsl r0, r5, #16
	cmp r0, #0
	bge _0800D162
	mov r5, #0
_0800D162:
	lsl r0, r5, #16
	asr r0, r0, #16
	cmp r0, #240
	ble _0800D16C
	mov r5, #240
_0800D16C:
	mov r0, r10
	strh r5, [r0]
	add r2, r2, r3
	lsr r5, r2, #16
	mov r4, r8
	lsl r0, r4, #16
	mov r4, #128
	lsl r4, r4, #9
	add r0, r0, r4
	mov r4, #6
	add r10, r10, r4
	lsr r4, r0, #16
	mov r8, r4
	asr r0, r0, #16
	cmp r0, r1
	ble _0800D15A
_0800D18C:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0800D19C:
	.4byte gUnknown_02038000
	THUMB_FUNC_END sub_0800D0A8

	THUMB_FUNC_START sub_0800D1A0
sub_0800D1A0: @ 0x0800D1A0
	push {r4,lr}
	ldr r4, _0800D1BC  @ =gUnknown_0201EDA8
	add r0, r4, #0
	mov r1, #8
	bl zero_memory
	mov r0, #0
	strh r0, [r4, #2]
	mov r0, #128
	lsl r0, r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
_0800D1BC:
	.4byte gUnknown_0201EDA8
	THUMB_FUNC_END sub_0800D1A0

	THUMB_FUNC_START sub_0800D1C0
sub_0800D1C0: @ 0x0800D1C0
	push {lr}
	add r3, r0, #0
	add r2, r1, #0
	ldrb r0, [r3, #8]
	cmp r0, #1
	bne _0800D1E8
	ldr r1, _0800D1F4  @ =gLCDRegisterBuffer
	ldrb r0, [r3, #10]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0800D1E8
	ldr r1, _0800D1F8  @ =0x0000FFFF
	and r1, r1, r2
	cmp r1, #199
	bhi _0800D1E8
	ldr r0, _0800D1FC  @ =0xFFFF0000
	and r2, r2, r0
	add r0, r1, #0
	add r0, r0, #200
	orr r2, r2, r0
_0800D1E8:
	add r0, r2, #0
	bl play_sound
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800D1F4:
	.4byte gLCDRegisterBuffer
_0800D1F8:
	.4byte 0x0000FFFF
_0800D1FC:
	.4byte 0xFFFF0000
	THUMB_FUNC_END sub_0800D1C0

	THUMB_FUNC_START sub_0800D200
sub_0800D200: @ 0x0800D200
	push {r4,lr}
	add r2, r0, #0
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r1, _0800D23C  @ =gUnknown_0201EDA8
	mov r0, #128
	lsl r0, r0, #1
	eor r0, r0, r2
	neg r0, r0
	lsr r0, r0, #31
	strb r0, [r1, #4]
	strh r2, [r1]
	ldr r4, _0800D240  @ =gUnknown_083C3A3C
	ldr r3, _0800D244  @ =gSongTable
	ldrh r0, [r1, #2]
	lsl r0, r0, #3
	add r0, r0, r3
	ldrh r1, [r0, #4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0800D248  @ =0x0000FFFF
	bl sub_081356B0
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800D23C:
	.4byte gUnknown_0201EDA8
_0800D240:
	.4byte gUnknown_083C3A3C
_0800D244:
	.4byte gSongTable
_0800D248:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_0800D200

	THUMB_FUNC_START play_sound
play_sound: @ 0x0800D24C
	push {r4-r6,lr}
	add r5, r0, #0
	ldr r0, _0800D28C  @ =gUnknown_03000830
	ldrb r2, [r0]
	cmp r2, #0
	beq _0800D25A
	b _0800D4D8
_0800D25A:
	cmp r5, #0
	blt _0800D260
	b _0800D480
_0800D260:
	ldr r1, _0800D290  @ =0xFFFF0000
	and r1, r1, r5
	ldr r0, _0800D294  @ =0x80070000
	cmp r1, r0
	bne _0800D26C
	b _0800D3D8
_0800D26C:
	cmp r1, r0
	bhi _0800D2CC
	ldr r0, _0800D298  @ =0x80030000
	cmp r1, r0
	bne _0800D278
	b _0800D4D8
_0800D278:
	cmp r1, r0
	bhi _0800D2A4
	ldr r0, _0800D29C  @ =0x80010000
	cmp r1, r0
	beq _0800D328
	ldr r0, _0800D2A0  @ =0x80020000
	cmp r1, r0
	bne _0800D28A
	b _0800D3E2
_0800D28A:
	b _0800D4D8
_0800D28C:
	.4byte gUnknown_03000830
_0800D290:
	.4byte 0xFFFF0000
_0800D294:
	.4byte 0x80070000
_0800D298:
	.4byte 0x80030000
_0800D29C:
	.4byte 0x80010000
_0800D2A0:
	.4byte 0x80020000
_0800D2A4:
	ldr r0, _0800D2B8  @ =0x80050000
	cmp r1, r0
	beq _0800D370
	cmp r1, r0
	bhi _0800D2C0
	ldr r0, _0800D2BC  @ =0x80040000
	cmp r1, r0
	beq _0800D338
	b _0800D4D8
	.byte 0x00
	.byte 0x00
_0800D2B8:
	.4byte 0x80050000
_0800D2BC:
	.4byte 0x80040000
_0800D2C0:
	ldr r0, _0800D2C8  @ =0x80060000
	cmp r1, r0
	beq _0800D3A8
	b _0800D4D8
_0800D2C8:
	.4byte 0x80060000
_0800D2CC:
	ldr r0, _0800D2EC  @ =0x800A0000
	cmp r1, r0
	bne _0800D2D4
	b _0800D3F4
_0800D2D4:
	cmp r1, r0
	bhi _0800D2F8
	ldr r0, _0800D2F0  @ =0x80080000
	cmp r1, r0
	bne _0800D2E0
	b _0800D3E2
_0800D2E0:
	ldr r0, _0800D2F4  @ =0x80090000
	cmp r1, r0
	bne _0800D2E8
	b _0800D3F0
_0800D2E8:
	b _0800D4D8
	.byte 0x00
	.byte 0x00
_0800D2EC:
	.4byte 0x800A0000
_0800D2F0:
	.4byte 0x80080000
_0800D2F4:
	.4byte 0x80090000
_0800D2F8:
	ldr r0, _0800D310  @ =0x800C0000
	cmp r1, r0
	bne _0800D300
	b _0800D418
_0800D300:
	cmp r1, r0
	bhi _0800D318
	ldr r0, _0800D314  @ =0x800B0000
	cmp r1, r0
	bne _0800D30C
	b _0800D408
_0800D30C:
	b _0800D4D8
	.byte 0x00
	.byte 0x00
_0800D310:
	.4byte 0x800C0000
_0800D314:
	.4byte 0x800B0000
_0800D318:
	ldr r0, _0800D324  @ =0x800D0000
	cmp r1, r0
	bne _0800D320
	b _0800D490
_0800D320:
	b _0800D4D8
	.byte 0x00
	.byte 0x00
_0800D324:
	.4byte 0x800D0000
_0800D328:
	ldr r0, _0800D334  @ =gUnknown_0201EDA8
	strh r2, [r0, #2]
	bl sub_0813483C
	b _0800D4D8
	.byte 0x00
	.byte 0x00
_0800D334:
	.4byte gUnknown_0201EDA8
_0800D338:
	lsl r0, r5, #16
	lsr r3, r0, #16
	cmp r3, #0
	bne _0800D342
	mov r3, #4
_0800D342:
	ldr r2, _0800D364  @ =gUnknown_083C3A3C
	ldr r1, _0800D368  @ =gSongTable
	ldr r0, _0800D36C  @ =gUnknown_0201EDA8
	ldrh r0, [r0, #2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrh r1, [r0, #4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
	add r1, r3, #0
	bl sub_081348B0
	b _0800D4D8
	.byte 0x00
	.byte 0x00
_0800D364:
	.4byte gUnknown_083C3A3C
_0800D368:
	.4byte gSongTable
_0800D36C:
	.4byte gUnknown_0201EDA8
_0800D370:
	lsl r0, r5, #16
	lsr r3, r0, #16
	cmp r3, #0
	bne _0800D37A
	mov r3, #4
_0800D37A:
	ldr r2, _0800D39C  @ =gUnknown_083C3A3C
	ldr r1, _0800D3A0  @ =gSongTable
	ldr r0, _0800D3A4  @ =gUnknown_0201EDA8
	ldrh r0, [r0, #2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrh r1, [r0, #4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
	add r1, r3, #0
	bl sub_081348D0
	b _0800D4D8
	.byte 0x00
	.byte 0x00
_0800D39C:
	.4byte gUnknown_083C3A3C
_0800D3A0:
	.4byte gSongTable
_0800D3A4:
	.4byte gUnknown_0201EDA8
_0800D3A8:
	ldr r2, _0800D3CC  @ =gUnknown_083C3A3C
	ldr r1, _0800D3D0  @ =gSongTable
	ldr r0, _0800D3D4  @ =gUnknown_0201EDA8
	ldrh r0, [r0, #2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrh r1, [r0, #4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
	lsl r1, r5, #16
	lsr r1, r1, #16
	bl sub_08135688
	b _0800D4D8
	.byte 0x00
	.byte 0x00
_0800D3CC:
	.4byte gUnknown_083C3A3C
_0800D3D0:
	.4byte gSongTable
_0800D3D4:
	.4byte gUnknown_0201EDA8
_0800D3D8:
	bl sub_0813483C
	bl sub_08134D0C
	b _0800D4D8
_0800D3E2:
	ldr r0, _0800D3EC  @ =gUnknown_0201EDA8
	ldrh r0, [r0, #2]
	bl sub_081347D4
	b _0800D4D8
_0800D3EC:
	.4byte gUnknown_0201EDA8
_0800D3F0:
	bl sub_08134D88
_0800D3F4:
	ldr r1, _0800D404  @ =gUnknown_0201EDA8
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _0800D4D8
	bl sub_08134780
	b _0800D4D8
	.byte 0x00
	.byte 0x00
_0800D404:
	.4byte gUnknown_0201EDA8
_0800D408:
	ldr r4, _0800D414  @ =gUnknown_0201EDA8
	strh r5, [r4, #2]
	ldrh r0, [r4, #2]
	bl sub_08134708
	b _0800D422
_0800D414:
	.4byte gUnknown_0201EDA8
_0800D418:
	ldr r4, _0800D470  @ =gUnknown_0201EDA8
	strh r5, [r4, #2]
	ldrh r0, [r4, #2]
	bl sub_08134780
_0800D422:
	ldr r6, _0800D474  @ =gUnknown_083C3A3C
	ldr r5, _0800D478  @ =gSongTable
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrh r1, [r0, #4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldr r0, [r0]
	bl sub_081348F8
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrh r1, [r0, #4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldr r0, [r0]
	ldr r1, _0800D47C  @ =0x0000FFFF
	mov r2, #0
	bl sub_081356B0
	ldrh r0, [r4, #2]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrh r1, [r0, #4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldr r0, [r0]
	mov r1, #4
	bl sub_081348D0
	b _0800D4D8
_0800D470:
	.4byte gUnknown_0201EDA8
_0800D474:
	.4byte gUnknown_083C3A3C
_0800D478:
	.4byte gSongTable
_0800D47C:
	.4byte 0x0000FFFF
_0800D480:
	cmp r5, #0
	beq _0800D4D8
	ldr r1, _0800D49C  @ =0xFFFFFE70
	add r0, r5, r1
	cmp r0, #99
	bhi _0800D4A4
	ldr r0, _0800D4A0  @ =gUnknown_0201EDA8
	strh r5, [r0, #2]
_0800D490:
	lsl r0, r5, #16
	lsr r0, r0, #16
	bl sub_08134708
	b _0800D4D8
	.byte 0x00
	.byte 0x00
_0800D49C:
	.4byte 0xFFFFFE70
_0800D4A0:
	.4byte gUnknown_0201EDA8
_0800D4A4:
	lsl r0, r5, #16
	lsr r0, r0, #16
	bl sub_08134708
	ldr r6, _0800D4E0  @ =gUnknown_0201EDA8
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _0800D4D8
	ldr r2, _0800D4E4  @ =gUnknown_083C3A3C
	ldr r1, _0800D4E8  @ =gSongTable
	lsl r0, r5, #3
	add r0, r0, r1
	ldrh r1, [r0, #4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r4, [r0]
	add r0, r4, #0
	bl sub_081348F8
	ldr r1, _0800D4EC  @ =0x0000FFFF
	ldrh r2, [r6]
	add r0, r4, #0
	bl sub_081356B0
_0800D4D8:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800D4E0:
	.4byte gUnknown_0201EDA8
_0800D4E4:
	.4byte gUnknown_083C3A3C
_0800D4E8:
	.4byte gSongTable
_0800D4EC:
	.4byte 0x0000FFFF
	THUMB_FUNC_END play_sound

    .ALIGN 2, 0
