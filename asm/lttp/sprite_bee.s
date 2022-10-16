	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_080D00B0
sub_080D00B0: @ 0x080D00B0
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	add r5, r0, #0
	lsl r5, r5, #24
	lsr r5, r5, #24
	mov r2, #3
	and r2, r2, r5
	ldr r6, _080D0124  @ =gRam
	ldr r1, _080D0128  @ =0x00000F52
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #1
	strb r1, [r0]
	ldr r0, _080D012C  @ =0x00000FC2
	add r1, r6, r0
	add r1, r5, r1
	ldr r0, _080D0130  @ =gUnknown_08174A38
	add r2, r2, r0
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r1, _080D0134  @ =0x00000F62
	add r0, r6, r1
	add r0, r5, r0
	strb r2, [r0]
	ldr r1, _080D0138  @ =0x000010E2
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #96
	strb r1, [r0]
	bl GetRandomInt
	ldr r1, _080D013C  @ =0x00000F22
	add r2, r6, r1
	add r2, r5, r2
	ldr r1, _080D0140  @ =gUnknown_08174A28
	mov r8, r1
	mov r4, #7
	add r1, r4, #0
	and r1, r1, r0
	add r1, r1, r8
	ldrb r0, [r1]
	strb r0, [r2]
	bl GetRandomInt
	ldr r1, _080D0144  @ =0x00000F12
	add r6, r6, r1
	add r5, r5, r6
	and r4, r4, r0
	add r4, r4, r8
	ldrb r0, [r4]
	strb r0, [r5]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D0124:
	.4byte gRam
_080D0128:
	.4byte 0x00000F52
_080D012C:
	.4byte 0x00000FC2
_080D0130:
	.4byte gUnknown_08174A38
_080D0134:
	.4byte 0x00000F62
_080D0138:
	.4byte 0x000010E2
_080D013C:
	.4byte 0x00000F22
_080D0140:
	.4byte gUnknown_08174A28
_080D0144:
	.4byte 0x00000F12
	THUMB_FUNC_END sub_080D00B0

	THUMB_FUNC_START sub_080D0148
sub_080D0148: @ 0x080D0148
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_080D0FF8
	add r0, r7, #0
	bl sub_080C58F0
	add r0, r7, #0
	bl sub_080D05AC
	add r0, r7, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D017C
	b _080D045E
_080D017C:
	add r0, r7, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D018A
	b _080D045E
