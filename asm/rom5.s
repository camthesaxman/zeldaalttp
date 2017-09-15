	.INCLUDE "macro.inc"


	THUMB_FUNC_START sub_0812D32C
sub_0812D32C: @ 0x0812D32C
	push {lr}
	bl 0x0812CFCC
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812D32C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812D338
sub_0812D338: @ 0x0812D338
	push {r4-r6,lr}
	sub sp, sp, #4
	mov r4, #0
	str r4, [sp]
	ldr r5, _0812D3E8  @ =gUnknown_02000C00
	ldr r2, _0812D3EC  @ =0x01000080
	mov r0, sp
	add r1, r5, #0
	bl CpuFastSet
	ldr r0, _0812D3F0  @ =gUnknown_03002230
	ldr r1, _0812D3F4  @ =0x00000CAA
	add r0, r0, r1
	strb r4, [r0]
	bl sub_08130384
	ldr r0, _0812D3F8  @ =gUnknown_02000800
	add r1, r5, #0
	mov r2, #32
	bl CpuSet
	ldr r5, _0812D3FC  @ =gUnknown_083B556C
	ldr r6, _0812D400  @ =gUnknown_02000840
	mov r4, #127
_0812D368:
	ldrh r0, [r5]
	bl sub_08133468
	strh r0, [r6]
	add r5, r5, #2
	add r6, r6, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _0812D368
	ldr r5, _0812D404  @ =gUnknown_0822B048
	ldr r6, _0812D408  @ =gUnknown_020009A0
	mov r4, #15
_0812D380:
	ldrh r0, [r5]
	bl sub_08133468
	strh r0, [r6]
	add r5, r5, #2
	add r6, r6, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _0812D380
	ldr r5, _0812D40C  @ =gUnknown_083B566C
	ldr r6, _0812D410  @ =gUnknown_02000A00
	mov r4, #111
_0812D398:
	ldrh r0, [r5]
	bl sub_08133468
	strh r0, [r6]
	add r5, r5, #2
	add r6, r6, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _0812D398
	ldr r1, _0812D3F0  @ =gUnknown_03002230
	ldr r3, _0812D414  @ =0x00000CFA
	add r2, r1, r3
	mov r4, #0
	mov r3, #0
	mov r0, #2
	strh r0, [r2]
	ldr r0, _0812D418  @ =0x00000CF8
	add r2, r1, r0
	mov r0, #31
	strh r0, [r2]
	ldr r2, _0812D41C  @ =0x00000CFC
	add r0, r1, r2
	strh r3, [r0]
	sub r2, r2, #94
	add r0, r1, r2
	strh r3, [r0]
	ldr r2, _0812D420  @ =gUnknown_02000EE2
	ldr r3, _0812D424  @ =0x00007FFF
	add r0, r3, #0
	strh r0, [r2]
	ldr r0, _0812D428  @ =0x0000099B
	add r1, r1, r0
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0812D42C  @ =gUnknown_02006880
	strb r4, [r0]
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_0812D3E8:
	.4byte gUnknown_02000C00
_0812D3EC:
	.4byte 0x01000080
_0812D3F0:
	.4byte gUnknown_03002230
_0812D3F4:
	.4byte 0x00000CAA
_0812D3F8:
	.4byte gUnknown_02000800
_0812D3FC:
	.4byte gUnknown_083B556C
_0812D400:
	.4byte gUnknown_02000840
_0812D404:
	.4byte gUnknown_0822B048
_0812D408:
	.4byte gUnknown_020009A0
_0812D40C:
	.4byte gUnknown_083B566C
_0812D410:
	.4byte gUnknown_02000A00
_0812D414:
	.4byte 0x00000CFA
_0812D418:
	.4byte 0x00000CF8
_0812D41C:
	.4byte 0x00000CFC
_0812D420:
	.4byte gUnknown_02000EE2
_0812D424:
	.4byte 0x00007FFF
_0812D428:
	.4byte 0x0000099B
_0812D42C:
	.4byte gUnknown_02006880
	THUMB_FUNC_END sub_0812D338

	THUMB_FUNC_START sub_0812D430
sub_0812D430: @ 0x0812D430
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, _0812D4A0  @ =gUnknown_03002230
	mov r0, #201
	lsl r0, r0, #4
	add r1, r4, r0
	mov r0, #128
	strh r0, [r1]
	bl sub_08130D9C
	bl sub_0812EED8
	ldr r0, _0812D4A4  @ =gUnknown_083B37B4
	mov r1, #192
	lsl r1, r1, #19
	bl LZ77UnCompVram
	ldr r0, _0812D4A8  @ =gUnknown_083B47FC
	ldr r1, _0812D4AC  @ =0x06003400
	bl LZ77UnCompVram
	ldr r1, _0812D4B0  @ =0x0000098E
	add r0, r4, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0812D470
	ldr r0, _0812D4B4  @ =gUnknown_083C23D4
	ldr r1, _0812D4B8  @ =0x06002000
	bl LZ77UnCompVram
_0812D470:
	mov r1, sp
	mov r0, #127
	strh r0, [r1]
	ldr r1, _0812D4BC  @ =0x06008000
	ldr r2, _0812D4C0  @ =0x01001000
	mov r0, sp
	bl CpuSet
	bl sub_0812D338
	ldr r0, _0812D4C4  @ =0x000009E8
	add r1, r4, r0
	mov r0, #0
	strh r0, [r1]
	ldr r0, _0812D4C8  @ =0x000009AD
	add r1, r4, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812D4A0:
	.4byte gUnknown_03002230
_0812D4A4:
	.4byte gUnknown_083B37B4
_0812D4A8:
	.4byte gUnknown_083B47FC
_0812D4AC:
	.4byte 0x06003400
_0812D4B0:
	.4byte 0x0000098E
_0812D4B4:
	.4byte gUnknown_083C23D4
_0812D4B8:
	.4byte 0x06002000
_0812D4BC:
	.4byte 0x06008000
_0812D4C0:
	.4byte 0x01001000
_0812D4C4:
	.4byte 0x000009E8
_0812D4C8:
	.4byte 0x000009AD
	THUMB_FUNC_END sub_0812D430

	THUMB_FUNC_START sub_0812D4CC
sub_0812D4CC: @ 0x0812D4CC
	push {r4-r6,lr}
	bl sub_081295F4
	ldr r4, _0812D5A8  @ =gUnknown_03002230
	ldr r0, _0812D5AC  @ =0x0000050C
	add r1, r4, r0
	mov r6, #0
	mov r5, #0
	mov r0, #144
	lsl r0, r0, #5
	strh r0, [r1]
	ldr r1, _0812D5B0  @ =0x04000008
	ldr r2, _0812D5B4  @ =0x0000F004
	add r0, r2, #0
	strh r0, [r1]
	ldr r0, _0812D5B8  @ =0x00000514
	add r1, r4, r0
	ldr r0, _0812D5BC  @ =0x0000F442
	strh r0, [r1]
	ldr r2, _0812D5C0  @ =0x00000516
	add r1, r4, r2
	ldr r0, _0812D5C4  @ =0x0000F842
	strh r0, [r1]
	mov r0, #163
	lsl r0, r0, #3
	add r1, r4, r0
	ldr r0, _0812D5C8  @ =0x0000FC40
	strh r0, [r1]
	sub r2, r2, #6
	add r1, r4, r2
	ldr r0, _0812D5CC  @ =0x00002081
	strh r0, [r1]
	ldr r1, _0812D5D0  @ =0x0000099D
	add r0, r4, r1
	mov r1, #8
	strb r1, [r0]
	mov r2, #149
	lsl r2, r2, #4
	add r0, r4, r2
	strh r1, [r0]
	ldr r1, _0812D5D4  @ =0x00000956
	add r0, r4, r1
	mov r2, #24
	strh r2, [r0]
	ldr r0, _0812D5D8  @ =0x00000952
	add r1, r4, r0
	mov r0, #16
	strh r0, [r1]
	ldr r1, _0812D5DC  @ =0x00000958
	add r0, r4, r1
	strh r2, [r0]
	ldr r0, _0812D5E0  @ =gUnknown_083B4920
	ldr r1, _0812D5E4  @ =0x06011000
	bl LZ77UnCompVram
	ldr r0, _0812D5E8  @ =gUnknown_083B53A0
	ldr r1, _0812D5EC  @ =0x0600C000
	bl LZ77UnCompVram
	ldr r0, _0812D5F0  @ =gUnknown_083B5144
	ldr r1, _0812D5F4  @ =0x0600A000
	bl LZ77UnCompVram
	ldr r2, _0812D5F8  @ =0x0000098E
	add r0, r4, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0812D55E
	ldr r0, _0812D5FC  @ =gUnknown_0822B088
	bl sub_08068E7C
_0812D55E:
	mov r0, #93
	bl sub_0812FCDC
	ldr r1, _0812D600  @ =0x00000CFE
	add r0, r4, r1
	mov r1, #2
	strh r1, [r0]
	ldr r2, _0812D604  @ =0x000009C6
	add r0, r4, r2
	strh r5, [r0]
	ldr r2, _0812D608  @ =0x00000CAE
	add r0, r4, r2
	strb r6, [r0]
	add r2, r2, #2
	add r0, r4, r2
	strb r6, [r0]
	add r2, r2, #74
	add r0, r4, r2
	strh r1, [r0]
	ldr r0, _0812D60C  @ =0x00000CF8
	add r1, r4, r0
	mov r0, #31
	strh r0, [r1]
	ldr r1, _0812D610  @ =0x00000CFC
	add r0, r4, r1
	strh r5, [r0]
	sub r2, r2, #92
	add r0, r4, r2
	strh r5, [r0]
	ldr r0, _0812D614  @ =0x000009AD
	add r1, r4, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
_0812D5A8:
	.4byte gUnknown_03002230
_0812D5AC:
	.4byte 0x0000050C
_0812D5B0:
	.4byte 0x04000008
_0812D5B4:
	.4byte 0x0000F004
_0812D5B8:
	.4byte 0x00000514
_0812D5BC:
	.4byte 0x0000F442
_0812D5C0:
	.4byte 0x00000516
_0812D5C4:
	.4byte 0x0000F842
_0812D5C8:
	.4byte 0x0000FC40
_0812D5CC:
	.4byte 0x00002081
_0812D5D0:
	.4byte 0x0000099D
_0812D5D4:
	.4byte 0x00000956
_0812D5D8:
	.4byte 0x00000952
_0812D5DC:
	.4byte 0x00000958
_0812D5E0:
	.4byte gUnknown_083B4920
_0812D5E4:
	.4byte 0x06011000
_0812D5E8:
	.4byte gUnknown_083B53A0
_0812D5EC:
	.4byte 0x0600C000
_0812D5F0:
	.4byte gUnknown_083B5144
_0812D5F4:
	.4byte 0x0600A000
_0812D5F8:
	.4byte 0x0000098E
_0812D5FC:
	.4byte gUnknown_0822B088
_0812D600:
	.4byte 0x00000CFE
_0812D604:
	.4byte 0x000009C6
_0812D608:
	.4byte 0x00000CAE
_0812D60C:
	.4byte 0x00000CF8
_0812D610:
	.4byte 0x00000CFC
_0812D614:
	.4byte 0x000009AD
	THUMB_FUNC_END sub_0812D4CC

	THUMB_FUNC_START sub_0812D618
sub_0812D618: @ 0x0812D618
	push {r4-r6,lr}
	bl sub_08130D9C
	bl sub_081295F4
	ldr r4, _0812D69C  @ =gUnknown_03002230
	mov r0, #162
	lsl r0, r0, #3
	add r1, r4, r0
	mov r6, #0
	mov r5, #0
	ldr r0, _0812D6A0  @ =0x00002081
	strh r0, [r1]
	mov r2, #149
	lsl r2, r2, #4
	add r1, r4, r2
	mov r0, #8
	strh r0, [r1]
	ldr r1, _0812D6A4  @ =0x00000956
	add r0, r4, r1
	mov r2, #24
	strh r2, [r0]
	ldr r0, _0812D6A8  @ =0x00000952
	add r1, r4, r0
	mov r0, #16
	strh r0, [r1]
	ldr r1, _0812D6AC  @ =0x00000958
	add r0, r4, r1
	strh r2, [r0]
	ldr r0, _0812D6B0  @ =gUnknown_083B47FC
	ldr r1, _0812D6B4  @ =0x06003400
	bl LZ77UnCompVram
	mov r0, #93
	bl sub_0812FCDC
	ldr r2, _0812D6B8  @ =0x00000CFE
	add r0, r4, r2
	mov r1, #2
	strh r1, [r0]
	ldr r2, _0812D6BC  @ =0x000009C6
	add r0, r4, r2
	strh r5, [r0]
	ldr r2, _0812D6C0  @ =0x00000CAE
	add r0, r4, r2
	strb r6, [r0]
	add r2, r2, #2
	add r0, r4, r2
	strb r6, [r0]
	add r2, r2, #74
	add r0, r4, r2
	strh r1, [r0]
	ldr r0, _0812D6C4  @ =0x00000CF8
	add r1, r4, r0
	mov r0, #31
	strh r0, [r1]
	ldr r1, _0812D6C8  @ =0x00000CFC
	add r0, r4, r1
	strh r5, [r0]
	sub r2, r2, #92
	add r4, r4, r2
	strh r5, [r4]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812D69C:
	.4byte gUnknown_03002230
_0812D6A0:
	.4byte 0x00002081
_0812D6A4:
	.4byte 0x00000956
_0812D6A8:
	.4byte 0x00000952
_0812D6AC:
	.4byte 0x00000958
_0812D6B0:
	.4byte gUnknown_083B47FC
_0812D6B4:
	.4byte 0x06003400
_0812D6B8:
	.4byte 0x00000CFE
_0812D6BC:
	.4byte 0x000009C6
_0812D6C0:
	.4byte 0x00000CAE
_0812D6C4:
	.4byte 0x00000CF8
_0812D6C8:
	.4byte 0x00000CFC
	THUMB_FUNC_END sub_0812D618

	THUMB_FUNC_START sub_0812D6CC
sub_0812D6CC: @ 0x0812D6CC
	push {r4,lr}
	bl sub_08126D5C
	ldr r4, _0812D708  @ =gUnknown_03002230
	ldr r1, _0812D70C  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0812D728
	bl sub_08133694
	ldr r1, _0812D710  @ =0x00000CF8
	add r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0812D71C
	ldr r0, _0812D714  @ =0x000009E8
	add r1, r4, r0
	mov r0, #42
	strh r0, [r1]
	ldr r0, _0812D718  @ =0x000009AD
	add r1, r4, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	bl sub_0812E47C
	b _0812D728
_0812D708:
	.4byte gUnknown_03002230
_0812D70C:
	.4byte 0x00000996
_0812D710:
	.4byte 0x00000CF8
_0812D714:
	.4byte 0x000009E8
_0812D718:
	.4byte 0x000009AD
_0812D71C:
	cmp r0, #13
	bne _0812D728
	ldr r0, _0812D730  @ =0x00000514
	add r1, r4, r0
	ldr r0, _0812D734  @ =0x0000F441
	strh r0, [r1]
_0812D728:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812D730:
	.4byte 0x00000514
_0812D734:
	.4byte 0x0000F441
	THUMB_FUNC_END sub_0812D6CC

	THUMB_FUNC_START sub_0812D738
sub_0812D738: @ 0x0812D738
	push {r4,lr}
	bl sub_0812E0A0
	bl sub_08126D5C
	ldr r4, _0812D758  @ =gUnknown_03002230
	ldr r0, _0812D75C  @ =0x00000CF8
	add r1, r4, r0
	ldrh r0, [r1]
	add r2, r0, #0
	cmp r2, #0
	beq _0812D760
	sub r0, r0, #1
	strh r0, [r1]
	b _0812D878
	.byte 0x00
	.byte 0x00
_0812D758:
	.4byte gUnknown_03002230
_0812D75C:
	.4byte 0x00000CF8
_0812D760:
	ldr r1, _0812D794  @ =0x000009E8
	add r3, r4, r1
	ldrh r1, [r3]
	ldr r0, _0812D798  @ =0x000001DB
	cmp r1, r0
	bhi _0812D7FC
	ldr r1, _0812D79C  @ =0x00000534
	add r0, r4, r1
	ldrh r1, [r0]
	mov r0, #13
	and r0, r0, r1
	cmp r0, #0
	beq _0812D7FC
	ldr r1, _0812D7A0  @ =0x0000099D
	add r0, r4, r1
	strb r2, [r0]
	strh r2, [r3]
	ldr r0, _0812D7A4  @ =gUnknown_020023F3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0812D7AC
	ldr r2, _0812D7A8  @ =0x000009AD
	add r1, r4, r2
	mov r0, #12
	strb r0, [r1]
	b _0812D878
_0812D794:
	.4byte 0x000009E8
_0812D798:
	.4byte 0x000001DB
_0812D79C:
	.4byte 0x00000534
_0812D7A0:
	.4byte 0x0000099D
_0812D7A4:
	.4byte gUnknown_020023F3
_0812D7A8:
	.4byte 0x000009AD
_0812D7AC:
	ldr r3, _0812D7E4  @ =0x000009AD
	add r1, r4, r3
	mov r0, #0
	strb r0, [r1]
	ldr r0, _0812D7E8  @ =0x0000050C
	add r2, r4, r0
	ldrh r0, [r2]
	mov r3, #128
	lsl r3, r3, #1
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _0812D7EC  @ =0x0000051E
	add r1, r4, r0
	mov r0, #214
	strh r0, [r1]
	ldr r2, _0812D7F0  @ =0x0000099A
	add r1, r4, r2
	mov r0, #6
	strb r0, [r1]
	ldr r0, _0812D7F4  @ =0x00000191
	bl sub_080AF4FC
	ldr r3, _0812D7F8  @ =0x000009AC
	add r1, r4, r3
	mov r0, #29
	strb r0, [r1]
	b _0812D878
_0812D7E4:
	.4byte 0x000009AD
_0812D7E8:
	.4byte 0x0000050C
_0812D7EC:
	.4byte 0x0000051E
_0812D7F0:
	.4byte 0x0000099A
_0812D7F4:
	.4byte 0x00000191
_0812D7F8:
	.4byte 0x000009AC
_0812D7FC:
	ldr r4, _0812D830  @ =gUnknown_03002230
	ldr r1, _0812D834  @ =0x00000534
	add r0, r4, r1
	ldrh r1, [r0]
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, #0
	beq _0812D844
	mov r0, #73
	mov r1, #0
	bl sub_0812A324
	ldr r2, _0812D838  @ =0x000009EC
	add r0, r4, r2
	mov r1, #0
	strb r1, [r0]
	ldr r3, _0812D83C  @ =0x0000099D
	add r0, r4, r3
	strb r1, [r0]
	ldr r0, _0812D840  @ =0x000009AD
	add r1, r4, r0
	mov r0, #13
	strb r0, [r1]
	b _0812D878
_0812D830:
	.4byte gUnknown_03002230
_0812D834:
	.4byte 0x00000534
_0812D838:
	.4byte 0x000009EC
_0812D83C:
	.4byte 0x0000099D
_0812D840:
	.4byte 0x000009AD
_0812D844:
	ldr r1, _0812D880  @ =0x000009E8
	add r2, r4, r1
	ldrh r0, [r2]
	sub r0, r0, #1
	strh r0, [r2]
	lsl r0, r0, #16
	mov r1, #242
	lsl r1, r1, #17
	cmp r0, r1
	bne _0812D85E
	ldr r1, _0812D884  @ =0x000009F6
	add r0, r4, r1
	strh r3, [r0]
_0812D85E:
	ldrh r1, [r2]
	cmp r1, #0
	bne _0812D878
	ldr r3, _0812D884  @ =0x000009F6
	add r0, r4, r3
	strh r1, [r0]
	ldr r0, _0812D888  @ =0x000009AD
	add r1, r4, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #32
	strh r0, [r2]
_0812D878:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812D880:
	.4byte 0x000009E8
_0812D884:
	.4byte 0x000009F6
_0812D888:
	.4byte 0x000009AD
	THUMB_FUNC_END sub_0812D738

	THUMB_FUNC_START sub_0812D88C
sub_0812D88C: @ 0x0812D88C
	push {r4,r5,lr}
	bl sub_08126D5C
	bl sub_0812E0A0
	ldr r4, _0812D8E4  @ =gUnknown_03002230
	ldr r0, _0812D8E8  @ =0x000009E8
	add r1, r4, r0
	ldrh r0, [r1]
	sub r0, r0, #1
	mov r5, #0
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0812D914
	ldr r0, _0812D8EC  @ =gUnknown_02002434
	ldrh r0, [r0]
	cmp r0, #0
	bne _0812D8FC
	mov r0, #1
	strh r0, [r1]
	ldr r1, _0812D8F0  @ =0x00000534
	add r0, r4, r1
	ldrh r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0812D914
	mov r0, #73
	mov r1, #0
	bl sub_0812A324
	ldr r1, _0812D8F4  @ =0x000009EC
	add r0, r4, r1
	strb r5, [r0]
	sub r1, r1, #79
	add r0, r4, r1
	strb r5, [r0]
	ldr r0, _0812D8F8  @ =0x000009AD
	add r1, r4, r0
	mov r0, #13
	strb r0, [r1]
	b _0812D914
	.byte 0x00
	.byte 0x00
_0812D8E4:
	.4byte gUnknown_03002230
_0812D8E8:
	.4byte 0x000009E8
_0812D8EC:
	.4byte gUnknown_02002434
_0812D8F0:
	.4byte 0x00000534
_0812D8F4:
	.4byte 0x000009EC
_0812D8F8:
	.4byte 0x000009AD
_0812D8FC:
	ldr r0, _0812D91C  @ =0x000009AC
	add r1, r4, r0
	mov r0, #20
	strb r0, [r1]
	ldr r1, _0812D920  @ =0x000009AD
	add r0, r4, r1
	strb r5, [r0]
	ldr r0, _0812D924  @ =gUnknown_02006882
	strb r5, [r0]
	sub r1, r1, #16
	add r0, r4, r1
	strb r5, [r0]
_0812D914:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812D91C:
	.4byte 0x000009AC
_0812D920:
	.4byte 0x000009AD
_0812D924:
	.4byte gUnknown_02006882
	THUMB_FUNC_END sub_0812D88C

	THUMB_FUNC_START sub_0812D928
sub_0812D928: @ 0x0812D928
	push {r4-r6,lr}
	bl sub_08126D5C
	bl sub_0812E0A0
	bl sub_08069F08
	ldr r4, _0812D974  @ =gUnknown_03002230
	ldr r0, _0812D978  @ =0x0000099D
	add r6, r4, r0
	mov r5, #0
	ldrsb r5, [r6, r5]
	cmp r5, #0
	bne _0812D96E
	mov r0, #8
	bl sub_0812A0A0
	ldr r0, _0812D97C  @ =0x00000A36
	add r1, r4, r0
	mov r2, #0
	mov r0, #255
	strh r0, [r1]
	ldr r0, _0812D980  @ =0x000009AC
	add r1, r4, r0
	mov r0, #1
	strb r0, [r1]
	ldr r1, _0812D984  @ =0x00000B52
	add r0, r4, r1
	strh r5, [r0]
	ldr r1, _0812D988  @ =0x000009AD
	add r0, r4, r1
	strb r2, [r0]
	strb r2, [r6]
	ldr r0, _0812D98C  @ =gUnknown_02006880
	strb r2, [r0]
_0812D96E:
	pop {r4-r6}
	pop {r0}
	bx r0
_0812D974:
	.4byte gUnknown_03002230
_0812D978:
	.4byte 0x0000099D
_0812D97C:
	.4byte 0x00000A36
_0812D980:
	.4byte 0x000009AC
_0812D984:
	.4byte 0x00000B52
_0812D988:
	.4byte 0x000009AD
_0812D98C:
	.4byte gUnknown_02006880
	THUMB_FUNC_END sub_0812D928

	THUMB_FUNC_START sub_0812D990
sub_0812D990: @ 0x0812D990
	push {r4-r6,lr}
	bl sub_08126D5C
	bl sub_0812E0A0
	bl sub_08069F08
	ldr r5, _0812D9F0  @ =gUnknown_03002230
	ldr r0, _0812D9F4  @ =0x0000099D
	add r6, r5, r0
	mov r4, #0
	ldrsb r4, [r6, r4]
	cmp r4, #0
	bne _0812D9EA
	mov r0, #8
	bl sub_0812A0A0
	bl sub_0806BE2C
	bl sub_0806BDB8
	ldr r1, _0812D9F8  @ =gUnknown_020023F3
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0812D9FC  @ =0x00000A36
	add r1, r5, r0
	mov r2, #0
	mov r0, #255
	strh r0, [r1]
	ldr r0, _0812DA00  @ =0x000009AC
	add r1, r5, r0
	mov r0, #5
	strb r0, [r1]
	ldr r1, _0812DA04  @ =0x000009AD
	add r0, r5, r1
	strb r2, [r0]
	ldr r1, _0812DA08  @ =0x00000B52
	add r0, r5, r1
	strh r4, [r0]
	ldr r1, _0812DA0C  @ =0x00000A1C
	add r0, r5, r1
	strh r4, [r0]
	strb r2, [r6]
	ldr r0, _0812DA10  @ =gUnknown_02006880
	strb r2, [r0]
_0812D9EA:
	pop {r4-r6}
	pop {r0}
	bx r0
_0812D9F0:
	.4byte gUnknown_03002230
_0812D9F4:
	.4byte 0x0000099D
_0812D9F8:
	.4byte gUnknown_020023F3
_0812D9FC:
	.4byte 0x00000A36
_0812DA00:
	.4byte 0x000009AC
_0812DA04:
	.4byte 0x000009AD
_0812DA08:
	.4byte 0x00000B52
_0812DA0C:
	.4byte 0x00000A1C
_0812DA10:
	.4byte gUnknown_02006880
	THUMB_FUNC_END sub_0812D990

	THUMB_FUNC_START sub_0812DA14
sub_0812DA14: @ 0x0812DA14
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, _0812DA7C  @ =gUnknown_03002230
	ldr r0, _0812DA80  @ =0x000009AD
	add r3, r4, r0
	ldrb r2, [r3]
	sub r0, r2, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #8
	bhi _0812DAB0
	ldr r1, _0812DA84  @ =0x00000534
	add r0, r4, r1
	ldrh r1, [r0]
	mov r0, #13
	and r0, r0, r1
	cmp r0, #0
	beq _0812DAB0
	add r0, r2, #0
	cmp r0, #4
	bhi _0812DAA0
	ldr r0, _0812DA88  @ =gUnknown_02002434
	ldrh r0, [r0]
	cmp r0, #0
	beq _0812DAB0
	ldr r2, _0812DA8C  @ =0x000009E8
	add r1, r4, r2
	mov r0, #42
	strh r0, [r1]
	mov r0, #6
	strb r0, [r3]
	bl sub_0812E47C
	ldr r3, _0812DA90  @ =0x00000514
	add r1, r4, r3
	ldr r0, _0812DA94  @ =0x0000F441
	strh r0, [r1]
	ldr r0, _0812DA98  @ =gUnknown_02000800
	ldr r1, _0812DA9C  @ =gUnknown_02000C00
	mov r2, #128
	lsl r2, r2, #2
	bl CpuSet
	bl sub_08125FA0
	bl sub_08126C48
	b _0812DAB0
	.byte 0x00
	.byte 0x00
_0812DA7C:
	.4byte gUnknown_03002230
_0812DA80:
	.4byte 0x000009AD
_0812DA84:
	.4byte 0x00000534
_0812DA88:
	.4byte gUnknown_02002434
_0812DA8C:
	.4byte 0x000009E8
_0812DA90:
	.4byte 0x00000514
_0812DA94:
	.4byte 0x0000F441
_0812DA98:
	.4byte gUnknown_02000800
_0812DA9C:
	.4byte gUnknown_02000C00
_0812DAA0:
	cmp r0, #7
	bls _0812DAB0
	ldr r1, _0812DC0C  @ =0x0000099D
	add r0, r4, r1
	mov r1, #0
	strb r1, [r0]
	mov r0, #12
	strb r0, [r3]
_0812DAB0:
	ldr r1, _0812DC10  @ =gUnknown_0822B0D4
	ldr r5, _0812DC14  @ =gUnknown_03002230
	ldr r2, _0812DC18  @ =0x000009AD
	add r4, r5, r2
	ldrb r0, [r4]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r2, [r4]
	cmp r2, #13
	bls _0812DACC
	b _0812DE10
_0812DACC:
	cmp r2, #7
	bne _0812DADC
	ldr r3, _0812DC1C  @ =0x000009E8
	add r0, r5, r3
	ldrh r1, [r0]
	ldr r0, _0812DC20  @ =0x000001E3
	cmp r1, r0
	bls _0812DAE2
_0812DADC:
	cmp r2, #7
	bhi _0812DAE2
	b _0812DE10
_0812DAE2:
	ldr r7, _0812DC14  @ =gUnknown_03002230
	ldr r0, _0812DC24  @ =0x000009F6
	add r1, r7, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	ldr r2, _0812DC28  @ =0x0000FFFF
	add r1, r2, #0
	and r0, r0, r1
	mov r1, #48
	and r0, r0, r1
	cmp r0, #0
	bne _0812DAFE
	b _0812DE10
_0812DAFE:
	ldr r3, _0812DC2C  @ =0x0000098E
	add r0, r7, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0812DB0E
	b _0812DC3C
_0812DB0E:
	mov r0, #128
	mov r9, r0
	mov r1, #137
	lsl r1, r1, #4
	add r2, r7, r1
	mov r3, #76
	ldrh r1, [r2, #2]
	ldr r0, _0812DC30  @ =0xFFFFFE00
	mov r8, r0
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #2]
	mov r1, r9
	strb r1, [r2]
	mov r3, #128
	ldrh r1, [r2, #4]
	ldr r6, _0812DC34  @ =0xFFFFFC00
	add r0, r6, #0
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	mov r5, #15
	add r1, r5, #0
	and r1, r1, r0
	mov r3, #80
	orr r1, r1, r3
	ldrb r3, [r2, #3]
	mov r4, #17
	neg r4, r4
	add r0, r4, #0
	and r0, r0, r3
	mov r3, #33
	neg r3, r3
	and r0, r0, r3
	mov r3, #63
	and r0, r0, r3
	mov r3, r9
	orr r0, r0, r3
	strb r0, [r2, #3]
	mov r0, #64
	strb r0, [r2, #1]
	mov r3, #13
	neg r3, r3
	and r1, r1, r3
	mov r0, #8
	orr r1, r1, r0
	strb r1, [r2, #5]
	ldr r1, _0812DC38  @ =0x00000898
	add r2, r7, r1
	mov r3, #108
	ldrh r1, [r2, #2]
	mov r0, r8
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #2]
	mov r3, r9
	strb r3, [r2]
	mov r3, #132
	ldrh r1, [r2, #4]
	add r0, r6, #0
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	add r1, r5, #0
	and r1, r1, r0
	mov r0, #80
	orr r1, r1, r0
	ldrb r3, [r2, #3]
	add r0, r4, #0
	and r0, r0, r3
	mov r3, #33
	neg r3, r3
	and r0, r0, r3
	mov r3, #63
	and r0, r0, r3
	mov r3, r9
	orr r0, r0, r3
	strb r0, [r2, #3]
	mov r0, #64
	strb r0, [r2, #1]
	mov r3, #13
	neg r3, r3
	and r1, r1, r3
	mov r0, #8
	orr r1, r1, r0
	strb r1, [r2, #5]
	mov r1, #138
	lsl r1, r1, #4
	add r0, r7, r1
	mov r2, #140
	ldrh r1, [r0, #2]
	mov r3, r8
	and r3, r3, r1
	orr r3, r3, r2
	strh r3, [r0, #2]
	mov r1, r9
	strb r1, [r0]
	mov r2, #136
	ldrh r1, [r0, #4]
	and r6, r6, r1
	orr r6, r6, r2
	strh r6, [r0, #4]
	ldrb r1, [r0, #5]
	and r5, r5, r1
	mov r2, #80
	orr r5, r5, r2
	ldrb r1, [r0, #3]
	and r4, r4, r1
	mov r3, #33
	neg r3, r3
	and r4, r4, r3
	mov r1, #63
	and r4, r4, r1
	mov r2, r9
	orr r4, r4, r2
	strb r4, [r0, #3]
	mov r3, #64
	strb r3, [r0, #1]
	sub r1, r1, #76
	and r5, r5, r1
	mov r2, #8
	orr r5, r5, r2
	strb r5, [r0, #5]
	b _0812DE10
	.byte 0x00
	.byte 0x00
_0812DC0C:
	.4byte 0x0000099D
_0812DC10:
	.4byte gUnknown_0822B0D4
_0812DC14:
	.4byte gUnknown_03002230
_0812DC18:
	.4byte 0x000009AD
_0812DC1C:
	.4byte 0x000009E8
_0812DC20:
	.4byte 0x000001E3
_0812DC24:
	.4byte 0x000009F6
_0812DC28:
	.4byte 0x0000FFFF
_0812DC2C:
	.4byte 0x0000098E
_0812DC30:
	.4byte 0xFFFFFE00
_0812DC34:
	.4byte 0xFFFFFC00
_0812DC38:
	.4byte 0x00000898
_0812DC3C:
	cmp r0, #1
	bne _0812DD18
	mov r3, #128
	mov r9, r3
	mov r0, #137
	lsl r0, r0, #4
	add r2, r7, r0
	mov r3, #80
	ldrh r1, [r2, #2]
	ldr r0, _0812DD0C  @ =0xFFFFFE00
	mov r8, r0
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #2]
	mov r1, r9
	strb r1, [r2]
	mov r3, #141
	ldrh r1, [r2, #4]
	ldr r6, _0812DD10  @ =0xFFFFFC00
	add r0, r6, #0
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	mov r4, #15
	add r1, r4, #0
	and r1, r1, r0
	mov r3, #80
	orr r1, r1, r3
	ldrb r3, [r2, #3]
	mov r5, #17
	neg r5, r5
	add r0, r5, #0
	and r0, r0, r3
	mov r3, #33
	neg r3, r3
	and r0, r0, r3
	mov r3, #63
	and r0, r0, r3
	mov r3, r9
	orr r0, r0, r3
	strb r0, [r2, #3]
	mov r0, #64
	mov r12, r0
	strb r0, [r2, #1]
	mov r3, #13
	neg r3, r3
	and r1, r1, r3
	mov r0, #8
	orr r1, r1, r0
	strb r1, [r2, #5]
	ldr r1, _0812DD14  @ =0x00000898
	add r2, r7, r1
	mov r3, #112
	ldrh r1, [r2, #2]
	mov r0, r8
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #2]
	mov r3, r9
	strb r3, [r2]
	mov r3, #145
	ldrh r1, [r2, #4]
	add r0, r6, #0
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	add r1, r4, #0
	and r1, r1, r0
	mov r0, #80
	orr r1, r1, r0
	ldrb r3, [r2, #3]
	add r0, r5, #0
	and r0, r0, r3
	mov r3, #33
	neg r3, r3
	and r0, r0, r3
	mov r3, #63
	and r0, r0, r3
	mov r3, r9
	orr r0, r0, r3
	strb r0, [r2, #3]
	mov r0, r12
	strb r0, [r2, #1]
	mov r3, #13
	neg r3, r3
	and r1, r1, r3
	mov r0, #8
	orr r1, r1, r0
	strb r1, [r2, #5]
	mov r1, #138
	lsl r1, r1, #4
	add r0, r7, r1
	mov r2, #144
	ldrh r1, [r0, #2]
	mov r3, r8
	and r3, r3, r1
	orr r3, r3, r2
	strh r3, [r0, #2]
	mov r1, r9
	strb r1, [r0]
	mov r2, #149
	b _0812DDE2
_0812DD0C:
	.4byte 0xFFFFFE00
_0812DD10:
	.4byte 0xFFFFFC00
_0812DD14:
	.4byte 0x00000898
_0812DD18:
	mov r2, #128
	mov r9, r2
	mov r3, #137
	lsl r3, r3, #4
	add r2, r7, r3
	mov r3, #80
	ldrh r1, [r2, #2]
	ldr r0, _0812DE54  @ =0xFFFFFE00
	mov r8, r0
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #2]
	mov r1, r9
	strb r1, [r2]
	mov r3, #151
	ldrh r1, [r2, #4]
	ldr r6, _0812DE58  @ =0xFFFFFC00
	add r0, r6, #0
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	mov r4, #15
	add r1, r4, #0
	and r1, r1, r0
	mov r3, #80
	orr r1, r1, r3
	ldrb r3, [r2, #3]
	mov r5, #17
	neg r5, r5
	add r0, r5, #0
	and r0, r0, r3
	mov r3, #33
	neg r3, r3
	and r0, r0, r3
	mov r3, #63
	and r0, r0, r3
	mov r3, r9
	orr r0, r0, r3
	strb r0, [r2, #3]
	mov r0, #64
	mov r10, r0
	strb r0, [r2, #1]
	mov r3, #13
	neg r3, r3
	and r1, r1, r3
	mov r0, #8
	orr r1, r1, r0
	strb r1, [r2, #5]
	ldr r1, _0812DE5C  @ =0x00000898
	add r2, r7, r1
	mov r3, #112
	ldrh r1, [r2, #2]
	mov r0, r8
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #2]
	mov r3, r9
	strb r3, [r2]
	mov r3, #155
	ldrh r1, [r2, #4]
	add r0, r6, #0
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	add r1, r4, #0
	and r1, r1, r0
	mov r0, #80
	orr r1, r1, r0
	ldrb r3, [r2, #3]
	add r0, r5, #0
	and r0, r0, r3
	mov r3, #33
	neg r3, r3
	and r0, r0, r3
	mov r3, #63
	and r0, r0, r3
	mov r3, r9
	orr r0, r0, r3
	strb r0, [r2, #3]
	mov r0, r10
	strb r0, [r2, #1]
	mov r3, #13
	neg r3, r3
	and r1, r1, r3
	mov r0, #8
	orr r1, r1, r0
	strb r1, [r2, #5]
	mov r1, #138
	lsl r1, r1, #4
	add r0, r7, r1
	mov r2, #144
	ldrh r1, [r0, #2]
	mov r3, r8
	and r3, r3, r1
	orr r3, r3, r2
	strh r3, [r0, #2]
	mov r1, r9
	strb r1, [r0]
	mov r2, #159
_0812DDE2:
	ldrh r1, [r0, #4]
	and r6, r6, r1
	orr r6, r6, r2
	strh r6, [r0, #4]
	ldrb r1, [r0, #5]
	and r4, r4, r1
	mov r2, #80
	orr r4, r4, r2
	ldrb r1, [r0, #3]
	and r5, r5, r1
	mov r3, #33
	neg r3, r3
	and r5, r5, r3
	mov r1, #63
	and r5, r5, r1
	strb r5, [r0, #3]
	mov r2, r9
	strb r2, [r0, #1]
	add r3, r3, #20
	and r4, r4, r3
	mov r1, #8
	orr r4, r4, r1
	strb r4, [r0, #5]
_0812DE10:
	ldr r0, _0812DE60  @ =gUnknown_03002230
	ldr r2, _0812DE64  @ =0x00000952
	add r1, r0, r2
	ldrh r2, [r1]
	ldr r3, _0812DE68  @ =0x00000A2C
	add r1, r0, r3
	strh r2, [r1]
	ldr r2, _0812DE6C  @ =0x00000958
	add r1, r0, r2
	ldrh r2, [r1]
	add r3, r3, #4
	add r1, r0, r3
	strh r2, [r1]
	mov r2, #149
	lsl r2, r2, #4
	add r1, r0, r2
	ldrh r2, [r1]
	sub r3, r3, #2
	add r1, r0, r3
	strh r2, [r1]
	ldr r2, _0812DE70  @ =0x00000956
	add r1, r0, r2
	ldrh r1, [r1]
	add r3, r3, #4
	add r0, r0, r3
	strh r1, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812DE54:
	.4byte 0xFFFFFE00
_0812DE58:
	.4byte 0xFFFFFC00
_0812DE5C:
	.4byte 0x00000898
_0812DE60:
	.4byte gUnknown_03002230
_0812DE64:
	.4byte 0x00000952
_0812DE68:
	.4byte 0x00000A2C
_0812DE6C:
	.4byte 0x00000958
_0812DE70:
	.4byte 0x00000956
	THUMB_FUNC_END sub_0812DA14

	THUMB_FUNC_START sub_0812DE74
sub_0812DE74: @ 0x0812DE74
	push {r4,r5,lr}
	ldr r1, _0812DEA4  @ =gUnknown_03002230
	ldr r0, _0812DEA8  @ =0x00000A05
	add r3, r1, r0
	ldrb r2, [r3]
	sub r0, r0, #1
	add r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0812DEB8
	sub r2, r2, #1
	strb r2, [r3]
	cmp r2, #0
	bge _0812DEB0
	mov r2, #0
	strb r2, [r3]
	mov r0, #2
	strb r0, [r4]
	ldr r0, _0812DEAC  @ =0x00000A06
	add r1, r1, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _0812DEB8
_0812DEA4:
	.4byte gUnknown_03002230
_0812DEA8:
	.4byte 0x00000A05
_0812DEAC:
	.4byte 0x00000A06
_0812DEB0:
	ldr r0, _0812DF1C  @ =gUnknown_0822B11A
	add r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r4]
_0812DEB8:
	ldr r1, _0812DF20  @ =gUnknown_0822B122
	lsl r0, r2, #1
	add r0, r0, r1
	ldrh r2, [r0]
	mov r5, #46
	ldr r3, _0812DF24  @ =gUnknown_03002780
	mov r1, #252
	lsl r1, r1, #1
	add r3, r3, r1
	mov r4, #68
	ldrh r1, [r3, #2]
	ldr r0, _0812DF28  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r4
	strh r0, [r3, #2]
	strb r5, [r3]
	ldr r1, _0812DF2C  @ =0x000003FF
	add r0, r1, #0
	and r2, r2, r0
	ldrh r1, [r3, #4]
	ldr r0, _0812DF30  @ =0xFFFFFC00
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	mov r2, #15
	and r2, r2, r0
	mov r0, #32
	orr r2, r2, r0
	ldrb r1, [r3, #3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	mov r1, #33
	neg r1, r1
	and r0, r0, r1
	mov r1, #63
	and r0, r0, r1
	strb r0, [r3, #3]
	sub r1, r1, #76
	mov r0, #0
	strb r0, [r3, #1]
	and r2, r2, r1
	mov r0, #4
	orr r2, r2, r0
	strb r2, [r3, #5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812DF1C:
	.4byte gUnknown_0822B11A
_0812DF20:
	.4byte gUnknown_0822B122
_0812DF24:
	.4byte gUnknown_03002780
_0812DF28:
	.4byte 0xFFFFFE00
_0812DF2C:
	.4byte 0x000003FF
_0812DF30:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0812DE74

	THUMB_FUNC_START sub_0812DF34
sub_0812DF34: @ 0x0812DF34
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, _0812E07C  @ =gUnknown_03002230
	ldr r2, _0812E080  @ =0x00000A05
	add r0, r1, r2
	ldrb r7, [r0]
	mov r12, r1
	cmp r7, #6
	ble _0812DF4E
	b _0812E06E
_0812DF4E:
	ldr r3, _0812E084  @ =0x00000A07
	add r3, r3, r12
	mov r10, r3
	ldrb r4, [r3]
	cmp r4, #79
	ble _0812DF5C
	mov r4, #79
_0812DF5C:
	ldr r0, _0812E088  @ =0x00000A0C
	add r0, r0, r12
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r6, r4, r0
	add r4, r6, #0
	add r4, r4, #38
	mov r2, #26
	neg r2, r2
	add r2, r2, r6
	mov r8, r2
	mov r5, #1
	cmp r2, #31
	bhi _0812DF7A
	mov r5, #2
_0812DF7A:
	lsl r0, r7, #1
	ldr r3, _0812E08C  @ =gUnknown_0822B130
	add r0, r0, r3
	ldrh r3, [r0]
	mov r2, #232
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r1, [r2, #2]
	ldr r0, _0812E090  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #66
	orr r0, r0, r1
	strh r0, [r2, #2]
	strb r4, [r2]
	ldr r0, _0812E094  @ =0x000003FF
	and r3, r3, r0
	ldrh r1, [r2, #4]
	ldr r0, _0812E098  @ =0xFFFFFC00
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	mov r1, #15
	and r1, r1, r0
	mov r3, #16
	orr r1, r1, r3
	ldrb r3, [r2, #3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r3
	mov r3, #33
	neg r3, r3
	and r0, r0, r3
	mov r3, #63
	and r0, r0, r3
	strb r0, [r2, #3]
	mov r0, #0
	strb r0, [r2, #1]
	mov r0, #3
	mov r9, r0
	lsl r0, r5, #2
	sub r3, r3, #76
	and r1, r1, r3
	orr r1, r1, r0
	strb r1, [r2, #5]
	mov r5, #1
	mov r0, r8
	cmp r0, #31
	bhi _0812DFDE
	mov r5, #2
_0812DFDE:
	add r0, r7, #1
	lsl r0, r0, #1
	ldr r1, _0812E08C  @ =gUnknown_0822B130
	add r0, r0, r1
	ldrh r3, [r0]
	add r4, r6, #0
	add r4, r4, #46
	mov r2, #233
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r1, [r2, #2]
	ldr r0, _0812E090  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #66
	orr r0, r0, r1
	strh r0, [r2, #2]
	strb r4, [r2]
	ldr r0, _0812E094  @ =0x000003FF
	and r3, r3, r0
	ldrh r1, [r2, #4]
	ldr r0, _0812E098  @ =0xFFFFFC00
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	mov r1, #15
	and r1, r1, r0
	mov r3, #16
	orr r1, r1, r3
	ldrb r3, [r2, #3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r3
	mov r3, #33
	neg r3, r3
	and r0, r0, r3
	mov r3, #63
	and r0, r0, r3
	strb r0, [r2, #3]
	mov r0, #0
	strb r0, [r2, #1]
	mov r0, r9
	and r5, r5, r0
	lsl r0, r5, #2
	sub r3, r3, #76
	and r1, r1, r3
	orr r1, r1, r0
	strb r1, [r2, #5]
	ldr r0, _0812E09C  @ =0x00000A04
	add r0, r0, r12
	ldrb r0, [r0]
	cmp r0, #0
	bne _0812E06E
	mov r1, r10
	ldrb r0, [r1]
	add r0, r0, #4
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #4
	beq _0812E064
	cmp r0, #72
	beq _0812E064
	cmp r0, #76
	beq _0812E064
	cmp r0, #88
	bne _0812E06E
_0812E064:
	ldr r1, _0812E080  @ =0x00000A05
	add r1, r1, r12
	ldrb r0, [r1]
	add r0, r0, #2
	strb r0, [r1]
_0812E06E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0812E07C:
	.4byte gUnknown_03002230
_0812E080:
	.4byte 0x00000A05
_0812E084:
	.4byte 0x00000A07
_0812E088:
	.4byte 0x00000A0C
_0812E08C:
	.4byte gUnknown_0822B130
_0812E090:
	.4byte 0xFFFFFE00
_0812E094:
	.4byte 0x000003FF
_0812E098:
	.4byte 0xFFFFFC00
_0812E09C:
	.4byte 0x00000A04
	THUMB_FUNC_END sub_0812DF34

	THUMB_FUNC_START sub_0812E0A0
sub_0812E0A0: @ 0x0812E0A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, _0812E338  @ =gUnknown_03002230
	ldr r2, _0812E33C  @ =0x00000A04
	add r1, r0, r2
	ldrb r3, [r1]
	cmp r3, #0
	beq _0812E0BA
	sub r0, r3, #1
	strb r0, [r1]
_0812E0BA:
	ldr r1, _0812E340  @ =gUnknown_02000C00
	mov r0, #0
	strh r0, [r1]
	ldr r3, _0812E338  @ =gUnknown_03002230
	ldr r0, _0812E344  @ =0x00001643
	add r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0812E0E6
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #31
	bhi _0812E0E6
	ldr r2, _0812E348  @ =0x0000099A
	add r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _0812E0E6
	sub r0, r0, #1
	strb r0, [r1]
_0812E0E6:
	mov r3, #0
	mov r12, r3
	mov r7, #0
	ldr r0, _0812E34C  @ =gUnknown_03002780
	mov r9, r0
	mov r1, #64
	mov r8, r1
	mov r6, #128
	lsl r6, r6, #2
_0812E0F8:
	ldr r2, _0812E350  @ =gUnknown_03002C3C
	mov r3, #0
	ldrsh r0, [r2, r3]
	mov r1, r12
	add r5, r1, r0
	cmp r5, #0
	bge _0812E108
	mov r5, #240
_0812E108:
	sub r0, r7, #3
	mov r4, #2
	cmp r0, #2
	bls _0812E112
	mov r4, #1
_0812E112:
	lsl r2, r7, #1
	mov r3, #128
	lsl r3, r3, #1
	add r2, r2, r3
	mov r0, r9
	add r3, r6, r0
	ldrh r1, [r3, #2]
	ldr r0, _0812E354  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, r8
	orr r0, r0, r1
	strh r0, [r3, #2]
	strb r5, [r3]
	ldr r1, _0812E358  @ =0x000003FF
	add r0, r1, #0
	and r2, r2, r0
	ldrh r1, [r3, #4]
	ldr r0, _0812E35C  @ =0xFFFFFC00
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	mov r1, #15
	and r1, r1, r0
	mov r2, #96
	mov r10, r2
	mov r0, r10
	orr r1, r1, r0
	ldrb r2, [r3, #3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r2
	mov r2, #33
	neg r2, r2
	and r0, r0, r2
	mov r2, #63
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r3, #3]
	mov r0, #0
	strb r0, [r3, #1]
	lsl r0, r4, #2
	mov r2, #13
	neg r2, r2
	and r1, r1, r2
	orr r1, r1, r0
	strb r1, [r3, #5]
	mov r3, #16
	add r12, r12, r3
	add r6, r6, #8
	add r7, r7, #1
	cmp r7, #7
	ble _0812E0F8
	ldr r1, _0812E350  @ =gUnknown_03002C3C
	mov r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r12
	add r1, r3, r0
	add r5, r0, #0
	add r5, r5, #24
	cmp r1, #0
	bge _0812E192
	mov r5, #240
_0812E192:
	add r2, r7, #0
	add r2, r2, #64
	add r4, r5, #0
	sub r4, r4, #8
	lsl r2, r2, #3
	add r2, r2, r9
	mov r3, #56
	ldrh r1, [r2, #2]
	ldr r0, _0812E354  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #2]
	strb r4, [r2]
	mov r3, #222
	ldrh r1, [r2, #4]
	ldr r0, _0812E35C  @ =0xFFFFFC00
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	mov r1, #15
	and r1, r1, r0
	mov r0, r10
	orr r1, r1, r0
	ldrb r3, [r2, #3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r3
	mov r3, #33
	neg r3, r3
	and r0, r0, r3
	mov r3, #63
	and r0, r0, r3
	strb r0, [r2, #3]
	mov r0, #13
	neg r0, r0
	mov r8, r0
	mov r0, #0
	strb r0, [r2, #1]
	mov r3, r8
	and r1, r1, r3
	mov r6, #8
	orr r1, r1, r6
	strb r1, [r2, #5]
	ldr r1, _0812E350  @ =gUnknown_03002C3C
	mov r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r12
	add r1, r3, r0
	add r5, r0, #0
	add r5, r5, #24
	cmp r1, #0
	bge _0812E1FE
	mov r5, #240
_0812E1FE:
	add r2, r7, #0
	add r2, r2, #65
	mov r4, #136
	lsl r4, r4, #1
	lsl r2, r2, #3
	add r2, r2, r9
	mov r3, #48
	ldrh r1, [r2, #2]
	ldr r0, _0812E354  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #2]
	strb r5, [r2]
	ldrh r1, [r2, #4]
	ldr r0, _0812E35C  @ =0xFFFFFC00
	and r0, r0, r1
	orr r0, r0, r4
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	mov r1, #15
	and r1, r1, r0
	mov r0, r10
	orr r1, r1, r0
	ldrb r3, [r2, #3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r3
	mov r3, #33
	neg r3, r3
	and r0, r0, r3
	mov r3, #63
	and r0, r0, r3
	mov r3, #64
	orr r0, r0, r3
	strb r0, [r2, #3]
	mov r0, #0
	strb r0, [r2, #1]
	mov r0, r8
	and r1, r1, r0
	orr r1, r1, r6
	strb r1, [r2, #5]
	ldr r1, _0812E350  @ =gUnknown_03002C3C
	mov r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r12
	add r1, r3, r0
	add r5, r0, #0
	add r5, r5, #24
	cmp r1, #0
	bge _0812E264
	mov r5, #240
_0812E264:
	add r2, r7, #0
	add r2, r2, #66
	add r3, r5, #0
	sub r3, r3, #8
	lsl r2, r2, #3
	add r2, r2, r9
	mov r4, #80
	ldrh r1, [r2, #2]
	ldr r0, _0812E354  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r4
	strh r0, [r2, #2]
	strb r3, [r2]
	mov r3, #223
	ldrh r1, [r2, #4]
	ldr r0, _0812E35C  @ =0xFFFFFC00
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	mov r1, #15
	and r1, r1, r0
	mov r0, r10
	orr r1, r1, r0
	ldrb r3, [r2, #3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r3
	mov r3, #33
	neg r3, r3
	and r0, r0, r3
	mov r3, #63
	and r0, r0, r3
	strb r0, [r2, #3]
	mov r0, #0
	strb r0, [r2, #1]
	mov r0, r8
	and r1, r1, r0
	orr r1, r1, r6
	strb r1, [r2, #5]
	ldr r1, _0812E350  @ =gUnknown_03002C3C
	mov r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r12
	add r1, r3, r0
	add r5, r0, #0
	add r5, r5, #24
	cmp r1, #0
	bge _0812E2C8
	mov r5, #240
_0812E2C8:
	add r2, r7, #0
	add r2, r2, #67
	mov r3, #137
	lsl r3, r3, #1
	lsl r2, r2, #3
	add r2, r2, r9
	ldrh r1, [r2, #2]
	ldr r0, _0812E354  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r4
	strh r0, [r2, #2]
	strb r5, [r2]
	ldrh r1, [r2, #4]
	ldr r0, _0812E35C  @ =0xFFFFFC00
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	mov r1, #15
	and r1, r1, r0
	mov r0, r10
	orr r1, r1, r0
	ldrb r3, [r2, #3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r3
	mov r3, #33
	neg r3, r3
	and r0, r0, r3
	mov r3, #63
	and r0, r0, r3
	mov r3, #64
	orr r0, r0, r3
	strb r0, [r2, #3]
	mov r0, #0
	strb r0, [r2, #1]
	mov r0, r8
	and r1, r1, r0
	orr r1, r1, r6
	strb r1, [r2, #5]
	ldr r2, _0812E350  @ =gUnknown_03002C3C
	mov r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #16
	beq _0812E3C0
	mov r0, #96
	neg r0, r0
	cmp r1, r0
	bne _0812E364
	ldr r0, _0812E338  @ =gUnknown_03002230
	ldr r2, _0812E360  @ =0x00000504
	add r1, r0, r2
	mov r0, #103
	bl sub_0812A324
	b _0812E3B4
_0812E338:
	.4byte gUnknown_03002230
_0812E33C:
	.4byte 0x00000A04
_0812E340:
	.4byte gUnknown_02000C00
_0812E344:
	.4byte 0x00001643
_0812E348:
	.4byte 0x0000099A
_0812E34C:
	.4byte gUnknown_03002780
_0812E350:
	.4byte gUnknown_03002C3C
_0812E354:
	.4byte 0xFFFFFE00
_0812E358:
	.4byte 0x000003FF
_0812E35C:
	.4byte 0xFFFFFC00
_0812E360:
	.4byte 0x00000504
_0812E364:
	cmp r1, #0
	bne _0812E3B4
	ldr r0, _0812E3E4  @ =0x000004BA
	add r0, r0, r9
	strb r1, [r0]
	ldr r1, _0812E3E8  @ =0x000010F3
	add r1, r1, r9
	mov r0, #40
	strb r0, [r1]
	mov r1, r9
	sub r1, r1, #50
	mov r0, #132
	strh r0, [r1]
	ldr r1, _0812E3EC  @ =0x0000044A
	add r1, r1, r9
	mov r0, #31
	strb r0, [r1]
	mov r2, r9
	sub r2, r2, #68
	ldrh r1, [r2]
	mov r3, #128
	lsl r3, r3, #3
	add r0, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _0812E3F0  @ =gUnknown_02000840
	ldr r1, _0812E3F4  @ =gUnknown_02000C40
	mov r2, #96
	bl CpuSet
	ldr r1, _0812E3F8  @ =0x0000044B
	add r1, r1, r9
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0812E3FC  @ =gUnknown_03002230
	ldr r2, _0812E400  @ =0x00000504
	add r1, r0, r2
	mov r0, #15
	bl sub_0812A324
_0812E3B4:
	ldr r2, _0812E3FC  @ =gUnknown_03002230
	ldr r3, _0812E404  @ =0x00000A0C
	add r1, r2, r3
	ldrh r0, [r1]
	add r0, r0, #16
	strh r0, [r1]
_0812E3C0:
	ldr r1, _0812E408  @ =gUnknown_0822B140
	ldr r2, _0812E3FC  @ =gUnknown_03002230
	ldr r3, _0812E40C  @ =0x00000A06
	add r0, r2, r3
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812E3E4:
	.4byte 0x000004BA
_0812E3E8:
	.4byte 0x000010F3
_0812E3EC:
	.4byte 0x0000044A
_0812E3F0:
	.4byte gUnknown_02000840
_0812E3F4:
	.4byte gUnknown_02000C40
_0812E3F8:
	.4byte 0x0000044B
_0812E3FC:
	.4byte gUnknown_03002230
_0812E400:
	.4byte 0x00000504
_0812E404:
	.4byte 0x00000A0C
_0812E408:
	.4byte gUnknown_0822B140
_0812E40C:
	.4byte 0x00000A06
	THUMB_FUNC_END sub_0812E0A0

	THUMB_FUNC_START sub_0812E410
sub_0812E410: @ 0x0812E410
	push {r4,lr}
	bl sub_08126D5C
	bl sub_0812E0A0
	bl sub_081295CC
	ldr r2, _0812E44C  @ =gUnknown_03002230
	ldr r0, _0812E450  @ =0x000009AD
	add r3, r2, r0
	ldrb r1, [r3]
	cmp r1, #0
	bne _0812E470
	ldr r4, _0812E454  @ =0x000009AC
	add r0, r2, r4
	strb r1, [r0]
	ldr r4, _0812E458  @ =0x00001AE2
	add r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0812E460
	ldr r4, _0812E45C  @ =0x0000099D
	add r0, r2, r4
	strb r1, [r0]
	add r4, r4, #75
	add r0, r2, r4
	strh r1, [r0]
	mov r0, #14
	b _0812E46E
	.byte 0x00
	.byte 0x00
_0812E44C:
	.4byte gUnknown_03002230
_0812E450:
	.4byte 0x000009AD
_0812E454:
	.4byte 0x000009AC
_0812E458:
	.4byte 0x00001AE2
_0812E45C:
	.4byte 0x0000099D
_0812E460:
	ldr r4, _0812E478  @ =0x0000099D
	add r0, r2, r4
	strb r1, [r0]
	add r4, r4, #75
	add r0, r2, r4
	strh r1, [r0]
	mov r0, #15
_0812E46E:
	strb r0, [r3]
_0812E470:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812E478:
	.4byte 0x0000099D
	THUMB_FUNC_END sub_0812E410

	THUMB_FUNC_START sub_0812E47C
sub_0812E47C: @ 0x0812E47C
	push {r4,lr}
	ldr r4, _0812E4B0  @ =gUnknown_03002230
	ldr r0, _0812E4B4  @ =0x00000A05
	add r1, r4, r0
	mov r2, #0
	mov r0, #7
	strb r0, [r1]
	ldr r1, _0812E4B8  @ =0x00000A06
	add r0, r4, r1
	strb r2, [r0]
	add r1, r1, #1
	add r0, r4, r1
	strb r2, [r0]
	ldr r0, _0812E4BC  @ =0x00000A0C
	add r1, r4, r0
	ldr r0, _0812E4C0  @ =0x0000FF80
	strh r0, [r1]
	bl sub_0812E0A0
	ldr r1, _0812E4C4  @ =0x00000A3C
	add r4, r4, r1
	mov r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
_0812E4B0:
	.4byte gUnknown_03002230
_0812E4B4:
	.4byte 0x00000A05
_0812E4B8:
	.4byte 0x00000A06
_0812E4BC:
	.4byte 0x00000A0C
_0812E4C0:
	.4byte 0x0000FF80
_0812E4C4:
	.4byte 0x00000A3C
	THUMB_FUNC_END sub_0812E47C

	THUMB_FUNC_START sub_0812E4C8
sub_0812E4C8: @ 0x0812E4C8
	push {r4,r5,lr}
	bl sub_08126D5C
	bl sub_0812E0A0
	ldr r5, _0812E50C  @ =gUnknown_03002230
	ldr r0, _0812E510  @ =0x000009EC
	add r4, r5, r0
	ldrb r1, [r4]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0812E4E6
	bl sub_08069F08
_0812E4E6:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r1, _0812E514  @ =0x0000099D
	add r0, r5, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0812E504
	bl sub_080681B0
	mov r0, #253
	bl SoftReset
_0812E504:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812E50C:
	.4byte gUnknown_03002230
_0812E510:
	.4byte 0x000009EC
_0812E514:
	.4byte 0x0000099D
	THUMB_FUNC_END sub_0812E4C8

	THUMB_FUNC_START sub_0812E518
sub_0812E518: @ 0x0812E518
	push {lr}
	ldr r1, _0812E540  @ =gUnknown_03002230
	ldr r2, _0812E544  @ =0x00001643
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0812E53C
	ldr r2, _0812E548  @ =0x00000A0C
	add r0, r1, r2
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #16
	bne _0812E53C
	ldr r0, _0812E54C  @ =0x00000A06
	add r1, r1, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_0812E53C:
	pop {r0}
	bx r0
_0812E540:
	.4byte gUnknown_03002230
_0812E544:
	.4byte 0x00001643
_0812E548:
	.4byte 0x00000A0C
_0812E54C:
	.4byte 0x00000A06
	THUMB_FUNC_END sub_0812E518

	THUMB_FUNC_START sub_0812E550
sub_0812E550: @ 0x0812E550
	bx lr
	THUMB_FUNC_END sub_0812E550

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812E554
sub_0812E554: @ 0x0812E554
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r7, _0812E6E4  @ =gUnknown_0822B324
	ldr r0, [r7]
	ldr r4, _0812E6E8  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812E6EC  @ =gUnknown_02008800
	add r0, r4, #0
	mov r2, #56
	bl CpuFastSet
	ldr r5, _0812E6F0  @ =gUnknown_02032200
	ldr r1, _0812E6F4  @ =gUnknown_020088E0
	add r0, r5, #0
	mov r2, #56
	bl CpuFastSet
	ldr r0, _0812E6F8  @ =gUnknown_02032160
	ldr r1, _0812E6FC  @ =gUnknown_020089C0
	mov r2, #40
	bl CpuFastSet
	ldr r0, _0812E700  @ =gUnknown_02032400
	mov r10, r0
	ldr r1, _0812E704  @ =gUnknown_02008A60
	mov r2, #16
	bl CpuFastSet
	ldr r0, _0812E708  @ =gUnknown_02032360
	ldr r1, _0812E70C  @ =gUnknown_02008AA0
	mov r2, #40
	bl CpuFastSet
	ldr r1, _0812E710  @ =gUnknown_02032600
	mov r9, r1
	ldr r1, _0812E714  @ =gUnknown_02008B40
	mov r0, r9
	mov r2, #16
	bl CpuFastSet
	ldr r0, _0812E718  @ =gUnknown_02032100
	ldr r1, _0812E71C  @ =gUnknown_02008B80
	mov r2, #24
	bl CpuFastSet
	ldr r0, _0812E720  @ =gUnknown_02032300
	ldr r1, _0812E724  @ =gUnknown_02008BE0
	mov r2, #24
	bl CpuFastSet
	mov r0, #190
	lsl r0, r0, #1
	add r0, r0, r7
	mov r8, r0
	ldr r0, [r0]
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0812E728  @ =gUnknown_020324C0
	ldr r1, _0812E72C  @ =gUnknown_02008C40
	mov r2, #32
	bl CpuFastSet
	ldr r0, _0812E730  @ =gUnknown_020326C0
	ldr r1, _0812E734  @ =gUnknown_02008CC0
	mov r2, #32
	bl CpuFastSet
	ldr r0, _0812E738  @ =gUnknown_02032540
	ldr r1, _0812E73C  @ =gUnknown_02008D40
	mov r2, #24
	bl CpuFastSet
	ldr r0, _0812E740  @ =gUnknown_02032740
	ldr r1, _0812E744  @ =gUnknown_02008DA0
	mov r2, #24
	bl CpuFastSet
	ldr r0, _0812E748  @ =gUnknown_020325A0
	ldr r1, _0812E74C  @ =gUnknown_02008E00
	mov r2, #8
	bl CpuFastSet
	ldr r0, _0812E750  @ =gUnknown_020327A0
	ldr r1, _0812E754  @ =gUnknown_02008E20
	mov r2, #8
	bl CpuFastSet
	ldr r0, [r7]
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0812E758  @ =gUnknown_02032440
	ldr r1, _0812E75C  @ =gUnknown_02008E40
	mov r2, #32
	bl CpuFastSet
	ldr r0, _0812E760  @ =gUnknown_02032640
	ldr r1, _0812E764  @ =gUnknown_02008EC0
	mov r2, #32
	bl CpuFastSet
	mov r1, #192
	lsl r1, r1, #1
	add r6, r7, r1
	ldr r0, [r6]
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0812E768  @ =gUnknown_02032060
	ldr r1, _0812E76C  @ =gUnknown_02008F40
	mov r2, #104
	bl CpuFastSet
	ldr r1, _0812E770  @ =gUnknown_020090E0
	mov r0, r10
	mov r2, #8
	bl CpuFastSet
	ldr r0, _0812E774  @ =gUnknown_02032260
	ldr r1, _0812E778  @ =gUnknown_02009100
	mov r2, #104
	bl CpuFastSet
	ldr r1, _0812E77C  @ =gUnknown_020092A0
	mov r0, r9
	mov r2, #8
	bl CpuFastSet
	ldr r0, _0812E780  @ =gUnknown_02032420
	ldr r1, _0812E784  @ =gUnknown_020092C0
	mov r2, #56
	bl CpuFastSet
	ldr r0, _0812E788  @ =gUnknown_02032620
	ldr r1, _0812E78C  @ =gUnknown_020093A0
	mov r2, #56
	bl CpuFastSet
	mov r1, r8
	ldr r0, [r1]
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0812E790  @ =gUnknown_020325C0
	ldr r1, _0812E794  @ =gUnknown_02009480
	mov r2, #16
	bl CpuFastSet
	ldr r0, _0812E798  @ =gUnknown_020327C0
	ldr r1, _0812E79C  @ =gUnknown_020094C0
	mov r2, #16
	bl CpuFastSet
	mov r1, #168
	lsl r1, r1, #1
	add r0, r7, r1
	ldr r0, [r0]
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812E7A0  @ =gUnknown_02009800
	add r0, r4, #0
	mov r2, #64
	bl CpuFastSet
	ldr r1, _0812E7A4  @ =gUnknown_02009900
	add r0, r5, #0
	mov r2, #64
	bl CpuFastSet
	ldr r0, [r6]
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812E7A8  @ =gUnknown_0200A600
	add r0, r4, #0
	mov r2, #24
	bl CpuFastSet
	ldr r1, _0812E7AC  @ =gUnknown_0200A660
	add r0, r5, #0
	mov r2, #24
	bl CpuFastSet
	bl sub_0812FDEC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812E6E4:
	.4byte gUnknown_0822B324
_0812E6E8:
	.4byte gUnknown_02032000
_0812E6EC:
	.4byte gUnknown_02008800
_0812E6F0:
	.4byte gUnknown_02032200
_0812E6F4:
	.4byte gUnknown_020088E0
_0812E6F8:
	.4byte gUnknown_02032160
_0812E6FC:
	.4byte gUnknown_020089C0
_0812E700:
	.4byte gUnknown_02032400
_0812E704:
	.4byte gUnknown_02008A60
_0812E708:
	.4byte gUnknown_02032360
_0812E70C:
	.4byte gUnknown_02008AA0
_0812E710:
	.4byte gUnknown_02032600
_0812E714:
	.4byte gUnknown_02008B40
_0812E718:
	.4byte gUnknown_02032100
_0812E71C:
	.4byte gUnknown_02008B80
_0812E720:
	.4byte gUnknown_02032300
_0812E724:
	.4byte gUnknown_02008BE0
_0812E728:
	.4byte gUnknown_020324C0
_0812E72C:
	.4byte gUnknown_02008C40
_0812E730:
	.4byte gUnknown_020326C0
_0812E734:
	.4byte gUnknown_02008CC0
_0812E738:
	.4byte gUnknown_02032540
_0812E73C:
	.4byte gUnknown_02008D40
_0812E740:
	.4byte gUnknown_02032740
_0812E744:
	.4byte gUnknown_02008DA0
_0812E748:
	.4byte gUnknown_020325A0
_0812E74C:
	.4byte gUnknown_02008E00
_0812E750:
	.4byte gUnknown_020327A0
_0812E754:
	.4byte gUnknown_02008E20
_0812E758:
	.4byte gUnknown_02032440
_0812E75C:
	.4byte gUnknown_02008E40
_0812E760:
	.4byte gUnknown_02032640
_0812E764:
	.4byte gUnknown_02008EC0
_0812E768:
	.4byte gUnknown_02032060
_0812E76C:
	.4byte gUnknown_02008F40
_0812E770:
	.4byte gUnknown_020090E0
_0812E774:
	.4byte gUnknown_02032260
_0812E778:
	.4byte gUnknown_02009100
_0812E77C:
	.4byte gUnknown_020092A0
_0812E780:
	.4byte gUnknown_02032420
_0812E784:
	.4byte gUnknown_020092C0
_0812E788:
	.4byte gUnknown_02032620
_0812E78C:
	.4byte gUnknown_020093A0
_0812E790:
	.4byte gUnknown_020325C0
_0812E794:
	.4byte gUnknown_02009480
_0812E798:
	.4byte gUnknown_020327C0
_0812E79C:
	.4byte gUnknown_020094C0
_0812E7A0:
	.4byte gUnknown_02009800
_0812E7A4:
	.4byte gUnknown_02009900
_0812E7A8:
	.4byte gUnknown_0200A600
_0812E7AC:
	.4byte gUnknown_0200A660
	THUMB_FUNC_END sub_0812E554

	THUMB_FUNC_START sub_0812E7B0
sub_0812E7B0: @ 0x0812E7B0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, _0812E884  @ =gUnknown_0822B324
	mov r9, r0
	ldr r4, _0812E888  @ =gUnknown_03002230
	ldr r1, _0812E88C  @ =0x00000C9C
	add r0, r4, r1
	ldrh r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r9
	ldr r0, [r0]
	ldr r5, _0812E890  @ =gUnknown_02032000
	add r1, r5, #0
	bl LZ77UnCompWram
	ldr r1, _0812E894  @ =0x06011000
	add r0, r5, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812E898  @ =gUnknown_02032200
	mov r8, r0
	ldr r1, _0812E89C  @ =0x06011400
	mov r2, #128
	bl CpuFastSet
	ldr r7, _0812E8A0  @ =gUnknown_02032400
	ldr r1, _0812E8A4  @ =0x06011800
	add r0, r7, #0
	mov r2, #128
	bl CpuFastSet
	ldr r6, _0812E8A8  @ =gUnknown_02032600
	ldr r1, _0812E8AC  @ =0x06011C00
	add r0, r6, #0
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812E8B0  @ =0x000009AC
	add r4, r4, r1
	ldrb r0, [r4]
	cmp r0, #1
	beq _0812E86E
	mov r1, r9
	ldr r0, [r1, #24]
	add r1, r5, #0
	bl LZ77UnCompWram
	ldr r1, _0812E8B4  @ =0x06010200
	add r0, r5, #0
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812E8B8  @ =0x06010600
	mov r0, r8
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812E8BC  @ =0x06010A00
	add r0, r7, #0
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812E8C0  @ =0x06010E00
	add r0, r6, #0
	mov r2, #128
	bl CpuFastSet
	mov r1, r9
	ldr r0, [r1, #28]
	add r1, r5, #0
	bl LZ77UnCompWram
	ldr r1, _0812E8C4  @ =0x06011200
	add r0, r5, #0
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812E8C8  @ =0x06011600
	mov r0, r8
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812E8CC  @ =0x06011A00
	add r0, r7, #0
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812E8D0  @ =0x06011E00
	add r0, r6, #0
	mov r2, #128
	bl CpuFastSet
_0812E86E:
	ldr r0, _0812E8D4  @ =gUnknown_0823482C
	ldr r1, _0812E8D8  @ =0x06014000
	bl LZ77UnCompVram
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812E884:
	.4byte gUnknown_0822B324
_0812E888:
	.4byte gUnknown_03002230
_0812E88C:
	.4byte 0x00000C9C
_0812E890:
	.4byte gUnknown_02032000
_0812E894:
	.4byte 0x06011000
_0812E898:
	.4byte gUnknown_02032200
_0812E89C:
	.4byte 0x06011400
_0812E8A0:
	.4byte gUnknown_02032400
_0812E8A4:
	.4byte 0x06011800
_0812E8A8:
	.4byte gUnknown_02032600
_0812E8AC:
	.4byte 0x06011C00
_0812E8B0:
	.4byte 0x000009AC
_0812E8B4:
	.4byte 0x06010200
_0812E8B8:
	.4byte 0x06010600
_0812E8BC:
	.4byte 0x06010A00
_0812E8C0:
	.4byte 0x06010E00
_0812E8C4:
	.4byte 0x06011200
_0812E8C8:
	.4byte 0x06011600
_0812E8CC:
	.4byte 0x06011A00
_0812E8D0:
	.4byte 0x06011E00
_0812E8D4:
	.4byte gUnknown_0823482C
_0812E8D8:
	.4byte 0x06014000
	THUMB_FUNC_END sub_0812E7B0

	THUMB_FUNC_START sub_0812E8DC
sub_0812E8DC: @ 0x0812E8DC
	push {r4-r7,lr}
	bl sub_0812E7B0
	ldr r1, _0812E908  @ =gUnknown_0822B624
	ldr r2, _0812E90C  @ =gUnknown_03002230
	ldr r3, _0812E910  @ =0x00000C9B
	add r0, r2, r3
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #255
	beq _0812E956
	cmp r1, #45
	bne _0812E91C
	ldr r1, _0812E914  @ =gUnknown_0822B4E0
	ldr r4, _0812E918  @ =0x0000098E
	add r0, r2, r4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	b _0812E920
_0812E908:
	.4byte gUnknown_0822B624
_0812E90C:
	.4byte gUnknown_03002230
_0812E910:
	.4byte 0x00000C9B
_0812E914:
	.4byte gUnknown_0822B4E0
_0812E918:
	.4byte 0x0000098E
_0812E91C:
	ldr r1, _0812EA9C  @ =gUnknown_0822B324
	ldrb r0, [r0]
_0812E920:
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812EAA0  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812EAA4  @ =0x06012000
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EAA8  @ =gUnknown_02032200
	ldr r1, _0812EAAC  @ =0x06012400
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EAB0  @ =gUnknown_02032400
	ldr r1, _0812EAB4  @ =0x06012800
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EAB8  @ =gUnknown_02032600
	ldr r1, _0812EABC  @ =0x06012C00
	mov r2, #128
	bl CpuFastSet
_0812E956:
	ldr r6, _0812EAC0  @ =gUnknown_0822B624
	ldr r7, _0812EAC4  @ =gUnknown_03002230
	ldr r0, _0812EAC8  @ =0x00000C9B
	add r5, r7, r0
	ldrb r0, [r5]
	lsl r0, r0, #2
	add r1, r6, #1
	add r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #255
	beq _0812E9A4
	ldr r1, _0812EA9C  @ =gUnknown_0822B324
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812EAA0  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812EACC  @ =0x06012200
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EAA8  @ =gUnknown_02032200
	ldr r1, _0812EAD0  @ =0x06012600
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EAB0  @ =gUnknown_02032400
	ldr r1, _0812EAD4  @ =0x06012A00
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EAB8  @ =gUnknown_02032600
	ldr r1, _0812EAD8  @ =0x06012E00
	mov r2, #128
	bl CpuFastSet
_0812E9A4:
	ldrb r0, [r5]
	lsl r0, r0, #2
	add r1, r6, #2
	add r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #255
	beq _0812E9EA
	ldr r1, _0812EA9C  @ =gUnknown_0822B324
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812EAA0  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812EADC  @ =0x06013000
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EAA8  @ =gUnknown_02032200
	ldr r1, _0812EAE0  @ =0x06013400
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EAB0  @ =gUnknown_02032400
	ldr r1, _0812EAE4  @ =0x06013800
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EAB8  @ =gUnknown_02032600
	ldr r1, _0812EAE8  @ =0x06013C00
	mov r2, #128
	bl CpuFastSet
_0812E9EA:
	ldrb r0, [r5]
	lsl r0, r0, #2
	add r1, r6, #3
	add r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #255
	beq _0812EA30
	ldr r1, _0812EA9C  @ =gUnknown_0822B324
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812EAA0  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812EAEC  @ =0x06013200
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EAA8  @ =gUnknown_02032200
	ldr r1, _0812EAF0  @ =0x06013600
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EAB0  @ =gUnknown_02032400
	ldr r1, _0812EAF4  @ =0x06013A00
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EAB8  @ =gUnknown_02032600
	ldr r1, _0812EAF8  @ =0x06013E00
	mov r2, #128
	bl CpuFastSet
_0812EA30:
	ldr r5, _0812EAFC  @ =gUnknown_0822B150
	ldr r6, _0812EB00  @ =gUnknown_0822B4FC
	ldr r1, _0812EB04  @ =0x00000C99
	add r4, r7, r1
	ldrb r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	mov r1, #192
	lsl r1, r1, #19
	bl LZ77UnCompVram
	ldrb r0, [r4]
	lsl r0, r0, #3
	add r1, r6, #1
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	ldr r1, _0812EB08  @ =0x06000800
	bl LZ77UnCompVram
	ldrb r0, [r4]
	lsl r0, r0, #3
	add r1, r6, #2
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	ldr r1, _0812EB0C  @ =0x06001000
	bl LZ77UnCompVram
	ldr r1, _0812EB10  @ =gUnknown_0822B864
	ldr r2, _0812EB14  @ =0x00000C9A
	add r0, r7, r2
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #255
	beq _0812EB1C
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	ldr r1, _0812EB18  @ =0x06001800
	bl LZ77UnCompVram
	b _0812EB32
	.byte 0x00
	.byte 0x00
_0812EA9C:
	.4byte gUnknown_0822B324
_0812EAA0:
	.4byte gUnknown_02032000
_0812EAA4:
	.4byte 0x06012000
_0812EAA8:
	.4byte gUnknown_02032200
_0812EAAC:
	.4byte 0x06012400
_0812EAB0:
	.4byte gUnknown_02032400
_0812EAB4:
	.4byte 0x06012800
_0812EAB8:
	.4byte gUnknown_02032600
_0812EABC:
	.4byte 0x06012C00
_0812EAC0:
	.4byte gUnknown_0822B624
_0812EAC4:
	.4byte gUnknown_03002230
_0812EAC8:
	.4byte 0x00000C9B
_0812EACC:
	.4byte 0x06012200
_0812EAD0:
	.4byte 0x06012600
_0812EAD4:
	.4byte 0x06012A00
_0812EAD8:
	.4byte 0x06012E00
_0812EADC:
	.4byte 0x06013000
_0812EAE0:
	.4byte 0x06013400
_0812EAE4:
	.4byte 0x06013800
_0812EAE8:
	.4byte 0x06013C00
_0812EAEC:
	.4byte 0x06013200
_0812EAF0:
	.4byte 0x06013600
_0812EAF4:
	.4byte 0x06013A00
_0812EAF8:
	.4byte 0x06013E00
_0812EAFC:
	.4byte gUnknown_0822B150
_0812EB00:
	.4byte gUnknown_0822B4FC
_0812EB04:
	.4byte 0x00000C99
_0812EB08:
	.4byte 0x06000800
_0812EB0C:
	.4byte 0x06001000
_0812EB10:
	.4byte gUnknown_0822B864
_0812EB14:
	.4byte 0x00000C9A
_0812EB18:
	.4byte 0x06001800
_0812EB1C:
	ldrb r0, [r4]
	lsl r0, r0, #3
	add r1, r6, #3
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	ldr r1, _0812EB60  @ =0x06001800
	bl LZ77UnCompVram
_0812EB32:
	ldr r1, _0812EB64  @ =gUnknown_0822B864
	ldr r3, _0812EB68  @ =gUnknown_03002230
	ldr r4, _0812EB6C  @ =0x00000C9A
	add r0, r3, r4
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r1, #1
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #255
	beq _0812EBB0
	cmp r0, #83
	bne _0812EB78
	ldr r1, _0812EB70  @ =0x0000098E
	add r0, r3, r1
	ldrb r0, [r0]
	sub r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bhi _0812EB78
	ldr r0, _0812EB74  @ =gUnknown_08270B48
	b _0812EB92
_0812EB60:
	.4byte 0x06001800
_0812EB64:
	.4byte gUnknown_0822B864
_0812EB68:
	.4byte gUnknown_03002230
_0812EB6C:
	.4byte 0x00000C9A
_0812EB70:
	.4byte 0x0000098E
_0812EB74:
	.4byte gUnknown_08270B48
_0812EB78:
	ldr r2, _0812EB9C  @ =gUnknown_0822B150
	ldr r1, _0812EBA0  @ =gUnknown_0822B864
	ldr r0, _0812EBA4  @ =gUnknown_03002230
	ldr r3, _0812EBA8  @ =0x00000C9A
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r1, #1
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
_0812EB92:
	ldr r1, _0812EBAC  @ =0x06002000
	bl LZ77UnCompVram
	b _0812EBCE
	.byte 0x00
	.byte 0x00
_0812EB9C:
	.4byte gUnknown_0822B150
_0812EBA0:
	.4byte gUnknown_0822B864
_0812EBA4:
	.4byte gUnknown_03002230
_0812EBA8:
	.4byte 0x00000C9A
_0812EBAC:
	.4byte 0x06002000
_0812EBB0:
	ldr r2, _0812EBF8  @ =gUnknown_0822B150
	ldr r1, _0812EBFC  @ =gUnknown_0822B4FC
	ldr r4, _0812EC00  @ =0x00000C99
	add r0, r3, r4
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r1, #4
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
	ldr r1, _0812EC04  @ =0x06002000
	bl LZ77UnCompVram
_0812EBCE:
	ldr r1, _0812EC08  @ =gUnknown_0822B864
	ldr r3, _0812EC0C  @ =gUnknown_03002230
	ldr r2, _0812EC10  @ =0x00000C9A
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r1, #2
	add r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #255
	beq _0812EC18
	ldr r0, _0812EBF8  @ =gUnknown_0822B150
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	ldr r1, _0812EC14  @ =0x06002800
	bl LZ77UnCompVram
	b _0812EC36
	.byte 0x00
	.byte 0x00
_0812EBF8:
	.4byte gUnknown_0822B150
_0812EBFC:
	.4byte gUnknown_0822B4FC
_0812EC00:
	.4byte 0x00000C99
_0812EC04:
	.4byte 0x06002000
_0812EC08:
	.4byte gUnknown_0822B864
_0812EC0C:
	.4byte gUnknown_03002230
_0812EC10:
	.4byte 0x00000C9A
_0812EC14:
	.4byte 0x06002800
_0812EC18:
	ldr r2, _0812EC60  @ =gUnknown_0822B150
	ldr r1, _0812EC64  @ =gUnknown_0822B4FC
	ldr r4, _0812EC68  @ =0x00000C99
	add r0, r3, r4
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r1, #5
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
	ldr r1, _0812EC6C  @ =0x06002800
	bl LZ77UnCompVram
_0812EC36:
	ldr r1, _0812EC70  @ =gUnknown_0822B864
	ldr r3, _0812EC74  @ =gUnknown_03002230
	ldr r2, _0812EC78  @ =0x00000C9A
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r1, #3
	add r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #255
	beq _0812EC80
	ldr r0, _0812EC60  @ =gUnknown_0822B150
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	ldr r1, _0812EC7C  @ =0x06003000
	bl LZ77UnCompVram
	b _0812EC9E
	.byte 0x00
	.byte 0x00
_0812EC60:
	.4byte gUnknown_0822B150
_0812EC64:
	.4byte gUnknown_0822B4FC
_0812EC68:
	.4byte 0x00000C99
_0812EC6C:
	.4byte 0x06002800
_0812EC70:
	.4byte gUnknown_0822B864
_0812EC74:
	.4byte gUnknown_03002230
_0812EC78:
	.4byte 0x00000C9A
_0812EC7C:
	.4byte 0x06003000
_0812EC80:
	ldr r2, _0812ECC4  @ =gUnknown_0822B150
	ldr r1, _0812ECC8  @ =gUnknown_0822B4FC
	ldr r4, _0812ECCC  @ =0x00000C99
	add r0, r3, r4
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r1, #6
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
	ldr r1, _0812ECD0  @ =0x06003000
	bl LZ77UnCompVram
_0812EC9E:
	ldr r2, _0812ECC4  @ =gUnknown_0822B150
	ldr r1, _0812ECC8  @ =gUnknown_0822B4FC
	ldr r0, _0812ECD4  @ =gUnknown_03002230
	ldr r3, _0812ECCC  @ =0x00000C99
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r1, #7
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
	ldr r1, _0812ECD8  @ =0x06003800
	bl LZ77UnCompVram
	pop {r4-r7}
	pop {r0}
	bx r0
_0812ECC4:
	.4byte gUnknown_0822B150
_0812ECC8:
	.4byte gUnknown_0822B4FC
_0812ECCC:
	.4byte 0x00000C99
_0812ECD0:
	.4byte 0x06003000
_0812ECD4:
	.4byte gUnknown_03002230
_0812ECD8:
	.4byte 0x06003800
	THUMB_FUNC_END sub_0812E8DC

	THUMB_FUNC_START sub_0812ECDC
sub_0812ECDC: @ 0x0812ECDC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r5, _0812EE58  @ =gUnknown_03002230
	ldr r1, _0812EE5C  @ =gUnknown_03002BBE
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #2
	ldr r1, _0812EE60  @ =gUnknown_0822B9AC
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812EE64  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812EE68  @ =0x06014000
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r7, _0812EE6C  @ =gUnknown_02032200
	ldr r1, _0812EE70  @ =0x06014400
	add r0, r7, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EE74  @ =gUnknown_02032400
	mov r10, r0
	ldr r1, _0812EE78  @ =0x06014800
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812EE7C  @ =gUnknown_02032600
	mov r9, r1
	ldr r1, _0812EE80  @ =0x06014C00
	mov r0, r9
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EE84  @ =gUnknown_0822B324
	mov r8, r0
	ldr r6, _0812EE88  @ =gUnknown_0822B624
	ldr r1, _0812EE8C  @ =0x00000C9B
	add r5, r5, r1
	ldrb r0, [r5]
	lsl r0, r0, #2
	ldr r1, _0812EE90  @ =gUnknown_0822B625
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r8
	ldr r0, [r0]
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812EE94  @ =0x06014200
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812EE98  @ =0x06014600
	add r0, r7, #0
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812EE9C  @ =0x06014A00
	mov r0, r10
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812EEA0  @ =0x06014E00
	mov r0, r9
	mov r2, #128
	bl CpuFastSet
	ldrb r0, [r5]
	lsl r0, r0, #2
	ldr r1, _0812EEA4  @ =gUnknown_0822B626
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r8
	ldr r0, [r0]
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812EEA8  @ =0x06015000
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812EEAC  @ =0x06015400
	add r0, r7, #0
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812EEB0  @ =0x06015800
	mov r0, r10
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812EEB4  @ =0x06015C00
	mov r0, r9
	mov r2, #128
	bl CpuFastSet
	ldrb r0, [r5]
	lsl r0, r0, #2
	add r6, r6, #3
	add r0, r0, r6
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r8
	ldr r0, [r0]
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812EEB8  @ =0x06015200
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812EEBC  @ =0x06015600
	add r0, r7, #0
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812EEC0  @ =0x06015A00
	mov r0, r10
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812EEC4  @ =0x06015E00
	mov r0, r9
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812EE5C  @ =gUnknown_03002BBE
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #2
	ldr r1, _0812EE60  @ =gUnknown_0822B9AC
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0812EEC8  @ =0x06008000
	bl LZ77UnCompVram
	ldrb r0, [r5]
	lsl r0, r0, #2
	ldr r1, _0812EE90  @ =gUnknown_0822B625
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r8
	ldr r0, [r0]
	ldr r1, _0812EECC  @ =0x06008800
	bl LZ77UnCompVram
	ldrb r0, [r5]
	lsl r0, r0, #2
	ldr r1, _0812EEA4  @ =gUnknown_0822B626
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r8
	ldr r0, [r0]
	ldr r1, _0812EED0  @ =0x06009000
	bl LZ77UnCompVram
	ldrb r0, [r5]
	lsl r0, r0, #2
	add r0, r0, r6
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r8
	ldr r0, [r0]
	ldr r1, _0812EED4  @ =0x06009800
	bl LZ77UnCompVram
	bl sub_0812FB90
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0812EE58:
	.4byte gUnknown_03002230
_0812EE5C:
	.4byte gUnknown_03002BBE
_0812EE60:
	.4byte gUnknown_0822B9AC
_0812EE64:
	.4byte gUnknown_02032000
_0812EE68:
	.4byte 0x06014000
_0812EE6C:
	.4byte gUnknown_02032200
_0812EE70:
	.4byte 0x06014400
_0812EE74:
	.4byte gUnknown_02032400
_0812EE78:
	.4byte 0x06014800
_0812EE7C:
	.4byte gUnknown_02032600
_0812EE80:
	.4byte 0x06014C00
_0812EE84:
	.4byte gUnknown_0822B324
_0812EE88:
	.4byte gUnknown_0822B624
_0812EE8C:
	.4byte 0x00000C9B
_0812EE90:
	.4byte gUnknown_0822B625
_0812EE94:
	.4byte 0x06014200
_0812EE98:
	.4byte 0x06014600
_0812EE9C:
	.4byte 0x06014A00
_0812EEA0:
	.4byte 0x06014E00
_0812EEA4:
	.4byte gUnknown_0822B626
_0812EEA8:
	.4byte 0x06015000
_0812EEAC:
	.4byte 0x06015400
_0812EEB0:
	.4byte 0x06015800
_0812EEB4:
	.4byte 0x06015C00
_0812EEB8:
	.4byte 0x06015200
_0812EEBC:
	.4byte 0x06015600
_0812EEC0:
	.4byte 0x06015A00
_0812EEC4:
	.4byte 0x06015E00
_0812EEC8:
	.4byte 0x06008000
_0812EECC:
	.4byte 0x06008800
_0812EED0:
	.4byte 0x06009000
_0812EED4:
	.4byte 0x06009800
	THUMB_FUNC_END sub_0812ECDC

	THUMB_FUNC_START sub_0812EED8
sub_0812EED8: @ 0x0812EED8
	push {r4,r5,lr}
	ldr r0, _0812EF5C  @ =gUnknown_0822B324
	ldr r0, [r0]
	ldr r4, _0812EF60  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812EF64  @ =0x06010000
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EF68  @ =gUnknown_02032200
	ldr r1, _0812EF6C  @ =0x06010400
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EF70  @ =gUnknown_02032400
	ldr r1, _0812EF74  @ =0x06010800
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812EF78  @ =gUnknown_02032600
	ldr r1, _0812EF7C  @ =0x06010C00
	mov r2, #128
	bl CpuFastSet
	ldr r5, _0812EF80  @ =gUnknown_0822B9E4
	ldr r4, _0812EF84  @ =gUnknown_03002230
	ldr r0, _0812EF88  @ =0x0000098E
	add r4, r4, r0
	mov r1, #0
	ldrsb r1, [r4, r1]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	ldr r1, _0812EF8C  @ =0x06004000
	bl LZ77UnCompVram
	mov r1, #0
	ldrsb r1, [r4, r1]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r1, r5, #4
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0812EF90  @ =0x06005000
	bl LZ77UnCompVram
	mov r1, #0
	ldrsb r1, [r4, r1]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r5, r5, #8
	add r0, r0, r5
	ldr r0, [r0]
	ldr r1, _0812EF94  @ =0x06006000
	bl LZ77UnCompVram
	pop {r4,r5}
	pop {r0}
	bx r0
_0812EF5C:
	.4byte gUnknown_0822B324
_0812EF60:
	.4byte gUnknown_02032000
_0812EF64:
	.4byte 0x06010000
_0812EF68:
	.4byte gUnknown_02032200
_0812EF6C:
	.4byte 0x06010400
_0812EF70:
	.4byte gUnknown_02032400
_0812EF74:
	.4byte 0x06010800
_0812EF78:
	.4byte gUnknown_02032600
_0812EF7C:
	.4byte 0x06010C00
_0812EF80:
	.4byte gUnknown_0822B9E4
_0812EF84:
	.4byte gUnknown_03002230
_0812EF88:
	.4byte 0x0000098E
_0812EF8C:
	.4byte 0x06004000
_0812EF90:
	.4byte 0x06005000
_0812EF94:
	.4byte 0x06006000
	THUMB_FUNC_END sub_0812EED8

	THUMB_FUNC_START sub_0812EF98
sub_0812EF98: @ 0x0812EF98
	push {r4-r6,lr}
	ldr r1, _0812EFC0  @ =gUnknown_0822B624
	ldr r2, _0812EFC4  @ =gUnknown_03002230
	ldr r3, _0812EFC8  @ =0x00000C9B
	add r0, r2, r3
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #255
	beq _0812F00E
	cmp r1, #45
	bne _0812EFD4
	ldr r1, _0812EFCC  @ =gUnknown_0822B4E0
	ldr r3, _0812EFD0  @ =0x0000098E
	add r0, r2, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	b _0812EFD8
_0812EFC0:
	.4byte gUnknown_0822B624
_0812EFC4:
	.4byte gUnknown_03002230
_0812EFC8:
	.4byte 0x00000C9B
_0812EFCC:
	.4byte gUnknown_0822B4E0
_0812EFD0:
	.4byte 0x0000098E
_0812EFD4:
	ldr r1, _0812F0F0  @ =gUnknown_0822B324
	ldrb r0, [r0]
_0812EFD8:
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812F0F4  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812F0F8  @ =0x06012000
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F0FC  @ =gUnknown_02032200
	ldr r1, _0812F100  @ =0x06012400
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F104  @ =gUnknown_02032400
	ldr r1, _0812F108  @ =0x06012800
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F10C  @ =gUnknown_02032600
	ldr r1, _0812F110  @ =0x06012C00
	mov r2, #128
	bl CpuFastSet
_0812F00E:
	ldr r6, _0812F114  @ =gUnknown_0822B624
	ldr r0, _0812F118  @ =gUnknown_03002230
	ldr r1, _0812F11C  @ =0x00000C9B
	add r5, r0, r1
	ldrb r0, [r5]
	lsl r0, r0, #2
	add r1, r6, #1
	add r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #255
	beq _0812F05C
	ldr r1, _0812F0F0  @ =gUnknown_0822B324
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812F0F4  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812F120  @ =0x06012200
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F0FC  @ =gUnknown_02032200
	ldr r1, _0812F124  @ =0x06012600
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F104  @ =gUnknown_02032400
	ldr r1, _0812F128  @ =0x06012A00
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F10C  @ =gUnknown_02032600
	ldr r1, _0812F12C  @ =0x06012E00
	mov r2, #128
	bl CpuFastSet
_0812F05C:
	ldrb r0, [r5]
	lsl r0, r0, #2
	add r1, r6, #2
	add r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #255
	beq _0812F0A2
	ldr r1, _0812F0F0  @ =gUnknown_0822B324
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812F0F4  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812F130  @ =0x06013000
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F0FC  @ =gUnknown_02032200
	ldr r1, _0812F134  @ =0x06013400
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F104  @ =gUnknown_02032400
	ldr r1, _0812F138  @ =0x06013800
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F10C  @ =gUnknown_02032600
	ldr r1, _0812F13C  @ =0x06013C00
	mov r2, #128
	bl CpuFastSet
_0812F0A2:
	ldrb r0, [r5]
	lsl r0, r0, #2
	add r1, r6, #3
	add r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #255
	beq _0812F0E8
	ldr r1, _0812F0F0  @ =gUnknown_0822B324
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812F0F4  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812F140  @ =0x06013200
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F0FC  @ =gUnknown_02032200
	ldr r1, _0812F144  @ =0x06013600
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F104  @ =gUnknown_02032400
	ldr r1, _0812F148  @ =0x06013A00
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F10C  @ =gUnknown_02032600
	ldr r1, _0812F14C  @ =0x06013E00
	mov r2, #128
	bl CpuFastSet
_0812F0E8:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812F0F0:
	.4byte gUnknown_0822B324
_0812F0F4:
	.4byte gUnknown_02032000
_0812F0F8:
	.4byte 0x06012000
_0812F0FC:
	.4byte gUnknown_02032200
_0812F100:
	.4byte 0x06012400
_0812F104:
	.4byte gUnknown_02032400
_0812F108:
	.4byte 0x06012800
_0812F10C:
	.4byte gUnknown_02032600
_0812F110:
	.4byte 0x06012C00
_0812F114:
	.4byte gUnknown_0822B624
_0812F118:
	.4byte gUnknown_03002230
_0812F11C:
	.4byte 0x00000C9B
_0812F120:
	.4byte 0x06012200
_0812F124:
	.4byte 0x06012600
_0812F128:
	.4byte 0x06012A00
_0812F12C:
	.4byte 0x06012E00
_0812F130:
	.4byte 0x06013000
_0812F134:
	.4byte 0x06013400
_0812F138:
	.4byte 0x06013800
_0812F13C:
	.4byte 0x06013C00
_0812F140:
	.4byte 0x06013200
_0812F144:
	.4byte 0x06013600
_0812F148:
	.4byte 0x06013A00
_0812F14C:
	.4byte 0x06013E00
	THUMB_FUNC_END sub_0812EF98

	THUMB_FUNC_START sub_0812F150
sub_0812F150: @ 0x0812F150
	push {r4-r6,lr}
	ldr r5, _0812F1A4  @ =gUnknown_0822B864
	ldr r6, _0812F1A8  @ =gUnknown_03002230
	ldr r0, _0812F1AC  @ =0x00000C9A
	add r4, r6, r0
	ldrb r0, [r4]
	lsl r0, r0, #2
	add r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #255
	beq _0812F176
	ldr r0, _0812F1B0  @ =gUnknown_0822B150
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	ldr r1, _0812F1B4  @ =0x06001800
	bl LZ77UnCompVram
_0812F176:
	ldrb r0, [r4]
	lsl r0, r0, #2
	add r1, r5, #1
	add r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #255
	beq _0812F1E4
	cmp r1, #83
	bne _0812F1C4
	ldr r1, _0812F1B8  @ =0x0000098E
	add r0, r6, r1
	ldrb r0, [r0]
	sub r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bhi _0812F1C4
	ldr r0, _0812F1BC  @ =gUnknown_08270B48
	ldr r1, _0812F1C0  @ =0x06002000
	bl LZ77UnCompVram
	b _0812F1E4
	.byte 0x00
	.byte 0x00
_0812F1A4:
	.4byte gUnknown_0822B864
_0812F1A8:
	.4byte gUnknown_03002230
_0812F1AC:
	.4byte 0x00000C9A
_0812F1B0:
	.4byte gUnknown_0822B150
_0812F1B4:
	.4byte 0x06001800
_0812F1B8:
	.4byte 0x0000098E
_0812F1BC:
	.4byte gUnknown_08270B48
_0812F1C0:
	.4byte 0x06002000
_0812F1C4:
	ldr r2, _0812F234  @ =gUnknown_0822B150
	ldr r1, _0812F238  @ =gUnknown_0822B864
	ldr r0, _0812F23C  @ =gUnknown_03002230
	ldr r3, _0812F240  @ =0x00000C9A
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r1, #1
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
	ldr r1, _0812F244  @ =0x06002000
	bl LZ77UnCompVram
_0812F1E4:
	ldr r5, _0812F238  @ =gUnknown_0822B864
	ldr r0, _0812F23C  @ =gUnknown_03002230
	ldr r1, _0812F240  @ =0x00000C9A
	add r4, r0, r1
	ldrb r0, [r4]
	lsl r0, r0, #2
	add r1, r5, #2
	add r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #255
	beq _0812F20A
	ldr r0, _0812F234  @ =gUnknown_0822B150
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	ldr r1, _0812F248  @ =0x06002800
	bl LZ77UnCompVram
_0812F20A:
	ldrb r0, [r4]
	lsl r0, r0, #2
	add r1, r5, #3
	add r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #255
	beq _0812F228
	ldr r0, _0812F234  @ =gUnknown_0822B150
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	ldr r1, _0812F24C  @ =0x06003000
	bl LZ77UnCompVram
_0812F228:
	bl sub_0812EF98
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812F234:
	.4byte gUnknown_0822B150
_0812F238:
	.4byte gUnknown_0822B864
_0812F23C:
	.4byte gUnknown_03002230
_0812F240:
	.4byte 0x00000C9A
_0812F244:
	.4byte 0x06002000
_0812F248:
	.4byte 0x06002800
_0812F24C:
	.4byte 0x06003000
	THUMB_FUNC_END sub_0812F150

	THUMB_FUNC_START sub_0812F250
sub_0812F250: @ 0x0812F250
	push {r4,r5,lr}
	mov r1, #3
	ldr r2, _0812F28C  @ =gUnknown_0200233D
	ldrb r0, [r2]
	cmp r0, #255
	beq _0812F25E
	add r1, r0, #0
_0812F25E:
	ldr r0, _0812F290  @ =gUnknown_0822BA48
	lsl r1, r1, #1
	add r1, r1, r0
	ldrh r4, [r1]
	ldr r0, _0812F294  @ =gUnknown_082542E8
	ldr r5, _0812F298  @ =gUnknown_02032000
	add r1, r5, #0
	bl LZ77UnCompWram
	cmp r4, #0
	bne _0812F2A8
	ldr r1, _0812F29C  @ =gUnknown_02008380
	add r0, r5, #0
	mov r2, #96
	bl CpuFastSet
	ldr r0, _0812F2A0  @ =gUnknown_02032200
	ldr r1, _0812F2A4  @ =gUnknown_02008500
	mov r2, #96
	bl CpuFastSet
	b _0812F2D8
	.byte 0x00
	.byte 0x00
_0812F28C:
	.4byte gUnknown_0200233D
_0812F290:
	.4byte gUnknown_0822BA48
_0812F294:
	.4byte gUnknown_082542E8
_0812F298:
	.4byte gUnknown_02032000
_0812F29C:
	.4byte gUnknown_02008380
_0812F2A0:
	.4byte gUnknown_02032200
_0812F2A4:
	.4byte gUnknown_02008500
_0812F2A8:
	lsl r4, r4, #1
	ldr r1, _0812F2E0  @ =gUnknown_02032000
	add r0, r4, r1
	ldr r1, _0812F2E4  @ =gUnknown_02008380
	mov r2, #32
	bl CpuFastSet
	ldr r0, _0812F2E8  @ =gUnknown_02032400
	ldr r1, _0812F2EC  @ =gUnknown_02008400
	mov r2, #64
	bl CpuFastSet
	ldr r0, _0812F2F0  @ =gUnknown_02032200
	add r4, r4, r0
	ldr r1, _0812F2F4  @ =gUnknown_02008500
	add r0, r4, #0
	mov r2, #32
	bl CpuFastSet
	ldr r0, _0812F2F8  @ =gUnknown_02032600
	ldr r1, _0812F2FC  @ =gUnknown_02008580
	mov r2, #64
	bl CpuFastSet
_0812F2D8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812F2E0:
	.4byte gUnknown_02032000
_0812F2E4:
	.4byte gUnknown_02008380
_0812F2E8:
	.4byte gUnknown_02032400
_0812F2EC:
	.4byte gUnknown_02008400
_0812F2F0:
	.4byte gUnknown_02032200
_0812F2F4:
	.4byte gUnknown_02008500
_0812F2F8:
	.4byte gUnknown_02032600
_0812F2FC:
	.4byte gUnknown_02008580
	THUMB_FUNC_END sub_0812F250

	THUMB_FUNC_START sub_0812F300
sub_0812F300: @ 0x0812F300
	push {r4,r5,lr}
	ldr r5, _0812F37C  @ =gUnknown_03002230
	ldr r1, _0812F380  @ =0x000009AC
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #21
	bne _0812F376
	bl sub_08076C48
	ldr r4, _0812F384  @ =gUnknown_0822B150
	mov r1, #180
	lsl r1, r1, #1
	add r0, r4, r1
	ldr r0, [r0]
	ldr r1, _0812F388  @ =gUnknown_02032000
	bl LZ77UnCompWram
	ldr r0, _0812F388  @ =gUnknown_02032000
	ldr r1, _0812F38C  @ =gUnknown_02009A00
	mov r2, #128
	lsl r2, r2, #2
	bl CpuFastSet
	mov r1, #182
	lsl r1, r1, #1
	add r0, r4, r1
	ldr r0, [r0]
	ldr r1, _0812F388  @ =gUnknown_02032000
	bl LZ77UnCompWram
	ldr r0, _0812F388  @ =gUnknown_02032000
	ldr r1, _0812F390  @ =gUnknown_0200A200
	mov r2, #128
	lsl r2, r2, #1
	bl CpuFastSet
	ldr r0, _0812F394  @ =0x00000A3A
	add r1, r5, r0
	mov r4, #0
	mov r0, #224
	lsl r0, r0, #6
	strh r0, [r1]
	bl sub_080AB73C
	ldr r1, _0812F398  @ =0x0000180D
	add r0, r5, r1
	strb r4, [r0]
	ldr r1, _0812F39C  @ =0x000016EA
	add r0, r5, r1
	strb r4, [r0]
	sub r1, r1, #2
	add r0, r5, r1
	strb r4, [r0]
	ldr r1, _0812F3A0  @ =0x00001885
	add r0, r5, r1
	strb r4, [r0]
	ldr r1, _0812F3A4  @ =0x00001770
	add r0, r5, r1
	strb r4, [r0]
_0812F376:
	pop {r4,r5}
	pop {r0}
	bx r0
_0812F37C:
	.4byte gUnknown_03002230
_0812F380:
	.4byte 0x000009AC
_0812F384:
	.4byte gUnknown_0822B150
_0812F388:
	.4byte gUnknown_02032000
_0812F38C:
	.4byte gUnknown_02009A00
_0812F390:
	.4byte gUnknown_0200A200
_0812F394:
	.4byte 0x00000A3A
_0812F398:
	.4byte 0x0000180D
_0812F39C:
	.4byte 0x000016EA
_0812F3A0:
	.4byte 0x00001885
_0812F3A4:
	.4byte 0x00001770
	THUMB_FUNC_END sub_0812F300

	THUMB_FUNC_START sub_0812F3A8
sub_0812F3A8: @ 0x0812F3A8
	push {r4,lr}
	ldr r4, _0812F3D4  @ =gUnknown_03002230
	ldr r0, _0812F3D8  @ =0x00000C84
	add r1, r4, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _0812F3DC  @ =gUnknown_02000C00
	ldrh r1, [r0]
	ldr r0, _0812F3E0  @ =0x00007FFF
	cmp r1, r0
	bne _0812F3EC
	bl sub_0812F300
	ldr r0, _0812F3E4  @ =0x0000050C
	add r2, r4, r0
	ldrh r1, [r2]
	ldr r0, _0812F3E8  @ =0x0000F1FF
	and r0, r0, r1
	strh r0, [r2]
	b _0812F3F4
	.byte 0x00
	.byte 0x00
_0812F3D4:
	.4byte gUnknown_03002230
_0812F3D8:
	.4byte 0x00000C84
_0812F3DC:
	.4byte gUnknown_02000C00
_0812F3E0:
	.4byte 0x00007FFF
_0812F3E4:
	.4byte 0x0000050C
_0812F3E8:
	.4byte 0x0000F1FF
_0812F3EC:
	ldr r0, _0812F3FC  @ =0x00000A4C
	add r1, r4, r0
	mov r0, #0
	strh r0, [r1]
_0812F3F4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812F3FC:
	.4byte 0x00000A4C
	THUMB_FUNC_END sub_0812F3A8

	THUMB_FUNC_START sub_0812F400
sub_0812F400: @ 0x0812F400
	push {r4,lr}
	ldr r2, _0812F434  @ =gUnknown_0822B864
	ldr r3, _0812F438  @ =gUnknown_03002230
	ldr r1, _0812F43C  @ =0x00000C9A
	add r0, r3, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r2, #1
	add r0, r0, r1
	ldrb r0, [r0]
	add r4, r2, #0
	add r1, r3, #0
	cmp r0, #255
	beq _0812F460
	cmp r0, #83
	bne _0812F448
	ldr r2, _0812F440  @ =0x0000098E
	add r0, r3, r2
	ldrb r0, [r0]
	sub r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bhi _0812F448
	ldr r0, _0812F444  @ =gUnknown_08270B48
	b _0812F478
_0812F434:
	.4byte gUnknown_0822B864
_0812F438:
	.4byte gUnknown_03002230
_0812F43C:
	.4byte 0x00000C9A
_0812F440:
	.4byte 0x0000098E
_0812F444:
	.4byte gUnknown_08270B48
_0812F448:
	ldr r2, _0812F458  @ =gUnknown_0822B150
	ldr r3, _0812F45C  @ =0x00000C9A
	add r0, r1, r3
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r4, #1
	b _0812F46E
	.byte 0x00
	.byte 0x00
_0812F458:
	.4byte gUnknown_0822B150
_0812F45C:
	.4byte 0x00000C9A
_0812F460:
	ldr r2, _0812F49C  @ =gUnknown_0822B150
	ldr r1, _0812F4A0  @ =gUnknown_0822B4FC
	ldr r4, _0812F4A4  @ =0x00000C99
	add r0, r3, r4
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r1, #4
_0812F46E:
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
_0812F478:
	ldr r1, _0812F4A8  @ =gUnknown_02032000
	bl LZ77UnCompWram
	ldr r1, _0812F4AC  @ =gUnknown_0822B864
	ldr r3, _0812F4B0  @ =gUnknown_03002230
	ldr r2, _0812F4B4  @ =0x00000C9A
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r1, #2
	add r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #255
	beq _0812F4B8
	ldr r1, _0812F49C  @ =gUnknown_0822B150
	lsl r0, r0, #2
	add r0, r0, r1
	b _0812F4CE
_0812F49C:
	.4byte gUnknown_0822B150
_0812F4A0:
	.4byte gUnknown_0822B4FC
_0812F4A4:
	.4byte 0x00000C99
_0812F4A8:
	.4byte gUnknown_02032000
_0812F4AC:
	.4byte gUnknown_0822B864
_0812F4B0:
	.4byte gUnknown_03002230
_0812F4B4:
	.4byte 0x00000C9A
_0812F4B8:
	ldr r2, _0812F4DC  @ =gUnknown_0822B150
	ldr r1, _0812F4E0  @ =gUnknown_0822B4FC
	ldr r4, _0812F4E4  @ =0x00000C99
	add r0, r3, r4
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r1, #5
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r2
_0812F4CE:
	ldr r0, [r0]
	ldr r1, _0812F4E8  @ =gUnknown_02034000
	bl LZ77UnCompWram
	pop {r4}
	pop {r0}
	bx r0
_0812F4DC:
	.4byte gUnknown_0822B150
_0812F4E0:
	.4byte gUnknown_0822B4FC
_0812F4E4:
	.4byte 0x00000C99
_0812F4E8:
	.4byte gUnknown_02034000
	THUMB_FUNC_END sub_0812F400

	THUMB_FUNC_START sub_0812F4EC
sub_0812F4EC: @ 0x0812F4EC
	push {r4-r7,lr}
	sub sp, sp, #8
	ldr r7, _0812F5AC  @ =gUnknown_03002230
	ldr r0, _0812F5B0  @ =0x000017AA
	add r1, r7, r0
	mov r6, #0
	mov r0, #144
	strb r0, [r1]
	bl sub_08077064
	ldr r2, _0812F5B4  @ =0x000009AD
	add r1, r7, r2
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	bl sub_080774C8
	ldr r3, _0812F5B8  @ =0x000009C6
	add r5, r7, r3
	ldrh r1, [r5]
	ldr r2, _0812F5BC  @ =gUnknown_02002DC0
	add r0, r1, r2
	ldrb r0, [r0]
	ldr r2, _0812F5C0  @ =gUnknown_0814C8E8
	add r1, r1, r2
	ldrb r1, [r1]
	bl sub_0813084C
	bl sub_08130A24
	bl sub_08133350
	bl sub_08130AB4
	mov r0, sp
	ldr r3, _0812F5C4  @ =0x00007FFF
	add r4, r3, #0
	strh r4, [r0]
	ldr r1, _0812F5C8  @ =gUnknown_02000C40
	ldr r2, _0812F5CC  @ =0x01000060
	bl CpuSet
	mov r0, sp
	add r0, r0, #2
	strh r4, [r0]
	ldr r1, _0812F5D0  @ =gUnknown_02000E00
	ldr r2, _0812F5D4  @ =0x01000058
	bl CpuSet
	add r0, sp, #4
	strh r4, [r0]
	ldr r1, _0812F5D8  @ =gUnknown_02000EC0
	ldr r2, _0812F5DC  @ =0x01000010
	bl CpuSet
	mov r0, sp
	add r0, r0, #6
	strh r4, [r0]
	ldr r1, _0812F5E0  @ =gUnknown_02000F00
	ldr r2, _0812F5E4  @ =0x01000080
	bl CpuSet
	ldr r0, _0812F5E8  @ =gUnknown_02000C00
	strh r6, [r0]
	bl sub_080CBCD8
	bl sub_080CBCC8
	bl sub_080930E8
	bl sub_0807166C
	ldr r0, _0812F5EC  @ =0x00001718
	add r1, r7, r0
	mov r0, #20
	strb r0, [r1]
	ldrh r1, [r5]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _0812F592
	bl sub_080D56A0
_0812F592:
	ldr r1, _0812F5F0  @ =0x0000050C
	add r0, r7, r1
	ldrh r1, [r0]
	mov r3, #224
	lsl r3, r3, #4
	add r2, r3, #0
	orr r1, r1, r2
	strh r1, [r0]
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812F5AC:
	.4byte gUnknown_03002230
_0812F5B0:
	.4byte 0x000017AA
_0812F5B4:
	.4byte 0x000009AD
_0812F5B8:
	.4byte 0x000009C6
_0812F5BC:
	.4byte gUnknown_02002DC0
_0812F5C0:
	.4byte gUnknown_0814C8E8
_0812F5C4:
	.4byte 0x00007FFF
_0812F5C8:
	.4byte gUnknown_02000C40
_0812F5CC:
	.4byte 0x01000060
_0812F5D0:
	.4byte gUnknown_02000E00
_0812F5D4:
	.4byte 0x01000058
_0812F5D8:
	.4byte gUnknown_02000EC0
_0812F5DC:
	.4byte 0x01000010
_0812F5E0:
	.4byte gUnknown_02000F00
_0812F5E4:
	.4byte 0x01000080
_0812F5E8:
	.4byte gUnknown_02000C00
_0812F5EC:
	.4byte 0x00001718
_0812F5F0:
	.4byte 0x0000050C
	THUMB_FUNC_END sub_0812F4EC

	THUMB_FUNC_START sub_0812F5F4
sub_0812F5F4: @ 0x0812F5F4
	push {r4,r5,lr}
	ldr r5, _0812F654  @ =gUnknown_03002230
	ldr r1, _0812F658  @ =0x000009C6
	add r0, r5, r1
	ldrh r0, [r0]
	mov r1, #191
	and r1, r1, r0
	cmp r1, #3
	beq _0812F60E
	cmp r1, #5
	beq _0812F60E
	cmp r1, #7
	bne _0812F670
_0812F60E:
	ldr r4, _0812F65C  @ =gUnknown_0822B150
	mov r1, #176
	lsl r1, r1, #1
	add r0, r4, r1
	ldr r0, [r0]
	ldr r1, _0812F660  @ =gUnknown_02032000
	bl LZ77UnCompWram
	ldr r0, _0812F660  @ =gUnknown_02032000
	ldr r1, _0812F664  @ =gUnknown_02009A00
	mov r2, #128
	lsl r2, r2, #2
	bl CpuFastSet
	mov r1, #178
	lsl r1, r1, #1
	add r0, r4, r1
	ldr r0, [r0]
	ldr r1, _0812F660  @ =gUnknown_02032000
	bl LZ77UnCompWram
	ldr r0, _0812F660  @ =gUnknown_02032000
	ldr r1, _0812F668  @ =gUnknown_0200A200
	mov r2, #128
	lsl r2, r2, #1
	bl CpuFastSet
	ldr r0, _0812F654  @ =gUnknown_03002230
	ldr r1, _0812F66C  @ =0x00000A3A
	add r0, r0, r1
	mov r1, #224
	lsl r1, r1, #6
	strh r1, [r0]
	b _0812F6B0
	.byte 0x00
	.byte 0x00
_0812F654:
	.4byte gUnknown_03002230
_0812F658:
	.4byte 0x000009C6
_0812F65C:
	.4byte gUnknown_0822B150
_0812F660:
	.4byte gUnknown_02032000
_0812F664:
	.4byte gUnknown_02009A00
_0812F668:
	.4byte gUnknown_0200A200
_0812F66C:
	.4byte 0x00000A3A
_0812F670:
	ldr r4, _0812F6B8  @ =gUnknown_0822B150
	mov r1, #180
	lsl r1, r1, #1
	add r0, r4, r1
	ldr r0, [r0]
	ldr r1, _0812F6BC  @ =gUnknown_02032000
	bl LZ77UnCompWram
	ldr r0, _0812F6BC  @ =gUnknown_02032000
	ldr r1, _0812F6C0  @ =gUnknown_02009A00
	mov r2, #128
	lsl r2, r2, #2
	bl CpuFastSet
	mov r1, #182
	lsl r1, r1, #1
	add r0, r4, r1
	ldr r0, [r0]
	ldr r1, _0812F6BC  @ =gUnknown_02032000
	bl LZ77UnCompWram
	ldr r0, _0812F6BC  @ =gUnknown_02032000
	ldr r1, _0812F6C4  @ =gUnknown_0200A200
	mov r2, #128
	lsl r2, r2, #1
	bl CpuFastSet
	ldr r0, _0812F6C8  @ =0x00000A3A
	add r1, r5, r0
	mov r0, #224
	lsl r0, r0, #6
	strh r0, [r1]
_0812F6B0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812F6B8:
	.4byte gUnknown_0822B150
_0812F6BC:
	.4byte gUnknown_02032000
_0812F6C0:
	.4byte gUnknown_02009A00
_0812F6C4:
	.4byte gUnknown_0200A200
_0812F6C8:
	.4byte 0x00000A3A
	THUMB_FUNC_END sub_0812F5F4

	THUMB_FUNC_START sub_0812F6CC
sub_0812F6CC: @ 0x0812F6CC
	push {r4,lr}
	ldr r1, _0812F76C  @ =gUnknown_03002230
	ldr r0, _0812F770  @ =0x000009B5
	add r2, r1, r0
	mov r0, #0
	strb r0, [r2]
	ldr r2, _0812F774  @ =0x000009C6
	add r0, r1, r2
	ldrh r0, [r0]
	add r2, r1, #0
	cmp r0, #0
	beq _0812F708
	cmp r0, #112
	beq _0812F708
	cmp r0, #64
	beq _0812F708
	cmp r0, #91
	beq _0812F708
	cmp r0, #3
	beq _0812F708
	cmp r0, #5
	beq _0812F708
	cmp r0, #7
	beq _0812F708
	cmp r0, #67
	beq _0812F708
	cmp r0, #69
	beq _0812F708
	cmp r0, #71
	bne _0812F710
_0812F708:
	ldr r0, _0812F770  @ =0x000009B5
	add r1, r2, r0
	mov r0, #1
	strb r0, [r1]
_0812F710:
	ldr r1, _0812F774  @ =0x000009C6
	add r0, r2, r1
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	neg r0, r0
	asr r0, r0, #31
	mov r1, #8
	and r0, r0, r1
	ldr r2, _0812F778  @ =gUnknown_0822B324
	ldr r1, _0812F77C  @ =gUnknown_0822BA38
	add r0, r0, #6
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0]
	ldr r4, _0812F780  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812F784  @ =0x06011000
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F788  @ =gUnknown_02032200
	ldr r1, _0812F78C  @ =0x06011400
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F790  @ =gUnknown_02032400
	ldr r1, _0812F794  @ =0x06011800
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F798  @ =gUnknown_02032600
	ldr r1, _0812F79C  @ =0x06011C00
	mov r2, #128
	bl CpuFastSet
	pop {r4}
	pop {r0}
	bx r0
_0812F76C:
	.4byte gUnknown_03002230
_0812F770:
	.4byte 0x000009B5
_0812F774:
	.4byte 0x000009C6
_0812F778:
	.4byte gUnknown_0822B324
_0812F77C:
	.4byte gUnknown_0822BA38
_0812F780:
	.4byte gUnknown_02032000
_0812F784:
	.4byte 0x06011000
_0812F788:
	.4byte gUnknown_02032200
_0812F78C:
	.4byte 0x06011400
_0812F790:
	.4byte gUnknown_02032400
_0812F794:
	.4byte 0x06011800
_0812F798:
	.4byte gUnknown_02032600
_0812F79C:
	.4byte 0x06011C00
	THUMB_FUNC_END sub_0812F6CC

	THUMB_FUNC_START sub_0812F7A0
sub_0812F7A0: @ 0x0812F7A0
	push {r4-r6,lr}
	ldr r6, _0812F83C  @ =gUnknown_0822B624
	ldr r0, _0812F840  @ =gUnknown_03002230
	ldr r1, _0812F844  @ =0x00000C9B
	add r5, r0, r1
	ldrb r0, [r5]
	lsl r0, r0, #2
	add r2, r0, r6
	ldrb r0, [r2]
	cmp r0, #255
	beq _0812F7EE
	ldr r1, _0812F848  @ =gUnknown_0822B324
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812F84C  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812F850  @ =0x06012000
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F854  @ =gUnknown_02032200
	ldr r1, _0812F858  @ =0x06012400
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F85C  @ =gUnknown_02032400
	ldr r1, _0812F860  @ =0x06012800
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F864  @ =gUnknown_02032600
	ldr r1, _0812F868  @ =0x06012C00
	mov r2, #128
	bl CpuFastSet
_0812F7EE:
	ldrb r0, [r5]
	lsl r0, r0, #2
	add r1, r6, #1
	add r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #255
	beq _0812F834
	ldr r1, _0812F848  @ =gUnknown_0822B324
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812F84C  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812F86C  @ =0x06012200
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F854  @ =gUnknown_02032200
	ldr r1, _0812F870  @ =0x06012600
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F85C  @ =gUnknown_02032400
	ldr r1, _0812F874  @ =0x06012A00
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F864  @ =gUnknown_02032600
	ldr r1, _0812F878  @ =0x06012E00
	mov r2, #128
	bl CpuFastSet
_0812F834:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812F83C:
	.4byte gUnknown_0822B624
_0812F840:
	.4byte gUnknown_03002230
_0812F844:
	.4byte 0x00000C9B
_0812F848:
	.4byte gUnknown_0822B324
_0812F84C:
	.4byte gUnknown_02032000
_0812F850:
	.4byte 0x06012000
_0812F854:
	.4byte gUnknown_02032200
_0812F858:
	.4byte 0x06012400
_0812F85C:
	.4byte gUnknown_02032400
_0812F860:
	.4byte 0x06012800
_0812F864:
	.4byte gUnknown_02032600
_0812F868:
	.4byte 0x06012C00
_0812F86C:
	.4byte 0x06012200
_0812F870:
	.4byte 0x06012600
_0812F874:
	.4byte 0x06012A00
_0812F878:
	.4byte 0x06012E00
	THUMB_FUNC_END sub_0812F7A0

	THUMB_FUNC_START sub_0812F87C
sub_0812F87C: @ 0x0812F87C
	push {r4-r6,lr}
	ldr r6, _0812F91C  @ =gUnknown_0822B624
	ldr r0, _0812F920  @ =gUnknown_03002230
	ldr r1, _0812F924  @ =0x00000C9B
	add r5, r0, r1
	ldrb r0, [r5]
	lsl r0, r0, #2
	add r1, r6, #2
	add r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #255
	beq _0812F8CC
	ldr r1, _0812F928  @ =gUnknown_0822B324
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812F92C  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812F930  @ =0x06013000
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F934  @ =gUnknown_02032200
	ldr r1, _0812F938  @ =0x06013400
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F93C  @ =gUnknown_02032400
	ldr r1, _0812F940  @ =0x06013800
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F944  @ =gUnknown_02032600
	ldr r1, _0812F948  @ =0x06013C00
	mov r2, #128
	bl CpuFastSet
_0812F8CC:
	ldrb r0, [r5]
	lsl r0, r0, #2
	add r1, r6, #3
	add r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #255
	beq _0812F912
	ldr r1, _0812F928  @ =gUnknown_0822B324
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812F92C  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812F94C  @ =0x06013200
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F934  @ =gUnknown_02032200
	ldr r1, _0812F950  @ =0x06013600
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F93C  @ =gUnknown_02032400
	ldr r1, _0812F954  @ =0x06013A00
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812F944  @ =gUnknown_02032600
	ldr r1, _0812F958  @ =0x06013E00
	mov r2, #128
	bl CpuFastSet
_0812F912:
	bl sub_08098B9C
	pop {r4-r6}
	pop {r0}
	bx r0
_0812F91C:
	.4byte gUnknown_0822B624
_0812F920:
	.4byte gUnknown_03002230
_0812F924:
	.4byte 0x00000C9B
_0812F928:
	.4byte gUnknown_0822B324
_0812F92C:
	.4byte gUnknown_02032000
_0812F930:
	.4byte 0x06013000
_0812F934:
	.4byte gUnknown_02032200
_0812F938:
	.4byte 0x06013400
_0812F93C:
	.4byte gUnknown_02032400
_0812F940:
	.4byte 0x06013800
_0812F944:
	.4byte gUnknown_02032600
_0812F948:
	.4byte 0x06013C00
_0812F94C:
	.4byte 0x06013200
_0812F950:
	.4byte 0x06013600
_0812F954:
	.4byte 0x06013A00
_0812F958:
	.4byte 0x06013E00
	THUMB_FUNC_END sub_0812F87C

	THUMB_FUNC_START sub_0812F95C
sub_0812F95C: @ 0x0812F95C
	push {r4,r5,lr}
	ldr r1, _0812F994  @ =gUnknown_03002230
	ldr r0, _0812F998  @ =0x00000A4C
	add r4, r1, r0
	ldrh r2, [r4]
	ldr r0, _0812F99C  @ =gUnknown_0822BB0C
	add r0, r2, r0
	ldrb r3, [r0]
	ldr r5, _0812F9A0  @ =0x000009AF
	add r0, r1, r5
	strb r3, [r0]
	mov r0, #201
	lsl r0, r0, #4
	add r1, r1, r0
	strh r3, [r1]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldr r0, _0812F9A4  @ =gUnknown_0822BAD0
	lsl r2, r2, #2
	add r2, r2, r0
	ldr r0, [r2]
	bl _call_via_r0
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812F994:
	.4byte gUnknown_03002230
_0812F998:
	.4byte 0x00000A4C
_0812F99C:
	.4byte gUnknown_0822BB0C
_0812F9A0:
	.4byte 0x000009AF
_0812F9A4:
	.4byte gUnknown_0822BAD0
	THUMB_FUNC_END sub_0812F95C

	THUMB_FUNC_START sub_0812F9A8
sub_0812F9A8: @ 0x0812F9A8
	push {r4,r5,lr}
	ldr r1, _0812FA04  @ =gUnknown_0822BB1C
	ldr r0, _0812FA08  @ =gUnknown_03002230
	ldr r2, _0812FA0C  @ =0x00001663
	add r0, r0, r2
	ldrb r2, [r0]
	lsl r0, r2, #1
	add r0, r0, r1
	ldrh r0, [r0]
	lsr r3, r0, #11
	ldr r5, _0812FA10  @ =0x000007FF
	and r5, r5, r0
	mov r0, #100
	cmp r2, #1
	beq _0812F9D4
	mov r0, #101
	cmp r2, #8
	bls _0812F9D4
	mov r0, #89
	cmp r2, #11
	bls _0812F9D4
	mov r0, #88
_0812F9D4:
	ldr r1, _0812FA14  @ =gUnknown_0822B324
	add r0, r3, r0
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812FA18  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	add r4, r5, r4
	ldr r1, _0812FA1C  @ =gUnknown_0200ACC0
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812FA20  @ =gUnknown_02032200
	add r0, r5, r1
	ldr r1, _0812FA24  @ =gUnknown_0200AEC0
	mov r2, #128
	bl CpuFastSet
	pop {r4,r5}
	pop {r0}
	bx r0
_0812FA04:
	.4byte gUnknown_0822BB1C
_0812FA08:
	.4byte gUnknown_03002230
_0812FA0C:
	.4byte 0x00001663
_0812FA10:
	.4byte 0x000007FF
_0812FA14:
	.4byte gUnknown_0822B324
_0812FA18:
	.4byte gUnknown_02032000
_0812FA1C:
	.4byte gUnknown_0200ACC0
_0812FA20:
	.4byte gUnknown_02032200
_0812FA24:
	.4byte gUnknown_0200AEC0
	THUMB_FUNC_END sub_0812F9A8

	THUMB_FUNC_START sub_0812FA28
sub_0812FA28: @ 0x0812FA28
	push {r4-r7,lr}
	ldr r4, _0812FA78  @ =gUnknown_03002230
	ldr r1, _0812FA7C  @ =0x00000CA2
	add r0, r4, r1
	ldrb r5, [r0]
	cmp r5, #0
	bne _0812FA38
	b _0812FB6C
_0812FA38:
	ldr r0, _0812FA80  @ =gUnknown_0822BB4E
	sub r1, r5, #1
	add r0, r1, r0
	ldrb r2, [r0]
	mov r0, #128
	and r0, r0, r2
	add r7, r1, #0
	cmp r0, #0
	bne _0812FAAA
	ldr r3, _0812FA84  @ =0x00000CA9
	add r1, r4, r3
	strb r2, [r1]
	cmp r5, #1
	bne _0812FA8C
	mov r0, #10
	strb r0, [r1]
	mov r0, #202
	lsl r0, r0, #4
	add r2, r4, r0
	ldrb r0, [r2]
	mov r3, #128
	lsl r3, r3, #2
	add r1, r3, #0
	add r0, r0, r1
	strh r0, [r2]
	bl sub_08133244
	ldr r1, _0812FA88  @ =0x0000099B
	add r0, r4, r1
	strb r5, [r0]
	b _0812FAAA
	.byte 0x00
	.byte 0x00
_0812FA78:
	.4byte gUnknown_03002230
_0812FA7C:
	.4byte 0x00000CA2
_0812FA80:
	.4byte gUnknown_0822BB4E
_0812FA84:
	.4byte 0x00000CA9
_0812FA88:
	.4byte 0x0000099B
_0812FA8C:
	mov r3, #202
	lsl r3, r3, #4
	add r2, r4, r3
	ldrb r0, [r2]
	mov r3, #128
	lsl r3, r3, #2
	add r1, r3, #0
	add r0, r0, r1
	strh r0, [r2]
	bl sub_081331F4
	ldr r0, _0812FB28  @ =0x0000099B
	add r1, r4, r0
	mov r0, #1
	strb r0, [r1]
_0812FAAA:
	mov r4, #68
	ldr r2, _0812FB2C  @ =gUnknown_03002230
	mov r1, #151
	lsl r1, r1, #4
	add r0, r2, r1
	mov r6, #0
	strh r6, [r0]
	ldr r0, _0812FB30  @ =0x00000CA2
	add r3, r2, r0
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0812FAE6
	strh r6, [r3]
	cmp r5, #18
	beq _0812FAE6
	ldr r3, _0812FB34  @ =0x00000971
	add r1, r2, r3
	mov r0, #3
	strb r0, [r1]
	mov r4, #70
	cmp r5, #2
	bne _0812FAE6
	mov r1, #162
	lsl r1, r1, #4
	add r0, r2, r1
	strh r6, [r0]
_0812FAE6:
	ldr r3, _0812FB38  @ =0x00000A24
	add r5, r2, r3
	strh r4, [r5]
	ldr r0, _0812FB3C  @ =gUnknown_0822BB3A
	add r0, r7, r0
	ldrb r4, [r0]
	cmp r4, #1
	bne _0812FAFC
	ldr r1, _0812FB40  @ =0x00000C9C
	add r0, r2, r1
	ldrb r4, [r0]
_0812FAFC:
	ldr r1, _0812FB44  @ =gUnknown_0822B324
	lsl r0, r4, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812FB48  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldrh r0, [r5]
	cmp r0, #68
	bne _0812FB58
	ldr r1, _0812FB4C  @ =0x06011000
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812FB50  @ =gUnknown_02032200
	ldr r1, _0812FB54  @ =0x06011400
	mov r2, #128
	bl CpuFastSet
	b _0812FB6C
_0812FB28:
	.4byte 0x0000099B
_0812FB2C:
	.4byte gUnknown_03002230
_0812FB30:
	.4byte 0x00000CA2
_0812FB34:
	.4byte 0x00000971
_0812FB38:
	.4byte 0x00000A24
_0812FB3C:
	.4byte gUnknown_0822BB3A
_0812FB40:
	.4byte 0x00000C9C
_0812FB44:
	.4byte gUnknown_0822B324
_0812FB48:
	.4byte gUnknown_02032000
_0812FB4C:
	.4byte 0x06011000
_0812FB50:
	.4byte gUnknown_02032200
_0812FB54:
	.4byte 0x06011400
_0812FB58:
	ldr r0, _0812FB74  @ =gUnknown_02032400
	ldr r1, _0812FB78  @ =0x06011800
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812FB7C  @ =gUnknown_02032600
	ldr r1, _0812FB80  @ =0x06011C00
	mov r2, #128
	bl CpuFastSet
_0812FB6C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812FB74:
	.4byte gUnknown_02032400
_0812FB78:
	.4byte 0x06011800
_0812FB7C:
	.4byte gUnknown_02032600
_0812FB80:
	.4byte 0x06011C00
	THUMB_FUNC_END sub_0812FA28

	THUMB_FUNC_START sub_0812FB84
sub_0812FB84: @ 0x0812FB84
	push {lr}
	bl sub_0812E7B0
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0812FB84

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812FB90
sub_0812FB90: @ 0x0812FB90
	push {lr}
	ldr r1, _0812FBB0  @ =gUnknown_0822B9C8
	ldr r0, _0812FBB4  @ =gUnknown_03002230
	ldr r2, _0812FBB8  @ =0x0000098E
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0812FBBC  @ =0x06007000
	bl LZ77UnCompVram
	pop {r0}
	bx r0
_0812FBB0:
	.4byte gUnknown_0822B9C8
_0812FBB4:
	.4byte gUnknown_03002230
_0812FBB8:
	.4byte 0x0000098E
_0812FBBC:
	.4byte 0x06007000
	THUMB_FUNC_END sub_0812FB90

	THUMB_FUNC_START sub_0812FBC0
sub_0812FBC0: @ 0x0812FBC0
	bx lr
	THUMB_FUNC_END sub_0812FBC0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812FBC4
sub_0812FBC4: @ 0x0812FBC4
	push {r4,r5,lr}
	lsl r0, r0, #24
	ldr r1, _0812FC08  @ =gUnknown_0822BA5A
	lsr r0, r0, #23
	add r0, r0, r1
	ldrh r1, [r0]
	lsr r0, r1, #11
	ldr r5, _0812FC0C  @ =0x000007FF
	and r5, r5, r1
	ldr r1, _0812FC10  @ =gUnknown_0822B324
	add r0, r0, #90
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0812FC14  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	add r4, r5, r4
	ldr r1, _0812FC18  @ =gUnknown_0200B0C0
	add r0, r4, #0
	mov r2, #16
	bl CpuFastSet
	ldr r0, _0812FC1C  @ =gUnknown_02032200
	add r5, r5, r0
	ldr r1, _0812FC20  @ =gUnknown_0200B100
	add r0, r5, #0
	mov r2, #16
	bl CpuFastSet
	pop {r4,r5}
	pop {r0}
	bx r0
_0812FC08:
	.4byte gUnknown_0822BA5A
_0812FC0C:
	.4byte 0x000007FF
_0812FC10:
	.4byte gUnknown_0822B324
_0812FC14:
	.4byte gUnknown_02032000
_0812FC18:
	.4byte gUnknown_0200B0C0
_0812FC1C:
	.4byte gUnknown_02032200
_0812FC20:
	.4byte gUnknown_0200B100
	THUMB_FUNC_END sub_0812FBC4

	THUMB_FUNC_START sub_0812FC24
sub_0812FC24: @ 0x0812FC24
	push {r4,r5,lr}
	lsl r0, r0, #24
	ldr r1, _0812FC64  @ =gUnknown_0822BA5A
	lsr r0, r0, #23
	add r0, r0, r1
	ldr r1, _0812FC68  @ =0xFFFFF000
	add r4, r1, #0
	ldrh r0, [r0]
	add r4, r4, r0
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldr r0, _0812FC6C  @ =gUnknown_0825381C
	ldr r5, _0812FC70  @ =gUnknown_02032000
	add r1, r5, #0
	bl LZ77UnCompWram
	add r5, r4, r5
	ldr r1, _0812FC74  @ =gUnknown_0200B0C0
	add r0, r5, #0
	mov r2, #16
	bl CpuFastSet
	ldr r0, _0812FC78  @ =gUnknown_02032200
	add r4, r4, r0
	ldr r1, _0812FC7C  @ =gUnknown_0200B100
	add r0, r4, #0
	mov r2, #16
	bl CpuFastSet
	pop {r4,r5}
	pop {r0}
	bx r0
_0812FC64:
	.4byte gUnknown_0822BA5A
_0812FC68:
	.4byte 0xFFFFF000
_0812FC6C:
	.4byte gUnknown_0825381C
_0812FC70:
	.4byte gUnknown_02032000
_0812FC74:
	.4byte gUnknown_0200B0C0
_0812FC78:
	.4byte gUnknown_02032200
_0812FC7C:
	.4byte gUnknown_0200B100
	THUMB_FUNC_END sub_0812FC24

	THUMB_FUNC_START sub_0812FC80
sub_0812FC80: @ 0x0812FC80
	bx lr
	THUMB_FUNC_END sub_0812FC80

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812FC84
sub_0812FC84: @ 0x0812FC84
	push {r4,r5,lr}
	ldr r1, _0812FCC0  @ =gUnknown_0822BA52
	ldr r0, _0812FCC4  @ =gUnknown_0200233E
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r5, [r0]
	ldr r0, _0812FCC8  @ =gUnknown_0825460C
	ldr r4, _0812FCCC  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	lsl r5, r5, #1
	add r4, r5, r4
	ldr r1, _0812FCD0  @ =gUnknown_02008680
	add r0, r4, #0
	mov r2, #48
	bl CpuFastSet
	ldr r0, _0812FCD4  @ =gUnknown_02032200
	add r5, r5, r0
	ldr r1, _0812FCD8  @ =gUnknown_02008740
	add r0, r5, #0
	mov r2, #48
	bl CpuFastSet
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812FCC0:
	.4byte gUnknown_0822BA52
_0812FCC4:
	.4byte gUnknown_0200233E
_0812FCC8:
	.4byte gUnknown_0825460C
_0812FCCC:
	.4byte gUnknown_02032000
_0812FCD0:
	.4byte gUnknown_02008680
_0812FCD4:
	.4byte gUnknown_02032200
_0812FCD8:
	.4byte gUnknown_02008740
	THUMB_FUNC_END sub_0812FC84

	THUMB_FUNC_START sub_0812FCDC
sub_0812FCDC: @ 0x0812FCDC
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	ldr r4, _0812FD58  @ =gUnknown_0822B150
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	ldr r5, _0812FD5C  @ =gUnknown_02032000
	add r1, r5, #0
	bl LZ77UnCompWram
	ldr r1, _0812FD60  @ =gUnknown_02009A00
	add r0, r5, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812FD64  @ =gUnknown_02032200
	mov r8, r0
	ldr r1, _0812FD68  @ =gUnknown_02009E00
	mov r2, #128
	bl CpuFastSet
	ldr r6, _0812FD6C  @ =gUnknown_02032400
	ldr r1, _0812FD70  @ =gUnknown_0200A200
	add r0, r6, #0
	mov r2, #128
	bl CpuFastSet
	mov r1, #184
	lsl r1, r1, #1
	add r4, r4, r1
	ldr r0, [r4]
	add r1, r5, #0
	bl LZ77UnCompWram
	ldr r1, _0812FD74  @ =gUnknown_02009C00
	add r0, r5, #0
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812FD78  @ =gUnknown_0200A000
	mov r0, r8
	mov r2, #128
	bl CpuFastSet
	ldr r1, _0812FD7C  @ =gUnknown_0200A400
	add r0, r6, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812FD80  @ =gUnknown_03002230
	ldr r1, _0812FD84  @ =0x00000A3A
	add r0, r0, r1
	mov r1, #216
	lsl r1, r1, #6
	strh r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812FD58:
	.4byte gUnknown_0822B150
_0812FD5C:
	.4byte gUnknown_02032000
_0812FD60:
	.4byte gUnknown_02009A00
_0812FD64:
	.4byte gUnknown_02032200
_0812FD68:
	.4byte gUnknown_02009E00
_0812FD6C:
	.4byte gUnknown_02032400
_0812FD70:
	.4byte gUnknown_0200A200
_0812FD74:
	.4byte gUnknown_02009C00
_0812FD78:
	.4byte gUnknown_0200A000
_0812FD7C:
	.4byte gUnknown_0200A400
_0812FD80:
	.4byte gUnknown_03002230
_0812FD84:
	.4byte 0x00000A3A
	THUMB_FUNC_END sub_0812FCDC

	THUMB_FUNC_START sub_0812FD88
sub_0812FD88: @ 0x0812FD88
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r6, _0812FDD4  @ =gUnknown_0822B150
	lsl r0, r4, #2
	add r0, r0, r6
	ldr r0, [r0]
	ldr r5, _0812FDD8  @ =gUnknown_02032000
	add r1, r5, #0
	bl LZ77UnCompWram
	ldr r1, _0812FDDC  @ =gUnknown_02009A00
	mov r2, #128
	lsl r2, r2, #2
	add r0, r5, #0
	bl CpuFastSet
	add r4, r4, #1
	lsl r4, r4, #2
	add r4, r4, r6
	ldr r0, [r4]
	add r1, r5, #0
	bl LZ77UnCompWram
	ldr r1, _0812FDE0  @ =gUnknown_0200A200
	mov r2, #128
	lsl r2, r2, #1
	add r0, r5, #0
	bl CpuFastSet
	ldr r0, _0812FDE4  @ =gUnknown_03002230
	ldr r1, _0812FDE8  @ =0x00000A3A
	add r0, r0, r1
	mov r1, #224
	lsl r1, r1, #6
	strh r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
_0812FDD4:
	.4byte gUnknown_0822B150
_0812FDD8:
	.4byte gUnknown_02032000
_0812FDDC:
	.4byte gUnknown_02009A00
_0812FDE0:
	.4byte gUnknown_0200A200
_0812FDE4:
	.4byte gUnknown_03002230
_0812FDE8:
	.4byte 0x00000A3A
	THUMB_FUNC_END sub_0812FD88

	THUMB_FUNC_START sub_0812FDEC
sub_0812FDEC: @ 0x0812FDEC
	push {r4,r5,lr}
	ldr r5, _0812FE38  @ =gUnknown_0822B150
	ldr r0, [r5, #60]
	ldr r4, _0812FE3C  @ =gUnknown_02032000
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0812FE40  @ =gUnknown_0200A6C0
	add r0, r4, #0
	mov r2, #128
	bl CpuFastSet
	ldr r0, _0812FE44  @ =gUnknown_0822B324
	mov r1, #176
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r4, #0
	bl LZ77UnCompWram
	add r0, r4, #0
	ldr r1, _0812FE48  @ =gUnknown_0200A8C0
	mov r2, #128
	lsl r2, r2, #1
	bl CpuFastSet
	ldr r0, [r5, #20]
	add r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0812FE4C  @ =gUnknown_02032600
	ldr r1, _0812FE50  @ =gUnknown_0200B140
	mov r2, #16
	bl CpuFastSet
	pop {r4,r5}
	pop {r0}
	bx r0
_0812FE38:
	.4byte gUnknown_0822B150
_0812FE3C:
	.4byte gUnknown_02032000
_0812FE40:
	.4byte gUnknown_0200A6C0
_0812FE44:
	.4byte gUnknown_0822B324
_0812FE48:
	.4byte gUnknown_0200A8C0
_0812FE4C:
	.4byte gUnknown_02032600
_0812FE50:
	.4byte gUnknown_0200B140
	THUMB_FUNC_END sub_0812FDEC

	THUMB_FUNC_START sub_0812FE54
sub_0812FE54: @ 0x0812FE54
	bx lr
	THUMB_FUNC_END sub_0812FE54

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0812FE58
sub_0812FE58: @ 0x0812FE58
	push {lr}
	bl sub_080AB73C
	ldr r0, _0812FE84  @ =gUnknown_03002230
	ldr r2, _0812FE88  @ =0x0000180D
	add r1, r0, r2
	mov r2, #0
	strb r2, [r1]
	ldr r3, _0812FE8C  @ =0x000016EA
	add r1, r0, r3
	strb r2, [r1]
	sub r3, r3, #2
	add r1, r0, r3
	strb r2, [r1]
	ldr r3, _0812FE90  @ =0x00001885
	add r1, r0, r3
	strb r2, [r1]
	ldr r1, _0812FE94  @ =0x00001770
	add r0, r0, r1
	strb r2, [r0]
	pop {r0}
	bx r0
_0812FE84:
	.4byte gUnknown_03002230
_0812FE88:
	.4byte 0x0000180D
_0812FE8C:
	.4byte 0x000016EA
_0812FE90:
	.4byte 0x00001885
_0812FE94:
	.4byte 0x00001770
	THUMB_FUNC_END sub_0812FE58

	THUMB_FUNC_START sub_0812FE98
sub_0812FE98: @ 0x0812FE98
	push {r4-r6,lr}
	ldr r0, _0812FEE0  @ =gUnknown_03002230
	ldr r1, _0812FEE4  @ =0x000009C6
	add r0, r0, r1
	ldrh r0, [r0]
	mov r4, #64
	and r4, r4, r0
	lsl r4, r4, #16
	lsr r4, r4, #16
	neg r4, r4
	asr r4, r4, #31
	mov r0, #8
	and r4, r4, r0
	ldr r6, _0812FEE8  @ =gUnknown_0822B150
	ldr r5, _0812FEEC  @ =gUnknown_0822BA38
	add r0, r4, r5
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r6
	ldr r0, [r0]
	ldr r1, _0812FEF0  @ =gUnknown_02032000
	bl LZ77UnCompWram
	add r4, r4, #1
	add r4, r4, r5
	ldrb r0, [r4]
	lsl r0, r0, #2
	add r0, r0, r6
	ldr r0, [r0]
	ldr r1, _0812FEF4  @ =gUnknown_02034000
	bl LZ77UnCompWram
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0812FEE0:
	.4byte gUnknown_03002230
_0812FEE4:
	.4byte 0x000009C6
_0812FEE8:
	.4byte gUnknown_0822B150
_0812FEEC:
	.4byte gUnknown_0822BA38
_0812FEF0:
	.4byte gUnknown_02032000
_0812FEF4:
	.4byte gUnknown_02034000
	THUMB_FUNC_END sub_0812FE98

	THUMB_FUNC_START sub_0812FEF8
sub_0812FEF8: @ 0x0812FEF8
	push {r4-r6,lr}
	ldr r0, _0812FF40  @ =gUnknown_03002230
	ldr r1, _0812FF44  @ =0x000009C6
	add r0, r0, r1
	ldrh r0, [r0]
	mov r4, #64
	and r4, r4, r0
	lsl r4, r4, #16
	lsr r4, r4, #16
	neg r4, r4
	asr r4, r4, #31
	mov r0, #8
	and r4, r4, r0
	ldr r6, _0812FF48  @ =gUnknown_0822B150
	ldr r5, _0812FF4C  @ =gUnknown_0822BA38
	add r0, r4, #2
	add r0, r0, r5
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r6
	ldr r0, [r0]
	ldr r1, _0812FF50  @ =gUnknown_02032000
	bl LZ77UnCompWram
	add r4, r4, #3
	add r4, r4, r5
	ldrb r0, [r4]
	lsl r0, r0, #2
	add r0, r0, r6
	ldr r0, [r0]
	ldr r1, _0812FF54  @ =gUnknown_02034000
	bl LZ77UnCompWram
	pop {r4-r6}
	pop {r0}
	bx r0
_0812FF40:
	.4byte gUnknown_03002230
_0812FF44:
	.4byte 0x000009C6
_0812FF48:
	.4byte gUnknown_0822B150
_0812FF4C:
	.4byte gUnknown_0822BA38
_0812FF50:
	.4byte gUnknown_02032000
_0812FF54:
	.4byte gUnknown_02034000
	THUMB_FUNC_END sub_0812FEF8

	THUMB_FUNC_START sub_0812FF58
sub_0812FF58: @ 0x0812FF58
	push {r4-r6,lr}
	ldr r0, _0812FFA0  @ =gUnknown_03002230
	ldr r1, _0812FFA4  @ =0x000009C6
	add r0, r0, r1
	ldrh r0, [r0]
	mov r4, #64
	and r4, r4, r0
	lsl r4, r4, #16
	lsr r4, r4, #16
	neg r4, r4
	asr r4, r4, #31
	mov r0, #8
	and r4, r4, r0
	ldr r6, _0812FFA8  @ =gUnknown_0822B150
	ldr r5, _0812FFAC  @ =gUnknown_0822BA38
	add r0, r4, #4
	add r0, r0, r5
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r6
	ldr r0, [r0]
	ldr r1, _0812FFB0  @ =gUnknown_02032000
	bl LZ77UnCompWram
	add r4, r4, #5
	add r4, r4, r5
	ldrb r0, [r4]
	lsl r0, r0, #2
	add r0, r0, r6
	ldr r0, [r0]
	ldr r1, _0812FFB4  @ =gUnknown_02034000
	bl LZ77UnCompWram
	pop {r4-r6}
	pop {r0}
	bx r0
_0812FFA0:
	.4byte gUnknown_03002230
_0812FFA4:
	.4byte 0x000009C6
_0812FFA8:
	.4byte gUnknown_0822B150
_0812FFAC:
	.4byte gUnknown_0822BA38
_0812FFB0:
	.4byte gUnknown_02032000
_0812FFB4:
	.4byte gUnknown_02034000
	THUMB_FUNC_END sub_0812FF58

	THUMB_FUNC_START sub_0812FFB8
sub_0812FFB8: @ 0x0812FFB8
	push {lr}
	bl sub_08074370
	ldr r2, _0812FFE4  @ =gUnknown_03002230
	ldr r1, _0812FFE8  @ =0x000009AD
	add r0, r2, r1
	ldrb r1, [r0]
	sub r1, r1, #1
	strb r1, [r0]
	ldr r1, _0812FFEC  @ =0x000009C6
	add r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #27
	beq _0812FFD8
	cmp r0, #91
	bne _0812FFE0
_0812FFD8:
	ldr r0, _0812FFF0  @ =0x000009B5
	add r1, r2, r0
	mov r0, #1
	strb r0, [r1]
_0812FFE0:
	pop {r0}
	bx r0
_0812FFE4:
	.4byte gUnknown_03002230
_0812FFE8:
	.4byte 0x000009AD
_0812FFEC:
	.4byte 0x000009C6
_0812FFF0:
	.4byte 0x000009B5
	THUMB_FUNC_END sub_0812FFB8

	THUMB_FUNC_START sub_0812FFF4
sub_0812FFF4: @ 0x0812FFF4
	push {lr}
	bl sub_08076FAC
	ldr r0, _08130010  @ =gUnknown_03002230
	ldr r1, _08130014  @ =0x000009AD
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #44
	bne _0813000A
	bl sub_08077CA0
_0813000A:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08130010:
	.4byte gUnknown_03002230
_08130014:
	.4byte 0x000009AD
	THUMB_FUNC_END sub_0812FFF4

	THUMB_FUNC_START sub_08130018
sub_08130018: @ 0x08130018
	bx lr
	THUMB_FUNC_END sub_08130018

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0813001C
sub_0813001C: @ 0x0813001C
	ldr r0, _08130028  @ =gUnknown_03002230
	ldr r1, _0813002C  @ =0x00000A4C
	add r0, r0, r1
	mov r1, #14
	strh r1, [r0]
	bx lr
_08130028:
	.4byte gUnknown_03002230
_0813002C:
	.4byte 0x00000A4C
	THUMB_FUNC_END sub_0813001C

	THUMB_FUNC_START sub_08130030
sub_08130030: @ 0x08130030
	push {r4-r7,lr}
	ldr r2, _08130084  @ =gUnknown_03002230
	ldr r1, _08130088  @ =0x000009C6
	add r0, r2, r1
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08130098
	ldr r0, _0813008C  @ =gUnknown_0822BBB2
	ldrb r0, [r0, #1]
	mov r1, #3
	lsl r0, r0, #1
	ldr r3, _08130090  @ =gUnknown_02030000
	add r4, r0, r3
	mov r7, #15
	mov r3, #202
	lsl r3, r3, #4
	add r0, r2, r3
	ldrh r0, [r0]
	mov r2, #136
	lsl r2, r2, #1
	add r0, r0, r2
	ldr r6, _08130094  @ =gUnknown_02000800
	lsl r3, r0, #1
_08130062:
	add r2, r7, #0
	sub r5, r1, #1
	cmp r2, #0
	blt _0813007C
	add r1, r3, r6
_0813006C:
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #2
	add r1, r1, #2
	add r3, r3, #2
	sub r2, r2, #1
	cmp r2, #0
	bge _0813006C
_0813007C:
	add r1, r5, #0
	cmp r1, #0
	bge _08130062
	b _081300D8
_08130084:
	.4byte gUnknown_03002230
_08130088:
	.4byte 0x000009C6
_0813008C:
	.4byte gUnknown_0822BBB2
_08130090:
	.4byte gUnknown_02030000
_08130094:
	.4byte gUnknown_02000800
_08130098:
	ldr r0, _081300E0  @ =gUnknown_0822BBB2
	ldrb r0, [r0]
	mov r1, #3
	lsl r0, r0, #1
	ldr r3, _081300E4  @ =gUnknown_02030000
	add r4, r0, r3
	mov r7, #15
	mov r3, #202
	lsl r3, r3, #4
	add r0, r2, r3
	ldrh r0, [r0]
	mov r2, #136
	lsl r2, r2, #1
	add r0, r0, r2
	ldr r6, _081300E8  @ =gUnknown_02000800
	lsl r3, r0, #1
_081300B8:
	add r2, r7, #0
	sub r5, r1, #1
	cmp r2, #0
	blt _081300D2
	add r1, r3, r6
_081300C2:
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #2
	add r1, r1, #2
	add r3, r3, #2
	sub r2, r2, #1
	cmp r2, #0
	bge _081300C2
_081300D2:
	add r1, r5, #0
	cmp r1, #0
	bge _081300B8
_081300D8:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_081300E0:
	.4byte gUnknown_0822BBB2
_081300E4:
	.4byte gUnknown_02030000
_081300E8:
	.4byte gUnknown_02000800
	THUMB_FUNC_END sub_08130030

	THUMB_FUNC_START sub_081300EC
sub_081300EC: @ 0x081300EC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r2, _08130194  @ =gUnknown_0822BBB4
	ldr r1, _08130198  @ =gUnknown_03002230
	ldr r3, _0813019C  @ =0x00000CA6
	add r0, r1, r3
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	mov r4, #7
	lsl r0, r0, #1
	ldr r5, _081301A0  @ =gUnknown_02030400
	add r3, r0, r5
	mov r2, #202
	lsl r2, r2, #4
	add r0, r1, r2
	ldrh r0, [r0]
	lsl r0, r0, #1
	ldr r5, _081301A4  @ =gUnknown_02000AC0
	add r2, r0, r5
_08130118:
	ldrh r0, [r3]
	strh r0, [r2]
	add r3, r3, #2
	add r2, r2, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _08130118
	ldr r2, _081301A8  @ =0x000009DA
	add r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _0813018A
	mov r6, #0
	mov r3, #248
	lsl r3, r3, #2
	mov r12, r3
	mov r4, #248
	lsl r4, r4, #7
	mov r8, r4
	ldr r7, _081301AC  @ =0x000013FF
_08130140:
	lsl r5, r6, #1
	ldr r1, _081301A4  @ =gUnknown_02000AC0
	add r0, r5, r1
	ldrh r2, [r0]
	add r4, r2, #0
	mov r0, #31
	and r2, r2, r0
	cmp r2, #4
	bls _08130158
	sub r0, r2, #5
	lsl r0, r0, #16
	lsr r2, r0, #16
_08130158:
	add r3, r4, #0
	mov r0, r12
	and r3, r3, r0
	cmp r3, #159
	bls _0813016A
	add r0, r3, #0
	sub r0, r0, #160
	lsl r0, r0, #16
	lsr r3, r0, #16
_0813016A:
	mov r1, r8
	and r1, r1, r4
	cmp r1, r7
	bls _0813017A
	ldr r4, _081301B0  @ =0xFFFFEC00
	add r0, r1, r4
	lsl r0, r0, #16
	lsr r1, r0, #16
_0813017A:
	ldr r4, _081301B4  @ =gUnknown_02000B40
	add r0, r5, r4
	orr r2, r2, r3
	orr r1, r1, r2
	strh r1, [r0]
	add r6, r6, #1
	cmp r6, #7
	ble _08130140
_0813018A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08130194:
	.4byte gUnknown_0822BBB4
_08130198:
	.4byte gUnknown_03002230
_0813019C:
	.4byte 0x00000CA6
_081301A0:
	.4byte gUnknown_02030400
_081301A4:
	.4byte gUnknown_02000AC0
_081301A8:
	.4byte 0x000009DA
_081301AC:
	.4byte 0x000013FF
_081301B0:
	.4byte 0xFFFFEC00
_081301B4:
	.4byte gUnknown_02000B40
	THUMB_FUNC_END sub_081300EC

	THUMB_FUNC_START sub_081301B8
sub_081301B8: @ 0x081301B8
	push {r4-r7,lr}
	mov r3, #7
	ldr r2, _08130244  @ =gUnknown_03002230
	ldr r1, _08130248  @ =0x000009C6
	add r0, r2, r1
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	add r6, r2, #0
	cmp r0, #0
	beq _081301D0
	mov r3, #9
_081301D0:
	ldr r2, _0813024C  @ =0x00000CB2
	add r0, r6, r2
	ldrh r0, [r0]
	mov r5, #132
	lsl r5, r5, #1
	cmp r0, #0
	beq _081301E0
	add r5, r5, #112
_081301E0:
	ldr r1, _08130250  @ =gUnknown_0822BB64
	lsl r0, r3, #1
	add r0, r0, r1
	ldrh r0, [r0]
	mov r4, #7
	lsl r0, r0, #1
	ldr r7, _08130254  @ =gUnknown_02030210
	add r2, r0, r7
	mov r7, #202
	lsl r7, r7, #4
	add r0, r6, r7
	ldrh r0, [r0]
	add r0, r5, r0
	add r5, r1, #0
	sub r1, r3, #1
	lsl r0, r0, #1
	ldr r7, _08130258  @ =gUnknown_02000800
	add r3, r0, r7
_08130204:
	ldrh r0, [r2]
	strh r0, [r3]
	add r2, r2, #2
	add r3, r3, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _08130204
	lsl r0, r1, #1
	add r0, r0, r5
	ldrh r0, [r0]
	mov r3, #7
	lsl r0, r0, #1
	ldr r2, _08130254  @ =gUnknown_02030210
	add r1, r0, r2
	mov r4, #202
	lsl r4, r4, #4
	add r0, r6, r4
	ldrh r0, [r0]
	lsl r0, r0, #1
	ldr r7, _0813025C  @ =gUnknown_02000AD0
	add r2, r0, r7
_0813022E:
	ldrh r0, [r1]
	strh r0, [r2]
	add r1, r1, #2
	add r2, r2, #2
	sub r3, r3, #1
	cmp r3, #0
	bge _0813022E
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08130244:
	.4byte gUnknown_03002230
_08130248:
	.4byte 0x000009C6
_0813024C:
	.4byte 0x00000CB2
_08130250:
	.4byte gUnknown_0822BB64
_08130254:
	.4byte gUnknown_02030210
_08130258:
	.4byte gUnknown_02000800
_0813025C:
	.4byte gUnknown_02000AD0
	THUMB_FUNC_END sub_081301B8

	THUMB_FUNC_START sub_08130260
sub_08130260: @ 0x08130260
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r1, #2
	mov r4, #160
	lsl r4, r4, #1
	ldr r6, _081302C4  @ =gUnknown_02030000
	mov r3, #244
	lsl r3, r3, #2
	mov r0, #7
	mov r8, r0
	ldr r2, _081302C8  @ =gUnknown_03002ED0
	mov r12, r2
	ldr r7, _081302CC  @ =0x0000FF08
	mov r9, r7
_08130280:
	mov r2, r12
	ldrh r0, [r2]
	add r0, r4, r0
	mov r2, r8
	add r4, r4, #16
	sub r5, r1, #1
	cmp r2, #0
	blt _081302AC
	lsl r0, r0, #1
	ldr r7, _081302D0  @ =gUnknown_02000800
	add r1, r0, r7
_08130296:
	lsl r0, r3, #1
	add r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
	add r1, r1, #2
	sub r2, r2, #1
	cmp r2, #0
	bge _08130296
_081302AC:
	mov r0, #255
	and r0, r0, r3
	cmp r0, #0
	beq _081302DC
	mov r0, #248
	and r0, r0, r3
	cmp r0, #248
	bne _081302D4
	mov r0, r9
	and r3, r3, r0
	b _081302DC
	.byte 0x00
	.byte 0x00
_081302C4:
	.4byte gUnknown_02030000
_081302C8:
	.4byte gUnknown_03002ED0
_081302CC:
	.4byte 0x0000FF08
_081302D0:
	.4byte gUnknown_02000800
_081302D4:
	add r0, r3, #0
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r3, r0, #16
_081302DC:
	add r1, r5, #0
	cmp r1, #0
	bge _08130280
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08130260

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_081302F0
sub_081302F0: @ 0x081302F0
	push {r4,lr}
	ldr r1, _08130358  @ =gUnknown_0822BB64
	ldr r0, _0813035C  @ =gUnknown_0200233F
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	mov r4, #15
	lsl r0, r0, #1
	ldr r2, _08130360  @ =gUnknown_02030160
	add r1, r0, r2
	ldr r3, _08130364  @ =gUnknown_02000EE0
	ldr r2, _08130368  @ =gUnknown_02000AE0
_0813030A:
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1]
	strh r0, [r3]
	add r1, r1, #2
	add r3, r3, #2
	add r2, r2, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _0813030A
	ldr r1, _0813036C  @ =gUnknown_02002338
	ldrb r0, [r1]
	cmp r0, #0
	beq _08130344
	add r4, r0, #0
	sub r4, r4, #1
	ldr r0, _08130370  @ =gUnknown_0822BC08
	lsl r4, r4, #1
	add r4, r4, r0
	ldrh r0, [r4]
	bl sub_08133468
	ldr r1, _08130374  @ =gUnknown_020009FA
	strh r0, [r1]
	ldrh r0, [r4]
	bl sub_08133468
	ldr r1, _08130378  @ =gUnknown_02000DFA
	strh r0, [r1]
_08130344:
	ldr r1, _0813037C  @ =gUnknown_03002230
	ldr r0, _08130380  @ =0x0000099B
	add r1, r1, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08130358:
	.4byte gUnknown_0822BB64
_0813035C:
	.4byte gUnknown_0200233F
_08130360:
	.4byte gUnknown_02030160
_08130364:
	.4byte gUnknown_02000EE0
_08130368:
	.4byte gUnknown_02000AE0
_0813036C:
	.4byte gUnknown_02002338
_08130370:
	.4byte gUnknown_0822BC08
_08130374:
	.4byte gUnknown_020009FA
_08130378:
	.4byte gUnknown_02000DFA
_0813037C:
	.4byte gUnknown_03002230
_08130380:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_081302F0

	THUMB_FUNC_START sub_08130384
sub_08130384: @ 0x08130384
	push {r4-r7,lr}
	ldr r1, _081303F8  @ =gUnknown_0822BC0C
	ldr r0, _081303FC  @ =gUnknown_03002230
	ldr r2, _08130400  @ =0x00000CAA
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #1
	ldr r1, _08130404  @ =gUnknown_02030610
	add r2, r0, r1
	mov r0, #0
	ldr r7, _08130408  @ =gUnknown_083BF758
	ldr r6, _0813040C  @ =gUnknown_02000800
	mov r4, #0
_081303A4:
	add r5, r0, #1
	mov r3, #3
	add r1, r4, r6
_081303AA:
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	add r4, r4, #2
	sub r3, r3, #1
	cmp r3, #0
	bge _081303AA
	add r2, r2, #24
	add r0, r5, #0
	cmp r0, #7
	ble _081303A4
	add r5, r7, #0
	ldr r6, _08130410  @ =gUnknown_02000900
	mov r4, #127
_081303C8:
	ldrh r0, [r5]
	bl sub_08133468
	strh r0, [r6]
	add r5, r5, #2
	add r6, r6, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _081303C8
	ldr r5, _08130414  @ =gUnknown_083BF858
	ldr r6, _08130418  @ =gUnknown_02000B00
	mov r4, #127
_081303E0:
	ldrh r0, [r5]
	bl sub_08133468
	strh r0, [r6]
	add r5, r5, #2
	add r6, r6, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _081303E0
	pop {r4-r7}
	pop {r0}
	bx r0
_081303F8:
	.4byte gUnknown_0822BC0C
_081303FC:
	.4byte gUnknown_03002230
_08130400:
	.4byte 0x00000CAA
_08130404:
	.4byte gUnknown_02030610
_08130408:
	.4byte gUnknown_083BF758
_0813040C:
	.4byte gUnknown_02000800
_08130410:
	.4byte gUnknown_02000900
_08130414:
	.4byte gUnknown_083BF858
_08130418:
	.4byte gUnknown_02000B00
	THUMB_FUNC_END sub_08130384

	THUMB_FUNC_START sub_0813041C
sub_0813041C: @ 0x0813041C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r2, _081304BC  @ =gUnknown_0822BC10
	ldr r1, _081304C0  @ =gUnknown_03002230
	ldr r3, _081304C4  @ =0x00000CAE
	add r0, r1, r3
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	mov r3, #5
	lsl r0, r0, #1
	ldr r5, _081304C8  @ =gUnknown_02030800
	add r4, r0, r5
	mov r0, #15
	mov r12, r0
	mov r5, #202
	lsl r5, r5, #4
	add r0, r1, r5
	ldrh r0, [r0]
	add r0, r0, #32
	mov r8, r2
	add r6, r1, #0
	ldr r7, _081304CC  @ =gUnknown_02000800
	lsl r2, r0, #1
_08130450:
	mov r1, r12
	sub r5, r3, #1
	cmp r1, #0
	blt _0813046A
	add r3, r2, r7
_0813045A:
	ldrh r0, [r4]
	strh r0, [r3]
	add r4, r4, #2
	add r3, r3, #2
	add r2, r2, #2
	sub r1, r1, #1
	cmp r1, #0
	bge _0813045A
_0813046A:
	add r3, r5, #0
	cmp r3, #0
	bge _08130450
	ldr r1, _081304D0  @ =0x00000CB2
	add r0, r6, r1
	ldrh r0, [r0]
	mov r1, #132
	lsl r1, r1, #1
	cmp r0, #0
	beq _08130480
	add r1, r1, #112
_08130480:
	ldr r2, _081304C4  @ =0x00000CAE
	add r0, r6, r2
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r8
	ldrh r0, [r0]
	mov r3, #7
	lsl r0, r0, #1
	ldr r4, _081304C8  @ =gUnknown_02030800
	add r2, r0, r4
	mov r5, #202
	lsl r5, r5, #4
	add r0, r6, r5
	ldrh r0, [r0]
	add r0, r1, r0
	lsl r0, r0, #1
	ldr r4, _081304CC  @ =gUnknown_02000800
	add r1, r0, r4
_081304A4:
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	sub r3, r3, #1
	cmp r3, #0
	bge _081304A4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_081304BC:
	.4byte gUnknown_0822BC10
_081304C0:
	.4byte gUnknown_03002230
_081304C4:
	.4byte 0x00000CAE
_081304C8:
	.4byte gUnknown_02030800
_081304CC:
	.4byte gUnknown_02000800
_081304D0:
	.4byte 0x00000CB2
	THUMB_FUNC_END sub_0813041C

	THUMB_FUNC_START sub_081304D4
sub_081304D4: @ 0x081304D4
	push {r4-r7,lr}
	ldr r4, _08130510  @ =gUnknown_083BF858
	ldr r0, _08130514  @ =gUnknown_03002230
	ldr r1, _08130518  @ =0x000009DA
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #221
	bne _08130524
	mov r0, #144
	lsl r0, r0, #1
	add r4, r4, r0
	ldr r7, _0813051C  @ =gUnknown_02000F20
	ldr r6, _08130520  @ =gUnknown_02000B20
	mov r5, #15
_081304F0:
	ldrh r0, [r4]
	bl sub_08133468
	strh r0, [r6]
	ldrh r0, [r4]
	bl sub_08133468
	strh r0, [r7]
	add r4, r4, #2
	add r7, r7, #2
	add r6, r6, #2
	sub r5, r5, #1
	cmp r5, #0
	bge _081304F0
	b _081305C0
	.byte 0x00
	.byte 0x00
_08130510:
	.4byte gUnknown_083BF858
_08130514:
	.4byte gUnknown_03002230
_08130518:
	.4byte 0x000009DA
_0813051C:
	.4byte gUnknown_02000F20
_08130520:
	.4byte gUnknown_02000B20
_08130524:
	cmp r0, #121
	bne _0813055C
	mov r0, #160
	lsl r0, r0, #1
	add r4, r4, r0
	ldr r7, _08130554  @ =gUnknown_02000F20
	ldr r6, _08130558  @ =gUnknown_02000B20
	mov r5, #15
_08130534:
	ldrh r0, [r4]
	bl sub_08133468
	strh r0, [r6]
	ldrh r0, [r4]
	bl sub_08133468
	strh r0, [r7]
	add r4, r4, #2
	add r7, r7, #2
	add r6, r6, #2
	sub r5, r5, #1
	cmp r5, #0
	bge _08130534
	b _081305C0
	.byte 0x00
	.byte 0x00
_08130554:
	.4byte gUnknown_02000F20
_08130558:
	.4byte gUnknown_02000B20
_0813055C:
	cmp r0, #189
	bne _08130594
	mov r0, #176
	lsl r0, r0, #1
	add r4, r4, r0
	ldr r7, _0813058C  @ =gUnknown_02000F20
	ldr r6, _08130590  @ =gUnknown_02000B20
	mov r5, #15
_0813056C:
	ldrh r0, [r4]
	bl sub_08133468
	strh r0, [r6]
	ldrh r0, [r4]
	bl sub_08133468
	strh r0, [r7]
	add r4, r4, #2
	add r7, r7, #2
	add r6, r6, #2
	sub r5, r5, #1
	cmp r5, #0
	bge _0813056C
	b _081305C0
	.byte 0x00
	.byte 0x00
_0813058C:
	.4byte gUnknown_02000F20
_08130590:
	.4byte gUnknown_02000B20
_08130594:
	cmp r0, #252
	bne _081305CA
	mov r0, #192
	lsl r0, r0, #1
	add r4, r4, r0
	ldr r7, _081305D0  @ =gUnknown_02000F20
	ldr r6, _081305D4  @ =gUnknown_02000B20
	mov r5, #15
_081305A4:
	ldrh r0, [r4]
	bl sub_08133468
	strh r0, [r6]
	ldrh r0, [r4]
	bl sub_08133468
	strh r0, [r7]
	add r4, r4, #2
	add r7, r7, #2
	add r6, r6, #2
	sub r5, r5, #1
	cmp r5, #0
	bge _081305A4
_081305C0:
	ldr r0, _081305D8  @ =gUnknown_03002230
	ldr r1, _081305DC  @ =0x0000099B
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
_081305CA:
	pop {r4-r7}
	pop {r0}
	bx r0
_081305D0:
	.4byte gUnknown_02000F20
_081305D4:
	.4byte gUnknown_02000B20
_081305D8:
	.4byte gUnknown_03002230
_081305DC:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_081304D4

	THUMB_FUNC_START sub_081305E0
sub_081305E0: @ 0x081305E0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r1, _08130658  @ =gUnknown_0822BC38
	ldr r2, _0813065C  @ =gUnknown_03002230
	ldr r3, _08130660  @ =0x00000CAB
	add r0, r2, r3
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	mov r7, #208
	lsl r7, r7, #4
	add r0, r0, r7
	mov r1, #4
	mov r4, #32
	ldr r6, _08130664  @ =gUnknown_02030000
	lsl r0, r0, #16
	lsr r3, r0, #16
	mov r0, #7
	mov r8, r0
	sub r7, r7, #96
	add r7, r7, r2
	mov r12, r7
	ldr r0, _08130668  @ =0x0000FF08
	mov r9, r0
_08130616:
	mov r2, r12
	ldrh r0, [r2]
	add r0, r4, r0
	mov r2, r8
	add r4, r4, #16
	sub r5, r1, #1
	cmp r2, #0
	blt _08130642
	lsl r0, r0, #1
	ldr r7, _0813066C  @ =gUnknown_02000800
	add r1, r0, r7
_0813062C:
	lsl r0, r3, #1
	add r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
	add r1, r1, #2
	sub r2, r2, #1
	cmp r2, #0
	bge _0813062C
_08130642:
	mov r0, #255
	and r0, r0, r3
	cmp r0, #0
	beq _08130678
	mov r0, #248
	and r0, r0, r3
	cmp r0, #248
	bne _08130670
	mov r0, r9
	and r3, r3, r0
	b _08130678
_08130658:
	.4byte gUnknown_0822BC38
_0813065C:
	.4byte gUnknown_03002230
_08130660:
	.4byte 0x00000CAB
_08130664:
	.4byte gUnknown_02030000
_08130668:
	.4byte 0x0000FF08
_0813066C:
	.4byte gUnknown_02000800
_08130670:
	add r0, r3, #0
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r3, r0, #16
_08130678:
	add r1, r5, #0
	cmp r1, #0
	bge _08130616
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_081305E0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0813068C
sub_0813068C: @ 0x0813068C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, _0813070C  @ =gUnknown_0822BC44
	ldr r2, _08130710  @ =gUnknown_03002230
	ldr r3, _08130714  @ =0x00000CAC
	add r0, r2, r3
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	mov r7, #224
	lsl r7, r7, #4
	add r0, r0, r7
	mov r1, #2
	mov r4, #40
	ldr r6, _08130718  @ =gUnknown_02030000
	lsl r0, r0, #16
	lsr r3, r0, #16
	mov r0, #7
	mov r8, r0
	mov r9, r2
	mov r2, #202
	lsl r2, r2, #4
	add r2, r2, r9
	mov r12, r2
	ldr r7, _0813071C  @ =0x0000FF08
	mov r10, r7
_081306C8:
	mov r2, r12
	ldrh r0, [r2]
	add r0, r4, r0
	mov r2, r8
	add r4, r4, #16
	sub r5, r1, #1
	cmp r2, #0
	blt _081306F4
	lsl r0, r0, #1
	ldr r7, _08130720  @ =gUnknown_02000800
	add r1, r0, r7
_081306DE:
	lsl r0, r3, #1
	add r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
	add r1, r1, #2
	sub r2, r2, #1
	cmp r2, #0
	bge _081306DE
_081306F4:
	mov r0, #255
	and r0, r0, r3
	cmp r0, #0
	beq _0813072C
	mov r0, #248
	and r0, r0, r3
	cmp r0, #248
	bne _08130724
	mov r0, r10
	and r3, r3, r0
	b _0813072C
	.byte 0x00
	.byte 0x00
_0813070C:
	.4byte gUnknown_0822BC44
_08130710:
	.4byte gUnknown_03002230
_08130714:
	.4byte 0x00000CAC
_08130718:
	.4byte gUnknown_02030000
_0813071C:
	.4byte 0x0000FF08
_08130720:
	.4byte gUnknown_02000800
_08130724:
	add r0, r3, #0
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r3, r0, #16
_0813072C:
	add r1, r5, #0
	cmp r1, #0
	bge _081306C8
	ldr r2, _08130760  @ =gUnknown_02000850
	ldr r0, _08130764  @ =0x000009CC
	add r0, r0, r9
	ldrh r1, [r0]
	strh r1, [r2]
	ldr r0, _08130768  @ =gUnknown_02000870
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08130760:
	.4byte gUnknown_02000850
_08130764:
	.4byte 0x000009CC
_08130768:
	.4byte gUnknown_02000870
	THUMB_FUNC_END sub_0813068C

	THUMB_FUNC_START sub_0813076C
sub_0813076C: @ 0x0813076C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, _081307EC  @ =gUnknown_0822BC44
	ldr r2, _081307F0  @ =gUnknown_03002230
	ldr r3, _081307F4  @ =0x00000CAD
	add r0, r2, r3
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	mov r7, #224
	lsl r7, r7, #4
	add r0, r0, r7
	mov r1, #2
	mov r4, #88
	ldr r6, _081307F8  @ =gUnknown_02030000
	lsl r0, r0, #16
	lsr r3, r0, #16
	mov r0, #7
	mov r8, r0
	mov r9, r2
	mov r2, #202
	lsl r2, r2, #4
	add r2, r2, r9
	mov r12, r2
	ldr r7, _081307FC  @ =0x0000FF08
	mov r10, r7
_081307A8:
	mov r2, r12
	ldrh r0, [r2]
	add r0, r4, r0
	mov r2, r8
	add r4, r4, #16
	sub r5, r1, #1
	cmp r2, #0
	blt _081307D4
	lsl r0, r0, #1
	ldr r7, _08130800  @ =gUnknown_02000800
	add r1, r0, r7
_081307BE:
	lsl r0, r3, #1
	add r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
	add r1, r1, #2
	sub r2, r2, #1
	cmp r2, #0
	bge _081307BE
_081307D4:
	mov r0, #255
	and r0, r0, r3
	cmp r0, #0
	beq _0813080C
	mov r0, #248
	and r0, r0, r3
	cmp r0, #248
	bne _08130804
	mov r0, r10
	and r3, r3, r0
	b _0813080C
	.byte 0x00
	.byte 0x00
_081307EC:
	.4byte gUnknown_0822BC44
_081307F0:
	.4byte gUnknown_03002230
_081307F4:
	.4byte 0x00000CAD
_081307F8:
	.4byte gUnknown_02030000
_081307FC:
	.4byte 0x0000FF08
_08130800:
	.4byte gUnknown_02000800
_08130804:
	add r0, r3, #0
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r3, r0, #16
_0813080C:
	add r1, r5, #0
	cmp r1, #0
	bge _081307A8
	ldr r2, _08130840  @ =gUnknown_02000850
	ldr r0, _08130844  @ =0x000009CC
	add r0, r0, r9
	ldrh r1, [r0]
	strh r1, [r2]
	ldr r0, _08130848  @ =gUnknown_02000870
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08130840:
	.4byte gUnknown_02000850
_08130844:
	.4byte 0x000009CC
_08130848:
	.4byte gUnknown_02000870
	THUMB_FUNC_END sub_0813076C

	THUMB_FUNC_START sub_0813084C
sub_0813084C: @ 0x0813084C
	push {r4-r7,lr}
	add r5, r0, #0
	ldr r4, _08130944  @ =gUnknown_03002230
	mov r0, #202
	lsl r0, r0, #4
	add r6, r4, r0
	mov r0, #0
	strh r0, [r6]
	lsl r1, r1, #2
	ldr r3, _08130948  @ =gUnknown_0822BD1C
	add r0, r1, r3
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	blt _08130874
	ldr r7, _0813094C  @ =0x00000CAC
	add r0, r4, r7
	strb r2, [r0]
_08130874:
	add r0, r1, #1
	add r0, r0, r3
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	blt _0813088A
	ldr r7, _08130950  @ =0x00000CAD
	add r0, r4, r7
	strb r2, [r0]
_0813088A:
	add r0, r1, #2
	add r0, r0, r3
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	blt _081308A2
	mov r2, #203
	lsl r2, r2, #4
	add r0, r4, r2
	strb r1, [r0]
_081308A2:
	lsl r1, r5, #1
	ldr r3, _08130954  @ =gUnknown_0822BD98
	add r0, r1, r3
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	blt _081308BA
	ldr r5, _08130958  @ =0x00000CA5
	add r0, r4, r5
	strb r2, [r0]
_081308BA:
	add r0, r1, #1
	add r0, r0, r3
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	blt _081308D0
	ldr r7, _0813095C  @ =0x00000CA6
	add r0, r4, r7
	strb r1, [r0]
_081308D0:
	bl sub_0813068C
	bl sub_0813076C
	ldr r1, _08130960  @ =gUnknown_0822BB64
	mov r2, #203
	lsl r2, r2, #4
	add r0, r4, r2
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	mov r3, #7
	lsl r0, r0, #1
	ldr r4, _08130964  @ =gUnknown_02031800
	add r2, r0, r4
	ldrh r0, [r6]
	lsl r0, r0, #1
	ldr r5, _08130968  @ =gUnknown_020008E0
	add r1, r0, r5
_081308F8:
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	sub r3, r3, #1
	cmp r3, #0
	bge _081308F8
	ldr r2, _0813096C  @ =gUnknown_0822BBB4
	ldr r1, _08130944  @ =gUnknown_03002230
	ldr r7, _08130958  @ =0x00000CA5
	add r0, r1, r7
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	mov r3, #7
	lsl r0, r0, #1
	ldr r4, _08130970  @ =gUnknown_02030400
	add r2, r0, r4
	mov r5, #202
	lsl r5, r5, #4
	add r1, r1, r5
	ldrh r0, [r1]
	lsl r0, r0, #1
	ldr r7, _08130974  @ =gUnknown_02000AA0
	add r1, r0, r7
_0813092C:
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	sub r3, r3, #1
	cmp r3, #0
	bge _0813092C
	bl sub_081300EC
	pop {r4-r7}
	pop {r0}
	bx r0
_08130944:
	.4byte gUnknown_03002230
_08130948:
	.4byte gUnknown_0822BD1C
_0813094C:
	.4byte 0x00000CAC
_08130950:
	.4byte 0x00000CAD
_08130954:
	.4byte gUnknown_0822BD98
_08130958:
	.4byte 0x00000CA5
_0813095C:
	.4byte 0x00000CA6
_08130960:
	.4byte gUnknown_0822BB64
_08130964:
	.4byte gUnknown_02031800
_08130968:
	.4byte gUnknown_020008E0
_0813096C:
	.4byte gUnknown_0822BBB4
_08130970:
	.4byte gUnknown_02030400
_08130974:
	.4byte gUnknown_02000AA0
	THUMB_FUNC_END sub_0813084C

	THUMB_FUNC_START sub_08130978
sub_08130978: @ 0x08130978
	push {lr}
	ldr r1, _081309A8  @ =0x00002669
	ldr r3, _081309AC  @ =gUnknown_03002230
	ldr r2, _081309B0  @ =0x000009C6
	add r0, r3, r2
	ldrh r2, [r0]
	cmp r2, #127
	bls _081309C0
	ldr r2, _081309B4  @ =0x000009DA
	add r0, r3, r2
	ldrh r2, [r0]
	ldr r3, _081309B8  @ =0xFFFFFE7E
	add r0, r2, r3
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bls _081309A2
	mov r0, #192
	lsl r0, r0, #1
	cmp r2, r0
	bne _081309CA
_081309A2:
	ldr r1, _081309BC  @ =0x000019C6
	b _081309CA
	.byte 0x00
	.byte 0x00
_081309A8:
	.4byte 0x00002669
_081309AC:
	.4byte gUnknown_03002230
_081309B0:
	.4byte 0x000009C6
_081309B4:
	.4byte 0x000009DA
_081309B8:
	.4byte 0xFFFFFE7E
_081309BC:
	.4byte 0x000019C6
_081309C0:
	mov r0, #64
	and r0, r0, r2
	cmp r0, #0
	beq _081309CA
	ldr r1, _08130A10  @ =0x00002A32
_081309CA:
	add r0, r1, #0
	bl sub_08133468
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r0, _08130A14  @ =gUnknown_02000C50
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	ldr r0, _08130A18  @ =gUnknown_02000850
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	add r0, r0, #32
	strh r1, [r0]
	ldr r0, _08130A1C  @ =gUnknown_03002230
	ldr r2, _08130A20  @ =0x000009CC
	add r0, r0, r2
	strh r1, [r0]
	pop {r0}
	bx r0
_08130A10:
	.4byte 0x00002A32
_08130A14:
	.4byte gUnknown_02000C50
_08130A18:
	.4byte gUnknown_02000850
_08130A1C:
	.4byte gUnknown_03002230
_08130A20:
	.4byte 0x000009CC
	THUMB_FUNC_END sub_08130978

	THUMB_FUNC_START sub_08130A24
sub_08130A24: @ 0x08130A24
	push {lr}
	ldr r2, _08130A54  @ =0x00002669
	ldr r3, _08130A58  @ =gUnknown_03002230
	ldr r1, _08130A5C  @ =0x000009C6
	add r0, r3, r1
	ldrh r1, [r0]
	cmp r1, #127
	bls _08130A6C
	ldr r1, _08130A60  @ =0x000009DA
	add r0, r3, r1
	ldrh r1, [r0]
	ldr r3, _08130A64  @ =0xFFFFFE7E
	add r0, r1, r3
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bls _08130A4E
	mov r0, #192
	lsl r0, r0, #1
	cmp r1, r0
	bne _08130A76
_08130A4E:
	ldr r2, _08130A68  @ =0x000019C6
	b _08130A76
	.byte 0x00
	.byte 0x00
_08130A54:
	.4byte 0x00002669
_08130A58:
	.4byte gUnknown_03002230
_08130A5C:
	.4byte 0x000009C6
_08130A60:
	.4byte 0x000009DA
_08130A64:
	.4byte 0xFFFFFE7E
_08130A68:
	.4byte 0x000019C6
_08130A6C:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08130A76
	ldr r2, _08130AA4  @ =0x00002A32
_08130A76:
	add r0, r2, #0
	bl sub_08133468
	lsl r0, r0, #16
	lsr r2, r0, #16
	ldr r0, _08130AA8  @ =gUnknown_02000850
	strh r2, [r0]
	add r0, r0, #32
	strh r2, [r0]
	add r0, r0, #32
	strh r2, [r0]
	add r0, r0, #32
	strh r2, [r0]
	add r0, r0, #32
	strh r2, [r0]
	add r0, r0, #32
	strh r2, [r0]
	ldr r0, _08130AAC  @ =gUnknown_03002230
	ldr r1, _08130AB0  @ =0x000009CC
	add r0, r0, r1
	strh r2, [r0]
	pop {r0}
	bx r0
_08130AA4:
	.4byte 0x00002A32
_08130AA8:
	.4byte gUnknown_02000850
_08130AAC:
	.4byte gUnknown_03002230
_08130AB0:
	.4byte 0x000009CC
	THUMB_FUNC_END sub_08130A24

	THUMB_FUNC_START sub_08130AB4
sub_08130AB4: @ 0x08130AB4
	push {r4-r7,lr}
	ldr r1, _08130AE0  @ =gUnknown_03002230
	ldr r0, _08130AE4  @ =0x000009B5
	add r5, r1, r0
	mov r0, #0
	strb r0, [r5]
	ldr r3, _08130AE8  @ =0x000019C6
	ldr r2, _08130AEC  @ =0x000009C6
	add r4, r1, r2
	ldrh r2, [r4]
	cmp r2, #128
	bne _08130AF8
	ldr r2, _08130AF0  @ =0x000009DA
	add r0, r1, r2
	ldrh r1, [r0]
	ldr r0, _08130AF4  @ =0x00000181
	cmp r1, r0
	bne _08130B20
	mov r0, #1
	strb r0, [r5]
	b _08130B12
	.byte 0x00
	.byte 0x00
_08130AE0:
	.4byte gUnknown_03002230
_08130AE4:
	.4byte 0x000009B5
_08130AE8:
	.4byte 0x000019C6
_08130AEC:
	.4byte 0x000009C6
_08130AF0:
	.4byte 0x000009DA
_08130AF4:
	.4byte 0x00000181
_08130AF8:
	cmp r2, #129
	beq _08130B20
	ldr r3, _08130BB0  @ =0x00002A32
	cmp r2, #91
	beq _08130B20
	mov r0, #191
	and r2, r2, r0
	cmp r2, #3
	beq _08130B20
	cmp r2, #5
	beq _08130B20
	cmp r2, #7
	beq _08130B20
_08130B12:
	ldr r3, _08130BB4  @ =0x00002669
	ldrh r1, [r4]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08130B20
	ldr r3, _08130BB0  @ =0x00002A32
_08130B20:
	add r0, r3, #0
	bl sub_08133468
	lsl r0, r0, #16
	lsr r3, r0, #16
	ldr r0, _08130BB8  @ =gUnknown_02000C50
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	ldr r0, _08130BBC  @ =gUnknown_02000850
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	ldr r2, _08130BC0  @ =gUnknown_03002230
	ldr r4, _08130BC4  @ =0x000009CC
	add r0, r2, r4
	strh r3, [r0]
	ldr r0, _08130BC8  @ =0x000009D6
	add r1, r2, r0
	mov r0, #32
	strb r0, [r1]
	add r4, r4, #11
	add r1, r2, r4
	mov r0, #64
	strb r0, [r1]
	ldr r0, _08130BCC  @ =0x000009D8
	add r1, r2, r0
	mov r0, #128
	strb r0, [r1]
	ldr r1, _08130BD0  @ =0x000009C6
	add r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _08130C3C
	cmp r0, #112
	bne _08130B8A
	b _08130D76
_08130B8A:
	cmp r0, #64
	beq _08130C3C
	cmp r0, #91
	beq _08130C3C
	cmp r0, #3
	beq _08130C3C
	cmp r0, #5
	beq _08130C3C
	cmp r0, #7
	beq _08130C3C
	mov r5, #74
	mov r3, #135
	cmp r0, #67
	beq _08130BD4
	cmp r0, #69
	beq _08130BD4
	sub r4, r4, #60
	add r1, r2, r4
	b _08130D84
_08130BB0:
	.4byte 0x00002A32
_08130BB4:
	.4byte 0x00002669
_08130BB8:
	.4byte gUnknown_02000C50
_08130BBC:
	.4byte gUnknown_02000850
_08130BC0:
	.4byte gUnknown_03002230
_08130BC4:
	.4byte 0x000009CC
_08130BC8:
	.4byte 0x000009D6
_08130BCC:
	.4byte 0x000009D8
_08130BD0:
	.4byte 0x000009C6
_08130BD4:
	ldr r4, _08130CBC  @ =gUnknown_03002230
	ldr r0, _08130CC0  @ =0x000009D6
	add r1, r4, r0
	mov r0, #38
	strb r0, [r1]
	ldr r1, _08130CC4  @ =0x000009D7
	add r0, r4, r1
	strb r5, [r0]
	ldr r2, _08130CC8  @ =0x000009D8
	add r0, r4, r2
	strb r3, [r0]
	mov r1, #31
	add r0, r3, #0
	and r0, r0, r1
	lsl r2, r0, #10
	add r0, r5, #0
	and r0, r0, r1
	lsl r1, r0, #5
	orr r2, r2, r1
	orr r2, r2, r0
	add r0, r2, #0
	bl sub_08133468
	lsl r0, r0, #16
	lsr r3, r0, #16
	ldr r0, _08130CCC  @ =gUnknown_02000C50
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	ldr r0, _08130CD0  @ =gUnknown_02000850
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	add r0, r0, #32
	strh r3, [r0]
	ldr r0, _08130CD4  @ =0x000009CC
	add r4, r4, r0
	strh r3, [r4]
_08130C3C:
	ldr r2, _08130CBC  @ =gUnknown_03002230
	ldr r1, _08130CD8  @ =0x000009AD
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #4
	beq _08130D28
	ldr r4, _08130CDC  @ =0x00000958
	add r0, r2, r4
	ldrh r3, [r0]
	ldr r0, _08130CE0  @ =0x0000095E
	add r6, r2, r0
	strh r3, [r6]
	sub r1, r1, #91
	add r4, r2, r1
	ldrh r5, [r4]
	sub r0, r0, #2
	add r7, r2, r0
	strh r5, [r7]
	add r1, r1, #116
	add r0, r2, r1
	ldrh r1, [r0]
	mov r0, #63
	and r0, r0, r1
	cmp r0, #27
	beq _08130C70
	b _08130D76
_08130C70:
	mov r2, #0
	ldrsh r0, [r4, r2]
	ldr r4, _08130CE4  @ =0xFFFFF888
	add r0, r0, r4
	lsl r0, r0, #15
	lsr r2, r0, #16
	add r1, r2, #0
	mov r0, #128
	lsl r0, r0, #7
	and r0, r0, r2
	cmp r0, #0
	beq _08130C8E
	mov r1, #128
	lsl r1, r1, #8
	orr r1, r1, r2
_08130C8E:
	sub r0, r5, r1
	strh r0, [r7]
	add r2, r3, #0
	lsl r1, r2, #16
	ldr r0, _08130CE8  @ =0x06BF0000
	cmp r1, r0
	ble _08130D00
	ldr r1, _08130CEC  @ =0xFFFFFA00
	add r0, r2, r1
	ldr r2, _08130CF0  @ =0x000003FF
	add r1, r2, #0
	and r0, r0, r1
	lsl r2, r0, #16
	ldr r1, _08130CF4  @ =0x0000017F
	cmp r0, r1
	bhi _08130CF8
	lsr r0, r2, #17
	mov r4, #194
	lsl r4, r4, #3
	add r0, r0, r4
	strh r0, [r6]
	b _08130D76
	.byte 0x00
	.byte 0x00
_08130CBC:
	.4byte gUnknown_03002230
_08130CC0:
	.4byte 0x000009D6
_08130CC4:
	.4byte 0x000009D7
_08130CC8:
	.4byte 0x000009D8
_08130CCC:
	.4byte gUnknown_02000C50
_08130CD0:
	.4byte gUnknown_02000850
_08130CD4:
	.4byte 0x000009CC
_08130CD8:
	.4byte 0x000009AD
_08130CDC:
	.4byte 0x00000958
_08130CE0:
	.4byte 0x0000095E
_08130CE4:
	.4byte 0xFFFFF888
_08130CE8:
	.4byte 0x06BF0000
_08130CEC:
	.4byte 0xFFFFFA00
_08130CF0:
	.4byte 0x000003FF
_08130CF4:
	.4byte 0x0000017F
_08130CF8:
	mov r0, #216
	lsl r0, r0, #3
	strh r0, [r6]
	b _08130D76
_08130D00:
	mov r0, #255
	and r0, r0, r3
	lsr r0, r0, #1
	mov r2, #192
	lsl r2, r2, #3
	add r1, r2, #0
	orr r0, r0, r1
	mov r1, #0
	orr r0, r0, r1
	strh r0, [r6]
	ldr r1, _08130D24  @ =0x0000060F
	cmp r0, r1
	bgt _08130D76
	mov r0, #194
	lsl r0, r0, #3
	strh r0, [r6]
	b _08130D76
	.byte 0x00
	.byte 0x00
_08130D24:
	.4byte 0x0000060F
_08130D28:
	ldr r4, _08130D60  @ =0x000009C6
	add r0, r2, r4
	ldrh r1, [r0]
	mov r0, #63
	and r0, r0, r1
	cmp r0, #27
	bne _08130D76
	ldr r1, _08130D64  @ =0x00000958
	add r0, r2, r1
	ldrh r0, [r0]
	sub r4, r4, #104
	add r3, r2, r4
	strh r0, [r3]
	sub r1, r1, #6
	add r0, r2, r1
	ldrh r0, [r0]
	sub r4, r4, #2
	add r1, r2, r4
	strh r0, [r1]
	ldr r4, _08130D68  @ =0x00000AB6
	add r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #8
	beq _08130D70
	ldr r0, _08130D6C  @ =0x00000838
	strh r0, [r1]
	b _08130D76
	.byte 0x00
	.byte 0x00
_08130D60:
	.4byte 0x000009C6
_08130D64:
	.4byte 0x00000958
_08130D68:
	.4byte 0x00000AB6
_08130D6C:
	.4byte 0x00000838
_08130D70:
	mov r0, #216
	lsl r0, r0, #3
	strh r0, [r3]
_08130D76:
	ldr r1, _08130D90  @ =gUnknown_03002230
	ldr r0, _08130D94  @ =0x000009B5
	add r2, r1, r0
	mov r0, #0
	strb r0, [r2]
	ldr r2, _08130D98  @ =0x0000099B
	add r1, r1, r2
_08130D84:
	mov r0, #1
	strb r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08130D90:
	.4byte gUnknown_03002230
_08130D94:
	.4byte 0x000009B5
_08130D98:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08130AB4

	THUMB_FUNC_START sub_08130D9C
sub_08130D9C: @ 0x08130D9C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r7, _08130EB8  @ =gUnknown_083BD758
	mov r6, #128
	lsl r6, r6, #5
	mov r5, #0
	ldr r0, _08130EBC  @ =gUnknown_0822BE66
	mov r8, r0
	ldr r1, _08130EC0  @ =gUnknown_0822BDD0
	mov r9, r1
	ldr r2, _08130EC4  @ =gUnknown_0822BE16
	mov r10, r2
	mov r0, #31
	mov r12, r0
_08130DBE:
	ldrh r3, [r7]
	mov r0, #192
	lsl r0, r0, #18
	ldrb r4, [r0, #7]
	lsl r4, r4, #6
	add r4, r4, r8
	mov r1, #31
	and r1, r1, r3
	lsl r1, r1, #1
	add r1, r1, r4
	lsr r0, r3, #5
	mov r2, r12
	and r0, r0, r2
	lsl r0, r0, #1
	add r0, r0, r4
	ldrh r2, [r0]
	lsl r2, r2, #5
	ldrh r0, [r1]
	orr r2, r2, r0
	lsr r3, r3, #10
	mov r0, r12
	and r3, r3, r0
	lsl r3, r3, #1
	add r3, r3, r4
	ldrh r0, [r3]
	lsl r0, r0, #10
	orr r2, r2, r0
	lsl r0, r5, #1
	ldr r1, _08130EC8  @ =gUnknown_02030000
	add r0, r0, r1
	strh r2, [r0]
	add r5, r5, #1
	add r7, r7, #2
	sub r6, r6, #1
	cmp r6, #0
	bgt _08130DBE
	mov r7, r9
	mov r6, #35
	mov r5, #0
	mov r2, #31
	mov r12, r2
_08130E10:
	ldrh r3, [r7]
	mov r0, #192
	lsl r0, r0, #18
	ldrb r4, [r0, #7]
	lsl r4, r4, #6
	add r4, r4, r8
	mov r1, #31
	and r1, r1, r3
	lsl r1, r1, #1
	add r1, r1, r4
	lsr r0, r3, #5
	mov r2, r12
	and r0, r0, r2
	lsl r0, r0, #1
	add r0, r0, r4
	ldrh r2, [r0]
	lsl r2, r2, #5
	ldrh r0, [r1]
	orr r2, r2, r0
	lsr r3, r3, #10
	mov r0, r12
	and r3, r3, r0
	lsl r3, r3, #1
	add r3, r3, r4
	ldrh r0, [r3]
	lsl r0, r0, #10
	orr r2, r2, r0
	lsl r0, r5, #1
	ldr r1, _08130ECC  @ =gUnknown_0200BB00
	add r0, r0, r1
	strh r2, [r0]
	add r5, r5, #1
	add r7, r7, #2
	sub r6, r6, #1
	cmp r6, #0
	bgt _08130E10
	mov r7, r10
	mov r6, #40
	mov r5, #0
	mov r2, #31
	mov r12, r2
_08130E62:
	ldrh r3, [r7]
	mov r0, #192
	lsl r0, r0, #18
	ldrb r4, [r0, #7]
	lsl r4, r4, #6
	add r4, r4, r8
	mov r1, #31
	and r1, r1, r3
	lsl r1, r1, #1
	add r1, r1, r4
	lsr r0, r3, #5
	mov r2, r12
	and r0, r0, r2
	lsl r0, r0, #1
	add r0, r0, r4
	ldrh r2, [r0]
	lsl r2, r2, #5
	ldrh r0, [r1]
	orr r2, r2, r0
	lsr r3, r3, #10
	mov r0, r12
	and r3, r3, r0
	lsl r3, r3, #1
	add r3, r3, r4
	ldrh r0, [r3]
	lsl r0, r0, #10
	orr r2, r2, r0
	lsl r0, r5, #1
	ldr r1, _08130ED0  @ =gUnknown_0200BB50
	add r0, r0, r1
	strh r2, [r0]
	add r5, r5, #1
	add r7, r7, #2
	sub r6, r6, #1
	cmp r6, #0
	bgt _08130E62
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08130EB8:
	.4byte gUnknown_083BD758
_08130EBC:
	.4byte gUnknown_0822BE66
_08130EC0:
	.4byte gUnknown_0822BDD0
_08130EC4:
	.4byte gUnknown_0822BE16
_08130EC8:
	.4byte gUnknown_02030000
_08130ECC:
	.4byte gUnknown_0200BB00
_08130ED0:
	.4byte gUnknown_0200BB50
	THUMB_FUNC_END sub_08130D9C

	THUMB_FUNC_START sub_08130ED4
sub_08130ED4: @ 0x08130ED4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r2, r0, #0
	ldr r0, _08130F90  @ =gUnknown_0822BF7E
	mov r12, r0
	ldr r0, _08130F94  @ =gUnknown_03002230
	ldr r3, _08130F98  @ =0x00000CF8
	add r1, r0, r3
	ldrh r1, [r1]
	mov r9, r0
	cmp r1, #15
	bls _08130EF8
	mov r4, #2
	add r12, r12, r4
_08130EF8:
	mov r8, r9
	ldr r6, _08130F9C  @ =0x00000968
	add r6, r6, r8
	mov r7, #151
	lsl r7, r7, #4
	add r7, r7, r8
	mov r10, r7
_08130F06:
	lsl r0, r2, #1
	ldr r1, _08130FA0  @ =gUnknown_02000C00
	add r1, r0, r1
	str r1, [sp]
	ldrh r4, [r1]
	strh r4, [r6]
	ldr r7, _08130FA4  @ =gUnknown_02000800
	add r3, r0, r7
	ldrh r1, [r3]
	cmp r1, #0
	beq _08130F88
	mov r0, #31
	and r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r12
	ldrh r1, [r0]
	ldr r5, _08130FA8  @ =0x00000978
	add r5, r5, r9
	mov r7, #0
	ldrsh r0, [r5, r7]
	and r1, r1, r0
	cmp r1, #0
	bne _08130F3C
	ldr r1, _08130FAC  @ =gUnknown_03002B9C
	ldrh r0, [r1]
	add r0, r4, r0
	strh r0, [r6]
_08130F3C:
	ldrh r1, [r3]
	mov r0, #248
	lsl r0, r0, #2
	and r0, r0, r1
	lsr r0, r0, #3
	add r0, r0, r12
	ldrh r0, [r0]
	mov r4, #0
	ldrsh r1, [r5, r4]
	and r0, r0, r1
	cmp r0, #0
	bne _08130F5E
	mov r7, r10
	ldrh r0, [r7]
	ldrh r1, [r6]
	add r0, r0, r1
	strh r0, [r6]
_08130F5E:
	ldrh r1, [r3]
	mov r0, #248
	lsl r0, r0, #7
	and r0, r0, r1
	lsr r0, r0, #8
	add r0, r0, r12
	ldrh r0, [r0]
	mov r3, #0
	ldrsh r1, [r5, r3]
	and r0, r0, r1
	cmp r0, #0
	bne _08130F82
	ldr r0, _08130FB0  @ =0x00000974
	add r0, r0, r8
	ldrh r0, [r0]
	ldrh r4, [r6]
	add r0, r0, r4
	strh r0, [r6]
_08130F82:
	ldrh r0, [r6]
	ldr r7, [sp]
	strh r0, [r7]
_08130F88:
	cmp r2, #0
	bne _08130FB4
	mov r2, #32
	b _08130FDC
_08130F90:
	.4byte gUnknown_0822BF7E
_08130F94:
	.4byte gUnknown_03002230
_08130F98:
	.4byte 0x00000CF8
_08130F9C:
	.4byte 0x00000968
_08130FA0:
	.4byte gUnknown_02000C00
_08130FA4:
	.4byte gUnknown_02000800
_08130FA8:
	.4byte 0x00000978
_08130FAC:
	.4byte gUnknown_03002B9C
_08130FB0:
	.4byte 0x00000974
_08130FB4:
	add r2, r2, #1
	cmp r2, #128
	bne _08130FBE
	mov r2, #192
	b _08130FDC
_08130FBE:
	cmp r2, #200
	bne _08130FC6
	mov r2, #204
	b _08130FDC
_08130FC6:
	mov r0, #172
	lsl r0, r0, #1
	cmp r2, r0
	bne _08130FD2
	add r2, r2, #8
	b _08130FDC
_08130FD2:
	mov r0, #184
	lsl r0, r0, #1
	cmp r2, r0
	bne _08130FDC
	add r2, r2, #16
_08130FDC:
	ldr r0, _08130FF4  @ =0x000001FF
	cmp r2, r0
	ble _08130F06
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
_08130FF4:
	.4byte 0x000001FF
	THUMB_FUNC_END sub_08130ED4

	THUMB_FUNC_START sub_08130FF8
sub_08130FF8: @ 0x08130FF8
	push {r4-r7,lr}
	ldr r4, _08131074  @ =gUnknown_03002230
	ldr r0, _08131078  @ =0x00000CF8
	add r5, r4, r0
	ldrh r1, [r5]
	ldr r2, _0813107C  @ =gUnknown_0822BF26
	mov r0, #15
	and r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _08131080  @ =0x00000978
	add r0, r4, r2
	mov r7, #0
	strh r1, [r0]
	ldr r0, _08131084  @ =gUnknown_0822BF72
	ldr r3, _08131088  @ =0x00000CFA
	add r6, r4, r3
	ldrh r1, [r6]
	lsr r1, r1, #1
	lsl r1, r1, #1
	add r0, r1, r0
	ldrh r2, [r0]
	ldr r3, _0813108C  @ =0x0000096C
	add r0, r4, r3
	strh r2, [r0]
	ldr r0, _08131090  @ =gUnknown_0822BF76
	add r0, r1, r0
	ldrh r2, [r0]
	add r3, r3, #4
	add r0, r4, r3
	strh r2, [r0]
	ldr r0, _08131094  @ =gUnknown_0822BF7A
	add r1, r1, r0
	ldrh r1, [r1]
	ldr r2, _08131098  @ =0x00000974
	add r0, r4, r2
	strh r1, [r0]
	mov r0, #0
	bl sub_08130ED4
	ldrh r2, [r6]
	cmp r2, #0
	bne _081310A4
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r3, _0813109C  @ =0x00000CFC
	add r1, r4, r3
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldrh r1, [r1]
	cmp r0, r1
	bne _081310D0
	mov r0, #2
	eor r0, r0, r2
	strh r0, [r6]
	strh r7, [r5]
	ldr r0, _081310A0  @ =0x000009E8
	add r1, r4, r0
	b _081310BC
	.byte 0x00
	.byte 0x00
_08131074:
	.4byte gUnknown_03002230
_08131078:
	.4byte 0x00000CF8
_0813107C:
	.4byte gUnknown_0822BF26
_08131080:
	.4byte 0x00000978
_08131084:
	.4byte gUnknown_0822BF72
_08131088:
	.4byte 0x00000CFA
_0813108C:
	.4byte 0x0000096C
_08131090:
	.4byte gUnknown_0822BF76
_08131094:
	.4byte gUnknown_0822BF7A
_08131098:
	.4byte 0x00000974
_0813109C:
	.4byte 0x00000CFC
_081310A0:
	.4byte 0x000009E8
_081310A4:
	ldr r1, _081310C4  @ =0x00000CFC
	add r0, r4, r1
	ldrh r1, [r5]
	ldrh r0, [r0]
	cmp r1, r0
	bne _081310CC
	mov r0, #2
	eor r0, r0, r2
	strh r0, [r6]
	strh r7, [r5]
	ldr r2, _081310C8  @ =0x000009E8
	add r1, r4, r2
_081310BC:
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	b _081310D0
_081310C4:
	.4byte 0x00000CFC
_081310C8:
	.4byte 0x000009E8
_081310CC:
	sub r0, r1, #1
	strh r0, [r5]
_081310D0:
	ldr r0, _081310E0  @ =gUnknown_03002230
	ldr r3, _081310E4  @ =0x0000099B
	add r0, r0, r3
	mov r1, #1
	strb r1, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
_081310E0:
	.4byte gUnknown_03002230
_081310E4:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08130FF8

	THUMB_FUNC_START sub_081310E8
sub_081310E8: @ 0x081310E8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r0, _081311B4  @ =gUnknown_0822BF7E
	mov r12, r0
	ldr r0, _081311B8  @ =gUnknown_03002230
	ldr r2, _081311BC  @ =0x00000CF8
	add r1, r0, r2
	ldrh r1, [r1]
	mov r8, r0
	cmp r1, #15
	bls _0813110C
	mov r3, #2
	add r12, r12, r3
_0813110C:
	ldr r6, _081311C0  @ =0x00000968
	add r6, r6, r8
	ldr r7, _081311C4  @ =0x0000096C
	add r7, r7, r8
	mov r10, r7
	ldr r0, _081311C8  @ =0x00000974
	add r0, r0, r8
	mov r9, r0
_0813111C:
	lsl r0, r5, #1
	ldr r1, _081311CC  @ =gUnknown_02000C00
	add r1, r0, r1
	str r1, [sp]
	ldrh r3, [r1]
	strh r3, [r6]
	ldr r7, _081311D0  @ =gUnknown_02000800
	add r2, r0, r7
	ldrh r1, [r2]
	cmp r1, #0
	beq _0813119C
	mov r0, #31
	and r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r12
	ldrh r1, [r0]
	ldr r4, _081311D4  @ =0x00000978
	add r4, r4, r8
	mov r7, #0
	ldrsh r0, [r4, r7]
	and r1, r1, r0
	cmp r1, #0
	bne _08131152
	mov r1, r10
	ldrh r0, [r1]
	add r0, r3, r0
	strh r0, [r6]
_08131152:
	ldrh r1, [r2]
	mov r0, #248
	lsl r0, r0, #2
	and r0, r0, r1
	lsr r0, r0, #3
	add r0, r0, r12
	ldrh r0, [r0]
	mov r3, #0
	ldrsh r1, [r4, r3]
	and r0, r0, r1
	cmp r0, #0
	bne _08131174
	ldr r7, _081311D8  @ =gUnknown_03002BA0
	ldrh r0, [r7]
	ldrh r1, [r6]
	add r0, r0, r1
	strh r0, [r6]
_08131174:
	ldrh r1, [r2]
	mov r0, #248
	lsl r0, r0, #7
	and r0, r0, r1
	lsr r0, r0, #8
	add r0, r0, r12
	ldrh r0, [r0]
	mov r2, #0
	ldrsh r1, [r4, r2]
	and r0, r0, r1
	cmp r0, #0
	bne _08131196
	mov r3, r9
	ldrh r0, [r3]
	ldrh r7, [r6]
	add r0, r0, r7
	strh r0, [r6]
_08131196:
	ldrh r0, [r6]
	ldr r1, [sp]
	strh r0, [r1]
_0813119C:
	add r5, r5, #1
	ldr r0, _081311DC  @ =0x000001FF
	cmp r5, r0
	ble _0813111C
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_081311B4:
	.4byte gUnknown_0822BF7E
_081311B8:
	.4byte gUnknown_03002230
_081311BC:
	.4byte 0x00000CF8
_081311C0:
	.4byte 0x00000968
_081311C4:
	.4byte 0x0000096C
_081311C8:
	.4byte 0x00000974
_081311CC:
	.4byte gUnknown_02000C00
_081311D0:
	.4byte gUnknown_02000800
_081311D4:
	.4byte 0x00000978
_081311D8:
	.4byte gUnknown_03002BA0
_081311DC:
	.4byte 0x000001FF
	THUMB_FUNC_END sub_081310E8

	THUMB_FUNC_START sub_081311E0
sub_081311E0: @ 0x081311E0
	push {r4-r7,lr}
	ldr r4, _0813125C  @ =gUnknown_03002230
	ldr r0, _08131260  @ =0x00000CF8
	add r5, r4, r0
	ldrh r1, [r5]
	ldr r2, _08131264  @ =gUnknown_0822BF26
	mov r0, #15
	and r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _08131268  @ =0x00000978
	add r0, r4, r2
	mov r7, #0
	strh r1, [r0]
	ldr r0, _0813126C  @ =gUnknown_0822BF72
	ldr r3, _08131270  @ =0x00000CFA
	add r6, r4, r3
	ldrh r1, [r6]
	lsr r1, r1, #1
	lsl r1, r1, #1
	add r0, r1, r0
	ldrh r2, [r0]
	ldr r3, _08131274  @ =0x0000096C
	add r0, r4, r3
	strh r2, [r0]
	ldr r0, _08131278  @ =gUnknown_0822BF76
	add r0, r1, r0
	ldrh r2, [r0]
	add r3, r3, #4
	add r0, r4, r3
	strh r2, [r0]
	ldr r0, _0813127C  @ =gUnknown_0822BF7A
	add r1, r1, r0
	ldrh r1, [r1]
	ldr r2, _08131280  @ =0x00000974
	add r0, r4, r2
	strh r1, [r0]
	mov r0, #0
	bl sub_081310E8
	ldrh r2, [r6]
	cmp r2, #0
	bne _0813128C
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r3, _08131284  @ =0x00000CFC
	add r1, r4, r3
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldrh r1, [r1]
	cmp r0, r1
	bne _081312B8
	mov r0, #2
	eor r0, r0, r2
	strh r0, [r6]
	strh r7, [r5]
	ldr r0, _08131288  @ =0x000009E8
	add r1, r4, r0
	b _081312A4
	.byte 0x00
	.byte 0x00
_0813125C:
	.4byte gUnknown_03002230
_08131260:
	.4byte 0x00000CF8
_08131264:
	.4byte gUnknown_0822BF26
_08131268:
	.4byte 0x00000978
_0813126C:
	.4byte gUnknown_0822BF72
_08131270:
	.4byte 0x00000CFA
_08131274:
	.4byte 0x0000096C
_08131278:
	.4byte gUnknown_0822BF76
_0813127C:
	.4byte gUnknown_0822BF7A
_08131280:
	.4byte 0x00000974
_08131284:
	.4byte 0x00000CFC
_08131288:
	.4byte 0x000009E8
_0813128C:
	ldr r1, _081312AC  @ =0x00000CFC
	add r0, r4, r1
	ldrh r1, [r5]
	ldrh r0, [r0]
	cmp r1, r0
	bne _081312B4
	mov r0, #2
	eor r0, r0, r2
	strh r0, [r6]
	strh r7, [r5]
	ldr r2, _081312B0  @ =0x000009E8
	add r1, r4, r2
_081312A4:
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	b _081312B8
_081312AC:
	.4byte 0x00000CFC
_081312B0:
	.4byte 0x000009E8
_081312B4:
	sub r0, r1, #1
	strh r0, [r5]
_081312B8:
	ldr r0, _081312C8  @ =gUnknown_03002230
	ldr r3, _081312CC  @ =0x0000099B
	add r0, r0, r3
	mov r1, #1
	strb r1, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
_081312C8:
	.4byte gUnknown_03002230
_081312CC:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_081311E0

	THUMB_FUNC_START sub_081312D0
sub_081312D0: @ 0x081312D0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r2, _08131388  @ =gUnknown_03002230
	ldr r1, _0813138C  @ =0x00000996
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	mov r12, r2
	cmp r0, #0
	bne _081312F0
	b _08131512
_081312F0:
	mov r7, #104
	ldr r0, _08131390  @ =0x00001650
	add r0, r0, r12
	ldrb r0, [r0]
	cmp r0, #0
	beq _081312FE
	b _081313FE
_081312FE:
	ldr r4, _08131394  @ =gUnknown_02000CD0
	mov r2, #208
	mov r8, r2
	ldr r3, _08131398  @ =0x00000974
	add r3, r3, r12
	mov r10, r3
	ldr r5, _0813139C  @ =0x00000978
	add r5, r5, r12
	mov r9, r5
_08131310:
	ldrh r1, [r4]
	mov r0, #31
	and r0, r0, r1
	ldr r6, _081313A0  @ =gUnknown_03002BA0
	strh r0, [r6]
	ldrh r1, [r4]
	mov r0, #248
	lsl r0, r0, #2
	and r0, r0, r1
	mov r1, r10
	strh r0, [r1]
	ldrh r1, [r4]
	mov r0, #248
	lsl r0, r0, #7
	and r0, r0, r1
	mov r2, r9
	strh r0, [r2]
	ldr r0, _081313A4  @ =gUnknown_02000800
	add r0, r0, r8
	ldrh r2, [r0]
	mov r0, #31
	and r0, r0, r2
	add r1, r0, #0
	add r1, r1, #12
	cmp r1, #31
	ble _08131346
	mov r1, #31
_08131346:
	mov r0, #248
	lsl r0, r0, #2
	and r0, r0, r2
	mov r5, #192
	lsl r5, r5, #1
	add r3, r0, r5
	mov r6, #248
	lsl r6, r6, #2
	cmp r3, r6
	ble _0813135C
	add r3, r6, #0
_0813135C:
	mov r0, #248
	lsl r0, r0, #7
	and r0, r0, r2
	mov r5, #192
	lsl r5, r5, #6
	add r2, r0, r5
	mov r6, #248
	lsl r6, r6, #7
	cmp r2, r6
	ble _08131372
	add r2, r6, #0
_08131372:
	ldr r5, _081313A0  @ =gUnknown_03002BA0
	mov r6, #0
	ldrsh r0, [r5, r6]
	cmp r0, r1
	beq _081313AE
	cmp r0, r1
	ble _081313A8
	ldrh r0, [r4]
	sub r0, r0, #1
	b _081313AC
	.byte 0x00
	.byte 0x00
_08131388:
	.4byte gUnknown_03002230
_0813138C:
	.4byte 0x00000996
_08131390:
	.4byte 0x00001650
_08131394:
	.4byte gUnknown_02000CD0
_08131398:
	.4byte 0x00000974
_0813139C:
	.4byte 0x00000978
_081313A0:
	.4byte gUnknown_03002BA0
_081313A4:
	.4byte gUnknown_02000800
_081313A8:
	ldrh r0, [r4]
	add r0, r0, #1
_081313AC:
	strh r0, [r4]
_081313AE:
	mov r1, r10
	mov r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, r3
	beq _081313C8
	cmp r0, r3
	ble _081313C2
	ldrh r0, [r4]
	sub r0, r0, #32
	b _081313C6
_081313C2:
	ldrh r0, [r4]
	add r0, r0, #32
_081313C6:
	strh r0, [r4]
_081313C8:
	mov r6, r9
	mov r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, r2
	beq _081313F0
	cmp r0, r2
	ble _081313E4
	ldr r2, _081313E0  @ =0xFFFFFC00
	add r0, r2, #0
	ldrh r3, [r4]
	add r0, r0, r3
	b _081313EE
_081313E0:
	.4byte 0xFFFFFC00
_081313E4:
	mov r5, #128
	lsl r5, r5, #3
	add r0, r5, #0
	ldrh r6, [r4]
	add r0, r0, r6
_081313EE:
	strh r0, [r4]
_081313F0:
	add r4, r4, #2
	mov r0, #2
	add r8, r8, r0
	add r7, r7, #1
	cmp r7, #112
	bne _08131310
	b _081314CA
_081313FE:
	mov r1, #151
	lsl r1, r1, #4
	add r1, r1, r12
	mov r9, r1
	mov r2, #248
	lsl r2, r2, #7
	mov r10, r2
	ldr r4, _08131460  @ =gUnknown_02000CD0
	mov r3, #208
	str r3, [sp]
	ldr r5, _08131464  @ =0x00000974
	add r5, r5, r12
	mov r8, r5
_08131418:
	ldrh r1, [r4]
	mov r0, #31
	and r0, r0, r1
	mov r6, r9
	strh r0, [r6]
	ldrh r1, [r4]
	mov r0, #248
	lsl r0, r0, #2
	and r0, r0, r1
	mov r1, r8
	strh r0, [r1]
	ldrh r1, [r4]
	mov r0, r10
	and r0, r0, r1
	ldr r2, _08131468  @ =gUnknown_03002BA8
	strh r0, [r2]
	ldr r3, [sp]
	ldr r5, _0813146C  @ =gUnknown_02000800
	add r0, r3, r5
	ldrh r0, [r0]
	mov r1, #31
	and r1, r1, r0
	mov r3, #248
	lsl r3, r3, #2
	and r3, r3, r0
	mov r2, r10
	and r2, r2, r0
	mov r5, #0
	ldrsh r0, [r6, r5]
	cmp r0, r1
	beq _08131476
	cmp r0, r1
	ble _08131470
	ldrh r0, [r4]
	sub r0, r0, #1
	b _08131474
_08131460:
	.4byte gUnknown_02000CD0
_08131464:
	.4byte 0x00000974
_08131468:
	.4byte gUnknown_03002BA8
_0813146C:
	.4byte gUnknown_02000800
_08131470:
	ldrh r0, [r4]
	add r0, r0, #1
_08131474:
	strh r0, [r4]
_08131476:
	mov r6, r8
	mov r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, r3
	beq _08131490
	cmp r0, r3
	ble _0813148A
	ldrh r0, [r4]
	sub r0, r0, #32
	b _0813148E
_0813148A:
	ldrh r0, [r4]
	add r0, r0, #32
_0813148E:
	strh r0, [r4]
_08131490:
	ldr r3, _081314A8  @ =gUnknown_03002BA8
	mov r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, r2
	beq _081314BC
	cmp r0, r2
	ble _081314B0
	ldr r6, _081314AC  @ =0xFFFFFC00
	add r0, r6, #0
	ldrh r1, [r4]
	add r0, r0, r1
	b _081314BA
_081314A8:
	.4byte gUnknown_03002BA8
_081314AC:
	.4byte 0xFFFFFC00
_081314B0:
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r4]
	add r0, r0, r3
_081314BA:
	strh r0, [r4]
_081314BC:
	add r4, r4, #2
	ldr r5, [sp]
	add r5, r5, #2
	str r5, [sp]
	add r7, r7, #1
	cmp r7, #112
	bne _08131418
_081314CA:
	ldr r3, _081314FC  @ =0x0000164F
	add r3, r3, r12
	ldrb r0, [r3]
	add r1, r0, #1
	strb r1, [r3]
	ldr r0, _08131500  @ =0x0000099B
	add r0, r0, r12
	mov r4, #1
	strb r4, [r0]
	mov r0, #63
	and r0, r0, r1
	cmp r0, #32
	bls _08131512
	ldr r2, _08131504  @ =0x00001650
	add r2, r2, r12
	ldrb r0, [r2]
	cmp r0, #0
	bne _08131508
	strb r4, [r2]
	mov r0, #192
	and r1, r1, r0
	add r0, r1, #1
	strb r0, [r3]
	b _08131512
	.byte 0x00
	.byte 0x00
_081314FC:
	.4byte 0x0000164F
_08131500:
	.4byte 0x0000099B
_08131504:
	.4byte 0x00001650
_08131508:
	mov r0, #0
	strb r0, [r2]
	mov r0, #192
	and r1, r1, r0
	strb r1, [r3]
_08131512:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_081312D0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08131524
sub_08131524: @ 0x08131524
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r6, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	ldr r1, _081315B0  @ =gUnknown_03002230
	ldr r2, _081315B4  @ =0x0000164E
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08131626
	mov r3, #151
	lsl r3, r3, #4
	add r3, r3, r1
	mov r8, r3
	mov r7, #248
	lsl r7, r7, #2
	mov r9, r7
	mov r0, #248
	lsl r0, r0, #7
	mov r10, r0
	lsl r0, r6, #1
	ldr r2, _081315B8  @ =gUnknown_02000C00
	add r3, r0, r2
	ldr r7, _081315BC  @ =0x00000974
	add r7, r7, r1
	mov r12, r7
_08131562:
	ldrh r1, [r3]
	mov r0, #31
	and r0, r0, r1
	mov r1, r8
	strh r0, [r1]
	ldrh r1, [r3]
	mov r0, r9
	and r0, r0, r1
	mov r2, r12
	strh r0, [r2]
	ldrh r1, [r3]
	mov r0, r10
	and r0, r0, r1
	ldr r7, _081315C0  @ =gUnknown_03002BA8
	strh r0, [r7]
	ldr r1, [sp, #4]
	lsl r0, r1, #1
	ldr r2, _081315C4  @ =gUnknown_0200BB00
	add r0, r0, r2
	ldrh r0, [r0]
	add r1, r0, #0
	mov r7, #31
	and r1, r1, r7
	add r4, r0, #0
	mov r2, r9
	and r4, r4, r2
	mov r5, r10
	and r5, r5, r0
	mov r7, r8
	mov r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, r1
	beq _081315CE
	cmp r0, r1
	ble _081315C8
	ldrh r0, [r3]
	sub r0, r0, #1
	b _081315CC
	.byte 0x00
	.byte 0x00
_081315B0:
	.4byte gUnknown_03002230
_081315B4:
	.4byte 0x0000164E
_081315B8:
	.4byte gUnknown_02000C00
_081315BC:
	.4byte 0x00000974
_081315C0:
	.4byte gUnknown_03002BA8
_081315C4:
	.4byte gUnknown_0200BB00
_081315C8:
	ldrh r0, [r3]
	add r0, r0, #1
_081315CC:
	strh r0, [r3]
_081315CE:
	mov r7, r12
	mov r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, r4
	beq _081315E8
	cmp r0, r4
	ble _081315E2
	ldrh r0, [r3]
	sub r0, r0, #32
	b _081315E6
_081315E2:
	ldrh r0, [r3]
	add r0, r0, #32
_081315E6:
	strh r0, [r3]
_081315E8:
	ldr r2, _08131600  @ =gUnknown_03002BA8
	mov r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, r5
	beq _08131614
	cmp r0, r5
	ble _08131608
	ldr r1, _08131604  @ =0xFFFFFC00
	add r0, r1, #0
	ldrh r2, [r3]
	add r0, r0, r2
	b _08131612
_08131600:
	.4byte gUnknown_03002BA8
_08131604:
	.4byte 0xFFFFFC00
_08131608:
	mov r7, #128
	lsl r7, r7, #3
	add r0, r7, #0
	ldrh r1, [r3]
	add r0, r0, r1
_08131612:
	strh r0, [r3]
_08131614:
	ldr r2, [sp, #4]
	add r2, r2, #1
	str r2, [sp, #4]
	add r3, r3, #2
	add r6, r6, #1
	ldr r7, [sp]
	cmp r6, r7
	bne _08131562
	b _08131700
_08131626:
	cmp r0, #1
	bne _08131700
	mov r0, #151
	lsl r0, r0, #4
	add r0, r0, r1
	mov r8, r0
	mov r2, #248
	lsl r2, r2, #2
	mov r10, r2
	mov r3, #248
	lsl r3, r3, #7
	mov r9, r3
	lsl r0, r6, #1
	ldr r7, _08131694  @ =gUnknown_02000C00
	add r2, r0, r7
	str r0, [sp, #8]
	ldr r0, _08131698  @ =0x00000974
	add r0, r0, r1
	mov r12, r0
_0813164C:
	ldrh r1, [r2]
	mov r0, #31
	and r0, r0, r1
	mov r1, r8
	strh r0, [r1]
	ldrh r1, [r2]
	mov r0, r10
	and r0, r0, r1
	mov r3, r12
	strh r0, [r3]
	ldrh r1, [r2]
	mov r0, r9
	and r0, r0, r1
	ldr r7, _0813169C  @ =gUnknown_03002BA8
	strh r0, [r7]
	ldr r1, [sp, #8]
	ldr r3, _081316A0  @ =gUnknown_02000800
	add r0, r1, r3
	ldrh r0, [r0]
	mov r1, #31
	and r1, r1, r0
	mov r4, r10
	and r4, r4, r0
	mov r5, r9
	and r5, r5, r0
	mov r7, r8
	mov r3, #0
	ldrsh r0, [r7, r3]
	cmp r0, r1
	beq _081316AA
	cmp r0, r1
	ble _081316A4
	ldrh r0, [r2]
	sub r0, r0, #1
	b _081316A8
	.byte 0x00
	.byte 0x00
_08131694:
	.4byte gUnknown_02000C00
_08131698:
	.4byte 0x00000974
_0813169C:
	.4byte gUnknown_03002BA8
_081316A0:
	.4byte gUnknown_02000800
_081316A4:
	ldrh r0, [r2]
	add r0, r0, #1
_081316A8:
	strh r0, [r2]
_081316AA:
	mov r7, r12
	mov r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, r4
	beq _081316C4
	cmp r0, r4
	ble _081316BE
	ldrh r0, [r2]
	sub r0, r0, #32
	b _081316C2
_081316BE:
	ldrh r0, [r2]
	add r0, r0, #32
_081316C2:
	strh r0, [r2]
_081316C4:
	ldr r3, _081316DC  @ =gUnknown_03002BA8
	mov r7, #0
	ldrsh r0, [r3, r7]
	cmp r0, r5
	beq _081316F0
	cmp r0, r5
	ble _081316E4
	ldr r1, _081316E0  @ =0xFFFFFC00
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	b _081316EE
_081316DC:
	.4byte gUnknown_03002BA8
_081316E0:
	.4byte 0xFFFFFC00
_081316E4:
	mov r7, #128
	lsl r7, r7, #3
	add r0, r7, #0
	ldrh r1, [r2]
	add r0, r0, r1
_081316EE:
	strh r0, [r2]
_081316F0:
	add r2, r2, #2
	ldr r3, [sp, #8]
	add r3, r3, #2
	str r3, [sp, #8]
	add r6, r6, #1
	ldr r7, [sp]
	cmp r6, r7
	bne _0813164C
_08131700:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08131524

	THUMB_FUNC_START sub_08131710
sub_08131710: @ 0x08131710
	push {r4-r6,lr}
	ldr r4, _08131790  @ =gUnknown_03002230
	ldr r1, _08131794  @ =0x0000164C
	add r0, r4, r1
	ldr r0, [r0]
	ldr r1, _08131798  @ =0x00FFFF00
	and r0, r0, r1
	mov r1, #128
	lsl r1, r1, #3
	cmp r0, r1
	bne _0813172E
	mov r0, #48
	mov r1, #0
	bl sub_0812A324
_0813172E:
	ldr r3, _0813179C  @ =0x0000164E
	add r6, r4, r3
	ldrb r5, [r6]
	cmp r5, #0
	bne _081317A8
	mov r0, #49
	mov r1, #56
	mov r2, #0
	bl sub_08131524
	mov r0, #57
	mov r1, #64
	mov r2, #7
	bl sub_08131524
	mov r0, #73
	mov r1, #80
	mov r2, #14
	bl sub_08131524
	mov r0, #113
	mov r1, #120
	mov r2, #21
	bl sub_08131524
	mov r0, #121
	mov r1, #128
	mov r2, #28
	bl sub_08131524
	ldr r0, _081317A0  @ =0x0000164D
	add r3, r4, r0
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	ldr r1, _081317A4  @ =0x0000099B
	add r2, r4, r1
	mov r1, #1
	strb r1, [r2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #31
	bls _08131834
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	strb r5, [r3]
	b _08131834
	.byte 0x00
	.byte 0x00
_08131790:
	.4byte gUnknown_03002230
_08131794:
	.4byte 0x0000164C
_08131798:
	.4byte 0x00FFFF00
_0813179C:
	.4byte 0x0000164E
_081317A0:
	.4byte 0x0000164D
_081317A4:
	.4byte 0x0000099B
_081317A8:
	cmp r5, #1
	bne _08131820
	mov r0, #49
	mov r1, #56
	mov r2, #0
	bl sub_08131524
	mov r0, #57
	mov r1, #64
	mov r2, #7
	bl sub_08131524
	mov r0, #73
	mov r1, #80
	mov r2, #14
	bl sub_08131524
	mov r0, #113
	mov r1, #120
	mov r2, #21
	bl sub_08131524
	mov r0, #121
	mov r1, #128
	mov r2, #28
	bl sub_08131524
	ldr r3, _08131810  @ =0x0000164D
	add r2, r4, r3
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldr r3, _08131814  @ =0x0000099B
	add r1, r4, r3
	strb r5, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #36
	bls _08131834
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	ldr r1, _08131818  @ =0x00000996
	add r0, r4, r1
	ldrb r1, [r0]
	mov r0, #3
	and r0, r0, r1
	ldr r1, _0813181C  @ =gUnknown_0822BFFE
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	b _08131834
_08131810:
	.4byte 0x0000164D
_08131814:
	.4byte 0x0000099B
_08131818:
	.4byte 0x00000996
_0813181C:
	.4byte gUnknown_0822BFFE
_08131820:
	ldr r3, _0813183C  @ =0x0000164D
	add r1, r4, r3
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _08131834
	strb r0, [r6]
_08131834:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0813183C:
	.4byte 0x0000164D
	THUMB_FUNC_END sub_08131710

	THUMB_FUNC_START sub_08131840
sub_08131840: @ 0x08131840
	push {lr}
	ldr r1, _081318A8  @ =gUnknown_03002230
	ldr r2, _081318AC  @ =0x00000B6E
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _081318D4
	ldr r2, _081318B0  @ =0x000009C6
	add r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #67
	beq _08131860
	cmp r0, #69
	beq _08131860
	cmp r0, #71
	bne _081318D4
_08131860:
	bl sub_08131710
	ldr r2, _081318A8  @ =gUnknown_03002230
	ldr r1, _081318B0  @ =0x000009C6
	add r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #67
	beq _08131874
	cmp r0, #69
	bne _081318CA
_08131874:
	ldr r0, _081318B4  @ =gUnknown_020022C3
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	bne _081318CA
	ldr r0, _081318B8  @ =0x0000164F
	add r2, r2, r0
	ldrb r1, [r2]
	mov r0, #63
	and r0, r0, r1
	cmp r0, #0
	bne _081318C4
	add r0, r1, #0
	add r0, r0, #65
	strb r0, [r2]
	mov r1, #192
	and r0, r0, r1
	lsr r0, r0, #2
	ldr r1, _081318BC  @ =gUnknown_0200BB50
	add r0, r0, r1
	ldr r1, _081318C0  @ =gUnknown_020008D0
	mov r2, #7
	bl CpuSet
	b _081318D4
_081318A8:
	.4byte gUnknown_03002230
_081318AC:
	.4byte 0x00000B6E
_081318B0:
	.4byte 0x000009C6
_081318B4:
	.4byte gUnknown_020022C3
_081318B8:
	.4byte 0x0000164F
_081318BC:
	.4byte gUnknown_0200BB50
_081318C0:
	.4byte gUnknown_020008D0
_081318C4:
	bl sub_081312D0
	b _081318D4
_081318CA:
	ldr r0, _081318D8  @ =gUnknown_0200BB90
	ldr r1, _081318DC  @ =gUnknown_02000CD0
	mov r2, #7
	bl CpuSet
_081318D4:
	pop {r0}
	bx r0
_081318D8:
	.4byte gUnknown_0200BB90
_081318DC:
	.4byte gUnknown_02000CD0
	THUMB_FUNC_END sub_08131840

	THUMB_FUNC_START sub_081318E0
sub_081318E0: @ 0x081318E0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	str r1, [sp]
	mov r0, #31
	mov r10, r0
	ldr r6, _0813198C  @ =gUnknown_03002BA0
	mov r1, #248
	lsl r1, r1, #2
	mov r9, r1
	add r0, r6, #4
	mov r12, r0
	mov r1, #248
	lsl r1, r1, #7
	mov r8, r1
	add r7, r6, #0
	add r7, r7, #8
_0813190A:
	lsl r3, r5, #1
	ldr r0, _08131990  @ =gUnknown_02000C00
	add r4, r3, r0
	ldrh r1, [r4]
	mov r0, r10
	and r0, r0, r1
	strh r0, [r6]
	ldrh r1, [r4]
	mov r0, r9
	and r0, r0, r1
	mov r1, r12
	strh r0, [r1]
	ldrh r1, [r4]
	mov r0, r8
	and r0, r0, r1
	strh r0, [r7]
	mov r0, #0
	ldrsh r2, [r6, r0]
	ldr r1, _08131994  @ =gUnknown_02000800
	add r3, r3, r1
	ldrh r1, [r3]
	mov r0, r10
	and r0, r0, r1
	cmp r2, r0
	beq _08131942
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_08131942:
	mov r0, r12
	mov r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r3]
	mov r0, r9
	and r0, r0, r1
	cmp r2, r0
	beq _08131958
	ldrh r0, [r4]
	add r0, r0, #32
	strh r0, [r4]
_08131958:
	mov r0, #0
	ldrsh r2, [r7, r0]
	ldrh r1, [r3]
	mov r0, r8
	and r0, r0, r1
	cmp r2, r0
	beq _08131972
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r1, [r4]
	add r0, r0, r1
	strh r0, [r4]
_08131972:
	add r5, r5, #1
	ldr r0, [sp]
	cmp r5, r0
	bne _0813190A
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
_0813198C:
	.4byte gUnknown_03002BA0
_08131990:
	.4byte gUnknown_02000C00
_08131994:
	.4byte gUnknown_02000800
	THUMB_FUNC_END sub_081318E0

	THUMB_FUNC_START sub_08131998
sub_08131998: @ 0x08131998
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	str r1, [sp]
	mov r0, #31
	mov r10, r0
	ldr r6, _08131A40  @ =gUnknown_03002BA0
	mov r1, #248
	lsl r1, r1, #2
	mov r9, r1
	add r0, r6, #4
	mov r12, r0
	mov r1, #248
	lsl r1, r1, #7
	mov r8, r1
	add r7, r6, #0
	add r7, r7, #8
_081319C2:
	lsl r3, r5, #1
	ldr r0, _08131A44  @ =gUnknown_02000C00
	add r4, r3, r0
	ldrh r1, [r4]
	mov r0, r10
	and r0, r0, r1
	strh r0, [r6]
	ldrh r1, [r4]
	mov r0, r9
	and r0, r0, r1
	mov r1, r12
	strh r0, [r1]
	ldrh r1, [r4]
	mov r0, r8
	and r0, r0, r1
	strh r0, [r7]
	mov r0, #0
	ldrsh r2, [r6, r0]
	ldr r1, _08131A48  @ =gUnknown_02000800
	add r3, r3, r1
	ldrh r1, [r3]
	mov r0, r10
	and r0, r0, r1
	cmp r2, r0
	beq _081319FA
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
_081319FA:
	mov r0, r12
	mov r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r3]
	mov r0, r9
	and r0, r0, r1
	cmp r2, r0
	beq _08131A10
	ldrh r0, [r4]
	sub r0, r0, #32
	strh r0, [r4]
_08131A10:
	mov r0, #0
	ldrsh r2, [r7, r0]
	ldrh r1, [r3]
	mov r0, r8
	and r0, r0, r1
	cmp r2, r0
	beq _08131A28
	ldr r1, _08131A4C  @ =0xFFFFFC00
	add r0, r1, #0
	ldrh r1, [r4]
	add r0, r0, r1
	strh r0, [r4]
_08131A28:
	add r5, r5, #1
	ldr r0, [sp]
	cmp r5, r0
	bne _081319C2
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08131A40:
	.4byte gUnknown_03002BA0
_08131A44:
	.4byte gUnknown_02000C00
_08131A48:
	.4byte gUnknown_02000800
_08131A4C:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_08131998

	THUMB_FUNC_START sub_08131A50
sub_08131A50: @ 0x08131A50
	push {r4,lr}
	sub sp, sp, #4
	ldr r3, _08131A80  @ =gUnknown_03002230
	ldr r0, _08131A84  @ =0x00000CFA
	add r4, r3, r0
	ldrh r2, [r4]
	cmp r2, #0
	bne _08131A90
	ldr r2, _08131A88  @ =0x00000CF8
	add r1, r3, r2
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	bne _08131AC6
	mov r0, #255
	strh r0, [r4]
	ldr r0, _08131A8C  @ =0x00000C85
	add r1, r3, r0
	mov r0, #32
	strb r0, [r1]
	b _08131AC6
_08131A80:
	.4byte gUnknown_03002230
_08131A84:
	.4byte 0x00000CFA
_08131A88:
	.4byte 0x00000CF8
_08131A8C:
	.4byte 0x00000C85
_08131A90:
	ldr r0, _08131AD8  @ =0x00000CF8
	add r1, r3, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #31
	bne _08131AC6
	mov r0, #2
	eor r0, r0, r2
	strh r0, [r4]
	ldr r1, _08131ADC  @ =0x000009AC
	add r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #21
	bne _08131AC6
	mov r1, sp
	mov r2, #240
	lsl r2, r2, #3
	add r0, r2, #0
	strh r0, [r1]
	ldr r1, _08131AE0  @ =gUnknown_02001600
	ldr r2, _08131AE4  @ =0x01000100
	mov r0, sp
	bl CpuSet
_08131AC6:
	ldr r0, _08131AE8  @ =gUnknown_03002230
	ldr r1, _08131AEC  @ =0x0000099B
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08131AD8:
	.4byte 0x00000CF8
_08131ADC:
	.4byte 0x000009AC
_08131AE0:
	.4byte gUnknown_02001600
_08131AE4:
	.4byte 0x01000100
_08131AE8:
	.4byte gUnknown_03002230
_08131AEC:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08131A50

	THUMB_FUNC_START sub_08131AF0
sub_08131AF0: @ 0x08131AF0
	push {lr}
	ldr r0, _08131B38  @ =gUnknown_03002230
	ldr r1, _08131B3C  @ =0x00000CFA
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #255
	beq _08131BB8
	cmp r0, #2
	bne _08131B40
	mov r0, #0
	mov r1, #1
	bl sub_081318E0
	mov r0, #33
	mov r1, #128
	bl sub_081318E0
	mov r0, #128
	lsl r0, r0, #1
	mov r1, #172
	lsl r1, r1, #1
	bl sub_081318E0
	mov r0, #176
	lsl r0, r0, #1
	mov r1, #184
	lsl r1, r1, #1
	bl sub_081318E0
	mov r0, #192
	lsl r0, r0, #1
	mov r1, #128
	lsl r1, r1, #2
	bl sub_081318E0
	b _08131B74
_08131B38:
	.4byte gUnknown_03002230
_08131B3C:
	.4byte 0x00000CFA
_08131B40:
	mov r0, #0
	mov r1, #1
	bl sub_08131998
	mov r0, #33
	mov r1, #128
	bl sub_08131998
	mov r0, #128
	lsl r0, r0, #1
	mov r1, #172
	lsl r1, r1, #1
	bl sub_08131998
	mov r0, #176
	lsl r0, r0, #1
	mov r1, #184
	lsl r1, r1, #1
	bl sub_08131998
	mov r0, #192
	lsl r0, r0, #1
	mov r1, #128
	lsl r1, r1, #2
	bl sub_08131998
_08131B74:
	ldr r1, _08131BBC  @ =gUnknown_02000C20
	ldr r0, _08131BC0  @ =gUnknown_02000C00
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #32
	strh r0, [r1]
	add r1, r1, #32
	strh r0, [r1]
	add r1, r1, #32
	strh r0, [r1]
	add r1, r1, #32
	strh r0, [r1]
	add r1, r1, #32
	strh r0, [r1]
	add r1, r1, #32
	strh r0, [r1]
	add r1, r1, #32
	strh r0, [r1]
	add r1, r1, #32
	strh r0, [r1]
	add r1, r1, #32
	strh r0, [r1]
	add r1, r1, #32
	strh r0, [r1]
	add r1, r1, #32
	strh r0, [r1]
	add r1, r1, #32
	strh r0, [r1]
	add r1, r1, #32
	strh r0, [r1]
	add r1, r1, #32
	strh r0, [r1]
	bl sub_08131A50
_08131BB8:
	pop {r0}
	bx r0
_08131BBC:
	.4byte gUnknown_02000C20
_08131BC0:
	.4byte gUnknown_02000C00
	THUMB_FUNC_END sub_08131AF0

	THUMB_FUNC_START sub_08131BC4
sub_08131BC4: @ 0x08131BC4
	push {r4,r5,lr}
	ldr r4, _08131C08  @ =gUnknown_03002230
	ldr r0, _08131C0C  @ =0x00000CFA
	add r5, r4, r0
	ldrh r0, [r5]
	cmp r0, #255
	beq _08131C00
	mov r0, #32
	mov r1, #128
	bl sub_08131998
	ldr r0, _08131C10  @ =0x00000CF8
	add r1, r4, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #32
	bne _08131BF8
	mov r0, #255
	strh r0, [r5]
	ldr r0, _08131C14  @ =0x000009B5
	add r1, r4, r0
	mov r0, #0
	strb r0, [r1]
_08131BF8:
	ldr r0, _08131C18  @ =0x0000099B
	add r1, r4, r0
	mov r0, #1
	strb r0, [r1]
_08131C00:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08131C08:
	.4byte gUnknown_03002230
_08131C0C:
	.4byte 0x00000CFA
_08131C10:
	.4byte 0x00000CF8
_08131C14:
	.4byte 0x000009B5
_08131C18:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08131BC4

	THUMB_FUNC_START sub_08131C1C
sub_08131C1C: @ 0x08131C1C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	mov r8, r2
	lsl r0, r0, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsr r5, r0, #16
	mov r0, #0
	str r0, [sp]
	cmp r5, #255
	bls _08131C3E
	mov r2, #128
	str r2, [sp]
_08131C3E:
	mov r9, r1
	cmp r5, r9
	beq _08131CE4
	ldr r3, _08131CF4  @ =gUnknown_03002230
	mov r10, r3
	ldr r7, _08131CF8  @ =0x00000968
	add r7, r7, r10
_08131C4C:
	lsr r0, r5, #1
	ldr r4, [sp]
	lsl r1, r4, #1
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, _08131CFC  @ =gUnknown_02000C00
	add r0, r0, r1
	mov r12, r0
	ldrh r3, [r0]
	mov r2, sp
	strh r3, [r2, #8]
	strh r3, [r7]
	ldr r4, _08131D00  @ =gUnknown_02000800
	add r1, r1, r4
	ldrh r3, [r1]
	add r2, r3, #0
	cmp r3, #0
	beq _08131CDA
	mov r0, #31
	and r0, r0, r3
	lsl r0, r0, #2
	add r0, r0, r8
	ldrh r1, [r0]
	ldr r6, _08131D04  @ =0x00000978
	add r6, r6, r10
	mov r4, #0
	ldrsh r0, [r6, r4]
	and r1, r1, r0
	cmp r1, #0
	bne _08131C94
	ldr r1, _08131D08  @ =gUnknown_03002B9C
	ldrh r0, [r1]
	mov r4, sp
	ldrh r4, [r4, #8]
	add r0, r4, r0
	strh r0, [r7]
_08131C94:
	mov r0, #248
	lsl r0, r0, #2
	and r3, r3, r0
	lsr r0, r3, #3
	add r0, r0, r8
	ldrh r0, [r0]
	mov r3, #0
	ldrsh r1, [r6, r3]
	and r0, r0, r1
	cmp r0, #0
	bne _08131CB4
	ldr r4, _08131D0C  @ =gUnknown_03002BA0
	ldrh r0, [r4]
	ldrh r1, [r7]
	add r0, r0, r1
	strh r0, [r7]
_08131CB4:
	mov r0, #248
	lsl r0, r0, #7
	and r2, r2, r0
	lsr r0, r2, #8
	add r0, r0, r8
	ldrh r0, [r0]
	mov r2, #0
	ldrsh r1, [r6, r2]
	and r0, r0, r1
	cmp r0, #0
	bne _08131CD4
	ldr r3, _08131D10  @ =gUnknown_03002BA4
	ldrh r0, [r3]
	ldrh r4, [r7]
	add r0, r0, r4
	strh r0, [r7]
_08131CD4:
	ldrh r0, [r7]
	mov r1, r12
	strh r0, [r1]
_08131CDA:
	add r0, r5, #2
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, r9
	bne _08131C4C
_08131CE4:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08131CF4:
	.4byte gUnknown_03002230
_08131CF8:
	.4byte 0x00000968
_08131CFC:
	.4byte gUnknown_02000C00
_08131D00:
	.4byte gUnknown_02000800
_08131D04:
	.4byte 0x00000978
_08131D08:
	.4byte gUnknown_03002B9C
_08131D0C:
	.4byte gUnknown_03002BA0
_08131D10:
	.4byte gUnknown_03002BA4
	THUMB_FUNC_END sub_08131C1C

	THUMB_FUNC_START sub_08131D14
sub_08131D14: @ 0x08131D14
	push {lr}
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	bl sub_08131C1C
	ldr r2, _08131D60  @ =gUnknown_03002230
	ldr r0, _08131D64  @ =0x00000CF8
	add r1, r2, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #31
	bne _08131D52
	mov r0, #0
	strh r0, [r1]
	ldr r1, _08131D68  @ =0x00000CFA
	add r2, r2, r1
	ldrh r0, [r2]
	mov r1, #2
	eor r0, r0, r1
	strh r0, [r2]
	cmp r0, #0
	beq _08131D52
	ldr r1, _08131D6C  @ =gUnknown_02006887
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_08131D52:
	ldr r0, _08131D60  @ =gUnknown_03002230
	ldr r1, _08131D70  @ =0x0000099B
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	pop {r0}
	bx r0
_08131D60:
	.4byte gUnknown_03002230
_08131D64:
	.4byte 0x00000CF8
_08131D68:
	.4byte 0x00000CFA
_08131D6C:
	.4byte gUnknown_02006887
_08131D70:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08131D14

	THUMB_FUNC_START sub_08131D74
sub_08131D74: @ 0x08131D74
	push {lr}
	ldr r1, _08131DB0  @ =gUnknown_03002230
	ldr r0, _08131DB4  @ =0x000009B5
	add r2, r1, r0
	mov r0, #2
	strb r0, [r2]
	ldr r0, _08131DB8  @ =0x000009D4
	add r2, r1, r0
	mov r0, #48
	strb r0, [r2]
	ldr r0, _08131DBC  @ =0x0000051E
	add r2, r1, r0
	mov r0, #185
	lsl r0, r0, #6
	strh r0, [r2]
	ldr r0, _08131DC0  @ =0x0000051A
	add r2, r1, r0
	mov r0, #63
	strh r0, [r2]
	ldr r2, _08131DC4  @ =0x00000998
	add r0, r1, r2
	mov r2, #15
	strb r2, [r0]
	ldr r0, _08131DC8  @ =0x00000999
	add r1, r1, r0
	strb r2, [r1]
	bl sub_08131DCC
	pop {r0}
	bx r0
_08131DB0:
	.4byte gUnknown_03002230
_08131DB4:
	.4byte 0x000009B5
_08131DB8:
	.4byte 0x000009D4
_08131DBC:
	.4byte 0x0000051E
_08131DC0:
	.4byte 0x0000051A
_08131DC4:
	.4byte 0x00000998
_08131DC8:
	.4byte 0x00000999
	THUMB_FUNC_END sub_08131D74

	THUMB_FUNC_START sub_08131DCC
sub_08131DCC: @ 0x08131DCC
	push {r4,r5,lr}
	mov r2, #0
	mov r0, #14
	ldr r3, _08131E10  @ =gUnknown_03002230
	mov r5, #208
	lsl r5, r5, #1
	ldr r4, _08131E14  @ =gUnknown_02000D00
_08131DDA:
	lsl r1, r0, #24
	asr r1, r1, #24
	add r0, r1, r5
	asr r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r4
	strh r2, [r0]
	sub r1, r1, #2
	lsl r1, r1, #24
	lsr r0, r1, #24
	cmp r1, #0
	bge _08131DDA
	ldr r1, _08131E18  @ =0x00000CF8
	add r0, r3, r1
	strh r2, [r0]
	ldr r0, _08131E1C  @ =0x00000CFA
	add r1, r3, r0
	mov r0, #2
	strh r0, [r1]
	ldr r0, _08131E20  @ =0x0000099B
	add r1, r3, r0
	mov r0, #1
	strb r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08131E10:
	.4byte gUnknown_03002230
_08131E14:
	.4byte gUnknown_02000D00
_08131E18:
	.4byte 0x00000CF8
_08131E1C:
	.4byte 0x00000CFA
_08131E20:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08131DCC

	THUMB_FUNC_START sub_08131E24
sub_08131E24: @ 0x08131E24
	push {r4-r6,lr}
	mov r0, #14
	ldr r3, _08131E74  @ =gUnknown_03002230
	mov r6, #208
	lsl r6, r6, #1
	ldr r5, _08131E78  @ =gUnknown_02000D00
	ldr r4, _08131E7C  @ =gUnknown_02000900
_08131E32:
	lsl r1, r0, #24
	asr r1, r1, #24
	add r0, r1, r6
	asr r0, r0, #1
	lsl r0, r0, #1
	add r2, r0, r5
	add r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r2]
	sub r1, r1, #2
	lsl r1, r1, #24
	lsr r0, r1, #24
	cmp r1, #0
	bge _08131E32
	ldr r1, _08131E80  @ =0x000009B5
	add r0, r3, r1
	mov r2, #0
	strb r2, [r0]
	ldr r0, _08131E84  @ =0x000009D4
	add r1, r3, r0
	mov r0, #32
	strb r0, [r1]
	ldr r1, _08131E88  @ =0x0000051E
	add r0, r3, r1
	strh r2, [r0]
	ldr r0, _08131E8C  @ =0x0000099B
	add r1, r3, r0
	mov r0, #1
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08131E74:
	.4byte gUnknown_03002230
_08131E78:
	.4byte gUnknown_02000D00
_08131E7C:
	.4byte gUnknown_02000900
_08131E80:
	.4byte 0x000009B5
_08131E84:
	.4byte 0x000009D4
_08131E88:
	.4byte 0x0000051E
_08131E8C:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08131E24

	THUMB_FUNC_START sub_08131E90
sub_08131E90: @ 0x08131E90
	push {r4,r5,lr}
	ldr r4, _08131EF8  @ =gUnknown_0822BF7E
	ldr r3, _08131EFC  @ =gUnknown_03002230
	ldr r1, _08131F00  @ =0x00000CF8
	add r0, r3, r1
	ldrh r0, [r0]
	add r2, r0, #0
	cmp r2, #15
	bls _08131EA4
	add r4, r4, #2
_08131EA4:
	ldr r1, _08131F04  @ =gUnknown_0822BF26
	mov r0, #15
	and r0, r0, r2
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _08131F08  @ =0x00000978
	add r0, r3, r2
	strh r1, [r0]
	ldr r2, _08131F0C  @ =gUnknown_0822BF72
	ldr r5, _08131F10  @ =0x00000CFA
	add r0, r3, r5
	ldrh r1, [r0]
	lsr r1, r1, #1
	lsl r1, r1, #1
	add r2, r1, r2
	ldrh r2, [r2]
	ldr r5, _08131F14  @ =0x0000096C
	add r0, r3, r5
	strh r2, [r0]
	ldr r0, _08131F18  @ =gUnknown_0822BF76
	add r0, r1, r0
	ldrh r2, [r0]
	add r5, r5, #4
	add r0, r3, r5
	strh r2, [r0]
	ldr r0, _08131F1C  @ =gUnknown_0822BF7A
	add r1, r1, r0
	ldrh r1, [r1]
	ldr r2, _08131F20  @ =0x00000974
	add r0, r3, r2
	strh r1, [r0]
	mov r0, #208
	lsl r0, r0, #1
	mov r1, #216
	lsl r1, r1, #1
	add r2, r4, #0
	bl sub_08131D14
	pop {r4,r5}
	pop {r0}
	bx r0
_08131EF8:
	.4byte gUnknown_0822BF7E
_08131EFC:
	.4byte gUnknown_03002230
_08131F00:
	.4byte 0x00000CF8
_08131F04:
	.4byte gUnknown_0822BF26
_08131F08:
	.4byte 0x00000978
_08131F0C:
	.4byte gUnknown_0822BF72
_08131F10:
	.4byte 0x00000CFA
_08131F14:
	.4byte 0x0000096C
_08131F18:
	.4byte gUnknown_0822BF76
_08131F1C:
	.4byte gUnknown_0822BF7A
_08131F20:
	.4byte 0x00000974
	THUMB_FUNC_END sub_08131E90

	THUMB_FUNC_START sub_08131F24
sub_08131F24: @ 0x08131F24
	push {r4-r6,lr}
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r3, _08131F90  @ =gUnknown_03002230
	mov r0, #150
	lsl r0, r0, #4
	add r2, r3, r0
	strh r1, [r2]
	mov r0, #31
	and r0, r0, r1
	add r1, r0, #0
	add r1, r1, #14
	cmp r1, #30
	bls _08131F42
	mov r1, #31
_08131F42:
	ldr r4, _08131F94  @ =0x00000964
	add r5, r3, r4
	strh r1, [r5]
	ldrh r2, [r2]
	mov r4, #248
	lsl r4, r4, #2
	add r0, r4, #0
	and r0, r0, r2
	mov r6, #224
	lsl r6, r6, #1
	add r1, r0, r6
	ldr r0, _08131F98  @ =0x000003DF
	cmp r1, r0
	bls _08131F60
	add r1, r4, #0
_08131F60:
	ldr r4, _08131F9C  @ =0x00000968
	add r0, r3, r4
	add r4, r1, #0
	strh r1, [r0]
	mov r3, #248
	lsl r3, r3, #7
	add r0, r3, #0
	and r0, r0, r2
	mov r6, #224
	lsl r6, r6, #6
	add r1, r0, r6
	ldr r0, _08131FA0  @ =0x00007BFF
	cmp r1, r0
	bls _08131F7E
	add r1, r3, #0
_08131F7E:
	ldrh r0, [r5]
	orr r1, r1, r0
	orr r1, r1, r4
	lsl r0, r1, #16
	lsr r0, r0, #16
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08131F90:
	.4byte gUnknown_03002230
_08131F94:
	.4byte 0x00000964
_08131F98:
	.4byte 0x000003DF
_08131F9C:
	.4byte 0x00000968
_08131FA0:
	.4byte 0x00007BFF
	THUMB_FUNC_END sub_08131F24

	THUMB_FUNC_START sub_08131FA4
sub_08131FA4: @ 0x08131FA4
	push {r4-r7,lr}
	mov r5, #0
	ldr r7, _081320B8  @ =gUnknown_02000800
	ldr r6, _081320BC  @ =gUnknown_02000C00
_08131FAC:
	add r4, r5, #0
	add r4, r4, #64
	asr r4, r4, #1
	lsl r4, r4, #1
	add r0, r4, r7
	ldrh r0, [r0]
	bl sub_08131F24
	add r4, r4, r6
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #80
	asr r4, r4, #1
	lsl r4, r4, #1
	add r0, r4, r7
	ldrh r0, [r0]
	bl sub_08131F24
	add r4, r4, r6
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #96
	asr r4, r4, #1
	lsl r4, r4, #1
	add r0, r4, r7
	ldrh r0, [r0]
	bl sub_08131F24
	add r4, r4, r6
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #112
	asr r4, r4, #1
	lsl r4, r4, #1
	add r0, r4, r7
	ldrh r0, [r0]
	bl sub_08131F24
	add r4, r4, r6
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #128
	asr r4, r4, #1
	lsl r4, r4, #1
	add r0, r4, r7
	ldrh r0, [r0]
	bl sub_08131F24
	add r4, r4, r6
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #144
	asr r4, r4, #1
	lsl r4, r4, #1
	add r0, r4, r7
	ldrh r0, [r0]
	bl sub_08131F24
	add r4, r4, r6
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #160
	asr r4, r4, #1
	lsl r4, r4, #1
	add r0, r4, r7
	ldrh r0, [r0]
	bl sub_08131F24
	add r4, r4, r6
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #176
	asr r4, r4, #1
	lsl r4, r4, #1
	add r0, r4, r7
	ldrh r0, [r0]
	bl sub_08131F24
	add r4, r4, r6
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #192
	asr r4, r4, #1
	lsl r4, r4, #1
	add r0, r4, r7
	ldrh r0, [r0]
	bl sub_08131F24
	add r4, r4, r6
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #208
	asr r4, r4, #1
	lsl r4, r4, #1
	add r0, r4, r7
	ldrh r0, [r0]
	bl sub_08131F24
	add r4, r4, r6
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #224
	asr r4, r4, #1
	lsl r4, r4, #1
	add r0, r4, r7
	ldrh r0, [r0]
	bl sub_08131F24
	add r4, r4, r6
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #240
	asr r4, r4, #1
	lsl r4, r4, #1
	add r0, r4, r7
	ldrh r0, [r0]
	bl sub_08131F24
	add r4, r4, r6
	strh r0, [r4]
	add r0, r5, #2
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #16
	bne _08131FAC
	ldr r0, _081320B8  @ =gUnknown_02000800
	ldrh r1, [r0]
	cmp r1, #0
	beq _081320C4
	ldr r0, _081320BC  @ =gUnknown_02000C00
	ldr r1, _081320C0  @ =gUnknown_02000C80
	ldrh r1, [r1]
	b _081320C6
	.byte 0x00
	.byte 0x00
_081320B8:
	.4byte gUnknown_02000800
_081320BC:
	.4byte gUnknown_02000C00
_081320C0:
	.4byte gUnknown_02000C80
_081320C4:
	ldr r0, _081320D8  @ =gUnknown_02000C00
_081320C6:
	strh r1, [r0]
	ldr r0, _081320DC  @ =gUnknown_03002230
	ldr r1, _081320E0  @ =0x0000099B
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
_081320D8:
	.4byte gUnknown_02000C00
_081320DC:
	.4byte gUnknown_03002230
_081320E0:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08131FA4

	THUMB_FUNC_START sub_081320E4
sub_081320E4: @ 0x081320E4
	push {r4,r5,lr}
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r3, _0813214C  @ =gUnknown_03002230
	mov r0, #150
	lsl r0, r0, #4
	add r2, r3, r0
	strh r1, [r2]
	mov r0, #31
	and r1, r1, r0
	cmp r1, #1
	bls _08132102
	sub r0, r1, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
_08132102:
	ldr r5, _08132150  @ =0x00000964
	add r4, r3, r5
	strh r1, [r4]
	ldrh r2, [r2]
	mov r1, #248
	lsl r1, r1, #2
	and r1, r1, r2
	cmp r1, #32
	bls _0813211C
	add r0, r1, #0
	sub r0, r0, #32
	lsl r0, r0, #16
	lsr r1, r0, #16
_0813211C:
	ldr r5, _08132154  @ =0x00000968
	add r0, r3, r5
	add r3, r1, #0
	strh r1, [r0]
	mov r1, #248
	lsl r1, r1, #7
	and r1, r1, r2
	mov r0, #128
	lsl r0, r0, #5
	cmp r1, r0
	bls _0813213A
	ldr r2, _08132158  @ =0xFFFFFC00
	add r0, r1, r2
	lsl r0, r0, #16
	lsr r1, r0, #16
_0813213A:
	ldrh r0, [r4]
	orr r1, r1, r0
	orr r1, r1, r3
	lsl r0, r1, #16
	lsr r0, r0, #16
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0813214C:
	.4byte gUnknown_03002230
_08132150:
	.4byte 0x00000964
_08132154:
	.4byte 0x00000968
_08132158:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_081320E4

	THUMB_FUNC_START sub_0813215C
sub_0813215C: @ 0x0813215C
	push {r4-r6,lr}
	mov r5, #0
	ldr r6, _08132254  @ =gUnknown_02000C00
_08132162:
	add r4, r5, #0
	add r4, r4, #64
	asr r4, r4, #1
	lsl r4, r4, #1
	add r4, r4, r6
	ldrh r0, [r4]
	bl sub_081320E4
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #80
	asr r4, r4, #1
	lsl r4, r4, #1
	add r4, r4, r6
	ldrh r0, [r4]
	bl sub_081320E4
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #96
	asr r4, r4, #1
	lsl r4, r4, #1
	add r4, r4, r6
	ldrh r0, [r4]
	bl sub_081320E4
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #112
	asr r4, r4, #1
	lsl r4, r4, #1
	add r4, r4, r6
	ldrh r0, [r4]
	bl sub_081320E4
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #128
	asr r4, r4, #1
	lsl r4, r4, #1
	add r4, r4, r6
	ldrh r0, [r4]
	bl sub_081320E4
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #144
	asr r4, r4, #1
	lsl r4, r4, #1
	add r4, r4, r6
	ldrh r0, [r4]
	bl sub_081320E4
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #160
	asr r4, r4, #1
	lsl r4, r4, #1
	add r4, r4, r6
	ldrh r0, [r4]
	bl sub_081320E4
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #176
	asr r4, r4, #1
	lsl r4, r4, #1
	add r4, r4, r6
	ldrh r0, [r4]
	bl sub_081320E4
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #192
	asr r4, r4, #1
	lsl r4, r4, #1
	add r4, r4, r6
	ldrh r0, [r4]
	bl sub_081320E4
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #208
	asr r4, r4, #1
	lsl r4, r4, #1
	add r4, r4, r6
	ldrh r0, [r4]
	bl sub_081320E4
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #224
	asr r4, r4, #1
	lsl r4, r4, #1
	add r4, r4, r6
	ldrh r0, [r4]
	bl sub_081320E4
	strh r0, [r4]
	add r4, r5, #0
	add r4, r4, #240
	asr r4, r4, #1
	lsl r4, r4, #1
	add r4, r4, r6
	ldrh r0, [r4]
	bl sub_081320E4
	strh r0, [r4]
	add r0, r5, #2
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #16
	bne _08132162
	ldr r0, _08132258  @ =gUnknown_02000800
	ldrh r1, [r0]
	cmp r1, #0
	beq _08132260
	ldr r0, _08132254  @ =gUnknown_02000C00
	ldr r1, _0813225C  @ =gUnknown_02000C80
	ldrh r1, [r1]
	b _08132262
_08132254:
	.4byte gUnknown_02000C00
_08132258:
	.4byte gUnknown_02000800
_0813225C:
	.4byte gUnknown_02000C80
_08132260:
	ldr r0, _08132274  @ =gUnknown_02000C00
_08132262:
	strh r1, [r0]
	ldr r0, _08132278  @ =gUnknown_03002230
	ldr r1, _0813227C  @ =0x0000099B
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
_08132274:
	.4byte gUnknown_02000C00
_08132278:
	.4byte gUnknown_03002230
_0813227C:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_0813215C

	THUMB_FUNC_START sub_08132280
sub_08132280: @ 0x08132280
	push {r4,r5,lr}
	ldr r0, _081322CC  @ =gUnknown_03002230
	ldr r2, _081322D0  @ =0x000009B2
	add r1, r0, r2
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r2, r0, #0
	cmp r1, #0
	bne _08132330
	ldr r5, _081322D4  @ =0x000009D6
	add r4, r2, r5
	mov r0, #32
	strb r0, [r4]
	ldr r0, _081322D8  @ =0x000009D7
	add r3, r2, r0
	mov r0, #64
	strb r0, [r3]
	add r5, r5, #2
	add r1, r2, r5
	mov r0, #128
	strb r0, [r1]
	sub r5, r5, #18
	add r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #64
	beq _08132330
	cmp r0, #64
	bgt _081322DC
	cmp r0, #3
	beq _081322FE
	cmp r0, #3
	ble _08132330
	cmp r0, #5
	beq _081322FE
	cmp r0, #7
	beq _081322FE
	b _08132330
_081322CC:
	.4byte gUnknown_03002230
_081322D0:
	.4byte 0x000009B2
_081322D4:
	.4byte 0x000009D6
_081322D8:
	.4byte 0x000009D7
_081322DC:
	cmp r0, #69
	beq _08132318
	cmp r0, #69
	bgt _081322EA
	cmp r0, #67
	beq _08132318
	b _08132330
_081322EA:
	cmp r0, #71
	beq _08132318
	cmp r0, #91
	bne _08132330
	mov r0, #83
	strb r0, [r4]
	mov r0, #79
	strb r0, [r3]
	mov r0, #137
	b _0813232E
_081322FE:
	ldr r0, _08132310  @ =0x000009D6
	add r1, r2, r0
	mov r0, #38
	strb r0, [r1]
	ldr r5, _08132314  @ =0x000009D7
	add r1, r2, r5
	mov r0, #140
	b _0813232E
	.byte 0x00
	.byte 0x00
_08132310:
	.4byte 0x000009D6
_08132314:
	.4byte 0x000009D7
_08132318:
	ldr r0, _08132338  @ =0x000009D6
	add r1, r2, r0
	mov r0, #38
	strb r0, [r1]
	ldr r5, _0813233C  @ =0x000009D7
	add r1, r2, r5
	mov r0, #74
	strb r0, [r1]
	ldr r0, _08132340  @ =0x000009D8
	add r1, r2, r0
	mov r0, #135
_0813232E:
	strb r0, [r1]
_08132330:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08132338:
	.4byte 0x000009D6
_0813233C:
	.4byte 0x000009D7
_08132340:
	.4byte 0x000009D8
	THUMB_FUNC_END sub_08132280

	THUMB_FUNC_START sub_08132344
sub_08132344: @ 0x08132344
	push {r4,lr}
	mov r2, #0
	ldr r4, _08132434  @ =gUnknown_02000C00
	ldr r3, _08132438  @ =gUnknown_02000800
_0813234C:
	add r0, r2, #0
	add r0, r0, #64
	asr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r4
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #80
	asr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r4
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #96
	asr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r4
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #112
	asr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r4
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #128
	asr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r4
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #144
	asr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r4
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #160
	asr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r4
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #176
	asr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r4
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #192
	asr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r4
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #208
	asr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r4
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #224
	asr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r4
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #240
	asr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r4
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r2, #2
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #16
	bne _0813234C
	ldr r1, _08132434  @ =gUnknown_02000C00
	ldr r0, _0813243C  @ =gUnknown_02000C80
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_08132280
	ldr r0, _08132440  @ =gUnknown_03002230
	ldr r1, _08132444  @ =0x0000099B
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08132434:
	.4byte gUnknown_02000C00
_08132438:
	.4byte gUnknown_02000800
_0813243C:
	.4byte gUnknown_02000C80
_08132440:
	.4byte gUnknown_03002230
_08132444:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08132344

	THUMB_FUNC_START sub_08132448
sub_08132448: @ 0x08132448
	push {r4,r5,lr}
	mov r2, #126
	ldr r5, _0813248C  @ =gUnknown_03002230
	ldr r4, _08132490  @ =gUnknown_02000C00
	ldr r3, _08132494  @ =gUnknown_02000800
_08132452:
	lsr r0, r2, #1
	lsl r0, r0, #1
	add r1, r0, r4
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #128
	asr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r4
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	sub r0, r2, #2
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r0, #0
	bge _08132452
	ldr r0, _08132498  @ =0x0000099B
	add r1, r5, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	bl sub_08132280
	pop {r4,r5}
	pop {r0}
	bx r0
_0813248C:
	.4byte gUnknown_03002230
_08132490:
	.4byte gUnknown_02000C00
_08132494:
	.4byte gUnknown_02000800
_08132498:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08132448

	THUMB_FUNC_START sub_0813249C
sub_0813249C: @ 0x0813249C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	lsl r1, r1, #24
	lsr r5, r1, #24
	lsl r2, r2, #24
	lsr r6, r2, #24
	ldr r1, _08132540  @ =gUnknown_0822BBF4
	lsr r0, r0, #23
	add r0, r0, r1
	ldrh r0, [r0]
	mov r4, #3
	lsl r0, r0, #1
	ldr r1, _08132544  @ =gUnknown_02030600
	add r3, r0, r1
	ldr r7, _08132548  @ =gUnknown_0822BBFE
	ldr r2, _0813254C  @ =gUnknown_0822BB64
	mov r12, r2
	ldr r0, _08132550  @ =gUnknown_03002230
	mov r8, r0
	ldr r2, _08132554  @ =gUnknown_02000EB0
	ldr r1, _08132558  @ =gUnknown_02000AB0
_081324CA:
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3]
	strh r0, [r2]
	add r3, r3, #2
	add r2, r2, #2
	add r1, r1, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _081324CA
	lsl r0, r5, #1
	add r0, r0, r7
	ldrh r0, [r0]
	mov r4, #3
	lsl r0, r0, #1
	ldr r2, _08132544  @ =gUnknown_02030600
	add r1, r0, r2
	lsl r5, r6, #1
	ldr r2, _0813255C  @ =gUnknown_02000EB8
	ldr r3, _08132560  @ =gUnknown_02000AB8
_081324F2:
	ldrh r0, [r1]
	strh r0, [r3]
	ldrh r0, [r1]
	strh r0, [r2]
	add r1, r1, #2
	add r2, r2, #2
	add r3, r3, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _081324F2
	mov r1, r12
	add r0, r5, r1
	ldrh r0, [r0]
	mov r4, #15
	lsl r0, r0, #1
	ldr r1, _08132564  @ =gUnknown_02030160
	add r2, r0, r1
	ldr r1, _08132568  @ =gUnknown_02000EE0
	ldr r3, _0813256C  @ =gUnknown_02000AE0
_08132518:
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	add r3, r3, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _08132518
	ldr r1, _08132570  @ =0x0000099B
	add r1, r1, r8
	mov r0, #1
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08132540:
	.4byte gUnknown_0822BBF4
_08132544:
	.4byte gUnknown_02030600
_08132548:
	.4byte gUnknown_0822BBFE
_0813254C:
	.4byte gUnknown_0822BB64
_08132550:
	.4byte gUnknown_03002230
_08132554:
	.4byte gUnknown_02000EB0
_08132558:
	.4byte gUnknown_02000AB0
_0813255C:
	.4byte gUnknown_02000EB8
_08132560:
	.4byte gUnknown_02000AB8
_08132564:
	.4byte gUnknown_02030160
_08132568:
	.4byte gUnknown_02000EE0
_0813256C:
	.4byte gUnknown_02000AE0
_08132570:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_0813249C

	THUMB_FUNC_START sub_08132574
sub_08132574: @ 0x08132574
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #24
	ldr r4, _081325E0  @ =gUnknown_03002230
	lsr r0, r0, #23
	ldr r2, _081325E4  @ =0x00000D0A
	add r1, r4, r2
	add r7, r0, r1
	ldrh r1, [r7]
	sub r2, r2, #18
	add r5, r4, r2
	strh r1, [r5]
	add r2, r2, #24
	add r1, r4, r2
	add r6, r0, r1
	ldrh r1, [r6]
	sub r2, r2, #22
	add r2, r2, r4
	mov r8, r2
	strh r1, [r2]
	ldr r1, _081325E8  @ =gUnknown_0822C002
	add r0, r0, r1
	ldrh r0, [r0]
	mov r2, #150
	lsl r2, r2, #4
	add r1, r4, r2
	strh r0, [r1]
	add r0, r0, #16
	add r2, r2, #4
	add r1, r4, r2
	strh r0, [r1]
	bl sub_081325F0
	ldrh r0, [r5]
	cmp r0, #0
	beq _081325C2
	bl sub_081325F0
_081325C2:
	ldrh r0, [r5]
	strh r0, [r7]
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r6]
	ldr r2, _081325EC  @ =0x0000099B
	add r1, r4, r2
	mov r0, #1
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_081325E0:
	.4byte gUnknown_03002230
_081325E4:
	.4byte 0x00000D0A
_081325E8:
	.4byte gUnknown_0822C002
_081325EC:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08132574

	THUMB_FUNC_START sub_081325F0
sub_081325F0: @ 0x081325F0
	push {r4-r7,lr}
	ldr r6, _08132674  @ =gUnknown_0822BF7E
	ldr r3, _08132678  @ =gUnknown_03002230
	ldr r0, _0813267C  @ =0x00000CF8
	add r5, r3, r0
	ldrh r2, [r5]
	cmp r2, #15
	bls _08132602
	add r6, r6, #2
_08132602:
	ldr r1, _08132680  @ =gUnknown_0822BF26
	mov r0, #15
	and r0, r0, r2
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _08132684  @ =0x00000978
	add r0, r3, r2
	strh r1, [r0]
	ldr r0, _08132688  @ =gUnknown_0822BF72
	ldr r7, _0813268C  @ =0x00000CFA
	add r4, r3, r7
	ldrh r1, [r4]
	lsr r1, r1, #1
	lsl r1, r1, #1
	add r0, r1, r0
	ldrh r2, [r0]
	ldr r7, _08132690  @ =0x0000096C
	add r0, r3, r7
	strh r2, [r0]
	ldr r0, _08132694  @ =gUnknown_0822BF76
	add r0, r1, r0
	ldrh r2, [r0]
	add r7, r7, #4
	add r0, r3, r7
	strh r2, [r0]
	ldr r0, _08132698  @ =gUnknown_0822BF7A
	add r1, r1, r0
	ldrh r1, [r1]
	ldr r2, _0813269C  @ =0x00000974
	add r0, r3, r2
	strh r1, [r0]
	sub r7, r7, #16
	add r0, r3, r7
	ldrh r0, [r0]
	sub r2, r2, #16
	add r1, r3, r2
	ldrh r1, [r1]
	add r2, r6, #0
	bl sub_08131C1C
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #31
	bne _0813266E
	mov r0, #0
	strh r0, [r5]
	ldrh r0, [r4]
	mov r1, #2
	eor r0, r0, r1
	strh r0, [r4]
_0813266E:
	pop {r4-r7}
	pop {r0}
	bx r0
_08132674:
	.4byte gUnknown_0822BF7E
_08132678:
	.4byte gUnknown_03002230
_0813267C:
	.4byte 0x00000CF8
_08132680:
	.4byte gUnknown_0822BF26
_08132684:
	.4byte 0x00000978
_08132688:
	.4byte gUnknown_0822BF72
_0813268C:
	.4byte 0x00000CFA
_08132690:
	.4byte 0x0000096C
_08132694:
	.4byte gUnknown_0822BF76
_08132698:
	.4byte gUnknown_0822BF7A
_0813269C:
	.4byte 0x00000974
	THUMB_FUNC_END sub_081325F0

	THUMB_FUNC_START sub_081326A0
sub_081326A0: @ 0x081326A0
	push {r4-r6,lr}
	ldr r4, _081326F8  @ =gUnknown_03002230
	ldr r1, _081326FC  @ =0x000009E8
	add r0, r4, r1
	ldrh r0, [r0]
	add r3, r4, #0
	cmp r0, #0
	bne _08132710
	mov r2, #14
	ldr r6, _08132700  @ =gUnknown_02000C00
	ldr r5, _08132704  @ =gUnknown_02000800
	mov r4, #128
	lsl r4, r4, #8
_081326BA:
	add r0, r2, #0
	add r0, r0, #128
	asr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r6
	add r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	sub r0, r2, #2
	lsl r0, r0, #16
	lsr r2, r0, #16
	add r0, r2, #0
	and r0, r0, r4
	cmp r0, #0
	beq _081326BA
	ldr r2, _08132708  @ =0x00000CF8
	add r0, r3, r2
	mov r1, #0
	strh r1, [r0]
	add r2, r2, #2
	add r0, r3, r2
	strh r1, [r0]
	ldr r1, _0813270C  @ =0x0000099B
	add r0, r3, r1
	mov r1, #1
	strb r1, [r0]
	ldr r2, _081326FC  @ =0x000009E8
	add r0, r3, r2
	strh r1, [r0]
	b _08132748
	.byte 0x00
	.byte 0x00
_081326F8:
	.4byte gUnknown_03002230
_081326FC:
	.4byte 0x000009E8
_08132700:
	.4byte gUnknown_02000C00
_08132704:
	.4byte gUnknown_02000800
_08132708:
	.4byte 0x00000CF8
_0813270C:
	.4byte 0x0000099B
_08132710:
	bl sub_08132750
	ldr r3, _08132738  @ =0x00000CF8
	add r0, r4, r3
	ldrh r1, [r0]
	cmp r1, #0
	bne _08132744
	ldr r2, _0813273C  @ =0x000009B5
	add r0, r4, r2
	strb r1, [r0]
	ldr r3, _08132740  @ =0x0000050C
	add r2, r4, r3
	ldrh r0, [r2]
	mov r3, #128
	lsl r3, r3, #2
	add r1, r3, #0
	eor r0, r0, r1
	strh r0, [r2]
	b _08132748
	.byte 0x00
	.byte 0x00
_08132738:
	.4byte 0x00000CF8
_0813273C:
	.4byte 0x000009B5
_08132740:
	.4byte 0x0000050C
_08132744:
	bl sub_08132750
_08132748:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_081326A0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08132750
sub_08132750: @ 0x08132750
	push {r4,r5,lr}
	ldr r4, _081327B4  @ =gUnknown_0822BF7E
	ldr r3, _081327B8  @ =gUnknown_03002230
	ldr r1, _081327BC  @ =0x00000CF8
	add r0, r3, r1
	ldrh r0, [r0]
	add r2, r0, #0
	cmp r2, #15
	bls _08132764
	add r4, r4, #2
_08132764:
	ldr r1, _081327C0  @ =gUnknown_0822BF26
	mov r0, #15
	and r0, r0, r2
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _081327C4  @ =0x00000978
	add r0, r3, r2
	strh r1, [r0]
	ldr r2, _081327C8  @ =gUnknown_0822BF72
	ldr r5, _081327CC  @ =0x00000CFA
	add r0, r3, r5
	ldrh r1, [r0]
	lsr r1, r1, #1
	lsl r1, r1, #1
	add r2, r1, r2
	ldrh r2, [r2]
	ldr r5, _081327D0  @ =0x0000096C
	add r0, r3, r5
	strh r2, [r0]
	ldr r0, _081327D4  @ =gUnknown_0822BF76
	add r0, r1, r0
	ldrh r2, [r0]
	add r5, r5, #4
	add r0, r3, r5
	strh r2, [r0]
	ldr r0, _081327D8  @ =gUnknown_0822BF7A
	add r1, r1, r0
	ldrh r1, [r1]
	ldr r2, _081327DC  @ =0x00000974
	add r0, r3, r2
	strh r1, [r0]
	mov r0, #160
	mov r1, #176
	add r2, r4, #0
	bl sub_08131D14
	pop {r4,r5}
	pop {r0}
	bx r0
_081327B4:
	.4byte gUnknown_0822BF7E
_081327B8:
	.4byte gUnknown_03002230
_081327BC:
	.4byte 0x00000CF8
_081327C0:
	.4byte gUnknown_0822BF26
_081327C4:
	.4byte 0x00000978
_081327C8:
	.4byte gUnknown_0822BF72
_081327CC:
	.4byte 0x00000CFA
_081327D0:
	.4byte 0x0000096C
_081327D4:
	.4byte gUnknown_0822BF76
_081327D8:
	.4byte gUnknown_0822BF7A
_081327DC:
	.4byte 0x00000974
	THUMB_FUNC_END sub_08132750

	THUMB_FUNC_START sub_081327E0
sub_081327E0: @ 0x081327E0
	push {r4-r7,lr}
	ldr r0, _081327F4  @ =gUnknown_03002230
	ldr r2, _081327F8  @ =0x00000B66
	add r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _081327FC
	sub r0, r0, #1
	strb r0, [r1]
	b _08132830
_081327F4:
	.4byte gUnknown_03002230
_081327F8:
	.4byte 0x00000B66
_081327FC:
	mov r4, #0
	ldr r6, _08132838  @ =gUnknown_02000C00
	ldr r7, _0813283C  @ =0x0000FFE0
	mov r5, #31
_08132804:
	add r0, r4, #0
	add r0, r0, #130
	asr r0, r0, #1
	lsl r0, r0, #1
	add r3, r0, r6
	ldrh r2, [r3]
	add r1, r5, #0
	and r1, r1, r2
	cmp r1, #31
	beq _0813281A
	add r1, r1, #1
_0813281A:
	add r0, r7, #0
	and r0, r0, r2
	orr r1, r1, r0
	strh r1, [r3]
	add r0, r4, #2
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #14
	bne _08132804
	bl sub_08132840
_08132830:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08132838:
	.4byte gUnknown_02000C00
_0813283C:
	.4byte 0x0000FFE0
	THUMB_FUNC_END sub_081327E0

	THUMB_FUNC_START sub_08132840
sub_08132840: @ 0x08132840
	push {r4,lr}
	ldr r2, _0813286C  @ =gUnknown_03002230
	ldr r0, _08132870  @ =0x0000099B
	add r1, r2, r0
	mov r3, #0
	mov r0, #1
	strb r0, [r1]
	ldr r4, _08132874  @ =0x00000B68
	add r1, r2, r4
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #11
	bls _08132878
	sub r4, r4, #2
	add r0, r2, r4
	strb r3, [r0]
	strb r3, [r1]
	b _08132880
	.byte 0x00
	.byte 0x00
_0813286C:
	.4byte gUnknown_03002230
_08132870:
	.4byte 0x0000099B
_08132874:
	.4byte 0x00000B68
_08132878:
	ldr r0, _08132888  @ =0x00000B66
	add r1, r2, r0
	mov r0, #2
	strb r0, [r1]
_08132880:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08132888:
	.4byte 0x00000B66
	THUMB_FUNC_END sub_08132840

	THUMB_FUNC_START sub_0813288C
sub_0813288C: @ 0x0813288C
	push {r4-r7,lr}
	ldr r2, _081328A0  @ =gUnknown_03002230
	ldr r0, _081328A4  @ =0x00000B66
	add r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _081328A8
	sub r0, r0, #1
	strb r0, [r1]
	b _081328F6
_081328A0:
	.4byte gUnknown_03002230
_081328A4:
	.4byte 0x00000B66
_081328A8:
	mov r4, #0
	mov r6, #31
	ldr r7, _081328FC  @ =0x00000978
	add r5, r2, r7
	ldr r0, _08132900  @ =0x0000FFE0
	mov r12, r0
_081328B4:
	add r1, r4, #0
	add r1, r1, #130
	asr r1, r1, #1
	lsl r1, r1, #1
	ldr r0, _08132904  @ =gUnknown_02000800
	add r0, r1, r0
	ldrh r2, [r0]
	add r0, r6, #0
	and r0, r0, r2
	strh r0, [r5]
	ldr r0, _08132908  @ =gUnknown_02000C00
	add r1, r1, r0
	ldrh r3, [r1]
	add r2, r6, #0
	and r2, r2, r3
	mov r7, #0
	ldrsh r0, [r5, r7]
	cmp r2, r0
	beq _081328E0
	sub r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
_081328E0:
	mov r0, r12
	and r0, r0, r3
	orr r2, r2, r0
	strh r2, [r1]
	add r0, r4, #2
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #14
	bne _081328B4
	bl sub_08132840
_081328F6:
	pop {r4-r7}
	pop {r0}
	bx r0
_081328FC:
	.4byte 0x00000978
_08132900:
	.4byte 0x0000FFE0
_08132904:
	.4byte gUnknown_02000800
_08132908:
	.4byte gUnknown_02000C00
	THUMB_FUNC_END sub_0813288C

	THUMB_FUNC_START sub_0813290C
sub_0813290C: @ 0x0813290C
	push {r4-r7,lr}
	ldr r0, _08132920  @ =gUnknown_03002230
	ldr r2, _08132924  @ =0x00000B67
	add r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _08132928
	sub r0, r0, #1
	strb r0, [r1]
	b _08132966
_08132920:
	.4byte gUnknown_03002230
_08132924:
	.4byte 0x00000B67
_08132928:
	mov r4, #0
	mov r5, #248
	lsl r5, r5, #7
	ldr r0, _0813296C  @ =0x000083FF
	mov r12, r0
	ldr r7, _08132970  @ =gUnknown_02000C00
	mov r2, #128
	lsl r2, r2, #3
	add r6, r2, #0
_0813293A:
	add r0, r4, #0
	add r0, r0, #130
	asr r0, r0, #1
	lsl r0, r0, #1
	add r3, r0, r7
	ldrh r2, [r3]
	add r1, r5, #0
	and r1, r1, r2
	cmp r1, r5
	beq _08132950
	add r1, r6, r1
_08132950:
	mov r0, r12
	and r0, r0, r2
	orr r1, r1, r0
	strh r1, [r3]
	add r0, r4, #2
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #14
	bne _0813293A
	bl sub_08132974
_08132966:
	pop {r4-r7}
	pop {r0}
	bx r0
_0813296C:
	.4byte 0x000083FF
_08132970:
	.4byte gUnknown_02000C00
	THUMB_FUNC_END sub_0813290C

	THUMB_FUNC_START sub_08132974
sub_08132974: @ 0x08132974
	push {r4,lr}
	ldr r2, _081329A0  @ =gUnknown_03002230
	ldr r0, _081329A4  @ =0x0000099B
	add r1, r2, r0
	mov r3, #0
	mov r0, #1
	strb r0, [r1]
	ldr r4, _081329A8  @ =0x00000B69
	add r1, r2, r4
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #11
	bls _081329AC
	sub r4, r4, #2
	add r0, r2, r4
	strb r3, [r0]
	strb r3, [r1]
	b _081329B4
	.byte 0x00
	.byte 0x00
_081329A0:
	.4byte gUnknown_03002230
_081329A4:
	.4byte 0x0000099B
_081329A8:
	.4byte 0x00000B69
_081329AC:
	ldr r0, _081329BC  @ =0x00000B67
	add r1, r2, r0
	mov r0, #2
	strb r0, [r1]
_081329B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_081329BC:
	.4byte 0x00000B67
	THUMB_FUNC_END sub_08132974

	THUMB_FUNC_START sub_081329C0
sub_081329C0: @ 0x081329C0
	push {r4-r7,lr}
	ldr r2, _081329D4  @ =gUnknown_03002230
	ldr r0, _081329D8  @ =0x00000B67
	add r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _081329DC
	sub r0, r0, #1
	strb r0, [r1]
	b _08132A2E
_081329D4:
	.4byte gUnknown_03002230
_081329D8:
	.4byte 0x00000B67
_081329DC:
	mov r4, #0
	mov r6, #248
	lsl r6, r6, #7
	ldr r7, _08132A34  @ =0x00000978
	add r5, r2, r7
	ldr r0, _08132A38  @ =0x000083FF
	mov r12, r0
_081329EA:
	add r1, r4, #0
	add r1, r1, #130
	asr r1, r1, #1
	lsl r1, r1, #1
	ldr r0, _08132A3C  @ =gUnknown_02000800
	add r0, r1, r0
	ldrh r2, [r0]
	add r0, r6, #0
	and r0, r0, r2
	strh r0, [r5]
	ldr r0, _08132A40  @ =gUnknown_02000C00
	add r1, r1, r0
	ldrh r3, [r1]
	add r2, r6, #0
	and r2, r2, r3
	mov r7, #0
	ldrsh r0, [r5, r7]
	cmp r2, r0
	beq _08132A18
	ldr r7, _08132A44  @ =0xFFFFFC00
	add r0, r2, r7
	lsl r0, r0, #16
	lsr r2, r0, #16
_08132A18:
	mov r0, r12
	and r0, r0, r3
	orr r2, r2, r0
	strh r2, [r1]
	add r0, r4, #2
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #14
	bne _081329EA
	bl sub_08132974
_08132A2E:
	pop {r4-r7}
	pop {r0}
	bx r0
_08132A34:
	.4byte 0x00000978
_08132A38:
	.4byte 0x000083FF
_08132A3C:
	.4byte gUnknown_02000800
_08132A40:
	.4byte gUnknown_02000C00
_08132A44:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_081329C0

	THUMB_FUNC_START sub_08132A48
sub_08132A48: @ 0x08132A48
	push {r4,r5,lr}
	bl sub_08131AF0
	ldr r5, _08132A8C  @ =gUnknown_03002230
	ldr r1, _08132A90  @ =0x00000CFA
	add r0, r5, r1
	ldrh r4, [r0]
	cmp r4, #255
	bne _08132AA4
	add r4, r5, #0
	mov r3, #0
	ldr r2, _08132A94  @ =gUnknown_02000CB0
	ldr r1, _08132A98  @ =gUnknown_020008B0
	mov r0, #6
_08132A64:
	strh r3, [r1]
	strh r3, [r2]
	add r2, r2, #2
	add r1, r1, #2
	sub r0, r0, #1
	cmp r0, #0
	bge _08132A64
	ldr r3, _08132A9C  @ =0x00000CF8
	add r0, r4, r3
	mov r2, #0
	mov r1, #0
	strh r1, [r0]
	add r3, r3, #2
	add r0, r4, r3
	strh r1, [r0]
	ldr r1, _08132AA0  @ =0x000009AD
	add r0, r4, r1
	strb r2, [r0]
	b _08132AC4
	.byte 0x00
	.byte 0x00
_08132A8C:
	.4byte gUnknown_03002230
_08132A90:
	.4byte 0x00000CFA
_08132A94:
	.4byte gUnknown_02000CB0
_08132A98:
	.4byte gUnknown_020008B0
_08132A9C:
	.4byte 0x00000CF8
_08132AA0:
	.4byte 0x000009AD
_08132AA4:
	cmp r4, #0
	bne _08132AC4
	ldr r3, _08132ACC  @ =0x00000CF8
	add r0, r5, r3
	ldrh r0, [r0]
	cmp r0, #31
	bne _08132AC4
	ldr r0, _08132AD0  @ =gUnknown_02010540
	ldr r1, _08132AD4  @ =gUnknown_02000800
	mov r2, #128
	lsl r2, r2, #2
	bl CpuSet
	ldr r1, _08132AD8  @ =0x000009B5
	add r0, r5, r1
	strb r4, [r0]
_08132AC4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08132ACC:
	.4byte 0x00000CF8
_08132AD0:
	.4byte gUnknown_02010540
_08132AD4:
	.4byte gUnknown_02000800
_08132AD8:
	.4byte 0x000009B5
	THUMB_FUNC_END sub_08132A48

	THUMB_FUNC_START sub_08132ADC
sub_08132ADC: @ 0x08132ADC
	push {r4-r6,lr}
	sub sp, sp, #4
	ldr r5, _08132B20  @ =gUnknown_03002230
	ldr r0, _08132B24  @ =0x000009E8
	add r6, r5, r0
	ldrh r4, [r6]
	cmp r4, #0
	bne _08132B40
	ldr r0, _08132B28  @ =gUnknown_02000800
	ldr r1, _08132B2C  @ =gUnknown_02010540
	mov r2, #128
	lsl r2, r2, #2
	bl CpuSet
	mov r1, sp
	ldr r2, _08132B30  @ =0x00007FFF
	add r0, r2, #0
	strh r0, [r1]
	mov r0, sp
	ldr r1, _08132B28  @ =gUnknown_02000800
	ldr r2, _08132B34  @ =0x01000200
	bl CpuSet
	ldr r1, _08132B38  @ =0x00000CF8
	add r0, r5, r1
	strh r4, [r0]
	ldr r2, _08132B3C  @ =0x00000CFA
	add r1, r5, r2
	mov r0, #2
	strh r0, [r1]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	b _08132B44
_08132B20:
	.4byte gUnknown_03002230
_08132B24:
	.4byte 0x000009E8
_08132B28:
	.4byte gUnknown_02000800
_08132B2C:
	.4byte gUnknown_02010540
_08132B30:
	.4byte 0x00007FFF
_08132B34:
	.4byte 0x01000200
_08132B38:
	.4byte 0x00000CF8
_08132B3C:
	.4byte 0x00000CFA
_08132B40:
	bl sub_08132A48
_08132B44:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08132ADC

	THUMB_FUNC_START sub_08132B4C
sub_08132B4C: @ 0x08132B4C
	push {r4-r6,lr}
	sub sp, sp, #4
	ldr r5, _08132B94  @ =gUnknown_03002230
	ldr r0, _08132B98  @ =0x000009E8
	add r6, r5, r0
	ldrh r4, [r6]
	cmp r4, #0
	bne _08132BB4
	mov r0, #53
	mov r1, #0
	bl sub_0812A324
	ldr r0, _08132B9C  @ =gUnknown_02000800
	ldr r1, _08132BA0  @ =gUnknown_02010540
	mov r2, #128
	lsl r2, r2, #2
	bl CpuSet
	mov r1, sp
	ldr r2, _08132BA4  @ =0x00007FFF
	add r0, r2, #0
	strh r0, [r1]
	mov r0, sp
	ldr r1, _08132B9C  @ =gUnknown_02000800
	ldr r2, _08132BA8  @ =0x01000200
	bl CpuSet
	ldr r1, _08132BAC  @ =0x00000CF8
	add r0, r5, r1
	strh r4, [r0]
	ldr r2, _08132BB0  @ =0x00000CFA
	add r1, r5, r2
	mov r0, #2
	strh r0, [r1]
	b _08132BC8
	.byte 0x00
	.byte 0x00
_08132B94:
	.4byte gUnknown_03002230
_08132B98:
	.4byte 0x000009E8
_08132B9C:
	.4byte gUnknown_02000800
_08132BA0:
	.4byte gUnknown_02010540
_08132BA4:
	.4byte 0x00007FFF
_08132BA8:
	.4byte 0x01000200
_08132BAC:
	.4byte 0x00000CF8
_08132BB0:
	.4byte 0x00000CFA
_08132BB4:
	bl sub_08131AF0
	ldr r1, _08132BD0  @ =0x00000CFA
	add r0, r5, r1
	ldrh r4, [r0]
	cmp r4, #255
	bne _08132BD8
	ldr r2, _08132BD4  @ =0x00000CF8
	add r0, r5, r2
	strh r4, [r0]
_08132BC8:
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	b _08132C0E
_08132BD0:
	.4byte 0x00000CFA
_08132BD4:
	.4byte 0x00000CF8
_08132BD8:
	cmp r4, #0
	bne _08132BF8
	ldr r1, _08132C18  @ =0x00000CF8
	add r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #31
	bne _08132BF8
	ldr r0, _08132C1C  @ =gUnknown_02010540
	ldr r1, _08132C20  @ =gUnknown_02000800
	mov r2, #128
	lsl r2, r2, #2
	bl CpuSet
	ldr r2, _08132C24  @ =0x000009B5
	add r0, r5, r2
	strb r4, [r0]
_08132BF8:
	ldr r0, _08132C28  @ =gUnknown_03002230
	ldr r1, _08132C18  @ =0x00000CF8
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #31
	bne _08132C0E
	ldr r0, _08132C2C  @ =gUnknown_0200BB90
	ldr r1, _08132C30  @ =gUnknown_020008D0
	mov r2, #7
	bl CpuSet
_08132C0E:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08132C18:
	.4byte 0x00000CF8
_08132C1C:
	.4byte gUnknown_02010540
_08132C20:
	.4byte gUnknown_02000800
_08132C24:
	.4byte 0x000009B5
_08132C28:
	.4byte gUnknown_03002230
_08132C2C:
	.4byte gUnknown_0200BB90
_08132C30:
	.4byte gUnknown_020008D0
	THUMB_FUNC_END sub_08132B4C

	THUMB_FUNC_START sub_08132C34
sub_08132C34: @ 0x08132C34
	push {r4,r5,lr}
	ldr r4, _08132C98  @ =gUnknown_0822BF7E
	ldr r3, _08132C9C  @ =gUnknown_03002230
	ldr r1, _08132CA0  @ =0x00000CF8
	add r0, r3, r1
	ldrh r0, [r0]
	add r2, r0, #0
	cmp r2, #15
	bls _08132C48
	add r4, r4, #2
_08132C48:
	ldr r1, _08132CA4  @ =gUnknown_0822BF26
	mov r0, #15
	and r0, r0, r2
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _08132CA8  @ =0x00000978
	add r0, r3, r2
	strh r1, [r0]
	ldr r2, _08132CAC  @ =gUnknown_0822BF72
	ldr r5, _08132CB0  @ =0x00000CFA
	add r0, r3, r5
	ldrh r1, [r0]
	lsr r1, r1, #1
	lsl r1, r1, #1
	add r2, r1, r2
	ldrh r2, [r2]
	ldr r5, _08132CB4  @ =0x0000096C
	add r0, r3, r5
	strh r2, [r0]
	ldr r0, _08132CB8  @ =gUnknown_0822BF76
	add r0, r1, r0
	ldrh r2, [r0]
	add r5, r5, #4
	add r0, r3, r5
	strh r2, [r0]
	ldr r0, _08132CBC  @ =gUnknown_0822BF7A
	add r1, r1, r0
	ldrh r1, [r1]
	ldr r2, _08132CC0  @ =0x00000974
	add r0, r3, r2
	strh r1, [r0]
	mov r0, #32
	mov r1, #48
	add r2, r4, #0
	bl sub_08131D14
	pop {r4,r5}
	pop {r0}
	bx r0
_08132C98:
	.4byte gUnknown_0822BF7E
_08132C9C:
	.4byte gUnknown_03002230
_08132CA0:
	.4byte 0x00000CF8
_08132CA4:
	.4byte gUnknown_0822BF26
_08132CA8:
	.4byte 0x00000978
_08132CAC:
	.4byte gUnknown_0822BF72
_08132CB0:
	.4byte 0x00000CFA
_08132CB4:
	.4byte 0x0000096C
_08132CB8:
	.4byte gUnknown_0822BF76
_08132CBC:
	.4byte gUnknown_0822BF7A
_08132CC0:
	.4byte 0x00000974
	THUMB_FUNC_END sub_08132C34

	THUMB_FUNC_START sub_08132CC4
sub_08132CC4: @ 0x08132CC4
	push {lr}
	ldr r2, _08132CF4  @ =gUnknown_03002230
	ldr r0, _08132CF8  @ =0x00000CF8
	add r1, r2, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #31
	bne _08132CF0
	mov r0, #0
	strh r0, [r1]
	ldr r0, _08132CFC  @ =0x000009E8
	add r1, r2, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	ldr r0, _08132D00  @ =0x00000D02
	add r1, r2, r0
	mov r0, #15
	strh r0, [r1]
_08132CF0:
	pop {r0}
	bx r0
_08132CF4:
	.4byte gUnknown_03002230
_08132CF8:
	.4byte 0x00000CF8
_08132CFC:
	.4byte 0x000009E8
_08132D00:
	.4byte 0x00000D02
	THUMB_FUNC_END sub_08132CC4

	THUMB_FUNC_START sub_08132D04
sub_08132D04: @ 0x08132D04
	push {r4-r6,lr}
	ldr r0, _08132D7C  @ =gUnknown_03002230
	ldr r1, _08132D80  @ =0x00000996
	add r0, r0, r1
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08132D6A
	mov r3, #32
	mov r4, #248
	lsl r4, r4, #7
	ldr r2, _08132D84  @ =gUnknown_02000C40
	mov r0, #128
	lsl r0, r0, #3
	add r6, r0, #0
	mov r5, #128
	lsl r5, r5, #2
_08132D28:
	ldrh r1, [r2]
	add r0, r1, #0
	and r0, r0, r4
	cmp r0, r4
	beq _08132D38
	add r0, r1, r6
	lsl r0, r0, #16
	lsr r1, r0, #16
_08132D38:
	strh r1, [r2]
	add r2, r2, #2
	add r3, r3, #1
	cmp r3, #128
	bne _08132D48
	ldr r2, _08132D88  @ =gUnknown_02000E00
	mov r3, #128
	lsl r3, r3, #1
_08132D48:
	cmp r3, r5
	bne _08132D28
	ldr r2, _08132D7C  @ =gUnknown_03002230
	ldr r1, _08132D8C  @ =0x00000CF8
	add r0, r2, r1
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08132D66
	ldr r0, _08132D90  @ =0x00000D02
	add r1, r2, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
_08132D66:
	bl sub_08132CC4
_08132D6A:
	ldr r1, _08132D7C  @ =gUnknown_03002230
	ldr r0, _08132D94  @ =0x0000099B
	add r1, r1, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
_08132D7C:
	.4byte gUnknown_03002230
_08132D80:
	.4byte 0x00000996
_08132D84:
	.4byte gUnknown_02000C40
_08132D88:
	.4byte gUnknown_02000E00
_08132D8C:
	.4byte 0x00000CF8
_08132D90:
	.4byte 0x00000D02
_08132D94:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08132D04

	THUMB_FUNC_START sub_08132D98
sub_08132D98: @ 0x08132D98
	push {r4,lr}
	mov r3, #32
	mov r4, #248
	lsl r4, r4, #2
_08132DA0:
	lsl r0, r3, #1
	ldr r1, _08132DF4  @ =gUnknown_02000C00
	add r2, r0, r1
	ldrh r1, [r2]
	add r0, r1, #0
	and r0, r0, r4
	cmp r0, #0
	beq _08132DB8
	add r0, r1, #0
	sub r0, r0, #32
	lsl r0, r0, #16
	lsr r1, r0, #16
_08132DB8:
	strh r1, [r2]
	ldrh r1, [r2]
	mov r0, #31
	and r0, r0, r1
	cmp r0, #0
	beq _08132DCA
	sub r0, r1, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
_08132DCA:
	strh r1, [r2]
	add r3, r3, #1
	cmp r3, #128
	bne _08132DD6
	mov r3, #128
	lsl r3, r3, #1
_08132DD6:
	mov r0, #128
	lsl r0, r0, #2
	cmp r3, r0
	bne _08132DA0
	bl sub_08132CC4
	ldr r1, _08132DF8  @ =gUnknown_03002230
	ldr r0, _08132DFC  @ =0x0000099B
	add r1, r1, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
_08132DF4:
	.4byte gUnknown_02000C00
_08132DF8:
	.4byte gUnknown_03002230
_08132DFC:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08132D98

	THUMB_FUNC_START sub_08132E00
sub_08132E00: @ 0x08132E00
	push {r4-r7,lr}
	ldr r2, _08132EA4  @ =gUnknown_03002230
	ldr r1, _08132EA8  @ =0x00000996
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	add r7, r2, #0
	cmp r0, #0
	beq _08132E92
	mov r5, #32
	mov r6, #248
	lsl r6, r6, #7
_08132E1A:
	lsl r0, r5, #1
	ldr r1, _08132EAC  @ =gUnknown_02000C00
	add r4, r0, r1
	ldrh r3, [r4]
	ldr r1, _08132EB0  @ =gUnknown_02000800
	add r0, r0, r1
	ldrh r2, [r0]
	add r1, r3, #0
	and r1, r1, r6
	add r0, r6, #0
	and r0, r0, r2
	cmp r1, r0
	beq _08132E3C
	ldr r1, _08132EB4  @ =0xFFFFFC00
	add r0, r3, r1
	lsl r0, r0, #16
	lsr r3, r0, #16
_08132E3C:
	strh r3, [r4]
	add r5, r5, #1
	cmp r5, #128
	bne _08132E48
	mov r5, #128
	lsl r5, r5, #1
_08132E48:
	mov r0, #128
	lsl r0, r0, #2
	cmp r5, r0
	bne _08132E1A
	ldr r1, _08132EB8  @ =0x00000CF8
	add r0, r7, r1
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08132E6C
	ldr r0, _08132EBC  @ =0x00000D02
	add r1, r7, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08132E6C
	sub r0, r0, #1
	strh r0, [r1]
_08132E6C:
	ldr r0, _08132EB8  @ =0x00000CF8
	add r1, r7, r0
	ldrh r0, [r1]
	add r0, r0, #1
	mov r2, #0
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #31
	bne _08132E92
	strh r2, [r1]
	ldr r1, _08132EC0  @ =0x000009E8
	add r0, r7, r1
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldr r1, _08132EBC  @ =0x00000D02
	add r0, r7, r1
	strh r2, [r0]
_08132E92:
	ldr r0, _08132EC4  @ =0x0000099B
	add r1, r7, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08132EA4:
	.4byte gUnknown_03002230
_08132EA8:
	.4byte 0x00000996
_08132EAC:
	.4byte gUnknown_02000C00
_08132EB0:
	.4byte gUnknown_02000800
_08132EB4:
	.4byte 0xFFFFFC00
_08132EB8:
	.4byte 0x00000CF8
_08132EBC:
	.4byte 0x00000D02
_08132EC0:
	.4byte 0x000009E8
_08132EC4:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08132E00

	THUMB_FUNC_START sub_08132EC8
sub_08132EC8: @ 0x08132EC8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r6, #32
	ldr r0, _08132F60  @ =gUnknown_03002230
	mov r8, r0
	mov r1, #248
	lsl r1, r1, #2
	mov r12, r1
	mov r7, #31
_08132EDC:
	lsl r0, r6, #1
	ldr r1, _08132F64  @ =gUnknown_02000C00
	add r4, r0, r1
	ldrh r3, [r4]
	ldr r1, _08132F68  @ =gUnknown_02000800
	add r5, r0, r1
	ldrh r2, [r5]
	add r1, r3, #0
	mov r0, r12
	and r1, r1, r0
	and r0, r0, r2
	cmp r1, r0
	beq _08132EFE
	add r0, r3, #0
	add r0, r0, #32
	lsl r0, r0, #16
	lsr r3, r0, #16
_08132EFE:
	strh r3, [r4]
	ldrh r3, [r4]
	ldrh r2, [r5]
	add r1, r3, #0
	and r1, r1, r7
	add r0, r7, #0
	and r0, r0, r2
	cmp r1, r0
	beq _08132F16
	add r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
_08132F16:
	strh r3, [r4]
	add r6, r6, #1
	cmp r6, #128
	bne _08132F22
	mov r6, #128
	lsl r6, r6, #1
_08132F22:
	mov r0, #128
	lsl r0, r0, #2
	cmp r6, r0
	bne _08132EDC
	mov r1, r8
	ldr r0, _08132F6C  @ =0x00000CF8
	add r2, r1, r0
	ldrh r0, [r2]
	add r0, r0, #1
	strh r0, [r2]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #31
	bne _08132F4C
	mov r0, #0
	strh r0, [r2]
	ldr r0, _08132F70  @ =0x000009E8
	add r1, r1, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
_08132F4C:
	ldr r1, _08132F74  @ =0x0000099B
	add r1, r1, r8
	mov r0, #1
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08132F60:
	.4byte gUnknown_03002230
_08132F64:
	.4byte gUnknown_02000C00
_08132F68:
	.4byte gUnknown_02000800
_08132F6C:
	.4byte 0x00000CF8
_08132F70:
	.4byte 0x000009E8
_08132F74:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08132EC8

	THUMB_FUNC_START sub_08132F78
sub_08132F78: @ 0x08132F78
	push {r4,r5,lr}
	ldr r1, _0813300C  @ =gUnknown_0822BBB4
	ldrh r0, [r1, #28]
	mov r4, #7
	lsl r0, r0, #1
	ldr r3, _08133010  @ =gUnknown_02030400
	add r2, r0, r3
	add r5, r1, #0
	ldr r1, _08133014  @ =gUnknown_02000E60
	ldr r3, _08133018  @ =gUnknown_02000A60
_08132F8C:
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	add r3, r3, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _08132F8C
	ldrh r0, [r5, #28]
	mov r4, #7
	lsl r0, r0, #1
	ldr r1, _08133010  @ =gUnknown_02030400
	add r2, r0, r1
	ldr r1, _0813301C  @ =gUnknown_02000E80
	ldr r3, _08133020  @ =gUnknown_02000A80
_08132FAE:
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	add r3, r3, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _08132FAE
	ldrh r0, [r5, #28]
	mov r4, #7
	lsl r0, r0, #1
	ldr r3, _08133010  @ =gUnknown_02030400
	add r2, r0, r3
	ldr r1, _08133024  @ =gUnknown_02000EA0
	ldr r3, _08133028  @ =gUnknown_02000AA0
_08132FD0:
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	add r3, r3, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _08132FD0
	ldrh r0, [r5, #42]
	mov r4, #7
	lsl r0, r0, #1
	ldr r2, _08133010  @ =gUnknown_02030400
	add r1, r0, r2
	ldr r3, _0813302C  @ =gUnknown_02000EC0
	ldr r2, _08133030  @ =gUnknown_02000AC0
_08132FF2:
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1]
	strh r0, [r3]
	add r1, r1, #2
	add r3, r3, #2
	add r2, r2, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _08132FF2
	pop {r4,r5}
	pop {r0}
	bx r0
_0813300C:
	.4byte gUnknown_0822BBB4
_08133010:
	.4byte gUnknown_02030400
_08133014:
	.4byte gUnknown_02000E60
_08133018:
	.4byte gUnknown_02000A60
_0813301C:
	.4byte gUnknown_02000E80
_08133020:
	.4byte gUnknown_02000A80
_08133024:
	.4byte gUnknown_02000EA0
_08133028:
	.4byte gUnknown_02000AA0
_0813302C:
	.4byte gUnknown_02000EC0
_08133030:
	.4byte gUnknown_02000AC0
	THUMB_FUNC_END sub_08132F78

	THUMB_FUNC_START sub_08133034
sub_08133034: @ 0x08133034
	push {r4,r5,lr}
	ldr r4, _08133084  @ =gUnknown_03002230
	ldr r1, _08133088  @ =0x00000CB2
	add r0, r4, r1
	ldrh r0, [r0]
	mov r5, #184
	lsl r5, r5, #1
	cmp r0, #0
	bne _08133048
	sub r5, r5, #112
_08133048:
	ldr r1, _0813308C  @ =gUnknown_0822BB84
	ldr r2, _08133090  @ =0x00000CA4
	add r0, r4, r2
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	mov r3, #7
	lsl r0, r0, #1
	ldr r1, _08133094  @ =gUnknown_02030200
	add r2, r0, r1
	mov r1, #202
	lsl r1, r1, #4
	add r0, r4, r1
	ldrh r0, [r0]
	add r0, r5, r0
	lsl r0, r0, #1
	ldr r4, _08133098  @ =gUnknown_02000800
	add r1, r0, r4
_0813306E:
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	sub r3, r3, #1
	cmp r3, #0
	bge _0813306E
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08133084:
	.4byte gUnknown_03002230
_08133088:
	.4byte 0x00000CB2
_0813308C:
	.4byte gUnknown_0822BB84
_08133090:
	.4byte 0x00000CA4
_08133094:
	.4byte gUnknown_02030200
_08133098:
	.4byte gUnknown_02000800
	THUMB_FUNC_END sub_08133034

	THUMB_FUNC_START sub_0813309C
sub_0813309C: @ 0x0813309C
	push {r4,lr}
	ldr r2, _081330D8  @ =gUnknown_0822BBB4
	ldr r1, _081330DC  @ =gUnknown_03002230
	ldr r3, _081330E0  @ =0x00000CA5
	add r0, r1, r3
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	mov r3, #7
	lsl r0, r0, #1
	ldr r4, _081330E4  @ =gUnknown_02030400
	add r2, r0, r4
	mov r0, #202
	lsl r0, r0, #4
	add r1, r1, r0
	ldrh r0, [r1]
	lsl r0, r0, #1
	ldr r4, _081330E8  @ =gUnknown_02000AA0
	add r1, r0, r4
_081330C4:
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	sub r3, r3, #1
	cmp r3, #0
	bge _081330C4
	pop {r4}
	pop {r0}
	bx r0
_081330D8:
	.4byte gUnknown_0822BBB4
_081330DC:
	.4byte gUnknown_03002230
_081330E0:
	.4byte 0x00000CA5
_081330E4:
	.4byte gUnknown_02030400
_081330E8:
	.4byte gUnknown_02000AA0
	THUMB_FUNC_END sub_0813309C

	THUMB_FUNC_START sub_081330EC
sub_081330EC: @ 0x081330EC
	push {r4,r5,lr}
	ldr r1, _0813312C  @ =gUnknown_0822BBF4
	ldr r0, _08133130  @ =gUnknown_0200233D
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	mov r4, #3
	lsl r0, r0, #1
	ldr r1, _08133134  @ =gUnknown_02030600
	add r2, r0, r1
	ldr r5, _08133138  @ =gUnknown_03002230
	ldr r1, _0813313C  @ =gUnknown_02000EB0
	ldr r3, _08133140  @ =gUnknown_02000AB0
_08133108:
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	add r3, r3, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _08133108
	ldr r0, _08133144  @ =0x0000099B
	add r1, r5, r0
	mov r0, #1
	strb r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0813312C:
	.4byte gUnknown_0822BBF4
_08133130:
	.4byte gUnknown_0200233D
_08133134:
	.4byte gUnknown_02030600
_08133138:
	.4byte gUnknown_03002230
_0813313C:
	.4byte gUnknown_02000EB0
_08133140:
	.4byte gUnknown_02000AB0
_08133144:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_081330EC

	THUMB_FUNC_START sub_08133148
sub_08133148: @ 0x08133148
	push {r4,r5,lr}
	ldr r1, _08133188  @ =gUnknown_0822BBFE
	ldr r0, _0813318C  @ =gUnknown_0200233E
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	mov r4, #3
	lsl r0, r0, #1
	ldr r1, _08133190  @ =gUnknown_02030600
	add r2, r0, r1
	ldr r5, _08133194  @ =gUnknown_03002230
	ldr r1, _08133198  @ =gUnknown_02000EB8
	ldr r3, _0813319C  @ =gUnknown_02000AB8
_08133164:
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	add r3, r3, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _08133164
	ldr r0, _081331A0  @ =0x0000099B
	add r1, r5, r0
	mov r0, #1
	strb r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08133188:
	.4byte gUnknown_0822BBFE
_0813318C:
	.4byte gUnknown_0200233E
_08133190:
	.4byte gUnknown_02030600
_08133194:
	.4byte gUnknown_03002230
_08133198:
	.4byte gUnknown_02000EB8
_0813319C:
	.4byte gUnknown_02000AB8
_081331A0:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08133148

	THUMB_FUNC_START sub_081331A4
sub_081331A4: @ 0x081331A4
	push {r4,lr}
	ldr r2, _081331E0  @ =gUnknown_0822BB64
	ldr r1, _081331E4  @ =gUnknown_03002230
	ldr r3, _081331E8  @ =0x00000CA8
	add r0, r1, r3
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	mov r3, #7
	lsl r0, r0, #1
	ldr r4, _081331EC  @ =gUnknown_02030210
	add r2, r0, r4
	mov r0, #202
	lsl r0, r0, #4
	add r1, r1, r0
	ldrh r0, [r1]
	lsl r0, r0, #1
	ldr r4, _081331F0  @ =gUnknown_02000AC0
	add r1, r0, r4
_081331CC:
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	sub r3, r3, #1
	cmp r3, #0
	bge _081331CC
	pop {r4}
	pop {r0}
	bx r0
_081331E0:
	.4byte gUnknown_0822BB64
_081331E4:
	.4byte gUnknown_03002230
_081331E8:
	.4byte 0x00000CA8
_081331EC:
	.4byte gUnknown_02030210
_081331F0:
	.4byte gUnknown_02000AC0
	THUMB_FUNC_END sub_081331A4

	THUMB_FUNC_START sub_081331F4
sub_081331F4: @ 0x081331F4
	push {r4,lr}
	ldr r2, _08133230  @ =gUnknown_0822BB64
	ldr r1, _08133234  @ =gUnknown_03002230
	ldr r3, _08133238  @ =0x00000CA9
	add r0, r1, r3
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	mov r3, #7
	lsl r0, r0, #1
	ldr r4, _0813323C  @ =gUnknown_02030210
	add r2, r0, r4
	mov r0, #202
	lsl r0, r0, #4
	add r1, r1, r0
	ldrh r0, [r1]
	lsl r0, r0, #1
	ldr r4, _08133240  @ =gUnknown_02000AD0
	add r1, r0, r4
_0813321C:
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	sub r3, r3, #1
	cmp r3, #0
	bge _0813321C
	pop {r4}
	pop {r0}
	bx r0
_08133230:
	.4byte gUnknown_0822BB64
_08133234:
	.4byte gUnknown_03002230
_08133238:
	.4byte 0x00000CA9
_0813323C:
	.4byte gUnknown_02030210
_08133240:
	.4byte gUnknown_02000AD0
	THUMB_FUNC_END sub_081331F4

	THUMB_FUNC_START sub_08133244
sub_08133244: @ 0x08133244
	push {r4,lr}
	ldr r4, _0813328C  @ =gUnknown_03002230
	ldr r1, _08133290  @ =0x000009B2
	add r0, r4, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _081332A4
	ldr r1, _08133294  @ =gUnknown_0822BB64
	ldr r2, _08133298  @ =0x00000CA9
	add r0, r4, r2
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	mov r3, #7
	lsl r0, r0, #1
	ldr r1, _0813329C  @ =gUnknown_02030210
	add r2, r0, r1
	mov r1, #202
	lsl r1, r1, #4
	add r0, r4, r1
	ldrh r0, [r0]
	lsl r0, r0, #1
	ldr r4, _081332A0  @ =gUnknown_02000AD0
	add r1, r0, r4
_0813327A:
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	sub r3, r3, #1
	cmp r3, #0
	bge _0813327A
	b _081332A8
	.byte 0x00
	.byte 0x00
_0813328C:
	.4byte gUnknown_03002230
_08133290:
	.4byte 0x000009B2
_08133294:
	.4byte gUnknown_0822BB64
_08133298:
	.4byte 0x00000CA9
_0813329C:
	.4byte gUnknown_02030210
_081332A0:
	.4byte gUnknown_02000AD0
_081332A4:
	bl sub_081301B8
_081332A8:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08133244

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_081332B0
sub_081332B0: @ 0x081332B0
	push {r4,lr}
	ldr r1, _081332EC  @ =gUnknown_02002338
	ldrb r0, [r1]
	cmp r0, #0
	beq _081332D8
	sub r0, r0, #1
	ldr r1, _081332F0  @ =gUnknown_0822BC08
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r4, [r0]
	add r0, r4, #0
	bl sub_08133468
	ldr r1, _081332F4  @ =gUnknown_020009FA
	strh r0, [r1]
	add r0, r4, #0
	bl sub_08133468
	ldr r1, _081332F8  @ =gUnknown_02000DFA
	strh r0, [r1]
_081332D8:
	ldr r1, _081332FC  @ =gUnknown_03002230
	ldr r0, _08133300  @ =0x0000099B
	add r1, r1, r0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_081332EC:
	.4byte gUnknown_02002338
_081332F0:
	.4byte gUnknown_0822BC08
_081332F4:
	.4byte gUnknown_020009FA
_081332F8:
	.4byte gUnknown_02000DFA
_081332FC:
	.4byte gUnknown_03002230
_08133300:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_081332B0

	THUMB_FUNC_START sub_08133304
sub_08133304: @ 0x08133304
	push {r4-r7,lr}
	mov r1, #5
	ldr r5, _08133344  @ =gUnknown_02031700
	mov r7, #15
	ldr r0, _08133348  @ =gUnknown_03002230
	mov r2, #202
	lsl r2, r2, #4
	add r0, r0, r2
	ldrh r0, [r0]
	add r0, r0, #32
	ldr r6, _0813334C  @ =gUnknown_02000800
	lsl r3, r0, #1
_0813331C:
	add r2, r7, #0
	sub r4, r1, #1
	cmp r2, #0
	blt _08133336
	add r1, r3, r6
_08133326:
	ldrh r0, [r5]
	strh r0, [r1]
	add r5, r5, #2
	add r1, r1, #2
	add r3, r3, #2
	sub r2, r2, #1
	cmp r2, #0
	bge _08133326
_08133336:
	add r1, r4, #0
	cmp r1, #0
	bge _0813331C
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08133344:
	.4byte gUnknown_02031700
_08133348:
	.4byte gUnknown_03002230
_0813334C:
	.4byte gUnknown_02000800
	THUMB_FUNC_END sub_08133304

	THUMB_FUNC_START sub_08133350
sub_08133350: @ 0x08133350
	push {r4-r6,lr}
	ldr r5, _08133388  @ =gUnknown_083BF758
	ldr r6, _0813338C  @ =gUnknown_02000900
	mov r4, #127
_08133358:
	ldrh r0, [r5]
	bl sub_08133468
	strh r0, [r6]
	add r5, r5, #2
	add r6, r6, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _08133358
	ldr r5, _08133390  @ =gUnknown_083BF858
	ldr r6, _08133394  @ =gUnknown_02000B00
	mov r4, #127
_08133370:
	ldrh r0, [r5]
	bl sub_08133468
	strh r0, [r6]
	add r5, r5, #2
	add r6, r6, #2
	sub r4, r4, #1
	cmp r4, #0
	bge _08133370
	pop {r4-r6}
	pop {r0}
	bx r0
_08133388:
	.4byte gUnknown_083BF758
_0813338C:
	.4byte gUnknown_02000900
_08133390:
	.4byte gUnknown_083BF858
_08133394:
	.4byte gUnknown_02000B00
	THUMB_FUNC_END sub_08133350

	THUMB_FUNC_START sub_08133398
sub_08133398: @ 0x08133398
	push {r4,lr}
	ldr r2, _081333D8  @ =gUnknown_0822BB64
	ldr r1, _081333DC  @ =gUnknown_03002230
	mov r3, #203
	lsl r3, r3, #4
	add r0, r1, r3
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	mov r3, #7
	lsl r0, r0, #1
	ldr r4, _081333E0  @ =gUnknown_02031800
	add r2, r0, r4
	mov r0, #202
	lsl r0, r0, #4
	add r1, r1, r0
	ldrh r0, [r1]
	lsl r0, r0, #1
	ldr r4, _081333E4  @ =gUnknown_020008E0
	add r1, r0, r4
_081333C2:
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	add r1, r1, #2
	sub r3, r3, #1
	cmp r3, #0
	bge _081333C2
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_081333D8:
	.4byte gUnknown_0822BB64
_081333DC:
	.4byte gUnknown_03002230
_081333E0:
	.4byte gUnknown_02031800
_081333E4:
	.4byte gUnknown_020008E0
	THUMB_FUNC_END sub_08133398

	THUMB_FUNC_START sub_081333E8
sub_081333E8: @ 0x081333E8
	push {r4-r7,lr}
	ldr r4, _08133424  @ =gUnknown_083BF858
	mov r0, #144
	lsl r0, r0, #1
	add r4, r4, r0
	ldr r7, _08133428  @ =gUnknown_02000F20
	ldr r6, _0813342C  @ =gUnknown_02000B20
	mov r5, #63
_081333F8:
	ldrh r0, [r4]
	bl sub_08133468
	strh r0, [r6]
	ldrh r0, [r4]
	bl sub_08133468
	strh r0, [r7]
	add r4, r4, #2
	add r7, r7, #2
	add r6, r6, #2
	sub r5, r5, #1
	cmp r5, #0
	bge _081333F8
	ldr r0, _08133430  @ =gUnknown_03002230
	ldr r1, _08133434  @ =0x0000099B
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
_08133424:
	.4byte gUnknown_083BF858
_08133428:
	.4byte gUnknown_02000F20
_0813342C:
	.4byte gUnknown_02000B20
_08133430:
	.4byte gUnknown_03002230
_08133434:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_081333E8

	THUMB_FUNC_START sub_08133438
sub_08133438: @ 0x08133438
	ldr r0, _08133458  @ =gUnknown_02000C00
	mov r1, #0
	strh r1, [r0]
	add r0, r0, #64
	strh r1, [r0]
	ldr r0, _0813345C  @ =gUnknown_02000800
	strh r1, [r0]
	add r0, r0, #64
	strh r1, [r0]
	ldr r0, _08133460  @ =gUnknown_03002230
	ldr r1, _08133464  @ =0x000009CC
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_08133458:
	.4byte gUnknown_02000C00
_0813345C:
	.4byte gUnknown_02000800
_08133460:
	.4byte gUnknown_03002230
_08133464:
	.4byte 0x000009CC
	THUMB_FUNC_END sub_08133438

	THUMB_FUNC_START sub_08133468
sub_08133468: @ 0x08133468
	push {r4,lr}
	add r2, r0, #0
	lsl r2, r2, #16
	mov r0, #192
	lsl r0, r0, #18
	ldrb r3, [r0, #7]
	lsl r3, r3, #6
	ldr r0, _081334B0  @ =gUnknown_0822BE66
	add r3, r3, r0
	mov r4, #31
	mov r1, #248
	lsl r1, r1, #13
	and r1, r1, r2
	lsr r1, r1, #15
	add r1, r1, r3
	lsr r0, r2, #21
	and r0, r0, r4
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	lsl r0, r0, #5
	ldrh r1, [r1]
	orr r0, r0, r1
	lsr r2, r2, #26
	and r2, r2, r4
	lsl r2, r2, #1
	add r2, r2, r3
	ldrh r1, [r2]
	lsl r1, r1, #10
	orr r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_081334B0:
	.4byte gUnknown_0822BE66
	THUMB_FUNC_END sub_08133468

	THUMB_FUNC_START sub_081334B4
sub_081334B4: @ 0x081334B4
	push {lr}
	ldr r0, _081334D0  @ =gUnknown_03002230
	ldr r1, _081334D4  @ =0x00000996
	add r0, r0, r1
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _081334CA
	bl sub_08130FF8
_081334CA:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_081334D0:
	.4byte gUnknown_03002230
_081334D4:
	.4byte 0x00000996
	THUMB_FUNC_END sub_081334B4

	THUMB_FUNC_START sub_081334D8
sub_081334D8: @ 0x081334D8
	push {lr}
	ldr r1, _08133500  @ =gUnknown_03002230
	ldr r2, _08133504  @ =0x00000B6E
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _081334FC
	ldr r2, _08133508  @ =0x000009C6
	add r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #67
	beq _081334F8
	cmp r0, #69
	beq _081334F8
	cmp r0, #71
	bne _081334FC
_081334F8:
	bl sub_08131710
_081334FC:
	pop {r0}
	bx r0
_08133500:
	.4byte gUnknown_03002230
_08133504:
	.4byte 0x00000B6E
_08133508:
	.4byte 0x000009C6
	THUMB_FUNC_END sub_081334D8

	THUMB_FUNC_START sub_0813350C
sub_0813350C: @ 0x0813350C
	push {lr}
	mov r0, #88
	mov r1, #96
	bl sub_081318E0
	mov r0, #104
	mov r1, #112
	bl sub_08131998
	ldr r0, _0813352C  @ =gUnknown_03002230
	ldr r1, _08133530  @ =0x0000099B
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	pop {r0}
	bx r0
_0813352C:
	.4byte gUnknown_03002230
_08133530:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_0813350C

	THUMB_FUNC_START sub_08133534
sub_08133534: @ 0x08133534
	push {lr}
	sub sp, sp, #4
	mov r1, sp
	ldr r2, _08133574  @ =0x00007FFF
	add r0, r2, #0
	strh r0, [r1]
	ldr r1, _08133578  @ =gUnknown_02000800
	ldr r2, _0813357C  @ =0x01000200
	mov r0, sp
	bl CpuSet
	ldr r1, _08133580  @ =gUnknown_03002230
	ldr r0, _08133584  @ =0x00000CF8
	add r2, r1, r0
	mov r3, #0
	mov r0, #0
	strh r0, [r2]
	ldr r0, _08133588  @ =0x00000CFA
	add r2, r1, r0
	mov r0, #2
	strh r0, [r2]
	ldr r0, _0813358C  @ =0x00000C85
	add r2, r1, r0
	mov r0, #8
	strb r0, [r2]
	ldr r2, _08133590  @ =0x00000C84
	add r1, r1, r2
	strb r3, [r1]
	add sp, sp, #4
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08133574:
	.4byte 0x00007FFF
_08133578:
	.4byte gUnknown_02000800
_0813357C:
	.4byte 0x01000200
_08133580:
	.4byte gUnknown_03002230
_08133584:
	.4byte 0x00000CF8
_08133588:
	.4byte 0x00000CFA
_0813358C:
	.4byte 0x00000C85
_08133590:
	.4byte 0x00000C84
	THUMB_FUNC_END sub_08133534

	THUMB_FUNC_START sub_08133594
sub_08133594: @ 0x08133594
	push {lr}
	ldr r0, _081335B4  @ =gUnknown_03002230
	ldr r2, _081335B8  @ =0x00000C85
	add r1, r0, r2
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	bne _081335BC
	mov r0, #2
	strb r0, [r1]
	bl sub_08131AF0
	b _081335C0
	.byte 0x00
	.byte 0x00
_081335B4:
	.4byte gUnknown_03002230
_081335B8:
	.4byte 0x00000C85
_081335BC:
	bl sub_0812F95C
_081335C0:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08133594

	THUMB_FUNC_START sub_081335C4
sub_081335C4: @ 0x081335C4
	push {lr}
	mov r0, #32
	mov r1, #128
	bl sub_081318E0
	mov r0, #128
	lsl r0, r0, #1
	mov r1, #192
	lsl r1, r1, #1
	bl sub_081318E0
	ldr r1, _081335EC  @ =gUnknown_02000C00
	ldr r0, _081335F0  @ =gUnknown_02000C40
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_08131A50
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_081335EC:
	.4byte gUnknown_02000C00
_081335F0:
	.4byte gUnknown_02000C40
	THUMB_FUNC_END sub_081335C4

	THUMB_FUNC_START sub_081335F4
sub_081335F4: @ 0x081335F4
	bx lr
	THUMB_FUNC_END sub_081335F4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_081335F8
sub_081335F8: @ 0x081335F8
	bx lr
	THUMB_FUNC_END sub_081335F8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_081335FC
sub_081335FC: @ 0x081335FC
	bx lr
	THUMB_FUNC_END sub_081335FC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08133600
sub_08133600: @ 0x08133600
	bx lr
	THUMB_FUNC_END sub_08133600

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08133604
sub_08133604: @ 0x08133604
	push {lr}
	ldr r0, _08133618  @ =gUnknown_03002230
	ldr r1, _0813361C  @ =0x000009B5
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	bl sub_08131DCC
	pop {r0}
	bx r0
_08133618:
	.4byte gUnknown_03002230
_0813361C:
	.4byte 0x000009B5
	THUMB_FUNC_END sub_08133604

	THUMB_FUNC_START sub_08133620
sub_08133620: @ 0x08133620
	push {lr}
	bl sub_08131E90
	ldr r0, _0813363C  @ =gUnknown_03002230
	ldr r1, _08133640  @ =0x00000CF8
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _08133636
	bl sub_08131E90
_08133636:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0813363C:
	.4byte gUnknown_03002230
_08133640:
	.4byte 0x00000CF8
	THUMB_FUNC_END sub_08133620

	THUMB_FUNC_START sub_08133644
sub_08133644: @ 0x08133644
	push {lr}
	ldr r0, _0813365C  @ =gUnknown_0200233D
	ldrb r0, [r0]
	ldr r1, _08133660  @ =gUnknown_0200233E
	ldrb r1, [r1]
	ldr r2, _08133664  @ =gUnknown_0200233F
	ldrb r2, [r2]
	bl sub_0813249C
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0813365C:
	.4byte gUnknown_0200233D
_08133660:
	.4byte gUnknown_0200233E
_08133664:
	.4byte gUnknown_0200233F
	THUMB_FUNC_END sub_08133644

	THUMB_FUNC_START sub_08133668
sub_08133668: @ 0x08133668
	push {lr}
	mov r0, #2
	mov r1, #2
	mov r2, #4
	bl sub_0813249C
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08133668

	THUMB_FUNC_START sub_08133678
sub_08133678: @ 0x08133678
	push {lr}
	ldr r0, _0813368C  @ =gUnknown_0200233D
	ldrb r0, [r0]
	ldr r1, _08133690  @ =gUnknown_0200233E
	ldrb r1, [r1]
	mov r2, #3
	bl sub_0813249C
	pop {r0}
	bx r0
_0813368C:
	.4byte gUnknown_0200233D
_08133690:
	.4byte gUnknown_0200233E
	THUMB_FUNC_END sub_08133678

	THUMB_FUNC_START sub_08133694
sub_08133694: @ 0x08133694
	push {r4,lr}
	mov r4, #128
	lsl r4, r4, #1
	mov r1, #184
	lsl r1, r1, #1
	add r0, r4, #0
	bl sub_081318E0
	mov r0, #96
	add r1, r4, #0
	bl sub_081318E0
	ldr r1, _081336C8  @ =gUnknown_03002230
	ldr r0, _081336CC  @ =0x00000CF8
	add r2, r1, r0
	ldrh r0, [r2]
	sub r0, r0, #1
	strh r0, [r2]
	ldr r0, _081336D0  @ =0x0000099B
	add r1, r1, r0
	mov r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_081336C8:
	.4byte gUnknown_03002230
_081336CC:
	.4byte 0x00000CF8
_081336D0:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08133694

	THUMB_FUNC_START sub_081336D4
sub_081336D4: @ 0x081336D4
	push {lr}
	mov r0, #32
	mov r1, #96
	bl sub_081318E0
	mov r0, #32
	mov r1, #96
	bl sub_081318E0
	ldr r1, _08133700  @ =gUnknown_03002230
	ldr r0, _08133704  @ =0x00000CF8
	add r2, r1, r0
	ldrh r0, [r2]
	sub r0, r0, #1
	strh r0, [r2]
	ldr r0, _08133708  @ =0x0000099B
	add r1, r1, r0
	mov r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08133700:
	.4byte gUnknown_03002230
_08133704:
	.4byte 0x00000CF8
_08133708:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_081336D4

	THUMB_FUNC_START sub_0813370C
sub_0813370C: @ 0x0813370C
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, _08133754  @ =gUnknown_02000800
	ldr r1, _08133758  @ =gUnknown_02010540
	mov r2, #128
	lsl r2, r2, #2
	add r0, r4, #0
	bl CpuSet
	mov r1, sp
	ldr r2, _0813375C  @ =0x00007FFF
	add r0, r2, #0
	strh r0, [r1]
	ldr r2, _08133760  @ =0x01000200
	mov r0, sp
	add r1, r4, #0
	bl CpuSet
	ldr r1, _08133764  @ =gUnknown_03002230
	ldr r0, _08133768  @ =0x00000CF8
	add r2, r1, r0
	mov r0, #0
	strh r0, [r2]
	ldr r0, _0813376C  @ =0x00000CFA
	add r2, r1, r0
	mov r0, #2
	strh r0, [r2]
	ldr r2, _08133770  @ =0x000009E8
	add r1, r1, r2
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08133754:
	.4byte gUnknown_02000800
_08133758:
	.4byte gUnknown_02010540
_0813375C:
	.4byte 0x00007FFF
_08133760:
	.4byte 0x01000200
_08133764:
	.4byte gUnknown_03002230
_08133768:
	.4byte 0x00000CF8
_0813376C:
	.4byte 0x00000CFA
_08133770:
	.4byte 0x000009E8
	THUMB_FUNC_END sub_0813370C

	THUMB_FUNC_START sub_08133774
sub_08133774: @ 0x08133774
	ldr r0, _081337B4  @ =gUnknown_02000C20
	mov r1, #0
	strh r1, [r0]
	add r0, r0, #2
	strh r1, [r0]
	add r0, r0, #2
	strh r1, [r0]
	add r0, r0, #2
	strh r1, [r0]
	add r0, r0, #2
	strh r1, [r0]
	add r0, r0, #2
	strh r1, [r0]
	add r0, r0, #2
	strh r1, [r0]
	add r0, r0, #2
	strh r1, [r0]
	ldr r1, _081337B8  @ =gUnknown_03002230
	ldr r0, _081337BC  @ =0x00000CF8
	add r2, r1, r0
	mov r0, #0
	strh r0, [r2]
	ldr r0, _081337C0  @ =0x00000CFA
	add r2, r1, r0
	mov r0, #2
	strh r0, [r2]
	ldr r0, _081337C4  @ =0x0000099B
	add r1, r1, r0
	mov r0, #1
	strb r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_081337B4:
	.4byte gUnknown_02000C20
_081337B8:
	.4byte gUnknown_03002230
_081337BC:
	.4byte 0x00000CF8
_081337C0:
	.4byte 0x00000CFA
_081337C4:
	.4byte 0x0000099B
	THUMB_FUNC_END sub_08133774

	THUMB_FUNC_START sub_081337C8
sub_081337C8: @ 0x081337C8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	lsl r1, r1, #24
	lsr r4, r1, #24
	ldr r0, _081337F8  @ =gUnknown_03002230
	ldr r2, _081337FC  @ =0x00001644
	add r1, r0, r2
	ldrb r2, [r1]
	cmp r2, #0
	beq _08133816
	ldr r5, _08133800  @ =0x000009AD
	add r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08133816
	sub r2, r2, #1
	strb r2, [r1]
	lsl r0, r2, #24
	cmp r0, #0
	bne _08133804
	bl sub_08132448
	b _08133816
_081337F8:
	.4byte gUnknown_03002230
_081337FC:
	.4byte 0x00001644
_08133800:
	.4byte 0x000009AD
_08133804:
	lsl r0, r2, #24
	lsr r0, r0, #24
	cmp r0, r4
	bcc _08133816
	and r3, r3, r2
	cmp r3, #0
	bne _08133816
	bl sub_0813215C
_08133816:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_081337C8

	THUMB_FUNC_START sub_0813381C
sub_0813381C: @ 0x0813381C
	push {lr}
	ldr r0, _0813383C  @ =gUnknown_020008F6
	ldrh r0, [r0]
	bl sub_08131F24
	ldr r1, _08133840  @ =gUnknown_02000CF6
	strh r0, [r1]
	ldr r0, _08133844  @ =gUnknown_020008F8
	ldrh r0, [r0]
	bl sub_08131F24
	ldr r1, _08133848  @ =gUnknown_02000CF8
	strh r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0813383C:
	.4byte gUnknown_020008F6
_08133840:
	.4byte gUnknown_02000CF6
_08133844:
	.4byte gUnknown_020008F8
_08133848:
	.4byte gUnknown_02000CF8
	THUMB_FUNC_END sub_0813381C

	THUMB_FUNC_START sub_0813384C
sub_0813384C: @ 0x0813384C
	ldr r1, _08133860  @ =gUnknown_02000CF6
	ldr r0, _08133864  @ =gUnknown_020008F6
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _08133868  @ =gUnknown_020008F8
	ldrh r0, [r0]
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08133860:
	.4byte gUnknown_02000CF6
_08133864:
	.4byte gUnknown_020008F6
_08133868:
	.4byte gUnknown_020008F8
	THUMB_FUNC_END sub_0813384C

	THUMB_FUNC_START sub_0813386C
sub_0813386C: @ 0x0813386C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r1, _08133918  @ =gUnknown_03002230
	ldr r3, _0813391C  @ =0x00000968
	add r2, r1, r3
	mov r3, #0
	strh r0, [r2]
	ldr r4, _08133920  @ =0x00000DB8
	add r6, r1, r4
	strb r3, [r6]
	ldr r0, _08133924  @ =0x000009C6
	add r2, r1, r0
	ldrh r0, [r2]
	add r5, r1, #0
	cmp r0, #127
	bls _08133890
	b _08133994
_08133890:
	ldr r1, _08133928  @ =gUnknown_0822C624
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	ldr r0, _0813392C  @ =0x0000FFFF
	cmp r1, r0
	beq _08133994
	mov r12, r5
	add r3, r2, #0
	ldr r1, _08133930  @ =0x0000178A
	add r7, r5, r1
	mov r8, r5
_081338AA:
	ldr r0, _0813391C  @ =0x00000968
	add r0, r0, r12
	mov r4, #0
	ldrsh r2, [r0, r4]
	ldrh r1, [r3]
	ldr r4, _08133934  @ =0x00007FFF
	add r0, r4, #0
	and r0, r0, r1
	cmp r2, r0
	bne _0813398A
	ldrh r4, [r3, #2]
	cmp r4, #0
	beq _081338D0
	cmp r4, #127
	bgt _081338D4
	ldrb r1, [r6]
	add r0, r4, #0
	orr r0, r0, r1
	strb r0, [r6]
_081338D0:
	cmp r4, #127
	ble _08133978
_081338D4:
	ldr r0, _08133920  @ =0x00000DB8
	add r3, r5, r0
	mov r0, #255
	strb r0, [r3]
	cmp r4, #132
	beq _08133948
	cmp r4, #130
	beq _08133940
	ldr r1, _08133924  @ =0x000009C6
	add r0, r5, r1
	ldrh r2, [r0]
	ldr r1, _08133938  @ =gUnknown_02002280
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08133948
	cmp r2, #91
	bne _08133940
	ldr r1, _0813393C  @ =0x00001663
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #13
	beq _08133940
	ldrb r1, [r7]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _081339AA
	mov r0, #4
	strb r0, [r3]
	b _081339AA
	.byte 0x00
	.byte 0x00
_08133918:
	.4byte gUnknown_03002230
_0813391C:
	.4byte 0x00000968
_08133920:
	.4byte 0x00000DB8
_08133924:
	.4byte 0x000009C6
_08133928:
	.4byte gUnknown_0822C624
_0813392C:
	.4byte 0x0000FFFF
_08133930:
	.4byte 0x0000178A
_08133934:
	.4byte 0x00007FFF
_08133938:
	.4byte gUnknown_02002280
_0813393C:
	.4byte 0x00001663
_08133940:
	mov r0, #123
	ldr r1, _0813396C  @ =gUnknown_03002734
	bl sub_0812A324
_08133948:
	ldr r1, _08133970  @ =gUnknown_0822C824
	mov r0, #15
	and r4, r4, r0
	asr r0, r4, #1
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08133974  @ =0x0000097C
	add r0, r0, r8
	strh r1, [r0]
	ldrb r1, [r7]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _081339AA
	mov r0, #4
	strb r0, [r6]
	b _081339AA
_0813396C:
	.4byte gUnknown_03002734
_08133970:
	.4byte gUnknown_0822C824
_08133974:
	.4byte 0x0000097C
_08133978:
	ldrb r1, [r7]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08133986
	mov r0, #4
	strb r0, [r6]
_08133986:
	mov r0, #1
	b _081339AC
_0813398A:
	add r3, r3, #4
	ldrh r1, [r3]
	ldr r0, _081339B8  @ =0x0000FFFF
	cmp r1, r0
	bne _081338AA
_08133994:
	ldr r3, _081339BC  @ =0x0000178A
	add r0, r5, r3
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _081339AA
	ldr r4, _081339C0  @ =0x00000DB8
	add r1, r5, r4
	mov r0, #4
	strb r0, [r1]
_081339AA:
	mov r0, #0
_081339AC:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_081339B8:
	.4byte 0x0000FFFF
_081339BC:
	.4byte 0x0000178A
_081339C0:
	.4byte 0x00000DB8
	THUMB_FUNC_END sub_0813386C

	.INCBIN "baserom.gba", 0x1339C4, 0x134028-0x1339C4

	THUMB_FUNC_START sub_08134028
sub_08134028: @ 0x08134028
	ldr r0, _081342D4  @ =gUnknown_03007FF0
	ldr r0, [r0]
	ldr r2, _081342D8  @ =0x68736D53
	ldr r3, [r0]
	sub r3, r3, r2
	cmp r3, #1
	bhi _08134068
	ldrb r1, [r0, #4]
	sub r1, r1, #1
	strb r1, [r0, #4]
	bgt _08134068
	ldrb r1, [r0, #11]
	strb r1, [r0, #4]
	ldr r2, _0813406C  @ =0x040000BC
	ldr r1, [r2, #8]
	lsl r1, r1, #7
	bcc _0813404E
	ldr r1, _08134070  @ =0x84400004
	str r1, [r2, #8]
_0813404E:
	ldr r1, [r2, #20]
	lsl r1, r1, #7
	bcc _08134058
	ldr r1, _08134070  @ =0x84400004
	str r1, [r2, #20]
_08134058:
	mov r1, #4
	lsl r1, r1, #8
	strh r1, [r2, #10]
	strh r1, [r2, #22]
	mov r1, #182
	lsl r1, r1, #8
	strh r1, [r2, #10]
	strh r1, [r2, #22]
_08134068:
	bx lr
	.byte 0x00
	.byte 0x00
_0813406C:
	.4byte 0x040000BC
_08134070:
	.4byte 0x84400004
	THUMB_FUNC_END sub_08134028

	THUMB_FUNC_START sub_08134074
sub_08134074: @ 0x08134074
	ldr r2, _081342D8  @ =0x68736D53
	ldr r3, [r0, #52]
	cmp r2, r3
	beq _0813407E
	bx lr
_0813407E:
	add r3, r3, #1
	str r3, [r0, #52]
	push {r0,lr}
	ldr r3, [r0, #56]
	cmp r3, #0
	beq _08134090
	ldr r0, [r0, #60]
	bl 0x081342CC
_08134090:
	pop {r0}
	push {r4-r7}
	mov r4, r8
	mov r5, r9
	mov r6, r10
	mov r7, r11
	push {r4-r7}
	add r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _081340A8
	b _081342BC
_081340A8:
	ldr r0, _081342D4  @ =gUnknown_03007FF0
	ldr r0, [r0]
	mov r8, r0
	add r0, r7, #0
	bl 0x08134F60
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _081340BC
	b _081342BC
_081340BC:
	ldrh r0, [r7, #34]
	ldrh r1, [r7, #32]
	add r0, r0, r1
	b _0813420C
_081340C4:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #44]
	mov r3, #1
	mov r4, #0
_081340CC:
	ldrb r0, [r5]
	mov r1, #128
	tst r1, r0
	bne _081340D6
	b _081341E8
_081340D6:
	mov r10, r3
	orr r4, r4, r3
	mov r11, r4
	ldr r4, [r5, #32]
	cmp r4, #0
	beq _0813410A
_081340E2:
	ldrb r1, [r4]
	mov r0, #199
	tst r0, r1
	beq _081340FE
	ldrb r0, [r4, #16]
	cmp r0, #0
	beq _08134104
	sub r0, r0, #1
	strb r0, [r4, #16]
	bne _08134104
	mov r0, #64
	orr r1, r1, r0
	strb r1, [r4]
	b _08134104
_081340FE:
	add r0, r4, #0
	bl 0x08134A5C
_08134104:
	ldr r4, [r4, #52]
	cmp r4, #0
	bne _081340E2
_0813410A:
	ldrb r3, [r5]
	mov r0, #64
	tst r0, r3
	beq _08134188
	add r0, r5, #0
	bl 0x08134A70
	mov r0, #128
	strb r0, [r5]
	mov r0, #2
	strb r0, [r5, #15]
	mov r0, #64
	strb r0, [r5, #19]
	mov r0, #22
	strb r0, [r5, #25]
	mov r0, #1
	add r1, r5, #6
	strb r0, [r1, #30]
	b _08134188
_08134130:
	ldr r2, [r5, #64]
	ldrb r1, [r2]
	cmp r1, #128
	bcs _0813413C
	ldrb r1, [r5, #7]
	b _08134146
_0813413C:
	add r2, r2, #1
	str r2, [r5, #64]
	cmp r1, #189
	bcc _08134146
	strb r1, [r5, #7]
_08134146:
	cmp r1, #207
	bcc _0813415C
	mov r0, r8
	ldr r3, [r0, #56]
	add r0, r1, #0
	sub r0, r0, #207
	add r1, r7, #0
	add r2, r5, #0
	bl 0x081342CC
	b _08134188
_0813415C:
	cmp r1, #176
	bls _0813417E
	add r0, r1, #0
	sub r0, r0, #177
	strb r0, [r7, #10]
	mov r3, r8
	ldr r3, [r3, #52]
	lsl r0, r0, #2
	ldr r3, [r3, r0]
	add r0, r7, #0
	add r1, r5, #0
	bl 0x081342CC
	ldrb r0, [r5]
	cmp r0, #0
	beq _081341E4
	b _08134188
_0813417E:
	ldr r0, _081342D0  @ =gUnknown_083C28C8
	sub r1, r1, #128
	add r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_08134188:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08134130
	sub r0, r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #25]
	cmp r1, #0
	beq _081341E4
	ldrb r0, [r5, #23]
	cmp r0, #0
	beq _081341E4
	ldrb r0, [r5, #28]
	cmp r0, #0
	beq _081341AA
	sub r0, r0, #1
	strb r0, [r5, #28]
	b _081341E4
_081341AA:
	ldrb r0, [r5, #26]
	add r0, r0, r1
	strb r0, [r5, #26]
	add r1, r0, #0
	sub r0, r0, #64
	lsl r0, r0, #24
	bpl _081341BE
	lsl r2, r1, #24
	asr r2, r2, #24
	b _081341C2
_081341BE:
	mov r0, #128
	sub r2, r0, r1
_081341C2:
	ldrb r0, [r5, #23]
	mul r0, r2, r0
	asr r2, r0, #6
	ldrb r0, [r5, #22]
	eor r0, r0, r2
	lsl r0, r0, #24
	beq _081341E4
	strb r2, [r5, #22]
	ldrb r0, [r5]
	ldrb r1, [r5, #24]
	cmp r1, #0
	bne _081341DE
	mov r1, #12
	b _081341E0
_081341DE:
	mov r1, #3
_081341E0:
	orr r0, r0, r1
	strb r0, [r5]
_081341E4:
	mov r3, r10
	mov r4, r11
_081341E8:
	sub r6, r6, #1
	ble _081341F4
	mov r0, #80
	add r5, r5, r0
	lsl r3, r3, #1
	b _081340CC
_081341F4:
	ldr r0, [r7, #12]
	add r0, r0, #1
	str r0, [r7, #12]
	cmp r4, #0
	bne _08134206
	mov r0, #128
	lsl r0, r0, #24
	str r0, [r7, #4]
	b _081342BC
_08134206:
	str r4, [r7, #4]
	ldrh r0, [r7, #34]
	sub r0, r0, #150
_0813420C:
	strh r0, [r7, #34]
	cmp r0, #150
	bcc _08134214
	b _081340C4
_08134214:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #44]
_08134218:
	ldrb r0, [r5]
	mov r1, #128
	tst r1, r0
	beq _081342B2
	mov r1, #15
	tst r1, r0
	beq _081342B2
	mov r9, r2
	add r0, r7, #0
	add r1, r5, #0
	bl 0x08135028
	ldr r4, [r5, #32]
	cmp r4, #0
	beq _081342A8
_08134236:
	ldrb r1, [r4]
	mov r0, #199
	tst r0, r1
	bne _08134246
	add r0, r4, #0
	bl 0x08134A5C
	b _081342A2
_08134246:
	ldrb r0, [r4, #1]
	mov r6, #7
	and r6, r6, r0
	ldrb r3, [r5]
	mov r0, #3
	tst r0, r3
	beq _08134264
	bl 0x08134320
	cmp r6, #0
	beq _08134264
	ldrb r0, [r4, #29]
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #29]
_08134264:
	ldrb r3, [r5]
	mov r0, #12
	tst r0, r3
	beq _081342A2
	ldrb r1, [r4, #8]
	mov r0, #8
	ldrsb r0, [r5, r0]
	add r2, r1, r0
	bpl _08134278
	mov r2, #0
_08134278:
	cmp r6, #0
	beq _08134296
	mov r0, r8
	ldr r3, [r0, #48]
	add r1, r2, #0
	ldrb r2, [r5, #9]
	add r0, r6, #0
	bl 0x081342CC
	str r0, [r4, #32]
	ldrb r0, [r4, #29]
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r4, #29]
	b _081342A2
_08134296:
	add r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #36]
	bl 0x081345E0
	str r0, [r4, #32]
_081342A2:
	ldr r4, [r4, #52]
	cmp r4, #0
	bne _08134236
_081342A8:
	ldrb r0, [r5]
	mov r1, #240
	and r0, r0, r1
	strb r0, [r5]
	mov r2, r9
_081342B2:
	sub r2, r2, #1
	ble _081342BC
	mov r0, #80
	add r5, r5, r0
	bgt _08134218
_081342BC:
	ldr r0, _081342D8  @ =0x68736D53
	str r0, [r7, #52]
	pop {r0-r7}
	mov r8, r0
	mov r9, r1
	mov r10, r2
	mov r11, r3
	pop {r3}
	bx r3
	.byte 0x00
	.byte 0x00
_081342D0:
	.4byte gUnknown_083C28C8
_081342D4:
	.4byte gUnknown_03007FF0
_081342D8:
	.4byte 0x68736D53
	THUMB_FUNC_END sub_08134074

	THUMB_FUNC_START sub_081342DC
sub_081342DC: @ 0x081342DC
	push {r4-r6,lr}
	add r5, r1, #0
	ldrb r1, [r5]
	mov r0, #128
	tst r0, r1
	beq _08134314
	ldr r4, [r5, #32]
	cmp r4, #0
	beq _08134312
	mov r6, #0
_081342F0:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0813430A
	ldrb r0, [r4, #1]
	mov r3, #7
	and r0, r0, r3
	beq _08134308
	ldr r3, _0813431C  @ =gUnknown_03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #44]
	bl 0x081342CC
_08134308:
	strb r6, [r4]
_0813430A:
	str r6, [r4, #44]
	ldr r4, [r4, #52]
	cmp r4, #0
	bne _081342F0
_08134312:
	str r4, [r5, #32]
_08134314:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0813431C:
	.4byte gUnknown_03007FF0
	THUMB_FUNC_END sub_081342DC

	THUMB_FUNC_START sub_08134320
sub_08134320: @ 0x08134320
	ldrb r1, [r4, #18]
	mov r0, #20
	ldrsb r2, [r4, r0]
	mov r3, #128
	add r3, r3, r2
	mul r3, r1, r3
	ldrb r0, [r5, #16]
	mul r0, r3, r0
	asr r0, r0, #14
	cmp r0, #255
	bls _08134338
	mov r0, #255
_08134338:
	strb r0, [r4, #2]
	mov r3, #127
	sub r3, r3, r2
	mul r3, r1, r3
	ldrb r0, [r5, #17]
	mul r0, r3, r0
	asr r0, r0, #14
	cmp r0, #255
	bls _0813434C
	mov r0, #255
_0813434C:
	strb r0, [r4, #3]
	bx lr
	THUMB_FUNC_END sub_08134320

	THUMB_FUNC_START sub_08134350
sub_08134350: @ 0x08134350
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r10
	mov r7, r11
	push {r4-r7}
	sub sp, sp, #24
	str r1, [sp]
	add r5, r2, #0
	ldr r1, _08134548  @ =gUnknown_03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _0813454C  @ =gUnknown_083C28C8
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #64]
	ldrb r0, [r3]
	cmp r0, #128
	bcs _08134396
	strb r0, [r5, #5]
	add r3, r3, #1
	ldrb r0, [r3]
	cmp r0, #128
	bcs _08134394
	strb r0, [r5, #6]
	add r3, r3, #1
	ldrb r0, [r3]
	cmp r0, #128
	bcs _08134394
	ldrb r1, [r5, #4]
	add r1, r1, r0
	strb r1, [r5, #4]
	add r3, r3, #1
_08134394:
	str r3, [r5, #64]
_08134396:
	mov r0, #0
	str r0, [sp, #20]
	add r4, r5, #0
	add r4, r4, #36
	ldrb r2, [r4]
	mov r0, #192
	tst r0, r2
	beq _081343E8
	ldrb r3, [r5, #5]
	mov r0, #64
	tst r0, r2
	beq _081343B6
	ldr r1, [r5, #44]
	add r1, r1, r3
	ldrb r0, [r1]
	b _081343B8
_081343B6:
	add r0, r3, #0
_081343B8:
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #2
	ldr r0, [r5, #40]
	add r1, r1, r0
	mov r9, r1
	mov r6, r9
	ldrb r1, [r6]
	mov r0, #192
	tst r0, r1
	beq _081343D0
	b _08134536
_081343D0:
	mov r0, #128
	tst r0, r2
	beq _081343EC
	ldrb r1, [r6, #3]
	mov r0, #128
	tst r0, r1
	beq _081343E4
	sub r1, r1, #192
	lsl r1, r1, #1
	str r1, [sp, #20]
_081343E4:
	ldrb r3, [r6, #1]
	b _081343EC
_081343E8:
	mov r9, r4
	ldrb r3, [r5, #5]
_081343EC:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #29]
	add r0, r0, r1
	cmp r0, #255
	bls _081343FC
	mov r0, #255
_081343FC:
	str r0, [sp, #16]
	mov r6, r9
	ldrb r0, [r6]
	mov r6, #7
	and r6, r6, r0
	str r6, [sp, #12]
	beq _0813443C
	ldr r0, [sp, #4]
	ldr r4, [r0, #28]
	cmp r4, #0
	bne _08134414
	b _08134536
_08134414:
	sub r6, r6, #1
	lsl r0, r6, #6
	add r4, r4, r0
	ldrb r1, [r4]
	mov r0, #199
	tst r0, r1
	beq _08134490
	mov r0, #64
	tst r0, r1
	bne _08134490
	ldrb r1, [r4, #19]
	ldr r0, [sp, #16]
	cmp r1, r0
	bcc _08134490
	beq _08134434
	b _08134536
_08134434:
	ldr r0, [r4, #44]
	cmp r0, r5
	bcs _08134490
	b _08134536
_0813443C:
	ldr r6, [sp, #16]
	add r7, r5, #0
	mov r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	add r4, r4, #80
_0813444A:
	ldrb r1, [r4]
	mov r0, #199
	tst r0, r1
	beq _08134490
	mov r0, #64
	tst r0, r1
	beq _08134464
	cmp r2, #0
	bne _08134468
	add r2, r2, #1
	ldrb r6, [r4, #19]
	ldr r7, [r4, #44]
	b _08134482
_08134464:
	cmp r2, #0
	bne _08134484
_08134468:
	ldrb r0, [r4, #19]
	cmp r0, r6
	bcs _08134474
	add r6, r0, #0
	ldr r7, [r4, #44]
	b _08134482
_08134474:
	bhi _08134484
	ldr r0, [r4, #44]
	cmp r0, r7
	bls _08134480
	add r7, r0, #0
	b _08134482
_08134480:
	bcc _08134484
_08134482:
	mov r8, r4
_08134484:
	add r4, r4, #64
	sub r3, r3, #1
	bgt _0813444A
	mov r4, r8
	cmp r4, #0
	beq _08134536
_08134490:
	add r0, r4, #0
	bl sub_08134A5C
	mov r1, #0
	str r1, [r4, #48]
	ldr r3, [r5, #32]
	str r3, [r4, #52]
	cmp r3, #0
	beq _081344A4
	str r4, [r3, #48]
_081344A4:
	str r4, [r5, #32]
	str r5, [r4, #44]
	ldrb r0, [r5, #27]
	strb r0, [r5, #28]
	cmp r0, r1
	beq _081344B6
	add r1, r5, #0
	bl sub_08134590
_081344B6:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_08135028
	ldr r0, [r5, #4]
	str r0, [r4, #16]
	ldr r0, [sp, #16]
	strb r0, [r4, #19]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #20]
	strb r0, [r4, #20]
	mov r6, r9
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #36]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #30]
	strh r0, [r4, #12]
	bl sub_08134320
	ldrb r1, [r4, #8]
	mov r0, #8
	ldrsb r0, [r5, r0]
	add r3, r1, r0
	bpl _081344F0
	mov r3, #0
_081344F0:
	ldr r6, [sp, #12]
	cmp r6, #0
	beq _0813451E
	mov r6, r9
	ldrb r0, [r6, #2]
	strb r0, [r4, #30]
	ldrb r1, [r6, #3]
	mov r0, #128
	tst r0, r1
	bne _0813450A
	mov r0, #112
	tst r0, r1
	bne _0813450C
_0813450A:
	mov r1, #8
_0813450C:
	strb r1, [r4, #31]
	ldrb r2, [r5, #9]
	add r1, r3, #0
	ldr r0, [sp, #12]
	ldr r3, [sp, #4]
	ldr r3, [r3, #48]
	bl 0x081342CC
	b _08134528
_0813451E:
	ldrb r2, [r5, #9]
	add r1, r3, #0
	add r0, r7, #0
	bl 0x081345E0
_08134528:
	str r0, [r4, #32]
	mov r0, #128
	strb r0, [r4]
	ldrb r1, [r5]
	mov r0, #240
	and r0, r0, r1
	strb r0, [r5]
_08134536:
	add sp, sp, #24
	pop {r0-r7}
	mov r8, r0
	mov r9, r1
	mov r10, r2
	mov r11, r3
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08134548:
	.4byte gUnknown_03007FF0
_0813454C:
	.4byte gUnknown_083C28C8
	THUMB_FUNC_END sub_08134350

	THUMB_FUNC_START sub_08134550
sub_08134550: @ 0x08134550
	push {r4,r5}
	ldr r2, [r1, #64]
	ldrb r3, [r2]
	cmp r3, #128
	bcs _08134562
	strb r3, [r1, #5]
	add r2, r2, #1
	str r2, [r1, #64]
	b _08134564
_08134562:
	ldrb r3, [r1, #5]
_08134564:
	ldr r1, [r1, #32]
	cmp r1, #0
	beq _0813458C
	mov r4, #131
	mov r5, #64
_0813456E:
	ldrb r2, [r1]
	tst r2, r4
	beq _08134586
	tst r2, r5
	bne _08134586
	ldrb r0, [r1, #17]
	cmp r0, r3
	bne _08134586
	mov r0, #64
	orr r2, r2, r0
	strb r2, [r1]
	b _0813458C
_08134586:
	ldr r1, [r1, #52]
	cmp r1, #0
	bne _0813456E
_0813458C:
	pop {r4,r5}
	bx lr
	THUMB_FUNC_END sub_08134550

	THUMB_FUNC_START sub_08134590
sub_08134590: @ 0x08134590
	mov r2, #0
	strb r2, [r1, #22]
	strb r2, [r1, #26]
	ldrb r2, [r1, #24]
	cmp r2, #0
	bne _081345A0
	mov r2, #12
	b _081345A2
_081345A0:
	mov r2, #3
_081345A2:
	ldrb r3, [r1]
	orr r3, r3, r2
	strb r3, [r1]
	bx lr
	THUMB_FUNC_END sub_08134590

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_081345AC
sub_081345AC: @ 0x081345AC
	ldr r2, [r1, #64]
	add r3, r2, #1
	str r3, [r1, #64]
	ldrb r3, [r2]
	bx lr
	THUMB_FUNC_END sub_081345AC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_081345B8
sub_081345B8: @ 0x081345B8
	mov r12, lr
	bl sub_081345AC
	strb r3, [r1, #25]
	cmp r3, #0
	bne _081345C8
	bl sub_08134590
_081345C8:
	bx r12
	.byte 0x00
	.byte 0x00
	.byte 0xF4
	.byte 0x46
	.byte 0xFF
	.byte 0xF7
	.byte 0xED
	.byte 0xFF
	.byte 0xCB
	.byte 0x75
	.byte 0x00
	.byte 0x2B
	.byte 0x01
	.byte 0xD1
	.byte 0xFF
	.byte 0xF7
	.byte 0xDA
	.byte 0xFF
	.byte 0x60
	.byte 0x47
	.byte 0x00
	.byte 0x00
	.byte 0xF0
	.byte 0xB5
	.byte 0x84
	.byte 0x46
	.byte 0x09
	.byte 0x06
	.byte 0x0E
	.byte 0x0E
	.byte 0x17
	.byte 0x06
	.byte 0xB2
	.byte 0x2E
	.byte 0x02
	.byte 0xD9
	.byte 0xB2
	.byte 0x26
	.byte 0xFF
	.byte 0x27
	.byte 0x3F
	.byte 0x06
	.byte 0x11
	.byte 0x4B
	.byte 0xF0
	.byte 0x18
	.byte 0x05
	.byte 0x78
	.byte 0x11
	.byte 0x4C
	.byte 0x0F
	.byte 0x22
	.byte 0x28
	.byte 0x1C
	.byte 0x10
	.byte 0x40
	.byte 0x80
	.byte 0x00
	.byte 0x00
	.byte 0x19
	.byte 0x29
	.byte 0x09
	.byte 0x05
	.byte 0x68
	.byte 0xCD
	.byte 0x40
	.byte 0x70
	.byte 0x1C
	.byte 0xC0
	.byte 0x18
	.byte 0x01
	.byte 0x78
	.byte 0x08
	.byte 0x1C
	.byte 0x10
	.byte 0x40
	.byte 0x80
	.byte 0x00
	.byte 0x00
	.byte 0x19
	.byte 0x09
	.byte 0x09
	.byte 0x00
	.byte 0x68
	.byte 0xC8
	.byte 0x40
	.byte 0x61
	.byte 0x46
	.byte 0x4C
	.byte 0x68
	.byte 0x40
	.byte 0x1B
	.byte 0x39
	.byte 0x1C
	.byte 0xFF
	.byte 0xF7
	.byte 0xCC
	.byte 0xF9
	.byte 0x01
	.byte 0x1C
	.byte 0x69
	.byte 0x18
	.byte 0x20
	.byte 0x1C
	.byte 0xFF
	.byte 0xF7
	.byte 0xC7
	.byte 0xF9
	.byte 0xF0
	.byte 0xBC
	.byte 0x02
	.byte 0xBC
	.byte 0x08
	.byte 0x47
	THUMB_FUNC_END sub_081345B8

	THUMB_FUNC_START sub_0813463C
sub_0813463C: @ 0x0813463C
	mov r6, #228
	lsr r4, r7, #32
	mov r7, #152
	lsr r4, r7, #32
	bx lr
	THUMB_FUNC_END sub_0813463C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08134648
sub_08134648: @ 0x08134648
	add r2, r0, #0
	ldr r3, [r2, #52]
	ldr r0, _0813465C  @ =0x68736D53
	cmp r3, r0
	bne _0813465A
	ldr r0, [r2, #4]
	ldr r1, _08134660  @ =0x7FFFFFFF
	and r0, r0, r1
	str r0, [r2, #4]
_0813465A:
	bx lr
_0813465C:
	.4byte 0x68736D53
_08134660:
	.4byte 0x7FFFFFFF
	THUMB_FUNC_END sub_08134648

	THUMB_FUNC_START sub_08134664
sub_08134664: @ 0x08134664
	add r2, r0, #0
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, [r2, #52]
	ldr r0, _08134680  @ =0x68736D53
	cmp r3, r0
	bne _0813467C
	strh r1, [r2, #38]
	strh r1, [r2, #36]
	mov r0, #128
	lsl r0, r0, #1
	strh r0, [r2, #40]
_0813467C:
	bx lr
	.byte 0x00
	.byte 0x00
_08134680:
	.4byte 0x68736D53
	THUMB_FUNC_END sub_08134664

	THUMB_FUNC_START sub_08134684
sub_08134684: @ 0x08134684
	push {r4-r6,lr}
	ldr r0, _081346D8  @ =0x08133A59
	mov r1, #2
	neg r1, r1
	and r0, r0, r1
	ldr r1, _081346DC  @ =gUnknown_03006D18
	ldr r2, _081346E0  @ =0x04000100
	bl CpuSet
	ldr r0, _081346E4  @ =gUnknown_02030A80
	bl sub_08134A84
	ldr r0, _081346E8  @ =gUnknown_02031AC0
	bl sub_08134940
	ldr r0, _081346EC  @ =0x0093F800
	bl sub_08134C20
	ldr r0, _081346F0  @ =0x00000020
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #0
	beq _081346D2
	ldr r5, _081346F4  @ =gUnknown_083C3A3C
	add r6, r0, #0
_081346B6:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	add r0, r4, #0
	bl sub_08134DC4
	ldrh r0, [r5, #10]
	strb r0, [r4, #11]
	ldr r0, _081346F8  @ =gUnknown_020322C0
	str r0, [r4, #24]
	add r5, r5, #12
	sub r6, r6, #1
	cmp r6, #0
	bne _081346B6
_081346D2:
	pop {r4-r6}
	pop {r0}
	bx r0
_081346D8:
	.4byte 0x08133A59
_081346DC:
	.4byte gUnknown_03006D18
_081346E0:
	.4byte 0x04000100
_081346E4:
	.4byte gUnknown_02030A80
_081346E8:
	.4byte gUnknown_02031AC0
_081346EC:
	.4byte 0x0093F800
_081346F0:
	.4byte 0x00000020
_081346F4:
	.4byte gUnknown_083C3A3C
_081346F8:
	.4byte gUnknown_020322C0
	THUMB_FUNC_END sub_08134684

	THUMB_FUNC_START sub_081346FC
sub_081346FC: @ 0x081346FC
	push {lr}
	bl 0x081339D4
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_081346FC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08134708
sub_08134708: @ 0x08134708
	push {lr}
	lsl r0, r0, #16
	ldr r2, _0813472C  @ =gUnknown_083C3A3C
	ldr r1, _08134730  @ =gUnknown_083C3BBC
	lsr r0, r0, #13
	add r0, r0, r1
	ldrh r3, [r0, #4]
	lsl r1, r3, #1
	add r1, r1, r3
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0
	bl sub_08134E3C
	pop {r0}
	bx r0
_0813472C:
	.4byte gUnknown_083C3A3C
_08134730:
	.4byte gUnknown_083C3BBC
	THUMB_FUNC_END sub_08134708

	THUMB_FUNC_START sub_08134734
sub_08134734: @ 0x08134734
	push {lr}
	lsl r0, r0, #16
	ldr r2, _08134760  @ =gUnknown_083C3A3C
	ldr r1, _08134764  @ =gUnknown_083C3BBC
	lsr r0, r0, #13
	add r0, r0, r1
	ldrh r3, [r0, #4]
	lsl r1, r3, #1
	add r1, r1, r3
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _08134768
	add r0, r1, #0
	add r1, r2, #0
	bl sub_08134E3C
	b _0813477C
	.byte 0x00
	.byte 0x00
_08134760:
	.4byte gUnknown_083C3A3C
_08134764:
	.4byte gUnknown_083C3BBC
_08134768:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08134774
	cmp r2, #0
	bge _0813477C
_08134774:
	add r0, r1, #0
	add r1, r3, #0
	bl sub_08134E3C
_0813477C:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08134734

	THUMB_FUNC_START sub_08134780
sub_08134780: @ 0x08134780
	push {lr}
	lsl r0, r0, #16
	ldr r2, _081347AC  @ =gUnknown_083C3A3C
	ldr r1, _081347B0  @ =gUnknown_083C3BBC
	lsr r0, r0, #13
	add r0, r0, r1
	ldrh r3, [r0, #4]
	lsl r1, r3, #1
	add r1, r1, r3
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _081347B4
	add r0, r1, #0
	add r1, r2, #0
	bl sub_08134E3C
	b _081347D0
	.byte 0x00
	.byte 0x00
_081347AC:
	.4byte gUnknown_083C3A3C
_081347B0:
	.4byte gUnknown_083C3BBC
_081347B4:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _081347C6
	add r0, r1, #0
	add r1, r3, #0
	bl sub_08134E3C
	b _081347D0
_081347C6:
	cmp r2, #0
	bge _081347D0
	add r0, r1, #0
	bl sub_08134648
_081347D0:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08134780

	THUMB_FUNC_START sub_081347D4
sub_081347D4: @ 0x081347D4
	push {lr}
	lsl r0, r0, #16
	ldr r2, _08134800  @ =gUnknown_083C3A3C
	ldr r1, _08134804  @ =gUnknown_083C3BBC
	lsr r0, r0, #13
	add r0, r0, r1
	ldrh r3, [r0, #4]
	lsl r1, r3, #1
	add r1, r1, r3
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _081347FA
	add r0, r2, #0
	bl sub_08134F20
_081347FA:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08134800:
	.4byte gUnknown_083C3A3C
_08134804:
	.4byte gUnknown_083C3BBC
	THUMB_FUNC_END sub_081347D4

	THUMB_FUNC_START sub_08134808
sub_08134808: @ 0x08134808
	push {lr}
	lsl r0, r0, #16
	ldr r2, _08134834  @ =gUnknown_083C3A3C
	ldr r1, _08134838  @ =gUnknown_083C3BBC
	lsr r0, r0, #13
	add r0, r0, r1
	ldrh r3, [r0, #4]
	lsl r1, r3, #1
	add r1, r1, r3
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0813482E
	add r0, r2, #0
	bl sub_08134648
_0813482E:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08134834:
	.4byte gUnknown_083C3A3C
_08134838:
	.4byte gUnknown_083C3BBC
	THUMB_FUNC_END sub_08134808

	THUMB_FUNC_START sub_0813483C
sub_0813483C: @ 0x0813483C
	push {r4,r5,lr}
	ldr r0, _08134860  @ =0x00000020
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #0
	beq _0813485A
	ldr r5, _08134864  @ =gUnknown_083C3A3C
	add r4, r0, #0
_0813484C:
	ldr r0, [r5]
	bl sub_08134F20
	add r5, r5, #12
	sub r4, r4, #1
	cmp r4, #0
	bne _0813484C
_0813485A:
	pop {r4,r5}
	pop {r0}
	bx r0
_08134860:
	.4byte 0x00000020
_08134864:
	.4byte gUnknown_083C3A3C
	THUMB_FUNC_END sub_0813483C

	THUMB_FUNC_START sub_08134868
sub_08134868: @ 0x08134868
	push {lr}
	bl sub_08134648
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08134868

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08134874
sub_08134874: @ 0x08134874
	push {r4,r5,lr}
	ldr r0, _08134898  @ =0x00000020
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #0
	beq _08134892
	ldr r5, _0813489C  @ =gUnknown_083C3A3C
	add r4, r0, #0
_08134884:
	ldr r0, [r5]
	bl sub_08134648
	add r5, r5, #12
	sub r4, r4, #1
	cmp r4, #0
	bne _08134884
_08134892:
	pop {r4,r5}
	pop {r0}
	bx r0
_08134898:
	.4byte 0x00000020
_0813489C:
	.4byte gUnknown_083C3A3C
	THUMB_FUNC_END sub_08134874

	THUMB_FUNC_START sub_081348A0
sub_081348A0: @ 0x081348A0
	push {lr}
	lsl r1, r1, #16
	lsr r1, r1, #16
	bl sub_08134664
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_081348A0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_081348B0
sub_081348B0: @ 0x081348B0
	add r2, r0, #0
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, [r2, #52]
	ldr r0, _081348C8  @ =0x68736D53
	cmp r3, r0
	bne _081348C6
	strh r1, [r2, #38]
	strh r1, [r2, #36]
	ldr r0, _081348CC  @ =0x00000101
	strh r0, [r2, #40]
_081348C6:
	bx lr
_081348C8:
	.4byte 0x68736D53
_081348CC:
	.4byte 0x00000101
	THUMB_FUNC_END sub_081348B0

	THUMB_FUNC_START sub_081348D0
sub_081348D0: @ 0x081348D0
	add r2, r0, #0
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, [r2, #52]
	ldr r0, _081348F0  @ =0x68736D53
	cmp r3, r0
	bne _081348EE
	strh r1, [r2, #38]
	strh r1, [r2, #36]
	mov r0, #2
	strh r0, [r2, #40]
	ldr r0, [r2, #4]
	ldr r1, _081348F4  @ =0x7FFFFFFF
	and r0, r0, r1
	str r0, [r2, #4]
_081348EE:
	bx lr
_081348F0:
	.4byte 0x68736D53
_081348F4:
	.4byte 0x7FFFFFFF
	THUMB_FUNC_END sub_081348D0

	THUMB_FUNC_START sub_081348F8
sub_081348F8: @ 0x081348F8
	push {r4-r7,lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #44]
	cmp r5, #0
	ble _0813493A
	mov r7, #128
_08134904:
	ldrb r1, [r4]
	add r0, r7, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08134932
	mov r6, #64
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08134932
	add r0, r4, #0
	bl sub_08134A70
	strb r7, [r4]
	mov r0, #2
	strb r0, [r4, #15]
	strb r6, [r4, #19]
	mov r0, #22
	strb r0, [r4, #25]
	add r1, r4, #0
	add r1, r1, #36
	mov r0, #1
	strb r0, [r1]
_08134932:
	sub r5, r5, #1
	add r4, r4, #80
	cmp r5, #0
	bgt _08134904
_0813493A:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_081348F8

	THUMB_FUNC_START sub_08134940
sub_08134940: @ 0x08134940
	push {r4-r6,lr}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r1, _08134A08  @ =0x04000084
	mov r0, #143
	strh r0, [r1]
	ldr r3, _08134A0C  @ =0x04000080
	mov r2, #0
	strh r2, [r3]
	ldr r0, _08134A10  @ =0x04000063
	mov r1, #8
	strb r1, [r0]
	add r0, r0, #6
	strb r1, [r0]
	add r0, r0, #16
	strb r1, [r0]
	sub r0, r0, #20
	mov r1, #128
	strb r1, [r0]
	add r0, r0, #8
	strb r1, [r0]
	add r0, r0, #16
	strb r1, [r0]
	sub r0, r0, #13
	strb r2, [r0]
	mov r0, #119
	strb r0, [r3]
	ldr r0, _08134A14  @ =gUnknown_03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _08134A18  @ =0x68736D53
	cmp r6, r0
	bne _08134A00
	add r0, r6, #1
	str r0, [r4]
	ldr r1, _08134A1C  @ =gUnknown_02031A30
	ldr r0, _08134A20  @ =0x081358FD
	str r0, [r1, #32]
	ldr r0, _08134A24  @ =0x081345B9
	str r0, [r1, #68]
	ldr r0, _08134A28  @ =0x081345CD
	str r0, [r1, #76]
	ldr r0, _08134A2C  @ =0x08135A55
	str r0, [r1, #112]
	ldr r0, _08134A30  @ =0x08134551
	str r0, [r1, #116]
	ldr r0, _08134A34  @ =0x08134B7D
	str r0, [r1, #120]
	ldr r0, _08134A38  @ =0x081342DD
	str r0, [r1, #124]
	add r2, r1, #0
	add r2, r2, #128
	ldr r0, _08134A3C  @ =0x08134F61
	str r0, [r2]
	add r1, r1, #132
	ldr r0, _08134A40  @ =0x08135029
	str r0, [r1]
	str r5, [r4, #28]
	ldr r0, _08134A44  @ =0x0813523D
	str r0, [r4, #40]
	ldr r0, _08134A48  @ =0x08135185
	str r0, [r4, #44]
	ldr r0, _08134A4C  @ =0x081350DD
	str r0, [r4, #48]
	ldr r0, _08134A50  @ =0x00000000
	mov r1, #0
	strb r0, [r4, #12]
	str r1, [sp]
	ldr r2, _08134A54  @ =0x05000040
	mov r0, sp
	add r1, r5, #0
	bl CpuSet
	mov r0, #1
	strb r0, [r5, #1]
	mov r0, #17
	strb r0, [r5, #28]
	add r1, r5, #0
	add r1, r1, #65
	mov r0, #2
	strb r0, [r1]
	add r1, r1, #27
	mov r0, #34
	strb r0, [r1]
	add r1, r1, #37
	mov r0, #3
	strb r0, [r1]
	add r1, r1, #27
	mov r0, #68
	strb r0, [r1]
	add r1, r1, #36
	mov r0, #4
	strb r0, [r1, #1]
	mov r0, #136
	strb r0, [r1, #28]
	str r6, [r4]
_08134A00:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_08134A08:
	.4byte 0x04000084
_08134A0C:
	.4byte 0x04000080
_08134A10:
	.4byte 0x04000063
_08134A14:
	.4byte gUnknown_03007FF0
_08134A18:
	.4byte 0x68736D53
_08134A1C:
	.4byte gUnknown_02031A30
_08134A20:
	.4byte 0x081358FD
_08134A24:
	.4byte 0x081345B9
_08134A28:
	.4byte 0x081345CD
_08134A2C:
	.4byte 0x08135A55
_08134A30:
	.4byte 0x08134551
_08134A34:
	.4byte 0x08134B7D
_08134A38:
	.4byte 0x081342DD
_08134A3C:
	.4byte 0x08134F61
_08134A40:
	.4byte 0x08135029
_08134A44:
	.4byte 0x0813523D
_08134A48:
	.4byte 0x08135185
_08134A4C:
	.4byte 0x081350DD
_08134A50:
	.4byte 0x00000000
_08134A54:
	.4byte 0x05000040
	THUMB_FUNC_END sub_08134940

	THUMB_FUNC_START sub_08134A58
sub_08134A58: @ 0x08134A58
	svc #42
	bx lr
	THUMB_FUNC_END sub_08134A58

	THUMB_FUNC_START sub_08134A5C
sub_08134A5C: @ 0x08134A5C
	push {lr}
	ldr r1, _08134A6C  @ =gUnknown_02031AB8
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08134A6C:
	.4byte gUnknown_02031AB8
	THUMB_FUNC_END sub_08134A5C

	THUMB_FUNC_START sub_08134A70
sub_08134A70: @ 0x08134A70
	push {lr}
	ldr r1, _08134A80  @ =gUnknown_02031ABC
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08134A80:
	.4byte gUnknown_02031ABC
	THUMB_FUNC_END sub_08134A70

	THUMB_FUNC_START sub_08134A84
sub_08134A84: @ 0x08134A84
	push {r4,r5,lr}
	sub sp, sp, #4
	add r5, r0, #0
	mov r3, #0
	str r3, [r5]
	ldr r1, _08134B3C  @ =0x040000C4
	ldr r0, [r1]
	mov r2, #128
	lsl r2, r2, #18
	and r0, r0, r2
	cmp r0, #0
	beq _08134AA0
	ldr r0, _08134B40  @ =0x84400004
	str r0, [r1]
_08134AA0:
	ldr r1, _08134B44  @ =0x040000D0
	ldr r0, [r1]
	and r0, r0, r2
	cmp r0, #0
	beq _08134AAE
	ldr r0, _08134B40  @ =0x84400004
	str r0, [r1]
_08134AAE:
	ldr r0, _08134B48  @ =0x040000C6
	mov r2, #128
	lsl r2, r2, #3
	add r1, r2, #0
	strh r1, [r0]
	add r0, r0, #12
	strh r1, [r0]
	ldr r1, _08134B4C  @ =0x04000084
	mov r0, #143
	strh r0, [r1]
	sub r1, r1, #2
	ldr r2, _08134B50  @ =0x0000A90E
	add r0, r2, #0
	strh r0, [r1]
	ldr r2, _08134B54  @ =0x04000089
	ldrb r1, [r2]
	mov r0, #63
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2]
	ldr r1, _08134B58  @ =0x040000BC
	mov r2, #212
	lsl r2, r2, #2
	add r0, r5, r2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08134B5C  @ =0x040000A0
	str r0, [r1]
	add r1, r1, #8
	mov r2, #152
	lsl r2, r2, #4
	add r0, r5, r2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08134B60  @ =0x040000A4
	str r0, [r1]
	ldr r0, _08134B64  @ =gUnknown_03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _08134B68  @ =0x050003EC
	mov r0, sp
	add r1, r5, #0
	bl CpuSet
	mov r0, #8
	strb r0, [r5, #6]
	mov r0, #15
	strb r0, [r5, #7]
	ldr r0, _08134B6C  @ =0x08134351
	str r0, [r5, #56]
	ldr r0, _08134B70  @ =0x08135B75
	str r0, [r5, #40]
	str r0, [r5, #44]
	str r0, [r5, #48]
	str r0, [r5, #60]
	ldr r4, _08134B74  @ =gUnknown_02031A30
	add r0, r4, #0
	bl 0x08133E64
	str r4, [r5, #52]
	mov r0, #128
	lsl r0, r0, #11
	bl sub_08134B7C
	ldr r0, _08134B78  @ =0x68736D53
	str r0, [r5]
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_08134B3C:
	.4byte 0x040000C4
_08134B40:
	.4byte 0x84400004
_08134B44:
	.4byte 0x040000D0
_08134B48:
	.4byte 0x040000C6
_08134B4C:
	.4byte 0x04000084
_08134B50:
	.4byte 0x0000A90E
_08134B54:
	.4byte 0x04000089
_08134B58:
	.4byte 0x040000BC
_08134B5C:
	.4byte 0x040000A0
_08134B60:
	.4byte 0x040000A4
_08134B64:
	.4byte gUnknown_03007FF0
_08134B68:
	.4byte 0x050003EC
_08134B6C:
	.4byte 0x08134351
_08134B70:
	.4byte 0x08135B75
_08134B74:
	.4byte gUnknown_02031A30
_08134B78:
	.4byte 0x68736D53
	THUMB_FUNC_END sub_08134A84

	THUMB_FUNC_START sub_08134B7C
sub_08134B7C: @ 0x08134B7C
	push {r4-r6,lr}
	add r2, r0, #0
	ldr r0, _08134BFC  @ =gUnknown_03007FF0
	ldr r4, [r0]
	mov r0, #240
	lsl r0, r0, #12
	and r0, r0, r2
	lsr r2, r0, #16
	mov r6, #0
	strb r2, [r4, #8]
	ldr r1, _08134C00  @ =gUnknown_083C27C8
	sub r0, r2, #1
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #16]
	mov r0, #198
	lsl r0, r0, #3
	add r1, r5, #0
	bl __divsi3
	strb r0, [r4, #11]
	ldr r0, _08134C04  @ =0x00091D1B
	mul r0, r5, r0
	ldr r1, _08134C08  @ =0x00001388
	add r0, r0, r1
	ldr r1, _08134C0C  @ =0x00002710
	bl __divsi3
	add r1, r0, #0
	str r1, [r4, #20]
	mov r0, #128
	lsl r0, r0, #17
	bl __divsi3
	add r0, r0, #1
	asr r0, r0, #1
	str r0, [r4, #24]
	ldr r0, _08134C10  @ =0x04000102
	strh r6, [r0]
	ldr r4, _08134C14  @ =0x04000100
	ldr r0, _08134C18  @ =0x00044940
	add r1, r5, #0
	bl __divsi3
	neg r0, r0
	strh r0, [r4]
	bl sub_08134D88
	ldr r1, _08134C1C  @ =0x04000006
_08134BE0:
	ldrb r0, [r1]
	cmp r0, #159
	beq _08134BE0
	ldr r1, _08134C1C  @ =0x04000006
_08134BE8:
	ldrb r0, [r1]
	cmp r0, #159
	bne _08134BE8
	ldr r1, _08134C10  @ =0x04000102
	mov r0, #128
	strh r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08134BFC:
	.4byte gUnknown_03007FF0
_08134C00:
	.4byte gUnknown_083C27C8
_08134C04:
	.4byte 0x00091D1B
_08134C08:
	.4byte 0x00001388
_08134C0C:
	.4byte 0x00002710
_08134C10:
	.4byte 0x04000102
_08134C14:
	.4byte 0x04000100
_08134C18:
	.4byte 0x00044940
_08134C1C:
	.4byte 0x04000006
	THUMB_FUNC_END sub_08134B7C

	THUMB_FUNC_START sub_08134C20
sub_08134C20: @ 0x08134C20
	push {r4,r5,lr}
	add r3, r0, #0
	ldr r0, _08134CAC  @ =gUnknown_03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08134CB0  @ =0x68736D53
	cmp r1, r0
	bne _08134CA6
	add r0, r1, #1
	str r0, [r5]
	mov r4, #255
	and r4, r4, r3
	cmp r4, #0
	beq _08134C42
	mov r0, #127
	and r4, r4, r0
	strb r4, [r5, #5]
_08134C42:
	mov r4, #240
	lsl r4, r4, #4
	and r4, r4, r3
	cmp r4, #0
	beq _08134C62
	lsr r0, r4, #8
	strb r0, [r5, #6]
	mov r4, #12
	add r0, r5, #0
	add r0, r0, #80
	mov r1, #0
_08134C58:
	strb r1, [r0]
	sub r4, r4, #1
	add r0, r0, #64
	cmp r4, #0
	bne _08134C58
_08134C62:
	mov r4, #240
	lsl r4, r4, #8
	and r4, r4, r3
	cmp r4, #0
	beq _08134C70
	lsr r0, r4, #12
	strb r0, [r5, #7]
_08134C70:
	mov r4, #176
	lsl r4, r4, #16
	and r4, r4, r3
	cmp r4, #0
	beq _08134C8E
	mov r0, #192
	lsl r0, r0, #14
	and r0, r0, r4
	lsr r4, r0, #14
	ldr r2, _08134CB4  @ =0x04000089
	ldrb r1, [r2]
	mov r0, #63
	and r0, r0, r1
	orr r0, r0, r4
	strb r0, [r2]
_08134C8E:
	mov r4, #240
	lsl r4, r4, #12
	and r4, r4, r3
	cmp r4, #0
	beq _08134CA2
	bl sub_08134D0C
	add r0, r4, #0
	bl sub_08134B7C
_08134CA2:
	ldr r0, _08134CB0  @ =0x68736D53
	str r0, [r5]
_08134CA6:
	pop {r4,r5}
	pop {r0}
	bx r0
_08134CAC:
	.4byte gUnknown_03007FF0
_08134CB0:
	.4byte 0x68736D53
_08134CB4:
	.4byte 0x04000089
	THUMB_FUNC_END sub_08134C20

	THUMB_FUNC_START sub_08134CB8
sub_08134CB8: @ 0x08134CB8
	push {r4-r7,lr}
	ldr r0, _08134D04  @ =gUnknown_03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _08134D08  @ =0x68736D53
	cmp r1, r0
	bne _08134CFE
	add r0, r1, #1
	str r0, [r6]
	mov r5, #12
	add r4, r6, #0
	add r4, r4, #80
	mov r0, #0
_08134CD2:
	strb r0, [r4]
	sub r5, r5, #1
	add r4, r4, #64
	cmp r5, #0
	bgt _08134CD2
	ldr r4, [r6, #28]
	cmp r4, #0
	beq _08134CFA
	mov r5, #1
	mov r7, #0
_08134CE6:
	lsl r0, r5, #24
	lsr r0, r0, #24
	ldr r1, [r6, #44]
	bl _call_via_r1
	strb r7, [r4]
	add r5, r5, #1
	add r4, r4, #64
	cmp r5, #4
	ble _08134CE6
_08134CFA:
	ldr r0, _08134D08  @ =0x68736D53
	str r0, [r6]
_08134CFE:
	pop {r4-r7}
	pop {r0}
	bx r0
_08134D04:
	.4byte gUnknown_03007FF0
_08134D08:
	.4byte 0x68736D53
	THUMB_FUNC_END sub_08134CB8

	THUMB_FUNC_START sub_08134D0C
sub_08134D0C: @ 0x08134D0C
	push {lr}
	sub sp, sp, #4
	ldr r0, _08134D6C  @ =gUnknown_03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08134D70  @ =0x978C92AD
	add r0, r1, r3
	cmp r0, #1
	bhi _08134D64
	add r0, r1, #0
	add r0, r0, #10
	str r0, [r2]
	ldr r1, _08134D74  @ =0x040000C4
	ldr r0, [r1]
	mov r3, #128
	lsl r3, r3, #18
	and r0, r0, r3
	cmp r0, #0
	beq _08134D36
	ldr r0, _08134D78  @ =0x84400004
	str r0, [r1]
_08134D36:
	ldr r1, _08134D7C  @ =0x040000D0
	ldr r0, [r1]
	and r0, r0, r3
	cmp r0, #0
	beq _08134D44
	ldr r0, _08134D78  @ =0x84400004
	str r0, [r1]
_08134D44:
	ldr r0, _08134D80  @ =0x040000C6
	mov r3, #128
	lsl r3, r3, #3
	add r1, r3, #0
	strh r1, [r0]
	add r0, r0, #12
	strh r1, [r0]
	mov r0, #0
	str r0, [sp]
	mov r0, #212
	lsl r0, r0, #2
	add r1, r2, r0
	ldr r2, _08134D84  @ =0x05000318
	mov r0, sp
	bl CpuSet
_08134D64:
	add sp, sp, #4
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08134D6C:
	.4byte gUnknown_03007FF0
_08134D70:
	.4byte 0x978C92AD
_08134D74:
	.4byte 0x040000C4
_08134D78:
	.4byte 0x84400004
_08134D7C:
	.4byte 0x040000D0
_08134D80:
	.4byte 0x040000C6
_08134D84:
	.4byte 0x05000318
	THUMB_FUNC_END sub_08134D0C

	THUMB_FUNC_START sub_08134D88
sub_08134D88: @ 0x08134D88
	push {r4,lr}
	ldr r0, _08134DB8  @ =gUnknown_03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _08134DBC  @ =0x68736D53
	cmp r3, r0
	beq _08134DB0
	ldr r0, _08134DC0  @ =0x040000C6
	mov r4, #182
	lsl r4, r4, #8
	add r1, r4, #0
	strh r1, [r0]
	add r0, r0, #12
	strh r1, [r0]
	ldrb r0, [r2, #4]
	mov r0, #0
	strb r0, [r2, #4]
	add r0, r3, #0
	sub r0, r0, #10
	str r0, [r2]
_08134DB0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08134DB8:
	.4byte gUnknown_03007FF0
_08134DBC:
	.4byte 0x68736D53
_08134DC0:
	.4byte 0x040000C6
	THUMB_FUNC_END sub_08134D88

	THUMB_FUNC_START sub_08134DC4
sub_08134DC4: @ 0x08134DC4
	push {r4-r7,lr}
	add r7, r0, #0
	add r6, r1, #0
	lsl r2, r2, #24
	lsr r4, r2, #24
	cmp r4, #0
	beq _08134E28
	cmp r4, #16
	bls _08134DD8
	mov r4, #16
_08134DD8:
	ldr r0, _08134E30  @ =gUnknown_03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08134E34  @ =0x68736D53
	cmp r1, r0
	bne _08134E28
	add r0, r1, #1
	str r0, [r5]
	add r0, r7, #0
	bl sub_08134A70
	str r6, [r7, #44]
	strb r4, [r7, #8]
	mov r0, #128
	lsl r0, r0, #24
	str r0, [r7, #4]
	cmp r4, #0
	beq _08134E0C
	mov r1, #0
_08134DFE:
	strb r1, [r6]
	sub r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r6, r6, #80
	cmp r4, #0
	bne _08134DFE
_08134E0C:
	ldr r0, [r5, #32]
	cmp r0, #0
	beq _08134E1C
	str r0, [r7, #56]
	ldr r0, [r5, #36]
	str r0, [r7, #60]
	mov r0, #0
	str r0, [r5, #32]
_08134E1C:
	str r7, [r5, #36]
	ldr r0, _08134E38  @ =0x08134075
	str r0, [r5, #32]
	ldr r0, _08134E34  @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #52]
_08134E28:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08134E30:
	.4byte gUnknown_03007FF0
_08134E34:
	.4byte 0x68736D53
_08134E38:
	.4byte 0x08134075
	THUMB_FUNC_END sub_08134DC4

	THUMB_FUNC_START sub_08134E3C
sub_08134E3C: @ 0x08134E3C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	add r7, r1, #0
	ldr r1, [r5, #52]
	ldr r0, _08134F1C  @ =0x68736D53
	cmp r1, r0
	bne _08134F12
	ldrb r0, [r5, #11]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _08134E7E
	ldr r0, [r5]
	cmp r0, #0
	beq _08134E68
	ldr r1, [r5, #44]
	mov r0, #64
	ldrb r1, [r1]
	and r0, r0, r1
	cmp r0, #0
	bne _08134E74
_08134E68:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08134E7E
	cmp r1, #0
	blt _08134E7E
_08134E74:
	ldrb r0, [r7, #2]
	add r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _08134F12
_08134E7E:
	ldr r0, [r5, #52]
	add r0, r0, #1
	str r0, [r5, #52]
	mov r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #48]
	strb r2, [r5, #9]
	str r1, [r5, #12]
	mov r0, #150
	strh r0, [r5, #28]
	strh r0, [r5, #32]
	add r0, r0, #106
	strh r0, [r5, #30]
	strh r1, [r5, #34]
	strh r1, [r5, #36]
	mov r6, #0
	ldr r4, [r5, #44]
	ldrb r1, [r7]
	cmp r6, r1
	bge _08134EDE
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08134EFE
	mov r8, r6
_08134EB2:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_081342DC
	mov r0, #192
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #32]
	lsl r1, r6, #2
	add r0, r7, #0
	add r0, r0, #8
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #64]
	add r6, r6, #1
	add r4, r4, #80
	ldrb r0, [r7]
	cmp r6, r0
	bge _08134EDE
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08134EB2
_08134EDE:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08134EFE
	mov r1, #0
	mov r8, r1
_08134EE8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_081342DC
	mov r0, r8
	strb r0, [r4]
	add r6, r6, #1
	add r4, r4, #80
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08134EE8
_08134EFE:
	mov r0, #128
	ldrb r1, [r7, #3]
	and r0, r0, r1
	cmp r0, #0
	beq _08134F0E
	ldrb r0, [r7, #3]
	bl sub_08134C20
_08134F0E:
	ldr r0, _08134F1C  @ =0x68736D53
	str r0, [r5, #52]
_08134F12:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08134F1C:
	.4byte 0x68736D53
	THUMB_FUNC_END sub_08134E3C

	THUMB_FUNC_START sub_08134F20
sub_08134F20: @ 0x08134F20
	push {r4-r6,lr}
	add r6, r0, #0
	ldr r1, [r6, #52]
	ldr r0, _08134F5C  @ =0x68736D53
	cmp r1, r0
	bne _08134F56
	add r0, r1, #1
	str r0, [r6, #52]
	ldr r0, [r6, #4]
	mov r1, #128
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #44]
	cmp r4, #0
	ble _08134F52
_08134F42:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_081342DC
	sub r4, r4, #1
	add r5, r5, #80
	cmp r4, #0
	bgt _08134F42
_08134F52:
	ldr r0, _08134F5C  @ =0x68736D53
	str r0, [r6, #52]
_08134F56:
	pop {r4-r6}
	pop {r0}
	bx r0
_08134F5C:
	.4byte 0x68736D53
	THUMB_FUNC_END sub_08134F20

	THUMB_FUNC_START sub_08134F60
sub_08134F60: @ 0x08134F60
	push {r4-r7,lr}
	add r6, r0, #0
	ldrh r1, [r6, #36]
	cmp r1, #0
	beq _08135022
	ldrh r0, [r6, #38]
	sub r0, r0, #1
	strh r0, [r6, #38]
	ldr r3, _08134FA0  @ =0x0000FFFF
	add r2, r3, #0
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, #0
	bne _08135022
	strh r1, [r6, #38]
	ldrh r1, [r6, #40]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08134FA4
	add r0, r1, #0
	add r0, r0, #16
	strh r0, [r6, #40]
	and r0, r0, r2
	cmp r0, #255
	bls _08134FF6
	mov r0, #128
	lsl r0, r0, #1
	strh r0, [r6, #40]
	strh r3, [r6, #36]
	b _08134FF6
	.byte 0x00
	.byte 0x00
_08134FA0:
	.4byte 0x0000FFFF
_08134FA4:
	add r0, r1, #0
	sub r0, r0, #16
	strh r0, [r6, #40]
	and r0, r0, r2
	lsl r0, r0, #16
	cmp r0, #0
	bgt _08134FF6
	ldrb r5, [r6, #8]
	ldr r4, [r6, #44]
	cmp r5, #0
	ble _08134FD6
_08134FBA:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_081342DC
	mov r0, #1
	ldrh r7, [r6, #40]
	and r0, r0, r7
	cmp r0, #0
	bne _08134FCE
	strb r0, [r4]
_08134FCE:
	sub r5, r5, #1
	add r4, r4, #80
	cmp r5, #0
	bgt _08134FBA
_08134FD6:
	mov r0, #1
	ldrh r1, [r6, #40]
	and r0, r0, r1
	cmp r0, #0
	beq _08134FEA
	ldr r0, [r6, #4]
	mov r1, #128
	lsl r1, r1, #24
	orr r0, r0, r1
	b _08134FEE
_08134FEA:
	mov r0, #128
	lsl r0, r0, #24
_08134FEE:
	str r0, [r6, #4]
	mov r0, #0
	strh r0, [r6, #36]
	b _08135022
_08134FF6:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #44]
	cmp r5, #0
	ble _08135022
	mov r3, #128
	mov r7, #0
	mov r2, #3
_08135004:
	ldrb r1, [r4]
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0813501A
	ldrh r7, [r6, #40]
	lsr r0, r7, #2
	strb r0, [r4, #19]
	add r0, r1, #0
	orr r0, r0, r2
	strb r0, [r4]
_0813501A:
	sub r5, r5, #1
	add r4, r4, #80
	cmp r5, #0
	bgt _08135004
_08135022:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08134F60

	THUMB_FUNC_START sub_08135028
sub_08135028: @ 0x08135028
	push {r4,lr}
	add r2, r1, #0
	mov r0, #1
	ldrb r1, [r2]
	and r0, r0, r1
	cmp r0, #0
	beq _0813508C
	ldrb r3, [r2, #19]
	ldrb r1, [r2, #18]
	add r0, r3, #0
	mul r0, r1, r0
	lsr r3, r0, #5
	ldrb r4, [r2, #24]
	cmp r4, #1
	bne _08135050
	mov r0, #22
	ldrsb r0, [r2, r0]
	add r0, r0, #128
	mul r0, r3, r0
	lsr r3, r0, #7
_08135050:
	mov r0, #20
	ldrsb r0, [r2, r0]
	lsl r0, r0, #1
	mov r1, #21
	ldrsb r1, [r2, r1]
	add r1, r0, r1
	cmp r4, #2
	bne _08135066
	mov r0, #22
	ldrsb r0, [r2, r0]
	add r1, r1, r0
_08135066:
	mov r0, #128
	neg r0, r0
	cmp r1, r0
	bge _08135072
	add r1, r0, #0
	b _08135078
_08135072:
	cmp r1, #127
	ble _08135078
	mov r1, #127
_08135078:
	add r0, r1, #0
	add r0, r0, #128
	mul r0, r3, r0
	lsr r0, r0, #8
	strb r0, [r2, #16]
	mov r0, #127
	sub r0, r0, r1
	mul r0, r3, r0
	lsr r0, r0, #8
	strb r0, [r2, #17]
_0813508C:
	ldrb r1, [r2]
	mov r0, #4
	and r0, r0, r1
	add r3, r1, #0
	cmp r0, #0
	beq _081350D0
	mov r0, #14
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #15]
	mul r0, r1, r0
	mov r1, #12
	ldrsb r1, [r2, r1]
	add r1, r1, r0
	lsl r1, r1, #2
	mov r0, #10
	ldrsb r0, [r2, r0]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #11
	ldrsb r0, [r2, r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrb r0, [r2, #13]
	add r1, r0, r1
	ldrb r0, [r2, #24]
	cmp r0, #0
	bne _081350CA
	mov r0, #22
	ldrsb r0, [r2, r0]
	lsl r0, r0, #4
	add r1, r1, r0
_081350CA:
	asr r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_081350D0:
	mov r0, #250
	and r0, r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08135028

	THUMB_FUNC_START sub_081350DC
sub_081350DC: @ 0x081350DC
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r5, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r12, r2
	cmp r0, #4
	bne _08135114
	cmp r5, #20
	bhi _081350F8
	mov r5, #0
	b _08135106
_081350F8:
	add r0, r5, #0
	sub r0, r0, #21
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #59
	bls _08135106
	mov r5, #59
_08135106:
	ldr r0, _08135110  @ =gUnknown_083C287C
	add r0, r5, r0
	ldrb r0, [r0]
	b _08135176
	.byte 0x00
	.byte 0x00
_08135110:
	.4byte gUnknown_083C287C
_08135114:
	cmp r5, #35
	bhi _08135120
	mov r0, #0
	mov r12, r0
	mov r5, #0
	b _08135132
_08135120:
	add r0, r5, #0
	sub r0, r0, #36
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #130
	bls _08135132
	mov r5, #130
	mov r1, #255
	mov r12, r1
_08135132:
	ldr r3, _0813517C  @ =gUnknown_083C27E0
	add r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08135180  @ =gUnknown_083C2864
	mov r2, #15
	add r0, r6, #0
	and r0, r0, r2
	lsl r0, r0, #1
	add r0, r0, r4
	mov r7, #0
	ldrsh r1, [r0, r7]
	asr r0, r6, #4
	add r6, r1, #0
	asr r6, r6, r0
	add r0, r5, #1
	add r0, r0, r3
	ldrb r1, [r0]
	add r0, r1, #0
	and r0, r0, r2
	lsl r0, r0, #1
	add r0, r0, r4
	mov r2, #0
	ldrsh r0, [r0, r2]
	asr r1, r1, #4
	asr r0, r0, r1
	sub r0, r0, r6
	mov r7, r12
	mul r7, r0, r7
	add r0, r7, #0
	asr r0, r0, #8
	add r0, r6, r0
	mov r1, #128
	lsl r1, r1, #4
	add r0, r0, r1
_08135176:
	pop {r4-r7}
	pop {r1}
	bx r1
_0813517C:
	.4byte gUnknown_083C27E0
_08135180:
	.4byte gUnknown_083C2864
	THUMB_FUNC_END sub_081350DC

	THUMB_FUNC_START sub_08135184
sub_08135184: @ 0x08135184
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r1, r0, #0
	cmp r0, #2
	beq _081351AC
	cmp r0, #2
	bgt _08135198
	cmp r0, #1
	beq _0813519E
	b _081351C0
_08135198:
	cmp r1, #3
	beq _081351B4
	b _081351C0
_0813519E:
	ldr r1, _081351A8  @ =0x04000063
	mov r0, #8
	strb r0, [r1]
	add r1, r1, #2
	b _081351C8
_081351A8:
	.4byte 0x04000063
_081351AC:
	ldr r1, _081351B0  @ =0x04000069
	b _081351C2
_081351B0:
	.4byte 0x04000069
_081351B4:
	ldr r1, _081351BC  @ =0x04000070
	mov r0, #0
	b _081351CA
	.byte 0x00
	.byte 0x00
_081351BC:
	.4byte 0x04000070
_081351C0:
	ldr r1, _081351D0  @ =0x04000079
_081351C2:
	mov r0, #8
	strb r0, [r1]
	add r1, r1, #4
_081351C8:
	mov r0, #128
_081351CA:
	strb r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_081351D0:
	.4byte 0x04000079
	THUMB_FUNC_END sub_08135184

	THUMB_FUNC_START sub_081351D4
sub_081351D4: @ 0x081351D4
	push {r4,lr}
	add r1, r0, #0
	ldrb r0, [r1, #2]
	lsl r2, r0, #24
	lsr r4, r2, #24
	ldrb r3, [r1, #3]
	lsl r0, r3, #24
	lsr r3, r0, #24
	cmp r4, r3
	bcc _081351F4
	lsr r0, r2, #25
	cmp r0, r3
	bcc _08135200
	mov r0, #15
	strb r0, [r1, #27]
	b _0813520E
_081351F4:
	lsr r0, r0, #25
	cmp r0, r4
	bcc _08135200
	mov r0, #240
	strb r0, [r1, #27]
	b _0813520E
_08135200:
	mov r0, #255
	strb r0, [r1, #27]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	add r0, r2, r3
	lsr r0, r0, #4
	b _0813521E
_0813520E:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	add r0, r2, r3
	lsr r0, r0, #4
	strb r0, [r1, #10]
	cmp r0, #15
	bls _08135220
	mov r0, #15
_0813521E:
	strb r0, [r1, #10]
_08135220:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #10]
	add r0, r2, #0
	mul r0, r3, r0
	add r0, r0, #15
	asr r0, r0, #4
	strb r0, [r1, #25]
	ldrb r0, [r1, #28]
	ldrb r2, [r1, #27]
	and r0, r0, r2
	strb r0, [r1, #27]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_081351D4

	THUMB_FUNC_START sub_0813523C
sub_0813523C: @ 0x0813523C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #28
	ldr r0, _0813525C  @ =gUnknown_03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #10]
	cmp r0, #0
	beq _08135260
	sub r0, r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #10]
	b _08135266
_0813525C:
	.4byte gUnknown_03007FF0
_08135260:
	mov r0, #14
	ldr r2, [sp, #4]
	strb r0, [r2, #10]
_08135266:
	mov r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #28]
_0813526C:
	ldrb r1, [r4]
	mov r0, #199
	and r0, r0, r1
	add r2, r6, #1
	mov r10, r2
	mov r2, #64
	add r2, r2, r4
	mov r9, r2
	cmp r0, #0
	bne _08135282
	b _0813566C
_08135282:
	cmp r6, #2
	beq _081352B4
	cmp r6, #2
	bgt _08135290
	cmp r6, #1
	beq _08135296
	b _081352EC
_08135290:
	cmp r6, #3
	beq _081352CC
	b _081352EC
_08135296:
	ldr r0, _081352A8  @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _081352AC  @ =0x04000062
	ldr r2, _081352B0  @ =0x04000063
	str r2, [sp, #12]
	add r0, r0, #4
	str r0, [sp, #16]
	add r2, r2, #2
	b _081352FC
_081352A8:
	.4byte 0x04000060
_081352AC:
	.4byte 0x04000062
_081352B0:
	.4byte 0x04000063
_081352B4:
	ldr r0, _081352C0  @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _081352C4  @ =0x04000068
	ldr r2, _081352C8  @ =0x04000069
	b _081352F4
	.byte 0x00
	.byte 0x00
_081352C0:
	.4byte 0x04000061
_081352C4:
	.4byte 0x04000068
_081352C8:
	.4byte 0x04000069
_081352CC:
	ldr r0, _081352E0  @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _081352E4  @ =0x04000072
	ldr r2, _081352E8  @ =0x04000073
	str r2, [sp, #12]
	add r0, r0, #4
	str r0, [sp, #16]
	add r2, r2, #2
	b _081352FC
	.byte 0x00
	.byte 0x00
_081352E0:
	.4byte 0x04000070
_081352E4:
	.4byte 0x04000072
_081352E8:
	.4byte 0x04000073
_081352EC:
	ldr r0, _0813534C  @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _08135350  @ =0x04000078
	ldr r2, _08135354  @ =0x04000079
_081352F4:
	str r2, [sp, #12]
	add r0, r0, #11
	str r0, [sp, #16]
	add r2, r2, #4
_081352FC:
	str r2, [sp, #20]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #10]
	str r0, [sp]
	ldr r2, [sp, #12]
	ldrb r0, [r2]
	mov r8, r0
	add r2, r1, #0
	mov r0, #128
	and r0, r0, r2
	cmp r0, #0
	beq _081353F2
	mov r3, #64
	add r0, r3, #0
	and r0, r0, r2
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r0, r6, #1
	mov r10, r0
	mov r1, #64
	add r1, r1, r4
	mov r9, r1
	cmp r5, #0
	bne _08135416
	mov r0, #3
	strb r0, [r4]
	strb r0, [r4, #29]
	add r0, r4, #0
	str r3, [sp, #24]
	bl sub_081351D4
	ldr r3, [sp, #24]
	cmp r6, #2
	beq _08135364
	cmp r6, #2
	bgt _08135358
	cmp r6, #1
	beq _0813535E
	b _081353B8
	.byte 0x00
	.byte 0x00
_0813534C:
	.4byte 0x04000071
_08135350:
	.4byte 0x04000078
_08135354:
	.4byte 0x04000079
_08135358:
	cmp r6, #3
	beq _08135370
	b _081353B8
_0813535E:
	ldrb r0, [r4, #31]
	ldr r2, [sp, #8]
	strb r0, [r2]
_08135364:
	ldr r0, [r4, #36]
	lsl r0, r0, #6
	ldrb r1, [r4, #30]
	add r0, r1, r0
	strb r0, [r7]
	b _081353C4
_08135370:
	ldr r1, [r4, #36]
	ldr r0, [r4, #40]
	cmp r1, r0
	beq _08135398
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _081353AC  @ =0x04000090
	ldr r2, [r4, #36]
	ldr r0, [r2]
	str r0, [r1]
	add r1, r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	add r1, r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	add r1, r1, #4
	ldr r0, [r2, #12]
	str r0, [r1]
	str r2, [r4, #40]
_08135398:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #30]
	strb r0, [r7]
	ldrb r0, [r4, #30]
	cmp r0, #0
	beq _081353B0
	mov r0, #192
	b _081353D2
	.byte 0x00
	.byte 0x00
_081353AC:
	.4byte 0x04000090
_081353B0:
	mov r1, #128
	neg r1, r1
	strb r1, [r4, #26]
	b _081353D4
_081353B8:
	ldrb r0, [r4, #30]
	strb r0, [r7]
	ldr r0, [r4, #36]
	lsl r0, r0, #3
	ldr r2, [sp, #16]
	strb r0, [r2]
_081353C4:
	ldrb r0, [r4, #4]
	add r0, r0, #8
	mov r8, r0
	ldrb r0, [r4, #30]
	cmp r0, #0
	beq _081353D2
	mov r0, #64
_081353D2:
	strb r0, [r4, #26]
_081353D4:
	ldrb r1, [r4, #4]
	mov r2, #0
	strb r1, [r4, #11]
	mov r0, #255
	and r0, r0, r1
	add r1, r6, #1
	mov r10, r1
	mov r1, #64
	add r1, r1, r4
	mov r9, r1
	cmp r0, #0
	bne _081353EE
	b _0813552A
_081353EE:
	strb r2, [r4, #9]
	b _08135558
_081353F2:
	mov r0, #4
	and r0, r0, r2
	cmp r0, #0
	beq _08135424
	ldrb r0, [r4, #13]
	sub r0, r0, #1
	strb r0, [r4, #13]
	mov r2, #255
	and r0, r0, r2
	lsl r0, r0, #24
	add r1, r6, #1
	mov r10, r1
	mov r2, #64
	add r2, r2, r4
	mov r9, r2
	cmp r0, #0
	ble _08135416
	b _0813556A
_08135416:
	lsl r0, r6, #24
	lsr r0, r0, #24
	bl sub_08135184
	mov r0, #0
	strb r0, [r4]
	b _08135668
_08135424:
	mov r0, #64
	and r0, r0, r1
	add r2, r6, #1
	mov r10, r2
	mov r2, #64
	add r2, r2, r4
	mov r9, r2
	cmp r0, #0
	beq _08135464
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	beq _08135464
	mov r0, #252
	and r0, r0, r1
	mov r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #11]
	mov r0, #255
	and r0, r0, r1
	cmp r0, #0
	beq _08135496
	mov r0, #1
	ldrb r1, [r4, #29]
	orr r0, r0, r1
	strb r0, [r4, #29]
	cmp r6, #3
	beq _08135558
	ldrb r2, [r4, #7]
	mov r8, r2
	b _08135558
_08135464:
	ldrb r0, [r4, #11]
	cmp r0, #0
	bne _08135558
	cmp r6, #3
	bne _08135476
	mov r0, #1
	ldrb r1, [r4, #29]
	orr r0, r0, r1
	strb r0, [r4, #29]
_08135476:
	add r0, r4, #0
	bl sub_081351D4
	mov r0, #3
	ldrb r2, [r4]
	and r0, r0, r2
	cmp r0, #0
	bne _081354CA
	ldrb r0, [r4, #9]
	sub r0, r0, #1
	strb r0, [r4, #9]
	mov r1, #255
	and r0, r0, r1
	lsl r0, r0, #24
	cmp r0, #0
	bgt _081354C6
_08135496:
	ldrb r2, [r4, #12]
	ldrb r1, [r4, #10]
	add r0, r2, #0
	mul r0, r1, r0
	add r0, r0, #255
	asr r0, r0, #8
	mov r1, #0
	strb r0, [r4, #9]
	lsl r0, r0, #24
	cmp r0, #0
	beq _08135416
	mov r0, #4
	ldrb r2, [r4]
	orr r0, r0, r2
	strb r0, [r4]
	mov r0, #1
	ldrb r1, [r4, #29]
	orr r0, r0, r1
	strb r0, [r4, #29]
	cmp r6, #3
	beq _0813556A
	mov r2, #8
	mov r8, r2
	b _0813556A
_081354C6:
	ldrb r0, [r4, #7]
	b _08135556
_081354CA:
	cmp r0, #1
	bne _081354D6
_081354CE:
	ldrb r0, [r4, #25]
	strb r0, [r4, #9]
	mov r0, #7
	b _08135556
_081354D6:
	cmp r0, #2
	bne _0813551A
	ldrb r0, [r4, #9]
	sub r0, r0, #1
	strb r0, [r4, #9]
	mov r1, #255
	and r0, r0, r1
	lsl r0, r0, #24
	ldrb r2, [r4, #25]
	lsl r1, r2, #24
	cmp r0, r1
	bgt _08135516
_081354EE:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _081354FE
	mov r0, #252
	ldrb r1, [r4]
	and r0, r0, r1
	strb r0, [r4]
	b _08135496
_081354FE:
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	mov r0, #1
	ldrb r2, [r4, #29]
	orr r0, r0, r2
	strb r0, [r4, #29]
	cmp r6, #3
	beq _081354CE
	mov r0, #8
	mov r8, r0
	b _081354CE
_08135516:
	ldrb r0, [r4, #5]
	b _08135556
_0813551A:
	ldrb r0, [r4, #9]
	add r0, r0, #1
	strb r0, [r4, #9]
	mov r1, #255
	and r0, r0, r1
	ldrb r2, [r4, #10]
	cmp r0, r2
	bcc _08135554
_0813552A:
	ldrb r0, [r4]
	sub r0, r0, #1
	mov r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #11]
	mov r0, #255
	and r0, r0, r1
	cmp r0, #0
	beq _081354EE
	mov r0, #1
	ldrb r1, [r4, #29]
	orr r0, r0, r1
	strb r0, [r4, #29]
	ldrb r0, [r4, #10]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _08135558
	ldrb r2, [r4, #5]
	mov r8, r2
	b _08135558
_08135554:
	ldrb r0, [r4, #4]
_08135556:
	strb r0, [r4, #11]
_08135558:
	ldrb r0, [r4, #11]
	sub r0, r0, #1
	strb r0, [r4, #11]
	ldr r0, [sp]
	cmp r0, #0
	bne _0813556A
	sub r0, r0, #1
	str r0, [sp]
	b _08135464
_0813556A:
	mov r0, #2
	ldrb r1, [r4, #29]
	and r0, r0, r1
	cmp r0, #0
	beq _081355E2
	cmp r6, #3
	bgt _081355AA
	mov r0, #8
	ldrb r2, [r4, #1]
	and r0, r0, r2
	cmp r0, #0
	beq _081355AA
	ldr r0, _08135594  @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #63
	bgt _0813559C
	ldr r0, [r4, #32]
	add r0, r0, #2
	ldr r1, _08135598  @ =0x000007FC
	b _081355A6
	.byte 0x00
	.byte 0x00
_08135594:
	.4byte 0x04000089
_08135598:
	.4byte 0x000007FC
_0813559C:
	cmp r0, #127
	bgt _081355AA
	ldr r0, [r4, #32]
	add r0, r0, #1
	ldr r1, _081355B8  @ =0x000007FE
_081355A6:
	and r0, r0, r1
	str r0, [r4, #32]
_081355AA:
	cmp r6, #4
	beq _081355BC
	ldr r0, [r4, #32]
	ldr r1, [sp, #16]
	strb r0, [r1]
	b _081355CA
	.byte 0x00
	.byte 0x00
_081355B8:
	.4byte 0x000007FE
_081355BC:
	ldr r2, [sp, #16]
	ldrb r0, [r2]
	mov r1, #8
	and r1, r1, r0
	ldr r0, [r4, #32]
	orr r0, r0, r1
	strb r0, [r2]
_081355CA:
	mov r0, #192
	ldrb r1, [r4, #26]
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #33
	ldrb r1, [r1]
	add r0, r1, r0
	strb r0, [r4, #26]
	mov r2, #255
	and r0, r0, r2
	ldr r1, [sp, #20]
	strb r0, [r1]
_081355E2:
	mov r0, #1
	ldrb r2, [r4, #29]
	and r0, r0, r2
	cmp r0, #0
	beq _08135668
	ldr r1, _0813562C  @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #28]
	bic r0, r0, r2
	ldrb r2, [r4, #27]
	orr r0, r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _08135634
	ldr r0, _08135630  @ =gUnknown_083C28B8
	ldrb r1, [r4, #9]
	add r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #12]
	strb r0, [r2]
	mov r1, #128
	add r0, r1, #0
	ldrb r2, [r4, #26]
	and r0, r0, r2
	cmp r0, #0
	beq _08135668
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #26]
	ldr r1, [sp, #20]
	strb r0, [r1]
	mov r0, #127
	ldrb r2, [r4, #26]
	and r0, r0, r2
	strb r0, [r4, #26]
	b _08135668
	.byte 0x00
	.byte 0x00
_0813562C:
	.4byte 0x04000081
_08135630:
	.4byte gUnknown_083C28B8
_08135634:
	mov r0, #15
	mov r1, r8
	and r1, r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsl r0, r2, #4
	add r0, r0, r8
	ldr r1, [sp, #12]
	strb r0, [r1]
	mov r2, #128
	ldrb r0, [r4, #26]
	orr r0, r0, r2
	ldr r1, [sp, #20]
	strb r0, [r1]
	cmp r6, #1
	bne _08135668
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _08135668
	ldrb r0, [r4, #26]
	orr r0, r0, r2
	ldr r1, [sp, #20]
	strb r0, [r1]
_08135668:
	mov r0, #0
	strb r0, [r4, #29]
_0813566C:
	mov r6, r10
	mov r4, r9
	cmp r6, #4
	bgt _08135676
	b _0813526C
_08135676:
	add sp, sp, #28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0813523C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08135688
sub_08135688: @ 0x08135688
	push {r4,lr}
	add r2, r0, #0
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, [r2, #52]
	ldr r0, _081356AC  @ =0x68736D53
	cmp r3, r0
	bne _081356A4
	strh r1, [r2, #30]
	ldrh r4, [r2, #28]
	add r0, r1, #0
	mul r0, r4, r0
	asr r0, r0, #8
	strh r0, [r2, #32]
_081356A4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_081356AC:
	.4byte 0x68736D53
	THUMB_FUNC_END sub_08135688

	THUMB_FUNC_START sub_081356B0
sub_081356B0: @ 0x081356B0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r4, r0, #0
	lsl r1, r1, #16
	lsr r7, r1, #16
	lsl r6, r2, #16
	ldr r3, [r4, #52]
	ldr r0, _08135714  @ =0x68736D53
	cmp r3, r0
	bne _08135708
	add r0, r3, #1
	str r0, [r4, #52]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #44]
	mov r5, #1
	cmp r2, #0
	ble _08135704
	mov r0, #128
	mov r8, r0
	lsr r6, r6, #18
	mov r0, #3
	mov r12, r0
_081356E0:
	add r0, r7, #0
	and r0, r0, r5
	cmp r0, #0
	beq _081356FA
	ldrb r3, [r1]
	mov r0, r8
	and r0, r0, r3
	cmp r0, #0
	beq _081356FA
	strb r6, [r1, #19]
	mov r0, r12
	orr r0, r0, r3
	strb r0, [r1]
_081356FA:
	sub r2, r2, #1
	add r1, r1, #80
	lsl r5, r5, #1
	cmp r2, #0
	bgt _081356E0
_08135704:
	ldr r0, _08135714  @ =0x68736D53
	str r0, [r4, #52]
_08135708:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_08135714:
	.4byte 0x68736D53
	THUMB_FUNC_END sub_081356B0

	THUMB_FUNC_START sub_08135718
sub_08135718: @ 0x08135718
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r12, r1
	lsl r2, r2, #16
	lsr r6, r2, #16
	ldr r3, [r4, #52]
	ldr r0, _08135788  @ =0x68736D53
	cmp r3, r0
	bne _0813577A
	add r0, r3, #1
	str r0, [r4, #52]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #44]
	mov r5, #1
	cmp r2, #0
	ble _08135776
	mov r0, #128
	mov r9, r0
	lsl r0, r6, #16
	asr r7, r0, #24
	mov r0, #12
	mov r8, r0
_08135750:
	mov r0, r12
	and r0, r0, r5
	cmp r0, #0
	beq _0813576C
	ldrb r1, [r3]
	mov r0, r9
	and r0, r0, r1
	cmp r0, #0
	beq _0813576C
	strb r7, [r3, #11]
	strb r6, [r3, #13]
	mov r0, r8
	orr r0, r0, r1
	strb r0, [r3]
_0813576C:
	sub r2, r2, #1
	add r3, r3, #80
	lsl r5, r5, #1
	cmp r2, #0
	bgt _08135750
_08135776:
	ldr r0, _08135788  @ =0x68736D53
	str r0, [r4, #52]
_0813577A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08135788:
	.4byte 0x68736D53
	THUMB_FUNC_END sub_08135718

	THUMB_FUNC_START sub_0813578C
sub_0813578C: @ 0x0813578C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r4, r0, #0
	lsl r1, r1, #16
	lsr r7, r1, #16
	lsl r2, r2, #24
	lsr r6, r2, #24
	ldr r3, [r4, #52]
	ldr r0, _081357F0  @ =0x68736D53
	cmp r3, r0
	bne _081357E4
	add r0, r3, #1
	str r0, [r4, #52]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #44]
	mov r5, #1
	cmp r2, #0
	ble _081357E0
	mov r0, #128
	mov r8, r0
	mov r0, #3
	mov r12, r0
_081357BC:
	add r0, r7, #0
	and r0, r0, r5
	cmp r0, #0
	beq _081357D6
	ldrb r3, [r1]
	mov r0, r8
	and r0, r0, r3
	cmp r0, #0
	beq _081357D6
	strb r6, [r1, #21]
	mov r0, r12
	orr r0, r0, r3
	strb r0, [r1]
_081357D6:
	sub r2, r2, #1
	add r1, r1, #80
	lsl r5, r5, #1
	cmp r2, #0
	bgt _081357BC
_081357E0:
	ldr r0, _081357F0  @ =0x68736D53
	str r0, [r4, #52]
_081357E4:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_081357F0:
	.4byte 0x68736D53
	THUMB_FUNC_END sub_0813578C

	THUMB_FUNC_START sub_081357F4
sub_081357F4: @ 0x081357F4
	add r1, r0, #0
	mov r2, #0
	mov r0, #0
	strb r0, [r1, #26]
	strb r0, [r1, #22]
	ldrb r0, [r1, #24]
	cmp r0, #0
	bne _08135808
	mov r0, #12
	b _0813580A
_08135808:
	mov r0, #3
_0813580A:
	ldrb r2, [r1]
	orr r0, r0, r2
	strb r0, [r1]
	bx lr
	THUMB_FUNC_END sub_081357F4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08135814
sub_08135814: @ 0x08135814
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r10, r1
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r8, r2
	ldr r1, [r6, #52]
	ldr r0, _08135884  @ =0x68736D53
	cmp r1, r0
	bne _08135874
	add r0, r1, #1
	str r0, [r6, #52]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #44]
	mov r7, #1
	cmp r5, #0
	ble _08135870
	mov r9, r8
_08135844:
	mov r0, r10
	and r0, r0, r7
	cmp r0, #0
	beq _08135866
	mov r0, #128
	ldrb r1, [r4]
	and r0, r0, r1
	cmp r0, #0
	beq _08135866
	mov r0, r8
	strb r0, [r4, #23]
	mov r1, r9
	cmp r1, #0
	bne _08135866
	add r0, r4, #0
	bl sub_081357F4
_08135866:
	sub r5, r5, #1
	add r4, r4, #80
	lsl r7, r7, #1
	cmp r5, #0
	bgt _08135844
_08135870:
	ldr r0, _08135884  @ =0x68736D53
	str r0, [r6, #52]
_08135874:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08135884:
	.4byte 0x68736D53
	THUMB_FUNC_END sub_08135814

	THUMB_FUNC_START sub_08135888
sub_08135888: @ 0x08135888
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r10, r1
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r8, r2
	ldr r1, [r6, #52]
	ldr r0, _081358F8  @ =0x68736D53
	cmp r1, r0
	bne _081358E8
	add r0, r1, #1
	str r0, [r6, #52]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #44]
	mov r7, #1
	cmp r5, #0
	ble _081358E4
	mov r9, r8
_081358B8:
	mov r0, r10
	and r0, r0, r7
	cmp r0, #0
	beq _081358DA
	mov r0, #128
	ldrb r1, [r4]
	and r0, r0, r1
	cmp r0, #0
	beq _081358DA
	mov r0, r8
	strb r0, [r4, #25]
	mov r1, r9
	cmp r1, #0
	bne _081358DA
	add r0, r4, #0
	bl sub_081357F4
_081358DA:
	sub r5, r5, #1
	add r4, r4, #80
	lsl r7, r7, #1
	cmp r5, #0
	bgt _081358B8
_081358E4:
	ldr r0, _081358F8  @ =0x68736D53
	str r0, [r6, #52]
_081358E8:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_081358F8:
	.4byte 0x68736D53
	THUMB_FUNC_END sub_08135888

	THUMB_FUNC_START sub_081358FC
sub_081358FC: @ 0x081358FC
	push {r4-r6,lr}
	add r4, r0, #0
	add r6, r1, #0
	ldr r1, [r6, #64]
	ldrb r5, [r1]
	add r2, r1, #1
	str r2, [r6, #64]
	ldr r0, [r4, #24]
	ldrb r1, [r1, #1]
	add r3, r1, r0
	add r0, r2, #1
	str r0, [r6, #64]
	ldrb r2, [r2, #1]
	add r0, r0, #1
	str r0, [r6, #64]
	cmp r5, #17
	bls _08135920
	b _08135A4E
_08135920:
	lsl r0, r5, #2
	ldr r1, _0813592C  @ =0x08135930
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0813592C:
	.4byte 0x08135930
	.4byte _08135978
	.4byte _0813597C
	.4byte _08135984
	.4byte _0813598C
	.4byte _08135996
	.4byte _081359A4
	.4byte _081359B2
	.4byte _081359BA
	.4byte _081359C2
	.4byte _081359CA
	.4byte _081359D2
	.4byte _081359DA
	.4byte _081359E2
	.4byte _081359F0
	.4byte _081359FE
	.4byte _08135A0C
	.4byte _08135A1A
	.4byte _08135A28
_08135978:
	strb r2, [r3]
	b _08135A4E
_0813597C:
	ldrb r1, [r3]
	add r0, r1, r2
	strb r0, [r3]
	b _08135A4E
_08135984:
	ldrb r1, [r3]
	sub r0, r1, r2
	strb r0, [r3]
	b _08135A4E
_0813598C:
	ldr r0, [r4, #24]
	add r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _08135A4E
_08135996:
	ldr r0, [r4, #24]
	add r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	add r0, r1, r0
	strb r0, [r3]
	b _08135A4E
_081359A4:
	ldr r0, [r4, #24]
	add r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	sub r0, r1, r0
	strb r0, [r3]
	b _08135A4E
_081359B2:
	ldrb r3, [r3]
	cmp r3, r2
	beq _08135A34
	b _08135A48
_081359BA:
	ldrb r3, [r3]
	cmp r3, r2
	bne _08135A34
	b _08135A48
_081359C2:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _08135A34
	b _08135A48
_081359CA:
	ldrb r3, [r3]
	cmp r3, r2
	bcs _08135A34
	b _08135A48
_081359D2:
	ldrb r3, [r3]
	cmp r3, r2
	bls _08135A34
	b _08135A48
_081359DA:
	ldrb r3, [r3]
	cmp r3, r2
	bcc _08135A34
	b _08135A48
_081359E2:
	ldr r0, [r4, #24]
	add r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08135A34
	b _08135A48
_081359F0:
	ldr r0, [r4, #24]
	add r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _08135A34
	b _08135A48
_081359FE:
	ldr r0, [r4, #24]
	add r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _08135A34
	b _08135A48
_08135A0C:
	ldr r0, [r4, #24]
	add r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bcs _08135A34
	b _08135A48
_08135A1A:
	ldr r0, [r4, #24]
	add r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _08135A34
	b _08135A48
_08135A28:
	ldr r0, [r4, #24]
	add r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bcs _08135A48
_08135A34:
	ldr r0, _08135A44  @ =gUnknown_02031A34
	ldr r2, [r0]
	add r0, r4, #0
	add r1, r6, #0
	bl _call_via_r2
	b _08135A4E
	.byte 0x00
	.byte 0x00
_08135A44:
	.4byte gUnknown_02031A34
_08135A48:
	ldr r0, [r6, #64]
	add r0, r0, #4
	str r0, [r6, #64]
_08135A4E:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_081358FC

	THUMB_FUNC_START sub_08135A54
sub_08135A54: @ 0x08135A54
	push {lr}
	ldr r2, [r1, #64]
	ldrb r3, [r2]
	add r2, r2, #1
	str r2, [r1, #64]
	ldr r2, _08135A70  @ =gUnknown_083C28FC
	lsl r3, r3, #2
	add r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08135A70:
	.4byte gUnknown_083C28FC
	THUMB_FUNC_END sub_08135A54

	THUMB_FUNC_START sub_08135A74
sub_08135A74: @ 0x08135A74
	push {lr}
	ldr r2, _08135A84  @ =gUnknown_02031A30
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08135A84:
	.4byte gUnknown_02031A30
	THUMB_FUNC_END sub_08135A74

	THUMB_FUNC_START sub_08135A88
sub_08135A88: @ 0x08135A88
	push {r4,lr}
	ldr r2, [r1, #64]
	ldr r0, _08135AC0  @ =0xFFFFFF00
	and r4, r4, r0
	ldrb r0, [r2]
	orr r4, r4, r0
	ldrb r0, [r2, #1]
	lsl r3, r0, #8
	ldr r0, _08135AC4  @ =0xFFFF00FF
	and r4, r4, r0
	orr r4, r4, r3
	ldrb r0, [r2, #2]
	lsl r3, r0, #16
	ldr r0, _08135AC8  @ =0xFF00FFFF
	and r4, r4, r0
	orr r4, r4, r3
	ldrb r0, [r2, #3]
	lsl r3, r0, #24
	ldr r0, _08135ACC  @ =0x00FFFFFF
	and r4, r4, r0
	orr r4, r4, r3
	str r4, [r1, #40]
	add r2, r2, #4
	str r2, [r1, #64]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08135AC0:
	.4byte 0xFFFFFF00
_08135AC4:
	.4byte 0xFFFF00FF
_08135AC8:
	.4byte 0xFF00FFFF
_08135ACC:
	.4byte 0x00FFFFFF
	THUMB_FUNC_END sub_08135A88

	THUMB_FUNC_START sub_08135AD0
sub_08135AD0: @ 0x08135AD0
	ldr r0, [r1, #64]
	ldrb r2, [r0]
	add r0, r1, #0
	add r0, r0, #36
	strb r2, [r0]
	ldr r0, [r1, #64]
	add r0, r0, #1
	str r0, [r1, #64]
	bx lr
	THUMB_FUNC_END sub_08135AD0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08135AE4
sub_08135AE4: @ 0x08135AE4
	ldr r0, [r1, #64]
	ldrb r2, [r0]
	add r0, r1, #0
	add r0, r0, #44
	strb r2, [r0]
	ldr r0, [r1, #64]
	add r0, r0, #1
	str r0, [r1, #64]
	bx lr
	THUMB_FUNC_END sub_08135AE4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08135AF8
sub_08135AF8: @ 0x08135AF8
	ldr r0, [r1, #64]
	ldrb r0, [r0]
	add r2, r1, #0
	add r2, r2, #45
	strb r0, [r2]
	ldr r0, [r1, #64]
	add r0, r0, #1
	str r0, [r1, #64]
	bx lr
	THUMB_FUNC_END sub_08135AF8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08135B0C
sub_08135B0C: @ 0x08135B0C
	ldr r0, [r1, #64]
	ldrb r0, [r0]
	add r2, r1, #0
	add r2, r2, #46
	strb r0, [r2]
	ldr r0, [r1, #64]
	add r0, r0, #1
	str r0, [r1, #64]
	bx lr
	THUMB_FUNC_END sub_08135B0C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08135B20
sub_08135B20: @ 0x08135B20
	ldr r0, [r1, #64]
	ldrb r0, [r0]
	add r2, r1, #0
	add r2, r2, #47
	strb r0, [r2]
	ldr r0, [r1, #64]
	add r0, r0, #1
	str r0, [r1, #64]
	bx lr
	THUMB_FUNC_END sub_08135B20

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08135B34
sub_08135B34: @ 0x08135B34
	ldr r0, [r1, #64]
	ldrb r2, [r0]
	strb r2, [r1, #30]
	add r0, r0, #1
	str r0, [r1, #64]
	bx lr
	THUMB_FUNC_END sub_08135B34

	THUMB_FUNC_START sub_08135B40
sub_08135B40: @ 0x08135B40
	ldr r0, [r1, #64]
	ldrb r2, [r0]
	strb r2, [r1, #31]
	add r0, r0, #1
	str r0, [r1, #64]
	bx lr
	THUMB_FUNC_END sub_08135B40

	THUMB_FUNC_START sub_08135B4C
sub_08135B4C: @ 0x08135B4C
	ldr r0, [r1, #64]
	ldrb r0, [r0]
	add r2, r1, #0
	add r2, r2, #38
	strb r0, [r2]
	ldr r0, [r1, #64]
	add r0, r0, #1
	str r0, [r1, #64]
	bx lr
	THUMB_FUNC_END sub_08135B4C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08135B60
sub_08135B60: @ 0x08135B60
	ldr r0, [r1, #64]
	ldrb r0, [r0]
	add r2, r1, #0
	add r2, r2, #39
	strb r0, [r2]
	ldr r0, [r1, #64]
	add r0, r0, #1
	str r0, [r1, #64]
	bx lr
	THUMB_FUNC_END sub_08135B60

	.ALIGN 2, 0
