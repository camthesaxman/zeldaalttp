	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_080D1ACC
sub_080D1ACC: @ 0x080D1ACC
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080D1B24  @ =gRam
	ldr r1, _080D1B28  @ =0x00000F92
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
	ldr r1, _080D1B2C  @ =0x00001627
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D1B1C
	ldr r0, _080D1B30  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D1B34  @ =0x00000FB2
	add r2, r5, r1
	add r2, r4, r2
	ldrb r0, [r2]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r2]
	ldr r0, _080D1B38  @ =0x00000F22
	add r1, r5, r0
	add r1, r4, r1
	ldr r3, _080D1B3C  @ =gUnknown_08174B60
	ldrb r0, [r2]
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080D1B40  @ =0x00000F12
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #248
	strb r1, [r0]
_080D1B1C:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D1B24:
	.4byte gRam
_080D1B28:
	.4byte 0x00000F92
_080D1B2C:
	.4byte 0x00001627
_080D1B30:
	.4byte 0x00000F52
_080D1B34:
	.4byte 0x00000FB2
_080D1B38:
	.4byte 0x00000F22
_080D1B3C:
	.4byte gUnknown_08174B60
_080D1B40:
	.4byte 0x00000F12
	THUMB_FUNC_END sub_080D1ACC

	THUMB_FUNC_START sub_080D1B44
sub_080D1B44: @ 0x080D1B44
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C99DC
	ldr r5, _080D1BC8  @ =gRam
	ldr r1, _080D1BCC  @ =0x00001152
	add r0, r5, r1
	add r1, r4, r0
	ldrb r0, [r1]
	sub r0, r0, #3
	mov r3, #0
	strb r0, [r1]
	ldr r2, _080D1BD0  @ =0x00001142
	add r0, r5, r2
	add r2, r4, r0
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080D1B84
	mov r0, #24
	strb r0, [r1]
	strb r3, [r2]
	ldr r1, _080D1BD4  @ =0x00001052
	add r0, r5, r1
	add r0, r4, r0
	strb r3, [r0]
	ldr r2, _080D1BD8  @ =0x00000F62
	add r0, r5, r2
	add r0, r4, r0
	strb r3, [r0]
_080D1B84:
	ldr r3, _080D1BD4  @ =0x00001052
	add r0, r5, r3
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #3
	and r1, r1, r0
	cmp r1, #0
	bne _080D1BA8
	ldr r1, _080D1BD8  @ =0x00000F62
	add r0, r5, r1
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #2
	beq _080D1BA8
	add r0, r0, #1
	strb r0, [r1]
_080D1BA8:
	ldr r0, _080D1BC8  @ =gRam
	ldr r2, _080D1BDC  @ =0x00000F92
	add r1, r0, r2
	add r1, r4, r1
	ldr r2, _080D1BE0  @ =gUnknown_08174B64
	ldr r3, _080D1BD8  @ =0x00000F62
	add r0, r0, r3
	add r0, r4, r0
	ldrb r0, [r0]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D1BC8:
	.4byte gRam
_080D1BCC:
	.4byte 0x00001152
_080D1BD0:
	.4byte 0x00001142
_080D1BD4:
	.4byte 0x00001052
_080D1BD8:
	.4byte 0x00000F62
_080D1BDC:
	.4byte 0x00000F92
_080D1BE0:
	.4byte gUnknown_08174B64
	THUMB_FUNC_END sub_080D1B44

	THUMB_FUNC_START sub_080D1BE4
sub_080D1BE4: @ 0x080D1BE4
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080D1EE4
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D1BE4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D1BF4
sub_080D1BF4: @ 0x080D1BF4
	push {r4-r6,lr}
	add r5, r0, #0
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r4, _080D1C40  @ =gRam
	ldr r0, _080D1C44  @ =0x00001122
	add r2, r4, r0
	add r2, r5, r2
	ldrb r0, [r2]
	mov r1, #191
	and r1, r1, r0
	ldr r3, _080D1C48  @ =gUnknown_08174B54
	ldr r6, _080D1C4C  @ =0x00000FB2
	add r0, r4, r6
	add r0, r5, r0
	ldrb r0, [r0]
	add r0, r0, r3
	ldrb r0, [r0]
	orr r1, r1, r0
	strb r1, [r2]
	add r0, r5, #0
	bl sub_080C6240
	ldr r1, _080D1C50  @ =gUnknown_08174B58
	ldr r0, _080D1C54  @ =0x00000F52
	add r4, r4, r0
	add r4, r5, r4
	ldrb r0, [r4]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D1C40:
	.4byte gRam
_080D1C44:
	.4byte 0x00001122
_080D1C48:
	.4byte gUnknown_08174B54
_080D1C4C:
	.4byte 0x00000FB2
_080D1C50:
	.4byte gUnknown_08174B58
_080D1C54:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D1BF4

	THUMB_FUNC_START sub_080D1C58
sub_080D1C58: @ 0x080D1C58
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r5, r1, #0
	ldr r6, _080D1CD4  @ =gRam
	ldr r2, _080D1CD8  @ =0x00000F92
	add r0, r6, r2
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #3
	bne _080D1C74
	add r0, r1, #0
	bl sub_080D1E5C
_080D1C74:
	ldr r4, _080D1CDC  @ =0x00001122
	add r2, r6, r4
	add r2, r5, r2
	ldrb r0, [r2]
	mov r1, #191
	and r1, r1, r0
	ldr r3, _080D1CE0  @ =gUnknown_08174B68
	ldr r4, _080D1CE4  @ =0x00000FB2
	add r0, r6, r4
	add r0, r5, r0
	ldrb r0, [r0]
	add r0, r0, r3
	ldrb r0, [r0]
	orr r1, r1, r0
	strb r1, [r2]
	ldr r1, _080D1CE8  @ =gUnknown_03003E74
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	ldr r0, _080D1CEC  @ =0x00001012
	add r4, r6, r0
	add r4, r5, r4
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	add r0, r5, #0
	bl sub_080C6240
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	add r0, r5, #0
	bl sub_080C99DC
	ldr r1, _080D1CF0  @ =gUnknown_08174B6C
	ldr r2, _080D1CF4  @ =0x00000F52
	add r0, r6, r2
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
	pop {r4-r6}
	pop {r0}
	bx r0
_080D1CD4:
	.4byte gRam
_080D1CD8:
	.4byte 0x00000F92
_080D1CDC:
	.4byte 0x00001122
_080D1CE0:
	.4byte gUnknown_08174B68
_080D1CE4:
	.4byte 0x00000FB2
_080D1CE8:
	.4byte gUnknown_03003E74
_080D1CEC:
	.4byte 0x00001012
_080D1CF0:
	.4byte gUnknown_08174B6C
_080D1CF4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D1C58

	THUMB_FUNC_START sub_080D1CF8
sub_080D1CF8: @ 0x080D1CF8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r2, #0
	ldr r5, _080D1D74  @ =gRam
	ldr r1, _080D1D78  @ =0x00000996
	add r0, r5, r1
	ldrb r1, [r0]
	mov r0, #24
	and r0, r0, r1
	cmp r0, #0
	bne _080D1D12
	mov r2, #3
_080D1D12:
	ldr r1, _080D1D7C  @ =0x00000F92
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
	ldr r1, _080D1D80  @ =0x00001627
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D1D6C
	ldr r0, _080D1D84  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D1D88  @ =0x00000FB2
	add r2, r5, r1
	add r2, r4, r2
	ldrb r0, [r2]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r2]
	ldr r0, _080D1D8C  @ =0x00000F22
	add r1, r5, r0
	add r1, r4, r1
	ldr r3, _080D1D90  @ =gUnknown_08174B78
	ldrb r0, [r2]
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080D1D94  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #32
	strb r1, [r0]
	ldr r1, _080D1D98  @ =0x00001152
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #16
	strb r1, [r0]
	ldr r1, _080D1D9C  @ =0x00000F12
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #248
	strb r1, [r0]
_080D1D6C:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D1D74:
	.4byte gRam
_080D1D78:
	.4byte 0x00000996
_080D1D7C:
	.4byte 0x00000F92
_080D1D80:
	.4byte 0x00001627
_080D1D84:
	.4byte 0x00000F52
_080D1D88:
	.4byte 0x00000FB2
_080D1D8C:
	.4byte 0x00000F22
_080D1D90:
	.4byte gUnknown_08174B78
_080D1D94:
	.4byte 0x00000FC2
_080D1D98:
	.4byte 0x00001152
_080D1D9C:
	.4byte 0x00000F12
	THUMB_FUNC_END sub_080D1CF8

	THUMB_FUNC_START sub_080D1DA0
sub_080D1DA0: @ 0x080D1DA0
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r5, r3, #0
	ldr r4, _080D1DFC  @ =gRam
	ldr r1, _080D1E00  @ =0x00000FC2
	add r0, r4, r1
	add r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D1DF4
	ldr r1, _080D1E04  @ =0x00001152
	add r0, r4, r1
	add r0, r3, r0
	ldrb r1, [r0]
	add r2, r1, #2
	strb r2, [r0]
	sub r1, r1, #14
	lsl r1, r1, #24
	cmp r1, #0
	blt _080D1DD6
	ldr r0, _080D1E08  @ =0x00000F52
	add r1, r4, r0
	add r1, r3, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D1DD6:
	ldr r0, _080D1E0C  @ =0x00001052
	add r1, r4, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D1E10  @ =0x00000F92
	add r2, r4, r1
	add r2, r5, r2
	lsl r0, r0, #24
	lsr r0, r0, #25
	mov r1, #1
	and r0, r0, r1
	add r0, r0, #1
	strb r0, [r2]
_080D1DF4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D1DFC:
	.4byte gRam
_080D1E00:
	.4byte 0x00000FC2
_080D1E04:
	.4byte 0x00001152
_080D1E08:
	.4byte 0x00000F52
_080D1E0C:
	.4byte 0x00001052
_080D1E10:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080D1DA0

	THUMB_FUNC_START sub_080D1E14
sub_080D1E14: @ 0x080D1E14
	push {r4,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r4, _080D1E4C  @ =gRam
	ldr r1, _080D1E50  @ =0x00000F92
	add r0, r4, r1
	add r0, r3, r0
	mov r1, #1
	strb r1, [r0]
	ldr r0, _080D1E54  @ =0x00001152
	add r1, r4, r0
	add r1, r3, r1
	ldrb r0, [r1]
	sub r2, r0, #1
	strb r2, [r1]
	add r0, r0, #14
	lsl r0, r0, #24
	cmp r0, #0
	bge _080D1E46
	ldr r0, _080D1E58  @ =0x00000F52
	add r1, r4, r0
	add r1, r3, r1
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_080D1E46:
	pop {r4}
	pop {r0}
	bx r0
_080D1E4C:
	.4byte gRam
_080D1E50:
	.4byte 0x00000F92
_080D1E54:
	.4byte 0x00001152
_080D1E58:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D1E14

	THUMB_FUNC_START sub_080D1E5C
sub_080D1E5C: @ 0x080D1E5C
	push {r4-r7,lr}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	add r2, r6, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #0
	bne _080D1EC4
	ldr r0, _080D1ECC  @ =gUnknown_03003E74
	ldrh r0, [r0]
	ldr r4, _080D1ED0  @ =gRam
	mov r2, #150
	lsl r2, r2, #4
	add r1, r4, r2
	ldrb r1, [r1]
	ldr r3, _080D1ED4  @ =gUnknown_08174B7C
	ldr r5, _080D1ED8  @ =0x00000FB2
	add r2, r4, r5
	add r2, r6, r2
	ldrb r5, [r2]
	add r3, r5, r3
	ldrb r2, [r3]
	add r1, r1, r2
	ldr r3, _080D1EDC  @ =0x00000964
	add r2, r4, r3
	ldrb r2, [r2]
	add r3, r3, #5
	add r4, r4, r3
	mov r3, #0
	ldrsb r3, [r4, r3]
	ldr r4, _080D1EE0  @ =gUnknown_08174B7E
	add r5, r5, r4
	ldrb r4, [r5]
	orr r3, r3, r4
	lsl r3, r3, #8
	add r3, r3, #206
	lsl r3, r3, #16
	lsr r3, r3, #16
	str r7, [sp]
	bl sub_080C6004
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	bl sub_080C6350
_080D1EC4:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
_080D1ECC:
	.4byte gUnknown_03003E74
_080D1ED0:
	.4byte gRam
_080D1ED4:
	.4byte gUnknown_08174B7C
_080D1ED8:
	.4byte 0x00000FB2
_080D1EDC:
	.4byte 0x00000964
_080D1EE0:
	.4byte gUnknown_08174B7E
	THUMB_FUNC_END sub_080D1E5C

	THUMB_FUNC_START sub_080D1EE4
sub_080D1EE4: @ 0x080D1EE4
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080C36D8
	ldr r1, _080D1F08  @ =gRam
	ldr r2, _080D1F0C  @ =0x00000FB2
	add r1, r1, r2
	add r1, r4, r1
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080D2020
	pop {r4}
	pop {r0}
	bx r0
_080D1F08:
	.4byte gRam
_080D1F0C:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080D1EE4

	THUMB_FUNC_START sub_080D1F10
sub_080D1F10: @ 0x080D1F10
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	mov r4, #0
	ldr r3, _080D1F64  @ =gRam
	ldr r1, _080D1F68  @ =0x00000996
	add r0, r3, r1
	ldrb r1, [r0]
	mov r0, #24
	and r0, r0, r1
	cmp r0, #0
	beq _080D1F2A
	mov r4, #3
_080D1F2A:
	ldr r1, _080D1F6C  @ =0x00000F92
	add r0, r3, r1
	add r0, r2, r0
	strb r4, [r0]
	ldr r1, _080D1F70  @ =0x00001627
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D1F5C
	ldr r0, _080D1F74  @ =0x00000F52
	add r1, r3, r0
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D1F78  @ =0x00000F12
	add r0, r3, r1
	add r0, r2, r0
	mov r1, #248
	strb r1, [r0]
	ldr r1, _080D1F7C  @ =0x00000F22
	add r0, r3, r1
	add r0, r2, r0
	mov r1, #240
	strb r1, [r0]
_080D1F5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D1F64:
	.4byte gRam
_080D1F68:
	.4byte 0x00000996
_080D1F6C:
	.4byte 0x00000F92
_080D1F70:
	.4byte 0x00001627
_080D1F74:
	.4byte 0x00000F52
_080D1F78:
	.4byte 0x00000F12
_080D1F7C:
	.4byte 0x00000F22
	THUMB_FUNC_END sub_080D1F10

	THUMB_FUNC_START sub_080D1F80
sub_080D1F80: @ 0x080D1F80
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C99DC
	ldr r5, _080D2004  @ =gRam
	ldr r1, _080D2008  @ =0x00001152
	add r0, r5, r1
	add r1, r4, r0
	ldrb r0, [r1]
	sub r0, r0, #2
	mov r3, #0
	strb r0, [r1]
	ldr r2, _080D200C  @ =0x00001142
	add r0, r5, r2
	add r2, r4, r0
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080D1FC0
	mov r0, #32
	strb r0, [r1]
	strb r3, [r2]
	ldr r1, _080D2010  @ =0x00001052
	add r0, r5, r1
	add r0, r4, r0
	strb r3, [r0]
	ldr r2, _080D2014  @ =0x00000F62
	add r0, r5, r2
	add r0, r4, r0
	strb r3, [r0]
_080D1FC0:
	ldr r3, _080D2010  @ =0x00001052
	add r0, r5, r3
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #7
	and r1, r1, r0
	cmp r1, #0
	bne _080D1FE4
	ldr r1, _080D2014  @ =0x00000F62
	add r0, r5, r1
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #3
	beq _080D1FE4
	add r0, r0, #1
	strb r0, [r1]
_080D1FE4:
	ldr r0, _080D2004  @ =gRam
	ldr r2, _080D2018  @ =0x00000F92
	add r1, r0, r2
	add r1, r4, r1
	ldr r2, _080D201C  @ =gUnknown_08174B88
	ldr r3, _080D2014  @ =0x00000F62
	add r0, r0, r3
	add r0, r4, r0
	ldrb r0, [r0]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D2004:
	.4byte gRam
_080D2008:
	.4byte 0x00001152
_080D200C:
	.4byte 0x00001142
_080D2010:
	.4byte 0x00001052
_080D2014:
	.4byte 0x00000F62
_080D2018:
	.4byte 0x00000F92
_080D201C:
	.4byte gUnknown_08174B88
	THUMB_FUNC_END sub_080D1F80

	THUMB_FUNC_START sub_080D2020
sub_080D2020: @ 0x080D2020
	push {lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r2, r1, #0
	ldr r0, _080D2048  @ =gFlute
	ldrb r0, [r0]
	cmp r0, #1
	bls _080D203C
	ldr r0, _080D204C  @ =gRam
	ldr r3, _080D2050  @ =0x00000FA2
	add r0, r0, r3
	add r0, r1, r0
	mov r1, #0
	strb r1, [r0]
_080D203C:
	add r0, r2, #0
	bl sub_080C3758
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D2048:
	.4byte gFlute
_080D204C:
	.4byte gRam
_080D2050:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080D2020

	THUMB_FUNC_START sub_080D2054
sub_080D2054: @ 0x080D2054
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080D2098
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D2084
	ldr r1, _080D208C  @ =gUnknown_08174B80
	ldr r0, _080D2090  @ =gRam
	ldr r2, _080D2094  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080D2084:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D208C:
	.4byte gUnknown_08174B80
_080D2090:
	.4byte gRam
_080D2094:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D2054

	THUMB_FUNC_START sub_080D2098
sub_080D2098: @ 0x080D2098
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r0, _080D20C8  @ =gRam
	ldr r1, _080D20CC  @ =0x00000F92
	add r0, r0, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsl r1, r1, #5
	ldr r0, _080D20D0  @ =gUnknown_08174B8C
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #4
	bl sub_080C9480
	add r0, r4, #0
	mov r1, #18
	bl sub_080C57F8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D20C8:
	.4byte gRam
_080D20CC:
	.4byte 0x00000F92
_080D20D0:
	.4byte gUnknown_08174B8C
	THUMB_FUNC_END sub_080D2098

	THUMB_FUNC_START sub_080D20D4
sub_080D20D4: @ 0x080D20D4
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r2, _080D2110  @ =gRam
	ldr r0, _080D2114  @ =0x00001172
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r3, _080D2118  @ =0x00001052
	add r1, r2, r3
	add r1, r4, r1
	ldr r3, _080D211C  @ =0x0000165C
	add r0, r2, r3
	ldrh r0, [r0]
	lsr r0, r0, #6
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _080D2134
	ldr r0, _080D2120  @ =gFlute
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080D2124
	add r0, r4, #0
	bl sub_080D26E8
	b _080D2196
_080D2110:
	.4byte gRam
_080D2114:
	.4byte 0x00001172
_080D2118:
	.4byte 0x00001052
_080D211C:
	.4byte 0x0000165C
_080D2120:
	.4byte gFlute
_080D2124:
	ldr r3, _080D2130  @ =0x00000FA2
	add r0, r2, r3
	add r0, r4, r0
	strb r1, [r0]
	b _080D2196
	.byte 0x00
	.byte 0x00
_080D2130:
	.4byte 0x00000FA2
_080D2134:
	mov r3, #0
	ldr r1, _080D215C  @ =0x00001662
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _080D216E
	ldr r0, _080D2160  @ =gFlute
	ldrb r0, [r0]
	cmp r0, #1
	bls _080D216A
	cmp r0, #2
	bne _080D2168
	ldr r1, _080D2164  @ =0x00000F92
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	b _080D216A
_080D215C:
	.4byte 0x00001662
_080D2160:
	.4byte gFlute
_080D2164:
	.4byte 0x00000F92
_080D2168:
	mov r3, #1
_080D216A:
	cmp r3, #0
	beq _080D2182
_080D216E:
	ldr r3, _080D219C  @ =0x00000F92
	add r0, r2, r3
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
	ldr r1, _080D21A0  @ =0x00000F52
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #5
	strb r1, [r0]
_080D2182:
	add r0, r4, #0
	bl sub_080C35A4
	ldr r1, _080D21A4  @ =gRam
	ldr r3, _080D21A8  @ =0x00000ED2
	add r1, r1, r3
	add r1, r4, r1
	ldrb r0, [r1]
	sub r0, r0, #8
	strb r0, [r1]
_080D2196:
	pop {r4}
	pop {r0}
	bx r0
_080D219C:
	.4byte 0x00000F92
_080D21A0:
	.4byte 0x00000F52
_080D21A4:
	.4byte gRam
_080D21A8:
	.4byte 0x00000ED2
	THUMB_FUNC_END sub_080D20D4

	THUMB_FUNC_START sub_080D21AC
sub_080D21AC: @ 0x080D21AC
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080D2250  @ =gRam
	ldr r1, _080D2254  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #3
	beq _080D21DC
	add r0, r4, #0
	bl sub_080D29E4
	ldr r3, _080D2258  @ =0x00000F82
	add r2, r5, r3
	add r2, r4, r2
	ldr r1, _080D225C  @ =0x00000961
	add r0, r5, r1
	ldr r3, _080D2260  @ =0x00000965
	add r1, r5, r3
	ldrb r0, [r0]
	ldrb r1, [r1]
	orr r0, r0, r1
	strb r0, [r2]
_080D21DC:
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D2248
	ldr r1, _080D2258  @ =0x00000F82
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D221C
	ldr r2, _080D2264  @ =0x00000F72
	add r0, r5, r2
	add r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080D221C
	ldr r0, _080D2268  @ =0x00000A3C
	add r3, r5, r0
	ldrh r1, [r3]
	ldr r0, _080D226C  @ =0x0000FFFF
	cmp r1, r0
	bne _080D221C
	ldr r0, _080D2270  @ =0x00000A3E
	add r1, r5, r0
	mov r0, #7
	strb r0, [r1]
	mov r0, #11
	strb r0, [r2]
	ldr r0, _080D2274  @ =0x0000FFF2
	strh r0, [r3]
_080D221C:
	ldr r1, _080D2250  @ =gRam
	ldr r2, _080D2278  @ =0x00000F92
	add r3, r1, r2
	add r3, r4, r3
	ldr r2, _080D227C  @ =0x00000996
	add r0, r1, r2
	ldrb r0, [r0]
	lsr r0, r0, #5
	mov r2, #1
	and r0, r0, r2
	strb r0, [r3]
	ldr r2, _080D2280  @ =gUnknown_08174C0C
	ldr r3, _080D2254  @ =0x00000F52
	add r1, r1, r3
	add r1, r4, r1
	ldrb r0, [r1]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080D2248:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D2250:
	.4byte gRam
_080D2254:
	.4byte 0x00000F52
_080D2258:
	.4byte 0x00000F82
_080D225C:
	.4byte 0x00000961
_080D2260:
	.4byte 0x00000965
_080D2264:
	.4byte 0x00000F72
_080D2268:
	.4byte 0x00000A3C
_080D226C:
	.4byte 0x0000FFFF
_080D2270:
	.4byte 0x00000A3E
_080D2274:
	.4byte 0x0000FFF2
_080D2278:
	.4byte 0x00000F92
_080D227C:
	.4byte 0x00000996
_080D2280:
	.4byte gUnknown_08174C0C
	THUMB_FUNC_END sub_080D21AC

	THUMB_FUNC_START sub_080D2284
sub_080D2284: @ 0x080D2284
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r5, #1
	ldr r0, _080D22F8  @ =gFlute
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080D22A2
	add r0, r4, #0
	bl sub_080D24F4
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D22A2
	mov r5, #0
_080D22A2:
	ldr r2, _080D22FC  @ =gRam
	cmp r5, #0
	beq _080D22DC
	ldr r0, _080D2300  @ =0x00000F52
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080D2304  @ =0x00000FB2
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080D2308  @ =0x00001627
	add r1, r2, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D230C  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #176
	strb r1, [r0]
	ldr r0, _080D2310  @ =0x00001770
	add r1, r2, r0
	mov r0, #1
	strb r0, [r1]
_080D22DC:
	ldr r1, _080D230C  @ =0x00000FC2
	add r0, r2, r1
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080D22F2
	mov r0, #25
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080D2654
_080D22F2:
	pop {r4,r5}
	pop {r0}
	bx r0
_080D22F8:
	.4byte gFlute
_080D22FC:
	.4byte gRam
_080D2300:
	.4byte 0x00000F52
_080D2304:
	.4byte 0x00000FB2
_080D2308:
	.4byte 0x00001627
_080D230C:
	.4byte 0x00000FC2
_080D2310:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080D2284

	THUMB_FUNC_START sub_080D2314
sub_080D2314: @ 0x080D2314
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080D239C  @ =gRam
	ldr r0, _080D23A0  @ =0x00001770
	add r1, r4, r0
	mov r0, #1
	strb r0, [r1]
	ldr r1, _080D23A4  @ =0x00000FC2
	add r0, r4, r1
	add r0, r5, r0
	ldrb r2, [r0]
	cmp r2, #0
	bne _080D2394
	ldr r0, _080D23A8  @ =0x000009B5
	add r1, r4, r0
	mov r0, #2
	strb r0, [r1]
	ldr r0, _080D23AC  @ =0x000009D4
	add r1, r4, r0
	mov r0, #48
	strb r0, [r1]
	ldr r1, _080D23B0  @ =0x00000CF8
	add r0, r4, r1
	strh r2, [r0]
	add r1, r1, #2
	add r0, r4, r1
	strh r2, [r0]
	ldr r2, _080D23B4  @ =0x0000051E
	add r1, r4, r2
	mov r0, #185
	lsl r0, r0, #6
	strh r0, [r1]
	ldr r0, _080D23B8  @ =0x0000051A
	add r1, r4, r0
	mov r0, #63
	strh r0, [r1]
	ldr r1, _080D23BC  @ =0x00000998
	add r0, r4, r1
	mov r1, #15
	strb r1, [r0]
	ldr r2, _080D23C0  @ =0x00000999
	add r0, r4, r2
	strb r1, [r0]
	bl sub_081335FC
	ldr r0, _080D23C4  @ =0x00000F52
	add r1, r4, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r2, _080D23C8  @ =0x00000A3E
	add r1, r4, r2
	mov r0, #255
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #76
	bl sub_080CF0AC
	ldr r0, _080D23CC  @ =0x00000A3C
	add r1, r4, r0
	ldr r0, _080D23D0  @ =0x0000FFF3
	strh r0, [r1]
_080D2394:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D239C:
	.4byte gRam
_080D23A0:
	.4byte 0x00001770
_080D23A4:
	.4byte 0x00000FC2
_080D23A8:
	.4byte 0x000009B5
_080D23AC:
	.4byte 0x000009D4
_080D23B0:
	.4byte 0x00000CF8
_080D23B4:
	.4byte 0x0000051E
_080D23B8:
	.4byte 0x0000051A
_080D23BC:
	.4byte 0x00000998
_080D23C0:
	.4byte 0x00000999
_080D23C4:
	.4byte 0x00000F52
_080D23C8:
	.4byte 0x00000A3E
_080D23CC:
	.4byte 0x00000A3C
_080D23D0:
	.4byte 0x0000FFF3
	THUMB_FUNC_END sub_080D2314

	THUMB_FUNC_START sub_080D23D4
sub_080D23D4: @ 0x080D23D4
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r4, _080D242C  @ =gRam
	ldr r1, _080D2430  @ =0x00000A4E
	add r0, r4, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #15
	bne _080D2424
	ldr r1, _080D2434  @ =gUnknown_03003E70
	mov r0, #1
	strb r0, [r1]
	ldr r1, _080D2438  @ =0x00000545
	add r0, r4, r1
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _080D2424
	ldr r0, _080D243C  @ =0x00000F52
	add r1, r4, r0
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080D2440  @ =0x00000A3C
	add r1, r4, r0
	ldr r0, _080D2444  @ =0x0000FFF2
	strh r0, [r1]
	mov r0, #75
	mov r1, #0
	bl sub_0812A324
	ldr r0, _080D2448  @ =0x00001770
	add r1, r4, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D2424:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D242C:
	.4byte gRam
_080D2430:
	.4byte 0x00000A4E
_080D2434:
	.4byte gUnknown_03003E70
_080D2438:
	.4byte 0x00000545
_080D243C:
	.4byte 0x00000F52
_080D2440:
	.4byte 0x00000A3C
_080D2444:
	.4byte 0x0000FFF2
_080D2448:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080D23D4

	THUMB_FUNC_START sub_080D244C
sub_080D244C: @ 0x080D244C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r8, r5
	ldr r6, _080D24B0  @ =gRam
	ldr r1, _080D24B4  @ =0x00000FC2
	add r0, r6, r1
	add r7, r5, r0
	ldrb r0, [r7]
	cmp r0, #0
	bne _080D24E0
	ldr r3, _080D24B8  @ =0x00000F62
	add r0, r6, r3
	add r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #2
	bls _080D247A
	add r0, r5, #0
	mov r1, #76
	bl sub_080CF0AC
_080D247A:
	ldrb r2, [r4]
	add r0, r2, #1
	strb r0, [r4]
	ldr r0, _080D24BC  @ =gUnknown_08174C44
	add r0, r2, r0
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _080D24D0
	ldr r0, _080D24C0  @ =0x00000A3C
	add r1, r6, r0
	mov r2, #0
	ldr r0, _080D24C4  @ =0x0000FFF3
	strh r0, [r1]
	ldr r3, _080D24C8  @ =0x00000F52
	add r1, r6, r3
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D24CC  @ =0x00001770
	add r0, r6, r1
	strb r2, [r0]
	b _080D24E0
	.byte 0x00
	.byte 0x00
_080D24B0:
	.4byte gRam
_080D24B4:
	.4byte 0x00000FC2
_080D24B8:
	.4byte 0x00000F62
_080D24BC:
	.4byte gUnknown_08174C44
_080D24C0:
	.4byte 0x00000A3C
_080D24C4:
	.4byte 0x0000FFF3
_080D24C8:
	.4byte 0x00000F52
_080D24CC:
	.4byte 0x00001770
_080D24D0:
	ldr r3, _080D24EC  @ =0x00000F92
	add r0, r6, r3
	add r0, r0, r8
	strb r1, [r0]
	ldr r0, _080D24F0  @ =gUnknown_08174C58
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r7]
_080D24E0:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D24EC:
	.4byte 0x00000F92
_080D24F0:
	.4byte gUnknown_08174C58
	THUMB_FUNC_END sub_080D244C

	THUMB_FUNC_START sub_080D24F4
sub_080D24F4: @ 0x080D24F4
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080D25A4  @ =gRam
	ldr r2, _080D25A8  @ =0x00000EE2
	add r1, r3, r2
	add r1, r0, r1
	ldrb r1, [r1]
	mov r4, #150
	lsl r4, r4, #4
	add r6, r3, r4
	strb r1, [r6]
	add r2, r2, #32
	add r1, r3, r2
	add r1, r0, r1
	ldrb r2, [r1]
	add r4, r4, #1
	add r1, r3, r4
	strb r2, [r1]
	ldr r2, _080D25AC  @ =0x00000ED2
	add r1, r3, r2
	add r1, r0, r1
	ldrb r1, [r1]
	ldr r2, _080D25B0  @ =0x00000964
	add r4, r3, r2
	strb r1, [r4]
	ldr r2, _080D25B4  @ =0x00000EF2
	add r1, r3, r2
	add r0, r0, r1
	ldrb r1, [r0]
	ldr r2, _080D25B8  @ =0x00000965
	add r0, r3, r2
	strb r1, [r0]
	ldrh r0, [r4]
	add r5, r0, #0
	sub r5, r5, #16
	strh r5, [r4]
	ldr r1, _080D25BC  @ =0x000016C4
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080D25C0  @ =0x000016C5
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	ldrh r0, [r6]
	sub r1, r1, r0
	lsl r1, r1, #16
	lsr r2, r1, #16
	cmp r1, #0
	bge _080D2564
	mvn r0, r2
	lsl r0, r0, #16
	lsr r2, r0, #16
_080D2564:
	strh r2, [r6]
	mov r1, #182
	lsl r1, r1, #5
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080D25C4  @ =0x000016C1
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	sub r1, r1, r5
	lsl r1, r1, #16
	lsr r2, r1, #16
	cmp r1, #0
	bge _080D258C
	mvn r0, r2
	lsl r0, r0, #16
	lsr r2, r0, #16
_080D258C:
	strh r2, [r4]
	ldrh r0, [r6]
	cmp r0, #47
	bhi _080D259A
	mov r0, #0
	cmp r2, #47
	bls _080D259C
_080D259A:
	mov r0, #1
_080D259C:
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080D25A4:
	.4byte gRam
_080D25A8:
	.4byte 0x00000EE2
_080D25AC:
	.4byte 0x00000ED2
_080D25B0:
	.4byte 0x00000964
_080D25B4:
	.4byte 0x00000EF2
_080D25B8:
	.4byte 0x00000965
_080D25BC:
	.4byte 0x000016C4
_080D25C0:
	.4byte 0x000016C5
_080D25C4:
	.4byte 0x000016C1
	THUMB_FUNC_END sub_080D24F4

	THUMB_FUNC_START sub_080D25C8
sub_080D25C8: @ 0x080D25C8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl sub_080C58F0
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D2632
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r1, _080D2638  @ =gRam
	ldr r2, _080D263C  @ =0x00000FC2
	add r0, r1, r2
	add r0, r4, r0
	ldrb r2, [r0]
	cmp r2, #0
	bne _080D2604
	ldr r3, _080D2640  @ =0x00000FA2
	add r0, r1, r3
	add r0, r4, r0
	strb r2, [r0]
_080D2604:
	ldr r4, _080D2644  @ =0x00000996
	add r0, r1, r4
	ldrb r4, [r0]
	mov r0, #1
	and r0, r0, r4
	cmp r0, #0
	bne _080D2632
	ldr r0, _080D2648  @ =0x00000F22
	add r2, r1, r0
	add r2, r5, r2
	ldr r3, _080D264C  @ =gUnknown_08174D2C
	lsr r0, r4, #5
	ldr r4, _080D2650  @ =0x000015DC
	add r1, r1, r4
	ldrb r1, [r1]
	eor r0, r0, r1
	mov r1, #1
	and r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	ldrb r1, [r2]
	add r0, r0, r1
	strb r0, [r2]
_080D2632:
	pop {r4,r5}
	pop {r0}
	bx r0
_080D2638:
	.4byte gRam
_080D263C:
	.4byte 0x00000FC2
_080D2640:
	.4byte 0x00000FA2
_080D2644:
	.4byte 0x00000996
_080D2648:
	.4byte 0x00000F22
_080D264C:
	.4byte gUnknown_08174D2C
_080D2650:
	.4byte 0x000015DC
	THUMB_FUNC_END sub_080D25C8

	THUMB_FUNC_START sub_080D2654
sub_080D2654: @ 0x080D2654
	push {r4,r5,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #46
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080D26C6
	ldr r2, _080D26CC  @ =gRam
	mov r1, #150
	lsl r1, r1, #4
	add r0, r2, r1
	ldrh r1, [r0]
	add r1, r1, #4
	ldr r3, _080D26D0  @ =0x00000964
	add r0, r2, r3
	ldrh r3, [r0]
	add r3, r3, #4
	ldr r5, _080D26D4  @ =0x00000EE2
	add r0, r2, r5
	add r0, r4, r0
	strb r1, [r0]
	add r5, r5, #32
	add r0, r2, r5
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r1, _080D26D8  @ =0x00000ED2
	add r0, r2, r1
	add r0, r4, r0
	strb r3, [r0]
	sub r5, r5, #16
	add r0, r2, r5
	add r0, r4, r0
	lsr r3, r3, #8
	strb r3, [r0]
	ldr r1, _080D26DC  @ =0x00001082
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	ldr r3, _080D26E0  @ =0x00001152
	add r0, r2, r3
	add r0, r4, r0
	mov r1, #8
	strb r1, [r0]
	add r5, r5, #208
	add r0, r2, r5
	add r0, r4, r0
	mov r1, #96
	strb r1, [r0]
	ldr r0, _080D26E4  @ =0x00001172
	add r2, r2, r0
	add r2, r4, r2
	strb r1, [r2]
_080D26C6:
	pop {r4,r5}
	pop {r0}
	bx r0
_080D26CC:
	.4byte gRam
_080D26D0:
	.4byte 0x00000964
_080D26D4:
	.4byte 0x00000EE2
_080D26D8:
	.4byte 0x00000ED2
_080D26DC:
	.4byte 0x00001082
_080D26E0:
	.4byte 0x00001152
_080D26E4:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080D2654

	THUMB_FUNC_START sub_080D26E8
sub_080D26E8: @ 0x080D26E8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080D26FC  @ =gRam
	ldr r2, _080D2700  @ =0x00000EE2
	add r1, r1, r2
	add r0, r0, r1
	ldrb r1, [r0]
	add r1, r1, #7
	strb r1, [r0]
	bx lr
_080D26FC:
	.4byte gRam
_080D2700:
	.4byte 0x00000EE2
	THUMB_FUNC_END sub_080D26E8

	THUMB_FUNC_START sub_080D2704
sub_080D2704: @ 0x080D2704
	push {lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r0, _080D2720  @ =gRam
	ldr r2, _080D2724  @ =0x00001082
	add r0, r0, r2
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D2728
	cmp r0, #1
	beq _080D2730
	b _080D2736
	.byte 0x00
	.byte 0x00
_080D2720:
	.4byte gRam
_080D2724:
	.4byte 0x00001082
_080D2728:
	add r0, r1, #0
	bl sub_080D273C
	b _080D2736
_080D2730:
	add r0, r1, #0
	bl sub_080D25C8
_080D2736:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D2704

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D273C
sub_080D273C: @ 0x080D273C
	push {lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r0, _080D2758  @ =gRam
	ldr r2, _080D275C  @ =0x00001052
	add r0, r0, r2
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D2760
	cmp r0, #1
	beq _080D2768
	b _080D276E
	.byte 0x00
	.byte 0x00
_080D2758:
	.4byte gRam
_080D275C:
	.4byte 0x00001052
_080D2760:
	add r0, r1, #0
	bl sub_080D21AC
	b _080D276E
_080D2768:
	add r0, r1, #0
	bl sub_080D27FC
_080D276E:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D273C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D2774
sub_080D2774: @ 0x080D2774
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080D27AC  @ =gRam
	ldr r1, _080D27B0  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _080D27A4
	bl sub_08133620
	ldr r1, _080D27B4  @ =0x00000CF8
	add r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _080D27A4
	ldr r0, _080D27B8  @ =0x00000F52
	add r1, r4, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D27A4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D27AC:
	.4byte gRam
_080D27B0:
	.4byte 0x00000996
_080D27B4:
	.4byte 0x00000CF8
_080D27B8:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D2774

	THUMB_FUNC_START sub_080D27BC
sub_080D27BC: @ 0x080D27BC
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	bl sub_08131E24
	bl sub_08133600
	ldr r1, _080D27EC  @ =gRam
	ldr r0, _080D27F0  @ =0x0000051E
	add r2, r1, r0
	mov r3, #0
	mov r0, #0
	strh r0, [r2]
	ldr r2, _080D27F4  @ =0x00000FA2
	add r0, r1, r2
	add r4, r4, r0
	strb r3, [r4]
	ldr r0, _080D27F8  @ =0x00001770
	add r1, r1, r0
	strb r3, [r1]
	pop {r4}
	pop {r0}
	bx r0
_080D27EC:
	.4byte gRam
_080D27F0:
	.4byte 0x0000051E
_080D27F4:
	.4byte 0x00000FA2
_080D27F8:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080D27BC

	THUMB_FUNC_START sub_080D27FC
sub_080D27FC: @ 0x080D27FC
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080D2A34
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D282C
	ldr r1, _080D2834  @ =gUnknown_08174C1C
	ldr r0, _080D2838  @ =gRam
	ldr r2, _080D283C  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080D282C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D2834:
	.4byte gUnknown_08174C1C
_080D2838:
	.4byte gRam
_080D283C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D27FC

	THUMB_FUNC_START sub_080D2840
sub_080D2840: @ 0x080D2840
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r0, _080D286C  @ =gShovel
	ldrb r0, [r0]
	mov r1, #1
	and r1, r1, r0
	ldr r0, _080D2870  @ =gFlute
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D285A
	mov r1, #3
	and r1, r1, r0
_080D285A:
	ldr r0, _080D2874  @ =gUnknown_08174C34
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
_080D286C:
	.4byte gShovel
_080D2870:
	.4byte gFlute
_080D2874:
	.4byte gUnknown_08174C34
	THUMB_FUNC_END sub_080D2840

	THUMB_FUNC_START sub_080D2878
sub_080D2878: @ 0x080D2878
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	mov r1, #232
	mov r2, sp
	bl sub_080C9164
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D289E
	ldr r1, _080D28A8  @ =gRam
	ldr r0, _080D28AC  @ =0x00000F52
	add r1, r1, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D289E:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D28A8:
	.4byte gRam
_080D28AC:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D2878

	THUMB_FUNC_START sub_080D28B0
sub_080D28B0: @ 0x080D28B0
	push {lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #235
	mov r2, sp
	bl sub_080C9164
	add sp, sp, #4
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D28B0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D28C8
sub_080D28C8: @ 0x080D28C8
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080D2900  @ =gRam
	ldr r1, _080D2904  @ =0x00000F92
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #236
	mov r2, sp
	bl sub_080C9164
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D28F6
	ldr r1, _080D2908  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
_080D28F6:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D2900:
	.4byte gRam
_080D2904:
	.4byte 0x00000F92
_080D2908:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D28C8

	THUMB_FUNC_START sub_080D290C
sub_080D290C: @ 0x080D290C
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080D2920  @ =gRam
	ldr r2, _080D2924  @ =0x00000F92
	add r1, r1, r2
	add r0, r0, r1
	mov r1, #3
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080D2920:
	.4byte gRam
_080D2924:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080D290C

	THUMB_FUNC_START sub_080D2928
sub_080D2928: @ 0x080D2928
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080D2954  @ =gRam
	ldr r1, _080D2958  @ =0x00001AE2
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D2960
	add r0, r4, #0
	mov r1, #234
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080D295C  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	b _080D2976
	.byte 0x00
	.byte 0x00
_080D2954:
	.4byte gRam
_080D2958:
	.4byte 0x00001AE2
_080D295C:
	.4byte 0x00000F52
_080D2960:
	add r0, r4, #0
	mov r1, #233
	mov r2, sp
	bl sub_080C9564
	ldr r0, _080D2980  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D2976:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D2980:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D2928

	THUMB_FUNC_START sub_080D2984
sub_080D2984: @ 0x080D2984
	push {r4-r6,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r5, _080D29AC  @ =gRam
	ldr r1, _080D29B0  @ =0x00001776
	add r0, r5, r1
	mov r6, #0
	strb r6, [r0]
	mov r0, #19
	bl sub_080A1588
	ldr r0, _080D29B4  @ =0x00000F52
	add r5, r5, r0
	add r4, r4, r5
	strb r6, [r4]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D29AC:
	.4byte gRam
_080D29B0:
	.4byte 0x00001776
_080D29B4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D2984

	THUMB_FUNC_START sub_080D29B8
sub_080D29B8: @ 0x080D29B8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D29D8  @ =gRam
	ldr r3, _080D29DC  @ =0x00000F92
	add r1, r2, r3
	add r0, r0, r1
	mov r1, #3
	strb r1, [r0]
	ldr r0, _080D29E0  @ =0x00001662
	add r2, r2, r0
	ldrb r1, [r2]
	mov r0, #8
	orr r0, r0, r1
	strb r0, [r2]
	bx lr
	.byte 0x00
	.byte 0x00
_080D29D8:
	.4byte gRam
_080D29DC:
	.4byte 0x00000F92
_080D29E0:
	.4byte 0x00001662
	THUMB_FUNC_END sub_080D29B8

	THUMB_FUNC_START sub_080D29E4
sub_080D29E4: @ 0x080D29E4
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r0, #16
	bl sub_080CF388
	ldr r2, _080D2A24  @ =gRam
	ldr r1, _080D2A28  @ =0x00000FB2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r0, _080D2A2C  @ =0x00000F92
	add r2, r2, r0
	add r2, r4, r2
	lsl r1, r1, #1
	ldrb r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #5
	ldr r0, _080D2A30  @ =gUnknown_08174C6C
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #4
	bl sub_080C9480
	mov r0, #4
	bl sub_080C64A0
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D2A24:
	.4byte gRam
_080D2A28:
	.4byte 0x00000FB2
_080D2A2C:
	.4byte 0x00000F92
_080D2A30:
	.4byte gUnknown_08174C6C
	THUMB_FUNC_END sub_080D29E4

	THUMB_FUNC_START sub_080D2A34
sub_080D2A34: @ 0x080D2A34
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080D2A5C  @ =gRam
	ldr r2, _080D2A60  @ =0x0000096C
	add r3, r1, r2
	mov r2, #2
	strb r2, [r3]
	ldr r2, _080D2A64  @ =0x00000F92
	add r1, r1, r2
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #4
	ldr r2, _080D2A68  @ =gUnknown_08174CEC
	add r1, r1, r2
	bl sub_080C94D0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D2A5C:
	.4byte gRam
_080D2A60:
	.4byte 0x0000096C
_080D2A64:
	.4byte 0x00000F92
_080D2A68:
	.4byte gUnknown_08174CEC
	THUMB_FUNC_END sub_080D2A34

	THUMB_FUNC_START sub_080D2A6C
sub_080D2A6C: @ 0x080D2A6C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080D2AA4  @ =gRam
	ldr r1, _080D2AA8  @ =0x00000EE2
	add r5, r3, r1
	add r5, r0, r5
	ldrb r2, [r5]
	add r1, r1, #32
	add r4, r3, r1
	add r4, r0, r4
	ldrb r1, [r4]
	lsl r1, r1, #8
	add r2, r2, r1
	sub r2, r2, #8
	ldr r1, _080D2AAC  @ =0x00001172
	add r3, r3, r1
	add r0, r0, r3
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	strb r2, [r5]
	lsr r2, r2, #8
	strb r2, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D2AA4:
	.4byte gRam
_080D2AA8:
	.4byte 0x00000EE2
_080D2AAC:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080D2A6C

	THUMB_FUNC_START sub_080D2AB0
sub_080D2AB0: @ 0x080D2AB0
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r4, #0
	bl sub_080C632C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D2B4A
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D2B4A
	bl sub_0809E3CC
	cmp r0, #0
	bne _080D2B4A
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _080D2B38
	ldr r3, _080D2B28  @ =gRam
	ldr r1, _080D2B2C  @ =0x00000F62
	add r0, r3, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D2B4A
	ldr r1, _080D2B30  @ =0x0000188F
	add r0, r3, r1
	strb r2, [r0]
	sub r1, r1, #254
	add r0, r3, r1
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080D2B4A
	ldr r1, _080D2B34  @ =0x00000FA2
	add r0, r3, r1
	add r0, r4, r0
	strb r2, [r0]
	add r0, r4, #0
	bl sub_080D2B60
	add r0, r4, #0
	bl sub_080CF6C0
	b _080D2B4A
	.byte 0x00
	.byte 0x00
_080D2B28:
	.4byte gRam
_080D2B2C:
	.4byte 0x00000F62
_080D2B30:
	.4byte 0x0000188F
_080D2B34:
	.4byte 0x00000FA2
_080D2B38:
	ldr r0, _080D2B54  @ =gRam
	ldr r2, _080D2B58  @ =0x0000188F
	add r1, r0, r2
	mov r2, #1
	strb r2, [r1]
	ldr r1, _080D2B5C  @ =0x00000F62
	add r0, r0, r1
	add r0, r5, r0
	strb r2, [r0]
_080D2B4A:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D2B54:
	.4byte gRam
_080D2B58:
	.4byte 0x0000188F
_080D2B5C:
	.4byte 0x00000F62
	THUMB_FUNC_END sub_080D2AB0

	THUMB_FUNC_START sub_080D2B60
sub_080D2B60: @ 0x080D2B60
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	ldr r1, _080D2BA8  @ =gRam
	ldr r2, _080D2BAC  @ =0x00000ECD
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D2C32
	mov r3, #0
	cmp r0, #3
	bls _080D2B8E
	mov r3, #1
	ldr r4, _080D2BB0  @ =0x00000ECE
	add r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D2B8E
	mov r3, #2
_080D2B8E:
	ldr r1, _080D2BA8  @ =gRam
	ldr r0, _080D2BB4  @ =0x000015F9
	add r2, r1, r0
	mov r0, #3
	strb r0, [r2]
	ldr r4, _080D2BB8  @ =0x000015FA
	add r0, r1, r4
	strb r3, [r0]
	add r5, r1, #0
	add r6, r2, #0
	mov r9, r0
	mov r7, #32
	b _080D2C14
_080D2BA8:
	.4byte gRam
_080D2BAC:
	.4byte 0x00000ECD
_080D2BB0:
	.4byte 0x00000ECE
_080D2BB4:
	.4byte 0x000015F9
_080D2BB8:
	.4byte 0x000015FA
_080D2BBC:
	mov r0, r8
	mov r1, #94
	bl sub_080CF140
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r0, _080D2C50  @ =0x00000F22
	add r1, r5, r0
	add r1, r4, r1
	ldr r2, _080D2C54  @ =gUnknown_08174D30
	ldrb r0, [r6]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080D2C58  @ =0x00000F12
	add r1, r5, r2
	add r1, r4, r1
	ldr r2, _080D2C5C  @ =gUnknown_08174D34
	ldrb r0, [r6]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080D2C60  @ =0x00000D74
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	ldr r2, _080D2C64  @ =0x000010E2
	add r0, r5, r2
	add r0, r4, r0
	strb r7, [r0]
	ldr r1, _080D2C68  @ =0x000010B2
	add r0, r5, r1
	add r0, r4, r0
	strb r7, [r0]
	add r2, r2, #112
	add r0, r5, r2
	add r0, r4, r0
	strb r7, [r0]
	ldrb r0, [r6]
	sub r0, r0, #1
	strb r0, [r6]
_080D2C14:
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _080D2C32
	ldr r0, _080D2C6C  @ =gUnknown_08174D38
	mov r4, r9
	ldrb r1, [r4]
	add r1, r1, r0
	ldrb r0, [r1]
	mov r1, r8
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	bge _080D2BBC
_080D2C32:
	ldr r0, _080D2C70  @ =gRam
	ldr r2, _080D2C74  @ =0x00000ECD
	add r1, r0, r2
	mov r2, #0
	strb r2, [r1]
	ldr r4, _080D2C78  @ =0x00000ECE
	add r0, r0, r4
	strb r2, [r0]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D2C50:
	.4byte 0x00000F22
_080D2C54:
	.4byte gUnknown_08174D30
_080D2C58:
	.4byte 0x00000F12
_080D2C5C:
	.4byte gUnknown_08174D34
_080D2C60:
	.4byte 0x00000D74
_080D2C64:
	.4byte 0x000010E2
_080D2C68:
	.4byte 0x000010B2
_080D2C6C:
	.4byte gUnknown_08174D38
_080D2C70:
	.4byte gRam
_080D2C74:
	.4byte 0x00000ECD
_080D2C78:
	.4byte 0x00000ECE
	THUMB_FUNC_END sub_080D2B60

	THUMB_FUNC_START sub_080D2C7C
sub_080D2C7C: @ 0x080D2C7C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r0, _080D2CBC  @ =gUnknown_020022D8
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	bne _080D2CCC
	ldr r1, _080D2CC0  @ =gRam
	ldr r0, _080D2CC4  @ =0x00000EE2
	add r4, r1, r0
	add r4, r5, r4
	ldrb r2, [r4]
	add r0, r0, #32
	add r3, r1, r0
	add r3, r5, r3
	ldrb r0, [r3]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r2, r2, #8
	ldr r0, _080D2CC8  @ =0x00001172
	add r1, r1, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	strb r2, [r4]
	lsr r2, r2, #8
	strb r2, [r3]
	b _080D2CD8
	.byte 0x00
	.byte 0x00
_080D2CBC:
	.4byte gUnknown_020022D8
_080D2CC0:
	.4byte gRam
_080D2CC4:
	.4byte 0x00000EE2
_080D2CC8:
	.4byte 0x00001172
_080D2CCC:
	ldr r0, _080D2CE0  @ =gRam
	ldr r1, _080D2CE4  @ =0x00000FA2
	add r0, r0, r1
	add r0, r5, r0
	mov r1, #0
	strb r1, [r0]
_080D2CD8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D2CE0:
	.4byte gRam
_080D2CE4:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080D2C7C

	THUMB_FUNC_START sub_080D2CE8
sub_080D2CE8: @ 0x080D2CE8
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r4, #0
	bl sub_080C632C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D2DCE
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D2DCE
	bl sub_0809E3CC
	cmp r0, #0
	bne _080D2DCE
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _080D2DBC
	ldr r5, _080D2D98  @ =gRam
	ldr r1, _080D2D9C  @ =0x00000F62
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D2DCE
	ldr r2, _080D2DA0  @ =0x0000188F
	add r0, r5, r2
	strb r6, [r0]
	ldr r1, _080D2DA4  @ =0x00001791
	add r0, r5, r1
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080D2DCE
	add r0, r4, #0
	mov r1, #109
	bl sub_080CF0AC
	bl sub_0808F1C4
	add r0, r4, #0
	bl sub_080F4CB8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D2DA8  @ =0x00000EE2
	add r1, r5, r2
	add r2, r0, r1
	add r1, r4, r1
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r2, _080D2DAC  @ =0x00000F02
	add r1, r5, r2
	add r2, r0, r1
	add r1, r4, r1
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r2, _080D2DB0  @ =0x00000ED2
	add r1, r5, r2
	add r2, r0, r1
	add r1, r4, r1
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r2, _080D2DB4  @ =0x00000EF2
	add r1, r5, r2
	add r0, r0, r1
	add r1, r4, r1
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D2DB8  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	strb r6, [r0]
	b _080D2DCE
_080D2D98:
	.4byte gRam
_080D2D9C:
	.4byte 0x00000F62
_080D2DA0:
	.4byte 0x0000188F
_080D2DA4:
	.4byte 0x00001791
_080D2DA8:
	.4byte 0x00000EE2
_080D2DAC:
	.4byte 0x00000F02
_080D2DB0:
	.4byte 0x00000ED2
_080D2DB4:
	.4byte 0x00000EF2
_080D2DB8:
	.4byte 0x00000FA2
_080D2DBC:
	ldr r0, _080D2DD8  @ =gRam
	ldr r2, _080D2DDC  @ =0x0000188F
	add r1, r0, r2
	mov r2, #1
	strb r2, [r1]
	ldr r1, _080D2DE0  @ =0x00000F62
	add r0, r0, r1
	add r0, r5, r0
	strb r2, [r0]
_080D2DCE:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D2DD8:
	.4byte gRam
_080D2DDC:
	.4byte 0x0000188F
_080D2DE0:
	.4byte 0x00000F62
	THUMB_FUNC_END sub_080D2CE8

	THUMB_FUNC_START sub_080D2DE4
sub_080D2DE4: @ 0x080D2DE4
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r2, r4, #0
	ldr r6, _080D2E6C  @ =gRam
	ldr r0, _080D2E70  @ =0x00001172
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D2E74  @ =0x0000165C
	add r0, r6, r1
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _080D2EB0
	add r0, r4, #0
	bl sub_080D3F74
	ldr r0, _080D2E78  @ =0x00001662
	add r7, r6, r0
	ldrb r1, [r7]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _080D2E8C
	ldr r0, _080D2E7C  @ =0x00000EE2
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #2
	strb r0, [r1]
	ldr r0, _080D2E80  @ =0x00000ED2
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	sub r0, r0, #3
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080D3530
	add r5, r0, #0
	lsl r0, r5, #24
	lsr r0, r0, #24
	bl sub_080D3F74
	ldr r1, _080D2E84  @ =0x00001062
	add r0, r6, r1
	add r1, r4, r0
	strb r5, [r1]
	add r0, r5, r0
	strb r4, [r0]
	ldrb r1, [r7]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D2EDE
	ldr r1, _080D2E88  @ =0x00000F52
	add r0, r6, r1
	add r1, r4, r0
	mov r2, #5
	strb r2, [r1]
	add r0, r5, r0
	strb r2, [r0]
	b _080D2EDE
	.byte 0x00
	.byte 0x00
_080D2E6C:
	.4byte gRam
_080D2E70:
	.4byte 0x00001172
_080D2E74:
	.4byte 0x0000165C
_080D2E78:
	.4byte 0x00001662
_080D2E7C:
	.4byte 0x00000EE2
_080D2E80:
	.4byte 0x00000ED2
_080D2E84:
	.4byte 0x00001062
_080D2E88:
	.4byte 0x00000F52
_080D2E8C:
	ldr r0, _080D2EA8  @ =0x00000EE2
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #2
	strb r0, [r1]
	ldr r0, _080D2EAC  @ =0x00000ED2
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	sub r0, r0, #3
	strb r0, [r1]
	b _080D2EDE
	.byte 0x00
	.byte 0x00
_080D2EA8:
	.4byte 0x00000EE2
_080D2EAC:
	.4byte 0x00000ED2
_080D2EB0:
	ldr r1, _080D2EC8  @ =0x00001662
	add r0, r6, r1
	ldrh r1, [r0]
	ldr r0, _080D2ECC  @ =0x0000FF20
	and r0, r0, r1
	cmp r0, #0
	beq _080D2ED4
	ldr r1, _080D2ED0  @ =0x00000FA2
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #0
	b _080D2EDC
_080D2EC8:
	.4byte 0x00001662
_080D2ECC:
	.4byte 0x0000FF20
_080D2ED0:
	.4byte 0x00000FA2
_080D2ED4:
	ldr r1, _080D2EE4  @ =0x00001052
	add r0, r6, r1
	add r0, r2, r0
	mov r1, #2
_080D2EDC:
	strb r1, [r0]
_080D2EDE:
	pop {r4-r7}
	pop {r0}
	bx r0
_080D2EE4:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080D2DE4

	THUMB_FUNC_START sub_080D2EE8
sub_080D2EE8: @ 0x080D2EE8
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	add r0, r4, #0
	bl Sprite3_Move
	ldr r3, _080D2F48  @ =gRam
	ldr r0, _080D2F4C  @ =0x00000F92
	add r2, r3, r0
	add r2, r4, r2
	ldr r1, _080D2F50  @ =0x00000996
	add r0, r3, r1
	ldrb r0, [r0]
	lsr r0, r0, #3
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	ldr r1, _080D2F54  @ =0x00000FC2
	add r0, r3, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D2F8A
	sub r1, r1, #96
	add r0, r3, r1
	add r0, r4, r0
	ldrb r2, [r0]
	add r1, r2, #1
	strb r1, [r0]
	ldr r0, _080D2F58  @ =gUnknown_08174D54
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r0, _080D2F5C  @ =gUnknown_08174D56
	add r2, r2, r0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D2F64
	ldr r0, _080D2F60  @ =0x00000F52
	add r1, r3, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	b _080D2F88
	.byte 0x00
	.byte 0x00
_080D2F48:
	.4byte gRam
_080D2F4C:
	.4byte 0x00000F92
_080D2F50:
	.4byte 0x00000996
_080D2F54:
	.4byte 0x00000FC2
_080D2F58:
	.4byte gUnknown_08174D54
_080D2F5C:
	.4byte gUnknown_08174D56
_080D2F60:
	.4byte 0x00000F52
_080D2F64:
	ldr r4, _080D2F90  @ =0x00000FB2
	add r0, r3, r4
	add r0, r6, r0
	strb r1, [r0]
	ldr r0, _080D2F94  @ =0x00000F22
	add r1, r3, r0
	add r1, r6, r1
	ldr r0, _080D2F98  @ =gUnknown_08174D59
	ldrb r2, [r2]
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	sub r4, r4, #160
	add r1, r3, r4
	add r1, r6, r1
	ldr r0, _080D2F9C  @ =gUnknown_08174D5D
	add r2, r2, r0
	ldrb r0, [r2]
_080D2F88:
	strb r0, [r1]
_080D2F8A:
	pop {r4-r6}
	pop {r0}
	bx r0
_080D2F90:
	.4byte 0x00000FB2
_080D2F94:
	.4byte 0x00000F22
_080D2F98:
	.4byte gUnknown_08174D59
_080D2F9C:
	.4byte gUnknown_08174D5D
	THUMB_FUNC_END sub_080D2EE8

	THUMB_FUNC_START sub_080D2FA0
sub_080D2FA0: @ 0x080D2FA0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r8, r4
	add r0, r4, #0
	bl sub_080D3808
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _080D3054
	add r0, r4, #0
	bl sub_080C5080
	ldr r7, _080D301C  @ =gRam
	ldr r1, _080D3020  @ =0x00001152
	add r0, r7, r1
	add r5, r4, r0
	ldrb r0, [r5]
	sub r0, r0, #2
	strb r0, [r5]
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r1, _080D3024  @ =0x00001142
	add r0, r7, r1
	add r2, r4, r0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D2FF2
	strb r6, [r2]
	mov r0, #16
	strb r0, [r5]
_080D2FF2:
	ldr r1, _080D3028  @ =0x00000F52
	add r0, r7, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080D3034
	ldr r0, _080D302C  @ =0x00001663
	add r1, r7, r0
	mov r0, #7
	strb r0, [r1]
	bl sub_0812F9A8
	add r0, r4, #0
	bl sub_081146A4
	ldr r1, _080D3030  @ =0x00000FA2
	add r0, r7, r1
	add r0, r4, r0
	strb r6, [r0]
	b _080D3054
	.byte 0x00
	.byte 0x00
_080D301C:
	.4byte gRam
_080D3020:
	.4byte 0x00001152
_080D3024:
	.4byte 0x00001142
_080D3028:
	.4byte 0x00000F52
_080D302C:
	.4byte 0x00001663
_080D3030:
	.4byte 0x00000FA2
_080D3034:
	ldr r1, _080D3060  @ =0x00000FB2
	add r0, r7, r1
	add r0, r0, r8
	mov r1, #1
	strb r1, [r0]
	mov r0, r8
	mov r1, #228
	mov r2, sp
	bl sub_080C9164
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D3054
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_080D3054:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080D3060:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080D2FA0

	THUMB_FUNC_START sub_080D3064
sub_080D3064: @ 0x080D3064
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080D3980
	ldr r6, _080D3150  @ =gRam
	ldr r1, _080D3154  @ =0x00001152
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	sub r0, r0, #2
	mov r7, #0
	strb r0, [r5]
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r2, _080D3158  @ =0x00001142
	add r0, r6, r2
	add r2, r4, r0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D309A
	strb r7, [r2]
	strb r7, [r5]
_080D309A:
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D314A
	ldr r1, _080D315C  @ =0x00001062
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	ldr r1, _080D3160  @ =0x00000F52
	add r2, r6, r1
	add r0, r0, r2
	ldrb r1, [r0]
	cmp r1, #5
	beq _080D30D8
	cmp r1, #7
	beq _080D30D8
	cmp r1, #9
	beq _080D30D8
	add r0, r4, r2
	ldrb r0, [r0]
	orr r1, r1, r0
	cmp r1, #0
	beq _080D30D8
	cmp r0, #5
	beq _080D30D8
	cmp r0, #7
	beq _080D30D8
	cmp r0, #9
	bne _080D3132
_080D30D8:
	ldr r6, _080D3150  @ =gRam
	ldr r2, _080D3164  @ =0x00000F72
	add r0, r6, r2
	add r5, r4, r0
	ldrb r1, [r5]
	sub r0, r1, #1
	strb r0, [r5]
	cmp r1, #0
	bne _080D3132
	ldr r0, _080D3168  @ =0x00000F62
	add r2, r6, r0
	add r2, r4, r2
	ldrb r0, [r2]
	add r3, r0, #0
	add r0, r3, #1
	mov r1, #7
	and r0, r0, r1
	strb r0, [r2]
	ldr r2, _080D316C  @ =0x00000F92
	add r1, r6, r2
	add r1, r4, r1
	ldr r0, _080D3170  @ =gUnknown_08174DB4
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080D3174  @ =gUnknown_08174DBC
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r5]
	cmp r3, #1
	bne _080D3120
	ldr r1, _080D3154  @ =0x00001152
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #16
	strb r1, [r0]
_080D3120:
	cmp r3, #3
	bne _080D3132
	add r0, r4, #0
	bl sub_080D3650
	add r0, r4, #0
	mov r1, #113
	bl sub_080CF0AC
_080D3132:
	ldr r1, _080D3178  @ =gUnknown_08174DC4
	ldr r0, _080D3150  @ =gRam
	ldr r2, _080D3160  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080D314A:
	pop {r4-r7}
	pop {r0}
	bx r0
_080D3150:
	.4byte gRam
_080D3154:
	.4byte 0x00001152
_080D3158:
	.4byte 0x00001142
_080D315C:
	.4byte 0x00001062
_080D3160:
	.4byte 0x00000F52
_080D3164:
	.4byte 0x00000F72
_080D3168:
	.4byte 0x00000F62
_080D316C:
	.4byte 0x00000F92
_080D3170:
	.4byte gUnknown_08174DB4
_080D3174:
	.4byte gUnknown_08174DBC
_080D3178:
	.4byte gUnknown_08174DC4
	THUMB_FUNC_END sub_080D3064

	THUMB_FUNC_START sub_080D317C
sub_080D317C: @ 0x080D317C
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	ldr r6, _080D31C8  @ =gRam
	ldr r1, _080D31CC  @ =0x00000F82
	add r0, r6, r1
	add r5, r4, r0
	mov r0, #0
	strb r0, [r5]
	ldr r1, _080D31D0  @ =0x00001663
	add r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #8
	bne _080D31DC
	add r1, r1, #93
	add r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #193
	bhi _080D3242
	add r0, r4, #0
	mov r1, #227
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080D31D4  @ =0x00000F52
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #10
	strb r1, [r0]
	ldr r0, _080D31D8  @ =0x00001770
	add r1, r6, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080D3242
	.byte 0x00
	.byte 0x00
_080D31C8:
	.4byte gRam
_080D31CC:
	.4byte 0x00000F82
_080D31D0:
	.4byte 0x00001663
_080D31D4:
	.4byte 0x00000F52
_080D31D8:
	.4byte 0x00001770
_080D31DC:
	add r0, r4, #0
	bl sub_080D383C
	cmp r0, #2
	beq _080D3228
	cmp r0, #0
	bne _080D3242
	ldr r1, _080D3204  @ =0x00001662
	add r0, r6, r1
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	bne _080D3208
	add r0, r4, #0
	mov r1, #226
	mov r2, sp
	bl sub_080C9164
	b _080D3242
_080D3204:
	.4byte 0x00001662
_080D3208:
	add r0, r4, #0
	mov r1, #219
	mov r2, sp
	bl sub_080C9164
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D3242
	ldr r1, _080D3224  @ =0x00000F52
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	b _080D323A
_080D3224:
	.4byte 0x00000F52
_080D3228:
	add r0, r7, #0
	mov r1, #231
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080D324C  @ =0x00000FD2
	add r0, r6, r1
	add r0, r7, r0
	mov r1, #96
_080D323A:
	strb r1, [r0]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_080D3242:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D324C:
	.4byte 0x00000FD2
	THUMB_FUNC_END sub_080D317C

	THUMB_FUNC_START sub_080D3250
sub_080D3250: @ 0x080D3250
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	ldr r6, _080D327C  @ =gRam
	ldr r1, _080D3280  @ =0x00001AE2
	add r0, r6, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _080D3288
	add r0, r4, #0
	mov r1, #223
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080D3284  @ =0x00000F52
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	b _080D32C2
_080D327C:
	.4byte gRam
_080D3280:
	.4byte 0x00001AE2
_080D3284:
	.4byte 0x00000F52
_080D3288:
	ldr r0, _080D32A4  @ =gSword
	ldrb r0, [r0]
	cmp r0, #2
	bls _080D32AC
	add r0, r4, #0
	mov r1, #222
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080D32A8  @ =0x00000F52
	add r0, r6, r1
	add r0, r4, r0
	strb r5, [r0]
	b _080D32C2
_080D32A4:
	.4byte gSword
_080D32A8:
	.4byte 0x00000F52
_080D32AC:
	add r0, r7, #0
	mov r1, #221
	mov r2, sp
	bl sub_080C9564
	ldr r0, _080D32CC  @ =0x00000F52
	add r1, r6, r0
	add r1, r7, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D32C2:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D32CC:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D3250

	THUMB_FUNC_START sub_080D32D0
sub_080D32D0: @ 0x080D32D0
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080D3330  @ =gRam
	ldr r1, _080D3334  @ =0x00001AE2
	add r0, r5, r1
	ldrb r6, [r0]
	cmp r6, #0
	bne _080D3364
	bl sub_080AA868
	cmp r0, #9
	ble _080D334C
	mov r0, #10
	neg r0, r0
	bl sub_080AA83C
	add r0, r4, #0
	mov r1, #224
	mov r2, sp
	bl sub_080C9564
	ldr r2, _080D3338  @ =0x00001062
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	ldr r2, _080D333C  @ =0x00000F52
	add r1, r5, r2
	add r0, r0, r1
	mov r2, #5
	strb r2, [r0]
	add r1, r4, r1
	strb r2, [r1]
	ldr r1, _080D3340  @ =0x00000CB4
	add r0, r5, r1
	strb r6, [r0]
	ldr r1, _080D3344  @ =gSword
	mov r0, #255
	strb r0, [r1]
	ldr r0, _080D3348  @ =0x00001662
	add r2, r5, r0
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	b _080D3378
	.byte 0x00
	.byte 0x00
_080D3330:
	.4byte gRam
_080D3334:
	.4byte 0x00001AE2
_080D3338:
	.4byte 0x00001062
_080D333C:
	.4byte 0x00000F52
_080D3340:
	.4byte 0x00000CB4
_080D3344:
	.4byte gSword
_080D3348:
	.4byte 0x00001662
_080D334C:
	add r0, r4, #0
	mov r1, #223
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080D3360  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	strb r6, [r0]
	b _080D3378
_080D3360:
	.4byte 0x00000F52
_080D3364:
	add r0, r4, #0
	mov r1, #223
	mov r2, sp
	bl sub_080C9564
	ldr r2, _080D3380  @ =0x00000F52
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
_080D3378:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080D3380:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D32D0

	THUMB_FUNC_START sub_080D3384
sub_080D3384: @ 0x080D3384
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080D33F4  @ =gRam
	ldr r1, _080D33F8  @ =0x00000F82
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	mov r6, #0
	ldr r2, _080D33FC  @ =0x00000FD2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D33D4
	ldr r1, _080D3400  @ =0x00000A4E
	add r0, r5, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #14
	bne _080D33D4
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D33D4
	ldr r2, _080D3404  @ =0x00001788
	add r0, r5, r2
	ldr r1, [r0]
	ldr r0, _080D3408  @ =0x0002FF00
	and r1, r1, r0
	ldr r0, _080D340C  @ =0x00020200
	mov r6, #1
	cmp r1, r0
	bne _080D33D4
	mov r6, #2
_080D33D4:
	cmp r6, #2
	beq _080D3444
	cmp r6, #0
	bne _080D3466
	ldr r5, _080D33F4  @ =gRam
	ldr r1, _080D3410  @ =0x00000CB4
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D3414
	add r0, r4, #0
	mov r1, #229
	mov r2, sp
	bl sub_080C9164
	b _080D3466
_080D33F4:
	.4byte gRam
_080D33F8:
	.4byte 0x00000F82
_080D33FC:
	.4byte 0x00000FD2
_080D3400:
	.4byte 0x00000A4E
_080D3404:
	.4byte 0x00001788
_080D3408:
	.4byte 0x0002FF00
_080D340C:
	.4byte 0x00020200
_080D3410:
	.4byte 0x00000CB4
_080D3414:
	add r0, r4, #0
	mov r1, #225
	mov r2, sp
	bl sub_080C9164
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D3466
	ldr r2, _080D343C  @ =0x00000F52
	add r1, r5, r2
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D3440  @ =0x00000F92
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #4
	strb r1, [r0]
	b _080D3466
_080D343C:
	.4byte 0x00000F52
_080D3440:
	.4byte 0x00000F92
_080D3444:
	add r0, r4, #0
	mov r1, #231
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080D3470  @ =gRam
	ldr r2, _080D3474  @ =0x00000FD2
	add r0, r1, r2
	add r0, r4, r0
	mov r2, #96
	strb r2, [r0]
	ldr r0, _080D3478  @ =0x00000F82
	add r1, r1, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D3466:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D3470:
	.4byte gRam
_080D3474:
	.4byte 0x00000FD2
_080D3478:
	.4byte 0x00000F82
	THUMB_FUNC_END sub_080D3384

	THUMB_FUNC_START sub_080D347C
sub_080D347C: @ 0x080D347C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r4, r0, #0
	mov r0, #26
	add r1, r4, #0
	bl sub_080CA538
	add r3, r0, #0
	cmp r3, #0
	blt _080D34DE
	ldr r2, _080D3504  @ =gRam
	ldr r1, _080D3508  @ =0x00000EE2
	add r0, r2, r1
	add r0, r3, r0
	ldr r5, _080D350C  @ =0x000016C4
	add r1, r2, r5
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D3510  @ =0x00000F02
	add r0, r2, r1
	add r0, r3, r0
	add r5, r5, #1
	add r1, r2, r5
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D3514  @ =0x00000ED2
	add r0, r2, r1
	add r0, r3, r0
	sub r5, r5, #5
	add r1, r2, r5
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D3518  @ =0x00000EF2
	add r0, r2, r1
	add r0, r3, r0
	add r5, r5, #1
	add r1, r2, r5
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D351C  @ =0x00001052
	add r0, r2, r1
	add r0, r3, r0
	mov r1, #3
	strb r1, [r0]
	ldr r5, _080D3520  @ =0x00001172
	add r2, r2, r5
	add r2, r3, r2
	strb r1, [r2]
_080D34DE:
	ldr r1, _080D3504  @ =gRam
	ldr r0, _080D3524  @ =0x00000F52
	add r2, r1, r0
	add r2, r4, r2
	ldrb r0, [r2]
	add r0, r0, #1
	mov r3, #0
	strb r0, [r2]
	ldr r2, _080D3528  @ =0x00001663
	add r0, r1, r2
	strb r3, [r0]
	ldr r5, _080D352C  @ =0x00000F92
	add r1, r1, r5
	add r1, r4, r1
	mov r0, #4
	strb r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
_080D3504:
	.4byte gRam
_080D3508:
	.4byte 0x00000EE2
_080D350C:
	.4byte 0x000016C4
_080D3510:
	.4byte 0x00000F02
_080D3514:
	.4byte 0x00000ED2
_080D3518:
	.4byte 0x00000EF2
_080D351C:
	.4byte 0x00001052
_080D3520:
	.4byte 0x00001172
_080D3524:
	.4byte 0x00000F52
_080D3528:
	.4byte 0x00001663
_080D352C:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080D347C

	THUMB_FUNC_START sub_080D3530
sub_080D3530: @ 0x080D3530
	push {r4,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #26
	bl sub_080CA538
	add r3, r0, #0
	cmp r3, #0
	blt _080D359A
	ldr r2, _080D35A4  @ =gRam
	mov r1, #150
	lsl r1, r1, #4
	add r0, r2, r1
	ldrh r1, [r0]
	add r1, r1, #44
	ldr r4, _080D35A8  @ =0x00000EE2
	add r0, r2, r4
	add r0, r3, r0
	strb r1, [r0]
	add r4, r4, #32
	add r0, r2, r4
	add r0, r3, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r1, _080D35AC  @ =0x00000ED2
	add r0, r2, r1
	add r0, r3, r0
	ldr r4, _080D35B0  @ =0x00000964
	add r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D35B4  @ =0x00000EF2
	add r0, r2, r1
	add r0, r3, r0
	add r4, r4, #1
	add r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D35B8  @ =0x00000FB2
	add r0, r2, r1
	add r0, r3, r0
	mov r1, #1
	strb r1, [r0]
	ldr r4, _080D35BC  @ =0x00000F62
	add r0, r2, r4
	add r0, r3, r0
	mov r1, #4
	strb r1, [r0]
	ldr r0, _080D35C0  @ =0x00001172
	add r2, r2, r0
	add r2, r3, r2
	strb r1, [r2]
_080D359A:
	add r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080D35A4:
	.4byte gRam
_080D35A8:
	.4byte 0x00000EE2
_080D35AC:
	.4byte 0x00000ED2
_080D35B0:
	.4byte 0x00000964
_080D35B4:
	.4byte 0x00000EF2
_080D35B8:
	.4byte 0x00000FB2
_080D35BC:
	.4byte 0x00000F62
_080D35C0:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080D3530

	THUMB_FUNC_START sub_080D35C4
sub_080D35C4: @ 0x080D35C4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r8, r4
	add r0, r4, #0
	bl sub_080D39D4
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D363C
	ldr r5, _080D3618  @ =gRam
	ldr r1, _080D361C  @ =0x00000FC2
	add r0, r5, r1
	add r7, r4, r0
	ldrb r6, [r7]
	cmp r6, #0
	bne _080D363C
	ldr r0, _080D3620  @ =0x00000F62
	add r2, r5, r0
	add r2, r4, r2
	ldrb r3, [r2]
	add r0, r3, #1
	mov r1, #7
	and r0, r0, r1
	strb r0, [r2]
	ldr r0, _080D3624  @ =gUnknown_08174E94
	add r0, r3, r0
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D362C
	ldr r1, _080D3628  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	strb r6, [r0]
	b _080D363C
_080D3618:
	.4byte gRam
_080D361C:
	.4byte 0x00000FC2
_080D3620:
	.4byte 0x00000F62
_080D3624:
	.4byte gUnknown_08174E94
_080D3628:
	.4byte 0x00000FA2
_080D362C:
	ldr r2, _080D3648  @ =0x00000F92
	add r0, r5, r2
	add r0, r0, r8
	strb r1, [r0]
	ldr r0, _080D364C  @ =gUnknown_08174E9B
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r7]
_080D363C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D3648:
	.4byte 0x00000F92
_080D364C:
	.4byte gUnknown_08174E9B
	THUMB_FUNC_END sub_080D35C4

	THUMB_FUNC_START sub_080D3650
sub_080D3650: @ 0x080D3650
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r0, #26
	add r1, r5, #0
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080D36B8
	ldr r2, _080D36C0  @ =gRam
	ldr r1, _080D36C4  @ =0x00000FB2
	add r0, r2, r1
	add r0, r5, r0
	ldrb r0, [r0]
	mov r5, #150
	lsl r5, r5, #4
	add r3, r2, r5
	ldr r1, _080D36C8  @ =gUnknown_08174EA1
	add r0, r0, r1
	mov r1, #0
	ldrsb r1, [r0, r1]
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r3, _080D36CC  @ =0x00000964
	add r0, r2, r3
	ldrh r3, [r0]
	add r3, r3, #2
	ldr r5, _080D36D0  @ =0x00000EE2
	add r0, r2, r5
	add r0, r4, r0
	strb r1, [r0]
	add r5, r5, #32
	add r0, r2, r5
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r1, _080D36D4  @ =0x00000ED2
	add r0, r2, r1
	add r0, r4, r0
	strb r3, [r0]
	sub r5, r5, #16
	add r0, r2, r5
	add r0, r4, r0
	lsr r3, r3, #8
	strb r3, [r0]
	ldr r0, _080D36D8  @ =0x00001052
	add r2, r2, r0
	add r2, r4, r2
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
_080D36B8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D36C0:
	.4byte gRam
_080D36C4:
	.4byte 0x00000FB2
_080D36C8:
	.4byte gUnknown_08174EA1
_080D36CC:
	.4byte 0x00000964
_080D36D0:
	.4byte 0x00000EE2
_080D36D4:
	.4byte 0x00000ED2
_080D36D8:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080D3650

	THUMB_FUNC_START sub_080D36DC
sub_080D36DC: @ 0x080D36DC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D36FC  @ =gUnknown_08174D3C
	ldr r1, _080D3700  @ =gRam
	ldr r3, _080D3704  @ =0x00001052
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080D36FC:
	.4byte gUnknown_08174D3C
_080D3700:
	.4byte gRam
_080D3704:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080D36DC

	THUMB_FUNC_START sub_080D3708
sub_080D3708: @ 0x080D3708
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080D37A0
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D3738
	ldr r1, _080D3740  @ =gUnknown_08174D4C
	ldr r0, _080D3744  @ =gRam
	ldr r2, _080D3748  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080D3738:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D3740:
	.4byte gUnknown_08174D4C
_080D3744:
	.4byte gRam
_080D3748:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D3708

	THUMB_FUNC_START sub_080D374C
sub_080D374C: @ 0x080D374C
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080C5080
	add r0, r4, #0
	mov r1, #230
	mov r2, sp
	bl sub_080C9164
	ldr r1, _080D3790  @ =gRam
	ldr r0, _080D3794  @ =0x00001770
	add r2, r1, r0
	mov r0, #0
	strb r0, [r2]
	ldr r2, _080D3798  @ =0x00000FB2
	add r0, r1, r2
	add r4, r4, r0
	mov r0, #1
	strb r0, [r4]
	ldr r0, _080D379C  @ =0x00001662
	add r1, r1, r0
	ldrb r2, [r1]
	mov r0, #32
	orr r0, r0, r2
	strb r0, [r1]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D3790:
	.4byte gRam
_080D3794:
	.4byte 0x00001770
_080D3798:
	.4byte 0x00000FB2
_080D379C:
	.4byte 0x00001662
	THUMB_FUNC_END sub_080D374C

	THUMB_FUNC_START sub_080D37A0
sub_080D37A0: @ 0x080D37A0
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r2, _080D37F0  @ =gRam
	ldr r0, _080D37F4  @ =0x0000096C
	add r1, r2, r0
	mov r0, #1
	strh r0, [r1]
	ldr r1, _080D37F8  @ =0x00000FB2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r3, _080D37FC  @ =0x00000F92
	add r0, r2, r3
	add r0, r4, r0
	lsl r1, r1, #1
	ldrb r0, [r0]
	add r1, r1, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r0, _080D3800  @ =gUnknown_08174DA4
	add r0, r1, r0
	ldrb r0, [r0]
	mov r3, #206
	lsl r3, r3, #4
	add r2, r2, r3
	strh r0, [r2]
	lsl r1, r1, #3
	ldr r0, _080D3804  @ =gUnknown_08174D64
	add r1, r1, r0
	add r0, r4, #0
	bl sub_080C94D0
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
_080D37F0:
	.4byte gRam
_080D37F4:
	.4byte 0x0000096C
_080D37F8:
	.4byte 0x00000FB2
_080D37FC:
	.4byte 0x00000F92
_080D3800:
	.4byte gUnknown_08174DA4
_080D3804:
	.4byte gUnknown_08174D64
	THUMB_FUNC_END sub_080D37A0

	THUMB_FUNC_START sub_080D3808
sub_080D3808: @ 0x080D3808
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r0, _080D3830  @ =gRam
	ldr r1, _080D3834  @ =0x0000096C
	add r0, r0, r1
	mov r1, #1
	strh r1, [r0]
	ldr r1, _080D3838  @ =gUnknown_08174DAC
	add r0, r4, #0
	bl sub_080C94D0
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D3830:
	.4byte gRam
_080D3834:
	.4byte 0x0000096C
_080D3838:
	.4byte gUnknown_08174DAC
	THUMB_FUNC_END sub_080D3808

	THUMB_FUNC_START sub_080D383C
sub_080D383C: @ 0x080D383C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	mov r5, #0
	ldr r4, _080D3888  @ =gRam
	ldr r2, _080D388C  @ =0x00000FD2
	add r0, r4, r2
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D3880
	ldr r2, _080D3890  @ =0x00000A4E
	add r0, r4, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #14
	bne _080D3880
	add r0, r1, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D3880
	ldr r1, _080D3894  @ =0x00001788
	add r0, r4, r1
	ldr r1, [r0]
	ldr r0, _080D3898  @ =0x0002FF00
	and r1, r1, r0
	ldr r0, _080D389C  @ =0x00020200
	mov r5, #1
	cmp r1, r0
	bne _080D3880
	mov r5, #2
_080D3880:
	add r0, r5, #0
	pop {r4,r5}
	pop {r1}
	bx r1
_080D3888:
	.4byte gRam
_080D388C:
	.4byte 0x00000FD2
_080D3890:
	.4byte 0x00000A4E
_080D3894:
	.4byte 0x00001788
_080D3898:
	.4byte 0x0002FF00
_080D389C:
	.4byte 0x00020200
	THUMB_FUNC_END sub_080D383C

	THUMB_FUNC_START sub_080D38A0
sub_080D38A0: @ 0x080D38A0
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080D38CC  @ =gRam
	ldr r1, _080D38D0  @ =0x00001AE2
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D38D8
	add r0, r4, #0
	mov r1, #223
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080D38D4  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	b _080D38EE
	.byte 0x00
	.byte 0x00
_080D38CC:
	.4byte gRam
_080D38D0:
	.4byte 0x00001AE2
_080D38D4:
	.4byte 0x00000F52
_080D38D8:
	add r0, r4, #0
	mov r1, #220
	mov r2, sp
	bl sub_080C9564
	ldr r0, _080D38F8  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D38EE:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D38F8:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D38A0

	THUMB_FUNC_START sub_080D38FC
sub_080D38FC: @ 0x080D38FC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080D3384
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D38FC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D390C
sub_080D390C: @ 0x080D390C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _080D3948  @ =gRam
	ldr r1, _080D394C  @ =0x00000F52
	add r3, r4, r1
	add r1, r0, r3
	mov r2, #0
	strb r2, [r1]
	ldr r5, _080D3950  @ =0x00001062
	add r1, r4, r5
	add r0, r0, r1
	ldrb r0, [r0]
	add r0, r0, r3
	strb r2, [r0]
	ldr r1, _080D3954  @ =0x00001776
	add r0, r4, r1
	strb r2, [r0]
	mov r0, #2
	bl sub_080A1588
	ldr r5, _080D3958  @ =0x00001662
	add r4, r4, r5
	ldrb r1, [r4]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
_080D3948:
	.4byte gRam
_080D394C:
	.4byte 0x00000F52
_080D3950:
	.4byte 0x00001062
_080D3954:
	.4byte 0x00001776
_080D3958:
	.4byte 0x00001662
	THUMB_FUNC_END sub_080D390C

	THUMB_FUNC_START sub_080D395C
sub_080D395C: @ 0x080D395C
	bx lr
	THUMB_FUNC_END sub_080D395C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D3960
sub_080D3960: @ 0x080D3960
	bx lr
	THUMB_FUNC_END sub_080D3960

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D3964
sub_080D3964: @ 0x080D3964
	bx lr
	THUMB_FUNC_END sub_080D3964

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D3968
sub_080D3968: @ 0x080D3968
	push {lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #230
	mov r2, sp
	bl sub_080C9164
	add sp, sp, #4
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D3968

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D3980
sub_080D3980: @ 0x080D3980
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r2, _080D39C0  @ =gRam
	ldr r0, _080D39C4  @ =0x0000096C
	add r1, r2, r0
	mov r0, #2
	strh r0, [r1]
	ldr r1, _080D39C8  @ =0x00000F92
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r0, _080D39CC  @ =0x00000FB2
	add r2, r2, r0
	add r2, r4, r2
	lsl r1, r1, #1
	ldrb r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #4
	ldr r0, _080D39D0  @ =gUnknown_08174DF4
	add r1, r1, r0
	add r0, r4, #0
	bl sub_080C94D0
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D39C0:
	.4byte gRam
_080D39C4:
	.4byte 0x0000096C
_080D39C8:
	.4byte 0x00000F92
_080D39CC:
	.4byte 0x00000FB2
_080D39D0:
	.4byte gUnknown_08174DF4
	THUMB_FUNC_END sub_080D3980

	THUMB_FUNC_START sub_080D39D4
sub_080D39D4: @ 0x080D39D4
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r0, #8
	bl sub_080CF388
	ldr r0, _080D3A00  @ =gRam
	ldr r1, _080D3A04  @ =0x00000F92
	add r0, r0, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldr r0, _080D3A08  @ =gUnknown_08174EA4
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #2
	bl sub_080C9480
	pop {r4}
	pop {r0}
	bx r0
_080D3A00:
	.4byte gRam
_080D3A04:
	.4byte 0x00000F92
_080D3A08:
	.4byte gUnknown_08174EA4
	THUMB_FUNC_END sub_080D39D4

	THUMB_FUNC_START sub_080D3A0C
sub_080D3A0C: @ 0x080D3A0C
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080D3A50  @ =gRam
	ldr r1, _080D3A54  @ =0x00000F92
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #0
	strb r1, [r0]
	bl GetRandomInt
	ldr r1, _080D3A58  @ =0x00000F62
	add r4, r6, r1
	add r4, r5, r4
	mov r1, #3
	and r1, r1, r0
	lsl r1, r1, #1
	strb r1, [r4]
	bl sub_080AA868
	ldr r2, _080D3A5C  @ =gUnknown_08174ED4
	ldrb r1, [r4]
	lsr r1, r1, #1
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
	cmp r0, r1
	blt _080D3A64
	ldr r1, _080D3A60  @ =0x00000F52
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #2
	strb r1, [r0]
	b _080D3A70
_080D3A50:
	.4byte gRam
_080D3A54:
	.4byte 0x00000F92
_080D3A58:
	.4byte 0x00000F62
_080D3A5C:
	.4byte gUnknown_08174ED4
_080D3A60:
	.4byte 0x00000F52
_080D3A64:
	ldr r0, _080D3A78  @ =0x00000F52
	add r1, r6, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D3A70:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D3A78:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D3A0C

	THUMB_FUNC_START sub_080D3A7C
sub_080D3A7C: @ 0x080D3A7C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r4, r2, #0
	ldr r3, _080D3AA4  @ =gRam
	ldr r1, _080D3AA8  @ =0x00001AE2
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D3AB4
	ldr r1, _080D3AAC  @ =0x00000F52
	add r0, r3, r1
	add r0, r2, r0
	mov r2, #0
	mov r1, #2
	strb r1, [r0]
	ldr r1, _080D3AB0  @ =0x00001770
	add r0, r3, r1
	strb r2, [r0]
	b _080D3AE0
_080D3AA4:
	.4byte gRam
_080D3AA8:
	.4byte 0x00001AE2
_080D3AAC:
	.4byte 0x00000F52
_080D3AB0:
	.4byte 0x00001770
_080D3AB4:
	ldr r1, _080D3AE8  @ =0x00000FC2
	add r0, r3, r1
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D3ACC
	ldr r0, _080D3AEC  @ =0x00000F52
	add r1, r3, r0
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D3ACC:
	ldr r1, _080D3AF0  @ =0x00000F92
	add r2, r3, r1
	add r2, r4, r2
	ldr r1, _080D3AF4  @ =0x00000996
	add r0, r3, r1
	ldrb r0, [r0]
	lsr r0, r0, #4
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
_080D3AE0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D3AE8:
	.4byte 0x00000FC2
_080D3AEC:
	.4byte 0x00000F52
_080D3AF0:
	.4byte 0x00000F92
_080D3AF4:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080D3A7C

	THUMB_FUNC_START sub_080D3AF8
sub_080D3AF8: @ 0x080D3AF8
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080D3B34  @ =gRam
	ldr r1, _080D3B38  @ =0x00000F92
	add r0, r4, r1
	add r0, r5, r0
	mov r2, #0
	strb r2, [r0]
	ldr r0, _080D3B3C  @ =0x00000F52
	add r1, r4, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D3B40  @ =0x00000965
	add r0, r4, r1
	strb r2, [r0]
	mov r1, #179
	lsl r1, r1, #5
	add r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080D3B44
	mov r1, #150
	lsl r1, r1, #4
	add r0, r4, r1
	strh r2, [r0]
	b _080D3C50
_080D3B34:
	.4byte gRam
_080D3B38:
	.4byte 0x00000F92
_080D3B3C:
	.4byte 0x00000F52
_080D3B40:
	.4byte 0x00000965
_080D3B44:
	ldr r0, _080D3C6C  @ =gBookOfMudora
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D3B56
	mov r0, #2
	bl sub_080D3CD4
	cmp r0, #0
	bne _080D3C50
_080D3B56:
	ldr r0, _080D3C70  @ =gPendantCount
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _080D3B6C
	mov r0, #1
	bl sub_080D3CD4
	cmp r0, #0
	bne _080D3C50
_080D3B6C:
	ldr r0, _080D3C74  @ =gMagicPowder
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080D3B7E
	mov r0, #3
	bl sub_080D3CD4
	cmp r0, #0
	bne _080D3C50
_080D3B7E:
	ldr r0, _080D3C78  @ =gFlippers
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D3B90
	mov r0, #4
	bl sub_080D3CD4
	cmp r0, #0
	bne _080D3C50
_080D3B90:
	ldr r0, _080D3C7C  @ =gMoonPearl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D3BA2
	mov r0, #5
	bl sub_080D3CD4
	cmp r0, #0
	bne _080D3C50
_080D3BA2:
	ldr r2, _080D3C80  @ =0x0000165E
	add r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080D3BB6
	mov r0, #6
	bl sub_080D3CD4
	cmp r0, #0
	bne _080D3C50
_080D3BB6:
	ldr r0, _080D3C84  @ =gMagicUsage
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D3BC8
	mov r0, #7
	bl sub_080D3CD4
	cmp r0, #0
	bne _080D3C50
_080D3BC8:
	ldr r0, _080D3C88  @ =gBombosMedallion
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D3BDA
	mov r0, #8
	bl sub_080D3CD4
	cmp r0, #0
	bne _080D3C50
_080D3BDA:
	ldr r0, _080D3C8C  @ =0x00001662
	add r4, r4, r0
	ldrb r1, [r4]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _080D3BF2
	mov r0, #9
	bl sub_080D3CD4
	cmp r0, #0
	bne _080D3C50
_080D3BF2:
	ldrb r1, [r4]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	bne _080D3C06
	mov r0, #10
	bl sub_080D3CD4
	cmp r0, #0
	bne _080D3C50
_080D3C06:
	ldr r0, _080D3C90  @ =gMagicCape
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D3C18
	mov r0, #11
	bl sub_080D3CD4
	cmp r0, #0
	bne _080D3C50
_080D3C18:
	ldr r0, _080D3C94  @ =gUnknown_020022DB
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _080D3C2E
	mov r0, #12
	bl sub_080D3CD4
	cmp r0, #0
	bne _080D3C50
_080D3C2E:
	ldr r0, _080D3C98  @ =gSword
	ldrb r0, [r0]
	cmp r0, #3
	bhi _080D3C40
	mov r0, #13
	bl sub_080D3CD4
	cmp r0, #0
	bne _080D3C50
_080D3C40:
	mov r0, #14
	bl sub_080D3CD4
	cmp r0, #0
	bne _080D3C50
	mov r0, #15
	bl sub_080D3CD4
_080D3C50:
	ldr r3, _080D3C9C  @ =gRam
	ldr r1, _080D3CA0  @ =0x0000165F
	add r2, r3, r1
	ldrb r0, [r2]
	mov r1, #64
	eor r0, r0, r1
	strb r0, [r2]
	mov r1, #64
	and r0, r0, r1
	cmp r0, #0
	beq _080D3CAC
	ldr r1, _080D3CA4  @ =gUnknown_08174F0C
	ldr r2, _080D3CA8  @ =0x00000961
	b _080D3CB2
_080D3C6C:
	.4byte gBookOfMudora
_080D3C70:
	.4byte gPendantCount
_080D3C74:
	.4byte gMagicPowder
_080D3C78:
	.4byte gFlippers
_080D3C7C:
	.4byte gMoonPearl
_080D3C80:
	.4byte 0x0000165E
_080D3C84:
	.4byte gMagicUsage
_080D3C88:
	.4byte gBombosMedallion
_080D3C8C:
	.4byte 0x00001662
_080D3C90:
	.4byte gMagicCape
_080D3C94:
	.4byte gUnknown_020022DB
_080D3C98:
	.4byte gSword
_080D3C9C:
	.4byte gRam
_080D3CA0:
	.4byte 0x0000165F
_080D3CA4:
	.4byte gUnknown_08174F0C
_080D3CA8:
	.4byte 0x00000961
_080D3CAC:
	ldr r1, _080D3CD0  @ =gUnknown_08174F0C
	mov r2, #150
	lsl r2, r2, #4
_080D3CB2:
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	add r0, r5, #0
	mov r2, sp
	bl sub_080C9564
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080D3CD0:
	.4byte gUnknown_08174F0C
	THUMB_FUNC_END sub_080D3AF8

	THUMB_FUNC_START sub_080D3CD4
sub_080D3CD4: @ 0x080D3CD4
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080D3CF0  @ =gRam
	ldr r3, _080D3CF4  @ =0x00000965
	add r0, r1, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080D3CF8
	sub r3, r3, #5
	b _080D3CFA
	.byte 0x00
	.byte 0x00
_080D3CF0:
	.4byte gRam
_080D3CF4:
	.4byte 0x00000965
_080D3CF8:
	ldr r3, _080D3D10  @ =0x00000961
_080D3CFA:
	add r0, r1, r3
	strb r2, [r0]
	ldr r0, _080D3D14  @ =0x00000965
	add r1, r1, r0
	mov r0, #0
	ldrsb r0, [r1, r0]
	add r0, r0, #1
	cmp r0, #1
	ble _080D3D18
	mov r0, #1
	b _080D3D20
_080D3D10:
	.4byte 0x00000961
_080D3D14:
	.4byte 0x00000965
_080D3D18:
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
_080D3D20:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080D3CD4

	THUMB_FUNC_START sub_080D3D24
sub_080D3D24: @ 0x080D3D24
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D3D6C  @ =gRam
	ldr r3, _080D3D70  @ =0x00000F92
	add r1, r2, r3
	add r1, r0, r1
	mov r3, #0
	strb r3, [r1]
	mov r4, #150
	lsl r4, r4, #4
	add r1, r2, r4
	strh r3, [r1]
	add r4, r4, #4
	add r1, r2, r4
	strh r3, [r1]
	add r4, r4, #4
	add r1, r2, r4
	strh r3, [r1]
	add r4, r4, #4
	add r1, r2, r4
	strh r3, [r1]
	ldr r3, _080D3D74  @ =gUnknown_08174ED4
	ldr r1, _080D3D78  @ =0x00000F62
	add r2, r2, r1
	add r2, r0, r2
	ldrb r1, [r2]
	lsr r1, r1, #1
	lsl r1, r1, #1
	add r1, r1, r3
	ldrb r1, [r1]
	bl sub_080D3E68
	pop {r4}
	pop {r0}
	bx r0
_080D3D6C:
	.4byte gRam
_080D3D70:
	.4byte 0x00000F92
_080D3D74:
	.4byte gUnknown_08174ED4
_080D3D78:
	.4byte 0x00000F62
	THUMB_FUNC_END sub_080D3D24

	THUMB_FUNC_START sub_080D3D7C
sub_080D3D7C: @ 0x080D3D7C
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080D3DC0  @ =gRam
	ldr r1, _080D3DC4  @ =0x00000F92
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #0
	strb r1, [r0]
	bl GetRandomInt
	ldr r1, _080D3DC8  @ =0x00000F62
	add r4, r6, r1
	add r4, r5, r4
	mov r1, #3
	and r1, r1, r0
	lsl r1, r1, #1
	strb r1, [r4]
	bl sub_080AA868
	ldr r2, _080D3DCC  @ =gUnknown_08174ED4
	ldrb r1, [r4]
	lsr r1, r1, #1
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
	cmp r0, r1
	blt _080D3DD4
	ldr r1, _080D3DD0  @ =0x00000F52
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #2
	strb r1, [r0]
	b _080D3DE0
_080D3DC0:
	.4byte gRam
_080D3DC4:
	.4byte 0x00000F92
_080D3DC8:
	.4byte 0x00000F62
_080D3DCC:
	.4byte gUnknown_08174ED4
_080D3DD0:
	.4byte 0x00000F52
_080D3DD4:
	ldr r0, _080D3DE8  @ =0x00000F52
	add r1, r6, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D3DE0:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D3DE8:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D3D7C

	THUMB_FUNC_START sub_080D3DEC
sub_080D3DEC: @ 0x080D3DEC
	push {r4,lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r4, r1, #0
	ldr r3, _080D3E14  @ =gRam
	ldr r2, _080D3E18  @ =0x00001AE2
	add r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D3E24
	ldr r2, _080D3E1C  @ =0x00000F52
	add r0, r3, r2
	add r0, r1, r0
	mov r2, #0
	mov r1, #2
	strb r1, [r0]
	ldr r1, _080D3E20  @ =0x00001770
	add r0, r3, r1
	strb r2, [r0]
	b _080D3E50
_080D3E14:
	.4byte gRam
_080D3E18:
	.4byte 0x00001AE2
_080D3E1C:
	.4byte 0x00000F52
_080D3E20:
	.4byte 0x00001770
_080D3E24:
	ldr r0, _080D3E58  @ =0x00000F92
	add r2, r3, r0
	add r2, r4, r2
	ldr r1, _080D3E5C  @ =0x00000996
	add r0, r3, r1
	ldrb r0, [r0]
	lsr r0, r0, #4
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	ldr r2, _080D3E60  @ =0x00000FC2
	add r0, r3, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D3E50
	ldr r0, _080D3E64  @ =0x00000F52
	add r1, r3, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D3E50:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D3E58:
	.4byte 0x00000F92
_080D3E5C:
	.4byte 0x00000996
_080D3E60:
	.4byte 0x00000FC2
_080D3E64:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D3DEC

	THUMB_FUNC_START sub_080D3E68
sub_080D3E68: @ 0x080D3E68
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	sub sp, sp, #4
	mov r8, r0
	add r4, r1, #0
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r5, _080D3F54  @ =0x00002710
	add r0, r4, #0
	add r1, r5, #0
	bl __divsi3
	mul r0, r5, r0
	sub r4, r4, r0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r5, _080D3F58  @ =gRam
	mov r1, #250
	lsl r1, r1, #2
	add r0, r4, #0
	bl __divsi3
	mov r9, r0
	ldr r1, _080D3F5C  @ =0x0000096C
	add r0, r5, r1
	mov r2, r9
	strh r2, [r0]
	mov r3, #0
	ldrsh r1, [r0, r3]
	lsl r0, r1, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r1
	lsl r0, r0, #3
	sub r4, r4, r0
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r0, #100
	mov r10, r0
	add r0, r4, #0
	mov r1, #100
	bl __udivsi3
	add r6, r0, #0
	lsl r6, r6, #24
	lsr r6, r6, #24
	ldr r1, _080D3F60  @ =0x00000968
	add r0, r5, r1
	strh r6, [r0]
	mov r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r10
	mul r3, r0, r3
	add r0, r3, #0
	sub r4, r4, r0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D3F64  @ =0x00000964
	add r1, r5, r2
	strh r0, [r1]
	mov r3, #0
	ldrsh r2, [r1, r3]
	lsl r1, r2, #2
	add r1, r1, r2
	lsl r1, r1, #1
	sub r4, r4, r1
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r2, #150
	lsl r2, r2, #4
	add r1, r5, r2
	strh r4, [r1]
	lsl r4, r4, #4
	orr r4, r4, r0
	ldr r3, _080D3F68  @ =0x00001AEC
	add r0, r5, r3
	strb r4, [r0]
	mov r0, r9
	lsl r0, r0, #4
	orr r0, r0, r6
	mov r9, r0
	ldr r1, _080D3F6C  @ =0x00001AED
	add r0, r5, r1
	mov r2, r9
	strb r2, [r0]
	mov r0, r8
	mov r1, #247
	mov r2, sp
	bl sub_080C9564
	ldr r3, _080D3F70  @ =0x00000F52
	add r5, r5, r3
	add r8, r8, r5
	mov r1, r8
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D3F54:
	.4byte 0x00002710
_080D3F58:
	.4byte gRam
_080D3F5C:
	.4byte 0x0000096C
_080D3F60:
	.4byte 0x00000968
_080D3F64:
	.4byte 0x00000964
_080D3F68:
	.4byte 0x00001AEC
_080D3F6C:
	.4byte 0x00001AED
_080D3F70:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D3E68

	THUMB_FUNC_START sub_080D3F74
sub_080D3F74: @ 0x080D3F74
	push {r4,r5,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #49
	bl sub_080CA538
	ldr r3, _080D3FE0  @ =gRam
	ldr r1, _080D3FE4  @ =0x00000EE2
	add r2, r3, r1
	add r2, r0, r2
	mov r4, #150
	lsl r4, r4, #4
	add r1, r3, r4
	ldrb r1, [r1]
	mov r4, #0
	strb r1, [r2]
	ldr r5, _080D3FE8  @ =0x00000F02
	add r1, r3, r5
	add r1, r0, r1
	ldr r5, _080D3FEC  @ =0x00000961
	add r2, r3, r5
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r2, _080D3FF0  @ =0x00000ED2
	add r1, r3, r2
	add r1, r0, r1
	add r5, r5, #3
	add r2, r3, r5
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r2, _080D3FF4  @ =0x00000EF2
	add r1, r3, r2
	add r1, r0, r1
	add r5, r5, #1
	add r2, r3, r5
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r2, _080D3FF8  @ =0x00001052
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #1
	strb r2, [r1]
	ldr r5, _080D3FFC  @ =0x00001132
	add r1, r3, r5
	add r1, r0, r1
	strb r4, [r1]
	ldr r1, _080D4000  @ =0x00001172
	add r3, r3, r1
	add r0, r0, r3
	strb r2, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
_080D3FE0:
	.4byte gRam
_080D3FE4:
	.4byte 0x00000EE2
_080D3FE8:
	.4byte 0x00000F02
_080D3FEC:
	.4byte 0x00000961
_080D3FF0:
	.4byte 0x00000ED2
_080D3FF4:
	.4byte 0x00000EF2
_080D3FF8:
	.4byte 0x00001052
_080D3FFC:
	.4byte 0x00001132
_080D4000:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080D3F74

	THUMB_FUNC_START sub_080D4004
sub_080D4004: @ 0x080D4004
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080C35C0
	ldr r0, _080D4028  @ =gRam
	ldr r1, _080D402C  @ =0x00001172
	add r0, r0, r1
	add r4, r4, r0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D4028:
	.4byte gRam
_080D402C:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080D4004

	THUMB_FUNC_START sub_080D4030
sub_080D4030: @ 0x080D4030
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D4050  @ =gUnknown_08174EDC
	ldr r1, _080D4054  @ =gRam
	ldr r3, _080D4058  @ =0x00001052
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080D4050:
	.4byte gUnknown_08174EDC
_080D4054:
	.4byte gRam
_080D4058:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080D4030

	THUMB_FUNC_START sub_080D405C
sub_080D405C: @ 0x080D405C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080D42DC
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D4090
	ldr r2, _080D4098  @ =gUnknown_08174EE4
	ldr r0, _080D409C  @ =gRam
	ldr r1, _080D40A0  @ =0x0000165C
	add r0, r0, r1
	ldrh r0, [r0]
	lsr r0, r0, #6
	mov r1, #1
	and r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080D4090:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D4098:
	.4byte gUnknown_08174EE4
_080D409C:
	.4byte gRam
_080D40A0:
	.4byte 0x0000165C
	THUMB_FUNC_END sub_080D405C

	THUMB_FUNC_START sub_080D40A4
sub_080D40A4: @ 0x080D40A4
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D40C4  @ =gUnknown_08174EEC
	ldr r1, _080D40C8  @ =gRam
	ldr r3, _080D40CC  @ =0x00000F52
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080D40C4:
	.4byte gUnknown_08174EEC
_080D40C8:
	.4byte gRam
_080D40CC:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D40A4

	THUMB_FUNC_START sub_080D40D0
sub_080D40D0: @ 0x080D40D0
	push {lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #245
	mov r2, sp
	bl sub_080C9164
	add sp, sp, #4
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D40D0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D40E8
sub_080D40E8: @ 0x080D40E8
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	mov r1, #246
	mov r2, sp
	bl sub_080C9164
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D4120
	ldr r2, _080D4128  @ =gRam
	ldr r0, _080D412C  @ =0x00000F52
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D4130  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	ldr r0, _080D4134  @ =0x00001770
	add r2, r2, r0
	mov r0, #1
	strb r0, [r2]
_080D4120:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_080D4128:
	.4byte gRam
_080D412C:
	.4byte 0x00000F52
_080D4130:
	.4byte 0x00000FC2
_080D4134:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080D40E8

	THUMB_FUNC_START sub_080D4138
sub_080D4138: @ 0x080D4138
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r1, _080D417C  @ =gUnknown_08174ED4
	ldr r5, _080D4180  @ =gRam
	ldr r2, _080D4184  @ =0x00000F62
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	neg r0, r0
	bl sub_080AA83C
	ldr r1, _080D4188  @ =0x00000F52
	add r0, r5, r1
	add r4, r4, r0
	ldrb r0, [r4]
	add r0, r0, #1
	mov r2, #0
	strb r0, [r4]
	ldr r1, _080D418C  @ =gHeartsFiller
	mov r0, #160
	strb r0, [r1]
	ldr r0, _080D4190  @ =0x00001770
	add r5, r5, r0
	strb r2, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D417C:
	.4byte gUnknown_08174ED4
_080D4180:
	.4byte gRam
_080D4184:
	.4byte 0x00000F62
_080D4188:
	.4byte 0x00000F52
_080D418C:
	.4byte gHeartsFiller
_080D4190:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080D4138

	THUMB_FUNC_START sub_080D4194
sub_080D4194: @ 0x080D4194
	bx lr
	THUMB_FUNC_END sub_080D4194

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D4198
sub_080D4198: @ 0x080D4198
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D41B8  @ =gUnknown_08174F2C
	ldr r1, _080D41BC  @ =gRam
	ldr r3, _080D41C0  @ =0x00000F52
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080D41B8:
	.4byte gUnknown_08174F2C
_080D41BC:
	.4byte gRam
_080D41C0:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D4198

	THUMB_FUNC_START sub_080D41C4
sub_080D41C4: @ 0x080D41C4
	push {lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #245
	mov r2, sp
	bl sub_080C9164
	add sp, sp, #4
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D41C4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D41DC
sub_080D41DC: @ 0x080D41DC
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	mov r1, #246
	mov r2, sp
	bl sub_080C9164
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D4214
	ldr r2, _080D421C  @ =gRam
	ldr r0, _080D4220  @ =0x00000F52
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D4224  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	ldr r0, _080D4228  @ =0x00001770
	add r2, r2, r0
	mov r0, #1
	strb r0, [r2]
_080D4214:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_080D421C:
	.4byte gRam
_080D4220:
	.4byte 0x00000F52
_080D4224:
	.4byte 0x00000FC2
_080D4228:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080D41DC

	THUMB_FUNC_START sub_080D422C
sub_080D422C: @ 0x080D422C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080D426C  @ =gRam
	mov r3, #150
	lsl r3, r3, #4
	add r2, r1, r3
	mov r3, #0
	strh r3, [r2]
	ldr r4, _080D4270  @ =0x00000964
	add r2, r1, r4
	strh r3, [r2]
	add r4, r4, #4
	add r2, r1, r4
	strh r3, [r2]
	add r4, r4, #4
	add r2, r1, r4
	strh r3, [r2]
	ldr r2, _080D4274  @ =gUnknown_08174ED4
	ldr r3, _080D4278  @ =0x00000F62
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsr r1, r1, #1
	lsl r1, r1, #1
	add r1, r1, r2
	ldrb r1, [r1]
	bl sub_080D3E68
	pop {r4}
	pop {r0}
	bx r0
_080D426C:
	.4byte gRam
_080D4270:
	.4byte 0x00000964
_080D4274:
	.4byte gUnknown_08174ED4
_080D4278:
	.4byte 0x00000F62
	THUMB_FUNC_END sub_080D422C

	THUMB_FUNC_START sub_080D427C
sub_080D427C: @ 0x080D427C
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r1, _080D42C0  @ =gUnknown_08174ED4
	ldr r5, _080D42C4  @ =gRam
	ldr r2, _080D42C8  @ =0x00000F62
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	neg r0, r0
	bl sub_080AA83C
	ldr r1, _080D42CC  @ =0x00000F52
	add r0, r5, r1
	add r4, r4, r0
	ldrb r0, [r4]
	add r0, r0, #1
	mov r2, #0
	strb r0, [r4]
	ldr r1, _080D42D0  @ =gHeartsFiller
	mov r0, #160
	strb r0, [r1]
	ldr r0, _080D42D4  @ =0x00001770
	add r5, r5, r0
	strb r2, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D42C0:
	.4byte gUnknown_08174ED4
_080D42C4:
	.4byte gRam
_080D42C8:
	.4byte 0x00000F62
_080D42CC:
	.4byte 0x00000F52
_080D42D0:
	.4byte gHeartsFiller
_080D42D4:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080D427C

	THUMB_FUNC_START sub_080D42D8
sub_080D42D8: @ 0x080D42D8
	bx lr
	THUMB_FUNC_END sub_080D42D8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D42DC
sub_080D42DC: @ 0x080D42DC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080D4310  @ =gRam
	ldr r2, _080D4314  @ =0x0000165C
	add r1, r3, r2
	ldrh r2, [r1]
	lsr r2, r2, #6
	mov r1, #1
	and r2, r2, r1
	ldr r1, _080D4318  @ =0x00000F92
	add r3, r3, r1
	add r3, r0, r3
	lsl r2, r2, #1
	ldrb r3, [r3]
	add r2, r2, r3
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r2, _080D431C  @ =gUnknown_08174F4C
	add r1, r1, r2
	mov r2, #3
	bl sub_080C9480
	pop {r0}
	bx r0
_080D4310:
	.4byte gRam
_080D4314:
	.4byte 0x0000165C
_080D4318:
	.4byte 0x00000F92
_080D431C:
	.4byte gUnknown_08174F4C
	THUMB_FUNC_END sub_080D42DC

	THUMB_FUNC_START sub_080D4320
sub_080D4320: @ 0x080D4320
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	bne _080D4350
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D4350
	bl sub_080AF16C
	ldr r0, _080D4358  @ =gRam
	ldr r1, _080D435C  @ =0x00001719
	add r0, r0, r1
	strb r5, [r0]
	bl sub_08093078
_080D4350:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D4358:
	.4byte gRam
_080D435C:
	.4byte 0x00001719
	THUMB_FUNC_END sub_080D4320

	THUMB_FUNC_START sub_080D4360
sub_080D4360: @ 0x080D4360
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r2, _080D4394  @ =gRam
	ldr r1, _080D4398  @ =0x00000FD2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D43E8
	sub r1, r1, #176
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D43A0
	ldr r1, _080D439C  @ =0x00001122
	add r0, r2, r1
	add r0, r4, r0
	ldrb r2, [r0]
	mov r1, #191
	and r1, r1, r2
	strb r1, [r0]
	b _080D43B2
_080D4394:
	.4byte gRam
_080D4398:
	.4byte 0x00000FD2
_080D439C:
	.4byte 0x00001122
_080D43A0:
	ldr r0, _080D43F0  @ =0x00001122
	add r2, r2, r0
	add r2, r4, r2
	ldrb r1, [r2]
	mov r0, #191
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2]
_080D43B2:
	add r0, r4, #0
	bl sub_080C6240
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D43E8
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r1, _080D43F4  @ =gUnknown_08174FAC
	ldr r0, _080D43F8  @ =gRam
	ldr r2, _080D43FC  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080D43E8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D43F0:
	.4byte 0x00001122
_080D43F4:
	.4byte gUnknown_08174FAC
_080D43F8:
	.4byte gRam
_080D43FC:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D4360

	THUMB_FUNC_START sub_080D4400
sub_080D4400: @ 0x080D4400
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _080D443C  @ =gRam
	ldr r1, _080D4440  @ =0x00000F92
	add r0, r3, r1
	add r0, r2, r0
	mov r1, #0
	strb r1, [r0]
	ldr r0, _080D4444  @ =0x00001152
	add r1, r3, r0
	add r1, r2, r1
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
	sub r0, r0, #241
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D4436
	ldr r0, _080D4448  @ =0x00000F52
	add r1, r3, r0
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D4436:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D443C:
	.4byte gRam
_080D4440:
	.4byte 0x00000F92
_080D4444:
	.4byte 0x00001152
_080D4448:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D4400

	THUMB_FUNC_START sub_080D444C
sub_080D444C: @ 0x080D444C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r5, r2, #0
	ldr r4, _080D449C  @ =gRam
	ldr r0, _080D44A0  @ =0x00001152
	add r1, r4, r0
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
	add r3, r0, #0
	sub r3, r3, #16
	mov r0, #128
	and r3, r3, r0
	cmp r3, #0
	bne _080D4478
	ldr r1, _080D44A4  @ =0x00000F52
	add r0, r4, r1
	add r0, r2, r0
	strb r3, [r0]
_080D4478:
	ldr r0, _080D44A8  @ =0x00001052
	add r1, r4, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D44AC  @ =0x00000F92
	add r2, r4, r1
	add r2, r5, r2
	lsl r0, r0, #24
	lsr r0, r0, #25
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D449C:
	.4byte gRam
_080D44A0:
	.4byte 0x00001152
_080D44A4:
	.4byte 0x00000F52
_080D44A8:
	.4byte 0x00001052
_080D44AC:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080D444C

	THUMB_FUNC_START sub_080D44B0
sub_080D44B0: @ 0x080D44B0
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	bl GetRandomInt
	ldr r3, _080D44E4  @ =gRam
	ldr r1, _080D44E8  @ =0x00001152
	add r2, r3, r1
	add r2, r4, r2
	mov r1, #31
	and r1, r1, r0
	sub r1, r1, #16
	strb r1, [r2]
	ldr r0, _080D44EC  @ =0x00001142
	add r3, r3, r0
	add r3, r4, r3
	mov r0, #64
	strb r0, [r3]
	add r0, r4, #0
	bl sub_080D44F0
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D44E4:
	.4byte gRam
_080D44E8:
	.4byte 0x00001152
_080D44EC:
	.4byte 0x00001142
	THUMB_FUNC_END sub_080D44B0

	THUMB_FUNC_START sub_080D44F0
sub_080D44F0: @ 0x080D44F0
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C36D8
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D4518
	ldr r0, _080D4510  @ =gRam
	ldr r2, _080D4514  @ =0x00000F22
	add r1, r0, r2
	add r1, r4, r1
	mov r2, #16
	b _080D4522
	.byte 0x00
	.byte 0x00
_080D4510:
	.4byte gRam
_080D4514:
	.4byte 0x00000F22
_080D4518:
	ldr r0, _080D4544  @ =gRam
	ldr r3, _080D4548  @ =0x00000F22
	add r1, r0, r3
	add r1, r4, r1
	mov r2, #240
_080D4522:
	strb r2, [r1]
	add r2, r0, #0
	mov r1, #193
	lsl r1, r1, #4
	add r0, r2, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080D4550
	ldr r3, _080D454C  @ =0x00000F12
	add r0, r2, r3
	add r0, r4, r0
	mov r1, #252
	b _080D4558
_080D4544:
	.4byte gRam
_080D4548:
	.4byte 0x00000F22
_080D454C:
	.4byte 0x00000F12
_080D4550:
	ldr r1, _080D4570  @ =0x00000F12
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #4
_080D4558:
	strb r1, [r0]
	ldr r3, _080D4574  @ =0x00001172
	add r0, r2, r3
	add r0, r4, r0
	ldr r3, _080D4570  @ =0x00000F12
	add r1, r2, r3
	add r1, r4, r1
	ldrb r1, [r1]
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
_080D4570:
	.4byte 0x00000F12
_080D4574:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080D44F0

	THUMB_FUNC_START sub_080D4578
sub_080D4578: @ 0x080D4578
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r2, _080D45AC  @ =gRam
	ldr r1, _080D45B0  @ =0x00000FD2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D4656
	sub r1, r1, #176
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D45B8
	ldr r1, _080D45B4  @ =0x00001122
	add r0, r2, r1
	add r0, r4, r0
	ldrb r2, [r0]
	mov r1, #191
	and r1, r1, r2
	strb r1, [r0]
	b _080D45CA
_080D45AC:
	.4byte gRam
_080D45B0:
	.4byte 0x00000FD2
_080D45B4:
	.4byte 0x00001122
_080D45B8:
	ldr r0, _080D4638  @ =0x00001122
	add r2, r2, r0
	add r2, r4, r2
	ldrb r1, [r2]
	mov r0, #191
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2]
_080D45CA:
	add r0, r4, #0
	bl sub_080C6240
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D4656
	add r0, r4, #0
	bl sub_080C841C
	add r6, r0, #0
	cmp r6, #0
	bne _080D4656
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r5, _080D463C  @ =gRam
	ldr r1, _080D4640  @ =0x00001152
	add r0, r5, r1
	add r2, r4, r0
	ldrb r0, [r2]
	sub r0, r0, #2
	strb r0, [r2]
	sub r1, r1, #16
	add r0, r5, r1
	add r3, r4, r0
	ldrb r1, [r3]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D4622
	strb r6, [r3]
	mov r0, #16
	strb r0, [r2]
	ldr r2, _080D4644  @ =0x00000FC2
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #12
	strb r1, [r0]
_080D4622:
	ldr r1, _080D4644  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	cmp r1, #0
	bne _080D464C
	ldr r2, _080D4648  @ =0x00000F92
	add r0, r5, r2
	add r0, r4, r0
	b _080D4654
	.byte 0x00
	.byte 0x00
_080D4638:
	.4byte 0x00001122
_080D463C:
	.4byte gRam
_080D4640:
	.4byte 0x00001152
_080D4644:
	.4byte 0x00000FC2
_080D4648:
	.4byte 0x00000F92
_080D464C:
	ldr r1, _080D465C  @ =0x00000F92
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #1
_080D4654:
	strb r1, [r0]
_080D4656:
	pop {r4-r6}
	pop {r0}
	bx r0
_080D465C:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080D4578

	THUMB_FUNC_START sub_080D4660
sub_080D4660: @ 0x080D4660
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D46F8
	bl sub_0809E3CC
	cmp r0, #0
	bne _080D46F8
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D46F8
	ldr r5, _080D4700  @ =gRam
	ldr r1, _080D4704  @ =0x000016D5
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _080D46F8
	ldr r0, _080D4708  @ =gPendantCount
	ldrb r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #7
	bne _080D46F8
	ldr r1, _080D470C  @ =gUnknown_03003E70
	mov r0, #1
	strb r0, [r1]
	ldr r1, _080D4710  @ =0x00000546
	add r0, r5, r1
	ldrh r1, [r0]
	mov r0, #129
	lsl r0, r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _080D46F8
	ldr r0, _080D4714  @ =0x00000A3C
	add r1, r5, r0
	mov r0, #25
	strh r0, [r1]
	ldr r0, _080D4718  @ =0x0000180D
	add r1, r5, r0
	mov r0, #1
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #9
	bl sub_080D4DA4
	add r0, r4, #0
	mov r1, #11
	bl sub_080D4DA4
	add r0, r4, #0
	mov r1, #15
	bl sub_080D4DA4
	add r0, r4, #0
	bl sub_080D5414
	ldr r0, _080D471C  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D4720  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #240
	strb r1, [r0]
_080D46F8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D4700:
	.4byte gRam
_080D4704:
	.4byte 0x000016D5
_080D4708:
	.4byte gPendantCount
_080D470C:
	.4byte gUnknown_03003E70
_080D4710:
	.4byte 0x00000546
_080D4714:
	.4byte 0x00000A3C
_080D4718:
	.4byte 0x0000180D
_080D471C:
	.4byte 0x00000F52
_080D4720:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080D4660

	THUMB_FUNC_START sub_080D4724
sub_080D4724: @ 0x080D4724
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080D4764  @ =gRam
	ldr r1, _080D4768  @ =0x00000FC2
	add r0, r5, r1
	add r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #0
	bne _080D474E
	add r0, r4, #0
	bl sub_080D5464
	ldr r1, _080D476C  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #192
	strb r0, [r6]
_080D474E:
	ldr r0, _080D4770  @ =0x00001809
	add r1, r5, r0
	mov r0, #10
	strb r0, [r1]
	ldr r0, _080D4774  @ =0x00001770
	add r1, r5, r0
	mov r0, #1
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
_080D4764:
	.4byte gRam
_080D4768:
	.4byte 0x00000FC2
_080D476C:
	.4byte 0x00000F52
_080D4770:
	.4byte 0x00001809
_080D4774:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080D4724

	THUMB_FUNC_START sub_080D4778
sub_080D4778: @ 0x080D4778
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080D47BC  @ =gRam
	ldr r1, _080D47C0  @ =0x00000FC2
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D47A6
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #255
	bl sub_080D4AC4
	ldr r0, _080D47C4  @ =0x00000F52
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #8
	strb r0, [r5]
_080D47A6:
	ldr r0, _080D47C8  @ =0x00001809
	add r1, r6, r0
	mov r0, #10
	strb r0, [r1]
	ldr r0, _080D47CC  @ =0x00001770
	add r1, r6, r0
	mov r0, #1
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
_080D47BC:
	.4byte gRam
_080D47C0:
	.4byte 0x00000FC2
_080D47C4:
	.4byte 0x00000F52
_080D47C8:
	.4byte 0x00001809
_080D47CC:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080D4778

	THUMB_FUNC_START sub_080D47D0
sub_080D47D0: @ 0x080D47D0
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080D4814  @ =gRam
	ldr r1, _080D4818  @ =0x00000FC2
	add r0, r5, r1
	add r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #0
	bne _080D47FE
	add r0, r4, #0
	mov r1, #1
	mov r2, #255
	bl sub_080D4AC4
	ldr r1, _080D481C  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #16
	strb r0, [r6]
_080D47FE:
	ldr r0, _080D4820  @ =0x00001809
	add r1, r5, r0
	mov r0, #11
	strb r0, [r1]
	ldr r0, _080D4824  @ =0x00001770
	add r1, r5, r0
	mov r0, #1
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
_080D4814:
	.4byte gRam
_080D4818:
	.4byte 0x00000FC2
_080D481C:
	.4byte 0x00000F52
_080D4820:
	.4byte 0x00001809
_080D4824:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080D47D0

	THUMB_FUNC_START sub_080D4828
sub_080D4828: @ 0x080D4828
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r5, _080D487C  @ =gRam
	ldr r1, _080D4880  @ =0x00000FC2
	add r0, r5, r1
	add r0, r6, r0
	ldrb r4, [r0]
	cmp r4, #0
	bne _080D4876
	ldr r1, _080D4884  @ =0x000009C6
	add r0, r5, r1
	ldrh r1, [r0]
	ldr r0, _080D4888  @ =gUnknown_02002280
	add r1, r1, r0
	ldrb r0, [r1]
	mov r2, #64
	orr r0, r0, r2
	strb r0, [r1]
	ldr r1, _080D488C  @ =0x00001776
	add r0, r5, r1
	strb r4, [r0]
	mov r0, #1
	bl sub_080A1588
	mov r0, #179
	lsl r0, r0, #5
	add r1, r5, r0
	mov r0, #5
	strb r0, [r1]
	ldr r1, _080D4890  @ =0x00001809
	add r0, r5, r1
	strb r4, [r0]
	ldr r0, _080D4894  @ =0x00000F52
	add r1, r5, r0
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D4876:
	pop {r4-r6}
	pop {r0}
	bx r0
_080D487C:
	.4byte gRam
_080D4880:
	.4byte 0x00000FC2
_080D4884:
	.4byte 0x000009C6
_080D4888:
	.4byte gUnknown_02002280
_080D488C:
	.4byte 0x00001776
_080D4890:
	.4byte 0x00001809
_080D4894:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D4828

	THUMB_FUNC_START sub_080D4898
sub_080D4898: @ 0x080D4898
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	add r0, r4, #0
	bl sub_080D53CC
	ldr r5, _080D4910  @ =gRam
	ldr r1, _080D4914  @ =0x00000F62
	add r0, r5, r1
	add r3, r4, r0
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _080D48D0
	add r1, r1, #32
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldr r1, _080D4918  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
_080D48D0:
	ldr r0, _080D491C  @ =0x00000FB2
	add r2, r5, r0
	add r2, r6, r2
	ldrb r0, [r3]
	lsr r0, r0, #2
	mov r1, #3
	and r0, r0, r1
	strb r0, [r2]
	ldrb r0, [r3]
	lsr r2, r0, #5
	ldr r0, _080D4920  @ =0x00000F92
	add r1, r5, r0
	add r1, r6, r1
	ldr r0, _080D4924  @ =gUnknown_08174FE4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080D4928  @ =gUnknown_08174FED
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D490A
	ldrb r1, [r3]
	lsr r1, r1, #2
	mov r0, #1
	and r1, r1, r0
	add r0, r6, #0
	bl sub_080D4AC4
_080D490A:
	pop {r4-r6}
	pop {r0}
	bx r0
_080D4910:
	.4byte gRam
_080D4914:
	.4byte 0x00000F62
_080D4918:
	.4byte 0x00000FA2
_080D491C:
	.4byte 0x00000FB2
_080D4920:
	.4byte 0x00000F92
_080D4924:
	.4byte gUnknown_08174FE4
_080D4928:
	.4byte gUnknown_08174FED
	THUMB_FUNC_END sub_080D4898

	THUMB_FUNC_START sub_080D492C
sub_080D492C: @ 0x080D492C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	add r0, r4, #0
	bl sub_080D53CC
	ldr r5, _080D4984  @ =gRam
	ldr r1, _080D4988  @ =0x00000F62
	add r0, r5, r1
	add r3, r4, r0
	ldrb r0, [r3]
	add r0, r0, #1
	mov r7, #0
	strb r0, [r3]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D4964
	add r1, r1, #32
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldr r1, _080D498C  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	strb r7, [r0]
_080D4964:
	ldr r0, _080D4990  @ =0x00000FB2
	add r2, r5, r0
	add r2, r6, r2
	ldrb r0, [r3]
	lsr r0, r0, #2
	mov r1, #3
	and r0, r0, r1
	strb r0, [r2]
	ldr r1, _080D4994  @ =0x00000F92
	add r0, r5, r1
	add r0, r6, r0
	strb r7, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D4984:
	.4byte gRam
_080D4988:
	.4byte 0x00000F62
_080D498C:
	.4byte 0x00000FA2
_080D4990:
	.4byte 0x00000FB2
_080D4994:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080D492C

	THUMB_FUNC_START sub_080D4998
sub_080D4998: @ 0x080D4998
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C6240
	ldr r5, _080D49F8  @ =gRam
	ldr r1, _080D49FC  @ =0x00000F62
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D49CC
	add r0, r4, #0
	bl Sprite3_Move
	ldr r3, _080D4A00  @ =0x00000996
	add r0, r5, r3
	ldrb r1, [r0]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080D49F0
	add r0, r4, #0
	bl sub_080D4A0C
_080D49CC:
	mov r0, #1
	cmp r0, #0
	beq _080D49F0
	ldr r2, _080D49F8  @ =gRam
	ldr r0, _080D4A04  @ =0x00000F72
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _080D49F0
	ldr r3, _080D4A08  @ =0x00000FA2
	add r0, r2, r3
	add r0, r4, r0
	strb r1, [r0]
_080D49F0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D49F8:
	.4byte gRam
_080D49FC:
	.4byte 0x00000F62
_080D4A00:
	.4byte 0x00000996
_080D4A04:
	.4byte 0x00000F72
_080D4A08:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080D4998

	THUMB_FUNC_START sub_080D4A0C
sub_080D4A0C: @ 0x080D4A0C
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r0, #98
	add r1, r5, #0
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080D4A92
	ldr r2, _080D4A98  @ =gRam
	ldr r0, _080D4A9C  @ =0x00000EE2
	add r1, r2, r0
	add r1, r4, r1
	mov r3, #150
	lsl r3, r3, #4
	add r0, r2, r3
	ldrb r0, [r0]
	mov r3, #0
	strb r0, [r1]
	ldr r6, _080D4AA0  @ =0x00000F02
	add r0, r2, r6
	add r0, r4, r0
	ldr r6, _080D4AA4  @ =0x00000961
	add r1, r2, r6
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D4AA8  @ =0x00000ED2
	add r0, r2, r1
	add r0, r4, r0
	add r6, r6, #3
	add r1, r2, r6
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D4AAC  @ =0x00000EF2
	add r0, r2, r1
	add r0, r4, r0
	add r6, r6, #1
	add r1, r2, r6
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D4AB0  @ =0x00001052
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	ldr r6, _080D4AB4  @ =0x00000F72
	add r0, r2, r6
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
	ldr r1, _080D4AB8  @ =0x00000F92
	add r0, r2, r1
	add r1, r4, r0
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r6, _080D4ABC  @ =0x00001122
	add r0, r2, r6
	add r1, r4, r0
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080D4AC0  @ =0x00001012
	add r2, r2, r0
	add r2, r4, r2
	strb r3, [r2]
_080D4A92:
	pop {r4-r6}
	pop {r0}
	bx r0
_080D4A98:
	.4byte gRam
_080D4A9C:
	.4byte 0x00000EE2
_080D4AA0:
	.4byte 0x00000F02
_080D4AA4:
	.4byte 0x00000961
_080D4AA8:
	.4byte 0x00000ED2
_080D4AAC:
	.4byte 0x00000EF2
_080D4AB0:
	.4byte 0x00001052
_080D4AB4:
	.4byte 0x00000F72
_080D4AB8:
	.4byte 0x00000F92
_080D4ABC:
	.4byte 0x00001122
_080D4AC0:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080D4A0C

	THUMB_FUNC_START sub_080D4AC4
sub_080D4AC4: @ 0x080D4AC4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	lsl r1, r1, #24
	lsr r4, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	str r2, [sp]
	mov r0, #98
	mov r1, r10
	bl sub_080CA538
	add r3, r0, #0
	cmp r3, #0
	bge _080D4AF0
	b _080D4D22
_080D4AF0:
	ldr r1, _080D4D34  @ =gRam
	mov r0, #150
	lsl r0, r0, #4
	add r5, r1, r0
	ldrh r0, [r5]
	sub r0, r0, #4
	strh r0, [r5]
	ldr r6, _080D4D38  @ =gUnknown_03003112
	add r2, r3, r6
	ldrb r0, [r5]
	strb r0, [r2]
	ldr r7, _080D4D3C  @ =gUnknown_03003132
	add r2, r3, r7
	ldr r6, _080D4D40  @ =gUnknown_03002B91
	ldrb r0, [r6]
	strb r0, [r2]
	ldr r7, _080D4D44  @ =0x00000964
	add r6, r1, r7
	ldrh r0, [r6]
	add r0, r0, #4
	strh r0, [r6]
	ldr r0, _080D4D48  @ =gUnknown_03003102
	add r2, r3, r0
	ldrb r0, [r6]
	strb r0, [r2]
	ldr r7, _080D4D4C  @ =gUnknown_03003122
	add r2, r3, r7
	ldr r7, _080D4D50  @ =gUnknown_03002B95
	ldrb r0, [r7]
	strb r0, [r2]
	ldr r2, _080D4D54  @ =gUnknown_03003282
	add r0, r3, r2
	mov r7, #2
	strb r7, [r0]
	ldr r2, _080D4D58  @ =gUnknown_03003192
	add r0, r3, r2
	strb r7, [r0]
	ldr r2, _080D4D5C  @ =gUnknown_03003242
	add r0, r3, r2
	mov r2, #0
	strb r2, [r0]
	ldr r0, _080D4D60  @ =gUnknown_03003152
	add r2, r3, r0
	ldr r0, _080D4D64  @ =gUnknown_08175058
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, _080D4D68  @ =gUnknown_03003142
	add r2, r3, r0
	ldr r0, _080D4D6C  @ =gUnknown_08175060
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, _080D4D70  @ =gUnknown_030031C2
	add r2, r3, r0
	ldr r0, _080D4D74  @ =gUnknown_08175068
	add r0, r4, r0
	ldrb r0, [r0]
	mov r9, r0
	strb r0, [r2]
	ldr r0, _080D4D78  @ =gUnknown_03003352
	add r2, r3, r0
	ldr r0, _080D4D7C  @ =gUnknown_0817506C
	add r0, r4, r0
	ldrb r0, [r0]
	mov r8, r0
	strb r0, [r2]
	strb r4, [r5]
	ldr r1, _080D4D80  @ =gUnknown_030031A2
	add r0, r3, r1
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r0]
	mov r0, #98
	mov r1, r10
	bl sub_080CA538
	add r3, r0, #0
	cmp r3, #0
	bge _080D4B92
	b _080D4D22
_080D4B92:
	ldrh r0, [r5]
	sub r0, r0, #4
	strh r0, [r5]
	ldr r0, _080D4D38  @ =gUnknown_03003112
	add r1, r3, r0
	ldrb r0, [r5]
	strb r0, [r1]
	ldr r2, _080D4D3C  @ =gUnknown_03003132
	add r1, r3, r2
	ldr r2, _080D4D40  @ =gUnknown_03002B91
	ldrb r0, [r2]
	strb r0, [r1]
	ldrh r0, [r6]
	add r0, r0, #4
	strh r0, [r6]
	ldr r0, _080D4D48  @ =gUnknown_03003102
	add r1, r3, r0
	ldrb r0, [r6]
	strb r0, [r1]
	ldr r2, _080D4D4C  @ =gUnknown_03003122
	add r1, r3, r2
	ldr r2, _080D4D50  @ =gUnknown_03002B95
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _080D4D54  @ =gUnknown_03003282
	add r0, r3, r1
	strb r7, [r0]
	ldr r2, _080D4D58  @ =gUnknown_03003192
	add r0, r3, r2
	strb r7, [r0]
	ldr r1, _080D4D5C  @ =gUnknown_03003242
	add r0, r3, r1
	mov r2, #0
	strb r2, [r0]
	ldr r0, _080D4D60  @ =gUnknown_03003152
	add r1, r3, r0
	ldr r0, _080D4D84  @ =gUnknown_0817505A
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080D4D68  @ =gUnknown_03003142
	add r1, r3, r2
	ldr r0, _080D4D88  @ =gUnknown_08175062
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080D4D70  @ =gUnknown_030031C2
	add r0, r3, r1
	mov r2, r9
	strb r2, [r0]
	ldr r1, _080D4D78  @ =gUnknown_03003352
	add r0, r3, r1
	mov r2, r8
	strb r2, [r0]
	strb r4, [r5]
	ldr r1, _080D4D80  @ =gUnknown_030031A2
	add r0, r3, r1
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r0]
	mov r0, #98
	mov r1, r10
	bl sub_080CA538
	add r3, r0, #0
	cmp r3, #0
	bge _080D4C1A
	b _080D4D22
_080D4C1A:
	ldrh r0, [r5]
	sub r0, r0, #4
	strh r0, [r5]
	ldr r0, _080D4D38  @ =gUnknown_03003112
	add r1, r3, r0
	ldrb r0, [r5]
	strb r0, [r1]
	ldr r2, _080D4D3C  @ =gUnknown_03003132
	add r1, r3, r2
	ldr r2, _080D4D40  @ =gUnknown_03002B91
	ldrb r0, [r2]
	strb r0, [r1]
	ldrh r0, [r6]
	add r0, r0, #4
	strh r0, [r6]
	ldr r0, _080D4D48  @ =gUnknown_03003102
	add r1, r3, r0
	ldrb r0, [r6]
	strb r0, [r1]
	ldr r2, _080D4D4C  @ =gUnknown_03003122
	add r1, r3, r2
	ldr r2, _080D4D50  @ =gUnknown_03002B95
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _080D4D54  @ =gUnknown_03003282
	add r0, r3, r1
	strb r7, [r0]
	ldr r2, _080D4D58  @ =gUnknown_03003192
	add r0, r3, r2
	strb r7, [r0]
	ldr r1, _080D4D5C  @ =gUnknown_03003242
	add r0, r3, r1
	mov r2, #0
	strb r2, [r0]
	ldr r0, _080D4D60  @ =gUnknown_03003152
	add r1, r3, r0
	ldr r0, _080D4D8C  @ =gUnknown_0817505C
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080D4D68  @ =gUnknown_03003142
	add r1, r3, r2
	ldr r0, _080D4D90  @ =gUnknown_08175064
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080D4D70  @ =gUnknown_030031C2
	add r1, r3, r0
	ldr r0, _080D4D94  @ =gUnknown_0817506A
	add r0, r4, r0
	ldrb r0, [r0]
	mov r9, r0
	strb r0, [r1]
	ldr r2, _080D4D78  @ =gUnknown_03003352
	add r1, r3, r2
	ldr r0, _080D4D98  @ =gUnknown_0817506E
	add r0, r4, r0
	ldrb r0, [r0]
	mov r8, r0
	strb r0, [r1]
	strb r4, [r5]
	ldr r1, _080D4D80  @ =gUnknown_030031A2
	add r0, r3, r1
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r0]
	mov r0, #98
	mov r1, r10
	bl sub_080CA538
	add r3, r0, #0
	cmp r3, #0
	blt _080D4D22
	ldrh r0, [r5]
	sub r0, r0, #4
	strh r0, [r5]
	ldr r0, _080D4D38  @ =gUnknown_03003112
	add r1, r3, r0
	ldrb r0, [r5]
	strb r0, [r1]
	ldr r2, _080D4D3C  @ =gUnknown_03003132
	add r1, r3, r2
	ldr r2, _080D4D40  @ =gUnknown_03002B91
	ldrb r0, [r2]
	strb r0, [r1]
	ldrh r0, [r6]
	add r0, r0, #4
	strh r0, [r6]
	ldr r0, _080D4D48  @ =gUnknown_03003102
	add r1, r3, r0
	ldrb r0, [r6]
	strb r0, [r1]
	ldr r2, _080D4D4C  @ =gUnknown_03003122
	add r1, r3, r2
	ldr r6, _080D4D50  @ =gUnknown_03002B95
	ldrb r0, [r6]
	strb r0, [r1]
	ldr r1, _080D4D54  @ =gUnknown_03003282
	add r0, r3, r1
	strb r7, [r0]
	ldr r2, _080D4D58  @ =gUnknown_03003192
	add r0, r3, r2
	strb r7, [r0]
	ldr r6, _080D4D5C  @ =gUnknown_03003242
	add r0, r3, r6
	mov r7, #0
	strb r7, [r0]
	ldr r0, _080D4D60  @ =gUnknown_03003152
	add r1, r3, r0
	ldr r0, _080D4D9C  @ =gUnknown_0817505E
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080D4D68  @ =gUnknown_03003142
	add r1, r3, r2
	ldr r0, _080D4DA0  @ =gUnknown_08175066
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r6, _080D4D70  @ =gUnknown_030031C2
	add r0, r3, r6
	mov r7, r9
	strb r7, [r0]
	ldr r1, _080D4D78  @ =gUnknown_03003352
	add r0, r3, r1
	mov r2, r8
	strb r2, [r0]
	ldr r6, _080D4D80  @ =gUnknown_030031A2
	add r0, r3, r6
	mov r7, sp
	ldrb r7, [r7]
	strb r7, [r0]
_080D4D22:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D4D34:
	.4byte gRam
_080D4D38:
	.4byte gUnknown_03003112
_080D4D3C:
	.4byte gUnknown_03003132
_080D4D40:
	.4byte gUnknown_03002B91
_080D4D44:
	.4byte 0x00000964
_080D4D48:
	.4byte gUnknown_03003102
_080D4D4C:
	.4byte gUnknown_03003122
_080D4D50:
	.4byte gUnknown_03002B95
_080D4D54:
	.4byte gUnknown_03003282
_080D4D58:
	.4byte gUnknown_03003192
_080D4D5C:
	.4byte gUnknown_03003242
_080D4D60:
	.4byte gUnknown_03003152
_080D4D64:
	.4byte gUnknown_08175058
_080D4D68:
	.4byte gUnknown_03003142
_080D4D6C:
	.4byte gUnknown_08175060
_080D4D70:
	.4byte gUnknown_030031C2
_080D4D74:
	.4byte gUnknown_08175068
_080D4D78:
	.4byte gUnknown_03003352
_080D4D7C:
	.4byte gUnknown_0817506C
_080D4D80:
	.4byte gUnknown_030031A2
_080D4D84:
	.4byte gUnknown_0817505A
_080D4D88:
	.4byte gUnknown_08175062
_080D4D8C:
	.4byte gUnknown_0817505C
_080D4D90:
	.4byte gUnknown_08175064
_080D4D94:
	.4byte gUnknown_0817506A
_080D4D98:
	.4byte gUnknown_0817506E
_080D4D9C:
	.4byte gUnknown_0817505E
_080D4DA0:
	.4byte gUnknown_08175066
	THUMB_FUNC_END sub_080D4AC4

	THUMB_FUNC_START sub_080D4DA4
sub_080D4DA4: @ 0x080D4DA4
	push {r4-r6,lr}
	add r2, r0, #0
	add r5, r1, #0
	lsl r2, r2, #24
	lsr r2, r2, #24
	lsl r5, r5, #24
	lsr r5, r5, #24
	mov r0, #98
	add r1, r2, #0
	bl sub_080CA538
	ldr r4, _080D4E48  @ =gRam
	ldr r1, _080D4E4C  @ =0x00001122
	add r6, r4, r1
	add r6, r0, r6
	strb r5, [r6]
	ldr r2, _080D4E50  @ =0x00000EE2
	add r1, r4, r2
	add r1, r0, r1
	ldr r5, _080D4E54  @ =0x000016C4
	add r3, r4, r5
	ldrb r2, [r3]
	strb r2, [r1]
	ldr r2, _080D4E58  @ =0x00000F02
	add r1, r4, r2
	add r1, r0, r1
	add r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	strb r2, [r1]
	ldrh r2, [r3]
	add r2, r2, #8
	ldr r3, _080D4E5C  @ =0x00000ED2
	add r1, r4, r3
	add r1, r0, r1
	strb r2, [r1]
	ldr r5, _080D4E60  @ =0x00000EF2
	add r1, r4, r5
	add r1, r0, r1
	lsr r2, r2, #8
	strb r2, [r1]
	ldr r2, _080D4E64  @ =0x00000F92
	add r1, r4, r2
	add r1, r0, r1
	mov r2, #4
	strb r2, [r1]
	ldr r3, _080D4E68  @ =0x00001052
	add r1, r4, r3
	add r1, r0, r1
	mov r3, #3
	mov r2, #3
	strb r2, [r1]
	ldr r5, _080D4E6C  @ =0x00001012
	add r1, r4, r5
	add r1, r0, r1
	mov r2, #64
	strb r2, [r1]
	ldr r2, _080D4E70  @ =0x00000FC2
	add r1, r4, r2
	add r1, r0, r1
	mov r2, #228
	strb r2, [r1]
	ldrb r2, [r6]
	lsr r2, r2, #1
	and r2, r2, r3
	sub r5, r5, #240
	add r3, r4, r5
	add r3, r0, r3
	ldr r1, _080D4E74  @ =gUnknown_08175070
	add r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r3]
	ldr r1, _080D4E78  @ =0x00000F12
	add r4, r4, r1
	add r0, r0, r4
	ldr r1, _080D4E7C  @ =gUnknown_08175074
	add r2, r2, r1
	ldrb r1, [r2]
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
_080D4E48:
	.4byte gRam
_080D4E4C:
	.4byte 0x00001122
_080D4E50:
	.4byte 0x00000EE2
_080D4E54:
	.4byte 0x000016C4
_080D4E58:
	.4byte 0x00000F02
_080D4E5C:
	.4byte 0x00000ED2
_080D4E60:
	.4byte 0x00000EF2
_080D4E64:
	.4byte 0x00000F92
_080D4E68:
	.4byte 0x00001052
_080D4E6C:
	.4byte 0x00001012
_080D4E70:
	.4byte 0x00000FC2
_080D4E74:
	.4byte gUnknown_08175070
_080D4E78:
	.4byte 0x00000F12
_080D4E7C:
	.4byte gUnknown_08175074
	THUMB_FUNC_END sub_080D4DA4

	THUMB_FUNC_START sub_080D4E80
sub_080D4E80: @ 0x080D4E80
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl Sprite3_Move
	ldr r2, _080D4EC0  @ =gRam
	ldr r1, _080D4EC4  @ =0x00000FC2
	add r0, r2, r1
	add r3, r4, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _080D4EBA
	ldr r0, _080D4EC8  @ =0x00000F52
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #208
	strb r0, [r3]
	ldr r3, _080D4ECC  @ =0x00000F62
	add r1, r2, r3
	add r1, r4, r1
	ldr r3, _080D4ED0  @ =0x00001122
	add r0, r2, r3
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
_080D4EBA:
	pop {r4}
	pop {r0}
	bx r0
_080D4EC0:
	.4byte gRam
_080D4EC4:
	.4byte 0x00000FC2
_080D4EC8:
	.4byte 0x00000F52
_080D4ECC:
	.4byte 0x00000F62
_080D4ED0:
	.4byte 0x00001122
	THUMB_FUNC_END sub_080D4E80

	THUMB_FUNC_START sub_080D4ED4
sub_080D4ED4: @ 0x080D4ED4
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r5, _080D4F24  @ =gRam
	ldr r1, _080D4F28  @ =0x00001122
	add r0, r5, r1
	add r4, r3, r0
	ldrb r0, [r4]
	mov r2, #241
	and r2, r2, r0
	strb r2, [r4]
	lsl r0, r3, #1
	ldr r6, _080D4F2C  @ =0x00000996
	add r1, r5, r6
	ldrb r1, [r1]
	eor r0, r0, r1
	mov r1, #14
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4]
	ldr r1, _080D4F30  @ =0x00000FC2
	add r0, r5, r1
	add r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D4F1E
	ldr r6, _080D4F34  @ =0x00000F52
	add r1, r5, r6
	add r1, r3, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D4F38  @ =0x00000F62
	add r0, r5, r1
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r4]
_080D4F1E:
	pop {r4-r6}
	pop {r0}
	bx r0
_080D4F24:
	.4byte gRam
_080D4F28:
	.4byte 0x00001122
_080D4F2C:
	.4byte 0x00000996
_080D4F30:
	.4byte 0x00000FC2
_080D4F34:
	.4byte 0x00000F52
_080D4F38:
	.4byte 0x00000F62
	THUMB_FUNC_END sub_080D4ED4

	THUMB_FUNC_START sub_080D4F3C
sub_080D4F3C: @ 0x080D4F3C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl Sprite3_Move
	ldr r2, _080D4F98  @ =gRam
	ldr r1, _080D4F9C  @ =0x00000FC2
	add r0, r2, r1
	add r3, r4, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _080D4F74
	ldr r0, _080D4FA0  @ =0x00000F22
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	lsl r0, r0, #1
	strb r0, [r1]
	ldr r0, _080D4FA4  @ =0x00000F12
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	lsl r0, r0, #1
	strb r0, [r1]
	mov r0, #6
	strb r0, [r3]
_080D4F74:
	ldr r3, _080D4FA8  @ =0x00001062
	add r1, r2, r3
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _080D4F90
	sub r3, r3, #192
	add r0, r2, r3
	add r0, r5, r0
	strb r1, [r0]
_080D4F90:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D4F98:
	.4byte gRam
_080D4F9C:
	.4byte 0x00000FC2
_080D4FA0:
	.4byte 0x00000F22
_080D4FA4:
	.4byte 0x00000F12
_080D4FA8:
	.4byte 0x00001062
	THUMB_FUNC_END sub_080D4F3C

	THUMB_FUNC_START sub_080D4FAC
sub_080D4FAC: @ 0x080D4FAC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r8
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D5056
	mov r2, #5
	add r6, sp, #4
	ldr r0, _080D5068  @ =0x00000969
	ldr r1, _080D506C  @ =gRam
	add r0, r0, r1
	mov r10, r0
	mov r3, #150
	lsl r3, r3, #4
	add r3, r3, r1
	mov r9, r3
_080D4FE4:
	ldr r0, _080D5070  @ =gUnknown_03003E74
	ldrb r1, [r6]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r1, _080D5074  @ =gUnknown_08175084
	lsl r5, r2, #24
	asr r5, r5, #24
	add r1, r5, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	mov r4, r9
	ldrh r4, [r4]
	add r1, r1, r4
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r7, _080D506C  @ =gRam
	ldr r2, _080D5078  @ =0x00000964
	add r3, r7, r2
	ldr r2, _080D507C  @ =gUnknown_0817508A
	add r2, r5, r2
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080D5080  @ =gUnknown_08175090
	add r3, r5, r3
	ldrb r3, [r3]
	mov r7, r10
	mov r4, #0
	ldrsb r4, [r7, r4]
	lsl r4, r4, #8
	add r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r4, #2
	str r4, [sp]
	bl sub_080C6004
	sub r5, r5, #1
	lsl r5, r5, #24
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	lsr r2, r5, #24
	cmp r5, #0
	bge _080D4FE4
	mov r0, r8
	mov r1, #0
	mov r2, #5
	bl sub_080C6350
_080D5056:
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
_080D5068:
	.4byte 0x00000969
_080D506C:
	.4byte gRam
_080D5070:
	.4byte gUnknown_03003E74
_080D5074:
	.4byte gUnknown_08175084
_080D5078:
	.4byte 0x00000964
_080D507C:
	.4byte gUnknown_0817508A
_080D5080:
	.4byte gUnknown_08175090
	THUMB_FUNC_END sub_080D4FAC

	THUMB_FUNC_START sub_080D5084
sub_080D5084: @ 0x080D5084
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r6, _080D5158  @ =gRam
	ldr r0, _080D515C  @ =0x0000096C
	add r1, r6, r0
	mov r0, #0
	mov r8, r0
	mov r0, #2
	strh r0, [r1]
	ldr r1, _080D5160  @ =gUnknown_08175098
	add r0, r7, #0
	bl sub_080C94D0
	mov r1, #128
	lsl r1, r1, #2
	mov r0, #2
	bl sub_080C6174
	ldr r4, _080D5164  @ =gUnknown_03003E74
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r5, _080D5168  @ =0x00000555
	add r1, r1, r5
	ldrb r3, [r1]
	mov r2, #15
	add r0, r2, #0
	and r0, r0, r3
	mov r3, #144
	orr r0, r0, r3
	strb r0, [r1]
	ldrh r0, [r4]
	add r0, r0, #1
	lsl r0, r0, #3
	add r0, r0, r6
	add r0, r0, r5
	ldrb r1, [r0]
	and r2, r2, r1
	orr r2, r2, r3
	strb r2, [r0]
	add r0, r7, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D514E
	bl sub_0809E3CC
	cmp r0, #0
	bne _080D514E
	add r0, r7, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D514E
	ldr r1, _080D516C  @ =0x000016D5
	add r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _080D514E
	ldr r1, _080D5170  @ =gUnknown_03003E70
	mov r0, #1
	strb r0, [r1]
	ldr r1, _080D5174  @ =0x00000546
	add r0, r6, r1
	ldrh r1, [r0]
	mov r0, #129
	lsl r0, r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _080D514E
	ldr r1, _080D5178  @ =0x00001776
	add r0, r6, r1
	mov r1, r8
	strb r1, [r0]
	ldr r0, _080D517C  @ =0x00000F62
	add r4, r6, r0
	add r4, r7, r4
	ldrb r0, [r4]
	add r0, r0, #76
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080A1588
	ldr r1, _080D5180  @ =0x00000FA2
	add r0, r6, r1
	add r0, r7, r0
	mov r1, r8
	strb r1, [r0]
	ldr r0, _080D5184  @ =0x000016B3
	add r2, r6, r0
	mov r0, #1
	ldrb r4, [r4]
	lsl r0, r0, r4
	ldrb r1, [r2]
	orr r0, r0, r1
	strb r0, [r2]
_080D514E:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080D5158:
	.4byte gRam
_080D515C:
	.4byte 0x0000096C
_080D5160:
	.4byte gUnknown_08175098
_080D5164:
	.4byte gUnknown_03003E74
_080D5168:
	.4byte 0x00000555
_080D516C:
	.4byte 0x000016D5
_080D5170:
	.4byte gUnknown_03003E70
_080D5174:
	.4byte 0x00000546
_080D5178:
	.4byte 0x00001776
_080D517C:
	.4byte 0x00000F62
_080D5180:
	.4byte 0x00000FA2
_080D5184:
	.4byte 0x000016B3
	THUMB_FUNC_END sub_080D5084

	THUMB_FUNC_START sub_080D5188
sub_080D5188: @ 0x080D5188
	push {r4,r5,lr}
	mov r5, #0
	mov r4, #3
	ldr r1, _080D5268  @ =gRam
	ldr r2, _080D526C  @ =0x000009DA
	add r0, r1, r2
	ldr r3, _080D5270  @ =gUnknown_081750A8
	ldrh r0, [r0]
	add r2, r1, #0
	ldrb r1, [r3, #3]
	cmp r0, r1
	beq _080D51B0
	add r1, r0, #0
_080D51A2:
	sub r4, r4, #1
	cmp r4, #0
	blt _080D51C4
	add r0, r4, r3
	ldrb r0, [r0]
	cmp r1, r0
	bne _080D51A2
_080D51B0:
	cmp r4, #0
	blt _080D51C4
	ldr r3, _080D5274  @ =0x000016B3
	add r0, r2, r3
	ldrb r0, [r0]
	asr r0, r0, r4
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080D51C6
_080D51C4:
	mov r5, #1
_080D51C6:
	cmp r5, #0
	bne _080D5262
	mov r1, #15
	ldr r3, _080D5278  @ =0x00000FB1
	add r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #9
	bne _080D51E0
	add r3, r3, #80
	add r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #98
	beq _080D5262
_080D51E0:
	sub r1, r1, #1
	cmp r1, #0
	blt _080D5200
	ldr r3, _080D527C  @ =0x00000FA2
	add r0, r2, r3
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #9
	bne _080D51E0
	add r3, r3, #80
	add r0, r2, r3
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #98
	bne _080D51E0
	mov r5, #1
_080D5200:
	cmp r5, #0
	bne _080D5262
	mov r0, #98
	mov r1, #0
	mov r2, #14
	bl sub_080C9AAC
	ldr r3, _080D5268  @ =gRam
	ldr r5, _080D5280  @ =0x00000EE2
	add r1, r3, r5
	add r1, r0, r1
	mov r2, #126
	strb r2, [r1]
	ldr r2, _080D5284  @ =0x00000F02
	add r1, r3, r2
	add r1, r0, r1
	ldr r5, _080D5288  @ =0x000016C5
	add r2, r3, r5
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r2, _080D528C  @ =0x00000ED2
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #110
	strb r2, [r1]
	ldr r5, _080D5290  @ =0x00000EF2
	add r1, r3, r5
	add r1, r0, r1
	ldr r5, _080D5294  @ =0x000015F5
	add r2, r3, r5
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r2, _080D5298  @ =0x00001052
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #5
	strb r2, [r1]
	ldr r5, _080D529C  @ =0x000010F2
	add r1, r3, r5
	add r1, r0, r1
	mov r5, #161
	lsl r5, r5, #4
	add r2, r3, r5
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r1, _080D52A0  @ =0x00000F62
	add r3, r3, r1
	add r0, r0, r3
	strb r4, [r0]
_080D5262:
	pop {r4,r5}
	pop {r0}
	bx r0
_080D5268:
	.4byte gRam
_080D526C:
	.4byte 0x000009DA
_080D5270:
	.4byte gUnknown_081750A8
_080D5274:
	.4byte 0x000016B3
_080D5278:
	.4byte 0x00000FB1
_080D527C:
	.4byte 0x00000FA2
_080D5280:
	.4byte 0x00000EE2
_080D5284:
	.4byte 0x00000F02
_080D5288:
	.4byte 0x000016C5
_080D528C:
	.4byte 0x00000ED2
_080D5290:
	.4byte 0x00000EF2
_080D5294:
	.4byte 0x000015F5
_080D5298:
	.4byte 0x00001052
_080D529C:
	.4byte 0x000010F2
_080D52A0:
	.4byte 0x00000F62
	THUMB_FUNC_END sub_080D5188

	THUMB_FUNC_START sub_080D52A4
sub_080D52A4: @ 0x080D52A4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080D52C4  @ =gRam
	ldr r1, _080D52C8  @ =0x00000EE2
	add r2, r3, r1
	add r2, r0, r2
	ldrb r1, [r2]
	add r1, r1, #6
	strb r1, [r2]
	ldr r1, _080D52CC  @ =0x00000ED2
	add r3, r3, r1
	add r0, r0, r3
	ldrb r1, [r0]
	add r1, r1, #6
	strb r1, [r0]
	bx lr
_080D52C4:
	.4byte gRam
_080D52C8:
	.4byte 0x00000EE2
_080D52CC:
	.4byte 0x00000ED2
	THUMB_FUNC_END sub_080D52A4

	THUMB_FUNC_START sub_080D52D0
sub_080D52D0: @ 0x080D52D0
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D52F0  @ =gUnknown_08174FB4
	ldr r1, _080D52F4  @ =gRam
	ldr r3, _080D52F8  @ =0x00001052
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080D52F0:
	.4byte gUnknown_08174FB4
_080D52F4:
	.4byte gRam
_080D52F8:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080D52D0

	THUMB_FUNC_START sub_080D52FC
sub_080D52FC: @ 0x080D52FC
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r2, _080D5348  @ =gRam
	ldr r1, _080D534C  @ =0x000009AC
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #26
	beq _080D5322
	add r1, r1, #26
	add r0, r2, r1
	ldrh r0, [r0]
	ldr r1, _080D5350  @ =gUnknown_02002280
	add r0, r0, r1
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _080D535C
_080D5322:
	ldr r1, _080D5354  @ =0x00000F52
	add r0, r2, r1
	add r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #5
	beq _080D5334
	add r0, r5, #0
	bl sub_080D4FAC
_080D5334:
	ldr r0, _080D5358  @ =gUnknown_08174FCC
	ldrb r1, [r4]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r5, #0
	bl _call_via_r1
	b _080D5366
	.byte 0x00
	.byte 0x00
_080D5348:
	.4byte gRam
_080D534C:
	.4byte 0x000009AC
_080D5350:
	.4byte gUnknown_02002280
_080D5354:
	.4byte 0x00000F52
_080D5358:
	.4byte gUnknown_08174FCC
_080D535C:
	ldr r1, _080D536C  @ =0x00000FA2
	add r0, r2, r1
	add r0, r5, r0
	mov r1, #0
	strb r1, [r0]
_080D5366:
	pop {r4,r5}
	pop {r0}
	bx r0
_080D536C:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080D52FC

	THUMB_FUNC_START sub_080D5370
sub_080D5370: @ 0x080D5370
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r0, #4
	bl sub_080CF388
	add r0, r4, #0
	bl sub_080C6240
	ldr r1, _080D53A4  @ =gUnknown_08175078
	ldr r0, _080D53A8  @ =gRam
	ldr r2, _080D53AC  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D53A4:
	.4byte gUnknown_08175078
_080D53A8:
	.4byte gRam
_080D53AC:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D5370

	THUMB_FUNC_START sub_080D53B0
sub_080D53B0: @ 0x080D53B0
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080D53C4  @ =gRam
	ldr r2, _080D53C8  @ =0x00000FA2
	add r1, r1, r2
	add r0, r0, r1
	mov r1, #0
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080D53C4:
	.4byte gRam
_080D53C8:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080D53B0

	THUMB_FUNC_START sub_080D53CC
sub_080D53CC: @ 0x080D53CC
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r0, #4
	bl sub_080CF3A0
	ldr r2, _080D5404  @ =gRam
	ldr r1, _080D5408  @ =0x00000F92
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r0, _080D540C  @ =0x00000FB2
	add r2, r2, r0
	add r2, r4, r2
	lsl r1, r1, #2
	ldrb r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r0, _080D5410  @ =gUnknown_08174FF8
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #1
	bl sub_080C9480
	pop {r4}
	pop {r0}
	bx r0
_080D5404:
	.4byte gRam
_080D5408:
	.4byte 0x00000F92
_080D540C:
	.4byte 0x00000FB2
_080D5410:
	.4byte gUnknown_08174FF8
	THUMB_FUNC_END sub_080D53CC

	THUMB_FUNC_START sub_080D5414
sub_080D5414: @ 0x080D5414
	push {r4,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #98
	bl sub_080CA538
	add r4, r0, #0
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r2, _080D5454  @ =gRam
	ldr r1, _080D5458  @ =0x00001052
	add r0, r2, r1
	add r0, r4, r0
	mov r3, #0
	mov r1, #4
	strb r1, [r0]
	ldr r1, _080D545C  @ =0x00001122
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #5
	strb r1, [r0]
	ldr r0, _080D5460  @ =0x00001012
	add r2, r2, r0
	add r4, r4, r2
	strb r3, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D5454:
	.4byte gRam
_080D5458:
	.4byte 0x00001052
_080D545C:
	.4byte 0x00001122
_080D5460:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080D5414

	THUMB_FUNC_START sub_080D5464
sub_080D5464: @ 0x080D5464
	push {r4,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #98
	bl sub_080CA538
	add r4, r0, #0
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r2, _080D54A4  @ =gRam
	ldr r1, _080D54A8  @ =0x00001052
	add r0, r2, r1
	add r0, r4, r0
	mov r3, #0
	mov r1, #1
	strb r1, [r0]
	ldr r1, _080D54AC  @ =0x00001122
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #5
	strb r1, [r0]
	ldr r0, _080D54B0  @ =0x00001012
	add r2, r2, r0
	add r4, r4, r2
	strb r3, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D54A4:
	.4byte gRam
_080D54A8:
	.4byte 0x00001052
_080D54AC:
	.4byte 0x00001122
_080D54B0:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080D5464

	THUMB_FUNC_START sub_080D54B4
sub_080D54B4: @ 0x080D54B4
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r7, #0
	ldr r1, _080D54D4  @ =gRam
	ldr r2, _080D54D8  @ =0x0000165C
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D54E0
	ldr r3, _080D54DC  @ =0x00000FA2
	add r0, r1, r3
	add r0, r6, r0
	strb r7, [r0]
	b _080D55FA
	.byte 0x00
	.byte 0x00
_080D54D4:
	.4byte gRam
_080D54D8:
	.4byte 0x0000165C
_080D54DC:
	.4byte 0x00000FA2
_080D54E0:
	ldr r2, _080D555C  @ =0x000009C6
	add r0, r1, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _080D54F0
	b _080D55F6
_080D54F0:
	ldr r3, _080D5560  @ =0x000009AD
	add r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #35
	beq _080D550A
	ldr r2, _080D5564  @ =0x00001610
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080D550A
	add r0, r6, #0
	bl sub_080C6240
_080D550A:
	add r0, r6, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D5518
	b _080D5650
_080D5518:
	ldr r4, _080D5568  @ =gRam
	ldr r3, _080D556C  @ =0x00001122
	add r0, r4, r3
	add r5, r6, r0
	ldrb r0, [r5]
	mov r2, #63
	and r2, r2, r0
	ldr r3, _080D5570  @ =gUnknown_081750AC
	ldr r1, _080D5574  @ =0x00000996
	add r0, r4, r1
	ldrb r0, [r0]
	lsr r0, r0, #2
	mov r1, #3
	and r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	orr r2, r2, r0
	strb r2, [r5]
	bl sub_0809E3F4
	cmp r0, #0
	bne _080D55F6
	add r0, r6, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D557C
	ldr r2, _080D5578  @ =0x00000F62
	add r0, r4, r2
	add r0, r6, r0
	mov r1, #1
	strb r1, [r0]
	b _080D55FA
_080D555C:
	.4byte 0x000009C6
_080D5560:
	.4byte 0x000009AD
_080D5564:
	.4byte 0x00001610
_080D5568:
	.4byte gRam
_080D556C:
	.4byte 0x00001122
_080D5570:
	.4byte gUnknown_081750AC
_080D5574:
	.4byte 0x00000996
_080D5578:
	.4byte 0x00000F62
_080D557C:
	ldr r3, _080D5658  @ =0x00000F62
	add r0, r4, r3
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D55FA
	ldr r1, _080D565C  @ =0x0000180D
	add r0, r4, r1
	ldr r2, _080D5660  @ =0x000017AA
	add r1, r4, r2
	ldrb r2, [r0]
	ldrb r0, [r1]
	add r3, r2, #0
	orr r3, r3, r0
	ldr r1, _080D5664  @ =0x00001770
	add r0, r4, r1
	ldrb r0, [r0]
	orr r3, r3, r0
	cmp r3, #0
	bne _080D55FA
	ldr r2, _080D5668  @ =0x000009AC
	add r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #9
	bne _080D55FA
	ldr r0, _080D566C  @ =0x000009AD
	add r1, r4, r0
	mov r0, #35
	strb r0, [r1]
	mov r2, #187
	lsl r2, r2, #5
	add r1, r4, r2
	mov r0, #1
	strb r0, [r1]
	ldr r1, _080D5670  @ =0x000009E8
	add r0, r4, r1
	mov r2, #0
	strh r3, [r0]
	ldr r3, _080D5674  @ =0x000016CD
	add r0, r4, r3
	strb r2, [r0]
	ldr r1, _080D5678  @ =0x000016CE
	add r0, r4, r1
	strb r2, [r0]
	add r3, r3, #75
	add r1, r4, r3
	mov r0, #20
	strb r0, [r1]
	ldr r1, _080D567C  @ =0x000009C6
	add r0, r4, r1
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	add r3, r3, #34
	add r1, r4, r3
	strb r0, [r1]
	ldr r1, _080D5680  @ =0x00000FA2
	add r0, r4, r1
	add r0, r6, r0
	strb r2, [r0]
	mov r7, #1
_080D55F6:
	cmp r7, #0
	beq _080D5650
_080D55FA:
	ldr r2, _080D5684  @ =gRam
	ldr r3, _080D5688  @ =0x00000F72
	add r1, r2, r3
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D5618
	ldr r1, _080D5658  @ =0x00000F62
	add r0, r2, r1
	add r0, r6, r0
	mov r1, #1
	strb r1, [r0]
_080D5618:
	ldr r3, _080D568C  @ =0x00000EE2
	add r0, r2, r3
	add r0, r6, r0
	ldr r1, _080D5690  @ =gUnknown_0201094F
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D5694  @ =0x00000F02
	add r0, r2, r1
	add r0, r6, r0
	ldr r1, _080D5698  @ =gUnknown_0201095F
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _080D569C  @ =gUnknown_0201096F
	ldrb r1, [r0]
	add r0, r0, #16
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #8
	sub r3, r3, #16
	add r0, r2, r3
	add r0, r6, r0
	strb r1, [r0]
	add r3, r3, #32
	add r0, r2, r3
	add r0, r6, r0
	lsr r1, r1, #8
	strb r1, [r0]
_080D5650:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D5658:
	.4byte 0x00000F62
_080D565C:
	.4byte 0x0000180D
_080D5660:
	.4byte 0x000017AA
_080D5664:
	.4byte 0x00001770
_080D5668:
	.4byte 0x000009AC
_080D566C:
	.4byte 0x000009AD
_080D5670:
	.4byte 0x000009E8
_080D5674:
	.4byte 0x000016CD
_080D5678:
	.4byte 0x000016CE
_080D567C:
	.4byte 0x000009C6
_080D5680:
	.4byte 0x00000FA2
_080D5684:
	.4byte gRam
_080D5688:
	.4byte 0x00000F72
_080D568C:
	.4byte 0x00000EE2
_080D5690:
	.4byte gUnknown_0201094F
_080D5694:
	.4byte 0x00000F02
_080D5698:
	.4byte gUnknown_0201095F
_080D569C:
	.4byte gUnknown_0201096F
	THUMB_FUNC_END sub_080D54B4

	THUMB_FUNC_START sub_080D56A0
sub_080D56A0: @ 0x080D56A0
	push {r4,r5,lr}
	mov r4, #15
	ldr r2, _080D5728  @ =gUnknown_030031D2
	add r3, r2, #0
	add r3, r3, #80
_080D56AA:
	add r1, r4, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _080D56BC
	add r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D56BC
	strb r0, [r1]
_080D56BC:
	sub r4, r4, #1
	cmp r4, #0
	bge _080D56AA
	lsl r1, r4, #24
	lsr r1, r1, #24
	mov r0, #108
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	bgt _080D56D4
	mov r4, #0
_080D56D4:
	ldr r2, _080D572C  @ =gRam
	ldr r0, _080D5730  @ =0x00000EE2
	add r1, r2, r0
	add r1, r4, r1
	ldr r0, _080D5734  @ =gUnknown_0201094F
	ldrb r0, [r0]
	mov r3, #0
	strb r0, [r1]
	ldr r1, _080D5738  @ =0x00000F02
	add r0, r2, r1
	add r0, r4, r0
	ldr r1, _080D573C  @ =gUnknown_0201095F
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _080D5740  @ =gUnknown_0201096F
	ldrb r1, [r0]
	add r0, r0, #16
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #8
	ldr r5, _080D5744  @ =0x00000ED2
	add r0, r2, r5
	add r0, r4, r0
	strb r1, [r0]
	add r5, r5, #32
	add r0, r2, r5
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r1, _080D5748  @ =0x000010F2
	add r0, r2, r1
	add r0, r4, r0
	strb r3, [r0]
	ldr r5, _080D574C  @ =0x00001172
	add r2, r2, r5
	add r2, r4, r2
	mov r0, #1
	strb r0, [r2]
	pop {r4,r5}
	pop {r0}
	bx r0
_080D5728:
	.4byte gUnknown_030031D2
_080D572C:
	.4byte gRam
_080D5730:
	.4byte 0x00000EE2
_080D5734:
	.4byte gUnknown_0201094F
_080D5738:
	.4byte 0x00000F02
_080D573C:
	.4byte gUnknown_0201095F
_080D5740:
	.4byte gUnknown_0201096F
_080D5744:
	.4byte 0x00000ED2
_080D5748:
	.4byte 0x000010F2
_080D574C:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080D56A0

	THUMB_FUNC_START sub_080D5750
sub_080D5750: @ 0x080D5750
	bx lr
	THUMB_FUNC_END sub_080D5750

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D5754
sub_080D5754: @ 0x080D5754
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r9, r5
	add r0, r5, #0
	bl sub_080D58D4
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D5776
	b _080D58A8
_080D5776:
	add r0, r5, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D5784
	b _080D58A8
_080D5784:
	ldr r7, _080D5804  @ =gRam
	ldr r1, _080D5808  @ =0x00001052
	add r0, r7, r1
	add r4, r5, r0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r3, _080D580C  @ =0x00000F62
	add r2, r7, r3
	add r2, r5, r2
	lsl r0, r0, #24
	lsr r0, r0, #28
	mov r1, #3
	and r0, r0, r1
	strb r0, [r2]
	add r0, r5, #0
	bl sub_080C5044
	ldr r1, _080D5810  @ =0x00000F52
	add r0, r7, r1
	add r0, r0, r5
	mov r8, r0
	ldrb r2, [r0]
	add r0, r2, #0
	cmp r0, #2
	bne _080D582A
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r2, _080D5814  @ =0x00000FC2
	add r0, r7, r2
	add r6, r5, r0
	ldrb r0, [r6]
	cmp r0, #0
	beq _080D5820
	ldr r3, _080D5818  @ =0x00000996
	add r0, r7, r3
	ldrb r0, [r0]
	add r4, r5, #0
	eor r4, r4, r0
	add r1, r1, #32
	add r0, r7, r1
	add r0, r5, r0
	ldrb r0, [r0]
	and r4, r4, r0
	cmp r4, #0
	bne _080D57FC
	add r0, r5, #0
	bl Sprite3_Move
	ldr r2, _080D581C  @ =0x00001042
	add r0, r7, r2
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D57FC
	mov r3, r8
	strb r4, [r3]
	mov r0, #80
	strb r0, [r6]
_080D57FC:
	mov r0, r9
	bl sub_080C79D0
	b _080D58A8
_080D5804:
	.4byte gRam
_080D5808:
	.4byte 0x00001052
_080D580C:
	.4byte 0x00000F62
_080D5810:
	.4byte 0x00000F52
_080D5814:
	.4byte 0x00000FC2
_080D5818:
	.4byte 0x00000996
_080D581C:
	.4byte 0x00001042
_080D5820:
	mov r1, r8
	strb r0, [r1]
	mov r0, #80
	strb r0, [r6]
	b _080D58A8
_080D582A:
	cmp r0, #1
	bne _080D5890
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r2, _080D587C  @ =0x00000FC2
	add r0, r7, r2
	add r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D58A8
	bl GetRandomInt
	mov r1, #63
	and r1, r1, r0
	add r1, r1, #128
	strb r1, [r4]
	mov r3, r8
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	bl GetRandomInt
	mov r2, #15
	and r2, r2, r0
	ldr r0, _080D5880  @ =0x00000F22
	add r1, r7, r0
	add r1, r5, r1
	ldr r0, _080D5884  @ =gUnknown_08177D54
	add r0, r2, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	strb r0, [r1]
	ldr r3, _080D5888  @ =0x00000F12
	add r1, r7, r3
	add r1, r5, r1
	ldr r0, _080D588C  @ =gUnknown_08177D64
	add r2, r2, r0
	ldrb r0, [r2]
	lsl r0, r0, #2
	b _080D58A6
_080D587C:
	.4byte 0x00000FC2
_080D5880:
	.4byte 0x00000F22
_080D5884:
	.4byte gUnknown_08177D54
_080D5888:
	.4byte 0x00000F12
_080D588C:
	.4byte gUnknown_08177D64
_080D5890:
	ldr r1, _080D58B4  @ =0x00000FC2
	add r0, r7, r1
	mov r3, r9
	add r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080D58A8
	add r0, r2, #1
	mov r2, r8
	strb r0, [r2]
	mov r0, #105
_080D58A6:
	strb r0, [r1]
_080D58A8:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080D58B4:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080D5754

	THUMB_FUNC_START sub_080D58B8
sub_080D58B8: @ 0x080D58B8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080D58CC  @ =gRam
	ldr r2, _080D58D0  @ =0x00000F72
	add r1, r1, r2
	add r0, r0, r1
	mov r1, #7
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080D58CC:
	.4byte gRam
_080D58D0:
	.4byte 0x00000F72
	THUMB_FUNC_END sub_080D58B8

	THUMB_FUNC_START sub_080D58D4
sub_080D58D4: @ 0x080D58D4
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080D5914  @ =gRam
	ldr r1, _080D5918  @ =0x00000F92
	add r2, r3, r1
	add r2, r0, r2
	ldr r4, _080D591C  @ =gUnknown_081750B0
	sub r1, r1, #48
	add r5, r3, r1
	add r5, r0, r5
	ldrb r1, [r5]
	add r1, r1, r4
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r1, _080D5920  @ =0x00001122
	add r3, r3, r1
	add r3, r0, r3
	ldrb r1, [r3]
	mov r2, #191
	and r2, r2, r1
	ldr r4, _080D5924  @ =gUnknown_081750B4
	ldrb r1, [r5]
	add r1, r1, r4
	ldrb r1, [r1]
	orr r2, r2, r1
	strb r2, [r3]
	bl sub_080C6240
	pop {r4,r5}
	pop {r0}
	bx r0
_080D5914:
	.4byte gRam
_080D5918:
	.4byte 0x00000F92
_080D591C:
	.4byte gUnknown_081750B0
_080D5920:
	.4byte 0x00001122
_080D5924:
	.4byte gUnknown_081750B4
	THUMB_FUNC_END sub_080D58D4

	THUMB_FUNC_START sub_080D5928
sub_080D5928: @ 0x080D5928
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080D593C  @ =gRam
	ldr r2, _080D5940  @ =0x00000F72
	add r1, r1, r2
	add r0, r0, r1
	mov r1, #15
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080D593C:
	.4byte gRam
_080D5940:
	.4byte 0x00000F72
	THUMB_FUNC_END sub_080D5928

	THUMB_FUNC_START sub_080D5944
sub_080D5944: @ 0x080D5944
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080D5754
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D5944

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D5954
sub_080D5954: @ 0x080D5954
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r2, _080D59B8  @ =gRam
	ldr r1, _080D59BC  @ =0x00001052
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r3, #1
	and r3, r3, r1
	ldr r1, _080D59C0  @ =0x000009AD
	add r0, r2, r1
	ldrb r0, [r0]
	orr r3, r3, r0
	ldr r1, _080D59C4  @ =0x00001605
	add r0, r2, r1
	ldrb r0, [r0]
	orr r3, r3, r0
	cmp r3, #0
	bne _080D5996
	ldr r1, _080D59C8  @ =0x00000F92
	add r0, r2, r1
	add r1, r4, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #6
	bne _080D5996
	strb r3, [r1]
_080D5996:
	ldr r1, _080D59C8  @ =0x00000F92
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, _080D59CC  @ =gUnknown_081750BC
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #5
	bl sub_080C9480
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D59B8:
	.4byte gRam
_080D59BC:
	.4byte 0x00001052
_080D59C0:
	.4byte 0x000009AD
_080D59C4:
	.4byte 0x00001605
_080D59C8:
	.4byte 0x00000F92
_080D59CC:
	.4byte gUnknown_081750BC
	THUMB_FUNC_END sub_080D5954

	THUMB_FUNC_START sub_080D59D0
sub_080D59D0: @ 0x080D59D0
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080D5A04  @ =gRam
	ldr r1, _080D5A08  @ =0x00000F22
	add r4, r3, r1
	add r4, r0, r4
	ldr r5, _080D5A0C  @ =gUnknown_081750B8
	ldr r2, _080D5A10  @ =0x00000EE2
	add r1, r3, r2
	add r1, r0, r1
	ldrb r1, [r1]
	lsr r1, r1, #4
	mov r2, #1
	and r1, r1, r2
	add r1, r1, r5
	ldrb r1, [r1]
	strb r1, [r4]
	ldr r1, _080D5A14  @ =0x00000F12
	add r3, r3, r1
	add r0, r0, r3
	mov r1, #240
	strb r1, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
_080D5A04:
	.4byte gRam
_080D5A08:
	.4byte 0x00000F22
_080D5A0C:
	.4byte gUnknown_081750B8
_080D5A10:
	.4byte 0x00000EE2
_080D5A14:
	.4byte 0x00000F12
	THUMB_FUNC_END sub_080D59D0

	THUMB_FUNC_START sub_080D5A18
sub_080D5A18: @ 0x080D5A18
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r0, r5, #0
	bl sub_080D5954
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D5A82
	add r0, r5, #0
	bl sub_080C4F98
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D5A76
	ldr r0, _080D5A68  @ =gRam
	ldr r1, _080D5A6C  @ =0x00000FC2
	add r0, r0, r1
	add r1, r5, r0
	ldrb r2, [r1]
	cmp r2, #0
	bne _080D5A76
	mov r0, #16
	strb r0, [r1]
	ldr r4, _080D5A70  @ =gMagicMeter
	ldrb r0, [r4]
	cmp r0, #7
	bls _080D5A74
	mov r0, #38
	mov r1, #0
	bl sub_0812A324
	ldrb r0, [r4]
	sub r0, r0, #8
	strb r0, [r4]
	b _080D5A76
	.byte 0x00
	.byte 0x00
_080D5A68:
	.4byte gRam
_080D5A6C:
	.4byte 0x00000FC2
_080D5A70:
	.4byte gMagicMeter
_080D5A74:
	strb r2, [r4]
_080D5A76:
	add r0, r5, #0
	bl Sprite3_Move
	add r0, r5, #0
	bl sub_080CA2A4
_080D5A82:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D5A18

	THUMB_FUNC_START sub_080D5A88
sub_080D5A88: @ 0x080D5A88
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r4, _080D5B8C  @ =gRam
	ldr r0, _080D5B90  @ =0x00000EE2
	add r3, r4, r0
	add r3, r6, r3
	ldrb r1, [r3]
	ldr r7, _080D5B94  @ =0x00000F02
	add r2, r4, r7
	add r2, r6, r2
	ldrb r0, [r2]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r1, r1, #10
	mov r5, #0
	strb r1, [r3]
	lsr r1, r1, #8
	strb r1, [r2]
	ldr r1, _080D5B98  @ =0x00000F12
	add r0, r4, r1
	add r0, r6, r0
	mov r1, #238
	strb r1, [r0]
	add r7, r7, #32
	add r0, r4, r7
	add r0, r6, r0
	strb r5, [r0]
	ldr r1, _080D5B9C  @ =0x00000F62
	add r0, r4, r1
	add r0, r6, r0
	strb r5, [r0]
	add r7, r7, #80
	add r1, r4, r7
	add r0, r6, r1
	strb r5, [r0]
	mov r5, #2
	mov r8, r1
_080D5AD8:
	mov r0, #130
	add r1, r6, #0
	bl sub_080CA538
	add r3, r0, #0
	lsl r5, r5, #24
	cmp r3, #0
	blt _080D5B76
	mov r0, #150
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _080D5BA0  @ =gUnknown_081751AC
	asr r2, r5, #24
	add r0, r2, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080D5BA4  @ =gUnknown_081751AF
	add r0, r2, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r7, _080D5B90  @ =0x00000EE2
	add r0, r4, r7
	add r0, r3, r0
	strb r1, [r0]
	add r7, r7, #32
	add r0, r4, r7
	add r0, r3, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r0, _080D5BA8  @ =0x00000964
	add r1, r4, r0
	ldr r0, _080D5BAC  @ =gUnknown_081751B2
	add r0, r2, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080D5BB0  @ =gUnknown_081751B5
	add r0, r2, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r7, r7, #48
	add r0, r4, r7
	add r0, r3, r0
	strb r1, [r0]
	add r7, r7, #32
	add r0, r4, r7
	add r0, r3, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r0, _080D5BB4  @ =0x00000F22
	add r1, r4, r0
	add r1, r3, r1
	ldr r0, _080D5BB8  @ =gUnknown_081751B8
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r7, r7, #32
	add r1, r4, r7
	add r1, r3, r1
	ldr r0, _080D5BBC  @ =gUnknown_081751BE
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080D5B9C  @ =0x00000F62
	add r1, r4, r0
	add r1, r3, r1
	ldr r0, _080D5BC0  @ =gUnknown_081751BB
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	mov r7, r8
	add r1, r3, r7
	ldr r0, _080D5BC4  @ =gUnknown_081751C1
	add r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
_080D5B76:
	mov r1, #255
	lsl r1, r1, #24
	add r0, r5, r1
	lsr r5, r0, #24
	cmp r0, #0
	bge _080D5AD8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080D5B8C:
	.4byte gRam
_080D5B90:
	.4byte 0x00000EE2
_080D5B94:
	.4byte 0x00000F02
_080D5B98:
	.4byte 0x00000F12
_080D5B9C:
	.4byte 0x00000F62
_080D5BA0:
	.4byte gUnknown_081751AC
_080D5BA4:
	.4byte gUnknown_081751AF
_080D5BA8:
	.4byte 0x00000964
_080D5BAC:
	.4byte gUnknown_081751B2
_080D5BB0:
	.4byte gUnknown_081751B5
_080D5BB4:
	.4byte 0x00000F22
_080D5BB8:
	.4byte gUnknown_081751B8
_080D5BBC:
	.4byte gUnknown_081751BE
_080D5BC0:
	.4byte gUnknown_081751BB
_080D5BC4:
	.4byte gUnknown_081751C1
	THUMB_FUNC_END sub_080D5A88

	THUMB_FUNC_START sub_080D5BC8
sub_080D5BC8: @ 0x080D5BC8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r0, r5, #0
	bl sub_080D5954
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D5CD2
	ldr r7, _080D5C84  @ =gRam
	ldr r1, _080D5C88  @ =0x00000F62
	add r0, r7, r1
	add r2, r5, r0
	ldrb r0, [r2]
	mov r4, #1
	add r1, r4, #0
	and r1, r1, r0
	ldr r3, _080D5C8C  @ =0x00000F22
	add r0, r7, r3
	add r6, r5, r0
	ldr r0, _080D5C90  @ =gUnknown_081751C4
	mov r12, r0
	add r0, r1, r0
	ldrb r0, [r0]
	ldrb r3, [r6]
	add r0, r0, r3
	strb r0, [r6]
	ldr r3, _080D5C94  @ =gUnknown_081751C6
	mov r8, r3
	add r1, r1, r8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r1]
	cmp r0, r1
	bne _080D5C1E
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
_080D5C1E:
	ldr r1, _080D5C98  @ =0x00000F72
	add r0, r7, r1
	add r2, r5, r0
	ldrb r0, [r2]
	add r1, r4, #0
	and r1, r1, r0
	ldr r3, _080D5C9C  @ =0x00000F12
	add r0, r7, r3
	add r4, r5, r0
	add r12, r12, r1
	mov r3, r12
	ldrb r0, [r3]
	ldrb r3, [r4]
	add r0, r0, r3
	strb r0, [r4]
	add r1, r1, r8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r1]
	cmp r0, r1
	bne _080D5C4E
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
_080D5C4E:
	add r0, r5, #0
	bl Sprite3_Move
	ldrb r0, [r6]
	cmp r0, #0
	beq _080D5CCC
	ldrb r0, [r4]
	cmp r0, #0
	beq _080D5CCC
	bl sub_080CAF64
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D5CCC
	ldr r1, _080D5CA0  @ =0x00000FF2
	add r0, r7, r1
	add r0, r5, r0
	mov r1, #21
	strb r1, [r0]
	ldrb r1, [r6]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080D5CA4
	mov r0, #16
	b _080D5CA6
	.byte 0x00
	.byte 0x00
_080D5C84:
	.4byte gRam
_080D5C88:
	.4byte 0x00000F62
_080D5C8C:
	.4byte 0x00000F22
_080D5C90:
	.4byte gUnknown_081751C4
_080D5C94:
	.4byte gUnknown_081751C6
_080D5C98:
	.4byte 0x00000F72
_080D5C9C:
	.4byte 0x00000F12
_080D5CA0:
	.4byte 0x00000FF2
_080D5CA4:
	mov r0, #240
_080D5CA6:
	strb r0, [r6]
	ldr r0, _080D5CC0  @ =gRam
	ldr r3, _080D5CC4  @ =0x00000F12
	add r0, r0, r3
	add r2, r5, r0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080D5CC8
	mov r0, #16
	b _080D5CCA
	.byte 0x00
	.byte 0x00
_080D5CC0:
	.4byte gRam
_080D5CC4:
	.4byte 0x00000F12
_080D5CC8:
	mov r0, #240
_080D5CCA:
	strb r0, [r2]
_080D5CCC:
	add r0, r5, #0
	bl sub_080C4F98
_080D5CD2:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D5BC8

	THUMB_FUNC_START sub_080D5CDC
sub_080D5CDC: @ 0x080D5CDC
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080D5D18  @ =gRam
	ldr r1, _080D5D1C  @ =0x00000F62
	add r0, r6, r1
	add r5, r4, r0
	ldrb r7, [r5]
	cmp r7, #0
	bne _080D5D52
	ldr r2, _080D5D20  @ =0x00000F22
	add r0, r6, r2
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	ldr r3, _080D5D24  @ =0x00000F12
	add r0, r6, r3
	add r0, r4, r0
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C6F48
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D5D2C
	ldr r1, _080D5D28  @ =0x00000FA2
	add r0, r6, r1
	add r0, r4, r0
	strb r7, [r0]
	b _080D5E02
_080D5D18:
	.4byte gRam
_080D5D1C:
	.4byte 0x00000F62
_080D5D20:
	.4byte 0x00000F22
_080D5D24:
	.4byte 0x00000F12
_080D5D28:
	.4byte 0x00000FA2
_080D5D2C:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldr r2, _080D5DB0  @ =0x00000F82
	add r0, r6, r2
	add r0, r4, r0
	mov r1, #10
	strb r1, [r0]
	ldr r3, _080D5DB4  @ =0x00001032
	add r1, r6, r3
	add r1, r4, r1
	ldrb r0, [r1]
	mov r2, #64
	orr r0, r0, r2
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #108
	bl sub_080CF0AC
_080D5D52:
	ldr r6, _080D5DB8  @ =gRam
	ldr r0, _080D5DBC  @ =0x00000D94
	add r2, r6, r0
	add r2, r4, r2
	ldr r1, _080D5DC0  @ =gUnknown_081751C8
	ldr r3, _080D5DC4  @ =0x00000F52
	add r0, r6, r3
	add r5, r4, r0
	ldrb r0, [r5]
	add r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0]
	orr r1, r1, r0
	strb r1, [r2]
	add r0, r4, #0
	bl sub_080D6268
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _080D5E02
	ldr r0, _080D5DC8  @ =gSword
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080D5DD4
	ldrb r0, [r5]
	cmp r0, #5
	beq _080D5DE0
	ldr r1, _080D5DCC  @ =0x000010C2
	add r0, r6, r1
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080D5DE0
	strb r2, [r1]
	mov r0, #5
	strb r0, [r5]
	ldr r2, _080D5DD0  @ =0x00000FC2
	add r0, r6, r2
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	b _080D5DE0
	.byte 0x00
	.byte 0x00
_080D5DB0:
	.4byte 0x00000F82
_080D5DB4:
	.4byte 0x00001032
_080D5DB8:
	.4byte gRam
_080D5DBC:
	.4byte 0x00000D94
_080D5DC0:
	.4byte gUnknown_081751C8
_080D5DC4:
	.4byte 0x00000F52
_080D5DC8:
	.4byte gSword
_080D5DCC:
	.4byte 0x000010C2
_080D5DD0:
	.4byte 0x00000FC2
_080D5DD4:
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D5E02
_080D5DE0:
	ldr r2, _080D5E08  @ =gRam
	ldr r3, _080D5E0C  @ =0x00001172
	add r0, r2, r3
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	ldr r1, _080D5E10  @ =gUnknown_081751D0
	ldr r0, _080D5E14  @ =0x00000F52
	add r2, r2, r0
	add r2, r4, r2
	ldrb r0, [r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080D5E02:
	pop {r4-r7}
	pop {r0}
	bx r0
_080D5E08:
	.4byte gRam
_080D5E0C:
	.4byte 0x00001172
_080D5E10:
	.4byte gUnknown_081751D0
_080D5E14:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D5CDC

	THUMB_FUNC_START sub_080D5E18
sub_080D5E18: @ 0x080D5E18
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r5, r0, #0
	ldr r7, _080D5E98  @ =gRam
	ldr r1, _080D5E9C  @ =0x00001082
	add r0, r7, r1
	add r0, r5, r0
	mov r1, #0
	mov r8, r1
	mov r1, #2
	strb r1, [r0]
	ldr r1, _080D5EA0  @ =0x00001142
	add r0, r7, r1
	add r6, r5, r0
	ldrb r4, [r6]
	add r0, r5, #0
	bl sub_080C2C4C
	ldr r1, _080D5EA4  @ =0x00001152
	add r0, r7, r1
	add r2, r5, r0
	ldrb r1, [r2]
	add r0, r1, #0
	add r0, r0, #64
	mov r3, #128
	and r0, r0, r3
	cmp r0, #0
	bne _080D5E5A
	sub r0, r1, #3
	strb r0, [r2]
_080D5E5A:
	ldrb r1, [r6]
	eor r4, r4, r1
	and r4, r4, r3
	cmp r4, #0
	beq _080D5E8E
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D5E8E
	ldr r0, _080D5EA8  @ =0x00000F52
	add r1, r7, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r1, r8
	strb r1, [r6]
	strb r1, [r2]
	ldr r1, _080D5EAC  @ =0x00000FC2
	add r0, r7, r1
	add r0, r5, r0
	mov r1, #64
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080D6220
_080D5E8E:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080D5E98:
	.4byte gRam
_080D5E9C:
	.4byte 0x00001082
_080D5EA0:
	.4byte 0x00001142
_080D5EA4:
	.4byte 0x00001152
_080D5EA8:
	.4byte 0x00000F52
_080D5EAC:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080D5E18

	THUMB_FUNC_START sub_080D5EB0
sub_080D5EB0: @ 0x080D5EB0
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	ldr r5, _080D5F10  @ =gRam
	ldr r1, _080D5F14  @ =0x00001172
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C5044
	add r0, r4, #0
	bl sub_080C2FA8
	ldr r2, _080D5F18  @ =0x00000FB2
	add r1, r5, r2
	add r1, r4, r1
	strb r0, [r1]
	add r2, r2, #208
	add r1, r5, r2
	add r1, r4, r1
	strb r0, [r1]
	ldr r1, _080D5F1C  @ =0x00000FC2
	add r0, r5, r1
	add r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080D5EFC
	sub r1, r1, #112
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #127
	strb r0, [r2]
_080D5EFC:
	ldr r2, _080D5F20  @ =0x00001032
	add r0, r5, r2
	add r0, r6, r0
	ldrb r2, [r0]
	mov r1, #191
	and r1, r1, r2
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
_080D5F10:
	.4byte gRam
_080D5F14:
	.4byte 0x00001172
_080D5F18:
	.4byte 0x00000FB2
_080D5F1C:
	.4byte 0x00000FC2
_080D5F20:
	.4byte 0x00001032
	THUMB_FUNC_END sub_080D5EB0

	THUMB_FUNC_START sub_080D5F24
sub_080D5F24: @ 0x080D5F24
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080D5FA4  @ =gRam
	ldr r1, _080D5FA8  @ =0x00001172
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C5044
	ldr r7, _080D5FAC  @ =0x00000FC2
	add r0, r6, r7
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080D5FCC
	cmp r0, #48
	bne _080D5F52
	add r0, r4, #0
	bl sub_080D647C
_080D5F52:
	ldr r0, _080D5FB0  @ =0x00000F92
	add r2, r6, r0
	add r2, r4, r2
	ldr r3, _080D5FB4  @ =gUnknown_081751E8
	ldrb r1, [r5]
	lsr r1, r1, #2
	mov r0, #252
	and r1, r1, r0
	ldr r7, _080D5FB8  @ =0x00000FB2
	add r0, r6, r7
	add r0, r4, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	add r1, r1, r3
	ldrb r0, [r1]
	strb r0, [r2]
	ldrb r2, [r5]
	lsr r2, r2, #2
	ldr r0, _080D5FBC  @ =0x00000F72
	add r1, r6, r0
	add r1, r4, r1
	ldr r0, _080D5FC0  @ =gUnknown_08175208
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	sub r7, r7, #48
	add r1, r6, r7
	add r1, r4, r1
	ldr r0, _080D5FC4  @ =gUnknown_08175228
	add r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r0, _080D5FC8  @ =0x00001032
	add r1, r6, r0
	add r1, r4, r1
	ldrb r2, [r1]
	mov r0, #191
	and r0, r0, r2
	strb r0, [r1]
	b _080D5FDC
	.byte 0x00
	.byte 0x00
_080D5FA4:
	.4byte gRam
_080D5FA8:
	.4byte 0x00001172
_080D5FAC:
	.4byte 0x00000FC2
_080D5FB0:
	.4byte 0x00000F92
_080D5FB4:
	.4byte gUnknown_081751E8
_080D5FB8:
	.4byte 0x00000FB2
_080D5FBC:
	.4byte 0x00000F72
_080D5FC0:
	.4byte gUnknown_08175208
_080D5FC4:
	.4byte gUnknown_08175228
_080D5FC8:
	.4byte 0x00001032
_080D5FCC:
	ldr r1, _080D5FE4  @ =0x00000F52
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #64
	strb r0, [r5]
_080D5FDC:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D5FE4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D5F24

	THUMB_FUNC_START sub_080D5FE8
sub_080D5FE8: @ 0x080D5FE8
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r5, r0, #0
	ldr r7, _080D6050  @ =gRam
	ldr r1, _080D6054  @ =0x00000F92
	add r0, r7, r1
	add r0, r5, r0
	mov r1, #0
	strb r1, [r0]
	ldr r2, _080D6058  @ =0x00001082
	add r0, r7, r2
	add r0, r5, r0
	mov r1, #2
	strb r1, [r0]
	ldr r1, _080D605C  @ =0x00001142
	add r0, r7, r1
	add r6, r5, r0
	ldrb r4, [r6]
	add r0, r5, #0
	bl sub_080C2C4C
	ldr r2, _080D6060  @ =0x00001152
	add r0, r7, r2
	add r2, r5, r0
	ldrb r1, [r2]
	add r0, r1, #0
	sub r0, r0, #64
	mov r3, #128
	and r0, r0, r3
	cmp r0, #0
	beq _080D602C
	add r0, r1, #2
	strb r0, [r2]
_080D602C:
	ldrb r1, [r6]
	eor r4, r4, r1
	and r4, r4, r3
	cmp r4, #0
	beq _080D604A
	mov r0, #128
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _080D604A
	ldr r2, _080D6064  @ =0x00000FA2
	add r0, r7, r2
	add r0, r5, r0
	strb r1, [r0]
_080D604A:
	pop {r4-r7}
	pop {r0}
	bx r0
_080D6050:
	.4byte gRam
_080D6054:
	.4byte 0x00000F92
_080D6058:
	.4byte 0x00001082
_080D605C:
	.4byte 0x00001142
_080D6060:
	.4byte 0x00001152
_080D6064:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080D5FE8

	THUMB_FUNC_START sub_080D6068
sub_080D6068: @ 0x080D6068
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	ldr r5, _080D60C8  @ =gRam
	ldr r1, _080D60CC  @ =0x00001172
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	mov r0, sp
	add r1, r4, #0
	bl sub_080C4948
	ldr r1, _080D60D0  @ =0x00000FC2
	add r0, r5, r1
	add r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080D609E
	ldr r0, _080D60D4  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_080D609E:
	ldrb r2, [r2]
	lsr r2, r2, #4
	ldr r0, _080D60D8  @ =0x00000F92
	add r1, r5, r0
	add r1, r6, r1
	ldr r0, _080D60DC  @ =gUnknown_0817524C
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080D60E0  @ =0x00000F82
	add r1, r5, r0
	add r1, r6, r1
	ldr r0, _080D60E4  @ =gUnknown_0817525C
	add r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D60C8:
	.4byte gRam
_080D60CC:
	.4byte 0x00001172
_080D60D0:
	.4byte 0x00000FC2
_080D60D4:
	.4byte 0x00000F52
_080D60D8:
	.4byte 0x00000F92
_080D60DC:
	.4byte gUnknown_0817524C
_080D60E0:
	.4byte 0x00000F82
_080D60E4:
	.4byte gUnknown_0817525C
	THUMB_FUNC_END sub_080D6068

	THUMB_FUNC_START sub_080D60E8
sub_080D60E8: @ 0x080D60E8
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r7, r1, #0
	ldr r6, _080D6198  @ =gRam
	ldr r2, _080D619C  @ =0x00000F92
	add r0, r6, r2
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #10
	beq _080D618E
	ldr r4, _080D61A0  @ =0x00000979
	add r3, r6, r4
	mov r5, #0
	strb r5, [r3]
	sub r2, r2, #32
	add r0, r6, r2
	add r0, r1, r0
	ldrb r2, [r0]
	cmp r2, #128
	beq _080D618E
	ldr r1, _080D61A4  @ =0x00000978
	add r4, r6, r1
	strb r2, [r4]
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D612A
	mov r0, #1
	neg r0, r0
	strb r0, [r3]
_080D612A:
	ldr r2, _080D61A8  @ =0x00000F82
	add r0, r6, r2
	add r0, r7, r0
	ldrb r0, [r0]
	ldr r1, _080D61AC  @ =0x00000974
	add r3, r6, r1
	strb r0, [r3]
	ldr r2, _080D61B0  @ =0x00000975
	add r0, r6, r2
	strb r5, [r0]
	ldr r0, _080D61B4  @ =gUnknown_03003E74
	ldrh r0, [r0]
	sub r1, r1, #20
	add r2, r6, r1
	ldrh r1, [r4]
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r4, _080D61B8  @ =0x00000964
	add r2, r6, r4
	ldrh r2, [r2]
	ldrh r3, [r3]
	sub r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r5, _080D61BC  @ =gUnknown_0817531C
	ldr r4, _080D61C0  @ =0x00001082
	add r3, r6, r4
	add r3, r7, r3
	ldrb r4, [r3]
	add r5, r4, r5
	ldrb r3, [r5]
	ldr r5, _080D61C4  @ =gUnknown_08175320
	add r4, r4, r5
	ldrb r4, [r4]
	ldr r7, _080D61C8  @ =0x00000969
	add r5, r6, r7
	ldrb r5, [r5]
	lsl r5, r5, #24
	asr r5, r5, #24
	orr r4, r4, r5
	lsl r4, r4, #8
	add r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r4, #2
	str r4, [sp]
	bl sub_080C6368
_080D618E:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D6198:
	.4byte gRam
_080D619C:
	.4byte 0x00000F92
_080D61A0:
	.4byte 0x00000979
_080D61A4:
	.4byte 0x00000978
_080D61A8:
	.4byte 0x00000F82
_080D61AC:
	.4byte 0x00000974
_080D61B0:
	.4byte 0x00000975
_080D61B4:
	.4byte gUnknown_03003E74
_080D61B8:
	.4byte 0x00000964
_080D61BC:
	.4byte gUnknown_0817531C
_080D61C0:
	.4byte 0x00001082
_080D61C4:
	.4byte gUnknown_08175320
_080D61C8:
	.4byte 0x00000969
	THUMB_FUNC_END sub_080D60E8

	THUMB_FUNC_START sub_080D61CC
sub_080D61CC: @ 0x080D61CC
	bx lr
	THUMB_FUNC_END sub_080D61CC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D61D0
sub_080D61D0: @ 0x080D61D0
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	ldr r5, _080D6210  @ =gRam
	ldr r1, _080D6214  @ =0x00001172
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C5044
	ldr r1, _080D6218  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D6202
	ldr r0, _080D621C  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D6202:
	add r0, r6, #0
	bl sub_080D6220
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D6210:
	.4byte gRam
_080D6214:
	.4byte 0x00001172
_080D6218:
	.4byte 0x00000FC2
_080D621C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D61D0

	THUMB_FUNC_START sub_080D6220
sub_080D6220: @ 0x080D6220
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D6254  @ =gRam
	ldr r1, _080D6258  @ =0x00000F92
	add r3, r2, r1
	add r3, r0, r3
	ldr r4, _080D625C  @ =gUnknown_08175248
	ldr r5, _080D6260  @ =0x00000FB2
	add r1, r2, r5
	add r1, r0, r1
	ldrb r1, [r1]
	add r1, r1, r4
	ldrb r1, [r1]
	strb r1, [r3]
	ldr r1, _080D6264  @ =0x00001032
	add r2, r2, r1
	add r0, r0, r2
	ldrb r2, [r0]
	mov r1, #191
	and r1, r1, r2
	strb r1, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D6254:
	.4byte gRam
_080D6258:
	.4byte 0x00000F92
_080D625C:
	.4byte gUnknown_08175248
_080D6260:
	.4byte 0x00000FB2
_080D6264:
	.4byte 0x00001032
	THUMB_FUNC_END sub_080D6220

	THUMB_FUNC_START sub_080D6268
sub_080D6268: @ 0x080D6268
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r5, _080D62B4  @ =gUnknown_03003E74
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r4, _080D62B8  @ =gRam
	ldr r1, _080D62BC  @ =0x00000F92
	add r0, r4, r1
	add r0, r6, r0
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldr r0, _080D62C0  @ =gUnknown_0817526C
	add r1, r1, r0
	add r0, r6, #0
	mov r2, #2
	bl sub_080C9480
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	ldr r0, _080D62C4  @ =0x000010D2
	add r4, r4, r0
	add r4, r6, r4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D62AC
	add r0, r6, #0
	bl sub_080D60E8
	add r0, r6, #0
	bl sub_080C6230
_080D62AC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D62B4:
	.4byte gUnknown_03003E74
_080D62B8:
	.4byte gRam
_080D62BC:
	.4byte 0x00000F92
_080D62C0:
	.4byte gUnknown_0817526C
_080D62C4:
	.4byte 0x000010D2
	THUMB_FUNC_END sub_080D6268

	THUMB_FUNC_START sub_080D62C8
sub_080D62C8: @ 0x080D62C8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, #0
	mov r8, r0
	ldr r5, _080D63B8  @ =gRam
	ldr r1, _080D63BC  @ =0x000010F2
	add r0, r5, r1
	add r0, r4, r0
	mov r2, #161
	lsl r2, r2, #4
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D63C0  @ =0x00000FD2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D62FA
	mov r0, #8
	bl sub_080CF3A0
_080D62FA:
	ldr r2, _080D63C4  @ =0x00001052
	add r0, r5, r2
	add r6, r4, r0
	ldrb r2, [r6]
	lsr r2, r2, #3
	mov r7, #3
	and r2, r2, r7
	ldr r0, _080D63C8  @ =0x00001122
	add r3, r5, r0
	add r3, r4, r3
	ldrb r0, [r3]
	mov r1, #191
	and r1, r1, r0
	ldr r0, _080D63CC  @ =gUnknown_08175324
	add r0, r2, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	strb r1, [r3]
	ldr r0, _080D63D0  @ =0x00000F92
	add r1, r5, r0
	add r1, r4, r1
	ldr r0, _080D63D4  @ =gUnknown_08175328
	add r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _080D63D8  @ =0x00000D94
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #48
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C6240
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D634A
	b _080D646C
_080D634A:
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D6358
	b _080D646C
_080D6358:
	add r0, r4, #0
	bl sub_080C5044
	ldr r2, _080D63DC  @ =0x00001072
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D6370
	add r0, r4, #0
	bl sub_080C3540
_080D6370:
	add r0, r4, #0
	bl Sprite3_Move
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	ldr r1, _080D63E0  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	cmp r1, #0
	bne _080D63EC
	ldr r2, _080D63E4  @ =0x00000996
	add r0, r5, r2
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	and r0, r0, r7
	cmp r0, #0
	bne _080D6400
	add r0, r4, #0
	mov r1, #16
	bl sub_080C2CB4
	mov r0, #150
	lsl r0, r0, #4
	add r1, r5, r0
	ldrb r0, [r1]
	neg r0, r0
	strb r0, [r1]
	ldr r2, _080D63E8  @ =0x00000961
	add r1, r5, r2
	ldrb r0, [r1]
	neg r0, r0
	strb r0, [r1]
	b _080D6406
_080D63B8:
	.4byte gRam
_080D63BC:
	.4byte 0x000010F2
_080D63C0:
	.4byte 0x00000FD2
_080D63C4:
	.4byte 0x00001052
_080D63C8:
	.4byte 0x00001122
_080D63CC:
	.4byte gUnknown_08175324
_080D63D0:
	.4byte 0x00000F92
_080D63D4:
	.4byte gUnknown_08175328
_080D63D8:
	.4byte 0x00000D94
_080D63DC:
	.4byte 0x00001072
_080D63E0:
	.4byte 0x00000FC2
_080D63E4:
	.4byte 0x00000996
_080D63E8:
	.4byte 0x00000961
_080D63EC:
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080D6400
	add r0, r4, #0
	mov r1, #16
	bl sub_080C2CB4
	mov r5, #1
	mov r8, r5
_080D6400:
	mov r0, r8
	cmp r0, #0
	beq _080D646C
_080D6406:
	ldr r0, _080D6430  @ =gRam
	ldr r2, _080D6434  @ =0x00000F12
	add r1, r0, r2
	add r3, r4, r1
	ldrb r2, [r3]
	mov r5, #150
	lsl r5, r5, #4
	add r1, r0, r5
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r5, r0, #0
	cmp r2, r1
	beq _080D643C
	sub r0, r2, r1
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080D6438
	sub r0, r2, #1
	b _080D643A
_080D6430:
	.4byte gRam
_080D6434:
	.4byte 0x00000F12
_080D6438:
	add r0, r2, #1
_080D643A:
	strb r0, [r3]
_080D643C:
	ldr r1, _080D6460  @ =0x00000F22
	add r0, r5, r1
	add r3, r4, r0
	ldrb r2, [r3]
	ldr r1, _080D6464  @ =0x00000961
	add r0, r5, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r2, r0
	beq _080D646C
	sub r0, r2, r0
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080D6468
	sub r0, r2, #1
	b _080D646A
_080D6460:
	.4byte 0x00000F22
_080D6464:
	.4byte 0x00000961
_080D6468:
	add r0, r2, #1
_080D646A:
	strb r0, [r3]
_080D646C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D62C8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D6478
sub_080D6478: @ 0x080D6478
	bx lr
	THUMB_FUNC_END sub_080D6478

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D647C
sub_080D647C: @ 0x080D647C
	push {r4-r6,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #2
	bl sub_080CA538
	add r6, r0, #0
	cmp r6, #0
	blt _080D64C2
	lsl r5, r6, #24
	lsr r5, r5, #24
	add r0, r5, #0
	bl sub_080CAE50
	ldr r4, _080D64C8  @ =gRam
	ldr r1, _080D64CC  @ =0x00001142
	add r0, r4, r1
	add r0, r6, r0
	mov r1, #13
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #16
	bl sub_080C35FC
	ldr r1, _080D64D0  @ =0x00000FC2
	add r0, r4, r1
	add r0, r6, r0
	mov r1, #255
	strb r1, [r0]
	ldr r0, _080D64D4  @ =0x00000FD2
	add r4, r4, r0
	add r4, r6, r4
	mov r0, #32
	strb r0, [r4]
_080D64C2:
	pop {r4-r6}
	pop {r0}
	bx r0
_080D64C8:
	.4byte gRam
_080D64CC:
	.4byte 0x00001142
_080D64D0:
	.4byte 0x00000FC2
_080D64D4:
	.4byte 0x00000FD2
	THUMB_FUNC_END sub_080D647C

	THUMB_FUNC_START sub_080D64D8
sub_080D64D8: @ 0x080D64D8
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _080D6504  @ =gRam
	ldr r1, _080D6508  @ =0x00000F52
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D650C
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r4, #0
	bl sub_080C631C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D6558
	b _080D6512
	.byte 0x00
	.byte 0x00
_080D6504:
	.4byte gRam
_080D6508:
	.4byte 0x00000F52
_080D650C:
	add r0, r4, #0
	bl sub_080D6754
_080D6512:
	ldr r5, _080D6560  @ =gRam
	ldr r2, _080D6564  @ =0x000010D2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D652A
	ldr r1, _080D6568  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #8
	strb r1, [r0]
_080D652A:
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D6558
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D6558
	ldr r1, _080D656C  @ =gUnknown_08175330
	ldr r2, _080D6570  @ =0x00000F52
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080D6558:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080D6560:
	.4byte gRam
_080D6564:
	.4byte 0x000010D2
_080D6568:
	.4byte 0x00000FA2
_080D656C:
	.4byte gUnknown_08175330
_080D6570:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D64D8

	THUMB_FUNC_START sub_080D6574
sub_080D6574: @ 0x080D6574
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r3, _080D65A8  @ =gRam
	ldr r0, _080D65AC  @ =0x00001172
	add r1, r3, r0
	add r1, r4, r1
	ldr r2, _080D65B0  @ =0x00000FC2
	add r0, r3, r2
	add r2, r4, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080D65B4
	add r0, r4, #0
	mov r1, #16
	bl sub_080C35FC
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C6F48
	b _080D65C4
_080D65A8:
	.4byte gRam
_080D65AC:
	.4byte 0x00001172
_080D65B0:
	.4byte 0x00000FC2
_080D65B4:
	ldr r1, _080D65CC  @ =0x00000F52
	add r0, r3, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #127
	strb r0, [r2]
_080D65C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D65CC:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D6574

	THUMB_FUNC_START sub_080D65D0
sub_080D65D0: @ 0x080D65D0
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r2, _080D6604  @ =gRam
	ldr r0, _080D6608  @ =0x00001172
	add r1, r2, r0
	add r1, r5, r1
	ldr r3, _080D660C  @ =0x00000FC2
	add r0, r2, r3
	add r4, r5, r0
	ldrb r0, [r4]
	strb r0, [r1]
	ldrb r0, [r4]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D6614
	sub r3, r3, #48
	add r1, r2, r3
	add r1, r5, r1
	ldr r2, _080D6610  @ =gUnknown_08175340
	lsr r0, r0, #27
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	b _080D6632
	.byte 0x00
	.byte 0x00
_080D6604:
	.4byte gRam
_080D6608:
	.4byte 0x00001172
_080D660C:
	.4byte 0x00000FC2
_080D6610:
	.4byte gUnknown_08175340
_080D6614:
	ldr r0, _080D6638  @ =0x00000F52
	add r1, r2, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	bl GetRandomInt
	mov r1, #63
	and r1, r1, r0
	add r1, r1, #160
	strb r1, [r4]
	add r0, r5, #0
	bl sub_080C3540
_080D6632:
	pop {r4,r5}
	pop {r0}
	bx r0
_080D6638:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D65D0

	THUMB_FUNC_START sub_080D663C
sub_080D663C: @ 0x080D663C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C5044
	ldr r5, _080D66B0  @ =gRam
	ldr r1, _080D66B4  @ =0x00000FC2
	add r0, r5, r1
	add r7, r4, r0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080D66CC
	ldr r2, _080D66B8  @ =0x00001052
	add r0, r5, r2
	add r6, r4, r0
	ldrb r1, [r6]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	bne _080D667A
	ldr r1, _080D66BC  @ =gUnknown_08175350
	sub r2, r2, #240
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r1, [r0]
	add r0, r4, #0
	bl sub_080C35FC
_080D667A:
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C6F48
	ldr r1, _080D66C0  @ =0x00001042
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D66CC
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	ldr r1, _080D66C4  @ =0x00000F92
	add r2, r5, r1
	add r2, r4, r2
	ldr r3, _080D66C8  @ =gUnknown_08175352
	lsl r0, r0, #24
	lsr r0, r0, #26
	mov r1, #3
	and r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	b _080D66DC
_080D66B0:
	.4byte gRam
_080D66B4:
	.4byte 0x00000FC2
_080D66B8:
	.4byte 0x00001052
_080D66BC:
	.4byte gUnknown_08175350
_080D66C0:
	.4byte 0x00001042
_080D66C4:
	.4byte 0x00000F92
_080D66C8:
	.4byte gUnknown_08175352
_080D66CC:
	ldr r2, _080D66E4  @ =0x00000F52
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #127
	strb r0, [r7]
_080D66DC:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D66E4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D663C

	THUMB_FUNC_START sub_080D66E8
sub_080D66E8: @ 0x080D66E8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r2, _080D6720  @ =gRam
	ldr r0, _080D6724  @ =0x00001172
	add r1, r2, r0
	add r1, r3, r1
	ldr r4, _080D6728  @ =0x00000FC2
	add r0, r2, r4
	add r4, r3, r0
	ldrb r0, [r4]
	strb r0, [r1]
	ldrb r0, [r4]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _080D6734
	ldr r5, _080D672C  @ =0x00000F92
	add r2, r2, r5
	add r2, r3, r2
	ldr r3, _080D6730  @ =gUnknown_08175356
	lsr r0, r0, #27
	mov r1, #15
	eor r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	b _080D6748
_080D6720:
	.4byte gRam
_080D6724:
	.4byte 0x00001172
_080D6728:
	.4byte 0x00000FC2
_080D672C:
	.4byte 0x00000F92
_080D6730:
	.4byte gUnknown_08175356
_080D6734:
	ldr r5, _080D6750  @ =0x00000F52
	add r0, r2, r5
	add r0, r3, r0
	strb r1, [r0]
	bl GetRandomInt
	mov r1, #31
	and r1, r1, r0
	add r1, r1, #64
	strb r1, [r4]
_080D6748:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D6750:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D66E8

	THUMB_FUNC_START sub_080D6754
sub_080D6754: @ 0x080D6754
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	ldr r5, _080D6854  @ =gRam
	ldr r1, _080D6858  @ =0x00000F92
	add r0, r5, r1
	mov r2, r9
	add r4, r2, r0
	ldrb r0, [r4]
	cmp r0, #8
	bhi _080D677C
	mov r0, r9
	bl sub_080C5D18
_080D677C:
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r9
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D6844
	ldr r1, _080D685C  @ =gUnknown_08175366
	ldrb r0, [r4]
	add r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #8]
	lsl r2, r0, #24
	cmp r2, #0
	blt _080D6844
	mov r10, r5
	add r3, sp, #4
	mov r8, r3
_080D67A4:
	ldr r0, _080D6858  @ =0x00000F92
	add r0, r0, r10
	add r0, r0, r9
	ldrb r1, [r0]
	lsl r1, r1, #2
	asr r0, r2, #24
	add r0, r0, r1
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r0, _080D6860  @ =gUnknown_08175454
	add r0, r5, r0
	ldr r7, _080D6864  @ =gUnknown_03002B99
	ldrb r4, [r7]
	ldrb r6, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	blt _080D67D2
	cmp r6, #72
	beq _080D67D2
	cmp r6, #104
	bne _080D67D6
_080D67D2:
	mov r0, #240
	and r4, r4, r0
_080D67D6:
	ldr r0, _080D6868  @ =gUnknown_03003E74
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r10
	ldr r1, _080D686C  @ =gUnknown_08175374
	lsl r3, r5, #1
	add r1, r3, r1
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080D6870  @ =gUnknown_081753E4
	add r3, r3, r2
	ldrh r2, [r3]
	ldr r3, _080D6874  @ =gUnknown_03002B94
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080D6878  @ =gUnknown_0817548C
	add r3, r5, r3
	ldrb r3, [r3]
	orr r4, r4, r3
	lsl r3, r4, #8
	add r3, r6, r3
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r4, _080D687C  @ =gUnknown_081754C4
	add r4, r5, r4
	ldrb r4, [r4]
	str r4, [sp]
	bl sub_080C6368
	ldr r7, [sp, #8]
	lsl r0, r7, #24
	mov r1, #255
	lsl r1, r1, #24
	add r0, r0, r1
	lsr r0, r0, #24
	str r0, [sp, #8]
	mov r2, r8
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldr r3, [sp, #8]
	lsl r2, r3, #24
	cmp r2, #0
	bge _080D67A4
_080D6844:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080D6854:
	.4byte gRam
_080D6858:
	.4byte 0x00000F92
_080D685C:
	.4byte gUnknown_08175366
_080D6860:
	.4byte gUnknown_08175454
_080D6864:
	.4byte gUnknown_03002B99
_080D6868:
	.4byte gUnknown_03003E74
_080D686C:
	.4byte gUnknown_08175374
_080D6870:
	.4byte gUnknown_081753E4
_080D6874:
	.4byte gUnknown_03002B94
_080D6878:
	.4byte gUnknown_0817548C
_080D687C:
	.4byte gUnknown_081754C4
	THUMB_FUNC_END sub_080D6754

	THUMB_FUNC_START sub_080D6880
sub_080D6880: @ 0x080D6880
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080D68B4  @ =gRam
	ldr r1, _080D68B8  @ =0x00000F62
	add r4, r3, r1
	add r4, r0, r4
	ldr r2, _080D68BC  @ =0x00000EE2
	add r1, r3, r2
	add r1, r0, r1
	ldrb r1, [r1]
	lsr r1, r1, #4
	mov r2, #1
	and r1, r1, r2
	strb r1, [r4]
	ldr r1, _080D68C0  @ =0x00001122
	add r3, r3, r1
	add r0, r0, r3
	ldr r2, _080D68C4  @ =gUnknown_0817532C
	ldrb r1, [r4]
	add r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
_080D68B4:
	.4byte gRam
_080D68B8:
	.4byte 0x00000F62
_080D68BC:
	.4byte 0x00000EE2
_080D68C0:
	.4byte 0x00001122
_080D68C4:
	.4byte gUnknown_0817532C
	THUMB_FUNC_END sub_080D6880

	THUMB_FUNC_START sub_080D68C8
sub_080D68C8: @ 0x080D68C8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r7, _080D694C  @ =gRam
	ldr r0, _080D6950  @ =0x000010A2
	add r0, r0, r7
	mov r9, r0
	add r6, r5, r0
	ldrb r0, [r6]
	add r0, r0, #1
	mov r1, #0
	strb r0, [r6]
	ldr r2, _080D6954  @ =0x00000FC2
	add r2, r2, r7
	mov r8, r2
	add r0, r5, r2
	strb r1, [r0]
	ldr r1, _080D6958  @ =0x00000F92
	add r0, r7, r1
	add r0, r5, r0
	mov r1, #6
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080C3758
	mov r0, #100
	add r1, r5, #0
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080D693E
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	mov r2, r8
	add r1, r4, r2
	mov r0, #96
	strb r0, [r1]
	ldr r1, _080D695C  @ =0x00001082
	add r0, r7, r1
	add r0, r5, r0
	strb r4, [r0]
	mov r2, r9
	add r1, r4, r2
	ldrb r0, [r6]
	strb r0, [r1]
	ldr r0, _080D6960  @ =0x00001122
	add r1, r7, r0
	add r1, r4, r1
	ldr r2, _080D6964  @ =gUnknown_081754FC
	ldrb r0, [r6]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
_080D693E:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D694C:
	.4byte gRam
_080D6950:
	.4byte 0x000010A2
_080D6954:
	.4byte 0x00000FC2
_080D6958:
	.4byte 0x00000F92
_080D695C:
	.4byte 0x00001082
_080D6960:
	.4byte 0x00001122
_080D6964:
	.4byte gUnknown_081754FC
	THUMB_FUNC_END sub_080D68C8

	THUMB_FUNC_START sub_080D6968
sub_080D6968: @ 0x080D6968
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C2FA8
	ldr r1, _080D6A9C  @ =gRam
	ldr r2, _080D6AA0  @ =0x0000097C
	add r0, r1, r2
	ldrb r0, [r0]
	add r0, r0, #32
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #63
	bhi _080D699C
	add r2, r2, #1
	add r0, r1, r2
	ldrb r0, [r0]
	add r0, r0, #32
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #63
	bhi _080D699C
	mov r0, #16
	bl sub_080CF388
_080D699C:
	add r0, r4, #0
	bl sub_080D6BB8
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D69B0
	b _080D6AF2
_080D69B0:
	ldr r5, _080D6A9C  @ =gRam
	ldr r1, _080D6AA4  @ =0x00001082
	add r0, r5, r1
	add r3, r4, r0
	ldrb r0, [r3]
	sub r1, r1, #224
	add r2, r5, r1
	add r0, r0, r2
	ldrb r1, [r0]
	cmp r1, #6
	bne _080D69C8
	b _080D6AD4
_080D69C8:
	ldr r2, _080D6AA8  @ =0x00000F92
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080D6A80
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D6A80
	bl sub_08093078
	ldr r1, _080D6AAC  @ =0x00000546
	add r0, r5, r1
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _080D69FA
	ldr r2, _080D6AB0  @ =0x00000DA7
	add r1, r5, r2
	mov r0, #1
	strb r0, [r1]
_080D69FA:
	add r0, r4, #0
	mov r1, #16
	bl sub_080C35FC
	mov r6, #0
	ldr r1, _080D6AB4  @ =0x00000F62
	add r0, r5, r1
	add r3, r4, r0
	ldrb r2, [r3]
	mov r1, #150
	lsl r1, r1, #4
	add r0, r5, r1
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _080D6A28
	mov r6, #1
	mvn r0, r1
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
_080D6A28:
	add r0, r1, r2
	strb r0, [r3]
	mov r7, #128
	lsl r7, r7, #1
	and r0, r0, r7
	cmp r0, #0
	beq _080D6A44
	ldr r1, _080D6AB8  @ =gUnknown_081754FE
	lsl r0, r6, #1
	add r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _080D6ABC  @ =0x00000DAA
	add r0, r5, r2
	strh r1, [r0]
_080D6A44:
	mov r6, #0
	ldr r1, _080D6AC0  @ =0x00000F72
	add r0, r5, r1
	add r3, r4, r0
	ldrb r2, [r3]
	ldr r1, _080D6AC4  @ =0x00000961
	add r0, r5, r1
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _080D6A68
	mov r6, #1
	mvn r0, r1
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
_080D6A68:
	add r0, r1, r2
	strb r0, [r3]
	and r0, r0, r7
	cmp r0, #0
	beq _080D6A80
	ldr r1, _080D6AB8  @ =gUnknown_081754FE
	lsl r0, r6, #1
	add r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _080D6AC8  @ =0x00000DA8
	add r0, r5, r2
	strh r1, [r0]
_080D6A80:
	ldr r1, _080D6ACC  @ =gUnknown_08175504
	ldr r0, _080D6A9C  @ =gRam
	ldr r2, _080D6AD0  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	b _080D6AF2
	.byte 0x00
	.byte 0x00
_080D6A9C:
	.4byte gRam
_080D6AA0:
	.4byte 0x0000097C
_080D6AA4:
	.4byte 0x00001082
_080D6AA8:
	.4byte 0x00000F92
_080D6AAC:
	.4byte 0x00000546
_080D6AB0:
	.4byte 0x00000DA7
_080D6AB4:
	.4byte 0x00000F62
_080D6AB8:
	.4byte gUnknown_081754FE
_080D6ABC:
	.4byte 0x00000DAA
_080D6AC0:
	.4byte 0x00000F72
_080D6AC4:
	.4byte 0x00000961
_080D6AC8:
	.4byte 0x00000DA8
_080D6ACC:
	.4byte gUnknown_08175504
_080D6AD0:
	.4byte 0x00000F52
_080D6AD4:
	add r0, r4, r2
	strb r1, [r0]
	ldr r0, _080D6AF8  @ =0x00000FC2
	add r1, r5, r0
	add r2, r4, r1
	ldrb r0, [r3]
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r2, _080D6AFC  @ =0x00001012
	add r1, r5, r2
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #4
	strb r0, [r1]
_080D6AF2:
	pop {r4-r7}
	pop {r0}
	bx r0
_080D6AF8:
	.4byte 0x00000FC2
_080D6AFC:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080D6968

	THUMB_FUNC_START sub_080D6B00
sub_080D6B00: @ 0x080D6B00
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080D6B28  @ =gRam
	ldr r3, _080D6B2C  @ =0x00000FC2
	add r0, r1, r3
	add r3, r2, r0
	ldrb r0, [r3]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D6B38
	ldr r4, _080D6B30  @ =0x00000F92
	add r1, r1, r4
	add r1, r2, r1
	ldr r2, _080D6B34  @ =gUnknown_08175514
	lsr r0, r0, #28
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	b _080D6B48
_080D6B28:
	.4byte gRam
_080D6B2C:
	.4byte 0x00000FC2
_080D6B30:
	.4byte 0x00000F92
_080D6B34:
	.4byte gUnknown_08175514
_080D6B38:
	ldr r4, _080D6B50  @ =0x00000F52
	add r0, r1, r4
	add r0, r2, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #255
	strb r0, [r3]
_080D6B48:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D6B50:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D6B00

	THUMB_FUNC_START sub_080D6B54
sub_080D6B54: @ 0x080D6B54
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r1, _080D6BA4  @ =gRam
	ldr r2, _080D6BA8  @ =0x00000996
	add r0, r1, r2
	ldrb r0, [r0]
	mov r3, #15
	and r3, r3, r0
	cmp r3, #0
	bne _080D6B80
	ldr r2, _080D6BAC  @ =0x00000F92
	add r0, r1, r2
	add r2, r4, r0
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #2
	bls _080D6B80
	strb r3, [r2]
_080D6B80:
	ldr r2, _080D6BB0  @ =0x00000FC2
	add r0, r1, r2
	add r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080D6B9C
	mov r0, #63
	strb r0, [r2]
	ldr r0, _080D6BB4  @ =0x00000F52
	add r1, r1, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D6B9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D6BA4:
	.4byte gRam
_080D6BA8:
	.4byte 0x00000996
_080D6BAC:
	.4byte 0x00000F92
_080D6BB0:
	.4byte 0x00000FC2
_080D6BB4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D6B54

	THUMB_FUNC_START sub_080D6BB8
sub_080D6BB8: @ 0x080D6BB8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	add r2, r5, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D6C7A
	ldr r4, _080D6C8C  @ =gRam
	ldr r1, _080D6C90  @ =0x00000F92
	add r0, r4, r1
	add r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #6
	beq _080D6C7A
	mov r0, #3
	mov r9, r4
	mov r8, r2
	ldr r4, _080D6C94  @ =0x00000969
	add r4, r4, r9
	mov r10, r4
	add r7, sp, #4
_080D6BF6:
	mov r1, r8
	ldrb r5, [r1]
	lsl r5, r5, #2
	lsl r6, r0, #24
	asr r6, r6, #24
	add r5, r6, r5
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r0, _080D6C98  @ =gUnknown_03003E74
	ldrb r1, [r7]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r9
	ldr r1, _080D6C9C  @ =gUnknown_0817551C
	lsl r3, r5, #1
	add r1, r3, r1
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r4, _080D6CA0  @ =0x00000964
	add r4, r4, r9
	ldr r2, _080D6CA4  @ =gUnknown_0817554C
	add r3, r3, r2
	ldrh r2, [r3]
	ldrh r4, [r4]
	add r2, r2, r4
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080D6CA8  @ =gUnknown_0817557C
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080D6CAC  @ =gUnknown_08175594
	add r5, r5, r4
	ldrb r4, [r5]
	mov r5, r10
	ldrb r5, [r5]
	lsl r5, r5, #24
	asr r5, r5, #24
	orr r4, r4, r5
	lsl r4, r4, #8
	add r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r4, _080D6CB0  @ =gUnknown_081755AC
	mov r12, r4
	mov r5, r8
	ldrb r4, [r5]
	add r4, r4, r12
	ldrb r4, [r4]
	str r4, [sp]
	bl sub_080C6368
	sub r6, r6, #1
	lsl r6, r6, #24
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	lsr r0, r6, #24
	cmp r6, #0
	bge _080D6BF6
_080D6C7A:
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
_080D6C8C:
	.4byte gRam
_080D6C90:
	.4byte 0x00000F92
_080D6C94:
	.4byte 0x00000969
_080D6C98:
	.4byte gUnknown_03003E74
_080D6C9C:
	.4byte gUnknown_0817551C
_080D6CA0:
	.4byte 0x00000964
_080D6CA4:
	.4byte gUnknown_0817554C
_080D6CA8:
	.4byte gUnknown_0817557C
_080D6CAC:
	.4byte gUnknown_08175594
_080D6CB0:
	.4byte gUnknown_081755AC
	THUMB_FUNC_END sub_080D6BB8

	THUMB_FUNC_START sub_080D6CB4
sub_080D6CB4: @ 0x080D6CB4
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _080D6CE8  @ =gRam
	ldr r1, _080D6CEC  @ =0x00000F92
	add r0, r3, r1
	add r0, r2, r0
	mov r1, #6
	strb r1, [r0]
	ldr r1, _080D6CF0  @ =0x00000FC2
	add r0, r3, r1
	add r4, r2, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D6CE2
	sub r1, r1, #112
	add r0, r3, r1
	add r0, r2, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #63
	strb r0, [r4]
_080D6CE2:
	pop {r4}
	pop {r0}
	bx r0
_080D6CE8:
	.4byte gRam
_080D6CEC:
	.4byte 0x00000F92
_080D6CF0:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080D6CB4

	THUMB_FUNC_START sub_080D6CF4
sub_080D6CF4: @ 0x080D6CF4
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080D6D20  @ =gRam
	ldr r3, _080D6D24  @ =0x00000FC2
	add r0, r1, r3
	add r4, r2, r0
	ldrb r0, [r4]
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #0
	beq _080D6D30
	ldr r5, _080D6D28  @ =0x00000F92
	add r1, r1, r5
	add r1, r2, r1
	ldr r2, _080D6D2C  @ =gUnknown_08175518
	lsr r0, r0, #28
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	b _080D6D3C
	.byte 0x00
	.byte 0x00
_080D6D20:
	.4byte gRam
_080D6D24:
	.4byte 0x00000FC2
_080D6D28:
	.4byte 0x00000F92
_080D6D2C:
	.4byte gUnknown_08175518
_080D6D30:
	ldr r5, _080D6D44  @ =0x00000F52
	add r0, r1, r5
	add r0, r2, r0
	strb r3, [r0]
	mov r0, #32
	strb r0, [r4]
_080D6D3C:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D6D44:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D6CF4

	THUMB_FUNC_START sub_080D6D48
sub_080D6D48: @ 0x080D6D48
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C5044
	ldr r1, _080D6D78  @ =gRam
	ldr r2, _080D6D7C  @ =0x00000FC2
	add r0, r1, r2
	add r2, r4, r0
	ldrb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D6D88
	ldr r3, _080D6D80  @ =0x00000F92
	add r1, r1, r3
	add r1, r4, r1
	ldr r2, _080D6D84  @ =gUnknown_081755C4
	lsr r0, r0, #28
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	b _080D6D98
	.byte 0x00
	.byte 0x00
_080D6D78:
	.4byte gRam
_080D6D7C:
	.4byte 0x00000FC2
_080D6D80:
	.4byte 0x00000F92
_080D6D84:
	.4byte gUnknown_081755C4
_080D6D88:
	ldr r3, _080D6DA0  @ =0x00000F52
	add r0, r1, r3
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #128
	strb r0, [r2]
_080D6D98:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D6DA0:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D6D48

	THUMB_FUNC_START sub_080D6DA4
sub_080D6DA4: @ 0x080D6DA4
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C5044
	ldr r5, _080D6E10  @ =gRam
	ldr r1, _080D6E14  @ =0x00000FC2
	add r0, r5, r1
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080D6E30
	mov r1, #31
	and r1, r1, r0
	ldr r2, _080D6E18  @ =0x000010A2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	ldr r2, _080D6E1C  @ =0x000009AD
	add r0, r5, r2
	ldrb r0, [r0]
	orr r1, r1, r0
	ldr r2, _080D6E20  @ =0x000010D2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	ldr r2, _080D6E24  @ =0x00001605
	add r0, r5, r2
	ldrb r0, [r0]
	orr r1, r1, r0
	cmp r1, #0
	bne _080D6DF0
	add r0, r4, #0
	bl sub_080E89E4
_080D6DF0:
	ldr r0, _080D6E28  @ =0x00001052
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D6E2C  @ =0x00000F92
	add r2, r5, r1
	add r2, r4, r2
	lsl r0, r0, #24
	lsr r0, r0, #27
	mov r1, #1
	and r0, r0, r1
	add r0, r0, #2
	strb r0, [r2]
	b _080D6E40
_080D6E10:
	.4byte gRam
_080D6E14:
	.4byte 0x00000FC2
_080D6E18:
	.4byte 0x000010A2
_080D6E1C:
	.4byte 0x000009AD
_080D6E20:
	.4byte 0x000010D2
_080D6E24:
	.4byte 0x00001605
_080D6E28:
	.4byte 0x00001052
_080D6E2C:
	.4byte 0x00000F92
_080D6E30:
	mov r0, #31
	strb r0, [r1]
	ldr r2, _080D6E48  @ =0x00000F52
	add r1, r5, r2
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D6E40:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D6E48:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D6DA4

	THUMB_FUNC_START sub_080D6E4C
sub_080D6E4C: @ 0x080D6E4C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	ldr r4, _080D6F30  @ =gRam
	ldr r1, _080D6F34  @ =0x00000F52
	add r0, r4, r1
	add r0, r0, r9
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D6F20
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r9
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D6F20
	mov r2, #3
	mov r8, r4
	mov r3, sp
	add r3, r3, #4
	str r3, [sp, #8]
	ldr r7, _080D6F38  @ =0x00000964
	add r7, r7, r8
	mov r10, r7
_080D6E8E:
	ldr r0, _080D6F3C  @ =0x00000F92
	add r0, r0, r8
	add r0, r0, r9
	ldrb r0, [r0]
	lsl r0, r0, #2
	lsl r1, r2, #24
	asr r6, r1, #24
	add r0, r6, r0
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r5, r0, #0
	ldr r0, _080D6F40  @ =gUnknown_08175618
	add r0, r5, r0
	ldr r1, _080D6F44  @ =0x00000969
	add r1, r1, r8
	ldrb r2, [r0]
	ldrb r0, [r1]
	add r4, r0, #0
	eor r4, r4, r2
	mov r0, #15
	and r0, r0, r2
	cmp r0, #0
	bne _080D6EC0
	mov r0, #240
	and r4, r4, r0
_080D6EC0:
	ldr r0, _080D6F48  @ =gUnknown_03003E74
	ldr r2, [sp, #8]
	ldrb r1, [r2]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r8
	ldr r1, _080D6F4C  @ =gUnknown_081755C8
	lsl r3, r5, #1
	add r1, r3, r1
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080D6F50  @ =gUnknown_081755E8
	add r3, r3, r2
	ldrh r2, [r3]
	mov r3, r10
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080D6F54  @ =gUnknown_08175608
	add r3, r5, r3
	ldrb r3, [r3]
	lsl r4, r4, #8
	add r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r4, _080D6F58  @ =gUnknown_08175628
	add r4, r5, r4
	ldrb r4, [r4]
	str r4, [sp]
	bl sub_080C6368
	sub r1, r6, #1
	lsl r1, r1, #24
	ldr r7, [sp, #8]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	lsr r2, r1, #24
	cmp r1, #0
	bge _080D6E8E
_080D6F20:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080D6F30:
	.4byte gRam
_080D6F34:
	.4byte 0x00000F52
_080D6F38:
	.4byte 0x00000964
_080D6F3C:
	.4byte 0x00000F92
_080D6F40:
	.4byte gUnknown_08175618
_080D6F44:
	.4byte 0x00000969
_080D6F48:
	.4byte gUnknown_03003E74
_080D6F4C:
	.4byte gUnknown_081755C8
_080D6F50:
	.4byte gUnknown_081755E8
_080D6F54:
	.4byte gUnknown_08175608
_080D6F58:
	.4byte gUnknown_08175628
	THUMB_FUNC_END sub_080D6E4C

	THUMB_FUNC_START sub_080D6F5C
sub_080D6F5C: @ 0x080D6F5C
	push {r4,r5,lr}
	add r5, r0, #0
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r4, _080D6F90  @ =gRam
	ldr r1, _080D6F94  @ =0x00000FF2
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #99
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080CEB84
	ldr r0, _080D6F98  @ =0x000010A2
	add r4, r4, r0
	add r4, r5, r4
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	add r0, r5, #0
	bl sub_080D68C8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D6F90:
	.4byte gRam
_080D6F94:
	.4byte 0x00000FF2
_080D6F98:
	.4byte 0x000010A2
	THUMB_FUNC_END sub_080D6F5C

	THUMB_FUNC_START sub_080D6F9C
sub_080D6F9C: @ 0x080D6F9C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080D6E4C
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D6FCC
	ldr r1, _080D6FD4  @ =gUnknown_081755B4
	ldr r0, _080D6FD8  @ =gRam
	ldr r2, _080D6FDC  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080D6FCC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D6FD4:
	.4byte gUnknown_081755B4
_080D6FD8:
	.4byte gRam
_080D6FDC:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D6F9C

	THUMB_FUNC_START sub_080D6FE0
sub_080D6FE0: @ 0x080D6FE0
	push {r4,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r4, _080D7014  @ =gRam
	ldr r0, _080D7018  @ =0x00001172
	add r1, r4, r0
	add r1, r3, r1
	ldr r2, _080D701C  @ =0x00000FC2
	add r0, r4, r2
	add r2, r3, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	bne _080D700E
	ldr r1, _080D7020  @ =0x00000F52
	add r0, r4, r1
	add r0, r3, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #31
	strb r0, [r2]
_080D700E:
	pop {r4}
	pop {r0}
	bx r0
_080D7014:
	.4byte gRam
_080D7018:
	.4byte 0x00001172
_080D701C:
	.4byte 0x00000FC2
_080D7020:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D6FE0

	THUMB_FUNC_START sub_080D7024
sub_080D7024: @ 0x080D7024
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C5044
	ldr r1, _080D7054  @ =gRam
	ldr r2, _080D7058  @ =0x00000FC2
	add r0, r1, r2
	add r3, r4, r0
	ldrb r0, [r3]
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	beq _080D7064
	ldr r5, _080D705C  @ =0x00000F92
	add r1, r1, r5
	add r1, r4, r1
	ldr r2, _080D7060  @ =gUnknown_081755C6
	lsr r0, r0, #28
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	b _080D7070
_080D7054:
	.4byte gRam
_080D7058:
	.4byte 0x00000FC2
_080D705C:
	.4byte 0x00000F92
_080D7060:
	.4byte gUnknown_081755C6
_080D7064:
	ldr r5, _080D7078  @ =0x00000F52
	add r0, r1, r5
	add r0, r4, r0
	strb r2, [r0]
	mov r0, #223
	strb r0, [r3]
_080D7070:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D7078:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D7024

	THUMB_FUNC_START sub_080D707C
sub_080D707C: @ 0x080D707C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r8, r4
	ldr r6, _080D7248  @ =gRam
	ldr r1, _080D724C  @ =0x00000FB2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r3, [r0]
	add r7, r3, #0
	ldr r2, _080D7250  @ =0x00000D94
	add r1, r6, r2
	add r1, r4, r1
	ldrb r5, [r1]
	mov r9, r5
	mov r0, #48
	mov r5, #0
	mov r2, sp
	strb r5, [r2]
	mov r2, r9
	orr r0, r0, r2
	strb r0, [r1]
	ldr r5, _080D7254  @ =gUnknown_030031C2
	add r2, r4, r5
	ldr r0, _080D7258  @ =gUnknown_08175640
	add r0, r3, r0
	ldrb r1, [r0]
	strb r1, [r2]
	ldr r5, _080D725C  @ =0x00000FE2
	add r0, r6, r5
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D70CE
	add r0, r1, #1
	strb r0, [r2]
_080D70CE:
	ldr r0, _080D7260  @ =0x00001122
	add r2, r6, r0
	add r2, r4, r2
	ldrb r0, [r2]
	mov r1, #191
	and r1, r1, r0
	ldr r0, _080D7264  @ =gUnknown_08175644
	add r0, r3, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	strb r1, [r2]
	add r0, r4, #0
	bl sub_080C6240
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D70F8
	b _080D7236
_080D70F8:
	ldr r2, _080D7268  @ =gUnknown_030031F2
	add r1, r4, r2
	ldrb r0, [r1]
	cmp r0, #0
	bne _080D7114
	mov r0, #128
	strb r0, [r1]
	ldr r0, _080D726C  @ =0x00000F62
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	mov r2, #1
	eor r0, r0, r2
	strb r0, [r1]
_080D7114:
	ldr r1, _080D7270  @ =0x00000F22
	add r1, r1, r6
	mov r10, r1
	add r3, r4, r1
	ldr r2, _080D7274  @ =gUnknown_08175638
	ldr r0, _080D726C  @ =0x00000F62
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r2, _080D7278  @ =0x00000F12
	add r2, r2, r6
	mov r9, r2
	add r3, r4, r2
	ldr r2, _080D727C  @ =gUnknown_0817563C
	ldrb r0, [r1]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	add r0, r4, #0
	bl Sprite3_Move
	ldr r0, _080D7280  @ =0x00000996
	add r1, r6, r0
	lsl r0, r4, #2
	ldrb r1, [r1]
	add r0, r0, r1
	mov r1, #31
	and r0, r0, r1
	cmp r0, #0
	bne _080D715A
	mov r0, #16
	strb r0, [r5]
_080D715A:
	ldrb r5, [r5]
	cmp r5, #1
	bne _080D7236
	ldr r1, _080D7284  @ =0x000010D2
	add r0, r6, r1
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D7236
	mov r0, #107
	mov r1, r8
	mov r2, #13
	bl sub_080C9AAC
	add r4, r0, #0
	cmp r4, #0
	blt _080D7236
	mov r0, r8
	mov r1, #88
	bl sub_080CF140
	ldr r2, _080D7288  @ =0x00000F82
	add r0, r6, r2
	add r0, r4, r0
	mov r3, #1
	strb r5, [r0]
	ldr r1, _080D7254  @ =gUnknown_030031C2
	add r0, r4, r1
	strb r5, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r1, r6, r2
	ldr r0, _080D728C  @ =gUnknown_08175648
	add r0, r7, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080D7290  @ =gUnknown_0817564C
	add r0, r7, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r5, _080D7294  @ =0x00000EE2
	add r0, r6, r5
	add r0, r4, r0
	strb r1, [r0]
	ldr r2, _080D7298  @ =0x00000F02
	add r0, r6, r2
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r5, _080D729C  @ =0x00000964
	add r1, r6, r5
	ldr r0, _080D72A0  @ =gUnknown_08175650
	add r0, r7, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080D72A4  @ =gUnknown_08175654
	add r0, r7, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r2, r2, #48
	add r0, r6, r2
	add r0, r4, r0
	strb r1, [r0]
	ldr r5, _080D72A8  @ =0x00000EF2
	add r0, r6, r5
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	mov r0, r10
	add r1, r4, r0
	ldr r0, _080D72AC  @ =gUnknown_08175658
	add r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	mov r2, r9
	add r1, r4, r2
	ldr r0, _080D72B0  @ =gUnknown_0817565C
	add r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r5, _080D72B4  @ =0x00001012
	add r1, r6, r5
	add r1, r4, r1
	ldrb r2, [r1]
	mov r0, #240
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r1]
	ldr r0, _080D72B8  @ =0x00001032
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	mov r2, #71
	orr r0, r0, r2
	strb r0, [r1]
	ldr r2, _080D72BC  @ =0x00000E75
	add r1, r6, r2
	add r1, r4, r1
	ldrb r0, [r1]
	mov r2, #68
	orr r0, r0, r2
	strb r0, [r1]
	ldr r5, _080D7268  @ =gUnknown_030031F2
	add r1, r4, r5
	mov r0, #32
	strb r0, [r1]
_080D7236:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D7248:
	.4byte gRam
_080D724C:
	.4byte 0x00000FB2
_080D7250:
	.4byte 0x00000D94
_080D7254:
	.4byte gUnknown_030031C2
_080D7258:
	.4byte gUnknown_08175640
_080D725C:
	.4byte 0x00000FE2
_080D7260:
	.4byte 0x00001122
_080D7264:
	.4byte gUnknown_08175644
_080D7268:
	.4byte gUnknown_030031F2
_080D726C:
	.4byte 0x00000F62
_080D7270:
	.4byte 0x00000F22
_080D7274:
	.4byte gUnknown_08175638
_080D7278:
	.4byte 0x00000F12
_080D727C:
	.4byte gUnknown_0817563C
_080D7280:
	.4byte 0x00000996
_080D7284:
	.4byte 0x000010D2
_080D7288:
	.4byte 0x00000F82
_080D728C:
	.4byte gUnknown_08175648
_080D7290:
	.4byte gUnknown_0817564C
_080D7294:
	.4byte 0x00000EE2
_080D7298:
	.4byte 0x00000F02
_080D729C:
	.4byte 0x00000964
_080D72A0:
	.4byte gUnknown_08175650
_080D72A4:
	.4byte gUnknown_08175654
_080D72A8:
	.4byte 0x00000EF2
_080D72AC:
	.4byte gUnknown_08175658
_080D72B0:
	.4byte gUnknown_0817565C
_080D72B4:
	.4byte 0x00001012
_080D72B8:
	.4byte 0x00001032
_080D72BC:
	.4byte 0x00000E75
	THUMB_FUNC_END sub_080D707C

	THUMB_FUNC_START sub_080D72C0
sub_080D72C0: @ 0x080D72C0
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D72EC  @ =gRam
	ldr r1, _080D72F0  @ =0x00000FB2
	add r3, r2, r1
	add r3, r0, r3
	ldr r4, _080D72F4  @ =0x00000FF2
	add r1, r2, r4
	add r1, r0, r1
	ldrb r1, [r1]
	sub r1, r1, #102
	strb r1, [r3]
	ldr r3, _080D72F8  @ =0x00000F62
	add r2, r2, r3
	add r0, r0, r2
	mov r2, #2
	and r1, r1, r2
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
_080D72EC:
	.4byte gRam
_080D72F0:
	.4byte 0x00000FB2
_080D72F4:
	.4byte 0x00000FF2
_080D72F8:
	.4byte 0x00000F62
	THUMB_FUNC_END sub_080D72C0

	THUMB_FUNC_START sub_080D72FC
sub_080D72FC: @ 0x080D72FC
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r2, r4, #0
	ldr r5, _080D7320  @ =gRam
	ldr r1, _080D7324  @ =0x000009B2
	add r0, r5, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080D732C
	ldr r1, _080D7328  @ =0x00000F92
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	b _080D73DC
_080D7320:
	.4byte gRam
_080D7324:
	.4byte 0x000009B2
_080D7328:
	.4byte 0x00000F92
_080D732C:
	ldr r1, _080D7398  @ =0x000010F2
	add r0, r5, r1
	add r0, r4, r0
	mov r6, #0
	mov r1, #2
	strb r1, [r0]
	ldr r1, _080D739C  @ =0x000009DA
	add r0, r5, r1
	ldrh r1, [r0]
	ldr r0, _080D73A0  @ =0x00000107
	cmp r1, r0
	beq _080D73C0
	ldr r0, _080D73A4  @ =0x00000E85
	add r3, r5, r0
	add r3, r4, r3
	sub r0, r0, #206
	add r1, r5, r0
	ldrb r0, [r1]
	strb r0, [r3]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D73A8  @ =0x00000AA8
	add r0, r5, r1
	ldrh r1, [r0]
	lsr r1, r1, #8
	ldr r2, _080D73AC  @ =gUnknown_08175660
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	and r1, r1, r0
	cmp r1, #0
	beq _080D7376
	ldr r1, _080D73B0  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	strb r6, [r0]
_080D7376:
	ldr r0, _080D73B4  @ =0x00000F92
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D73B8  @ =0x00001122
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #8
	strb r1, [r0]
	ldr r1, _080D73BC  @ =0x00001032
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #32
	strb r1, [r0]
	b _080D73DC
_080D7398:
	.4byte 0x000010F2
_080D739C:
	.4byte 0x000009DA
_080D73A0:
	.4byte 0x00000107
_080D73A4:
	.4byte 0x00000E85
_080D73A8:
	.4byte 0x00000AA8
_080D73AC:
	.4byte gUnknown_08175660
_080D73B0:
	.4byte 0x00000FA2
_080D73B4:
	.4byte 0x00000F92
_080D73B8:
	.4byte 0x00001122
_080D73BC:
	.4byte 0x00001032
_080D73C0:
	ldr r0, _080D73D0  @ =gBookOfMudora
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D73D4
	mov r0, #14
	bl sub_0812FBC4
	b _080D73DC
_080D73D0:
	.4byte gBookOfMudora
_080D73D4:
	ldr r1, _080D73E4  @ =0x00000FA2
	add r0, r5, r1
	add r0, r2, r0
	strb r6, [r0]
_080D73DC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D73E4:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080D72FC

	THUMB_FUNC_START sub_080D73E8
sub_080D73E8: @ 0x080D73E8
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C59CC
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _080D749C
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D741A
	ldr r0, _080D74A4  @ =gRam
	ldr r1, _080D74A8  @ =0x00000F52
	add r0, r0, r1
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
_080D741A:
	ldr r7, _080D74A4  @ =gRam
	ldr r2, _080D74A8  @ =0x00000F52
	add r0, r7, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #2
	bne _080D7434
	add r0, r4, #0
	bl sub_080D0820
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D749C
_080D7434:
	add r0, r4, #0
	bl Sprite3_Move
	ldr r1, _080D74AC  @ =0x00001152
	add r0, r7, r1
	add r5, r4, r0
	ldrb r0, [r5]
	sub r0, r0, #1
	strb r0, [r5]
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r2, _080D74B0  @ =0x00001142
	add r0, r7, r2
	add r2, r4, r0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D7484
	ldr r1, _080D74B4  @ =0x00000F12
	add r0, r7, r1
	add r0, r4, r0
	strb r6, [r0]
	strb r6, [r2]
	ldrb r0, [r5]
	mvn r0, r0
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r0, r0, #1
	asr r0, r0, #2
	strb r0, [r5]
	mov r1, #254
	and r0, r0, r1
	cmp r0, #0
	beq _080D7484
	add r0, r4, #0
	mov r1, #19
	bl sub_080CF140
_080D7484:
	ldr r1, _080D74B8  @ =gUnknown_08175670
	ldr r0, _080D74A4  @ =gRam
	ldr r2, _080D74A8  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080D749C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D74A4:
	.4byte gRam
_080D74A8:
	.4byte 0x00000F52
_080D74AC:
	.4byte 0x00001152
_080D74B0:
	.4byte 0x00001142
_080D74B4:
	.4byte 0x00000F12
_080D74B8:
	.4byte gUnknown_08175670
	THUMB_FUNC_END sub_080D73E8

	THUMB_FUNC_START sub_080D74BC
sub_080D74BC: @ 0x080D74BC
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r3, _080D7548  @ =gRam
	ldr r1, _080D754C  @ =0x00001622
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080D7550  @ =0x00001623
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r5, _080D7554  @ =0x000016C4
	add r0, r3, r5
	ldrb r2, [r0]
	add r5, r5, #1
	add r0, r3, r5
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #32
	bhi _080D7542
	ldr r1, _080D7558  @ =0x00001624
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080D755C  @ =0x00001625
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r5, r5, #5
	add r0, r3, r5
	ldrb r2, [r0]
	add r5, r5, #1
	add r0, r3, r5
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #24
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #40
	bhi _080D7542
	ldr r1, _080D7560  @ =0x00000A28
	add r0, r3, r1
	ldr r2, _080D7564  @ =0x00000A2A
	add r1, r3, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	orr r0, r0, r1
	cmp r0, #0
	beq _080D7542
	ldr r5, _080D7568  @ =0x00000F52
	add r1, r3, r5
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D7542:
	pop {r4,r5}
	pop {r0}
	bx r0
_080D7548:
	.4byte gRam
_080D754C:
	.4byte 0x00001622
_080D7550:
	.4byte 0x00001623
_080D7554:
	.4byte 0x000016C4
_080D7558:
	.4byte 0x00001624
_080D755C:
	.4byte 0x00001625
_080D7560:
	.4byte 0x00000A28
_080D7564:
	.4byte 0x00000A2A
_080D7568:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D74BC

	THUMB_FUNC_START sub_080D756C
sub_080D756C: @ 0x080D756C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C6240
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _080D7608
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D759E
	ldr r0, _080D7610  @ =gRam
	ldr r1, _080D7614  @ =0x00000F52
	add r0, r0, r1
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
_080D759E:
	add r0, r4, #0
	bl Sprite3_Move
	ldr r7, _080D7610  @ =gRam
	ldr r2, _080D7618  @ =0x00001152
	add r0, r7, r2
	add r5, r4, r0
	ldrb r0, [r5]
	sub r0, r0, #1
	strb r0, [r5]
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r1, _080D761C  @ =0x00001142
	add r0, r7, r1
	add r2, r4, r0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D75F0
	ldr r1, _080D7620  @ =0x00000F12
	add r0, r7, r1
	add r0, r4, r0
	strb r6, [r0]
	strb r6, [r2]
	ldrb r0, [r5]
	mvn r0, r0
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r0, r0, #1
	asr r0, r0, #2
	strb r0, [r5]
	mov r1, #254
	and r0, r0, r1
	cmp r0, #0
	beq _080D75F0
	add r0, r4, #0
	mov r1, #13
	bl sub_080CF0AC
_080D75F0:
	ldr r1, _080D7624  @ =gUnknown_08175684
	ldr r0, _080D7610  @ =gRam
	ldr r2, _080D7614  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080D7608:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D7610:
	.4byte gRam
_080D7614:
	.4byte 0x00000F52
_080D7618:
	.4byte 0x00001152
_080D761C:
	.4byte 0x00001142
_080D7620:
	.4byte 0x00000F12
_080D7624:
	.4byte gUnknown_08175684
	THUMB_FUNC_END sub_080D756C

	THUMB_FUNC_START sub_080D7628
sub_080D7628: @ 0x080D7628
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r3, _080D76C0  @ =gRam
	ldr r1, _080D76C4  @ =0x000016D5
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D76B8
	ldr r2, _080D76C8  @ =0x00001622
	add r0, r3, r2
	ldrb r1, [r0]
	ldr r5, _080D76CC  @ =0x00001623
	add r0, r3, r5
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r2, r2, #162
	add r0, r3, r2
	ldrb r2, [r0]
	add r5, r5, #162
	add r0, r3, r5
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #39
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #46
	bhi _080D76B8
	ldr r1, _080D76D0  @ =0x00001624
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080D76D4  @ =0x00001625
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r5, r5, #5
	add r0, r3, r5
	ldrb r2, [r0]
	add r5, r5, #1
	add r0, r3, r5
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #40
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #45
	bhi _080D76B8
	ldr r1, _080D76D8  @ =0x00000A28
	add r0, r3, r1
	ldr r2, _080D76DC  @ =0x00000A2A
	add r1, r3, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	orr r0, r0, r1
	cmp r0, #0
	beq _080D76B8
	ldr r5, _080D76E0  @ =0x00000F52
	add r1, r3, r5
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D76B8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D76C0:
	.4byte gRam
_080D76C4:
	.4byte 0x000016D5
_080D76C8:
	.4byte 0x00001622
_080D76CC:
	.4byte 0x00001623
_080D76D0:
	.4byte 0x00001624
_080D76D4:
	.4byte 0x00001625
_080D76D8:
	.4byte 0x00000A28
_080D76DC:
	.4byte 0x00000A2A
_080D76E0:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D7628

	THUMB_FUNC_START sub_080D76E4
sub_080D76E4: @ 0x080D76E4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r8, r4
	ldr r7, _080D778C  @ =gRam
	ldr r1, _080D7790  @ =0x00001012
	add r0, r7, r1
	add r0, r4, r0
	mov r1, #143
	strb r1, [r0]
	ldr r2, _080D7794  @ =0x00001132
	add r0, r7, r2
	add r0, r4, r0
	mov r1, #71
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080D7930
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _080D7782
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D7734
	bl sub_080AF16C
	ldr r1, _080D7798  @ =0x00001719
	add r0, r7, r1
	strb r6, [r0]
	bl sub_0809945C
_080D7734:
	add r0, r4, #0
	bl Sprite3_Move
	ldr r2, _080D779C  @ =0x00001152
	add r0, r7, r2
	add r5, r4, r0
	ldrb r0, [r5]
	sub r0, r0, #1
	strb r0, [r5]
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r1, _080D77A0  @ =0x00001142
	add r0, r7, r1
	add r2, r4, r0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080D776C
	strb r6, [r2]
	ldrb r0, [r5]
	mvn r0, r0
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r0, r0, #1
	asr r0, r0, #2
	strb r0, [r5]
_080D776C:
	ldr r1, _080D77A4  @ =gUnknown_08175694
	ldr r2, _080D77A8  @ =0x00000F52
	add r0, r7, r2
	add r0, r0, r8
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	mov r0, r8
	bl _call_via_r1
_080D7782:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080D778C:
	.4byte gRam
_080D7790:
	.4byte 0x00001012
_080D7794:
	.4byte 0x00001132
_080D7798:
	.4byte 0x00001719
_080D779C:
	.4byte 0x00001152
_080D77A0:
	.4byte 0x00001142
_080D77A4:
	.4byte gUnknown_08175694
_080D77A8:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D76E4

	THUMB_FUNC_START sub_080D77AC
sub_080D77AC: @ 0x080D77AC
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r3, _080D784C  @ =gRam
	ldr r1, _080D7850  @ =0x00001052
	add r0, r3, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	ldr r2, _080D7854  @ =0x00001622
	add r0, r3, r2
	ldrb r1, [r0]
	ldr r5, _080D7858  @ =0x00001623
	add r0, r3, r5
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r2, r2, #162
	add r0, r3, r2
	ldrb r2, [r0]
	add r5, r5, #162
	add r0, r3, r5
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #24
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #64
	bhi _080D7846
	ldr r1, _080D785C  @ =0x00001624
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080D7860  @ =0x00001625
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r5, r5, #5
	add r0, r3, r5
	ldrb r2, [r0]
	add r5, r5, #1
	add r0, r3, r5
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #32
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #80
	bhi _080D7846
	ldr r1, _080D7864  @ =0x00000A28
	add r0, r3, r1
	ldr r2, _080D7868  @ =0x00000A2A
	add r1, r3, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	orr r0, r0, r1
	cmp r0, #0
	beq _080D7846
	ldr r5, _080D786C  @ =0x00000F52
	add r1, r3, r5
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D7870  @ =0x00001152
	add r0, r3, r1
	add r0, r4, r0
	mov r1, #20
	strb r1, [r0]
_080D7846:
	pop {r4,r5}
	pop {r0}
	bx r0
_080D784C:
	.4byte gRam
_080D7850:
	.4byte 0x00001052
_080D7854:
	.4byte 0x00001622
_080D7858:
	.4byte 0x00001623
_080D785C:
	.4byte 0x00001624
_080D7860:
	.4byte 0x00001625
_080D7864:
	.4byte 0x00000A28
_080D7868:
	.4byte 0x00000A2A
_080D786C:
	.4byte 0x00000F52
_080D7870:
	.4byte 0x00001152
	THUMB_FUNC_END sub_080D77AC

	THUMB_FUNC_START sub_080D7874
sub_080D7874: @ 0x080D7874
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r4, _080D78D8  @ =gRam
	ldr r1, _080D78DC  @ =0x00001142
	add r0, r4, r1
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D78D2
	ldr r0, _080D78E0  @ =0x00000F52
	add r1, r4, r0
	add r1, r7, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #123
	mov r1, #0
	bl sub_0812A324
	ldr r1, _080D78E4  @ =0x00000F22
	add r5, r4, r1
	add r0, r7, r5
	mov r6, #252
	strb r6, [r0]
	ldr r0, _080D78E8  @ =0x00000F12
	add r4, r4, r0
	add r0, r7, r4
	strb r6, [r0]
	add r0, r7, #0
	bl sub_080D7A94
	add r2, r0, #0
	add r0, r2, r5
	mov r1, #5
	strb r1, [r0]
	add r0, r2, r4
	strb r1, [r0]
	add r0, r7, #0
	bl sub_080D7A94
	add r2, r0, #0
	add r5, r2, r5
	strb r6, [r5]
	add r4, r2, r4
	mov r0, #4
	strb r0, [r4]
_080D78D2:
	pop {r4-r7}
	pop {r0}
	bx r0
_080D78D8:
	.4byte gRam
_080D78DC:
	.4byte 0x00001142
_080D78E0:
	.4byte 0x00000F52
_080D78E4:
	.4byte 0x00000F22
_080D78E8:
	.4byte 0x00000F12
	THUMB_FUNC_END sub_080D7874

	THUMB_FUNC_START sub_080D78EC
sub_080D78EC: @ 0x080D78EC
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _080D7924  @ =gRam
	ldr r1, _080D7928  @ =0x00000FC2
	add r0, r3, r1
	add r1, r2, r0
	ldrb r4, [r1]
	cmp r4, #0
	bne _080D791E
	mov r0, #8
	strb r0, [r1]
	ldr r5, _080D792C  @ =0x00001052
	add r0, r3, r5
	add r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #6
	bne _080D7918
	sub r5, r5, #176
	add r0, r3, r5
	add r0, r2, r0
	strb r4, [r0]
_080D7918:
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D791E:
	pop {r4,r5}
	pop {r0}
	bx r0
_080D7924:
	.4byte gRam
_080D7928:
	.4byte 0x00000FC2
_080D792C:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080D78EC

	THUMB_FUNC_START sub_080D7930
sub_080D7930: @ 0x080D7930
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r8
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D7956
	b _080D7A78
_080D7956:
	ldr r3, _080D79EC  @ =gRam
	ldr r0, _080D79F0  @ =0x000015E8
	add r1, r3, r0
	ldrb r0, [r1]
	sub r0, r0, #32
	strb r0, [r1]
	ldr r2, _080D79F4  @ =0x000015E9
	add r1, r3, r2
	ldrb r0, [r1]
	sub r0, r0, #32
	strb r0, [r1]
	ldr r4, _080D79F8  @ =0x00001052
	add r0, r3, r4
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D7A10
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r4, #15
	add r6, sp, #4
	mov r10, r1
	ldr r0, _080D79FC  @ =gUnknown_081756C0
	add r0, r7, r0
	ldrb r0, [r0]
	mov r9, r0
_080D798C:
	ldr r0, _080D7A00  @ =gUnknown_03003E74
	ldrb r1, [r6]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r2, _080D79EC  @ =gRam
	ldr r3, _080D79F0  @ =0x000015E8
	add r1, r2, r3
	ldrb r1, [r1]
	ldr r2, _080D7A04  @ =gUnknown_081756A0
	lsl r5, r4, #24
	asr r5, r5, #24
	add r2, r5, r2
	ldrb r2, [r2]
	add r1, r1, r2
	mov r4, r10
	ldrb r2, [r4]
	ldr r3, _080D7A08  @ =gUnknown_081756B0
	add r3, r5, r3
	ldrb r3, [r3]
	add r2, r2, r3
	ldr r3, _080D7A0C  @ =gUnknown_081756C6
	add r3, r7, r3
	ldrb r3, [r3]
	lsl r3, r3, #8
	add r3, r3, r9
	lsl r3, r3, #16
	mov r4, #2
	str r4, [sp]
	lsr r3, r3, #16
	bl sub_080C6004
	sub r5, r5, #1
	lsl r5, r5, #24
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	lsr r4, r5, #24
	cmp r5, #0
	bge _080D798C
	mov r0, r8
	mov r1, #2
	mov r2, #15
	bl sub_080C6350
	b _080D7A78
	.byte 0x00
	.byte 0x00
_080D79EC:
	.4byte gRam
_080D79F0:
	.4byte 0x000015E8
_080D79F4:
	.4byte 0x000015E9
_080D79F8:
	.4byte 0x00001052
_080D79FC:
	.4byte gUnknown_081756C0
_080D7A00:
	.4byte gUnknown_03003E74
_080D7A04:
	.4byte gUnknown_081756A0
_080D7A08:
	.4byte gUnknown_081756B0
_080D7A0C:
	.4byte gUnknown_081756C6
_080D7A10:
	mov r0, #150
	lsl r0, r0, #4
	add r2, r3, r0
	ldrh r0, [r2]
	sub r0, r0, #32
	strh r0, [r2]
	ldr r4, _080D7A88  @ =0x00000964
	add r1, r3, r4
	ldrh r0, [r1]
	sub r0, r0, #32
	strh r0, [r1]
	mov r5, #0
	add r6, sp, #4
	mov r7, #3
	mov r9, r1
	mov r8, r2
_080D7A30:
	ldr r0, _080D7A8C  @ =gUnknown_03003E74
	ldrb r1, [r6]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r1, r5, #0
	and r1, r1, r7
	lsl r1, r1, #4
	mov r2, r8
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	asr r2, r5, #2
	and r2, r2, r7
	lsl r2, r2, #4
	mov r3, r9
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r4, _080D7A90  @ =gUnknown_081756CC
	lsl r3, r5, #1
	add r3, r3, r4
	ldrh r3, [r3]
	mov r4, #2
	str r4, [sp]
	bl sub_080C6368
	add r5, r5, #1
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	cmp r5, #15
	ble _080D7A30
_080D7A78:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080D7A88:
	.4byte 0x00000964
_080D7A8C:
	.4byte gUnknown_03003E74
_080D7A90:
	.4byte gUnknown_081756CC
	THUMB_FUNC_END sub_080D7930

	THUMB_FUNC_START sub_080D7A94
sub_080D7A94: @ 0x080D7A94
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r0, #59
	add r1, r4, #0
	bl sub_080CA538
	add r5, r0, #0
	ldr r2, _080D7AEC  @ =gRam
	ldr r1, _080D7AF0  @ =0x00000F92
	add r0, r2, r1
	add r0, r5, r0
	mov r3, #2
	strb r3, [r0]
	ldr r1, _080D7AF4  @ =0x00001152
	add r0, r2, r1
	add r1, r5, r0
	add r4, r4, r0
	ldrb r0, [r4]
	strb r0, [r1]
	ldr r1, _080D7AF8  @ =0x00001052
	add r0, r2, r1
	add r0, r5, r0
	mov r1, #1
	strb r1, [r0]
	ldr r1, _080D7AFC  @ =0x00000F52
	add r0, r2, r1
	add r0, r5, r0
	strb r3, [r0]
	ldr r0, _080D7B00  @ =0x00000FC2
	add r2, r2, r0
	add r2, r5, r2
	mov r0, #8
	strb r0, [r2]
	lsl r0, r5, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	add r0, r5, #0
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080D7AEC:
	.4byte gRam
_080D7AF0:
	.4byte 0x00000F92
_080D7AF4:
	.4byte 0x00001152
_080D7AF8:
	.4byte 0x00001052
_080D7AFC:
	.4byte 0x00000F52
_080D7B00:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080D7A94

	THUMB_FUNC_START sub_080D7B04
sub_080D7B04: @ 0x080D7B04
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D7B24  @ =gUnknown_08175664
	ldr r1, _080D7B28  @ =gRam
	ldr r3, _080D7B2C  @ =0x00000F92
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080D7B24:
	.4byte gUnknown_08175664
_080D7B28:
	.4byte gRam
_080D7B2C:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080D7B04

	THUMB_FUNC_START sub_080D7B30
sub_080D7B30: @ 0x080D7B30
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D7B70  @ =gKeyCount
	ldrb r1, [r2]
	add r1, r1, #1
	strb r1, [r2]
	ldr r1, _080D7B74  @ =gRam
	ldr r3, _080D7B78  @ =0x00000FA2
	add r2, r1, r3
	add r2, r0, r2
	mov r3, #0
	strb r3, [r2]
	ldr r4, _080D7B7C  @ =0x00000AA8
	add r3, r1, r4
	ldr r2, _080D7B80  @ =gUnknown_08175680
	ldr r4, _080D7B84  @ =0x00000E85
	add r1, r1, r4
	add r1, r0, r1
	ldrb r1, [r1]
	add r1, r1, r2
	ldrb r1, [r1]
	lsl r1, r1, #8
	ldrh r2, [r3]
	orr r1, r1, r2
	strh r1, [r3]
	mov r1, #18
	bl sub_080CF140
	pop {r4}
	pop {r0}
	bx r0
_080D7B70:
	.4byte gKeyCount
_080D7B74:
	.4byte gRam
_080D7B78:
	.4byte 0x00000FA2
_080D7B7C:
	.4byte 0x00000AA8
_080D7B80:
	.4byte gUnknown_08175680
_080D7B84:
	.4byte 0x00000E85
	THUMB_FUNC_END sub_080D7B30

	THUMB_FUNC_START sub_080D7B88
sub_080D7B88: @ 0x080D7B88
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080D7BBC  @ =gRam
	ldr r2, _080D7BC0  @ =0x00001152
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #32
	strb r2, [r1]
	ldr r2, _080D7BC4  @ =0x00000F12
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #251
	strb r2, [r1]
	ldr r1, _080D7BC8  @ =0x00000F52
	add r3, r3, r1
	add r0, r0, r3
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #123
	mov r1, #0
	bl sub_0812A324
	pop {r0}
	bx r0
_080D7BBC:
	.4byte gRam
_080D7BC0:
	.4byte 0x00001152
_080D7BC4:
	.4byte 0x00000F12
_080D7BC8:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D7B88

	THUMB_FUNC_START sub_080D7BCC
sub_080D7BCC: @ 0x080D7BCC
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080D7BF4  @ =gRam
	ldr r3, _080D7BF8  @ =0x00001142
	add r0, r1, r3
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D7BF0
	sub r3, r3, #80
	add r0, r1, r3
	add r0, r2, r0
	mov r2, #161
	lsl r2, r2, #4
	add r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0]
_080D7BF0:
	pop {r0}
	bx r0
_080D7BF4:
	.4byte gRam
_080D7BF8:
	.4byte 0x00001142
	THUMB_FUNC_END sub_080D7BCC

	THUMB_FUNC_START sub_080D7BFC
sub_080D7BFC: @ 0x080D7BFC
	push {r4-r6,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	bl sub_08093078
	ldr r5, _080D7C28  @ =gRam
	ldr r1, _080D7C2C  @ =0x00001776
	add r0, r5, r1
	mov r6, #0
	strb r6, [r0]
	mov r0, #29
	bl sub_080A1588
	ldr r0, _080D7C30  @ =0x00000FA2
	add r5, r5, r0
	add r4, r4, r5
	strb r6, [r4]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D7C28:
	.4byte gRam
_080D7C2C:
	.4byte 0x00001776
_080D7C30:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080D7BFC

	THUMB_FUNC_START sub_080D7C34
sub_080D7C34: @ 0x080D7C34
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	ldr r6, _080D7C7C  @ =gRam
	ldr r1, _080D7C80  @ =0x00001062
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D7CBC
	ldr r2, _080D7C84  @ =0x00000D94
	add r0, r6, r2
	add r0, r4, r0
	mov r1, #48
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080D83C8
	add r0, r4, #0
	bl Sprite3_CheckIfActive_Permissive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D7CF2
	ldr r1, _080D7C88  @ =0x000010C2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D7C8C
	add r0, r4, #0
	bl sub_080D8364
	b _080D7CF2
	.byte 0x00
	.byte 0x00
_080D7C7C:
	.4byte gRam
_080D7C80:
	.4byte 0x00001062
_080D7C84:
	.4byte 0x00000D94
_080D7C88:
	.4byte 0x000010C2
_080D7C8C:
	ldr r2, _080D7CB0  @ =0x00001172
	add r0, r6, r2
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	ldr r1, _080D7CB4  @ =gUnknown_081756EC
	ldr r2, _080D7CB8  @ =0x00000F52
	add r0, r6, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	b _080D7CF2
	.byte 0x00
	.byte 0x00
_080D7CB0:
	.4byte 0x00001172
_080D7CB4:
	.4byte gUnknown_081756EC
_080D7CB8:
	.4byte 0x00000F52
_080D7CBC:
	ldr r0, _080D7CF8  @ =0x00000D94
	add r1, r6, r0
	add r1, r5, r1
	ldrb r2, [r1]
	mov r0, #48
	orr r0, r0, r2
	strb r0, [r1]
	add r0, r5, #0
	bl sub_080D808C
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D7CF2
	ldr r1, _080D7CFC  @ =gUnknown_081756F8
	ldr r2, _080D7D00  @ =0x00000F52
	add r0, r6, r2
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
_080D7CF2:
	pop {r4-r6}
	pop {r0}
	bx r0
_080D7CF8:
	.4byte 0x00000D94
_080D7CFC:
	.4byte gUnknown_081756F8
_080D7D00:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D7C34

	THUMB_FUNC_START sub_080D7D04
sub_080D7D04: @ 0x080D7D04
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r4, r2, #0
	ldr r5, _080D7D50  @ =gRam
	ldr r1, _080D7D54  @ =0x00000FC2
	add r0, r5, r1
	add r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _080D7D2A
	sub r1, r1, #112
	add r0, r5, r1
	add r0, r2, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #31
	strb r0, [r3]
_080D7D2A:
	ldr r1, _080D7D58  @ =0x00001172
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r3, _080D7D5C  @ =0x00000F62
	add r1, r5, r3
	add r1, r4, r1
	ldr r2, _080D7D60  @ =gUnknown_08175708
	add r3, r3, #80
	add r0, r5, r3
	add r0, r4, r0
	ldrb r0, [r0]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
_080D7D50:
	.4byte gRam
_080D7D54:
	.4byte 0x00000FC2
_080D7D58:
	.4byte 0x00001172
_080D7D5C:
	.4byte 0x00000F62
_080D7D60:
	.4byte gUnknown_08175708
	THUMB_FUNC_END sub_080D7D04

	THUMB_FUNC_START sub_080D7D64
sub_080D7D64: @ 0x080D7D64
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080D7DC4  @ =gRam
	ldr r1, _080D7DC8  @ =0x00000FC2
	add r0, r6, r1
	add r2, r5, r0
	ldrb r0, [r2]
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #0
	beq _080D7DE4
	sub r1, r1, #96
	add r2, r6, r1
	add r2, r5, r2
	ldr r4, _080D7DCC  @ =gUnknown_0817570C
	lsr r1, r0, #27
	mov r0, #1
	and r1, r1, r0
	ldr r0, _080D7DD0  @ =0x00000FB2
	add r3, r6, r0
	add r3, r5, r3
	ldrb r0, [r3]
	lsl r0, r0, #1
	orr r1, r1, r0
	add r1, r1, r4
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r0, _080D7DD4  @ =0x00000F22
	add r1, r6, r0
	add r1, r5, r1
	ldr r2, _080D7DD8  @ =gUnknown_08175718
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080D7DDC  @ =0x00000F12
	add r1, r6, r0
	add r1, r5, r1
	ldr r2, _080D7DE0  @ =gUnknown_08175714
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	add r0, r5, #0
	bl Sprite3_Move
	b _080D7E02
_080D7DC4:
	.4byte gRam
_080D7DC8:
	.4byte 0x00000FC2
_080D7DCC:
	.4byte gUnknown_0817570C
_080D7DD0:
	.4byte 0x00000FB2
_080D7DD4:
	.4byte 0x00000F22
_080D7DD8:
	.4byte gUnknown_08175718
_080D7DDC:
	.4byte 0x00000F12
_080D7DE0:
	.4byte gUnknown_08175714
_080D7DE4:
	ldr r0, _080D7E08  @ =0x00000F52
	add r1, r6, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #32
	strb r0, [r2]
	ldr r1, _080D7E0C  @ =0x00001172
	add r0, r6, r1
	add r0, r5, r0
	strb r3, [r0]
	add r0, r5, #0
	bl sub_080C351C
_080D7E02:
	pop {r4-r6}
	pop {r0}
	bx r0
_080D7E08:
	.4byte 0x00000F52
_080D7E0C:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080D7D64

	THUMB_FUNC_START sub_080D7E10
sub_080D7E10: @ 0x080D7E10
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	add r0, r4, #0
	bl sub_080C5044
	add r0, r4, #0
	bl Sprite3_Move
	ldr r5, _080D7E88  @ =gRam
	ldr r0, _080D7E8C  @ =0x00000F22
	add r1, r5, r0
	add r1, r4, r1
	ldr r3, _080D7E90  @ =gUnknown_0817571C
	add r0, r0, #144
	add r2, r5, r0
	add r2, r4, r2
	ldrb r0, [r2]
	add r0, r0, r3
	ldrb r0, [r0]
	ldrb r3, [r1]
	add r0, r0, r3
	strb r0, [r1]
	ldr r0, _080D7E94  @ =0x00000F12
	add r1, r5, r0
	add r1, r4, r1
	ldr r3, _080D7E98  @ =gUnknown_08175720
	ldrb r0, [r2]
	add r0, r0, r3
	ldrb r0, [r0]
	ldrb r2, [r1]
	add r0, r0, r2
	strb r0, [r1]
	ldr r3, _080D7E9C  @ =0x00000FC2
	add r0, r5, r3
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D7E7C
	add r0, r4, #0
	bl sub_080C969C
	ldr r1, _080D7EA0  @ =0x00000FD2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #16
	strb r1, [r0]
	ldr r2, _080D7EA4  @ =0x00000F52
	add r1, r5, r2
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080D7E7C:
	add r0, r6, #0
	bl sub_080D8318
	pop {r4-r6}
	pop {r0}
	bx r0
_080D7E88:
	.4byte gRam
_080D7E8C:
	.4byte 0x00000F22
_080D7E90:
	.4byte gUnknown_0817571C
_080D7E94:
	.4byte 0x00000F12
_080D7E98:
	.4byte gUnknown_08175720
_080D7E9C:
	.4byte 0x00000FC2
_080D7EA0:
	.4byte 0x00000FD2
_080D7EA4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D7E10

	THUMB_FUNC_START sub_080D7EA8
sub_080D7EA8: @ 0x080D7EA8
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D7F4A
	add r0, r4, #0
	bl sub_080C5044
	ldr r6, _080D7F50  @ =gRam
	ldr r0, _080D7F54  @ =0x00000F62
	add r2, r6, r0
	add r2, r4, r2
	ldr r3, _080D7F58  @ =gUnknown_08175724
	ldr r1, _080D7F5C  @ =0x00000996
	add r0, r6, r1
	ldrb r0, [r0]
	mov r1, #4
	and r1, r1, r0
	lsl r1, r1, #24
	lsr r1, r1, #26
	ldr r5, _080D7F60  @ =0x00000FB2
	add r0, r6, r5
	add r5, r4, r0
	ldrb r0, [r5]
	lsl r0, r0, #1
	orr r1, r1, r0
	add r1, r1, r3
	ldrb r0, [r1]
	add r0, r0, #8
	strb r0, [r2]
	ldr r1, _080D7F64  @ =0x00000FD2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D7F4A
	add r0, r4, #0
	bl sub_080D7F7C
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C7A20
	mov r1, #15
	and r1, r1, r0
	cmp r1, #0
	beq _080D7F2A
	bl GetRandomInt
	ldr r2, _080D7F68  @ =gUnknown_0817572C
	ldrb r1, [r5]
	lsl r1, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #31
	orr r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r5]
_080D7F2A:
	ldr r0, _080D7F6C  @ =0x00000F22
	add r1, r6, r0
	add r1, r7, r1
	ldr r2, _080D7F70  @ =gUnknown_08175734
	ldrb r0, [r5]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080D7F74  @ =0x00000F12
	add r1, r6, r0
	add r1, r7, r1
	ldr r2, _080D7F78  @ =gUnknown_08175738
	ldrb r0, [r5]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
_080D7F4A:
	pop {r4-r7}
	pop {r0}
	bx r0
_080D7F50:
	.4byte gRam
_080D7F54:
	.4byte 0x00000F62
_080D7F58:
	.4byte gUnknown_08175724
_080D7F5C:
	.4byte 0x00000996
_080D7F60:
	.4byte 0x00000FB2
_080D7F64:
	.4byte 0x00000FD2
_080D7F68:
	.4byte gUnknown_0817572C
_080D7F6C:
	.4byte 0x00000F22
_080D7F70:
	.4byte gUnknown_08175734
_080D7F74:
	.4byte 0x00000F12
_080D7F78:
	.4byte gUnknown_08175738
	THUMB_FUNC_END sub_080D7EA8

	THUMB_FUNC_START sub_080D7F7C
sub_080D7F7C: @ 0x080D7F7C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r7, _080D8050  @ =gRam
	ldr r1, _080D8054  @ =0x00000996
	add r0, r7, r1
	ldrb r1, [r0]
	add r0, r6, #0
	eor r0, r0, r1
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080D8086
	bl GetRandomInt
	ldr r5, _080D8058  @ =gUnknown_0817573C
	mov r4, #3
	add r1, r4, #0
	and r1, r1, r0
	add r1, r1, r5
	ldrb r1, [r1]
	mov r2, #150
	lsl r2, r2, #4
	add r0, r7, r2
	strb r1, [r0]
	bl GetRandomInt
	and r4, r4, r0
	add r4, r4, r5
	ldrb r1, [r4]
	ldr r4, _080D805C  @ =0x00000961
	add r0, r7, r4
	strb r1, [r0]
	mov r1, #14
	add r3, r7, #0
	ldr r0, _080D8060  @ =0x000011D2
	add r5, r3, r0
	mov r4, #11
	ldr r2, _080D8064  @ =0x000015F8
	add r7, r3, r2
_080D7FCC:
	lsl r0, r1, #24
	asr r2, r0, #24
	add r1, r2, r5
	ldrb r0, [r1]
	cmp r0, #0
	bne _080D807C
	strb r4, [r1]
	strb r4, [r7]
	mov r4, #150
	lsl r4, r4, #4
	add r1, r3, r4
	ldr r4, _080D8068  @ =0x00000EE2
	add r0, r3, r4
	add r0, r6, r0
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r0, [r0]
	add r1, r1, r0
	add r4, r4, #32
	add r0, r3, r4
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r4, _080D806C  @ =0x0000122C
	add r0, r3, r4
	add r0, r2, r0
	strb r1, [r0]
	add r4, r4, #60
	add r0, r3, r4
	add r0, r2, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r0, _080D805C  @ =0x00000961
	add r1, r3, r0
	ldr r4, _080D8070  @ =0x00000ED2
	add r0, r3, r4
	add r0, r6, r0
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r0, [r0]
	add r1, r1, r0
	add r4, r4, #32
	add r0, r3, r4
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #16
	ldr r4, _080D8074  @ =0x0000120E
	add r0, r3, r4
	add r0, r2, r0
	strb r1, [r0]
	add r4, r4, #60
	add r0, r3, r4
	add r0, r2, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r1, _080D8078  @ =0x000012FE
	add r0, r3, r1
	add r0, r2, r0
	mov r1, #15
	strb r1, [r0]
	b _080D8086
_080D8050:
	.4byte gRam
_080D8054:
	.4byte 0x00000996
_080D8058:
	.4byte gUnknown_0817573C
_080D805C:
	.4byte 0x00000961
_080D8060:
	.4byte 0x000011D2
_080D8064:
	.4byte 0x000015F8
_080D8068:
	.4byte 0x00000EE2
_080D806C:
	.4byte 0x0000122C
_080D8070:
	.4byte 0x00000ED2
_080D8074:
	.4byte 0x0000120E
_080D8078:
	.4byte 0x000012FE
_080D807C:
	sub r0, r2, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r0, #0
	bge _080D7FCC
_080D8086:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D7F7C

	THUMB_FUNC_START sub_080D808C
sub_080D808C: @ 0x080D808C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r7, _080D80D0  @ =gRam
	ldr r0, _080D80D4  @ =0x00001122
	add r2, r7, r0
	add r2, r6, r2
	ldrb r0, [r2]
	mov r1, #63
	and r1, r1, r0
	ldr r4, _080D80D8  @ =gUnknown_08175740
	ldr r0, _080D80DC  @ =0x00000F62
	add r3, r7, r0
	add r3, r6, r3
	ldrb r0, [r3]
	add r0, r0, r4
	ldrb r0, [r0]
	orr r1, r1, r0
	strb r1, [r2]
	ldr r0, _080D80E0  @ =0x00000F92
	add r1, r7, r0
	add r1, r6, r1
	ldr r2, _080D80E4  @ =gUnknown_0817575C
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r3]
	cmp r0, #3
	bls _080D80E8
	add r0, r6, #0
	bl sub_080C6240
	b _080D8122
_080D80D0:
	.4byte gRam
_080D80D4:
	.4byte 0x00001122
_080D80D8:
	.4byte gUnknown_08175740
_080D80DC:
	.4byte 0x00000F62
_080D80E0:
	.4byte 0x00000F92
_080D80E4:
	.4byte gUnknown_0817575C
_080D80E8:
	ldr r0, _080D8128  @ =0x00001622
	add r0, r0, r7
	mov r12, r0
	ldrb r2, [r0]
	ldr r0, _080D812C  @ =0x00001623
	add r5, r7, r0
	ldrb r0, [r5]
	lsl r0, r0, #8
	add r2, r2, r0
	add r2, r2, #4
	ldr r0, _080D8130  @ =0x00001624
	add r3, r7, r0
	ldrb r1, [r3]
	add r0, r0, #1
	add r4, r7, r0
	ldrb r0, [r4]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #4
	mov r0, r12
	strb r2, [r0]
	lsr r2, r2, #8
	strb r2, [r5]
	strb r1, [r3]
	lsr r1, r1, #8
	strb r1, [r4]
	add r0, r6, #0
	bl sub_080C58F0
_080D8122:
	pop {r4-r7}
	pop {r0}
	bx r0
_080D8128:
	.4byte 0x00001622
_080D812C:
	.4byte 0x00001623
_080D8130:
	.4byte 0x00001624
	THUMB_FUNC_END sub_080D808C

	THUMB_FUNC_START sub_080D8134
sub_080D8134: @ 0x080D8134
	push {r4,r5,lr}
	add r5, r0, #0
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r4, _080D819C  @ =gRam
	ldr r1, _080D81A0  @ =0x00000EE2
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r0, r4, r2
	strb r1, [r0]
	ldr r1, _080D81A4  @ =0x00000F02
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	add r2, r2, #1
	add r0, r4, r2
	strb r1, [r0]
	ldr r1, _080D81A8  @ =0x00000ED2
	add r0, r4, r1
	add r0, r5, r0
	ldrb r0, [r0]
	add r0, r0, #8
	add r2, r2, #3
	add r1, r4, r2
	strb r0, [r1]
	ldr r1, _080D81AC  @ =0x00000EF2
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	add r2, r2, #1
	add r0, r4, r2
	strb r1, [r0]
	mov r0, #6
	bl sub_08079844
	ldr r0, _080D81B0  @ =0x00000F52
	add r1, r4, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D81B4  @ =0x00000FC2
	add r4, r4, r1
	add r5, r5, r4
	mov r0, #128
	strb r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
_080D819C:
	.4byte gRam
_080D81A0:
	.4byte 0x00000EE2
_080D81A4:
	.4byte 0x00000F02
_080D81A8:
	.4byte 0x00000ED2
_080D81AC:
	.4byte 0x00000EF2
_080D81B0:
	.4byte 0x00000F52
_080D81B4:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080D8134

	THUMB_FUNC_START sub_080D81B8
sub_080D81B8: @ 0x080D81B8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r1, _080D81FC  @ =gRam
	ldr r2, _080D8200  @ =0x00001172
	add r0, r1, r2
	add r0, r5, r0
	mov r2, #0
	strb r2, [r0]
	ldr r0, _080D8204  @ =0x00000FC2
	add r1, r1, r0
	add r1, r5, r1
	ldrb r1, [r1]
	cmp r1, #0
	beq _080D81E6
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080D81E6
	add r0, r5, #0
	mov r1, #32
	bl sub_080C35FC
_080D81E6:
	add r0, r5, #0
	bl sub_080C5044
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D8208
	add r0, r5, #0
	bl sub_080D8364
	b _080D825A
	.byte 0x00
	.byte 0x00
_080D81FC:
	.4byte gRam
_080D8200:
	.4byte 0x00001172
_080D8204:
	.4byte 0x00000FC2
_080D8208:
	add r0, r5, #0
	bl Sprite3_Move
	ldr r1, _080D8244  @ =gRam
	ldr r2, _080D8248  @ =0x00001624
	add r3, r1, r2
	ldrb r2, [r3]
	ldr r0, _080D824C  @ =0x00001625
	add r4, r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r0, _080D8250  @ =0x00001142
	add r1, r1, r0
	add r1, r5, r1
	ldrb r0, [r1]
	sub r2, r2, r0
	strb r2, [r3]
	lsr r2, r2, #8
	strb r2, [r4]
	add r0, r5, #0
	bl sub_080C7A20
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D8254
	add r0, r5, #0
	bl sub_080D82C0
	b _080D825A
_080D8244:
	.4byte gRam
_080D8248:
	.4byte 0x00001624
_080D824C:
	.4byte 0x00001625
_080D8250:
	.4byte 0x00001142
_080D8254:
	add r0, r5, #0
	bl sub_080D8364
_080D825A:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D81B8

	THUMB_FUNC_START sub_080D8260
sub_080D8260: @ 0x080D8260
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r1, _080D8290  @ =gRam
	ldr r2, _080D8294  @ =0x00000FC2
	add r0, r1, r2
	add r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080D829C
	cmp r0, #63
	bls _080D8288
	ldr r3, _080D8298  @ =0x00001152
	add r0, r1, r3
	add r0, r4, r0
	mov r1, #4
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C2C4C
_080D8288:
	add r0, r4, #0
	bl sub_080D82C0
	b _080D82B4
_080D8290:
	.4byte gRam
_080D8294:
	.4byte 0x00000FC2
_080D8298:
	.4byte 0x00001152
_080D829C:
	ldr r3, _080D82BC  @ =0x00000F52
	add r0, r1, r3
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #16
	strb r0, [r2]
	add r0, r4, #0
	mov r1, #32
	bl sub_080C35FC
_080D82B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D82BC:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D8260

	THUMB_FUNC_START sub_080D82C0
sub_080D82C0: @ 0x080D82C0
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r3, _080D8304  @ =gRam
	ldr r0, _080D8308  @ =0x00001052
	add r1, r3, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D830C  @ =0x00000F92
	add r2, r3, r1
	add r2, r4, r2
	lsl r0, r0, #24
	lsr r0, r0, #26
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	ldr r0, _080D8310  @ =0x00000996
	add r3, r3, r0
	ldrb r1, [r3]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #7
	and r0, r0, r1
	cmp r0, #0
	bne _080D82FE
	add r0, r4, #0
	mov r1, #27
	bl sub_080CF0AC
_080D82FE:
	pop {r4}
	pop {r0}
	bx r0
_080D8304:
	.4byte gRam
_080D8308:
	.4byte 0x00001052
_080D830C:
	.4byte 0x00000F92
_080D8310:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080D82C0

	THUMB_FUNC_START sub_080D8314
sub_080D8314: @ 0x080D8314
	bx lr
	THUMB_FUNC_END sub_080D8314

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D8318
sub_080D8318: @ 0x080D8318
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D8350  @ =gRam
	ldr r1, _080D8354  @ =0x00000F62
	add r4, r2, r1
	add r4, r0, r4
	ldr r5, _080D8358  @ =gUnknown_08175724
	ldr r3, _080D835C  @ =0x00000996
	add r1, r2, r3
	ldrb r3, [r1]
	mov r1, #4
	and r1, r1, r3
	lsl r1, r1, #24
	lsr r1, r1, #26
	ldr r3, _080D8360  @ =0x00000FB2
	add r2, r2, r3
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #1
	orr r1, r1, r0
	add r1, r1, r5
	ldrb r0, [r1]
	strb r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D8350:
	.4byte gRam
_080D8354:
	.4byte 0x00000F62
_080D8358:
	.4byte gUnknown_08175724
_080D835C:
	.4byte 0x00000996
_080D8360:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080D8318

	THUMB_FUNC_START sub_080D8364
sub_080D8364: @ 0x080D8364
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	mov r1, #109
	bl sub_080CF0AC
	ldr r2, _080D83B0  @ =gRam
	ldr r1, _080D83B4  @ =0x00000FA2
	add r0, r2, r1
	add r0, r4, r0
	mov r3, #0
	mov r1, #6
	strb r1, [r0]
	ldr r1, _080D83B8  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #31
	strb r1, [r0]
	ldr r1, _080D83BC  @ =0x00000FF2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #236
	strb r1, [r0]
	ldr r1, _080D83C0  @ =0x000010C2
	add r0, r2, r1
	add r0, r4, r0
	strb r3, [r0]
	ldr r0, _080D83C4  @ =0x00000F82
	add r2, r2, r0
	add r4, r4, r2
	mov r0, #128
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D83B0:
	.4byte gRam
_080D83B4:
	.4byte 0x00000FA2
_080D83B8:
	.4byte 0x00000FC2
_080D83BC:
	.4byte 0x00000FF2
_080D83C0:
	.4byte 0x000010C2
_080D83C4:
	.4byte 0x00000F82
	THUMB_FUNC_END sub_080D8364

	THUMB_FUNC_START sub_080D83C8
sub_080D83C8: @ 0x080D83C8
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r0, _080D83F4  @ =gRam
	ldr r1, _080D83F8  @ =0x00000F92
	add r0, r0, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsl r1, r1, #5
	ldr r0, _080D83FC  @ =gUnknown_08175778
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #4
	bl sub_080C9480
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
_080D83F4:
	.4byte gRam
_080D83F8:
	.4byte 0x00000F92
_080D83FC:
	.4byte gUnknown_08175778
	THUMB_FUNC_END sub_080D83C8

	THUMB_FUNC_START sub_080D8400
sub_080D8400: @ 0x080D8400
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _080D8478  @ =gRam
	ldr r2, _080D847C  @ =0x00000EE2
	add r1, r4, r2
	add r1, r0, r1
	ldrb r1, [r1]
	mov r2, #16
	and r2, r2, r1
	lsl r2, r2, #24
	lsr r2, r2, #24
	neg r2, r2
	lsr r2, r2, #31
	ldr r1, _080D8480  @ =0x00001122
	add r3, r4, r1
	add r3, r0, r3
	ldr r1, _080D8484  @ =gUnknown_081757B8
	add r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r3]
	ldr r1, _080D8488  @ =0x00001022
	add r3, r4, r1
	add r3, r0, r3
	ldr r1, _080D848C  @ =gUnknown_081757BA
	add r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r3]
	ldr r1, _080D8490  @ =0x00000F62
	add r3, r4, r1
	add r3, r0, r3
	ldr r1, _080D8494  @ =gUnknown_081757BC
	add r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r3]
	ldr r1, _080D8498  @ =0x00000F52
	add r3, r4, r1
	add r3, r0, r3
	ldr r1, _080D849C  @ =gUnknown_081757BE
	add r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r3]
	ldr r1, _080D84A0  @ =0x000011B2
	add r3, r4, r1
	add r3, r0, r3
	ldr r1, _080D84A4  @ =gUnknown_081757C0
	add r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r3]
	ldr r1, _080D84A8  @ =0x00000EA5
	add r4, r4, r1
	add r0, r0, r4
	ldr r1, _080D84AC  @ =gUnknown_081757C2
	add r2, r2, r1
	ldrb r1, [r2]
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D8478:
	.4byte gRam
_080D847C:
	.4byte 0x00000EE2
_080D8480:
	.4byte 0x00001122
_080D8484:
	.4byte gUnknown_081757B8
_080D8488:
	.4byte 0x00001022
_080D848C:
	.4byte gUnknown_081757BA
_080D8490:
	.4byte 0x00000F62
_080D8494:
	.4byte gUnknown_081757BC
_080D8498:
	.4byte 0x00000F52
_080D849C:
	.4byte gUnknown_081757BE
_080D84A0:
	.4byte 0x000011B2
_080D84A4:
	.4byte gUnknown_081757C0
_080D84A8:
	.4byte 0x00000EA5
_080D84AC:
	.4byte gUnknown_081757C2
	THUMB_FUNC_END sub_080D8400

	THUMB_FUNC_START sub_080D84B0
sub_080D84B0: @ 0x080D84B0
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D84C4
	b _080D85F0
_080D84C4:
	ldr r6, _080D8500  @ =gRam
	ldr r1, _080D8504  @ =0x00001052
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	beq _080D84E2
	b _080D85F0
_080D84E2:
	add r0, r4, #0
	bl sub_080C5044
	ldr r2, _080D8508  @ =0x00001042
	add r0, r6, r2
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _080D850C
	add r0, r4, #0
	bl Sprite3_Move
	b _080D8524
_080D8500:
	.4byte gRam
_080D8504:
	.4byte 0x00001052
_080D8508:
	.4byte 0x00001042
_080D850C:
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	beq _080D851C
	ldr r1, _080D859C  @ =0x00000F22
	add r0, r6, r1
	add r0, r4, r0
	strb r5, [r0]
_080D851C:
	ldr r2, _080D85A0  @ =0x00000F12
	add r0, r6, r2
	add r0, r4, r0
	strb r5, [r0]
_080D8524:
	add r0, r4, #0
	bl sub_080C6F48
	ldr r5, _080D85A4  @ =gRam
	ldr r0, _080D85A8  @ =0x00000996
	add r6, r5, r0
	ldrb r0, [r6]
	add r1, r4, #0
	eor r1, r1, r0
	mov r0, #31
	and r1, r1, r0
	cmp r1, #0
	bne _080D856A
	ldr r1, _080D85AC  @ =0x00000F62
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r0, r4, #0
	bl sub_080C2CB4
	ldr r2, _080D85B0  @ =0x00000F72
	add r0, r5, r2
	add r0, r4, r0
	mov r2, #150
	lsl r2, r2, #4
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D85B4  @ =0x00000F82
	add r0, r5, r1
	add r0, r4, r0
	add r2, r2, #1
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
_080D856A:
	ldrb r0, [r6]
	add r1, r4, #0
	eor r1, r1, r0
	ldr r2, _080D85B8  @ =0x00000F52
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	and r1, r1, r0
	cmp r1, #0
	bne _080D85F0
	ldr r1, _080D85A0  @ =0x00000F12
	add r0, r5, r1
	add r3, r4, r0
	add r2, r2, #32
	add r0, r5, r2
	add r0, r4, r0
	ldrb r2, [r3]
	ldrb r0, [r0]
	sub r0, r2, r0
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080D85BC
	sub r0, r2, #1
	b _080D85BE
_080D859C:
	.4byte 0x00000F22
_080D85A0:
	.4byte 0x00000F12
_080D85A4:
	.4byte gRam
_080D85A8:
	.4byte 0x00000996
_080D85AC:
	.4byte 0x00000F62
_080D85B0:
	.4byte 0x00000F72
_080D85B4:
	.4byte 0x00000F82
_080D85B8:
	.4byte 0x00000F52
_080D85BC:
	add r0, r2, #1
_080D85BE:
	strb r0, [r3]
	ldr r0, _080D85E0  @ =gRam
	ldr r2, _080D85E4  @ =0x00000F22
	add r1, r0, r2
	add r3, r4, r1
	ldr r1, _080D85E8  @ =0x00000F82
	add r0, r0, r1
	add r0, r4, r0
	ldrb r2, [r3]
	ldrb r0, [r0]
	sub r0, r2, r0
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080D85EC
	sub r0, r2, #1
	b _080D85EE
_080D85E0:
	.4byte gRam
_080D85E4:
	.4byte 0x00000F22
_080D85E8:
	.4byte 0x00000F82
_080D85EC:
	add r0, r2, #1
_080D85EE:
	strb r0, [r3]
_080D85F0:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D84B0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D85F8
sub_080D85F8: @ 0x080D85F8
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r0, _080D862C  @ =gRam
	ldr r1, _080D8630  @ =0x00000F92
	add r2, r0, r1
	add r2, r4, r2
	add r1, r1, #192
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	lsr r0, r0, #2
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	bl sub_080D8634
	add r0, r4, #0
	bl sub_080D84B0
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D862C:
	.4byte gRam
_080D8630:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080D85F8

	THUMB_FUNC_START sub_080D8634
sub_080D8634: @ 0x080D8634
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080D8654  @ =gRam
	ldr r2, _080D8658  @ =0x00000F92
	add r1, r1, r2
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #4
	ldr r2, _080D865C  @ =gUnknown_081757C4
	add r1, r1, r2
	mov r2, #2
	bl sub_080C9480
	pop {r0}
	bx r0
_080D8654:
	.4byte gRam
_080D8658:
	.4byte 0x00000F92
_080D865C:
	.4byte gUnknown_081757C4
	THUMB_FUNC_END sub_080D8634

	THUMB_FUNC_START sub_080D8660
sub_080D8660: @ 0x080D8660
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r7, r0, #24
	add r0, r7, #0
	bl sub_080C6240
	add r0, r7, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D8680
	b _080D8838
_080D8680:
	ldr r0, _080D86E0  @ =gRam
	mov r8, r0
	ldr r0, _080D86E4  @ =0x00000F52
	add r0, r0, r8
	add r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080D8722
	add r0, r0, #1
	strb r0, [r1]
	ldr r5, _080D86E8  @ =0x00000F12
	add r5, r5, r8
	add r5, r7, r5
	mov r1, #1
	mov r9, r1
	mov r3, r9
	strb r3, [r5]
	ldr r4, _080D86EC  @ =0x00000F22
	add r4, r4, r8
	add r4, r7, r4
	strb r3, [r4]
	add r0, r7, #0
	bl sub_080C79F8
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, #255
	strb r0, [r5]
	mov r0, #1
	neg r0, r0
	strb r0, [r4]
	add r0, r7, #0
	bl sub_080C79F8
	ldr r0, _080D86F0  @ =0x00001042
	add r0, r0, r8
	add r0, r7, r0
	ldrb r0, [r0]
	orr r6, r6, r0
	cmp r6, #3
	bls _080D86F4
	mov r2, #2
	mov r0, #4
	and r6, r6, r0
	cmp r6, #0
	bne _080D8700
	mov r2, #3
	b _080D8700
_080D86E0:
	.4byte gRam
_080D86E4:
	.4byte 0x00000F52
_080D86E8:
	.4byte 0x00000F12
_080D86EC:
	.4byte 0x00000F22
_080D86F0:
	.4byte 0x00001042
_080D86F4:
	mov r2, #0
	mov r0, r9
	and r6, r6, r0
	cmp r6, #0
	bne _080D8700
	mov r2, #1
_080D8700:
	ldr r1, _080D87A8  @ =gRam
	ldr r3, _080D87AC  @ =0x00000FF2
	add r0, r1, r3
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #92
	beq _080D8714
	add r0, r2, #4
	lsl r0, r0, #24
	lsr r2, r0, #24
_080D8714:
	ldr r3, _080D87B0  @ =0x00000FB2
	add r0, r1, r3
	add r0, r7, r0
	ldr r1, _080D87B4  @ =gUnknown_081757E8
	add r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r0]
_080D8722:
	ldr r5, _080D87A8  @ =gRam
	ldr r0, _080D87B8  @ =0x00001122
	add r3, r5, r0
	add r3, r7, r3
	ldrb r0, [r3]
	mov r2, #63
	and r2, r2, r0
	ldr r4, _080D87BC  @ =gUnknown_081757E4
	ldr r1, _080D87C0  @ =0x00000996
	add r0, r5, r1
	ldrb r0, [r0]
	lsr r0, r0, #2
	mov r1, #3
	and r0, r0, r1
	add r0, r0, r4
	ldrb r0, [r0]
	orr r2, r2, r0
	strb r2, [r3]
	add r0, r7, #0
	bl Sprite3_Move
	add r0, r7, #0
	bl sub_080C4F98
	ldr r3, _080D87C4  @ =0x00000F22
	add r1, r5, r3
	add r1, r7, r1
	ldr r2, _080D87C8  @ =gUnknown_08176960
	add r3, r3, #144
	add r0, r5, r3
	add r4, r7, r0
	ldrb r0, [r4]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080D87CC  @ =0x00000F12
	add r1, r5, r0
	add r1, r7, r1
	ldr r2, _080D87D0  @ =gUnknown_08176968
	ldrb r0, [r4]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	add r0, r7, #0
	bl sub_080C79F8
	ldr r1, _080D87D4  @ =0x00000FE2
	add r0, r5, r1
	add r3, r7, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _080D87E0
	ldr r0, _080D87D8  @ =0x00001042
	add r1, r5, r0
	add r1, r7, r1
	ldr r2, _080D87DC  @ =gUnknown_08176990
	ldrb r0, [r4]
	add r0, r0, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	and r0, r0, r1
	cmp r0, #0
	bne _080D87EE
	mov r0, #10
	strb r0, [r3]
	b _080D87EE
	.byte 0x00
	.byte 0x00
_080D87A8:
	.4byte gRam
_080D87AC:
	.4byte 0x00000FF2
_080D87B0:
	.4byte 0x00000FB2
_080D87B4:
	.4byte gUnknown_081757E8
_080D87B8:
	.4byte 0x00001122
_080D87BC:
	.4byte gUnknown_081757E4
_080D87C0:
	.4byte 0x00000996
_080D87C4:
	.4byte 0x00000F22
_080D87C8:
	.4byte gUnknown_08176960
_080D87CC:
	.4byte 0x00000F12
_080D87D0:
	.4byte gUnknown_08176968
_080D87D4:
	.4byte 0x00000FE2
_080D87D8:
	.4byte 0x00001042
_080D87DC:
	.4byte gUnknown_08176990
_080D87E0:
	cmp r0, #6
	bne _080D87EE
	ldr r0, _080D8844  @ =gUnknown_081769A0
	ldrb r1, [r4]
	add r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4]
_080D87EE:
	ldr r4, _080D8848  @ =gRam
	ldr r1, _080D884C  @ =0x00001042
	add r2, r4, r1
	add r2, r7, r2
	ldr r1, _080D8850  @ =gUnknown_08176988
	ldr r3, _080D8854  @ =0x00000FB2
	add r0, r4, r3
	add r6, r7, r0
	ldrb r3, [r6]
	add r1, r3, r1
	ldrb r2, [r2]
	ldrb r0, [r1]
	and r0, r0, r2
	cmp r0, #0
	beq _080D8814
	ldr r0, _080D8858  @ =gUnknown_08176998
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r6]
_080D8814:
	ldr r0, _080D885C  @ =0x00000F22
	add r1, r4, r0
	add r1, r7, r1
	ldr r2, _080D8860  @ =gUnknown_08176970
	ldrb r0, [r6]
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #1
	strb r0, [r1]
	ldr r3, _080D8864  @ =0x00000F12
	add r1, r4, r3
	add r1, r7, r1
	ldr r2, _080D8868  @ =gUnknown_08176978
	ldrb r0, [r6]
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #1
	strb r0, [r1]
_080D8838:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080D8844:
	.4byte gUnknown_081769A0
_080D8848:
	.4byte gRam
_080D884C:
	.4byte 0x00001042
_080D8850:
	.4byte gUnknown_08176988
_080D8854:
	.4byte 0x00000FB2
_080D8858:
	.4byte gUnknown_08176998
_080D885C:
	.4byte 0x00000F22
_080D8860:
	.4byte gUnknown_08176970
_080D8864:
	.4byte 0x00000F12
_080D8868:
	.4byte gUnknown_08176978
	THUMB_FUNC_END sub_080D8660

	THUMB_FUNC_START sub_080D886C
sub_080D886C: @ 0x080D886C
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080D8880  @ =gRam
	ldr r2, _080D8884  @ =0x00001002
	add r1, r1, r2
	add r0, r0, r1
	ldrb r1, [r0]
	sub r1, r1, #1
	strb r1, [r0]
	bx lr
_080D8880:
	.4byte gRam
_080D8884:
	.4byte 0x00001002
	THUMB_FUNC_END sub_080D886C

	THUMB_FUNC_START sub_080D8888
sub_080D8888: @ 0x080D8888
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	add r0, r4, #0
	bl sub_080D891C
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D88FA
	ldr r3, _080D8900  @ =gRam
	ldr r0, _080D8904  @ =0x00001052
	add r1, r3, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080D8908  @ =0x00000FF2
	add r0, r3, r1
	add r0, r4, r0
	ldrb r0, [r0]
	sub r0, r0, #126
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r1, _080D890C  @ =0x00000AB2
	add r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #18
	bne _080D88CE
	add r0, r5, #2
	lsl r0, r0, #24
	lsr r5, r0, #24
_080D88CE:
	ldr r0, _080D8910  @ =0x00000F62
	add r4, r3, r0
	add r4, r6, r4
	ldrb r1, [r4]
	add r0, r0, #16
	add r3, r3, r0
	add r3, r6, r3
	ldrb r2, [r3]
	lsl r2, r2, #8
	ldr r0, _080D8914  @ =gUnknown_081757F0
	add r0, r5, r0
	orr r1, r1, r2
	ldrb r0, [r0]
	add r1, r1, r0
	ldr r0, _080D8918  @ =gUnknown_081757F4
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	strb r1, [r4]
	lsr r1, r1, #8
	strb r1, [r3]
_080D88FA:
	pop {r4-r6}
	pop {r0}
	bx r0
_080D8900:
	.4byte gRam
_080D8904:
	.4byte 0x00001052
_080D8908:
	.4byte 0x00000FF2
_080D890C:
	.4byte 0x00000AB2
_080D8910:
	.4byte 0x00000F62
_080D8914:
	.4byte gUnknown_081757F0
_080D8918:
	.4byte gUnknown_081757F4
	THUMB_FUNC_END sub_080D8888

	THUMB_FUNC_START sub_080D891C
sub_080D891C: @ 0x080D891C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r10
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D8942
	b _080D8BBC
_080D8942:
	ldr r1, _080D89A8  @ =gRam
	mov r2, #150
	lsl r2, r2, #4
	add r0, r1, r2
	ldrb r2, [r0]
	ldr r3, _080D89AC  @ =0x000015E8
	add r0, r1, r3
	strb r2, [r0]
	ldr r4, _080D89B0  @ =0x00000964
	add r0, r1, r4
	ldrb r2, [r0]
	add r3, r3, #1
	add r0, r1, r3
	strb r2, [r0]
	ldr r4, _080D89B4  @ =0x00000F62
	add r0, r1, r4
	add r0, r0, r10
	ldrb r3, [r0]
	ldr r0, _080D89B8  @ =0x00000F72
	add r1, r1, r0
	add r1, r1, r10
	ldrb r0, [r1]
	lsl r0, r0, #8
	orr r3, r3, r0
	mov r7, #64
	add r5, r3, #0
	add r5, r5, #128
	ldr r1, _080D89BC  @ =0x000001FF
	add r0, r1, #0
	and r5, r5, r0
	ldr r1, _080D89C0  @ =gUnknown_08173F38
	mov r6, #255
	add r0, r3, #0
	and r0, r0, r6
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r2, [r0]
	add r0, r5, #0
	and r0, r0, r6
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r4, [r0]
	mov r0, #255
	lsl r0, r0, #8
	and r0, r0, r2
	cmp r0, #0
	beq _080D89C4
	mov r2, #64
	str r2, [sp, #8]
	b _080D89D4
	.byte 0x00
	.byte 0x00
_080D89A8:
	.4byte gRam
_080D89AC:
	.4byte 0x000015E8
_080D89B0:
	.4byte 0x00000964
_080D89B4:
	.4byte 0x00000F62
_080D89B8:
	.4byte 0x00000F72
_080D89BC:
	.4byte 0x000001FF
_080D89C0:
	.4byte gUnknown_08173F38
_080D89C4:
	and r2, r2, r6
	lsl r0, r2, #22
	lsr r2, r0, #24
	lsr r0, r0, #23
	mov r1, #1
	and r0, r0, r1
	add r0, r2, r0
	str r0, [sp, #8]
_080D89D4:
	ldr r0, [sp, #8]
	str r0, [sp, #12]
	mov r0, #128
	lsl r0, r0, #1
	and r3, r3, r0
	cmp r3, #0
	beq _080D89EC
	ldr r1, [sp, #12]
	neg r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #12]
_080D89EC:
	mov r0, #255
	lsl r0, r0, #8
	and r0, r0, r4
	cmp r0, #0
	beq _080D89FA
	mov r9, r7
	b _080D8A10
_080D89FA:
	mov r0, #255
	and r4, r4, r0
	add r0, r4, #0
	mul r0, r7, r0
	lsl r0, r0, #16
	lsr r2, r0, #24
	lsr r0, r0, #23
	mov r1, #1
	and r0, r0, r1
	add r2, r2, r0
	mov r9, r2
_080D8A10:
	mov r7, r9
	mov r0, #128
	lsl r0, r0, #1
	and r5, r5, r0
	cmp r5, #0
	beq _080D8A24
	mov r2, r9
	neg r0, r2
	lsl r0, r0, #24
	lsr r7, r0, #24
_080D8A24:
	ldr r5, _080D8BCC  @ =gRam
	ldr r3, _080D8BD0  @ =0x00001052
	add r0, r5, r3
	add r0, r0, r10
	ldrb r0, [r0]
	lsl r0, r0, #4
	mov r4, #64
	neg r4, r4
	add r1, r4, #0
	and r0, r0, r1
	ldr r2, _080D8BD4  @ =0x00000969
	add r1, r5, r2
	ldrb r1, [r1]
	orr r0, r0, r1
	ldr r3, _080D8BD8  @ =0x00000979
	add r6, r5, r3
	strb r0, [r6]
	ldr r0, _080D8BDC  @ =gUnknown_03003E74
	ldrh r0, [r0]
	ldr r4, _080D8BE0  @ =0x000015E8
	add r1, r5, r4
	ldrb r1, [r1]
	ldr r2, [sp, #12]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, _080D8BE4  @ =0x000015E9
	add r2, r5, r3
	ldrb r2, [r2]
	add r2, r2, r7
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r3, #0
	ldrsb r3, [r6, r3]
	lsl r3, r3, #8
	mov r4, #72
	orr r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r4, #2
	str r4, [sp]
	bl sub_080C6004
	mov r2, #2
	add r1, sp, #4
	mov r0, #1
	strb r0, [r1]
	mov r4, #128
	and r7, r7, r4
	lsl r0, r7, #24
	lsr r0, r0, #24
	str r0, [sp, #16]
	add r7, r1, #0
	mov r8, r5
_080D8A90:
	ldr r1, _080D8BE8  @ =gUnknown_081757F8
	lsl r0, r2, #24
	asr r5, r0, #24
	add r1, r5, r1
	ldrb r1, [r1]
	ldr r2, [sp, #8]
	add r0, r2, #0
	mul r0, r1, r0
	lsr r3, r0, #8
	ldr r0, [sp, #12]
	mov r4, #128
	and r0, r0, r4
	cmp r0, #0
	beq _080D8AB2
	neg r0, r3
	lsl r0, r0, #24
	lsr r3, r0, #24
_080D8AB2:
	mov r0, r9
	mul r0, r1, r0
	lsr r2, r0, #8
	ldr r0, [sp, #16]
	cmp r0, #0
	beq _080D8AC4
	lsl r0, r2, #24
	neg r0, r0
	lsr r2, r0, #24
_080D8AC4:
	ldr r0, _080D8BDC  @ =gUnknown_03003E74
	ldrb r1, [r7]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r3, #24
	ldr r6, _080D8BE0  @ =0x000015E8
	add r6, r6, r8
	asr r1, r1, #24
	ldrb r3, [r6]
	add r1, r1, r3
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsl r2, r2, #24
	ldr r3, _080D8BE4  @ =0x000015E9
	add r3, r3, r8
	asr r2, r2, #24
	ldrb r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r4, _080D8BEC  @ =gUnknown_03002BA9
	mov r3, #0
	ldrsb r3, [r4, r3]
	lsl r3, r3, #8
	mov r4, #72
	orr r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r4, #2
	str r4, [sp]
	bl sub_080C6004
	sub r1, r5, #1
	lsl r1, r1, #24
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	lsr r2, r1, #24
	cmp r1, #0
	bge _080D8A90
	mov r0, r10
	mov r1, #255
	mov r2, #3
	bl sub_080C6350
	ldr r0, _080D8BF0  @ =0x00000996
	add r0, r0, r8
	ldrb r1, [r0]
	mov r0, r10
	eor r0, r0, r1
	mov r1, #3
	and r0, r0, r1
	ldr r1, _080D8BF4  @ =0x000009AD
	add r1, r1, r8
	ldrb r1, [r1]
	orr r0, r0, r1
	ldrb r1, [r6, #29]
	orr r0, r0, r1
	cmp r0, #0
	bne _080D8BBC
	mov r2, #0
	mov r4, #170
	lsl r4, r4, #3
	add r4, r4, r8
	mov r5, #182
	lsl r5, r5, #5
	add r5, r5, r8
_080D8B4E:
	ldr r1, _080D8BDC  @ =gUnknown_03003E74
	lsl r2, r2, #24
	asr r0, r2, #24
	ldrh r1, [r1]
	add r0, r0, r1
	lsl r0, r0, #3
	add r3, r0, r4
	ldrh r0, [r3, #2]
	lsl r0, r0, #23
	lsr r1, r0, #23
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	add r6, r2, #0
	cmp r0, #0
	bne _080D8BAE
	ldr r2, _080D8BF8  @ =0x00000402
	add r0, r4, r2
	ldrh r0, [r0]
	add r0, r1, r0
	ldr r2, _080D8BFC  @ =0x00001174
	add r1, r4, r2
	ldrh r1, [r1]
	sub r0, r0, r1
	add r0, r0, #12
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #23
	bhi _080D8BAE
	ldrb r0, [r3]
	cmp r0, #239
	bhi _080D8BAE
	mov r1, #129
	lsl r1, r1, #3
	add r0, r4, r1
	ldrh r0, [r0]
	ldrb r3, [r3]
	add r0, r0, r3
	ldrh r1, [r5]
	sub r0, r0, r1
	add r0, r0, #4
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #15
	bhi _080D8BAE
	mov r0, r10
	bl sub_080C3BD0
_080D8BAE:
	mov r2, #128
	lsl r2, r2, #17
	add r0, r6, r2
	lsr r2, r0, #24
	asr r0, r0, #24
	cmp r0, #3
	ble _080D8B4E
_080D8BBC:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080D8BCC:
	.4byte gRam
_080D8BD0:
	.4byte 0x00001052
_080D8BD4:
	.4byte 0x00000969
_080D8BD8:
	.4byte 0x00000979
_080D8BDC:
	.4byte gUnknown_03003E74
_080D8BE0:
	.4byte 0x000015E8
_080D8BE4:
	.4byte 0x000015E9
_080D8BE8:
	.4byte gUnknown_081757F8
_080D8BEC:
	.4byte gUnknown_03002BA9
_080D8BF0:
	.4byte 0x00000996
_080D8BF4:
	.4byte 0x000009AD
_080D8BF8:
	.4byte 0x00000402
_080D8BFC:
	.4byte 0x00001174
	THUMB_FUNC_END sub_080D891C

	THUMB_FUNC_START sub_080D8C00
sub_080D8C00: @ 0x080D8C00
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D8C1C  @ =gRam
	ldr r1, _080D8C20  @ =0x00000F72
	add r2, r2, r1
	add r2, r0, r2
	ldrb r1, [r2]
	add r1, r1, #1
	strb r1, [r2]
	bl sub_080C3758
	pop {r0}
	bx r0
_080D8C1C:
	.4byte gRam
_080D8C20:
	.4byte 0x00000F72
	THUMB_FUNC_END sub_080D8C00

	THUMB_FUNC_START sub_080D8C24
sub_080D8C24: @ 0x080D8C24
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r6, r0, #24
	add r0, r6, #0
	bl sub_080D8E68
	add r0, r6, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D8C44
	b _080D8DDC
_080D8C44:
	add r0, r6, #0
	bl sub_080C7A20
	ldr r5, _080D8DE8  @ =gRam
	ldr r1, _080D8DEC  @ =0x00001710
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D8CC4
	add r0, r6, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D8CC4
	bl sub_08093078
	ldr r2, _080D8DF0  @ =0x00000FC2
	add r0, r5, r2
	add r0, r6, r0
	mov r1, #32
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #48
	bl sub_080C2CB4
	mov r0, #150
	lsl r0, r0, #4
	add r3, r5, r0
	ldr r4, _080D8DF4  @ =gUnknown_081757FC
	ldr r1, _080D8DF8  @ =0x00000545
	add r0, r5, r1
	ldrb r2, [r0]
	lsr r0, r2, #2
	mov r1, #3
	and r0, r0, r1
	add r0, r0, r4
	ldrb r0, [r0]
	ldrb r3, [r3]
	add r0, r0, r3
	ldr r3, _080D8DFC  @ =0x000016CD
	add r1, r5, r3
	strb r0, [r1]
	ldr r0, _080D8E00  @ =0x00000961
	add r1, r5, r0
	mov r0, #3
	and r0, r0, r2
	add r0, r0, r4
	ldrb r0, [r0]
	ldrb r1, [r1]
	add r0, r0, r1
	ldr r2, _080D8E04  @ =0x000016CE
	add r1, r5, r2
	strb r0, [r1]
	add r3, r3, #43
	add r1, r5, r3
	mov r0, #20
	strb r0, [r1]
	bl sub_0809E2CC
	add r0, r6, #0
	mov r1, #121
	bl sub_080CF140
_080D8CC4:
	mov r2, #15
	ldr r5, _080D8DE8  @ =gRam
	ldr r0, _080D8E08  @ =0x00000968
	add r0, r0, r5
	mov r8, r0
	ldr r1, _080D8DF0  @ =0x00000FC2
	add r0, r5, r1
	add r0, r0, r6
	mov r9, r0
_080D8CD6:
	lsl r2, r2, #24
	asr r4, r2, #24
	ldr r3, _080D8E0C  @ =0x00000996
	add r0, r5, r3
	ldrb r1, [r0]
	eor r1, r1, r4
	mov r0, #3
	and r1, r1, r0
	ldr r3, _080D8E10  @ =0x00001142
	add r0, r5, r3
	add r0, r4, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	add r7, r2, #0
	cmp r1, #0
	bne _080D8DCE
	ldr r1, _080D8E14  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #8
	bls _080D8DCE
	ldr r2, _080D8E18  @ =0x00001032
	add r1, r5, r2
	add r1, r4, r1
	sub r3, r3, #16
	add r0, r5, r3
	add r0, r4, r0
	ldrb r1, [r1]
	ldrb r0, [r0]
	orr r1, r1, r0
	mov r0, #64
	and r1, r1, r0
	cmp r1, #0
	bne _080D8DCE
	ldr r1, _080D8E1C  @ =0x00000EE2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	ldr r3, _080D8E20  @ =0x00000F02
	add r0, r5, r3
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r2, _080D8E24  @ =0x00000969
	add r0, r5, r2
	strb r1, [r0]
	sub r3, r3, #48
	add r0, r5, r3
	add r0, r4, r0
	ldrb r0, [r0]
	ldr r1, _080D8E28  @ =0x0000096C
	add r2, r5, r1
	strb r0, [r2]
	add r3, r3, #32
	add r0, r5, r3
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r3, _080D8E2C  @ =0x0000096D
	add r0, r5, r3
	strb r1, [r0]
	ldr r1, _080D8E30  @ =0x00001622
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r3, _080D8E34  @ =0x00001623
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r3, r8
	ldrh r0, [r3]
	sub r1, r1, r0
	add r1, r1, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #31
	bhi _080D8DCE
	ldr r1, _080D8E38  @ =0x00001624
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r3, _080D8E3C  @ =0x00001625
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrh r0, [r2]
	sub r1, r1, r0
	add r1, r1, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #31
	bhi _080D8DCE
	ldr r1, _080D8E40  @ =0x00001072
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #15
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #64
	bl sub_080C2DCC
	ldr r2, _080D8E44  @ =0x00001102
	add r1, r5, r2
	add r1, r4, r1
	mov r3, #150
	lsl r3, r3, #4
	add r0, r5, r3
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080D8E48  @ =0x00001112
	add r1, r5, r0
	add r1, r4, r1
	ldr r2, _080D8E00  @ =0x00000961
	add r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1]
	mov r0, #32
	mov r3, r9
	strb r0, [r3]
	add r0, r6, #0
	mov r1, #121
	bl sub_080CF140
_080D8DCE:
	mov r1, #255
	lsl r1, r1, #24
	add r0, r7, r1
	lsr r2, r0, #24
	cmp r0, #0
	blt _080D8DDC
	b _080D8CD6
_080D8DDC:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080D8DE8:
	.4byte gRam
_080D8DEC:
	.4byte 0x00001710
_080D8DF0:
	.4byte 0x00000FC2
_080D8DF4:
	.4byte gUnknown_081757FC
_080D8DF8:
	.4byte 0x00000545
_080D8DFC:
	.4byte 0x000016CD
_080D8E00:
	.4byte 0x00000961
_080D8E04:
	.4byte 0x000016CE
_080D8E08:
	.4byte 0x00000968
_080D8E0C:
	.4byte 0x00000996
_080D8E10:
	.4byte 0x00001142
_080D8E14:
	.4byte 0x00000FA2
_080D8E18:
	.4byte 0x00001032
_080D8E1C:
	.4byte 0x00000EE2
_080D8E20:
	.4byte 0x00000F02
_080D8E24:
	.4byte 0x00000969
_080D8E28:
	.4byte 0x0000096C
_080D8E2C:
	.4byte 0x0000096D
_080D8E30:
	.4byte 0x00001622
_080D8E34:
	.4byte 0x00001623
_080D8E38:
	.4byte 0x00001624
_080D8E3C:
	.4byte 0x00001625
_080D8E40:
	.4byte 0x00001072
_080D8E44:
	.4byte 0x00001102
_080D8E48:
	.4byte 0x00001112
	THUMB_FUNC_END sub_080D8C24

	THUMB_FUNC_START sub_080D8E4C
sub_080D8E4C: @ 0x080D8E4C
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080C3758
	add r0, r4, #0
	bl sub_080C35C0
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D8E4C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D8E68
sub_080D8E68: @ 0x080D8E68
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080D8E90  @ =gRam
	ldr r2, _080D8E94  @ =0x00000FC2
	add r1, r1, r2
	add r1, r0, r1
	ldrb r1, [r1]
	lsr r1, r1, #1
	mov r2, #1
	and r1, r1, r2
	lsl r1, r1, #5
	ldr r2, _080D8E98  @ =gUnknown_08175800
	add r1, r1, r2
	mov r2, #4
	bl sub_080C9480
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D8E90:
	.4byte gRam
_080D8E94:
	.4byte 0x00000FC2
_080D8E98:
	.4byte gUnknown_08175800
	THUMB_FUNC_END sub_080D8E68

	THUMB_FUNC_START sub_080D8E9C
sub_080D8E9C: @ 0x080D8E9C
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	add r0, r4, #0
	bl sub_080D91B4
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D8EBA
	b _080D904E
_080D8EBA:
	ldr r5, _080D8FE4  @ =gRam
	ldr r1, _080D8FE8  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #3
	bne _080D8ECA
	b _080D9048
_080D8ECA:
	mov r0, sp
	add r1, r4, #0
	bl sub_080C4948
	mov r2, #7
	ldr r1, _080D8FEC  @ =0x00001022
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080D8EEE
	ldr r2, _080D8FF0  @ =0x00001052
	add r1, r5, r2
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r2, #3
_080D8EEE:
	ldr r1, _080D8FF0  @ =0x00001052
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldr r0, _080D8FF4  @ =0x00000996
	add r7, r5, r0
	ldrb r0, [r7]
	and r2, r2, r0
	cmp r2, #0
	bne _080D8F0E
	add r0, r4, #0
	mov r1, #101
	bl sub_080CF140
_080D8F0E:
	ldr r1, _080D8FF8  @ =0x00001072
	add r0, r5, r1
	add r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080D8F1C
	b _080D9028
_080D8F1C:
	ldr r2, _080D8FFC  @ =0x000016F8
	add r7, r5, r2
	ldrb r0, [r7]
	cmp r0, #0
	bne _080D8F6E
	add r0, r4, #0
	bl sub_080C4F98
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D8F6E
	bl sub_08093078
	add r0, r4, #0
	mov r1, #40
	bl sub_080C2CB4
	mov r1, #150
	lsl r1, r1, #4
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _080D9000  @ =0x000016CD
	add r0, r5, r2
	strb r1, [r0]
	ldr r1, _080D9004  @ =0x00000961
	add r0, r5, r1
	ldrb r1, [r0]
	add r2, r2, #1
	add r0, r5, r2
	strb r1, [r0]
	mov r0, #24
	strb r0, [r7]
	ldr r1, _080D9008  @ =0x00000FD2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #48
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #121
	bl sub_080CF140
_080D8F6E:
	ldr r5, _080D8FE4  @ =gRam
	ldr r2, _080D900C  @ =0x00000FB2
	add r0, r5, r2
	add r4, r6, r0
	ldrb r2, [r4]
	ldr r1, _080D8FEC  @ =0x00001022
	add r0, r5, r1
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080D8F8C
	add r0, r2, #0
	add r0, r0, #16
	lsl r0, r0, #24
	lsr r2, r0, #24
_080D8F8C:
	ldr r0, _080D9010  @ =0x00000F22
	add r1, r5, r0
	add r1, r6, r1
	ldr r0, _080D9014  @ =gUnknown_08175840
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080D9018  @ =0x00000F12
	add r1, r5, r0
	add r1, r6, r1
	ldr r0, _080D901C  @ =gUnknown_08175860
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r0, r6, #0
	bl Sprite3_Move
	add r0, r6, #0
	bl sub_080C7A48
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D8FCC
	ldr r0, _080D9020  @ =gUnknown_08175880
	ldrb r1, [r4]
	add r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4]
	add r0, r6, #0
	mov r1, #13
	bl sub_080CF0AC
_080D8FCC:
	ldr r1, _080D9024  @ =gUnknown_08175890
	ldr r2, _080D8FE8  @ =0x00000F52
	add r0, r5, r2
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r6, #0
	bl _call_via_r1
	b _080D904E
_080D8FE4:
	.4byte gRam
_080D8FE8:
	.4byte 0x00000F52
_080D8FEC:
	.4byte 0x00001022
_080D8FF0:
	.4byte 0x00001052
_080D8FF4:
	.4byte 0x00000996
_080D8FF8:
	.4byte 0x00001072
_080D8FFC:
	.4byte 0x000016F8
_080D9000:
	.4byte 0x000016CD
_080D9004:
	.4byte 0x00000961
_080D9008:
	.4byte 0x00000FD2
_080D900C:
	.4byte 0x00000FB2
_080D9010:
	.4byte 0x00000F22
_080D9014:
	.4byte gUnknown_08175840
_080D9018:
	.4byte 0x00000F12
_080D901C:
	.4byte gUnknown_08175860
_080D9020:
	.4byte gUnknown_08175880
_080D9024:
	.4byte gUnknown_08175890
_080D9028:
	ldr r1, _080D9044  @ =0x00000FE2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #64
	strb r1, [r0]
	ldrb r1, [r7]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080D904E
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	b _080D904E
_080D9044:
	.4byte 0x00000FE2
_080D9048:
	add r0, r6, #0
	bl sub_080D9984
_080D904E:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D8E9C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D9058
sub_080D9058: @ 0x080D9058
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r5, r1, #0
	ldr r4, _080D90B4  @ =gRam
	ldr r2, _080D90B8  @ =0x00000FC2
	add r0, r4, r2
	add r6, r1, r0
	ldrb r2, [r6]
	cmp r2, #0
	bne _080D90AE
	mov r3, #1
	ldr r7, _080D90BC  @ =0x000010A2
	add r0, r4, r7
	add r1, r1, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bne _080D9088
	strb r2, [r1]
	mov r3, #2
_080D9088:
	ldr r1, _080D90C0  @ =0x00000F52
	add r0, r4, r1
	add r0, r5, r0
	strb r3, [r0]
	bl GetRandomInt
	ldr r7, _080D90C4  @ =0x00001082
	add r2, r4, r7
	add r2, r5, r2
	mov r1, #2
	and r1, r1, r0
	sub r1, r1, #1
	strb r1, [r2]
	bl GetRandomInt
	mov r1, #31
	and r1, r1, r0
	add r1, r1, #32
	strb r1, [r6]
_080D90AE:
	pop {r4-r7}
	pop {r0}
	bx r0
_080D90B4:
	.4byte gRam
_080D90B8:
	.4byte 0x00000FC2
_080D90BC:
	.4byte 0x000010A2
_080D90C0:
	.4byte 0x00000F52
_080D90C4:
	.4byte 0x00001082
	THUMB_FUNC_END sub_080D9058

	THUMB_FUNC_START sub_080D90C8
sub_080D90C8: @ 0x080D90C8
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r7, _080D9100  @ =gRam
	ldr r1, _080D9104  @ =0x00000FC2
	add r0, r7, r1
	add r5, r4, r0
	ldrb r1, [r5]
	add r6, r1, #0
	cmp r6, #0
	beq _080D9110
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080D9124
	ldr r0, _080D9108  @ =0x00000FB2
	add r2, r7, r0
	add r2, r4, r2
	ldr r1, _080D910C  @ =0x00001082
	add r0, r7, r1
	add r0, r4, r0
	ldrb r0, [r0]
	ldrb r1, [r2]
	add r0, r0, r1
	mov r1, #15
	and r0, r0, r1
	strb r0, [r2]
	b _080D9124
_080D9100:
	.4byte gRam
_080D9104:
	.4byte 0x00000FC2
_080D9108:
	.4byte 0x00000FB2
_080D910C:
	.4byte 0x00001082
_080D9110:
	bl GetRandomInt
	mov r1, #15
	and r1, r1, r0
	add r1, r1, #8
	strb r1, [r5]
	ldr r1, _080D912C  @ =0x00000F52
	add r0, r7, r1
	add r0, r4, r0
	strb r6, [r0]
_080D9124:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D912C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080D90C8

	THUMB_FUNC_START sub_080D9130
sub_080D9130: @ 0x080D9130
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r7, r5, #0
	ldr r6, _080D9188  @ =gRam
	ldr r1, _080D918C  @ =0x00000996
	add r0, r6, r1
	ldrb r0, [r0]
	add r4, r5, #0
	eor r4, r4, r0
	mov r0, #3
	and r4, r4, r0
	cmp r4, #0
	bne _080D91A6
	add r0, r5, #0
	mov r1, #31
	bl sub_080C35FC
	bl sub_080CA32C
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r2, _080D9190  @ =0x00000FB2
	add r0, r6, r2
	add r3, r5, r0
	ldrb r0, [r3]
	cmp r1, r0
	beq _080D9194
	ldrb r2, [r3]
	sub r0, r1, r2
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080D917A
	add r0, r2, #2
	lsl r0, r0, #24
	lsr r2, r0, #24
_080D917A:
	sub r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	mov r0, #15
	and r2, r2, r0
	strb r2, [r3]
	b _080D91A6
_080D9188:
	.4byte gRam
_080D918C:
	.4byte 0x00000996
_080D9190:
	.4byte 0x00000FB2
_080D9194:
	ldr r1, _080D91AC  @ =0x00000F52
	add r0, r6, r1
	add r0, r7, r0
	strb r4, [r0]
	ldr r2, _080D91B0  @ =0x00000FC2
	add r0, r6, r2
	add r0, r7, r0
	mov r1, #48
	strb r1, [r0]
_080D91A6:
	pop {r4-r7}
	pop {r0}
	bx r0
_080D91AC:
	.4byte 0x00000F52
_080D91B0:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080D9130

	THUMB_FUNC_START sub_080D91B4
sub_080D91B4: @ 0x080D91B4
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r5, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D929E
	ldr r4, _080D92A8  @ =gRam
	ldr r1, _080D92AC  @ =0x000010D2
	add r0, r4, r1
	add r7, r5, r0
	ldrb r6, [r7]
	ldr r2, _080D92B0  @ =0x00001122
	add r0, r4, r2
	add r0, r5, r0
	mov r1, #11
	strb r1, [r0]
	mov r0, sp
	ldrb r1, [r0]
	add r0, r5, #0
	bl sub_080D9580
	ldr r1, _080D92B4  @ =gUnknown_03003E74
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	ldr r3, _080D92B8  @ =0x00001052
	add r0, r4, r3
	add r0, r5, r0
	ldrb r0, [r0]
	mov r1, #127
	and r1, r1, r0
	ldr r0, _080D92BC  @ =gUnknown_0200EC18
	add r2, r1, r0
	ldr r3, _080D92C0  @ =0x00000EE2
	add r0, r4, r3
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, _080D92C4  @ =gUnknown_0200ED18
	add r2, r1, r0
	sub r3, r3, #16
	add r0, r4, r3
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, _080D92C8  @ =gUnknown_0200EC98
	add r2, r1, r0
	add r3, r3, #48
	add r0, r4, r3
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, _080D92CC  @ =gUnknown_0200ED98
	add r1, r1, r0
	ldr r2, _080D92D0  @ =0x00000EF2
	add r0, r4, r2
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r0, r5, #0
	bl sub_080D9860
	ldrb r0, [r7]
	and r6, r6, r0
	ldr r3, _080D92D4  @ =0x00000F72
	add r4, r4, r3
	add r4, r5, r4
	ldrb r0, [r4]
	cmp r0, #3
	bhi _080D9288
	add r0, r5, #0
	bl sub_080D98A4
	ldrb r0, [r7]
	and r6, r6, r0
	ldrb r0, [r4]
	cmp r0, #2
	bhi _080D9288
	add r0, r5, #0
	bl sub_080D98CC
	ldrb r0, [r7]
	and r6, r6, r0
	ldrb r0, [r4]
	cmp r0, #1
	bhi _080D9288
	add r0, r5, #0
	bl sub_080D98F4
	ldrb r0, [r7]
	and r6, r6, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D9288
	add r0, r5, #0
	bl sub_080D9484
	ldrb r0, [r7]
	and r6, r6, r0
_080D9288:
	ldr r0, _080D92A8  @ =gRam
	ldr r1, _080D92AC  @ =0x000010D2
	add r0, r0, r1
	add r0, r5, r0
	strb r6, [r0]
	add r0, r5, #0
	bl sub_080D92D8
	add r0, r5, #0
	bl sub_080C1F70
_080D929E:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D92A8:
	.4byte gRam
_080D92AC:
	.4byte 0x000010D2
_080D92B0:
	.4byte 0x00001122
_080D92B4:
	.4byte gUnknown_03003E74
_080D92B8:
	.4byte 0x00001052
_080D92BC:
	.4byte gUnknown_0200EC18
_080D92C0:
	.4byte 0x00000EE2
_080D92C4:
	.4byte gUnknown_0200ED18
_080D92C8:
	.4byte gUnknown_0200EC98
_080D92CC:
	.4byte gUnknown_0200ED98
_080D92D0:
	.4byte 0x00000EF2
_080D92D4:
	.4byte 0x00000F72
	THUMB_FUNC_END sub_080D91B4

	THUMB_FUNC_START sub_080D92D8
sub_080D92D8: @ 0x080D92D8
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _080D9330  @ =gRam
	ldr r1, _080D9334  @ =0x00000FA2
	add r0, r3, r1
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #9
	bne _080D9328
	ldr r4, _080D9338  @ =0x000010E2
	add r0, r3, r4
	add r0, r2, r0
	ldrb r1, [r0]
	add r0, r1, #0
	cmp r0, #0
	beq _080D9328
	cmp r0, #79
	bhi _080D9328
	mov r0, #15
	and r0, r0, r1
	ldr r4, _080D933C  @ =0x000009AD
	add r1, r3, r4
	ldrb r1, [r1]
	orr r0, r0, r1
	ldr r4, _080D9340  @ =0x00001605
	add r1, r3, r4
	ldrb r1, [r1]
	orr r0, r0, r1
	cmp r0, #0
	bne _080D9328
	ldr r0, _080D9344  @ =0x00000F72
	add r1, r3, r0
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add r0, r2, #0
	bl sub_080D9844
_080D9328:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D9330:
	.4byte gRam
_080D9334:
	.4byte 0x00000FA2
_080D9338:
	.4byte 0x000010E2
_080D933C:
	.4byte 0x000009AD
_080D9340:
	.4byte 0x00001605
_080D9344:
	.4byte 0x00000F72
	THUMB_FUNC_END sub_080D92D8

	THUMB_FUNC_START sub_080D9348
sub_080D9348: @ 0x080D9348
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	mov r2, #254
	lsl r2, r2, #23
	and r2, r2, r1
	lsr r2, r2, #24
	ldr r3, _080D93B4  @ =gRam
	ldr r4, _080D93B8  @ =gUnknown_0200EC18
	add r1, r2, r4
	ldrb r4, [r1]
	ldr r5, _080D93BC  @ =0x00001622
	add r1, r3, r5
	strb r4, [r1]
	ldr r4, _080D93C0  @ =gUnknown_0200EC98
	add r1, r2, r4
	ldrb r4, [r1]
	add r5, r5, #1
	add r1, r3, r5
	strb r4, [r1]
	ldr r4, _080D93C4  @ =gUnknown_0200ED18
	add r1, r2, r4
	ldrb r4, [r1]
	add r5, r5, #1
	add r1, r3, r5
	strb r4, [r1]
	ldr r1, _080D93C8  @ =gUnknown_0200ED98
	add r2, r2, r1
	ldrb r2, [r2]
	ldr r4, _080D93CC  @ =0x00001625
	add r1, r3, r4
	strb r2, [r1]
	ldr r2, _080D93D0  @ =gUnknown_03003E74
	ldrh r1, [r2]
	add r1, r1, #4
	strh r1, [r2]
	ldr r5, _080D93D4  @ =0x00001052
	add r3, r3, r5
	add r3, r0, r3
	ldrb r1, [r3]
	lsr r1, r1, #1
	mov r2, #1
	and r1, r1, r2
	lsl r1, r1, #5
	ldr r2, _080D93D8  @ =gUnknown_0817591C
	add r1, r1, r2
	mov r2, #4
	bl sub_080C9480
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D93B4:
	.4byte gRam
_080D93B8:
	.4byte gUnknown_0200EC18
_080D93BC:
	.4byte 0x00001622
_080D93C0:
	.4byte gUnknown_0200EC98
_080D93C4:
	.4byte gUnknown_0200ED18
_080D93C8:
	.4byte gUnknown_0200ED98
_080D93CC:
	.4byte 0x00001625
_080D93D0:
	.4byte gUnknown_03003E74
_080D93D4:
	.4byte 0x00001052
_080D93D8:
	.4byte gUnknown_0817591C
	THUMB_FUNC_END sub_080D9348

	THUMB_FUNC_START sub_080D93DC
sub_080D93DC: @ 0x080D93DC
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	mov r2, #254
	lsl r2, r2, #23
	and r2, r2, r1
	lsr r2, r2, #24
	ldr r3, _080D945C  @ =gRam
	ldr r4, _080D9460  @ =gUnknown_0200EC18
	add r1, r2, r4
	ldrb r4, [r1]
	ldr r5, _080D9464  @ =0x00001622
	add r1, r3, r5
	strb r4, [r1]
	ldr r4, _080D9468  @ =gUnknown_0200EC98
	add r1, r2, r4
	ldrb r4, [r1]
	add r5, r5, #1
	add r1, r3, r5
	strb r4, [r1]
	ldr r4, _080D946C  @ =gUnknown_0200ED18
	add r1, r2, r4
	ldrb r4, [r1]
	add r5, r5, #1
	add r1, r3, r5
	strb r4, [r1]
	ldr r1, _080D9470  @ =gUnknown_0200ED98
	add r2, r2, r1
	ldrb r2, [r2]
	ldr r4, _080D9474  @ =0x00001625
	add r1, r3, r4
	strb r2, [r1]
	ldr r1, _080D9478  @ =0x00001122
	add r5, r3, r1
	add r5, r0, r5
	ldrb r4, [r5]
	mov r8, r4
	mov r4, #63
	mov r1, r8
	and r4, r4, r1
	ldr r6, _080D947C  @ =gUnknown_0817595C
	ldr r1, _080D9480  @ =0x00001052
	add r3, r3, r1
	add r3, r0, r3
	ldrb r1, [r3]
	lsr r1, r1, #1
	mov r2, #3
	and r1, r1, r2
	add r1, r1, r6
	ldrb r1, [r1]
	orr r4, r4, r1
	strb r4, [r5]
	bl sub_080C6240
	mov r4, r8
	strb r4, [r5]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
_080D945C:
	.4byte gRam
_080D9460:
	.4byte gUnknown_0200EC18
_080D9464:
	.4byte 0x00001622
_080D9468:
	.4byte gUnknown_0200EC98
_080D946C:
	.4byte gUnknown_0200ED18
_080D9470:
	.4byte gUnknown_0200ED98
_080D9474:
	.4byte 0x00001625
_080D9478:
	.4byte 0x00001122
_080D947C:
	.4byte gUnknown_0817595C
_080D9480:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080D93DC

	THUMB_FUNC_START sub_080D9484
sub_080D9484: @ 0x080D9484
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #32
	lsl r0, r0, #24
	lsr r7, r0, #24
	add r0, r7, #0
	bl sub_080D9934
	ldr r1, _080D9560  @ =gRam
	ldr r2, _080D9564  @ =0x00000FE2
	add r0, r1, r2
	add r0, r7, r0
	ldrb r0, [r0]
	mov r10, r0
	cmp r0, #0
	bne _080D954E
	ldr r6, _080D9568  @ =0x00000F62
	add r6, r6, r1
	mov r9, r6
	add r9, r9, r7
	mov r0, #1
	mov r2, r9
	strb r0, [r2]
	ldr r6, _080D956C  @ =0x00001132
	add r6, r6, r1
	mov r8, r6
	add r8, r8, r7
	mov r2, r10
	mov r0, r8
	strb r2, [r0]
	ldr r6, _080D9570  @ =0x00000E75
	add r3, r1, r6
	add r3, r7, r3
	strb r2, [r3]
	ldr r0, _080D9574  @ =0x00000EE2
	add r2, r1, r0
	add r2, r7, r2
	ldrb r6, [r2]
	str r6, [sp, #4]
	add r0, r0, #32
	add r6, r1, r0
	add r6, r7, r6
	str r6, [sp, #28]
	ldrb r6, [r6]
	str r6, [sp, #8]
	sub r0, r0, #48
	add r5, r1, r0
	add r5, r7, r5
	ldrb r6, [r5]
	str r6, [sp, #12]
	add r0, r0, #32
	add r4, r1, r0
	add r4, r7, r4
	ldrb r6, [r4]
	str r6, [sp, #16]
	ldr r0, _080D9578  @ =0x00001622
	ldrb r6, [r0, r1]
	strb r6, [r2]
	add r0, r0, #1
	ldrb r6, [r0, r1]
	ldr r0, [sp, #28]
	strb r6, [r0]
	ldr r6, _080D957C  @ =0x00001624
	ldrb r0, [r6, r1]
	strb r0, [r5]
	add r6, r6, #1
	add r1, r1, r6
	ldrb r0, [r1]
	strb r0, [r4]
	mov r0, sp
	add r1, r7, #0
	str r2, [sp, #20]
	str r3, [sp, #24]
	bl sub_080C4948
	mov r1, r10
	mov r0, r9
	strb r1, [r0]
	mov r0, #9
	mov r6, r8
	strb r0, [r6]
	mov r0, #4
	ldr r3, [sp, #24]
	strb r0, [r3]
	mov r0, sp
	ldrb r0, [r0, #16]
	strb r0, [r4]
	mov r1, sp
	ldrb r1, [r1, #12]
	strb r1, [r5]
	mov r6, sp
	ldrb r0, [r6, #8]
	ldr r6, [sp, #28]
	strb r0, [r6]
	ldr r2, [sp, #20]
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r2]
_080D954E:
	add sp, sp, #32
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D9560:
	.4byte gRam
_080D9564:
	.4byte 0x00000FE2
_080D9568:
	.4byte 0x00000F62
_080D956C:
	.4byte 0x00001132
_080D9570:
	.4byte 0x00000E75
_080D9574:
	.4byte 0x00000EE2
_080D9578:
	.4byte 0x00001622
_080D957C:
	.4byte 0x00001624
	THUMB_FUNC_END sub_080D9484

	THUMB_FUNC_START sub_080D9580
sub_080D9580: @ 0x080D9580
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r3, r0, #0
	lsl r1, r1, #24
	lsr r7, r1, #24
	ldr r2, _080D966C  @ =gRam
	ldr r0, _080D9670  @ =0x0000096D
	add r1, r2, r0
	mov r0, #0
	strb r0, [r1]
	ldr r4, _080D9674  @ =0x00001072
	add r0, r2, r4
	add r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D95B4
	ldr r5, _080D9678  @ =0x00000996
	add r0, r2, r5
	ldrb r0, [r0]
	strb r0, [r1]
_080D95B4:
	ldr r1, _080D967C  @ =0x00000FB2
	add r0, r2, r1
	add r0, r3, r0
	ldrb r0, [r0]
	add r0, r0, #255
	ldr r3, _080D9680  @ =0x0000096C
	add r1, r2, r3
	strb r0, [r1]
	mov r4, #1
	mov r9, r4
	add r6, r2, #0
	mov r8, r1
	mov r5, #15
	mov r10, r5
_080D95D0:
	mov r0, r8
	ldrb r5, [r0]
	mov r3, #15
	and r3, r3, r5
	ldr r1, _080D9670  @ =0x0000096D
	add r0, r6, r1
	ldrb r0, [r0]
	add r5, r5, r0
	mov r2, r10
	and r5, r5, r2
	ldr r0, _080D9684  @ =gUnknown_03003E74
	ldrh r0, [r0]
	add r0, r0, r7
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r4, #150
	lsl r4, r4, #4
	add r2, r6, r4
	ldr r1, _080D9688  @ =gUnknown_08175960
	lsl r3, r3, #1
	add r1, r3, r1
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080D968C  @ =0x00000964
	add r4, r6, r2
	ldr r2, _080D9690  @ =gUnknown_08175980
	add r3, r3, r2
	ldrh r2, [r3]
	ldrh r4, [r4]
	add r2, r2, r4
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080D9694  @ =gUnknown_081759A0
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080D9698  @ =gUnknown_081759B0
	add r5, r5, r4
	ldrb r4, [r5]
	ldr r5, _080D969C  @ =gUnknown_03002B99
	ldrb r5, [r5]
	lsl r5, r5, #24
	asr r5, r5, #24
	orr r4, r4, r5
	lsl r4, r4, #8
	add r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r4, #2
	str r4, [sp]
	bl sub_080C6368
	mov r0, r9
	lsl r1, r0, #24
	mov r2, #255
	lsl r2, r2, #24
	add r1, r1, r2
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r3, r8
	ldrb r0, [r3]
	add r0, r0, #2
	strb r0, [r3]
	lsr r4, r1, #24
	mov r9, r4
	cmp r1, #0
	bge _080D95D0
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080D966C:
	.4byte gRam
_080D9670:
	.4byte 0x0000096D
_080D9674:
	.4byte 0x00001072
_080D9678:
	.4byte 0x00000996
_080D967C:
	.4byte 0x00000FB2
_080D9680:
	.4byte 0x0000096C
_080D9684:
	.4byte gUnknown_03003E74
_080D9688:
	.4byte gUnknown_08175960
_080D968C:
	.4byte 0x00000964
_080D9690:
	.4byte gUnknown_08175980
_080D9694:
	.4byte gUnknown_081759A0
_080D9698:
	.4byte gUnknown_081759B0
_080D969C:
	.4byte gUnknown_03002B99
	THUMB_FUNC_END sub_080D9580

	THUMB_FUNC_START sub_080D96A0
sub_080D96A0: @ 0x080D96A0
	push {r4,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #0
	bl sub_080CA538
	add r3, r0, #0
	cmp r3, #0
	blt _080D9730
	ldr r2, _080D9738  @ =gRam
	ldr r0, _080D973C  @ =0x00000CA2
	add r1, r2, r0
	mov r0, #11
	strh r0, [r1]
	ldr r1, _080D9740  @ =0x00000FA2
	add r0, r2, r1
	add r0, r3, r0
	mov r1, #4
	strb r1, [r0]
	ldr r4, _080D9744  @ =0x00001012
	add r0, r2, r4
	add r0, r3, r0
	mov r1, #3
	strb r1, [r0]
	ldr r1, _080D9748  @ =0x00001122
	add r0, r2, r1
	add r0, r3, r0
	mov r1, #12
	strb r1, [r0]
	ldr r4, _080D974C  @ =0x00000EE2
	add r0, r2, r4
	add r0, r3, r0
	ldr r4, _080D9750  @ =0x00001622
	add r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D9754  @ =0x00000F02
	add r0, r2, r1
	add r0, r3, r0
	add r4, r4, #1
	add r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D9758  @ =0x00000ED2
	add r0, r2, r1
	add r0, r3, r0
	add r4, r4, #1
	add r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D975C  @ =0x00000EF2
	add r0, r2, r1
	add r0, r3, r0
	add r4, r4, #1
	add r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080D9760  @ =0x00000FC2
	add r0, r2, r1
	add r0, r3, r0
	mov r1, #31
	strb r1, [r0]
	ldr r4, _080D9764  @ =0x00000F62
	add r0, r2, r4
	add r0, r3, r0
	strb r1, [r0]
	ldr r0, _080D9768  @ =0x000010F2
	add r2, r2, r0
	add r2, r3, r2
	mov r0, #2
	strb r0, [r2]
_080D9730:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D9738:
	.4byte gRam
_080D973C:
	.4byte 0x00000CA2
_080D9740:
	.4byte 0x00000FA2
_080D9744:
	.4byte 0x00001012
_080D9748:
	.4byte 0x00001122
_080D974C:
	.4byte 0x00000EE2
_080D9750:
	.4byte 0x00001622
_080D9754:
	.4byte 0x00000F02
_080D9758:
	.4byte 0x00000ED2
_080D975C:
	.4byte 0x00000EF2
_080D9760:
	.4byte 0x00000FC2
_080D9764:
	.4byte 0x00000F62
_080D9768:
	.4byte 0x000010F2
	THUMB_FUNC_END sub_080D96A0

	THUMB_FUNC_START sub_080D976C
sub_080D976C: @ 0x080D976C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080ED830
	lsl r0, r0, #24
	cmp r0, #0
	bne _080D9792
	ldr r1, _080D9798  @ =gRam
	ldr r0, _080D979C  @ =0x00001172
	add r1, r1, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080D97A0
_080D9792:
	pop {r4}
	pop {r0}
	bx r0
_080D9798:
	.4byte gRam
_080D979C:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080D976C

	THUMB_FUNC_START sub_080D97A0
sub_080D97A0: @ 0x080D97A0
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r3, #127
	ldr r1, _080D97F0  @ =gUnknown_03003112
	add r7, r0, r1
	add r2, r1, #0
	add r2, r2, #32
	add r6, r0, r2
	sub r2, r2, #48
	add r5, r0, r2
	add r1, r1, #16
	add r4, r0, r1
_080D97BA:
	lsl r1, r3, #24
	asr r1, r1, #24
	ldr r0, _080D97F4  @ =gUnknown_0200EC18
	add r2, r1, r0
	ldrb r0, [r7]
	strb r0, [r2]
	ldr r0, _080D97F8  @ =gUnknown_0200EC98
	add r2, r1, r0
	ldrb r0, [r6]
	strb r0, [r2]
	ldr r0, _080D97FC  @ =gUnknown_0200ED18
	add r2, r1, r0
	ldrb r0, [r5]
	strb r0, [r2]
	ldr r0, _080D9800  @ =gUnknown_0200ED98
	add r2, r1, r0
	ldrb r0, [r4]
	strb r0, [r2]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r3, r1, #24
	cmp r1, #0
	bge _080D97BA
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D97F0:
	.4byte gUnknown_03003112
_080D97F4:
	.4byte gUnknown_0200EC18
_080D97F8:
	.4byte gUnknown_0200EC98
_080D97FC:
	.4byte gUnknown_0200ED18
_080D9800:
	.4byte gUnknown_0200ED98
	THUMB_FUNC_END sub_080D97A0

	THUMB_FUNC_START sub_080D9804
sub_080D9804: @ 0x080D9804
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D9834  @ =gRam
	ldr r3, _080D9838  @ =0x00000F52
	add r1, r2, r3
	add r1, r0, r1
	mov r3, #3
	strb r3, [r1]
	ldr r3, _080D983C  @ =0x000010E2
	add r1, r2, r3
	add r1, r0, r1
	mov r3, #160
	strb r3, [r1]
	ldr r1, _080D9840  @ =0x00000FA2
	add r2, r2, r1
	add r2, r0, r2
	mov r1, #9
	strb r1, [r2]
	bl sub_080ED8C8
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D9834:
	.4byte gRam
_080D9838:
	.4byte 0x00000F52
_080D983C:
	.4byte 0x000010E2
_080D9840:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080D9804

	THUMB_FUNC_START sub_080D9844
sub_080D9844: @ 0x080D9844
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	mov r1, #41
	bl sub_080CF0AC
	add r0, r4, #0
	bl sub_080D96A0
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D9844

	THUMB_FUNC_START sub_080D9860
sub_080D9860: @ 0x080D9860
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080D9894  @ =gRam
	ldr r2, _080D9898  @ =0x00001052
	add r1, r3, r2
	add r1, r0, r1
	ldrb r1, [r1]
	lsr r1, r1, #1
	mov r2, #1
	and r1, r1, r2
	ldr r2, _080D989C  @ =0x00000FD2
	add r3, r3, r2
	add r3, r0, r3
	ldrb r3, [r3]
	mov r2, #2
	and r2, r2, r3
	orr r1, r1, r2
	lsl r1, r1, #5
	ldr r2, _080D98A0  @ =gUnknown_0817589C
	add r1, r1, r2
	mov r2, #4
	bl sub_080C9480
	pop {r0}
	bx r0
_080D9894:
	.4byte gRam
_080D9898:
	.4byte 0x00001052
_080D989C:
	.4byte 0x00000FD2
_080D98A0:
	.4byte gUnknown_0817589C
	THUMB_FUNC_END sub_080D9860

	THUMB_FUNC_START sub_080D98A4
sub_080D98A4: @ 0x080D98A4
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080D98C4  @ =gRam
	ldr r2, _080D98C8  @ =0x00001052
	add r1, r1, r2
	add r1, r0, r1
	ldrb r1, [r1]
	sub r1, r1, #16
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080D9348
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D98C4:
	.4byte gRam
_080D98C8:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080D98A4

	THUMB_FUNC_START sub_080D98CC
sub_080D98CC: @ 0x080D98CC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080D98EC  @ =gRam
	ldr r2, _080D98F0  @ =0x00001052
	add r1, r1, r2
	add r1, r0, r1
	ldrb r1, [r1]
	sub r1, r1, #28
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080D9348
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D98EC:
	.4byte gRam
_080D98F0:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080D98CC

	THUMB_FUNC_START sub_080D98F4
sub_080D98F4: @ 0x080D98F4
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080D9924  @ =gRam
	ldr r2, _080D9928  @ =0x00000F92
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #0
	strb r2, [r1]
	ldr r2, _080D992C  @ =gUnknown_03003E74
	ldrh r1, [r2]
	add r1, r1, #4
	strh r1, [r2]
	ldr r1, _080D9930  @ =0x00001052
	add r3, r3, r1
	add r3, r0, r3
	ldrb r1, [r3]
	sub r1, r1, #40
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080D93DC
	pop {r0}
	bx r0
_080D9924:
	.4byte gRam
_080D9928:
	.4byte 0x00000F92
_080D992C:
	.4byte gUnknown_03003E74
_080D9930:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080D98F4

	THUMB_FUNC_START sub_080D9934
sub_080D9934: @ 0x080D9934
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080D9970  @ =gUnknown_03003E74
	ldrh r1, [r2]
	add r1, r1, #1
	strh r1, [r2]
	ldr r3, _080D9974  @ =gRam
	ldr r1, _080D9978  @ =0x00000F92
	add r2, r3, r1
	add r2, r0, r2
	ldrb r1, [r2]
	add r1, r1, #1
	strb r1, [r2]
	ldr r2, _080D997C  @ =0x00001122
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #13
	strb r2, [r1]
	ldr r1, _080D9980  @ =0x00001052
	add r3, r3, r1
	add r3, r0, r3
	ldrb r1, [r3]
	sub r1, r1, #48
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_080D93DC
	pop {r0}
	bx r0
_080D9970:
	.4byte gUnknown_03003E74
_080D9974:
	.4byte gRam
_080D9978:
	.4byte 0x00000F92
_080D997C:
	.4byte 0x00001122
_080D9980:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080D9934

	THUMB_FUNC_START sub_080D9984
sub_080D9984: @ 0x080D9984
	push {lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r2, _080D99A8  @ =gRam
	ldr r3, _080D99AC  @ =0x000010E2
	add r0, r2, r3
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D99B0
	sub r3, r3, #32
	add r0, r2, r3
	add r0, r1, r0
	ldrb r2, [r0]
	mov r1, #224
	orr r1, r1, r2
	strb r1, [r0]
	b _080D99B6
_080D99A8:
	.4byte gRam
_080D99AC:
	.4byte 0x000010E2
_080D99B0:
	add r0, r1, #0
	bl sub_080CA5D8
_080D99B6:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080D9984

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D99BC
sub_080D99BC: @ 0x080D99BC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, #0
	mov r8, r0
	ldr r5, _080D9B98  @ =gRam
	ldr r1, _080D9B9C  @ =0x00000FB2
	add r0, r5, r1
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080D99EA
	mov r2, r8
	strb r2, [r1]
	ldr r3, _080D9BA0  @ =0x00001719
	add r0, r5, r3
	strb r2, [r0]
	ldr r2, _080D9BA4  @ =0x000016FA
	add r0, r5, r2
	mov r3, r8
	strb r3, [r0]
_080D99EA:
	ldr r2, _080D9BA8  @ =0x00000FC2
	add r0, r5, r2
	add r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #0
	beq _080D9A0A
	mov r0, #1
	strb r0, [r1]
	ldr r3, _080D9BA4  @ =0x000016FA
	add r1, r5, r3
	mov r0, #129
	strb r0, [r1]
	ldr r0, _080D9BA0  @ =0x00001719
	add r1, r5, r0
	mov r0, #8
	strb r0, [r1]
_080D9A0A:
	add r0, r4, #0
	bl sub_080D9EF4
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D9A1E
	b _080D9C88
_080D9A1E:
	add r0, r4, #0
	bl sub_080D9D8C
	mov r1, #188
	lsl r1, r1, #4
	add r7, r5, r1
	mov r2, r8
	strh r2, [r7]
	add r0, r4, #0
	bl sub_080D9CB4
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D9A3E
	mov r0, #1
	strh r0, [r7]
_080D9A3E:
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C1F70
	add r0, r4, #0
	bl sub_080C6F48
	add r0, r4, #0
	bl sub_080C3540
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080D9A64
	b _080D9BFC
_080D9A64:
	mov r7, #1
	ldrb r0, [r6]
	cmp r0, #0
	bne _080D9A76
	ldr r3, _080D9BAC  @ =0x00000FD2
	add r0, r5, r3
	add r0, r4, r0
	mov r1, #13
	strb r1, [r0]
_080D9A76:
	ldr r1, _080D9BB0  @ =0x00001622
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _080D9BB4  @ =0x00001623
	add r0, r5, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _080D9BB8  @ =0x000016C4
	add r0, r5, r3
	ldrb r2, [r0]
	add r3, r3, #1
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #34
	bhi _080D9B60
	ldr r1, _080D9BBC  @ =0x00001624
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _080D9BC0  @ =0x00001625
	add r0, r5, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r3, r3, #5
	add r0, r5, r3
	ldrb r2, [r0]
	add r3, r3, #1
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #12
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #35
	bhi _080D9B60
	add r0, r4, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r0, _080D9BC4  @ =0x000016D5
	add r1, r5, r0
	ldr r0, _080D9BC8  @ =gUnknown_081759C8
	add r0, r2, r0
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _080D9B60
	ldr r1, _080D9BCC  @ =0x00001804
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D9B60
	ldr r3, _080D9BD0  @ =0x00001788
	add r0, r5, r3
	strb r7, [r0]
	ldr r1, _080D9BD4  @ =0x00000F62
	add r0, r5, r1
	add r0, r4, r0
	strb r7, [r0]
	add r3, r3, #128
	add r0, r5, r3
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _080D9B5E
	ldr r0, _080D9BD8  @ =0x00000545
	add r1, r5, r0
	ldr r0, _080D9BDC  @ =gUnknown_081759CC
	add r0, r2, r0
	ldrb r1, [r1]
	ldrb r0, [r0]
	and r0, r0, r1
	cmp r0, #0
	beq _080D9B5E
	ldr r1, _080D9BE0  @ =0x000016D6
	add r0, r5, r1
	ldr r3, _080D9BE4  @ =0x000016D7
	add r1, r5, r3
	ldrb r0, [r0]
	ldrb r1, [r1]
	orr r0, r0, r1
	cmp r0, #0
	beq _080D9B5E
	mov r0, #1
	eor r2, r2, r0
	ldr r0, _080D9BE8  @ =0x00000F22
	add r1, r5, r0
	add r1, r4, r1
	ldr r0, _080D9BEC  @ =gUnknown_081759C0
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r3, _080D9BF0  @ =0x00000F12
	add r1, r5, r3
	add r1, r4, r1
	ldr r0, _080D9BF4  @ =gUnknown_081759C4
	add r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	mov r0, #1
	mov r8, r0
_080D9B5E:
	mov r7, #0
_080D9B60:
	cmp r7, #0
	beq _080D9C46
	ldr r2, _080D9B98  @ =gRam
	ldr r1, _080D9BD4  @ =0x00000F62
	add r0, r2, r1
	add r3, r4, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080D9C46
	mov r1, #0
	strb r1, [r3]
	ldr r3, _080D9BA0  @ =0x00001719
	add r0, r2, r3
	strb r1, [r0]
	add r3, r3, #239
	add r0, r2, r3
	strb r1, [r0]
	sub r3, r3, #128
	add r0, r2, r3
	strb r1, [r0]
	ldr r0, _080D9BF8  @ =0x00001705
	add r2, r2, r0
	ldrb r1, [r2]
	mov r0, #254
	and r0, r0, r1
	strb r0, [r2]
	b _080D9C46
	.byte 0x00
	.byte 0x00
_080D9B98:
	.4byte gRam
_080D9B9C:
	.4byte 0x00000FB2
_080D9BA0:
	.4byte 0x00001719
_080D9BA4:
	.4byte 0x000016FA
_080D9BA8:
	.4byte 0x00000FC2
_080D9BAC:
	.4byte 0x00000FD2
_080D9BB0:
	.4byte 0x00001622
_080D9BB4:
	.4byte 0x00001623
_080D9BB8:
	.4byte 0x000016C4
_080D9BBC:
	.4byte 0x00001624
_080D9BC0:
	.4byte 0x00001625
_080D9BC4:
	.4byte 0x000016D5
_080D9BC8:
	.4byte gUnknown_081759C8
_080D9BCC:
	.4byte 0x00001804
_080D9BD0:
	.4byte 0x00001788
_080D9BD4:
	.4byte 0x00000F62
_080D9BD8:
	.4byte 0x00000545
_080D9BDC:
	.4byte gUnknown_081759CC
_080D9BE0:
	.4byte 0x000016D6
_080D9BE4:
	.4byte 0x000016D7
_080D9BE8:
	.4byte 0x00000F22
_080D9BEC:
	.4byte gUnknown_081759C0
_080D9BF0:
	.4byte 0x00000F12
_080D9BF4:
	.4byte gUnknown_081759C4
_080D9BF8:
	.4byte 0x00001705
_080D9BFC:
	mov r0, #7
	strb r0, [r6]
	bl sub_0809945C
	ldr r1, _080D9C18  @ =0x00000FD2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D9C1C
	bl sub_080AF16C
	b _080D9C46
	.byte 0x00
	.byte 0x00
_080D9C18:
	.4byte 0x00000FD2
_080D9C1C:
	add r0, r4, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080D9C94  @ =0x00000F22
	add r2, r5, r3
	add r2, r4, r2
	ldr r1, _080D9C98  @ =gUnknown_081759C0
	add r1, r0, r1
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r1, _080D9C9C  @ =0x00000F12
	add r2, r5, r1
	add r2, r4, r2
	ldr r1, _080D9CA0  @ =gUnknown_081759C4
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	mov r2, #1
	mov r8, r2
_080D9C46:
	mov r3, r8
	cmp r3, #0
	beq _080D9C88
	ldr r5, _080D9CA4  @ =gRam
	ldr r1, _080D9CA8  @ =0x00001808
	add r0, r5, r1
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _080D9C60
	bl sub_080AF16C
_080D9C60:
	ldr r2, _080D9CAC  @ =0x00001042
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _080D9C88
	ldr r3, _080D9CB0  @ =0x000010E2
	add r0, r5, r3
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D9C88
	add r0, r4, #0
	mov r1, #58
	bl sub_080CF0AC
	mov r0, #8
	strb r0, [r5]
_080D9C88:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D9C94:
	.4byte 0x00000F22
_080D9C98:
	.4byte gUnknown_081759C0
_080D9C9C:
	.4byte 0x00000F12
_080D9CA0:
	.4byte gUnknown_081759C4
_080D9CA4:
	.4byte gRam
_080D9CA8:
	.4byte 0x00001808
_080D9CAC:
	.4byte 0x00001042
_080D9CB0:
	.4byte 0x000010E2
	THUMB_FUNC_END sub_080D99BC

	THUMB_FUNC_START sub_080D9CB4
sub_080D9CB4: @ 0x080D9CB4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r0, #1
	mov r8, r0
	mov r4, #3
	ldr r6, _080D9D4C  @ =gRam
	ldr r1, _080D9D50  @ =0x000015E2
	add r1, r1, r6
	mov r9, r1
	ldr r7, _080D9D54  @ =gUnknown_081759D8
_080D9CD0:
	ldr r1, _080D9D58  @ =0x00000ED2
	add r0, r6, r1
	add r0, r5, r0
	ldrb r2, [r0]
	add r1, r1, #32
	add r0, r6, r1
	add r0, r5, r0
	ldrb r1, [r0]
	lsl r1, r1, #8
	ldr r0, _080D9D5C  @ =gUnknown_081759D4
	lsl r4, r4, #24
	asr r3, r4, #24
	add r0, r3, r0
	orr r2, r2, r1
	ldrb r0, [r0]
	add r2, r2, r0
	mov r1, #150
	lsl r1, r1, #4
	add r0, r6, r1
	strh r2, [r0]
	ldr r1, _080D9D60  @ =0x00000EE2
	add r0, r6, r1
	add r0, r5, r0
	ldrb r2, [r0]
	add r1, r1, #32
	add r0, r6, r1
	add r0, r5, r0
	ldrb r1, [r0]
	lsl r1, r1, #8
	ldr r0, _080D9D64  @ =gUnknown_081759D0
	add r3, r3, r0
	orr r2, r2, r1
	ldrb r3, [r3]
	add r2, r2, r3
	ldr r1, _080D9D68  @ =0x00000964
	add r0, r6, r1
	strh r2, [r0]
	ldr r1, _080D9D6C  @ =0x000010F2
	add r0, r6, r1
	add r0, r5, r0
	ldrb r1, [r0]
	add r0, r5, #0
	bl sub_080C781C
	mov r0, r9
	ldrh r1, [r0]
	ldrb r0, [r7]
	cmp r1, r0
	beq _080D9D70
	ldrb r0, [r7, #1]
	cmp r1, r0
	beq _080D9D70
	ldrb r0, [r7, #2]
	cmp r1, r0
	beq _080D9D70
	ldrb r0, [r7, #3]
	cmp r1, r0
	beq _080D9D70
	mov r1, #0
	mov r8, r1
	b _080D9D7C
	.byte 0x00
	.byte 0x00
_080D9D4C:
	.4byte gRam
_080D9D50:
	.4byte 0x000015E2
_080D9D54:
	.4byte gUnknown_081759D8
_080D9D58:
	.4byte 0x00000ED2
_080D9D5C:
	.4byte gUnknown_081759D4
_080D9D60:
	.4byte 0x00000EE2
_080D9D64:
	.4byte gUnknown_081759D0
_080D9D68:
	.4byte 0x00000964
_080D9D6C:
	.4byte 0x000010F2
_080D9D70:
	mov r1, #255
	lsl r1, r1, #24
	add r0, r4, r1
	lsr r4, r0, #24
	cmp r0, #0
	bge _080D9CD0
_080D9D7C:
	mov r0, r8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080D9CB4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080D9D8C
sub_080D9D8C: @ 0x080D9D8C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	mov r1, #15
	ldr r5, _080D9E98  @ =gRam
	ldr r0, _080D9E9C  @ =0x00000968
	add r7, r5, r0
	ldr r2, _080D9EA0  @ =0x00000961
	add r2, r2, r5
	mov r9, r2
_080D9DA8:
	lsl r0, r1, #24
	asr r4, r0, #24
	ldr r3, _080D9EA4  @ =0x00000FF2
	add r1, r5, r3
	add r1, r4, r1
	ldrb r1, [r1]
	add r6, r0, #0
	cmp r1, #28
	beq _080D9E7E
	ldr r1, _080D9EA8  @ =0x000015DC
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, r4
	beq _080D9E7E
	ldr r2, _080D9EAC  @ =0x00000996
	add r0, r5, r2
	ldrb r0, [r0]
	eor r0, r0, r4
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080D9E7E
	sub r3, r3, #80
	add r0, r5, r3
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #8
	bls _080D9E7E
	ldr r1, _080D9EB0  @ =0x00000EE2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r7]
	ldr r2, _080D9EB4  @ =0x00000F02
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r3, _080D9EB8  @ =0x00000969
	add r0, r5, r3
	strb r1, [r0]
	ldr r1, _080D9EBC  @ =0x00000ED2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	add r3, r3, #3
	add r2, r5, r3
	strb r0, [r2]
	add r1, r1, #32
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r3, r3, #1
	add r0, r5, r3
	strb r1, [r0]
	ldr r1, _080D9EC0  @ =0x00001622
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r3, _080D9EC4  @ =0x00001623
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrh r0, [r7]
	sub r1, r1, r0
	add r1, r1, #12
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #23
	bhi _080D9E7E
	ldr r1, _080D9EC8  @ =0x00001624
	add r0, r5, r1
	ldrb r1, [r0]
	add r3, r3, #2
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrh r0, [r2]
	sub r1, r1, r0
	add r1, r1, #12
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #35
	bhi _080D9E7E
	ldr r1, _080D9ECC  @ =0x00001072
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #4
	strb r1, [r0]
	mov r0, r8
	mov r1, #32
	bl sub_080C2DCC
	ldr r2, _080D9ED0  @ =0x00001102
	add r1, r5, r2
	add r1, r4, r1
	mov r3, #150
	lsl r3, r3, #4
	add r0, r5, r3
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080D9ED4  @ =0x00001112
	add r0, r5, r1
	add r0, r4, r0
	mov r2, r9
	ldrb r1, [r2]
	strb r1, [r0]
_080D9E7E:
	mov r3, #255
	lsl r3, r3, #24
	add r0, r6, r3
	lsr r1, r0, #24
	cmp r0, #0
	bge _080D9DA8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D9E98:
	.4byte gRam
_080D9E9C:
	.4byte 0x00000968
_080D9EA0:
	.4byte 0x00000961
_080D9EA4:
	.4byte 0x00000FF2
_080D9EA8:
	.4byte 0x000015DC
_080D9EAC:
	.4byte 0x00000996
_080D9EB0:
	.4byte 0x00000EE2
_080D9EB4:
	.4byte 0x00000F02
_080D9EB8:
	.4byte 0x00000969
_080D9EBC:
	.4byte 0x00000ED2
_080D9EC0:
	.4byte 0x00001622
_080D9EC4:
	.4byte 0x00001623
_080D9EC8:
	.4byte 0x00001624
_080D9ECC:
	.4byte 0x00001072
_080D9ED0:
	.4byte 0x00001102
_080D9ED4:
	.4byte 0x00001112
	THUMB_FUNC_END sub_080D9D8C

	THUMB_FUNC_START sub_080D9ED8
sub_080D9ED8: @ 0x080D9ED8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080D9EEC  @ =gRam
	ldr r2, _080D9EF0  @ =0x00000ED2
	add r1, r1, r2
	add r0, r0, r1
	ldrb r1, [r0]
	add r1, r1, #7
	strb r1, [r0]
	bx lr
_080D9EEC:
	.4byte gRam
_080D9EF0:
	.4byte 0x00000ED2
	THUMB_FUNC_END sub_080D9ED8

	THUMB_FUNC_START sub_080D9EF4
sub_080D9EF4: @ 0x080D9EF4
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080D9F10  @ =gRam
	ldr r2, _080D9F14  @ =0x0000096C
	add r1, r1, r2
	mov r2, #3
	strh r2, [r1]
	ldr r1, _080D9F18  @ =gUnknown_081759DC
	bl sub_080C94D0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080D9F10:
	.4byte gRam
_080D9F14:
	.4byte 0x0000096C
_080D9F18:
	.4byte gUnknown_081759DC
	THUMB_FUNC_END sub_080D9EF4

	THUMB_FUNC_START sub_080D9F1C
sub_080D9F1C: @ 0x080D9F1C
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _080D9FA8  @ =gRam
	ldr r0, _080D9FAC  @ =0x00000EE2
	add r2, r5, r0
	add r2, r1, r2
	ldrb r0, [r2]
	add r0, r0, #8
	mov r3, #0
	mov r8, r3
	strb r0, [r2]
	ldr r0, _080D9FB0  @ =0x00000ED2
	add r6, r5, r0
	add r2, r1, r6
	ldrb r0, [r2]
	add r0, r0, #6
	strb r0, [r2]
	mov r0, #193
	bl sub_080CA538
	add r4, r0, #0
	ldr r1, _080D9FB4  @ =0x00000F62
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	ldr r2, _080D9FB8  @ =0x00001172
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	add r6, r4, r6
	ldr r3, _080D9FBC  @ =0x00000964
	add r0, r5, r3
	ldrb r0, [r0]
	add r0, r0, #40
	strb r0, [r6]
	ldr r1, _080D9FC0  @ =0x00001012
	add r0, r5, r1
	add r0, r4, r0
	mov r2, r8
	strb r2, [r0]
	ldr r3, _080D9FC4  @ =0x00001122
	add r0, r5, r3
	add r4, r4, r0
	mov r0, #12
	strb r0, [r4]
	ldr r0, _080D9FC8  @ =0x00000AA8
	add r5, r5, r0
	ldrh r1, [r5]
	mov r0, #128
	lsl r0, r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _080D9F9E
	ldr r0, _080D9FCC  @ =0x0000BFFF
	and r0, r0, r1
	strh r0, [r5]
_080D9F9E:
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
_080D9FA8:
	.4byte gRam
_080D9FAC:
	.4byte 0x00000EE2
_080D9FB0:
	.4byte 0x00000ED2
_080D9FB4:
	.4byte 0x00000F62
_080D9FB8:
	.4byte 0x00001172
_080D9FBC:
	.4byte 0x00000964
_080D9FC0:
	.4byte 0x00001012
_080D9FC4:
	.4byte 0x00001122
_080D9FC8:
	.4byte 0x00000AA8
_080D9FCC:
	.4byte 0x0000BFFF
	THUMB_FUNC_END sub_080D9F1C

	THUMB_FUNC_START sub_080D9FD0
sub_080D9FD0: @ 0x080D9FD0
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r3, r4, #0
	ldr r6, _080DA044  @ =gRam
	ldr r1, _080DA048  @ =0x00000F82
	add r0, r6, r1
	add r0, r4, r0
	ldrb r5, [r0]
	cmp r5, #0
	bne _080DA05C
	add r0, r4, #0
	bl sub_080DA660
	add r0, r4, #0
	bl sub_080DA390
	ldr r2, _080DA04C  @ =0x000010D2
	add r0, r6, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DA020
	ldr r1, _080DA050  @ =0x00000F52
	add r0, r6, r1
	add r0, r4, r0
	strb r5, [r0]
	ldr r2, _080DA054  @ =0x00000F72
	add r0, r6, r2
	add r0, r4, r0
	strb r5, [r0]
	add r1, r1, #64
	add r0, r6, r1
	add r0, r4, r0
	strb r5, [r0]
	add r2, r2, #80
	add r0, r6, r2
	add r0, r4, r0
	mov r1, #64
	strb r1, [r0]
_080DA020:
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DA080
	ldr r1, _080DA058  @ =gUnknown_081759FC
	ldr r5, _080DA050  @ =0x00000F52
	add r0, r6, r5
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	b _080DA080
_080DA044:
	.4byte gRam
_080DA048:
	.4byte 0x00000F82
_080DA04C:
	.4byte 0x000010D2
_080DA050:
	.4byte 0x00000F52
_080DA054:
	.4byte 0x00000F72
_080DA058:
	.4byte gUnknown_081759FC
_080DA05C:
	ldr r1, _080DA088  @ =0x00000FC2
	add r0, r6, r1
	add r1, r4, r0
	ldrb r2, [r1]
	cmp r2, #0
	bne _080DA070
	ldr r5, _080DA08C  @ =0x00000FA2
	add r0, r6, r5
	add r0, r4, r0
	strb r2, [r0]
_080DA070:
	ldrb r1, [r1]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080DA080
	add r0, r3, #0
	bl sub_080DA660
_080DA080:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DA088:
	.4byte 0x00000FC2
_080DA08C:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080D9FD0

	THUMB_FUNC_START sub_080DA090
sub_080DA090: @ 0x080DA090
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r2, _080DA0C8  @ =gRam
	ldr r1, _080DA0CC  @ =0x00000F72
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldr r3, _080DA0D0  @ =0x00001151
	add r0, r2, r3
	ldrb r0, [r0]
	add r5, r2, #0
	cmp r0, #15
	bhi _080DA0DC
	ldr r0, _080DA0D4  @ =0x00000F92
	add r2, r5, r0
	add r2, r4, r2
	ldr r3, _080DA0D8  @ =gUnknown_08175A18
	lsl r0, r1, #24
	lsr r0, r0, #29
	mov r1, #3
	and r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	b _080DA0E6
_080DA0C8:
	.4byte gRam
_080DA0CC:
	.4byte 0x00000F72
_080DA0D0:
	.4byte 0x00001151
_080DA0D4:
	.4byte 0x00000F92
_080DA0D8:
	.4byte gUnknown_08175A18
_080DA0DC:
	ldr r1, _080DA154  @ =0x00000F92
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
_080DA0E6:
	ldr r3, _080DA158  @ =0x00000F72
	add r0, r5, r3
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _080DA14C
	ldr r0, _080DA15C  @ =0x00000FA1
	add r1, r5, r0
	mov r0, #1
	strb r0, [r1]
	ldr r3, _080DA160  @ =0x00001151
	add r1, r5, r3
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #22
	bne _080DA14C
	mov r0, #90
	mov r1, #0
	bl sub_0812A324
	ldr r0, _080DA164  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080DA168  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	ldr r3, _080DA16C  @ =0x00001052
	add r0, r5, r3
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	ldr r1, _080DA170  @ =0x00001002
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #1
	neg r1, r1
	strb r1, [r0]
	ldr r3, _080DA174  @ =0x00001644
	add r1, r5, r3
	mov r0, #240
	strb r0, [r1]
_080DA14C:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DA154:
	.4byte 0x00000F92
_080DA158:
	.4byte 0x00000F72
_080DA15C:
	.4byte 0x00000FA1
_080DA160:
	.4byte 0x00001151
_080DA164:
	.4byte 0x00000F52
_080DA168:
	.4byte 0x00000FC2
_080DA16C:
	.4byte 0x00001052
_080DA170:
	.4byte 0x00001002
_080DA174:
	.4byte 0x00001644
	THUMB_FUNC_END sub_080DA090

	THUMB_FUNC_START sub_080DA178
sub_080DA178: @ 0x080DA178
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	mov r0, #3
	mov r1, #176
	bl sub_081337C8
	ldr r5, _080DA1BC  @ =gRam
	ldr r0, _080DA1C0  @ =0x00001644
	add r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #15
	bhi _080DA198
	mov r0, #16
	strb r0, [r1]
_080DA198:
	ldr r1, _080DA1C4  @ =0x00000FC2
	add r0, r5, r1
	add r3, r4, r0
	ldrb r2, [r3]
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _080DA1CC
	ldr r1, _080DA1C8  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #80
	strb r0, [r3]
	b _080DA1F4
	.byte 0x00
	.byte 0x00
_080DA1BC:
	.4byte gRam
_080DA1C0:
	.4byte 0x00001644
_080DA1C4:
	.4byte 0x00000FC2
_080DA1C8:
	.4byte 0x00000F52
_080DA1CC:
	cmp r0, #120
	beq _080DA1F4
	cmp r1, #0
	blt _080DA1F4
	mov r0, #3
	and r0, r0, r2
	cmp r0, #0
	bne _080DA1F4
	mov r0, #17
	mov r1, #0
	bl sub_0812A324
	ldr r1, _080DA1FC  @ =0x00001052
	add r0, r5, r1
	add r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #14
	beq _080DA1F4
	add r0, r0, #4
	strb r0, [r1]
_080DA1F4:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DA1FC:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080DA178

	THUMB_FUNC_START sub_080DA200
sub_080DA200: @ 0x080DA200
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r8, r5
	mov r0, #3
	mov r1, #176
	bl sub_081337C8
	ldr r6, _080DA264  @ =gRam
	ldr r0, _080DA268  @ =0x00001644
	add r2, r6, r0
	ldrb r0, [r2]
	cmp r0, #15
	bhi _080DA224
	mov r0, #16
	strb r0, [r2]
_080DA224:
	ldr r1, _080DA26C  @ =0x00000FC2
	add r0, r6, r1
	add r7, r5, r0
	ldrb r1, [r7]
	add r4, r1, #0
	cmp r4, #0
	bne _080DA27C
	strb r4, [r2]
	bl sub_08132448
	ldr r2, _080DA270  @ =0x00000FD1
	add r1, r6, r2
	mov r0, #19
	strb r0, [r1]
	ldr r0, _080DA274  @ =0x00000F52
	add r1, r6, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #80
	strb r0, [r7]
	ldr r1, _080DA278  @ =0x00001052
	add r0, r6, r1
	add r0, r5, r0
	strb r4, [r0]
	mov r0, #76
	mov r1, #0
	bl sub_0812A324
	b _080DA296
	.byte 0x00
	.byte 0x00
_080DA264:
	.4byte gRam
_080DA268:
	.4byte 0x00001644
_080DA26C:
	.4byte 0x00000FC2
_080DA270:
	.4byte 0x00000FD1
_080DA274:
	.4byte 0x00000F52
_080DA278:
	.4byte 0x00001052
_080DA27C:
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080DA296
	ldr r2, _080DA2A0  @ =0x00001002
	add r0, r6, r2
	mov r2, r8
	add r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #9
	beq _080DA296
	add r0, r0, #2
	strb r0, [r1]
_080DA296:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080DA2A0:
	.4byte 0x00001002
	THUMB_FUNC_END sub_080DA200

	THUMB_FUNC_START sub_080DA2A4
sub_080DA2A4: @ 0x080DA2A4
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	ldr r5, _080DA300  @ =gRam
	ldr r1, _080DA304  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #1
	bne _080DA2C2
	mov r0, #91
	mov r1, #0
	bl sub_0812A324
_080DA2C2:
	ldr r1, _080DA308  @ =0x00000F12
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #224
	strb r1, [r0]
	add r0, r4, #0
	bl Sprite3_MoveVert
	ldr r1, _080DA30C  @ =0x00000ED2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #47
	bhi _080DA2F4
	ldr r1, _080DA310  @ =0x000010E2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #66
	strb r1, [r0]
	ldr r0, _080DA314  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080DA2F4:
	add r0, r6, #0
	bl sub_080DA318
	pop {r4-r6}
	pop {r0}
	bx r0
_080DA300:
	.4byte gRam
_080DA304:
	.4byte 0x00000FC2
_080DA308:
	.4byte 0x00000F12
_080DA30C:
	.4byte 0x00000ED2
_080DA310:
	.4byte 0x000010E2
_080DA314:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DA2A4

	THUMB_FUNC_START sub_080DA318
sub_080DA318: @ 0x080DA318
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r4, #1
	neg r4, r4
	ldr r5, _080DA378  @ =gRam
	ldr r1, _080DA37C  @ =0x00000996
	add r0, r5, r1
	ldrb r1, [r0]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080DA36E
	mov r0, #193
	add r1, r6, #0
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080DA36E
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r2, _080DA380  @ =0x00000F92
	add r0, r5, r2
	add r1, r4, r0
	add r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080DA384  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #32
	strb r1, [r0]
	ldr r2, _080DA388  @ =0x00001172
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	ldr r2, _080DA38C  @ =0x00000F82
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
_080DA36E:
	add r0, r4, #0
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080DA378:
	.4byte gRam
_080DA37C:
	.4byte 0x00000996
_080DA380:
	.4byte 0x00000F92
_080DA384:
	.4byte 0x00000FC2
_080DA388:
	.4byte 0x00001172
_080DA38C:
	.4byte 0x00000F82
	THUMB_FUNC_END sub_080DA318

	THUMB_FUNC_START sub_080DA390
sub_080DA390: @ 0x080DA390
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, #56
	bl sub_080CF370
	ldr r0, _080DA464  @ =gUnknown_08175A9C
	str r0, [sp, #4]
	ldr r5, _080DA468  @ =gRam
	ldr r1, _080DA46C  @ =0x00000996
	add r0, r5, r1
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _080DA3BE
	ldr r0, _080DA470  @ =gUnknown_08175AD4
	str r0, [sp, #4]
_080DA3BE:
	ldr r1, _080DA474  @ =0x00001052
	add r0, r5, r1
	add r0, r4, r0
	ldrb r3, [r0]
	cmp r3, #0
	beq _080DA452
	ldr r2, _080DA478  @ =gUnknown_08175B1A
	sub r1, r1, #80
	add r0, r5, r1
	add r4, r4, r0
	ldrb r1, [r4]
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r0, r0, r2
	ldrb r7, [r0]
	sub r0, r3, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	cmp r8, r1
	beq _080DA452
	mov r9, r5
	mov r10, r4
_080DA3EE:
	ldr r0, _080DA47C  @ =gUnknown_03003E74
	lsr r6, r7, #2
	ldrh r0, [r0]
	add r0, r0, r6
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r9
	ldr r1, [sp, #4]
	add r4, r1, r7
	mov r1, #0
	ldrsb r1, [r4, r1]
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080DA480  @ =0x00000964
	add r2, r2, r9
	ldrh r3, [r2]
	sub r3, r3, #8
	mov r2, #1
	ldrsb r2, [r4, r2]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldrb r3, [r4, #2]
	ldrb r5, [r4, #3]
	mov r4, #49
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	ldr r4, _080DA484  @ =gUnknown_08175B0C
	add r6, r4, r6
	ldrb r4, [r6]
	str r4, [sp]
	bl sub_080C6004
	add r0, r7, #4
	lsl r0, r0, #16
	lsr r7, r0, #16
	mov r0, r8
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	mov r0, r10
	ldrb r0, [r0]
	cmp r8, r0
	bne _080DA3EE
_080DA452:
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
_080DA464:
	.4byte gUnknown_08175A9C
_080DA468:
	.4byte gRam
_080DA46C:
	.4byte 0x00000996
_080DA470:
	.4byte gUnknown_08175AD4
_080DA474:
	.4byte 0x00001052
_080DA478:
	.4byte gUnknown_08175B1A
_080DA47C:
	.4byte gUnknown_03003E74
_080DA480:
	.4byte 0x00000964
_080DA484:
	.4byte gUnknown_08175B0C
	THUMB_FUNC_END sub_080DA390

	THUMB_FUNC_START sub_080DA488
sub_080DA488: @ 0x080DA488
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r4, r0, #0
	mov r0, #8
	bl sub_080CF370
	ldr r3, _080DA534  @ =gRam
	ldr r1, _080DA538  @ =0x00001142
	add r0, r3, r1
	add r0, r4, r0
	ldrb r1, [r0]
	cmp r1, #30
	bls _080DA4B0
	mov r1, #31
_080DA4B0:
	ldr r2, _080DA53C  @ =0x00000ED2
	add r0, r3, r2
	add r0, r4, r0
	ldrb r2, [r0]
	ldr r5, _080DA540  @ =0x00000EF2
	add r0, r3, r5
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r4, _080DA544  @ =0x00000958
	add r0, r3, r4
	ldrh r0, [r0]
	sub r2, r2, r0
	ldr r5, _080DA548  @ =0x00000964
	add r5, r5, r3
	mov r10, r5
	strh r2, [r5]
	ldr r6, _080DA54C  @ =gUnknown_03003E74
	ldrh r0, [r6]
	add r4, r4, #8
	add r4, r4, r3
	mov r8, r4
	ldr r3, _080DA550  @ =gUnknown_08175B48
	lsr r1, r1, #1
	add r1, r1, r3
	ldrb r5, [r1]
	ldrh r1, [r4]
	add r1, r1, r5
	lsl r1, r1, #16
	lsr r1, r1, #16
	add r2, r2, #7
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080DA554  @ =0x000024CC
	mov r9, r3
	mov r4, #2
	str r4, [sp]
	bl sub_080C6368
	ldrh r0, [r6]
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, r8
	ldrh r1, [r2]
	sub r1, r1, r5
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r3, r10
	ldrh r2, [r3]
	add r2, r2, #7
	lsl r2, r2, #16
	lsr r2, r2, #16
	str r4, [sp]
	mov r3, r9
	bl sub_080C6368
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
_080DA534:
	.4byte gRam
_080DA538:
	.4byte 0x00001142
_080DA53C:
	.4byte 0x00000ED2
_080DA540:
	.4byte 0x00000EF2
_080DA544:
	.4byte 0x00000958
_080DA548:
	.4byte 0x00000964
_080DA54C:
	.4byte gUnknown_03003E74
_080DA550:
	.4byte gUnknown_08175B48
_080DA554:
	.4byte 0x000024CC
	THUMB_FUNC_END sub_080DA488

	THUMB_FUNC_START sub_080DA558
sub_080DA558: @ 0x080DA558
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080DA578  @ =gUnknown_081759F4
	ldr r1, _080DA57C  @ =gRam
	ldr r3, _080DA580  @ =0x00000F62
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080DA578:
	.4byte gUnknown_081759F4
_080DA57C:
	.4byte gRam
_080DA580:
	.4byte 0x00000F62
	THUMB_FUNC_END sub_080DA558

	THUMB_FUNC_START sub_080DA584
sub_080DA584: @ 0x080DA584
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080DA5BC  @ =gRam
	ldr r1, _080DA5C0  @ =0x00000FC2
	add r0, r4, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DA5B4
	ldr r0, _080DA5C4  @ =0x00001770
	add r1, r4, r0
	mov r0, #1
	strb r0, [r1]
	mov r0, #160
	lsl r0, r0, #1
	bl sub_080C95C0
	ldr r0, _080DA5C8  @ =0x00000F52
	add r1, r4, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080DA5B4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DA5BC:
	.4byte gRam
_080DA5C0:
	.4byte 0x00000FC2
_080DA5C4:
	.4byte 0x00001770
_080DA5C8:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DA584

	THUMB_FUNC_START sub_080DA5CC
sub_080DA5CC: @ 0x080DA5CC
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080DA5FC  @ =gRam
	ldr r1, _080DA600  @ =0x00000FC2
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080DA5F6
	ldr r0, _080DA604  @ =0x00000141
	bl sub_080C95C0
	ldr r0, _080DA608  @ =0x00000F52
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #2
	strb r0, [r5]
_080DA5F6:
	pop {r4-r6}
	pop {r0}
	bx r0
_080DA5FC:
	.4byte gRam
_080DA600:
	.4byte 0x00000FC2
_080DA604:
	.4byte 0x00000141
_080DA608:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DA5CC

	THUMB_FUNC_START sub_080DA60C
sub_080DA60C: @ 0x080DA60C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r4, _080DA64C  @ =gRam
	ldr r1, _080DA650  @ =0x000010E2
	add r0, r4, r1
	add r0, r2, r0
	ldrb r1, [r0]
	cmp r1, #0
	bne _080DA644
	ldr r3, _080DA654  @ =0x00001770
	add r0, r4, r3
	strb r1, [r0]
	ldr r3, _080DA658  @ =0x00000FA2
	add r0, r4, r3
	add r0, r2, r0
	strb r1, [r0]
	add r0, r2, #0
	bl sub_080CB9D4
	ldr r0, _080DA65C  @ =0x00000AA8
	add r2, r4, r0
	ldrh r1, [r2]
	mov r3, #128
	lsl r3, r3, #7
	add r0, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
_080DA644:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DA64C:
	.4byte gRam
_080DA650:
	.4byte 0x000010E2
_080DA654:
	.4byte 0x00001770
_080DA658:
	.4byte 0x00000FA2
_080DA65C:
	.4byte 0x00000AA8
	THUMB_FUNC_END sub_080DA60C

	THUMB_FUNC_START sub_080DA660
sub_080DA660: @ 0x080DA660
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r4, r2, #0
	ldr r3, _080DA6B0  @ =gRam
	ldr r1, _080DA6B4  @ =0x000010E2
	add r0, r3, r1
	add r0, r2, r0
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080DA6AA
	ldr r1, _080DA6B8  @ =0x00000F82
	add r0, r3, r1
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DA68C
	ldr r1, _080DA6BC  @ =gUnknown_03003E74
	mov r0, #64
	strh r0, [r1]
_080DA68C:
	ldr r1, _080DA6C0  @ =0x00000F92
	add r0, r3, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsl r1, r1, #5
	ldr r0, _080DA6C4  @ =gUnknown_08175A1C
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #4
	bl sub_080C9480
	add r0, r4, #0
	mov r1, #18
	bl sub_080C57F8
_080DA6AA:
	pop {r4}
	pop {r0}
	bx r0
_080DA6B0:
	.4byte gRam
_080DA6B4:
	.4byte 0x000010E2
_080DA6B8:
	.4byte 0x00000F82
_080DA6BC:
	.4byte gUnknown_03003E74
_080DA6C0:
	.4byte 0x00000F92
_080DA6C4:
	.4byte gUnknown_08175A1C
	THUMB_FUNC_END sub_080DA660

	THUMB_FUNC_START sub_080DA6C8
sub_080DA6C8: @ 0x080DA6C8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080DA6D8
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080DA6C8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080DA6D8
sub_080DA6D8: @ 0x080DA6D8
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r7, #1
	ldr r6, _080DA73C  @ =gRam
	ldr r1, _080DA740  @ =0x00000FC2
	add r0, r6, r1
	add r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080DA70C
	add r0, r5, #0
	bl sub_080DA750
	ldrb r0, [r4]
	cmp r0, #1
	bne _080DA704
	ldr r1, _080DA744  @ =0x00000FA2
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #0
	strb r1, [r0]
_080DA704:
	ldrb r0, [r4]
	cmp r0, #11
	bhi _080DA70C
	mov r7, #0
_080DA70C:
	cmp r7, #0
	beq _080DA734
	mov r0, #8
	bl sub_080CF370
	ldr r0, _080DA73C  @ =gRam
	ldr r1, _080DA748  @ =0x00000F92
	add r0, r0, r1
	add r0, r5, r0
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldr r0, _080DA74C  @ =gUnknown_08175B28
	add r1, r1, r0
	add r0, r5, #0
	mov r2, #2
	bl sub_080C9480
	add r0, r5, #0
	bl sub_080DA488
_080DA734:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DA73C:
	.4byte gRam
_080DA740:
	.4byte 0x00000FC2
_080DA744:
	.4byte 0x00000FA2
_080DA748:
	.4byte 0x00000F92
_080DA74C:
	.4byte gUnknown_08175B28
	THUMB_FUNC_END sub_080DA6D8

	THUMB_FUNC_START sub_080DA750
sub_080DA750: @ 0x080DA750
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r0, #8
	bl sub_080CF370
	ldr r0, _080DA780  @ =gRam
	ldr r1, _080DA784  @ =0x00000FC2
	add r0, r0, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsr r1, r1, #2
	lsl r1, r1, #4
	ldr r0, _080DA788  @ =gUnknown_08175B58
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #2
	bl sub_080C9480
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DA780:
	.4byte gRam
_080DA784:
	.4byte 0x00000FC2
_080DA788:
	.4byte gUnknown_08175B58
	THUMB_FUNC_END sub_080DA750

	THUMB_FUNC_START sub_080DA78C
sub_080DA78C: @ 0x080DA78C
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl sub_080DB1CC
	ldr r6, _080DA804  @ =gRam
	ldr r1, _080DA808  @ =0x000010D2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DA7C6
	ldr r2, _080DA80C  @ =0x00000FC2
	add r0, r6, r2
	add r0, r4, r0
	mov r2, #0
	mov r1, #32
	strb r1, [r0]
	ldr r1, _080DA810  @ =0x00000F92
	add r0, r6, r1
	add r0, r4, r0
	strb r2, [r0]
	ldr r2, _080DA814  @ =0x00000FB2
	add r0, r6, r2
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
_080DA7C6:
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DA7FE
	add r0, r5, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DA7FE
	ldr r1, _080DA818  @ =0x00001172
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #1
	strb r1, [r0]
	ldr r1, _080DA81C  @ =gUnknown_08175BAC
	ldr r2, _080DA820  @ =0x00000F52
	add r0, r6, r2
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
_080DA7FE:
	pop {r4-r6}
	pop {r0}
	bx r0
_080DA804:
	.4byte gRam
_080DA808:
	.4byte 0x000010D2
_080DA80C:
	.4byte 0x00000FC2
_080DA810:
	.4byte 0x00000F92
_080DA814:
	.4byte 0x00000FB2
_080DA818:
	.4byte 0x00001172
_080DA81C:
	.4byte gUnknown_08175BAC
_080DA820:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DA78C

	THUMB_FUNC_START sub_080DA824
sub_080DA824: @ 0x080DA824
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DA8F0  @ =gRam
	ldr r1, _080DA8F4  @ =0x00000FC2
	add r0, r5, r1
	add r6, r4, r0
	ldrb r1, [r6]
	cmp r1, #0
	bne _080DA844
	ldr r2, _080DA8F8  @ =0x00000FA2
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	bl sub_08075804
_080DA844:
	ldrb r0, [r6]
	cmp r0, #15
	bhi _080DA884
	ldr r3, _080DA8FC  @ =0x000009D4
	add r1, r5, r3
	mov r0, #127
	strb r0, [r1]
	ldr r0, _080DA900  @ =0x000009B4
	add r1, r5, r0
	mov r0, #6
	strb r0, [r1]
	ldr r2, _080DA904  @ =0x000009B5
	add r1, r5, r2
	mov r0, #16
	strb r0, [r1]
	ldr r3, _080DA908  @ =0x0000051E
	add r1, r5, r3
	mov r0, #64
	strh r0, [r1]
	ldr r0, _080DA90C  @ =0x0000051A
	add r1, r5, r0
	mov r0, #63
	strh r0, [r1]
	ldr r1, _080DA910  @ =0x00000998
	add r0, r5, r1
	mov r1, #7
	strb r1, [r0]
	sub r2, r2, #28
	add r0, r5, r2
	strb r1, [r0]
	bl sub_08133620
_080DA884:
	ldr r3, _080DA914  @ =0x00001152
	add r0, r5, r3
	add r3, r4, r0
	ldrb r1, [r3]
	add r0, r1, #0
	cmp r0, #255
	beq _080DA896
	add r0, r1, #1
	strb r0, [r3]
_080DA896:
	ldr r0, _080DA918  @ =0x00001162
	add r1, r5, r0
	add r1, r4, r1
	ldrb r2, [r1]
	ldrb r0, [r3]
	add r0, r2, r0
	strb r0, [r1]
	ldrb r0, [r3]
	add r2, r2, r0
	mov r0, #128
	lsl r0, r0, #1
	and r2, r2, r0
	cmp r2, #0
	beq _080DA8D2
	ldr r1, _080DA91C  @ =0x00001052
	add r0, r5, r1
	add r1, r4, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #7
	bne _080DA8D2
	mov r0, #0
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #106
	bl sub_080CF0AC
_080DA8D2:
	ldr r0, _080DA8F0  @ =gRam
	ldr r2, _080DA920  @ =0x00000F92
	add r1, r0, r2
	add r1, r4, r1
	ldr r2, _080DA924  @ =gUnknown_08175BD8
	ldr r3, _080DA91C  @ =0x00001052
	add r0, r0, r3
	add r0, r4, r0
	ldrb r0, [r0]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
_080DA8F0:
	.4byte gRam
_080DA8F4:
	.4byte 0x00000FC2
_080DA8F8:
	.4byte 0x00000FA2
_080DA8FC:
	.4byte 0x000009D4
_080DA900:
	.4byte 0x000009B4
_080DA904:
	.4byte 0x000009B5
_080DA908:
	.4byte 0x0000051E
_080DA90C:
	.4byte 0x0000051A
_080DA910:
	.4byte 0x00000998
_080DA914:
	.4byte 0x00001152
_080DA918:
	.4byte 0x00001162
_080DA91C:
	.4byte 0x00001052
_080DA920:
	.4byte 0x00000F92
_080DA924:
	.4byte gUnknown_08175BD8
	THUMB_FUNC_END sub_080DA824

	THUMB_FUNC_START sub_080DA928
sub_080DA928: @ 0x080DA928
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DA974  @ =gRam
	ldr r0, _080DA978  @ =0x00001649
	add r1, r5, r0
	mov r6, #0
	mov r0, #2
	strb r0, [r1]
	ldr r1, _080DA97C  @ =0x00001082
	add r0, r5, r1
	add r0, r4, r0
	strb r6, [r0]
	sub r1, r1, #192
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #63
	bhi _080DA98C
	cmp r0, #1
	bne _080DA960
	add r0, r4, #0
	bl sub_080DB5C4
	ldr r0, _080DA980  @ =0x00000A3C
	add r1, r5, r0
	mov r0, #27
	strh r0, [r1]
_080DA960:
	ldr r1, _080DA984  @ =0x000010C2
	add r0, r5, r1
	add r0, r4, r0
	strb r6, [r0]
	ldr r1, _080DA988  @ =0x00000F92
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #17
	b _080DA998
	.byte 0x00
	.byte 0x00
_080DA974:
	.4byte gRam
_080DA978:
	.4byte 0x00001649
_080DA97C:
	.4byte 0x00001082
_080DA980:
	.4byte 0x00000A3C
_080DA984:
	.4byte 0x000010C2
_080DA988:
	.4byte 0x00000F92
_080DA98C:
	ldr r1, _080DA9A0  @ =0x000010C2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r2, #224
	orr r1, r1, r2
_080DA998:
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
_080DA9A0:
	.4byte 0x000010C2
	THUMB_FUNC_END sub_080DA928

	THUMB_FUNC_START sub_080DA9A4
sub_080DA9A4: @ 0x080DA9A4
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r3, _080DAA64  @ =gRam
	ldr r1, _080DAA68  @ =0x00001082
	add r0, r3, r1
	add r0, r4, r0
	mov r6, #0
	strb r6, [r0]
	ldr r2, _080DAA6C  @ =0x00000EE2
	add r0, r3, r2
	ldrb r0, [r0]
	ldr r5, _080DAA70  @ =0x00000968
	add r2, r3, r5
	strb r0, [r2]
	ldr r7, _080DAA74  @ =0x00000F02
	add r0, r3, r7
	ldrb r1, [r0]
	add r5, r5, #1
	add r0, r3, r5
	strb r1, [r0]
	sub r7, r7, #48
	add r0, r3, r7
	ldrb r0, [r0]
	ldr r1, _080DAA78  @ =0x0000096C
	add r5, r3, r1
	strb r0, [r5]
	add r7, r7, #32
	add r0, r3, r7
	ldrb r1, [r0]
	ldr r7, _080DAA7C  @ =0x0000096D
	add r0, r3, r7
	strb r1, [r0]
	ldr r1, _080DAA80  @ =0x00001622
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r7, _080DAA84  @ =0x00001623
	add r0, r3, r7
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrh r0, [r2]
	sub r1, r1, r0
	add r1, r1, #4
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #7
	bhi _080DAA2A
	ldr r1, _080DAA88  @ =0x00001624
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080DAA8C  @ =0x00001625
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrh r0, [r5]
	sub r1, r1, r0
	add r1, r1, #4
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #7
	bhi _080DAA2A
	ldr r5, _080DAA90  @ =0x00000FA2
	add r0, r3, r5
	add r0, r4, r0
	strb r6, [r0]
_080DAA2A:
	add r0, r4, #0
	mov r1, #32
	bl sub_080C2DCC
	ldr r2, _080DAA64  @ =gRam
	ldr r7, _080DAA94  @ =0x00000F12
	add r0, r2, r7
	add r0, r4, r0
	mov r3, #150
	lsl r3, r3, #4
	add r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r5, _080DAA98  @ =0x00000F22
	add r0, r2, r5
	add r0, r4, r0
	ldr r7, _080DAA9C  @ =0x00000961
	add r2, r2, r7
	ldrb r1, [r2]
	strb r1, [r0]
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080DA318
	pop {r4-r7}
	pop {r0}
	bx r0
_080DAA64:
	.4byte gRam
_080DAA68:
	.4byte 0x00001082
_080DAA6C:
	.4byte 0x00000EE2
_080DAA70:
	.4byte 0x00000968
_080DAA74:
	.4byte 0x00000F02
_080DAA78:
	.4byte 0x0000096C
_080DAA7C:
	.4byte 0x0000096D
_080DAA80:
	.4byte 0x00001622
_080DAA84:
	.4byte 0x00001623
_080DAA88:
	.4byte 0x00001624
_080DAA8C:
	.4byte 0x00001625
_080DAA90:
	.4byte 0x00000FA2
_080DAA94:
	.4byte 0x00000F12
_080DAA98:
	.4byte 0x00000F22
_080DAA9C:
	.4byte 0x00000961
	THUMB_FUNC_END sub_080DA9A4

	THUMB_FUNC_START sub_080DAAA0
sub_080DAAA0: @ 0x080DAAA0
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r6, r0, #0
	ldr r4, _080DAB1C  @ =gRam
	ldr r1, _080DAB20  @ =0x00000FC2
	add r0, r4, r1
	add r7, r6, r0
	ldrb r5, [r7]
	cmp r5, #0
	bne _080DAB14
	ldr r2, _080DAB24  @ =0x000009AC
	add r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #26
	beq _080DAAC8
	mov r0, #162
	lsl r0, r0, #1
	bl sub_080C95C0
_080DAAC8:
	ldr r0, _080DAB28  @ =0x00000F52
	add r1, r4, r0
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #80
	strb r0, [r7]
	ldr r2, _080DAB2C  @ =0x000009B5
	add r1, r4, r2
	mov r0, #2
	strb r0, [r1]
	ldr r0, _080DAB30  @ =0x000009D4
	add r1, r4, r0
	mov r0, #48
	strb r0, [r1]
	ldr r1, _080DAB34  @ =0x00000CF8
	add r0, r4, r1
	strh r5, [r0]
	ldr r2, _080DAB38  @ =0x00000CFA
	add r0, r4, r2
	strh r5, [r0]
	ldr r0, _080DAB3C  @ =0x0000051E
	add r1, r4, r0
	mov r0, #185
	lsl r0, r0, #6
	strh r0, [r1]
	ldr r2, _080DAB40  @ =0x0000051A
	add r1, r4, r2
	mov r0, #63
	strh r0, [r1]
	ldr r1, _080DAB44  @ =0x00000998
	add r0, r4, r1
	mov r1, #10
	strb r1, [r0]
	ldr r2, _080DAB48  @ =0x00000999
	add r0, r4, r2
	strb r1, [r0]
_080DAB14:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DAB1C:
	.4byte gRam
_080DAB20:
	.4byte 0x00000FC2
_080DAB24:
	.4byte 0x000009AC
_080DAB28:
	.4byte 0x00000F52
_080DAB2C:
	.4byte 0x000009B5
_080DAB30:
	.4byte 0x000009D4
_080DAB34:
	.4byte 0x00000CF8
_080DAB38:
	.4byte 0x00000CFA
_080DAB3C:
	.4byte 0x0000051E
_080DAB40:
	.4byte 0x0000051A
_080DAB44:
	.4byte 0x00000998
_080DAB48:
	.4byte 0x00000999
	THUMB_FUNC_END sub_080DAAA0

	THUMB_FUNC_START sub_080DAB4C
sub_080DAB4C: @ 0x080DAB4C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080DABEC  @ =gRam
	ldr r1, _080DABF0  @ =0x00001092
	add r0, r4, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DAC10
	ldr r2, _080DABF4  @ =0x00000FC2
	add r2, r2, r4
	mov r9, r2
	add r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DAC08
	cmp r0, #64
	bne _080DAC72
	mov r0, #91
	mov r1, #0
	bl sub_0812A324
	mov r7, #1
	add r6, r4, #0
	ldr r0, _080DABF8  @ =0x00000F52
	add r0, r0, r6
	mov r8, r0
	add r1, r5, #0
	add r1, r1, r8
	mov r10, r1
_080DAB92:
	mov r0, #122
	add r1, r5, #0
	mov r2, #2
	bl sub_080C9AAC
	add r4, r0, #0
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r2, _080DABFC  @ =0x00001032
	add r1, r6, r2
	add r1, r4, r1
	ldr r2, _080DAC00  @ =gUnknown_08175BDF
	sub r0, r4, #1
	add r0, r0, r2
	ldrb r2, [r0]
	strb r2, [r1]
	ldr r1, _080DAC04  @ =0x00001122
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #15
	and r1, r1, r2
	strb r1, [r0]
	ldr r2, _080DABF0  @ =0x00001092
	add r0, r6, r2
	add r0, r4, r0
	strb r1, [r0]
	mov r0, r8
	add r1, r4, r0
	mov r2, r10
	ldrb r0, [r2]
	strb r0, [r1]
	add r4, r4, r9
	mov r0, #32
	strb r0, [r4]
	lsl r0, r7, #24
	mov r1, #255
	lsl r1, r1, #24
	add r0, r0, r1
	lsr r7, r0, #24
	cmp r0, #0
	bge _080DAB92
	b _080DAC72
	.byte 0x00
	.byte 0x00
_080DABEC:
	.4byte gRam
_080DABF0:
	.4byte 0x00001092
_080DABF4:
	.4byte 0x00000FC2
_080DABF8:
	.4byte 0x00000F52
_080DABFC:
	.4byte 0x00001032
_080DAC00:
	.4byte gUnknown_08175BDF
_080DAC04:
	.4byte 0x00001122
_080DAC08:
	add r0, r5, #0
	bl sub_080DB59C
	b _080DAC72
_080DAC10:
	ldr r2, _080DAC58  @ =0x00000FC2
	add r0, r4, r2
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DAC6C
	ldr r0, _080DAC5C  @ =0x00000F22
	add r1, r4, r0
	add r1, r5, r1
	ldr r2, _080DAC60  @ =gUnknown_08175BE1
	sub r0, r5, #1
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080DAC64  @ =0x00000F12
	add r1, r4, r2
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #2
	strb r0, [r1]
	add r0, r5, #0
	bl Sprite3_Move
	add r0, r5, #0
	bl sub_080DA318
	add r2, r0, #0
	cmp r2, #0
	blt _080DAC72
	ldr r1, _080DAC68  @ =0x00001122
	add r0, r4, r1
	add r0, r2, r0
	mov r1, #4
	strb r1, [r0]
	b _080DAC72
	.byte 0x00
	.byte 0x00
_080DAC58:
	.4byte 0x00000FC2
_080DAC5C:
	.4byte 0x00000F22
_080DAC60:
	.4byte gUnknown_08175BE1
_080DAC64:
	.4byte 0x00000F12
_080DAC68:
	.4byte 0x00001122
_080DAC6C:
	add r0, r5, #0
	bl sub_080DB59C
_080DAC72:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080DAB4C

	THUMB_FUNC_START sub_080DAC80
sub_080DAC80: @ 0x080DAC80
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _080DACB0  @ =gRam
	ldr r0, _080DACB4  @ =0x00001642
	add r1, r3, r0
	mov r0, #0
	strb r0, [r1]
	ldr r1, _080DACB8  @ =0x00000FC2
	add r0, r3, r1
	add r4, r2, r0
	ldrb r0, [r4]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DACC4
	ldr r4, _080DACBC  @ =0x00000F92
	add r1, r3, r4
	add r1, r2, r1
	ldr r2, _080DACC0  @ =gUnknown_08175BE5
	lsr r0, r0, #27
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	b _080DACD4
_080DACB0:
	.4byte gRam
_080DACB4:
	.4byte 0x00001642
_080DACB8:
	.4byte 0x00000FC2
_080DACBC:
	.4byte 0x00000F92
_080DACC0:
	.4byte gUnknown_08175BE5
_080DACC4:
	ldr r1, _080DACDC  @ =0x00000F52
	add r0, r3, r1
	add r0, r2, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #255
	strb r0, [r4]
_080DACD4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DACDC:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DAC80

	THUMB_FUNC_START sub_080DACE0
sub_080DACE0: @ 0x080DACE0
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080DAD20  @ =gRam
	ldr r1, _080DAD24  @ =0x00000FC2
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #192
	bne _080DACFC
	add r0, r4, #0
	mov r1, #90
	bl sub_080CF140
_080DACFC:
	ldrb r0, [r5]
	sub r0, r0, #16
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #222
	bls _080DAD2C
	add r1, r4, #0
	ldr r2, _080DAD28  @ =0x0000164C
	add r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DAD16
	mov r1, #2
_080DAD16:
	add r0, r1, #0
	bl sub_08132574
	b _080DAD3C
	.byte 0x00
	.byte 0x00
_080DAD20:
	.4byte gRam
_080DAD24:
	.4byte 0x00000FC2
_080DAD28:
	.4byte 0x0000164C
_080DAD2C:
	cmp r4, #0
	bne _080DAD3C
	mov r0, #0
	bl sub_080C5044
	ldr r3, _080DAE08  @ =0x00001172
	add r0, r6, r3
	strb r4, [r0]
_080DAD3C:
	ldr r5, _080DAE0C  @ =gRam
	ldr r1, _080DAE10  @ =0x00000FC2
	add r0, r5, r1
	add r2, r4, r0
	ldrb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DAE40
	cmp r0, #0
	bge _080DADA0
	add r0, r4, #0
	mov r1, #2
	bl sub_080C35FC
	mov r2, #150
	lsl r2, r2, #4
	add r0, r5, r2
	ldrb r0, [r0]
	add r0, r0, #2
	ldr r3, _080DAE14  @ =0x00000964
	add r1, r5, r3
	strb r0, [r1]
	ldr r2, _080DAE18  @ =0x00000FB2
	add r1, r5, r2
	add r6, r4, r1
	ldr r2, _080DAE1C  @ =gUnknown_08175C10
	lsl r1, r0, #2
	add r0, r0, r1
	sub r3, r3, #3
	add r1, r5, r3
	add r0, r0, #2
	ldrb r1, [r1]
	add r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r6]
	add r0, r4, #0
	mov r1, #32
	bl sub_080C35FC
	ldr r1, _080DAE20  @ =0x00001002
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #4
	bne _080DADA0
	mov r0, #3
	strb r0, [r6]
_080DADA0:
	ldr r6, _080DAE0C  @ =gRam
	ldr r2, _080DAE10  @ =0x00000FC2
	add r0, r6, r2
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #112
	bne _080DADB4
	add r0, r4, #0
	bl sub_080DAF10
_080DADB4:
	ldrb r1, [r5]
	lsr r1, r1, #4
	ldr r3, _080DAE24  @ =0x00000F62
	add r0, r6, r3
	add r5, r4, r0
	ldr r0, _080DAE28  @ =gUnknown_08175BEA
	add r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r0, _080DAE2C  @ =gUnknown_08175BFA
	add r1, r1, r0
	ldrb r2, [r1]
	cmp r2, #0
	beq _080DADE4
	ldr r1, _080DAE30  @ =gUnknown_08175C0A
	add r3, r3, #80
	add r0, r6, r3
	add r0, r4, r0
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r0, [r0]
	add r0, r2, r0
	lsl r0, r0, #24
	lsr r2, r0, #24
_080DADE4:
	ldr r1, _080DAE34  @ =0x00001082
	add r0, r6, r1
	add r0, r4, r0
	strb r2, [r0]
	ldr r3, _080DAE38  @ =0x00000F92
	add r2, r6, r3
	add r2, r4, r2
	ldr r3, _080DAE3C  @ =gUnknown_08175C29
	sub r1, r1, #208
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, r3
	ldrb r0, [r5]
	ldrb r1, [r1]
	add r0, r0, r1
	b _080DAE4E
	.byte 0x00
	.byte 0x00
_080DAE08:
	.4byte 0x00001172
_080DAE0C:
	.4byte gRam
_080DAE10:
	.4byte 0x00000FC2
_080DAE14:
	.4byte 0x00000964
_080DAE18:
	.4byte 0x00000FB2
_080DAE1C:
	.4byte gUnknown_08175C10
_080DAE20:
	.4byte 0x00001002
_080DAE24:
	.4byte 0x00000F62
_080DAE28:
	.4byte gUnknown_08175BEA
_080DAE2C:
	.4byte gUnknown_08175BFA
_080DAE30:
	.4byte gUnknown_08175C0A
_080DAE34:
	.4byte 0x00001082
_080DAE38:
	.4byte 0x00000F92
_080DAE3C:
	.4byte gUnknown_08175C29
_080DAE40:
	ldr r3, _080DAE58  @ =0x00000F52
	add r0, r5, r3
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #39
_080DAE4E:
	strb r0, [r2]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DAE58:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DACE0

	THUMB_FUNC_START sub_080DAE5C
sub_080DAE5C: @ 0x080DAE5C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r5, r3, #0
	ldr r4, _080DAE90  @ =gRam
	ldr r0, _080DAE94  @ =0x00001172
	add r2, r4, r0
	add r2, r3, r2
	ldr r1, _080DAE98  @ =0x00000FC2
	add r0, r4, r1
	add r0, r3, r0
	ldrb r1, [r0]
	strb r1, [r2]
	ldrb r0, [r0]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DAEA4
	ldr r2, _080DAE9C  @ =0x00000F92
	add r1, r4, r2
	add r1, r3, r1
	ldr r2, _080DAEA0  @ =gUnknown_08175C2F
	lsr r0, r0, #27
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	b _080DAEEC
_080DAE90:
	.4byte gRam
_080DAE94:
	.4byte 0x00001172
_080DAE98:
	.4byte 0x00000FC2
_080DAE9C:
	.4byte 0x00000F92
_080DAEA0:
	.4byte gUnknown_08175C2F
_080DAEA4:
	ldr r0, _080DAEF4  @ =0x00000F52
	add r1, r4, r0
	add r1, r3, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r2, #4
	ldr r1, _080DAEF8  @ =0x00001002
	add r0, r4, r1
	add r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #4
	beq _080DAEC6
	bl GetRandomInt
	mov r2, #15
	and r2, r2, r0
_080DAEC6:
	ldr r0, _080DAEFC  @ =0x00000F82
	add r1, r4, r0
	add r1, r5, r1
	ldr r0, _080DAF00  @ =gUnknown_08175C34
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080DAF04  @ =0x00001062
	add r1, r4, r0
	add r1, r5, r1
	ldr r0, _080DAF08  @ =gUnknown_08175C44
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080DAF0C  @ =0x000010A2
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #8
	strb r1, [r0]
_080DAEEC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DAEF4:
	.4byte 0x00000F52
_080DAEF8:
	.4byte 0x00001002
_080DAEFC:
	.4byte 0x00000F82
_080DAF00:
	.4byte gUnknown_08175C34
_080DAF04:
	.4byte 0x00001062
_080DAF08:
	.4byte gUnknown_08175C44
_080DAF0C:
	.4byte 0x000010A2
	THUMB_FUNC_END sub_080DAE5C

	THUMB_FUNC_START sub_080DAF10
sub_080DAF10: @ 0x080DAF10
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080DB004  @ =gRam
	cmp r5, #0
	bne _080DAF36
	ldr r0, _080DB008  @ =0x00001002
	add r2, r6, r0
	ldrb r0, [r2]
	add r1, r0, #1
	strb r1, [r2]
	ldr r3, _080DB00C  @ =0x0000164C
	add r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DAF36
	mov r0, #3
	and r1, r1, r0
	strb r1, [r2]
_080DAF36:
	ldr r1, _080DB008  @ =0x00001002
	add r0, r6, r1
	add r7, r5, r0
	ldrb r0, [r7]
	cmp r0, #5
	bne _080DAF44
	b _080DB044
_080DAF44:
	mov r0, #123
	add r1, r5, #0
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	bge _080DAF54
	b _080DB068
_080DAF54:
	add r0, r5, #0
	mov r1, #92
	bl sub_080CF140
	ldr r3, _080DB010  @ =0x00000FB2
	add r0, r6, r3
	add r0, r5, r0
	ldrb r2, [r0]
	mov r0, #150
	lsl r0, r0, #4
	add r1, r6, r0
	ldr r0, _080DB014  @ =gUnknown_08175C54
	add r0, r2, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080DB018  @ =gUnknown_08175C5A
	add r0, r2, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r0, _080DB01C  @ =0x00000964
	add r3, r6, r0
	ldr r0, _080DB020  @ =gUnknown_08175C60
	add r2, r2, r0
	ldrb r0, [r2]
	ldrh r2, [r3]
	add r2, r2, r0
	ldr r3, _080DB024  @ =0xFFFFFF00
	add r2, r2, r3
	lsl r0, r2, #16
	mov r12, r0
	ldr r3, _080DB028  @ =0x00000EE2
	add r0, r6, r3
	add r0, r4, r0
	strb r1, [r0]
	add r3, r3, #32
	add r0, r6, r3
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r1, _080DB02C  @ =0x00000ED2
	add r0, r6, r1
	add r0, r4, r0
	strb r2, [r0]
	sub r3, r3, #16
	add r0, r6, r3
	add r0, r4, r0
	mov r1, r12
	lsr r3, r1, #24
	strb r3, [r0]
	ldr r1, _080DB030  @ =0x00001172
	add r0, r6, r1
	add r0, r4, r0
	strb r3, [r0]
	ldr r3, _080DB034  @ =0x00000F22
	add r0, r6, r3
	add r1, r4, r0
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080DB038  @ =0x00000F12
	add r0, r6, r1
	add r1, r4, r0
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r7]
	cmp r0, #1
	bls _080DB068
	bl GetRandomInt
	mov r2, #1
	add r1, r2, #0
	and r1, r1, r0
	cmp r1, #0
	bne _080DB068
	ldr r3, _080DB03C  @ =0x00000F72
	add r0, r6, r3
	add r0, r4, r0
	strb r2, [r0]
	ldr r1, _080DB040  @ =0x00000FC2
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #32
	strb r1, [r0]
	b _080DB068
	.byte 0x00
	.byte 0x00
_080DB004:
	.4byte gRam
_080DB008:
	.4byte 0x00001002
_080DB00C:
	.4byte 0x0000164C
_080DB010:
	.4byte 0x00000FB2
_080DB014:
	.4byte gUnknown_08175C54
_080DB018:
	.4byte gUnknown_08175C5A
_080DB01C:
	.4byte 0x00000964
_080DB020:
	.4byte gUnknown_08175C60
_080DB024:
	.4byte 0xFFFFFF00
_080DB028:
	.4byte 0x00000EE2
_080DB02C:
	.4byte 0x00000ED2
_080DB030:
	.4byte 0x00001172
_080DB034:
	.4byte 0x00000F22
_080DB038:
	.4byte 0x00000F12
_080DB03C:
	.4byte 0x00000F72
_080DB040:
	.4byte 0x00000FC2
_080DB044:
	mov r0, #0
	strb r0, [r7]
	add r0, r5, #0
	mov r1, #44
	bl sub_080CF140
	add r0, r5, #0
	bl sub_080DBD34
	add r0, r5, #0
	bl sub_080DBD34
	add r0, r5, #0
	bl sub_080DBD34
	add r0, r5, #0
	bl sub_080DBD34
_080DB068:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080DAF10

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080DB070
sub_080DB070: @ 0x080DB070
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080DB154  @ =gRam
	ldr r1, _080DB158  @ =0x00001172
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #1
	strb r1, [r0]
	ldr r2, _080DB15C  @ =0x00000EE2
	add r0, r4, r2
	add r0, r0, r5
	mov r12, r0
	ldrb r0, [r0]
	mov r7, #150
	lsl r7, r7, #4
	add r7, r7, r4
	mov r8, r7
	strb r0, [r7]
	ldr r1, _080DB160  @ =0x00000F02
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	ldr r2, _080DB164  @ =0x00000961
	add r2, r2, r4
	mov r10, r2
	strb r1, [r2]
	ldr r7, _080DB168  @ =0x00000969
	add r0, r4, r7
	strb r1, [r0]
	ldr r1, _080DB16C  @ =0x00000ED2
	add r0, r4, r1
	add r0, r5, r0
	str r0, [sp]
	ldrb r0, [r0]
	ldr r2, _080DB170  @ =0x00000964
	add r2, r2, r4
	mov r9, r2
	strb r0, [r2]
	ldr r7, _080DB174  @ =0x00000EF2
	add r0, r4, r7
	add r0, r5, r0
	ldrb r1, [r0]
	ldr r2, _080DB178  @ =0x00000965
	add r0, r4, r2
	strb r1, [r0]
	ldr r7, _080DB17C  @ =0x0000096D
	add r0, r4, r7
	strb r1, [r0]
	ldr r1, _080DB180  @ =0x00000F82
	add r0, r4, r1
	add r6, r5, r0
	ldrb r0, [r6]
	add r2, r2, #3
	add r1, r4, r2
	strb r0, [r1]
	ldr r7, _080DB184  @ =0x00001062
	add r0, r4, r7
	add r2, r5, r0
	ldrb r0, [r2]
	ldr r7, _080DB188  @ =0x0000096C
	add r3, r4, r7
	strb r0, [r3]
	mov r7, r8
	ldrh r0, [r7]
	ldrh r1, [r1]
	sub r0, r0, r1
	add r0, r0, #7
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #13
	bhi _080DB11C
	mov r1, r9
	ldrh r0, [r1]
	ldrh r1, [r3]
	sub r0, r0, r1
	add r0, r0, #7
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #13
	bls _080DB194
_080DB11C:
	ldr r2, _080DB18C  @ =0x000010A2
	add r0, r4, r2
	add r6, r5, r0
	ldrb r1, [r6]
	add r0, r5, #0
	bl sub_080C2DCC
	ldr r7, _080DB190  @ =0x00000F12
	add r0, r4, r7
	add r0, r5, r0
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r0]
	add r7, r7, #16
	add r0, r4, r7
	add r0, r5, r0
	mov r2, r10
	ldrb r1, [r2]
	strb r1, [r0]
	ldrb r0, [r6]
	cmp r0, #63
	bhi _080DB14C
	add r0, r0, #1
	strb r0, [r6]
_080DB14C:
	add r0, r5, #0
	bl Sprite3_Move
	b _080DB1B4
_080DB154:
	.4byte gRam
_080DB158:
	.4byte 0x00001172
_080DB15C:
	.4byte 0x00000EE2
_080DB160:
	.4byte 0x00000F02
_080DB164:
	.4byte 0x00000961
_080DB168:
	.4byte 0x00000969
_080DB16C:
	.4byte 0x00000ED2
_080DB170:
	.4byte 0x00000964
_080DB174:
	.4byte 0x00000EF2
_080DB178:
	.4byte 0x00000965
_080DB17C:
	.4byte 0x0000096D
_080DB180:
	.4byte 0x00000F82
_080DB184:
	.4byte 0x00001062
_080DB188:
	.4byte 0x0000096C
_080DB18C:
	.4byte 0x000010A2
_080DB190:
	.4byte 0x00000F12
_080DB194:
	ldrb r0, [r6]
	mov r7, r12
	strb r0, [r7]
	ldrb r0, [r2]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r2, _080DB1C4  @ =0x00000F52
	add r0, r4, r2
	add r0, r5, r0
	mov r1, #2
	strb r1, [r0]
	ldr r7, _080DB1C8  @ =0x00000FC2
	add r0, r4, r7
	add r0, r5, r0
	mov r1, #39
	strb r1, [r0]
_080DB1B4:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080DB1C4:
	.4byte 0x00000F52
_080DB1C8:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080DB070

	THUMB_FUNC_START sub_080DB1CC
sub_080DB1CC: @ 0x080DB1CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	mov r4, sp
	add r4, r4, #5
	add r0, sp, #4
	add r1, r4, #0
	mov r2, r8
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DB1F4
	b _080DB3F0
_080DB1F4:
	ldr r0, _080DB304  @ =gRam
	ldr r2, _080DB308  @ =0x00000F92
	add r1, r0, r2
	add r1, r1, r8
	ldrb r1, [r1]
	lsl r1, r1, #26
	lsr r1, r1, #24
	mov r10, r1
	mov r7, #3
	add r6, sp, #4
	mov r9, r0
_080DB20A:
	mov r4, r10
	add r0, r4, r7
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r5, r0, #0
	mov r0, #2
	mov r12, r0
	add r0, r5, #0
	sub r0, r0, #64
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bhi _080DB228
	mov r1, #0
	mov r12, r1
_080DB228:
	ldr r0, _080DB30C  @ =gUnknown_03003E74
	ldrb r1, [r6]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r9
	ldr r1, _080DB310  @ =gUnknown_08175C66
	add r1, r5, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, _080DB314  @ =0x00000964
	add r3, r3, r9
	ldr r2, _080DB318  @ =gUnknown_08175CAE
	add r2, r5, r2
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080DB31C  @ =gUnknown_08175CF6
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080DB320  @ =gUnknown_08175D3E
	add r4, r5, r4
	ldrb r4, [r4]
	ldr r5, _080DB324  @ =gUnknown_03002B99
	ldrb r5, [r5]
	lsl r5, r5, #24
	asr r5, r5, #24
	orr r4, r4, r5
	lsl r4, r4, #8
	add r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r4, r12
	str r4, [sp]
	bl sub_080C6004
	lsl r1, r7, #24
	mov r5, #255
	lsl r5, r5, #24
	add r1, r1, r5
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	lsr r7, r1, #24
	cmp r1, #0
	bge _080DB20A
	mov r4, r9
	ldr r1, _080DB328  @ =0x00001122
	add r0, r4, r1
	add r0, r0, r8
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _080DB2B4
	mov r0, #4
	bl sub_080C64A0
_080DB2B4:
	ldr r2, _080DB308  @ =0x00000F92
	add r0, r4, r2
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #11
	bhi _080DB2C8
	mov r0, r8
	mov r1, #18
	bl sub_080C57F8
_080DB2C8:
	ldr r5, _080DB32C  @ =0x000009AD
	add r0, r4, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DB2DC
	mov r0, r8
	mov r1, #255
	mov r2, #3
	bl sub_080C6350
_080DB2DC:
	add r0, sp, #4
	mov r1, sp
	add r1, r1, #5
	mov r2, r8
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DB2F0
	b _080DB3F0
_080DB2F0:
	ldr r0, _080DB330  @ =0x00000FB2
	add r0, r0, r9
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB334
	mov r0, #8
	bl sub_080CF388
	b _080DB33A
_080DB304:
	.4byte gRam
_080DB308:
	.4byte 0x00000F92
_080DB30C:
	.4byte gUnknown_03003E74
_080DB310:
	.4byte gUnknown_08175C66
_080DB314:
	.4byte 0x00000964
_080DB318:
	.4byte gUnknown_08175CAE
_080DB31C:
	.4byte gUnknown_08175CF6
_080DB320:
	.4byte gUnknown_08175D3E
_080DB324:
	.4byte gUnknown_03002B99
_080DB328:
	.4byte 0x00001122
_080DB32C:
	.4byte 0x000009AD
_080DB330:
	.4byte 0x00000FB2
_080DB334:
	mov r0, #8
	bl sub_080CF3A0
_080DB33A:
	ldr r3, _080DB400  @ =gRam
	ldr r1, _080DB404  @ =0x00001082
	add r0, r3, r1
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DB3F0
	sub r0, r0, #1
	lsl r0, r0, #25
	lsr r0, r0, #24
	mov r10, r0
	ldr r2, _080DB408  @ =0x00000996
	add r0, r3, r2
	ldrb r0, [r0]
	lsr r0, r0, #1
	mov r1, #2
	and r0, r0, r1
	add r0, r0, #2
	mov r1, #49
	ldr r4, _080DB40C  @ =0x00000979
	add r2, r3, r4
	orr r0, r0, r1
	strb r0, [r2]
	mov r7, #1
	add r6, sp, #4
	mov r9, r3
_080DB36E:
	mov r5, r10
	add r3, r5, r7
	lsl r3, r3, #24
	lsr r3, r3, #24
	ldr r0, _080DB410  @ =gUnknown_03003E74
	ldrb r1, [r6]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r9
	ldr r1, _080DB414  @ =gUnknown_08175D86
	add r1, r3, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r4, _080DB418  @ =0x00000964
	add r4, r4, r9
	ldr r2, _080DB41C  @ =gUnknown_08175DCE
	add r3, r3, r2
	mov r2, #0
	ldrsb r2, [r3, r2]
	ldrh r4, [r4]
	add r2, r2, r4
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080DB404  @ =0x00001082
	add r3, r3, r9
	add r3, r3, r8
	ldrb r5, [r3]
	sub r5, r5, #1
	ldr r4, _080DB420  @ =gUnknown_08175E16
	add r3, r5, r4
	ldrb r3, [r3]
	ldr r4, _080DB424  @ =gUnknown_03002BA9
	ldrb r4, [r4]
	lsl r4, r4, #24
	asr r4, r4, #24
	lsl r4, r4, #8
	mov r12, r4
	add r3, r3, r12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r4, _080DB428  @ =gUnknown_08175E3A
	add r5, r5, r4
	ldrb r4, [r5]
	str r4, [sp]
	bl sub_080C6004
	lsl r1, r7, #24
	mov r5, #255
	lsl r5, r5, #24
	add r1, r1, r5
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	lsr r7, r1, #24
	cmp r1, #0
	bge _080DB36E
_080DB3F0:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080DB400:
	.4byte gRam
_080DB404:
	.4byte 0x00001082
_080DB408:
	.4byte 0x00000996
_080DB40C:
	.4byte 0x00000979
_080DB410:
	.4byte gUnknown_03003E74
_080DB414:
	.4byte gUnknown_08175D86
_080DB418:
	.4byte 0x00000964
_080DB41C:
	.4byte gUnknown_08175DCE
_080DB420:
	.4byte gUnknown_08175E16
_080DB424:
	.4byte gUnknown_03002BA9
_080DB428:
	.4byte gUnknown_08175E3A
	THUMB_FUNC_END sub_080DB1CC

	THUMB_FUNC_START sub_080DB42C
sub_080DB42C: @ 0x080DB42C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	bl sub_080CBB34
	ldr r2, _080DB48C  @ =gRam
	ldr r1, _080DB490  @ =0x00000FA2
	add r0, r2, r1
	add r0, r4, r0
	mov r5, #0
	mov r3, #9
	strb r3, [r0]
	ldr r1, _080DB494  @ =0x00001172
	add r0, r2, r1
	add r0, r4, r0
	strb r3, [r0]
	ldr r1, _080DB498  @ =0x0000164C
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DB4A8
	ldr r1, _080DB49C  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	ldr r1, _080DB4A0  @ =0x00000F52
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #8
	strb r1, [r0]
	ldr r1, _080DB4A4  @ =0x00000F53
	add r0, r2, r1
	strb r3, [r0]
	add r1, r1, #1
	add r0, r2, r1
	strb r3, [r0]
	add r1, r1, #63
	add r0, r2, r1
	strb r5, [r0]
	add r1, r1, #1
	add r0, r2, r1
	strb r5, [r0]
	add r0, r4, #0
	bl sub_080ED8C8
	b _080DB4CC
	.byte 0x00
	.byte 0x00
_080DB48C:
	.4byte gRam
_080DB490:
	.4byte 0x00000FA2
_080DB494:
	.4byte 0x00001172
_080DB498:
	.4byte 0x0000164C
_080DB49C:
	.4byte 0x00000FC2
_080DB4A0:
	.4byte 0x00000F52
_080DB4A4:
	.4byte 0x00000F53
_080DB4A8:
	ldr r1, _080DB4D4  @ =0x00000F52
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #10
	strb r1, [r0]
	ldr r1, _080DB4D8  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	ldr r1, _080DB4DC  @ =0x00001152
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #32
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080ED8C8
_080DB4CC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DB4D4:
	.4byte 0x00000F52
_080DB4D8:
	.4byte 0x00000FC2
_080DB4DC:
	.4byte 0x00001152
	THUMB_FUNC_END sub_080DB42C

	THUMB_FUNC_START sub_080DB4E0
sub_080DB4E0: @ 0x080DB4E0
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r0, r5, #0
	bl sub_080ED830
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _080DB522
	ldr r4, _080DB528  @ =gRam
	ldr r2, _080DB52C  @ =0x00000F92
	add r0, r4, r2
	add r0, r5, r0
	strb r1, [r0]
	ldr r1, _080DB530  @ =0x00000FB2
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #3
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080C35C0
	ldr r2, _080DB534  @ =0x00001122
	add r1, r4, r2
	add r1, r5, r1
	ldr r2, _080DB538  @ =gUnknown_08175BA8
	ldr r0, _080DB53C  @ =0x0000164C
	add r4, r4, r0
	ldrb r0, [r4]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
_080DB522:
	pop {r4,r5}
	pop {r0}
	bx r0
_080DB528:
	.4byte gRam
_080DB52C:
	.4byte 0x00000F92
_080DB530:
	.4byte 0x00000FB2
_080DB534:
	.4byte 0x00001122
_080DB538:
	.4byte gUnknown_08175BA8
_080DB53C:
	.4byte 0x0000164C
	THUMB_FUNC_END sub_080DB4E0

	THUMB_FUNC_START sub_080DB540
sub_080DB540: @ 0x080DB540
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080DB55C  @ =gRam
	ldr r3, _080DB560  @ =0x00000F52
	add r2, r1, r3
	add r0, r0, r2
	ldr r2, _080DB564  @ =gUnknown_08175BE3
	ldr r3, _080DB568  @ =0x0000164C
	add r1, r1, r3
	ldrb r1, [r1]
	add r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0]
	bx lr
_080DB55C:
	.4byte gRam
_080DB560:
	.4byte 0x00000F52
_080DB564:
	.4byte gUnknown_08175BE3
_080DB568:
	.4byte 0x0000164C
	THUMB_FUNC_END sub_080DB540

	THUMB_FUNC_START sub_080DB56C
sub_080DB56C: @ 0x080DB56C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _080DB594  @ =gRam
	ldr r1, _080DB598  @ =0x00000FC2
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB58E
	mov r0, #161
	lsl r0, r0, #1
	bl sub_080C95C0
	add r0, r4, #0
	bl sub_080DB59C
_080DB58E:
	pop {r4}
	pop {r0}
	bx r0
_080DB594:
	.4byte gRam
_080DB598:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080DB56C

	THUMB_FUNC_START sub_080DB59C
sub_080DB59C: @ 0x080DB59C
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080DB5B8  @ =gRam
	ldr r2, _080DB5BC  @ =0x00000F52
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #3
	strb r2, [r1]
	ldr r1, _080DB5C0  @ =0x00000FC2
	add r3, r3, r1
	add r0, r0, r3
	mov r1, #32
	strb r1, [r0]
	bx lr
_080DB5B8:
	.4byte gRam
_080DB5BC:
	.4byte 0x00000F52
_080DB5C0:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080DB59C

	THUMB_FUNC_START sub_080DB5C4
sub_080DB5C4: @ 0x080DB5C4
	push {r4,r5,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #201
	bl sub_080CA538
	add r4, r0, #0
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r2, _080DB60C  @ =gRam
	ldr r1, _080DB610  @ =0x00001012
	add r0, r2, r1
	add r0, r4, r0
	mov r3, #0
	mov r1, #2
	strb r1, [r0]
	ldr r5, _080DB614  @ =0x00001172
	add r0, r2, r5
	add r0, r4, r0
	strb r1, [r0]
	ldr r1, _080DB618  @ =0x00001092
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	sub r5, r5, #80
	add r2, r2, r5
	add r4, r4, r2
	strb r3, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DB60C:
	.4byte gRam
_080DB610:
	.4byte 0x00001012
_080DB614:
	.4byte 0x00001172
_080DB618:
	.4byte 0x00001092
	THUMB_FUNC_END sub_080DB5C4

	THUMB_FUNC_START sub_080DB61C
sub_080DB61C: @ 0x080DB61C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r1, _080DB650  @ =gRam
	ldr r2, _080DB654  @ =0x00000F72
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	add r5, r1, #0
	cmp r0, #0
	bne _080DB65C
	ldr r1, _080DB658  @ =0x00000996
	add r0, r5, r1
	ldrb r0, [r0]
	lsr r0, r0, #1
	mov r1, #2
	and r0, r0, r1
	add r1, r0, #2
	mov r0, #1
	orr r1, r1, r0
	b _080DB672
	.byte 0x00
	.byte 0x00
_080DB650:
	.4byte gRam
_080DB654:
	.4byte 0x00000F72
_080DB658:
	.4byte 0x00000996
_080DB65C:
	ldr r2, _080DB6A4  @ =0x00000FC2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DB670
	add r0, r4, #0
	mov r1, #32
	bl sub_080C35FC
_080DB670:
	mov r1, #5
_080DB672:
	ldr r2, _080DB6A8  @ =0x00001122
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	ldr r1, _080DB6AC  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DB688
	b _080DB8EC
_080DB688:
	mov r7, #0
	mov r2, #0
	mov r9, r2
	mov r8, r2
	add r1, r1, #32
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB6B0
	add r0, r4, #0
	bl sub_080C6240
	b _080DB6B6
_080DB6A4:
	.4byte 0x00000FC2
_080DB6A8:
	.4byte 0x00001122
_080DB6AC:
	.4byte 0x00000F52
_080DB6B0:
	add r0, r4, #0
	bl sub_080DBAA4
_080DB6B6:
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	beq _080DB6C6
	b _080DB964
_080DB6C6:
	ldr r5, _080DB700  @ =gRam
	ldr r2, _080DB704  @ =0x00001052
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C7A20
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DB718
	ldr r1, _080DB708  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	strb r6, [r0]
	ldr r2, _080DB70C  @ =0x00000F72
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DB710
	mov r0, #1
	mov r9, r0
	b _080DB712
_080DB700:
	.4byte gRam
_080DB704:
	.4byte 0x00001052
_080DB708:
	.4byte 0x00000FA2
_080DB70C:
	.4byte 0x00000F72
_080DB710:
	mov r7, #1
_080DB712:
	cmp r7, #0
	bne _080DB718
	b _080DB84E
_080DB718:
	ldr r5, _080DB794  @ =gRam
	ldr r1, _080DB798  @ =0x00000F62
	add r0, r5, r1
	add r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #0
	beq _080DB730
	ldr r2, _080DB79C  @ =0x00001172
	add r0, r5, r2
	ldrb r7, [r0]
	cmp r7, #0
	beq _080DB7C0
_080DB730:
	add r0, r4, #0
	bl sub_080C4F98
	mov r0, sp
	add r1, r4, #0
	bl sub_080C4948
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DB746
	b _080DB84A
_080DB746:
	ldr r1, _080DB7A0  @ =0x00000F72
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB7B0
	add r0, r4, #0
	mov r1, #113
	bl sub_080CF0AC
	add r0, r4, #0
	mov r1, #92
	bl sub_080CF140
	add r0, r4, #0
	mov r1, #48
	bl sub_080C35FC
	ldr r2, _080DB7A4  @ =0x00000F22
	add r1, r5, r2
	add r1, r4, r1
	ldr r2, _080DB7A8  @ =0x00000961
	add r0, r5, r2
	ldrb r0, [r0]
	neg r0, r0
	strb r0, [r1]
	ldr r0, _080DB7AC  @ =0x00000F12
	add r1, r5, r0
	add r1, r4, r1
	sub r2, r2, #1
	add r0, r5, r2
	ldrb r0, [r0]
	neg r0, r0
	strb r0, [r1]
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	b _080DB84A
	.byte 0x00
	.byte 0x00
_080DB794:
	.4byte gRam
_080DB798:
	.4byte 0x00000F62
_080DB79C:
	.4byte 0x00001172
_080DB7A0:
	.4byte 0x00000F72
_080DB7A4:
	.4byte 0x00000F22
_080DB7A8:
	.4byte 0x00000961
_080DB7AC:
	.4byte 0x00000F12
_080DB7B0:
	ldr r1, _080DB7BC  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	b _080DB854
_080DB7BC:
	.4byte 0x00000FA2
_080DB7C0:
	ldr r2, _080DB8B8  @ =0x00000EE2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	mov r1, #150
	lsl r1, r1, #4
	add r6, r5, r1
	strb r0, [r6]
	add r2, r2, #32
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r0]
	mov r2, #151
	lsl r2, r2, #4
	add r0, r5, r2
	strb r1, [r0]
	ldr r1, _080DB8BC  @ =0x00000964
	add r0, r5, r1
	mov r1, #15
	strb r1, [r0]
	sub r2, r2, #11
	add r0, r5, r2
	strb r1, [r0]
	ldr r1, _080DB8C0  @ =0x00000ED2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	sub r2, r2, #4
	add r0, r5, r2
	strb r1, [r0]
	ldr r1, _080DB8C4  @ =0x00000EF2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r2, r2, #16
	add r0, r5, r2
	strb r1, [r0]
	mov r0, #0
	bl sub_080C4574
	bl sub_080C466C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DB84A
	mov r0, #160
	strb r0, [r6]
	mov r0, #0
	mov r1, #16
	bl sub_080C414C
	ldr r1, _080DB8C8  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	strb r7, [r0]
	ldr r2, _080DB8CC  @ =0x00000F22
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r2, _080DB8D0  @ =0x00001112
	add r0, r5, r2
	strb r1, [r0]
	ldr r1, _080DB8D4  @ =0x00000F12
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	sub r2, r2, #16
	add r0, r5, r2
	strb r1, [r0]
_080DB84A:
	mov r0, #1
	mov r8, r0
_080DB84E:
	mov r1, r9
	cmp r1, #0
	beq _080DB862
_080DB854:
	add r0, r4, #0
	mov r1, #95
	bl sub_080CF140
	add r0, r4, #0
	bl sub_080DB990
_080DB862:
	mov r2, r8
	cmp r2, #0
	bne _080DB86A
	b _080DB964
_080DB86A:
	ldr r5, _080DB8D8  @ =gRam
	ldr r1, _080DB8DC  @ =0x00000996
	add r0, r5, r1
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #3
	and r0, r0, r1
	ldr r2, _080DB8E0  @ =0x00000F72
	add r7, r5, r2
	add r6, r4, r7
	ldrb r1, [r6]
	orr r0, r0, r1
	cmp r0, #0
	bne _080DB964
	mov r0, #123
	add r1, r4, #0
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080DB964
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r1, _080DB8E4  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #15
	strb r1, [r0]
	ldr r2, _080DB8E8  @ =0x00000F52
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	add r1, r4, r7
	ldrb r0, [r6]
	b _080DB962
	.byte 0x00
	.byte 0x00
_080DB8B8:
	.4byte 0x00000EE2
_080DB8BC:
	.4byte 0x00000964
_080DB8C0:
	.4byte 0x00000ED2
_080DB8C4:
	.4byte 0x00000EF2
_080DB8C8:
	.4byte 0x00000FA2
_080DB8CC:
	.4byte 0x00000F22
_080DB8D0:
	.4byte 0x00001112
_080DB8D4:
	.4byte 0x00000F12
_080DB8D8:
	.4byte gRam
_080DB8DC:
	.4byte 0x00000996
_080DB8E0:
	.4byte 0x00000F72
_080DB8E4:
	.4byte 0x00000FC2
_080DB8E8:
	.4byte 0x00000F52
_080DB8EC:
	ldr r1, _080DB900  @ =0x00000F92
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #2
	bne _080DB904
	add r0, r4, #0
	bl sub_080C58F0
	b _080DB90A
_080DB900:
	.4byte 0x00000F92
_080DB904:
	add r0, r4, #0
	bl sub_080C6240
_080DB90A:
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DB964
	ldr r6, _080DB974  @ =gRam
	ldr r2, _080DB978  @ =0x00001172
	add r0, r6, r2
	add r0, r4, r0
	ldr r2, _080DB97C  @ =0x00000FC2
	add r1, r6, r2
	add r5, r4, r1
	ldrb r1, [r5]
	strb r1, [r0]
	ldrb r1, [r5]
	cmp r1, #0
	bne _080DB936
	sub r2, r2, #32
	add r0, r6, r2
	add r0, r4, r0
	strb r1, [r0]
_080DB936:
	ldrb r0, [r5]
	cmp r0, #6
	bne _080DB954
	ldr r1, _080DB980  @ =0x00000F22
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #64
	strb r1, [r0]
	ldr r2, _080DB984  @ =0x00000F12
	add r0, r6, r2
	add r0, r4, r0
	strb r1, [r0]
	add r0, r4, #0
	bl Sprite3_Move
_080DB954:
	ldr r0, _080DB988  @ =0x00000F92
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080DB98C  @ =gUnknown_08175E60
	ldrb r0, [r5]
	add r0, r0, r2
	ldrb r0, [r0]
_080DB962:
	strb r0, [r1]
_080DB964:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DB974:
	.4byte gRam
_080DB978:
	.4byte 0x00001172
_080DB97C:
	.4byte 0x00000FC2
_080DB980:
	.4byte 0x00000F22
_080DB984:
	.4byte 0x00000F12
_080DB988:
	.4byte 0x00000F92
_080DB98C:
	.4byte gUnknown_08175E60
	THUMB_FUNC_END sub_080DB61C

	THUMB_FUNC_START sub_080DB990
sub_080DB990: @ 0x080DB990
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r1, #95
	bl sub_080CF140
	mov r5, #5
	ldr r4, _080DBA6C  @ =gRam
	ldr r1, _080DBA70  @ =0x00000F12
	add r1, r1, r4
	mov r8, r1
	mov r7, #20
_080DB9B2:
	mov r0, #85
	mov r1, r10
	bl sub_080CA538
	add r3, r0, #0
	lsl r5, r5, #24
	cmp r3, #0
	blt _080DBA50
	mov r2, #150
	lsl r2, r2, #4
	add r0, r4, r2
	ldrh r1, [r0]
	add r1, r1, #4
	ldr r6, _080DBA74  @ =0x00000964
	add r0, r4, r6
	ldrh r2, [r0]
	add r2, r2, #4
	ldr r6, _080DBA78  @ =0x00000EE2
	add r0, r4, r6
	add r0, r3, r0
	strb r1, [r0]
	add r6, r6, #32
	add r0, r4, r6
	add r0, r3, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r1, _080DBA7C  @ =0x00000ED2
	add r0, r4, r1
	add r0, r3, r0
	strb r2, [r0]
	sub r6, r6, #16
	add r0, r4, r6
	add r0, r3, r0
	lsr r2, r2, #8
	strb r2, [r0]
	ldr r0, _080DBA80  @ =0x00001032
	add r2, r4, r0
	add r2, r3, r2
	ldrb r1, [r2]
	mov r0, #254
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2]
	ldr r1, _080DBA84  @ =0x00001122
	add r0, r4, r1
	add r0, r3, r0
	mov r1, #4
	strb r1, [r0]
	ldr r2, _080DBA88  @ =0x00000FD2
	add r0, r4, r2
	add r0, r3, r0
	strb r1, [r0]
	ldr r6, _080DBA8C  @ =0x00001132
	add r0, r4, r6
	add r0, r3, r0
	strb r7, [r0]
	ldr r1, _080DBA90  @ =0x00000F82
	add r0, r4, r1
	add r0, r3, r0
	strb r7, [r0]
	add r2, r2, #144
	add r0, r4, r2
	add r0, r3, r0
	strb r7, [r0]
	ldr r6, _080DBA94  @ =0x00000F22
	add r2, r4, r6
	add r2, r3, r2
	ldr r0, _080DBA98  @ =gUnknown_08175E70
	asr r1, r5, #24
	add r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r2]
	mov r0, r8
	add r2, r3, r0
	ldr r0, _080DBA9C  @ =gUnknown_08175E76
	add r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
_080DBA50:
	mov r1, #255
	lsl r1, r1, #24
	add r0, r5, r1
	lsr r5, r0, #24
	cmp r0, #0
	bge _080DB9B2
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DBA6C:
	.4byte gRam
_080DBA70:
	.4byte 0x00000F12
_080DBA74:
	.4byte 0x00000964
_080DBA78:
	.4byte 0x00000EE2
_080DBA7C:
	.4byte 0x00000ED2
_080DBA80:
	.4byte 0x00001032
_080DBA84:
	.4byte 0x00001122
_080DBA88:
	.4byte 0x00000FD2
_080DBA8C:
	.4byte 0x00001132
_080DBA90:
	.4byte 0x00000F82
_080DBA94:
	.4byte 0x00000F22
_080DBA98:
	.4byte gUnknown_08175E70
_080DBA9C:
	.4byte gUnknown_08175E76
	THUMB_FUNC_END sub_080DB990

	THUMB_FUNC_START sub_080DBAA0
sub_080DBAA0: @ 0x080DBAA0
	bx lr
	THUMB_FUNC_END sub_080DBAA0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080DBAA4
sub_080DBAA4: @ 0x080DBAA4
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080DBACC  @ =gRam
	ldr r2, _080DBAD0  @ =0x00001052
	add r1, r1, r2
	add r1, r0, r1
	ldrb r1, [r1]
	lsr r1, r1, #2
	mov r2, #1
	and r1, r1, r2
	lsl r1, r1, #5
	ldr r2, _080DBAD4  @ =gUnknown_08175E7C
	add r1, r1, r2
	mov r2, #4
	bl sub_080C9480
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DBACC:
	.4byte gRam
_080DBAD0:
	.4byte 0x00001052
_080DBAD4:
	.4byte gUnknown_08175E7C
	THUMB_FUNC_END sub_080DBAA4

	THUMB_FUNC_START sub_080DBAD8
sub_080DBAD8: @ 0x080DBAD8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r9, r5
	ldr r6, _080DBBE4  @ =gRam
	ldr r0, _080DBBE8  @ =0x00001122
	add r3, r6, r0
	add r3, r5, r3
	ldrb r0, [r3]
	mov r2, #177
	and r2, r2, r0
	ldr r1, _080DBBEC  @ =gUnknown_08175EC4
	ldr r4, _080DBBF0  @ =0x00000F62
	add r0, r6, r4
	add r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r0, [r0]
	orr r2, r2, r0
	ldr r1, _080DBBF4  @ =0x00000996
	add r0, r6, r1
	ldrb r0, [r0]
	lsl r0, r0, #1
	mov r1, #14
	and r0, r0, r1
	orr r2, r2, r0
	strb r2, [r3]
	ldr r3, _080DBBF8  @ =0x00000F92
	add r0, r6, r3
	add r2, r5, r0
	ldr r1, _080DBBFC  @ =gUnknown_08175EBC
	mov r4, r8
	ldrb r0, [r4]
	add r0, r0, r1
	ldrb r1, [r0]
	strb r1, [r2]
	ldr r3, _080DBC00  @ =0x00000B36
	add r0, r6, r3
	ldrh r0, [r0]
	cmp r0, #32
	bne _080DBB36
	add r0, r1, #4
	strb r0, [r2]
_080DBB36:
	add r0, r5, #0
	bl sub_080C6240
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DBC24
	ldr r4, _080DBC04  @ =0x00000FC2
	add r0, r6, r4
	add r4, r5, r0
	ldrb r7, [r4]
	cmp r7, #0
	bne _080DBC24
	add r0, r5, #0
	bl sub_080DBC34
	mov r0, #2
	strb r0, [r4]
	ldr r0, _080DBC08  @ =0x00000ED2
	add r3, r6, r0
	add r3, r5, r3
	ldrb r1, [r3]
	ldr r4, _080DBC0C  @ =0x00000EF2
	add r2, r6, r4
	add r2, r5, r2
	ldrb r0, [r2]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #16
	strb r1, [r3]
	lsr r1, r1, #8
	strb r1, [r2]
	ldr r1, _080DBC10  @ =0x00000958
	add r0, r6, r1
	ldrb r1, [r0]
	ldrb r0, [r3]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #207
	bhi _080DBC1C
	bl GetRandomInt
	mov r1, #7
	and r1, r1, r0
	mov r3, #150
	lsl r3, r3, #4
	add r7, r6, r3
	strb r1, [r7]
	ldr r2, _080DBC14  @ =gUnknown_08175ECC
	mov r4, r8
	ldrb r0, [r4]
	lsl r0, r0, #3
	mov r1, #0
	ldrsb r1, [r7, r1]
	orr r0, r0, r1
	add r0, r0, r2
	ldrb r4, [r0]
	mov r0, #128
	and r0, r0, r4
	cmp r0, #0
	beq _080DBBBE
	mov r1, #255
	lsl r1, r1, #8
	add r0, r1, #0
	orr r4, r4, r0
_080DBBBE:
	ldr r0, _080DBC18  @ =0x00000EE2
	add r3, r6, r0
	add r3, r5, r3
	ldrb r1, [r3]
	add r0, r0, #32
	add r2, r6, r0
	add r2, r5, r2
	ldrb r0, [r2]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r4, r1
	strb r1, [r3]
	lsr r1, r1, #8
	strb r1, [r2]
	ldrb r0, [r7]
	mov r1, r8
	strb r0, [r1]
	b _080DBC24
	.byte 0x00
	.byte 0x00
_080DBBE4:
	.4byte gRam
_080DBBE8:
	.4byte 0x00001122
_080DBBEC:
	.4byte gUnknown_08175EC4
_080DBBF0:
	.4byte 0x00000F62
_080DBBF4:
	.4byte 0x00000996
_080DBBF8:
	.4byte 0x00000F92
_080DBBFC:
	.4byte gUnknown_08175EBC
_080DBC00:
	.4byte 0x00000B36
_080DBC04:
	.4byte 0x00000FC2
_080DBC08:
	.4byte 0x00000ED2
_080DBC0C:
	.4byte 0x00000EF2
_080DBC10:
	.4byte 0x00000958
_080DBC14:
	.4byte gUnknown_08175ECC
_080DBC18:
	.4byte 0x00000EE2
_080DBC1C:
	ldr r3, _080DBC30  @ =0x00000FA2
	add r0, r6, r3
	add r0, r0, r9
	strb r7, [r0]
_080DBC24:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080DBC30:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080DBAD8

	THUMB_FUNC_START sub_080DBC34
sub_080DBC34: @ 0x080DBC34
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r2, #29
	ldr r1, _080DBD00  @ =gRam
	ldr r3, _080DBD04  @ =0x000011EF
	add r0, r1, r3
	ldrb r0, [r0]
	add r3, r1, #0
	cmp r0, #0
	beq _080DBC66
	ldr r5, _080DBD08  @ =0x000011D2
	add r1, r3, r5
_080DBC4E:
	lsl r0, r2, #24
	mov r2, #255
	lsl r2, r2, #24
	add r0, r0, r2
	lsr r2, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	blt _080DBC6C
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DBC4E
_080DBC66:
	lsl r0, r2, #24
	cmp r0, #0
	bge _080DBC84
_080DBC6C:
	ldr r5, _080DBD0C  @ =0x00001642
	add r2, r3, r5
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080DBC82
	mov r0, #29
	strb r0, [r2]
_080DBC82:
	ldrb r2, [r2]
_080DBC84:
	lsl r2, r2, #24
	asr r2, r2, #24
	ldr r1, _080DBD08  @ =0x000011D2
	add r0, r3, r1
	add r0, r2, r0
	mov r1, #9
	strb r1, [r0]
	ldr r5, _080DBD10  @ =0x000015F8
	add r0, r3, r5
	strb r1, [r0]
	ldr r0, _080DBD14  @ =0x0000131C
	add r1, r3, r0
	add r1, r2, r1
	ldr r5, _080DBD18  @ =0x00000F62
	add r0, r3, r5
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080DBD1C  @ =0x0000122C
	add r1, r3, r0
	add r1, r2, r1
	sub r5, r5, #128
	add r0, r3, r5
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080DBD20  @ =0x00001268
	add r1, r3, r0
	add r1, r2, r1
	add r5, r5, #32
	add r0, r3, r5
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080DBD24  @ =0x00000ED2
	add r0, r3, r1
	add r0, r4, r0
	ldrb r1, [r0]
	sub r5, r5, #16
	add r0, r3, r5
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #16
	ldr r4, _080DBD28  @ =0x0000120E
	add r0, r3, r4
	add r0, r2, r0
	strb r1, [r0]
	ldr r5, _080DBD2C  @ =0x0000124A
	add r0, r3, r5
	add r0, r2, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r1, _080DBD30  @ =0x000012FE
	add r0, r3, r1
	add r2, r2, r0
	mov r0, #32
	strb r0, [r2]
	pop {r4,r5}
	pop {r0}
	bx r0
_080DBD00:
	.4byte gRam
_080DBD04:
	.4byte 0x000011EF
_080DBD08:
	.4byte 0x000011D2
_080DBD0C:
	.4byte 0x00001642
_080DBD10:
	.4byte 0x000015F8
_080DBD14:
	.4byte 0x0000131C
_080DBD18:
	.4byte 0x00000F62
_080DBD1C:
	.4byte 0x0000122C
_080DBD20:
	.4byte 0x00001268
_080DBD24:
	.4byte 0x00000ED2
_080DBD28:
	.4byte 0x0000120E
_080DBD2C:
	.4byte 0x0000124A
_080DBD30:
	.4byte 0x000012FE
	THUMB_FUNC_END sub_080DBC34

	THUMB_FUNC_START sub_080DBD34
sub_080DBD34: @ 0x080DBD34
	push {r4,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #191
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080DBDC0
	mov r0, #44
	mov r1, #0
	bl sub_0812A324
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	bl GetRandomInt
	ldr r3, _080DBDC8  @ =gRam
	ldr r1, _080DBDCC  @ =0x00000F62
	add r2, r3, r1
	add r2, r4, r2
	mov r1, #7
	and r1, r1, r0
	strb r1, [r2]
	ldrb r2, [r2]
	mov r0, #150
	lsl r0, r0, #4
	add r1, r3, r0
	ldr r0, _080DBDD0  @ =gUnknown_08175F0C
	add r0, r2, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080DBDD4  @ =gUnknown_08175F14
	add r2, r2, r0
	ldrb r0, [r2]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r2, _080DBDD8  @ =0x00000EE2
	add r0, r3, r2
	add r0, r4, r0
	strb r1, [r0]
	add r2, r2, #32
	add r0, r3, r2
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r0, _080DBDDC  @ =0x00000ED2
	add r1, r3, r0
	add r1, r4, r1
	ldr r2, _080DBDE0  @ =0x00000964
	add r0, r3, r2
	ldrb r0, [r0]
	add r0, r0, #12
	strb r0, [r1]
	ldr r1, _080DBDE4  @ =0x00000FC2
	add r0, r3, r1
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	ldr r2, _080DBDE8  @ =0x00001646
	add r0, r3, r2
	mov r1, #48
	strb r1, [r0]
	ldr r0, _080DBDEC  @ =0x00001645
	add r3, r3, r0
	strb r1, [r3]
_080DBDC0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DBDC8:
	.4byte gRam
_080DBDCC:
	.4byte 0x00000F62
_080DBDD0:
	.4byte gUnknown_08175F0C
_080DBDD4:
	.4byte gUnknown_08175F14
_080DBDD8:
	.4byte 0x00000EE2
_080DBDDC:
	.4byte 0x00000ED2
_080DBDE0:
	.4byte 0x00000964
_080DBDE4:
	.4byte 0x00000FC2
_080DBDE8:
	.4byte 0x00001646
_080DBDEC:
	.4byte 0x00001645
	THUMB_FUNC_END sub_080DBD34

	THUMB_FUNC_START sub_080DBDF0
sub_080DBDF0: @ 0x080DBDF0
	bx lr
	THUMB_FUNC_END sub_080DBDF0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080DBDF4
sub_080DBDF4: @ 0x080DBDF4
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r2, _080DBE78  @ =gRam
	ldr r1, _080DBE7C  @ =0x00000996
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #3
	and r0, r0, r1
	add r5, r2, #0
	cmp r0, #0
	bne _080DBE30
	ldr r2, _080DBE80  @ =0x00000F92
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #3
	bne _080DBE28
	mov r1, #2
_080DBE28:
	ldr r2, _080DBE84  @ =0x00001082
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
_080DBE30:
	ldr r1, _080DBE88  @ =0x00001122
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #15
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C6340
	add r0, r4, #0
	bl sub_080E67E8
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DBE6E
	add r0, r4, #0
	bl sub_080C5080
	mov r1, #186
	lsl r1, r1, #1
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9164
	ldr r2, _080DBE80  @ =0x00000F92
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
_080DBE6E:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DBE78:
	.4byte gRam
_080DBE7C:
	.4byte 0x00000996
_080DBE80:
	.4byte 0x00000F92
_080DBE84:
	.4byte 0x00001082
_080DBE88:
	.4byte 0x00001122
	THUMB_FUNC_END sub_080DBDF4

	THUMB_FUNC_START sub_080DBE8C
sub_080DBE8C: @ 0x080DBE8C
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080DC058
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DBF68
	add r0, r4, #0
	bl sub_080C5080
	ldr r0, _080DBEC0  @ =gRam
	ldr r1, _080DBEC4  @ =0x00000996
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #47
	bls _080DBEC8
	lsr r1, r1, #31
	b _080DBECA
_080DBEC0:
	.4byte gRam
_080DBEC4:
	.4byte 0x00000996
_080DBEC8:
	mov r1, #2
_080DBECA:
	ldr r2, _080DBEEC  @ =gRam
	ldr r3, _080DBEF0  @ =0x00000F92
	add r0, r2, r3
	add r6, r4, r0
	strb r1, [r6]
	ldr r1, _080DBEF4  @ =0x00000F52
	add r0, r2, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080DBEF8
	add r0, r4, #0
	mov r1, #166
	mov r2, sp
	bl sub_080C9164
	b _080DBF58
_080DBEEC:
	.4byte gRam
_080DBEF0:
	.4byte 0x00000F92
_080DBEF4:
	.4byte 0x00000F52
_080DBEF8:
	ldr r0, _080DBF34  @ =gFlute
	ldrb r0, [r0]
	cmp r0, #1
	bls _080DBF5E
	ldr r3, _080DBF38  @ =0x00000A4E
	add r0, r2, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #15
	bne _080DBF28
	ldr r1, _080DBF3C  @ =0x00000545
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _080DBF28
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DBF40
_080DBF28:
	add r0, r4, #0
	mov r1, #167
	mov r2, sp
	bl sub_080C9164
	b _080DBF68
_080DBF34:
	.4byte gFlute
_080DBF38:
	.4byte 0x00000A4E
_080DBF3C:
	.4byte 0x00000545
_080DBF40:
	mov r0, #46
	mov r1, #0
	bl sub_0812A324
	add r0, r4, #0
	mov r1, #165
	mov r2, sp
	bl sub_080C9564
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_080DBF58:
	mov r0, #2
	strb r0, [r6]
	b _080DBF68
_080DBF5E:
	add r0, r4, #0
	mov r1, #164
	mov r2, sp
	bl sub_080C9164
_080DBF68:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080DBE8C

	THUMB_FUNC_START sub_080DBF70
sub_080DBF70: @ 0x080DBF70
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r2, _080DBFB0  @ =gRam
	ldr r0, _080DBFB4  @ =0x00001172
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r3, #0
	add r5, r2, #0
	ldr r1, _080DBFB8  @ =0x000009DA
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _080DBFBC  @ =gUnknown_08175F1C
_080DBF90:
	add r0, r3, r2
	ldrb r0, [r0]
	cmp r1, r0
	beq _080DBFA2
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #0
	bne _080DBF90
_080DBFA2:
	ldr r1, _080DBFC0  @ =0x00001052
	add r0, r5, r1
	add r0, r4, r0
	strb r3, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
_080DBFB0:
	.4byte gRam
_080DBFB4:
	.4byte 0x00001172
_080DBFB8:
	.4byte 0x000009DA
_080DBFBC:
	.4byte gUnknown_08175F1C
_080DBFC0:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080DBF70

	THUMB_FUNC_START sub_080DBFC4
sub_080DBFC4: @ 0x080DBFC4
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080DBFE4  @ =gUnknown_08175F20
	ldr r1, _080DBFE8  @ =gRam
	ldr r3, _080DBFEC  @ =0x00001052
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080DBFE4:
	.4byte gUnknown_08175F20
_080DBFE8:
	.4byte gRam
_080DBFEC:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080DBFC4

	THUMB_FUNC_START sub_080DBFF0
sub_080DBFF0: @ 0x080DBFF0
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080DC09C
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DC040
	add r0, r4, #0
	bl sub_080C5080
	add r0, r4, #0
	bl sub_080C90F4
	ldr r1, _080DC048  @ =0x00000175
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9164
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DC040
	ldr r2, _080DC04C  @ =gRam
	ldr r1, _080DC050  @ =0x00000FB2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _080DC054  @ =0x00001082
	add r2, r2, r0
	add r2, r4, r2
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r2]
_080DC040:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_080DC048:
	.4byte 0x00000175
_080DC04C:
	.4byte gRam
_080DC050:
	.4byte 0x00000FB2
_080DC054:
	.4byte 0x00001082
	THUMB_FUNC_END sub_080DBFF0

	THUMB_FUNC_START sub_080DC058
sub_080DC058: @ 0x080DC058
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r0, _080DC08C  @ =gRam
	ldr r1, _080DC090  @ =0x0000096C
	add r2, r0, r1
	mov r1, #2
	strh r1, [r2]
	ldr r1, _080DC094  @ =0x00000F92
	add r0, r0, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldr r0, _080DC098  @ =gUnknown_08175F2C
	add r1, r1, r0
	add r0, r4, #0
	bl sub_080C94D0
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DC08C:
	.4byte gRam
_080DC090:
	.4byte 0x0000096C
_080DC094:
	.4byte 0x00000F92
_080DC098:
	.4byte gUnknown_08175F2C
	THUMB_FUNC_END sub_080DC058

	THUMB_FUNC_START sub_080DC09C
sub_080DC09C: @ 0x080DC09C
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r2, _080DC0DC  @ =gRam
	ldr r0, _080DC0E0  @ =0x0000096C
	add r1, r2, r0
	mov r0, #2
	strh r0, [r1]
	ldr r1, _080DC0E4  @ =0x00000FB2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r0, _080DC0E8  @ =0x00000F92
	add r2, r2, r0
	add r2, r4, r2
	lsl r1, r1, #1
	ldrb r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #4
	ldr r0, _080DC0EC  @ =gUnknown_08175F5C
	add r1, r1, r0
	add r0, r4, #0
	bl sub_080C94D0
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DC0DC:
	.4byte gRam
_080DC0E0:
	.4byte 0x0000096C
_080DC0E4:
	.4byte 0x00000FB2
_080DC0E8:
	.4byte 0x00000F92
_080DC0EC:
	.4byte gUnknown_08175F5C
	THUMB_FUNC_END sub_080DC09C

	THUMB_FUNC_START sub_080DC0F0
sub_080DC0F0: @ 0x080DC0F0
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080F1160
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080DC0F0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080DC100
sub_080DC100: @ 0x080DC100
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080DC144
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DC134
	add r0, r4, #0
	bl sub_080C5080
	ldr r1, _080DC13C  @ =gUnknown_08175FDC
	ldr r0, _080DC140  @ =gFlippers
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9164
_080DC134:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_080DC13C:
	.4byte gUnknown_08175FDC
_080DC140:
	.4byte gFlippers
	THUMB_FUNC_END sub_080DC100

	THUMB_FUNC_START sub_080DC144
sub_080DC144: @ 0x080DC144
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r0, _080DC16C  @ =gRam
	ldr r1, _080DC170  @ =0x0000096C
	add r0, r0, r1
	mov r1, #2
	strh r1, [r0]
	ldr r1, _080DC174  @ =gUnknown_08175FE0
	add r0, r4, #0
	bl sub_080C94D0
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DC16C:
	.4byte gRam
_080DC170:
	.4byte 0x0000096C
_080DC174:
	.4byte gUnknown_08175FE0
	THUMB_FUNC_END sub_080DC144

	THUMB_FUNC_START sub_080DC178
sub_080DC178: @ 0x080DC178
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	bl sub_0809E3CC
	cmp r0, #0
	bne _080DC1E8
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DC1E8
	ldr r0, _080DC1BC  @ =gBottle1
	ldr r1, _080DC1C0  @ =gBottle2
	ldrb r0, [r0]
	ldrb r1, [r1]
	orr r0, r0, r1
	ldr r1, _080DC1C4  @ =gBottle3
	ldrb r1, [r1]
	orr r0, r0, r1
	ldr r1, _080DC1C8  @ =gBottle4
	ldrb r1, [r1]
	orr r0, r0, r1
	cmp r0, #1
	bhi _080DC1D0
	ldr r1, _080DC1CC  @ =0x00000107
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9164
	b _080DC1E8
_080DC1BC:
	.4byte gBottle1
_080DC1C0:
	.4byte gBottle2
_080DC1C4:
	.4byte gBottle3
_080DC1C8:
	.4byte gBottle4
_080DC1CC:
	.4byte 0x00000107
_080DC1D0:
	ldr r2, _080DC1F0  @ =gRam
	ldr r0, _080DC1F4  @ =0x00000F52
	add r1, r2, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080DC1F8  @ =0x00001770
	add r2, r2, r0
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
_080DC1E8:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080DC1F0:
	.4byte gRam
_080DC1F4:
	.4byte 0x00000F52
_080DC1F8:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080DC178

	THUMB_FUNC_START sub_080DC1FC
sub_080DC1FC: @ 0x080DC1FC
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	ldr r5, _080DC244  @ =gRam
	ldr r1, _080DC248  @ =0x00000FC2
	add r0, r5, r1
	add r3, r4, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _080DC270
	ldr r1, _080DC24C  @ =gUnknown_08176000
	ldr r2, _080DC250  @ =0x00000F62
	add r0, r5, r2
	add r2, r4, r0
	ldrb r0, [r2]
	add r0, r0, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080DC258
	mov r1, #132
	lsl r1, r1, #1
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r0, _080DC254  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080DC270
_080DC244:
	.4byte gRam
_080DC248:
	.4byte 0x00000FC2
_080DC24C:
	.4byte gUnknown_08176000
_080DC250:
	.4byte 0x00000F62
_080DC254:
	.4byte 0x00000F52
_080DC258:
	ldr r4, _080DC278  @ =0x00000F92
	add r0, r5, r4
	add r0, r6, r0
	strb r1, [r0]
	ldr r1, _080DC27C  @ =gUnknown_08176008
	ldrb r0, [r2]
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
_080DC270:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080DC278:
	.4byte 0x00000F92
_080DC27C:
	.4byte gUnknown_08176008
	THUMB_FUNC_END sub_080DC1FC

	THUMB_FUNC_START sub_080DC280
sub_080DC280: @ 0x080DC280
	push {r4,lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r3, r1, #0
	ldr r0, _080DC2B0  @ =gBugCatchingNet
	ldrb r0, [r0]
	ldr r2, _080DC2B4  @ =gRam
	cmp r0, #0
	beq _080DC29C
	ldr r4, _080DC2B8  @ =0x00000F52
	add r0, r2, r4
	add r0, r1, r0
	mov r1, #3
	strb r1, [r0]
_080DC29C:
	ldr r0, _080DC2BC  @ =0x00001172
	add r1, r2, r0
	add r1, r3, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DC2B0:
	.4byte gBugCatchingNet
_080DC2B4:
	.4byte gRam
_080DC2B8:
	.4byte 0x00000F52
_080DC2BC:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080DC280

	THUMB_FUNC_START sub_080DC2C0
sub_080DC2C0: @ 0x080DC2C0
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080DC374
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DC2F0
	ldr r1, _080DC2F8  @ =gUnknown_08175FF0
	ldr r0, _080DC2FC  @ =gRam
	ldr r2, _080DC300  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080DC2F0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DC2F8:
	.4byte gUnknown_08175FF0
_080DC2FC:
	.4byte gRam
_080DC300:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DC2C0

	THUMB_FUNC_START sub_080DC304
sub_080DC304: @ 0x080DC304
	push {r4-r6,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r5, _080DC334  @ =gRam
	ldr r1, _080DC338  @ =0x00001776
	add r0, r5, r1
	mov r6, #0
	strb r6, [r0]
	mov r0, #33
	bl sub_080A1588
	ldr r1, _080DC33C  @ =0x00000F52
	add r0, r5, r1
	add r4, r4, r0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r0, _080DC340  @ =0x00001770
	add r5, r5, r0
	strb r6, [r5]
	pop {r4-r6}
	pop {r0}
	bx r0
_080DC334:
	.4byte gRam
_080DC338:
	.4byte 0x00001776
_080DC33C:
	.4byte 0x00000F52
_080DC340:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080DC304

	THUMB_FUNC_START sub_080DC344
sub_080DC344: @ 0x080DC344
	push {lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080DC368  @ =gRam
	ldr r2, _080DC36C  @ =0x00000F92
	add r1, r1, r2
	add r1, r0, r1
	mov r2, #1
	strb r2, [r1]
	ldr r1, _080DC370  @ =0x00000109
	mov r2, sp
	bl sub_080C9164
	add sp, sp, #4
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DC368:
	.4byte gRam
_080DC36C:
	.4byte 0x00000F92
_080DC370:
	.4byte 0x00000109
	THUMB_FUNC_END sub_080DC344

	THUMB_FUNC_START sub_080DC374
sub_080DC374: @ 0x080DC374
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080DC3A0  @ =gRam
	ldr r2, _080DC3A4  @ =0x0000096C
	add r3, r1, r2
	mov r2, #6
	strh r2, [r3]
	ldr r2, _080DC3A8  @ =0x00000F92
	add r1, r1, r2
	add r1, r0, r1
	ldrb r2, [r1]
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r1, r1, #4
	ldr r2, _080DC3AC  @ =gUnknown_08176010
	add r1, r1, r2
	bl sub_080C94D0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DC3A0:
	.4byte gRam
_080DC3A4:
	.4byte 0x0000096C
_080DC3A8:
	.4byte 0x00000F92
_080DC3AC:
	.4byte gUnknown_08176010
	THUMB_FUNC_END sub_080DC374

	THUMB_FUNC_START sub_080DC3B0
sub_080DC3B0: @ 0x080DC3B0
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	add r0, r4, #0
	bl sub_080DC43C
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _080DC418
	add r0, r4, #0
	bl sub_080C5080
	bl GetRandomInt
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DC3EA
	ldr r0, _080DC420  @ =gRam
	ldr r1, _080DC424  @ =0x00000FC2
	add r0, r0, r1
	add r0, r4, r0
	mov r1, #32
	strb r1, [r0]
_080DC3EA:
	ldr r0, _080DC420  @ =gRam
	ldr r2, _080DC428  @ =0x00000F92
	add r1, r0, r2
	add r5, r4, r1
	strb r6, [r5]
	ldr r1, _080DC424  @ =0x00000FC2
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DC404
	mov r0, #1
	strb r0, [r5]
_080DC404:
	mov r1, #188
	lsl r1, r1, #1
	add r0, r7, #0
	mov r2, sp
	bl sub_080C9164
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DC418
	strb r6, [r5]
_080DC418:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_080DC420:
	.4byte gRam
_080DC424:
	.4byte 0x00000FC2
_080DC428:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080DC3B0

	THUMB_FUNC_START sub_080DC42C
sub_080DC42C: @ 0x080DC42C
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080C3758
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080DC42C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080DC43C
sub_080DC43C: @ 0x080DC43C
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080DC468  @ =gRam
	ldr r2, _080DC46C  @ =0x0000096C
	add r3, r1, r2
	mov r2, #3
	strh r2, [r3]
	ldr r2, _080DC470  @ =0x00000F92
	add r1, r1, r2
	add r1, r0, r1
	ldrb r2, [r1]
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r2, _080DC474  @ =gUnknown_081760A0
	add r1, r1, r2
	bl sub_080CA918
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DC468:
	.4byte gRam
_080DC46C:
	.4byte 0x0000096C
_080DC470:
	.4byte 0x00000F92
_080DC474:
	.4byte gUnknown_081760A0
	THUMB_FUNC_END sub_080DC43C

	THUMB_FUNC_START sub_080DC478
sub_080DC478: @ 0x080DC478
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080DC5A8  @ =gRam
	ldr r1, _080DC5AC  @ =0x000009B2
	add r0, r6, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080DC498
	b _080DC624
_080DC498:
	ldr r2, _080DC5B0  @ =0x00000F52
	add r0, r6, r2
	add r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DC4A6
	b _080DC5E0
_080DC4A6:
	add r0, r5, #0
	bl sub_080D5954
	ldr r7, _080DC5B4  @ =0x000010D2
	add r0, r6, r7
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DC51A
	ldr r1, _080DC5B8  @ =gUnknown_081760D0
	ldr r2, _080DC5BC  @ =0x00000F92
	add r0, r6, r2
	add r0, r5, r0
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r1, [r0]
	mov r7, #150
	lsl r7, r7, #4
	add r0, r6, r7
	strb r1, [r0]
	mov r0, #0
	ldr r1, _080DC5C0  @ =gUnknown_03003E74
	mov r9, r1
	mov r2, #170
	lsl r2, r2, #3
	add r2, r2, r6
	mov r8, r2
	add r6, r6, r7
	ldr r7, _080DC5C4  @ =0x000003FF
	ldr r1, _080DC5C8  @ =0xFFFFFC00
	mov r12, r1
_080DC4E4:
	lsl r4, r0, #24
	asr r2, r4, #26
	mov r0, r9
	ldrh r0, [r0]
	add r2, r2, r0
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r1, [r6]
	and r1, r1, r7
	ldrh r3, [r2, #4]
	mov r0, r12
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r2, #5]
	mov r1, #128
	lsl r1, r1, #19
	add r4, r4, r1
	lsr r0, r4, #24
	asr r4, r4, #24
	cmp r4, #19
	ble _080DC4E4
_080DC51A:
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DC528
	b _080DC778
_080DC528:
	ldr r4, _080DC5A8  @ =gRam
	ldr r2, _080DC5CC  @ =0x00000FC2
	add r0, r4, r2
	add r0, r5, r0
	ldrb r6, [r0]
	cmp r6, #0
	beq _080DC538
	b _080DC778
_080DC538:
	ldr r7, _080DC5D0  @ =0x00000EA5
	add r0, r4, r7
	add r0, r5, r0
	mov r1, #48
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080C4F98
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DC560
	ldr r1, _080DC5D4  @ =0x00000FA2
	add r0, r4, r1
	add r0, r5, r0
	strb r6, [r0]
	ldr r2, _080DC5D8  @ =0x0000188C
	add r1, r4, r2
	mov r0, #128
	lsl r0, r0, #1
	strh r0, [r1]
_080DC560:
	mov r7, #161
	lsl r7, r7, #4
	add r0, r4, r7
	ldr r2, _080DC5DC  @ =0x000010F2
	add r1, r4, r2
	add r1, r5, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080DC57C
	add r0, r5, #0
	mov r1, #16
	bl sub_080C35FC
_080DC57C:
	add r0, r5, #0
	bl Sprite3_Move
	add r0, r5, #0
	bl sub_080C7A48
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DC590
	b _080DC778
_080DC590:
	ldr r7, _080DC5D4  @ =0x00000FA2
	add r0, r4, r7
	add r0, r5, r0
	strb r6, [r0]
	add r0, r5, #0
	bl sub_080CF6C0
	add r0, r5, #0
	mov r1, #21
	bl sub_080CF0AC
	b _080DC778
_080DC5A8:
	.4byte gRam
_080DC5AC:
	.4byte 0x000009B2
_080DC5B0:
	.4byte 0x00000F52
_080DC5B4:
	.4byte 0x000010D2
_080DC5B8:
	.4byte gUnknown_081760D0
_080DC5BC:
	.4byte 0x00000F92
_080DC5C0:
	.4byte gUnknown_03003E74
_080DC5C4:
	.4byte 0x000003FF
_080DC5C8:
	.4byte 0xFFFFFC00
_080DC5CC:
	.4byte 0x00000FC2
_080DC5D0:
	.4byte 0x00000EA5
_080DC5D4:
	.4byte 0x00000FA2
_080DC5D8:
	.4byte 0x0000188C
_080DC5DC:
	.4byte 0x000010F2
_080DC5E0:
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r5, #0
	bl sub_080C632C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DC5F4
	b _080DC778
_080DC5F4:
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DC602
	b _080DC778
_080DC602:
	add r0, r5, #0
	bl sub_080C7A48
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DC610
	b _080DC778
_080DC610:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r1, _080DC620  @ =0x00000FC2
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #128
	b _080DC776
_080DC620:
	.4byte 0x00000FC2
_080DC624:
	ldr r2, _080DC6C8  @ =0x00001032
	add r2, r2, r6
	mov r9, r2
	add r0, r5, r2
	mov r1, #64
	strb r1, [r0]
	ldr r7, _080DC6CC  @ =0x00001172
	add r0, r6, r7
	add r0, r5, r0
	strb r1, [r0]
	ldr r0, _080DC6D0  @ =0x00000F52
	add r0, r0, r6
	mov r8, r0
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DC6F0
	ldr r1, _080DC6D4  @ =0x00000D94
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #48
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080DC7AC
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DC664
	b _080DC778
_080DC664:
	add r0, r5, #0
	bl Sprite3_Move
	ldr r2, _080DC6D8  @ =0x00001052
	add r0, r6, r2
	add r4, r5, r0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r1, #7
	and r0, r0, r1
	cmp r0, #0
	bne _080DC778
	ldr r7, _080DC6DC  @ =0x00000FB2
	add r0, r6, r7
	add r3, r5, r0
	ldrb r0, [r3]
	mov r2, #1
	and r2, r2, r0
	ldr r0, _080DC6E0  @ =0x00000F22
	add r1, r6, r0
	add r1, r5, r1
	ldr r0, _080DC6E4  @ =gUnknown_081760D6
	add r0, r2, r0
	ldrb r0, [r0]
	ldrb r7, [r1]
	add r0, r0, r7
	strb r0, [r1]
	ldr r1, _080DC6E8  @ =gUnknown_081760DA
	add r2, r2, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r2, [r2]
	cmp r0, r2
	bne _080DC6B0
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
_080DC6B0:
	ldrb r1, [r4]
	mov r0, #31
	and r0, r0, r1
	cmp r0, #0
	bne _080DC778
	ldr r0, _080DC6EC  @ =0x00000F92
	add r1, r6, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080DC778
_080DC6C8:
	.4byte 0x00001032
_080DC6CC:
	.4byte 0x00001172
_080DC6D0:
	.4byte 0x00000F52
_080DC6D4:
	.4byte 0x00000D94
_080DC6D8:
	.4byte 0x00001052
_080DC6DC:
	.4byte 0x00000FB2
_080DC6E0:
	.4byte 0x00000F22
_080DC6E4:
	.4byte gUnknown_081760D6
_080DC6E8:
	.4byte gUnknown_081760DA
_080DC6EC:
	.4byte 0x00000F92
_080DC6F0:
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DC778
	ldr r1, _080DC788  @ =0x00000FC2
	add r0, r6, r1
	add r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080DC778
	mov r7, #67
	strb r7, [r1]
	mov r0, #209
	add r1, r5, #0
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080DC778
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r2, _080DC78C  @ =0x00000EE2
	add r1, r6, r2
	add r1, r4, r1
	mov r2, #150
	lsl r2, r2, #4
	add r0, r6, r2
	ldrb r0, [r0]
	add r0, r0, #8
	strb r0, [r1]
	ldr r0, _080DC790  @ =0x00000ED2
	add r1, r6, r0
	add r1, r4, r1
	add r2, r2, #4
	add r0, r6, r2
	ldrb r0, [r0]
	add r0, r0, #4
	strb r0, [r1]
	ldr r1, _080DC794  @ =0x00001122
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #4
	strb r1, [r0]
	mov r2, r8
	add r0, r4, r2
	strb r1, [r0]
	ldr r1, _080DC798  @ =0x00001012
	add r0, r6, r1
	add r0, r4, r0
	strb r7, [r0]
	mov r2, r9
	add r0, r4, r2
	strb r7, [r0]
	ldr r7, _080DC79C  @ =0x00000F22
	add r0, r6, r7
	add r0, r4, r0
	ldr r1, _080DC7A0  @ =gUnknown_081760DA
	ldrb r1, [r1, #1]
	strb r1, [r0]
	ldr r1, _080DC7A4  @ =0x00000F12
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #250
_080DC776:
	strb r1, [r0]
_080DC778:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DC788:
	.4byte 0x00000FC2
_080DC78C:
	.4byte 0x00000EE2
_080DC790:
	.4byte 0x00000ED2
_080DC794:
	.4byte 0x00001122
_080DC798:
	.4byte 0x00001012
_080DC79C:
	.4byte 0x00000F22
_080DC7A0:
	.4byte gUnknown_081760DA
_080DC7A4:
	.4byte 0x00000F12
	THUMB_FUNC_END sub_080DC478

	THUMB_FUNC_START sub_080DC7A8
sub_080DC7A8: @ 0x080DC7A8
	bx lr
	THUMB_FUNC_END sub_080DC7A8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080DC7AC
sub_080DC7AC: @ 0x080DC7AC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080DC7D0  @ =gRam
	ldr r2, _080DC7D4  @ =0x00000F92
	add r1, r1, r2
	add r1, r0, r1
	ldrb r2, [r1]
	mov r1, #1
	and r1, r1, r2
	lsl r1, r1, #5
	ldr r2, _080DC7D8  @ =gUnknown_081760DC
	add r1, r1, r2
	mov r2, #4
	bl sub_080C9480
	pop {r0}
	bx r0
_080DC7D0:
	.4byte gRam
_080DC7D4:
	.4byte 0x00000F92
_080DC7D8:
	.4byte gUnknown_081760DC
	THUMB_FUNC_END sub_080DC7AC

	THUMB_FUNC_START sub_080DC7DC
sub_080DC7DC: @ 0x080DC7DC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r8, r4
	ldr r6, _080DC834  @ =gRam
	ldr r1, _080DC838  @ =0x00001082
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DC844
	ldr r2, _080DC83C  @ =0x00000F52
	add r0, r6, r2
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080DC808
	add r0, r4, #0
	bl sub_080C6240
_080DC808:
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DC816
	b _080DC928
_080DC816:
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r0, _080DC840  @ =gUnknown_0817611C
	ldrb r1, [r5]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
	b _080DC928
_080DC834:
	.4byte gRam
_080DC838:
	.4byte 0x00001082
_080DC83C:
	.4byte 0x00000F52
_080DC840:
	.4byte gUnknown_0817611C
_080DC844:
	ldr r1, _080DC8F4  @ =0x00001052
	add r0, r6, r1
	add r7, r4, r0
	ldrb r1, [r7]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _080DC85A
	mov r0, #4
	bl sub_080CF388
_080DC85A:
	add r0, r4, #0
	bl sub_080C58F0
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DC928
	ldr r2, _080DC8F8  @ =0x00000F52
	add r0, r6, r2
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080DC910
	add r0, r0, #1
	strb r0, [r5]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _080DC88C
	add r2, r2, #80
	add r0, r6, r2
	add r0, r4, r0
	strb r1, [r0]
_080DC88C:
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	mov r5, #7
	mov r1, #7
	and r0, r0, r1
	cmp r0, #0
	bne _080DC8A4
	mov r0, #94
	mov r1, #0
	bl sub_0812A324
_080DC8A4:
	ldrb r0, [r7]
	lsr r0, r0, #2
	and r0, r0, r5
	ldr r1, _080DC8FC  @ =0x000016C4
	add r2, r6, r1
	ldr r1, _080DC900  @ =gUnknown_08176130
	add r0, r0, r1
	ldrb r0, [r0]
	ldrh r1, [r2]
	add r1, r1, r0
	ldr r2, _080DC904  @ =0x00000EE2
	add r0, r6, r2
	add r0, r4, r0
	strb r1, [r0]
	add r2, r2, #32
	add r0, r6, r2
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldrb r0, [r7]
	lsr r0, r0, #4
	and r0, r0, r5
	mov r1, #182
	lsl r1, r1, #5
	add r2, r6, r1
	ldr r1, _080DC908  @ =gUnknown_08176138
	add r0, r0, r1
	ldrb r0, [r0]
	ldrh r1, [r2]
	add r1, r1, r0
	ldr r2, _080DC90C  @ =0x00000ED2
	add r0, r6, r2
	add r0, r4, r0
	strb r1, [r0]
	add r2, r2, #32
	add r0, r6, r2
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	b _080DC928
_080DC8F4:
	.4byte 0x00001052
_080DC8F8:
	.4byte 0x00000F52
_080DC8FC:
	.4byte 0x000016C4
_080DC900:
	.4byte gUnknown_08176130
_080DC904:
	.4byte 0x00000EE2
_080DC908:
	.4byte gUnknown_08176138
_080DC90C:
	.4byte 0x00000ED2
_080DC910:
	mov r0, r8
	bl Sprite3_Move
	ldr r1, _080DC934  @ =0x00000FC2
	add r0, r6, r1
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DC928
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_080DC928:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DC934:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080DC7DC

	THUMB_FUNC_START sub_080DC938
sub_080DC938: @ 0x080DC938
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _080DC9B0  @ =gMagicUsage
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DC9D6
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DC9D6
	mov r1, #4
	ldr r5, _080DC9B4  @ =gRam
	ldr r2, _080DC9B8  @ =0x00000F52
	add r0, r5, r2
	add r6, r4, r0
	mov r0, #0
	mov r9, r0
	ldr r2, _080DC9BC  @ =0x00001122
	add r0, r5, r2
	add r7, r4, r0
	ldr r2, _080DC9C0  @ =0x00000F62
	add r0, r5, r2
	add r0, r0, r4
	mov r8, r0
_080DC974:
	lsl r0, r1, #24
	asr r1, r0, #24
	ldr r2, _080DC9C4  @ =0x00000E15
	add r0, r5, r2
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #26
	bne _080DC9CC
	add r0, r4, #0
	bl sub_080CBBEC
	add r0, r4, #0
	mov r1, #63
	bl sub_080CF018
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	mov r0, #20
	mov r1, r8
	strb r0, [r1]
	ldr r2, _080DC9C8  @ =0x00001770
	add r1, r5, r2
	mov r0, #1
	strb r0, [r1]
	ldrb r0, [r7]
	mov r1, #32
	orr r0, r0, r1
	strb r0, [r7]
	b _080DC9D6
_080DC9B0:
	.4byte gMagicUsage
_080DC9B4:
	.4byte gRam
_080DC9B8:
	.4byte 0x00000F52
_080DC9BC:
	.4byte 0x00001122
_080DC9C0:
	.4byte 0x00000F62
_080DC9C4:
	.4byte 0x00000E15
_080DC9C8:
	.4byte 0x00001770
_080DC9CC:
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r0, #0
	bge _080DC974
_080DC9D6:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080DC938

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080DC9E4
sub_080DC9E4: @ 0x080DC9E4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	ldr r6, _080DCA50  @ =gRam
	ldr r1, _080DCA54  @ =0x00000FC2
	add r0, r6, r1
	add r0, r0, r4
	mov r8, r0
	ldrb r5, [r0]
	cmp r5, #0
	bne _080DCAA0
	ldr r2, _080DCA58  @ =0x00000F62
	add r0, r6, r2
	add r2, r4, r0
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	mov r3, r8
	strb r0, [r3]
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #1
	bne _080DCA70
	ldr r1, _080DCA5C  @ =0x00000113
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r0, _080DCA60  @ =0x00000F52
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080DCA64  @ =0x00000F92
	add r0, r6, r1
	add r0, r4, r0
	strb r5, [r0]
	ldr r2, _080DCA68  @ =0x00001152
	add r0, r6, r2
	add r0, r4, r0
	strb r5, [r0]
	ldr r3, _080DCA6C  @ =0x00000F22
	add r0, r6, r3
	add r0, r4, r0
	strb r5, [r0]
	mov r0, #255
	mov r1, r8
	b _080DCA9E
	.byte 0x00
	.byte 0x00
_080DCA50:
	.4byte gRam
_080DCA54:
	.4byte 0x00000FC2
_080DCA58:
	.4byte 0x00000F62
_080DCA5C:
	.4byte 0x00000113
_080DCA60:
	.4byte 0x00000F52
_080DCA64:
	.4byte 0x00000F92
_080DCA68:
	.4byte 0x00001152
_080DCA6C:
	.4byte 0x00000F22
_080DCA70:
	ldr r3, _080DCAAC  @ =0x00001152
	add r0, r6, r3
	add r0, r7, r0
	lsr r1, r1, #26
	strb r1, [r0]
	ldr r0, _080DCAB0  @ =0x00000F22
	add r1, r6, r0
	add r1, r7, r1
	ldr r3, _080DCAB4  @ =gUnknown_08176140
	ldrb r2, [r2]
	mov r4, #1
	mov r0, #1
	and r0, r0, r2
	add r0, r0, r3
	ldrb r0, [r0]
	ldrb r2, [r1]
	add r0, r0, r2
	strb r0, [r1]
	ldr r3, _080DCAB8  @ =0x00000F92
	add r1, r6, r3
	add r1, r7, r1
	ldrb r0, [r1]
	eor r0, r0, r4
_080DCA9E:
	strb r0, [r1]
_080DCAA0:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080DCAAC:
	.4byte 0x00001152
_080DCAB0:
	.4byte 0x00000F22
_080DCAB4:
	.4byte gUnknown_08176140
_080DCAB8:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080DC9E4

	THUMB_FUNC_START sub_080DCABC
sub_080DCABC: @ 0x080DCABC
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r1, _080DCB10  @ =gRam
	ldr r2, _080DCB14  @ =0x00000FC2
	add r0, r1, r2
	add r2, r5, r0
	ldrb r0, [r2]
	add r6, r1, #0
	cmp r0, #0
	bne _080DCAE8
	ldr r0, _080DCB18  @ =0x00000F52
	add r1, r6, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080DCB1C  @ =0x00000FD2
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #64
	strb r1, [r0]
_080DCAE8:
	ldrb r0, [r2]
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #240
	bls _080DCB28
	ldr r2, _080DCB20  @ =0x00001122
	add r3, r6, r2
	add r3, r5, r3
	ldrb r0, [r3]
	mov r2, #241
	and r2, r2, r0
	ldr r4, _080DCB24  @ =gUnknown_08176142
	lsr r0, r1, #25
	mov r1, #7
	and r0, r0, r1
	add r0, r0, r4
	ldrb r0, [r0]
	orr r2, r2, r0
	strb r2, [r3]
	b _080DCB3A
_080DCB10:
	.4byte gRam
_080DCB14:
	.4byte 0x00000FC2
_080DCB18:
	.4byte 0x00000F52
_080DCB1C:
	.4byte 0x00000FD2
_080DCB20:
	.4byte 0x00001122
_080DCB24:
	.4byte gUnknown_08176142
_080DCB28:
	ldr r0, _080DCB54  @ =0x00001122
	add r2, r6, r0
	add r2, r5, r2
	ldrb r1, [r2]
	mov r0, #241
	and r0, r0, r1
	mov r1, #10
	orr r0, r0, r1
	strb r0, [r2]
_080DCB3A:
	ldr r1, _080DCB58  @ =0x00000FC2
	add r0, r6, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #240
	bne _080DCB4C
	add r0, r5, #0
	bl sub_080DCD64
_080DCB4C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DCB54:
	.4byte 0x00001122
_080DCB58:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080DCABC

	THUMB_FUNC_START sub_080DCB5C
sub_080DCB5C: @ 0x080DCB5C
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DCB80  @ =gRam
	ldr r1, _080DCB84  @ =0x00000FD2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r0, r1, #0
	cmp r0, #0
	beq _080DCB8C
	cmp r0, #16
	bne _080DCBB8
	ldr r2, _080DCB88  @ =0x00001643
	add r0, r5, r2
	strb r1, [r0]
	b _080DCBB8
_080DCB80:
	.4byte gRam
_080DCB84:
	.4byte 0x00000FD2
_080DCB88:
	.4byte 0x00001643
_080DCB8C:
	mov r1, #138
	lsl r1, r1, #1
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	bl sub_08132448
	ldr r1, _080DCBC0  @ =0x0000099B
	add r0, r5, r1
	mov r2, #1
	strb r2, [r0]
	ldr r0, _080DCBC4  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080DCBC8  @ =gMagicUsage
	strb r2, [r0]
	bl sub_080AA724
_080DCBB8:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080DCBC0:
	.4byte 0x0000099B
_080DCBC4:
	.4byte 0x00000F52
_080DCBC8:
	.4byte gMagicUsage
	THUMB_FUNC_END sub_080DCB5C

	THUMB_FUNC_START sub_080DCBCC
sub_080DCBCC: @ 0x080DCBCC
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r0, #58
	add r1, r7, #0
	bl sub_080CA538
	add r6, r0, #0
	cmp r6, #0
	blt _080DCCC6
	add r0, r7, #0
	mov r1, #42
	bl sub_080CF140
	lsl r0, r6, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r2, _080DCCCC  @ =gRam
	mov r0, #150
	lsl r0, r0, #4
	add r1, r2, r0
	ldrh r0, [r1]
	add r0, r0, #4
	mov r5, #0
	strh r0, [r1]
	ldr r3, _080DCCD0  @ =0x00000EE2
	add r0, r2, r3
	add r0, r6, r0
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DCCD4  @ =0x00000F02
	add r0, r2, r1
	add r0, r6, r0
	ldr r3, _080DCCD8  @ =0x00000961
	add r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _080DCCDC  @ =0x00000964
	add r3, r2, r0
	ldr r1, _080DCCE0  @ =0x00001142
	add r4, r2, r1
	add r0, r7, r4
	ldrb r1, [r0]
	sub r1, r1, #12
	ldrh r0, [r3]
	sub r0, r0, r1
	strh r0, [r3]
	ldr r1, _080DCCE4  @ =0x00000ED2
	add r0, r2, r1
	add r0, r6, r0
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r3, _080DCCE8  @ =0x00000EF2
	add r0, r2, r3
	add r0, r6, r0
	ldr r3, _080DCCEC  @ =0x00000965
	add r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	add r4, r6, r4
	strb r5, [r4]
	ldr r1, _080DCCF0  @ =0x00000F12
	add r0, r2, r1
	add r0, r6, r0
	mov r1, #24
	strb r1, [r0]
	ldr r3, _080DCCF4  @ =0x00001082
	add r0, r2, r3
	add r0, r6, r0
	strb r1, [r0]
	add r3, r3, #240
	add r0, r2, r3
	add r0, r6, r0
	strb r1, [r0]
	ldr r1, _080DCCF8  @ =0x00001012
	add r0, r2, r1
	add r0, r6, r0
	mov r1, #128
	strb r1, [r0]
	ldr r3, _080DCCFC  @ =0x00001032
	add r0, r2, r3
	add r0, r6, r0
	mov r1, #3
	strb r1, [r0]
	add r3, r3, #240
	add r0, r2, r3
	add r0, r6, r0
	strb r1, [r0]
	ldr r1, _080DCD00  @ =0x00000FC2
	add r0, r2, r1
	add r0, r6, r0
	mov r1, #32
	strb r1, [r0]
	ldr r3, _080DCD04  @ =0x00000F92
	add r0, r2, r3
	add r0, r6, r0
	mov r5, #2
	strb r5, [r0]
	ldr r0, _080DCD08  @ =0x00000F22
	add r1, r2, r0
	add r1, r6, r1
	ldr r3, _080DCD0C  @ =gUnknown_0817614A
	ldr r0, _080DCD10  @ =0x000010A2
	add r4, r2, r0
	add r4, r7, r4
	ldrb r0, [r4]
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r3, _080DCD14  @ =0x00001052
	add r1, r2, r3
	add r1, r6, r1
	ldr r3, _080DCD18  @ =gUnknown_0817614E
	ldrb r0, [r4]
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080DCD1C  @ =0x000010F2
	add r2, r2, r0
	add r2, r6, r2
	strb r5, [r2]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_080DCCC6:
	pop {r4-r7}
	pop {r0}
	bx r0
_080DCCCC:
	.4byte gRam
_080DCCD0:
	.4byte 0x00000EE2
_080DCCD4:
	.4byte 0x00000F02
_080DCCD8:
	.4byte 0x00000961
_080DCCDC:
	.4byte 0x00000964
_080DCCE0:
	.4byte 0x00001142
_080DCCE4:
	.4byte 0x00000ED2
_080DCCE8:
	.4byte 0x00000EF2
_080DCCEC:
	.4byte 0x00000965
_080DCCF0:
	.4byte 0x00000F12
_080DCCF4:
	.4byte 0x00001082
_080DCCF8:
	.4byte 0x00001012
_080DCCFC:
	.4byte 0x00001032
_080DCD00:
	.4byte 0x00000FC2
_080DCD04:
	.4byte 0x00000F92
_080DCD08:
	.4byte 0x00000F22
_080DCD0C:
	.4byte gUnknown_0817614A
_080DCD10:
	.4byte 0x000010A2
_080DCD14:
	.4byte 0x00001052
_080DCD18:
	.4byte gUnknown_0817614E
_080DCD1C:
	.4byte 0x000010F2
	THUMB_FUNC_END sub_080DCBCC

	THUMB_FUNC_START sub_080DCD20
sub_080DCD20: @ 0x080DCD20
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080C3734
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080DCD20

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080DCD30
sub_080DCD30: @ 0x080DCD30
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080CBCE8
	ldr r1, _080DCD58  @ =gRam
	ldr r2, _080DCD5C  @ =0x00000FA2
	add r0, r1, r2
	add r4, r4, r0
	mov r0, #0
	strb r0, [r4]
	ldr r2, _080DCD60  @ =0x00001770
	add r1, r1, r2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DCD58:
	.4byte gRam
_080DCD5C:
	.4byte 0x00000FA2
_080DCD60:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080DCD30

	THUMB_FUNC_START sub_080DCD64
sub_080DCD64: @ 0x080DCD64
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080DCBCC
	add r0, r4, #0
	bl sub_080DCBCC
	add r0, r4, #0
	bl sub_080DCBCC
	add r0, r4, #0
	bl sub_080DCBCC
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080DCD64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080DCD8C
sub_080DCD8C: @ 0x080DCD8C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _080DCDC4  @ =gRam
	ldr r0, _080DCDC8  @ =0x00001172
	add r1, r3, r0
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080DCDCC  @ =0x000009DA
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #228
	beq _080DCE00
	ldr r0, _080DCDD0  @ =0x00001663
	add r5, r3, r0
	ldrb r4, [r5]
	cmp r4, #0
	beq _080DCDD8
	ldr r1, _080DCDD4  @ =0x00000FA2
	add r0, r3, r1
	add r0, r2, r0
	mov r1, #0
	strb r1, [r0]
	bl sub_0812F9A8
	b _080DCE0A
_080DCDC4:
	.4byte gRam
_080DCDC8:
	.4byte 0x00001172
_080DCDCC:
	.4byte 0x000009DA
_080DCDD0:
	.4byte 0x00001663
_080DCDD4:
	.4byte 0x00000FA2
_080DCDD8:
	ldr r0, _080DCDEC  @ =gMagicMirror
	ldrb r0, [r0]
	cmp r0, #2
	beq _080DCDF0
	mov r0, #4
	strb r0, [r5]
	bl sub_0812F9A8
	strb r4, [r5]
	b _080DCE0A
_080DCDEC:
	.4byte gMagicMirror
_080DCDF0:
	ldr r1, _080DCDFC  @ =0x00000FA2
	add r0, r3, r1
	add r0, r2, r0
	strb r4, [r0]
	b _080DCE0A
	.byte 0x00
	.byte 0x00
_080DCDFC:
	.4byte 0x00000FA2
_080DCE00:
	ldr r1, _080DCE10  @ =0x00001052
	add r0, r3, r1
	add r0, r2, r0
	mov r1, #2
	strb r1, [r0]
_080DCE0A:
	pop {r4,r5}
	pop {r0}
	bx r0
_080DCE10:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080DCD8C

	THUMB_FUNC_START sub_080DCE14
sub_080DCE14: @ 0x080DCE14
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C90F4
	add r0, r4, #0
	bl sub_080C2FA8
	ldr r5, _080DCE6C  @ =gRam
	ldr r2, _080DCE70  @ =0x00001082
	add r1, r5, r2
	add r6, r4, r1
	mov r1, #3
	eor r0, r0, r1
	strb r0, [r6]
	add r0, r4, #0
	mov r1, #159
	mov r2, sp
	bl sub_080C94F4
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DCE64
	ldr r1, _080DCE74  @ =0x00000FB2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r6]
	ldr r2, _080DCE78  @ =0x00000F52
	add r1, r5, r2
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080DCE64:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080DCE6C:
	.4byte gRam
_080DCE70:
	.4byte 0x00001082
_080DCE74:
	.4byte 0x00000FB2
_080DCE78:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DCE14

	THUMB_FUNC_START sub_080DCE7C
sub_080DCE7C: @ 0x080DCE7C
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r5, _080DCEE4  @ =gRam
	ldr r0, _080DCEE8  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	mov r2, #0
	strb r0, [r1]
	ldr r1, _080DCEEC  @ =0x00001776
	add r0, r5, r1
	strb r2, [r0]
	mov r0, #26
	bl sub_080A1588
	mov r0, #1
	bl sub_080BE9A0
	add r0, r4, #0
	bl sub_080DD3D4
	ldr r1, _080DCEF0  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #48
	strb r1, [r0]
	ldr r1, _080DCEF4  @ =0x00000F22
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #8
	strb r1, [r0]
	ldr r1, _080DCEF8  @ =0x00000F12
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #4
	strb r1, [r0]
	ldr r1, _080DCEFC  @ =0x00001082
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
	ldr r0, _080DCF00  @ =0x00000FB2
	add r5, r5, r0
	add r4, r4, r5
	strb r1, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DCEE4:
	.4byte gRam
_080DCEE8:
	.4byte 0x00000F52
_080DCEEC:
	.4byte 0x00001776
_080DCEF0:
	.4byte 0x00000FC2
_080DCEF4:
	.4byte 0x00000F22
_080DCEF8:
	.4byte 0x00000F12
_080DCEFC:
	.4byte 0x00001082
_080DCF00:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080DCE7C

	THUMB_FUNC_START sub_080DCF04
sub_080DCF04: @ 0x080DCF04
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080DCFF4  @ =gRam
	ldr r1, _080DCFF8  @ =0x00001082
	add r0, r4, r1
	add r0, r5, r0
	mov r6, #0
	strb r6, [r0]
	ldr r2, _080DCFFC  @ =0x00000FB2
	add r0, r4, r2
	add r0, r5, r0
	strb r6, [r0]
	ldr r7, _080DD000  @ =0x00001628
	add r3, r4, r7
	ldrb r0, [r3]
	ldr r1, _080DD004  @ =0x00000D33
	add r1, r1, r4
	mov r8, r1
	add r0, r0, r8
	ldrb r0, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r4
	mov r10, r2
	strb r0, [r2]
	ldrb r0, [r3]
	ldr r7, _080DD008  @ =0x00000D3B
	add r7, r7, r4
	mov r12, r7
	add r0, r0, r12
	ldrb r0, [r0]
	ldr r1, _080DD00C  @ =0x00000961
	add r1, r1, r4
	mov r9, r1
	strb r0, [r1]
	ldr r2, _080DD010  @ =0x00000ED2
	add r0, r4, r2
	add r0, r5, r0
	ldrb r0, [r0]
	ldr r7, _080DD014  @ =0x00000964
	add r2, r4, r7
	strb r0, [r2]
	ldr r1, _080DD018  @ =0x00000EF2
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	add r7, r7, #1
	add r0, r4, r7
	strb r1, [r0]
	mov r1, r10
	ldrh r0, [r1]
	ldrh r2, [r2]
	cmp r0, r2
	bcs _080DD034
	ldr r2, _080DD01C  @ =0x00000D23
	add r0, r4, r2
	ldrb r7, [r3]
	add r0, r0, r7
	ldrb r1, [r0]
	ldr r2, _080DD020  @ =0x00000968
	add r0, r4, r2
	strb r1, [r0]
	ldr r7, _080DD024  @ =0x00000D2B
	add r0, r4, r7
	ldrb r1, [r3]
	add r0, r0, r1
	ldrb r1, [r0]
	add r2, r2, #1
	add r0, r4, r2
	strb r1, [r0]
	ldrb r0, [r3]
	add r0, r0, r8
	ldrb r1, [r0]
	ldr r7, _080DD028  @ =0x0000096C
	add r0, r4, r7
	strb r1, [r0]
	ldrb r0, [r3]
	add r0, r0, r12
	ldrb r1, [r0]
	add r2, r2, #4
	add r0, r4, r2
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #8
	bl sub_080C2DCC
	ldr r7, _080DD02C  @ =0x00000F12
	add r0, r4, r7
	add r0, r5, r0
	mov r2, r10
	ldrb r1, [r2]
	strb r1, [r0]
	add r7, r7, #16
	add r0, r4, r7
	add r0, r5, r0
	mov r2, r9
	ldrb r1, [r2]
	strb r1, [r0]
	add r7, r7, #112
	add r2, r4, r7
	add r2, r5, r2
	ldr r1, _080DD030  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	add r0, r5, #0
	eor r0, r0, r1
	lsr r0, r0, #3
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	add r0, r5, #0
	bl sub_080DD3D4
	b _080DD050
	.byte 0x00
	.byte 0x00
_080DCFF4:
	.4byte gRam
_080DCFF8:
	.4byte 0x00001082
_080DCFFC:
	.4byte 0x00000FB2
_080DD000:
	.4byte 0x00001628
_080DD004:
	.4byte 0x00000D33
_080DD008:
	.4byte 0x00000D3B
_080DD00C:
	.4byte 0x00000961
_080DD010:
	.4byte 0x00000ED2
_080DD014:
	.4byte 0x00000964
_080DD018:
	.4byte 0x00000EF2
_080DD01C:
	.4byte 0x00000D23
_080DD020:
	.4byte 0x00000968
_080DD024:
	.4byte 0x00000D2B
_080DD028:
	.4byte 0x0000096C
_080DD02C:
	.4byte 0x00000F12
_080DD030:
	.4byte 0x00000996
_080DD034:
	ldr r2, _080DD060  @ =0x00000F52
	add r1, r4, r2
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r7, _080DD064  @ =0x00000F22
	add r0, r4, r7
	add r0, r5, r0
	strb r6, [r0]
	ldr r1, _080DD068  @ =0x00000F12
	add r0, r4, r1
	add r0, r5, r0
	strb r6, [r0]
_080DD050:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DD060:
	.4byte 0x00000F52
_080DD064:
	.4byte 0x00000F22
_080DD068:
	.4byte 0x00000F12
	THUMB_FUNC_END sub_080DCF04

	THUMB_FUNC_START sub_080DD06C
sub_080DD06C: @ 0x080DD06C
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r5, r0, #0
	bl sub_080C5080
	ldr r3, _080DD0C8  @ =gRam
	ldr r1, _080DD0CC  @ =0x00000F52
	add r0, r3, r1
	add r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080DD092
	ldr r0, _080DD0D0  @ =gHeartsFiller
	mov r1, #160
	strb r1, [r0]
	mov r0, #0
	strb r0, [r4]
_080DD092:
	mov r2, #2
	ldr r1, _080DD0D4  @ =0x0000165E
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080DD0A2
	ldr r0, _080DD0D8  @ =gMoonPearl
	ldrb r2, [r0]
_080DD0A2:
	ldr r1, _080DD0DC  @ =gUnknown_08176178
	lsl r0, r2, #1
	add r0, r0, r1
	ldrh r1, [r0]
	add r0, r5, #0
	mov r2, sp
	bl sub_080C9164
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DD0BE
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_080DD0BE:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DD0C8:
	.4byte gRam
_080DD0CC:
	.4byte 0x00000F52
_080DD0D0:
	.4byte gHeartsFiller
_080DD0D4:
	.4byte 0x0000165E
_080DD0D8:
	.4byte gMoonPearl
_080DD0DC:
	.4byte gUnknown_08176178
	THUMB_FUNC_END sub_080DD06C

	THUMB_FUNC_START sub_080DD0E0
sub_080DD0E0: @ 0x080DD0E0
	push {r4-r6,lr}
	add r5, r0, #0
	lsl r5, r5, #24
	lsr r5, r5, #24
	mov r0, #173
	mov r1, #0
	bl sub_080CA538
	ldr r4, _080DD190  @ =gRam
	ldr r1, _080DD194  @ =0x00001082
	add r3, r4, r1
	add r3, r0, r3
	ldr r2, _080DD198  @ =gUnknown_0200EC04
	add r1, r5, r2
	ldrb r1, [r1]
	mov r2, #3
	and r2, r2, r1
	mov r6, #0
	strb r2, [r3]
	ldr r3, _080DD19C  @ =0x00000FB2
	add r1, r4, r3
	add r1, r0, r1
	strb r2, [r1]
	ldr r2, _080DD1A0  @ =gUnknown_0200EBA0
	add r1, r5, r2
	ldrb r2, [r1]
	ldr r3, _080DD1A4  @ =gUnknown_0200EBB4
	add r1, r5, r3
	ldrb r1, [r1]
	lsl r1, r1, #8
	add r2, r2, r1
	add r2, r2, #2
	ldr r3, _080DD1A8  @ =0x00000ED2
	add r1, r4, r3
	add r1, r0, r1
	strb r2, [r1]
	add r3, r3, #32
	add r1, r4, r3
	add r1, r0, r1
	lsr r2, r2, #8
	strb r2, [r1]
	ldr r2, _080DD1AC  @ =gUnknown_0200EBC8
	add r1, r5, r2
	ldrb r2, [r1]
	ldr r3, _080DD1B0  @ =gUnknown_0200EBDC
	add r1, r5, r3
	ldrb r1, [r1]
	lsl r1, r1, #8
	add r2, r2, r1
	add r2, r2, #2
	ldr r3, _080DD1B4  @ =0x00000EE2
	add r1, r4, r3
	add r1, r0, r1
	strb r2, [r1]
	add r3, r3, #32
	add r1, r4, r3
	add r1, r0, r1
	lsr r2, r2, #8
	strb r2, [r1]
	ldr r2, _080DD1B8  @ =0x000010F2
	add r1, r4, r2
	add r1, r0, r1
	mov r3, #161
	lsl r3, r3, #4
	add r2, r4, r3
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r2, _080DD1BC  @ =0x00001172
	add r1, r4, r2
	add r1, r0, r1
	mov r2, #1
	strb r2, [r1]
	ldr r3, _080DD1C0  @ =0x00001052
	add r1, r4, r3
	add r0, r0, r1
	strb r2, [r0]
	add r0, r5, #0
	bl sub_080DD3D4
	ldr r1, _080DD1C4  @ =0x00001663
	add r0, r4, r1
	strb r6, [r0]
	ldr r2, _080DD1C8  @ =0x00001719
	add r4, r4, r2
	strb r6, [r4]
	pop {r4-r6}
	pop {r0}
	bx r0
_080DD190:
	.4byte gRam
_080DD194:
	.4byte 0x00001082
_080DD198:
	.4byte gUnknown_0200EC04
_080DD19C:
	.4byte 0x00000FB2
_080DD1A0:
	.4byte gUnknown_0200EBA0
_080DD1A4:
	.4byte gUnknown_0200EBB4
_080DD1A8:
	.4byte 0x00000ED2
_080DD1AC:
	.4byte gUnknown_0200EBC8
_080DD1B0:
	.4byte gUnknown_0200EBDC
_080DD1B4:
	.4byte 0x00000EE2
_080DD1B8:
	.4byte 0x000010F2
_080DD1BC:
	.4byte 0x00001172
_080DD1C0:
	.4byte 0x00001052
_080DD1C4:
	.4byte 0x00001663
_080DD1C8:
	.4byte 0x00001719
	THUMB_FUNC_END sub_080DD0E0

	THUMB_FUNC_START sub_080DD1CC
sub_080DD1CC: @ 0x080DD1CC
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080DD1F0  @ =gRam
	ldr r1, _080DD1F4  @ =0x00001052
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	cmp r1, #2
	bne _080DD200
	ldr r2, _080DD1F8  @ =0x0000096C
	add r0, r4, r2
	strh r1, [r0]
	ldr r1, _080DD1FC  @ =gUnknown_08176180
	add r0, r5, #0
	bl sub_080C94D0
	b _080DD246
_080DD1F0:
	.4byte gRam
_080DD1F4:
	.4byte 0x00001052
_080DD1F8:
	.4byte 0x0000096C
_080DD1FC:
	.4byte gUnknown_08176180
_080DD200:
	ldr r3, _080DD24C  @ =0x00000FB2
	add r0, r4, r3
	add r0, r5, r0
	ldrb r1, [r0]
	ldr r6, _080DD250  @ =0x00000F92
	add r0, r4, r6
	add r0, r5, r0
	lsl r1, r1, #1
	ldrb r0, [r0]
	add r1, r1, r0
	lsl r1, r1, #25
	lsr r1, r1, #24
	ldr r0, _080DD254  @ =0x0000096C
	add r2, r4, r0
	mov r0, #2
	strh r0, [r2]
	ldr r3, _080DD258  @ =gUnknown_08176210
	add r0, r1, r3
	ldrb r2, [r0]
	ldr r6, _080DD25C  @ =0x00000CDE
	add r0, r4, r6
	strh r2, [r0]
	add r0, r1, #1
	add r0, r0, r3
	ldrb r2, [r0]
	mov r3, #206
	lsl r3, r3, #4
	add r0, r4, r3
	strh r2, [r0]
	lsl r1, r1, #3
	ldr r0, _080DD260  @ =gUnknown_08176190
	add r1, r1, r0
	add r0, r5, #0
	bl sub_080C94D0
_080DD246:
	pop {r4-r6}
	pop {r0}
	bx r0
_080DD24C:
	.4byte 0x00000FB2
_080DD250:
	.4byte 0x00000F92
_080DD254:
	.4byte 0x0000096C
_080DD258:
	.4byte gUnknown_08176210
_080DD25C:
	.4byte 0x00000CDE
_080DD260:
	.4byte gUnknown_08176190
	THUMB_FUNC_END sub_080DD1CC

	THUMB_FUNC_START sub_080DD264
sub_080DD264: @ 0x080DD264
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080DD1CC
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DD294
	ldr r1, _080DD29C  @ =gUnknown_08176154
	ldr r0, _080DD2A0  @ =gRam
	ldr r2, _080DD2A4  @ =0x00001052
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080DD294:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DD29C:
	.4byte gUnknown_08176154
_080DD2A0:
	.4byte gRam
_080DD2A4:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080DD264

	THUMB_FUNC_START sub_080DD2A8
sub_080DD2A8: @ 0x080DD2A8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080DD2C8  @ =gUnknown_08176160
	ldr r1, _080DD2CC  @ =gRam
	ldr r3, _080DD2D0  @ =0x00000F52
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080DD2C8:
	.4byte gUnknown_08176160
_080DD2CC:
	.4byte gRam
_080DD2D0:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DD2A8

	THUMB_FUNC_START sub_080DD2D4
sub_080DD2D4: @ 0x080DD2D4
	push {r4-r6,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r5, _080DD308  @ =gRam
	ldr r0, _080DD30C  @ =0x00001663
	add r1, r5, r0
	mov r6, #0
	mov r0, #4
	strb r0, [r1]
	add r0, r4, #0
	bl sub_081146A4
	mov r0, #5
	bl sub_080BE9A0
	ldr r0, _080DD310  @ =0x00000FA2
	add r5, r5, r0
	add r4, r4, r5
	strb r6, [r4]
	bl sub_0808B1FC
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DD308:
	.4byte gRam
_080DD30C:
	.4byte 0x00001663
_080DD310:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080DD2D4

	THUMB_FUNC_START sub_080DD314
sub_080DD314: @ 0x080DD314
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl Sprite3_Move
	ldr r1, _080DD340  @ =gUnknown_08176168
	ldr r0, _080DD344  @ =gRam
	ldr r2, _080DD348  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
_080DD340:
	.4byte gUnknown_08176168
_080DD344:
	.4byte gRam
_080DD348:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DD314

	THUMB_FUNC_START sub_080DD34C
sub_080DD34C: @ 0x080DD34C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl sub_080DD3D4
	ldr r3, _080DD390  @ =gRam
	ldr r1, _080DD394  @ =0x00000FC2
	add r0, r3, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DD374
	ldr r0, _080DD398  @ =0x00000F52
	add r1, r3, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080DD374:
	ldr r1, _080DD39C  @ =0x00000F92
	add r2, r3, r1
	add r2, r5, r2
	ldr r1, _080DD3A0  @ =0x00000996
	add r0, r3, r1
	ldrb r0, [r0]
	eor r5, r5, r0
	lsr r0, r5, #3
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	pop {r4,r5}
	pop {r0}
	bx r0
_080DD390:
	.4byte gRam
_080DD394:
	.4byte 0x00000FC2
_080DD398:
	.4byte 0x00000F52
_080DD39C:
	.4byte 0x00000F92
_080DD3A0:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080DD34C

	THUMB_FUNC_START sub_080DD3A4
sub_080DD3A4: @ 0x080DD3A4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080DD3C4  @ =gRam
	ldr r3, _080DD3C8  @ =0x00000FA2
	add r1, r2, r3
	add r0, r0, r1
	mov r1, #0
	strb r1, [r0]
	ldr r3, _080DD3CC  @ =0x00001770
	add r0, r2, r3
	strb r1, [r0]
	ldr r0, _080DD3D0  @ =0x0000180D
	add r2, r2, r0
	strb r1, [r2]
	bx lr
	.byte 0x00
	.byte 0x00
_080DD3C4:
	.4byte gRam
_080DD3C8:
	.4byte 0x00000FA2
_080DD3CC:
	.4byte 0x00001770
_080DD3D0:
	.4byte 0x0000180D
	THUMB_FUNC_END sub_080DD3A4

	THUMB_FUNC_START sub_080DD3D4
sub_080DD3D4: @ 0x080DD3D4
	ldr r0, _080DD3E8  @ =gRam
	ldr r2, _080DD3EC  @ =0x00001770
	add r1, r0, r2
	mov r2, #1
	strb r2, [r1]
	ldr r1, _080DD3F0  @ =0x0000180D
	add r0, r0, r1
	strb r2, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080DD3E8:
	.4byte gRam
_080DD3EC:
	.4byte 0x00001770
_080DD3F0:
	.4byte 0x0000180D
	THUMB_FUNC_END sub_080DD3D4

	THUMB_FUNC_START sub_080DD3F4
sub_080DD3F4: @ 0x080DD3F4
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r4, #15
_080DD3FC:
	add r0, r5, #0
	bl sub_080DDA2C
	lsl r0, r4, #24
	mov r1, #255
	lsl r1, r1, #24
	add r0, r0, r1
	lsr r4, r0, #24
	cmp r0, #0
	bne _080DD3FC
	mov r4, #15
	ldr r2, _080DD460  @ =gUnknown_03003222
	add r6, r2, #0
	sub r6, r6, #80
	mov r3, #0
_080DD41A:
	lsl r0, r4, #24
	asr r1, r0, #24
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #43
	bne _080DD42A
	add r0, r1, r6
	strb r3, [r0]
_080DD42A:
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r0, #0
	bne _080DD41A
	add r0, r5, #0
	bl sub_080DD7A0
	ldr r2, _080DD464  @ =gRam
	ldr r1, _080DD468  @ =0x00001662
	add r0, r2, r1
	ldrb r1, [r0]
	mov r3, #1
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	beq _080DD454
	ldr r0, _080DD46C  @ =0x00000F52
	add r1, r2, r0
	mov r0, #3
	strb r0, [r1]
_080DD454:
	ldr r1, _080DD470  @ =0x00001172
	add r0, r2, r1
	strb r3, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
_080DD460:
	.4byte gUnknown_03003222
_080DD464:
	.4byte gRam
_080DD468:
	.4byte 0x00001662
_080DD46C:
	.4byte 0x00000F52
_080DD470:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080DD3F4

	THUMB_FUNC_START sub_080DD474
sub_080DD474: @ 0x080DD474
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DD4F4  @ =gRam
	ldr r1, _080DD4F8  @ =0x00001132
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #7
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DD4CE
	ldr r1, _080DD4FC  @ =gUnknown_03003E70
	mov r0, #1
	strb r0, [r1]
	ldr r2, _080DD500  @ =0x00000546
	add r0, r5, r2
	ldrh r1, [r0]
	mov r0, #129
	lsl r0, r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _080DD4CE
	ldr r0, _080DD504  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080DD508  @ =0x00001062
	add r0, r5, r1
	add r0, r4, r0
	ldr r2, _080DD50C  @ =0x00000FC2
	add r1, r5, r2
	ldrb r0, [r0]
	add r1, r1, r0
	mov r0, #4
	strb r0, [r1]
	ldr r0, _080DD510  @ =0x00001770
	add r1, r5, r0
	mov r0, #1
	strb r0, [r1]
_080DD4CE:
	ldr r5, _080DD4F4  @ =gRam
	ldr r1, _080DD514  @ =0x00000FE2
	add r0, r5, r1
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080DD4EE
	mov r0, #160
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080DD6A0
	ldr r2, _080DD508  @ =0x00001062
	add r1, r5, r2
	add r1, r4, r1
	strb r0, [r1]
_080DD4EE:
	pop {r4,r5}
	pop {r0}
	bx r0
_080DD4F4:
	.4byte gRam
_080DD4F8:
	.4byte 0x00001132
_080DD4FC:
	.4byte gUnknown_03003E70
_080DD500:
	.4byte 0x00000546
_080DD504:
	.4byte 0x00000F52
_080DD508:
	.4byte 0x00001062
_080DD50C:
	.4byte 0x00000FC2
_080DD510:
	.4byte 0x00001770
_080DD514:
	.4byte 0x00000FE2
	THUMB_FUNC_END sub_080DD474

	THUMB_FUNC_START sub_080DD518
sub_080DD518: @ 0x080DD518
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	ldr r5, _080DD560  @ =gRam
	ldr r1, _080DD564  @ =0x00000FC2
	add r0, r5, r1
	add r3, r4, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _080DD58C
	ldr r1, _080DD568  @ =gUnknown_08176240
	ldr r2, _080DD56C  @ =0x00000F62
	add r0, r5, r2
	add r2, r4, r0
	ldrb r0, [r2]
	add r0, r0, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080DD574
	add r0, r4, #0
	mov r1, #218
	mov r2, sp
	bl sub_080C9564
	ldr r0, _080DD570  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080DD58C
	.byte 0x00
	.byte 0x00
_080DD560:
	.4byte gRam
_080DD564:
	.4byte 0x00000FC2
_080DD568:
	.4byte gUnknown_08176240
_080DD56C:
	.4byte 0x00000F62
_080DD570:
	.4byte 0x00000F52
_080DD574:
	ldr r4, _080DD594  @ =0x00000F92
	add r0, r5, r4
	add r0, r6, r0
	strb r1, [r0]
	ldr r1, _080DD598  @ =gUnknown_08176248
	ldrb r0, [r2]
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
_080DD58C:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080DD594:
	.4byte 0x00000F92
_080DD598:
	.4byte gUnknown_08176248
	THUMB_FUNC_END sub_080DD518

	THUMB_FUNC_START sub_080DD59C
sub_080DD59C: @ 0x080DD59C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _080DD5EC  @ =gRam
	ldr r1, _080DD5F0  @ =0x00000F52
	add r2, r4, r1
	add r2, r0, r2
	ldrb r1, [r2]
	add r1, r1, #1
	mov r3, #0
	strb r1, [r2]
	ldr r2, _080DD5F4  @ =0x00000F92
	add r1, r4, r2
	add r0, r0, r1
	mov r5, #1
	mov r1, #1
	strb r1, [r0]
	ldr r1, _080DD5F8  @ =0x000009C6
	add r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _080DD5FC  @ =gUnknown_02002280
	add r1, r1, r2
	ldrb r0, [r1]
	mov r2, #32
	orr r0, r0, r2
	strb r0, [r1]
	ldr r1, _080DD600  @ =0x00001776
	add r0, r4, r1
	strb r3, [r0]
	mov r0, #22
	bl sub_080A1588
	ldr r2, _080DD604  @ =0x00001662
	add r4, r4, r2
	ldrb r0, [r4]
	orr r5, r5, r0
	strb r5, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
_080DD5EC:
	.4byte gRam
_080DD5F0:
	.4byte 0x00000F52
_080DD5F4:
	.4byte 0x00000F92
_080DD5F8:
	.4byte 0x000009C6
_080DD5FC:
	.4byte gUnknown_02002280
_080DD600:
	.4byte 0x00001776
_080DD604:
	.4byte 0x00001662
	THUMB_FUNC_END sub_080DD59C

	THUMB_FUNC_START sub_080DD608
sub_080DD608: @ 0x080DD608
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, #4
	bl sub_080CF3A0
	add r0, r4, #0
	bl sub_080C58F0
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DD680
	ldr r5, _080DD688  @ =gRam
	ldr r1, _080DD68C  @ =0x00000F92
	add r0, r5, r1
	add r2, r4, r0
	ldr r3, _080DD690  @ =0x00000996
	add r0, r5, r3
	ldrb r0, [r0]
	lsr r1, r0, #4
	mov r0, #1
	and r1, r1, r0
	add r0, r1, #2
	strb r0, [r2]
	ldr r3, _080DD694  @ =0x00000FD2
	add r0, r5, r3
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DD668
	add r0, r1, #3
	strb r0, [r2]
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r1, _080DD698  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	cmp r1, #0
	bne _080DD668
	ldr r2, _080DD69C  @ =0x00000FA2
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
_080DD668:
	ldr r1, _080DD688  @ =gRam
	ldr r3, _080DD698  @ =0x00000FC2
	add r0, r1, r3
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #3
	bhi _080DD680
	ldr r2, _080DD68C  @ =0x00000F92
	add r0, r1, r2
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
_080DD680:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DD688:
	.4byte gRam
_080DD68C:
	.4byte 0x00000F92
_080DD690:
	.4byte 0x00000996
_080DD694:
	.4byte 0x00000FD2
_080DD698:
	.4byte 0x00000FC2
_080DD69C:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080DD608

	THUMB_FUNC_START sub_080DD6A0
sub_080DD6A0: @ 0x080DD6A0
	push {r4,r5,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #43
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080DD6F8
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r2, _080DD700  @ =gRam
	ldr r1, _080DD704  @ =0x00001052
	add r0, r2, r1
	add r0, r4, r0
	mov r3, #0
	mov r1, #1
	strb r1, [r0]
	ldr r5, _080DD708  @ =0x00001152
	add r0, r2, r5
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	ldr r1, _080DD70C  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #96
	strb r1, [r0]
	ldr r5, _080DD710  @ =0x00000FD2
	add r0, r2, r5
	add r0, r4, r0
	mov r1, #48
	strb r1, [r0]
	ldr r5, _080DD714  @ =0x00001172
	add r0, r2, r5
	add r0, r4, r0
	strb r1, [r0]
	ldr r0, _080DD718  @ =0x00001012
	add r2, r2, r0
	add r2, r4, r2
	strb r3, [r2]
_080DD6F8:
	add r0, r4, #0
	pop {r4,r5}
	pop {r1}
	bx r1
_080DD700:
	.4byte gRam
_080DD704:
	.4byte 0x00001052
_080DD708:
	.4byte 0x00001152
_080DD70C:
	.4byte 0x00000FC2
_080DD710:
	.4byte 0x00000FD2
_080DD714:
	.4byte 0x00001172
_080DD718:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080DD6A0

	THUMB_FUNC_START sub_080DD71C
sub_080DD71C: @ 0x080DD71C
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	add r0, r6, #0
	bl sub_080C58F0
	add r0, r6, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DD784
	ldr r4, _080DD78C  @ =gRam
	ldr r1, _080DD790  @ =0x00000996
	add r0, r4, r1
	ldrb r2, [r0]
	lsr r2, r2, #3
	mov r0, #3
	and r2, r2, r0
	mov r0, #150
	lsl r0, r0, #4
	add r5, r4, r0
	strb r2, [r5]
	ldr r0, _080DD794  @ =0x00000F92
	add r1, r4, r0
	add r1, r6, r1
	mov r0, #1
	and r0, r0, r2
	strb r0, [r1]
	ldr r1, _080DD798  @ =0x00001122
	add r3, r4, r1
	add r3, r6, r3
	ldrb r0, [r3]
	mov r2, #191
	and r2, r2, r0
	ldrb r0, [r5]
	lsl r0, r0, #4
	mov r1, #64
	and r0, r0, r1
	orr r2, r2, r0
	strb r2, [r3]
	ldr r0, _080DD79C  @ =0x00000FC2
	add r4, r4, r0
	add r4, r6, r4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DD784
	add r0, r6, #0
	bl sub_080DD8AC
	mov r0, #47
	strb r0, [r4]
_080DD784:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DD78C:
	.4byte gRam
_080DD790:
	.4byte 0x00000996
_080DD794:
	.4byte 0x00000F92
_080DD798:
	.4byte 0x00001122
_080DD79C:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080DD71C

	THUMB_FUNC_START sub_080DD7A0
sub_080DD7A0: @ 0x080DD7A0
	push {r4-r6,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #43
	bl sub_080CA538
	ldr r3, _080DD80C  @ =gRam
	ldr r2, _080DD810  @ =0x00000EE2
	add r1, r3, r2
	add r1, r0, r1
	mov r5, #0
	mov r2, #148
	strb r2, [r1]
	ldr r6, _080DD814  @ =0x00000F02
	add r1, r3, r6
	add r1, r0, r1
	mov r2, #1
	strb r2, [r1]
	ldr r2, _080DD818  @ =0x00000ED2
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #63
	strb r2, [r1]
	sub r6, r6, #16
	add r1, r3, r6
	add r1, r0, r1
	strb r5, [r1]
	ldr r2, _080DD81C  @ =0x00001052
	add r1, r3, r2
	add r1, r0, r1
	mov r4, #2
	mov r2, #2
	strb r2, [r1]
	ldr r6, _080DD820  @ =0x00001172
	add r1, r3, r6
	add r1, r0, r1
	strb r2, [r1]
	ldr r2, _080DD824  @ =0x00001012
	add r1, r3, r2
	add r1, r0, r1
	strb r5, [r1]
	sub r6, r6, #80
	add r3, r3, r6
	add r0, r0, r3
	ldrb r2, [r0]
	mov r1, #241
	and r1, r1, r2
	orr r1, r1, r4
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DD80C:
	.4byte gRam
_080DD810:
	.4byte 0x00000EE2
_080DD814:
	.4byte 0x00000F02
_080DD818:
	.4byte 0x00000ED2
_080DD81C:
	.4byte 0x00001052
_080DD820:
	.4byte 0x00001172
_080DD824:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080DD7A0

	THUMB_FUNC_START sub_080DD828
sub_080DD828: @ 0x080DD828
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080DD894  @ =gRam
	ldr r1, _080DD898  @ =0x00000F92
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #6
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080C58F0
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DD88E
	add r0, r5, #0
	bl Sprite3_Move
	add r0, r5, #0
	bl sub_080C2C4C
	ldr r2, _080DD89C  @ =0x00001122
	add r3, r6, r2
	add r3, r5, r3
	ldrb r0, [r3]
	mov r2, #63
	and r2, r2, r0
	ldr r4, _080DD8A0  @ =gUnknown_0817624F
	ldr r1, _080DD8A4  @ =0x00000996
	add r0, r6, r1
	ldrb r0, [r0]
	lsr r0, r0, #4
	mov r1, #3
	and r0, r0, r1
	add r0, r0, r4
	ldrb r0, [r0]
	orr r2, r2, r0
	strb r2, [r3]
	ldr r2, _080DD8A8  @ =0x00000FC2
	add r0, r6, r2
	add r0, r5, r0
	ldrb r1, [r0]
	cmp r1, #0
	bne _080DD88E
	sub r2, r2, #32
	add r0, r6, r2
	add r0, r5, r0
	strb r1, [r0]
_080DD88E:
	pop {r4-r6}
	pop {r0}
	bx r0
_080DD894:
	.4byte gRam
_080DD898:
	.4byte 0x00000F92
_080DD89C:
	.4byte 0x00001122
_080DD8A0:
	.4byte gUnknown_0817624F
_080DD8A4:
	.4byte 0x00000996
_080DD8A8:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080DD828

	THUMB_FUNC_START sub_080DD8AC
sub_080DD8AC: @ 0x080DD8AC
	push {r4,r5,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #43
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080DD91C
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r2, _080DD924  @ =gRam
	ldr r0, _080DD928  @ =0x00000964
	add r1, r2, r0
	ldrh r0, [r1]
	add r0, r0, #4
	mov r3, #0
	strh r0, [r1]
	ldr r5, _080DD92C  @ =0x00000ED2
	add r0, r2, r5
	add r0, r4, r0
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DD930  @ =0x00000EF2
	add r0, r2, r1
	add r0, r4, r0
	ldr r5, _080DD934  @ =0x00000965
	add r1, r2, r5
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DD938  @ =0x00001052
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
	ldr r5, _080DD93C  @ =0x00001152
	add r0, r2, r5
	add r0, r4, r0
	mov r1, #7
	strb r1, [r0]
	ldr r1, _080DD940  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #96
	strb r1, [r0]
	add r5, r5, #32
	add r0, r2, r5
	add r0, r4, r0
	strb r1, [r0]
	ldr r0, _080DD944  @ =0x00001012
	add r2, r2, r0
	add r2, r4, r2
	strb r3, [r2]
_080DD91C:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DD924:
	.4byte gRam
_080DD928:
	.4byte 0x00000964
_080DD92C:
	.4byte 0x00000ED2
_080DD930:
	.4byte 0x00000EF2
_080DD934:
	.4byte 0x00000965
_080DD938:
	.4byte 0x00001052
_080DD93C:
	.4byte 0x00001152
_080DD940:
	.4byte 0x00000FC2
_080DD944:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080DD8AC

	THUMB_FUNC_START sub_080DD948
sub_080DD948: @ 0x080DD948
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080DD968  @ =gUnknown_08176220
	ldr r1, _080DD96C  @ =gRam
	ldr r3, _080DD970  @ =0x00001052
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080DD968:
	.4byte gUnknown_08176220
_080DD96C:
	.4byte gRam
_080DD970:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080DD948

	THUMB_FUNC_START sub_080DD974
sub_080DD974: @ 0x080DD974
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	add r0, r4, #0
	bl sub_080DDA70
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _080DD9CC
	ldr r5, _080DD9D4  @ =gRam
	ldr r1, _080DD9D8  @ =0x00001132
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DD9B6
	bl sub_080AF16C
	ldr r2, _080DD9DC  @ =0x00001719
	add r0, r5, r2
	strb r6, [r0]
	bl sub_08093078
_080DD9B6:
	ldr r1, _080DD9E0  @ =gUnknown_08176230
	ldr r2, _080DD9E4  @ =0x00000F52
	add r0, r5, r2
	add r0, r7, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r7, #0
	bl _call_via_r1
_080DD9CC:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DD9D4:
	.4byte gRam
_080DD9D8:
	.4byte 0x00001132
_080DD9DC:
	.4byte 0x00001719
_080DD9E0:
	.4byte gUnknown_08176230
_080DD9E4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DD974

	THUMB_FUNC_START sub_080DD9E8
sub_080DD9E8: @ 0x080DD9E8
	push {r4,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r1, _080DDA1C  @ =gRam
	ldr r2, _080DDA20  @ =0x00001770
	add r0, r1, r2
	mov r2, #0
	strb r2, [r0]
	ldr r4, _080DDA24  @ =0x00000F92
	add r0, r1, r4
	add r0, r3, r0
	strb r2, [r0]
	ldr r0, _080DDA28  @ =0x00000FC2
	add r1, r1, r0
	add r1, r3, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _080DDA16
	mov r0, #160
	strb r0, [r1]
	add r0, r3, #0
	bl sub_080DD6A0
_080DDA16:
	pop {r4}
	pop {r0}
	bx r0
_080DDA1C:
	.4byte gRam
_080DDA20:
	.4byte 0x00001770
_080DDA24:
	.4byte 0x00000F92
_080DDA28:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080DD9E8

	THUMB_FUNC_START sub_080DDA2C
sub_080DDA2C: @ 0x080DDA2C
	push {r4,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #43
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080DDA5C
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r1, _080DDA64  @ =gRam
	ldr r2, _080DDA68  @ =0x00001052
	add r0, r1, r2
	add r0, r4, r0
	mov r2, #0
	strb r2, [r0]
	ldr r0, _080DDA6C  @ =0x00001172
	add r1, r1, r0
	add r1, r4, r1
	strb r2, [r1]
_080DDA5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DDA64:
	.4byte gRam
_080DDA68:
	.4byte 0x00001052
_080DDA6C:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080DDA2C

	THUMB_FUNC_START sub_080DDA70
sub_080DDA70: @ 0x080DDA70
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080DDA98  @ =gRam
	ldr r2, _080DDA9C  @ =0x0000096C
	add r3, r1, r2
	mov r2, #4
	strh r2, [r3]
	ldr r2, _080DDAA0  @ =0x00000F92
	add r1, r1, r2
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #5
	ldr r2, _080DDAA4  @ =gUnknown_08176254
	add r1, r1, r2
	bl sub_080C94D0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DDA98:
	.4byte gRam
_080DDA9C:
	.4byte 0x0000096C
_080DDAA0:
	.4byte 0x00000F92
_080DDAA4:
	.4byte gUnknown_08176254
	THUMB_FUNC_END sub_080DDA70

	THUMB_FUNC_START sub_080DDAA8
sub_080DDAA8: @ 0x080DDAA8
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080DDB18  @ =gRam
	ldr r1, _080DDB1C  @ =0x00001082
	add r0, r6, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DDB2C
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r5, #0
	bl sub_080C632C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DDBBA
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DDBBA
	ldr r2, _080DDB20  @ =0x00001052
	add r4, r6, r2
	add r4, r5, r4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	add r0, r5, #0
	bl sub_080DDDA4
	ldrb r1, [r4]
	mov r0, #31
	and r0, r0, r1
	cmp r0, #0
	bne _080DDB00
	add r0, r5, #0
	mov r1, #39
	bl sub_080CF140
_080DDB00:
	ldr r1, _080DDB24  @ =gUnknown_081762B4
	ldr r3, _080DDB28  @ =0x00000F52
	add r0, r6, r3
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
	b _080DDBBA
_080DDB18:
	.4byte gRam
_080DDB1C:
	.4byte 0x00001082
_080DDB20:
	.4byte 0x00001052
_080DDB24:
	.4byte gUnknown_081762B4
_080DDB28:
	.4byte 0x00000F52
_080DDB2C:
	ldr r1, _080DDBC4  @ =0x00000FE2
	add r0, r6, r1
	add r0, r5, r0
	ldrb r1, [r0]
	mov r2, #0
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #62
	bhi _080DDB5C
	add r1, r0, #0
	cmp r1, #0
	bne _080DDB4E
	ldr r3, _080DDBC8  @ =0x00000FA2
	add r0, r6, r3
	add r0, r5, r0
	strb r2, [r0]
_080DDB4E:
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080DDB58
	mov r2, #1
_080DDB58:
	cmp r2, #0
	beq _080DDBBA
_080DDB5C:
	add r0, r5, #0
	bl sub_080DDEC8
	ldr r4, _080DDBCC  @ =gRam
	ldr r1, _080DDBD0  @ =0x000010A2
	add r0, r4, r1
	add r2, r5, r0
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080DDB8C
	mov r0, #5
	strb r0, [r2]
	ldr r3, _080DDBD4  @ =0x00000F92
	add r2, r4, r3
	add r2, r5, r2
	ldrb r0, [r2]
	add r0, r0, #1
	mov r1, #3
	and r0, r0, r1
	strb r0, [r2]
_080DDB8C:
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DDBBA
	ldr r0, _080DDBD8  @ =0x00001052
	add r1, r4, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080DDBDC  @ =gUnknown_081762C0
	ldr r2, _080DDBE0  @ =0x00000F52
	add r0, r4, r2
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
_080DDBBA:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DDBC4:
	.4byte 0x00000FE2
_080DDBC8:
	.4byte 0x00000FA2
_080DDBCC:
	.4byte gRam
_080DDBD0:
	.4byte 0x000010A2
_080DDBD4:
	.4byte 0x00000F92
_080DDBD8:
	.4byte 0x00001052
_080DDBDC:
	.4byte gUnknown_081762C0
_080DDBE0:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DDAA8

	THUMB_FUNC_START sub_080DDBE4
sub_080DDBE4: @ 0x080DDBE4
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080DDC6C  @ =gRam
	ldr r1, _080DDC70  @ =0x00000F62
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #0
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #8
	bl sub_080C35FC
	add r0, r5, #0
	bl Sprite3_Move
	add r0, r5, #0
	bl sub_080C1F70
	ldr r3, _080DDC74  @ =0x000016C4
	add r2, r4, r3
	ldr r1, _080DDC78  @ =0x00001622
	add r0, r4, r1
	ldrb r1, [r0]
	sub r3, r3, #161
	add r0, r4, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrh r0, [r2]
	sub r0, r0, r1
	add r0, r0, #3
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #5
	bhi _080DDC64
	mov r0, #182
	lsl r0, r0, #5
	add r2, r4, r0
	ldr r1, _080DDC7C  @ =0x00001624
	add r0, r4, r1
	ldrb r1, [r0]
	add r3, r3, #2
	add r0, r4, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrh r0, [r2]
	sub r0, r0, r1
	add r0, r0, #11
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #5
	bhi _080DDC64
	ldr r1, _080DDC80  @ =gHeartsFiller
	ldrb r0, [r1]
	add r0, r0, #160
	strb r0, [r1]
	ldr r0, _080DDC84  @ =0x00000F52
	add r1, r4, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080DDC64:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DDC6C:
	.4byte gRam
_080DDC70:
	.4byte 0x00000F62
_080DDC74:
	.4byte 0x000016C4
_080DDC78:
	.4byte 0x00001622
_080DDC7C:
	.4byte 0x00001624
_080DDC80:
	.4byte gHeartsFiller
_080DDC84:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DDBE4

	THUMB_FUNC_START sub_080DDC88
sub_080DDC88: @ 0x080DDC88
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DDCDC  @ =gRam
	ldr r1, _080DDCE0  @ =0x00001052
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _080DDCD6
	ldr r1, _080DDCE4  @ =0x00000F62
	add r0, r5, r1
	add r2, r4, r0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #0
	bne _080DDCD6
	lsl r1, r1, #1
	mov r0, #1
	orr r1, r1, r0
	strb r1, [r2]
	lsl r0, r1, #24
	cmp r0, #0
	bge _080DDCD6
	mov r0, #255
	orr r1, r1, r0
	strb r1, [r2]
	ldr r1, _080DDCE8  @ =0x00001770
	add r0, r5, r1
	strb r3, [r0]
	ldr r1, _080DDCEC  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	strb r3, [r0]
_080DDCD6:
	pop {r4,r5}
	pop {r0}
	bx r0
_080DDCDC:
	.4byte gRam
_080DDCE0:
	.4byte 0x00001052
_080DDCE4:
	.4byte 0x00000F62
_080DDCE8:
	.4byte 0x00001770
_080DDCEC:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080DDC88

	THUMB_FUNC_START sub_080DDCF0
sub_080DDCF0: @ 0x080DDCF0
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	add r0, r6, #0
	bl sub_080DDDA4
	ldr r5, _080DDD84  @ =gRam
	ldr r1, _080DDD88  @ =0x00000F62
	add r0, r5, r1
	add r0, r6, r0
	mov r7, #1
	strb r7, [r0]
	add r0, r6, #0
	bl sub_080C2FA8
	ldr r1, _080DDD8C  @ =0x0000097D
	add r0, r5, r1
	ldrb r0, [r0]
	add r0, r0, #48
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #95
	bhi _080DDD7E
	sub r1, r1, #1
	add r0, r5, r1
	ldrb r0, [r0]
	add r0, r0, #48
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #95
	bhi _080DDD7E
	bl sub_08093078
	ldr r0, _080DDD90  @ =0x00000F52
	add r1, r5, r0
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080DDD94  @ =0x0000015D
	bl sub_080C95C0
	ldr r1, _080DDD98  @ =0x00001770
	add r0, r5, r1
	strb r7, [r0]
	mov r0, #200
	add r1, r6, #0
	bl sub_080CA538
	add r4, r0, #0
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r1, _080DDD9C  @ =0x00001082
	add r0, r5, r1
	add r0, r4, r0
	strb r7, [r0]
	ldr r0, _080DDDA0  @ =0x00000ED2
	add r2, r5, r0
	add r2, r4, r2
	add r1, r1, #192
	add r3, r5, r1
	add r1, r6, r3
	ldrb r0, [r2]
	ldrb r1, [r1]
	sub r0, r0, r1
	strb r0, [r2]
	add r4, r4, r3
	mov r0, #0
	strb r0, [r4]
_080DDD7E:
	pop {r4-r7}
	pop {r0}
	bx r0
_080DDD84:
	.4byte gRam
_080DDD88:
	.4byte 0x00000F62
_080DDD8C:
	.4byte 0x0000097D
_080DDD90:
	.4byte 0x00000F52
_080DDD94:
	.4byte 0x0000015D
_080DDD98:
	.4byte 0x00001770
_080DDD9C:
	.4byte 0x00001082
_080DDDA0:
	.4byte 0x00000ED2
	THUMB_FUNC_END sub_080DDCF0

	THUMB_FUNC_START sub_080DDDA4
sub_080DDDA4: @ 0x080DDDA4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r0, _080DDE30  @ =gRam
	mov r9, r0
	ldr r0, _080DDE34  @ =0x00000F62
	add r0, r0, r9
	add r0, r7, r0
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080DDE22
	ldr r0, _080DDE38  @ =0x00001052
	add r0, r0, r9
	add r0, r7, r0
	ldrb r0, [r0]
	and r0, r0, r1
	cmp r0, #0
	bne _080DDE22
	ldr r0, _080DDE3C  @ =gUnknown_08176360
	mov r8, r0
	bl GetRandomInt
	mov r4, #7
	add r1, r4, #0
	and r1, r1, r0
	add r1, r1, r8
	ldrb r1, [r1]
	ldr r5, _080DDE40  @ =gUnknown_08176348
	add r0, r1, r5
	ldrb r2, [r0]
	mov r0, #150
	lsl r0, r0, #4
	add r0, r0, r9
	strb r2, [r0]
	ldr r6, _080DDE44  @ =gUnknown_08176354
	add r1, r1, r6
	ldrb r1, [r1]
	ldr r0, _080DDE48  @ =0x00000961
	add r0, r0, r9
	strb r1, [r0]
	bl GetRandomInt
	and r4, r4, r0
	add r4, r4, r8
	ldrb r1, [r4]
	add r5, r1, r5
	ldrb r2, [r5]
	ldr r0, _080DDE4C  @ =0x00000964
	add r0, r0, r9
	strb r2, [r0]
	add r1, r1, r6
	ldrb r1, [r1]
	ldr r0, _080DDE50  @ =0x00000965
	add r0, r0, r9
	strb r1, [r0]
	add r0, r7, #0
	bl sub_080C9A58
_080DDE22:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DDE30:
	.4byte gRam
_080DDE34:
	.4byte 0x00000F62
_080DDE38:
	.4byte 0x00001052
_080DDE3C:
	.4byte gUnknown_08176360
_080DDE40:
	.4byte gUnknown_08176348
_080DDE44:
	.4byte gUnknown_08176354
_080DDE48:
	.4byte 0x00000961
_080DDE4C:
	.4byte 0x00000964
_080DDE50:
	.4byte 0x00000965
	THUMB_FUNC_END sub_080DDDA4

	THUMB_FUNC_START sub_080DDE54
sub_080DDE54: @ 0x080DDE54
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r0, _080DDE7C  @ =gRam
	ldr r1, _080DDE80  @ =0x00001142
	add r0, r0, r1
	add r0, r4, r0
	mov r1, #24
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C35C0
	add r0, r4, #0
	bl sub_080C3758
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DDE7C:
	.4byte gRam
_080DDE80:
	.4byte 0x00001142
	THUMB_FUNC_END sub_080DDE54

	THUMB_FUNC_START sub_080DDE84
sub_080DDE84: @ 0x080DDE84
	push {lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r0, _080DDEB0  @ =gMaxHealth
	ldr r1, _080DDEB4  @ =gCurrentHealth
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080DDEAC
	ldr r2, _080DDEB8  @ =gRam
	ldr r0, _080DDEBC  @ =0x00000F52
	add r1, r2, r0
	add r1, r3, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080DDEC0  @ =0x00000FE2
	add r2, r2, r0
	mov r0, #112
	strb r0, [r2]
_080DDEAC:
	pop {r0}
	bx r0
_080DDEB0:
	.4byte gMaxHealth
_080DDEB4:
	.4byte gCurrentHealth
_080DDEB8:
	.4byte gRam
_080DDEBC:
	.4byte 0x00000F52
_080DDEC0:
	.4byte 0x00000FE2
	THUMB_FUNC_END sub_080DDE84

	THUMB_FUNC_START sub_080DDEC4
sub_080DDEC4: @ 0x080DDEC4
	bx lr
	THUMB_FUNC_END sub_080DDEC4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080DDEC8
sub_080DDEC8: @ 0x080DDEC8
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r0, _080DDEF4  @ =gRam
	ldr r1, _080DDEF8  @ =0x00000F92
	add r0, r0, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsl r1, r1, #5
	ldr r0, _080DDEFC  @ =gUnknown_081762C8
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #4
	bl sub_080C9480
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
_080DDEF4:
	.4byte gRam
_080DDEF8:
	.4byte 0x00000F92
_080DDEFC:
	.4byte gUnknown_081762C8
	THUMB_FUNC_END sub_080DDEC8

	THUMB_FUNC_START sub_080DDF00
sub_080DDF00: @ 0x080DDF00
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r2, _080DDF58  @ =gRam
	ldr r0, _080DDF5C  @ =0x00001172
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r3, #0
	add r5, r2, #0
	ldr r1, _080DDF60  @ =0x000009DA
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _080DDF64  @ =gUnknown_08176370
_080DDF20:
	add r0, r3, r2
	ldrb r0, [r0]
	cmp r1, r0
	beq _080DDF32
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #0
	bne _080DDF20
_080DDF32:
	ldr r1, _080DDF68  @ =0x00001052
	add r0, r5, r1
	add r2, r4, r0
	strb r3, [r2]
	cmp r3, #0
	bne _080DDF52
	ldr r1, _080DDF6C  @ =0x00000F02
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080DDF52
	add r0, r3, #1
	strb r0, [r2]
_080DDF52:
	pop {r4,r5}
	pop {r0}
	bx r0
_080DDF58:
	.4byte gRam
_080DDF5C:
	.4byte 0x00001172
_080DDF60:
	.4byte 0x000009DA
_080DDF64:
	.4byte gUnknown_08176370
_080DDF68:
	.4byte 0x00001052
_080DDF6C:
	.4byte 0x00000F02
	THUMB_FUNC_END sub_080DDF00

	THUMB_FUNC_START sub_080DDF70
sub_080DDF70: @ 0x080DDF70
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r2, _080DDFC4  @ =gRam
	ldr r1, _080DDFC8  @ =0x00000FC2
	add r0, r2, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080DDFB0
	ldr r1, _080DDFCC  @ =0x00000996
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #63
	and r0, r0, r1
	cmp r0, #0
	bne _080DDFA2
	ldr r1, _080DDFD0  @ =0x00001122
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r2, #64
	eor r1, r1, r2
	strb r1, [r0]
_080DDFA2:
	bl GetRandomInt
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DDFB0
	mov r0, #32
	strb r0, [r5]
_080DDFB0:
	mov r1, #166
	lsl r1, r1, #1
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9164
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080DDFC4:
	.4byte gRam
_080DDFC8:
	.4byte 0x00000FC2
_080DDFCC:
	.4byte 0x00000996
_080DDFD0:
	.4byte 0x00001122
	THUMB_FUNC_END sub_080DDF70

	THUMB_FUNC_START sub_080DDFD4
sub_080DDFD4: @ 0x080DDFD4
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	ldr r5, _080DE044  @ =gRam
	ldr r0, _080DE048  @ =0x00000F92
	add r2, r5, r0
	add r2, r4, r2
	ldr r1, _080DE04C  @ =0x00000996
	add r0, r5, r1
	ldrb r0, [r0]
	lsr r0, r0, #1
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r2, _080DE050  @ =0x00001142
	add r0, r5, r2
	add r3, r4, r0
	ldrb r1, [r3]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080DE00C
	mov r0, #0
	strb r0, [r3]
_080DE00C:
	ldr r1, _080DE054  @ =0x00001152
	add r0, r5, r1
	add r2, r4, r0
	ldr r4, _080DE058  @ =gUnknown_081763B0
	mov r1, #0
	ldrb r0, [r3]
	cmp r0, #3
	bls _080DE01E
	mov r1, #1
_080DE01E:
	add r0, r1, r4
	ldrb r0, [r0]
	ldrb r1, [r2]
	add r0, r0, r1
	strb r0, [r2]
	ldr r1, _080DE05C  @ =gUnknown_081763B4
	ldr r2, _080DE060  @ =0x00000F52
	add r0, r5, r2
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r6, #0
	bl _call_via_r1
	pop {r4-r6}
	pop {r0}
	bx r0
_080DE044:
	.4byte gRam
_080DE048:
	.4byte 0x00000F92
_080DE04C:
	.4byte 0x00000996
_080DE050:
	.4byte 0x00001142
_080DE054:
	.4byte 0x00001152
_080DE058:
	.4byte gUnknown_081763B0
_080DE05C:
	.4byte gUnknown_081763B4
_080DE060:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DDFD4

	THUMB_FUNC_START sub_080DE064
sub_080DE064: @ 0x080DE064
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl sub_080DE380
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DE0BC
	add r0, r4, #0
	bl sub_080C5080
	ldr r3, _080DE0C4  @ =gRam
	ldr r1, _080DE0C8  @ =0x00000FC2
	add r0, r3, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DE0A6
	ldr r0, _080DE0CC  @ =0x00000F92
	add r2, r3, r0
	add r2, r4, r2
	ldr r1, _080DE0D0  @ =0x00000996
	add r0, r3, r1
	ldrb r0, [r0]
	lsr r0, r0, #4
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
_080DE0A6:
	ldr r1, _080DE0D4  @ =gUnknown_08176378
	ldr r2, _080DE0D8  @ =0x00001052
	add r0, r3, r2
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
_080DE0BC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DE0C4:
	.4byte gRam
_080DE0C8:
	.4byte 0x00000FC2
_080DE0CC:
	.4byte 0x00000F92
_080DE0D0:
	.4byte 0x00000996
_080DE0D4:
	.4byte gUnknown_08176378
_080DE0D8:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080DE064

	THUMB_FUNC_START sub_080DE0DC
sub_080DE0DC: @ 0x080DE0DC
	push {lr}
	bl sub_080AA868
	cmp r0, #19
	bgt _080DE0EA
	mov r0, #0
	b _080DE0F4
_080DE0EA:
	mov r0, #20
	neg r0, r0
	bl sub_080AA83C
	mov r0, #1
_080DE0F4:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080DE0DC

	THUMB_FUNC_START sub_080DE0F8
sub_080DE0F8: @ 0x080DE0F8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080DE118  @ =gUnknown_0817638C
	ldr r1, _080DE11C  @ =gRam
	ldr r3, _080DE120  @ =0x00000F52
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080DE118:
	.4byte gUnknown_0817638C
_080DE11C:
	.4byte gRam
_080DE120:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DE0F8

	THUMB_FUNC_START sub_080DE124
sub_080DE124: @ 0x080DE124
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080DE144  @ =gUnknown_08176398
	ldr r1, _080DE148  @ =gRam
	ldr r3, _080DE14C  @ =0x00000F52
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080DE144:
	.4byte gUnknown_08176398
_080DE148:
	.4byte gRam
_080DE14C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DE124

	THUMB_FUNC_START sub_080DE150
sub_080DE150: @ 0x080DE150
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080DE170  @ =gUnknown_081763A4
	ldr r1, _080DE174  @ =gRam
	ldr r3, _080DE178  @ =0x00000F52
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080DE170:
	.4byte gUnknown_081763A4
_080DE174:
	.4byte gRam
_080DE178:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DE150

	THUMB_FUNC_START sub_080DE17C
sub_080DE17C: @ 0x080DE17C
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r1, _080DE1AC  @ =0x00000101
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9164
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DE1A2
	ldr r1, _080DE1B0  @ =gRam
	ldr r0, _080DE1B4  @ =0x00000F52
	add r1, r1, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080DE1A2:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DE1AC:
	.4byte 0x00000101
_080DE1B0:
	.4byte gRam
_080DE1B4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DE17C

	THUMB_FUNC_START sub_080DE1B8
sub_080DE1B8: @ 0x080DE1B8
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DE1EC  @ =gRam
	ldr r1, _080DE1F0  @ =0x00001AE2
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DE1D4
	bl sub_080DE0DC
	cmp r0, #0
	bne _080DE1FC
_080DE1D4:
	ldr r1, _080DE1F4  @ =0x00000103
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080DE1F8  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	b _080DE214
	.byte 0x00
	.byte 0x00
_080DE1EC:
	.4byte gRam
_080DE1F0:
	.4byte 0x00001AE2
_080DE1F4:
	.4byte 0x00000103
_080DE1F8:
	.4byte 0x00000F52
_080DE1FC:
	mov r1, #129
	lsl r1, r1, #1
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r0, _080DE21C  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080DE214:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080DE21C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DE1B8

	THUMB_FUNC_START sub_080DE220
sub_080DE220: @ 0x080DE220
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080DE238  @ =gHeartsFiller
	mov r1, #160
	strb r1, [r2]
	ldr r1, _080DE23C  @ =gRam
	ldr r2, _080DE240  @ =0x00000F52
	add r1, r1, r2
	add r0, r0, r1
	mov r1, #0
	strb r1, [r0]
	bx lr
_080DE238:
	.4byte gHeartsFiller
_080DE23C:
	.4byte gRam
_080DE240:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DE220

	THUMB_FUNC_START sub_080DE244
sub_080DE244: @ 0x080DE244
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DE278  @ =gRam
	ldr r1, _080DE27C  @ =0x00001AE2
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DE260
	bl sub_080DE0DC
	cmp r0, #0
	bne _080DE288
_080DE260:
	ldr r1, _080DE280  @ =0x00000103
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080DE284  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	b _080DE2A0
	.byte 0x00
	.byte 0x00
_080DE278:
	.4byte gRam
_080DE27C:
	.4byte 0x00001AE2
_080DE280:
	.4byte 0x00000103
_080DE284:
	.4byte 0x00000F52
_080DE288:
	mov r1, #130
	lsl r1, r1, #1
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r0, _080DE2A8  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080DE2A0:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080DE2A8:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DE244

	THUMB_FUNC_START sub_080DE2AC
sub_080DE2AC: @ 0x080DE2AC
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DE2E0  @ =gRam
	ldr r1, _080DE2E4  @ =0x00001AE2
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DE2C8
	bl sub_080DE0DC
	cmp r0, #0
	bne _080DE2F0
_080DE2C8:
	ldr r1, _080DE2E8  @ =0x00000103
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080DE2EC  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	b _080DE306
	.byte 0x00
	.byte 0x00
_080DE2E0:
	.4byte gRam
_080DE2E4:
	.4byte 0x00001AE2
_080DE2E8:
	.4byte 0x00000103
_080DE2EC:
	.4byte 0x00000F52
_080DE2F0:
	ldr r1, _080DE310  @ =0x00000105
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r0, _080DE314  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080DE306:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DE310:
	.4byte 0x00000105
_080DE314:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DE2AC

	THUMB_FUNC_START sub_080DE318
sub_080DE318: @ 0x080DE318
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DE34C  @ =gRam
	ldr r1, _080DE350  @ =0x00001AE2
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DE334
	bl sub_080DE0DC
	cmp r0, #0
	bne _080DE35C
_080DE334:
	ldr r1, _080DE354  @ =0x00000103
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080DE358  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	b _080DE374
	.byte 0x00
	.byte 0x00
_080DE34C:
	.4byte gRam
_080DE350:
	.4byte 0x00001AE2
_080DE354:
	.4byte 0x00000103
_080DE358:
	.4byte 0x00000F52
_080DE35C:
	mov r1, #131
	lsl r1, r1, #1
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r0, _080DE37C  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080DE374:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080DE37C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DE318

	THUMB_FUNC_START sub_080DE380
sub_080DE380: @ 0x080DE380
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r2, _080DE3C0  @ =gRam
	ldr r0, _080DE3C4  @ =0x0000096C
	add r1, r2, r0
	mov r0, #1
	strh r0, [r1]
	ldr r1, _080DE3C8  @ =0x00001052
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r0, _080DE3CC  @ =0x00000F92
	add r2, r2, r0
	add r2, r4, r2
	lsl r1, r1, #1
	ldrb r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r0, _080DE3D0  @ =gUnknown_081763C0
	add r1, r1, r0
	add r0, r4, #0
	bl sub_080C94D0
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DE3C0:
	.4byte gRam
_080DE3C4:
	.4byte 0x0000096C
_080DE3C8:
	.4byte 0x00001052
_080DE3CC:
	.4byte 0x00000F92
_080DE3D0:
	.4byte gUnknown_081763C0
	THUMB_FUNC_END sub_080DE380

	THUMB_FUNC_START sub_080DE3D4
sub_080DE3D4: @ 0x080DE3D4
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _080DE40C  @ =gRam
	ldr r0, _080DE410  @ =0x00001172
	add r1, r3, r0
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080DE414  @ =0x000009DA
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #10
	bne _080DE408
	ldr r0, _080DE418  @ =0x00001052
	add r1, r3, r0
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080DE41C  @ =0x00001122
	add r0, r3, r1
	add r0, r2, r0
	mov r1, #11
	strb r1, [r0]
_080DE408:
	pop {r0}
	bx r0
_080DE40C:
	.4byte gRam
_080DE410:
	.4byte 0x00001172
_080DE414:
	.4byte 0x000009DA
_080DE418:
	.4byte 0x00001052
_080DE41C:
	.4byte 0x00001122
	THUMB_FUNC_END sub_080DE3D4

	THUMB_FUNC_START sub_080DE420
sub_080DE420: @ 0x080DE420
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _080DE474  @ =gRam
	ldr r1, _080DE478  @ =0x0000165F
	add r5, r0, r1
	ldrb r1, [r5]
	mov r6, #32
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _080DE45E
	ldr r0, _080DE47C  @ =gSword
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080DE4A4
	ldr r0, _080DE480  @ =gPendantCount
	ldrb r0, [r0]
	mov r1, #7
	and r1, r1, r0
	cmp r1, #7
	beq _080DE494
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	bne _080DE48E
	ldr r0, _080DE484  @ =gBookOfMudora
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DE488
_080DE45E:
	mov r1, #148
	lsl r1, r1, #1
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9164
	ldrb r0, [r5]
	orr r0, r0, r6
	strb r0, [r5]
	b _080DE4AE
	.byte 0x00
	.byte 0x00
_080DE474:
	.4byte gRam
_080DE478:
	.4byte 0x0000165F
_080DE47C:
	.4byte gSword
_080DE480:
	.4byte gPendantCount
_080DE484:
	.4byte gBookOfMudora
_080DE488:
	mov r1, #149
	lsl r1, r1, #1
	b _080DE496
_080DE48E:
	mov r1, #150
	lsl r1, r1, #1
	b _080DE496
_080DE494:
	ldr r1, _080DE4A0  @ =0x00000129
_080DE496:
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9164
	b _080DE4AE
_080DE4A0:
	.4byte 0x00000129
_080DE4A4:
	ldr r1, _080DE4BC  @ =0x0000012B
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9164
_080DE4AE:
	add r0, r4, #0
	bl sub_080DE60C
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080DE4BC:
	.4byte 0x0000012B
	THUMB_FUNC_END sub_080DE420

	THUMB_FUNC_START sub_080DE4C0
sub_080DE4C0: @ 0x080DE4C0
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _080DE4FC  @ =gPendantCount
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _080DE564
	ldr r0, _080DE500  @ =gBoots
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DE524
	ldr r0, _080DE504  @ =gIceRod
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DE518
	mov r0, #7
	and r0, r0, r1
	cmp r0, #7
	bne _080DE512
	ldr r0, _080DE508  @ =gSword
	ldrb r0, [r0]
	cmp r0, #1
	bls _080DE50C
	add r0, r4, #0
	mov r1, #52
	b _080DE51C
	.byte 0x00
	.byte 0x00
_080DE4FC:
	.4byte gPendantCount
_080DE500:
	.4byte gBoots
_080DE504:
	.4byte gIceRod
_080DE508:
	.4byte gSword
_080DE50C:
	add r0, r4, #0
	mov r1, #51
	b _080DE51C
_080DE512:
	add r0, r4, #0
	mov r1, #55
	b _080DE51C
_080DE518:
	add r0, r4, #0
	mov r1, #58
_080DE51C:
	mov r2, sp
	bl sub_080C9164
	b _080DE582
_080DE524:
	ldr r2, _080DE558  @ =gUnknown_08176428
	ldr r5, _080DE55C  @ =gRam
	mov r1, #179
	lsl r1, r1, #5
	add r0, r5, r1
	ldrb r0, [r0]
	mov r1, #0
	cmp r0, #2
	bls _080DE538
	mov r1, #2
_080DE538:
	add r0, r1, r2
	ldrh r1, [r0]
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9164
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DE582
	ldr r0, _080DE560  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #2
	b _080DE580
	.byte 0x00
	.byte 0x00
_080DE558:
	.4byte gUnknown_08176428
_080DE55C:
	.4byte gRam
_080DE560:
	.4byte 0x00000F52
_080DE564:
	add r0, r4, #0
	mov r1, #53
	mov r2, sp
	bl sub_080C9164
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DE582
	ldr r1, _080DE590  @ =gRam
	ldr r0, _080DE594  @ =0x00000F52
	add r1, r1, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
_080DE580:
	strb r0, [r1]
_080DE582:
	add r0, r4, #0
	bl sub_080DE60C
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080DE590:
	.4byte gRam
_080DE594:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DE4C0

	THUMB_FUNC_START sub_080DE598
sub_080DE598: @ 0x080DE598
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080DE6E0
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DE5CE
	add r0, r4, #0
	bl sub_080C5080
	ldr r1, _080DE5D4  @ =gUnknown_08176410
	ldr r0, _080DE5D8  @ =gRam
	ldr r2, _080DE5DC  @ =0x00001052
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080DE5CE:
	pop {r4}
	pop {r0}
	bx r0
_080DE5D4:
	.4byte gUnknown_08176410
_080DE5D8:
	.4byte gRam
_080DE5DC:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080DE598

	THUMB_FUNC_START sub_080DE5E0
sub_080DE5E0: @ 0x080DE5E0
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080DE600  @ =gUnknown_08176418
	ldr r1, _080DE604  @ =gRam
	ldr r3, _080DE608  @ =0x00000F52
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080DE600:
	.4byte gUnknown_08176418
_080DE604:
	.4byte gRam
_080DE608:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DE5E0

	THUMB_FUNC_START sub_080DE60C
sub_080DE60C: @ 0x080DE60C
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080DE628  @ =gRam
	ldr r3, _080DE62C  @ =0x00000F92
	add r2, r1, r3
	add r0, r0, r2
	ldr r2, _080DE630  @ =0x00000996
	add r1, r1, r2
	ldrb r1, [r1]
	lsr r1, r1, #5
	mov r2, #1
	and r1, r1, r2
	strb r1, [r0]
	bx lr
_080DE628:
	.4byte gRam
_080DE62C:
	.4byte 0x00000F92
_080DE630:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080DE60C

	THUMB_FUNC_START sub_080DE634
sub_080DE634: @ 0x080DE634
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	mov r1, #54
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080DE668  @ =gRam
	ldr r2, _080DE66C  @ =0x00000F52
	add r0, r1, r2
	add r4, r4, r0
	mov r0, #0
	strb r0, [r4]
	mov r0, #179
	lsl r0, r0, #5
	add r1, r1, r0
	mov r0, #3
	strb r0, [r1]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DE668:
	.4byte gRam
_080DE66C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DE634

	THUMB_FUNC_START sub_080DE670
sub_080DE670: @ 0x080DE670
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r5, _080DE6A4  @ =gRam
	ldr r0, _080DE6A8  @ =0x00001776
	add r1, r5, r0
	mov r0, #0
	strb r0, [r1]
	mov r0, #75
	bl sub_080A1588
	ldr r1, _080DE6AC  @ =0x00000F52
	add r0, r5, r1
	add r4, r4, r0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #179
	lsl r0, r0, #5
	add r5, r5, r0
	mov r0, #3
	strb r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
_080DE6A4:
	.4byte gRam
_080DE6A8:
	.4byte 0x00001776
_080DE6AC:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DE670

	THUMB_FUNC_START sub_080DE6B0
sub_080DE6B0: @ 0x080DE6B0
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	mov r1, #58
	mov r2, sp
	bl sub_080C9564
	ldr r0, _080DE6D8  @ =gRam
	ldr r1, _080DE6DC  @ =0x00000F52
	add r0, r0, r1
	add r4, r4, r0
	mov r0, #0
	strb r0, [r4]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_080DE6D8:
	.4byte gRam
_080DE6DC:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DE6B0

	THUMB_FUNC_START sub_080DE6E0
sub_080DE6E0: @ 0x080DE6E0
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r0, _080DE714  @ =gRam
	ldr r1, _080DE718  @ =0x0000096C
	add r2, r0, r1
	mov r1, #2
	strh r1, [r2]
	ldr r1, _080DE71C  @ =0x00000F92
	add r0, r0, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldr r0, _080DE720  @ =gUnknown_0817642C
	add r1, r1, r0
	add r0, r4, #0
	bl sub_080C94D0
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DE714:
	.4byte gRam
_080DE718:
	.4byte 0x0000096C
_080DE71C:
	.4byte 0x00000F92
_080DE720:
	.4byte gUnknown_0817642C
	THUMB_FUNC_END sub_080DE6E0

	THUMB_FUNC_START sub_080DE724
sub_080DE724: @ 0x080DE724
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r5, r0, #0
	ldr r4, _080DE820  @ =gRam
	ldr r0, _080DE824  @ =0x00001172
	add r6, r4, r0
	add r1, r5, r6
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #181
	add r1, r5, #0
	bl sub_080CA538
	add r2, r0, #0
	cmp r2, #0
	blt _080DE79C
	mov r3, #150
	lsl r3, r3, #4
	add r1, r4, r3
	ldrh r0, [r1]
	sub r0, r0, #24
	strh r0, [r1]
	ldr r3, _080DE828  @ =0x00000EE2
	add r0, r4, r3
	add r0, r2, r0
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DE82C  @ =0x00000F02
	add r0, r4, r1
	add r0, r2, r0
	ldr r3, _080DE830  @ =0x00000961
	add r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _080DE834  @ =0x00000964
	add r1, r4, r0
	ldrh r0, [r1]
	sub r0, r0, #24
	strh r0, [r1]
	ldr r3, _080DE838  @ =0x00000ED2
	add r0, r4, r3
	add r0, r2, r0
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DE83C  @ =0x00000EF2
	add r0, r4, r1
	add r0, r2, r0
	ldr r3, _080DE840  @ =0x00000965
	add r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DE844  @ =0x00001052
	add r0, r4, r1
	add r0, r2, r0
	mov r1, #1
	strb r1, [r0]
	add r0, r2, r6
	strb r1, [r0]
_080DE79C:
	ldr r0, _080DE848  @ =gCrystalCount
	ldrb r1, [r0]
	mov r0, #5
	and r0, r0, r1
	cmp r0, #5
	bne _080DE818
	ldr r3, _080DE84C  @ =0x00001662
	add r0, r4, r3
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _080DE818
	mov r0, #181
	add r1, r5, #0
	bl sub_080CA538
	add r2, r0, #0
	cmp r2, #0
	blt _080DE818
	mov r0, #150
	lsl r0, r0, #4
	add r1, r4, r0
	ldrh r0, [r1]
	sub r0, r0, #56
	strh r0, [r1]
	ldr r3, _080DE828  @ =0x00000EE2
	add r0, r4, r3
	add r0, r2, r0
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DE82C  @ =0x00000F02
	add r0, r4, r1
	add r0, r2, r0
	ldr r3, _080DE830  @ =0x00000961
	add r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _080DE834  @ =0x00000964
	add r1, r4, r0
	ldrh r0, [r1]
	sub r0, r0, #24
	strh r0, [r1]
	ldr r3, _080DE838  @ =0x00000ED2
	add r0, r4, r3
	add r0, r2, r0
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DE83C  @ =0x00000EF2
	add r0, r4, r1
	add r0, r2, r0
	ldr r3, _080DE840  @ =0x00000965
	add r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DE844  @ =0x00001052
	add r0, r4, r1
	add r0, r2, r0
	mov r1, #2
	strb r1, [r0]
	add r0, r2, r6
	strb r1, [r0]
_080DE818:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DE820:
	.4byte gRam
_080DE824:
	.4byte 0x00001172
_080DE828:
	.4byte 0x00000EE2
_080DE82C:
	.4byte 0x00000F02
_080DE830:
	.4byte 0x00000961
_080DE834:
	.4byte 0x00000964
_080DE838:
	.4byte 0x00000ED2
_080DE83C:
	.4byte 0x00000EF2
_080DE840:
	.4byte 0x00000965
_080DE844:
	.4byte 0x00001052
_080DE848:
	.4byte gCrystalCount
_080DE84C:
	.4byte 0x00001662
	THUMB_FUNC_END sub_080DE724

	THUMB_FUNC_START sub_080DE850
sub_080DE850: @ 0x080DE850
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080DEBF4
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DE90A
	ldr r5, _080DE8AC  @ =gRam
	ldr r1, _080DE8B0  @ =0x00000FC2
	add r0, r5, r1
	add r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DE8D2
	ldr r0, _080DE8B4  @ =0x00001062
	add r2, r5, r0
	add r2, r4, r2
	ldrb r3, [r2]
	add r0, r3, #1
	mov r1, #7
	and r0, r0, r1
	strb r0, [r2]
	ldr r0, _080DE8B8  @ =gUnknown_08176460
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r6]
	ldr r0, _080DE8BC  @ =0x00000F92
	add r1, r5, r0
	add r1, r4, r1
	ldr r0, _080DE8C0  @ =gUnknown_08176468
	add r3, r3, r0
	ldrb r0, [r3]
	strb r0, [r1]
	cmp r0, #0
	beq _080DE8C4
	add r0, r4, #0
	mov r1, #68
	bl sub_080CF140
	b _080DE8D2
_080DE8AC:
	.4byte gRam
_080DE8B0:
	.4byte 0x00000FC2
_080DE8B4:
	.4byte 0x00001062
_080DE8B8:
	.4byte gUnknown_08176460
_080DE8BC:
	.4byte 0x00000F92
_080DE8C0:
	.4byte gUnknown_08176468
_080DE8C4:
	add r0, r4, #0
	mov r1, #67
	bl sub_080CF140
	add r0, r4, #0
	bl sub_080DEA74
_080DE8D2:
	mov r2, #0
	ldr r0, _080DE914  @ =gCrystalCount
	ldrb r1, [r0]
	mov r0, #5
	and r0, r0, r1
	cmp r0, #5
	bne _080DE8F4
	ldr r0, _080DE918  @ =gRam
	ldr r1, _080DE91C  @ =0x00001662
	add r0, r0, r1
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	neg r0, r0
	lsr r2, r0, #31
_080DE8F4:
	ldr r0, _080DE920  @ =gUnknown_0817645C
	lsl r1, r2, #1
	add r1, r1, r0
	ldrh r1, [r1]
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9164
	add r0, r4, #0
	bl sub_080C5080
_080DE90A:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DE914:
	.4byte gCrystalCount
_080DE918:
	.4byte gRam
_080DE91C:
	.4byte 0x00001662
_080DE920:
	.4byte gUnknown_0817645C
	THUMB_FUNC_END sub_080DE850

	THUMB_FUNC_START sub_080DE924
sub_080DE924: @ 0x080DE924
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl sub_080DEBF4
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _080DE9BE
	add r0, r4, #0
	bl sub_080C5080
	add r0, r4, #0
	bl sub_0810EFC0
	cmp r0, #0
	beq _080DE9BE
	ldr r1, _080DE978  @ =gUnknown_0816B588
	ldr r0, _080DE97C  @ =gBombUpgrades
	ldrb r0, [r0]
	add r0, r0, r1
	ldr r1, _080DE980  @ =gBombs
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080DE988
	ldr r1, _080DE984  @ =0x00000171
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	add r0, r4, #0
	mov r1, #64
	bl sub_080CF0AC
	b _080DE9BE
_080DE978:
	.4byte gUnknown_0816B588
_080DE97C:
	.4byte gBombUpgrades
_080DE980:
	.4byte gBombs
_080DE984:
	.4byte 0x00000171
_080DE988:
	mov r0, #100
	bl sub_0810EF98
	cmp r0, #0
	bne _080DE99A
	add r0, r4, #0
	bl sub_0810F000
	b _080DE9BE
_080DE99A:
	ldr r1, _080DE9C8  @ =gBombFiller
	mov r0, #27
	strb r0, [r1]
	ldr r0, _080DE9CC  @ =gRam
	ldr r1, _080DE9D0  @ =0x00000FA2
	add r0, r0, r1
	add r0, r5, r0
	strb r6, [r0]
	mov r1, #142
	lsl r1, r1, #1
	add r0, r5, #0
	mov r2, sp
	bl sub_080C9564
	add r0, r5, #0
	mov r1, #40
	bl sub_0810EF44
_080DE9BE:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DE9C8:
	.4byte gBombFiller
_080DE9CC:
	.4byte gRam
_080DE9D0:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080DE924

	THUMB_FUNC_START sub_080DE9D4
sub_080DE9D4: @ 0x080DE9D4
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	mov r0, #4
	bl sub_080CF3A0
	add r0, r4, #0
	bl sub_080C58F0
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DEA4E
	ldr r5, _080DEA54  @ =gRam
	ldr r0, _080DEA58  @ =0x00001122
	add r2, r5, r0
	add r2, r4, r2
	ldrb r0, [r2]
	mov r1, #48
	and r1, r1, r0
	strb r1, [r2]
	ldr r3, _080DEA5C  @ =gUnknown_08176470
	ldr r6, _080DEA60  @ =0x00000996
	add r0, r5, r6
	ldrb r0, [r0]
	lsr r0, r0, #2
	mov r6, #3
	and r0, r0, r6
	add r0, r0, r3
	ldrb r0, [r0]
	orr r1, r1, r0
	strb r1, [r2]
	ldr r0, _080DEA64  @ =0x00001152
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r1, _080DEA68  @ =0x00000FC2
	add r0, r5, r1
	add r2, r4, r0
	ldrb r1, [r2]
	cmp r1, #0
	bne _080DEA40
	ldr r3, _080DEA6C  @ =0x00000FA2
	add r0, r5, r3
	add r0, r4, r0
	strb r1, [r0]
_080DEA40:
	ldr r0, _080DEA70  @ =0x00000F92
	add r1, r5, r0
	add r1, r7, r1
	ldrb r0, [r2]
	lsr r0, r0, #3
	and r0, r0, r6
	strb r0, [r1]
_080DEA4E:
	pop {r4-r7}
	pop {r0}
	bx r0
_080DEA54:
	.4byte gRam
_080DEA58:
	.4byte 0x00001122
_080DEA5C:
	.4byte gUnknown_08176470
_080DEA60:
	.4byte 0x00000996
_080DEA64:
	.4byte 0x00001152
_080DEA68:
	.4byte 0x00000FC2
_080DEA6C:
	.4byte 0x00000FA2
_080DEA70:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080DE9D4

	THUMB_FUNC_START sub_080DEA74
sub_080DEA74: @ 0x080DEA74
	push {r4,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #181
	bl sub_080CA538
	ldr r3, _080DEB10  @ =gRam
	ldr r2, _080DEB14  @ =0x00001052
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #3
	strb r2, [r1]
	ldr r4, _080DEB18  @ =0x00001172
	add r1, r3, r4
	add r1, r0, r1
	strb r2, [r1]
	mov r1, #150
	lsl r1, r1, #4
	add r2, r3, r1
	ldrh r1, [r2]
	add r1, r1, #4
	strh r1, [r2]
	ldr r4, _080DEB1C  @ =0x00000EE2
	add r1, r3, r4
	add r1, r0, r1
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r2, _080DEB20  @ =0x00000F02
	add r1, r3, r2
	add r1, r0, r1
	ldr r4, _080DEB24  @ =0x00000961
	add r2, r3, r4
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r1, _080DEB28  @ =0x00000964
	add r2, r3, r1
	ldrh r1, [r2]
	add r1, r1, #16
	strh r1, [r2]
	ldr r4, _080DEB2C  @ =0x00000ED2
	add r1, r3, r4
	add r1, r0, r1
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r2, _080DEB30  @ =0x00000EF2
	add r1, r3, r2
	add r1, r0, r1
	ldr r4, _080DEB34  @ =0x00000965
	add r2, r3, r4
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r2, _080DEB38  @ =0x00001142
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #4
	strb r2, [r1]
	ldr r4, _080DEB3C  @ =0x00001152
	add r1, r3, r4
	add r1, r0, r1
	mov r2, #244
	strb r2, [r1]
	ldr r2, _080DEB40  @ =0x00000FC2
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #23
	strb r2, [r1]
	ldr r4, _080DEB44  @ =0x00001032
	add r3, r3, r4
	add r0, r0, r3
	ldrb r2, [r0]
	mov r1, #238
	and r1, r1, r2
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DEB10:
	.4byte gRam
_080DEB14:
	.4byte 0x00001052
_080DEB18:
	.4byte 0x00001172
_080DEB1C:
	.4byte 0x00000EE2
_080DEB20:
	.4byte 0x00000F02
_080DEB24:
	.4byte 0x00000961
_080DEB28:
	.4byte 0x00000964
_080DEB2C:
	.4byte 0x00000ED2
_080DEB30:
	.4byte 0x00000EF2
_080DEB34:
	.4byte 0x00000965
_080DEB38:
	.4byte 0x00001142
_080DEB3C:
	.4byte 0x00001152
_080DEB40:
	.4byte 0x00000FC2
_080DEB44:
	.4byte 0x00001032
	THUMB_FUNC_END sub_080DEA74

	THUMB_FUNC_START sub_080DEB48
sub_080DEB48: @ 0x080DEB48
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080DEB68  @ =gUnknown_0817644C
	ldr r1, _080DEB6C  @ =gRam
	ldr r3, _080DEB70  @ =0x00001052
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080DEB68:
	.4byte gUnknown_0817644C
_080DEB6C:
	.4byte gRam
_080DEB70:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080DEB48

	THUMB_FUNC_START sub_080DEB74
sub_080DEB74: @ 0x080DEB74
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl sub_080DEBF4
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _080DEBDA
	add r0, r4, #0
	bl sub_080C5080
	add r0, r4, #0
	bl sub_0810EFC0
	cmp r0, #0
	beq _080DEBDA
	mov r0, #100
	bl sub_0810EF98
	cmp r0, #0
	bne _080DEBB4
	add r0, r4, #0
	bl sub_0810F000
	b _080DEBDA
_080DEBB4:
	ldr r4, _080DEBE4  @ =gRam
	ldr r0, _080DEBE8  @ =0x00001663
	add r1, r4, r0
	mov r0, #13
	strb r0, [r1]
	bl sub_0812F9A8
	add r0, r5, #0
	bl sub_081146A4
	ldr r0, _080DEBEC  @ =0x00000FA2
	add r4, r4, r0
	add r4, r5, r4
	strb r6, [r4]
	ldr r1, _080DEBF0  @ =0x0000011D
	add r0, r5, #0
	mov r2, sp
	bl sub_080C9564
_080DEBDA:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DEBE4:
	.4byte gRam
_080DEBE8:
	.4byte 0x00001663
_080DEBEC:
	.4byte 0x00000FA2
_080DEBF0:
	.4byte 0x0000011D
	THUMB_FUNC_END sub_080DEB74

	THUMB_FUNC_START sub_080DEBF4
sub_080DEBF4: @ 0x080DEBF4
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r2, _080DEC34  @ =gRam
	ldr r0, _080DEC38  @ =0x0000096C
	add r1, r2, r0
	mov r0, #1
	strh r0, [r1]
	ldr r1, _080DEC3C  @ =0x00001052
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r0, _080DEC40  @ =0x00000F92
	add r2, r2, r0
	add r2, r4, r2
	lsl r1, r1, #1
	ldrb r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r0, _080DEC44  @ =gUnknown_08176474
	add r1, r1, r0
	add r0, r4, #0
	bl sub_080C94D0
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DEC34:
	.4byte gRam
_080DEC38:
	.4byte 0x0000096C
_080DEC3C:
	.4byte 0x00001052
_080DEC40:
	.4byte 0x00000F92
_080DEC44:
	.4byte gUnknown_08176474
	THUMB_FUNC_END sub_080DEBF4

	THUMB_FUNC_START sub_080DEC48
sub_080DEC48: @ 0x080DEC48
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C6340
	add r0, r4, #0
	bl sub_080C6240
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DEC68
	b _080DEF0A
_080DEC68:
	add r0, r4, #0
	bl sub_080DF1D0
	ldr r5, _080DECAC  @ =gRam
	ldr r0, _080DECB0  @ =0x00001122
	add r2, r5, r0
	add r2, r4, r2
	ldrb r0, [r2]
	mov r1, #127
	and r1, r1, r0
	ldr r3, _080DECB4  @ =0x00001082
	add r0, r5, r3
	add r0, r4, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	strb r1, [r2]
	add r0, r4, #0
	bl sub_080C99DC
	add r0, r4, #0
	bl sub_080C7A20
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _080DED00
	mov r6, #0
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	beq _080DECB8
	mov r6, #1
	b _080DECC6
	.byte 0x00
	.byte 0x00
_080DECAC:
	.4byte gRam
_080DECB0:
	.4byte 0x00001122
_080DECB4:
	.4byte 0x00001082
_080DECB8:
	ldr r0, _080DED98  @ =0x00000F12
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	mvn r0, r0
	add r0, r0, #1
	strb r0, [r1]
_080DECC6:
	ldr r0, _080DED9C  @ =gRam
	ldr r1, _080DEDA0  @ =0x00001062
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DECDE
	add r0, r4, #0
	bl sub_080DF3EC
	cmp r6, #0
	beq _080DED00
_080DECDE:
	ldr r2, _080DED9C  @ =gRam
	ldr r3, _080DEDA4  @ =0x00000F22
	add r1, r2, r3
	add r1, r4, r1
	ldrb r0, [r1]
	mvn r0, r0
	add r0, r0, #1
	strb r0, [r1]
	ldr r6, _080DEDA0  @ =0x00001062
	add r2, r2, r6
	add r2, r4, r2
	ldrb r0, [r2]
	cmp r0, #0
	beq _080DED00
	add r0, r4, #0
	bl sub_080DF3EC
_080DED00:
	ldr r1, _080DED9C  @ =gRam
	ldr r2, _080DEDA8  @ =0x00001152
	add r0, r1, r2
	add r2, r4, r0
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	ldr r3, _080DEDAC  @ =0x00001142
	add r1, r1, r3
	add r3, r4, r1
	ldrb r1, [r3]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080DED44
	mov r0, #0
	strb r0, [r3]
	ldrb r0, [r2]
	mvn r0, r0
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r0, r0, #1
	asr r0, r0, #2
	strb r0, [r2]
	mov r1, #252
	and r0, r0, r1
	cmp r0, #0
	beq _080DED3E
	add r0, r4, #0
	bl sub_080DF3EC
_080DED3E:
	add r0, r4, #0
	bl sub_080DEF1C
_080DED44:
	ldr r5, _080DED9C  @ =gRam
	ldr r6, _080DEDA0  @ =0x00001062
	add r0, r5, r6
	add r2, r4, r0
	ldrb r6, [r2]
	cmp r6, #0
	beq _080DEDBC
	ldr r0, _080DEDA4  @ =0x00000F22
	add r1, r5, r0
	add r1, r4, r1
	ldr r3, _080DED98  @ =0x00000F12
	add r0, r5, r3
	add r0, r4, r0
	ldrb r1, [r1]
	ldrb r0, [r0]
	orr r0, r0, r1
	cmp r0, #0
	bne _080DED6A
	b _080DEE8C
_080DED6A:
	ldr r6, _080DEDB0  @ =0x00000996
	add r0, r5, r6
	ldrb r0, [r0]
	add r1, r4, #0
	eor r1, r1, r0
	lsl r1, r1, #24
	ldr r0, _080DEDB4  @ =0x00000F92
	add r3, r5, r0
	add r3, r4, r3
	lsr r0, r1, #26
	mov r2, #1
	and r0, r0, r2
	strb r0, [r3]
	ldr r3, _080DEDB8  @ =0x00001082
	add r2, r5, r3
	add r2, r4, r2
	lsr r1, r1, #22
	mov r6, #128
	neg r6, r6
	add r0, r6, #0
	and r1, r1, r0
	strb r1, [r2]
	b _080DEF0A
_080DED98:
	.4byte 0x00000F12
_080DED9C:
	.4byte gRam
_080DEDA0:
	.4byte 0x00001062
_080DEDA4:
	.4byte 0x00000F22
_080DEDA8:
	.4byte 0x00001152
_080DEDAC:
	.4byte 0x00001142
_080DEDB0:
	.4byte 0x00000996
_080DEDB4:
	.4byte 0x00000F92
_080DEDB8:
	.4byte 0x00001082
_080DEDBC:
	ldr r1, _080DEE90  @ =0x00001082
	add r0, r5, r1
	add r7, r4, r0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080DEDCA
	b _080DEECC
_080DEDCA:
	add r0, r4, #0
	bl sub_080DF340
	ldr r2, _080DEE94  @ =0x00000996
	add r0, r5, r2
	ldrb r0, [r0]
	add r3, r4, #0
	eor r3, r3, r0
	lsl r3, r3, #24
	ldr r6, _080DEE98  @ =0x00000F92
	add r2, r5, r6
	add r2, r4, r2
	lsr r0, r3, #27
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	mov r0, #252
	lsl r0, r0, #22
	and r0, r0, r3
	cmp r0, #0
	bne _080DEE6C
	bl GetRandomInt
	ldr r2, _080DEE9C  @ =0x00000968
	add r1, r5, r2
	strb r0, [r1]
	ldr r3, _080DEEA0  @ =0x000016C5
	add r0, r5, r3
	ldrb r1, [r0]
	ldr r6, _080DEEA4  @ =0x00000969
	add r0, r5, r6
	strb r1, [r0]
	bl GetRandomInt
	ldr r2, _080DEEA8  @ =0x0000096C
	add r1, r5, r2
	strb r0, [r1]
	ldr r3, _080DEEAC  @ =0x000016C1
	add r0, r5, r3
	ldrb r1, [r0]
	add r6, r6, #4
	add r0, r5, r6
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #8
	bl sub_080C2DCC
	ldr r1, _080DEEB0  @ =0x00000F72
	add r0, r5, r1
	add r0, r4, r0
	ldr r2, _080DEEB4  @ =0x00000961
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r3, _080DEEB8  @ =0x00000F62
	add r1, r5, r3
	add r1, r4, r1
	sub r6, r6, #13
	add r0, r5, r6
	ldrb r0, [r0]
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DEE6C
	ldr r0, _080DEEBC  @ =0x00001122
	add r2, r5, r0
	add r2, r4, r2
	ldrb r1, [r2]
	mov r3, #64
	orr r1, r1, r3
	mov r0, #0
	orr r1, r1, r0
	strb r1, [r2]
	ldr r6, _080DEEC0  @ =0x00000F22
	add r0, r5, r6
	add r0, r4, r0
	ldrb r0, [r0]
	lsr r0, r0, #1
	and r0, r0, r3
	eor r1, r1, r0
	strb r1, [r2]
_080DEE6C:
	ldr r1, _080DEEC4  @ =gRam
	ldr r0, _080DEEC0  @ =0x00000F22
	add r2, r1, r0
	add r2, r4, r2
	ldr r3, _080DEEB0  @ =0x00000F72
	add r0, r1, r3
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r6, _080DEEC8  @ =0x00000F12
	add r2, r1, r6
	add r2, r4, r2
	ldr r0, _080DEEB8  @ =0x00000F62
	add r1, r1, r0
	add r1, r4, r1
	ldrb r0, [r1]
_080DEE8C:
	strb r0, [r2]
	b _080DEF0A
_080DEE90:
	.4byte 0x00001082
_080DEE94:
	.4byte 0x00000996
_080DEE98:
	.4byte 0x00000F92
_080DEE9C:
	.4byte 0x00000968
_080DEEA0:
	.4byte 0x000016C5
_080DEEA4:
	.4byte 0x00000969
_080DEEA8:
	.4byte 0x0000096C
_080DEEAC:
	.4byte 0x000016C1
_080DEEB0:
	.4byte 0x00000F72
_080DEEB4:
	.4byte 0x00000961
_080DEEB8:
	.4byte 0x00000F62
_080DEEBC:
	.4byte 0x00001122
_080DEEC0:
	.4byte 0x00000F22
_080DEEC4:
	.4byte gRam
_080DEEC8:
	.4byte 0x00000F12
_080DEECC:
	add r0, r4, #0
	bl sub_080DF340
	ldr r1, _080DEEE8  @ =0x00000996
	add r0, r5, r1
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DEEEC
	strb r6, [r7]
	b _080DEF0A
	.byte 0x00
	.byte 0x00
_080DEEE8:
	.4byte 0x00000996
_080DEEEC:
	ldr r3, _080DEF10  @ =0x00000F92
	add r2, r5, r3
	add r2, r4, r2
	lsr r0, r0, #26
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	ldr r1, _080DEF14  @ =0x00000F22
	add r0, r5, r1
	add r0, r4, r0
	strb r6, [r0]
	ldr r2, _080DEF18  @ =0x00000F12
	add r0, r5, r2
	add r0, r4, r0
	strb r6, [r0]
_080DEF0A:
	pop {r4-r7}
	pop {r0}
	bx r0
_080DEF10:
	.4byte 0x00000F92
_080DEF14:
	.4byte 0x00000F22
_080DEF18:
	.4byte 0x00000F12
	THUMB_FUNC_END sub_080DEC48

	THUMB_FUNC_START sub_080DEF1C
sub_080DEF1C: @ 0x080DEF1C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r4, r0, #0
	ldr r5, _080DEF60  @ =gRam
	ldr r1, _080DEF64  @ =0x00000F22
	add r0, r5, r1
	add r3, r4, r0
	ldrb r2, [r3]
	lsl r1, r2, #24
	cmp r1, #0
	beq _080DEF40
	ldr r0, _080DEF68  @ =gUnknown_081764B0
	lsr r1, r1, #31
	add r1, r1, r0
	ldrb r0, [r1]
	add r0, r2, r0
	strb r0, [r3]
_080DEF40:
	ldr r1, _080DEF6C  @ =0x00000F12
	add r0, r5, r1
	add r3, r4, r0
	ldrb r2, [r3]
	lsl r1, r2, #24
	cmp r1, #0
	beq _080DEF5A
	ldr r0, _080DEF68  @ =gUnknown_081764B0
	lsr r1, r1, #31
	add r1, r1, r0
	ldrb r0, [r1]
	add r0, r2, r0
	strb r0, [r3]
_080DEF5A:
	pop {r4,r5}
	pop {r0}
	bx r0
_080DEF60:
	.4byte gRam
_080DEF64:
	.4byte 0x00000F22
_080DEF68:
	.4byte gUnknown_081764B0
_080DEF6C:
	.4byte 0x00000F12
	THUMB_FUNC_END sub_080DEF1C

	THUMB_FUNC_START sub_080DEF70
sub_080DEF70: @ 0x080DEF70
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080DF398
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DEFE4
	add r0, r4, #0
	bl sub_080DF268
	add r0, r4, #0
	bl sub_080C99DC
	add r0, r4, #0
	bl sub_080C7A20
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _080DEFCC
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	beq _080DEFBC
	ldr r1, _080DEFB4  @ =gRam
	ldr r0, _080DEFB8  @ =0x00000F22
	add r1, r1, r0
	b _080DEFC2
	.byte 0x00
	.byte 0x00
_080DEFB4:
	.4byte gRam
_080DEFB8:
	.4byte 0x00000F22
_080DEFBC:
	ldr r1, _080DEFEC  @ =gRam
	ldr r2, _080DEFF0  @ =0x00000F12
	add r1, r1, r2
_080DEFC2:
	add r1, r4, r1
	ldrb r0, [r1]
	mvn r0, r0
	add r0, r0, #1
	strb r0, [r1]
_080DEFCC:
	ldr r1, _080DEFF4  @ =gUnknown_081764B4
	ldr r0, _080DEFEC  @ =gRam
	ldr r2, _080DEFF8  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080DEFE4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DEFEC:
	.4byte gRam
_080DEFF0:
	.4byte 0x00000F12
_080DEFF4:
	.4byte gUnknown_081764B4
_080DEFF8:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DEF70

	THUMB_FUNC_START sub_080DEFFC
sub_080DEFFC: @ 0x080DEFFC
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080DF100  @ =gRam
	ldr r1, _080DF104  @ =0x00000996
	add r0, r4, r1
	ldrb r0, [r0]
	add r2, r5, #0
	eor r2, r2, r0
	lsl r2, r2, #24
	ldr r3, _080DF108  @ =0x00000F92
	add r1, r4, r3
	add r1, r5, r1
	lsr r0, r2, #27
	mov r6, #1
	and r0, r0, r6
	strb r0, [r1]
	mov r0, #248
	lsl r0, r0, #21
	and r0, r0, r2
	cmp r0, #0
	bne _080DF0A0
	ldr r1, _080DF10C  @ =0x00001082
	add r0, r4, r1
	add r0, r5, r0
	ldrb r2, [r0]
	sub r3, r3, #176
	add r0, r4, r3
	add r0, r2, r0
	ldrb r1, [r0]
	ldr r3, _080DF110  @ =0x00000968
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080DF114  @ =0x00000F02
	add r0, r4, r1
	add r0, r2, r0
	ldrb r1, [r0]
	add r3, r3, #1
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080DF118  @ =0x00000ED2
	add r0, r4, r1
	add r0, r2, r0
	ldrb r1, [r0]
	add r3, r3, #3
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080DF11C  @ =0x00000EF2
	add r0, r4, r1
	add r0, r2, r0
	ldrb r1, [r0]
	ldr r2, _080DF120  @ =0x0000096D
	add r0, r4, r2
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #14
	bl sub_080C2DCC
	ldr r3, _080DF124  @ =0x00000F12
	add r0, r4, r3
	add r0, r5, r0
	mov r2, #150
	lsl r2, r2, #4
	add r1, r4, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r3, r3, #16
	add r0, r4, r3
	add r0, r5, r0
	add r2, r2, #1
	add r1, r4, r2
	ldrb r1, [r1]
	strb r1, [r0]
	lsl r0, r1, #24
	cmp r0, #0
	beq _080DF0A0
	add r3, r3, #144
	add r1, r4, r3
	add r1, r5, r1
	lsr r0, r0, #31
	and r0, r0, r6
	strb r0, [r1]
_080DF0A0:
	ldr r3, _080DF100  @ =gRam
	ldr r1, _080DF10C  @ =0x00001082
	add r0, r3, r1
	add r0, r5, r0
	ldrb r2, [r0]
	add r1, r1, #192
	add r0, r3, r1
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DF0F8
	ldr r0, _080DF128  @ =0x00000EE2
	add r1, r3, r0
	add r0, r5, r1
	add r1, r2, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	sub r0, r0, r1
	add r0, r0, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #15
	bhi _080DF0F8
	ldr r0, _080DF118  @ =0x00000ED2
	add r1, r3, r0
	add r0, r5, r1
	add r1, r2, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	sub r0, r0, r1
	add r0, r0, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #15
	bhi _080DF0F8
	ldr r2, _080DF12C  @ =0x00000F52
	add r1, r3, r2
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add r0, r5, #0
	bl sub_080DF3EC
_080DF0F8:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DF100:
	.4byte gRam
_080DF104:
	.4byte 0x00000996
_080DF108:
	.4byte 0x00000F92
_080DF10C:
	.4byte 0x00001082
_080DF110:
	.4byte 0x00000968
_080DF114:
	.4byte 0x00000F02
_080DF118:
	.4byte 0x00000ED2
_080DF11C:
	.4byte 0x00000EF2
_080DF120:
	.4byte 0x0000096D
_080DF124:
	.4byte 0x00000F12
_080DF128:
	.4byte 0x00000EE2
_080DF12C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DEFFC

	THUMB_FUNC_START sub_080DF130
sub_080DF130: @ 0x080DF130
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r5, _080DF1B0  @ =gRam
	ldr r0, _080DF1B4  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	mov r2, #0
	mov r8, r2
	strb r0, [r1]
	ldr r1, _080DF1B8  @ =0x00001082
	add r0, r5, r1
	add r0, r4, r0
	ldrb r6, [r0]
	ldr r0, _080DF1BC  @ =0x00000F22
	add r2, r5, r0
	add r1, r6, r2
	add r2, r4, r2
	ldrb r0, [r2]
	lsl r0, r0, #1
	strb r0, [r1]
	ldr r0, _080DF1C0  @ =0x00000F12
	add r1, r5, r0
	add r3, r6, r1
	add r1, r4, r1
	ldrb r0, [r1]
	lsl r0, r0, #1
	strb r0, [r3]
	mov r0, r8
	strb r0, [r2]
	strb r0, [r1]
	bl GetRandomInt
	ldr r1, _080DF1C4  @ =0x00001152
	add r2, r5, r1
	add r2, r6, r2
	mov r1, #31
	and r1, r1, r0
	strb r1, [r2]
	ldr r2, _080DF1C8  @ =0x00000FC2
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #96
	strb r1, [r0]
	ldr r1, _080DF1CC  @ =0x00000F92
	add r0, r5, r1
	add r4, r4, r0
	mov r0, #1
	strb r0, [r4]
	add r2, r2, #160
	add r5, r5, r2
	add r6, r6, r5
	strb r0, [r6]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DF1B0:
	.4byte gRam
_080DF1B4:
	.4byte 0x00000F52
_080DF1B8:
	.4byte 0x00001082
_080DF1BC:
	.4byte 0x00000F22
_080DF1C0:
	.4byte 0x00000F12
_080DF1C4:
	.4byte 0x00001152
_080DF1C8:
	.4byte 0x00000FC2
_080DF1CC:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080DF130

	THUMB_FUNC_START sub_080DF1D0
sub_080DF1D0: @ 0x080DF1D0
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DF248  @ =gRam
	ldr r1, _080DF24C  @ =0x000010E2
	add r0, r5, r1
	add r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DF23E
	ldr r1, _080DF250  @ =0x000009AC
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #26
	beq _080DF23E
	ldr r2, _080DF254  @ =gUnknown_08176500
	ldr r0, _080DF258  @ =gMoonPearl
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r1, [r0]
	add r0, r4, #0
	mov r2, sp
	bl sub_080C94F4
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DF23E
	ldr r0, _080DF25C  @ =0x00000F22
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	mvn r0, r0
	strb r0, [r1]
	ldr r0, _080DF260  @ =0x00000F12
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	mvn r0, r0
	strb r0, [r1]
	ldr r1, _080DF264  @ =0x00001062
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DF23A
	add r0, r4, #0
	mov r1, #121
	bl sub_080CF140
_080DF23A:
	mov r0, #64
	strb r0, [r6]
_080DF23E:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DF248:
	.4byte gRam
_080DF24C:
	.4byte 0x000010E2
_080DF250:
	.4byte 0x000009AC
_080DF254:
	.4byte gUnknown_08176500
_080DF258:
	.4byte gMoonPearl
_080DF25C:
	.4byte 0x00000F22
_080DF260:
	.4byte 0x00000F12
_080DF264:
	.4byte 0x00001062
	THUMB_FUNC_END sub_080DF1D0

	THUMB_FUNC_START sub_080DF268
sub_080DF268: @ 0x080DF268
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DF2CC  @ =gRam
	ldr r1, _080DF2D0  @ =0x000010E2
	add r0, r5, r1
	add r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DF2C2
	ldr r1, _080DF2D4  @ =0x000009AC
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #26
	beq _080DF2C2
	ldr r2, _080DF2D8  @ =gUnknown_08176504
	ldr r0, _080DF2DC  @ =gMoonPearl
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r1, [r0]
	add r0, r4, #0
	mov r2, sp
	bl sub_080C94F4
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DF2C2
	ldr r0, _080DF2E0  @ =0x00000F22
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	mvn r0, r0
	strb r0, [r1]
	ldr r0, _080DF2E4  @ =0x00000F12
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	mvn r0, r0
	strb r0, [r1]
	mov r0, #64
	strb r0, [r6]
_080DF2C2:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DF2CC:
	.4byte gRam
_080DF2D0:
	.4byte 0x000010E2
_080DF2D4:
	.4byte 0x000009AC
_080DF2D8:
	.4byte gUnknown_08176504
_080DF2DC:
	.4byte gMoonPearl
_080DF2E0:
	.4byte 0x00000F22
_080DF2E4:
	.4byte 0x00000F12
	THUMB_FUNC_END sub_080DF268

	THUMB_FUNC_START sub_080DF2E8
sub_080DF2E8: @ 0x080DF2E8
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080DF3FC
	ldr r0, _080DF30C  @ =gRam
	ldr r1, _080DF310  @ =0x00001172
	add r0, r0, r1
	add r4, r4, r0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DF30C:
	.4byte gRam
_080DF310:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080DF2E8

	THUMB_FUNC_START sub_080DF314
sub_080DF314: @ 0x080DF314
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080DF334  @ =gUnknown_081764A4
	ldr r1, _080DF338  @ =gRam
	ldr r3, _080DF33C  @ =0x00001052
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080DF334:
	.4byte gUnknown_081764A4
_080DF338:
	.4byte gRam
_080DF33C:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080DF314

	THUMB_FUNC_START sub_080DF340
sub_080DF340: @ 0x080DF340
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DF360
	add r0, r4, #0
	bl sub_080EAAF0
_080DF360:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080DF340

	THUMB_FUNC_START sub_080DF368
sub_080DF368: @ 0x080DF368
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _080DF38C  @ =gRam
	ldr r1, _080DF390  @ =0x00000FC2
	add r0, r3, r1
	add r0, r2, r0
	ldrb r1, [r0]
	cmp r1, #0
	bne _080DF384
	ldr r4, _080DF394  @ =0x00000F52
	add r0, r3, r4
	add r0, r2, r0
	strb r1, [r0]
_080DF384:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DF38C:
	.4byte gRam
_080DF390:
	.4byte 0x00000FC2
_080DF394:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DF368

	THUMB_FUNC_START sub_080DF398
sub_080DF398: @ 0x080DF398
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r2, _080DF3D8  @ =gRam
	ldr r0, _080DF3DC  @ =0x0000096C
	add r1, r2, r0
	mov r0, #2
	strh r0, [r1]
	ldr r1, _080DF3E0  @ =0x00000FB2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r0, _080DF3E4  @ =0x00000F92
	add r2, r2, r0
	add r2, r4, r2
	lsl r1, r1, #1
	ldrb r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #4
	ldr r0, _080DF3E8  @ =gUnknown_081764C0
	add r1, r1, r0
	add r0, r4, #0
	bl sub_080C94D0
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DF3D8:
	.4byte gRam
_080DF3DC:
	.4byte 0x0000096C
_080DF3E0:
	.4byte 0x00000FB2
_080DF3E4:
	.4byte 0x00000F92
_080DF3E8:
	.4byte gUnknown_081764C0
	THUMB_FUNC_END sub_080DF398

	THUMB_FUNC_START sub_080DF3EC
sub_080DF3EC: @ 0x080DF3EC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #121
	bl sub_080CF140
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080DF3EC

	THUMB_FUNC_START sub_080DF3FC
sub_080DF3FC: @ 0x080DF3FC
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r0, #185
	add r1, r5, #0
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080DF436
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r1, _080DF43C  @ =gRam
	ldr r2, _080DF440  @ =0x00001052
	add r0, r1, r2
	add r0, r4, r0
	mov r2, #2
	strb r2, [r0]
	ldr r2, _080DF444  @ =0x00001082
	add r0, r1, r2
	add r0, r4, r0
	strb r5, [r0]
	ldr r0, _080DF448  @ =0x00001172
	add r1, r1, r0
	add r1, r4, r1
	mov r0, #1
	strb r0, [r1]
_080DF436:
	pop {r4,r5}
	pop {r0}
	bx r0
_080DF43C:
	.4byte gRam
_080DF440:
	.4byte 0x00001052
_080DF444:
	.4byte 0x00001082
_080DF448:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080DF3FC

	THUMB_FUNC_START sub_080DF44C
sub_080DF44C: @ 0x080DF44C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	ldr r6, _080DF4A0  @ =gRam
	ldr r0, _080DF4A4  @ =0x00000F62
	add r7, r6, r0
	add r0, r4, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DF4B4
	ldr r1, _080DF4A8  @ =0x00000F82
	add r0, r6, r1
	add r2, r4, r0
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _080DF484
	ldr r3, _080DF4AC  @ =0x00000FA2
	add r0, r6, r3
	add r0, r4, r0
	strb r1, [r0]
_080DF484:
	ldr r0, _080DF4B0  @ =0x00000F92
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r2]
	lsr r0, r0, #3
	strb r0, [r1]
	mov r0, #4
	bl sub_080CF3A0
	add r0, r4, #0
	bl sub_080C58F0
	b _080DF632
	.byte 0x00
	.byte 0x00
_080DF4A0:
	.4byte gRam
_080DF4A4:
	.4byte 0x00000F62
_080DF4A8:
	.4byte 0x00000F82
_080DF4AC:
	.4byte 0x00000FA2
_080DF4B0:
	.4byte 0x00000F92
_080DF4B4:
	ldr r1, _080DF58C  @ =0x00000F72
	add r1, r1, r6
	mov r8, r1
	add r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DF4C4
	b _080DF5C8
_080DF4C4:
	add r0, r4, #0
	bl sub_080E0254
	ldr r3, _080DF590  @ =0x00000F92
	add r2, r6, r3
	add r2, r4, r2
	ldr r0, _080DF594  @ =0x00000996
	add r3, r6, r0
	ldrb r0, [r3]
	lsr r0, r0, #4
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	beq _080DF4EA
	b _080DF632
_080DF4EA:
	mov r0, #114
	add r1, r4, #0
	bl sub_080CA538
	add r5, r0, #0
	cmp r5, #0
	bge _080DF4FA
	b _080DF632
_080DF4FA:
	bl GetRandomInt
	mov r3, #7
	and r3, r3, r0
	mov r1, #150
	lsl r1, r1, #4
	add r2, r6, r1
	ldr r0, _080DF598  @ =gUnknown_081765BC
	add r0, r3, r0
	ldrh r1, [r2]
	ldrb r0, [r0]
	add r1, r1, r0
	mov r4, #0
	strh r1, [r2]
	ldr r1, _080DF59C  @ =0x00000EE2
	add r0, r6, r1
	add r0, r5, r0
	ldrb r1, [r2]
	strb r1, [r0]
	ldr r2, _080DF5A0  @ =0x00000F02
	add r0, r6, r2
	add r0, r5, r0
	ldr r2, _080DF5A4  @ =0x00000961
	add r1, r6, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _080DF5A8  @ =0x00000964
	add r1, r6, r0
	ldr r0, _080DF5AC  @ =gUnknown_081765C4
	add r3, r3, r0
	ldrh r0, [r1]
	ldrb r3, [r3]
	add r0, r0, r3
	strh r0, [r1]
	ldr r2, _080DF5B0  @ =0x00000ED2
	add r0, r6, r2
	add r0, r5, r0
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r3, _080DF5B4  @ =0x00000EF2
	add r0, r6, r3
	add r0, r5, r0
	ldr r2, _080DF5B8  @ =0x00000965
	add r1, r6, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r3, r3, #144
	add r0, r6, r3
	add r0, r5, r0
	mov r1, #31
	strb r1, [r0]
	add r0, r5, r7
	strb r1, [r0]
	ldr r1, _080DF5BC  @ =0x00001012
	add r0, r6, r1
	add r0, r5, r0
	strb r4, [r0]
	ldr r2, _080DF5C0  @ =0x00001032
	add r0, r6, r2
	add r0, r5, r0
	mov r1, #72
	strb r1, [r0]
	ldr r3, _080DF5C4  @ =0x00001122
	add r0, r6, r3
	add r0, r5, r0
	mov r1, #8
	strb r1, [r0]
	mov r0, r8
	add r1, r5, r0
	mov r0, #1
	strb r0, [r1]
	b _080DF632
	.byte 0x00
	.byte 0x00
_080DF58C:
	.4byte 0x00000F72
_080DF590:
	.4byte 0x00000F92
_080DF594:
	.4byte 0x00000996
_080DF598:
	.4byte gUnknown_081765BC
_080DF59C:
	.4byte 0x00000EE2
_080DF5A0:
	.4byte 0x00000F02
_080DF5A4:
	.4byte 0x00000961
_080DF5A8:
	.4byte 0x00000964
_080DF5AC:
	.4byte gUnknown_081765C4
_080DF5B0:
	.4byte 0x00000ED2
_080DF5B4:
	.4byte 0x00000EF2
_080DF5B8:
	.4byte 0x00000965
_080DF5BC:
	.4byte 0x00001012
_080DF5C0:
	.4byte 0x00001032
_080DF5C4:
	.4byte 0x00001122
_080DF5C8:
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r4, #0
	bl sub_080C631C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DF632
	add r0, r4, #0
	bl sub_080DF648
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080DF632
	ldr r1, _080DF610  @ =0x000009DA
	add r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #21
	bne _080DF61C
	ldr r1, _080DF614  @ =gUnknown_081765CC
	ldr r2, _080DF618  @ =0x00000F52
	add r0, r6, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	b _080DF632
	.byte 0x00
	.byte 0x00
_080DF610:
	.4byte 0x000009DA
_080DF614:
	.4byte gUnknown_081765CC
_080DF618:
	.4byte 0x00000F52
_080DF61C:
	ldr r1, _080DF640  @ =gUnknown_08176608
	ldr r3, _080DF644  @ =0x00000F52
	add r0, r6, r3
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
_080DF632:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DF640:
	.4byte gUnknown_08176608
_080DF644:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DF44C

	THUMB_FUNC_START sub_080DF648
sub_080DF648: @ 0x080DF648
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r1, _080DF6EC  @ =gRam
	ldr r2, _080DF6F0  @ =0x000009DA
	add r0, r1, r2
	ldrb r0, [r0]
	add r6, r1, #0
	cmp r0, #21
	beq _080DF750
	ldr r3, _080DF6F4  @ =0x00000F52
	add r0, r6, r3
	add r0, r7, r0
	ldrb r1, [r0]
	sub r0, r1, #5
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _080DF67E
	add r0, r1, #0
	cmp r0, #11
	beq _080DF67E
	cmp r0, #12
	bne _080DF750
_080DF67E:
	ldr r1, _080DF6F8  @ =gUnknown_0816E2EC
	ldr r2, _080DF6FC  @ =0x00000F92
	add r0, r6, r2
	add r0, r7, r0
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r3, [r0]
	ldr r1, _080DF700  @ =0x00001624
	add r0, r6, r1
	ldrb r0, [r0]
	mov r9, r0
	ldr r2, _080DF704  @ =0x00001625
	add r0, r6, r2
	ldrb r0, [r0]
	mov r8, r0
	ldr r2, _080DF708  @ =gUnknown_08173F38
	ldr r0, _080DF70C  @ =0x00000996
	add r0, r0, r6
	mov r12, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	mov r1, #255
	and r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	lsr r0, r0, #5
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	mov r1, r8
	lsl r0, r1, #8
	mov r2, r9
	orr r0, r0, r2
	sub r0, r0, #4
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r3, #255
	bne _080DF6CE
	mov r3, #5
_080DF6CE:
	ldr r0, _080DF710  @ =0x00001122
	add r1, r6, r0
	add r1, r7, r1
	mov r0, #7
	and r3, r3, r0
	lsl r0, r3, #1
	strb r0, [r1]
	mov r3, r12
	ldrb r1, [r3]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _080DF714
	sub r0, r2, r4
	b _080DF716
_080DF6EC:
	.4byte gRam
_080DF6F0:
	.4byte 0x000009DA
_080DF6F4:
	.4byte 0x00000F52
_080DF6F8:
	.4byte gUnknown_0816E2EC
_080DF6FC:
	.4byte 0x00000F92
_080DF700:
	.4byte 0x00001624
_080DF704:
	.4byte 0x00001625
_080DF708:
	.4byte gUnknown_08173F38
_080DF70C:
	.4byte 0x00000996
_080DF710:
	.4byte 0x00001122
_080DF714:
	add r0, r2, r5
_080DF716:
	lsl r0, r0, #16
	lsr r2, r0, #16
	ldr r0, _080DF75C  @ =0x00001624
	add r5, r6, r0
	strb r2, [r5]
	lsr r0, r2, #8
	ldr r1, _080DF760  @ =0x00001625
	add r4, r6, r1
	strb r0, [r4]
	ldr r2, _080DF764  @ =gUnknown_08176680
	ldr r1, _080DF768  @ =gUnknown_0816E294
	ldr r3, _080DF76C  @ =0x00000F92
	add r0, r6, r3
	add r0, r7, r0
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r0]
	add r0, r7, #0
	mov r2, #4
	bl sub_080C9480
	mov r0, r9
	strb r0, [r5]
	mov r1, r8
	strb r1, [r4]
_080DF750:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080DF75C:
	.4byte 0x00001624
_080DF760:
	.4byte 0x00001625
_080DF764:
	.4byte gUnknown_08176680
_080DF768:
	.4byte gUnknown_0816E294
_080DF76C:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080DF648

	THUMB_FUNC_START sub_080DF770
sub_080DF770: @ 0x080DF770
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DF7D4  @ =gRam
	ldr r0, _080DF7D8  @ =0x00001770
	add r1, r5, r0
	mov r0, #0
	strb r0, [r1]
	ldr r1, _080DF7DC  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DF7CC
	bl sub_0809E3CC
	add r6, r0, #0
	cmp r6, #0
	bne _080DF7CC
	add r0, r4, #0
	mov r1, #140
	mov r2, sp
	bl sub_080C94F4
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DF7CC
	ldr r0, _080DF7E0  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080DF7E4  @ =0x00001052
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	bl sub_08092E50
	bl sub_080AE75C
	ldr r1, _080DF7E8  @ =0x000016D5
	add r0, r5, r1
	strb r6, [r0]
_080DF7CC:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080DF7D4:
	.4byte gRam
_080DF7D8:
	.4byte 0x00001770
_080DF7DC:
	.4byte 0x00000FC2
_080DF7E0:
	.4byte 0x00000F52
_080DF7E4:
	.4byte 0x00001052
_080DF7E8:
	.4byte 0x000016D5
	THUMB_FUNC_END sub_080DF770

	THUMB_FUNC_START sub_080DF7EC
sub_080DF7EC: @ 0x080DF7EC
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r4, r1, #0
	ldr r5, _080DF80C  @ =gRam
	ldr r2, _080DF810  @ =0x00001AE2
	add r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DF814
	add r0, r1, #0
	bl sub_080E03B4
	b _080DF864
	.byte 0x00
	.byte 0x00
_080DF80C:
	.4byte gRam
_080DF810:
	.4byte 0x00001AE2
_080DF814:
	ldr r0, _080DF86C  @ =gBombUpgrades
	ldr r1, _080DF870  @ =gArrowUpgrades
	ldrb r2, [r0]
	ldrb r0, [r1]
	add r3, r0, #0
	orr r3, r3, r2
	cmp r3, #0
	beq _080DF826
	mov r3, #2
_080DF826:
	ldr r6, _080DF874  @ =0x00000F92
	add r0, r5, r6
	add r0, r4, r0
	strb r3, [r0]
	ldr r2, _080DF878  @ =gUnknown_08176688
	add r0, r3, r2
	ldrb r1, [r0]
	ldr r6, _080DF87C  @ =0x00001AEC
	add r0, r5, r6
	strb r1, [r0]
	add r0, r3, #1
	add r0, r0, r2
	ldrb r1, [r0]
	ldr r2, _080DF880  @ =0x00001AED
	add r0, r5, r2
	strb r1, [r0]
	ldr r1, _080DF884  @ =0x00000151
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r6, _080DF888  @ =0x00000F52
	add r1, r5, r6
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080DF88C  @ =0x00001770
	add r1, r5, r0
	mov r0, #1
	strb r0, [r1]
_080DF864:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080DF86C:
	.4byte gBombUpgrades
_080DF870:
	.4byte gArrowUpgrades
_080DF874:
	.4byte 0x00000F92
_080DF878:
	.4byte gUnknown_08176688
_080DF87C:
	.4byte 0x00001AEC
_080DF880:
	.4byte 0x00001AED
_080DF884:
	.4byte 0x00000151
_080DF888:
	.4byte 0x00000F52
_080DF88C:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080DF7EC

	THUMB_FUNC_START sub_080DF890
sub_080DF890: @ 0x080DF890
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080DF8F4  @ =gRam
	ldr r0, _080DF8F8  @ =0x00001AE2
	add r1, r6, r0
	ldr r2, _080DF8FC  @ =0x00000F92
	add r0, r6, r2
	add r0, r4, r0
	ldrb r0, [r0]
	ldrb r1, [r1]
	add r0, r0, r1
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r0, _080DF900  @ =gUnknown_08176688
	add r0, r7, r0
	ldrb r1, [r0]
	ldr r2, _080DF904  @ =0x00001AED
	add r0, r6, r2
	strb r1, [r0]
	ldr r0, _080DF908  @ =gUnknown_0817668C
	add r0, r7, r0
	ldrb r0, [r0]
	mov r1, #150
	lsl r1, r1, #4
	add r5, r6, r1
	strh r0, [r5]
	bl sub_080AA868
	mov r2, #0
	ldrsh r1, [r5, r2]
	cmp r0, r1
	bge _080DF918
	add r0, r4, #0
	ldr r1, _080DF90C  @ =0x0000014F
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080DF910  @ =0x00000F52
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	ldr r2, _080DF914  @ =0x00000FC2
	add r0, r6, r2
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	b _080DF936
_080DF8F4:
	.4byte gRam
_080DF8F8:
	.4byte 0x00001AE2
_080DF8FC:
	.4byte 0x00000F92
_080DF900:
	.4byte gUnknown_08176688
_080DF904:
	.4byte 0x00001AED
_080DF908:
	.4byte gUnknown_0817668C
_080DF90C:
	.4byte 0x0000014F
_080DF910:
	.4byte 0x00000F52
_080DF914:
	.4byte 0x00000FC2
_080DF918:
	ldr r1, _080DF940  @ =0x00000FB2
	add r0, r6, r1
	add r0, r4, r0
	ldrh r1, [r5]
	strb r1, [r0]
	ldr r2, _080DF944  @ =0x00001082
	add r0, r6, r2
	add r0, r4, r0
	strb r7, [r0]
	ldr r0, _080DF948  @ =0x00000F52
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080DF936:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DF940:
	.4byte 0x00000FB2
_080DF944:
	.4byte 0x00001082
_080DF948:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DF890

	THUMB_FUNC_START sub_080DF94C
sub_080DF94C: @ 0x080DF94C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r6, _080DF9D8  @ =gRam
	ldr r1, _080DF9DC  @ =0x00000FC2
	add r0, r6, r1
	add r0, r7, r0
	mov r1, #80
	strb r1, [r0]
	ldr r3, _080DF9E0  @ =0x00000FB2
	add r0, r6, r3
	add r0, r7, r0
	ldrb r0, [r0]
	mov r1, #150
	lsl r1, r1, #4
	add r4, r6, r1
	strh r0, [r4]
	mov r3, #0
	ldrsh r0, [r4, r3]
	neg r0, r0
	bl sub_080AA83C
	ldr r5, _080DF9E4  @ =gWishingPondRupeeCount
	ldrb r0, [r4]
	ldrb r1, [r5]
	add r0, r0, r1
	strb r0, [r5]
	ldr r3, _080DF9E8  @ =0x00001082
	add r0, r6, r3
	add r0, r7, r0
	ldrb r0, [r0]
	bl sub_080AE35C
	ldrb r0, [r5]
	cmp r0, #99
	bhi _080DF9F8
	ldrb r2, [r5]
	ldr r0, _080DF9EC  @ =0x00000964
	add r3, r6, r0
	mov r0, #0
	strb r0, [r3]
	add r1, r6, #0
	cmp r2, #9
	bls _080DF9BA
	add r4, r3, #0
	mov r3, #0
_080DF9A8:
	add r0, r2, #0
	sub r0, r0, #10
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r0, r3, #1
	add r3, r0, #0
	cmp r2, #9
	bhi _080DF9A8
	strb r0, [r4]
_080DF9BA:
	ldr r3, _080DF9EC  @ =0x00000964
	add r0, r1, r3
	ldrb r0, [r0]
	lsl r0, r0, #4
	orr r2, r2, r0
	ldr r3, _080DF9F0  @ =0x00001AEC
	add r0, r1, r3
	strb r2, [r0]
	ldr r0, _080DF9F4  @ =0x00000F52
	add r1, r1, r0
	add r1, r7, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080DFA06
_080DF9D8:
	.4byte gRam
_080DF9DC:
	.4byte 0x00000FC2
_080DF9E0:
	.4byte 0x00000FB2
_080DF9E4:
	.4byte gWishingPondRupeeCount
_080DF9E8:
	.4byte 0x00001082
_080DF9EC:
	.4byte 0x00000964
_080DF9F0:
	.4byte 0x00001AEC
_080DF9F4:
	.4byte 0x00000F52
_080DF9F8:
	sub r0, r0, #100
	strb r0, [r5]
	ldr r1, _080DFA0C  @ =0x00000F52
	add r0, r6, r1
	add r0, r7, r0
	mov r1, #5
	strb r1, [r0]
_080DFA06:
	pop {r4-r7}
	pop {r0}
	bx r0
_080DFA0C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080DF94C

	THUMB_FUNC_START sub_080DFA10
sub_080DFA10: @ 0x080DFA10
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r5, _080DFAB0  @ =gRam
	ldr r1, _080DFAB4  @ =0x00000FC2
	add r0, r5, r1
	add r7, r6, r0
	ldrb r0, [r7]
	cmp r0, #0
	bne _080DFAA8
	mov r0, #114
	add r1, r6, #0
	bl sub_080CA538
	add r4, r0, #0
	ldr r2, _080DFAB8  @ =0x00000A3C
	add r1, r5, r2
	mov r2, #0
	mov r0, #20
	strh r0, [r1]
	ldr r1, _080DFABC  @ =0x00000A48
	add r0, r5, r1
	strb r2, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r1, r5, r2
	ldr r2, _080DFAC0  @ =0x00000EE2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DFAC4  @ =0x00000F02
	add r0, r5, r1
	add r0, r4, r0
	ldr r2, _080DFAC8  @ =0x00000961
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _080DFACC  @ =0x00000964
	add r1, r5, r0
	ldrh r0, [r1]
	sub r0, r0, #70
	strh r0, [r1]
	ldr r2, _080DFAD0  @ =0x00000ED2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DFAD4  @ =0x00000EF2
	add r0, r5, r1
	add r0, r4, r0
	ldr r2, _080DFAD8  @ =0x00000965
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DFADC  @ =0x00000F72
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	ldr r2, _080DFAE0  @ =0x00000F52
	add r1, r5, r2
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #255
	strb r0, [r7]
	bl sub_081335FC
	bl sub_08131D74
	ldr r1, _080DFAE4  @ =0x00001062
	add r0, r5, r1
	add r0, r6, r0
	strb r4, [r0]
_080DFAA8:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DFAB0:
	.4byte gRam
_080DFAB4:
	.4byte 0x00000FC2
_080DFAB8:
	.4byte 0x00000A3C
_080DFABC:
	.4byte 0x00000A48
_080DFAC0:
	.4byte 0x00000EE2
_080DFAC4:
	.4byte 0x00000F02
_080DFAC8:
	.4byte 0x00000961
_080DFACC:
	.4byte 0x00000964
_080DFAD0:
	.4byte 0x00000ED2
_080DFAD4:
	.4byte 0x00000EF2
_080DFAD8:
	.4byte 0x00000965
_080DFADC:
	.4byte 0x00000F72
_080DFAE0:
	.4byte 0x00000F52
_080DFAE4:
	.4byte 0x00001062
	THUMB_FUNC_END sub_080DFA10

	THUMB_FUNC_START sub_080DFAE8
sub_080DFAE8: @ 0x080DFAE8
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r4, _080DFB4C  @ =gRam
	ldr r1, _080DFB50  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	bne _080DFB44
	bl sub_08133620
	ldr r1, _080DFB54  @ =0x00000CF8
	add r0, r4, r1
	ldrh r5, [r0]
	cmp r5, #0
	bne _080DFB44
	ldr r0, _080DFB58  @ =0x00000F52
	add r1, r4, r0
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #152
	mov r2, sp
	bl sub_080C9564
	bl sub_08133600
	ldr r1, _080DFB5C  @ =0x000009B5
	add r0, r4, r1
	strb r5, [r0]
	ldr r0, _080DFB60  @ =0x000009D4
	add r1, r4, r0
	mov r0, #32
	strb r0, [r1]
	ldr r0, _080DFB64  @ =0x0000099B
	add r1, r4, r0
	mov r0, #1
	strb r0, [r1]
	ldr r1, _080DFB68  @ =0x0000051E
	add r0, r4, r1
	strh r5, [r0]
_080DFB44:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080DFB4C:
	.4byte gRam
_080DFB50:
	.4byte 0x00000996
_080DFB54:
	.4byte 0x00000CF8
_080DFB58:
	.4byte 0x00000F52
_080DFB5C:
	.4byte 0x000009B5
_080DFB60:
	.4byte 0x000009D4
_080DFB64:
	.4byte 0x0000099B
_080DFB68:
	.4byte 0x0000051E
	THUMB_FUNC_END sub_080DFAE8

	THUMB_FUNC_START sub_080DFB6C
sub_080DFB6C: @ 0x080DFB6C
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DFB9C  @ =gRam
	ldr r0, _080DFBA0  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r3, _080DFBA4  @ =gBombUpgrades
	ldrb r0, [r3]
	cmp r0, #7
	bne _080DFBA8
	add r0, r4, #0
	mov r1, #155
	mov r2, sp
	bl sub_080C9564
	add r0, r4, #0
	bl sub_080E04D4
	b _080DFBD8
_080DFB9C:
	.4byte gRam
_080DFBA0:
	.4byte 0x00000F52
_080DFBA4:
	.4byte gBombUpgrades
_080DFBA8:
	add r0, r0, #1
	strb r0, [r3]
	ldr r2, _080DFBE0  @ =gUnknown_0816B590
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r1, [r0]
	ldr r6, _080DFBE4  @ =0x00001AEC
	add r0, r5, r6
	strb r1, [r0]
	ldr r1, _080DFBE8  @ =gBombFiller
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080DFBEC  @ =0x00001052
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #39
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #153
	mov r2, sp
	bl sub_080C9564
_080DFBD8:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080DFBE0:
	.4byte gUnknown_0816B590
_080DFBE4:
	.4byte 0x00001AEC
_080DFBE8:
	.4byte gBombFiller
_080DFBEC:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080DFB6C

	THUMB_FUNC_START sub_080DFBF0
sub_080DFBF0: @ 0x080DFBF0
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _080DFC48  @ =gRam
	ldr r2, _080DFC4C  @ =0x00000F52
	add r1, r4, r2
	add r0, r0, r1
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	bl sub_081335FC
	ldr r0, _080DFC50  @ =0x000009B5
	add r1, r4, r0
	mov r0, #2
	strb r0, [r1]
	ldr r2, _080DFC54  @ =0x000009D4
	add r1, r4, r2
	mov r0, #48
	strb r0, [r1]
	ldr r0, _080DFC58  @ =0x0000099B
	add r1, r4, r0
	mov r0, #1
	strb r0, [r1]
	ldr r2, _080DFC5C  @ =0x0000051E
	add r1, r4, r2
	mov r0, #185
	lsl r0, r0, #6
	strh r0, [r1]
	ldr r0, _080DFC60  @ =0x0000051A
	add r1, r4, r0
	mov r0, #63
	strh r0, [r1]
	ldr r1, _080DFC64  @ =0x00000998
	add r0, r4, r1
	mov r1, #15
	strb r1, [r0]
	ldr r2, _080DFC68  @ =0x00000999
	add r4, r4, r2
	strb r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DFC48:
	.4byte gRam
_080DFC4C:
	.4byte 0x00000F52
_080DFC50:
	.4byte 0x000009B5
_080DFC54:
	.4byte 0x000009D4
_080DFC58:
	.4byte 0x0000099B
_080DFC5C:
	.4byte 0x0000051E
_080DFC60:
	.4byte 0x0000051A
_080DFC64:
	.4byte 0x00000998
_080DFC68:
	.4byte 0x00000999
	THUMB_FUNC_END sub_080DFBF0

	THUMB_FUNC_START sub_080DFC6C
sub_080DFC6C: @ 0x080DFC6C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	add r7, r6, #0
	ldr r5, _080DFCA4  @ =gRam
	ldr r1, _080DFCA8  @ =0x00000996
	add r0, r5, r1
	ldrb r0, [r0]
	mov r4, #7
	and r4, r4, r0
	cmp r4, #0
	bne _080DFCC4
	bl sub_08133620
	ldr r2, _080DFCAC  @ =0x00000CF8
	add r0, r5, r2
	ldrh r0, [r0]
	cmp r0, #30
	beq _080DFCB4
	cmp r0, #0
	bne _080DFCC4
	ldr r0, _080DFCB0  @ =0x00000F52
	add r1, r5, r0
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080DFCC4
_080DFCA4:
	.4byte gRam
_080DFCA8:
	.4byte 0x00000996
_080DFCAC:
	.4byte 0x00000CF8
_080DFCB0:
	.4byte 0x00000F52
_080DFCB4:
	ldr r2, _080DFCCC  @ =0x00001062
	add r1, r5, r2
	add r1, r7, r1
	sub r2, r2, #192
	add r0, r5, r2
	ldrb r1, [r1]
	add r0, r0, r1
	strb r4, [r0]
_080DFCC4:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DFCCC:
	.4byte 0x00001062
	THUMB_FUNC_END sub_080DFC6C

	THUMB_FUNC_START sub_080DFCD0
sub_080DFCD0: @ 0x080DFCD0
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DFD00  @ =gRam
	ldr r1, _080DFD04  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #9
	strb r1, [r0]
	ldr r3, _080DFD08  @ =gArrowUpgrades
	ldrb r0, [r3]
	cmp r0, #7
	bne _080DFD0C
	add r0, r4, #0
	mov r1, #155
	mov r2, sp
	bl sub_080C9564
	add r0, r4, #0
	bl sub_080E04D4
	b _080DFD3C
	.byte 0x00
	.byte 0x00
_080DFD00:
	.4byte gRam
_080DFD04:
	.4byte 0x00000F52
_080DFD08:
	.4byte gArrowUpgrades
_080DFD0C:
	add r0, r0, #1
	strb r0, [r3]
	ldr r2, _080DFD44  @ =gUnknown_0816B5A0
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r1, [r0]
	ldr r6, _080DFD48  @ =0x00001AEC
	add r0, r5, r6
	strb r1, [r0]
	ldr r1, _080DFD4C  @ =gArrowFiller
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080DFD50  @ =0x00001052
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #67
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #154
	mov r2, sp
	bl sub_080C9564
_080DFD3C:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080DFD44:
	.4byte gUnknown_0816B5A0
_080DFD48:
	.4byte 0x00001AEC
_080DFD4C:
	.4byte gArrowFiller
_080DFD50:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080DFCD0

	THUMB_FUNC_START sub_080DFD54
sub_080DFD54: @ 0x080DFD54
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080DFDB4  @ =gRam
	ldr r0, _080DFDB8  @ =0x00001770
	add r1, r6, r0
	mov r0, #0
	strb r0, [r1]
	ldr r1, _080DFDBC  @ =0x00000FC2
	add r0, r6, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DFDAA
	bl sub_0809E3CC
	add r4, r0, #0
	cmp r4, #0
	bne _080DFDAA
	ldr r1, _080DFDC0  @ =0x0000014D
	add r0, r5, #0
	mov r2, sp
	bl sub_080C94F4
	lsl r0, r0, #24
	cmp r0, #0
	beq _080DFDAA
	ldr r0, _080DFDC4  @ =0x00000F52
	add r1, r6, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	bl sub_08092E50
	ldr r1, _080DFDC8  @ =0x000016D5
	add r0, r6, r1
	strb r4, [r0]
	ldr r1, _080DFDCC  @ =0x00001082
	add r0, r6, r1
	add r0, r5, r0
	strb r4, [r0]
_080DFDAA:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DFDB4:
	.4byte gRam
_080DFDB8:
	.4byte 0x00001770
_080DFDBC:
	.4byte 0x00000FC2
_080DFDC0:
	.4byte 0x0000014D
_080DFDC4:
	.4byte 0x00000F52
_080DFDC8:
	.4byte 0x000016D5
_080DFDCC:
	.4byte 0x00001082
	THUMB_FUNC_END sub_080DFD54

	THUMB_FUNC_START sub_080DFDD0
sub_080DFDD0: @ 0x080DFDD0
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080DFE08  @ =gRam
	ldr r1, _080DFE0C  @ =0x00001AE2
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DFE18
	mov r1, #167
	lsl r1, r1, #1
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080DFE10  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	ldr r1, _080DFE14  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	b _080DFE36
	.byte 0x00
	.byte 0x00
_080DFE08:
	.4byte gRam
_080DFE0C:
	.4byte 0x00001AE2
_080DFE10:
	.4byte 0x00000F52
_080DFE14:
	.4byte 0x00000FC2
_080DFE18:
	add r0, r4, #0
	mov r1, #141
	mov r2, sp
	bl sub_080C9564
	ldr r0, _080DFE40  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080DFE44  @ =0x00001770
	add r1, r5, r0
	mov r0, #1
	strb r0, [r1]
_080DFE36:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DFE40:
	.4byte 0x00000F52
_080DFE44:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080DFDD0

	THUMB_FUNC_START sub_080DFE48
sub_080DFE48: @ 0x080DFE48
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r3, _080DFECC  @ =gRam
	ldr r0, _080DFED0  @ =0x00000F52
	add r1, r3, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r2, _080DFED4  @ =0x00000F82
	add r1, r3, r2
	add r1, r5, r1
	ldr r2, _080DFED8  @ =0x00001AE2
	add r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080DFEDC  @ =gUnknown_0817653C
	ldrb r1, [r1]
	lsl r0, r1, #2
	add r0, r0, r2
	ldr r4, [r0]
	ldr r2, _080DFEE0  @ =gBow
	add r0, r1, r2
	ldrb r7, [r0]
	add r2, r7, #0
	add r6, r3, #0
	cmp r1, #32
	beq _080DFE86
	cmp r1, #3
	bne _080DFE88
_080DFE86:
	mov r2, #1
_080DFE88:
	ldr r1, _080DFED4  @ =0x00000F82
	add r0, r6, r1
	add r0, r5, r0
	ldrb r0, [r0]
	ldr r1, _080DFEE0  @ =gBow
	add r0, r0, r1
	mov r1, #0
	strb r1, [r0]
	add r0, r2, r4
	sub r0, r0, #1
	ldrb r4, [r0]
	mov r0, #4
	mov r1, #40
	add r2, r4, #0
	bl sub_080AE1F8
	bl sub_080AA724
	ldr r2, _080DFEE4  @ =0x00000F92
	add r0, r6, r2
	add r0, r5, r0
	strb r4, [r0]
	ldr r1, _080DFEE8  @ =0x00000FB2
	add r0, r6, r1
	add r0, r5, r0
	strb r7, [r0]
	add r2, r2, #48
	add r0, r6, r2
	add r0, r5, r0
	mov r1, #255
	strb r1, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
_080DFECC:
	.4byte gRam
_080DFED0:
	.4byte 0x00000F52
_080DFED4:
	.4byte 0x00000F82
_080DFED8:
	.4byte 0x00001AE2
_080DFEDC:
	.4byte gUnknown_0817653C
_080DFEE0:
	.4byte gBow
_080DFEE4:
	.4byte 0x00000F92
_080DFEE8:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080DFE48

	THUMB_FUNC_START sub_080DFEEC
sub_080DFEEC: @ 0x080DFEEC
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r5, _080DFF90  @ =gRam
	ldr r1, _080DFF94  @ =0x00000FC2
	add r0, r5, r1
	add r7, r6, r0
	ldrb r0, [r7]
	cmp r0, #0
	bne _080DFF88
	mov r0, #114
	add r1, r6, #0
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080DFF88
	ldr r2, _080DFF98  @ =0x00000A3C
	add r1, r5, r2
	mov r2, #0
	mov r0, #20
	strh r0, [r1]
	ldr r1, _080DFF9C  @ =0x00000A48
	add r0, r5, r1
	strb r2, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r1, r5, r2
	ldr r2, _080DFFA0  @ =0x00000EE2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DFFA4  @ =0x00000F02
	add r0, r5, r1
	add r0, r4, r0
	ldr r2, _080DFFA8  @ =0x00000961
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _080DFFAC  @ =0x00000964
	add r1, r5, r0
	ldrh r0, [r1]
	sub r0, r0, #70
	strh r0, [r1]
	ldr r2, _080DFFB0  @ =0x00000ED2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DFFB4  @ =0x00000EF2
	add r0, r5, r1
	add r0, r4, r0
	ldr r2, _080DFFB8  @ =0x00000965
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080DFFBC  @ =0x00000F72
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	ldr r2, _080DFFC0  @ =0x00000F52
	add r1, r5, r2
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #255
	strb r0, [r7]
	bl sub_081335FC
	bl sub_08131D74
	ldr r1, _080DFFC4  @ =0x00001062
	add r0, r5, r1
	add r0, r6, r0
	strb r4, [r0]
_080DFF88:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080DFF90:
	.4byte gRam
_080DFF94:
	.4byte 0x00000FC2
_080DFF98:
	.4byte 0x00000A3C
_080DFF9C:
	.4byte 0x00000A48
_080DFFA0:
	.4byte 0x00000EE2
_080DFFA4:
	.4byte 0x00000F02
_080DFFA8:
	.4byte 0x00000961
_080DFFAC:
	.4byte 0x00000964
_080DFFB0:
	.4byte 0x00000ED2
_080DFFB4:
	.4byte 0x00000EF2
_080DFFB8:
	.4byte 0x00000965
_080DFFBC:
	.4byte 0x00000F72
_080DFFC0:
	.4byte 0x00000F52
_080DFFC4:
	.4byte 0x00001062
	THUMB_FUNC_END sub_080DFEEC

	THUMB_FUNC_START sub_080DFFC8
sub_080DFFC8: @ 0x080DFFC8
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r4, _080E002C  @ =gRam
	ldr r1, _080E0030  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	bne _080E0024
	bl sub_08133620
	ldr r1, _080E0034  @ =0x00000CF8
	add r0, r4, r1
	ldrh r5, [r0]
	cmp r5, #0
	bne _080E0024
	ldr r0, _080E0038  @ =0x00000F52
	add r1, r4, r0
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #142
	mov r2, sp
	bl sub_080C9564
	bl sub_08133600
	ldr r1, _080E003C  @ =0x000009B5
	add r0, r4, r1
	strb r5, [r0]
	ldr r0, _080E0040  @ =0x000009D4
	add r1, r4, r0
	mov r0, #32
	strb r0, [r1]
	ldr r0, _080E0044  @ =0x0000099B
	add r1, r4, r0
	mov r0, #1
	strb r0, [r1]
	ldr r1, _080E0048  @ =0x0000051E
	add r0, r4, r1
	strh r5, [r0]
_080E0024:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080E002C:
	.4byte gRam
_080E0030:
	.4byte 0x00000996
_080E0034:
	.4byte 0x00000CF8
_080E0038:
	.4byte 0x00000F52
_080E003C:
	.4byte 0x000009B5
_080E0040:
	.4byte 0x000009D4
_080E0044:
	.4byte 0x0000099B
_080E0048:
	.4byte 0x0000051E
	THUMB_FUNC_END sub_080DFFC8

	THUMB_FUNC_START sub_080E004C
sub_080E004C: @ 0x080E004C
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r6, #0
	mov r5, #0
	ldr r2, _080E0088  @ =gRam
	ldr r0, _080E008C  @ =0x00000F52
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080E0090  @ =0x0000165C
	add r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _080E00CC
	ldr r1, _080E0094  @ =0x00000F92
	add r0, r2, r1
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #58
	beq _080E00AC
	cmp r0, #2
	beq _080E0098
	cmp r0, #22
	bne _080E00E0
	b _080E00E8
	.byte 0x00
	.byte 0x00
_080E0088:
	.4byte gRam
_080E008C:
	.4byte 0x00000F52
_080E0090:
	.4byte 0x0000165C
_080E0094:
	.4byte 0x00000F92
_080E0098:
	mov r0, #3
	strb r0, [r1]
	ldr r1, _080E00A8  @ =0x00001082
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #5
	strb r1, [r0]
	b _080E0124
_080E00A8:
	.4byte 0x00001082
_080E00AC:
	mov r0, #59
	strb r0, [r1]
	ldr r1, _080E00C8  @ =0x00001082
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #4
	strb r1, [r0]
	mov r1, #169
	lsl r1, r1, #1
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	b _080E0120
_080E00C8:
	.4byte 0x00001082
_080E00CC:
	ldr r1, _080E00E4  @ =0x00000F92
	add r0, r2, r1
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #12
	beq _080E0110
	cmp r0, #4
	beq _080E00FC
	cmp r0, #22
	beq _080E00E8
_080E00E0:
	mov r5, #1
	b _080E0120
_080E00E4:
	.4byte 0x00000F92
_080E00E8:
	mov r0, #44
	strb r0, [r1]
	ldr r1, _080E00F8  @ =0x00001082
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
	b _080E0124
_080E00F8:
	.4byte 0x00001082
_080E00FC:
	mov r0, #5
	strb r0, [r1]
	ldr r1, _080E010C  @ =0x00001082
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	b _080E0124
_080E010C:
	.4byte 0x00001082
_080E0110:
	mov r0, #42
	strb r0, [r1]
	ldr r1, _080E0148  @ =0x00001082
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	mov r6, #1
_080E0120:
	cmp r6, #0
	beq _080E012E
_080E0124:
	add r0, r4, #0
	mov r1, #143
	mov r2, sp
	bl sub_080C9564
_080E012E:
	cmp r5, #0
	beq _080E013E
	mov r1, #168
	lsl r1, r1, #1
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
_080E013E:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E0148:
	.4byte 0x00001082
	THUMB_FUNC_END sub_080E004C

	THUMB_FUNC_START sub_080E014C
sub_080E014C: @ 0x080E014C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r3, r2, #0
	ldr r4, _080E01C0  @ =gRam
	ldr r1, _080E01C4  @ =0x00000F82
	add r0, r4, r1
	add r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #3
	bne _080E0170
	ldr r5, _080E01C8  @ =gBow
	add r0, r0, r5
	ldr r5, _080E01CC  @ =0x00000FB2
	add r1, r4, r5
	add r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r0]
_080E0170:
	ldr r0, _080E01D0  @ =0x00000F52
	add r1, r4, r0
	add r1, r3, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	bl sub_081335FC
	ldr r2, _080E01D4  @ =0x000009B5
	add r1, r4, r2
	mov r0, #2
	strb r0, [r1]
	ldr r5, _080E01D8  @ =0x000009D4
	add r1, r4, r5
	mov r0, #48
	strb r0, [r1]
	ldr r0, _080E01DC  @ =0x0000099B
	add r1, r4, r0
	mov r0, #1
	strb r0, [r1]
	ldr r2, _080E01E0  @ =0x0000051E
	add r1, r4, r2
	mov r0, #185
	lsl r0, r0, #6
	strh r0, [r1]
	ldr r5, _080E01E4  @ =0x0000051A
	add r1, r4, r5
	mov r0, #63
	strh r0, [r1]
	ldr r1, _080E01E8  @ =0x00000998
	add r0, r4, r1
	mov r1, #15
	strb r1, [r0]
	ldr r2, _080E01EC  @ =0x00000999
	add r0, r4, r2
	strb r1, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E01C0:
	.4byte gRam
_080E01C4:
	.4byte 0x00000F82
_080E01C8:
	.4byte gBow
_080E01CC:
	.4byte 0x00000FB2
_080E01D0:
	.4byte 0x00000F52
_080E01D4:
	.4byte 0x000009B5
_080E01D8:
	.4byte 0x000009D4
_080E01DC:
	.4byte 0x0000099B
_080E01E0:
	.4byte 0x0000051E
_080E01E4:
	.4byte 0x0000051A
_080E01E8:
	.4byte 0x00000998
_080E01EC:
	.4byte 0x00000999
	THUMB_FUNC_END sub_080E014C

	THUMB_FUNC_START sub_080E01F0
sub_080E01F0: @ 0x080E01F0
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	add r7, r6, #0
	ldr r5, _080E0228  @ =gRam
	ldr r1, _080E022C  @ =0x00000996
	add r0, r5, r1
	ldrb r0, [r0]
	mov r4, #7
	and r4, r4, r0
	cmp r4, #0
	bne _080E0248
	bl sub_08133620
	ldr r2, _080E0230  @ =0x00000CF8
	add r0, r5, r2
	ldrh r0, [r0]
	cmp r0, #30
	beq _080E0238
	cmp r0, #0
	bne _080E0248
	ldr r0, _080E0234  @ =0x00000F52
	add r1, r5, r0
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080E0248
_080E0228:
	.4byte gRam
_080E022C:
	.4byte 0x00000996
_080E0230:
	.4byte 0x00000CF8
_080E0234:
	.4byte 0x00000F52
_080E0238:
	ldr r2, _080E0250  @ =0x00001062
	add r1, r5, r2
	add r1, r7, r1
	sub r2, r2, #192
	add r0, r5, r2
	ldrb r1, [r1]
	add r0, r0, r1
	strb r4, [r0]
_080E0248:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E0250:
	.4byte 0x00001062
	THUMB_FUNC_END sub_080E01F0

	THUMB_FUNC_START sub_080E0254
sub_080E0254: @ 0x080E0254
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	ldr r4, _080E029C  @ =gRam
	ldr r1, _080E02A0  @ =0x0000165C
	add r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _080E02B0
	ldr r5, _080E02A4  @ =0x0000096C
	add r1, r4, r5
	mov r0, #10
	strh r0, [r1]
	ldr r1, _080E02A8  @ =0x00000F92
	add r0, r4, r1
	add r0, r0, r9
	ldrb r0, [r0]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #4
	ldr r0, _080E02AC  @ =gUnknown_081766A8
	add r1, r1, r0
	mov r0, r9
	bl sub_080C94AC
	mov r0, #10
	bl sub_080C64A0
	b _080E0370
	.byte 0x00
	.byte 0x00
_080E029C:
	.4byte gRam
_080E02A0:
	.4byte 0x0000165C
_080E02A4:
	.4byte 0x0000096C
_080E02A8:
	.4byte 0x00000F92
_080E02AC:
	.4byte gUnknown_081766A8
_080E02B0:
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r9
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E0370
	ldr r5, _080E0380  @ =0x00000F92
	add r0, r4, r5
	add r0, r0, r9
	ldrb r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #26
	lsr r0, r0, #24
	str r0, [sp, #8]
	mov r0, #11
	mov r8, r0
	add r7, sp, #4
	mov r10, r4
_080E02DC:
	ldr r6, [sp, #8]
	add r6, r6, r8
	lsl r6, r6, #24
	lsr r6, r6, #24
	ldr r0, _080E0384  @ =gUnknown_03003E74
	ldrb r1, [r7]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r10
	ldr r1, _080E0388  @ =gUnknown_08176748
	add r1, r6, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, _080E038C  @ =0x00000964
	add r3, r3, r10
	ldr r2, _080E0390  @ =gUnknown_08176760
	add r2, r6, r2
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E0394  @ =gUnknown_08176778
	add r3, r6, r3
	ldrb r3, [r3]
	ldr r4, _080E0398  @ =gUnknown_08176790
	add r4, r6, r4
	ldrb r4, [r4]
	ldr r5, _080E039C  @ =gUnknown_03002B99
	ldrb r5, [r5]
	lsl r5, r5, #24
	asr r5, r5, #24
	orr r4, r4, r5
	lsl r4, r4, #8
	add r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r4, _080E03A0  @ =gUnknown_081767A8
	add r6, r6, r4
	ldrb r4, [r6]
	str r4, [sp]
	bl sub_080C6004
	mov r0, r8
	lsl r1, r0, #24
	mov r5, #255
	lsl r5, r5, #24
	add r1, r1, r5
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	lsr r0, r1, #24
	mov r8, r0
	cmp r1, #0
	bge _080E02DC
	mov r0, r9
	mov r1, #255
	mov r2, #11
	bl sub_080C5DA0
	mov r0, #12
	bl sub_080C64A0
_080E0370:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080E0380:
	.4byte 0x00000F92
_080E0384:
	.4byte gUnknown_03003E74
_080E0388:
	.4byte gUnknown_08176748
_080E038C:
	.4byte 0x00000964
_080E0390:
	.4byte gUnknown_08176760
_080E0394:
	.4byte gUnknown_08176778
_080E0398:
	.4byte gUnknown_08176790
_080E039C:
	.4byte gUnknown_03002B99
_080E03A0:
	.4byte gUnknown_081767A8
	THUMB_FUNC_END sub_080E0254

	THUMB_FUNC_START sub_080E03A4
sub_080E03A4: @ 0x080E03A4
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080C3758
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E03A4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E03B4
sub_080E03B4: @ 0x080E03B4
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r1, _080E03E8  @ =0x0000014F
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r2, _080E03EC  @ =gRam
	ldr r1, _080E03F0  @ =0x00000F52
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	ldr r0, _080E03F4  @ =0x00000FC2
	add r2, r2, r0
	add r4, r4, r2
	mov r0, #255
	strb r0, [r4]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E03E8:
	.4byte 0x0000014F
_080E03EC:
	.4byte gRam
_080E03F0:
	.4byte 0x00000F52
_080E03F4:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E03B4

	THUMB_FUNC_START sub_080E03F8
sub_080E03F8: @ 0x080E03F8
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080E042C  @ =gRam
	ldr r1, _080E0430  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E0422
	add r0, r4, #0
	mov r1, #151
	mov r2, sp
	bl sub_080C9564
	ldr r1, _080E0434  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #13
	strb r1, [r0]
_080E0422:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E042C:
	.4byte gRam
_080E0430:
	.4byte 0x00000FC2
_080E0434:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E03F8

	THUMB_FUNC_START sub_080E0438
sub_080E0438: @ 0x080E0438
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080E0458  @ =gRam
	ldr r3, _080E045C  @ =0x00001AE2
	add r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E0464
	ldr r3, _080E0460  @ =0x00000F52
	add r0, r1, r3
	add r0, r2, r0
	mov r1, #12
	strb r1, [r0]
	b _080E0470
	.byte 0x00
	.byte 0x00
_080E0458:
	.4byte gRam
_080E045C:
	.4byte 0x00001AE2
_080E0460:
	.4byte 0x00000F52
_080E0464:
	ldr r0, _080E0474  @ =0x00000F52
	add r1, r1, r0
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080E0470:
	pop {r0}
	bx r0
_080E0474:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E0438

	THUMB_FUNC_START sub_080E0478
sub_080E0478: @ 0x080E0478
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r4, r0, #0
	bl sub_08131E24
	bl sub_08133600
	ldr r5, _080E04C0  @ =gRam
	ldr r1, _080E04C4  @ =0x00001052
	add r0, r5, r1
	add r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #255
	beq _080E04A4
	ldr r1, _080E04C8  @ =0x00001776
	add r0, r5, r1
	mov r1, #2
	strb r1, [r0]
	ldrb r0, [r2]
	bl sub_080A1588
_080E04A4:
	ldr r1, _080E04CC  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	ldr r1, _080E04D0  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E04C0:
	.4byte gRam
_080E04C4:
	.4byte 0x00001052
_080E04C8:
	.4byte 0x00001776
_080E04CC:
	.4byte 0x00000F52
_080E04D0:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E0478

	THUMB_FUNC_START sub_080E04D4
sub_080E04D4: @ 0x080E04D4
	push {lr}
	mov r0, #100
	bl sub_080AA858
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E04D4

	THUMB_FUNC_START sub_080E04E0
sub_080E04E0: @ 0x080E04E0
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r1, _080E050C  @ =0x00000157
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r0, _080E0510  @ =gRam
	ldr r1, _080E0514  @ =0x00000F52
	add r0, r0, r1
	add r4, r4, r0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E050C:
	.4byte 0x00000157
_080E0510:
	.4byte gRam
_080E0514:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E04E0

	THUMB_FUNC_START sub_080E0518
sub_080E0518: @ 0x080E0518
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	bl GetRandomInt
	mov r1, #3
	and r1, r1, r0
	ldr r5, _080E056C  @ =gRam
	ldr r0, _080E0570  @ =gUnknown_08176698
	add r0, r1, r0
	ldrb r2, [r0]
	ldr r3, _080E0574  @ =0x00000ECB
	add r0, r5, r3
	mov r6, #0
	strb r2, [r0]
	ldr r2, _080E0578  @ =0x00000ECC
	add r0, r5, r2
	strb r6, [r0]
	ldr r0, _080E057C  @ =gUnknown_08176690
	lsl r1, r1, #1
	add r1, r1, r0
	ldrh r1, [r1]
	add r0, r4, #0
	mov r2, sp
	bl sub_080C9564
	ldr r3, _080E0580  @ =0x00000F52
	add r0, r5, r3
	add r0, r4, r0
	strb r6, [r0]
	ldr r0, _080E0584  @ =0x00000FC2
	add r5, r5, r0
	add r4, r4, r5
	mov r0, #255
	strb r0, [r4]
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E056C:
	.4byte gRam
_080E0570:
	.4byte gUnknown_08176698
_080E0574:
	.4byte 0x00000ECB
_080E0578:
	.4byte 0x00000ECC
_080E057C:
	.4byte gUnknown_08176690
_080E0580:
	.4byte 0x00000F52
_080E0584:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E0518

	THUMB_FUNC_START sub_080E0588
sub_080E0588: @ 0x080E0588
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080E05A8  @ =gRam
	ldr r3, _080E05AC  @ =0x00001AE2
	add r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E05B4
	ldr r3, _080E05B0  @ =0x00000F52
	add r0, r1, r3
	add r0, r2, r0
	mov r1, #11
	strb r1, [r0]
	b _080E05C0
	.byte 0x00
	.byte 0x00
_080E05A8:
	.4byte gRam
_080E05AC:
	.4byte 0x00001AE2
_080E05B0:
	.4byte 0x00000F52
_080E05B4:
	ldr r0, _080E05C4  @ =0x00000F52
	add r1, r1, r0
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080E05C0:
	pop {r0}
	bx r0
_080E05C4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E0588

	THUMB_FUNC_START sub_080E05C8
sub_080E05C8: @ 0x080E05C8
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r5, _080E0600  @ =gRam
	ldr r0, _080E0604  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	bl sub_08131E24
	bl sub_08133600
	ldr r0, _080E0608  @ =0x00001776
	add r1, r5, r0
	mov r0, #2
	strb r0, [r1]
	ldr r0, _080E060C  @ =0x00000F92
	add r5, r5, r0
	add r4, r4, r5
	ldrb r0, [r4]
	bl sub_080A1588
	pop {r4,r5}
	pop {r0}
	bx r0
_080E0600:
	.4byte gRam
_080E0604:
	.4byte 0x00000F52
_080E0608:
	.4byte 0x00001776
_080E060C:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080E05C8

	THUMB_FUNC_START sub_080E0610
sub_080E0610: @ 0x080E0610
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r5, r2, #0
	ldr r4, _080E0658  @ =gRam
	ldr r1, _080E065C  @ =0x00001082
	add r0, r4, r1
	add r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E063C
	ldr r0, _080E0660  @ =gUnknown_0817669C
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #1
	add r1, r1, r0
	ldrh r1, [r1]
	add r0, r2, #0
	mov r2, sp
	bl sub_080C9564
_080E063C:
	ldr r1, _080E0664  @ =0x00000F52
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #0
	strb r1, [r0]
	ldr r1, _080E0668  @ =0x00000FC2
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #255
	strb r1, [r0]
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080E0658:
	.4byte gRam
_080E065C:
	.4byte 0x00001082
_080E0660:
	.4byte gUnknown_0817669C
_080E0664:
	.4byte 0x00000F52
_080E0668:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E0610

	THUMB_FUNC_START sub_080E066C
sub_080E066C: @ 0x080E066C
	push {lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080E0690  @ =gRam
	ldr r1, _080E0694  @ =0x00000F52
	add r2, r2, r1
	add r2, r0, r2
	ldrb r1, [r2]
	add r1, r1, #1
	strb r1, [r2]
	mov r1, #144
	mov r2, sp
	bl sub_080C9564
	add sp, sp, #4
	pop {r0}
	bx r0
_080E0690:
	.4byte gRam
_080E0694:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E066C

	THUMB_FUNC_START sub_080E0698
sub_080E0698: @ 0x080E0698
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080E06B8  @ =gRam
	ldr r3, _080E06BC  @ =0x00001AE2
	add r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E06C4
	ldr r3, _080E06C0  @ =0x00000F52
	add r0, r1, r3
	add r0, r2, r0
	mov r1, #6
	strb r1, [r0]
	b _080E06D0
	.byte 0x00
	.byte 0x00
_080E06B8:
	.4byte gRam
_080E06BC:
	.4byte 0x00001AE2
_080E06C0:
	.4byte 0x00000F52
_080E06C4:
	ldr r0, _080E06D4  @ =0x00000F52
	add r1, r1, r0
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080E06D0:
	pop {r0}
	bx r0
_080E06D4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E0698

	THUMB_FUNC_START sub_080E06D8
sub_080E06D8: @ 0x080E06D8
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	mov r1, #145
	mov r2, sp
	bl sub_080C9564
	ldr r0, _080E0700  @ =gRam
	ldr r1, _080E0704  @ =0x00000F52
	add r0, r0, r1
	add r4, r4, r0
	mov r0, #7
	strb r0, [r4]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_080E0700:
	.4byte gRam
_080E0704:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E06D8

	THUMB_FUNC_START sub_080E0708
sub_080E0708: @ 0x080E0708
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r2, _080E0814  @ =gRam
	ldr r0, _080E0818  @ =0x00000DB4
	add r1, r2, r0
	mov r0, #0
	strb r0, [r1]
	ldr r0, _080E081C  @ =0x00000ED2
	add r1, r2, r0
	add r1, r6, r1
	ldrb r0, [r1]
	sub r0, r0, #8
	strb r0, [r1]
	mov r0, #7
	add r5, r2, #0
	ldr r1, _080E0820  @ =0x00001052
	add r1, r1, r5
	mov r8, r1
_080E0732:
	lsl r0, r0, #24
	asr r4, r0, #24
	ldr r2, _080E0824  @ =0x00000FF2
	add r7, r5, r2
	add r2, r4, r7
	mov r1, #101
	strb r1, [r2]
	ldr r2, _080E0828  @ =0x00000FA2
	add r1, r5, r2
	add r1, r4, r1
	mov r2, #9
	strb r2, [r1]
	lsr r0, r0, #24
	bl sub_080CEB84
	ldr r0, _080E082C  @ =0x00000F02
	add r1, r5, r0
	add r1, r4, r1
	ldr r2, _080E0830  @ =0x000016C5
	add r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E0834  @ =0x00000EE2
	add r1, r5, r0
	add r1, r4, r1
	ldr r0, _080E0838  @ =gUnknown_081767C0
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080E083C  @ =0x00000EF2
	add r1, r5, r2
	add r1, r4, r1
	ldr r2, _080E0840  @ =0x000016C1
	add r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E081C  @ =0x00000ED2
	add r1, r5, r0
	add r1, r4, r1
	ldr r0, _080E0844  @ =gUnknown_081767C8
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080E0848  @ =0x00000F62
	add r1, r5, r2
	add r1, r4, r1
	ldr r0, _080E084C  @ =gUnknown_081767D0
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E0850  @ =0x00000F92
	add r3, r5, r1
	add r3, r4, r3
	sub r0, r0, #1
	strb r0, [r3]
	sub r2, r2, #64
	add r1, r5, r2
	add r1, r4, r1
	ldr r2, _080E0854  @ =gUnknown_081767D8
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E0858  @ =0x00001132
	add r1, r5, r0
	add r1, r4, r1
	ldr r2, _080E085C  @ =gUnknown_081767DA
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E0860  @ =0x00001122
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #13
	strb r1, [r0]
	ldr r2, _080E0864  @ =0x000010F2
	add r1, r5, r2
	add r1, r4, r1
	mov r2, #161
	lsl r2, r2, #4
	add r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bl GetRandomInt
	mov r2, r8
	add r1, r4, r2
	strb r0, [r1]
	sub r4, r4, #1
	lsl r4, r4, #24
	lsr r0, r4, #24
	cmp r4, #0
	bne _080E0732
	mov r0, #192
	lsl r0, r0, #1
	add r1, r7, r0
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add r0, r7, #0
	add r0, r0, #16
	add r0, r6, r0
	ldr r1, _080E0868  @ =gArrowCount
	ldrb r1, [r1]
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E0814:
	.4byte gRam
_080E0818:
	.4byte 0x00000DB4
_080E081C:
	.4byte 0x00000ED2
_080E0820:
	.4byte 0x00001052
_080E0824:
	.4byte 0x00000FF2
_080E0828:
	.4byte 0x00000FA2
_080E082C:
	.4byte 0x00000F02
_080E0830:
	.4byte 0x000016C5
_080E0834:
	.4byte 0x00000EE2
_080E0838:
	.4byte gUnknown_081767C0
_080E083C:
	.4byte 0x00000EF2
_080E0840:
	.4byte 0x000016C1
_080E0844:
	.4byte gUnknown_081767C8
_080E0848:
	.4byte 0x00000F62
_080E084C:
	.4byte gUnknown_081767D0
_080E0850:
	.4byte 0x00000F92
_080E0854:
	.4byte gUnknown_081767D8
_080E0858:
	.4byte 0x00001132
_080E085C:
	.4byte gUnknown_081767DA
_080E0860:
	.4byte 0x00001122
_080E0864:
	.4byte 0x000010F2
_080E0868:
	.4byte gArrowCount
	THUMB_FUNC_END sub_080E0708

	THUMB_FUNC_START sub_080E086C
sub_080E086C: @ 0x080E086C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, #0
	str r0, [sp, #8]
	mov r10, r0
	ldr r4, _080E08F0  @ =gRam
	ldr r1, _080E08F4  @ =0x00000DB5
	add r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E0898
	ldr r2, _080E08F8  @ =0x00000DB6
	add r1, r4, r2
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080E0898:
	add r0, r6, #0
	bl sub_080E0F0C
	add r0, r6, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E08AC
	b _080E0C04
_080E08AC:
	ldr r3, _080E08FC  @ =0x00001132
	add r0, r4, r3
	add r0, r6, r0
	mov r1, r10
	strb r1, [r0]
	add r0, r6, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E08D2
	bl sub_080AF16C
	ldr r2, _080E0900  @ =0x00001719
	add r0, r4, r2
	mov r3, r10
	strb r3, [r0]
	bl sub_08093078
_080E08D2:
	ldr r1, _080E0904  @ =0x00000FC2
	add r0, r4, r1
	add r5, r6, r0
	ldrb r1, [r5]
	cmp r1, #0
	bne _080E0928
	ldr r2, _080E0908  @ =0x00000F52
	add r0, r4, r2
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E090C
	mov r1, #0
	b _080E0918
	.byte 0x00
	.byte 0x00
_080E08F0:
	.4byte gRam
_080E08F4:
	.4byte 0x00000DB5
_080E08F8:
	.4byte 0x00000DB6
_080E08FC:
	.4byte 0x00001132
_080E0900:
	.4byte 0x00001719
_080E0904:
	.4byte 0x00000FC2
_080E0908:
	.4byte 0x00000F52
_080E090C:
	ldr r3, _080E0920  @ =0x00000996
	add r0, r4, r3
	ldrb r0, [r0]
	lsr r1, r0, #5
	mov r0, #3
	and r1, r1, r0
_080E0918:
	ldr r0, _080E0924  @ =gUnknown_081767E8
	add r0, r1, r0
	ldrb r1, [r0]
	b _080E0942
_080E0920:
	.4byte 0x00000996
_080E0924:
	.4byte gUnknown_081767E8
_080E0928:
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	bne _080E0938
	add r0, r6, #0
	mov r1, #34
	bl sub_080CF0AC
_080E0938:
	ldrb r1, [r5]
	mov r0, #4
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r1, r0, #26
_080E0942:
	ldr r0, _080E0ACC  @ =gRam
	mov r8, r0
	ldr r0, _080E0AD0  @ =0x00000F92
	add r0, r0, r8
	add r0, r6, r0
	strb r1, [r0]
	ldr r0, _080E0AD4  @ =0x00000F52
	add r0, r0, r8
	add r4, r6, r0
	ldrb r0, [r4]
	cmp r0, #2
	beq _080E095C
	b _080E0B18
_080E095C:
	ldr r0, _080E0AD8  @ =0x00001082
	add r0, r0, r8
	add r4, r6, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E098E
	ldr r1, _080E0ADC  @ =0x00000DB5
	add r1, r1, r8
	mov r0, #5
	strb r0, [r1]
	mov r0, #2
	bl sub_080AF5F8
	ldr r0, _080E0AE0  @ =0x00000FD2
	add r0, r0, r8
	add r0, r6, r0
	mov r1, #39
	strb r1, [r0]
	mov r0, #20
	neg r0, r0
	bl sub_080AA83C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_080E098E:
	mov r0, #52
	bl sub_080CF370
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	add r2, r6, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E09A8
	b _080E0C04
_080E09A8:
	ldr r0, _080E0ADC  @ =0x00000DB5
	add r0, r0, r8
	ldrb r0, [r0]
	ldr r2, _080E0AE4  @ =0x00000979
	add r2, r2, r8
	strb r0, [r2]
	ldr r0, _080E0AE0  @ =0x00000FD2
	add r0, r0, r8
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r1, r0, #24
	cmp r1, #0
	beq _080E09CC
	ldr r0, _080E0AE8  @ =gUnknown_081767EC
	lsr r1, r1, #27
	add r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
_080E09CC:
	ldrb r0, [r2]
	lsl r0, r0, #25
	mov r1, #224
	lsl r1, r1, #19
	add r5, r0, r1
	cmp r5, #0
	blt _080E0A46
	add r7, sp, #4
	ldr r2, _080E0AEC  @ =0x00000964
	add r2, r2, r8
	mov r9, r2
_080E09E2:
	ldr r0, _080E0AF0  @ =gUnknown_03003E74
	ldrb r1, [r7]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #150
	lsl r1, r1, #4
	add r1, r1, r8
	ldrh r2, [r1]
	sub r2, r2, #20
	ldr r1, _080E0AF4  @ =gUnknown_081767F2
	asr r5, r5, #24
	add r1, r5, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r2, r9
	ldrh r3, [r2]
	sub r3, r3, #48
	ldr r2, _080E0AF8  @ =gUnknown_08176804
	add r2, r5, r2
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E0AFC  @ =gUnknown_08176816
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080E0B00  @ =gUnknown_08176828
	add r4, r5, r4
	ldrb r4, [r4]
	lsl r4, r4, #8
	orr r3, r3, r4
	mov r4, #0
	str r4, [sp]
	bl sub_080C6004
	sub r5, r5, #1
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	lsl r5, r5, #24
	cmp r5, #0
	bge _080E09E2
_080E0A46:
	ldr r4, _080E0ACC  @ =gRam
	ldr r3, _080E0ADC  @ =0x00000DB5
	add r1, r4, r3
	ldr r2, _080E0B04  @ =0x000010E2
	add r0, r4, r2
	add r0, r6, r0
	ldrb r1, [r1]
	ldrb r0, [r0]
	orr r1, r1, r0
	add r3, r3, #96
	add r0, r4, r3
	ldrb r0, [r0]
	orr r1, r1, r0
	ldr r2, _080E0B08  @ =0x00000E16
	add r0, r4, r2
	ldrb r0, [r0]
	orr r1, r1, r0
	add r3, r3, #2
	add r0, r4, r3
	ldrb r0, [r0]
	orr r1, r1, r0
	add r2, r2, #2
	add r0, r4, r2
	ldrb r0, [r0]
	orr r1, r1, r0
	add r3, r3, #2
	add r0, r4, r3
	ldrb r0, [r0]
	orr r1, r1, r0
	cmp r1, #0
	beq _080E0A86
	b _080E0B98
_080E0A86:
	ldr r1, _080E0B0C  @ =0x00001132
	add r0, r4, r1
	add r0, r6, r0
	mov r1, #10
	strb r1, [r0]
	add r0, r6, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E0A9E
	b _080E0B98
_080E0A9E:
	ldr r1, _080E0B10  @ =gUnknown_03003E70
	mov r0, #1
	strb r0, [r1]
	ldr r2, _080E0B14  @ =0x00000546
	add r0, r4, r2
	ldrh r1, [r0]
	mov r0, #129
	lsl r0, r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _080E0B98
	add r0, r6, #0
	mov r1, #139
	bl sub_080E1058
	ldr r3, _080E0AD4  @ =0x00000F52
	add r1, r4, r3
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080E0B98
	.byte 0x00
	.byte 0x00
_080E0ACC:
	.4byte gRam
_080E0AD0:
	.4byte 0x00000F92
_080E0AD4:
	.4byte 0x00000F52
_080E0AD8:
	.4byte 0x00001082
_080E0ADC:
	.4byte 0x00000DB5
_080E0AE0:
	.4byte 0x00000FD2
_080E0AE4:
	.4byte 0x00000979
_080E0AE8:
	.4byte gUnknown_081767EC
_080E0AEC:
	.4byte 0x00000964
_080E0AF0:
	.4byte gUnknown_03003E74
_080E0AF4:
	.4byte gUnknown_081767F2
_080E0AF8:
	.4byte gUnknown_08176804
_080E0AFC:
	.4byte gUnknown_08176816
_080E0B00:
	.4byte gUnknown_08176828
_080E0B04:
	.4byte 0x000010E2
_080E0B08:
	.4byte 0x00000E16
_080E0B0C:
	.4byte 0x00001132
_080E0B10:
	.4byte gUnknown_03003E70
_080E0B14:
	.4byte 0x00000546
_080E0B18:
	cmp r0, #1
	bne _080E0B30
	ldr r0, _080E0B2C  @ =0x00001AE2
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E0B9E
	mov r0, #1
	mov r10, r0
	b _080E0B98
_080E0B2C:
	.4byte 0x00001AE2
_080E0B30:
	cmp r0, #3
	beq _080E0B7C
	ldr r0, _080E0B70  @ =0x00001132
	add r0, r0, r8
	add r0, r6, r0
	mov r1, #10
	strb r1, [r0]
	add r0, r6, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E0B98
	ldr r1, _080E0B74  @ =gUnknown_03003E70
	mov r0, #1
	strb r0, [r1]
	ldr r0, _080E0B78  @ =0x00000546
	add r0, r0, r8
	ldrh r1, [r0]
	mov r0, #129
	lsl r0, r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _080E0B98
	add r0, r6, #0
	mov r1, #136
	bl sub_080E1058
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _080E0B98
_080E0B70:
	.4byte 0x00001132
_080E0B74:
	.4byte gUnknown_03003E70
_080E0B78:
	.4byte 0x00000546
_080E0B7C:
	ldr r0, _080E0B8C  @ =0x00001AE2
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E0B90
	mov r1, #1
	mov r10, r1
	b _080E0B98
_080E0B8C:
	.4byte 0x00001AE2
_080E0B90:
	mov r0, #1
	strb r0, [r4]
	mov r2, #1
	str r2, [sp, #8]
_080E0B98:
	ldr r3, [sp, #8]
	cmp r3, #0
	beq _080E0BEA
_080E0B9E:
	bl sub_080AA868
	cmp r0, #19
	bgt _080E0BC4
	ldr r0, _080E0BBC  @ =gRam
	ldr r1, _080E0BC0  @ =0x00000F52
	add r0, r0, r1
	add r0, r6, r0
	mov r1, #0
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #138
	bl sub_080E1058
	b _080E0BEA
_080E0BBC:
	.4byte gRam
_080E0BC0:
	.4byte 0x00000F52
_080E0BC4:
	ldr r1, _080E0C14  @ =gRam
	ldr r2, _080E0C18  @ =0x00001082
	add r0, r1, r2
	add r0, r6, r0
	mov r2, #0
	strb r2, [r0]
	ldr r3, _080E0C1C  @ =0x00000DB4
	add r0, r1, r3
	strb r2, [r0]
	ldr r0, _080E0C20  @ =0x00000F52
	add r1, r1, r0
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #137
	bl sub_080E1058
_080E0BEA:
	mov r1, r10
	cmp r1, #0
	beq _080E0C04
	ldr r0, _080E0C14  @ =gRam
	ldr r2, _080E0C20  @ =0x00000F52
	add r0, r0, r2
	add r0, r6, r0
	mov r1, #0
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #138
	bl sub_080E1058
_080E0C04:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080E0C14:
	.4byte gRam
_080E0C18:
	.4byte 0x00001082
_080E0C1C:
	.4byte 0x00000DB4
_080E0C20:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E086C

	THUMB_FUNC_START sub_080E0C24
sub_080E0C24: @ 0x080E0C24
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080E0CD8  @ =gRam
	ldr r1, _080E0CDC  @ =0x000010A2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #4
	bls _080E0C42
	ldr r2, _080E0CE0  @ =0x00000F72
	add r0, r6, r2
	add r0, r4, r0
	mov r1, #6
	strb r1, [r0]
_080E0C42:
	ldr r1, _080E0CE4  @ =0x00001012
	add r0, r6, r1
	add r5, r4, r0
	ldrb r1, [r5]
	mov r0, #224
	and r0, r0, r1
	strb r0, [r5]
	ldr r2, _080E0CE8  @ =0x00000FE2
	add r0, r6, r2
	add r7, r4, r0
	ldrb r3, [r7]
	cmp r3, #0
	bne _080E0C66
	ldr r1, _080E0CEC  @ =0x00001052
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	lsr r3, r0, #3
_080E0C66:
	ldr r0, _080E0CF0  @ =0x00001122
	add r2, r6, r0
	add r2, r4, r2
	ldrb r1, [r2]
	mov r0, #191
	and r0, r0, r1
	mov r1, #4
	and r3, r3, r1
	lsl r1, r3, #4
	orr r0, r0, r1
	strb r0, [r2]
	ldr r2, _080E0CF4  @ =0x00001624
	add r1, r6, r2
	ldrb r0, [r1]
	sub r0, r0, #3
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080C6240
	ldrb r0, [r7]
	cmp r0, #0
	beq _080E0CCC
	ldrb r0, [r5]
	mov r1, #5
	orr r0, r0, r1
	strb r0, [r5]
	ldrb r0, [r7]
	cmp r0, #96
	bne _080E0CC6
	ldr r1, _080E0CF8  @ =0x000009AD
	add r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E0CC6
	ldr r2, _080E0CFC  @ =0x00000FC2
	add r1, r6, r2
	mov r0, #112
	strb r0, [r1]
	ldr r1, _080E0D00  @ =gUnknown_0817683A
	sub r2, r2, #80
	add r0, r6, r2
	add r0, r4, r0
	ldrb r0, [r0]
	sub r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	bl sub_080AA83C
_080E0CC6:
	add r0, r4, #0
	bl sub_080E0DF8
_080E0CCC:
	add r0, r4, #0
	bl sub_080E0D04
	pop {r4-r7}
	pop {r0}
	bx r0
_080E0CD8:
	.4byte gRam
_080E0CDC:
	.4byte 0x000010A2
_080E0CE0:
	.4byte 0x00000F72
_080E0CE4:
	.4byte 0x00001012
_080E0CE8:
	.4byte 0x00000FE2
_080E0CEC:
	.4byte 0x00001052
_080E0CF0:
	.4byte 0x00001122
_080E0CF4:
	.4byte 0x00001624
_080E0CF8:
	.4byte 0x000009AD
_080E0CFC:
	.4byte 0x00000FC2
_080E0D00:
	.4byte gUnknown_0817683A
	THUMB_FUNC_END sub_080E0C24

	THUMB_FUNC_START sub_080E0D04
sub_080E0D04: @ 0x080E0D04
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r8, r4
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E0DE8
	ldr r6, _080E0DA4  @ =gRam
	ldr r1, _080E0DA8  @ =0x000010B2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #1
	bne _080E0D32
	mov r0, #64
	mov r1, #0
	bl sub_0812A324
_080E0D32:
	ldr r2, _080E0DAC  @ =0x00001052
	add r0, r6, r2
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl Sprite3_MoveHoriz
	ldr r5, _080E0DB0  @ =0x00000FD2
	add r0, r6, r5
	add r3, r4, r0
	ldrb r0, [r3]
	mov r12, r0
	cmp r0, #0
	bne _080E0DE8
	ldr r2, _080E0DB4  @ =0x00001172
	add r1, r6, r2
	add r1, r4, r1
	sub r5, r5, #16
	add r0, r6, r5
	add r7, r4, r0
	ldrb r0, [r7]
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	beq _080E0DD0
	cmp r5, #1
	bne _080E0DE8
	ldr r0, _080E0DB8  @ =0x00000EE2
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080E0DBC  @ =gUnknown_08176844
	ldr r5, _080E0DC0  @ =0x00000F92
	add r0, r6, r5
	add r0, r4, r0
	ldrb r0, [r0]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E0DC4  @ =0x00000F02
	add r0, r6, r1
	add r0, r4, r0
	ldr r2, _080E0DC8  @ =0x000016C5
	add r1, r6, r2
	ldrb r1, [r1]
	strb r1, [r0]
	mov r0, #32
	strb r0, [r3]
	ldr r5, _080E0DCC  @ =0x000010A2
	add r0, r6, r5
	add r0, r4, r0
	mov r1, r12
	strb r1, [r0]
	b _080E0DE8
	.byte 0x00
	.byte 0x00
_080E0DA4:
	.4byte gRam
_080E0DA8:
	.4byte 0x000010B2
_080E0DAC:
	.4byte 0x00001052
_080E0DB0:
	.4byte 0x00000FD2
_080E0DB4:
	.4byte 0x00001172
_080E0DB8:
	.4byte 0x00000EE2
_080E0DBC:
	.4byte gUnknown_08176844
_080E0DC0:
	.4byte 0x00000F92
_080E0DC4:
	.4byte 0x00000F02
_080E0DC8:
	.4byte 0x000016C5
_080E0DCC:
	.4byte 0x000010A2
_080E0DD0:
	mov r0, r8
	bl sub_080C79F8
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E0DE8
	mov r0, #16
	strb r0, [r7]
	ldr r2, _080E0DF4  @ =0x00000FE2
	add r0, r6, r2
	add r0, r0, r8
	strb r5, [r0]
_080E0DE8:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E0DF4:
	.4byte 0x00000FE2
	THUMB_FUNC_END sub_080E0D04

	THUMB_FUNC_START sub_080E0DF8
sub_080E0DF8: @ 0x080E0DF8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r8
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E0EE8
	add r0, sp, #4
	mov r1, #1
	strb r1, [r0]
	mov r2, #4
	ldr r0, _080E0E50  @ =gRam
	mov r9, r0
	ldr r0, _080E0E54  @ =0x00000F72
	add r0, r0, r9
	add r0, r0, r8
	str r0, [sp, #8]
	ldr r3, _080E0E58  @ =0x00000964
	add r3, r3, r9
	mov r10, r3
	mov r6, sp
	add r6, r6, #4
	str r6, [sp, #12]
_080E0E3C:
	lsl r0, r2, #24
	asr r1, r0, #24
	add r2, r0, #0
	cmp r1, #4
	beq _080E0E6C
	cmp r1, #3
	beq _080E0E60
	ldr r0, _080E0E5C  @ =gUnknown_08176850
	add r0, r1, r0
	b _080E0E76
_080E0E50:
	.4byte gRam
_080E0E54:
	.4byte 0x00000F72
_080E0E58:
	.4byte 0x00000964
_080E0E5C:
	.4byte gUnknown_08176850
_080E0E60:
	ldr r1, _080E0E68  @ =gUnknown_0817685A
	ldr r7, [sp, #8]
	ldrb r0, [r7]
	b _080E0E72
_080E0E68:
	.4byte gUnknown_0817685A
_080E0E6C:
	ldr r1, _080E0EF8  @ =gUnknown_08176860
	ldr r3, [sp, #8]
	ldrb r0, [r3]
_080E0E72:
	sub r0, r0, #1
	add r0, r0, r1
_080E0E76:
	ldrb r4, [r0]
	ldr r0, _080E0EFC  @ =gUnknown_08176855
	asr r5, r2, #24
	add r0, r5, r0
	ldrb r3, [r0]
	cmp r4, #235
	bls _080E0E88
	mov r0, #254
	and r3, r3, r0
_080E0E88:
	ldr r0, _080E0F00  @ =gUnknown_03003E74
	ldr r6, [sp, #12]
	ldrb r1, [r6]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r9
	ldr r1, _080E0F04  @ =gUnknown_08176846
	add r1, r5, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080E0F08  @ =gUnknown_0817684B
	add r2, r5, r2
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	mov r7, r10
	ldrh r7, [r7]
	add r2, r2, r7
	lsl r2, r2, #16
	lsr r2, r2, #16
	lsl r3, r3, #8
	add r3, r4, r3
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r4, #0
	str r4, [sp]
	bl sub_080C6004
	sub r1, r5, #1
	lsl r1, r1, #24
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	lsr r2, r1, #24
	cmp r1, #0
	bge _080E0E3C
	mov r0, r8
	bl sub_080EAAF0
_080E0EE8:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080E0EF8:
	.4byte gUnknown_08176860
_080E0EFC:
	.4byte gUnknown_08176855
_080E0F00:
	.4byte gUnknown_03003E74
_080E0F04:
	.4byte gUnknown_08176846
_080E0F08:
	.4byte gUnknown_0817684B
	THUMB_FUNC_END sub_080E0DF8

	THUMB_FUNC_START sub_080E0F0C
sub_080E0F0C: @ 0x080E0F0C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	bl sub_080C6340
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r9
	bl sub_080C632C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E0FDA
	ldr r2, _080E0FEC  @ =gRam
	ldr r1, _080E0FF0  @ =0x00000F92
	add r0, r2, r1
	add r0, r0, r9
	ldrb r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #8]
	mov r5, #2
	mov r8, r5
	add r7, sp, #4
	mov r10, r2
_080E0F50:
	ldr r6, [sp, #8]
	add r6, r6, r8
	lsl r6, r6, #24
	lsr r6, r6, #24
	ldr r0, _080E0FF4  @ =gUnknown_03003E74
	ldrb r1, [r7]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r10
	ldr r1, _080E0FF8  @ =gUnknown_08176866
	add r1, r6, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, _080E0FFC  @ =0x00000964
	add r3, r3, r10
	ldr r2, _080E1000  @ =gUnknown_08176875
	add r2, r6, r2
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E1004  @ =gUnknown_08176884
	add r3, r6, r3
	ldrb r3, [r3]
	ldr r4, _080E1008  @ =gUnknown_08176893
	add r4, r6, r4
	ldrb r4, [r4]
	ldr r5, _080E100C  @ =gUnknown_03002B99
	ldrb r5, [r5]
	lsl r5, r5, #24
	asr r5, r5, #24
	orr r4, r4, r5
	lsl r4, r4, #8
	add r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r4, _080E1010  @ =gUnknown_081768A2
	add r6, r6, r4
	ldrb r4, [r6]
	str r4, [sp]
	bl sub_080C6004
	mov r0, r8
	lsl r1, r0, #24
	mov r5, #255
	lsl r5, r5, #24
	add r1, r1, r5
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	lsr r0, r1, #24
	mov r8, r0
	cmp r1, #0
	bge _080E0F50
	mov r0, r9
	bl sub_080C6230
_080E0FDA:
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
_080E0FEC:
	.4byte gRam
_080E0FF0:
	.4byte 0x00000F92
_080E0FF4:
	.4byte gUnknown_03003E74
_080E0FF8:
	.4byte gUnknown_08176866
_080E0FFC:
	.4byte 0x00000964
_080E1000:
	.4byte gUnknown_08176875
_080E1004:
	.4byte gUnknown_08176884
_080E1008:
	.4byte gUnknown_08176893
_080E100C:
	.4byte gUnknown_03002B99
_080E1010:
	.4byte gUnknown_081768A2
	THUMB_FUNC_END sub_080E0F0C

	THUMB_FUNC_START sub_080E1014
sub_080E1014: @ 0x080E1014
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080E1044  @ =gArrowCount
	ldr r2, _080E1048  @ =gRam
	ldr r4, _080E104C  @ =0x00001002
	add r1, r2, r4
	add r1, r0, r1
	ldrb r1, [r1]
	strb r1, [r3]
	ldr r3, _080E1050  @ =gUnknown_081767DC
	ldr r1, _080E1054  @ =0x00000F62
	add r2, r2, r1
	add r2, r0, r2
	ldrb r1, [r2]
	lsl r1, r1, #2
	add r1, r1, r3
	ldr r1, [r1]
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E1044:
	.4byte gArrowCount
_080E1048:
	.4byte gRam
_080E104C:
	.4byte 0x00001002
_080E1050:
	.4byte gUnknown_081767DC
_080E1054:
	.4byte 0x00000F62
	THUMB_FUNC_END sub_080E1014

	THUMB_FUNC_START sub_080E1058
sub_080E1058: @ 0x080E1058
	push {r4,lr}
	add r4, r0, #0
	add r0, r1, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	lsl r0, r0, #16
	lsr r0, r0, #16
	bl sub_080C95C0
	ldr r0, _080E107C  @ =gRam
	ldr r1, _080E1080  @ =0x00000FC2
	add r0, r0, r1
	add r4, r4, r0
	mov r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
_080E107C:
	.4byte gRam
_080E1080:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E1058

	THUMB_FUNC_START sub_080E1084
sub_080E1084: @ 0x080E1084
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r2, _080E10B8  @ =gRam
	ldr r0, _080E10BC  @ =0x00001012
	add r1, r2, r0
	add r1, r4, r1
	ldrb r3, [r1]
	mov r0, #224
	and r0, r0, r3
	strb r0, [r1]
	ldr r0, _080E10C0  @ =0x00001624
	add r2, r2, r0
	ldrb r0, [r2]
	add r0, r0, #3
	strb r0, [r2]
	add r0, r4, #0
	bl sub_080C6240
	add r0, r4, #0
	bl sub_080E0D04
	pop {r4}
	pop {r0}
	bx r0
_080E10B8:
	.4byte gRam
_080E10BC:
	.4byte 0x00001012
_080E10C0:
	.4byte 0x00001624
	THUMB_FUNC_END sub_080E1084

	THUMB_FUNC_START sub_080E10C4
sub_080E10C4: @ 0x080E10C4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r7, #0
	ldr r6, _080E10F4  @ =gRam
	ldr r1, _080E10F8  @ =0x00000F82
	add r0, r6, r1
	add r0, r0, r5
	mov r8, r0
	ldrb r1, [r0]
	cmp r1, #0
	bne _080E1108
	ldr r1, _080E10FC  @ =0x00000F92
	add r0, r6, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080E1100
	add r0, r5, #0
	bl sub_080E1544
	b _080E116E
_080E10F4:
	.4byte gRam
_080E10F8:
	.4byte 0x00000F82
_080E10FC:
	.4byte 0x00000F92
_080E1100:
	add r0, r5, #0
	bl sub_080C6240
	b _080E116E
_080E1108:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080E1118
	add r0, r5, #0
	bl sub_080C58F0
	b _080E116E
_080E1118:
	ldr r1, _080E112C  @ =0x00001082
	add r0, r6, r1
	add r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #16
	beq _080E1130
	add r0, r0, #1
	strb r0, [r1]
	b _080E116A
	.byte 0x00
	.byte 0x00
_080E112C:
	.4byte 0x00001082
_080E1130:
	ldr r1, _080E1180  @ =0x00000F22
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #255
	strb r1, [r0]
	ldr r0, _080E1184  @ =0x00001002
	add r4, r6, r0
	add r4, r5, r4
	mov r0, #1
	neg r0, r0
	strb r0, [r4]
	add r0, r5, #0
	bl sub_080C6F48
	strb r7, [r4]
	ldr r1, _080E1188  @ =0x000015E2
	add r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _080E116A
	mov r0, r8
	strb r7, [r0]
	ldr r1, _080E118C  @ =0x00001172
	add r0, r6, r1
	add r0, r5, r0
	strb r7, [r0]
	add r0, r5, #0
	bl sub_080E157C
_080E116A:
	cmp r7, #0
	beq _080E1174
_080E116E:
	add r0, r5, #0
	bl sub_080E15E0
_080E1174:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E1180:
	.4byte 0x00000F22
_080E1184:
	.4byte 0x00001002
_080E1188:
	.4byte 0x000015E2
_080E118C:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080E10C4

	THUMB_FUNC_START sub_080E1190
sub_080E1190: @ 0x080E1190
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C5044
	ldr r5, _080E1230  @ =gRam
	ldr r1, _080E1234  @ =0x00000996
	add r0, r5, r1
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #15
	and r0, r0, r1
	cmp r0, #0
	bne _080E11E0
	ldr r0, _080E1238  @ =0x00000F62
	add r2, r5, r0
	add r2, r4, r2
	ldr r3, _080E123C  @ =gUnknown_081768D4
	ldr r1, _080E1240  @ =0x00000F72
	add r0, r5, r1
	add r5, r4, r0
	ldrb r1, [r5]
	mov r0, #1
	and r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	ldrb r1, [r2]
	add r0, r0, r1
	strb r0, [r2]
	bl GetRandomInt
	mov r1, #3
	and r1, r1, r0
	cmp r1, #0
	bne _080E11E0
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_080E11E0:
	ldr r3, _080E1230  @ =gRam
	ldr r1, _080E1238  @ =0x00000F62
	add r0, r3, r1
	add r0, r4, r0
	ldrb r0, [r0]
	mov r2, #15
	and r2, r2, r0
	ldr r0, _080E1244  @ =0x00000F22
	add r1, r3, r0
	add r1, r4, r1
	ldr r0, _080E1248  @ =gUnknown_081768B4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E124C  @ =0x00000F12
	add r1, r3, r0
	add r1, r4, r1
	ldr r0, _080E1250  @ =gUnknown_081768C4
	add r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _080E1234  @ =0x00000996
	add r0, r3, r1
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #3
	and r0, r0, r1
	ldr r1, _080E1254  @ =0x00000FC2
	add r3, r3, r1
	add r3, r4, r3
	ldrb r1, [r3]
	orr r0, r0, r1
	cmp r0, #0
	beq _080E1258
	add r0, r4, #0
	bl sub_080E12DC
	b _080E125E
	.byte 0x00
	.byte 0x00
_080E1230:
	.4byte gRam
_080E1234:
	.4byte 0x00000996
_080E1238:
	.4byte 0x00000F62
_080E123C:
	.4byte gUnknown_081768D4
_080E1240:
	.4byte 0x00000F72
_080E1244:
	.4byte 0x00000F22
_080E1248:
	.4byte gUnknown_081768B4
_080E124C:
	.4byte 0x00000F12
_080E1250:
	.4byte gUnknown_081768C4
_080E1254:
	.4byte 0x00000FC2
_080E1258:
	add r0, r4, #0
	bl sub_080E15A8
_080E125E:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E1190

	THUMB_FUNC_START sub_080E1264
sub_080E1264: @ 0x080E1264
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080E12BC  @ =gRam
	ldr r0, _080E12C0  @ =0x00001172
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080E12C4  @ =0x00000F52
	add r0, r6, r2
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E12C8  @ =0x00000F22
	add r2, r6, r0
	add r2, r4, r2
	ldr r3, _080E12CC  @ =gUnknown_081768D6
	ldr r1, _080E12D0  @ =0x00000996
	add r0, r6, r1
	ldrb r0, [r0]
	lsr r0, r0, #1
	mov r1, #1
	and r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	add r0, r4, #0
	bl Sprite3_MoveHoriz
	ldr r2, _080E12D4  @ =0x00000FC2
	add r0, r6, r2
	add r0, r4, r0
	ldrb r5, [r0]
	cmp r5, #0
	bne _080E12B6
	add r0, r4, #0
	bl sub_080E13B0
	ldr r1, _080E12D8  @ =0x00000FA2
	add r0, r6, r1
	add r0, r4, r0
	strb r5, [r0]
_080E12B6:
	pop {r4-r6}
	pop {r0}
	bx r0
_080E12BC:
	.4byte gRam
_080E12C0:
	.4byte 0x00001172
_080E12C4:
	.4byte 0x00000F52
_080E12C8:
	.4byte 0x00000F22
_080E12CC:
	.4byte gUnknown_081768D6
_080E12D0:
	.4byte 0x00000996
_080E12D4:
	.4byte 0x00000FC2
_080E12D8:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080E1264

	THUMB_FUNC_START sub_080E12DC
sub_080E12DC: @ 0x080E12DC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	ldr r6, _080E1340  @ =gRam
	ldr r1, _080E1344  @ =0x00000F92
	add r0, r6, r1
	add r3, r4, r0
	ldr r2, _080E1348  @ =0x00000996
	add r2, r2, r6
	mov r12, r2
	ldrb r1, [r2]
	lsr r1, r1, #3
	mov r0, #1
	and r1, r1, r0
	ldr r0, _080E134C  @ =gUnknown_081768D8
	mov r8, r0
	ldr r2, _080E1350  @ =0x00000F82
	add r0, r6, r2
	add r2, r4, r0
	ldrb r0, [r2]
	add r0, r0, r8
	ldrb r0, [r0]
	add r0, r0, r1
	strb r0, [r3]
	ldr r1, _080E1354  @ =0x00000F52
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E1374
	ldr r2, _080E1358  @ =0x00000FD2
	add r0, r6, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E13A4
	bl GetRandomInt
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _080E135C
	add r0, r4, #0
	bl sub_080E157C
	b _080E13A4
	.byte 0x00
	.byte 0x00
_080E1340:
	.4byte gRam
_080E1344:
	.4byte 0x00000F92
_080E1348:
	.4byte 0x00000996
_080E134C:
	.4byte gUnknown_081768D8
_080E1350:
	.4byte 0x00000F82
_080E1354:
	.4byte 0x00000F52
_080E1358:
	.4byte 0x00000FD2
_080E135C:
	ldr r1, _080E1370  @ =0x00000FC2
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #128
	strb r1, [r0]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _080E13A4
	.byte 0x00
	.byte 0x00
_080E1370:
	.4byte 0x00000FC2
_080E1374:
	ldr r1, _080E1398  @ =0x00000FC2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E139C
	mov r0, r12
	ldrb r1, [r0]
	lsr r1, r1, #1
	mov r0, #2
	and r1, r1, r0
	ldrb r0, [r2]
	add r0, r0, r8
	ldrb r0, [r0]
	add r0, r0, r1
	strb r0, [r3]
	b _080E13A4
	.byte 0x00
	.byte 0x00
_080E1398:
	.4byte 0x00000FC2
_080E139C:
	strb r0, [r5]
	add r0, r7, #0
	bl sub_080E157C
_080E13A4:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E12DC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E13B0
sub_080E13B0: @ 0x080E13B0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	mov r6, #1
	ldr r5, _080E146C  @ =gRam
	mov r0, #150
	lsl r0, r0, #4
	add r7, r5, r0
	ldr r1, _080E1470  @ =0x00000FD2
	add r1, r1, r5
	mov r9, r1
_080E13CE:
	mov r0, #35
	mov r1, r8
	bl sub_080CA538
	add r4, r0, #0
	lsl r6, r6, #24
	cmp r4, #0
	blt _080E1452
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r2, _080E1474  @ =0x00001032
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #51
	strb r1, [r0]
	ldr r3, _080E1478  @ =0x00001122
	add r0, r5, r3
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
	ldr r1, _080E147C  @ =0x00001132
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	sub r2, r2, #176
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	ldr r1, _080E1480  @ =gUnknown_081768DA
	asr r2, r6, #24
	add r1, r2, r1
	ldrh r0, [r7]
	ldrb r1, [r1]
	add r0, r0, r1
	strh r0, [r7]
	ldr r3, _080E1484  @ =0x00000EE2
	add r0, r5, r3
	add r0, r4, r0
	ldrb r1, [r7]
	strb r1, [r0]
	ldr r0, _080E1488  @ =0x00000F02
	add r1, r5, r0
	add r1, r4, r1
	ldr r3, _080E148C  @ =0x00000961
	add r0, r5, r3
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E1490  @ =0x00000F22
	add r1, r5, r0
	add r1, r4, r1
	ldr r0, _080E1494  @ =gUnknown_081768DC
	add r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _080E1498  @ =0x00000FE2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #8
	strb r1, [r0]
	mov r2, r9
	add r1, r4, r2
	mov r0, #64
	strb r0, [r1]
_080E1452:
	mov r3, #255
	lsl r3, r3, #24
	add r0, r6, r3
	lsr r6, r0, #24
	cmp r0, #0
	bge _080E13CE
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E146C:
	.4byte gRam
_080E1470:
	.4byte 0x00000FD2
_080E1474:
	.4byte 0x00001032
_080E1478:
	.4byte 0x00001122
_080E147C:
	.4byte 0x00001132
_080E1480:
	.4byte gUnknown_081768DA
_080E1484:
	.4byte 0x00000EE2
_080E1488:
	.4byte 0x00000F02
_080E148C:
	.4byte 0x00000961
_080E1490:
	.4byte 0x00000F22
_080E1494:
	.4byte gUnknown_081768DC
_080E1498:
	.4byte 0x00000FE2
	THUMB_FUNC_END sub_080E13B0

	THUMB_FUNC_START sub_080E149C
sub_080E149C: @ 0x080E149C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r4, r2, #0
	ldr r3, _080E14D4  @ =gRam
	ldr r1, _080E14D8  @ =0x00001142
	add r0, r3, r1
	add r0, r2, r0
	mov r1, #6
	strb r1, [r0]
	ldr r1, _080E14DC  @ =0x00000B36
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #206
	bne _080E14C6
	ldr r0, _080E14E0  @ =0x00000F82
	add r1, r3, r0
	add r1, r2, r1
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_080E14C6:
	add r0, r4, #0
	bl sub_080E157C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E14D4:
	.4byte gRam
_080E14D8:
	.4byte 0x00001142
_080E14DC:
	.4byte 0x00000B36
_080E14E0:
	.4byte 0x00000F82
	THUMB_FUNC_END sub_080E149C

	THUMB_FUNC_START sub_080E14E4
sub_080E14E4: @ 0x080E14E4
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _080E1500  @ =gRam
	ldr r1, _080E1504  @ =0x00000F82
	add r0, r3, r1
	add r0, r2, r0
	ldrb r4, [r0]
	cmp r4, #0
	beq _080E1508
	add r0, r2, #0
	bl sub_080C24B0
	b _080E152E
_080E1500:
	.4byte gRam
_080E1504:
	.4byte 0x00000F82
_080E1508:
	ldr r1, _080E1534  @ =0x00000F52
	add r0, r3, r1
	add r0, r2, r0
	mov r1, #2
	strb r1, [r0]
	ldr r1, _080E1538  @ =0x00000FC2
	add r0, r3, r1
	add r0, r2, r0
	mov r1, #32
	strb r1, [r0]
	ldr r1, _080E153C  @ =0x00000FA2
	add r0, r3, r1
	add r0, r2, r0
	mov r1, #9
	strb r1, [r0]
	ldr r1, _080E1540  @ =0x000010C2
	add r0, r3, r1
	add r0, r2, r0
	strb r4, [r0]
_080E152E:
	pop {r4}
	pop {r0}
	bx r0
_080E1534:
	.4byte 0x00000F52
_080E1538:
	.4byte 0x00000FC2
_080E153C:
	.4byte 0x00000FA2
_080E1540:
	.4byte 0x000010C2
	THUMB_FUNC_END sub_080E14E4

	THUMB_FUNC_START sub_080E1544
sub_080E1544: @ 0x080E1544
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r0, _080E1570  @ =gRam
	ldr r1, _080E1574  @ =0x00000F92
	add r0, r0, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldr r0, _080E1578  @ =gUnknown_081768E0
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #2
	bl sub_080C9480
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
_080E1570:
	.4byte gRam
_080E1574:
	.4byte 0x00000F92
_080E1578:
	.4byte gUnknown_081768E0
	THUMB_FUNC_END sub_080E1544

	THUMB_FUNC_START sub_080E157C
sub_080E157C: @ 0x080E157C
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	bl GetRandomInt
	ldr r1, _080E15A0  @ =gRam
	ldr r2, _080E15A4  @ =0x00000FD2
	add r1, r1, r2
	add r4, r4, r1
	mov r1, #63
	and r1, r1, r0
	add r1, r1, #128
	strb r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E15A0:
	.4byte gRam
_080E15A4:
	.4byte 0x00000FD2
	THUMB_FUNC_END sub_080E157C

	THUMB_FUNC_START sub_080E15A8
sub_080E15A8: @ 0x080E15A8
	push {r4,lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r4, r1, #0
	ldr r0, _080E15D8  @ =gRam
	ldr r2, _080E15DC  @ =0x00001042
	add r0, r0, r2
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E15C4
	add r0, r1, #0
	bl Sprite3_Move
_080E15C4:
	add r0, r4, #0
	bl sub_080C6F48
	add r0, r4, #0
	bl sub_080E12DC
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E15D8:
	.4byte gRam
_080E15DC:
	.4byte 0x00001042
	THUMB_FUNC_END sub_080E15A8

	THUMB_FUNC_START sub_080E15E0
sub_080E15E0: @ 0x080E15E0
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E163E
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E163E
	ldr r1, _080E1618  @ =gRam
	ldr r2, _080E161C  @ =0x00000FE2
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E1620
	add r0, r4, #0
	bl sub_080E15A8
	b _080E163E
	.byte 0x00
	.byte 0x00
_080E1618:
	.4byte gRam
_080E161C:
	.4byte 0x00000FE2
_080E1620:
	ldr r2, _080E1634  @ =0x00000F52
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #2
	beq _080E1638
	add r0, r4, #0
	bl sub_080E1190
	b _080E163E
_080E1634:
	.4byte 0x00000F52
_080E1638:
	add r0, r5, #0
	bl sub_080E1264
_080E163E:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E15E0

	THUMB_FUNC_START sub_080E1644
sub_080E1644: @ 0x080E1644
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r1, _080E169C  @ =gRam
	ldr r2, _080E16A0  @ =0x00001002
	add r0, r1, r2
	add r0, r5, r0
	ldrb r4, [r0]
	add r2, r4, #0
	add r6, r1, #0
	cmp r4, #0
	beq _080E16BE
	mov r0, #7
	and r4, r4, r0
	cmp r4, #4
	bls _080E16B0
	mov r0, #5
	eor r0, r0, r4
	neg r1, r0
	orr r1, r1, r0
	asr r1, r1, #31
	mov r0, #4
	and r1, r1, r0
	ldr r0, _080E16A4  @ =0x00000F72
	add r3, r6, r0
	add r3, r5, r3
	ldr r4, _080E16A8  @ =gUnknown_081769A8
	lsr r0, r2, #3
	mov r2, #3
	and r0, r0, r2
	orr r1, r1, r0
	add r1, r1, r4
	ldrb r0, [r1]
	strb r0, [r3]
	ldr r1, _080E16AC  @ =0x00000D84
	add r2, r6, r1
	add r2, r5, r2
	ldrb r1, [r2]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	orr r0, r0, r1
	strb r0, [r2]
	b _080E171E
_080E169C:
	.4byte gRam
_080E16A0:
	.4byte 0x00001002
_080E16A4:
	.4byte 0x00000F72
_080E16A8:
	.4byte gUnknown_081769A8
_080E16AC:
	.4byte 0x00000D84
_080E16B0:
	ldr r2, _080E16E4  @ =0x00000FB2
	add r0, r6, r2
	add r0, r5, r0
	sub r1, r4, #1
	mov r2, #1
	eor r1, r1, r2
	strb r1, [r0]
_080E16BE:
	mov r0, #0
	cmp r0, #0
	bne _080E171E
	ldr r1, _080E16E8  @ =0x000009B2
	add r0, r6, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080E16F0
	ldr r2, _080E16EC  @ =0x000011B2
	add r0, r6, r2
	add r0, r5, r0
	ldrb r2, [r0]
	mov r1, #127
	and r1, r1, r2
	strb r1, [r0]
	b _080E171E
	.byte 0x00
	.byte 0x00
_080E16E4:
	.4byte 0x00000FB2
_080E16E8:
	.4byte 0x000009B2
_080E16EC:
	.4byte 0x000011B2
_080E16F0:
	ldr r1, _080E172C  @ =0x00000F52
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #1
	strb r1, [r0]
	ldr r2, _080E1730  @ =0x00000FC2
	add r0, r6, r2
	add r0, r5, r0
	mov r1, #112
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080E1734  @ =0x00000FB2
	add r1, r6, r2
	add r1, r5, r1
	strb r0, [r1]
	add r2, r2, #208
	add r1, r6, r2
	add r1, r5, r1
	strb r0, [r1]
_080E171E:
	add r0, r5, #0
	bl sub_080E25A8
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E172C:
	.4byte 0x00000F52
_080E1730:
	.4byte 0x00000FC2
_080E1734:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080E1644

	THUMB_FUNC_START sub_080E1738
sub_080E1738: @ 0x080E1738
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r9, r4
	ldr r0, _080E1800  @ =gRam
	mov r8, r0
	ldr r0, _080E1804  @ =0x00000F82
	add r0, r0, r8
	add r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #0
	bne _080E175C
	b _080E1A18
_080E175C:
	mov r5, #0
	mov r10, r5
	mov r7, #1
	ldr r0, _080E1808  @ =0x00000F22
	add r0, r0, r8
	add r1, r4, r0
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080E1772
	mov r5, #255
_080E1772:
	ldrb r1, [r1]
	ldr r3, _080E180C  @ =0x00000EE2
	add r3, r3, r8
	add r3, r4, r3
	ldrb r0, [r3]
	add r1, r1, r0
	ldr r2, _080E1810  @ =0x00000F02
	add r2, r2, r8
	add r2, r4, r2
	ldrb r0, [r2]
	lsl r0, r0, #8
	add r1, r1, r0
	lsl r0, r5, #8
	add r1, r1, r0
	strb r1, [r3]
	lsr r1, r1, #8
	strb r1, [r2]
	mov r5, #0
	ldr r0, _080E1814  @ =0x00000F12
	add r0, r0, r8
	add r1, r4, r0
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080E17A6
	mov r5, #255
_080E17A6:
	ldrb r1, [r1]
	ldr r3, _080E1818  @ =0x00000ED2
	add r3, r3, r8
	add r3, r4, r3
	ldrb r0, [r3]
	add r1, r1, r0
	ldr r2, _080E181C  @ =0x00000EF2
	add r2, r2, r8
	add r2, r4, r2
	ldrb r0, [r2]
	lsl r0, r0, #8
	add r1, r1, r0
	lsl r0, r5, #8
	add r1, r1, r0
	strb r1, [r3]
	lsr r1, r1, #8
	strb r1, [r2]
	ldrb r0, [r6]
	add r0, r0, r8
	ldr r1, _080E1820  @ =0x00000FF1
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #206
	bne _080E17D8
	b _080E18E4
_080E17D8:
	mov r5, #0
	add r0, r4, #0
	bl sub_080E2210
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E1834
	ldr r0, _080E1824  @ =0x000015E2
	add r0, r0, r8
	ldrh r0, [r0]
	cmp r0, #9
	beq _080E182C
	ldr r0, _080E1828  @ =0x00000FA2
	add r0, r0, r8
	add r0, r4, r0
	mov r2, r10
	strb r2, [r0]
	mov r7, #0
	b _080E182E
	.byte 0x00
	.byte 0x00
_080E1800:
	.4byte gRam
_080E1804:
	.4byte 0x00000F82
_080E1808:
	.4byte 0x00000F22
_080E180C:
	.4byte 0x00000EE2
_080E1810:
	.4byte 0x00000F02
_080E1814:
	.4byte 0x00000F12
_080E1818:
	.4byte 0x00000ED2
_080E181C:
	.4byte 0x00000EF2
_080E1820:
	.4byte 0x00000FF1
_080E1824:
	.4byte 0x000015E2
_080E1828:
	.4byte 0x00000FA2
_080E182C:
	mov r5, #1
_080E182E:
	cmp r5, #0
	bne _080E1834
	b _080E194A
_080E1834:
	ldr r3, _080E1850  @ =gRam
	ldr r4, _080E1854  @ =0x00001710
	add r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E185C
	ldr r1, _080E1858  @ =0x00000FA2
	add r0, r3, r1
	add r0, r0, r9
	mov r1, #0
	strb r1, [r0]
	mov r7, #0
	b _080E194A
	.byte 0x00
	.byte 0x00
_080E1850:
	.4byte gRam
_080E1854:
	.4byte 0x00001710
_080E1858:
	.4byte 0x00000FA2
_080E185C:
	ldr r2, _080E18D0  @ =0x00001622
	add r0, r3, r2
	ldrb r1, [r0]
	ldr r4, _080E18D4  @ =0x00001623
	add r0, r3, r4
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r2, r2, #162
	add r0, r3, r2
	ldrb r2, [r0]
	add r4, r4, #162
	add r0, r3, r4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #15
	bhi _080E194A
	ldr r1, _080E18D8  @ =0x00001624
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080E18DC  @ =0x00001625
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r4, r4, #5
	add r0, r3, r4
	ldrb r2, [r0]
	add r4, r4, #1
	add r0, r3, r4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #15
	bhi _080E194A
	ldr r1, _080E18E0  @ =0x000010F2
	add r0, r3, r1
	add r0, r0, r9
	mov r2, #161
	lsl r2, r2, #4
	add r1, r3, r2
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080E194A
	b _080E1950
	.byte 0x00
	.byte 0x00
_080E18D0:
	.4byte 0x00001622
_080E18D4:
	.4byte 0x00001623
_080E18D8:
	.4byte 0x00001624
_080E18DC:
	.4byte 0x00001625
_080E18E0:
	.4byte 0x000010F2
_080E18E4:
	ldr r0, _080E19DC  @ =0x00001622
	add r0, r0, r8
	ldrb r1, [r0]
	ldr r0, _080E19E0  @ =0x00001623
	add r0, r0, r8
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r0, _080E19E4  @ =0x000016C4
	add r0, r0, r8
	ldrb r2, [r0]
	ldr r0, _080E19E8  @ =0x000016C5
	add r0, r0, r8
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #31
	bhi _080E194A
	ldr r0, _080E19EC  @ =0x00001624
	add r0, r0, r8
	ldrb r1, [r0]
	ldr r0, _080E19F0  @ =0x00001625
	add r0, r0, r8
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #182
	lsl r0, r0, #5
	add r0, r0, r8
	ldrb r2, [r0]
	ldr r0, _080E19F4  @ =0x000016C1
	add r0, r0, r8
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #24
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #31
	bhi _080E194A
	mov r3, #1
	mov r10, r3
_080E194A:
	mov r4, r10
	cmp r4, #0
	beq _080E199E
_080E1950:
	ldr r1, _080E19F8  @ =gRam
	ldr r2, _080E19FC  @ =0x00000F82
	add r0, r1, r2
	add r0, r0, r9
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _080E1A00  @ =0x00000F52
	add r0, r1, r3
	add r3, r2, r0
	ldrb r0, [r3]
	add r4, r1, #0
	cmp r0, #3
	beq _080E1992
	mov r0, #3
	strb r0, [r3]
	ldr r1, _080E1A04  @ =0x00000FF2
	add r0, r4, r1
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #206
	beq _080E1992
	ldr r3, _080E1A08  @ =0x00000FC2
	add r0, r4, r3
	add r0, r2, r0
	mov r1, #16
	strb r1, [r0]
	ldr r1, _080E1A0C  @ =0x00001052
	add r0, r4, r1
	add r0, r2, r0
	mov r1, #0
	strb r1, [r0]
_080E1992:
	ldr r2, _080E1A10  @ =0x00000FA2
	add r0, r4, r2
	add r0, r0, r9
	mov r1, #0
	strb r1, [r0]
	mov r7, #0
_080E199E:
	cmp r7, #0
	bne _080E19A4
	b _080E1BA2
_080E19A4:
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	mov r2, r9
	bl sub_080C5ACC
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #0
	beq _080E19BA
	b _080E1BA2
_080E19BA:
	ldr r2, _080E19F8  @ =gRam
	ldr r4, _080E1A14  @ =0x00000961
	add r0, r2, r4
	add r4, r4, #4
	add r1, r2, r4
	ldrb r0, [r0]
	ldrb r1, [r1]
	orr r0, r0, r1
	cmp r0, #0
	bne _080E19D0
	b _080E1BA2
_080E19D0:
	ldr r1, _080E1A10  @ =0x00000FA2
	add r0, r2, r1
	add r0, r0, r9
	strb r3, [r0]
	b _080E1BA2
	.byte 0x00
	.byte 0x00
_080E19DC:
	.4byte 0x00001622
_080E19E0:
	.4byte 0x00001623
_080E19E4:
	.4byte 0x000016C4
_080E19E8:
	.4byte 0x000016C5
_080E19EC:
	.4byte 0x00001624
_080E19F0:
	.4byte 0x00001625
_080E19F4:
	.4byte 0x000016C1
_080E19F8:
	.4byte gRam
_080E19FC:
	.4byte 0x00000F82
_080E1A00:
	.4byte 0x00000F52
_080E1A04:
	.4byte 0x00000FF2
_080E1A08:
	.4byte 0x00000FC2
_080E1A0C:
	.4byte 0x00001052
_080E1A10:
	.4byte 0x00000FA2
_080E1A14:
	.4byte 0x00000961
_080E1A18:
	ldr r0, _080E1A94  @ =0x00000F92
	add r0, r0, r8
	add r7, r4, r0
	ldrb r2, [r7]
	mov r10, r2
	ldr r0, _080E1A98  @ =0x00000FB2
	add r0, r0, r8
	add r6, r4, r0
	ldrb r5, [r6]
	ldr r0, _080E1A9C  @ =0x00000FD2
	add r0, r0, r8
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E1A46
	ldr r0, _080E1AA0  @ =gUnknown_08176908
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r6]
	ldr r0, _080E1AA4  @ =gUnknown_0817690C
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r7]
_080E1A46:
	add r0, r4, #0
	bl sub_080E26E4
	strb r5, [r6]
	mov r3, r10
	strb r3, [r7]
	ldr r0, _080E1AA8  @ =0x00000FA2
	add r0, r0, r8
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #5
	bne _080E1A60
	b _080E1B8C
_080E1A60:
	mov r5, #0
	mov r6, #0
	mov r7, #0
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E1A74
	b _080E1BA2
_080E1A74:
	add r0, r4, #0
	bl sub_080C3964
	add r0, r4, #0
	bl sub_080C4F98
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E1AB6
	ldr r0, _080E1AAC  @ =0x00001626
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E1AB0
	mov r6, #1
	b _080E1AB2
_080E1A94:
	.4byte 0x00000F92
_080E1A98:
	.4byte 0x00000FB2
_080E1A9C:
	.4byte 0x00000FD2
_080E1AA0:
	.4byte gUnknown_08176908
_080E1AA4:
	.4byte gUnknown_0817690C
_080E1AA8:
	.4byte 0x00000FA2
_080E1AAC:
	.4byte 0x00001626
_080E1AB0:
	mov r5, #1
_080E1AB2:
	cmp r5, #0
	beq _080E1AD2
_080E1AB6:
	ldr r0, _080E1B1C  @ =gRam
	ldr r4, _080E1B20  @ =0x00000F52
	add r0, r0, r4
	mov r2, r9
	add r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #2
	bhi _080E1AD6
	mov r0, #3
	strb r0, [r1]
	mov r0, r9
	mov r1, #32
	bl sub_080E2814
_080E1AD2:
	cmp r6, #0
	beq _080E1AF6
_080E1AD6:
	ldr r1, _080E1B1C  @ =gRam
	ldr r3, _080E1B24  @ =0x00001072
	add r0, r1, r3
	add r0, r0, r9
	ldrb r0, [r0]
	cmp r0, #3
	bls _080E1AF6
	ldr r4, _080E1B20  @ =0x00000F52
	add r0, r1, r4
	add r0, r0, r9
	mov r1, #4
	strb r1, [r0]
	mov r0, r9
	mov r1, #128
	bl sub_080E2814
_080E1AF6:
	mov r0, r9
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E1BA2
	ldr r2, _080E1B1C  @ =gRam
	ldr r1, _080E1B28  @ =0x00001002
	add r0, r2, r1
	add r0, r0, r9
	ldrb r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #4
	bls _080E1B2C
	mov r0, r9
	bl Sprite3_Move
	b _080E1B40
_080E1B1C:
	.4byte gRam
_080E1B20:
	.4byte 0x00000F52
_080E1B24:
	.4byte 0x00001072
_080E1B28:
	.4byte 0x00001002
_080E1B2C:
	ldr r3, _080E1B78  @ =0x00001042
	add r0, r2, r3
	add r0, r0, r9
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E1B44
	mov r0, r9
	bl Sprite3_Move
	mov r7, #1
_080E1B40:
	cmp r7, #0
	beq _080E1B4A
_080E1B44:
	mov r0, r9
	bl sub_080C79F8
_080E1B4A:
	ldr r1, _080E1B7C  @ =gRam
	ldr r4, _080E1B80  @ =0x00000F52
	add r0, r1, r4
	mov r3, r9
	add r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #4
	beq _080E1B64
	ldr r4, _080E1B84  @ =0x000010A2
	add r0, r1, r4
	add r0, r0, r9
	mov r1, #0
	strb r1, [r0]
_080E1B64:
	ldr r0, _080E1B88  @ =gUnknown_081769B0
	ldrb r1, [r2]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	mov r0, r9
	bl _call_via_r1
	b _080E1BA2
	.byte 0x00
	.byte 0x00
_080E1B78:
	.4byte 0x00001042
_080E1B7C:
	.4byte gRam
_080E1B80:
	.4byte 0x00000F52
_080E1B84:
	.4byte 0x000010A2
_080E1B88:
	.4byte gUnknown_081769B0
_080E1B8C:
	ldr r0, _080E1BB4  @ =0x000009AD
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E1BA2
	mov r0, r9
	bl sub_080E2858
	mov r0, r9
	bl sub_080E2858
_080E1BA2:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E1BB4:
	.4byte 0x000009AD
	THUMB_FUNC_END sub_080E1738

	THUMB_FUNC_START sub_080E1BB8
sub_080E1BB8: @ 0x080E1BB8
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	add r0, r6, #0
	bl sub_080E2614
	ldr r4, _080E1C28  @ =gRam
	ldr r1, _080E1C2C  @ =0x00000FC2
	add r0, r4, r1
	add r5, r6, r0
	ldrb r3, [r5]
	cmp r3, #0
	bne _080E1C62
	sub r1, r1, #112
	add r0, r4, r1
	add r0, r6, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldr r1, _080E1C30  @ =0x00001002
	add r0, r4, r1
	add r0, r6, r0
	ldrb r1, [r0]
	lsl r2, r1, #24
	cmp r2, #0
	beq _080E1BF4
	mov r0, #7
	and r0, r0, r1
	cmp r0, #4
	bls _080E1C38
_080E1BF4:
	bl GetRandomInt
	mov r1, #63
	and r1, r1, r0
	add r1, r1, #40
	strb r1, [r5]
	ldr r0, _080E1C34  @ =0x00000FB2
	add r4, r4, r0
	add r4, r6, r4
	ldrb r5, [r4]
	bl GetRandomInt
	mov r1, #3
	and r1, r1, r0
	strb r1, [r4]
	cmp r5, r1
	beq _080E1C62
	eor r5, r5, r1
	mov r0, #2
	and r5, r5, r0
	cmp r5, #0
	bne _080E1C62
	add r0, r6, #0
	bl sub_080E26C8
	b _080E1C62
_080E1C28:
	.4byte gRam
_080E1C2C:
	.4byte 0x00000FC2
_080E1C30:
	.4byte 0x00001002
_080E1C34:
	.4byte 0x00000FB2
_080E1C38:
	lsr r0, r2, #27
	mov r1, #3
	and r0, r0, r1
	ldr r1, _080E1C68  @ =gUnknown_081769C4
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r0, _080E1C6C  @ =0x00000FB2
	add r1, r4, r0
	add r1, r6, r1
	ldrb r0, [r1]
	mov r2, #1
	eor r0, r0, r2
	strb r0, [r1]
	ldr r1, _080E1C70  @ =0x00001052
	add r0, r4, r1
	add r0, r6, r0
	strb r3, [r0]
	add r0, r6, #0
	bl sub_080E26C8
_080E1C62:
	pop {r4-r6}
	pop {r0}
	bx r0
_080E1C68:
	.4byte gUnknown_081769C4
_080E1C6C:
	.4byte 0x00000FB2
_080E1C70:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080E1BB8

	THUMB_FUNC_START sub_080E1C74
sub_080E1C74: @ 0x080E1C74
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080E263C
	ldr r6, _080E1D14  @ =gRam
	ldr r1, _080E1D18  @ =0x00001002
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #4
	bhi _080E1D4C
	ldr r3, _080E1D1C  @ =0x00000FC2
	add r0, r6, r3
	add r3, r4, r0
	ldrb r2, [r3]
	cmp r2, #0
	beq _080E1D44
	ldr r1, _080E1D20  @ =0x00001052
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080E1CB2
	add r0, r2, #1
	strb r0, [r3]
_080E1CB2:
	ldr r3, _080E1D24  @ =0x00001042
	add r0, r6, r3
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	beq _080E1CDA
	ldr r0, _080E1D28  @ =0x00000FB2
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	mov r2, #1
	eor r0, r0, r2
	strb r0, [r1]
	ldr r1, _080E1D2C  @ =0x00000FD2
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #12
	strb r1, [r0]
_080E1CDA:
	ldr r3, _080E1D30  @ =0x00000F22
	add r1, r6, r3
	add r1, r4, r1
	ldr r2, _080E1D34  @ =gUnknown_08176910
	ldr r0, _080E1D28  @ =0x00000FB2
	add r3, r6, r0
	add r3, r4, r3
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E1D38  @ =0x00000F12
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080E1D3C  @ =gUnknown_08176914
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E1D40  @ =0x00001082
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r3]
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080E1E70
	b _080E1E34
	.byte 0x00
	.byte 0x00
_080E1D14:
	.4byte gRam
_080E1D18:
	.4byte 0x00001002
_080E1D1C:
	.4byte 0x00000FC2
_080E1D20:
	.4byte 0x00001052
_080E1D24:
	.4byte 0x00001042
_080E1D28:
	.4byte 0x00000FB2
_080E1D2C:
	.4byte 0x00000FD2
_080E1D30:
	.4byte 0x00000F22
_080E1D34:
	.4byte gUnknown_08176910
_080E1D38:
	.4byte 0x00000F12
_080E1D3C:
	.4byte gUnknown_08176914
_080E1D40:
	.4byte 0x00001082
_080E1D44:
	add r0, r4, #0
	bl sub_080E264C
	b _080E1E34
_080E1D4C:
	ldr r3, _080E1DA0  @ =0x00000F22
	add r1, r6, r3
	add r1, r4, r1
	ldr r2, _080E1DA4  @ =gUnknown_08176960
	add r3, r3, #80
	add r0, r6, r3
	add r5, r4, r0
	ldrb r0, [r5]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E1DA8  @ =0x00000F12
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080E1DAC  @ =gUnknown_08176968
	ldrb r0, [r5]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080C79F8
	ldr r1, _080E1DB0  @ =0x00000FE2
	add r0, r6, r1
	add r3, r4, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _080E1DBC
	ldr r0, _080E1DB4  @ =0x00001042
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080E1DB8  @ =gUnknown_08176990
	ldrb r0, [r5]
	add r0, r0, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	and r0, r0, r1
	cmp r0, #0
	bne _080E1DCA
	mov r0, #88
	strb r0, [r3]
	b _080E1DCA
_080E1DA0:
	.4byte 0x00000F22
_080E1DA4:
	.4byte gUnknown_08176960
_080E1DA8:
	.4byte 0x00000F12
_080E1DAC:
	.4byte gUnknown_08176968
_080E1DB0:
	.4byte 0x00000FE2
_080E1DB4:
	.4byte 0x00001042
_080E1DB8:
	.4byte gUnknown_08176990
_080E1DBC:
	cmp r0, #44
	bne _080E1DCA
	ldr r0, _080E1E3C  @ =gUnknown_081769A0
	ldrb r1, [r5]
	add r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5]
_080E1DCA:
	ldr r6, _080E1E40  @ =gRam
	ldr r1, _080E1E44  @ =0x00001042
	add r2, r6, r1
	add r2, r4, r2
	ldr r1, _080E1E48  @ =gUnknown_08176988
	ldr r3, _080E1E4C  @ =0x00000F72
	add r0, r6, r3
	add r3, r4, r0
	ldrb r5, [r3]
	add r1, r5, r1
	ldrb r2, [r2]
	ldrb r0, [r1]
	and r0, r0, r2
	cmp r0, #0
	beq _080E1DF0
	ldr r0, _080E1E50  @ =gUnknown_08176998
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r3]
_080E1DF0:
	ldr r0, _080E1E54  @ =0x00000F22
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080E1E58  @ =gUnknown_08176970
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E1E5C  @ =0x00000F12
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080E1E60  @ =gUnknown_08176978
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E1E64  @ =0x00000FB2
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080E1E68  @ =gUnknown_08176980
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E1E6C  @ =0x00001082
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080E1E70
_080E1E34:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E1E3C:
	.4byte gUnknown_081769A0
_080E1E40:
	.4byte gRam
_080E1E44:
	.4byte 0x00001042
_080E1E48:
	.4byte gUnknown_08176988
_080E1E4C:
	.4byte 0x00000F72
_080E1E50:
	.4byte gUnknown_08176998
_080E1E54:
	.4byte 0x00000F22
_080E1E58:
	.4byte gUnknown_08176970
_080E1E5C:
	.4byte 0x00000F12
_080E1E60:
	.4byte gUnknown_08176978
_080E1E64:
	.4byte 0x00000FB2
_080E1E68:
	.4byte gUnknown_08176980
_080E1E6C:
	.4byte 0x00001082
	THUMB_FUNC_END sub_080E1C74

	THUMB_FUNC_START sub_080E1E70
sub_080E1E70: @ 0x080E1E70
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _080E1EBC  @ =gRam
	ldr r1, _080E1EC0  @ =0x00001052
	add r3, r4, r1
	add r3, r0, r3
	ldrb r1, [r3]
	add r1, r1, #1
	strb r1, [r3]
	lsl r1, r1, #24
	lsr r1, r1, #27
	mov r5, #3
	and r1, r1, r5
	mov r6, #150
	lsl r6, r6, #4
	add r2, r4, r6
	strb r1, [r2]
	ldr r1, _080E1EC4  @ =0x00000F92
	add r2, r4, r1
	add r2, r0, r2
	ldr r6, _080E1EC8  @ =gUnknown_08176918
	ldrb r1, [r3]
	lsr r1, r1, #3
	and r1, r1, r5
	ldr r3, _080E1ECC  @ =0x00000FB2
	add r4, r4, r3
	add r0, r0, r4
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r1, r0
	add r1, r1, r6
	ldrb r0, [r1]
	strb r0, [r2]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E1EBC:
	.4byte gRam
_080E1EC0:
	.4byte 0x00001052
_080E1EC4:
	.4byte 0x00000F92
_080E1EC8:
	.4byte gUnknown_08176918
_080E1ECC:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080E1E70

	THUMB_FUNC_START sub_080E1ED0
sub_080E1ED0: @ 0x080E1ED0
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080E2614
	add r0, r4, #0
	bl sub_080E2094
	ldr r5, _080E1F28  @ =gRam
	ldr r1, _080E1F2C  @ =0x00000FC2
	add r0, r5, r1
	add r1, r4, r0
	ldrb r0, [r1]
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	beq _080E1F38
	cmp r0, #0
	blt _080E1F44
	lsr r0, r0, #27
	mov r1, #7
	and r0, r0, r1
	mov r2, #150
	lsl r2, r2, #4
	add r1, r5, r2
	strb r0, [r1]
	ldr r6, _080E1F30  @ =0x00001082
	add r2, r5, r6
	add r2, r4, r2
	ldr r3, _080E1F34  @ =gUnknown_08176938
	sub r6, r6, #208
	add r0, r5, r6
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #3
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	orr r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	b _080E1F44
_080E1F28:
	.4byte gRam
_080E1F2C:
	.4byte 0x00000FC2
_080E1F30:
	.4byte 0x00001082
_080E1F34:
	.4byte gUnknown_08176938
_080E1F38:
	mov r0, #32
	strb r0, [r1]
	ldr r1, _080E1F4C  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
_080E1F44:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E1F4C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E1ED0

	THUMB_FUNC_START sub_080E1F50
sub_080E1F50: @ 0x080E1F50
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080E1FC8  @ =gRam
	ldr r1, _080E1FCC  @ =0x00000FC2
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080E1FE4
	ldr r2, _080E1FD0  @ =0x00000996
	add r0, r6, r2
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #31
	and r0, r0, r1
	cmp r0, #0
	bne _080E1FBA
	ldr r3, _080E1FD4  @ =0x000010A2
	add r0, r6, r3
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E1F90
	add r0, r4, #0
	mov r1, #81
	bl sub_080CF140
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_080E1F90:
	mov r0, #3
	and r0, r0, r4
	ldr r1, _080E1FD8  @ =gUnknown_081769C8
	add r0, r0, r1
	ldrb r1, [r0]
	add r0, r4, #0
	bl sub_080C35FC
	add r0, r4, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080E1FDC  @ =0x00000FB2
	add r1, r6, r2
	add r1, r4, r1
	strb r0, [r1]
	ldr r3, _080E1FE0  @ =0x00001082
	add r1, r6, r3
	add r1, r4, r1
	strb r0, [r1]
_080E1FBA:
	add r0, r4, #0
	bl sub_080E2024
	add r0, r4, #0
	bl sub_080E2858
	b _080E200E
_080E1FC8:
	.4byte gRam
_080E1FCC:
	.4byte 0x00000FC2
_080E1FD0:
	.4byte 0x00000996
_080E1FD4:
	.4byte 0x000010A2
_080E1FD8:
	.4byte gUnknown_081769C8
_080E1FDC:
	.4byte 0x00000FB2
_080E1FE0:
	.4byte 0x00001082
_080E1FE4:
	ldr r0, _080E2014  @ =0x00001092
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080E2018  @ =gUnknown_081769CC
	ldr r3, _080E201C  @ =0x00000FB2
	add r0, r6, r3
	add r0, r4, r0
	ldrb r0, [r0]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080E2614
	ldr r1, _080E2020  @ =0x00000F52
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	mov r0, #160
	strb r0, [r5]
_080E200E:
	pop {r4-r6}
	pop {r0}
	bx r0
_080E2014:
	.4byte 0x00001092
_080E2018:
	.4byte gUnknown_081769CC
_080E201C:
	.4byte 0x00000FB2
_080E2020:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E1F50

	THUMB_FUNC_START sub_080E2024
sub_080E2024: @ 0x080E2024
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _080E2048  @ =gRam
	ldr r1, _080E204C  @ =0x00001042
	add r0, r0, r1
	add r0, r4, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _080E207A
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080E2050
	add r0, r4, #0
	bl sub_080C36D8
	b _080E2058
_080E2048:
	.4byte gRam
_080E204C:
	.4byte 0x00001042
_080E2050:
	add r0, r4, #0
	bl sub_080C3028
	add r0, r0, #2
_080E2058:
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r2, _080E2080  @ =gRam
	ldr r0, _080E2084  @ =0x00000F22
	add r1, r2, r0
	add r1, r4, r1
	ldr r0, _080E2088  @ =gUnknown_08176900
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E208C  @ =0x00000F12
	add r2, r2, r1
	add r2, r4, r2
	ldr r0, _080E2090  @ =gUnknown_08176904
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r2]
_080E207A:
	pop {r4}
	pop {r0}
	bx r0
_080E2080:
	.4byte gRam
_080E2084:
	.4byte 0x00000F22
_080E2088:
	.4byte gUnknown_08176900
_080E208C:
	.4byte 0x00000F12
_080E2090:
	.4byte gUnknown_08176904
	THUMB_FUNC_END sub_080E2024

	THUMB_FUNC_START sub_080E2094
sub_080E2094: @ 0x080E2094
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080E20F0  @ =gRam
	ldr r1, _080E20F4  @ =0x00000996
	add r0, r5, r1
	ldrb r1, [r0]
	add r1, r4, r1
	ldr r2, _080E20F8  @ =0x0000097D
	add r6, r5, r2
	strb r1, [r6]
	mov r0, #3
	and r1, r1, r0
	ldr r7, _080E20FC  @ =0x000010D2
	add r0, r5, r7
	add r0, r4, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	cmp r1, #0
	bne _080E20E8
	ldr r1, _080E2100  @ =0x00001092
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r2, r1, #1
	strb r2, [r0]
	mov r3, #31
	ldr r2, _080E2104  @ =gUnknown_081769D0
	ldr r7, _080E2108  @ =0x00000FB2
	add r0, r5, r7
	add r0, r4, r0
	ldrb r0, [r0]
	add r0, r0, r2
	and r1, r1, r3
	ldrb r0, [r0]
	add r1, r1, r0
	mov r0, #63
	and r1, r1, r0
	strb r1, [r6]
	add r0, r4, #0
	bl sub_080E210C
_080E20E8:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E20F0:
	.4byte gRam
_080E20F4:
	.4byte 0x00000996
_080E20F8:
	.4byte 0x0000097D
_080E20FC:
	.4byte 0x000010D2
_080E2100:
	.4byte 0x00001092
_080E2104:
	.4byte gUnknown_081769D0
_080E2108:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080E2094

	THUMB_FUNC_START sub_080E210C
sub_080E210C: @ 0x080E210C
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, #65
	add r1, r6, #0
	mov r2, #10
	bl sub_080C9AAC
	add r5, r0, #0
	cmp r5, #0
	blt _080E21CC
	ldr r3, _080E21D4  @ =gRam
	mov r1, #150
	lsl r1, r1, #4
	add r0, r3, r1
	ldrh r1, [r0]
	add r1, r1, #8
	ldr r2, _080E21D8  @ =0x00000964
	add r0, r3, r2
	ldrh r2, [r0]
	add r2, r2, #4
	ldr r4, _080E21DC  @ =0x00000EE2
	add r0, r3, r4
	add r0, r5, r0
	strb r1, [r0]
	add r4, r4, #32
	add r0, r3, r4
	add r0, r5, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r1, _080E21E0  @ =0x00000ED2
	add r0, r3, r1
	add r0, r5, r0
	strb r2, [r0]
	sub r4, r4, #16
	add r0, r3, r4
	add r0, r5, r0
	lsr r2, r2, #8
	strb r2, [r0]
	add r1, r1, #224
	add r0, r3, r1
	add r0, r5, r0
	ldr r2, _080E21E4  @ =0x0000097D
	add r4, r3, r2
	ldrb r1, [r4]
	strb r1, [r0]
	ldr r0, _080E21E8  @ =0x00000F22
	add r1, r3, r0
	add r1, r5, r1
	ldr r2, _080E21EC  @ =gUnknown_081769D4
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080E21F0  @ =0x00000F12
	add r1, r3, r2
	add r1, r5, r1
	ldr r2, _080E21F4  @ =gUnknown_08176A14
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r4, _080E21F8  @ =0x00001012
	add r2, r3, r4
	add r2, r5, r2
	ldrb r1, [r2]
	mov r0, #240
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2]
	ldr r1, _080E21FC  @ =0x00000F82
	add r0, r3, r1
	add r0, r5, r0
	add r1, r6, #1
	strb r1, [r0]
	ldr r2, _080E2200  @ =0x00001172
	add r0, r3, r2
	add r0, r5, r0
	strb r1, [r0]
	ldr r4, _080E2204  @ =0x00001132
	add r0, r3, r4
	add r0, r5, r0
	mov r1, #64
	strb r1, [r0]
	ldr r2, _080E2208  @ =0x00001032
	add r0, r3, r2
	add r0, r5, r0
	strb r1, [r0]
	ldr r4, _080E220C  @ =0x00000E75
	add r3, r3, r4
	add r3, r5, r3
	mov r0, #2
	strb r0, [r3]
_080E21CC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E21D4:
	.4byte gRam
_080E21D8:
	.4byte 0x00000964
_080E21DC:
	.4byte 0x00000EE2
_080E21E0:
	.4byte 0x00000ED2
_080E21E4:
	.4byte 0x0000097D
_080E21E8:
	.4byte 0x00000F22
_080E21EC:
	.4byte gUnknown_081769D4
_080E21F0:
	.4byte 0x00000F12
_080E21F4:
	.4byte gUnknown_08176A14
_080E21F8:
	.4byte 0x00001012
_080E21FC:
	.4byte 0x00000F82
_080E2200:
	.4byte 0x00001172
_080E2204:
	.4byte 0x00001132
_080E2208:
	.4byte 0x00001032
_080E220C:
	.4byte 0x00000E75
	THUMB_FUNC_END sub_080E210C

	THUMB_FUNC_START sub_080E2210
sub_080E2210: @ 0x080E2210
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080E2254  @ =gRam
	ldr r3, _080E2258  @ =0x000010F2
	add r1, r2, r3
	add r4, r0, r1
	ldr r5, _080E225C  @ =0x000009B2
	add r0, r2, r5
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080E226C
	ldr r1, _080E2260  @ =0x00001622
	add r0, r2, r1
	ldrb r0, [r0]
	ldr r3, _080E2264  @ =0x00001623
	add r1, r2, r3
	ldrb r1, [r1]
	lsl r1, r1, #8
	orr r0, r0, r1
	ldr r5, _080E2268  @ =0x00001624
	add r1, r2, r5
	ldrb r1, [r1]
	add r3, r3, #2
	add r2, r2, r3
	ldrb r2, [r2]
	lsl r2, r2, #8
	orr r1, r1, r2
	bl sub_080C8F6C
	b _080E2298
	.byte 0x00
	.byte 0x00
_080E2254:
	.4byte gRam
_080E2258:
	.4byte 0x000010F2
_080E225C:
	.4byte 0x000009B2
_080E2260:
	.4byte 0x00001622
_080E2264:
	.4byte 0x00001623
_080E2268:
	.4byte 0x00001624
_080E226C:
	ldr r5, _080E22B8  @ =0x00001622
	add r0, r2, r5
	ldrb r0, [r0]
	ldr r3, _080E22BC  @ =0x00001623
	add r1, r2, r3
	ldrb r1, [r1]
	lsl r1, r1, #8
	add r0, r0, r1
	ldr r3, _080E22C0  @ =0x000001FF
	and r0, r0, r3
	add r5, r5, #2
	add r1, r2, r5
	ldrb r1, [r1]
	add r5, r5, #1
	add r2, r2, r5
	ldrb r2, [r2]
	lsl r2, r2, #8
	add r1, r1, r2
	and r1, r1, r3
	ldrb r2, [r4]
	bl sub_080928A4
_080E2298:
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r0, _080E22C4  @ =gRam
	ldr r2, _080E22C8  @ =0x000015E2
	add r0, r0, r2
	strh r1, [r0]
	ldr r0, _080E22CC  @ =gUnknown_08172370
	add r0, r1, r0
	ldrb r1, [r0]
	neg r0, r1
	orr r0, r0, r1
	lsr r0, r0, #31
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080E22B8:
	.4byte 0x00001622
_080E22BC:
	.4byte 0x00001623
_080E22C0:
	.4byte 0x000001FF
_080E22C4:
	.4byte gRam
_080E22C8:
	.4byte 0x000015E2
_080E22CC:
	.4byte gUnknown_08172370
	THUMB_FUNC_END sub_080E2210

	THUMB_FUNC_START sub_080E22D0
sub_080E22D0: @ 0x080E22D0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #26
	mov r10, r1
	mov r2, #3
	ldr r3, _080E230C  @ =gRam
	ldr r4, _080E2310  @ =0x00000F92
	add r1, r3, r4
	add r1, r1, r0
	mov r9, r1
	ldr r5, _080E2314  @ =0x00000FF2
	add r1, r3, r5
	add r0, r0, r1
	str r0, [sp, #4]
_080E22FA:
	mov r5, #0
	ldr r7, [sp, #4]
	ldrb r0, [r7]
	cmp r0, #69
	bhi _080E2318
	lsl r2, r2, #24
	mov r8, r2
	b _080E2346
	.byte 0x00
	.byte 0x00
_080E230C:
	.4byte gRam
_080E2310:
	.4byte 0x00000F92
_080E2314:
	.4byte 0x00000FF2
_080E2318:
	ldr r1, _080E238C  @ =gUnknown_08176D00
	lsl r2, r2, #24
	asr r3, r2, #24
	mov r4, r9
	ldrb r0, [r4]
	lsl r4, r0, #2
	add r0, r3, r4
	add r0, r0, r1
	ldrb r0, [r0]
	mov r8, r2
	cmp r0, #0
	beq _080E2342
	cmp r3, #3
	bne _080E2346
	ldr r0, _080E2390  @ =gUnknown_08176C30
	add r1, r4, #3
	add r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #64
	beq _080E2342
	mov r5, #1
_080E2342:
	cmp r5, #0
	beq _080E2426
_080E2346:
	ldr r5, _080E2394  @ =gRam
	ldr r7, _080E2398  @ =0x00000964
	add r4, r5, r7
	ldr r3, _080E239C  @ =gUnknown_08176B60
	mov r0, r8
	asr r5, r0, #24
	lsl r1, r5, #1
	mov r7, r9
	ldrb r2, [r7]
	lsl r0, r2, #3
	add r1, r1, r0
	add r1, r1, r3
	ldrh r0, [r1]
	ldrh r4, [r4]
	add r0, r0, r4
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r12, r0
	mov r4, #8
	mov r3, #0
	ldr r1, _080E2390  @ =gUnknown_08176C30
	lsl r2, r2, #2
	add r5, r5, r2
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #64
	bne _080E23A0
	mov r4, #2
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	cmp r0, #70
	bne _080E23AC
	mov r5, #240
	mov r12, r5
	b _080E23AC
_080E238C:
	.4byte gUnknown_08176D00
_080E2390:
	.4byte gUnknown_08176C30
_080E2394:
	.4byte gRam
_080E2398:
	.4byte 0x00000964
_080E239C:
	.4byte gUnknown_08176B60
_080E23A0:
	ldr r7, _080E2444  @ =gUnknown_08176D00
	add r0, r5, r7
	ldrb r1, [r0]
	neg r0, r1
	orr r0, r0, r1
	lsr r3, r0, #31
_080E23AC:
	ldr r1, _080E2448  @ =gUnknown_08176C98
	mov r0, r8
	asr r0, r0, #24
	str r0, [sp, #8]
	mov r5, r9
	ldrb r2, [r5]
	lsl r0, r2, #2
	ldr r7, [sp, #8]
	add r6, r7, r0
	add r1, r6, r1
	ldr r5, _080E244C  @ =gRam
	ldr r7, _080E2450  @ =0x00000969
	add r0, r5, r7
	ldrb r1, [r1]
	ldrb r0, [r0]
	add r5, r0, #0
	orr r5, r5, r1
	cmp r3, #0
	bne _080E23D8
	mov r0, #241
	and r5, r5, r0
	orr r5, r5, r4
_080E23D8:
	ldr r0, _080E2454  @ =gUnknown_03003E74
	ldrh r0, [r0]
	add r0, r0, r10
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r1, _080E244C  @ =gRam
	mov r3, #150
	lsl r3, r3, #4
	add r4, r1, r3
	ldr r3, _080E2458  @ =gUnknown_08176A90
	ldr r7, [sp, #8]
	lsl r1, r7, #1
	lsl r2, r2, #3
	add r1, r1, r2
	add r1, r1, r3
	ldrh r1, [r1]
	ldrh r4, [r4]
	add r1, r1, r4
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, _080E245C  @ =gUnknown_08176C30
	add r2, r6, r3
	ldrb r3, [r2]
	lsl r2, r5, #8
	add r3, r3, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r4, _080E2444  @ =gUnknown_08176D00
	add r2, r6, r4
	ldrb r2, [r2]
	str r2, [sp]
	mov r2, r12
	bl sub_080C6368
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
_080E2426:
	mov r0, #255
	lsl r0, r0, #24
	add r0, r0, r8
	lsr r2, r0, #24
	cmp r0, #0
	blt _080E2434
	b _080E22FA
_080E2434:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080E2444:
	.4byte gUnknown_08176D00
_080E2448:
	.4byte gUnknown_08176C98
_080E244C:
	.4byte gRam
_080E2450:
	.4byte 0x00000969
_080E2454:
	.4byte gUnknown_03003E74
_080E2458:
	.4byte gUnknown_08176A90
_080E245C:
	.4byte gUnknown_08176C30
	THUMB_FUNC_END sub_080E22D0

	THUMB_FUNC_START sub_080E2460
sub_080E2460: @ 0x080E2460
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _080E2570  @ =gRam
	ldr r2, _080E2574  @ =0x00000FF2
	add r1, r4, r2
	add r1, r0, r1
	ldrb r1, [r1]
	sub r1, r1, #65
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp, #4]
	ldr r5, _080E2578  @ =0x00000F92
	add r3, r4, r5
	add r3, r0, r3
	ldrb r1, [r3]
	lsl r1, r1, #1
	ldr r5, _080E257C  @ =0x0000096C
	add r2, r4, r5
	strb r1, [r2]
	ldr r2, _080E2580  @ =gUnknown_08176D68
	ldr r5, _080E2584  @ =0x00000FB2
	add r1, r4, r5
	add r0, r0, r1
	ldrb r0, [r0]
	add r0, r0, r2
	ldrb r0, [r0]
	lsr r0, r0, #2
	mov r9, r0
	mov r0, #1
	add r7, r4, #0
	mov r8, r3
	ldr r1, _080E2588  @ =gUnknown_08176DA4
	mov r10, r1
_080E24AE:
	lsl r0, r0, #24
	asr r6, r0, #24
	lsl r2, r6, #1
	mov r3, r8
	ldrb r0, [r3]
	lsl r0, r0, #2
	add r0, r2, r0
	ldr r5, _080E258C  @ =gUnknown_08176D6C
	add r0, r0, r5
	ldrh r1, [r0]
	ldr r3, _080E2590  @ =0x000015ED
	add r0, r7, r3
	strb r1, [r0]
	mov r5, r8
	ldrb r0, [r5]
	lsl r0, r0, #2
	add r0, r2, r0
	add r0, r0, r10
	ldrh r1, [r0]
	sub r3, r3, #1
	add r0, r7, r3
	strb r1, [r0]
	ldr r1, _080E2594  @ =gUnknown_08176DDC
	ldrb r3, [r5]
	lsl r0, r3, #1
	add r4, r6, r0
	add r1, r4, r1
	ldrb r5, [r1]
	ldr r0, [sp, #4]
	cmp r0, #1
	bhi _080E24EE
	add r5, r5, #3
_080E24EE:
	ldr r0, _080E2598  @ =gUnknown_03003E74
	ldrh r0, [r0]
	add r0, r0, r9
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp, #8]
	lsl r3, r3, #2
	add r3, r2, r3
	ldr r1, _080E258C  @ =gUnknown_08176D6C
	add r1, r1, r3
	mov r12, r1
	mov r2, #150
	lsl r2, r2, #4
	add r1, r7, r2
	ldrh r1, [r1]
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	str r1, [sp, #12]
	add r3, r3, r10
	ldr r1, _080E259C  @ =0x00000964
	add r2, r7, r1
	ldrh r2, [r2]
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E25A0  @ =gUnknown_08176DF8
	add r3, r4, r3
	ldrb r3, [r3]
	ldr r0, _080E25A4  @ =gUnknown_03002B99
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	orr r3, r3, r0
	lsl r3, r3, #8
	add r3, r5, r3
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r1, #0
	str r1, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #12]
	bl sub_080C6368
	sub r1, r6, #1
	lsl r1, r1, #24
	mov r0, r9
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	lsr r0, r1, #24
	cmp r1, #0
	bge _080E24AE
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080E2570:
	.4byte gRam
_080E2574:
	.4byte 0x00000FF2
_080E2578:
	.4byte 0x00000F92
_080E257C:
	.4byte 0x0000096C
_080E2580:
	.4byte gUnknown_08176D68
_080E2584:
	.4byte 0x00000FB2
_080E2588:
	.4byte gUnknown_08176DA4
_080E258C:
	.4byte gUnknown_08176D6C
_080E2590:
	.4byte 0x000015ED
_080E2594:
	.4byte gUnknown_08176DDC
_080E2598:
	.4byte gUnknown_03003E74
_080E259C:
	.4byte 0x00000964
_080E25A0:
	.4byte gUnknown_08176DF8
_080E25A4:
	.4byte gUnknown_03002B99
	THUMB_FUNC_END sub_080E2460

	THUMB_FUNC_START sub_080E25A8
sub_080E25A8: @ 0x080E25A8
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	add r5, r0, #0
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r4, _080E25F8  @ =gRam
	ldr r0, _080E25FC  @ =0x000009AD
	add r6, r4, r0
	ldrb r1, [r6]
	mov r9, r1
	ldr r0, _080E2600  @ =0x00000E75
	add r4, r4, r0
	add r4, r5, r4
	ldrb r1, [r4]
	mov r8, r1
	mov r0, #0
	strb r0, [r6]
	lsr r0, r1, #1
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r4]
	add r0, r5, #0
	bl SpriteActive_Main
	add r0, r5, #0
	bl SpriteActive_Main
	mov r0, r8
	strb r0, [r4]
	mov r1, r9
	strb r1, [r6]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E25F8:
	.4byte gRam
_080E25FC:
	.4byte 0x000009AD
_080E2600:
	.4byte 0x00000E75
	THUMB_FUNC_END sub_080E25A8

	THUMB_FUNC_START sub_080E2604
sub_080E2604: @ 0x080E2604
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E1738
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E2604

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E2614
sub_080E2614: @ 0x080E2614
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080E2630  @ =gRam
	ldr r3, _080E2634  @ =0x00000F22
	add r1, r2, r3
	add r1, r0, r1
	mov r3, #0
	strb r3, [r1]
	ldr r1, _080E2638  @ =0x00000F12
	add r2, r2, r1
	add r0, r0, r2
	strb r3, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080E2630:
	.4byte gRam
_080E2634:
	.4byte 0x00000F22
_080E2638:
	.4byte 0x00000F12
	THUMB_FUNC_END sub_080E2614

	THUMB_FUNC_START sub_080E263C
sub_080E263C: @ 0x080E263C
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E2094
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E263C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E264C
sub_080E264C: @ 0x080E264C
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080E2614
	ldr r2, _080E2678  @ =gRam
	ldr r1, _080E267C  @ =0x00000F52
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	ldr r0, _080E2680  @ =0x00000FC2
	add r2, r2, r0
	add r4, r4, r2
	mov r0, #160
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E2678:
	.4byte gRam
_080E267C:
	.4byte 0x00000F52
_080E2680:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E264C

	THUMB_FUNC_START sub_080E2684
sub_080E2684: @ 0x080E2684
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _080E26B8  @ =gRam
	ldr r1, _080E26BC  @ =0x00001032
	add r0, r3, r1
	add r0, r2, r0
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _080E26B0
	ldr r1, _080E26C0  @ =gUnknown_08176A54
	ldr r4, _080E26C4  @ =0x00000FB2
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r1, [r0]
	add r0, r2, #0
	bl sub_080C57F8
_080E26B0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E26B8:
	.4byte gRam
_080E26BC:
	.4byte 0x00001032
_080E26C0:
	.4byte gUnknown_08176A54
_080E26C4:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080E2684

	THUMB_FUNC_START sub_080E26C8
sub_080E26C8: @ 0x080E26C8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080E26DC  @ =gRam
	ldr r2, _080E26E0  @ =0x00000FD2
	add r1, r1, r2
	add r0, r0, r1
	mov r1, #12
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080E26DC:
	.4byte gRam
_080E26E0:
	.4byte 0x00000FD2
	THUMB_FUNC_END sub_080E26C8

	THUMB_FUNC_START sub_080E26E4
sub_080E26E4: @ 0x080E26E4
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E2716
	add r0, r4, #0
	bl sub_080E287C
	add r0, r4, #0
	bl sub_080E288C
	add r0, r4, #0
	bl sub_080E2460
	add r0, r4, #0
	bl sub_080E2684
_080E2716:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E26E4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E2720
sub_080E2720: @ 0x080E2720
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	add r6, r1, #0
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r6, r6, #24
	ldr r1, _080E27A4  @ =gUnknown_03003E74
	lsr r6, r6, #26
	ldrh r1, [r1]
	add r6, r6, r1
	lsl r6, r6, #16
	lsr r6, r6, #16
	ldr r5, _080E27A8  @ =gRam
	mov r2, #150
	lsl r2, r2, #4
	add r1, r5, r2
	ldrh r1, [r1]
	ldr r3, _080E27AC  @ =0x00000964
	add r3, r3, r5
	mov r8, r3
	ldr r4, _080E27B0  @ =gUnknown_08176A58
	ldr r7, _080E27B4  @ =0x00000F92
	add r2, r5, r7
	add r2, r0, r2
	ldrb r3, [r2]
	lsl r3, r3, #1
	add r3, r3, r4
	mov r4, r8
	ldrh r2, [r4]
	ldrh r3, [r3]
	sub r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r4, _080E27B8  @ =gUnknown_08176958
	add r7, r7, #240
	add r3, r5, r7
	add r0, r0, r3
	ldrb r0, [r0]
	add r4, r0, r4
	ldrb r3, [r4]
	ldr r4, _080E27BC  @ =gUnknown_0817695C
	add r0, r0, r4
	ldrb r0, [r0]
	ldr r4, _080E27C0  @ =0x00000969
	add r5, r5, r4
	mov r4, #0
	ldrsb r4, [r5, r4]
	orr r0, r0, r4
	lsl r0, r0, #8
	add r3, r3, r0
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #2
	str r0, [sp]
	add r0, r6, #0
	bl sub_080C6368
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E27A4:
	.4byte gUnknown_03003E74
_080E27A8:
	.4byte gRam
_080E27AC:
	.4byte 0x00000964
_080E27B0:
	.4byte gUnknown_08176A58
_080E27B4:
	.4byte 0x00000F92
_080E27B8:
	.4byte gUnknown_08176958
_080E27BC:
	.4byte gUnknown_0817695C
_080E27C0:
	.4byte 0x00000969
	THUMB_FUNC_END sub_080E2720

	THUMB_FUNC_START sub_080E27C4
sub_080E27C4: @ 0x080E27C4
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080E2614
	add r0, r4, #0
	bl sub_080C2FA8
	ldr r2, _080E2804  @ =gRam
	ldr r3, _080E2808  @ =0x00001082
	add r1, r2, r3
	add r1, r4, r1
	strb r0, [r1]
	ldr r1, _080E280C  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E27FE
	ldr r3, _080E2810  @ =0x00000F52
	add r0, r2, r3
	add r0, r4, r0
	mov r1, #4
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #255
	bl sub_080E2814
_080E27FE:
	pop {r4}
	pop {r0}
	bx r0
_080E2804:
	.4byte gRam
_080E2808:
	.4byte 0x00001082
_080E280C:
	.4byte 0x00000FC2
_080E2810:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E27C4

	THUMB_FUNC_START sub_080E2814
sub_080E2814: @ 0x080E2814
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080E2848  @ =gRam
	ldr r4, _080E284C  @ =0x00000FC2
	add r2, r3, r4
	add r2, r0, r2
	mov r4, #0
	strb r1, [r2]
	ldr r2, _080E2850  @ =0x00001002
	add r1, r3, r2
	add r1, r0, r1
	strb r4, [r1]
	ldr r4, _080E2854  @ =0x00000D84
	add r3, r3, r4
	add r0, r0, r3
	ldrb r2, [r0]
	mov r1, #15
	and r1, r1, r2
	mov r2, #96
	orr r1, r1, r2
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E2848:
	.4byte gRam
_080E284C:
	.4byte 0x00000FC2
_080E2850:
	.4byte 0x00001002
_080E2854:
	.4byte 0x00000D84
	THUMB_FUNC_END sub_080E2814

	THUMB_FUNC_START sub_080E2858
sub_080E2858: @ 0x080E2858
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080E2874  @ =gRam
	ldr r1, _080E2878  @ =0x00001052
	add r2, r2, r1
	add r2, r0, r2
	ldrb r1, [r2]
	add r1, r1, #1
	strb r1, [r2]
	bl sub_080E1E70
	pop {r0}
	bx r0
_080E2874:
	.4byte gRam
_080E2878:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080E2858

	THUMB_FUNC_START sub_080E287C
sub_080E287C: @ 0x080E287C
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #0
	bl sub_080E2720
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E287C

	THUMB_FUNC_START sub_080E288C
sub_080E288C: @ 0x080E288C
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080E28AC  @ =gUnknown_08176A8C
	ldr r1, _080E28B0  @ =gRam
	ldr r3, _080E28B4  @ =0x00000FB2
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	add r1, r1, r2
	ldrb r1, [r1]
	bl sub_080E22D0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E28AC:
	.4byte gUnknown_08176A8C
_080E28B0:
	.4byte gRam
_080E28B4:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080E288C

	THUMB_FUNC_START sub_080E28B8
sub_080E28B8: @ 0x080E28B8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E1644
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E28B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E28C8
sub_080E28C8: @ 0x080E28C8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E1738
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E28C8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E28D8
sub_080E28D8: @ 0x080E28D8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E1644
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E28D8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E28E8
sub_080E28E8: @ 0x080E28E8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E1738
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E28E8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E28F8
sub_080E28F8: @ 0x080E28F8
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r0, r5, #0
	bl sub_080E2BC8
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E2A02
	add r0, r5, #0
	bl sub_080E2A2C
	add r0, r5, #0
	bl sub_080C3964
	add r0, r5, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E2A02
	add r0, r5, #0
	bl sub_080E3D00
	add r0, r5, #0
	bl sub_080C79F8
	add r0, r5, #0
	bl sub_080C4F98
	ldr r4, _080E2994  @ =gRam
	ldr r1, _080E2998  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	add r0, r5, #0
	eor r0, r0, r1
	mov r1, #15
	and r0, r0, r1
	cmp r0, #0
	bne _080E29D2
	add r0, r5, #0
	bl sub_080C2FA8
	ldr r2, _080E299C  @ =0x00001082
	add r1, r4, r2
	add r1, r5, r1
	strb r0, [r1]
	sub r2, r2, #208
	add r1, r4, r2
	add r1, r5, r1
	strb r0, [r1]
	ldr r1, _080E29A0  @ =gUnknown_08176E14
	mov r6, #3
	add r0, r5, #0
	and r0, r0, r6
	add r0, r0, r1
	ldrb r1, [r0]
	add r0, r5, #0
	bl sub_080C35FC
	ldr r1, _080E29A4  @ =0x00001042
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _080E29D2
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	bne _080E29A8
	add r0, r5, #0
	bl sub_080C36D8
	b _080E29B0
	.byte 0x00
	.byte 0x00
_080E2994:
	.4byte gRam
_080E2998:
	.4byte 0x00000996
_080E299C:
	.4byte 0x00001082
_080E29A0:
	.4byte gUnknown_08176E14
_080E29A4:
	.4byte 0x00001042
_080E29A8:
	add r0, r5, #0
	bl sub_080C3028
	add r0, r0, #2
_080E29B0:
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r2, _080E2A08  @ =gRam
	ldr r0, _080E2A0C  @ =0x00000F22
	add r1, r2, r0
	add r1, r5, r1
	ldr r0, _080E2A10  @ =gUnknown_08176900
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E2A14  @ =0x00000F12
	add r2, r2, r1
	add r2, r5, r2
	ldr r0, _080E2A18  @ =gUnknown_08176904
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r2]
_080E29D2:
	ldr r2, _080E2A08  @ =gRam
	ldr r1, _080E2A1C  @ =0x00001052
	add r0, r2, r1
	add r0, r5, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldr r0, _080E2A20  @ =0x00000F92
	add r3, r2, r0
	add r3, r5, r3
	ldr r4, _080E2A24  @ =gUnknown_08176E78
	lsl r1, r1, #24
	lsr r1, r1, #25
	mov r0, #7
	and r1, r1, r0
	ldr r0, _080E2A28  @ =0x00000FB2
	add r2, r2, r0
	add r2, r5, r2
	ldrb r0, [r2]
	lsl r0, r0, #3
	orr r1, r1, r0
	add r1, r1, r4
	ldrb r0, [r1]
	strb r0, [r3]
_080E2A02:
	pop {r4-r6}
	pop {r0}
	bx r0
_080E2A08:
	.4byte gRam
_080E2A0C:
	.4byte 0x00000F22
_080E2A10:
	.4byte gUnknown_08176900
_080E2A14:
	.4byte 0x00000F12
_080E2A18:
	.4byte gUnknown_08176904
_080E2A1C:
	.4byte 0x00001052
_080E2A20:
	.4byte 0x00000F92
_080E2A24:
	.4byte gUnknown_08176E78
_080E2A28:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080E28F8

	THUMB_FUNC_START sub_080E2A2C
sub_080E2A2C: @ 0x080E2A2C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r4, _080E2A78  @ =gRam
	ldr r1, _080E2A7C  @ =0x000010A2
	add r0, r4, r1
	add r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #16
	beq _080E2A72
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #15
	bne _080E2A72
	add r0, r2, #0
	mov r1, #81
	bl sub_080CF140
	ldr r1, _080E2A80  @ =0x0000165E
	add r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _080E2A72
	mov r1, #171
	lsl r1, r1, #4
	add r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #24
	bne _080E2A72
	ldr r0, _080E2A84  @ =0x00000A3C
	add r1, r4, r0
	mov r0, #22
	strh r0, [r1]
_080E2A72:
	pop {r4}
	pop {r0}
	bx r0
_080E2A78:
	.4byte gRam
_080E2A7C:
	.4byte 0x000010A2
_080E2A80:
	.4byte 0x0000165E
_080E2A84:
	.4byte 0x00000A3C
	THUMB_FUNC_END sub_080E2A2C

	THUMB_FUNC_START sub_080E2A88
sub_080E2A88: @ 0x080E2A88
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #26
	str r2, [sp, #4]
	mov r0, #1
	eor r1, r1, r0
	lsl r1, r1, #1
	mov r0, #2
	and r1, r1, r0
	ldr r2, _080E2B7C  @ =gRam
	ldr r3, _080E2B80  @ =0x00000FB2
	add r0, r2, r3
	add r0, r0, r9
	ldrb r0, [r0]
	lsl r0, r0, #2
	orr r1, r1, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r10, r1
	mov r4, #1
	mov r8, r4
	add r6, r2, #0
_080E2AC8:
	mov r0, r10
	add r0, r0, r8
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r4, r0, #0
	ldr r0, _080E2B84  @ =gUnknown_08176E18
	lsl r1, r4, #1
	add r0, r1, r0
	ldrh r0, [r0]
	add r2, r0, #0
	ldr r0, _080E2B88  @ =gUnknown_08176E38
	add r1, r1, r0
	ldrh r0, [r1]
	add r3, r0, #0
	ldr r7, _080E2B8C  @ =0x000015ED
	add r0, r6, r7
	strb r2, [r0]
	ldr r1, _080E2B90  @ =0x000015EC
	add r0, r6, r1
	strb r3, [r0]
	ldr r0, _080E2B94  @ =gUnknown_08176E58
	add r0, r4, r0
	ldrb r5, [r0]
	ldr r7, _080E2B98  @ =0x00000FF2
	add r0, r6, r7
	add r0, r0, r9
	ldrb r0, [r0]
	cmp r0, #71
	bls _080E2B08
	sub r0, r5, #3
	lsl r0, r0, #24
	lsr r5, r0, #24
_080E2B08:
	ldr r0, _080E2B9C  @ =gUnknown_03003E74
	ldrh r0, [r0]
	ldr r1, [sp, #4]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r7, #150
	lsl r7, r7, #4
	add r1, r6, r7
	ldrh r1, [r1]
	add r1, r2, r1
	lsl r1, r1, #16
	lsr r1, r1, #16
	add r7, r7, #4
	add r2, r6, r7
	ldrh r2, [r2]
	add r2, r3, r2
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E2BA0  @ =gUnknown_08176E68
	add r3, r4, r3
	ldrb r3, [r3]
	ldr r4, _080E2BA4  @ =gUnknown_03002B99
	ldrb r4, [r4]
	lsl r4, r4, #24
	asr r4, r4, #24
	orr r3, r3, r4
	lsl r3, r3, #8
	add r3, r5, r3
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r7, #0
	str r7, [sp]
	bl sub_080C6368
	mov r0, r8
	lsl r1, r0, #24
	mov r3, #255
	lsl r3, r3, #24
	add r1, r1, r3
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #4]
	lsr r4, r1, #24
	mov r8, r4
	cmp r1, #0
	bge _080E2AC8
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
_080E2B7C:
	.4byte gRam
_080E2B80:
	.4byte 0x00000FB2
_080E2B84:
	.4byte gUnknown_08176E18
_080E2B88:
	.4byte gUnknown_08176E38
_080E2B8C:
	.4byte 0x000015ED
_080E2B90:
	.4byte 0x000015EC
_080E2B94:
	.4byte gUnknown_08176E58
_080E2B98:
	.4byte 0x00000FF2
_080E2B9C:
	.4byte gUnknown_03003E74
_080E2BA0:
	.4byte gUnknown_08176E68
_080E2BA4:
	.4byte gUnknown_03002B99
	THUMB_FUNC_END sub_080E2A88

	THUMB_FUNC_START sub_080E2BA8
sub_080E2BA8: @ 0x080E2BA8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E25A8
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E2BA8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E2BB8
sub_080E2BB8: @ 0x080E2BB8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E28F8
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E2BB8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E2BC8
sub_080E2BC8: @ 0x080E2BC8
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E2BFE
	add r0, r4, #0
	mov r1, #12
	bl sub_080E33BC
	add r0, r4, #0
	mov r1, #8
	bl sub_080E3024
	add r0, r4, #0
	bl sub_080E2C08
	add r0, r4, #0
	bl sub_080E2684
_080E2BFE:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E2BC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E2C08
sub_080E2C08: @ 0x080E2C08
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080E2C24  @ =gRam
	ldr r2, _080E2C28  @ =0x00000F62
	add r1, r1, r2
	add r1, r0, r1
	ldrb r1, [r1]
	mov r2, #0
	bl sub_080E2A88
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E2C24:
	.4byte gRam
_080E2C28:
	.4byte 0x00000F62
	THUMB_FUNC_END sub_080E2C08

	THUMB_FUNC_START sub_080E2C2C
sub_080E2C2C: @ 0x080E2C2C
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080E26E4
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E2D1E
	add r0, r4, #0
	bl sub_080E2A2C
	add r0, r4, #0
	bl sub_080C3964
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E2D1E
	add r0, r4, #0
	bl sub_080E3D00
	add r0, r4, #0
	bl sub_080C79F8
	add r0, r4, #0
	bl sub_080C4F98
	ldr r5, _080E2CCC  @ =gRam
	ldr r1, _080E2CD0  @ =0x00000996
	add r0, r5, r1
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #15
	and r0, r0, r1
	cmp r0, #0
	bne _080E2D0A
	add r0, r4, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r1, _080E2CD4  @ =0x00001082
	add r0, r5, r1
	add r0, r4, r0
	strb r3, [r0]
	sub r1, r1, #208
	add r0, r5, r1
	add r0, r4, r0
	strb r3, [r0]
	mov r6, #3
	add r3, r4, #0
	and r3, r3, r6
	ldr r0, _080E2CD8  @ =gUnknown_08176E14
	add r0, r3, r0
	ldrb r1, [r0]
	add r0, r4, #0
	bl sub_080C35FC
	ldr r1, _080E2CDC  @ =0x00001042
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _080E2D0A
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	bne _080E2CE0
	add r0, r4, #0
	bl sub_080C36D8
	b _080E2CE8
	.byte 0x00
	.byte 0x00
_080E2CCC:
	.4byte gRam
_080E2CD0:
	.4byte 0x00000996
_080E2CD4:
	.4byte 0x00001082
_080E2CD8:
	.4byte gUnknown_08176E14
_080E2CDC:
	.4byte 0x00001042
_080E2CE0:
	add r0, r4, #0
	bl sub_080C3028
	add r0, r0, #2
_080E2CE8:
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r2, _080E2D24  @ =gRam
	ldr r0, _080E2D28  @ =0x00000F22
	add r1, r2, r0
	add r1, r4, r1
	ldr r0, _080E2D2C  @ =gUnknown_08176900
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E2D30  @ =0x00000F12
	add r2, r2, r1
	add r2, r4, r2
	ldr r0, _080E2D34  @ =gUnknown_08176904
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r2]
_080E2D0A:
	ldr r1, _080E2D24  @ =gRam
	ldr r0, _080E2D38  @ =0x00001052
	add r1, r1, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080E1E70
_080E2D1E:
	pop {r4-r6}
	pop {r0}
	bx r0
_080E2D24:
	.4byte gRam
_080E2D28:
	.4byte 0x00000F22
_080E2D2C:
	.4byte gUnknown_08176900
_080E2D30:
	.4byte 0x00000F12
_080E2D34:
	.4byte gUnknown_08176904
_080E2D38:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080E2C2C

	THUMB_FUNC_START sub_080E2D3C
sub_080E2D3C: @ 0x080E2D3C
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E25A8
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E2D3C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E2D4C
sub_080E2D4C: @ 0x080E2D4C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	add r0, r4, #0
	bl sub_080E34CC
	ldr r6, _080E2E00  @ =gRam
	ldr r1, _080E2E04  @ =0x00000F52
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #1
	bhi _080E2D70
	ldr r2, _080E2E08  @ =0x000015ED
	add r1, r6, r2
	mov r0, #128
	strb r0, [r1]
_080E2D70:
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E2DF8
	add r0, r4, #0
	bl sub_080C3964
	ldr r0, _080E2E0C  @ =0x00000F62
	add r2, r6, r0
	add r2, r4, r2
	ldrb r1, [r2]
	ldr r3, _080E2E10  @ =gUnknown_08176E98
	ldrb r0, [r5]
	sub r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	add r1, r1, r0
	strb r1, [r2]
	ldr r0, _080E2E14  @ =0x00000F72
	add r2, r6, r0
	add r2, r4, r2
	lsr r1, r1, #8
	ldrb r0, [r2]
	add r1, r1, r0
	mov r0, #1
	and r1, r1, r0
	strb r1, [r2]
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E2DF8
	add r0, r4, #0
	bl sub_080C6F48
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C4F98
	ldr r1, _080E2E18  @ =0x00000996
	add r0, r6, r1
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #15
	and r0, r0, r1
	cmp r0, #0
	bne _080E2DE8
	add r0, r4, #0
	bl sub_080C2FA8
	ldr r2, _080E2E1C  @ =0x00001082
	add r1, r6, r2
	add r1, r4, r1
	strb r0, [r1]
_080E2DE8:
	ldr r0, _080E2E20  @ =gUnknown_08176E9C
	ldrb r1, [r5]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r7, #0
	bl _call_via_r1
_080E2DF8:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E2E00:
	.4byte gRam
_080E2E04:
	.4byte 0x00000F52
_080E2E08:
	.4byte 0x000015ED
_080E2E0C:
	.4byte 0x00000F62
_080E2E10:
	.4byte gUnknown_08176E98
_080E2E14:
	.4byte 0x00000F72
_080E2E18:
	.4byte 0x00000996
_080E2E1C:
	.4byte 0x00001082
_080E2E20:
	.4byte gUnknown_08176E9C
	THUMB_FUNC_END sub_080E2D4C

	THUMB_FUNC_START sub_080E2E24
sub_080E2E24: @ 0x080E2E24
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r3, #0
	ldr r2, _080E2E88  @ =gRam
	ldr r1, _080E2E8C  @ =0x00000996
	add r0, r2, r1
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #15
	and r0, r0, r1
	cmp r0, #0
	bne _080E2EB2
	ldr r5, _080E2E90  @ =0x00000FB2
	add r1, r2, r5
	add r1, r4, r1
	add r5, r5, #208
	add r0, r2, r5
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E2E94  @ =0x0000097C
	add r0, r2, r1
	ldrb r0, [r0]
	add r0, r0, #64
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #103
	bhi _080E2EA4
	ldr r5, _080E2E98  @ =0x0000097D
	add r0, r2, r5
	ldrb r0, [r0]
	add r0, r0, #48
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #95
	bhi _080E2EA4
	ldr r0, _080E2E9C  @ =0x00000F52
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080E2EA0  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #24
	strb r1, [r0]
	b _080E2EAE
_080E2E88:
	.4byte gRam
_080E2E8C:
	.4byte 0x00000996
_080E2E90:
	.4byte 0x00000FB2
_080E2E94:
	.4byte 0x0000097C
_080E2E98:
	.4byte 0x0000097D
_080E2E9C:
	.4byte 0x00000F52
_080E2EA0:
	.4byte 0x00000FC2
_080E2EA4:
	add r0, r4, #0
	mov r1, #8
	bl sub_080C35FC
	mov r3, #1
_080E2EAE:
	cmp r3, #0
	beq _080E2EB8
_080E2EB2:
	add r0, r4, #0
	bl sub_080E3440
_080E2EB8:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E2E24

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E2EC0
sub_080E2EC0: @ 0x080E2EC0
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r4, _080E2F20  @ =gRam
	ldr r1, _080E2F24  @ =0x00000FC2
	add r0, r4, r1
	add r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E2F12
	ldr r2, _080E2F28  @ =gUnknown_08176EAC
	ldr r5, _080E2F2C  @ =0x00000F72
	add r0, r4, r5
	add r0, r3, r0
	ldrb r1, [r0]
	lsl r1, r1, #1
	sub r5, r5, #16
	add r0, r4, r5
	add r0, r3, r0
	ldrb r0, [r0]
	lsr r0, r0, #7
	orr r1, r1, r0
	add r1, r1, r2
	ldr r2, _080E2F30  @ =0x00001082
	add r0, r4, r2
	add r0, r3, r0
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _080E2F12
	sub r5, r5, #16
	add r1, r4, r5
	add r1, r3, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080E2F34  @ =0x00000FE2
	add r0, r4, r1
	add r0, r3, r0
	mov r1, #31
	strb r1, [r0]
_080E2F12:
	add r0, r3, #0
	bl sub_080E2F38
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E2F20:
	.4byte gRam
_080E2F24:
	.4byte 0x00000FC2
_080E2F28:
	.4byte gUnknown_08176EAC
_080E2F2C:
	.4byte 0x00000F72
_080E2F30:
	.4byte 0x00001082
_080E2F34:
	.4byte 0x00000FE2
	THUMB_FUNC_END sub_080E2EC0

	THUMB_FUNC_START sub_080E2F38
sub_080E2F38: @ 0x080E2F38
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r2, _080E2F90  @ =gRam
	ldr r1, _080E2F94  @ =0x00001052
	add r0, r2, r1
	add r0, r5, r0
	ldrb r1, [r0]
	add r1, r1, #2
	strb r1, [r0]
	ldr r6, _080E2F98  @ =0x00000F92
	add r3, r2, r6
	add r3, r5, r3
	ldr r4, _080E2F9C  @ =gUnknown_08176E78
	lsl r1, r1, #24
	lsr r1, r1, #26
	mov r0, #7
	and r1, r1, r0
	add r6, r6, #32
	add r0, r2, r6
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #3
	orr r1, r1, r0
	add r1, r1, r4
	ldrb r0, [r1]
	strb r0, [r3]
	ldr r0, _080E2FA0  @ =0x00000996
	add r2, r2, r0
	ldrb r1, [r2]
	add r0, r5, #0
	eor r0, r0, r1
	mov r1, #15
	and r0, r0, r1
	cmp r0, #0
	bne _080E2F88
	add r0, r5, #0
	mov r1, #82
	bl sub_080CF140
_080E2F88:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E2F90:
	.4byte gRam
_080E2F94:
	.4byte 0x00001052
_080E2F98:
	.4byte 0x00000F92
_080E2F9C:
	.4byte gUnknown_08176E78
_080E2FA0:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080E2F38

	THUMB_FUNC_START sub_080E2FA4
sub_080E2FA4: @ 0x080E2FA4
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl sub_080E2614
	ldr r6, _080E2FD8  @ =gRam
	ldr r1, _080E2FDC  @ =0x00000FE2
	add r0, r6, r1
	add r2, r4, r0
	ldrb r1, [r2]
	cmp r1, #0
	bne _080E2FC8
	ldr r3, _080E2FE0  @ =0x00000F52
	add r0, r6, r3
	add r0, r4, r0
	strb r1, [r0]
_080E2FC8:
	ldrb r0, [r2]
	cmp r0, #15
	bls _080E2FE4
	add r0, r4, #0
	bl sub_080E2F38
	b _080E3012
	.byte 0x00
	.byte 0x00
_080E2FD8:
	.4byte gRam
_080E2FDC:
	.4byte 0x00000FE2
_080E2FE0:
	.4byte 0x00000F52
_080E2FE4:
	ldr r4, _080E3018  @ =0x00001052
	add r0, r6, r4
	add r0, r5, r0
	ldrb r1, [r0]
	add r1, r1, #2
	strb r1, [r0]
	ldr r0, _080E301C  @ =0x00000F92
	add r2, r6, r0
	add r2, r5, r2
	ldr r3, _080E3020  @ =gUnknown_08176E78
	lsl r1, r1, #24
	lsr r1, r1, #26
	mov r0, #7
	and r1, r1, r0
	sub r4, r4, #160
	add r0, r6, r4
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #3
	orr r1, r1, r0
	add r1, r1, r3
	ldrb r0, [r1]
	strb r0, [r2]
_080E3012:
	pop {r4-r6}
	pop {r0}
	bx r0
_080E3018:
	.4byte 0x00001052
_080E301C:
	.4byte 0x00000F92
_080E3020:
	.4byte gUnknown_08176E78
	THUMB_FUNC_END sub_080E2FA4

	THUMB_FUNC_START sub_080E3024
sub_080E3024: @ 0x080E3024
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	ldr r4, _080E3100  @ =gRam
	ldr r3, _080E3104  @ =0x00000F92
	add r2, r4, r3
	add r0, r0, r2
	ldrb r2, [r0]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	ldr r0, _080E3108  @ =gUnknown_08176ED0
	add r0, r2, r0
	lsr r1, r1, #24
	ldrb r0, [r0]
	add r1, r1, r0
	lsr r7, r1, #2
	ldr r0, _080E310C  @ =gUnknown_08176EB8
	add r2, r2, r0
	ldrb r5, [r2]
	mov r8, r5
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _080E30EE
	mov r9, r4
_080E3068:
	mov r6, r10
	add r6, r6, r8
	lsl r6, r6, #24
	lsr r6, r6, #24
	ldr r0, _080E3110  @ =gUnknown_03003E74
	ldrh r0, [r0]
	add r0, r0, r7
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r9
	ldr r1, _080E3114  @ =gUnknown_08176EE8
	lsl r3, r6, #1
	add r1, r3, r1
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r4, _080E3118  @ =0x00000964
	add r4, r4, r9
	ldr r2, _080E311C  @ =gUnknown_08176F78
	add r3, r3, r2
	ldrh r2, [r3]
	ldrh r4, [r4]
	add r2, r2, r4
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E3120  @ =gUnknown_08177008
	add r3, r6, r3
	ldrb r3, [r3]
	ldr r4, _080E3124  @ =gUnknown_08177050
	add r4, r6, r4
	ldrb r4, [r4]
	ldr r5, _080E3128  @ =gUnknown_03002B99
	ldrb r5, [r5]
	lsl r5, r5, #24
	asr r5, r5, #24
	orr r4, r4, r5
	lsl r4, r4, #8
	add r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r4, _080E312C  @ =gUnknown_08177098
	add r6, r6, r4
	ldrb r4, [r6]
	str r4, [sp]
	bl sub_080C6368
	mov r1, r8
	lsl r0, r1, #24
	asr r1, r0, #24
	cmp r1, #2
	bne _080E30DC
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
_080E30DC:
	sub r1, r1, #1
	lsl r1, r1, #24
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsr r3, r1, #24
	mov r8, r3
	cmp r1, #0
	bge _080E3068
_080E30EE:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E3100:
	.4byte gRam
_080E3104:
	.4byte 0x00000F92
_080E3108:
	.4byte gUnknown_08176ED0
_080E310C:
	.4byte gUnknown_08176EB8
_080E3110:
	.4byte gUnknown_03003E74
_080E3114:
	.4byte gUnknown_08176EE8
_080E3118:
	.4byte 0x00000964
_080E311C:
	.4byte gUnknown_08176F78
_080E3120:
	.4byte gUnknown_08177008
_080E3124:
	.4byte gUnknown_08177050
_080E3128:
	.4byte gUnknown_03002B99
_080E312C:
	.4byte gUnknown_08177098
	THUMB_FUNC_END sub_080E3024

	THUMB_FUNC_START sub_080E3130
sub_080E3130: @ 0x080E3130
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #4]
	ldr r2, _080E31E0  @ =gRam
	mov r1, #150
	lsl r1, r1, #4
	add r0, r2, r1
	ldrb r1, [r0]
	ldr r3, _080E31E4  @ =0x000015E8
	add r0, r2, r3
	strb r1, [r0]
	ldr r4, _080E31E8  @ =0x00000964
	add r0, r2, r4
	ldrb r1, [r0]
	ldr r7, _080E31EC  @ =0x000015E9
	add r0, r2, r7
	strb r1, [r0]
	ldr r1, _080E31F0  @ =0x00000F62
	add r0, r2, r1
	ldr r3, [sp, #4]
	add r0, r3, r0
	ldrb r3, [r0]
	ldr r4, _080E31F4  @ =0x00000F72
	add r0, r2, r4
	ldr r7, [sp, #4]
	add r0, r7, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r3, r3, r0
	mov r7, #0
	sub r1, r1, #16
	add r0, r2, r1
	ldr r4, [sp, #4]
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #1
	bls _080E3194
	ldr r0, _080E31F8  @ =gUnknown_081770E0
	ldr r7, _080E31FC  @ =0x00000FE2
	add r1, r2, r7
	add r1, r4, r1
	ldrb r1, [r1]
	add r1, r1, r0
	ldrb r7, [r1]
_080E3194:
	ldr r1, _080E3200  @ =gUnknown_08177100
	ldr r4, _080E3204  @ =0x00000FB2
	add r0, r2, r4
	ldr r2, [sp, #4]
	add r0, r2, r0
	ldrb r0, [r0]
	add r1, r0, r1
	ldrb r1, [r1]
	str r1, [sp, #8]
	ldr r1, _080E3208  @ =gUnknown_08177104
	add r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #12]
	add r5, r3, #0
	add r5, r5, #128
	ldr r4, _080E320C  @ =0x000001FF
	add r0, r4, #0
	and r5, r5, r0
	ldr r1, _080E3210  @ =gUnknown_08173F38
	mov r6, #255
	add r0, r3, #0
	and r0, r0, r6
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r2, [r0]
	add r0, r5, #0
	and r0, r0, r6
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r4, [r0]
	mov r0, #255
	lsl r0, r0, #8
	and r0, r0, r2
	cmp r0, #0
	beq _080E3214
	str r7, [sp, #16]
	b _080E322C
	.byte 0x00
	.byte 0x00
_080E31E0:
	.4byte gRam
_080E31E4:
	.4byte 0x000015E8
_080E31E8:
	.4byte 0x00000964
_080E31EC:
	.4byte 0x000015E9
_080E31F0:
	.4byte 0x00000F62
_080E31F4:
	.4byte 0x00000F72
_080E31F8:
	.4byte gUnknown_081770E0
_080E31FC:
	.4byte 0x00000FE2
_080E3200:
	.4byte gUnknown_08177100
_080E3204:
	.4byte 0x00000FB2
_080E3208:
	.4byte gUnknown_08177104
_080E320C:
	.4byte 0x000001FF
_080E3210:
	.4byte gUnknown_08173F38
_080E3214:
	and r2, r2, r6
	add r0, r2, #0
	mul r0, r7, r0
	lsl r0, r0, #16
	lsr r1, r0, #24
	lsr r0, r0, #23
	mov r2, #1
	and r0, r0, r2
	add r1, r1, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp, #16]
_080E322C:
	ldr r0, [sp, #16]
	mov r10, r0
	mov r0, #128
	lsl r0, r0, #1
	and r3, r3, r0
	cmp r3, #0
	beq _080E3244
	mov r1, r10
	neg r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
_080E3244:
	mov r0, #255
	lsl r0, r0, #8
	and r0, r0, r4
	cmp r0, #0
	beq _080E3252
	mov r9, r7
	b _080E326C
_080E3252:
	mov r0, #255
	and r4, r4, r0
	add r0, r4, #0
	mul r0, r7, r0
	lsl r0, r0, #16
	lsr r1, r0, #24
	lsr r0, r0, #23
	mov r2, #1
	and r0, r0, r2
	add r1, r1, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r9, r1
_080E326C:
	mov r7, r9
	mov r0, #128
	lsl r0, r0, #1
	and r5, r5, r0
	cmp r5, #0
	beq _080E3280
	mov r2, r9
	neg r0, r2
	lsl r0, r0, #24
	lsr r7, r0, #24
_080E3280:
	mov r0, r10
	add r0, r0, #252
	ldr r3, [sp, #8]
	add r0, r3, r0
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r5, _080E3388  @ =gRam
	ldr r4, _080E338C  @ =0x000015ED
	add r0, r5, r4
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #252
	ldr r2, [sp, #12]
	add r0, r2, r0
	lsl r0, r0, #24
	lsr r3, r0, #24
	sub r4, r4, #1
	add r0, r5, r4
	strb r3, [r0]
	ldr r0, _080E3390  @ =gUnknown_03003E74
	ldrh r0, [r0]
	sub r4, r4, #4
	add r2, r5, r4
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080E3394  @ =0x000015E9
	add r6, r5, r2
	lsl r2, r3, #24
	asr r2, r2, #24
	ldrb r3, [r6]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E3398  @ =0x00002D4A
	mov r4, #2
	str r4, [sp]
	bl sub_080C6004
	mov r2, #3
	mov r4, #1
	mov r8, r4
	mov r0, #128
	and r7, r7, r0
	lsl r0, r7, #24
	lsr r0, r0, #24
	str r0, [sp, #20]
_080E32E4:
	ldr r1, _080E339C  @ =gUnknown_08177108
	lsl r0, r2, #24
	asr r4, r0, #24
	add r1, r4, r1
	ldrb r2, [r1]
	ldr r1, [sp, #16]
	add r0, r1, #0
	mul r0, r2, r0
	asr r0, r0, #8
	lsl r0, r0, #24
	lsr r1, r0, #24
	mov r0, r10
	mov r3, #128
	and r0, r0, r3
	cmp r0, #0
	beq _080E330A
	lsl r0, r1, #24
	neg r0, r0
	lsr r1, r0, #24
_080E330A:
	mov r0, r9
	mul r0, r2, r0
	asr r0, r0, #8
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r7, [sp, #20]
	cmp r7, #0
	beq _080E3320
	lsl r0, r3, #24
	neg r0, r0
	lsr r3, r0, #24
_080E3320:
	ldr r0, _080E3390  @ =gUnknown_03003E74
	ldrh r0, [r0]
	add r0, r0, r8
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r1, #24
	ldr r7, _080E33A0  @ =0x000015E8
	add r2, r5, r7
	asr r1, r1, #24
	ldrb r2, [r2]
	add r1, r1, r2
	ldr r2, [sp, #8]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsl r2, r3, #24
	asr r2, r2, #24
	ldrb r3, [r6]
	add r2, r2, r3
	ldr r7, [sp, #12]
	add r2, r2, r7
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r3, #0
	str r3, [sp]
	ldr r3, _080E33A4  @ =0x00002D6F
	bl sub_080C6004
	sub r1, r4, #1
	lsl r1, r1, #24
	mov r0, r8
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	lsr r2, r1, #24
	cmp r1, #0
	bge _080E32E4
	ldr r0, [sp, #4]
	mov r1, #255
	mov r2, #4
	bl sub_080C6350
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E3388:
	.4byte gRam
_080E338C:
	.4byte 0x000015ED
_080E3390:
	.4byte gUnknown_03003E74
_080E3394:
	.4byte 0x000015E9
_080E3398:
	.4byte 0x00002D4A
_080E339C:
	.4byte gUnknown_08177108
_080E33A0:
	.4byte 0x000015E8
_080E33A4:
	.4byte 0x00002D6F
	THUMB_FUNC_END sub_080E3130

	THUMB_FUNC_START sub_080E33A8
sub_080E33A8: @ 0x080E33A8
	bx lr
	THUMB_FUNC_END sub_080E33A8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E33AC
sub_080E33AC: @ 0x080E33AC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E2D4C
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E33AC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E33BC
sub_080E33BC: @ 0x080E33BC
	push {r4-r7,lr}
	sub sp, sp, #4
	add r5, r1, #0
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r5, r5, #24
	ldr r1, _080E3424  @ =gUnknown_03003E74
	lsr r5, r5, #26
	ldrh r1, [r1]
	add r5, r5, r1
	lsl r5, r5, #16
	lsr r5, r5, #16
	ldr r6, _080E3428  @ =gRam
	mov r2, #150
	lsl r2, r2, #4
	add r1, r6, r2
	ldrh r1, [r1]
	ldr r3, _080E342C  @ =0x00000964
	add r2, r6, r3
	ldrh r2, [r2]
	sub r2, r2, #9
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r4, _080E3430  @ =gUnknown_08176EB0
	ldr r7, _080E3434  @ =0x00001082
	add r3, r6, r7
	add r0, r0, r3
	ldrb r0, [r0]
	add r4, r0, r4
	ldrb r3, [r4]
	ldr r4, _080E3438  @ =gUnknown_08176EB4
	add r0, r0, r4
	ldrb r0, [r0]
	ldr r4, _080E343C  @ =0x00000969
	add r6, r6, r4
	mov r4, #0
	ldrsb r4, [r6, r4]
	orr r0, r0, r4
	lsl r0, r0, #8
	add r3, r3, r0
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #2
	str r0, [sp]
	add r0, r5, #0
	bl sub_080C6368
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E3424:
	.4byte gUnknown_03003E74
_080E3428:
	.4byte gRam
_080E342C:
	.4byte 0x00000964
_080E3430:
	.4byte gUnknown_08176EB0
_080E3434:
	.4byte 0x00001082
_080E3438:
	.4byte gUnknown_08176EB4
_080E343C:
	.4byte 0x00000969
	THUMB_FUNC_END sub_080E33BC

	THUMB_FUNC_START sub_080E3440
sub_080E3440: @ 0x080E3440
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080E347C  @ =gRam
	ldr r1, _080E3480  @ =0x00001052
	add r2, r3, r1
	add r2, r0, r2
	ldrb r1, [r2]
	add r1, r1, #1
	strb r1, [r2]
	ldr r2, _080E3484  @ =0x00000F92
	add r4, r3, r2
	add r4, r0, r4
	ldr r5, _080E3488  @ =gUnknown_08176E78
	lsl r1, r1, #24
	lsr r1, r1, #26
	mov r2, #7
	and r1, r1, r2
	ldr r2, _080E348C  @ =0x00000FB2
	add r3, r3, r2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #3
	orr r1, r1, r0
	add r1, r1, r5
	ldrb r0, [r1]
	strb r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
_080E347C:
	.4byte gRam
_080E3480:
	.4byte 0x00001052
_080E3484:
	.4byte 0x00000F92
_080E3488:
	.4byte gUnknown_08176E78
_080E348C:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080E3440

	THUMB_FUNC_START sub_080E3490
sub_080E3490: @ 0x080E3490
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080E2614
	ldr r1, _080E34C0  @ =gRam
	ldr r2, _080E34C4  @ =0x00000FC2
	add r0, r1, r2
	add r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E34BA
	mov r0, #48
	strb r0, [r2]
	ldr r0, _080E34C8  @ =0x00000F52
	add r1, r1, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080E34BA:
	pop {r4}
	pop {r0}
	bx r0
_080E34C0:
	.4byte gRam
_080E34C4:
	.4byte 0x00000FC2
_080E34C8:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E3490

	THUMB_FUNC_START sub_080E34CC
sub_080E34CC: @ 0x080E34CC
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r5, sp
	add r5, r5, #1
	mov r0, sp
	add r1, r5, #0
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E3510
	add r0, r4, #0
	bl sub_080E3518
	add r0, r4, #0
	bl sub_080E3528
	add r0, r4, #0
	bl sub_080E3130
	mov r0, sp
	add r1, r5, #0
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E3510
	add r0, r4, #0
	bl sub_080E2684
_080E3510:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E34CC

	THUMB_FUNC_START sub_080E3518
sub_080E3518: @ 0x080E3518
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #24
	bl sub_080E33BC
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E3518

	THUMB_FUNC_START sub_080E3528
sub_080E3528: @ 0x080E3528
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #20
	bl sub_080E3024
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E3528

	THUMB_FUNC_START sub_080E3538
sub_080E3538: @ 0x080E3538
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r6, #1
	ldr r5, _080E35DC  @ =gRam
	ldr r3, _080E35E0  @ =0x00000FB2
	add r0, r5, r3
	add r0, r4, r0
	strb r2, [r0]
	ldr r2, _080E35E4  @ =0x00000F92
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E35D6
	add r0, r4, #0
	bl sub_080C5044
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E3576
	ldr r3, _080E35E8  @ =0x00001626
	add r0, r5, r3
	ldrb r1, [r0]
	neg r0, r1
	orr r0, r0, r1
	lsr r6, r0, #31
_080E3576:
	cmp r6, #0
	beq _080E3594
	ldr r1, _080E35EC  @ =0x00000F52
	add r0, r5, r1
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #2
	bhi _080E3594
	mov r0, #3
	strb r0, [r1]
	ldr r2, _080E35F0  @ =0x00000FC2
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #32
	strb r1, [r0]
_080E3594:
	ldr r5, _080E35DC  @ =gRam
	ldr r3, _080E35F4  @ =0x00001072
	add r0, r5, r3
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #3
	bls _080E35A8
	add r0, r4, #0
	bl sub_080E3E3C
_080E35A8:
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E35D6
	add r0, r4, #0
	bl sub_080E3D00
	add r0, r4, #0
	bl sub_080C6F48
	ldr r1, _080E35F8  @ =gUnknown_0817714C
	ldr r2, _080E35EC  @ =0x00000F52
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080E35D6:
	pop {r4-r6}
	pop {r0}
	bx r0
_080E35DC:
	.4byte gRam
_080E35E0:
	.4byte 0x00000FB2
_080E35E4:
	.4byte 0x00000F92
_080E35E8:
	.4byte 0x00001626
_080E35EC:
	.4byte 0x00000F52
_080E35F0:
	.4byte 0x00000FC2
_080E35F4:
	.4byte 0x00001072
_080E35F8:
	.4byte gUnknown_0817714C
	THUMB_FUNC_END sub_080E3538

	THUMB_FUNC_START sub_080E35FC
sub_080E35FC: @ 0x080E35FC
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	add r0, r6, #0
	bl sub_080E2614
	ldr r7, _080E3660  @ =gRam
	ldr r1, _080E3664  @ =0x00000FC2
	add r0, r7, r1
	add r4, r6, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E3658
	ldr r0, _080E3668  @ =0x00000F52
	add r1, r7, r0
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	bl GetRandomInt
	mov r1, #127
	and r1, r1, r0
	add r1, r1, #80
	strb r1, [r4]
	ldr r1, _080E366C  @ =0x00000FB2
	add r4, r7, r1
	add r4, r6, r4
	ldrb r5, [r4]
	bl GetRandomInt
	mov r1, #3
	and r1, r1, r0
	strb r1, [r4]
	cmp r5, r1
	beq _080E3658
	eor r5, r5, r1
	mov r0, #2
	and r5, r5, r0
	cmp r5, #0
	bne _080E3658
	ldr r1, _080E3670  @ =0x00000FD2
	add r0, r7, r1
	add r0, r6, r0
	mov r1, #12
	strb r1, [r0]
_080E3658:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E3660:
	.4byte gRam
_080E3664:
	.4byte 0x00000FC2
_080E3668:
	.4byte 0x00000F52
_080E366C:
	.4byte 0x00000FB2
_080E3670:
	.4byte 0x00000FD2
	THUMB_FUNC_END sub_080E35FC

	THUMB_FUNC_START sub_080E3674
sub_080E3674: @ 0x080E3674
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080E36EC  @ =gRam
	ldr r1, _080E36F0  @ =0x00000FC2
	add r0, r5, r1
	add r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080E3710
	add r0, r4, #0
	bl sub_080E263C
	ldr r1, _080E36F4  @ =0x00001042
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	beq _080E36B2
	ldr r1, _080E36F8  @ =0x00000FB2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r2, #1
	eor r1, r1, r2
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080E26C8
_080E36B2:
	ldr r0, _080E36FC  @ =0x00000F22
	add r1, r5, r0
	add r1, r4, r1
	ldr r2, _080E3700  @ =gUnknown_08176910
	add r0, r0, #144
	add r3, r5, r0
	add r3, r4, r3
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E3704  @ =0x00000F12
	add r1, r5, r0
	add r1, r4, r1
	ldr r2, _080E3708  @ =gUnknown_08176914
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E370C  @ =0x00001082
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r3]
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080E3728
	b _080E371E
	.byte 0x00
	.byte 0x00
_080E36EC:
	.4byte gRam
_080E36F0:
	.4byte 0x00000FC2
_080E36F4:
	.4byte 0x00001042
_080E36F8:
	.4byte 0x00000FB2
_080E36FC:
	.4byte 0x00000F22
_080E3700:
	.4byte gUnknown_08176910
_080E3704:
	.4byte 0x00000F12
_080E3708:
	.4byte gUnknown_08176914
_080E370C:
	.4byte 0x00001082
_080E3710:
	ldr r1, _080E3724  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	mov r0, #160
	strb r0, [r2]
_080E371E:
	pop {r4,r5}
	pop {r0}
	bx r0
_080E3724:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E3674

	THUMB_FUNC_START sub_080E3728
sub_080E3728: @ 0x080E3728
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r2, _080E3798  @ =gRam
	ldr r1, _080E379C  @ =0x00001052
	add r0, r2, r1
	add r0, r5, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r3, #15
	and r3, r3, r1
	add r6, r2, #0
	cmp r3, #0
	bne _080E375C
	ldr r2, _080E37A0  @ =0x00000F62
	add r0, r6, r2
	add r1, r5, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #2
	bne _080E375C
	strb r3, [r1]
_080E375C:
	add r0, r6, #0
	ldr r2, _080E37A4  @ =0x00000FB2
	add r1, r0, r2
	add r1, r5, r1
	ldrb r4, [r1]
	ldr r1, _080E37A8  @ =0x00000FF2
	add r0, r0, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #72
	bne _080E3778
	add r0, r4, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
_080E3778:
	ldr r0, _080E37AC  @ =0x00000F92
	add r2, r6, r0
	add r2, r5, r2
	ldr r3, _080E37B0  @ =gUnknown_08176918
	sub r0, r0, #48
	add r1, r6, r0
	add r1, r5, r1
	lsl r0, r4, #2
	ldrb r1, [r1]
	add r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	pop {r4-r6}
	pop {r0}
	bx r0
_080E3798:
	.4byte gRam
_080E379C:
	.4byte 0x00001052
_080E37A0:
	.4byte 0x00000F62
_080E37A4:
	.4byte 0x00000FB2
_080E37A8:
	.4byte 0x00000FF2
_080E37AC:
	.4byte 0x00000F92
_080E37B0:
	.4byte gUnknown_08176918
	THUMB_FUNC_END sub_080E3728

	THUMB_FUNC_START sub_080E37B4
sub_080E37B4: @ 0x080E37B4
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080E2614
	add r0, r4, #0
	bl sub_080E2094
	ldr r5, _080E3800  @ =gRam
	ldr r1, _080E3804  @ =0x00000FC2
	add r0, r5, r1
	add r1, r4, r0
	ldrb r0, [r1]
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	beq _080E3810
	cmp r0, #0
	blt _080E381C
	ldr r6, _080E3808  @ =0x00001082
	add r2, r5, r6
	add r2, r4, r2
	ldr r3, _080E380C  @ =gUnknown_08176938
	lsr r1, r0, #27
	mov r0, #7
	and r1, r1, r0
	sub r6, r6, #208
	add r0, r5, r6
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #3
	orr r1, r1, r0
	add r1, r1, r3
	ldrb r0, [r1]
	strb r0, [r2]
	b _080E381C
	.byte 0x00
	.byte 0x00
_080E3800:
	.4byte gRam
_080E3804:
	.4byte 0x00000FC2
_080E3808:
	.4byte 0x00001082
_080E380C:
	.4byte gUnknown_08176938
_080E3810:
	mov r0, #32
	strb r0, [r1]
	ldr r1, _080E3824  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
_080E381C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E3824:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E37B4

	THUMB_FUNC_START sub_080E3828
sub_080E3828: @ 0x080E3828
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080E3978  @ =gRam
	ldr r0, _080E397C  @ =0x00001042
	add r1, r4, r0
	add r1, r5, r1
	ldr r2, _080E3980  @ =gUnknown_08177164
	ldr r3, _080E3984  @ =0x00000FB2
	add r0, r4, r3
	add r6, r5, r0
	ldrb r0, [r6]
	add r0, r0, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	and r0, r0, r1
	cmp r0, #0
	beq _080E384E
	b _080E395A
_080E384E:
	ldr r1, _080E3988  @ =0x00000FC2
	add r0, r4, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E385C
	b _080E395A
_080E385C:
	ldr r2, _080E398C  @ =0x00000996
	add r0, r4, r2
	ldrb r1, [r0]
	add r0, r5, #0
	eor r0, r0, r1
	mov r1, #7
	and r0, r0, r1
	cmp r0, #0
	bne _080E3940
	add r0, r5, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r3, r0, #24
	strb r3, [r6]
	ldr r1, _080E3990  @ =0x00001082
	add r0, r4, r1
	add r0, r5, r0
	strb r3, [r0]
	ldr r2, _080E3994  @ =0x00000FF2
	add r0, r4, r2
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #72
	bne _080E3894
	add r0, r3, #4
	lsl r0, r0, #24
	lsr r3, r0, #24
_080E3894:
	ldr r1, _080E3998  @ =0x000016C4
	add r0, r4, r1
	ldrb r2, [r0]
	add r1, r1, #1
	add r0, r4, r1
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r1, r1, #8
	ldr r0, _080E399C  @ =gUnknown_08177168
	add r0, r3, r0
	orr r2, r2, r1
	ldrb r0, [r0]
	add r2, r2, r0
	ldr r0, _080E39A0  @ =gUnknown_08177170
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r1, _080E39A4  @ =0x00000968
	add r0, r4, r1
	strb r2, [r0]
	lsr r2, r2, #8
	add r1, r1, #1
	add r0, r4, r1
	strb r2, [r0]
	mov r2, #182
	lsl r2, r2, #5
	add r0, r4, r2
	ldrb r2, [r0]
	ldr r1, _080E39A8  @ =0x000016C1
	add r0, r4, r1
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r1, r1, #8
	ldr r0, _080E39AC  @ =gUnknown_08177178
	add r0, r3, r0
	orr r2, r2, r1
	ldrb r0, [r0]
	add r2, r2, r0
	ldr r0, _080E39B0  @ =gUnknown_08177180
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r3, _080E39B4  @ =0x0000096C
	add r0, r4, r3
	strb r2, [r0]
	lsr r2, r2, #8
	ldr r1, _080E39B8  @ =0x0000096D
	add r0, r4, r1
	strb r2, [r0]
	add r0, r5, #0
	mov r1, #24
	bl sub_080C2DCC
	ldr r2, _080E39BC  @ =0x00000F12
	add r0, r4, r2
	add r0, r5, r0
	mov r3, #150
	lsl r3, r3, #4
	add r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080E39C0  @ =0x00000F22
	add r0, r4, r1
	add r0, r5, r0
	ldr r2, _080E39C4  @ =0x00000961
	add r1, r4, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r3, r3, #28
	add r0, r4, r3
	ldrb r0, [r0]
	add r0, r0, #6
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #11
	bhi _080E3940
	ldr r1, _080E39C8  @ =0x0000097D
	add r0, r4, r1
	ldrb r0, [r0]
	add r0, r0, #6
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #11
	bls _080E395A
_080E3940:
	ldr r0, _080E3978  @ =gRam
	ldr r2, _080E39CC  @ =0x00001052
	add r0, r0, r2
	add r0, r5, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080E3728
	mov r0, #0
	cmp r0, #0
	beq _080E3972
_080E395A:
	ldr r2, _080E3978  @ =gRam
	ldr r3, _080E39D0  @ =0x00000F52
	add r1, r2, r3
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080E3988  @ =0x00000FC2
	add r2, r2, r0
	add r2, r5, r2
	mov r0, #24
	strb r0, [r2]
_080E3972:
	pop {r4-r6}
	pop {r0}
	bx r0
_080E3978:
	.4byte gRam
_080E397C:
	.4byte 0x00001042
_080E3980:
	.4byte gUnknown_08177164
_080E3984:
	.4byte 0x00000FB2
_080E3988:
	.4byte 0x00000FC2
_080E398C:
	.4byte 0x00000996
_080E3990:
	.4byte 0x00001082
_080E3994:
	.4byte 0x00000FF2
_080E3998:
	.4byte 0x000016C4
_080E399C:
	.4byte gUnknown_08177168
_080E39A0:
	.4byte gUnknown_08177170
_080E39A4:
	.4byte 0x00000968
_080E39A8:
	.4byte 0x000016C1
_080E39AC:
	.4byte gUnknown_08177178
_080E39B0:
	.4byte gUnknown_08177180
_080E39B4:
	.4byte 0x0000096C
_080E39B8:
	.4byte 0x0000096D
_080E39BC:
	.4byte 0x00000F12
_080E39C0:
	.4byte 0x00000F22
_080E39C4:
	.4byte 0x00000961
_080E39C8:
	.4byte 0x0000097D
_080E39CC:
	.4byte 0x00001052
_080E39D0:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E3828

	THUMB_FUNC_START sub_080E39D4
sub_080E39D4: @ 0x080E39D4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080E3A60  @ =gRam
	ldr r0, _080E3A64  @ =0x00001092
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080E3A68  @ =gUnknown_08177188
	ldr r3, _080E3A6C  @ =0x00000FB2
	add r0, r6, r3
	add r7, r4, r0
	ldrb r0, [r7]
	add r0, r0, r2
	ldrb r0, [r0]
	mov r2, #0
	mov r8, r2
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080E2614
	ldr r3, _080E3A70  @ =0x00000FC2
	add r0, r6, r3
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080E3A84
	ldr r1, _080E3A74  @ =0x00001052
	add r0, r6, r1
	add r1, r4, r0
	mov r2, r8
	strb r2, [r1]
	ldrb r0, [r5]
	cmp r0, #39
	bls _080E3A22
	mov r0, r8
	sub r0, r0, #1
	strb r0, [r1]
_080E3A22:
	ldrb r0, [r5]
	cmp r0, #12
	bne _080E3A2E
	add r0, r4, #0
	bl sub_080E3A94
_080E3A2E:
	ldrb r0, [r5]
	lsr r0, r0, #3
	ldrb r1, [r7]
	lsl r1, r1, #3
	orr r0, r0, r1
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _080E3A78  @ =0x00000FF2
	add r0, r6, r3
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #72
	bne _080E3A50
	add r0, r2, #0
	add r0, r0, #32
	lsl r0, r0, #24
	lsr r2, r0, #24
_080E3A50:
	ldr r1, _080E3A7C  @ =0x00000F92
	add r0, r6, r1
	add r0, r4, r0
	ldr r1, _080E3A80  @ =gUnknown_0817710C
	add r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r0]
	b _080E3A8A
_080E3A60:
	.4byte gRam
_080E3A64:
	.4byte 0x00001092
_080E3A68:
	.4byte gUnknown_08177188
_080E3A6C:
	.4byte 0x00000FB2
_080E3A70:
	.4byte 0x00000FC2
_080E3A74:
	.4byte 0x00001052
_080E3A78:
	.4byte 0x00000FF2
_080E3A7C:
	.4byte 0x00000F92
_080E3A80:
	.4byte gUnknown_0817710C
_080E3A84:
	add r0, r4, #0
	bl sub_080E264C
_080E3A8A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E39D4

	THUMB_FUNC_START sub_080E3A94
sub_080E3A94: @ 0x080E3A94
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, #27
	add r1, r4, #0
	bl sub_080CA538
	add r6, r0, #0
	cmp r6, #0
	blt _080E3B96
	add r0, r4, #0
	mov r1, #99
	bl sub_080CF140
	ldr r7, _080E3BA0  @ =gRam
	ldr r0, _080E3BA4  @ =0x00000FB2
	add r0, r0, r7
	mov r12, r0
	add r0, r4, r0
	ldrb r5, [r0]
	ldr r1, _080E3BA8  @ =0x00000FF2
	add r0, r7, r1
	add r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #71
	bls _080E3AD2
	add r0, r5, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
_080E3AD2:
	mov r2, #150
	lsl r2, r2, #4
	add r1, r7, r2
	ldr r0, _080E3BAC  @ =gUnknown_0817718C
	add r0, r5, r0
	ldrb r0, [r0]
	ldrh r2, [r1]
	add r2, r2, r0
	ldr r0, _080E3BB0  @ =gUnknown_08177194
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r3, _080E3BB4  @ =0x00000964
	add r1, r7, r3
	ldr r0, _080E3BB8  @ =gUnknown_0817719C
	add r0, r5, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080E3BBC  @ =gUnknown_081771A4
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _080E3BC0  @ =0x00000EE2
	add r0, r7, r3
	add r0, r6, r0
	mov r3, #0
	mov r8, r3
	strb r2, [r0]
	ldr r3, _080E3BC4  @ =0x00000F02
	add r0, r7, r3
	add r0, r6, r0
	lsr r2, r2, #8
	strb r2, [r0]
	ldr r2, _080E3BC8  @ =0x00000ED2
	add r0, r7, r2
	add r0, r6, r0
	strb r1, [r0]
	sub r3, r3, #16
	add r0, r7, r3
	add r0, r6, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r0, _080E3BCC  @ =0x00000F22
	add r1, r7, r0
	add r1, r6, r1
	ldr r0, _080E3BD0  @ =gUnknown_081771AC
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r2, r2, #64
	add r1, r7, r2
	add r1, r6, r1
	ldr r0, _080E3BD4  @ =gUnknown_081771B4
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	mov r3, r12
	add r1, r6, r3
	mov r0, #3
	and r0, r0, r5
	strb r0, [r1]
	ldr r1, _080E3BD8  @ =0x00001132
	add r2, r7, r1
	add r2, r6, r2
	ldr r1, _080E3BDC  @ =gUnknown_081771BC
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r2, _080E3BE0  @ =0x00001142
	add r0, r7, r2
	add r0, r6, r0
	mov r3, r8
	strb r3, [r0]
	mov r1, #0
	ldrb r0, [r4]
	cmp r0, #71
	bls _080E3B74
	mov r1, #1
_080E3B74:
	ldr r2, _080E3BE4  @ =0x00000F62
	add r0, r7, r2
	add r0, r6, r0
	strb r1, [r0]
	cmp r1, #0
	beq _080E3B96
	ldr r0, _080E3BE8  @ =gShield
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E3B96
	ldr r3, _080E3BEC  @ =0x000011B2
	add r0, r7, r3
	add r0, r6, r0
	ldrb r2, [r0]
	mov r1, #223
	and r1, r1, r2
	strb r1, [r0]
_080E3B96:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080E3BA0:
	.4byte gRam
_080E3BA4:
	.4byte 0x00000FB2
_080E3BA8:
	.4byte 0x00000FF2
_080E3BAC:
	.4byte gUnknown_0817718C
_080E3BB0:
	.4byte gUnknown_08177194
_080E3BB4:
	.4byte 0x00000964
_080E3BB8:
	.4byte gUnknown_0817719C
_080E3BBC:
	.4byte gUnknown_081771A4
_080E3BC0:
	.4byte 0x00000EE2
_080E3BC4:
	.4byte 0x00000F02
_080E3BC8:
	.4byte 0x00000ED2
_080E3BCC:
	.4byte 0x00000F22
_080E3BD0:
	.4byte gUnknown_081771AC
_080E3BD4:
	.4byte gUnknown_081771B4
_080E3BD8:
	.4byte 0x00001132
_080E3BDC:
	.4byte gUnknown_081771BC
_080E3BE0:
	.4byte 0x00001142
_080E3BE4:
	.4byte 0x00000F62
_080E3BE8:
	.4byte gShield
_080E3BEC:
	.4byte 0x000011B2
	THUMB_FUNC_END sub_080E3A94

	THUMB_FUNC_START sub_080E3BF0
sub_080E3BF0: @ 0x080E3BF0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r3, r0, #24
	lsl r1, r1, #24
	lsr r7, r1, #26
	ldr r2, _080E3CB4  @ =gRam
	ldr r1, _080E3CB8  @ =0x00000F92
	add r0, r2, r1
	add r0, r3, r0
	ldrb r1, [r0]
	add r0, r1, #0
	sub r0, r0, #14
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r1, #13
	bhi _080E3C26
	ldr r0, _080E3CBC  @ =gUnknown_081771CC
	ldr r4, _080E3CC0  @ =0x00000FB2
	add r1, r2, r4
	add r1, r3, r1
	ldrb r1, [r1]
	add r1, r1, r0
	ldrb r0, [r1]
_080E3C26:
	lsl r1, r0, #2
	ldr r3, _080E3CC4  @ =0x0000096C
	add r0, r2, r3
	strb r1, [r0]
	mov r1, #3
	mov r8, r2
	ldr r4, _080E3CC8  @ =0x00000964
	add r4, r4, r8
	mov r9, r4
_080E3C38:
	ldr r0, _080E3CC4  @ =0x0000096C
	add r0, r0, r8
	ldrb r5, [r0]
	lsl r6, r1, #24
	asr r6, r6, #24
	add r5, r6, r5
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r0, _080E3CCC  @ =gUnknown_03003E74
	ldrh r0, [r0]
	add r0, r0, r7
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r8
	ldr r1, _080E3CD0  @ =gUnknown_081771D0
	lsl r3, r5, #1
	add r1, r3, r1
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080E3CD4  @ =gUnknown_08177230
	add r3, r3, r2
	ldrh r2, [r3]
	mov r3, r9
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E3CD8  @ =gUnknown_08177290
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080E3CDC  @ =gUnknown_081772C0
	add r5, r5, r4
	ldrb r5, [r5]
	mov r4, #32
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	mov r4, #0
	str r4, [sp]
	bl sub_080C6368
	sub r6, r6, #1
	lsl r6, r6, #24
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsr r1, r6, #24
	cmp r6, #0
	bge _080E3C38
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E3CB4:
	.4byte gRam
_080E3CB8:
	.4byte 0x00000F92
_080E3CBC:
	.4byte gUnknown_081771CC
_080E3CC0:
	.4byte 0x00000FB2
_080E3CC4:
	.4byte 0x0000096C
_080E3CC8:
	.4byte 0x00000964
_080E3CCC:
	.4byte gUnknown_03003E74
_080E3CD0:
	.4byte gUnknown_081771D0
_080E3CD4:
	.4byte gUnknown_08177230
_080E3CD8:
	.4byte gUnknown_08177290
_080E3CDC:
	.4byte gUnknown_081772C0
	THUMB_FUNC_END sub_080E3BF0

	THUMB_FUNC_START sub_080E3CE0
sub_080E3CE0: @ 0x080E3CE0
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E25A8
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E3CE0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E3CF0
sub_080E3CF0: @ 0x080E3CF0
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E3D98
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E3CF0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E3D00
sub_080E3D00: @ 0x080E3D00
	push {lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r0, _080E3D20  @ =gRam
	ldr r2, _080E3D24  @ =0x00001042
	add r0, r0, r2
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E3D1A
	add r0, r1, #0
	bl Sprite3_Move
_080E3D1A:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E3D20:
	.4byte gRam
_080E3D24:
	.4byte 0x00001042
	THUMB_FUNC_END sub_080E3D00

	THUMB_FUNC_START sub_080E3D28
sub_080E3D28: @ 0x080E3D28
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r5, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E3D7A
	ldr r1, _080E3D84  @ =gUnknown_081771C4
	ldr r4, _080E3D88  @ =gRam
	ldr r0, _080E3D8C  @ =0x00000FB2
	add r4, r4, r0
	add r4, r5, r4
	ldrb r0, [r4]
	add r0, r0, r1
	ldrb r1, [r0]
	add r0, r5, #0
	bl sub_080E2720
	ldr r1, _080E3D90  @ =gUnknown_081771C8
	ldrb r0, [r4]
	add r0, r0, r1
	ldrb r1, [r0]
	add r0, r5, #0
	bl sub_080E22D0
	ldr r1, _080E3D94  @ =gUnknown_081771C0
	ldrb r0, [r4]
	add r0, r0, r1
	ldrb r1, [r0]
	add r0, r5, #0
	bl sub_080E3BF0
	add r0, r5, #0
	bl sub_080E2684
_080E3D7A:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E3D84:
	.4byte gUnknown_081771C4
_080E3D88:
	.4byte gRam
_080E3D8C:
	.4byte 0x00000FB2
_080E3D90:
	.4byte gUnknown_081771C8
_080E3D94:
	.4byte gUnknown_081771C0
	THUMB_FUNC_END sub_080E3D28

	THUMB_FUNC_START sub_080E3D98
sub_080E3D98: @ 0x080E3D98
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r4, r0, #0
	ldr r0, _080E3DE8  @ =gRam
	ldr r2, _080E3DEC  @ =0x00000F92
	add r1, r0, r2
	add r3, r4, r1
	ldrb r6, [r3]
	ldr r7, _080E3DF0  @ =0x00000FB2
	add r1, r0, r7
	add r2, r4, r1
	ldrb r1, [r2]
	add r5, r1, #0
	add r7, r7, #32
	add r0, r0, r7
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E3DD0
	ldr r0, _080E3DF4  @ =gUnknown_08176908
	add r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, _080E3DF8  @ =gUnknown_0817690C
	add r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r3]
_080E3DD0:
	add r0, r4, #0
	bl sub_080E3D28
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_080E3538
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E3DE8:
	.4byte gRam
_080E3DEC:
	.4byte 0x00000F92
_080E3DF0:
	.4byte 0x00000FB2
_080E3DF4:
	.4byte gUnknown_08176908
_080E3DF8:
	.4byte gUnknown_0817690C
	THUMB_FUNC_END sub_080E3D98

	THUMB_FUNC_START sub_080E3DFC
sub_080E3DFC: @ 0x080E3DFC
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080E2614
	add r0, r4, #0
	bl sub_080C2FA8
	ldr r2, _080E3E30  @ =gRam
	ldr r3, _080E3E34  @ =0x00001082
	add r1, r2, r3
	add r1, r4, r1
	strb r0, [r1]
	ldr r0, _080E3E38  @ =0x00000FC2
	add r2, r2, r0
	add r2, r4, r2
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E3E2A
	add r0, r4, #0
	bl sub_080E3E3C
_080E3E2A:
	pop {r4}
	pop {r0}
	bx r0
_080E3E30:
	.4byte gRam
_080E3E34:
	.4byte 0x00001082
_080E3E38:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E3DFC

	THUMB_FUNC_START sub_080E3E3C
sub_080E3E3C: @ 0x080E3E3C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080E3E68  @ =gRam
	ldr r2, _080E3E6C  @ =0x00000F52
	add r1, r3, r2
	add r1, r0, r1
	mov r4, #0
	mov r2, #4
	strb r2, [r1]
	ldr r2, _080E3E70  @ =0x00000FC2
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #60
	strb r2, [r1]
	ldr r1, _080E3E74  @ =0x00001052
	add r3, r3, r1
	add r0, r0, r3
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
_080E3E68:
	.4byte gRam
_080E3E6C:
	.4byte 0x00000F52
_080E3E70:
	.4byte 0x00000FC2
_080E3E74:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080E3E3C

	THUMB_FUNC_START sub_080E3E78
sub_080E3E78: @ 0x080E3E78
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, sp
	add r1, r4, #0
	bl sub_080C4948
	ldr r6, _080E3EB4  @ =gRam
	ldr r1, _080E3EB8  @ =0x00000FC2
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080E3EC4
	cmp r0, #32
	bne _080E3EA0
	add r0, r4, #0
	bl sub_080E3EFC
_080E3EA0:
	ldr r2, _080E3EBC  @ =0x00000F92
	add r1, r6, r2
	add r1, r4, r1
	ldr r2, _080E3EC0  @ =gUnknown_08177300
	ldrb r0, [r5]
	lsr r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	b _080E3EE8
	.byte 0x00
	.byte 0x00
_080E3EB4:
	.4byte gRam
_080E3EB8:
	.4byte 0x00000FC2
_080E3EBC:
	.4byte 0x00000F92
_080E3EC0:
	.4byte gUnknown_08177300
_080E3EC4:
	ldr r0, _080E3EF4  @ =0x00000F52
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #48
	strb r0, [r5]
	add r0, r4, #0
	bl sub_080C2FA8
	ldr r2, _080E3EF8  @ =0x00000FB2
	add r1, r6, r2
	add r1, r4, r1
	strb r0, [r1]
	add r2, r2, #208
	add r1, r6, r2
	add r1, r4, r1
_080E3EE8:
	strb r0, [r1]
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E3EF4:
	.4byte 0x00000F52
_080E3EF8:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080E3E78

	THUMB_FUNC_START sub_080E3EFC
sub_080E3EFC: @ 0x080E3EFC
	push {r4,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #236
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080E3F44
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r2, _080E3F4C  @ =gRam
	ldr r1, _080E3F50  @ =0x00000FA2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #6
	strb r1, [r0]
	ldr r1, _080E3F54  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #32
	strb r1, [r0]
	ldr r0, _080E3F58  @ =0x00001012
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #3
	strb r0, [r1]
	ldr r1, _080E3F5C  @ =0x00000F82
	add r2, r2, r1
	add r2, r4, r2
	mov r0, #2
	strb r0, [r2]
_080E3F44:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E3F4C:
	.4byte gRam
_080E3F50:
	.4byte 0x00000FA2
_080E3F54:
	.4byte 0x00000FC2
_080E3F58:
	.4byte 0x00001012
_080E3F5C:
	.4byte 0x00000F82
	THUMB_FUNC_END sub_080E3EFC

	THUMB_FUNC_START sub_080E3F60
sub_080E3F60: @ 0x080E3F60
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080E3FDC  @ =gRam
	ldr r1, _080E3FE0  @ =0x00001172
	add r0, r6, r1
	add r0, r4, r0
	mov r7, #0
	strb r7, [r0]
	add r0, r4, #0
	bl sub_080C5044
	ldr r1, _080E3FE4  @ =0x00000FC2
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080E3FF8
	sub r1, r1, #96
	add r0, r6, r1
	add r1, r4, r0
	strb r7, [r1]
	ldrb r0, [r5]
	cmp r0, #39
	bhi _080E3F96
	sub r0, r7, #1
	strb r0, [r1]
_080E3F96:
	ldrb r0, [r5]
	cmp r0, #16
	bne _080E3FA2
	add r0, r4, #0
	bl sub_080E3A94
_080E3FA2:
	ldr r1, _080E3FE8  @ =0x00000FB2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #3
	ldrb r1, [r5]
	lsr r1, r1, #3
	orr r0, r0, r1
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080E3FEC  @ =0x00000FF2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #73
	bne _080E3FCA
	add r0, r2, #0
	add r0, r0, #32
	lsl r0, r0, #24
	lsr r2, r0, #24
_080E3FCA:
	ldr r1, _080E3FF0  @ =0x00000F92
	add r0, r6, r1
	add r0, r4, r0
	ldr r1, _080E3FF4  @ =gUnknown_0817710C
	add r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r0]
	b _080E400E
	.byte 0x00
	.byte 0x00
_080E3FDC:
	.4byte gRam
_080E3FE0:
	.4byte 0x00001172
_080E3FE4:
	.4byte 0x00000FC2
_080E3FE8:
	.4byte 0x00000FB2
_080E3FEC:
	.4byte 0x00000FF2
_080E3FF0:
	.4byte 0x00000F92
_080E3FF4:
	.4byte gUnknown_0817710C
_080E3FF8:
	ldr r1, _080E4014  @ =0x00000F52
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #48
	strb r0, [r5]
	add r0, r4, #0
	bl sub_080E41E8
_080E400E:
	pop {r4-r7}
	pop {r0}
	bx r0
_080E4014:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E3F60

	THUMB_FUNC_START sub_080E4018
sub_080E4018: @ 0x080E4018
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E40D8
	ldr r2, _080E40E8  @ =gRam
	ldr r1, _080E40EC  @ =0x00000F92
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r3, _080E40F0  @ =0x0000096C
	add r1, r2, r3
	strb r0, [r1]
	mov r3, #1
	mov r8, r2
	add r7, sp, #4
	mov r10, r7
	ldr r0, _080E40F4  @ =0x00000964
	add r0, r0, r8
	mov r9, r0
_080E405A:
	ldr r0, _080E40F0  @ =0x0000096C
	add r0, r0, r8
	ldrb r0, [r0]
	lsl r1, r3, #24
	asr r6, r1, #24
	add r0, r6, r0
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r5, r0, #0
	ldr r0, _080E40F8  @ =gUnknown_0817735A
	add r0, r5, r0
	ldrb r1, [r0]
	mov r0, #32
	add r4, r0, #0
	orr r4, r4, r1
	cmp r6, #0
	bne _080E4088
	mov r0, #241
	and r4, r4, r0
	ldr r0, _080E40FC  @ =0x00000969
	add r0, r0, r8
	ldrb r0, [r0]
	orr r4, r4, r0
_080E4088:
	ldr r0, _080E4100  @ =gUnknown_03003E74
	mov r2, r10
	ldrb r1, [r2]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #150
	lsl r1, r1, #4
	add r1, r1, r8
	ldrh r1, [r1]
	ldr r3, _080E4104  @ =gUnknown_08177330
	lsl r2, r5, #1
	add r2, r2, r3
	ldrh r2, [r2]
	mov r3, r9
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E4108  @ =gUnknown_0817734C
	add r3, r5, r3
	ldrb r3, [r3]
	lsl r4, r4, #8
	add r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r4, #2
	str r4, [sp]
	bl sub_080C6368
	sub r1, r6, #1
	lsl r1, r1, #24
	mov r7, r10
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	lsr r3, r1, #24
	cmp r1, #0
	bge _080E405A
_080E40D8:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080E40E8:
	.4byte gRam
_080E40EC:
	.4byte 0x00000F92
_080E40F0:
	.4byte 0x0000096C
_080E40F4:
	.4byte 0x00000964
_080E40F8:
	.4byte gUnknown_0817735A
_080E40FC:
	.4byte 0x00000969
_080E4100:
	.4byte gUnknown_03003E74
_080E4104:
	.4byte gUnknown_08177330
_080E4108:
	.4byte gUnknown_0817734C
	THUMB_FUNC_END sub_080E4018

	THUMB_FUNC_START sub_080E410C
sub_080E410C: @ 0x080E410C
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E25A8
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E410C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E411C
sub_080E411C: @ 0x080E411C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r1, _080E4144  @ =gRam
	ldr r2, _080E4148  @ =0x00000F52
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E4152
	add r2, r2, #64
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #13
	bhi _080E414C
	add r0, r4, #0
	bl sub_080E4018
	b _080E4152
_080E4144:
	.4byte gRam
_080E4148:
	.4byte 0x00000F52
_080E414C:
	add r0, r4, #0
	bl sub_080E4240
_080E4152:
	add r0, r4, #0
	bl sub_080E4160
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E411C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E4160
sub_080E4160: @ 0x080E4160
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E41A8
	ldr r2, _080E4198  @ =gRam
	ldr r1, _080E419C  @ =0x00001172
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	ldr r1, _080E41A0  @ =gUnknown_081772F0
	ldr r0, _080E41A4  @ =0x00000F52
	add r2, r2, r0
	add r2, r4, r2
	ldrb r0, [r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	mov r0, #0
	b _080E41AA
_080E4198:
	.4byte gRam
_080E419C:
	.4byte 0x00001172
_080E41A0:
	.4byte gUnknown_081772F0
_080E41A4:
	.4byte 0x00000F52
_080E41A8:
	mov r0, #1
_080E41AA:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080E4160

	THUMB_FUNC_START sub_080E41B0
sub_080E41B0: @ 0x080E41B0
	push {r4,lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r3, _080E41DC  @ =gRam
	ldr r2, _080E41E0  @ =0x00000FC2
	add r0, r3, r2
	add r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E41D4
	ldr r4, _080E41E4  @ =0x00000F52
	add r0, r3, r4
	add r0, r1, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #64
	strb r0, [r2]
_080E41D4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E41DC:
	.4byte gRam
_080E41E0:
	.4byte 0x00000FC2
_080E41E4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E41B0

	THUMB_FUNC_START sub_080E41E8
sub_080E41E8: @ 0x080E41E8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C5044
	ldr r1, _080E4218  @ =gRam
	ldr r2, _080E421C  @ =0x00000FC2
	add r0, r1, r2
	add r3, r4, r0
	ldrb r0, [r3]
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	beq _080E4228
	ldr r5, _080E4220  @ =0x00000F92
	add r1, r1, r5
	add r1, r4, r1
	ldr r2, _080E4224  @ =gUnknown_08177320
	lsr r0, r0, #26
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	b _080E4234
_080E4218:
	.4byte gRam
_080E421C:
	.4byte 0x00000FC2
_080E4220:
	.4byte 0x00000F92
_080E4224:
	.4byte gUnknown_08177320
_080E4228:
	ldr r5, _080E423C  @ =0x00000F52
	add r0, r1, r5
	add r0, r4, r0
	strb r2, [r0]
	mov r0, #64
	strb r0, [r3]
_080E4234:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E423C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E41E8

	THUMB_FUNC_START sub_080E4240
sub_080E4240: @ 0x080E4240
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E3D28
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E4240

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E4250
sub_080E4250: @ 0x080E4250
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E25A8
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E4250

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E4260
sub_080E4260: @ 0x080E4260
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r4, r0, #0
	ldr r0, _080E42B0  @ =gRam
	ldr r2, _080E42B4  @ =0x00000F92
	add r1, r0, r2
	add r3, r4, r1
	ldrb r6, [r3]
	ldr r7, _080E42B8  @ =0x00000FB2
	add r1, r0, r7
	add r2, r4, r1
	ldrb r1, [r2]
	add r5, r1, #0
	add r7, r7, #32
	add r0, r0, r7
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E4298
	ldr r0, _080E42BC  @ =gUnknown_08176908
	add r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, _080E42C0  @ =gUnknown_08177368
	add r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r3]
_080E4298:
	add r0, r4, #0
	bl sub_080E42EC
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_080E3538
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E42B0:
	.4byte gRam
_080E42B4:
	.4byte 0x00000F92
_080E42B8:
	.4byte 0x00000FB2
_080E42BC:
	.4byte gUnknown_08176908
_080E42C0:
	.4byte gUnknown_08177368
	THUMB_FUNC_END sub_080E4260

	THUMB_FUNC_START sub_080E42C4
sub_080E42C4: @ 0x080E42C4
	push {lr}
	add r2, r1, #0
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r1, _080E42E4  @ =gRam
	ldr r3, _080E42E8  @ =0x00000F62
	add r1, r1, r3
	add r1, r0, r1
	ldrb r1, [r1]
	bl sub_080E2A88
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E42E4:
	.4byte gRam
_080E42E8:
	.4byte 0x00000F62
	THUMB_FUNC_END sub_080E42C4

	THUMB_FUNC_START sub_080E42EC
sub_080E42EC: @ 0x080E42EC
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E4332
	add r0, r4, #0
	mov r1, #12
	bl sub_080E33BC
	add r0, r4, #0
	mov r1, #8
	bl sub_080E3024
	ldr r0, _080E433C  @ =gRam
	ldr r1, _080E4340  @ =0x00000F92
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #19
	bhi _080E432C
	add r0, r4, #0
	bl sub_080E4344
_080E432C:
	add r0, r5, #0
	bl sub_080E2684
_080E4332:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E433C:
	.4byte gRam
_080E4340:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080E42EC

	THUMB_FUNC_START sub_080E4344
sub_080E4344: @ 0x080E4344
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #0
	bl sub_080E42C4
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E4344

	THUMB_FUNC_START sub_080E4354
sub_080E4354: @ 0x080E4354
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	lsl r0, r0, #24
	lsr r7, r0, #24
	str r7, [sp, #4]
	ldr r5, _080E4414  @ =gRam
	ldr r1, _080E4418  @ =0x00000F92
	add r0, r5, r1
	add r0, r0, r7
	mov r10, r0
	ldrb r0, [r0]
	str r0, [sp, #8]
	mov r0, #0
	mov r1, r10
	strb r0, [r1]
	ldr r0, _080E441C  @ =0x00001122
	add r2, r5, r0
	add r2, r7, r2
	ldrb r1, [r2]
	mov r9, r1
	mov r0, #241
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r2]
	ldr r0, _080E4420  @ =0x00001624
	add r6, r5, r0
	ldrb r4, [r6]
	ldr r1, _080E4424  @ =0x00001625
	add r5, r5, r1
	ldrb r0, [r5]
	lsl r0, r0, #8
	add r4, r4, r0
	lsl r4, r4, #16
	lsr r0, r4, #16
	mov r8, r0
	add r0, r0, #8
	strb r0, [r6]
	asr r0, r0, #8
	strb r0, [r5]
	add r0, r7, #0
	str r2, [sp, #12]
	bl sub_080C6240
	mov r1, r8
	strb r1, [r6]
	lsr r4, r4, #24
	strb r4, [r5]
	ldr r2, [sp, #12]
	mov r0, r9
	strb r0, [r2]
	mov r1, sp
	ldrb r0, [r1, #8]
	mov r1, r10
	strb r0, [r1]
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r7, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E4402
	add r0, r7, #0
	mov r1, #16
	bl sub_080E2720
	add r0, r7, #0
	mov r1, #12
	bl sub_080E3024
	mov r1, r10
	ldrb r0, [r1]
	cmp r0, #19
	bhi _080E43FC
	add r0, r7, #0
	mov r1, #4
	bl sub_080E42C4
_080E43FC:
	ldr r0, [sp, #4]
	bl sub_080E2684
_080E4402:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E4414:
	.4byte gRam
_080E4418:
	.4byte 0x00000F92
_080E441C:
	.4byte 0x00001122
_080E4420:
	.4byte 0x00001624
_080E4424:
	.4byte 0x00001625
	THUMB_FUNC_END sub_080E4354

	THUMB_FUNC_START sub_080E4428
sub_080E4428: @ 0x080E4428
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E25A8
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E4428

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E4438
sub_080E4438: @ 0x080E4438
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _080E4458  @ =gRam
	ldr r1, _080E445C  @ =0x00000F52
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E4466
	cmp r0, #2
	beq _080E4460
	add r0, r4, #0
	bl sub_080E4018
	b _080E4466
_080E4458:
	.4byte gRam
_080E445C:
	.4byte 0x00000F52
_080E4460:
	add r0, r4, #0
	bl sub_080E4354
_080E4466:
	add r0, r4, #0
	bl sub_080E4160
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E4438

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E4474
sub_080E4474: @ 0x080E4474
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080E44AC  @ =gRam
	ldr r1, _080E44B0  @ =0x00000F82
	add r0, r5, r1
	add r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #1
	bls _080E453C
	add r0, r4, #0
	bl sub_080E4B00
	ldr r2, _080E44B4  @ =0x00000FD2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r0]
	cmp r1, #0
	bne _080E44B8
	sub r2, r2, #48
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	b _080E468E
	.byte 0x00
	.byte 0x00
_080E44AC:
	.4byte gRam
_080E44B0:
	.4byte 0x00000F82
_080E44B4:
	.4byte 0x00000FD2
_080E44B8:
	add r0, r4, #0
	bl Sprite3_CheckIfActive_Permissive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E44C6
	b _080E468E
_080E44C6:
	ldrb r0, [r6]
	cmp r0, #2
	beq _080E44CE
	b _080E468E
_080E44CE:
	mov r2, #15
	add r6, r5, #0
	ldr r0, _080E452C  @ =0x000010C2
	add r7, r6, r0
_080E44D6:
	ldr r1, _080E4530  @ =0x000015DC
	add r0, r6, r1
	ldrb r1, [r0]
	lsl r0, r2, #24
	asr r2, r0, #24
	add r5, r0, #0
	cmp r1, r2
	beq _080E4512
	ldr r1, _080E4534  @ =0x00000FA2
	add r0, r6, r1
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #8
	bls _080E4512
	ldr r1, _080E4538  @ =0x00000996
	add r0, r6, r1
	ldrb r0, [r0]
	eor r0, r0, r2
	mov r1, #7
	and r0, r0, r1
	add r1, r2, r7
	ldrb r1, [r1]
	orr r0, r0, r1
	cmp r0, #0
	bne _080E4512
	lsr r1, r5, #24
	add r0, r4, #0
	mov r2, #8
	bl sub_080E46C8
_080E4512:
	mov r2, #255
	lsl r2, r2, #24
	add r0, r5, r2
	lsr r2, r0, #24
	cmp r0, #0
	bge _080E44D6
	add r0, r4, #0
	bl sub_080C4F98
	add r0, r4, #0
	bl sub_0808EEE4
	b _080E468E
_080E452C:
	.4byte 0x000010C2
_080E4530:
	.4byte 0x000015DC
_080E4534:
	.4byte 0x00000FA2
_080E4538:
	.4byte 0x00000996
_080E453C:
	mov r6, #0
	mov r8, r6
	mov r7, #0
	ldr r1, _080E4594  @ =0x00001062
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E455C
	ldr r2, _080E4598  @ =0x00000D94
	add r0, r5, r2
	add r0, r4, r0
	ldrb r2, [r0]
	mov r1, #48
	orr r1, r1, r2
	strb r1, [r0]
_080E455C:
	add r0, r4, #0
	bl sub_080C6240
	ldr r1, _080E459C  @ =0x00000F92
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #1
	bne _080E4576
	ldr r0, _080E45A0  @ =gUnknown_03003E74
	ldrh r0, [r0]
	bl sub_08115AD0
_080E4576:
	ldr r2, _080E45A4  @ =0x000010C2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E45BC
	ldr r1, _080E45A8  @ =0x00000FD2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #63
	bls _080E45AC
	mov r7, #1
	b _080E45B8
	.byte 0x00
	.byte 0x00
_080E4594:
	.4byte 0x00001062
_080E4598:
	.4byte 0x00000D94
_080E459C:
	.4byte 0x00000F92
_080E45A0:
	.4byte gUnknown_03003E74
_080E45A4:
	.4byte 0x000010C2
_080E45A8:
	.4byte 0x00000FD2
_080E45AC:
	cmp r0, #1
	beq _080E45B6
	mov r2, #1
	mov r8, r2
	b _080E45B8
_080E45B6:
	mov r6, #1
_080E45B8:
	cmp r6, #0
	beq _080E4620
_080E45BC:
	ldr r5, _080E469C  @ =gRam
	ldr r1, _080E46A0  @ =0x000010C2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	ldr r2, _080E46A4  @ =0x00000FA2
	add r0, r5, r2
	add r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #10
	bne _080E45E0
	ldr r2, _080E46A8  @ =0x00001792
	add r0, r5, r2
	strb r1, [r0]
	sub r2, r2, #1
	add r0, r5, r2
	strb r1, [r0]
_080E45E0:
	add r0, r4, #0
	mov r1, #41
	bl sub_080CF0AC
	ldr r0, _080E46AC  @ =0x00000F82
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080E46B0  @ =0x00001132
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #9
	strb r1, [r0]
	ldr r2, _080E46B4  @ =0x00001122
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	ldr r1, _080E46B8  @ =0x00000FD2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #31
	strb r1, [r0]
	mov r0, #6
	strb r0, [r6]
	ldr r2, _080E46BC  @ =0x00001012
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
_080E4620:
	mov r0, r8
	cmp r0, #0
	beq _080E4648
	ldr r0, _080E469C  @ =gRam
	ldr r1, _080E46B4  @ =0x00001122
	add r3, r0, r1
	add r3, r4, r3
	ldrb r1, [r3]
	mov r2, #241
	and r2, r2, r1
	ldr r1, _080E46B8  @ =0x00000FD2
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #1
	mov r1, #14
	and r0, r0, r1
	orr r2, r2, r0
	strb r2, [r3]
	mov r7, #1
_080E4648:
	cmp r7, #0
	beq _080E468E
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E468E
	ldr r5, _080E469C  @ =gRam
	ldr r2, _080E46C0  @ =0x000010B2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E466E
	mov r0, sp
	add r1, r4, #0
	bl sub_080C4948
_080E466E:
	add r0, r4, #0
	bl Sprite3_Move
	ldr r1, _080E46C4  @ =0x000009B2
	add r0, r5, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080E4688
	add r0, r4, #0
	bl sub_080C79F8
_080E4688:
	add r0, r4, #0
	bl sub_080C8168
_080E468E:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E469C:
	.4byte gRam
_080E46A0:
	.4byte 0x000010C2
_080E46A4:
	.4byte 0x00000FA2
_080E46A8:
	.4byte 0x00001792
_080E46AC:
	.4byte 0x00000F82
_080E46B0:
	.4byte 0x00001132
_080E46B4:
	.4byte 0x00001122
_080E46B8:
	.4byte 0x00000FD2
_080E46BC:
	.4byte 0x00001012
_080E46C0:
	.4byte 0x000010B2
_080E46C4:
	.4byte 0x000009B2
	THUMB_FUNC_END sub_080E4474

	THUMB_FUNC_START sub_080E46C8
sub_080E46C8: @ 0x080E46C8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r6, r0, #24
	lsl r1, r1, #24
	lsr r5, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	str r2, [sp]
	ldr r4, _080E47F4  @ =gRam
	ldr r0, _080E47F8  @ =gUnknown_03003112
	add r0, r6, r0
	str r0, [sp, #4]
	ldrb r1, [r0]
	ldr r2, _080E47FC  @ =gUnknown_03003132
	add r2, r2, r6
	mov r10, r2
	ldrb r0, [r2]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r1, r1, #16
	ldr r3, _080E4800  @ =gUnknown_03003102
	add r3, r3, r6
	mov r8, r3
	ldrb r2, [r3]
	ldr r0, _080E4804  @ =gUnknown_03003122
	add r7, r6, r0
	ldrb r0, [r7]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r2, r2, #16
	ldr r3, _080E4808  @ =gUnknown_03002B90
	strb r1, [r3]
	lsr r1, r1, #8
	mov r3, #151
	lsl r3, r3, #4
	add r0, r4, r3
	strb r1, [r0]
	mov r0, #48
	ldr r1, _080E480C  @ =gUnknown_03002B94
	strb r0, [r1]
	ldr r3, _080E4810  @ =gUnknown_03002B95
	strb r0, [r3]
	ldr r0, _080E4814  @ =0x00000961
	add r0, r0, r4
	mov r9, r0
	strb r2, [r0]
	lsr r2, r2, #8
	ldr r1, _080E4818  @ =0x00000971
	add r0, r4, r1
	strb r2, [r0]
	add r0, r5, #0
	bl sub_080C4574
	bl sub_080C466C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E47E4
	ldr r2, _080E481C  @ =0x00000FF2
	add r0, r4, r2
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #17
	beq _080E47E4
	add r0, r5, #0
	ldr r1, [sp]
	bl sub_080C3FCC
	ldr r3, [sp, #4]
	ldrb r0, [r3]
	ldr r1, _080E4808  @ =gUnknown_03002B90
	strb r0, [r1]
	mov r2, r10
	ldrb r0, [r2]
	mov r3, r9
	strb r0, [r3]
	mov r0, r8
	ldrb r1, [r0]
	ldrb r0, [r7]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _080E4820  @ =0x00001142
	add r2, r4, r3
	add r0, r6, r2
	ldrb r0, [r0]
	sub r1, r1, r0
	ldr r0, _080E480C  @ =gUnknown_03002B94
	strb r1, [r0]
	lsr r1, r1, #8
	ldr r3, _080E4810  @ =gUnknown_03002B95
	strb r1, [r3]
	ldr r1, _080E47F8  @ =gUnknown_03003112
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r3, _080E4824  @ =0x00000968
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080E47FC  @ =gUnknown_03003132
	add r0, r5, r1
	ldrb r1, [r0]
	add r3, r3, #1
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080E4800  @ =gUnknown_03003102
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r3, _080E4804  @ =gUnknown_03003122
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r2, r5, r2
	ldrb r0, [r2]
	sub r1, r1, r0
	ldr r2, _080E4828  @ =0x0000096C
	add r0, r4, r2
	strb r1, [r0]
	lsr r1, r1, #8
	ldr r3, _080E482C  @ =0x0000096D
	add r0, r4, r3
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #32
	bl sub_080C2DCC
	ldr r1, _080E4830  @ =0x00001102
	add r0, r4, r1
	add r0, r5, r0
	ldr r2, _080E4808  @ =gUnknown_03002B90
	ldrb r1, [r2]
	strb r1, [r0]
	ldr r3, _080E4834  @ =0x00001112
	add r0, r4, r3
	add r0, r5, r0
	mov r2, r9
	ldrb r1, [r2]
	strb r1, [r0]
_080E47E4:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080E47F4:
	.4byte gRam
_080E47F8:
	.4byte gUnknown_03003112
_080E47FC:
	.4byte gUnknown_03003132
_080E4800:
	.4byte gUnknown_03003102
_080E4804:
	.4byte gUnknown_03003122
_080E4808:
	.4byte gUnknown_03002B90
_080E480C:
	.4byte gUnknown_03002B94
_080E4810:
	.4byte gUnknown_03002B95
_080E4814:
	.4byte 0x00000961
_080E4818:
	.4byte 0x00000971
_080E481C:
	.4byte 0x00000FF2
_080E4820:
	.4byte 0x00001142
_080E4824:
	.4byte 0x00000968
_080E4828:
	.4byte 0x0000096C
_080E482C:
	.4byte 0x0000096D
_080E4830:
	.4byte 0x00001102
_080E4834:
	.4byte 0x00001112
	THUMB_FUNC_END sub_080E46C8

	THUMB_FUNC_START sub_080E4838
sub_080E4838: @ 0x080E4838
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl sub_080E4C34
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #0
	bne _080E4904
	add r0, r4, #0
	bl sub_080C5044
	add r0, r4, #0
	bl sub_080C2FA8
	ldr r6, _080E48CC  @ =gRam
	ldr r2, _080E48D0  @ =0x00000FB2
	add r1, r6, r2
	add r1, r1, r4
	mov r8, r1
	strb r0, [r1]
	add r2, r2, #208
	add r1, r6, r2
	add r1, r4, r1
	strb r0, [r1]
	ldr r1, _080E48D4  @ =0x00000F52
	add r0, r6, r1
	add r3, r4, r0
	ldrb r2, [r3]
	cmp r2, #0
	beq _080E48F0
	ldr r2, _080E48D8  @ =0x00000FC2
	add r0, r6, r2
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080E48E8
	ldr r1, _080E48DC  @ =0x00001052
	add r0, r6, r1
	add r1, r4, r0
	strb r7, [r1]
	ldrb r0, [r5]
	cmp r0, #79
	bls _080E48A2
	mov r0, #1
	strb r0, [r1]
_080E48A2:
	ldrb r0, [r5]
	cmp r0, #32
	bne _080E48AE
	add r0, r4, #0
	bl sub_080E4914
_080E48AE:
	ldrb r1, [r5]
	lsr r1, r1, #4
	ldr r0, _080E48E0  @ =0x00000F92
	add r2, r6, r0
	add r2, r4, r2
	ldr r3, _080E48E4  @ =gUnknown_0817710C
	mov r4, r8
	ldrb r0, [r4]
	lsl r0, r0, #3
	orr r0, r0, r1
	add r0, r0, #32
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	b _080E4904
_080E48CC:
	.4byte gRam
_080E48D0:
	.4byte 0x00000FB2
_080E48D4:
	.4byte 0x00000F52
_080E48D8:
	.4byte 0x00000FC2
_080E48DC:
	.4byte 0x00001052
_080E48E0:
	.4byte 0x00000F92
_080E48E4:
	.4byte gUnknown_0817710C
_080E48E8:
	strb r0, [r3]
	mov r0, #32
	strb r0, [r5]
	b _080E4904
_080E48F0:
	ldr r1, _080E4910  @ =0x00000FC2
	add r0, r6, r1
	add r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080E4904
	add r0, r2, #1
	strb r0, [r3]
	mov r0, #112
	strb r0, [r1]
_080E4904:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E4910:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E4838

	THUMB_FUNC_START sub_080E4914
sub_080E4914: @ 0x080E4914
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	mov r0, #74
	add r1, r4, #0
	bl sub_080CA538
	add r5, r0, #0
	cmp r5, #0
	blt _080E4A22
	ldr r6, _080E4A2C  @ =gRam
	ldr r1, _080E4A30  @ =0x00000FB2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r3, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r1, r6, r2
	ldr r0, _080E4A34  @ =gUnknown_0817736C
	add r0, r3, r0
	ldrb r0, [r0]
	ldrh r2, [r1]
	add r2, r2, r0
	ldr r0, _080E4A38  @ =gUnknown_08177370
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r0, _080E4A3C  @ =0x00000964
	add r1, r6, r0
	ldr r0, _080E4A40  @ =gUnknown_08177374
	add r0, r3, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080E4A44  @ =gUnknown_08177378
	add r3, r3, r0
	ldrb r0, [r3]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _080E4A48  @ =0x00000EE2
	add r0, r6, r3
	add r0, r5, r0
	strb r2, [r0]
	add r3, r3, #32
	add r0, r6, r3
	add r0, r5, r0
	lsr r2, r2, #8
	strb r2, [r0]
	ldr r2, _080E4A4C  @ =0x00000ED2
	add r0, r6, r2
	add r0, r5, r0
	strb r1, [r0]
	sub r3, r3, #16
	add r0, r6, r3
	add r0, r5, r0
	lsr r1, r1, #8
	strb r1, [r0]
	lsl r4, r5, #24
	lsr r4, r4, #24
	add r0, r4, #0
	mov r1, #16
	bl sub_080C35FC
	ldr r1, _080E4A50  @ =0x00000F82
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C2FA8
	ldr r2, _080E4A54  @ =0x0000097D
	add r1, r6, r2
	mov r0, #0
	ldrsb r0, [r1, r0]
	mov r2, #128
	and r0, r0, r2
	cmp r0, #0
	beq _080E49BC
	ldrb r0, [r1]
	neg r0, r0
	strb r0, [r1]
_080E49BC:
	ldr r3, _080E4A58  @ =0x0000097C
	add r4, r6, r3
	mov r0, #0
	ldrsb r0, [r4, r0]
	and r0, r0, r2
	cmp r0, #0
	beq _080E49D0
	ldrb r0, [r4]
	neg r0, r0
	strb r0, [r4]
_080E49D0:
	ldr r0, _080E4A5C  @ =0x00001152
	add r2, r6, r0
	add r2, r5, r2
	ldr r3, _080E4A60  @ =gUnknown_0817737C
	ldrb r0, [r4]
	ldrb r1, [r1]
	orr r0, r0, r1
	lsl r0, r0, #24
	asr r0, r0, #28
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r1, _080E4A64  @ =0x00001032
	add r2, r6, r1
	add r2, r5, r2
	ldrb r1, [r2]
	mov r0, #238
	and r0, r0, r1
	mov r1, #24
	orr r0, r0, r1
	strb r0, [r2]
	ldr r2, _080E4A68  @ =0x00001122
	add r0, r6, r2
	add r0, r5, r0
	mov r1, #8
	strb r1, [r0]
	ldr r3, _080E4A6C  @ =0x00000FD2
	add r0, r6, r3
	add r0, r5, r0
	mov r1, #255
	strb r1, [r0]
	ldr r1, _080E4A70  @ =0x00001022
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #1
	neg r1, r1
	strb r1, [r0]
	add r0, r7, #0
	mov r1, #11
	bl sub_080CF140
_080E4A22:
	add r0, r5, #0
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080E4A2C:
	.4byte gRam
_080E4A30:
	.4byte 0x00000FB2
_080E4A34:
	.4byte gUnknown_0817736C
_080E4A38:
	.4byte gUnknown_08177370
_080E4A3C:
	.4byte 0x00000964
_080E4A40:
	.4byte gUnknown_08177374
_080E4A44:
	.4byte gUnknown_08177378
_080E4A48:
	.4byte 0x00000EE2
_080E4A4C:
	.4byte 0x00000ED2
_080E4A50:
	.4byte 0x00000F82
_080E4A54:
	.4byte 0x0000097D
_080E4A58:
	.4byte 0x0000097C
_080E4A5C:
	.4byte 0x00001152
_080E4A60:
	.4byte gUnknown_0817737C
_080E4A64:
	.4byte 0x00001032
_080E4A68:
	.4byte 0x00001122
_080E4A6C:
	.4byte 0x00000FD2
_080E4A70:
	.4byte 0x00001022
	THUMB_FUNC_END sub_080E4914

	THUMB_FUNC_START sub_080E4A74
sub_080E4A74: @ 0x080E4A74
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _080E4AE4  @ =gRam
	ldr r2, _080E4AE8  @ =0x00000FB2
	add r1, r4, r2
	add r1, r0, r1
	ldrb r3, [r1]
	lsl r3, r3, #1
	add r2, r2, #160
	add r1, r4, r2
	add r0, r0, r1
	ldrb r0, [r0]
	orr r3, r3, r0
	lsl r3, r3, #24
	ldr r0, _080E4AEC  @ =gUnknown_03003E74
	ldrh r0, [r0]
	mov r1, #150
	lsl r1, r1, #4
	add r2, r4, r1
	ldr r1, _080E4AF0  @ =gUnknown_0817738C
	lsr r3, r3, #23
	add r1, r3, r1
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080E4AF4  @ =0x00000964
	add r5, r4, r2
	ldr r2, _080E4AF8  @ =gUnknown_0817739C
	add r3, r3, r2
	ldrh r2, [r3]
	ldrh r5, [r5]
	add r2, r2, r5
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E4AFC  @ =0x00000969
	add r4, r4, r3
	ldrb r4, [r4]
	mov r3, #48
	and r3, r3, r4
	mov r4, #8
	orr r3, r3, r4
	lsl r3, r3, #8
	mov r4, #206
	orr r3, r3, r4
	mov r4, #2
	str r4, [sp]
	bl sub_080C6368
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080E4AE4:
	.4byte gRam
_080E4AE8:
	.4byte 0x00000FB2
_080E4AEC:
	.4byte gUnknown_03003E74
_080E4AF0:
	.4byte gUnknown_0817738C
_080E4AF4:
	.4byte 0x00000964
_080E4AF8:
	.4byte gUnknown_0817739C
_080E4AFC:
	.4byte 0x00000969
	THUMB_FUNC_END sub_080E4A74

	THUMB_FUNC_START sub_080E4B00
sub_080E4B00: @ 0x080E4B00
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r10
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E4BCA
	ldr r1, _080E4BDC  @ =gRam
	ldr r2, _080E4BE0  @ =0x00000FD2
	add r0, r1, r2
	add r0, r0, r10
	ldrb r0, [r0]
	lsr r0, r0, #1
	str r0, [sp, #8]
	mov r0, #12
	ldr r7, [sp, #8]
	and r7, r7, r0
	str r7, [sp, #8]
	mov r0, #3
	mov r8, r0
	add r6, sp, #4
	mov r9, r1
_080E4B42:
	ldr r5, [sp, #8]
	add r5, r5, r8
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r0, _080E4BE4  @ =gUnknown_03003E74
	ldrb r1, [r6]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r9
	ldr r1, _080E4BE8  @ =gUnknown_081773AC
	add r1, r5, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, _080E4BEC  @ =0x00000964
	add r3, r3, r9
	ldr r2, _080E4BF0  @ =gUnknown_081773BC
	add r2, r5, r2
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E4BF4  @ =gUnknown_081773CC
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080E4BF8  @ =gUnknown_081773DC
	add r5, r5, r4
	ldrb r4, [r5]
	ldr r7, _080E4BFC  @ =gUnknown_03002B99
	mov r5, #0
	ldrsb r5, [r7, r5]
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r4, #2
	str r4, [sp]
	bl sub_080C6004
	mov r0, r8
	lsl r1, r0, #24
	mov r2, #255
	lsl r2, r2, #24
	add r1, r1, r2
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	lsr r7, r1, #24
	mov r8, r7
	cmp r1, #0
	bge _080E4B42
	mov r0, r10
	mov r1, #2
	mov r2, #3
	bl sub_080C6350
_080E4BCA:
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
_080E4BDC:
	.4byte gRam
_080E4BE0:
	.4byte 0x00000FD2
_080E4BE4:
	.4byte gUnknown_03003E74
_080E4BE8:
	.4byte gUnknown_081773AC
_080E4BEC:
	.4byte 0x00000964
_080E4BF0:
	.4byte gUnknown_081773BC
_080E4BF4:
	.4byte gUnknown_081773CC
_080E4BF8:
	.4byte gUnknown_081773DC
_080E4BFC:
	.4byte gUnknown_03002B99
	THUMB_FUNC_END sub_080E4B00

	THUMB_FUNC_START sub_080E4C00
sub_080E4C00: @ 0x080E4C00
	bx lr
	THUMB_FUNC_END sub_080E4C00

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E4C04
sub_080E4C04: @ 0x080E4C04
	push {lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r0, _080E4C20  @ =gRam
	ldr r2, _080E4C24  @ =0x00000F82
	add r0, r0, r2
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E4C28
	add r0, r1, #0
	bl sub_080E4474
	b _080E4C2E
_080E4C20:
	.4byte gRam
_080E4C24:
	.4byte 0x00000F82
_080E4C28:
	add r0, r1, #0
	bl sub_080E4838
_080E4C2E:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E4C04

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E4C34
sub_080E4C34: @ 0x080E4C34
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E4C7C
	add r0, r4, #0
	mov r1, #8
	bl sub_080E33BC
	add r0, r4, #0
	mov r1, #4
	bl sub_080E3024
	ldr r0, _080E4C84  @ =gRam
	ldr r1, _080E4C88  @ =0x00000F92
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #19
	bhi _080E4C74
	add r0, r4, #0
	bl sub_080E4A74
_080E4C74:
	add r0, r5, #0
	mov r1, #10
	bl sub_080C57F8
_080E4C7C:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080E4C84:
	.4byte gRam
_080E4C88:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080E4C34

	THUMB_FUNC_START sub_080E4C8C
sub_080E4C8C: @ 0x080E4C8C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	ldr r6, _080E4D08  @ =gRam
	ldr r0, _080E4D0C  @ =0x00000F92
	add r2, r6, r0
	add r2, r4, r2
	ldr r3, _080E4D10  @ =gUnknown_081773EC
	ldr r1, _080E4D14  @ =0x00001052
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #25
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r5, _080E4D18  @ =0x00000FB2
	add r1, r6, r5
	add r1, r4, r1
	ldrb r1, [r1]
	add r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	add r0, r4, #0
	bl sub_080E4EA8
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E4D44
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E4D44
	add r0, r4, #0
	bl sub_080C5044
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C79F8
	ldr r1, _080E4D1C  @ =0x00000F52
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080E4D20
	add r0, r4, #0
	bl sub_080E4DF0
	b _080E4D44
	.byte 0x00
	.byte 0x00
_080E4D08:
	.4byte gRam
_080E4D0C:
	.4byte 0x00000F92
_080E4D10:
	.4byte gUnknown_081773EC
_080E4D14:
	.4byte 0x00001052
_080E4D18:
	.4byte 0x00000FB2
_080E4D1C:
	.4byte 0x00000F52
_080E4D20:
	ldr r1, _080E4D4C  @ =0x00000FC2
	add r0, r6, r1
	add r4, r7, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E4D44
	bl GetRandomInt
	mov r1, #63
	and r1, r1, r0
	add r1, r1, #48
	strb r1, [r4]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	add r0, r7, #0
	bl sub_080E4D50
_080E4D44:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E4D4C:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E4C8C

	THUMB_FUNC_START sub_080E4D50
sub_080E4D50: @ 0x080E4D50
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080E4DCC  @ =gRam
	ldr r0, _080E4DD0  @ =0x00000FB2
	add r4, r6, r0
	add r4, r5, r4
	ldr r1, _080E4DD4  @ =0x00001082
	add r0, r6, r1
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r4]
	add r0, r5, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r3, [r4]
	cmp r0, r3
	bne _080E4DA8
	ldr r1, _080E4DD8  @ =0x0000097C
	add r0, r6, r1
	ldrb r0, [r0]
	add r0, r0, #16
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #31
	bls _080E4D98
	add r1, r1, #1
	add r0, r6, r1
	ldrb r0, [r0]
	add r0, r0, #16
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #31
	bhi _080E4DA8
_080E4D98:
	add r0, r3, #4
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r1, _080E4DDC  @ =0x00000FC2
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #128
	strb r1, [r0]
_080E4DA8:
	ldr r2, _080E4DCC  @ =gRam
	ldr r0, _080E4DE0  @ =0x00000F22
	add r1, r2, r0
	add r1, r5, r1
	ldr r0, _080E4DE4  @ =gUnknown_081773F4
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E4DE8  @ =0x00000F12
	add r2, r2, r1
	add r2, r5, r2
	ldr r0, _080E4DEC  @ =gUnknown_081773FC
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r2]
	pop {r4-r6}
	pop {r0}
	bx r0
_080E4DCC:
	.4byte gRam
_080E4DD0:
	.4byte 0x00000FB2
_080E4DD4:
	.4byte 0x00001082
_080E4DD8:
	.4byte 0x0000097C
_080E4DDC:
	.4byte 0x00000FC2
_080E4DE0:
	.4byte 0x00000F22
_080E4DE4:
	.4byte gUnknown_081773F4
_080E4DE8:
	.4byte 0x00000F12
_080E4DEC:
	.4byte gUnknown_081773FC
	THUMB_FUNC_END sub_080E4D50

	THUMB_FUNC_START sub_080E4DF0
sub_080E4DF0: @ 0x080E4DF0
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r2, #16
	ldr r1, _080E4E84  @ =gRam
	ldr r3, _080E4E88  @ =0x00001042
	add r0, r1, r3
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E4E14
	ldr r2, _080E4E8C  @ =0x00000FC2
	add r0, r1, r2
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E4E56
	mov r2, #48
_080E4E14:
	mov r0, #1
	cmp r0, #0
	beq _080E4E56
	ldr r4, _080E4E84  @ =gRam
	ldr r3, _080E4E8C  @ =0x00000FC2
	add r0, r4, r3
	add r0, r7, r0
	mov r6, #0
	strb r2, [r0]
	add r0, r7, #0
	bl sub_080E2614
	bl GetRandomInt
	ldr r1, _080E4E90  @ =0x00001082
	add r3, r4, r1
	add r3, r7, r3
	ldr r5, _080E4E94  @ =gUnknown_08178400
	ldr r2, _080E4E98  @ =0x00000FB2
	add r1, r4, r2
	add r1, r7, r1
	ldrb r1, [r1]
	lsl r1, r1, #1
	mov r2, #1
	and r2, r2, r0
	orr r1, r1, r2
	add r1, r1, r5
	ldrb r0, [r1]
	strb r0, [r3]
	ldr r3, _080E4E9C  @ =0x00000F52
	add r4, r4, r3
	add r4, r7, r4
	strb r6, [r4]
_080E4E56:
	ldr r2, _080E4E84  @ =gRam
	ldr r1, _080E4EA0  @ =0x00000FD2
	add r0, r2, r1
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E4E70
	ldr r3, _080E4EA4  @ =0x00001052
	add r1, r2, r3
	add r1, r7, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080E4E70:
	ldr r0, _080E4EA4  @ =0x00001052
	add r1, r2, r0
	add r1, r7, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E4E84:
	.4byte gRam
_080E4E88:
	.4byte 0x00001042
_080E4E8C:
	.4byte 0x00000FC2
_080E4E90:
	.4byte 0x00001082
_080E4E94:
	.4byte gUnknown_08178400
_080E4E98:
	.4byte 0x00000FB2
_080E4E9C:
	.4byte 0x00000F52
_080E4EA0:
	.4byte 0x00000FD2
_080E4EA4:
	.4byte 0x00001052
	THUMB_FUNC_END sub_080E4DF0

	THUMB_FUNC_START sub_080E4EA8
sub_080E4EA8: @ 0x080E4EA8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	add r2, r7, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E4F78
	ldr r0, _080E4F88  @ =gUnknown_03003E74
	mov r10, r0
	add r0, sp, #4
	ldrb r1, [r0]
	mov r2, r10
	ldrh r0, [r2]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r6, _080E4F8C  @ =gRam
	ldr r3, _080E4F90  @ =gUnknown_03002B90
	ldrh r1, [r3]
	ldr r4, _080E4F94  @ =gUnknown_03002B94
	ldrh r2, [r4]
	sub r2, r2, #11
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r5, _080E4F98  @ =gUnknown_08176958
	ldr r4, _080E4F9C  @ =0x00001082
	add r3, r6, r4
	add r3, r7, r3
	ldrb r4, [r3]
	add r5, r4, r5
	ldrb r3, [r5]
	ldr r5, _080E4FA0  @ =gUnknown_0817695C
	add r4, r4, r5
	ldrb r4, [r4]
	ldr r5, _080E4FA4  @ =0x00000969
	add r5, r5, r6
	mov r9, r5
	ldrb r5, [r5]
	lsl r5, r5, #24
	asr r5, r5, #24
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r4, #2
	mov r8, r4
	str r4, [sp]
	bl sub_080C6368
	add r0, sp, #4
	ldrb r1, [r0]
	mov r5, r10
	ldrh r0, [r5]
	add r0, r0, r1
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r2, _080E4FA8  @ =gUnknown_08177404
	ldr r1, _080E4FAC  @ =0x00000F92
	add r6, r6, r1
	add r6, r7, r6
	ldrb r5, [r6]
	lsl r1, r5, #1
	add r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _080E4F90  @ =gUnknown_03002B90
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, _080E4F94  @ =gUnknown_03002B94
	ldrh r2, [r3]
	ldr r3, _080E4FB0  @ =gUnknown_08177414
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080E4FB4  @ =gUnknown_0817741C
	add r5, r5, r4
	ldrb r4, [r5]
	mov r6, r9
	mov r5, #0
	ldrsb r5, [r6, r5]
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r4, r8
	str r4, [sp]
	bl sub_080C6368
	add r0, r7, #0
	bl sub_080C6230
_080E4F78:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080E4F88:
	.4byte gUnknown_03003E74
_080E4F8C:
	.4byte gRam
_080E4F90:
	.4byte gUnknown_03002B90
_080E4F94:
	.4byte gUnknown_03002B94
_080E4F98:
	.4byte gUnknown_08176958
_080E4F9C:
	.4byte 0x00001082
_080E4FA0:
	.4byte gUnknown_0817695C
_080E4FA4:
	.4byte 0x00000969
_080E4FA8:
	.4byte gUnknown_08177404
_080E4FAC:
	.4byte 0x00000F92
_080E4FB0:
	.4byte gUnknown_08177414
_080E4FB4:
	.4byte gUnknown_0817741C
	THUMB_FUNC_END sub_080E4EA8

	THUMB_FUNC_START sub_080E4FB8
sub_080E4FB8: @ 0x080E4FB8
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	bl GetRandomInt
	ldr r3, _080E4FEC  @ =gRam
	ldr r2, _080E4FF0  @ =0x00000FB2
	add r1, r3, r2
	add r1, r4, r1
	mov r2, #3
	and r2, r2, r0
	strb r2, [r1]
	ldr r1, _080E4FF4  @ =0x00001082
	add r0, r3, r1
	add r0, r4, r0
	strb r2, [r0]
	ldr r2, _080E4FF8  @ =0x00000FC2
	add r3, r3, r2
	add r4, r4, r3
	mov r0, #16
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E4FEC:
	.4byte gRam
_080E4FF0:
	.4byte 0x00000FB2
_080E4FF4:
	.4byte 0x00001082
_080E4FF8:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E4FB8

	THUMB_FUNC_START sub_080E4FFC
sub_080E4FFC: @ 0x080E4FFC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080E51B0
	add r0, r4, #0
	bl Sprite3_CheckIfActive_Permissive
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #0
	beq _080E501C
	b _080E51A4
_080E501C:
	ldr r6, _080E50AC  @ =gRam
	ldr r1, _080E50B0  @ =0x00000FA2
	add r0, r6, r1
	add r0, r0, r4
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #9
	beq _080E50D0
	ldr r2, _080E50B4  @ =0x00000F52
	add r0, r6, r2
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E5060
	add r0, r4, #0
	bl sub_080C50E4
	ldr r1, _080E50B8  @ =0x00001152
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #24
	strb r1, [r0]
	ldr r2, _080E50BC  @ =0x00000FC2
	add r0, r6, r2
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldr r1, _080E50C0  @ =0x000010C2
	add r0, r6, r1
	add r0, r4, r0
	strb r7, [r0]
_080E5060:
	ldr r0, _080E50C4  @ =0x00000FB2
	add r2, r6, r0
	add r2, r4, r2
	ldr r3, _080E50C8  @ =gUnknown_08177424
	ldr r1, _080E50BC  @ =0x00000FC2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	lsr r0, r0, #3
	mov r1, #3
	and r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	add r0, r4, #0
	bl sub_080C2C4C
	add r0, r4, #0
	bl Sprite3_Move
	ldr r2, _080E50B8  @ =0x00001152
	add r1, r6, r2
	add r1, r4, r1
	ldrb r0, [r1]
	sub r0, r0, #2
	strb r0, [r1]
	ldr r1, _080E50CC  @ =0x00001142
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	blt _080E50A6
	b _080E51A4
_080E50A6:
	mov r2, r8
	strb r7, [r2]
	b _080E51A4
_080E50AC:
	.4byte gRam
_080E50B0:
	.4byte 0x00000FA2
_080E50B4:
	.4byte 0x00000F52
_080E50B8:
	.4byte 0x00001152
_080E50BC:
	.4byte 0x00000FC2
_080E50C0:
	.4byte 0x000010C2
_080E50C4:
	.4byte 0x00000FB2
_080E50C8:
	.4byte gUnknown_08177424
_080E50CC:
	.4byte 0x00001142
_080E50D0:
	ldr r1, _080E5120  @ =0x00000FC2
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E5138
	add r0, r4, #0
	bl sub_080C500C
	ldr r2, _080E5124  @ =0x00001062
	add r0, r6, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E5180
	add r0, r4, #0
	bl sub_080C6F48
	ldr r1, _080E5128  @ =0x00001042
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E5180
	ldr r2, _080E512C  @ =0x00000F62
	add r0, r6, r2
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080E5130
	mov r0, #48
	strb r0, [r5]
	mov r0, #2
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #28
	bl sub_080CF0AC
	b _080E51A4
	.byte 0x00
	.byte 0x00
_080E5120:
	.4byte 0x00000FC2
_080E5124:
	.4byte 0x00001062
_080E5128:
	.4byte 0x00001042
_080E512C:
	.4byte 0x00000F62
_080E5130:
	add r0, r4, #0
	bl sub_080C4F18
	b _080E51A4
_080E5138:
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _080E51A0
	cmp r1, #31
	bls _080E51A4
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080E51A4
	ldr r1, _080E5188  @ =0x00000996
	add r0, r6, r1
	ldrb r1, [r0]
	lsl r1, r1, #1
	mov r0, #4
	and r1, r1, r0
	ldr r2, _080E518C  @ =0x00000FB2
	add r0, r6, r2
	add r0, r4, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	ldr r0, _080E5190  @ =0x00000F22
	add r2, r6, r0
	add r2, r4, r2
	ldr r0, _080E5194  @ =gUnknown_08177428
	add r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, _080E5198  @ =0x00000F12
	add r2, r6, r0
	add r2, r4, r2
	ldr r0, _080E519C  @ =gUnknown_08177430
	add r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
_080E5180:
	add r0, r4, #0
	bl Sprite3_Move
	b _080E51A4
_080E5188:
	.4byte 0x00000996
_080E518C:
	.4byte 0x00000FB2
_080E5190:
	.4byte 0x00000F22
_080E5194:
	.4byte gUnknown_08177428
_080E5198:
	.4byte 0x00000F12
_080E519C:
	.4byte gUnknown_08177430
_080E51A0:
	mov r2, r8
	strb r1, [r2]
_080E51A4:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E4FFC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E51B0
sub_080E51B0: @ 0x080E51B0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	add r2, r5, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E528A
	ldr r2, _080E5298  @ =gRam
	ldr r1, _080E529C  @ =0x00000FB2
	add r0, r2, r1
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r3, _080E52A0  @ =0x0000096C
	add r1, r2, r3
	strb r0, [r1]
	ldr r1, _080E52A4  @ =0x00000F62
	add r0, r2, r1
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r3, r3, #1
	add r1, r2, r3
	strb r0, [r1]
	mov r1, #1
	add r7, r2, #0
	add r5, sp, #4
	mov r8, r5
	ldr r0, _080E52A8  @ =0x00000969
	add r0, r0, r7
	mov r9, r0
_080E5200:
	ldr r2, _080E52A0  @ =0x0000096C
	add r0, r7, r2
	ldrb r3, [r0]
	lsl r6, r1, #24
	asr r6, r6, #24
	add r3, r6, r3
	lsl r3, r3, #24
	lsr r3, r3, #24
	ldr r5, _080E52AC  @ =0x0000096D
	add r0, r7, r5
	ldrb r5, [r0]
	add r5, r3, r5
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r0, _080E52B0  @ =gUnknown_03003E74
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #150
	lsl r1, r1, #4
	add r2, r7, r1
	ldr r1, _080E52B4  @ =gUnknown_08177438
	lsl r3, r3, #1
	add r1, r3, r1
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080E52B8  @ =0x00000964
	add r4, r7, r2
	ldr r2, _080E52BC  @ =gUnknown_08177448
	add r3, r3, r2
	ldrh r2, [r3]
	ldrh r4, [r4]
	add r2, r2, r4
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E52C0  @ =gUnknown_08177458
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080E52C4  @ =gUnknown_08177478
	add r5, r5, r4
	ldrb r4, [r5]
	mov r5, r9
	ldrb r5, [r5]
	lsl r5, r5, #24
	asr r5, r5, #24
	orr r4, r4, r5
	lsl r4, r4, #8
	add r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r4, #0
	str r4, [sp]
	bl sub_080C6368
	sub r6, r6, #1
	lsl r6, r6, #24
	mov r1, r8
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsr r1, r6, #24
	cmp r6, #0
	bge _080E5200
_080E528A:
	add sp, sp, #8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080E5298:
	.4byte gRam
_080E529C:
	.4byte 0x00000FB2
_080E52A0:
	.4byte 0x0000096C
_080E52A4:
	.4byte 0x00000F62
_080E52A8:
	.4byte 0x00000969
_080E52AC:
	.4byte 0x0000096D
_080E52B0:
	.4byte gUnknown_03003E74
_080E52B4:
	.4byte gUnknown_08177438
_080E52B8:
	.4byte 0x00000964
_080E52BC:
	.4byte gUnknown_08177448
_080E52C0:
	.4byte gUnknown_08177458
_080E52C4:
	.4byte gUnknown_08177478
	THUMB_FUNC_END sub_080E51B0

	THUMB_FUNC_START sub_080E52C8
sub_080E52C8: @ 0x080E52C8
	bx lr
	THUMB_FUNC_END sub_080E52C8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E52CC
sub_080E52CC: @ 0x080E52CC
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	add r0, r6, #0
	bl sub_080C36D8
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _080E5358  @ =gRam
	ldr r0, _080E535C  @ =0x000016C4
	add r3, r5, r0
	ldr r2, _080E5360  @ =0x00001622
	add r0, r5, r2
	ldrb r2, [r0]
	ldr r4, _080E5364  @ =0x00001623
	add r0, r5, r4
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	ldrh r4, [r3]
	sub r4, r4, r2
	lsl r4, r4, #16
	lsr r4, r4, #16
	add r0, r6, #0
	bl sub_080E5698
	add r4, r4, #80
	lsl r4, r4, #16
	lsr r4, r4, #16
	cmp r4, #159
	bhi _080E5352
	mov r0, #182
	lsl r0, r0, #5
	add r2, r5, r0
	ldr r1, _080E5368  @ =0x00001624
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r3, _080E536C  @ =0x00001625
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrh r0, [r2]
	sub r0, r0, r1
	lsl r0, r0, #16
	mov r4, #176
	lsl r4, r4, #15
	add r0, r0, r4
	lsr r0, r0, #16
	cmp r0, #159
	bhi _080E5352
	ldr r0, _080E5370  @ =0x00000F52
	add r1, r5, r0
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080E5374  @ =0x00000FC2
	add r0, r5, r1
	add r0, r6, r0
	mov r1, #24
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #100
	bl sub_080CF140
_080E5352:
	pop {r4-r6}
	pop {r0}
	bx r0
_080E5358:
	.4byte gRam
_080E535C:
	.4byte 0x000016C4
_080E5360:
	.4byte 0x00001622
_080E5364:
	.4byte 0x00001623
_080E5368:
	.4byte 0x00001624
_080E536C:
	.4byte 0x00001625
_080E5370:
	.4byte 0x00000F52
_080E5374:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E52CC

	THUMB_FUNC_START sub_080E5378
sub_080E5378: @ 0x080E5378
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r5, r2, #0
	ldr r4, _080E53DC  @ =gRam
	ldr r1, _080E53E0  @ =0x00000FC2
	add r0, r4, r1
	add r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _080E53B2
	ldr r6, _080E53E4  @ =0x00000F52
	add r1, r4, r6
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080E53E8  @ =gUnknown_081774B0
	add r6, r6, #16
	add r0, r4, r6
	add r0, r2, r0
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	add r0, r2, #0
	mov r1, #32
	bl sub_080C35FC
_080E53B2:
	ldr r0, _080E53EC  @ =0x00001142
	add r1, r4, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080E53F0  @ =0x00000F92
	add r2, r4, r1
	add r2, r5, r2
	ldr r6, _080E53F4  @ =0x00000996
	add r0, r4, r6
	ldrb r0, [r0]
	lsr r0, r0, #1
	mov r1, #1
	and r0, r0, r1
	add r0, r0, #1
	strb r0, [r2]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E53DC:
	.4byte gRam
_080E53E0:
	.4byte 0x00000FC2
_080E53E4:
	.4byte 0x00000F52
_080E53E8:
	.4byte gUnknown_081774B0
_080E53EC:
	.4byte 0x00001142
_080E53F0:
	.4byte 0x00000F92
_080E53F4:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080E5378

	THUMB_FUNC_START sub_080E53F8
sub_080E53F8: @ 0x080E53F8
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r1, _080E5458  @ =gRam
	ldr r2, _080E545C  @ =0x00000FC2
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	add r2, r1, #0
	cmp r0, #0
	bne _080E5430
	ldr r1, _080E5460  @ =0x0000164C
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E5424
	ldr r1, _080E5464  @ =0x00000F62
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E5430
_080E5424:
	ldr r0, _080E5468  @ =0x00000F52
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080E5430:
	ldr r1, _080E546C  @ =0x00000996
	add r0, r2, r1
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080E5450
	add r0, r4, #0
	mov r1, #32
	bl sub_080C2CB4
	add r0, r4, #0
	bl sub_080E5470
_080E5450:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E5458:
	.4byte gRam
_080E545C:
	.4byte 0x00000FC2
_080E5460:
	.4byte 0x0000164C
_080E5464:
	.4byte 0x00000F62
_080E5468:
	.4byte 0x00000F52
_080E546C:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080E53F8

	THUMB_FUNC_START sub_080E5470
sub_080E5470: @ 0x080E5470
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r2, _080E54B0  @ =gRam
	ldr r1, _080E54B4  @ =0x00000F12
	add r0, r2, r1
	add r4, r5, r0
	mov r7, #150
	lsl r7, r7, #4
	add r0, r2, r7
	ldrb r3, [r4]
	ldrb r0, [r0]
	sub r0, r3, r0
	lsl r0, r0, #24
	lsr r6, r0, #24
	add r1, r1, #16
	add r0, r2, r1
	add r0, r5, r0
	add r7, r7, #1
	add r1, r2, r7
	ldrb r0, [r0]
	ldrb r1, [r1]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r6, #0
	beq _080E54BC
	lsl r0, r6, #24
	cmp r0, #0
	blt _080E54B8
	sub r0, r3, #1
	b _080E54BA
_080E54B0:
	.4byte gRam
_080E54B4:
	.4byte 0x00000F12
_080E54B8:
	add r0, r3, #1
_080E54BA:
	strb r0, [r4]
_080E54BC:
	cmp r1, #0
	beq _080E54E4
	lsl r0, r1, #24
	cmp r0, #0
	blt _080E54D8
	ldr r0, _080E54D4  @ =0x00000F22
	add r1, r2, r0
	add r1, r5, r1
	ldrb r0, [r1]
	sub r0, r0, #1
	b _080E54E2
	.byte 0x00
	.byte 0x00
_080E54D4:
	.4byte 0x00000F22
_080E54D8:
	ldr r7, _080E54F0  @ =0x00000F22
	add r1, r2, r7
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
_080E54E2:
	strb r0, [r1]
_080E54E4:
	add r0, r5, #0
	bl sub_080E5654
	pop {r4-r7}
	pop {r0}
	bx r0
_080E54F0:
	.4byte 0x00000F22
	THUMB_FUNC_END sub_080E5470

	THUMB_FUNC_START sub_080E54F4
sub_080E54F4: @ 0x080E54F4
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080E5530  @ =gRam
	ldr r1, _080E5534  @ =0x00000996
	add r0, r5, r1
	ldrb r2, [r0]
	add r0, r4, #0
	eor r0, r0, r2
	mov r3, #1
	and r0, r0, r3
	cmp r0, #0
	beq _080E5540
	ldr r0, _080E5538  @ =0x00000F92
	add r1, r5, r0
	add r1, r4, r1
	lsr r0, r2, #1
	and r0, r0, r3
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080E553C  @ =0x00000F22
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsr r1, r1, #7
	add r0, r4, #0
	bl sub_080E5698
	b _080E5564
	.byte 0x00
	.byte 0x00
_080E5530:
	.4byte gRam
_080E5534:
	.4byte 0x00000996
_080E5538:
	.4byte 0x00000F92
_080E553C:
	.4byte 0x00000F22
_080E5540:
	add r0, r4, #0
	mov r1, #48
	bl sub_080C2CB4
	mov r0, #150
	lsl r0, r0, #4
	add r1, r5, r0
	ldrb r0, [r1]
	neg r0, r0
	strb r0, [r1]
	ldr r0, _080E556C  @ =0x00000961
	add r1, r5, r0
	ldrb r0, [r1]
	neg r0, r0
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080E5470
_080E5564:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E556C:
	.4byte 0x00000961
	THUMB_FUNC_END sub_080E54F4

	THUMB_FUNC_START sub_080E5570
sub_080E5570: @ 0x080E5570
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080E55B8  @ =gRam
	ldr r1, _080E55BC  @ =0x00000EA5
	add r2, r3, r1
	add r2, r0, r2
	ldr r4, _080E55C0  @ =gUnknown_08177498
	ldr r1, _080E55C4  @ =0x0000164C
	add r5, r3, r1
	ldrb r1, [r5]
	add r1, r1, r4
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r1, _080E55C8  @ =0x00001022
	add r2, r3, r1
	add r2, r0, r2
	ldr r4, _080E55CC  @ =gUnknown_0817749A
	ldrb r1, [r5]
	add r1, r1, r4
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r1, _080E55D0  @ =0x000011B2
	add r3, r3, r1
	add r3, r0, r3
	ldr r2, _080E55D4  @ =gUnknown_0817749C
	ldrb r1, [r5]
	add r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r3]
	bl sub_080E57FC
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E55B8:
	.4byte gRam
_080E55BC:
	.4byte 0x00000EA5
_080E55C0:
	.4byte gUnknown_08177498
_080E55C4:
	.4byte 0x0000164C
_080E55C8:
	.4byte 0x00001022
_080E55CC:
	.4byte gUnknown_0817749A
_080E55D0:
	.4byte 0x000011B2
_080E55D4:
	.4byte gUnknown_0817749C
	THUMB_FUNC_END sub_080E5570

	THUMB_FUNC_START sub_080E55D8
sub_080E55D8: @ 0x080E55D8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E55E8
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E55D8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E55E8
sub_080E55E8: @ 0x080E55E8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080E5644  @ =gRam
	ldr r0, _080E5648  @ =0x00000D94
	add r1, r5, r0
	add r1, r4, r1
	ldrb r2, [r1]
	mov r0, #48
	orr r0, r0, r2
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080C6240
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E563E
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E563E
	add r0, r4, #0
	bl sub_080C5044
	add r0, r4, #0
	bl Sprite3_Move
	ldr r1, _080E564C  @ =gUnknown_081774A0
	ldr r2, _080E5650  @ =0x00000F52
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080E563E:
	pop {r4,r5}
	pop {r0}
	bx r0
_080E5644:
	.4byte gRam
_080E5648:
	.4byte 0x00000D94
_080E564C:
	.4byte gUnknown_081774A0
_080E5650:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E55E8

	THUMB_FUNC_START sub_080E5654
sub_080E5654: @ 0x080E5654
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080E5688  @ =gRam
	ldr r1, _080E568C  @ =0x00000F92
	add r4, r2, r1
	add r4, r0, r4
	ldr r3, _080E5690  @ =0x00000996
	add r1, r2, r3
	ldrb r1, [r1]
	lsr r1, r1, #1
	mov r3, #1
	and r1, r1, r3
	add r1, r1, #1
	strb r1, [r4]
	ldr r1, _080E5694  @ =0x00000F22
	add r2, r2, r1
	add r2, r0, r2
	ldrb r1, [r2]
	lsr r1, r1, #7
	bl sub_080E5698
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E5688:
	.4byte gRam
_080E568C:
	.4byte 0x00000F92
_080E5690:
	.4byte 0x00000996
_080E5694:
	.4byte 0x00000F22
	THUMB_FUNC_END sub_080E5654

	THUMB_FUNC_START sub_080E5698
sub_080E5698: @ 0x080E5698
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _080E56BC  @ =gRam
	ldr r3, _080E56C0  @ =0x00001122
	add r2, r2, r3
	add r0, r0, r2
	ldrb r3, [r0]
	mov r2, #191
	and r2, r2, r3
	ldr r3, _080E56C4  @ =gUnknown_081774B2
	add r1, r1, r3
	ldrb r1, [r1]
	orr r2, r2, r1
	strb r2, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080E56BC:
	.4byte gRam
_080E56C0:
	.4byte 0x00001122
_080E56C4:
	.4byte gUnknown_081774B2
	THUMB_FUNC_END sub_080E5698

	THUMB_FUNC_START sub_080E56C8
sub_080E56C8: @ 0x080E56C8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080E5708  @ =gRam
	ldr r0, _080E570C  @ =0x00001052
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #160
	bne _080E5702
	ldr r0, _080E5710  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #100
	bl sub_080CF140
	ldr r1, _080E5714  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #16
	strb r1, [r0]
_080E5702:
	pop {r4,r5}
	pop {r0}
	bx r0
_080E5708:
	.4byte gRam
_080E570C:
	.4byte 0x00001052
_080E5710:
	.4byte 0x00000F52
_080E5714:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E56C8

	THUMB_FUNC_START sub_080E5718
sub_080E5718: @ 0x080E5718
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080E5754  @ =gRam
	ldr r0, _080E5758  @ =0x00000F92
	add r2, r5, r0
	add r2, r4, r2
	ldr r3, _080E575C  @ =gUnknown_081774BC
	ldr r1, _080E5760  @ =0x00000996
	add r6, r5, r1
	ldrb r0, [r6]
	lsr r0, r0, #1
	mov r1, #3
	and r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r2, _080E5764  @ =0x00000FC2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E576C
	ldr r7, _080E5768  @ =0x00001142
	add r1, r5, r7
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080E57E4
_080E5754:
	.4byte gRam
_080E5758:
	.4byte 0x00000F92
_080E575C:
	.4byte gUnknown_081774BC
_080E5760:
	.4byte 0x00000996
_080E5764:
	.4byte 0x00000FC2
_080E5768:
	.4byte 0x00001142
_080E576C:
	ldrb r0, [r6]
	add r1, r4, #0
	eor r1, r1, r0
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	bne _080E57E4
	mov r1, #15
	and r1, r1, r4
	add r1, r1, #24
	add r0, r4, #0
	bl sub_080C2CB4
	ldr r1, _080E57EC  @ =0x00000F22
	add r0, r5, r1
	add r3, r4, r0
	mov r2, #150
	lsl r2, r2, #4
	add r1, r5, r2
	ldrb r0, [r1]
	neg r0, r0
	strb r0, [r3]
	ldr r7, _080E57F0  @ =0x00000F12
	add r0, r5, r7
	add r2, r4, r0
	ldr r0, _080E57F4  @ =0x00000961
	add r6, r5, r0
	ldrb r4, [r6]
	strb r4, [r2]
	ldr r7, _080E57F8  @ =0x0000097C
	add r0, r5, r7
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, #40
	cmp r0, #79
	bgt _080E57C6
	add r7, r7, #1
	add r0, r5, r7
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, #40
	cmp r0, #79
	ble _080E57E4
_080E57C6:
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsr r1, r0, #31
	add r0, r0, r1
	asr r0, r0, #1
	add r0, r4, r0
	strb r0, [r2]
	mov r0, #0
	ldrsb r0, [r6, r0]
	lsr r1, r0, #31
	add r0, r0, r1
	asr r0, r0, #1
	ldrb r1, [r3]
	add r0, r0, r1
	strb r0, [r3]
_080E57E4:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E57EC:
	.4byte 0x00000F22
_080E57F0:
	.4byte 0x00000F12
_080E57F4:
	.4byte 0x00000961
_080E57F8:
	.4byte 0x0000097C
	THUMB_FUNC_END sub_080E5718

	THUMB_FUNC_START sub_080E57FC
sub_080E57FC: @ 0x080E57FC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080E5830  @ =gRam
	ldr r3, _080E5834  @ =0x00001142
	add r2, r1, r3
	add r2, r0, r2
	mov r3, #0
	strb r3, [r2]
	ldr r2, _080E5838  @ =0x00000F62
	add r3, r1, r2
	add r3, r0, r3
	sub r2, r2, #128
	add r1, r1, r2
	add r1, r0, r1
	ldrb r2, [r1]
	mov r1, #16
	and r1, r1, r2
	lsl r1, r1, #24
	lsr r1, r1, #28
	strb r1, [r3]
	bl sub_080C3774
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E5830:
	.4byte gRam
_080E5834:
	.4byte 0x00001142
_080E5838:
	.4byte 0x00000F62
	THUMB_FUNC_END sub_080E57FC

	THUMB_FUNC_START sub_080E583C
sub_080E583C: @ 0x080E583C
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E584C
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E583C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E584C
sub_080E584C: @ 0x080E584C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080E58A8  @ =gRam
	ldr r0, _080E58AC  @ =0x00000D94
	add r1, r5, r0
	add r1, r4, r1
	ldrb r2, [r1]
	mov r0, #48
	orr r0, r0, r2
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080E58B8
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E58A2
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E58A2
	add r0, r4, #0
	bl sub_080C5044
	add r0, r4, #0
	bl Sprite3_Move
	ldr r1, _080E58B0  @ =gUnknown_081774B4
	ldr r2, _080E58B4  @ =0x00000F52
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080E58A2:
	pop {r4,r5}
	pop {r0}
	bx r0
_080E58A8:
	.4byte gRam
_080E58AC:
	.4byte 0x00000D94
_080E58B0:
	.4byte gUnknown_081774B4
_080E58B4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E584C

	THUMB_FUNC_START sub_080E58B8
sub_080E58B8: @ 0x080E58B8
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r0, _080E58E4  @ =gRam
	ldr r1, _080E58E8  @ =0x00000F92
	add r0, r0, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldr r0, _080E58EC  @ =gUnknown_081774C0
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #2
	bl sub_080C9480
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
_080E58E4:
	.4byte gRam
_080E58E8:
	.4byte 0x00000F92
_080E58EC:
	.4byte gUnknown_081774C0
	THUMB_FUNC_END sub_080E58B8

	THUMB_FUNC_START sub_080E58F0
sub_080E58F0: @ 0x080E58F0
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	ldr r6, _080E5950  @ =gRam
	ldr r1, _080E5954  @ =0x00000FA2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #6
	beq _080E5960
	add r0, r4, #0
	bl sub_080C6240
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E5986
	add r0, r4, #0
	bl sub_080C4F98
	add r0, r4, #0
	bl Sprite3_Move
	ldr r1, _080E5958  @ =0x00000996
	add r0, r6, r1
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080E5986
	add r0, r4, #0
	bl sub_080C6F48
	ldr r1, _080E595C  @ =0x00001042
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E5986
	add r0, r4, #0
	bl sub_080E5B38
	b _080E5986
_080E5950:
	.4byte gRam
_080E5954:
	.4byte 0x00000FA2
_080E5958:
	.4byte 0x00000996
_080E595C:
	.4byte 0x00001042
_080E5960:
	add r0, r5, #0
	bl sub_080E5990
	add r0, r5, #0
	bl Sprite3_CheckIfActive_Permissive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E5986
	ldr r1, _080E598C  @ =0x00000FC2
	add r0, r6, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #30
	bne _080E5986
	add r0, r5, #0
	mov r1, #109
	bl sub_080CF0AC
_080E5986:
	pop {r4-r6}
	pop {r0}
	bx r0
_080E598C:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E58F0

	THUMB_FUNC_START sub_080E5990
sub_080E5990: @ 0x080E5990
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E5A34
	mov r7, #3
	ldr r2, _080E5A44  @ =gRam
	ldr r1, _080E5A48  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsr r1, r1, #1
	mov r0, #12
	bic r0, r0, r1
	add r0, r0, #3
	add r5, r0, #0
	add r6, sp, #4
	mov r8, r2
	ldr r3, _080E5A4C  @ =0x00000964
	add r3, r3, r8
	mov r9, r3
_080E59D0:
	ldr r0, _080E5A50  @ =gUnknown_03003E74
	ldrb r1, [r6]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r8
	ldr r1, _080E5A54  @ =gUnknown_08177500
	lsl r3, r5, #1
	add r1, r3, r1
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080E5A58  @ =gUnknown_08177520
	add r3, r3, r2
	ldrh r2, [r3]
	mov r4, r9
	ldrh r4, [r4]
	add r2, r2, r4
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E5A5C  @ =gUnknown_08177540
	add r3, r5, r3
	ldrb r3, [r3]
	lsl r3, r3, #24
	mov r4, #246
	lsl r4, r4, #17
	add r3, r3, r4
	lsr r3, r3, #16
	mov r4, #0
	str r4, [sp]
	bl sub_080C6368
	lsl r1, r7, #24
	mov r0, #255
	lsl r0, r0, #24
	add r1, r1, r0
	sub r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	lsr r7, r1, #24
	cmp r1, #0
	bge _080E59D0
_080E5A34:
	add sp, sp, #8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E5A44:
	.4byte gRam
_080E5A48:
	.4byte 0x00000FC2
_080E5A4C:
	.4byte 0x00000964
_080E5A50:
	.4byte gUnknown_03003E74
_080E5A54:
	.4byte gUnknown_08177500
_080E5A58:
	.4byte gUnknown_08177520
_080E5A5C:
	.4byte gUnknown_08177540
	THUMB_FUNC_END sub_080E5990

	THUMB_FUNC_START sub_080E5A60
sub_080E5A60: @ 0x080E5A60
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	mov r1, #27
	bl sub_080CF0AC
	mov r0, #12
	add r1, r4, #0
	bl sub_080CA538
	add r6, r0, #0
	cmp r6, #0
	blt _080E5AFC
	ldr r3, _080E5B04  @ =gRam
	ldr r0, _080E5B08  @ =0x00000FB2
	add r5, r3, r0
	add r0, r4, r5
	ldrb r4, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r1, r3, r2
	ldr r0, _080E5B0C  @ =gUnknown_08177550
	add r0, r4, r0
	ldrb r0, [r0]
	ldrh r2, [r1]
	add r2, r2, r0
	ldr r0, _080E5B10  @ =gUnknown_08177554
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r0, _080E5B14  @ =0x00000964
	add r1, r3, r0
	ldr r0, _080E5B18  @ =gUnknown_08177558
	add r0, r4, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080E5B1C  @ =gUnknown_0817755C
	add r4, r4, r0
	ldrb r0, [r4]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r4, _080E5B20  @ =0x00000EE2
	add r0, r3, r4
	add r0, r6, r0
	strb r2, [r0]
	add r4, r4, #32
	add r0, r3, r4
	add r0, r6, r0
	lsr r2, r2, #8
	strb r2, [r0]
	ldr r2, _080E5B24  @ =0x00000ED2
	add r0, r3, r2
	add r0, r6, r0
	strb r1, [r0]
	sub r4, r4, #16
	add r0, r3, r4
	add r0, r6, r0
	lsr r1, r1, #8
	strb r1, [r0]
	add r5, r6, r5
	ldrb r2, [r5]
	ldr r0, _080E5B28  @ =0x00000F22
	add r1, r3, r0
	add r1, r6, r1
	ldr r0, _080E5B2C  @ =gUnknown_08177560
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r4, r4, #32
	add r3, r3, r4
	add r3, r6, r3
	ldr r0, _080E5B30  @ =gUnknown_08177564
	add r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r3]
_080E5AFC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E5B04:
	.4byte gRam
_080E5B08:
	.4byte 0x00000FB2
_080E5B0C:
	.4byte gUnknown_08177550
_080E5B10:
	.4byte gUnknown_08177554
_080E5B14:
	.4byte 0x00000964
_080E5B18:
	.4byte gUnknown_08177558
_080E5B1C:
	.4byte gUnknown_0817755C
_080E5B20:
	.4byte 0x00000EE2
_080E5B24:
	.4byte 0x00000ED2
_080E5B28:
	.4byte 0x00000F22
_080E5B2C:
	.4byte gUnknown_08177560
_080E5B30:
	.4byte gUnknown_08177564
	THUMB_FUNC_END sub_080E5A60

	THUMB_FUNC_START sub_080E5B34
sub_080E5B34: @ 0x080E5B34
	bx lr
	THUMB_FUNC_END sub_080E5B34

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E5B38
sub_080E5B38: @ 0x080E5B38
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080E5B60  @ =gRam
	ldr r2, _080E5B64  @ =0x00000FA2
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #6
	strb r2, [r1]
	ldr r2, _080E5B68  @ =0x00000FC2
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #31
	strb r2, [r1]
	ldr r1, _080E5B6C  @ =0x00001012
	add r3, r3, r1
	add r0, r0, r3
	mov r1, #3
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080E5B60:
	.4byte gRam
_080E5B64:
	.4byte 0x00000FA2
_080E5B68:
	.4byte 0x00000FC2
_080E5B6C:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080E5B38

	THUMB_FUNC_START sub_080E5B70
sub_080E5B70: @ 0x080E5B70
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r8, r4
	ldr r7, _080E5C40  @ =gRam
	ldr r1, _080E5C44  @ =0x00000FD2
	add r0, r7, r1
	add r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #0
	beq _080E5B9E
	ldr r0, _080E5C48  @ =0x00000D94
	add r2, r7, r0
	add r2, r4, r2
	ldrb r1, [r2]
	mov r0, #241
	and r0, r0, r1
	ldr r1, _080E5C4C  @ =gUnknown_0817756C
	ldrb r1, [r1, #2]
	orr r0, r0, r1
	strb r0, [r2]
_080E5B9E:
	add r0, r4, #0
	bl sub_080E5D6C
	add r0, r4, #0
	bl sub_080E5C64
	ldr r2, _080E5C50  @ =gUnknown_08177568
	ldr r1, _080E5C54  @ =0x00001052
	add r0, r7, r1
	add r5, r4, r0
	ldrb r0, [r5]
	lsr r0, r0, #3
	mov r1, #3
	and r0, r0, r1
	add r0, r0, r2
	ldrb r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	beq _080E5BCA
	add r0, r1, #3
	lsl r0, r0, #24
	lsr r1, r0, #24
_080E5BCA:
	ldr r2, _080E5C58  @ =0x00000F92
	add r0, r7, r2
	add r0, r4, r0
	strb r1, [r0]
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E5C36
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E5C36
	ldr r1, _080E5C5C  @ =0x00001082
	add r0, r7, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E5C00
	add r0, r4, #0
	bl sub_080C841C
	cmp r0, #0
	bne _080E5C36
_080E5C00:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldr r2, _080E5C60  @ =0x00000FC2
	add r0, r7, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E5C18
	add r0, r4, #0
	bl sub_080E5EA0
_080E5C18:
	ldrb r0, [r6]
	cmp r0, #0
	bne _080E5C24
	add r0, r4, #0
	bl Sprite3_Move
_080E5C24:
	mov r0, r8
	bl sub_080C6F48
	mov r0, r8
	bl Sprite_WallInducedSpeedInversion
	mov r0, r8
	bl sub_080C5044
_080E5C36:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080E5C40:
	.4byte gRam
_080E5C44:
	.4byte 0x00000FD2
_080E5C48:
	.4byte 0x00000D94
_080E5C4C:
	.4byte gUnknown_0817756C
_080E5C50:
	.4byte gUnknown_08177568
_080E5C54:
	.4byte 0x00001052
_080E5C58:
	.4byte 0x00000F92
_080E5C5C:
	.4byte 0x00001082
_080E5C60:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E5B70

	THUMB_FUNC_START sub_080E5C64
sub_080E5C64: @ 0x080E5C64
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r10
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E5D30
	ldr r2, _080E5D40  @ =gRam
	ldr r1, _080E5D44  @ =0x00000F92
	add r0, r2, r1
	add r0, r0, r10
	ldrb r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	ldr r3, _080E5D48  @ =0x0000096C
	add r1, r2, r3
	strb r0, [r1]
	mov r0, #2
	mov r9, r2
	add r7, sp, #4
	mov r8, r7
_080E5CA4:
	lsl r0, r0, #24
	asr r6, r0, #24
	lsl r4, r6, #1
	ldr r0, _080E5D44  @ =0x00000F92
	add r0, r0, r9
	add r0, r0, r10
	ldrb r1, [r0]
	lsl r0, r1, #1
	add r7, r0, r1
	lsl r0, r7, #1
	add r0, r4, r0
	ldr r1, _080E5D4C  @ =gUnknown_08177594
	add r0, r0, r1
	ldrh r5, [r0]
	cmp r5, #0
	beq _080E5D18
	ldr r0, _080E5D50  @ =gUnknown_03003E74
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r9
	ldr r1, _080E5D54  @ =gUnknown_08177588
	add r1, r4, r1
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, _080E5D58  @ =0x00000964
	add r3, r3, r9
	ldr r2, _080E5D5C  @ =gUnknown_0817758E
	add r2, r4, r2
	ldrh r2, [r2]
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r4, _080E5D60  @ =gUnknown_081775B8
	add r3, r6, r7
	add r3, r3, r4
	ldrb r4, [r3]
	ldr r7, _080E5D64  @ =gUnknown_03002B99
	ldrb r3, [r7]
	orr r3, r3, r4
	lsl r3, r3, #8
	orr r5, r5, r3
	ldr r3, _080E5D68  @ =gUnknown_081775CA
	add r3, r6, r3
	ldrb r3, [r3]
	str r3, [sp]
	add r3, r5, #0
	bl sub_080C6368
_080E5D18:
	sub r1, r6, #1
	lsl r1, r1, #24
	mov r2, r8
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	lsr r0, r1, #24
	cmp r1, #0
	bge _080E5CA4
	mov r0, r10
	bl sub_080C6230
_080E5D30:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080E5D40:
	.4byte gRam
_080E5D44:
	.4byte 0x00000F92
_080E5D48:
	.4byte 0x0000096C
_080E5D4C:
	.4byte gUnknown_08177594
_080E5D50:
	.4byte gUnknown_03003E74
_080E5D54:
	.4byte gUnknown_08177588
_080E5D58:
	.4byte 0x00000964
_080E5D5C:
	.4byte gUnknown_0817758E
_080E5D60:
	.4byte gUnknown_081775B8
_080E5D64:
	.4byte gUnknown_03002B99
_080E5D68:
	.4byte gUnknown_081775CA
	THUMB_FUNC_END sub_080E5C64

	THUMB_FUNC_START sub_080E5D6C
sub_080E5D6C: @ 0x080E5D6C
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r3, _080E5E68  @ =gRam
	ldr r1, _080E5E6C  @ =0x00001082
	add r0, r3, r1
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E5E62
	ldr r2, _080E5E70  @ =0x00000FA2
	add r0, r3, r2
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #9
	bne _080E5E36
	ldr r4, _080E5E74  @ =0x000009AD
	add r0, r3, r4
	ldr r2, _080E5E78  @ =0x00001605
	add r1, r3, r2
	ldrb r2, [r0]
	ldrb r0, [r1]
	orr r0, r0, r2
	cmp r0, #0
	bne _080E5E36
	ldr r4, _080E5E7C  @ =0x00001622
	add r0, r3, r4
	ldrb r1, [r0]
	ldr r2, _080E5E80  @ =0x00001623
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r4, r4, #162
	add r0, r3, r4
	ldrb r2, [r0]
	add r4, r4, #1
	add r0, r3, r4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	mov r0, #192
	lsl r0, r0, #13
	add r1, r1, r0
	lsr r1, r1, #16
	cmp r1, #47
	bhi _080E5E36
	mov r1, #182
	lsl r1, r1, #5
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080E5E84  @ =0x000016C1
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	sub r4, r4, #161
	add r0, r3, r4
	ldrb r2, [r0]
	add r4, r4, #1
	add r0, r3, r4
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	mov r0, #128
	lsl r0, r0, #14
	add r1, r1, r0
	lsr r1, r1, #16
	cmp r1, #47
	bhi _080E5E36
	ldr r1, _080E5E88  @ =gUnknown_03003E70
	mov r0, #1
	strb r0, [r1]
	ldr r1, _080E5E8C  @ =0x00000546
	add r0, r3, r1
	ldrh r1, [r0]
	mov r0, #129
	lsl r0, r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _080E5E36
	ldr r2, _080E5E90  @ =0x00001002
	add r1, r3, r2
	add r1, r6, r1
	ldrb r2, [r1]
	mov r0, #1
	and r0, r0, r2
	add r2, r2, #1
	strb r2, [r1]
	ldr r4, _080E5E94  @ =0x0000017D
	add r0, r0, r4
	bl sub_080C95C0
_080E5E36:
	ldr r4, _080E5E68  @ =gRam
	ldr r0, _080E5E98  @ =0x00001122
	add r4, r4, r0
	add r4, r6, r4
	ldrb r1, [r4]
	mov r0, #240
	and r0, r0, r1
	strb r0, [r4]
	ldrb r5, [r4]
	mov r1, #8
	add r0, r5, #0
	orr r0, r0, r1
	strb r0, [r4]
	add r0, r6, #0
	bl sub_080E5F00
	mov r0, #13
	orr r5, r5, r0
	strb r5, [r4]
	mov r0, #16
	bl sub_080CF370
_080E5E62:
	pop {r4-r6}
	pop {r0}
	bx r0
_080E5E68:
	.4byte gRam
_080E5E6C:
	.4byte 0x00001082
_080E5E70:
	.4byte 0x00000FA2
_080E5E74:
	.4byte 0x000009AD
_080E5E78:
	.4byte 0x00001605
_080E5E7C:
	.4byte 0x00001622
_080E5E80:
	.4byte 0x00001623
_080E5E84:
	.4byte 0x000016C1
_080E5E88:
	.4byte gUnknown_03003E70
_080E5E8C:
	.4byte 0x00000546
_080E5E90:
	.4byte 0x00001002
_080E5E94:
	.4byte 0x0000017D
_080E5E98:
	.4byte 0x00001122
	THUMB_FUNC_END sub_080E5D6C

	THUMB_FUNC_START sub_080E5E9C
sub_080E5E9C: @ 0x080E5E9C
	bx lr
	THUMB_FUNC_END sub_080E5E9C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E5EA0
sub_080E5EA0: @ 0x080E5EA0
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	bl GetRandomInt
	mov r2, #7
	and r2, r2, r0
	ldr r3, _080E5EE4  @ =gRam
	ldr r0, _080E5EE8  @ =0x00000F22
	add r1, r3, r0
	add r1, r4, r1
	ldr r0, _080E5EEC  @ =gUnknown_08177570
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E5EF0  @ =0x00000F12
	add r1, r3, r0
	add r1, r4, r1
	ldr r0, _080E5EF4  @ =gUnknown_08177578
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E5EF8  @ =0x00000FC2
	add r3, r3, r0
	add r4, r4, r3
	ldr r0, _080E5EFC  @ =gUnknown_08177580
	add r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E5EE4:
	.4byte gRam
_080E5EE8:
	.4byte 0x00000F22
_080E5EEC:
	.4byte gUnknown_08177570
_080E5EF0:
	.4byte 0x00000F12
_080E5EF4:
	.4byte gUnknown_08177578
_080E5EF8:
	.4byte 0x00000FC2
_080E5EFC:
	.4byte gUnknown_08177580
	THUMB_FUNC_END sub_080E5EA0

	THUMB_FUNC_START sub_080E5F00
sub_080E5F00: @ 0x080E5F00
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080E5F24  @ =gRam
	ldr r2, _080E5F28  @ =0x00000F92
	add r1, r1, r2
	add r1, r0, r1
	ldrb r2, [r1]
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r2, _080E5F2C  @ =gUnknown_081775D0
	add r1, r1, r2
	mov r2, #3
	bl sub_080C9480
	pop {r0}
	bx r0
_080E5F24:
	.4byte gRam
_080E5F28:
	.4byte 0x00000F92
_080E5F2C:
	.4byte gUnknown_081775D0
	THUMB_FUNC_END sub_080E5F00

	THUMB_FUNC_START sub_080E5F30
sub_080E5F30: @ 0x080E5F30
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080E67E8
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E5FA8
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E5FA8
	mov r0, sp
	add r1, r4, #0
	bl sub_080C4948
	ldr r5, _080E5FB0  @ =gRam
	ldr r1, _080E5FB4  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #3
	beq _080E5F90
	add r0, r4, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080E5FB8  @ =0x00001082
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
	sub r1, r1, #208
	add r0, r5, r1
	add r3, r4, r0
	ldrb r1, [r3]
	add r0, r2, #0
	eor r0, r0, r1
	cmp r0, #1
	bne _080E5F90
	strb r2, [r3]
_080E5F90:
	ldr r1, _080E5FBC  @ =gUnknown_08177660
	ldr r0, _080E5FB0  @ =gRam
	ldr r2, _080E5FB4  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080E5FA8:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080E5FB0:
	.4byte gRam
_080E5FB4:
	.4byte 0x00000F52
_080E5FB8:
	.4byte 0x00001082
_080E5FBC:
	.4byte gUnknown_08177660
	THUMB_FUNC_END sub_080E5F30

	THUMB_FUNC_START sub_080E5FC0
sub_080E5FC0: @ 0x080E5FC0
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080E65C8
	ldr r3, _080E6074  @ =gRam
	ldr r1, _080E6078  @ =0x00000FC2
	add r0, r3, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E6054
	ldr r2, _080E607C  @ =0x000016C4
	add r0, r3, r2
	ldrb r1, [r0]
	ldr r6, _080E6080  @ =0x000016C5
	add r0, r3, r6
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	sub r2, r2, #162
	add r0, r3, r2
	ldrb r2, [r0]
	sub r6, r6, #162
	add r0, r3, r6
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	mov r0, #160
	lsl r0, r0, #15
	add r1, r1, r0
	lsr r1, r1, #16
	cmp r1, #159
	bhi _080E6054
	mov r1, #182
	lsl r1, r1, #5
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080E6084  @ =0x000016C1
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	add r6, r6, #1
	add r0, r3, r6
	ldrb r2, [r0]
	add r6, r6, #1
	add r0, r3, r6
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	mov r0, #160
	lsl r0, r0, #15
	add r1, r1, r0
	lsr r1, r1, #16
	cmp r1, #159
	bhi _080E6054
	ldr r1, _080E6088  @ =0x00000F52
	add r0, r3, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #16
	strb r0, [r5]
_080E6054:
	ldr r0, _080E6074  @ =gRam
	ldr r2, _080E608C  @ =0x00000F92
	add r1, r0, r2
	add r1, r4, r1
	ldr r2, _080E6090  @ =gUnknown_08177670
	ldr r3, _080E6094  @ =0x00000FB2
	add r0, r0, r3
	add r0, r4, r0
	ldrb r0, [r0]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E6074:
	.4byte gRam
_080E6078:
	.4byte 0x00000FC2
_080E607C:
	.4byte 0x000016C4
_080E6080:
	.4byte 0x000016C5
_080E6084:
	.4byte 0x000016C1
_080E6088:
	.4byte 0x00000F52
_080E608C:
	.4byte 0x00000F92
_080E6090:
	.4byte gUnknown_08177670
_080E6094:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080E5FC0

	THUMB_FUNC_START sub_080E6098
sub_080E6098: @ 0x080E6098
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl sub_080E65C8
	add r0, r4, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080E60EC  @ =gRam
	ldr r3, _080E60F0  @ =0x00001082
	add r1, r2, r3
	add r1, r4, r1
	strb r0, [r1]
	sub r3, r3, #208
	add r1, r2, r3
	add r1, r4, r1
	strb r0, [r1]
	ldr r1, _080E60F4  @ =0x00000FC2
	add r0, r2, r1
	add r3, r4, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _080E60DE
	sub r1, r1, #112
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #32
	strb r0, [r3]
_080E60DE:
	add r0, r5, #0
	bl sub_080E68A0
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E60EC:
	.4byte gRam
_080E60F0:
	.4byte 0x00001082
_080E60F4:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E6098

	THUMB_FUNC_START sub_080E60F8
sub_080E60F8: @ 0x080E60F8
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	mov r1, #18
	bl sub_080C35FC
	ldr r5, _080E6210  @ =gRam
	ldr r1, _080E6214  @ =0x00001042
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E611A
	add r0, r4, #0
	bl Sprite3_Move
_080E611A:
	add r0, r4, #0
	bl sub_080C7A48
	ldr r2, _080E6218  @ =0x00000FC2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E61B4
	mov r3, #1
	ldr r6, _080E621C  @ =0x000016C4
	add r0, r5, r6
	ldrb r1, [r0]
	ldr r2, _080E6220  @ =0x000016C5
	add r0, r5, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	sub r6, r6, #162
	add r0, r5, r6
	ldrb r2, [r0]
	add r6, r6, #1
	add r0, r5, r6
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	mov r0, #160
	lsl r0, r0, #15
	add r1, r1, r0
	lsr r1, r1, #16
	cmp r1, #159
	bhi _080E619A
	mov r1, #182
	lsl r1, r1, #5
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _080E6224  @ =0x000016C1
	add r0, r5, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	add r6, r6, #1
	add r0, r5, r6
	ldrb r2, [r0]
	add r6, r6, #1
	add r0, r5, r6
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	mov r0, #160
	lsl r0, r0, #15
	add r1, r1, r0
	lsr r1, r1, #16
	cmp r1, #159
	bhi _080E619A
	mov r3, #0
_080E619A:
	cmp r3, #0
	beq _080E61B4
	ldr r2, _080E6210  @ =gRam
	ldr r1, _080E6228  @ =0x00000F52
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	ldr r3, _080E6218  @ =0x00000FC2
	add r2, r2, r3
	add r2, r4, r2
	mov r0, #128
	strb r0, [r2]
_080E61B4:
	add r0, r4, #0
	bl sub_080C4F98
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E61E4
	ldr r2, _080E6210  @ =gRam
	ldr r6, _080E6228  @ =0x00000F52
	add r1, r2, r6
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080E6218  @ =0x00000FC2
	add r2, r2, r0
	add r2, r4, r2
	mov r0, #32
	strb r0, [r2]
	add r0, r4, #0
	bl sub_080E6650
	add r0, r4, #0
	bl sub_080E692C
_080E61E4:
	ldr r2, _080E6210  @ =gRam
	ldr r1, _080E622C  @ =0x00000996
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #31
	and r0, r0, r1
	cmp r0, #0
	beq _080E6204
	ldr r3, _080E6230  @ =0x00000FB2
	add r0, r2, r3
	add r0, r4, r0
	ldr r6, _080E6234  @ =0x00001082
	add r1, r2, r6
	add r1, r4, r1
	ldrb r1, [r1]
	strb r1, [r0]
_080E6204:
	add r0, r4, #0
	bl sub_080E68E0
	pop {r4-r6}
	pop {r0}
	bx r0
_080E6210:
	.4byte gRam
_080E6214:
	.4byte 0x00001042
_080E6218:
	.4byte 0x00000FC2
_080E621C:
	.4byte 0x000016C4
_080E6220:
	.4byte 0x000016C5
_080E6224:
	.4byte 0x000016C1
_080E6228:
	.4byte 0x00000F52
_080E622C:
	.4byte 0x00000996
_080E6230:
	.4byte 0x00000FB2
_080E6234:
	.4byte 0x00001082
	THUMB_FUNC_END sub_080E60F8

	THUMB_FUNC_START sub_080E6238
sub_080E6238: @ 0x080E6238
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080E65C8
	add r0, r4, #0
	bl sub_080E6340
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r5, _080E630C  @ =gRam
	ldr r1, _080E6310  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E6296
	ldr r3, _080E6314  @ =0x00001052
	add r0, r5, r3
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldr r7, _080E6318  @ =0x00000F92
	add r2, r5, r7
	add r2, r4, r2
	ldr r3, _080E631C  @ =gUnknown_08177674
	mov r0, #4
	and r1, r1, r0
	add r7, r7, #32
	add r0, r5, r7
	add r0, r4, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	add r1, r1, r3
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r1, _080E6320  @ =0x00001042
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E6296
	add r0, r4, #0
	bl Sprite3_Move
_080E6296:
	add r0, r4, #0
	bl sub_080C7A48
	ldr r2, _080E630C  @ =gRam
	ldr r3, _080E6324  @ =0x00000FB2
	add r1, r2, r3
	add r1, r4, r1
	ldr r7, _080E6328  @ =0x00001082
	add r0, r2, r7
	add r5, r4, r0
	ldrb r0, [r5]
	strb r0, [r1]
	ldr r1, _080E632C  @ =0x00000996
	add r0, r2, r1
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080E6304
	cmp r6, #15
	bhi _080E6304
	sub r3, r3, #208
	add r0, r2, r3
	add r0, r6, r0
	ldrb r1, [r0]
	ldr r7, _080E6330  @ =0x00000968
	add r0, r2, r7
	strb r1, [r0]
	ldr r1, _080E6334  @ =0x00000F02
	add r0, r2, r1
	add r0, r6, r0
	ldrb r1, [r0]
	ldr r3, _080E6338  @ =0x00000969
	add r0, r2, r3
	strb r1, [r0]
	ldr r7, _080E633C  @ =0x00000ED2
	add r0, r2, r7
	add r0, r6, r0
	ldrb r1, [r0]
	add r3, r3, #3
	add r0, r2, r3
	strb r1, [r0]
	add r7, r7, #32
	add r0, r2, r7
	add r0, r6, r0
	ldrb r1, [r0]
	add r3, r3, #1
	add r0, r2, r3
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C2EE0
	strb r0, [r5]
_080E6304:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E630C:
	.4byte gRam
_080E6310:
	.4byte 0x00000FC2
_080E6314:
	.4byte 0x00001052
_080E6318:
	.4byte 0x00000F92
_080E631C:
	.4byte gUnknown_08177674
_080E6320:
	.4byte 0x00001042
_080E6324:
	.4byte 0x00000FB2
_080E6328:
	.4byte 0x00001082
_080E632C:
	.4byte 0x00000996
_080E6330:
	.4byte 0x00000968
_080E6334:
	.4byte 0x00000F02
_080E6338:
	.4byte 0x00000969
_080E633C:
	.4byte 0x00000ED2
	THUMB_FUNC_END sub_080E6238

	THUMB_FUNC_START sub_080E6340
sub_080E6340: @ 0x080E6340
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	mov r7, #0
	mov r6, #255
	mov r2, #15
	ldr r5, _080E6388  @ =gRam
_080E634E:
	lsl r2, r2, #24
	asr r1, r2, #24
	lsl r0, r3, #3
	add r4, r1, r0
	mov r0, #15
	and r4, r4, r0
	ldr r1, _080E638C  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E6390
	add r1, r1, #80
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #220
	beq _080E637A
	cmp r0, #225
	beq _080E637A
	cmp r0, #217
	bne _080E6390
_080E637A:
	add r0, r3, #0
	add r1, r4, #0
	bl sub_080E63C0
	add r6, r4, #0
	b _080E63B2
	.byte 0x00
	.byte 0x00
_080E6388:
	.4byte gRam
_080E638C:
	.4byte 0x00000FA2
_080E6390:
	mov r1, #255
	lsl r1, r1, #24
	add r0, r2, r1
	lsr r2, r0, #24
	cmp r0, #0
	bge _080E634E
	cmp r7, #0
	bne _080E63B2
	ldr r1, _080E63BC  @ =0x00000F52
	add r0, r5, r1
	add r0, r3, r0
	strb r7, [r0]
	add r1, r1, #112
	add r0, r5, r1
	add r0, r3, r0
	mov r1, #64
	strb r1, [r0]
_080E63B2:
	add r0, r6, #0
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080E63BC:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E6340

	THUMB_FUNC_START sub_080E63C0
sub_080E63C0: @ 0x080E63C0
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	lsl r1, r1, #24
	lsr r2, r1, #24
	ldr r4, _080E649C  @ =gRam
	ldr r1, _080E64A0  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	add r0, r6, #0
	eor r0, r0, r1
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080E643C
	ldr r3, _080E64A4  @ =0x00000EE2
	add r0, r4, r3
	add r0, r2, r0
	ldrb r1, [r0]
	ldr r3, _080E64A8  @ =0x00000968
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080E64AC  @ =0x00000F02
	add r0, r4, r1
	add r0, r2, r0
	ldrb r1, [r0]
	add r3, r3, #1
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080E64B0  @ =0x00000ED2
	add r0, r4, r1
	add r0, r2, r0
	ldrb r1, [r0]
	add r3, r3, #3
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080E64B4  @ =0x00000EF2
	add r0, r4, r1
	add r0, r2, r0
	ldrb r1, [r0]
	ldr r2, _080E64B8  @ =0x0000096D
	add r0, r4, r2
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #19
	bl sub_080C2DCC
	ldr r3, _080E64BC  @ =0x00000F12
	add r0, r4, r3
	add r0, r6, r0
	mov r2, #150
	lsl r2, r2, #4
	add r1, r4, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r3, r3, #16
	add r0, r4, r3
	add r0, r6, r0
	add r2, r2, #1
	add r1, r4, r2
	ldrb r1, [r1]
	strb r1, [r0]
_080E643C:
	mov r2, #15
	add r5, r4, #0
	ldr r3, _080E64C0  @ =0x00000FF2
	add r7, r5, r3
_080E6444:
	lsl r2, r2, #24
	asr r3, r2, #24
	ldr r4, _080E64A0  @ =0x00000996
	add r0, r5, r4
	ldrb r1, [r0]
	eor r1, r1, r3
	mov r0, #3
	and r1, r1, r0
	ldr r4, _080E64C4  @ =0x000010E2
	add r0, r5, r4
	add r0, r3, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	add r4, r2, #0
	cmp r1, #0
	bne _080E6488
	ldr r1, _080E64C8  @ =0x00000FA2
	add r0, r5, r1
	add r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E6488
	add r0, r3, r7
	ldrb r0, [r0]
	cmp r0, #220
	beq _080E6480
	cmp r0, #225
	beq _080E6480
	cmp r0, #217
	bne _080E6488
_080E6480:
	lsr r1, r4, #24
	add r0, r6, #0
	bl sub_080E64CC
_080E6488:
	mov r2, #255
	lsl r2, r2, #24
	add r0, r4, r2
	lsr r2, r0, #24
	cmp r0, #0
	bge _080E6444
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E649C:
	.4byte gRam
_080E64A0:
	.4byte 0x00000996
_080E64A4:
	.4byte 0x00000EE2
_080E64A8:
	.4byte 0x00000968
_080E64AC:
	.4byte 0x00000F02
_080E64B0:
	.4byte 0x00000ED2
_080E64B4:
	.4byte 0x00000EF2
_080E64B8:
	.4byte 0x0000096D
_080E64BC:
	.4byte 0x00000F12
_080E64C0:
	.4byte 0x00000FF2
_080E64C4:
	.4byte 0x000010E2
_080E64C8:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080E63C0

	THUMB_FUNC_START sub_080E64CC
sub_080E64CC: @ 0x080E64CC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r8, r6
	lsl r1, r1, #24
	lsr r3, r1, #24
	ldr r4, _080E6594  @ =gRam
	ldr r1, _080E6598  @ =0x00000EE2
	add r0, r4, r1
	add r0, r3, r0
	ldrb r0, [r0]
	ldr r5, _080E659C  @ =0x00000968
	add r2, r4, r5
	strb r0, [r2]
	ldr r7, _080E65A0  @ =0x00000F02
	add r0, r4, r7
	add r0, r3, r0
	ldrb r1, [r0]
	add r5, r5, #1
	add r0, r4, r5
	strb r1, [r0]
	sub r7, r7, #48
	add r0, r4, r7
	add r0, r3, r0
	ldrb r0, [r0]
	ldr r1, _080E65A4  @ =0x0000096C
	add r5, r4, r1
	strb r0, [r5]
	add r7, r7, #32
	add r0, r4, r7
	add r0, r3, r0
	ldrb r1, [r0]
	ldr r7, _080E65A8  @ =0x0000096D
	add r0, r4, r7
	strb r1, [r0]
	ldr r1, _080E65AC  @ =0x00001622
	add r0, r4, r1
	ldrb r1, [r0]
	ldr r7, _080E65B0  @ =0x00001623
	add r0, r4, r7
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrh r0, [r2]
	sub r0, r0, r1
	lsl r0, r0, #16
	mov r1, #128
	lsl r1, r1, #12
	add r0, r0, r1
	lsr r0, r0, #16
	cmp r0, #15
	bhi _080E658A
	ldr r2, _080E65B4  @ =0x00001624
	add r0, r4, r2
	ldrb r1, [r0]
	add r7, r7, #2
	add r0, r4, r7
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrh r0, [r5]
	sub r0, r0, r1
	lsl r0, r0, #16
	mov r1, #192
	lsl r1, r1, #12
	add r0, r0, r1
	lsr r0, r0, #16
	cmp r0, #23
	bhi _080E658A
	ldr r2, _080E65B8  @ =0x00000FA2
	add r0, r4, r2
	add r0, r3, r0
	mov r1, #0
	strb r1, [r0]
	ldr r1, _080E65BC  @ =gUnknown_08173034
	ldr r5, _080E65C0  @ =0x00000FF2
	add r0, r4, r5
	add r0, r3, r0
	ldrb r0, [r0]
	sub r0, r0, #216
	add r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E6580
	add r1, r0, #0
	add r0, r6, #0
	bl sub_080CF140
_080E6580:
	ldr r7, _080E65C4  @ =0x00000FC2
	add r0, r4, r7
	add r0, r0, r8
	mov r1, #14
	strb r1, [r0]
_080E658A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080E6594:
	.4byte gRam
_080E6598:
	.4byte 0x00000EE2
_080E659C:
	.4byte 0x00000968
_080E65A0:
	.4byte 0x00000F02
_080E65A4:
	.4byte 0x0000096C
_080E65A8:
	.4byte 0x0000096D
_080E65AC:
	.4byte 0x00001622
_080E65B0:
	.4byte 0x00001623
_080E65B4:
	.4byte 0x00001624
_080E65B8:
	.4byte 0x00000FA2
_080E65BC:
	.4byte gUnknown_08173034
_080E65C0:
	.4byte 0x00000FF2
_080E65C4:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E64CC

	THUMB_FUNC_START sub_080E65C8
sub_080E65C8: @ 0x080E65C8
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E662A
	add r0, r4, #0
	mov r1, #32
	bl sub_080C2CB4
	ldr r1, _080E6630  @ =gRam
	mov r2, #150
	lsl r2, r2, #4
	add r0, r1, r2
	ldrb r2, [r0]
	ldr r3, _080E6634  @ =0x000016CD
	add r0, r1, r3
	strb r2, [r0]
	ldr r3, _080E6638  @ =0x00001102
	add r0, r1, r3
	add r0, r4, r0
	mvn r2, r2
	strb r2, [r0]
	ldr r2, _080E663C  @ =0x00000961
	add r0, r1, r2
	ldrb r2, [r0]
	ldr r3, _080E6640  @ =0x000016CE
	add r0, r1, r3
	strb r2, [r0]
	ldr r3, _080E6644  @ =0x00001112
	add r0, r1, r3
	add r0, r4, r0
	mvn r2, r2
	strb r2, [r0]
	ldr r0, _080E6648  @ =0x000016F8
	add r2, r1, r0
	mov r0, #4
	strb r0, [r2]
	ldr r2, _080E664C  @ =0x00001072
	add r1, r1, r2
	add r1, r4, r1
	mov r0, #12
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080E692C
_080E662A:
	pop {r4}
	pop {r0}
	bx r0
_080E6630:
	.4byte gRam
_080E6634:
	.4byte 0x000016CD
_080E6638:
	.4byte 0x00001102
_080E663C:
	.4byte 0x00000961
_080E6640:
	.4byte 0x000016CE
_080E6644:
	.4byte 0x00001112
_080E6648:
	.4byte 0x000016F8
_080E664C:
	.4byte 0x00001072
	THUMB_FUNC_END sub_080E65C8

	THUMB_FUNC_START sub_080E6650
sub_080E6650: @ 0x080E6650
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	ldr r1, _080E6690  @ =gRam
	ldr r0, _080E6694  @ =0x000015F9
	add r2, r1, r0
	mov r0, #5
	strb r0, [r2]
	ldr r0, _080E6698  @ =0x000015FA
	add r0, r0, r1
	mov r8, r0
	add r5, r2, #0
_080E6670:
	bl GetRandomInt
	mov r1, #3
	and r1, r1, r0
	mov r2, r8
	strb r1, [r2]
	ldrb r0, [r2]
	cmp r0, #1
	beq _080E669C
	cmp r0, #2
	beq _080E66A4
	bl sub_080AA868
	lsl r0, r0, #24
	lsr r0, r0, #24
	b _080E66A8
_080E6690:
	.4byte gRam
_080E6694:
	.4byte 0x000015F9
_080E6698:
	.4byte 0x000015FA
_080E669C:
	ldr r0, _080E66A0  @ =gArrowCount
	b _080E66A6
_080E66A0:
	.4byte gArrowCount
_080E66A4:
	ldr r0, _080E676C  @ =gBombs
_080E66A6:
	ldrb r0, [r0]
_080E66A8:
	cmp r0, #0
	bne _080E66AE
	b _080E67CE
_080E66AE:
	ldr r0, _080E6770  @ =gUnknown_0817767C
	ldr r4, _080E6774  @ =gRam
	ldr r1, _080E6778  @ =0x000015FA
	add r6, r4, r1
	ldrb r1, [r6]
	add r1, r1, r0
	ldrb r0, [r1]
	mov r1, r9
	mov r2, #7
	bl sub_080C9AAC
	add r3, r0, #0
	cmp r3, #0
	bge _080E66CC
	b _080E67CE
_080E66CC:
	ldr r2, _080E677C  @ =0x00000EE2
	add r1, r4, r2
	add r1, r3, r1
	ldr r2, _080E6780  @ =0x000016C4
	add r0, r4, r2
	ldrb r0, [r0]
	mov r7, #0
	strb r0, [r1]
	ldr r0, _080E6784  @ =0x00000F02
	add r1, r4, r0
	add r1, r3, r1
	add r2, r2, #1
	add r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E6788  @ =0x00000ED2
	add r1, r4, r0
	add r1, r3, r1
	sub r2, r2, #5
	add r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E678C  @ =0x00000EF2
	add r1, r4, r0
	add r1, r3, r1
	add r2, r2, #1
	add r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E6790  @ =0x00001152
	add r0, r4, r1
	add r0, r3, r0
	mov r1, #24
	strb r1, [r0]
	ldr r2, _080E6794  @ =0x00000F22
	add r1, r4, r2
	add r1, r3, r1
	ldr r2, _080E6798  @ =gUnknown_08177680
	ldrb r0, [r5]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E679C  @ =0x00000F12
	add r0, r4, r1
	add r2, r3, r0
	ldr r1, _080E67A0  @ =gUnknown_08177686
	ldrb r0, [r5]
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r1, _080E67A4  @ =0x000010E2
	add r0, r4, r1
	add r0, r3, r0
	mov r1, #32
	strb r1, [r0]
	ldr r1, _080E67A8  @ =0x00001082
	add r0, r4, r1
	add r0, r3, r0
	mov r1, #1
	strb r1, [r0]
	ldr r1, _080E67AC  @ =0x00000D74
	add r0, r4, r1
	add r0, r3, r0
	mov r1, #255
	strb r1, [r0]
	ldr r1, _080E67B0  @ =0x000009AC
	add r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #26
	beq _080E67CC
	ldrb r0, [r6]
	cmp r0, #1
	beq _080E67B4
	cmp r0, #2
	beq _080E67BC
	mov r0, #1
	neg r0, r0
	bl sub_080AA83C
	b _080E67CE
_080E676C:
	.4byte gBombs
_080E6770:
	.4byte gUnknown_0817767C
_080E6774:
	.4byte gRam
_080E6778:
	.4byte 0x000015FA
_080E677C:
	.4byte 0x00000EE2
_080E6780:
	.4byte 0x000016C4
_080E6784:
	.4byte 0x00000F02
_080E6788:
	.4byte 0x00000ED2
_080E678C:
	.4byte 0x00000EF2
_080E6790:
	.4byte 0x00001152
_080E6794:
	.4byte 0x00000F22
_080E6798:
	.4byte gUnknown_08177680
_080E679C:
	.4byte 0x00000F12
_080E67A0:
	.4byte gUnknown_08177686
_080E67A4:
	.4byte 0x000010E2
_080E67A8:
	.4byte 0x00001082
_080E67AC:
	.4byte 0x00000D74
_080E67B0:
	.4byte 0x000009AC
_080E67B4:
	ldr r1, _080E67B8  @ =gArrowCount
	b _080E67BE
_080E67B8:
	.4byte gArrowCount
_080E67BC:
	ldr r1, _080E67C8  @ =gBombs
_080E67BE:
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	b _080E67CE
	.byte 0x00
	.byte 0x00
_080E67C8:
	.4byte gBombs
_080E67CC:
	strb r7, [r2]
_080E67CE:
	ldrb r0, [r5]
	sub r0, r0, #1
	strb r0, [r5]
	lsl r0, r0, #24
	cmp r0, #0
	blt _080E67DC
	b _080E6670
_080E67DC:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E6650

	THUMB_FUNC_START sub_080E67E8
sub_080E67E8: @ 0x080E67E8
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r7, _080E6868  @ =gRam
	ldr r1, _080E686C  @ =0x00000F92
	add r0, r7, r1
	add r0, r6, r0
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldr r0, _080E6870  @ =gUnknown_0817768C
	add r1, r1, r0
	add r0, r6, #0
	mov r2, #2
	bl sub_080C9480
	ldr r1, _080E6874  @ =0x000010D2
	add r0, r7, r1
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E6860
	ldr r0, _080E6878  @ =gUnknown_03003E74
	ldrh r4, [r0]
	lsl r4, r4, #3
	mov r1, #170
	lsl r1, r1, #3
	add r0, r7, r1
	add r4, r4, r0
	ldrh r5, [r4, #4]
	lsl r0, r5, #22
	lsr r0, r0, #22
	mov r2, #128
	lsl r2, r2, #1
	and r2, r2, r0
	ldr r1, _080E687C  @ =gUnknown_0817774C
	ldr r0, _080E6880  @ =0x00001082
	add r3, r7, r0
	add r3, r6, r3
	ldrb r0, [r3]
	add r0, r0, r1
	ldrb r1, [r0]
	orr r1, r1, r2
	ldr r0, _080E6884  @ =0xFFFFFC00
	and r0, r0, r5
	orr r0, r0, r1
	strh r0, [r4, #4]
	ldr r1, _080E6888  @ =gUnknown_08177750
	ldrb r0, [r3]
	add r0, r0, r1
	ldrb r1, [r0]
	lsr r1, r1, #6
	mov r0, #1
	and r1, r1, r0
	lsl r1, r1, #4
	ldrb r2, [r4, #3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #3]
_080E6860:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E6868:
	.4byte gRam
_080E686C:
	.4byte 0x00000F92
_080E6870:
	.4byte gUnknown_0817768C
_080E6874:
	.4byte 0x000010D2
_080E6878:
	.4byte gUnknown_03003E74
_080E687C:
	.4byte gUnknown_0817774C
_080E6880:
	.4byte 0x00001082
_080E6884:
	.4byte 0xFFFFFC00
_080E6888:
	.4byte gUnknown_08177750
	THUMB_FUNC_END sub_080E67E8

	THUMB_FUNC_START sub_080E688C
sub_080E688C: @ 0x080E688C
	bx lr
	THUMB_FUNC_END sub_080E688C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E6890
sub_080E6890: @ 0x080E6890
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E5F30
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E6890

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E68A0
sub_080E68A0: @ 0x080E68A0
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r4, r2, #0
	ldr r3, _080E68D4  @ =gRam
	ldr r1, _080E68D8  @ =0x00000996
	add r0, r3, r1
	ldrb r1, [r0]
	mov r0, #31
	and r0, r0, r1
	cmp r0, #0
	beq _080E68C8
	ldr r5, _080E68DC  @ =0x00000FB2
	add r0, r3, r5
	add r0, r2, r0
	add r5, r5, #208
	add r1, r3, r5
	add r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r0]
_080E68C8:
	add r0, r4, #0
	bl sub_080E68E0
	pop {r4,r5}
	pop {r0}
	bx r0
_080E68D4:
	.4byte gRam
_080E68D8:
	.4byte 0x00000996
_080E68DC:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080E68A0

	THUMB_FUNC_START sub_080E68E0
sub_080E68E0: @ 0x080E68E0
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080E6918  @ =gRam
	ldr r1, _080E691C  @ =0x00001052
	add r2, r3, r1
	add r2, r0, r2
	ldrb r1, [r2]
	add r1, r1, #1
	strb r1, [r2]
	ldr r2, _080E6920  @ =0x00000F92
	add r4, r3, r2
	add r4, r0, r4
	ldr r5, _080E6924  @ =gUnknown_08177674
	mov r2, #4
	and r1, r1, r2
	ldr r2, _080E6928  @ =0x00000FB2
	add r3, r3, r2
	add r0, r0, r3
	ldrb r0, [r0]
	orr r1, r1, r0
	add r1, r1, r5
	ldrb r0, [r1]
	strb r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E6918:
	.4byte gRam
_080E691C:
	.4byte 0x00001052
_080E6920:
	.4byte 0x00000F92
_080E6924:
	.4byte gUnknown_08177674
_080E6928:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080E68E0

	THUMB_FUNC_START sub_080E692C
sub_080E692C: @ 0x080E692C
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #30
	bl sub_080CF0AC
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E692C

	THUMB_FUNC_START sub_080E693C
sub_080E693C: @ 0x080E693C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080E6A2C
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E6A00
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E6A00
	add r0, r4, #0
	bl sub_080C841C
	cmp r0, #0
	bne _080E6A00
	add r0, r4, #0
	bl sub_080C5044
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C79F8
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E6990
	ldr r0, _080E6A08  @ =gRam
	ldr r1, _080E6A0C  @ =0x00000FC2
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E69B0
_080E6990:
	bl GetRandomInt
	mov r1, #63
	and r1, r1, r0
	add r1, r1, #32
	ldr r2, _080E6A08  @ =gRam
	ldr r3, _080E6A0C  @ =0x00000FC2
	add r0, r2, r3
	add r0, r4, r0
	strb r1, [r0]
	ldr r0, _080E6A10  @ =0x00000FB2
	add r2, r2, r0
	add r2, r4, r2
	mov r0, #3
	and r1, r1, r0
	strb r1, [r2]
_080E69B0:
	ldr r5, _080E6A08  @ =gRam
	ldr r3, _080E6A14  @ =0x00000F22
	add r1, r5, r3
	add r1, r4, r1
	ldr r2, _080E6A18  @ =gUnknown_08177754
	ldr r0, _080E6A10  @ =0x00000FB2
	add r3, r5, r0
	add r3, r4, r3
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E6A1C  @ =0x00000F12
	add r1, r5, r0
	add r1, r4, r1
	ldr r2, _080E6A20  @ =gUnknown_08177756
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E6A24  @ =0x00001052
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #25
	lsl r1, r0, #24
	lsr r2, r1, #24
	ldrb r0, [r3]
	cmp r0, #1
	bls _080E69F4
	lsr r2, r1, #26
_080E69F4:
	ldr r1, _080E6A28  @ =0x00000F92
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #1
	and r2, r2, r1
	strb r2, [r0]
_080E6A00:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E6A08:
	.4byte gRam
_080E6A0C:
	.4byte 0x00000FC2
_080E6A10:
	.4byte 0x00000FB2
_080E6A14:
	.4byte 0x00000F22
_080E6A18:
	.4byte gUnknown_08177754
_080E6A1C:
	.4byte 0x00000F12
_080E6A20:
	.4byte gUnknown_08177756
_080E6A24:
	.4byte 0x00001052
_080E6A28:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080E693C

	THUMB_FUNC_START sub_080E6A2C
sub_080E6A2C: @ 0x080E6A2C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r8
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E6ACA
	mov r2, #1
	add r7, sp, #4
	ldr r0, _080E6ADC  @ =gRam
	mov r9, r0
	ldr r3, _080E6AE0  @ =gUnknown_0817775A
	mov r10, r3
_080E6A5C:
	ldr r0, _080E6AE4  @ =gUnknown_03003E74
	ldrb r1, [r7]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r6, r2, #24
	asr r6, r6, #24
	lsl r2, r6, #1
	ldr r1, _080E6AE8  @ =0x00000F92
	add r1, r1, r9
	add r1, r1, r8
	ldrb r5, [r1]
	lsl r1, r5, #2
	add r2, r2, r1
	add r2, r2, r10
	ldrh r1, [r2]
	ldr r2, _080E6AEC  @ =gUnknown_03002B90
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080E6AF0  @ =0x00000964
	add r2, r2, r9
	ldrh r2, [r2]
	ldr r3, _080E6AF4  @ =gUnknown_08177762
	lsl r5, r5, #1
	add r5, r6, r5
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080E6AF8  @ =gUnknown_08177766
	add r5, r5, r4
	ldrb r5, [r5]
	mov r12, r5
	ldr r5, _080E6AFC  @ =gUnknown_03002B99
	ldrb r4, [r5]
	mov r5, r12
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	mov r4, #2
	str r4, [sp]
	bl sub_080C6368
	sub r6, r6, #1
	lsl r6, r6, #24
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	lsr r2, r6, #24
	cmp r6, #0
	bge _080E6A5C
	mov r0, r8
	bl sub_080C6230
_080E6ACA:
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
_080E6ADC:
	.4byte gRam
_080E6AE0:
	.4byte gUnknown_0817775A
_080E6AE4:
	.4byte gUnknown_03003E74
_080E6AE8:
	.4byte 0x00000F92
_080E6AEC:
	.4byte gUnknown_03002B90
_080E6AF0:
	.4byte 0x00000964
_080E6AF4:
	.4byte gUnknown_08177762
_080E6AF8:
	.4byte gUnknown_08177766
_080E6AFC:
	.4byte gUnknown_03002B99
	THUMB_FUNC_END sub_080E6A2C

	THUMB_FUNC_START sub_080E6B00
sub_080E6B00: @ 0x080E6B00
	bx lr
	THUMB_FUNC_END sub_080E6B00

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E6B04
sub_080E6B04: @ 0x080E6B04
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E693C
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E6B04

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E6B14
sub_080E6B14: @ 0x080E6B14
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080E6B74  @ =gRam
	ldr r0, _080E6B78  @ =0x00001022
	add r1, r5, r0
	add r1, r4, r1
	ldr r2, _080E6B7C  @ =gUnknown_0817776C
	ldr r0, _080E6B80  @ =0x0000164C
	add r3, r5, r0
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080E6B84  @ =0x00000EA5
	add r1, r5, r2
	add r1, r4, r1
	ldr r2, _080E6B88  @ =gUnknown_0817776E
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bl GetRandomInt
	ldr r2, _080E6B8C  @ =0x00000FC2
	add r1, r5, r2
	add r3, r4, r1
	mov r1, #127
	and r1, r1, r0
	strb r1, [r3]
	ldr r1, _080E6B90  @ =0x000009AC
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #26
	bne _080E6B6E
	ldr r0, _080E6B94  @ =0x00000FB2
	add r2, r5, r0
	add r2, r4, r2
	mov r0, #1
	and r0, r0, r4
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r2]
	mov r0, #63
	strb r0, [r3]
_080E6B6E:
	pop {r4,r5}
	pop {r0}
	bx r0
_080E6B74:
	.4byte gRam
_080E6B78:
	.4byte 0x00001022
_080E6B7C:
	.4byte gUnknown_0817776C
_080E6B80:
	.4byte 0x0000164C
_080E6B84:
	.4byte 0x00000EA5
_080E6B88:
	.4byte gUnknown_0817776E
_080E6B8C:
	.4byte 0x00000FC2
_080E6B90:
	.4byte 0x000009AC
_080E6B94:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080E6B14

	THUMB_FUNC_START sub_080E6B98
sub_080E6B98: @ 0x080E6B98
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	str r4, [sp]
	ldr r0, _080E6C68  @ =gRam
	mov r8, r0
	ldr r0, _080E6C6C  @ =0x00000FB2
	add r0, r0, r8
	add r6, r4, r0
	ldrb r1, [r6]
	add r7, r1, #0
	ldr r0, _080E6C70  @ =0x00000FD2
	add r0, r0, r8
	add r0, r0, r4
	mov r10, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E6BCE
	ldr r0, _080E6C74  @ =gUnknown_08177774
	add r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r6]
_080E6BCE:
	mov r5, #150
	lsl r5, r5, #4
	add r5, r5, r8
	mov r0, #0
	strb r0, [r5]
	ldr r0, _080E6C78  @ =0x00000F92
	add r0, r0, r8
	add r0, r0, r4
	mov r9, r0
	ldrb r0, [r0]
	cmp r0, #7
	bne _080E6BEA
	mov r0, #64
	strb r0, [r5]
_080E6BEA:
	ldr r2, _080E6C7C  @ =0x00001122
	add r2, r2, r8
	add r2, r4, r2
	ldrb r0, [r2]
	mov r1, #191
	and r1, r1, r0
	ldr r0, _080E6C80  @ =gUnknown_08177770
	add r0, r7, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	ldrb r0, [r5]
	orr r1, r1, r0
	strb r1, [r2]
	add r0, r4, #0
	bl sub_080E6E24
	strb r7, [r6]
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E6C1A
	b _080E6D8E
_080E6C1A:
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E6C28
	b _080E6D8E
_080E6C28:
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C5044
	ldr r0, _080E6C84  @ =0x00000F52
	add r0, r0, r8
	add r7, r4, r0
	ldrb r1, [r7]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080E6CE8
	add r0, r4, #0
	bl sub_080C3540
	ldr r0, _080E6C88  @ =0x00000FC2
	add r0, r0, r8
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080E6CA0
	ldr r0, _080E6C8C  @ =0x00000FF2
	add r0, r0, r8
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #8
	beq _080E6C90
	cmp r0, #10
	beq _080E6C98
	b _080E6D8E
_080E6C68:
	.4byte gRam
_080E6C6C:
	.4byte 0x00000FB2
_080E6C70:
	.4byte 0x00000FD2
_080E6C74:
	.4byte gUnknown_08177774
_080E6C78:
	.4byte 0x00000F92
_080E6C7C:
	.4byte 0x00001122
_080E6C80:
	.4byte gUnknown_08177770
_080E6C84:
	.4byte 0x00000F52
_080E6C88:
	.4byte 0x00000FC2
_080E6C8C:
	.4byte 0x00000FF2
_080E6C90:
	add r0, r4, #0
	bl sub_080E6F64
	b _080E6D8E
_080E6C98:
	add r0, r4, #0
	bl sub_080E6DA8
	b _080E6D8E
_080E6CA0:
	ldrb r4, [r6]
	bl GetRandomInt
	mov r1, #63
	and r1, r1, r0
	add r1, r1, #48
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	strb r1, [r5]
	mov r0, #3
	and r1, r1, r0
	strb r1, [r6]
	ldr r0, _080E6CE4  @ =0x000009AC
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #26
	bne _080E6CD0
	mov r0, #79
	strb r0, [r5]
	add r0, r4, #0
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r6]
_080E6CD0:
	ldrb r0, [r6]
	cmp r0, r4
	beq _080E6D8E
	cmp r0, r4
	bne _080E6D8E
	mov r0, #8
	mov r2, r10
	strb r0, [r2]
	b _080E6D8E
	.byte 0x00
	.byte 0x00
_080E6CE4:
	.4byte 0x000009AC
_080E6CE8:
	ldrb r1, [r6]
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #1
	strb r0, [r5]
	ldr r1, _080E6D58  @ =0x00001052
	add r1, r1, r8
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #27
	mov r1, #3
	and r0, r0, r1
	ldrb r1, [r5]
	orr r0, r0, r1
	mov r1, r9
	strb r0, [r1]
	ldr r0, _080E6D5C  @ =0x00000FC2
	add r0, r0, r8
	add r3, r4, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080E6D74
	ldr r1, _080E6D60  @ =0x00000F22
	add r1, r1, r8
	add r1, r4, r1
	ldr r2, _080E6D64  @ =gUnknown_08177778
	ldrb r0, [r6]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E6D68  @ =0x00000F12
	add r1, r1, r8
	add r1, r4, r1
	ldr r2, _080E6D6C  @ =gUnknown_0817777C
	ldrb r0, [r6]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080C6F48
	ldr r0, _080E6D70  @ =0x00001042
	add r0, r0, r8
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E6D8E
	ldrb r0, [r6]
	mov r2, #1
	eor r0, r0, r2
	strb r0, [r6]
	b _080E6D8E
	.byte 0x00
	.byte 0x00
_080E6D58:
	.4byte 0x00001052
_080E6D5C:
	.4byte 0x00000FC2
_080E6D60:
	.4byte 0x00000F22
_080E6D64:
	.4byte gUnknown_08177778
_080E6D68:
	.4byte 0x00000F12
_080E6D6C:
	.4byte gUnknown_0817777C
_080E6D70:
	.4byte 0x00001042
_080E6D74:
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	ldr r1, _080E6DA0  @ =gUnknown_08177780
	ldr r0, _080E6DA4  @ =0x00000FF2
	add r0, r0, r8
	ldr r2, [sp]
	add r0, r2, r0
	ldrb r0, [r0]
	sub r0, r0, #8
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
_080E6D8E:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E6DA0:
	.4byte gUnknown_08177780
_080E6DA4:
	.4byte 0x00000FF2
	THUMB_FUNC_END sub_080E6B98

	THUMB_FUNC_START sub_080E6DA8
sub_080E6DA8: @ 0x080E6DA8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r1, _080E6E0C  @ =gRam
	ldr r2, _080E6E10  @ =0x00000FC2
	add r0, r1, r2
	add r3, r4, r0
	ldrb r2, [r3]
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	blt _080E6DEA
	mov r5, #15
	add r0, r5, #0
	and r0, r0, r2
	cmp r0, #0
	bne _080E6DDA
	ldr r0, _080E6E14  @ =0x00000FB2
	add r1, r1, r0
	add r1, r4, r1
	ldr r2, _080E6E18  @ =gUnknown_0817779A
	ldrb r0, [r1]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
_080E6DDA:
	ldrb r1, [r3]
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #8
	bne _080E6DEA
	add r0, r4, #0
	bl sub_080E5A60
_080E6DEA:
	ldr r0, _080E6E0C  @ =gRam
	ldr r2, _080E6E1C  @ =0x00000F82
	add r1, r0, r2
	add r1, r4, r1
	ldr r2, _080E6E20  @ =gUnknown_08177790
	ldr r3, _080E6E10  @ =0x00000FC2
	add r0, r0, r3
	add r0, r4, r0
	ldrb r0, [r0]
	lsr r0, r0, #4
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E6E0C:
	.4byte gRam
_080E6E10:
	.4byte 0x00000FC2
_080E6E14:
	.4byte 0x00000FB2
_080E6E18:
	.4byte gUnknown_0817779A
_080E6E1C:
	.4byte 0x00000F82
_080E6E20:
	.4byte gUnknown_08177790
	THUMB_FUNC_END sub_080E6DA8

	THUMB_FUNC_START sub_080E6E24
sub_080E6E24: @ 0x080E6E24
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r8, r4
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	cmp r0, #0
	bne _080E6EEA
	ldr r6, _080E6EF8  @ =gRam
	ldr r1, _080E6EFC  @ =0x00000FB2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r0]
	cmp r1, #3
	beq _080E6EC8
	ldr r2, _080E6F00  @ =0x00000F82
	add r0, r6, r2
	add r0, r4, r0
	ldrb r5, [r0]
	lsl r0, r5, #1
	add r5, r5, r0
	add r5, r1, r5
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r2, _080E6F04  @ =gUnknown_03003E74
	add r0, sp, #4
	ldrb r1, [r0]
	ldrh r0, [r2]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r4, #150
	lsl r4, r4, #4
	add r2, r6, r4
	ldr r1, _080E6F08  @ =gUnknown_0817779E
	lsl r3, r5, #1
	add r1, r3, r1
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r7, _080E6F0C  @ =0x00000964
	add r4, r6, r7
	ldr r2, _080E6F10  @ =gUnknown_081777B0
	add r3, r3, r2
	ldrh r2, [r3]
	ldrh r4, [r4]
	add r2, r2, r4
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E6F14  @ =gUnknown_081777C2
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080E6F18  @ =gUnknown_081777CB
	add r5, r5, r4
	mov r12, r5
	ldr r5, _080E6F1C  @ =0x00000969
	add r4, r6, r5
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldrb r4, [r4]
	mov r5, r12
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	mov r7, r9
	str r7, [sp]
	bl sub_080C6368
_080E6EC8:
	ldr r1, _080E6F04  @ =gUnknown_03003E74
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	ldr r0, _080E6F20  @ =0x00001012
	add r4, r6, r0
	add r4, r4, r8
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	mov r0, r8
	mov r1, #0
	bl sub_080C626C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_080E6EEA:
	add sp, sp, #8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080E6EF8:
	.4byte gRam
_080E6EFC:
	.4byte 0x00000FB2
_080E6F00:
	.4byte 0x00000F82
_080E6F04:
	.4byte gUnknown_03003E74
_080E6F08:
	.4byte gUnknown_0817779E
_080E6F0C:
	.4byte 0x00000964
_080E6F10:
	.4byte gUnknown_081777B0
_080E6F14:
	.4byte gUnknown_081777C2
_080E6F18:
	.4byte gUnknown_081777CB
_080E6F1C:
	.4byte 0x00000969
_080E6F20:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080E6E24

	THUMB_FUNC_START sub_080E6F24
sub_080E6F24: @ 0x080E6F24
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E6B14
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E6F24

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E6F34
sub_080E6F34: @ 0x080E6F34
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E6B14
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E6F34

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E6F44
sub_080E6F44: @ 0x080E6F44
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E6B98
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E6F44

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E6F54
sub_080E6F54: @ 0x080E6F54
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E6B98
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E6F54

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E6F64
sub_080E6F64: @ 0x080E6F64
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r5, r1, #0
	ldr r6, _080E6F98  @ =gRam
	ldr r2, _080E6F9C  @ =0x00000FC2
	add r0, r6, r2
	add r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #28
	bne _080E6F80
	add r0, r1, #0
	bl sub_080E5A60
_080E6F80:
	ldr r0, _080E6FA0  @ =0x00000F82
	add r1, r6, r0
	add r1, r5, r1
	ldr r2, _080E6FA4  @ =gUnknown_08177784
	ldrb r0, [r4]
	lsr r0, r0, #3
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
_080E6F98:
	.4byte gRam
_080E6F9C:
	.4byte 0x00000FC2
_080E6FA0:
	.4byte 0x00000F82
_080E6FA4:
	.4byte gUnknown_08177784
	THUMB_FUNC_END sub_080E6F64

	THUMB_FUNC_START sub_080E6FA8
sub_080E6FA8: @ 0x080E6FA8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r9, r4
	add r0, r4, #0
	bl sub_080E71D4
	ldr r6, _080E70F4  @ =gRam
	ldr r1, _080E70F8  @ =0x00001072
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E6FD0
	add r0, r4, #0
	bl sub_080E2614
_080E6FD0:
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	beq _080E6FE0
	b _080E71AE
_080E6FE0:
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r2, _080E70FC  @ =0x00001152
	add r0, r6, r2
	add r0, r0, r4
	mov r8, r0
	ldrb r0, [r0]
	sub r0, r0, #2
	mov r3, r8
	strb r0, [r3]
	ldr r1, _080E7100  @ =0x00001142
	add r0, r6, r1
	add r7, r4, r0
	mov r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bge _080E700E
	strb r5, [r7]
	strb r5, [r3]
	add r0, r4, #0
	bl sub_080E2614
_080E700E:
	ldr r2, _080E7104  @ =0x00000F52
	add r0, r6, r2
	add r2, r4, r0
	ldrb r3, [r2]
	mov r12, r3
	cmp r3, #0
	beq _080E701E
	b _080E716C
_080E701E:
	ldr r5, _080E7108  @ =0x00001032
	add r0, r6, r5
	add r5, r4, r0
	ldrb r1, [r5]
	mov r0, #64
	orr r1, r1, r0
	mov r0, #0
	orr r1, r1, r0
	strb r1, [r5]
	ldr r3, _080E710C  @ =0x00000FC2
	add r0, r6, r3
	add r7, r4, r0
	ldrb r3, [r7]
	cmp r3, #1
	beq _080E7128
	ldr r5, _080E7110  @ =0x00000996
	add r0, r6, r5
	ldrb r1, [r0]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080E70C4
	ldr r1, _080E7114  @ =0x000016C4
	add r0, r6, r1
	ldrb r1, [r0]
	ldr r2, _080E7118  @ =0x000016C5
	add r0, r6, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r5, _080E711C  @ =0x00001622
	add r0, r6, r5
	ldrb r2, [r0]
	add r5, r5, #1
	add r0, r6, r5
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	mov r0, #248
	lsl r0, r0, #13
	add r1, r1, r0
	lsr r1, r1, #16
	cmp r1, #61
	bhi _080E70C4
	mov r1, #182
	lsl r1, r1, #5
	add r0, r6, r1
	ldrb r1, [r0]
	ldr r2, _080E7120  @ =0x000016C1
	add r0, r6, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	add r5, r5, #1
	add r0, r6, r5
	ldrb r2, [r0]
	add r5, r5, #1
	add r0, r6, r5
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	mov r0, #192
	lsl r0, r0, #14
	add r1, r1, r0
	lsr r1, r1, #16
	cmp r1, #87
	bhi _080E70C4
	cmp r3, #0
	bne _080E70C4
	mov r0, #48
	strb r0, [r7]
	add r0, r4, #0
	mov r1, #58
	bl sub_080CF0AC
_080E70C4:
	mov r0, r9
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E70D8
	bl sub_080AF16C
	bl sub_0809945C
_080E70D8:
	ldr r2, _080E70F4  @ =gRam
	ldr r1, _080E710C  @ =0x00000FC2
	add r0, r2, r1
	add r0, r0, r9
	ldrb r1, [r0]
	cmp r1, #0
	beq _080E71AE
	ldr r3, _080E7124  @ =0x000010C2
	add r0, r2, r3
	add r0, r0, r9
	add r1, r1, #20
	strb r1, [r0]
	b _080E71AE
	.byte 0x00
	.byte 0x00
_080E70F4:
	.4byte gRam
_080E70F8:
	.4byte 0x00001072
_080E70FC:
	.4byte 0x00001152
_080E7100:
	.4byte 0x00001142
_080E7104:
	.4byte 0x00000F52
_080E7108:
	.4byte 0x00001032
_080E710C:
	.4byte 0x00000FC2
_080E7110:
	.4byte 0x00000996
_080E7114:
	.4byte 0x000016C4
_080E7118:
	.4byte 0x000016C5
_080E711C:
	.4byte 0x00001622
_080E7120:
	.4byte 0x000016C1
_080E7124:
	.4byte 0x000010C2
_080E7128:
	mov r3, #191
	and r1, r1, r3
	strb r1, [r5]
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldr r0, _080E7160  @ =0x00001012
	add r1, r6, r0
	add r1, r4, r1
	ldrb r2, [r1]
	mov r0, #127
	and r0, r0, r2
	strb r0, [r1]
	ldrb r0, [r5]
	and r3, r3, r0
	strb r3, [r5]
	ldr r1, _080E7164  @ =0x00001122
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #11
	strb r1, [r0]
	ldr r2, _080E7168  @ =0x000010C2
	add r0, r6, r2
	add r0, r4, r0
	mov r3, r12
	strb r3, [r0]
	b _080E71AE
	.byte 0x00
	.byte 0x00
_080E7160:
	.4byte 0x00001012
_080E7164:
	.4byte 0x00001122
_080E7168:
	.4byte 0x000010C2
_080E716C:
	mov r0, r9
	bl sub_080C5044
	mov r0, r9
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E71AE
	mov r0, r9
	bl Sprite3_Move
	mov r0, r9
	bl sub_080C79F8
	ldr r5, _080E71BC  @ =0x00000FC2
	add r0, r6, r5
	mov r1, r9
	add r2, r1, r0
	ldrb r1, [r2]
	ldrb r0, [r7]
	orr r0, r0, r1
	cmp r0, #0
	bne _080E71AE
	mov r0, #8
	strb r0, [r2]
	mov r0, #16
	mov r2, r8
	strb r0, [r2]
	mov r0, r9
	mov r1, #12
	bl sub_080C35FC
_080E71AE:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E71BC:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E6FA8

	THUMB_FUNC_START sub_080E71C0
sub_080E71C0: @ 0x080E71C0
	bx lr
	THUMB_FUNC_END sub_080E71C0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E71C4
sub_080E71C4: @ 0x080E71C4
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E6FA8
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E71C4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E71D4
sub_080E71D4: @ 0x080E71D4
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r4, r2, #0
	mov r1, #0
	mov r0, sp
	strb r1, [r0]
	ldr r0, _080E721C  @ =gRam
	ldr r1, _080E7220  @ =0x00000F52
	add r0, r0, r1
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E7202
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E7212
_080E7202:
	ldr r1, _080E7224  @ =gUnknown_081777D4
	add r0, r4, #0
	mov r2, #2
	bl sub_080C9480
	add r0, r4, #0
	bl sub_080C6230
_080E7212:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E721C:
	.4byte gRam
_080E7220:
	.4byte 0x00000F52
_080E7224:
	.4byte gUnknown_081777D4
	THUMB_FUNC_END sub_080E71D4

	THUMB_FUNC_START sub_080E7228
sub_080E7228: @ 0x080E7228
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r1, _080E7254  @ =gRam
	ldr r2, _080E7258  @ =0x00000FE2
	add r0, r1, r2
	add r0, r4, r0
	ldrb r3, [r0]
	add r5, r1, #0
	cmp r3, #0
	bne _080E7264
	ldr r1, _080E725C  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #2
	beq _080E727C
	ldr r2, _080E7260  @ =0x00000F62
	add r0, r5, r2
	b _080E7270
	.byte 0x00
	.byte 0x00
_080E7254:
	.4byte gRam
_080E7258:
	.4byte 0x00000FE2
_080E725C:
	.4byte 0x00000F52
_080E7260:
	.4byte 0x00000F62
_080E7264:
	mov r0, #4
	and r0, r0, r3
	cmp r0, #0
	beq _080E727C
	ldr r1, _080E7278  @ =0x00000F62
	add r0, r5, r1
_080E7270:
	add r0, r4, r0
	ldrb r3, [r0]
	b _080E727E
	.byte 0x00
	.byte 0x00
_080E7278:
	.4byte 0x00000F62
_080E727C:
	mov r3, #8
_080E727E:
	ldr r2, _080E7340  @ =0x00000F92
	add r1, r5, r2
	add r1, r4, r1
	ldr r0, _080E7344  @ =gUnknown_081777E4
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E7348  @ =0x00001122
	add r2, r5, r0
	add r2, r4, r2
	ldrb r0, [r2]
	mov r1, #191
	and r1, r1, r0
	ldr r0, _080E734C  @ =gUnknown_081777ED
	add r0, r3, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	strb r1, [r2]
	add r0, r4, #0
	bl sub_080C6240
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E7338
	ldr r1, _080E7350  @ =0x00001072
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E72D6
	mov r0, sp
	add r1, r4, #0
	bl sub_080C4948
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E72D6
	add r0, r4, #0
	mov r1, #30
	bl sub_080CF0AC
_080E72D6:
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E72EA
	bl sub_080AF16C
	bl sub_0809945C
_080E72EA:
	ldr r5, _080E7354  @ =gRam
	ldr r2, _080E7350  @ =0x00001072
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #14
	bne _080E7316
	ldr r1, _080E7358  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	sub r2, r2, #160
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	ldr r1, _080E735C  @ =0x00000FE2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #64
	strb r1, [r0]
_080E7316:
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E7338
	ldr r1, _080E7360  @ =gUnknown_081777F8
	ldr r2, _080E7358  @ =0x00000F52
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080E7338:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080E7340:
	.4byte 0x00000F92
_080E7344:
	.4byte gUnknown_081777E4
_080E7348:
	.4byte 0x00001122
_080E734C:
	.4byte gUnknown_081777ED
_080E7350:
	.4byte 0x00001072
_080E7354:
	.4byte gRam
_080E7358:
	.4byte 0x00000F52
_080E735C:
	.4byte 0x00000FE2
_080E7360:
	.4byte gUnknown_081777F8
	THUMB_FUNC_END sub_080E7228

	THUMB_FUNC_START sub_080E7364
sub_080E7364: @ 0x080E7364
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080E73D8  @ =gRam
	ldr r1, _080E73DC  @ =0x00000FC2
	add r0, r5, r1
	add r6, r4, r0
	ldrb r7, [r6]
	cmp r7, #0
	bne _080E7406
	ldr r0, _080E73E0  @ =0x00001012
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	mov r2, #127
	and r0, r0, r2
	strb r0, [r1]
	ldr r0, _080E73E4  @ =0x00000E75
	add r1, r5, r0
	add r1, r4, r1
	ldrb r2, [r1]
	mov r0, #251
	and r0, r0, r2
	strb r0, [r1]
	ldr r0, _080E73E8  @ =0x00001032
	add r1, r5, r0
	add r1, r4, r1
	ldrb r2, [r1]
	mov r0, #191
	and r0, r0, r2
	strb r0, [r1]
	ldr r0, _080E73EC  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	bl GetRandomInt
	mov r1, #31
	and r1, r1, r0
	add r1, r1, #32
	strb r1, [r6]
	ldr r1, _080E73F0  @ =0x00000F72
	add r0, r5, r1
	add r1, r4, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #4
	beq _080E73F4
	bl GetRandomInt
	mov r1, #3
	and r1, r1, r0
	b _080E7400
_080E73D8:
	.4byte gRam
_080E73DC:
	.4byte 0x00000FC2
_080E73E0:
	.4byte 0x00001012
_080E73E4:
	.4byte 0x00000E75
_080E73E8:
	.4byte 0x00001032
_080E73EC:
	.4byte 0x00000F52
_080E73F0:
	.4byte 0x00000F72
_080E73F4:
	strb r7, [r1]
	add r0, r4, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r1, r0, #24
_080E7400:
	add r0, r4, #0
	bl sub_080E757C
_080E7406:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E7364

	THUMB_FUNC_START sub_080E740C
sub_080E740C: @ 0x080E740C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080E7464  @ =gRam
	ldr r1, _080E7468  @ =0x00000FC2
	add r0, r5, r1
	add r2, r4, r0
	ldrb r1, [r2]
	cmp r1, #0
	beq _080E74B4
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C6F48
	ldr r2, _080E746C  @ =0x00001042
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E7478
	ldr r3, _080E7470  @ =0x00001052
	add r0, r5, r3
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldr r0, _080E7474  @ =0x00000F62
	add r3, r5, r0
	add r3, r4, r3
	sub r2, r2, #144
	add r0, r5, r2
	add r0, r4, r0
	ldrb r2, [r0]
	lsl r2, r2, #1
	lsl r1, r1, #24
	lsr r1, r1, #26
	mov r0, #1
	and r1, r1, r0
	orr r2, r2, r1
	strb r2, [r3]
	b _080E74C0
	.byte 0x00
	.byte 0x00
_080E7464:
	.4byte gRam
_080E7468:
	.4byte 0x00000FC2
_080E746C:
	.4byte 0x00001042
_080E7470:
	.4byte 0x00001052
_080E7474:
	.4byte 0x00000F62
_080E7478:
	ldr r3, _080E74A4  @ =0x00000FB2
	add r0, r5, r3
	add r0, r4, r0
	ldrb r2, [r0]
	mov r1, #1
	eor r1, r1, r2
	strb r1, [r0]
	ldr r0, _080E74A8  @ =0x00000F22
	add r2, r5, r0
	add r2, r4, r2
	ldr r0, _080E74AC  @ =gUnknown_08177804
	add r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r2]
	sub r3, r3, #160
	add r2, r5, r3
	add r2, r4, r2
	ldr r0, _080E74B0  @ =gUnknown_08177808
	add r1, r1, r0
	ldrb r0, [r1]
	b _080E74BE
	.byte 0x00
	.byte 0x00
_080E74A4:
	.4byte 0x00000FB2
_080E74A8:
	.4byte 0x00000F22
_080E74AC:
	.4byte gUnknown_08177804
_080E74B0:
	.4byte gUnknown_08177808
_080E74B4:
	ldr r3, _080E74C8  @ =0x00000F52
	add r0, r5, r3
	add r0, r4, r0
	strb r1, [r0]
	mov r0, #32
_080E74BE:
	strb r0, [r2]
_080E74C0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E74C8:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E740C

	THUMB_FUNC_START sub_080E74CC
sub_080E74CC: @ 0x080E74CC
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r5, r3, #0
	ldr r4, _080E751C  @ =gRam
	ldr r0, _080E7520  @ =0x00001012
	add r1, r4, r0
	add r1, r3, r1
	ldrb r2, [r1]
	mov r0, #128
	orr r0, r0, r2
	strb r0, [r1]
	ldr r2, _080E7524  @ =0x00000E75
	add r1, r4, r2
	add r1, r3, r1
	ldrb r0, [r1]
	mov r2, #4
	orr r0, r0, r2
	strb r0, [r1]
	ldr r0, _080E7528  @ =0x00001032
	add r1, r4, r0
	add r1, r3, r1
	ldrb r2, [r1]
	mov r0, #64
	orr r0, r0, r2
	strb r0, [r1]
	ldr r1, _080E752C  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080E7534
	ldr r2, _080E7530  @ =0x00000FD2
	add r1, r4, r2
	add r1, r3, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080E756A
_080E751C:
	.4byte gRam
_080E7520:
	.4byte 0x00001012
_080E7524:
	.4byte 0x00000E75
_080E7528:
	.4byte 0x00001032
_080E752C:
	.4byte 0x00000996
_080E7530:
	.4byte 0x00000FD2
_080E7534:
	ldr r1, _080E7550  @ =0x00000FD2
	add r0, r4, r1
	add r0, r3, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _080E7558
	cmp r1, #32
	bne _080E756A
	ldr r2, _080E7554  @ =0x00000FE2
	add r0, r4, r2
	add r0, r3, r0
	mov r1, #64
	b _080E7568
	.byte 0x00
	.byte 0x00
_080E7550:
	.4byte 0x00000FD2
_080E7554:
	.4byte 0x00000FE2
_080E7558:
	ldr r2, _080E7570  @ =0x00000F52
	add r0, r4, r2
	add r0, r5, r0
	strb r1, [r0]
	ldr r1, _080E7574  @ =0x00000FC2
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #16
_080E7568:
	strb r1, [r0]
_080E756A:
	pop {r4,r5}
	pop {r0}
	bx r0
_080E7570:
	.4byte 0x00000F52
_080E7574:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E74CC

	THUMB_FUNC_START sub_080E7578
sub_080E7578: @ 0x080E7578
	bx lr
	THUMB_FUNC_END sub_080E7578

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E757C
sub_080E757C: @ 0x080E757C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r4, _080E75B4  @ =gRam
	ldr r3, _080E75B8  @ =0x00000FB2
	add r2, r4, r3
	add r2, r0, r2
	strb r1, [r2]
	ldr r2, _080E75BC  @ =0x00000F22
	add r3, r4, r2
	add r3, r0, r3
	ldr r2, _080E75C0  @ =gUnknown_08177804
	add r2, r1, r2
	ldrb r2, [r2]
	strb r2, [r3]
	ldr r3, _080E75C4  @ =0x00000F12
	add r4, r4, r3
	add r0, r0, r4
	ldr r2, _080E75C8  @ =gUnknown_08177808
	add r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E75B4:
	.4byte gRam
_080E75B8:
	.4byte 0x00000FB2
_080E75BC:
	.4byte 0x00000F22
_080E75C0:
	.4byte gUnknown_08177804
_080E75C4:
	.4byte 0x00000F12
_080E75C8:
	.4byte gUnknown_08177808
	THUMB_FUNC_END sub_080E757C

	THUMB_FUNC_START sub_080E75CC
sub_080E75CC: @ 0x080E75CC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080E76A8  @ =gRam
	ldr r1, _080E76AC  @ =0x000009B2
	add r0, r6, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080E76DC
	ldr r2, _080E76B0  @ =0x00000D94
	add r0, r6, r2
	add r0, r5, r0
	mov r1, #48
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080E7948
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #0
	beq _080E7606
	b _080E77B2
_080E7606:
	ldr r3, _080E76B4  @ =0x00001052
	add r2, r6, r3
	add r2, r5, r2
	ldr r1, _080E76B8  @ =0x00000FB2
	add r0, r6, r1
	add r0, r0, r5
	mov r8, r0
	ldrb r0, [r2]
	mov r3, r8
	ldrb r1, [r3]
	sub r0, r0, r1
	strb r0, [r2]
	add r0, r5, #0
	bl sub_080C5044
	add r0, r5, #0
	bl sub_080C99DC
	ldr r1, _080E76BC  @ =0x00001152
	add r0, r6, r1
	add r7, r5, r0
	ldrb r0, [r7]
	sub r0, r0, #2
	strb r0, [r7]
	ldr r2, _080E76C0  @ =0x00001142
	add r0, r6, r2
	add r2, r5, r0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080E7648
	b _080E77B2
_080E7648:
	strb r4, [r2]
	add r0, r5, #0
	bl sub_080C7A48
	ldr r3, _080E76C4  @ =0x00001042
	add r0, r6, r3
	add r0, r5, r0
	ldrb r1, [r0]
	neg r0, r1
	orr r0, r0, r1
	lsr r4, r0, #31
	ldr r0, _080E76C8  @ =gUnknown_0817780C
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r7]
	ldr r0, _080E76CC  @ =0x00000F12
	add r1, r6, r0
	add r1, r5, r1
	ldr r0, _080E76D0  @ =gUnknown_0817780E
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	bl GetRandomInt
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _080E7684
	add r0, r4, #2
	add r4, r0, #0
_080E7684:
	ldr r2, _080E76D4  @ =0x00000F22
	add r1, r6, r2
	add r1, r5, r1
	ldr r0, _080E76D8  @ =gUnknown_08177810
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	mov r0, #2
	and r0, r0, r4
	sub r0, r0, #1
	mov r3, r8
	strb r0, [r3]
	add r0, r5, #0
	mov r1, #30
	bl sub_080CF0AC
	b _080E77B2
	.byte 0x00
	.byte 0x00
_080E76A8:
	.4byte gRam
_080E76AC:
	.4byte 0x000009B2
_080E76B0:
	.4byte 0x00000D94
_080E76B4:
	.4byte 0x00001052
_080E76B8:
	.4byte 0x00000FB2
_080E76BC:
	.4byte 0x00001152
_080E76C0:
	.4byte 0x00001142
_080E76C4:
	.4byte 0x00001042
_080E76C8:
	.4byte gUnknown_0817780C
_080E76CC:
	.4byte 0x00000F12
_080E76D0:
	.4byte gUnknown_0817780E
_080E76D4:
	.4byte 0x00000F22
_080E76D8:
	.4byte gUnknown_08177810
_080E76DC:
	ldr r1, _080E77BC  @ =0x00001610
	add r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080E76EC
	add r0, r5, #0
	bl sub_080C58F0
_080E76EC:
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E77B2
	ldr r3, _080E77C0  @ =0x00001122
	add r2, r6, r3
	add r2, r5, r2
	ldr r0, _080E77C4  @ =0x00000996
	add r4, r6, r0
	ldrb r0, [r4]
	lsl r0, r0, #2
	mov r3, #64
	neg r3, r3
	add r1, r3, #0
	and r0, r0, r1
	strb r0, [r2]
	add r0, r5, #0
	bl sub_080C99DC
	ldrb r1, [r4]
	add r0, r5, #0
	eor r0, r0, r1
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080E77B2
	ldr r1, _080E77C8  @ =0x00001622
	add r0, r6, r1
	ldrb r1, [r0]
	ldr r2, _080E77CC  @ =0x00001623
	add r0, r6, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _080E77D0  @ =0x000016C4
	add r0, r6, r3
	ldrb r2, [r0]
	add r3, r3, #1
	add r0, r6, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #4
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #15
	bhi _080E778A
	ldr r1, _080E77D4  @ =0x00001624
	add r0, r6, r1
	ldrb r1, [r0]
	ldr r2, _080E77D8  @ =0x00001625
	add r0, r6, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r3, r3, #5
	add r0, r6, r3
	ldrb r2, [r0]
	add r3, r3, #1
	add r0, r6, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	sub r1, r1, #4
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #11
	bhi _080E778A
	add r0, r5, #0
	bl sub_080C3BD0
_080E778A:
	ldr r6, _080E77DC  @ =gRam
	ldr r1, _080E77C4  @ =0x00000996
	add r0, r6, r1
	ldrb r0, [r0]
	add r4, r5, #0
	eor r4, r4, r0
	mov r0, #3
	and r4, r4, r0
	cmp r4, #0
	bne _080E77B2
	add r0, r5, #0
	bl sub_080C7A48
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E77B2
	ldr r2, _080E77E0  @ =0x00000FA2
	add r0, r6, r2
	add r0, r5, r0
	strb r4, [r0]
_080E77B2:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080E77BC:
	.4byte 0x00001610
_080E77C0:
	.4byte 0x00001122
_080E77C4:
	.4byte 0x00000996
_080E77C8:
	.4byte 0x00001622
_080E77CC:
	.4byte 0x00001623
_080E77D0:
	.4byte 0x000016C4
_080E77D4:
	.4byte 0x00001624
_080E77D8:
	.4byte 0x00001625
_080E77DC:
	.4byte gRam
_080E77E0:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080E75CC

	THUMB_FUNC_START sub_080E77E4
sub_080E77E4: @ 0x080E77E4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp]
	mov r4, #3
	ldr r3, _080E7900  @ =gRam
	ldr r1, _080E7904  @ =0x00000FA2
	add r0, r3, r1
	ldrb r0, [r0]
	ldr r2, _080E7908  @ =0x00000FA3
	add r1, r3, r2
	ldrb r1, [r1]
	ldr r5, _080E790C  @ =0x00000FA4
	add r2, r3, r5
	add r0, r0, r1
	ldrb r2, [r2]
	add r0, r0, r2
	cmp r0, #9
	bgt _080E7816
	mov r4, #7
_080E7816:
	lsl r0, r4, #24
	cmp r0, #0
	blt _080E78EE
	mov r0, #1
	mov r10, r0
_080E7820:
	mov r0, #194
	ldr r1, [sp]
	str r3, [sp, #4]
	bl sub_080CA538
	add r7, r0, #0
	lsl r4, r4, #24
	mov r9, r4
	ldr r3, [sp, #4]
	cmp r7, #0
	blt _080E78E2
	mov r1, #150
	lsl r1, r1, #4
	add r0, r3, r1
	ldrh r4, [r0]
	add r4, r4, #4
	lsl r4, r4, #16
	lsr r6, r4, #16
	ldr r2, _080E7910  @ =0x00000964
	add r0, r3, r2
	ldrh r5, [r0]
	add r5, r5, #4
	lsl r5, r5, #16
	lsr r0, r5, #16
	mov r8, r0
	lsl r0, r7, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r3, [sp, #4]
	ldr r1, _080E7914  @ =0x00000EE2
	add r0, r3, r1
	add r0, r7, r0
	strb r6, [r0]
	ldr r2, _080E7918  @ =0x00000F02
	add r0, r3, r2
	add r0, r7, r0
	lsr r4, r4, #24
	strb r4, [r0]
	ldr r4, _080E791C  @ =0x00000ED2
	add r0, r3, r4
	add r0, r7, r0
	mov r1, r8
	strb r1, [r0]
	sub r2, r2, #16
	add r0, r3, r2
	add r0, r7, r0
	lsr r5, r5, #24
	strb r5, [r0]
	ldr r4, _080E7920  @ =0x00001172
	add r0, r3, r4
	add r0, r7, r0
	mov r5, r10
	strb r5, [r0]
	ldr r1, _080E7924  @ =0x00000EA5
	add r0, r3, r1
	add r0, r7, r0
	strb r5, [r0]
	ldr r2, _080E7928  @ =0x00001132
	add r0, r3, r2
	add r0, r7, r0
	strb r5, [r0]
	sub r4, r4, #48
	add r0, r3, r4
	add r0, r7, r0
	mov r5, #0
	strb r5, [r0]
	ldr r1, _080E792C  @ =0x00001012
	add r0, r3, r1
	add r0, r7, r0
	mov r1, #32
	strb r1, [r0]
	ldr r2, _080E7930  @ =0x00000F22
	add r1, r3, r2
	add r1, r7, r1
	ldr r0, _080E7934  @ =gUnknown_08177894
	mov r4, r9
	asr r2, r4, #24
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r5, _080E7938  @ =0x00000F12
	add r1, r3, r5
	add r1, r7, r1
	ldr r0, _080E793C  @ =gUnknown_0817789C
	add r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	str r3, [sp, #4]
	bl GetRandomInt
	ldr r1, _080E7940  @ =gUnknown_030031C2
	add r2, r7, r1
	mov r1, r10
	and r1, r1, r0
	strb r1, [r2]
	ldr r3, [sp, #4]
_080E78E2:
	mov r0, #255
	lsl r0, r0, #24
	add r0, r0, r9
	lsr r4, r0, #24
	cmp r0, #0
	bge _080E7820
_080E78EE:
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
_080E7900:
	.4byte gRam
_080E7904:
	.4byte 0x00000FA2
_080E7908:
	.4byte 0x00000FA3
_080E790C:
	.4byte 0x00000FA4
_080E7910:
	.4byte 0x00000964
_080E7914:
	.4byte 0x00000EE2
_080E7918:
	.4byte 0x00000F02
_080E791C:
	.4byte 0x00000ED2
_080E7920:
	.4byte 0x00001172
_080E7924:
	.4byte 0x00000EA5
_080E7928:
	.4byte 0x00001132
_080E792C:
	.4byte 0x00001012
_080E7930:
	.4byte 0x00000F22
_080E7934:
	.4byte gUnknown_08177894
_080E7938:
	.4byte 0x00000F12
_080E793C:
	.4byte gUnknown_0817789C
_080E7940:
	.4byte gUnknown_030031C2
	THUMB_FUNC_END sub_080E77E4

	THUMB_FUNC_START sub_080E7944
sub_080E7944: @ 0x080E7944
	bx lr
	THUMB_FUNC_END sub_080E7944

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E7948
sub_080E7948: @ 0x080E7948
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r0, _080E797C  @ =gRam
	ldr r1, _080E7980  @ =0x00001052
	add r0, r0, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsr r1, r1, #3
	mov r0, #3
	and r1, r1, r0
	lsl r1, r1, #5
	ldr r0, _080E7984  @ =gUnknown_08177814
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #4
	bl sub_080C9480
	add r0, r4, #0
	bl sub_080CA5AC
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E797C:
	.4byte gRam
_080E7980:
	.4byte 0x00001052
_080E7984:
	.4byte gUnknown_08177814
	THUMB_FUNC_END sub_080E7948

	THUMB_FUNC_START sub_080E7988
sub_080E7988: @ 0x080E7988
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _080E79B8  @ =gRam
	ldr r2, _080E79BC  @ =0x0000096C
	add r1, r0, r2
	mov r2, #2
	strb r2, [r1]
	ldr r3, _080E79C0  @ =0x0000096D
	add r1, r0, r3
	strb r2, [r1]
	ldr r1, _080E79C4  @ =0x00000FA2
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #10
	bne _080E79CC
	ldr r1, _080E79C8  @ =gUnknown_081778A4
	add r0, r4, #0
	bl sub_080C94AC
	b _080E79D4
	.byte 0x00
	.byte 0x00
_080E79B8:
	.4byte gRam
_080E79BC:
	.4byte 0x0000096C
_080E79C0:
	.4byte 0x0000096D
_080E79C4:
	.4byte 0x00000FA2
_080E79C8:
	.4byte gUnknown_081778A4
_080E79CC:
	ldr r1, _080E7A08  @ =gUnknown_081778A4
	add r0, r4, #0
	bl sub_080C94D0
_080E79D4:
	add r0, r4, #0
	bl Sprite3_CheckIfActive_Permissive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E7A2E
	add r0, r4, #0
	bl sub_080C841C
	cmp r0, #0
	bne _080E7A2E
	ldr r1, _080E7A0C  @ =gRam
	ldr r2, _080E7A10  @ =0x0000140C
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #3
	beq _080E7A14
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C8168
	b _080E7A2E
	.byte 0x00
	.byte 0x00
_080E7A08:
	.4byte gUnknown_081778A4
_080E7A0C:
	.4byte gRam
_080E7A10:
	.4byte 0x0000140C
_080E7A14:
	ldr r3, _080E7A38  @ =0x00000F82
	add r0, r1, r3
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080E7A2E
	add r0, r0, #1
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #114
	mov r2, sp
	bl sub_080C9564
_080E7A2E:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E7A38:
	.4byte 0x00000F82
	THUMB_FUNC_END sub_080E7988

	THUMB_FUNC_START sub_080E7A3C
sub_080E7A3C: @ 0x080E7A3C
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E7A4C
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E7A3C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E7A4C
sub_080E7A4C: @ 0x080E7A4C
	bx lr
	THUMB_FUNC_END sub_080E7A4C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E7A50
sub_080E7A50: @ 0x080E7A50
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E7988
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E7A50

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E7A60
sub_080E7A60: @ 0x080E7A60
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r1, _080E7AC4  @ =gRam
	ldr r2, _080E7AC8  @ =0x00001610
	add r0, r1, r2
	ldrb r0, [r0]
	add r6, r1, #0
	cmp r0, #2
	bhi _080E7ABC
	ldr r3, _080E7ACC  @ =0x000015F7
	add r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E7A9A
	ldr r1, _080E7AD0  @ =0x000010F2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E7A9A
	ldr r2, _080E7AD4  @ =gUnknown_03003E74
	ldr r1, _080E7AD8  @ =gUnknown_081778C6
	mov r0, #3
	and r0, r0, r4
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_080E7A9A:
	ldr r2, _080E7ADC  @ =0x00001172
	add r1, r6, r2
	add r1, r4, r1
	ldr r3, _080E7AE0  @ =0x00000FA2
	add r0, r6, r3
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E7AE4  @ =0x00000F82
	add r0, r6, r1
	add r5, r4, r0
	ldrb r2, [r5]
	cmp r2, #5
	bls _080E7AE8
	add r0, r4, #0
	bl sub_080E7BD4
_080E7ABC:
	add r0, r4, #0
	bl sub_080E7D28
	b _080E7B24
_080E7AC4:
	.4byte gRam
_080E7AC8:
	.4byte 0x00001610
_080E7ACC:
	.4byte 0x000015F7
_080E7AD0:
	.4byte 0x000010F2
_080E7AD4:
	.4byte gUnknown_03003E74
_080E7AD8:
	.4byte gUnknown_081778C6
_080E7ADC:
	.4byte 0x00001172
_080E7AE0:
	.4byte 0x00000FA2
_080E7AE4:
	.4byte 0x00000F82
_080E7AE8:
	add r0, r4, #0
	bl sub_080C6240
	ldrb r2, [r5]
	ldr r3, _080E7B10  @ =0x000009B2
	add r0, r6, r3
	ldr r3, _080E7B14  @ =0x0000164C
	add r1, r6, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r1, [r1]
	add r0, r0, r1
	cmp r0, #1
	bgt _080E7B18
	add r0, r4, #0
	add r1, r2, #0
	bl sub_080E7B2C
	b _080E7B24
_080E7B10:
	.4byte 0x000009B2
_080E7B14:
	.4byte 0x0000164C
_080E7B18:
	add r1, r2, #5
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl sub_080E7B2C
_080E7B24:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E7A60

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E7B2C
sub_080E7B2C: @ 0x080E7B2C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _080E7BB8  @ =gUnknown_03003E74
	ldrh r4, [r2]
	lsl r4, r4, #3
	ldr r6, _080E7BBC  @ =gUnknown_03002780
	add r4, r4, r6
	ldr r2, _080E7BC0  @ =gUnknown_081778B4
	add r1, r1, r2
	ldrb r3, [r1]
	ldr r1, _080E7BC4  @ =gUnknown_081778C0
	mov r9, r1
	ldr r2, _080E7BC8  @ =0x00000A32
	add r2, r2, r6
	mov r8, r2
	add r8, r8, r0
	mov r2, r8
	ldrb r1, [r2]
	add r1, r1, r9
	ldrb r2, [r1]
	mov r1, #1
	and r1, r1, r2
	lsl r1, r1, #8
	orr r3, r3, r1
	ldrh r2, [r4, #4]
	ldr r1, _080E7BCC  @ =0xFFFFFC00
	and r1, r1, r2
	orr r1, r1, r3
	strh r1, [r4, #4]
	mov r2, r8
	ldrb r1, [r2]
	add r1, r1, r9
	ldrb r2, [r1]
	lsr r2, r2, #1
	lsl r2, r2, #4
	ldrb r5, [r4, #5]
	mov r3, #15
	add r1, r3, #0
	and r1, r1, r5
	orr r1, r1, r2
	strb r1, [r4, #5]
	ldr r4, _080E7BD0  @ =0x00000BD2
	add r6, r6, r4
	add r6, r0, r6
	ldrb r1, [r6]
	mov r2, #192
	and r2, r2, r1
	mov r4, r8
	ldrb r1, [r4]
	add r1, r1, r9
	ldrb r1, [r1]
	and r3, r3, r1
	orr r2, r2, r3
	strb r2, [r6]
	bl sub_080E7D28
	lsl r0, r0, #24
	lsr r0, r0, #24
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r1}
	bx r1
_080E7BB8:
	.4byte gUnknown_03003E74
_080E7BBC:
	.4byte gUnknown_03002780
_080E7BC0:
	.4byte gUnknown_081778B4
_080E7BC4:
	.4byte gUnknown_081778C0
_080E7BC8:
	.4byte 0x00000A32
_080E7BCC:
	.4byte 0xFFFFFC00
_080E7BD0:
	.4byte 0x00000BD2
	THUMB_FUNC_END sub_080E7B2C

	THUMB_FUNC_START sub_080E7BD4
sub_080E7BD4: @ 0x080E7BD4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #8]
	ldr r4, _080E7CF0  @ =gRam
	ldr r0, _080E7CF4  @ =0x00001122
	add r1, r4, r0
	ldr r2, [sp, #8]
	add r1, r2, r1
	ldr r2, _080E7CF8  @ =gUnknown_081778DD
	ldr r3, _080E7CFC  @ =0x00000F82
	add r0, r4, r3
	ldr r7, [sp, #8]
	add r0, r7, r0
	ldrb r0, [r0]
	sub r0, r0, #6
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	ldr r2, [sp, #8]
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E7CE0
	mov r5, #3
	mov r8, r4
	ldr r0, _080E7D00  @ =0x00000969
	add r0, r0, r8
	mov r10, r0
	mov r1, #150
	lsl r1, r1, #4
	add r1, r1, r8
	mov r9, r1
_080E7C28:
	ldr r0, _080E7D04  @ =gUnknown_03003E74
	sub r1, r5, #3
	ldrh r0, [r0]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r1, _080E7D08  @ =gUnknown_081778CE
	add r1, r5, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	mov r2, r9
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r6, _080E7D0C  @ =0x00000964
	add r6, r6, r8
	ldr r2, _080E7D10  @ =gUnknown_081778D2
	add r2, r5, r2
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	ldrh r3, [r6]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E7D14  @ =gUnknown_081778D6
	add r3, r5, r3
	ldrb r4, [r3]
	mov r7, r10
	ldrb r3, [r7]
	orr r3, r3, r4
	lsl r3, r3, #8
	mov r4, #138
	orr r3, r3, r4
	mov r4, #2
	str r4, [sp]
	bl sub_080C6368
	sub r5, r5, #1
	cmp r5, #0
	bge _080E7C28
	mov r0, #12
	bl sub_080CF388
	ldr r1, _080E7D18  @ =0x0000056E
	add r0, r6, r1
	ldr r2, [sp, #8]
	add r0, r2, r0
	ldrb r1, [r0]
	ldr r3, _080E7D1C  @ =0x0000058E
	add r0, r6, r3
	add r0, r2, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r0, r6, #0
	sub r0, r0, #12
	ldrh r0, [r0]
	sub r1, r1, r0
	strh r1, [r6]
	mov r5, #2
	sub r7, r6, #4
	add r4, r6, #0
_080E7CAA:
	ldr r0, _080E7D04  @ =gUnknown_03003E74
	sub r1, r5, #2
	ldrh r0, [r0]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r1, _080E7D20  @ =gUnknown_081778DA
	add r1, r5, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r7]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	add r2, r2, #12
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r3, #2
	str r3, [sp]
	ldr r3, _080E7D24  @ =0x000024CC
	bl sub_080C6368
	sub r5, r5, #1
	cmp r5, #0
	bge _080E7CAA
_080E7CE0:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080E7CF0:
	.4byte gRam
_080E7CF4:
	.4byte 0x00001122
_080E7CF8:
	.4byte gUnknown_081778DD
_080E7CFC:
	.4byte 0x00000F82
_080E7D00:
	.4byte 0x00000969
_080E7D04:
	.4byte gUnknown_03003E74
_080E7D08:
	.4byte gUnknown_081778CE
_080E7D0C:
	.4byte 0x00000964
_080E7D10:
	.4byte gUnknown_081778D2
_080E7D14:
	.4byte gUnknown_081778D6
_080E7D18:
	.4byte 0x0000056E
_080E7D1C:
	.4byte 0x0000058E
_080E7D20:
	.4byte gUnknown_081778DA
_080E7D24:
	.4byte 0x000024CC
	THUMB_FUNC_END sub_080E7BD4

	THUMB_FUNC_START sub_080E7D28
sub_080E7D28: @ 0x080E7D28
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r4, r0, #0
	ldr r0, _080E7D44  @ =gRam
	ldr r1, _080E7D48  @ =0x00000FA2
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #9
	beq _080E7D4C
	mov r0, #0
	b _080E7D64
	.byte 0x00
	.byte 0x00
_080E7D44:
	.4byte gRam
_080E7D48:
	.4byte 0x00000FA2
_080E7D4C:
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E7D62
	add r0, r4, #0
	bl sub_080E7D6C
	mov r0, #0
	b _080E7D64
_080E7D62:
	mov r0, #1
_080E7D64:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080E7D28

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E7D6C
sub_080E7D6C: @ 0x080E7D6C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl Sprite3_Move
	ldr r0, _080E7D9C  @ =gRam
	ldr r1, _080E7DA0  @ =0x00001062
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E7D8E
	add r0, r4, #0
	bl sub_080C6F48
_080E7D8E:
	add r0, r5, #0
	bl sub_080C811C
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E7D9C:
	.4byte gRam
_080E7DA0:
	.4byte 0x00001062
	THUMB_FUNC_END sub_080E7D6C

	THUMB_FUNC_START sub_080E7DA4
sub_080E7DA4: @ 0x080E7DA4
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080E7DE8  @ =gRam
	ldr r1, _080E7DEC  @ =0x00000FA2
	add r0, r4, r1
	add r7, r5, r0
	ldrb r0, [r7]
	cmp r0, #9
	bne _080E7DFC
	add r1, r1, #192
	add r0, r4, r1
	add r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E7DFC
	mov r6, #0
	strb r6, [r1]
	ldr r0, _080E7DF0  @ =0x00000F22
	add r4, r4, r0
	add r4, r5, r4
	mov r0, #1
	strb r0, [r4]
	add r0, r5, #0
	bl sub_080C7A20
	lsl r0, r0, #24
	strb r6, [r4]
	cmp r0, #0
	beq _080E7DF4
	strb r6, [r7]
	b _080E7E70
	.byte 0x00
	.byte 0x00
_080E7DE8:
	.4byte gRam
_080E7DEC:
	.4byte 0x00000FA2
_080E7DF0:
	.4byte 0x00000F22
_080E7DF4:
	add r0, r5, #0
	mov r1, #108
	bl sub_080CF0AC
_080E7DFC:
	ldr r4, _080E7E78  @ =gRam
	ldr r1, _080E7E7C  @ =0x00000F82
	add r0, r4, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E7E14
	ldr r1, _080E7E80  @ =0x00000D94
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #48
	strb r1, [r0]
_080E7E14:
	add r0, r5, #0
	bl sub_080E7E90
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E7E70
	ldr r1, _080E7E84  @ =0x00001122
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080E7E40
	add r0, r5, #0
	bl sub_080C841C
	cmp r0, #0
	bne _080E7E70
_080E7E40:
	ldr r1, _080E7E88  @ =0x00000F52
	add r0, r4, r1
	add r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #1
	bls _080E7E54
	mov r0, sp
	add r1, r5, #0
	bl sub_080C4948
_080E7E54:
	add r0, r5, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E7E70
	ldr r0, _080E7E8C  @ =gUnknown_081778E0
	ldrb r1, [r4]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r5, #0
	bl _call_via_r1
_080E7E70:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_080E7E78:
	.4byte gRam
_080E7E7C:
	.4byte 0x00000F82
_080E7E80:
	.4byte 0x00000D94
_080E7E84:
	.4byte 0x00001122
_080E7E88:
	.4byte 0x00000F52
_080E7E8C:
	.4byte gUnknown_081778E0
	THUMB_FUNC_END sub_080E7DA4

	THUMB_FUNC_START sub_080E7E90
sub_080E7E90: @ 0x080E7E90
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r4, _080E7F18  @ =gRam
	ldr r1, _080E7F1C  @ =0x00001122
	add r0, r4, r1
	add r0, r0, r7
	mov r8, r0
	ldrb r1, [r0]
	mov r0, #1
	mov r9, r0
	and r0, r0, r1
	cmp r0, #0
	bne _080E7EBE
	ldr r1, _080E7F20  @ =0x00001610
	add r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080E7F4C
_080E7EBE:
	ldr r1, _080E7F24  @ =0x000010E2
	add r0, r4, r1
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E7ED0
	mov r0, #8
	bl sub_080CF388
_080E7ED0:
	ldr r1, _080E7F28  @ =0x00000F52
	add r0, r4, r1
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E7F30
	add r1, r1, #64
	add r0, r4, r1
	add r5, r7, r0
	ldrb r6, [r5]
	cmp r6, #3
	bhi _080E7F3E
	mov r0, r8
	ldrb r4, [r0]
	ldr r0, _080E7F2C  @ =gUnknown_081778F0
	add r0, r6, r0
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, r8
	strb r0, [r1]
	mov r1, r9
	and r0, r0, r1
	mov r1, #1
	eor r0, r0, r1
	lsl r0, r0, #2
	ldrb r1, [r5]
	add r0, r0, r1
	strb r0, [r5]
	add r0, r7, #0
	bl sub_080C6240
	mov r0, r8
	strb r4, [r0]
	strb r6, [r5]
	b _080E7F4C
_080E7F18:
	.4byte gRam
_080E7F1C:
	.4byte 0x00001122
_080E7F20:
	.4byte 0x00001610
_080E7F24:
	.4byte 0x000010E2
_080E7F28:
	.4byte 0x00000F52
_080E7F2C:
	.4byte gUnknown_081778F0
_080E7F30:
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r7, #0
	bl sub_080C632C
	b _080E7F4C
_080E7F3E:
	lsl r1, r6, #3
	ldr r0, _080E7F5C  @ =gUnknown_081778D4
	add r1, r1, r0
	add r0, r7, #0
	mov r2, #2
	bl sub_080C9480
_080E7F4C:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E7F5C:
	.4byte gUnknown_081778D4
	THUMB_FUNC_END sub_080E7E90

	THUMB_FUNC_START sub_080E7F60
sub_080E7F60: @ 0x080E7F60
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r2, _080E801C  @ =gRam
	ldr r0, _080E8020  @ =0x00001132
	add r4, r2, r0
	add r4, r6, r4
	ldrb r5, [r4]
	mov r1, #9
	add r0, r5, #0
	orr r0, r0, r1
	strb r0, [r4]
	ldr r1, _080E8024  @ =0x00001012
	add r0, r2, r1
	add r7, r6, r0
	ldrb r1, [r7]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r7]
	add r0, r6, #0
	str r2, [sp]
	bl sub_080C4F98
	strb r5, [r4]
	lsl r0, r0, #24
	ldr r2, [sp]
	cmp r0, #0
	beq _080E8014
	ldr r3, _080E8028  @ =0x00000F52
	add r1, r2, r3
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080E802C  @ =0x00000FC2
	add r1, r2, r0
	add r1, r6, r1
	mov r0, #127
	strb r0, [r1]
	ldrb r1, [r7]
	and r0, r0, r1
	strb r0, [r7]
	ldr r1, _080E8030  @ =0x00000EE2
	add r0, r2, r1
	add r0, r6, r0
	ldr r3, _080E8034  @ =0x000016C4
	add r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080E8038  @ =0x00000F02
	add r0, r2, r1
	add r0, r6, r0
	add r3, r3, #1
	add r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	mov r1, #182
	lsl r1, r1, #5
	add r0, r2, r1
	ldrb r1, [r0]
	sub r3, r3, #4
	add r0, r2, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	orr r1, r1, r0
	add r1, r1, #8
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, _080E803C  @ =0x00000ED2
	add r0, r2, r3
	add r0, r6, r0
	strb r1, [r0]
	add r3, r3, #32
	add r0, r2, r3
	add r0, r6, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r1, _080E8040  @ =0x000010E2
	add r0, r2, r1
	add r0, r6, r0
	mov r1, #48
	strb r1, [r0]
	ldr r3, _080E8044  @ =0x00001172
	add r0, r2, r3
	add r0, r6, r0
	mov r1, #0
	strb r1, [r0]
_080E8014:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_080E801C:
	.4byte gRam
_080E8020:
	.4byte 0x00001132
_080E8024:
	.4byte 0x00001012
_080E8028:
	.4byte 0x00000F52
_080E802C:
	.4byte 0x00000FC2
_080E8030:
	.4byte 0x00000EE2
_080E8034:
	.4byte 0x000016C4
_080E8038:
	.4byte 0x00000F02
_080E803C:
	.4byte 0x00000ED2
_080E8040:
	.4byte 0x000010E2
_080E8044:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080E7F60

	THUMB_FUNC_START sub_080E8048
sub_080E8048: @ 0x080E8048
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r2, _080E8070  @ =gRam
	ldr r1, _080E8074  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E8080
	ldr r3, _080E8078  @ =0x00000F92
	add r1, r2, r3
	add r1, r4, r1
	ldr r2, _080E807C  @ =gUnknown_08177934
	lsr r0, r0, #27
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	b _080E80A6
_080E8070:
	.4byte gRam
_080E8074:
	.4byte 0x00000FC2
_080E8078:
	.4byte 0x00000F92
_080E807C:
	.4byte gUnknown_08177934
_080E8080:
	ldr r0, _080E80AC  @ =0x00000F52
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080E80B0  @ =0x00001152
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #32
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #16
	bl sub_080C35FC
	add r0, r4, #0
	mov r1, #94
	bl sub_080CF140
_080E80A6:
	pop {r4}
	pop {r0}
	bx r0
_080E80AC:
	.4byte 0x00000F52
_080E80B0:
	.4byte 0x00001152
	THUMB_FUNC_END sub_080E8048

	THUMB_FUNC_START sub_080E80B4
sub_080E80B4: @ 0x080E80B4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r4, r5, #0
	ldr r0, _080E8140  @ =gRam
	mov r8, r0
	ldr r0, _080E8144  @ =0x00000FC2
	add r0, r0, r8
	add r0, r0, r5
	mov r9, r0
	ldrb r7, [r0]
	cmp r7, #0
	bne _080E8158
	mov r0, sp
	add r1, r5, #0
	bl sub_080C4948
	add r0, r5, #0
	bl Sprite3_Move
	add r0, r5, #0
	bl sub_080C7A20
	ldr r0, _080E8148  @ =0x00001142
	add r0, r0, r8
	add r6, r5, r0
	ldrb r4, [r6]
	add r0, r5, #0
	bl sub_080C2C4C
	ldr r0, _080E814C  @ =0x00001152
	add r0, r0, r8
	add r2, r5, r0
	ldrb r1, [r2]
	add r0, r1, #0
	add r0, r0, #64
	mov r3, #128
	and r0, r0, r3
	cmp r0, #0
	bne _080E8110
	sub r0, r1, #2
	strb r0, [r2]
_080E8110:
	ldrb r1, [r6]
	eor r4, r4, r1
	and r4, r4, r3
	cmp r4, #0
	beq _080E81B4
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080E81B4
	strb r7, [r2]
	strb r7, [r6]
	ldr r0, _080E8150  @ =0x00000F82
	add r0, r0, r8
	add r0, r5, r0
	strb r7, [r0]
	mov r0, #31
	mov r1, r9
	strb r0, [r1]
	ldr r0, _080E8154  @ =0x00001082
	add r0, r0, r8
	add r0, r5, r0
	mov r1, #8
	strb r1, [r0]
	b _080E81B4
_080E8140:
	.4byte gRam
_080E8144:
	.4byte 0x00000FC2
_080E8148:
	.4byte 0x00001142
_080E814C:
	.4byte 0x00001152
_080E8150:
	.4byte 0x00000F82
_080E8154:
	.4byte 0x00001082
_080E8158:
	mov r1, r9
	ldrb r0, [r1]
	cmp r0, #1
	bne _080E8184
	mov r2, #0
	mov r0, #32
	strb r0, [r1]
	ldr r1, _080E817C  @ =0x00000F52
	add r1, r1, r8
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080E8180  @ =0x00000F92
	add r0, r0, r8
	add r0, r5, r0
	strb r2, [r0]
	b _080E81B4
_080E817C:
	.4byte 0x00000F52
_080E8180:
	.4byte 0x00000F92
_080E8184:
	ldr r1, _080E81C4  @ =0x00000F92
	add r1, r1, r8
	add r1, r4, r1
	ldr r2, _080E81C8  @ =gUnknown_08177944
	lsr r0, r0, #4
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080E81CC  @ =0x00000F22
	add r2, r2, r8
	add r2, r4, r2
	ldr r3, _080E81D0  @ =gUnknown_08177946
	ldr r0, _080E81D4  @ =0x00000996
	add r0, r0, r8
	ldrb r0, [r0]
	lsr r0, r0, #1
	mov r1, #1
	and r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	add r0, r4, #0
	bl Sprite3_MoveHoriz
_080E81B4:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E81C4:
	.4byte 0x00000F92
_080E81C8:
	.4byte gUnknown_08177944
_080E81CC:
	.4byte 0x00000F22
_080E81D0:
	.4byte gUnknown_08177946
_080E81D4:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080E80B4

	THUMB_FUNC_START sub_080E81D8
sub_080E81D8: @ 0x080E81D8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	add r0, r4, #0
	bl sub_080C4F98
	ldr r6, _080E82C0  @ =gRam
	ldr r1, _080E82C4  @ =0x00000FD2
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E8230
	add r0, r4, #0
	mov r1, #48
	bl sub_080C35FC
	bl GetRandomInt
	mov r1, #63
	and r1, r1, r0
	mov r0, #96
	orr r1, r1, r0
	strb r1, [r5]
	ldr r2, _080E82C8  @ =0x00001122
	add r3, r6, r2
	add r3, r4, r3
	ldrb r1, [r3]
	lsl r0, r1, #2
	strb r0, [r3]
	ldr r2, _080E82CC  @ =0x00000F22
	add r0, r6, r2
	add r0, r4, r0
	ldrb r2, [r0]
	mov r0, #128
	and r0, r0, r2
	lsl r1, r1, #26
	lsr r1, r1, #25
	orr r0, r0, r1
	lsr r0, r0, #1
	strb r0, [r3]
_080E8230:
	ldr r3, _080E82D0  @ =0x00000FE2
	add r0, r6, r3
	add r0, r0, r4
	mov r8, r0
	ldrb r0, [r0]
	lsl r1, r0, #24
	cmp r1, #0
	bne _080E82E4
	ldr r1, _080E82D4  @ =0x00001052
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r5, #14
	and r5, r5, r1
	ldr r2, _080E82D8  @ =0x00001042
	add r0, r6, r2
	add r0, r4, r0
	ldrb r0, [r0]
	orr r5, r5, r0
	cmp r5, #0
	bne _080E829E
	add r0, r4, #0
	bl Sprite3_Move
	ldr r3, _080E82DC  @ =0x000010A2
	add r0, r6, r3
	add r2, r4, r0
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	sub r3, r3, #32
	add r1, r6, r3
	add r6, r4, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r6]
	cmp r0, r1
	bne _080E829E
	strb r5, [r2]
	bl GetRandomInt
	mov r4, #31
	add r1, r4, #0
	and r1, r1, r0
	add r1, r1, #64
	mov r2, r8
	strb r1, [r2]
	bl GetRandomInt
	and r4, r4, r0
	mov r0, #16
	orr r4, r4, r0
	strb r4, [r6]
_080E829E:
	add r0, r7, #0
	bl sub_080C7A20
	ldr r0, _080E82C0  @ =gRam
	ldr r3, _080E82E0  @ =0x00000F92
	add r2, r0, r3
	add r2, r7, r2
	ldr r1, _080E82D4  @ =0x00001052
	add r0, r0, r1
	add r0, r7, r0
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #27
	strb r0, [r2]
	b _080E82F2
_080E82C0:
	.4byte gRam
_080E82C4:
	.4byte 0x00000FD2
_080E82C8:
	.4byte 0x00001122
_080E82CC:
	.4byte 0x00000F22
_080E82D0:
	.4byte 0x00000FE2
_080E82D4:
	.4byte 0x00001052
_080E82D8:
	.4byte 0x00001042
_080E82DC:
	.4byte 0x000010A2
_080E82E0:
	.4byte 0x00000F92
_080E82E4:
	ldr r2, _080E82FC  @ =0x00000F92
	add r0, r6, r2
	add r0, r7, r0
	lsr r1, r1, #28
	mov r2, #1
	and r1, r1, r2
	strb r1, [r0]
_080E82F2:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080E82FC:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080E81D8

	THUMB_FUNC_START sub_080E8300
sub_080E8300: @ 0x080E8300
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E7DA4
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E8300

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E8310
sub_080E8310: @ 0x080E8310
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080E832C  @ =gRam
	ldr r2, _080E8330  @ =0x00000F92
	add r1, r1, r2
	add r1, r0, r1
	mov r2, #4
	strb r2, [r1]
	bl sub_080C3758
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E832C:
	.4byte gRam
_080E8330:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080E8310

	THUMB_FUNC_START sub_080E8334
sub_080E8334: @ 0x080E8334
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080E84D0  @ =gRam
	ldr r1, _080E84D4  @ =0x00001062
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	cmp r1, #0
	bne _080E834C
	b _080E8548
_080E834C:
	ldr r2, _080E84D8  @ =0x00001172
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	ldr r1, _080E84DC  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E8366
	mov r0, #4
	bl sub_080CF3A0
_080E8366:
	add r0, r4, #0
	bl sub_080C58F0
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	beq _080E837C
	b _080E85C8
_080E837C:
	add r0, r4, #0
	bl sub_080E8914
	add r0, r4, #0
	bl sub_080C4F98
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E8390
	b _080E8538
_080E8390:
	add r0, r4, #0
	bl Sprite3_Move
	ldr r2, _080E84E0  @ =0x000009B2
	add r0, r5, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080E83D0
	ldr r1, _080E84E4  @ =0x00000FD2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E83D0
	sub r2, r2, #28
	add r0, r5, r2
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _080E83D0
	add r0, r4, #0
	bl sub_080C79F8
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E83D0
	b _080E852C
_080E83D0:
	ldr r6, _080E84D0  @ =gRam
	ldr r1, _080E84E8  @ =0x0000176C
	add r0, r6, r1
	ldr r2, _080E84EC  @ =0x0000180D
	add r1, r6, r2
	ldrb r2, [r0]
	ldrb r0, [r1]
	add r7, r0, #0
	orr r7, r7, r2
	cmp r7, #0
	beq _080E83E8
	b _080E85C8
_080E83E8:
	ldr r1, _080E84F0  @ =0x00001791
	add r0, r6, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _080E83F8
	b _080E85C8
_080E83F8:
	ldr r0, _080E84F4  @ =gShield
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080E8402
	b _080E85C8
_080E8402:
	mov r2, #161
	lsl r2, r2, #4
	add r0, r6, r2
	ldr r2, _080E84F8  @ =0x000010F2
	add r1, r6, r2
	add r1, r4, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080E8418
	b _080E85C8
_080E8418:
	add r0, r4, #0
	bl sub_080C4574
	ldr r1, _080E84FC  @ =0x000016D5
	add r0, r6, r1
	ldrb r0, [r0]
	lsr r5, r0, #1
	ldr r2, _080E8500  @ =0x000016EA
	add r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E8436
	ldr r0, _080E8504  @ =gUnknown_0817795C
	add r0, r5, r0
	ldrb r5, [r0]
_080E8436:
	ldr r1, _080E8508  @ =0x000016C4
	add r0, r6, r1
	ldrb r2, [r0]
	add r1, r1, #1
	add r0, r6, r1
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r1, r1, #8
	ldr r0, _080E850C  @ =gUnknown_08177958
	add r0, r5, r0
	orr r2, r2, r1
	ldrb r0, [r0]
	add r2, r2, r0
	ldr r0, _080E8510  @ =gUnknown_08177960
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	mov r1, #182
	lsl r1, r1, #5
	add r0, r6, r1
	ldrb r3, [r0]
	add r1, r1, #1
	add r0, r6, r1
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r1, r1, #8
	ldr r0, _080E8514  @ =gUnknown_08177964
	add r0, r5, r0
	orr r3, r3, r1
	ldrb r0, [r0]
	add r3, r3, r0
	mov r1, #150
	lsl r1, r1, #4
	add r0, r6, r1
	strb r2, [r0]
	lsr r2, r2, #8
	add r1, r1, #16
	add r0, r6, r1
	strb r2, [r0]
	ldr r0, _080E8518  @ =gUnknown_08177968
	add r0, r5, r0
	ldrb r1, [r0]
	ldr r2, _080E851C  @ =0x00000964
	add r0, r6, r2
	strb r1, [r0]
	ldr r1, _080E8520  @ =0x00000961
	add r0, r6, r1
	strb r3, [r0]
	lsr r3, r3, #8
	add r2, r2, #13
	add r0, r6, r2
	strb r3, [r0]
	ldr r0, _080E8524  @ =gUnknown_0817796C
	add r0, r5, r0
	ldrb r1, [r0]
	sub r2, r2, #12
	add r0, r6, r2
	strb r1, [r0]
	bl sub_080C466C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E84B8
	b _080E85C8
_080E84B8:
	add r0, r4, #0
	bl sub_080C444C
	ldr r1, _080E8528  @ =0x00000FA2
	add r0, r6, r1
	add r0, r4, r0
	strb r7, [r0]
	add r0, r4, #0
	mov r1, #9
	bl sub_080CF0AC
	b _080E85C8
_080E84D0:
	.4byte gRam
_080E84D4:
	.4byte 0x00001062
_080E84D8:
	.4byte 0x00001172
_080E84DC:
	.4byte 0x00000FC2
_080E84E0:
	.4byte 0x000009B2
_080E84E4:
	.4byte 0x00000FD2
_080E84E8:
	.4byte 0x0000176C
_080E84EC:
	.4byte 0x0000180D
_080E84F0:
	.4byte 0x00001791
_080E84F4:
	.4byte gShield
_080E84F8:
	.4byte 0x000010F2
_080E84FC:
	.4byte 0x000016D5
_080E8500:
	.4byte 0x000016EA
_080E8504:
	.4byte gUnknown_0817795C
_080E8508:
	.4byte 0x000016C4
_080E850C:
	.4byte gUnknown_08177958
_080E8510:
	.4byte gUnknown_08177960
_080E8514:
	.4byte gUnknown_08177964
_080E8518:
	.4byte gUnknown_08177968
_080E851C:
	.4byte 0x00000964
_080E8520:
	.4byte 0x00000961
_080E8524:
	.4byte gUnknown_0817796C
_080E8528:
	.4byte 0x00000FA2
_080E852C:
	ldr r2, _080E8534  @ =0x00000FA2
	add r0, r5, r2
	b _080E853C
	.byte 0x00
	.byte 0x00
_080E8534:
	.4byte 0x00000FA2
_080E8538:
	ldr r1, _080E8544  @ =0x00000FA2
	add r0, r5, r1
_080E853C:
	add r0, r4, r0
	strb r6, [r0]
	b _080E85C8
	.byte 0x00
	.byte 0x00
_080E8544:
	.4byte 0x00000FA2
_080E8548:
	ldr r2, _080E855C  @ =0x00000F52
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E8560
	add r0, r4, #0
	bl sub_080E8808
	b _080E8572
_080E855C:
	.4byte 0x00000F52
_080E8560:
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r4, #0
	bl sub_080C632C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E85C8
_080E8572:
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E85C8
	ldr r0, _080E8598  @ =gRam
	ldr r1, _080E859C  @ =0x00000F52
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #1
	beq _080E85B2
	cmp r0, #1
	bgt _080E85A0
	cmp r0, #0
	beq _080E85AA
	b _080E85C8
	.byte 0x00
	.byte 0x00
_080E8598:
	.4byte gRam
_080E859C:
	.4byte 0x00000F52
_080E85A0:
	cmp r0, #2
	beq _080E85BA
	cmp r0, #3
	beq _080E85C2
	b _080E85C8
_080E85AA:
	add r0, r4, #0
	bl sub_080E85D0
	b _080E85C8
_080E85B2:
	add r0, r4, #0
	bl sub_080E86D8
	b _080E85C8
_080E85BA:
	add r0, r4, #0
	bl sub_080E8748
	b _080E85C8
_080E85C2:
	add r0, r4, #0
	bl sub_080E87AC
_080E85C8:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E8334

	THUMB_FUNC_START sub_080E85D0
sub_080E85D0: @ 0x080E85D0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080E86A0  @ =gRam
	ldr r0, _080E86A4  @ =0x00001172
	add r1, r6, r0
	add r1, r5, r1
	ldr r2, _080E86A8  @ =0x00000FC2
	add r0, r6, r2
	add r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r1]
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	bne _080E8696
	bl GetRandomInt
	mov r1, #7
	and r1, r1, r0
	ldr r7, _080E86AC  @ =0x00000F62
	add r0, r6, r7
	add r0, r5, r0
	ldrb r2, [r0]
	ldr r3, _080E86B0  @ =0x00000F72
	add r0, r6, r3
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r0, _080E86B4  @ =gUnknown_08177970
	add r0, r1, r0
	ldrb r3, [r0]
	add r2, r3, r2
	ldr r0, _080E86B8  @ =gUnknown_08177978
	add r1, r1, r0
	ldrb r4, [r1]
	lsl r4, r4, #8
	add r2, r2, r4
	add r7, r7, #32
	add r0, r6, r7
	add r0, r5, r0
	ldrb r1, [r0]
	ldr r7, _080E86BC  @ =0x00001082
	add r0, r6, r7
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r3, r3, r1
	add r3, r3, r4
	ldr r1, _080E86C0  @ =0x00000EE2
	add r0, r6, r1
	add r0, r5, r0
	strb r2, [r0]
	ldr r7, _080E86C4  @ =0x00000F02
	add r0, r6, r7
	add r0, r5, r0
	lsr r2, r2, #8
	strb r2, [r0]
	sub r1, r1, #16
	add r0, r6, r1
	add r0, r5, r0
	strb r3, [r0]
	ldr r2, _080E86C8  @ =0x00000EF2
	add r0, r6, r2
	add r0, r5, r0
	lsr r3, r3, #8
	strb r3, [r0]
	add r0, r5, #0
	bl sub_080C1F70
	add r0, r5, #0
	bl sub_080C79F8
	ldr r3, _080E86CC  @ =0x000015E2
	add r0, r6, r3
	ldrh r0, [r0]
	cmp r0, #8
	bne _080E8696
	mov r0, #127
	mov r7, r8
	strb r0, [r7]
	ldr r0, _080E86D0  @ =0x00000F52
	add r1, r6, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r2, _080E86D4  @ =0x00001032
	add r1, r6, r2
	add r1, r5, r1
	ldrb r0, [r1]
	mov r2, #64
	orr r0, r0, r2
	strb r0, [r1]
_080E8696:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080E86A0:
	.4byte gRam
_080E86A4:
	.4byte 0x00001172
_080E86A8:
	.4byte 0x00000FC2
_080E86AC:
	.4byte 0x00000F62
_080E86B0:
	.4byte 0x00000F72
_080E86B4:
	.4byte gUnknown_08177970
_080E86B8:
	.4byte gUnknown_08177978
_080E86BC:
	.4byte 0x00001082
_080E86C0:
	.4byte 0x00000EE2
_080E86C4:
	.4byte 0x00000F02
_080E86C8:
	.4byte 0x00000EF2
_080E86CC:
	.4byte 0x000015E2
_080E86D0:
	.4byte 0x00000F52
_080E86D4:
	.4byte 0x00001032
	THUMB_FUNC_END sub_080E85D0

	THUMB_FUNC_START sub_080E86D8
sub_080E86D8: @ 0x080E86D8
	push {r4,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r4, _080E8708  @ =gRam
	ldr r0, _080E870C  @ =0x00001172
	add r1, r4, r0
	add r1, r3, r1
	ldr r2, _080E8710  @ =0x00000FC2
	add r0, r4, r2
	add r2, r3, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldrb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E871C
	ldr r2, _080E8714  @ =0x00000F92
	add r1, r4, r2
	add r1, r3, r1
	ldr r2, _080E8718  @ =gUnknown_08177948
	lsr r0, r0, #27
	add r0, r0, r2
	ldrb r0, [r0]
	b _080E8738
_080E8708:
	.4byte gRam
_080E870C:
	.4byte 0x00001172
_080E8710:
	.4byte 0x00000FC2
_080E8714:
	.4byte 0x00000F92
_080E8718:
	.4byte gUnknown_08177948
_080E871C:
	ldr r0, _080E8740  @ =0x00000F52
	add r1, r4, r0
	add r1, r3, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #127
	strb r0, [r2]
	ldr r2, _080E8744  @ =0x00001032
	add r1, r4, r2
	add r1, r3, r1
	ldrb r2, [r1]
	mov r0, #191
	and r0, r0, r2
_080E8738:
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
_080E8740:
	.4byte 0x00000F52
_080E8744:
	.4byte 0x00001032
	THUMB_FUNC_END sub_080E86D8

	THUMB_FUNC_START sub_080E8748
sub_080E8748: @ 0x080E8748
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C5044
	ldr r6, _080E8780  @ =gRam
	ldr r1, _080E8784  @ =0x00000FC2
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080E8790
	cmp r0, #48
	bne _080E876C
	add r0, r4, #0
	bl sub_080E89E4
_080E876C:
	ldr r0, _080E8788  @ =0x00000F92
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080E878C  @ =gUnknown_08177980
	ldrb r0, [r5]
	lsr r0, r0, #4
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	b _080E87A0
_080E8780:
	.4byte gRam
_080E8784:
	.4byte 0x00000FC2
_080E8788:
	.4byte 0x00000F92
_080E878C:
	.4byte gUnknown_08177980
_080E8790:
	ldr r1, _080E87A8  @ =0x00000F52
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #23
	strb r0, [r5]
_080E87A0:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E87A8:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E8748

	THUMB_FUNC_START sub_080E87AC
sub_080E87AC: @ 0x080E87AC
	push {r4,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r4, _080E87D8  @ =gRam
	ldr r1, _080E87DC  @ =0x00000FC2
	add r0, r4, r1
	add r1, r3, r0
	ldrb r0, [r1]
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	beq _080E87E8
	ldr r2, _080E87E0  @ =0x00000F92
	add r1, r4, r2
	add r1, r3, r1
	ldr r2, _080E87E4  @ =gUnknown_08177988
	lsr r0, r0, #26
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	b _080E87FC
	.byte 0x00
	.byte 0x00
_080E87D8:
	.4byte gRam
_080E87DC:
	.4byte 0x00000FC2
_080E87E0:
	.4byte 0x00000F92
_080E87E4:
	.4byte gUnknown_08177988
_080E87E8:
	mov r0, #128
	strb r0, [r1]
	ldr r1, _080E8804  @ =0x00000F92
	add r0, r4, r1
	add r0, r3, r0
	strb r2, [r0]
	sub r1, r1, #64
	add r0, r4, r1
	add r0, r3, r0
	strb r2, [r0]
_080E87FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E8804:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080E87AC

	THUMB_FUNC_START sub_080E8808
sub_080E8808: @ 0x080E8808
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r9
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E88D4
	ldr r2, _080E88E4  @ =gRam
	ldr r1, _080E88E8  @ =0x00000F92
	add r0, r2, r1
	add r0, r0, r9
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r3, _080E88EC  @ =0x0000096C
	add r1, r2, r3
	strb r0, [r1]
	mov r0, #1
	mov r10, r2
	add r7, sp, #4
	mov r8, r7
_080E8846:
	lsl r0, r0, #24
	asr r6, r0, #24
	ldr r0, _080E88E8  @ =0x00000F92
	add r0, r0, r10
	add r0, r0, r9
	ldrb r7, [r0]
	lsl r0, r7, #1
	add r5, r6, r0
	ldr r1, _080E88F0  @ =gUnknown_081779FC
	add r0, r5, r1
	ldrb r4, [r0]
	ldr r0, _080E88F4  @ =gUnknown_08177A16
	add r0, r5, r0
	ldrb r1, [r0]
	lsl r0, r1, #8
	orr r4, r4, r0
	mov r0, #15
	and r1, r1, r0
	cmp r1, #0
	bne _080E8880
	ldr r0, _080E88F8  @ =0x00000969
	add r0, r0, r10
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	orr r4, r4, r0
	lsl r0, r4, #16
	lsr r4, r0, #16
_080E8880:
	ldr r0, _080E88FC  @ =gUnknown_03003E74
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r2, _080E8900  @ =gUnknown_08177994
	lsl r3, r6, #1
	lsl r1, r7, #2
	add r3, r3, r1
	add r2, r3, r2
	ldrh r1, [r2]
	ldr r7, _080E8904  @ =gUnknown_03002B90
	ldrh r7, [r7]
	add r1, r1, r7
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080E8908  @ =gUnknown_081779C8
	add r3, r3, r2
	ldrh r2, [r3]
	ldr r3, _080E890C  @ =gUnknown_03002B94
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E8910  @ =gUnknown_08177A30
	add r3, r5, r3
	ldrb r3, [r3]
	str r3, [sp]
	add r3, r4, #0
	bl sub_080C6368
	sub r1, r6, #1
	lsl r1, r1, #24
	mov r7, r8
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	lsr r0, r1, #24
	cmp r1, #0
	bge _080E8846
_080E88D4:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080E88E4:
	.4byte gRam
_080E88E8:
	.4byte 0x00000F92
_080E88EC:
	.4byte 0x0000096C
_080E88F0:
	.4byte gUnknown_081779FC
_080E88F4:
	.4byte gUnknown_08177A16
_080E88F8:
	.4byte 0x00000969
_080E88FC:
	.4byte gUnknown_03003E74
_080E8900:
	.4byte gUnknown_08177994
_080E8904:
	.4byte gUnknown_03002B90
_080E8908:
	.4byte gUnknown_081779C8
_080E890C:
	.4byte gUnknown_03002B94
_080E8910:
	.4byte gUnknown_08177A30
	THUMB_FUNC_END sub_080E8808

	THUMB_FUNC_START sub_080E8914
sub_080E8914: @ 0x080E8914
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080E89A4  @ =gRam
	ldr r3, _080E89A8  @ =0x00000996
	add r1, r2, r3
	ldrb r1, [r1]
	eor r0, r0, r1
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080E89DE
	mov r1, #29
	ldr r4, _080E89AC  @ =0x000011D2
	add r5, r2, r4
	mov r4, #8
	ldr r0, _080E89B0  @ =0x000015F8
	add r6, r2, r0
	ldr r3, _080E89B4  @ =0x000012FE
	add r7, r2, r3
_080E893C:
	lsl r0, r1, #24
	asr r3, r0, #24
	add r1, r3, r5
	ldrb r0, [r1]
	cmp r0, #0
	bne _080E89D4
	strb r4, [r1]
	strb r4, [r6]
	add r1, r3, r7
	mov r0, #11
	strb r0, [r1]
	ldr r4, _080E89B8  @ =0x0000122C
	add r1, r2, r4
	add r1, r3, r1
	ldr r4, _080E89BC  @ =0x00001622
	add r0, r2, r4
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080E89C0  @ =0x00001268
	add r1, r2, r0
	add r1, r3, r1
	add r4, r4, #1
	add r0, r2, r4
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E89C4  @ =0x00001624
	add r0, r2, r1
	ldrb r1, [r0]
	add r4, r4, #2
	add r0, r2, r4
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #16
	ldr r4, _080E89C8  @ =0x0000120E
	add r0, r2, r4
	add r0, r3, r0
	strb r1, [r0]
	add r4, r4, #60
	add r0, r2, r4
	add r0, r3, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r0, _080E89CC  @ =0x0000131C
	add r1, r2, r0
	add r1, r3, r1
	ldr r3, _080E89D0  @ =0x000015DC
	add r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	b _080E89DE
	.byte 0x00
	.byte 0x00
_080E89A4:
	.4byte gRam
_080E89A8:
	.4byte 0x00000996
_080E89AC:
	.4byte 0x000011D2
_080E89B0:
	.4byte 0x000015F8
_080E89B4:
	.4byte 0x000012FE
_080E89B8:
	.4byte 0x0000122C
_080E89BC:
	.4byte 0x00001622
_080E89C0:
	.4byte 0x00001268
_080E89C4:
	.4byte 0x00001624
_080E89C8:
	.4byte 0x0000120E
_080E89CC:
	.4byte 0x0000131C
_080E89D0:
	.4byte 0x000015DC
_080E89D4:
	sub r0, r3, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r0, #0
	bge _080E893C
_080E89DE:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E8914

	THUMB_FUNC_START sub_080E89E4
sub_080E89E4: @ 0x080E89E4
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, #85
	add r1, r4, #0
	mov r2, #13
	bl sub_080C9AAC
	add r6, r0, #0
	cmp r6, #0
	blt _080E8AAE
	add r0, r4, #0
	mov r1, #89
	bl sub_080CF140
	ldr r4, _080E8AB8  @ =gRam
	mov r1, #150
	lsl r1, r1, #4
	add r0, r4, r1
	ldrh r1, [r0]
	add r1, r1, #4
	ldr r2, _080E8ABC  @ =0x00000EE2
	add r0, r4, r2
	add r0, r6, r0
	mov r5, #0
	strb r1, [r0]
	add r2, r2, #32
	add r0, r4, r2
	add r0, r6, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r0, _080E8AC0  @ =0x00000964
	add r1, r4, r0
	ldr r2, _080E8AC4  @ =0x00000968
	add r0, r4, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r0, r0, #4
	ldrh r1, [r1]
	sub r1, r1, r0
	ldr r2, _080E8AC8  @ =0x00000ED2
	add r0, r4, r2
	add r0, r6, r0
	strb r1, [r0]
	add r2, r2, #32
	add r0, r4, r2
	add r0, r6, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r0, _080E8ACC  @ =0x00001032
	add r2, r4, r0
	add r2, r6, r2
	ldrb r1, [r2]
	mov r0, #254
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2]
	ldr r1, _080E8AD0  @ =0x00001122
	add r0, r4, r1
	add r0, r6, r0
	mov r1, #6
	strb r1, [r0]
	ldr r2, _080E8AD4  @ =0x00001132
	add r0, r4, r2
	add r0, r6, r0
	mov r1, #84
	strb r1, [r0]
	sub r2, r2, #208
	add r0, r4, r2
	add r0, r6, r0
	strb r1, [r0]
	ldr r1, _080E8AD8  @ =0x00001012
	add r0, r4, r1
	add r0, r6, r0
	mov r1, #32
	strb r1, [r0]
	lsl r0, r6, #24
	lsr r0, r0, #24
	bl sub_080C35FC
	ldr r2, _080E8ADC  @ =0x00000FC2
	add r0, r4, r2
	add r0, r6, r0
	mov r1, #20
	strb r1, [r0]
	ldr r1, _080E8AE0  @ =0x00000FD2
	add r0, r4, r1
	add r0, r6, r0
	mov r1, #16
	strb r1, [r0]
	ldr r2, _080E8AE4  @ =0x000011B2
	add r0, r4, r2
	add r0, r6, r0
	strb r5, [r0]
	ldr r0, _080E8AE8  @ =0x00000E75
	add r4, r4, r0
	add r4, r6, r4
	mov r0, #72
	strb r0, [r4]
_080E8AAE:
	add r0, r6, #0
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080E8AB8:
	.4byte gRam
_080E8ABC:
	.4byte 0x00000EE2
_080E8AC0:
	.4byte 0x00000964
_080E8AC4:
	.4byte 0x00000968
_080E8AC8:
	.4byte 0x00000ED2
_080E8ACC:
	.4byte 0x00001032
_080E8AD0:
	.4byte 0x00001122
_080E8AD4:
	.4byte 0x00001132
_080E8AD8:
	.4byte 0x00001012
_080E8ADC:
	.4byte 0x00000FC2
_080E8AE0:
	.4byte 0x00000FD2
_080E8AE4:
	.4byte 0x000011B2
_080E8AE8:
	.4byte 0x00000E75
	THUMB_FUNC_END sub_080E89E4

	THUMB_FUNC_START sub_080E8AEC
sub_080E8AEC: @ 0x080E8AEC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080E8B08  @ =gRam
	ldr r2, _080E8B0C  @ =0x00000FC2
	add r1, r1, r2
	add r1, r0, r1
	mov r2, #64
	strb r2, [r1]
	bl sub_080EA2DC
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E8B08:
	.4byte gRam
_080E8B0C:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E8AEC

	THUMB_FUNC_START sub_080E8B10
sub_080E8B10: @ 0x080E8B10
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E8334
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080E8B10

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080E8B20
sub_080E8B20: @ 0x080E8B20
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r7, r5, #0
	ldr r6, _080E8BA0  @ =gRam
	ldr r1, _080E8BA4  @ =0x00001072
	add r0, r6, r1
	add r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E8B84
	mov r0, #0
	strb r0, [r1]
	ldr r2, _080E8BA8  @ =0x00000F72
	add r0, r6, r2
	add r0, r5, r0
	mov r1, #3
	strb r1, [r0]
	ldr r3, _080E8BAC  @ =0x000010A2
	add r0, r6, r3
	add r0, r5, r0
	mov r1, #192
	strb r1, [r0]
	ldr r0, _080E8BB0  @ =0x00000F22
	add r3, r6, r0
	add r3, r5, r3
	ldr r1, _080E8BB4  @ =0x00001112
	add r0, r6, r1
	add r0, r5, r0
	ldrb r0, [r0]
	mov r2, #128
	add r1, r2, #0
	and r1, r1, r0
	lsr r0, r0, #1
	mov r4, #63
	and r0, r0, r4
	orr r1, r1, r0
	strb r1, [r3]
	ldr r3, _080E8BB8  @ =0x00000F12
	add r1, r6, r3
	add r1, r5, r1
	ldr r3, _080E8BBC  @ =0x00001102
	add r0, r6, r3
	add r0, r5, r0
	ldrb r0, [r0]
	and r2, r2, r0
	lsr r0, r0, #1
	and r0, r0, r4
	orr r2, r2, r0
	strb r2, [r1]
_080E8B84:
	ldr r1, _080E8BC0  @ =gUnknown_08177A4C
	ldr r2, _080E8BA8  @ =0x00000F72
	add r0, r6, r2
	add r0, r7, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r7, #0
	bl _call_via_r1
	pop {r4-r7}
	pop {r0}
	bx r0
_080E8BA0:
	.4byte gRam
_080E8BA4:
	.4byte 0x00001072
_080E8BA8:
	.4byte 0x00000F72
_080E8BAC:
	.4byte 0x000010A2
_080E8BB0:
	.4byte 0x00000F22
_080E8BB4:
	.4byte 0x00001112
_080E8BB8:
	.4byte 0x00000F12
_080E8BBC:
	.4byte 0x00001102
_080E8BC0:
	.4byte gUnknown_08177A4C
	THUMB_FUNC_END sub_080E8B20

	THUMB_FUNC_START sub_080E8BC4
sub_080E8BC4: @ 0x080E8BC4
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r4, #0
	bl sub_080C632C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E8C16
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E8C16
	ldr r2, _080E8C20  @ =gRam
	ldr r1, _080E8C24  @ =0x00000FC2
	add r0, r2, r1
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080E8C16
	mov r0, #127
	strb r0, [r1]
	ldr r0, _080E8C28  @ =0x00000F72
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080E8C2C  @ =0x00001032
	add r1, r2, r0
	add r1, r4, r1
	ldrb r2, [r1]
	mov r0, #64
	orr r0, r0, r2
	strb r0, [r1]
_080E8C16:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E8C20:
	.4byte gRam
_080E8C24:
	.4byte 0x00000FC2
_080E8C28:
	.4byte 0x00000F72
_080E8C2C:
	.4byte 0x00001032
	THUMB_FUNC_END sub_080E8BC4

	THUMB_FUNC_START sub_080E8C30
sub_080E8C30: @ 0x080E8C30
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl sub_080E8808
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E8CCE
	ldr r6, _080E8C74  @ =gRam
	ldr r0, _080E8C78  @ =0x00001172
	add r2, r6, r0
	add r2, r4, r2
	ldr r1, _080E8C7C  @ =0x00000FC2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r0]
	strb r1, [r2]
	ldrb r0, [r0]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E8C88
	ldr r2, _080E8C80  @ =0x00000F92
	add r1, r6, r2
	add r1, r4, r1
	ldr r2, _080E8C84  @ =gUnknown_08177948
	lsr r0, r0, #27
	add r0, r0, r2
	ldrb r0, [r0]
	b _080E8CCC
_080E8C74:
	.4byte gRam
_080E8C78:
	.4byte 0x00001172
_080E8C7C:
	.4byte 0x00000FC2
_080E8C80:
	.4byte 0x00000F92
_080E8C84:
	.4byte gUnknown_08177948
_080E8C88:
	ldr r0, _080E8CD4  @ =0x00001032
	add r1, r6, r0
	add r1, r5, r1
	ldrb r2, [r1]
	mov r0, #191
	and r0, r0, r2
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #110
	bl sub_080CF0AC
	ldr r2, _080E8CD8  @ =0x00000F72
	add r1, r6, r2
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080E8CDC  @ =0x00001152
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #48
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080E8CE0  @ =0x00000FB2
	add r1, r6, r2
	add r1, r5, r1
	strb r0, [r1]
	add r2, r2, #208
	add r1, r6, r2
	add r1, r5, r1
_080E8CCC:
	strb r0, [r1]
_080E8CCE:
	pop {r4-r6}
	pop {r0}
	bx r0
_080E8CD4:
	.4byte 0x00001032
_080E8CD8:
	.4byte 0x00000F72
_080E8CDC:
	.4byte 0x00001152
_080E8CE0:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080E8C30

	THUMB_FUNC_START sub_080E8CE4
sub_080E8CE4: @ 0x080E8CE4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _080E8E30  @ =gRam
	mov r8, r0
	ldr r2, _080E8E34  @ =0x00000F92
	add r2, r2, r8
	add r2, r4, r2
	ldr r3, _080E8E38  @ =gUnknown_08177A5C
	ldr r0, _080E8E3C  @ =0x00001052
	add r0, r0, r8
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #25
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080E8E40  @ =0x00000FB2
	add r1, r1, r8
	add r1, r1, r4
	mov r9, r1
	ldrb r1, [r1]
	add r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	add r0, r4, #0
	bl sub_080E8FB0
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _080E8E24
	add r0, r4, #0
	bl sub_080C5044
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r0, _080E8E44  @ =0x00001152
	add r0, r0, r8
	add r5, r4, r0
	ldrb r0, [r5]
	sub r0, r0, #2
	strb r0, [r5]
	ldr r0, _080E8E48  @ =0x00001142
	add r0, r0, r8
	add r7, r4, r0
	ldrb r0, [r7]
	sub r0, r0, #1
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080E8DB2
	ldrb r0, [r5]
	sub r0, r0, #240
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080E8D72
	add r0, r4, #0
	bl sub_080E2614
_080E8D72:
	strb r6, [r7]
	strb r6, [r5]
	ldr r5, _080E8E4C  @ =0x00000996
	add r5, r5, r8
	ldrb r0, [r5]
	add r1, r4, #0
	eor r1, r1, r0
	mov r0, #15
	and r1, r1, r0
	cmp r1, #0
	bne _080E8DB2
	add r0, r4, #0
	bl sub_080C2FA8
	add r2, r0, #0
	ldr r0, _080E8E50  @ =0x00001082
	add r0, r0, r8
	add r0, r4, r0
	strb r2, [r0]
	ldrb r1, [r5]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #31
	and r0, r0, r1
	cmp r0, #0
	bne _080E8DB2
	mov r1, r9
	strb r2, [r1]
	add r0, r4, #0
	mov r1, #8
	bl sub_080C35FC
_080E8DB2:
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C79F8
	ldr r5, _080E8E30  @ =gRam
	ldr r1, _080E8E48  @ =0x00001142
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	sub r0, r0, #1
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080E8E16
	add r0, r4, #0
	bl sub_080E91FC
	ldr r1, _080E8E54  @ =0x000015E2
	add r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #8
	bne _080E8E16
	add r0, r4, #0
	bl sub_080CB1E0
	add r0, r4, #0
	mov r1, #110
	bl sub_080CF0AC
	ldr r1, _080E8E58  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	mov r3, #0
	mov r2, #3
	strb r2, [r0]
	add r1, r1, #32
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #15
	strb r1, [r0]
	ldr r1, _080E8E5C  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	strb r3, [r0]
	add r1, r1, #192
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
_080E8E16:
	ldr r1, _080E8E30  @ =gRam
	ldr r5, _080E8E3C  @ =0x00001052
	add r1, r1, r5
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080E8E24:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080E8E30:
	.4byte gRam
_080E8E34:
	.4byte 0x00000F92
_080E8E38:
	.4byte gUnknown_08177A5C
_080E8E3C:
	.4byte 0x00001052
_080E8E40:
	.4byte 0x00000FB2
_080E8E44:
	.4byte 0x00001152
_080E8E48:
	.4byte 0x00001142
_080E8E4C:
	.4byte 0x00000996
_080E8E50:
	.4byte 0x00001082
_080E8E54:
	.4byte 0x000015E2
_080E8E58:
	.4byte 0x00000FA2
_080E8E5C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E8CE4

	THUMB_FUNC_START sub_080E8E60
sub_080E8E60: @ 0x080E8E60
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, sp
	add r1, r6, #0
	bl sub_080C4948
	ldr r4, _080E8F74  @ =gRam
	ldr r1, _080E8F78  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080E8EBA
	ldr r2, _080E8F7C  @ =0x000010A2
	add r1, r4, r2
	add r1, r6, r1
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #0
	bne _080E8EBA
	ldr r1, _080E8F80  @ =0x00000F72
	add r0, r4, r1
	add r0, r6, r0
	mov r1, #2
	strb r1, [r0]
	ldr r2, _080E8F84  @ =0x00000FA2
	add r0, r4, r2
	add r0, r6, r0
	ldrb r2, [r0]
	mov r1, #9
	strb r1, [r0]
	cmp r2, #10
	bne _080E8EBA
	ldr r1, _080E8F88  @ =0x00001791
	add r0, r4, r1
	strb r3, [r0]
	ldr r2, _080E8F8C  @ =0x00001792
	add r0, r4, r2
	strb r3, [r0]
_080E8EBA:
	ldr r0, _080E8F74  @ =gRam
	ldr r2, _080E8F7C  @ =0x000010A2
	add r1, r0, r2
	add r1, r6, r1
	ldrb r1, [r1]
	add r7, r0, #0
	cmp r1, #47
	bhi _080E8F0A
	ldr r1, _080E8F78  @ =0x00000996
	add r0, r7, r1
	ldrb r3, [r0]
	mov r0, #1
	and r0, r0, r3
	cmp r0, #0
	bne _080E8F0A
	lsr r3, r3, #1
	mov r0, #1
	and r3, r3, r0
	ldr r2, _080E8F90  @ =0x00000EE2
	add r5, r7, r2
	add r5, r6, r5
	ldrb r1, [r5]
	ldr r0, _080E8F94  @ =0x00000F02
	add r4, r7, r0
	add r4, r6, r4
	ldrb r2, [r4]
	lsl r2, r2, #8
	ldr r0, _080E8F98  @ =gUnknown_08177A64
	add r0, r3, r0
	orr r1, r1, r2
	ldrb r0, [r0]
	add r1, r1, r0
	ldr r0, _080E8F9C  @ =gUnknown_08177A66
	add r3, r3, r0
	ldrb r0, [r3]
	lsl r0, r0, #8
	add r1, r1, r0
	strb r1, [r5]
	lsr r1, r1, #8
	strb r1, [r4]
_080E8F0A:
	ldr r1, _080E8FA0  @ =0x00000F92
	add r0, r7, r1
	add r0, r6, r0
	mov r5, #0
	strb r5, [r0]
	ldr r2, _080E8FA4  @ =0x00001042
	add r0, r7, r2
	add r0, r6, r0
	strb r5, [r0]
	add r0, r6, #0
	bl sub_080E9240
	ldr r0, _080E8FA8  @ =0x00001012
	add r4, r7, r0
	add r4, r6, r4
	ldrb r0, [r4]
	sub r0, r0, #2
	strb r0, [r4]
	add r0, r6, #0
	bl sub_080C6240
	ldrb r0, [r4]
	add r0, r0, #2
	strb r0, [r4]
	ldr r1, _080E8FAC  @ =0x00001092
	add r0, r7, r1
	add r0, r6, r0
	strb r5, [r0]
	add r0, r6, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E8F6C
	add r0, r6, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E8F6C
	add r0, r6, #0
	bl Sprite3_Move
	add r0, r6, #0
	bl sub_080C8168
	add r0, r6, #0
	bl sub_080E91FC
_080E8F6C:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_080E8F74:
	.4byte gRam
_080E8F78:
	.4byte 0x00000996
_080E8F7C:
	.4byte 0x000010A2
_080E8F80:
	.4byte 0x00000F72
_080E8F84:
	.4byte 0x00000FA2
_080E8F88:
	.4byte 0x00001791
_080E8F8C:
	.4byte 0x00001792
_080E8F90:
	.4byte 0x00000EE2
_080E8F94:
	.4byte 0x00000F02
_080E8F98:
	.4byte gUnknown_08177A64
_080E8F9C:
	.4byte gUnknown_08177A66
_080E8FA0:
	.4byte 0x00000F92
_080E8FA4:
	.4byte 0x00001042
_080E8FA8:
	.4byte 0x00001012
_080E8FAC:
	.4byte 0x00001092
	THUMB_FUNC_END sub_080E8E60

	THUMB_FUNC_START sub_080E8FB0
sub_080E8FB0: @ 0x080E8FB0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r4, r0, #24
	str r4, [sp, #8]
	add r0, r4, #0
	bl sub_080E9240
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E90AA
	ldr r7, _080E90BC  @ =gRam
	ldr r1, _080E90C0  @ =0x00000F92
	add r0, r7, r1
	add r4, r4, r0
	mov r10, r4
	ldrb r0, [r4]
	cmp r0, #3
	bls _080E8FFC
	ldr r3, _080E90C4  @ =0x00000964
	add r2, r7, r3
	mov r1, #1
	and r1, r1, r0
	ldr r4, _080E90C8  @ =0x0000FFFF
	add r1, r1, r4
	ldrh r0, [r2]
	add r0, r0, r1
	strh r0, [r2]
_080E8FFC:
	add r0, sp, #4
	ldrb r1, [r0]
	ldr r5, _080E90CC  @ =gUnknown_03003E74
	ldrh r0, [r5]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r6, _080E90D0  @ =gUnknown_03002B90
	ldrh r1, [r6]
	ldr r2, _080E90C4  @ =0x00000964
	add r2, r2, r7
	mov r9, r2
	ldrh r2, [r2]
	sub r2, r2, #6
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r5, _080E90D4  @ =gUnknown_08177A68
	ldr r4, _080E90D8  @ =0x00001082
	add r3, r7, r4
	ldr r6, [sp, #8]
	add r3, r6, r3
	ldrb r4, [r3]
	add r5, r4, r5
	ldrb r3, [r5]
	ldr r5, _080E90DC  @ =gUnknown_08177A6C
	add r4, r4, r5
	ldrb r4, [r4]
	ldr r5, _080E90E0  @ =0x00000969
	add r5, r5, r7
	mov r8, r5
	ldrb r5, [r5]
	lsl r5, r5, #24
	asr r5, r5, #24
	orr r4, r4, r5
	lsl r4, r4, #8
	add r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r6, #2
	str r6, [sp]
	bl sub_080C6368
	add r0, sp, #4
	ldrb r1, [r0]
	ldr r2, _080E90CC  @ =gUnknown_03003E74
	ldrh r0, [r2]
	add r0, r0, r1
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r3, _080E90D0  @ =gUnknown_03002B90
	ldrh r1, [r3]
	mov r4, r9
	ldrh r2, [r4]
	add r2, r2, #2
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E90E4  @ =gUnknown_08177A70
	mov r5, r10
	ldrb r4, [r5]
	add r3, r4, r3
	ldrb r3, [r3]
	ldr r5, _080E90E8  @ =gUnknown_08177A78
	add r4, r4, r5
	ldrb r4, [r4]
	mov r5, r8
	ldrb r5, [r5]
	lsl r5, r5, #24
	asr r5, r5, #24
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	str r6, [sp]
	bl sub_080C6368
	ldr r6, _080E90EC  @ =0x00001092
	add r0, r7, r6
	ldr r1, [sp, #8]
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E90AA
	add r0, r1, #0
	bl sub_080C6230
_080E90AA:
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
_080E90BC:
	.4byte gRam
_080E90C0:
	.4byte 0x00000F92
_080E90C4:
	.4byte 0x00000964
_080E90C8:
	.4byte 0x0000FFFF
_080E90CC:
	.4byte gUnknown_03003E74
_080E90D0:
	.4byte gUnknown_03002B90
_080E90D4:
	.4byte gUnknown_08177A68
_080E90D8:
	.4byte 0x00001082
_080E90DC:
	.4byte gUnknown_08177A6C
_080E90E0:
	.4byte 0x00000969
_080E90E4:
	.4byte gUnknown_08177A70
_080E90E8:
	.4byte gUnknown_08177A78
_080E90EC:
	.4byte 0x00001092
	THUMB_FUNC_END sub_080E8FB0

	THUMB_FUNC_START sub_080E90F0
sub_080E90F0: @ 0x080E90F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080E91AC  @ =gUnknown_08177AB0
	ldr r6, _080E91B0  @ =gRam
	ldr r2, _080E91B4  @ =0x00000996
	add r1, r6, r2
	ldrb r1, [r1]
	lsr r1, r1, #2
	mov r2, #3
	and r1, r1, r2
	add r1, r1, r3
	ldrb r1, [r1]
	lsr r1, r1, #3
	lsl r1, r1, #3
	ldr r2, _080E91B8  @ =gUnknown_08177A80
	add r1, r1, r2
	mov r2, #2
	bl sub_080C9480
	ldr r0, _080E91BC  @ =gUnknown_03003E74
	mov r10, r0
	ldrh r0, [r0]
	lsl r0, r0, #3
	mov r2, #170
	lsl r2, r2, #3
	add r1, r6, r2
	add r7, r0, r1
	ldrb r1, [r7, #3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	mov r1, #33
	neg r1, r1
	mov r9, r1
	and r0, r0, r1
	strb r0, [r7, #3]
	ldrb r1, [r7, #5]
	mov r3, #15
	add r0, r3, #0
	and r0, r0, r1
	mov r2, #32
	mov r8, r2
	mov r1, r8
	orr r0, r0, r1
	strb r0, [r7, #5]
	ldrh r5, [r7, #4]
	lsl r0, r5, #22
	lsr r0, r0, #22
	mov r4, #255
	add r1, r4, #0
	and r1, r1, r0
	ldr r2, _080E91C0  @ =0xFFFFFC00
	add r0, r2, #0
	and r0, r0, r5
	orr r0, r0, r1
	strh r0, [r7, #4]
	mov r1, r10
	ldrh r0, [r1]
	lsl r0, r0, #3
	mov r1, #171
	lsl r1, r1, #3
	add r6, r6, r1
	add r7, r0, r6
	ldrb r0, [r7, #3]
	mov r1, #16
	orr r0, r0, r1
	mov r1, r9
	and r0, r0, r1
	strb r0, [r7, #3]
	ldrb r0, [r7, #5]
	and r3, r3, r0
	mov r0, r8
	orr r3, r3, r0
	strb r3, [r7, #5]
	ldrh r1, [r7, #4]
	lsl r0, r1, #22
	lsr r0, r0, #22
	and r4, r4, r0
	and r2, r2, r1
	orr r2, r2, r4
	strh r2, [r7, #4]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E91AC:
	.4byte gUnknown_08177AB0
_080E91B0:
	.4byte gRam
_080E91B4:
	.4byte 0x00000996
_080E91B8:
	.4byte gUnknown_08177A80
_080E91BC:
	.4byte gUnknown_03003E74
_080E91C0:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_080E90F0

	THUMB_FUNC_START sub_080E91C4
sub_080E91C4: @ 0x080E91C4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080E91D8  @ =gRam
	ldr r2, _080E91DC  @ =0x00000FC2
	add r1, r1, r2
	add r0, r0, r1
	mov r1, #96
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080E91D8:
	.4byte gRam
_080E91DC:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E91C4

	THUMB_FUNC_START sub_080E91E0
sub_080E91E0: @ 0x080E91E0
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080E90F0
	ldr r1, _080E91F8  @ =gUnknown_03003E74
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E91F8:
	.4byte gUnknown_03003E74
	THUMB_FUNC_END sub_080E91E0

	THUMB_FUNC_START sub_080E91FC
sub_080E91FC: @ 0x080E91FC
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080E9230  @ =gRam
	ldr r3, _080E9234  @ =0x00001092
	add r1, r2, r3
	add r3, r0, r1
	mov r1, #0
	strb r1, [r3]
	ldr r4, _080E9238  @ =0x00001142
	add r1, r2, r4
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E9228
	ldr r1, _080E923C  @ =0x000015E2
	add r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #9
	bne _080E9228
	mov r0, #1
	strb r0, [r3]
_080E9228:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E9230:
	.4byte gRam
_080E9234:
	.4byte 0x00001092
_080E9238:
	.4byte 0x00001142
_080E923C:
	.4byte 0x000015E2
	THUMB_FUNC_END sub_080E91FC

	THUMB_FUNC_START sub_080E9240
sub_080E9240: @ 0x080E9240
	push {lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r0, _080E9260  @ =gRam
	ldr r2, _080E9264  @ =0x00001092
	add r0, r0, r2
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E925A
	add r0, r1, #0
	bl sub_080E91E0
_080E925A:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E9260:
	.4byte gRam
_080E9264:
	.4byte 0x00001092
	THUMB_FUNC_END sub_080E9240

	THUMB_FUNC_START sub_080E9268
sub_080E9268: @ 0x080E9268
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080E934C  @ =gRam
	ldr r1, _080E9350  @ =0x000016C4
	add r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _080E9354  @ =0x000016C5
	add r0, r4, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _080E9358  @ =0x00001622
	add r0, r4, r3
	ldrb r2, [r0]
	add r3, r3, #1
	add r0, r4, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #31
	bhi _080E9346
	mov r1, #182
	lsl r1, r1, #5
	add r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _080E935C  @ =0x000016C1
	add r0, r4, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	add r3, r3, #1
	add r0, r4, r3
	ldrb r2, [r0]
	add r3, r3, #1
	add r0, r4, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #48
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #79
	bhi _080E9346
	bl sub_08093078
	ldr r1, _080E9360  @ =0x00000FC2
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #127
	strb r1, [r0]
	mov r0, #45
	mov r1, #0
	bl sub_0812A324
	ldr r2, _080E9364  @ =0x00000F52
	add r1, r4, r2
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r1, #15
	add r5, r4, #0
	ldr r3, _080E9368  @ =0x00001792
	add r6, r5, r3
_080E92FC:
	lsl r0, r1, #24
	asr r2, r0, #24
	ldr r3, _080E936C  @ =0x000015DC
	add r1, r5, r3
	add r4, r0, #0
	ldrb r1, [r1]
	cmp r2, r1
	beq _080E933A
	ldr r1, _080E9370  @ =0x00000E75
	add r0, r5, r1
	add r0, r2, r0
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _080E933A
	ldr r3, _080E9374  @ =0x00000FA2
	add r0, r5, r3
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #10
	bne _080E9334
	ldr r2, _080E9378  @ =0x00001791
	add r0, r5, r2
	strb r1, [r0]
	strb r1, [r6]
_080E9334:
	lsr r0, r4, #24
	bl sub_080CB1E0
_080E933A:
	mov r3, #255
	lsl r3, r3, #24
	add r0, r4, r3
	lsr r1, r0, #24
	cmp r0, #0
	bge _080E92FC
_080E9346:
	pop {r4-r6}
	pop {r0}
	bx r0
_080E934C:
	.4byte gRam
_080E9350:
	.4byte 0x000016C4
_080E9354:
	.4byte 0x000016C5
_080E9358:
	.4byte 0x00001622
_080E935C:
	.4byte 0x000016C1
_080E9360:
	.4byte 0x00000FC2
_080E9364:
	.4byte 0x00000F52
_080E9368:
	.4byte 0x00001792
_080E936C:
	.4byte 0x000015DC
_080E9370:
	.4byte 0x00000E75
_080E9374:
	.4byte 0x00000FA2
_080E9378:
	.4byte 0x00001791
	THUMB_FUNC_END sub_080E9268

	THUMB_FUNC_START sub_080E937C
sub_080E937C: @ 0x080E937C
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r6, _080E93B0  @ =gRam
	ldr r1, _080E93B4  @ =0x00000FC2
	add r0, r6, r1
	add r4, r2, r0
	ldrb r3, [r4]
	add r5, r3, #0
	cmp r5, #0
	beq _080E93C4
	ldr r1, _080E93B8  @ =gUnknown_08177AC8
	mov r2, #1
	add r0, r2, #0
	and r0, r0, r3
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _080E93BC  @ =0x00000A28
	add r0, r6, r3
	strh r1, [r0]
	ldr r1, _080E93C0  @ =0x00001770
	add r0, r6, r1
	strb r2, [r0]
	b _080E93E4
	.byte 0x00
	.byte 0x00
_080E93B0:
	.4byte gRam
_080E93B4:
	.4byte 0x00000FC2
_080E93B8:
	.4byte gUnknown_08177AC8
_080E93BC:
	.4byte 0x00000A28
_080E93C0:
	.4byte 0x00001770
_080E93C4:
	ldr r3, _080E93EC  @ =0x00000F52
	add r1, r6, r3
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #127
	strb r0, [r4]
	ldr r1, _080E93F0  @ =0x00000A28
	add r0, r6, r1
	strh r5, [r0]
	add r3, r3, #64
	add r0, r6, r3
	add r0, r2, r0
	mov r1, #4
	strb r1, [r0]
_080E93E4:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E93EC:
	.4byte 0x00000F52
_080E93F0:
	.4byte 0x00000A28
	THUMB_FUNC_END sub_080E937C

	THUMB_FUNC_START sub_080E93F4
sub_080E93F4: @ 0x080E93F4
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080E9430  @ =gRam
	ldr r1, _080E9434  @ =0x00000FC2
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080E9440
	cmp r0, #28
	bne _080E941C
	add r1, r1, #32
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #15
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080E95CC
_080E941C:
	ldr r0, _080E9438  @ =0x00000F92
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080E943C  @ =gUnknown_08177ACC
	ldrb r0, [r5]
	lsr r0, r0, #3
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	b _080E9450
_080E9430:
	.4byte gRam
_080E9434:
	.4byte 0x00000FC2
_080E9438:
	.4byte 0x00000F92
_080E943C:
	.4byte gUnknown_08177ACC
_080E9440:
	ldr r1, _080E9458  @ =0x00000F52
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #127
	strb r0, [r5]
_080E9450:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E9458:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E93F4

	THUMB_FUNC_START sub_080E945C
sub_080E945C: @ 0x080E945C
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080E9490  @ =gRam
	ldr r1, _080E9494  @ =0x00000FC2
	add r0, r5, r1
	add r6, r4, r0
	ldrb r0, [r6]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E954C
	ldr r2, _080E9498  @ =0x00000F92
	add r1, r5, r2
	add r1, r4, r1
	ldr r2, _080E949C  @ =gUnknown_08177ADC
	lsr r0, r0, #28
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r6]
	cmp r0, #80
	bne _080E94A4
	ldr r0, _080E94A0  @ =0x00000145
	bl sub_080C95C0
	b _080E955C
_080E9490:
	.4byte gRam
_080E9494:
	.4byte 0x00000FC2
_080E9498:
	.4byte 0x00000F92
_080E949C:
	.4byte gUnknown_08177ADC
_080E94A0:
	.4byte 0x00000145
_080E94A4:
	cmp r0, #79
	bne _080E94CE
	ldr r1, _080E94BC  @ =0x00001AE2
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E94C4
	ldr r0, _080E94C0  @ =0x00000149
	bl sub_080C95C0
	mov r0, #48
	b _080E955A
_080E94BC:
	.4byte 0x00001AE2
_080E94C0:
	.4byte 0x00000149
_080E94C4:
	mov r0, #163
	lsl r0, r0, #1
	bl sub_080C95C0
	b _080E955C
_080E94CE:
	cmp r0, #78
	bne _080E9530
	ldr r2, _080E94E8  @ =0x00001AE2
	add r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E94EC
	mov r0, #164
	lsl r0, r0, #1
	bl sub_080C95C0
	mov r0, #48
	b _080E955A
_080E94E8:
	.4byte 0x00001AE2
_080E94EC:
	bl sub_080AA868
	ldr r1, _080E9504  @ =0x000001F3
	cmp r0, r1
	bgt _080E9508
	mov r0, #164
	lsl r0, r0, #1
	bl sub_080C95C0
	mov r0, #48
	b _080E955A
	.byte 0x00
	.byte 0x00
_080E9504:
	.4byte 0x000001F3
_080E9508:
	ldr r0, _080E9524  @ =0xFFFFFE0C
	bl sub_080AA83C
	ldr r0, _080E9528  @ =0x00000147
	bl sub_080C95C0
	ldr r0, _080E952C  @ =0x00001062
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080E955C
	.byte 0x00
	.byte 0x00
_080E9524:
	.4byte 0xFFFFFE0C
_080E9528:
	.4byte 0x00000147
_080E952C:
	.4byte 0x00001062
_080E9530:
	cmp r0, #77
	bne _080E955C
	ldr r1, _080E9548  @ =0x00001062
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E955C
	add r0, r4, #0
	bl sub_080E9900
	b _080E955C
_080E9548:
	.4byte 0x00001062
_080E954C:
	ldr r2, _080E9564  @ =0x00000F52
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #36
_080E955A:
	strb r0, [r6]
_080E955C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E9564:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E945C

	THUMB_FUNC_START sub_080E9568
sub_080E9568: @ 0x080E9568
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080E95A4  @ =gRam
	ldr r1, _080E95A8  @ =0x00000FC2
	add r0, r6, r1
	add r7, r5, r0
	ldrb r4, [r7]
	cmp r4, #0
	beq _080E95B4
	cmp r4, #29
	bne _080E9590
	add r1, r1, #32
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #15
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080E95CC
_080E9590:
	ldr r0, _080E95AC  @ =0x00000F92
	add r1, r6, r0
	add r1, r5, r1
	ldr r2, _080E95B0  @ =gUnknown_08177AE4
	ldrb r0, [r7]
	lsr r0, r0, #1
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	b _080E95C0
_080E95A4:
	.4byte gRam
_080E95A8:
	.4byte 0x00000FC2
_080E95AC:
	.4byte 0x00000F92
_080E95B0:
	.4byte gUnknown_08177AE4
_080E95B4:
	add r0, r5, #0
	bl sub_080CB1E0
	ldr r1, _080E95C8  @ =0x00001770
	add r0, r6, r1
	strb r4, [r0]
_080E95C0:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E95C8:
	.4byte 0x00001770
	THUMB_FUNC_END sub_080E9568

	THUMB_FUNC_START sub_080E95CC
sub_080E95CC: @ 0x080E95CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r7, r0, #24
	add r0, r7, #0
	mov r1, #14
	bl sub_080CF0AC
	mov r6, #7
	ldr r5, _080E96D8  @ =gRam
	mov r1, #0
	mov r9, r1
	ldr r3, _080E96DC  @ =0x00001172
	add r3, r3, r5
	mov r8, r3
_080E95F0:
	mov r0, #8
	add r1, r7, #0
	bl sub_080CA538
	add r4, r0, #0
	lsl r6, r6, #24
	cmp r4, #0
	blt _080E96BC
	ldr r1, _080E96E0  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
	mov r3, #150
	lsl r3, r3, #4
	add r1, r5, r3
	ldr r0, _080E96E4  @ =gUnknown_08177AF9
	asr r2, r6, #24
	add r0, r2, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080E96E8  @ =gUnknown_08177B01
	add r0, r2, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r1, r1, #4
	ldr r3, _080E96EC  @ =0x00000EE2
	add r0, r5, r3
	add r0, r4, r0
	strb r1, [r0]
	add r3, r3, #32
	add r0, r5, r3
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r0, _080E96F0  @ =0x00000964
	add r1, r5, r0
	ldr r0, _080E96F4  @ =gUnknown_08177B09
	add r0, r2, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080E96F8  @ =gUnknown_08177B11
	add r0, r2, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r1, r1, #4
	sub r3, r3, #48
	add r0, r5, r3
	add r0, r4, r0
	strb r1, [r0]
	add r3, r3, #32
	add r0, r5, r3
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r0, _080E96FC  @ =0x00000F22
	add r1, r5, r0
	add r1, r4, r1
	ldr r0, _080E9700  @ =gUnknown_08177B19
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r3, r3, #32
	add r1, r5, r3
	add r1, r4, r1
	ldr r0, _080E9704  @ =gUnknown_08177B21
	add r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	bl GetRandomInt
	ldr r1, _080E9708  @ =0x00001152
	add r2, r5, r1
	add r2, r4, r2
	mov r1, #15
	and r1, r1, r0
	add r1, r1, #24
	strb r1, [r2]
	ldr r3, _080E970C  @ =0x00000F52
	add r0, r5, r3
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	ldr r1, _080E9710  @ =0x00001142
	add r0, r5, r1
	add r0, r4, r0
	mov r3, r9
	strb r3, [r0]
	ldr r0, _080E9714  @ =0x00001032
	add r1, r5, r0
	add r1, r4, r1
	ldrb r2, [r1]
	mov r0, #64
	orr r2, r2, r0
	strb r2, [r1]
	mov r1, r8
	add r0, r4, r1
	strb r2, [r0]
_080E96BC:
	mov r3, #255
	lsl r3, r3, #24
	add r0, r6, r3
	lsr r6, r0, #24
	cmp r0, #0
	bge _080E95F0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E96D8:
	.4byte gRam
_080E96DC:
	.4byte 0x00001172
_080E96E0:
	.4byte 0x00000FA2
_080E96E4:
	.4byte gUnknown_08177AF9
_080E96E8:
	.4byte gUnknown_08177B01
_080E96EC:
	.4byte 0x00000EE2
_080E96F0:
	.4byte 0x00000964
_080E96F4:
	.4byte gUnknown_08177B09
_080E96F8:
	.4byte gUnknown_08177B11
_080E96FC:
	.4byte 0x00000F22
_080E9700:
	.4byte gUnknown_08177B19
_080E9704:
	.4byte gUnknown_08177B21
_080E9708:
	.4byte 0x00001152
_080E970C:
	.4byte 0x00000F52
_080E9710:
	.4byte 0x00001142
_080E9714:
	.4byte 0x00001032
	THUMB_FUNC_END sub_080E95CC

	THUMB_FUNC_START sub_080E9718
sub_080E9718: @ 0x080E9718
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #8]
	mov r4, sp
	add r4, r4, #5
	add r0, sp, #4
	add r1, r4, #0
	ldr r2, [sp, #8]
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E9740
	b _080E98AE
_080E9740:
	ldr r2, _080E98C0  @ =gRam
	ldr r1, _080E98C4  @ =0x00000F52
	add r0, r2, r1
	ldr r3, [sp, #8]
	add r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #1
	bls _080E9808
	ldr r4, _080E98C8  @ =0x00000F92
	add r0, r2, r4
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #26
	lsr r0, r0, #24
	mov r10, r0
	mov r7, #3
	mov r8, r7
	mov r9, r2
	add r6, sp, #4
_080E9766:
	mov r0, r10
	add r0, r0, r8
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r5, r0, #0
	ldr r0, _080E98CC  @ =gUnknown_08177BC5
	add r0, r5, r0
	ldrb r3, [r0]
	mov r0, #15
	and r0, r0, r3
	cmp r0, #0
	bne _080E9784
	ldr r1, _080E98D0  @ =gUnknown_03002B99
	ldrb r0, [r1]
	orr r3, r3, r0
_080E9784:
	mov r0, #32
	orr r3, r3, r0
	lsl r3, r3, #24
	ldr r0, _080E98D4  @ =gUnknown_03003E74
	ldrb r1, [r6]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r9
	ldr r1, _080E98D8  @ =gUnknown_08177B29
	add r1, r5, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080E98DC  @ =gUnknown_08177B5D
	add r2, r5, r2
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	ldr r4, _080E98E0  @ =gUnknown_03002B94
	ldrh r4, [r4]
	add r2, r2, r4
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r4, _080E98E4  @ =gUnknown_08177B91
	add r4, r5, r4
	ldrb r4, [r4]
	lsr r3, r3, #16
	orr r3, r3, r4
	mov r4, #2
	str r4, [sp]
	bl sub_080C6368
	mov r7, r8
	lsl r1, r7, #24
	mov r0, #255
	lsl r0, r0, #24
	add r1, r1, r0
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	lsr r3, r1, #24
	mov r8, r3
	cmp r1, #0
	bge _080E9766
	ldr r0, [sp, #8]
	mov r1, #2
	mov r2, #3
	bl sub_080C6350
	add r0, sp, #4
	mov r1, sp
	add r1, r1, #5
	ldr r2, [sp, #8]
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E98AE
_080E9808:
	ldr r4, _080E98C0  @ =gRam
	ldr r7, _080E98E8  @ =0x00000FE2
	add r0, r4, r7
	ldr r1, [sp, #8]
	add r0, r1, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E98AE
	lsr r0, r0, #25
	mov r1, #4
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	mov r0, #16
	bl sub_080CF3A0
	add r1, sp, #4
	mov r0, #0
	strb r0, [r1]
	mov r7, #3
	add r6, r1, #0
	mov r8, r4
	ldr r3, _080E98EC  @ =0x00000964
	add r3, r3, r8
	mov r10, r3
_080E983E:
	mov r4, r9
	add r5, r4, r7
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r0, _080E98D4  @ =gUnknown_03003E74
	ldrb r1, [r6]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r8
	ldr r1, _080E98F0  @ =gUnknown_08177BF9
	add r1, r5, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080E98F4  @ =gUnknown_08177C01
	add r2, r5, r2
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	mov r3, r10
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E98F8  @ =gUnknown_08177C09
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080E98FC  @ =gUnknown_08177C11
	add r5, r5, r4
	ldrb r5, [r5]
	mov r4, #36
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	mov r4, #2
	str r4, [sp]
	bl sub_080C6368
	lsl r1, r7, #24
	mov r4, #255
	lsl r4, r4, #24
	add r1, r1, r4
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	lsr r7, r1, #24
	cmp r1, #0
	bge _080E983E
_080E98AE:
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
_080E98C0:
	.4byte gRam
_080E98C4:
	.4byte 0x00000F52
_080E98C8:
	.4byte 0x00000F92
_080E98CC:
	.4byte gUnknown_08177BC5
_080E98D0:
	.4byte gUnknown_03002B99
_080E98D4:
	.4byte gUnknown_03003E74
_080E98D8:
	.4byte gUnknown_08177B29
_080E98DC:
	.4byte gUnknown_08177B5D
_080E98E0:
	.4byte gUnknown_03002B94
_080E98E4:
	.4byte gUnknown_08177B91
_080E98E8:
	.4byte 0x00000FE2
_080E98EC:
	.4byte 0x00000964
_080E98F0:
	.4byte gUnknown_08177BF9
_080E98F4:
	.4byte gUnknown_08177C01
_080E98F8:
	.4byte gUnknown_08177C09
_080E98FC:
	.4byte gUnknown_08177C11
	THUMB_FUNC_END sub_080E9718

	THUMB_FUNC_START sub_080E9900
sub_080E9900: @ 0x080E9900
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, #192
	add r1, r6, #0
	bl sub_080CA538
	add r5, r0, #0
	cmp r5, #0
	blt _080E9972
	lsl r0, r5, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r4, _080E9978  @ =gRam
	ldr r1, _080E997C  @ =0x00001152
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #32
	strb r1, [r0]
	ldr r1, _080E9980  @ =0x00000F12
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #16
	strb r1, [r0]
	ldr r1, _080E9984  @ =0x00000F62
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #30
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #108
	bl sub_080CF0AC
	ldr r1, _080E9988  @ =0x00001012
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #131
	strb r1, [r0]
	ldr r1, _080E998C  @ =0x00001032
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #84
	strb r1, [r0]
	ldr r1, _080E9990  @ =0x00001122
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #4
	strb r1, [r0]
	ldr r0, _080E9994  @ =0x000010B2
	add r4, r4, r0
	add r4, r5, r4
	mov r0, #48
	strb r0, [r4]
	mov r0, #17
	bl sub_0812FBC4
_080E9972:
	pop {r4-r6}
	pop {r0}
	bx r0
_080E9978:
	.4byte gRam
_080E997C:
	.4byte 0x00001152
_080E9980:
	.4byte 0x00000F12
_080E9984:
	.4byte 0x00000F62
_080E9988:
	.4byte 0x00001012
_080E998C:
	.4byte 0x00001032
_080E9990:
	.4byte 0x00001122
_080E9994:
	.4byte 0x000010B2
	THUMB_FUNC_END sub_080E9900

	THUMB_FUNC_START sub_080E9998
sub_080E9998: @ 0x080E9998
	push {lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r0, _080E99B0  @ =gFlippers
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E99B4
	add r0, r1, #0
	bl sub_080C3758
	b _080E99C0
	.byte 0x00
	.byte 0x00
_080E99B0:
	.4byte gFlippers
_080E99B4:
	ldr r0, _080E99C4  @ =gRam
	ldr r2, _080E99C8  @ =0x00000FA2
	add r0, r0, r2
	add r0, r1, r0
	mov r1, #0
	strb r1, [r0]
_080E99C0:
	pop {r0}
	bx r0
_080E99C4:
	.4byte gRam
_080E99C8:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080E9998

	THUMB_FUNC_START sub_080E99CC
sub_080E99CC: @ 0x080E99CC
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080E9718
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E99FC
	ldr r1, _080E9A04  @ =gUnknown_08177AB4
	ldr r0, _080E9A08  @ =gRam
	ldr r2, _080E9A0C  @ =0x00000F52
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080E99FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E9A04:
	.4byte gUnknown_08177AB4
_080E9A08:
	.4byte gRam
_080E9A0C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E99CC

	THUMB_FUNC_START sub_080E9A10
sub_080E9A10: @ 0x080E9A10
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080E9A60  @ =gRam
	ldr r1, _080E9A64  @ =0x00000F62
	add r2, r3, r1
	add r2, r0, r2
	ldr r4, _080E9A68  @ =0x00000EE2
	add r1, r3, r4
	add r1, r0, r1
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r1, _080E9A6C  @ =0x00000F72
	add r2, r3, r1
	add r2, r0, r2
	add r4, r4, #32
	add r1, r3, r4
	add r1, r0, r1
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r1, _080E9A70  @ =0x00000F82
	add r2, r3, r1
	add r2, r0, r2
	sub r4, r4, #48
	add r1, r3, r4
	add r1, r0, r1
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r2, _080E9A74  @ =0x00001082
	add r1, r3, r2
	add r1, r0, r1
	add r4, r4, #32
	add r3, r3, r4
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E9A60:
	.4byte gRam
_080E9A64:
	.4byte 0x00000F62
_080E9A68:
	.4byte 0x00000EE2
_080E9A6C:
	.4byte 0x00000F72
_080E9A70:
	.4byte 0x00000F82
_080E9A74:
	.4byte 0x00001082
	THUMB_FUNC_END sub_080E9A10

	THUMB_FUNC_START sub_080E9A78
sub_080E9A78: @ 0x080E9A78
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080E9B1C  @ =gRam
	ldr r1, _080E9B20  @ =0x00000FC2
	add r0, r6, r1
	add r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E9B14
	ldr r0, _080E9B24  @ =0x00000F52
	add r1, r6, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #8
	strb r0, [r2]
	bl GetRandomInt
	mov r4, #3
	and r4, r4, r0
	ldr r1, _080E9B28  @ =0x00000F62
	add r0, r6, r1
	add r0, r5, r0
	ldrb r3, [r0]
	add r1, r1, #16
	add r0, r6, r1
	add r0, r5, r0
	ldrb r1, [r0]
	lsl r1, r1, #8
	ldr r0, _080E9B2C  @ =gUnknown_08177C34
	add r0, r4, r0
	orr r3, r3, r1
	ldrb r0, [r0]
	add r3, r3, r0
	ldr r0, _080E9B30  @ =gUnknown_08177C38
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r3, r3, r0
	ldr r1, _080E9B34  @ =0x00000F82
	add r0, r6, r1
	add r0, r5, r0
	ldrb r2, [r0]
	ldr r1, _080E9B38  @ =0x00001082
	add r0, r6, r1
	add r0, r5, r0
	ldrb r1, [r0]
	lsl r1, r1, #8
	ldr r0, _080E9B3C  @ =gUnknown_08177C3C
	add r0, r4, r0
	orr r2, r2, r1
	ldrb r0, [r0]
	add r2, r2, r0
	ldr r0, _080E9B40  @ =gUnknown_08177C40
	add r4, r4, r0
	ldrb r0, [r4]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r1, _080E9B44  @ =0x00000EE2
	add r0, r6, r1
	add r0, r5, r0
	strb r3, [r0]
	add r1, r1, #32
	add r0, r6, r1
	add r0, r5, r0
	lsr r3, r3, #8
	strb r3, [r0]
	sub r1, r1, #48
	add r0, r6, r1
	add r0, r5, r0
	strb r2, [r0]
	add r1, r1, #32
	add r0, r6, r1
	add r0, r5, r0
	lsr r2, r2, #8
	strb r2, [r0]
_080E9B14:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E9B1C:
	.4byte gRam
_080E9B20:
	.4byte 0x00000FC2
_080E9B24:
	.4byte 0x00000F52
_080E9B28:
	.4byte 0x00000F62
_080E9B2C:
	.4byte gUnknown_08177C34
_080E9B30:
	.4byte gUnknown_08177C38
_080E9B34:
	.4byte 0x00000F82
_080E9B38:
	.4byte 0x00001082
_080E9B3C:
	.4byte gUnknown_08177C3C
_080E9B40:
	.4byte gUnknown_08177C40
_080E9B44:
	.4byte 0x00000EE2
	THUMB_FUNC_END sub_080E9A78

	THUMB_FUNC_START sub_080E9B48
sub_080E9B48: @ 0x080E9B48
	push {r4,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r2, _080E9B74  @ =gRam
	ldr r1, _080E9B78  @ =0x00000FC2
	add r0, r2, r1
	add r4, r3, r0
	ldrb r0, [r4]
	lsl r1, r0, #24
	cmp r1, #0
	beq _080E9B80
	ldr r4, _080E9B7C  @ =0x00000F92
	add r0, r2, r4
	add r0, r3, r0
	lsr r1, r1, #26
	mov r2, #1
	and r1, r1, r2
	strb r1, [r0]
	add r0, r3, #0
	bl sub_080E9D14
	b _080E9B90
_080E9B74:
	.4byte gRam
_080E9B78:
	.4byte 0x00000FC2
_080E9B7C:
	.4byte 0x00000F92
_080E9B80:
	ldr r1, _080E9B98  @ =0x00000F52
	add r0, r2, r1
	add r0, r3, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #16
	strb r0, [r4]
_080E9B90:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E9B98:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E9B48

	THUMB_FUNC_START sub_080E9B9C
sub_080E9B9C: @ 0x080E9B9C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C5044
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r3, _080E9BF4  @ =gRam
	ldr r0, _080E9BF8  @ =0x00001152
	add r1, r3, r0
	add r1, r4, r1
	ldrb r0, [r1]
	sub r0, r0, #2
	strb r0, [r1]
	ldr r1, _080E9BFC  @ =0x00001142
	add r0, r3, r1
	add r2, r4, r0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080E9BEC
	mov r0, #0
	strb r0, [r2]
	ldr r0, _080E9C00  @ =0x00000F52
	add r1, r3, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080E9C04  @ =0x00000FC2
	add r0, r3, r1
	add r0, r4, r0
	mov r1, #16
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080E9D14
_080E9BEC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E9BF4:
	.4byte gRam
_080E9BF8:
	.4byte 0x00001152
_080E9BFC:
	.4byte 0x00001142
_080E9C00:
	.4byte 0x00000F52
_080E9C04:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080E9B9C

	THUMB_FUNC_START sub_080E9C08
sub_080E9C08: @ 0x080E9C08
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r2, _080E9C54  @ =gRam
	ldr r1, _080E9C58  @ =0x00001012
	add r0, r2, r1
	add r3, r5, r0
	mov r1, #130
	strb r1, [r3]
	ldr r4, _080E9C5C  @ =0x00001172
	add r0, r2, r4
	add r0, r5, r0
	strb r1, [r0]
	ldr r1, _080E9C60  @ =0x00001032
	add r0, r2, r1
	add r0, r5, r0
	mov r1, #73
	strb r1, [r0]
	ldr r4, _080E9C64  @ =0x00001002
	add r0, r2, r4
	add r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E9C6C
	add r0, r5, #0
	bl sub_080C4F98
	lsl r0, r0, #24
	cmp r0, #0
	beq _080E9CD2
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r0, _080E9C68  @ =0x00000177
	bl sub_080C95C0
	b _080E9CD2
	.byte 0x00
	.byte 0x00
_080E9C54:
	.4byte gRam
_080E9C58:
	.4byte 0x00001012
_080E9C5C:
	.4byte 0x00001172
_080E9C60:
	.4byte 0x00001032
_080E9C64:
	.4byte 0x00001002
_080E9C68:
	.4byte 0x00000177
_080E9C6C:
	mov r1, #0
	cmp r0, #15
	bls _080E9CC4
	cmp r0, #16
	bne _080E9CC0
	ldr r4, _080E9CF8  @ =0x000011B2
	add r0, r2, r4
	add r0, r5, r0
	strb r1, [r0]
	ldr r1, _080E9CFC  @ =0x00000FA2
	add r0, r2, r1
	add r0, r5, r0
	mov r1, #6
	strb r1, [r0]
	ldr r4, _080E9D00  @ =0x00000FC2
	add r0, r2, r4
	add r0, r5, r0
	mov r1, #15
	strb r1, [r0]
	ldrb r0, [r3]
	add r0, r0, #4
	strb r0, [r3]
	add r0, r5, #0
	mov r1, #21
	bl sub_080CF0AC
	mov r0, #77
	add r1, r5, #0
	bl sub_080CA538
	cmp r0, #0
	blt _080E9CBE
	lsl r4, r0, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080CAE50
	add r0, r4, #0
	mov r1, #6
	bl sub_080C6E84
_080E9CBE:
	mov r1, #1
_080E9CC0:
	cmp r1, #0
	beq _080E9CD2
_080E9CC4:
	ldr r1, _080E9D04  @ =gRam
	ldr r0, _080E9D08  @ =0x00001002
	add r1, r1, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080E9CD2:
	ldr r2, _080E9D04  @ =gRam
	ldr r4, _080E9D0C  @ =0x00001052
	add r1, r2, r4
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080E9D10  @ =0x00000F92
	add r2, r2, r1
	add r2, r5, r2
	mov r1, #4
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #26
	add r0, r0, #3
	strb r0, [r2]
	pop {r4,r5}
	pop {r0}
	bx r0
_080E9CF8:
	.4byte 0x000011B2
_080E9CFC:
	.4byte 0x00000FA2
_080E9D00:
	.4byte 0x00000FC2
_080E9D04:
	.4byte gRam
_080E9D08:
	.4byte 0x00001002
_080E9D0C:
	.4byte 0x00001052
_080E9D10:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080E9C08

	THUMB_FUNC_START sub_080E9D14
sub_080E9D14: @ 0x080E9D14
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080E9D78  @ =gRam
	ldr r1, _080E9D7C  @ =0x00000ED2
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r0, r4, r2
	strb r1, [r0]
	ldr r1, _080E9D80  @ =0x00000EF2
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	add r2, r2, #1
	add r0, r4, r2
	strb r1, [r0]
	ldr r1, _080E9D84  @ =0x00000EE2
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	add r2, r2, #3
	add r0, r4, r2
	strb r1, [r0]
	ldr r1, _080E9D88  @ =0x00000F02
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	add r2, r2, #1
	add r0, r4, r2
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0
	bl sub_080C781C
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #64
	beq _080E9D70
	ldr r1, _080E9D8C  @ =0x00000F52
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #5
	strb r1, [r0]
_080E9D70:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E9D78:
	.4byte gRam
_080E9D7C:
	.4byte 0x00000ED2
_080E9D80:
	.4byte 0x00000EF2
_080E9D84:
	.4byte 0x00000EE2
_080E9D88:
	.4byte 0x00000F02
_080E9D8C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E9D14

	THUMB_FUNC_START sub_080E9D90
sub_080E9D90: @ 0x080E9D90
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E9E8A
	ldr r2, _080E9E9C  @ =gRam
	ldr r1, _080E9EA0  @ =0x00000ED2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r3, _080E9EA4  @ =0x00000EF2
	add r0, r2, r3
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r5, _080E9EA8  @ =0x00000958
	add r0, r2, r5
	ldrh r0, [r0]
	sub r1, r1, r0
	ldr r7, _080E9EAC  @ =0x0000096C
	add r0, r2, r7
	strh r1, [r0]
	ldr r1, _080E9EB0  @ =0x00000F92
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r1, r0, #1
	add r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #8]
	mov r3, #2
	mov r10, r3
	mov r9, r2
	add r5, sp, #4
	mov r8, r5
_080E9DF2:
	ldr r0, [sp, #8]
	add r0, r0, r10
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r5, r0, #0
	ldr r0, _080E9EB4  @ =0x00000964
	add r0, r0, r9
	ldrh r6, [r0]
	ldr r0, _080E9EB8  @ =gUnknown_08177C8F
	add r0, r5, r0
	ldr r1, _080E9EBC  @ =0x00000969
	add r1, r1, r9
	ldrb r2, [r0]
	ldrb r0, [r1]
	add r4, r0, #0
	orr r4, r4, r2
	ldr r0, _080E9EC0  @ =gUnknown_08177C9E
	add r0, r0, r5
	mov r12, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E9E2C
	ldr r0, _080E9EAC  @ =0x0000096C
	add r0, r0, r9
	ldrh r6, [r0]
	mov r0, #240
	and r4, r4, r0
	mov r0, #2
	orr r4, r4, r0
_080E9E2C:
	ldr r0, _080E9EC4  @ =gUnknown_03003E74
	mov r7, r8
	ldrb r1, [r7]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r1, _080E9EC8  @ =gUnknown_08177C44
	lsl r3, r5, #1
	add r1, r3, r1
	ldrh r1, [r1]
	ldr r2, _080E9ECC  @ =gUnknown_03002B90
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080E9ED0  @ =gUnknown_08177C62
	add r3, r3, r2
	ldrh r2, [r3]
	add r2, r6, r2
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080E9ED4  @ =gUnknown_08177C80
	add r3, r5, r3
	ldrb r3, [r3]
	lsl r4, r4, #8
	orr r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r5, r12
	ldrb r4, [r5]
	str r4, [sp]
	bl sub_080C6368
	mov r7, r10
	lsl r1, r7, #24
	mov r0, #255
	lsl r0, r0, #24
	add r1, r1, r0
	mov r2, r8
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	lsr r3, r1, #24
	mov r10, r3
	cmp r1, #0
	bge _080E9DF2
_080E9E8A:
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
_080E9E9C:
	.4byte gRam
_080E9EA0:
	.4byte 0x00000ED2
_080E9EA4:
	.4byte 0x00000EF2
_080E9EA8:
	.4byte 0x00000958
_080E9EAC:
	.4byte 0x0000096C
_080E9EB0:
	.4byte 0x00000F92
_080E9EB4:
	.4byte 0x00000964
_080E9EB8:
	.4byte gUnknown_08177C8F
_080E9EBC:
	.4byte 0x00000969
_080E9EC0:
	.4byte gUnknown_08177C9E
_080E9EC4:
	.4byte gUnknown_03003E74
_080E9EC8:
	.4byte gUnknown_08177C44
_080E9ECC:
	.4byte gUnknown_03002B90
_080E9ED0:
	.4byte gUnknown_08177C62
_080E9ED4:
	.4byte gUnknown_08177C80
	THUMB_FUNC_END sub_080E9D90

	THUMB_FUNC_START sub_080E9ED8
sub_080E9ED8: @ 0x080E9ED8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r5, r3, #0
	ldr r1, _080E9F24  @ =gRam
	ldr r2, _080E9F28  @ =0x00000F52
	add r0, r1, r2
	add r4, r3, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080E9F02
	ldr r2, _080E9F2C  @ =0x00000D94
	add r0, r1, r2
	add r0, r3, r0
	ldrb r2, [r0]
	mov r1, #48
	orr r1, r1, r2
	strb r1, [r0]
	add r0, r3, #0
	bl sub_080E9D90
_080E9F02:
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080E9F1E
	ldr r0, _080E9F30  @ =gUnknown_08177C1C
	ldrb r1, [r4]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r5, #0
	bl _call_via_r1
_080E9F1E:
	pop {r4,r5}
	pop {r0}
	bx r0
_080E9F24:
	.4byte gRam
_080E9F28:
	.4byte 0x00000F52
_080E9F2C:
	.4byte 0x00000D94
_080E9F30:
	.4byte gUnknown_08177C1C
	THUMB_FUNC_END sub_080E9ED8

	THUMB_FUNC_START sub_080E9F34
sub_080E9F34: @ 0x080E9F34
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r4, r2, #0
	ldr r3, _080E9F78  @ =gRam
	ldr r1, _080E9F7C  @ =0x00000FC2
	add r0, r3, r1
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E9F60
	ldr r0, _080E9F80  @ =0x00000F52
	add r1, r3, r0
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080E9F84  @ =0x00001152
	add r0, r3, r1
	add r0, r2, r0
	mov r1, #64
	strb r1, [r0]
_080E9F60:
	ldr r1, _080E9F88  @ =0x00000F92
	add r0, r3, r1
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080E9D14
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080E9F78:
	.4byte gRam
_080E9F7C:
	.4byte 0x00000FC2
_080E9F80:
	.4byte 0x00000F52
_080E9F84:
	.4byte 0x00001152
_080E9F88:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080E9F34

	THUMB_FUNC_START sub_080E9F8C
sub_080E9F8C: @ 0x080E9F8C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r4, _080E9FB4  @ =gRam
	ldr r1, _080E9FB8  @ =0x00000FC2
	add r0, r4, r1
	add r5, r3, r0
	ldrb r0, [r5]
	lsl r1, r0, #24
	lsr r2, r1, #24
	cmp r2, #0
	beq _080E9FC0
	ldr r2, _080E9FBC  @ =0x00000F92
	add r0, r4, r2
	add r0, r3, r0
	lsr r1, r1, #26
	mov r2, #1
	and r1, r1, r2
	strb r1, [r0]
	b _080E9FCC
_080E9FB4:
	.4byte gRam
_080E9FB8:
	.4byte 0x00000FC2
_080E9FBC:
	.4byte 0x00000F92
_080E9FC0:
	ldr r1, _080E9FD8  @ =0x00000F52
	add r0, r4, r1
	add r0, r3, r0
	strb r2, [r0]
	mov r0, #32
	strb r0, [r5]
_080E9FCC:
	add r0, r3, #0
	bl sub_080E9D14
	pop {r4,r5}
	pop {r0}
	bx r0
_080E9FD8:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E9F8C

	THUMB_FUNC_START sub_080E9FDC
sub_080E9FDC: @ 0x080E9FDC
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _080EA044  @ =gRam
	ldr r1, _080EA048  @ =0x00000FC2
	add r0, r3, r1
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EA03C
	ldr r4, _080EA04C  @ =0x00000EE2
	add r1, r3, r4
	add r1, r2, r1
	add r4, r4, #128
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080EA050  @ =0x00000F02
	add r1, r3, r0
	add r1, r2, r1
	add r4, r4, #16
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080EA054  @ =0x00000ED2
	add r1, r3, r0
	add r1, r2, r1
	add r4, r4, #16
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080EA058  @ =0x00000EF2
	add r1, r3, r0
	add r1, r2, r1
	ldr r4, _080EA05C  @ =0x00001082
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080EA060  @ =0x00000F52
	add r1, r3, r0
	add r1, r2, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080EA03C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EA044:
	.4byte gRam
_080EA048:
	.4byte 0x00000FC2
_080EA04C:
	.4byte 0x00000EE2
_080EA050:
	.4byte 0x00000F02
_080EA054:
	.4byte 0x00000ED2
_080EA058:
	.4byte 0x00000EF2
_080EA05C:
	.4byte 0x00001082
_080EA060:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080E9FDC

	THUMB_FUNC_START sub_080EA064
sub_080EA064: @ 0x080EA064
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080EA100  @ =gRam
	ldr r1, _080EA104  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	add r0, r5, #0
	eor r0, r0, r1
	mov r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _080EA0FA
	ldr r2, _080EA108  @ =0x000016C4
	add r0, r4, r2
	ldrb r1, [r0]
	ldr r6, _080EA10C  @ =0x000016C5
	add r0, r4, r6
	mov r3, #0
	ldrsb r3, [r0, r3]
	lsl r3, r3, #8
	sub r2, r2, #162
	add r0, r4, r2
	ldrb r2, [r0]
	sub r6, r6, #162
	add r0, r4, r6
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	orr r1, r1, r3
	sub r1, r1, r2
	lsl r1, r1, #16
	mov r0, #192
	lsl r0, r0, #14
	add r1, r1, r0
	asr r1, r1, #16
	cmp r1, #95
	bgt _080EA0FA
	mov r1, #182
	lsl r1, r1, #5
	add r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _080EA110  @ =0x000016C1
	add r0, r4, r2
	mov r3, #0
	ldrsb r3, [r0, r3]
	lsl r3, r3, #8
	add r6, r6, #1
	add r0, r4, r6
	ldrb r2, [r0]
	add r6, r6, #1
	add r0, r4, r6
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	orr r1, r1, r3
	sub r1, r1, r2
	lsl r1, r1, #16
	mov r0, #192
	lsl r0, r0, #14
	add r1, r1, r0
	asr r1, r1, #16
	cmp r1, #95
	bgt _080EA0FA
	ldr r2, _080EA114  @ =0x00000F52
	add r1, r4, r2
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r6, _080EA118  @ =0x00000FC2
	add r0, r4, r6
	add r0, r5, r0
	mov r1, #31
	strb r1, [r0]
_080EA0FA:
	pop {r4-r6}
	pop {r0}
	bx r0
_080EA100:
	.4byte gRam
_080EA104:
	.4byte 0x00000996
_080EA108:
	.4byte 0x000016C4
_080EA10C:
	.4byte 0x000016C5
_080EA110:
	.4byte 0x000016C1
_080EA114:
	.4byte 0x00000F52
_080EA118:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080EA064

	THUMB_FUNC_START sub_080EA11C
sub_080EA11C: @ 0x080EA11C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080EA14C  @ =gRam
	ldr r3, _080EA150  @ =0x00000FC2
	add r0, r1, r3
	add r3, r2, r0
	ldrb r0, [r3]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EA158
	ldr r4, _080EA154  @ =0x00000F52
	add r0, r1, r4
	add r0, r2, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #96
	strb r0, [r3]
	add r0, r2, #0
	mov r1, #16
	bl sub_080C35FC
	b _080EA168
_080EA14C:
	.4byte gRam
_080EA150:
	.4byte 0x00000FC2
_080EA154:
	.4byte 0x00000F52
_080EA158:
	ldr r3, _080EA170  @ =0x00000F92
	add r1, r1, r3
	add r1, r2, r1
	ldr r2, _080EA174  @ =gUnknown_08177CC4
	lsr r0, r0, #26
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
_080EA168:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EA170:
	.4byte 0x00000F92
_080EA174:
	.4byte gUnknown_08177CC4
	THUMB_FUNC_END sub_080EA11C

	THUMB_FUNC_START sub_080EA178
sub_080EA178: @ 0x080EA178
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r2, _080EA1AC  @ =gRam
	ldr r1, _080EA1B0  @ =0x00001172
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	ldr r1, _080EA1B4  @ =0x00000FC2
	add r0, r2, r1
	add r3, r4, r0
	ldrb r0, [r3]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EA1B8
	sub r1, r1, #112
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #8
	strb r0, [r3]
	b _080EA1D8
	.byte 0x00
	.byte 0x00
_080EA1AC:
	.4byte gRam
_080EA1B0:
	.4byte 0x00001172
_080EA1B4:
	.4byte 0x00000FC2
_080EA1B8:
	ldr r1, _080EA1E0  @ =0x00000F92
	add r2, r2, r1
	add r2, r4, r2
	ldr r3, _080EA1E4  @ =gUnknown_08177CCC
	lsr r0, r0, #26
	mov r1, #1
	and r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	add r0, r4, #0
	bl sub_080C5044
	add r0, r4, #0
	bl Sprite3_Move
_080EA1D8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EA1E0:
	.4byte 0x00000F92
_080EA1E4:
	.4byte gUnknown_08177CCC
	THUMB_FUNC_END sub_080EA178

	THUMB_FUNC_START sub_080EA1E8
sub_080EA1E8: @ 0x080EA1E8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EA2A2
	ldr r2, _080EA2B4  @ =gRam
	ldr r1, _080EA2B8  @ =0x00000F92
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	mov r7, #2
	mov r8, r2
	ldr r2, _080EA2BC  @ =0x00000969
	add r2, r2, r8
	mov r10, r2
_080EA228:
	mov r1, #150
	lsl r1, r1, #4
	add r1, r1, r8
	ldr r0, _080EA2C0  @ =gUnknown_08177CD3
	mov r3, r9
	add r6, r7, r3
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r5, #0
	ldrsh r1, [r1, r5]
	add r1, r1, r0
	ldr r2, _080EA2C4  @ =0x00000964
	add r2, r2, r8
	ldr r0, _080EA2C8  @ =gUnknown_08177CE5
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r3, #0
	ldrsh r2, [r2, r3]
	add r2, r2, r0
	ldr r0, _080EA2CC  @ =gUnknown_03003E74
	sub r3, r7, #2
	ldrh r0, [r0]
	sub r0, r0, r3
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080EA2D0  @ =gUnknown_08177CF7
	add r3, r6, r3
	ldrb r3, [r3]
	ldr r4, _080EA2D4  @ =gUnknown_08177D09
	add r4, r6, r4
	ldrb r4, [r4]
	mov r5, r10
	ldrb r5, [r5]
	lsl r5, r5, #24
	asr r5, r5, #24
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r4, _080EA2D8  @ =gUnknown_08177D1B
	add r6, r6, r4
	ldrb r5, [r6]
	mov r4, #2
	and r4, r4, r5
	lsl r4, r4, #24
	lsr r4, r4, #24
	str r4, [sp]
	bl sub_080C6368
	sub r7, r7, #1
	cmp r7, #0
	bge _080EA228
_080EA2A2:
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
_080EA2B4:
	.4byte gRam
_080EA2B8:
	.4byte 0x00000F92
_080EA2BC:
	.4byte 0x00000969
_080EA2C0:
	.4byte gUnknown_08177CD3
_080EA2C4:
	.4byte 0x00000964
_080EA2C8:
	.4byte gUnknown_08177CE5
_080EA2CC:
	.4byte gUnknown_03003E74
_080EA2D0:
	.4byte gUnknown_08177CF7
_080EA2D4:
	.4byte gUnknown_08177D09
_080EA2D8:
	.4byte gUnknown_08177D1B
	THUMB_FUNC_END sub_080EA1E8

	THUMB_FUNC_START sub_080EA2DC
sub_080EA2DC: @ 0x080EA2DC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080EA2F8  @ =gRam
	ldr r1, _080EA2FC  @ =0x00000EE2
	add r2, r2, r1
	add r2, r0, r2
	ldrb r1, [r2]
	add r1, r1, #8
	strb r1, [r2]
	bl sub_080E9A10
	pop {r0}
	bx r0
_080EA2F8:
	.4byte gRam
_080EA2FC:
	.4byte 0x00000EE2
	THUMB_FUNC_END sub_080EA2DC

	THUMB_FUNC_START sub_080EA300
sub_080EA300: @ 0x080EA300
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080EA310
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080EA300

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080EA310
sub_080EA310: @ 0x080EA310
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _080EA334  @ =gRam
	ldr r1, _080EA338  @ =0x00000F52
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080EA33C
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r4, #0
	bl sub_080C632C
	b _080EA342
_080EA334:
	.4byte gRam
_080EA338:
	.4byte 0x00000F52
_080EA33C:
	add r0, r4, #0
	bl sub_080EA1E8
_080EA342:
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EA37C
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EA37C
	ldr r2, _080EA384  @ =gRam
	ldr r1, _080EA388  @ =0x00001172
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	ldr r1, _080EA38C  @ =gUnknown_08177CB0
	ldr r0, _080EA390  @ =0x00000F52
	add r2, r2, r0
	add r2, r4, r2
	ldrb r0, [r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080EA37C:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_080EA384:
	.4byte gRam
_080EA388:
	.4byte 0x00001172
_080EA38C:
	.4byte gUnknown_08177CB0
_080EA390:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080EA310

	THUMB_FUNC_START sub_080EA394
sub_080EA394: @ 0x080EA394
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r1, _080EA3B8  @ =gRam
	ldr r2, _080EA3BC  @ =0x00000FC2
	add r0, r1, r2
	add r4, r3, r0
	ldrb r0, [r4]
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _080EA3C4
	ldr r5, _080EA3C0  @ =0x00000F52
	add r0, r1, r5
	add r0, r3, r0
	strb r2, [r0]
	strb r2, [r4]
	b _080EA3D4
_080EA3B8:
	.4byte gRam
_080EA3BC:
	.4byte 0x00000FC2
_080EA3C0:
	.4byte 0x00000F52
_080EA3C4:
	ldr r2, _080EA3DC  @ =0x00000F92
	add r1, r1, r2
	add r1, r3, r1
	ldr r2, _080EA3E0  @ =gUnknown_08177CCE
	lsr r0, r0, #25
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
_080EA3D4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EA3DC:
	.4byte 0x00000F92
_080EA3E0:
	.4byte gUnknown_08177CCE
	THUMB_FUNC_END sub_080EA394

	THUMB_FUNC_START sub_080EA3E4
sub_080EA3E4: @ 0x080EA3E4
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r1, _080EA450  @ =gRam
	ldr r2, _080EA454  @ =0x00000F22
	add r0, r1, r2
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r4, r0, #24
	add r6, r1, #0
	cmp r4, #0
	beq _080EA416
	ldr r0, _080EA458  @ =0x00001122
	add r2, r6, r0
	add r2, r5, r2
	ldrb r0, [r2]
	mov r1, #191
	and r1, r1, r0
	ldr r3, _080EA45C  @ =gUnknown_08177D30
	lsr r0, r4, #31
	add r0, r0, r3
	ldrb r0, [r0]
	orr r1, r1, r0
	strb r1, [r2]
_080EA416:
	ldr r1, _080EA460  @ =0x00000F92
	add r0, r6, r1
	add r0, r5, r0
	ldrb r7, [r0]
	ldr r2, _080EA464  @ =0x0000164C
	add r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EA474
	ldr r1, _080EA468  @ =0x000009AD
	add r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #35
	beq _080EA436
	cmp r0, #44
	bne _080EA49A
_080EA436:
	ldr r2, _080EA46C  @ =0x000009E8
	add r0, r6, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _080EA49A
	cmp r0, #2
	bhi _080EA49A
	ldr r1, _080EA470  @ =0x00000CF8
	add r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #31
	bhi _080EA49A
	b _080EA4A6
_080EA450:
	.4byte gRam
_080EA454:
	.4byte 0x00000F22
_080EA458:
	.4byte 0x00001122
_080EA45C:
	.4byte gUnknown_08177D30
_080EA460:
	.4byte 0x00000F92
_080EA464:
	.4byte 0x0000164C
_080EA468:
	.4byte 0x000009AD
_080EA46C:
	.4byte 0x000009E8
_080EA470:
	.4byte 0x00000CF8
_080EA474:
	ldr r2, _080EA5B0  @ =0x000009AD
	add r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #35
	beq _080EA482
	cmp r0, #44
	bne _080EA4A6
_080EA482:
	ldr r1, _080EA5B4  @ =0x000009E8
	add r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _080EA4A6
	cmp r0, #2
	bhi _080EA4A6
	ldr r2, _080EA5B8  @ =0x00000CF8
	add r0, r6, r2
	ldrh r0, [r0]
	cmp r0, #31
	bhi _080EA4A6
_080EA49A:
	ldr r0, _080EA5BC  @ =0x00000F92
	add r1, r6, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #2
	strb r0, [r1]
_080EA4A6:
	add r0, r5, #0
	bl sub_080C6240
	mov r1, #128
	lsl r1, r1, #2
	mov r0, #1
	bl sub_080C6174
	ldr r4, _080EA5C0  @ =gRam
	ldr r1, _080EA5BC  @ =0x00000F92
	add r0, r4, r1
	add r0, r5, r0
	strb r7, [r0]
	ldr r2, _080EA5C4  @ =0x00001082
	add r0, r4, r2
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EA4CE
	b _080EA6B0
_080EA4CE:
	add r1, r1, #16
	add r0, r4, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #10
	bne _080EA51A
	ldr r2, _080EA5C8  @ =0x00000F52
	add r0, r4, r2
	add r0, r5, r0
	mov r1, #3
	strb r1, [r0]
	ldr r1, _080EA5B0  @ =0x000009AD
	add r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EA51A
	ldr r2, _080EA5CC  @ =0x00001052
	add r1, r4, r2
	add r1, r5, r1
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	add r0, r5, #0
	bl sub_080EAB14
	add r0, r5, #0
	bl sub_080EABEC
	ldr r1, _080EA5D0  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _080EA51A
	add r0, r5, #0
	bl sub_080EAC54
_080EA51A:
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080EA528
	b _080EA6E8
_080EA528:
	ldr r6, _080EA5C0  @ =gRam
	ldr r2, _080EA5D4  @ =0x0000164C
	add r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EA540
	add r0, r5, #0
	bl sub_080C841C
	cmp r0, #0
	beq _080EA540
	b _080EA6E8
_080EA540:
	ldr r1, _080EA5D8  @ =0x00000F82
	add r0, r6, r1
	add r0, r5, r0
	ldrb r7, [r0]
	cmp r7, #0
	bne _080EA60E
	ldr r2, _080EA5DC  @ =0x00001022
	add r0, r6, r2
	add r0, r5, r0
	mov r1, #255
	strb r1, [r0]
	ldr r1, _080EA5E0  @ =0x00000F72
	add r0, r6, r1
	add r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #34
	bls _080EA568
	add r0, r5, #0
	bl sub_080EA9C8
_080EA568:
	ldr r2, _080EA5E4  @ =0x00001072
	add r0, r6, r2
	add r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080EA590
	strb r7, [r1]
	ldrb r0, [r4]
	cmp r0, #34
	bhi _080EA580
	add r0, r0, #1
	strb r0, [r4]
_080EA580:
	add r0, r5, #0
	bl sub_080EAC54
	ldr r1, _080EA5C8  @ =0x00000F52
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #2
	strb r1, [r0]
_080EA590:
	mov r0, sp
	add r1, r5, #0
	bl sub_080C4948
	ldr r0, _080EA5C0  @ =gRam
	ldr r2, _080EA5C8  @ =0x00000F52
	add r0, r0, r2
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #1
	beq _080EA5F6
	cmp r0, #1
	bgt _080EA5E8
	cmp r0, #0
	beq _080EA5EE
	b _080EA606
_080EA5B0:
	.4byte 0x000009AD
_080EA5B4:
	.4byte 0x000009E8
_080EA5B8:
	.4byte 0x00000CF8
_080EA5BC:
	.4byte 0x00000F92
_080EA5C0:
	.4byte gRam
_080EA5C4:
	.4byte 0x00001082
_080EA5C8:
	.4byte 0x00000F52
_080EA5CC:
	.4byte 0x00001052
_080EA5D0:
	.4byte 0x00000996
_080EA5D4:
	.4byte 0x0000164C
_080EA5D8:
	.4byte 0x00000F82
_080EA5DC:
	.4byte 0x00001022
_080EA5E0:
	.4byte 0x00000F72
_080EA5E4:
	.4byte 0x00001072
_080EA5E8:
	cmp r0, #2
	beq _080EA5FE
	b _080EA606
_080EA5EE:
	add r0, r5, #0
	bl sub_080EA700
	b _080EA6E8
_080EA5F6:
	add r0, r5, #0
	bl sub_080EA788
	b _080EA6E8
_080EA5FE:
	add r0, r5, #0
	bl sub_080EAB4C
	b _080EA6E8
_080EA606:
	add r0, r5, #0
	bl sub_080EA8EC
	b _080EA6E8
_080EA60E:
	ldr r0, _080EA694  @ =0x00001122
	add r1, r6, r0
	add r1, r5, r1
	ldrb r2, [r1]
	mov r0, #16
	orr r0, r0, r2
	strb r0, [r1]
	add r0, r5, #0
	bl Sprite3_Move
	ldr r1, _080EA698  @ =0x00001142
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #12
	strb r1, [r0]
	ldr r2, _080EA69C  @ =0x00001172
	add r0, r6, r2
	add r0, r5, r0
	strb r1, [r0]
	ldr r1, _080EA6A0  @ =0x00000996
	add r0, r6, r1
	ldrb r1, [r0]
	add r0, r5, #0
	eor r0, r0, r1
	mov r1, #7
	and r0, r0, r1
	cmp r0, #0
	bne _080EA68A
	add r0, r5, #0
	bl sub_080C4F98
	mov r4, #15
_080EA64E:
	cmp r4, r5
	beq _080EA684
	ldr r1, _080EA6A4  @ =gRam
	ldr r2, _080EA6A8  @ =0x00000FF2
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #11
	beq _080EA684
	sub r2, r2, #80
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #8
	bls _080EA684
	ldr r2, _080EA6AC  @ =0x000010C2
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EA684
	lsl r1, r4, #24
	lsr r1, r1, #24
	add r0, r5, #0
	mov r2, #2
	bl sub_080E46C8
_080EA684:
	sub r4, r4, #1
	cmp r4, #0
	bge _080EA64E
_080EA68A:
	add r0, r5, #0
	bl sub_080EAB14
	b _080EA6E8
	.byte 0x00
	.byte 0x00
_080EA694:
	.4byte 0x00001122
_080EA698:
	.4byte 0x00001142
_080EA69C:
	.4byte 0x00001172
_080EA6A0:
	.4byte 0x00000996
_080EA6A4:
	.4byte gRam
_080EA6A8:
	.4byte 0x00000FF2
_080EA6AC:
	.4byte 0x000010C2
_080EA6B0:
	ldr r1, _080EA6F0  @ =0x00000FF2
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #61
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080CEB84
	ldr r2, _080EA6F4  @ =0x00001002
	add r1, r4, r2
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080EA6F8  @ =0x00000FC2
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #48
	strb r1, [r0]
	mov r0, #21
	mov r1, #0
	bl sub_0812A324
	ldr r2, _080EA6FC  @ =0x00001172
	add r0, r4, r2
	add r0, r5, r0
	mov r1, #21
	strb r1, [r0]
_080EA6E8:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_080EA6F0:
	.4byte 0x00000FF2
_080EA6F4:
	.4byte 0x00001002
_080EA6F8:
	.4byte 0x00000FC2
_080EA6FC:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080EA3E4

	THUMB_FUNC_START sub_080EA700
sub_080EA700: @ 0x080EA700
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	ldr r5, _080EA768  @ =gRam
	ldr r1, _080EA76C  @ =0x00000FC2
	add r0, r5, r1
	add r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #0
	bne _080EA752
	bl GetRandomInt
	mov r2, #15
	and r2, r2, r0
	ldr r0, _080EA770  @ =0x00000F22
	add r1, r5, r0
	add r1, r4, r1
	ldr r0, _080EA774  @ =gUnknown_08177D54
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080EA778  @ =0x00000F12
	add r1, r5, r0
	add r1, r4, r1
	ldr r0, _080EA77C  @ =gUnknown_08177D64
	add r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	bl GetRandomInt
	mov r1, #31
	and r1, r1, r0
	add r1, r1, #16
	strb r1, [r6]
	ldr r0, _080EA780  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080EA752:
	ldr r1, _080EA784  @ =0x00000F92
	add r0, r5, r1
	add r0, r7, r0
	mov r1, #0
	strb r1, [r0]
	add r0, r7, #0
	bl sub_080C3094
	pop {r4-r7}
	pop {r0}
	bx r0
_080EA768:
	.4byte gRam
_080EA76C:
	.4byte 0x00000FC2
_080EA770:
	.4byte 0x00000F22
_080EA774:
	.4byte gUnknown_08177D54
_080EA778:
	.4byte 0x00000F12
_080EA77C:
	.4byte gUnknown_08177D64
_080EA780:
	.4byte 0x00000F52
_080EA784:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080EA700

	THUMB_FUNC_START sub_080EA788
sub_080EA788: @ 0x080EA788
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080EA808  @ =gRam
	ldr r1, _080EA80C  @ =0x00000996
	add r0, r5, r1
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080EA7B8
	add r0, r4, #0
	bl sub_080EAC34
	lsl r0, r0, #24
	cmp r0, #0
	beq _080EA7B8
	ldr r1, _080EA810  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
_080EA7B8:
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r5, _080EA808  @ =gRam
	ldr r1, _080EA814  @ =0x00001152
	add r0, r5, r1
	add r3, r4, r0
	ldrb r0, [r3]
	sub r0, r0, #2
	strb r0, [r3]
	sub r1, r1, #16
	add r0, r5, r1
	add r1, r4, r0
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080EA7FA
	mov r0, #0
	strb r0, [r1]
	ldr r1, _080EA818  @ =0x00000FC2
	add r0, r5, r1
	add r1, r4, r0
	ldrb r2, [r1]
	cmp r2, #0
	bne _080EA7F6
	mov r0, #32
	strb r0, [r1]
	ldr r1, _080EA810  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
_080EA7F6:
	mov r0, #10
	strb r0, [r3]
_080EA7FA:
	add r0, r4, #0
	bl sub_080EAB14
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EA808:
	.4byte gRam
_080EA80C:
	.4byte 0x00000996
_080EA810:
	.4byte 0x00000F52
_080EA814:
	.4byte 0x00001152
_080EA818:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080EA788

	THUMB_FUNC_START sub_080EA81C
sub_080EA81C: @ 0x080EA81C
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r2, _080EA854  @ =gRam
	ldr r0, _080EA858  @ =0x00001052
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #5
	strb r0, [r1]
	ldr r1, _080EA85C  @ =0x00000F92
	add r2, r2, r1
	add r2, r4, r2
	lsl r0, r0, #24
	lsr r0, r0, #28
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	bl sub_080C3094
	add r0, r4, #0
	bl sub_080EABEC
	pop {r4}
	pop {r0}
	bx r0
_080EA854:
	.4byte gRam
_080EA858:
	.4byte 0x00001052
_080EA85C:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080EA81C

	THUMB_FUNC_START sub_080EA860
sub_080EA860: @ 0x080EA860
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r0, #16
	bl sub_080CF370
	ldr r2, _080EA8D0  @ =gRam
	ldr r1, _080EA8D4  @ =0x0000096C
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #24
	and r0, r0, r1
	cmp r0, #0
	beq _080EA8C6
	mov r0, #3
	ldr r3, _080EA8D8  @ =0x00000964
	add r7, r2, r3
	ldr r6, _080EA8DC  @ =gUnknown_03003E74
	mov r1, #150
	lsl r1, r1, #4
	add r5, r2, r1
_080EA888:
	lsl r4, r0, #24
	asr r4, r4, #24
	ldrh r0, [r6]
	add r0, r0, r4
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r1, _080EA8E0  @ =gUnknown_08177D32
	lsl r3, r4, #1
	add r1, r3, r1
	ldrh r1, [r1]
	ldrh r2, [r5]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080EA8E4  @ =gUnknown_08177D3A
	add r3, r3, r2
	ldrh r2, [r3]
	ldrh r3, [r7]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r3, #0
	str r3, [sp]
	ldr r3, _080EA8E8  @ =0x00002213
	bl sub_080C6368
	sub r4, r4, #1
	lsl r4, r4, #24
	lsr r0, r4, #24
	cmp r4, #0
	bge _080EA888
_080EA8C6:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EA8D0:
	.4byte gRam
_080EA8D4:
	.4byte 0x0000096C
_080EA8D8:
	.4byte 0x00000964
_080EA8DC:
	.4byte gUnknown_03003E74
_080EA8E0:
	.4byte gUnknown_08177D32
_080EA8E4:
	.4byte gUnknown_08177D3A
_080EA8E8:
	.4byte 0x00002213
	THUMB_FUNC_END sub_080EA860

	THUMB_FUNC_START sub_080EA8EC
sub_080EA8EC: @ 0x080EA8EC
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	add r0, r4, #0
	bl sub_080EAC14
	lsl r0, r0, #24
	cmp r0, #0
	beq _080EA91E
	add r0, r4, #0
	bl Sprite_Invert_XY_Speeds
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl Sprite_Halve_XY_Speeds
	add r0, r4, #0
	bl Sprite_Halve_XY_Speeds
	add r0, r4, #0
	bl sub_080EAC54
_080EA91E:
	ldr r5, _080EA960  @ =gRam
	ldr r0, _080EA964  @ =0x00001152
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, _080EA968  @ =0x00001142
	add r0, r5, r1
	add r1, r4, r0
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080EA974
	ldr r2, _080EA96C  @ =0x00001052
	add r1, r5, r2
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #4
	strb r0, [r1]
	ldr r1, _080EA970  @ =0x00000F92
	add r2, r5, r1
	add r2, r4, r2
	lsl r0, r0, #24
	lsr r0, r0, #28
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	bl sub_080C3094
	b _080EA9B6
	.byte 0x00
	.byte 0x00
_080EA960:
	.4byte gRam
_080EA964:
	.4byte 0x00001152
_080EA968:
	.4byte 0x00001142
_080EA96C:
	.4byte 0x00001052
_080EA970:
	.4byte 0x00000F92
_080EA974:
	mov r0, #0
	strb r0, [r1]
	ldr r2, _080EA9BC  @ =0x00000F52
	add r0, r5, r2
	add r0, r6, r0
	mov r1, #2
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #16
	bl sub_080C2CB4
	ldr r0, _080EA9C0  @ =0x00000F12
	add r1, r5, r0
	add r1, r6, r1
	mov r2, #150
	lsl r2, r2, #4
	add r0, r5, r2
	ldrb r0, [r0]
	mvn r0, r0
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080EA9C4  @ =0x00000F22
	add r1, r5, r0
	add r1, r6, r1
	add r2, r2, #1
	add r0, r5, r2
	ldrb r0, [r0]
	mvn r0, r0
	add r0, r0, #1
	strb r0, [r1]
	add r0, r6, #0
	bl sub_080EA81C
_080EA9B6:
	pop {r4-r6}
	pop {r0}
	bx r0
_080EA9BC:
	.4byte 0x00000F52
_080EA9C0:
	.4byte 0x00000F12
_080EA9C4:
	.4byte 0x00000F22
	THUMB_FUNC_END sub_080EA8EC

	THUMB_FUNC_START sub_080EA9C8
sub_080EA9C8: @ 0x080EA9C8
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r5, _080EAA5C  @ =gRam
	ldr r1, _080EAA60  @ =0x00000996
	add r0, r5, r1
	ldrb r1, [r0]
	add r0, r7, #0
	eor r0, r0, r1
	mov r1, #15
	and r0, r0, r1
	ldr r2, _080EAA64  @ =0x000009B2
	add r1, r5, r2
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	orr r0, r0, r1
	cmp r0, #0
	bne _080EAAD2
	mov r0, #11
	add r1, r7, #0
	mov r2, #10
	bl sub_080C9AAC
	add r4, r0, #0
	cmp r4, #0
	blt _080EAAD2
	add r0, r7, #0
	mov r1, #100
	bl sub_080CF140
	ldr r3, _080EAA68  @ =0x00000F82
	add r0, r5, r3
	add r0, r4, r0
	mov r6, #1
	strb r6, [r0]
	bl GetRandomInt
	ldr r1, _080EAA6C  @ =0x0000097D
	add r2, r5, r1
	strb r0, [r2]
	mov r1, #2
	and r1, r1, r0
	cmp r1, #0
	bne _080EAA84
	ldrb r1, [r2]
	ldr r2, _080EAA70  @ =0x00000958
	add r0, r5, r2
	ldrh r2, [r0]
	add r2, r1, r2
	ldr r0, _080EAA74  @ =gUnknown_08177D42
	and r1, r1, r6
	add r1, r1, r0
	ldr r3, _080EAA78  @ =0x00000952
	add r0, r5, r3
	ldrh r3, [r0]
	ldrb r1, [r1]
	add r3, r3, r1
	ldr r1, _080EAA7C  @ =0x00000ED2
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
	add r1, r1, #32
	add r0, r5, r1
	add r0, r4, r0
	lsr r2, r2, #8
	strb r2, [r0]
	ldr r2, _080EAA80  @ =0x00000EE2
	add r0, r5, r2
	add r0, r4, r0
	strb r3, [r0]
	add r1, r1, #16
	b _080EAABA
	.byte 0x00
	.byte 0x00
_080EAA5C:
	.4byte gRam
_080EAA60:
	.4byte 0x00000996
_080EAA64:
	.4byte 0x000009B2
_080EAA68:
	.4byte 0x00000F82
_080EAA6C:
	.4byte 0x0000097D
_080EAA70:
	.4byte 0x00000958
_080EAA74:
	.4byte gUnknown_08177D42
_080EAA78:
	.4byte 0x00000952
_080EAA7C:
	.4byte 0x00000ED2
_080EAA80:
	.4byte 0x00000EE2
_080EAA84:
	ldrb r1, [r2]
	ldr r2, _080EAAD8  @ =0x00000952
	add r0, r5, r2
	ldrh r2, [r0]
	add r2, r1, r2
	ldr r0, _080EAADC  @ =gUnknown_08177D42
	and r1, r1, r6
	add r1, r1, r0
	ldr r3, _080EAAE0  @ =0x00000958
	add r0, r5, r3
	ldrh r3, [r0]
	ldrb r1, [r1]
	add r3, r3, r1
	ldr r1, _080EAAE4  @ =0x00000EE2
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
	add r1, r1, #32
	add r0, r5, r1
	add r0, r4, r0
	lsr r2, r2, #8
	strb r2, [r0]
	ldr r2, _080EAAE8  @ =0x00000ED2
	add r0, r5, r2
	add r0, r4, r0
	strb r3, [r0]
	sub r1, r1, #16
_080EAABA:
	add r0, r5, r1
	add r0, r4, r0
	lsr r3, r3, #8
	strb r3, [r0]
	lsl r0, r4, #24
	lsr r0, r0, #24
	mov r1, #32
	bl sub_080C35FC
	add r0, r7, #0
	bl sub_080EAC54
_080EAAD2:
	pop {r4-r7}
	pop {r0}
	bx r0
_080EAAD8:
	.4byte 0x00000952
_080EAADC:
	.4byte gUnknown_08177D42
_080EAAE0:
	.4byte 0x00000958
_080EAAE4:
	.4byte 0x00000EE2
_080EAAE8:
	.4byte 0x00000ED2
	THUMB_FUNC_END sub_080EA9C8

	THUMB_FUNC_START sub_080EAAEC
sub_080EAAEC: @ 0x080EAAEC
	bx lr
	THUMB_FUNC_END sub_080EAAEC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080EAAF0
sub_080EAAF0: @ 0x080EAAF0
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080EAB0C  @ =gRam
	ldr r3, _080EAB10  @ =0x00000996
	add r2, r1, r3
	ldrb r2, [r2]
	sub r3, r3, #42
	add r1, r1, r3
	strb r2, [r1]
	bl sub_080EA860
	pop {r0}
	bx r0
_080EAB0C:
	.4byte gRam
_080EAB10:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080EAAF0

	THUMB_FUNC_START sub_080EAB14
sub_080EAB14: @ 0x080EAB14
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080EAB40  @ =gRam
	ldr r1, _080EAB44  @ =0x00001052
	add r2, r3, r1
	add r2, r0, r2
	ldrb r1, [r2]
	add r1, r1, #4
	strb r1, [r2]
	ldr r2, _080EAB48  @ =0x00000F92
	add r3, r3, r2
	add r3, r0, r3
	lsl r1, r1, #24
	lsr r1, r1, #28
	mov r2, #1
	and r1, r1, r2
	strb r1, [r3]
	bl sub_080C3094
	pop {r0}
	bx r0
_080EAB40:
	.4byte gRam
_080EAB44:
	.4byte 0x00001052
_080EAB48:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080EAB14

	THUMB_FUNC_START sub_080EAB4C
sub_080EAB4C: @ 0x080EAB4C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C3094
	add r0, r4, #0
	bl sub_080EAC34
	ldr r2, _080EAB84  @ =gRam
	ldr r1, _080EAB88  @ =0x00001142
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	ldr r0, _080EAB8C  @ =0x00000996
	add r2, r2, r0
	ldrb r1, [r2]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #31
	and r0, r0, r1
	cmp r0, #0
	beq _080EAB90
	add r0, r4, #0
	bl sub_080EA81C
	b _080EAB96
_080EAB84:
	.4byte gRam
_080EAB88:
	.4byte 0x00001142
_080EAB8C:
	.4byte 0x00000996
_080EAB90:
	add r0, r4, #0
	bl sub_080EAB9C
_080EAB96:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080EAB4C

	THUMB_FUNC_START sub_080EAB9C
sub_080EAB9C: @ 0x080EAB9C
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	mov r1, #16
	bl sub_080C2CB4
	ldr r2, _080EABE0  @ =gRam
	ldr r0, _080EABE4  @ =0x00000F12
	add r1, r2, r0
	add r1, r4, r1
	mov r3, #150
	lsl r3, r3, #4
	add r0, r2, r3
	ldrb r0, [r0]
	mvn r0, r0
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080EABE8  @ =0x00000F22
	add r1, r2, r0
	add r1, r4, r1
	add r3, r3, #1
	add r2, r2, r3
	ldrb r0, [r2]
	mvn r0, r0
	add r0, r0, #1
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080EA81C
	pop {r4}
	pop {r0}
	bx r0
_080EABE0:
	.4byte gRam
_080EABE4:
	.4byte 0x00000F12
_080EABE8:
	.4byte 0x00000F22
	THUMB_FUNC_END sub_080EAB9C

	THUMB_FUNC_START sub_080EABEC
sub_080EABEC: @ 0x080EABEC
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EAC0C
	add r0, r4, #0
	bl sub_080EAAF0
_080EAC0C:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080EABEC

	THUMB_FUNC_START sub_080EAC14
sub_080EAC14: @ 0x080EAC14
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080C2C4C
	add r0, r4, #0
	bl sub_080EAC34
	lsl r0, r0, #24
	lsr r0, r0, #24
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080EAC14

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080EAC34
sub_080EAC34: @ 0x080EAC34
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C79D0
	lsl r0, r0, #24
	lsr r0, r0, #24
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080EAC34

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080EAC54
sub_080EAC54: @ 0x080EAC54
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #98
	bl sub_080CF0AC
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080EAC54

	THUMB_FUNC_START sub_080EAC64
sub_080EAC64: @ 0x080EAC64
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080EACEC  @ =gRam
	ldr r1, _080EACF0  @ =0x00000996
	add r0, r5, r1
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #3
	and r0, r0, r1
	ldr r2, _080EACF4  @ =0x00000FC2
	add r1, r5, r2
	add r6, r4, r1
	ldrb r1, [r6]
	orr r0, r0, r1
	cmp r0, #0
	bne _080EACE6
	add r0, r4, #0
	bl sub_080C2FA8
	ldr r1, _080EACF8  @ =0x0000097C
	add r0, r5, r1
	ldrb r0, [r0]
	add r0, r0, #40
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #79
	bhi _080EACE6
	ldr r2, _080EACFC  @ =0x0000097D
	add r0, r5, r2
	ldrb r0, [r0]
	add r0, r0, #40
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #79
	bhi _080EACE6
	add r0, r4, #0
	mov r1, #100
	bl sub_080CF140
	ldr r0, _080EAD00  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r1, #64
	strb r1, [r6]
	ldr r2, _080EAD04  @ =0x00000F72
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C2FA8
	ldr r2, _080EAD08  @ =0x00000F62
	add r1, r5, r2
	add r1, r4, r1
	ldr r2, _080EAD0C  @ =gUnknown_08177D4E
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
_080EACE6:
	pop {r4-r6}
	pop {r0}
	bx r0
_080EACEC:
	.4byte gRam
_080EACF0:
	.4byte 0x00000996
_080EACF4:
	.4byte 0x00000FC2
_080EACF8:
	.4byte 0x0000097C
_080EACFC:
	.4byte 0x0000097D
_080EAD00:
	.4byte 0x00000F52
_080EAD04:
	.4byte 0x00000F72
_080EAD08:
	.4byte 0x00000F62
_080EAD0C:
	.4byte gUnknown_08177D4E
	THUMB_FUNC_END sub_080EAC64

	THUMB_FUNC_START sub_080EAD10
sub_080EAD10: @ 0x080EAD10
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080EAD44  @ =gRam
	ldr r1, _080EAD48  @ =0x00000FC2
	add r0, r5, r1
	add r3, r4, r0
	ldrb r2, [r3]
	add r1, r2, #0
	cmp r1, #0
	bne _080EAD50
	ldr r2, _080EAD4C  @ =0x00000F52
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	mov r0, #64
	strb r0, [r3]
	add r2, r2, #64
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080E2614
	b _080EADC8
	.byte 0x00
	.byte 0x00
_080EAD44:
	.4byte gRam
_080EAD48:
	.4byte 0x00000FC2
_080EAD4C:
	.4byte 0x00000F52
_080EAD50:
	mov r0, #7
	and r0, r0, r2
	cmp r0, #0
	bne _080EAD88
	ldr r0, _080EADD0  @ =0x00000F62
	add r2, r5, r0
	add r2, r4, r2
	ldr r3, _080EADD4  @ =gUnknown_08177D52
	ldr r1, _080EADD8  @ =0x00000F72
	add r0, r5, r1
	add r5, r4, r0
	ldrb r1, [r5]
	mov r0, #1
	and r0, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	ldrb r1, [r2]
	add r0, r0, r1
	strb r0, [r2]
	bl GetRandomInt
	mov r1, #3
	and r1, r1, r0
	cmp r1, #0
	bne _080EAD88
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_080EAD88:
	ldr r3, _080EADDC  @ =gRam
	ldr r2, _080EADD0  @ =0x00000F62
	add r0, r3, r2
	add r0, r4, r0
	ldrb r0, [r0]
	mov r2, #15
	and r2, r2, r0
	ldr r0, _080EADE0  @ =0x00000F22
	add r1, r3, r0
	add r1, r4, r1
	ldr r0, _080EADE4  @ =gUnknown_08177D54
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080EADE8  @ =0x00000F12
	add r1, r3, r0
	add r1, r4, r1
	ldr r0, _080EADEC  @ =gUnknown_08177D64
	add r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _080EADF0  @ =0x00000F92
	add r2, r3, r1
	add r2, r4, r2
	ldr r0, _080EADF4  @ =0x00000996
	add r3, r3, r0
	ldrb r0, [r3]
	lsr r0, r0, #2
	mov r1, #1
	and r0, r0, r1
	add r0, r0, #1
	strb r0, [r2]
_080EADC8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EADD0:
	.4byte 0x00000F62
_080EADD4:
	.4byte gUnknown_08177D52
_080EADD8:
	.4byte 0x00000F72
_080EADDC:
	.4byte gRam
_080EADE0:
	.4byte 0x00000F22
_080EADE4:
	.4byte gUnknown_08177D54
_080EADE8:
	.4byte 0x00000F12
_080EADEC:
	.4byte gUnknown_08177D64
_080EADF0:
	.4byte 0x00000F92
_080EADF4:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080EAD10

	THUMB_FUNC_START sub_080EADF8
sub_080EADF8: @ 0x080EADF8
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080EAE38  @ =gRam
	ldr r2, _080EAE3C  @ =0x0000164C
	add r1, r3, r2
	ldrb r4, [r1]
	ldr r1, _080EAE40  @ =0x00000EA5
	add r2, r3, r1
	add r2, r0, r2
	ldr r1, _080EAE44  @ =gUnknown_08177D48
	add r1, r4, r1
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r1, _080EAE48  @ =0x00001022
	add r2, r3, r1
	add r2, r0, r2
	ldr r1, _080EAE4C  @ =gUnknown_08177D4A
	add r1, r4, r1
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r2, _080EAE50  @ =0x000011B2
	add r3, r3, r2
	add r0, r0, r3
	ldr r1, _080EAE54  @ =gUnknown_08177D4C
	add r4, r4, r1
	ldrb r1, [r4]
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EAE38:
	.4byte gRam
_080EAE3C:
	.4byte 0x0000164C
_080EAE40:
	.4byte 0x00000EA5
_080EAE44:
	.4byte gUnknown_08177D48
_080EAE48:
	.4byte 0x00001022
_080EAE4C:
	.4byte gUnknown_08177D4A
_080EAE50:
	.4byte 0x000011B2
_080EAE54:
	.4byte gUnknown_08177D4C
	THUMB_FUNC_END sub_080EADF8

	THUMB_FUNC_START sub_080EAE58
sub_080EAE58: @ 0x080EAE58
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	ldr r6, _080EAEB0  @ =gRam
	ldr r0, _080EAEB4  @ =0x00000D94
	add r1, r6, r0
	add r1, r4, r1
	ldrb r2, [r1]
	mov r0, #48
	orr r0, r0, r2
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080C6240
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EAEC2
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EAEC2
	add r0, r4, #0
	bl sub_080C5044
	add r0, r4, #0
	bl Sprite3_Move
	ldr r1, _080EAEB8  @ =0x00000F52
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EAEBC
	add r0, r4, #0
	bl sub_080EAD10
	b _080EAEC2
	.byte 0x00
	.byte 0x00
_080EAEB0:
	.4byte gRam
_080EAEB4:
	.4byte 0x00000D94
_080EAEB8:
	.4byte 0x00000F52
_080EAEBC:
	add r0, r5, #0
	bl sub_080EAC64
_080EAEC2:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080EAE58

	THUMB_FUNC_START sub_080EAEC8
sub_080EAEC8: @ 0x080EAEC8
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080EAF30  @ =gRam
	ldr r1, _080EAF34  @ =0x00000FC2
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080EAF28
	bl GetRandomInt
	ldr r2, _080EAF38  @ =gUnknown_08177D80
	mov r1, #3
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r5]
	ldr r0, _080EAF3C  @ =0x00000F52
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080EAF40  @ =0x00000FB2
	add r3, r6, r1
	add r3, r4, r3
	add r1, r1, #208
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r0, _080EAF44  @ =0x00000F22
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080EAF48  @ =gUnknown_08177D84
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080EAF4C  @ =0x00000F12
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080EAF50  @ =gUnknown_08177D88
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
_080EAF28:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EAF30:
	.4byte gRam
_080EAF34:
	.4byte 0x00000FC2
_080EAF38:
	.4byte gUnknown_08177D80
_080EAF3C:
	.4byte 0x00000F52
_080EAF40:
	.4byte 0x00000FB2
_080EAF44:
	.4byte 0x00000F22
_080EAF48:
	.4byte gUnknown_08177D84
_080EAF4C:
	.4byte 0x00000F12
_080EAF50:
	.4byte gUnknown_08177D88
	THUMB_FUNC_END sub_080EAEC8

	THUMB_FUNC_START sub_080EAF54
sub_080EAF54: @ 0x080EAF54
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080EAFC8  @ =gRam
	ldr r0, _080EAFCC  @ =0x00000F92
	add r2, r6, r0
	add r2, r5, r2
	ldr r1, _080EAFD0  @ =0x00001052
	add r0, r6, r1
	add r7, r5, r0
	ldrb r3, [r7]
	mov r9, r3
	mov r1, #1
	ldr r3, _080EAFD4  @ =gUnknown_08177D8C
	ldr r4, _080EAFD8  @ =0x00000FB2
	add r0, r6, r4
	add r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	add r0, r0, r3
	mov r3, r9
	and r1, r1, r3
	ldrb r0, [r0]
	add r1, r1, r0
	strb r1, [r2]
	mov r4, #12
	mov r9, r4
	ldr r1, _080EAFDC  @ =0x00001042
	add r0, r6, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EB01C
	ldr r2, _080EAFE0  @ =0x00000FC2
	add r0, r6, r2
	add r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080EAFE8
	ldr r3, _080EAFE4  @ =0x00001062
	add r0, r6, r3
	add r2, r5, r0
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080EB016
	mov r0, #11
	strb r0, [r2]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _080EB016
_080EAFC8:
	.4byte gRam
_080EAFCC:
	.4byte 0x00000F92
_080EAFD0:
	.4byte 0x00001052
_080EAFD4:
	.4byte gUnknown_08177D8C
_080EAFD8:
	.4byte 0x00000FB2
_080EAFDC:
	.4byte 0x00001042
_080EAFE0:
	.4byte 0x00000FC2
_080EAFE4:
	.4byte 0x00001062
_080EAFE8:
	add r0, r5, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	beq _080EB000
	mov r2, #16
	mov r9, r2
	b _080EB01C
_080EB000:
	ldr r3, _080EB084  @ =0x00000F52
	add r0, r6, r3
	add r0, r5, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #32
	strb r0, [r4]
	add r0, r5, #0
	bl sub_080C351C
_080EB016:
	mov r0, #0
	cmp r0, #0
	beq _080EB078
_080EB01C:
	ldr r4, _080EB088  @ =gRam
	ldr r1, _080EB08C  @ =0x00000FC2
	add r0, r4, r1
	add r0, r5, r0
	mov r7, #0
	mov r2, r9
	strb r2, [r0]
	bl GetRandomInt
	ldr r3, _080EB090  @ =0x00001082
	add r1, r4, r3
	add r6, r5, r1
	ldr r3, _080EB094  @ =gUnknown_08177D90
	ldr r2, _080EB098  @ =0x00000FB2
	add r1, r4, r2
	add r1, r5, r1
	ldrb r1, [r1]
	lsl r1, r1, #1
	mov r2, #1
	and r2, r2, r0
	orr r1, r1, r2
	add r1, r1, r3
	ldrb r0, [r1]
	strb r0, [r6]
	ldr r3, _080EB084  @ =0x00000F52
	add r0, r4, r3
	add r0, r5, r0
	strb r7, [r0]
	ldr r0, _080EB09C  @ =0x00000F82
	add r4, r4, r0
	add r1, r5, r4
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #4
	bne _080EB072
	strb r7, [r1]
	add r0, r5, #0
	bl sub_080C2FA8
	strb r0, [r6]
_080EB072:
	add r0, r5, #0
	bl sub_080C351C
_080EB078:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080EB084:
	.4byte 0x00000F52
_080EB088:
	.4byte gRam
_080EB08C:
	.4byte 0x00000FC2
_080EB090:
	.4byte 0x00001082
_080EB094:
	.4byte gUnknown_08177D90
_080EB098:
	.4byte 0x00000FB2
_080EB09C:
	.4byte 0x00000F82
	THUMB_FUNC_END sub_080EAF54

	THUMB_FUNC_START sub_080EB0A0
sub_080EB0A0: @ 0x080EB0A0
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r1, _080EB0FC  @ =gRam
	ldr r2, _080EB100  @ =0x00000FB2
	add r0, r1, r2
	add r0, r4, r0
	ldrb r5, [r0]
	add r2, r2, #16
	add r0, r1, r2
	add r3, r4, r0
	ldrb r2, [r3]
	add r6, r1, #0
	cmp r2, #0
	bne _080EB0C6
	ldr r1, _080EB104  @ =0x00000F52
	add r0, r6, r1
	add r0, r4, r0
	strb r2, [r0]
_080EB0C6:
	ldrb r0, [r3]
	cmp r0, #15
	bhi _080EB0E6
	cmp r0, #15
	bne _080EB0E0
	add r0, r4, #0
	bl sub_080EB114
	ldr r2, _080EB108  @ =0x00000FD2
	add r0, r6, r2
	add r0, r4, r0
	mov r1, #32
	strb r1, [r0]
_080EB0E0:
	add r0, r5, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
_080EB0E6:
	ldr r1, _080EB10C  @ =0x00000F92
	add r0, r6, r1
	add r0, r4, r0
	ldr r1, _080EB110  @ =gUnknown_08177D98
	add r1, r5, r1
	ldrb r1, [r1]
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EB0FC:
	.4byte gRam
_080EB100:
	.4byte 0x00000FB2
_080EB104:
	.4byte 0x00000F52
_080EB108:
	.4byte 0x00000FD2
_080EB10C:
	.4byte 0x00000F92
_080EB110:
	.4byte gUnknown_08177D98
	THUMB_FUNC_END sub_080EB0A0

	THUMB_FUNC_START sub_080EB114
sub_080EB114: @ 0x080EB114
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, #27
	add r1, r4, #0
	bl sub_080CA538
	add r5, r0, #0
	cmp r5, #0
	blt _080EB1B2
	ldr r3, _080EB1B8  @ =gRam
	ldr r0, _080EB1BC  @ =0x00000FB2
	add r2, r3, r0
	add r0, r4, r2
	ldrb r4, [r0]
	ldr r1, _080EB1C0  @ =0x00000F62
	add r0, r3, r1
	add r0, r5, r0
	mov r1, #3
	strb r1, [r0]
	add r2, r5, r2
	strb r4, [r2]
	mov r2, #150
	lsl r2, r2, #4
	add r1, r3, r2
	ldr r0, _080EB1C4  @ =gUnknown_08177DA0
	add r0, r4, r0
	ldrb r0, [r0]
	ldrh r2, [r1]
	add r2, r2, r0
	ldr r0, _080EB1C8  @ =gUnknown_08177DA4
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r6, _080EB1CC  @ =0x00000964
	add r1, r3, r6
	ldr r0, _080EB1D0  @ =gUnknown_08177DA8
	add r0, r4, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080EB1D4  @ =gUnknown_08177DAC
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r6, _080EB1D8  @ =0x00000EE2
	add r0, r3, r6
	add r0, r5, r0
	strb r2, [r0]
	add r6, r6, #32
	add r0, r3, r6
	add r0, r5, r0
	lsr r2, r2, #8
	strb r2, [r0]
	ldr r2, _080EB1DC  @ =0x00000ED2
	add r0, r3, r2
	add r0, r5, r0
	strb r1, [r0]
	sub r6, r6, #16
	add r0, r3, r6
	add r0, r5, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r0, _080EB1E0  @ =0x00000F22
	add r1, r3, r0
	add r1, r5, r1
	ldr r0, _080EB1E4  @ =gUnknown_08177DB0
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080EB1E8  @ =0x00000F12
	add r3, r3, r1
	add r3, r5, r3
	ldr r0, _080EB1EC  @ =gUnknown_08177DB4
	add r4, r4, r0
	ldrb r0, [r4]
	strb r0, [r3]
_080EB1B2:
	pop {r4-r6}
	pop {r0}
	bx r0
_080EB1B8:
	.4byte gRam
_080EB1BC:
	.4byte 0x00000FB2
_080EB1C0:
	.4byte 0x00000F62
_080EB1C4:
	.4byte gUnknown_08177DA0
_080EB1C8:
	.4byte gUnknown_08177DA4
_080EB1CC:
	.4byte 0x00000964
_080EB1D0:
	.4byte gUnknown_08177DA8
_080EB1D4:
	.4byte gUnknown_08177DAC
_080EB1D8:
	.4byte 0x00000EE2
_080EB1DC:
	.4byte 0x00000ED2
_080EB1E0:
	.4byte 0x00000F22
_080EB1E4:
	.4byte gUnknown_08177DB0
_080EB1E8:
	.4byte 0x00000F12
_080EB1EC:
	.4byte gUnknown_08177DB4
	THUMB_FUNC_END sub_080EB114

	THUMB_FUNC_START sub_080EB1F0
sub_080EB1F0: @ 0x080EB1F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r4, _080EB2D4  @ =gRam
	ldr r1, _080EB2D8  @ =0x00000F92
	add r0, r4, r1
	add r0, r6, r0
	ldrb r1, [r0]
	lsl r1, r1, #5
	ldr r0, _080EB2DC  @ =gUnknown_08177DB8
	add r1, r1, r0
	add r0, r6, #0
	mov r2, #4
	bl sub_080C9480
	ldr r1, _080EB2E0  @ =0x000010D2
	add r0, r4, r1
	add r0, r6, r0
	ldrb r0, [r0]
	mov r8, r4
	cmp r0, #0
	bne _080EB2C6
	ldr r0, _080EB2E4  @ =0x00000FD2
	add r0, r0, r8
	add r0, r6, r0
	ldrb r0, [r0]
	ldr r7, _080EB2E8  @ =gUnknown_03003E74
	ldr r1, _080EB2EC  @ =gUnknown_08177F38
	mov r9, r1
	ldr r1, _080EB2F0  @ =gUnknown_08177F44
	mov r10, r1
	cmp r0, #0
	beq _080EB268
	mov r2, #3
	mov r12, r7
	mov r3, #170
	lsl r3, r3, #3
	add r3, r3, r8
	mov r4, #240
_080EB246:
	mov r0, r12
	ldrh r1, [r0]
	lsl r0, r2, #24
	asr r2, r0, #24
	add r1, r1, r2
	lsl r1, r1, #3
	add r5, r1, r3
	ldrb r0, [r5, #3]
	lsr r0, r0, #6
	cmp r0, #1
	beq _080EB25E
	strb r4, [r5]
_080EB25E:
	sub r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r0, #0
	bge _080EB246
_080EB268:
	ldr r0, _080EB2D8  @ =0x00000F92
	add r0, r0, r8
	add r0, r6, r0
	ldrb r0, [r0]
	add r0, r0, r9
	ldrb r0, [r0]
	lsr r0, r0, #2
	ldrh r7, [r7]
	add r0, r0, r7
	lsl r0, r0, #3
	mov r1, #170
	lsl r1, r1, #3
	add r1, r1, r8
	add r5, r0, r1
	ldrh r4, [r5, #4]
	lsl r0, r4, #22
	lsr r0, r0, #22
	mov r2, #128
	lsl r2, r2, #1
	and r2, r2, r0
	ldr r3, _080EB2F4  @ =0x00001082
	add r3, r3, r8
	add r3, r6, r3
	ldrb r0, [r3]
	add r0, r0, r10
	ldrb r1, [r0]
	orr r1, r1, r2
	ldr r0, _080EB2F8  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r5, #4]
	ldrb r0, [r3]
	ldr r1, _080EB2FC  @ =gUnknown_08177F48
	add r0, r0, r1
	ldrb r1, [r0]
	lsr r1, r1, #6
	mov r0, #1
	and r1, r1, r0
	lsl r1, r1, #4
	ldrb r2, [r5, #3]
	sub r0, r0, #18
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r5, #3]
	add r0, r6, #0
	bl sub_080C6230
_080EB2C6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080EB2D4:
	.4byte gRam
_080EB2D8:
	.4byte 0x00000F92
_080EB2DC:
	.4byte gUnknown_08177DB8
_080EB2E0:
	.4byte 0x000010D2
_080EB2E4:
	.4byte 0x00000FD2
_080EB2E8:
	.4byte gUnknown_03003E74
_080EB2EC:
	.4byte gUnknown_08177F38
_080EB2F0:
	.4byte gUnknown_08177F44
_080EB2F4:
	.4byte 0x00001082
_080EB2F8:
	.4byte 0xFFFFFC00
_080EB2FC:
	.4byte gUnknown_08177F48
	THUMB_FUNC_END sub_080EB1F0

	THUMB_FUNC_START sub_080EB300
sub_080EB300: @ 0x080EB300
	bx lr
	THUMB_FUNC_END sub_080EB300

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080EB304
sub_080EB304: @ 0x080EB304
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r4, r5, #0
	add r0, r5, #0
	bl sub_080EB1F0
	ldr r6, _080EB374  @ =gRam
	ldr r1, _080EB378  @ =0x000009AC
	add r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #26
	bne _080EB32E
	ldr r2, _080EB37C  @ =0x00000964
	add r1, r6, r2
	ldrh r0, [r1]
	sub r0, r0, #16
	strh r0, [r1]
	add r0, r5, #0
	bl sub_080EAAF0
_080EB32E:
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EB36E
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EB36E
	add r0, r4, #0
	bl sub_080C5044
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C6F48
	ldr r1, _080EB380  @ =gUnknown_08177D74
	ldr r2, _080EB384  @ =0x00000F52
	add r0, r6, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080EB36E:
	pop {r4-r6}
	pop {r0}
	bx r0
_080EB374:
	.4byte gRam
_080EB378:
	.4byte 0x000009AC
_080EB37C:
	.4byte 0x00000964
_080EB380:
	.4byte gUnknown_08177D74
_080EB384:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080EB304

	THUMB_FUNC_START sub_080EB388
sub_080EB388: @ 0x080EB388
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080EB3F4  @ =gRam
	ldr r0, _080EB3F8  @ =0x00000F92
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080EB3FC  @ =0x00000F72
	add r0, r6, r2
	add r7, r4, r0
	ldr r2, _080EB400  @ =gUnknown_08177F4C
	ldr r3, _080EB404  @ =0x00000FB2
	add r0, r6, r3
	add r0, r4, r0
	ldrb r0, [r0]
	add r0, r0, r2
	ldrb r0, [r0]
	ldrb r2, [r7]
	add r0, r0, r2
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080EB5CC
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EB3EE
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	bne _080EB3EE
	add r0, r4, #0
	bl sub_080C5044
	strb r5, [r7]
	ldr r1, _080EB408  @ =gUnknown_08177F50
	ldr r3, _080EB40C  @ =0x00000F52
	add r0, r6, r3
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080EB3EE:
	pop {r4-r7}
	pop {r0}
	bx r0
_080EB3F4:
	.4byte gRam
_080EB3F8:
	.4byte 0x00000F92
_080EB3FC:
	.4byte 0x00000F72
_080EB400:
	.4byte gUnknown_08177F4C
_080EB404:
	.4byte 0x00000FB2
_080EB408:
	.4byte gUnknown_08177F50
_080EB40C:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080EB388

	THUMB_FUNC_START sub_080EB410
sub_080EB410: @ 0x080EB410
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	ldr r6, _080EB43C  @ =gRam
	ldr r1, _080EB440  @ =0x00000FC2
	add r0, r6, r1
	add r5, r4, r0
	ldrb r1, [r5]
	cmp r1, #0
	beq _080EB448
	mov r0, #24
	and r0, r0, r1
	cmp r0, #0
	beq _080EB4CA
	ldr r2, _080EB444  @ =0x00000F72
	add r1, r6, r2
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080EB4CA
_080EB43C:
	.4byte gRam
_080EB440:
	.4byte 0x00000FC2
_080EB444:
	.4byte 0x00000F72
_080EB448:
	ldr r0, _080EB48C  @ =0x00000F52
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	bl GetRandomInt
	ldr r2, _080EB490  @ =gUnknown_08177F58
	mov r1, #12
	and r1, r1, r0
	lsr r1, r1, #2
	add r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r5]
	ldr r1, _080EB494  @ =0x00000F62
	add r0, r6, r1
	add r2, r4, r0
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080EB49C
	bl GetRandomInt
	ldr r1, _080EB498  @ =0x00000FB2
	add r2, r6, r1
	add r2, r4, r2
	mov r1, #3
	and r1, r1, r0
	strb r1, [r2]
	b _080EB4CA
_080EB48C:
	.4byte 0x00000F52
_080EB490:
	.4byte gUnknown_08177F58
_080EB494:
	.4byte 0x00000F62
_080EB498:
	.4byte 0x00000FB2
_080EB49C:
	mov r0, #3
	strb r0, [r2]
	mov r0, #96
	strb r0, [r5]
	ldr r2, _080EB4D0  @ =0x00000F82
	add r1, r6, r2
	add r1, r7, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add r0, r7, #0
	bl sub_080C3028
	add r4, r0, #0
	add r0, r7, #0
	bl sub_080C36D8
	ldr r2, _080EB4D4  @ =0x00000FB2
	add r1, r6, r2
	add r1, r7, r1
	lsl r4, r4, #1
	orr r4, r4, r0
	strb r4, [r1]
_080EB4CA:
	pop {r4-r7}
	pop {r0}
	bx r0
_080EB4D0:
	.4byte 0x00000F82
_080EB4D4:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080EB410

	THUMB_FUNC_START sub_080EB4D8
sub_080EB4D8: @ 0x080EB4D8
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	ldr r5, _080EB584  @ =gRam
	ldr r0, _080EB588  @ =0x00000F72
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C6F48
	ldr r1, _080EB58C  @ =0x00001042
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EB514
	ldr r3, _080EB590  @ =0x00000FB2
	add r0, r5, r3
	add r0, r4, r0
	ldrb r1, [r0]
	mov r2, #3
	eor r1, r1, r2
	strb r1, [r0]
_080EB514:
	ldr r1, _080EB590  @ =0x00000FB2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r2, [r0]
	ldr r3, _080EB594  @ =0x00000F82
	add r0, r5, r3
	add r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #0
	beq _080EB52E
	add r0, r2, #4
	lsl r0, r0, #24
	lsr r2, r0, #24
_080EB52E:
	ldr r0, _080EB598  @ =0x00000F22
	add r1, r5, r0
	add r1, r4, r1
	ldr r0, _080EB59C  @ =gUnknown_08177F5C
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r3, _080EB5A0  @ =0x00000F12
	add r1, r5, r3
	add r1, r4, r1
	ldr r0, _080EB5A4  @ =gUnknown_08177F64
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r1, _080EB5A8  @ =0x00001152
	add r0, r5, r1
	add r3, r4, r0
	ldrb r0, [r3]
	sub r0, r0, #4
	strb r0, [r3]
	sub r1, r1, #16
	add r0, r5, r1
	add r2, r4, r0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080EB5BE
	mov r0, #0
	strb r0, [r2]
	ldr r1, _080EB5AC  @ =0x00000FC2
	add r0, r5, r1
	add r1, r4, r0
	ldrb r2, [r1]
	cmp r2, #0
	beq _080EB5B0
	mov r0, #20
	strb r0, [r3]
	b _080EB5BE
	.byte 0x00
	.byte 0x00
_080EB584:
	.4byte gRam
_080EB588:
	.4byte 0x00000F72
_080EB58C:
	.4byte 0x00001042
_080EB590:
	.4byte 0x00000FB2
_080EB594:
	.4byte 0x00000F82
_080EB598:
	.4byte 0x00000F22
_080EB59C:
	.4byte gUnknown_08177F5C
_080EB5A0:
	.4byte 0x00000F12
_080EB5A4:
	.4byte gUnknown_08177F64
_080EB5A8:
	.4byte 0x00001152
_080EB5AC:
	.4byte 0x00000FC2
_080EB5B0:
	ldr r3, _080EB5C4  @ =0x00000F52
	add r0, r5, r3
	add r0, r7, r0
	strb r2, [r0]
	strb r2, [r6]
	mov r0, #63
	strb r0, [r1]
_080EB5BE:
	pop {r4-r7}
	pop {r0}
	bx r0
_080EB5C4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080EB4D8

	THUMB_FUNC_START sub_080EB5C8
sub_080EB5C8: @ 0x080EB5C8
	bx lr
	THUMB_FUNC_END sub_080EB5C8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080EB5CC
sub_080EB5CC: @ 0x080EB5CC
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r0, _080EB5F8  @ =gRam
	ldr r1, _080EB5FC  @ =0x00000F92
	add r0, r0, r1
	add r0, r4, r0
	ldrb r1, [r0]
	lsl r1, r1, #5
	ldr r0, _080EB600  @ =gUnknown_08177F6C
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #4
	bl sub_080C9480
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
_080EB5F8:
	.4byte gRam
_080EB5FC:
	.4byte 0x00000F92
_080EB600:
	.4byte gUnknown_08177F6C
	THUMB_FUNC_END sub_080EB5CC

	THUMB_FUNC_START sub_080EB604
sub_080EB604: @ 0x080EB604
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	add r0, r4, #0
	bl sub_080EBBE8
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EB68E
	ldr r5, _080EB664  @ =gRam
	ldr r1, _080EB668  @ =0x00001072
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EB640
	ldr r2, _080EB66C  @ =0x00000F52
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	ldr r1, _080EB670  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #48
	strb r1, [r0]
_080EB640:
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EB68E
	add r0, r4, #0
	bl sub_080C5044
	ldr r2, _080EB674  @ =0x000009AC
	add r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #26
	bne _080EB678
	add r0, r4, #0
	bl sub_080EB9F0
	b _080EB68E
_080EB664:
	.4byte gRam
_080EB668:
	.4byte 0x00001072
_080EB66C:
	.4byte 0x00000F52
_080EB670:
	.4byte 0x00000FC2
_080EB674:
	.4byte 0x000009AC
_080EB678:
	ldr r1, _080EB694  @ =gUnknown_0817806C
	ldr r2, _080EB698  @ =0x00000F52
	add r0, r5, r2
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r6, #0
	bl _call_via_r1
_080EB68E:
	pop {r4-r6}
	pop {r0}
	bx r0
_080EB694:
	.4byte gUnknown_0817806C
_080EB698:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080EB604

	THUMB_FUNC_START sub_080EB69C
sub_080EB69C: @ 0x080EB69C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r7, #1
	neg r7, r7
	ldr r5, _080EB6D0  @ =gRam
	ldr r2, _080EB6D4  @ =0x00000FC2
	add r0, r5, r2
	add r4, r6, r0
	ldrb r3, [r4]
	mov r12, r5
	cmp r3, #0
	bne _080EB6B8
	b _080EB7DC
_080EB6B8:
	cmp r3, #32
	beq _080EB6FC
	ldr r4, _080EB6D8  @ =0x00000FB2
	add r0, r5, r4
	add r0, r6, r0
	ldrb r2, [r0]
	cmp r3, #31
	bls _080EB6DC
	cmp r1, #0
	beq _080EB6E2
	mov r2, #8
	b _080EB6E2
_080EB6D0:
	.4byte gRam
_080EB6D4:
	.4byte 0x00000FC2
_080EB6D8:
	.4byte 0x00000FB2
_080EB6DC:
	add r0, r2, #4
	lsl r0, r0, #24
	lsr r2, r0, #24
_080EB6E2:
	ldr r0, _080EB6F4  @ =0x00000F92
	add r0, r0, r12
	add r0, r6, r0
	ldr r1, _080EB6F8  @ =gUnknown_08178078
	add r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r0]
	b _080EB7E8
	.byte 0x00
	.byte 0x00
_080EB6F4:
	.4byte 0x00000F92
_080EB6F8:
	.4byte gUnknown_08178078
_080EB6FC:
	mov r0, #74
	add r1, r6, #0
	bl sub_080CA538
	add r7, r0, #0
	cmp r7, #0
	bge _080EB710
	ldrb r0, [r4]
	add r0, r0, #1
	b _080EB7E6
_080EB710:
	lsl r0, r7, #24
	lsr r0, r0, #24
	bl sub_080C2914
	ldr r1, _080EB7A8  @ =0x00000FD2
	add r0, r5, r1
	add r0, r7, r0
	mov r1, #64
	strb r1, [r0]
	ldr r2, _080EB7AC  @ =0x00000FB2
	add r0, r5, r2
	add r0, r6, r0
	ldrb r3, [r0]
	mov r4, #150
	lsl r4, r4, #4
	add r1, r5, r4
	ldr r0, _080EB7B0  @ =gUnknown_08178081
	add r0, r3, r0
	ldrb r0, [r0]
	ldrh r2, [r1]
	add r2, r2, r0
	ldr r0, _080EB7B4  @ =gUnknown_08178085
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r0, _080EB7B8  @ =0x00000964
	add r1, r5, r0
	ldr r0, _080EB7BC  @ =gUnknown_08178089
	add r0, r3, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080EB7C0  @ =gUnknown_0817808D
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r4, _080EB7C4  @ =0x00000EE2
	add r0, r5, r4
	add r0, r7, r0
	strb r2, [r0]
	add r4, r4, #32
	add r0, r5, r4
	add r0, r7, r0
	lsr r2, r2, #8
	strb r2, [r0]
	ldr r2, _080EB7C8  @ =0x00000ED2
	add r0, r5, r2
	add r0, r7, r0
	strb r1, [r0]
	sub r4, r4, #16
	add r0, r5, r4
	add r0, r7, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r0, _080EB7CC  @ =0x00000F22
	add r1, r5, r0
	add r1, r7, r1
	ldr r0, _080EB7D0  @ =gUnknown_08178091
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r2, r2, #64
	add r1, r5, r2
	add r1, r7, r1
	ldr r0, _080EB7D4  @ =gUnknown_08178095
	add r3, r3, r0
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r4, _080EB7D8  @ =0x00001152
	add r0, r5, r4
	add r0, r7, r0
	mov r1, #40
	strb r1, [r0]
	b _080EB7E8
_080EB7A8:
	.4byte 0x00000FD2
_080EB7AC:
	.4byte 0x00000FB2
_080EB7B0:
	.4byte gUnknown_08178081
_080EB7B4:
	.4byte gUnknown_08178085
_080EB7B8:
	.4byte 0x00000964
_080EB7BC:
	.4byte gUnknown_08178089
_080EB7C0:
	.4byte gUnknown_0817808D
_080EB7C4:
	.4byte 0x00000EE2
_080EB7C8:
	.4byte 0x00000ED2
_080EB7CC:
	.4byte 0x00000F22
_080EB7D0:
	.4byte gUnknown_08178091
_080EB7D4:
	.4byte gUnknown_08178095
_080EB7D8:
	.4byte 0x00001152
_080EB7DC:
	ldr r1, _080EB7F0  @ =0x00000F52
	add r0, r5, r1
	add r0, r6, r0
	strb r3, [r0]
	mov r0, #2
_080EB7E6:
	strb r0, [r4]
_080EB7E8:
	add r0, r7, #0
	pop {r4-r7}
	pop {r1}
	bx r1
_080EB7F0:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080EB69C

	THUMB_FUNC_START sub_080EB7F4
sub_080EB7F4: @ 0x080EB7F4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r8, r5
	ldr r6, _080EB850  @ =gRam
	ldr r1, _080EB854  @ =0x00000FC2
	add r0, r6, r1
	add r4, r5, r0
	ldrb r7, [r4]
	cmp r7, #0
	bne _080EB8AA
	bl GetRandomInt
	mov r1, #3
	and r1, r1, r0
	cmp r1, #0
	beq _080EB89C
	ldr r2, _080EB858  @ =0x00000F82
	add r0, r6, r2
	add r1, r5, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #4
	beq _080EB864
	ldr r4, _080EB85C  @ =gUnknown_08178099
	bl GetRandomInt
	ldr r2, _080EB860  @ =0x00000FB2
	add r1, r6, r2
	add r1, r5, r1
	ldrb r1, [r1]
	lsl r1, r1, #1
	mov r2, #1
	and r2, r2, r0
	orr r1, r1, r2
	add r1, r1, r4
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_080EB8B8
	b _080EB8AA
_080EB850:
	.4byte gRam
_080EB854:
	.4byte 0x00000FC2
_080EB858:
	.4byte 0x00000F82
_080EB85C:
	.4byte gUnknown_08178099
_080EB860:
	.4byte 0x00000FB2
_080EB864:
	strb r7, [r1]
	add r0, r5, #0
	bl sub_080C2FA8
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r5, #0
	bl sub_080EB8B8
	ldr r0, _080EB894  @ =0x00000F22
	add r1, r6, r0
	add r1, r5, r1
	ldrb r0, [r1]
	lsl r0, r0, #1
	strb r0, [r1]
	ldr r2, _080EB898  @ =0x00000F12
	add r1, r6, r2
	add r1, r5, r1
	ldrb r0, [r1]
	lsl r0, r0, #1
	strb r0, [r1]
	b _080EB8AA
	.byte 0x00
	.byte 0x00
_080EB894:
	.4byte 0x00000F22
_080EB898:
	.4byte 0x00000F12
_080EB89C:
	ldr r1, _080EB8B4  @ =0x00000F52
	add r0, r6, r1
	add r0, r0, r8
	mov r1, #2
	strb r1, [r0]
	mov r0, #64
	strb r0, [r4]
_080EB8AA:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080EB8B4:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080EB7F4

	THUMB_FUNC_START sub_080EB8B8
sub_080EB8B8: @ 0x080EB8B8
	push {r4-r6,lr}
	add r4, r0, #0
	add r6, r1, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	lsl r6, r6, #24
	lsr r6, r6, #24
	ldr r5, _080EB910  @ =gRam
	ldr r1, _080EB914  @ =0x00000FB2
	add r0, r5, r1
	add r0, r4, r0
	strb r6, [r0]
	bl GetRandomInt
	ldr r1, _080EB918  @ =0x00000FC2
	add r2, r5, r1
	add r2, r4, r2
	mov r1, #63
	and r1, r1, r0
	add r1, r1, #96
	strb r1, [r2]
	ldr r0, _080EB91C  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080EB920  @ =0x00000F22
	add r1, r5, r0
	add r1, r4, r1
	ldr r0, _080EB924  @ =gUnknown_081780A1
	add r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080EB928  @ =0x00000F12
	add r5, r5, r1
	add r4, r4, r5
	ldr r0, _080EB92C  @ =gUnknown_081780A5
	add r6, r6, r0
	ldrb r0, [r6]
	strb r0, [r4]
	pop {r4-r6}
	pop {r0}
	bx r0
_080EB910:
	.4byte gRam
_080EB914:
	.4byte 0x00000FB2
_080EB918:
	.4byte 0x00000FC2
_080EB91C:
	.4byte 0x00000F52
_080EB920:
	.4byte 0x00000F22
_080EB924:
	.4byte gUnknown_081780A1
_080EB928:
	.4byte 0x00000F12
_080EB92C:
	.4byte gUnknown_081780A5
	THUMB_FUNC_END sub_080EB8B8

	THUMB_FUNC_START sub_080EB930
sub_080EB930: @ 0x080EB930
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080EB9A8  @ =gRam
	ldr r1, _080EB9AC  @ =0x00000FC2
	add r0, r5, r1
	add r6, r4, r0
	ldrb r1, [r6]
	cmp r1, #0
	beq _080EB9D8
	ldr r2, _080EB9B0  @ =0x00000F62
	add r0, r5, r2
	add r2, r4, r0
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080EB968
	mov r0, #11
	strb r0, [r2]
	ldr r0, _080EB9B4  @ =0x00001052
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080EB968:
	add r0, r4, #0
	bl Sprite3_Move
	add r0, r4, #0
	bl sub_080C6F48
	ldr r1, _080EB9B8  @ =0x00001042
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EB9C4
	ldr r2, _080EB9BC  @ =0x00000F92
	add r3, r5, r2
	add r3, r4, r3
	ldr r2, _080EB9C0  @ =gUnknown_081780A9
	sub r1, r1, #144
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, r2
	ldr r2, _080EB9B4  @ =0x00001052
	add r0, r5, r2
	add r0, r4, r0
	ldrb r2, [r0]
	mov r0, #1
	and r0, r0, r2
	ldrb r1, [r1]
	add r0, r0, r1
	strb r0, [r3]
	b _080EB9E4
	.byte 0x00
	.byte 0x00
_080EB9A8:
	.4byte gRam
_080EB9AC:
	.4byte 0x00000FC2
_080EB9B0:
	.4byte 0x00000F62
_080EB9B4:
	.4byte 0x00001052
_080EB9B8:
	.4byte 0x00001042
_080EB9BC:
	.4byte 0x00000F92
_080EB9C0:
	.4byte gUnknown_081780A9
_080EB9C4:
	mov r0, #16
	strb r0, [r6]
	ldr r1, _080EB9D4  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	b _080EB9E2
	.byte 0x00
	.byte 0x00
_080EB9D4:
	.4byte 0x00000F52
_080EB9D8:
	mov r0, #16
	strb r0, [r6]
	ldr r2, _080EB9EC  @ =0x00000F52
	add r0, r5, r2
	add r0, r4, r0
_080EB9E2:
	strb r1, [r0]
_080EB9E4:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EB9EC:
	.4byte 0x00000F52
	THUMB_FUNC_END sub_080EB930

	THUMB_FUNC_START sub_080EB9F0
sub_080EB9F0: @ 0x080EB9F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r1, _080EBA88  @ =gRam
	ldr r2, _080EBA8C  @ =0x00000F52
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	add r5, r1, #0
	cmp r0, #0
	beq _080EBADC
	mov r6, #0
	cmp r4, #4
	bne _080EBA18
	mov r6, #1
_080EBA18:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_080EB69C
	add r4, r0, #0
	cmp r4, #0
	bge _080EBA28
	b _080EBB98
_080EBA28:
	ldr r7, _080EBA90  @ =0x00000FD2
	add r0, r5, r7
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	ldr r0, _080EBA94  @ =0x00000E75
	add r1, r5, r0
	add r1, r4, r1
	ldrb r2, [r1]
	mov r0, #128
	mov r3, #0
	mov r7, #0
	orr r0, r0, r2
	strb r0, [r1]
	ldr r1, _080EBA98  @ =0x00001122
	add r0, r5, r1
	add r2, r4, r0
	mov r0, #4
	strb r0, [r2]
	cmp r6, #0
	bne _080EBA54
	b _080EBB98
_080EBA54:
	ldr r6, _080EBA9C  @ =0x00000F92
	add r0, r5, r6
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	ldrb r1, [r2]
	mov r0, #241
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2]
	ldr r1, _080EBAA0  @ =0x00000F22
	add r0, r5, r1
	add r0, r4, r0
	strb r7, [r0]
	ldr r2, _080EBAA4  @ =0x00000F12
	add r0, r5, r2
	add r0, r4, r0
	strb r7, [r0]
	ldr r6, _080EBAA8  @ =0x00001152
	add r0, r5, r6
	add r0, r4, r0
	mov r1, #64
	strb r1, [r0]
	b _080EBB98
	.byte 0x00
	.byte 0x00
_080EBA88:
	.4byte gRam
_080EBA8C:
	.4byte 0x00000F52
_080EBA90:
	.4byte 0x00000FD2
_080EBA94:
	.4byte 0x00000E75
_080EBA98:
	.4byte 0x00001122
_080EBA9C:
	.4byte 0x00000F92
_080EBAA0:
	.4byte 0x00000F22
_080EBAA4:
	.4byte 0x00000F12
_080EBAA8:
	.4byte 0x00001152
_080EBAAC:
	mov r0, #0
	ldr r7, [sp]
	strb r0, [r7]
	ldr r0, _080EBAD4  @ =0x00000F52
	add r1, r5, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080EBAD8  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #64
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #13
	bl sub_080CF140
	b _080EBB98
	.byte 0x00
	.byte 0x00
_080EBAD4:
	.4byte 0x00000F52
_080EBAD8:
	.4byte 0x00000FC2
_080EBADC:
	ldr r2, _080EBBA8  @ =0x00000F92
	add r3, r5, r2
	add r3, r4, r3
	ldr r2, _080EBBAC  @ =gUnknown_08178289
	ldr r6, _080EBBB0  @ =0x00000FB2
	add r0, r5, r6
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, r2
	ldr r7, _080EBBB4  @ =0x00001052
	add r0, r5, r7
	add r0, r4, r0
	ldrb r2, [r0]
	mov r0, #1
	and r0, r0, r2
	ldrb r1, [r1]
	add r0, r0, r1
	strb r0, [r3]
	mov r3, #15
	ldr r0, _080EBBB8  @ =0x00000EE2
	add r0, r0, r5
	mov r10, r0
	ldr r1, _080EBBBC  @ =0x00000F02
	add r1, r1, r5
	mov r9, r1
	ldr r2, _080EBBC0  @ =0x00000ED2
	add r2, r2, r5
	mov r8, r2
	sub r6, r6, #192
	add r6, r6, r5
	mov r12, r6
_080EBB1A:
	cmp r3, r4
	beq _080EBB92
	ldr r7, _080EBBC4  @ =gUnknown_030031D2
	add r7, r3, r7
	str r7, [sp]
	ldrb r0, [r7]
	cmp r0, #0
	beq _080EBB92
	ldr r1, _080EBBC8  @ =gUnknown_03003222
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #74
	bne _080EBB92
	mov r2, r10
	add r0, r4, r2
	ldrb r1, [r0]
	mov r6, r9
	add r0, r4, r6
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	add r0, r3, r2
	ldrb r2, [r0]
	add r0, r3, r6
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #12
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #31
	bhi _080EBB92
	mov r7, r8
	add r0, r4, r7
	ldrb r1, [r0]
	mov r2, r12
	add r0, r4, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	add r0, r3, r7
	ldrb r2, [r0]
	mov r6, r12
	add r0, r3, r6
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r2, r2, r0
	ldr r7, _080EBBCC  @ =gRam
	ldr r6, _080EBBD0  @ =0x00001142
	add r0, r7, r6
	add r0, r3, r0
	ldrb r0, [r0]
	sub r2, r2, r0
	sub r1, r1, r2
	add r1, r1, #12
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #31
	bls _080EBAAC
_080EBB92:
	sub r3, r3, #1
	cmp r3, #0
	bge _080EBB1A
_080EBB98:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080EBBA8:
	.4byte 0x00000F92
_080EBBAC:
	.4byte gUnknown_08178289
_080EBBB0:
	.4byte 0x00000FB2
_080EBBB4:
	.4byte 0x00001052
_080EBBB8:
	.4byte 0x00000EE2
_080EBBBC:
	.4byte 0x00000F02
_080EBBC0:
	.4byte 0x00000ED2
_080EBBC4:
	.4byte gUnknown_030031D2
_080EBBC8:
	.4byte gUnknown_03003222
_080EBBCC:
	.4byte gRam
_080EBBD0:
	.4byte 0x00001142
	THUMB_FUNC_END sub_080EB9F0

	THUMB_FUNC_START sub_080EBBD4
sub_080EBBD4: @ 0x080EBBD4
	bx lr
	THUMB_FUNC_END sub_080EBBD4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080EBBD8
sub_080EBBD8: @ 0x080EBBD8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #0
	bl sub_080EB69C
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080EBBD8

	THUMB_FUNC_START sub_080EBBE8
sub_080EBBE8: @ 0x080EBBE8
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r1, _080EBC28  @ =gUnknown_08178248
	ldr r5, _080EBC2C  @ =gRam
	ldr r0, _080EBC30  @ =0x00000F92
	add r5, r5, r0
	add r5, r4, r5
	ldrb r2, [r5]
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080EBC34  @ =gUnknown_0817827C
	add r2, r2, r0
	ldrb r2, [r2]
	add r0, r4, #0
	bl sub_080C9480
	add r0, r4, #0
	bl sub_080C6230
	ldrb r0, [r5]
	cmp r0, #12
	bne _080EBC22
	ldr r0, _080EBC38  @ =gUnknown_03003E74
	ldrh r0, [r0]
	bl sub_08115AD0
_080EBC22:
	pop {r4,r5}
	pop {r0}
	bx r0
_080EBC28:
	.4byte gUnknown_08178248
_080EBC2C:
	.4byte gRam
_080EBC30:
	.4byte 0x00000F92
_080EBC34:
	.4byte gUnknown_0817827C
_080EBC38:
	.4byte gUnknown_03003E74
	THUMB_FUNC_END sub_080EBBE8

	THUMB_FUNC_START sub_080EBC3C
sub_080EBC3C: @ 0x080EBC3C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r5, _080EBD44  @ =gRam
	ldr r1, _080EBD48  @ =0x00000F62
	add r0, r5, r1
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EBC5C
	b _080EBFE8
_080EBC5C:
	ldr r2, _080EBD4C  @ =0x00001062
	add r0, r5, r2
	add r0, r0, r6
	mov r9, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EBC6C
	b _080EBF34
_080EBC6C:
	ldr r3, _080EBD50  @ =0x00000FA2
	add r0, r5, r3
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #9
	beq _080EBC7A
	b _080EBE04
_080EBC7A:
	ldr r1, _080EBD54  @ =0x000016C4
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _080EBD58  @ =0x000016C5
	add r0, r5, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #40
	ldr r3, _080EBD5C  @ =0x00001622
	add r0, r5, r3
	ldrb r2, [r0]
	add r3, r3, #1
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #79
	bls _080EBCAC
	b _080EBE04
_080EBCAC:
	mov r1, #182
	lsl r1, r1, #5
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _080EBD60  @ =0x000016C1
	add r0, r5, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #48
	add r3, r3, #1
	add r0, r5, r3
	ldrb r2, [r0]
	add r3, r3, #1
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #79
	bls _080EBCE0
	b _080EBE04
_080EBCE0:
	ldr r1, _080EBD64  @ =0x000016F6
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #128
	bne _080EBCEC
	b _080EBE04
_080EBCEC:
	ldr r2, _080EBD68  @ =0x00001142
	add r1, r5, r2
	add r1, r6, r1
	ldr r3, _080EBD6C  @ =0x000010D2
	add r0, r5, r3
	add r0, r6, r0
	ldrb r1, [r1]
	ldrb r0, [r0]
	orr r0, r0, r1
	cmp r0, #0
	beq _080EBD04
	b _080EBE04
_080EBD04:
	mov r1, #161
	lsl r1, r1, #4
	add r0, r5, r1
	sub r2, r2, #80
	add r1, r5, r2
	add r1, r6, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080EBE04
	mov r7, #0
	mov r4, #0
	add r0, r6, #0
	bl sub_080C2FA8
	mov r3, #150
	lsl r3, r3, #4
	add r1, r5, r3
	strb r0, [r1]
	ldr r1, _080EBD70  @ =0x00001804
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EBD88
	ldr r2, _080EBD74  @ =0x000016EA
	add r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #143
	bls _080EBD78
	mov r4, #1
	b _080EBD84
	.byte 0x00
	.byte 0x00
_080EBD44:
	.4byte gRam
_080EBD48:
	.4byte 0x00000F62
_080EBD4C:
	.4byte 0x00001062
_080EBD50:
	.4byte 0x00000FA2
_080EBD54:
	.4byte 0x000016C4
_080EBD58:
	.4byte 0x000016C5
_080EBD5C:
	.4byte 0x00001622
_080EBD60:
	.4byte 0x000016C1
_080EBD64:
	.4byte 0x000016F6
_080EBD68:
	.4byte 0x00001142
_080EBD6C:
	.4byte 0x000010D2
_080EBD70:
	.4byte 0x00001804
_080EBD74:
	.4byte 0x000016EA
_080EBD78:
	sub r0, r0, #9
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080EBD84
	mov r7, #1
_080EBD84:
	cmp r7, #0
	beq _080EBDA8
_080EBD88:
	ldr r0, _080EBE1C  @ =gRam
	mov r3, #150
	lsl r3, r3, #4
	add r1, r0, r3
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _080EBE20  @ =gUnknown_08178290
	ldr r3, _080EBE24  @ =0x000016D5
	add r0, r0, r3
	ldrb r0, [r0]
	lsr r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r2, r0
	beq _080EBDA8
	mov r4, #1
_080EBDA8:
	cmp r4, #0
	beq _080EBE04
	ldr r4, _080EBE1C  @ =gRam
	ldr r1, _080EBE28  @ =0x00000FB2
	add r0, r4, r1
	add r0, r6, r0
	mov r2, #150
	lsl r2, r2, #4
	add r5, r4, r2
	ldrb r1, [r5]
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #32
	bl sub_080C2CB4
	ldr r3, _080EBE2C  @ =0x00000F22
	add r1, r4, r3
	add r1, r6, r1
	ldr r2, _080EBE30  @ =0x00000961
	add r0, r4, r2
	ldrb r0, [r0]
	mvn r0, r0
	add r0, r0, #1
	strb r0, [r1]
	sub r3, r3, #16
	add r1, r4, r3
	add r1, r6, r1
	ldrb r0, [r5]
	mvn r0, r0
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080EBE34  @ =0x00001152
	add r0, r4, r1
	add r0, r6, r0
	mov r1, #32
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #11
	bl sub_080CF140
	ldr r2, _080EBE38  @ =0x00001142
	add r4, r4, r2
	add r4, r6, r4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_080EBE04:
	ldr r5, _080EBE1C  @ =gRam
	ldr r3, _080EBE38  @ =0x00001142
	add r0, r5, r3
	add r7, r6, r0
	ldrb r0, [r7]
	cmp r0, #0
	bne _080EBE3C
	add r0, r6, #0
	bl sub_080EC1E0
	b _080EBFEE
	.byte 0x00
	.byte 0x00
_080EBE1C:
	.4byte gRam
_080EBE20:
	.4byte gUnknown_08178290
_080EBE24:
	.4byte 0x000016D5
_080EBE28:
	.4byte 0x00000FB2
_080EBE2C:
	.4byte 0x00000F22
_080EBE30:
	.4byte 0x00000961
_080EBE34:
	.4byte 0x00001152
_080EBE38:
	.4byte 0x00001142
_080EBE3C:
	ldr r0, _080EBF0C  @ =0x00000F92
	add r1, r5, r0
	add r1, r6, r1
	ldr r2, _080EBF10  @ =gUnknown_08178294
	ldr r3, _080EBF14  @ =0x00000FB2
	add r0, r5, r3
	add r0, r6, r0
	ldrb r0, [r0]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	add r0, r6, #0
	bl sub_080EC000
	add r0, r6, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _080EBE68
	b _080EBFEE
_080EBE68:
	ldr r2, _080EBF18  @ =0x00001072
	add r0, r5, r2
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EBE7C
	ldr r3, _080EBF1C  @ =0x00001152
	add r0, r5, r3
	add r0, r6, r0
	strb r1, [r0]
_080EBE7C:
	add r0, r6, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #0
	beq _080EBE8C
	b _080EBFEE
_080EBE8C:
	add r0, r6, #0
	bl sub_080C5044
	add r0, r6, #0
	bl sub_080C7A20
	lsl r0, r0, #24
	lsr r1, r0, #24
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	beq _080EBEAC
	ldr r2, _080EBF20  @ =0x00000F22
	add r0, r5, r2
	add r0, r6, r0
	strb r4, [r0]
_080EBEAC:
	mov r0, #12
	and r0, r0, r1
	cmp r0, #0
	beq _080EBEBC
	ldr r3, _080EBF24  @ =0x00000F12
	add r0, r5, r3
	add r0, r6, r0
	strb r4, [r0]
_080EBEBC:
	add r0, r6, #0
	bl sub_080C99DC
	ldr r0, _080EBF1C  @ =0x00001152
	add r1, r5, r0
	add r1, r6, r1
	ldrb r0, [r1]
	sub r0, r0, #2
	strb r0, [r1]
	ldrb r0, [r7]
	sub r0, r0, #1
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080EBEDC
	b _080EBFEE
_080EBEDC:
	strb r4, [r7]
	add r0, r6, #0
	bl sub_080C351C
	add r0, r6, #0
	mov r1, #13
	bl sub_080CF0AC
	ldr r1, _080EBF28  @ =0x00001002
	add r0, r5, r1
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EBEFA
	b _080EBFEE
_080EBEFA:
	ldr r2, _080EBF2C  @ =0x000010B2
	add r0, r5, r2
	add r0, r6, r0
	mov r1, #16
	strb r1, [r0]
	ldr r3, _080EBF30  @ =0x00001052
	add r0, r5, r3
	b _080EBFDC
	.byte 0x00
	.byte 0x00
_080EBF0C:
	.4byte 0x00000F92
_080EBF10:
	.4byte gUnknown_08178294
_080EBF14:
	.4byte 0x00000FB2
_080EBF18:
	.4byte 0x00001072
_080EBF1C:
	.4byte 0x00001152
_080EBF20:
	.4byte 0x00000F22
_080EBF24:
	.4byte 0x00000F12
_080EBF28:
	.4byte 0x00001002
_080EBF2C:
	.4byte 0x000010B2
_080EBF30:
	.4byte 0x00001052
_080EBF34:
	ldr r1, _080EBF60  @ =0x00000FC2
	add r0, r5, r1
	add r0, r0, r6
	mov r10, r0
	ldrb r4, [r0]
	cmp r4, #0
	beq _080EBF68
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r6, #0
	bl sub_080C632C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EBFEE
	ldr r2, _080EBF64  @ =0x00001172
	add r0, r5, r2
	add r0, r6, r0
	mov r1, #1
	strb r1, [r0]
	b _080EBFEE
_080EBF60:
	.4byte 0x00000FC2
_080EBF64:
	.4byte 0x00001172
_080EBF68:
	ldr r3, _080EBFC8  @ =0x00000F22
	add r0, r5, r3
	add r0, r0, r6
	mov r8, r0
	mov r1, #1
	strb r1, [r0]
	ldr r2, _080EBFCC  @ =0x00000F12
	add r0, r5, r2
	add r7, r6, r0
	strb r1, [r7]
	ldr r3, _080EBFD0  @ =0x00001172
	add r0, r5, r3
	add r0, r6, r0
	strb r4, [r0]
	add r0, r6, #0
	bl sub_080C7A20
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EBFD8
	mov r0, r9
	strb r4, [r0]
	add r0, r6, #0
	mov r1, #21
	bl sub_080CF0AC
	add r0, r6, #0
	bl sub_080CF6C0
	ldr r1, _080EBFD4  @ =0x00000FE2
	add r0, r5, r1
	add r0, r6, r0
	mov r1, #8
	strb r1, [r0]
	mov r0, #64
	mov r2, r10
	strb r0, [r2]
	strb r4, [r7]
	mov r3, r8
	strb r4, [r3]
	mov r0, sp
	add r0, r0, #2
	mov r1, sp
	add r1, r1, #3
	add r2, r6, #0
	bl sub_080C632C
	b _080EBFEE
_080EBFC8:
	.4byte 0x00000F22
_080EBFCC:
	.4byte 0x00000F12
_080EBFD0:
	.4byte 0x00001172
_080EBFD4:
	.4byte 0x00000FE2
_080EBFD8:
	ldr r1, _080EBFE4  @ =0x00000FA2
	add r0, r5, r1
_080EBFDC:
	add r0, r6, r0
	strb r4, [r0]
	b _080EBFEE
	.byte 0x00
	.byte 0x00
_080EBFE4:
	.4byte 0x00000FA2
_080EBFE8:
	add r0, r6, #0
	bl sub_080EC0FC
_080EBFEE:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080EBC3C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080EC000
sub_080EC000: @ 0x080EC000
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r7, _080EC024  @ =gRam
	ldr r1, _080EC028  @ =0x00000FE2
	add r0, r7, r1
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC02C
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r6, #0
	bl sub_080C632C
	b _080EC0D4
_080EC024:
	.4byte gRam
_080EC028:
	.4byte 0x00000FE2
_080EC02C:
	ldr r2, _080EC0DC  @ =0x00000F92
	add r4, r7, r2
	add r4, r6, r4
	ldrb r0, [r4]
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, _080EC0E0  @ =gUnknown_08178298
	add r1, r1, r0
	add r0, r6, #0
	mov r2, #3
	bl sub_080C9480
	ldrb r0, [r4]
	cmp r0, #7
	bhi _080EC0CE
	ldr r1, _080EC0E4  @ =0x000010D2
	add r0, r7, r1
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EC0CE
	ldr r2, _080EC0E8  @ =0x00001082
	add r0, r7, r2
	add r0, r6, r0
	ldrb r3, [r0]
	ldr r0, _080EC0EC  @ =gUnknown_03003E74
	ldrh r0, [r0]
	lsl r0, r0, #3
	mov r2, #170
	lsl r2, r2, #3
	add r1, r7, r2
	add r5, r0, r1
	ldrh r4, [r5, #4]
	lsl r0, r4, #22
	lsr r0, r0, #22
	mov r2, #128
	lsl r2, r2, #1
	and r2, r2, r0
	ldr r0, _080EC0F0  @ =gUnknown_081783B8
	add r0, r3, r0
	ldrb r1, [r0]
	orr r1, r1, r2
	ldr r0, _080EC0F4  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r5, #4]
	ldr r0, _080EC0F8  @ =gUnknown_081783BC
	add r3, r3, r0
	ldrb r0, [r3]
	lsl r3, r0, #24
	lsr r1, r3, #30
	mov r0, #1
	and r1, r1, r0
	lsl r1, r1, #4
	ldrb r2, [r5, #3]
	sub r0, r0, #18
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r5, #3]
	mov r1, #176
	lsl r1, r1, #4
	add r0, r7, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _080EC0CE
	lsr r0, r3, #28
	mov r4, #3
	and r0, r0, r4
	ldrb r1, [r5, #5]
	lsr r1, r1, #4
	bl sub_080C6570
	and r4, r4, r0
	lsl r4, r4, #2
	ldrb r1, [r5, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r4
	strb r0, [r5, #5]
_080EC0CE:
	add r0, r6, #0
	bl sub_080C6230
_080EC0D4:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_080EC0DC:
	.4byte 0x00000F92
_080EC0E0:
	.4byte gUnknown_08178298
_080EC0E4:
	.4byte 0x000010D2
_080EC0E8:
	.4byte 0x00001082
_080EC0EC:
	.4byte gUnknown_03003E74
_080EC0F0:
	.4byte gUnknown_081783B8
_080EC0F4:
	.4byte 0xFFFFFC00
_080EC0F8:
	.4byte gUnknown_081783BC
	THUMB_FUNC_END sub_080EC000

	THUMB_FUNC_START sub_080EC0FC
sub_080EC0FC: @ 0x080EC0FC
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080EC1AC
	add r0, r4, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080EC154
	add r0, r4, #0
	bl sub_080C4F98
	ldr r6, _080EC15C  @ =gRam
	ldr r1, _080EC160  @ =0x00001052
	add r0, r6, r1
	add r0, r4, r0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl Sprite3_Move
	ldr r1, _080EC164  @ =0x00000FC2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r5, [r0]
	cmp r5, #0
	bne _080EC154
	add r0, r4, #0
	bl sub_080C7A20
	lsl r0, r0, #24
	cmp r0, #0
	beq _080EC154
	ldr r1, _080EC168  @ =0x00000FA2
	add r0, r6, r1
	add r0, r4, r0
	strb r5, [r0]
	add r0, r4, #0
	bl sub_080C4F3C
_080EC154:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EC15C:
	.4byte gRam
_080EC160:
	.4byte 0x00001052
_080EC164:
	.4byte 0x00000FC2
_080EC168:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080EC0FC

	THUMB_FUNC_START sub_080EC16C
sub_080EC16C: @ 0x080EC16C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r4, _080EC19C  @ =gRam
	ldr r0, _080EC1A0  @ =0x00001002
	add r1, r4, r0
	add r1, r3, r1
	ldr r2, _080EC1A4  @ =0x00000EE2
	add r0, r4, r2
	add r0, r3, r0
	ldrb r2, [r0]
	mov r0, #16
	and r0, r0, r2
	strb r0, [r1]
	cmp r0, #0
	beq _080EC196
	ldr r1, _080EC1A8  @ =0x00001122
	add r0, r4, r1
	add r0, r3, r0
	mov r1, #7
	strb r1, [r0]
_080EC196:
	pop {r4}
	pop {r0}
	bx r0
_080EC19C:
	.4byte gRam
_080EC1A0:
	.4byte 0x00001002
_080EC1A4:
	.4byte 0x00000EE2
_080EC1A8:
	.4byte 0x00001122
	THUMB_FUNC_END sub_080EC16C

	THUMB_FUNC_START sub_080EC1AC
sub_080EC1AC: @ 0x080EC1AC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080EC1D4  @ =gRam
	ldr r2, _080EC1D8  @ =0x00001052
	add r1, r1, r2
	add r1, r0, r1
	ldrb r1, [r1]
	lsr r1, r1, #2
	mov r2, #3
	and r1, r1, r2
	lsl r1, r1, #4
	ldr r2, _080EC1DC  @ =gUnknown_081783C0
	add r1, r1, r2
	mov r2, #2
	bl sub_080C9480
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EC1D4:
	.4byte gRam
_080EC1D8:
	.4byte 0x00001052
_080EC1DC:
	.4byte gUnknown_081783C0
	THUMB_FUNC_END sub_080EC1AC

	THUMB_FUNC_START sub_080EC1E0
sub_080EC1E0: @ 0x080EC1E0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080EC280  @ =gRam
	ldr r1, _080EC284  @ =0x00000F72
	add r0, r6, r1
	add r0, r5, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _080EC200
	b _080EC300
_080EC200:
	ldr r2, _080EC288  @ =0x000010B2
	add r0, r6, r2
	add r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080EC232
	ldr r2, _080EC28C  @ =0x00000F52
	add r0, r6, r2
	add r0, r5, r0
	strb r1, [r0]
	ldr r1, _080EC290  @ =0x00000FC2
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #32
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080C351C
	add r0, r5, #0
	bl sub_080C2FA8
	ldr r2, _080EC294  @ =0x00001082
	add r1, r6, r2
	add r1, r5, r1
	strb r0, [r1]
_080EC232:
	ldrb r4, [r4]
	cmp r4, #1
	bne _080EC246
	add r0, r5, #0
	bl sub_080EC810
	ldr r1, _080EC298  @ =0x00001052
	add r0, r6, r1
	add r0, r5, r0
	strb r4, [r0]
_080EC246:
	ldr r2, _080EC29C  @ =0x00000F92
	add r3, r6, r2
	add r3, r5, r3
	ldr r4, _080EC2A0  @ =gUnknown_08178408
	ldr r0, _080EC2A4  @ =0x00000FB2
	add r1, r6, r0
	add r1, r5, r1
	add r2, r2, #192
	add r0, r6, r2
	add r0, r5, r0
	ldrb r2, [r0]
	mov r0, #1
	and r0, r0, r2
	lsl r0, r0, #2
	ldrb r1, [r1]
	add r0, r0, r1
	add r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r4, _080EC2A8  @ =0x00000FF2
	add r0, r6, r4
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #167
	beq _080EC2AC
	add r0, r5, #0
	bl sub_080EC8CC
	b _080EC2B2
_080EC280:
	.4byte gRam
_080EC284:
	.4byte 0x00000F72
_080EC288:
	.4byte 0x000010B2
_080EC28C:
	.4byte 0x00000F52
_080EC290:
	.4byte 0x00000FC2
_080EC294:
	.4byte 0x00001082
_080EC298:
	.4byte 0x00001052
_080EC29C:
	.4byte 0x00000F92
_080EC2A0:
	.4byte gUnknown_08178408
_080EC2A4:
	.4byte 0x00000FB2
_080EC2A8:
	.4byte 0x00000FF2
_080EC2AC:
	add r0, r5, #0
	bl sub_080EC000
_080EC2B2:
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080EC2C0
	b _080EC45E
_080EC2C0:
	add r0, r5, #0
	bl sub_080C1FD0
	add r0, r5, #0
	bl sub_080C5044
	add r0, r5, #0
	bl Sprite3_Move
	add r0, r5, #0
	bl sub_080C7A20
	ldr r1, _080EC2F4  @ =gUnknown_08178410
	ldr r0, _080EC2F8  @ =gRam
	ldr r2, _080EC2FC  @ =0x00000F52
	add r0, r0, r2
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
	b _080EC45E
	.byte 0x00
	.byte 0x00
_080EC2F4:
	.4byte gUnknown_08178410
_080EC2F8:
	.4byte gRam
_080EC2FC:
	.4byte 0x00000F52
_080EC300:
	add r0, r5, #0
	bl sub_080EC9D4
	add r0, r5, #0
	bl Sprite3_CheckIfActive
	lsl r0, r0, #24
	cmp r0, #0
	beq _080EC314
	b _080EC45E
_080EC314:
	ldr r4, _080EC390  @ =0x00000F92
	add r2, r6, r4
	add r2, r5, r2
	ldr r1, _080EC394  @ =0x00000996
	add r0, r6, r1
	ldrb r0, [r0]
	lsr r0, r0, #1
	mov r1, #1
	and r0, r0, r1
	strb r0, [r2]
	add r0, r5, #0
	bl sub_080C4F98
	add r0, r5, #0
	bl Sprite3_Move
	ldr r2, _080EC398  @ =0x00001622
	add r0, r6, r2
	ldrb r0, [r0]
	str r0, [sp]
	ldr r4, _080EC39C  @ =0x00001623
	add r0, r6, r4
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r1, _080EC3A0  @ =0x00001624
	add r0, r6, r1
	ldrb r0, [r0]
	str r0, [sp, #8]
	add r2, r2, #3
	add r0, r6, r2
	ldrb r0, [r0]
	str r0, [sp, #12]
	mov r7, #0
	ldr r4, _080EC3A4  @ =gRam
	ldr r1, _080EC3A8  @ =0x00000F12
	add r0, r4, r1
	add r0, r5, r0
	str r0, [sp, #16]
_080EC360:
	ldr r4, [sp, #4]
	lsl r2, r4, #8
	ldr r0, [sp]
	orr r2, r2, r0
	ldr r1, [sp, #12]
	lsl r3, r1, #8
	ldr r4, [sp, #8]
	orr r3, r3, r4
	ldr r1, _080EC3A4  @ =gRam
	ldr r4, _080EC3AC  @ =0x00000F22
	add r0, r1, r4
	add r0, r5, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _080EC3BC
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080EC3B0
	mov r0, #8
	lsl r0, r0, r7
	add r0, r2, r0
	b _080EC3B6
	.byte 0x00
	.byte 0x00
_080EC390:
	.4byte 0x00000F92
_080EC394:
	.4byte 0x00000996
_080EC398:
	.4byte 0x00001622
_080EC39C:
	.4byte 0x00001623
_080EC3A0:
	.4byte 0x00001624
_080EC3A4:
	.4byte gRam
_080EC3A8:
	.4byte 0x00000F12
_080EC3AC:
	.4byte 0x00000F22
_080EC3B0:
	mov r0, #8
	lsl r0, r0, r7
	sub r0, r2, r0
_080EC3B6:
	lsl r0, r0, #16
	lsr r2, r0, #16
	b _080EC3DE
_080EC3BC:
	ldr r0, [sp, #16]
	ldrb r1, [r0]
	cmp r1, #0
	beq _080EC3DE
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080EC3D4
	mov r0, #8
	lsl r0, r0, r7
	add r0, r3, r0
	b _080EC3DA
_080EC3D4:
	mov r0, #8
	lsl r0, r0, r7
	sub r0, r3, r0
_080EC3DA:
	lsl r0, r0, #16
	lsr r3, r0, #16
_080EC3DE:
	ldr r4, _080EC470  @ =gRam
	ldr r1, _080EC474  @ =0x00001622
	add r1, r1, r4
	mov r10, r1
	strb r2, [r1]
	lsr r0, r2, #8
	ldr r2, _080EC478  @ =0x00001623
	add r2, r2, r4
	mov r9, r2
	strb r0, [r2]
	ldr r0, _080EC47C  @ =0x00001624
	add r0, r0, r4
	mov r8, r0
	strb r3, [r0]
	lsr r0, r3, #8
	ldr r1, _080EC480  @ =0x00001625
	add r6, r4, r1
	strb r0, [r6]
	add r0, r5, #0
	bl sub_080C7A20
	lsl r0, r0, #24
	cmp r0, #0
	beq _080EC41E
	ldr r2, _080EC484  @ =0x00000FA2
	add r0, r4, r2
	add r0, r5, r0
	mov r1, #0
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080C444C
_080EC41E:
	add r7, r7, #1
	cmp r7, #1
	ble _080EC360
	mov r2, sp
	ldrb r0, [r2]
	mov r2, r10
	strb r0, [r2]
	mov r1, sp
	ldrb r2, [r1, #4]
	mov r1, r9
	strb r2, [r1]
	mov r0, sp
	ldrb r1, [r0, #8]
	mov r0, r8
	strb r1, [r0]
	mov r2, sp
	ldrb r2, [r2, #12]
	strb r2, [r6]
	add r0, r5, #0
	bl sub_080C7A20
	lsl r0, r0, #24
	cmp r0, #0
	beq _080EC45E
	ldr r1, _080EC484  @ =0x00000FA2
	add r0, r4, r1
	add r0, r5, r0
	mov r2, #0
	strb r2, [r0]
	add r0, r5, #0
	bl sub_080C444C
_080EC45E:
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
_080EC470:
	.4byte gRam
_080EC474:
	.4byte 0x00001622
_080EC478:
	.4byte 0x00001623
_080EC47C:
	.4byte 0x00001624
_080EC480:
	.4byte 0x00001625
_080EC484:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080EC1E0

	THUMB_FUNC_START sub_080EC488
sub_080EC488: @ 0x080EC488
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080EC4F0  @ =gRam
	ldr r1, _080EC4F4  @ =0x00000FC2
	add r0, r6, r1
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080EC4E8
	bl GetRandomInt
	ldr r2, _080EC4F8  @ =gUnknown_0817841C
	mov r1, #3
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r5]
	ldr r0, _080EC4FC  @ =0x00000F52
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080EC500  @ =0x00000FB2
	add r3, r6, r1
	add r3, r4, r3
	add r1, r1, #208
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r0, _080EC504  @ =0x00000F22
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080EC508  @ =gUnknown_08178420
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080EC50C  @ =0x00000F12
	add r1, r6, r0
	add r1, r4, r1
	ldr r2, _080EC510  @ =gUnknown_08178424
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
_080EC4E8:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EC4F0:
	.4byte gRam
_080EC4F4:
	.4byte 0x00000FC2
_080EC4F8:
	.4byte gUnknown_0817841C
_080EC4FC:
	.4byte 0x00000F52
_080EC500:
	.4byte 0x00000FB2
_080EC504:
	.4byte 0x00000F22
_080EC508:
	.4byte gUnknown_08178420
_080EC50C:
	.4byte 0x00000F12
_080EC510:
	.4byte gUnknown_08178424
	THUMB_FUNC_END sub_080EC488

	THUMB_FUNC_START sub_080EC514
sub_080EC514: @ 0x080EC514
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r0, #16
	mov r10, r0
	mov r1, #0
	mov r9, r1
	ldr r6, _080EC568  @ =gRam
	ldr r2, _080EC56C  @ =0x00001042
	add r0, r6, r2
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EC5EC
	ldr r1, _080EC570  @ =0x00000FC2
	add r0, r6, r1
	add r7, r5, r0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080EC57C
	ldr r2, _080EC574  @ =0x000010A2
	add r0, r6, r2
	add r1, r5, r0
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	bge _080EC5E6
	mov r0, #11
	strb r0, [r1]
	ldr r0, _080EC578  @ =0x00001052
	add r1, r6, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080EC5E6
_080EC568:
	.4byte gRam
_080EC56C:
	.4byte 0x00001042
_080EC570:
	.4byte 0x00000FC2
_080EC574:
	.4byte 0x000010A2
_080EC578:
	.4byte 0x00001052
_080EC57C:
	mov r1, #1
	mov r8, r1
	ldr r2, _080EC660  @ =0x00000FF2
	add r0, r6, r2
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #166
	bne _080EC5D8
	ldr r0, _080EC664  @ =0x00000FB2
	add r4, r6, r0
	add r4, r5, r4
	add r0, r5, #0
	bl sub_080C2FA8
	ldrb r1, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r1, r0
	bne _080EC5D8
	mov r1, #161
	lsl r1, r1, #4
	add r0, r6, r1
	ldr r2, _080EC668  @ =0x000010F2
	add r1, r6, r2
	add r1, r5, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080EC5D8
	ldr r0, _080EC66C  @ =0x00000F52
	add r1, r6, r0
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r1, #48
	strb r1, [r7]
	ldr r2, _080EC670  @ =0x00000FD2
	add r0, r6, r2
	add r0, r5, r0
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080C351C
	mov r0, #0
	mov r8, r0
_080EC5D8:
	mov r1, r8
	cmp r1, #0
	beq _080EC5E6
	mov r2, #32
	mov r10, r2
	mov r0, #1
	mov r9, r0
_080EC5E6:
	mov r1, r9
	cmp r1, #0
	beq _080EC650
_080EC5EC:
	ldr r4, _080EC674  @ =gRam
	ldr r2, _080EC678  @ =0x00000FC2
	add r0, r4, r2
	add r7, r5, r0
	mov r0, #0
	mov r8, r0
	mov r1, r10
	strb r1, [r7]
	bl GetRandomInt
	ldr r2, _080EC67C  @ =0x00001082
	add r1, r4, r2
	add r6, r5, r1
	ldr r3, _080EC680  @ =gUnknown_08178400
	sub r2, r2, #208
	add r1, r4, r2
	add r1, r5, r1
	ldrb r1, [r1]
	lsl r1, r1, #1
	mov r2, #1
	and r2, r2, r0
	orr r1, r1, r2
	add r1, r1, r3
	ldrb r0, [r1]
	strb r0, [r6]
	ldr r1, _080EC66C  @ =0x00000F52
	add r0, r4, r1
	add r0, r5, r0
	mov r2, r8
	strb r2, [r0]
	ldr r0, _080EC684  @ =0x00000F82
	add r4, r4, r0
	add r1, r5, r4
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #4
	bne _080EC64A
	strb r2, [r1]
	add r0, r5, #0
	bl sub_080C2FA8
	strb r0, [r6]
	mov r0, #24
	strb r0, [r7]
_080EC64A:
	add r0, r5, #0
	bl sub_080C351C
_080EC650:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080EC660:
	.4byte 0x00000FF2
_080EC664:
	.4byte 0x00000FB2
_080EC668:
	.4byte 0x000010F2
_080EC66C:
	.4byte 0x00000F52
_080EC670:
	.4byte 0x00000FD2
_080EC674:
	.4byte gRam
_080EC678:
	.4byte 0x00000FC2
_080EC67C:
	.4byte 0x00001082
_080EC680:
	.4byte gUnknown_08178400
_080EC684:
	.4byte 0x00000F82
	THUMB_FUNC_END sub_080EC514

	THUMB_FUNC_START sub_080EC688
sub_080EC688: @ 0x080EC688
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r0, #165
	mov r1, r10
	bl sub_080CA538
	add r7, r0, #0
	cmp r7, #0
	bge _080EC6AA
	b _080EC7B0
_080EC6AA:
	ldr r3, _080EC7C4  @ =gRam
	ldr r1, _080EC7C8  @ =0x00000FB2
	add r0, r3, r1
	add r0, r0, r10
	ldrb r6, [r0]
	mov r4, #150
	lsl r4, r4, #4
	add r1, r3, r4
	ldr r0, _080EC7CC  @ =gUnknown_08178430
	add r0, r6, r0
	ldrb r0, [r0]
	ldrh r5, [r1]
	add r5, r5, r0
	ldr r0, _080EC7D0  @ =gUnknown_08178434
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r5, r5, r0
	lsl r5, r5, #16
	lsr r0, r5, #16
	mov r9, r0
	add r4, r4, #4
	add r1, r3, r4
	ldr r0, _080EC7D4  @ =gUnknown_08178438
	add r0, r6, r0
	ldrb r0, [r0]
	ldrh r4, [r1]
	add r4, r4, r0
	ldr r0, _080EC7D8  @ =gUnknown_0817843C
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r4, r4, r0
	lsl r4, r4, #16
	lsr r0, r4, #16
	mov r8, r0
	mov r0, r10
	mov r1, #99
	str r3, [sp]
	bl sub_080CF140
	lsl r0, r7, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r3, [sp]
	ldr r1, _080EC7DC  @ =0x00000EE2
	add r0, r3, r1
	add r0, r7, r0
	mov r1, r9
	strb r1, [r0]
	ldr r1, _080EC7E0  @ =0x00000F02
	add r0, r3, r1
	add r0, r7, r0
	lsr r5, r5, #24
	strb r5, [r0]
	sub r1, r1, #48
	add r0, r3, r1
	add r0, r7, r0
	mov r1, r8
	strb r1, [r0]
	ldr r1, _080EC7E4  @ =0x00000EF2
	add r0, r3, r1
	add r0, r7, r0
	lsr r4, r4, #24
	strb r4, [r0]
	ldr r4, _080EC7E8  @ =0x00000F22
	add r1, r3, r4
	add r1, r7, r1
	ldr r0, _080EC7EC  @ =gUnknown_08178428
	add r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080EC7F0  @ =0x00000F12
	bx r1