_080D018A:
	ldr r2, _080D0290  @ =gRam
	ldr r1, _080D0294  @ =0x00001082
	add r0, r2, r1
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D01A2
	add r0, r7, #0
	str r2, [sp, #8]
	bl sub_080C9400
	ldr r2, [sp, #8]
_080D01A2:
	add r0, r7, #0
	str r2, [sp, #8]
	bl sub_080D057C
	mov r1, #0
	ldr r2, [sp, #8]
	ldr r3, _080D0298  @ =0x000009DA
	add r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #173
	bne _080D01BA
	mov r1, #1
_080D01BA:
	cmp r1, #0
	bne _080D01C0
	b _080D02D4
_080D01C0:
	ldr r4, _080D029C  @ =0x00000FD2
	add r0, r2, r4
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D01CE
	b _080D02D4
_080D01CE:
	ldr r0, _080D02A0  @ =0x00000EE2
	add r5, r2, r0
	ldrb r0, [r5]
	ldr r1, _080D02A4  @ =0x00000968
	add r6, r2, r1
	strb r0, [r6]
	ldr r3, _080D02A8  @ =0x00000F02
	add r4, r2, r3
	ldrb r1, [r4]
	ldr r3, _080D02AC  @ =0x00000969
	add r0, r2, r3
	strb r1, [r0]
	ldr r0, _080D02B0  @ =0x00000ED2
	add r0, r0, r2
	mov r9, r0
	ldrb r0, [r0]
	ldr r1, _080D02B4  @ =0x0000096C
	add r3, r2, r1
	strb r0, [r3]
	ldr r0, _080D02B8  @ =0x00000EF2
	add r0, r0, r2
	mov r8, r0
	ldrb r1, [r0]
	mov r10, r1
	ldr r1, _080D02BC  @ =0x0000096D
	add r0, r2, r1
	mov r1, r10
	strb r1, [r0]
	ldr r1, _080D02C0  @ =0x00001142
	add r0, r2, r1
	ldrb r1, [r0]
	ldrh r0, [r3]
	sub r0, r0, r1
	mov r1, #0
	mov r10, r1
	strh r0, [r3]
	add r0, r7, #0
	mov r1, #24
	str r2, [sp, #8]
	str r3, [sp, #12]
	bl sub_080C2DCC
	ldr r2, [sp, #8]
	ldr r1, _080D02C4  @ =0x00000F12
	add r0, r2, r1
	add r0, r7, r0
	str r0, [sp, #16]
	mov r0, #150
	lsl r0, r0, #4
	ldrb r1, [r0, r2]
	ldr r0, [sp, #16]
	strb r1, [r0]
	ldr r1, _080D02C8  @ =0x00000F22
	add r0, r2, r1
	add r0, r7, r0
	str r0, [sp, #16]
	ldr r0, _080D02CC  @ =0x00000961
	ldrb r1, [r0, r2]
	ldr r0, [sp, #16]
	strb r1, [r0]
	add r5, r7, r5
	ldrb r1, [r5]
	add r4, r7, r4
	ldrb r0, [r4]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldrh r0, [r6]
	lsl r1, r1, #16
	asr r1, r1, #16
	sub r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, [sp, #12]
	cmp r1, #23
	bhi _080D02D4
	mov r1, r9
	add r0, r7, r1
	ldrb r1, [r0]
	mov r4, r8
	add r0, r7, r4
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldrh r0, [r3]
	lsl r1, r1, #16
	asr r1, r1, #16
	sub r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #23
	bhi _080D02D4
	ldr r1, _080D02D0  @ =0x00000FA2
	add r0, r2, r1
	add r0, r7, r0
	mov r2, r10
	strb r2, [r0]
	b _080D045E
_080D0290:
	.4byte gRam
_080D0294:
	.4byte 0x00001082
_080D0298:
	.4byte 0x000009DA
_080D029C:
	.4byte 0x00000FD2
_080D02A0:
	.4byte 0x00000EE2
_080D02A4:
	.4byte 0x00000968
_080D02A8:
	.4byte 0x00000F02
_080D02AC:
	.4byte 0x00000969
_080D02B0:
	.4byte 0x00000ED2
_080D02B4:
	.4byte 0x0000096C
_080D02B8:
	.4byte 0x00000EF2
_080D02BC:
	.4byte 0x0000096D
_080D02C0:
	.4byte 0x00001142
_080D02C4:
	.4byte 0x00000F12
_080D02C8:
	.4byte 0x00000F22
_080D02CC:
	.4byte 0x00000961
_080D02D0:
	.4byte 0x00000FA2
_080D02D4:
	add r0, r7, #0
	bl Sprite3_Move
	ldr r4, _080D03F8  @ =gRam
	ldr r3, _080D03FC  @ =0x00000F92
	add r2, r4, r3
	add r2, r7, r2
	ldr r1, _080D0400  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	add r0, r7, #0
	eor r0, r0, r1
	lsr r0, r0, #1
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	ldr r2, _080D0404  @ =0x000010E2
	add r0, r4, r2
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D0332
	add r0, r7, #0
	bl sub_080C4F98
	mov r0, sp
	add r1, r7, #0
	bl sub_080C4948
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D0332
	mov r2, sp
	add r2, r2, #1
	add r0, r7, #0
	mov r1, #203
	bl sub_080C9564
	ldr r3, _080D0408  @ =0x00000F52
	add r1, r4, r3
	add r1, r7, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r4, #0
	str r4, [sp, #4]
_080D0332:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _080D033A
	b _080D045E
_080D033A:
	ldr r0, _080D03F8  @ =gRam
	ldr r2, _080D0400  @ =0x00000996
	add r1, r0, r2
	ldrb r1, [r1]
	mov r8, r0
	cmp r1, #0
	bne _080D0358
	ldr r0, _080D040C  @ =0x00000F62
	add r0, r0, r8
	add r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #16
	beq _080D0358
	sub r0, r0, #8
	strb r0, [r1]
_080D0358:
	mov r6, r8
	ldr r3, _080D0410  @ =0x00000FC2
	add r0, r6, r3
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D045E
	bl GetRandomInt
	mov r4, #3
	add r2, r4, #0
	and r2, r2, r0
	ldr r1, _080D0414  @ =0x000016C4
	add r0, r6, r1
	ldrb r1, [r0]
	ldr r3, _080D0418  @ =0x000016C5
	add r0, r6, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	ldr r5, _080D041C  @ =gUnknown_08174A3C
	add r2, r2, r5
	orr r1, r1, r0
	ldrb r2, [r2]
	add r1, r1, r2
	ldr r2, _080D0420  @ =0x00000968
	add r0, r6, r2
	strh r1, [r0]
	bl GetRandomInt
	and r4, r4, r0
	mov r3, #182
	lsl r3, r3, #5
	add r0, r6, r3
	ldrb r1, [r0]
	ldr r2, _080D0424  @ =0x000016C1
	add r0, r6, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r4, r4, r5
	orr r1, r1, r0
	ldrb r4, [r4]
	add r1, r1, r4
	ldr r3, _080D0428  @ =0x0000096C
	add r0, r6, r3
	strh r1, [r0]
	add r0, r7, #0
	mov r1, #20
	bl sub_080C2DCC
	ldr r4, _080D042C  @ =0x00000F12
	add r0, r6, r4
	add r0, r7, r0
	mov r1, #150
	lsl r1, r1, #4
	add r2, r6, r1
	ldrb r1, [r2]
	strb r1, [r0]
	ldr r3, _080D0430  @ =0x00000F22
	add r0, r6, r3
	add r0, r7, r0
	ldr r4, _080D0434  @ =0x00000961
	add r1, r6, r4
	ldrb r1, [r1]
	strb r1, [r0]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _080D043C
	ldr r1, _080D0438  @ =0x00001122
	add r0, r6, r1
	add r0, r7, r0
	ldrb r1, [r0]
	mov r2, #64
	orr r1, r1, r2
	b _080D0448
	.byte 0x00
	.byte 0x00
_080D03F8:
	.4byte gRam
_080D03FC:
	.4byte 0x00000F92
_080D0400:
	.4byte 0x00000996
_080D0404:
	.4byte 0x000010E2
_080D0408:
	.4byte 0x00000F52
_080D040C:
	.4byte 0x00000F62
_080D0410:
	.4byte 0x00000FC2
_080D0414:
	.4byte 0x000016C4
_080D0418:
	.4byte 0x000016C5
_080D041C:
	.4byte gUnknown_08174A3C
_080D0420:
	.4byte 0x00000968
_080D0424:
	.4byte 0x000016C1
_080D0428:
	.4byte 0x0000096C
_080D042C:
	.4byte 0x00000F12
_080D0430:
	.4byte 0x00000F22
_080D0434:
	.4byte 0x00000961
_080D0438:
	.4byte 0x00001122
_080D043C:
	ldr r0, _080D0470  @ =0x00001122
	add r0, r0, r8
	add r0, r7, r0
	ldrb r2, [r0]
	mov r1, #191
	and r1, r1, r2
_080D0448:
	strb r1, [r0]
	ldr r0, _080D0474  @ =gRam
	ldr r2, _080D0478  @ =0x00000FC2
	add r1, r0, r2
	add r1, r7, r1
	ldr r3, _080D047C  @ =0x00000F62
	add r0, r0, r3
	add r0, r7, r0
	ldrb r0, [r0]
	add r0, r7, r0
	strb r0, [r1]
_080D045E:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D0470:
	.4byte 0x00001122
_080D0474:
	.4byte gRam
_080D0478:
	.4byte 0x00000FC2
_080D047C:
	.4byte 0x00000F62
	THUMB_FUNC_END sub_080D0148

	THUMB_FUNC_START sub_080D0480
sub_080D0480: @ 0x080D0480
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r7, #1
	add r0, r4, #0
	bl sub_080D05AC
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D0504
	ldr r5, _080D04C0  @ =gRam
	ldr r1, _080D04C4  @ =0x00001AE2
	add r0, r5, r1
	ldrb r6, [r0]
	cmp r6, #0
	bne _080D04EA
	bl sub_080C99F8
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _080D04C8
	add r0, r4, #0
	mov r1, #205
	mov r2, sp
	bl sub_080C9564
	b _080D04EA
_080D04C0:
	.4byte gRam
_080D04C4:
	.4byte 0x00001AE2
_080D04C8:
	ldr r1, _080D050C  @ =gUnknown_0817276C
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, _080D0510  @ =0x00001082
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	add r0, r0, #7
	strb r0, [r1]
	bl sub_080AA724
	ldr r1, _080D0514  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	strb r6, [r0]
	mov r7, #0
_080D04EA:
	cmp r7, #0
	beq _080D0504
	ldr r2, _080D0518  @ =gRam
	ldr r1, _080D051C  @ =0x000010E2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #64
	strb r1, [r0]
	ldr r0, _080D0520  @ =0x00000F52
	add r2, r2, r0
	add r2, r4, r2
	mov r0, #1
	strb r0, [r2]
_080D0504:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_080D050C:
	.4byte gUnknown_0817276C
_080D0510:
	.4byte 0x00001082
_080D0514:
	.4byte 0x00000FA2
_080D0518:
	.4byte gRam
_080D051C:
	.4byte 0x000010E2
_080D0520:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D0480

	THUMB_FUNC_START sub_080D0524
sub_080D0524: @ 0x080D0524
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080D0544  @ =gRam
	ldr r1, _080D0548  @ =0x00001062
	add r2, r3, r1
	add r2, r0, r2
	ldrb r1, [r2]
	add r1, r1, #1
	strb r1, [r2]
	ldr r1, _080D054C  @ =0x00001172
	add r3, r3, r1
	add r0, r0, r3
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	bx lr
_080D0544:
	.4byte gRam
_080D0548:
	.4byte 0x00001062
_080D054C:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080D0524

	THUMB_FUNC_START sub_080D0550
sub_080D0550: @ 0x080D0550
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D0570  @ =gUnknown_08174A1C
	ldr r1, _080D0574  @ =gRam
	ldr r3, _080D0578  @ =0x00000F52
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080D0570:
	.4byte gUnknown_08174A1C
_080D0574:
	.4byte gRam
_080D0578:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D0550

	THUMB_FUNC_START sub_080D057C
sub_080D057C: @ 0x080D057C
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r0, _080D05A4  @ =gRam
	ldr r1, _080D05A8  @ =0x00000996
	add r0, r0, r1
	ldrb r1, [r0]
	add r0, r2, #0
	eor r0, r0, r1
	mov r1, #31
	and r0, r0, r1
	cmp r0, #0
	bne _080D059E
	add r0, r2, #0
	mov r1, #97
	bl sub_080CF140
_080D059E:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D05A4:
	.4byte gRam
_080D05A8:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080D057C

	THUMB_FUNC_START sub_080D05AC
sub_080D05AC: @ 0x080D05AC
	push {r4,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r2, _080D05E8  @ =gRam
	ldr r1, _080D05EC  @ =0x000009AD
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _080D05E0
	ldr r4, _080D05F0  @ =0x00001AE8
	add r0, r2, r4
	ldrb r1, [r0]
	add r4, r4, #1
	add r0, r2, r4
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	cmp r1, #203
	beq _080D05D6
	cmp r1, #205
	bne _080D05E0
_080D05D6:
	ldr r1, _080D05F4  @ =0x000010E2
	add r0, r2, r1
	add r0, r3, r0
	mov r1, #40
	strb r1, [r0]
_080D05E0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D05E8:
	.4byte gRam
_080D05EC:
	.4byte 0x000009AD
_080D05F0:
	.4byte 0x00001AE8
_080D05F4:
	.4byte 0x000010E2
	THUMB_FUNC_END sub_080D05AC

	THUMB_FUNC_START sub_080D05F8
sub_080D05F8: @ 0x080D05F8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r2, _080D0630  @ =gRam
	ldr r1, _080D0634  @ =0x00001062
	add r0, r2, r1
	add r0, r5, r0
	ldrb r1, [r0]
	cmp r1, #0
	bne _080D062A
	ldr r3, _080D0638  @ =0x00000FA2
	add r0, r2, r3
	add r0, r5, r0
	strb r1, [r0]
	mov r4, #11
_080D0616:
	add r0, r5, #0
	bl sub_080D063C
	lsl r0, r4, #24
	mov r1, #255
	lsl r1, r1, #24
	add r0, r0, r1
	lsr r4, r0, #24
	cmp r0, #0
	bge _080D0616
_080D062A:
	pop {r4,r5}
	pop {r0}
	bx r0
_080D0630:
	.4byte gRam
_080D0634:
	.4byte 0x00001062
_080D0638:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080D05F8

	THUMB_FUNC_START sub_080D063C
sub_080D063C: @ 0x080D063C
	push {r4,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #121
	bl sub_080CA538
	cmp r0, #0
	blt _080D065E
	lsl r4, r0, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080CAE50
	add r0, r4, #0
	bl sub_080D00B0
_080D065E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D063C

	THUMB_FUNC_START sub_080D0664
sub_080D0664: @ 0x080D0664
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r7, r0, #24
	add r0, r7, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	cmp r0, #0
	beq _080D0684
	b _080D0810
_080D0684:
	ldr r0, _080D079C  @ =gRam
	mov r8, r0
	ldr r0, _080D07A0  @ =0x00000FF2
	add r0, r0, r8
	add r0, r0, r7
	mov r10, r0
	ldrb r0, [r0]
	cmp r0, #219
	bne _080D06A2
	add r0, r7, #0
	bl sub_080C841C
	cmp r0, #0
	beq _080D06A2
	b _080D0810
_080D06A2:
	add r0, r7, #0
	bl sub_080C2C4C
	add r0, r7, #0
	bl Sprite3_Move
	ldr r0, _080D07A4  @ =0x000010B2
	add r0, r0, r8
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D06C6
	add r0, r7, #0
	bl sub_080C6F48
	add r0, r7, #0
	bl Sprite_WallInducedSpeedInversion
_080D06C6:
	ldr r0, _080D07A8  @ =0x00001152
	add r0, r0, r8
	add r0, r0, r7
	mov r12, r0
	ldrb r0, [r0]
	sub r0, r0, #2
	mov r1, r12
	strb r0, [r1]
	ldr r0, _080D07AC  @ =0x00001142
	add r0, r0, r8
	add r6, r7, r0
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _080D06E6
	b _080D07FE
_080D06E6:
	ldr r4, _080D07B0  @ =0x00000F22
	add r4, r4, r8
	add r4, r7, r4
	ldrb r2, [r4]
	ldr r5, _080D07B4  @ =0x00000F12
	add r5, r5, r8
	add r5, r7, r5
	ldrb r3, [r5]
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	neg r1, r1
	lsr r0, r1, #31
	add r1, r1, r0
	asr r1, r1, #1
	lsl r1, r1, #24
	mov r0, r9
	strb r0, [r6]
	mov r6, #128
	add r0, r2, #0
	and r0, r0, r6
	lsr r2, r2, #1
	orr r0, r0, r2
	strb r0, [r4]
	add r0, r3, #0
	and r0, r0, r6
	lsr r3, r3, #1
	orr r0, r0, r3
	strb r0, [r5]
	lsr r2, r1, #24
	asr r1, r1, #24
	cmp r1, #8
	ble _080D07F8
	ldr r0, _080D07B8  @ =0x000013B2
	add r0, r0, r8
	add r0, r7, r0
	ldrb r0, [r0]
	mov r1, r12
	strb r2, [r1]
	sub r0, r0, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _080D07D4
	mov r0, r9
	strb r0, [r1]
	add r0, r7, #0
	bl sub_080C969C
	mov r12, r0
	cmp r0, #0
	blt _080D07FE
	ldr r0, _080D07BC  @ =0x00001032
	add r0, r0, r8
	add r0, r7, r0
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _080D07FE
	ldr r6, _080D07C0  @ =0x00000EE2
	add r6, r6, r8
	add r6, r6, r12
	ldrb r2, [r6]
	ldr r5, _080D07C4  @ =0x00000F02
	add r5, r5, r8
	add r5, r5, r12
	ldrb r0, [r5]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r1, _080D07C8  @ =0x0000FFFC
	add r2, r2, r1
	ldr r4, _080D07CC  @ =0x00000ED2
	add r4, r4, r8
	add r4, r4, r12
	ldrb r1, [r4]
	ldr r3, _080D07D0  @ =0x00000EF2
	add r3, r3, r8
	add r3, r3, r12
	ldrb r0, [r3]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r0, _080D07C8  @ =0x0000FFFC
	add r1, r1, r0
	strb r2, [r6]
	lsr r2, r2, #8
	strb r2, [r5]
	strb r1, [r4]
	lsr r1, r1, #8
	strb r1, [r3]
	b _080D07FE
_080D079C:
	.4byte gRam
_080D07A0:
	.4byte 0x00000FF2
_080D07A4:
	.4byte 0x000010B2
_080D07A8:
	.4byte 0x00001152
_080D07AC:
	.4byte 0x00001142
_080D07B0:
	.4byte 0x00000F22
_080D07B4:
	.4byte 0x00000F12
_080D07B8:
	.4byte 0x000013B2
_080D07BC:
	.4byte 0x00001032
_080D07C0:
	.4byte 0x00000EE2
_080D07C4:
	.4byte 0x00000F02
_080D07C8:
	.4byte 0x0000FFFC
_080D07CC:
	.4byte 0x00000ED2
_080D07D0:
	.4byte 0x00000EF2
_080D07D4:
	mov r1, r10
	ldrb r0, [r1]
	cmp r0, #227
	bls _080D07FE
	ldr r0, _080D07F4  @ =0x000009B2
	add r0, r0, r8
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080D07FE
	add r0, r7, #0
	mov r1, #113
	bl sub_080CF0AC
	b _080D07FE
_080D07F4:
	.4byte 0x000009B2
_080D07F8:
	add r0, r7, #0
	bl sub_080C351C
_080D07FE:
	add r0, r7, #0
	bl sub_080D0820
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D0810
	add r0, r7, #0
	bl sub_080C4C10
_080D0810:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D0664

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D0820
sub_080D0820: @ 0x080D0820
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r4, r1, #0
	ldr r3, _080D0854  @ =gRam
	ldr r2, _080D0858  @ =0x00000F72
	add r0, r3, r2
	add r0, r1, r0
	ldrb r2, [r0]
	mov r5, #0
	cmp r2, #0
	beq _080D08AA
	sub r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r6, _080D085C  @ =0x00000E15
	add r0, r3, r6
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D0860
	add r0, r1, #0
	bl sub_080CF418
	b _080D08A8
	.byte 0x00
	.byte 0x00
_080D0854:
	.4byte gRam
_080D0858:
	.4byte 0x00000F72
_080D085C:
	.4byte 0x00000E15
_080D0860:
	ldr r0, _080D08B4  @ =0x00000EE2
	add r1, r3, r0
	add r1, r4, r1
	ldr r6, _080D08B8  @ =0x00000DCF
	add r0, r3, r6
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080D08BC  @ =0x00000F02
	add r1, r3, r0
	add r1, r4, r1
	add r6, r6, #20
	add r0, r3, r6
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080D08C0  @ =0x00000ED2
	add r1, r3, r0
	add r1, r4, r1
	sub r6, r6, #30
	add r0, r3, r6
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080D08C4  @ =0x00000EF2
	add r1, r3, r0
	add r1, r4, r1
	add r6, r6, #20
	add r0, r3, r6
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080D08C8  @ =0x00001142
	add r0, r3, r1
	add r0, r4, r0
	strb r5, [r0]
_080D08A8:
	mov r5, #1
_080D08AA:
	add r0, r5, #0
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080D08B4:
	.4byte 0x00000EE2
_080D08B8:
	.4byte 0x00000DCF
_080D08BC:
	.4byte 0x00000F02
_080D08C0:
	.4byte 0x00000ED2
_080D08C4:
	.4byte 0x00000EF2
_080D08C8:
	.4byte 0x00001142
	THUMB_FUNC_END sub_080D0820

	THUMB_FUNC_START sub_080D08CC
sub_080D08CC: @ 0x080D08CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r4, [sp, #40]
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	lsl r1, r1, #16
	lsr r7, r1, #16
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r9, r2
	lsl r3, r3, #24
	lsr r3, r3, #24
	str r3, [sp]
	lsl r4, r4, #24
	lsr r4, r4, #24
	cmp r4, #0
	beq _080D09AE
	ldr r5, _080D09C0  @ =gRam
	mov r0, #31
	mov r10, r0
	add r6, r4, #0
	ldr r0, _080D09C4  @ =gUnknown_08174A40
	add r0, r0, r9
	str r0, [sp, #4]
_080D0906:
	ldr r0, [sp]
	mov r1, #0
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080D09A8
	ldr r1, _080D09C8  @ =0x00000EE2
	add r0, r5, r1
	add r0, r4, r0
	mov r2, r8
	strb r2, [r0]
	ldr r3, _080D09CC  @ =0x00000F02
	add r0, r5, r3
	add r0, r4, r0
	mov r2, r8
	lsr r1, r2, #8
	strb r1, [r0]
	sub r3, r3, #48
	add r0, r5, r3
	add r0, r4, r0
	strb r7, [r0]
	ldr r1, _080D09D0  @ =0x00000EF2
	add r0, r5, r1
	add r0, r4, r0
	lsr r1, r7, #8
	strb r1, [r0]
	bl GetRandomInt
	ldr r3, _080D09D4  @ =0x00000F22
	add r2, r5, r3
	add r2, r4, r2
	mov r1, r10
	and r1, r1, r0
	ldr r0, [sp, #4]
	ldrb r0, [r0]
	add r1, r1, r0
	sub r1, r1, #15
	strb r1, [r2]
	bl GetRandomInt
	ldr r1, _080D09D8  @ =0x00000F12
	add r3, r5, r1
	add r3, r4, r3
	ldr r2, _080D09DC  @ =gUnknown_08174A44
	add r2, r2, r9
	mov r1, r10
	and r1, r1, r0
	ldrb r2, [r2]
	add r1, r1, r2
	sub r1, r1, #15
	strb r1, [r3]
	bl GetRandomInt
	ldr r3, _080D09E0  @ =0x00001152
	add r2, r5, r3
	add r2, r4, r2
	mov r1, #7
	and r1, r1, r0
	add r1, r1, #24
	strb r1, [r2]
	ldr r1, _080D09E4  @ =0x00000D74
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	ldr r2, _080D09E8  @ =0x000010E2
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #32
	strb r1, [r0]
	sub r3, r3, #160
	add r0, r5, r3
	add r0, r4, r0
	strb r1, [r0]
	ldr r1, _080D09EC  @ =0x000010F2
	add r0, r5, r1
	add r0, r4, r0
	ldr r2, _080D09F0  @ =gUnknown_03002C40
	ldrb r1, [r2]
	strb r1, [r0]
_080D09A8:
	sub r6, r6, #1
	cmp r6, #0
	bne _080D0906
_080D09AE:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D09C0:
	.4byte gRam
_080D09C4:
	.4byte gUnknown_08174A40
_080D09C8:
	.4byte 0x00000EE2
_080D09CC:
	.4byte 0x00000F02
_080D09D0:
	.4byte 0x00000EF2
_080D09D4:
	.4byte 0x00000F22
_080D09D8:
	.4byte 0x00000F12
_080D09DC:
	.4byte gUnknown_08174A44
_080D09E0:
	.4byte 0x00001152
_080D09E4:
	.4byte 0x00000D74
_080D09E8:
	.4byte 0x000010E2
_080D09EC:
	.4byte 0x000010F2
_080D09F0:
	.4byte gUnknown_03002C40
	THUMB_FUNC_END sub_080D08CC

	THUMB_FUNC_START sub_080D09F4
sub_080D09F4: @ 0x080D09F4
	push {lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r0, _080D0A14  @ =gRam
	ldr r2, _080D0A18  @ =0x000009B2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080D0A10
	add r0, r1, #0
	bl sub_080D0524
_080D0A10:
	pop {r0}
	bx r0
_080D0A14:
	.4byte gRam
_080D0A18:
	.4byte 0x000009B2
	THUMB_FUNC_END sub_080D09F4

	THUMB_FUNC_START sub_080D0A1C
sub_080D0A1C: @ 0x080D0A1C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsl r2, r4, #2
	mov r0, #15
	and r2, r2, r0
	mov r5, #15
	ldr r3, _080D0A90  @ =gRam
	mov r8, r3
	ldr r0, _080D0A94  @ =0x00001172
	add r0, r0, r3
	mov r12, r0
	ldr r1, _080D0A98  @ =0x000010F2
	add r6, r3, r1
	add r7, r4, r6
_080D0A3E:
	ldr r1, _080D0A9C  @ =0x000015DC
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r2, r0
	beq _080D0AE4
	ldr r0, _080D0AA0  @ =0x00000FA2
	add r0, r0, r8
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #8
	bls _080D0AE4
	ldr r1, _080D0AA4  @ =0x000010D2
	add r0, r3, r1
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D0AE4
	sub r1, r1, #192
	add r0, r3, r1
	add r0, r2, r0
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D0AB0
	ldr r1, _080D0AA8  @ =0x00001082
	add r0, r3, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D0AE4
	ldr r1, _080D0AAC  @ =0x00000EA5
	add r0, r3, r1
	add r0, r2, r0
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _080D0AE4
	b _080D0AD4
	.byte 0x00
	.byte 0x00
_080D0A90:
	.4byte gRam
_080D0A94:
	.4byte 0x00001172
_080D0A98:
	.4byte 0x000010F2
_080D0A9C:
	.4byte 0x000015DC
_080D0AA0:
	.4byte 0x00000FA2
_080D0AA4:
	.4byte 0x000010D2
_080D0AA8:
	.4byte 0x00001082
_080D0AAC:
	.4byte 0x00000EA5
_080D0AB0:
	add r0, r2, r6
	ldrb r0, [r0]
	ldrb r1, [r7]
	cmp r0, r1
	bne _080D0AE4
	ldr r1, _080D0AE0  @ =0x00001132
	add r0, r3, r1
	add r0, r2, r0
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _080D0AE4
	mov r1, r12
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D0AE4
_080D0AD4:
	add r0, r4, #0
	add r1, r2, #0
	bl sub_080D0AFC
	mov r0, #1
	b _080D0AF2
_080D0AE0:
	.4byte 0x00001132
_080D0AE4:
	sub r5, r5, #1
	sub r2, r2, #1
	mov r0, #15
	and r2, r2, r0
	cmp r5, #0
	bge _080D0A3E
	mov r0, #0
_080D0AF2:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080D0A1C

	THUMB_FUNC_START sub_080D0AFC
sub_080D0AFC: @ 0x080D0AFC
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	add r5, r1, #0
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r5, r5, #24
	lsr r5, r5, #24
	add r1, r5, #0
	bl sub_080CEE30
	ldr r6, _080D0B84  @ =gRam
	ldr r1, _080D0B88  @ =0x00000EE2
	add r0, r6, r1
	add r0, r5, r0
	ldrb r0, [r0]
	mov r8, r0
	ldr r2, _080D0B8C  @ =0x00000F02
	add r0, r6, r2
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	mov r1, r8
	orr r1, r1, r0
	mov r8, r1
	bl GetRandomInt
	ldr r2, _080D0B90  @ =gUnknown_08174A3C
	mov r9, r2
	mov r4, #3
	add r1, r4, #0
	and r1, r1, r0
	add r1, r1, r9
	ldrb r0, [r1]
	add r0, r0, r8
	ldr r2, _080D0B94  @ =0x00000968
	add r1, r6, r2
	strh r0, [r1]
	ldr r1, _080D0B98  @ =0x00000ED2
	add r0, r6, r1
	add r0, r5, r0
	ldrb r0, [r0]
	mov r8, r0
	ldr r2, _080D0B9C  @ =0x00000EF2
	add r0, r6, r2
	add r5, r5, r0
	ldrb r0, [r5]
	lsl r0, r0, #8
	mov r1, r8
	orr r1, r1, r0
	mov r8, r1
	bl GetRandomInt
	and r4, r4, r0
	add r4, r4, r9
	ldrb r0, [r4]
	add r0, r0, r8
	ldr r2, _080D0BA0  @ =0x0000096C
	add r6, r6, r2
	strh r0, [r6]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D0B84:
	.4byte gRam
_080D0B88:
	.4byte 0x00000EE2
_080D0B8C:
	.4byte 0x00000F02
_080D0B90:
	.4byte gUnknown_08174A3C
_080D0B94:
	.4byte 0x00000968
_080D0B98:
	.4byte 0x00000ED2
_080D0B9C:
	.4byte 0x00000EF2
_080D0BA0:
	.4byte 0x0000096C
	THUMB_FUNC_END sub_080D0AFC

	THUMB_FUNC_START sub_080D0BA4
sub_080D0BA4: @ 0x080D0BA4
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r4, r3, #0
	ldr r0, _080D0BF4  @ =gBottle1
	ldr r1, _080D0BF8  @ =gBottle2
	ldrb r0, [r0]
	ldrb r1, [r1]
	orr r0, r0, r1
	ldr r1, _080D0BFC  @ =gBottle3
	ldrb r1, [r1]
	orr r0, r0, r1
	ldr r1, _080D0C00  @ =gBottle4
	ldrb r1, [r1]
	orr r0, r0, r1
	lsr r0, r0, #3
	mov r1, #1
	bic r1, r1, r0
	ldr r2, _080D0C04  @ =gRam
	cmp r1, #0
	bne _080D0BD6
	ldr r5, _080D0C08  @ =0x00000FA2
	add r0, r2, r5
	add r0, r3, r0
	strb r1, [r0]
_080D0BD6:
	ldr r0, _080D0C0C  @ =0x00001062
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r5, _080D0C10  @ =0x00001172
	add r1, r2, r5
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
_080D0BF4:
	.4byte gBottle1
_080D0BF8:
	.4byte gBottle2
_080D0BFC:
	.4byte gBottle3
_080D0C00:
	.4byte gBottle4
_080D0C04:
	.4byte gRam
_080D0C08:
	.4byte 0x00000FA2
_080D0C0C:
	.4byte 0x00001062
_080D0C10:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080D0BA4

	THUMB_FUNC_START sub_080D0C14
sub_080D0C14: @ 0x080D0C14
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r9, r6
	ldr r7, _080D0CD0  @ =gRam
	ldr r1, _080D0CD4  @ =0x00001172
	add r0, r7, r1
	add r0, r6, r0
	mov r1, #1
	strb r1, [r0]
	ldr r2, _080D0CD8  @ =0x00001142
	add r0, r7, r2
	add r0, r6, r0
	mov r1, #16
	strb r1, [r0]
	ldr r1, _080D0CDC  @ =0x00001082
	add r0, r7, r1
	add r4, r6, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080D0C66
	sub r2, r2, #32
	add r3, r7, r2
	add r3, r6, r3
	ldr r1, _080D0CE0  @ =0x00000996
	add r0, r7, r1
	ldrb r1, [r0]
	lsr r1, r1, #4
	mov r0, #3
	and r1, r1, r0
	add r1, r1, #1
	lsl r1, r1, #1
	ldrb r2, [r3]
	mov r0, #241
	and r0, r0, r2
	orr r1, r1, r0
	strb r1, [r3]
_080D0C66:
	add r0, r6, #0
	bl sub_080C58F0
	add r0, r6, #0
	bl sub_080D05AC
	add r0, r6, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D0C80
	b _080D0E12
_080D0C80:
	add r0, r6, #0
	bl sub_080D057C
	add r0, r6, #0
	bl Sprite3_Move
	ldr r0, _080D0CE4  @ =0x00000F92
	add r2, r7, r0
	add r2, r6, r2
	ldr r1, _080D0CE0  @ =0x00000996
	add r1, r1, r7
	mov r8, r1
	ldrb r1, [r1]
	add r0, r6, #0
	eor r0, r0, r1
	lsr r0, r0, #1
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	cmp r0, #0
	beq _080D0CB2
	add r0, r6, #0
	bl sub_080C9400
_080D0CB2:
	ldr r2, _080D0CE8  @ =0x00000F72
	add r1, r7, r2
	add r1, r6, r1
	ldr r2, _080D0CEC  @ =gUnknown_08174A54
	ldrb r0, [r4]
	add r0, r0, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bcc _080D0CF4
	ldr r1, _080D0CF0  @ =0x00000E75
	add r0, r7, r1
	add r0, r6, r0
	mov r1, #64
	b _080D0E10
_080D0CD0:
	.4byte gRam
_080D0CD4:
	.4byte 0x00001172
_080D0CD8:
	.4byte 0x00001142
_080D0CDC:
	.4byte 0x00001082
_080D0CE0:
	.4byte 0x00000996
_080D0CE4:
	.4byte 0x00000F92
_080D0CE8:
	.4byte 0x00000F72
_080D0CEC:
	.4byte gUnknown_08174A54
_080D0CF0:
	.4byte 0x00000E75
_080D0CF4:
	ldr r2, _080D0D2C  @ =0x000010E2
	add r0, r7, r2
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D0D02
	b _080D0E12
_080D0D02:
	mov r0, sp
	add r1, r6, #0
	bl sub_080C4948
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D0D34
	add r0, r6, #0
	mov r1, #203
	mov r2, #0
	bl sub_080C9564
	ldr r0, _080D0D30  @ =0x00000F52
	add r1, r7, r0
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080D0E12
	.byte 0x00
	.byte 0x00
_080D0D2C:
	.4byte 0x000010E2
_080D0D30:
	.4byte 0x00000F52
_080D0D34:
	mov r2, r8
	ldrb r1, [r2]
	add r0, r6, #0
	eor r0, r0, r1
	mov r4, #3
	and r0, r0, r4
	cmp r0, #0
	bne _080D0E12
	add r0, r6, #0
	bl sub_080D0A1C
	cmp r0, #0
	bne _080D0D94
	mov r0, r8
	ldrb r1, [r0]
	add r0, r6, #0
	eor r0, r0, r1
	and r0, r0, r4
	cmp r0, #0
	bne _080D0E12
	bl GetRandomInt
	ldr r1, _080D0DE4  @ =0x000016C4
	add r2, r7, r1
	ldr r5, _080D0DE8  @ =gUnknown_08174A3C
	mov r4, #3
	add r1, r4, #0
	and r1, r1, r0
	add r1, r1, r5
	ldrh r0, [r2]
	ldrb r1, [r1]
	add r0, r0, r1
	ldr r2, _080D0DEC  @ =0x00000968
	add r1, r7, r2
	strh r0, [r1]
	bl GetRandomInt
	mov r2, #182
	lsl r2, r2, #5
	add r1, r7, r2
	and r4, r4, r0
	add r4, r4, r5
	ldrh r0, [r1]
	ldrb r4, [r4]
	add r0, r0, r4
	ldr r2, _080D0DF0  @ =0x0000096C
	add r1, r7, r2
	strh r0, [r1]
_080D0D94:
	mov r1, r8
	ldrb r0, [r1]
	add r1, r6, #0
	eor r1, r1, r0
	mov r0, #7
	and r1, r1, r0
	cmp r1, #0
	bne _080D0E12
	add r0, r6, #0
	mov r1, #32
	bl sub_080C2DCC
	ldr r2, _080D0DF4  @ =0x00000F12
	add r0, r7, r2
	add r0, r6, r0
	mov r2, #150
	lsl r2, r2, #4
	add r1, r7, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D0DF8  @ =0x00000F22
	add r0, r7, r1
	add r0, r6, r0
	ldr r1, _080D0DFC  @ =0x00000961
	add r2, r7, r1
	ldrb r1, [r2]
	strb r1, [r0]
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080D0E04
	ldr r2, _080D0E00  @ =0x00001122
	add r0, r7, r2
	add r0, r6, r0
	ldrb r1, [r0]
	mov r2, #64
	orr r1, r1, r2
	b _080D0E10
	.byte 0x00
	.byte 0x00
_080D0DE4:
	.4byte 0x000016C4
_080D0DE8:
	.4byte gUnknown_08174A3C
_080D0DEC:
	.4byte 0x00000968
_080D0DF0:
	.4byte 0x0000096C
_080D0DF4:
	.4byte 0x00000F12
_080D0DF8:
	.4byte 0x00000F22
_080D0DFC:
	.4byte 0x00000961
_080D0E00:
	.4byte 0x00001122
_080D0E04:
	ldr r1, _080D0E20  @ =0x00001122
	add r0, r7, r1
	add r0, r0, r9
	ldrb r2, [r0]
	mov r1, #191
	and r1, r1, r2
_080D0E10:
	strb r1, [r0]
_080D0E12:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080D0E20:
	.4byte 0x00001122
	THUMB_FUNC_END sub_080D0C14

	THUMB_FUNC_START sub_080D0E24
sub_080D0E24: @ 0x080D0E24
	push {r4,r5,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #121
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	bge _080D0E3E
	mov r0, #1
	neg r0, r0
	b _080D0EB2
_080D0E3E:
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r5, _080D0EB8  @ =gRam
	ldr r1, _080D0EBC  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r2, #1
	strb r2, [r0]
	ldr r3, _080D0EC0  @ =0x00000FC2
	add r0, r5, r3
	add r0, r4, r0
	mov r1, #64
	strb r1, [r0]
	sub r3, r3, #96
	add r0, r5, r3
	add r0, r4, r0
	strb r1, [r0]
	ldr r1, _080D0EC4  @ =0x000010E2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #96
	strb r1, [r0]
	ldr r3, _080D0EC8  @ =0x00001082
	add r0, r5, r3
	add r0, r4, r0
	strb r2, [r0]
	bl GetRandomInt
	mov r1, #7
	and r1, r1, r0
	ldr r0, _080D0ECC  @ =0x00000F22
	add r2, r5, r0
	add r2, r4, r2
	ldr r0, _080D0ED0  @ =gUnknown_08174A28
	add r1, r1, r0
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r2, _080D0ED4  @ =0x00000F12
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	mov r1, #0
	ldr r3, _080D0ED8  @ =0x000009DA
	add r0, r5, r3
	ldrh r0, [r0]
	cmp r0, #173
	bne _080D0EA2
	mov r1, #1
_080D0EA2:
	cmp r1, #0
	beq _080D0EB0
	ldr r1, _080D0EDC  @ =0x00000FD2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #216
	strb r1, [r0]
_080D0EB0:
	add r0, r4, #0
_080D0EB2:
	pop {r4,r5}
	pop {r1}
	bx r1
_080D0EB8:
	.4byte gRam
_080D0EBC:
	.4byte 0x00000F52
_080D0EC0:
	.4byte 0x00000FC2
_080D0EC4:
	.4byte 0x000010E2
_080D0EC8:
	.4byte 0x00001082
_080D0ECC:
	.4byte 0x00000F22
_080D0ED0:
	.4byte gUnknown_08174A28
_080D0ED4:
	.4byte 0x00000F12
_080D0ED8:
	.4byte 0x000009DA
_080D0EDC:
	.4byte 0x00000FD2
	THUMB_FUNC_END sub_080D0E24

	THUMB_FUNC_START sub_080D0EE0
sub_080D0EE0: @ 0x080D0EE0
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, #178
	mov r1, #0
	bl sub_080CA538
	add r6, r0, #0
	cmp r6, #0
	bge _080D0EFA
	mov r0, #1
	neg r0, r0
	b _080D0F9E
_080D0EFA:
	ldr r7, _080D0FA4  @ =gRam
	ldr r1, _080D0FA8  @ =0x000010F2
	add r0, r7, r1
	add r0, r6, r0
	mov r2, #161
	lsl r2, r2, #4
	add r1, r7, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r3, _080D0FAC  @ =0x000016C4
	add r0, r7, r3
	ldrh r1, [r0]
	add r1, r1, #8
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r2, #182
	lsl r2, r2, #5
	add r0, r7, r2
	ldrh r2, [r0]
	add r2, r2, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080D0FB0  @ =0x00000EE2
	add r0, r7, r3
	add r0, r6, r0
	strb r1, [r0]
	add r3, r3, #32
	add r0, r7, r3
	add r0, r6, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r1, _080D0FB4  @ =0x00000ED2
	add r0, r7, r1
	add r0, r6, r0
	strb r2, [r0]
	sub r3, r3, #16
	add r0, r7, r3
	add r0, r6, r0
	lsr r2, r2, #8
	strb r2, [r0]
	cmp r4, #8
	bne _080D0F58
	ldr r1, _080D0FB8  @ =0x00001082
	add r0, r7, r1
	add r0, r6, r0
	mov r1, #1
	strb r1, [r0]
_080D0F58:
	lsl r0, r6, #24
	lsr r0, r0, #24
	bl sub_080D00B0
	bl GetRandomInt
	ldr r3, _080D0FBC  @ =0x00000F22
	add r2, r7, r3
	add r2, r6, r2
	ldr r5, _080D0FC0  @ =gUnknown_08174A30
	mov r4, #7
	add r1, r4, #0
	and r1, r1, r0
	add r1, r1, r5
	ldrb r0, [r1]
	strb r0, [r2]
	bl GetRandomInt
	ldr r2, _080D0FC4  @ =0x00000F12
	add r1, r7, r2
	add r1, r6, r1
	and r4, r4, r0
	add r4, r4, r5
	ldrb r0, [r4]
	strb r0, [r1]
	ldr r3, _080D0FC8  @ =0x00000FC2
	add r0, r7, r3
	add r0, r6, r0
	mov r1, #64
	strb r1, [r0]
	add r2, r2, #80
	add r0, r7, r2
	add r0, r6, r0
	strb r1, [r0]
	mov r0, #0
_080D0F9E:
	pop {r4-r7}
	pop {r1}
	bx r1
_080D0FA4:
	.4byte gRam
_080D0FA8:
	.4byte 0x000010F2
_080D0FAC:
	.4byte 0x000016C4
_080D0FB0:
	.4byte 0x00000EE2
_080D0FB4:
	.4byte 0x00000ED2
_080D0FB8:
	.4byte 0x00001082
_080D0FBC:
	.4byte 0x00000F22
_080D0FC0:
	.4byte gUnknown_08174A30
_080D0FC4:
	.4byte 0x00000F12
_080D0FC8:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080D0EE0

	THUMB_FUNC_START sub_080D0FCC
sub_080D0FCC: @ 0x080D0FCC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D0FEC  @ =gUnknown_08174A48
	ldr r1, _080D0FF0  @ =gRam
	ldr r3, _080D0FF4  @ =0x00000F52
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080D0FEC:
	.4byte gUnknown_08174A48
_080D0FF0:
	.4byte gRam
_080D0FF4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D0FCC

	THUMB_FUNC_START sub_080D0FF8
sub_080D0FF8: @ 0x080D0FF8
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r4, _080D103C  @ =gRam
	ldr r1, _080D1040  @ =0x00001142
	add r0, r4, r1
	add r0, r2, r0
	mov r1, #16
	strb r1, [r0]
	ldr r1, _080D1044  @ =0x00001082
	add r0, r4, r1
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D1036
	ldr r0, _080D1048  @ =0x00001122
	add r3, r4, r0
	add r3, r2, r3
	ldr r1, _080D104C  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	lsr r1, r1, #4
	mov r0, #3
	and r1, r1, r0
	add r1, r1, #1
	lsl r1, r1, #1
	ldrb r2, [r3]
	mov r0, #241
	and r0, r0, r2
	orr r1, r1, r0
	strb r1, [r3]
_080D1036:
	pop {r4}
	pop {r0}
	bx r0
_080D103C:
	.4byte gRam
_080D1040:
	.4byte 0x00001142
_080D1044:
	.4byte 0x00001082
_080D1048:
	.4byte 0x00001122
_080D104C:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080D0FF8

	THUMB_FUNC_START sub_080D1050
sub_080D1050: @ 0x080D1050
	ldr r0, _080D1070  @ =gBottle1
	ldr r2, _080D1074  @ =gBottle2
	ldrb r1, [r0]
	ldrb r0, [r2]
	orr r1, r1, r0
	ldr r0, _080D1078  @ =gBottle3
	ldrb r0, [r0]
	orr r1, r1, r0
	ldr r0, _080D107C  @ =gBottle4
	ldrb r0, [r0]
	orr r1, r1, r0
	lsr r1, r1, #3
	mov r0, #1
	bic r0, r0, r1
	bx lr
	.byte 0x00
	.byte 0x00
_080D1070:
	.4byte gBottle1
_080D1074:
	.4byte gBottle2
_080D1078:
	.4byte gBottle3
_080D107C:
	.4byte gBottle4
	THUMB_FUNC_END sub_080D1050

	THUMB_FUNC_START sub_080D1080
sub_080D1080: @ 0x080D1080
	push {r4,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r2, _080D10C8  @ =gRam
	ldr r1, _080D10CC  @ =0x00001062
	add r0, r2, r1
	add r0, r3, r0
	ldrb r1, [r0]
	cmp r1, #0
	bne _080D10C2
	ldr r4, _080D10D0  @ =0x00000FA2
	add r0, r2, r4
	add r0, r3, r0
	strb r1, [r0]
	ldr r0, _080D10D4  @ =gBottle1
	ldr r2, _080D10D8  @ =gBottle2
	ldrb r1, [r0]
	ldrb r0, [r2]
	orr r1, r1, r0
	ldr r0, _080D10DC  @ =gBottle3
	ldrb r0, [r0]
	orr r1, r1, r0
	ldr r0, _080D10E0  @ =gBottle4
	ldrb r0, [r0]
	orr r1, r1, r0
	lsr r1, r1, #3
	mov r0, #1
	bic r0, r0, r1
	cmp r0, #0
	beq _080D10C2
	add r0, r3, #0
	bl sub_080D0E24
_080D10C2:
	pop {r4}
	pop {r0}
	bx r0
_080D10C8:
	.4byte gRam
_080D10CC:
	.4byte 0x00001062
_080D10D0:
	.4byte 0x00000FA2
_080D10D4:
	.4byte gBottle1
_080D10D8:
	.4byte gBottle2
_080D10DC:
	.4byte gBottle3
_080D10E0:
	.4byte gBottle4
	THUMB_FUNC_END sub_080D1080
