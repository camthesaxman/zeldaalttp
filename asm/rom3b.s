	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_080C382C
sub_080C382C: @ 0x080C382C
	push {lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r0, _080C3844  @ =gBow
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C3850
	cmp r1, #225
	bne _080C3848
	mov r0, #217
	b _080C3852
	.byte 0x00
	.byte 0x00
_080C3844:
	.4byte gBow
_080C3848:
	cmp r1, #226
	bne _080C3850
	mov r0, #218
	b _080C3852
_080C3850:
	add r0, r1, #0
_080C3852:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C382C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START Sprite_Inactive
Sprite_Inactive: @ 0x080C3858
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080C387C  @ =gRam
	ldr r3, _080C3880  @ =0x000009B2
	add r0, r1, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080C388C
	lsl r0, r2, #1
	ldr r2, _080C3884  @ =0x00001192
	add r1, r1, r2
	add r0, r0, r1
	ldr r1, _080C3888  @ =0x0000FFFF
	b _080C3896
	.byte 0x00
	.byte 0x00
_080C387C:
	.4byte gRam
_080C3880:
	.4byte 0x000009B2
_080C3884:
	.4byte 0x00001192
_080C3888:
	.4byte 0x0000FFFF
_080C388C:
	lsl r0, r2, #1
	ldr r3, _080C389C  @ =0x00001192
	add r1, r1, r3
	add r0, r0, r1
	mov r1, #255
_080C3896:
	strh r1, [r0]
	pop {r0}
	bx r0
_080C389C:
	.4byte 0x00001192
	THUMB_FUNC_END Sprite_Inactive

	THUMB_FUNC_START sub_080C38A0
sub_080C38A0: @ 0x080C38A0
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080CEB84
	ldr r2, _080C38D8  @ =gRam
	ldr r0, _080C38DC  @ =0x00000FA2
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080C38E0  @ =gUnknown_0817451C
	ldr r0, _080C38E4  @ =0x00000FF2
	add r2, r2, r0
	add r2, r4, r2
	ldrb r0, [r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
_080C38D8:
	.4byte gRam
_080C38DC:
	.4byte 0x00000FA2
_080C38E0:
	.4byte gUnknown_0817451C
_080C38E4:
	.4byte 0x00000FF2
	THUMB_FUNC_END sub_080C38A0

	THUMB_FUNC_START Sprite_InvertHorizSpeed
Sprite_InvertHorizSpeed: @ 0x080C38E8
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080C3900  @ =gRam
	ldr r2, _080C3904  @ =0x00000F22
	add r1, r1, r2
	add r0, r0, r1
	ldrb r1, [r0]
	mvn r1, r1
	add r1, r1, #1
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080C3900:
	.4byte gRam
_080C3904:
	.4byte 0x00000F22
	THUMB_FUNC_END Sprite_InvertHorizSpeed

	THUMB_FUNC_START Sprite_InvertVertSpeed
Sprite_InvertVertSpeed: @ 0x080C3908
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080C3920  @ =gRam
	ldr r2, _080C3924  @ =0x00000F12
	add r1, r1, r2
	add r0, r0, r1
	ldrb r1, [r0]
	mvn r1, r1
	add r1, r1, #1
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080C3920:
	.4byte gRam
_080C3924:
	.4byte 0x00000F12
	THUMB_FUNC_END Sprite_InvertVertSpeed

	THUMB_FUNC_START Sprite_SpawnThrowableTerrainSilently
Sprite_SpawnThrowableTerrainSilently: @ 0x080C3928
	push {r4,lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	mov r4, #15
	ldr r2, _080C394C  @ =gRam
_080C3932:
	ldr r3, _080C3950  @ =0x00000FA2
	add r0, r2, r3
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C3954
	lsl r4, r4, #24
	lsr r0, r4, #24
	bl sub_080C297C
	asr r4, r4, #24
	add r0, r4, #0
	b _080C395E
_080C394C:
	.4byte gRam
_080C3950:
	.4byte 0x00000FA2
_080C3954:
	sub r4, r4, #1
	cmp r4, #0
	bge _080C3932
	mov r0, #1
	neg r0, r0
_080C395E:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END Sprite_SpawnThrowableTerrainSilently

	THUMB_FUNC_START sub_080C3964
sub_080C3964: @ 0x080C3964
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080C39F8  @ =gRam
	mov r0, #161
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r2, _080C39FC  @ =0x000010F2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080C3982
	b _080C3AA4
_080C3982:
	ldr r0, _080C3A00  @ =0x000016F8
	add r7, r5, r0
	ldr r1, _080C3A04  @ =0x00001702
	add r0, r5, r1
	ldrb r1, [r7]
	ldrb r0, [r0]
	orr r0, r0, r1
	cmp r0, #0
	beq _080C3996
	b _080C3AA4
_080C3996:
	sub r2, r2, #48
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _080C39A8
	b _080C3AA4
_080C39A8:
	add r0, r4, #0
	bl sub_080C3ED0
	ldr r1, _080C3A08  @ =0x0000180C
	add r0, r5, r1
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _080C3A14
	ldr r2, _080C3A0C  @ =0x000016F6
	add r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #128
	beq _080C3A14
	bl sub_080C3C98
	ldr r0, _080C3A10  @ =0x000016EA
	add r6, r5, r0
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _080C39E0
	bl sub_080C466C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C3A1C
_080C39E0:
	add r0, r4, #0
	bl sub_080C4574
	bl sub_080C466C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080C3A14
	add r0, r4, #0
	bl sub_080C3AC8
	b _080C3AA4
_080C39F8:
	.4byte gRam
_080C39FC:
	.4byte 0x000010F2
_080C3A00:
	.4byte 0x000016F8
_080C3A04:
	.4byte 0x00001702
_080C3A08:
	.4byte 0x0000180C
_080C3A0C:
	.4byte 0x000016F6
_080C3A10:
	.4byte 0x000016EA
_080C3A14:
	add r0, r4, #0
	bl sub_080C51C8
	b _080C3AA4
_080C3A1C:
	ldr r1, _080C3AAC  @ =0x00000FF2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #106
	beq _080C3A3E
	bl GetRandomInt
	ldr r1, _080C3AB0  @ =0x00001072
	add r2, r5, r1
	add r2, r4, r2
	ldr r3, _080C3AB4  @ =gUnknown_08171E60
	mov r1, #7
	and r1, r1, r0
	add r1, r1, r3
	ldrb r0, [r1]
	strb r0, [r2]
_080C3A3E:
	bl GetRandomInt
	ldr r2, _080C3AB8  @ =gUnknown_08171E68
	mov r1, #7
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r7]
	mov r1, #24
	ldrb r0, [r6]
	sub r0, r0, #9
	lsl r0, r0, #24
	cmp r0, #0
	bge _080C3A5C
	mov r1, #32
_080C3A5C:
	add r0, r4, #0
	bl sub_080C2CB4
	ldr r2, _080C3ABC  @ =0x00001102
	add r1, r5, r2
	add r1, r4, r1
	mov r2, #150
	lsl r2, r2, #4
	add r0, r5, r2
	ldrb r0, [r0]
	neg r0, r0
	strb r0, [r1]
	ldr r0, _080C3AC0  @ =0x00001112
	add r1, r5, r0
	add r1, r4, r1
	add r2, r2, #1
	add r0, r5, r2
	ldrb r0, [r0]
	neg r0, r0
	strb r0, [r1]
	mov r1, #16
	ldrb r0, [r6]
	sub r0, r0, #9
	lsl r0, r0, #24
	cmp r0, #0
	bge _080C3A92
	mov r1, #8
_080C3A92:
	add r0, r4, #0
	bl sub_080C4378
	bl sub_080C43DC
	ldr r0, _080C3AC4  @ =0x000016F9
	add r1, r5, r0
	mov r0, #144
	strb r0, [r1]
_080C3AA4:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C3AAC:
	.4byte 0x00000FF2
_080C3AB0:
	.4byte 0x00001072
_080C3AB4:
	.4byte gUnknown_08171E60
_080C3AB8:
	.4byte gUnknown_08171E68
_080C3ABC:
	.4byte 0x00001102
_080C3AC0:
	.4byte 0x00001112
_080C3AC4:
	.4byte 0x000016F9
	THUMB_FUNC_END sub_080C3964

	THUMB_FUNC_START sub_080C3AC8
sub_080C3AC8: @ 0x080C3AC8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r5, #0
	ldr r1, _080C3BA4  @ =gRam
	ldr r2, _080C3BA8  @ =0x00000FF2
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	add r2, r1, #0
	cmp r0, #122
	beq _080C3B2A
	cmp r0, #13
	bne _080C3AEC
	ldr r0, _080C3BAC  @ =gSword
	ldrb r0, [r0]
	cmp r0, #3
	bls _080C3B2A
_080C3AEC:
	ldr r3, _080C3BA8  @ =0x00000FF2
	add r0, r2, r3
	add r0, r4, r0
	ldrb r0, [r0]
	sub r0, r0, #35
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _080C3B0A
	ldr r1, _080C3BB0  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C3B2A
_080C3B0A:
	ldr r3, _080C3BA8  @ =0x00000FF2
	add r0, r2, r3
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #141
	bne _080C3B22
	ldr r1, _080C3BB4  @ =0x00000FE2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C3B2A
_080C3B22:
	mov r5, #1
	mov r0, #0
	cmp r0, #0
	beq _080C3B56
_080C3B2A:
	ldr r3, _080C3BB8  @ =0x00000FA2
	add r0, r2, r3
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #9
	bne _080C3B5A
	ldr r1, _080C3BBC  @ =0x000017AA
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C3B56
	ldr r3, _080C3BC0  @ =0x00000FD2
	add r0, r2, r3
	add r0, r4, r0
	mov r1, #64
	strb r1, [r0]
	ldr r3, _080C3BC4  @ =0x000017F1
	add r0, r2, r3
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C3BD0
_080C3B56:
	cmp r5, #0
	beq _080C3B9C
_080C3B5A:
	mov r1, #80
	ldr r5, _080C3BA4  @ =gRam
	ldr r2, _080C3BC8  @ =0x000016EA
	add r0, r5, r2
	ldrb r0, [r0]
	sub r0, r0, #9
	lsl r0, r0, #24
	cmp r0, #0
	blt _080C3B6E
	mov r1, #64
_080C3B6E:
	add r0, r4, #0
	bl sub_080C2CB4
	ldr r3, _080C3BCC  @ =0x00001102
	add r1, r5, r3
	add r1, r4, r1
	mov r2, #150
	lsl r2, r2, #4
	add r0, r5, r2
	ldrb r0, [r0]
	neg r0, r0
	strb r0, [r1]
	add r3, r3, #16
	add r1, r5, r3
	add r1, r4, r1
	add r2, r2, #1
	add r0, r5, r2
	ldrb r0, [r0]
	neg r0, r0
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080C4080
_080C3B9C:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C3BA4:
	.4byte gRam
_080C3BA8:
	.4byte 0x00000FF2
_080C3BAC:
	.4byte gSword
_080C3BB0:
	.4byte 0x00000FC2
_080C3BB4:
	.4byte 0x00000FE2
_080C3BB8:
	.4byte 0x00000FA2
_080C3BBC:
	.4byte 0x000017AA
_080C3BC0:
	.4byte 0x00000FD2
_080C3BC4:
	.4byte 0x000017F1
_080C3BC8:
	.4byte 0x000016EA
_080C3BCC:
	.4byte 0x00001102
	THUMB_FUNC_END sub_080C3AC8

	THUMB_FUNC_START sub_080C3BD0
sub_080C3BD0: @ 0x080C3BD0
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080C3C64  @ =gRam
	ldr r1, _080C3C68  @ =0x000017AA
	add r0, r4, r1
	ldr r2, _080C3C6C  @ =0x0000180D
	add r1, r4, r2
	ldrb r2, [r0]
	ldrb r0, [r1]
	orr r0, r0, r2
	cmp r0, #0
	bne _080C3C5C
	ldr r0, _080C3C70  @ =0x000016F8
	add r1, r4, r0
	mov r0, #19
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #24
	bl sub_080C4378
	ldr r2, _080C3C74  @ =0x00001702
	add r1, r4, r2
	mov r0, #1
	strb r0, [r1]
	ldr r3, _080C3C78  @ =gUnknown_08171E70
	ldr r2, _080C3C7C  @ =gArmor
	ldr r1, _080C3C80  @ =0x00000EA5
	add r0, r4, r1
	add r0, r5, r0
	ldrb r0, [r0]
	mov r1, #15
	and r1, r1, r0
	lsl r0, r1, #1
	add r0, r0, r1
	ldrb r2, [r2]
	add r0, r0, r2
	add r0, r0, r3
	ldrb r1, [r0]
	ldr r2, _080C3C84  @ =0x00001805
	add r0, r4, r2
	strb r1, [r0]
	ldr r1, _080C3C88  @ =0x00000FF2
	add r0, r4, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #97
	bne _080C3C5C
	ldr r2, _080C3C8C  @ =0x00000F82
	add r0, r4, r2
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C3C5C
	sub r1, r1, #208
	add r0, r4, r1
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r2, _080C3C90  @ =0x000016CE
	add r1, r4, r2
	strb r0, [r1]
	ldr r1, _080C3C94  @ =0x00000F12
	add r0, r4, r1
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #1
	sub r2, r2, #1
	add r1, r4, r2
	strb r0, [r1]
_080C3C5C:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C3C64:
	.4byte gRam
_080C3C68:
	.4byte 0x000017AA
_080C3C6C:
	.4byte 0x0000180D
_080C3C70:
	.4byte 0x000016F8
_080C3C74:
	.4byte 0x00001702
_080C3C78:
	.4byte gUnknown_08171E70
_080C3C7C:
	.4byte gArmor
_080C3C80:
	.4byte 0x00000EA5
_080C3C84:
	.4byte 0x00001805
_080C3C88:
	.4byte 0x00000FF2
_080C3C8C:
	.4byte 0x00000F82
_080C3C90:
	.4byte 0x000016CE
_080C3C94:
	.4byte 0x00000F12
	THUMB_FUNC_END sub_080C3BD0

	THUMB_FUNC_START sub_080C3C98
sub_080C3C98: @ 0x080C3C98
	push {r4,r5,lr}
	ldr r0, _080C3D24  @ =gRam
	ldr r2, _080C3D28  @ =0x00001804
	add r1, r0, r2
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #0
	beq _080C3D50
	ldr r3, _080C3D2C  @ =0x000016D5
	add r0, r5, r3
	ldrb r4, [r0]
	lsr r4, r4, #1
	ldr r1, _080C3D30  @ =0x000016C4
	add r0, r5, r1
	ldrb r3, [r0]
	ldr r2, _080C3D34  @ =0x000016C5
	add r0, r5, r2
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r1, r1, #8
	ldr r0, _080C3D38  @ =gUnknown_08171E92
	add r0, r4, r0
	orr r3, r3, r1
	ldrb r0, [r0]
	add r3, r3, r0
	ldr r0, _080C3D3C  @ =gUnknown_08171E96
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r3, r3, r0
	mov r1, #182
	lsl r1, r1, #5
	add r0, r5, r1
	ldrb r2, [r0]
	add r1, r1, #1
	add r0, r5, r1
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r1, r1, #8
	ldr r0, _080C3D40  @ =gUnknown_08171E9A
	add r0, r4, r0
	orr r2, r2, r1
	ldrb r0, [r0]
	add r2, r2, r0
	ldr r0, _080C3D44  @ =gUnknown_08171E8E
	add r4, r4, r0
	ldrb r0, [r4]
	lsl r0, r0, #8
	add r2, r2, r0
	mov r1, #150
	lsl r1, r1, #4
	add r0, r5, r1
	strb r3, [r0]
	lsr r3, r3, #8
	add r1, r1, #16
	add r0, r5, r1
	strb r3, [r0]
	ldr r3, _080C3D48  @ =0x00000961
	add r0, r5, r3
	strb r2, [r0]
	lsr r2, r2, #8
	add r1, r1, #1
	add r0, r5, r1
	strb r2, [r0]
	ldr r2, _080C3D4C  @ =0x00000964
	add r0, r5, r2
	mov r1, #16
	strb r1, [r0]
	b _080C3E9E
	.byte 0x00
	.byte 0x00
_080C3D24:
	.4byte gRam
_080C3D28:
	.4byte 0x00001804
_080C3D2C:
	.4byte 0x000016D5
_080C3D30:
	.4byte 0x000016C4
_080C3D34:
	.4byte 0x000016C5
_080C3D38:
	.4byte gUnknown_08171E92
_080C3D3C:
	.4byte gUnknown_08171E96
_080C3D40:
	.4byte gUnknown_08171E9A
_080C3D44:
	.4byte gUnknown_08171E8E
_080C3D48:
	.4byte 0x00000961
_080C3D4C:
	.4byte 0x00000964
_080C3D50:
	mov r4, #0
	ldr r1, _080C3DD8  @ =0x0000178A
	add r0, r5, r1
	ldrb r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	bne _080C3E1C
	ldr r2, _080C3DDC  @ =0x0000180C
	add r0, r5, r2
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _080C3E1C
	ldr r3, _080C3DE0  @ =0x000016EA
	add r1, r5, r3
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080C3DF0
	ldr r1, _080C3DE4  @ =0x000016C4
	add r0, r5, r1
	ldrb r2, [r0]
	sub r3, r3, #37
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	sub r2, r2, #14
	sub r1, r1, #4
	add r0, r5, r1
	ldrb r1, [r0]
	sub r3, r3, #4
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	sub r1, r1, #15
	mov r3, #150
	lsl r3, r3, #4
	add r0, r5, r3
	strb r2, [r0]
	lsr r2, r2, #8
	add r3, r3, #16
	add r0, r5, r3
	strb r2, [r0]
	ldr r2, _080C3DE8  @ =0x00000961
	add r0, r5, r2
	strb r1, [r0]
	lsr r1, r1, #8
	add r3, r3, #1
	add r0, r5, r3
	strb r1, [r0]
	ldr r0, _080C3DEC  @ =0x00000964
	add r1, r5, r0
	mov r0, #44
	strb r0, [r1]
	add r2, r2, #4
	add r1, r5, r2
	mov r0, #45
	strb r0, [r1]
	b _080C3EA4
	.byte 0x00
	.byte 0x00
_080C3DD8:
	.4byte 0x0000178A
_080C3DDC:
	.4byte 0x0000180C
_080C3DE0:
	.4byte 0x000016EA
_080C3DE4:
	.4byte 0x000016C4
_080C3DE8:
	.4byte 0x00000961
_080C3DEC:
	.4byte 0x00000964
_080C3DF0:
	ldr r0, _080C3E08  @ =gUnknown_08171E9E
	ldrb r1, [r1]
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C3E0C
	mov r3, #151
	lsl r3, r3, #4
	add r1, r5, r3
	mov r0, #128
	strb r0, [r1]
	b _080C3EA4
_080C3E08:
	.4byte gUnknown_08171E9E
_080C3E0C:
	ldr r2, _080C3EAC  @ =0x000016D5
	add r0, r5, r2
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r0, r1, r0
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
_080C3E1C:
	ldr r3, _080C3EB0  @ =0x000016C4
	add r0, r5, r3
	ldrb r2, [r0]
	ldr r1, _080C3EB4  @ =0x000016C5
	add r0, r5, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	add r3, r3, #51
	add r0, r5, r3
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r1, r1, r2
	ldr r0, _080C3EB8  @ =gUnknown_08171EAB
	add r0, r4, r0
	mov r3, #0
	ldrsb r3, [r0, r3]
	add r3, r3, r1
	mov r1, #182
	lsl r1, r1, #5
	add r0, r5, r1
	ldrb r2, [r0]
	add r1, r1, #1
	add r0, r5, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r2, r2, r0
	add r1, r1, #53
	add r0, r5, r1
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r1, r1, r2
	ldr r0, _080C3EBC  @ =gUnknown_08171F2D
	add r0, r4, r0
	mov r2, #0
	ldrsb r2, [r0, r2]
	add r2, r2, r1
	mov r1, #150
	lsl r1, r1, #4
	add r0, r5, r1
	strb r3, [r0]
	lsr r3, r3, #8
	add r1, r1, #16
	add r0, r5, r1
	strb r3, [r0]
	ldr r3, _080C3EC0  @ =0x00000961
	add r0, r5, r3
	strb r2, [r0]
	lsr r2, r2, #8
	add r1, r1, #1
	add r0, r5, r1
	strb r2, [r0]
	ldr r0, _080C3EC4  @ =gUnknown_08171EEC
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r2, _080C3EC8  @ =0x00000964
	add r0, r5, r2
	strb r1, [r0]
	ldr r0, _080C3ECC  @ =gUnknown_08171F6E
	add r0, r4, r0
	ldrb r1, [r0]
_080C3E9E:
	add r3, r3, #4
	add r0, r5, r3
	strb r1, [r0]
_080C3EA4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C3EAC:
	.4byte 0x000016D5
_080C3EB0:
	.4byte 0x000016C4
_080C3EB4:
	.4byte 0x000016C5
_080C3EB8:
	.4byte gUnknown_08171EAB
_080C3EBC:
	.4byte gUnknown_08171F2D
_080C3EC0:
	.4byte 0x00000961
_080C3EC4:
	.4byte gUnknown_08171EEC
_080C3EC8:
	.4byte 0x00000964
_080C3ECC:
	.4byte gUnknown_08171F6E
	THUMB_FUNC_END sub_080C3C98

	THUMB_FUNC_START sub_080C3ED0
sub_080C3ED0: @ 0x080C3ED0
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r6, r3, #0
	ldr r1, _080C3EF4  @ =gRam
	ldr r0, _080C3EF8  @ =0x000015ED
	add r5, r1, r0
	ldrb r0, [r5]
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r4, r1, #0
	cmp r2, #128
	bne _080C3F00
	ldr r1, _080C3EFC  @ =0x00000974
	add r0, r4, r1
	strb r2, [r0]
	b _080C3FB8
	.byte 0x00
	.byte 0x00
_080C3EF4:
	.4byte gRam
_080C3EF8:
	.4byte 0x000015ED
_080C3EFC:
	.4byte 0x00000974
_080C3F00:
	mov r2, #0
	cmp r0, #0
	bge _080C3F08
	mov r2, #255
_080C3F08:
	ldrb r1, [r5]
	ldr r5, _080C3F80  @ =0x00000EE2
	add r0, r4, r5
	add r0, r3, r0
	ldrb r0, [r0]
	add r1, r1, r0
	add r5, r5, #32
	add r0, r4, r5
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	lsl r0, r2, #8
	add r1, r1, r0
	ldr r2, _080C3F84  @ =0x00000968
	add r0, r4, r2
	strb r1, [r0]
	lsr r1, r1, #8
	ldr r3, _080C3F88  @ =0x00000974
	add r0, r4, r3
	strb r1, [r0]
	mov r2, #0
	ldr r5, _080C3F8C  @ =0x000015EC
	add r1, r4, r5
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080C3F42
	mov r2, #255
_080C3F42:
	ldrb r1, [r1]
	ldr r3, _080C3F90  @ =0x00000ED2
	add r0, r4, r3
	add r0, r6, r0
	ldrb r0, [r0]
	add r1, r1, r0
	ldr r5, _080C3F94  @ =0x00000EF2
	add r0, r4, r5
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	lsl r0, r2, #8
	add r1, r1, r0
	ldr r2, _080C3F98  @ =0x00000969
	add r0, r4, r2
	strb r1, [r0]
	lsr r1, r1, #8
	ldr r3, _080C3F9C  @ =0x00000975
	add r0, r4, r3
	strb r1, [r0]
	mov r1, #3
	ldr r5, _080C3FA0  @ =0x00000FF2
	add r0, r4, r5
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #106
	beq _080C3FA4
	cmp r0, #246
	beq _080C3FA8
	b _080C3FAC
_080C3F80:
	.4byte 0x00000EE2
_080C3F84:
	.4byte 0x00000968
_080C3F88:
	.4byte 0x00000974
_080C3F8C:
	.4byte 0x000015EC
_080C3F90:
	.4byte 0x00000ED2
_080C3F94:
	.4byte 0x00000EF2
_080C3F98:
	.4byte 0x00000969
_080C3F9C:
	.4byte 0x00000975
_080C3FA0:
	.4byte 0x00000FF2
_080C3FA4:
	mov r1, #16
	b _080C3FAC
_080C3FA8:
	ldr r0, _080C3FC0  @ =gUnknown_02010991
	ldrb r1, [r0]
_080C3FAC:
	ldr r2, _080C3FC4  @ =0x0000096C
	add r0, r4, r2
	strb r1, [r0]
	ldr r3, _080C3FC8  @ =0x0000096D
	add r0, r4, r3
	strb r1, [r0]
_080C3FB8:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C3FC0:
	.4byte gUnknown_02010991
_080C3FC4:
	.4byte 0x0000096C
_080C3FC8:
	.4byte 0x0000096D
	THUMB_FUNC_END sub_080C3ED0

	THUMB_FUNC_START sub_080C3FCC
sub_080C3FCC: @ 0x080C3FCC
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	cmp r1, #15
	bne _080C3FE8
	ldr r0, _080C4050  @ =gRam
	ldr r2, _080C4054  @ =0x00001142
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C407A
_080C3FE8:
	cmp r1, #0
	beq _080C3FF0
	cmp r1, #7
	bne _080C4074
_080C3FF0:
	add r0, r4, #0
	bl sub_080C520C
	ldr r3, _080C4050  @ =gRam
	ldr r5, _080C4058  @ =0x00000EB5
	add r0, r3, r5
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C407A
	ldr r0, _080C405C  @ =0x000015F0
	add r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080C407A
	mov r0, #5
	strb r0, [r1]
	ldr r1, _080C4060  @ =0x000015FA
	add r2, r3, r1
	sub r5, r5, #230
	add r0, r3, r5
	ldrb r1, [r2]
	add r0, r0, r1
	ldrb r0, [r0]
	add r0, r0, #4
	ldr r5, _080C4064  @ =0x000015F1
	add r1, r3, r5
	strb r0, [r1]
	ldr r1, _080C4068  @ =0x00000DC5
	add r0, r3, r1
	ldrb r2, [r2]
	add r0, r0, r2
	ldrb r1, [r0]
	ldr r2, _080C406C  @ =0x000015F2
	add r0, r3, r2
	strb r1, [r0]
	mov r5, #161
	lsl r5, r5, #4
	add r0, r3, r5
	ldrb r1, [r0]
	ldr r2, _080C4070  @ =0x00000DA4
	add r0, r3, r2
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #113
	bl sub_080CF0AC
	b _080C407A
_080C4050:
	.4byte gRam
_080C4054:
	.4byte 0x00001142
_080C4058:
	.4byte 0x00000EB5
_080C405C:
	.4byte 0x000015F0
_080C4060:
	.4byte 0x000015FA
_080C4064:
	.4byte 0x000015F1
_080C4068:
	.4byte 0x00000DC5
_080C406C:
	.4byte 0x000015F2
_080C4070:
	.4byte 0x00000DA4
_080C4074:
	add r0, r4, #0
	bl sub_080C520C
_080C407A:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C3FCC

	THUMB_FUNC_START sub_080C4080
sub_080C4080: @ 0x080C4080
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r2, _080C40D0  @ =gRam
	ldr r1, _080C40D4  @ =0x00001032
	add r0, r2, r1
	add r0, r5, r0
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	add r4, r2, #0
	cmp r0, #0
	bne _080C4132
	ldr r3, _080C40D8  @ =0x0000143C
	add r0, r4, r3
	add r0, r5, r0
	ldr r1, _080C40DC  @ =0x00001804
	add r2, r4, r1
	ldrb r1, [r2]
	strb r1, [r0]
	ldr r0, _080C40E0  @ =gSword
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldrb r0, [r2]
	cmp r0, #0
	bne _080C40FA
	ldr r1, _080C40E4  @ =0x000016EA
	add r0, r4, r1
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _080C40E8
	mov r0, #4
	orr r3, r3, r0
	b _080C40FA
	.byte 0x00
	.byte 0x00
_080C40D0:
	.4byte gRam
_080C40D4:
	.4byte 0x00001032
_080C40D8:
	.4byte 0x0000143C
_080C40DC:
	.4byte 0x00001804
_080C40E0:
	.4byte gSword
_080C40E4:
	.4byte 0x000016EA
_080C40E8:
	add r0, r1, #0
	sub r0, r0, #9
	lsl r0, r0, #24
	cmp r0, #0
	blt _080C40FA
	mov r0, #8
	orr r3, r3, r0
	lsl r0, r3, #24
	lsr r3, r0, #24
_080C40FA:
	add r1, r4, #0
	ldr r0, _080C4138  @ =gUnknown_08171FE8
	add r0, r3, r0
	ldrb r0, [r0]
	ldr r3, _080C413C  @ =0x00000EC5
	add r2, r1, r3
	strb r0, [r2]
	ldr r0, _080C4140  @ =0x0000178A
	add r1, r1, r0
	ldrb r1, [r1]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _080C411A
	mov r0, #3
	strb r0, [r2]
_080C411A:
	ldr r3, _080C4144  @ =0x0000176F
	add r1, r4, r3
	mov r0, #4
	strb r0, [r1]
	ldr r0, _080C4148  @ =0x000016F9
	add r1, r4, r0
	mov r0, #16
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #157
	bl sub_080C523C
_080C4132:
	pop {r4,r5}
	pop {r0}
	bx r0
_080C4138:
	.4byte gUnknown_08171FE8
_080C413C:
	.4byte 0x00000EC5
_080C4140:
	.4byte 0x0000178A
_080C4144:
	.4byte 0x0000176F
_080C4148:
	.4byte 0x000016F9
	THUMB_FUNC_END sub_080C4080

	THUMB_FUNC_START sub_080C414C
sub_080C414C: @ 0x080C414C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r2, r1, #0
	cmp r1, #249
	beq _080C41F8
	cmp r1, #250
	beq _080C4184
	ldr r0, _080C417C  @ =gRam
	ldr r3, _080C4180  @ =0x00000EB5
	add r0, r0, r3
	add r0, r4, r0
	ldrb r3, [r0]
	cmp r1, r3
	bcc _080C4170
	strb r1, [r0]
_080C4170:
	add r0, r4, #0
	add r1, r2, #0
	bl sub_080C4208
	b _080C4200
	.byte 0x00
	.byte 0x00
_080C417C:
	.4byte gRam
_080C4180:
	.4byte 0x00000EB5
_080C4184:
	add r0, r4, #0
	mov r1, #143
	bl sub_080C52E4
	ldr r2, _080C41DC  @ =gRam
	ldr r1, _080C41E0  @ =0x00000F52
	add r0, r2, r1
	add r0, r4, r0
	mov r3, #0
	mov r1, #2
	strb r1, [r0]
	ldr r1, _080C41E4  @ =0x00001152
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #32
	strb r1, [r0]
	ldr r1, _080C41E8  @ =0x00001122
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #8
	strb r1, [r0]
	ldr r1, _080C41EC  @ =0x00001072
	add r0, r2, r1
	add r0, r4, r0
	strb r3, [r0]
	add r1, r1, #80
	add r0, r2, r1
	add r0, r4, r0
	strb r3, [r0]
	sub r1, r1, #160
	add r0, r2, r1
	add r0, r4, r0
	strb r3, [r0]
	ldr r3, _080C41F0  @ =0x00000EA5
	add r0, r2, r3
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	ldr r0, _080C41F4  @ =0x000011B2
	add r2, r2, r0
	add r2, r4, r2
	strb r1, [r2]
	b _080C4200
	.byte 0x00
	.byte 0x00
_080C41DC:
	.4byte gRam
_080C41E0:
	.4byte 0x00000F52
_080C41E4:
	.4byte 0x00001152
_080C41E8:
	.4byte 0x00001122
_080C41EC:
	.4byte 0x00001072
_080C41F0:
	.4byte 0x00000EA5
_080C41F4:
	.4byte 0x000011B2
_080C41F8:
	add r0, r4, #0
	mov r1, #227
	bl sub_080C52E4
_080C4200:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C414C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C4208
sub_080C4208: @ 0x080C4208
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r4, r2, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	cmp r1, #0
	bne _080C421A
	b _080C4324
_080C421A:
	ldr r3, _080C42A4  @ =gRam
	cmp r1, #253
	bls _080C422E
	ldr r1, _080C42A8  @ =0x00000FA2
	add r0, r3, r1
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #11
	bne _080C422E
	b _080C4330
_080C422E:
	add r2, r3, #0
	ldr r6, _080C42AC  @ =0x00000FF2
	add r0, r2, r6
	add r5, r4, r0
	ldrb r1, [r5]
	cmp r1, #154
	bne _080C4248
	ldr r6, _080C42B0  @ =0x00000EB5
	add r0, r2, r6
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #239
	bls _080C42EE
_080C4248:
	cmp r1, #27
	beq _080C42E6
	ldr r1, _080C42B4  @ =0x000010C2
	add r0, r2, r1
	add r0, r4, r0
	mov r3, #150
	lsl r3, r3, #4
	add r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #146
	bne _080C426E
	ldr r6, _080C42B8  @ =0x00000F82
	add r0, r2, r6
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #2
	bls _080C42DE
_080C426E:
	mov r3, #33
	ldr r1, _080C42BC  @ =0x00000D84
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _080C4294
	mov r3, #8
	ldr r6, _080C42C0  @ =0x000011B2
	add r0, r2, r6
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _080C4294
	mov r3, #28
_080C4294:
	cmp r3, #8
	bne _080C42C4
	add r0, r4, #0
	mov r1, #83
	bl sub_080CF140
	b _080C42DE
	.byte 0x00
	.byte 0x00
_080C42A4:
	.4byte gRam
_080C42A8:
	.4byte 0x00000FA2
_080C42AC:
	.4byte 0x00000FF2
_080C42B0:
	.4byte 0x00000EB5
_080C42B4:
	.4byte 0x000010C2
_080C42B8:
	.4byte 0x00000F82
_080C42BC:
	.4byte 0x00000D84
_080C42C0:
	.4byte 0x000011B2
_080C42C4:
	cmp r3, #28
	bne _080C42D2
	add r0, r4, #0
	mov r1, #86
	bl sub_080CF140
	b _080C42DE
_080C42D2:
	cmp r3, #33
	bne _080C42DE
	add r0, r4, #0
	mov r1, #87
	bl sub_080CF140
_080C42DE:
	add r0, r4, #0
	bl sub_080C5320
	b _080C436C
_080C42E6:
	add r0, r4, #0
	bl sub_080C4F18
	b _080C436C
_080C42EE:
	ldr r1, _080C4318  @ =0x00000FA2
	add r0, r3, r1
	add r0, r4, r0
	mov r1, #9
	strb r1, [r0]
	ldr r2, _080C431C  @ =0x00000F52
	add r0, r3, r2
	add r0, r4, r0
	mov r1, #4
	strb r1, [r0]
	ldr r6, _080C4320  @ =0x00000FC2
	add r0, r3, r6
	add r0, r4, r0
	mov r1, #15
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #110
	bl sub_080CF0AC
	b _080C436C
	.byte 0x00
	.byte 0x00
_080C4318:
	.4byte 0x00000FA2
_080C431C:
	.4byte 0x00000F52
_080C4320:
	.4byte 0x00000FC2
_080C4324:
	ldr r3, _080C4338  @ =gRam
	ldr r1, _080C433C  @ =0x00000EC5
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #10
	bne _080C4340
_080C4330:
	add r0, r2, #0
	bl sub_080C536C
	b _080C436C
_080C4338:
	.4byte gRam
_080C433C:
	.4byte 0x00000EC5
_080C4340:
	ldr r6, _080C435C  @ =0x00000D84
	add r0, r3, r6
	add r0, r2, r0
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _080C4360
	add r0, r2, #0
	bl sub_080C5320
	b _080C436C
_080C435C:
	.4byte 0x00000D84
_080C4360:
	ldr r2, _080C4374  @ =0x0000176F
	add r0, r3, r2
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C536C
_080C436C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C4374:
	.4byte 0x0000176F
	THUMB_FUNC_END sub_080C4208

	THUMB_FUNC_START sub_080C4378
sub_080C4378: @ 0x080C4378
	push {r4,lr}
	add r4, r1, #0
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r4, r4, #24
	lsr r1, r4, #24
	bl sub_080C2CB4
	ldr r1, _080C43C8  @ =gRam
	mov r2, #150
	lsl r2, r2, #4
	add r0, r1, r2
	ldrb r2, [r0]
	ldr r3, _080C43CC  @ =0x000016CD
	add r0, r1, r3
	strb r2, [r0]
	ldr r2, _080C43D0  @ =0x00000961
	add r0, r1, r2
	ldrb r2, [r0]
	add r3, r3, #1
	add r0, r1, r3
	strb r2, [r0]
	lsr r4, r4, #25
	ldr r2, _080C43D4  @ =0x000016CF
	add r0, r1, r2
	strb r4, [r0]
	add r3, r3, #126
	add r0, r1, r3
	mov r2, #0
	strh r4, [r0]
	sub r3, r3, #132
	add r0, r1, r3
	strb r2, [r0]
	ldr r0, _080C43D8  @ =0x000016C9
	add r1, r1, r0
	strb r2, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C43C8:
	.4byte gRam
_080C43CC:
	.4byte 0x000016CD
_080C43D0:
	.4byte 0x00000961
_080C43D4:
	.4byte 0x000016CF
_080C43D8:
	.4byte 0x000016C9
	THUMB_FUNC_END sub_080C4378

	THUMB_FUNC_START sub_080C43DC
sub_080C43DC: @ 0x080C43DC
	push {lr}
	ldr r2, _080C4430  @ =gRam
	ldr r0, _080C4434  @ =0x000015F0
	add r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080C442C
	mov r0, #5
	strb r0, [r1]
	ldr r3, _080C4438  @ =0x000016C4
	add r1, r2, r3
	add r3, r3, #51
	add r0, r2, r3
	ldrb r0, [r0]
	ldrb r1, [r1]
	add r0, r0, r1
	ldr r3, _080C443C  @ =0x000015F1
	add r1, r2, r3
	strb r0, [r1]
	mov r0, #182
	lsl r0, r0, #5
	add r1, r2, r0
	ldr r3, _080C4440  @ =0x000016F6
	add r0, r2, r3
	ldrb r0, [r0]
	ldrb r1, [r1]
	add r0, r0, r1
	ldr r3, _080C4444  @ =0x000015F2
	add r1, r2, r3
	strb r0, [r1]
	mov r1, #161
	lsl r1, r1, #4
	add r0, r2, r1
	ldrb r1, [r0]
	ldr r3, _080C4448  @ =0x00000DA4
	add r0, r2, r3
	strb r1, [r0]
	mov r0, #113
	bl Sound_SetSfxPanWithPlayerCoords
_080C442C:
	pop {r0}
	bx r0
_080C4430:
	.4byte gRam
_080C4434:
	.4byte 0x000015F0
_080C4438:
	.4byte 0x000016C4
_080C443C:
	.4byte 0x000015F1
_080C4440:
	.4byte 0x000016F6
_080C4444:
	.4byte 0x000015F2
_080C4448:
	.4byte 0x00000DA4
	THUMB_FUNC_END sub_080C43DC

	THUMB_FUNC_START sub_080C444C
sub_080C444C: @ 0x080C444C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r2, _080C44CC  @ =gRam
	ldr r1, _080C44D0  @ =0x00000EE2
	add r0, r2, r1
	add r0, r3, r0
	ldrb r6, [r0]
	ldr r4, _080C44D4  @ =0x00000F02
	add r0, r2, r4
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r0, r6, r0
	ldr r7, _080C44D8  @ =0x00000952
	add r1, r2, r7
	ldrh r1, [r1]
	sub r0, r0, r1
	lsl r0, r0, #16
	mov r5, #255
	lsr r0, r0, #24
	cmp r0, #0
	bne _080C44C4
	ldr r1, _080C44DC  @ =0x00000ED2
	add r0, r2, r1
	add r4, r3, r0
	ldrb r1, [r4]
	ldr r7, _080C44E0  @ =0x00000EF2
	add r0, r2, r7
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r7, _080C44E4  @ =0x00000958
	add r0, r2, r7
	ldrh r0, [r0]
	sub r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #24
	and r1, r1, r5
	cmp r1, #0
	bne _080C44C4
	ldr r1, _080C44E8  @ =0x000015F1
	add r0, r2, r1
	strb r6, [r0]
	ldrb r1, [r4]
	ldr r4, _080C44EC  @ =0x000015F2
	add r0, r2, r4
	strb r1, [r0]
	ldr r7, _080C44F0  @ =0x000015F0
	add r1, r2, r7
	mov r0, #5
	strb r0, [r1]
	ldr r1, _080C44F4  @ =0x000010F2
	add r0, r2, r1
	add r0, r3, r0
	ldrb r1, [r0]
	ldr r3, _080C44F8  @ =0x00000DA4
	add r0, r2, r3
	strb r1, [r0]
_080C44C4:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C44CC:
	.4byte gRam
_080C44D0:
	.4byte 0x00000EE2
_080C44D4:
	.4byte 0x00000F02
_080C44D8:
	.4byte 0x00000952
_080C44DC:
	.4byte 0x00000ED2
_080C44E0:
	.4byte 0x00000EF2
_080C44E4:
	.4byte 0x00000958
_080C44E8:
	.4byte 0x000015F1
_080C44EC:
	.4byte 0x000015F2
_080C44F0:
	.4byte 0x000015F0
_080C44F4:
	.4byte 0x000010F2
_080C44F8:
	.4byte 0x00000DA4
	THUMB_FUNC_END sub_080C444C

	THUMB_FUNC_START sub_080C44FC
sub_080C44FC: @ 0x080C44FC
	push {r4,r5,lr}
	ldr r2, _080C4560  @ =gRam
	ldr r1, _080C4564  @ =0x000016C4
	add r0, r2, r1
	ldrb r3, [r0]
	ldr r4, _080C4568  @ =0x000016C5
	add r0, r2, r4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r3, r3, r0
	add r3, r3, #4
	mov r5, #182
	lsl r5, r5, #5
	add r0, r2, r5
	ldrb r1, [r0]
	sub r4, r4, #4
	add r0, r2, r4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #8
	ldr r5, _080C456C  @ =0x00000964
	add r0, r2, r5
	mov r4, #8
	strb r4, [r0]
	add r5, r5, #1
	add r0, r2, r5
	strb r4, [r0]
	mov r4, #150
	lsl r4, r4, #4
	add r0, r2, r4
	strb r3, [r0]
	lsr r3, r3, #8
	add r5, r5, #11
	add r0, r2, r5
	strb r3, [r0]
	ldr r3, _080C4570  @ =0x00000961
	add r0, r2, r3
	strb r1, [r0]
	lsr r1, r1, #8
	add r4, r4, #17
	add r2, r2, r4
	strb r1, [r2]
	pop {r4,r5}
	pop {r0}
	bx r0
_080C4560:
	.4byte gRam
_080C4564:
	.4byte 0x000016C4
_080C4568:
	.4byte 0x000016C5
_080C456C:
	.4byte 0x00000964
_080C4570:
	.4byte 0x00000961
	THUMB_FUNC_END sub_080C44FC

	THUMB_FUNC_START sub_080C4574
sub_080C4574: @ 0x080C4574
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r5, _080C4594  @ =gRam
	ldr r1, _080C4598  @ =0x00001142
	add r0, r5, r1
	add r6, r3, r0
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _080C45A0
	ldr r2, _080C459C  @ =0x00000974
	add r1, r5, r2
	mov r0, #128
	strb r0, [r1]
	b _080C4630
_080C4594:
	.4byte gRam
_080C4598:
	.4byte 0x00001142
_080C459C:
	.4byte 0x00000974
_080C45A0:
	ldr r7, _080C4638  @ =0x00001132
	add r0, r5, r7
	add r0, r3, r0
	ldrb r0, [r0]
	mov r4, #31
	and r4, r4, r0
	ldr r1, _080C463C  @ =0x00000EE2
	add r0, r5, r1
	add r0, r3, r0
	ldrb r2, [r0]
	ldr r7, _080C4640  @ =0x00000F02
	add r0, r5, r7
	add r0, r3, r0
	ldrb r1, [r0]
	lsl r1, r1, #8
	ldr r0, _080C4644  @ =gUnknown_08171FF4
	add r0, r4, r0
	orr r2, r2, r1
	ldrb r0, [r0]
	add r2, r2, r0
	ldr r0, _080C4648  @ =gUnknown_08172014
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r1, _080C464C  @ =0x00000ED2
	add r0, r5, r1
	add r0, r3, r0
	ldrb r1, [r0]
	sub r7, r7, #16
	add r0, r5, r7
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrb r3, [r6]
	ldr r0, _080C4650  @ =gUnknown_08172054
	add r0, r4, r0
	sub r1, r1, r3
	ldrb r0, [r0]
	add r1, r1, r0
	ldr r0, _080C4654  @ =gUnknown_08172074
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _080C4658  @ =0x00000968
	add r0, r5, r3
	strb r2, [r0]
	lsr r2, r2, #8
	ldr r7, _080C465C  @ =0x00000974
	add r0, r5, r7
	strb r2, [r0]
	ldr r2, _080C4660  @ =0x00000969
	add r0, r5, r2
	strb r1, [r0]
	lsr r1, r1, #8
	add r3, r3, #13
	add r0, r5, r3
	strb r1, [r0]
	ldr r0, _080C4664  @ =gUnknown_08172034
	add r0, r4, r0
	ldrb r1, [r0]
	sub r7, r7, #8
	add r0, r5, r7
	strb r1, [r0]
	ldr r0, _080C4668  @ =gUnknown_08172094
	add r4, r4, r0
	ldrb r1, [r4]
	add r2, r2, #4
	add r0, r5, r2
	strb r1, [r0]
_080C4630:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C4638:
	.4byte 0x00001132
_080C463C:
	.4byte 0x00000EE2
_080C4640:
	.4byte 0x00000F02
_080C4644:
	.4byte gUnknown_08171FF4
_080C4648:
	.4byte gUnknown_08172014
_080C464C:
	.4byte 0x00000ED2
_080C4650:
	.4byte gUnknown_08172054
_080C4654:
	.4byte gUnknown_08172074
_080C4658:
	.4byte 0x00000968
_080C465C:
	.4byte 0x00000974
_080C4660:
	.4byte 0x00000969
_080C4664:
	.4byte gUnknown_08172034
_080C4668:
	.4byte gUnknown_08172094
	THUMB_FUNC_END sub_080C4574

	THUMB_FUNC_START sub_080C466C
sub_080C466C: @ 0x080C466C
	push {r4-r7,lr}
	mov r7, #1
	mov r4, #1
	ldr r3, _080C46D8  @ =gUnknown_03002B98
_080C4674:
	mov r5, #0
	add r1, r4, r3
	add r0, r3, #0
	sub r0, r0, #8
	add r0, r4, r0
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bcc _080C4688
	mov r5, #1
_080C4688:
	sub r2, r1, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r0, r3, #4
	add r6, r4, r0
	ldrb r0, [r6]
	add r0, r2, r0
	strb r0, [r3, #21]
	add r1, r3, #0
	add r1, r1, #12
	add r1, r4, r1
	add r0, r3, #0
	add r0, r0, #8
	add r0, r4, r0
	ldrb r1, [r1]
	ldrb r0, [r0]
	sub r1, r1, r0
	add r0, r5, #0
	add r0, r0, #255
	add r0, r1, r0
	strb r0, [r3, #16]
	mov r1, #0
	add r2, r2, #128
	cmp r2, #255
	ble _080C46BC
	mov r1, #1
_080C46BC:
	add r0, r1, r0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C46D4
	sub r0, r3, #4
	add r0, r4, r0
	ldrb r0, [r0]
	ldrb r1, [r6]
	add r0, r0, r1
	ldrb r1, [r3, #21]
	cmp r0, r1
	bge _080C46DC
_080C46D4:
	mov r7, #0
	b _080C46E2
_080C46D8:
	.4byte gUnknown_03002B98
_080C46DC:
	sub r4, r4, #1
	cmp r4, #0
	bge _080C4674
_080C46E2:
	add r0, r7, #0
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C466C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C46EC
sub_080C46EC: @ 0x080C46EC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r0, #0
	mov r8, r0
	ldr r3, _080C4794  @ =gRam
	ldr r1, _080C4798  @ =0x00001132
	add r0, r3, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C47C0
	ldr r2, _080C479C  @ =0x000016C4
	add r0, r3, r2
	ldrb r1, [r0]
	ldr r4, _080C47A0  @ =0x000016C5
	add r0, r3, r4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r6, _080C47A4  @ =0x00001622
	add r0, r3, r6
	ldrb r2, [r0]
	sub r4, r4, #162
	add r0, r3, r4
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	ldr r6, _080C47A8  @ =0x00001142
	add r0, r3, r6
	add r4, r5, r0
	ldrb r2, [r4]
	ldr r6, _080C47AC  @ =0x00000978
	add r0, r3, r6
	strb r2, [r0]
	ldr r2, _080C47B0  @ =0x00000979
	add r0, r3, r2
	mov r6, r8
	strb r6, [r0]
	mov r0, #176
	lsl r0, r0, #12
	add r1, r1, r0
	lsr r1, r1, #16
	cmp r1, #22
	bhi _080C4790
	mov r1, #182
	lsl r1, r1, #5
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080C47B4  @ =0x000016C1
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	orr r1, r1, r0
	ldrb r4, [r4]
	add r1, r1, r4
	ldr r4, _080C47B8  @ =0x00001624
	add r0, r3, r4
	ldrb r2, [r0]
	ldr r6, _080C47BC  @ =0x00001625
	add r0, r3, r6
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	mov r0, #128
	lsl r0, r0, #13
	add r1, r1, r0
	lsr r1, r1, #16
	mov r2, #1
	cmp r1, #23
	bls _080C47D2
_080C4790:
	mov r2, #0
	b _080C47D2
_080C4794:
	.4byte gRam
_080C4798:
	.4byte 0x00001132
_080C479C:
	.4byte 0x000016C4
_080C47A0:
	.4byte 0x000016C5
_080C47A4:
	.4byte 0x00001622
_080C47A8:
	.4byte 0x00001142
_080C47AC:
	.4byte 0x00000978
_080C47B0:
	.4byte 0x00000979
_080C47B4:
	.4byte 0x000016C1
_080C47B8:
	.4byte 0x00001624
_080C47BC:
	.4byte 0x00001625
_080C47C0:
	bl sub_080C44FC
	add r0, r5, #0
	bl sub_080C4574
	bl sub_080C466C
	lsl r0, r0, #24
	lsr r2, r0, #24
_080C47D2:
	ldr r7, _080C47E8  @ =gRam
	ldr r1, _080C47EC  @ =0x00001012
	add r0, r7, r1
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _080C47F0
	mov r8, r2
	b _080C490C
_080C47E8:
	.4byte gRam
_080C47EC:
	.4byte 0x00001012
_080C47F0:
	cmp r2, #0
	beq _080C47FE
	ldr r2, _080C4804  @ =0x00001702
	add r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C4808
_080C47FE:
	mov r3, #0
	mov r8, r3
	b _080C490C
_080C4804:
	.4byte 0x00001702
_080C4808:
	ldr r4, _080C4898  @ =0x0000176C
	add r0, r7, r4
	ldrb r3, [r0]
	cmp r3, #0
	beq _080C4814
	b _080C4912
_080C4814:
	ldr r6, _080C489C  @ =0x00001791
	add r0, r7, r6
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	blt _080C4912
	ldr r1, _080C48A0  @ =0x000011B2
	add r0, r7, r1
	add r0, r5, r0
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _080C4912
	ldr r0, _080C48A4  @ =gShield
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C4912
	ldr r2, _080C48A8  @ =0x000016D5
	add r0, r7, r2
	ldrb r2, [r0]
	ldr r4, _080C48AC  @ =0x00000FA2
	add r0, r7, r4
	add r0, r0, r5
	mov r9, r0
	strb r3, [r0]
	ldr r6, _080C48B0  @ =0x000016EA
	add r0, r7, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C485C
	ldr r1, _080C48B4  @ =gUnknown_081720B8
	lsr r0, r2, #1
	add r0, r0, r1
	ldrb r2, [r0]
_080C485C:
	ldr r1, _080C48B8  @ =gUnknown_081720B4
	ldr r3, _080C48BC  @ =0x00000FB2
	add r0, r7, r3
	add r6, r5, r0
	ldrb r0, [r6]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r2, r0
	bne _080C4912
	ldr r4, _080C48C0  @ =0x00000FF2
	add r0, r7, r4
	add r0, r5, r0
	ldrb r4, [r0]
	add r0, r5, #0
	mov r1, #9
	bl sub_080CF0AC
	add r0, r5, #0
	bl sub_080C444C
	cmp r4, #149
	beq _080C4900
	cmp r4, #155
	beq _080C48D4
	cmp r4, #27
	bne _080C48C4
	add r0, r5, #0
	bl sub_080C6E3C
	b _080C4908
_080C4898:
	.4byte 0x0000176C
_080C489C:
	.4byte 0x00001791
_080C48A0:
	.4byte 0x000011B2
_080C48A4:
	.4byte gShield
_080C48A8:
	.4byte 0x000016D5
_080C48AC:
	.4byte 0x00000FA2
_080C48B0:
	.4byte 0x000016EA
_080C48B4:
	.4byte gUnknown_081720B8
_080C48B8:
	.4byte gUnknown_081720B4
_080C48BC:
	.4byte 0x00000FB2
_080C48C0:
	.4byte 0x00000FF2
_080C48C4:
	cmp r4, #12
	bne _080C490C
	add r0, r5, #0
	bl sub_080E5B38
	mov r0, #1
	mov r8, r0
	b _080C490C
_080C48D4:
	add r0, r5, #0
	bl Sprite_Invert_XY_Speeds
	ldrb r0, [r6]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r6]
	ldr r2, _080C48FC  @ =0x00000F52
	add r1, r7, r2
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #9
	mov r3, r9
	strb r0, [r3]
	mov r4, #0
	mov r8, r4
	b _080C490C
	.byte 0x00
	.byte 0x00
_080C48FC:
	.4byte 0x00000F52
_080C4900:
	add r0, r5, #0
	mov r1, #44
	bl sub_080CF140
_080C4908:
	mov r6, #0
	mov r8, r6
_080C490C:
	mov r0, #0
	cmp r0, #0
	beq _080C4930
_080C4912:
	add r0, r5, #0
	bl sub_080C3BD0
	ldr r0, _080C4940  @ =gRam
	ldr r1, _080C4944  @ =0x00000FF2
	add r0, r0, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #12
	bne _080C492C
	add r0, r5, #0
	bl sub_080E5B38
_080C492C:
	mov r2, #1
	mov r8, r2
_080C4930:
	mov r0, r8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C4940:
	.4byte gRam
_080C4944:
	.4byte 0x00000FF2
	THUMB_FUNC_END sub_080C46EC

	THUMB_FUNC_START sub_080C4948
sub_080C4948: @ 0x080C4948
	push {r4-r7,lr}
	add r6, r0, #0
	lsl r1, r1, #24
	lsr r4, r1, #24
	mov r0, #1
	strb r0, [r6]
	ldr r5, _080C4994  @ =gRam
	ldr r1, _080C4998  @ =0x000010C2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080C498A
	mov r2, #161
	lsl r2, r2, #4
	add r0, r5, r2
	ldr r2, _080C499C  @ =0x000010F2
	add r1, r5, r2
	add r1, r4, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #0
	bne _080C498A
	ldr r1, _080C49A0  @ =0x000016F6
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #128
	bne _080C49A4
_080C498A:
	add r0, r6, #0
	bl sub_080C53D8
	b _080C4A28
	.byte 0x00
	.byte 0x00
_080C4994:
	.4byte gRam
_080C4998:
	.4byte 0x000010C2
_080C499C:
	.4byte 0x000010F2
_080C49A0:
	.4byte 0x000016F6
_080C49A4:
	bl sub_080C3C98
	add r0, r4, #0
	bl sub_080C4574
	bl sub_080C466C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C49C0
	add r0, r6, #0
	bl sub_080C53D8
	b _080C4A28
_080C49C0:
	ldr r2, _080C49F8  @ =0x000016F9
	add r0, r5, r2
	strb r7, [r0]
	ldr r1, _080C49FC  @ =0x0000180C
	add r0, r5, r1
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _080C4A60
	ldr r2, _080C4A00  @ =0x0000178A
	add r0, r5, r2
	ldrb r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _080C4A20
	ldr r1, _080C4A04  @ =0x00000FF2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #213
	bls _080C4A08
	add r0, r6, #0
	bl sub_080C53D8
	b _080C4A28
	.byte 0x00
	.byte 0x00
_080C49F8:
	.4byte 0x000016F9
_080C49FC:
	.4byte 0x0000180C
_080C4A00:
	.4byte 0x0000178A
_080C4A04:
	.4byte 0x00000FF2
_080C4A08:
	ldr r2, _080C4A30  @ =0x00000FA2
	add r0, r5, r2
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #11
	bne _080C4A20
	ldr r2, _080C4A34  @ =0x0000142C
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C4A38
_080C4A20:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_080C4A70
_080C4A28:
	lsl r0, r0, #24
	lsr r0, r0, #24
	b _080C4A62
	.byte 0x00
	.byte 0x00
_080C4A30:
	.4byte 0x00000FA2
_080C4A34:
	.4byte 0x0000142C
_080C4A38:
	mov r0, #2
	strb r0, [r1]
	ldr r1, _080C4A68  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #32
	strb r1, [r0]
	ldr r0, _080C4A6C  @ =0x00001012
	add r2, r5, r0
	add r2, r4, r2
	ldrb r1, [r2]
	mov r0, #224
	and r0, r0, r1
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	mov r1, #109
	bl sub_080CF0AC
_080C4A60:
	mov r0, #1
_080C4A62:
	pop {r4-r7}
	pop {r1}
	bx r1
_080C4A68:
	.4byte 0x00000FC2
_080C4A6C:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080C4948

	THUMB_FUNC_START sub_080C4A70
sub_080C4A70: @ 0x080C4A70
	push {r4,r5,lr}
	add r5, r0, #0
	lsl r1, r1, #24
	lsr r4, r1, #24
	add r1, r4, #0
	ldr r3, _080C4AA8  @ =gRam
	ldr r2, _080C4AAC  @ =0x00000FF2
	add r0, r3, r2
	add r0, r4, r0
	ldrb r0, [r0]
	add r2, r0, #0
	cmp r0, #123
	beq _080C4B36
	cmp r0, #9
	beq _080C4B0A
	cmp r0, #146
	beq _080C4B00
	cmp r0, #206
	bgt _080C4ABA
	cmp r0, #203
	bge _080C4AF0
	cmp r0, #19
	beq _080C4AD2
	cmp r0, #19
	bgt _080C4AB0
	cmp r0, #2
	beq _080C4ADC
	b _080C4AF8
_080C4AA8:
	.4byte gRam
_080C4AAC:
	.4byte 0x00000FF2
_080C4AB0:
	cmp r0, #38
	beq _080C4AC8
	cmp r0, #84
	beq _080C4AF0
	b _080C4AF8
_080C4ABA:
	cmp r2, #214
	blt _080C4AF8
	cmp r2, #215
	ble _080C4AF0
	cmp r2, #246
	beq _080C4AE6
	b _080C4AF8
_080C4AC8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_080C54B8
	b _080C4B56
_080C4AD2:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_080C53E0
	b _080C4B56
_080C4ADC:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_080C5488
	b _080C4B56
_080C4AE6:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_080C5430
	b _080C4B56
_080C4AF0:
	add r0, r5, #0
	bl sub_080C54F8
	b _080C4B56
_080C4AF8:
	add r0, r5, #0
	bl sub_080C5394
	b _080C4B56
_080C4B00:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_080C4B60
	b _080C4B56
_080C4B0A:
	ldr r1, _080C4B20  @ =0x00000F62
	add r0, r3, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C4B24
	add r0, r5, #0
	add r1, r4, #0
	bl sub_080C5394
	b _080C4B56
_080C4B20:
	.4byte 0x00000F62
_080C4B24:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_080C55B8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_080C555C
	b _080C4B56
_080C4B36:
	ldr r2, _080C4B4C  @ =0x000016EA
	add r0, r3, r2
	ldrb r0, [r0]
	sub r0, r0, #9
	lsl r0, r0, #24
	cmp r0, #0
	bge _080C4B50
	add r0, r5, #0
	bl sub_080C5394
	b _080C4B56
_080C4B4C:
	.4byte 0x000016EA
_080C4B50:
	add r0, r5, #0
	bl sub_080C53D8
_080C4B56:
	lsl r0, r0, #24
	lsr r0, r0, #24
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C4A70

	THUMB_FUNC_START sub_080C4B60
sub_080C4B60: @ 0x080C4B60
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	lsl r1, r1, #24
	lsr r4, r1, #24
	mov r8, r4
	ldr r5, _080C4BB4  @ =gRam
	ldr r1, _080C4BB8  @ =0x00000F82
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #2
	bls _080C4BD4
	add r0, r4, #0
	mov r1, #32
	bl sub_080C4378
	ldr r0, _080C4BBC  @ =0x000016F9
	add r1, r5, r0
	mov r0, #144
	strb r0, [r1]
	ldr r0, _080C4BC0  @ =0x000016F8
	add r1, r5, r0
	mov r0, #16
	strb r0, [r1]
	ldr r1, _080C4BC4  @ =0x00000E75
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	beq _080C4BC8
	add r0, r6, #0
	add r1, r4, #0
	bl sub_080C555C
	b _080C4BF8
	.byte 0x00
	.byte 0x00
_080C4BB4:
	.4byte gRam
_080C4BB8:
	.4byte 0x00000F82
_080C4BBC:
	.4byte 0x000016F9
_080C4BC0:
	.4byte 0x000016F8
_080C4BC4:
	.4byte 0x00000E75
_080C4BC8:
	add r0, r4, #0
	bl sub_080C3AC8
	strb r5, [r6]
	mov r0, #1
	b _080C4BFC
_080C4BD4:
	ldr r0, _080C4C08  @ =0x000016F9
	add r7, r5, r0
	ldrb r0, [r7]
	cmp r0, #0
	bne _080C4BF0
	add r0, r4, #0
	mov r1, #4
	bl sub_080C4378
	ldr r0, _080C4C0C  @ =0x000016F8
	add r1, r5, r0
	mov r0, #16
	strb r0, [r1]
	strb r0, [r7]
_080C4BF0:
	add r0, r6, #0
	mov r1, r8
	bl sub_080C55A4
_080C4BF8:
	lsl r0, r0, #24
	lsr r0, r0, #24
_080C4BFC:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C4C08:
	.4byte 0x000016F9
_080C4C0C:
	.4byte 0x000016F8
	THUMB_FUNC_END sub_080C4B60

	THUMB_FUNC_START sub_080C4C10
sub_080C4C10: @ 0x080C4C10
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r2, _080C4C5C  @ =gRam
	ldr r1, _080C4C60  @ =0x000010E2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C4C8E
	ldr r3, _080C4C64  @ =0x00000996
	add r0, r2, r3
	ldrb r0, [r0]
	add r1, r4, #0
	eor r1, r1, r0
	mov r0, #3
	and r1, r1, r0
	ldr r3, _080C4C68  @ =0x000010C2
	add r0, r2, r3
	add r0, r4, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	cmp r1, #0
	bne _080C4C8E
	mov r1, #161
	lsl r1, r1, #4
	add r0, r2, r1
	add r3, r3, #48
	add r1, r2, r3
	add r1, r4, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080C4C6C
	mov r0, #0
	b _080C4C7A
	.byte 0x00
	.byte 0x00
_080C4C5C:
	.4byte gRam
_080C4C60:
	.4byte 0x000010E2
_080C4C64:
	.4byte 0x00000996
_080C4C68:
	.4byte 0x000010C2
_080C4C6C:
	add r0, r4, #0
	bl sub_080C46EC
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _080C4C88
_080C4C7A:
	mov r0, sp
	add r1, r4, #0
	bl sub_080C4948
	lsl r0, r0, #24
	cmp r0, #0
	beq _080C4C8E
_080C4C88:
	add r0, r4, #0
	bl sub_080CF418
_080C4C8E:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C4C10

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C4C98
sub_080C4C98: @ 0x080C4C98
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r2, _080C4D38  @ =gRam
	ldr r1, _080C4D3C  @ =0x000010E2
	add r0, r2, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C4D30
	ldr r3, _080C4D40  @ =0x00000F22
	add r1, r2, r3
	add r1, r5, r1
	sub r3, r3, #16
	add r0, r2, r3
	add r0, r5, r0
	ldrb r1, [r1]
	ldrb r0, [r0]
	orr r0, r0, r1
	cmp r0, #0
	beq _080C4D30
	mov r4, #15
	add r6, r2, #0
	ldr r0, _080C4D44  @ =0x000010F2
	add r7, r6, r0
_080C4CCA:
	ldr r1, _080C4D48  @ =0x000015DC
	add r0, r6, r1
	ldrb r0, [r0]
	cmp r4, r0
	beq _080C4D2A
	ldr r3, _080C4D4C  @ =0x00000FF2
	add r0, r6, r3
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #210
	beq _080C4D2A
	ldr r1, _080C4D50  @ =0x00000FA2
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #8
	bls _080C4D2A
	lsl r0, r4, #24
	lsr r2, r0, #24
	ldr r3, _080C4D54  @ =0x00000996
	add r0, r6, r3
	ldrb r0, [r0]
	add r1, r2, #0
	eor r1, r1, r0
	mov r0, #3
	and r1, r1, r0
	ldr r3, _080C4D58  @ =0x00001172
	add r0, r6, r3
	add r0, r4, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	sub r3, r3, #176
	add r0, r6, r3
	add r0, r4, r0
	ldrb r0, [r0]
	orr r1, r1, r0
	cmp r1, #0
	bne _080C4D2A
	add r0, r5, r7
	add r1, r4, r7
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080C4D2A
	add r0, r5, #0
	add r1, r2, #0
	bl sub_080C4D5C
_080C4D2A:
	sub r4, r4, #1
	cmp r4, #0
	bge _080C4CCA
_080C4D30:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C4D38:
	.4byte gRam
_080C4D3C:
	.4byte 0x000010E2
_080C4D40:
	.4byte 0x00000F22
_080C4D44:
	.4byte 0x000010F2
_080C4D48:
	.4byte 0x000015DC
_080C4D4C:
	.4byte 0x00000FF2
_080C4D50:
	.4byte 0x00000FA2
_080C4D54:
	.4byte 0x00000996
_080C4D58:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080C4C98

	THUMB_FUNC_START sub_080C4D5C
sub_080C4D5C: @ 0x080C4D5C
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsl r1, r1, #24
	lsr r6, r1, #24
	ldr r5, _080C4DE8  @ =gRam
	ldr r1, _080C4DEC  @ =0x00000EE2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r0, r5, r2
	strb r1, [r0]
	ldr r3, _080C4DF0  @ =0x00000F02
	add r0, r5, r3
	add r0, r4, r0
	ldrb r1, [r0]
	add r2, r2, #16
	add r0, r5, r2
	strb r1, [r0]
	ldr r3, _080C4DF4  @ =0x00000964
	add r1, r5, r3
	mov r0, #15
	strb r0, [r1]
	ldr r1, _080C4DF8  @ =0x00000ED2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r2, [r0]
	ldr r3, _080C4DFC  @ =0x00000EF2
	add r0, r5, r3
	add r0, r4, r0
	ldr r3, _080C4E00  @ =0x00000961
	add r1, r5, r3
	strb r2, [r1]
	ldrb r1, [r0]
	ldr r2, _080C4E04  @ =0x00000971
	add r0, r5, r2
	strb r1, [r0]
	add r3, r3, #4
	add r1, r5, r3
	mov r0, #8
	strb r0, [r1]
	add r0, r6, #0
	bl sub_080C4574
	bl sub_080C466C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080C4E72
	ldr r0, _080C4E08  @ =0x00000FF2
	add r1, r5, r0
	add r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #63
	bne _080C4E10
	ldr r1, _080C4E0C  @ =0x000015F0
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C4E6C
	add r0, r4, #0
	mov r1, #113
	bl sub_080CF0AC
	add r0, r4, #0
	bl sub_080C444C
	b _080C4E6C
_080C4DE8:
	.4byte gRam
_080C4DEC:
	.4byte 0x00000EE2
_080C4DF0:
	.4byte 0x00000F02
_080C4DF4:
	.4byte 0x00000964
_080C4DF8:
	.4byte 0x00000ED2
_080C4DFC:
	.4byte 0x00000EF2
_080C4E00:
	.4byte 0x00000961
_080C4E04:
	.4byte 0x00000971
_080C4E08:
	.4byte 0x00000FF2
_080C4E0C:
	.4byte 0x000015F0
_080C4E10:
	add r0, r4, r1
	ldrb r0, [r0]
	mov r1, #3
	cmp r0, #236
	bne _080C4E36
	ldr r2, _080C4E78  @ =0x00000F82
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #2
	bne _080C4E36
	ldr r3, _080C4E7C  @ =0x000009B2
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080C4E36
	mov r1, #1
_080C4E36:
	add r0, r6, #0
	bl sub_080C3FCC
	ldr r1, _080C4E80  @ =gRam
	ldr r0, _080C4E84  @ =0x00001112
	add r2, r1, r0
	add r2, r6, r2
	ldr r3, _080C4E88  @ =0x00000F22
	add r0, r1, r3
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #1
	strb r0, [r2]
	ldr r0, _080C4E8C  @ =0x00001102
	add r2, r1, r0
	add r2, r6, r2
	sub r3, r3, #16
	add r0, r1, r3
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #1
	strb r0, [r2]
	ldr r0, _080C4E90  @ =0x000010E2
	add r1, r1, r0
	add r1, r4, r1
	mov r0, #16
	strb r0, [r1]
_080C4E6C:
	add r0, r4, #0
	bl sub_080C50E4
_080C4E72:
	pop {r4-r6}
	pop {r0}
	bx r0
_080C4E78:
	.4byte 0x00000F82
_080C4E7C:
	.4byte 0x000009B2
_080C4E80:
	.4byte gRam
_080C4E84:
	.4byte 0x00001112
_080C4E88:
	.4byte 0x00000F22
_080C4E8C:
	.4byte 0x00001102
_080C4E90:
	.4byte 0x000010E2
	THUMB_FUNC_END sub_080C4D5C

	THUMB_FUNC_START sub_080C4E94
sub_080C4E94: @ 0x080C4E94
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r0, _080C4EBC  @ =gRam
	ldr r3, _080C4EC0  @ =0x000010C2
	add r0, r0, r3
	add r0, r2, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	blt _080C4EB6
	add r0, r2, #0
	bl sub_080C4EC4
_080C4EB6:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C4EBC:
	.4byte gRam
_080C4EC0:
	.4byte 0x000010C2
	THUMB_FUNC_END sub_080C4E94

	THUMB_FUNC_START sub_080C4EC4
sub_080C4EC4: @ 0x080C4EC4
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r0, _080C4EE4  @ =gUnknown_08171FAF
	add r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #6
	bne _080C4EE0
	ldr r0, _080C4EE8  @ =gBow
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080C4EEC
_080C4EE0:
	ldrb r1, [r1]
	b _080C4F06
_080C4EE4:
	.4byte gUnknown_08171FAF
_080C4EE8:
	.4byte gBow
_080C4EEC:
	ldr r1, _080C4F10  @ =gRam
	ldr r3, _080C4F14  @ =0x00000FF2
	add r0, r1, r3
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #215
	bne _080C4F04
	add r3, r3, #240
	add r0, r1, r3
	add r0, r2, r0
	mov r1, #32
	strb r1, [r0]
_080C4F04:
	mov r1, #9
_080C4F06:
	add r0, r2, #0
	bl sub_080C3FCC
	pop {r0}
	bx r0
_080C4F10:
	.4byte gRam
_080C4F14:
	.4byte 0x00000FF2
	THUMB_FUNC_END sub_080C4EC4

	THUMB_FUNC_START sub_080C4F18
sub_080C4F18: @ 0x080C4F18
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	mov r1, #113
	bl sub_080CF0AC
	add r0, r4, #0
	bl sub_080C6E3C
	add r0, r4, #0
	bl sub_080C4F3C
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C4F18

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C4F3C
sub_080C4F3C: @ 0x080C4F3C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _080C4F64  @ =gRam
	ldr r1, _080C4F68  @ =0x000015F0
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C4F5C
	add r0, r4, #0
	mov r1, #113
	bl sub_080CF0AC
	add r0, r4, #0
	bl sub_080C444C
_080C4F5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C4F64:
	.4byte gRam
_080C4F68:
	.4byte 0x000015F0
	THUMB_FUNC_END sub_080C4F3C

	THUMB_FUNC_START sub_080C4F6C
sub_080C4F6C: @ 0x080C4F6C
	push {lr}
	ldr r1, _080C4F84  @ =gRam
	ldr r2, _080C4F88  @ =0x0000180D
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C4F90
	ldr r0, _080C4F8C  @ =0x00000971
	add r1, r1, r0
	mov r0, #128
	strb r0, [r1]
	b _080C4F94
_080C4F84:
	.4byte gRam
_080C4F88:
	.4byte 0x0000180D
_080C4F8C:
	.4byte 0x00000971
_080C4F90:
	bl sub_080C44FC
_080C4F94:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C4F6C

	THUMB_FUNC_START sub_080C4F98
sub_080C4F98: @ 0x080C4F98
	push {lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r0, _080C4FB0  @ =gRam
	ldr r2, _080C4FB4  @ =0x0000180D
	add r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C4FB8
	mov r0, #0
	b _080C4FC2
	.byte 0x00
	.byte 0x00
_080C4FB0:
	.4byte gRam
_080C4FB4:
	.4byte 0x0000180D
_080C4FB8:
	add r0, r1, #0
	bl sub_080C4FC8
	lsl r0, r0, #24
	lsr r0, r0, #24
_080C4FC2:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C4F98

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C4FC8
sub_080C4FC8: @ 0x080C4FC8
	push {lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r2, _080C4FF0  @ =gRam
	ldr r1, _080C4FF4  @ =0x00000996
	add r0, r2, r1
	ldrb r1, [r0]
	add r0, r3, #0
	eor r0, r0, r1
	mov r1, #3
	and r0, r0, r1
	ldr r1, _080C4FF8  @ =0x000010C2
	add r2, r2, r1
	add r2, r3, r2
	ldrb r1, [r2]
	orr r0, r0, r1
	cmp r0, #0
	beq _080C4FFC
	mov r0, #0
	b _080C5006
_080C4FF0:
	.4byte gRam
_080C4FF4:
	.4byte 0x00000996
_080C4FF8:
	.4byte 0x000010C2
_080C4FFC:
	add r0, r3, #0
	bl sub_080C500C
	lsl r0, r0, #24
	lsr r0, r0, #24
_080C5006:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C4FC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C500C
sub_080C500C: @ 0x080C500C
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r0, _080C502C  @ =gRam
	mov r3, #161
	lsl r3, r3, #4
	add r1, r0, r3
	ldr r3, _080C5030  @ =0x000010F2
	add r0, r0, r3
	add r0, r2, r0
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080C5034
	mov r0, #0
	b _080C503E
_080C502C:
	.4byte gRam
_080C5030:
	.4byte 0x000010F2
_080C5034:
	add r0, r2, #0
	bl sub_080C46EC
	lsl r0, r0, #24
	lsr r0, r0, #24
_080C503E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C500C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C5044
sub_080C5044: @ 0x080C5044
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, sp
	add r1, r4, #0
	bl sub_080C4948
	ldr r0, _080C5064  @ =gRam
	ldr r1, _080C5068  @ =0x0000180D
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C506C
	mov r0, #0
	b _080C5076
_080C5064:
	.4byte gRam
_080C5068:
	.4byte 0x0000180D
_080C506C:
	add r0, r4, #0
	bl sub_080C4FC8
	lsl r0, r0, #24
	lsr r0, r0, #24
_080C5076:
	add sp, sp, #4
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C5044

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C5080
sub_080C5080: @ 0x080C5080
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r1, _080C50AC  @ =gRam
	ldr r2, _080C50B0  @ =0x00001132
	add r0, r1, r2
	add r0, r4, r0
	ldrb r5, [r0]
	mov r2, #0
	strb r2, [r0]
	mov r2, #161
	lsl r2, r2, #4
	add r0, r1, r2
	ldr r2, _080C50B4  @ =0x000010F2
	add r1, r1, r2
	add r1, r4, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080C50B8
	mov r0, #0
	b _080C50CA
_080C50AC:
	.4byte gRam
_080C50B0:
	.4byte 0x00001132
_080C50B4:
	.4byte 0x000010F2
_080C50B8:
	add r0, r4, #0
	bl sub_080C46EC
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _080C50CA
	bl sub_080C51A8
_080C50CA:
	ldr r0, _080C50DC  @ =gRam
	ldr r1, _080C50E0  @ =0x00001132
	add r0, r0, r1
	add r0, r4, r0
	strb r5, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C50DC:
	.4byte gRam
_080C50E0:
	.4byte 0x00001132
	THUMB_FUNC_END sub_080C5080

	THUMB_FUNC_START sub_080C50E4
sub_080C50E4: @ 0x080C50E4
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl Sprite_Invert_XY_Speeds
	add r0, r4, #0
	bl Sprite_Halve_XY_Speeds
	add r0, r4, #0
	bl sub_080C5104
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C50E4

	THUMB_FUNC_START sub_080C5104
sub_080C5104: @ 0x080C5104
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080C512C  @ =gRam
	ldr r3, _080C5130  @ =0x00000FF2
	add r0, r1, r3
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #236
	bne _080C5126
	ldr r0, _080C5134  @ =0x000015F0
	add r1, r1, r0
	mov r0, #0
	strb r0, [r1]
	add r0, r2, #0
	bl sub_080C5138
_080C5126:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C512C:
	.4byte gRam
_080C5130:
	.4byte 0x00000FF2
_080C5134:
	.4byte 0x000015F0
	THUMB_FUNC_END sub_080C5104

	THUMB_FUNC_START sub_080C5138
sub_080C5138: @ 0x080C5138
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r7, _080C5174  @ =gRam
	ldr r1, _080C5178  @ =0x00000F92
	add r0, r7, r1
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C515C
	ldr r1, _080C517C  @ =0x00000DB8
	add r4, r7, r1
	mov r5, #0
	strb r0, [r4]
	add r0, r6, #0
	bl sub_080C2534
	strb r5, [r4]
_080C515C:
	ldr r1, _080C5180  @ =0x000009B2
	add r0, r7, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080C5188
	ldr r1, _080C5184  @ =0x00000F82
	add r0, r7, r1
	add r0, r6, r0
	ldrb r4, [r0]
	b _080C518A
_080C5174:
	.4byte gRam
_080C5178:
	.4byte 0x00000F92
_080C517C:
	.4byte 0x00000DB8
_080C5180:
	.4byte 0x000009B2
_080C5184:
	.4byte 0x00000F82
_080C5188:
	mov r4, #0
_080C518A:
	ldr r0, _080C51A4  @ =gUnknown_081720BC
	add r0, r4, r0
	ldrb r1, [r0]
	add r0, r6, #0
	bl sub_080CF0AC
	add r0, r6, #0
	bl sub_080C6E3C
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C51A4:
	.4byte gUnknown_081720BC
	THUMB_FUNC_END sub_080C5138

	THUMB_FUNC_START sub_080C51A8
sub_080C51A8: @ 0x080C51A8
	push {lr}
	bl sub_080AF16C
	ldr r0, _080C51C0  @ =gRam
	ldr r1, _080C51C4  @ =0x00001719
	add r0, r0, r1
	mov r1, #0
	strb r1, [r0]
	bl sub_08093078
	pop {r0}
	bx r0
_080C51C0:
	.4byte gRam
_080C51C4:
	.4byte 0x00001719
	THUMB_FUNC_END sub_080C51A8

	THUMB_FUNC_START sub_080C51C8
sub_080C51C8: @ 0x080C51C8
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _080C5204  @ =gRam
	ldr r1, _080C5208  @ =0x00000996
	add r0, r0, r1
	ldrb r1, [r0]
	add r0, r4, #0
	eor r0, r0, r1
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080C51FC
	add r0, r4, #0
	bl sub_080C3ED0
	bl sub_080C4F6C
	bl sub_080C466C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080C51FC
	add r0, r4, #0
	bl sub_080C3BD0
_080C51FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C5204:
	.4byte gRam
_080C5208:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080C51C8

	THUMB_FUNC_START sub_080C520C
sub_080C520C: @ 0x080C520C
	push {lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r0, _080C5234  @ =gRam
	ldr r2, _080C5238  @ =0x00000EC5
	add r0, r0, r2
	strb r1, [r0]
	mov r2, #32
	cmp r1, #8
	bne _080C5226
	mov r2, #53
_080C5226:
	add r0, r3, #0
	add r1, r2, #0
	bl sub_080C523C
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C5234:
	.4byte gRam
_080C5238:
	.4byte 0x00000EC5
	THUMB_FUNC_END sub_080C520C

	THUMB_FUNC_START sub_080C523C
sub_080C523C: @ 0x080C523C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r5, r3, #0
	ldr r4, _080C5288  @ =gRam
	mov r2, #150
	lsl r2, r2, #4
	add r0, r4, r2
	mov r2, #0
	strb r1, [r0]
	ldr r1, _080C528C  @ =0x00000EC6
	add r0, r4, r1
	strb r2, [r0]
	ldr r2, _080C5290  @ =0x00001032
	add r0, r4, r2
	add r0, r3, r0
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _080C5282
	ldr r1, _080C5294  @ =0x00000FF2
	add r0, r4, r1
	add r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #215
	bls _080C527C
	add r0, r0, #10
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #2
	bhi _080C5282
_080C527C:
	add r0, r5, #0
	bl sub_080C5298
_080C5282:
	pop {r4,r5}
	pop {r0}
	bx r0
_080C5288:
	.4byte gRam
_080C528C:
	.4byte 0x00000EC6
_080C5290:
	.4byte 0x00001032
_080C5294:
	.4byte 0x00000FF2
	THUMB_FUNC_END sub_080C523C

	THUMB_FUNC_START sub_080C5298
sub_080C5298: @ 0x080C5298
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080C52D0  @ =gRam
	ldr r3, _080C52D4  @ =0x00000FF2
	add r1, r2, r3
	add r1, r0, r1
	ldrb r1, [r1]
	lsl r1, r1, #4
	ldr r3, _080C52D8  @ =0x00000EC5
	add r2, r2, r3
	ldrb r2, [r2]
	orr r1, r1, r2
	ldr r3, _080C52DC  @ =gUnknown_0200BBA0
	add r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080C52E0  @ =gUnknown_0817E924
	lsl r2, r2, #3
	orr r1, r1, r2
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r1, r1, r3
	ldrb r1, [r1]
	bl sub_080C414C
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C52D0:
	.4byte gRam
_080C52D4:
	.4byte 0x00000FF2
_080C52D8:
	.4byte 0x00000EC5
_080C52DC:
	.4byte gUnknown_0200BBA0
_080C52E0:
	.4byte gUnknown_0817E924
	THUMB_FUNC_END sub_080C5298

	THUMB_FUNC_START sub_080C52E4
sub_080C52E4: @ 0x080C52E4
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r0, _080C5318  @ =gRam
	ldr r2, _080C531C  @ =0x00000FF2
	add r0, r0, r2
	add r0, r4, r0
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080CEB84
	add r0, r4, #0
	bl sub_080CF6C0
	add r0, r4, #0
	mov r1, #121
	bl sub_080CF140
	add r0, r4, #0
	bl sub_080C536C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C5318:
	.4byte gRam
_080C531C:
	.4byte 0x00000FF2
	THUMB_FUNC_END sub_080C52E4

	THUMB_FUNC_START sub_080C5320
sub_080C5320: @ 0x080C5320
	push {r4,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	mov r2, #0
	ldr r1, _080C535C  @ =gRam
	ldr r4, _080C5360  @ =0x00000EC5
	add r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #12
	bhi _080C534E
	mov r2, #20
	ldr r4, _080C5364  @ =0x00000FF2
	add r0, r1, r4
	add r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #9
	beq _080C534E
	mov r2, #15
	cmp r0, #83
	beq _080C534C
	cmp r0, #24
	bne _080C534E
_080C534C:
	mov r2, #11
_080C534E:
	ldr r4, _080C5368  @ =0x00001072
	add r0, r1, r4
	add r0, r3, r0
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
_080C535C:
	.4byte gRam
_080C5360:
	.4byte 0x00000EC5
_080C5364:
	.4byte 0x00000FF2
_080C5368:
	.4byte 0x00001072
	THUMB_FUNC_END sub_080C5320

	THUMB_FUNC_START sub_080C536C
sub_080C536C: @ 0x080C536C
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080C5388  @ =gRam
	ldr r3, _080C538C  @ =0x000010C2
	add r1, r2, r3
	add r1, r0, r1
	mov r3, #0
	strb r3, [r1]
	ldr r1, _080C5390  @ =0x00000EB5
	add r2, r2, r1
	add r0, r0, r2
	strb r3, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080C5388:
	.4byte gRam
_080C538C:
	.4byte 0x000010C2
_080C5390:
	.4byte 0x00000EB5
	THUMB_FUNC_END sub_080C536C

	THUMB_FUNC_START sub_080C5394
sub_080C5394: @ 0x080C5394
	push {r4,r5,lr}
	add r5, r0, #0
	lsl r1, r1, #24
	lsr r2, r1, #24
	ldr r0, _080C53C0  @ =gRam
	ldr r1, _080C53C4  @ =0x00000E75
	add r0, r0, r1
	add r0, r2, r0
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #0
	beq _080C53C8
	add r0, r5, #0
	add r1, r2, #0
	bl sub_080C555C
	lsl r0, r0, #24
	lsr r0, r0, #24
	b _080C53D2
_080C53C0:
	.4byte gRam
_080C53C4:
	.4byte 0x00000E75
_080C53C8:
	add r0, r2, #0
	bl sub_080C3AC8
	strb r4, [r5]
	mov r0, #1
_080C53D2:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C5394

	THUMB_FUNC_START sub_080C53D8
sub_080C53D8: @ 0x080C53D8
	mov r1, #0
	strb r1, [r0]
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_080C53D8

	THUMB_FUNC_START sub_080C53E0
sub_080C53E0: @ 0x080C53E0
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r1, r1, #24
	lsr r3, r1, #24
	ldr r0, _080C540C  @ =gRam
	ldr r1, _080C5410  @ =0x000016D5
	add r2, r0, r1
	ldr r1, _080C5414  @ =gUnknown_081720B4
	ldr r5, _080C5418  @ =0x00000FB2
	add r0, r0, r5
	add r0, r3, r0
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080C541C
	add r0, r4, #0
	add r1, r3, #0
	bl sub_080C54B8
	b _080C5424
_080C540C:
	.4byte gRam
_080C5410:
	.4byte 0x000016D5
_080C5414:
	.4byte gUnknown_081720B4
_080C5418:
	.4byte 0x00000FB2
_080C541C:
	add r0, r4, #0
	add r1, r3, #0
	bl sub_080C5488
_080C5424:
	lsl r0, r0, #24
	lsr r0, r0, #24
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C53E0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C5430
sub_080C5430: @ 0x080C5430
	push {r4,r5,lr}
	add r5, r0, #0
	lsl r1, r1, #24
	lsr r4, r1, #24
	ldr r0, _080C5464  @ =gRam
	ldr r1, _080C5468  @ =0x000016D5
	add r3, r0, r1
	ldr r2, _080C546C  @ =gUnknown_081720B4
	ldr r1, _080C5470  @ =0x00000FB2
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	lsr r0, r0, #1
	mov r1, #3
	eor r0, r0, r1
	add r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080C5474
	add r0, r5, #0
	add r1, r4, #0
	bl sub_080C54B8
	b _080C547C
	.byte 0x00
	.byte 0x00
_080C5464:
	.4byte gRam
_080C5468:
	.4byte 0x000016D5
_080C546C:
	.4byte gUnknown_081720B4
_080C5470:
	.4byte 0x00000FB2
_080C5474:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_080C5488
_080C547C:
	lsl r0, r0, #24
	lsr r0, r0, #24
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C5430

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C5488
sub_080C5488: @ 0x080C5488
	push {r4-r6,lr}
	add r6, r0, #0
	lsl r4, r1, #24
	lsr r4, r4, #24
	add r1, r4, #0
	bl sub_080C54B8
	ldr r0, _080C54B0  @ =gRam
	ldr r1, _080C54B4  @ =0x000010C2
	add r0, r0, r1
	add r4, r4, r0
	mov r5, #0
	strb r5, [r4]
	bl sub_080C43DC
	strb r5, [r6]
	mov r0, #1
	pop {r4-r6}
	pop {r1}
	bx r1
_080C54B0:
	.4byte gRam
_080C54B4:
	.4byte 0x000010C2
	THUMB_FUNC_END sub_080C5488

	THUMB_FUNC_START sub_080C54B8
sub_080C54B8: @ 0x080C54B8
	push {r4,r5,lr}
	add r5, r0, #0
	lsl r4, r1, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080C3AC8
	add r0, r4, #0
	mov r1, #32
	bl sub_080C4378
	ldr r0, _080C54EC  @ =gRam
	ldr r1, _080C54F0  @ =0x000016F9
	add r2, r0, r1
	mov r3, #0
	mov r1, #16
	strb r1, [r2]
	ldr r2, _080C54F4  @ =0x000016F8
	add r0, r0, r2
	strb r1, [r0]
	strb r3, [r5]
	mov r0, #1
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C54EC:
	.4byte gRam
_080C54F0:
	.4byte 0x000016F9
_080C54F4:
	.4byte 0x000016F8
	THUMB_FUNC_END sub_080C54B8

	THUMB_FUNC_START sub_080C54F8
sub_080C54F8: @ 0x080C54F8
	push {r4-r6,lr}
	add r6, r0, #0
	lsl r1, r1, #24
	lsr r5, r1, #24
	add r0, r5, #0
	mov r1, #32
	bl sub_080C4378
	ldr r0, _080C553C  @ =gRam
	ldr r1, _080C5540  @ =0x000016F9
	add r2, r0, r1
	mov r1, #144
	strb r1, [r2]
	ldr r1, _080C5544  @ =0x000016F8
	add r2, r0, r1
	mov r1, #16
	strb r1, [r2]
	ldr r1, _080C5548  @ =0x00000E75
	add r0, r0, r1
	add r0, r5, r0
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #0
	beq _080C554C
	add r0, r6, #0
	add r1, r5, #0
	bl sub_080C555C
	lsl r0, r0, #24
	lsr r0, r0, #24
	b _080C5556
_080C553C:
	.4byte gRam
_080C5540:
	.4byte 0x000016F9
_080C5544:
	.4byte 0x000016F8
_080C5548:
	.4byte 0x00000E75
_080C554C:
	add r0, r5, #0
	bl sub_080C3AC8
	strb r4, [r6]
	mov r0, #1
_080C5556:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C54F8

	THUMB_FUNC_START sub_080C555C
sub_080C555C: @ 0x080C555C
	push {r4-r7,lr}
	add r7, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r6, r1, #0
	ldr r4, _080C5598  @ =gRam
	ldr r0, _080C559C  @ =0x000016F9
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080C5584
	add r0, r1, #0
	mov r1, #4
	bl sub_080C4378
	ldr r0, _080C55A0  @ =0x000016F8
	add r1, r4, r0
	mov r0, #16
	strb r0, [r1]
	strb r0, [r5]
_080C5584:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080C55A4
	lsl r0, r0, #24
	lsr r0, r0, #24
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C5598:
	.4byte gRam
_080C559C:
	.4byte 0x000016F9
_080C55A0:
	.4byte 0x000016F8
	THUMB_FUNC_END sub_080C555C

	THUMB_FUNC_START sub_080C55A4
sub_080C55A4: @ 0x080C55A4
	push {r4,lr}
	add r4, r0, #0
	bl sub_080C43DC
	mov r0, #0
	strb r0, [r4]
	mov r0, #1
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C55A4

	THUMB_FUNC_START sub_080C55B8
sub_080C55B8: @ 0x080C55B8
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	lsl r4, r1, #24
	lsr r4, r4, #24
	add r0, r4, #0
	mov r1, #48
	bl sub_080C4378
	ldr r5, _080C5604  @ =gRam
	ldr r0, _080C5608  @ =0x000016F9
	add r1, r5, r0
	mov r6, #0
	mov r0, #144
	strb r0, [r1]
	ldr r0, _080C560C  @ =0x000016F8
	add r1, r5, r0
	mov r0, #16
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #13
	bl sub_080CF0AC
	ldr r0, _080C5610  @ =0x00000FD2
	add r5, r5, r0
	add r4, r4, r5
	mov r0, #48
	strb r0, [r4]
	mov r0, r8
	strb r6, [r0]
	mov r0, #1
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C5604:
	.4byte gRam
_080C5608:
	.4byte 0x000016F9
_080C560C:
	.4byte 0x000016F8
_080C5610:
	.4byte 0x00000FD2
	THUMB_FUNC_END sub_080C55B8

	THUMB_FUNC_START sub_080C5614
sub_080C5614: @ 0x080C5614
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r7, #0
	ldr r1, _080C5670  @ =gRam
	ldr r2, _080C5674  @ =0x000015F7
	add r0, r1, r2
	ldrb r0, [r0]
	add r6, r1, #0
	cmp r0, #0
	bne _080C5642
	ldr r1, _080C5678  @ =0x000009B2
	add r0, r6, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080C5642
	ldr r2, _080C567C  @ =0x00000D94
	add r0, r6, r2
	add r0, r4, r0
	mov r1, #48
	strb r1, [r0]
_080C5642:
	add r5, r6, #0
	ldr r1, _080C5680  @ =0x00001610
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080C56EE
	ldr r2, _080C5684  @ =0x00000FE2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C5660
	mov r0, #12
	bl sub_080CF3A0
_080C5660:
	ldr r1, _080C5688  @ =0x00001062
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C568C
	mov r7, #1
	b _080C56EE
_080C5670:
	.4byte gRam
_080C5674:
	.4byte 0x000015F7
_080C5678:
	.4byte 0x000009B2
_080C567C:
	.4byte 0x00000D94
_080C5680:
	.4byte 0x00001610
_080C5684:
	.4byte 0x00000FE2
_080C5688:
	.4byte 0x00001062
_080C568C:
	ldr r2, _080C56C8  @ =0x00000FF2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r3, [r0]
	ldr r0, _080C56CC  @ =gUnknown_081720E3
	add r2, r3, #0
	sub r2, r2, #216
	add r0, r2, r0
	ldrb r1, [r0]
	cmp r1, #0
	bne _080C56E8
	ldr r0, _080C56D0  @ =gUnknown_081720D4
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C56E0
	cmp r0, #2
	bne _080C56C0
	cmp r3, #230
	bne _080C56D8
	ldr r1, _080C56D4  @ =0x00001002
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #1
	bne _080C56D8
_080C56C0:
	add r0, r4, #0
	bl sub_080C59CC
	b _080C56EE
_080C56C8:
	.4byte 0x00000FF2
_080C56CC:
	.4byte gUnknown_081720E3
_080C56D0:
	.4byte gUnknown_081720D4
_080C56D4:
	.4byte 0x00001002
_080C56D8:
	add r0, r4, #0
	bl sub_080C6240
	b _080C56EE
_080C56E0:
	add r0, r4, #0
	bl sub_080C58F0
	b _080C56EE
_080C56E8:
	add r0, r4, #0
	bl sub_080C56F8
_080C56EE:
	add r0, r7, #0
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C5614

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C56F8
sub_080C56F8: @ 0x080C56F8
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
	mov r0, #255
	lsl r0, r0, #24
	add r1, r1, r0
	lsr r1, r1, #24
	lsl r2, r1, #1
	add r2, r2, r1
	mov r0, #128
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #31
	add r0, r0, r2
	mov r10, r0
	mov r5, #2
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r9
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C57C4
	ldr r2, _080C57D4  @ =gRam
	ldr r1, _080C57D8  @ =0x00001082
	add r0, r2, r1
	add r0, r0, r9
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C5748
	mov r5, #1
_080C5748:
	add r7, sp, #4
	mov r8, r2
_080C574C:
	lsl r6, r5, #24
	asr r6, r6, #24
	mov r4, r10
	add r5, r4, r6
	lsl r5, r5, #16
	lsr r5, r5, #16
	ldr r0, _080C57DC  @ =gUnknown_03003E74
	ldrb r1, [r7]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r8
	ldr r1, _080C57E0  @ =gUnknown_081720F2
	lsl r3, r5, #1
	add r1, r3, r1
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r4, _080C57E4  @ =0x00000964
	add r4, r4, r8
	ldr r2, _080C57E8  @ =gUnknown_08172116
	add r3, r3, r2
	ldrh r2, [r3]
	ldrh r4, [r4]
	add r2, r2, r4
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080C57EC  @ =gUnknown_0817213A
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080C57F0  @ =gUnknown_03002B99
	ldrb r4, [r4]
	lsl r4, r4, #24
	asr r4, r4, #24
	lsl r4, r4, #8
	orr r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r4, _080C57F4  @ =gUnknown_0817214C
	add r5, r5, r4
	ldrb r4, [r5]
	str r4, [sp]
	bl sub_080C6368
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	sub r6, r6, #1
	lsl r6, r6, #24
	lsr r5, r6, #24
	cmp r6, #0
	bge _080C574C
	mov r0, r9
	bl sub_080C6230
_080C57C4:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080C57D4:
	.4byte gRam
_080C57D8:
	.4byte 0x00001082
_080C57DC:
	.4byte gUnknown_03003E74
_080C57E0:
	.4byte gUnknown_081720F2
_080C57E4:
	.4byte 0x00000964
_080C57E8:
	.4byte gUnknown_08172116
_080C57EC:
	.4byte gUnknown_0817213A
_080C57F0:
	.4byte gUnknown_03002B99
_080C57F4:
	.4byte gUnknown_0817214C
	THUMB_FUNC_END sub_080C56F8

	THUMB_FUNC_START sub_080C57F8
sub_080C57F8: @ 0x080C57F8
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsl r1, r1, #24
	ldr r2, _080C5878  @ =gRam
	ldr r3, _080C587C  @ =0x00000ED2
	add r0, r2, r3
	add r0, r4, r0
	lsr r1, r1, #24
	ldrb r0, [r0]
	add r1, r1, r0
	add r3, r3, #32
	add r0, r2, r3
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r0, _080C5880  @ =0x00000964
	add r5, r2, r0
	strh r1, [r5]
	ldr r3, _080C5884  @ =0x000010D2
	add r0, r2, r3
	add r0, r4, r0
	ldrb r0, [r0]
	add r3, r2, #0
	cmp r0, #0
	bne _080C58DA
	ldr r2, _080C5888  @ =0x00000FA2
	add r0, r3, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #10
	bne _080C5848
	ldr r2, _080C588C  @ =0x0000140C
	add r0, r3, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #3
	beq _080C58DA
_080C5848:
	ldr r2, _080C5890  @ =0x00000958
	add r0, r3, r2
	ldrh r0, [r0]
	sub r0, r1, r0
	lsl r0, r0, #16
	lsr r0, r0, #16
	strh r0, [r5]
	add r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #255
	bhi _080C58DA
	ldr r1, _080C5894  @ =0x00001032
	add r0, r3, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	bne _080C5898
	mov r5, #204
	mov r6, #2
	b _080C589C
	.byte 0x00
	.byte 0x00
_080C5878:
	.4byte gRam
_080C587C:
	.4byte 0x00000ED2
_080C5880:
	.4byte 0x00000964
_080C5884:
	.4byte 0x000010D2
_080C5888:
	.4byte 0x00000FA2
_080C588C:
	.4byte 0x0000140C
_080C5890:
	.4byte 0x00000958
_080C5894:
	.4byte 0x00001032
_080C5898:
	mov r5, #104
	mov r6, #0
_080C589C:
	ldr r2, _080C58E4  @ =gUnknown_03003E74
	ldr r1, _080C58E8  @ =0x00001012
	add r0, r3, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #31
	and r0, r0, r1
	ldrh r2, [r2]
	add r0, r0, r2
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r1, r3, r2
	ldrh r1, [r1]
	ldr r4, _080C58EC  @ =0x00000964
	add r2, r3, r4
	ldrh r2, [r2]
	add r4, r4, #5
	add r3, r3, r4
	ldrb r4, [r3]
	mov r3, #48
	and r3, r3, r4
	mov r4, #8
	orr r3, r3, r4
	lsl r3, r3, #8
	orr r5, r5, r3
	str r6, [sp]
	add r3, r5, #0
	bl sub_080C6004
_080C58DA:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C58E4:
	.4byte gUnknown_03003E74
_080C58E8:
	.4byte 0x00001012
_080C58EC:
	.4byte 0x00000964
	THUMB_FUNC_END sub_080C57F8

	THUMB_FUNC_START sub_080C58F0
sub_080C58F0: @ 0x080C58F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r9, r5
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	add r2, r5, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r0
	cmp r0, #0
	bne _080C599A
	ldr r6, _080C59AC  @ =gRam
	mov r1, #150
	lsl r1, r1, #4
	add r0, r6, r1
	ldrh r0, [r0]
	mov r8, r0
	ldr r2, _080C59B0  @ =0x00000964
	add r0, r6, r2
	ldrh r0, [r0]
	mov r10, r0
	add r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #255
	bhi _080C5982
	ldr r2, _080C59B4  @ =gUnknown_03003E74
	add r0, sp, #4
	ldrb r1, [r0]
	ldrh r0, [r2]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r4, _080C59B8  @ =gUnknown_082272A8
	ldr r7, _080C59BC  @ =0x00000F92
	add r1, r6, r7
	add r1, r5, r1
	ldrb r2, [r1]
	ldr r3, _080C59C0  @ =gUnknown_082273B8
	add r7, r7, #96
	add r1, r6, r7
	add r1, r5, r1
	ldrb r1, [r1]
	lsl r1, r1, #1
	add r1, r1, r3
	ldrh r1, [r1]
	add r2, r2, r1
	add r2, r2, r4
	ldrb r3, [r2]
	ldr r2, _080C59C4  @ =0x00000969
	add r1, r6, r2
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	lsl r1, r1, #8
	orr r3, r3, r1
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r7, r12
	str r7, [sp]
	mov r1, r8
	mov r2, r10
	bl sub_080C6004
_080C5982:
	ldr r1, _080C59C8  @ =0x00001032
	add r0, r6, r1
	add r0, r0, r9
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _080C599A
	mov r0, r9
	mov r1, #2
	bl sub_080C57F8
_080C599A:
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
_080C59AC:
	.4byte gRam
_080C59B0:
	.4byte 0x00000964
_080C59B4:
	.4byte gUnknown_03003E74
_080C59B8:
	.4byte gUnknown_082272A8
_080C59BC:
	.4byte 0x00000F92
_080C59C0:
	.4byte gUnknown_082273B8
_080C59C4:
	.4byte 0x00000969
_080C59C8:
	.4byte 0x00001032
	THUMB_FUNC_END sub_080C58F0

	THUMB_FUNC_START sub_080C59CC
sub_080C59CC: @ 0x080C59CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	add r2, r7, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	cmp r0, #0
	bne _080C5A98
	ldr r5, _080C5AA8  @ =gRam
	mov r1, #150
	lsl r1, r1, #4
	add r0, r5, r1
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r2, _080C5AAC  @ =0x00000964
	add r0, r5, r2
	ldrh r2, [r0]
	add r6, r2, #0
	add r6, r6, #8
	lsl r6, r6, #16
	lsr r6, r6, #16
	str r6, [sp, #12]
	ldr r4, _080C5AB0  @ =gUnknown_082272A8
	ldr r3, _080C5AB4  @ =0x00000F92
	add r0, r5, r3
	add r0, r7, r0
	ldrb r1, [r0]
	ldr r3, _080C5AB8  @ =gUnknown_082273B8
	ldr r6, _080C5ABC  @ =0x00000FF2
	add r0, r5, r6
	add r0, r7, r0
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	add r1, r1, r0
	add r1, r1, r4
	ldrb r4, [r1]
	ldr r0, _080C5AC0  @ =gUnknown_03003E74
	mov r9, r0
	add r0, sp, #4
	ldrb r1, [r0]
	mov r3, r9
	ldrh r0, [r3]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r6, _080C5AC4  @ =0x00000969
	ldrsb r3, [r6, r5]
	lsl r3, r3, #8
	orr r3, r3, r4
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r1, r10
	str r1, [sp]
	ldr r1, [sp, #8]
	bl sub_080C6368
	add r0, sp, #4
	ldrb r1, [r0]
	mov r2, r9
	ldrh r0, [r2]
	add r0, r0, r1
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r4, r4, #32
	ldrsb r1, [r6, r5]
	lsl r1, r1, #8
	orr r4, r4, r1
	lsl r4, r4, #16
	lsr r4, r4, #16
	mov r3, r10
	str r3, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #12]
	add r3, r4, #0
	bl sub_080C6368
	ldr r6, _080C5AC8  @ =0x00001032
	add r5, r5, r6
	add r5, r7, r5
	ldrb r1, [r5]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _080C5A98
	add r0, r7, #0
	mov r1, #10
	bl sub_080C57F8
_080C5A98:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080C5AA8:
	.4byte gRam
_080C5AAC:
	.4byte 0x00000964
_080C5AB0:
	.4byte gUnknown_082272A8
_080C5AB4:
	.4byte 0x00000F92
_080C5AB8:
	.4byte gUnknown_082273B8
_080C5ABC:
	.4byte 0x00000FF2
_080C5AC0:
	.4byte gUnknown_03003E74
_080C5AC4:
	.4byte 0x00000969
_080C5AC8:
	.4byte 0x00001032
	THUMB_FUNC_END sub_080C59CC

	THUMB_FUNC_START sub_080C5ACC
sub_080C5ACC: @ 0x080C5ACC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	str r0, [sp]
	mov r9, r1
	lsl r2, r2, #24
	lsr r6, r2, #24
	mov r7, #0
	mov r0, #0
	mov r10, r0
	ldr r3, _080C5B5C  @ =gRam
	ldr r1, _080C5B60  @ =0x000010D2
	add r0, r3, r1
	add r0, r6, r0
	strb r7, [r0]
	ldr r2, _080C5B64  @ =0x00001622
	add r0, r3, r2
	ldrb r1, [r0]
	ldr r4, _080C5B68  @ =0x00001623
	add r0, r3, r4
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldr r2, _080C5B6C  @ =0x00000952
	add r0, r3, r2
	ldrh r0, [r0]
	sub r1, r1, r0
	lsl r1, r1, #16
	lsr r2, r1, #16
	mov r4, #150
	lsl r4, r4, #4
	add r0, r3, r4
	strb r2, [r0]
	lsr r1, r1, #24
	add r4, r4, #1
	add r0, r3, r4
	strb r1, [r0]
	add r2, r2, #64
	lsl r2, r2, #16
	ldr r0, _080C5B70  @ =0x016F0000
	cmp r2, r0
	bls _080C5B80
	ldr r1, _080C5B74  @ =0x00001624
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080C5B78  @ =0x00001625
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	sub r4, r4, #9
	add r0, r3, r4
	ldrh r0, [r0]
	sub r1, r1, r0
	ldr r2, _080C5B7C  @ =0x00000968
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	add r4, r4, #12
	add r0, r3, r4
	strb r1, [r0]
	lsr r1, r1, #8
	sub r2, r2, #3
	add r0, r3, r2
	strb r1, [r0]
	b _080C5C7A
	.byte 0x00
	.byte 0x00
_080C5B5C:
	.4byte gRam
_080C5B60:
	.4byte 0x000010D2
_080C5B64:
	.4byte 0x00001622
_080C5B68:
	.4byte 0x00001623
_080C5B6C:
	.4byte 0x00000952
_080C5B70:
	.4byte 0x016F0000
_080C5B74:
	.4byte 0x00001624
_080C5B78:
	.4byte 0x00001625
_080C5B7C:
	.4byte 0x00000968
_080C5B80:
	ldr r4, _080C5C48  @ =0x00001142
	add r0, r3, r4
	add r0, r6, r0
	ldrb r0, [r0]
	ldr r1, _080C5C4C  @ =0x00000968
	add r2, r3, r1
	strb r0, [r2]
	ldr r4, _080C5C50  @ =0x00000969
	add r0, r3, r4
	strb r7, [r0]
	ldr r0, _080C5C54  @ =0x00001624
	add r0, r0, r3
	mov r8, r0
	ldrb r1, [r0]
	ldr r4, _080C5C58  @ =0x00001625
	add r4, r4, r3
	mov r12, r4
	ldrb r0, [r4]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldr r4, _080C5C5C  @ =0x00000958
	add r0, r3, r4
	ldrh r5, [r0]
	sub r1, r1, r5
	lsl r1, r1, #16
	lsr r4, r1, #16
	ldrb r0, [r2]
	sub r0, r4, r0
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r2, _080C5C60  @ =0x00000964
	add r1, r3, r2
	strb r0, [r1]
	lsr r0, r0, #8
	add r2, r2, #1
	add r1, r3, r2
	strb r0, [r1]
	ldr r1, _080C5C64  @ =0x000009B2
	add r0, r3, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080C5C20
	add r2, r2, #72
	add r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C5C20
	add r1, r1, #47
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C5C20
	mov r0, #255
	and r0, r0, r5
	cmp r0, #16
	ble _080C5C20
	cmp r0, #80
	bgt _080C5C20
	add r2, r2, #125
	add r0, r3, r2
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080C5C20
	mov r2, r8
	ldrb r1, [r2]
	mov r4, r12
	ldrb r0, [r4]
	lsl r0, r0, #8
	orr r1, r1, r0
	lsl r0, r5, #16
	asr r0, r0, #24
	lsl r0, r0, #8
	mov r2, #16
	orr r0, r0, r2
	sub r1, r1, r0
	lsl r1, r1, #16
	lsr r4, r1, #16
_080C5C20:
	lsl r0, r4, #16
	mov r1, #128
	lsl r1, r1, #15
	add r0, r0, r1
	ldr r1, _080C5C68  @ =0x016F0000
	cmp r0, r1
	bls _080C5C3E
	ldr r2, _080C5C6C  @ =0x00001132
	add r0, r3, r2
	add r0, r6, r0
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _080C5C70
_080C5C3E:
	mov r0, #0
	mov r4, r9
	strb r0, [r4]
	b _080C5C74
	.byte 0x00
	.byte 0x00
_080C5C48:
	.4byte 0x00001142
_080C5C4C:
	.4byte 0x00000968
_080C5C50:
	.4byte 0x00000969
_080C5C54:
	.4byte 0x00001624
_080C5C58:
	.4byte 0x00001625
_080C5C5C:
	.4byte 0x00000958
_080C5C60:
	.4byte 0x00000964
_080C5C64:
	.4byte 0x000009B2
_080C5C68:
	.4byte 0x016F0000
_080C5C6C:
	.4byte 0x00001132
_080C5C70:
	mov r0, #1
	mov r10, r0
_080C5C74:
	mov r1, r10
	cmp r1, #0
	beq _080C5CA6
_080C5C7A:
	ldr r4, _080C5CF4  @ =gRam
	ldr r2, _080C5CF8  @ =0x000010D2
	add r1, r4, r2
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080C5CFC  @ =0x00000E75
	add r0, r4, r1
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	blt _080C5C9E
	add r0, r6, #0
	bl sub_080CB1E0
_080C5C9E:
	mov r7, #1
	mov r2, r9
	strb r7, [r2]
	add r3, r4, #0
_080C5CA6:
	ldr r4, _080C5D00  @ =0x00001122
	add r1, r3, r4
	add r1, r6, r1
	ldr r2, _080C5D04  @ =0x00000D94
	add r0, r3, r2
	add r0, r6, r0
	ldrb r1, [r1]
	ldrb r0, [r0]
	eor r1, r1, r0
	ldr r4, _080C5D08  @ =0x00000969
	add r0, r3, r4
	mov r2, #0
	strb r1, [r0]
	ldr r1, _080C5D0C  @ =0x00000968
	add r0, r3, r1
	strb r2, [r0]
	sub r4, r4, #9
	add r0, r3, r4
	ldrb r1, [r0]
	ldr r4, _080C5D10  @ =0x000015E8
	add r0, r3, r4
	strb r1, [r0]
	ldr r1, _080C5D14  @ =0x00000964
	add r0, r3, r1
	ldrb r1, [r0]
	add r4, r4, #1
	add r0, r3, r4
	strb r1, [r0]
	ldr r0, [sp]
	strb r2, [r0]
	add r0, r7, #0
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
_080C5CF4:
	.4byte gRam
_080C5CF8:
	.4byte 0x000010D2
_080C5CFC:
	.4byte 0x00000E75
_080C5D00:
	.4byte 0x00001122
_080C5D04:
	.4byte 0x00000D94
_080C5D08:
	.4byte 0x00000969
_080C5D0C:
	.4byte 0x00000968
_080C5D10:
	.4byte 0x000015E8
_080C5D14:
	.4byte 0x00000964
	THUMB_FUNC_END sub_080C5ACC

	THUMB_FUNC_START sub_080C5D18
sub_080C5D18: @ 0x080C5D18
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080C5D80  @ =gRam
	ldr r1, _080C5D84  @ =0x000010F2
	add r0, r5, r1
	add r0, r4, r0
	mov r2, #161
	lsl r2, r2, #4
	add r1, r5, r2
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080C5D98
	add r0, r4, #0
	bl sub_080C36D8
	ldr r1, _080C5D88  @ =0x0000097D
	add r0, r5, r1
	ldrb r0, [r0]
	add r0, r0, #16
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #31
	bhi _080C5D98
	add r0, r4, #0
	bl sub_080C3028
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080C5D8C  @ =0x0000097C
	add r0, r5, r1
	ldrb r0, [r0]
	add r0, r0, #32
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #71
	bhi _080C5D98
	ldr r1, _080C5D90  @ =0x00001012
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #31
	and r0, r0, r1
	add r0, r0, #1
	lsl r0, r0, #2
	cmp r2, #0
	bne _080C5D94
	bl sub_080CF388
	b _080C5D98
	.byte 0x00
	.byte 0x00
_080C5D80:
	.4byte gRam
_080C5D84:
	.4byte 0x000010F2
_080C5D88:
	.4byte 0x0000097D
_080C5D8C:
	.4byte 0x0000097C
_080C5D90:
	.4byte 0x00001012
_080C5D94:
	bl sub_080CF3A0
_080C5D98:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C5D18

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C5DA0
sub_080C5DA0: @ 0x080C5DA0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r2, #0
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r7, r1, #24
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r1, r7, #0
	add r2, r4, #0
	bl sub_080C5F10
	add r6, r4, #0
	ldr r0, _080C5DF8  @ =gUnknown_03003E74
	ldrh r0, [r0]
	lsl r0, r0, #3
	ldr r1, _080C5DFC  @ =gUnknown_03002780
	add r4, r0, r1
	cmp r6, #0
	bge _080C5DD2
	b _080C5EE0
_080C5DD2:
	mov r0, #1
	mov r10, r0
	ldr r1, _080C5E00  @ =0xFFFFFE00
	mov r9, r1
_080C5DDA:
	mov r0, #128
	and r0, r0, r7
	cmp r0, #0
	beq _080C5E04
	ldrh r2, [r4, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	mov r0, #255
	and r1, r1, r0
	mov r3, r9
	and r2, r2, r3
	orr r2, r2, r1
	strh r2, [r4, #2]
	b _080C5E2C
	.byte 0x00
	.byte 0x00
_080C5DF8:
	.4byte gUnknown_03003E74
_080C5DFC:
	.4byte gUnknown_03002780
_080C5E00:
	.4byte 0xFFFFFE00
_080C5E04:
	ldrh r2, [r4, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	add r0, r7, #0
	mov r3, r10
	and r0, r0, r3
	lsl r0, r0, #8
	orr r1, r1, r0
	mov r0, r9
	and r2, r2, r0
	orr r2, r2, r1
	strh r2, [r4, #2]
	lsr r1, r7, #1
	and r1, r1, r3
	lsl r1, r1, #6
	ldrb r2, [r4, #3]
	mov r0, #63
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #3]
_080C5E2C:
	mov r3, #0
	ldr r5, _080C5EF0  @ =gRam
	ldr r1, _080C5EF4  @ =0x0000096D
	add r0, r5, r1
	ldrb r1, [r0]
	ldrb r0, [r4, #2]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r0, #0
	mov r0, #128
	mov r8, r0
	add r0, r2, #0
	mov r1, r8
	and r0, r0, r1
	cmp r0, #0
	beq _080C5E50
	mov r3, #255
_080C5E50:
	ldr r1, _080C5EF8  @ =0x00000964
	add r0, r5, r1
	ldrb r1, [r0]
	add r1, r1, r2
	ldr r2, _080C5EFC  @ =0x00000965
	add r0, r5, r2
	ldrb r0, [r0]
	add r0, r0, r3
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _080C5F00  @ =0x00000968
	add r0, r5, r3
	strh r1, [r0]
	bl sub_080C65B0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080C5E88
	ldrh r2, [r4, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	mov r0, #128
	lsl r0, r0, #1
	orr r1, r1, r0
	mov r0, r9
	and r2, r2, r0
	orr r2, r2, r1
	strh r2, [r4, #2]
_080C5E88:
	mov r3, #0
	ldr r2, _080C5F04  @ =0x0000096C
	add r1, r5, r2
	ldrb r0, [r4]
	ldrb r1, [r1]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r0, r2, #0
	mov r1, r8
	and r0, r0, r1
	cmp r0, #0
	beq _080C5EA4
	mov r3, #255
_080C5EA4:
	mov r1, #150
	lsl r1, r1, #4
	add r0, r5, r1
	ldrb r1, [r0]
	add r1, r1, r2
	ldr r2, _080C5F08  @ =0x00000961
	add r0, r5, r2
	ldrb r0, [r0]
	add r0, r0, r3
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _080C5F0C  @ =0x00000971
	add r0, r5, r3
	strb r1, [r0]
	lsr r1, r1, #8
	add r2, r2, #19
	add r0, r5, r2
	strb r1, [r0]
	bl sub_080C5FB4
	lsl r0, r0, #24
	cmp r0, #0
	beq _080C5ED6
	mov r0, #240
	strb r0, [r4]
_080C5ED6:
	sub r6, r6, #1
	add r4, r4, #8
	cmp r6, #0
	blt _080C5EE0
	b _080C5DDA
_080C5EE0:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C5EF0:
	.4byte gRam
_080C5EF4:
	.4byte 0x0000096D
_080C5EF8:
	.4byte 0x00000964
_080C5EFC:
	.4byte 0x00000965
_080C5F00:
	.4byte 0x00000968
_080C5F04:
	.4byte 0x0000096C
_080C5F08:
	.4byte 0x00000961
_080C5F0C:
	.4byte 0x00000971
	THUMB_FUNC_END sub_080C5DA0

	THUMB_FUNC_START sub_080C5F10
sub_080C5F10: @ 0x080C5F10
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _080C5F88  @ =gRam
	ldr r5, _080C5F8C  @ =0x00000975
	add r3, r4, r5
	strb r1, [r3]
	mov r3, #151
	lsl r3, r3, #4
	add r1, r4, r3
	strb r2, [r1]
	ldr r5, _080C5F90  @ =0x00000ED2
	add r2, r4, r5
	add r2, r0, r2
	ldrb r3, [r2]
	mov r5, #150
	lsl r5, r5, #4
	add r1, r4, r5
	strb r3, [r1]
	ldr r3, _080C5F94  @ =0x00000958
	add r1, r4, r3
	ldrb r3, [r1]
	ldrb r1, [r2]
	sub r1, r1, r3
	add r5, r5, #12
	add r2, r4, r5
	strb r1, [r2]
	ldr r2, _080C5F98  @ =0x00000EF2
	add r1, r4, r2
	add r1, r0, r1
	ldrb r2, [r1]
	ldr r3, _080C5F9C  @ =0x00000961
	add r1, r4, r3
	strb r2, [r1]
	ldr r5, _080C5FA0  @ =0x00000EE2
	add r2, r4, r5
	add r2, r0, r2
	ldrb r3, [r2]
	ldr r5, _080C5FA4  @ =0x00000964
	add r1, r4, r5
	strb r3, [r1]
	ldr r3, _080C5FA8  @ =0x00000952
	add r1, r4, r3
	ldrb r3, [r1]
	ldrb r1, [r2]
	sub r1, r1, r3
	add r5, r5, #9
	add r2, r4, r5
	strb r1, [r2]
	ldr r2, _080C5FAC  @ =0x00000F02
	add r1, r4, r2
	add r0, r0, r1
	ldrb r0, [r0]
	ldr r3, _080C5FB0  @ =0x00000965
	add r4, r4, r3
	strb r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C5F88:
	.4byte gRam
_080C5F8C:
	.4byte 0x00000975
_080C5F90:
	.4byte 0x00000ED2
_080C5F94:
	.4byte 0x00000958
_080C5F98:
	.4byte 0x00000EF2
_080C5F9C:
	.4byte 0x00000961
_080C5FA0:
	.4byte 0x00000EE2
_080C5FA4:
	.4byte 0x00000964
_080C5FA8:
	.4byte 0x00000952
_080C5FAC:
	.4byte 0x00000F02
_080C5FB0:
	.4byte 0x00000965
	THUMB_FUNC_END sub_080C5F10

	THUMB_FUNC_START sub_080C5FB4
sub_080C5FB4: @ 0x080C5FB4
	push {r4,lr}
	ldr r2, _080C5FF4  @ =gRam
	ldr r0, _080C5FF8  @ =0x00000974
	add r4, r2, r0
	ldrb r0, [r4]
	ldr r1, _080C5FFC  @ =0x00000971
	add r3, r2, r1
	ldrb r1, [r3]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r0, _080C6000  @ =0x00000958
	add r2, r2, r0
	ldrh r0, [r2]
	sub r0, r0, #16
	sub r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	strb r1, [r3]
	lsl r1, r1, #16
	lsr r0, r1, #24
	strb r0, [r4]
	asr r1, r1, #16
	mov r0, #255
	lsl r0, r0, #8
	and r1, r1, r0
	cmp r1, #0
	beq _080C5FEC
	mov r1, #1
_080C5FEC:
	add r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
_080C5FF4:
	.4byte gRam
_080C5FF8:
	.4byte 0x00000974
_080C5FFC:
	.4byte 0x00000971
_080C6000:
	.4byte 0x00000958
	THUMB_FUNC_END sub_080C5FB4

	THUMB_FUNC_START sub_080C6004
sub_080C6004: @ 0x080C6004
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, #24]
	lsl r0, r0, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsl r3, r3, #16
	lsr r5, r3, #16
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r12, r4
	lsr r0, r0, #13
	ldr r4, _080C614C  @ =gUnknown_03002780
	mov r8, r4
	add r7, r0, r4
	ldr r0, _080C6150  @ =0x000001FF
	add r6, r0, #0
	and r1, r1, r6
	ldrh r4, [r7, #2]
	ldr r0, _080C6154  @ =0xFFFFFE00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r7, #2]
	strb r2, [r7]
	and r5, r5, r6
	ldrh r1, [r7, #4]
	ldr r0, _080C6158  @ =0xFFFFFC00
	and r0, r0, r1
	orr r0, r0, r5
	strh r0, [r7, #4]
	mov r4, #1
	lsr r1, r3, #31
	lsl r1, r1, #5
	ldrb r2, [r7, #3]
	mov r0, #33
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	lsr r1, r3, #30
	and r1, r1, r4
	lsl r1, r1, #4
	mov r2, #17
	neg r2, r2
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r7, #3]
	lsr r1, r3, #25
	mov r0, #7
	and r1, r1, r0
	lsl r1, r1, #4
	ldrb r2, [r7, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r7, #5]
	lsr r3, r3, #28
	mov r1, #3
	and r3, r3, r1
	lsr r2, r0, #4
	ldr r0, _080C615C  @ =gUnknown_081720D0
	add r3, r3, r0
	ldrb r1, [r3]
	ldr r3, _080C6160  @ =0x00000484
	add r8, r8, r3
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #179
	bne _080C60A0
	mov r0, #4
	and r2, r2, r0
	cmp r2, #0
	bne _080C60A0
	cmp r1, #1
	bls _080C60A0
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
_080C60A0:
	mov r4, #3
	and r1, r1, r4
	lsl r1, r1, #2
	ldrb r0, [r7, #5]
	mov r5, #13
	neg r5, r5
	add r6, r5, #0
	and r6, r6, r0
	orr r6, r6, r1
	strb r6, [r7, #5]
	mov r0, r12
	lsr r2, r0, #3
	and r2, r2, r4
	lsl r2, r2, #6
	ldrb r3, [r7, #1]
	mov r0, #63
	add r1, r0, #0
	and r1, r1, r3
	orr r1, r1, r2
	mov r3, r12
	lsr r2, r3, #1
	and r2, r2, r4
	lsl r2, r2, #6
	ldrb r3, [r7, #3]
	and r0, r0, r3
	orr r0, r0, r2
	strb r0, [r7, #3]
	mov r0, #4
	neg r0, r0
	and r1, r1, r0
	and r1, r1, r5
	sub r0, r0, #13
	and r1, r1, r0
	sub r0, r0, #16
	and r1, r1, r0
	strb r1, [r7, #1]
	ldr r5, _080C6164  @ =gRam
	ldr r0, _080C6168  @ =0x000015DC
	add r4, r5, r0
	ldrb r1, [r4]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080C613E
	ldr r1, _080C616C  @ =0x000010C2
	add r0, r5, r1
	ldrb r3, [r4]
	add r0, r0, r3
	ldrb r3, [r0]
	cmp r3, #0
	beq _080C613E
	ldrh r2, [r7, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	mov r0, #1
	and r0, r0, r3
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r3, _080C6150  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldr r0, _080C6154  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r7, #2]
	ldr r1, _080C6170  @ =0x00000D94
	add r0, r5, r1
	ldrb r4, [r4]
	add r0, r0, r4
	ldrb r1, [r0]
	mov r0, #14
	and r0, r0, r1
	cmp r0, #0
	beq _080C613E
	mov r0, #15
	and r6, r6, r0
	mov r0, #128
	orr r6, r6, r0
	strb r6, [r7, #5]
_080C613E:
	add r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C614C:
	.4byte gUnknown_03002780
_080C6150:
	.4byte 0x000001FF
_080C6154:
	.4byte 0xFFFFFE00
_080C6158:
	.4byte 0xFFFFFC00
_080C615C:
	.4byte gUnknown_081720D0
_080C6160:
	.4byte 0x00000484
_080C6164:
	.4byte gRam
_080C6168:
	.4byte 0x000015DC
_080C616C:
	.4byte 0x000010C2
_080C6170:
	.4byte 0x00000D94
	THUMB_FUNC_END sub_080C6004

	THUMB_FUNC_START sub_080C6174
sub_080C6174: @ 0x080C6174
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r10, r1
	mov r4, #0
	cmp r4, r5
	bge _080C61E6
	ldr r0, _080C61F4  @ =gRam
	mov r9, r0
	ldr r0, _080C61F8  @ =gUnknown_03003E74
	mov r8, r0
	ldr r7, _080C61FC  @ =0x00000554
	ldr r0, _080C6200  @ =0x000003FF
	add r6, r0, #0
	ldr r0, _080C6204  @ =0xFFFFFC00
	mov r12, r0
_080C61A0:
	mov r0, r8
	ldrh r2, [r0]
	add r2, r2, r4
	lsl r2, r2, #3
	add r2, r2, r9
	add r2, r2, r7
	ldrh r3, [r2]
	lsl r0, r3, #22
	lsr r0, r0, #22
	mov r1, #255
	and r1, r1, r0
	and r1, r1, r6
	mov r0, r12
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2]
	mov r0, r8
	ldrh r2, [r0]
	add r2, r2, r4
	lsl r2, r2, #3
	add r2, r2, r9
	add r2, r2, r7
	ldrh r3, [r2]
	lsl r0, r3, #22
	lsr r0, r0, #22
	mov r1, r10
	orr r1, r1, r0
	and r1, r1, r6
	mov r0, r12
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2]
	add r4, r4, #1
	cmp r4, r5
	blt _080C61A0
_080C61E6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080C61F4:
	.4byte gRam
_080C61F8:
	.4byte gUnknown_03003E74
_080C61FC:
	.4byte 0x00000554
_080C6200:
	.4byte 0x000003FF
_080C6204:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_080C6174

	THUMB_FUNC_START sub_080C6208
sub_080C6208: @ 0x080C6208
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C2B14
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C6226
	add r0, r4, #0
	bl sub_080C5614
	lsl r0, r0, #24
	lsr r0, r0, #24
	b _080C6228
_080C6226:
	mov r0, #0
_080C6228:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C6208

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C6230
sub_080C6230: @ 0x080C6230
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #10
	bl sub_080C57F8
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C6230

	THUMB_FUNC_START sub_080C6240
sub_080C6240: @ 0x080C6240
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
	bne _080C6264
	mov r0, sp
	ldrb r1, [r0]
	add r0, r4, #0
	bl sub_080C626C
_080C6264:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C6240

	THUMB_FUNC_START sub_080C626C
sub_080C626C: @ 0x080C626C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	add r4, r1, #0
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsl r4, r4, #16
	ldr r5, _080C62FC  @ =gRam
	mov r1, #150
	lsl r1, r1, #4
	add r0, r5, r1
	ldrh r1, [r0]
	ldr r2, _080C6300  @ =0x00000964
	add r0, r5, r2
	ldrh r2, [r0]
	ldr r0, _080C6304  @ =gUnknown_03003E74
	lsr r4, r4, #16
	ldrh r0, [r0]
	add r4, r4, r0
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldr r3, _080C6308  @ =gUnknown_082272A8
	mov r8, r3
	ldr r6, _080C630C  @ =0x00000F92
	add r0, r5, r6
	add r0, r7, r0
	ldrb r3, [r0]
	ldr r0, _080C6310  @ =gUnknown_082273B8
	mov r12, r0
	add r6, r6, #96
	add r0, r5, r6
	add r0, r7, r0
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r0, [r0]
	add r3, r3, r0
	add r3, r3, r8
	ldrb r3, [r3]
	ldr r6, _080C6314  @ =0x00000969
	add r0, r5, r6
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	orr r3, r3, r0
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	bl sub_080C6368
	ldr r0, _080C6318  @ =0x00001032
	add r5, r5, r0
	add r5, r7, r5
	ldrb r1, [r5]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _080C62F0
	add r0, r7, #0
	mov r1, #10
	bl sub_080C57F8
_080C62F0:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080C62FC:
	.4byte gRam
_080C6300:
	.4byte 0x00000964
_080C6304:
	.4byte gUnknown_03003E74
_080C6308:
	.4byte gUnknown_082272A8
_080C630C:
	.4byte 0x00000F92
_080C6310:
	.4byte gUnknown_082273B8
_080C6314:
	.4byte 0x00000969
_080C6318:
	.4byte 0x00001032
	THUMB_FUNC_END sub_080C626C

	THUMB_FUNC_START sub_080C631C
sub_080C631C: @ 0x080C631C
	push {lr}
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl sub_080C5ACC
	mov r0, #0
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C631C

	THUMB_FUNC_START sub_080C632C
sub_080C632C: @ 0x080C632C
	push {lr}
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl sub_080C631C
	lsl r0, r0, #24
	lsr r0, r0, #24
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C632C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C6340
sub_080C6340: @ 0x080C6340
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080C5D18
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C6340

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C6350
sub_080C6350: @ 0x080C6350
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	bl sub_080C5DA0
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C6350

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C6368
sub_080C6368: @ 0x080C6368
	push {r4-r6,lr}
	sub sp, sp, #4
	ldr r4, [sp, #20]
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsl r2, r2, #16
	lsl r3, r3, #16
	lsr r5, r3, #16
	lsl r4, r4, #24
	lsr r4, r4, #24
	lsr r3, r2, #16
	mov r6, #128
	lsl r6, r6, #15
	add r2, r2, r6
	lsr r2, r2, #16
	cmp r2, #255
	bls _080C6390
	mov r3, #192
_080C6390:
	str r4, [sp]
	add r2, r3, #0
	add r3, r5, #0
	bl sub_080C6004
	add sp, sp, #4
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C6368

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C63A4
sub_080C63A4: @ 0x080C63A4
	push {r4-r6,lr}
	sub sp, sp, #4
	ldr r4, [sp, #20]
	ldr r6, [sp, #24]
	lsl r0, r0, #16
	lsr r5, r0, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	lsl r4, r4, #24
	lsr r4, r4, #24
	cmp r1, #255
	bhi _080C63C8
	cmp r2, #255
	bls _080C63CE
_080C63C8:
	mov r2, #240
	mov r0, #1
	b _080C63D0
_080C63CE:
	mov r0, #0
_080C63D0:
	strb r0, [r6]
	str r4, [sp]
	add r0, r5, #0
	bl sub_080C6004
	add sp, sp, #4
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C63A4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C63E4
sub_080C63E4: @ 0x080C63E4
	push {r4-r7,lr}
	sub sp, sp, #4
	ldr r4, [sp, #24]
	lsl r0, r0, #16
	lsr r7, r0, #16
	lsl r1, r1, #16
	lsr r5, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	lsl r3, r3, #16
	lsr r6, r3, #16
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r1, r5, #0
	add r1, r1, #128
	ldr r0, _080C6414  @ =0x0000017F
	cmp r1, r0
	bgt _080C6410
	add r0, r2, #0
	add r0, r0, #16
	cmp r0, #255
	ble _080C6418
_080C6410:
	mov r3, #240
	b _080C642C
_080C6414:
	.4byte 0x0000017F
_080C6418:
	add r3, r2, #0
	ldr r1, _080C6444  @ =gRam
	ldr r2, _080C6448  @ =0x00000965
	add r0, r1, r2
	ldrb r2, [r0]
	mov r0, #1
	and r0, r0, r2
	ldr r2, _080C644C  @ =0x00001735
	add r1, r1, r2
	strb r0, [r1]
_080C642C:
	str r4, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r3, #0
	add r3, r6, #0
	bl sub_080C6004
	add sp, sp, #4
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C6444:
	.4byte gRam
_080C6448:
	.4byte 0x00000965
_080C644C:
	.4byte 0x00001735
	THUMB_FUNC_END sub_080C63E4

	THUMB_FUNC_START sub_080C6450
sub_080C6450: @ 0x080C6450
	push {r4-r7,lr}
	sub sp, sp, #4
	ldr r4, [sp, #24]
	lsl r0, r0, #16
	lsr r7, r0, #16
	lsl r1, r1, #16
	lsr r5, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	add r6, r2, #0
	lsl r3, r3, #16
	lsr r3, r3, #16
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r1, #255
	lsl r1, r1, #8
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	bne _080C6488
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	bne _080C6488
	mov r0, #255
	and r0, r0, r2
	cmp r0, #239
	bls _080C648C
_080C6488:
	mov r2, #240
	b _080C648E
_080C648C:
	add r2, r6, #0
_080C648E:
	str r4, [sp]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_080C6004
	add sp, sp, #4
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C6450

	THUMB_FUNC_START sub_080C64A0
sub_080C64A0: @ 0x080C64A0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r1, #0
	ldr r2, _080C64F8  @ =gRam
	ldr r3, _080C64FC  @ =0x000009B5
	add r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C64EA
	mov r3, #0
	cmp r1, r4
	bge _080C64E8
	mov r8, r2
	ldr r0, _080C6500  @ =gUnknown_03003E74
	mov r12, r0
	ldr r6, _080C6504  @ =0x00000551
	mov r7, #13
	neg r7, r7
	mov r5, #4
_080C64CC:
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, r3
	lsl r0, r0, #3
	add r0, r0, r8
	add r0, r0, r6
	ldrb r2, [r0]
	add r1, r7, #0
	and r1, r1, r2
	orr r1, r1, r5
	strb r1, [r0]
	add r3, r3, #1
	cmp r3, r4
	blt _080C64CC
_080C64E8:
	mov r1, #1
_080C64EA:
	add r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C64F8:
	.4byte gRam
_080C64FC:
	.4byte 0x000009B5
_080C6500:
	.4byte gUnknown_03003E74
_080C6504:
	.4byte 0x00000551
	THUMB_FUNC_END sub_080C64A0

	THUMB_FUNC_START sub_080C6508
sub_080C6508: @ 0x080C6508
	push {r4-r7,lr}
	lsl r0, r0, #16
	lsr r5, r0, #16
	lsl r1, r1, #16
	lsr r6, r1, #16
	lsl r2, r2, #16
	lsr r7, r2, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r12, r3
	mov r1, #1
	neg r1, r1
	ldr r4, _080C6564  @ =gUnknown_03003E6C
	ldrb r0, [r4]
	cmp r0, #30
	bhi _080C655C
	lsl r1, r0, #2
	ldr r3, _080C6568  @ =gRam
	lsl r0, r0, #5
	add r0, r0, r3
	ldr r2, _080C656C  @ =0x00000556
	add r0, r0, r2
	strh r5, [r0]
	add r0, r1, #1
	lsl r0, r0, #3
	add r0, r0, r3
	add r0, r0, r2
	strh r6, [r0]
	add r0, r1, #2
	lsl r0, r0, #3
	add r0, r0, r3
	add r0, r0, r2
	strh r7, [r0]
	add r1, r1, #3
	lsl r1, r1, #3
	add r1, r1, r3
	add r1, r1, r2
	mov r0, r12
	strh r0, [r1]
	ldrb r1, [r4]
	add r0, r1, #1
	strb r0, [r4]
_080C655C:
	add r0, r1, #0
	pop {r4-r7}
	pop {r1}
	bx r1
_080C6564:
	.4byte gUnknown_03003E6C
_080C6568:
	.4byte gRam
_080C656C:
	.4byte 0x00000556
	THUMB_FUNC_END sub_080C6508

	THUMB_FUNC_START sub_080C6570
sub_080C6570: @ 0x080C6570
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r2, r1, #24
	ldr r1, _080C65A4  @ =gUnknown_081720D0
	add r0, r0, r1
	ldrb r1, [r0]
	ldr r0, _080C65A8  @ =gRam
	ldr r3, _080C65AC  @ =0x000009D4
	add r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #179
	bne _080C659E
	mov r0, #4
	and r0, r0, r2
	cmp r0, #0
	bne _080C659E
	cmp r1, #1
	bls _080C659E
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
_080C659E:
	add r0, r1, #0
	pop {r1}
	bx r1
_080C65A4:
	.4byte gUnknown_081720D0
_080C65A8:
	.4byte gRam
_080C65AC:
	.4byte 0x000009D4
	THUMB_FUNC_END sub_080C6570

	THUMB_FUNC_START sub_080C65B0
sub_080C65B0: @ 0x080C65B0
	push {lr}
	ldr r1, _080C65D8  @ =gRam
	ldr r2, _080C65DC  @ =0x00000968
	add r0, r1, r2
	sub r2, r2, #22
	add r1, r1, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	sub r0, r0, r1
	lsl r0, r0, #16
	asr r1, r0, #16
	mov r0, #255
	lsl r0, r0, #8
	and r1, r1, r0
	cmp r1, #0
	beq _080C65D2
	mov r1, #1
_080C65D2:
	add r0, r1, #0
	pop {r1}
	bx r1
_080C65D8:
	.4byte gRam
_080C65DC:
	.4byte 0x00000968
	THUMB_FUNC_END sub_080C65B0

	THUMB_FUNC_START sub_080C65E0
sub_080C65E0: @ 0x080C65E0
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r0, _080C6608  @ =gUnknown_03003E74
	ldrh r7, [r0]
	mov r3, #1
	ldr r2, _080C660C  @ =gRam
	ldr r1, _080C6610  @ =0x00001032
	add r0, r2, r1
	add r0, r6, r0
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080C6614
	add r0, r6, #0
	bl SpriteActive_Main
	b _080C6684
	.byte 0x00
	.byte 0x00
_080C6608:
	.4byte gUnknown_03003E74
_080C660C:
	.4byte gRam
_080C6610:
	.4byte 0x00001032
_080C6614:
	ldr r4, _080C668C  @ =0x00000996
	add r0, r2, r4
	ldrb r1, [r0]
	mov r0, #3
	and r0, r0, r1
	add r4, r4, #23
	add r1, r2, r4
	ldrb r1, [r1]
	orr r0, r0, r1
	ldr r4, _080C6690  @ =0x00001605
	add r1, r2, r4
	ldrb r1, [r1]
	orr r0, r0, r1
	cmp r0, #0
	bne _080C663E
	ldr r0, _080C6694  @ =0x00000FC2
	add r1, r2, r0
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080C663E:
	ldr r1, _080C6698  @ =0x00000FF2
	add r0, r2, r1
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #64
	beq _080C6658
	ldr r4, _080C6694  @ =0x00000FC2
	add r0, r2, r4
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #9
	bhi _080C6658
	mov r3, #0
_080C6658:
	cmp r3, #0
	beq _080C667A
	ldr r0, _080C669C  @ =0x00001012
	add r4, r2, r0
	add r4, r6, r4
	ldrb r5, [r4]
	ldr r1, _080C66A0  @ =gUnknown_03003E74
	ldrh r0, [r1]
	add r0, r0, #4
	strh r0, [r1]
	ldrb r0, [r4]
	sub r0, r0, #4
	strb r0, [r4]
	add r0, r6, #0
	bl SpriteActive_Main
	strb r5, [r4]
_080C667A:
	ldr r0, _080C66A0  @ =gUnknown_03003E74
	strh r7, [r0]
	add r0, r6, #0
	bl sub_080C6C7C
_080C6684:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C668C:
	.4byte 0x00000996
_080C6690:
	.4byte 0x00001605
_080C6694:
	.4byte 0x00000FC2
_080C6698:
	.4byte 0x00000FF2
_080C669C:
	.4byte 0x00001012
_080C66A0:
	.4byte gUnknown_03003E74
	THUMB_FUNC_END sub_080C65E0

	THUMB_FUNC_START sub_080C66A4
sub_080C66A4: @ 0x080C66A4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r6, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r1, #0
	bl sub_080C382C
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r0, _080C66D4  @ =gRam
	ldr r1, _080C66D8  @ =0x00000FF2
	add r0, r0, r1
	add r0, r6, r0
	strb r7, [r0]
	cmp r7, #229
	bne _080C66DC
	add r0, r6, #0
	bl sub_080CFFE0
	b _080C66E6
	.byte 0x00
	.byte 0x00
_080C66D4:
	.4byte gRam
_080C66D8:
	.4byte 0x00000FF2
_080C66DC:
	cmp r7, #228
	bne _080C66E6
	add r0, r6, #0
	bl sub_080D0020
_080C66E6:
	ldr r4, _080C6778  @ =gRam
	ldr r2, _080C677C  @ =0x00000FA2
	add r0, r4, r2
	add r0, r6, r0
	mov r1, #9
	strb r1, [r0]
	ldr r0, _080C6780  @ =0x00001142
	add r5, r4, r0
	add r5, r6, r5
	ldrb r1, [r5]
	mov r8, r1
	add r0, r6, #0
	bl sub_080CEB84
	ldr r2, _080C6784  @ =0x00001172
	add r1, r4, r2
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080C6788  @ =gUnknown_08172160
	ldr r2, _080C678C  @ =0x00000FF2
	add r0, r4, r2
	add r0, r6, r0
	ldrb r0, [r0]
	sub r0, r0, #216
	add r0, r0, r1
	ldrb r7, [r0]
	ldr r0, _080C6790  @ =0x00001152
	add r1, r4, r0
	add r1, r6, r1
	mov r0, #240
	and r0, r0, r7
	strb r0, [r1]
	mov r0, #15
	and r7, r7, r0
	ldr r1, _080C6794  @ =0x00000EE2
	add r3, r4, r1
	add r3, r6, r3
	ldrb r1, [r3]
	ldr r0, _080C6798  @ =0x00000F02
	add r2, r4, r0
	add r2, r6, r2
	ldrb r0, [r2]
	lsl r0, r0, #8
	orr r1, r1, r0
	add r1, r1, r7
	lsl r1, r1, #16
	lsr r1, r1, #16
	strb r1, [r3]
	lsr r1, r1, #8
	strb r1, [r2]
	mov r1, r8
	strb r1, [r5]
	ldr r2, _080C679C  @ =0x000010E2
	add r0, r4, r2
	add r0, r6, r0
	mov r1, #21
	strb r1, [r0]
	ldr r0, _080C67A0  @ =0x00000D74
	add r4, r4, r0
	add r4, r6, r4
	mov r0, #255
	strb r0, [r4]
	add r0, r6, #0
	bl sub_080C67A4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C6778:
	.4byte gRam
_080C677C:
	.4byte 0x00000FA2
_080C6780:
	.4byte 0x00001142
_080C6784:
	.4byte 0x00001172
_080C6788:
	.4byte gUnknown_08172160
_080C678C:
	.4byte 0x00000FF2
_080C6790:
	.4byte 0x00001152
_080C6794:
	.4byte 0x00000EE2
_080C6798:
	.4byte 0x00000F02
_080C679C:
	.4byte 0x000010E2
_080C67A0:
	.4byte 0x00000D74
	THUMB_FUNC_END sub_080C66A4

	THUMB_FUNC_START sub_080C67A4
sub_080C67A4: @ 0x080C67A4
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _080C6808  @ =gRam
	ldr r1, _080C680C  @ =0x00000FF2
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #162
	bne _080C67C8
	bl sub_080CAEC0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080C67C8
	mov r0, #4
	bl sub_080C9600
_080C67C8:
	add r0, r4, #0
	bl sub_080CB9D4
	ldr r2, _080C6808  @ =gRam
	ldr r0, _080C6810  @ =0x00000ECD
	add r1, r2, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080C680C  @ =0x00000FF2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #64
	bne _080C6800
	sub r1, r1, #80
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #9
	strb r1, [r0]
	ldr r1, _080C6814  @ =0x00000F92
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #4
	strb r1, [r0]
	add r0, r4, #0
	bl sub_080C65E0
_080C6800:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C6808:
	.4byte gRam
_080C680C:
	.4byte 0x00000FF2
_080C6810:
	.4byte 0x00000ECD
_080C6814:
	.4byte 0x00000F92
	THUMB_FUNC_END sub_080C67A4

	THUMB_FUNC_START sub_080C6818
sub_080C6818: @ 0x080C6818
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r1, _080C6898  @ =gRam
	ldr r2, _080C689C  @ =0x00000FF2
	add r0, r1, r2
	add r2, r7, r0
	ldrb r0, [r2]
	mov r8, r1
	cmp r0, #190
	bne _080C683C
	ldr r1, _080C68A0  @ =0x000010A2
	add r1, r1, r8
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_080C683C:
	ldrb r0, [r2]
	cmp r0, #170
	bne _080C68BC
	ldr r0, _080C68A4  @ =0x00001062
	add r0, r0, r8
	add r0, r7, r0
	ldrb r5, [r0]
	cmp r5, #0
	beq _080C68BC
	ldr r1, _080C68A8  @ =gUnknown_08172176
	sub r0, r5, #1
	add r0, r0, r1
	ldrb r6, [r0]
	ldr r4, _080C68AC  @ =0x00001002
	add r4, r4, r8
	add r4, r7, r4
	ldrb r5, [r4]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080C66A4
	strb r5, [r4]
	sub r0, r5, #1
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C6888
	cmp r6, #230
	bne _080C6888
	ldr r0, _080C68B0  @ =0x00001122
	add r0, r0, r8
	add r0, r7, r0
	mov r1, #9
	strb r1, [r0]
	ldr r0, _080C68B4  @ =0x00001032
	add r0, r0, r8
	add r0, r7, r0
	mov r1, #240
	strb r1, [r0]
_080C6888:
	ldr r1, _080C6898  @ =gRam
	ldr r4, _080C68B8  @ =0x00001082
	add r1, r1, r4
	add r1, r7, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080C6A18
_080C6898:
	.4byte gRam
_080C689C:
	.4byte 0x00000FF2
_080C68A0:
	.4byte 0x000010A2
_080C68A4:
	.4byte 0x00001062
_080C68A8:
	.4byte gUnknown_08172176
_080C68AC:
	.4byte 0x00001002
_080C68B0:
	.4byte 0x00001122
_080C68B4:
	.4byte 0x00001032
_080C68B8:
	.4byte 0x00001082
_080C68BC:
	ldr r0, _080C68E0  @ =0x00000FF2
	add r0, r0, r8
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #248
	bne _080C68E8
	ldr r0, _080C68E4  @ =0x00001002
	add r0, r0, r8
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C68E8
	add r0, r7, #0
	mov r1, #230
	bl sub_080C66A4
	b _080C6A18
	.byte 0x00
	.byte 0x00
_080C68E0:
	.4byte 0x00000FF2
_080C68E4:
	.4byte 0x00001002
_080C68E8:
	ldr r0, _080C6944  @ =0x00000FF2
	add r0, r0, r8
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #69
	bne _080C6912
	ldr r0, _080C6948  @ =0x0000165E
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #2
	bne _080C6912
	mov r0, #171
	lsl r0, r0, #4
	add r0, r0, r8
	ldrh r0, [r0]
	cmp r0, #24
	bne _080C6912
	ldr r1, _080C694C  @ =0x00000A3C
	add r1, r1, r8
	mov r0, #8
	strh r0, [r1]
_080C6912:
	mov r3, r8
	ldr r1, _080C6950  @ =0x00000E85
	add r0, r3, r1
	add r0, r7, r0
	ldrb r5, [r0]
	cmp r5, #0
	beq _080C6980
	ldr r4, _080C6954  @ =0x00001002
	add r2, r3, r4
	add r2, r7, r2
	lsl r1, r7, #1
	ldr r4, _080C6958  @ =0x00001192
	add r0, r3, r4
	add r1, r1, r0
	ldrh r0, [r1]
	strb r0, [r2]
	mov r0, #255
	strh r0, [r1]
	cmp r5, #2
	beq _080C696C
	cmp r5, #2
	bgt _080C695C
	cmp r5, #1
	beq _080C6962
	b _080C696C
_080C6944:
	.4byte 0x00000FF2
_080C6948:
	.4byte 0x0000165E
_080C694C:
	.4byte 0x00000A3C
_080C6950:
	.4byte 0x00000E85
_080C6954:
	.4byte 0x00001002
_080C6958:
	.4byte 0x00001192
_080C695C:
	cmp r5, #3
	beq _080C6976
	b _080C696C
_080C6962:
	add r0, r7, #0
	mov r1, #228
	bl sub_080C66A4
	b _080C6A18
_080C696C:
	add r0, r7, #0
	mov r1, #229
	bl sub_080C66A4
	b _080C6A18
_080C6976:
	add r0, r7, #0
	mov r1, #217
	bl sub_080C66A4
	b _080C6A18
_080C6980:
	ldr r1, _080C69C8  @ =0x000011B2
	add r0, r3, r1
	add r0, r7, r0
	ldrb r0, [r0]
	mov r6, #15
	and r6, r6, r0
	cmp r6, #0
	beq _080C69D4
	sub r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r4, _080C69CC  @ =0x00000ECB
	add r2, r3, r4
	ldrb r4, [r2]
	cmp r4, #0
	beq _080C69E4
	ldr r0, _080C69D0  @ =0x00000ECC
	add r1, r3, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #9
	bls _080C69B4
	strb r5, [r2]
_080C69B4:
	ldrb r0, [r2]
	cmp r0, #1
	bne _080C69D4
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_080C6F08
	b _080C6A18
	.byte 0x00
	.byte 0x00
_080C69C8:
	.4byte 0x000011B2
_080C69CC:
	.4byte 0x00000ECB
_080C69D0:
	.4byte 0x00000ECC
_080C69D4:
	ldr r0, _080C69E0  @ =0x00000FA2
	add r0, r0, r8
	add r0, r7, r0
	mov r1, #0
	strb r1, [r0]
	b _080C69FE
_080C69E0:
	.4byte 0x00000FA2
_080C69E4:
	add r5, r6, #0
	bl GetRandomInt
	ldr r1, _080C6A08  @ =gUnknown_0817216F
	add r1, r5, r1
	ldrb r1, [r1]
	and r1, r1, r0
	cmp r1, #0
	beq _080C6A10
	ldr r0, _080C6A0C  @ =0x00000FA2
	add r0, r0, r8
	add r0, r7, r0
	strb r4, [r0]
_080C69FE:
	add r0, r7, #0
	bl sub_080C67A4
	b _080C6A18
	.byte 0x00
	.byte 0x00
_080C6A08:
	.4byte gUnknown_0817216F
_080C6A0C:
	.4byte 0x00000FA2
_080C6A10:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_080C6E84
_080C6A18:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C6818

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C6A24
sub_080C6A24: @ 0x080C6A24
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r4, _080C6A64  @ =gRam
	ldr r0, _080C6A68  @ =0x00000F82
	add r3, r4, r0
	add r2, r6, r3
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080C6A5A
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #5
	bls _080C6A5A
	cmp r0, #16
	bne _080C6A70
	ldr r1, _080C6A6C  @ =0x00001122
	add r0, r4, r1
	add r0, r6, r0
	mov r1, #12
	strb r1, [r0]
_080C6A5A:
	add r0, r6, #0
	bl sub_080C6E9C
	b _080C6B7A
	.byte 0x00
	.byte 0x00
_080C6A64:
	.4byte gRam
_080C6A68:
	.4byte 0x00000F82
_080C6A6C:
	.4byte 0x00001122
_080C6A70:
	mov r5, #3
	mov r10, r2
_080C6A74:
	mov r0, #236
	add r1, r6, #0
	bl sub_080CA538
	lsl r7, r0, #24
	asr r4, r7, #24
	lsl r5, r5, #24
	mov r8, r5
	cmp r4, #0
	blt _080C6B62
	ldr r5, _080C6B28  @ =gRam
	ldr r2, _080C6B2C  @ =0x00001142
	add r0, r5, r2
	add r1, r4, r0
	add r0, r6, r0
	ldrb r0, [r0]
	mov r2, #0
	mov r9, r2
	strb r0, [r1]
	mov r1, #150
	lsl r1, r1, #4
	add r0, r5, r1
	ldrb r2, [r0]
	add r1, r1, #1
	add r0, r5, r1
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r2, r2, r0
	ldr r0, _080C6B30  @ =gUnknown_081721B2
	mov r1, r8
	asr r3, r1, #24
	add r0, r3, r0
	ldrb r1, [r0]
	ldr r0, _080C6B34  @ =gUnknown_081721B6
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r2, r2, r1
	ldr r1, _080C6B38  @ =0x00000EE2
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
	add r1, r1, #32
	add r0, r5, r1
	add r0, r4, r0
	lsr r2, r2, #8
	strb r2, [r0]
	ldr r2, _080C6B3C  @ =0x00000964
	add r0, r5, r2
	ldrb r2, [r0]
	ldr r1, _080C6B40  @ =0x00000965
	add r0, r5, r1
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r2, r2, r0
	ldr r0, _080C6B44  @ =gUnknown_081721BA
	add r0, r3, r0
	ldrb r1, [r0]
	ldr r0, _080C6B48  @ =gUnknown_081721BE
	add r3, r3, r0
	ldrb r0, [r3]
	lsl r0, r0, #8
	add r1, r1, r0
	add r2, r2, r1
	ldr r1, _080C6B4C  @ =0x00000ED2
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
	add r1, r1, #32
	add r0, r5, r1
	add r0, r4, r0
	lsr r2, r2, #8
	strb r2, [r0]
	ldr r2, _080C6B50  @ =gUnknown_030031B2
	add r1, r4, r2
	mov r0, #1
	strb r0, [r1]
	lsr r0, r7, #24
	bl sub_080C6E3C
	mov r1, r10
	ldrb r0, [r1]
	cmp r0, #6
	bls _080C6B58
	ldr r2, _080C6B54  @ =0x00001122
	add r0, r5, r2
	add r0, r4, r0
	mov r1, r9
	b _080C6B60
_080C6B28:
	.4byte gRam
_080C6B2C:
	.4byte 0x00001142
_080C6B30:
	.4byte gUnknown_081721B2
_080C6B34:
	.4byte gUnknown_081721B6
_080C6B38:
	.4byte 0x00000EE2
_080C6B3C:
	.4byte 0x00000964
_080C6B40:
	.4byte 0x00000965
_080C6B44:
	.4byte gUnknown_081721BA
_080C6B48:
	.4byte gUnknown_081721BE
_080C6B4C:
	.4byte 0x00000ED2
_080C6B50:
	.4byte gUnknown_030031B2
_080C6B54:
	.4byte 0x00001122
_080C6B58:
	ldr r2, _080C6B88  @ =0x00001122
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #12
_080C6B60:
	strb r1, [r0]
_080C6B62:
	mov r0, #255
	lsl r0, r0, #24
	add r0, r0, r8
	lsr r5, r0, #24
	cmp r0, #0
	bge _080C6A74
	ldr r0, _080C6B8C  @ =gRam
	ldr r1, _080C6B90  @ =0x00000FA2
	add r0, r0, r1
	add r0, r6, r0
	mov r1, #0
	strb r1, [r0]
_080C6B7A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080C6B88:
	.4byte 0x00001122
_080C6B8C:
	.4byte gRam
_080C6B90:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080C6A24

	THUMB_FUNC_START sub_080C6B94
sub_080C6B94: @ 0x080C6B94
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r4, _080C6C48  @ =gRam
	ldr r3, _080C6C4C  @ =0x000011D2
	add r2, r4, r3
	add r2, r0, r2
	mov r3, #22
	strb r3, [r2]
	ldr r5, _080C6C50  @ =0x000015F8
	add r2, r4, r5
	strb r3, [r2]
	ldr r6, _080C6C54  @ =0x0000122C
	add r3, r4, r6
	add r3, r0, r3
	ldr r5, _080C6C58  @ =0x00000EE2
	add r2, r4, r5
	add r2, r1, r2
	ldrb r2, [r2]
	strb r2, [r3]
	add r6, r6, #60
	add r3, r4, r6
	add r3, r0, r3
	add r5, r5, #32
	add r2, r4, r5
	add r2, r1, r2
	ldrb r2, [r2]
	strb r2, [r3]
	ldr r6, _080C6C5C  @ =0x00000ED2
	add r2, r4, r6
	add r2, r1, r2
	ldrb r3, [r2]
	sub r5, r5, #16
	add r2, r4, r5
	add r2, r1, r2
	ldrb r2, [r2]
	lsl r2, r2, #8
	orr r3, r3, r2
	ldr r6, _080C6C60  @ =0x00001142
	add r2, r4, r6
	add r2, r1, r2
	ldrb r2, [r2]
	sub r3, r3, r2
	lsl r3, r3, #16
	mov r2, #128
	lsl r2, r2, #13
	add r3, r3, r2
	lsr r5, r3, #16
	add r6, r6, #204
	add r2, r4, r6
	add r2, r0, r2
	strb r5, [r2]
	ldr r5, _080C6C64  @ =0x0000124A
	add r2, r4, r5
	add r2, r0, r2
	lsr r3, r3, #24
	strb r3, [r2]
	ldr r6, _080C6C68  @ =0x000013EE
	add r2, r4, r6
	add r2, r0, r2
	ldr r5, _080C6C6C  @ =0x00000969
	add r3, r4, r5
	ldrb r3, [r3]
	strb r3, [r2]
	sub r6, r6, #150
	add r3, r4, r6
	add r3, r0, r3
	ldr r5, _080C6C70  @ =0x000010F2
	add r2, r4, r5
	add r2, r1, r2
	ldrb r2, [r2]
	strb r2, [r3]
	sub r6, r6, #90
	add r2, r4, r6
	add r2, r0, r2
	mov r3, #31
	strb r3, [r2]
	ldr r3, _080C6C74  @ =0x0000131C
	add r2, r4, r3
	add r0, r0, r2
	ldr r5, _080C6C78  @ =0x00000F82
	add r4, r4, r5
	add r1, r1, r4
	ldrb r1, [r1]
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
_080C6C48:
	.4byte gRam
_080C6C4C:
	.4byte 0x000011D2
_080C6C50:
	.4byte 0x000015F8
_080C6C54:
	.4byte 0x0000122C
_080C6C58:
	.4byte 0x00000EE2
_080C6C5C:
	.4byte 0x00000ED2
_080C6C60:
	.4byte 0x00001142
_080C6C64:
	.4byte 0x0000124A
_080C6C68:
	.4byte 0x000013EE
_080C6C6C:
	.4byte 0x00000969
_080C6C70:
	.4byte 0x000010F2
_080C6C74:
	.4byte 0x0000131C
_080C6C78:
	.4byte 0x00000F82
	THUMB_FUNC_END sub_080C6B94

	THUMB_FUNC_START sub_080C6C7C
sub_080C6C7C: @ 0x080C6C7C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	ldr r4, _080C6D74  @ =gRam
	ldr r1, _080C6D78  @ =0x00000B14
	add r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #4
	bne _080C6CA4
	ldr r2, _080C6D7C  @ =0x00000D94
	add r0, r4, r2
	add r0, r0, r9
	mov r1, #48
	strb r1, [r0]
_080C6CA4:
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r9
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C6D62
	ldr r5, _080C6D80  @ =0x00001032
	add r0, r4, r5
	add r0, r0, r9
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #27
	ldr r2, _080C6D84  @ =0x00000978
	add r1, r4, r2
	strb r0, [r1]
	sub r5, r5, #112
	add r0, r4, r5
	add r0, r0, r9
	ldrb r1, [r0]
	mov r2, #28
	mov r0, #28
	and r0, r0, r1
	eor r0, r0, r2
	add r0, r0, #3
	add r6, r0, #0
	mov r7, #3
	mov r8, r4
	ldr r0, _080C6D88  @ =0x00000969
	add r0, r0, r8
	mov r10, r0
_080C6CEA:
	ldr r0, _080C6D8C  @ =gUnknown_08172202
	add r4, r6, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080C6D4C
	ldr r0, _080C6D90  @ =0x000015E8
	add r0, r0, r8
	ldr r2, _080C6D84  @ =0x00000978
	add r2, r2, r8
	ldrb r1, [r0]
	ldrb r3, [r2]
	ldr r0, _080C6D94  @ =gUnknown_081721C2
	add r0, r6, r0
	sub r1, r1, r3
	ldrb r0, [r0]
	add r1, r1, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r0, _080C6D98  @ =0x000015E9
	add r0, r0, r8
	ldrb r2, [r0]
	ldr r0, _080C6D9C  @ =gUnknown_081721E2
	add r0, r6, r0
	sub r2, r2, r3
	ldrb r0, [r0]
	add r2, r2, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r0, _080C6DA0  @ =gUnknown_03003E74
	sub r3, r7, #3
	ldrh r0, [r0]
	sub r0, r0, r3
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldrb r3, [r4]
	mov r5, r10
	ldrb r4, [r5]
	mov r5, #48
	and r5, r5, r4
	ldr r4, _080C6DA4  @ =gUnknown_08172222
	add r4, r6, r4
	ldrb r4, [r4]
	orr r5, r5, r4
	lsl r5, r5, #8
	orr r3, r3, r5
	mov r4, #0
	str r4, [sp]
	bl sub_080C6004
_080C6D4C:
	sub r7, r7, #1
	sub r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r7, #0
	bge _080C6CEA
	mov r0, r9
	mov r1, #0
	mov r2, #3
	bl sub_080C5DA0
_080C6D62:
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
_080C6D74:
	.4byte gRam
_080C6D78:
	.4byte 0x00000B14
_080C6D7C:
	.4byte 0x00000D94
_080C6D80:
	.4byte 0x00001032
_080C6D84:
	.4byte 0x00000978
_080C6D88:
	.4byte 0x00000969
_080C6D8C:
	.4byte gUnknown_08172202
_080C6D90:
	.4byte 0x000015E8
_080C6D94:
	.4byte gUnknown_081721C2
_080C6D98:
	.4byte 0x000015E9
_080C6D9C:
	.4byte gUnknown_081721E2
_080C6DA0:
	.4byte gUnknown_03003E74
_080C6DA4:
	.4byte gUnknown_08172222
	THUMB_FUNC_END sub_080C6C7C

	THUMB_FUNC_START sub_080C6DA8
sub_080C6DA8: @ 0x080C6DA8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080C6818
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C6DA8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C6DB8
sub_080C6DB8: @ 0x080C6DB8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080C6818
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C6DB8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C6DC8
sub_080C6DC8: @ 0x080C6DC8
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080C6DE8  @ =gRam
	ldr r3, _080C6DEC  @ =0x00000FF2
	add r0, r1, r3
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #84
	bgt _080C6DF0
	cmp r0, #83
	bge _080C6E0C
	cmp r0, #74
	beq _080C6E00
	b _080C6E18
	.byte 0x00
	.byte 0x00
_080C6DE8:
	.4byte gRam
_080C6DEC:
	.4byte 0x00000FF2
_080C6DF0:
	cmp r0, #146
	beq _080C6E0C
	cmp r0, #236
	bne _080C6E18
	add r0, r2, #0
	bl sub_080C6A24
	b _080C6E36
_080C6E00:
	ldr r3, _080C6E14  @ =0x00000F82
	add r0, r1, r3
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #1
	bls _080C6E18
_080C6E0C:
	add r0, r2, #0
	bl SpriteActive_Main
	b _080C6E36
_080C6E14:
	.4byte 0x00000F82
_080C6E18:
	ldr r3, _080C6E2C  @ =0x00000FC2
	add r0, r1, r3
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C6E30
	add r0, r2, #0
	bl sub_080C6DB8
	b _080C6E36
_080C6E2C:
	.4byte 0x00000FC2
_080C6E30:
	add r0, r2, #0
	bl sub_080C65E0
_080C6E36:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C6DC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C6E3C
sub_080C6E3C: @ 0x080C6E3C
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #31
	bl sub_080C6E4C
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C6E3C

	THUMB_FUNC_START sub_080C6E4C
sub_080C6E4C: @ 0x080C6E4C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080C6E78  @ =gRam
	ldr r4, _080C6E7C  @ =0x00000FC2
	add r2, r3, r4
	add r2, r0, r2
	strb r1, [r2]
	ldr r2, _080C6E80  @ =0x00000FA2
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #6
	strb r2, [r1]
	add r4, r4, #80
	add r3, r3, r4
	add r0, r0, r3
	ldrb r1, [r0]
	add r1, r1, #4
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
_080C6E78:
	.4byte gRam
_080C6E7C:
	.4byte 0x00000FC2
_080C6E80:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080C6E4C

	THUMB_FUNC_START sub_080C6E84
sub_080C6E84: @ 0x080C6E84
	push {lr}
	add r2, r1, #0
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r2, #0
	bl sub_080C6F08
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C6E84

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C6E9C
sub_080C6E9C: @ 0x080C6E9C
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080C6EE0  @ =gRam
	ldr r1, _080C6EE4  @ =0x00000FA2
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #0
	strb r1, [r0]
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r5, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C6EFE
	mov r1, #29
_080C6EC4:
	lsl r2, r1, #24
	asr r1, r2, #24
	ldr r3, _080C6EE8  @ =0x000011D2
	add r0, r4, r3
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C6EEC
	lsr r0, r2, #24
	add r1, r5, #0
	bl sub_080C6B94
	b _080C6EFE
	.byte 0x00
	.byte 0x00
_080C6EE0:
	.4byte gRam
_080C6EE4:
	.4byte 0x00000FA2
_080C6EE8:
	.4byte 0x000011D2
_080C6EEC:
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r0, #0
	bge _080C6EC4
	mov r0, #0
	add r1, r5, #0
	bl sub_080C6B94
_080C6EFE:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C6E9C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C6F08
sub_080C6F08: @ 0x080C6F08
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	lsl r1, r1, #27
	ldr r3, _080C6F3C  @ =gRam
	ldr r4, _080C6F40  @ =0x00001611
	add r3, r3, r4
	add r2, r2, r3
	ldrb r3, [r2]
	lsr r1, r1, #24
	orr r1, r1, r3
	add r3, r3, #1
	mov r4, #7
	and r3, r3, r4
	strb r3, [r2]
	ldr r2, _080C6F44  @ =gUnknown_0817217A
	add r1, r1, r2
	ldrb r1, [r1]
	bl sub_080C66A4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C6F3C:
	.4byte gRam
_080C6F40:
	.4byte 0x00001611
_080C6F44:
	.4byte gUnknown_0817217A
	THUMB_FUNC_END sub_080C6F08

	THUMB_FUNC_START sub_080C6F48
sub_080C6F48: @ 0x080C6F48
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080C6F84  @ =gRam
	ldr r1, _080C6F88  @ =0x00001042
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #0
	strb r1, [r0]
	ldr r1, _080C6F8C  @ =0x00001132
	add r0, r6, r1
	add r0, r5, r0
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	cmp r0, #0
	beq _080C6F94
	add r0, r5, #0
	bl sub_080C7014
	ldr r1, _080C6F90  @ =0x000015E2
	add r0, r6, r1
	ldrb r0, [r0]
	b _080C7006
_080C6F84:
	.4byte gRam
_080C6F88:
	.4byte 0x00001042
_080C6F8C:
	.4byte 0x00001132
_080C6F90:
	.4byte 0x000015E2
_080C6F94:
	ldr r0, _080C6FB0  @ =0x00000B14
	add r0, r0, r6
	mov r9, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _080C6FB8
	add r0, r5, #0
	bl sub_080C7014
	ldr r1, _080C6FB4  @ =0x000015E2
	add r0, r6, r1
	ldrb r0, [r0]
	b _080C7006
	.byte 0x00
	.byte 0x00
_080C6FB0:
	.4byte 0x00000B14
_080C6FB4:
	.4byte 0x000015E2
_080C6FB8:
	ldr r1, _080C6FF4  @ =0x000010F2
	add r0, r6, r1
	add r4, r5, r0
	ldrb r0, [r4]
	ldr r1, _080C6FF8  @ =0x000015FA
	add r7, r6, r1
	strb r0, [r7]
	mov r0, #1
	strb r0, [r4]
	add r0, r5, #0
	bl sub_080C7014
	mov r1, r9
	ldrh r0, [r1]
	cmp r0, #4
	beq _080C7000
	mov r0, r8
	strb r0, [r4]
	add r0, r5, #0
	bl sub_080C7A70
	ldr r1, _080C6FFC  @ =0x000015AC
	add r0, r6, r1
	add r0, r5, r0
	add r1, r1, #54
	add r2, r6, r1
	ldrh r1, [r2]
	strb r1, [r0]
	ldrb r0, [r2]
	b _080C7006
_080C6FF4:
	.4byte 0x000010F2
_080C6FF8:
	.4byte 0x000015FA
_080C6FFC:
	.4byte 0x000015AC
_080C7000:
	ldrb r0, [r7]
	strb r0, [r4]
	ldrb r0, [r4]
_080C7006:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C6F48

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C7014
sub_080C7014: @ 0x080C7014
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080C7050  @ =gRam
	ldr r1, _080C7054  @ =0x00001012
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _080C7064
	ldr r0, _080C7058  @ =gUnknown_0822A8CA
	ldr r1, _080C705C  @ =gUnknown_0822A860
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r0, r4, #0
	bl sub_080C7490
	lsl r0, r0, #24
	cmp r0, #0
	beq _080C70D6
	ldr r2, _080C7060  @ =0x00001042
	add r1, r5, r2
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080C70D6
_080C7050:
	.4byte gRam
_080C7054:
	.4byte 0x00001012
_080C7058:
	.4byte gUnknown_0822A8CA
_080C705C:
	.4byte gUnknown_0822A860
_080C7060:
	.4byte 0x00001042
_080C7064:
	ldr r1, _080C7088  @ =0x00001132
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080C7090
	ldr r2, _080C708C  @ =0x00000B14
	add r0, r5, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _080C7090
	add r0, r4, #0
	bl sub_080C7A80
	b _080C70D6
	.byte 0x00
	.byte 0x00
_080C7088:
	.4byte 0x00001132
_080C708C:
	.4byte 0x00000B14
_080C7090:
	mov r1, #0
	ldr r0, _080C70DC  @ =gRam
	ldr r2, _080C70E0  @ =0x00000F12
	add r0, r0, r2
	add r0, r4, r0
	ldrb r2, [r0]
	cmp r2, #0
	beq _080C70B0
	mov r0, #128
	and r2, r2, r0
	cmp r2, #0
	bne _080C70AA
	mov r1, #1
_080C70AA:
	add r0, r4, #0
	bl sub_080C7384
_080C70B0:
	mov r1, #2
	ldr r0, _080C70DC  @ =gRam
	ldr r2, _080C70E4  @ =0x00000F22
	add r0, r0, r2
	add r0, r4, r0
	ldrb r2, [r0]
	cmp r2, #0
	beq _080C70D0
	mov r0, #128
	and r2, r2, r0
	cmp r2, #0
	bne _080C70CA
	mov r1, #3
_080C70CA:
	add r0, r4, #0
	bl sub_080C7278
_080C70D0:
	add r0, r4, #0
	bl sub_080C70E8
_080C70D6:
	pop {r4,r5}
	pop {r0}
	bx r0
_080C70DC:
	.4byte gRam
_080C70E0:
	.4byte 0x00000F12
_080C70E4:
	.4byte 0x00000F22
	THUMB_FUNC_END sub_080C7014

	THUMB_FUNC_START sub_080C70E8
sub_080C70E8: @ 0x080C70E8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080C7158  @ =gRam
	ldr r1, _080C715C  @ =0x000011B2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080C7102
	b _080C7272
_080C7102:
	ldr r1, _080C7160  @ =0x00001142
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C7110
	b _080C7272
_080C7110:
	ldr r1, _080C7164  @ =gUnknown_0822A8C8
	ldr r0, _080C7168  @ =gUnknown_0822A860
	sub r1, r1, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl sub_080C7490
	ldr r1, _080C716C  @ =0x000013B2
	add r0, r5, r1
	add r0, r4, r0
	ldr r1, _080C7170  @ =0x000015E2
	add r2, r5, r1
	ldrh r1, [r2]
	strb r1, [r0]
	ldrh r0, [r2]
	cmp r0, #28
	bne _080C7180
	ldr r1, _080C7174  @ =0x000015F7
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C7180
	ldr r1, _080C7178  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #11
	bne _080C7180
	ldr r1, _080C717C  @ =0x000010F2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	b _080C7272
	.byte 0x00
	.byte 0x00
_080C7158:
	.4byte gRam
_080C715C:
	.4byte 0x000011B2
_080C7160:
	.4byte 0x00001142
_080C7164:
	.4byte gUnknown_0822A8C8
_080C7168:
	.4byte gUnknown_0822A860
_080C716C:
	.4byte 0x000013B2
_080C7170:
	.4byte 0x000015E2
_080C7174:
	.4byte 0x000015F7
_080C7178:
	.4byte 0x00000FA2
_080C717C:
	.4byte 0x000010F2
_080C7180:
	ldr r5, _080C71B0  @ =gRam
	ldr r1, _080C71B4  @ =0x000015E2
	add r0, r5, r1
	ldrh r0, [r0]
	add r2, r0, #0
	cmp r2, #12
	bne _080C71BC
	sub r1, r1, #54
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #28
	bne _080C7272
	add r0, r4, #0
	bl sub_080C78DC
	ldr r1, _080C71B8  @ =0x00001042
	add r0, r5, r1
	add r0, r4, r0
	ldrb r2, [r0]
	mov r1, #32
	orr r1, r1, r2
	strb r1, [r0]
	b _080C7272
_080C71B0:
	.4byte gRam
_080C71B4:
	.4byte 0x000015E2
_080C71B8:
	.4byte 0x00001042
_080C71BC:
	cmp r2, #32
	bne _080C7244
	ldr r1, _080C7214  @ =0x00000D84
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080C7272
	ldr r1, _080C7218  @ =0x000009B2
	add r0, r5, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080C723C
	ldr r1, _080C721C  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #5
	strb r1, [r0]
	ldr r1, _080C7220  @ =0x00000FF2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #19
	beq _080C71F8
	cmp r0, #38
	bne _080C722C
_080C71F8:
	ldr r0, _080C7224  @ =0x00001122
	add r1, r5, r0
	add r1, r4, r1
	ldrb r2, [r1]
	mov r0, #254
	and r0, r0, r2
	strb r0, [r1]
	ldr r1, _080C7228  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #63
	strb r1, [r0]
	b _080C7272
	.byte 0x00
	.byte 0x00
_080C7214:
	.4byte 0x00000D84
_080C7218:
	.4byte 0x000009B2
_080C721C:
	.4byte 0x00000FA2
_080C7220:
	.4byte 0x00000FF2
_080C7224:
	.4byte 0x00001122
_080C7228:
	.4byte 0x00000FC2
_080C722C:
	ldr r1, _080C7238  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #95
	strb r1, [r0]
	b _080C7272
_080C7238:
	.4byte 0x00000FC2
_080C723C:
	add r0, r4, #0
	bl sub_080C8094
	b _080C7272
_080C7244:
	cmp r2, #103
	bhi _080C7264
	cmp r2, #8
	bne _080C7272
	ldr r1, _080C7260  @ =0x00000B14
	add r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #4
	bne _080C7272
	add r0, r4, #0
	mov r1, #106
	bl sub_080CA118
	b _080C7272
_080C7260:
	.4byte 0x00000B14
_080C7264:
	cmp r2, #107
	bhi _080C7272
	lsl r1, r0, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl sub_080CA118
_080C7272:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C70E8

	THUMB_FUNC_START sub_080C7278
sub_080C7278: @ 0x080C7278
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r7, r5, #0
	lsl r1, r1, #24
	lsr r6, r1, #24
	mov r8, r6
	add r0, r5, #0
	add r1, r6, #0
	bl sub_080C7AB8
	lsl r0, r0, #24
	cmp r0, #0
	beq _080C7368
	ldr r3, _080C72EC  @ =gRam
	ldr r0, _080C72F0  @ =0x00001042
	add r2, r3, r0
	add r2, r5, r2
	ldr r0, _080C72F4  @ =gUnknown_08172244
	add r0, r6, r0
	ldrb r1, [r2]
	ldrb r0, [r0]
	orr r1, r1, r0
	strb r1, [r2]
	ldr r1, _080C72F8  @ =0x00001002
	add r0, r3, r1
	add r0, r5, r0
	ldrb r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #4
	bhi _080C7368
	ldr r1, _080C72FC  @ =0x00001072
	add r0, r3, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C730C
	ldr r0, _080C7300  @ =0x00000EE2
	add r4, r3, r0
	add r4, r5, r4
	ldrb r1, [r4]
	add r0, r0, #32
	add r3, r3, r0
	add r3, r5, r3
	ldrb r0, [r3]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldr r0, _080C7304  @ =gUnknown_08172248
	add r0, r6, r0
	ldrb r2, [r0]
	ldr r0, _080C7308  @ =gUnknown_0817224C
	add r0, r6, r0
	ldrb r0, [r0]
	b _080C735C
	.byte 0x00
	.byte 0x00
_080C72EC:
	.4byte gRam
_080C72F0:
	.4byte 0x00001042
_080C72F4:
	.4byte gUnknown_08172244
_080C72F8:
	.4byte 0x00001002
_080C72FC:
	.4byte 0x00001072
_080C7300:
	.4byte 0x00000EE2
_080C7304:
	.4byte gUnknown_08172248
_080C7308:
	.4byte gUnknown_0817224C
_080C730C:
	ldr r1, _080C7374  @ =0x00000EE2
	add r4, r3, r1
	add r4, r7, r4
	ldrb r1, [r4]
	ldr r0, _080C7378  @ =0x00000F02
	add r3, r3, r0
	add r3, r7, r3
	ldrb r0, [r3]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldr r6, _080C737C  @ =gUnknown_08172248
	add r6, r6, r8
	ldrb r2, [r6]
	ldr r5, _080C7380  @ =gUnknown_0817224C
	add r5, r5, r8
	ldrb r0, [r5]
	lsl r0, r0, #8
	add r2, r2, r0
	add r1, r1, r2
	strb r1, [r4]
	lsr r1, r1, #8
	strb r1, [r3]
	ldrb r1, [r4]
	ldrb r0, [r3]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldrb r2, [r6]
	ldrb r0, [r5]
	lsl r0, r0, #8
	add r2, r2, r0
	add r1, r1, r2
	strb r1, [r4]
	lsr r1, r1, #8
	strb r1, [r3]
	ldrb r1, [r4]
	ldrb r0, [r3]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldrb r2, [r6]
	ldrb r0, [r5]
_080C735C:
	lsl r0, r0, #8
	add r2, r2, r0
	add r1, r1, r2
	strb r1, [r4]
	lsr r1, r1, #8
	strb r1, [r3]
_080C7368:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C7374:
	.4byte 0x00000EE2
_080C7378:
	.4byte 0x00000F02
_080C737C:
	.4byte gUnknown_08172248
_080C7380:
	.4byte gUnknown_0817224C
	THUMB_FUNC_END sub_080C7278

	THUMB_FUNC_START sub_080C7384
sub_080C7384: @ 0x080C7384
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r7, r5, #0
	lsl r1, r1, #24
	lsr r6, r1, #24
	mov r8, r6
	add r0, r5, #0
	add r1, r6, #0
	bl sub_080C7AB8
	lsl r0, r0, #24
	cmp r0, #0
	beq _080C7474
	ldr r3, _080C73F8  @ =gRam
	ldr r0, _080C73FC  @ =0x00001042
	add r2, r3, r0
	add r2, r5, r2
	ldr r0, _080C7400  @ =gUnknown_08172244
	add r0, r6, r0
	ldrb r1, [r2]
	ldrb r0, [r0]
	orr r1, r1, r0
	strb r1, [r2]
	ldr r1, _080C7404  @ =0x00001002
	add r0, r3, r1
	add r0, r5, r0
	ldrb r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #4
	bhi _080C7474
	ldr r1, _080C7408  @ =0x00001072
	add r0, r3, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C7418
	ldr r0, _080C740C  @ =0x00000ED2
	add r4, r3, r0
	add r4, r5, r4
	ldrb r1, [r4]
	add r0, r0, #32
	add r3, r3, r0
	add r3, r5, r3
	ldrb r0, [r3]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldr r0, _080C7410  @ =gUnknown_08172248
	add r0, r6, r0
	ldrb r2, [r0]
	ldr r0, _080C7414  @ =gUnknown_0817224C
	add r0, r6, r0
	ldrb r0, [r0]
	b _080C7468
	.byte 0x00
	.byte 0x00
_080C73F8:
	.4byte gRam
_080C73FC:
	.4byte 0x00001042
_080C7400:
	.4byte gUnknown_08172244
_080C7404:
	.4byte 0x00001002
_080C7408:
	.4byte 0x00001072
_080C740C:
	.4byte 0x00000ED2
_080C7410:
	.4byte gUnknown_08172248
_080C7414:
	.4byte gUnknown_0817224C
_080C7418:
	ldr r1, _080C7480  @ =0x00000ED2
	add r4, r3, r1
	add r4, r7, r4
	ldrb r1, [r4]
	ldr r0, _080C7484  @ =0x00000EF2
	add r3, r3, r0
	add r3, r7, r3
	ldrb r0, [r3]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldr r6, _080C7488  @ =gUnknown_08172248
	add r6, r6, r8
	ldrb r2, [r6]
	ldr r5, _080C748C  @ =gUnknown_0817224C
	add r5, r5, r8
	ldrb r0, [r5]
	lsl r0, r0, #8
	add r2, r2, r0
	add r1, r1, r2
	strb r1, [r4]
	lsr r1, r1, #8
	strb r1, [r3]
	ldrb r1, [r4]
	ldrb r0, [r3]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldrb r2, [r6]
	ldrb r0, [r5]
	lsl r0, r0, #8
	add r2, r2, r0
	add r1, r1, r2
	strb r1, [r4]
	lsr r1, r1, #8
	strb r1, [r3]
	ldrb r1, [r4]
	ldrb r0, [r3]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldrb r2, [r6]
	ldrb r0, [r5]
_080C7468:
	lsl r0, r0, #8
	add r2, r2, r0
	add r1, r1, r2
	strb r1, [r4]
	lsr r1, r1, #8
	strb r1, [r3]
_080C7474:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C7480:
	.4byte 0x00000ED2
_080C7484:
	.4byte 0x00000EF2
_080C7488:
	.4byte gUnknown_08172248
_080C748C:
	.4byte gUnknown_0817224C
	THUMB_FUNC_END sub_080C7384

	THUMB_FUNC_START sub_080C7490
sub_080C7490: @ 0x080C7490
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsl r7, r1, #24
	ldr r1, _080C7524  @ =gRam
	ldr r2, _080C7528  @ =0x000009B2
	add r0, r1, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r5, r1, #0
	cmp r0, #0
	beq _080C7550
	ldr r3, _080C752C  @ =0x00001624
	add r0, r5, r3
	ldrb r1, [r0]
	ldr r2, _080C7530  @ =0x00001625
	add r0, r5, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	add r1, r1, #8
	ldr r6, _080C7534  @ =0x000001FF
	ldr r2, _080C7538  @ =gUnknown_0822A8CC
	lsr r0, r7, #25
	lsl r3, r0, #1
	add r2, r3, r2
	and r1, r1, r6
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	ldr r7, _080C753C  @ =0xFFF80000
	add r1, r1, r7
	lsr r2, r1, #16
	mov r7, #150
	lsl r7, r7, #4
	add r0, r5, r7
	strb r2, [r0]
	lsr r1, r1, #24
	add r7, r7, #1
	add r0, r5, r7
	strb r1, [r0]
	cmp r2, r6
	bls _080C74EA
	b _080C77EC
_080C74EA:
	ldr r1, _080C7540  @ =0x00001622
	add r0, r5, r1
	ldrb r0, [r0]
	ldr r2, _080C7544  @ =0x00001623
	add r1, r5, r2
	ldrb r1, [r1]
	lsl r1, r1, #8
	orr r0, r0, r1
	add r0, r0, #8
	ldr r1, _080C7548  @ =gUnknown_0822A860
	add r1, r3, r1
	and r0, r0, r6
	ldrh r1, [r1]
	add r0, r0, r1
	lsl r0, r0, #16
	ldr r3, _080C753C  @ =0xFFF80000
	add r0, r0, r3
	lsr r3, r0, #16
	add r7, r7, #3
	add r1, r5, r7
	strb r3, [r1]
	lsr r0, r0, #24
	ldr r2, _080C754C  @ =0x00000965
	add r1, r5, r2
	strb r0, [r1]
	cmp r3, r6
	bls _080C75F0
	b _080C77EC
	.byte 0x00
	.byte 0x00
_080C7524:
	.4byte gRam
_080C7528:
	.4byte 0x000009B2
_080C752C:
	.4byte 0x00001624
_080C7530:
	.4byte 0x00001625
_080C7534:
	.4byte 0x000001FF
_080C7538:
	.4byte gUnknown_0822A8CC
_080C753C:
	.4byte 0xFFF80000
_080C7540:
	.4byte 0x00001622
_080C7544:
	.4byte 0x00001623
_080C7548:
	.4byte gUnknown_0822A860
_080C754C:
	.4byte 0x00000965
_080C7550:
	ldr r3, _080C7630  @ =0x00001624
	add r0, r5, r3
	ldrb r0, [r0]
	ldr r2, _080C7634  @ =0x00001625
	add r1, r5, r2
	ldrb r3, [r1]
	lsl r3, r3, #8
	ldr r2, _080C7638  @ =gUnknown_0822A8CC
	lsr r1, r7, #25
	lsl r6, r1, #1
	add r2, r6, r2
	orr r0, r0, r3
	ldrh r2, [r2]
	add r0, r0, r2
	lsl r0, r0, #16
	lsr r2, r0, #16
	mov r3, #150
	lsl r3, r3, #4
	add r1, r5, r3
	strb r2, [r1]
	lsr r0, r0, #24
	ldr r7, _080C763C  @ =0x00000961
	add r1, r5, r7
	strb r0, [r1]
	ldr r1, _080C7640  @ =0x00001602
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r3, _080C7644  @ =0x00001603
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r1, r2, r1
	lsl r1, r1, #16
	lsr r2, r1, #16
	ldr r7, _080C7648  @ =0x000015FE
	add r0, r5, r7
	ldrh r0, [r0]
	cmp r2, r0
	bcc _080C75A2
	b _080C77EC
_080C75A2:
	ldr r1, _080C764C  @ =0x00001622
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _080C7650  @ =0x00001623
	add r0, r5, r2
	ldrb r2, [r0]
	lsl r2, r2, #8
	ldr r0, _080C7654  @ =gUnknown_0822A860
	add r0, r6, r0
	orr r1, r1, r2
	ldrh r0, [r0]
	add r1, r1, r0
	lsl r1, r1, #16
	lsr r3, r1, #16
	ldr r7, _080C7658  @ =0x00000964
	add r0, r5, r7
	strb r3, [r0]
	lsr r1, r1, #24
	ldr r2, _080C765C  @ =0x00000965
	add r0, r5, r2
	strb r1, [r0]
	mov r7, #176
	lsl r7, r7, #5
	add r0, r5, r7
	ldrb r1, [r0]
	ldr r2, _080C7660  @ =0x00001601
	add r0, r5, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r1, r3, r1
	lsl r1, r1, #16
	lsr r3, r1, #16
	sub r7, r7, #4
	add r0, r5, r7
	ldrh r0, [r0]
	cmp r3, r0
	bcc _080C75F0
	b _080C77EC
_080C75F0:
	add r0, r4, #0
	bl sub_080C7AF8
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r5, _080C7664  @ =gRam
	ldr r1, _080C7668  @ =0x00000E75
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _080C7694
	ldr r0, _080C766C  @ =gUnknown_08172370
	add r0, r3, r0
	ldrb r2, [r0]
	cmp r2, #4
	bne _080C7678
	ldr r3, _080C7670  @ =0x000009B2
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080C7626
	b _080C7808
_080C7626:
	ldr r7, _080C7674  @ =0x00001062
	add r0, r5, r7
	add r0, r4, r0
	strb r2, [r0]
	b _080C7808
_080C7630:
	.4byte 0x00001624
_080C7634:
	.4byte 0x00001625
_080C7638:
	.4byte gUnknown_0822A8CC
_080C763C:
	.4byte 0x00000961
_080C7640:
	.4byte 0x00001602
_080C7644:
	.4byte 0x00001603
_080C7648:
	.4byte 0x000015FE
_080C764C:
	.4byte 0x00001622
_080C7650:
	.4byte 0x00001623
_080C7654:
	.4byte gUnknown_0822A860
_080C7658:
	.4byte 0x00000964
_080C765C:
	.4byte 0x00000965
_080C7660:
	.4byte 0x00001601
_080C7664:
	.4byte gRam
_080C7668:
	.4byte 0x00000E75
_080C766C:
	.4byte gUnknown_08172370
_080C7670:
	.4byte 0x000009B2
_080C7674:
	.4byte 0x00001062
_080C7678:
	cmp r2, #0
	bne _080C767E
	b _080C7808
_080C767E:
	ldr r1, _080C7690  @ =0x000015E2
	add r0, r5, r1
	ldrh r0, [r0]
	sub r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #3
	bls _080C773C
	b _080C7814
_080C7690:
	.4byte 0x000015E2
_080C7694:
	ldr r2, _080C76D8  @ =0x000011B2
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #1
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080C7706
	ldr r7, _080C76DC  @ =0x00000FF2
	add r0, r5, r7
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #210
	beq _080C76B6
	cmp r0, #138
	bne _080C76BC
_080C76B6:
	cmp r3, #9
	bne _080C76BC
	b _080C7808
_080C76BC:
	ldr r1, _080C76E0  @ =gRam
	ldr r2, _080C76DC  @ =0x00000FF2
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #148
	bne _080C76E8
	ldr r5, _080C76E4  @ =0x00001062
	add r0, r1, r5
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C76F8
	b _080C7706
_080C76D8:
	.4byte 0x000011B2
_080C76DC:
	.4byte 0x00000FF2
_080C76E0:
	.4byte gRam
_080C76E4:
	.4byte 0x00001062
_080C76E8:
	cmp r0, #227
	beq _080C76F8
	cmp r0, #140
	beq _080C76F8
	cmp r0, #154
	beq _080C76F8
	cmp r0, #129
	bne _080C7706
_080C76F8:
	cmp r3, #8
	bne _080C76FE
	b _080C7808
_080C76FE:
	cmp r3, #9
	bne _080C7704
	b _080C7808
_080C7704:
	b _080C7814
_080C7706:
	ldr r0, _080C7748  @ =gUnknown_08172270
	add r0, r3, r0
	ldrb r2, [r0]
	ldr r1, _080C774C  @ =gRam
	ldr r7, _080C7750  @ =0x00000FF2
	add r0, r1, r7
	add r0, r4, r0
	ldrb r0, [r0]
	add r5, r1, #0
	cmp r0, #167
	bne _080C7726
	cmp r3, #8
	beq _080C7724
	cmp r3, #10
	bne _080C7726
_080C7724:
	mov r2, #1
_080C7726:
	cmp r2, #0
	beq _080C7808
	ldr r1, _080C7754  @ =0x000015E2
	add r0, r5, r1
	ldrh r1, [r0]
	add r0, r1, #0
	sub r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #3
	bhi _080C7758
_080C773C:
	bl sub_080C7948
	lsl r0, r0, #24
	lsr r0, r0, #24
	b _080C7816
	.byte 0x00
	.byte 0x00
_080C7748:
	.4byte gUnknown_08172270
_080C774C:
	.4byte gRam
_080C7750:
	.4byte 0x00000FF2
_080C7754:
	.4byte 0x000015E2
_080C7758:
	lsl r0, r1, #16
	lsr r0, r0, #16
	cmp r0, #68
	beq _080C7790
	cmp r0, #32
	bne _080C7814
	ldr r2, _080C7788  @ =0x00000D84
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080C7814
	mov r1, #0
	ldr r3, _080C778C  @ =0x00001072
	add r0, r5, r3
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C7784
	mov r1, #1
_080C7784:
	add r0, r1, #0
	b _080C7816
_080C7788:
	.4byte 0x00000D84
_080C778C:
	.4byte 0x00001072
_080C7790:
	ldr r7, _080C77DC  @ =0x00001072
	add r0, r5, r7
	add r7, r4, r0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080C7814
	ldr r1, _080C77E0  @ =0x00000EB5
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _080C7814
	ldr r2, _080C77E4  @ =0x00000D84
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _080C77C8
	add r0, r4, #0
	mov r1, #4
	bl sub_080C3FCC
_080C77C8:
	ldr r3, _080C77E8  @ =0x000010C2
	add r0, r5, r3
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080C7814
	mov r0, #153
	strb r0, [r1]
	strb r6, [r7]
	b _080C7814
_080C77DC:
	.4byte 0x00001072
_080C77E0:
	.4byte 0x00000EB5
_080C77E4:
	.4byte 0x00000D84
_080C77E8:
	.4byte 0x000010C2
_080C77EC:
	ldr r7, _080C780C  @ =0x00001012
	add r0, r5, r7
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #1
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080C7814
	ldr r1, _080C7810  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
_080C7808:
	mov r0, #0
	b _080C7816
_080C780C:
	.4byte 0x00001012
_080C7810:
	.4byte 0x00000FA2
_080C7814:
	mov r0, #1
_080C7816:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C7490

	THUMB_FUNC_START sub_080C781C
sub_080C781C: @ 0x080C781C
	push {r4,r5,lr}
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r2, r1, #0
	ldr r4, _080C7868  @ =gRam
	ldr r0, _080C786C  @ =0x00000969
	add r3, r4, r0
	mov r0, #0
	strb r0, [r3]
	ldr r5, _080C7870  @ =0x0000096C
	add r1, r4, r5
	strb r0, [r1]
	cmp r2, #0
	beq _080C783E
	strb r0, [r3]
	mov r0, #16
	strb r0, [r1]
_080C783E:
	ldr r1, _080C7874  @ =0x000009B2
	add r0, r4, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080C7880
	ldr r3, _080C7878  @ =0x00000964
	add r0, r4, r3
	mov r5, #0
	ldrsh r0, [r0, r5]
	sub r3, r3, #4
	add r1, r4, r3
	mov r5, #0
	ldrsh r1, [r1, r5]
	bl sub_080928A4
	ldr r2, _080C787C  @ =0x000015E2
	add r1, r4, r2
	b _080C78B8
	.byte 0x00
	.byte 0x00
_080C7868:
	.4byte gRam
_080C786C:
	.4byte 0x00000969
_080C7870:
	.4byte 0x0000096C
_080C7874:
	.4byte 0x000009B2
_080C7878:
	.4byte 0x00000964
_080C787C:
	.4byte 0x000015E2
_080C7880:
	ldr r3, _080C78C8  @ =0x00000964
	add r2, r4, r3
	ldrb r1, [r2]
	ldr r5, _080C78CC  @ =0x00000965
	add r3, r4, r5
	ldrb r0, [r3]
	lsl r0, r0, #8
	orr r1, r1, r0
	lsr r1, r1, #3
	lsl r1, r1, #16
	lsr r0, r1, #16
	strb r0, [r2]
	lsr r1, r1, #24
	strb r1, [r3]
	lsl r0, r0, #3
	mov r2, #150
	lsl r2, r2, #4
	add r1, r4, r2
	ldrb r1, [r1]
	ldr r3, _080C78D0  @ =0x00000961
	add r2, r4, r3
	ldrb r2, [r2]
	lsl r2, r2, #8
	add r1, r1, r2
	bl sub_080691D8
	ldr r5, _080C78D4  @ =0x000015E2
	add r1, r4, r5
_080C78B8:
	strh r0, [r1]
	ldr r0, _080C78D8  @ =gRam
	ldr r1, _080C78D4  @ =0x000015E2
	add r0, r0, r1
	ldrb r0, [r0]
	pop {r4,r5}
	pop {r1}
	bx r1
_080C78C8:
	.4byte 0x00000964
_080C78CC:
	.4byte 0x00000965
_080C78D0:
	.4byte 0x00000961
_080C78D4:
	.4byte 0x000015E2
_080C78D8:
	.4byte gRam
	THUMB_FUNC_END sub_080C781C

	THUMB_FUNC_START sub_080C78DC
sub_080C78DC: @ 0x080C78DC
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080C7930  @ =gRam
	ldr r1, _080C7934  @ =0x00000ED2
	add r5, r3, r1
	add r5, r0, r5
	ldrb r1, [r5]
	ldr r2, _080C7938  @ =0x00000EF2
	add r4, r3, r2
	add r4, r0, r4
	ldrb r2, [r4]
	lsl r2, r2, #8
	ldr r7, _080C793C  @ =0x0000179A
	add r6, r3, r7
	orr r1, r1, r2
	ldrh r6, [r6]
	add r1, r1, r6
	strb r1, [r5]
	lsr r1, r1, #8
	strb r1, [r4]
	ldr r1, _080C7940  @ =0x00000EE2
	add r4, r3, r1
	add r4, r0, r4
	ldrb r1, [r4]
	ldr r5, _080C7944  @ =0x00000F02
	add r2, r3, r5
	add r0, r0, r2
	ldrb r2, [r0]
	lsl r2, r2, #8
	add r7, r7, #2
	add r3, r3, r7
	orr r1, r1, r2
	ldrh r3, [r3]
	add r1, r1, r3
	strb r1, [r4]
	lsr r1, r1, #8
	strb r1, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C7930:
	.4byte gRam
_080C7934:
	.4byte 0x00000ED2
_080C7938:
	.4byte 0x00000EF2
_080C793C:
	.4byte 0x0000179A
_080C7940:
	.4byte 0x00000EE2
_080C7944:
	.4byte 0x00000F02
	THUMB_FUNC_END sub_080C78DC

	THUMB_FUNC_START sub_080C7948
sub_080C7948: @ 0x080C7948
	push {r4,lr}
	ldr r1, _080C799C  @ =gRam
	mov r2, #150
	lsl r2, r2, #4
	add r0, r1, r2
	ldrb r3, [r0]
	mov r2, #7
	add r0, r2, #0
	and r0, r0, r3
	ldr r3, _080C79A0  @ =0x00000968
	add r4, r1, r3
	strb r0, [r4]
	sub r3, r3, #4
	add r0, r1, r3
	ldrb r0, [r0]
	and r2, r2, r0
	add r3, r3, #5
	add r0, r1, r3
	strb r2, [r0]
	ldr r3, _080C79A4  @ =0x000015E2
	add r0, r1, r3
	ldrb r0, [r0]
	sub r0, r0, #16
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080C79A8  @ =0x0000096C
	add r1, r1, r3
	strb r0, [r1]
	lsl r1, r0, #27
	lsr r3, r1, #24
	orr r3, r3, r2
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	ble _080C79B0
	mov r2, #0
	mov r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, _080C79AC  @ =gUnknown_08172250
	add r0, r3, r0
	ldrb r0, [r0]
	b _080C79BC
_080C799C:
	.4byte gRam
_080C79A0:
	.4byte 0x00000968
_080C79A4:
	.4byte 0x000015E2
_080C79A8:
	.4byte 0x0000096C
_080C79AC:
	.4byte gUnknown_08172250
_080C79B0:
	mov r2, #0
	ldr r0, _080C79CC  @ =gUnknown_08172250
	add r0, r3, r0
	ldrb r1, [r0]
	mov r0, #0
	ldrsb r0, [r4, r0]
_080C79BC:
	cmp r1, r0
	blt _080C79C2
	mov r2, #1
_080C79C2:
	add r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C79CC:
	.4byte gUnknown_08172250
	THUMB_FUNC_END sub_080C7948

	THUMB_FUNC_START sub_080C79D0
sub_080C79D0: @ 0x080C79D0
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080C6F48
	ldr r0, _080C79F0  @ =gRam
	ldr r1, _080C79F4  @ =0x00001042
	add r0, r0, r1
	add r4, r4, r0
	ldrb r0, [r4]
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C79F0:
	.4byte gRam
_080C79F4:
	.4byte 0x00001042
	THUMB_FUNC_END sub_080C79D0

	THUMB_FUNC_START sub_080C79F8
sub_080C79F8: @ 0x080C79F8
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080C6F48
	ldr r0, _080C7A18  @ =gRam
	ldr r1, _080C7A1C  @ =0x00001042
	add r0, r0, r1
	add r4, r4, r0
	ldrb r0, [r4]
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C7A18:
	.4byte gRam
_080C7A1C:
	.4byte 0x00001042
	THUMB_FUNC_END sub_080C79F8

	THUMB_FUNC_START sub_080C7A20
sub_080C7A20: @ 0x080C7A20
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080C6F48
	ldr r0, _080C7A40  @ =gRam
	ldr r1, _080C7A44  @ =0x00001042
	add r0, r0, r1
	add r4, r4, r0
	ldrb r0, [r4]
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C7A40:
	.4byte gRam
_080C7A44:
	.4byte 0x00001042
	THUMB_FUNC_END sub_080C7A20

	THUMB_FUNC_START sub_080C7A48
sub_080C7A48: @ 0x080C7A48
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080C6F48
	ldr r0, _080C7A68  @ =gRam
	ldr r1, _080C7A6C  @ =0x00001042
	add r0, r0, r1
	add r4, r4, r0
	ldrb r0, [r4]
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C7A68:
	.4byte gRam
_080C7A6C:
	.4byte 0x00001042
	THUMB_FUNC_END sub_080C7A48

	THUMB_FUNC_START sub_080C7A70
sub_080C7A70: @ 0x080C7A70
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080C7014
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C7A70

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C7A80
sub_080C7A80: @ 0x080C7A80
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r4, #1
_080C7A88:
	lsl r1, r4, #24
	lsr r1, r1, #24
	add r0, r5, #0
	bl sub_080C7384
	sub r4, r4, #1
	cmp r4, #0
	bge _080C7A88
	mov r4, #3
_080C7A9A:
	lsl r1, r4, #24
	lsr r1, r1, #24
	add r0, r5, #0
	bl sub_080C7278
	sub r4, r4, #1
	cmp r4, #1
	bne _080C7A9A
	add r0, r5, #0
	bl sub_080C70E8
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C7A80

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C7AB8
sub_080C7AB8: @ 0x080C7AB8
	push {r4,lr}
	add r3, r1, #0
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r3, r3, #24
	lsr r3, r3, #24
	ldr r1, _080C7AF0  @ =gRam
	mov r4, #151
	lsl r4, r4, #4
	add r2, r1, r4
	strb r3, [r2]
	ldr r2, _080C7AF4  @ =0x00000D84
	add r1, r1, r2
	add r1, r0, r1
	ldrb r2, [r1]
	mov r1, #240
	and r1, r1, r2
	lsr r1, r1, #2
	add r1, r1, r3
	lsl r1, r1, #25
	lsr r1, r1, #24
	bl sub_080C7490
	lsl r0, r0, #24
	lsr r0, r0, #24
	pop {r4}
	pop {r1}
	bx r1
_080C7AF0:
	.4byte gRam
_080C7AF4:
	.4byte 0x00000D84
	THUMB_FUNC_END sub_080C7AB8

	THUMB_FUNC_START sub_080C7AF8
sub_080C7AF8: @ 0x080C7AF8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080C7B14  @ =gRam
	ldr r2, _080C7B18  @ =0x000010F2
	add r1, r1, r2
	add r1, r0, r1
	ldrb r1, [r1]
	bl sub_080C781C
	lsl r0, r0, #24
	lsr r0, r0, #24
	pop {r1}
	bx r1
_080C7B14:
	.4byte gRam
_080C7B18:
	.4byte 0x000010F2
	THUMB_FUNC_END sub_080C7AF8

	THUMB_FUNC_START sub_080C7B1C
sub_080C7B1C: @ 0x080C7B1C
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C8178
	add r0, r4, #0
	bl Sprite3_CheckIfActive_Permissive
	ldr r0, _080C7B8C  @ =gRam
	ldr r1, _080C7B90  @ =0x00001072
	add r0, r0, r1
	add r2, r4, r0
	ldrb r1, [r2]
	cmp r1, #0
	beq _080C7B50
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080C7B4A
	mov r0, #0
	strb r0, [r2]
_080C7B4A:
	add r0, r4, #0
	bl sub_080C3540
_080C7B50:
	ldr r5, _080C7B8C  @ =gRam
	ldr r1, _080C7B94  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #31
	bhi _080C7B66
	mov r0, sp
	add r1, r4, #0
	bl sub_080C4948
_080C7B66:
	add r0, r4, #0
	bl sub_080C1FD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C7BB4
	add r0, r4, #0
	bl Sprite3_Move
	ldr r1, _080C7B98  @ =0x00001062
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C7B9C
	add r0, r4, #0
	bl sub_080C7BC0
	b _080C7BB4
_080C7B8C:
	.4byte gRam
_080C7B90:
	.4byte 0x00001072
_080C7B94:
	.4byte 0x00000FC2
_080C7B98:
	.4byte 0x00001062
_080C7B9C:
	add r0, r4, #0
	bl sub_080C6F48
	ldr r1, _080C7BBC  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C7BB4
	add r0, r4, #0
	bl sub_080C811C
_080C7BB4:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080C7BBC:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080C7B1C

	THUMB_FUNC_START sub_080C7BC0
sub_080C7BC0: @ 0x080C7BC0
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r1, _080C7C5C  @ =gUnknown_0822A8C8
	ldr r0, _080C7C60  @ =gUnknown_0822A860
	sub r1, r1, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl sub_080C7490
	ldr r1, _080C7C64  @ =gUnknown_0822788F
	ldr r3, _080C7C68  @ =gRam
	ldr r2, _080C7C6C  @ =0x00000FF2
	add r0, r3, r2
	add r0, r4, r0
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _080C7C0C
	ldr r0, _080C7C70  @ =0x00001032
	add r1, r3, r0
	add r1, r4, r1
	ldrb r2, [r1]
	mov r0, #16
	orr r0, r0, r2
	strb r0, [r1]
	ldr r1, _080C7C74  @ =0x000015E2
	add r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #32
	bne _080C7C0C
	add r0, r4, #0
	bl sub_080C8764
_080C7C0C:
	add r0, r4, #0
	bl sub_080C2C4C
	ldr r2, _080C7C68  @ =gRam
	ldr r0, _080C7C78  @ =0x00001152
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	sub r0, r0, #2
	strb r0, [r1]
	ldr r1, _080C7C7C  @ =0x00001142
	add r2, r2, r1
	add r2, r4, r2
	ldrb r0, [r2]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #239
	bls _080C7C3E
	add r0, r4, #0
	bl sub_080C7CB4
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C7C58
_080C7C3E:
	ldr r1, _080C7C68  @ =gRam
	ldr r2, _080C7C80  @ =0x00000FA2
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #11
	bne _080C7C88
	ldr r2, _080C7C84  @ =0x0000142C
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C7C88
_080C7C58:
	mov r0, #1
	b _080C7CA4
_080C7C5C:
	.4byte gUnknown_0822A8C8
_080C7C60:
	.4byte gUnknown_0822A860
_080C7C64:
	.4byte gUnknown_0822788F
_080C7C68:
	.4byte gRam
_080C7C6C:
	.4byte 0x00000FF2
_080C7C70:
	.4byte 0x00001032
_080C7C74:
	.4byte 0x000015E2
_080C7C78:
	.4byte 0x00001152
_080C7C7C:
	.4byte 0x00001142
_080C7C80:
	.4byte 0x00000FA2
_080C7C84:
	.4byte 0x0000142C
_080C7C88:
	add r0, r4, #0
	bl sub_080C3094
	ldr r0, _080C7CAC  @ =gRam
	ldr r1, _080C7CB0  @ =0x00000FF2
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #74
	beq _080C7CA2
	add r0, r4, #0
	bl sub_080C4C98
_080C7CA2:
	mov r0, #0
_080C7CA4:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C7CAC:
	.4byte gRam
_080C7CB0:
	.4byte 0x00000FF2
	THUMB_FUNC_END sub_080C7BC0

	THUMB_FUNC_START sub_080C7CB4
sub_080C7CB4: @ 0x080C7CB4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r2, _080C7D0C  @ =gRam
	ldr r1, _080C7D10  @ =0x00001142
	add r0, r2, r1
	add r0, r6, r0
	mov r1, #0
	strb r1, [r0]
	ldr r1, _080C7D14  @ =0x00000FF2
	add r0, r2, r1
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #232
	bne _080C7D28
	ldr r1, _080C7D18  @ =0x00001152
	add r0, r2, r1
	add r0, r6, r0
	ldrb r0, [r0]
	add r0, r0, #24
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080C7D28
	ldr r1, _080C7D1C  @ =0x00000FA2
	add r0, r2, r1
	add r0, r6, r0
	mov r1, #6
	strb r1, [r0]
	ldr r1, _080C7D20  @ =0x00000FC2
	add r0, r2, r1
	add r0, r6, r0
	mov r1, #8
	strb r1, [r0]
	ldr r1, _080C7D24  @ =0x00001012
	add r0, r2, r1
	add r0, r6, r0
	mov r1, #3
	strb r1, [r0]
	mov r0, #1
	b _080C7ED0
	.byte 0x00
	.byte 0x00
_080C7D0C:
	.4byte gRam
_080C7D10:
	.4byte 0x00001142
_080C7D14:
	.4byte 0x00000FF2
_080C7D18:
	.4byte 0x00001152
_080C7D1C:
	.4byte 0x00000FA2
_080C7D20:
	.4byte 0x00000FC2
_080C7D24:
	.4byte 0x00001012
_080C7D28:
	add r0, r6, #0
	bl sub_080C5104
	ldr r2, _080C7D6C  @ =gRam
	ldr r1, _080C7D70  @ =0x000015E2
	add r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #32
	bne _080C7D7C
	ldr r1, _080C7D74  @ =0x00000D84
	add r0, r2, r1
	add r0, r6, r0
	ldrb r1, [r0]
	mov r3, #1
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	bne _080C7D7C
	ldr r1, _080C7D78  @ =0x00000FA2
	add r0, r2, r1
	add r0, r6, r0
	strb r3, [r0]
	add r1, r1, #32
	add r0, r2, r1
	add r0, r6, r0
	mov r1, #31
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #108
	bl sub_080CF0AC
	mov r0, #1
	b _080C7ED0
	.byte 0x00
	.byte 0x00
_080C7D6C:
	.4byte gRam
_080C7D70:
	.4byte 0x000015E2
_080C7D74:
	.4byte 0x00000D84
_080C7D78:
	.4byte 0x00000FA2
_080C7D7C:
	ldr r7, _080C7E54  @ =gRam
	ldr r2, _080C7E58  @ =0x000015E2
	add r0, r7, r2
	ldrh r0, [r0]
	cmp r0, #9
	bne _080C7DEE
	ldr r1, _080C7E5C  @ =0x00001152
	add r0, r7, r1
	add r0, r6, r0
	ldrb r1, [r0]
	add r1, r1, #16
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #0
	mov r8, r2
	mov r2, r8
	strb r2, [r0]
	mov r0, #128
	and r1, r1, r0
	cmp r1, #0
	beq _080C7DEE
	mov r0, #236
	add r1, r6, #0
	bl sub_080CA538
	lsl r0, r0, #24
	cmp r0, #0
	blt _080C7DEE
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080CAE50
	add r0, r4, #0
	mov r1, #110
	bl sub_080CF0AC
	ldr r1, _080C7E60  @ =0x00000FA2
	add r0, r7, r1
	add r0, r4, r0
	mov r5, #3
	strb r5, [r0]
	ldr r2, _080C7E64  @ =0x00000FC2
	add r0, r7, r2
	add r0, r4, r0
	mov r1, #15
	strb r1, [r0]
	ldr r1, _080C7E68  @ =0x00000F52
	add r0, r7, r1
	add r0, r4, r0
	mov r2, r8
	strb r2, [r0]
	bl GetRandomInt
	ldr r1, _080C7E6C  @ =0x00001012
	add r0, r7, r1
	add r4, r4, r0
	strb r5, [r4]
_080C7DEE:
	ldr r0, _080C7E54  @ =gRam
	ldr r2, _080C7E58  @ =0x000015E2
	add r1, r0, r2
	ldrh r1, [r1]
	add r3, r0, #0
	cmp r1, #8
	bne _080C7E74
	ldr r1, _080C7E70  @ =0x00000FF2
	add r0, r3, r1
	add r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #210
	beq _080C7E14
	bl GetRandomInt
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _080C7E1A
_080C7E14:
	add r0, r6, #0
	bl sub_080F1F20
_080C7E1A:
	add r0, r6, #0
	mov r1, #110
	bl sub_080CF0AC
	ldr r4, _080C7E54  @ =gRam
	ldr r2, _080C7E60  @ =0x00000FA2
	add r0, r4, r2
	add r0, r6, r0
	mov r2, #0
	mov r5, #3
	strb r5, [r0]
	ldr r1, _080C7E64  @ =0x00000FC2
	add r0, r4, r1
	add r0, r6, r0
	mov r1, #15
	strb r1, [r0]
	ldr r1, _080C7E68  @ =0x00000F52
	add r0, r4, r1
	add r0, r6, r0
	strb r2, [r0]
	bl GetRandomInt
	ldr r2, _080C7E6C  @ =0x00001012
	add r4, r4, r2
	add r4, r6, r4
	strb r5, [r4]
	mov r0, #1
	b _080C7ED0
	.byte 0x00
	.byte 0x00
_080C7E54:
	.4byte gRam
_080C7E58:
	.4byte 0x000015E2
_080C7E5C:
	.4byte 0x00001152
_080C7E60:
	.4byte 0x00000FA2
_080C7E64:
	.4byte 0x00000FC2
_080C7E68:
	.4byte 0x00000F52
_080C7E6C:
	.4byte 0x00001012
_080C7E70:
	.4byte 0x00000FF2
_080C7E74:
	ldr r1, _080C7EDC  @ =0x00001152
	add r0, r3, r1
	add r2, r6, r0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080C7E9A
	ldrb r0, [r2]
	mvn r0, r0
	lsl r0, r0, #24
	mov r1, #128
	lsl r1, r1, #17
	add r0, r0, r1
	lsr r0, r0, #25
	cmp r0, #8
	bhi _080C7E98
	mov r0, #0
_080C7E98:
	strb r0, [r2]
_080C7E9A:
	ldr r2, _080C7EE0  @ =0x00000F22
	add r0, r3, r2
	add r2, r6, r0
	ldrb r1, [r2]
	mov r5, #128
	add r0, r5, #0
	and r0, r0, r1
	lsr r1, r1, #1
	orr r0, r0, r1
	mov r7, #0
	strb r0, [r2]
	cmp r0, #255
	bne _080C7EB6
	strb r7, [r2]
_080C7EB6:
	ldr r1, _080C7EE4  @ =0x00000F12
	add r0, r3, r1
	add r4, r6, r0
	ldrb r1, [r4]
	add r0, r5, #0
	and r0, r0, r1
	lsr r1, r1, #1
	orr r0, r0, r1
	strb r0, [r4]
	cmp r0, #255
	bne _080C7ECE
	strb r7, [r4]
_080C7ECE:
	mov r0, #0
_080C7ED0:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C7EDC:
	.4byte 0x00001152
_080C7EE0:
	.4byte 0x00000F22
_080C7EE4:
	.4byte 0x00000F12
	THUMB_FUNC_END sub_080C7CB4

	THUMB_FUNC_START sub_080C7EE8
sub_080C7EE8: @ 0x080C7EE8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl SpriteActive_Main
	ldr r2, _080C7F0C  @ =gRam
	ldr r1, _080C7F10  @ =0x0000142C
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C7F14
	add r0, r4, #0
	bl sub_080C7FF4
	b _080C7F38
_080C7F0C:
	.4byte gRam
_080C7F10:
	.4byte 0x0000142C
_080C7F14:
	ldr r1, _080C7F40  @ =0x00000FC2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #31
	bhi _080C7F32
	ldr r0, _080C7F44  @ =0x00001122
	add r2, r2, r0
	add r2, r4, r2
	ldrb r1, [r2]
	mov r0, #241
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2]
_080C7F32:
	add r0, r5, #0
	bl sub_080C7F48
_080C7F38:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C7F40:
	.4byte 0x00000FC2
_080C7F44:
	.4byte 0x00001122
	THUMB_FUNC_END sub_080C7EE8

	THUMB_FUNC_START sub_080C7F48
sub_080C7F48: @ 0x080C7F48
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	lsl r1, r0, #4
	ldr r7, _080C7FCC  @ =gRam
	ldr r2, _080C7FD0  @ =0x00000996
	add r0, r7, r2
	ldrb r0, [r0]
	eor r1, r1, r0
	ldr r3, _080C7FD4  @ =0x000009AD
	add r0, r7, r3
	ldrb r0, [r0]
	orr r1, r1, r0
	ldr r2, _080C7FD8  @ =gUnknown_08172478
	ldr r3, _080C7FDC  @ =0x00000FC2
	add r0, r7, r3
	add r0, r0, r8
	ldrb r0, [r0]
	lsr r0, r0, #4
	add r0, r0, r2
	ldrb r0, [r0]
	and r1, r1, r0
	cmp r1, #0
	bne _080C7FC2
	bl GetRandomInt
	mov r4, #3
	add r1, r4, #0
	and r1, r1, r0
	ldr r5, _080C7FE0  @ =gUnknown_08172470
	add r0, r1, r5
	ldrb r2, [r0]
	mov r3, #150
	lsl r3, r3, #4
	add r0, r7, r3
	strb r2, [r0]
	ldr r6, _080C7FE4  @ =gUnknown_08172474
	add r1, r1, r6
	ldrb r1, [r1]
	ldr r2, _080C7FE8  @ =0x00000961
	add r0, r7, r2
	strb r1, [r0]
	bl GetRandomInt
	and r4, r4, r0
	add r5, r4, r5
	ldrb r1, [r5]
	ldr r3, _080C7FEC  @ =0x00000964
	add r0, r7, r3
	strb r1, [r0]
	add r4, r4, r6
	ldrb r1, [r4]
	ldr r2, _080C7FF0  @ =0x00000965
	add r0, r7, r2
	strb r1, [r0]
	mov r0, r8
	bl sub_080C9A58
_080C7FC2:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080C7FCC:
	.4byte gRam
_080C7FD0:
	.4byte 0x00000996
_080C7FD4:
	.4byte 0x000009AD
_080C7FD8:
	.4byte gUnknown_08172478
_080C7FDC:
	.4byte 0x00000FC2
_080C7FE0:
	.4byte gUnknown_08172470
_080C7FE4:
	.4byte gUnknown_08172474
_080C7FE8:
	.4byte 0x00000961
_080C7FEC:
	.4byte 0x00000964
_080C7FF0:
	.4byte 0x00000965
	THUMB_FUNC_END sub_080C7F48

	THUMB_FUNC_START sub_080C7FF4
sub_080C7FF4: @ 0x080C7FF4
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r5, r3, #0
	ldr r4, _080C8048  @ =gRam
	ldr r1, _080C804C  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	mov r6, #1
	add r0, r6, #0
	and r0, r0, r1
	ldr r2, _080C8050  @ =0x000009AD
	add r1, r4, r2
	ldrb r1, [r1]
	orr r0, r0, r1
	ldr r2, _080C8054  @ =0x00001605
	add r1, r4, r2
	ldrb r1, [r1]
	orr r0, r0, r1
	cmp r0, #0
	bne _080C8086
	ldr r1, _080C8058  @ =0x00000D74
	add r0, r4, r1
	add r1, r3, r0
	ldrb r0, [r1]
	add r2, r0, #0
	cmp r2, #0
	bne _080C8064
	ldr r1, _080C805C  @ =0x00000FA2
	add r0, r4, r1
	add r0, r3, r0
	mov r1, #9
	strb r1, [r0]
	ldr r1, _080C8060  @ =0x00001112
	add r0, r4, r1
	add r0, r3, r0
	strb r2, [r0]
	sub r1, r1, #16
	add r0, r4, r1
	add r0, r3, r0
	strb r2, [r0]
	b _080C8086
_080C8048:
	.4byte gRam
_080C804C:
	.4byte 0x00000996
_080C8050:
	.4byte 0x000009AD
_080C8054:
	.4byte 0x00001605
_080C8058:
	.4byte 0x00000D74
_080C805C:
	.4byte 0x00000FA2
_080C8060:
	.4byte 0x00001112
_080C8064:
	sub r2, r0, #1
	strb r2, [r1]
	lsl r0, r2, #24
	lsr r0, r0, #24
	cmp r0, #55
	bhi _080C8086
	ldr r1, _080C808C  @ =0x00000F22
	add r0, r4, r1
	add r0, r5, r0
	ldr r1, _080C8090  @ =gUnknown_0817247F
	and r2, r2, r6
	add r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r0]
	add r0, r5, #0
	bl Sprite3_MoveHoriz
_080C8086:
	pop {r4-r6}
	pop {r0}
	bx r0
_080C808C:
	.4byte 0x00000F22
_080C8090:
	.4byte gUnknown_0817247F
	THUMB_FUNC_END sub_080C7FF4

	THUMB_FUNC_START sub_080C8094
sub_080C8094: @ 0x080C8094
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080C80BC  @ =gRam
	ldr r2, _080C80C0  @ =0x00000FA2
	add r1, r3, r2
	add r1, r0, r1
	mov r2, #1
	strb r2, [r1]
	ldr r1, _080C80C4  @ =0x00000FC2
	add r3, r3, r1
	add r3, r0, r3
	mov r1, #31
	strb r1, [r3]
	mov r1, #108
	bl sub_080CF0AC
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C80BC:
	.4byte gRam
_080C80C0:
	.4byte 0x00000FA2
_080C80C4:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080C8094

	THUMB_FUNC_START sub_080C80C8
sub_080C80C8: @ 0x080C80C8
	push {r4-r6,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	mov r1, #110
	bl sub_080CF0AC
	ldr r5, _080C810C  @ =gRam
	ldr r1, _080C8110  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	mov r2, #0
	mov r6, #3
	strb r6, [r0]
	add r1, r1, #32
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #15
	strb r1, [r0]
	ldr r1, _080C8114  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
	bl GetRandomInt
	ldr r0, _080C8118  @ =0x00001012
	add r5, r5, r0
	add r4, r4, r5
	strb r6, [r4]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C810C:
	.4byte gRam
_080C8110:
	.4byte 0x00000FA2
_080C8114:
	.4byte 0x00000F52
_080C8118:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080C80C8

	THUMB_FUNC_START sub_080C811C
sub_080C811C: @ 0x080C811C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080C815C  @ =gRam
	ldr r1, _080C8160  @ =0x00001042
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	beq _080C814E
	add r0, r4, #0
	bl sub_080C50E4
	ldr r1, _080C8164  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #11
	bne _080C814E
	add r0, r4, #0
	mov r1, #113
	bl sub_080CF0AC
_080C814E:
	add r0, r4, #0
	bl sub_080C7BC0
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C815C:
	.4byte gRam
_080C8160:
	.4byte 0x00001042
_080C8164:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080C811C

	THUMB_FUNC_START sub_080C8168
sub_080C8168: @ 0x080C8168
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080C811C
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C8168

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C8178
sub_080C8178: @ 0x080C8178
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080C9704
	add r0, r4, #0
	bl sub_080C7EE8
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C8178

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C8194
sub_080C8194: @ 0x080C8194
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r2, _080C81CC  @ =gRam
	ldr r1, _080C81D0  @ =0x00000E65
	add r0, r2, r1
	add r0, r4, r0
	mov r3, #171
	lsl r3, r3, #4
	add r1, r2, r3
	ldrh r1, [r1]
	strb r1, [r0]
	ldr r1, _080C81D4  @ =0x0000140C
	add r0, r2, r1
	add r3, r4, r0
	ldrb r0, [r3]
	add r5, r2, #0
	cmp r0, #3
	bne _080C81DC
	ldr r2, _080C81D8  @ =0x00001032
	add r0, r5, r2
	add r0, r4, r0
	ldrb r2, [r0]
	mov r1, #239
	and r1, r1, r2
	strb r1, [r0]
	b _080C8200
	.byte 0x00
	.byte 0x00
_080C81CC:
	.4byte gRam
_080C81D0:
	.4byte 0x00000E65
_080C81D4:
	.4byte 0x0000140C
_080C81D8:
	.4byte 0x00001032
_080C81DC:
	ldr r1, _080C8340  @ =0x00000FC2
	add r0, r5, r1
	add r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080C8200
	sub r1, r1, #64
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	mov r1, #4
	cmp r0, #6
	bne _080C81F8
	mov r1, #8
_080C81F8:
	strb r1, [r2]
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
_080C8200:
	mov r3, #150
	lsl r3, r3, #4
	add r2, r5, r3
	mov r0, #0
	strb r0, [r2]
	ldr r1, _080C8344  @ =0x000010E2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #62
	bhi _080C8228
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _080C8228
	mov r0, #1
	strb r0, [r2]
_080C8228:
	ldr r2, _080C8348  @ =0x000016D5
	add r0, r5, r2
	ldrb r3, [r0]
	lsl r0, r3, #25
	ldr r3, _080C834C  @ =0x0000140C
	add r1, r5, r3
	add r1, r4, r1
	lsr r0, r0, #24
	ldrb r1, [r1]
	add r0, r0, r1
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r1, _080C8350  @ =0x000016C4
	add r0, r5, r1
	ldrb r1, [r0]
	sub r2, r2, #16
	add r0, r5, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r0, #150
	lsl r0, r0, #4
	add r6, r5, r0
	mov r0, #0
	ldrsb r0, [r6, r0]
	add r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r0, _080C8354  @ =gUnknown_08172484
	add r0, r3, r0
	ldrb r2, [r0]
	ldr r0, _080C8358  @ =gUnknown_08172494
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	add r1, r1, r2
	ldr r2, _080C835C  @ =0x00000EE2
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	add r2, r2, #32
	add r0, r5, r2
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r0, _080C8360  @ =0x00001142
	add r1, r5, r0
	add r1, r4, r1
	ldr r0, _080C8364  @ =gUnknown_081724A4
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080C8368  @ =0x000016D4
	add r1, r5, r2
	ldrb r0, [r1]
	mov r2, #0
	cmp r0, #5
	bhi _080C82A8
	add r2, r0, #0
_080C82A8:
	ldr r3, _080C836C  @ =0x000016C8
	add r0, r5, r3
	ldrb r1, [r0]
	add r3, r3, #1
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #8
	add r1, r1, r0
	lsl r1, r1, #16
	mov r0, #128
	lsl r0, r0, #9
	add r1, r1, r0
	ldr r0, _080C8370  @ =gUnknown_081724B4
	add r0, r2, r0
	lsr r1, r1, #16
	ldrb r0, [r0]
	add r1, r1, r0
	strb r1, [r6]
	lsr r1, r1, #8
	ldr r3, _080C8374  @ =0x0000097C
	add r2, r5, r3
	strb r1, [r2]
	mov r1, #182
	lsl r1, r1, #5
	add r0, r5, r1
	ldrb r0, [r0]
	ldr r3, _080C8378  @ =0x000016C1
	add r1, r5, r3
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	lsl r1, r1, #8
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #0
	ldrsb r1, [r6, r1]
	sub r0, r0, r1
	lsl r0, r0, #16
	mov r1, #128
	lsl r1, r1, #12
	add r0, r0, r1
	lsr r0, r0, #16
	ldrb r1, [r2]
	lsl r1, r1, #8
	sub r0, r0, r1
	ldr r2, _080C837C  @ =0x00000ED2
	add r1, r5, r2
	add r1, r4, r1
	strb r0, [r1]
	ldr r3, _080C8380  @ =0x00000EF2
	add r1, r5, r3
	add r1, r4, r1
	lsr r0, r0, #8
	strb r0, [r1]
	ldr r0, _080C8384  @ =0x000010F2
	add r1, r5, r0
	add r1, r4, r1
	mov r2, #161
	lsl r2, r2, #4
	add r0, r5, r2
	ldrb r2, [r0]
	mov r0, #1
	and r0, r0, r2
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080C3214
	add r0, r4, #0
	bl sub_080C8388
	pop {r4-r6}
	pop {r0}
	bx r0
_080C8340:
	.4byte 0x00000FC2
_080C8344:
	.4byte 0x000010E2
_080C8348:
	.4byte 0x000016D5
_080C834C:
	.4byte 0x0000140C
_080C8350:
	.4byte 0x000016C4
_080C8354:
	.4byte gUnknown_08172484
_080C8358:
	.4byte gUnknown_08172494
_080C835C:
	.4byte 0x00000EE2
_080C8360:
	.4byte 0x00001142
_080C8364:
	.4byte gUnknown_081724A4
_080C8368:
	.4byte 0x000016D4
_080C836C:
	.4byte 0x000016C8
_080C8370:
	.4byte gUnknown_081724B4
_080C8374:
	.4byte 0x0000097C
_080C8378:
	.4byte 0x000016C1
_080C837C:
	.4byte 0x00000ED2
_080C8380:
	.4byte 0x00000EF2
_080C8384:
	.4byte 0x000010F2
	THUMB_FUNC_END sub_080C8194

	THUMB_FUNC_START sub_080C8388
sub_080C8388: @ 0x080C8388
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl sub_080C1F70
	ldr r6, _080C83AC  @ =gRam
	ldr r1, _080C83B0  @ =0x0000141C
	add r0, r6, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #11
	bne _080C83B4
	add r0, r4, #0
	bl sub_080C7EE8
	b _080C83FE
_080C83AC:
	.4byte gRam
_080C83B0:
	.4byte 0x0000141C
_080C83B4:
	add r0, r5, #0
	bl SpriteActive_Main
	ldr r1, _080C8404  @ =0x000010E2
	add r0, r6, r1
	add r3, r5, r0
	ldrb r0, [r3]
	cmp r0, #1
	bne _080C83FE
	ldr r1, _080C8408  @ =0x00000FA2
	add r0, r6, r1
	add r0, r5, r0
	mov r2, #0
	mov r1, #9
	strb r1, [r0]
	ldr r1, _080C840C  @ =0x00000F72
	add r0, r6, r1
	add r0, r5, r0
	strb r2, [r0]
	mov r0, #96
	strb r0, [r3]
	ldr r1, _080C8410  @ =0x00001152
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #32
	strb r1, [r0]
	ldr r0, _080C8414  @ =0x00001032
	add r1, r6, r0
	add r1, r5, r1
	ldrb r2, [r1]
	mov r0, #16
	orr r0, r0, r2
	strb r0, [r1]
	ldr r0, _080C8418  @ =0x00001792
	add r1, r6, r0
	mov r0, #2
	strb r0, [r1]
_080C83FE:
	pop {r4-r6}
	pop {r0}
	bx r0
_080C8404:
	.4byte 0x000010E2
_080C8408:
	.4byte 0x00000FA2
_080C840C:
	.4byte 0x00000F72
_080C8410:
	.4byte 0x00001152
_080C8414:
	.4byte 0x00001032
_080C8418:
	.4byte 0x00001792
	THUMB_FUNC_END sub_080C8388

	THUMB_FUNC_START sub_080C841C
sub_080C841C: @ 0x080C841C
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080C8464  @ =gRam
	ldr r1, _080C8468  @ =0x000016B5
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C8460
	ldr r0, _080C846C  @ =gUnknown_020023F0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C8460
	ldr r1, _080C8470  @ =0x000011C2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C8460
	ldr r1, _080C8474  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #12
	beq _080C8460
	mov r0, sp
	add r1, r4, #0
	bl sub_080C4948
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C847E
_080C8460:
	mov r0, #0
	b _080C84C2
_080C8464:
	.4byte gRam
_080C8468:
	.4byte 0x000016B5
_080C846C:
	.4byte gUnknown_020023F0
_080C8470:
	.4byte 0x000011C2
_080C8474:
	.4byte 0x00000FA2
_080C8478:
	sub r0, r2, r5
	add r0, r0, #2
	b _080C84A6
_080C847E:
	ldr r6, _080C84CC  @ =gUnknown_081724C6
	ldr r1, _080C84D0  @ =0x00000FF2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r3, [r0]
	ldr r2, _080C84D4  @ =gUnknown_081724BA
	ldrb r1, [r2]
	add r0, r1, #0
	add r5, r2, #0
	cmp r0, #255
	beq _080C84A2
_080C8494:
	cmp r3, r1
	beq _080C8478
	add r2, r2, #1
	ldrb r1, [r2]
	add r0, r1, #0
	cmp r0, #255
	bne _080C8494
_080C84A2:
	mov r0, #1
	neg r0, r0
_080C84A6:
	lsl r0, r0, #1
	add r0, r6, r0
	ldrh r1, [r0]
	add r0, r4, #0
	mov r2, #0
	bl sub_080C9564
	ldr r0, _080C84D8  @ =gRam
	ldr r1, _080C84DC  @ =0x00000FA2
	add r0, r0, r1
	add r0, r4, r0
	mov r1, #12
	strb r1, [r0]
	mov r0, #1
_080C84C2:
	add sp, sp, #4
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C84CC:
	.4byte gUnknown_081724C6
_080C84D0:
	.4byte 0x00000FF2
_080C84D4:
	.4byte gUnknown_081724BA
_080C84D8:
	.4byte gRam
_080C84DC:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080C841C

	THUMB_FUNC_START sub_080C84E0
sub_080C84E0: @ 0x080C84E0
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl Sprite3_CheckIfActive_Permissive
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C8560
	ldr r0, _080C8514  @ =gRam
	ldr r2, _080C8518  @ =0x00001AE2
	add r1, r0, r2
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #0
	beq _080C852A
	ldr r1, _080C851C  @ =0x000011C2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #48
	strb r1, [r0]
	ldr r2, _080C8520  @ =0x00000FA2
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #9
	b _080C855E
_080C8514:
	.4byte gRam
_080C8518:
	.4byte 0x00001AE2
_080C851C:
	.4byte 0x000011C2
_080C8520:
	.4byte 0x00000FA2
_080C8524:
	sub r0, r2, r6
	add r2, r0, #2
	b _080C8550
_080C852A:
	ldr r1, _080C8568  @ =0x00000FF2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r3, [r0]
	ldr r2, _080C856C  @ =gUnknown_081724BA
	ldrb r1, [r2]
	add r0, r1, #0
	add r6, r2, #0
	cmp r0, #255
	beq _080C854C
_080C853E:
	cmp r3, r1
	beq _080C8524
	add r2, r2, #1
	ldrb r1, [r2]
	add r0, r1, #0
	cmp r0, #255
	bne _080C853E
_080C854C:
	mov r2, #1
	neg r2, r2
_080C8550:
	ldr r1, _080C8570  @ =0x000016B4
	add r0, r5, r1
	mov r1, #0
	strb r2, [r0]
	ldr r2, _080C8574  @ =0x00000FA2
	add r0, r5, r2
	add r0, r4, r0
_080C855E:
	strb r1, [r0]
_080C8560:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C8568:
	.4byte 0x00000FF2
_080C856C:
	.4byte gUnknown_081724BA
_080C8570:
	.4byte 0x000016B4
_080C8574:
	.4byte 0x00000FA2
	THUMB_FUNC_END sub_080C84E0

	THUMB_FUNC_START sub_080C8578
sub_080C8578: @ 0x080C8578
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r9, r4
	ldr r0, _080C85A4  @ =gRam
	mov r8, r0
	ldr r0, _080C85A8  @ =0x00000F52
	add r0, r0, r8
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C85AC
	add r0, r4, #0
	bl sub_080C86D8
	b _080C869A
	.byte 0x00
	.byte 0x00
_080C85A4:
	.4byte gRam
_080C85A8:
	.4byte 0x00000F52
_080C85AC:
	ldr r0, _080C86AC  @ =0x00000F62
	add r0, r0, r8
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #6
	bne _080C85BE
	mov r0, #8
	bl sub_080CF3A0
_080C85BE:
	ldr r2, _080C86B0  @ =0x00001032
	add r2, r2, r8
	add r2, r4, r2
	ldrb r0, [r2]
	mov r1, #16
	eor r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	bl sub_080C6240
	ldr r2, _080C86B4  @ =gUnknown_081724E0
	ldr r0, _080C86B8  @ =0x00001052
	add r0, r0, r8
	add r0, r0, r4
	mov r10, r0
	ldrb r0, [r0]
	lsr r0, r0, #2
	mov r1, #3
	and r0, r0, r1
	add r0, r0, r2
	ldrb r0, [r0]
	ldr r5, _080C86BC  @ =0x00000969
	add r5, r5, r8
	strb r0, [r5]
	ldr r0, _080C86C0  @ =0x00000FC2
	add r0, r0, r8
	add r7, r4, r0
	ldrb r0, [r7]
	cmp r0, #1
	bne _080C8604
	ldr r0, _080C86C4  @ =0x00000FA2
	add r0, r0, r8
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
_080C8604:
	mov r6, #26
	ldrb r0, [r7]
	cmp r0, #0
	beq _080C861A
	mov r0, #0
	strb r0, [r5]
	ldr r1, _080C86C8  @ =gUnknown_081724E4
	ldrb r0, [r7]
	lsr r0, r0, #1
	add r0, r0, r1
	ldrb r6, [r0]
_080C861A:
	ldr r0, _080C86CC  @ =gUnknown_03003E74
	ldrh r0, [r0]
	lsl r4, r0, #3
	mov r1, #170
	lsl r1, r1, #3
	add r1, r1, r8
	add r4, r4, r1
	ldrh r1, [r4, #2]
	lsl r1, r1, #23
	lsr r1, r1, #23
	ldrb r2, [r4]
	ldrb r5, [r5]
	mov r3, #36
	orr r3, r3, r5
	lsl r3, r3, #8
	orr r6, r6, r3
	ldrb r3, [r4, #3]
	lsr r3, r3, #6
	lsl r3, r3, #1
	str r3, [sp]
	add r3, r6, #0
	bl sub_080C6004
	ldrb r0, [r7]
	cmp r0, #0
	bne _080C869A
	mov r0, r9
	bl Sprite3_CheckIfActive_Permissive
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #0
	bne _080C869A
	mov r1, r10
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, r9
	bl Sprite3_Move
	mov r0, r9
	bl sub_080C2C4C
	ldr r1, _080C86D0  @ =0x00001152
	add r1, r1, r8
	add r1, r1, r9
	ldrb r0, [r1]
	sub r0, r0, #2
	strb r0, [r1]
	ldr r0, _080C86D4  @ =0x00001142
	add r0, r0, r8
	mov r1, r9
	add r2, r1, r0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080C869A
	strb r4, [r2]
	mov r0, #18
	strb r0, [r7]
	mov r0, r9
	bl sub_080C8764
_080C869A:
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
_080C86AC:
	.4byte 0x00000F62
_080C86B0:
	.4byte 0x00001032
_080C86B4:
	.4byte gUnknown_081724E0
_080C86B8:
	.4byte 0x00001052
_080C86BC:
	.4byte 0x00000969
_080C86C0:
	.4byte 0x00000FC2
_080C86C4:
	.4byte 0x00000FA2
_080C86C8:
	.4byte gUnknown_081724E4
_080C86CC:
	.4byte gUnknown_03003E74
_080C86D0:
	.4byte 0x00001152
_080C86D4:
	.4byte 0x00001142
	THUMB_FUNC_END sub_080C8578

	THUMB_FUNC_START sub_080C86D8
sub_080C86D8: @ 0x080C86D8
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	add r0, r4, #0
	bl Sprite3_CheckIfActive_Permissive
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _080C8742
	ldr r3, _080C8748  @ =gRam
	ldr r1, _080C874C  @ =0x00000996
	add r0, r3, r1
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080C870A
	ldr r6, _080C8750  @ =0x00000FC2
	add r1, r3, r6
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080C870A:
	ldr r1, _080C8754  @ =0x00001122
	add r0, r3, r1
	add r0, r4, r0
	strb r2, [r0]
	ldr r6, _080C8758  @ =0x000010C2
	add r0, r3, r6
	add r0, r4, r0
	strb r2, [r0]
	ldr r1, _080C8750  @ =0x00000FC2
	add r0, r3, r1
	add r2, r4, r0
	ldrb r1, [r2]
	cmp r1, #0
	bne _080C872E
	ldr r6, _080C875C  @ =0x00000FA2
	add r0, r3, r6
	add r0, r4, r0
	strb r1, [r0]
_080C872E:
	ldrb r0, [r2]
	lsl r0, r0, #1
	asr r1, r0, #3
	lsl r1, r1, #4
	ldr r0, _080C8760  @ =gUnknown_081724F0
	add r1, r1, r0
	add r0, r5, #0
	mov r2, #2
	bl sub_080C9480
_080C8742:
	pop {r4-r6}
	pop {r0}
	bx r0
_080C8748:
	.4byte gRam
_080C874C:
	.4byte 0x00000996
_080C8750:
	.4byte 0x00000FC2
_080C8754:
	.4byte 0x00001122
_080C8758:
	.4byte 0x000010C2
_080C875C:
	.4byte 0x00000FA2
_080C8760:
	.4byte gUnknown_081724F0
	THUMB_FUNC_END sub_080C86D8

	THUMB_FUNC_START sub_080C8764
sub_080C8764: @ 0x080C8764
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080C877C  @ =gRam
	ldr r2, _080C8780  @ =0x00001032
	add r1, r1, r2
	add r0, r0, r1
	ldrb r2, [r0]
	mov r1, #239
	and r1, r1, r2
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080C877C:
	.4byte gRam
_080C8780:
	.4byte 0x00001032
	THUMB_FUNC_END sub_080C8764

	THUMB_FUNC_START sub_080C8784
sub_080C8784: @ 0x080C8784
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080C87AC  @ =gRam
	ldr r1, _080C87B0  @ =0x00000FC2
	add r0, r4, r1
	add r6, r5, r0
	ldrb r1, [r6]
	add r2, r1, #0
	cmp r2, #0
	bne _080C87B8
	ldr r3, _080C87B4  @ =0x00000FA2
	add r0, r4, r3
	add r0, r5, r0
	strb r2, [r0]
	add r0, r5, #0
	bl sub_080CB9D4
	b _080C894E
_080C87AC:
	.4byte gRam
_080C87B0:
	.4byte 0x00000FC2
_080C87B4:
	.4byte 0x00000FA2
_080C87B8:
	cmp r2, #63
	bls _080C883C
	ldr r2, _080C87D0  @ =0x00001122
	add r0, r4, r2
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #5
	bne _080C87D4
	mov r0, #63
	strb r0, [r6]
	b _080C883C
	.byte 0x00
	.byte 0x00
_080C87D0:
	.4byte 0x00001122
_080C87D4:
	mov r0, #7
	and r0, r0, r1
	ldr r3, _080C882C  @ =0x000009AD
	add r1, r4, r3
	ldrb r1, [r1]
	orr r0, r0, r1
	ldr r2, _080C8830  @ =0x00001605
	add r1, r4, r2
	ldrb r1, [r1]
	orr r0, r0, r1
	cmp r0, #0
	bne _080C87F4
	add r0, r5, #0
	mov r1, #101
	bl sub_080CF140
_080C87F4:
	add r0, r5, #0
	bl SpriteActive_Main
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r5, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	beq _080C880E
	b _080C894E
_080C880E:
	ldr r3, _080C8834  @ =0x00000964
	add r1, r4, r3
	ldrh r0, [r1]
	sub r0, r0, #8
	strh r0, [r1]
	ldrb r0, [r6]
	add r0, r0, #20
	ldr r2, _080C8838  @ =0x0000096C
	add r1, r4, r2
	strb r0, [r1]
	add r0, r5, #0
	bl sub_080EA860
	b _080C894E
	.byte 0x00
	.byte 0x00
_080C882C:
	.4byte 0x000009AD
_080C8830:
	.4byte 0x00001605
_080C8834:
	.4byte 0x00000964
_080C8838:
	.4byte 0x0000096C
_080C883C:
	ldr r6, _080C887C  @ =gRam
	ldr r3, _080C8880  @ =0x00000FC2
	add r0, r6, r3
	add r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #61
	bne _080C8852
	add r0, r5, #0
	mov r1, #108
	bl sub_080CF0AC
_080C8852:
	ldr r1, _080C8884  @ =0x00000FF2
	add r0, r6, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #38
	beq _080C8862
	cmp r0, #19
	bne _080C8890
_080C8862:
	ldr r2, _080C8888  @ =0x00000F92
	add r1, r6, r2
	add r1, r5, r1
	ldr r2, _080C888C  @ =gUnknown_08172558
	ldrb r0, [r4]
	lsr r0, r0, #1
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	add r0, r5, #0
	bl sub_080C8B2C
	b _080C88C0
_080C887C:
	.4byte gRam
_080C8880:
	.4byte 0x00000FC2
_080C8884:
	.4byte 0x00000FF2
_080C8888:
	.4byte 0x00000F92
_080C888C:
	.4byte gUnknown_08172558
_080C8890:
	ldr r1, _080C8958  @ =gUnknown_08172538
	ldrb r0, [r4]
	lsr r0, r0, #1
	add r0, r0, r1
	ldrb r2, [r0]
	cmp r2, #11
	bhi _080C88B2
	ldr r1, _080C895C  @ =gUnknown_08172588
	ldr r3, _080C8960  @ =0x00000FB2
	add r0, r6, r3
	add r0, r5, r0
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r0, [r0]
	add r0, r2, r0
	lsl r0, r0, #24
	lsr r2, r0, #24
_080C88B2:
	ldr r1, _080C8964  @ =0x00000F92
	add r0, r6, r1
	add r0, r5, r0
	strb r2, [r0]
	add r0, r5, #0
	bl sub_080C8998
_080C88C0:
	ldr r6, _080C8968  @ =gRam
	ldr r3, _080C896C  @ =0x00000996
	add r2, r6, r3
	ldr r1, _080C8970  @ =gUnknown_08172578
	ldr r3, _080C8974  @ =0x00000FC2
	add r0, r6, r3
	add r0, r5, r0
	ldrb r0, [r0]
	lsr r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r2]
	ldrb r4, [r0]
	and r4, r4, r1
	ldr r1, _080C8978  @ =0x000009AD
	add r0, r6, r1
	ldrb r0, [r0]
	orr r4, r4, r0
	cmp r4, #0
	bne _080C894E
	ldr r1, _080C897C  @ =gUnknown_0822A8C8
	ldr r0, _080C8980  @ =gUnknown_0822A860
	sub r1, r1, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r5, #0
	bl sub_080C7490
	ldr r2, _080C8984  @ =0x000015E2
	add r0, r6, r2
	ldrh r0, [r0]
	cmp r0, #32
	beq _080C8910
	ldr r3, _080C8988  @ =0x00001102
	add r0, r6, r3
	add r0, r5, r0
	strb r4, [r0]
	ldr r1, _080C898C  @ =0x00001112
	add r0, r6, r1
	add r0, r5, r0
	strb r4, [r0]
_080C8910:
	ldr r2, _080C8990  @ =0x00000F12
	add r0, r6, r2
	add r1, r5, r0
	ldr r3, _080C8988  @ =0x00001102
	add r0, r6, r3
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _080C8928
	add r0, r0, #3
_080C8928:
	asr r0, r0, #2
	strb r0, [r1]
	ldr r1, _080C8994  @ =0x00000F22
	add r0, r6, r1
	add r1, r5, r0
	ldr r2, _080C898C  @ =0x00001112
	add r0, r6, r2
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _080C8944
	add r0, r0, #3
_080C8944:
	asr r0, r0, #2
	strb r0, [r1]
	add r0, r5, #0
	bl Sprite3_Move
_080C894E:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C8958:
	.4byte gUnknown_08172538
_080C895C:
	.4byte gUnknown_08172588
_080C8960:
	.4byte 0x00000FB2
_080C8964:
	.4byte 0x00000F92
_080C8968:
	.4byte gRam
_080C896C:
	.4byte 0x00000996
_080C8970:
	.4byte gUnknown_08172578
_080C8974:
	.4byte 0x00000FC2
_080C8978:
	.4byte 0x000009AD
_080C897C:
	.4byte gUnknown_0822A8C8
_080C8980:
	.4byte gUnknown_0822A860
_080C8984:
	.4byte 0x000015E2
_080C8988:
	.4byte 0x00001102
_080C898C:
	.4byte 0x00001112
_080C8990:
	.4byte 0x00000F12
_080C8994:
	.4byte 0x00000F22
	THUMB_FUNC_END sub_080C8784

	THUMB_FUNC_START sub_080C8998
sub_080C8998: @ 0x080C8998
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
	lsr r4, r0, #24
	cmp r4, #0
	bne _080C8A9A
	ldr r3, _080C89E4  @ =gRam
	ldr r1, _080C89E8  @ =0x00000F92
	add r0, r3, r1
	add r0, r0, r9
	ldrb r2, [r0]
	lsl r1, r2, #2
	ldr r5, _080C89EC  @ =0x0000096C
	add r0, r3, r5
	strb r1, [r0]
	cmp r2, #11
	bhi _080C89DC
	mov r1, #3
	and r2, r2, r1
	cmp r2, #0
	beq _080C89F4
_080C89DC:
	ldr r1, _080C89F0  @ =0x0000096D
	add r0, r3, r1
	strb r4, [r0]
	b _080C89FA
_080C89E4:
	.4byte gRam
_080C89E8:
	.4byte 0x00000F92
_080C89EC:
	.4byte 0x0000096C
_080C89F0:
	.4byte 0x0000096D
_080C89F4:
	ldr r2, _080C8AAC  @ =0x0000096D
	add r0, r3, r2
	strb r1, [r0]
_080C89FA:
	ldr r2, _080C8AB0  @ =gRam
	ldr r5, _080C8AAC  @ =0x0000096D
	add r0, r2, r5
	mov r7, #0
	ldrsb r7, [r0, r7]
	cmp r7, #0
	blt _080C8A8A
	mov r8, r2
	ldr r0, _080C8AB4  @ =gUnknown_03003E74
	mov r10, r0
_080C8A0E:
	ldr r0, _080C8AB8  @ =0x0000096C
	add r0, r0, r8
	ldrb r6, [r0]
	add r6, r6, r7
	lsl r6, r6, #24
	lsr r6, r6, #24
	ldr r0, _080C8AAC  @ =0x0000096D
	add r0, r0, r8
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r0, r0, r7
	mov r1, r10
	ldrh r1, [r1]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r8
	ldr r1, _080C8ABC  @ =gUnknown_081725EC
	add r1, r6, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, _080C8AC0  @ =0x00000964
	add r3, r3, r8
	ldr r2, _080C8AC4  @ =gUnknown_08172624
	add r2, r6, r2
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080C8AC8  @ =gUnknown_0817265C
	add r3, r6, r3
	ldrb r3, [r3]
	ldr r4, _080C8ACC  @ =gUnknown_08172694
	add r4, r6, r4
	ldrb r4, [r4]
	mov r12, r4
	ldr r5, _080C8AD0  @ =gUnknown_03002B99
	ldrb r4, [r5]
	mov r5, r12
	eor r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	ldr r4, _080C8AD4  @ =gUnknown_081726CC
	add r6, r6, r4
	ldrb r4, [r6]
	str r4, [sp]
	bl sub_080C6004
	sub r7, r7, #1
	cmp r7, #0
	bge _080C8A0E
_080C8A8A:
	ldr r0, _080C8AB0  @ =gRam
	ldr r1, _080C8AAC  @ =0x0000096D
	add r0, r0, r1
	ldrb r2, [r0]
	mov r0, r9
	mov r1, #255
	bl sub_080C5DA0
_080C8A9A:
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
_080C8AAC:
	.4byte 0x0000096D
_080C8AB0:
	.4byte gRam
_080C8AB4:
	.4byte gUnknown_03003E74
_080C8AB8:
	.4byte 0x0000096C
_080C8ABC:
	.4byte gUnknown_081725EC
_080C8AC0:
	.4byte 0x00000964
_080C8AC4:
	.4byte gUnknown_08172624
_080C8AC8:
	.4byte gUnknown_0817265C
_080C8ACC:
	.4byte gUnknown_08172694
_080C8AD0:
	.4byte gUnknown_03002B99
_080C8AD4:
	.4byte gUnknown_081726CC
	THUMB_FUNC_END sub_080C8998

	THUMB_FUNC_START sub_080C8AD8
sub_080C8AD8: @ 0x080C8AD8
	push {r4,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r4, r1, #0
	ldr r3, _080C8B00  @ =gRam
	ldr r2, _080C8B04  @ =0x00000FC2
	add r0, r3, r2
	add r0, r1, r0
	ldrb r2, [r0]
	cmp r2, #0
	bne _080C8B0C
	ldr r4, _080C8B08  @ =0x00000FA2
	add r0, r3, r4
	add r0, r1, r0
	strb r2, [r0]
	add r0, r1, #0
	bl sub_080CB9D4
	b _080C8B24
_080C8B00:
	.4byte gRam
_080C8B04:
	.4byte 0x00000FC2
_080C8B08:
	.4byte 0x00000FA2
_080C8B0C:
	mov r1, sp
	add r1, r1, #1
	mov r0, sp
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C8B24
	add r0, r4, #0
	bl sub_080C8B88
_080C8B24:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C8AD8

	THUMB_FUNC_START sub_080C8B2C
sub_080C8B2C: @ 0x080C8B2C
	push {lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _080C8B58  @ =gRam
	ldr r3, _080C8B5C  @ =0x00000FF2
	add r0, r1, r3
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #19
	bne _080C8B64
	sub r3, r3, #96
	add r0, r1, r3
	add r0, r2, r0
	ldrb r1, [r0]
	lsl r1, r1, #3
	ldr r0, _080C8B60  @ =gUnknown_081725BC
	add r1, r1, r0
	add r0, r2, #0
	mov r2, #1
	bl sub_080C9480
	b _080C8B7A
_080C8B58:
	.4byte gRam
_080C8B5C:
	.4byte 0x00000FF2
_080C8B60:
	.4byte gUnknown_081725BC
_080C8B64:
	ldr r3, _080C8B80  @ =0x00000F92
	add r0, r1, r3
	add r0, r2, r0
	ldrb r1, [r0]
	lsl r1, r1, #3
	ldr r0, _080C8B84  @ =gUnknown_0817258C
	add r1, r1, r0
	add r0, r2, #0
	mov r2, #1
	bl sub_080C9480
_080C8B7A:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C8B80:
	.4byte 0x00000F92
_080C8B84:
	.4byte gUnknown_0817258C
	THUMB_FUNC_END sub_080C8B2C

	THUMB_FUNC_START sub_080C8B88
sub_080C8B88: @ 0x080C8B88
	push {r4-r7,lr}
	sub sp, sp, #4
	add r6, r0, #0
	lsl r6, r6, #24
	lsr r6, r6, #24
	ldr r0, _080C8BE8  @ =gUnknown_03003E74
	ldrh r0, [r0]
	ldr r4, _080C8BEC  @ =gRam
	mov r2, #150
	lsl r2, r2, #4
	add r1, r4, r2
	ldrb r1, [r1]
	add r1, r1, #4
	ldr r3, _080C8BF0  @ =0x00000964
	add r2, r4, r3
	ldrb r2, [r2]
	add r2, r2, #4
	ldr r5, _080C8BF4  @ =gUnknown_08172530
	ldr r7, _080C8BF8  @ =0x00000FC2
	add r3, r4, r7
	add r3, r6, r3
	ldrb r3, [r3]
	lsr r3, r3, #2
	add r3, r3, r5
	ldrb r3, [r3]
	ldr r5, _080C8BFC  @ =0x00000969
	add r4, r4, r5
	ldrb r5, [r4]
	mov r4, #48
	and r4, r4, r5
	mov r5, #4
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	mov r4, #0
	str r4, [sp]
	bl sub_080C6004
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	bl sub_080C6350
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C8BE8:
	.4byte gUnknown_03003E74
_080C8BEC:
	.4byte gRam
_080C8BF0:
	.4byte 0x00000964
_080C8BF4:
	.4byte gUnknown_08172530
_080C8BF8:
	.4byte 0x00000FC2
_080C8BFC:
	.4byte 0x00000969
	THUMB_FUNC_END sub_080C8B88

	THUMB_FUNC_START sub_080C8C00
sub_080C8C00: @ 0x080C8C00
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r2, _080C8C28  @ =gRam
	ldr r1, _080C8C2C  @ =0x00000FC2
	add r0, r2, r1
	add r0, r7, r0
	ldrb r0, [r0]
	mov r9, r0
	cmp r0, #0
	beq _080C8C30
	add r0, r7, #0
	bl sub_080C8CA0
	b _080C8C8A
	.byte 0x00
	.byte 0x00
_080C8C28:
	.4byte gRam
_080C8C2C:
	.4byte 0x00000FC2
_080C8C30:
	ldr r3, _080C8C50  @ =0x00000FF2
	add r0, r2, r3
	add r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #13
	bne _080C8C48
	add r3, r3, #144
	add r0, r2, r3
	add r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C8C54
_080C8C48:
	add r0, r7, #0
	bl sub_080C8D74
	b _080C8C8A
_080C8C50:
	.4byte 0x00000FF2
_080C8C54:
	ldr r0, _080C8C98  @ =0x00000EE2
	add r5, r2, r0
	add r5, r7, r5
	ldrb r3, [r5]
	mov r8, r3
	add r0, r0, #32
	add r4, r2, r0
	add r4, r7, r4
	ldrb r6, [r4]
	ldrb r1, [r1]
	add r0, r7, #0
	str r2, [sp]
	bl sub_080C66A4
	mov r1, r8
	strb r1, [r5]
	strb r6, [r4]
	ldr r2, [sp]
	ldr r3, _080C8C9C  @ =0x00001152
	add r0, r2, r3
	add r0, r7, r0
	mov r1, r9
	strb r1, [r0]
	add r3, r3, #32
	add r0, r2, r3
	add r0, r7, r0
	strb r1, [r0]
_080C8C8A:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080C8C98:
	.4byte 0x00000EE2
_080C8C9C:
	.4byte 0x00001152
	THUMB_FUNC_END sub_080C8C00

	THUMB_FUNC_START sub_080C8CA0
sub_080C8CA0: @ 0x080C8CA0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	ldr r4, _080C8D4C  @ =gRam
	ldr r1, _080C8D50  @ =0x00000FC2
	add r0, r4, r1
	add r0, r0, r8
	ldrb r0, [r0]
	lsr r7, r0, #1
	mov r0, #252
	and r7, r7, r0
	mov r1, sp
	add r1, r1, #5
	add r0, sp, #4
	mov r2, r8
	bl sub_080C5ACC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C8D3C
	mov r6, #3
	mov r9, r4
	ldr r3, _080C8D54  @ =0x000015E9
	add r3, r3, r9
	mov r10, r3
_080C8CDE:
	ldr r2, _080C8D58  @ =0x000015E8
	add r2, r2, r9
	ldr r0, _080C8D5C  @ =gUnknown_08172704
	add r5, r7, r6
	add r0, r5, r0
	mov r1, #0
	ldrsb r1, [r0, r1]
	ldrb r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r0, _080C8D60  @ =gUnknown_08172714
	add r0, r5, r0
	mov r2, #0
	ldrsb r2, [r0, r2]
	mov r0, r10
	ldrb r0, [r0]
	add r2, r2, r0
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r0, _080C8D64  @ =gUnknown_03003E74
	ldrh r0, [r0]
	add r0, r0, r6
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r3, _080C8D68  @ =gUnknown_08172724
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080C8D6C  @ =gUnknown_08172734
	add r4, r5, r4
	ldrb r4, [r4]
	lsl r4, r4, #8
	orr r3, r3, r4
	ldr r4, _080C8D70  @ =gUnknown_08172744
	add r5, r5, r4
	ldrb r4, [r5]
	str r4, [sp]
	bl sub_080C6004
	sub r6, r6, #1
	cmp r6, #0
	bge _080C8CDE
	mov r0, r8
	mov r1, #255
	mov r2, #3
	bl sub_080C5DA0
_080C8D3C:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080C8D4C:
	.4byte gRam
_080C8D50:
	.4byte 0x00000FC2
_080C8D54:
	.4byte 0x000015E9
_080C8D58:
	.4byte 0x000015E8
_080C8D5C:
	.4byte gUnknown_08172704
_080C8D60:
	.4byte gUnknown_08172714
_080C8D64:
	.4byte gUnknown_03003E74
_080C8D68:
	.4byte gUnknown_08172724
_080C8D6C:
	.4byte gUnknown_08172734
_080C8D70:
	.4byte gUnknown_08172744
	THUMB_FUNC_END sub_080C8CA0

	THUMB_FUNC_START sub_080C8D74
sub_080C8D74: @ 0x080C8D74
	push {lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r0, _080C8D90  @ =gRam
	ldr r2, _080C8D94  @ =0x00000E85
	add r0, r0, r2
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C8D98
	add r0, r1, #0
	bl sub_080C6818
	b _080C8DA0
_080C8D90:
	.4byte gRam
_080C8D94:
	.4byte 0x00000E85
_080C8D98:
	add r0, r1, #0
	mov r1, #2
	bl sub_080C6E84
_080C8DA0:
	mov r0, #31
	mov r1, #1
	bl sub_080BEA28
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C8D74

	THUMB_FUNC_START sub_080C8DAC
sub_080C8DAC: @ 0x080C8DAC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	add r5, r1, #0
	mov r4, #0
	ldr r1, _080C8E64  @ =gRam
	ldr r2, _080C8E68  @ =0x0000096C
	add r0, r1, r2
	ldrb r2, [r0]
	mov r8, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080C8E56
	add r7, r1, #0
	ldr r0, _080C8E6C  @ =0x00000964
	add r0, r0, r7
	mov r9, r0
_080C8DD6:
	ldrb r3, [r5, #4]
	ldrb r0, [r5, #5]
	lsl r0, r0, #8
	orr r3, r3, r0
	ldr r1, _080C8E70  @ =0x00000968
	add r0, r7, r1
	ldrh r0, [r0]
	eor r3, r3, r0
	mov r2, #150
	lsl r2, r2, #4
	add r0, r7, r2
	ldrh r0, [r0]
	ldrh r1, [r5]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r6, r0, #0
	add r2, r2, #24
	add r0, r7, r2
	strh r6, [r0]
	mov r1, #237
	lsl r1, r1, #4
	add r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C8E18
	ldr r2, _080C8E74  @ =0x0000F1FF
	add r0, r2, #0
	and r3, r3, r0
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	orr r3, r3, r0
_080C8E18:
	ldr r0, _080C8E78  @ =gUnknown_03003E74
	lsl r4, r4, #24
	asr r4, r4, #24
	ldrh r0, [r0]
	add r0, r0, r4
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r9
	ldrh r2, [r1]
	ldrh r1, [r5, #2]
	add r2, r2, r1
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldrb r1, [r5, #7]
	str r1, [sp]
	add r1, r6, #0
	bl sub_080C6368
	mov r2, r8
	lsl r0, r2, #24
	mov r1, #255
	lsl r1, r1, #24
	add r0, r0, r1
	add r4, r4, #1
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r5, r5, #8
	lsr r2, r0, #24
	mov r8, r2
	cmp r0, #0
	bne _080C8DD6
_080C8E56:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080C8E64:
	.4byte gRam
_080C8E68:
	.4byte 0x0000096C
_080C8E6C:
	.4byte 0x00000964
_080C8E70:
	.4byte 0x00000968
_080C8E74:
	.4byte 0x0000F1FF
_080C8E78:
	.4byte gUnknown_03003E74
	THUMB_FUNC_END sub_080C8DAC

	THUMB_FUNC_START sub_080C8E7C
sub_080C8E7C: @ 0x080C8E7C
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	mov r5, sp
	add r5, r5, #1
	mov r0, sp
	add r1, r5, #0
	add r2, r4, #0
	bl sub_080C5ACC
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _080C8ECE
	ldr r2, _080C8ED8  @ =gRam
	mov r0, #237
	lsl r0, r0, #4
	add r3, r2, r0
	strb r1, [r3]
	ldr r7, _080C8EDC  @ =0x00000ED1
	add r0, r2, r7
	strb r1, [r0]
	ldr r1, _080C8EE0  @ =0x00000FA2
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #10
	bne _080C8EC0
	ldr r7, _080C8EE4  @ =0x0000141C
	add r0, r2, r7
	add r0, r4, r0
	ldrb r0, [r0]
_080C8EC0:
	cmp r0, #11
	bne _080C8ECE
	ldr r1, _080C8EE8  @ =0x0000142C
	add r0, r2, r1
	add r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r3]
_080C8ECE:
	ldrb r0, [r5]
	add sp, sp, #4
	pop {r4-r7}
	pop {r1}
	bx r1
_080C8ED8:
	.4byte gRam
_080C8EDC:
	.4byte 0x00000ED1
_080C8EE0:
	.4byte 0x00000FA2
_080C8EE4:
	.4byte 0x0000141C
_080C8EE8:
	.4byte 0x0000142C
	THUMB_FUNC_END sub_080C8E7C

	THUMB_FUNC_START sub_080C8EEC
sub_080C8EEC: @ 0x080C8EEC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r3, r0, #0
	lsl r3, r3, #16
	lsr r3, r3, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r4, _080C8F5C  @ =gRam
	ldr r2, _080C8F60  @ =0x00000C88
	add r0, r4, r2
	ldrh r0, [r0]
	sub r1, r1, r0
	ldr r7, _080C8F64  @ =0x00000C8A
	add r0, r4, r7
	ldrh r5, [r0]
	and r1, r1, r5
	mov r6, #240
	add r0, r1, #0
	and r0, r0, r6
	lsl r0, r0, #2
	mov r2, #128
	lsl r2, r2, #2
	mov r8, r2
	add r2, r1, #0
	mov r7, r8
	and r2, r2, r7
	lsl r2, r2, #4
	orr r0, r0, r2
	mov r2, #128
	lsl r2, r2, #1
	and r1, r1, r2
	lsl r1, r1, #3
	orr r0, r0, r1
	ldr r1, _080C8F68  @ =0x00000C8C
	add r4, r4, r1
	ldrh r1, [r4]
	sub r3, r3, r1
	and r3, r3, r5
	add r1, r3, #0
	and r1, r1, r6
	lsr r1, r1, #3
	orr r0, r0, r1
	add r1, r3, #0
	and r1, r1, r7
	lsl r1, r1, #3
	orr r0, r0, r1
	and r3, r3, r2
	lsl r3, r3, #2
	orr r0, r0, r3
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C8F5C:
	.4byte gRam
_080C8F60:
	.4byte 0x00000C88
_080C8F64:
	.4byte 0x00000C8A
_080C8F68:
	.4byte 0x00000C8C
	THUMB_FUNC_END sub_080C8EEC

	THUMB_FUNC_START sub_080C8F6C
sub_080C8F6C: @ 0x080C8F6C
	push {r4,lr}
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	bl sub_080C8EEC
	ldr r1, _080C8FB4  @ =gRam
	ldr r2, _080C8FB8  @ =0x0000096C
	add r1, r1, r2
	strh r0, [r1]
	mov r4, #0
	ldrsh r3, [r1, r4]
	lsl r3, r3, #1
	ldr r1, _080C8FBC  @ =gUnknown_02018000
	add r0, r3, r1
	ldr r2, _080C8FC0  @ =gUnknown_02018002
	add r1, r3, r2
	ldr r4, _080C8FC4  @ =gUnknown_02018040
	add r2, r3, r4
	add r4, r4, #2
	add r3, r3, r4
	ldr r4, _080C8FC8  @ =gUnknown_08173088
	ldrh r0, [r0]
	ldrh r1, [r1]
	ldrh r2, [r2]
	ldrh r3, [r3]
	bl sub_080C8FCC
	lsl r0, r0, #16
	lsr r0, r0, #18
	add r0, r0, r4
	ldrb r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
_080C8FB4:
	.4byte gRam
_080C8FB8:
	.4byte 0x0000096C
_080C8FBC:
	.4byte gUnknown_02018000
_080C8FC0:
	.4byte gUnknown_02018002
_080C8FC4:
	.4byte gUnknown_02018040
_080C8FC8:
	.4byte gUnknown_08173088
	THUMB_FUNC_END sub_080C8F6C

	THUMB_FUNC_START sub_080C8FCC
sub_080C8FCC: @ 0x080C8FCC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #16
	lsr r4, r0, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	str r1, [sp]
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r10, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r9, r3
	ldr r0, _080C9020  @ =gUnknown_08155B4C
	mov r3, #0
	ldrh r2, [r0]
	ldr r7, _080C9024  @ =gUnknown_08155B4E
	ldr r0, _080C9028  @ =gUnknown_08153E04
	mov r12, r0
	cmp r3, r2
	bge _080C9032
	add r6, r7, #0
	mov r5, r12
_080C9002:
	add r0, r3, r2
	lsr r1, r0, #31
	add r0, r0, r1
	asr r1, r0, #1
	lsl r0, r1, #1
	add r0, r0, r5
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r6
	ldrh r0, [r0]
	cmp r0, r4
	bcs _080C902C
	add r3, r1, #1
	b _080C902E
	.byte 0x00
	.byte 0x00
_080C9020:
	.4byte gUnknown_08155B4C
_080C9024:
	.4byte gUnknown_08155B4E
_080C9028:
	.4byte gUnknown_08153E04
_080C902C:
	add r2, r1, #0
_080C902E:
	cmp r3, r2
	blt _080C9002
_080C9032:
	lsl r0, r3, #1
	mov r2, r12
	add r1, r0, r2
	ldrh r0, [r1]
	lsl r0, r0, #3
	add r0, r0, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080C905A
	add r2, r7, #0
_080C9046:
	sub r1, r1, #2
	sub r3, r3, #1
	ldrh r0, [r1]
	lsl r0, r0, #3
	add r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r4
	beq _080C9046
	add r0, r3, #1
	b _080C905C
_080C905A:
	ldr r0, _080C90BC  @ =0x0000FFFF
_080C905C:
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r0, _080C90BC  @ =0x0000FFFF
	cmp r1, r0
	beq _080C90E2
	add r2, r1, #0
	add r3, r7, #0
	mov r6, r12
	lsl r1, r2, #1
	add r0, r1, r6
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r4
	bne _080C90E2
	add r5, r3, #0
	ldr r0, _080C90C0  @ =0x0000368F
	mov r8, r0
_080C9082:
	ldr r6, _080C90C4  @ =gUnknown_08153E04
	add r0, r1, r6
	ldrh r0, [r0]
	lsl r0, r0, #18
	lsr r1, r0, #16
	add r0, r1, #1
	lsl r0, r0, #1
	add r0, r0, r5
	ldrh r0, [r0]
	ldr r6, [sp]
	cmp r0, r6
	bne _080C90C8
	add r0, r1, #2
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r10
	bne _080C90C8
	add r0, r1, #3
	lsl r0, r0, #1
	add r0, r0, r5
	ldrh r0, [r0]
	cmp r0, r9
	bne _080C90C8
	cmp r1, r8
	bhi _080C90E2
	add r0, r1, #0
	b _080C90E4
	.byte 0x00
	.byte 0x00
_080C90BC:
	.4byte 0x0000FFFF
_080C90C0:
	.4byte 0x0000368F
_080C90C4:
	.4byte gUnknown_08153E04
_080C90C8:
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	add r3, r7, #0
	lsl r1, r2, #1
	mov r6, r12
	add r0, r1, r6
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r4
	beq _080C9082
_080C90E2:
	mov r0, #0
_080C90E4:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C8FCC

	THUMB_FUNC_START sub_080C90F4
sub_080C90F4: @ 0x080C90F4
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r3, _080C9124  @ =gRam
	ldr r2, _080C9128  @ =0x00000FB2
	add r0, r3, r2
	add r4, r1, r0
	ldr r6, _080C912C  @ =0x00001082
	add r0, r3, r6
	add r0, r1, r0
	ldrb r5, [r4]
	ldrb r2, [r0]
	cmp r5, r2
	beq _080C915A
	ldr r6, _080C9130  @ =0x00000996
	add r0, r3, r6
	ldrb r3, [r0]
	mov r0, #31
	and r0, r0, r3
	cmp r0, #0
	beq _080C9134
	mov r0, #0
	b _080C915C
	.byte 0x00
	.byte 0x00
_080C9124:
	.4byte gRam
_080C9128:
	.4byte 0x00000FB2
_080C912C:
	.4byte 0x00001082
_080C9130:
	.4byte 0x00000996
_080C9134:
	add r0, r5, #0
	eor r0, r0, r2
	mov r5, #2
	and r0, r0, r5
	cmp r0, #0
	bne _080C9158
	add r0, r1, #0
	eor r0, r0, r3
	lsr r0, r0, #5
	orr r0, r0, r5
	mov r1, #3
	and r0, r0, r1
	mov r1, #2
	and r1, r1, r2
	eor r0, r0, r1
	strb r0, [r4]
	mov r0, #0
	b _080C915C
_080C9158:
	strb r2, [r4]
_080C915A:
	mov r0, #1
_080C915C:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C90F4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C9164
sub_080C9164: @ 0x080C9164
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r7, r2, #0
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r9, r1
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080C9240
	bl sub_0809E3CC
	cmp r0, #0
	bne _080C9240
	ldr r5, _080C921C  @ =gRam
	ldr r1, _080C9220  @ =0x00001702
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _080C9240
	add r0, r4, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	ldr r3, _080C9224  @ =0x000016D5
	add r0, r5, r3
	ldrb r1, [r0]
	lsr r1, r1, #1
	ldr r0, _080C9228  @ =gUnknown_08172759
	add r0, r1, r0
	mov r2, #0
	ldrsb r2, [r0, r2]
	ldr r3, _080C922C  @ =0x0000097D
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mul r2, r0, r2
	ldr r0, _080C9230  @ =gUnknown_0817275D
	add r1, r1, r0
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	sub r3, r3, #1
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mul r0, r1, r0
	add r2, r2, r0
	cmp r2, #0
	bge _080C9240
	ldr r1, _080C9234  @ =gUnknown_03003E70
	mov r0, #1
	strb r0, [r1]
	ldr r1, _080C9238  @ =0x000010E2
	add r0, r5, r1
	add r6, r4, r0
	ldrb r0, [r6]
	cmp r0, #0
	bne _080C9240
	ldr r3, _080C923C  @ =0x00000546
	add r0, r5, r3
	ldrh r1, [r0]
	mov r0, #129
	lsl r0, r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _080C9240
	add r0, r4, #0
	mov r1, r9
	mov r2, #0
	bl sub_080C9564
	mov r0, #32
	strb r0, [r6]
	cmp r7, #0
	beq _080C9218
	mov r1, #3
	mov r0, r8
	eor r0, r0, r1
	strb r0, [r7]
_080C9218:
	mov r0, #1
	b _080C9252
_080C921C:
	.4byte gRam
_080C9220:
	.4byte 0x00001702
_080C9224:
	.4byte 0x000016D5
_080C9228:
	.4byte gUnknown_08172759
_080C922C:
	.4byte 0x0000097D
_080C9230:
	.4byte gUnknown_0817275D
_080C9234:
	.4byte gUnknown_03003E70
_080C9238:
	.4byte 0x000010E2
_080C923C:
	.4byte 0x00000546
_080C9240:
	cmp r7, #0
	beq _080C9250
	ldr r0, _080C9260  @ =gRam
	ldr r1, _080C9264  @ =0x00000FB2
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r7]
_080C9250:
	mov r0, #0
_080C9252:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C9260:
	.4byte gRam
_080C9264:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080C9164

	THUMB_FUNC_START sub_080C9268
sub_080C9268: @ 0x080C9268
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r10, r1
	ldr r7, _080C92F4  @ =gRam
	ldr r1, _080C92F8  @ =0x00001012
	add r5, r7, r1
	add r5, r0, r5
	ldrb r2, [r5]
	mov r8, r2
	ldr r3, _080C92FC  @ =0x00001132
	add r4, r7, r3
	add r4, r0, r4
	ldrb r6, [r4]
	mov r1, #0
	mov r9, r1
	mov r1, #128
	strb r1, [r5]
	mov r1, #7
	strb r1, [r4]
	bl sub_080C500C
	lsl r0, r0, #24
	mov r2, r8
	strb r2, [r5]
	strb r6, [r4]
	cmp r0, #0
	beq _080C9320
	bl sub_080AF16C
	ldr r3, _080C9300  @ =0x00001804
	add r0, r7, r3
	mov r1, r9
	strb r1, [r0]
	ldr r2, _080C9304  @ =0x00001719
	add r0, r7, r2
	strb r1, [r0]
	ldr r3, _080C9308  @ =0x00001702
	add r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C9320
	ldr r1, _080C930C  @ =0x00001AE8
	add r0, r7, r1
	mov r1, #0
	mov r2, r10
	strh r2, [r0]
	ldr r3, _080C9310  @ =0x00001AD0
	add r0, r7, r3
	strb r1, [r0]
	ldr r0, _080C9314  @ =0x000009AD
	add r1, r7, r0
	mov r0, #2
	strb r0, [r1]
	ldr r1, _080C9318  @ =0x000009AC
	add r2, r7, r1
	ldrb r1, [r2]
	ldr r3, _080C931C  @ =0x00000A1A
	add r0, r7, r3
	strh r1, [r0]
	mov r0, #14
	strb r0, [r2]
	mov r0, #1
	b _080C9322
_080C92F4:
	.4byte gRam
_080C92F8:
	.4byte 0x00001012
_080C92FC:
	.4byte 0x00001132
_080C9300:
	.4byte 0x00001804
_080C9304:
	.4byte 0x00001719
_080C9308:
	.4byte 0x00001702
_080C930C:
	.4byte 0x00001AE8
_080C9310:
	.4byte 0x00001AD0
_080C9314:
	.4byte 0x000009AD
_080C9318:
	.4byte 0x000009AC
_080C931C:
	.4byte 0x00000A1A
_080C9320:
	mov r0, #0
_080C9322:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C9268

	THUMB_FUNC_START sub_080C9330
sub_080C9330: @ 0x080C9330
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r4, _080C93D4  @ =gRam
	ldr r3, _080C93D8  @ =0x000011D2
	add r2, r4, r3
	add r2, r1, r2
	mov r3, #18
	strb r3, [r2]
	ldr r5, _080C93DC  @ =0x000015F8
	add r2, r4, r5
	strb r3, [r2]
	ldr r3, _080C93E0  @ =0x00000EE2
	add r2, r4, r3
	add r2, r0, r2
	ldrb r3, [r2]
	ldr r5, _080C93E4  @ =0x00000F02
	add r2, r4, r5
	add r2, r0, r2
	ldrb r2, [r2]
	lsl r2, r2, #8
	orr r3, r3, r2
	mov r5, #150
	lsl r5, r5, #4
	add r2, r4, r5
	lsl r3, r3, #16
	asr r3, r3, #16
	ldrh r2, [r2]
	add r3, r3, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r5, _080C93E8  @ =0x0000122C
	add r2, r4, r5
	add r2, r1, r2
	strb r3, [r2]
	add r5, r5, #60
	add r2, r4, r5
	add r2, r1, r2
	lsr r3, r3, #8
	strb r3, [r2]
	ldr r3, _080C93EC  @ =0x00000ED2
	add r2, r4, r3
	add r2, r0, r2
	ldrb r3, [r2]
	ldr r5, _080C93F0  @ =0x00000EF2
	add r2, r4, r5
	add r2, r0, r2
	ldrb r2, [r2]
	lsl r2, r2, #8
	orr r3, r3, r2
	ldr r5, _080C93F4  @ =0x00000964
	add r2, r4, r5
	lsl r3, r3, #16
	asr r3, r3, #16
	ldrh r2, [r2]
	add r3, r3, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r5, _080C93F8  @ =0x0000120E
	add r2, r4, r5
	add r2, r1, r2
	strb r3, [r2]
	add r5, r5, #60
	add r2, r4, r5
	add r2, r1, r2
	lsr r3, r3, #8
	strb r3, [r2]
	ldr r3, _080C93FC  @ =0x0000131C
	add r2, r4, r3
	add r2, r1, r2
	strb r0, [r2]
	add r5, r5, #180
	add r4, r4, r5
	add r1, r1, r4
	mov r0, #15
	strb r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C93D4:
	.4byte gRam
_080C93D8:
	.4byte 0x000011D2
_080C93DC:
	.4byte 0x000015F8
_080C93E0:
	.4byte 0x00000EE2
_080C93E4:
	.4byte 0x00000F02
_080C93E8:
	.4byte 0x0000122C
_080C93EC:
	.4byte 0x00000ED2
_080C93F0:
	.4byte 0x00000EF2
_080C93F4:
	.4byte 0x00000964
_080C93F8:
	.4byte 0x0000120E
_080C93FC:
	.4byte 0x0000131C
	THUMB_FUNC_END sub_080C9330

	THUMB_FUNC_START sub_080C9400
sub_080C9400: @ 0x080C9400
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r6, _080C9460  @ =gRam
	ldr r1, _080C9464  @ =0x00000996
	add r0, r6, r1
	ldrb r1, [r0]
	mov r5, #3
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	bne _080C947A
	bl GetRandomInt
	ldr r4, _080C9468  @ =gUnknown_08172762
	add r1, r5, #0
	and r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r4
	ldrh r1, [r1]
	mov r2, #150
	lsl r2, r2, #4
	add r0, r6, r2
	strh r1, [r0]
	bl GetRandomInt
	add r1, r5, #0
	and r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r4
	ldrh r1, [r1]
	ldr r2, _080C946C  @ =0x00000964
	add r0, r6, r2
	strh r1, [r0]
	mov r1, #29
	ldr r0, _080C9470  @ =0x000011D2
	add r2, r6, r0
_080C944A:
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C9474
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r7, #0
	bl sub_080C9330
	b _080C947A
	.byte 0x00
	.byte 0x00
_080C9460:
	.4byte gRam
_080C9464:
	.4byte 0x00000996
_080C9468:
	.4byte gUnknown_08172762
_080C946C:
	.4byte 0x00000964
_080C9470:
	.4byte 0x000011D2
_080C9474:
	sub r1, r1, #1
	cmp r1, #0
	bge _080C944A
_080C947A:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C9400

	THUMB_FUNC_START sub_080C9480
sub_080C9480: @ 0x080C9480
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080C94A0  @ =gRam
	ldr r5, _080C94A4  @ =0x0000096C
	add r4, r3, r5
	mov r5, #0
	strb r2, [r4]
	ldr r2, _080C94A8  @ =0x0000096D
	add r3, r3, r2
	strb r5, [r3]
	bl sub_080C94AC
	pop {r4,r5}
	pop {r0}
	bx r0
_080C94A0:
	.4byte gRam
_080C94A4:
	.4byte 0x0000096C
_080C94A8:
	.4byte 0x0000096D
	THUMB_FUNC_END sub_080C9480

	THUMB_FUNC_START sub_080C94AC
sub_080C94AC: @ 0x080C94AC
	push {r4,r5,lr}
	add r5, r1, #0
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C8E7C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C94C8
	add r0, r4, #0
	add r1, r5, #0
	bl sub_080C8DAC
_080C94C8:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C94AC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C94D0
sub_080C94D0: @ 0x080C94D0
	push {r4,r5,lr}
	add r5, r1, #0
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C967C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080C94EC
	add r0, r4, #0
	add r1, r5, #0
	bl sub_080C8DAC
_080C94EC:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C94D0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C94F4
sub_080C94F4: @ 0x080C94F4
	push {r4-r6,lr}
	add r5, r2, #0
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsl r1, r1, #16
	lsr r6, r1, #16
	add r0, r4, #0
	bl sub_080C500C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080C9544
	ldr r0, _080C953C  @ =gRam
	ldr r1, _080C9540  @ =0x00001702
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _080C9544
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_080C9564
	add r0, r4, #0
	bl sub_080C2FA8
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r5, #0
	beq _080C9536
	mov r1, #3
	eor r0, r0, r1
	strb r0, [r5]
_080C9536:
	mov r0, #1
	b _080C9556
	.byte 0x00
	.byte 0x00
_080C953C:
	.4byte gRam
_080C9540:
	.4byte 0x00001702
_080C9544:
	cmp r5, #0
	beq _080C9554
	ldr r0, _080C955C  @ =gRam
	ldr r1, _080C9560  @ =0x00000FB2
	add r0, r0, r1
	add r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5]
_080C9554:
	mov r0, #0
_080C9556:
	pop {r4-r6}
	pop {r1}
	bx r1
_080C955C:
	.4byte gRam
_080C9560:
	.4byte 0x00000FB2
	THUMB_FUNC_END sub_080C94F4

	THUMB_FUNC_START sub_080C9564
sub_080C9564: @ 0x080C9564
	push {r4-r6,lr}
	add r0, r1, #0
	add r6, r2, #0
	lsl r0, r0, #16
	lsr r0, r0, #16
	bl sub_080C95C0
	bl sub_080AF16C
	ldr r4, _080C95B4  @ =gRam
	ldr r1, _080C95B8  @ =0x00001719
	add r0, r4, r1
	mov r5, #0
	strb r5, [r0]
	bl sub_08093078
	ldr r1, _080C95BC  @ =0x00001702
	add r0, r4, r1
	strb r5, [r0]
	sub r1, r1, #10
	add r0, r4, r1
	strb r5, [r0]
	mov r2, #0
	add r1, r1, #32
	add r0, r4, r1
	ldrb r1, [r0]
	cmp r1, #1
	bls _080C959E
	mov r2, #1
_080C959E:
	cmp r1, #2
	bne _080C95A4
	strb r5, [r0]
_080C95A4:
	cmp r6, #0
	beq _080C95AC
	ldrb r0, [r0]
	strb r0, [r6]
_080C95AC:
	add r0, r2, #0
	pop {r4-r6}
	pop {r1}
	bx r1
_080C95B4:
	.4byte gRam
_080C95B8:
	.4byte 0x00001719
_080C95BC:
	.4byte 0x00001702
	THUMB_FUNC_END sub_080C9564

	THUMB_FUNC_START sub_080C95C0
sub_080C95C0: @ 0x080C95C0
	ldr r1, _080C95EC  @ =gRam
	ldr r3, _080C95F0  @ =0x00001AE8
	add r2, r1, r3
	mov r3, #0
	strh r0, [r2]
	ldr r2, _080C95F4  @ =0x00001AD0
	add r0, r1, r2
	strb r3, [r0]
	ldr r3, _080C95F8  @ =0x000009AD
	add r2, r1, r3
	mov r0, #2
	strb r0, [r2]
	ldr r0, _080C95FC  @ =0x000009AC
	add r2, r1, r0
	ldrb r0, [r2]
	add r3, r3, #109
	add r1, r1, r3
	strh r0, [r1]
	mov r0, #14
	strb r0, [r2]
	bx lr
	.byte 0x00
	.byte 0x00
_080C95EC:
	.4byte gRam
_080C95F0:
	.4byte 0x00001AE8
_080C95F4:
	.4byte 0x00001AD0
_080C95F8:
	.4byte 0x000009AD
_080C95FC:
	.4byte 0x000009AC
	THUMB_FUNC_END sub_080C95C0

	THUMB_FUNC_START sub_080C9600
sub_080C9600: @ 0x080C9600
	push {lr}
	add r2, r0, #0
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r0, #4
	mov r1, #41
	bl sub_080ADD38
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C9600

	THUMB_FUNC_START sub_080C9614
sub_080C9614: @ 0x080C9614
	push {r4-r7,lr}
	lsl r0, r0, #16
	lsr r6, r0, #16
	lsl r1, r1, #16
	lsr r5, r1, #16
	lsl r2, r2, #16
	lsr r4, r2, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r1, #0
	ldr r2, _080C966C  @ =gUnknown_08155B4E
	mov r12, r2
	ldr r7, _080C9670  @ =0x0000368F
_080C962E:
	lsl r0, r1, #1
	add r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r6
	bne _080C965C
	add r0, r1, #1
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r0, [r0]
	cmp r0, r5
	bne _080C965C
	add r0, r1, #2
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r4
	bne _080C965C
	add r0, r1, #3
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r3
	beq _080C9674
_080C965C:
	add r0, r1, #4
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, r7
	bls _080C962E
	mov r0, #0
	b _080C9676
	.byte 0x00
	.byte 0x00
_080C966C:
	.4byte gUnknown_08155B4E
_080C9670:
	.4byte 0x0000368F
_080C9674:
	add r0, r1, #0
_080C9676:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C9614

	THUMB_FUNC_START sub_080C967C
sub_080C967C: @ 0x080C967C
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080C6340
	add r0, r4, #0
	bl sub_080C8E7C
	lsl r0, r0, #24
	lsr r0, r0, #24
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C967C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C969C
sub_080C969C: @ 0x080C969C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, #236
	add r1, r4, #0
	mov r2, #14
	bl sub_080C9AAC
	add r5, r0, #0
	cmp r5, #0
	blt _080C96EA
	lsl r0, r5, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	add r0, r4, #0
	mov r1, #110
	bl sub_080CF0AC
	ldr r2, _080C96F4  @ =gRam
	ldr r1, _080C96F8  @ =0x00000FA2
	add r0, r2, r1
	add r0, r5, r0
	mov r4, #0
	mov r3, #3
	strb r3, [r0]
	add r1, r1, #32
	add r0, r2, r1
	add r0, r5, r0
	mov r1, #15
	strb r1, [r0]
	ldr r1, _080C96FC  @ =0x00000F52
	add r0, r2, r1
	add r0, r5, r0
	strb r4, [r0]
	ldr r0, _080C9700  @ =0x00001012
	add r2, r2, r0
	add r2, r5, r2
	strb r3, [r2]
_080C96EA:
	add r0, r5, #0
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C96F4:
	.4byte gRam
_080C96F8:
	.4byte 0x00000FA2
_080C96FC:
	.4byte 0x00000F52
_080C9700:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080C969C

	THUMB_FUNC_START sub_080C9704
sub_080C9704: @ 0x080C9704
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080C978C  @ =gRam
	ldr r1, _080C9790  @ =0x000013B2
	add r0, r4, r1
	add r0, r5, r0
	ldrb r0, [r0]
	sub r0, r0, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _080C9786
	ldr r1, _080C9794  @ =0x00001032
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _080C976A
	ldr r0, _080C9798  @ =0x00001622
	add r2, r4, r0
	ldrb r1, [r2]
	add r0, r0, #1
	add r3, r4, r0
	ldrb r0, [r3]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r1, r1, #4
	strb r1, [r2]
	lsr r1, r1, #8
	strb r1, [r3]
	ldr r1, _080C979C  @ =0x00000FF2
	add r0, r4, r1
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #223
	bne _080C976A
	ldr r0, _080C97A0  @ =0x00001624
	add r2, r4, r0
	ldrb r1, [r2]
	add r0, r0, #1
	add r3, r4, r0
	ldrb r0, [r3]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r1, r1, #7
	strb r1, [r2]
	lsr r1, r1, #8
	strb r1, [r3]
_080C976A:
	add r0, r5, #0
	bl sub_080C1F70
	ldr r0, _080C978C  @ =gRam
	ldr r1, _080C97A4  @ =0x00001012
	add r0, r0, r1
	add r0, r5, r0
	ldrb r1, [r0]
	mov r0, #31
	and r0, r0, r1
	add r0, r0, #1
	lsl r0, r0, #2
	bl sub_080CF370
_080C9786:
	pop {r4,r5}
	pop {r0}
	bx r0
_080C978C:
	.4byte gRam
_080C9790:
	.4byte 0x000013B2
_080C9794:
	.4byte 0x00001032
_080C9798:
	.4byte 0x00001622
_080C979C:
	.4byte 0x00000FF2
_080C97A0:
	.4byte 0x00001624
_080C97A4:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080C9704

	THUMB_FUNC_START sub_080C97A8
sub_080C97A8: @ 0x080C97A8
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _080C985C  @ =gRam
	ldr r3, _080C9860  @ =0x000011D2
	add r2, r4, r3
	add r2, r1, r2
	mov r3, #5
	strb r3, [r2]
	ldr r5, _080C9864  @ =0x000015F8
	add r2, r4, r5
	strb r3, [r2]
	ldr r6, _080C9868  @ =0x00000EE2
	add r2, r4, r6
	add r2, r0, r2
	ldrb r5, [r2]
	ldr r3, _080C986C  @ =0x00000F02
	add r2, r4, r3
	add r2, r0, r2
	ldrb r2, [r2]
	lsl r2, r2, #8
	mov r6, #150
	lsl r6, r6, #4
	add r3, r4, r6
	orr r5, r5, r2
	ldrh r3, [r3]
	add r5, r5, r3
	ldr r3, _080C9870  @ =0x00000ED2
	add r2, r4, r3
	add r2, r0, r2
	ldrb r3, [r2]
	ldr r6, _080C9874  @ =0x00000EF2
	add r2, r4, r6
	add r2, r0, r2
	ldrb r2, [r2]
	lsl r2, r2, #8
	orr r3, r3, r2
	ldr r6, _080C9878  @ =0x00001142
	add r2, r4, r6
	add r2, r0, r2
	ldrb r2, [r2]
	sub r3, r3, r2
	lsl r3, r3, #16
	mov r2, #128
	lsl r2, r2, #13
	add r3, r3, r2
	ldr r6, _080C987C  @ =0x00000964
	add r2, r4, r6
	lsr r3, r3, #16
	ldrh r2, [r2]
	add r3, r3, r2
	ldr r6, _080C9880  @ =0x0000122C
	add r2, r4, r6
	add r2, r1, r2
	strb r5, [r2]
	add r6, r6, #60
	add r2, r4, r6
	add r2, r1, r2
	lsr r5, r5, #8
	strb r5, [r2]
	ldr r5, _080C9884  @ =0x0000120E
	add r2, r4, r5
	add r2, r1, r2
	strb r3, [r2]
	sub r6, r6, #30
	add r2, r4, r6
	add r2, r1, r2
	lsr r3, r3, #8
	strb r3, [r2]
	ldr r3, _080C9888  @ =0x000012FE
	add r2, r4, r3
	add r2, r1, r2
	mov r3, #31
	strb r3, [r2]
	ldr r5, _080C988C  @ =0x0000131C
	add r2, r4, r5
	add r2, r1, r2
	strb r0, [r2]
	ldr r6, _080C9890  @ =0x00001358
	add r2, r4, r6
	add r1, r1, r2
	ldr r2, _080C9894  @ =0x000010F2
	add r4, r4, r2
	add r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080C985C:
	.4byte gRam
_080C9860:
	.4byte 0x000011D2
_080C9864:
	.4byte 0x000015F8
_080C9868:
	.4byte 0x00000EE2
_080C986C:
	.4byte 0x00000F02
_080C9870:
	.4byte 0x00000ED2
_080C9874:
	.4byte 0x00000EF2
_080C9878:
	.4byte 0x00001142
_080C987C:
	.4byte 0x00000964
_080C9880:
	.4byte 0x0000122C
_080C9884:
	.4byte 0x0000120E
_080C9888:
	.4byte 0x000012FE
_080C988C:
	.4byte 0x0000131C
_080C9890:
	.4byte 0x00001358
_080C9894:
	.4byte 0x000010F2
	THUMB_FUNC_END sub_080C97A8

	THUMB_FUNC_START sub_080C9898
sub_080C9898: @ 0x080C9898
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r0, #1
	str r0, [sp]
	mov r2, #15
	ldr r4, _080C9984  @ =gRam
	ldr r1, _080C9988  @ =0x00000F02
	add r1, r1, r4
	mov r10, r1
	ldr r3, _080C998C  @ =0x00000ED2
	add r3, r3, r4
	mov r9, r3
	ldr r1, _080C9990  @ =0x00000996
	add r0, r4, r1
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r3, _080C9994  @ =0x00000EF2
	add r3, r3, r4
	mov r8, r3
	ldr r0, _080C9998  @ =0x00000968
	add r0, r0, r4
	mov r12, r0
_080C98D0:
	lsl r2, r2, #24
	asr r3, r2, #24
	add r1, r3, #0
	ldr r0, [sp, #4]
	eor r1, r1, r0
	mov r0, #1
	and r1, r1, r0
	add r7, r2, #0
	cmp r1, #0
	bne _080C99BC
	ldr r1, _080C9984  @ =gRam
	ldr r2, _080C999C  @ =0x00000FA2
	add r0, r1, r2
	add r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C99BC
	ldr r1, _080C99A0  @ =0x00000FF2
	add r0, r4, r1
	add r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #28
	bne _080C99BC
	ldr r2, _080C99A4  @ =gUnknown_03003112
	add r0, r5, r2
	ldrb r0, [r0]
	ldr r1, _080C99A8  @ =gUnknown_03002B90
	strb r0, [r1]
	mov r2, r10
	add r0, r5, r2
	ldrb r1, [r0]
	ldr r2, _080C99AC  @ =0x00000961
	add r0, r4, r2
	strb r1, [r0]
	mov r1, r9
	add r0, r5, r1
	ldrb r0, [r0]
	add r2, r2, #3
	add r6, r4, r2
	strb r0, [r6]
	mov r1, r8
	add r0, r5, r1
	ldrb r1, [r0]
	add r2, r2, #1
	add r0, r4, r2
	strb r1, [r0]
	ldr r1, _080C99A4  @ =gUnknown_03003112
	add r0, r3, r1
	ldrb r0, [r0]
	mov r2, r12
	strb r0, [r2]
	mov r1, r10
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080C99B0  @ =0x00000969
	add r0, r4, r2
	strb r1, [r0]
	mov r1, r9
	add r0, r3, r1
	ldrb r0, [r0]
	ldr r1, _080C99B4  @ =0x0000096C
	add r2, r4, r1
	strb r0, [r2]
	mov r1, r8
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r3, _080C99B8  @ =0x0000096D
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080C99A8  @ =gUnknown_03002B90
	ldrh r0, [r1]
	mov r3, r12
	ldrh r1, [r3]
	sub r0, r0, r1
	add r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #31
	bhi _080C99BC
	ldrh r0, [r6]
	ldrh r1, [r2]
	sub r0, r0, r1
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #15
	bhi _080C99BC
	mov r0, #0
	str r0, [sp]
	b _080C99C8
_080C9984:
	.4byte gRam
_080C9988:
	.4byte 0x00000F02
_080C998C:
	.4byte 0x00000ED2
_080C9990:
	.4byte 0x00000996
_080C9994:
	.4byte 0x00000EF2
_080C9998:
	.4byte 0x00000968
_080C999C:
	.4byte 0x00000FA2
_080C99A0:
	.4byte 0x00000FF2
_080C99A4:
	.4byte gUnknown_03003112
_080C99A8:
	.4byte gUnknown_03002B90
_080C99AC:
	.4byte 0x00000961
_080C99B0:
	.4byte 0x00000969
_080C99B4:
	.4byte 0x0000096C
_080C99B8:
	.4byte 0x0000096D
_080C99BC:
	mov r1, #255
	lsl r1, r1, #24
	add r0, r7, r1
	lsr r2, r0, #24
	cmp r0, #0
	bge _080C98D0
_080C99C8:
	ldr r0, [sp]
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C9898

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C99DC
sub_080C99DC: @ 0x080C99DC
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080C2C4C
	add r0, r4, #0
	bl Sprite3_Move
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C99DC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C99F8
sub_080C99F8: @ 0x080C99F8
	push {lr}
	ldr r0, _080C9A08  @ =gBottle1
	ldrb r0, [r0]
	cmp r0, #2
	bne _080C9A0C
	mov r0, #0
	b _080C9A42
	.byte 0x00
	.byte 0x00
_080C9A08:
	.4byte gBottle1
_080C9A0C:
	ldr r0, _080C9A18  @ =gBottle2
	ldrb r0, [r0]
	cmp r0, #2
	bne _080C9A1C
	mov r0, #1
	b _080C9A42
_080C9A18:
	.4byte gBottle2
_080C9A1C:
	ldr r0, _080C9A28  @ =gBottle3
	ldrb r0, [r0]
	cmp r0, #2
	bne _080C9A2C
	mov r0, #2
	b _080C9A42
_080C9A28:
	.4byte gBottle3
_080C9A2C:
	ldr r0, _080C9A3C  @ =gBottle4
	ldrb r0, [r0]
	cmp r0, #2
	beq _080C9A40
	mov r0, #1
	neg r0, r0
	b _080C9A42
	.byte 0x00
	.byte 0x00
_080C9A3C:
	.4byte gBottle4
_080C9A40:
	mov r0, #3
_080C9A42:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080C99F8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080C9A48
sub_080C9A48: @ 0x080C9A48
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #14
	bl sub_080C9A68
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C9A48

	THUMB_FUNC_START sub_080C9A58
sub_080C9A58: @ 0x080C9A58
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #29
	bl sub_080C9A68
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080C9A58

	THUMB_FUNC_START sub_080C9A68
sub_080C9A68: @ 0x080C9A68
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r4, r1, #0
	ldr r1, _080C9A74  @ =gRam
	b _080C9A7A
_080C9A74:
	.4byte gRam
_080C9A78:
	sub r4, r4, #1
_080C9A7A:
	cmp r4, #0
	blt _080C9A92
	ldr r3, _080C9AA0  @ =0x000011D2
	add r0, r1, r3
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C9A78
	add r0, r2, #0
	add r1, r4, #0
	bl sub_080C97A8
_080C9A92:
	ldr r0, _080C9AA4  @ =gRam
	ldr r1, _080C9AA8  @ =0x0000097D
	add r0, r0, r1
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
_080C9AA0:
	.4byte 0x000011D2
_080C9AA4:
	.4byte gRam
_080C9AA8:
	.4byte 0x0000097D
	THUMB_FUNC_END sub_080C9A68

	THUMB_FUNC_START sub_080C9AAC
sub_080C9AAC: @ 0x080C9AAC
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r0
	lsl r1, r1, #24
	lsr r6, r1, #24
	lsl r2, r2, #24
	lsr r7, r2, #24
	lsl r2, r7, #24
	cmp r2, #0
	blt _080C9ADE
	ldr r4, _080C9AE4  @ =gRam
	ldr r0, _080C9AE8  @ =0x00000FA2
	add r3, r4, r0
_080C9AC8:
	asr r5, r2, #24
	add r1, r5, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _080C9AEC
	sub r0, r5, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsl r2, r7, #24
	cmp r2, #0
	bge _080C9AC8
_080C9ADE:
	mov r0, #1
	neg r0, r0
	b _080C9C0C
_080C9AE4:
	.4byte gRam
_080C9AE8:
	.4byte 0x00000FA2
_080C9AEC:
	ldr r3, _080C9B9C  @ =0x00000FF2
	add r0, r4, r3
	add r0, r5, r0
	mov r3, r12
	strb r3, [r0]
	mov r0, #9
	strb r0, [r1]
	ldr r1, _080C9BA0  @ =0x00000EE2
	add r0, r4, r1
	add r0, r6, r0
	ldrb r1, [r0]
	mov r3, #150
	lsl r3, r3, #4
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080C9BA4  @ =0x00000F02
	add r0, r4, r1
	add r0, r6, r0
	ldrb r1, [r0]
	add r3, r3, #1
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080C9BA8  @ =0x00000ED2
	add r0, r4, r1
	add r0, r6, r0
	ldrb r1, [r0]
	add r3, r3, #3
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080C9BAC  @ =0x00000EF2
	add r0, r4, r1
	add r0, r6, r0
	ldrb r1, [r0]
	add r3, r3, #1
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080C9BB0  @ =0x00001142
	add r0, r4, r1
	add r0, r6, r0
	ldrb r1, [r0]
	add r3, r3, #3
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080C9BB4  @ =0x00000D23
	add r0, r4, r1
	add r0, r6, r0
	ldrb r1, [r0]
	add r3, r3, #1
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080C9BB8  @ =0x00000D2B
	add r0, r4, r1
	add r0, r6, r0
	ldrb r1, [r0]
	add r3, r3, #3
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080C9BBC  @ =0x00000D33
	add r0, r4, r1
	add r0, r6, r0
	ldrb r1, [r0]
	add r3, r3, #1
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080C9BC0  @ =0x00000D3B
	add r0, r4, r1
	add r0, r6, r0
	ldrb r1, [r0]
	add r3, r3, #3
	add r0, r4, r3
	strb r1, [r0]
	lsr r0, r2, #24
	bl sub_080CEB84
	ldr r1, _080C9BC4  @ =0x000009B2
	add r0, r4, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080C9BD0
	lsl r0, r5, #1
	ldr r2, _080C9BC8  @ =0x00001192
	add r1, r4, r2
	add r0, r0, r1
	ldr r1, _080C9BCC  @ =0x0000FFFF
	b _080C9BDA
	.byte 0x00
	.byte 0x00
_080C9B9C:
	.4byte 0x00000FF2
_080C9BA0:
	.4byte 0x00000EE2
_080C9BA4:
	.4byte 0x00000F02
_080C9BA8:
	.4byte 0x00000ED2
_080C9BAC:
	.4byte 0x00000EF2
_080C9BB0:
	.4byte 0x00001142
_080C9BB4:
	.4byte 0x00000D23
_080C9BB8:
	.4byte 0x00000D2B
_080C9BBC:
	.4byte 0x00000D33
_080C9BC0:
	.4byte 0x00000D3B
_080C9BC4:
	.4byte 0x000009B2
_080C9BC8:
	.4byte 0x00001192
_080C9BCC:
	.4byte 0x0000FFFF
_080C9BD0:
	lsl r0, r5, #1
	ldr r3, _080C9C14  @ =0x00001192
	add r1, r4, r3
	add r0, r0, r1
	mov r1, #255
_080C9BDA:
	strh r1, [r0]
	ldr r2, _080C9C18  @ =gRam
	lsl r0, r7, #24
	asr r0, r0, #24
	ldr r3, _080C9C1C  @ =0x000010F2
	add r1, r2, r3
	add r3, r0, r1
	add r1, r6, r1
	ldrb r1, [r1]
	mov r4, #0
	strb r1, [r3]
	ldr r3, _080C9C20  @ =0x00000FB2
	add r1, r2, r3
	add r3, r0, r1
	add r1, r6, r1
	ldrb r1, [r1]
	strb r1, [r3]
	ldr r3, _080C9C24  @ =0x00000E85
	add r1, r2, r3
	add r1, r0, r1
	strb r4, [r1]
	ldr r1, _080C9C28  @ =0x00001002
	add r2, r2, r1
	add r2, r0, r2
	strb r4, [r2]
_080C9C0C:
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080C9C14:
	.4byte 0x00001192
_080C9C18:
	.4byte gRam
_080C9C1C:
	.4byte 0x000010F2
_080C9C20:
	.4byte 0x00000FB2
_080C9C24:
	.4byte 0x00000E85
_080C9C28:
	.4byte 0x00001002
	THUMB_FUNC_END sub_080C9AAC

	THUMB_FUNC_START sub_080C9C2C
sub_080C9C2C: @ 0x080C9C2C
	push {r4-r6,lr}
	ldr r2, _080C9C64  @ =gRam
	ldr r1, _080C9C68  @ =0x000009B2
	add r0, r2, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r2, #0
	cmp r0, #0
	beq _080C9C58
	ldr r3, _080C9C6C  @ =0x000009AD
	add r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C9C58
	cmp r0, #14
	beq _080C9C58
	ldr r3, _080C9C70  @ =0x00001647
	add r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C9C74
_080C9C58:
	ldr r0, _080C9C70  @ =0x00001647
	add r1, r1, r0
	mov r0, #0
	strb r0, [r1]
	b _080C9C9E
	.byte 0x00
	.byte 0x00
_080C9C64:
	.4byte gRam
_080C9C68:
	.4byte 0x000009B2
_080C9C6C:
	.4byte 0x000009AD
_080C9C70:
	.4byte 0x00001647
_080C9C74:
	mov r4, #15
	add r5, r2, #0
	ldr r1, _080C9CA4  @ =0x0000144C
	add r6, r5, r1
_080C9C7C:
	ldr r3, _080C9CA8  @ =0x000015DC
	add r0, r5, r3
	strb r4, [r0]
	add r0, r4, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C9C90
	add r0, r4, #0
	bl sub_080C9CAC
_080C9C90:
	sub r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, #128
	and r0, r0, r4
	cmp r0, #0
	beq _080C9C7C
_080C9C9E:
	pop {r4-r6}
	pop {r0}
	bx r0
_080C9CA4:
	.4byte 0x0000144C
_080C9CA8:
	.4byte 0x000015DC
	THUMB_FUNC_END sub_080C9C2C

	THUMB_FUNC_START sub_080C9CAC
sub_080C9CAC: @ 0x080C9CAC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #108
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r5, _080CA078  @ =gRam
	ldr r1, _080CA07C  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	str r0, [sp]
	ldrb r0, [r0]
	lsl r0, r0, #24
	mov r8, r0
	ldr r2, _080CA080  @ =0x00000FF2
	add r0, r5, r2
	add r0, r4, r0
	str r0, [sp, #4]
	ldrb r0, [r0]
	lsl r0, r0, #16
	mov r3, r8
	orr r3, r3, r0
	ldr r6, _080CA084  @ =0x00000EE2
	add r0, r5, r6
	add r0, r4, r0
	str r0, [sp, #8]
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r3, r3, r0
	ldr r7, _080CA088  @ =0x00000F02
	add r0, r5, r7
	add r0, r4, r0
	str r0, [sp, #12]
	ldrb r0, [r0]
	orr r3, r3, r0
	mov r8, r3
	sub r1, r1, #208
	add r0, r5, r1
	add r0, r4, r0
	str r0, [sp, #16]
	ldrb r0, [r0]
	lsl r3, r0, #24
	ldr r2, _080CA08C  @ =0x00000EF2
	add r0, r5, r2
	add r0, r4, r0
	str r0, [sp, #20]
	ldrb r0, [r0]
	lsl r0, r0, #16
	orr r3, r3, r0
	add r6, r6, #176
	add r0, r5, r6
	add r0, r4, r0
	str r0, [sp, #24]
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r3, r3, r0
	add r7, r7, #96
	add r0, r5, r7
	add r0, r4, r0
	str r0, [sp, #28]
	ldrb r0, [r0]
	orr r3, r3, r0
	ldr r1, _080CA090  @ =0x00001082
	add r0, r5, r1
	add r0, r4, r0
	str r0, [sp, #32]
	ldrb r0, [r0]
	lsl r2, r0, #24
	ldr r6, _080CA094  @ =0x00001122
	add r0, r5, r6
	add r0, r4, r0
	str r0, [sp, #36]
	ldrb r0, [r0]
	lsl r0, r0, #16
	orr r2, r2, r0
	ldr r7, _080CA098  @ =0x00000D94
	add r0, r5, r7
	add r0, r4, r0
	str r0, [sp, #40]
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r2, r2, r0
	sub r1, r1, #208
	add r0, r5, r1
	add r0, r4, r0
	str r0, [sp, #44]
	ldrb r0, [r0]
	orr r2, r2, r0
	ldr r6, _080CA09C  @ =0x00001012
	add r0, r5, r6
	add r0, r4, r0
	str r0, [sp, #48]
	ldrb r0, [r0]
	lsl r1, r0, #24
	ldr r7, _080CA0A0  @ =0x000010F2
	add r0, r5, r7
	add r0, r4, r0
	str r0, [sp, #52]
	ldrb r0, [r0]
	lsl r0, r0, #16
	orr r1, r1, r0
	sub r6, r6, #192
	add r0, r5, r6
	add r0, r4, r0
	str r0, [sp, #56]
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	sub r7, r7, #192
	add r0, r5, r7
	add r0, r4, r0
	str r0, [sp, #60]
	ldrb r0, [r0]
	orr r1, r1, r0
	add r6, r6, #32
	add r0, r5, r6
	add r0, r4, r0
	str r0, [sp, #64]
	ldrb r0, [r0]
	lsl r0, r0, #24
	str r0, [sp, #104]
	sub r7, r7, #176
	add r0, r5, r7
	add r0, r4, r0
	str r0, [sp, #68]
	ldrb r0, [r0]
	lsl r0, r0, #16
	ldr r6, [sp, #104]
	orr r6, r6, r0
	add r7, r7, #224
	add r0, r5, r7
	add r0, r4, r0
	str r0, [sp, #72]
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r6, r6, r0
	str r6, [sp, #104]
	ldr r6, _080CA0A4  @ =0x00001052
	add r0, r5, r6
	add r0, r4, r0
	str r0, [sp, #76]
	ldrb r0, [r0]
	ldr r7, [sp, #104]
	orr r7, r7, r0
	str r7, [sp, #104]
	add r6, r6, #240
	add r0, r5, r6
	add r0, r4, r0
	str r0, [sp, #80]
	ldrb r0, [r0]
	lsl r6, r0, #24
	ldr r7, _080CA0A8  @ =0x00000FC2
	add r0, r7, r5
	add r0, r4, r0
	str r0, [sp, #84]
	ldrb r7, [r0]
	add r0, r7, #0
	lsl r0, r0, #16
	orr r6, r6, r0
	ldr r7, _080CA0AC  @ =0x000013B2
	add r0, r7, r5
	add r0, r0, r4
	mov r10, r0
	ldrb r7, [r0]
	add r0, r7, #0
	lsl r0, r0, #8
	orr r6, r6, r0
	ldr r7, _080CA0B0  @ =0x00001172
	add r7, r7, r5
	mov r9, r7
	add r9, r9, r4
	mov r0, r9
	ldrb r0, [r0]
	orr r6, r6, r0
	ldr r7, _080CA0B4  @ =0x0000144C
	add r0, r7, r5
	add r0, r4, r0
	str r0, [sp, #88]
	ldrb r7, [r0]
	ldr r0, [sp]
	strb r7, [r0]
	ldr r0, _080CA0B8  @ =0x0000145C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #4]
	strb r7, [r0]
	ldr r0, _080CA0BC  @ =0x0000146C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #8]
	strb r7, [r0]
	ldr r0, _080CA0C0  @ =0x0000147C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #12]
	strb r7, [r0]
	ldr r0, _080CA0C4  @ =0x0000148C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #16]
	strb r7, [r0]
	ldr r0, _080CA0C8  @ =0x0000149C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #20]
	strb r7, [r0]
	ldr r0, _080CA0CC  @ =0x000014AC
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #24]
	strb r7, [r0]
	ldr r0, _080CA0D0  @ =0x000014BC
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #28]
	strb r7, [r0]
	ldr r0, _080CA0D4  @ =0x000014CC
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #32]
	strb r7, [r0]
	ldr r0, _080CA0D8  @ =0x000014DC
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #36]
	strb r7, [r0]
	ldr r0, _080CA0DC  @ =0x000014EC
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #40]
	strb r7, [r0]
	ldr r0, _080CA0E0  @ =0x000014FC
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #44]
	strb r7, [r0]
	ldr r0, _080CA0E4  @ =0x0000150C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #48]
	strb r7, [r0]
	ldr r0, _080CA0E8  @ =0x0000151C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #52]
	strb r7, [r0]
	ldr r0, _080CA0EC  @ =0x0000152C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #56]
	strb r7, [r0]
	ldr r0, _080CA0F0  @ =0x0000153C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #60]
	strb r7, [r0]
	ldr r0, _080CA0F4  @ =0x0000154C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #64]
	strb r7, [r0]
	ldr r0, _080CA0F8  @ =0x0000155C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #68]
	strb r7, [r0]
	ldr r0, _080CA0FC  @ =0x0000156C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #72]
	strb r7, [r0]
	ldr r0, _080CA100  @ =0x0000157C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #76]
	strb r7, [r0]
	ldr r0, _080CA104  @ =0x0000158C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #80]
	strb r7, [r0]
	ldr r0, _080CA108  @ =0x0000159C
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	ldr r0, [sp, #84]
	strb r7, [r0]
	ldr r0, _080CA10C  @ =0x000015BC
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	mov r0, r10
	strb r7, [r0]
	ldr r0, _080CA110  @ =0x000015CC
	add r0, r0, r5
	mov r12, r0
	add r12, r12, r4
	mov r7, r12
	ldrb r7, [r7]
	mov r12, r7
	mov r0, r9
	strb r7, [r0]
	add r0, r4, #0
	str r1, [sp, #92]
	str r2, [sp, #96]
	str r3, [sp, #100]
	bl Sprite_ExecuteSingleLong
	ldr r0, _080CA114  @ =0x000010D2
	add r5, r5, r0
	add r4, r4, r5
	ldrb r0, [r4]
	ldr r1, [sp, #92]
	ldr r2, [sp, #96]
	ldr r3, [sp, #100]
	cmp r0, #0
	beq _080C9FDE
	mov r0, #0
	ldr r4, [sp, #88]
	strb r0, [r4]
_080C9FDE:
	mov r7, r8
	lsr r0, r7, #24
	ldr r4, [sp]
	strb r0, [r4]
	lsr r0, r7, #16
	ldr r7, [sp, #4]
	strb r0, [r7]
	mov r4, r8
	lsr r0, r4, #8
	ldr r7, [sp, #8]
	strb r0, [r7]
	ldr r0, [sp, #12]
	strb r4, [r0]
	lsr r0, r3, #24
	ldr r4, [sp, #16]
	strb r0, [r4]
	lsr r0, r3, #16
	ldr r7, [sp, #20]
	strb r0, [r7]
	lsr r0, r3, #8
	ldr r4, [sp, #24]
	strb r0, [r4]
	ldr r7, [sp, #28]
	strb r3, [r7]
	lsr r0, r2, #24
	ldr r3, [sp, #32]
	strb r0, [r3]
	lsr r0, r2, #16
	ldr r4, [sp, #36]
	strb r0, [r4]
	lsr r0, r2, #8
	ldr r7, [sp, #40]
	strb r0, [r7]
	ldr r0, [sp, #44]
	strb r2, [r0]
	lsr r0, r1, #24
	ldr r2, [sp, #48]
	strb r0, [r2]
	lsr r0, r1, #16
	ldr r3, [sp, #52]
	strb r0, [r3]
	lsr r0, r1, #8
	ldr r4, [sp, #56]
	strb r0, [r4]
	ldr r7, [sp, #60]
	strb r1, [r7]
	ldr r1, [sp, #104]
	lsr r0, r1, #24
	ldr r2, [sp, #64]
	strb r0, [r2]
	lsr r0, r1, #16
	ldr r3, [sp, #68]
	strb r0, [r3]
	lsr r0, r1, #8
	ldr r4, [sp, #72]
	strb r0, [r4]
	ldr r7, [sp, #76]
	strb r1, [r7]
	lsr r0, r6, #24
	ldr r1, [sp, #80]
	strb r0, [r1]
	lsr r0, r6, #16
	ldr r2, [sp, #84]
	strb r0, [r2]
	lsr r0, r6, #8
	mov r3, r10
	strb r0, [r3]
	mov r4, r9
	strb r6, [r4]
	add sp, sp, #108
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080CA078:
	.4byte gRam
_080CA07C:
	.4byte 0x00000FA2
_080CA080:
	.4byte 0x00000FF2
_080CA084:
	.4byte 0x00000EE2
_080CA088:
	.4byte 0x00000F02
_080CA08C:
	.4byte 0x00000EF2
_080CA090:
	.4byte 0x00001082
_080CA094:
	.4byte 0x00001122
_080CA098:
	.4byte 0x00000D94
_080CA09C:
	.4byte 0x00001012
_080CA0A0:
	.4byte 0x000010F2
_080CA0A4:
	.4byte 0x00001052
_080CA0A8:
	.4byte 0x00000FC2
_080CA0AC:
	.4byte 0x000013B2
_080CA0B0:
	.4byte 0x00001172
_080CA0B4:
	.4byte 0x0000144C
_080CA0B8:
	.4byte 0x0000145C
_080CA0BC:
	.4byte 0x0000146C
_080CA0C0:
	.4byte 0x0000147C
_080CA0C4:
	.4byte 0x0000148C
_080CA0C8:
	.4byte 0x0000149C
_080CA0CC:
	.4byte 0x000014AC
_080CA0D0:
	.4byte 0x000014BC
_080CA0D4:
	.4byte 0x000014CC
_080CA0D8:
	.4byte 0x000014DC
_080CA0DC:
	.4byte 0x000014EC
_080CA0E0:
	.4byte 0x000014FC
_080CA0E4:
	.4byte 0x0000150C
_080CA0E8:
	.4byte 0x0000151C
_080CA0EC:
	.4byte 0x0000152C
_080CA0F0:
	.4byte 0x0000153C
_080CA0F4:
	.4byte 0x0000154C
_080CA0F8:
	.4byte 0x0000155C
_080CA0FC:
	.4byte 0x0000156C
_080CA100:
	.4byte 0x0000157C
_080CA104:
	.4byte 0x0000158C
_080CA108:
	.4byte 0x0000159C
_080CA10C:
	.4byte 0x000015BC
_080CA110:
	.4byte 0x000015CC
_080CA114:
	.4byte 0x000010D2
	THUMB_FUNC_END sub_080C9CAC

	THUMB_FUNC_START sub_080CA118
sub_080CA118: @ 0x080CA118
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	lsl r1, r1, #24
	mov r0, #152
	lsl r0, r0, #24
	add r1, r1, r0
	lsr r6, r1, #24
	ldr r7, _080CA198  @ =gRam
	ldr r1, _080CA19C  @ =0x00000996
	add r0, r7, r1
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080CA190
	ldr r0, _080CA1A0  @ =0x00000EE2
	add r4, r7, r0
	add r4, r5, r4
	ldrb r1, [r4]
	add r0, r0, #32
	add r3, r7, r0
	add r3, r5, r3
	ldrb r0, [r3]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldr r0, _080CA1A4  @ =gUnknown_0817277E
	add r0, r6, r0
	ldrb r2, [r0]
	ldr r0, _080CA1A8  @ =gUnknown_08172784
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	add r1, r1, r2
	strb r1, [r4]
	lsr r1, r1, #8
	strb r1, [r3]
	ldr r1, _080CA1AC  @ =0x00000ED2
	add r4, r7, r1
	add r4, r5, r4
	ldrb r1, [r4]
	ldr r0, _080CA1B0  @ =0x00000EF2
	add r3, r7, r0
	add r3, r5, r3
	ldrb r0, [r3]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldr r0, _080CA1B4  @ =gUnknown_08172780
	add r0, r6, r0
	ldrb r2, [r0]
	ldr r0, _080CA1B8  @ =gUnknown_0817277C
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	add r1, r1, r2
	strb r1, [r4]
	lsr r1, r1, #8
	strb r1, [r3]
_080CA190:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CA198:
	.4byte gRam
_080CA19C:
	.4byte 0x00000996
_080CA1A0:
	.4byte 0x00000EE2
_080CA1A4:
	.4byte gUnknown_0817277E
_080CA1A8:
	.4byte gUnknown_08172784
_080CA1AC:
	.4byte 0x00000ED2
_080CA1B0:
	.4byte 0x00000EF2
_080CA1B4:
	.4byte gUnknown_08172780
_080CA1B8:
	.4byte gUnknown_0817277C
	THUMB_FUNC_END sub_080CA118

	THUMB_FUNC_START sub_080CA1BC
sub_080CA1BC: @ 0x080CA1BC
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080CA270  @ =gRam
	ldr r1, _080CA274  @ =0x00000E15
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #0
	strb r1, [r0]
	mov r0, #27
	add r1, r5, #0
	mov r2, #15
	bl sub_080C9AAC
	add r2, r0, #0
	cmp r2, #0
	blt _080CA26A
	ldr r3, _080CA278  @ =0x00000EE2
	add r1, r4, r3
	add r1, r2, r1
	ldr r3, _080CA27C  @ =0x00000DCF
	add r0, r4, r3
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CA280  @ =0x00000F02
	add r1, r4, r0
	add r1, r2, r1
	add r3, r3, #20
	add r0, r4, r3
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CA284  @ =0x00000ED2
	add r1, r4, r0
	add r1, r2, r1
	sub r3, r3, #30
	add r0, r4, r3
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CA288  @ =0x00000EF2
	add r1, r4, r0
	add r1, r2, r1
	add r3, r3, #20
	add r0, r4, r3
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080CA28C  @ =0x00000FA2
	add r0, r4, r1
	add r0, r2, r0
	mov r1, #6
	strb r1, [r0]
	ldr r3, _080CA290  @ =0x00000FC2
	add r0, r4, r3
	add r0, r2, r0
	mov r1, #31
	strb r1, [r0]
	ldr r0, _080CA294  @ =0x00000F22
	add r1, r4, r0
	add r1, r2, r1
	ldr r3, _080CA298  @ =0x00000DF7
	add r0, r4, r3
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CA29C  @ =0x00000F12
	add r1, r4, r0
	add r1, r2, r1
	sub r3, r3, #10
	add r0, r4, r3
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080CA2A0  @ =0x000010F2
	add r0, r4, r1
	add r0, r2, r0
	mov r3, #161
	lsl r3, r3, #4
	add r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	lsl r0, r2, #24
	lsr r0, r0, #24
	bl sub_080C4F3C
_080CA26A:
	pop {r4,r5}
	pop {r0}
	bx r0
_080CA270:
	.4byte gRam
_080CA274:
	.4byte 0x00000E15
_080CA278:
	.4byte 0x00000EE2
_080CA27C:
	.4byte 0x00000DCF
_080CA280:
	.4byte 0x00000F02
_080CA284:
	.4byte 0x00000ED2
_080CA288:
	.4byte 0x00000EF2
_080CA28C:
	.4byte 0x00000FA2
_080CA290:
	.4byte 0x00000FC2
_080CA294:
	.4byte 0x00000F22
_080CA298:
	.4byte 0x00000DF7
_080CA29C:
	.4byte 0x00000F12
_080CA2A0:
	.4byte 0x000010F2
	THUMB_FUNC_END sub_080CA1BC

	THUMB_FUNC_START sub_080CA2A4
sub_080CA2A4: @ 0x080CA2A4
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080C7A48
	mov r1, #3
	and r1, r1, r0
	cmp r1, #0
	bne _080CA2C0
	ldr r2, _080CA2BC  @ =gRam
	b _080CA2DC
_080CA2BC:
	.4byte gRam
_080CA2C0:
	ldr r2, _080CA2F0  @ =gRam
	ldr r0, _080CA2F4  @ =0x00000F22
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	mvn r0, r0
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080CA2F8  @ =0x000010A2
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080CA2DC:
	ldr r1, _080CA2FC  @ =0x00001042
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #12
	and r0, r0, r1
	cmp r0, #0
	bne _080CA300
	mov r0, #0
	b _080CA31C
_080CA2F0:
	.4byte gRam
_080CA2F4:
	.4byte 0x00000F22
_080CA2F8:
	.4byte 0x000010A2
_080CA2FC:
	.4byte 0x00001042
_080CA300:
	ldr r0, _080CA324  @ =0x00000F12
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	mvn r0, r0
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080CA328  @ =0x000010A2
	add r1, r2, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
_080CA31C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080CA324:
	.4byte 0x00000F12
_080CA328:
	.4byte 0x000010A2
	THUMB_FUNC_END sub_080CA2A4

	THUMB_FUNC_START sub_080CA32C
sub_080CA32C: @ 0x080CA32C
	push {r4-r6,lr}
	ldr r2, _080CA354  @ =gRam
	ldr r0, _080CA358  @ =0x00000961
	add r6, r2, r0
	ldrb r4, [r6]
	lsl r3, r4, #24
	asr r1, r3, #30
	mov r0, #2
	and r1, r1, r0
	mov r5, #150
	lsl r5, r5, #4
	add r0, r2, r5
	ldrb r0, [r0]
	lsr r0, r0, #7
	orr r1, r1, r0
	lsl r5, r1, #3
	cmp r3, #0
	blt _080CA35C
	ldrb r3, [r6]
	b _080CA362
_080CA354:
	.4byte gRam
_080CA358:
	.4byte 0x00000961
_080CA35C:
	neg r0, r4
	lsl r0, r0, #24
	lsr r3, r0, #24
_080CA362:
	mov r0, #150
	lsl r0, r0, #4
	add r2, r2, r0
	ldrb r1, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _080CA376
	ldrb r0, [r2]
	b _080CA37C
_080CA376:
	neg r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
_080CA37C:
	cmp r3, r0
	bcs _080CA38C
	ldr r1, _080CA388  @ =gUnknown_08172825
	lsr r0, r3, #2
	b _080CA390
	.byte 0x00
	.byte 0x00
_080CA388:
	.4byte gUnknown_08172825
_080CA38C:
	ldr r1, _080CA39C  @ =gUnknown_08172805
	lsr r0, r0, #2
_080CA390:
	add r0, r0, r5
	add r0, r0, r1
	ldrb r0, [r0]
	pop {r4-r6}
	pop {r1}
	bx r1
_080CA39C:
	.4byte gUnknown_08172805
	THUMB_FUNC_END sub_080CA32C

	THUMB_FUNC_START sub_080CA3A0
sub_080CA3A0: @ 0x080CA3A0
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080CA3E8  @ =gRam
	ldr r3, _080CA3EC  @ =0x00000F62
	add r1, r2, r3
	add r1, r0, r1
	ldrb r3, [r1]
	ldr r4, _080CA3F0  @ =0x00000968
	add r1, r2, r4
	strb r3, [r1]
	ldr r3, _080CA3F4  @ =0x00000F72
	add r1, r2, r3
	add r1, r0, r1
	ldrb r3, [r1]
	add r4, r4, #1
	add r1, r2, r4
	strb r3, [r1]
	ldr r3, _080CA3F8  @ =0x00000F82
	add r1, r2, r3
	add r1, r0, r1
	ldrb r3, [r1]
	add r4, r4, #3
	add r1, r2, r4
	strb r3, [r1]
	ldr r3, _080CA3FC  @ =0x00001062
	add r1, r2, r3
	add r0, r0, r1
	ldrb r0, [r0]
	add r4, r4, #1
	add r2, r2, r4
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CA3E8:
	.4byte gRam
_080CA3EC:
	.4byte 0x00000F62
_080CA3F0:
	.4byte 0x00000968
_080CA3F4:
	.4byte 0x00000F72
_080CA3F8:
	.4byte 0x00000F82
_080CA3FC:
	.4byte 0x00001062
	THUMB_FUNC_END sub_080CA3A0

	THUMB_FUNC_START sub_080CA400
sub_080CA400: @ 0x080CA400
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, _080CA434  @ =gRam
	ldr r2, _080CA438  @ =0x000009AD
	add r1, r0, r2
	ldrb r1, [r1]
	cmp r1, #0
	beq _080CA418
	b _080CA51E
_080CA418:
	ldr r1, _080CA43C  @ =0x00001645
	add r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #0
	bne _080CA424
	b _080CA51E
_080CA424:
	sub r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080CA440
	bl sub_08132448
	b _080CA51E
_080CA434:
	.4byte gRam
_080CA438:
	.4byte 0x000009AD
_080CA43C:
	.4byte 0x00001645
_080CA440:
	ldr r0, _080CA454  @ =gRam
	ldr r1, _080CA458  @ =0x00001646
	add r3, r0, r1
	ldrb r0, [r3]
	lsr r1, r0, #2
	ldrb r2, [r2]
	cmp r2, r1
	bge _080CA45C
	lsl r0, r2, #4
	b _080CA46A
_080CA454:
	.4byte gRam
_080CA458:
	.4byte 0x00001646
_080CA45C:
	lsl r0, r1, #1
	add r0, r0, r1
	cmp r2, r0
	ble _080CA472
	ldrb r0, [r3]
	sub r0, r0, r2
	lsl r0, r0, #4
_080CA46A:
	bl __divsi3
	add r6, r0, #0
	b _080CA474
_080CA472:
	mov r6, #15
_080CA474:
	mov r2, #0
	mov r12, r2
	lsl r0, r6, #5
	mov r10, r0
	lsl r1, r6, #10
	mov r9, r1
	ldr r7, _080CA4A8  @ =gUnknown_02000C00
_080CA482:
	mov r5, #64
	mov r2, #2
	add r2, r2, r12
	mov r8, r2
_080CA48A:
	mov r1, r12
	add r0, r1, r5
	asr r4, r0, #1
	lsl r1, r4, #1
	ldr r2, _080CA4AC  @ =gUnknown_02000800
	add r0, r1, r2
	ldrh r3, [r0]
	mov r0, #31
	and r0, r0, r3
	sub r2, r0, r6
	cmp r2, #0
	ble _080CA4B0
	add r0, r1, r7
	strh r2, [r0]
	b _080CA4B6
_080CA4A8:
	.4byte gUnknown_02000C00
_080CA4AC:
	.4byte gUnknown_02000800
_080CA4B0:
	add r1, r1, r7
	mov r0, #0
	strh r0, [r1]
_080CA4B6:
	mov r0, #248
	lsl r0, r0, #2
	and r0, r0, r3
	mov r1, r10
	sub r2, r0, r1
	cmp r2, #0
	ble _080CA4CE
	lsl r1, r4, #1
	add r1, r1, r7
	ldrh r0, [r1]
	orr r2, r2, r0
	strh r2, [r1]
_080CA4CE:
	mov r0, #248
	lsl r0, r0, #7
	and r3, r3, r0
	mov r0, r9
	sub r2, r3, r0
	cmp r2, #0
	ble _080CA4E6
	lsl r1, r4, #1
	add r1, r1, r7
	ldrh r0, [r1]
	orr r2, r2, r0
	strh r2, [r1]
_080CA4E6:
	add r5, r5, #16
	cmp r5, #255
	ble _080CA48A
	mov r12, r8
	mov r1, r12
	cmp r1, #15
	ble _080CA482
	ldr r0, _080CA504  @ =gUnknown_02000800
	ldrh r1, [r0]
	cmp r1, #0
	beq _080CA510
	ldr r0, _080CA508  @ =gUnknown_02000C00
	ldr r1, _080CA50C  @ =gUnknown_02000C80
	ldrh r1, [r1]
	b _080CA512
_080CA504:
	.4byte gUnknown_02000800
_080CA508:
	.4byte gUnknown_02000C00
_080CA50C:
	.4byte gUnknown_02000C80
_080CA510:
	ldr r0, _080CA52C  @ =gUnknown_02000C00
_080CA512:
	strh r1, [r0]
	ldr r2, _080CA530  @ =gRam
	ldr r0, _080CA534  @ =0x0000099B
	add r1, r2, r0
	mov r0, #1
	strb r0, [r1]
_080CA51E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080CA52C:
	.4byte gUnknown_02000C00
_080CA530:
	.4byte gRam
_080CA534:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_080CA400

	THUMB_FUNC_START sub_080CA538
sub_080CA538: @ 0x080CA538
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #15
	bl sub_080C9AAC
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080CA538

	THUMB_FUNC_START sub_080CA54C
sub_080CA54C: @ 0x080CA54C
	push {lr}
	bl sub_080CA400
	ldr r0, _080CA578  @ =gRam
	ldr r1, _080CA57C  @ =0x00001643
	add r2, r0, r1
	ldrb r1, [r2]
	cmp r1, #0
	beq _080CA588
	ldr r3, _080CA580  @ =0x000009AD
	add r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080CA588
	sub r0, r1, #1
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080CA584
	bl sub_08132448
	b _080CA588
_080CA578:
	.4byte gRam
_080CA57C:
	.4byte 0x00001643
_080CA580:
	.4byte 0x000009AD
_080CA584:
	bl sub_08131FA4
_080CA588:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CA54C

	THUMB_FUNC_START sub_080CA58C
sub_080CA58C: @ 0x080CA58C
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl Sprite3_Move
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CA58C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CA59C
sub_080CA59C: @ 0x080CA59C
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #0
	bl sub_080CA614
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CA59C

	THUMB_FUNC_START sub_080CA5AC
sub_080CA5AC: @ 0x080CA5AC
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r0, #0
	ldr r0, _080CA5D0  @ =gRam
	ldr r1, _080CA5D4  @ =0x00001142
	add r0, r0, r1
	add r0, r2, r0
	ldrb r0, [r0]
	lsr r1, r0, #3
	cmp r1, #3
	bls _080CA5C6
	mov r1, #4
_080CA5C6:
	add r0, r2, #0
	bl sub_080CA614
	pop {r0}
	bx r0
_080CA5D0:
	.4byte gRam
_080CA5D4:
	.4byte 0x00001142
	THUMB_FUNC_END sub_080CA5AC

	THUMB_FUNC_START sub_080CA5D8
sub_080CA5D8: @ 0x080CA5D8
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080CA604  @ =gRam
	ldr r2, _080CA608  @ =0x00000FA2
	add r1, r3, r2
	add r1, r0, r1
	mov r4, #0
	mov r2, #4
	strb r2, [r1]
	ldr r2, _080CA60C  @ =0x00000F62
	add r1, r3, r2
	add r1, r0, r1
	strb r4, [r1]
	ldr r1, _080CA610  @ =0x00000FC2
	add r3, r3, r1
	add r0, r0, r3
	mov r1, #224
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
_080CA604:
	.4byte gRam
_080CA608:
	.4byte 0x00000FA2
_080CA60C:
	.4byte 0x00000F62
_080CA610:
	.4byte 0x00000FC2
	THUMB_FUNC_END sub_080CA5D8

	THUMB_FUNC_START sub_080CA614
sub_080CA614: @ 0x080CA614
	push {r4-r7,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _080CA66C  @ =gRam
	ldr r0, _080CA670  @ =0x00001624
	add r5, r2, r0
	ldrb r0, [r5]
	ldr r3, _080CA674  @ =0x00001625
	add r6, r2, r3
	ldrb r3, [r6]
	lsl r3, r3, #8
	ldr r7, _080CA678  @ =0x00001142
	add r2, r2, r7
	add r2, r4, r2
	orr r0, r0, r3
	ldrb r2, [r2]
	add r0, r0, r2
	strb r0, [r5]
	lsr r0, r0, #8
	strb r0, [r6]
	ldr r2, _080CA67C  @ =gUnknown_03003E74
	ldrh r0, [r2]
	add r0, r0, #4
	strh r0, [r2]
	ldr r0, _080CA680  @ =gUnknown_08172800
	add r1, r1, r0
	ldrb r1, [r1]
	lsl r1, r1, #3
	ldr r0, _080CA684  @ =gUnknown_08172788
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #3
	bl sub_080C9480
	add r0, r4, #0
	bl sub_080C1F70
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CA66C:
	.4byte gRam
_080CA670:
	.4byte 0x00001624
_080CA674:
	.4byte 0x00001625
_080CA678:
	.4byte 0x00001142
_080CA67C:
	.4byte gUnknown_03003E74
_080CA680:
	.4byte gUnknown_08172800
_080CA684:
	.4byte gUnknown_08172788
	THUMB_FUNC_END sub_080CA614

	THUMB_FUNC_START sub_080CA688
sub_080CA688: @ 0x080CA688
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r7, r2, #0
	ldr r3, _080CA6CC  @ =gUnknown_03003E74
	ldrh r0, [r3]
	mov r10, r0
	ldr r6, _080CA6D0  @ =gRam
	ldr r1, _080CA6D4  @ =0x000010C2
	add r0, r6, r1
	add r0, r2, r0
	mov r1, #0
	strb r1, [r0]
	ldr r1, _080CA6D8  @ =0x00000FC2
	add r0, r6, r1
	add r0, r0, r2
	mov r9, r0
	ldrb r0, [r0]
	cmp r0, #1
	bne _080CA6DC
	add r0, r2, #0
	bl sub_080C6DA8
	mov r0, #31
	mov r1, #1
	bl sub_080BEA28
	b _080CA734
	.byte 0x00
	.byte 0x00
_080CA6CC:
	.4byte gUnknown_03003E74
_080CA6D0:
	.4byte gRam
_080CA6D4:
	.4byte 0x000010C2
_080CA6D8:
	.4byte 0x00000FC2
_080CA6DC:
	cmp r0, #15
	bls _080CA700
	ldr r0, _080CA744  @ =0x00001012
	add r4, r6, r0
	add r4, r2, r4
	ldrb r5, [r4]
	ldrh r0, [r3]
	add r0, r0, #2
	strh r0, [r3]
	ldrb r0, [r4]
	sub r0, r0, #2
	strb r0, [r4]
	add r0, r2, #0
	str r3, [sp]
	bl SpriteActive_MainLong
	strb r5, [r4]
	ldr r3, [sp]
_080CA700:
	ldr r1, _080CA748  @ =0x00000F92
	add r5, r6, r1
	add r5, r7, r5
	ldrb r2, [r5]
	mov r8, r2
	ldr r0, _080CA74C  @ =0x00001122
	add r4, r6, r0
	add r4, r7, r4
	ldrb r6, [r4]
	ldr r1, _080CA750  @ =gUnknown_081791D4
	mov r2, r9
	ldrb r0, [r2]
	lsr r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5]
	mov r0, #3
	strb r0, [r4]
	mov r0, r10
	strh r0, [r3]
	add r0, r7, #0
	bl sub_080F2410
	strb r6, [r4]
	mov r1, r8
	strb r1, [r5]
_080CA734:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080CA744:
	.4byte 0x00001012
_080CA748:
	.4byte 0x00000F92
_080CA74C:
	.4byte 0x00001122
_080CA750:
	.4byte gUnknown_081791D4
	THUMB_FUNC_END sub_080CA688

	THUMB_FUNC_START sub_080CA754
sub_080CA754: @ 0x080CA754
	push {r4,r5,lr}
	bl GetRandomInt
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	bne _080CA7E0
	mov r2, #0
	mov r1, #15
	ldr r5, _080CA7E8  @ =gRam
	ldr r0, _080CA7EC  @ =0x00000FA2
	add r4, r5, r0
	add r0, r0, #80
	add r3, r5, r0
_080CA770:
	add r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CA782
	add r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #108
	beq _080CA782
	add r2, r2, #1
_080CA782:
	sub r1, r1, #1
	cmp r1, #0
	bge _080CA770
	cmp r2, #3
	bgt _080CA7E0
	add r4, r5, #0
	ldr r1, _080CA7F0  @ =0x0000165E
	add r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bls _080CA7E0
	ldr r0, _080CA7F4  @ =0x00000EC9
	add r2, r4, r0
	ldrb r0, [r2]
	add r0, r0, #1
	mov r1, #7
	add r3, r0, #0
	and r3, r3, r1
	strb r0, [r2]
	ldr r1, _080CA7F8  @ =0x0000164C
	add r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CA7B6
	mov r0, #8
	orr r3, r3, r0
_080CA7B6:
	ldr r2, _080CA7FC  @ =gUnknown_08172848
	mov r1, #171
	lsl r1, r1, #4
	add r0, r5, r1
	ldrh r0, [r0]
	mov r1, #63
	and r1, r1, r0
	add r1, r1, r2
	ldr r0, _080CA800  @ =gUnknown_08172898
	add r0, r3, r0
	ldrb r1, [r1]
	ldrb r0, [r0]
	and r0, r0, r1
	cmp r0, #0
	bne _080CA7E0
	ldr r0, _080CA804  @ =gUnknown_08172888
	add r0, r3, r0
	ldrb r1, [r0]
	ldr r2, _080CA808  @ =0x00000DB8
	add r0, r5, r2
	strb r1, [r0]
_080CA7E0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CA7E8:
	.4byte gRam
_080CA7EC:
	.4byte 0x00000FA2
_080CA7F0:
	.4byte 0x0000165E
_080CA7F4:
	.4byte 0x00000EC9
_080CA7F8:
	.4byte 0x0000164C
_080CA7FC:
	.4byte gUnknown_08172848
_080CA800:
	.4byte gUnknown_08172898
_080CA804:
	.4byte gUnknown_08172888
_080CA808:
	.4byte 0x00000DB8
	THUMB_FUNC_END sub_080CA754

	THUMB_FUNC_START sub_080CA80C
sub_080CA80C: @ 0x080CA80C
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, _080CA898  @ =gRam
	ldr r3, _080CA89C  @ =0x000011D2
	add r2, r5, r3
	add r2, r0, r2
	mov r3, #20
	strb r3, [r2]
	ldr r4, _080CA8A0  @ =0x000015F8
	add r2, r5, r4
	strb r3, [r2]
	ldr r6, _080CA8A4  @ =0x00000EE2
	add r2, r5, r6
	add r2, r1, r2
	ldrb r4, [r2]
	ldr r3, _080CA8A8  @ =0x00000F02
	add r2, r5, r3
	add r2, r1, r2
	ldrb r2, [r2]
	lsl r2, r2, #8
	orr r4, r4, r2
	lsl r4, r4, #16
	mov r6, #128
	lsl r6, r6, #11
	add r4, r4, r6
	lsr r4, r4, #16
	sub r3, r3, #48
	add r2, r5, r3
	add r2, r1, r2
	ldrb r3, [r2]
	ldr r6, _080CA8AC  @ =0x00000EF2
	add r2, r5, r6
	add r1, r1, r2
	ldrb r1, [r1]
	lsl r1, r1, #8
	orr r3, r3, r1
	lsl r3, r3, #16
	mov r1, #224
	lsl r1, r1, #13
	add r3, r3, r1
	lsr r3, r3, #16
	ldr r2, _080CA8B0  @ =0x0000122C
	add r1, r5, r2
	add r1, r0, r1
	strb r4, [r1]
	ldr r6, _080CA8B4  @ =0x00001268
	add r1, r5, r6
	add r1, r0, r1
	lsr r4, r4, #8
	strb r4, [r1]
	sub r2, r2, #30
	add r1, r5, r2
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CA8B8  @ =0x0000124A
	add r1, r5, r4
	add r1, r0, r1
	lsr r3, r3, #8
	strb r3, [r1]
	add r6, r6, #150
	add r5, r5, r6
	add r0, r0, r5
	mov r1, #10
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
_080CA898:
	.4byte gRam
_080CA89C:
	.4byte 0x000011D2
_080CA8A0:
	.4byte 0x000015F8
_080CA8A4:
	.4byte 0x00000EE2
_080CA8A8:
	.4byte 0x00000F02
_080CA8AC:
	.4byte 0x00000EF2
_080CA8B0:
	.4byte 0x0000122C
_080CA8B4:
	.4byte 0x00001268
_080CA8B8:
	.4byte 0x0000124A
	THUMB_FUNC_END sub_080CA80C

	THUMB_FUNC_START sub_080CA8BC
sub_080CA8BC: @ 0x080CA8BC
	push {r4,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r2, _080CA8F8  @ =gRam
	ldr r0, _080CA8FC  @ =0x00000E85
	add r1, r2, r0
	add r1, r3, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r1, #255
	and r0, r0, r1
	mov r1, #15
	and r0, r0, r1
	cmp r0, #0
	bne _080CA912
	mov r1, #29
_080CA8DE:
	ldr r4, _080CA900  @ =0x000011D2
	add r0, r2, r4
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080CA904
	lsl r0, r1, #24
	lsr r0, r0, #24
	add r1, r3, #0
	bl sub_080CA80C
	b _080CA912
	.byte 0x00
	.byte 0x00
_080CA8F8:
	.4byte gRam
_080CA8FC:
	.4byte 0x00000E85
_080CA900:
	.4byte 0x000011D2
_080CA904:
	sub r1, r1, #1
	cmp r1, #0
	bge _080CA8DE
	mov r0, #0
	add r1, r3, #0
	bl sub_080CA80C
_080CA912:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CA8BC

	THUMB_FUNC_START sub_080CA918
sub_080CA918: @ 0x080CA918
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	bl sub_080C94D0
	add r0, r4, #0
	bl sub_080C6230
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CA918

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CA934
sub_080CA934: @ 0x080CA934
	push {r4-r7,lr}
	ldr r0, _080CA978  @ =gRam
	ldr r1, _080CA97C  @ =0x00000952
	add r2, r0, r1
	ldrh r7, [r2]
	ldr r1, _080CA980  @ =0x00000C11
	add r0, r0, r1
	ldrb r6, [r0]
	mov r1, #255
	strb r1, [r0]
	mov r4, #21
	add r5, r2, #0
_080CA94C:
	bl sub_080CA988
	ldrh r0, [r5]
	add r0, r0, #16
	strh r0, [r5]
	lsl r0, r4, #16
	ldr r2, _080CA984  @ =0xFFFF0000
	add r0, r0, r2
	lsr r4, r0, #16
	cmp r0, #0
	bge _080CA94C
	ldr r0, _080CA978  @ =gRam
	ldr r2, _080CA980  @ =0x00000C11
	add r1, r0, r2
	strb r6, [r1]
	ldr r1, _080CA97C  @ =0x00000952
	add r0, r0, r1
	strh r7, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CA978:
	.4byte gRam
_080CA97C:
	.4byte 0x00000952
_080CA980:
	.4byte 0x00000C11
_080CA984:
	.4byte 0xFFFF0000
	THUMB_FUNC_END sub_080CA934

	THUMB_FUNC_START sub_080CA988
sub_080CA988: @ 0x080CA988
	push {r4-r6,lr}
	ldr r3, _080CA9E4  @ =gRam
	ldr r1, _080CA9E8  @ =0x00000C11
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CA9DC
	lsr r0, r0, #7
	ldr r4, _080CA9EC  @ =0x00000952
	add r2, r3, r4
	ldr r1, _080CA9F0  @ =gUnknown_081728A8
	lsl r0, r0, #1
	add r0, r0, r1
	mov r4, #0
	ldrsh r1, [r2, r4]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r2, _080CA9F4  @ =0x00000958
	add r0, r3, r2
	mov r4, #0
	ldrsh r0, [r0, r4]
	sub r0, r0, #48
	lsl r0, r0, #16
	lsr r2, r0, #16
	mov r5, #21
	lsl r6, r1, #16
_080CA9BC:
	lsl r4, r2, #16
	asr r4, r4, #16
	asr r0, r6, #16
	add r1, r4, #0
	bl sub_080CAA64
	add r4, r4, #16
	lsl r4, r4, #16
	lsr r2, r4, #16
	lsl r0, r5, #24
	mov r1, #255
	lsl r1, r1, #24
	add r0, r0, r1
	lsr r5, r0, #24
	cmp r0, #0
	bge _080CA9BC
_080CA9DC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CA9E4:
	.4byte gRam
_080CA9E8:
	.4byte 0x00000C11
_080CA9EC:
	.4byte 0x00000952
_080CA9F0:
	.4byte gUnknown_081728A8
_080CA9F4:
	.4byte 0x00000958
	THUMB_FUNC_END sub_080CA988

	THUMB_FUNC_START sub_080CA9F8
sub_080CA9F8: @ 0x080CA9F8
	push {r4-r6,lr}
	ldr r3, _080CAA54  @ =gRam
	mov r1, #193
	lsl r1, r1, #4
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CAA4E
	lsr r0, r0, #7
	ldr r4, _080CAA58  @ =0x00000958
	add r2, r3, r4
	ldr r1, _080CAA5C  @ =gUnknown_081728A8
	lsl r0, r0, #1
	add r0, r0, r1
	mov r4, #0
	ldrsh r1, [r2, r4]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r2, _080CAA60  @ =0x00000952
	add r0, r3, r2
	mov r4, #0
	ldrsh r0, [r0, r4]
	sub r0, r0, #48
	lsl r0, r0, #16
	lsr r2, r0, #16
	mov r5, #21
	lsl r6, r1, #16
_080CAA2E:
	lsl r4, r2, #16
	asr r4, r4, #16
	add r0, r4, #0
	asr r1, r6, #16
	bl sub_080CAA64
	add r4, r4, #16
	lsl r4, r4, #16
	lsr r2, r4, #16
	lsl r0, r5, #24
	mov r1, #255
	lsl r1, r1, #24
	add r0, r0, r1
	lsr r5, r0, #24
	cmp r0, #0
	bge _080CAA2E
_080CAA4E:
	pop {r4-r6}
	pop {r0}
	bx r0
_080CAA54:
	.4byte gRam
_080CAA58:
	.4byte 0x00000958
_080CAA5C:
	.4byte gUnknown_081728A8
_080CAA60:
	.4byte 0x00000952
	THUMB_FUNC_END sub_080CA9F8

	THUMB_FUNC_START sub_080CAA64
sub_080CAA64: @ 0x080CAA64
	push {r4-r7,lr}
	lsl r0, r0, #16
	lsl r1, r1, #16
	lsr r5, r1, #16
	ldr r3, _080CAAE4  @ =gRam
	mov r2, #176
	lsl r2, r2, #5
	add r1, r3, r2
	ldrb r2, [r1]
	ldr r4, _080CAAE8  @ =0x00001601
	add r1, r3, r4
	ldrb r1, [r1]
	lsl r1, r1, #8
	add r2, r2, r1
	lsr r6, r0, #16
	asr r0, r0, #16
	sub r0, r0, r2
	lsl r4, r0, #16
	asr r1, r4, #16
	ldr r7, _080CAAEC  @ =0x000015FC
	add r0, r3, r7
	ldrh r0, [r0]
	cmp r1, r0
	bge _080CAADC
	cmp r1, #0
	blt _080CAADC
	ldr r1, _080CAAF0  @ =0x00001602
	add r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080CAAF4  @ =0x00001603
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	lsl r0, r5, #16
	asr r0, r0, #16
	sub r0, r0, r1
	lsl r1, r0, #16
	asr r2, r1, #16
	add r7, r7, #2
	add r0, r3, r7
	ldrh r0, [r0]
	cmp r2, r0
	bge _080CAADC
	cmp r2, #0
	blt _080CAADC
	lsr r0, r4, #24
	lsr r1, r1, #24
	lsl r1, r1, #2
	orr r0, r0, r1
	lsl r0, r0, #24
	mov r2, #240
	and r2, r2, r5
	lsl r1, r6, #24
	lsr r1, r1, #28
	orr r2, r2, r1
	lsr r0, r0, #16
	orr r0, r0, r2
	bl sub_080CBD44
_080CAADC:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CAAE4:
	.4byte gRam
_080CAAE8:
	.4byte 0x00001601
_080CAAEC:
	.4byte 0x000015FC
_080CAAF0:
	.4byte 0x00001602
_080CAAF4:
	.4byte 0x00001603
	THUMB_FUNC_END sub_080CAA64

	THUMB_FUNC_START sub_080CAAF8
sub_080CAAF8: @ 0x080CAAF8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	lsl r1, r1, #24
	lsr r3, r1, #24
	lsl r2, r2, #16
	lsr r6, r2, #16
	cmp r3, #248
	bls _080CAB16
	add r1, r3, #0
	add r2, r6, #0
	bl sub_080CBD84
	b _080CAB7A
_080CAB16:
	cmp r3, #207
	beq _080CAB2A
	cmp r3, #207
	bgt _080CAB3C
	cmp r3, #82
	beq _080CAB3C
	cmp r3, #87
	bne _080CAB3C
	mov r0, #4
	b _080CAB3E
_080CAB2A:
	mov r0, #5
	b _080CAB3E
_080CAB2E:
	lsr r2, r2, #24
	add r0, r5, #0
	add r1, r3, #0
	add r3, r6, #0
	bl sub_080CAB88
	b _080CAB7A
_080CAB3C:
	mov r0, #13
_080CAB3E:
	lsl r2, r0, #24
	cmp r2, #0
	blt _080CAB7A
	ldr r4, _080CAB84  @ =gUnknown_030031D2
	mov r0, #80
	add r0, r0, r4
	mov r12, r0
	mov r7, #32
	neg r7, r7
	add r7, r7, r4
	mov r8, r7
_080CAB54:
	asr r1, r2, #24
	add r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CAB2E
	mov r7, r12
	add r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #65
	bne _080CAB72
	mov r7, r8
	add r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _080CAB2E
_080CAB72:
	sub r0, r1, #1
	lsl r2, r0, #24
	cmp r2, #0
	bge _080CAB54
_080CAB7A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080CAB84:
	.4byte gUnknown_030031D2
	THUMB_FUNC_END sub_080CAAF8

	THUMB_FUNC_START sub_080CAB88
sub_080CAB88: @ 0x080CAB88
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r2, r2, #24
	lsr r2, r2, #24
	lsl r3, r3, #16
	lsr r6, r3, #16
	mov r5, #7
	bic r5, r5, r6
	mov r4, #1
	lsl r4, r4, r5
	ldrb r5, [r0]
	orr r4, r4, r5
	strb r4, [r0]
	ldr r5, _080CAC30  @ =gRam
	lsl r0, r2, #1
	ldr r7, _080CAC34  @ =0x00001192
	add r4, r5, r7
	add r0, r0, r4
	mov r4, #0
	mov r8, r4
	strh r6, [r0]
	ldr r7, _080CAC38  @ =0x00000FF2
	add r0, r5, r7
	add r0, r2, r0
	strb r1, [r0]
	ldr r1, _080CAC3C  @ =0x00000FA2
	add r0, r5, r1
	add r0, r2, r0
	mov r1, #8
	strb r1, [r0]
	ldr r4, _080CAC40  @ =0x00000EE2
	add r0, r5, r4
	add r0, r2, r0
	lsl r1, r6, #4
	strb r1, [r0]
	ldr r7, _080CAC44  @ =0x00000ED2
	add r0, r5, r7
	add r0, r2, r0
	mov r1, #240
	and r6, r6, r1
	strb r6, [r0]
	ldr r0, _080CAC48  @ =0x00000F02
	add r4, r5, r0
	add r4, r2, r4
	lsr r3, r3, #24
	mov r0, #3
	and r0, r0, r3
	strb r0, [r4]
	add r7, r7, #32
	add r1, r5, r7
	add r1, r2, r1
	lsr r3, r3, #2
	strb r3, [r1]
	ldr r3, _080CAC4C  @ =0x00001601
	add r0, r5, r3
	ldrb r0, [r0]
	ldrb r7, [r4]
	add r0, r0, r7
	strb r0, [r4]
	add r3, r3, #2
	add r0, r5, r3
	ldrb r0, [r0]
	ldrb r4, [r1]
	add r0, r0, r4
	strb r0, [r1]
	ldr r7, _080CAC50  @ =0x000010F2
	add r0, r5, r7
	add r0, r2, r0
	mov r1, r8
	strb r1, [r0]
	ldr r3, _080CAC54  @ =0x00001002
	add r0, r5, r3
	add r0, r2, r0
	strb r1, [r0]
	ldr r4, _080CAC58  @ =0x00000E85
	add r5, r5, r4
	add r2, r2, r5
	strb r1, [r2]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080CAC30:
	.4byte gRam
_080CAC34:
	.4byte 0x00001192
_080CAC38:
	.4byte 0x00000FF2
_080CAC3C:
	.4byte 0x00000FA2
_080CAC40:
	.4byte 0x00000EE2
_080CAC44:
	.4byte 0x00000ED2
_080CAC48:
	.4byte 0x00000F02
_080CAC4C:
	.4byte 0x00001601
_080CAC50:
	.4byte 0x000010F2
_080CAC54:
	.4byte 0x00001002
_080CAC58:
	.4byte 0x00000E85
	THUMB_FUNC_END sub_080CAB88

	THUMB_FUNC_START sub_080CAC5C
sub_080CAC5C: @ 0x080CAC5C
	push {r4-r6,lr}
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r2, r2, #24
	lsr r4, r2, #24
	lsl r3, r3, #16
	lsr r6, r3, #16
	mov r3, #7
	bic r3, r3, r6
	mov r2, #1
	lsl r2, r2, r3
	ldrb r3, [r0]
	orr r2, r2, r3
	strb r2, [r0]
	ldr r3, _080CACA4  @ =gRam
	lsl r0, r4, #1
	ldr r5, _080CACA8  @ =0x00000D64
	add r2, r3, r5
	add r0, r0, r2
	strh r6, [r0]
	ldr r2, _080CACAC  @ =0x00000D1B
	add r0, r3, r2
	add r0, r4, r0
	add r2, r1, #0
	add r2, r2, #8
	strb r2, [r0]
	mov r0, #15
	and r0, r0, r6
	lsl r0, r0, #4
	add r5, r3, #0
	cmp r1, #249
	bne _080CACB0
	add r0, r0, #8
	add r1, r0, #0
	b _080CACB4
	.byte 0x00
	.byte 0x00
_080CACA4:
	.4byte gRam
_080CACA8:
	.4byte 0x00000D64
_080CACAC:
	.4byte 0x00000D1B
_080CACB0:
	lsl r0, r0, #16
	lsr r1, r0, #16
_080CACB4:
	ldr r2, _080CAD14  @ =0x00000D23
	add r0, r5, r2
	add r0, r4, r0
	mov r3, #0
	strb r1, [r0]
	ldr r0, _080CAD18  @ =0x00000D33
	add r1, r5, r0
	add r1, r4, r1
	mov r2, #240
	add r0, r6, #0
	and r0, r0, r2
	strb r0, [r1]
	ldr r1, _080CAD1C  @ =0x00000D2B
	add r2, r5, r1
	add r2, r4, r2
	mov r0, #192
	lsl r0, r0, #2
	and r0, r0, r6
	lsr r0, r0, #8
	strb r0, [r2]
	ldr r0, _080CAD20  @ =0x00000D3B
	add r1, r5, r0
	add r1, r4, r1
	lsr r0, r6, #10
	strb r0, [r1]
	ldr r6, _080CAD24  @ =0x00001601
	add r0, r5, r6
	ldrb r0, [r0]
	ldrb r6, [r2]
	add r0, r0, r6
	strb r0, [r2]
	ldr r2, _080CAD28  @ =0x00001603
	add r0, r5, r2
	ldrb r0, [r0]
	ldrb r6, [r1]
	add r0, r0, r6
	strb r0, [r1]
	ldr r1, _080CAD2C  @ =0x000010F2
	add r0, r5, r1
	add r0, r4, r0
	strb r3, [r0]
	add r0, r4, #0
	bl sub_080CBE5C
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CAD14:
	.4byte 0x00000D23
_080CAD18:
	.4byte 0x00000D33
_080CAD1C:
	.4byte 0x00000D2B
_080CAD20:
	.4byte 0x00000D3B
_080CAD24:
	.4byte 0x00001601
_080CAD28:
	.4byte 0x00001603
_080CAD2C:
	.4byte 0x000010F2
	THUMB_FUNC_END sub_080CAC5C

	THUMB_FUNC_START sub_080CAD30
sub_080CAD30: @ 0x080CAD30
	push {r4-r7,lr}
	mov r2, #15
	ldr r4, _080CAE1C  @ =gRam
	ldr r0, _080CAE20  @ =0x00000FA2
	add r7, r4, r0
	ldr r1, _080CAE24  @ =0x000009B2
	add r6, r4, r1
	add r0, r0, #80
	add r5, r4, r0
_080CAD42:
	lsl r0, r2, #24
	asr r1, r0, #24
	add r3, r1, r7
	ldrb r0, [r3]
	cmp r0, #0
	beq _080CAD62
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _080CAD5E
	add r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #108
	beq _080CAD62
_080CAD5E:
	mov r0, #0
	strb r0, [r3]
_080CAD62:
	lsl r0, r2, #24
	mov r1, #255
	lsl r1, r1, #24
	add r0, r0, r1
	lsr r2, r0, #24
	cmp r0, #0
	bge _080CAD42
	mov r2, #9
	ldr r5, _080CAE28  @ =gUnknown_03003045
	mov r3, #0
_080CAD76:
	lsl r0, r2, #24
	asr r0, r0, #24
	add r1, r0, r5
	strb r3, [r1]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r0, #0
	bge _080CAD76
	ldr r2, _080CAE2C  @ =0x0000177A
	add r1, r4, r2
	mov r0, #0
	strb r0, [r1]
	ldr r2, _080CAE30  @ =0x00000DA6
	add r1, r4, r2
	strb r0, [r1]
	add r2, r2, #17
	add r1, r4, r2
	strb r0, [r1]
	sub r2, r2, #3
	add r1, r4, r2
	strb r0, [r1]
	add r2, r2, #1
	add r1, r4, r2
	strb r0, [r1]
	ldr r2, _080CAE34  @ =0x000015F8
	add r1, r4, r2
	strb r0, [r1]
	ldr r2, _080CAE38  @ =0x00000DBA
	add r1, r4, r2
	strb r0, [r1]
	ldr r2, _080CAE3C  @ =0x00000EC7
	add r1, r4, r2
	strb r0, [r1]
	ldr r2, _080CAE40  @ =0x00001643
	add r1, r4, r2
	strb r0, [r1]
	sub r2, r2, #1
	add r1, r4, r2
	strb r0, [r1]
	add r2, r2, #6
	add r1, r4, r2
	strb r0, [r1]
	add r2, r2, #1
	add r1, r4, r2
	strb r0, [r1]
	add r2, r2, #1
	add r1, r4, r2
	strb r0, [r1]
	sub r2, r2, #58
	add r1, r4, r2
	strb r0, [r1]
	ldr r2, _080CAE44  @ =0x00001894
	add r1, r4, r2
	strb r0, [r1]
	mov r2, #7
	ldr r0, _080CAE48  @ =0x00000D1B
	add r4, r4, r0
	mov r3, #0
_080CADEC:
	lsl r0, r2, #24
	asr r0, r0, #24
	add r1, r0, r4
	strb r3, [r1]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r0, #0
	bge _080CADEC
	mov r2, #29
	ldr r4, _080CAE4C  @ =gUnknown_03003402
	mov r3, #0
_080CAE04:
	lsl r0, r2, #24
	asr r0, r0, #24
	add r1, r0, r4
	strb r3, [r1]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r0, #0
	bge _080CAE04
	pop {r4-r7}
	pop {r0}
	bx r0
_080CAE1C:
	.4byte gRam
_080CAE20:
	.4byte 0x00000FA2
_080CAE24:
	.4byte 0x000009B2
_080CAE28:
	.4byte gUnknown_03003045
_080CAE2C:
	.4byte 0x0000177A
_080CAE30:
	.4byte 0x00000DA6
_080CAE34:
	.4byte 0x000015F8
_080CAE38:
	.4byte 0x00000DBA
_080CAE3C:
	.4byte 0x00000EC7
_080CAE40:
	.4byte 0x00001643
_080CAE44:
	.4byte 0x00001894
_080CAE48:
	.4byte 0x00000D1B
_080CAE4C:
	.4byte gUnknown_03003402
	THUMB_FUNC_END sub_080CAD30

	THUMB_FUNC_START sub_080CAE50
sub_080CAE50: @ 0x080CAE50
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080CAEA8  @ =gRam
	ldr r2, _080CAEAC  @ =0x00000EE2
	add r1, r3, r2
	add r1, r0, r1
	mov r4, #150
	lsl r4, r4, #4
	add r2, r3, r4
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r2, _080CAEB0  @ =0x00000F02
	add r1, r3, r2
	add r1, r0, r1
	add r4, r4, #1
	add r2, r3, r4
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r2, _080CAEB4  @ =0x00000ED2
	add r1, r3, r2
	add r1, r0, r1
	add r4, r4, #3
	add r2, r3, r4
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r2, _080CAEB8  @ =0x00000EF2
	add r1, r3, r2
	add r1, r0, r1
	add r4, r4, #1
	add r2, r3, r4
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r2, _080CAEBC  @ =0x00001142
	add r1, r3, r2
	add r0, r0, r1
	add r4, r4, #3
	add r3, r3, r4
	ldrb r1, [r3]
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CAEA8:
	.4byte gRam
_080CAEAC:
	.4byte 0x00000EE2
_080CAEB0:
	.4byte 0x00000F02
_080CAEB4:
	.4byte 0x00000ED2
_080CAEB8:
	.4byte 0x00000EF2
_080CAEBC:
	.4byte 0x00001142
	THUMB_FUNC_END sub_080CAE50

	THUMB_FUNC_START sub_080CAEC0
sub_080CAEC0: @ 0x080CAEC0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r5, #1
	mov r1, #15
	ldr r3, _080CAF24  @ =gRam
	ldr r0, _080CAF28  @ =0x00000FA2
	add r0, r0, r3
	mov r8, r0
	ldr r2, _080CAF2C  @ =0x00001132
	add r2, r2, r3
	mov r12, r2
	ldr r4, _080CAF30  @ =0x00000F02
	add r7, r3, r4
	ldr r0, _080CAF34  @ =0x00000952
	add r6, r3, r0
_080CAEE0:
	lsl r0, r1, #24
	asr r2, r0, #24
	mov r4, r8
	add r1, r2, r4
	ldrb r1, [r1]
	add r4, r0, #0
	cmp r1, #0
	beq _080CAF40
	mov r1, r12
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _080CAF40
	add r0, r2, r7
	ldrh r1, [r6]
	ldrb r0, [r0]
	lsr r1, r1, #8
	cmp r0, r1
	bne _080CAF40
	ldr r0, _080CAF38  @ =0x00000EF2
	add r1, r3, r0
	add r1, r2, r1
	ldr r2, _080CAF3C  @ =0x00000958
	add r0, r3, r2
	ldrh r0, [r0]
	ldrb r1, [r1]
	lsr r0, r0, #8
	cmp r1, r0
	bne _080CAF40
	mov r5, #0
	b _080CAF58
	.byte 0x00
	.byte 0x00
_080CAF24:
	.4byte gRam
_080CAF28:
	.4byte 0x00000FA2
_080CAF2C:
	.4byte 0x00001132
_080CAF30:
	.4byte 0x00000F02
_080CAF34:
	.4byte 0x00000952
_080CAF38:
	.4byte 0x00000EF2
_080CAF3C:
	.4byte 0x00000958
_080CAF40:
	mov r1, #255
	lsl r1, r1, #24
	add r0, r4, r1
	lsr r1, r0, #24
	cmp r0, #0
	bge _080CAEE0
	cmp r5, #0
	beq _080CAF58
	bl sub_080CBDC8
	lsl r0, r0, #24
	lsr r5, r0, #24
_080CAF58:
	add r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080CAEC0

	THUMB_FUNC_START sub_080CAF64
sub_080CAF64: @ 0x080CAF64
	push {r4-r6,lr}
	mov r4, #1
	mov r1, #15
	ldr r5, _080CAF90  @ =gUnknown_030031D2
	mov r0, #200
	lsl r0, r0, #1
	add r6, r5, r0
_080CAF72:
	lsl r0, r1, #24
	asr r2, r0, #24
	add r1, r2, r5
	ldrb r1, [r1]
	add r3, r0, #0
	cmp r1, #0
	beq _080CAF94
	add r0, r2, r6
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _080CAF94
	mov r4, #0
	b _080CAFAC
_080CAF90:
	.4byte gUnknown_030031D2
_080CAF94:
	mov r1, #255
	lsl r1, r1, #24
	add r0, r3, r1
	lsr r1, r0, #24
	cmp r0, #0
	bge _080CAF72
	cmp r4, #0
	beq _080CAFAC
	bl sub_080CBDC8
	lsl r0, r0, #24
	lsr r4, r0, #24
_080CAFAC:
	add r0, r4, #0
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080CAF64

	THUMB_FUNC_START sub_080CAFB4
sub_080CAFB4: @ 0x080CAFB4
	push {r4-r7,lr}
	add r6, r0, #0
	mov r5, #1
	mov r1, #15
	ldr r4, _080CAFF8  @ =gUnknown_030031D2
	mov r0, #200
	lsl r0, r0, #1
	add r0, r0, r4
	mov r12, r0
	add r7, r4, #0
	sub r7, r7, #160
_080CAFCA:
	lsl r0, r1, #24
	asr r2, r0, #24
	add r1, r2, r4
	ldrb r1, [r1]
	add r3, r0, #0
	cmp r1, #0
	beq _080CAFFC
	mov r1, r12
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _080CAFFC
	add r0, r2, r7
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, r6
	bne _080CAFFC
	mov r5, #0
	b _080CB014
	.byte 0x00
	.byte 0x00
_080CAFF8:
	.4byte gUnknown_030031D2
_080CAFFC:
	mov r1, #255
	lsl r1, r1, #24
	add r0, r3, r1
	lsr r1, r0, #24
	cmp r0, #0
	bge _080CAFCA
	cmp r5, #0
	beq _080CB014
	bl sub_080CBDC8
	lsl r0, r0, #24
	lsr r5, r0, #24
_080CB014:
	add r0, r5, #0
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080CAFB4

	THUMB_FUNC_START sub_080CB01C
sub_080CB01C: @ 0x080CB01C
	push {r4,lr}
	ldr r2, _080CB0B0  @ =gRam
	ldr r1, _080CB0B4  @ =0x00001627
	add r0, r2, r1
	mov r1, #0
	strb r1, [r0]
	ldr r3, _080CB0B8  @ =0x00001626
	add r0, r2, r3
	strb r1, [r0]
	add r3, r3, #36
	add r0, r2, r3
	strb r1, [r0]
	ldr r3, _080CB0BC  @ =0x0000177E
	add r0, r2, r3
	strb r1, [r0]
	ldr r3, _080CB0C0  @ =0x00001610
	add r0, r2, r3
	strb r1, [r0]
	ldr r3, _080CB0C4  @ =0x00000DA6
	add r0, r2, r3
	strb r1, [r0]
	ldr r3, _080CB0C8  @ =0x000015F7
	add r0, r2, r3
	strb r1, [r0]
	ldr r3, _080CB0CC  @ =0x00001898
	add r0, r2, r3
	strb r1, [r0]
	ldr r1, _080CB0D0  @ =0x00001663
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #13
	beq _080CB064
	ldr r3, _080CB0D4  @ =0x00000B5C
	add r1, r2, r3
	mov r0, #254
	strb r0, [r1]
_080CB064:
	ldr r1, _080CB0D8  @ =0x0FFF0000
	ldr r3, _080CB0DC  @ =gUnknown_02006B80
	mov r2, #0
_080CB06A:
	asr r1, r1, #16
	add r0, r1, r3
	strb r2, [r0]
	sub r1, r1, #1
	lsl r1, r1, #16
	cmp r1, #0
	bge _080CB06A
	ldr r1, _080CB0E0  @ =0x01FF0000
	ldr r3, _080CB0E4  @ =gUnknown_02007B80
	mov r2, #0
_080CB07E:
	asr r1, r1, #16
	add r0, r1, r3
	strb r2, [r0]
	sub r1, r1, #1
	lsl r1, r1, #16
	cmp r1, #0
	bge _080CB07E
	mov r1, #7
	ldr r4, _080CB0E8  @ =gRoomEnterId
	mov r3, #255
_080CB092:
	lsl r0, r1, #16
	asr r0, r0, #16
	add r2, r0, r4
	ldrb r1, [r2]
	orr r1, r1, r3
	strb r1, [r2]
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r0, #0
	bge _080CB092
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CB0B0:
	.4byte gRam
_080CB0B4:
	.4byte 0x00001627
_080CB0B8:
	.4byte 0x00001626
_080CB0BC:
	.4byte 0x0000177E
_080CB0C0:
	.4byte 0x00001610
_080CB0C4:
	.4byte 0x00000DA6
_080CB0C8:
	.4byte 0x000015F7
_080CB0CC:
	.4byte 0x00001898
_080CB0D0:
	.4byte 0x00001663
_080CB0D4:
	.4byte 0x00000B5C
_080CB0D8:
	.4byte 0x0FFF0000
_080CB0DC:
	.4byte gUnknown_02006B80
_080CB0E0:
	.4byte 0x01FF0000
_080CB0E4:
	.4byte gUnknown_02007B80
_080CB0E8:
	.4byte gRoomEnterId
	THUMB_FUNC_END sub_080CB01C

	THUMB_FUNC_START sub_080CB0EC
sub_080CB0EC: @ 0x080CB0EC
	push {r4-r7,lr}
	ldr r2, _080CB154  @ =gRam
	mov r1, #176
	lsl r1, r1, #5
	add r0, r2, r1
	mov r5, #0
	strb r5, [r0]
	mov r3, #171
	lsl r3, r3, #4
	add r4, r2, r3
	ldrh r3, [r4]
	mov r0, #7
	and r0, r0, r3
	lsl r0, r0, #1
	ldr r6, _080CB158  @ =0x00001601
	add r1, r2, r6
	strb r0, [r1]
	ldr r1, _080CB15C  @ =0x00001602
	add r0, r2, r1
	strb r5, [r0]
	mov r0, #63
	and r0, r0, r3
	lsr r0, r0, #2
	mov r1, #14
	and r0, r0, r1
	ldr r3, _080CB160  @ =0x00001603
	add r1, r2, r3
	strb r0, [r1]
	ldr r1, _080CB164  @ =gUnknown_081728AC
	ldrh r0, [r4]
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #8
	sub r6, r6, #5
	add r1, r2, r6
	strh r0, [r1]
	sub r3, r3, #5
	add r1, r2, r3
	strh r0, [r1]
	ldrh r0, [r4]
	add r6, r6, #98
	add r2, r2, r6
	ldrb r1, [r2]
	cmp r1, #2
	beq _080CB16C
	cmp r1, #2
	ble _080CB174
	cmp r1, #3
	bne _080CB174
	ldr r1, _080CB168  @ =gUnknown_082280B0
	b _080CB176
	.byte 0x00
	.byte 0x00
_080CB154:
	.4byte gRam
_080CB158:
	.4byte 0x00001601
_080CB15C:
	.4byte 0x00001602
_080CB160:
	.4byte 0x00001603
_080CB164:
	.4byte gUnknown_081728AC
_080CB168:
	.4byte gUnknown_082280B0
_080CB16C:
	ldr r1, _080CB170  @ =gUnknown_08227E70
	b _080CB176
_080CB170:
	.4byte gUnknown_08227E70
_080CB174:
	ldr r1, _080CB198  @ =gUnknown_08227D70
_080CB176:
	lsl r0, r0, #16
	asr r0, r0, #14
	add r0, r0, r1
	ldr r0, [r0]
	add r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #255
	beq _080CB1D4
	ldr r7, _080CB19C  @ =gUnknown_0300387A
_080CB188:
	ldrb r6, [r5, #2]
	cmp r6, #250
	bne _080CB1A0
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _080CB1CC
	.byte 0x00
	.byte 0x00
_080CB198:
	.4byte gUnknown_08227D70
_080CB19C:
	.4byte gUnknown_0300387A
_080CB1A0:
	ldrb r3, [r5]
	lsl r3, r3, #20
	lsr r4, r3, #16
	ldrb r1, [r5, #1]
	mov r2, #15
	and r2, r2, r1
	mov r0, #240
	and r4, r4, r0
	orr r2, r2, r4
	lsr r3, r3, #24
	lsl r3, r3, #2
	lsr r1, r1, #4
	orr r1, r1, r3
	lsl r1, r1, #24
	lsr r1, r1, #16
	add r2, r2, r1
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r0, _080CB1DC  @ =gUnknown_02006B80
	add r2, r2, r0
	add r0, r6, #1
	strb r0, [r2]
_080CB1CC:
	add r5, r5, #3
	ldrb r0, [r5]
	cmp r0, #255
	bne _080CB188
_080CB1D4:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CB1DC:
	.4byte gUnknown_02006B80
	THUMB_FUNC_END sub_080CB0EC

	THUMB_FUNC_START sub_080CB1E0
sub_080CB1E0: @ 0x080CB1E0
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r4, _080CB250  @ =gRam
	ldr r1, _080CB254  @ =0x00000E75
	add r0, r4, r1
	add r0, r2, r0
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _080CB206
	ldr r5, _080CB258  @ =0x000009B2
	add r0, r4, r5
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080CB270
_080CB206:
	ldr r1, _080CB25C  @ =0x00000FA2
	add r0, r4, r1
	add r0, r2, r0
	mov r1, #0
	strb r1, [r0]
	lsl r1, r2, #1
	ldr r2, _080CB260  @ =0x00001192
	add r0, r4, r2
	add r2, r1, r0
	ldrh r0, [r2]
	lsl r0, r0, #16
	lsr r1, r0, #16
	lsr r0, r0, #19
	ldr r5, _080CB264  @ =gUnknown_02007B80
	add r3, r0, r5
	ldr r5, _080CB268  @ =0x0000FFFF
	cmp r1, r5
	beq _080CB23A
	ldrh r1, [r2]
	mov r0, #7
	bic r0, r0, r1
	mov r1, #1
	lsl r1, r1, r0
	ldrb r0, [r3]
	bic r0, r0, r1
	strb r0, [r3]
_080CB23A:
	ldr r1, _080CB258  @ =0x000009B2
	add r0, r4, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080CB26C
	ldrh r1, [r2]
	add r0, r5, #0
	orr r0, r0, r1
	b _080CB26E
_080CB250:
	.4byte gRam
_080CB254:
	.4byte 0x00000E75
_080CB258:
	.4byte 0x000009B2
_080CB25C:
	.4byte 0x00000FA2
_080CB260:
	.4byte 0x00001192
_080CB264:
	.4byte gUnknown_02007B80
_080CB268:
	.4byte 0x0000FFFF
_080CB26C:
	mov r0, #255
_080CB26E:
	strh r0, [r2]
_080CB270:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CB1E0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CB278
sub_080CB278: @ 0x080CB278
	push {r4-r7,lr}
	bl sub_080CB374
	ldr r4, _080CB338  @ =gRam
	ldr r1, _080CB33C  @ =0x00001792
	add r0, r4, r1
	mov r1, #0
	strb r1, [r0]
	ldr r2, _080CB340  @ =0x00001791
	add r0, r4, r2
	strb r1, [r0]
	bl sub_080CAD30
	ldr r3, _080CB344  @ =0x000015FE
	add r1, r4, r3
	ldr r0, _080CB348  @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, _080CB34C  @ =0x000015FC
	add r4, r4, r0
	mov r0, #1
	neg r0, r0
	strh r0, [r4]
	mov r3, #0
_080CB2A6:
	ldr r6, _080CB338  @ =gRam
	ldr r1, _080CB350  @ =0x00000DAC
	add r1, r1, r6
	mov r12, r1
	add r0, r3, r1
	ldr r2, _080CB354  @ =0x00000B36
	add r1, r6, r2
	ldrh r7, [r1]
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080CB2CE
	add r0, r3, #1
	add r0, r0, r12
	lsr r1, r7, #8
	ldrb r2, [r0]
	mov r0, #255
	and r1, r1, r0
	cmp r2, r1
	beq _080CB32C
_080CB2CE:
	add r0, r3, #2
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, #6
	bls _080CB2A6
	ldr r3, _080CB358  @ =0x00000DB2
	add r1, r6, r3
	ldrb r5, [r1]
	ldr r0, _080CB35C  @ =0x00000DB3
	add r4, r6, r0
	ldrb r0, [r4]
	lsl r0, r0, #8
	orr r5, r5, r0
	sub r3, r3, #2
	add r2, r6, r3
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r0, _080CB360  @ =0x00000DB1
	add r3, r6, r0
	ldrb r0, [r3]
	strb r0, [r4]
	ldr r0, _080CB364  @ =0x00000DAE
	add r1, r6, r0
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r0, _080CB368  @ =0x00000DAF
	add r2, r6, r0
	ldrb r0, [r2]
	strb r0, [r3]
	mov r3, r12
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r0, _080CB36C  @ =0x00000DAD
	add r1, r6, r0
	ldrb r0, [r1]
	strb r0, [r2]
	strb r7, [r3]
	lsr r0, r7, #8
	strb r0, [r1]
	ldr r0, _080CB348  @ =0x0000FFFF
	cmp r5, r0
	beq _080CB32C
	lsl r0, r5, #1
	ldr r1, _080CB370  @ =gUnknown_02006B80
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0]
_080CB32C:
	bl sub_080CB5A0
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CB338:
	.4byte gRam
_080CB33C:
	.4byte 0x00001792
_080CB340:
	.4byte 0x00001791
_080CB344:
	.4byte 0x000015FE
_080CB348:
	.4byte 0x0000FFFF
_080CB34C:
	.4byte 0x000015FC
_080CB350:
	.4byte 0x00000DAC
_080CB354:
	.4byte 0x00000B36
_080CB358:
	.4byte 0x00000DB2
_080CB35C:
	.4byte 0x00000DB3
_080CB360:
	.4byte 0x00000DB1
_080CB364:
	.4byte 0x00000DAE
_080CB368:
	.4byte 0x00000DAF
_080CB36C:
	.4byte 0x00000DAD
_080CB370:
	.4byte gUnknown_02006B80
	THUMB_FUNC_END sub_080CB278

	THUMB_FUNC_START sub_080CB374
sub_080CB374: @ 0x080CB374
	push {r4-r6,lr}
	ldr r0, _080CB544  @ =gRam
	ldr r2, _080CB548  @ =0x000009B2
	add r1, r0, r2
	ldrb r2, [r1]
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r5, r0, #0
	cmp r1, #0
	bne _080CB38C
	b _080CB53E
_080CB38C:
	ldr r4, _080CB54C  @ =0x00001647
	add r0, r5, r4
	strb r2, [r0]
	mov r2, #15
	add r3, r5, #0
_080CB396:
	ldr r6, _080CB550  @ =0x0000144C
	add r0, r3, r6
	add r4, r2, r0
	mov r0, #0
	strb r0, [r4]
	ldr r0, _080CB554  @ =0x0000145C
	add r1, r3, r0
	add r1, r2, r1
	ldr r6, _080CB558  @ =0x00000FF2
	add r0, r3, r6
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CB55C  @ =0x0000146C
	add r1, r3, r0
	add r1, r2, r1
	ldr r6, _080CB560  @ =0x00000EE2
	add r0, r3, r6
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CB564  @ =0x000014AC
	add r1, r3, r0
	add r1, r2, r1
	add r6, r6, #176
	add r0, r3, r6
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CB568  @ =0x0000147C
	add r1, r3, r0
	add r1, r2, r1
	sub r6, r6, #144
	add r0, r3, r6
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CB56C  @ =0x0000148C
	add r1, r3, r0
	add r1, r2, r1
	sub r6, r6, #48
	add r0, r3, r6
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CB570  @ =0x0000149C
	add r1, r3, r0
	add r1, r2, r1
	add r6, r6, #32
	add r0, r3, r6
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080CB574  @ =0x000010D2
	add r0, r3, r1
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CB40E
	b _080CB536
_080CB40E:
	add r6, r6, #176
	add r0, r5, r6
	add r0, r2, r0
	ldrb r0, [r0]
	add r1, r0, #0
	cmp r1, #4
	bne _080CB41E
	b _080CB536
_080CB41E:
	cmp r1, #10
	bne _080CB424
	b _080CB536
_080CB424:
	strb r0, [r4]
	ldr r0, _080CB578  @ =0x000014BC
	add r1, r3, r0
	add r1, r2, r1
	ldr r4, _080CB57C  @ =0x00000F62
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r6, _080CB580  @ =0x000014CC
	add r1, r3, r6
	add r1, r2, r1
	ldr r4, _080CB584  @ =0x00001082
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #16
	add r1, r3, r6
	add r1, r2, r1
	add r4, r4, #160
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #16
	add r1, r3, r6
	add r1, r2, r1
	ldr r4, _080CB588  @ =0x00000D94
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #16
	add r1, r3, r6
	add r1, r2, r1
	ldr r4, _080CB58C  @ =0x00000FB2
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #16
	add r1, r3, r6
	add r1, r2, r1
	add r4, r4, #96
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #16
	add r1, r3, r6
	add r1, r2, r1
	add r4, r4, #224
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #16
	add r1, r3, r6
	add r1, r2, r1
	ldr r4, _080CB590  @ =0x00000F52
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #16
	add r1, r3, r6
	add r1, r2, r1
	add r4, r4, #224
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #16
	add r1, r3, r6
	add r1, r2, r1
	sub r4, r4, #192
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #16
	add r1, r3, r6
	add r1, r2, r1
	add r4, r4, #16
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #16
	add r1, r3, r6
	add r1, r2, r1
	add r4, r4, #224
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #16
	add r1, r3, r6
	add r1, r2, r1
	sub r4, r4, #16
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #16
	add r1, r3, r6
	add r1, r2, r1
	add r4, r4, #240
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #16
	add r1, r3, r6
	add r1, r2, r1
	ldr r4, _080CB594  @ =0x00000FC2
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #32
	add r1, r3, r6
	add r1, r2, r1
	ldr r4, _080CB598  @ =0x000013B2
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r6, r6, #16
	add r1, r3, r6
	add r1, r2, r1
	ldr r4, _080CB59C  @ =0x00001172
	add r0, r3, r4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
_080CB536:
	sub r2, r2, #1
	cmp r2, #0
	blt _080CB53E
	b _080CB396
_080CB53E:
	pop {r4-r6}
	pop {r0}
	bx r0
_080CB544:
	.4byte gRam
_080CB548:
	.4byte 0x000009B2
_080CB54C:
	.4byte 0x00001647
_080CB550:
	.4byte 0x0000144C
_080CB554:
	.4byte 0x0000145C
_080CB558:
	.4byte 0x00000FF2
_080CB55C:
	.4byte 0x0000146C
_080CB560:
	.4byte 0x00000EE2
_080CB564:
	.4byte 0x000014AC
_080CB568:
	.4byte 0x0000147C
_080CB56C:
	.4byte 0x0000148C
_080CB570:
	.4byte 0x0000149C
_080CB574:
	.4byte 0x000010D2
_080CB578:
	.4byte 0x000014BC
_080CB57C:
	.4byte 0x00000F62
_080CB580:
	.4byte 0x000014CC
_080CB584:
	.4byte 0x00001082
_080CB588:
	.4byte 0x00000D94
_080CB58C:
	.4byte 0x00000FB2
_080CB590:
	.4byte 0x00000F52
_080CB594:
	.4byte 0x00000FC2
_080CB598:
	.4byte 0x000013B2
_080CB59C:
	.4byte 0x00001172
	THUMB_FUNC_END sub_080CB374

	THUMB_FUNC_START sub_080CB5A0
sub_080CB5A0: @ 0x080CB5A0
	push {r4,r5,lr}
	ldr r3, _080CB610  @ =gUnknown_08228DF0
	ldr r2, _080CB614  @ =gRam
	ldr r0, _080CB618  @ =0x00000B36
	add r4, r2, r0
	ldrh r1, [r4]
	lsl r0, r1, #2
	add r0, r0, r3
	ldr r3, [r0]
	lsr r1, r1, #3
	mov r0, #254
	and r1, r1, r0
	ldr r5, _080CB61C  @ =0x000015F5
	add r0, r2, r5
	mov r5, #0
	strb r1, [r0]
	ldrb r1, [r4]
	mov r0, #15
	and r0, r0, r1
	lsl r0, r0, #1
	ldr r4, _080CB620  @ =0x000015F4
	add r1, r2, r4
	strb r0, [r1]
	ldr r1, _080CB624  @ =gUnknown_082293F0
	sub r3, r3, r1
	ldr r0, _080CB628  @ =0x00FFFFFF
	and r3, r3, r0
	add r4, r3, r1
	ldrb r1, [r4]
	ldr r3, _080CB62C  @ =0x000015F7
	add r0, r2, r3
	strb r1, [r0]
	ldr r0, _080CB630  @ =0x00000964
	add r1, r2, r0
	strb r5, [r1]
	ldr r3, _080CB634  @ =0x00000965
	add r2, r2, r3
	strb r5, [r2]
	add r4, r4, #1
	ldrb r0, [r4]
	cmp r0, #255
	beq _080CB60A
	add r5, r1, #0
_080CB5F6:
	add r0, r4, #0
	bl sub_080CB638
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	add r4, r4, #3
	ldrb r0, [r4]
	cmp r0, #255
	bne _080CB5F6
_080CB60A:
	pop {r4,r5}
	pop {r0}
	bx r0
_080CB610:
	.4byte gUnknown_08228DF0
_080CB614:
	.4byte gRam
_080CB618:
	.4byte 0x00000B36
_080CB61C:
	.4byte 0x000015F5
_080CB620:
	.4byte 0x000015F4
_080CB624:
	.4byte gUnknown_082293F0
_080CB628:
	.4byte 0x00FFFFFF
_080CB62C:
	.4byte 0x000015F7
_080CB630:
	.4byte 0x00000964
_080CB634:
	.4byte 0x00000965
	THUMB_FUNC_END sub_080CB5A0

	THUMB_FUNC_START sub_080CB638
sub_080CB638: @ 0x080CB638
	push {lr}
	add r2, r0, #0
	add r2, r2, #2
	ldrb r0, [r2]
	add r1, r0, #0
	cmp r1, #228
	bne _080CB684
	sub r2, r2, #2
	ldrb r0, [r2]
	add r2, r2, #2
	cmp r0, #254
	bne _080CB656
	bl sub_080CBDFC
	b _080CB6A8
_080CB656:
	cmp r0, #253
	beq _080CB664
	add r0, r2, #0
	mov r1, #228
	bl sub_080CB6B4
	b _080CB6A8
_080CB664:
	bl sub_080CBDFC
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080CB67C  @ =gRam
	ldr r2, _080CB680  @ =0x00000E85
	add r1, r1, r2
	add r0, r0, r1
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	b _080CB6A8
_080CB67C:
	.4byte gRam
_080CB680:
	.4byte 0x00000E85
_080CB684:
	sub r2, r2, #1
	ldrb r0, [r2]
	add r2, r2, #1
	cmp r0, #223
	bhi _080CB696
	add r0, r2, #0
	bl sub_080CB6B4
	b _080CB6A8
_080CB696:
	add r0, r2, #0
	bl sub_080CBE28
	ldr r1, _080CB6AC  @ =gRam
	ldr r0, _080CB6B0  @ =0x00000964
	add r1, r1, r0
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_080CB6A8:
	pop {r0}
	bx r0
_080CB6AC:
	.4byte gRam
_080CB6B0:
	.4byte 0x00000964
	THUMB_FUNC_END sub_080CB638

	THUMB_FUNC_START sub_080CB6B4
sub_080CB6B4: @ 0x080CB6B4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r7, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r4, r1, #0
	ldr r0, _080CB7B0  @ =gUnknown_08227C73
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #1
	mov r12, r0
	and r0, r0, r1
	ldr r6, _080CB7B4  @ =gRam
	cmp r0, #0
	bne _080CB6F2
	ldr r1, _080CB7B8  @ =0x00000B36
	add r0, r6, r1
	ldrh r0, [r0]
	lsl r0, r0, #1
	ldr r2, _080CB7BC  @ =gUnknown_02006B80
	add r0, r0, r2
	ldrb r0, [r0]
	ldr r5, _080CB7C0  @ =0x00000964
	add r1, r6, r5
	ldrb r1, [r1]
	asr r0, r0, r1
	mov r1, r12
	and r0, r0, r1
	cmp r0, #0
	bne _080CB7A6
_080CB6F2:
	ldr r2, _080CB7C0  @ =0x00000964
	add r0, r6, r2
	ldrb r3, [r0]
	sub r7, r7, #2
	ldr r5, _080CB7C4  @ =0x00000FA2
	add r0, r6, r5
	add r0, r3, r0
	mov r1, #0
	mov r8, r1
	mov r1, #8
	strb r1, [r0]
	ldrb r0, [r7]
	ldr r2, _080CB7C8  @ =gUnknown_03003829
	strb r0, [r2]
	ldr r5, _080CB7CC  @ =0x000010F2
	add r1, r6, r5
	add r1, r3, r1
	lsl r0, r0, #24
	lsr r0, r0, #31
	strb r0, [r1]
	ldr r0, _080CB7D0  @ =0x00000ED2
	add r1, r6, r0
	add r1, r3, r1
	ldrb r0, [r7]
	lsl r0, r0, #4
	strb r0, [r1]
	ldr r2, _080CB7D4  @ =0x00000EF2
	add r1, r6, r2
	add r1, r3, r1
	ldr r5, _080CB7D8  @ =0x000015F5
	add r2, r6, r5
	ldrb r0, [r7]
	lsr r0, r0, #4
	mov r5, r12
	and r0, r0, r5
	ldrb r2, [r2]
	add r0, r0, r2
	strb r0, [r1]
	add r7, r7, #1
	ldrb r1, [r7]
	ldr r0, _080CB7DC  @ =0x000015FA
	add r5, r6, r0
	strb r1, [r5]
	ldr r2, _080CB7E0  @ =0x00000EE2
	add r0, r6, r2
	add r0, r3, r0
	lsl r1, r1, #4
	strb r1, [r0]
	ldr r0, _080CB7E4  @ =0x00000F02
	add r1, r6, r0
	add r1, r3, r1
	ldr r0, _080CB7E8  @ =0x000015F4
	add r2, r6, r0
	ldrb r0, [r7]
	lsr r0, r0, #4
	mov r7, r12
	and r0, r0, r7
	ldrb r2, [r2]
	add r0, r0, r2
	strb r0, [r1]
	ldr r1, _080CB7EC  @ =0x00000FF2
	add r0, r6, r1
	add r0, r3, r0
	strb r4, [r0]
	ldr r7, _080CB7F0  @ =0x00001002
	add r2, r6, r7
	add r2, r3, r2
	mov r0, r8
	strb r0, [r2]
	ldr r1, _080CB7C8  @ =gUnknown_03003829
	ldrb r0, [r1]
	mov r1, #96
	and r1, r1, r0
	lsr r1, r1, #2
	ldr r7, _080CB7C8  @ =gUnknown_03003829
	strb r1, [r7]
	ldrb r0, [r5]
	lsr r0, r0, #5
	orr r1, r1, r0
	strb r1, [r2]
	lsl r0, r3, #1
	ldr r2, _080CB7F4  @ =0x00001192
	add r1, r6, r2
	add r0, r0, r1
	mov r1, #0
	strh r3, [r0]
	ldr r5, _080CB7F8  @ =0x00000E85
	add r0, r6, r5
	add r3, r3, r0
	strb r1, [r3]
_080CB7A6:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080CB7B0:
	.4byte gUnknown_08227C73
_080CB7B4:
	.4byte gRam
_080CB7B8:
	.4byte 0x00000B36
_080CB7BC:
	.4byte gUnknown_02006B80
_080CB7C0:
	.4byte 0x00000964
_080CB7C4:
	.4byte 0x00000FA2
_080CB7C8:
	.4byte gUnknown_03003829
_080CB7CC:
	.4byte 0x000010F2
_080CB7D0:
	.4byte 0x00000ED2
_080CB7D4:
	.4byte 0x00000EF2
_080CB7D8:
	.4byte 0x000015F5
_080CB7DC:
	.4byte 0x000015FA
_080CB7E0:
	.4byte 0x00000EE2
_080CB7E4:
	.4byte 0x00000F02
_080CB7E8:
	.4byte 0x000015F4
_080CB7EC:
	.4byte 0x00000FF2
_080CB7F0:
	.4byte 0x00001002
_080CB7F4:
	.4byte 0x00001192
_080CB7F8:
	.4byte 0x00000E85
	THUMB_FUNC_END sub_080CB6B4

	THUMB_FUNC_START sub_080CB7FC
sub_080CB7FC: @ 0x080CB7FC
	push {r4-r7,lr}
	lsl r1, r1, #24
	lsr r6, r1, #24
	ldr r7, _080CB890  @ =gRam
	ldr r1, _080CB894  @ =0x00000D1B
	add r4, r7, r1
	add r4, r6, r4
	ldrb r1, [r0]
	strb r1, [r4]
	sub r0, r0, #2
	ldr r3, _080CB898  @ =0x00000D5B
	add r2, r7, r3
	add r2, r6, r2
	ldrb r1, [r0]
	lsr r1, r1, #7
	strb r1, [r2]
	ldr r5, _080CB89C  @ =0x00000D33
	add r2, r7, r5
	add r2, r6, r2
	ldrb r1, [r0]
	lsl r1, r1, #4
	strb r1, [r2]
	ldr r1, _080CB8A0  @ =0x00000D3B
	add r3, r7, r1
	add r3, r6, r3
	ldr r2, _080CB8A4  @ =0x000015F5
	add r1, r7, r2
	ldrb r2, [r1]
	ldrb r1, [r0]
	lsr r1, r1, #4
	mov r5, #1
	mov r12, r5
	and r1, r1, r5
	add r2, r2, r1
	strb r2, [r3]
	add r0, r0, #1
	ldr r2, _080CB8A8  @ =0x00000D23
	add r1, r7, r2
	add r5, r6, r1
	ldrb r1, [r0]
	lsl r1, r1, #4
	strb r1, [r5]
	ldr r3, _080CB8AC  @ =0x00000D2B
	add r1, r7, r3
	add r1, r6, r1
	ldr r3, _080CB8B0  @ =0x000015F4
	add r2, r7, r3
	ldrb r0, [r0]
	lsr r0, r0, #4
	mov r3, r12
	and r0, r0, r3
	ldrb r2, [r2]
	add r0, r0, r2
	strb r0, [r1]
	add r0, r6, #0
	bl sub_080CBE5C
	ldrb r4, [r4]
	add r0, r4, #0
	sub r0, r0, #10
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _080CB882
	add r0, r4, #0
	cmp r0, #16
	bne _080CB8B8
_080CB882:
	ldr r5, _080CB8B4  @ =0x00000D4B
	add r0, r7, r5
	add r0, r6, r0
	mov r1, #160
	strb r1, [r0]
	b _080CB8CC
	.byte 0x00
	.byte 0x00
_080CB890:
	.4byte gRam
_080CB894:
	.4byte 0x00000D1B
_080CB898:
	.4byte 0x00000D5B
_080CB89C:
	.4byte 0x00000D33
_080CB8A0:
	.4byte 0x00000D3B
_080CB8A4:
	.4byte 0x000015F5
_080CB8A8:
	.4byte 0x00000D23
_080CB8AC:
	.4byte 0x00000D2B
_080CB8B0:
	.4byte 0x000015F4
_080CB8B4:
	.4byte 0x00000D4B
_080CB8B8:
	cmp r0, #3
	bne _080CB8CC
	ldr r1, _080CB8D4  @ =0x00000D4B
	add r0, r7, r1
	add r0, r6, r0
	mov r1, #255
	strb r1, [r0]
	ldrb r0, [r5]
	sub r0, r0, #8
	strb r0, [r5]
_080CB8CC:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CB8D4:
	.4byte 0x00000D4B
	THUMB_FUNC_END sub_080CB7FC

	THUMB_FUNC_START sub_080CB8D8
sub_080CB8D8: @ 0x080CB8D8
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, #69
	add r1, r4, #0
	mov r2, #0
	bl sub_080C9AAC
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r0, #0
	blt _080CB994
	ldr r1, _080CB908  @ =gRam
	ldr r2, _080CB90C  @ =0x00000FF2
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	add r5, r1, #0
	cmp r0, #53
	beq _080CB910
	cmp r0, #61
	bne _080CB914
	mov r6, #0
	b _080CB916
_080CB908:
	.4byte gRam
_080CB90C:
	.4byte 0x00000FF2
_080CB910:
	mov r6, #1
	b _080CB916
_080CB914:
	mov r6, #2
_080CB916:
	lsl r3, r3, #24
	asr r3, r3, #24
	ldr r7, _080CB99C  @ =0x00000EE2
	add r1, r5, r7
	add r1, r3, r1
	ldr r0, _080CB9A0  @ =gUnknown_0817296C
	add r0, r6, r0
	ldrb r0, [r0]
	mov r4, #0
	strb r0, [r1]
	ldr r0, _080CB9A4  @ =0x00000F02
	add r2, r5, r0
	add r2, r3, r2
	ldr r1, _080CB9A8  @ =gUnknown_0817296F
	add r1, r6, r1
	ldr r7, _080CB9AC  @ =0x00001601
	add r0, r5, r7
	ldrb r0, [r0]
	ldrb r1, [r1]
	add r0, r0, r1
	strb r0, [r2]
	ldr r0, _080CB9B0  @ =0x00000ED2
	add r1, r5, r0
	add r1, r3, r1
	ldr r0, _080CB9B4  @ =gUnknown_08172972
	add r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080CB9B8  @ =0x00000EF2
	add r2, r5, r1
	add r2, r3, r2
	ldr r1, _080CB9BC  @ =gUnknown_08172975
	add r1, r6, r1
	ldr r6, _080CB9C0  @ =0x00001603
	add r0, r5, r6
	ldrb r0, [r0]
	ldrb r1, [r1]
	add r0, r0, r1
	strb r0, [r2]
	ldr r7, _080CB9C4  @ =0x000010F2
	add r0, r5, r7
	add r0, r3, r0
	strb r4, [r0]
	ldr r1, _080CB9C8  @ =0x00001022
	add r0, r5, r1
	add r0, r3, r0
	mov r1, #4
	strb r1, [r0]
	ldr r2, _080CB9CC  @ =0x00000E75
	add r0, r5, r2
	add r0, r3, r0
	mov r1, #128
	strb r1, [r0]
	ldr r6, _080CB9D0  @ =0x000011B2
	add r0, r5, r6
	add r0, r3, r0
	mov r1, #144
	strb r1, [r0]
	add r7, r7, #48
	add r0, r5, r7
	add r3, r3, r0
	mov r0, #11
	strb r0, [r3]
_080CB994:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CB99C:
	.4byte 0x00000EE2
_080CB9A0:
	.4byte gUnknown_0817296C
_080CB9A4:
	.4byte 0x00000F02
_080CB9A8:
	.4byte gUnknown_0817296F
_080CB9AC:
	.4byte 0x00001601
_080CB9B0:
	.4byte 0x00000ED2
_080CB9B4:
	.4byte gUnknown_08172972
_080CB9B8:
	.4byte 0x00000EF2
_080CB9BC:
	.4byte gUnknown_08172975
_080CB9C0:
	.4byte 0x00001603
_080CB9C4:
	.4byte 0x000010F2
_080CB9C8:
	.4byte 0x00001022
_080CB9CC:
	.4byte 0x00000E75
_080CB9D0:
	.4byte 0x000011B2
	THUMB_FUNC_END sub_080CB8D8

	THUMB_FUNC_START sub_080CB9D4
sub_080CB9D4: @ 0x080CB9D4
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r4, _080CBA3C  @ =gRam
	ldr r1, _080CBA40  @ =0x000009B2
	add r0, r4, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080CBA36
	ldr r3, _080CBA44  @ =0x00000E75
	add r0, r4, r3
	add r0, r2, r0
	ldrb r1, [r0]
	mov r5, #1
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	bne _080CBA36
	lsl r0, r2, #1
	ldr r2, _080CBA48  @ =0x00001192
	add r1, r4, r2
	add r0, r0, r1
	ldrh r3, [r0]
	mov r0, #128
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	bne _080CBA36
	ldr r0, _080CBA4C  @ =0x00000964
	add r2, r4, r0
	strb r3, [r2]
	ldr r3, _080CBA50  @ =0x00000965
	add r0, r4, r3
	strb r1, [r0]
	ldr r1, _080CBA54  @ =0x00000B36
	add r0, r4, r1
	ldrh r1, [r0]
	lsl r1, r1, #1
	ldr r3, _080CBA58  @ =gUnknown_02006B80
	add r1, r1, r3
	add r0, r5, #0
	ldrb r2, [r2]
	lsl r0, r0, r2
	ldrb r2, [r1]
	orr r0, r0, r2
	strb r0, [r1]
_080CBA36:
	pop {r4,r5}
	pop {r0}
	bx r0
_080CBA3C:
	.4byte gRam
_080CBA40:
	.4byte 0x000009B2
_080CBA44:
	.4byte 0x00000E75
_080CBA48:
	.4byte 0x00001192
_080CBA4C:
	.4byte 0x00000964
_080CBA50:
	.4byte 0x00000965
_080CBA54:
	.4byte 0x00000B36
_080CBA58:
	.4byte gUnknown_02006B80
	THUMB_FUNC_END sub_080CB9D4

	THUMB_FUNC_START sub_080CBA5C
sub_080CBA5C: @ 0x080CBA5C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r3, #15
	ldr r4, _080CBAAC  @ =gRam
	ldr r0, _080CBAB0  @ =0x00000FF2
	add r0, r0, r4
	mov r9, r0
	mov r6, #0
	ldr r1, _080CBAB4  @ =0x00000FB1
	add r5, r4, r1
	ldr r2, _080CBAB8  @ =0x00000E65
	add r2, r2, r4
	mov r8, r2
	mov r7, #171
	lsl r7, r7, #4
	add r7, r7, r4
	mov r12, r7
	ldr r0, _080CBABC  @ =0x00000F72
	add r7, r4, r0
_080CBA86:
	ldrb r1, [r5]
	mov r2, r9
	add r0, r3, r2
	ldrb r2, [r0]
	add r0, r2, #0
	cmp r1, #0
	beq _080CBAE0
	cmp r1, #10
	beq _080CBAC0
	cmp r2, #108
	beq _080CBAE0
	mov r1, r8
	add r0, r3, r1
	ldrb r0, [r0]
	mov r2, r12
	ldrh r2, [r2]
	cmp r0, r2
	beq _080CBAE0
	b _080CBADE
_080CBAAC:
	.4byte gRam
_080CBAB0:
	.4byte 0x00000FF2
_080CBAB4:
	.4byte 0x00000FB1
_080CBAB8:
	.4byte 0x00000E65
_080CBABC:
	.4byte 0x00000F72
_080CBAC0:
	cmp r0, #236
	beq _080CBAE0
	cmp r0, #210
	beq _080CBAE0
	cmp r0, #11
	bne _080CBAD2
	add r0, r3, r7
	strb r6, [r0]
	b _080CBAE0
_080CBAD2:
	ldr r1, _080CBB24  @ =0x00001792
	add r0, r4, r1
	strb r6, [r0]
	ldr r2, _080CBB28  @ =0x00001791
	add r0, r4, r2
	strb r6, [r0]
_080CBADE:
	strb r6, [r5]
_080CBAE0:
	sub r5, r5, #1
	sub r3, r3, #1
	cmp r3, #0
	bge _080CBA86
	mov r3, #7
	ldr r2, _080CBB2C  @ =gUnknown_03002F4B
	mov r7, #189
	lsl r7, r7, #1
	add r6, r2, r7
	ldr r0, _080CBB30  @ =0xFFFFFD95
	add r5, r2, r0
	mov r4, #0
_080CBAF8:
	add r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _080CBB0C
	add r0, r3, r6
	ldrb r0, [r0]
	ldrh r7, [r5]
	cmp r0, r7
	beq _080CBB0C
	strb r4, [r1]
_080CBB0C:
	sub r3, r3, #1
	cmp r3, #0
	bge _080CBAF8
	bl sub_0811195C
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CBB24:
	.4byte 0x00001792
_080CBB28:
	.4byte 0x00001791
_080CBB2C:
	.4byte gUnknown_03002F4B
_080CBB30:
	.4byte 0xFFFFFD95
	THUMB_FUNC_END sub_080CBA5C

	THUMB_FUNC_START sub_080CBB34
sub_080CBB34: @ 0x080CBB34
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r2, #15
	ldr r5, _080CBBC8  @ =gRam
	ldr r0, _080CBBCC  @ =0x000015DC
	add r0, r0, r5
	mov r9, r0
	ldr r1, _080CBBD0  @ =0x00000FA2
	add r1, r1, r5
	mov r8, r1
	ldr r0, _080CBBD4  @ =0x00000E75
	add r0, r0, r5
	mov r12, r0
	ldr r1, _080CBBD8  @ =0x00000FF2
	add r7, r5, r1
_080CBB56:
	mov r0, r9
	ldrb r1, [r0]
	lsl r0, r2, #24
	asr r2, r0, #24
	add r6, r0, #0
	cmp r1, r2
	beq _080CBBB0
	mov r1, r8
	add r4, r2, r1
	ldrb r0, [r4]
	cmp r0, #0
	beq _080CBBB0
	mov r1, r12
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #0
	bne _080CBBB0
	add r0, r2, r7
	ldrb r0, [r0]
	cmp r0, #122
	beq _080CBBB0
	mov r0, #6
	strb r0, [r4]
	ldr r1, _080CBBDC  @ =0x00000FC2
	add r0, r5, r1
	add r0, r2, r0
	mov r1, #15
	strb r1, [r0]
	ldr r1, _080CBBE0  @ =0x00001032
	add r0, r5, r1
	add r0, r2, r0
	strb r3, [r0]
	ldr r1, _080CBBE4  @ =0x000011B2
	add r0, r5, r1
	add r0, r2, r0
	strb r3, [r0]
	ldr r1, _080CBBE8  @ =0x00001012
	add r0, r5, r1
	add r0, r2, r0
	mov r1, #3
	strb r1, [r0]
_080CBBB0:
	mov r1, #255
	lsl r1, r1, #24
	add r0, r6, r1
	lsr r2, r0, #24
	cmp r0, #0
	bge _080CBB56
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080CBBC8:
	.4byte gRam
_080CBBCC:
	.4byte 0x000015DC
_080CBBD0:
	.4byte 0x00000FA2
_080CBBD4:
	.4byte 0x00000E75
_080CBBD8:
	.4byte 0x00000FF2
_080CBBDC:
	.4byte 0x00000FC2
_080CBBE0:
	.4byte 0x00001032
_080CBBE4:
	.4byte 0x000011B2
_080CBBE8:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080CBB34

	THUMB_FUNC_START sub_080CBBEC
sub_080CBBEC: @ 0x080CBBEC
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r0, #74
	add r1, r5, #0
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080CBC42
	ldr r2, _080CBC4C  @ =gRam
	ldr r1, _080CBC50  @ =0x00000FA2
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #6
	strb r1, [r0]
	ldr r3, _080CBC54  @ =0x00000FD2
	add r0, r2, r3
	add r0, r4, r0
	mov r1, #31
	strb r1, [r0]
	ldr r1, _080CBC58  @ =0x00000F82
	add r0, r2, r1
	add r0, r4, r0
	mov r1, #3
	strb r1, [r0]
	add r3, r3, #64
	add r0, r2, r3
	add r0, r4, r0
	strb r1, [r0]
	ldr r0, _080CBC5C  @ =0x00001122
	add r2, r2, r0
	add r2, r4, r2
	mov r0, #4
	strb r0, [r2]
	add r0, r5, #0
	mov r1, #21
	bl sub_080CF0AC
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CAE50
_080CBC42:
	add r0, r4, #0
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080CBC4C:
	.4byte gRam
_080CBC50:
	.4byte 0x00000FA2
_080CBC54:
	.4byte 0x00000FD2
_080CBC58:
	.4byte 0x00000F82
_080CBC5C:
	.4byte 0x00001122
	THUMB_FUNC_END sub_080CBBEC

	THUMB_FUNC_START sub_080CBC60
sub_080CBC60: @ 0x080CBC60
	push {lr}
	ldr r1, _080CBC78  @ =gRam
	ldr r2, _080CBC7C  @ =0x000009AD
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CBC80
	bl sub_080CA988
	bl sub_080CA9F8
	b _080CBCA8
_080CBC78:
	.4byte gRam
_080CBC7C:
	.4byte 0x000009AD
_080CBC80:
	ldr r2, _080CBC94  @ =0x000015FB
	add r0, r1, r2
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080CBC98
	bl sub_080CA9F8
	b _080CBC9C
_080CBC94:
	.4byte 0x000015FB
_080CBC98:
	bl sub_080CA988
_080CBC9C:
	ldr r1, _080CBCAC  @ =gRam
	ldr r0, _080CBCB0  @ =0x000015FB
	add r1, r1, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080CBCA8:
	pop {r0}
	bx r0
_080CBCAC:
	.4byte gRam
_080CBCB0:
	.4byte 0x000015FB
	THUMB_FUNC_END sub_080CBC60

	THUMB_FUNC_START sub_080CBCB4
sub_080CBCB4: @ 0x080CBCB4
	push {lr}
	bl sub_080CB01C
	bl sub_080CB0EC
	bl sub_080CA934
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CBCB4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CBCC8
sub_080CBCC8: @ 0x080CBCC8
	push {lr}
	bl sub_080CAD30
	bl sub_080CBCB4
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CBCC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CBCD8
sub_080CBCD8: @ 0x080CBCD8
	push {lr}
	bl sub_080CAD30
	bl sub_080CB01C
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CBCD8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CBCE8
sub_080CBCE8: @ 0x080CBCE8
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, #11
	add r1, r6, #0
	bl sub_080CA538
	add r5, r0, #0
	cmp r5, #0
	blt _080CBD2C
	lsl r0, r5, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r4, _080CBD34  @ =gRam
	ldr r1, _080CBD38  @ =0x00000FA2
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #6
	strb r1, [r0]
	ldr r1, _080CBD3C  @ =0x00000FC2
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #15
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #20
	bl sub_080CF0AC
	ldr r0, _080CBD40  @ =0x000010F2
	add r4, r4, r0
	add r4, r5, r4
	mov r0, #2
	strb r0, [r4]
_080CBD2C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CBD34:
	.4byte gRam
_080CBD38:
	.4byte 0x00000FA2
_080CBD3C:
	.4byte 0x00000FC2
_080CBD40:
	.4byte 0x000010F2
	THUMB_FUNC_END sub_080CBCE8

	THUMB_FUNC_START sub_080CBD44
sub_080CBD44: @ 0x080CBD44
	push {r4,lr}
	lsl r1, r0, #16
	lsr r2, r1, #16
	ldr r3, _080CBD7C  @ =gUnknown_02006B80
	add r0, r2, r3
	ldrb r4, [r0]
	cmp r4, #0
	beq _080CBD76
	lsr r0, r1, #19
	ldr r1, _080CBD80  @ =gUnknown_02007B80
	add r3, r0, r1
	ldrb r1, [r3]
	mov r0, #7
	bic r0, r0, r2
	asr r1, r1, r0
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	bne _080CBD76
	sub r1, r4, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r3, #0
	bl sub_080CAAF8
_080CBD76:
	pop {r4}
	pop {r0}
	bx r0
_080CBD7C:
	.4byte gUnknown_02006B80
_080CBD80:
	.4byte gUnknown_02007B80
	THUMB_FUNC_END sub_080CBD44

	THUMB_FUNC_START sub_080CBD84
sub_080CBD84: @ 0x080CBD84
	push {r4-r6,lr}
	add r5, r0, #0
	lsl r1, r1, #24
	lsr r3, r1, #24
	lsl r2, r2, #16
	lsr r4, r2, #16
	mov r2, #7
	ldr r1, _080CBD98  @ =gRam
	b _080CBDA2
	.byte 0x00
	.byte 0x00
_080CBD98:
	.4byte gRam
_080CBD9C:
	sub r2, r2, #1
	cmp r2, #0
	blt _080CBDBC
_080CBDA2:
	ldr r6, _080CBDC4  @ =0x00000D1B
	add r0, r1, r6
	add r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080CBD9C
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r0, r5, #0
	add r1, r3, #0
	add r3, r4, #0
	bl sub_080CAC5C
_080CBDBC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CBDC4:
	.4byte 0x00000D1B
	THUMB_FUNC_END sub_080CBD84

	THUMB_FUNC_START sub_080CBDC8
sub_080CBDC8: @ 0x080CBDC8
	push {lr}
	mov r2, #1
	mov r0, #7
	ldr r3, _080CBDD4  @ =gUnknown_03002F4B
	b _080CBDDE
	.byte 0x00
	.byte 0x00
_080CBDD4:
	.4byte gUnknown_03002F4B
_080CBDD8:
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
_080CBDDE:
	lsl r0, r0, #24
	asr r1, r0, #24
	cmp r1, #0
	blt _080CBDF4
	add r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #21
	beq _080CBDF2
	cmp r0, #25
	bne _080CBDD8
_080CBDF2:
	mov r2, #0
_080CBDF4:
	add r0, r2, #0
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080CBDC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CBDFC
sub_080CBDFC: @ 0x080CBDFC
	ldr r1, _080CBE1C  @ =gRam
	ldr r0, _080CBE20  @ =0x00000964
	add r2, r1, r0
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	ldr r3, _080CBE24  @ =0x00000E85
	add r1, r1, r3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	bx lr
	.byte 0x00
	.byte 0x00
_080CBE1C:
	.4byte gRam
_080CBE20:
	.4byte 0x00000964
_080CBE24:
	.4byte 0x00000E85
	THUMB_FUNC_END sub_080CBDFC

	THUMB_FUNC_START sub_080CBE28
sub_080CBE28: @ 0x080CBE28
	push {r4,lr}
	add r2, r0, #0
	mov r1, #7
	ldr r3, _080CBE48  @ =gRam
_080CBE30:
	ldr r4, _080CBE4C  @ =0x00000D1B
	add r0, r3, r4
	add r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080CBE50
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r2, #0
	bl sub_080CB7FC
	b _080CBE56
_080CBE48:
	.4byte gRam
_080CBE4C:
	.4byte 0x00000D1B
_080CBE50:
	sub r1, r1, #1
	cmp r1, #0
	bge _080CBE30
_080CBE56:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CBE28

	THUMB_FUNC_START sub_080CBE5C
sub_080CBE5C: @ 0x080CBE5C
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080CBE94  @ =gRam
	ldr r1, _080CBE98  @ =0x00000E95
	add r3, r2, r1
	add r3, r0, r3
	mov r4, #171
	lsl r4, r4, #4
	add r1, r2, r4
	ldrh r1, [r1]
	mov r4, #0
	strb r1, [r3]
	ldr r3, _080CBE9C  @ =0x00000D4B
	add r1, r2, r3
	add r1, r0, r1
	strb r4, [r1]
	sub r3, r3, #8
	add r1, r2, r3
	add r1, r0, r1
	strb r4, [r1]
	ldr r1, _080CBEA0  @ =0x00000D53
	add r2, r2, r1
	add r0, r0, r2
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
_080CBE94:
	.4byte gRam
_080CBE98:
	.4byte 0x00000E95
_080CBE9C:
	.4byte 0x00000D4B
_080CBEA0:
	.4byte 0x00000D53
	THUMB_FUNC_END sub_080CBE5C

	THUMB_FUNC_START sub_080CBEA4
sub_080CBEA4: @ 0x080CBEA4
	push {r4-r7,lr}
	ldr r5, _080CBF6C  @ =gRam
	ldr r1, _080CBF70  @ =0x000009B2
	add r0, r5, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080CBF64
	ldr r2, _080CBF74  @ =0x0000164A
	add r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CBF64
	ldr r3, _080CBF78  @ =0x000009AD
	add r0, r5, r3
	sub r2, r2, #69
	add r1, r5, r2
	ldrb r2, [r0]
	ldrb r0, [r1]
	orr r0, r0, r2
	cmp r0, #0
	bne _080CBF64
	ldr r3, _080CBF7C  @ =0x0000164B
	add r0, r5, r3
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #63
	and r1, r1, r0
	cmp r1, #0
	bne _080CBF64
	ldr r0, _080CBF80  @ =0x00000958
	add r7, r5, r0
	ldrh r0, [r7]
	lsl r0, r0, #16
	asr r0, r0, #24
	ldr r2, _080CBF84  @ =0x00001603
	add r1, r5, r2
	ldrb r1, [r1]
	sub r0, r0, r1
	sub r0, r0, #2
	mov r1, #128
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _080CBF64
	mov r0, #194
	mov r1, #255
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080CBF64
	bl GetRandomInt
	mov r1, #127
	and r1, r1, r0
	ldr r3, _080CBF88  @ =0x00000952
	add r0, r5, r3
	ldrh r0, [r0]
	add r0, r0, #64
	add r1, r1, r0
	ldrh r2, [r7]
	sub r2, r2, #48
	ldr r3, _080CBF8C  @ =0x00000EE2
	add r0, r5, r3
	add r0, r4, r0
	strb r1, [r0]
	add r3, r3, #32
	add r0, r5, r3
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r1, _080CBF90  @ =0x00000ED2
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
	sub r3, r3, #16
	add r0, r5, r3
	add r0, r4, r0
	lsr r2, r2, #8
	strb r2, [r0]
	ldr r1, _080CBF94  @ =0x000010F2
	add r0, r5, r1
	add r0, r4, r0
	strb r6, [r0]
	ldr r2, _080CBF98  @ =0x00000FB2
	add r0, r5, r2
	add r0, r4, r0
	strb r6, [r0]
	ldr r3, _080CBF9C  @ =0x00001142
	add r0, r5, r3
	add r0, r4, r0
	strb r6, [r0]
_080CBF64:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CBF6C:
	.4byte gRam
_080CBF70:
	.4byte 0x000009B2
_080CBF74:
	.4byte 0x0000164A
_080CBF78:
	.4byte 0x000009AD
_080CBF7C:
	.4byte 0x0000164B
_080CBF80:
	.4byte 0x00000958
_080CBF84:
	.4byte 0x00001603
_080CBF88:
	.4byte 0x00000952
_080CBF8C:
	.4byte 0x00000EE2
_080CBF90:
	.4byte 0x00000ED2
_080CBF94:
	.4byte 0x000010F2
_080CBF98:
	.4byte 0x00000FB2
_080CBF9C:
	.4byte 0x00001142
	THUMB_FUNC_END sub_080CBEA4

	THUMB_FUNC_START sub_080CBFA0
sub_080CBFA0: @ 0x080CBFA0
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r1, _080CC04C  @ =gRam
	ldr r2, _080CC050  @ =0x000009B2
	add r0, r1, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r5, r1, #0
	cmp r0, #0
	bne _080CC046
	ldr r7, _080CC054  @ =0x00000996
	add r0, r5, r7
	ldrb r0, [r0]
	mov r4, #1
	add r3, r4, #0
	and r3, r3, r0
	ldr r0, _080CC058  @ =0x00000952
	add r2, r5, r0
	ldr r1, _080CC05C  @ =gUnknown_081729E4
	lsl r0, r3, #1
	add r0, r0, r1
	mov r7, #0
	ldrsh r1, [r2, r7]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r2, _080CC060  @ =0x00000D23
	add r0, r5, r2
	add r0, r6, r0
	ldrb r2, [r0]
	ldr r7, _080CC064  @ =0x00000D2B
	add r0, r5, r7
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	lsl r1, r1, #16
	asr r1, r1, #16
	sub r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #24
	add r2, r1, #0
	and r3, r3, r4
	cmp r3, #0
	beq _080CC000
	mov r0, #128
	eor r1, r1, r0
_080CC000:
	mov r0, #128
	and r1, r1, r0
	cmp r1, #0
	bne _080CC010
	add r1, r2, #0
	and r1, r1, r0
	cmp r1, #0
	beq _080CC046
_080CC010:
	ldr r1, _080CC068  @ =0x00000D1B
	add r0, r5, r1
	add r0, r6, r0
	mov r1, #0
	strb r1, [r0]
	lsl r1, r6, #1
	ldr r2, _080CC06C  @ =0x00000D64
	add r0, r5, r2
	add r0, r1, r0
	ldrh r0, [r0]
	lsr r0, r0, #3
	ldr r7, _080CC070  @ =gUnknown_02007B80
	add r3, r0, r7
	ldr r2, _080CC074  @ =0x00001192
	add r0, r5, r2
	add r2, r1, r0
	ldrh r1, [r2]
	ldr r0, _080CC078  @ =0x0000FFFF
	cmp r1, r0
	beq _080CC046
	mov r0, #7
	bic r0, r0, r1
	mov r1, #1
	lsl r1, r1, r0
	ldrb r0, [r3]
	bic r0, r0, r1
	strb r0, [r3]
_080CC046:
	pop {r4-r7}
	pop {r0}
	bx r0
_080CC04C:
	.4byte gRam
_080CC050:
	.4byte 0x000009B2
_080CC054:
	.4byte 0x00000996
_080CC058:
	.4byte 0x00000952
_080CC05C:
	.4byte gUnknown_081729E4
_080CC060:
	.4byte 0x00000D23
_080CC064:
	.4byte 0x00000D2B
_080CC068:
	.4byte 0x00000D1B
_080CC06C:
	.4byte 0x00000D64
_080CC070:
	.4byte gUnknown_02007B80
_080CC074:
	.4byte 0x00001192
_080CC078:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_080CBFA0

	THUMB_FUNC_START sub_080CC07C
sub_080CC07C: @ 0x080CC07C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r2, _080CC0BC  @ =gRam
	ldr r1, _080CC0C0  @ =0x00000D23
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r3, _080CC0C4  @ =0x00000D2B
	add r0, r2, r3
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldr r3, _080CC0C8  @ =0x00000952
	add r0, r2, r3
	ldrh r0, [r0]
	sub r1, r1, r0
	lsl r1, r1, #16
	mov r0, #255
	lsl r0, r0, #24
	and r0, r0, r1
	add r5, r2, #0
	cmp r0, #0
	beq _080CC0D0
	ldr r1, _080CC0CC  @ =0x00000D4B
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #255
	strb r1, [r0]
	b _080CC166
	.byte 0x00
	.byte 0x00
_080CC0BC:
	.4byte gRam
_080CC0C0:
	.4byte 0x00000D23
_080CC0C4:
	.4byte 0x00000D2B
_080CC0C8:
	.4byte 0x00000952
_080CC0CC:
	.4byte 0x00000D4B
_080CC0D0:
	ldr r2, _080CC138  @ =0x00000996
	add r0, r5, r2
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080CC0EE
	ldr r3, _080CC13C  @ =0x00000D4B
	add r0, r5, r3
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080CC0EE
	sub r0, r0, #1
	strb r0, [r1]
_080CC0EE:
	add r3, r5, #0
	ldr r1, _080CC140  @ =0x000015F9
	add r0, r3, r1
	mov r1, #0
	mov r7, #2
	strb r7, [r0]
	ldr r2, _080CC144  @ =0x000015FA
	add r6, r3, r2
	strb r1, [r6]
	ldr r1, _080CC148  @ =0x00000D43
	add r0, r3, r1
	add r2, r4, r0
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	mov r1, #255
	and r0, r0, r1
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080CC166
	mov r0, #56
	strb r0, [r2]
	ldr r2, _080CC13C  @ =0x00000D4B
	add r0, r3, r2
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080CC150
	mov r0, #160
	strb r0, [r1]
	strb r0, [r6]
	ldr r0, _080CC14C  @ =0x0000097C
	add r1, r3, r0
	mov r0, #8
	strb r0, [r1]
	b _080CC160
_080CC138:
	.4byte 0x00000996
_080CC13C:
	.4byte 0x00000D4B
_080CC140:
	.4byte 0x000015F9
_080CC144:
	.4byte 0x000015FA
_080CC148:
	.4byte 0x00000D43
_080CC14C:
	.4byte 0x0000097C
_080CC150:
	bl GetRandomInt
	add r1, r7, #0
	and r1, r1, r0
	lsl r1, r1, #3
	ldr r2, _080CC16C  @ =0x0000097C
	add r0, r5, r2
	strb r1, [r0]
_080CC160:
	add r0, r4, #0
	bl sub_080CC170
_080CC166:
	pop {r4-r7}
	pop {r0}
	bx r0
_080CC16C:
	.4byte 0x0000097C
	THUMB_FUNC_END sub_080CC07C

	THUMB_FUNC_START sub_080CC170
sub_080CC170: @ 0x080CC170
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r0, #80
	add r1, r7, #0
	bl sub_080CA538
	lsl r0, r0, #24
	mov r12, r0
	asr r5, r0, #24
	cmp r5, #0
	blt _080CC250
	ldr r4, _080CC258  @ =gRam
	ldr r1, _080CC25C  @ =0x00000969
	add r0, r4, r1
	ldrb r2, [r0]
	ldr r3, _080CC260  @ =0x0000096C
	add r0, r4, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r2, r2, r0
	add r1, r1, #19
	add r0, r4, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r2, r2, r0
	add r3, r3, #1
	add r0, r4, r3
	ldrb r1, [r0]
	add r3, r3, #3
	add r0, r4, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r1, r1, #1
	ldr r3, _080CC264  @ =0x00000EE2
	add r0, r4, r3
	add r0, r5, r0
	strb r2, [r0]
	add r3, r3, #32
	add r0, r4, r3
	add r0, r5, r0
	lsr r2, r2, #8
	strb r2, [r0]
	ldr r2, _080CC268  @ =0x00000ED2
	add r0, r4, r2
	add r6, r5, r0
	strb r1, [r6]
	sub r3, r3, #16
	add r0, r4, r3
	add r0, r5, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r0, _080CC26C  @ =0x00000F22
	add r1, r4, r0
	add r1, r5, r1
	ldr r2, _080CC270  @ =gUnknown_081729E8
	ldr r0, _080CC274  @ =0x000015F9
	add r3, r4, r0
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080CC278  @ =0x00000F12
	add r1, r4, r2
	add r1, r5, r1
	ldr r2, _080CC27C  @ =gUnknown_081729EC
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r3, _080CC280  @ =0x000010F2
	add r1, r4, r3
	add r1, r5, r1
	ldr r2, _080CC284  @ =0x00000D5B
	add r0, r4, r2
	add r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r3, _080CC288  @ =0x000015FA
	add r0, r4, r3
	ldrb r1, [r0]
	cmp r1, #0
	beq _080CC23C
	ldr r2, _080CC28C  @ =0x00000F52
	add r0, r4, r2
	add r0, r5, r0
	strb r1, [r0]
	ldrb r0, [r6]
	add r0, r0, #8
	strb r0, [r6]
	ldr r3, _080CC290  @ =0x00001012
	add r0, r4, r3
	add r0, r5, r0
	mov r1, #3
	strb r1, [r0]
	ldr r1, _080CC294  @ =0x00001132
	add r0, r4, r1
	add r0, r5, r0
	mov r1, #9
	strb r1, [r0]
_080CC23C:
	ldr r2, _080CC298  @ =0x00000FE2
	add r0, r4, r2
	add r0, r5, r0
	mov r1, #64
	strb r1, [r0]
	mov r3, r12
	lsr r0, r3, #24
	mov r1, #88
	bl sub_080CF140
_080CC250:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CC258:
	.4byte gRam
_080CC25C:
	.4byte 0x00000969
_080CC260:
	.4byte 0x0000096C
_080CC264:
	.4byte 0x00000EE2
_080CC268:
	.4byte 0x00000ED2
_080CC26C:
	.4byte 0x00000F22
_080CC270:
	.4byte gUnknown_081729E8
_080CC274:
	.4byte 0x000015F9
_080CC278:
	.4byte 0x00000F12
_080CC27C:
	.4byte gUnknown_081729EC
_080CC280:
	.4byte 0x000010F2
_080CC284:
	.4byte 0x00000D5B
_080CC288:
	.4byte 0x000015FA
_080CC28C:
	.4byte 0x00000F52
_080CC290:
	.4byte 0x00001012
_080CC294:
	.4byte 0x00001132
_080CC298:
	.4byte 0x00000FE2
	THUMB_FUNC_END sub_080CC170

	THUMB_FUNC_START sub_080CC29C
sub_080CC29C: @ 0x080CC29C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r7, r0, #0
	ldr r5, _080CC2C4  @ =gRam
	ldr r1, _080CC2C8  @ =0x00000D43
	add r0, r5, r1
	add r1, r7, r0
	ldrb r2, [r1]
	cmp r2, #0
	bne _080CC2D0
	ldr r3, _080CC2CC  @ =0x00000EC7
	add r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CC390
	add r0, r2, #1
	strb r0, [r1]
	b _080CC390
	.byte 0x00
	.byte 0x00
_080CC2C4:
	.4byte gRam
_080CC2C8:
	.4byte 0x00000D43
_080CC2CC:
	.4byte 0x00000EC7
_080CC2D0:
	add r0, r2, #1
	strb r0, [r1]
	ldr r1, _080CC398  @ =gUnknown_081729F0
	add r1, r7, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r1]
	cmp r0, r1
	bne _080CC390
	mov r0, #110
	add r1, r7, #0
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080CC390
	ldr r1, _080CC39C  @ =0x00000EE2
	add r0, r5, r1
	add r0, r4, r0
	ldr r2, _080CC3A0  @ =0x00000969
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r3, _080CC3A4  @ =0x00000F02
	add r0, r5, r3
	add r0, r4, r0
	add r2, r2, #3
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	sub r3, r3, #48
	add r0, r5, r3
	add r0, r4, r0
	add r2, r2, #1
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r3, r3, #32
	add r0, r5, r3
	add r0, r4, r0
	add r2, r2, #3
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r3, _080CC3A8  @ =0x00001142
	add r0, r5, r3
	add r0, r4, r0
	mov r1, #192
	strb r1, [r0]
	ldr r1, _080CC3AC  @ =0x00001062
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #12
	strb r1, [r0]
	ldr r2, _080CC3B0  @ =0x00001032
	add r1, r5, r2
	add r1, r4, r1
	ldrb r0, [r1]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1]
	sub r3, r3, #80
	add r1, r5, r3
	add r1, r4, r1
	ldr r2, _080CC3B4  @ =0x00000D5B
	add r0, r5, r2
	add r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	lsl r0, r4, #24
	lsr r6, r0, #24
	add r0, r6, #0
	mov r1, #108
	bl sub_080CF0AC
	ldr r3, _080CC3B8  @ =0x00000D1B
	add r0, r5, r3
	add r0, r7, r0
	ldrb r2, [r0]
	mov r1, #0
	strb r1, [r0]
	cmp r2, #27
	bne _080CC390
	ldr r1, _080CC3BC  @ =0x00000FF2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #74
	strb r1, [r0]
	add r0, r6, #0
	bl sub_080C2914
	ldr r2, _080CC3C0  @ =0x00000FD2
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #112
	strb r1, [r0]
_080CC390:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CC398:
	.4byte gUnknown_081729F0
_080CC39C:
	.4byte 0x00000EE2
_080CC3A0:
	.4byte 0x00000969
_080CC3A4:
	.4byte 0x00000F02
_080CC3A8:
	.4byte 0x00001142
_080CC3AC:
	.4byte 0x00001062
_080CC3B0:
	.4byte 0x00001032
_080CC3B4:
	.4byte 0x00000D5B
_080CC3B8:
	.4byte 0x00000D1B
_080CC3BC:
	.4byte 0x00000FF2
_080CC3C0:
	.4byte 0x00000FD2
	THUMB_FUNC_END sub_080CC29C

	THUMB_FUNC_START sub_080CC3C4
sub_080CC3C4: @ 0x080CC3C4
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r2, _080CC3F8  @ =gRam
	ldr r3, _080CC3FC  @ =0x00000D4B
	add r0, r2, r3
	add r4, r1, r0
	ldrb r5, [r4]
	add r3, r5, #0
	cmp r3, #0
	beq _080CC3DC
	b _080CC4D4
_080CC3DC:
	ldr r5, _080CC400  @ =0x00000D43
	add r0, r2, r5
	add r2, r1, r0
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #4
	beq _080CC404
	mov r0, #208
	strb r0, [r4]
	b _080CC408
	.byte 0x00
	.byte 0x00
_080CC3F8:
	.4byte gRam
_080CC3FC:
	.4byte 0x00000D4B
_080CC400:
	.4byte 0x00000D43
_080CC404:
	strb r3, [r2]
	strb r3, [r4]
_080CC408:
	mov r0, #133
	mov r2, #12
	bl sub_080C9AAC
	add r6, r0, #0
	cmp r6, #0
	blt _080CC4E6
	ldr r5, _080CC4AC  @ =gRam
	ldr r1, _080CC4B0  @ =0x000016D5
	add r0, r5, r1
	ldrb r3, [r0]
	lsr r3, r3, #1
	sub r1, r1, #17
	add r0, r5, r1
	ldrb r4, [r0]
	add r1, r1, #1
	add r0, r5, r1
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r1, r1, #8
	ldr r0, _080CC4B4  @ =gUnknown_081729F8
	add r0, r3, r0
	orr r4, r4, r1
	ldrb r0, [r0]
	add r4, r4, r0
	ldr r0, _080CC4B8  @ =gUnknown_08172A00
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r4, r4, r0
	mov r1, #182
	lsl r1, r1, #5
	add r0, r5, r1
	ldrb r2, [r0]
	add r1, r1, #1
	add r0, r5, r1
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r1, r1, #8
	ldr r0, _080CC4BC  @ =gUnknown_081729FC
	add r0, r3, r0
	orr r2, r2, r1
	ldrb r0, [r0]
	add r2, r2, r0
	ldr r0, _080CC4C0  @ =gUnknown_08172A04
	add r3, r3, r0
	ldrb r0, [r3]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r3, _080CC4C4  @ =0x00000EE2
	add r0, r5, r3
	add r0, r6, r0
	strb r4, [r0]
	ldr r1, _080CC4C8  @ =0x00000F02
	add r0, r5, r1
	add r0, r6, r0
	lsr r4, r4, #8
	strb r4, [r0]
	sub r3, r3, #16
	add r0, r5, r3
	add r0, r6, r0
	strb r2, [r0]
	sub r1, r1, #16
	add r0, r5, r1
	add r0, r6, r0
	lsr r2, r2, #8
	strb r2, [r0]
	ldr r3, _080CC4CC  @ =0x00001142
	add r0, r5, r3
	add r0, r6, r0
	mov r1, #144
	strb r1, [r0]
	ldr r1, _080CC4D0  @ =0x000010F2
	add r0, r5, r1
	add r0, r6, r0
	mov r3, #161
	lsl r3, r3, #4
	add r5, r5, r3
	ldrb r1, [r5]
	strb r1, [r0]
	b _080CC4E6
	.byte 0x00
	.byte 0x00
_080CC4AC:
	.4byte gRam
_080CC4B0:
	.4byte 0x000016D5
_080CC4B4:
	.4byte gUnknown_081729F8
_080CC4B8:
	.4byte gUnknown_08172A00
_080CC4BC:
	.4byte gUnknown_081729FC
_080CC4C0:
	.4byte gUnknown_08172A04
_080CC4C4:
	.4byte 0x00000EE2
_080CC4C8:
	.4byte 0x00000F02
_080CC4CC:
	.4byte 0x00001142
_080CC4D0:
	.4byte 0x000010F2
_080CC4D4:
	ldr r1, _080CC4EC  @ =0x00000996
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080CC4E6
	sub r0, r5, #1
	strb r0, [r4]
_080CC4E6:
	pop {r4-r6}
	pop {r0}
	bx r0
_080CC4EC:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080CC3C4

	THUMB_FUNC_START sub_080CC4F0
sub_080CC4F0: @ 0x080CC4F0
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080CC5D4  @ =gRam
	ldr r1, _080CC5D8  @ =0x00000D23
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	ldr r2, _080CC5DC  @ =0x00000D2B
	add r0, r4, r2
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _080CC5E0  @ =0x00000952
	add r0, r4, r3
	ldrh r0, [r0]
	sub r1, r1, r0
	mov r2, #255
	lsl r2, r2, #8
	and r1, r1, r2
	cmp r1, #0
	beq _080CC520
	b _080CC62A
_080CC520:
	ldr r1, _080CC5E4  @ =0x00000D33
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	ldr r3, _080CC5E8  @ =0x00000D3B
	add r0, r4, r3
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _080CC5EC  @ =0x00000958
	add r0, r4, r3
	ldrh r0, [r0]
	sub r3, r1, r0
	and r3, r3, r2
	cmp r3, #0
	bne _080CC62A
	ldr r1, _080CC5F0  @ =0x00000D43
	add r0, r4, r1
	add r1, r5, r0
	ldrb r2, [r1]
	cmp r2, #0
	beq _080CC61C
	add r0, r2, #1
	strb r0, [r1]
	ldr r1, _080CC5F4  @ =gUnknown_08172A08
	add r1, r5, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r1]
	cmp r0, r1
	bne _080CC62A
	ldr r2, _080CC5F8  @ =0x00000D1B
	add r0, r4, r2
	add r0, r5, r0
	strb r3, [r0]
	mov r0, #133
	add r1, r5, #0
	mov r2, #12
	bl sub_080C9AAC
	add r2, r0, #0
	cmp r2, #0
	blt _080CC62A
	ldr r3, _080CC5FC  @ =0x00000EE2
	add r0, r4, r3
	add r0, r2, r0
	ldr r3, _080CC600  @ =0x00000969
	add r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CC604  @ =0x00000F02
	add r0, r4, r1
	add r0, r2, r0
	add r3, r3, #3
	add r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CC608  @ =0x00000ED2
	add r0, r4, r1
	add r0, r2, r0
	add r3, r3, #1
	add r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CC60C  @ =0x00000EF2
	add r0, r4, r1
	add r0, r2, r0
	add r3, r3, #3
	add r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CC610  @ =0x00001142
	add r0, r4, r1
	add r0, r2, r0
	mov r1, #224
	strb r1, [r0]
	ldr r3, _080CC614  @ =0x000010F2
	add r1, r4, r3
	add r1, r2, r1
	ldr r2, _080CC618  @ =0x00000D5B
	add r0, r4, r2
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #108
	bl sub_080CF0AC
	b _080CC62A
_080CC5D4:
	.4byte gRam
_080CC5D8:
	.4byte 0x00000D23
_080CC5DC:
	.4byte 0x00000D2B
_080CC5E0:
	.4byte 0x00000952
_080CC5E4:
	.4byte 0x00000D33
_080CC5E8:
	.4byte 0x00000D3B
_080CC5EC:
	.4byte 0x00000958
_080CC5F0:
	.4byte 0x00000D43
_080CC5F4:
	.4byte gUnknown_08172A08
_080CC5F8:
	.4byte 0x00000D1B
_080CC5FC:
	.4byte 0x00000EE2
_080CC600:
	.4byte 0x00000969
_080CC604:
	.4byte 0x00000F02
_080CC608:
	.4byte 0x00000ED2
_080CC60C:
	.4byte 0x00000EF2
_080CC610:
	.4byte 0x00001142
_080CC614:
	.4byte 0x000010F2
_080CC618:
	.4byte 0x00000D5B
_080CC61C:
	ldr r3, _080CC630  @ =0x00000DBA
	add r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CC62A
	add r0, r2, #1
	strb r0, [r1]
_080CC62A:
	pop {r4,r5}
	pop {r0}
	bx r0
_080CC630:
	.4byte 0x00000DBA
	THUMB_FUNC_END sub_080CC4F0

	THUMB_FUNC_START sub_080CC634
sub_080CC634: @ 0x080CC634
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r3, _080CC6BC  @ =gRam
	ldr r1, _080CC6C0  @ =0x00000D23
	add r0, r3, r1
	add r0, r4, r0
	ldrb r0, [r0]
	mov r5, #150
	lsl r5, r5, #4
	add r2, r3, r5
	strb r0, [r2]
	ldr r6, _080CC6C4  @ =0x00000D2B
	add r0, r3, r6
	add r0, r4, r0
	ldrb r1, [r0]
	add r5, r5, #1
	add r0, r3, r5
	strb r1, [r0]
	add r6, r6, #8
	add r0, r3, r6
	add r0, r4, r0
	ldrb r0, [r0]
	ldr r1, _080CC6C8  @ =0x00000964
	add r5, r3, r1
	strb r0, [r5]
	add r6, r6, #8
	add r0, r3, r6
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r6, _080CC6CC  @ =0x00000965
	add r0, r3, r6
	strb r1, [r0]
	ldr r0, _080CC6D0  @ =0x000016C4
	add r1, r3, r0
	ldrh r0, [r2]
	ldrh r1, [r1]
	sub r0, r0, r1
	add r0, r0, #32
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #63
	bhi _080CC6B4
	mov r1, #182
	lsl r1, r1, #5
	add r0, r3, r1
	ldrh r1, [r5]
	ldrh r0, [r0]
	sub r1, r1, r0
	add r1, r1, #32
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #63
	bhi _080CC6B4
	ldr r5, _080CC6D4  @ =0x00000D1B
	add r0, r3, r5
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	ldr r6, _080CC6D8  @ =0x00000DBA
	add r1, r3, r6
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080CC6B4:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CC6BC:
	.4byte gRam
_080CC6C0:
	.4byte 0x00000D23
_080CC6C4:
	.4byte 0x00000D2B
_080CC6C8:
	.4byte 0x00000964
_080CC6CC:
	.4byte 0x00000965
_080CC6D0:
	.4byte 0x000016C4
_080CC6D4:
	.4byte 0x00000D1B
_080CC6D8:
	.4byte 0x00000DBA
	THUMB_FUNC_END sub_080CC634

	THUMB_FUNC_START sub_080CC6DC
sub_080CC6DC: @ 0x080CC6DC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r3, _080CC834  @ =gRam
	ldr r1, _080CC838  @ =0x00000D23
	add r0, r3, r1
	add r0, r7, r0
	ldrb r0, [r0]
	mov r4, #150
	lsl r4, r4, #4
	add r2, r3, r4
	strb r0, [r2]
	ldr r5, _080CC83C  @ =0x00000D2B
	add r0, r3, r5
	add r0, r7, r0
	ldrb r1, [r0]
	add r4, r4, #1
	add r0, r3, r4
	strb r1, [r0]
	add r5, r5, #8
	add r0, r3, r5
	add r0, r7, r0
	ldrb r0, [r0]
	ldr r1, _080CC840  @ =0x00000964
	add r4, r3, r1
	strb r0, [r4]
	add r5, r5, #8
	add r0, r3, r5
	add r0, r7, r0
	ldrb r1, [r0]
	ldr r5, _080CC844  @ =0x00000965
	add r0, r3, r5
	strb r1, [r0]
	ldr r0, _080CC848  @ =0x000016C4
	add r1, r3, r0
	ldrh r0, [r2]
	ldrh r1, [r1]
	sub r0, r0, r1
	add r0, r0, #24
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #47
	bhi _080CC82A
	mov r1, #182
	lsl r1, r1, #5
	add r0, r3, r1
	ldrh r1, [r4]
	ldrh r0, [r0]
	sub r1, r1, r0
	add r1, r1, #24
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #47
	bhi _080CC82A
	ldr r2, _080CC84C  @ =0x00000D1B
	add r0, r3, r2
	add r0, r7, r0
	mov r1, #0
	strb r1, [r0]
	mov r4, #3
	add r6, r3, #0
	ldr r5, _080CC850  @ =0x00000FB2
	add r5, r5, r6
	mov r8, r5
_080CC760:
	mov r0, #167
	add r1, r7, #0
	mov r2, #12
	bl sub_080C9AAC
	add r5, r0, #0
	lsl r4, r4, #24
	mov r12, r4
	cmp r5, #0
	blt _080CC81E
	ldr r1, _080CC848  @ =0x000016C4
	add r0, r6, r1
	ldrb r3, [r0]
	ldr r2, _080CC854  @ =0x000016C5
	add r0, r6, r2
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r1, r1, #8
	ldr r0, _080CC858  @ =gUnknown_08172A10
	asr r4, r4, #24
	add r0, r4, r0
	orr r3, r3, r1
	ldrb r0, [r0]
	add r3, r3, r0
	ldr r0, _080CC85C  @ =gUnknown_08172A14
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r3, r3, r0
	mov r1, #182
	lsl r1, r1, #5
	add r0, r6, r1
	ldrb r2, [r0]
	add r1, r1, #1
	add r0, r6, r1
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r1, r1, #8
	ldr r0, _080CC860  @ =gUnknown_08172A18
	add r0, r4, r0
	orr r2, r2, r1
	ldrb r0, [r0]
	add r2, r2, r0
	ldr r0, _080CC864  @ =gUnknown_08172A1C
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r1, _080CC868  @ =0x00000EE2
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
	ldr r2, _080CC86C  @ =0x00000FC2
	add r1, r6, r2
	add r1, r5, r1
	ldr r0, _080CC870  @ =gUnknown_08172A20
	add r4, r4, r0
	ldrb r0, [r4]
	strb r0, [r1]
	ldr r4, _080CC874  @ =0x000010F2
	add r1, r6, r4
	add r1, r5, r1
	ldr r2, _080CC878  @ =0x00000D5B
	add r0, r6, r2
	add r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	sub r4, r4, #144
	add r0, r6, r4
	add r0, r5, r0
	mov r1, #1
	strb r1, [r0]
	ldr r1, _080CC87C  @ =0x00001012
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #3
	strb r1, [r0]
	mov r2, r8
	add r1, r5, r2
	mov r0, #2
	strb r0, [r1]
_080CC81E:
	mov r0, #255
	lsl r0, r0, #24
	add r0, r0, r12
	lsr r4, r0, #24
	cmp r0, #0
	bge _080CC760
_080CC82A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080CC834:
	.4byte gRam
_080CC838:
	.4byte 0x00000D23
_080CC83C:
	.4byte 0x00000D2B
_080CC840:
	.4byte 0x00000964
_080CC844:
	.4byte 0x00000965
_080CC848:
	.4byte 0x000016C4
_080CC84C:
	.4byte 0x00000D1B
_080CC850:
	.4byte 0x00000FB2
_080CC854:
	.4byte 0x000016C5
_080CC858:
	.4byte gUnknown_08172A10
_080CC85C:
	.4byte gUnknown_08172A14
_080CC860:
	.4byte gUnknown_08172A18
_080CC864:
	.4byte gUnknown_08172A1C
_080CC868:
	.4byte 0x00000EE2
_080CC86C:
	.4byte 0x00000FC2
_080CC870:
	.4byte gUnknown_08172A20
_080CC874:
	.4byte 0x000010F2
_080CC878:
	.4byte 0x00000D5B
_080CC87C:
	.4byte 0x00001012
	THUMB_FUNC_END sub_080CC6DC

	THUMB_FUNC_START sub_080CC880
sub_080CC880: @ 0x080CC880
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r4, _080CC954  @ =gRam
	ldr r1, _080CC958  @ =0x00000D23
	add r0, r4, r1
	add r0, r0, r5
	mov r9, r0
	ldrb r1, [r0]
	ldr r2, _080CC95C  @ =0x00000D2B
	add r0, r4, r2
	add r0, r0, r5
	mov r10, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #8
	ldr r3, _080CC960  @ =0x00000952
	add r0, r4, r3
	ldrh r0, [r0]
	sub r1, r1, r0
	lsl r1, r1, #16
	mov r0, #255
	lsl r0, r0, #24
	and r0, r0, r1
	cmp r0, #0
	bne _080CC944
	ldr r1, _080CC964  @ =0x00000D33
	add r0, r4, r1
	add r7, r5, r0
	ldrb r1, [r7]
	add r2, r2, #16
	add r0, r4, r2
	add r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #80
	add r3, r3, #6
	add r0, r4, r3
	ldrh r0, [r0]
	sub r1, r1, r0
	lsl r1, r1, #16
	ldr r0, _080CC968  @ =0x017F0000
	cmp r1, r0
	bhi _080CC944
	ldr r1, _080CC96C  @ =0x00000996
	add r0, r4, r1
	ldrb r0, [r0]
	mov r6, #15
	add r1, r6, #0
	and r1, r1, r0
	cmp r1, #0
	bne _080CC944
	ldr r2, _080CC970  @ =0x0000097C
	add r0, r4, r2
	strb r1, [r0]
	ldr r3, _080CC974  @ =0x000015FA
	add r0, r4, r3
	strb r1, [r0]
	bl GetRandomInt
	add r1, r6, #0
	and r1, r1, r0
	ldr r0, _080CC978  @ =gUnknown_08172A24
	add r0, r1, r0
	ldrb r2, [r0]
	ldr r3, _080CC97C  @ =0x000015F9
	add r0, r4, r3
	strb r2, [r0]
	ldr r0, _080CC980  @ =gUnknown_08172A34
	add r0, r1, r0
	ldrb r0, [r0]
	mov r2, r9
	strb r0, [r2]
	sub r3, r3, #5
	add r0, r4, r3
	ldrb r0, [r0]
	mov r2, r10
	strb r0, [r2]
	ldr r0, _080CC984  @ =gUnknown_08172A44
	add r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r7]
	add r3, r3, #1
	add r0, r4, r3
	ldrb r0, [r0]
	add r0, r0, #1
	mov r1, r8
	strb r0, [r1]
	add r0, r5, #0
	bl sub_080CC170
_080CC944:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CC954:
	.4byte gRam
_080CC958:
	.4byte 0x00000D23
_080CC95C:
	.4byte 0x00000D2B
_080CC960:
	.4byte 0x00000952
_080CC964:
	.4byte 0x00000D33
_080CC968:
	.4byte 0x017F0000
_080CC96C:
	.4byte 0x00000996
_080CC970:
	.4byte 0x0000097C
_080CC974:
	.4byte 0x000015FA
_080CC978:
	.4byte gUnknown_08172A24
_080CC97C:
	.4byte 0x000015F9
_080CC980:
	.4byte gUnknown_08172A34
_080CC984:
	.4byte gUnknown_08172A44
	THUMB_FUNC_END sub_080CC880

	THUMB_FUNC_START sub_080CC988
sub_080CC988: @ 0x080CC988
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r6, _080CCA04  @ =gRam
	ldr r1, _080CCA08  @ =0x00000D23
	add r0, r6, r1
	add r0, r5, r0
	ldrb r1, [r0]
	ldr r2, _080CCA0C  @ =0x00000D2B
	add r0, r6, r2
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #8
	ldr r2, _080CCA10  @ =0x00000952
	add r0, r6, r2
	ldrh r0, [r0]
	sub r1, r1, r0
	lsl r1, r1, #16
	mov r0, #255
	lsl r0, r0, #24
	and r0, r0, r1
	lsr r7, r0, #16
	cmp r7, #0
	bne _080CCA54
	ldr r1, _080CCA14  @ =0x00000D33
	add r0, r6, r1
	add r0, r5, r0
	ldrb r1, [r0]
	ldr r2, _080CCA18  @ =0x00000D3B
	add r0, r6, r2
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #80
	ldr r2, _080CCA1C  @ =0x00000958
	add r0, r6, r2
	ldrh r0, [r0]
	sub r1, r1, r0
	lsl r1, r1, #16
	ldr r0, _080CCA20  @ =0x017F0000
	cmp r1, r0
	bhi _080CCA54
	ldr r1, _080CCA24  @ =0x00000D4B
	add r0, r6, r1
	add r4, r5, r0
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #128
	bne _080CCA54
	add r0, r5, #0
	bl sub_080CCA5C
	cmp r0, #0
	bge _080CCA28
	mov r0, #129
	b _080CCA52
_080CCA04:
	.4byte gRam
_080CCA08:
	.4byte 0x00000D23
_080CCA0C:
	.4byte 0x00000D2B
_080CCA10:
	.4byte 0x00000952
_080CCA14:
	.4byte 0x00000D33
_080CCA18:
	.4byte 0x00000D3B
_080CCA1C:
	.4byte 0x00000958
_080CCA20:
	.4byte 0x017F0000
_080CCA24:
	.4byte 0x00000D4B
_080CCA28:
	ldr r2, _080CCA48  @ =0x00000D43
	add r1, r6, r2
	add r1, r5, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #22
	bne _080CCA50
	ldr r1, _080CCA4C  @ =0x00000D1B
	add r0, r6, r1
	add r0, r5, r0
	strb r7, [r0]
	b _080CCA54
	.byte 0x00
	.byte 0x00
_080CCA48:
	.4byte 0x00000D43
_080CCA4C:
	.4byte 0x00000D1B
_080CCA50:
	mov r0, #224
_080CCA52:
	strb r0, [r4]
_080CCA54:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CC988

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CCA5C
sub_080CCA5C: @ 0x080CCA5C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r7, r0, #24
	mov r0, #148
	add r1, r7, #0
	bl sub_080CA538
	add r6, r0, #0
	cmp r6, #0
	blt _080CCB0A
	ldr r2, _080CCB14  @ =gRam
	ldr r1, _080CCB18  @ =0x00000D43
	add r0, r2, r1
	add r0, r7, r0
	ldrb r3, [r0]
	ldr r1, _080CCB1C  @ =0x00001062
	add r0, r2, r1
	add r0, r6, r0
	mov r4, #0
	mov r5, #1
	strb r5, [r0]
	ldr r0, _080CCB20  @ =0x00000EE2
	add r1, r2, r0
	add r1, r6, r1
	ldr r0, _080CCB24  @ =gUnknown_08172A54
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CCB28  @ =0x00000ED2
	add r1, r2, r0
	add r1, r6, r1
	ldr r0, _080CCB2C  @ =gUnknown_08172A6A
	add r3, r3, r0
	ldrb r0, [r3]
	sub r0, r0, #8
	strb r0, [r1]
	ldr r3, _080CCB30  @ =0x00000EF2
	add r1, r2, r3
	add r1, r6, r1
	ldr r3, _080CCB34  @ =0x00000D3B
	add r0, r2, r3
	add r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CCB38  @ =0x00000F02
	add r1, r2, r0
	add r1, r6, r1
	sub r3, r3, #16
	add r0, r2, r3
	add r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CCB3C  @ =0x000010F2
	add r1, r2, r0
	add r1, r6, r1
	add r3, r3, #48
	add r0, r2, r3
	add r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r7, _080CCB40  @ =0x00001022
	add r1, r2, r7
	add r1, r6, r1
	mov r3, #4
	strb r3, [r1]
	ldr r7, _080CCB44  @ =0x000011B2
	add r0, r2, r7
	add r0, r6, r0
	strb r4, [r0]
	strb r4, [r1]
	ldr r1, _080CCB48  @ =0x00000E75
	add r0, r2, r1
	add r0, r6, r0
	mov r1, #8
	strb r1, [r0]
	ldr r7, _080CCB4C  @ =0x00001012
	add r0, r2, r7
	add r0, r6, r0
	strb r3, [r0]
	ldr r1, _080CCB50  @ =0x00001122
	add r0, r2, r1
	add r0, r6, r0
	strb r5, [r0]
	ldr r7, _080CCB54  @ =0x00000EA5
	add r2, r2, r7
	add r2, r6, r2
	strb r3, [r2]
_080CCB0A:
	add r0, r6, #0
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080CCB14:
	.4byte gRam
_080CCB18:
	.4byte 0x00000D43
_080CCB1C:
	.4byte 0x00001062
_080CCB20:
	.4byte 0x00000EE2
_080CCB24:
	.4byte gUnknown_08172A54
_080CCB28:
	.4byte 0x00000ED2
_080CCB2C:
	.4byte gUnknown_08172A6A
_080CCB30:
	.4byte 0x00000EF2
_080CCB34:
	.4byte 0x00000D3B
_080CCB38:
	.4byte 0x00000F02
_080CCB3C:
	.4byte 0x000010F2
_080CCB40:
	.4byte 0x00001022
_080CCB44:
	.4byte 0x000011B2
_080CCB48:
	.4byte 0x00000E75
_080CCB4C:
	.4byte 0x00001012
_080CCB50:
	.4byte 0x00001122
_080CCB54:
	.4byte 0x00000EA5
	THUMB_FUNC_END sub_080CCA5C

	THUMB_FUNC_START sub_080CCB58
sub_080CCB58: @ 0x080CCB58
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r7, _080CCC14  @ =gRam
	ldr r1, _080CCC18  @ =0x00000D4B
	add r0, r7, r1
	add r1, r6, r0
	ldrb r2, [r1]
	mov r8, r2
	cmp r2, #0
	bne _080CCC4C
	mov r0, #16
	strb r0, [r1]
	add r0, r6, #0
	bl sub_080CCCDC
	ldr r2, _080CCC1C  @ =0x00000D43
	add r0, r7, r2
	add r3, r6, r0
	ldrb r1, [r3]
	add r1, r1, #1
	strb r1, [r3]
	ldr r5, _080CCC20  @ =0x00000D1B
	add r0, r7, r5
	add r4, r6, r0
	ldrb r0, [r4]
	sub r0, r0, #10
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r2, _080CCC24  @ =gUnknown_08172B1C
	lsl r0, r5, #2
	add r0, r0, r2
	ldr r2, [r0]
	ldr r0, _080CCC28  @ =gUnknown_08172B14
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r1, r1, #24
	lsr r1, r1, #24
	cmp r0, r1
	bne _080CCBB0
	mov r0, r8
	strb r0, [r4]
_080CCBB0:
	ldrb r0, [r3]
	add r0, r0, r2
	sub r0, r0, #1
	ldrb r5, [r0]
	ldr r1, _080CCC2C  @ =0x00000D23
	add r4, r7, r1
	add r4, r6, r4
	ldrb r1, [r4]
	ldr r2, _080CCC30  @ =0x00000D2B
	add r3, r7, r2
	add r3, r6, r3
	ldrb r2, [r3]
	lsl r2, r2, #8
	ldr r0, _080CCC34  @ =gUnknown_08172B04
	add r0, r5, r0
	orr r1, r1, r2
	ldrb r0, [r0]
	add r1, r1, r0
	ldr r0, _080CCC38  @ =gUnknown_08172B08
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	strb r1, [r4]
	lsr r1, r1, #8
	strb r1, [r3]
	ldr r3, _080CCC3C  @ =0x00000D33
	add r4, r7, r3
	add r4, r6, r4
	ldrb r1, [r4]
	ldr r0, _080CCC40  @ =0x00000D3B
	add r3, r7, r0
	add r3, r6, r3
	ldrb r2, [r3]
	lsl r2, r2, #8
	ldr r0, _080CCC44  @ =gUnknown_08172B0C
	add r0, r5, r0
	orr r1, r1, r2
	ldrb r0, [r0]
	add r1, r1, r0
	ldr r0, _080CCC48  @ =gUnknown_08172B10
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	strb r1, [r4]
	lsr r1, r1, #8
	strb r1, [r3]
	b _080CCCD0
	.byte 0x00
	.byte 0x00
_080CCC14:
	.4byte gRam
_080CCC18:
	.4byte 0x00000D4B
_080CCC1C:
	.4byte 0x00000D43
_080CCC20:
	.4byte 0x00000D1B
_080CCC24:
	.4byte gUnknown_08172B1C
_080CCC28:
	.4byte gUnknown_08172B14
_080CCC2C:
	.4byte 0x00000D23
_080CCC30:
	.4byte 0x00000D2B
_080CCC34:
	.4byte gUnknown_08172B04
_080CCC38:
	.4byte gUnknown_08172B08
_080CCC3C:
	.4byte 0x00000D33
_080CCC40:
	.4byte 0x00000D3B
_080CCC44:
	.4byte gUnknown_08172B0C
_080CCC48:
	.4byte gUnknown_08172B10
_080CCC4C:
	ldr r3, _080CCCAC  @ =0x00000D53
	add r0, r7, r3
	add r4, r6, r0
	ldrb r3, [r4]
	cmp r3, #0
	bne _080CCCCC
	ldr r5, _080CCCB0  @ =0x00000D23
	add r0, r7, r5
	add r0, r6, r0
	ldrb r1, [r0]
	ldr r2, _080CCCB4  @ =0x00000D2B
	add r0, r7, r2
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r5, _080CCCB8  @ =0x00000952
	add r0, r7, r5
	ldrh r0, [r0]
	sub r1, r1, r0
	ldr r0, _080CCCBC  @ =0xFFFFFF00
	add r2, r0, #0
	and r1, r1, r2
	lsl r1, r1, #16
	cmp r1, #0
	bne _080CCCD0
	ldr r1, _080CCCC0  @ =0x00000D33
	add r0, r7, r1
	add r0, r6, r0
	ldrb r1, [r0]
	ldr r5, _080CCCC4  @ =0x00000D3B
	add r0, r7, r5
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r5, _080CCCC8  @ =0x00000958
	add r0, r7, r5
	ldrh r0, [r0]
	sub r1, r1, r0
	and r1, r1, r2
	lsl r1, r1, #16
	cmp r1, #0
	bne _080CCCD0
	add r0, r3, #1
	strb r0, [r4]
	b _080CCCD0
	.byte 0x00
	.byte 0x00
_080CCCAC:
	.4byte 0x00000D53
_080CCCB0:
	.4byte 0x00000D23
_080CCCB4:
	.4byte 0x00000D2B
_080CCCB8:
	.4byte 0x00000952
_080CCCBC:
	.4byte 0xFFFFFF00
_080CCCC0:
	.4byte 0x00000D33
_080CCCC4:
	.4byte 0x00000D3B
_080CCCC8:
	.4byte 0x00000958
_080CCCCC:
	sub r0, r2, #1
	strb r0, [r1]
_080CCCD0:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CCB58

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CCCDC
sub_080CCCDC: @ 0x080CCCDC
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	mov r1, #29
	ldr r5, _080CCD60  @ =gRam
_080CCCE6:
	lsl r0, r1, #24
	asr r4, r0, #24
	ldr r1, _080CCD64  @ =0x000011D2
	add r0, r5, r1
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080CCD88
	mov r0, #3
	strb r0, [r1]
	ldr r6, _080CCD68  @ =0x0000122C
	add r3, r5, r6
	add r3, r4, r3
	ldr r1, _080CCD6C  @ =0x00000D23
	add r0, r5, r1
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r3]
	add r6, r6, #60
	add r1, r5, r6
	add r1, r4, r1
	ldr r6, _080CCD70  @ =0x00000D2B
	add r0, r5, r6
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080CCD74  @ =0x00000D33
	add r0, r5, r1
	add r0, r2, r0
	ldrb r1, [r0]
	add r6, r6, #16
	add r0, r5, r6
	add r0, r2, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #16
	ldr r0, _080CCD78  @ =0x0000120E
	add r2, r5, r0
	add r2, r4, r2
	strb r1, [r2]
	ldr r6, _080CCD7C  @ =0x0000124A
	add r0, r5, r6
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldrb r0, [r3]
	ldrb r1, [r2]
	mov r2, #109
	bl sub_080CF244
	ldr r1, _080CCD80  @ =0x000012FE
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #31
	strb r1, [r0]
	ldr r2, _080CCD84  @ =0x000015F8
	add r0, r5, r2
	strb r1, [r0]
	b _080CCD92
	.byte 0x00
	.byte 0x00
_080CCD60:
	.4byte gRam
_080CCD64:
	.4byte 0x000011D2
_080CCD68:
	.4byte 0x0000122C
_080CCD6C:
	.4byte 0x00000D23
_080CCD70:
	.4byte 0x00000D2B
_080CCD74:
	.4byte 0x00000D33
_080CCD78:
	.4byte 0x0000120E
_080CCD7C:
	.4byte 0x0000124A
_080CCD80:
	.4byte 0x000012FE
_080CCD84:
	.4byte 0x000015F8
_080CCD88:
	sub r0, r4, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r0, #0
	bge _080CCCE6
_080CCD92:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CCCDC

	THUMB_FUNC_START sub_080CCD98
sub_080CCD98: @ 0x080CCD98
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r5, _080CCE1C  @ =gRam
	ldr r2, _080CCE20  @ =0x00000D4B
	add r0, r5, r2
	add r2, r1, r0
	ldrb r3, [r2]
	cmp r3, #128
	bne _080CCE40
	mov r0, #127
	strb r0, [r2]
	mov r0, #144
	mov r2, #12
	bl sub_080C9AAC
	add r4, r0, #0
	cmp r4, #0
	blt _080CCE52
	ldr r1, _080CCE24  @ =0x00000EE2
	add r0, r5, r1
	add r0, r4, r0
	ldr r2, _080CCE28  @ =0x000016C4
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CCE2C  @ =0x00000F02
	add r0, r5, r1
	add r0, r4, r0
	add r2, r2, #1
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CCE30  @ =0x00000ED2
	add r0, r5, r1
	add r0, r4, r0
	sub r2, r2, #5
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CCE34  @ =0x00000EF2
	add r0, r5, r1
	add r0, r4, r0
	add r2, r2, #1
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CCE38  @ =0x00001142
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #208
	strb r1, [r0]
	lsl r0, r4, #24
	lsr r0, r0, #24
	mov r1, #108
	bl sub_080CF0AC
	ldr r2, _080CCE3C  @ =0x000010F2
	add r0, r5, r2
	add r0, r4, r0
	mov r2, #161
	lsl r2, r2, #4
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	b _080CCE52
_080CCE1C:
	.4byte gRam
_080CCE20:
	.4byte 0x00000D4B
_080CCE24:
	.4byte 0x00000EE2
_080CCE28:
	.4byte 0x000016C4
_080CCE2C:
	.4byte 0x00000F02
_080CCE30:
	.4byte 0x00000ED2
_080CCE34:
	.4byte 0x00000EF2
_080CCE38:
	.4byte 0x00001142
_080CCE3C:
	.4byte 0x000010F2
_080CCE40:
	ldr r1, _080CCE58  @ =0x00000996
	add r0, r5, r1
	ldrb r1, [r0]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080CCE52
	sub r0, r3, #1
	strb r0, [r2]
_080CCE52:
	pop {r4,r5}
	pop {r0}
	bx r0
_080CCE58:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080CCD98

	THUMB_FUNC_START sub_080CCE5C
sub_080CCE5C: @ 0x080CCE5C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r6, _080CCE94  @ =gRam
	ldr r1, _080CCE98  @ =0x00000FA2
	add r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #4
	beq _080CCF00
	ldr r2, _080CCE9C  @ =0x00000D43
	add r0, r6, r2
	add r7, r4, r0
	ldrb r1, [r7]
	cmp r1, #0
	beq _080CCEA4
	ldr r0, _080CCEA0  @ =0x00000D4B
	add r1, r6, r0
	add r1, r4, r1
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _080CCF14
	strb r0, [r7]
	b _080CCF14
	.byte 0x00
	.byte 0x00
_080CCE94:
	.4byte gRam
_080CCE98:
	.4byte 0x00000FA2
_080CCE9C:
	.4byte 0x00000D43
_080CCEA0:
	.4byte 0x00000D4B
_080CCEA4:
	ldr r2, _080CCEC0  @ =0x00000D4B
	add r0, r6, r2
	add r5, r4, r0
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #32
	beq _080CCEC4
	mov r0, #172
	lsl r0, r0, #4
	add r1, r6, r0
	b _080CCF10
_080CCEC0:
	.4byte 0x00000D4B
_080CCEC4:
	strb r1, [r5]
	bl GetRandomInt
	mov r1, #3
	and r1, r1, r0
	ldr r2, _080CCEFC  @ =0x00000D23
	add r0, r6, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080CCEDE
	mov r0, #1
	and r1, r1, r0
_080CCEDE:
	lsl r1, r1, #1
	mov r2, #172
	lsl r2, r2, #4
	add r0, r6, r2
	strh r1, [r0]
	bl GetRandomInt
	mov r1, #127
	and r1, r1, r0
	add r1, r1, #128
	strb r1, [r5]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _080CCF14
_080CCEFC:
	.4byte 0x00000D23
_080CCF00:
	ldr r1, _080CCF1C  @ =0x00000D1B
	add r0, r6, r1
	add r0, r4, r0
	mov r1, #0
	strb r1, [r0]
	mov r2, #172
	lsl r2, r2, #4
	add r1, r6, r2
_080CCF10:
	mov r0, #1
	strh r0, [r1]
_080CCF14:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CCF1C:
	.4byte 0x00000D1B
	THUMB_FUNC_END sub_080CCE5C

	THUMB_FUNC_START sub_080CCF20
sub_080CCF20: @ 0x080CCF20
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r1, _080CD048  @ =gRam
	ldr r2, _080CD04C  @ =0x00000D4B
	add r0, r1, r2
	add r3, r6, r0
	ldrb r0, [r3]
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	beq _080CCF3A
	b _080CD08C
_080CCF3A:
	mov r0, #160
	strb r0, [r3]
	mov r3, #150
	lsl r3, r3, #4
	add r0, r5, r3
	strb r4, [r0]
	mov r1, #15
	ldr r2, _080CD050  @ =0x00000FA2
	add r2, r2, r5
	mov r12, r2
	ldr r3, _080CD054  @ =0x00000FF2
	add r7, r5, r3
	add r4, r0, #0
_080CCF54:
	lsl r0, r1, #24
	asr r2, r0, #24
	mov r3, r12
	add r1, r2, r3
	ldrb r1, [r1]
	add r3, r0, #0
	cmp r1, #0
	beq _080CCF72
	add r0, r2, r7
	ldrb r0, [r0]
	cmp r0, #143
	bne _080CCF72
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_080CCF72:
	mov r1, #255
	lsl r1, r1, #24
	add r0, r3, r1
	lsr r1, r0, #24
	cmp r0, #0
	bge _080CCF54
	mov r2, #150
	lsl r2, r2, #4
	add r0, r5, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	ble _080CCF90
	b _080CD090
_080CCF90:
	mov r0, #143
	add r1, r6, #0
	mov r2, #12
	bl sub_080C9AAC
	add r4, r0, #0
	cmp r4, #0
	blt _080CD090
	ldr r3, _080CD058  @ =0x000016D5
	add r0, r5, r3
	ldrb r2, [r0]
	lsr r2, r2, #1
	ldr r0, _080CD05C  @ =0x000016C4
	add r1, r5, r0
	ldr r0, _080CD060  @ =gUnknown_081729F8
	add r0, r2, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080CD064  @ =gUnknown_08172A00
	add r0, r2, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _080CD068  @ =0x00000EE2
	add r0, r5, r3
	add r0, r4, r0
	strb r1, [r0]
	add r3, r3, #32
	add r0, r5, r3
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	mov r0, #182
	lsl r0, r0, #5
	add r1, r5, r0
	ldr r0, _080CD06C  @ =gUnknown_081729FC
	add r0, r2, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080CD070  @ =gUnknown_08172A04
	add r2, r2, r0
	ldrb r0, [r2]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r2, _080CD074  @ =0x00000ED2
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	sub r3, r3, #16
	add r0, r5, r3
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r1, _080CD078  @ =0x00001142
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #192
	strb r1, [r0]
	ldr r2, _080CD07C  @ =0x000010F2
	add r0, r5, r2
	add r0, r4, r0
	mov r3, #161
	lsl r3, r3, #4
	add r1, r5, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CD080  @ =0x00000F52
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #2
	strb r1, [r0]
	sub r2, r2, #144
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	ldr r3, _080CD084  @ =0x00000F82
	add r0, r5, r3
	add r0, r4, r0
	strb r1, [r0]
	bl GetRandomInt
	ldr r1, _080CD088  @ =0x00001082
	add r2, r5, r1
	add r2, r4, r2
	mov r1, #31
	and r1, r1, r0
	mov r0, #16
	orr r1, r1, r0
	strb r1, [r2]
	b _080CD090
_080CD048:
	.4byte gRam
_080CD04C:
	.4byte 0x00000D4B
_080CD050:
	.4byte 0x00000FA2
_080CD054:
	.4byte 0x00000FF2
_080CD058:
	.4byte 0x000016D5
_080CD05C:
	.4byte 0x000016C4
_080CD060:
	.4byte gUnknown_081729F8
_080CD064:
	.4byte gUnknown_08172A00
_080CD068:
	.4byte 0x00000EE2
_080CD06C:
	.4byte gUnknown_081729FC
_080CD070:
	.4byte gUnknown_08172A04
_080CD074:
	.4byte 0x00000ED2
_080CD078:
	.4byte 0x00001142
_080CD07C:
	.4byte 0x000010F2
_080CD080:
	.4byte 0x00000F52
_080CD084:
	.4byte 0x00000F82
_080CD088:
	.4byte 0x00001082
_080CD08C:
	sub r0, r0, #1
	strb r0, [r3]
_080CD090:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CCF20

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CD098
sub_080CD098: @ 0x080CD098
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r5, _080CD1A0  @ =gRam
	ldr r1, _080CD1A4  @ =0x00000D1B
	add r0, r5, r1
	add r0, r6, r0
	ldrb r0, [r0]
	sub r0, r0, #17
	ldr r2, _080CD1A8  @ =0x000015F9
	add r1, r5, r2
	strb r0, [r1]
	ldr r3, _080CD1AC  @ =0x00000D4B
	add r0, r5, r3
	add r4, r6, r0
	ldrb r0, [r4]
	cmp r0, #128
	beq _080CD0BE
	b _080CD1E4
_080CD0BE:
	bl GetRandomInt
	mov r1, #31
	and r1, r1, r0
	add r1, r1, #96
	strb r1, [r4]
	mov r0, #150
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0
	strb r0, [r1]
	mov r2, #15
	ldr r3, _080CD1B0  @ =0x00000FA2
	add r3, r3, r5
	mov r12, r3
	add r4, r5, #0
	ldr r0, _080CD1B4  @ =0x00000FF2
	add r7, r4, r0
	add r5, r1, #0
_080CD0E4:
	lsl r0, r2, #24
	asr r2, r0, #24
	mov r3, r12
	add r1, r2, r3
	ldrb r1, [r1]
	add r3, r0, #0
	cmp r1, #0
	beq _080CD102
	add r0, r2, r7
	ldrb r0, [r0]
	cmp r0, #17
	bne _080CD102
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_080CD102:
	mov r1, #255
	lsl r1, r1, #24
	add r0, r3, r1
	lsr r2, r0, #24
	cmp r0, #0
	bge _080CD0E4
	mov r2, #150
	lsl r2, r2, #4
	add r0, r4, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	bgt _080CD1E8
	mov r0, #148
	add r1, r6, #0
	mov r2, #12
	bl sub_080C9AAC
	add r2, r0, #0
	cmp r2, #0
	blt _080CD1E8
	ldr r3, _080CD1B8  @ =0x00000EE2
	add r0, r4, r3
	add r0, r2, r0
	ldr r3, _080CD1BC  @ =0x00000969
	add r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CD1C0  @ =0x00000F02
	add r0, r4, r1
	add r0, r2, r0
	add r3, r3, #3
	add r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CD1C4  @ =0x00000ED2
	add r0, r4, r1
	add r0, r2, r0
	add r3, r3, #1
	add r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CD1C8  @ =0x00000EF2
	add r0, r4, r1
	add r0, r2, r0
	add r3, r3, #3
	add r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _080CD1CC  @ =0x000010F2
	add r1, r4, r0
	add r1, r2, r1
	ldr r3, _080CD1D0  @ =0x00000D5B
	add r0, r4, r3
	add r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080CD1D4  @ =0x00000FC2
	add r0, r4, r1
	add r0, r2, r0
	mov r1, #32
	strb r1, [r0]
	ldr r3, _080CD1D8  @ =0x00000FB2
	add r0, r4, r3
	add r0, r2, r0
	ldr r1, _080CD1A8  @ =0x000015F9
	add r3, r4, r1
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r0, _080CD1DC  @ =0x00000F62
	add r1, r4, r0
	add r1, r2, r1
	ldr r2, _080CD1E0  @ =gUnknown_08172B38
	ldrb r0, [r3]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	b _080CD1E8
_080CD1A0:
	.4byte gRam
_080CD1A4:
	.4byte 0x00000D1B
_080CD1A8:
	.4byte 0x000015F9
_080CD1AC:
	.4byte 0x00000D4B
_080CD1B0:
	.4byte 0x00000FA2
_080CD1B4:
	.4byte 0x00000FF2
_080CD1B8:
	.4byte 0x00000EE2
_080CD1BC:
	.4byte 0x00000969
_080CD1C0:
	.4byte 0x00000F02
_080CD1C4:
	.4byte 0x00000ED2
_080CD1C8:
	.4byte 0x00000EF2
_080CD1CC:
	.4byte 0x000010F2
_080CD1D0:
	.4byte 0x00000D5B
_080CD1D4:
	.4byte 0x00000FC2
_080CD1D8:
	.4byte 0x00000FB2
_080CD1DC:
	.4byte 0x00000F62
_080CD1E0:
	.4byte gUnknown_08172B38
_080CD1E4:
	sub r0, r0, #1
	strb r0, [r4]
_080CD1E8:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CD098

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CD1F0
sub_080CD1F0: @ 0x080CD1F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	ldr r3, _080CD2D8  @ =gRam
	ldr r1, _080CD2DC  @ =0x00000D4B
	add r0, r3, r1
	mov r1, r8
	add r2, r1, r0
	ldrb r4, [r2]
	cmp r4, #128
	beq _080CD212
	b _080CD318
_080CD212:
	mov r0, #127
	strb r0, [r2]
	ldr r0, _080CD2E0  @ =0x000015F9
	add r1, r3, r0
	mov r0, #3
	strb r0, [r1]
	add r6, r3, #0
	mov r9, r1
	ldr r1, _080CD2E4  @ =0x00000F72
	add r1, r1, r6
	mov r10, r1
_080CD228:
	mov r0, #155
	mov r1, r8
	mov r2, #12
	bl sub_080C9AAC
	add r2, r0, #0
	mov r0, r9
	ldrb r3, [r0]
	ldr r0, _080CD2E8  @ =0x000016C4
	add r1, r6, r0
	ldr r0, _080CD2EC  @ =gUnknown_08172B3C
	add r0, r3, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080CD2F0  @ =gUnknown_08172B40
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	lsl r7, r1, #16
	lsr r1, r7, #16
	mov r12, r1
	mov r0, #182
	lsl r0, r0, #5
	add r1, r6, r0
	ldr r0, _080CD2F4  @ =gUnknown_08172B44
	add r0, r3, r0
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r0, _080CD2F8  @ =gUnknown_08172B48
	add r0, r3, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	lsl r4, r1, #16
	lsr r5, r4, #16
	cmp r2, #0
	blt _080CD32A
	ldr r1, _080CD2FC  @ =0x00000EE2
	add r0, r6, r1
	add r0, r2, r0
	mov r1, r12
	strb r1, [r0]
	ldr r1, _080CD300  @ =0x00000F02
	add r0, r6, r1
	add r0, r2, r0
	lsr r1, r7, #24
	strb r1, [r0]
	ldr r1, _080CD304  @ =0x00000ED2
	add r0, r6, r1
	add r0, r2, r0
	strb r5, [r0]
	add r1, r1, #32
	add r0, r6, r1
	add r0, r2, r0
	lsr r1, r4, #24
	strb r1, [r0]
	ldr r0, _080CD308  @ =0x00000FC2
	add r1, r6, r0
	add r1, r2, r1
	ldr r0, _080CD30C  @ =gUnknown_08172B4C
	add r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r3, _080CD310  @ =0x000010F2
	add r1, r6, r3
	add r1, r2, r1
	ldr r3, _080CD314  @ =0x00000D5B
	add r0, r6, r3
	add r0, r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	mov r0, r10
	add r1, r2, r0
	mov r0, #1
	strb r0, [r1]
	mov r1, r9
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080CD228
	b _080CD32A
	.byte 0x00
	.byte 0x00
_080CD2D8:
	.4byte gRam
_080CD2DC:
	.4byte 0x00000D4B
_080CD2E0:
	.4byte 0x000015F9
_080CD2E4:
	.4byte 0x00000F72
_080CD2E8:
	.4byte 0x000016C4
_080CD2EC:
	.4byte gUnknown_08172B3C
_080CD2F0:
	.4byte gUnknown_08172B40
_080CD2F4:
	.4byte gUnknown_08172B44
_080CD2F8:
	.4byte gUnknown_08172B48
_080CD2FC:
	.4byte 0x00000EE2
_080CD300:
	.4byte 0x00000F02
_080CD304:
	.4byte 0x00000ED2
_080CD308:
	.4byte 0x00000FC2
_080CD30C:
	.4byte gUnknown_08172B4C
_080CD310:
	.4byte 0x000010F2
_080CD314:
	.4byte 0x00000D5B
_080CD318:
	ldr r1, _080CD338  @ =0x00000996
	add r0, r3, r1
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080CD32A
	sub r0, r4, #1
	strb r0, [r2]
_080CD32A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080CD338:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080CD1F0

	THUMB_FUNC_START sub_080CD33C
sub_080CD33C: @ 0x080CD33C
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080CD484  @ =gRam
	ldr r1, _080CD488  @ =0x00000D4B
	add r0, r5, r1
	add r6, r4, r0
	ldrb r0, [r6]
	sub r0, r0, #1
	strb r0, [r6]
	ldr r2, _080CD48C  @ =0x00000D33
	add r0, r5, r2
	add r0, r4, r0
	ldrb r1, [r0]
	add r2, r2, #8
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #8
	mov r2, #150
	lsl r2, r2, #4
	add r0, r5, r2
	strh r1, [r0]
	ldr r1, _080CD490  @ =0x00000D23
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r2, _080CD494  @ =0x00000D2B
	add r0, r5, r2
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r1, r1, #8
	ldr r2, _080CD498  @ =0x00000964
	add r0, r5, r2
	strh r1, [r0]
	ldr r1, _080CD49C  @ =0x00000D5B
	add r0, r5, r1
	add r7, r4, r0
	ldrb r1, [r7]
	add r0, r4, #0
	bl sub_080C781C
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #130
	bne _080CD47C
	ldrb r1, [r6]
	cmp r1, #23
	bhi _080CD47C
	mov r6, #3
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	bne _080CD47C
	mov r0, #156
	add r1, r4, #0
	mov r2, #12
	bl sub_080C9AAC
	add r4, r0, #0
	cmp r4, #0
	blt _080CD47C
	bl GetRandomInt
	mov r3, #7
	and r3, r3, r0
	ldr r2, _080CD4A0  @ =0x00000969
	add r0, r5, r2
	ldrb r2, [r0]
	ldr r1, _080CD4A4  @ =0x0000096C
	add r0, r5, r1
	ldrb r1, [r0]
	lsl r1, r1, #8
	ldr r0, _080CD4A8  @ =gUnknown_08172B50
	add r0, r3, r0
	orr r2, r2, r1
	ldrb r0, [r0]
	add r2, r2, r0
	add r2, r2, #8
	ldr r0, _080CD4AC  @ =gUnknown_08172B58
	add r3, r3, r0
	ldrb r0, [r3]
	lsl r0, r0, #8
	add r2, r2, r0
	ldr r1, _080CD4B0  @ =0x00000EE2
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
	add r1, r1, #32
	add r0, r5, r1
	add r0, r4, r0
	lsr r2, r2, #8
	strb r2, [r0]
	ldr r2, _080CD4B4  @ =0x00000ED2
	add r1, r5, r2
	add r1, r4, r1
	ldr r2, _080CD4B8  @ =0x0000096D
	add r0, r5, r2
	ldrb r0, [r0]
	add r0, r0, #8
	strb r0, [r1]
	ldr r1, _080CD4BC  @ =0x00000EF2
	add r0, r5, r1
	add r0, r4, r0
	add r2, r2, #3
	add r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CD4C0  @ =0x000010F2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r7]
	strb r1, [r0]
	ldr r2, _080CD4C4  @ =0x00001132
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #1
	strb r1, [r0]
	sub r2, r2, #208
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	ldr r2, _080CD4C8  @ =0x00001172
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	ldr r1, _080CD4CC  @ =0x00000F12
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #16
	strb r1, [r0]
	ldr r2, _080CD4D0  @ =0x00001012
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #32
	strb r1, [r0]
	ldr r1, _080CD4D4  @ =0x00001122
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #13
	strb r1, [r0]
	bl GetRandomInt
	ldr r2, _080CD4D8  @ =0x00001052
	add r1, r5, r2
	add r1, r4, r1
	strb r0, [r1]
	ldr r1, _080CD4DC  @ =0x00000FC2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #48
	strb r1, [r0]
	ldr r2, _080CD4E0  @ =0x00000EA5
	add r0, r5, r2
	add r0, r4, r0
	strb r6, [r0]
_080CD47C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CD484:
	.4byte gRam
_080CD488:
	.4byte 0x00000D4B
_080CD48C:
	.4byte 0x00000D33
_080CD490:
	.4byte 0x00000D23
_080CD494:
	.4byte 0x00000D2B
_080CD498:
	.4byte 0x00000964
_080CD49C:
	.4byte 0x00000D5B
_080CD4A0:
	.4byte 0x00000969
_080CD4A4:
	.4byte 0x0000096C
_080CD4A8:
	.4byte gUnknown_08172B50
_080CD4AC:
	.4byte gUnknown_08172B58
_080CD4B0:
	.4byte 0x00000EE2
_080CD4B4:
	.4byte 0x00000ED2
_080CD4B8:
	.4byte 0x0000096D
_080CD4BC:
	.4byte 0x00000EF2
_080CD4C0:
	.4byte 0x000010F2
_080CD4C4:
	.4byte 0x00001132
_080CD4C8:
	.4byte 0x00001172
_080CD4CC:
	.4byte 0x00000F12
_080CD4D0:
	.4byte 0x00001012
_080CD4D4:
	.4byte 0x00001122
_080CD4D8:
	.4byte 0x00001052
_080CD4DC:
	.4byte 0x00000FC2
_080CD4E0:
	.4byte 0x00000EA5
	THUMB_FUNC_END sub_080CD33C

	THUMB_FUNC_START sub_080CD4E4
sub_080CD4E4: @ 0x080CD4E4
	push {lr}
	bl sub_080CD4F4
	bl sub_080CBEA4
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CD4E4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CD4F4
sub_080CD4F4: @ 0x080CD4F4
	push {r4,r5,lr}
	ldr r3, _080CD534  @ =gRam
	ldr r1, _080CD538  @ =0x000009AD
	add r0, r3, r1
	ldr r2, _080CD53C  @ =0x00001605
	add r1, r3, r2
	ldrb r2, [r0]
	ldrb r0, [r1]
	orr r0, r0, r2
	cmp r0, #0
	bne _080CD52C
	mov r1, #7
	ldr r0, _080CD540  @ =0x00000D1B
	add r5, r3, r0
_080CD510:
	lsl r2, r1, #24
	asr r4, r2, #24
	add r0, r4, r5
	ldrb r1, [r0]
	cmp r1, #0
	beq _080CD522
	lsr r0, r2, #24
	bl sub_080CD544
_080CD522:
	sub r0, r4, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r0, #0
	bge _080CD510
_080CD52C:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CD534:
	.4byte gRam
_080CD538:
	.4byte 0x000009AD
_080CD53C:
	.4byte 0x00001605
_080CD540:
	.4byte 0x00000D1B
	THUMB_FUNC_END sub_080CD4F4

	THUMB_FUNC_START sub_080CD544
sub_080CD544: @ 0x080CD544
	push {r4,r5,lr}
	add r5, r0, #0
	add r4, r1, #0
	lsl r5, r5, #24
	lsr r5, r5, #24
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r5, #0
	bl sub_080CBFA0
	ldr r0, _080CD570  @ =gUnknown_08172978
	sub r4, r4, #1
	lsl r4, r4, #2
	add r4, r4, r0
	ldr r1, [r4]
	add r0, r5, #0
	bl _call_via_r1
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CD570:
	.4byte gUnknown_08172978
	THUMB_FUNC_END sub_080CD544

	THUMB_FUNC_START sub_080CD574
sub_080CD574: @ 0x080CD574
	ldr r1, _080CD580  @ =gRam
	ldr r2, _080CD584  @ =0x00001628
	add r1, r1, r2
	strb r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_080CD580:
	.4byte gRam
_080CD584:
	.4byte 0x00001628
	THUMB_FUNC_END sub_080CD574

	THUMB_FUNC_START sub_080CD588
sub_080CD588: @ 0x080CD588
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080CCB58
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CD588

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CD598
sub_080CD598: @ 0x080CD598
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080CCB58
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CD598

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CD5A8
sub_080CD5A8: @ 0x080CD5A8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080CCB58
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CD5A8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CD5B8
sub_080CD5B8: @ 0x080CD5B8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080CCB58
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CD5B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CD5C8
sub_080CD5C8: @ 0x080CD5C8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080CCB58
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CD5C8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CD5D8
sub_080CD5D8: @ 0x080CD5D8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080CCB58
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CD5D8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CD5E8
sub_080CD5E8: @ 0x080CD5E8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080CD098
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CD5E8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CD5F8
sub_080CD5F8: @ 0x080CD5F8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080CD098
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CD5F8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CD608
sub_080CD608: @ 0x080CD608
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_080CD098
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CD608

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CD618
sub_080CD618: @ 0x080CD618
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r3, _080CD664  @ =gRam
	ldr r1, _080CD668  @ =0x000015DD
	add r0, r3, r1
	strb r4, [r0]
	ldr r2, _080CD66C  @ =0x000011D2
	add r0, r3, r2
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080CD70E
	cmp r0, #5
	beq _080CD648
	ldr r1, _080CD670  @ =0x000009AD
	add r0, r3, r1
	ldr r2, _080CD674  @ =0x00001605
	add r1, r3, r2
	ldrb r2, [r0]
	ldrb r0, [r1]
	orr r0, r0, r2
	cmp r0, #0
	bne _080CD67C
_080CD648:
	ldr r1, _080CD678  @ =0x000012FE
	add r0, r3, r1
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080CD67C
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _080CD67C
	strb r0, [r5]
	b _080CD70E
_080CD664:
	.4byte gRam
_080CD668:
	.4byte 0x000015DD
_080CD66C:
	.4byte 0x000011D2
_080CD670:
	.4byte 0x000009AD
_080CD674:
	.4byte 0x00001605
_080CD678:
	.4byte 0x000012FE
_080CD67C:
	ldr r1, _080CD6AC  @ =gRam
	ldr r2, _080CD6B0  @ =0x000015F7
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CD6E0
	ldr r2, _080CD6B4  @ =0x00001358
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CD6C0
	ldr r2, _080CD6B8  @ =0x000011D2
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	ldr r1, _080CD6BC  @ =gUnknown_08172B60
	sub r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	bl sub_080CF3E8
	b _080CD6F4
	.byte 0x00
	.byte 0x00
_080CD6AC:
	.4byte gRam
_080CD6B0:
	.4byte 0x000015F7
_080CD6B4:
	.4byte 0x00001358
_080CD6B8:
	.4byte 0x000011D2
_080CD6BC:
	.4byte gUnknown_08172B60
_080CD6C0:
	ldr r2, _080CD6D8  @ =0x000011D2
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	ldr r1, _080CD6DC  @ =gUnknown_08172B60
	sub r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	bl sub_080CF3B8
	b _080CD6F4
	.byte 0x00
	.byte 0x00
_080CD6D8:
	.4byte 0x000011D2
_080CD6DC:
	.4byte gUnknown_08172B60
_080CD6E0:
	ldr r2, _080CD714  @ =0x000011D2
	add r0, r1, r2
	add r0, r4, r0
	ldrb r0, [r0]
	ldr r1, _080CD718  @ =gUnknown_08172B60
	sub r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	bl sub_080CF370
_080CD6F4:
	ldr r1, _080CD71C  @ =gUnknown_08172B78
	ldr r0, _080CD720  @ =gRam
	ldr r2, _080CD714  @ =0x000011D2
	add r0, r0, r2
	add r0, r4, r0
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
_080CD70E:
	pop {r4,r5}
	pop {r0}
	bx r0
_080CD714:
	.4byte 0x000011D2
_080CD718:
	.4byte gUnknown_08172B60
_080CD71C:
	.4byte gUnknown_08172B78
_080CD720:
	.4byte gRam
	THUMB_FUNC_END sub_080CD618

	THUMB_FUNC_START sub_080CD724
sub_080CD724: @ 0x080CD724
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r4, #0
	add r0, r4, #0
	bl sub_080CD8BC
	lsl r0, r0, #24
	cmp r0, #0
	beq _080CD742
	b _080CD89C
_080CD742:
	ldr r5, _080CD774  @ =gRam
	ldr r1, _080CD778  @ =0x000013EE
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r2, _080CD77C  @ =0x00000969
	add r0, r5, r2
	strb r1, [r0]
	ldr r3, _080CD780  @ =0x00001610
	add r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #2
	bls _080CD75E
	b _080CD89C
_080CD75E:
	ldr r1, _080CD784  @ =0x0000131C
	add r0, r5, r1
	add r2, r4, r0
	ldrb r1, [r2]
	cmp r1, #3
	bne _080CD788
	add r0, r4, #0
	bl sub_080CD96C
	b _080CD89C
	.byte 0x00
	.byte 0x00
_080CD774:
	.4byte gRam
_080CD778:
	.4byte 0x000013EE
_080CD77C:
	.4byte 0x00000969
_080CD780:
	.4byte 0x00001610
_080CD784:
	.4byte 0x0000131C
_080CD788:
	ldr r3, _080CD7B0  @ =0x000015F9
	add r0, r5, r3
	strb r1, [r0]
	ldrb r1, [r2]
	ldr r2, _080CD7B4  @ =0x000012FE
	add r0, r5, r2
	add r0, r6, r0
	ldrb r3, [r0]
	lsr r3, r3, #2
	mov r0, #7
	eor r3, r3, r0
	lsl r3, r3, #2
	cmp r1, #4
	beq _080CD7BE
	cmp r1, #4
	bgt _080CD7B8
	cmp r1, #2
	beq _080CD7C4
	b _080CD7E4
	.byte 0x00
	.byte 0x00
_080CD7B0:
	.4byte 0x000015F9
_080CD7B4:
	.4byte 0x000012FE
_080CD7B8:
	cmp r1, #16
	beq _080CD7DC
	b _080CD7E4
_080CD7BE:
	add r0, r3, #0
	add r0, r0, #32
	b _080CD7E0
_080CD7C4:
	ldr r1, _080CD7D8  @ =0x000009B2
	add r0, r5, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080CD7E4
	add r0, r3, #0
	add r0, r0, #32
	b _080CD7E0
_080CD7D8:
	.4byte 0x000009B2
_080CD7DC:
	add r0, r3, #0
	add r0, r0, #64
_080CD7E0:
	lsl r0, r0, #24
	lsr r3, r0, #24
_080CD7E4:
	ldr r1, _080CD840  @ =gRam
	ldr r2, _080CD844  @ =0x0000096C
	add r0, r1, r2
	strb r3, [r0]
	mov r7, #3
	add r6, r1, #0
	ldr r3, _080CD848  @ =0x000015F9
	add r3, r3, r6
	mov r9, r3
	mov r8, r6
_080CD7F8:
	ldr r1, _080CD844  @ =0x0000096C
	add r0, r6, r1
	ldrb r0, [r0]
	add r0, r0, r7
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r2, #150
	lsl r2, r2, #4
	add r0, r6, r2
	ldrb r1, [r0]
	ldr r3, _080CD84C  @ =0x00000961
	add r0, r6, r3
	ldrb r2, [r0]
	lsl r2, r2, #8
	ldr r3, _080CD850  @ =gUnknown_08172BD0
	lsl r0, r5, #1
	add r0, r0, r3
	orr r1, r1, r2
	ldrh r0, [r0]
	add r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r12, r1
	ldr r1, _080CD854  @ =0x00000964
	add r0, r6, r1
	ldrb r2, [r0]
	ldr r0, _080CD858  @ =gUnknown_08172C90
	add r0, r5, r0
	ldrb r0, [r0]
	add r2, r0, r2
	mov r3, r9
	ldrb r4, [r3]
	cmp r4, #0
	bne _080CD85C
	mov r4, #142
	b _080CD86A
_080CD840:
	.4byte gRam
_080CD844:
	.4byte 0x0000096C
_080CD848:
	.4byte 0x000015F9
_080CD84C:
	.4byte 0x00000961
_080CD850:
	.4byte gUnknown_08172BD0
_080CD854:
	.4byte 0x00000964
_080CD858:
	.4byte gUnknown_08172C90
_080CD85C:
	lsl r1, r4, #24
	ldr r0, _080CD8AC  @ =gUnknown_08172CF0
	add r0, r5, r0
	ldrb r4, [r0]
	cmp r1, #0
	bge _080CD86A
	mov r4, #242
_080CD86A:
	ldr r0, _080CD8B0  @ =gUnknown_08172D50
	add r0, r5, r0
	ldrb r3, [r0]
	ldr r0, _080CD8B4  @ =0x00000969
	add r0, r0, r8
	ldrb r0, [r0]
	orr r3, r3, r0
	ldr r0, _080CD8B8  @ =gUnknown_03003E74
	sub r1, r7, #3
	ldrh r0, [r0]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	lsl r3, r3, #8
	orr r4, r4, r3
	lsl r3, r4, #16
	lsr r3, r3, #16
	mov r4, #0
	str r4, [sp]
	bl sub_080C6004
	sub r7, r7, #1
	cmp r7, #0
	bge _080CD7F8
_080CD89C:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CD8AC:
	.4byte gUnknown_08172CF0
_080CD8B0:
	.4byte gUnknown_08172D50
_080CD8B4:
	.4byte 0x00000969
_080CD8B8:
	.4byte gUnknown_03003E74
	THUMB_FUNC_END sub_080CD724

	THUMB_FUNC_START sub_080CD8BC
sub_080CD8BC: @ 0x080CD8BC
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r5, r2, #0
	ldr r3, _080CD93C  @ =gRam
	ldr r1, _080CD940  @ =0x0000122C
	add r0, r3, r1
	add r0, r2, r0
	ldrb r0, [r0]
	ldr r4, _080CD944  @ =0x00001268
	add r1, r3, r4
	add r1, r2, r1
	ldrb r1, [r1]
	lsl r1, r1, #8
	orr r0, r0, r1
	ldr r6, _080CD948  @ =0x00000952
	add r1, r3, r6
	ldrh r1, [r1]
	lsl r0, r0, #16
	asr r0, r0, #16
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r4, #150
	lsl r4, r4, #4
	add r1, r3, r4
	strh r0, [r1]
	lsl r0, r0, #16
	asr r0, r0, #16
	mov r4, #255
	lsl r4, r4, #8
	and r0, r0, r4
	cmp r0, #0
	bne _080CD92C
	ldr r6, _080CD94C  @ =0x0000120E
	add r0, r3, r6
	add r0, r2, r0
	ldrb r1, [r0]
	add r6, r6, #60
	add r0, r3, r6
	add r0, r2, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldr r2, _080CD950  @ =0x00000958
	add r0, r3, r2
	ldrh r0, [r0]
	lsl r1, r1, #16
	asr r1, r1, #16
	sub r1, r1, r0
	lsl r1, r1, #16
	asr r1, r1, #16
	add r0, r1, #0
	and r0, r0, r4
	cmp r0, #0
	beq _080CD958
_080CD92C:
	ldr r4, _080CD954  @ =0x000011D2
	add r0, r3, r4
	add r0, r5, r0
	mov r1, #0
	strb r1, [r0]
	mov r0, #1
	b _080CD962
	.byte 0x00
	.byte 0x00
_080CD93C:
	.4byte gRam
_080CD940:
	.4byte 0x0000122C
_080CD944:
	.4byte 0x00001268
_080CD948:
	.4byte 0x00000952
_080CD94C:
	.4byte 0x0000120E
_080CD950:
	.4byte 0x00000958
_080CD954:
	.4byte 0x000011D2
_080CD958:
	sub r1, r1, #16
	ldr r6, _080CD968  @ =0x00000964
	add r0, r3, r6
	strh r1, [r0]
	mov r0, #0
_080CD962:
	pop {r4-r6}
	pop {r1}
	bx r1
_080CD968:
	.4byte 0x00000964
	THUMB_FUNC_END sub_080CD8BC

	THUMB_FUNC_START sub_080CD96C
sub_080CD96C: @ 0x080CD96C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r3, _080CDA2C  @ =gRam
	ldr r2, _080CDA30  @ =0x000012FE
	add r0, r3, r2
	add r0, r1, r0
	ldrb r2, [r0]
	cmp r2, #16
	bne _080CD990
	mov r2, #0
	ldr r4, _080CDA34  @ =0x000011D2
	add r0, r3, r4
	add r0, r1, r0
	strb r2, [r0]
_080CD990:
	mov r0, #15
	and r0, r0, r2
	lsr r2, r0, #2
	add r0, r2, #0
	ldr r4, _080CDA38  @ =0x0000096C
	add r1, r3, r4
	lsl r2, r2, #1
	add r0, r2, r0
	strb r0, [r1]
	mov r1, #2
	add r7, r3, #0
	ldr r0, _080CDA3C  @ =0x00000964
	add r0, r0, r7
	mov r8, r0
_080CD9AC:
	lsl r6, r1, #24
	ldr r2, _080CDA38  @ =0x0000096C
	add r0, r7, r2
	ldrb r5, [r0]
	add r5, r1, r5
	mov r4, #150
	lsl r4, r4, #4
	add r0, r7, r4
	ldrb r1, [r0]
	sub r2, r2, #11
	add r0, r7, r2
	ldrb r2, [r0]
	lsl r2, r2, #8
	ldr r3, _080CDA40  @ =gUnknown_08172DB0
	lsl r0, r5, #1
	add r0, r0, r3
	orr r1, r1, r2
	ldrh r0, [r0]
	add r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r4, r8
	mov r2, #0
	ldrsb r2, [r4, r2]
	lsl r2, r2, #16
	ldr r0, _080CDA44  @ =gUnknown_08172DC8
	add r0, r5, r0
	lsr r2, r2, #16
	ldrb r0, [r0]
	add r2, r2, r0
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r0, _080CDA48  @ =gUnknown_03003E74
	asr r6, r6, #24
	sub r3, r6, #2
	ldrh r0, [r0]
	sub r0, r0, r3
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r3, _080CDA4C  @ =gUnknown_08172DD4
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080CDA50  @ =gUnknown_08172DE0
	add r5, r5, r4
	ldrb r5, [r5]
	mov r4, #34
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	mov r4, #0
	str r4, [sp]
	bl sub_080C6004
	sub r6, r6, #1
	lsl r6, r6, #24
	lsr r1, r6, #24
	cmp r6, #0
	bge _080CD9AC
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080CDA2C:
	.4byte gRam
_080CDA30:
	.4byte 0x000012FE
_080CDA34:
	.4byte 0x000011D2
_080CDA38:
	.4byte 0x0000096C
_080CDA3C:
	.4byte 0x00000964
_080CDA40:
	.4byte gUnknown_08172DB0
_080CDA44:
	.4byte gUnknown_08172DC8
_080CDA48:
	.4byte gUnknown_03003E74
_080CDA4C:
	.4byte gUnknown_08172DD4
_080CDA50:
	.4byte gUnknown_08172DE0
	THUMB_FUNC_END sub_080CD96C

	THUMB_FUNC_START sub_080CDA54
sub_080CDA54: @ 0x080CDA54
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r0, r5, #0
	bl sub_080CD8BC
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r0
	cmp r0, #0
	bne _080CDACE
	ldr r6, _080CDAD8  @ =gRam
	ldr r1, _080CDADC  @ =0x000012FE
	add r0, r6, r1
	add r0, r5, r0
	ldrb r4, [r0]
	lsr r4, r4, #2
	ldr r0, _080CDAE0  @ =gUnknown_03003E74
	ldrh r0, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r1, r6, r2
	ldrb r1, [r1]
	ldr r2, _080CDAE4  @ =gUnknown_08172DEC
	add r2, r4, r2
	mov r3, #0
	ldrsb r3, [r2, r3]
	add r1, r1, r3
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r7, _080CDAE8  @ =0x00000964
	add r2, r6, r7
	ldrb r2, [r2]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080CDAEC  @ =gUnknown_08172DEF
	add r4, r4, r3
	ldrb r3, [r4]
	ldr r7, _080CDAF0  @ =0x0000131C
	add r4, r6, r7
	add r4, r5, r4
	ldrb r5, [r4]
	ldr r7, _080CDAF4  @ =0x00001122
	add r4, r6, r7
	add r4, r5, r4
	ldr r7, _080CDAF8  @ =0x00000D94
	add r6, r6, r7
	add r5, r5, r6
	ldrb r4, [r4]
	ldrb r5, [r5]
	orr r4, r4, r5
	mov r5, #254
	and r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	mov r4, r12
	str r4, [sp]
	bl sub_080C6004
_080CDACE:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CDAD8:
	.4byte gRam
_080CDADC:
	.4byte 0x000012FE
_080CDAE0:
	.4byte gUnknown_03003E74
_080CDAE4:
	.4byte gUnknown_08172DEC
_080CDAE8:
	.4byte 0x00000964
_080CDAEC:
	.4byte gUnknown_08172DEF
_080CDAF0:
	.4byte 0x0000131C
_080CDAF4:
	.4byte 0x00001122
_080CDAF8:
	.4byte 0x00000D94
	THUMB_FUNC_END sub_080CDA54

	THUMB_FUNC_START sub_080CDAFC
sub_080CDAFC: @ 0x080CDAFC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r8, r4
	add r0, r4, #0
	bl sub_080CD8BC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080CDB72
	ldr r1, _080CDB80  @ =gUnknown_08172DFF
	ldr r7, _080CDB84  @ =gRam
	ldr r2, _080CDB88  @ =0x0000131C
	add r0, r7, r2
	add r0, r4, r0
	ldrb r4, [r0]
	add r1, r4, r1
	ldrb r6, [r1]
	ldr r3, _080CDB8C  @ =0x00000B36
	add r0, r7, r3
	ldrh r0, [r0]
	cmp r0, #32
	bne _080CDB38
	add r0, r6, #0
	add r0, r0, #128
	lsl r0, r0, #24
	lsr r6, r0, #24
_080CDB38:
	ldr r0, _080CDB90  @ =gUnknown_03003E74
	ldrh r0, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r1, r7, r2
	ldrh r1, [r1]
	ldr r3, _080CDB94  @ =0x00000964
	add r2, r7, r3
	ldrh r2, [r2]
	ldr r3, _080CDB98  @ =gUnknown_08172E07
	add r3, r4, r3
	ldrb r5, [r3]
	ldr r4, _080CDB9C  @ =0x00000996
	add r3, r7, r4
	ldrb r3, [r3]
	lsl r3, r3, #1
	mov r4, #14
	and r3, r3, r4
	orr r5, r5, r3
	lsl r5, r5, #8
	orr r6, r6, r5
	mov r3, #2
	str r3, [sp]
	add r3, r6, #0
	bl sub_080C6004
	mov r0, r8
	bl sub_080CDBA0
_080CDB72:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CDB80:
	.4byte gUnknown_08172DFF
_080CDB84:
	.4byte gRam
_080CDB88:
	.4byte 0x0000131C
_080CDB8C:
	.4byte 0x00000B36
_080CDB90:
	.4byte gUnknown_03003E74
_080CDB94:
	.4byte 0x00000964
_080CDB98:
	.4byte gUnknown_08172E07
_080CDB9C:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080CDAFC

	THUMB_FUNC_START sub_080CDBA0
sub_080CDBA0: @ 0x080CDBA0
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080CDC38  @ =gRam
	ldr r3, _080CDC3C  @ =0x00000996
	add r1, r2, r3
	ldrb r1, [r1]
	eor r0, r0, r1
	mov r1, #7
	and r0, r0, r1
	ldr r3, _080CDC40  @ =0x000017AA
	add r1, r2, r3
	ldrb r1, [r1]
	orr r0, r0, r1
	add r3, r3, #99
	add r1, r2, r3
	ldrb r1, [r1]
	orr r0, r0, r1
	cmp r0, #0
	bne _080CDC34
	ldr r1, _080CDC44  @ =0x000016C4
	add r0, r2, r1
	ldr r3, _080CDC48  @ =0x00000952
	add r1, r2, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	sub r0, r0, r1
	add r3, r3, #14
	add r1, r2, r3
	ldrh r1, [r1]
	sub r0, r0, r1
	add r0, r0, #12
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #23
	bhi _080CDC34
	mov r1, #182
	lsl r1, r1, #5
	add r0, r2, r1
	sub r3, r3, #8
	add r1, r2, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	sub r0, r0, r1
	add r3, r3, #12
	add r1, r2, r3
	ldrh r1, [r1]
	sub r0, r0, r1
	add r0, r0, #22
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #27
	bhi _080CDC34
	ldr r0, _080CDC4C  @ =0x00001702
	add r1, r2, r0
	mov r0, #1
	strb r0, [r1]
	ldr r1, _080CDC50  @ =0x000016F8
	add r0, r2, r1
	mov r1, #16
	strb r1, [r0]
	ldr r3, _080CDC54  @ =0x00001805
	add r0, r2, r3
	strb r1, [r0]
	ldr r0, _080CDC58  @ =0x000016CE
	add r1, r2, r0
	ldrb r0, [r1]
	mvn r0, r0
	strb r0, [r1]
	ldr r3, _080CDC5C  @ =0x000016CD
	add r1, r2, r3
	ldrb r0, [r1]
	mvn r0, r0
	strb r0, [r1]
_080CDC34:
	pop {r0}
	bx r0
_080CDC38:
	.4byte gRam
_080CDC3C:
	.4byte 0x00000996
_080CDC40:
	.4byte 0x000017AA
_080CDC44:
	.4byte 0x000016C4
_080CDC48:
	.4byte 0x00000952
_080CDC4C:
	.4byte 0x00001702
_080CDC50:
	.4byte 0x000016F8
_080CDC54:
	.4byte 0x00001805
_080CDC58:
	.4byte 0x000016CE
_080CDC5C:
	.4byte 0x000016CD
	THUMB_FUNC_END sub_080CDBA0

	THUMB_FUNC_START sub_080CDC60
sub_080CDC60: @ 0x080CDC60
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r3, _080CDD6C  @ =gRam
	ldr r1, _080CDD70  @ =0x000012FE
	add r0, r3, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #30
	bne _080CDCCE
	ldr r2, _080CDD74  @ =0x000009AD
	add r0, r3, r2
	ldr r5, _080CDD78  @ =0x00001605
	add r1, r3, r5
	ldrb r2, [r0]
	ldrb r0, [r1]
	orr r0, r0, r2
	cmp r0, #0
	bne _080CDCCE
	ldr r1, _080CDD7C  @ =0x0000122C
	add r0, r3, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r0, r3, r2
	strb r1, [r0]
	ldr r5, _080CDD80  @ =0x00001268
	add r0, r3, r5
	add r0, r4, r0
	ldrb r1, [r0]
	add r2, r2, #1
	add r0, r3, r2
	strb r1, [r0]
	sub r5, r5, #90
	add r0, r3, r5
	add r0, r4, r0
	ldrb r0, [r0]
	ldr r1, _080CDD84  @ =0x00000964
	add r2, r3, r1
	strb r0, [r2]
	add r5, r5, #60
	add r0, r3, r5
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r5, _080CDD88  @ =0x00000965
	add r0, r3, r5
	strb r1, [r0]
	ldrh r0, [r2]
	sub r0, r0, #16
	strh r0, [r2]
	mov r0, #4
	bl sub_08079844
_080CDCCE:
	ldr r2, _080CDD6C  @ =gRam
	ldr r1, _080CDD70  @ =0x000012FE
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	lsr r5, r0, #3
	ldr r3, _080CDD7C  @ =0x0000122C
	add r0, r2, r3
	add r0, r4, r0
	ldrb r1, [r0]
	add r3, r3, #60
	add r0, r2, r3
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _080CDD8C  @ =0x00000952
	add r0, r2, r3
	ldrh r0, [r0]
	sub r1, r1, r0
	lsl r1, r1, #16
	lsr r6, r1, #16
	mov r7, #255
	lsl r7, r7, #8
	add r0, r6, #0
	and r0, r0, r7
	cmp r0, #0
	bne _080CDD62
	ldr r1, _080CDD90  @ =0x0000120E
	add r0, r2, r1
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r3, _080CDD94  @ =0x0000124A
	add r0, r2, r3
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r3, _080CDD98  @ =0x00000958
	add r0, r2, r3
	ldrh r0, [r0]
	sub r1, r1, r0
	lsl r1, r1, #16
	lsr r3, r1, #16
	add r0, r3, #0
	and r0, r0, r7
	cmp r0, #0
	bne _080CDD62
	ldr r0, _080CDD9C  @ =gUnknown_03003E74
	ldrh r0, [r0]
	ldr r1, _080CDDA0  @ =gUnknown_08172E1E
	add r1, r5, r1
	ldrb r2, [r1]
	add r1, r6, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	add r2, r3, r2
	sub r2, r2, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080CDDA4  @ =gUnknown_08172E0F
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080CDDA8  @ =gUnknown_08172E14
	add r4, r5, r4
	ldrb r4, [r4]
	lsl r4, r4, #8
	orr r3, r3, r4
	ldr r4, _080CDDAC  @ =gUnknown_08172E19
	add r4, r5, r4
	ldrb r4, [r4]
	str r4, [sp]
	bl sub_080C6368
_080CDD62:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CDD6C:
	.4byte gRam
_080CDD70:
	.4byte 0x000012FE
_080CDD74:
	.4byte 0x000009AD
_080CDD78:
	.4byte 0x00001605
_080CDD7C:
	.4byte 0x0000122C
_080CDD80:
	.4byte 0x00001268
_080CDD84:
	.4byte 0x00000964
_080CDD88:
	.4byte 0x00000965
_080CDD8C:
	.4byte 0x00000952
_080CDD90:
	.4byte 0x0000120E
_080CDD94:
	.4byte 0x0000124A
_080CDD98:
	.4byte 0x00000958
_080CDD9C:
	.4byte gUnknown_03003E74
_080CDDA0:
	.4byte gUnknown_08172E1E
_080CDDA4:
	.4byte gUnknown_08172E0F
_080CDDA8:
	.4byte gUnknown_08172E14
_080CDDAC:
	.4byte gUnknown_08172E19
	THUMB_FUNC_END sub_080CDC60

	THUMB_FUNC_START sub_080CDDB0
sub_080CDDB0: @ 0x080CDDB0
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080CDE18  @ =gUnknown_03003E74
	ldrh r5, [r1]
	ldr r4, _080CDE1C  @ =gRam
	ldr r2, _080CDE20  @ =0x0000122C
	add r1, r4, r2
	add r1, r0, r1
	ldrb r1, [r1]
	ldr r3, _080CDE24  @ =0x00000952
	add r2, r4, r3
	ldrb r2, [r2]
	sub r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r6, _080CDE28  @ =0x0000120E
	add r2, r4, r6
	add r2, r0, r2
	ldrb r2, [r2]
	ldr r6, _080CDE2C  @ =0x00000958
	add r3, r4, r6
	ldrb r3, [r3]
	sub r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r6, _080CDE30  @ =0x0000131C
	add r3, r4, r6
	add r0, r0, r3
	ldrb r3, [r0]
	ldr r6, _080CDE34  @ =0x00001122
	add r0, r4, r6
	add r0, r3, r0
	ldr r6, _080CDE38  @ =0x00000D94
	add r4, r4, r6
	add r3, r3, r4
	ldrb r0, [r0]
	ldrb r3, [r3]
	orr r3, r3, r0
	lsl r3, r3, #8
	mov r0, #202
	orr r3, r3, r0
	mov r0, #2
	str r0, [sp]
	add r0, r5, #0
	bl sub_080C6368
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080CDE18:
	.4byte gUnknown_03003E74
_080CDE1C:
	.4byte gRam
_080CDE20:
	.4byte 0x0000122C
_080CDE24:
	.4byte 0x00000952
_080CDE28:
	.4byte 0x0000120E
_080CDE2C:
	.4byte 0x00000958
_080CDE30:
	.4byte 0x0000131C
_080CDE34:
	.4byte 0x00001122
_080CDE38:
	.4byte 0x00000D94
	THUMB_FUNC_END sub_080CDDB0

	THUMB_FUNC_START sub_080CDE3C
sub_080CDE3C: @ 0x080CDE3C
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r0, r5, #0
	bl sub_080CD8BC
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r0
	cmp r0, #0
	bne _080CDE9E
	ldr r0, _080CDEA8  @ =gUnknown_03003E74
	ldrh r0, [r0]
	ldr r6, _080CDEAC  @ =gRam
	mov r2, #150
	lsl r2, r2, #4
	add r1, r6, r2
	ldrh r1, [r1]
	ldr r3, _080CDEB0  @ =0x00000964
	add r2, r6, r3
	ldrh r2, [r2]
	ldr r4, _080CDEB4  @ =gUnknown_08172E23
	ldr r7, _080CDEB8  @ =0x000013EE
	add r3, r6, r7
	add r3, r5, r3
	ldrb r3, [r3]
	sub r3, r3, #7
	add r3, r3, r4
	ldrb r3, [r3]
	sub r7, r7, #210
	add r4, r6, r7
	add r4, r5, r4
	ldrb r5, [r4]
	ldr r7, _080CDEBC  @ =0x00001122
	add r4, r6, r7
	add r4, r5, r4
	ldr r7, _080CDEC0  @ =0x00000D94
	add r6, r6, r7
	add r5, r5, r6
	ldrb r6, [r4]
	ldrb r4, [r5]
	orr r4, r4, r6
	lsl r4, r4, #8
	orr r3, r3, r4
	mov r4, r12
	str r4, [sp]
	bl sub_080C6368
_080CDE9E:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CDEA8:
	.4byte gUnknown_03003E74
_080CDEAC:
	.4byte gRam
_080CDEB0:
	.4byte 0x00000964
_080CDEB4:
	.4byte gUnknown_08172E23
_080CDEB8:
	.4byte 0x000013EE
_080CDEBC:
	.4byte 0x00001122
_080CDEC0:
	.4byte 0x00000D94
	THUMB_FUNC_END sub_080CDE3C

	THUMB_FUNC_START sub_080CDEC4
sub_080CDEC4: @ 0x080CDEC4
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r7, r1, #0
	ldr r6, _080CDF38  @ =gRam
	ldr r2, _080CDF3C  @ =0x000012FE
	add r0, r6, r2
	add r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #8
	bne _080CDEE6
	ldr r3, _080CDF40  @ =0x000011D2
	add r0, r6, r3
	add r0, r1, r0
	mov r1, #17
	strb r1, [r0]
_080CDEE6:
	add r0, r7, #0
	bl sub_080CD8BC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080CDF30
	ldr r1, _080CDF44  @ =gUnknown_08172E3F
	ldrb r0, [r4]
	lsr r0, r0, #3
	add r0, r0, r1
	ldrb r5, [r0]
	ldr r0, _080CDF48  @ =gUnknown_03003E74
	ldrh r0, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r1, r6, r2
	ldrh r1, [r1]
	ldr r3, _080CDF4C  @ =0x00000964
	add r2, r6, r3
	ldrh r2, [r2]
	ldr r3, _080CDF50  @ =gUnknown_08172E31
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080CDF54  @ =gUnknown_08172E38
	add r5, r5, r4
	ldrb r5, [r5]
	mov r4, #34
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	mov r4, #2
	str r4, [sp]
	bl sub_080C6368
	add r0, r7, #0
	bl sub_080CDBA0
_080CDF30:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_080CDF38:
	.4byte gRam
_080CDF3C:
	.4byte 0x000012FE
_080CDF40:
	.4byte 0x000011D2
_080CDF44:
	.4byte gUnknown_08172E3F
_080CDF48:
	.4byte gUnknown_03003E74
_080CDF4C:
	.4byte 0x00000964
_080CDF50:
	.4byte gUnknown_08172E31
_080CDF54:
	.4byte gUnknown_08172E38
	THUMB_FUNC_END sub_080CDEC4

	THUMB_FUNC_START sub_080CDF58
sub_080CDF58: @ 0x080CDF58
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r5, r4, #0
	ldr r6, _080CDFDC  @ =gRam
	ldr r1, _080CDFE0  @ =0x000009AD
	add r0, r6, r1
	ldr r2, _080CDFE4  @ =0x00001605
	add r1, r6, r2
	ldrb r2, [r0]
	ldrb r0, [r1]
	orr r0, r0, r2
	cmp r0, #0
	bne _080CDF92
	ldr r0, _080CDFE8  @ =0x0000120E
	add r3, r6, r0
	add r3, r4, r3
	ldrb r1, [r3]
	add r0, r0, #60
	add r2, r6, r0
	add r2, r4, r2
	ldrb r0, [r2]
	lsl r0, r0, #8
	add r1, r1, r0
	sub r1, r1, #1
	strb r1, [r3]
	lsr r1, r1, #8
	strb r1, [r2]
_080CDF92:
	add r0, r5, #0
	bl sub_080CD8BC
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #0
	bne _080CDFD4
	ldr r4, _080CDFEC  @ =gUnknown_03003E74
	ldrh r0, [r4]
	mov r1, #150
	lsl r1, r1, #4
	add r5, r6, r1
	ldrh r1, [r5]
	ldr r2, _080CDFF0  @ =0x00000964
	add r6, r6, r2
	ldrh r2, [r6]
	ldr r3, _080CDFF4  @ =0x00002254
	str r7, [sp]
	bl sub_080C6368
	ldrh r0, [r4]
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldrh r1, [r5]
	add r1, r1, #8
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r6]
	ldr r3, _080CDFF8  @ =0x00002255
	str r7, [sp]
	bl sub_080C6368
_080CDFD4:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_080CDFDC:
	.4byte gRam
_080CDFE0:
	.4byte 0x000009AD
_080CDFE4:
	.4byte 0x00001605
_080CDFE8:
	.4byte 0x0000120E
_080CDFEC:
	.4byte gUnknown_03003E74
_080CDFF0:
	.4byte 0x00000964
_080CDFF4:
	.4byte 0x00002254
_080CDFF8:
	.4byte 0x00002255
	THUMB_FUNC_END sub_080CDF58

	THUMB_FUNC_START sub_080CDFFC
sub_080CDFFC: @ 0x080CDFFC
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r3, _080CE0C8  @ =gRam
	ldr r1, _080CE0CC  @ =0x000012FE
	add r0, r3, r1
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #80
	bne _080CE06A
	ldr r2, _080CE0D0  @ =0x000009AD
	add r0, r3, r2
	ldr r5, _080CE0D4  @ =0x00001605
	add r1, r3, r5
	ldrb r2, [r0]
	ldrb r0, [r1]
	orr r0, r0, r2
	cmp r0, #0
	bne _080CE06A
	ldr r1, _080CE0D8  @ =0x0000122C
	add r0, r3, r1
	add r0, r4, r0
	ldrb r1, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r0, r3, r2
	strb r1, [r0]
	ldr r5, _080CE0DC  @ =0x00001268
	add r0, r3, r5
	add r0, r4, r0
	ldrb r1, [r0]
	add r2, r2, #1
	add r0, r3, r2
	strb r1, [r0]
	sub r5, r5, #90
	add r0, r3, r5
	add r0, r4, r0
	ldrb r0, [r0]
	ldr r1, _080CE0E0  @ =0x00000964
	add r2, r3, r1
	strb r0, [r2]
	add r5, r5, #60
	add r0, r3, r5
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r5, _080CE0E4  @ =0x00000965
	add r0, r3, r5
	strb r1, [r0]
	ldrh r0, [r2]
	sub r0, r0, #16
	strh r0, [r2]
	mov r0, #18
	bl sub_08079844
_080CE06A:
	ldr r5, _080CE0C8  @ =gRam
	ldr r2, _080CE0E8  @ =gUnknown_08172E6B
	ldr r1, _080CE0CC  @ =0x000012FE
	add r0, r5, r1
	add r6, r4, r0
	ldrb r0, [r6]
	lsr r0, r0, #2
	mov r1, #3
	and r0, r0, r1
	add r0, r0, r2
	ldrb r0, [r0]
	ldr r2, _080CE0EC  @ =0x00000968
	add r7, r5, r2
	strb r0, [r7]
	add r0, r4, #0
	bl sub_080CD8BC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080CE0C0
	ldr r0, _080CE0F0  @ =gUnknown_03003E74
	ldrh r0, [r0]
	mov r3, #150
	lsl r3, r3, #4
	add r1, r5, r3
	ldrh r1, [r1]
	add r3, r3, #4
	add r2, r5, r3
	ldrh r2, [r2]
	ldr r4, _080CE0F4  @ =gUnknown_08172E5F
	ldrb r3, [r6]
	lsr r3, r3, #4
	add r3, r3, r4
	ldrb r5, [r3]
	ldrb r3, [r7]
	mov r4, #53
	orr r3, r3, r4
	lsl r3, r3, #8
	orr r3, r3, r5
	mov r4, #2
	str r4, [sp]
	bl sub_080C6368
_080CE0C0:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_080CE0C8:
	.4byte gRam
_080CE0CC:
	.4byte 0x000012FE
_080CE0D0:
	.4byte 0x000009AD
_080CE0D4:
	.4byte 0x00001605
_080CE0D8:
	.4byte 0x0000122C
_080CE0DC:
	.4byte 0x00001268
_080CE0E0:
	.4byte 0x00000964
_080CE0E4:
	.4byte 0x00000965
_080CE0E8:
	.4byte gUnknown_08172E6B
_080CE0EC:
	.4byte 0x00000968
_080CE0F0:
	.4byte gUnknown_03003E74
_080CE0F4:
	.4byte gUnknown_08172E5F
	THUMB_FUNC_END sub_080CDFFC

	THUMB_FUNC_START sub_080CE0F8
sub_080CE0F8: @ 0x080CE0F8
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r4, r0, #0
	bl sub_080CE380
	ldr r3, _080CE150  @ =gRam
	ldr r0, _080CE154  @ =0x00001286
	add r1, r3, r0
	add r1, r4, r1
	ldrb r0, [r1]
	add r0, r0, #3
	mov r6, #0
	strb r0, [r1]
	ldr r1, _080CE158  @ =0x0000122C
	add r0, r3, r1
	add r0, r4, r0
	ldr r2, _080CE15C  @ =0x00000952
	add r1, r3, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r1, _080CE160  @ =0x0000120E
	add r0, r3, r1
	add r0, r4, r0
	add r2, r2, #6
	add r1, r3, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r5, #247
	bhi _080CE146
	cmp r2, #239
	bls _080CE168
_080CE146:
	ldr r1, _080CE164  @ =0x000011D2
	add r0, r3, r1
	add r0, r4, r0
	strb r6, [r0]
	b _080CE18A
_080CE150:
	.4byte gRam
_080CE154:
	.4byte 0x00001286
_080CE158:
	.4byte 0x0000122C
_080CE15C:
	.4byte 0x00000952
_080CE160:
	.4byte 0x0000120E
_080CE164:
	.4byte 0x000011D2
_080CE168:
	ldr r0, _080CE194  @ =gUnknown_03003E74
	ldrh r0, [r0]
	ldr r4, _080CE198  @ =0x00000996
	add r1, r3, r4
	ldrb r3, [r1]
	lsl r3, r3, #3
	mov r1, #192
	and r3, r3, r1
	mov r1, #52
	orr r3, r3, r1
	lsl r3, r3, #8
	mov r1, #172
	orr r3, r3, r1
	str r6, [sp]
	add r1, r5, #0
	bl sub_080C6368
_080CE18A:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CE194:
	.4byte gUnknown_03003E74
_080CE198:
	.4byte 0x00000996
	THUMB_FUNC_END sub_080CE0F8

	THUMB_FUNC_START sub_080CE19C
sub_080CE19C: @ 0x080CE19C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080CD8BC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080CE24E
	ldr r2, _080CE25C  @ =gRam
	ldr r1, _080CE260  @ =0x000012FE
	add r0, r2, r1
	add r0, r4, r0
	ldrb r0, [r0]
	lsr r0, r0, #1
	mov r1, #6
	and r0, r0, r1
	ldr r3, _080CE264  @ =0x0000096C
	add r1, r2, r3
	strb r0, [r1]
	mov r7, #0
	ldr r4, _080CE268  @ =0x0000096D
	add r1, r2, r4
	mov r0, #1
	strb r0, [r1]
	mov r8, r2
	add r6, r1, #0
	ldr r0, _080CE26C  @ =0x00000964
	add r0, r0, r8
	mov r9, r0
_080CE1E0:
	ldr r0, _080CE264  @ =0x0000096C
	add r0, r0, r8
	ldrb r0, [r0]
	ldrb r5, [r6]
	orr r5, r5, r0
	ldr r0, _080CE270  @ =gUnknown_03003E74
	ldrh r0, [r0]
	add r0, r0, r7
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #150
	lsl r2, r2, #4
	add r2, r2, r8
	ldr r1, _080CE274  @ =gUnknown_08172E6F
	add r1, r5, r1
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r2, _080CE278  @ =gUnknown_08172E77
	add r2, r5, r2
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	mov r3, r9
	ldrh r3, [r3]
	add r2, r2, r3
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _080CE27C  @ =gUnknown_08172E7F
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080CE280  @ =gUnknown_08172E87
	add r4, r5, r4
	ldrb r4, [r4]
	lsl r4, r4, #8
	orr r3, r3, r4
	ldr r4, _080CE284  @ =gUnknown_08172E8F
	add r5, r5, r4
	ldrb r4, [r5]
	str r4, [sp]
	bl sub_080C6368
	ldrb r1, [r6]
	sub r1, r1, #1
	strb r1, [r6]
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsl r1, r1, #24
	cmp r1, #0
	bge _080CE1E0
_080CE24E:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080CE25C:
	.4byte gRam
_080CE260:
	.4byte 0x000012FE
_080CE264:
	.4byte 0x0000096C
_080CE268:
	.4byte 0x0000096D
_080CE26C:
	.4byte 0x00000964
_080CE270:
	.4byte gUnknown_03003E74
_080CE274:
	.4byte gUnknown_08172E6F
_080CE278:
	.4byte gUnknown_08172E77
_080CE27C:
	.4byte gUnknown_08172E7F
_080CE280:
	.4byte gUnknown_08172E87
_080CE284:
	.4byte gUnknown_08172E8F
	THUMB_FUNC_END sub_080CE19C

	THUMB_FUNC_START sub_080CE288
sub_080CE288: @ 0x080CE288
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r7, r0, #24
	add r0, r7, #0
	bl sub_080CD8BC
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r0
	cmp r0, #0
	bne _080CE2F8
	ldr r5, _080CE304  @ =gRam
	ldr r1, _080CE308  @ =0x0000131C
	add r0, r5, r1
	add r0, r7, r0
	ldrb r6, [r0]
	ldr r0, _080CE30C  @ =gUnknown_03003E74
	ldrh r0, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r1, r5, r2
	ldrh r1, [r1]
	ldr r3, _080CE310  @ =0x00000964
	add r2, r5, r3
	ldrh r2, [r2]
	ldr r4, _080CE314  @ =gUnknown_08172E97
	mov r8, r4
	ldr r4, _080CE318  @ =0x000012FE
	add r3, r5, r4
	add r3, r7, r3
	ldrb r3, [r3]
	lsr r3, r3, #3
	add r3, r3, r8
	ldrb r3, [r3]
	ldr r7, _080CE31C  @ =0x00001122
	add r4, r5, r7
	add r4, r6, r4
	ldr r7, _080CE320  @ =0x00000D94
	add r5, r5, r7
	add r6, r6, r5
	ldrb r4, [r4]
	ldrb r5, [r6]
	orr r4, r4, r5
	mov r5, #240
	and r4, r4, r5
	mov r5, #14
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	mov r4, r12
	str r4, [sp]
	bl sub_080C6368
_080CE2F8:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080CE304:
	.4byte gRam
_080CE308:
	.4byte 0x0000131C
_080CE30C:
	.4byte gUnknown_03003E74
_080CE310:
	.4byte 0x00000964
_080CE314:
	.4byte gUnknown_08172E97
_080CE318:
	.4byte 0x000012FE
_080CE31C:
	.4byte 0x00001122
_080CE320:
	.4byte 0x00000D94
	THUMB_FUNC_END sub_080CE288

	THUMB_FUNC_START sub_080CE324
sub_080CE324: @ 0x080CE324
	push {r4,lr}
	ldr r0, _080CE348  @ =gRam
	ldr r1, _080CE34C  @ =0x000015F8
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CE342
	mov r4, #14
_080CE334:
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CD618
	sub r4, r4, #1
	cmp r4, #0
	bge _080CE334
_080CE342:
	pop {r4}
	pop {r0}
	bx r0
_080CE348:
	.4byte gRam
_080CE34C:
	.4byte 0x000015F8
	THUMB_FUNC_END sub_080CE324

	THUMB_FUNC_START sub_080CE350
sub_080CE350: @ 0x080CE350
	push {r4,lr}
	bl sub_080CA54C
	ldr r0, _080CE378  @ =gRam
	ldr r1, _080CE37C  @ =0x000015F8
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CE372
	mov r4, #29
_080CE364:
	lsl r0, r4, #24
	lsr r0, r0, #24
	bl sub_080CD618
	sub r4, r4, #1
	cmp r4, #14
	bgt _080CE364
_080CE372:
	pop {r4}
	pop {r0}
	bx r0
_080CE378:
	.4byte gRam
_080CE37C:
	.4byte 0x000015F8
	THUMB_FUNC_END sub_080CE350

	THUMB_FUNC_START sub_080CE380
sub_080CE380: @ 0x080CE380
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r1, #240
	lsl r1, r1, #21
	add r0, r0, r1
	lsr r0, r0, #24
	bl sub_080CE3A0
	add r0, r4, #0
	bl sub_080CE3A0
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CE380

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CE3A0
sub_080CE3A0: @ 0x080CE3A0
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080CE3D8  @ =gRam
	ldr r2, _080CE3DC  @ =0x00001286
	add r4, r1, r2
	add r4, r0, r4
	ldr r5, _080CE3E0  @ =0x000012C2
	add r3, r1, r5
	add r3, r0, r3
	ldrb r2, [r3]
	sub r5, r5, #180
	add r1, r1, r5
	add r0, r0, r1
	ldrb r1, [r0]
	lsl r1, r1, #8
	add r2, r2, r1
	mov r1, #0
	ldrsb r1, [r4, r1]
	lsl r1, r1, #4
	add r2, r2, r1
	strb r2, [r3]
	lsr r2, r2, #8
	strb r2, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CE3D8:
	.4byte gRam
_080CE3DC:
	.4byte 0x00001286
_080CE3E0:
	.4byte 0x000012C2
	THUMB_FUNC_END sub_080CE3A0

	THUMB_FUNC_START sub_080CE3E4
sub_080CE3E4: @ 0x080CE3E4
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r5, _080CE43C  @ =gRam
	ldr r2, _080CE440  @ =0x0000131C
	add r1, r5, r2
	add r1, r0, r1
	ldrb r6, [r1]
	bl sub_080CD8BC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080CE432
	ldr r0, _080CE444  @ =gUnknown_03003E74
	ldrh r0, [r0]
	mov r3, #150
	lsl r3, r3, #4
	add r1, r5, r3
	ldrh r1, [r1]
	ldr r7, _080CE448  @ =0x00000964
	add r2, r5, r7
	ldrh r2, [r2]
	ldr r3, _080CE44C  @ =0x00001122
	add r4, r5, r3
	add r4, r6, r4
	ldr r7, _080CE450  @ =0x00000D94
	add r3, r5, r7
	add r3, r6, r3
	ldrb r4, [r4]
	ldrb r3, [r3]
	orr r3, r3, r4
	lsl r3, r3, #8
	mov r4, #72
	orr r3, r3, r4
	mov r4, #2
	str r4, [sp]
	bl sub_080C6368
_080CE432:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CE43C:
	.4byte gRam
_080CE440:
	.4byte 0x0000131C
_080CE444:
	.4byte gUnknown_03003E74
_080CE448:
	.4byte 0x00000964
_080CE44C:
	.4byte 0x00001122
_080CE450:
	.4byte 0x00000D94
	THUMB_FUNC_END sub_080CE3E4

	THUMB_FUNC_START sub_080CE454
sub_080CE454: @ 0x080CE454
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r0, r5, #0
	bl sub_080CD8BC
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _080CE49A
	ldr r0, _080CE4A4  @ =gUnknown_03003E74
	ldrh r0, [r0]
	ldr r3, _080CE4A8  @ =gRam
	mov r2, #150
	lsl r2, r2, #4
	add r1, r3, r2
	ldrh r1, [r1]
	ldr r4, _080CE4AC  @ =0x00000964
	add r2, r3, r4
	ldrh r2, [r2]
	ldr r4, _080CE4B0  @ =gUnknown_08172E2F
	ldr r7, _080CE4B4  @ =0x000013EE
	add r3, r3, r7
	add r3, r5, r3
	ldrb r3, [r3]
	add r3, r3, r4
	ldrb r3, [r3]
	mov r5, #148
	lsl r5, r5, #6
	add r4, r5, #0
	orr r3, r3, r4
	str r6, [sp]
	bl sub_080C6368
_080CE49A:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CE4A4:
	.4byte gUnknown_03003E74
_080CE4A8:
	.4byte gRam
_080CE4AC:
	.4byte 0x00000964
_080CE4B0:
	.4byte gUnknown_08172E2F
_080CE4B4:
	.4byte 0x000013EE
	THUMB_FUNC_END sub_080CE454

	THUMB_FUNC_START sub_080CE4B8
sub_080CE4B8: @ 0x080CE4B8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080CE4D4  @ =gRam
	ldr r2, _080CE4D8  @ =0x000012FE
	add r1, r1, r2
	add r1, r0, r1
	ldrb r1, [r1]
	lsr r1, r1, #1
	bl sub_080CE6E4
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CE4D4:
	.4byte gRam
_080CE4D8:
	.4byte 0x000012FE
	THUMB_FUNC_END sub_080CE4B8

	THUMB_FUNC_START sub_080CE4DC
sub_080CE4DC: @ 0x080CE4DC
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r0, r5, #0
	bl sub_080CD8BC
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _080CE52C
	ldr r0, _080CE534  @ =gUnknown_03003E74
	ldrh r0, [r0]
	ldr r4, _080CE538  @ =gRam
	mov r2, #150
	lsl r2, r2, #4
	add r1, r4, r2
	ldrh r1, [r1]
	ldr r3, _080CE53C  @ =0x00000964
	add r2, r4, r3
	ldrh r2, [r2]
	ldr r7, _080CE540  @ =0x0000131C
	add r3, r4, r7
	add r3, r5, r3
	ldrb r5, [r3]
	ldr r7, _080CE544  @ =0x00001122
	add r3, r4, r7
	add r3, r5, r3
	ldr r7, _080CE548  @ =0x00000D94
	add r4, r4, r7
	add r5, r5, r4
	ldrb r4, [r3]
	ldrb r3, [r5]
	orr r3, r3, r4
	lsl r3, r3, #8
	mov r4, #117
	orr r3, r3, r4
	str r6, [sp]
	bl sub_080C6368
_080CE52C:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_080CE534:
	.4byte gUnknown_03003E74
_080CE538:
	.4byte gRam
_080CE53C:
	.4byte 0x00000964
_080CE540:
	.4byte 0x0000131C
_080CE544:
	.4byte 0x00001122
_080CE548:
	.4byte 0x00000D94
	THUMB_FUNC_END sub_080CE4DC

	THUMB_FUNC_START sub_080CE54C
sub_080CE54C: @ 0x080CE54C
	push {r4,r5,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080CD8BC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080CE596
	ldr r2, _080CE5A0  @ =gRam
	ldr r1, _080CE5A4  @ =0x000012FE
	add r0, r2, r1
	add r0, r4, r0
	ldrb r5, [r0]
	lsr r5, r5, #3
	ldr r0, _080CE5A8  @ =gUnknown_03003E74
	ldrh r0, [r0]
	mov r3, #150
	lsl r3, r3, #4
	add r1, r2, r3
	ldrh r1, [r1]
	add r3, r3, #4
	add r2, r2, r3
	ldrh r2, [r2]
	ldr r3, _080CE5AC  @ =gUnknown_08172E27
	add r3, r5, r3
	ldrb r3, [r3]
	ldr r4, _080CE5B0  @ =gUnknown_08172E2B
	add r5, r5, r4
	ldrb r4, [r5]
	lsl r4, r4, #8
	orr r3, r3, r4
	mov r4, #2
	str r4, [sp]
	bl sub_080C6368
_080CE596:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CE5A0:
	.4byte gRam
_080CE5A4:
	.4byte 0x000012FE
_080CE5A8:
	.4byte gUnknown_03003E74
_080CE5AC:
	.4byte gUnknown_08172E27
_080CE5B0:
	.4byte gUnknown_08172E2B
	THUMB_FUNC_END sub_080CE54C

	THUMB_FUNC_START sub_080CE5B4
sub_080CE5B4: @ 0x080CE5B4
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r6, r0, #24
	add r0, r6, #0
	bl sub_080CD8BC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080CE60A
	ldr r0, _080CE614  @ =gUnknown_03003E74
	ldrh r0, [r0]
	ldr r4, _080CE618  @ =gRam
	mov r2, #150
	lsl r2, r2, #4
	add r1, r4, r2
	ldrh r1, [r1]
	ldr r3, _080CE61C  @ =0x00000964
	add r2, r4, r3
	ldrh r2, [r2]
	ldr r5, _080CE620  @ =gUnknown_08172DF9
	ldr r7, _080CE624  @ =0x000012FE
	add r3, r4, r7
	add r3, r6, r3
	ldrb r3, [r3]
	lsr r3, r3, #3
	add r3, r3, r5
	ldrb r3, [r3]
	ldr r5, _080CE628  @ =gUnknown_08172DFB
	add r7, r7, #30
	add r4, r4, r7
	add r4, r6, r4
	ldrb r4, [r4]
	add r4, r4, r5
	ldrb r5, [r4]
	mov r4, #4
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	mov r4, #2
	str r4, [sp]
	bl sub_080C6004
_080CE60A:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CE614:
	.4byte gUnknown_03003E74
_080CE618:
	.4byte gRam
_080CE61C:
	.4byte 0x00000964
_080CE620:
	.4byte gUnknown_08172DF9
_080CE624:
	.4byte 0x000012FE
_080CE628:
	.4byte gUnknown_08172DFB
	THUMB_FUNC_END sub_080CE5B4

	THUMB_FUNC_START sub_080CE62C
sub_080CE62C: @ 0x080CE62C
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080CE648  @ =gRam
	ldr r2, _080CE64C  @ =0x000012FE
	add r1, r1, r2
	add r1, r0, r1
	ldrb r1, [r1]
	lsr r1, r1, #1
	bl sub_080CE690
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CE648:
	.4byte gRam
_080CE64C:
	.4byte 0x000012FE
	THUMB_FUNC_END sub_080CE62C

	THUMB_FUNC_START sub_080CE650
sub_080CE650: @ 0x080CE650
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080CE668  @ =gRam
	ldr r2, _080CE66C  @ =0x000012FE
	add r1, r1, r2
	add r1, r0, r1
	ldrb r1, [r1]
	bl sub_080CE6E4
	pop {r0}
	bx r0
_080CE668:
	.4byte gRam
_080CE66C:
	.4byte 0x000012FE
	THUMB_FUNC_END sub_080CE650

	THUMB_FUNC_START sub_080CE670
sub_080CE670: @ 0x080CE670
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _080CE688  @ =gRam
	ldr r2, _080CE68C  @ =0x000012FE
	add r1, r1, r2
	add r1, r0, r1
	ldrb r1, [r1]
	bl sub_080CE690
	pop {r0}
	bx r0
_080CE688:
	.4byte gRam
_080CE68C:
	.4byte 0x000012FE
	THUMB_FUNC_END sub_080CE670

	THUMB_FUNC_START sub_080CE690
sub_080CE690: @ 0x080CE690
	push {r4-r6,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r6, r1, #24
	bl sub_080CD8BC
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	bne _080CE6D0
	ldr r0, _080CE6D8  @ =gUnknown_03003E74
	ldrh r0, [r0]
	ldr r2, _080CE6DC  @ =gRam
	mov r3, #150
	lsl r3, r3, #4
	add r1, r2, r3
	ldrh r1, [r1]
	add r3, r3, #4
	add r2, r2, r3
	ldrh r2, [r2]
	ldr r4, _080CE6E0  @ =gUnknown_08172DF2
	lsr r3, r6, #26
	add r3, r3, r4
	ldrb r3, [r3]
	mov r6, #144
	lsl r6, r6, #6
	add r4, r6, #0
	orr r3, r3, r4
	str r5, [sp]
	bl sub_080C6004
_080CE6D0:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_080CE6D8:
	.4byte gUnknown_03003E74
_080CE6DC:
	.4byte gRam
_080CE6E0:
	.4byte gUnknown_08172DF2
	THUMB_FUNC_END sub_080CE690

	THUMB_FUNC_START sub_080CE6E4
sub_080CE6E4: @ 0x080CE6E4
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r7, r1, #24
	ldr r5, _080CE750  @ =gRam
	ldr r2, _080CE754  @ =0x0000131C
	add r1, r5, r2
	add r1, r0, r1
	ldrb r6, [r1]
	bl sub_080CD8BC
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r0
	cmp r0, #0
	bne _080CE746
	ldr r0, _080CE758  @ =gUnknown_03003E74
	ldrh r0, [r0]
	mov r3, #150
	lsl r3, r3, #4
	add r1, r5, r3
	ldrh r1, [r1]
	ldr r4, _080CE75C  @ =0x00000964
	add r2, r5, r4
	ldrh r2, [r2]
	ldr r4, _080CE760  @ =gUnknown_08172DF5
	lsr r3, r7, #26
	add r3, r3, r4
	ldrb r3, [r3]
	ldr r7, _080CE764  @ =0x00001122
	add r4, r5, r7
	add r4, r6, r4
	ldr r7, _080CE768  @ =0x00000D94
	add r5, r5, r7
	add r5, r6, r5
	ldrb r4, [r4]
	ldrb r5, [r5]
	orr r4, r4, r5
	mov r5, #240
	and r4, r4, r5
	mov r5, #4
	orr r4, r4, r5
	lsl r4, r4, #8
	orr r3, r3, r4
	mov r4, r12
	str r4, [sp]
	bl sub_080C6004
_080CE746:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CE750:
	.4byte gRam
_080CE754:
	.4byte 0x0000131C
_080CE758:
	.4byte gUnknown_03003E74
_080CE75C:
	.4byte 0x00000964
_080CE760:
	.4byte gUnknown_08172DF5
_080CE764:
	.4byte 0x00001122
_080CE768:
	.4byte 0x00000D94
	THUMB_FUNC_END sub_080CE6E4

	THUMB_FUNC_START sub_080CE76C
sub_080CE76C: @ 0x080CE76C
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r5, r2, #0
	ldr r1, _080CE78C  @ =gRam
	ldr r3, _080CE790  @ =0x00000F62
	add r0, r1, r3
	add r0, r2, r0
	ldrb r0, [r0]
	add r4, r1, #0
	cmp r0, #0
	bne _080CE794
	add r0, r2, #0
	bl sub_080CE7F0
	b _080CE7DE
_080CE78C:
	.4byte gRam
_080CE790:
	.4byte 0x00000F62
_080CE794:
	ldr r1, _080CE7A8  @ =0x00000FC2
	add r0, r4, r1
	add r0, r2, r0
	ldrb r3, [r0]
	cmp r3, #0
	beq _080CE7AC
	add r0, r2, #0
	bl sub_080CEB44
	b _080CE7DE
_080CE7A8:
	.4byte 0x00000FC2
_080CE7AC:
	ldr r0, _080CE7E4  @ =0x00000FA2
	add r1, r4, r0
	add r0, r5, r1
	strb r3, [r0]
	mov r2, #15
_080CE7B6:
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #4
	beq _080CE7DE
	sub r2, r2, #1
	cmp r2, #0
	bge _080CE7B6
	ldr r3, _080CE7E8  @ =0x00000CA2
	add r1, r4, r3
	mov r0, #1
	strh r0, [r1]
	bl sub_080CAEC0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080CE7DE
	ldr r0, _080CE7EC  @ =0x00001649
	add r1, r4, r0
	mov r0, #0
	strb r0, [r1]
_080CE7DE:
	pop {r4,r5}
	pop {r0}
	bx r0
_080CE7E4:
	.4byte 0x00000FA2
_080CE7E8:
	.4byte 0x00000CA2
_080CE7EC:
	.4byte 0x00001649
	THUMB_FUNC_END sub_080CE76C

	THUMB_FUNC_START sub_080CE7F0
sub_080CE7F0: @ 0x080CE7F0
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r5, _080CE81C  @ =gRam
	ldr r1, _080CE820  @ =0x000010F2
	add r0, r5, r1
	add r0, r4, r0
	mov r2, #0
	mov r1, #2
	strb r1, [r0]
	ldr r3, _080CE824  @ =0x00000FC2
	add r0, r5, r3
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #32
	beq _080CE828
	add r1, r0, #0
	add r0, r4, #0
	bl sub_080CE9A8
	b _080CE8CC
	.byte 0x00
	.byte 0x00
_080CE81C:
	.4byte gRam
_080CE820:
	.4byte 0x000010F2
_080CE824:
	.4byte 0x00000FC2
_080CE828:
	ldr r1, _080CE868  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	strb r2, [r0]
	ldr r3, _080CE86C  @ =0x00001770
	add r0, r5, r3
	strb r2, [r0]
	ldr r1, _080CE870  @ =0x00001716
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _080CE85E
	bl sub_080CAEC0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080CE85E
	ldr r3, _080CE874  @ =0x00000FF2
	add r0, r5, r3
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #213
	bls _080CE87C
	ldr r0, _080CE878  @ =0x00000A3C
	add r1, r5, r0
	mov r0, #23
	strh r0, [r1]
_080CE85E:
	add r0, r4, #0
	mov r1, #0
	bl sub_080CE9A8
	b _080CE8CC
_080CE868:
	.4byte 0x00000FA2
_080CE86C:
	.4byte 0x00001770
_080CE870:
	.4byte 0x00001716
_080CE874:
	.4byte 0x00000FF2
_080CE878:
	.4byte 0x00000A3C
_080CE87C:
	cmp r0, #122
	beq _080CE8C0
	ldr r1, _080CE8AC  @ =0x000009DA
	add r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #205
	beq _080CE896
	cmp r0, #105
	beq _080CE896
	cmp r0, #173
	beq _080CE896
	cmp r0, #236
	bne _080CE8B8
_080CE896:
	ldr r0, _080CE8B0  @ =gRam
	ldr r3, _080CE8B4  @ =0x00000AA8
	add r0, r0, r3
	ldrh r2, [r0]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r3, #0
	orr r1, r1, r2
	strh r1, [r0]
	b _080CE8CC
	.byte 0x00
	.byte 0x00
_080CE8AC:
	.4byte 0x000009DA
_080CE8B0:
	.4byte gRam
_080CE8B4:
	.4byte 0x00000AA8
_080CE8B8:
	add r0, r4, #0
	bl sub_080CE8D4
	b _080CE8CC
_080CE8C0:
	bl sub_08075804
	add r0, r4, #0
	mov r1, #0
	bl sub_080CE9A8
_080CE8CC:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CE7F0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080CE8D4
sub_080CE8D4: @ 0x080CE8D4
	push {r4-r7,lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r6, _080CE968  @ =gRam
	ldr r2, _080CE96C  @ =0x00000FF2
	add r0, r6, r2
	add r0, r1, r0
	ldrb r0, [r0]
	ldr r3, _080CE970  @ =0x000015F9
	add r4, r6, r3
	strb r0, [r4]
	mov r0, #234
	mov r2, #14
	bl sub_080C9AAC
	add r5, r0, #0
	lsl r0, r5, #24
	lsr r0, r0, #24
	bl sub_080CAE50
	ldr r1, _080CE974  @ =0x00001152
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #32
	strb r1, [r0]
	ldr r2, _080CE978  @ =0x000010F2
	add r0, r6, r2
	add r0, r5, r0
	mov r3, #161
	lsl r3, r3, #4
	add r1, r6, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CE97C  @ =0x00000F62
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #6
	strb r1, [r0]
	ldr r2, _080CE980  @ =0x00000964
	add r7, r6, r2
	ldrh r1, [r7]
	add r1, r1, #3
	ldr r3, _080CE984  @ =0x00000ED2
	add r0, r6, r3
	add r2, r5, r0
	strb r1, [r2]
	add r3, r3, #32
	add r0, r6, r3
	add r3, r5, r0
	lsr r1, r1, #8
	strb r1, [r3]
	ldrb r0, [r4]
	cmp r0, #206
	beq _080CE998
	cmp r0, #203
	bne _080CE9A2
	ldr r1, _080CE988  @ =0x00000EE2
	add r0, r6, r1
	add r0, r5, r0
	mov r1, #120
	strb r1, [r0]
	strb r1, [r2]
	ldr r2, _080CE98C  @ =0x00000F02
	add r0, r6, r2
	add r0, r5, r0
	ldr r2, _080CE990  @ =0x000016C5
	add r1, r6, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _080CE994  @ =0x000016C1
	add r0, r6, r1
	ldrb r0, [r0]
	b _080CE9A0
_080CE968:
	.4byte gRam
_080CE96C:
	.4byte 0x00000FF2
_080CE970:
	.4byte 0x000015F9
_080CE974:
	.4byte 0x00001152
_080CE978:
	.4byte 0x000010F2
_080CE97C:
	.4byte 0x00000F62
_080CE980:
	.4byte 0x00000964
_080CE984:
	.4byte 0x00000ED2
_080CE988:
	.4byte 0x00000EE2
_080CE98C:
	.4byte 0x00000F02
_080CE990:
	.4byte 0x000016C5
_080CE994:
	.4byte 0x000016C1
_080CE998:
	ldrh r0, [r7]
	add r0, r0, #16
	strb r0, [r2]
	lsr r0, r0, #8
_080CE9A0:
	strb r0, [r3]
_080CE9A2:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080CE8D4

	THUMB_FUNC_START sub_080CE9A8
sub_080CE9A8: @ 0x080CE9A8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r2, r1, #0
	cmp r1, #63
	bls _080CE9DA
	cmp r1, #111
	bls _080CE9CC
	add r0, r4, #0
	bl SpriteActive_MainLong
	b _080CE9DA
_080CE9CC:
	mov r0, #1
	and r2, r2, r0
	cmp r2, #0
	bne _080CE9DA
	add r0, r4, #0
	bl SpriteActive_MainLong
_080CE9DA:
	ldr r5, _080CEB08  @ =gRam
	ldr r0, _080CEB0C  @ =0x0000097C
	add r7, r5, r0
	mov r1, #7
	mov r10, r1
	mov r2, r10
	strb r2, [r7]
	ldr r1, _080CEB10  @ =0x00000FF2
	add r0, r5, r1
	add r0, r4, r0
	ldrb r1, [r0]
	ldr r2, _080CEB14  @ =0x0000097D
	add r2, r2, r5
	mov r9, r2
	strb r1, [r2]
	ldrb r0, [r0]
	cmp r0, #146
	bne _080CEA02
	mov r0, #3
	strb r0, [r7]
_080CEA02:
	ldr r0, _080CEB18  @ =gUnknown_030031F2
	add r6, r4, r0
	ldrb r1, [r6]
	cmp r1, #191
	bhi _080CEAFA
	mov r2, #3
	mov r8, r2
	mov r0, r8
	and r0, r0, r1
	cmp r0, #0
	bne _080CEA20
	add r0, r4, #0
	mov r1, #41
	bl sub_080CF0AC
_080CEA20:
	ldrb r0, [r6]
	mov r1, #0
	ldrsb r1, [r7, r1]
	and r0, r0, r1
	cmp r0, #0
	bne _080CEAFA
	mov r0, #28
	add r1, r4, #0
	bl sub_080CA538
	add r4, r0, #0
	cmp r4, #0
	blt _080CEAFA
	ldr r0, _080CEB1C  @ =0x00000CA2
	add r1, r5, r0
	mov r0, #11
	strh r0, [r1]
	ldr r1, _080CEB20  @ =0x00000FA2
	add r0, r5, r1
	add r0, r4, r0
	mov r1, #4
	strb r1, [r0]
	ldr r2, _080CEB24  @ =0x00001012
	add r0, r5, r2
	add r0, r4, r0
	mov r1, r8
	strb r1, [r0]
	ldr r2, _080CEB28  @ =0x00001122
	add r0, r5, r2
	add r0, r4, r0
	mov r1, #12
	strb r1, [r0]
	bl GetRandomInt
	mov r2, r10
	and r2, r2, r0
	mov r1, r9
	ldrb r0, [r1]
	cmp r0, #146
	bne _080CEA74
	mov r0, #8
	orr r2, r2, r0
_080CEA74:
	mov r0, #150
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r7, _080CEB2C  @ =gUnknown_08172F9C
	add r0, r2, r7
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	ldr r6, _080CEB30  @ =gUnknown_08172FAC
	add r0, r2, r6
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r2, _080CEB34  @ =0x00000EE2
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	add r2, r2, #32
	add r0, r5, r2
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	bl GetRandomInt
	mov r2, r10
	and r2, r2, r0
	mov r1, r9
	ldrb r0, [r1]
	cmp r0, #146
	bne _080CEAB8
	mov r0, #8
	orr r2, r2, r0
	lsl r0, r2, #24
	lsr r2, r0, #24
_080CEAB8:
	ldr r0, _080CEB38  @ =0x00000964
	add r1, r5, r0
	add r0, r2, r7
	ldrb r0, [r0]
	ldrh r1, [r1]
	add r1, r1, r0
	add r0, r2, r6
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldr r2, _080CEB3C  @ =0x00000968
	add r0, r5, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	ldr r2, _080CEB40  @ =0x00000ED2
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
	add r2, r2, #32
	add r0, r5, r2
	add r0, r4, r0
	lsr r1, r1, #8
	strb r1, [r0]
	ldr r1, _080CEB18  @ =gUnknown_030031F2
	add r0, r4, r1
	mov r1, #31
	strb r1, [r0]
	add r2, r2, #112
	add r0, r5, r2
	add r0, r4, r0
	strb r1, [r0]
_080CEAFA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080CEB08:
	.4byte gRam
_080CEB0C:
	.4byte 0x0000097C
_080CEB10:
	.4byte 0x00000FF2
_080CEB14:
	.4byte 0x0000097D
_080CEB18:
	.4byte gUnknown_030031F2
_080CEB1C:
	.4byte 0x00000CA2
_080CEB20:
	.4byte 0x00000FA2
_080CEB24:
	.4byte 0x00001012
_080CEB28:
	.4byte 0x00001122
_080CEB2C:
	.4byte gUnknown_08172F9C
_080CEB30:
	.4byte gUnknown_08172FAC
_080CEB34:
	.4byte 0x00000EE2
_080CEB38:
	.4byte 0x00000964
_080CEB3C:
	.4byte 0x00000968
_080CEB40:
	.4byte 0x00000ED2
	THUMB_FUNC_END sub_080CE9A8

	THUMB_FUNC_START sub_080CEB44
sub_080CEB44: @ 0x080CEB44
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _080CEB78  @ =gRam
	ldr r2, _080CEB7C  @ =0x00000FC2
	add r1, r3, r2
	add r1, r0, r1
	ldrb r1, [r1]
	lsr r1, r1, #2
	mov r2, #7
	eor r1, r1, r2
	mov r2, #150
	lsl r2, r2, #4
	add r3, r3, r2
	strb r1, [r3]
	mov r1, #0
	ldrsb r1, [r3, r1]
	lsl r1, r1, #5
	ldr r2, _080CEB80  @ =gUnknown_08172E9C
	add r1, r1, r2
	mov r2, #4
	bl sub_080C9480
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080CEB78:
	.4byte gRam
_080CEB7C:
	.4byte 0x00000FC2
_080CEB80:
	.4byte gUnknown_08172E9C
	THUMB_FUNC_END sub_080CEB44

	THUMB_FUNC_START sub_080CEB84
sub_080CEB84: @ 0x080CEB84
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl sub_080CEC80
	ldr r3, _080CEC14  @ =gRam
	ldr r1, _080CEC18  @ =0x00000FF2
	add r0, r3, r1
	add r0, r4, r0
	ldrb r2, [r0]
	ldr r0, _080CEC1C  @ =0x00001012
	add r1, r3, r0
	add r1, r4, r1
	ldr r0, _080CEC20  @ =gUnknown_082275A4
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CEC24  @ =0x00001022
	add r1, r3, r0
	add r1, r4, r1
	ldr r0, _080CEC28  @ =gUnknown_0822769D
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CEC2C  @ =0x00001132
	add r1, r3, r0
	add r1, r4, r1
	ldr r0, _080CEC30  @ =gUnknown_08227988
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CEC34  @ =0x000011B2
	add r1, r3, r0
	add r1, r4, r1
	ldr r0, _080CEC38  @ =gUnknown_08227B7A
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CEC3C  @ =0x00000E75
	add r1, r3, r0
	add r1, r4, r1
	ldr r0, _080CEC40  @ =gUnknown_08227C73
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CEC44  @ =0x00000EA5
	add r1, r3, r0
	add r1, r4, r1
	ldr r0, _080CEC48  @ =gUnknown_08227796
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080CEC4C  @ =0x00000D84
	add r1, r3, r0
	add r1, r4, r1
	ldr r0, _080CEC50  @ =gUnknown_08227A81
	add r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _080CEC54  @ =0x000009B2
	add r0, r3, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080CEC58
	mov r2, #171
	lsl r2, r2, #4
	add r0, r3, r2
	b _080CEC5C
	.byte 0x00
	.byte 0x00
_080CEC14:
	.4byte gRam
_080CEC18:
	.4byte 0x00000FF2
_080CEC1C:
	.4byte 0x00001012
_080CEC20:
	.4byte gUnknown_082275A4
_080CEC24:
	.4byte 0x00001022
_080CEC28:
	.4byte gUnknown_0822769D
_080CEC2C:
	.4byte 0x00001132
_080CEC30:
	.4byte gUnknown_08227988
_080CEC34:
	.4byte 0x000011B2
_080CEC38:
	.4byte gUnknown_08227B7A
_080CEC3C:
	.4byte 0x00000E75
_080CEC40:
	.4byte gUnknown_08227C73
_080CEC44:
	.4byte 0x00000EA5
_080CEC48:
	.4byte gUnknown_08227796
_080CEC4C:
	.4byte 0x00000D84
_080CEC50:
	.4byte gUnknown_08227A81
_080CEC54:
	.4byte 0x000009B2
_080CEC58:
	ldr r1, _080CEC74  @ =0x00000B36
	add r0, r3, r1
_080CEC5C:
	ldrb r1, [r0]
	ldr r0, _080CEC78  @ =gRam
	ldr r2, _080CEC7C  @ =0x00000E65
	add r0, r0, r2
	add r0, r4, r0
	strb r1, [r0]
	add r0, r4, #0
	bl Sprite_LoadPalette
	pop {r4}
	pop {r0}
	bx r0
_080CEC74:
	.4byte 0x00000B36
_080CEC78:
	.4byte gRam
_080CEC7C:
	.4byte 0x00000E65
	THUMB_FUNC_END sub_080CEB84

	THUMB_FUNC_START sub_080CEC80
sub_080CEC80: @ 0x080CEC80
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080CEDD8  @ =gRam
	ldr r3, _080CEDDC  @ =0x000010D2
	add r1, r2, r3
	add r1, r0, r1
	mov r3, #0
	strb r3, [r1]
	ldr r4, _080CEDE0  @ =0x00001062
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEDE4  @ =0x00000F22
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	sub r4, r4, #16
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEDE8  @ =0x00001152
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEDEC  @ =0x00000F42
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	sub r4, r4, #16
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEDF0  @ =0x00001162
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEDF4  @ =0x00000F52
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #64
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #32
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #16
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #16
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #16
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEDF8  @ =0x000010E2
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #224
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEDFC  @ =0x00001082
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #16
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #16
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #32
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	sub r4, r4, #128
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEE00  @ =0x00001142
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEE04  @ =0x00001022
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #80
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #160
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	sub r4, r4, #16
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEE08  @ =0x00000F62
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #16
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #16
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEE0C  @ =0x00001182
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEE10  @ =0x00001052
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEE14  @ =0x00001172
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEE18  @ =0x00000D94
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEE1C  @ =0x00001122
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEE20  @ =0x00000D74
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEE24  @ =0x00000EB5
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r4, _080CEE28  @ =0x0000140C
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #16
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #16
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	add r4, r4, #16
	add r1, r2, r4
	add r1, r0, r1
	strb r3, [r1]
	ldr r1, _080CEE2C  @ =0x000013B2
	add r2, r2, r1
	add r0, r0, r2
	strb r3, [r0]
	pop {r4}
	pop {r0}
	bx r0
_080CEDD8:
	.4byte gRam
_080CEDDC:
	.4byte 0x000010D2
_080CEDE0:
	.4byte 0x00001062
_080CEDE4:
	.4byte 0x00000F22
_080CEDE8:
	.4byte 0x00001152
_080CEDEC:
	.4byte 0x00000F42
_080CEDF0:
	.4byte 0x00001162
_080CEDF4:
	.4byte 0x00000F52
_080CEDF8:
	.4byte 0x000010E2
_080CEDFC:
	.4byte 0x00001082
_080CEE00:
	.4byte 0x00001142
_080CEE04:
	.4byte 0x00001022
_080CEE08:
	.4byte 0x00000F62
_080CEE0C:
	.4byte 0x00001182
_080CEE10:
	.4byte 0x00001052
_080CEE14:
	.4byte 0x00001172
_080CEE18:
	.4byte 0x00000D94
_080CEE1C:
	.4byte 0x00001122
_080CEE20:
	.4byte 0x00000D74
_080CEE24:
	.4byte 0x00000EB5
_080CEE28:
	.4byte 0x0000140C
_080CEE2C:
	.4byte 0x000013B2
	THUMB_FUNC_END sub_080CEC80

	THUMB_FUNC_START sub_080CEE30
sub_080CEE30: @ 0x080CEE30
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r8, r6
	lsl r1, r1, #24
	lsr r5, r1, #24
	mov r12, r5
	ldr r4, _080CEF38  @ =gRam
	ldr r1, _080CEF3C  @ =0x00000FF2
	add r0, r4, r1
	add r0, r0, r5
	mov r9, r0
	ldrb r0, [r0]
	cmp r0, #136
	beq _080CEE66
	ldr r2, _080CEF40  @ =0x00000D84
	add r0, r4, r2
	add r0, r5, r0
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _080CEE66
	b _080CEF8C
_080CEE66:
	ldr r3, _080CEF44  @ =0x00000EE2
	add r0, r4, r3
	add r0, r5, r0
	ldrb r0, [r0]
	mov r7, #150
	lsl r7, r7, #4
	add r2, r4, r7
	strb r0, [r2]
	ldr r1, _080CEF48  @ =0x00000F02
	add r0, r4, r1
	add r0, r5, r0
	ldrb r1, [r0]
	ldr r3, _080CEF4C  @ =0x00000961
	add r0, r4, r3
	strb r1, [r0]
	ldr r7, _080CEF50  @ =0x00000ED2
	add r0, r4, r7
	add r0, r5, r0
	ldrb r0, [r0]
	ldr r1, _080CEF54  @ =0x00000964
	add r3, r4, r1
	strb r0, [r3]
	add r7, r7, #32
	add r0, r4, r7
	add r0, r5, r0
	ldrb r1, [r0]
	ldr r7, _080CEF58  @ =0x00000965
	add r0, r4, r7
	strb r1, [r0]
	ldr r1, _080CEF5C  @ =0x00001622
	add r0, r4, r1
	ldrb r0, [r0]
	ldr r7, _080CEF60  @ =0x00001623
	add r1, r4, r7
	ldrb r1, [r1]
	lsl r1, r1, #8
	orr r0, r0, r1
	ldrh r1, [r2]
	lsl r0, r0, #16
	asr r0, r0, #16
	sub r0, r0, r1
	lsl r0, r0, #16
	mov r1, #128
	lsl r1, r1, #13
	add r0, r0, r1
	lsr r0, r0, #16
	cmp r0, #23
	bhi _080CEF8C
	ldr r2, _080CEF64  @ =0x00001624
	add r0, r4, r2
	ldrb r0, [r0]
	add r7, r7, #2
	add r1, r4, r7
	ldrb r1, [r1]
	lsl r1, r1, #8
	orr r0, r0, r1
	ldrh r1, [r3]
	lsl r0, r0, #16
	asr r0, r0, #16
	sub r0, r0, r1
	lsl r0, r0, #16
	ldr r1, _080CEF68  @ =0xFFF80000
	add r0, r0, r1
	lsr r0, r0, #16
	cmp r0, #23
	bhi _080CEF8C
	mov r2, r9
	ldrb r0, [r2]
	cmp r0, #117
	beq _080CEF80
	add r0, r5, #0
	mov r1, #1
	bl sub_080C3FCC
	ldr r3, _080CEF6C  @ =0x00001072
	add r0, r4, r3
	add r0, r5, r0
	mov r1, #15
	strb r1, [r0]
	ldr r7, _080CEF70  @ =0x00001112
	add r1, r4, r7
	add r1, r5, r1
	ldr r2, _080CEF74  @ =0x00000F22
	add r0, r4, r2
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #1
	strb r0, [r1]
	add r3, r3, #144
	add r1, r4, r3
	add r1, r5, r1
	ldr r7, _080CEF78  @ =0x00000F12
	add r0, r4, r7
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #1
	strb r0, [r1]
	ldr r0, _080CEF7C  @ =0x00000F72
	add r1, r4, r0
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080CEF8C
	.byte 0x00
	.byte 0x00
_080CEF38:
	.4byte gRam
_080CEF3C:
	.4byte 0x00000FF2
_080CEF40:
	.4byte 0x00000D84
_080CEF44:
	.4byte 0x00000EE2
_080CEF48:
	.4byte 0x00000F02
_080CEF4C:
	.4byte 0x00000961
_080CEF50:
	.4byte 0x00000ED2
_080CEF54:
	.4byte 0x00000964
_080CEF58:
	.4byte 0x00000965
_080CEF5C:
	.4byte 0x00001622
_080CEF60:
	.4byte 0x00001623
_080CEF64:
	.4byte 0x00001624
_080CEF68:
	.4byte 0xFFF80000
_080CEF6C:
	.4byte 0x00001072
_080CEF70:
	.4byte 0x00001112
_080CEF74:
	.4byte 0x00000F22
_080CEF78:
	.4byte 0x00000F12
_080CEF7C:
	.4byte 0x00000F72
_080CEF80:
	ldr r1, _080CEF98  @ =0x00001062
	add r0, r4, r1
	add r0, r0, r12
	mov r1, r8
	add r1, r1, #1
	strb r1, [r0]
_080CEF8C:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080CEF98:
	.4byte 0x00001062
	THUMB_FUNC_END sub_080CEE30
