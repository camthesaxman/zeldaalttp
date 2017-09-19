	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_0812976C
sub_0812976C: @ 0x0812976C
	push {lr}
	ldr r1, _0812979C  @ =gUnknown_03002230
	ldr r2, _081297A0  @ =0x00001AF2
	add r0, r1, r2
	mov r2, #0
	strh r2, [r0]
	ldr r3, _081297A4  @ =0x00001AF0
	add r0, r1, r3
	strh r2, [r0]
	add r3, r3, #4
	add r0, r1, r3
	strh r2, [r0]
	ldr r0, _081297A8  @ =0x00001AF6
	add r1, r1, r0
	strh r2, [r1]
	mov r1, #207
	ldr r0, _081297AC  @ =gUnknown_0201053F
_0812978E:
	strb r2, [r0]
	sub r0, r0, #1
	sub r1, r1, #1
	cmp r1, #0
	bge _0812978E
	pop {r0}
	bx r0
_0812979C:
	.4byte gUnknown_03002230
_081297A0:
	.4byte 0x00001AF2
_081297A4:
	.4byte 0x00001AF0
_081297A8:
	.4byte 0x00001AF6
_081297AC:
	.4byte gUnknown_0201053F
	THUMB_FUNC_END sub_0812976C

	THUMB_FUNC_START sub_081297B0
sub_081297B0: @ 0x081297B0
	push {r4,lr}
	add r1, r0, #0
	ldr r4, _081297D8  @ =gUnknown_03002230
	ldr r2, _081297DC  @ =0x00001AF8
	add r0, r4, r2
	ldr r0, [r0]
	ldr r3, _081297E0  @ =0x00001AD6
	add r2, r4, r3
	ldrh r2, [r2]
	add r1, r1, r2
	add r1, r1, #5
	bl sub_08129E0C
	ldr r1, _081297E4  @ =0x00001ACC
	add r4, r4, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_081297D8:
	.4byte gUnknown_03002230
_081297DC:
	.4byte 0x00001AF8
_081297E0:
	.4byte 0x00001AD6
_081297E4:
	.4byte 0x00001ACC
	THUMB_FUNC_END sub_081297B0

	THUMB_FUNC_START sub_081297E8
sub_081297E8: @ 0x081297E8
	push {r4,lr}
	add r1, r0, #0
	ldr r4, _08129818  @ =gUnknown_03002230
	ldr r2, _0812981C  @ =0x00001AF8
	add r0, r4, r2
	ldr r0, [r0]
	ldr r3, _08129820  @ =0x00001AD6
	add r2, r4, r3
	ldrh r2, [r2]
	add r1, r1, r2
	add r1, r1, #5
	bl sub_08129E0C
	ldr r1, _08129824  @ =gUnknown_0818097C
	lsl r0, r0, #24
	lsr r0, r0, #23
	add r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08129828  @ =0x00001ACA
	add r4, r4, r1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
_08129818:
	.4byte gUnknown_03002230
_0812981C:
	.4byte 0x00001AF8
_08129820:
	.4byte 0x00001AD6
_08129824:
	.4byte gUnknown_0818097C
_08129828:
	.4byte 0x00001ACA
	THUMB_FUNC_END sub_081297E8

	THUMB_FUNC_START sub_0812982C
sub_0812982C: @ 0x0812982C
	push {lr}
	bl sub_081279A0
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812982C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08129838
sub_08129838: @ 0x08129838
	push {lr}
	ldr r1, _08129854  @ =gUnknown_08180B34
	ldr r0, _08129858  @ =gUnknown_03002230
	ldr r2, _0812985C  @ =0x00001ACC
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08129854:
	.4byte gUnknown_08180B34
_08129858:
	.4byte gUnknown_03002230
_0812985C:
	.4byte 0x00001ACC
	THUMB_FUNC_END sub_08129838

	THUMB_FUNC_START sub_08129860
sub_08129860: @ 0x08129860
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r4, sp
	add r4, r4, #2
	mov r0, sp
	add r1, r4, #0
	bl sub_08129CB0
	mov r0, sp
	add r1, r4, #0
	bl sub_081290B4
	mov r5, #6
	add r6, r4, #0
	mov r7, #6
_0812987E:
	strh r7, [r4]
	mov r0, sp
	add r1, r4, #0
	bl sub_081290B4
	sub r5, r5, #1
	cmp r5, #0
	bne _0812987E
	mov r0, #12
	strh r0, [r6]
	mov r0, sp
	add r1, r6, #0
	bl sub_081290B4
	mov r0, sp
	ldrh r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #1
	ldr r1, _081298C0  @ =gUnknown_02000402
	add r0, r0, r1
	ldr r2, _081298C4  @ =0x0000FFFF
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _081298C8  @ =gUnknown_03002230
	ldr r1, _081298CC  @ =0x00001ACC
	add r0, r0, r1
	mov r1, #2
	strb r1, [r0]
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_081298C0:
	.4byte gUnknown_02000402
_081298C4:
	.4byte 0x0000FFFF
_081298C8:
	.4byte gUnknown_03002230
_081298CC:
	.4byte 0x00001ACC
	THUMB_FUNC_END sub_08129860

	THUMB_FUNC_START sub_081298D0
sub_081298D0: @ 0x081298D0
	push {lr}
	ldr r0, _081298E8  @ =gUnknown_03002230
	ldr r1, _081298EC  @ =0x00001ACF
	add r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0
	beq _081298F2
	cmp r1, #6
	bhi _081298F0
	mov r1, #1
	b _081298F2
	.byte 0x00
	.byte 0x00
_081298E8:
	.4byte gUnknown_03002230
_081298EC:
	.4byte 0x00001ACF
_081298F0:
	mov r1, #2
_081298F2:
	ldr r0, _08129904  @ =gUnknown_08180B48
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08129904:
	.4byte gUnknown_08180B48
	THUMB_FUNC_END sub_081298D0

	THUMB_FUNC_START sub_08129908
sub_08129908: @ 0x08129908
	push {r4,lr}
	sub sp, sp, #4
	mov r4, sp
	add r4, r4, #2
	mov r0, sp
	add r1, r4, #0
	bl sub_08129CB0
	mov r0, sp
	add r1, r4, #0
	bl sub_081290B4
	mov r0, sp
	ldrh r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #1
	ldr r1, _08129948  @ =gUnknown_02000402
	add r0, r0, r1
	ldr r2, _0812994C  @ =0x0000FFFF
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, _08129950  @ =gUnknown_03002230
	ldr r0, _08129954  @ =0x00001ACF
	add r1, r1, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08129948:
	.4byte gUnknown_02000402
_0812994C:
	.4byte 0x0000FFFF
_08129950:
	.4byte gUnknown_03002230
_08129954:
	.4byte 0x00001ACF
	THUMB_FUNC_END sub_08129908

	THUMB_FUNC_START sub_08129958
sub_08129958: @ 0x08129958
	push {lr}
	sub sp, sp, #4
	mov r1, #0
	mov r0, sp
	strh r1, [r0]
	mov r1, sp
	add r1, r1, #2
	mov r0, #6
	strh r0, [r1]
	mov r0, sp
	bl sub_081290B4
	mov r0, sp
	ldrh r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #1
	ldr r1, _08129994  @ =gUnknown_02000402
	add r0, r0, r1
	ldr r2, _08129998  @ =0x0000FFFF
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, _0812999C  @ =gUnknown_03002230
	ldr r0, _081299A0  @ =0x00001ACF
	add r1, r1, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add sp, sp, #4
	pop {r0}
	bx r0
_08129994:
	.4byte gUnknown_02000402
_08129998:
	.4byte 0x0000FFFF
_0812999C:
	.4byte gUnknown_03002230
_081299A0:
	.4byte 0x00001ACF
	THUMB_FUNC_END sub_08129958

	THUMB_FUNC_START sub_081299A4
sub_081299A4: @ 0x081299A4
	push {lr}
	sub sp, sp, #4
	mov r1, #0
	mov r0, sp
	strh r1, [r0]
	mov r1, sp
	add r1, r1, #2
	mov r0, #12
	strh r0, [r1]
	mov r0, sp
	bl sub_081290B4
	mov r0, sp
	ldrh r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #1
	ldr r1, _081299E8  @ =gUnknown_02000402
	add r0, r0, r1
	ldr r2, _081299EC  @ =0x0000FFFF
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, _081299F0  @ =gUnknown_03002230
	ldr r0, _081299F4  @ =0x00001ACF
	add r2, r1, r0
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldr r2, _081299F8  @ =0x00001ACC
	add r1, r1, r2
	mov r0, #2
	strb r0, [r1]
	add sp, sp, #4
	pop {r0}
	bx r0
_081299E8:
	.4byte gUnknown_02000402
_081299EC:
	.4byte 0x0000FFFF
_081299F0:
	.4byte gUnknown_03002230
_081299F4:
	.4byte 0x00001ACF
_081299F8:
	.4byte 0x00001ACC
	THUMB_FUNC_END sub_081299A4

	THUMB_FUNC_START sub_081299FC
sub_081299FC: @ 0x081299FC
	push {lr}
	bl sub_081291C8
	ldr r1, _08129A14  @ =gUnknown_03002230
	ldr r0, _08129A18  @ =0x00001ACC
	add r1, r1, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08129A14:
	.4byte gUnknown_03002230
_08129A18:
	.4byte 0x00001ACC
	THUMB_FUNC_END sub_081299FC

	THUMB_FUNC_START sub_08129A1C
sub_08129A1C: @ 0x08129A1C
	push {lr}
	lsl r0, r0, #24
	ldr r1, _08129A30  @ =gUnknown_08180B58
	lsr r0, r0, #22
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r1}
	bx r1
_08129A30:
	.4byte gUnknown_08180B58
	THUMB_FUNC_END sub_08129A1C

	THUMB_FUNC_START sub_08129A34
sub_08129A34: @ 0x08129A34
	push {r4,lr}
	mov r4, #0
	bl sub_08127DBC
	ldr r0, _08129A60  @ =gUnknown_03002230
	ldr r1, _08129A64  @ =0x00001AD6
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #19
	beq _08129A56
	cmp r0, #59
	beq _08129A56
	mov r1, #99
	eor r1, r1, r0
	neg r0, r1
	orr r0, r0, r1
	lsr r4, r0, #31
_08129A56:
	add r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08129A60:
	.4byte gUnknown_03002230
_08129A64:
	.4byte 0x00001AD6
	THUMB_FUNC_END sub_08129A34

	THUMB_FUNC_START sub_08129A68
sub_08129A68: @ 0x08129A68
	ldr r1, _08129A78  @ =gUnknown_03002230
	ldr r0, _08129A7C  @ =0x00001ACD
	add r1, r1, r0
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	bx lr
_08129A78:
	.4byte gUnknown_03002230
_08129A7C:
	.4byte 0x00001ACD
	THUMB_FUNC_END sub_08129A68

	THUMB_FUNC_START sub_08129A80
sub_08129A80: @ 0x08129A80
	push {r4,r5,lr}
	mov r5, #0
	ldr r4, _08129AB8  @ =gUnknown_03002230
	ldr r1, _08129ABC  @ =0x000009AC
	add r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #20
	bne _08129AA4
	bl sub_08132C34
	ldr r1, _08129AC0  @ =0x00000CF8
	add r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _08129AA0
	mov r5, #1
_08129AA0:
	cmp r5, #0
	beq _08129AB0
_08129AA4:
	ldr r1, _08129AB8  @ =gUnknown_03002230
	ldr r0, _08129AC4  @ =0x00001AD2
	add r1, r1, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
_08129AB0:
	mov r0, #0
	pop {r4,r5}
	pop {r1}
	bx r1
_08129AB8:
	.4byte gUnknown_03002230
_08129ABC:
	.4byte 0x000009AC
_08129AC0:
	.4byte 0x00000CF8
_08129AC4:
	.4byte 0x00001AD2
	THUMB_FUNC_END sub_08129A80

	THUMB_FUNC_START sub_08129AC8
sub_08129AC8: @ 0x08129AC8
	ldr r1, _08129AE0  @ =gUnknown_03002230
	ldr r0, _08129AE4  @ =0x00001AD2
	add r2, r1, r0
	ldrh r0, [r2]
	add r0, r0, #1
	strh r0, [r2]
	ldr r0, _08129AE8  @ =0x00001B04
	add r1, r1, r0
	mov r0, #1
	strb r0, [r1]
	mov r0, #0
	bx lr
_08129AE0:
	.4byte gUnknown_03002230
_08129AE4:
	.4byte 0x00001AD2
_08129AE8:
	.4byte 0x00001B04
	THUMB_FUNC_END sub_08129AC8

	THUMB_FUNC_START sub_08129AEC
sub_08129AEC: @ 0x08129AEC
	push {lr}
	ldr r2, _08129B0C  @ =gUnknown_03002230
	ldr r1, _08129B10  @ =0x00000544
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _08129B18
	ldr r1, _08129B14  @ =0x00001ADA
	add r0, r2, r1
	ldrb r1, [r0]
	cmp r1, #1
	bls _08129B1A
	mov r1, #2
	b _08129B1A
_08129B0C:
	.4byte gUnknown_03002230
_08129B10:
	.4byte 0x00000544
_08129B14:
	.4byte 0x00001ADA
_08129B18:
	mov r1, #1
_08129B1A:
	ldr r0, _08129B2C  @ =gUnknown_08180C90
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	mov r0, #0
	pop {r1}
	bx r1
_08129B2C:
	.4byte gUnknown_08180C90
	THUMB_FUNC_END sub_08129AEC

	THUMB_FUNC_START sub_08129B30
sub_08129B30: @ 0x08129B30
	push {lr}
	ldr r2, _08129B5C  @ =gUnknown_03002230
	ldr r3, _08129B60  @ =gUnknown_08180C9C
	ldr r1, _08129B64  @ =0x00001AD2
	add r0, r2, r1
	ldrh r0, [r0]
	ldr r1, _08129B68  @ =gUnknown_02005481
	add r0, r0, r1
	ldrb r1, [r0]
	mov r0, #15
	and r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	ldr r1, _08129B6C  @ =0x00001ADA
	add r2, r2, r1
	strh r0, [r2]
	bl sub_08129B70
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08129B5C:
	.4byte gUnknown_03002230
_08129B60:
	.4byte gUnknown_08180C9C
_08129B64:
	.4byte 0x00001AD2
_08129B68:
	.4byte gUnknown_02005481
_08129B6C:
	.4byte 0x00001ADA
	THUMB_FUNC_END sub_08129B30

	THUMB_FUNC_START sub_08129B70
sub_08129B70: @ 0x08129B70
	ldr r1, _08129B80  @ =gUnknown_03002230
	ldr r0, _08129B84  @ =0x00001ADA
	add r1, r1, r0
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08129B80:
	.4byte gUnknown_03002230
_08129B84:
	.4byte 0x00001ADA
	THUMB_FUNC_END sub_08129B70

	THUMB_FUNC_START sub_08129B88
sub_08129B88: @ 0x08129B88
	ldr r1, _08129BB0  @ =gUnknown_03002230
	ldr r0, _08129BB4  @ =0x00001AD2
	add r2, r1, r0
	ldrh r0, [r2]
	add r0, r0, #2
	mov r3, #0
	strh r0, [r2]
	ldr r2, _08129BB8  @ =0x00001ADA
	add r0, r1, r2
	strh r3, [r0]
	ldr r3, _08129BBC  @ =0x00001B05
	add r0, r1, r3
	ldrb r2, [r0]
	sub r3, r3, #56
	add r0, r1, r3
	strb r2, [r0]
	ldr r0, _08129BC0  @ =0x00001ACE
	add r1, r1, r0
	strb r2, [r1]
	bx lr
_08129BB0:
	.4byte gUnknown_03002230
_08129BB4:
	.4byte 0x00001AD2
_08129BB8:
	.4byte 0x00001ADA
_08129BBC:
	.4byte 0x00001B05
_08129BC0:
	.4byte 0x00001ACE
	THUMB_FUNC_END sub_08129B88

	THUMB_FUNC_START sub_08129BC4
sub_08129BC4: @ 0x08129BC4
	push {r4,lr}
	sub sp, sp, #4
	mov r4, #0
	str r4, [sp]
	ldr r1, _08129BFC  @ =gUnknown_02003080
	ldr r2, _08129C00  @ =0x01000400
	mov r0, sp
	bl CpuFastSet
	ldr r1, _08129C04  @ =gUnknown_03002230
	ldr r2, _08129C08  @ =0x00001AD6
	add r0, r1, r2
	strh r4, [r0]
	ldr r0, _08129C0C  @ =0x00001AD2
	add r2, r1, r0
	ldrh r0, [r2]
	add r0, r0, #1
	strh r0, [r2]
	mov r2, #215
	lsl r2, r2, #5
	add r1, r1, r2
	strh r4, [r1]
	mov r0, #0
	add sp, sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08129BFC:
	.4byte gUnknown_02003080
_08129C00:
	.4byte 0x01000400
_08129C04:
	.4byte gUnknown_03002230
_08129C08:
	.4byte 0x00001AD6
_08129C0C:
	.4byte 0x00001AD2
	THUMB_FUNC_END sub_08129BC4

	THUMB_FUNC_START sub_08129C10
sub_08129C10: @ 0x08129C10
	push {lr}
	bl sub_08129578
	cmp r0, #0
	beq _08129C3E
	ldr r3, _08129C44  @ =gUnknown_03002230
	ldr r1, _08129C48  @ =0x00000547
	add r0, r3, r1
	ldr r2, _08129C4C  @ =0x00000546
	add r1, r3, r2
	ldrb r2, [r0]
	ldrb r0, [r1]
	orr r0, r0, r2
	cmp r0, #0
	beq _08129C3E
	ldr r0, _08129C50  @ =0x00001ACC
	add r1, r3, r0
	mov r0, #4
	strb r0, [r1]
	ldr r2, _08129C54  @ =0x00001AE3
	add r1, r3, r2
	mov r0, #16
	strb r0, [r1]
_08129C3E:
	mov r0, #0
	pop {r1}
	bx r1
_08129C44:
	.4byte gUnknown_03002230
_08129C48:
	.4byte 0x00000547
_08129C4C:
	.4byte 0x00000546
_08129C50:
	.4byte 0x00001ACC
_08129C54:
	.4byte 0x00001AE3
	THUMB_FUNC_END sub_08129C10

	THUMB_FUNC_START sub_08129C58
sub_08129C58: @ 0x08129C58
	push {lr}
	ldr r2, _08129C88  @ =gUnknown_03002230
	mov r1, #182
	lsl r1, r1, #5
	add r0, r2, r1
	ldrb r1, [r0]
	ldr r3, _08129C8C  @ =0x000016C1
	add r0, r2, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _08129C90  @ =0x00000958
	add r0, r2, r3
	ldrh r0, [r0]
	sub r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #91
	bls _08129C98
	ldr r0, _08129C94  @ =gUnknown_0818097C
	ldrh r1, [r0]
	b _08129C9C
_08129C88:
	.4byte gUnknown_03002230
_08129C8C:
	.4byte 0x000016C1
_08129C90:
	.4byte 0x00000958
_08129C94:
	.4byte gUnknown_0818097C
