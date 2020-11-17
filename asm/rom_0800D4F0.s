	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_0800DCDC
sub_0800DCDC: @ 0x0800DCDC
	push {r4-r6,lr}
	add r5, r0, #0
	add r0, r0, #24
	bl sub_0800F22C
	lsl r0, r0, #16
	lsr r6, r0, #16
	cmp r6, #11
	bls _0800DCF0
	b _0800DECE
_0800DCF0:
	lsl r0, r6, #2
	ldr r1, _0800DCFC  @ =0x0800DD00
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0800DCFC:
	.4byte 0x0800DD00
	.4byte _0800DD30
	.4byte _0800DECE
	.4byte _0800DDD0
	.4byte _0800DECE
	.4byte _0800DECE
	.4byte _0800DDF8
	.4byte _0800DE8C
	.4byte _0800DEC0
	.4byte _0800DECE
	.4byte _0800DECE
	.4byte _0800DD62
	.4byte _0800DEB0
_0800DD30:
	ldrb r0, [r5, #27]
	cmp r0, #2
	beq _0800DD58
	ldr r2, _0800DD50  @ =gUnknown_02000000
	ldrb r0, [r2]
	cmp r0, #1
	bne _0800DD58
	add r1, r5, #0
	add r1, r1, #249
	mov r0, #6
	strb r0, [r1]
	ldr r1, _0800DD54  @ =gUnknown_0201EF00
	mov r0, #2
	strb r0, [r2]
	strb r0, [r1]
	b _0800DECE
_0800DD50:
	.4byte gUnknown_02000000
_0800DD54:
	.4byte gUnknown_0201EF00
_0800DD58:
	add r1, r5, #0
	add r1, r1, #249
	mov r0, #2
	strb r0, [r1]
	b _0800DECE
_0800DD62:
	ldrb r0, [r5, #27]
	cmp r0, #2
	beq _0800DD70
	add r1, r5, #0
	add r1, r1, #250
	mov r0, #2
	b _0800DD76
_0800DD70:
	ldr r0, _0800DD90  @ =0x00000107
	add r1, r5, r0
	mov r0, #3
_0800DD76:
	strb r0, [r1]
	ldr r1, _0800DD90  @ =0x00000107
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DD94
	cmp r0, #2
	beq _0800DD9E
	add r1, r5, #0
	add r1, r1, #249
	mov r0, #4
	b _0800DDA4
	.byte 0x00
	.byte 0x00
_0800DD90:
	.4byte 0x00000107
_0800DD94:
	mov r2, #132
	lsl r2, r2, #1
	add r1, r5, r2
	mov r0, #1
	b _0800DDA4
_0800DD9E:
	add r1, r5, #0
	add r1, r1, #249
	mov r0, #5
_0800DDA4:
	strb r0, [r1]
	ldr r4, _0800DDC8  @ =0x00000107
	add r3, r5, r4
	ldrb r0, [r3]
	mov r1, #1
	eor r0, r0, r1
	mov r1, #2
	mov r2, #0
	orr r0, r0, r1
	strb r0, [r3]
	add r0, r5, #0
	add r0, r0, #91
	strb r2, [r0]
	ldr r1, _0800DDCC  @ =0x00000101
	add r0, r5, r1
	strb r2, [r0]
	b _0800DECE
	.byte 0x00
	.byte 0x00
_0800DDC8:
	.4byte 0x00000107
_0800DDCC:
	.4byte 0x00000101
_0800DDD0:
	ldrb r6, [r5, #28]
	cmp r6, #8
	bge _0800DDD8
	b _0800DECE
_0800DDD8:
	cmp r6, #11
	bgt _0800DDE8
	add r1, r6, #0
	sub r1, r1, #8
	add r0, r5, #0
	bl sub_0800EB50
	b _0800DECE
_0800DDE8:
	cmp r6, #20
	bgt _0800DECE
	cmp r6, #16
	blt _0800DECE
	add r0, r6, #0
	sub r0, r0, #16
	strb r0, [r5, #1]
	b _0800DECE
_0800DDF8:
	ldr r6, _0800DE80  @ =gUnknown_02000000
	ldrb r0, [r6]
	cmp r0, #1
	beq _0800DE18
	add r0, r6, #0
	mov r1, #4
	bl zero_memory
	ldr r4, _0800DE84  @ =gUnknown_0201EF00
	add r0, r4, #0
	mov r1, #20
	bl zero_memory
	mov r0, #1
	strb r0, [r6]
	strb r0, [r4]
_0800DE18:
	add r0, r5, #0
	bl sub_0800EE08
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r3, _0800DE84  @ =gUnknown_0201EF00
	mov r0, #2
	ldrsb r0, [r3, r0]
	cmp r0, #3
	bgt _0800DECE
	add r1, r3, #0
	add r1, r1, #12
	add r0, r0, r1
	strb r6, [r0]
	add r2, r5, #0
	add r2, r2, #91
	ldrb r0, [r2]
	add r0, r0, #7
	mov r4, #8
	neg r4, r4
	add r1, r4, #0
	and r0, r0, r1
	strb r0, [r2]
	mov r1, #2
	ldrsb r1, [r3, r1]
	add r0, r3, #4
	add r1, r1, r0
	ldrb r0, [r2]
	lsr r0, r0, #3
	strb r0, [r1]
	ldrb r0, [r2]
	add r0, r0, #8
	strb r0, [r2]
	mov r2, #2
	ldrsb r2, [r3, r2]
	add r0, r3, #0
	add r0, r0, #8
	add r2, r2, r0
	ldr r1, _0800DE88  @ =0x00000107
	add r0, r5, r1
	ldrb r1, [r0]
	neg r0, r1
	orr r0, r0, r1
	asr r0, r0, #31
	mov r1, #2
	and r0, r0, r1
	strb r0, [r2]
	ldrb r0, [r3, #2]
	add r0, r0, #1
	strb r0, [r3, #2]
	b _0800DECE
	.byte 0x00
	.byte 0x00
_0800DE80:
	.4byte gUnknown_02000000
_0800DE84:
	.4byte gUnknown_0201EF00
_0800DE88:
	.4byte 0x00000107
_0800DE8C:
	add r0, r5, #0
	bl sub_0800EE08
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #255
	bne _0800DEA4
	add r1, r5, #0
	add r1, r1, #254
	mov r0, #1
	strb r0, [r1]
	b _0800DECE
_0800DEA4:
	ldr r2, _0800DEAC  @ =0x00000105
	add r0, r5, r2
	strb r6, [r0]
	b _0800DECE
_0800DEAC:
	.4byte 0x00000105
_0800DEB0:
	add r0, r5, #0
	bl sub_0800EE08
	mov r3, #130
	lsl r3, r3, #1
	add r1, r5, r3
	strb r0, [r1]
	b _0800DECE
_0800DEC0:
	ldr r0, _0800DED8  @ =gUnknown_08427424
	ldrb r1, [r5, #28]
	add r1, r1, r0
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_0800DFC4
_0800DECE:
	cmp r6, #255
	bhi _0800DEDC
	mov r0, #0
	b _0800DFB8
	.byte 0x00
	.byte 0x00
_0800DED8:
	.4byte gUnknown_08427424
_0800DEDC:
	ldr r0, _0800DF10  @ =0x000003FF
	cmp r6, r0
	bls _0800DF18
	add r0, r5, #0
	add r0, r0, #255
	ldrb r2, [r0]
	mov r0, #128
	mov r4, #128
	lsl r4, r4, #1
	add r1, r5, r4
	mov r4, #0
	orr r0, r0, r2
	strb r0, [r1]
	mov r1, #240
	lsl r1, r1, #8
	and r1, r1, r6
	lsr r1, r1, #8
	mov r0, #129
	orr r1, r1, r0
	add r0, r5, #0
	bl sub_0800DFC4
	ldr r1, _0800DF14  @ =0x00000101
	add r0, r5, r1
	strb r4, [r0]
	b _0800DF54
_0800DF10:
	.4byte 0x000003FF
_0800DF14:
	.4byte 0x00000101
_0800DF18:
	mov r0, #144
	lsl r0, r0, #1
	cmp r6, r0
	bne _0800DF30
	ldr r2, _0800DF2C  @ =0x00000101
	add r1, r5, r2
	ldrb r0, [r1]
	add r0, r0, #4
	strb r0, [r1]
	b _0800DF54
_0800DF2C:
	.4byte 0x00000101
_0800DF30:
	ldr r3, _0800DF84  @ =0x00000101
	add r1, r5, r3
	mov r0, #1
	strb r0, [r1]
	add r0, r0, #255
	add r4, r5, r0
	ldrb r2, [r4]
	mov r0, #128
	and r0, r0, r2
	cmp r0, #0
	beq _0800DF54
	mov r1, #63
	and r1, r1, r2
	add r0, r5, #0
	bl sub_0800DFC4
	mov r0, #0
	strb r0, [r4]
_0800DF54:
	add r1, r5, #0
	add r1, r1, #88
	add r0, r6, #0
	bl sub_0800F7B4
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldrb r0, [r5, #27]
	cmp r0, #2
	bne _0800DF88
	mov r2, #130
	lsl r2, r2, #1
	add r1, r5, r2
	mov r0, #120
	strb r0, [r1]
	add r1, r5, #0
	add r1, r1, #212
	mov r0, #106
	strb r0, [r1]
	add r1, r1, #1
	mov r0, #107
	strb r0, [r1]
	b _0800DFB6
	.byte 0x00
	.byte 0x00
_0800DF84:
	.4byte 0x00000101
_0800DF88:
	mov r0, #144
	lsl r0, r0, #1
	cmp r6, r0
	beq _0800DFB6
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _0800DFB6
	mov r3, #131
	lsl r3, r3, #1
	add r1, r5, r3
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0800DFB6
	mov r0, #4
	strb r0, [r1]
	ldr r1, _0800DFC0  @ =gUnknown_08137D68
	ldrb r0, [r5, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl play_sound
_0800DFB6:
	add r0, r4, #0
_0800DFB8:
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0800DFC0:
	.4byte gUnknown_08137D68
	THUMB_FUNC_END sub_0800DCDC

	THUMB_FUNC_START sub_0800DFC4
sub_0800DFC4: @ 0x0800DFC4
	push {r4-r6,lr}
	add r3, r0, #0
	lsl r1, r1, #24
	lsr r4, r1, #24
	mov r0, #255
	add r0, r0, r3
	mov r12, r0
	ldrb r2, [r0]
	mov r1, #48
	mov r0, #112
	and r1, r1, r2
	and r0, r0, r4
	cmp r1, r0
	beq _0800E010
	mov r0, #63
	and r0, r0, r4
	mov r1, r12
	strb r0, [r1]
	add r1, r3, #0
	add r1, r1, #91
	ldrb r5, [r1]
	ldr r2, _0800E00C  @ =0x00000101
	add r0, r3, r2
	ldrb r0, [r0]
	sub r0, r5, r0
	add r2, r1, #0
	cmp r0, #0
	ble _0800E01C
	add r0, r5, #7
	mov r5, #8
	neg r5, r5
	add r1, r5, #0
	and r0, r0, r1
	strb r0, [r2]
	b _0800E01C
	.byte 0x00
	.byte 0x00
_0800E00C:
	.4byte 0x00000101
_0800E010:
	mov r0, #63
	and r0, r0, r4
	mov r1, r12
	strb r0, [r1]
	add r2, r3, #0
	add r2, r2, #91
_0800E01C:
	mov r0, #15
	and r0, r0, r4
	add r1, r3, #0
	add r1, r1, #92
	strb r0, [r1]
	ldrb r0, [r2]
	lsr r2, r0, #3
	mov r0, #28
	sub r0, r0, r2
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r6, r3, #0
	add r6, r6, #100
	ldrb r0, [r3, #27]
	cmp r0, #2
	beq _0800E05C
	ldr r1, _0800E058  @ =0x00000107
	add r0, r3, r1
	ldrb r0, [r0]
	mov r1, #2
	and r1, r1, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #2
	add r0, r6, r0
	add r1, r0, r2
	b _0800E05E
	.byte 0x00
	.byte 0x00
_0800E058:
	.4byte 0x00000107
_0800E05C:
	add r1, r6, r2
_0800E05E:
	mov r0, #48
	and r4, r4, r0
	lsl r0, r5, #24
	mov r2, #255
	lsl r2, r2, #24
	add r0, r0, r2
	lsr r5, r0, #24
	asr r0, r0, #24
	mov r2, #1
	neg r2, r2
	cmp r0, r2
	beq _0800E08C
_0800E076:
	strb r4, [r1, #28]
	strb r4, [r1]
	add r1, r1, #1
	lsl r0, r5, #24
	mov r3, #255
	lsl r3, r3, #24
	add r0, r0, r3
	lsr r5, r0, #24
	asr r0, r0, #24
	cmp r0, r2
	bne _0800E076
_0800E08C:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800DFC4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800E094
sub_0800E094: @ 0x0800E094
	push {r4-r7,lr}
	add r5, r0, #0
	ldr r1, _0800E0D0  @ =gUnknown_03005E10
	ldr r0, _0800E0D4  @ =gLCDRegisterBuffer
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0800E130
	ldr r0, _0800E0D8  @ =gUnknown_0201EF00
	mov r1, #3
	ldrsb r1, [r0, r1]
	add r0, r0, #12
	add r1, r1, r0
	ldrb r2, [r1]
	cmp r2, #255
	bne _0800E0DC
	add r1, r5, #0
	add r1, r1, #249
	mov r0, #3
	strb r0, [r1]
	mov r0, #130
	lsl r0, r0, #1
	add r1, r5, r0
	mov r0, #1
	b _0800E108
	.byte 0x00
	.byte 0x00
_0800E0D0:
	.4byte gUnknown_03005E10
_0800E0D4:
	.4byte gLCDRegisterBuffer
_0800E0D8:
	.4byte gUnknown_0201EF00
_0800E0DC:
	ldrh r0, [r5, #6]
	mov r1, #255
	lsl r1, r1, #8
	and r1, r1, r0
	orr r1, r1, r2
	strh r1, [r5, #6]
	add r4, r5, #0
	add r4, r4, #24
	add r0, r4, #0
	bl sub_0800ED7C
	ldr r1, _0800E120  @ =gUnknown_08137D5F
	add r0, r4, #0
	bl sub_0800EDB8
	add r1, r5, #0
	add r1, r1, #249
	mov r0, #1
	strb r0, [r1]
	ldr r2, _0800E124  @ =0x00000107
	add r1, r5, r2
	mov r0, #3
_0800E108:
	strb r0, [r1]
	ldr r2, _0800E128  @ =gUnknown_02000000
	ldr r0, _0800E12C  @ =gUnknown_0201EF00
	ldrb r1, [r0, #3]
	strb r1, [r2, #1]
	mov r1, #3
	strb r1, [r2]
	mov r1, #20
	bl zero_memory
	b _0800E1C4
	.byte 0x00
	.byte 0x00
_0800E120:
	.4byte gUnknown_08137D5F
_0800E124:
	.4byte 0x00000107
_0800E128:
	.4byte gUnknown_02000000
_0800E12C:
	.4byte gUnknown_0201EF00
_0800E130:
	mov r0, #240
	and r0, r0, r1
	lsr r4, r0, #4
	cmp r4, #0
	beq _0800E1C4
	ldr r0, _0800E1CC  @ =gUnknown_0201EF00
	mov r1, #2
	ldrsb r1, [r0, r1]
	add r5, r0, #0
	cmp r1, #1
	ble _0800E1C4
	mov r3, #1
	mov r1, #2
	ldrsb r1, [r5, r1]
	ldr r7, _0800E1D0  @ =gUnknown_08427434
	cmp r3, r1
	bge _0800E174
	ldrb r0, [r5, #8]
	ldrb r2, [r5, #9]
	cmp r0, r2
	bne _0800E174
	add r2, r1, #0
	add r6, r5, #0
	add r6, r6, #8
_0800E160:
	add r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, r2
	bge _0800E174
	add r1, r3, r6
	ldrb r0, [r5, #8]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0800E160
_0800E174:
	mov r2, #2
	ldrsb r2, [r5, r2]
	sub r0, r2, #1
	lsl r0, r0, #2
	add r0, r0, r7
	sub r1, r3, #1
	mul r1, r2, r1
	mov r2, #3
	ldrsb r2, [r5, r2]
	ldr r0, [r0]
	add r0, r0, r1
	add r0, r0, r2
	ldrb r1, [r0]
	mov r3, #0
	mov r0, #1
	and r0, r0, r4
	cmp r0, #0
	bne _0800E1AE
	mov r2, #1
_0800E19A:
	lsr r4, r4, #1
	add r0, r3, #2
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, #7
	bhi _0800E1AE
	add r0, r4, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0800E19A
_0800E1AE:
	asr r1, r1, r3
	mov r0, #3
	and r1, r1, r0
	mov r0, #3
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _0800E1C4
	strb r1, [r5, #3]
	mov r0, #61
	bl play_sound
_0800E1C4:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800E1CC:
	.4byte gUnknown_0201EF00
_0800E1D0:
	.4byte gUnknown_08427434
	THUMB_FUNC_END sub_0800E094

	THUMB_FUNC_START sub_0800E1D4
sub_0800E1D4: @ 0x0800E1D4
	push {r4,r5,lr}
	add r4, r0, #0
	mov r0, #130
	lsl r0, r0, #1
	add r1, r4, r0
	ldrb r0, [r1]
	add r5, r0, #0
	cmp r5, #0
	beq _0800E1F8
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0800E238
	add r1, r4, #0
	add r1, r1, #249
	mov r0, #5
	b _0800E236
_0800E1F8:
	ldr r1, _0800E224  @ =gUnknown_03005E10
	ldr r0, _0800E228  @ =gLCDRegisterBuffer
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	mov r0, #243
	and r0, r0, r1
	cmp r0, #0
	beq _0800E22C
	mov r0, #66
	bl play_sound
	mov r1, #134
	lsl r1, r1, #1
	add r0, r4, r1
	strb r5, [r0]
	add r1, r4, #0
	add r1, r1, #249
	mov r0, #5
	b _0800E236
	.byte 0x00
	.byte 0x00
_0800E224:
	.4byte gUnknown_03005E10
_0800E228:
	.4byte gLCDRegisterBuffer
_0800E22C:
	mov r0, #134
	lsl r0, r0, #1
	add r1, r4, r0
	ldrb r0, [r1]
	add r0, r0, #1
_0800E236:
	strb r0, [r1]
_0800E238:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800E1D4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800E240
sub_0800E240: @ 0x0800E240
	push {r4-r6,lr}
	sub sp, sp, #8
	add r6, r0, #0
	add r5, r6, #0
	add r5, r5, #128
	add r1, r6, #0
	add r1, r1, #100
	add r0, r5, #0
	mov r2, #14
	bl CpuSet
	add r4, r6, #0
	add r4, r4, #156
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #14
	bl CpuSet
	add r5, r5, #56
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #14
	bl CpuSet
	mov r0, sp
	mov r4, #0
	strh r4, [r0]
	ldr r2, _0800E2C0  @ =0x0100000E
	add r1, r5, #0
	bl CpuSet
	add r1, r6, #0
	add r1, r1, #213
	ldrb r0, [r1]
	add r3, r6, #0
	add r3, r3, #212
	strb r0, [r3]
	add r2, r6, #0
	add r2, r2, #214
	ldrb r0, [r2]
	strb r0, [r1]
	add r1, r1, #2
	ldrb r0, [r1]
	strb r0, [r2]
	strb r4, [r1]
	ldrb r0, [r6, #27]
	cmp r0, #2
	bne _0800E2CC
	ldrb r0, [r3]
	cmp r0, #0
	bne _0800E316
	mov r0, #1
	neg r0, r0
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r1, _0800E2C4  @ =gUnknown_02002B90
	ldr r2, _0800E2C8  @ =0x01000140
	bl CpuFastSet
	mov r0, #2
	bl sub_0800EB08
	b _0800E2F6
	.byte 0x00
	.byte 0x00
_0800E2C0:
	.4byte 0x0100000E
_0800E2C4:
	.4byte gUnknown_02002B90
_0800E2C8:
	.4byte 0x01000140
_0800E2CC:
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800E316
	mov r0, #132
	lsl r0, r0, #1
	add r1, r6, r0
	mov r0, #1
	strb r0, [r1]
	ldr r1, _0800E320  @ =gUnknown_0201EF00
	ldrb r0, [r1, #8]
	sub r0, r0, #2
	strb r0, [r1, #8]
	ldrb r0, [r1, #9]
	sub r0, r0, #2
	strb r0, [r1, #9]
	ldrb r0, [r1, #10]
	sub r0, r0, #2
	strb r0, [r1, #10]
	ldrb r0, [r1, #11]
	sub r0, r0, #2
	strb r0, [r1, #11]
_0800E2F6:
	add r1, r6, #0
	add r1, r1, #91
	mov r0, #0
	strb r0, [r1]
	add r0, r6, #0
	add r0, r0, #255
	ldrb r0, [r0]
	mov r1, #64
	orr r1, r1, r0
	add r0, r6, #0
	bl sub_0800DFC4
	add r1, r6, #0
	add r1, r1, #249
	mov r0, #1
	strb r0, [r1]
_0800E316:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800E320:
	.4byte gUnknown_0201EF00
	THUMB_FUNC_END sub_0800E240

	THUMB_FUNC_START sub_0800E324
sub_0800E324: @ 0x0800E324
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #27]
	cmp r0, #2
	beq _0800E35C
	mov r0, #6
	bl sub_0800E69C
	add r0, r4, #0
	add r0, r0, #254
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800E394
	ldr r1, _0800E354  @ =gUnknown_03005E10
	ldr r0, _0800E358  @ =gLCDRegisterBuffer
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	mov r0, #243
	and r0, r0, r1
	cmp r0, #0
	beq _0800E394
	b _0800E38C
_0800E354:
	.4byte gUnknown_03005E10
_0800E358:
	.4byte gLCDRegisterBuffer
_0800E35C:
	ldr r0, _0800E374  @ =gUnknown_0201ED90
	ldrh r1, [r0, #6]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0800E378
	mov r0, #130
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #1
	b _0800E392
_0800E374:
	.4byte gUnknown_0201ED90
_0800E378:
	mov r0, #130
	lsl r0, r0, #1
	add r1, r4, r0
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #255
	bne _0800E394
_0800E38C:
	add r1, r4, #0
	add r1, r1, #249
	mov r0, #3
_0800E392:
	strb r0, [r1]
_0800E394:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800E324

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800E39C
sub_0800E39C: @ 0x0800E39C
	add r2, r0, #0
	add r2, r2, #248
	ldrb r1, [r2]
	add r1, r1, #1
	mov r3, #0
	strb r1, [r2]
	add r0, r0, #249
	strb r3, [r0]
	bx lr
	THUMB_FUNC_END sub_0800E39C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800E3B0
sub_0800E3B0: @ 0x0800E3B0
	push {r4-r6,lr}
	sub sp, sp, #4
	add r5, r0, #0
	cmp r5, #0
	beq _0800E3CA
	ldr r0, _0800E420  @ =gTextbox
	ldr r1, _0800E424  @ =0x00000109
	add r2, r0, r1
	ldrb r0, [r2]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r2]
	mov r5, #2
_0800E3CA:
	mov r0, #1
	neg r0, r0
	str r0, [sp]
	ldr r1, _0800E428  @ =gUnknown_02002490
	ldr r2, _0800E42C  @ =0x010001A0
	mov r0, sp
	bl CpuFastSet
	ldr r4, _0800E420  @ =gTextbox
	ldr r0, _0800E424  @ =0x00000109
	add r6, r4, r0
	ldrb r0, [r6]
	bl sub_0800EB08
	ldrb r0, [r6]
	mov r3, #204
	cmp r0, #0
	bne _0800E3F0
	mov r3, #152
_0800E3F0:
	add r1, r4, #0
	add r1, r1, #212
	add r0, r5, r1
	mov r2, #0
	strb r3, [r0]
	add r0, r5, #1
	add r0, r0, r1
	add r1, r3, #1
	strb r1, [r0]
	add r0, r4, #0
	add r0, r0, #91
	strb r2, [r0]
	add r0, r0, #164
	ldrb r0, [r0]
	mov r1, #64
	orr r1, r1, r0
	add r0, r4, #0
	bl sub_0800DFC4
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800E420:
	.4byte gTextbox
_0800E424:
	.4byte 0x00000109
_0800E428:
	.4byte gUnknown_02002490
_0800E42C:
	.4byte 0x010001A0
	THUMB_FUNC_END sub_0800E3B0

	THUMB_FUNC_START sub_0800E430
sub_0800E430: @ 0x0800E430
	push {r4-r6,lr}
	ldr r2, _0800E4DC  @ =gUnknown_03000420
	ldrb r0, [r2, #3]
	lsl r0, r0, #3
	ldr r1, _0800E4E0  @ =gUnknown_020309A0
	add r3, r0, r1
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _0800E476
	mov r0, #0
	strb r0, [r3, #1]
	ldrb r2, [r2, #3]
	lsl r2, r2, #11
	ldrb r3, [r3, #5]
	lsl r0, r3, #6
	ldr r1, _0800E4E4  @ =gBG0Buffer
	add r0, r0, r1
	add r2, r2, r0
	mov r0, #20
	sub r1, r0, r3
	mov r3, #0
_0800E45A:
	add r5, r2, #0
	add r5, r5, #64
	sub r1, r1, #1
	add r0, r2, #0
	add r0, r0, #42
_0800E464:
	strh r3, [r0]
	sub r0, r0, #2
	cmp r0, r2
	bge _0800E464
	add r2, r5, #0
	cmp r1, #0
	bgt _0800E45A
	bl sub_0802C934
_0800E476:
	ldr r2, _0800E4DC  @ =gUnknown_03000420
	ldrb r0, [r2, #3]
	lsl r0, r0, #3
	ldr r1, _0800E4E8  @ =gUnknown_02030990
	add r3, r0, r1
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _0800E4D4
	mov r0, #0
	strb r0, [r3, #1]
	ldrb r2, [r2, #3]
	lsl r2, r2, #11
	ldrb r0, [r3, #5]
	lsl r0, r0, #5
	ldrb r1, [r3, #4]
	add r0, r0, r1
	lsl r0, r0, #1
	ldr r1, _0800E4E4  @ =gBG0Buffer
	add r0, r0, r1
	add r2, r2, r0
	ldrb r0, [r3, #7]
	add r1, r0, #2
_0800E4A2:
	mov r4, #0
	ldrb r0, [r3, #6]
	add r0, r0, #2
	add r5, r2, #0
	add r5, r5, #64
	sub r1, r1, #1
	cmp r4, r0
	bge _0800E4C2
	mov r6, #0
_0800E4B4:
	strh r6, [r2]
	add r2, r2, #2
	add r4, r4, #1
	ldrb r0, [r3, #6]
	add r0, r0, #2
	cmp r4, r0
	blt _0800E4B4
_0800E4C2:
	add r2, r5, #0
	cmp r1, #0
	bgt _0800E4A2
	ldrb r0, [r3, #5]
	ldrb r1, [r3, #7]
	bl sub_0802C974
	bl sub_0802C934
_0800E4D4:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800E4DC:
	.4byte gUnknown_03000420
_0800E4E0:
	.4byte gUnknown_020309A0
_0800E4E4:
	.4byte gBG0Buffer
_0800E4E8:
	.4byte gUnknown_02030990
	THUMB_FUNC_END sub_0800E430

	THUMB_FUNC_START sub_0800E4EC
sub_0800E4EC: @ 0x0800E4EC
	push {r4-r7,lr}
	mov r7, #0
	ldr r2, _0800E51C  @ =gUnknown_0202A5E0
	ldrb r3, [r2, #4]
	lsl r1, r3, #27
	lsr r1, r1, #27
	add r1, r1, r0
	mov r0, #31
	and r1, r1, r0
	mov r5, #32
	neg r5, r5
	add r4, r5, #0
	and r4, r4, r3
	orr r4, r4, r1
	strb r4, [r2, #4]
	lsl r1, r4, #27
	lsr r0, r1, #27
	add r6, r2, #0
	cmp r0, #17
	bhi _0800E520
	and r4, r4, r5
	mov r0, #17
	b _0800E52A
	.byte 0x00
	.byte 0x00
_0800E51C:
	.4byte gUnknown_0202A5E0
_0800E520:
	lsr r0, r1, #27
	cmp r0, #19
	bls _0800E530
	and r4, r4, r5
	mov r0, #20
_0800E52A:
	orr r4, r4, r0
	strb r4, [r6, #4]
	mov r7, #1
_0800E530:
	ldr r4, _0800E568  @ =gUnknown_020309B0
	ldr r3, _0800E56C  @ =gUnknown_03000420
	ldrb r1, [r3, #3]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r0, [r6, #4]
	lsl r0, r0, #27
	lsr r0, r0, #27
	strb r0, [r1, #5]
	ldrb r2, [r3, #3]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r1, [r6, #4]
	lsl r1, r1, #27
	lsr r1, r1, #27
	mov r0, #20
	sub r0, r0, r1
	strb r0, [r2, #7]
	ldrb r0, [r3, #3]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, #1
	strb r1, [r0, #1]
	add r0, r7, #0
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0800E568:
	.4byte gUnknown_020309B0
_0800E56C:
	.4byte gUnknown_03000420
	THUMB_FUNC_END sub_0800E4EC

	THUMB_FUNC_START sub_0800E570
sub_0800E570: @ 0x0800E570
	push {r4,r5,lr}
	ldr r1, _0800E5DC  @ =gUnknown_020309B0
	ldr r0, _0800E5E0  @ =gUnknown_03000420
	ldrb r2, [r0, #3]
	lsl r0, r2, #3
	add r3, r0, r1
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _0800E5D4
	lsl r1, r2, #11
	ldr r0, _0800E5E4  @ =gUnknown_0202D5D0
	add r4, r1, r0
	mov r5, #7
	ldrsb r5, [r3, r5]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0800E5EC
	add r4, r4, #4
	cmp r5, #2
	beq _0800E5A8
	cmp r5, #3
	bne _0800E5B0
	add r0, r4, #0
	mov r1, #1
	bl sub_0800E63C
	sub r4, r4, #64
_0800E5A8:
	add r0, r4, #0
	mov r1, #0
	bl sub_0800E63C
_0800E5B0:
	ldr r4, _0800E5E0  @ =gUnknown_03000420
	ldrb r0, [r4, #3]
	lsl r0, r0, #3
	ldr r3, _0800E5DC  @ =gUnknown_020309B0
	add r2, r0, r3
	ldr r1, _0800E5E8  @ =gUnknown_020309A0
	add r0, r0, r1
	ldr r1, [r2]
	str r1, [r0]
	ldr r1, [r2, #4]
	str r1, [r0, #4]
	ldrb r0, [r4, #3]
	lsl r0, r0, #3
	add r0, r0, r3
	mov r1, #0
	strb r1, [r0, #1]
	bl sub_0802C934
_0800E5D4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800E5DC:
	.4byte gUnknown_020309B0
_0800E5E0:
	.4byte gUnknown_03000420
_0800E5E4:
	.4byte gUnknown_0202D5D0
_0800E5E8:
	.4byte gUnknown_020309A0
	THUMB_FUNC_END sub_0800E570

	THUMB_FUNC_START sub_0800E5EC
sub_0800E5EC: @ 0x0800E5EC
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	beq _0800E610
	cmp r0, #2
	bgt _0800E5FE
	cmp r0, #1
	beq _0800E61E
	b _0800E636
_0800E5FE:
	cmp r0, #3
	bne _0800E636
	mov r0, #101
	strh r0, [r1]
	mov r0, #102
	strh r0, [r1, #2]
	mov r0, #105
	strh r0, [r1, #42]
	sub r1, r1, #64
_0800E610:
	mov r0, #99
	strh r0, [r1]
	mov r0, #100
	strh r0, [r1, #2]
	mov r0, #105
	strh r0, [r1, #42]
	sub r1, r1, #64
_0800E61E:
	ldr r2, _0800E638  @ =0x00000467
	add r0, r2, #0
	strh r0, [r1]
	mov r2, #103
	add r0, r1, #0
	add r0, r0, #38
_0800E62A:
	strh r2, [r0, #2]
	sub r0, r0, #2
	cmp r0, r1
	bge _0800E62A
	mov r0, #104
	strh r0, [r1, #42]
_0800E636:
	bx lr
_0800E638:
	.4byte 0x00000467
	THUMB_FUNC_END sub_0800E5EC

	THUMB_FUNC_START sub_0800E63C
sub_0800E63C: @ 0x0800E63C
	push {r4-r7,lr}
	add r3, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r4, #19
	ldr r7, _0800E664  @ =gUnknown_0202A5E0
	add r0, r7, #0
	add r0, r0, #212
	add r0, r1, r0
	ldrb r2, [r0]
	cmp r2, #0
	bne _0800E668
	mov r0, #15
_0800E656:
	strh r0, [r3]
	add r3, r3, #2
	sub r4, r4, #1
	cmp r4, #0
	bne _0800E656
	b _0800E694
	.byte 0x00
	.byte 0x00
_0800E664:
	.4byte gUnknown_0202A5E0
_0800E668:
	mov r5, #0
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r6, r0, #2
	add r7, r7, #100
_0800E672:
	add r1, r5, #0
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r1, r1, r6
	add r1, r1, r7
	ldrb r0, [r1]
	lsl r0, r0, #8
	orr r0, r0, r2
	strh r0, [r3]
	add r3, r3, #2
	add r0, r2, #2
	lsl r0, r0, #16
	lsr r2, r0, #16
	sub r4, r4, #1
	cmp r4, #0
	bne _0800E672
_0800E694:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800E63C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800E69C
sub_0800E69C: @ 0x0800E69C
	ldr r2, _0800E6A8  @ =gUnknown_02000010
	ldr r1, _0800E6AC  @ =gTextbox
	strb r0, [r1]
	strb r0, [r2]
	bx lr
	.byte 0x00
	.byte 0x00
_0800E6A8:
	.4byte gUnknown_02000010
_0800E6AC:
	.4byte gTextbox
	THUMB_FUNC_END sub_0800E69C

	THUMB_FUNC_START sub_0800E6B0
sub_0800E6B0: @ 0x0800E6B0
	push {r4-r7,lr}
	mov r7, #0
	ldr r2, _0800E6D0  @ =gTextbox
	ldr r1, _0800E6D4  @ =0x0000010D
	add r3, r2, r1
	ldrb r1, [r3]
	add r1, r1, r0
	strb r1, [r3]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r5, r2, #0
	cmp r1, #0
	bgt _0800E6D8
	strb r7, [r3]
	b _0800E6E0
	.byte 0x00
	.byte 0x00
_0800E6D0:
	.4byte gTextbox
_0800E6D4:
	.4byte 0x0000010D
_0800E6D8:
	cmp r1, #7
	ble _0800E6E2
	mov r0, #8
	strb r0, [r3]
_0800E6E0:
	mov r7, #1
_0800E6E2:
	ldr r0, _0800E75C  @ =gUnknown_03000420
	ldrb r0, [r0, #3]
	lsl r0, r0, #3
	ldr r1, _0800E760  @ =gUnknown_020309C0
	add r3, r0, r1
	add r2, r5, #0
	ldr r0, _0800E764  @ =0x0000010D
	add r1, r2, r0
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0800E768
	add r4, r0, #0
	ldrb r0, [r2, #5]
	lsl r0, r0, #27
	lsr r0, r0, #26
	mul r0, r4, r0
	lsr r1, r0, #4
	strb r1, [r3, #6]
	mov r6, #1
	add r0, r1, #0
	and r0, r0, r6
	cmp r0, #0
	beq _0800E716
	add r0, r1, #1
	strb r0, [r3, #6]
_0800E716:
	ldrb r1, [r2, #3]
	lsl r1, r1, #27
	lsr r1, r1, #27
	ldrb r0, [r2, #5]
	lsl r0, r0, #27
	lsr r0, r0, #28
	add r1, r1, r0
	ldrb r0, [r3, #6]
	lsr r0, r0, #1
	sub r1, r1, r0
	strb r1, [r3, #4]
	ldrb r0, [r2, #5]
	lsr r0, r0, #5
	lsl r0, r0, #1
	mul r0, r4, r0
	lsr r1, r0, #4
	strb r1, [r3, #7]
	add r0, r1, #0
	and r0, r0, r6
	cmp r0, #0
	beq _0800E744
	add r0, r1, #1
	strb r0, [r3, #7]
_0800E744:
	ldrb r0, [r5, #4]
	lsl r0, r0, #27
	lsr r0, r0, #27
	ldrb r1, [r5, #5]
	lsr r1, r1, #6
	add r0, r0, r1
	ldrb r1, [r3, #7]
	lsr r1, r1, #1
	sub r0, r0, r1
	strb r0, [r3, #5]
	b _0800E776
	.byte 0x00
	.byte 0x00
_0800E75C:
	.4byte gUnknown_03000420
_0800E760:
	.4byte gUnknown_020309C0
_0800E764:
	.4byte 0x0000010D
_0800E768:
	mov r0, #255
	strb r0, [r3, #5]
	mov r0, #1
	neg r0, r0
	strb r0, [r3, #4]
	strb r0, [r3, #7]
	strb r0, [r3, #6]
_0800E776:
	ldr r0, _0800E788  @ =gUnknown_0202E154
	ldrb r1, [r0]
	strb r1, [r3, #2]
	ldrb r0, [r0]
	strb r0, [r3, #1]
	add r0, r7, #0
	pop {r4-r7}
	pop {r1}
	bx r1
_0800E788:
	.4byte gUnknown_0202E154
	THUMB_FUNC_END sub_0800E6B0

	THUMB_FUNC_START sub_0800E78C
sub_0800E78C: @ 0x0800E78C
	push {r4-r6,lr}
	ldr r3, _0800E7F4  @ =gTextbox
	ldr r1, _0800E7F8  @ =0x0000010D
	add r0, r3, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _0800E7EE
	ldr r5, _0800E7FC  @ =gUnknown_03000420
	ldrb r0, [r5, #3]
	lsl r4, r0, #3
	ldr r6, _0800E800  @ =gUnknown_020309C0
	add r4, r4, r6
	lsl r0, r0, #11
	ldrb r1, [r4, #5]
	lsl r1, r1, #5
	ldrb r2, [r4, #4]
	add r1, r1, r2
	lsl r1, r1, #1
	ldr r2, _0800E804  @ =gBG0Buffer
	add r1, r1, r2
	add r0, r0, r1
	ldrb r3, [r3, #2]
	lsr r3, r3, #6
	lsl r3, r3, #12
	mov r1, #144
	orr r3, r3, r1
	ldrb r1, [r4, #6]
	ldrb r2, [r4, #7]
	bl sub_0800E80C
	bl sub_0800E950
	bl sub_0800EA38
	bl sub_0800EAA4
	ldr r2, _0800E808  @ =gUnknown_02030990
	ldrb r0, [r5, #3]
	lsl r0, r0, #3
	add r2, r0, r2
	add r0, r0, r6
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	bl sub_0802C934
_0800E7EE:
	pop {r4-r6}
	pop {r0}
	bx r0
_0800E7F4:
	.4byte gTextbox
_0800E7F8:
	.4byte 0x0000010D
_0800E7FC:
	.4byte gUnknown_03000420
_0800E800:
	.4byte gUnknown_020309C0
_0800E804:
	.4byte gBG0Buffer
_0800E808:
	.4byte gUnknown_02030990
	THUMB_FUNC_END sub_0800E78C

	THUMB_FUNC_START sub_0800E80C
sub_0800E80C: @ 0x0800E80C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	lsl r2, r2, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r8, r3
	add r4, r7, #0
	lsr r0, r2, #16
	mov r12, r0
	asr r2, r2, #10
	add r2, r2, #64
	add r3, r4, r2
	mov r2, r8
	strh r2, [r4]
	add r4, r4, #2
	mov r5, #128
	lsl r5, r5, #4
	mov r9, r5
	mov r0, r8
	mov r6, r9
	orr r0, r0, r6
	strh r0, [r3]
	add r3, r3, #2
	lsl r1, r1, #16
	asr r1, r1, #16
	cmp r1, #0
	ble _0800E8B2
	mov r2, r8
	add r2, r2, #1
	strh r2, [r4]
	add r4, r4, #2
	add r0, r2, #0
	orr r0, r0, r6
	strh r0, [r3]
	add r3, r3, #2
	sub r0, r1, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r1, r0, #0
	lsl r0, r1, #16
	ldr r5, _0800E94C  @ =0xFFFF0000
	add r0, r0, r5
	lsr r0, r0, #16
	lsl r1, r1, #16
	add r6, r2, #0
	cmp r1, #0
	ble _0800E898
	mov r1, #2
	add r1, r1, r8
	mov r10, r1
	mov r2, r10
	mov r5, r9
	orr r2, r2, r5
_0800E87E:
	mov r1, r10
	strh r1, [r4]
	add r4, r4, #2
	strh r2, [r3]
	add r3, r3, #2
	add r1, r0, #0
	lsl r0, r1, #16
	ldr r5, _0800E94C  @ =0xFFFF0000
	add r0, r0, r5
	lsr r0, r0, #16
	lsl r1, r1, #16
	cmp r1, #0
	bgt _0800E87E
_0800E898:
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	add r1, r6, #0
	orr r1, r1, r0
	strh r1, [r4]
	add r4, r4, #2
	mov r2, #192
	lsl r2, r2, #4
	add r0, r2, #0
	orr r6, r6, r0
	strh r6, [r3]
	add r3, r3, #2
_0800E8B2:
	mov r5, #128
	lsl r5, r5, #3
	add r6, r5, #0
	mov r0, r8
	orr r0, r0, r6
	strh r0, [r4]
	mov r0, #192
	lsl r0, r0, #4
	add r1, r0, #0
	mov r0, r8
	orr r0, r0, r1
	strh r0, [r3]
	add r7, r7, #64
	add r4, r4, #64
	mov r1, r12
	lsl r0, r1, #16
	asr r1, r0, #16
	cmp r1, #0
	ble _0800E93C
	mov r2, r8
	add r2, r2, #3
	strh r2, [r7]
	add r0, r2, #0
	orr r0, r0, r6
	strh r0, [r4]
	add r7, r7, #64
	add r4, r4, #64
	sub r0, r1, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r12, r0
	mov r1, r12
	lsl r0, r1, #16
	ldr r3, _0800E94C  @ =0xFFFF0000
	add r0, r0, r3
	lsr r0, r0, #16
	mov r12, r0
	lsl r1, r1, #16
	add r5, r2, #0
	cmp r1, #0
	ble _0800E926
	mov r3, r8
	add r3, r3, #4
	add r2, r3, #0
	orr r2, r2, r6
_0800E90C:
	strh r3, [r7]
	strh r2, [r4]
	add r7, r7, #64
	add r4, r4, #64
	mov r1, r12
	lsl r0, r1, #16
	ldr r6, _0800E94C  @ =0xFFFF0000
	add r0, r0, r6
	lsr r0, r0, #16
	mov r12, r0
	lsl r1, r1, #16
	cmp r1, #0
	bgt _0800E90C
_0800E926:
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	add r1, r5, #0
	orr r1, r1, r0
	strh r1, [r7]
	mov r2, #192
	lsl r2, r2, #4
	add r0, r2, #0
	orr r5, r5, r0
	strh r5, [r4]
_0800E93C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800E94C:
	.4byte 0xFFFF0000
	THUMB_FUNC_END sub_0800E80C

	THUMB_FUNC_START sub_0800E950
sub_0800E950: @ 0x0800E950
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r0, _0800E9C8  @ =gUnknown_03000420
	ldrb r2, [r0, #3]
	lsl r1, r2, #3
	ldr r0, _0800E9CC  @ =gUnknown_020309C0
	add r1, r1, r0
	str r1, [sp]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0800EA24
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _0800EA24
	add r5, r0, #0
	lsl r1, r2, #11
	ldr r0, _0800E9D0  @ =gUnknown_0202D112
	add r1, r1, r0
	ldr r2, [sp]
	ldrb r0, [r2, #5]
	lsl r0, r0, #5
	ldrb r3, [r2, #4]
	add r0, r0, r3
	lsl r0, r0, #1
	add r6, r1, r0
	mov r0, #4
	sub r0, r0, r5
	lsr r1, r0, #31
	add r0, r0, r1
	asr r2, r0, #1
	ldr r7, _0800E9D4  @ =gUnknown_0201EEC4
	mov r10, r7
_0800E998:
	ldr r0, [sp]
	ldrb r4, [r0, #6]
	add r6, r6, #64
	mov r1, r10
	add r3, r2, r1
	ldrb r0, [r3]
	cmp r0, #0
	bne _0800E9D8
	add r1, r6, #0
	add r2, r2, #1
	mov r8, r2
	sub r5, r5, #1
	mov r12, r5
	mov r2, #15
_0800E9B4:
	strh r2, [r1]
	add r1, r1, #2
	lsl r0, r4, #24
	mov r3, #255
	lsl r3, r3, #24
	add r0, r0, r3
	lsr r4, r0, #24
	cmp r0, #0
	bgt _0800E9B4
	b _0800EA1C
_0800E9C8:
	.4byte gUnknown_03000420
_0800E9CC:
	.4byte gUnknown_020309C0
_0800E9D0:
	.4byte gUnknown_0202D112
_0800E9D4:
	.4byte gUnknown_0201EEC4
_0800E9D8:
	mov r1, #0
	ldrb r3, [r3]
	lsl r0, r2, #3
	add r7, r2, #1
	mov r8, r7
	sub r5, r5, #1
	mov r12, r5
	sub r0, r0, r2
	lsl r5, r0, #2
	ldr r0, _0800EA34  @ =gUnknown_0201EE54
	mov r9, r0
_0800E9EE:
	lsl r1, r1, #24
	asr r1, r1, #24
	lsl r2, r1, #1
	add r2, r2, r6
	add r0, r1, r5
	add r0, r0, r9
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r0, r0, r3
	strh r0, [r2]
	add r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r3, #2
	lsl r0, r0, #16
	lsr r3, r0, #16
	lsl r0, r4, #24
	mov r2, #255
	lsl r2, r2, #24
	add r0, r0, r2
	lsr r4, r0, #24
	cmp r0, #0
	bgt _0800E9EE
_0800EA1C:
	mov r2, r8
	mov r5, r12
	cmp r5, #0
	bne _0800E998
_0800EA24:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0800EA34:
	.4byte gUnknown_0201EE54
	THUMB_FUNC_END sub_0800E950

	THUMB_FUNC_START sub_0800EA38
sub_0800EA38: @ 0x0800EA38
	push {r4,lr}
	ldr r3, _0800EA94  @ =gUnknown_0201EF00
	ldrb r0, [r3]
	cmp r0, #1
	bls _0800EA8E
	mov r0, #3
	ldrsb r0, [r3, r0]
	add r4, r3, #0
	add r4, r4, #8
	add r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #2
	bhi _0800EA8E
	ldr r0, _0800EA98  @ =gUnknown_03000420
	ldrb r2, [r0, #3]
	lsl r1, r2, #3
	ldr r0, _0800EA9C  @ =gUnknown_020309C0
	add r1, r1, r0
	ldrb r0, [r1, #5]
	lsl r0, r0, #5
	ldrb r1, [r1, #4]
	add r0, r0, r1
	lsl r2, r2, #11
	lsl r0, r0, #1
	ldr r1, _0800EAA0  @ =gBG0Buffer
	add r0, r0, r1
	add r2, r2, r0
	ldrb r0, [r3, #3]
	add r1, r3, #4
	add r1, r0, r1
	add r0, r0, r4
	ldrb r0, [r0]
	lsl r0, r0, #5
	ldrb r1, [r1]
	add r0, r0, r1
	add r0, r0, #33
	lsl r0, r0, #1
	add r0, r0, r2
	mov r1, #149
	strh r1, [r0]
	add r0, r0, #64
	mov r1, #150
	strh r1, [r0]
_0800EA8E:
	pop {r4}
	pop {r0}
	bx r0
_0800EA94:
	.4byte gUnknown_0201EF00
_0800EA98:
	.4byte gUnknown_03000420
_0800EA9C:
	.4byte gUnknown_020309C0
_0800EAA0:
	.4byte gBG0Buffer
	THUMB_FUNC_END sub_0800EA38

	THUMB_FUNC_START sub_0800EAA4
sub_0800EAA4: @ 0x0800EAA4
	ldr r2, _0800EAF4  @ =gTextbox
	mov r1, #134
	lsl r1, r1, #1
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0800EAF0
	ldr r1, _0800EAF8  @ =0x0000010B
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800EAF0
	ldr r0, _0800EAFC  @ =gUnknown_03000420
	ldrb r2, [r0, #3]
	lsl r3, r2, #11
	ldr r0, _0800EB00  @ =gUnknown_020309C0
	lsl r2, r2, #3
	add r2, r2, r0
	ldrb r0, [r2, #5]
	lsl r0, r0, #5
	ldrb r1, [r2, #4]
	add r0, r0, r1
	lsl r0, r0, #1
	ldr r1, _0800EB04  @ =gBG0Buffer
	add r0, r0, r1
	add r3, r3, r0
	ldrb r0, [r2, #7]
	add r0, r0, #1
	lsl r0, r0, #5
	sub r0, r0, #2
	ldrb r2, [r2, #6]
	add r0, r0, r2
	lsl r0, r0, #1
	add r3, r3, r0
	mov r0, #151
	strh r0, [r3]
_0800EAF0:
	bx lr
	.byte 0x00
	.byte 0x00
_0800EAF4:
	.4byte gTextbox
_0800EAF8:
	.4byte 0x0000010B
_0800EAFC:
	.4byte gUnknown_03000420
_0800EB00:
	.4byte gUnknown_020309C0
_0800EB04:
	.4byte gBG0Buffer
	THUMB_FUNC_END sub_0800EAA4

	THUMB_FUNC_START sub_0800EB08
sub_0800EB08: @ 0x0800EB08
	push {lr}
	cmp r0, #1
	beq _0800EB20
	cmp r0, #1
	bcc _0800EB18
	cmp r0, #2
	beq _0800EB38
	b _0800EB44
_0800EB18:
	ldr r0, _0800EB1C  @ =0x0600D300
	b _0800EB22
_0800EB1C:
	.4byte 0x0600D300
_0800EB20:
	ldr r0, _0800EB30  @ =0x0600D980
_0800EB22:
	ldr r1, _0800EB34  @ =gUnknown_02002490
	mov r2, #208
	lsl r2, r2, #3
	bl 0x080009F4
	b _0800EB44
	.byte 0x00
	.byte 0x00
_0800EB30:
	.4byte 0x0600D980
_0800EB34:
	.4byte gUnknown_02002490
_0800EB38:
	ldr r0, _0800EB48  @ =0x0600CD40
	ldr r1, _0800EB4C  @ =gUnknown_02002B90
	mov r2, #152
	lsl r2, r2, #3
	bl 0x080009F4
_0800EB44:
	pop {r0}
	bx r0
_0800EB48:
	.4byte 0x0600CD40
_0800EB4C:
	.4byte gUnknown_02002B90
	THUMB_FUNC_END sub_0800EB08

	THUMB_FUNC_START sub_0800EB50
sub_0800EB50: @ 0x0800EB50
	push {r4,r5,lr}
	add r3, r0, #0
	add r5, r1, #0
	mov r0, #135
	lsl r0, r0, #1
	add r2, r3, r0
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r5
	cmp r1, r0
	beq _0800EBBA
	mov r0, #128
	add r1, r5, #0
	orr r1, r1, r0
	strb r1, [r2]
	ldrb r0, [r3, #27]
	cmp r0, #2
	beq _0800EB98
	ldr r1, _0800EB8C  @ =0x03000030
	lsl r0, r5, #8
	ldr r2, _0800EB90  @ =0x000AE6FC
	add r0, r0, r2
	ldr r1, [r1]
	add r1, r1, r0
	ldr r0, _0800EB94  @ =0x0600D200
	mov r2, #128
	lsl r2, r2, #1
	bl 0x080009F4
	b _0800EBBA
_0800EB8C:
	.4byte 0x03000030
_0800EB90:
	.4byte 0x000AE6FC
_0800EB94:
	.4byte 0x0600D200
_0800EB98:
	ldr r0, _0800EBC0  @ =0x0600CCE0
	ldr r4, _0800EBC4  @ =0x03000030
	ldr r1, [r4]
	ldr r2, _0800EBC8  @ =0x000AEAFC
	add r1, r1, r2
	mov r2, #96
	bl 0x080009F4
	lsl r0, r5, #7
	ldr r1, _0800EBCC  @ =0x000AEB5C
	add r0, r0, r1
	ldr r1, [r4]
	add r1, r1, r0
	ldr r0, _0800EBD0  @ =0x0600CC60
	mov r2, #128
	bl 0x080009F4
_0800EBBA:
	pop {r4,r5}
	pop {r0}
	bx r0
_0800EBC0:
	.4byte 0x0600CCE0
_0800EBC4:
	.4byte 0x03000030
_0800EBC8:
	.4byte 0x000AEAFC
_0800EBCC:
	.4byte 0x000AEB5C
_0800EBD0:
	.4byte 0x0600CC60
	THUMB_FUNC_END sub_0800EB50

	THUMB_FUNC_START sub_0800EBD4
sub_0800EBD4: @ 0x0800EBD4
	push {r4,lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r1, r4, #0
	add r1, r1, #216
	bl sub_0800EC08
	ldr r0, [r4, #12]
	add r1, r4, #0
	add r1, r1, #224
	bl sub_0800EC08
	ldr r0, [r4, #16]
	add r1, r4, #0
	add r1, r1, #232
	bl sub_0800EC08
	ldr r0, [r4, #20]
	add r1, r4, #0
	add r1, r1, #240
	bl sub_0800EC08
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800EBD4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800EC08
sub_0800EC08: @ 0x0800EC08
	push {r4-r6,lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _0800EC24  @ =0x000F423F
	cmp r5, r0
	bls _0800EC30
	ldr r0, _0800EC28  @ =0x0098967F
	cmp r5, r0
	bls _0800EC1C
	add r5, r0, #0
_0800EC1C:
	ldr r1, _0800EC2C  @ =gUnknown_0202E150
	mov r0, #7
	b _0800EC90
	.byte 0x00
	.byte 0x00
_0800EC24:
	.4byte 0x000F423F
_0800EC28:
	.4byte 0x0098967F
_0800EC2C:
	.4byte gUnknown_0202E150
_0800EC30:
	ldr r0, _0800EC3C  @ =0x0001869F
	cmp r5, r0
	bls _0800EC44
	ldr r1, _0800EC40  @ =gUnknown_0202E150
	mov r0, #6
	b _0800EC90
_0800EC3C:
	.4byte 0x0001869F
_0800EC40:
	.4byte gUnknown_0202E150
_0800EC44:
	ldr r0, _0800EC50  @ =0x0000270F
	cmp r5, r0
	bls _0800EC58
	ldr r1, _0800EC54  @ =gUnknown_0202E150
	mov r0, #5
	b _0800EC90
_0800EC50:
	.4byte 0x0000270F
_0800EC54:
	.4byte gUnknown_0202E150
_0800EC58:
	ldr r0, _0800EC64  @ =0x000003E7
	cmp r5, r0
	bls _0800EC6C
	ldr r1, _0800EC68  @ =gUnknown_0202E150
	mov r0, #4
	b _0800EC90
_0800EC64:
	.4byte 0x000003E7
_0800EC68:
	.4byte gUnknown_0202E150
_0800EC6C:
	cmp r5, #99
	bls _0800EC7C
	ldr r1, _0800EC78  @ =gUnknown_0202E150
	mov r0, #3
	b _0800EC90
	.byte 0x00
	.byte 0x00
_0800EC78:
	.4byte gUnknown_0202E150
_0800EC7C:
	cmp r5, #9
	bls _0800EC8C
	ldr r1, _0800EC88  @ =gUnknown_0202E150
	mov r0, #2
	b _0800EC90
	.byte 0x00
	.byte 0x00
_0800EC88:
	.4byte gUnknown_0202E150
_0800EC8C:
	ldr r1, _0800ECA8  @ =gUnknown_0202E150
	mov r0, #1
_0800EC90:
	str r0, [r1]
	add r6, r1, #0
	ldr r0, [r6]
	sub r0, r0, #2
	cmp r0, #5
	bhi _0800ED50
	lsl r0, r0, #2
	ldr r1, _0800ECAC  @ =0x0800ECB0
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0800ECA8:
	.4byte gUnknown_0202E150
_0800ECAC:
	.4byte 0x0800ECB0
	.4byte _0800ED3A
	.4byte _0800ED22
	.4byte _0800ED0A
	.4byte _0800ECF4
	.4byte _0800ECDE
	.4byte _0800ECC8
_0800ECC8:
	ldr r1, _0800ED6C  @ =0x00989680
	add r0, r5, #0
	bl __umodsi3
	ldr r1, _0800ED70  @ =0x000F4240
	bl __udivsi3
	mov r1, #48
	orr r0, r0, r1
	strb r0, [r4]
	add r4, r4, #1
_0800ECDE:
	ldr r1, _0800ED70  @ =0x000F4240
	add r0, r5, #0
	bl __umodsi3
	ldr r1, _0800ED74  @ =0x000186A0
	bl __udivsi3
	mov r1, #48
	orr r0, r0, r1
	strb r0, [r4]
	add r4, r4, #1
_0800ECF4:
	ldr r1, _0800ED74  @ =0x000186A0
	add r0, r5, #0
	bl __umodsi3
	ldr r1, _0800ED78  @ =0x00002710
	bl __udivsi3
	mov r1, #48
	orr r0, r0, r1
	strb r0, [r4]
	add r4, r4, #1
_0800ED0A:
	ldr r1, _0800ED78  @ =0x00002710
	add r0, r5, #0
	bl __umodsi3
	mov r1, #250
	lsl r1, r1, #2
	bl __udivsi3
	mov r1, #48
	orr r0, r0, r1
	strb r0, [r4]
	add r4, r4, #1
_0800ED22:
	mov r1, #250
	lsl r1, r1, #2
	add r0, r5, #0
	bl __umodsi3
	mov r1, #100
	bl __udivsi3
	mov r1, #48
	orr r0, r0, r1
	strb r0, [r4]
	add r4, r4, #1
_0800ED3A:
	add r0, r5, #0
	mov r1, #100
	bl __umodsi3
	mov r1, #10
	bl __udivsi3
	mov r1, #48
	orr r0, r0, r1
	strb r0, [r4]
	add r4, r4, #1
_0800ED50:
	add r0, r5, #0
	mov r1, #10
	bl __umodsi3
	mov r1, #48
	orr r0, r0, r1
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #1]
	ldr r0, [r6]
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0800ED6C:
	.4byte 0x00989680
_0800ED70:
	.4byte 0x000F4240
_0800ED74:
	.4byte 0x000186A0
_0800ED78:
	.4byte 0x00002710
	THUMB_FUNC_END sub_0800EC08

	THUMB_FUNC_START sub_0800ED7C
sub_0800ED7C: @ 0x0800ED7C
	push {r4,lr}
	lsl r2, r1, #16
	lsr r3, r2, #16
	strh r3, [r0, #6]
	ldr r4, _0800EDB0  @ =gUnknown_08427444
	ldr r1, _0800EDB4  @ =gUnknown_0202A8C0
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r4
	ldr r1, [r1]
	lsr r2, r2, #24
	lsl r2, r2, #2
	add r2, r2, r1
	ldr r2, [r2]
	add r1, r1, r2
	lsl r3, r3, #24
	lsr r3, r3, #22
	add r3, r3, r1
	ldr r2, [r3]
	add r1, r1, r2
	bl sub_0800EDB8
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0800EDB0:
	.4byte gUnknown_08427444
_0800EDB4:
	.4byte gUnknown_0202A8C0
	THUMB_FUNC_END sub_0800ED7C

	THUMB_FUNC_START sub_0800EDB8
sub_0800EDB8: @ 0x0800EDB8
	add r2, r0, #0
	add r3, r1, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800EDD0
	ldrb r0, [r2, #2]
	cmp r0, #6
	bls _0800EDCC
	mov r0, #0
	b _0800EDE0
_0800EDCC:
	add r0, r0, #1
	strb r0, [r2, #2]
_0800EDD0:
	ldrb r0, [r2, #2]
	lsl r0, r0, #2
	add r1, r2, #0
	add r1, r1, #32
	add r1, r1, r0
	str r3, [r1]
	mov r0, #1
	strb r0, [r2]
_0800EDE0:
	bx lr
	THUMB_FUNC_END sub_0800EDB8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800EDE4
sub_0800EDE4: @ 0x0800EDE4
	push {lr}
	add r0, r0, #24
	bl sub_0800EDF0
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800EDE4

	THUMB_FUNC_START sub_0800EDF0
sub_0800EDF0: @ 0x0800EDF0
	add r1, r0, #0
	ldrb r0, [r1, #2]
	add r2, r0, #0
	cmp r2, #0
	beq _0800EE02
	sub r0, r0, #1
	strb r0, [r1, #2]
	mov r0, #1
	b _0800EE06
_0800EE02:
	strb r2, [r1]
	mov r0, #0
_0800EE06:
	bx lr
	THUMB_FUNC_END sub_0800EDF0

	THUMB_FUNC_START sub_0800EE08
sub_0800EE08: @ 0x0800EE08
	add r2, r0, #0
	ldrb r1, [r2, #24]
	ldrb r0, [r2, #26]
	orr r0, r0, r1
	cmp r0, #0
	beq _0800EE26
	ldrb r0, [r2, #26]
	lsl r0, r0, #2
	add r2, r2, #56
	add r2, r2, r0
	ldr r1, [r2]
	ldrb r0, [r1]
	add r1, r1, #1
	str r1, [r2]
	b _0800EE28
_0800EE26:
	mov r0, #0
_0800EE28:
	bx lr
	THUMB_FUNC_END sub_0800EE08

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800EE2C
sub_0800EE2C: @ 0x0800EE2C
	add r2, r0, #0
	ldrb r1, [r2]
	ldrb r0, [r2, #2]
	orr r0, r0, r1
	cmp r0, #0
	beq _0800EE4A
	ldrb r0, [r2, #2]
	lsl r0, r0, #2
	add r2, r2, #32
	add r2, r2, r0
	ldr r1, [r2]
	ldrb r0, [r1]
	add r1, r1, #1
	str r1, [r2]
	b _0800EE4C
_0800EE4A:
	mov r0, #0
_0800EE4C:
	bx lr
	THUMB_FUNC_END sub_0800EE2C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800EE50
sub_0800EE50: @ 0x0800EE50
	push {r4,lr}
	lsl r0, r0, #16
	lsr r3, r0, #24
	mov r1, #7
	and r3, r3, r1
	lsl r0, r0, #8
	lsr r4, r0, #24
	cmp r3, #1
	bne _0800EE78
	ldr r0, _0800EE74  @ =gUnknown_0202A8C0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800EE88
	cmp r4, #128
	bls _0800EE88
	mov r3, #0
	b _0800EE88
	.byte 0x00
	.byte 0x00
_0800EE74:
	.4byte gUnknown_0202A8C0
_0800EE78:
	cmp r3, #1
	blt _0800EE88
	cmp r3, #4
	bgt _0800EE88
	cmp r3, #3
	blt _0800EE88
	lsl r0, r4, #17
	lsr r4, r0, #16
_0800EE88:
	ldr r2, _0800EEA0  @ =0x03000030
	ldr r0, _0800EEA4  @ =gUnknown_08427460
	lsl r1, r3, #2
	add r1, r1, r0
	ldr r0, [r2]
	ldr r1, [r1]
	add r0, r0, r1
	lsl r1, r4, #6
	add r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
_0800EEA0:
	.4byte 0x03000030
_0800EEA4:
	.4byte gUnknown_08427460
	THUMB_FUNC_END sub_0800EE50

	THUMB_FUNC_START sub_0800EEA8
sub_0800EEA8: @ 0x0800EEA8
	push {r4,lr}
	mov r2, #0
	ldr r3, _0800EEC8  @ =gUnknown_0202D0E0
	mov r4, #1
_0800EEB0:
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r1, [r0]
	cmp r1, #0
	bne _0800EECC
	str r1, [r0, #8]
	str r1, [r0, #4]
	str r1, [r0]
	strb r4, [r0]
	b _0800EED8
_0800EEC8:
	.4byte gUnknown_0202D0E0
_0800EECC:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #3
	bls _0800EEB0
	mov r0, #0
_0800EED8:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800EEA8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800EEE0
sub_0800EEE0: @ 0x0800EEE0
	push {r4,lr}
	add r1, r0, #0
	mov r2, #0
	ldr r4, _0800EF00  @ =gUnknown_0202D0E0
	mov r3, #0
_0800EEEA:
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	cmp r0, r1
	bne _0800EF04
	str r3, [r1, #8]
	str r3, [r1, #4]
	str r3, [r1]
	b _0800EF0E
	.byte 0x00
	.byte 0x00
_0800EF00:
	.4byte gUnknown_0202D0E0
_0800EF04:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #3
	bls _0800EEEA
_0800EF0E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800EEE0

	THUMB_FUNC_START sub_0800EF14
sub_0800EF14: @ 0x0800EF14
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #2]
	ldrb r2, [r4, #3]
	cmp r0, r2
	bls _0800EF2C
	add r0, r4, #0
	bl sub_0800F0A0
	ldrb r0, [r4, #3]
	add r0, r0, #8
	strb r0, [r4, #3]
_0800EF2C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800EF14

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800EF34
sub_0800EF34: @ 0x0800EF34
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r7, r0, #0
	add r6, r1, #0
	ldrb r0, [r7, #2]
	ldrb r1, [r7, #3]
	cmp r0, r1
	bhi _0800EF48
	b _0800F08E
_0800EF48:
	ldr r0, [r6]
	bl sub_0800F190
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #2
	bne _0800EF58
	b _0800F08E
_0800EF58:
	ldr r2, _0800EF7C  @ =gUnknown_0202E158
	mov r8, r2
	ldrb r0, [r7, #3]
	mov r4, #7
	add r1, r4, #0
	and r1, r1, r0
	ldrb r0, [r2, #1]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r5, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	blt _0800EF80
	neg r0, r5
	orr r0, r0, r5
	lsr r0, r0, #31
	b _0800EF9E
	.byte 0x00
	.byte 0x00
_0800EF7C:
	.4byte gUnknown_0202E158
_0800EF80:
	bl sub_0800B830
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldrb r1, [r7, #3]
	add r0, r4, #0
	and r0, r0, r1
	mov r1, r8
	ldrb r1, [r1, #3]
	add r0, r0, r1
	mov r1, #3
	cmp r0, #8
	bgt _0800EF9C
	mov r1, #2
_0800EF9C:
	add r0, r1, #0
_0800EF9E:
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #2
	beq _0800EFE4
	cmp r0, #2
	bgt _0800EFB0
	cmp r0, #1
	beq _0800EFB6
	b _0800F07C
_0800EFB0:
	cmp r0, #3
	beq _0800F014
	b _0800F07C
_0800EFB6:
	lsl r0, r5, #26
	lsr r5, r0, #24
	mov r2, #16
	ldr r0, _0800EFDC  @ =gUnknown_0202E160
	mov r8, r0
	mov r4, r8
	ldr r3, _0800EFE0  @ =gUnknown_0202E158
_0800EFC4:
	ldm r6!, {r0}
	ldr r1, [r3, #4]
	and r0, r0, r1
	lsr r0, r0, r5
	stm r4!, {r0}
	sub r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _0800EFC4
	mov r6, r8
	b _0800F07C
_0800EFDC:
	.4byte gUnknown_0202E160
_0800EFE0:
	.4byte gUnknown_0202E158
_0800EFE4:
	lsl r0, r5, #26
	lsr r5, r0, #24
	mov r2, #16
	ldr r1, _0800F00C  @ =gUnknown_0202E160
	mov r8, r1
	mov r4, r8
	ldr r3, _0800F010  @ =gUnknown_0202E158
_0800EFF2:
	ldm r6!, {r0}
	ldr r1, [r3, #4]
	and r0, r0, r1
	lsl r0, r0, r5
	stm r4!, {r0}
	sub r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _0800EFF2
	mov r6, r8
	b _0800F07C
	.byte 0x00
	.byte 0x00
_0800F00C:
	.4byte gUnknown_0202E160
_0800F010:
	.4byte gUnknown_0202E158
_0800F014:
	ldrb r0, [r7, #3]
	mov r1, #7
	and r1, r1, r0
	mov r0, #8
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r2, _0800F098  @ =gUnknown_0202E158
	ldrb r1, [r2, #1]
	add r1, r3, r1
	ldrb r0, [r2, #3]
	sub r0, r0, r3
	strb r0, [r2, #3]
	lsl r0, r5, #26
	lsr r5, r0, #24
	lsl r1, r1, #26
	lsr r1, r1, #24
	mov r12, r1
	mov r3, #16
	ldr r0, _0800F09C  @ =gUnknown_0202E160
	mov r8, r0
	mov r4, r8
_0800F040:
	ldr r0, [r6]
	ldr r1, [r2, #4]
	and r0, r0, r1
	lsl r0, r0, r5
	str r0, [r4]
	ldm r6!, {r0}
	ldr r1, [r2, #4]
	and r0, r0, r1
	mov r1, r12
	lsr r0, r0, r1
	str r0, [r4, #64]
	add r4, r4, #4
	sub r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #0
	bne _0800F040
	add r0, r7, #0
	mov r1, r8
	bl sub_0800F0A0
	mov r6, r8
	add r6, r6, #64
	ldrb r0, [r7, #3]
	add r0, r0, #7
	mov r2, #8
	neg r2, r2
	add r1, r2, #0
	and r0, r0, r1
	strb r0, [r7, #3]
_0800F07C:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0800F0A0
	ldr r0, _0800F098  @ =gUnknown_0202E158
	ldrb r0, [r0, #3]
	ldrb r1, [r7, #3]
	add r0, r0, r1
	strb r0, [r7, #3]
_0800F08E:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0800F098:
	.4byte gUnknown_0202E158
_0800F09C:
	.4byte gUnknown_0202E160
	THUMB_FUNC_END sub_0800EF34

	THUMB_FUNC_START sub_0800F0A0
sub_0800F0A0: @ 0x0800F0A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r4, r1, #0
	ldr r2, _0800F0FC  @ =gUnknown_08427474
	ldrb r1, [r0, #4]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r5, [r1]
	ldrb r2, [r0, #3]
	lsr r1, r2, #3
	lsl r1, r1, #6
	ldr r0, [r0, #8]
	add r3, r0, r1
	mov r0, #7
	and r2, r2, r0
	lsl r2, r2, #24
	lsr r0, r2, #24
	cmp r0, #0
	bne _0800F100
	mov r2, #64
	mov r7, #15
	mov r6, #15
_0800F0D4:
	ldrb r0, [r4]
	add r4, r4, #1
	add r1, r0, #0
	and r1, r1, r6
	add r1, r5, r1
	lsr r0, r0, #4
	and r0, r0, r7
	add r0, r0, r5
	ldrb r1, [r1]
	ldrb r0, [r0, #16]
	orr r1, r1, r0
	strb r1, [r3]
	add r3, r3, #1
	sub r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _0800F0D4
	b _0800F17E
	.byte 0x00
	.byte 0x00
_0800F0FC:
	.4byte gUnknown_08427474
_0800F100:
	mov r6, #16
	lsr r2, r2, #25
	mov r8, r2
	add r1, r0, #1
	mov r2, #1
	mov r9, r2
	and r2, r2, r0
	mov r9, r2
	mov r0, #14
	and r1, r1, r0
	lsl r1, r1, #24
	mov r10, r1
_0800F118:
	add r4, r4, r8
	add r3, r3, r8
	mov r0, r9
	cmp r0, #0
	beq _0800F13C
	ldrb r0, [r4]
	add r4, r4, #1
	ldrb r2, [r3]
	mov r1, #15
	and r1, r1, r2
	lsr r0, r0, #4
	mov r2, #15
	and r0, r0, r2
	add r0, r0, r5
	ldrb r0, [r0, #16]
	orr r1, r1, r0
	strb r1, [r3]
	add r3, r3, #1
_0800F13C:
	mov r0, r10
	lsr r2, r0, #24
	sub r6, r6, #1
	str r6, [sp]
	cmp r2, #7
	bhi _0800F174
	mov r1, #15
	mov r12, r1
	mov r7, #15
_0800F14E:
	ldrb r0, [r4]
	add r4, r4, #1
	add r1, r0, #0
	and r1, r1, r7
	add r1, r5, r1
	lsr r0, r0, #4
	mov r6, r12
	and r0, r0, r6
	add r0, r0, r5
	ldrb r1, [r1]
	ldrb r0, [r0, #16]
	orr r1, r1, r0
	strb r1, [r3]
	add r3, r3, #1
	add r0, r2, #2
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #7
	bls _0800F14E
_0800F174:
	ldr r1, [sp]
	lsl r0, r1, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _0800F118
_0800F17E:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800F0A0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800F190
sub_0800F190: @ 0x0800F190
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r1, _0800F1B0  @ =gUnknown_0202E158
	mov r0, #0
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1]
	mov r0, #8
	strb r0, [r1, #3]
	sub r0, r0, #9
	str r0, [r1, #4]
	add r5, r1, #0
	cmp r4, r0
	bne _0800F1B4
	mov r0, #2
	b _0800F222
_0800F1B0:
	.4byte gUnknown_0202E158
_0800F1B4:
	mov r1, #15
	add r0, r4, #0
	and r0, r0, r1
	cmp r1, r0
	bne _0800F1D2
	add r6, r5, #0
	mov r3, #0
_0800F1C2:
	add r2, r3, #1
	add r3, r2, #0
	lsl r1, r1, #4
	add r0, r1, #0
	and r0, r0, r4
	cmp r1, r0
	beq _0800F1C2
	strb r2, [r6, #1]
_0800F1D2:
	mov r1, #240
	lsl r1, r1, #24
	add r0, r4, #0
	and r0, r0, r1
	cmp r1, r0
	bne _0800F1F2
	ldr r6, _0800F21C  @ =gUnknown_0202E158
	ldrb r3, [r6, #2]
_0800F1E2:
	add r2, r3, #1
	add r3, r2, #0
	lsr r1, r1, #4
	add r0, r1, #0
	and r0, r0, r4
	cmp r1, r0
	beq _0800F1E2
	strb r2, [r6, #2]
_0800F1F2:
	ldrb r1, [r5, #1]
	ldrb r0, [r5, #2]
	add r1, r1, r0
	cmp r1, #0
	beq _0800F220
	ldrb r0, [r5, #3]
	sub r0, r0, r1
	strb r0, [r5, #3]
	ldrb r0, [r5, #1]
	lsl r0, r0, #2
	mov r1, #1
	neg r1, r1
	add r2, r1, #0
	lsl r2, r2, r0
	ldrb r0, [r5, #2]
	lsl r0, r0, #2
	lsr r1, r1, r0
	and r2, r2, r1
	str r2, [r5, #4]
	mov r0, #0
	b _0800F224
_0800F21C:
	.4byte gUnknown_0202E158
_0800F220:
	mov r0, #1
_0800F222:
	strb r0, [r5]
_0800F224:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800F190

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800F22C
sub_0800F22C: @ 0x0800F22C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	add r5, r0, #0
_0800F236:
	mov r6, #0
	add r0, r5, #0
	bl sub_0800EE2C
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #15
	bls _0800F248
	b _0800F3EA
_0800F248:
	lsl r0, r4, #2
	ldr r1, _0800F254  @ =0x0800F258
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0800F254:
	.4byte 0x0800F258
	.4byte _0800F2A6
	.4byte _0800F3F4
	.4byte _0800F2B4
	.4byte _0800F2E4
	.4byte _0800F3F4
	.4byte _0800F3F4
	.4byte _0800F3F4
	.4byte _0800F298
	.4byte _0800F3F4
	.4byte _0800F3F4
	.4byte _0800F3F4
	.4byte _0800F3F4
	.4byte _0800F308
	.4byte _0800F398
	.4byte _0800F3B8
	.4byte _0800F3CC
_0800F298:
	add r0, r5, #0
	bl sub_0800EE2C
	mov r1, #127
	and r1, r1, r0
	strb r1, [r5, #4]
	b _0800F3F4
_0800F2A6:
	add r0, r5, #0
	bl sub_0800EDF0
	cmp r0, #0
	bne _0800F2B2
	b _0800F3F4
_0800F2B2:
	b _0800F236
_0800F2B4:
	add r0, r5, #0
	bl sub_0800EE2C
	mov r4, #127
	and r4, r4, r0
	strb r4, [r5, #4]
	cmp r4, #3
	bgt _0800F2E0
	cmp r4, #0
	blt _0800F2E0
	ldr r1, [r5, #12]
	cmp r1, #0
	beq _0800F236
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _0800F2D8
	lsl r0, r4, #3
	add r1, r1, r0
_0800F2D8:
	add r0, r5, #0
	bl sub_0800EDB8
	b _0800F236
_0800F2E0:
	mov r0, #2
	b _0800F3FC
_0800F2E4:
	add r0, r5, #0
	bl sub_0800EE2C
	mov r4, #127
	and r4, r4, r0
	ldrh r1, [r5, #6]
	mov r0, #255
	lsl r0, r0, #8
	and r0, r0, r1
	orr r4, r4, r0
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #2]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0800ED7C
	b _0800F236
_0800F308:
	add r0, r5, #0
	bl sub_0800EE2C
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsr r6, r0, #28
	mov r0, #15
	and r4, r4, r0
	mov r7, #0
	sub r0, r4, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r0, _0800F390  @ =0x0000FFFF
	add r3, r5, #0
	add r3, r3, #16
	cmp r4, r0
	beq _0800F34C
	mov r8, r0
_0800F32C:
	add r0, r5, #0
	str r3, [sp]
	bl sub_0800EE2C
	add r2, r7, #0
	add r1, r2, #1
	lsl r1, r1, #24
	lsr r7, r1, #24
	ldr r3, [sp]
	add r2, r3, r2
	strb r0, [r2]
	sub r0, r4, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, r8
	bne _0800F32C
_0800F34C:
	add r0, r3, r7
	mov r1, #0
	strb r1, [r0]
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _0800F35A
	b _0800F236
_0800F35A:
	lsl r0, r6, #16
	ldr r1, _0800F394  @ =0xFFFF0000
	add r0, r0, r1
	lsr r6, r0, #16
	asr r0, r0, #16
	mov r1, #1
	neg r1, r1
	cmp r0, r1
	beq _0800F386
	add r4, r1, #0
_0800F36E:
	add r0, r5, #0
	str r3, [sp]
	bl sub_0800EE2C
	lsl r0, r6, #16
	ldr r2, _0800F394  @ =0xFFFF0000
	add r0, r0, r2
	lsr r6, r0, #16
	asr r0, r0, #16
	ldr r3, [sp]
	cmp r0, r4
	bne _0800F36E
_0800F386:
	add r0, r5, #0
	add r1, r3, #0
	bl sub_0800EDB8
	b _0800F236
_0800F390:
	.4byte 0x0000FFFF
_0800F394:
	.4byte 0xFFFF0000
_0800F398:
	add r0, r5, #0
	bl sub_0800EE2C
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, #192
	and r0, r0, r4
	lsl r0, r0, #6
	mov r2, #128
	lsl r2, r2, #3
	add r1, r2, #0
	orr r0, r0, r1
	mov r1, #63
	and r4, r4, r1
	orr r4, r4, r0
	b _0800F3F4
_0800F3B8:
	add r0, r5, #0
	bl sub_0800EE2C
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r1, #192
	lsl r1, r1, #2
	add r0, r1, #0
	orr r4, r4, r0
	b _0800F3F4
_0800F3CC:
	add r0, r5, #0
	bl sub_0800EE2C
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r2, #128
	lsl r2, r2, #1
	add r0, r2, #0
	orr r4, r4, r0
	mov r0, #192
	lsl r0, r0, #1
	cmp r4, r0
	bls _0800F3EA
	mov r0, #127
	and r4, r4, r0
_0800F3EA:
	mov r1, #128
	lsl r1, r1, #1
	add r0, r4, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
_0800F3F4:
	cmp r6, #0
	beq _0800F3FA
	b _0800F236
_0800F3FA:
	add r0, r4, #0
_0800F3FC:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800F22C

	THUMB_FUNC_START sub_0800F408
sub_0800F408: @ 0x0800F408
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #68
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp, #64]
	ldr r2, _0800F430  @ =0x04000010
	mov r1, sp
	bl CpuSet
	mov r0, #0
	mov r10, r0
	mov r9, r0
	mov r8, r0
_0800F42A:
	mov r6, #0
	b _0800F460
	.byte 0x00
	.byte 0x00
_0800F430:
	.4byte 0x04000010
_0800F434:
	add r0, r5, #0
	bl sub_0800EE50
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0800F190
	ldr r7, _0800F484  @ =gUnknown_0202E158
	ldrb r0, [r7, #3]
	add r0, r6, r0
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r1, _0800F488  @ =0x000002FF
	cmp r5, r1
	bls _0800F460
	ldr r0, [r4, #64]
	bl sub_0800F190
	ldrb r0, [r7, #3]
	add r0, r6, r0
	lsl r0, r0, #16
	lsr r6, r0, #16
_0800F460:
	mov r0, sp
	bl sub_0800F22C
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #15
	bhi _0800F434
	cmp r6, r8
	bls _0800F474
	mov r8, r6
_0800F474:
	cmp r6, #0
	beq _0800F48C
	mov r0, r9
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	b _0800F496
_0800F484:
	.4byte gUnknown_0202E158
_0800F488:
	.4byte 0x000002FF
_0800F48C:
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
_0800F496:
	ldr r2, [sp, #64]
	cmp r2, #0
	beq _0800F4B0
	cmp r5, #0
	bne _0800F42A
	mov r1, r10
	lsl r0, r1, #24
	mov r2, r9
	lsl r1, r2, #16
	orr r0, r0, r1
	mov r1, r8
	orr r0, r0, r1
	b _0800F4B2
_0800F4B0:
	mov r0, r8
_0800F4B2:
	add sp, sp, #68
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800F408

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800F4C4
sub_0800F4C4: @ 0x0800F4C4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #96
	add r5, r1, #0
	lsl r0, r0, #16
	lsr r7, r0, #16
	bl sub_0800EEA8
	mov r10, r0
	cmp r0, #0
	bne _0800F4E4
	mov r0, #0
	b _0800F67A
_0800F4E4:
	add r4, sp, #64
	ldr r2, _0800F508  @ =0x04000006
	add r0, r5, #0
	add r1, r4, #0
	bl CpuSet
	ldr r0, [r4, #12]
	str r0, [sp, #12]
	mov r0, #0
	str r0, [sp]
	mov r9, r4
	cmp r7, #0
	beq _0800F50C
	mov r0, sp
	add r1, r7, #0
	bl sub_0800ED7C
	b _0800F516
_0800F508:
	.4byte 0x04000006
_0800F50C:
	ldr r0, _0800F5B0  @ =gUnknown_020309D0
	ldr r1, [r0]
	mov r0, sp
	bl sub_0800EDB8
_0800F516:
	mov r0, r9
	ldrb r1, [r0, #18]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0800F524
	b _0800F638
_0800F524:
	mov r0, #14
	and r0, r0, r1
	lsl r6, r0, #7
	ldr r0, _0800F5B4  @ =0x03000030
	ldr r2, _0800F5B8  @ =0x000AE6FC
	add r1, r6, r2
	ldr r0, [r0]
	add r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #4]
	mov r2, #40
	bl CpuFastSet
	ldr r1, _0800F5BC  @ =gUnknown_08137E5C
	mov r2, r9
	ldrb r0, [r2, #21]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #88]
	add r0, sp, #88
	ldr r1, [r2, #4]
	add r1, r1, #160
	ldr r2, _0800F5C0  @ =0x01000008
	bl CpuFastSet
	mov r1, r9
	ldr r0, [r1, #4]
	add r0, r0, #192
	str r0, [r1, #4]
	mov r0, sp
	mov r1, #1
	bl sub_0800F408
	add r6, r0, #0
	asr r1, r6, #24
	mov r2, r9
	ldrb r0, [r2, #20]
	mul r1, r0, r1
	asr r0, r6, #16
	lsl r0, r0, #24
	lsr r0, r0, #23
	add r1, r1, r0
	str r1, [sp, #92]
	lsl r0, r6, #16
	lsr r6, r0, #16
	ldrb r0, [r2, #23]
	cmp r0, r6
	bge _0800F588
	add r6, r0, #0
_0800F588:
	add r0, r6, #7
	cmp r0, #0
	bge _0800F590
	add r0, r0, #7
_0800F590:
	asr r6, r0, #3
	ldr r7, [sp, #64]
	add r0, r7, #0
	add r0, r0, #64
	str r0, [sp, #64]
	mov r1, r9
	ldrb r0, [r1, #19]
	cmp r0, #0
	beq _0800F5C4
	add r6, r6, #1
	mov r0, #254
	and r6, r6, r0
	add r0, r6, #2
	sub r7, r7, r0
	b _0800F5CA
	.byte 0x00
	.byte 0x00
_0800F5B0:
	.4byte gUnknown_020309D0
_0800F5B4:
	.4byte 0x03000030
_0800F5B8:
	.4byte 0x000AE6FC
_0800F5BC:
	.4byte gUnknown_08137E5C
_0800F5C0:
	.4byte 0x01000008
_0800F5C4:
	add r0, r7, #0
	add r0, r0, #66
	str r0, [sp, #64]
_0800F5CA:
	mov r2, r9
	ldrh r0, [r2, #16]
	ldr r1, _0800F604  @ =0x000003FF
	mov r8, r1
	mov r2, r8
	and r2, r2, r0
	mov r0, r9
	ldrb r1, [r0, #18]
	mov r0, #240
	and r0, r0, r1
	lsl r0, r0, #8
	orr r2, r2, r0
	mov r8, r2
	lsl r1, r6, #16
	asr r1, r1, #16
	ldr r2, [sp, #92]
	lsl r4, r2, #16
	asr r2, r4, #16
	add r0, r7, #0
	mov r3, r8
	bl sub_0800E80C
	lsr r4, r4, #16
	add r1, r4, #0
	add r7, r7, #2
	sub r0, r1, #1
	lsl r0, r0, #16
	b _0800F62A
	.byte 0x00
	.byte 0x00
_0800F604:
	.4byte 0x000003FF
_0800F608:
	add r1, r7, #0
	add r1, r1, #64
	add r7, r1, #0
	sub r2, r6, #1
	sub r5, r4, #1
	cmp r6, #0
	ble _0800F626
	mov r3, r8
	add r3, r3, #5
_0800F61A:
	strh r3, [r1]
	add r1, r1, #2
	add r0, r2, #0
	sub r2, r2, #1
	cmp r0, #0
	bgt _0800F61A
_0800F626:
	add r1, r4, #0
	lsl r0, r5, #16
_0800F62A:
	lsr r4, r0, #16
	cmp r1, #0
	bne _0800F608
	mov r1, r9
	ldrh r0, [r1, #16]
	add r0, r0, #6
	strh r0, [r1, #16]
_0800F638:
	mov r2, r9
	ldrb r0, [r2, #23]
	mov r1, r10
	strb r0, [r1, #2]
	ldr r0, [r2, #8]
	str r0, [r1, #8]
	ldrb r0, [r2, #22]
	strb r0, [r1, #4]
_0800F648:
	mov r0, r9
	mov r1, sp
	mov r2, r10
	bl sub_0800F68C
	lsl r0, r0, #16
	cmp r0, #0
	bne _0800F648
	mov r0, r10
	bl sub_0800EEE0
	mov r2, r9
	ldrb r1, [r2, #18]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0800F676
	lsl r1, r6, #16
	ldr r2, [sp, #92]
	lsl r0, r2, #16
	lsr r0, r0, #16
	orr r1, r1, r0
	b _0800F678
_0800F676:
	mov r1, #0
_0800F678:
	add r0, r1, #0
_0800F67A:
	add sp, sp, #96
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800F4C4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800F68C
sub_0800F68C: @ 0x0800F68C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	add r5, r0, #0
	mov r8, r1
	add r7, r2, #0
	ldr r1, _0800F6E0  @ =gUnknown_08137E5C
	ldrb r0, [r5, #21]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, [r5, #8]
	ldrb r2, [r5, #23]
	add r2, r2, #7
	mov r0, #252
	lsl r0, r0, #1
	and r2, r2, r0
	lsl r2, r2, #1
	mov r0, #128
	lsl r0, r0, #17
	orr r2, r2, r0
	mov r0, sp
	bl CpuFastSet
	mov r0, r8
	mov r1, #0
	bl sub_0800F408
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldrb r0, [r5, #19]
	cmp r0, #0
	beq _0800F6E4
	add r0, r4, #1
	asr r0, r0, #1
	mov r1, #8
	sub r1, r1, r0
	mov r0, #7
	and r0, r0, r1
	b _0800F6E6
_0800F6E0:
	.4byte gUnknown_08137E5C
_0800F6E4:
	mov r0, #0
_0800F6E6:
	strb r0, [r7, #3]
	mov r4, #0
	b _0800F6FA
_0800F6EC:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0800F7B4
	add r0, r4, r0
	lsl r0, r0, #16
	lsr r4, r0, #16
_0800F6FA:
	mov r0, r8
	bl sub_0800F22C
	lsl r0, r0, #16
	lsr r6, r0, #16
	cmp r6, #15
	bhi _0800F6EC
	cmp r4, #0
	beq _0800F74C
	ldrb r1, [r7, #3]
	add r0, r1, #7
	lsr r4, r0, #3
	ldr r3, [r5]
	ldrb r0, [r5, #19]
	cmp r0, #0
	beq _0800F722
	add r0, r4, #1
	asr r0, r0, #1
	lsl r0, r0, #1
	sub r3, r3, r0
_0800F722:
	ldrh r1, [r5, #16]
	lsl r2, r4, #24
	lsr r2, r2, #24
	add r0, r3, #0
	bl sub_0800F76C
	strh r0, [r5, #16]
	ldr r0, [r5]
	add r0, r0, #128
	str r0, [r5]
	lsl r2, r4, #22
	lsr r4, r2, #16
	ldr r0, [r5, #8]
	ldr r1, [r5, #4]
	lsr r2, r2, #18
	bl CpuFastSet
	ldr r0, [r5, #4]
	add r0, r0, r4
	str r0, [r5, #4]
	b _0800F75A
_0800F74C:
	cmp r6, #10
	bne _0800F75A
	ldrb r1, [r5, #20]
	lsl r1, r1, #6
	ldr r0, [r5]
	add r0, r0, r1
	str r0, [r5]
_0800F75A:
	lsl r0, r4, #16
	orr r0, r0, r6
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800F68C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800F76C
sub_0800F76C: @ 0x0800F76C
	push {r4,lr}
	mov r12, r0
	lsl r1, r1, #16
	lsr r3, r1, #16
	lsl r2, r2, #24
	mov r0, #255
	lsl r0, r0, #24
	add r2, r2, r0
	lsr r4, r2, #24
	cmp r4, #255
	beq _0800F7AA
_0800F782:
	add r1, r3, #0
	add r0, r1, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
	add r2, r3, #0
	mov r0, r12
	strh r1, [r0]
	mov r1, r12
	add r1, r1, #64
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
	strh r2, [r1]
	mov r0, #2
	add r12, r12, r0
	sub r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #255
	bne _0800F782
_0800F7AA:
	add r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800F76C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800F7B4
sub_0800F7B4: @ 0x0800F7B4
	push {r4-r7,lr}
	add r4, r1, #0
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	cmp r0, r1
	bhi _0800F7C8
	mov r0, #0
	b _0800F7FC
_0800F7C8:
	add r0, r6, #0
	bl sub_0800EE50
	add r5, r0, #0
	ldrb r7, [r4, #3]
	ldr r0, _0800F804  @ =0x000002FF
	cmp r6, r0
	bls _0800F7E2
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0800EF34
	add r5, r5, #64
_0800F7E2:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0800EF34
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #3]
	cmp r0, r1
	bls _0800F7F4
	strb r1, [r4, #3]
_0800F7F4:
	ldrb r0, [r4, #3]
	sub r0, r0, r7
	lsl r0, r0, #16
	lsr r0, r0, #16
_0800F7FC:
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0800F804:
	.4byte 0x000002FF
	THUMB_FUNC_END sub_0800F7B4

	.ALIGN 2, 0