_08129C98:
	ldr r0, _08129CA8  @ =gUnknown_0818097C
	ldrh r1, [r0, #2]
_08129C9C:
	ldr r3, _08129CAC  @ =0x00001ACA
	add r0, r2, r3
	strh r1, [r0]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08129CA8:
	.4byte gUnknown_0818097C
_08129CAC:
	.4byte 0x00001ACA
	THUMB_FUNC_END sub_08129C58

	THUMB_FUNC_START sub_08129CB0
sub_08129CB0: @ 0x08129CB0
	push {r4,lr}
	ldr r2, _08129CCC  @ =gUnknown_03002230
	ldr r4, _08129CD0  @ =0x00001ACA
	add r3, r2, r4
	ldrh r4, [r3]
	ldr r3, _08129CD4  @ =0x00001AC8
	add r2, r2, r3
	mov r3, #0
	strh r4, [r2]
	strh r3, [r0]
	strh r3, [r1]
	pop {r4}
	pop {r0}
	bx r0
_08129CCC:
	.4byte gUnknown_03002230
_08129CD0:
	.4byte 0x00001ACA
_08129CD4:
	.4byte 0x00001AC8
	THUMB_FUNC_END sub_08129CB0

	THUMB_FUNC_START sub_08129CD8
sub_08129CD8: @ 0x08129CD8
	push {r4-r7,lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	add r0, r6, #0
	add r0, r0, #32
	str r0, [r5]
	add r1, r6, #0
	add r1, r1, #41
	add r0, r6, #0
	bl sub_08129E0C
	add r4, r0, #0
	ldr r1, [r5]
	add r1, r1, #8
	add r0, r6, #0
	bl sub_08129E0C
	lsl r4, r4, #24
	lsr r4, r4, #24
	lsl r0, r0, #24
	lsr r0, r0, #16
	orr r4, r4, r0
	lsl r4, r4, #2
	add r1, r4, #0
	add r1, r1, #48
	mov r0, #31
	and r0, r0, r1
	cmp r0, #0
	beq _08129D1C
	add r1, r1, #32
	mov r0, #32
	neg r0, r0
	and r1, r1, r0
_08129D1C:
	add r0, r6, r1
	str r0, [r7]
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08129CD8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08129D28
sub_08129D28: @ 0x08129D28
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	mov r9, r0
	add r5, r1, #0
	mov r10, r2
	lsl r3, r3, #2
	add r3, r3, #16
	add r5, r5, r3
	add r1, r5, #0
	bl sub_08129E0C
	add r4, r0, #0
	add r1, r5, #1
	mov r0, r9
	bl sub_08129E0C
	mov r8, r0
	add r1, r5, #2
	mov r0, r9
	bl sub_08129E0C
	add r6, r0, #0
	add r5, r5, #3
	mov r0, r9
	add r1, r5, #0
	bl sub_08129E0C
	lsl r4, r4, #24
	mov r1, r8
	lsl r1, r1, #24
	lsr r1, r1, #8
	orr r4, r4, r1
	lsl r6, r6, #24
	lsr r6, r6, #16
	orr r4, r4, r6
	lsl r0, r0, #24
	lsr r0, r0, #24
	orr r4, r4, r0
	add r4, r4, #8
	add r10, r10, r4
	mov r0, r10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08129D28

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08129D90
sub_08129D90: @ 0x08129D90
	push {r4,lr}
	ldr r4, _08129DB4  @ =gUnknown_03002230
	ldr r1, _08129DB8  @ =0x00001B04
	add r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08129DA6
	mov r0, #80
	mov r1, #0
	bl sub_0812A324
_08129DA6:
	ldr r0, _08129DBC  @ =0x00001ACC
	add r1, r4, r0
	mov r0, #4
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
_08129DB4:
	.4byte gUnknown_03002230
_08129DB8:
	.4byte 0x00001B04
_08129DBC:
	.4byte 0x00001ACC
	THUMB_FUNC_END sub_08129D90

	THUMB_FUNC_START sub_08129DC0
sub_08129DC0: @ 0x08129DC0
	push {lr}
	ldr r0, _08129DD8  @ =gUnknown_03002230
	ldr r1, _08129DDC  @ =0x00001B04
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08129DE0
	mov r0, #119
	mov r1, #0
	bl sub_0812A324
	b _08129DE8
_08129DD8:
	.4byte gUnknown_03002230
_08129DDC:
	.4byte 0x00001B04
_08129DE0:
	mov r0, #108
	mov r1, #0
	bl sub_0812A324
_08129DE8:
	ldr r1, _08129E00  @ =gUnknown_03002230
	ldr r0, _08129E04  @ =0x00001AE2
	add r2, r1, r0
	mov r0, #255
	strb r0, [r2]
	ldr r0, _08129E08  @ =0x00001ACC
	add r1, r1, r0
	mov r0, #4
	strb r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08129E00:
	.4byte gUnknown_03002230
_08129E04:
	.4byte 0x00001AE2
_08129E08:
	.4byte 0x00001ACC
	THUMB_FUNC_END sub_08129DC0

	THUMB_FUNC_START sub_08129E0C
sub_08129E0C: @ 0x08129E0C
	push {r4,r5,lr}
	add r4, r1, #0
	sub r0, r4, r0
	mov r5, #255
	and r5, r5, r0
	mov r1, #15
	add r3, r0, #0
	and r3, r3, r1
	cmp r0, #42
	bgt _08129E34
	ldr r2, _08129E30  @ =gUnknown_08180CD0
	sub r0, r1, r3
	add r0, r0, r2
	ldrb r0, [r0]
	sub r0, r5, r0
	ldrb r1, [r4]
	eor r0, r0, r1
	b _08129E4A
_08129E30:
	.4byte gUnknown_08180CD0
_08129E34:
	ldr r2, _08129E5C  @ =gUnknown_08180CD0
	sub r0, r1, r3
	add r0, r0, r2
	ldrb r0, [r0]
	sub r0, r5, r0
	ldrb r1, [r4]
	eor r0, r0, r1
	add r1, r4, #0
	sub r1, r1, #43
	ldrb r1, [r1]
	sub r0, r0, r1
_08129E4A:
	sub r0, r0, r5
	add r2, r3, r2
	ldrb r1, [r2]
	eor r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	pop {r4,r5}
	pop {r1}
	bx r1
_08129E5C:
	.4byte gUnknown_08180CD0
	THUMB_FUNC_END sub_08129E0C

	THUMB_FUNC_START sub_08129E60
sub_08129E60: @ 0x08129E60
	push {lr}
	ldr r0, _08129E78  @ =gUnknown_08198C30
	bl sub_0812A6CC
	bl sub_0812A13C
	bl sub_08129EF4
	bl sub_0812A5D0
	pop {r0}
	bx r0
_08129E78:
	.4byte gUnknown_08198C30
	THUMB_FUNC_END sub_08129E60

	THUMB_FUNC_START sub_08129E7C
sub_08129E7C: @ 0x08129E7C
	push {lr}
	bl sub_0812A194
	bl sub_08129F30
	bl sub_0812A5F4
	bl sub_0812C704
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08129E7C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08129E94
sub_08129E94: @ 0x08129E94
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _08129EA8  @ =gUnknown_08198C4C
	add r0, r0, r1
	ldrb r0, [r0]
	bl sub_0812C904
	pop {r0}
	bx r0
_08129EA8:
	.4byte gUnknown_08198C4C
	THUMB_FUNC_END sub_08129E94

	THUMB_FUNC_START sub_08129EAC
sub_08129EAC: @ 0x08129EAC
	push {lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r0, _08129EC4  @ =gUnknown_030000B8
	strb r1, [r0]
	ldr r0, _08129EC8  @ =0x000BFFFE
	bl sub_0812C7CC
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08129EC4:
	.4byte gUnknown_030000B8
_08129EC8:
	.4byte 0x000BFFFE
	THUMB_FUNC_END sub_08129EAC

	THUMB_FUNC_START sub_08129ECC
sub_08129ECC: @ 0x08129ECC
	push {lr}
	ldr r0, _08129EDC  @ =0x000FFFFF
	mov r1, #0
	bl sub_0812C7AC
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08129EDC:
	.4byte 0x000FFFFF
	THUMB_FUNC_END sub_08129ECC

	THUMB_FUNC_START sub_08129EE0
sub_08129EE0: @ 0x08129EE0
	push {lr}
	ldr r0, _08129EF0  @ =0x000BFFFF
	mov r1, #0
	bl sub_0812C7AC
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08129EF0:
	.4byte 0x000BFFFF
	THUMB_FUNC_END sub_08129EE0

	THUMB_FUNC_START sub_08129EF4
sub_08129EF4: @ 0x08129EF4
	ldr r0, _08129F18  @ =gUnknown_030000C0
	mov r2, #0
	strb r2, [r0]
	ldr r1, _08129F1C  @ =gUnknown_030000BE
	mov r3, #1
	neg r3, r3
	add r0, r3, #0
	strh r0, [r1]
	ldr r0, _08129F20  @ =gUnknown_030000BC
	strb r2, [r0]
	ldr r0, _08129F24  @ =gUnknown_030000C1
	strb r2, [r0]
	ldr r1, _08129F28  @ =gUnknown_030000C3
	mov r0, #128
	strb r0, [r1]
	ldr r0, _08129F2C  @ =gUnknown_030000C2
	strb r2, [r0]
	bx lr
_08129F18:
	.4byte gUnknown_030000C0
_08129F1C:
	.4byte gUnknown_030000BE
_08129F20:
	.4byte gUnknown_030000BC
_08129F24:
	.4byte gUnknown_030000C1
_08129F28:
	.4byte gUnknown_030000C3
_08129F2C:
	.4byte gUnknown_030000C2
	THUMB_FUNC_END sub_08129EF4

	THUMB_FUNC_START sub_08129F30
sub_08129F30: @ 0x08129F30
	push {r4,lr}
	ldr r4, _08129F4C  @ =gUnknown_030000C0
	ldrb r0, [r4]
	cmp r0, #1
	bne _08129F50
	mov r0, #18
	bl sub_0812C64C
	cmp r0, #0
	beq _08129F6E
	mov r0, #2
	strb r0, [r4]
	b _08129F6E
	.byte 0x00
	.byte 0x00
_08129F4C:
	.4byte gUnknown_030000C0
_08129F50:
	cmp r0, #1
	ble _08129F6E
	cmp r0, #3
	bgt _08129F6E
	mov r0, #18
	bl sub_0812C64C
	cmp r0, #0
	bne _08129F6E
	strb r0, [r4]
	ldr r1, _08129F84  @ =gUnknown_030000BE
	mov r2, #1
	neg r2, r2
	add r0, r2, #0
	strh r0, [r1]
_08129F6E:
	ldr r0, _08129F88  @ =gUnknown_030000B8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08129FAC
	ldr r1, _08129F8C  @ =gUnknown_030000C3
	ldrb r0, [r1]
	cmp r0, #4
	bls _08129F90
	sub r0, r0, #4
	b _0812A01E
	.byte 0x00
	.byte 0x00
_08129F84:
	.4byte gUnknown_030000BE
_08129F88:
	.4byte gUnknown_030000B8
_08129F8C:
	.4byte gUnknown_030000C3
_08129F90:
	mov r0, #0
	strb r0, [r1]
	mov r0, #18
	mov r1, #0
	bl sub_0812C814
	ldr r0, _08129FA8  @ =0x000FFFFE
	mov r1, #1
	bl sub_0812C7CC
	b _0812A03C
	.byte 0x00
	.byte 0x00
_08129FA8:
	.4byte 0x000FFFFE
_08129FAC:
	ldr r4, _08129FC0  @ =gUnknown_030000C2
	ldrb r0, [r4]
	cmp r0, #1
	bne _08129FDA
	ldr r1, _08129FC4  @ =gUnknown_030000C3
	ldrb r0, [r1]
	cmp r0, #52
	bls _08129FC8
	sub r0, r0, #4
	b _0812A01E
_08129FC0:
	.4byte gUnknown_030000C2
_08129FC4:
	.4byte gUnknown_030000C3
_08129FC8:
	mov r0, #48
	strb r0, [r1]
	mov r0, #18
	mov r1, #48
	bl sub_0812C814
	mov r0, #0
	strb r0, [r4]
	b _0812A03C
_08129FDA:
	ldr r0, _08129FF0  @ =0x000FFFFE
	mov r1, #0
	bl sub_0812C7CC
	ldr r0, _08129FF4  @ =gUnknown_030000C1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08129FF8
	cmp r0, #1
	beq _0812A014
	b _0812A03C
_08129FF0:
	.4byte 0x000FFFFE
_08129FF4:
	.4byte gUnknown_030000C1
_08129FF8:
	ldr r1, _0812A010  @ =gUnknown_030000C3
	ldrb r0, [r1]
	cmp r0, #123
	bls _0812A01C
	mov r0, #128
	strb r0, [r1]
	mov r0, #18
	mov r1, #128
	bl sub_0812C814
	b _0812A03C
	.byte 0x00
	.byte 0x00
_0812A010:
	.4byte gUnknown_030000C3
_0812A014:
	ldr r1, _0812A02C  @ =gUnknown_030000C3
	ldrb r0, [r1]
	cmp r0, #43
	bhi _0812A030
_0812A01C:
	add r0, r0, #4
_0812A01E:
	strb r0, [r1]
	ldrb r1, [r1]
	mov r0, #18
	bl sub_0812C814
	b _0812A03C
	.byte 0x00
	.byte 0x00
_0812A02C:
	.4byte gUnknown_030000C3
_0812A030:
	mov r0, #48
	strb r0, [r1]
	mov r0, #18
	mov r1, #48
	bl sub_0812C814
_0812A03C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08129F30

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812A044
sub_0812A044: @ 0x0812A044
	push {r4,lr}
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r0, _0812A078  @ =gUnknown_030000BC
	ldrb r0, [r0]
	cmp r0, #1
	beq _0812A072
	bl sub_0812A0B8
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, r4
	beq _0812A072
	ldr r0, _0812A07C  @ =gUnknown_08198C50
	lsl r1, r4, #1
	add r1, r1, r0
	ldrb r1, [r1]
	mov r0, #18
	bl sub_0812C718
	add r0, r4, #0
	bl sub_0812A080
_0812A072:
	pop {r4}
	pop {r0}
	bx r0
_0812A078:
	.4byte gUnknown_030000BC
_0812A07C:
	.4byte gUnknown_08198C50
	THUMB_FUNC_END sub_0812A044

	THUMB_FUNC_START sub_0812A080
sub_0812A080: @ 0x0812A080
	ldr r2, _0812A08C  @ =gUnknown_030000C0
	mov r1, #1
	strb r1, [r2]
	ldr r1, _0812A090  @ =gUnknown_030000BE
	strh r0, [r1]
	bx lr
_0812A08C:
	.4byte gUnknown_030000C0
_0812A090:
	.4byte gUnknown_030000BE
	THUMB_FUNC_END sub_0812A080

	THUMB_FUNC_START sub_0812A094
sub_0812A094: @ 0x0812A094
	ldr r1, _0812A09C  @ =gUnknown_030000C0
	mov r0, #3
	strb r0, [r1]
	bx lr
_0812A09C:
	.4byte gUnknown_030000C0
	THUMB_FUNC_END sub_0812A094

	THUMB_FUNC_START sub_0812A0A0
sub_0812A0A0: @ 0x0812A0A0
	push {lr}
	add r1, r0, #0
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r0, #18
	bl sub_0812C764
	bl sub_0812A094
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812A0A0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812A0B8
sub_0812A0B8: @ 0x0812A0B8
	push {lr}
	ldr r0, _0812A0CC  @ =gUnknown_030000C0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0812A0D4
	ldr r0, _0812A0D0  @ =gUnknown_030000BE
	mov r1, #0
	ldrsh r0, [r0, r1]
	b _0812A0D8
	.byte 0x00
	.byte 0x00
_0812A0CC:
	.4byte gUnknown_030000C0
_0812A0D0:
	.4byte gUnknown_030000BE
_0812A0D4:
	mov r0, #1
	neg r0, r0
_0812A0D8:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0812A0B8

	THUMB_FUNC_START sub_0812A0DC
sub_0812A0DC: @ 0x0812A0DC
	push {lr}
	bl sub_0812A0B8
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #0
	blt _0812A104
	ldr r1, _0812A108  @ =gUnknown_08198C50
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0812A104
	mov r0, #18
	mov r1, #0
	bl sub_0812C7F0
_0812A104:
	pop {r0}
	bx r0
_0812A108:
	.4byte gUnknown_08198C50
	THUMB_FUNC_END sub_0812A0DC

	THUMB_FUNC_START sub_0812A10C
sub_0812A10C: @ 0x0812A10C
	push {lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _0812A11E
	cmp r1, #1
	bne _0812A122
	ldr r0, _0812A128  @ =gUnknown_030000C2
	strb r1, [r0]
_0812A11E:
	ldr r0, _0812A12C  @ =gUnknown_030000C1
	strb r1, [r0]
_0812A122:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812A128:
	.4byte gUnknown_030000C2
_0812A12C:
	.4byte gUnknown_030000C1
	THUMB_FUNC_END sub_0812A10C

	THUMB_FUNC_START sub_0812A130
sub_0812A130: @ 0x0812A130
	ldr r0, _0812A138  @ =gUnknown_030000C1
	ldrb r0, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0812A138:
	.4byte gUnknown_030000C1
	THUMB_FUNC_END sub_0812A130

	THUMB_FUNC_START sub_0812A13C
sub_0812A13C: @ 0x0812A13C
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, _0812A180  @ =gUnknown_030000C8
	mov r3, #1
	neg r3, r3
	mov r2, #0
	ldr r0, _0812A184  @ =gUnknown_03000108
	mov r1, #1
_0812A14C:
	str r3, [r0]
	strb r2, [r0, #4]
	add r0, r0, #8
	sub r1, r1, #1
	cmp r1, #0
	bge _0812A14C
	ldr r1, _0812A188  @ =gUnknown_030000F0
	mov r2, #0
	add r0, r1, #0
	add r0, r0, #18
_0812A160:
	strb r2, [r0]
	sub r0, r0, #1
	cmp r0, r1
	bge _0812A160
	mov r0, sp
	ldr r2, _0812A18C  @ =0x0000FFFF
	add r1, r2, #0
	strh r1, [r0]
	ldr r2, _0812A190  @ =0x01000013
	add r1, r4, #0
	bl CpuSet
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0812A180:
	.4byte gUnknown_030000C8
_0812A184:
	.4byte gUnknown_03000108
_0812A188:
	.4byte gUnknown_030000F0
_0812A18C:
	.4byte 0x0000FFFF
_0812A190:
	.4byte 0x01000013
	THUMB_FUNC_END sub_0812A13C

	THUMB_FUNC_START sub_0812A194
sub_0812A194: @ 0x0812A194
	push {r4-r6,lr}
	mov r5, #0
	mov r6, #128
	lsl r6, r6, #13
_0812A19C:
	ldr r0, _0812A1C4  @ =gUnknown_03000108
	lsl r1, r5, #3
	add r4, r1, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0812A1C8
	add r0, r5, #0
	add r0, r0, #16
	bl sub_0812C64C
	cmp r0, #0
	beq _0812A1BC
	lsr r0, r6, #16
	mov r1, #0
	bl sub_0812C764
_0812A1BC:
	mov r0, #1
	neg r0, r0
	str r0, [r4]
	b _0812A1CC
_0812A1C4:
	.4byte gUnknown_03000108
_0812A1C8:
	mov r0, #0
	strb r0, [r4, #4]
_0812A1CC:
	mov r0, #128
	lsl r0, r0, #9
	add r6, r6, r0
	add r5, r5, #1
	cmp r5, #1
	ble _0812A19C
	mov r5, #0
	ldr r4, _0812A1EC  @ =gUnknown_030000C8
_0812A1DC:
	ldr r0, _0812A1F0  @ =gUnknown_030000F0
	add r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0812A1F4
	mov r0, #0
	strb r0, [r1]
	b _0812A202
_0812A1EC:
	.4byte gUnknown_030000C8
_0812A1F0:
	.4byte gUnknown_030000F0
_0812A1F4:
	add r0, r5, #0
	bl sub_0812C64C
	cmp r0, #0
	bne _0812A202
	ldr r0, _0812A230  @ =0x0000FFFF
	strh r0, [r4]
_0812A202:
	add r4, r4, #2
	add r5, r5, #1
	cmp r5, #18
	ble _0812A1DC
	ldr r2, _0812A234  @ =gUnknown_03000104
	ldrb r0, [r2]
	cmp r0, #1
	bne _0812A240
	ldr r1, _0812A238  @ =gUnknown_03000103
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #36
	bls _0812A24A
	mov r0, #0
	strb r0, [r2]
	strb r0, [r1]
	ldr r1, _0812A23C  @ =gUnknown_03000105
	strb r0, [r1]
	b _0812A24A
	.byte 0x00
	.byte 0x00
_0812A230:
	.4byte 0x0000FFFF
_0812A234:
	.4byte gUnknown_03000104
_0812A238:
	.4byte gUnknown_03000103
_0812A23C:
	.4byte gUnknown_03000105
_0812A240:
	ldr r0, _0812A250  @ =gUnknown_03000103
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0812A254  @ =gUnknown_03000105
	strb r1, [r0]
_0812A24A:
	pop {r4-r6}
	pop {r0}
	bx r0
_0812A250:
	.4byte gUnknown_03000103
_0812A254:
	.4byte gUnknown_03000105
	THUMB_FUNC_END sub_0812A194

	THUMB_FUNC_START sub_0812A258
sub_0812A258: @ 0x0812A258
	push {lr}
	cmp r0, #0
	bne _0812A262
	mov r0, #64
	b _0812A2A6
_0812A262:
	mov r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bge _0812A26E
	mov r0, #0
	b _0812A2A6
_0812A26E:
	cmp r1, #240
	bgt _0812A2A4
	mov r1, #0
	ldrsh r0, [r0, r1]
	bl __floatsidf
	ldr r3, _0812A298  @ =0x00000000
	ldr r2, _0812A294  @ =0x406E0000
	bl __divdf3
	ldr r2, _0812A29C  @ =0x405FC000
	ldr r3, _0812A2A0  @ =0x00000000
	bl __muldf3
	bl __fixdfsi
	lsl r0, r0, #24
	lsr r0, r0, #24
	b _0812A2A6
_0812A294:
	.4byte 0x406E0000
_0812A298:
	.4byte 0x00000000
_0812A29C:
	.4byte 0x405FC000
_0812A2A0:
	.4byte 0x00000000
_0812A2A4:
	mov r0, #127
_0812A2A6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0812A258

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812A2AC
sub_0812A2AC: @ 0x0812A2AC
	push {lr}
	cmp r0, #0
	beq _0812A2DA
	ldrh r2, [r0]
	mov r3, #0
	ldrsh r1, [r0, r3]
	mov r0, #128
	neg r0, r0
	cmp r1, r0
	blt _0812A2D2
	cmp r1, #0
	bge _0812A2CA
	add r0, r2, #0
	add r0, r0, #128
	b _0812A2E0
_0812A2CA:
	mov r0, #184
	lsl r0, r0, #1
	cmp r1, r0
	ble _0812A2D6
_0812A2D2:
	mov r0, #0
	b _0812A2E4
_0812A2D6:
	cmp r1, #240
	bgt _0812A2DE
_0812A2DA:
	mov r0, #128
	b _0812A2E4
_0812A2DE:
	sub r0, r0, r2
_0812A2E0:
	lsl r0, r0, #16
	lsr r0, r0, #16
_0812A2E4:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0812A2AC

	THUMB_FUNC_START sub_0812A2E8
sub_0812A2E8: @ 0x0812A2E8
	push {lr}
	cmp r0, #0
	beq _0812A316
	ldrh r2, [r0, #2]
	mov r3, #2
	ldrsh r1, [r0, r3]
	mov r0, #128
	neg r0, r0
	cmp r1, r0
	blt _0812A30E
	cmp r1, #0
	bge _0812A306
	add r0, r2, #0
	add r0, r0, #128
	b _0812A31C
_0812A306:
	mov r0, #144
	lsl r0, r0, #1
	cmp r1, r0
	ble _0812A312
_0812A30E:
	mov r0, #0
	b _0812A320
_0812A312:
	cmp r1, #160
	bgt _0812A31A
_0812A316:
	mov r0, #128
	b _0812A320
_0812A31A:
	sub r0, r0, r2
_0812A31C:
	lsl r0, r0, #16
	lsr r0, r0, #16
_0812A320:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0812A2E8

	THUMB_FUNC_START sub_0812A324
sub_0812A324: @ 0x0812A324
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r9, r1
	lsl r0, r0, #16
	lsr r7, r0, #16
	ldr r3, _0812A38C  @ =gUnknown_08198C94
	lsl r0, r7, #2
	add r0, r0, r3
	ldr r1, [r0]
	mov r0, #255
	lsl r0, r0, #16
	and r0, r0, r1
	lsr r6, r0, #16
	add r4, r1, #0
	mov r0, #128
	mov r8, r0
	ldr r1, _0812A390  @ =gUnknown_030000C8
	lsl r0, r6, #1
	add r2, r0, r1
	mov r0, #0
	ldrsh r1, [r2, r0]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _0812A3B0
	mov r0, #128
	lsl r0, r0, #21
	and r0, r0, r4
	cmp r0, #0
	beq _0812A36C
	add r0, r1, #0
	cmp r7, r0
	bne _0812A36C
	b _0812A46A
_0812A36C:
	mov r1, #0
	ldrsh r0, [r2, r1]
	lsl r0, r0, #2
	add r0, r0, r3
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #19
	and r0, r0, r4
	cmp r0, #0
	bne _0812A394
	lsr r2, r4, #25
	mov r0, #1
	bic r0, r0, r2
	add r2, r0, #0
	b _0812A396
	.byte 0x00
	.byte 0x00
_0812A38C:
	.4byte gUnknown_08198C94
_0812A390:
	.4byte gUnknown_030000C8
_0812A394:
	mov r2, #2
_0812A396:
	mov r0, #128
	lsl r0, r0, #19
	and r0, r0, r1
	cmp r0, #0
	bne _0812A3AC
	lsr r1, r1, #25
	mov r0, #1
	bic r0, r0, r1
	cmp r2, r0
	blt _0812A46A
	b _0812A3B0
_0812A3AC:
	cmp r2, #1
	ble _0812A46A
_0812A3B0:
	lsl r0, r4, #16
	lsr r2, r0, #16
	mov r0, #128
	lsl r0, r0, #20
	and r0, r0, r4
	cmp r0, #0
	beq _0812A3FE
	ldr r5, _0812A3D8  @ =gUnknown_03000105
	ldrb r3, [r5]
	add r1, r3, #0
	cmp r1, #2
	bne _0812A3E0
	add r0, r2, #2
	lsl r0, r0, #16
	lsr r2, r0, #16
	ldr r1, _0812A3DC  @ =gUnknown_03000104
	mov r0, #0
	strb r0, [r1]
	b _0812A3FE
	.byte 0x00
	.byte 0x00
_0812A3D8:
	.4byte gUnknown_03000105
_0812A3DC:
	.4byte gUnknown_03000104
_0812A3E0:
	cmp r1, #1
	bne _0812A3F4
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	ldr r0, _0812A3F0  @ =gUnknown_03000104
	b _0812A3F8
	.byte 0x00
	.byte 0x00
_0812A3F0:
	.4byte gUnknown_03000104
_0812A3F4:
	ldr r0, _0812A478  @ =gUnknown_03000104
	mov r1, #1
_0812A3F8:
	strb r1, [r0]
	add r0, r3, #1
	strb r0, [r5]
_0812A3FE:
	add r0, r6, #0
	mov r1, #0
	bl sub_0812C73C
	ldr r1, _0812A47C  @ =gUnknown_030000C8
	lsl r0, r6, #1
	add r0, r0, r1
	strh r7, [r0]
	ldr r0, _0812A480  @ =gUnknown_030000F0
	add r0, r6, r0
	mov r1, #1
	strb r1, [r0]
	mov r0, #128
	lsl r0, r0, #17
	and r0, r0, r4
	cmp r0, #0
	beq _0812A440
	mov r0, r9
	bl sub_0812A258
	add r2, r0, #0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r0, r6, #0
	mov r1, #1
	bl sub_0812C8DC
	mov r0, r9
	bl sub_0812A2AC
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
_0812A440:
	mov r0, #128
	lsl r0, r0, #22
	and r0, r0, r4
	cmp r0, #0
	beq _0812A45C
	mov r0, r9
	bl sub_0812A2E8
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r8
	mul r1, r0, r1
	lsr r1, r1, #7
	mov r8, r1
_0812A45C:
	mov r0, r8
	lsl r2, r0, #24
	lsr r2, r2, #24
	add r0, r6, #0
	mov r1, #1
	bl sub_0812C884
_0812A46A:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812A478:
	.4byte gUnknown_03000104
_0812A47C:
	.4byte gUnknown_030000C8
_0812A480:
	.4byte gUnknown_030000F0
	THUMB_FUNC_END sub_0812A324

	THUMB_FUNC_START sub_0812A484
sub_0812A484: @ 0x0812A484
	push {lr}
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r2, _0812A4B0  @ =gUnknown_08198C94
	lsl r1, r0, #2
	add r1, r1, r2
	ldr r1, [r1]
	mov r2, #255
	lsl r2, r2, #16
	and r1, r1, r2
	mov r3, #0
	ldr r2, _0812A4B4  @ =gUnknown_030000C8
	lsr r1, r1, #15
	add r1, r1, r2
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r1, r0
	bne _0812A4AA
	mov r3, #1
_0812A4AA:
	add r0, r3, #0
	pop {r1}
	bx r1
_0812A4B0:
	.4byte gUnknown_08198C94
_0812A4B4:
	.4byte gUnknown_030000C8
	THUMB_FUNC_END sub_0812A484

	THUMB_FUNC_START sub_0812A4B8
sub_0812A4B8: @ 0x0812A4B8
	push {r4,lr}
	add r2, r0, #0
	mov r1, #0
	ldr r4, _0812A4DC  @ =gUnknown_03000108
	mov r3, #1
	neg r3, r3
_0812A4C4:
	lsl r0, r1, #24
	asr r1, r0, #24
	lsl r0, r1, #3
	add r0, r0, r4
	ldr r0, [r0]
	cmp r0, r3
	beq _0812A4D6
	cmp r0, r2
	bne _0812A4E0
_0812A4D6:
	add r0, r1, #0
	b _0812A4F0
	.byte 0x00
	.byte 0x00
_0812A4DC:
	.4byte gUnknown_03000108
_0812A4E0:
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	ble _0812A4C4
	mov r0, #1
	neg r0, r0
_0812A4F0:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0812A4B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812A4F8
sub_0812A4F8: @ 0x0812A4F8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	mov r9, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	str r1, [sp]
	mov r0, #128
	mov r8, r0
	ldr r1, _0812A5C4  @ =gUnknown_08198E88
	ldr r2, [sp]
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r6, [r0]
	ldrh r0, [r0]
	mov r10, r0
	add r0, r5, #0
	bl sub_0812A4B8
	lsl r0, r0, #24
	asr r1, r0, #24
	cmp r1, #0
	blt _0812A5B4
	add r4, r1, #0
	add r4, r4, #16
	ldr r0, _0812A5C8  @ =gUnknown_03000108
	lsl r1, r1, #3
	add r7, r1, r0
	ldr r0, [r7]
	cmp r5, r0
	beq _0812A54C
	lsl r0, r4, #16
	lsr r0, r0, #16
	mov r1, #0
	mov r2, r10
	bl sub_0812C73C
	str r5, [r7]
_0812A54C:
	ldr r0, _0812A5CC  @ =gUnknown_030000C8
	lsl r1, r4, #1
	add r1, r1, r0
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #17
	and r0, r0, r6
	lsl r5, r4, #16
	cmp r0, #0
	beq _0812A586
	lsr r4, r5, #16
	mov r0, r9
	bl sub_0812A258
	add r2, r0, #0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r0, r4, #0
	mov r1, #1
	bl sub_0812C8DC
	mov r0, r9
	bl sub_0812A2AC
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
_0812A586:
	mov r0, #128
	lsl r0, r0, #22
	and r6, r6, r0
	cmp r6, #0
	beq _0812A5A2
	mov r0, r9
	bl sub_0812A2E8
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r8
	mul r1, r0, r1
	lsr r1, r1, #7
	mov r8, r1
_0812A5A2:
	lsr r0, r5, #16
	mov r1, r8
	lsl r2, r1, #24
	lsr r2, r2, #24
	mov r1, #1
	bl sub_0812C884
	mov r0, #1
	strb r0, [r7, #4]
_0812A5B4:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0812A5C4:
	.4byte gUnknown_08198E88
_0812A5C8:
	.4byte gUnknown_03000108
_0812A5CC:
	.4byte gUnknown_030000C8
	THUMB_FUNC_END sub_0812A4F8

	THUMB_FUNC_START sub_0812A5D0
sub_0812A5D0: @ 0x0812A5D0
	push {lr}
	ldr r0, _0812A5EC  @ =0x0000FFFF
	add r3, r0, #0
	ldr r1, _0812A5F0  @ =gUnknown_03000118
	mov r2, #18
_0812A5DA:
	ldrh r0, [r1]
	orr r0, r0, r3
	strh r0, [r1]
	add r1, r1, #2
	sub r2, r2, #1
	cmp r2, #0
	bge _0812A5DA
	pop {r0}
	bx r0
_0812A5EC:
	.4byte 0x0000FFFF
_0812A5F0:
	.4byte gUnknown_03000118
	THUMB_FUNC_END sub_0812A5D0

	THUMB_FUNC_START sub_0812A5F4
sub_0812A5F4: @ 0x0812A5F4
	bx lr
	THUMB_FUNC_END sub_0812A5F4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812A5F8
sub_0812A5F8: @ 0x0812A5F8
	push {r4,r5,lr}
	lsl r0, r0, #16
	lsr r5, r0, #16
	ldr r1, _0812A634  @ =gUnknown_08198EA8
	lsl r0, r5, #2
	add r0, r0, r1
	ldr r1, [r0]
	ldrh r2, [r0]
	add r3, r2, #0
	mov r0, #255
	lsl r0, r0, #16
	and r0, r0, r1
	lsr r4, r0, #16
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _0812A65E
	mov r0, #128
	lsl r0, r0, #17
	and r0, r0, r1
	cmp r0, #0
	beq _0812A638
	add r0, r4, #0
	add r1, r2, #0
	bl sub_0812C718
	add r0, r5, #0
	bl sub_0812A080
	b _0812A656
_0812A634:
	.4byte gUnknown_08198EA8
_0812A638:
	mov r0, #128
	lsl r0, r0, #18
	and r1, r1, r0
	cmp r1, #0
	beq _0812A64C
	add r0, r4, #0
	mov r1, #0
	bl sub_0812C73C
	b _0812A656
_0812A64C:
	add r0, r4, #0
	mov r1, #1
	add r2, r3, #0
	bl sub_0812C73C
_0812A656:
	ldr r1, _0812A664  @ =gUnknown_03000118
	lsl r0, r4, #1
	add r0, r0, r1
	strh r5, [r0]
_0812A65E:
	pop {r4,r5}
	pop {r0}
	bx r0
_0812A664:
	.4byte gUnknown_03000118
	THUMB_FUNC_END sub_0812A5F8

	THUMB_FUNC_START sub_0812A668
sub_0812A668: @ 0x0812A668
	push {r4,r5,lr}
	lsl r0, r0, #16
	lsr r3, r0, #16
	ldr r1, _0812A6B0  @ =gUnknown_08198EA8
	lsl r0, r3, #2
	add r0, r0, r1
	ldr r4, [r0]
	mov r0, #255
	lsl r0, r0, #16
	and r0, r0, r4
	lsr r2, r0, #16
	mov r0, #1
	neg r0, r0
	cmp r4, r0
	beq _0812A6AA
	ldr r0, _0812A6B4  @ =gUnknown_03000118
	lsl r1, r2, #1
	add r1, r1, r0
	mov r5, #0
	ldrsh r0, [r1, r5]
	cmp r3, r0
	bne _0812A6AA
	add r0, r2, #0
	mov r1, #0
	bl sub_0812C764
	mov r0, #128
	lsl r0, r0, #17
	and r4, r4, r0
	cmp r4, #0
	beq _0812A6AA
	bl sub_0812A094
_0812A6AA:
	pop {r4,r5}
	pop {r0}
	bx r0
_0812A6B0:
	.4byte gUnknown_08198EA8
_0812A6B4:
	.4byte gUnknown_03000118
	THUMB_FUNC_END sub_0812A668

	THUMB_FUNC_START sub_0812A6B8
sub_0812A6B8: @ 0x0812A6B8
	push {lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #18
	bl sub_0812C814
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812A6B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812A6CC
sub_0812A6CC: @ 0x0812A6CC
	push {r4,r5,lr}
	ldr r1, _0812A758  @ =gUnknown_030003CC
	str r0, [r1]
	ldr r1, _0812A75C  @ =0x04000084
	mov r0, #0
	strb r0, [r1]
	mov r0, #128
	strb r0, [r1]
	sub r1, r1, #4
	ldr r2, _0812A760  @ =0x0000FF77
	add r0, r2, #0
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #13
	strb r0, [r1]
	ldr r2, _0812A764  @ =0x04000088
	ldrh r1, [r2]
	ldr r0, _0812A768  @ =0x00003FFF
	and r0, r0, r1
	mov r3, #128
	lsl r3, r3, #7
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _0812A76C  @ =0x04000060
	mov r0, #8
	strh r0, [r1]
	add r1, r1, #2
	mov r2, #240
	lsl r2, r2, #8
	add r0, r2, #0
	strh r0, [r1]
	ldr r5, _0812A770  @ =0x0812CC58
	ldr r4, _0812A774  @ =gUnknown_03001400
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #216
	bl CpuFastSet
	ldr r0, _0812A778  @ =gUnknown_030003D0
	str r4, [r0]
	ldr r1, _0812A77C  @ =gUnknown_030003D4
	ldr r0, _0812A780  @ =0x0812CD78
	sub r0, r0, r5
	add r0, r0, r4
	str r0, [r1]
	ldr r1, _0812A784  @ =gUnknown_030003D8
	ldr r0, _0812A788  @ =0x0812CE70
	sub r0, r0, r5
	add r0, r0, r4
	str r0, [r1]
	ldr r1, _0812A78C  @ =gUnknown_03000C1C
	ldr r0, _0812A790  @ =gUnknown_02036000
	str r0, [r1]
	ldr r0, _0812A794  @ =gUnknown_030003DC
	bl sub_0812A7C8
	bl sub_0812C688
	bl sub_0812AB14
	bl sub_0812AC0C
	bl sub_0812BCFC
	bl sub_0812C368
	pop {r4,r5}
	pop {r0}
	bx r0
_0812A758:
	.4byte gUnknown_030003CC
_0812A75C:
	.4byte 0x04000084
_0812A760:
	.4byte 0x0000FF77
_0812A764:
	.4byte 0x04000088
_0812A768:
	.4byte 0x00003FFF
_0812A76C:
	.4byte 0x04000060
_0812A770:
	.4byte 0x0812CC58
_0812A774:
	.4byte gUnknown_03001400
_0812A778:
	.4byte gUnknown_030003D0
_0812A77C:
	.4byte gUnknown_030003D4
_0812A780:
	.4byte 0x0812CD78
_0812A784:
	.4byte gUnknown_030003D8
_0812A788:
	.4byte 0x0812CE70
_0812A78C:
	.4byte gUnknown_03000C1C
_0812A790:
	.4byte gUnknown_02036000
_0812A794:
	.4byte gUnknown_030003DC
	THUMB_FUNC_END sub_0812A6CC

	THUMB_FUNC_START sub_0812A798
sub_0812A798: @ 0x0812A798
	push {lr}
	bl sub_0812A85C
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812A798

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812A7A4
sub_0812A7A4: @ 0x0812A7A4
	push {lr}
	bl sub_0812CC24
	bl sub_0812C3DC
	bl sub_0812B520
	ldr r0, _0812A7C4  @ =gUnknown_03000153
	ldrb r0, [r0]
	cmp r0, #0
	beq _0812A7BE
	bl sub_0812B328
_0812A7BE:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812A7C4:
	.4byte gUnknown_03000153
	THUMB_FUNC_END sub_0812A7A4

	THUMB_FUNC_START sub_0812A7C8
sub_0812A7C8: @ 0x0812A7C8
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	ldr r1, _0812A830  @ =gUnknown_03000153
	mov r0, #1
	strb r0, [r1]
	mov r5, #0
	str r5, [sp, #4]
	add r0, sp, #4
	ldr r1, _0812A834  @ =gUnknown_03000C1C
	ldr r1, [r1]
	ldr r2, _0812A838  @ =0x01000C60
	bl CpuFastSet
	str r5, [sp, #8]
	add r0, sp, #8
	ldr r2, _0812A83C  @ =0x010000B0
	add r1, r4, #0
	bl CpuFastSet
	ldr r1, _0812A840  @ =gUnknown_03000140
	str r4, [r1]
	ldr r2, _0812A844  @ =gUnknown_03000148
	add r0, r4, #0
	add r0, r0, #176
	str r0, [r2]
	mov r3, #176
	lsl r3, r3, #1
	add r0, r4, r3
	str r0, [r1, #4]
	mov r0, #132
	lsl r0, r0, #2
	add r4, r4, r0
	str r4, [r2, #4]
	ldr r1, _0812A848  @ =gUnknown_03000150
	ldr r2, _0812A84C  @ =0x0000F9C4
	add r0, r2, #0
	strh r0, [r1]
	ldr r0, _0812A850  @ =gUnknown_03000152
	strb r5, [r0]
	ldr r1, _0812A854  @ =0x04000083
	mov r0, #154
	strb r0, [r1]
	ldr r0, _0812A858  @ =0x040000A0
	str r5, [r0]
	add r0, r0, #4
	str r5, [r0]
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812A830:
	.4byte gUnknown_03000153
_0812A834:
	.4byte gUnknown_03000C1C
_0812A838:
	.4byte 0x01000C60
_0812A83C:
	.4byte 0x010000B0
_0812A840:
	.4byte gUnknown_03000140
_0812A844:
	.4byte gUnknown_03000148
_0812A848:
	.4byte gUnknown_03000150
_0812A84C:
	.4byte 0x0000F9C4
_0812A850:
	.4byte gUnknown_03000152
_0812A854:
	.4byte 0x04000083
_0812A858:
	.4byte 0x040000A0
	THUMB_FUNC_END sub_0812A7C8

	THUMB_FUNC_START sub_0812A85C
sub_0812A85C: @ 0x0812A85C
	push {r4,r5,lr}
	ldr r2, _0812A8D8  @ =0x04000100
	ldr r0, _0812A8DC  @ =gUnknown_03000150
	ldrh r0, [r0]
	mov r1, #128
	lsl r1, r1, #16
	orr r0, r0, r1
	str r0, [r2]
	ldr r0, _0812A8E0  @ =gUnknown_03000153
	ldrb r0, [r0]
	cmp r0, #0
	beq _0812A8D0
	ldr r4, _0812A8E4  @ =0x040000BC
	ldrh r1, [r4, #10]
	ldr r2, _0812A8E8  @ =0x0000C5FF
	add r0, r2, #0
	and r0, r0, r1
	strh r0, [r4, #10]
	ldrh r3, [r4, #10]
	ldr r1, _0812A8EC  @ =0x00007FFF
	add r0, r1, #0
	and r0, r0, r3
	strh r0, [r4, #10]
	ldrh r0, [r4, #10]
	ldr r3, _0812A8F0  @ =0x040000C8
	ldrh r0, [r3, #10]
	and r2, r2, r0
	strh r2, [r3, #10]
	ldrh r0, [r3, #10]
	and r1, r1, r0
	strh r1, [r3, #10]
	ldrh r0, [r3, #10]
	ldr r1, _0812A8F4  @ =gUnknown_03000140
	ldr r2, _0812A8F8  @ =gUnknown_03000152
	ldrb r0, [r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, _0812A8FC  @ =0x040000A0
	str r0, [r4, #4]
	ldr r5, _0812A900  @ =0xB6400004
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0812A904  @ =gUnknown_03000148
	ldrb r0, [r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r0, _0812A908  @ =0x040000A4
	str r0, [r3, #4]
	str r5, [r3, #8]
	ldr r0, [r3, #8]
	ldrb r1, [r2]
	mov r0, #1
	sub r0, r0, r1
	strb r0, [r2]
_0812A8D0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812A8D8:
	.4byte 0x04000100
_0812A8DC:
	.4byte gUnknown_03000150
_0812A8E0:
	.4byte gUnknown_03000153
_0812A8E4:
	.4byte 0x040000BC
_0812A8E8:
	.4byte 0x0000C5FF
_0812A8EC:
	.4byte 0x00007FFF
_0812A8F0:
	.4byte 0x040000C8
_0812A8F4:
	.4byte gUnknown_03000140
_0812A8F8:
	.4byte gUnknown_03000152
_0812A8FC:
	.4byte 0x040000A0
_0812A900:
	.4byte 0xB6400004
_0812A904:
	.4byte gUnknown_03000148
_0812A908:
	.4byte 0x040000A4
	THUMB_FUNC_END sub_0812A85C

	THUMB_FUNC_START sub_0812A90C
sub_0812A90C: @ 0x0812A90C
	push {r4,lr}
	ldr r1, _0812A944  @ =gUnknown_03000153
	mov r0, #0
	strb r0, [r1]
	ldr r1, _0812A948  @ =0x040000BC
	ldrh r2, [r1, #10]
	ldr r3, _0812A94C  @ =0x0000C5FF
	add r0, r3, #0
	and r0, r0, r2
	strh r0, [r1, #10]
	ldrh r4, [r1, #10]
	ldr r2, _0812A950  @ =0x00007FFF
	add r0, r2, #0
	and r0, r0, r4
	strh r0, [r1, #10]
	ldrh r0, [r1, #10]
	ldr r0, _0812A954  @ =0x040000C8
	ldrh r1, [r0, #10]
	and r3, r3, r1
	strh r3, [r0, #10]
	ldrh r1, [r0, #10]
	and r2, r2, r1
	strh r2, [r0, #10]
	ldrh r0, [r0, #10]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812A944:
	.4byte gUnknown_03000153
_0812A948:
	.4byte 0x040000BC
_0812A94C:
	.4byte 0x0000C5FF
_0812A950:
	.4byte 0x00007FFF
_0812A954:
	.4byte 0x040000C8
	THUMB_FUNC_END sub_0812A90C

	THUMB_FUNC_START sub_0812A958
sub_0812A958: @ 0x0812A958
	ldr r1, _0812A960  @ =gUnknown_03000153
	mov r0, #1
	strb r0, [r1]
	bx lr
_0812A960:
	.4byte gUnknown_03000153
	THUMB_FUNC_END sub_0812A958

	THUMB_FUNC_START sub_0812A964
sub_0812A964: @ 0x0812A964
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #40
	str r0, [sp, #16]
	add r6, r2, #0
	lsl r3, r3, #24
	lsr r3, r3, #24
	ldr r4, [r0, #96]
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r10, r1
	mov r0, r10
	str r0, [sp, #24]
	mov r1, #0
	mov r9, r1
	mov r2, #176
	str r2, [sp, #28]
	ldr r1, [sp, #16]
	ldr r0, [r1, #92]
	add r0, r0, #16
	str r0, [sp, #32]
	ldr r2, _0812A9EC  @ =gUnknown_0300069C
	str r2, [sp, #20]
	ldr r0, _0812A9F0  @ =gUnknown_03000160
	ldrb r0, [r0]
	cmp r0, #15
	bhi _0812A9AA
	ldrb r0, [r1, #26]
	cmp r0, #0
	beq _0812A9AA
	ldr r0, _0812A9F4  @ =gUnknown_0300095C
	str r0, [sp, #20]
_0812A9AA:
	ldr r1, [sp, #20]
	mov r2, #176
	lsl r2, r2, #1
	add r1, r1, r2
	mov r8, r1
	mov r0, #127
	sub r0, r0, r3
	ldr r1, [sp, #24]
	mul r0, r1, r0
	lsl r0, r0, #16
	lsr r0, r0, #24
	str r0, [sp, #24]
	mov r0, r10
	mul r0, r3, r0
	lsl r0, r0, #16
	lsr r0, r0, #24
	mov r10, r0
	ldr r2, [sp, #16]
	ldr r0, [r2, #92]
	ldr r7, [r0, #12]
	cmp r7, #0
	bne _0812A9D8
	ldr r7, [r0]
_0812A9D8:
	ldr r1, [sp, #28]
	add r0, r6, #0
	mul r0, r1, r0
	add r0, r4, r0
	lsr r0, r0, #8
	cmp r0, r7
	bcs _0812A9F8
	mov r5, r8
	b _0812AA10
	.byte 0x00
	.byte 0x00
_0812A9EC:
	.4byte gUnknown_0300069C
_0812A9F0:
	.4byte gUnknown_03000160
_0812A9F4:
	.4byte gUnknown_0300095C
_0812A9F8:
	lsl r0, r7, #8
	sub r0, r0, r4
	sub r0, r0, #1
	add r0, r0, r6
	add r1, r6, #0
	bl Div
	lsl r0, r0, #1
	ldr r2, [sp, #20]
	add r5, r2, r0
	mov r0, #1
	mov r9, r0
_0812AA10:
	ldr r1, [sp, #16]
	ldr r0, [r1, #92]
	ldr r1, [r0, #12]
	cmp r1, #0
	beq _0812AA20
	mov r2, r9
	cmp r2, #0
	bne _0812AA4C
_0812AA20:
	ldr r0, _0812AA48  @ =gUnknown_030003D4
	str r4, [sp]
	str r6, [sp, #4]
	ldr r1, [sp, #24]
	str r1, [sp, #8]
	mov r2, r10
	str r2, [sp, #12]
	ldr r4, [r0]
	ldr r0, [sp, #32]
	ldr r1, [sp, #20]
	mov r2, r8
	add r3, r5, #0
	bl _call_via_r4
	add r4, r0, #0
	mov r0, r9
	cmp r0, #0
	beq _0812AAFA
	mov r0, #1
	b _0812AB00
_0812AA48:
	.4byte gUnknown_030003D4
_0812AA4C:
	ldr r0, [r0, #8]
	sub r1, r1, r0
	lsl r1, r1, #8
	str r1, [sp, #36]
	ldr r1, _0812AAA8  @ =gUnknown_030003D4
	str r4, [sp]
	str r6, [sp, #4]
	ldr r2, [sp, #24]
	str r2, [sp, #8]
	mov r0, r10
	str r0, [sp, #12]
	ldr r4, [r1]
	ldr r0, [sp, #32]
	ldr r1, [sp, #20]
	mov r2, r8
	add r3, r5, #0
	bl _call_via_r4
	add r4, r0, #0
	ldr r1, [sp, #36]
	sub r4, r4, r1
	ldr r2, [sp, #20]
	sub r0, r5, r2
	asr r0, r0, #1
	ldr r1, [sp, #28]
	sub r1, r1, r0
	str r1, [sp, #28]
	cmp r1, #0
	beq _0812AAFA
_0812AA86:
	str r5, [sp, #20]
	mov r2, #176
	lsl r2, r2, #1
	add r2, r2, r5
	mov r8, r2
	ldr r1, [sp, #28]
	add r0, r6, #0
	mul r0, r1, r0
	add r0, r4, r0
	lsr r0, r0, #8
	cmp r0, r7
	bcs _0812AAAC
	lsl r0, r1, #1
	add r5, r5, r0
	mov r2, #0
	mov r9, r2
	b _0812AAC2
_0812AAA8:
	.4byte gUnknown_030003D4
_0812AAAC:
	lsl r0, r7, #8
	sub r0, r0, r4
	sub r0, r0, #1
	add r0, r0, r6
	add r1, r6, #0
	bl Div
	lsl r0, r0, #1
	add r5, r5, r0
	mov r0, #1
	mov r9, r0
_0812AAC2:
	str r4, [sp]
	str r6, [sp, #4]
	ldr r1, [sp, #24]
	str r1, [sp, #8]
	mov r2, r10
	str r2, [sp, #12]
	ldr r0, _0812AB10  @ =gUnknown_030003D4
	ldr r4, [r0]
	ldr r0, [sp, #32]
	ldr r1, [sp, #20]
	mov r2, r8
	add r3, r5, #0
	bl _call_via_r4
	add r4, r0, #0
	mov r1, r9
	cmp r1, #0
	beq _0812AAEA
	ldr r2, [sp, #36]
	sub r4, r4, r2
_0812AAEA:
	ldr r1, [sp, #20]
	sub r0, r5, r1
	asr r0, r0, #1
	ldr r2, [sp, #28]
	sub r2, r2, r0
	str r2, [sp, #28]
	cmp r2, #0
	bne _0812AA86
_0812AAFA:
	ldr r0, [sp, #16]
	str r4, [r0, #96]
	mov r0, #0
_0812AB00:
	add sp, sp, #40
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
_0812AB10:
	.4byte gUnknown_030003D4
	THUMB_FUNC_END sub_0812A964

	THUMB_FUNC_START sub_0812AB14
sub_0812AB14: @ 0x0812AB14
	ldr r1, _0812AB2C  @ =gUnknown_03000158
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	mov r2, #0
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strb r2, [r1, #6]
	mov r0, #48
	strb r0, [r1, #7]
	bx lr
	.byte 0x00
	.byte 0x00
_0812AB2C:
	.4byte gUnknown_03000158
	THUMB_FUNC_END sub_0812AB14

	THUMB_FUNC_START sub_0812AB30
sub_0812AB30: @ 0x0812AB30
	push {r4-r6,lr}
	add r4, r2, #0
	lsl r1, r1, #24
	lsr r6, r1, #24
	ldr r1, _0812AB98  @ =gUnknown_030003CC
	ldr r3, [r1]
	ldr r2, [r0, #8]
	add r1, r0, #0
	add r1, r1, #64
	ldrh r1, [r1]
	ldr r2, [r2]
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
	ldr r2, [r3, #4]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	add r3, r2, r1
	add r0, r0, #66
	ldrh r0, [r0]
	lsl r0, r0, #1
	add r0, r3, r0
	ldrh r0, [r0]
	add r5, r3, r0
	mov r0, #0
	strb r0, [r4, #17]
	strb r0, [r4, #18]
	ldrb r1, [r5]
	mov r0, #240
	and r0, r0, r1
	cmp r0, #0
	beq _0812ABE0
	add r0, r1, #0
	cmp r0, #16
	bne _0812AB9C
	ldrh r2, [r5, #2]
	add r2, r3, r2
	ldrb r0, [r5, #4]
	sub r0, r6, r0
	lsl r0, r0, #24
	mov r1, #1
	strb r1, [r4, #17]
	lsr r0, r0, #22
	add r0, r0, r2
	ldrb r1, [r0, #2]
	strb r1, [r4, #16]
	ldrh r0, [r0]
	add r0, r3, r0
	str r0, [r4]
	ldrh r0, [r0, #4]
	b _0812ABE4
_0812AB98:
	.4byte gUnknown_030003CC
_0812AB9C:
	cmp r0, #17
	bne _0812ABC4
	ldrh r1, [r5, #2]
	add r1, r3, r1
	ldr r2, _0812ABBC  @ =gUnknown_03000158
	lsl r0, r6, #1
	add r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	str r2, [r4]
	ldr r0, _0812ABC0  @ =gUnknown_08198EB4
	str r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #18]
	b _0812ABE8
	.byte 0x00
	.byte 0x00
_0812ABBC:
	.4byte gUnknown_03000158
_0812ABC0:
	.4byte gUnknown_08198EB4
_0812ABC4:
	cmp r0, #18
	bne _0812ABE8
	ldrh r0, [r5, #2]
	add r0, r3, r0
	b _0812ABD0
_0812ABCE:
	add r0, r0, #4
_0812ABD0:
	ldrb r1, [r0]
	cmp r6, r1
	bhi _0812ABCE
	ldrh r0, [r0, #2]
	add r0, r3, r0
	str r0, [r4]
	ldrh r0, [r0, #4]
	b _0812ABE4
_0812ABE0:
	str r5, [r4]
	ldrh r0, [r5, #4]
_0812ABE4:
	add r0, r3, r0
	str r0, [r4, #4]
_0812ABE8:
	ldr r2, [r4]
	ldrb r0, [r2]
	cmp r0, #3
	bne _0812ABF6
	ldrh r0, [r5, #2]
	add r0, r3, r0
	str r0, [r4, #12]
_0812ABF6:
	ldrb r1, [r2, #1]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0812AC06
	ldrh r0, [r2, #2]
	add r0, r3, r0
	str r0, [r4, #8]
_0812AC06:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812AB30

	THUMB_FUNC_START sub_0812AC0C
sub_0812AC0C: @ 0x0812AC0C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, _0812AD78  @ =gUnknown_03000164
	mov r0, #0
	str r0, [r1]
	ldr r2, _0812AD7C  @ =gUnknown_03001AA8
	ldr r0, _0812AD80  @ =gUnknown_03001760
	mov r12, r0
	ldr r3, _0812AD84  @ =gUnknown_03000174
	ldr r5, _0812AD88  @ =gUnknown_0300016C
	ldr r1, _0812AD8C  @ =gUnknown_03000168
	mov r8, r1
	ldr r0, _0812AD90  @ =gUnknown_03000170
	mov r9, r0
	ldr r1, _0812AD94  @ =gUnknown_03000175
	mov r10, r1
	mov r1, #0
	add r0, r2, #1
	mov r4, #3
_0812AC38:
	strb r1, [r0]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	add r0, r0, #120
	sub r4, r4, #1
	cmp r4, #0
	bge _0812AC38
	mov r4, #4
	mov r0, #1
	strb r0, [r2]
	add r1, r2, #0
	add r1, r1, #120
	mov r0, #2
	strb r0, [r1]
	add r1, r1, #120
	mov r0, #3
	strb r0, [r1]
	mov r1, #180
	lsl r1, r1, #1
	add r0, r2, r1
	strb r4, [r0]
	mov r1, #0
	ldr r0, _0812AD80  @ =gUnknown_03001760
	mov r4, #6
_0812AC6C:
	strb r1, [r0, #1]
	strb r1, [r0]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	add r0, r0, #120
	sub r4, r4, #1
	cmp r4, #0
	bge _0812AC6C
	mov r4, #7
	strb r4, [r3]
	mov r0, r12
	str r0, [r5]
	add r0, r0, #120
	mov r1, r12
	add r1, r1, #108
	mov r2, #0
	strb r0, [r1]
	lsr r1, r0, #8
	mov r3, r12
	add r3, r3, #109
	strb r1, [r3]
	lsr r1, r0, #16
	add r3, r3, #1
	strb r1, [r3]
	lsr r0, r0, #24
	mov r1, r12
	add r1, r1, #111
	strb r0, [r1]
	mov r0, r12
	add r0, r0, #104
	strb r2, [r0]
	add r0, r0, #1
	strb r2, [r0]
	add r0, r0, #1
	strb r2, [r0]
	add r0, r0, #1
	strb r2, [r0]
	mov r7, r12
	mov r5, #255
	mov r2, r12
	add r2, r2, #224
	mov r3, r12
	mov r6, #120
	mov r4, #4
_0812ACC8:
	add r1, r7, #0
	add r1, r1, #120
	add r1, r6, r1
	add r0, r1, #0
	and r0, r0, r5
	strb r0, [r2, #4]
	lsr r0, r1, #8
	and r0, r0, r5
	strb r0, [r2, #5]
	lsr r0, r1, #16
	and r0, r0, r5
	strb r0, [r2, #6]
	lsr r1, r1, #24
	strb r1, [r2, #7]
	add r0, r3, #0
	and r0, r0, r5
	strb r0, [r2]
	lsr r0, r3, #8
	and r0, r0, r5
	strb r0, [r2, #1]
	lsr r0, r3, #16
	and r0, r0, r5
	strb r0, [r2, #2]
	lsr r0, r3, #24
	strb r0, [r2, #3]
	add r2, r2, #120
	add r3, r3, #120
	add r6, r6, #120
	sub r4, r4, #1
	cmp r4, #0
	bge _0812ACC8
	mov r3, #0
	mov r1, #150
	lsl r1, r1, #2
	add r1, r1, r12
	mov r0, #206
	lsl r0, r0, #2
	add r0, r0, r12
	strb r1, [r0]
	lsr r2, r1, #8
	ldr r0, _0812AD98  @ =0x00000339
	add r0, r0, r12
	strb r2, [r0]
	lsr r2, r1, #16
	ldr r0, _0812AD9C  @ =0x0000033A
	add r0, r0, r12
	strb r2, [r0]
	lsr r1, r1, #24
	ldr r0, _0812ADA0  @ =0x0000033B
	add r0, r0, r12
	strb r1, [r0]
	mov r0, #207
	lsl r0, r0, #2
	add r0, r0, r12
	strb r3, [r0]
	ldr r0, _0812ADA4  @ =0x0000033D
	add r0, r0, r12
	strb r3, [r0]
	ldr r0, _0812ADA8  @ =0x0000033E
	add r0, r0, r12
	strb r3, [r0]
	ldr r0, _0812ADAC  @ =0x0000033F
	add r0, r0, r12
	strb r3, [r0]
	mov r1, r8
	str r3, [r1]
	mov r0, r9
	str r3, [r0]
	mov r1, r10
	strb r3, [r1]
	mov r0, #18
	ldr r1, _0812ADB0  @ =gUnknown_03000176
	strb r0, [r1]
	mov r0, #16
	ldr r1, _0812ADB4  @ =gUnknown_03000160
	strb r0, [r1]
	ldr r1, _0812ADB8  @ =gUnknown_03000177
	strb r0, [r1]
	ldr r0, _0812ADBC  @ =gUnknown_03000178
	strb r3, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812AD78:
	.4byte gUnknown_03000164
_0812AD7C:
	.4byte gUnknown_03001AA8
_0812AD80:
	.4byte gUnknown_03001760
_0812AD84:
	.4byte gUnknown_03000174
_0812AD88:
	.4byte gUnknown_0300016C
_0812AD8C:
	.4byte gUnknown_03000168
_0812AD90:
	.4byte gUnknown_03000170
_0812AD94:
	.4byte gUnknown_03000175
_0812AD98:
	.4byte 0x00000339
_0812AD9C:
	.4byte 0x0000033A
_0812ADA0:
	.4byte 0x0000033B
_0812ADA4:
	.4byte 0x0000033D
_0812ADA8:
	.4byte 0x0000033E
_0812ADAC:
	.4byte 0x0000033F
_0812ADB0:
	.4byte gUnknown_03000176
_0812ADB4:
	.4byte gUnknown_03000160
_0812ADB8:
	.4byte gUnknown_03000177
_0812ADBC:
	.4byte gUnknown_03000178
	THUMB_FUNC_END sub_0812AC0C

	THUMB_FUNC_START sub_0812ADC0
sub_0812ADC0: @ 0x0812ADC0
	push {lr}
	ldr r2, [r0, #104]
	ldr r0, [r0, #108]
	cmp r2, #0
	beq _0812ADCE
	str r0, [r2, #108]
	b _0812ADD0
_0812ADCE:
	str r0, [r1]
_0812ADD0:
	cmp r0, #0
	beq _0812ADD6
	str r2, [r0, #104]
_0812ADD6:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812ADC0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812ADDC
sub_0812ADDC: @ 0x0812ADDC
	push {lr}
	add r3, r0, #0
	ldr r2, [r1]
	str r2, [r3, #108]
	mov r0, #0
	str r0, [r3, #104]
	cmp r2, #0
	beq _0812ADEE
	str r3, [r2, #104]
_0812ADEE:
	str r3, [r1]
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812ADDC

	THUMB_FUNC_START sub_0812ADF4
sub_0812ADF4: @ 0x0812ADF4
	push {r4,r5,lr}
	add r3, r0, #0
	mov r4, #0
	ldr r0, _0812AE30  @ =gUnknown_03000168
	ldr r1, [r0]
	ldrb r2, [r3, #1]
	add r5, r0, #0
	cmp r2, #1
	bne _0812AE34
	cmp r1, #0
	beq _0812AE60
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _0812AE18
	ldrb r0, [r3, #8]
	ldrb r2, [r1, #8]
	cmp r0, r2
	bcc _0812AE60
_0812AE18:
	add r4, r1, #0
	ldr r1, [r4, #108]
	cmp r1, #0
	beq _0812AE60
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _0812AE18
	ldrb r0, [r3, #8]
	ldrb r2, [r1, #8]
	cmp r0, r2
	bcs _0812AE18
	b _0812AE60
_0812AE30:
	.4byte gUnknown_03000168
_0812AE34:
	cmp r2, #2
	bne _0812AE74
	cmp r1, #0
	beq _0812AE60
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _0812AE60
	ldrb r0, [r3, #8]
	ldrb r2, [r1, #8]
	cmp r0, r2
	bcc _0812AE60
	add r2, r0, #0
_0812AE4C:
	add r4, r1, #0
	ldr r1, [r4, #108]
	cmp r1, #0
	beq _0812AE60
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _0812AE60
	ldrb r0, [r1, #8]
	cmp r2, r0
	bcs _0812AE4C
_0812AE60:
	str r1, [r3, #108]
	cmp r1, #0
	beq _0812AE68
	str r3, [r1, #104]
_0812AE68:
	str r4, [r3, #104]
	cmp r4, #0
	beq _0812AE72
	str r3, [r4, #108]
	b _0812AE74
_0812AE72:
	str r3, [r5]
_0812AE74:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812ADF4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812AE7C
sub_0812AE7C: @ 0x0812AE7C
	push {lr}
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r1, #48
	sub r1, r1, r2
	lsl r1, r1, #16
	lsr r2, r1, #16
	asr r1, r1, #16
	cmp r1, #0
	bge _0812AE98
	mov r2, #0
	b _0812AE9E
_0812AE98:
	cmp r1, #119
	ble _0812AE9E
	mov r2, #120
_0812AE9E:
	ldrb r0, [r0]
	cmp r0, #0
	bne _0812AEB4
	ldr r0, _0812AEB0  @ =gUnknown_08199040
	lsl r1, r2, #16
	asr r1, r1, #14
	add r1, r1, r0
	ldr r0, [r1]
	b _0812AECC
_0812AEB0:
	.4byte gUnknown_08199040
_0812AEB4:
	cmp r0, #4
	beq _0812AEC8
	ldr r0, _0812AEC4  @ =gUnknown_08198ED8
	lsl r1, r2, #16
	asr r1, r1, #15
	add r1, r1, r0
	ldrh r0, [r1]
	b _0812AECC
_0812AEC4:
	.4byte gUnknown_08198ED8
_0812AEC8:
	lsl r0, r2, #16
	asr r0, r0, #16
_0812AECC:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0812AE7C

	THUMB_FUNC_START sub_0812AED0
sub_0812AED0: @ 0x0812AED0
	push {lr}
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #119
	bls _0812AEDC
	mov r1, #119
_0812AEDC:
	ldr r0, _0812AEE8  @ =gUnknown_08198FC8
	add r0, r1, r0
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0812AEE8:
	.4byte gUnknown_08198FC8
	THUMB_FUNC_END sub_0812AED0

	THUMB_FUNC_START sub_0812AEEC
sub_0812AEEC: @ 0x0812AEEC
	push {r4,r5,lr}
	add r3, r0, #0
	add r4, r3, #0
	add r4, r4, #64
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _0812AF46
	ldr r0, [r4, #4]
	str r0, [r3, #64]
	ldrb r1, [r4, #16]
	add r0, r1, #1
	strb r0, [r4, #16]
	mov r0, #16
	ldrsb r0, [r4, r0]
	ldr r2, [r4, #12]
	lsl r0, r0, #2
	add r0, r0, r2
	mov r5, #0
	ldrsh r0, [r0, r5]
	cmp r0, #0
	bge _0812AF18
	strb r1, [r4, #16]
_0812AF18:
	mov r0, #16
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r0, r2
	mov r5, #2
	ldrsh r1, [r0, r5]
	str r1, [r4, #4]
	mov r0, #16
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #8]
	strh r1, [r4, #10]
	ldr r0, [r3, #64]
	sub r1, r1, r0
	strh r1, [r4, #10]
	mov r1, #10
	ldrsh r0, [r4, r1]
	ldrh r1, [r4, #8]
	bl __divsi3
	strh r0, [r4, #10]
_0812AF46:
	mov r5, #10
	ldrsh r1, [r4, r5]
	ldr r0, [r4]
	add r0, r0, r1
	str r0, [r4]
	ldrh r1, [r4, #8]
	sub r1, r1, #1
	strh r1, [r4, #8]
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0812AEEC

	THUMB_FUNC_START sub_0812AF5C
sub_0812AF5C: @ 0x0812AF5C
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _0812AF68  @ =gUnknown_03000177
	strb r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_0812AF68:
	.4byte gUnknown_03000177
	THUMB_FUNC_END sub_0812AF5C

	THUMB_FUNC_START sub_0812AF6C
sub_0812AF6C: @ 0x0812AF6C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _0812AFC0  @ =gUnknown_03000174
	ldrb r1, [r2]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r5, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0812B00C
	cmp r0, #0
	ble _0812AFCC
	ldr r0, _0812AFC4  @ =gUnknown_03000170
	ldr r6, [r0]
	cmp r6, #0
	beq _0812B00C
	add r7, r2, #0
_0812AF90:
	add r4, r6, #0
	ldr r6, [r4, #108]
	add r0, r4, #0
	ldr r1, _0812AFC4  @ =gUnknown_03000170
	bl sub_0812ADC0
	add r0, r4, #0
	ldr r1, _0812AFC8  @ =gUnknown_0300016C
	bl sub_0812ADDC
	lsl r0, r5, #24
	mov r1, #255
	lsl r1, r1, #24
	add r0, r0, r1
	lsr r5, r0, #24
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	cmp r6, #0
	beq _0812B00C
	lsl r0, r5, #24
	cmp r0, #0
	bgt _0812AF90
	b _0812B00C
_0812AFC0:
	.4byte gUnknown_03000174
_0812AFC4:
	.4byte gUnknown_03000170
_0812AFC8:
	.4byte gUnknown_0300016C
_0812AFCC:
	neg r0, r0
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r6, r2, #0
	b _0812AFF6
_0812AFD6:
	add r0, r4, #0
	ldr r1, _0812B014  @ =gUnknown_03000168
	bl sub_0812ADC0
	mov r0, #0
	strb r0, [r4, #1]
	add r0, r4, #0
	ldr r1, _0812B018  @ =gUnknown_03000170
	bl sub_0812ADDC
	sub r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldrb r0, [r6]
	sub r0, r0, #1
	strb r0, [r6]
_0812AFF6:
	lsl r0, r5, #24
	asr r5, r0, #24
	cmp r5, #0
	ble _0812B00C
	mov r0, #0
	mov r1, #255
	bl sub_0812BC64
	add r4, r0, #0
	cmp r4, #0
	bne _0812AFD6
_0812B00C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812B014:
	.4byte gUnknown_03000168
_0812B018:
	.4byte gUnknown_03000170
	THUMB_FUNC_END sub_0812AF6C

	THUMB_FUNC_START sub_0812B01C
sub_0812B01C: @ 0x0812B01C
	push {r4,r5,lr}
	add r5, r0, #0
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _0812B066
	ldrb r4, [r5, #10]
	lsl r4, r4, #7
	ldr r2, [r5, #4]
	ldr r1, [r2, #8]
	ldrh r0, [r1, #52]
	mul r4, r0, r4
	lsr r4, r4, #8
	add r0, r1, #0
	add r0, r0, #64
	ldrb r0, [r0]
	mul r4, r0, r4
	lsr r4, r4, #7
	add r1, r1, #65
	ldrb r0, [r1]
	mul r4, r0, r4
	lsr r4, r4, #8
	add r0, r2, #0
	add r0, r0, #77
	ldrb r0, [r0]
	mul r4, r0, r4
	lsr r4, r4, #8
	add r2, r2, #78
	ldrb r0, [r2]
	mul r4, r0, r4
	lsr r4, r4, #15
	add r0, r5, #0
	bl sub_0812AEEC
	mul r4, r0, r4
	lsr r4, r4, #11
	str r4, [r5, #20]
	b _0812B078
_0812B066:
	add r0, r5, #0
	add r0, r0, #88
	ldrb r0, [r0]
	add r0, r0, #230
	ldr r1, [r5, #20]
	mul r0, r1, r0
	lsr r0, r0, #9
	str r0, [r5, #20]
	add r4, r0, #0
_0812B078:
	lsl r0, r4, #1
	add r4, r0, r4
	lsr r4, r4, #9
	add r0, r4, #0
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0812B01C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812B088
sub_0812B088: @ 0x0812B088
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	lsl r1, r1, #24
	lsr r7, r1, #24
	mov r6, #0
	ldrb r4, [r5, #10]
	mov r0, #72
	add r0, r0, r5
	mov r8, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0812B0A6
	mov r6, #1
_0812B0A6:
	add r0, r5, #0
	bl sub_0812AEEC
	cmp r6, #0
	bne _0812B0B4
	mov r0, #8
	b _0812B184
_0812B0B4:
	cmp r7, #0
	beq _0812B0BA
	lsl r4, r4, #1
_0812B0BA:
	lsl r4, r4, #15
	ldr r1, [r5, #4]
	add r0, r1, #0
	add r0, r0, #77
	ldrb r0, [r0]
	mul r4, r0, r4
	lsr r4, r4, #14
	add r0, r1, #0
	add r0, r0, #78
	ldrb r0, [r0]
	mul r4, r0, r4
	lsr r4, r4, #7
	ldr r1, [r1, #8]
	add r0, r1, #0
	add r0, r0, #64
	ldrb r0, [r0]
	mul r4, r0, r4
	lsr r4, r4, #7
	add r0, r1, #0
	add r0, r0, #65
	ldrb r0, [r0]
	mul r4, r0, r4
	lsr r4, r4, #8
	ldrh r0, [r1, #52]
	mul r4, r0, r4
	ldrb r0, [r5]
	cmp r0, #3
	bne _0812B108
	lsr r4, r4, #22
	str r4, [r5, #20]
	lsl r0, r4, #2
	add r4, r0, r4
	lsr r4, r4, #7
	cmp r4, #4
	bls _0812B102
	mov r4, #4
_0812B102:
	lsl r0, r4, #24
	lsr r0, r0, #24
	b _0812B184
_0812B108:
	lsr r4, r4, #15
	str r4, [r5, #20]
	ldr r0, [r5, #64]
	mul r4, r0, r4
	lsr r4, r4, #25
	mov r2, #16
	neg r2, r2
	add r0, r4, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0812B120
	mov r4, #15
_0812B120:
	ldr r1, [r5, #20]
	ldr r0, [r5, #68]
	mul r0, r1, r0
	lsr r0, r0, #25
	str r0, [r5, #20]
	and r0, r0, r2
	cmp r0, #0
	beq _0812B134
	mov r0, #15
	str r0, [r5, #20]
_0812B134:
	ldr r5, [r5, #20]
	cmp r5, r4
	beq _0812B15C
	mov r1, r8
	ldrh r2, [r1]
	add r0, r2, #0
	add r0, r0, #15
	lsl r0, r0, #16
	lsr r2, r0, #16
	sub r1, r5, r4
	cmp r1, #0
	bge _0812B14E
	neg r1, r1
_0812B14E:
	add r0, r2, #0
	bl __divsi3
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	bne _0812B168
_0812B15C:
	lsl r0, r4, #4
	mov r1, #8
	orr r0, r0, r1
	lsl r0, r0, #24
	lsr r6, r0, #24
	b _0812B182
_0812B168:
	ldr r0, _0812B190  @ =0x0000FFF8
	and r0, r0, r2
	cmp r0, #0
	beq _0812B172
	mov r2, #7
_0812B172:
	lsl r0, r4, #4
	orr r0, r0, r2
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r4, r5
	bcs _0812B182
	mov r0, #8
	orr r6, r6, r0
_0812B182:
	add r0, r6, #0
_0812B184:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0812B190:
	.4byte 0x0000FFF8
	THUMB_FUNC_END sub_0812B088

	THUMB_FUNC_START sub_0812B194
sub_0812B194: @ 0x0812B194
	push {r4-r6,lr}
	add r5, r0, #0
	ldr r2, [r5, #12]
	ldr r6, [r5, #4]
	add r3, r5, #0
	add r3, r3, #44
	ldr r0, [r5, #44]
	cmp r0, #0
	beq _0812B1AC
	sub r0, r0, #1
	str r0, [r5, #44]
	b _0812B1C6
_0812B1AC:
	ldr r4, [r3, #4]
	cmp r4, #0
	beq _0812B1C6
	ldr r0, [r3, #8]
	ldr r1, [r3, #16]
	add r0, r0, r1
	str r0, [r3, #8]
	sub r0, r4, #1
	str r0, [r3, #4]
	cmp r0, #0
	bne _0812B1C6
	ldr r0, [r3, #12]
	str r0, [r3, #8]
_0812B1C6:
	ldr r0, [r3, #8]
	add r2, r2, r0
	add r0, r6, #0
	add r0, r0, #79
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	beq _0812B272
	cmp r1, #0
	ble _0812B21A
	add r3, r1, #0
	ldr r1, _0812B200  @ =gUnknown_08199040
	add r0, r0, #1
	ldrb r0, [r0]
	add r0, r0, #48
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mul r3, r0, r3
	mov r0, #128
	lsl r0, r0, #15
	add r3, r3, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _0812B204
	lsr r3, r3, #7
	mul r2, r3, r2
	lsr r2, r2, #15
	b _0812B272
_0812B200:
	.4byte gUnknown_08199040
_0812B204:
	mov r4, #128
	lsl r4, r4, #4
	sub r2, r4, r2
	lsl r2, r2, #22
	add r0, r2, #0
	add r1, r3, #0
	bl __udivsi3
	add r2, r0, #0
	sub r2, r4, r2
	b _0812B272
_0812B21A:
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	neg r3, r0
	ldr r1, _0812B250  @ =gUnknown_08199040
	add r0, r6, #0
	add r0, r0, #80
	ldrb r0, [r0]
	add r0, r0, #48
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mul r3, r0, r3
	mov r0, #128
	lsl r0, r0, #15
	add r3, r3, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _0812B254
	lsl r2, r2, #15
	lsr r3, r3, #7
	add r0, r2, #0
	add r1, r3, #0
	bl __udivsi3
	add r2, r0, #0
	b _0812B272
_0812B250:
	.4byte gUnknown_08199040
_0812B254:
	mov r1, #128
	lsl r1, r1, #4
	sub r2, r1, r2
	lsr r3, r3, #7
	mul r2, r3, r2
	lsr r2, r2, #15
	ldr r0, _0812B26C  @ =0x000007FF
	cmp r2, r0
	bhi _0812B270
	sub r2, r1, r2
	b _0812B272
	.byte 0x00
	.byte 0x00
_0812B26C:
	.4byte 0x000007FF
_0812B270:
	mov r2, #0
_0812B272:
	add r4, r5, #0
	add r4, r4, #32
	ldr r0, [r4, #8]
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _0812B320
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0812B31C
	ldr r0, _0812B2A8  @ =gUnknown_08199220
	ldr r1, [r5, #32]
	lsr r1, r1, #1
	add r1, r1, r0
	ldrb r1, [r1]
	ldrb r0, [r5]
	cmp r0, #0
	bne _0812B2C8
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #0
	blt _0812B2AC
	mul r0, r2, r0
	mul r0, r3, r0
	lsr r0, r0, #19
	add r2, r2, r0
	b _0812B300
	.byte 0x00
	.byte 0x00
_0812B2A8:
	.4byte gUnknown_08199220
_0812B2AC:
	lsl r2, r2, #12
	neg r0, r0
	add r1, r0, #0
	mul r1, r3, r1
	lsr r1, r1, #3
	mov r3, #128
	lsl r3, r3, #9
	add r1, r1, r3
	add r0, r2, #0
	bl __udivsi3
	add r2, r0, #0
	lsl r2, r2, #4
	b _0812B300
_0812B2C8:
	lsl r0, r1, #24
	asr r1, r0, #24
	cmp r1, #0
	blt _0812B2E6
	mov r0, #128
	lsl r0, r0, #4
	sub r0, r0, r2
	lsl r0, r0, #19
	mul r1, r3, r1
	mov r2, #128
	lsl r2, r2, #12
	add r1, r1, r2
	bl __udivsi3
	b _0812B2FA
_0812B2E6:
	mov r0, #128
	lsl r0, r0, #4
	neg r1, r1
	sub r0, r0, r2
	mul r1, r3, r1
	mov r3, #128
	lsl r3, r3, #12
	add r1, r1, r3
	mul r0, r1, r0
	lsr r0, r0, #19
_0812B2FA:
	mov r2, #128
	lsl r2, r2, #4
	sub r2, r2, r0
_0812B300:
	ldr r0, [r4, #8]
	ldr r1, [r4]
	ldr r0, [r0, #4]
	add r1, r1, r0
	str r1, [r4]
	lsr r0, r1, #1
	cmp r0, #255
	bls _0812B320
	ldr r3, _0812B318  @ =0xFFFFFE00
	add r0, r1, r3
	str r0, [r4]
	b _0812B320
_0812B318:
	.4byte 0xFFFFFE00
_0812B31C:
	sub r0, r0, #1
	str r0, [r4, #4]
_0812B320:
	add r0, r2, #0
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0812B194

	THUMB_FUNC_START sub_0812B328
sub_0812B328: @ 0x0812B328
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r0, _0812B390  @ =gUnknown_03000168
	ldr r7, [r0]
	ldr r0, _0812B394  @ =gUnknown_03000160
	ldrb r0, [r0]
	cmp r0, #15
	bhi _0812B358
	ldr r2, _0812B398  @ =gUnknown_03000C1C
	ldr r0, _0812B39C  @ =gUnknown_03000175
	ldrb r0, [r0]
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #2
	sub r1, r1, r0
	lsl r1, r1, #6
	ldr r0, [r2]
	add r0, r0, r1
	ldr r1, _0812B3A0  @ =gUnknown_0300095C
	mov r2, #176
	bl CpuFastSet
_0812B358:
	mov r0, #0
	str r0, [sp]
	ldr r1, _0812B3A4  @ =gUnknown_0300069C
	ldr r2, _0812B3A8  @ =0x010000B0
	mov r0, sp
	bl CpuFastSet
_0812B366:
	cmp r7, #0
	beq _0812B40C
	add r4, r7, #0
	ldr r7, [r7, #108]
	add r0, r4, #0
	bl sub_0812B01C
	mov r8, r0
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _0812B3C8
	ldrh r0, [r4, #24]
	sub r0, r0, #1
	strh r0, [r4, #24]
	ldr r5, [r4, #4]
	ldrb r0, [r4, #27]
	cmp r0, #0
	beq _0812B3AC
	ldrb r3, [r4, #28]
	b _0812B3B2
	.byte 0x00
	.byte 0x00
_0812B390:
	.4byte gUnknown_03000168
_0812B394:
	.4byte gUnknown_03000160
_0812B398:
	.4byte gUnknown_03000C1C
_0812B39C:
	.4byte gUnknown_03000175
_0812B3A0:
	.4byte gUnknown_0300095C
_0812B3A4:
	.4byte gUnknown_0300069C
_0812B3A8:
	.4byte 0x010000B0
_0812B3AC:
	add r0, r5, #0
	add r0, r0, #75
	ldrb r3, [r0]
_0812B3B2:
	add r6, r3, #0
	add r0, r4, #0
	bl sub_0812B194
	add r2, r0, #0
	str r2, [r4, #16]
	add r0, r5, #0
	add r0, r0, #76
	ldrb r0, [r0]
	strb r0, [r4, #26]
	b _0812B3DA
_0812B3C8:
	mov r0, r8
	cmp r0, #0
	bne _0812B3D6
	add r0, r4, #0
	bl sub_0812BA6C
	b _0812B366
_0812B3D6:
	ldrb r6, [r4, #28]
	ldr r2, [r4, #16]
_0812B3DA:
	lsr r2, r2, #2
	ldr r0, [r4, #92]
	ldr r0, [r0, #4]
	mul r2, r0, r2
	add r0, r2, #0
	ldr r1, _0812B408  @ =0x00002910
	bl __udivsi3
	add r2, r0, #0
	lsr r2, r2, #5
	add r0, r4, #0
	mov r1, r8
	add r3, r6, #0
	bl sub_0812A964
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bne _0812B366
	add r0, r4, #0
	bl sub_0812BA6C
	b _0812B366
_0812B408:
	.4byte 0x00002910
_0812B40C:
	mov r5, #0
	mov r4, #6
_0812B410:
	ldr r0, _0812B444  @ =gUnknown_03001760
	add r1, r5, r0
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _0812B426
	ldrh r0, [r1, #24]
	cmp r0, #0
	bne _0812B426
	add r0, r1, #0
	bl sub_0812B980
_0812B426:
	add r5, r5, #120
	sub r4, r4, #1
	cmp r4, #0
	bge _0812B410
	ldr r4, _0812B448  @ =gUnknown_03000177
	ldr r0, _0812B44C  @ =gUnknown_03000160
	ldrb r1, [r4]
	ldrb r2, [r0]
	add r3, r2, #0
	add r6, r0, #0
	cmp r1, r3
	bcs _0812B450
	sub r0, r2, #1
	b _0812B458
	.byte 0x00
	.byte 0x00
_0812B444:
	.4byte gUnknown_03001760
_0812B448:
	.4byte gUnknown_03000177
_0812B44C:
	.4byte gUnknown_03000160
_0812B450:
	ldrb r0, [r4]
	cmp r0, r3
	bls _0812B45A
	add r0, r2, #1
_0812B458:
	strb r0, [r6]
_0812B45A:
	ldrb r0, [r6]
	cmp r0, #15
	bls _0812B474
	ldr r0, _0812B470  @ =gUnknown_03000178
	ldrb r1, [r0]
	add r2, r0, #0
	cmp r1, #0
	beq _0812B4B6
	sub r0, r1, #1
	strb r0, [r2]
	b _0812B47E
_0812B470:
	.4byte gUnknown_03000178
_0812B474:
	ldr r0, _0812B4F8  @ =gUnknown_03000178
	ldr r1, _0812B4FC  @ =gUnknown_03000176
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r0, #0
_0812B47E:
	ldrb r0, [r2]
	cmp r0, #0
	beq _0812B4B6
	ldr r1, _0812B500  @ =gUnknown_030003D8
	ldr r0, _0812B504  @ =gUnknown_0300069C
	ldr r5, _0812B508  @ =gUnknown_0300095C
	mov r3, #176
	lsl r3, r3, #2
	add r2, r0, r3
	ldrb r3, [r6]
	ldr r4, [r1]
	add r1, r5, #0
	bl _call_via_r4
	ldr r2, _0812B50C  @ =gUnknown_03000C1C
	ldr r0, _0812B510  @ =gUnknown_03000175
	ldrb r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	sub r0, r0, r1
	lsl r0, r0, #6
	ldr r1, [r2]
	add r1, r1, r0
	add r0, r5, #0
	mov r2, #176
	bl CpuFastSet
_0812B4B6:
	ldr r2, _0812B510  @ =gUnknown_03000175
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldr r1, _0812B4FC  @ =gUnknown_03000176
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0812B4CE
	mov r0, #0
	strb r0, [r2]
_0812B4CE:
	ldr r3, _0812B514  @ =gUnknown_030003D0
	ldr r0, _0812B504  @ =gUnknown_0300069C
	ldr r2, _0812B518  @ =gUnknown_03000140
	ldr r1, _0812B51C  @ =gUnknown_03000152
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	mov r4, #176
	lsl r4, r4, #2
	add r2, r0, r4
	ldr r3, [r3]
	bl _call_via_r3
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812B4F8:
	.4byte gUnknown_03000178
_0812B4FC:
	.4byte gUnknown_03000176
_0812B500:
	.4byte gUnknown_030003D8
_0812B504:
	.4byte gUnknown_0300069C
_0812B508:
	.4byte gUnknown_0300095C
_0812B50C:
	.4byte gUnknown_03000C1C
_0812B510:
	.4byte gUnknown_03000175
_0812B514:
	.4byte gUnknown_030003D0
_0812B518:
	.4byte gUnknown_03000140
_0812B51C:
	.4byte gUnknown_03000152
	THUMB_FUNC_END sub_0812B328

	THUMB_FUNC_START sub_0812B520
sub_0812B520: @ 0x0812B520
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r0, #0
	mov r10, r0
_0812B52E:
	mov r1, r10
	lsl r0, r1, #4
	sub r0, r0, r1
	lsl r0, r0, #3
	ldr r1, _0812B56C  @ =gUnknown_03001AA8
	add r4, r0, r1
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _0812B54C
	ldrh r0, [r4, #24]
	cmp r0, #0
	bne _0812B54C
	add r0, r4, #0
	bl sub_0812B980
_0812B54C:
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0812B554
	b _0812B794
_0812B554:
	cmp r0, #1
	bne _0812B57A
	add r0, r4, #0
	bl sub_0812B194
	add r6, r0, #0
	str r6, [r4, #16]
	ldrb r0, [r4, #27]
	cmp r0, #0
	beq _0812B570
	ldrb r0, [r4, #28]
	b _0812B576
_0812B56C:
	.4byte gUnknown_03001AA8
_0812B570:
	ldr r0, [r4, #4]
	add r0, r0, #75
	ldrb r0, [r0]
_0812B576:
	mov r8, r0
	b _0812B580
_0812B57A:
	ldr r6, [r4, #16]
	ldrb r2, [r4, #28]
	mov r8, r2
_0812B580:
	mov r0, #64
	mov r3, r8
	eor r0, r0, r3
	neg r1, r0
	orr r1, r1, r0
	lsr r1, r1, #31
	add r0, r4, #0
	bl sub_0812B088
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r0, _0812B5C4  @ =0x04000081
	mov r12, r0
	ldrb r0, [r4]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	mov r9, r3
	mov r5, #17
	lsl r5, r5, r3
	mvn r0, r5
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r1, r2, #0
	mov r0, r8
	cmp r0, #64
	bne _0812B5C8
	mov r3, r12
	ldrb r1, [r3]
	add r0, r2, #0
	and r0, r0, r1
	orr r0, r0, r5
	strb r0, [r3]
	b _0812B5F2
_0812B5C4:
	.4byte 0x04000081
_0812B5C8:
	mov r0, r8
	cmp r0, #63
	bhi _0812B5E2
	mov r1, r12
	ldrb r0, [r1]
	add r1, r2, #0
	and r1, r1, r0
	mov r0, #16
	lsl r0, r0, r3
	orr r1, r1, r0
	mov r2, r12
	strb r1, [r2]
	b _0812B5F2
_0812B5E2:
	mov r3, r12
	ldrb r0, [r3]
	and r1, r1, r0
	mov r0, #1
	mov r2, r9
	lsl r0, r0, r2
	orr r1, r1, r0
	strb r1, [r3]
_0812B5F2:
	ldrb r5, [r4, #1]
	cmp r5, #1
	bne _0812B61C
	ldr r0, [r4, #96]
	cmp r0, #0
	bne _0812B610
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0812BB04
	str r5, [r4, #96]
	ldrh r0, [r4, #24]
	sub r0, r0, #1
	strh r0, [r4, #24]
	b _0812B794
_0812B610:
	add r0, r0, #1
	str r0, [r4, #96]
	ldrh r0, [r4, #24]
	sub r0, r0, #1
	strh r0, [r4, #24]
	b _0812B66C
_0812B61C:
	ldrb r0, [r4]
	cmp r0, #3
	bne _0812B66C
	add r0, r4, #0
	add r0, r0, #88
	ldrb r0, [r0]
	add r0, r0, #230
	ldr r1, [r4, #20]
	mul r0, r1, r0
	lsr r0, r0, #9
	str r0, [r4, #20]
	add r1, r0, #0
	mov r3, r8
	cmp r3, #64
	beq _0812B63C
	lsl r1, r1, #1
_0812B63C:
	lsl r0, r1, #2
	add r1, r0, r1
	lsr r1, r1, #7
	cmp r1, #0
	beq _0812B664
	cmp r1, #4
	bls _0812B64C
	mov r1, #4
_0812B64C:
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _0812B65C  @ =0x04000073
	ldr r0, _0812B660  @ =gUnknown_08198EC0
	add r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	b _0812B794
_0812B65C:
	.4byte 0x04000073
_0812B660:
	.4byte gUnknown_08198EC0
_0812B664:
	add r0, r4, #0
	bl sub_0812BA6C
	b _0812B794
_0812B66C:
	ldr r2, [r4, #84]
	ldrb r1, [r2, #1]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0812B68E
	ldr r0, [r4, #100]
	ldrh r3, [r0]
	ldr r1, [r4, #96]
	cmp r1, r3
	bcs _0812B688
	add r0, r0, r1
	ldrb r5, [r0, #2]
	b _0812B690
_0812B688:
	add r0, r3, r0
	ldrb r5, [r0, #1]
	b _0812B690
_0812B68E:
	mov r5, #255
_0812B690:
	ldrb r0, [r4]
	cmp r0, #2
	beq _0812B6E0
	cmp r0, #2
	bgt _0812B6A0
	cmp r0, #1
	beq _0812B6AA
	b _0812B794
_0812B6A0:
	cmp r0, #3
	beq _0812B720
	cmp r0, #4
	beq _0812B748
	b _0812B794
_0812B6AA:
	cmp r7, #8
	beq _0812B6C8
	ldr r0, _0812B6C0  @ =0x04000063
	strb r7, [r0]
	ldr r1, _0812B6C4  @ =0x04000064
	mov r2, #128
	lsl r2, r2, #8
	add r0, r2, #0
	orr r6, r6, r0
	strh r6, [r1]
	b _0812B6D2
_0812B6C0:
	.4byte 0x04000063
_0812B6C4:
	.4byte 0x04000064
_0812B6C8:
	ldrb r0, [r2, #8]
	cmp r0, #8
	bne _0812B6D2
	ldr r0, _0812B6D8  @ =0x04000064
	strh r6, [r0]
_0812B6D2:
	ldr r2, _0812B6DC  @ =0x04000062
	b _0812B706
	.byte 0x00
	.byte 0x00
_0812B6D8:
	.4byte 0x04000064
_0812B6DC:
	.4byte 0x04000062
_0812B6E0:
	cmp r7, #8
	beq _0812B700
	ldr r0, _0812B6F8  @ =0x04000069
	strb r7, [r0]
	ldr r1, _0812B6FC  @ =0x0400006C
	mov r3, #128
	lsl r3, r3, #8
	add r0, r3, #0
	orr r6, r6, r0
	strh r6, [r1]
	b _0812B704
	.byte 0x00
	.byte 0x00
_0812B6F8:
	.4byte 0x04000069
_0812B6FC:
	.4byte 0x0400006C
_0812B700:
	ldr r0, _0812B718  @ =0x0400006C
	strh r6, [r0]
_0812B704:
	ldr r2, _0812B71C  @ =0x04000068
_0812B706:
	ldrb r1, [r2]
	mov r0, #192
	and r0, r0, r1
	strb r0, [r2]
	cmp r5, #255
	beq _0812B794
	lsl r0, r5, #6
	strb r0, [r2]
	b _0812B794
_0812B718:
	.4byte 0x0400006C
_0812B71C:
	.4byte 0x04000068
_0812B720:
	ldr r0, _0812B740  @ =0x04000074
	ldrh r1, [r0]
	mov r3, #128
	lsl r3, r3, #7
	add r2, r3, #0
	and r1, r1, r2
	orr r1, r1, r6
	strh r1, [r0]
	cmp r7, #8
	beq _0812B794
	sub r0, r0, #1
	ldr r1, _0812B744  @ =gUnknown_08198EC0
	add r1, r7, r1
	ldrb r1, [r1]
	strb r1, [r0]
	b _0812B794
_0812B740:
	.4byte 0x04000074
_0812B744:
	.4byte gUnknown_08198EC0
_0812B748:
	cmp r7, #8
	beq _0812B756
	ldr r0, _0812B774  @ =0x04000079
	strb r7, [r0]
	ldr r1, _0812B778  @ =0x0400007D
	mov r0, #128
	strb r0, [r1]
_0812B756:
	cmp r5, #255
	beq _0812B780
	ldr r4, _0812B77C  @ =0x0400007C
	lsl r0, r6, #16
	lsr r0, r0, #16
	bl sub_0812AED0
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r5, #0
	beq _0812B770
	mov r0, #8
	orr r1, r1, r0
_0812B770:
	strb r1, [r4]
	b _0812B794
_0812B774:
	.4byte 0x04000079
_0812B778:
	.4byte 0x0400007D
_0812B77C:
	.4byte 0x0400007C
_0812B780:
	lsl r0, r6, #16
	lsr r0, r0, #16
	bl sub_0812AED0
	ldr r3, _0812B7B0  @ =0x0400007C
	ldrb r2, [r3]
	mov r1, #8
	and r1, r1, r2
	orr r1, r1, r0
	strb r1, [r3]
_0812B794:
	mov r0, #1
	add r10, r10, r0
	mov r1, r10
	cmp r1, #3
	bgt _0812B7A0
	b _0812B52E
_0812B7A0:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812B7B0:
	.4byte 0x0400007C
	THUMB_FUNC_END sub_0812B520

	THUMB_FUNC_START sub_0812B7B4
sub_0812B7B4: @ 0x0812B7B4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	add r5, r0, #0
	mov r8, r3
	lsl r1, r1, #24
	lsr r7, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r10, r2
	ldr r4, [r5, #8]
	mov r9, r7
	add r0, r0, #74
	ldrb r0, [r0]
	cmp r0, #0
	beq _0812B7DC
	b _0812B970
_0812B7DC:
	add r0, r5, #0
	add r0, r0, #81
	ldrb r0, [r0]
	add r0, r7, r0
	lsl r0, r0, #24
	lsr r7, r0, #24
	add r0, r5, #0
	add r1, r7, #0
	mov r2, sp
	bl sub_0812AB30
	ldr r6, [sp]
	ldrb r1, [r6, #1]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0812B802
	ldrh r1, [r4, #48]
	b _0812B80A
_0812B802:
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldrh r4, [r4, #48]
	add r1, r1, r4
_0812B80A:
	mov r0, r8
	bl __udivsi3
	mov r8, r0
	add r0, r5, #0
	add r0, r0, #73
	ldrb r0, [r0]
	cmp r0, #0
	beq _0812B826
	ldr r0, [r5, #12]
	cmp r0, #0
	beq _0812B826
	add r4, r0, #0
	b _0812B87C
_0812B826:
	ldr r1, _0812B894  @ =gUnknown_08198EAC
	ldrb r0, [r6]
	add r0, r0, r1
	ldrb r0, [r0]
	add r1, r5, #0
	add r1, r1, #82
	ldrb r1, [r1]
	bl sub_0812BC64
	add r4, r0, #0
	cmp r4, #0
	bne _0812B840
	b _0812B970
_0812B840:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0812C2C4
	mov r1, #0
	mov r0, r9
	strb r0, [r4, #9]
	str r1, [r4, #96]
	add r0, r5, #0
	add r0, r0, #16
	str r0, [r4, #40]
	str r1, [r4, #32]
	ldrh r0, [r5, #16]
	str r0, [r4, #36]
	ldr r0, [sp, #4]
	str r0, [r4, #76]
	str r1, [r4, #64]
	str r1, [r4, #68]
	add r0, r4, #0
	add r0, r0, #72
	strh r1, [r0]
	add r1, r4, #0
	add r1, r1, #80
	mov r0, #255
	strb r0, [r1]
	ldrb r1, [r6, #6]
	add r0, r4, #0
	add r0, r0, #88
	strb r1, [r0]
	str r6, [r4, #84]
_0812B87C:
	mov r0, sp
	ldrb r0, [r0, #17]
	strb r0, [r4, #27]
	lsl r0, r0, #24
	cmp r0, #0
	beq _0812B898
	mov r7, #48
	mov r0, sp
	ldrb r0, [r0, #16]
	strb r0, [r4, #28]
	b _0812B8A2
	.byte 0x00
	.byte 0x00
_0812B894:
	.4byte gUnknown_08198EAC
_0812B898:
	mov r0, sp
	ldrb r0, [r0, #18]
	cmp r0, #0
	beq _0812B8A2
	mov r7, #48
_0812B8A2:
	mov r0, #0
	mov r1, r10
	strb r1, [r4, #10]
	str r0, [r4, #20]
	mov r0, r8
	strh r0, [r4, #24]
	add r0, r5, #0
	add r0, r0, #76
	ldrb r0, [r0]
	strb r0, [r4, #26]
	ldrb r2, [r6, #7]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0812AE7C
	str r0, [r4, #12]
	ldrb r0, [r5, #28]
	cmp r0, #0
	bne _0812B8D4
	add r0, r4, #0
	add r0, r0, #44
	mov r1, #20
	bl sub_08069358
	b _0812B92E
_0812B8D4:
	ldrb r1, [r5, #30]
	ldrb r2, [r6, #7]
	add r0, r4, #0
	bl sub_0812AE7C
	add r2, r0, #0
	ldrh r0, [r5, #32]
	str r0, [r4, #44]
	ldrh r0, [r5, #34]
	mov r1, r8
	mul r1, r0, r1
	add r0, r1, #0
	lsr r0, r0, #8
	str r0, [r4, #48]
	ldrb r1, [r5, #29]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0812B902
	ldr r0, [r4, #12]
	sub r0, r2, r0
	str r0, [r4, #56]
	b _0812B90A
_0812B902:
	ldr r0, [r4, #12]
	sub r0, r0, r2
	str r0, [r4, #56]
	str r2, [r4, #12]
_0812B90A:
	ldr r0, [r4, #56]
	str r0, [r4, #60]
	ldr r1, [r4, #48]
	bl __divsi3
	str r0, [r4, #60]
	ldrb r1, [r5, #29]
	mov r0, #4
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _0812B928
	strb r7, [r5, #30]
	b _0812B92A
_0812B928:
	strb r0, [r5, #28]
_0812B92A:
	mov r0, #0
	str r0, [r4, #52]
_0812B92E:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0812B944
	ldrh r0, [r6, #2]
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r1, r0
	str r1, [r4, #92]
	b _0812B964
_0812B944:
	cmp r0, #3
	beq _0812B960
	ldrb r1, [r6, #1]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0812B956
	ldr r0, [sp, #8]
	b _0812B962
_0812B956:
	ldrh r1, [r6, #2]
	add r0, r4, #0
	add r0, r0, #100
	strb r1, [r0]
	b _0812B964
_0812B960:
	ldr r0, [sp, #12]
_0812B962:
	str r0, [r4, #100]
_0812B964:
	mov r0, r8
	cmp r0, #0
	bne _0812B970
	add r0, r4, #0
	bl sub_0812B980
_0812B970:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812B7B4

	THUMB_FUNC_START sub_0812B980
sub_0812B980: @ 0x0812B980
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _0812BA5E
	ldr r0, [r4, #4]
	add r0, r0, #73
	ldrb r0, [r0]
	cmp r0, #0
	bne _0812BA5E
	ldrb r3, [r4]
	cmp r3, #0
	bne _0812B9B4
	ldr r1, _0812B9B0  @ =gUnknown_03000168
	add r0, r4, #0
	bl sub_0812ADC0
	mov r0, #2
	strb r0, [r4, #1]
	add r0, r4, #0
	bl sub_0812ADF4
	b _0812BA46
	.byte 0x00
	.byte 0x00
_0812B9B0:
	.4byte gUnknown_03000168
_0812B9B4:
	ldrh r2, [r4, #16]
	add r0, r4, #0
	add r0, r0, #88
	ldrb r1, [r0]
	cmp r3, #3
	bne _0812B9C4
	mov r0, #2
	b _0812BA44
_0812B9C4:
	lsr r1, r1, #5
	cmp r1, #0
	bne _0812B9CE
	mov r1, #0
	b _0812B9D8
_0812B9CE:
	ldr r0, [r4, #20]
	lsl r0, r0, #4
	orr r1, r1, r0
	lsl r0, r1, #24
	lsr r1, r0, #24
_0812B9D8:
	ldrb r0, [r4]
	cmp r0, #2
	beq _0812BA10
	cmp r0, #2
	bgt _0812B9E8
	cmp r0, #1
	beq _0812B9EE
	b _0812BA42
_0812B9E8:
	cmp r0, #4
	beq _0812BA38
	b _0812BA42
_0812B9EE:
	ldr r0, _0812BA04  @ =0x04000063
	strb r1, [r0]
	ldr r1, _0812BA08  @ =0x04000064
	mov r3, #128
	lsl r3, r3, #8
	add r0, r3, #0
	orr r2, r2, r0
	strh r2, [r1]
	ldr r2, _0812BA0C  @ =0x04000062
	b _0812BA22
	.byte 0x00
	.byte 0x00
_0812BA04:
	.4byte 0x04000063
_0812BA08:
	.4byte 0x04000064
_0812BA0C:
	.4byte 0x04000062
_0812BA10:
	ldr r0, _0812BA2C  @ =0x04000069
	strb r1, [r0]
	ldr r1, _0812BA30  @ =0x0400006C
	mov r3, #128
	lsl r3, r3, #8
	add r0, r3, #0
	orr r2, r2, r0
	strh r2, [r1]
	ldr r2, _0812BA34  @ =0x04000068
_0812BA22:
	ldrb r1, [r2]
	mov r0, #192
	and r0, r0, r1
	strb r0, [r2]
	b _0812BA42
_0812BA2C:
	.4byte 0x04000069
_0812BA30:
	.4byte 0x0400006C
_0812BA34:
	.4byte 0x04000068
_0812BA38:
	ldr r0, _0812BA64  @ =0x04000079
	strb r1, [r0]
	ldr r1, _0812BA68  @ =0x0400007D
	mov r0, #128
	strb r0, [r1]
_0812BA42:
	mov r0, #0
_0812BA44:
	strb r0, [r4, #1]
_0812BA46:
	ldrb r0, [r4, #27]
	ldr r1, [r4, #4]
	cmp r0, #0
	bne _0812BA56
	add r0, r1, #0
	add r0, r0, #75
	ldrb r0, [r0]
	strb r0, [r4, #28]
_0812BA56:
	add r0, r1, #0
	add r1, r4, #0
	bl sub_0812C2E0
_0812BA5E:
	pop {r4}
	pop {r0}
	bx r0
_0812BA64:
	.4byte 0x04000079
_0812BA68:
	.4byte 0x0400007D
	THUMB_FUNC_END sub_0812B980

	THUMB_FUNC_START sub_0812BA6C
sub_0812BA6C: @ 0x0812BA6C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0812BAF8
	ldrb r0, [r4]
	cmp r0, #4
	bhi _0812BAEC
	lsl r0, r0, #2
	ldr r1, _0812BA88  @ =0x0812BA8C
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0812BA88:
	.4byte 0x0812BA8C
	.4byte _0812BAA0
	.4byte _0812BABC
	.4byte _0812BACC
	.4byte _0812BAD4
	.4byte _0812BAE0
_0812BAA0:
	ldr r1, _0812BAB4  @ =gUnknown_03000168
	add r0, r4, #0
	bl sub_0812ADC0
	ldr r1, _0812BAB8  @ =gUnknown_0300016C
	add r0, r4, #0
	bl sub_0812ADDC
	b _0812BAEC
	.byte 0x00
	.byte 0x00
_0812BAB4:
	.4byte gUnknown_03000168
_0812BAB8:
	.4byte gUnknown_0300016C
_0812BABC:
	ldr r1, _0812BAC8  @ =0x04000063
	mov r0, #8
	strb r0, [r1]
	add r1, r1, #2
	b _0812BAE8
	.byte 0x00
	.byte 0x00
_0812BAC8:
	.4byte 0x04000063
_0812BACC:
	ldr r1, _0812BAD0  @ =0x04000069
	b _0812BAE2
_0812BAD0:
	.4byte 0x04000069
_0812BAD4:
	ldr r1, _0812BADC  @ =0x04000070
	mov r0, #0
	b _0812BAEA
	.byte 0x00
	.byte 0x00
_0812BADC:
	.4byte 0x04000070
_0812BAE0:
	ldr r1, _0812BB00  @ =0x04000079
_0812BAE2:
	mov r0, #8
	strb r0, [r1]
	add r1, r1, #4
_0812BAE8:
	mov r0, #192
_0812BAEA:
	strb r0, [r1]
_0812BAEC:
	ldr r0, [r4, #4]
	add r1, r4, #0
	bl sub_0812C2E0
	mov r0, #0
	strb r0, [r4, #1]
_0812BAF8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812BB00:
	.4byte 0x04000079
	THUMB_FUNC_END sub_0812BA6C

	THUMB_FUNC_START sub_0812BB04
sub_0812BB04: @ 0x0812BB04
	push {r4-r6,lr}
	add r4, r0, #0
	lsl r1, r1, #24
	lsr r5, r1, #24
	ldrb r3, [r4]
	cmp r3, #2
	beq _0812BB88
	cmp r3, #2
	bgt _0812BB1C
	cmp r3, #1
	beq _0812BB26
	b _0812BC54
_0812BB1C:
	cmp r3, #3
	beq _0812BBB4
	cmp r3, #4
	beq _0812BC08
	b _0812BC54
_0812BB26:
	ldr r1, _0812BB54  @ =0x04000060
	ldr r0, [r4, #84]
	ldrb r0, [r0, #8]
	strb r0, [r1]
	ldr r2, _0812BB58  @ =0x04000064
	ldr r0, [r4, #12]
	mov r6, #128
	lsl r6, r6, #8
	add r1, r6, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _0812BB5C  @ =0x04000063
	strb r5, [r0]
	ldr r0, [r4, #84]
	ldrb r0, [r0, #1]
	and r3, r3, r0
	cmp r3, #0
	beq _0812BB64
	ldr r1, _0812BB60  @ =0x04000062
	ldr r0, [r4, #100]
	ldrb r0, [r0, #2]
	b _0812BB6C
	.byte 0x00
	.byte 0x00
_0812BB54:
	.4byte 0x04000060
_0812BB58:
	.4byte 0x04000064
_0812BB5C:
	.4byte 0x04000063
_0812BB60:
	.4byte 0x04000062
_0812BB64:
	ldr r1, _0812BB80  @ =0x04000062
	add r0, r4, #0
	add r0, r0, #100
	ldrb r0, [r0]
_0812BB6C:
	lsl r0, r0, #6
	strb r0, [r1]
	ldr r0, _0812BB84  @ =0x04000064
	ldr r1, [r4, #12]
	mov r3, #128
	lsl r3, r3, #8
	add r2, r3, #0
	orr r1, r1, r2
	strh r1, [r0]
	b _0812BC54
_0812BB80:
	.4byte 0x04000062
_0812BB84:
	.4byte 0x04000064
_0812BB88:
	ldr r0, _0812BBA8  @ =0x04000069
	strb r5, [r0]
	ldr r2, _0812BBAC  @ =0x0400006C
	ldr r0, [r4, #12]
	mov r6, #128
	lsl r6, r6, #8
	add r1, r6, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _0812BBB0  @ =0x04000068
	add r0, r4, #0
	add r0, r0, #100
	ldrb r0, [r0]
	lsl r0, r0, #6
	b _0812BC52
	.byte 0x00
	.byte 0x00
_0812BBA8:
	.4byte 0x04000069
_0812BBAC:
	.4byte 0x0400006C
_0812BBB0:
	.4byte 0x04000068
_0812BBB4:
	ldr r6, _0812BBF4  @ =gUnknown_03000164
	ldr r1, [r4, #100]
	ldr r0, [r6]
	cmp r1, r0
	beq _0812BBD2
	ldr r1, _0812BBF8  @ =0x04000070
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r4, #100]
	add r1, r1, #32
	mov r2, #8
	bl CpuSet
	ldr r0, [r4, #100]
	str r0, [r6]
_0812BBD2:
	ldr r1, _0812BBF8  @ =0x04000070
	mov r0, #192
	strb r0, [r1]
	ldr r2, _0812BBFC  @ =0x04000074
	ldr r0, [r4, #12]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _0812BC00  @ =0x04000073
	ldr r0, _0812BC04  @ =gUnknown_08198EC0
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	sub r1, r1, #1
	b _0812BC50
_0812BBF4:
	.4byte gUnknown_03000164
_0812BBF8:
	.4byte 0x04000070
_0812BBFC:
	.4byte 0x04000074
_0812BC00:
	.4byte 0x04000073
_0812BC04:
	.4byte gUnknown_08198EC0
_0812BC08:
	ldr r0, _0812BC28  @ =0x04000079
	strb r5, [r0]
	ldr r0, [r4, #84]
	ldrb r1, [r0, #1]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0812BC2C
	ldrh r0, [r4, #12]
	bl sub_0812AED0
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r0, [r4, #100]
	ldrb r0, [r0, #2]
	b _0812BC3C
_0812BC28:
	.4byte 0x04000079
_0812BC2C:
	ldrh r0, [r4, #12]
	bl sub_0812AED0
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r0, r4, #0
	add r0, r0, #100
	ldrb r0, [r0]
_0812BC3C:
	cmp r0, #0
	beq _0812BC44
	mov r0, #8
	orr r1, r1, r0
_0812BC44:
	ldr r0, _0812BC5C  @ =0x0400007C
	strb r1, [r0]
	ldr r1, _0812BC60  @ =0x0400007D
	mov r0, #128
	strb r0, [r1]
	sub r1, r1, #5
_0812BC50:
	mov r0, #0
_0812BC52:
	strb r0, [r1]
_0812BC54:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812BC5C:
	.4byte 0x0400007C
_0812BC60:
	.4byte 0x0400007D
	THUMB_FUNC_END sub_0812BB04

	THUMB_FUNC_START sub_0812BC64
sub_0812BC64: @ 0x0812BC64
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	lsl r1, r1, #24
	lsr r5, r1, #24
	cmp r2, #0
	bne _0812BCC0
	ldr r0, _0812BC80  @ =gUnknown_0300016C
	ldr r0, [r0]
	cmp r0, #0
	beq _0812BC84
	add r4, r0, #0
	b _0812BCA0
	.byte 0x00
	.byte 0x00
_0812BC80:
	.4byte gUnknown_0300016C
_0812BC84:
	ldr r0, _0812BCB8  @ =gUnknown_03000168
	ldr r1, [r0]
	cmp r1, #0
	beq _0812BCD6
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _0812BC98
	ldrb r0, [r1, #8]
	cmp r5, r0
	bcc _0812BCD6
_0812BC98:
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0812BA6C
_0812BCA0:
	ldr r1, _0812BCBC  @ =gUnknown_0300016C
	add r0, r4, #0
	bl sub_0812ADC0
	mov r0, #1
	strb r0, [r4, #1]
	strb r5, [r4, #8]
	add r0, r4, #0
	bl sub_0812ADF4
	b _0812BCF2
	.byte 0x00
	.byte 0x00
_0812BCB8:
	.4byte gUnknown_03000168
_0812BCBC:
	.4byte gUnknown_0300016C
_0812BCC0:
	lsl r0, r2, #4
	sub r0, r0, r2
	lsl r0, r0, #3
	ldr r1, _0812BCDC  @ =gUnknown_03001A30
	add r4, r0, r1
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _0812BCE0
	ldrb r0, [r4, #8]
	cmp r5, r0
	bcs _0812BCE0
_0812BCD6:
	mov r0, #0
	b _0812BCF4
	.byte 0x00
	.byte 0x00
_0812BCDC:
	.4byte gUnknown_03001A30
_0812BCE0:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0812BCEC
	add r0, r4, #0
	bl sub_0812BA6C
_0812BCEC:
	mov r0, #1
	strb r0, [r4, #1]
	strb r5, [r4, #8]
_0812BCF2:
	add r0, r4, #0
_0812BCF4:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0812BC64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812BCFC
sub_0812BCFC: @ 0x0812BCFC
	push {lr}
	ldr r0, _0812BD24  @ =gUnknown_03000C20
	mov r1, #0
	add r0, r0, #8
	mov r2, #23
_0812BD06:
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	add r0, r0, #84
	sub r2, r2, #1
	cmp r2, #0
	bge _0812BD06
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812BD24:
	.4byte gUnknown_03000C20
	THUMB_FUNC_END sub_0812BCFC

	THUMB_FUNC_START sub_0812BD28
sub_0812BD28: @ 0x0812BD28
	push {lr}
	ldr r1, _0812BD3C  @ =gUnknown_03000C20
	ldr r0, _0812BD40  @ =0x0000078C
	add r2, r1, r0
_0812BD30:
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _0812BD44
	add r0, r1, #0
	b _0812BD4C
	.byte 0x00
	.byte 0x00
_0812BD3C:
	.4byte gUnknown_03000C20
_0812BD40:
	.4byte 0x0000078C
_0812BD44:
	add r1, r1, #84
	cmp r1, r2
	ble _0812BD30
	mov r0, #0
_0812BD4C:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0812BD28

	THUMB_FUNC_START sub_0812BD50
sub_0812BD50: @ 0x0812BD50
	push {r4-r7,lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	cmp r5, #0
	beq _0812BE06
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0812BD68
	add r0, r5, #0
	bl sub_0812BE3C
_0812BD68:
	mov r4, #0
	str r4, [r5, #52]
	add r0, r5, #0
	add r0, r0, #73
	strb r4, [r0]
	add r0, r0, #1
	strb r4, [r0]
	str r6, [r5]
	str r7, [r5, #8]
	str r4, [r5, #12]
	add r0, r5, #0
	mov r1, #0
	bl sub_0812C334
	add r1, r5, #0
	add r1, r1, #75
	mov r0, #64
	strb r0, [r1]
	mov r2, #0
	strh r4, [r5, #16]
	mov r0, #34
	str r0, [r5, #20]
	str r4, [r5, #24]
	strb r2, [r5, #28]
	strb r2, [r5, #29]
	strb r2, [r5, #30]
	strh r4, [r5, #32]
	strh r4, [r5, #34]
	add r1, r1, #2
	mov r0, #128
	strb r0, [r1]
	add r1, r1, #1
	strb r0, [r1]
	add r0, r5, #0
	add r0, r0, #79
	strb r2, [r0]
	add r1, r1, #2
	mov r0, #2
	strb r0, [r1]
	add r0, r5, #0
	add r0, r0, #81
	strb r2, [r0]
	add r0, r7, #0
	add r0, r0, #67
	ldrb r3, [r0]
	cmp r3, #1
	bne _0812BDDA
	add r1, r1, #2
	mov r0, #12
	strb r0, [r1]
	sub r1, r1, #6
	mov r0, #127
	strb r0, [r1]
	add r0, r5, #0
	add r0, r0, #83
	strb r3, [r0]
	b _0812BDEC
_0812BDDA:
	add r1, r5, #0
	add r1, r1, #82
	mov r0, #3
	strb r0, [r1]
	add r0, r5, #0
	add r0, r0, #76
	strb r2, [r0]
	add r0, r0, #7
	strb r2, [r0]
_0812BDEC:
	add r1, r5, #0
	add r1, r1, #68
	mov r3, #0
	mov r2, #127
	mov r0, #127
	strh r0, [r1]
	add r0, r5, #0
	add r0, r0, #72
	strb r2, [r0]
	sub r0, r0, #2
	strh r3, [r0]
	sub r0, r0, #34
	str r0, [r5, #48]
_0812BE06:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812BD50

	THUMB_FUNC_START sub_0812BE0C
sub_0812BE0C: @ 0x0812BE0C
	push {r4-r6,lr}
	add r4, r0, #0
	cmp r4, #0
	beq _0812BE34
	add r1, r4, #0
	add r1, r1, #73
	ldrb r6, [r1]
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r4, #12]
	add r5, r1, #0
	cmp r0, #0
	beq _0812BE32
_0812BE26:
	ldr r4, [r0, #116]
	bl sub_0812B980
	add r0, r4, #0
	cmp r0, #0
	bne _0812BE26
_0812BE32:
	strb r6, [r5]
_0812BE34:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812BE0C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812BE3C
sub_0812BE3C: @ 0x0812BE3C
	push {r4,lr}
	add r4, r0, #0
	cmp r4, #0
	beq _0812BE4C
	bl sub_0812BE0C
	mov r0, #0
	str r0, [r4, #8]
_0812BE4C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812BE3C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812BE54
sub_0812BE54: @ 0x0812BE54
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	add r5, r0, #0
	cmp r5, #0
	beq _0812BE68
	ldr r1, [r5, #8]
	cmp r1, #0
	bne _0812BE6C
_0812BE68:
	mov r0, #1
	b _0812C2B8
_0812BE6C:
	mov r8, r1
	mov r0, r8
	add r0, r0, #60
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0812BE7E
	b _0812C29E
_0812BE7E:
	add r0, r5, #0
	bl sub_0812BE0C
	b _0812C2B6
_0812BE86:
	add r0, r5, #0
	bl sub_0812BE3C
	mov r0, #2
	b _0812C2B8
_0812BE90:
	ldr r2, [r5]
	ldrb r6, [r2]
	add r2, r2, #1
	str r2, [r5]
	cmp r6, #191
	bhi _0812BF14
	cmp r6, #95
	bhi _0812BEAC
	add r0, r5, #0
	add r0, r0, #68
	ldrh r4, [r0]
	add r0, r0, #4
	ldrb r2, [r0]
	b _0812BED2
_0812BEAC:
	add r0, r5, #0
	bl sub_0812C30C
	lsl r0, r0, #16
	lsr r4, r0, #16
	add r0, r5, #0
	add r0, r0, #68
	strh r4, [r0]
	ldr r0, [r5]
	ldrb r2, [r0]
	add r0, r0, #1
	str r0, [r5]
	add r0, r5, #0
	add r0, r0, #72
	strb r2, [r0]
	add r0, r6, #0
	sub r0, r0, #96
	lsl r0, r0, #24
	lsr r6, r0, #24
_0812BED2:
	mov r0, #150
	mul r4, r0, r4
	ldr r0, _0812BEF8  @ =gUnknown_03000180
	ldr r7, [r0]
	cmp r7, #0
	beq _0812BEFC
	mov r0, r8
	add r0, r0, #68
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0812BEFC
	add r0, r5, #0
	add r1, r6, #0
	add r3, r4, #0
	bl _call_via_r7
	b _0812BF06
_0812BEF8:
	.4byte gUnknown_03000180
_0812BEFC:
	add r0, r5, #0
	add r1, r6, #0
	add r3, r4, #0
	bl sub_0812B7B4
_0812BF06:
	add r0, r5, #0
	add r0, r0, #83
	ldrb r0, [r0]
	cmp r0, #1
	beq _0812BF12
	b _0812C29E
_0812BF12:
	b _0812BF38
_0812BF14:
	cmp r6, #192
	bne _0812BF20
	add r0, r5, #0
	add r0, r0, #70
	ldrh r4, [r0]
	b _0812BF34
_0812BF20:
	cmp r6, #193
	bne _0812BF40
	add r0, r5, #0
	bl sub_0812C30C
	lsl r0, r0, #16
	lsr r4, r0, #16
	add r0, r5, #0
	add r0, r0, #70
	strh r4, [r0]
_0812BF34:
	mov r0, #150
	mul r4, r0, r4
_0812BF38:
	ldr r0, [r5, #52]
	add r0, r0, r4
	str r0, [r5, #52]
	b _0812C29E
_0812BF40:
	mov r0, #240
	and r0, r0, r6
	cmp r0, #208
	bne _0812BF80
	mov r0, #15
	and r0, r0, r6
	strb r0, [r5, #29]
	add r1, r5, #0
	add r1, r1, #81
	ldrb r1, [r1]
	ldrb r3, [r2]
	add r1, r1, r3
	strb r1, [r5, #30]
	add r3, r2, #1
	str r3, [r5]
	ldrb r1, [r2, #1]
	strh r1, [r5, #34]
	add r2, r3, #1
	str r2, [r5]
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _0812BF78
	ldrb r0, [r3, #1]
	strh r0, [r5, #32]
	add r0, r2, #1
	str r0, [r5]
	b _0812BF7A
_0812BF78:
	strh r1, [r5, #32]
_0812BF7A:
	mov r0, #1
	strb r0, [r5, #28]
	b _0812C29E
_0812BF80:
	add r0, r6, #0
	sub r0, r0, #194
	cmp r0, #61
	bls _0812BF8A
	b _0812C29E
_0812BF8A:
	lsl r0, r0, #2
	ldr r1, _0812BF94  @ =0x0812BF98
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0812BF94:
	.4byte 0x0812BF98
	.4byte _0812C0EE
	.4byte _0812C10A
	.4byte _0812C116
	.4byte _0812C16A
	.4byte _0812C16A
	.4byte _0812C0FA
	.4byte _0812C17E
	.4byte _0812C188
	.4byte _0812C192
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C122
	.4byte _0812C13A
	.4byte _0812C146
	.4byte _0812C15E
	.4byte _0812C1B8
	.4byte _0812C1C4
	.4byte _0812C1D4
	.4byte _0812C1CC
	.4byte _0812C0A6
	.4byte _0812C152
	.4byte _0812C12E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C0AC
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C0C6
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C1E0
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C29E
	.4byte _0812C090
_0812C090:
	add r0, r5, #0
	add r0, r0, #36
	ldr r1, [r5, #48]
	cmp r1, r0
	bne _0812C09C
	b _0812BE86
_0812C09C:
	sub r0, r1, #4
	str r0, [r5, #48]
	ldr r0, [r0]
	str r0, [r5]
	b _0812C29E
_0812C0A6:
	mov r0, #0
	strb r0, [r5, #28]
	b _0812C29E
_0812C0AC:
	mov r2, sp
	ldr r0, [r5]
	ldrb r1, [r0]
	strb r1, [r2]
	add r0, r0, #1
	str r0, [r5]
	ldrb r1, [r0]
	strb r1, [r2, #1]
	add r0, r0, #1
	str r0, [r5]
	mov r0, r8
	ldr r1, [r0, #4]
	b _0812C0E4
_0812C0C6:
	mov r2, sp
	ldr r1, [r5]
	ldrb r0, [r1]
	strb r0, [r2]
	add r1, r1, #1
	str r1, [r5]
	ldrb r0, [r1]
	strb r0, [r2, #1]
	add r1, r1, #1
	str r1, [r5]
	ldr r0, [r5, #48]
	stm r0!, {r1}
	str r0, [r5, #48]
	mov r2, r8
	ldr r1, [r2, #4]
_0812C0E4:
	mov r0, sp
	ldrh r0, [r0]
	add r1, r1, r0
	str r1, [r5]
	b _0812C29E
_0812C0EE:
	ldr r0, [r5]
	ldrb r1, [r0]
	add r2, r5, #0
	add r2, r2, #66
	strh r1, [r2]
	b _0812C1B2
_0812C0FA:
	ldr r0, [r5]
	ldrb r1, [r0]
	add r0, r0, #1
	str r0, [r5]
	add r0, r5, #0
	bl sub_0812C334
	b _0812C29E
_0812C10A:
	ldr r0, [r5]
	ldrb r1, [r0]
	add r2, r5, #0
	add r2, r2, #75
	strb r1, [r2]
	b _0812C1B2
_0812C116:
	ldr r0, [r5]
	ldrb r1, [r0]
	add r2, r5, #0
	add r2, r2, #82
	strb r1, [r2]
	b _0812C1B2
_0812C122:
	ldr r0, [r5]
	ldrb r1, [r0]
	add r2, r5, #0
	add r2, r2, #77
	strb r1, [r2]
	b _0812C1B2
_0812C12E:
	ldr r0, [r5, #8]
	ldr r1, [r5]
	ldrb r2, [r1]
	add r0, r0, #64
	strb r2, [r0]
	b _0812C1DA
_0812C13A:
	ldr r0, [r5]
	ldrb r1, [r0]
	add r2, r5, #0
	add r2, r2, #79
	strb r1, [r2]
	b _0812C1B2
_0812C146:
	ldr r0, [r5]
	ldrb r2, [r0]
	add r1, r5, #0
	add r1, r1, #80
	strb r2, [r1]
	b _0812C1B2
_0812C152:
	ldr r0, [r5]
	ldrb r1, [r0]
	add r2, r5, #0
	add r2, r2, #81
	strb r1, [r2]
	b _0812C1B2
_0812C15E:
	ldr r0, [r5]
	ldrb r2, [r0]
	add r1, r5, #0
	add r1, r1, #76
	strb r2, [r1]
	b _0812C1B2
_0812C16A:
	add r0, r5, #0
	bl sub_0812BE0C
	mov r1, #0
	cmp r6, #197
	bne _0812C178
	mov r1, #1
_0812C178:
	add r0, r5, #0
	add r0, r0, #73
	b _0812C29C
_0812C17E:
	add r1, r5, #0
	add r1, r1, #83
	mov r0, #1
	strb r0, [r1]
	b _0812C29E
_0812C188:
	add r1, r5, #0
	add r1, r1, #83
	mov r0, #0
	strb r0, [r1]
	b _0812C29E
_0812C192:
	ldr r0, _0812C1AC  @ =gUnknown_03000184
	ldr r2, [r0]
	cmp r2, #0
	beq _0812C1B0
	ldr r0, [r5]
	ldrb r1, [r0]
	add r0, r0, #1
	str r0, [r5]
	add r0, r5, #0
	bl _call_via_r2
	b _0812C29E
	.byte 0x00
	.byte 0x00
_0812C1AC:
	.4byte gUnknown_03000184
_0812C1B0:
	ldr r0, [r5]
_0812C1B2:
	add r0, r0, #1
	str r0, [r5]
	b _0812C29E
_0812C1B8:
	add r0, r5, #0
	bl sub_0812C30C
	mov r3, r8
	strh r0, [r3, #48]
	b _0812C29E
_0812C1C4:
	ldr r1, [r5]
	ldrb r0, [r1]
	strh r0, [r5, #16]
	b _0812C1DA
_0812C1CC:
	ldr r1, [r5]
	ldrb r0, [r1]
	str r0, [r5, #24]
	b _0812C1DA
_0812C1D4:
	ldr r1, [r5]
	ldrb r0, [r1]
	str r0, [r5, #20]
_0812C1DA:
	add r1, r1, #1
	str r1, [r5]
	b _0812C29E
_0812C1E0:
	ldr r1, [r5]
	ldrb r4, [r1]
	add r1, r1, #1
	str r1, [r5]
	mov r2, sp
	ldrb r0, [r1]
	strb r0, [r2]
	add r2, r1, #1
	str r2, [r5]
	mov r3, sp
	ldrb r0, [r1, #1]
	strb r0, [r3, #1]
	add r2, r2, #1
	str r2, [r5]
	lsl r4, r4, #2
	mov r0, r8
	add r0, r0, #8
	add r6, r0, r4
	ldr r0, [r6]
	cmp r0, #0
	bne _0812C214
	bl sub_0812BD28
	add r4, r0, #0
	str r4, [r6]
	b _0812C21A
_0812C214:
	add r4, r0, #0
	bl sub_0812BE3C
_0812C21A:
	mov r0, sp
	ldrh r0, [r0]
	mov r1, r8
	ldr r2, [r1, #4]
	add r2, r2, r0
	add r0, r4, #0
	bl sub_0812BD50
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, r0, #64
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, r0, #64
	strh r1, [r0]
	add r0, r5, #0
	add r0, r0, #66
	ldrh r0, [r0]
	add r1, r4, #0
	add r1, r1, #66
	strh r0, [r1]
	add r0, r5, #0
	add r0, r0, #75
	ldrb r0, [r0]
	add r1, r1, #9
	strb r0, [r1]
	add r0, r5, #0
	add r0, r0, #76
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, r0, #76
	strb r1, [r0]
	add r0, r5, #0
	add r0, r0, #77
	ldrb r0, [r0]
	add r1, r4, #0
	add r1, r1, #77
	strb r0, [r1]
	add r0, r5, #0
	add r0, r0, #78
	ldrb r0, [r0]
	add r1, r1, #1
	strb r0, [r1]
	add r0, r5, #0
	add r0, r0, #82
	ldrb r0, [r0]
	add r1, r1, #4
	strb r0, [r1]
	add r0, r5, #0
	add r0, r0, #79
	ldrb r0, [r0]
	sub r1, r1, #3
	strb r0, [r1]
	add r0, r5, #0
	add r0, r0, #80
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, r0, #80
	strb r1, [r0]
	add r0, r5, #0
	add r0, r0, #81
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, r0, #81
_0812C29C:
	strb r1, [r0]
_0812C29E:
	ldr r1, [r5, #52]
	cmp r1, #0
	bgt _0812C2A6
	b _0812BE90
_0812C2A6:
	mov r2, r8
	ldrh r0, [r2, #48]
	sub r0, r1, r0
	str r0, [r5, #52]
	mov r3, #50
	ldrsh r1, [r2, r3]
	sub r0, r0, r1
	str r0, [r5, #52]
_0812C2B6:
	mov r0, #0
_0812C2B8:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0812BE54

	THUMB_FUNC_START sub_0812C2C4
sub_0812C2C4: @ 0x0812C2C4
	push {lr}
	ldr r2, [r1, #4]
	cmp r2, #0
	bne _0812C2DC
	str r0, [r1, #4]
	str r2, [r1, #112]
	ldr r2, [r0, #12]
	str r2, [r1, #116]
	str r1, [r0, #12]
	cmp r2, #0
	beq _0812C2DC
	str r1, [r2, #112]
_0812C2DC:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812C2C4

	THUMB_FUNC_START sub_0812C2E0
sub_0812C2E0: @ 0x0812C2E0
	push {lr}
	add r3, r0, #0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0812C308
	mov r0, #0
	str r0, [r1, #4]
	ldr r2, [r1, #116]
	cmp r2, #0
	beq _0812C2F8
	ldr r0, [r1, #112]
	str r0, [r2, #112]
_0812C2F8:
	ldr r2, [r1, #112]
	cmp r2, #0
	beq _0812C304
	ldr r0, [r1, #116]
	str r0, [r2, #116]
	b _0812C308
_0812C304:
	ldr r0, [r1, #116]
	str r0, [r3, #12]
_0812C308:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812C2E0

	THUMB_FUNC_START sub_0812C30C
sub_0812C30C: @ 0x0812C30C
	push {lr}
	add r3, r0, #0
	ldr r2, [r3]
	ldrb r1, [r2]
	add r2, r2, #1
	str r2, [r3]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0812C32E
	mov r0, #127
	and r1, r1, r0
	lsl r1, r1, #8
	ldrb r0, [r2]
	orr r1, r1, r0
	add r0, r2, #1
	str r0, [r3]
_0812C32E:
	add r0, r1, #0
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0812C30C

	THUMB_FUNC_START sub_0812C334
sub_0812C334: @ 0x0812C334
	add r3, r0, #0
	add r0, r0, #64
	mov r2, #0
	strh r1, [r0]
	add r0, r0, #2
	strh r2, [r0]
	ldr r0, _0812C364  @ =gUnknown_030003CC
	ldr r2, [r0]
	ldr r0, [r3, #8]
	ldr r0, [r0]
	lsl r1, r1, #1
	add r1, r1, r0
	ldrh r0, [r1]
	ldr r1, [r2, #16]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	ldr r1, [r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r1, r0
	str r1, [r3, #4]
	bx lr
_0812C364:
	.4byte gUnknown_030003CC
	THUMB_FUNC_END sub_0812C334

	THUMB_FUNC_START sub_0812C368
sub_0812C368: @ 0x0812C368
	push {r4,lr}
	mov r2, #0
	ldr r4, _0812C398  @ =gUnknown_03001C88
	mov r3, #0
_0812C370:
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r4
	add r1, r0, #0
	add r1, r1, #66
	strb r3, [r1]
	add r2, r2, #1
	mov r1, #9
	add r0, r0, #44
_0812C384:
	str r3, [r0]
	sub r0, r0, #4
	sub r1, r1, #1
	cmp r1, #0
	bge _0812C384
	cmp r2, #19
	ble _0812C370
	pop {r4}
	pop {r0}
	bx r0
_0812C398:
	.4byte gUnknown_03001C88
	THUMB_FUNC_END sub_0812C368

	THUMB_FUNC_START sub_0812C39C
sub_0812C39C: @ 0x0812C39C
	mov r12, r0
	mov r2, r12
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #2
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	mov r3, #0
	mov r2, #0
	mov r0, #150
	mov r1, r12
	strh r0, [r1, #48]
	strh r2, [r1, #50]
	mov r0, r12
	add r0, r0, #64
	mov r1, #128
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	mov r0, #128
	lsl r0, r0, #8
	mov r1, r12
	strh r0, [r1, #52]
	strh r2, [r1, #54]
	strh r2, [r1, #58]
	strh r2, [r1, #56]
	mov r0, r12
	add r0, r0, #68
	strb r3, [r0]
	bx lr
	THUMB_FUNC_END sub_0812C39C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812C3DC
sub_0812C3DC: @ 0x0812C3DC
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r6, #0
_0812C3E2:
	lsl r0, r6, #3
	add r0, r0, r6
	lsl r0, r0, #3
	ldr r1, _0812C40C  @ =gUnknown_03001C88
	add r1, r0, r1
	add r0, r1, #0
	add r0, r0, #66
	ldrb r0, [r0]
	add r7, r6, #1
	cmp r0, #0
	beq _0812C45E
	ldrh r2, [r1, #58]
	cmp r2, #0
	bne _0812C410
	cmp r0, #2
	bne _0812C426
	add r0, r6, #0
	bl sub_0812C5B4
	b _0812C45E
	.byte 0x00
	.byte 0x00
_0812C40C:
	.4byte gUnknown_03001C88
_0812C410:
	ldrh r0, [r1, #54]
	ldrh r3, [r1, #52]
	add r0, r0, r3
	strh r0, [r1, #52]
	sub r0, r2, #1
	strh r0, [r1, #58]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0812C426
	ldrh r0, [r1, #56]
	strh r0, [r1, #52]
_0812C426:
	mov r2, #0
	add r7, r6, #1
	add r4, r1, #0
	add r4, r4, #8
	mov r5, #9
_0812C430:
	ldr r0, [r4]
	cmp r0, #0
	beq _0812C44C
	str r2, [sp]
	bl sub_0812BE54
	lsl r0, r0, #24
	ldr r2, [sp]
	cmp r0, #0
	bne _0812C448
	mov r2, #1
	b _0812C44C
_0812C448:
	mov r0, #0
	str r0, [r4]
_0812C44C:
	add r4, r4, #4
	sub r5, r5, #1
	cmp r5, #0
	bge _0812C430
	cmp r2, #0
	bne _0812C45E
	add r0, r6, #0
	bl sub_0812C5B4
_0812C45E:
	add r6, r7, #0
	cmp r6, #19
	ble _0812C3E2
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812C3DC

	THUMB_FUNC_START sub_0812C46C
sub_0812C46C: @ 0x0812C46C
	push {r4,lr}
	ldr r2, _0812C490  @ =gUnknown_030003CC
	ldr r4, [r2]
	ldr r3, [r4, #8]
	lsl r1, r1, #2
	add r2, r1, r3
	ldr r2, [r2]
	add r3, r3, r2
	ldr r2, [r4, #20]
	add r1, r1, r2
	ldr r1, [r1]
	add r2, r2, r1
	add r1, r3, #0
	bl sub_0812C4C0
	pop {r4}
	pop {r0}
	bx r0
_0812C490:
	.4byte gUnknown_030003CC
	THUMB_FUNC_END sub_0812C46C

	THUMB_FUNC_START sub_0812C494
sub_0812C494: @ 0x0812C494
	push {r4,r5,lr}
	add r3, r2, #0
	ldr r2, _0812C4BC  @ =gUnknown_030003CC
	ldr r5, [r2]
	ldr r4, [r5, #12]
	lsl r1, r1, #2
	add r2, r1, r4
	ldr r2, [r2]
	add r4, r4, r2
	ldr r2, [r5, #24]
	add r1, r1, r2
	ldr r1, [r1]
	add r2, r2, r1
	add r1, r4, #0
	bl sub_0812C548
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C4BC:
	.4byte gUnknown_030003CC
	THUMB_FUNC_END sub_0812C494

	THUMB_FUNC_START sub_0812C4C0
sub_0812C4C0: @ 0x0812C4C0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r3, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #3
	ldr r1, _0812C544  @ =gUnknown_03001C88
	add r5, r0, r1
	add r4, r5, #0
	add r4, r4, #66
	ldrb r0, [r4]
	cmp r0, #0
	beq _0812C4E6
	add r0, r3, #0
	bl sub_0812C5B4
_0812C4E6:
	str r6, [r5, #4]
	str r7, [r5]
	add r1, r5, #0
	add r1, r1, #67
	mov r0, #0
	strb r0, [r1]
	add r0, r5, #0
	bl sub_0812C39C
	ldr r0, [r5, #4]
	mov r7, #0
	ldrsb r7, [r0, r7]
	add r0, r0, #2
	mov r6, #0
	mov r8, r4
	cmp r6, r7
	bge _0812C532
	add r4, r0, #0
_0812C50A:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0812C52A
	bl sub_0812BD28
	lsl r2, r6, #2
	add r1, r5, #0
	add r1, r1, #8
	add r1, r1, r2
	str r0, [r1]
	ldrh r1, [r4]
	ldr r2, [r5, #4]
	add r2, r2, r1
	add r1, r5, #0
	bl sub_0812BD50
_0812C52A:
	add r4, r4, #2
	add r6, r6, #1
	cmp r6, r7
	blt _0812C50A
_0812C532:
	mov r0, #1
	mov r1, r8
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C544:
	.4byte gUnknown_03001C88
	THUMB_FUNC_END sub_0812C4C0

	THUMB_FUNC_START sub_0812C548
sub_0812C548: @ 0x0812C548
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r4, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r9, r3
	lsl r0, r4, #3
	add r0, r0, r4
	lsl r0, r0, #3
	ldr r1, _0812C5B0  @ =gUnknown_03001C88
	add r5, r0, r1
	mov r0, #66
	add r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0812C574
	add r0, r4, #0
	bl sub_0812C5B4
_0812C574:
	str r6, [r5, #4]
	str r7, [r5]
	add r0, r5, #0
	add r0, r0, #67
	mov r4, #1
	strb r4, [r0]
	add r0, r5, #0
	bl sub_0812C39C
	bl sub_0812BD28
	str r0, [r5, #8]
	ldr r2, [r5, #4]
	mov r3, r9
	lsl r1, r3, #1
	add r1, r1, r2
	ldrh r1, [r1]
	add r2, r2, r1
	add r1, r5, #0
	bl sub_0812BD50
	mov r0, r8
	strb r4, [r0]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C5B0:
	.4byte gUnknown_03001C88
	THUMB_FUNC_END sub_0812C548

	THUMB_FUNC_START sub_0812C5B4
sub_0812C5B4: @ 0x0812C5B4
	push {r4-r7,lr}
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, _0812C5EC  @ =gUnknown_03001C88
	add r1, r1, r0
	add r2, r1, #0
	add r2, r2, #66
	ldrb r0, [r2]
	cmp r0, #0
	beq _0812C5E6
	add r7, r2, #0
	mov r6, #0
	add r4, r1, #0
	add r4, r4, #8
	mov r5, #9
_0812C5D4:
	ldr r0, [r4]
	bl sub_0812BE3C
	stm r4!, {r6}
	sub r5, r5, #1
	cmp r5, #0
	bge _0812C5D4
	mov r0, #0
	strb r0, [r7]
_0812C5E6:
	pop {r4-r7}
	pop {r0}
	bx r0
_0812C5EC:
	.4byte gUnknown_03001C88
	THUMB_FUNC_END sub_0812C5B4

	THUMB_FUNC_START sub_0812C5F0
sub_0812C5F0: @ 0x0812C5F0
	push {r4,lr}
	add r3, r1, #0
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, _0812C624  @ =gUnknown_03001C88
	add r4, r1, r0
	add r2, r4, #0
	add r2, r2, #66
	ldrb r0, [r2]
	cmp r0, #0
	beq _0812C61E
	mov r1, #0
	mov r0, #2
	strb r0, [r2]
	strh r1, [r4, #56]
	strh r3, [r4, #58]
	ldrh r0, [r4, #52]
	neg r0, r0
	add r1, r3, #0
	bl __divsi3
	strh r0, [r4, #54]
_0812C61E:
	pop {r4}
	pop {r0}
	bx r0
_0812C624:
	.4byte gUnknown_03001C88
	THUMB_FUNC_END sub_0812C5F0

	THUMB_FUNC_START sub_0812C628
sub_0812C628: @ 0x0812C628
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r3, _0812C648  @ =gUnknown_03001C88
	lsl r2, r0, #3
	add r2, r2, r0
	lsl r2, r2, #3
	add r2, r2, r3
	add r2, r2, #60
	mov r0, #1
	and r1, r1, r0
	ldrb r3, [r2]
	sub r0, r0, #3
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2]
	bx lr
_0812C648:
	.4byte gUnknown_03001C88
	THUMB_FUNC_END sub_0812C628

	THUMB_FUNC_START sub_0812C64C
sub_0812C64C: @ 0x0812C64C
	ldr r2, _0812C65C  @ =gUnknown_03001C88
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, #66
	add r1, r1, r2
	ldrb r0, [r1]
	bx lr
_0812C65C:
	.4byte gUnknown_03001C88
	THUMB_FUNC_END sub_0812C64C

	THUMB_FUNC_START sub_0812C660
sub_0812C660: @ 0x0812C660
	push {lr}
	ldr r2, _0812C67C  @ =gUnknown_030003C0
	ldr r0, [r2]
	add r0, r0, #12
	str r0, [r2]
	ldr r1, _0812C680  @ =gUnknown_030003C8
	ldr r1, [r1]
	cmp r0, r1
	bne _0812C676
	ldr r0, _0812C684  @ =gUnknown_03000188
	str r0, [r2]
_0812C676:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C67C:
	.4byte gUnknown_030003C0
_0812C680:
	.4byte gUnknown_030003C8
_0812C684:
	.4byte gUnknown_03000188
	THUMB_FUNC_END sub_0812C660

	THUMB_FUNC_START sub_0812C688
sub_0812C688: @ 0x0812C688
	ldr r0, _0812C6AC  @ =gUnknown_030003BC
	ldr r1, _0812C6B0  @ =gUnknown_03000188
	str r1, [r0]
	ldr r0, _0812C6B4  @ =gUnknown_030003C0
	str r1, [r0]
	ldr r0, _0812C6B8  @ =gUnknown_030003C4
	str r1, [r0]
	ldr r0, _0812C6BC  @ =gUnknown_030003C8
	mov r2, #138
	lsl r2, r2, #2
	add r1, r1, r2
	str r1, [r0]
	ldr r0, _0812C6C0  @ =gUnknown_03000180
	mov r1, #0
	str r1, [r0]
	ldr r0, _0812C6C4  @ =gUnknown_03000184
	str r1, [r0]
	bx lr
_0812C6AC:
	.4byte gUnknown_030003BC
_0812C6B0:
	.4byte gUnknown_03000188
_0812C6B4:
	.4byte gUnknown_030003C0
_0812C6B8:
	.4byte gUnknown_030003C4
_0812C6BC:
	.4byte gUnknown_030003C8
_0812C6C0:
	.4byte gUnknown_03000180
_0812C6C4:
	.4byte gUnknown_03000184
	THUMB_FUNC_END sub_0812C688

	THUMB_FUNC_START sub_0812C6C8
sub_0812C6C8: @ 0x0812C6C8
	push {lr}
	ldr r3, _0812C6DC  @ =gUnknown_030003BC
	ldr r2, [r3]
	ldr r0, _0812C6E0  @ =gUnknown_030003C4
	ldr r0, [r0]
	cmp r2, r0
	bne _0812C6E4
	mov r0, #0
	b _0812C6F8
	.byte 0x00
	.byte 0x00
_0812C6DC:
	.4byte gUnknown_030003BC
_0812C6E0:
	.4byte gUnknown_030003C4
_0812C6E4:
	add r0, r2, #0
	add r0, r0, #12
	str r0, [r3]
	ldr r1, _0812C6FC  @ =gUnknown_030003C8
	ldr r1, [r1]
	cmp r0, r1
	bne _0812C6F6
	ldr r0, _0812C700  @ =gUnknown_03000188
	str r0, [r3]
_0812C6F6:
	add r0, r2, #0
_0812C6F8:
	pop {r1}
	bx r1
_0812C6FC:
	.4byte gUnknown_030003C8
_0812C700:
	.4byte gUnknown_03000188
	THUMB_FUNC_END sub_0812C6C8

	THUMB_FUNC_START sub_0812C704
sub_0812C704: @ 0x0812C704
	ldr r0, _0812C710  @ =gUnknown_030003C4
	ldr r1, _0812C714  @ =gUnknown_030003C0
	ldr r1, [r1]
	str r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0812C710:
	.4byte gUnknown_030003C4
_0812C714:
	.4byte gUnknown_030003C0
	THUMB_FUNC_END sub_0812C704

	THUMB_FUNC_START sub_0812C718
sub_0812C718: @ 0x0812C718
	push {lr}
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _0812C738  @ =gUnknown_030003C0
	ldr r2, [r2]
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #4]
	str r1, [r2, #8]
	bl sub_0812C660
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C738:
	.4byte gUnknown_030003C0
	THUMB_FUNC_END sub_0812C718

	THUMB_FUNC_START sub_0812C73C
sub_0812C73C: @ 0x0812C73C
	push {r4,lr}
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _0812C760  @ =gUnknown_030003C0
	ldr r4, [r3]
	mov r3, #1
	strh r3, [r4]
	lsl r0, r0, #16
	orr r0, r0, r1
	str r0, [r4, #4]
	str r2, [r4, #8]
	bl sub_0812C660
	pop {r4}
	pop {r0}
	bx r0
_0812C760:
	.4byte gUnknown_030003C0
	THUMB_FUNC_END sub_0812C73C

	THUMB_FUNC_START sub_0812C764
sub_0812C764: @ 0x0812C764
	push {lr}
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _0812C784  @ =gUnknown_030003C0
	ldr r2, [r2]
	mov r3, #2
	strh r3, [r2]
	str r0, [r2, #4]
	str r1, [r2, #8]
	bl sub_0812C660
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C784:
	.4byte gUnknown_030003C0
	THUMB_FUNC_END sub_0812C764

	THUMB_FUNC_START sub_0812C788
sub_0812C788: @ 0x0812C788
	push {lr}
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _0812C7A8  @ =gUnknown_030003C0
	ldr r2, [r2]
	mov r3, #3
	strh r3, [r2]
	str r0, [r2, #4]
	str r1, [r2, #8]
	bl sub_0812C660
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C7A8:
	.4byte gUnknown_030003C0
	THUMB_FUNC_END sub_0812C788

	THUMB_FUNC_START sub_0812C7AC
sub_0812C7AC: @ 0x0812C7AC
	push {lr}
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _0812C7C8  @ =gUnknown_030003C0
	ldr r2, [r2]
	mov r3, #128
	lsl r3, r3, #2
	strh r3, [r2]
	str r1, [r2, #4]
	str r0, [r2, #8]
	bl sub_0812C660
	pop {r0}
	bx r0
_0812C7C8:
	.4byte gUnknown_030003C0
	THUMB_FUNC_END sub_0812C7AC

	THUMB_FUNC_START sub_0812C7CC
sub_0812C7CC: @ 0x0812C7CC
	push {lr}
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _0812C7E8  @ =gUnknown_030003C0
	ldr r2, [r2]
	ldr r3, _0812C7EC  @ =0x00000201
	strh r3, [r2]
	str r1, [r2, #4]
	str r0, [r2, #8]
	bl sub_0812C660
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C7E8:
	.4byte gUnknown_030003C0
_0812C7EC:
	.4byte 0x00000201
	THUMB_FUNC_END sub_0812C7CC

	THUMB_FUNC_START sub_0812C7F0
sub_0812C7F0: @ 0x0812C7F0
	push {lr}
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r2, _0812C810  @ =gUnknown_030003C0
	ldr r3, [r2]
	mov r2, #4
	strh r2, [r3]
	str r0, [r3, #4]
	lsl r1, r1, #16
	asr r1, r1, #16
	str r1, [r3, #8]
	bl sub_0812C660
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C810:
	.4byte gUnknown_030003C0
	THUMB_FUNC_END sub_0812C7F0

	THUMB_FUNC_START sub_0812C814
sub_0812C814: @ 0x0812C814
	push {lr}
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _0812C834  @ =gUnknown_030003C0
	ldr r2, [r2]
	mov r3, #5
	strh r3, [r2]
	str r0, [r2, #4]
	str r1, [r2, #8]
	bl sub_0812C660
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C834:
	.4byte gUnknown_030003C0
	THUMB_FUNC_END sub_0812C814

	THUMB_FUNC_START sub_0812C838
sub_0812C838: @ 0x0812C838
	push {lr}
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _0812C858  @ =gUnknown_030003C0
	ldr r2, [r2]
	mov r3, #6
	strh r3, [r2]
	str r0, [r2, #4]
	str r1, [r2, #8]
	bl sub_0812C660
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C858:
	.4byte gUnknown_030003C0
	THUMB_FUNC_END sub_0812C838

	THUMB_FUNC_START sub_0812C85C
sub_0812C85C: @ 0x0812C85C
	push {r4,lr}
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r3, _0812C880  @ =gUnknown_030003C0
	ldr r4, [r3]
	mov r3, #128
	lsl r3, r3, #1
	strh r3, [r4]
	lsl r0, r0, #16
	orr r0, r0, r2
	str r0, [r4, #4]
	str r1, [r4, #8]
	bl sub_0812C660
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C880:
	.4byte gUnknown_030003C0
	THUMB_FUNC_END sub_0812C85C

	THUMB_FUNC_START sub_0812C884
sub_0812C884: @ 0x0812C884
	push {r4,lr}
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r3, _0812C8A8  @ =gUnknown_030003C0
	ldr r4, [r3]
	mov r3, #129
	lsl r3, r3, #1
	strh r3, [r4]
	lsl r0, r0, #16
	orr r0, r0, r2
	str r0, [r4, #4]
	str r1, [r4, #8]
	bl sub_0812C660
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C8A8:
	.4byte gUnknown_030003C0
	THUMB_FUNC_END sub_0812C884

	THUMB_FUNC_START sub_0812C8AC
sub_0812C8AC: @ 0x0812C8AC
	push {r4,r5,lr}
	lsl r0, r0, #16
	lsl r2, r2, #24
	ldr r4, _0812C8D4  @ =gUnknown_030003C0
	ldr r5, [r4]
	ldr r4, _0812C8D8  @ =0x00000103
	strh r4, [r5]
	lsr r2, r2, #16
	orr r2, r2, r0
	lsl r3, r3, #24
	lsr r3, r3, #24
	orr r2, r2, r3
	str r2, [r5, #4]
	str r1, [r5, #8]
	bl sub_0812C660
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C8D4:
	.4byte gUnknown_030003C0
_0812C8D8:
	.4byte 0x00000103
	THUMB_FUNC_END sub_0812C8AC

	THUMB_FUNC_START sub_0812C8DC
sub_0812C8DC: @ 0x0812C8DC
	push {r4,lr}
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r3, _0812C8FC  @ =gUnknown_030003C0
	ldr r4, [r3]
	ldr r3, _0812C900  @ =0x00000101
	strh r3, [r4]
	lsl r0, r0, #16
	orr r0, r0, r2
	str r0, [r4, #4]
	str r1, [r4, #8]
	bl sub_0812C660
	pop {r4}
	pop {r0}
	bx r0
_0812C8FC:
	.4byte gUnknown_030003C0
_0812C900:
	.4byte 0x00000101
	THUMB_FUNC_END sub_0812C8DC

	THUMB_FUNC_START sub_0812C904
sub_0812C904: @ 0x0812C904
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _0812C920  @ =gUnknown_030003C0
	ldr r2, [r1]
	mov r1, #192
	lsl r1, r1, #2
	strh r1, [r2]
	str r0, [r2, #4]
	bl sub_0812C660
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C920:
	.4byte gUnknown_030003C0
	THUMB_FUNC_END sub_0812C904

	THUMB_FUNC_START sub_0812C924
sub_0812C924: @ 0x0812C924
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _0812C940  @ =gUnknown_030003C0
	ldr r2, [r1]
	mov r1, #193
	lsl r1, r1, #2
	strh r1, [r2]
	str r0, [r2, #4]
	bl sub_0812C660
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C940:
	.4byte gUnknown_030003C0
	THUMB_FUNC_END sub_0812C924

	THUMB_FUNC_START sub_0812C944
sub_0812C944: @ 0x0812C944
	push {lr}
	ldr r2, _0812C95C  @ =gUnknown_030003C0
	ldr r2, [r2]
	ldr r3, _0812C960  @ =0x00000301
	strh r3, [r2]
	str r0, [r2, #4]
	str r1, [r2, #8]
	bl sub_0812C660
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812C95C:
	.4byte gUnknown_030003C0
_0812C960:
	.4byte 0x00000301
	THUMB_FUNC_END sub_0812C944

	THUMB_FUNC_START sub_0812C964
sub_0812C964: @ 0x0812C964
	push {lr}
	ldr r1, _0812C978  @ =gUnknown_030003C0
	ldr r2, [r1]
	ldr r1, _0812C97C  @ =0x00000302
	strh r1, [r2]
	str r0, [r2, #4]
	bl sub_0812C660
	pop {r0}
	bx r0
_0812C978:
	.4byte gUnknown_030003C0
_0812C97C:
	.4byte 0x00000302
	THUMB_FUNC_END sub_0812C964

	THUMB_FUNC_START sub_0812C980
sub_0812C980: @ 0x0812C980
	push {lr}
	ldr r1, _0812C994  @ =gUnknown_030003C0
	ldr r2, [r1]
	ldr r1, _0812C998  @ =0x00000303
	strh r1, [r2]
	str r0, [r2, #4]
	bl sub_0812C660
	pop {r0}
	bx r0
_0812C994:
	.4byte gUnknown_030003C0
_0812C998:
	.4byte 0x00000303
	THUMB_FUNC_END sub_0812C980

	THUMB_FUNC_START sub_0812C99C
sub_0812C99C: @ 0x0812C99C
	push {lr}
	add r3, r0, #0
	ldr r0, [r3, #4]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, _0812C9BC  @ =gUnknown_03001C88
	add r2, r1, r0
	ldrh r0, [r3]
	cmp r0, #6
	bhi _0812CA2A
	lsl r0, r0, #2
	ldr r1, _0812C9C0  @ =0x0812C9C4
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0812C9BC:
	.4byte gUnknown_03001C88
_0812C9C0:
	.4byte 0x0812C9C4
	.4byte _0812C9E0
	.4byte _0812C9EA
	.4byte _0812CA00
	.4byte _0812CA0A
	.4byte _0812CA1C
	.4byte _0812CA22
	.4byte _0812CA14
_0812C9E0:
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	bl sub_0812C46C
	b _0812CA2A
_0812C9EA:
	ldr r1, [r3, #4]
	lsr r0, r1, #16
	ldr r2, _0812C9FC  @ =0x0000FFFF
	and r1, r1, r2
	ldr r2, [r3, #8]
	bl sub_0812C494
	b _0812CA2A
	.byte 0x00
	.byte 0x00
_0812C9FC:
	.4byte 0x0000FFFF
_0812CA00:
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	bl sub_0812C5F0
	b _0812CA2A
_0812CA0A:
	ldr r0, [r3, #4]
	ldrb r1, [r3, #8]
	bl sub_0812C628
	b _0812CA2A
_0812CA14:
	ldr r1, [r3, #8]
	add r0, r2, #0
	add r0, r0, #68
	b _0812CA28
_0812CA1C:
	ldr r0, [r3, #8]
	strh r0, [r2, #50]
	b _0812CA2A
_0812CA22:
	ldr r1, [r3, #8]
	add r0, r2, #0
	add r0, r0, #65
_0812CA28:
	strb r1, [r0]
_0812CA2A:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812C99C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812CA30
sub_0812CA30: @ 0x0812CA30
	push {r4-r6,lr}
	add r3, r0, #0
	ldr r4, [r3, #4]
	lsr r0, r4, #16
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, _0812CA58  @ =gUnknown_03001C88
	add r1, r1, r0
	mov r5, #0
	ldrh r2, [r3]
	ldr r0, _0812CA5C  @ =0x00000101
	cmp r2, r0
	beq _0812CB14
	cmp r2, r0
	bgt _0812CA60
	sub r0, r0, #1
	cmp r2, r0
	beq _0812CA70
	b _0812CB44
_0812CA58:
	.4byte gUnknown_03001C88
_0812CA5C:
	.4byte 0x00000101
_0812CA60:
	mov r0, #129
	lsl r0, r0, #1
	cmp r2, r0
	beq _0812CAA2
	add r0, r0, #1
	cmp r2, r0
	beq _0812CAD4
	b _0812CB44
_0812CA70:
	lsl r0, r4, #24
	lsr r2, r0, #24
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0812CB44
	mov r4, #1
	add r1, r1, #8
_0812CA7E:
	and r0, r0, r4
	cmp r0, #0
	beq _0812CA8E
	ldr r0, [r1]
	cmp r0, #0
	beq _0812CA8E
	add r0, r0, #74
	strb r2, [r0]
_0812CA8E:
	add r1, r1, #4
	add r5, r5, #1
	ldr r0, [r3, #8]
	lsr r0, r0, #1
	str r0, [r3, #8]
	cmp r0, #0
	beq _0812CB44
	cmp r5, #9
	ble _0812CA7E
	b _0812CB44
_0812CAA2:
	lsl r0, r4, #24
	lsr r2, r0, #24
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0812CB44
	mov r4, #1
	add r1, r1, #8
_0812CAB0:
	and r0, r0, r4
	cmp r0, #0
	beq _0812CAC0
	ldr r0, [r1]
	cmp r0, #0
	beq _0812CAC0
	add r0, r0, #78
	strb r2, [r0]
_0812CAC0:
	add r1, r1, #4
	add r5, r5, #1
	ldr r0, [r3, #8]
	lsr r0, r0, #1
	str r0, [r3, #8]
	cmp r0, #0
	beq _0812CB44
	cmp r5, #9
	ble _0812CAB0
	b _0812CB44
_0812CAD4:
	mov r0, #255
	lsl r0, r0, #8
	and r0, r0, r4
	lsr r2, r0, #8
	lsl r0, r4, #24
	lsr r4, r0, #24
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0812CB44
	mov r6, #1
	add r1, r1, #8
_0812CAEA:
	and r0, r0, r6
	cmp r0, #0
	beq _0812CB00
	ldr r0, [r1]
	cmp r0, #0
	beq _0812CB00
	add r0, r0, #80
	strb r2, [r0]
	ldr r0, [r1]
	add r0, r0, #79
	strb r4, [r0]
_0812CB00:
	add r1, r1, #4
	add r5, r5, #1
	ldr r0, [r3, #8]
	lsr r0, r0, #1
	str r0, [r3, #8]
	cmp r0, #0
	beq _0812CB44
	cmp r5, #9
	ble _0812CAEA
	b _0812CB44
_0812CB14:
	lsl r0, r4, #24
	lsr r2, r0, #24
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0812CB44
	mov r4, #1
	add r1, r1, #8
_0812CB22:
	and r0, r0, r4
	cmp r0, #0
	beq _0812CB32
	ldr r0, [r1]
	cmp r0, #0
	beq _0812CB32
	add r0, r0, #75
	strb r2, [r0]
_0812CB32:
	add r1, r1, #4
	add r5, r5, #1
	ldr r0, [r3, #8]
	lsr r0, r0, #1
	str r0, [r3, #8]
	cmp r0, #0
	beq _0812CB44
	cmp r5, #9
	ble _0812CB22
_0812CB44:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812CA30

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812CB4C
sub_0812CB4C: @ 0x0812CB4C
	push {r4,r5,lr}
	add r4, r0, #0
	mov r5, #0
	ldrh r1, [r4]
	mov r0, #128
	lsl r0, r0, #2
	cmp r1, r0
	beq _0812CB64
	add r0, r0, #1
	cmp r1, r0
	beq _0812CB8E
	b _0812CBB6
_0812CB64:
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0812CBB6
_0812CB6A:
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0812CB7A
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl sub_0812C5F0
_0812CB7A:
	add r5, r5, #1
	ldr r0, [r4, #8]
	lsr r0, r0, #1
	str r0, [r4, #8]
	add r1, r0, #0
	cmp r1, #0
	beq _0812CBB6
	cmp r5, #19
	ble _0812CB6A
	b _0812CBB6
_0812CB8E:
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0812CBB6
_0812CB94:
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0812CBA4
	ldrb r1, [r4, #4]
	add r0, r5, #0
	bl sub_0812C628
_0812CBA4:
	add r5, r5, #1
	ldr r0, [r4, #8]
	lsr r0, r0, #1
	str r0, [r4, #8]
	add r1, r0, #0
	cmp r1, #0
	beq _0812CBB6
	cmp r5, #19
	ble _0812CB94
_0812CBB6:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812CB4C

	THUMB_FUNC_START sub_0812CBBC
sub_0812CBBC: @ 0x0812CBBC
	push {lr}
	add r2, r0, #0
	ldrh r0, [r2]
	ldr r1, _0812CBD4  @ =0xFFFFFD00
	add r0, r0, r1
	cmp r0, #4
	bhi _0812CC1E
	lsl r0, r0, #2
	ldr r1, _0812CBD8  @ =0x0812CBDC
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0812CBD4:
	.4byte 0xFFFFFD00
_0812CBD8:
	.4byte 0x0812CBDC
	.4byte _0812CC10
	.4byte _0812CBF0
	.4byte _0812CBFA
	.4byte _0812CC04
	.4byte _0812CC18
_0812CBF0:
	ldr r0, [r2, #8]
	ldr r1, [r2, #4]
	bl _call_via_r1
	b _0812CC1E
_0812CBFA:
	ldr r1, _0812CC00  @ =gUnknown_03000184
	b _0812CC06
	.byte 0x00
	.byte 0x00
_0812CC00:
	.4byte gUnknown_03000184
_0812CC04:
	ldr r1, _0812CC0C  @ =gUnknown_03000180
_0812CC06:
	ldr r0, [r2, #4]
	str r0, [r1]
	b _0812CC1E
_0812CC0C:
	.4byte gUnknown_03000180
_0812CC10:
	ldrb r0, [r2, #4]
	bl sub_0812AF5C
	b _0812CC1E
_0812CC18:
	ldrb r0, [r2, #4]
	bl sub_0812AF6C
_0812CC1E:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812CBBC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812CC24
sub_0812CC24: @ 0x0812CC24
	push {r4,lr}
	bl sub_0812C6C8
	add r2, r0, #0
	cmp r2, #0
	beq _0812CC4C
	ldr r4, _0812CC54  @ =gUnknown_08198EC8
_0812CC32:
	ldrh r0, [r2]
	lsr r0, r0, #8
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, [r0]
	add r0, r2, #0
	bl _call_via_r1
	bl sub_0812C6C8
	add r2, r0, #0
	cmp r2, #0
	bne _0812CC32
_0812CC4C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812CC54:
	.4byte gUnknown_08198EC8
	THUMB_FUNC_END sub_0812CC24

	.INCBIN "baserom.gba", 0x12CC58, 0x12D32C-0x12CC58
